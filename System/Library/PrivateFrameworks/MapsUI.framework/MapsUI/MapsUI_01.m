uint64_t sub_1C5639580(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C563A1C4(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1C5639F44((*a3 + 4 * *v77), (*a3 + 4 * *v79), (*a3 + 4 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 4 * v17);
            *(v20 + 4 * v17) = *(v20 + 4 * v16);
            *(v20 + 4 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C5637CAC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1C5637CAC((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1C5639F44((*a3 + 4 * *v70), (*a3 + 4 * *v72), (*a3 + 4 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 4 * v7 - 4;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 4 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 4;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1C5639ACC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1C584FDC0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1C584FDC0() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1C5639CF4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_47;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v4;
      if (*(*v6 + 16))
      {
        v17 = *(*v6 + 32);
        if (!*(v16 + 16))
        {
          if (v17 < 0)
          {
            goto LABEL_22;
          }

          goto LABEL_12;
        }
      }

      else
      {
        if (!*(v16 + 16))
        {
          goto LABEL_12;
        }

        v17 = 0;
      }

      if (v17 < *(v16 + 32))
      {
LABEL_22:
        v16 = *v6;
        v15 = v7 == v6;
        v6 += 8;
        if (v15)
        {
          goto LABEL_14;
        }

LABEL_13:
        *v7 = v16;
        goto LABEL_14;
      }

LABEL_12:
      v15 = v7 == v4;
      v4 += 8;
      if (!v15)
      {
        goto LABEL_13;
      }

LABEL_14:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_30:
    v18 = v6 - 8;
    v19 = v5;
    v20 = v14;
    while (1)
    {
      v22 = *(v20 - 8);
      v20 -= 8;
      v21 = v22;
      v23 = *v18;
      if (*(v22 + 16))
      {
        v24 = *(v21 + 32);
        v5 = v19 - 8;
        if (*(v23 + 16))
        {
          goto LABEL_38;
        }

        if (v24 < 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v5 = v19 - 8;
        if (*(v23 + 16))
        {
          v24 = 0;
LABEL_38:
          if (v24 < *(v23 + 32))
          {
LABEL_41:
            if (v19 != v6)
            {
              *v5 = v23;
            }

            if (v14 <= v4 || (v6 -= 8, v18 <= v7))
            {
              v6 = v18;
              break;
            }

            goto LABEL_30;
          }
        }
      }

      if (v14 != v19)
      {
        *v5 = v21;
      }

      v14 = v20;
      v19 = v5;
      if (v20 <= v4)
      {
        v14 = v20;
        break;
      }
    }
  }

LABEL_47:
  v25 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v25 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v25 >> 3));
  }

  return 1;
}

uint64_t sub_1C5639F44(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v21 = *(v18 - 4);
      v18 -= 4;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_1C563A138(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C563A1C4(v3);
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

uint64_t sub_1C563A1D8(int *a1, int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1C584FEA0();
  sub_1C584FED0();
  v7 = sub_1C584FEF0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 4 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1C563A520(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1C563A2D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB20, &qword_1C5867B20);
  result = sub_1C584FC10();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1C584FEA0();
      sub_1C584FED0();
      result = sub_1C584FEF0();
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
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
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
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

void sub_1C563A520(int a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C563A2D0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1C563A67C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1C563A7BC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1C584FEA0();
  sub_1C584FED0();
  v10 = sub_1C584FEF0();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for GEOEVChargerPlugConnectorType(0);
    a2 = v13;
    while (*(*(v8 + 48) + 4 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 4 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C584FDF0();
  __break(1u);
}

void *sub_1C563A67C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB20, &qword_1C5867B20);
  v2 = *v0;
  v3 = sub_1C584FC00();
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

uint64_t sub_1C563A7BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB20, &qword_1C5867B20);
  result = sub_1C584FC10();
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
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1C584FEA0();
      sub_1C584FED0();
      result = sub_1C584FEF0();
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
      *(*(v6 + 48) + 4 * v13) = v17;
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

uint64_t sub_1C563A9DC(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v9);
    bzero(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v10 = sub_1C563AC30(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v13 = swift_slowAlloc();

    v10 = sub_1C563ABA0(v13, v6, a2, a1);

    MEMORY[0x1C694B7A0](v13, -1, -1);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void *sub_1C563ABA0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1C563AC30(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1C563AC30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = result;
  v41 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v23 = 0;
    v24 = 1 << *(a3 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(a3 + 56);
    v27 = (v24 + 63) >> 6;
    v28 = a4 + 56;
    v40 = 0;
LABEL_24:
    while (v26)
    {
      v29 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
LABEL_31:
      v32 = v29 | (v23 << 6);
      v33 = *(*(a3 + 48) + 4 * v32);
      v34 = *(a4 + 40);
      sub_1C584FEA0();
      sub_1C584FED0();
      result = sub_1C584FEF0();
      a4 = v41;
      v35 = -1 << *(v41 + 32);
      v36 = result & ~v35;
      if ((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
      {
        v37 = ~v35;
        while (*(*(v41 + 48) + 4 * v36) != v33)
        {
          v36 = (v36 + 1) & v37;
          if (((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v39 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_41;
        }

        ++v40;
      }
    }

    v30 = v23;
    while (1)
    {
      v23 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v23 >= v27)
      {
LABEL_38:

        return sub_1C563AF3C(v39, a2, v40, a3);
      }

      v31 = *(a3 + 56 + 8 * v23);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v26 = (v31 - 1) & v31;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = a4 + 56;
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
    v40 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 4 * (v12 | (v5 << 6)));
      v16 = *(a3 + 40);
      sub_1C584FEA0();
      sub_1C584FED0();
      result = sub_1C584FEF0();
      a4 = v41;
      v17 = -1 << *(a3 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      if (((1 << v18) & *(v11 + 8 * (v18 >> 6))) != 0)
      {
        v21 = *(a3 + 48);
        if (*(v21 + 4 * v18) == v15)
        {
LABEL_18:
          v39[v19] |= v20;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_42;
          }

          ++v40;
        }

        else
        {
          v22 = ~v17;
          while (1)
          {
            v18 = (v18 + 1) & v22;
            v19 = v18 >> 6;
            v20 = 1 << v18;
            if (((1 << v18) & *(v11 + 8 * (v18 >> 6))) == 0)
            {
              break;
            }

            if (*(v21 + 4 * v18) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1C563AF3C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB20, &qword_1C5867B20);
  result = sub_1C584FC30();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_1C584FEA0();
    sub_1C584FED0();
    result = sub_1C584FEF0();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 4 * v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_1C563B144(char *a1, int64_t a2, char a3)
{
  result = sub_1C563B1A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C563B164(char *a1, int64_t a2, char a3)
{
  result = sub_1C563B3E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C563B184(size_t a1, int64_t a2, char a3)
{
  result = sub_1C563B4E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C563B1A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8E0, &qword_1C5867910);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C563B2B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB18, &qword_1C5867B18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB10, &qword_1C5867B10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C563B3E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB08, &qword_1C5867B08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

size_t sub_1C563B4E8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAF8, &qword_1C5867AF8);
  v10 = *(type metadata accessor for EVChargingRow(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for EVChargingRow(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1C563B6FC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1C563B850(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
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
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C563B950(unint64_t a1)
{
  v24 = MEMORY[0x1E69E7CC8];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC8];
  }

LABEL_23:
  v2 = sub_1C584FB90();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1C694A320](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v6 = *(a1 + 8 * v3 + 32);
    }

    v7 = v6;
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v9 = [v6 connectorType];
    v10 = sub_1C5637498(v9);
    v12 = v4[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      goto LABEL_21;
    }

    v16 = v11;
    if (v4[3] < v15)
    {
      sub_1C5637860(v15, 1);
      v4 = v24;
      v10 = sub_1C5637498(v9);
      if ((v16 & 1) != (v17 & 1))
      {
        break;
      }
    }

    if (v16)
    {
      v5 = (v4[7] + 8 * v10);
      MEMORY[0x1C6949DF0]();
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C584F7A0();
      }

      sub_1C584F7E0();
    }

    else
    {
      v18 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1C5867970;
      *(v19 + 32) = v7;
      v4[(v18 >> 6) + 8] |= 1 << v18;
      *(v4[6] + 4 * v18) = v9;
      *(v4[7] + 8 * v18) = v19;
      v20 = v4[2];
      v14 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v14)
      {
        goto LABEL_22;
      }

      v4[2] = v21;
    }

    ++v3;
    if (v8 == v2)
    {
      return v4;
    }
  }

  type metadata accessor for GEOEVChargerPlugConnectorType(0);
  result = sub_1C584FE00();
  __break(1u);
  return result;
}

BOOL sub_1C563BBA8(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C584FB90())
  {
    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1C694A320](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 realtimeStatus])
      {
        goto LABEL_16;
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
  v5 = 0;
LABEL_16:

  return v5 == 0;
}

uint64_t sub_1C563BC94(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!sub_1C584FB90())
  {
    return 0;
  }

  v2 = sub_1C584FB90();
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

LABEL_3:
  v42 = MEMORY[0x1E69E7CC0];
  sub_1C563B144(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v3 = 0;
  v4 = v42;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1C694A320](v3, a1);
    }

    else
    {
      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = [v5 displayName];
    v8 = sub_1C584F660();
    v10 = v9;

    v42 = v4;
    v12 = *(v4 + 16);
    v11 = *(v4 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1C563B144((v11 > 1), v12 + 1, 1);
      v4 = v42;
    }

    ++v3;
    *(v4 + 16) = v12 + 1;
    v13 = v4 + 16 * v12;
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;
  }

  while (v2 != v3);
LABEL_15:
  v42 = v4;

  sub_1C5637AF0(&v42, sub_1C563B6C0, sub_1C5638668);

  v14 = v42;
  v15 = v42[2];
  if (v15 == 1)
  {
    v36 = [objc_opt_self() forYourVehicleNameFormatString];
    v2 = sub_1C584F660();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16DFC0, &unk_1C58685E0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1C5867900;
    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = sub_1C563D3B0();
    if (v14[2])
    {
      v39 = v14[4];
      v38 = v14[5];

      *(v37 + 32) = v39;
      *(v37 + 40) = v38;
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  if (v15 == 2)
  {
    v27 = [objc_opt_self() forYourVehicleNameFormatStringTwoVehicles];
    v2 = sub_1C584F660();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16DFC0, &unk_1C58685E0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C5867990;
    v29 = MEMORY[0x1E69E6158];
    *(v28 + 56) = MEMORY[0x1E69E6158];
    v30 = sub_1C563D3B0();
    *(v28 + 64) = v30;
    v31 = v14[2];
    if (v31)
    {
      v32 = v30;
      v33 = v14[5];
      *(v28 + 32) = v14[4];
      *(v28 + 40) = v33;
      *(v28 + 96) = v29;
      *(v28 + 104) = v32;
      if (v31 != 1)
      {
        v35 = v14[6];
        v34 = v14[7];

        *(v28 + 72) = v35;
        *(v28 + 80) = v34;
        goto LABEL_28;
      }

      goto LABEL_35;
    }

    goto LABEL_32;
  }

  if (v15 != 3)
  {

    v40 = [objc_opt_self() forYourVehicles];
    v26 = sub_1C584F660();

    return v26;
  }

  v16 = [objc_opt_self() forYourVehicleNameFormatStringThreeVehicles];
  v2 = sub_1C584F660();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16DFC0, &unk_1C58685E0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C5867980;
  v18 = MEMORY[0x1E69E6158];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1C563D3B0();
  *(v17 + 64) = v19;
  v20 = v14[2];
  if (!v20)
  {
    goto LABEL_34;
  }

  v21 = v19;
  v22 = v14[5];
  *(v17 + 32) = v14[4];
  *(v17 + 40) = v22;
  *(v17 + 96) = v18;
  *(v17 + 104) = v21;
  if (v20 == 1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v23 = v14[7];
  *(v17 + 72) = v14[6];
  *(v17 + 80) = v23;
  *(v17 + 136) = v18;
  *(v17 + 144) = v21;
  if (v20 >= 3)
  {
    v25 = v14[8];
    v24 = v14[9];

    *(v17 + 112) = v25;
    *(v17 + 120) = v24;
LABEL_28:
    v26 = sub_1C584F670();

    return v26;
  }

LABEL_37:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C563C124(uint64_t a1, double a2)
{
  v80 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA90, &qword_1C5867AA0);
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = *(v77 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v72 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v76 = &v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA98, &qword_1C5867AA8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v65 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAA0, &qword_1C5867AB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v71 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAA8, &qword_1C5867AB8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v70 = &v65 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAB0, &unk_1C5867AC0);
  v74 = *(v23 - 8);
  v75 = v23;
  v24 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v23, v25);
  v73 = &v65 - v26;
  v69 = sub_1C584E9E0();
  v67 = *(v69 - 8);
  v27 = *(v67 + 8);
  MEMORY[0x1EEE9AC00](v69, v28);
  v30 = &v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C584ECE0();
  v68 = *(v31 - 8);
  v32 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v65 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAB8, &qword_1C586A960);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v40 = MEMORY[0x1EEE9AC00](v36, v39);
  v42 = &v65 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v40, v43);
  v46 = &v65 - v45;
  MEMORY[0x1EEE9AC00](v44, v47);
  v79 = &v65 - v48;
  v49 = 0;
  if (a2 > COERCE_DOUBLE(1))
  {
    sub_1C584EC20();
    sub_1C563D314();
    sub_1C584E970();
    v66 = v14;
    MEMORY[0x1C6949030](v80, v36);
    v65 = v31;
    v50 = *(v37 + 8);
    v50(v42, v36);
    v81 = xmmword_1C58679A0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAC8, &unk_1C5867AD0);
    sub_1C563D368(&qword_1EC16DAD0, &qword_1EC16DAC8, &unk_1C5867AD0);
    sub_1C584E9D0();
    v51 = v79;
    MEMORY[0x1C6949050](v30, v36);
    (*(v67 + 1))(v30, v69);
    v69 = v37 + 8;
    v67 = v50;
    v50(v46, v36);
    sub_1C5626E40(0, &qword_1EC16DAD8, 0x1E696B068);
    sub_1C584E750();
    (*(v68 + 16))(v35, v80, v65);
    sub_1C584E9B0();
    v52 = v66;
    (*(v37 + 16))(v66, v51, v36);
    (*(v37 + 56))(v52, 0, 1, v36);
    v53 = v73;
    sub_1C584E730();
    v54 = objc_opt_self();
    v55 = [v54 watts];
    v56 = v72;
    sub_1C584E700();
    v57 = [v54 kilowatts];
    v58 = v76;
    v59 = v78;
    sub_1C584E770();

    v60 = *(v77 + 8);
    v60(v56, v59);
    sub_1C584E710();
    if (v61 >= 0.1)
    {
      v62 = v75;
      v63 = v53;
      v49 = sub_1C584E740();
      v60(v58, v59);
      (*(v74 + 8))(v63, v62);
      v67(v79, v36);
    }

    else
    {
      v60(v58, v59);
      (*(v74 + 8))(v53, v75);
      v67(v79, v36);
      return 0;
    }
  }

  return v49;
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

unint64_t sub_1C563C8DC()
{
  result = qword_1EC16DA78;
  if (!qword_1EC16DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DA78);
  }

  return result;
}

unint64_t sub_1C563C930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170BA0, &unk_1C5867A90);
    v3 = sub_1C584FD50();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C563D294(v4, &v11);
      v5 = v11;
      result = sub_1C5637504(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C563D304(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1C563CA38(uint64_t a1)
{
  v2 = sub_1C584E8B0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v5 = objc_opt_self();
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v7 = [v5 localizedStringFromNumber:v6 numberStyle:0];

  if (!v7)
  {
    sub_1C584F660();
    v7 = sub_1C584F630();
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

  result = [objc_opt_self() _mapkit_preferredFontForTextStyleInTableViewCell_];
  if (result)
  {
    v10 = result;
    type metadata accessor for RealTimeEVChargerUtility();
    v11 = [objc_opt_self() configurationWithFont_];

    v12 = static RealTimeEVChargerUtility.evPlugIcon(configuration:)(v11);
    if (v12)
    {
      v13 = [objc_opt_self() textAttachmentWithImage_];
      v14 = [objc_opt_self() attributedStringWithAttachment_];

      if (v14)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1C58679B0;
        *(v15 + 32) = v8;
        sub_1C5626E40(0, &unk_1EC170B70, 0x1E696AAB0);
        v16 = v8;
        sub_1C584E840();
        *(v15 + 40) = sub_1C584FA40();
        *(v15 + 48) = v14;
        v17 = objc_opt_self();
        v18 = v14;
        v19 = sub_1C584F750();

        v20 = [v17 buildAttributedDisplayStringForComponents:v19 reverseIfRTLLayout:1];

        v21 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA80, &qword_1C5867A80);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C5867900;
        v23 = *MEMORY[0x1E69DB650];
        *(inited + 32) = *MEMORY[0x1E69DB650];
        v24 = objc_opt_self();
        v25 = v23;
        v26 = [v24 systemGrayColor];
        *(inited + 64) = sub_1C5626E40(0, &unk_1EC170AD0, 0x1E69DC888);
        *(inited + 40) = v26;
        sub_1C563C930(inited);
        swift_setDeallocating();
        sub_1C563D218(inited + 32);
        type metadata accessor for Key(0);
        sub_1C563D7F0(&qword_1EC170AE0, type metadata accessor for Key);
        v27 = sub_1C584F5C0();

        v8 = v21;
        [v8 addAttributes:v27 range:{0, objc_msgSend(v8, sel_length)}];
      }
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C563CE80(void *a1)
{
  if ([a1 realtimeStatus])
  {
    v2 = objc_opt_self();
    result = [a1 availableNumberOfChargers];
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = result;
      result = [a1 totalNumberOfChargers];
      if ((result & 0x8000000000000000) == 0)
      {
        v5 = [v2 localizedStringForAvailableChargers:v4 outOfTotal:result radiowavesSymbolScale:2];
        v6 = [a1 availableNumberOfChargers];
        v7 = objc_opt_self();
        v8 = &selRef_systemGrayColor;
        if (v6)
        {
          v8 = &selRef_systemGreenColor;
        }

        v9 = [v7 *v8];
        v10 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA80, &qword_1C5867A80);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C5867900;
        v12 = *MEMORY[0x1E69DB650];
        *(inited + 32) = *MEMORY[0x1E69DB650];
        *(inited + 64) = sub_1C5626E40(0, &unk_1EC170AD0, 0x1E69DC888);
        *(inited + 40) = v9;
        v13 = v12;
        v14 = v9;
        sub_1C563C930(inited);
        swift_setDeallocating();
        sub_1C563D218(inited + 32);
        type metadata accessor for Key(0);
        sub_1C563D7F0(&qword_1EC170AE0, type metadata accessor for Key);
        v15 = sub_1C584F5C0();

        v16 = v10;
        [v16 addAttributes:v15 range:{0, objc_msgSend(v16, sel_length)}];

        return v16;
      }
    }

    __break(1u);
    return result;
  }

  v17 = [a1 totalNumberOfChargers];

  return sub_1C563CA38(v17);
}

uint64_t sub_1C563D178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C563D1C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C563D218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA88, &qword_1C5867A88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C563D294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA88, &qword_1C5867A88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1C563D304(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1C563D314()
{
  result = qword_1EC16DAC0;
  if (!qword_1EC16DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DAC0);
  }

  return result;
}

uint64_t sub_1C563D368(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1C563D3B0()
{
  result = qword_1EC170BC0;
  if (!qword_1EC170BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170BC0);
  }

  return result;
}

uint64_t sub_1C563D404(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C563D454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1C563D4A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EVChargingRow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C563D508(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v29 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; ++i)
  {
    v28 = *i;
    v4 = *(i + 1);
    v5 = sub_1C5637404(v4);
    v7 = v1[2];
    v8 = (v6 & 1) == 0;
    v9 = v7 + v8;
    if (__OFADD__(v7, v8))
    {
      break;
    }

    v10 = v5;
    v11 = v6;
    v12 = v1[3];
    swift_bridgeObjectRetain_n();
    v13 = v28;
    if (v12 < v9)
    {
      sub_1C5637598(v9, 1);
      v1 = v29;
      v14 = sub_1C5637404(v4);
      if ((v11 & 1) != (v15 & 1))
      {
        goto LABEL_19;
      }

      v10 = v14;
    }

    if (v11)
    {

      v16 = v1[7];
      v17 = *(v16 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + 8 * v10) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_1C5637FF0(0, v17[2] + 1, 1, v17);
        *(v16 + 8 * v10) = v17;
      }

      v20 = v17[2];
      v19 = v17[3];
      v21 = v28;
      if (v20 >= v19 >> 1)
      {
        v22 = sub_1C5637FF0((v19 > 1), v20 + 1, 1, v17);
        v21 = v28;
        v17 = v22;
        *(v16 + 8 * v10) = v22;
      }

      v17[2] = v20 + 1;
      *&v17[2 * v20 + 4] = v21;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB30, &qword_1C5867B28);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1C5867900;
      *(v23 + 32) = v28;
      v1[(v10 >> 6) + 8] |= 1 << v10;
      *(v1[6] + 8 * v10) = v4;
      *(v1[7] + 8 * v10) = v23;
      v24 = v1[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v1[2] = v26;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB10, &qword_1C5867B10);
  result = sub_1C584FE00();
  __break(1u);
  return result;
}

uint64_t sub_1C563D730(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for GEOEVChargerPlugConnectorType(0);
  v4 = v3;
  v5 = sub_1C563D7F0(&qword_1EC16DB28, type metadata accessor for GEOEVChargerPlugConnectorType);
  result = MEMORY[0x1C6949FF0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1C563A1D8(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1C563D7F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for WatchAsyncImageViewModel()
{
  result = qword_1EC17B550;
  if (!qword_1EC17B550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C563D9A4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 40) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 48) = 0;
  sub_1C584EF70();
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  return v7;
}

uint64_t WatchAsyncImageViewModel.deinit()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC6MapsUI24WatchAsyncImageViewModel___observationRegistrar;
  v3 = sub_1C584EF80();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t WatchAsyncImageViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC6MapsUI24WatchAsyncImageViewModel___observationRegistrar;
  v3 = sub_1C584EF80();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C563DB30()
{
  result = sub_1C584EF80();
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_1EC16E5F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EC16E5F0);
    }
  }
}

uint64_t StackLayout.Distribution.hash(into:)()
{
  v1 = *v0 >> 29;
  if (v1 <= 2)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = 3;
      }

      else
      {
        v2 = 4;
      }
    }

    else
    {
      v2 = 2;
    }

    goto LABEL_13;
  }

  if (*v0 >> 29 <= 4)
  {
    if (v1 == 3)
    {
      v2 = 5;
    }

    else
    {
      v2 = 6;
    }

    goto LABEL_13;
  }

  if (v1 == 5)
  {
    v2 = 7;
LABEL_13:
    MEMORY[0x1C694A560](v2);
    sub_1C584FEC0();
    return sub_1C584FED0();
  }

  return MEMORY[0x1C694A560](*v0 != 3221225472);
}

uint64_t StackLayout.Alignment.hash(into:)()
{
  v1 = *v0 >> 30;
  if (v1 <= 1)
  {
    if (v1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    goto LABEL_7;
  }

  if (v1 == 2)
  {
    v2 = 3;
LABEL_7:
    MEMORY[0x1C694A560](v2);
    sub_1C584FEC0();
    return sub_1C584FED0();
  }

  return MEMORY[0x1C694A560](0);
}

uint64_t sub_1C563DE68(void (*a1)(void *))
{
  v4[9] = *v1;
  sub_1C584FEA0();
  a1(v4);
  return sub_1C584FEF0();
}

uint64_t sub_1C563DED4(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6[9] = *v3;
  sub_1C584FEA0();
  a3(v6);
  return sub_1C584FEF0();
}

uint64_t sub_1C563DF44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v7[9] = *v4;
  sub_1C584FEA0();
  a4(v7);
  return sub_1C584FEF0();
}

uint64_t sub_1C563DF9C()
{
  v1 = *v0;
  sub_1C584FEA0();
  if (v1 >> 1 == 1610612735)
  {
    v2 = 2;
  }

  else
  {
    if (v1 >> 1 != 0x7FFFFFFF)
    {
      MEMORY[0x1C694A560](1);
      StackLayout.Alignment.hash(into:)();
      return sub_1C584FEF0();
    }

    v2 = 0;
  }

  MEMORY[0x1C694A560](v2);
  return sub_1C584FEF0();
}

uint64_t sub_1C563E028()
{
  v1 = *v0 >> 1;
  if (v1 == 1610612735)
  {
    v2 = 2;
    return MEMORY[0x1C694A560](v2);
  }

  if (v1 == 0x7FFFFFFF)
  {
    v2 = 0;
    return MEMORY[0x1C694A560](v2);
  }

  MEMORY[0x1C694A560](1);
  return StackLayout.Alignment.hash(into:)();
}

uint64_t sub_1C563E0AC()
{
  v1 = *v0;
  sub_1C584FEA0();
  if (v1 >> 1 == 1610612735)
  {
    v2 = 2;
  }

  else
  {
    if (v1 >> 1 != 0x7FFFFFFF)
    {
      MEMORY[0x1C694A560](1);
      StackLayout.Alignment.hash(into:)();
      return sub_1C584FEF0();
    }

    v2 = 0;
  }

  MEMORY[0x1C694A560](v2);
  return sub_1C584FEF0();
}

uint64_t sub_1C563E134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  if ((sub_1C584F620() & 1) == 0)
  {
    return 0;
  }

  v7 = _s19GenericArrangedItemVMa();
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + v7[9]), *(a2 + v7[9])), vceqq_f64(*(a1 + v7[9] + 16), *(a2 + v7[9] + 16))))) & 1) == 0)
  {
    return 0;
  }

  v8 = v7[10];
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  if (v9 != *v11 || v10 != v11[1])
  {
    return 0;
  }

  v14 = v7[11];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);
  if (v15 >> 1 == 1610612735)
  {
    if ((v16 & 0xFFFFFFFE) == 0xBFFFFFFELL)
    {
      return 1;
    }
  }

  else if (v15 >> 1 == 0x7FFFFFFF)
  {
    if ((~v16 & 0xFFFFFFFE) == 0)
    {
      return 1;
    }
  }

  else if (((v16 >> 1) | 0x20000000) != 0x7FFFFFFF)
  {
    v17 = v16;
    v18 = v15;
    if (_s6MapsUI11StackLayoutC9AlignmentO2eeoiySbAE_AEtFZ_0(&v18, &v17))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C563E25C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1C584F5F0();
  v6 = (v2 + *(a2 + 36));
  v10 = *v6;
  v12 = v6[1];
  type metadata accessor for NSDirectionalEdgeInsets(0);
  sub_1C563EC60(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets);
  sub_1C584F5F0();
  v11 = *(v2 + *(a2 + 40));
  type metadata accessor for UIOffset(0);
  sub_1C563EC60(&qword_1EC16E950, type metadata accessor for UIOffset);
  sub_1C584F5F0();
  v7 = *(v2 + *(a2 + 44)) >> 1;
  if (v7 == 1610612735)
  {
    v8 = 2;
    return MEMORY[0x1C694A560](v8);
  }

  if (v7 == 0x7FFFFFFF)
  {
    v8 = 0;
    return MEMORY[0x1C694A560](v8);
  }

  MEMORY[0x1C694A560](1);
  return StackLayout.Alignment.hash(into:)();
}

uint64_t sub_1C563E3C4(uint64_t a1)
{
  sub_1C584FEA0();
  sub_1C563E25C(v3, a1);
  return sub_1C584FEF0();
}

double sub_1C563E40C()
{
  result = *MEMORY[0x1E69DC5C0];
  v1 = *(MEMORY[0x1E69DC5C0] + 8);
  v2 = *(MEMORY[0x1E69DC5C0] + 16);
  v3 = *(MEMORY[0x1E69DC5C0] + 24);
  return result;
}

double sub_1C563E420()
{
  result = *MEMORY[0x1E69DE258];
  v1 = *(MEMORY[0x1E69DE258] + 8);
  return result;
}

int *sub_1C563E43C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>)
{
  v17 = *a2;
  (*(*(a3 - 8) + 32))(a4, a1);
  result = _s19GenericArrangedItemVMa();
  v19 = (a4 + result[9]);
  *v19 = a5;
  v19[1] = a6;
  v19[2] = a7;
  v19[3] = a8;
  v20 = (a4 + result[10]);
  *v20 = a9;
  v20[1] = a10;
  *(a4 + result[11]) = v17;
  return result;
}

uint64_t sub_1C563E510(uint64_t a1, uint64_t a2)
{
  sub_1C584FEA0();
  sub_1C563E25C(v4, a2);
  return sub_1C584FEF0();
}

uint64_t sub_1C563E56C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *a2 = result;
  *(a2 + 4) = a3;
  return result;
}

