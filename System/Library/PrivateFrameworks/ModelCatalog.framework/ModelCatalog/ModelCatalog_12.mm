void static AssetManagerShared.usageAliasSubscriptions(for:usageAliasValuesForUsageAlias:)(char *a1, uint64_t a2)
{
  v21 = *a1;
  sub_18E1C6DAC(*a1);
  if (*(a2 + 16))
  {
    v3 = sub_18E1CBD4C();
    if (v4)
    {
      v5 = *(*(a2 + 56) + 8 * v3);

      v6 = 0;
      v7 = *(v5 + 16);
      v20 = v5;
      v8 = (v5 + 40);
      v9 = MEMORY[0x1E69E7CC0];
      while (v7 != v6)
      {
        if (v6 >= *(v20 + 16))
        {
          __break(1u);
          return;
        }

        v10 = *(v8 - 1);
        v11 = *v8;
        v12 = sub_18E1C6DAC(v21);
        v14 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v9 + 16);
          sub_18E3F0250();
          v9 = v18;
        }

        v15 = *(v9 + 16);
        if (v15 >= *(v9 + 24) >> 1)
        {
          sub_18E3F0250();
          v9 = v19;
        }

        *(v9 + 16) = v15 + 1;
        v16 = (v9 + 32 * v15);
        v16[4] = v12;
        v16[5] = v14;
        v16[6] = v10;
        v16[7] = v11;
        v8 += 2;
        ++v6;
      }
    }
  }
}

uint64_t static AssetManagerShared.usageAliasSubscription(useCaseIdentifier:usageAliasValue:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  *a4 = sub_18E1C6DAC(*a1);
  a4[1] = v7;
  a4[2] = a2;
  a4[3] = a3;
}

void *sub_18E2FCFC8(uint64_t a1)
{
  result = sub_18E249F38(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_18E270658(&v5, result, v3, 0, a1);
  }
}

uint64_t sub_18E2FD058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_18E44E2BC();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_18E201DC8(a2, v7, 1, v6);
}

uint64_t sub_18E2FD100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_18E3F0464(*(a1 + 16), 0);
  v4 = sub_18E2FE6A8(&v6, v3 + 4, v1, a1);

  sub_18E246F7C();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x1E69E7CC0];
  }

  v6 = v3;
  sub_18E2FD580(&v6);
  return v6;
}

uint64_t sub_18E2FD1E4(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v51 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v6 = sub_18E44EC3C();
    v10 = v30;
    v11 = v31;
    v12 = v32;

    sub_18E3F0220();
    v15 = v33;
    v8 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v34 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v38 = (v15 + 32 * v8);
      v38[4] = v6;
      v38[5] = v10;
      v38[6] = v11;
      v38[7] = v12;
      return v15;
    }

LABEL_41:
    sub_18E3F0220();
    v15 = v39;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v49 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v47 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v47;
        goto LABEL_30;
      }

      v17 = sub_18E44EC1C();
      v11 = v18;
      v50[0] = v17;
      v50[1] = v18;
      v19 = v51(v50);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = sub_18E44EB6C();
    }

    v22 = (v47 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v47 >> 14)
    {
      break;
    }

    v48 = sub_18E44EC3C();
    v43 = v24;
    v44 = v23;
    v42 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v49 + 16);
      sub_18E3F0220();
      v49 = v28;
    }

    v12 = *(v49 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v49 + 24) >> 1)
    {
      sub_18E3F0220();
      v49 = v29;
    }

    *(v49 + 16) = v11;
    v26 = (v49 + 32 * v12);
    v26[4] = v48;
    v26[5] = v44;
    v26[6] = v43;
    v26[7] = v42;