uint64_t StackLayout.FlexibleSpacingOptions.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1C584FEC0();
  return sub_1C584FED0();
}

uint64_t StackLayout.FlexibleSpacingOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1C584FEA0();
  sub_1C584FEC0();
  sub_1C584FED0();
  return sub_1C584FEF0();
}

uint64_t sub_1C563E658()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1C584FEC0();
  return sub_1C584FED0();
}

uint64_t sub_1C563E6A4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1C584FEA0();
  sub_1C584FEC0();
  sub_1C584FED0();
  return sub_1C584FEF0();
}

uint64_t sub_1C563E740(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1C6949F80](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1C563E794(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1C6949F90](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

float sub_1C563E814@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1C563E894()
{
  v2 = *v0;
  sub_1C563EC60(&unk_1EC16FEA0, type metadata accessor for UILayoutPriority);
  sub_1C563EC60(&unk_1EC16DBB0, type metadata accessor for UILayoutPriority);
  return sub_1C584FD60();
}

uint64_t _s6MapsUI11StackLayoutC12DistributionO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 29;
  if (v4 <= 2)
  {
    if (!v4)
    {
      if ((v3 & 0xE0000000) == 0)
      {
        return (*(&v2 + 1) == COERCE_FLOAT(HIDWORD(*a2))) & ~(v3 ^ v2);
      }

      return 0;
    }

    if (v4 == 1)
    {
      if ((*a2 & 0xE0000000) != 0x20000000)
      {
        return 0;
      }
    }

    else if ((*a2 & 0xE0000000) != 0x40000000)
    {
      return 0;
    }

    return (*(&v2 + 1) == COERCE_FLOAT(HIDWORD(*a2))) & (v3 ^ v2 ^ 1);
  }

  if (*a1 >> 29 > 4)
  {
    if (v4 == 5)
    {
      if ((*a2 & 0xE0000000) != 0xA0000000)
      {
        return 0;
      }

      return (*(&v2 + 1) == COERCE_FLOAT(HIDWORD(*a2))) & (v3 ^ v2 ^ 1);
    }

    if (v2 == 3221225472)
    {
      if (v3 == 3221225472)
      {
        return 1;
      }
    }

    else if (v3 == 3221225473)
    {
      return 1;
    }
  }

  else
  {
    if (v4 == 3)
    {
      if ((*a2 & 0xE0000000) != 0x60000000)
      {
        return 0;
      }

      return (*(&v2 + 1) == COERCE_FLOAT(HIDWORD(*a2))) & (v3 ^ v2 ^ 1);
    }

    if ((*a2 & 0xE0000000) == 0x80000000)
    {
      return (*(&v2 + 1) == COERCE_FLOAT(HIDWORD(*a2))) & (v3 ^ v2 ^ 1);
    }
  }

  return 0;
}

uint64_t _s6MapsUI11StackLayoutC9AlignmentO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 30;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if ((*a2 & 0xC0000000) == 0x80000000)
      {
        return (*(&v2 + 1) == COERCE_FLOAT(HIDWORD(*a2))) & (v3 ^ v2 ^ 1);
      }
    }

    else if (v3 == 3221225472)
    {
      return 1;
    }
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xC0000000) == 0)
      {
        return (*(&v2 + 1) == COERCE_FLOAT(HIDWORD(*a2))) & ~(v3 ^ v2);
      }

      return 0;
    }

    if ((*a2 & 0xC0000000) == 0x40000000)
    {
      return (*(&v2 + 1) == COERCE_FLOAT(HIDWORD(*a2))) & (v3 ^ v2 ^ 1);
    }
  }

  return 0;
}

uint64_t sub_1C563EB2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 1;
  if (v4 == 1610612735)
  {
    v3 = *a2 & 0xFFFFFFFELL;
    v5 = 3221225470;
    goto LABEL_6;
  }

  if (v4 == 0x7FFFFFFF)
  {
    return (~v3 & 0xFFFFFFFE) == 0;
  }

  if (((v3 >> 1) | 0x20000000) != 0x7FFFFFFF)
  {
    v7 = v2 >> 30;
    if (v2 >> 30 <= 1)
    {
      if (!v7)
      {
        return (v3 & 0xC0000000) == 0 && ((v3 ^ v2) & 1) == 0 && *(&v2 + 1) == *(&v3 + 1);
      }

      v8 = *a2 & 0xC0000000;
      v9 = 0x40000000;
LABEL_19:
      if (v8 != v9)
      {
        return 0;
      }

      v10 = HIDWORD(*a2);
      return *(&v2 + 1) == *(&v3 + 1) && ((v3 ^ v2) & 1) == 0;
    }

    if (v7 == 2)
    {
      v8 = *a2 & 0xC0000000;
      v9 = 0x80000000;
      goto LABEL_19;
    }

    v5 = 3221225472;
LABEL_6:
    if (v3 == v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C563EC60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C563ECAC()
{
  result = qword_1EC16DB80;
  if (!qword_1EC16DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DB80);
  }

  return result;
}

unint64_t sub_1C563ED04()
{
  result = qword_1EC16DB88;
  if (!qword_1EC16DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DB88);
  }

  return result;
}

unint64_t sub_1C563ED5C()
{
  result = qword_1EC16DB90;
  if (!qword_1EC16DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DB90);
  }

  return result;
}

unint64_t sub_1C563EDD0()
{
  result = qword_1EC16DB98;
  if (!qword_1EC16DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DB98);
  }

  return result;
}

uint64_t _s12DistributionOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  if ((((*a1 >> 29) & 0x80000007 | (8 * ((*a1 >> 1) & 0xFFFFFFF))) ^ 0x7FFFFFFF) >= 0x7FFFFFF9)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*a1 >> 29) & 0x80000007 | (8 * ((*a1 >> 1) & 0xFFFFFFF))) ^ 0x7FFFFFFF;
  }

  return v3 + 1;
}

uint64_t _s12DistributionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = a2 - 2147483642;
    if (a3 > 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 2 * ((-a2 >> 3) & 0xFFFFFFF) - (a2 << 29);
    }
  }

  return result;
}

uint64_t sub_1C563EEE8(void *a1)
{
  if (*a1 >> 30 == 3)
  {
    return ((*a1 >> 31) & 0xFFFFFFFE | *a1 & 1) + 6;
  }

  else
  {
    return *a1 >> 29;
  }
}

unint64_t *sub_1C563EF1C(unint64_t *result, unsigned int a2)
{
  if (a2 < 6)
  {
    *result = *result & 0xFFFFFFFF00000001 | (a2 << 29);
  }

  else
  {
    *result = (a2 - 6) & 1 | ((a2 - 6) << 31) | 0xC0000000;
  }

  return result;
}

uint64_t _s9AlignmentOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = ((*a1 >> 30) & 0x80000003 | (4 * ((*a1 >> 1) & 0x1FFFFFFF))) ^ 0x7FFFFFFF;
  if (v3 >= 0x7FFFFFFC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s9AlignmentOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 2 * ((-a2 >> 2) & 0x1FFFFFFF) - (a2 << 30);
    }
  }

  return result;
}

uint64_t sub_1C563F028(void *a1)
{
  v1 = *a1 >> 30;
  if (v1 == 3)
  {
    return ((*a1 >> 31) & 0xFFFFFFFE | *a1 & 1) + 3;
  }

  else
  {
    return v1;
  }
}

unint64_t *sub_1C563F058(unint64_t *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFF00000001 | (a2 << 30);
  }

  else
  {
    *result = (a2 - 3) & 1 | ((a2 - 3) << 31) | 0xC0000000;
  }

  return result;
}

uint64_t _s13ItemAlignmentOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  if (((2 * *a1) & 0x7FFFFFFC) != 0)
  {
    v3 = 0x80000000 - ((2 * *a1) & 0x7FFFFFFC | (*a1 >> 30));
  }

  else
  {
    v3 = 0;
  }

  if (v3 >= 3)
  {
    return v3 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t _s13ItemAlignmentOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = ((2147483646 - a2) >> 1) & 0x3FFFFFFE | ((2147483646 - a2) << 30);
    }
  }

  return result;
}

uint64_t sub_1C563F160(_DWORD *a1)
{
  if (((2 * *a1) & 0x7FFFFFFC) != 0)
  {
    return 0x80000000 - ((2 * *a1) & 0x7FFFFFFC | (*a1 >> 30));
  }

  else
  {
    return 0;
  }
}

void *sub_1C563F184(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFC)
  {
    v2 = a2 - 2147483645;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 2 * ((-a2 >> 2) & 0x1FFFFFFF) - (a2 << 30);
  }

  *result = v2;
  return result;
}

void sub_1C563F1D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for NSDirectionalEdgeInsets(319);
    if (v3 <= 0x3F)
    {
      type metadata accessor for UIOffset(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C563F278(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFA)
  {
    v7 = 2147483642;
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

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (v5 >= 0x7FFFFFFA)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
    if (((2 * v17) & 0x7FFFFFFC) != 0)
    {
      v18 = 0x80000000 - ((2 * v17) & 0x7FFFFFFC | (v17 >> 30));
    }

    else
    {
      v18 = 0;
    }

    if (v18 >= 3)
    {
      return v18 - 2;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1C563F3F4(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFA)
  {
    v7 = 2147483642;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
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

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 <= 0x7FFFFFF9)
      {
        v19 = ((((((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
        if (a2 >= 0x7FFFFFFB)
        {
          *v19 = 0;
          *v19 = a2 - 2147483643;
        }

        else
        {
          *v19 = ((2147483646 - a2) >> 1) & 0x3FFFFFFE | ((2147483646 - a2) << 30);
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t _s22FlexibleSpacingOptionsVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s22FlexibleSpacingOptionsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void *PlacePhotoObfuscationView.attributedText.getter()
{
  v1 = OBJC_IVAR___MUPlacePhotoObfuscationView_attributedText;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PlacePhotoObfuscationView.attributedText.setter(void *a1)
{
  v3 = OBJC_IVAR___MUPlacePhotoObfuscationView_attributedText;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  [*(v1 + OBJC_IVAR___MUPlacePhotoObfuscationView_label) setAttributedText_];
}

id sub_1C563F934@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MUPlacePhotoObfuscationView_attributedText;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_1C563F99C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MUPlacePhotoObfuscationView_attributedText;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  return [*(v3 + OBJC_IVAR___MUPlacePhotoObfuscationView_label) setAttributedText_];
}

void (*PlacePhotoObfuscationView.attributedText.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___MUPlacePhotoObfuscationView_attributedText;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1C563FAA4;
}

void sub_1C563FAA4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3[3] + OBJC_IVAR___MUPlacePhotoObfuscationView_label) setAttributedText_];
  }

  free(v3);
}

id PlacePhotoObfuscationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void PlacePhotoObfuscationView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR___MUPlacePhotoObfuscationView_attributedText] = 0;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v11 = OBJC_IVAR___MUPlacePhotoObfuscationView_label;
  *&v4[OBJC_IVAR___MUPlacePhotoObfuscationView_label] = v10;
  v12 = objc_opt_self();
  v13 = v10;
  v14 = [v12 whiteColor];
  [v13 setTextColor_];

  [*&v4[v11] setNumberOfLines_];
  v15 = [objc_opt_self() _effectWithBlurRadius_scale_];
  if (!v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  v17 = [v12 tertiaryLabelColor];
  v18 = objc_opt_self();
  v19 = [v18 effectCompositingColor:v17 withMode:0 alpha:0.3];

  if (!v19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C58682A0;
  *(v20 + 32) = v16;
  *(v20 + 40) = v19;
  sub_1C5626E40(0, &qword_1EC16DBD8, 0x1E69DD290);
  v43 = v16;
  v21 = v19;
  v22 = sub_1C584F750();

  v23 = [v18 effectCombiningEffects_];

  v24 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  *&v4[OBJC_IVAR___MUPlacePhotoObfuscationView_blurView] = v24;
  v44.receiver = v4;
  v44.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v44, sel_initWithFrame_, a1, a2, a3, a4);
  v26 = OBJC_IVAR___MUPlacePhotoObfuscationView_blurView;
  v27 = *&v25[OBJC_IVAR___MUPlacePhotoObfuscationView_blurView];
  v28 = v25;
  [v28 addSubview_];
  v29 = [*&v25[v26] contentView];
  [v29 addSubview_];

  type metadata accessor for StackLayout();
  v30 = *&v28[OBJC_IVAR___MUPlacePhotoObfuscationView_blurView];
  v31 = StackLayout.__allocating_init(container:axis:)(v30, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C5867970;
  v33 = *&v28[OBJC_IVAR___MUPlacePhotoObfuscationView_label];
  *(v32 + 32) = v33;
  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DC50, &qword_1C586A8F0);
  v35 = sub_1C584F750();

  [v31 setArrangedLayoutItems_];

  sub_1C563E578(v46);
  v36 = 0x40000000;
  if (v46[0])
  {
    v36 = 1073741825;
  }

  v45 = v36 | (v47 << 32);
  v37 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v31) + 0x120))(&v45);
  sub_1C563E578(v46);
  v38 = 0x20000000;
  if (v46[0])
  {
    v38 = 536870913;
  }

  v45 = v38 | (v47 << 32);
  (*((*v37 & *v31) + 0xC0))(&v45);
  type metadata accessor for EdgeLayout();
  swift_unknownObjectRetain();
  v39 = EdgeLayout.__allocating_init(item:container:)(v30, v28);
  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1C58682A0;
  *(v40 + 32) = v31;
  *(v40 + 40) = v39;
  v41 = v31;
  v42 = v39;
  static NSLayoutConstraint.activate(layouts:)(v40);
}

id PlacePhotoObfuscationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C56401C4()
{
  v1 = (v0 + OBJC_IVAR____TtC6MapsUI37TransitDeparturesContainerSectionView_departuresContainer);
  swift_beginAccess();
  v2 = v1[3];
  if (v2)
  {
    v3 = v1[4];
    v4 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v5 = *(v2 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x1EEE9AC00](v4, v4);
    v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = (*(v3 + 24))(v2, v3);
    (*(v5 + 8))(v8, v2);
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v11 = v9[2];
      if (v11)
      {
        v43 = v1;
        v53 = MEMORY[0x1E69E7CC0];
        sub_1C584FCC0();
        v45 = v9[2];
        v12 = (v9 + 4);
        type metadata accessor for TransitDepartureRowView();
        v13 = 0;
        while (v45 != v13)
        {
          if (v13 >= v9[2])
          {
            goto LABEL_21;
          }

          v14 = (v13 + 1);
          sub_1C5633310(v12, &v50);
          *&v47 = v13;
          sub_1C5632F90(&v50, &v47 + 8);
          sub_1C5633310(&v47 + 8, v46);
          [sub_1C5679C1C(v46) setHandlesHighlighting_];
          sub_1C5625230(&v47, &qword_1EC16DD40, qword_1C5868378);
          sub_1C584FCA0();
          v15 = *(v53 + 16);
          sub_1C584FCD0();
          sub_1C584FCE0();
          sub_1C584FCB0();
          v12 += 40;
          v13 = v14;
          if (v11 == v14)
          {

            v10 = v53;
            v1 = v43;
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

LABEL_11:
  v54 = v10;
  v11 = [objc_allocWithZone(MEMORY[0x1E696F3C0]) initWithFrame_];
  v9 = [objc_allocWithZone(MEMORY[0x1E696F3C8]) init];
  v16 = v1[3];
  if (v16)
  {
    v17 = v1[4];
    v18 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v19 = v1;
    v20 = *(v16 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x1EEE9AC00](v18, v18);
    v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23);
    (*(v17 + 16))(v16, v17);
    (*(v20 + 8))(v23, v16);
    v1 = v19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD38, &qword_1C5868370);
  v24 = sub_1C584F750();

  [v9 setLabelItems_];

  v25 = v1[3];
  if (v25)
  {
    v26 = v1[4];
    v27 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v45 = &v43;
    v28 = *(v25 - 8);
    v29 = *(v28 + 64);
    MEMORY[0x1EEE9AC00](v27, v27);
    v31 = v9;
    v32 = v10;
    v33 = v11;
    v34 = v1;
    v35 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v35);
    (*(v26 + 8))(v25, v26);
    v36 = v35;
    v1 = v34;
    v11 = v33;
    v10 = v32;
    v9 = v31;
    (*(v28 + 8))(v36, v25);
  }

  v37 = sub_1C584F630();

  [v9 setTitleText_];

  sub_1C5640898(v1, &v47);
  if (v48)
  {
    sub_1C5632F90(&v47, &v49);
    v38 = v51;
    v39 = v52;
    __swift_project_boxed_opaque_existential_1(&v49, v51);
    [v9 setShowIncidentsIcon_];
    __swift_destroy_boxed_opaque_existential_1(&v49);
  }

  else
  {
    sub_1C5625230(&v47, &qword_1EC16DC68, &unk_1C5868300);
    [v9 setShowIncidentsIcon_];
  }

  [v11 setViewModel_];
  if (!(v10 >> 62))
  {
    goto LABEL_19;
  }

LABEL_22:
  if ((sub_1C584FB90() & 0x8000000000000000) == 0)
  {
LABEL_19:
    v40 = v11;
    sub_1C5641054(0, 0, v40);

    v41 = v44;
    [v44 setDelegate_];
    sub_1C5626E40(0, &qword_1EC16D000, 0x1E696F438);
    v42 = sub_1C584F750();

    [v41 setRowViews_];

    return;
  }

  __break(1u);
}

uint64_t sub_1C5640898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DC68, &unk_1C5868300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5640908(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI37TransitDeparturesContainerSectionView_departuresContainer;
  swift_beginAccess();
  sub_1C5640984(a1, v1 + v3);
  swift_endAccess();
  sub_1C56401C4();
  return sub_1C5625230(a1, &qword_1EC16DC68, &unk_1C5868300);
}

uint64_t sub_1C5640984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DC68, &unk_1C5868300);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_1C5640BEC(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithShowsSeparators_];
}

id _s6MapsUI23MUPlaceActionDispatcherCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5640E88(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1C584FB90();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1C584FC80();
  *v1 = result;
  return result;
}

char *sub_1C5640F28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1C5626E40(0, &qword_1EC16D000, 0x1E696F438);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1C584FB90();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1C584FB90();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1C5641054(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C584FB90();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_1C584FB90();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1C5640E88(result);

  return sub_1C5640F28(v6, v5, 1, v3);
}

void sub_1C5641140(void *a1)
{
  type metadata accessor for TransitDepartureRowView();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = objc_allocWithZone(MUPresentationOptions);
    v6 = a1;
    v7 = [v5 init];
    [v7 setSourceView_];
    [v6 frame];
    [v7 setSourceRect_];
    v8 = v1 + OBJC_IVAR____TtC6MapsUI37TransitDeparturesContainerSectionView_rowFeedbackDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v11 = OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_model;
      swift_beginAccess();
      sub_1C5633310(v4 + v11, v12);
      (*(v9 + 8))(v1, v12, v7, ObjectType, v9);

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {
    }
  }
}

uint64_t sub_1C56412D8()
{
  v1 = v0 + OBJC_IVAR____TtC6MapsUI29TransitConnectionsSectionView_connectionsDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1C5641328(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC6MapsUI29TransitConnectionsSectionView_connectionsDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C5641394(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6MapsUI29TransitConnectionsSectionView_connectionsDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C5634780;
}

uint64_t sub_1C5641434()
{
  v1 = OBJC_IVAR____TtC6MapsUI29TransitConnectionsSectionView_connectionViewModels;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

void sub_1C564147C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI29TransitConnectionsSectionView_connectionViewModels;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  sub_1C5641730();
}

void (*sub_1C56414D8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C564153C;
}

void sub_1C564153C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_1C5641730();
  }
}

void sub_1C5641730()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1C584FCC0();
    type metadata accessor for TransitConnectionRowView();
    v3 = 32;
    do
    {
      v4 = *(v1 + v3);
      v5 = swift_unknownObjectRetain_n();
      [sub_1C5776904(v5) setHandlesHighlighting_];
      swift_unknownObjectRelease();
      sub_1C584FCA0();
      v6 = *(v8 + 16);
      sub_1C584FCD0();
      sub_1C584FCE0();
      sub_1C584FCB0();
      v3 += 8;
      --v2;
    }

    while (v2);

    if (!(v8 >> 62))
    {
      goto LABEL_5;
    }
  }

  else
  {

    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_5:

      sub_1C584FDD0();
      sub_1C5641BC8();
      goto LABEL_6;
    }
  }

  sub_1C5641BC8();

  sub_1C584FD10();

LABEL_6:

  sub_1C5641BC8();
  v7 = sub_1C584F750();

  [v0 setRowViews_];
}