LABEL_20:
    v16 = sub_18E44EB6C();
    if ((v22 & 1) == 0 && *(v49 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v49;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_18E44EC3C();
        v10 = v35;
        v11 = v36;
        v12 = v37;

        v15 = v49;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v34 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v40 = *(v15 + 16);
      sub_18E3F0220();
      v15 = v41;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E2FD580(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_18E1CDA48(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_18E2FD5EC(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_18E2FD5EC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_18E44F38C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_18E44ECCC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_18E2FD7A8(v7, v8, a1, v4);
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
    return sub_18E2FD6E0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_18E2FD6E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_18E44F3CC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_18E2FD7A8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_18E44F3CC();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_18E44F3CC()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_18E44F3CC() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_18E3EF938();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_18E3EF938();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_18E2FDDDC((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_18E2FDCB0(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_18E2FDCB0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_18E2F02E0(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_18E2FDDDC((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_18E2FDDDC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_18E26DEA0(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_18E44F3CC() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_18E26DEA0(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_18E44F3CC() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_18E2FDF80(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_18E2FE28C(v9, v4, v2);
      MEMORY[0x193ACD400](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_18E3F1C90(0, v4, v5);
  v6 = sub_18E2FE0E4(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_18E2FE0E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = result;
  v24 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    result = *v14;
    v15 = v14[1];
    v16 = (*(a3 + 56) + 16 * v13);
    v17 = *v16;
    v18 = v16[1];
    v19 = result == 0x7561666544657375 && v15 == 0xEA0000000000746CLL;
    if (v19 || (result = sub_18E44F3CC(), (result & 1) != 0))
    {
      if (v17 == 1702195828 && v18 == 0xE400000000000000)
      {
        continue;
      }

      result = sub_18E44F3CC();
      if (result)
      {
        continue;
      }
    }

    *(v23 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    if (__OFADD__(v24++, 1))
    {
      __break(1u);
      return sub_18E2FE304(v23, a2, v24, a3);
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_18E2FE304(v23, a2, v24, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_18E2FE28C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_18E2FE0E4(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_18E2FE304(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_18E2706EC(&qword_1EABE10C0, &qword_18E49DD50);
  result = sub_18E44F17C();
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
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 16 * v16);
    v22 = v21[1];
    v36 = *v21;
    v23 = *(v9 + 40);
    sub_18E44F48C();

    sub_18E44EB4C();
    result = sub_18E44F4CC();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
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
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v9 + 48) + 16 * v27);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + 16 * v27);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_18E2FE54C(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18E2FE6A8(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetManagerShared(_BYTE *result, int a2, int a3)
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

BOOL sub_18E2FE928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_18E2706EC(&qword_1EABE2DC8, &unk_18E4AFE40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v21 - v14;
  v21[7] = a1;
  v21[8] = a2;
  v21[9] = a3;
  v21[4] = a4;
  v21[5] = a5;
  v21[6] = a6;
  v21[2] = AssetSpecificationVersion.number.getter();
  v21[3] = v16;
  v21[0] = AssetSpecificationVersion.number.getter();
  v21[1] = v17;
  v18 = sub_18E44E72C();
  sub_18E201DC8(v15, 1, 1, v18);
  sub_18E24D39C();
  v19 = sub_18E44EF1C();
  sub_18E2FF568(v15);

  return v19 == -1;
}

BOOL sub_18E2FEA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18E2706EC(&qword_1EABE2DC8, &unk_18E4AFE40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v15 - v10;
  v15[2] = a1;
  v15[3] = a2;
  v15[0] = a3;
  v15[1] = a4;
  v12 = sub_18E44E72C();
  sub_18E201DC8(v11, 1, 1, v12);
  sub_18E24D39C();

  v13 = sub_18E44EF1C();
  sub_18E2FF568(v11);

  return v13 == -1;
}

uint64_t AssetVersion.number.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static AssetVersion.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_18E44F3CC();
  }
}

BOOL sub_18E2FEC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18E2706EC(&qword_1EABE2DC8, &unk_18E4AFE40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v15 - v10;
  v15[2] = a3;
  v15[3] = a4;
  v15[0] = a1;
  v15[1] = a2;
  v12 = sub_18E44E72C();
  sub_18E201DC8(v11, 1, 1, v12);
  sub_18E24D39C();

  v13 = sub_18E44EF1C();
  sub_18E2FF568(v11);

  return v13 != -1;
}

BOOL sub_18E2FEDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18E2706EC(&qword_1EABE2DC8, &unk_18E4AFE40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v15 - v10;
  v15[2] = a1;
  v15[3] = a2;
  v15[0] = a3;
  v15[1] = a4;
  v12 = sub_18E44E72C();
  sub_18E201DC8(v11, 1, 1, v12);
  sub_18E24D39C();

  v13 = sub_18E44EF1C();
  sub_18E2FF568(v11);

  return v13 != -1;
}

BOOL sub_18E2FEEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18E2706EC(&qword_1EABE2DC8, &unk_18E4AFE40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v15 - v10;
  v15[2] = a3;
  v15[3] = a4;
  v15[0] = a1;
  v15[1] = a2;
  v12 = sub_18E44E72C();
  sub_18E201DC8(v11, 1, 1, v12);
  sub_18E24D39C();

  v13 = sub_18E44EF1C();
  sub_18E2FF568(v11);

  return v13 == -1;
}

ModelCatalog::AssetSpecificationVersion __swiftcall AssetSpecificationVersion.init(major:minor:patch:)(Swift::UInt major, Swift::UInt minor, Swift::UInt patch)
{
  *v3 = major;
  v3[1] = minor;
  v3[2] = patch;
  result.patch = patch;
  result.minor = minor;
  result.major = major;
  return result;
}

uint64_t AssetSpecificationVersion.number.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v6 = *v0;
  v7 = sub_18E1C6BD8();
  MEMORY[0x193ACC300](46, 0xE100000000000000);
  v3 = sub_18E1C6BD8();
  MEMORY[0x193ACC300](v3);

  MEMORY[0x193ACC300](46, 0xE100000000000000);
  v4 = sub_18E1C6BD8();
  MEMORY[0x193ACC300](v4);

  return v7;
}

unint64_t sub_18E2FF184()
{
  result = qword_1EABE2D98;
  if (!qword_1EABE2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2D98);
  }

  return result;
}

unint64_t sub_18E2FF1D8()
{
  result = qword_1EABE2DA0;
  if (!qword_1EABE2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2DA0);
  }

  return result;
}

unint64_t sub_18E2FF230()
{
  result = qword_1EABE2DA8;
  if (!qword_1EABE2DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2DA8);
  }

  return result;
}

uint64_t sub_18E2FF2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E2FF2EC()
{
  result = qword_1EABE2DB0;
  if (!qword_1EABE2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2DB0);
  }

  return result;
}

unint64_t sub_18E2FF340()
{
  result = qword_1EABE2DB8;
  if (!qword_1EABE2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2DB8);
  }

  return result;
}

unint64_t sub_18E2FF39C()
{
  result = qword_1EABE2DC0;
  if (!qword_1EABE2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2DC0);
  }

  return result;
}

uint64_t sub_18E2FF474()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_18E2FE8C0();
}

uint64_t sub_18E2FF480(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_18E2FF4C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AssetSpecificationVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AssetSpecificationVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_18E2FF568(uint64_t a1)
{
  v2 = sub_18E2706EC(&qword_1EABE2DC8, &unk_18E4AFE40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SupportedArgument.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E1C5780();
  v41 = v6;
  v42 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v11;
  v12 = type metadata accessor for SupportedArgument();
  sub_18E1C5780();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_18E1C5780();
  v22 = v21;
  v24 = *(v23 + 64);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v37 - v27;
  v29 = *(v26 + 48);
  v40 = v14;
  v30 = *(v14 + 16);
  v30(&v37 - v27, a1, v12);
  v30(&v28[v29], v42, v12);
  sub_18E1C6AC8(v28);
  if (v32)
  {
    v31 = 1;
    sub_18E1C6AC8(&v28[v29]);
    if (v32)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v30(v19, v28, v12);
    sub_18E1C6AC8(&v28[v29]);
    if (!v32)
    {
      v33 = v41;
      v34 = v38;
      (*(v41 + 32))(v38, &v28[v29], a3);
      v31 = sub_18E44EA1C();
      v35 = *(v33 + 8);
      v35(v34, a3);
      v35(v19, a3);
LABEL_10:
      v22 = v40;
      goto LABEL_11;
    }

    (*(v41 + 8))(v19, a3);
  }

  v31 = 0;
  v12 = TupleTypeMetadata2;
LABEL_11:
  (*(v22 + 8))(v28, v12);
  return v31 & 1;
}

uint64_t sub_18E2FF94C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_18E2FF9A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_18E1CAF28(a1, v5, v4);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_18E2FFB20(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            sub_18E201DC8(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_18E2FFD5C()
{
  result = qword_1EABE04B8;
  if (!qword_1EABE04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE04B8);
  }

  return result;
}

unint64_t sub_18E2FFDC4()
{
  result = qword_1EABE2DD0;
  if (!qword_1EABE2DD0)
  {
    sub_18E2707F8(&qword_1EABE2DD8, &qword_18E4AFFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2DD0);
  }

  return result;
}

uint64_t sub_18E2FFE38(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
LABEL_8:
    while (1)
    {
      v14 = (*(a3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v15 = v14[1];
      v18[0] = *v14;
      v18[1] = v15;

      a1(&v17, v18);
      if (v3)
      {
        break;
      }

      if (v17)
      {
        MEMORY[0x193ACC400](result);
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18E44ECBC();
        }

        result = sub_18E44ECDC();
        v5 = v19;
      }

      v9 &= v9 - 1;
      if (!v9)
      {
        goto LABEL_4;
      }
    }

    return v5;
  }

  else
  {
LABEL_4:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return v5;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        v12 = v13;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static Catalog.requestDownload(for:on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_18E2706EC(&qword_1EABE2DE0, &qword_18E4B0040);
  v8 = sub_18E1C4EAC(v7);
  v36 = v9;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v35 = &v31 - v13;
  v38[0] = MEMORY[0x1E69E7CD0];
  v14 = *(a1 + 16);
  v15 = a1 + 32;
  v16 = v14 + 1;
  v17 = (a1 + 32);
  while (--v16)
  {
    v18 = v17 + 5;
    sub_18E3002A4(v38, v17);
    v17 = v18;
    if (v3)
    {

      __break(1u);
      break;
    }
  }

  v37 = a2;
  v34 = v38[0];
  v19 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v31 = v7;
    v32 = a1;
    v33 = a3;
    v41 = MEMORY[0x1E69E7CC0];
    sub_18E26F1E0(0, v14, 0);
    v19 = v41;
    do
    {
      sub_18E1E4398(v15, v38);
      v21 = v39;
      v20 = v40;
      sub_18E1E15F4(v38, v39);
      v22 = (*(*(v20 + 8) + 24))(v21);
      v24 = v23;
      v12 = sub_18E1C9934(v38);
      v41 = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_18E26F1E0(v25 > 1, v26 + 1, 1);
        v19 = v41;
      }

      *(v19 + 16) = v26 + 1;
      v27 = v19 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v15 += 40;
      --v14;
    }

    while (v14);
    a1 = v32;
    v7 = v31;
  }

  MEMORY[0x1EEE9AC00](v12);
  v28 = v36;
  *(&v31 - 4) = v37;
  *(&v31 - 3) = v19;
  v29 = v35;
  *(&v31 - 2) = v34;
  *(&v31 - 1) = a1;
  (*(v28 + 104))(v29, *MEMORY[0x1E69E8650], v7);
  sub_18E44ED8C();
}

void sub_18E3002A4(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  sub_18E1E15F4(a2, v3);
  (*(v4 + 64))(&v42, v3, v4);
  v5 = [objc_opt_self() sharedManager];
  if (sub_18E44EB5C())
  {
    v6 = sub_18E44EA8C();
    v7 = sub_18E44EA8C();
    v8 = [v5 downloadStatusForSubscriber:v6 subscriptionName:v7];

    sub_18E299C2C(v8, &v39);
    v9 = v39;

    switch(v9)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        v10 = a2[3];
        v11 = a2[4];
        sub_18E1E15F4(a2, v10);
        (*(v11 + 64))(&v42, v10, v11);
        sub_18E274C80(&v39, &v42);

        return;
      case 6:
        if (qword_1ED6A8AB0 != -1)
        {
          swift_once();
        }

        v33 = sub_18E44E83C();
        sub_18E1C95EC(v33, qword_1ED6A9870);
        sub_18E1E4398(a2, &v39);
        v17 = sub_18E44E80C();
        v18 = sub_18E44EDFC();
        if (!os_log_type_enabled(v17, v18))
        {
          goto LABEL_23;
        }

        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v45 = v20;
        *v19 = 136315138;
        v34 = v40;
        v35 = v41;
        sub_18E1E15F4(&v39, v40);
        (*(v35 + 64))(&v42, v34, v35);
        v36 = v43;
        v37 = v44;

        sub_18E1C9934(&v39);
        v38 = sub_18E1C9624(v36, v37, &v45);

        *(v19 + 4) = v38;
        v26 = "Non network error ocurred for %s";
        goto LABEL_22;
      case 7:
        if (qword_1ED6A8AB0 != -1)
        {
          swift_once();
        }

        v16 = sub_18E44E83C();
        sub_18E1C95EC(v16, qword_1ED6A9870);
        sub_18E1E4398(a2, &v39);
        v17 = sub_18E44E80C();
        v18 = sub_18E44EDFC();
        if (!os_log_type_enabled(v17, v18))
        {
          goto LABEL_23;
        }

        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v45 = v20;
        *v19 = 136315138;
        v21 = v40;
        v22 = v41;
        sub_18E1E15F4(&v39, v40);
        (*(v22 + 64))(&v42, v21, v22);
        v23 = v43;
        v24 = v44;

        sub_18E1C9934(&v39);
        v25 = sub_18E1C9624(v23, v24, &v45);

        *(v19 + 4) = v25;
        v26 = "Network error ocurred for %s";
        goto LABEL_22;
      default:
        if (qword_1ED6A8AB0 != -1)
        {
          swift_once();
        }

        v27 = sub_18E44E83C();
        sub_18E1C95EC(v27, qword_1ED6A9870);
        sub_18E1E4398(a2, &v39);
        v17 = sub_18E44E80C();
        v18 = sub_18E44EDFC();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v45 = v20;
          *v19 = 136315138;
          v28 = v40;
          v29 = v41;
          sub_18E1E15F4(&v39, v40);
          (*(v29 + 64))(&v42, v28, v29);
          v30 = v43;
          v31 = v44;

          sub_18E1C9934(&v39);
          v32 = sub_18E1C9624(v30, v31, &v45);

          *(v19 + 4) = v32;
          v26 = "Skipping unknown subscription %s";
LABEL_22:
          _os_log_impl(&dword_18E1C1000, v17, v18, v26, v19, 0xCu);
          sub_18E1C9934(v20);
          MEMORY[0x193ACD400](v20, -1, -1);
          MEMORY[0x193ACD400](v19, -1, -1);
        }

        else
        {
LABEL_23:

          sub_18E1C9934(&v39);
        }

        break;
    }
  }

  else
  {

    if (qword_1ED6A8AB0 != -1)
    {
      swift_once();
    }

    v12 = sub_18E44E83C();
    sub_18E1C95EC(v12, qword_1ED6A9870);
    v13 = sub_18E44E80C();
    v14 = sub_18E44EDFC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_18E1C1000, v13, v14, "Skipping unmanaged subscription", v15, 2u);
      MEMORY[0x193ACD400](v15, -1, -1);
    }
  }
}

void sub_18E300924(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v104 = a5;
  v105 = a4;
  v102 = a1;
  v101 = sub_18E2706EC(&qword_1EABE2E30, &qword_18E4B0108);
  v103 = *(v101 - 8);
  v97 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v96 = v92 - v6;
  v7 = sub_18E44EE5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18E44EE4C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = sub_18E44E90C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v100 = a2;
  }

  else
  {
    v114 = sub_18E29B230();
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_18E44EFFC();

    *&aBlock = 0xD000000000000028;
    *(&aBlock + 1) = 0x800000018E467960;
    *&v121 = sub_18E44ECEC();
    v17 = sub_18E44F39C();
    MEMORY[0x193ACC300](v17);

    v113 = *(&aBlock + 1);
    sub_18E44E8FC();
    *&aBlock = v16;
    sub_18E29B274();
    sub_18E2706EC(&qword_1EABE12D8, &qword_18E49ED00);
    sub_18E303A08();
    sub_18E44EF4C();
    (*(v8 + 104))(v11, *MEMORY[0x1E69E8090], v7);
    v100 = sub_18E44EE6C();
  }

  v18 = objc_opt_self();
  v19 = a2;
  v99 = [v18 sharedManager];
  v20 = swift_allocObject();
  v22 = v105 + 56;
  v21 = *(v105 + 56);
  v23 = 1 << *(v105 + 32);
  v24 = -1;
  v25 = *(v105 + 16);
  v98 = v20;
  *(v20 + 16) = v25;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v26 = v24 & v21;
  v27 = (v23 + 63) >> 6;
  v93 = v104 + 32;
  v92[3] = 0x800000018E45B3E0;
  v92[2] = 0x800000018E45B3C0;
  v92[1] = 0x800000018E45B3A0;
  v92[0] = 0x800000018E45B2D0;
  v108 = v103 + 16;
  v92[5] = v103 + 32;
  v92[4] = &v116;

  v28 = 0;
  v95 = v22;
  v94 = v27;
LABEL_7:
  v29 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      v91 = v105;

      *(swift_allocObject() + 16) = v91;

      sub_18E44ED5C();

      return;
    }

    v26 = *(v22 + 8 * v30);
    ++v28;
    if (v26)
    {
      v28 = v30;
LABEL_12:
      v107 = (v26 - 1) & v26;
      v106 = v28;
      v31 = *(v105 + 48) + 56 * (__clz(__rbit64(v26)) | (v28 << 6));
      v32 = *(v31 + 8);
      v114 = *v31;
      v33 = *(v31 + 24);
      v112 = *(v31 + 16);
      v34 = *(v31 + 32);
      v35 = *(v31 + 40);
      v109 = *(v31 + 48);
      v110 = v34;
      v36 = *(v104 + 16);

      v113 = v33;

      v111 = v35;

      v37 = v93;
      if (v36)
      {
        while (2)
        {
          sub_18E1E4398(v37, &v121);
          v38 = v122;
          v39 = v123;
          sub_18E1E15F4(&v121, v122);
          (*(v39 + 64))(&aBlock, v38, v39);
          v41 = v116;
          v40 = v117;
          v42 = v118;
          v43 = v119;
          v44 = v120;
          v45 = aBlock == v114 && *(&aBlock + 1) == v32;
          if (v45 || (sub_18E44F3CC() & 1) != 0)
          {
            v46 = v41 == v112 && v40 == v113;
            if (v46 || (sub_18E44F3CC() & 1) != 0)
            {
              v47 = v42 == v110 && v43 == v111;
              if (v47 || (sub_18E44F3CC() & 1) != 0)
              {
                if (v44 == 15)
                {

                  if (v109 == 15)
                  {
                    goto LABEL_83;
                  }

LABEL_33:
                  sub_18E1C9934(&v121);
LABEL_34:
                  v37 += 40;
                  if (!--v36)
                  {
                    goto LABEL_88;
                  }

                  continue;
                }

                if (v109 != 15)
                {
                  v48 = 0xEF31765F65677261;
                  v49 = 0x6C5F6D6C65646F63;
                  switch(v44)
                  {
                    case 1:
                      goto LABEL_56;
                    case 2:
                      v49 = 0x6C5F6D6C65646F63;
                      v54 = 1701278305;
                      goto LABEL_55;
                    case 3:
                      v49 = 0x6C5F6D6C65646F63;
                      v53 = 1701278305;
                      goto LABEL_45;
                    case 4:
                      v49 = 0x6C5F6D6C65646F63;
                      v52 = 1701278305;
                      goto LABEL_53;
                    case 5:
                      v49 = 0x6C5F6D6C65646F63;
                      v51 = 1701278305;
                      goto LABEL_48;
                    case 6:
                      v49 = 0x735F6D6C65646F63;
                      v48 = 0xED00007974656661;
                      goto LABEL_56;
                    case 7:
                      v49 = 0x735F6D6C65646F63;
                      v48 = 0xEF31765F6C6C616DLL;
                      goto LABEL_56;
                    case 8:
                      v49 = 0x735F6D6C65646F63;
                      v54 = 1819042157;
LABEL_55:
                      v48 = v54 | 0xEF32765F00000000;
                      goto LABEL_56;
                    case 9:
                      v49 = 0x735F6D6C65646F63;
                      v53 = 1819042157;
LABEL_45:
                      v48 = v53 | 0xEF33765F00000000;
                      goto LABEL_56;
                    case 10:
                      v49 = 0x735F6D6C65646F63;
                      v52 = 1819042157;
LABEL_53:
                      v48 = v52 | 0xEF34765F00000000;
                      goto LABEL_56;
                    case 11:
                      v49 = 0x735F6D6C65646F63;
                      v51 = 1819042157;
LABEL_48:
                      v48 = v51 | 0xEF35765F00000000;
                      goto LABEL_56;
                    case 12:
                      v49 = 0xD000000000000016;
                      v50 = &v119;
                      goto LABEL_50;
                    case 13:
                      v49 = 0xD000000000000015;
                      v50 = &v120;
                      goto LABEL_50;
                    case 14:
                      v49 = 0xD000000000000014;
                      v50 = &v121;
                      goto LABEL_50;
                    default:
                      v49 = 0xD000000000000016;
                      v50 = &v118;
LABEL_50:
                      v48 = *(v50 - 32);
LABEL_56:
                      v55 = 0x6C5F6D6C65646F63;
                      v56 = 0xEF31765F65677261;
                      switch(v109)
                      {
                        case 1:
                          goto LABEL_76;
                        case 2:
                          v55 = 0x6C5F6D6C65646F63;
                          v61 = 1701278305;
                          goto LABEL_75;
                        case 3:
                          v55 = 0x6C5F6D6C65646F63;
                          v60 = 1701278305;
                          goto LABEL_65;
                        case 4:
                          v55 = 0x6C5F6D6C65646F63;
                          v59 = 1701278305;
                          goto LABEL_73;
                        case 5:
                          v55 = 0x6C5F6D6C65646F63;
                          v58 = 1701278305;
                          goto LABEL_68;
                        case 6:
                          v55 = 0x735F6D6C65646F63;
                          v56 = 0xED00007974656661;
                          goto LABEL_76;
                        case 7:
                          v55 = 0x735F6D6C65646F63;
                          v56 = 0xEF31765F6C6C616DLL;
                          goto LABEL_76;
                        case 8:
                          v55 = 0x735F6D6C65646F63;
                          v61 = 1819042157;
LABEL_75:
                          v56 = v61 | 0xEF32765F00000000;
                          goto LABEL_76;
                        case 9:
                          v55 = 0x735F6D6C65646F63;
                          v60 = 1819042157;
LABEL_65:
                          v56 = v60 | 0xEF33765F00000000;
                          goto LABEL_76;
                        case 10:
                          v55 = 0x735F6D6C65646F63;
                          v59 = 1819042157;
LABEL_73:
                          v56 = v59 | 0xEF34765F00000000;
                          goto LABEL_76;
                        case 11:
                          v55 = 0x735F6D6C65646F63;
                          v58 = 1819042157;
LABEL_68:
                          v56 = v58 | 0xEF35765F00000000;
                          goto LABEL_76;
                        case 12:
                          v55 = 0xD000000000000016;
                          v57 = &v119;
                          goto LABEL_70;
                        case 13:
                          v55 = 0xD000000000000015;
                          v57 = &v120;
                          goto LABEL_70;
                        case 14:
                          v55 = 0xD000000000000014;
                          v57 = &v121;
                          goto LABEL_70;
                        default:
                          v55 = 0xD000000000000016;
                          v57 = &v118;
LABEL_70:
                          v56 = *(v57 - 32);
LABEL_76:
                          if (v49 == v55 && v48 == v56)
                          {
                          }

                          else
                          {
                            v63 = sub_18E44F3CC();

                            if ((v63 & 1) == 0)
                            {
                              goto LABEL_33;
                            }
                          }

                          break;
                      }

                      break;
                  }

LABEL_83:
                  sub_18E1C551C(&v121, &aBlock);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v124 = v29;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_18E26F298(0, *(v29 + 16) + 1, 1);
                    v29 = v124;
                  }

                  v66 = *(v29 + 16);
                  v65 = *(v29 + 24);
                  if (v66 >= v65 >> 1)
                  {
                    sub_18E26F298(v65 > 1, v66 + 1, 1);
                    v29 = v124;
                  }

                  *(v29 + 16) = v66 + 1;
                  sub_18E1C551C(&aBlock, v29 + 40 * v66 + 32);
                  goto LABEL_34;
                }
              }
            }
          }

          break;
        }

        goto LABEL_33;
      }

LABEL_88:
      v67 = *(v29 + 16);
      if (v67)
      {
        *&v121 = MEMORY[0x1E69E7CC0];
        sub_18E26F1E0(0, v67, 0);
        v68 = v121;
        v69 = v29 + 32;
        do
        {
          sub_18E1E4398(v69, &aBlock);
          v70 = v117;
          v71 = v118;
          sub_18E1E15F4(&aBlock, v117);
          v72 = (*(*(v71 + 1) + 24))(v70);
          v74 = v73;
          sub_18E1C9934(&aBlock);
          *&v121 = v68;
          v76 = *(v68 + 16);
          v75 = *(v68 + 24);
          if (v76 >= v75 >> 1)
          {
            sub_18E26F1E0(v75 > 1, v76 + 1, 1);
            v68 = v121;
          }

          *(v68 + 16) = v76 + 1;
          v77 = v68 + 16 * v76;
          *(v77 + 32) = v72;
          *(v77 + 40) = v74;
          v69 += 40;
          --v67;
        }

        while (v67);
      }

      else
      {

        v68 = MEMORY[0x1E69E7CC0];
      }

      v114 = sub_18E44EA8C();
      v112 = sub_18E44EA8C();

      v78 = v103;
      v110 = *(v103 + 16);
      v79 = v96;
      v80 = v102;
      v81 = v101;
      v110(v96, v102, v101);
      v82 = (*(v78 + 80) + 24) & ~*(v78 + 80);
      v83 = swift_allocObject();
      *(v83 + 16) = v68;
      v84 = *(v78 + 32);
      v84(v83 + v82, v79, v81);
      v118 = sub_18E303BB4;
      v119 = v83;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v116 = sub_18E29AF30;
      v117 = &unk_1F014DCB0;
      v113 = _Block_copy(&aBlock);
      v111 = v100;

      v110(v79, v80, v81);
      v85 = swift_allocObject();
      *(v85 + 16) = v98;
      v84(v85 + v82, v79, v81);
      v118 = sub_18E303D08;
      v119 = v85;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v116 = sub_18E203E04;
      v117 = &unk_1F014DD00;
      v86 = _Block_copy(&aBlock);

      v88 = v113;
      v87 = v114;
      v90 = v111;
      v89 = v112;
      [v99 updateAssetsForSubscriber:v114 subscriptionName:v112 policies:0 queue:v111 detailedProgress:v113 completion:v86];
      _Block_release(v86);
      _Block_release(v88);

      v22 = v95;
      v27 = v94;
      v26 = v107;
      v28 = v106;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_18E3017F8(void *a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE2E48, &qword_18E4B0118);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-1] - v7;
  [a1 completedPercent];
  v10 = v9;
  sub_18E299C2C([a1 downloadStatus], v16);
  v11 = 0x807030502010004uLL >> (8 * LOBYTE(v16[0]));
  v12 = [a1 completedBytes];
  v13 = [a1 totalBytes];
  v16[0] = a2;
  v16[1] = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;

  sub_18E2706EC(&qword_1EABE2E30, &qword_18E4B0108);
  sub_18E44ED6C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_18E301988(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v5;
    if (v5 <= 0)
    {
      sub_18E2706EC(&qword_1EABE2E30, &qword_18E4B0108);
      return sub_18E44ED7C();
    }
  }

  return result;
}

void sub_18E3019FC(uint64_t a1)
{
  v2 = sub_18E2706EC(&qword_1EABE2E38, &qword_18E4B0110);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - v5;
  (*(v3 + 16))(&v29 - v5, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69E8610])
  {
    if (qword_1ED6A8AB0 != -1)
    {
      swift_once();
    }

    v8 = sub_18E44E83C();
    sub_18E1C95EC(v8, qword_1ED6A9870);

    v9 = sub_18E44E80C();
    v10 = sub_18E44EE2C();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_12;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    sub_18E303D80();
    v13 = sub_18E44EDBC();
    v15 = sub_18E1C9624(v13, v14, &v30);

    *(v11 + 4) = v15;
    v16 = "Finish request download for %s";
LABEL_11:
    _os_log_impl(&dword_18E1C1000, v9, v10, v16, v11, 0xCu);
    sub_18E1C9934(v12);
    MEMORY[0x193ACD400](v12, -1, -1);
    MEMORY[0x193ACD400](v11, -1, -1);
LABEL_12:

    return;
  }

  if (v7 == *MEMORY[0x1E69E8618])
  {
    if (qword_1ED6A8AB0 != -1)
    {
      swift_once();
    }

    v17 = sub_18E44E83C();
    sub_18E1C95EC(v17, qword_1ED6A9870);

    v9 = sub_18E44E80C();
    v10 = sub_18E44EE2C();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_12;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    sub_18E303D80();
    v18 = sub_18E44EDBC();
    v20 = sub_18E1C9624(v18, v19, &v30);

    *(v11 + 4) = v20;
    v16 = "Cancelled download request updates for %s";
    goto LABEL_11;
  }

  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v21 = sub_18E44E83C();
  sub_18E1C95EC(v21, qword_1ED6A9870);

  v22 = sub_18E44E80C();
  v23 = sub_18E44EE0C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30 = v25;
    *v24 = 136315138;
    sub_18E303D80();
    v26 = sub_18E44EDBC();
    v28 = sub_18E1C9624(v26, v27, &v30);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_18E1C1000, v22, v23, "Unexpected termination while requesting download %s", v24, 0xCu);
    sub_18E1C9934(v25);
    MEMORY[0x193ACD400](v25, -1, -1);
    MEMORY[0x193ACD400](v24, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
}

uint64_t static Catalog.monitorUpdates(for:on:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE2DE8, &qword_18E4B0048);
  v5 = sub_18E1C4EAC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v13[-v10];
  v14 = a1;
  v15 = a2;
  sub_18E2706EC(&qword_1EABE2DF0, &qword_18E4B0050);
  (*(v7 + 104))(v11, *MEMORY[0x1E69E8650], v4);
  return sub_18E44ED8C();
}

void sub_18E301FB8(uint64_t a1, uint64_t a2, void *a3)
{
  v56 = a1;
  v5 = sub_18E44EE5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v55 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_18E44EE4C();
  v9 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v54 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18E44E90C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v52 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v57 = a2;
  if (v14)
  {
    v50 = v6;
    v51 = v5;
    v16 = a3;
    v63[0] = MEMORY[0x1E69E7CC0];
    sub_18E26F1E0(0, v14, 0);
    v17 = v63[0];
    v18 = a2 + 32;
    v19 = v14;
    do
    {
      sub_18E1E4398(v18, &v58);
      v21 = v60;
      v20 = v61;
      sub_18E1E15F4(&v58, v60);
      v22 = (*(*(v20 + 8) + 24))(v21);
      v24 = v23;
      sub_18E1C9934(&v58);
      v63[0] = v17;
      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_18E26F1E0(v25 > 1, v26 + 1, 1);
        v17 = v63[0];
      }

      *(v17 + 16) = v26 + 1;
      v27 = v17 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v18 += 40;
      --v19;
    }

    while (v19);
    a3 = v16;
    v6 = v50;
    v5 = v51;
    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v28 = [objc_opt_self() sharedManager];
  if (a3)
  {
    v29 = a3;
    if (v14)
    {
      goto LABEL_10;
    }

LABEL_18:
    v43 = a3;
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v51 = sub_18E29B230();
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_18E44EFFC();

  v58 = 0xD000000000000027;
  v59 = 0x800000018E467930;
  v63[0] = sub_18E44ECEC();
  v42 = sub_18E44F39C();
  MEMORY[0x193ACC300](v42);

  v50 = v58;
  v49[1] = v59;
  sub_18E44E8FC();
  v58 = v15;
  sub_18E29B274();
  sub_18E2706EC(&qword_1EABE12D8, &qword_18E49ED00);
  sub_18E303A08();
  sub_18E44EF4C();
  (*(v6 + 104))(v55, *MEMORY[0x1E69E8090], v5);
  v29 = sub_18E44EE6C();
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_10:
  v30 = v57 + 32;
  v31 = a3;
  v32 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_18E1E4398(v30, v63);
    v33 = v64;
    v34 = v65;
    sub_18E1E15F4(v63, v64);
    (*(v34 + 64))(&v58, v33, v34);
    v35 = v61;
    v36 = v62;

    sub_18E1C9934(v63);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = *(v32 + 16);
      sub_18E264698();
      v32 = v40;
    }

    v37 = *(v32 + 16);
    if (v37 >= *(v32 + 24) >> 1)
    {
      sub_18E264698();
      v32 = v41;
    }

    *(v32 + 16) = v37 + 1;
    v38 = v32 + 16 * v37;
    *(v38 + 32) = v35;
    *(v38 + 40) = v36;
    v30 += 40;
    --v14;
  }

  while (v14);
LABEL_19:
  v44 = sub_18E207C7C(v32);
  MEMORY[0x1EEE9AC00](v44);
  v49[-4] = v28;
  v49[-3] = v29;
  v45 = v57;
  v49[-2] = v56;
  v49[-1] = v45;
  v46 = sub_18E2FFE38(sub_18E303AF0, &v49[-6], v44);

  v47 = swift_allocObject();
  v47[2] = v17;
  v47[3] = v46;
  v47[4] = v28;
  v48 = v28;
  sub_18E2706EC(&qword_1EABE2E18, &qword_18E4B00F0);
  sub_18E44ED5C();
}

void sub_18E302548(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v25 = a3;
  v26 = a6;
  v10 = sub_18E2706EC(&qword_1EABE2E18, &qword_18E4B00F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = sub_18E44EA8C();
  v18 = *(v11 + 16);
  v24[1] = a4;
  v18(v14, a4, v10);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v11 + 32))(v21 + v19, v14, v10);
  *(v21 + v20) = a5;
  aBlock[4] = sub_18E303B1C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E203E04;
  aBlock[3] = &unk_1F014DC38;
  v22 = _Block_copy(aBlock);

  v23 = [a2 observeAssetSet:v17 queue:v25 handler:v22];
  _Block_release(v22);

  if (!v23)
  {
    sub_18E44ED7C();
  }

  *v26 = v23;
}

uint64_t sub_18E302770(uint64_t a1, uint64_t a2)
{
  v3 = sub_18E2706EC(&qword_1EABE2E28, &qword_18E4B0100);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v9 - v6;
  v9[1] = a2;

  sub_18E2706EC(&qword_1EABE2E18, &qword_18E4B00F0);
  sub_18E44ED6C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_18E302874(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_18E2706EC(&qword_1EABE2E20, &qword_18E4B00F8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  (*(v9 + 16))(&v28 - v11, a1, v8);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 != *MEMORY[0x1E69E8610])
  {
    if (v13 != *MEMORY[0x1E69E8618])
    {
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v20 = sub_18E44E83C();
      sub_18E1C95EC(v20, qword_1ED6A9870);

      v21 = sub_18E44E80C();
      v22 = sub_18E44EE0C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = *(a2 + 16);

        _os_log_impl(&dword_18E1C1000, v21, v22, "Unexpected termination while monitoring updates for %ld resources", v23, 0xCu);
        MEMORY[0x193ACD400](v23, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v12, v8);
      goto LABEL_18;
    }

    if (qword_1ED6A8AB0 != -1)
    {
      swift_once();
    }

    v19 = sub_18E44E83C();
    sub_18E1C95EC(v19, qword_1ED6A9870);

    v15 = sub_18E44E80C();
    v16 = sub_18E44EE2C();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_11;
    }

    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = *(a2 + 16);

    v18 = "Cancelled monitoring updates for %ld resources";
    goto LABEL_10;
  }

  if (qword_1ED6A8AB0 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v14 = sub_18E44E83C();
    sub_18E1C95EC(v14, qword_1ED6A9870);

    v15 = sub_18E44E80C();
    v16 = sub_18E44EE0C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = *(a2 + 16);

      v18 = "Finish/error monitoring updates for %ld resources";
LABEL_10:
      _os_log_impl(&dword_18E1C1000, v15, v16, v18, v17, 0xCu);
      MEMORY[0x193ACD400](v17, -1, -1);
    }

    else
    {
LABEL_11:
    }

LABEL_18:
    result = sub_18E289108(a3);
    if (!result)
    {
      break;
    }

    v25 = result;
    if (result >= 1)
    {
      for (i = 0; i != v25; ++i)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x193ACC7B0](i, a3);
        }

        else
        {
          v27 = *(a3 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        [a4 removeObserver_];
        result = swift_unknownObjectRelease();
      }

      return result;
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

  return result;
}

void static Catalog.notifyGenerativeExperiencesReady()()
{
  if ([objc_opt_self() isClassCLocked])
  {
    if (qword_1ED6A94F8 != -1)
    {
      sub_18E1C5C20();
    }

    v0 = sub_18E44E83C();
    sub_18E1C95EC(v0, qword_1ED6A98C0);
    oslog = sub_18E44E80C();
    v1 = sub_18E44EE2C();
    if (!os_log_type_enabled(oslog, v1))
    {
      goto LABEL_18;
    }

    v2 = swift_slowAlloc();
    *v2 = 0;
    v3 = "Not posting generative experiences ready notification because the device is not class c unlocked";
    goto LABEL_16;
  }

  v4 = [objc_opt_self() sharedManager];
  v5 = [v4 assetDeliveryReady];

  if (!v5)
  {
    if (qword_1ED6A94F8 != -1)
    {
      sub_18E1C5C20();
    }

    v14 = sub_18E44E83C();
    sub_18E1C95EC(v14, qword_1ED6A98C0);
    oslog = sub_18E44E80C();
    v1 = sub_18E44EE2C();
    if (!os_log_type_enabled(oslog, v1))
    {
      goto LABEL_18;
    }

    v2 = swift_slowAlloc();
    *v2 = 0;
    v3 = "Not posting generative experiences ready notification because asset delivery is not ready";
LABEL_16:
    v10 = v1;
    v11 = oslog;
    v12 = v2;
    v13 = 2;
    goto LABEL_17;
  }

  v6 = sub_18E44EB1C();
  v7 = notify_post((v6 + 32));

  if (!v7)
  {
    return;
  }

  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v8 = sub_18E44E83C();
  sub_18E1C95EC(v8, qword_1ED6A9870);
  oslog = sub_18E44E80C();
  v9 = sub_18E44EE0C();
  if (os_log_type_enabled(oslog, v9))
  {
    v2 = swift_slowAlloc();
    *v2 = 67109120;
    *(v2 + 4) = v7;
    v3 = "Failed to post generative experience ready notification: %u";
    v10 = v9;
    v11 = oslog;
    v12 = v2;
    v13 = 8;
LABEL_17:
    _os_log_impl(&dword_18E1C1000, v11, v10, v3, v12, v13);
    MEMORY[0x193ACD400](v2, -1, -1);
  }

LABEL_18:
}

uint64_t static Catalog.monitorGenerativeExperiencesReadiness(on:)(uint64_t a1)
{
  v2 = sub_18E2706EC(&qword_1EABE2DF8, &qword_18E4B0058);
  v3 = sub_18E1C4EAC(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v10 = a1;
  (*(v7 + 104))(&v9[-v6], *MEMORY[0x1E69E8650]);
  return sub_18E44ED8C();
}

void sub_18E303070(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = sub_18E2706EC(&qword_1EABE2E00, &unk_18E4B00C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v28 - v7;
  v9 = sub_18E44EE5C();
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18E44EE4C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = sub_18E44E90C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  if (a2)
  {
    v17 = a2;
  }

  else
  {
    v18 = sub_18E29B230();
    v28[1] = "e-experiences-readiness";
    v28[2] = v18;
    sub_18E44E8FC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    v19 = sub_18E29B274();
    v29 = a1;
    v28[0] = v19;
    sub_18E2706EC(&qword_1EABE12D8, &qword_18E49ED00);
    sub_18E303A08();
    a1 = v29;
    sub_18E44EF4C();
    (*(v30 + 104))(v12, *MEMORY[0x1E69E8090], v31);
    v17 = sub_18E44EE6C();
  }

  out_token = -1;
  (*(v5 + 16))(v8, a1, v4);
  v20 = v4;
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = swift_allocObject();
  (*(v5 + 32))(v22 + v21, v8, v20);
  aBlock[4] = sub_18E303A6C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E3035B4;
  aBlock[3] = &unk_1F014DB98;
  v23 = _Block_copy(aBlock);
  v24 = a2;
  v25 = v17;

  v26 = sub_18E44EB1C();
  notify_register_dispatch((v26 + 32), &out_token, v25, v23);

  _Block_release(v23);

  LODWORD(v23) = out_token;
  *(swift_allocObject() + 16) = v23;
  sub_18E44ED5C();

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t sub_18E3034C0()
{
  v0 = sub_18E2706EC(&qword_1EABE2E10, &unk_18E4B00E0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6[-v3];
  v6[15] = 1;
  sub_18E2706EC(&qword_1EABE2E00, &unk_18E4B00C8);
  sub_18E44ED6C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_18E3035B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_18E303608(uint64_t a1, int a2)
{
  v4 = sub_18E2706EC(&qword_1EABE2E08, &qword_18E4B00D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  (*(v5 + 16))(&v21 - v7, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E69E8610])
  {
    if (qword_1ED6A8AB0 != -1)
    {
      swift_once();
    }

    v10 = sub_18E44E83C();
    sub_18E1C95EC(v10, qword_1ED6A9870);
    v11 = sub_18E44E80C();
    v12 = sub_18E44EE0C();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Finish/error monitoring generative experiences readiness";
LABEL_11:
    _os_log_impl(&dword_18E1C1000, v11, v12, v14, v13, 2u);
    MEMORY[0x193ACD400](v13, -1, -1);
LABEL_12:

    return notify_cancel(a2);
  }

  if (v9 == *MEMORY[0x1E69E8618])
  {
    if (qword_1ED6A8AB0 != -1)
    {
      swift_once();
    }

    v15 = sub_18E44E83C();
    sub_18E1C95EC(v15, qword_1ED6A9870);
    v11 = sub_18E44E80C();
    v12 = sub_18E44EE2C();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Cancelled monitoring generative experiences readiness";
    goto LABEL_11;
  }

  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v16 = sub_18E44E83C();
  sub_18E1C95EC(v16, qword_1ED6A9870);
  v17 = sub_18E44E80C();
  v18 = sub_18E44EE0C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_18E1C1000, v17, v18, "Unexpected termination while monitoring generative experiences readiness", v19, 2u);
    MEMORY[0x193ACD400](v19, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return notify_cancel(a2);
}

__n128 sub_18E30395C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18E303970(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18E3039B0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_18E303A08()
{
  result = qword_1ED6A7CB8;
  if (!qword_1ED6A7CB8)
  {
    sub_18E2707F8(&qword_1EABE12D8, &qword_18E49ED00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7CB8);
  }

  return result;
}

uint64_t sub_18E303A6C()
{
  v0 = *(*(sub_18E2706EC(&qword_1EABE2E00, &unk_18E4B00C8) - 8) + 80);

  return sub_18E3034C0();
}

uint64_t sub_18E303B1C()
{
  v1 = *(sub_18E2706EC(&qword_1EABE2E18, &qword_18E4B00F0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_18E302770(v0 + v2, v3);
}

uint64_t sub_18E303BB4(void *a1)
{
  v3 = *(*(sub_18E2706EC(&qword_1EABE2E30, &qword_18E4B0108) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_18E3017F8(a1, v4);
}

uint64_t sub_18E303C34(void (*a1)(void))
{
  v3 = sub_18E2706EC(&qword_1EABE2E30, &qword_18E4B0108);
  sub_18E1C4EAC(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 24) & ~v6;
  v9 = *(v8 + 64);
  a1(*(v1 + 16));
  (*(v5 + 8))(v1 + v7, v3);

  return MEMORY[0x1EEE6BDD0](v1, v7 + v9, v6 | 7);
}

uint64_t sub_18E303D08()
{
  v1 = *(*(sub_18E2706EC(&qword_1EABE2E30, &qword_18E4B0108) - 8) + 80);
  v2 = *(v0 + 16);

  return sub_18E301988(v2);
}

unint64_t sub_18E303D80()
{
  result = qword_1EABE2E40;
  if (!qword_1EABE2E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2E40);
  }

  return result;
}

uint64_t AJAXConfiguration.init(url:modelName:endPromptToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_18E44E54C();
  sub_18E1C4EEC(v12);
  (*(v13 + 32))(a6, a1);
  result = type metadata accessor for AJAXConfiguration();
  v15 = (a6 + *(result + 20));
  *v15 = a2;
  v15[1] = a3;
  v16 = (a6 + *(result + 24));
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t type metadata accessor for AJAXConfiguration()
{
  result = qword_1EABDFB20;
  if (!qword_1EABDFB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AJAXConfiguration.url.getter()
{
  v0 = sub_18E44E54C();
  sub_18E1C4EEC(v0);
  v2 = *(v1 + 16);
  v3 = sub_18E1C5BFC();

  return v4(v3);
}

uint64_t AJAXConfiguration.modelName.getter()
{
  v1 = (v0 + *(type metadata accessor for AJAXConfiguration() + 20));
  v2 = *v1;
  v3 = v1[1];

  return sub_18E1C5BFC();
}

uint64_t AJAXConfiguration.endPromptToken.getter()
{
  v1 = (v0 + *(type metadata accessor for AJAXConfiguration() + 24));
  v2 = *v1;
  v3 = v1[1];

  return sub_18E1C5BFC();
}

uint64_t sub_18E303FA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x706D6F7250646E65 && a2 == 0xEE006E656B6F5474)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E44F3CC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18E3040C4(char a1)
{
  if (!a1)
  {
    return 7107189;
  }

  if (a1 == 1)
  {
    return 0x6D614E6C65646F6DLL;
  }

  return 0x706D6F7250646E65;
}

uint64_t sub_18E30412C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E303FA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E304154(uint64_t a1)
{
  v2 = sub_18E30439C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E304190(uint64_t a1)
{
  v2 = sub_18E30439C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AJAXConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_18E2706EC(&qword_1EABE2E50, &qword_18E4B0140);
  sub_18E1C4EAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24[-v11];
  v13 = a1[4];
  sub_18E1E15F4(a1, a1[3]);
  sub_18E30439C();
  sub_18E44F4EC();
  v24[15] = 0;
  sub_18E44E54C();
  sub_18E1C50C4();
  sub_18E305410(v14, v15);
  sub_18E44F35C();
  if (!v2)
  {
    v16 = type metadata accessor for AJAXConfiguration();
    v17 = (v3 + *(v16 + 20));
    v18 = *v17;
    v19 = v17[1];
    v24[14] = 1;
    sub_18E44F31C();
    v20 = (v3 + *(v16 + 24));
    v21 = *v20;
    v22 = v20[1];
    v24[13] = 2;
    sub_18E44F31C();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_18E30439C()
{
  result = qword_1EABE2E58;
  if (!qword_1EABE2E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2E58);
  }

  return result;
}

void AJAXConfiguration.init(from:)()
{
  sub_18E1C62A0();
  v3 = v2;
  v34 = v4;
  v5 = sub_18E44E54C();
  v6 = sub_18E1C4EAC(v5);
  v36 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C4EDC();
  v37 = v11 - v10;
  v38 = sub_18E2706EC(&qword_1EABE2E60, &qword_18E4B0148);
  sub_18E1C4EAC(v38);
  v35 = v12;
  v14 = *(v13 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_18E1C53E8();
  v17 = sub_18E1C4EEC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_18E1C4EDC();
  v22 = v21 - v20;
  v23 = v3[4];
  sub_18E1E15F4(v3, v3[3]);
  sub_18E30439C();
  sub_18E44F4DC();
  if (v0)
  {
    sub_18E1C9934(v3);
  }

  else
  {
    v33 = v16;
    sub_18E1C50C4();
    sub_18E305410(v24, v25);
    sub_18E44F26C();
    (*(v36 + 32))(v22, v37, v5);
    v26 = sub_18E44F22C();
    v27 = (v22 + *(v16 + 20));
    *v27 = v26;
    v27[1] = v28;
    v29 = sub_18E44F22C();
    v31 = v30;
    (*(v35 + 8))(v1, v38);
    v32 = (v22 + *(v33 + 24));
    *v32 = v29;
    v32[1] = v31;
    sub_18E304720(v22, v34);
    sub_18E1C9934(v3);
    sub_18E304784(v22);
  }

  sub_18E1C6650();
}

uint64_t sub_18E304720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AJAXConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E304784(uint64_t a1)
{
  v2 = type metadata accessor for AJAXConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_18E304810()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_18E2462E8(0xD00000000000001BLL, 0x800000018E467A50);
  if (!result)
  {
    sub_18E3064D0();
    swift_allocError();
    *v2 = 0xD000000000000037;
    *(v2 + 8) = 0x800000018E467A70;
    *(v2 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

void overrideAJAX(configuration:forResource:)()
{
  sub_18E1C62A0();
  v3 = v2;
  v4 = sub_18E44EADC();
  v5 = sub_18E1C5B08(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  v8 = sub_18E2706EC(&qword_1EABE2E68, &unk_18E4B0150);
  sub_18E1C5B08(v8);
  v10 = *(v9 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_18E1C53E8();
  v13 = sub_18E1C4EEC(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_18E1C4EDC();
  v18 = v17 - v16;
  sub_18E304B7C(v3, v1);
  if (sub_18E1CAF28(v1, 1, v12) == 1)
  {
    sub_18E1E8EEC(v1, &qword_1EABE2E68, &unk_18E4B0150);
    v19 = sub_18E304810();
    if (!v0)
    {
      v20 = v19;
      v21 = sub_18E44EA8C();
      [v20 removeObjectForKey_];
    }
  }

  else
  {
    sub_18E304BEC(v1, v18);
    v22 = sub_18E44E27C();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_18E44E26C();
    sub_18E1C6BF4();
    sub_18E305410(v25, v26);
    v27 = sub_18E44E25C();
    if (v0)
    {
      sub_18E304784(v18);
    }

    else
    {
      v29 = v27;
      v30 = v28;

      sub_18E44EACC();
      sub_18E44EABC();
      v32 = v31;
      v33 = sub_18E304810();
      if (v32)
      {
        v34 = sub_18E44EA8C();
      }

      else
      {
        v34 = 0;
      }

      v35 = sub_18E44EA8C();
      [v33 setObject:v34 forKey:v35];

      swift_unknownObjectRelease();
      sub_18E1FDFE0(v29, v30);
      sub_18E304784(v18);
    }
  }

  sub_18E1C6650();
}

uint64_t sub_18E304B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE2E68, &unk_18E4B0150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E304BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AJAXConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id ajaxConfiguration(forResource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = sub_18E2706EC(&qword_1EABE2E68, &unk_18E4B0150);
  sub_18E1C5B08(v8);
  v10 = *(v9 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C561C();
  result = overriddenAJAXConfiguration(forResource:)(v4);
  if (!v3)
  {
    v13 = type metadata accessor for AJAXConfiguration();
    if (sub_18E1CAF28(v4, 1, v13) == 1)
    {
      sub_18E1E8EEC(v4, &qword_1EABE2E68, &unk_18E4B0150);
      return defaultAJAXConfirguration(for:)(a1, a2, a3);
    }

    else
    {
      sub_18E304BEC(v4, a3);
      return sub_18E201DC8(a3, 0, 1, v13);
    }
  }

  return result;
}

id overriddenAJAXConfiguration(forResource:)@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for AJAXConfiguration();
  v5 = sub_18E1C4EEC(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  sub_18E1C561C();
  result = sub_18E304810();
  if (!v1)
  {
    v9 = result;
    v10 = sub_18E44EA8C();
    v11 = [v9 stringForKey_];

    if (v11)
    {
      v12 = sub_18E44EAAC();
      v14 = v13;

      v15 = sub_18E44E24C();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      sub_18E44E23C();
      v18 = sub_18E304F08(v12, v14);
      v20 = v19;
      sub_18E1C6BF4();
      sub_18E305410(v21, v22);
      sub_18E44E22C();
      sub_18E1FDFE0(v18, v20);

      sub_18E304BEC(v2, a1);
      v23 = a1;
      v24 = 0;
    }

    else
    {
      v23 = a1;
      v24 = 1;
    }

    return sub_18E201DC8(v23, v24, 1, v4);
  }

  return result;
}

uint64_t sub_18E304F08(uint64_t a1, unint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  *&v37 = a1;
  *(&v37 + 1) = a2;

  sub_18E2706EC(&qword_1EABE2E98, &qword_18E4B02F8);
  if (swift_dynamicCast())
  {
    sub_18E1C551C(v35, &v38);
    sub_18E1E15F4(&v38, v39);
    sub_18E44E43C();
    v35[0] = v37;
    sub_18E1C9934(&v38);
    goto LABEL_59;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_18E1E8EEC(v35, &qword_1EABE2EA0, &unk_18E4B0300);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v35[0] = a1;
    *(&v35[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v35;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_18E44F07C();
  }

  sub_18E306FB4(v4, v5, &v38);
  v6 = *(&v38 + 1);
  v7 = v38;
  if (*(&v38 + 1) >> 60 != 15)
  {
    v35[0] = v38;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v35[0] = MEMORY[0x193ACBD70](v8);
  *(&v35[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v35[0]);
  v10 = sub_18E307120(sub_18E307DE0);
  v12 = *(&v35[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v35[0]);
  switch(*(&v35[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v35[0]) - LODWORD(v35[0]);
      if (__OFSUB__(DWORD1(v35[0]), v35[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v35[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v35[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v35[0] + 16);
      v20 = *(*&v35[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_18E44E5DC();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v37 + 7) = 0;
      *&v37 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v35[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v27 = sub_18E43AC9C(v17, v13, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_18E44EBAC();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_18E44EBDC();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v38 = v13;
      *(&v38 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v38 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_18E44F07C();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v17 = sub_18E43AC9C(v17, v13, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    v17 = sub_18E44EBBC();
LABEL_46:
    *(&v37 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      *&v38 = v37;
      *(&v38 + 6) = *(&v37 + 6);
      sub_18E44E5FC();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    *&v38 = v37;
    *(&v38 + 6) = *(&v37 + 6);
    sub_18E44E5FC();
    sub_18E2886D0(v34, v6);
    goto LABEL_58;
  }

  sub_18E2886D0(v34, v6);
LABEL_59:
  v31 = v35[0];
  sub_18E2523A0(*&v35[0], *(&v35[0] + 1));

  sub_18E1FDFE0(v31, *(&v31 + 1));
  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t sub_18E305410(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18E305458(void *a1)
{
  v27[5] = *MEMORY[0x1E69E9840];
  *&v24 = a1;
  sub_18E25BD94();
  v2 = a1;
  sub_18E2706EC(&qword_1EABE2E98, &qword_18E4B02F8);
  if (swift_dynamicCast())
  {
    sub_18E1C551C(v25, v27);
    sub_18E1E15F4(v27, v27[3]);
    sub_18E44E43C();
    v25[0] = v24;
    sub_18E1C9934(v27);
    goto LABEL_33;
  }

  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_18E1E8EEC(v25, &qword_1EABE2EA0, &unk_18E4B0300);
  v3 = sub_18E307B6C();
  *&v25[0] = MEMORY[0x193ACBD70](v3);
  *(&v25[0] + 1) = v4;
  MEMORY[0x1EEE9AC00](*&v25[0]);
  v5 = sub_18E3074E4(sub_18E307DA4);
  v7 = *(&v25[0] + 1) >> 62;
  v8 = v5;
  v10 = v9;
  v11 = BYTE14(v25[0]);
  switch(*(&v25[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v12) = DWORD1(v25[0]) - LODWORD(v25[0]);
      if (__OFSUB__(DWORD1(v25[0]), v25[0]))
      {
        goto LABEL_36;
      }

      v12 = v12;
LABEL_12:
      if (v6 == v12)
      {
        goto LABEL_13;
      }

      if (v7 == 2)
      {
        v11 = *(*&v25[0] + 24);
      }

      else if (v7 == 1)
      {
        v11 = *&v25[0] >> 32;
      }

      goto LABEL_30;
    case 2:
      v14 = *(*&v25[0] + 16);
      v13 = *(*&v25[0] + 24);
      v15 = __OFSUB__(v13, v14);
      v12 = v13 - v14;
      if (!v15)
      {
        goto LABEL_12;
      }

      __break(1u);
LABEL_8:
      if (v6)
      {
        v11 = 0;
LABEL_30:
        if (v11 >= v6)
        {
          sub_18E44E5DC();
          goto LABEL_32;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

LABEL_13:
      memset(v27, 0, 15);
      if (v10 == sub_18E44EE9C())
      {
        goto LABEL_32;
      }

      LOBYTE(v16) = 0;
      do
      {
        v17 = sub_18E44EEAC();
        v18 = sub_18E44EE8C();
        v19 = sub_18E44EE9C();
        if (v10 < v18 || v10 >= v19)
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        *(v27 + v16) = v17;
        v16 = v16 + 1;
        if ((v16 >> 8))
        {
          goto LABEL_34;
        }

        if (v16 == 14)
        {
          sub_18E1C8784();
          sub_18E44E5FC();
          LOBYTE(v16) = 0;
        }

        ++v10;
      }

      while (v10 != sub_18E44EE9C());
      if (v16)
      {
        sub_18E1C8784();
        sub_18E44E5FC();
      }

LABEL_32:

LABEL_33:
      v21 = v25[0];
      sub_18E2523A0(*&v25[0], *(&v25[0] + 1));

      sub_18E1FDFE0(v21, *(&v21 + 1));
      v22 = *MEMORY[0x1E69E9840];
      return v21;
    case 3:
      goto LABEL_8;
    default:
      v12 = BYTE14(v25[0]);
      goto LABEL_12;
  }
}

uint64_t sub_18E3057A4(uint64_t *a1)
{
  v2 = *a1;
  sub_18E26C3FC(*a1, &v42);
  v3 = v43;
  sub_18E1E8EEC(&v42, &qword_1EABE3B70, &qword_18E4AAB80);
  if (v3)
  {
    sub_18E2706EC(&qword_1EABE2EA8, &qword_18E4B0318);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_18E49D9B0;
    sub_18E2706EC(&qword_1EABE9020, &qword_18E4B0320);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18E49DA90;
    *(inited + 32) = 1953722211;
    *(inited + 40) = 0xE400000000000000;
    sub_18E2706EC(&qword_1EABE2EB0, &qword_18E4B0328);
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_18E4B0120;
    *(v6 + 32) = 0x6C62616568636163;
    *(v6 + 40) = 0xE900000000000065;
    v7 = MEMORY[0x1E69E6370];
    *(v6 + 48) = 1;
    *(v6 + 72) = v7;
    *(v6 + 80) = 0xD000000000000012;
    *(v6 + 88) = 0x800000018E467AD0;
    *(v6 + 96) = 0;
    *(v6 + 120) = v7;
    *(v6 + 128) = 0xD000000000000013;
    *(v6 + 136) = 0x800000018E467AF0;
    *(v6 + 144) = 0;
    *(v6 + 168) = v7;
    strcpy((v6 + 176), "onDeviceMemory");
    *(v6 + 216) = MEMORY[0x1E69E6530];
    *(v6 + 191) = -18;
    *(v6 + 192) = 0;
    v8 = MEMORY[0x1E69E6158];
    *(inited + 48) = sub_18E44E9AC();
    *(inited + 56) = 0xD000000000000011;
    *(inited + 64) = 0x800000018E467B10;
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_18E49D9B0;
    *(v9 + 32) = 25705;
    *(v9 + 40) = 0xE200000000000000;
    *(v9 + 72) = v8;
    *(v9 + 48) = 2019650145;
    *(v9 + 56) = 0xE400000000000000;
    *(inited + 72) = sub_18E44E9AC();
    sub_18E2706EC(&unk_1EABE9010, &qword_18E4B0160);
    *(v4 + 32) = sub_18E44E9AC();
    v43 = sub_18E2706EC(&qword_1EABE2EB8, &qword_18E4B0330);
    *&v42 = v4;
    return sub_18E2736F0(&v42);
  }

  else
  {
    v11 = 1 << *(v2 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v2 + 64);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    v16 = v2;
    while (v13)
    {
      v17 = v13;
LABEL_12:
      v13 = (v17 - 1) & v17;
      if (v16[2])
      {
        v19 = (*(v2 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v17)))));
        v21 = *v19;
        v20 = v19[1];

        v22 = sub_18E1CBD4C();
        if (v23 & 1) != 0 && (sub_18E1C97D8(v16[7] + 32 * v22, &v42), v24 = sub_18E2706EC(&unk_1EABE9010, &qword_18E4B0160), (swift_dynamicCast()))
        {
          v41 = *&v40[0];
          sub_18E3057A4(&v41);
          v43 = v24;
          *&v42 = v41;
          sub_18E270D70(&v42, v40);
          v25 = *a1;
          swift_isUniquelyReferenced_nonNull_native();
          v26 = *a1;
          v39 = *a1;
          v37 = sub_18E1CBD4C();
          v38 = v27;
          if (__OFADD__(*(v26 + 16), (v27 & 1) == 0))
          {
            goto LABEL_29;
          }

          sub_18E2706EC(&qword_1EABE0E30, &qword_18E4B0310);
          if (sub_18E44F0EC())
          {
            v28 = sub_18E1CBD4C();
            v30 = v38;
            if ((v38 & 1) != (v29 & 1))
            {
              goto LABEL_31;
            }

            v31 = v28;
          }

          else
          {
            v31 = v37;
            v30 = v38;
          }

          if (v30)
          {

            v16 = v39;
            v32 = (v39[7] + 32 * v31);
            sub_18E1C9934(v32);
            sub_18E270D70(v40, v32);
          }

          else
          {
            v16 = v39;
            v39[(v31 >> 6) + 8] |= 1 << v31;
            v33 = (v39[6] + 16 * v31);
            *v33 = v21;
            v33[1] = v20;
            sub_18E270D70(v40, (v39[7] + 32 * v31));
            v34 = v39[2];
            v35 = __OFADD__(v34, 1);
            v36 = v34 + 1;
            if (v35)
            {
              goto LABEL_30;
            }

            v39[2] = v36;
          }

          *a1 = v16;
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v18 >= v14)
      {
      }

      v17 = *(v2 + 64 + 8 * v18);
      ++v15;
      if (v17)
      {
        v15 = v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_18E44F41C();
    __break(1u);
  }

  return result;
}

void forceAJAX(configuration:forResourceBundle:)()
{
  sub_18E1C62A0();
  v4 = v3;
  v74 = *MEMORY[0x1E69E9840];
  v5 = sub_18E2706EC(&qword_1EABE2E68, &unk_18E4B0150);
  sub_18E1C5B08(v5);
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_18E1C53E8();
  v10 = sub_18E1C4EEC(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C4EDC();
  sub_18E1C561C();
  type metadata accessor for CatalogClient();
  swift_allocObject();
  CatalogClient.init()();
  v13 = sub_18E1C6004();
  v15 = sub_18E1CDBD8(v13, v14);
  if (!v0)
  {
    v16 = v15;
    ResourceBundleContainer.toResourceBundle()();

    if (v69)
    {
      v64 = v4;
      sub_18E1C551C(&v68, &v70);
      v18 = type metadata accessor for ResourceBundleContainer();
      sub_18E1E4398(&v70, &v68);
      static ResourceBundleContainer.from(resourceBundle:)();
      v25 = v19;
      v61 = v18;
      sub_18E1E8EEC(&v68, &qword_1EABE1010, &unk_18E4E24D0);
      if (v25[OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_assetBacked])
      {
        *&v68 = 0;
        *(&v68 + 1) = 0xE000000000000000;
        sub_18E44EFFC();
        MEMORY[0x193ACC300](0xD000000000000032, 0x800000018E467A10);
        v26 = sub_18E1C6004();
        MEMORY[0x193ACC300](v26);
        v27 = v68;
        sub_18E3064D0();
        v28 = sub_18E1C8558();
        *v29 = v27;
        sub_18E1C5D9C(v28, v29);

LABEL_16:

LABEL_17:
        sub_18E1C9934(&v70);
        goto LABEL_4;
      }

      v59 = OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_assetBacked;
      v63 = objc_opt_self();
      v62 = v25;
      v30 = *&v25[OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData];
      v60 = *&v25[OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData + 8];
      sub_18E2523A0(v30, v60);
      v31 = sub_18E44E60C();
      v32 = sub_18E1FDFE0(v30, v60);
      *&v68 = 0;
      v33 = sub_18E1C8CC0(v32, sel_JSONObjectWithData_options_error_);

      if (v33)
      {
        v34 = v68;
        sub_18E44EF2C();
        swift_unknownObjectRelease();
        sub_18E2706EC(&unk_1EABE9010, &qword_18E4B0160);
        if (!swift_dynamicCast())
        {
          sub_18E3064D0();
          v44 = sub_18E1C8558();
          *v45 = 0xD00000000000001CLL;
          v45[1] = 0x800000018E4679B0;
          sub_18E1C5D9C(v44, v45);

          goto LABEL_16;
        }

        v65 = v66;
        sub_18E3057A4(&v65);
        v35 = sub_18E44E97C();

        *&v68 = 0;
        v37 = sub_18E1C8CC0(v36, sel_dataWithJSONObject_options_error_);

        v38 = v68;
        if (v37)
        {
          v63 = sub_18E44E61C();
          v40 = v39;

          v41 = *&v62[OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleType + 8];
          v58 = *&v62[OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleType];
          v60 = v41;
          LODWORD(v59) = v62[v59];
          v57[4] = objc_allocWithZone(v61);
          sub_18E2523A0(v63, v40);

          v61 = v40;
          v42 = ResourceBundleContainer.init(resourceBundleData:resourceBundleType:assetBacked:)(v63, v40, v58, v60, v59);
          ResourceBundleContainer.toResourceBundle()();
          v60 = v42;
          if (v67)
          {
            sub_18E1C551C(&v66, &v68);
            v47 = sub_18E1C6004();

            sub_18E2776FC(&v68);
            v51 = v61;
            sub_18E304B7C(v64, v2);
            if (sub_18E1CAF28(v2, 1, v9) == 1)
            {
              sub_18E1C9934(&v68);
              sub_18E1FDFE0(v63, v61);

              sub_18E1E8EEC(v2, &qword_1EABE2E68, &unk_18E4B0150);
            }

            else
            {
              sub_18E304BEC(v2, v1);
              v52 = v72;
              v53 = v73;
              sub_18E1E15F4(&v70, v72);
              v54 = (*(v53 + 48))(v52, v53);
              MEMORY[0x1EEE9AC00](v54);
              v57[2] = v1;
              sub_18E306648(sub_18E306D10, v57, v54);
              v55 = v63;
              v56 = v60;
              sub_18E1C9934(&v68);

              sub_18E1FDFE0(v55, v51);

              sub_18E304784(v1);
            }
          }

          else
          {
            sub_18E1E8EEC(&v66, &qword_1EABE1010, &unk_18E4E24D0);
            sub_18E3064D0();
            v49 = sub_18E1C8558();
            *v50 = 0xD000000000000030;
            v50[1] = 0x800000018E4679D0;
            sub_18E1C5D9C(v49, v50);

            sub_18E1FDFE0(v63, v61);
          }

          goto LABEL_17;
        }

        v46 = v38;
        sub_18E44E44C();
      }

      else
      {
        v43 = v68;
        sub_18E44E44C();
      }

      swift_willThrow();

      goto LABEL_17;
    }

    sub_18E1E8EEC(&v68, &qword_1EABE1010, &unk_18E4E24D0);
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_18E44EFFC();

    v70 = 0xD000000000000010;
    v71 = 0x800000018E467990;
    v20 = sub_18E1C6004();
    MEMORY[0x193ACC300](v20);
    sub_18E1C6760();
    v21 = v70;
    v22 = v71;
    sub_18E3064D0();
    v23 = sub_18E1C8558();
    *v24 = v21;
    v24[1] = v22;
    sub_18E1C5D9C(v23, v24);
  }

LABEL_4:
  v17 = *MEMORY[0x1E69E9840];
  sub_18E1C6650();
}

unint64_t sub_18E3064D0()
{
  result = qword_1EABE3510;
  if (!qword_1EABE3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3510);
  }

  return result;
}

uint64_t sub_18E306524(void *a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE2E68, &unk_18E4B0150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_18E304720(a2, &v12 - v6);
  v8 = type metadata accessor for AJAXConfiguration();
  sub_18E201DC8(v7, 0, 1, v8);
  v9 = a1[3];
  v10 = a1[4];
  sub_18E1E15F4(a1, v9);
  (*(v10 + 24))(v9, v10);
  overrideAJAX(configuration:forResource:)();
  sub_18E1E8EEC(v7, &qword_1EABE2E68, &unk_18E4B0150);
}

uint64_t sub_18E306648(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  result = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = result + 40;
    a1();
    result = v7;
  }

  while (!v3);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> unforceAJAX(forResourceBundle:)(Swift::String forResourceBundle)
{
  sub_18E1C62A0();
  v3 = sub_18E44EADC();
  v4 = sub_18E1C5B08(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C4EDC();
  v9 = v8 - v7;
  v10 = type metadata accessor for AJAXConfiguration();
  v11 = sub_18E1C4EEC(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C4EDC();
  sub_18E1C561C();
  v14 = sub_18E2706EC(&qword_1EABE2E68, &unk_18E4B0150);
  v15 = sub_18E1C5B08(v14);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v72 - v21;
  type metadata accessor for CatalogClient();
  swift_allocObject();
  v23 = CatalogClient.init()();
  v24 = sub_18E1C5838();
  v25 = v23;
  v27 = sub_18E1CDBD8(v24, v26);
  if (v1)
  {
LABEL_3:

LABEL_4:
    sub_18E1C6650();
    return;
  }

  v28 = v27;
  v80 = v22;
  v81 = v20;
  v79 = v9;
  ResourceBundleContainer.toResourceBundle()();

  if (!v83)
  {
    sub_18E1E8EEC(&v82, &qword_1EABE1010, &unk_18E4E24D0);
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_18E44EFFC();

    v85 = 0xD000000000000010;
    v86 = 0x800000018E467990;
    v31 = sub_18E1C5838();
    MEMORY[0x193ACC300](v31);
    sub_18E1C6760();
    v32 = v85;
    v33 = v86;
    sub_18E3064D0();
    v34 = sub_18E1C8558();
    *v35 = v32;
    v35[1] = v33;
    sub_18E1C5D9C(v34, v35);
    goto LABEL_3;
  }

  sub_18E1C551C(&v82, &v85);
  v29 = sub_18E1C5838();

  v75 = v2;
  v36 = v87;
  v37 = v88;
  v78 = v25;
  sub_18E1E15F4(&v85, v87);
  v38 = (*(v37 + 48))(v36, v37);
  v39 = 0;
  v40 = *(v38 + 16);
  v76 = v38;
  v77 = v40;
  v41 = v80;
  v42 = v10;
  v43 = v38 + 32;
  v73 = v42;
  v74 = "d resource bundle ";
  while (1)
  {
    if (v77 == v39)
    {

      goto LABEL_23;
    }

    if (v39 >= *(v38 + 16))
    {
      break;
    }

    sub_18E1E4398(v43, &v82);
    sub_18E201DC8(v41, 1, 1, v42);
    v44 = v83;
    v45 = v84;
    sub_18E1E15F4(&v82, v83);
    v46 = v44;
    v47 = v81;
    (*(v45 + 24))(v46, v45);
    sub_18E304B7C(v41, v47);
    if (sub_18E1CAF28(v47, 1, v42) == 1)
    {
      sub_18E1E8EEC(v47, &qword_1EABE2E68, &unk_18E4B0150);
      v48 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v49 = sub_18E1C5A08();
      if (!v49)
      {
        sub_18E3064D0();
        sub_18E1C8558();
        sub_18E1D60FC();
        *v68 = v69;
        *(v68 + 8) = 0x800000018E467A70;
        *(v68 + 16) = 0;
        swift_willThrow();

        goto LABEL_22;
      }

      v50 = v49;
      v51 = sub_18E44EA8C();
      [v50 removeObjectForKey_];

      v38 = v76;
    }

    else
    {
      v52 = v43;
      v53 = v39;
      sub_18E304BEC(v47, v75);
      v54 = sub_18E44E27C();
      v55 = *(v54 + 48);
      v56 = *(v54 + 52);
      swift_allocObject();
      sub_18E44E26C();
      sub_18E1C6BF4();
      sub_18E305410(&qword_1EABE2E70, v57);
      v58 = sub_18E44E25C();
      v60 = v59;

      sub_18E44EACC();
      sub_18E44EABC();
      v62 = v61;
      v63 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v64 = sub_18E1C5A08();
      if (!v64)
      {
        sub_18E3064D0();
        sub_18E1C8558();
        sub_18E1D60FC();
        *v70 = v71;
        *(v70 + 8) = 0x800000018E467A70;
        *(v70 + 16) = 0;
        swift_willThrow();
        sub_18E304784(v75);

        sub_18E1FDFE0(v58, v60);

        v41 = v80;
LABEL_22:
        sub_18E1E8EEC(v41, &qword_1EABE2E68, &unk_18E4B0150);
        sub_18E1C9934(&v82);
LABEL_23:
        sub_18E1C9934(&v85);
        goto LABEL_4;
      }

      v65 = v64;
      if (v62)
      {
        v66 = sub_18E44EA8C();
      }

      else
      {
        v66 = 0;
      }

      v67 = sub_18E44EA8C();
      [v65 setObject:v66 forKey:v67];

      swift_unknownObjectRelease();
      sub_18E1FDFE0(v58, v60);
      sub_18E304784(v75);
      v38 = v76;
      v41 = v80;
      v39 = v53;
      v43 = v52;
    }

    sub_18E1E8EEC(v41, &qword_1EABE2E68, &unk_18E4B0150);

    sub_18E1C9934(&v82);
    v43 += 40;
    ++v39;
    v42 = v73;
  }

  __break(1u);
}

uint64_t sub_18E306D54()
{
  result = sub_18E44E54C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AJAXConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E306EB0()
{
  result = qword_1EABE2E80;
  if (!qword_1EABE2E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2E80);
  }

  return result;
}

unint64_t sub_18E306F08()
{
  result = qword_1EABE2E88;
  if (!qword_1EABE2E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2E88);
  }

  return result;
}

unint64_t sub_18E306F60()
{
  result = qword_1EABE2E90;
  if (!qword_1EABE2E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2E90);
  }

  return result;
}

uint64_t sub_18E306FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_18E44E55C();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_18E44E3EC();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_18E44E3AC();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_18E44E5CC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_18E30707C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_18E307940(sub_18E307DFC, v5, a1, a2);
}

void *sub_18E3070D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v4[2] = &v5;
  return sub_18E3079A4(sub_18E307DC0, v4, a1, a2);
}

uint64_t sub_18E307120(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_18E1FDFE0(v6, v5);
      *v4 = xmmword_18E4B0130;
      sub_18E1FDFE0(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_18E44E3BC() && __OFSUB__(v6, sub_18E44E3DC()))
      {
        goto LABEL_24;
      }

      v13 = sub_18E44E3EC();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_18E44E39C();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_18E307A04(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_18E1FDFE0(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_18E4B0130;
      sub_18E1FDFE0(0, 0xC000000000000000);
      sub_18E44E56C();
      v6 = v20;
      v9 = sub_18E307A04(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x1E69E9840];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_18E1FDFE0(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_18E3074E4(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_18E1FDFE0(v6, v5);
      *v4 = xmmword_18E4B0130;
      sub_18E1FDFE0(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_18E44E3BC() && __OFSUB__(v6, sub_18E44E3DC()))
      {
        goto LABEL_24;
      }

      v13 = sub_18E44E3EC();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_18E44E39C();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_18E307AB8(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_18E1FDFE0(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_18E4B0130;
      sub_18E1FDFE0(0, 0xC000000000000000);
      sub_18E44E56C();
      v6 = v20;
      v9 = sub_18E307AB8(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x1E69E9840];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_18E1FDFE0(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_18E307898(uint64_t result)
{
  if (result)
  {
    result = sub_18E44F00C();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18E3078E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  sub_18E307C5C(&v7, a1, a2);
  return v7;
}

void *sub_18E307940(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

void *sub_18E3079A4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_18E307A04(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_18E44E3BC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_18E44E3DC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_18E44E3CC();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_18E307AB8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_18E44E3BC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_18E44E3DC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_18E44E3CC();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_18E307B6C()
{
  v0 = sub_18E44EE8C();
  v1 = sub_18E44EE9C();
  v2 = sub_18E44EE8C();
  result = sub_18E44EE9C();
  if (v0 < v2 || result < v0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = sub_18E44EE8C();
  result = sub_18E44EE9C();
  if (v1 < v5 || result < v1)
  {
    goto LABEL_12;
  }

  result = v1 - v0;
  if (__OFSUB__(v1, v0))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

void *sub_18E307BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_18E30707C(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_18E307C1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_18E307898(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t sub_18E307C5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E44EE8C();
  v8 = result;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    *a1 = v3;
    a1[1] = v8;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v11 = v8 + v9;
      if (v8 + v9 == sub_18E44EE9C())
      {
        v8 += v9;
        a3 = v9;
        goto LABEL_16;
      }

      v12 = sub_18E44EEAC();
      v13 = sub_18E44EE8C();
      result = sub_18E44EE9C();
      if (v11 < v13 || v11 >= result)
      {
        goto LABEL_18;
      }

      *(a2 + v9++) = v12;
      if (v10 == a3)
      {
        v8 += v9;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_18E307D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_18E3070D0(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_18E307D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_18E3078E0(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_18E307E1C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_18E1C5F34(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  v9 = sub_18E1C8300();
  return sub_18E204BF4(v9, v8);
}

uint64_t TokenInputDenyList.cost.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_18E1C4EAC(a1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  (*(v7 + 16))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18E2706EC(&qword_1EABE12A0, &qword_18E49EB78);
  if (swift_dynamicCast())
  {
    sub_18E224478(v9, v10);
    sub_18E1E15F4(v10, v11);
    sub_18E1C4FE0();
    return sub_18E1C9934(v10);
  }

  else
  {
    result = sub_18E1C5F54();
    *a2 = 0;
    *(a2 + 5) = 0;
    *(a2 + 16) = MEMORY[0x1E69E7CC0];
    *(a2 + 24) = 1;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t sub_18E307F94()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_18E1C8300();
  return sub_18E307FF0(v1, v2, sub_18E32EE3C);
}

uint64_t sub_18E307FF0(void (*a1)(const void *, _BYTE *), uint64_t a2, uint64_t (*a3)(uint64_t))
{
  memcpy(__dst, v3, sizeof(__dst));
  a1(v3, v11);
  sub_18E2706EC(&qword_1EABE12A0, &qword_18E49EB78);
  if (sub_18E1C5CBC())
  {
    sub_18E224478(v12, v14);
    sub_18E1E15F4(v14, v15);
    v6 = sub_18E1C5C98();
    sub_18E1C9934(v14);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v7 = sub_18E298E58(v12);
    v8 = a3(v7);
    v9 = sub_18E2989E4(v8);

    return sub_18E292D44(v9);
  }

  return v6;
}

uint64_t TokenInputDenyList.executionContexts.getter(uint64_t a1, uint64_t a2)
{
  v5 = sub_18E1C4EAC(a1);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v9 + 16))(v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  sub_18E2706EC(&qword_1EABE12A0, &qword_18E49EB78);
  if (swift_dynamicCast())
  {
    sub_18E224478(v15, v16);
    sub_18E1E15F4(v16, v17);
    v10 = sub_18E1C5C98();
    sub_18E1C9934(v16);
  }

  else
  {
    sub_18E1C5F54();
    v11 = (*(*(*(a2 + 8) + 8) + 32))(a1);
    v12 = sub_18E2989E4(v11);

    return sub_18E292D44(v12);
  }

  return v10;
}

void sub_18E308244()
{

  if (qword_1ED6A8AB0 != -1)
  {
    sub_18E1C5568();
  }

  v0 = sub_18E44E83C();
  sub_18E1C95EC(v0, qword_1ED6A9870);
  oslog = sub_18E44E80C();
  v1 = sub_18E44EE1C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    sub_18E1C6358(&dword_18E1C1000, v3, v4, "TokenInputDenyList: Cannot set execution contexts on custom deny list. Please override functionality if needed.", v5, v6, v7, v8, v9, oslog);
    MEMORY[0x193ACD400](v2, -1, -1);
  }
}

void TokenInputDenyList.executionContexts.setter()
{

  if (qword_1ED6A8AB0 != -1)
  {
    sub_18E1C5568();
  }

  v0 = sub_18E44E83C();
  sub_18E1C95EC(v0, qword_1ED6A9870);
  oslog = sub_18E44E80C();
  v1 = sub_18E44EE1C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    sub_18E1C6358(&dword_18E1C1000, v3, v4, "TokenInputDenyList: Cannot set execution contexts on custom deny list. Please override functionality if needed.", v5, v6, v7, v8, v9, oslog);
    MEMORY[0x193ACD400](v2, -1, -1);
  }
}

uint64_t (*sub_18E3083DC())()
{
  v1 = sub_18E29965C(0xE8uLL);
  sub_18E1C5340(v1);
  v2 = sub_18E1C8300();
  *(v0 + 216) = sub_18E307FF0(v2, v3, sub_18E32EE3C);
  return sub_18E30845C;
}

void (*TokenInputDenyList.executionContexts.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = TokenInputDenyList.executionContexts.getter(a2, a3);
  return sub_18E3084B4;
}

void sub_18E3084B4(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;

    TokenInputDenyList.executionContexts.setter();
  }

  else
  {
    v4 = *a1;
    TokenInputDenyList.executionContexts.setter();
  }
}

uint64_t sub_18E30850C()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_18E1C6C0C();
  return sub_18E307FF0(v1, v2, sub_18E32EE3C);
}

uint64_t (*sub_18E308568())()
{
  v1 = sub_18E29965C(0xE8uLL);
  sub_18E1C5340(v1);
  v2 = sub_18E1C6C0C();
  *(v0 + 216) = sub_18E307FF0(v2, v3, sub_18E32EE3C);
  return sub_18E308700;
}

void sub_18E3085E8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 216);
  v4 = *(*a1 + 224);
  if (a2)
  {

    sub_18E308244();
    v5 = *v3;
  }

  else
  {
    sub_18E308244();
  }

  free(v2);
}

uint64_t sub_18E30864C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = TokenInputDenyList.executionContexts.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

void sub_18E308680(uint64_t *a1)
{
  v1 = *a1;

  TokenInputDenyList.executionContexts.setter();
}

uint64_t sub_18E308704@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_18E3087F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_18E308820@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

ModelCatalog::DebugInformationOptions sub_18E3088F4@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = DebugInformationOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_18E308934@<X0>(uint64_t *a1@<X8>)
{
  result = DebugInformationOptions.rawValue.getter();
  *a1 = result;
  return result;
}

ModelCatalog::DebugInformation::DeviceConfiguration __swiftcall DebugInformation.DeviceConfiguration.init(languages:featureFlags:)(Swift::OpaquePointer languages, Swift::OpaquePointer featureFlags)
{
  v2->_rawValue = languages._rawValue;
  v2[1]._rawValue = featureFlags._rawValue;
  result.featureFlags = featureFlags;
  result.languages = languages;
  return result;
}

uint64_t sub_18E308984(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676175676E616CLL && a2 == 0xE900000000000073;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4665727574616566 && a2 == 0xEC0000007367616CLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E44F3CC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18E308A58(char a1)
{
  if (a1)
  {
    return 0x4665727574616566;
  }

  else
  {
    return 0x65676175676E616CLL;
  }
}

uint64_t sub_18E308AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E308984(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E308ACC(uint64_t a1)
{
  v2 = sub_18E308D18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E308B08(uint64_t a1)
{
  v2 = sub_18E308D18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DebugInformation.DeviceConfiguration.encode(to:)()
{
  sub_18E1C62A0();
  v3 = v2;
  v4 = sub_18E2706EC(&qword_1EABE2EC0, &unk_18E4B0340);
  sub_18E1C4EAC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C57AC();
  v10 = *v0;
  v15 = v0[1];
  v11 = v3[3];
  v12 = v3[4];
  sub_18E1C5628(v3);
  v13 = sub_18E308D18();

  sub_18E1CB000();
  sub_18E44F4EC();
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  sub_18E1C783C();
  sub_18E1D5CE4(v14);
  sub_18E1C7FB8();
  sub_18E44F35C();

  if (!v13)
  {
    sub_18E2706EC(&qword_1EABE2EC8, &qword_18E4B0350);
    sub_18E308F70(&unk_1EABDF750);
    sub_18E1C7FB8();
    sub_18E44F35C();
  }

  (*(v6 + 8))(v1, v4);
  sub_18E1C6650();
}

unint64_t sub_18E308D18()
{
  result = qword_1EABDFBC0;
  if (!qword_1EABDFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBC0);
  }

  return result;
}

void DebugInformation.DeviceConfiguration.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E1C62A0();
  v12 = v11;
  v14 = v13;
  v15 = sub_18E2706EC(&qword_1EABE2ED0, &qword_18E4B0358);
  sub_18E1C4EAC(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v26 - v21;
  v23 = v12[3];
  v24 = v12[4];
  sub_18E1C5628(v12);
  sub_18E308D18();
  sub_18E1CB000();
  sub_18E44F4DC();
  if (v10)
  {
    sub_18E1C9934(v12);
  }

  else
  {
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    v27 = 0;
    sub_18E1C50DC();
    sub_18E1D5CE4(v25);
    sub_18E1C6010();
    sub_18E2706EC(&qword_1EABE2EC8, &qword_18E4B0350);
    v27 = 1;
    sub_18E308F70(&unk_1EABE2ED8);
    sub_18E1C6010();
    (*(v17 + 8))(v22, v15);
    *v14 = a10;
    v14[1] = a10;

    sub_18E1C9934(v12);
  }

  sub_18E1C6650();
}

unint64_t sub_18E308F70(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    sub_18E2707F8(&qword_1EABE2EC8, &qword_18E4B0350);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t DebugInformation.CoherenceTokens.assetSetName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_18E1C5BFC();
}

uint64_t DebugInformation.CoherenceTokens.assetSetIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_18E1C5BFC();
}

uint64_t DebugInformation.CoherenceTokens.currentToken.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_18E1C5BFC();
}

void __swiftcall DebugInformation.CoherenceTokens.init(assetSetName:assetSetIdentifier:currentToken:pidsLockingToken:)(ModelCatalog::DebugInformation::CoherenceTokens *__return_ptr retstr, Swift::String assetSetName, Swift::String_optional assetSetIdentifier, Swift::String_optional currentToken, Swift::OpaquePointer_optional pidsLockingToken)
{
  retstr->assetSetName = assetSetName;
  retstr->assetSetIdentifier = assetSetIdentifier;
  retstr->currentToken = currentToken;
  retstr->pidsLockingToken.value._rawValue = pidsLockingToken.value._rawValue;
}

uint64_t sub_18E3090AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465537465737361 && a2 == 0xEC000000656D614ELL;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000018E467B30 == a2;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x54746E6572727563 && a2 == 0xEC0000006E656B6FLL;
      if (v7 || (sub_18E44F3CC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x800000018E467B50 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_18E44F3CC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_18E30921C(char a1)
{
  result = 0x7465537465737361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x54746E6572727563;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E3092DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E3090AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E309304(uint64_t a1)
{
  v2 = sub_18E309560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E309340(uint64_t a1)
{
  v2 = sub_18E309560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DebugInformation.CoherenceTokens.encode(to:)()
{
  sub_18E1C62A0();
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE2EE0, &unk_18E4B0360);
  sub_18E1C4EAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C57AC();
  v11 = *v0;
  v12 = v0[1];
  v19 = v0[3];
  v20 = v0[2];
  v17 = v0[5];
  v18 = v0[4];
  v16 = v0[6];
  v13 = v4[3];
  v14 = v4[4];
  sub_18E1C5628(v4);
  sub_18E309560();
  sub_18E1CB000();
  sub_18E44F4EC();
  sub_18E44F31C();
  if (!v1)
  {
    sub_18E44F2BC();
    sub_18E44F2BC();
    sub_18E2706EC(&unk_1EABE1218, &qword_18E49E398);
    sub_18E1C783C();
    sub_18E3095B4(v15);
    sub_18E1C7FB8();
    sub_18E44F2FC();
  }

  (*(v7 + 8))(v2, v5);
  sub_18E1C6650();
}

unint64_t sub_18E309560()
{
  result = qword_1EABDFBE0;
  if (!qword_1EABDFBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBE0);
  }

  return result;
}

unint64_t sub_18E3095B4(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    sub_18E1C5B20();
    sub_18E2707F8(&unk_1EABE1218, &qword_18E49E398);
    sub_18E1CA1A4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void DebugInformation.CoherenceTokens.init(from:)()
{
  sub_18E1C62A0();
  v2 = v1;
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE2EE8, &qword_18E4B0370);
  sub_18E1C4EAC(v5);
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_18E1E15F4(v2, v2[3]);
  sub_18E309560();
  sub_18E44F4DC();
  if (v0)
  {
    sub_18E1C9934(v2);
  }

  else
  {
    v10 = sub_18E44F22C();
    v22 = v11;
    v12 = sub_18E44F1CC();
    v21 = v13;
    v19 = v12;
    v18 = sub_18E44F1CC();
    v20 = v14;
    sub_18E2706EC(&unk_1EABE1218, &qword_18E49E398);
    sub_18E1C50DC();
    sub_18E3095B4(v15);
    sub_18E44F20C();
    v16 = sub_18E1C8318();
    v17(v16);
    *v4 = v10;
    v4[1] = v22;
    v4[2] = v19;
    v4[3] = v21;
    v4[4] = v18;
    v4[5] = v20;
    v4[6] = v23;

    sub_18E1C9934(v2);
  }

  sub_18E1C6650();
}

uint64_t DebugInformation.UsageAliasSubscription.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_18E1C5BFC();
}

uint64_t sub_18E309954(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E44F3CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E3099E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E309954(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E309A0C(uint64_t a1)
{
  v2 = sub_18E309BA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E309A48(uint64_t a1)
{
  v2 = sub_18E309BA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DebugInformation.UsageAliasSubscription.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1C62A0();
  a19 = v22;
  a20 = v23;
  a10 = v21;
  v25 = v24;
  v26 = sub_18E2706EC(&qword_1EABE2EF0, &qword_18E4B0378);
  sub_18E1C4EAC(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  v34 = *v20;
  v35 = v20[1];
  v36 = v25[4];
  sub_18E1E15F4(v25, v25[3]);
  sub_18E309BA0();
  sub_18E44F4EC();
  sub_18E44F31C();
  (*(v28 + 8))(v33, v26);
  sub_18E1C6650();
}

unint64_t sub_18E309BA0()
{
  result = qword_1EABDFBA0;
  if (!qword_1EABDFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBA0);
  }

  return result;
}

void DebugInformation.UsageAliasSubscription.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1C62A0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_18E2706EC(&qword_1EABE2EF8, &qword_18E4B0380);
  sub_18E1C4EAC(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  v35 = v24[3];
  v36 = v24[4];
  sub_18E1C5628(v24);
  sub_18E309BA0();
  sub_18E1CB000();
  sub_18E44F4DC();
  if (!v20)
  {
    v37 = sub_18E44F22C();
    v39 = v38;
    (*(v29 + 8))(v34, v27);
    *v26 = v37;
    v26[1] = v39;
  }

  sub_18E1C9934(v24);
  sub_18E1C6650();
}

uint64_t DebugInformation.deviceConfiguration.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_18E309D78(v2);
}

uint64_t sub_18E309D78(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 DebugInformation.init(deviceConfiguration:tokens:subscriptions:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = a2;
  a4[1].n128_u64[1] = a3;
  return result;
}

uint64_t sub_18E309DD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000018E467B70 == a2;
  if (v3 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E656B6F74 && a2 == 0xE600000000000000;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7069726373627573 && a2 == 0xED0000736E6F6974)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E44F3CC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18E309EF4(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0x736E656B6F74;
  }

  return 0x7069726373627573;
}

uint64_t sub_18E309F58(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_18E44F48C();
  a4(v8, v6);
  return sub_18E44F4CC();
}

uint64_t sub_18E309FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E309DD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E309FD4(uint64_t a1)
{
  v2 = sub_18E30A290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E30A010(uint64_t a1)
{
  v2 = sub_18E30A290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DebugInformation.encode(to:)()
{
  sub_18E1C62A0();
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE2F00, &qword_18E4B0388);
  sub_18E1C4EAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C57AC();
  v11 = *v0;
  v12 = v0[1];
  v14 = v0[3];
  v15 = v0[2];
  v13 = v4[4];
  sub_18E1E15F4(v4, v4[3]);
  sub_18E309D78(v11);
  sub_18E30A290();
  sub_18E44F4EC();
  sub_18E30A2E4();
  sub_18E44F2FC();
  sub_18E30A338(v11);
  if (!v1)
  {
    sub_18E2706EC(&qword_1EABE2F08, &qword_18E4B0390);
    sub_18E30A7A4(&unk_1EABDF740);
    sub_18E1C7FB8();
    sub_18E44F35C();
    sub_18E2706EC(&qword_1EABE2F10, &qword_18E4B0398);
    sub_18E30A3CC(&unk_1EABDF738);
    sub_18E1C7FB8();
    sub_18E44F35C();
  }

  (*(v7 + 8))(v2, v5);
  sub_18E1C6650();
}

unint64_t sub_18E30A290()
{
  result = qword_1EABDFBF8;
  if (!qword_1EABDFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBF8);
  }

  return result;
}

unint64_t sub_18E30A2E4()
{
  result = qword_1EABDFBB0;
  if (!qword_1EABDFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBB0);
  }

  return result;
}

uint64_t sub_18E30A338(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_18E30A378()
{
  result = qword_1EABDFBD0;
  if (!qword_1EABDFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBD0);
  }

  return result;
}

unint64_t sub_18E30A3CC(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    sub_18E1C5B20();
    sub_18E2707F8(&qword_1EABE2F10, &qword_18E4B0398);
    v2();
    sub_18E1CA1A4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18E30A438()
{
  result = qword_1EABDFB90;
  if (!qword_1EABDFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFB90);
  }

  return result;
}

void DebugInformation.init(from:)()
{
  sub_18E1C62A0();
  v2 = v1;
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE2F18, &qword_18E4B03A0);
  sub_18E1C4EAC(v5);
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[3];
  v10 = v2[4];
  sub_18E1C5628(v2);
  sub_18E30A290();
  sub_18E1CB000();
  sub_18E44F4DC();
  if (v0)
  {
    sub_18E1C9934(v2);
  }

  else
  {
    sub_18E30A750();
    sub_18E44F20C();
    sub_18E2706EC(&qword_1EABE2F08, &qword_18E4B0390);
    sub_18E30A7A4(&unk_1EABE2F28);
    sub_18E1C8AE8();
    sub_18E44F26C();
    sub_18E2706EC(&qword_1EABE2F10, &qword_18E4B0398);
    sub_18E30A3CC(&unk_1EABE2F38);
    sub_18E1C8AE8();
    sub_18E44F26C();
    v11 = sub_18E1C59F8();
    v12(v11);
    *v4 = v13;
    v4[1] = v14;
    v4[2] = v13;
    v4[3] = v13;
    sub_18E309D78(v13);

    sub_18E1C9934(v2);
    sub_18E30A338(v13);
  }

  sub_18E1C6650();
}

unint64_t sub_18E30A750()
{
  result = qword_1EABE2F20;
  if (!qword_1EABE2F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2F20);
  }

  return result;
}

unint64_t sub_18E30A7A4(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    sub_18E1C5B20();
    sub_18E2707F8(&qword_1EABE2F08, &qword_18E4B0390);
    v2();
    sub_18E1CA1A4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18E30A810()
{
  result = qword_1EABE2F30;
  if (!qword_1EABE2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2F30);
  }

  return result;
}

unint64_t sub_18E30A864()
{
  result = qword_1EABE2F40;
  if (!qword_1EABE2F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2F40);
  }

  return result;
}

unint64_t sub_18E30A8BC()
{
  result = qword_1EABE2F48;
  if (!qword_1EABE2F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2F48);
  }

  return result;
}

unint64_t sub_18E30A914()
{
  result = qword_1EABE2F50;
  if (!qword_1EABE2F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2F50);
  }

  return result;
}

unint64_t sub_18E30A96C()
{
  result = qword_1EABE0370;
  if (!qword_1EABE0370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0370);
  }

  return result;
}

unint64_t sub_18E30A9C4()
{
  result = qword_1EABDF9B0;
  if (!qword_1EABDF9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF9B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DebugInformationOptions(uint64_t a1, int a2)
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

uint64_t sub_18E30AA74(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18E30AA8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_18E30AACC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_18E30AB18(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18E30AB58(uint64_t result, int a2, int a3)
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

uint64_t sub_18E30ABA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_18E30ABE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DebugInformation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DebugInformation.UsageAliasSubscription.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for DebugInformation.CoherenceTokens.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DebugInformation.DeviceConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E30AF88()
{
  result = qword_1EABE2F58;
  if (!qword_1EABE2F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2F58);
  }

  return result;
}

unint64_t sub_18E30AFE0()
{
  result = qword_1EABE2F60;
  if (!qword_1EABE2F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2F60);
  }

  return result;
}

unint64_t sub_18E30B038()
{
  result = qword_1EABE2F68;
  if (!qword_1EABE2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2F68);
  }

  return result;
}

unint64_t sub_18E30B090()
{
  result = qword_1EABE2F70;
  if (!qword_1EABE2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2F70);
  }

  return result;
}

unint64_t sub_18E30B0E8()
{
  result = qword_1EABE0538;
  if (!qword_1EABE0538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0538);
  }

  return result;
}

unint64_t sub_18E30B140()
{
  result = qword_1EABDFBF0;
  if (!qword_1EABDFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBF0);
  }

  return result;
}

unint64_t sub_18E30B198()
{
  result = qword_1EABDFBA8;
  if (!qword_1EABDFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBA8);
  }

  return result;
}

unint64_t sub_18E30B1F0()
{
  result = qword_1EABDFB98;
  if (!qword_1EABDFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFB98);
  }

  return result;
}

unint64_t sub_18E30B248()
{
  result = qword_1EABDFBE8;
  if (!qword_1EABDFBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBE8);
  }

  return result;
}

unint64_t sub_18E30B2A0()
{
  result = qword_1EABDFBD8;
  if (!qword_1EABDFBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBD8);
  }

  return result;
}

unint64_t sub_18E30B2F8()
{
  result = qword_1EABDFBC8;
  if (!qword_1EABDFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBC8);
  }

  return result;
}

unint64_t sub_18E30B350()
{
  result = qword_1EABDFBB8;
  if (!qword_1EABDFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBB8);
  }

  return result;
}

uint64_t sub_18E30B3A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v35 = MEMORY[0x1E69E7CC0];
  sub_18E26F220(0, v1, 0);
  v2 = v35;
  result = sub_18E327EEC(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v27 = v3 + 64;
  v28 = v1;
  v29 = v3 + 56;
  v30 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v33 = v6;
      v31 = v8;
      v32 = v5;
      v11 = *(v3 + 48) + 24 * v7;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v35 + 16);
      v16 = *(v35 + 24);

      if (v15 >= v16 >> 1)
      {
        result = sub_18E26F220((v16 > 1), v15 + 1, 1);
      }

      *(v35 + 16) = v15 + 1;
      v17 = v35 + (v15 << 6);
      *(v17 + 32) = v12;
      *(v17 + 40) = v13;
      *(v17 + 48) = v14;
      *(v17 + 49) = *v34;
      *(v17 + 52) = *&v34[3];
      *(v17 + 56) = 0u;
      *(v17 + 72) = 0u;
      *(v17 + 88) = 0;
      if (v33)
      {
        goto LABEL_29;
      }

      v9 = v29;
      v3 = v30;
      v18 = 1 << *(v30 + 32);
      if (v7 >= v18)
      {
        goto LABEL_26;
      }

      v19 = *(v29 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v30 + 36) != v32)
      {
        goto LABEL_28;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v21 = v28;
      }

      else
      {
        v22 = v10 << 6;
        v23 = v10 + 1;
        v24 = (v27 + 8 * v10);
        v21 = v28;
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_18E249F2C(v7, v32, 0);
            v18 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        result = sub_18E249F2C(v7, v32, 0);
      }

LABEL_19:
      v8 = v31 + 1;
      if (v31 + 1 == v21)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v30 + 36);
      v7 = v18;
      if (v18 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

id StatusResponse.__allocating_init(status:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___MCResourceStatus_status] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ResourceInformation.__allocating_init(location:metadata:)()
{
  v0 = objc_allocWithZone(sub_18E2287AC());
  sub_18E1D8004();
  return ResourceInformation.init(location:metadata:)();
}

void __swiftcall CostProfile.init(onDeviceMemory:cacheable:dynamicModeAllowed:energyEfficientMode:avoidUnload:unentitledGatedByFoundationModels:unentitledUseCases:powerCost:preferUnload:)(ModelCatalog::CostProfile *__return_ptr retstr, Swift::Int onDeviceMemory, Swift::Bool cacheable, Swift::Bool dynamicModeAllowed, Swift::Bool energyEfficientMode, Swift::Bool avoidUnload, Swift::Bool unentitledGatedByFoundationModels, Swift::OpaquePointer unentitledUseCases, Swift::Int powerCost, Swift::Bool preferUnload)
{
  sub_18E1E9DAC(onDeviceMemory, cacheable, dynamicModeAllowed, energyEfficientMode, avoidUnload, unentitledGatedByFoundationModels, retstr);
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  *(v12 + 32) = v13;
}

void __swiftcall CostProfile.init(onDeviceMemory:cacheable:dynamicModeAllowed:energyEfficientMode:avoidUnload:unentitledGatedByFoundationModels:unentitledUseCases:)(ModelCatalog::CostProfile *__return_ptr retstr, Swift::Int onDeviceMemory, Swift::Bool cacheable, Swift::Bool dynamicModeAllowed, Swift::Bool energyEfficientMode, Swift::Bool avoidUnload, Swift::Bool unentitledGatedByFoundationModels, Swift::OpaquePointer unentitledUseCases)
{
  sub_18E1E9DAC(onDeviceMemory, cacheable, dynamicModeAllowed, energyEfficientMode, avoidUnload, unentitledGatedByFoundationModels, retstr);
  *(v9 + 16) = v8;
  *(v9 + 24) = 1;
  *(v9 + 32) = 0;
}

uint64_t _s12ModelCatalog15ManagedResourcePA2A018ConfigurationBasedD0RzrlE17executionContextsShyAA16ExecutionContextVGvg_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(a3 + 8) + 32))();
  sub_18E30B3A8(v4);
  sub_18E1C5D78();

  return sub_18E292D44(v3);
}

void static ResourceConfiguration.== infix(_:_:)()
{
  sub_18E1C575C();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v77 = v3[6];
  v75 = *(v3 + 56);
  v73 = v3[8];
  v71 = v3[9];
  v69 = *(v3 + 80);
  v10 = *(v3 + 13);
  v92[0] = *(v3 + 11);
  v92[1] = v10;
  v93[0] = *(v3 + 15);
  *(v93 + 10) = *(v3 + 130);
  v63 = v3[19];
  v67 = v3[20];
  v65 = v3[21];
  v61 = v3[22];
  v58 = v3[23];
  v57 = *(v3 + 192);
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = v1[5];
  v76 = v1[6];
  v74 = *(v1 + 56);
  v72 = v1[8];
  v70 = v1[9];
  v68 = *(v1 + 80);
  v17 = *(v1 + 13);
  v94[0] = *(v1 + 11);
  v94[1] = v17;
  v95[0] = *(v1 + 15);
  *(v95 + 10) = *(v1 + 130);
  v18 = v4 == v11 && v5 == v12;
  v62 = v1[19];
  v66 = v1[20];
  v64 = v1[21];
  v59 = v1[23];
  v60 = v1[22];
  v56 = *(v1 + 192);
  if (!v18 && (sub_18E44F3CC() & 1) == 0)
  {
    goto LABEL_33;
  }

  if (v6 != v13 || v7 != v14)
  {
    sub_18E1CFFC0();
    if ((sub_18E44F3CC() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v20 = v8 == v15 && v9 == v16;
  if (!v20 && (sub_18E44F3CC() & 1) == 0)
  {
    goto LABEL_33;
  }

  if ((sub_18E290008(v77, v76) & 1) == 0)
  {
    goto LABEL_33;
  }

  if ((v75 ^ v74))
  {
    goto LABEL_33;
  }

  sub_18E290AD4();
  if ((v21 & 1) == 0)
  {
    goto LABEL_33;
  }

  if (v71)
  {
    if (!v70)
    {
      goto LABEL_33;
    }

    v22 = sub_18E21D0F8();
    v24 = sub_18E290E60(v22, v23);

    if ((v24 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v70)
  {
    goto LABEL_33;
  }

  if ((v69 ^ v68))
  {
    goto LABEL_33;
  }

  v25 = v92[0];
  v26 = v94[0];
  if (*(&v92[0] + 1))
  {
    v88 = v92[0];
    v27 = *(v3 + 15);
    v28 = *(v3 + 130);
    v89 = *(v3 + 13);
    v90[0] = v27;
    *(v90 + 10) = v28;
    v85 = v92[0];
    v86 = v89;
    v87[0] = v90[0];
    *(v87 + 10) = v28;
    if (*(&v94[0] + 1))
    {
      v29 = *(v1 + 15);
      v83 = *(v1 + 13);
      v84[0] = v29;
      *(v84 + 10) = *(v1 + 130);
      v82 = v94[0];
      sub_18E24058C();
      sub_18E2F66D4(v30, v31, v32, &qword_18E4B0C70);
      sub_18E24058C();
      sub_18E2F66D4(v33, v34, v35, &qword_18E4B0C70);
      sub_18E24058C();
      sub_18E2F66D4(v36, v37, v38, &qword_18E4B0C70);
      v39 = static AssetSubscriptionInformation.== infix(_:_:)(&v85);
      v78[0] = v82;
      v78[1] = v83;
      v79[0] = v84[0];
      *(v79 + 10) = *(v84 + 10);
      sub_18E1FFAD8(v78);
      v80[0] = v85;
      v80[1] = v86;
      v81[0] = v87[0];
      *(v81 + 10) = *(v87 + 10);
      sub_18E1FFAD8(v80);
      v82 = v25;
      v40 = *(v3 + 15);
      v83 = *(v3 + 13);
      v84[0] = v40;
      *(v84 + 10) = *(v3 + 130);
      sub_18E1D44B4();
      sub_18E327C3C(v41, v42);
      if ((v39 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_35;
    }

    v82 = v88;
    v83 = v89;
    v84[0] = v90[0];
    *(v84 + 10) = *(v90 + 10);
    sub_18E24058C();
    sub_18E2F66D4(v43, v44, v45, &qword_18E4B0C70);
    sub_18E24058C();
    sub_18E2F66D4(v46, v47, v48, &qword_18E4B0C70);
    sub_18E24058C();
    sub_18E2F66D4(v49, v50, v51, &qword_18E4B0C70);
    sub_18E1FFAD8(&v82);
LABEL_32:
    v88 = v25;
    sub_18E223470();
    v90[2] = v26;
    v52 = *(v1 + 15);
    v90[3] = *(v1 + 13);
    v91[0] = v52;
    *(v91 + 10) = *(v1 + 130);
    sub_18E327C3C(&v88, &unk_1EABE2FC0);
    goto LABEL_33;
  }

  if (*(&v94[0] + 1))
  {
    sub_18E2F66D4(v92, &v88, &qword_1EABE2FB8, &qword_18E4B0C70);
    sub_18E2F66D4(v94, &v88, &qword_1EABE2FB8, &qword_18E4B0C70);
    goto LABEL_32;
  }

  v88 = *&v92[0];
  sub_18E223470();
  sub_18E2F66D4(v92, &v85, &qword_1EABE2FB8, &qword_18E4B0C70);
  sub_18E2F66D4(v94, &v85, &qword_1EABE2FB8, &qword_18E4B0C70);
  sub_18E327C3C(&v88, &qword_1EABE2FB8);
LABEL_35:
  if (v67)
  {
    if (!v66)
    {
      goto LABEL_33;
    }

    v53 = v63 == v62 && v67 == v66;
    if (!v53 && (sub_18E44F3CC() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v66)
  {
    goto LABEL_33;
  }

  if (v65)
  {
    if (!v64 || !sub_18E290BF0(v65, v64))
    {
      goto LABEL_33;
    }
  }

  else if (v64)
  {
    goto LABEL_33;
  }

  if (v61)
  {
    if (!v60)
    {
      goto LABEL_33;
    }

    sub_18E290F68();
    v55 = v54;

    if ((v55 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v60)
  {
    goto LABEL_33;
  }

  if (v58 && v59)
  {

    sub_18E1C5BFC();
    sub_18E290C28();
  }

LABEL_33:
  sub_18E1C5544();
}

void sub_18E30BD1C()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C8E58();
  v7 = v1[3];
  v8 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E1594();
    sub_18E1C8B08();
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E208040();
    sub_18E1D4380();
    sub_18E1E2678();
    sub_18E1D5DD4(v9, v10, v11);
    sub_18E1E26B4();
    v12 = sub_18E1C6040();
    v13(v12);
    sub_18E216880();
    sub_18E1FED0C();
    sub_18E22013C();
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30BED8()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C8E58();
  v9 = v1[3];
  v10 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E1594();
    sub_18E1C8B08();
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E216858();
    if (v12)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v11;
    }

    sub_18E1D7FE4();
    sub_18E1E3C78();
    sub_18E1D5DD4(v14, v15, v16);
    sub_18E235304();
    sub_18E1D6354();
    sub_18E1E9DF4();
    v18 = sub_18E1C9010(v17);
    v19(v18);
    sub_18E216880();
    sub_18E1FED0C();
    *(v5 + 200) = v10;
    *(v5 + 208) = v13;
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30C0B4()
{
  sub_18E1C62A0();
  sub_18E1E200C(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1CAFF0();
  v8 = v1[3];
  v7 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E2624();
    sub_18E1D6110();
    sub_18E1E6468();
    sub_18E1C5644();
    sub_18E216858();
    sub_18E1E0FE0();
    sub_18E2244A8();
    sub_18E201A88(17, v9, v10);
    sub_18E1CD780();
    if (v11 && *(v11 + 16))
    {
      v12 = sub_18E1C5844();
      v13(v12);
      sub_18E200604();
      sub_18E1E9FEC();
      sub_18E2214B4();
    }

    else
    {
      sub_18E32EFD4();
      v14 = sub_18E1C8558();
      sub_18E32EF80(v14, v15);
      sub_18E243ED0(v16, 0xD000000000000029);
      sub_18E22355C();
      v17 = sub_18E1C89D0();
      MEMORY[0](v17);

      sub_18E1FE044(&v18);
    }
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30C358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_18E1C62A0();
  a19 = v66;
  a20 = v67;
  sub_18E32EFFC();
  sub_18E2236EC();
  v78 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v78);
  v69 = *(v68 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v70);
  sub_18E1C61D0();
  v72 = v65[3];
  v71 = v65[4];
  v73 = sub_18E1E25B0();
  sub_18E1DD34C(v73, v74);
  sub_18E1E9D4C();
  sub_18E1E2CC0();
  sub_18E44F4DC();
  if (!v64)
  {
    sub_18E1E69A4();
    sub_18E212018();
    sub_18E1E23B8();
    sub_18E44F26C();
    sub_18E1E3E84();
    sub_18E1C7854();
    sub_18E1E23B8();
    sub_18E44F1CC();
    memcpy(&a12, &a64, 0xC1uLL);
    v75 = sub_18E232F6C();
    v72(v75);
    v76 = sub_18E1D0120();
    v77(v76);
    memcpy(a9, &a37, 0xD8uLL);
  }

  sub_18E1C9934(v65);
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E30C520()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C8E58();
  v7 = v1[3];
  v8 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E1594();
    sub_18E1C8B08();
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E208040();
    sub_18E1D4380();
    sub_18E1E2678();
    sub_18E1D5DD4(v9, v10, v11);
    sub_18E1E26B4();
    v12 = sub_18E1C6040();
    v13(v12);
    sub_18E216880();
    sub_18E1FED0C();
    sub_18E22013C();
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30C6DC()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C8E58();
  v9 = v1[3];
  v10 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E1594();
    sub_18E1C8B08();
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E216858();
    if (v12)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v11;
    }

    sub_18E1D7FE4();
    sub_18E1E3C78();
    sub_18E1D5DD4(v14, v15, v16);
    sub_18E235304();
    sub_18E1D6354();
    sub_18E1E9DF4();
    v18 = sub_18E1C9010(v17);
    v19(v18);
    sub_18E216880();
    sub_18E1FED0C();
    *(v5 + 200) = v10;
    *(v5 + 208) = v13;
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30C8B8()
{
  sub_18E1C62A0();
  sub_18E1E200C(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1CAFF0();
  v8 = v1[3];
  v7 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E2624();
    sub_18E1D6110();
    sub_18E1E6468();
    sub_18E1C5644();
    sub_18E216858();
    sub_18E1E0FE0();
    sub_18E2244A8();
    sub_18E201A88(17, v9, v10);
    sub_18E1CD780();
    if (v11 && *(v11 + 16))
    {
      v12 = sub_18E1C5844();
      v13(v12);
      sub_18E200604();
      sub_18E1E9FEC();
      sub_18E2214B4();
    }

    else
    {
      sub_18E32EFD4();
      v14 = sub_18E1C8558();
      sub_18E32EF80(v14, v15);
      sub_18E243ED0(v16, 0xD000000000000029);
      sub_18E22355C();
      v17 = sub_18E1C89D0();
      MEMORY[0](v17);

      sub_18E1FE044(&v18);
    }
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30CAF8()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C8E58();
  v7 = v1[3];
  v8 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E1594();
    sub_18E1C8B08();
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E208040();
    sub_18E1D4380();
    sub_18E1E2678();
    sub_18E201A88(21, v9, v10);
    sub_18E1E26B4();
    v11 = sub_18E1C6040();
    v12(v11);
    sub_18E216880();
    sub_18E1FED0C();
    sub_18E22013C();
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30CCB8()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C8E58();
  v9 = v1[3];
  v10 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E1594();
    sub_18E1C8B08();
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E216858();
    if (v12)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v11;
    }

    sub_18E1D7FE4();
    sub_18E1E3C78();
    sub_18E201A88(21, v14, v15);
    sub_18E235304();
    sub_18E1D6354();
    sub_18E1E9DF4();
    v17 = sub_18E1C9010(v16);
    v18(v17);
    sub_18E216880();
    sub_18E1FED0C();
    *(v5 + 200) = v10;
    *(v5 + 208) = v13;
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30CE98()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C8E58();
  v7 = v1[3];
  v8 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E1594();
    sub_18E1C8B08();
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E208040();
    sub_18E1D4380();
    sub_18E1E2678();
    sub_18E201A88(22, v9, v10);
    sub_18E1E26B4();
    v11 = sub_18E1C6040();
    v12(v11);
    sub_18E216880();
    sub_18E1FED0C();
    sub_18E22013C();
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30D058()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C8E58();
  v9 = v1[3];
  v10 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E1594();
    sub_18E1C8B08();
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E216858();
    if (v12)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v11;
    }

    sub_18E1D7FE4();
    sub_18E1E3C78();
    sub_18E201A88(22, v14, v15);
    sub_18E235304();
    sub_18E1D6354();
    sub_18E1E9DF4();
    v17 = sub_18E1C9010(v16);
    v18(v17);
    sub_18E216880();
    sub_18E1FED0C();
    *(v5 + 200) = v10;
    *(v5 + 208) = v13;
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30D238()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C8E58();
  v7 = v1[3];
  v8 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E1594();
    sub_18E1C8B08();
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E208040();
    sub_18E1D4380();
    sub_18E1E2678();
    sub_18E1D5DD4(v9, v10, v11);
    sub_18E1E26B4();
    v12 = sub_18E1C6040();
    v13(v12);
    sub_18E216880();
    sub_18E1FED0C();
    sub_18E22013C();
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30D3F4()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C8E58();
  v9 = v1[3];
  v10 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E1594();
    sub_18E1C8B08();
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E216858();
    if (v12)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v11;
    }

    sub_18E1D7FE4();
    sub_18E1E3C78();
    sub_18E1D5DD4(v14, v15, v16);
    sub_18E235304();
    sub_18E1D6354();
    sub_18E1E9DF4();
    v18 = sub_18E1C9010(v17);
    v19(v18);
    sub_18E216880();
    sub_18E1FED0C();
    *(v5 + 200) = v10;
    *(v5 + 208) = v13;
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30D608()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C8E58();
  v7 = v1[3];
  v8 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E1594();
    sub_18E1C8B08();
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E208040();
    sub_18E1D4380();
    sub_18E1E2678();
    sub_18E201A88(17, v9, v10);
    sub_18E1E26B4();
    v11 = sub_18E1C6040();
    v12(v11);
    sub_18E216880();
    sub_18E1FED0C();
    sub_18E22013C();
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30D7C8()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C8E58();
  v9 = v1[3];
  v10 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E1594();
    sub_18E1C8B08();
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E216858();
    if (v12)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v11;
    }

    sub_18E1D7FE4();
    sub_18E1E3C78();
    sub_18E201A88(17, v14, v15);
    sub_18E235304();
    sub_18E1D6354();
    sub_18E1E9DF4();
    v17 = sub_18E1C9010(v16);
    v18(v17);
    sub_18E216880();
    sub_18E1FED0C();
    *(v5 + 200) = v10;
    *(v5 + 208) = v13;
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30D9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_18E1C62A0();
  a19 = v66;
  a20 = v67;
  sub_18E32EFFC();
  sub_18E22177C(v68, v69, v70);
  v71 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v71);
  v73 = v72;
  v75 = *(v74 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v76);
  sub_18E1C8E58();
  v77 = v65[4];
  sub_18E1DD34C(v65, v65[3]);
  sub_18E1E9D4C();
  sub_18E1E6A9C();
  sub_18E44F4DC();
  if (!v64)
  {
    *(v66 - 65) = 0;
    sub_18E1E9E20();
    sub_18E1C6900();
    sub_18E1E3E84();
    a14 = 1;
    sub_18E1E845C();
    v78 = sub_18E44F1CC();
    v80 = v79;
    v81 = 0xE700000000000000;
    if (v79)
    {
      v81 = v79;
    }

    v86 = v78;
    v87 = v81;
    memcpy(&a39, &a64, 0xC1uLL);
    sub_18E1D45EC(a13, a11, &a39);
    if (v80)
    {
      v82 = v86;
    }

    else
    {
      v82 = 0x636972656E6567;
    }

    v83 = *(v73 + 8);
    v84 = sub_18E1C6004();
    v85(v84);
    sub_18E1E8538();
    memcpy(a12, &a14, 0xC8uLL);
    a12[25] = v82;
    a12[26] = v87;
  }

  sub_18E1C9934(v65);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30DBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_18E1C62A0();
  a19 = v66;
  a20 = v67;
  sub_18E32EFFC();
  sub_18E22177C(v68, v69, v70);
  v71 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v71);
  v73 = v72;
  v75 = *(v74 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v76);
  sub_18E1C8E58();
  v77 = v65[4];
  sub_18E1DD34C(v65, v65[3]);
  sub_18E1E9D4C();
  sub_18E1E6A9C();
  sub_18E44F4DC();
  if (!v64)
  {
    *(v66 - 65) = 0;
    sub_18E1E9E20();
    sub_18E1C6900();
    sub_18E1E3E84();
    LOBYTE(a14) = 1;
    sub_18E1E845C();
    v78 = sub_18E44F1CC();
    v80 = 0x636972656E6567;
    if (v79)
    {
      v80 = v78;
    }

    v84 = v80;
    if (v79)
    {
      v81 = v79;
    }

    else
    {
      v81 = 0xE700000000000000;
    }

    sub_18E1E8538();
    sub_18E1D45EC(a13, a11, &a14);
    memcpy(&a39, &a64, 0xC1uLL);
    sub_18E1D46CC();
    v82 = sub_18E1C9010((v73 + 8));
    v83(v82);
    sub_18E1E8538();
    memcpy(a12, &a14, 0xC8uLL);
    a12[25] = v84;
    a12[26] = v81;
  }

  sub_18E1C9934(v65);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30DE38()
{
  sub_18E1C62A0();
  sub_18E1E200C(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1CAFF0();
  v8 = v1[3];
  v7 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E2624();
    sub_18E1D6110();
    sub_18E1E6468();
    sub_18E1C5644();
    sub_18E216858();
    sub_18E1E0FE0();
    sub_18E2244A8();
    sub_18E201A88(24, v9, v10);
    sub_18E1CD780();
    if (v11 && *(v11 + 16))
    {
      v12 = sub_18E1C5844();
      v13(v12);
      sub_18E200604();
      sub_18E1E9FEC();
      sub_18E2214B4();
    }

    else
    {
      sub_18E32EFD4();
      v14 = sub_18E1C8558();
      sub_18E32EF80(v14, v15);
      sub_18E243ED0(v16, 0xD000000000000029);
      sub_18E22355C();
      v17 = sub_18E1C89D0();
      MEMORY[0](v17);

      sub_18E1FE044(&v18);
    }
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30E0B0()
{
  sub_18E1C62A0();
  v29 = v2;
  v30 = v3;
  v31 = v4;
  v6 = v5;
  v7 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v12);
  sub_18E1CAFF0();
  v13 = v6[3];
  v14 = v6[4];
  sub_18E1C5628(v6);
  sub_18E1E9D4C();
  sub_18E1E6A9C();
  sub_18E1CB000();
  sub_18E44F4DC();
  if (!v0)
  {
    v15 = v9;
    sub_18E1E9E20();
    sub_18E1D6110();
    sub_18E1E6468();
    v16 = sub_18E1C5644();
    v18 = 0x636972656E6567;
    if (v17)
    {
      v18 = v16;
    }

    v28 = v18;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0xE700000000000000;
    }

    sub_18E200604();
    sub_18E1D45EC(v31, v29, v32);
    if (v34 && *(v34 + 16))
    {
      v20 = sub_18E1C5844();
      v21(v20);
      sub_18E200604();
      memcpy(v30, v32, 0xC8uLL);
      v30[25] = v28;
      v30[26] = v19;
    }

    else
    {
      v22 = v7;
      v23 = v15;
      v25 = v33[0];
      v24 = v33[1];
      sub_18E32EFD4();
      sub_18E1C8558();
      *v26 = v25;
      v26[1] = v24;
      sub_18E243ED0(v26, 0xD000000000000029);
      v27 = *(v23 + 8);

      v27(v1, v22);

      sub_18E1FE044(v33);
    }
  }

  sub_18E1C9934(v6);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30E338()
{
  sub_18E1C62A0();
  sub_18E1E200C(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1CAFF0();
  v8 = v1[3];
  v7 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E2624();
    sub_18E1D6110();
    sub_18E1E6468();
    sub_18E1C5644();
    sub_18E216858();
    sub_18E1E0FE0();
    sub_18E2244A8();
    sub_18E201A88(27, v9, v10);
    sub_18E1CD780();
    if (v11 && *(v11 + 16))
    {
      v12 = sub_18E1C5844();
      v13(v12);
      sub_18E200604();
      sub_18E1E9FEC();
      sub_18E2214B4();
    }

    else
    {
      sub_18E32EFD4();
      v14 = sub_18E1C8558();
      sub_18E32EF80(v14, v15);
      sub_18E243ED0(v16, 0xD000000000000029);
      sub_18E22355C();
      v17 = sub_18E1C89D0();
      MEMORY[0](v17);

      sub_18E1FE044(&v18);
    }
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30E578()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C8E58();
  v7 = v1[3];
  v8 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E1594();
    sub_18E1C8B08();
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E208040();
    sub_18E1D4380();
    sub_18E1E2678();
    sub_18E201A88(23, v9, v10);
    sub_18E1E26B4();
    v11 = sub_18E1C6040();
    v12(v11);
    sub_18E216880();
    sub_18E1FED0C();
    sub_18E22013C();
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30E738()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C8E58();
  v9 = v1[3];
  v10 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E1594();
    sub_18E1C8B08();
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E216858();
    if (v12)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v11;
    }

    sub_18E1D7FE4();
    sub_18E1E3C78();
    sub_18E201A88(23, v14, v15);
    sub_18E235304();
    sub_18E1D6354();
    sub_18E1E9DF4();
    v17 = sub_18E1C9010(v16);
    v18(v17);
    sub_18E216880();
    sub_18E1FED0C();
    *(v5 + 200) = v10;
    *(v5 + 208) = v13;
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}