id sub_1C5641980()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransitConnectionsSectionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C5641A80(void *a1)
{
  type metadata accessor for TransitConnectionRowView();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
    v12 = a1;
    if (v5())
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      v9 = OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_viewModel;
      swift_beginAccess();
      v10 = *(v4 + v9);
      v11 = *(v7 + 8);
      swift_unknownObjectRetain();
      v11(v1, v10, ObjectType, v7);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

unint64_t sub_1C5641BC8()
{
  result = qword_1EC16D000;
  if (!qword_1EC16D000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC16D000);
  }

  return result;
}

void *WatchPlaceHeaderViewModel.__allocating_init(placeItem:imageManager:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  v4[4] = 0;
  v4[5] = 0;
  v4[2] = a1;
  v5 = objc_allocWithZone(MUPlaceItemHeaderViewModel);
  swift_unknownObjectRetain();
  v4[3] = [v5 initWithPlaceItem:a1 imageManager:a2];
  sub_1C5641D20();
  swift_unknownObjectRelease();

  return v4;
}

void *WatchPlaceHeaderViewModel.init(placeItem:imageManager:)(uint64_t a1, void *a2)
{
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = a1;
  v5 = objc_allocWithZone(MUPlaceItemHeaderViewModel);
  swift_unknownObjectRetain();
  v2[3] = [v5 initWithPlaceItem:a1 imageManager:a2];
  sub_1C5641D20();
  swift_unknownObjectRelease();

  return v2;
}

id sub_1C5641D20()
{
  v1 = v0;
  v2 = *(v0 + 24);
  result = [v2 supportsCoverPhoto];
  if (result)
  {
    type metadata accessor for WatchAsyncImageViewModel();
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = sub_1C563D9A4(sub_1C56429D4, v4);
    swift_beginAccess();
    v6 = *(v0 + 32);
    *(v0 + 32) = v5;

    result = [v2 supportsLogo];
    if (result)
    {
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = sub_1C563D9A4(sub_1C5642A04, v7);
      swift_beginAccess();
      v9 = *(v1 + 40);
      *(v1 + 40) = v8;
    }
  }

  return result;
}

void sub_1C5641E50(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a3;
  v8(a2, a3, a4);
}

uint64_t WatchPlaceHeaderViewModel.coverPhotoViewModel.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t WatchPlaceHeaderViewModel.coverPhotoViewModel.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t WatchPlaceHeaderViewModel.logoViewModel.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t WatchPlaceHeaderViewModel.logoViewModel.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

id WatchPlaceHeaderViewModel.enclosingPlaceViewModel.getter()
{
  v1 = [*(v0 + 24) enclosingPlaceViewModel];

  return v1;
}

id WatchPlaceHeaderViewModel.secondaryLabel.getter()
{
  if (([*(v0 + 16) options] & 2) != 0)
  {
    return 0;
  }

  result = [*(v0 + 24) placeSecondaryName];
  if (result)
  {
    v2 = result;
    v3 = sub_1C584F660();

    return v3;
  }

  return result;
}

uint64_t WatchPlaceHeaderViewModel.titleText.getter()
{
  v1 = [*(v0 + 16) name];
  if (!v1)
  {
    v1 = [*(v0 + 24) placeName];
  }

  v2 = v1;
  v3 = sub_1C584F660();

  return v3;
}

uint64_t WatchPlaceHeaderViewModel.transitLabelItems.getter()
{
  v1 = [*(v0 + 24) transitLabelItems];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = sub_1C584F770();

  return v3;
}

uint64_t WatchPlaceHeaderViewModel.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return v0;
}

uint64_t WatchPlaceHeaderViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5642298()
{
  v1 = *v0;
  v2 = [*(*v0 + 16) name];
  if (!v2)
  {
    v2 = [*(v1 + 24) placeName];
  }

  v3 = v2;
  v4 = sub_1C584F660();

  return v4;
}

uint64_t sub_1C5642310()
{
  v1 = [*(*v0 + 24) transitLabelItems];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = sub_1C584F770();

  return v3;
}

id sub_1C5642378()
{
  v1 = [*(*v0 + 24) enclosingPlaceViewModel];

  return v1;
}

uint64_t sub_1C56423D8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
}

uint64_t sub_1C564241C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 40);
}

uint64_t sub_1C56424E4(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1C5642534(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id sub_1C5642670()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchMockedPlaceHeaderViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5642A34(uint64_t a1, uint64_t a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + 24);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    aBlock[4] = a7;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5641E50;
    aBlock[3] = a8;
    v20 = _Block_copy(aBlock);
    v21 = v18;

    [v21 *a9];
    _Block_release(v20);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C5642B9C(void *a1, id a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (a2)
  {
    v6 = a2;
    v4(a2, 1);
    v7 = a2;

LABEL_4:

    return;
  }

  if (a1)
  {
    v9 = a1;
    v4(a1, 0);
    v7 = v9;

    goto LABEL_4;
  }
}

id MUPlaceActionDispatcher.actionManager.getter()
{
  v1 = OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_actionManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MUPlaceActionDispatcher.actionManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_actionManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MUPlaceActionDispatcher.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5642F80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1C5642FDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

void (*MUPlaceActionDispatcher.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C56430D0;
}

void sub_1C56430D0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id MUPlaceActionDispatcher.__allocating_init(actionManager:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_actionManager] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MUPlaceActionDispatcher.init(actionManager:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_actionManager] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MUPlaceActionDispatcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *MUPlaceActionFeedbackEnvironment.presentationOptions.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6MapsUI32MUPlaceActionFeedbackEnvironment_presentationOptions);
  v2 = v1;
  return v1;
}

id sub_1C56433CC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC6MapsUI32MUPlaceActionFeedbackEnvironment_presentationOptions] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1C5643490(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v10 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x50))(v85);
  LOBYTE(v86) = 53;
  sub_1C56441DC();
  sub_1C584F730();
  v11 = sub_1C584F730();
  if (aBlock != *&v87[0])
  {
    (*((*v10 & *a1) + 0x50))(&aBlock, v11);
    v18 = aBlock;
    if (aBlock > 5u)
    {
      if (aBlock > 8u)
      {
        if (aBlock != 9)
        {
          if (aBlock == 13)
          {
            v18 = 11;
          }

          else
          {
            if (aBlock != 14)
            {
              goto LABEL_30;
            }

            v18 = 12;
          }
        }

        goto LABEL_42;
      }

      if (aBlock == 6 || aBlock == 7)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (aBlock > 2u)
      {
        if (aBlock != 3 && aBlock != 4 && aBlock != 5)
        {
          goto LABEL_30;
        }

LABEL_42:
        v27 = OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_actionManager;
        swift_beginAccess();
        v23 = [*(v5 + v27) actionItemForButtonType_];
        if (!v23)
        {
          goto LABEL_55;
        }

        goto LABEL_43;
      }

      if (aBlock == 1)
      {
        type metadata accessor for MUPlaceActionDispatcher.AddToGuidesAction();
        v26 = swift_dynamicCastClass();
        if (!v26 || (*(v26 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher17AddToGuidesAction_isFavoriteGuide) & 1) == 0)
        {
          v18 = 1;
          goto LABEL_42;
        }
      }

      else if (aBlock == 2)
      {
        type metadata accessor for MUPlaceActionDispatcher.ReportAnIssueAction();
        v19 = swift_dynamicCastClass();
        if (v19)
        {
          if (!*(v19 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19ReportAnIssueAction_rapType))
          {
            v18 = 2;
            goto LABEL_42;
          }
        }
      }
    }

LABEL_30:
    v20 = *((*v10 & *a1) + 0x50);
    v20(v85);
    LOBYTE(v86) = 33;
    sub_1C584F730();
    v21 = sub_1C584F730();
    if (aBlock == *&v87[0])
    {
      v22 = [objc_opt_self() actionItemWithType_];
    }

    else
    {
      (v20)(v85, v21);
      LOBYTE(v86) = 48;
      sub_1C584F730();
      sub_1C584F730();
      if (aBlock != *&v87[0])
      {
        type metadata accessor for MUPlaceActionDispatcher.OfflineDownloadAction();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_55;
        }

        v24 = a1;
        sub_1C570750C(&aBlock);
        if (aBlock == 11)
        {
          v25 = [objc_opt_self() actionItemWithType_];
        }

        else
        {
          sub_1C570750C(&aBlock);
          v50 = aBlock;
          v51 = objc_opt_self();
          v25 = v50 == 12 ? [v51 actionItemWithType_] : objc_msgSend(v51, sel_actionItemWithType_, 34);
        }

        v23 = v25;

        if (!v23)
        {
LABEL_55:
          type metadata accessor for MUPlaceActionDispatcher.MorePlacesAction();
          v52 = swift_dynamicCastClass();
          if (!v52)
          {
            type metadata accessor for MUPlaceActionDispatcher.OpenAppClipAction();
            v63 = swift_dynamicCastClass();
            if (v63)
            {
              v64 = v63;
              swift_beginAccess();
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v66 = Strong;
                v67 = *(v64 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher17OpenAppClipAction_quickLink);
                v68 = swift_allocObject();
                *(v68 + 16) = a3;
                *(v68 + 24) = a4;
                v91 = sub_1C5646810;
                v92 = v68;
                *&aBlock = MEMORY[0x1E69E9820];
                *(&aBlock + 1) = 1107296256;
                v89 = sub_1C564453C;
                ObjectType = &block_descriptor_22;
                v69 = _Block_copy(&aBlock);
                v70 = a1;
                v71 = v67;
                sub_1C5633060(a3);

                [v66 openAppClipWithActionDispatcher:v5 quickLink:v71 completion:v69];
                swift_unknownObjectRelease();

                _Block_release(v69);
              }
            }

            else
            {
              type metadata accessor for MUPlaceActionDispatcher.OpenExtensionAction();
              v73 = swift_dynamicCastClass();
              if (!v73)
              {
                if (sub_1C5644590(a1, a2))
                {
                  if (!a3)
                  {
                    return;
                  }

                  v84 = 1;
                }

                else
                {
                  if (!a3)
                  {
                    return;
                  }

                  v84 = 0;
                }

                a3(v84);
                return;
              }

              v74 = v73;
              swift_beginAccess();
              v75 = swift_unknownObjectWeakLoadStrong();
              if (v75)
              {
                v76 = v75;
                v77 = *(v74 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19OpenExtensionAction_vendorId);
                v78 = *(v74 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19OpenExtensionAction_vendorId + 8);
                v79 = a1;

                v80 = sub_1C584F630();

                v81 = *(v74 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19OpenExtensionAction_source);
                v82 = swift_allocObject();
                *(v82 + 16) = a3;
                *(v82 + 24) = a4;
                v91 = sub_1C5646654;
                v92 = v82;
                *&aBlock = MEMORY[0x1E69E9820];
                *(&aBlock + 1) = 1107296256;
                v89 = sub_1C564453C;
                ObjectType = &block_descriptor_16;
                v83 = _Block_copy(&aBlock);
                sub_1C5633060(a3);

                [v76 openExtensionWithActionDispatcher:v5 vendorId:v80 source:v81 completion:v83];
                swift_unknownObjectRelease();
                _Block_release(v83);
              }
            }

            return;
          }

          v53 = v52;
          swift_beginAccess();
          v54 = swift_unknownObjectWeakLoadStrong();
          if (v54)
          {
            v55 = v54;
            v56 = *(v53 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher16MorePlacesAction_title);
            v57 = *(v53 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher16MorePlacesAction_title + 8);
            v58 = a1;

            v59 = sub_1C584F630();

            v60 = *(v53 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher16MorePlacesAction_relatedMapsIdentifier);
            sub_1C5626E40(0, &qword_1EC16CFF0, 0x1E696F280);

            v61 = sub_1C584F750();

            v62 = *(v53 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher16MorePlacesAction_originalMapsIdentifier);
            [v55 showSeeAllRelatedPlacesWithActionDispatcher:v5 title:v59 relatedMapItemIdentifiers:v61 originalMapItemIdentifier:v62];
            swift_unknownObjectRelease();

            if (!a3)
            {
LABEL_59:

              return;
            }
          }

          else
          {
            v72 = a1;
            if (!a3)
            {
              goto LABEL_59;
            }
          }

          a3(1);
          goto LABEL_59;
        }

LABEL_43:
        v28 = sub_1C564647C(MEMORY[0x1E69E7CC0]);
        v29 = *(a2 + OBJC_IVAR____TtC6MapsUI32MUPlaceActionFeedbackEnvironment_presentationOptions);
        if (v29)
        {
          v30 = [*(a2 + OBJC_IVAR____TtC6MapsUI32MUPlaceActionFeedbackEnvironment_presentationOptions) sourceView];
          if (v30)
          {
            v31 = v30;
            v32 = *MEMORY[0x1E696F118];
            v33 = sub_1C584F660();
            v35 = v34;
            ObjectType = sub_1C5626E40(0, &qword_1ED77E800, 0x1E69DD250);
            *&aBlock = v31;
            sub_1C563D304(&aBlock, v87);
            v36 = v31;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v86 = v28;
            sub_1C564611C(v87, v33, v35, isUniquelyReferenced_nonNull_native);

            v28 = v86;
          }

          v38 = [v29 sourceItem];
          if (v38)
          {
            v39 = v38;
            v40 = *MEMORY[0x1E696F110];
            v41 = sub_1C584F660();
            v43 = v42;
            ObjectType = swift_getObjectType();
            *&aBlock = v39;
            sub_1C563D304(&aBlock, v87);
            swift_unknownObjectRetain();
            v44 = swift_isUniquelyReferenced_nonNull_native();
            v86 = v28;
            sub_1C564611C(v87, v41, v43, v44);
            swift_unknownObjectRelease();

            v28 = v86;
          }
        }

        v45 = OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_actionManager;
        swift_beginAccess();
        v46 = *(v5 + v45);
        sub_1C5644230(v28);

        v47 = sub_1C584F5C0();

        v48 = swift_allocObject();
        *(v48 + 16) = a3;
        *(v48 + 24) = a4;
        v91 = sub_1C56465AC;
        v92 = v48;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v89 = sub_1C56444F8;
        ObjectType = &block_descriptor_0;
        v49 = _Block_copy(&aBlock);
        sub_1C5633060(a3);

        [v46 performAction:v23 options:v47 completion:v49];
        _Block_release(v49);

        return;
      }

      v22 = [objc_opt_self() actionItemWithType_];
    }

    v23 = v22;
    if (!v23)
    {
      goto LABEL_55;
    }

    goto LABEL_43;
  }

  type metadata accessor for MUPlaceActionDispatcher.CustomAction();
  v12 = swift_dynamicCastClassUnconditional();
  v13 = OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher12CustomAction_handlers;
  swift_beginAccess();
  v14 = *(v12 + v13);
  if (v14 >> 62)
  {
    v15 = sub_1C584FB90();
    if (!v15)
    {
      return;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v15; ++i)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1C694A320](i, v14);
      }

      else
      {
        v17 = *(v14 + 8 * i + 32);
        _Block_copy(v17);
      }

      v17[2](v17);
      _Block_release(v17);
    }
  }
}

unint64_t sub_1C56441DC()
{
  result = qword_1EC16D448;
  if (!qword_1EC16D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D448);
  }

  return result;
}

uint64_t sub_1C5644230(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD90, &unk_1C5868550);
    v2 = sub_1C584FD50();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1C56465F8(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1C563D304(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1C563D304(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1C563D304(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1C584FBD0();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
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
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1C563D304(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C56444F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1C564453C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1C5644590(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD98, &unk_1C5868560);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v209 - v8;
  type metadata accessor for MUPlaceActionDispatcher.InlineRapEntryAction();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    type metadata accessor for MUPlaceActionDispatcher.ReportAnIssueAction();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = *(v18 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19ReportAnIssueAction_rapType);
      if (v19 != 6)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          return 1;
        }

        v29 = Strong;
        v30 = a1;
        [v29 didSelectReportAnIssueTypeWithActionDispatcher:v2 issueType:v19];

        goto LABEL_5;
      }

      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (!v20)
      {
        return 1;
      }

      v21 = v20;
      v15 = a1;
      [v21 didSelectReportSomethingMissingWithActionDispatcher_];
      goto LABEL_4;
    }

    type metadata accessor for MUPlaceActionDispatcher.TappedPlaceAction();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      swift_beginAccess();
      v24 = swift_unknownObjectWeakLoadStrong();
      if (!v24)
      {
        return 1;
      }

      v25 = v24;
      v26 = *(v23 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher17TappedPlaceAction_mapItemIdentifier);
      v15 = a1;
      v27 = v26;
      [v25 openPlaceWithActionDispatcher:v2 mapItemIdentifier:v27];
      goto LABEL_15;
    }

    type metadata accessor for MUPlaceActionDispatcher.TappedPhotoAction();
    v31 = swift_dynamicCastClass();
    if (v31)
    {
      v32 = v31;
      swift_beginAccess();
      v33 = swift_unknownObjectWeakLoadStrong();
      if (!v33)
      {
        return 1;
      }

      v34 = v33;
      v35 = *(v32 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher17TappedPhotoAction_index);
      v15 = a1;
      v37 = sel_didTapPhotoWithActionDispatcher_index_;
      goto LABEL_24;
    }

    type metadata accessor for MUPlaceActionDispatcher.TappedAlbumAction();
    v38 = swift_dynamicCastClass();
    if (v38)
    {
      v39 = v38;
      swift_beginAccess();
      v40 = swift_unknownObjectWeakLoadStrong();
      if (!v40)
      {
        return 1;
      }

      v34 = v40;
      v35 = *(v39 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher17TappedAlbumAction_index);
      v15 = a1;
      v37 = sel_didTapAlbumWithActionDispatcher_index_;
LABEL_24:
      LODWORD(v36) = v35;
      [v34 v37];
      goto LABEL_4;
    }

    type metadata accessor for MUPlaceActionDispatcher.TappedMorePhotosAction();
    if (swift_dynamicCastClass())
    {
      swift_beginAccess();
      v41 = swift_unknownObjectWeakLoadStrong();
      if (!v41)
      {
        return 1;
      }

      v42 = sel_didTapPhotoWithActionDispatcher_index_;
      goto LABEL_31;
    }

    type metadata accessor for MUPlaceActionDispatcher.TappedYourPhotosAction();
    if (swift_dynamicCastClass())
    {
      swift_beginAccess();
      v41 = swift_unknownObjectWeakLoadStrong();
      if (!v41)
      {
        return 1;
      }

      v42 = sel_didTapAlbumWithActionDispatcher_index_;
LABEL_31:
      [v41 v42];
      goto LABEL_5;
    }

    type metadata accessor for MUPlaceActionDispatcher.TappedARPRatingAction();
    v43 = swift_dynamicCastClass();
    if (v43)
    {
      v44 = v43;
      swift_beginAccess();
      v45 = swift_unknownObjectWeakLoadStrong();
      if (!v45)
      {
        return 1;
      }

      v46 = v45;
      v47 = *(v44 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher21TappedARPRatingAction_ratingCategory);
      v48 = *(v44 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher21TappedARPRatingAction_ratingCategory + 8);
      v15 = a1;

      v27 = sub_1C584F630();

      LODWORD(v49) = *(v44 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher21TappedARPRatingAction_value);
      [v46 didSelectARPRatingWithActionDispatcher:v2 ratingCategory:v27 value:v49];
      goto LABEL_15;
    }

    type metadata accessor for MUPlaceActionDispatcher.TappedGuideAction();
    v50 = swift_dynamicCastClass();
    if (v50)
    {
      v51 = v50;
      swift_beginAccess();
      v52 = swift_unknownObjectWeakLoadStrong();
      if (!v52)
      {
        return 1;
      }

      v53 = v52;
      v54 = *(v51 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher17TappedGuideAction_mapItemIdentifier);
      v15 = a1;
      v27 = v54;
      [v53 didSelectFeaturedGuideWithActionDispatcher:v2 mapItemIdentifier:v27];
LABEL_15:

      goto LABEL_4;
    }

    type metadata accessor for MUPlaceActionDispatcher.TappedURLAction(0);
    v55 = swift_dynamicCastClass();
    if (v55)
    {
      v56 = v55;
      swift_beginAccess();
      v57 = v2;
      v58 = swift_unknownObjectWeakLoadStrong();
      if (!v58)
      {
        return 1;
      }

      v59 = v58;
      v15 = a1;
      v60 = sub_1C584EA20();
      [v59 openURLWithActionDispatcher:v57 url:v60 embeddedWeb:*(v56 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher15TappedURLAction_embeddedWeb)];

      goto LABEL_4;
    }

    v211 = v2;
    type metadata accessor for MUPlaceActionDispatcher.TappedAttributionURLAction();
    v61 = swift_dynamicCastClass();
    if (v61)
    {
      v62 = v61;
      v210 = a1;
      v63 = sub_1C567A818();
      v64 = *(v62 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher26TappedAttributionURLAction_vendorID);
      v65 = *(v62 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher26TappedAttributionURLAction_vendorID + 8);
      v66 = *(v62 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher26TappedAttributionURLAction_mapItem);
      v67 = *(**v63 + 96);

      v68 = v66;
      v69 = v67(v64, v65, v68);

      if (v69)
      {
        swift_beginAccess();
        v70 = swift_unknownObjectWeakLoadStrong();
        if (!v70)
        {

          return 1;
        }

        v71 = v70;
        v72 = *(v62 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher26TappedAttributionURLAction_urls);

        v73 = sub_1C584F750();

        [v71 openAttributionURLsWithActionDispatcher:v211 urls:v73 attribution:v69];

        goto LABEL_45;
      }
    }

    type metadata accessor for MUPlaceActionDispatcher.DirectionsAction(0);
    v74 = swift_dynamicCastClass();
    if (v74)
    {
      v75 = v74;
      swift_beginAccess();
      v76 = swift_unknownObjectWeakLoadStrong();
      if (!v76)
      {
        return 1;
      }

      v77 = v76;
      sub_1C56466CC(v75 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher16DirectionsAction_directionsContact, v9, &qword_1EC16DD98, &unk_1C5868560);
      v78 = type metadata accessor for MUContactLabeledValue(0);
      v79 = (*(*(v78 - 8) + 48))(v9, 1, v78);
      v15 = a1;
      if (v79 == 1)
      {
        sub_1C5646734(v9);
        v80 = 0;
      }

      else
      {
        sub_1C569697C();
        sub_1C564679C(v9);
        v80 = sub_1C584F630();
      }

      [v77 openDirectionsWithActionDispatcher:v211 contactIdentifier:v80];

      goto LABEL_4;
    }

    type metadata accessor for MUPlaceActionDispatcher.ExploreGuidesAction();
    v81 = swift_dynamicCastClass();
    if (v81)
    {
      v82 = v81;
      swift_beginAccess();
      v83 = swift_unknownObjectWeakLoadStrong();
      if (!v83)
      {
        return 1;
      }

      v84 = v83;
      v85 = *(v82 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19ExploreGuidesAction_guideLocation);
      v15 = a1;
      v86 = v85;
      [v84 openExploreGuidesWithActionDispatcher:v211 guideLocation:v86];
    }

    else
    {
      type metadata accessor for MUPlaceActionDispatcher.CloseAction();
      if (swift_dynamicCastClass())
      {
        swift_beginAccess();
        v87 = swift_unknownObjectWeakLoadStrong();
        if (!v87)
        {
          return 1;
        }

        [v87 didTapCloseWithActionDispatcher_];
        goto LABEL_5;
      }

      type metadata accessor for MUPlaceActionDispatcher.ShareAction();
      if (swift_dynamicCastClass())
      {
        swift_beginAccess();
        v88 = swift_unknownObjectWeakLoadStrong();
        if (!v88)
        {
          return 1;
        }

        [v88 didTapShareWithActionDispatcher:v211 environment:a2];
        goto LABEL_5;
      }

      type metadata accessor for MUPlaceActionDispatcher.TappedNoteAction();
      if (swift_dynamicCastClass())
      {
        swift_beginAccess();
        v89 = swift_unknownObjectWeakLoadStrong();
        if (!v89)
        {
          return 1;
        }

        [v89 didTapNoteWithActionDispatcher_];
        goto LABEL_5;
      }

      type metadata accessor for MUPlaceActionDispatcher.TappedLibraryAction();
      v90 = swift_dynamicCastClass();
      if (v90)
      {
        v91 = v90;
        swift_beginAccess();
        v92 = swift_unknownObjectWeakLoadStrong();
        if (!v92)
        {
          return 1;
        }

        v93 = v92;
        v94 = *(v91 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19TappedLibraryAction_savedState);
        v15 = a1;
        [v93 didTapAddOrRemoveFromLibraryWithActionDispatcher:v211 savedState:sub_1C57768F4(v94) showAddToLibraryModal:*(v91 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19TappedLibraryAction_showAddToLibraryModal)];
        goto LABEL_4;
      }

      type metadata accessor for MUPlaceActionDispatcher.RemoveFromFavoritesAction();
      if (swift_dynamicCastClass())
      {
        swift_beginAccess();
        v95 = swift_unknownObjectWeakLoadStrong();
        if (!v95)
        {
          return 1;
        }

        [v95 didTapRemoveShortcutWithActionDispatcher_];
        goto LABEL_5;
      }

      type metadata accessor for MUPlaceActionDispatcher.AddPhotosAction();
      v96 = swift_dynamicCastClass();
      if (v96)
      {
        v97 = v96;
        v98 = objc_allocWithZone(MUPresentationOptions);
        v99 = a1;
        v100 = [v98 init];
        v101 = v100;
        v102 = (v97 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher15AddPhotosAction_boundingBox);
        if (*(v97 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher15AddPhotosAction_boundingBox + 32))
        {
          v102 = MEMORY[0x1E695F058];
        }

        [v100 setSourceRect_];
        v103 = type metadata accessor for MUPlaceActionFeedbackEnvironment();
        v104 = objc_allocWithZone(v103);
        *&v104[OBJC_IVAR____TtC6MapsUI32MUPlaceActionFeedbackEnvironment_presentationOptions] = v101;
        v212.receiver = v104;
        v212.super_class = v103;
        v105 = v101;
        v106 = objc_msgSendSuper2(&v212, sel_init);
        swift_beginAccess();
        v107 = swift_unknownObjectWeakLoadStrong();
        if (v107)
        {
          [v107 didTapAddPhotoWithActionDispatcher:v211 entryPoint:0 environment:v106];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return 1;
      }

      type metadata accessor for MUPlaceActionDispatcher.AddPhotoFromLibraryAction();
      if (swift_dynamicCastClass())
      {
        swift_beginAccess();
        v108 = swift_unknownObjectWeakLoadStrong();
        if (!v108)
        {
          return 1;
        }

        v109 = v108;
        v110 = type metadata accessor for MUPlaceActionFeedbackEnvironment();
        v111 = objc_allocWithZone(v110);
        *&v111[OBJC_IVAR____TtC6MapsUI32MUPlaceActionFeedbackEnvironment_presentationOptions] = 0;
        v213.receiver = v111;
        v213.super_class = v110;
        v69 = objc_msgSendSuper2(&v213, sel_init);
        [v109 didTapAddPhotoWithActionDispatcher:v211 entryPoint:2 environment:v69];
LABEL_45:

        goto LABEL_5;
      }

      type metadata accessor for MUPlaceActionDispatcher.AddPhotoFromCameraAction();
      if (swift_dynamicCastClass())
      {
        swift_beginAccess();
        v112 = swift_unknownObjectWeakLoadStrong();
        if (v112)
        {
          v113 = v112;
          v114 = type metadata accessor for MUPlaceActionFeedbackEnvironment();
          v115 = objc_allocWithZone(v114);
          *&v115[OBJC_IVAR____TtC6MapsUI32MUPlaceActionFeedbackEnvironment_presentationOptions] = 0;
          v214.receiver = v115;
          v214.super_class = v114;
          v116 = objc_msgSendSuper2(&v214, sel_init);
          v16 = 1;
          [v113 didTapAddPhotoWithActionDispatcher:v211 entryPoint:1 environment:v116];

          swift_unknownObjectRelease();
          return v16;
        }

        return 1;
      }

      type metadata accessor for MUPlaceActionDispatcher.BrowseCategoryAction();
      v117 = swift_dynamicCastClass();
      if (v117)
      {
        v118 = v117;
        swift_beginAccess();
        v119 = swift_unknownObjectWeakLoadStrong();
        if (!v119)
        {
          return 1;
        }

        v120 = v119;
        v121 = *(v118 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20BrowseCategoryAction_searchCategory);
        v15 = a1;
        v86 = v121;
        [v120 didSelectSearchCategoryWithActionDispatcher:v211 searchCategory:v86];
      }

      else
      {
        type metadata accessor for MUPlaceActionDispatcher.TappedSimulateLocationAction();
        if (swift_dynamicCastClass())
        {
          swift_beginAccess();
          v122 = swift_unknownObjectWeakLoadStrong();
          if (!v122)
          {
            return 1;
          }

          [v122 didTapSimulateLocationWithActionDispatcher_];
          goto LABEL_5;
        }

        type metadata accessor for MUPlaceActionDispatcher.TappedTransitDepartureAction();
        v123 = swift_dynamicCastClass();
        if (v123)
        {
          v124 = v123;
          swift_beginAccess();
          v125 = swift_unknownObjectWeakLoadStrong();
          if (!v125)
          {
            return 1;
          }

          v126 = v125;
          v127 = *(v124 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher28TappedTransitDepartureAction_departureSequence);
          v15 = a1;
          swift_unknownObjectRetain();
          [v126 didTapTransitDepartureWithActionDispatcher:v211 departureSequence:v127 isActiveLine:sub_1C5708B58()];
          swift_unknownObjectRelease();
          goto LABEL_4;
        }

        type metadata accessor for MUPlaceActionDispatcher.CreateCustomRouteAction();
        if (swift_dynamicCastClass())
        {
          swift_beginAccess();
          v128 = swift_unknownObjectWeakLoadStrong();
          if (!v128)
          {
            return 1;
          }

          [v128 didTapCreateCustomRouteWithActionDispatcher_];
          goto LABEL_5;
        }

        type metadata accessor for MUPlaceActionDispatcher.MarkedLocationAction();
        v129 = swift_dynamicCastClass();
        if (v129)
        {
          if (*(v129 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20MarkedLocationAction_pinActionType))
          {
            if (*(v129 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20MarkedLocationAction_pinActionType) == 1)
            {
              swift_beginAccess();
              v130 = swift_unknownObjectWeakLoadStrong();
              if (!v130)
              {
                return 1;
              }

              v131 = v130;
              v15 = a1;
              [v131 didSelectRemoveMarkedLocationWithActionDispatcher_];
            }

            else
            {
              swift_beginAccess();
              v135 = swift_unknownObjectWeakLoadStrong();
              if (!v135)
              {
                return 1;
              }

              v136 = v135;
              v15 = a1;
              [v136 didSelectEditLocationOfMarkedLocationWithActionDispatcher_];
            }
          }

          else
          {
            swift_beginAccess();
            v133 = swift_unknownObjectWeakLoadStrong();
            if (!v133)
            {
              return 1;
            }

            v134 = v133;
            v15 = a1;
            [v134 didSelectMarkMyLocationWithActionDispatcher_];
          }

          goto LABEL_4;
        }

        type metadata accessor for MUPlaceActionDispatcher.ContactsAction();
        if (swift_dynamicCastClass())
        {
          swift_beginAccess();
          v132 = swift_unknownObjectWeakLoadStrong();
          if (!v132)
          {
            return 1;
          }

          [v132 didSelectViewContactButtonWithActionDispatcher_];
          goto LABEL_5;
        }

        type metadata accessor for MUPlaceActionDispatcher.LocationAction();
        if (swift_dynamicCastClass())
        {
          swift_beginAccess();
          v137 = swift_unknownObjectWeakLoadStrong();
          if (!v137)
          {
            return 1;
          }

          [v137 didSelectRequestLocationButtonWithActionDispatcher_];
          goto LABEL_5;
        }

        type metadata accessor for MUPlaceActionDispatcher.ShowAllCollectionsAction();
        v138 = swift_dynamicCastClass();
        if (v138)
        {
          v139 = v138;
          swift_beginAccess();
          v140 = swift_unknownObjectWeakLoadStrong();
          if (!v140)
          {
            return 1;
          }

          v141 = v140;
          v142 = *(v139 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher24ShowAllCollectionsAction_title);
          v143 = *(v139 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher24ShowAllCollectionsAction_title + 8);
          v15 = a1;

          v144 = sub_1C584F630();

          v145 = *(v139 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher24ShowAllCollectionsAction_placeCollections);
          sub_1C5626E40(0, &qword_1EC16DE08, 0x1E69A2360);

          v146 = sub_1C584F750();

          v147 = *(v139 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher24ShowAllCollectionsAction_collectionIds);
          sub_1C5626E40(0, &unk_1EC16DE10, 0x1E69A21C0);

          v148 = sub_1C584F750();

          [v141 didTapShowAllCollectionWithActionDispatcher:v211 title:v144 placeCollections:v146 collectionIds:v148];

          goto LABEL_4;
        }

        type metadata accessor for MUPlaceActionDispatcher.OpenFindMyAction();
        if (swift_dynamicCastClass())
        {
          swift_beginAccess();
          v149 = swift_unknownObjectWeakLoadStrong();
          if (!v149)
          {
            return 1;
          }

          [v149 didTapOpenFindMyWithActionDispatcher_];
          goto LABEL_5;
        }

        type metadata accessor for MUPlaceActionDispatcher.OpenUserGuideAction();
        v150 = swift_dynamicCastClass();
        if (v150)
        {
          v151 = v150;
          swift_beginAccess();
          v152 = swift_unknownObjectWeakLoadStrong();
          if (!v152)
          {
            return 1;
          }

          v153 = v152;
          v154 = v151 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19OpenUserGuideAction_collectionId;
          v155 = *(v151 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19OpenUserGuideAction_collectionId);
          v156 = *(v154 + 8);
          v15 = a1;

          v86 = sub_1C584F630();

          [v153 didSelectUserGuideWithActionDispatcher:v211 collectionId:v86];
        }

        else
        {
          type metadata accessor for MUPlaceActionDispatcher.AddToGuidesAction();
          v157 = swift_dynamicCastClass();
          if (v157)
          {
            if (*(v157 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher17AddToGuidesAction_isFavoriteGuide) != 1)
            {
              return 1;
            }

            swift_beginAccess();
            v158 = swift_unknownObjectWeakLoadStrong();
            if (!v158)
            {
              return 1;
            }

            v159 = v158;
            v15 = a1;
            [v159 didSelectAddOrRemoveFromFavoritesGuideWithActionDispatcher_];
            goto LABEL_4;
          }

          type metadata accessor for MUPlaceActionDispatcher.TappedTransitIncidentAction();
          v160 = swift_dynamicCastClass();
          if (v160)
          {
            v161 = v160;
            swift_beginAccess();
            v162 = swift_unknownObjectWeakLoadStrong();
            if (!v162)
            {
              return 1;
            }

            v163 = v162;
            v164 = *(v161 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher27TappedTransitIncidentAction_transitIncidents);
            v15 = a1;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DE00, &qword_1C5868570);
            v165 = sub_1C584F750();

            [v163 didSelectTransitIncidentsWithActionDispatcher:v211 incidents:v165];

            goto LABEL_4;
          }

          type metadata accessor for MUPlaceActionDispatcher.PublisherGuideAction();
          v166 = swift_dynamicCastClass();
          if (v166)
          {
            v167 = v166;
            v168 = OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldShowPublisher;
            swift_beginAccess();
            if (*(v167 + v168) == 1)
            {
              swift_beginAccess();
              v169 = swift_unknownObjectWeakLoadStrong();
              if (!v169)
              {
                return 1;
              }

              v170 = v169;
              v171 = *(v167 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_placeCollection);
              v172 = a1;
              v173 = v171;
              [v170 didSelectShowPublisherWithActionDispatcher:v211 publisherGuide:v173];
            }

            else
            {
              v180 = OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
              swift_beginAccess();
              if (*(v167 + v180) == 1)
              {
                swift_beginAccess();
                v181 = swift_unknownObjectWeakLoadStrong();
                if (!v181)
                {
                  return 1;
                }

                v182 = v181;
                v183 = *(v167 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_placeCollection);
                v172 = a1;
                v173 = v183;
                [v182 didSelectSavePublisherGuideWithActionDispatcher:v211 publisherGuide:v173];
              }

              else
              {
                v184 = OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldSharePublisherGuide;
                swift_beginAccess();
                if (*(v167 + v184) != 1)
                {
                  return 1;
                }

                swift_beginAccess();
                v185 = swift_unknownObjectWeakLoadStrong();
                if (!v185)
                {
                  return 1;
                }

                v186 = v185;
                v187 = *(v167 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_placeCollection);
                v172 = a1;
                v173 = v187;
                [v186 didSelectSharePublisherGuideWithActionDispatcher:v211 publisherGuide:v173];
              }
            }

            goto LABEL_5;
          }

          type metadata accessor for MUPlaceActionDispatcher.OpenPhotoViewerAction();
          v174 = swift_dynamicCastClass();
          if (v174)
          {
            v175 = v174;
            swift_beginAccess();
            v176 = swift_unknownObjectWeakLoadStrong();
            if (!v176)
            {
              return 1;
            }

            v177 = v176;
            v178 = *(v175 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher21OpenPhotoViewerAction_index);
            v15 = a1;
            LODWORD(v179) = v178;
            [v177 didTapOpenPhotoViewerWithActionDispatcher:v211 index:v179];
            goto LABEL_4;
          }

          type metadata accessor for MUPlaceActionDispatcher.CopyCoordinatesAction();
          v188 = swift_dynamicCastClass();
          if (v188)
          {
            v189 = v188;
            swift_beginAccess();
            v190 = swift_unknownObjectWeakLoadStrong();
            if (!v190)
            {
              return 1;
            }

            v191 = v190;
            v192 = v189 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher21CopyCoordinatesAction_coordinatesString;
            v193 = *(v189 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher21CopyCoordinatesAction_coordinatesString);
            v194 = *(v192 + 8);
            v15 = a1;

            v86 = sub_1C584F630();

            [v191 didSelectCopyCoordinatesWithActionDispatcher:v211 coordinatesString:v86];
          }

          else
          {
            type metadata accessor for MUPlaceActionDispatcher.CopyLinkAction();
            v195 = swift_dynamicCastClass();
            if (v195)
            {
              v196 = v195;
              swift_beginAccess();
              v197 = swift_unknownObjectWeakLoadStrong();
              if (!v197)
              {
                return 1;
              }

              v198 = v197;
              v199 = v196 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher14CopyLinkAction_urlString;
              v200 = *(v196 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher14CopyLinkAction_urlString);
              v201 = *(v199 + 8);
              v15 = a1;

              v86 = sub_1C584F630();

              [v198 didSelectCopyLinkWithActionDispatcher:v211 urlString:v86];
            }

            else
            {
              type metadata accessor for MUPlaceActionDispatcher.CopyAddressAction();
              v202 = swift_dynamicCastClass();
              if (!v202)
              {
                return 0;
              }

              v203 = v202;
              swift_beginAccess();
              v204 = swift_unknownObjectWeakLoadStrong();
              if (!v204)
              {
                return 1;
              }

              v205 = v204;
              v206 = v203 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher17CopyAddressAction_addressString;
              v207 = *(v203 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher17CopyAddressAction_addressString);
              v208 = *(v206 + 8);
              v15 = a1;

              v86 = sub_1C584F630();

              [v205 didSelectCopyAddressWithActionDispatcher:v211 addressString:v86];
            }
          }
        }
      }
    }

    goto LABEL_4;
  }

  v11 = v10;
  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = *(v11 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20InlineRapEntryAction_rapType);
    v15 = a1;
    [v13 didSelectAddMissingDataWithActionDispatcher:v2 missingDataType:v14];
LABEL_4:

LABEL_5:
    swift_unknownObjectRelease();
  }

  return 1;
}

unint64_t sub_1C5645D34(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1C584FEA0();
  sub_1C584F6C0();
  v6 = sub_1C584FEF0();

  return sub_1C5645DAC(a1, a2, v6);
}

unint64_t sub_1C5645DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C584FDC0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1C5645E64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171540, &qword_1C5868548);
  v36 = a2;
  result = sub_1C584FD40();
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
        sub_1C563D304(v25, v37);
      }

      else
      {
        sub_1C56465F8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1C584FEA0();
      sub_1C584F6C0();
      result = sub_1C584FEF0();
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
      result = sub_1C563D304(v37, (*(v8 + 56) + 32 * v16));
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

_OWORD *sub_1C564611C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C5645D34(a2, a3);
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
      sub_1C56462D8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1C5645E64(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1C5645D34(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1C584FE00();
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

    return sub_1C563D304(a1, v23);
  }

  else
  {
    sub_1C564626C(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1C564626C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C563D304(a4, (a5[7] + 32 * a1));
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

void *sub_1C56462D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171540, &qword_1C5868548);
  v2 = *v0;
  v3 = sub_1C584FD30();
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
        sub_1C56465F8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1C563D304(v25, (*(v4 + 56) + v22));
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

unint64_t sub_1C564647C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171540, &qword_1C5868548);
    v3 = sub_1C584FD50();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C56466CC(v4, &v13, &qword_1EC16E700, &qword_1C586A120);
      v5 = v13;
      v6 = v14;
      result = sub_1C5645D34(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C563D304(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C56465AC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1(1);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C56465F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_9Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5646698(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 24);
    return v2(result & 1);
  }

  return result;
}

uint64_t sub_1C56466CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C5646734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD98, &unk_1C5868560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C564679C(uint64_t a1)
{
  v2 = type metadata accessor for MUContactLabeledValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5646814(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6)
{
  v29 = a6;
  v30 = a5;
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v7 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1E69E7CC0];
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v20 = *(v15 + 72);
    do
    {
      sub_1C5649D40(v19, v17, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
      v21 = sub_1C5646B40(v17);
      if (v21)
      {
        v22 = v21;
        sub_1C56954CC(v11);
        v23 = sub_1C56921A8();
        sub_1C5649DA8(v11, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
        v34 = sub_1C56470A4(v23);
        v35 = v24;
        MEMORY[0x1C6949D90](0x69746341756E654DLL, 0xEA00000000006E6FLL);
        v25 = sub_1C584F630();

        [v22 setAccessibilityIdentifier_];

        v26 = v22;
        MEMORY[0x1C6949DF0]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C584F7A0();
        }

        sub_1C584F7E0();

        sub_1C5649DA8(v17, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
      }

      else
      {
        sub_1C5649DA8(v17, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
      }

      v19 += v20;
      --v18;
    }

    while (v18);
  }

  sub_1C5626E40(0, &qword_1EC16DE20, 0x1E69DCC60);
  v27 = v33;

  return sub_1C584FA70();
}

uint64_t sub_1C5646B40(uint64_t a1)
{
  v3 = sub_1C584F2C0();
  v55 = *(v3 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v13 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v54 - v15;
  v17 = type metadata accessor for WebPlacecardBridge.MUWebMenuIcon(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C56953C4();
  result = 0;
  if (v22)
  {
    v54 = v1;
    sub_1C56953F4();
    v24 = sub_1C584F630();

    v25 = [objc_opt_self() _systemImageNamed_];

    if (v25)
    {
      v26 = v25;
      v27 = sub_1C56476B4(a1, v25);

      return v27;
    }

    else
    {
      sub_1C5695790(v21);
      v28 = sub_1C5695934();
      v30 = v29;
      sub_1C5649DA8(v21, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon);

      v31 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) == 0)
      {
        v31 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {
        v32 = v54;
        v33 = v54[1];
        v34 = v54[3];
        v35 = v54[5];
        v36 = v54[7];
        sub_1C5649D40(a1, v16, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
        v37 = (*(v9 + 80) + 80) & ~*(v9 + 80);
        v38 = swift_allocObject();
        v39 = v32[1];
        v38[1] = *v32;
        v38[2] = v39;
        v40 = v32[3];
        v38[3] = v32[2];
        v38[4] = v40;
        sub_1C5649E08(v16, v38 + v37, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
        aBlock[4] = sub_1C5648A5C;
        aBlock[5] = v38;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1C564887C;
        aBlock[3] = &block_descriptor_1;
        v41 = _Block_copy(aBlock);
        v42 = objc_opt_self();

        v43 = [v42 elementWithProvider_];
        _Block_release(v41);

        return v43;
      }

      else
      {
        v44 = sub_1C5716150();
        v45 = v55;
        (*(v55 + 16))(v7, v44, v3);
        sub_1C5649D40(a1, v13, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
        v46 = sub_1C584F2A0();
        v47 = sub_1C584F9B0();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          aBlock[0] = v49;
          *v48 = 136315138;
          v50 = sub_1C569540C();
          v52 = v51;
          sub_1C5649DA8(v13, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
          v53 = sub_1C5649518(v50, v52, aBlock);

          *(v48 + 4) = v53;
          _os_log_impl(&dword_1C5620000, v46, v47, "Invalid appArtwork URL string: %s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v49);
          MEMORY[0x1C694B7A0](v49, -1, -1);
          MEMORY[0x1C694B7A0](v48, -1, -1);

          (*(v55 + 8))(v7, v3);
        }

        else
        {

          sub_1C5649DA8(v13, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
          (*(v45 + 8))(v7, v3);
        }

        return sub_1C56476B4(a1, 0);
      }
    }
  }

  return result;
}

uint64_t sub_1C56470A4(char a1)
{
  result = 0x6E776F6E6B6E55;
  switch(a1)
  {
    case 1:
      result = 0x6469754772657355;
      break;
    case 2:
      result = 0x4765726F6C707845;
      break;
    case 3:
      result = 0x6E69746152707241;
      break;
    case 4:
      result = 0x6567677553707241;
      break;
    case 5:
      result = 0x65526E4973706152;
      break;
    case 6:
      result = 0x6E4174726F706552;
      break;
    case 7:
      result = 0x6572616853;
      break;
    case 8:
      result = 1819042115;
      break;
    case 9:
      result = 0x6567617373654DLL;
      break;
    case 10:
      result = 0x65746973626557;
      break;
    case 11:
      result = 0x72476E6F69746341;
      break;
    case 12:
      result = 0x6F69746365726944;
      break;
    case 13:
      result = 0x7265766F796C46;
      break;
    case 14:
      result = 0x44656E696C66664FLL;
      break;
    case 15:
      result = 0x6F746F6850646441;
      break;
    case 16:
      result = 0x7661466F54646441;
      break;
    case 17:
      result = 0x6975476F54646441;
      break;
    case 18:
      result = 0x6850646570706154;
      break;
    case 19:
    case 27:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0x63616C5065726F4DLL;
      break;
    case 21:
      v3 = 1701998413;
      goto LABEL_32;
    case 22:
      result = 0x7547646570706154;
      break;
    case 23:
      result = 0x6C50646570706154;
      break;
    case 24:
      result = 0x6152656E696C6E49;
      break;
    case 25:
      result = 0x5255646570706154;
      break;
    case 26:
    case 35:
    case 45:
      result = 0xD000000000000014;
      break;
    case 28:
      result = 0x73746361746E6F43;
      break;
    case 29:
      result = 0x794D646E6946;
      break;
    case 30:
      result = 0x6E6F697461636F4CLL;
      break;
    case 31:
      result = 0x65736F6C43;
      break;
    case 32:
      result = 0xD000000000000013;
      break;
    case 33:
      result = 0x694C646570706154;
      break;
    case 34:
      result = 0x6F4E646570706154;
      break;
    case 36:
      result = 0xD000000000000013;
      break;
    case 37:
    case 52:
      result = 0xD000000000000012;
      break;
    case 38:
    case 53:
      result = 0xD000000000000016;
      break;
    case 39:
      result = 0xD000000000000011;
      break;
    case 40:
      result = 0x437070416E65704FLL;
      break;
    case 41:
      result = 0x657478456E65704FLL;
      break;
    case 42:
      result = 0x6F4C64656B72614DLL;
      break;
    case 43:
      result = 0x6469754765726F4DLL;
      break;
    case 44:
      result = 0xD000000000000015;
      break;
    case 46:
      result = 0xD000000000000013;
      break;
    case 47:
      v3 = 1852141647;
LABEL_32:
      result = v3 | 0x746F685000000000;
      break;
    case 48:
      result = 0x726F6F4379706F43;
      break;
    case 49:
      result = 0x6B6E694C79706F43;
      break;
    case 50:
      result = 0x7264644179706F43;
      break;
    case 51:
      result = 0x65446F54646E6553;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C56476B4(uint64_t a1, void *a2)
{
  v3 = v2;
  v74 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  v77 = *(v74 - 8);
  v6 = *(v77 + 64);
  v8 = MEMORY[0x1EEE9AC00](v74, v7);
  v75 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v68 - v11;
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = (&v68 - v14);
  v78 = sub_1C584F2C0();
  v16 = *(v78 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v78, v18);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C56954CC(v25);
  v26 = sub_1C56921A8();
  sub_1C5649DA8(v25, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
  if (v26 == 51)
  {
    return sub_1C5647EA4(a1, a2);
  }

  v76 = a2;
  if (*(*a1 + 16))
  {
    v69 = *a1;
    v28 = sub_1C5716150();
    v29 = v16;
    v30 = v78;
    (*(v16 + 16))(v20, v28, v78);
    sub_1C5649D40(a1, v15, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
    v31 = sub_1C584F2A0();
    v32 = sub_1C584F990();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v79[0] = v73;
      *v33 = 136315138;
      v74 = MEMORY[0x1C6949E30](*v15, v74);
      v75 = v29;
      v35 = v34;
      sub_1C5649DA8(v15, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
      v36 = sub_1C5649518(v74, v35, v79);

      *(v33 + 4) = v36;
      _os_log_impl(&dword_1C5620000, v31, v32, "Group data is available for this UIMenuButton: %s", v33, 0xCu);
      v37 = v73;
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x1C694B7A0](v37, -1, -1);
      MEMORY[0x1C694B7A0](v33, -1, -1);

      (*(v75 + 8))(v20, v78);
    }

    else
    {

      sub_1C5649DA8(v15, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
      (*(v29 + 8))(v20, v30);
    }

    v68 = sub_1C5695908();
    v71 = sub_1C56953AC();
    v72 = v52;
    v70 = sub_1C5695768();
    v53 = *(v3 + 8);
    v54 = *(v3 + 24);
    v55 = *(v3 + 40);
    v56 = *(v3 + 56);
    v80 = MEMORY[0x1E69E7CC0];
    v57 = *(v69 + 16);
    v78 = v55;
    v74 = v53;
    v75 = v56;
    v73 = v54;
    if (v57)
    {
      v58 = v69 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
      v59 = *(v77 + 72);

      do
      {
        sub_1C5649D40(v58, v12, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
        v60 = sub_1C5646B40(v12);
        if (v60)
        {
          v61 = v60;
          sub_1C56954CC(v25);
          v62 = sub_1C56921A8();
          sub_1C5649DA8(v25, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
          v79[0] = sub_1C56470A4(v62);
          v79[1] = v63;
          MEMORY[0x1C6949D90](0x69746341756E654DLL, 0xEA00000000006E6FLL);
          v64 = sub_1C584F630();

          [v61 setAccessibilityIdentifier_];

          v65 = v61;
          MEMORY[0x1C6949DF0]();
          if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C584F7A0();
          }

          sub_1C584F7E0();

          sub_1C5649DA8(v12, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
        }

        else
        {
          sub_1C5649DA8(v12, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
        }

        v58 += v59;
        --v57;
      }

      while (v57);
    }

    else
    {
    }

    sub_1C5626E40(0, &qword_1EC16DE20, 0x1E69DCC60);
    v66 = v76;

    v67 = sub_1C584FA70();

    return v67;
  }

  else
  {
    v78 = sub_1C5626E40(0, &qword_1EC16E110, 0x1E69DC628);
    v38 = sub_1C56953AC();
    v73 = v39;
    v74 = v38;
    v40 = v76;
    sub_1C56952EC();
    v72 = sub_1C584F630();

    v71 = sub_1C577463C();
    v41 = v75;
    sub_1C5649D40(a1, v75, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
    v42 = *(v3 + 8);
    v43 = *(v3 + 24);
    v44 = *(v3 + 40);
    v45 = *(v3 + 56);
    v46 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v47 = (v6 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    sub_1C5649E08(v41, v48 + v46, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
    v49 = (v48 + v47);
    v50 = *(v3 + 16);
    *v49 = *v3;
    v49[1] = v50;
    v51 = *(v3 + 48);
    v49[2] = *(v3 + 32);
    v49[3] = v51;

    return sub_1C584FAD0();
  }
}

uint64_t sub_1C5647EA4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C584F2C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v36 - v22;
  sub_1C56954CC(&v36 - v22);
  v24 = sub_1C56921A8();
  sub_1C5649DA8(v23, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
  if (v24 == 51)
  {
    return sub_1C5648AF8(a1, a2);
  }

  v26 = sub_1C5716150();
  (*(v10 + 16))(v14, v26, v9);
  sub_1C5649D40(a1, v8, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
  v27 = sub_1C584F2A0();
  v28 = sub_1C584F9B0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v30;
    *v29 = 136315138;
    sub_1C56954CC(v20);
    v31 = sub_1C56921A8();
    sub_1C5649DA8(v20, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
    v32 = sub_1C56470A4(v31);
    v34 = v33;
    sub_1C5649DA8(v8, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
    v35 = sub_1C5649518(v32, v34, &v37);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_1C5620000, v27, v28, "Unexpected user interaction type when creating native submenu for menuItem: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1C694B7A0](v30, -1, -1);
    MEMORY[0x1C694B7A0](v29, -1, -1);
  }

  else
  {

    sub_1C5649DA8(v8, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
  }

  (*(v10 + 8))(v14, v9);
  sub_1C5626E40(0, &qword_1EC16DE20, 0x1E69DCC60);
  return sub_1C584FA70();
}

uint64_t sub_1C5648258(void (*a1)(uint64_t), void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v69 = a2;
  v70 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v64 = &v61 - v9;
  v10 = sub_1C584EA90();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v62 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14 - 8, v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v61 - v20;
  v22 = type metadata accessor for WebPlacecardBridge.MUWebMenuIcon(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8, v24);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5695790(v26);
  sub_1C569540C();
  v63 = v27;
  sub_1C5649D40(a4, v21, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
  v68 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5649D40(v21, v68, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
  v28 = *(a3 + 8);
  v29 = *(a3 + 24);
  v30 = *(a3 + 40);
  v67 = *(a3 + 56);
  v31 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v32 = (v16 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = *(a3 + 16);
  v33[1] = *a3;
  v33[2] = v34;
  v35 = *(a3 + 48);
  v33[3] = *(a3 + 32);
  v33[4] = v35;
  sub_1C5649E08(v21, v33 + v31, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
  v36 = (v33 + v32);
  v37 = v69;
  *v36 = v70;
  v36[1] = v37;
  v38 = objc_allocWithZone(MUAppLockupImageMetrics);

  v39 = [v38 init];
  [v39 setFrameSize_];
  v40 = [objc_opt_self() sharedInstance];
  if (v40)
  {
    v41 = v40;

    [v41 screenScale];
    v43 = v42;

    [v39 setScale_];
    [v39 setVariant_];
    sub_1C5695934();
    v44 = v64;
    sub_1C584EA80();

    v46 = v65;
    v45 = v66;
    v47 = v26;
    if ((*(v65 + 48))(v44, 1, v66) == 1)
    {
      sub_1C5625230(v44, &unk_1EC16E660, &unk_1C58685F0);
      v48 = v68;
      v49 = sub_1C56476B4(v68, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1C5867970;
      *(v50 + 32) = v49;
      v51 = v49;
      v70(v50);
    }

    else
    {
      v52 = v62;
      (*(v46 + 32))(v62, v44, v45);
      v53 = objc_allocWithZone(MUAppLockupImage);
      v54 = v39;
      v55 = sub_1C584EA20();
      v56 = [v53 initWithRemoteURL:v55 metrics:v54];

      v57 = swift_allocObject();
      v57[2] = sub_1C5649EE0;
      v57[3] = v33;
      v57[4] = v56;
      aBlock[4] = sub_1C5649FFC;
      aBlock[5] = v57;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C56444F8;
      aBlock[3] = &block_descriptor_18;
      v58 = _Block_copy(aBlock);

      v59 = v56;

      [v59 loadImageWithCompletion_];
      _Block_release(v58);

      (*(v46 + 8))(v52, v45);
      v48 = v68;
    }

    sub_1C5649DA8(v48, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
    return sub_1C5649DA8(v47, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon);
  }

  else
  {
    result = sub_1C5649DA8(v68, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
    __break(1u);
  }

  return result;
}

uint64_t sub_1C564887C(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_1C5649ED8, v5);
}

void sub_1C5648910(uint64_t a1, uint64_t a2)
{
  sub_1C5626E40(0, &qword_1EC170520, 0x1E69DCC78);
  v3 = sub_1C584F750();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_1C564898C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
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

uint64_t sub_1C56489B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C56489FC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1C5648A5C(void (*a1)(uint64_t), void (*a2)(uint64_t))
{
  v5 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 80) & ~*(v5 + 80));

  return sub_1C5648258(a1, a2, v2 + 16, v6);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C5648AF8(uint64_t a1, void *a2)
{
  v75 = a2;
  v97 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for MUSendToDevice(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v81 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v74 - v10;
  v12 = type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = (v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = MEMORY[0x1E69E7CC0];
  v74[2] = a1;
  sub_1C56954CC(v21);
  sub_1C5694A44(v16);
  sub_1C5649DA8(v21, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
  v22 = *v16;

  sub_1C5649DA8(v16, type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = objc_opt_self();
    v25 = *(v4 + 80);
    v74[1] = v22;
    v26 = v22 + ((v25 + 32) & ~v25);
    v27 = *(v4 + 72);
    v79 = v25;
    v77 = (v25 + 80) & ~v25;
    v28 = MEMORY[0x1E69E7CC0];
    v29 = &selRef_shouldBlurChromeHeaderButtons;
    v76 = xmmword_1C5867900;
    v80 = v24;
    v78 = v27;
    while (1)
    {
      sub_1C5649D40(v26, v11, type metadata accessor for MUSendToDevice);
      sub_1C5696D48();
      v32 = sub_1C584F630();

      v33 = [v24 v29[217]];

      if (v33)
      {
        sub_1C5696DA8();
        v34 = sub_1C584F630();

        v35 = [objc_opt_self() _typeWithDeviceModelCode_];

        if (!v35)
        {
          sub_1C5649DA8(v11, type metadata accessor for MUSendToDevice);

          goto LABEL_5;
        }

        v94 = v35;
        v36 = [v35 identifier];
        if (!v36)
        {
          sub_1C584F660();
          v36 = sub_1C584F630();
        }

        v37 = objc_opt_self();
        v95 = 0;
        v38 = [v37 symbolForTypeIdentifier:v36 error:&v95];

        if (v38)
        {
          v39 = v95;
          [v33 size];
          v41 = v40;
          v43 = v42;
          [v33 scale];
          v45 = [v38 imageForSize:v41 scale:{v43, v44}];
          if (v45)
          {
            v46 = v45;
            v47 = [v45 CGImage];
            if (v47)
            {
              v93 = v46;
              v48 = v47;
              [v33 scale];
              v50 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v48 scale:0 orientation:v49];
              v92 = v48;

              v51 = [objc_opt_self() labelColor];
              v90 = [v50 imageWithTintColor_];

              v91 = sub_1C5626E40(0, &qword_1EC16E110, 0x1E69DC628);
              v52 = [objc_opt_self() sendToDeviceFormatString];
              sub_1C584F660();

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16DFC0, &unk_1C58685E0);
              v53 = swift_allocObject();
              *(v53 + 16) = v76;
              v54 = sub_1C5696D18();
              v56 = v55;
              *(v53 + 56) = MEMORY[0x1E69E6158];
              *(v53 + 64) = sub_1C563D3B0();
              *(v53 + 32) = v54;
              *(v53 + 40) = v56;
              v57 = sub_1C584F670();
              v88 = v58;
              v89 = v57;

              v59 = v83;
              v60 = v83[3];
              v84 = v83[1];
              v85 = v60;
              v61 = v83[7];
              v86 = v83[5];
              v87 = v61;
              v62 = v81;
              sub_1C5649D40(v11, v81, type metadata accessor for MUSendToDevice);
              v63 = v77;
              v64 = swift_allocObject();
              v65 = v59[1];
              v64[1] = *v59;
              v64[2] = v65;
              v66 = v59[3];
              v64[3] = v59[2];
              v64[4] = v66;
              sub_1C5649E08(v62, v64 + v63, type metadata accessor for MUSendToDevice);
              v67 = v90;

              v68 = sub_1C584FAD0();
              MEMORY[0x1C6949DF0]();
              if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v69 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1C584F7A0();
              }

              sub_1C584F7E0();

              sub_1C5649DA8(v11, type metadata accessor for MUSendToDevice);
              v28 = v96;
              v24 = v80;
              v27 = v78;
              v29 = &selRef_shouldBlurChromeHeaderButtons;
            }

            else
            {
              sub_1C5649DA8(v11, type metadata accessor for MUSendToDevice);
            }
          }

          else
          {
            sub_1C5649DA8(v11, type metadata accessor for MUSendToDevice);
          }

          goto LABEL_5;
        }

        v30 = v95;
        v31 = sub_1C584E950();

        swift_willThrow();
      }

      sub_1C5649DA8(v11, type metadata accessor for MUSendToDevice);
LABEL_5:
      v26 += v27;
      if (!--v23)
      {

        if (!(v28 >> 62))
        {
          goto LABEL_20;
        }

LABEL_25:
        if (sub_1C584FB90() < 1)
        {
          goto LABEL_26;
        }

LABEL_21:
        sub_1C56953AC();
        sub_1C56952EC();
        sub_1C584F630();

        if (v28 >> 62)
        {
          sub_1C5626E40(0, &qword_1EC170520, 0x1E69DCC78);

          sub_1C584FD10();
        }

        else
        {

          sub_1C584FDD0();
          sub_1C5626E40(0, &qword_1EC170520, 0x1E69DCC78);
        }

        sub_1C5626E40(0, &qword_1EC16DE20, 0x1E69DCC60);
        v70 = v75;
        result = sub_1C584FA70();
        goto LABEL_27;
      }
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_21;
  }

LABEL_26:

  sub_1C5626E40(0, &qword_1EC16E110, 0x1E69DC628);
  sub_1C56953AC();
  v72 = v75;
  sub_1C56952EC();
  sub_1C584F630();

  result = sub_1C584FAD0();
LABEL_27:
  v73 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C5649518(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C56495E4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C56465F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1C56495E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C56496F0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1C584FC90();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1C56496F0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C564973C(a1, a2);
  sub_1C564986C(&unk_1F44C2E30);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1C564973C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C5649958(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C584FC90();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C584F6F0();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C5649958(v10, 0);
        result = sub_1C584FC40();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C564986C(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
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

  result = sub_1C56499CC(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C5649958(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E710, &qword_1C586A130);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C56499CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E710, &qword_1C586A130);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_1C5649AC0(void *a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ([a1 sender])
  {
    sub_1C584FB30();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v7 = v2 + v6;
  v15 = v13;
  v16 = v14;
  if (*(&v14 + 1))
  {
    sub_1C5626E40(0, &qword_1ED77E800, 0x1E69DD250);
    if (swift_dynamicCast())
    {
      v8 = v12;
      v9 = [objc_allocWithZone(MUPresentationOptions) init];
      if (v9)
      {
        [v9 setSourceView_];
      }

LABEL_16:

      goto LABEL_19;
    }
  }

  else
  {
    sub_1C5625230(&v15, &qword_1EC16E790, &unk_1C586A110);
  }

  if ([a1 sender])
  {
    sub_1C584FB30();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (*(&v14 + 1))
  {
    sub_1C5626E40(0, &qword_1EC1705A0, 0x1E69DC708);
    if (swift_dynamicCast())
    {
      v8 = v12;
      v9 = [objc_allocWithZone(MUPresentationOptions) init];
      if (v9)
      {
        [v9 setSourceItem_];
      }

      goto LABEL_16;
    }
  }

  else
  {
    sub_1C5625230(&v15, &qword_1EC16E790, &unk_1C586A110);
  }

  v9 = 0;
LABEL_19:
  if (sub_1C5695674())
  {
    v10 = *(v7 + 24);
    (*(v7 + 16))(v2 + v5, v9);
  }

  v11 = *(v7 + 8);
  (*v7)(v2 + v5, v9);
}

uint64_t sub_1C5649D40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5649DA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C5649E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5649E70()
{
  v1 = *(type metadata accessor for MUSendToDevice(0) - 8);
  v2 = *(v0 + 72);
  return (*(v0 + 64))(v0 + ((*(v1 + 80) + 80) & ~*(v1 + 80)));
}

void sub_1C5649EE0(void *a1)
{
  v3 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0) - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v5;
  v6 = *(v5 + 8);
  v8 = sub_1C56476B4(v1 + v4, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C5867970;
  *(v9 + 32) = v8;
  v10 = v8;
  v7(v9);
}

void sub_1C5649FFC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = [*(v0 + 32) cachedImage];
  v2();
}

uint64_t EVChargingSection.headerTitle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EVChargingSection.headerIcon.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1C564A0D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t EVChargingRow.leadingText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C584E8B0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id EVChargingRow.trailingText.getter()
{
  v1 = *(v0 + *(type metadata accessor for EVChargingRow(0) + 20));

  return v1;
}

uint64_t sub_1C564A1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C584E8B0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for EVChargingRow(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

id sub_1C564A220()
{
  v0 = [objc_allocWithZone(MUPlaceVerticalCardConfiguration) init];
  [v0 setShowSeparators_];
  return v0;
}

id sub_1C564A26C(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *(a1 + 32);
  v7 = &v5[OBJC_IVAR____TtC6MapsUI21EVChargingSectionView_section];
  v8 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v8;
  *(v7 + 4) = v6;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_initWithConfiguration_, a2);
  sub_1C564A2F8();

  return v9;
}

void sub_1C564A2F8()
{
  v36 = sub_1C584E8B0();
  v34 = *(v36 - 8);
  v1 = *(v34 + 8);
  MEMORY[0x1EEE9AC00](v36, v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EVChargingRow(0);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v0;
  v10 = &v0[OBJC_IVAR____TtC6MapsUI21EVChargingSectionView_section];
  v12 = *&v0[OBJC_IVAR____TtC6MapsUI21EVChargingSectionView_section];
  v11 = *&v0[OBJC_IVAR____TtC6MapsUI21EVChargingSectionView_section + 8];
  v14 = *&v0[OBJC_IVAR____TtC6MapsUI21EVChargingSectionView_section + 16];
  v13 = *&v0[OBJC_IVAR____TtC6MapsUI21EVChargingSectionView_section + 24];
  v15 = objc_allocWithZone(type metadata accessor for EVChargingPlugTitleRowView());

  v16 = sub_1C564AC1C(v12, v11, v14, v13);
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C5867970;
  *(v17 + 32) = v16;
  v37 = v17;
  v18 = *(v10 + 4);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = *(v5 + 20);
    v21 = v18 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v22 = *(v33 + 72);
    v23 = (v34 + 16);
    v34 = v16;
    v24 = v16;
    do
    {
      sub_1C564CC70(v21, v9);
      (*v23)(v4, v9, v36);
      v25 = *&v9[v20];
      sub_1C564CCD4(v9);
      v26 = objc_allocWithZone(type metadata accessor for EVChargingPlugRowView(0));
      v27 = sub_1C564BE00(v4, v25);

      [v27 setTranslatesAutoresizingMaskIntoConstraints_];
      v28 = v27;
      MEMORY[0x1C6949DF0]();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v29 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C584F7A0();
      }

      sub_1C584F7E0();

      v21 += v22;
      --v19;
    }

    while (v19);
    v16 = v34;
  }

  else
  {
    v30 = v16;
  }

  sub_1C5626E40(0, &qword_1EC16D000, 0x1E696F438);
  v31 = sub_1C584F750();

  [v35 setRowViews_];
}

char *sub_1C564A6E4(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1C564BE00(a1, a2);

  return v6;
}

id sub_1C564A734(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MUButtonCellRowView) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setBottomHairlineHidden_];
  v5 = [objc_allocWithZone(type metadata accessor for EVChargingMoreButtonViewModel()) init];
  [v4 setViewModel_];

  v6 = [v4 viewModel];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v10[4] = sub_1C564C854;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1C564A8C4;
  v10[3] = &block_descriptor_2;
  v8 = _Block_copy(v10);

  [v6 setActionBlock_];
  _Block_release(v8);
  swift_unknownObjectRelease();
  return v4;
}

void sub_1C564A8C4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_1C564AA0C()
{
  v1 = OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() _mapkit_preferredFontForTextStyleInTableViewCell_weight_];
    [v4 setFont_];

    v6 = [objc_opt_self() labelColor];
    [v4 setTextColor_];

    [v4 setAdjustsFontForContentSizeCategory_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1C564AB38()
{
  v1 = OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___iconView;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___iconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___iconView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setContentMode_];

    v5 = [objc_opt_self() labelColor];
    [v4 setTintColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_1C564AC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___iconView] = 0;
  v10 = &v4[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView_title];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v4[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView_iconName];
  *v11 = a3;
  *(v11 + 1) = a4;
  v68.receiver = v4;
  v68.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v68, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = *&v12[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView_iconName + 8];
  v14 = v12;
  if (v13)
  {
    v15 = sub_1C564AB38();
    [v14 addSubview_];
  }

  v16 = sub_1C564AA0C();
  [v14 addSubview_];

  [v14 setDirectionalLayoutMargins_];
  if (*&v14[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView_iconName + 8])
  {
    v67 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C5868600;
    v18 = sub_1C564AB38();
    v19 = [v18 leadingAnchor];

    v20 = [v14 layoutMarginsGuide];
    v21 = [v20 leadingAnchor];

    v22 = [v19 constraintEqualToAnchor_];
    *(v17 + 32) = v22;
    v23 = OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___iconView;
    v24 = [*&v14[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___iconView] centerYAnchor];
    v25 = [v14 &selRef_localizedStringForKey_value_table_ + 1];
    v26 = [v25 centerYAnchor];

    v27 = [v24 constraintEqualToAnchor_];
    *(v17 + 40) = v27;
    v28 = [*&v14[v23] widthAnchor];
    v29 = [v28 constraintEqualToConstant_];

    *(v17 + 48) = v29;
    v30 = [*&v14[v23] heightAnchor];
    v31 = [v30 constraintEqualToConstant_];

    *(v17 + 56) = v31;
    sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
    v32 = sub_1C584F750();

    [v67 activateConstraints_];

    v33 = sub_1C564AA0C();
    v34 = [v33 leadingAnchor];

    v35 = [*&v14[v23] &selRef_transitionDuration_ + 4];
    v36 = [v34 constraintEqualToAnchor:v35 constant:8.0];
  }

  else
  {
    v37 = sub_1C564AA0C();
    v34 = [v37 leadingAnchor];

    v38 = [v14 layoutMarginsGuide];
    v35 = [v38 leadingAnchor];

    v36 = [v34 constraintEqualToAnchor_];
  }

  v39 = v36;

  [v39 setActive_];
  v40 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1C58679B0;
  v42 = sub_1C564AA0C();
  v43 = [v42 trailingAnchor];

  v44 = [v14 layoutMarginsGuide];
  v45 = [v44 trailingAnchor];

  v46 = [v43 constraintEqualToAnchor_];
  *(v41 + 32) = v46;
  v47 = OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___titleLabel;
  v48 = [*&v14[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___titleLabel] topAnchor];
  v49 = [v14 &selRef_localizedStringForKey_value_table_ + 1];
  v50 = [v49 topAnchor];

  v51 = [v48 constraintEqualToAnchor_];
  *(v41 + 40) = v51;
  v52 = [*&v14[v47] bottomAnchor];
  v53 = [v14 &selRef_localizedStringForKey_value_table_ + 1];
  v54 = [v53 bottomAnchor];

  v55 = [v52 constraintEqualToAnchor_];
  *(v41 + 48) = v55;
  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  v56 = sub_1C584F750();

  [v40 activateConstraints_];

  v57 = sub_1C564AA0C();
  if (*&v14[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView_title + 8])
  {
    v58 = *&v14[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView_title];
    v59 = sub_1C584F630();
  }

  else
  {
    v59 = 0;
  }

  [v57 setText_];

  if (*&v14[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView_iconName + 8])
  {
    v60 = *&v14[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView_iconName];
    v61 = sub_1C564AB38();
    v62 = objc_opt_self();
    v63 = sub_1C584F630();
    v64 = [v62 _mapsui_systemImageNamed_];

    v65 = [v64 imageWithRenderingMode_];
    [v61 setImage_];
  }

  return v14;
}