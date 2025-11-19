uint64_t sub_228900694(uint64_t result, int a2, int a3)
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

uint64_t sub_2289006E4(uint64_t *a1, char a2, void *a3, unint64_t a4)
{
  v14 = sub_2289016D4(a1);
  v7 = v6;
  if (a4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22892F588())
  {
    v9 = 0;
    while (1)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AAC3CC0](v9, a4);
      }

      else
      {
        if (v9 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v10 = *(a4 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v17 = v10;
      sub_228901974(&v17, v14, v7, a1, a2 & 1, a3);

      ++v9;
      if (v12 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_22890080C(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_22892EDE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1;
    sub_22892EDC8();
    v13 = a1;

    v14 = sub_22892EDD8();
    v15 = sub_22892F378();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29 = v27;
      *v16 = 136446722;
      *(v16 + 4) = sub_2288B748C(0xD00000000000001DLL, 0x8000000228932520, &v29);
      *(v16 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v25 = &v25;
      v18 = *(*(v28 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      v26 = a2;
      (*(v20 + 16))(&v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      v21 = sub_22892F0D8();
      v23 = sub_2288B748C(v21, v22, &v29);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      *(v16 + 24) = sub_2288B748C(v26, a3, &v29);
      _os_log_impl(&dword_2288B2000, v14, v15, "[%{public}s] error invalidating relevance %{public}s for widget of kind %{public}s", v16, 0x20u);
      v24 = v27;
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v24, -1, -1);
      MEMORY[0x22AAC47E0](v16, -1, -1);
    }

    else
    {
    }

    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

void sub_228900B08(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void *sub_228900B80(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_228901F30(0, &unk_2813DE9E0, &type metadata for BalanceWidgetReloadReason, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_228900C0C(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
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
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
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

uint64_t sub_228900D08(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22892F7D8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22892F248();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_228900ED0(v7, v8, a1, v4);
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
    return sub_228900E00(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_228900E00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_22892F818(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_228900ED0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_228916EB0(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2289014AC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22892F818();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22892F818();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2288D605C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2288D605C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2289014AC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_228916EB0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_228916E24(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_22892F818(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_2289014AC(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_22892F818() & 1) != 0)
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
      if (!v21 && (sub_22892F818() & 1) != 0)
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

char *sub_2289016D4(uint64_t *a1)
{
  v1 = a1[2];
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    v6 = MEMORY[0x277D84F90];
    v7 = *(MEMORY[0x277D84F90] + 16);
    if (v7)
    {
LABEL_4:
      v25[0] = v2;
      v24 = v6;
      sub_2288D677C(0, v7, 0);
      v8 = v24;
      v9 = 32;
      v10 = v25[0];
      v11 = "SleepingSampleTypesAdded";
      do
      {
        v12 = 0xD000000000000018;
        if (*(v8 + v9) == 1)
        {
          v13 = "SleepingSampleTypesRemoved";
        }

        else
        {
          v12 = 0xD00000000000001ALL;
          v13 = "tion";
        }

        if (*(v8 + v9))
        {
          v14 = v12;
        }

        else
        {
          v14 = 0xD000000000000010;
        }

        if (*(v8 + v9))
        {
          v15 = v13;
        }

        else
        {
          v15 = v11;
        }

        v25[0] = v10;
        v17 = *(v10 + 2);
        v16 = *(v10 + 3);
        if (v17 >= v16 >> 1)
        {
          v23 = v11;
          sub_2288D677C((v16 > 1), v17 + 1, 1);
          v11 = v23;
          v8 = v24;
          v10 = v25[0];
        }

        *(v10 + 2) = v17 + 1;
        v18 = &v10[16 * v17];
        *(v18 + 4) = v14;
        *(v18 + 5) = v15 | 0x8000000000000000;
        ++v9;
        --v7;
      }

      while (v7);

      goto LABEL_20;
    }

LABEL_19:

    v10 = MEMORY[0x277D84F90];
LABEL_20:
    v25[0] = v10;

    sub_2289002D8(v25);

    v25[0] = 0x2065636E616C6162;
    v25[1] = 0xE90000000000005BLL;
    sub_228901F30(0, &qword_2813DED10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_228901EB4();
    v19 = sub_22892F008();
    v21 = v20;

    MEMORY[0x22AAC3770](v19, v21);

    MEMORY[0x22AAC3770](93, 0xE100000000000000);
    return v25[0];
  }

  v4 = sub_228900B80(a1[2], 0);
  v5 = sub_228900C0C(v25, v4 + 32, v1, a1);

  sub_2288D3D50();
  if (v5 == v1)
  {
    v6 = v4;
    v7 = v4[2];
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_228901974(id *a1, uint64_t a2, unint64_t a3, uint64_t *a4, int a5, void *a6)
{
  v48 = a6;
  v46 = a5;
  v42 = a2;
  v45 = sub_22892EDE8();
  v51 = *(v45 - 8);
  v9 = *(v51 + 64);
  v10 = MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v43 = *a1;
  v14 = [v43 kind];
  if (!v14)
  {
    sub_22892F0C8();
    v14 = sub_22892F098();
  }

  v15 = sub_22892F0C8();
  v17 = v16;
  sub_22892EDC8();

  v18 = sub_22892EDD8();
  v19 = sub_22892F398();

  v20 = os_log_type_enabled(v18, v19);
  v47 = v14;
  v49 = v15;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v41 = a4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v40 = a3;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136446722;
    *(v22 + 4) = sub_2288B748C(0xD00000000000001DLL, 0x8000000228932520, aBlock);
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_2288B748C(v15, v17, aBlock);
    *(v22 + 22) = 2082;
    *(v22 + 24) = sub_2288B748C(v42, v40, aBlock);
    _os_log_impl(&dword_2288B2000, v18, v19, "[%{public}s] reloading widget for kind %{public}s with reason: %{public}s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v24, -1, -1);
    v25 = v22;
    a4 = v41;
    MEMORY[0x22AAC47E0](v25, -1, -1);
  }

  v26 = *(v51 + 8);
  v27 = v45;
  v26(v13, v45);
  sub_2289016D4(a4);
  v28 = sub_22892F098();

  v29 = v44;
  sub_22892EDC8();

  v30 = sub_22892EDD8();
  v31 = sub_22892F398();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v32 = 136446466;
    *(v32 + 4) = sub_2288B748C(0xD00000000000001DLL, 0x8000000228932520, aBlock);
    *(v32 + 12) = 2082;
    *(v32 + 14) = sub_2288B748C(v49, v17, aBlock);
    _os_log_impl(&dword_2288B2000, v30, v31, "[%{public}s] invalidating widget relevances for kind %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v33, -1, -1);
    MEMORY[0x22AAC47E0](v32, -1, -1);
  }

  v26(v29, v27);
  v34 = v47;
  if (v46)
  {
    sub_22892E3A8();
  }

  else
  {
    sub_22892E3E8();
  }

  v35 = v49;
  v36 = sub_22892F098();

  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *(v37 + 24) = v17;
  aBlock[4] = sub_228901E9C;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228900B08;
  aBlock[3] = &block_descriptor_7;
  v38 = _Block_copy(aBlock);

  [v48 invalidateRelevancesOfKind:v34 inBundle:v36 completion:v38];
  _Block_release(v38);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_228901EB4()
{
  result = qword_2813DED08;
  if (!qword_2813DED08)
  {
    sub_228901F30(255, &qword_2813DED10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DED08);
  }

  return result;
}

void sub_228901F30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

char *sub_228901F80(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22892F588();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2288D6714(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x22AAC3CC0](i, a1);
        sub_2288BC0FC(0, &qword_2813DEC18, 0x277D10B70);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2288D6714((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_2288DDB00(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_2288BC0FC(0, &qword_2813DEC18, 0x277D10B70);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2288D6714((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_2288DDB00(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_22890217C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v3 = sub_22892E048();
  v138 = *(v3 - 8);
  v139 = v3;
  v4 = *(v138 + 64);
  MEMORY[0x28223BE20](v3);
  v137 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22892E5A8();
  v135 = *(v6 - 8);
  v136 = v6;
  v7 = *(v135 + 64);
  MEMORY[0x28223BE20](v6);
  v134 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BC064(0, &qword_2813DFEE0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v141 = &v119 - v11;
  v12 = sub_22892DEF8();
  v144 = *(v12 - 8);
  v145 = v12;
  v13 = *(v144 + 64);
  MEMORY[0x28223BE20](v12);
  v142 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_22892E8D8();
  v150 = *(v146 - 8);
  v15 = *(v150 + 8);
  v16 = MEMORY[0x28223BE20](v146);
  v18 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v119 - v19;
  v148 = sub_22892E948();
  v151 = *(v148 - 8);
  v21 = *(v151 + 64);
  MEMORY[0x28223BE20](v148);
  v23 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22892E638();
  v149 = *(v24 - 8);
  v25 = *(v149 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v131 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v129 = &v119 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v130 = &v119 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v140 = &v119 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v119 - v34;
  v36 = sub_22892EFA8();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = a1;
  sub_22892E5E8();
  sub_228905190(&unk_2813DEE10, MEMORY[0x277CCB6A8]);
  LOBYTE(a1) = sub_22892F088();
  (*(v37 + 8))(v40, v36);
  if ((a1 & 1) == 0)
  {
    v63 = 1;
    v64 = v147;
    v48 = v149;
    return (*(v48 + 56))(v64, v63, 1, v24);
  }

  v154 = MEMORY[0x277D84F90];
  v41 = sub_228905190(&qword_2813DFE78, MEMORY[0x277D0FF98]);
  v42 = MEMORY[0x277D0FF98];
  sub_2288BC064(0, &qword_2813DED30, MEMORY[0x277D0FF98], MEMORY[0x277D83940]);
  sub_2289051D8(&qword_2813DED28, &qword_2813DED30, v42);
  v122 = v41;
  sub_22892F548();
  sub_22892E6C8();
  sub_22892E8E8();
  v43 = *(v151 + 8);
  v151 += 8;
  v133 = v43;
  v43(v23, v148);
  v44 = v150;
  v45 = *(v150 + 13);
  v123 = *MEMORY[0x277D10058];
  v46 = v146;
  v125 = v150 + 104;
  v124 = v45;
  v45(v18);
  LOBYTE(v42) = sub_22892E8C8();
  v47 = *(v44 + 1);
  v126 = v18;
  v47(v18, v46);
  v128 = v20;
  v150 = v44 + 8;
  v127 = v47;
  v47(v20, v46);
  v48 = v149;
  v49 = v35;
  if (v42)
  {
    goto LABEL_32;
  }

  sub_22892E668();
  v50 = v128;
  sub_22892E8E8();
  v133(v23, v148);
  v51 = v126;
  v52 = v146;
  v124(v126, v123, v146);
  v53 = sub_22892E8C8();
  v54 = v23;
  v55 = v24;
  v56 = v127;
  v127(v51, v52);
  v56(v50, v52);
  v24 = v55;
  v23 = v54;
  if (v53)
  {
LABEL_32:
    v57 = sub_228903314();
    if (v57 != 2)
    {
      v58 = v57;
      v59 = sub_228903690();
      if (v59)
      {
        v60 = v59;
        v61 = [v59 state];

        v62 = v61 != 0;
        if ((v58 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_10:
        if (!v62)
        {
          v65 = v140;
          sub_22892E618();
          v66 = MEMORY[0x277D0FF98];
          sub_228905190(&qword_27D85BC20, MEMORY[0x277D0FF98]);
          sub_22892F1E8();
          v67 = *(v48 + 8);
          v67(v49, v24);
          sub_22892F1E8();
          v154 = v152 | v153;
          sub_228905190(&qword_27D85BC28, v66);
          sub_22892F938();
          v67(v65, v24);
        }

        goto LABEL_12;
      }

      v62 = 0;
      if (v58)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_12:
  sub_22892E6D8();
  v68 = v141;
  sub_22892EC08();
  v70 = v144;
  v69 = v145;
  v71 = (*(v144 + 48))(v68, 1, v145);
  v132 = v49;
  if (v71 == 1)
  {
    sub_2289048EC(v68);
  }

  else
  {
    (*(v70 + 32))(v142, v68, v69);
    v72 = v140;
    sub_22892E618();
    v73 = sub_22892F508();
    v74 = *(v48 + 8);
    v121 = v48 + 8;
    v120 = v74;
    v74(v72, v24);
    v75 = v148;
    v76 = v133;
    if ((v73 & 1) == 0)
    {
      sub_22892E6C8();
      v77 = v75;
      v78 = v128;
      sub_22892E8E8();
      v76(v23, v77);
      v79 = v126;
      v80 = v146;
      v124(v126, v123, v146);
      v81 = sub_22892E8C8();
      v141 = v24;
      v82 = v127;
      v127(v79, v80);
      v83 = v78;
      v75 = v77;
      v82(v83, v80);
      v24 = v141;
      v76 = v133;
      if (v81)
      {
        sub_22892E658();
        v84 = v128;
        sub_22892E8E8();
        v76(v23, v77);
        v85 = v126;
        v86 = v146;
        v124(v126, *MEMORY[0x277D10050], v146);
        sub_228905190(&unk_27D85BC30, MEMORY[0x277D10060]);
        v87 = sub_22892F088();
        v88 = v127;
        v127(v85, v86);
        v89 = v84;
        v75 = v77;
        v88(v89, v86);
        v24 = v141;
        if ((v87 & 1) == 0)
        {
          sub_22892E668();
          v90 = v128;
          sub_22892E8E8();
          v76(v23, v77);
          v91 = sub_22892E8B8();
          v92 = v90;
          v75 = v77;
          v127(v92, v146);
          if ((v91 & 1) == 0)
          {
            sub_22892E5D8();
            v93 = v128;
            sub_22892E8E8();
            v76(v23, v77);
            v94 = sub_22892E8B8();
            v95 = v93;
            v75 = v77;
            v127(v95, v146);
            if ((v94 & 1) == 0)
            {
              v96 = v140;
              sub_22892E628();
              v97 = MEMORY[0x277D0FF98];
              sub_228905190(&qword_27D85BC20, MEMORY[0x277D0FF98]);
              v150 = v23;
              v98 = v132;
              sub_22892F1E8();
              v99 = v120;
              v120(v98, v24);
              sub_22892F1E8();
              v154 = v152 | v153;
              sub_228905190(&qword_27D85BC28, v97);
              v100 = v148;
              sub_22892F938();
              v99(v96, v24);
              v75 = v100;
              sub_22892E6C8();
              v101 = v134;
              sub_22892E938();
              v76(v150, v75);
              v102 = v137;
              sub_22892E578();
              (*(v135 + 8))(v101, v136);
              v103 = sub_228903794(v142, v102);
              v104 = v102;
              v23 = v150;
              (*(v138 + 8))(v104, v139);
              if (v103 != 2 && (v103 & 1) != 0)
              {
                v105 = v140;
                sub_22892E628();
                v106 = *(v48 + 16);
                v106(v129, v132, v24);
                v106(v131, v105, v24);
                v107 = v130;
                sub_22892F528();
                v23 = v150;
                sub_22892F518();
                v108 = v120;
                v120(v107, v24);
                v75 = v148;
                v108(v140, v24);
              }
            }
          }
        }
      }
    }

    sub_22892E5D8();
    v109 = sub_22892E898();
    v76(v23, v75);
    if (v109)
    {
      sub_22892E6C8();
      v110 = v134;
      sub_22892E938();
      v76(v23, v75);
      v111 = v137;
      sub_22892E578();
      (*(v135 + 8))(v110, v136);
      v112 = v142;
      v113 = sub_2289043C8(v142, v111);
      (*(v138 + 8))(v111, v139);
      if (v113 != 2 && (v113 & 1) != 0)
      {
        v114 = v140;
        sub_22892E608();
        v115 = MEMORY[0x277D0FF98];
        sub_228905190(&qword_27D85BC20, MEMORY[0x277D0FF98]);
        v116 = v132;
        sub_22892F1E8();
        v117 = v120;
        v120(v116, v24);
        sub_22892F1E8();
        v154 = v152 | v153;
        sub_228905190(&qword_27D85BC28, v115);
        sub_22892F938();
        v117(v114, v24);
      }

      (*(v144 + 8))(v112, v145);
      v48 = v149;
    }

    else
    {
      (*(v144 + 8))(v142, v145);
    }
  }

  v64 = v147;
  (*(v48 + 32))(v147, v132, v24);
  v63 = 0;
  return (*(v48 + 56))(v64, v63, 1, v24);
}

uint64_t sub_228903314()
{
  v1 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  v3 = sub_22892EDE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1[2] onboardingCompletionManager];
  v9 = *MEMORY[0x277CCC090];
  v32[0] = 0;
  v10 = [v8 onboardingCompletionsForHighestVersionOfFeatureIdentifier:v9 error:v32];

  v11 = v32[0];
  if (v10)
  {
    sub_2288BC0FC(0, &unk_27D85BC40, 0x277CCD740);
    v12 = sub_22892F218();
    v13 = v11;

    if (v12 >> 62)
    {
      v14 = sub_22892F588();
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = v14 != 0;
  }

  else
  {
    v16 = v32[0];
    v17 = sub_22892DE38();

    swift_willThrow();
    sub_22892EDC8();
    v18 = v17;
    v19 = sub_22892EDD8();
    v20 = sub_22892F378();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v4;
      v24 = v23;
      v32[0] = v23;
      *v21 = 136446466;
      v25 = sub_22892F948();
      v27 = sub_2288B748C(v25, v26, v32);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2114;
      v28 = v17;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v29;
      *v22 = v29;
      _os_log_impl(&dword_2288B2000, v19, v20, "[%{public}s] Error reading onboarding completions: %{public}@", v21, 0x16u);
      sub_2288DDB10(v22);
      MEMORY[0x22AAC47E0](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AAC47E0](v24, -1, -1);
      MEMORY[0x22AAC47E0](v21, -1, -1);

      (*(v31 + 8))(v7, v3);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    result = 2;
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_228903690()
{
  v1 = [*(v0 + 16) profileExtensionsConformingToProtocol_];
  v2 = sub_22892F218();

  if (*(v2 + 16))
  {
    sub_2288B7664(v2 + 32, v6);

    sub_2288D1A38();
    if (swift_dynamicCast())
    {
      v3 = [objc_msgSend(v5 getPregnancyModelProvider)];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v3;
    }
  }

  else
  {
  }

  return 0;
}

BOOL sub_228903794(char *a1, void *a2)
{
  v103 = a2;
  v107 = a1;
  v89 = *v2;
  v93 = sub_22892EDE8();
  v92 = *(v93 - 8);
  v3 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v102 = v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_22892E5A8();
  v90 = *(v91 - 8);
  v5 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v98 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22892E048();
  v108 = *(v7 - 8);
  v109 = v7;
  v8 = v108[8];
  v9 = MEMORY[0x28223BE20](v7);
  v97 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v86 - v11;
  v13 = sub_22892EFA8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v104 = v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v86 - v18;
  v20 = sub_22892DEF8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = sub_22892DDC8();
  v100 = *(v26 - 8);
  v101 = v26;
  v27 = *(v100 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v107;
  sub_22892DE48();
  (*(v21 + 16))(v25, v30, v20);
  sub_22892DD88();
  v96 = v14;
  v32 = *(v14 + 16);
  v31 = v14 + 16;
  v33 = v99;
  v105 = v19;
  v106 = v13;
  v94 = v32;
  v32(v19, &v99[OBJC_IVAR____TtC19HealthBalanceDaemon22OutlierContextProvider_targetDay], v13);
  v34 = v108[2];
  v107 = v12;
  v35 = v103;
  v103 = v108 + 2;
  v95 = v34;
  v34(v12, v35, v109);
  sub_2288BC0FC(0, &qword_2813DEC40, 0x277CCD830);
  v36 = *MEMORY[0x277CCCCD8];
  v37 = MEMORY[0x22AAC3A10]();
  v38 = *(v33 + 2);
  sub_2288DB154();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228930B00;
  *(inited + 32) = HDSampleEntityPredicateForDataType();
  v99 = v29;
  v40 = sub_22892DD58();
  v41 = HDSampleEntityPredicateForDateInterval();

  *(inited + 40) = v41;
  v110 = inited;
  sub_2289049D0(MEMORY[0x277D84F90], sub_228904FB0, sub_228904B38);
  sub_228901F80(v110);

  v42 = sub_22892F208();

  v43 = [objc_opt_self() predicateMatchingAllPredicates_];

  v44 = objc_allocWithZone(MEMORY[0x277D108A0]);
  v45 = v38;
  v46 = [v44 initForProfile:v45 quantityType:v37 predicate:v43 restrictedSourceEntities:0];

  v47 = MEMORY[0x22AAC3A10](v36);
  v48 = objc_opt_self();
  v49 = v46;
  v50 = [v48 calculatorForQuantityType:v47 intervalCollection:0 options:8 mergeStrategy:0 computationMethod:1];

  if (v50)
  {
    v87 = [objc_allocWithZone(MEMORY[0x277D108A8]) initWithProfile:v45 quantityType:v47];
    v51 = v104;
    v52 = v106;
    v88 = v47;
    v53 = v94;
    v94(v104, v105, v106);
    v86[1] = v31;
    v54 = v97;
    v55 = v109;
    v56 = v95;
    v95(v97, v107, v109);
    v57 = type metadata accessor for SleepingSampleAggregator();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    v60 = swift_allocObject();
    v53(v60 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex, v51, v52);
    v56(v60 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar, v54, v55);
    v61 = v60 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_builder;
    *v61 = 2;
    *(v61 + 8) = 1;
    *(v61 + 16) = 1;
    *(v60 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_calculator) = v50;
    *(v60 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_dataSource) = v49;
    v62 = v87;
    *(v60 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_sourceOrderProvider) = v87;
    v47 = v49;
    v49 = v50;
    [v49 setSourceOrderProvider_];
    [v49 setDataSource_];
  }

  else
  {
    v63 = v104;
    v64 = v106;
    v65 = v94;
    v94(v104, v105, v106);
    v66 = v97;
    v67 = v109;
    v68 = v95;
    v95(v97, v107, v109);
    v69 = type metadata accessor for SleepingSampleAggregator();
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    v72 = swift_allocObject();
    v65(v72 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex, v63, v64);
    v54 = v66;
    v73 = v72;
    v55 = v67;
    v68(v73 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar, v54, v67);
    v74 = v73 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_builder;
    *v74 = 2;
    *(v74 + 8) = 1;
    *(v74 + 16) = 1;
    *(v73 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_calculator) = 0;
    *(v73 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_dataSource) = 0;
    *(v73 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_sourceOrderProvider) = 0;
    [0 setSourceOrderProvider_];
    [0 setDataSource_];
  }

  v75 = v108[1];
  v75(v54, v55);
  v76 = *(v96 + 8);
  v77 = v106;
  v76(v104, v106);
  v75(v107, v55);
  v76(v105, v77);
  v78 = v98;
  sub_2288C9A18(v98);
  v79 = sub_22892E598();
  (*(v90 + 8))(v78, v91);
  if (v79)
  {
    v80 = objc_opt_self();
    v81 = v79;
    v82 = [v80 appleEffortScoreUnit];
    [v81 doubleValueForUnit_];
    v84 = v83;

    (*(v100 + 8))(v99, v101);
    return v84 <= 3.0;
  }

  else
  {
    (*(v100 + 8))(v99, v101);

    return 0;
  }
}

uint64_t sub_2289043C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v28[1] = *v3;
  v5 = sub_22892EDE8();
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v28[2] = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892E048();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22892DEF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22892EFA8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v3[2];
  (*(v23 + 16))(v21, v3 + OBJC_IVAR____TtC19HealthBalanceDaemon22OutlierContextProvider_targetDay);
  (*(v14 + 16))(v17, a1, v13);
  (*(v9 + 16))(v12, v31, v8);
  v24 = type metadata accessor for OxygenSaturationElevationContextProvider(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_228912BAC(v22, v21, v17, v12);
  LOBYTE(a1) = sub_228912958();

  return a1 & 1;
}

uint64_t sub_22890484C()
{
  result = sub_22892EFA8();
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

uint64_t sub_2289048EC(uint64_t a1)
{
  sub_2288BC064(0, &qword_2813DFEE0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2289049D0(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_22892F588();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = *v3;
  if (!(*v3 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v9, v7);
    result = v9 + v7;
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 0)
  {
    v18 = *v3;
  }

  v19 = sub_22892F588();
  v10 = __OFADD__(v19, v7);
  result = v19 + v7;
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_5:
  a2();
  v12 = *v3;
  v13 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v13 + 8 * *(v13 + 0x10) + 32, (*(v13 + 0x18) >> 1) - *(v13 + 0x10), a1);
  v15 = v14;

  if (v15 < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v15 < 1)
  {
LABEL_9:
    *v3 = v12;
    return result;
  }

  v16 = *(v13 + 16);
  v10 = __OFADD__(v16, v15);
  v17 = v16 + v15;
  if (!v10)
  {
    *(v13 + 16) = v17;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_228904AD0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2288BC0FC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_228904B38(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22892F588();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22892F588();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_228904AD0(0, &qword_27D85BC50, &qword_2813DEC18, 0x277D10B70, MEMORY[0x277D83940]);
          sub_22890506C();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_228904EA8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2288BC0FC(0, &qword_2813DEC18, 0x277D10B70);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_228904CE0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22892F588();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22892F588();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2288BC064(0, &qword_27D85BC60, sub_2288C351C, MEMORY[0x277D83940]);
          sub_2289051D8(&qword_27D85BC68, &qword_27D85BC60, sub_2288C351C);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_228904F28(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2288C351C();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_228904EA8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAC3CC0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_228905230;
  }

  __break(1u);
  return result;
}

void (*sub_228904F28(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAC3CC0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_228904FA8;
  }

  __break(1u);
  return result;
}

uint64_t sub_228904FB0(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_22892F588();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_22892F668();
    *v1 = result;
  }

  return result;
}

unint64_t sub_22890506C()
{
  result = qword_27D85BC58;
  if (!qword_27D85BC58)
  {
    sub_228904AD0(255, &qword_27D85BC50, &qword_2813DEC18, 0x277D10B70, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85BC58);
  }

  return result;
}

uint64_t sub_2289050F0(uint64_t a1)
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
    sub_22892F588();
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
  result = sub_22892F668();
  *v1 = result;
  return result;
}

uint64_t sub_228905190(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2289051D8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2288BC064(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_2289052AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, _OWORD *, _BYTE *))
{
  v7 = OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_dataType;
  v8 = *(a1 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_analyticsEnvironment + 48);
  v14[2] = *(a1 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_analyticsEnvironment + 32);
  v15[0] = v8;
  *(v15 + 9) = *(a1 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_analyticsEnvironment + 57);
  v9 = *(a1 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_analyticsEnvironment + 16);
  v14[0] = *(a1 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_analyticsEnvironment);
  v14[1] = v9;
  memcpy(__dst, (a1 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_summaryAnalytics), sizeof(__dst));

  v10 = a5(a1 + v7, v14, __dst);
  sub_2288DB7D0(v10);

  v11 = sub_22892EFB8();

  return v11;
}

uint64_t sub_2289053F8()
{
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_dataType;
  v2 = sub_22892E508();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_analyticsEnvironment + 8);
  v4 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_analyticsEnvironment + 40);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HealthBalanceAnalysisAnalyticsEvent()
{
  result = qword_2813DFCB8;
  if (!qword_2813DFCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228905508()
{
  result = sub_22892E508();
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

double sub_2289055AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22891C740(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_228905C50();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_2288D3C20((*(v12 + 56) + 40 * v9), a3);
    sub_228906048(v9, v12);
    *v4 = v12;
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

uint64_t sub_228905658(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_228908640();
  v36 = a2;
  result = sub_22892F778();
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
        sub_2288D3C20(v25, v37);
      }

      else
      {
        sub_2288D3D58(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_22892F8A8();
      sub_22892F0F8();
      result = sub_22892F8C8();
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
      result = sub_2288D3C20(v37, *(v8 + 56) + 40 * v16);
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

uint64_t sub_228905910(uint64_t a1, int a2)
{
  v3 = v2;
  v44 = sub_22892DDC8();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_2289086A8();
  v42 = a2;
  result = sub_22892F778();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v42)
      {
        (*v19)(v43, v28, v44);
      }

      else
      {
        (*v40)(v43, v28, v44);
        v29 = v26;
      }

      v30 = *(v12 + 40);
      result = sub_22892F458();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v43, v44);
      ++*(v12 + 16);
      v6 = v41;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v9 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

void *sub_228905C50()
{
  v1 = v0;
  sub_228908640();
  v2 = *v0;
  v3 = sub_22892F768();
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
        sub_2288D3D58(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2288D3C20(v25, *(v4 + 56) + v22);
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

id sub_228905DEC()
{
  v1 = v0;
  v31 = sub_22892DDC8();
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289086A8();
  v4 = *v0;
  v5 = sub_22892F768();
  v6 = v5;
  if (*(v4 + 16))
  {
    v28[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v12;
    v13 = 1 << *(v4 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v4 + 64);
    v16 = (v13 + 63) >> 6;
    v28[1] = v33 + 32;
    v28[2] = v33 + 16;
    for (i = v4; v15; v4 = i)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = v17 | (v11 << 6);
      v21 = *(v4 + 56);
      v22 = *(*(v4 + 48) + 8 * v20);
      v23 = v33;
      v24 = *(v33 + 72) * v20;
      v26 = v30;
      v25 = v31;
      (*(v33 + 16))(v30, v21 + v24, v31);
      v27 = v32;
      *(*(v32 + 48) + 8 * v20) = v22;
      (*(v23 + 32))(*(v27 + 56) + v24, v26, v25);
      result = v22;
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

        v1 = v28[0];
        v6 = v32;
        goto LABEL_21;
      }

      v19 = *(v8 + 8 * v11);
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

LABEL_21:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_228906048(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22892F558() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_22892F8A8();

      sub_22892F0F8();
      v15 = sub_22892F8C8();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_228906204(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v24) = a1;
  v25 = MEMORY[0x277D839B0];
  v26 = MEMORY[0x277D839C8];
  v9 = *a5;
  v11 = sub_22891C740(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_2288D3C20(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_228905C50();
    goto LABEL_7;
  }

  sub_228905658(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_22891C740(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_22892F858();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D839B0]);
  sub_228906988(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v24);
}

uint64_t sub_228906368(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v24 = a1;
  v25 = MEMORY[0x277D83B88];
  v26 = MEMORY[0x277D83BA8];
  v9 = *a5;
  v11 = sub_22891C740(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_2288D3C20(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_228905C50();
    goto LABEL_7;
  }

  sub_228905658(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_22891C740(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_22892F858();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D83B88]);
  sub_2289068F4(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v24);
}

uint64_t sub_2289064D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x277D837D0];
  v32 = MEMORY[0x277D837D0];
  v33 = MEMORY[0x277D837F8];
  *&v31 = a1;
  *(&v31 + 1) = a2;
  v11 = *a6;
  v13 = sub_22891C740(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_2288D3C20(&v31, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_228905C50();
    goto LABEL_7;
  }

  sub_228905658(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_22891C740(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_22892F858();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v31, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_228906A18(v13, a3, a4, *v28, v28[1], v19);

  return __swift_destroy_boxed_opaque_existential_0(&v31);
}

uint64_t sub_2289066C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v15 = *a5;
  v17 = sub_22891C740(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      __swift_destroy_boxed_opaque_existential_0(v24);
      return sub_2288D3C20(&v36, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_228905C50();
    goto LABEL_7;
  }

  sub_228905658(v20, a4 & 1);
  v26 = *a5;
  v27 = sub_22891C740(a2, a3);
  if ((v21 & 1) != (v28 & 1))
  {
LABEL_14:
    result = sub_22892F858();
    __break(1u);
    return result;
  }

  v17 = v27;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29 = v37;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v36, v37);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33);
  sub_228906AA8(v17, a2, a3, v33, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_0(&v36);
}

uint64_t sub_2289068F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83B88];
  v13 = MEMORY[0x277D83BA8];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2288D3C20(&v11, a5[7] + 40 * a1);
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

uint64_t sub_228906988(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  v13 = MEMORY[0x277D839C8];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2288D3C20(&v11, a5[7] + 40 * a1);
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

uint64_t sub_228906A18(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  v14 = MEMORY[0x277D837F8];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_2288D3C20(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_228906AA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_2288D3C20(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_228906B80(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = sub_22892E508();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v145 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = a3[2];
  v150 = a3[1];
  v131 = v10;
  v130 = a3[3];
  v129 = a3[7];
  v11 = a3[12];
  v128 = a3[11];
  v127 = v11;
  v126 = a3[13];
  v125 = a3[17];
  v12 = a3[22];
  v135 = a3[21];
  v134 = v12;
  v133 = a3[23];
  v132 = a3[27];
  v13 = a3[32];
  v139 = a3[31];
  v138 = v13;
  v137 = a3[33];
  v136 = a3[37];
  v14 = a3[42];
  v140 = a3[41];
  v149 = a3[43];
  v142 = a3[47];
  v157 = MEMORY[0x277D84F98];
  v146 = v15;
  v16 = *(v15 + 16);
  v148 = a1;
  v143 = v16;
  v144 = v15 + 16;
  v16(&v124 - v17, a1, v6);
  v147 = v6;
  v18 = sub_22892F0D8();
  v19 = MEMORY[0x277D837D0];
  v20 = MEMORY[0x277D837F8];
  v155 = MEMORY[0x277D837D0];
  v156 = MEMORY[0x277D837F8];
  *&v154 = v18;
  *(&v154 + 1) = v21;
  sub_2288D3C20(&v154, v152);
  v22 = v157;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v151 = v22;
  v24 = v153;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_2289064D0(*v28, v28[1], 0x63697274656DLL, 0xE600000000000000, isUniquelyReferenced_nonNull_native, &v151);
  __swift_destroy_boxed_opaque_existential_0(v152);
  v30 = v151;
  v157 = v151;
  v31 = a2[1];
  v141 = v14;
  if (v31)
  {
    v32 = *a2;
    v155 = v19;
    v156 = v20;
    *&v154 = v32;
    *(&v154 + 1) = v31;
    sub_2288D3C20(&v154, v152);

    v33 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v30;
    v34 = v153;
    v35 = __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
    v36 = *(*(v34 - 8) + 64);
    MEMORY[0x28223BE20](v35);
    v38 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v38);
    sub_2289066C0(v38, 0xD000000000000016, 0x8000000228933480, v33, &v151, v19, v20);
    __swift_destroy_boxed_opaque_existential_0(v152);
    v40 = v151;
  }

  else
  {
    sub_2289055AC(0xD000000000000016, 0x8000000228933480, &v154);
    sub_22890858C(&v154);
    v40 = v157;
  }

  v41 = MEMORY[0x277D839B0];
  v42 = *(a2 + 48);
  v43 = MEMORY[0x277D839C8];
  v155 = MEMORY[0x277D839B0];
  v156 = MEMORY[0x277D839C8];
  LOBYTE(v154) = v42;
  sub_2288D3C20(&v154, v152);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v40;
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
  sub_228906204(*v45, 0xD000000000000021, 0x80000002289334D0, v44, &v151);
  __swift_destroy_boxed_opaque_existential_0(v152);
  v46 = v151;
  v157 = v151;
  v47 = *(a2 + 49);
  if (v47 == 2)
  {
    sub_2289055AC(0xD00000000000001BLL, 0x8000000228933600, &v154);
    sub_22890858C(&v154);
  }

  else
  {
    v155 = v41;
    v156 = v43;
    LOBYTE(v154) = v47;
    sub_2288D3C20(&v154, v152);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v46;
    v49 = v153;
    v50 = __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
    v51 = *(*(v49 - 8) + 64);
    MEMORY[0x28223BE20](v50);
    v53 = &v124 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v54 + 16))(v53);
    sub_2289066C0(v53, 0xD00000000000001BLL, 0x8000000228933600, v48, &v151, v41, v43);
    __swift_destroy_boxed_opaque_existential_0(v152);
    v157 = v151;
  }

  v55 = MEMORY[0x277D83B88];
  v56 = MEMORY[0x277D83BA8];
  if (a2[9])
  {
    sub_2289055AC(0xD000000000000013, 0x8000000228933520, &v154);
    sub_22890858C(&v154);
    v57 = v157;
  }

  else
  {
    v58 = a2[8];
    v155 = MEMORY[0x277D83B88];
    v156 = MEMORY[0x277D83BA8];
    *&v154 = v58;
    sub_2288D3C20(&v154, v152);
    v59 = v157;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v59;
    v61 = v153;
    v62 = __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
    v63 = *(*(v61 - 8) + 64);
    MEMORY[0x28223BE20](v62);
    v65 = &v124 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v66 + 16))(v65);
    sub_2289066C0(v65, 0xD000000000000013, 0x8000000228933520, v60, &v151, v55, v56);
    __swift_destroy_boxed_opaque_existential_0(v152);
    v57 = v151;
  }

  v67 = v149;
  v68 = a2[7];
  v155 = v55;
  v156 = v56;
  *&v154 = v68;
  sub_2288D3C20(&v154, v152);
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v57;
  v70 = __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
  sub_228906368(*v70, 0xD00000000000001ALL, 0x80000002289336C0, v69, &v151);
  __swift_destroy_boxed_opaque_existential_0(v152);
  v155 = v55;
  v156 = v56;
  v71 = v151;
  *&v154 = v150;
  sub_2288D3C20(&v154, v152);
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v71;
  v73 = __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
  sub_228906368(*v73, 0xD00000000000001BLL, 0x8000000228934BA0, v72, &v151);
  __swift_destroy_boxed_opaque_existential_0(v152);
  v157 = v151;
  v74 = v145;
  v75 = v147;
  v143(v145, v148, v147);
  v76 = (*(v146 + 88))(v74, v75);
  if (v76 == *MEMORY[0x277D0FF50])
  {
    v77 = v55;
    v78 = v140;
    v79 = v142;
    v80 = v141;
  }

  else if (v76 == *MEMORY[0x277D0FF40])
  {
    v77 = v55;
    v78 = v139;
    v80 = v138;
    v67 = v137;
    v79 = v136;
  }

  else if (v76 == *MEMORY[0x277D0FF38])
  {
    v77 = v55;
    v78 = v135;
    v80 = v134;
    v67 = v133;
    v79 = v132;
  }

  else if (v76 == *MEMORY[0x277D0FF48])
  {
    v77 = v55;
    v78 = v128;
    v80 = v127;
    v67 = v126;
    v79 = v125;
  }

  else
  {
    if (v76 != *MEMORY[0x277D0FF30])
    {
      *&v154 = 0;
      *(&v154 + 1) = 0xE000000000000000;
      sub_22892F648();
      MEMORY[0x22AAC3770](0xD000000000000010, 0x8000000228934B60);
      sub_22892F718();
      result = sub_22892F738();
      __break(1u);
      return result;
    }

    v77 = v55;
    v80 = v131;
    v67 = v130;
    v79 = v129;
    v78 = v150;
  }

  v155 = v77;
  v156 = v56;
  *&v154 = v78;
  sub_2288D3C20(&v154, v152);
  v81 = v157;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v81;
  v83 = __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
  sub_228906368(*v83, 0xD00000000000001ELL, 0x8000000228934BC0, v82, &v151);
  __swift_destroy_boxed_opaque_existential_0(v152);
  v84 = v151;
  v155 = v77;
  v156 = v56;
  *&v154 = v80;
  sub_2288D3C20(&v154, v152);
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v84;
  v86 = __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
  sub_228906368(*v86, 0xD000000000000029, 0x8000000228934BE0, v85, &v151);
  __swift_destroy_boxed_opaque_existential_0(v152);
  v87 = v151;
  v155 = v77;
  v156 = v56;
  *&v154 = v67;
  sub_2288D3C20(&v154, v152);
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v87;
  v89 = __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
  sub_228906368(*v89, 0xD00000000000002ALL, 0x8000000228934C10, v88, &v151);
  __swift_destroy_boxed_opaque_existential_0(v152);
  v90 = v151;
  v157 = v151;
  v91 = v79;
  v92 = v79;
  if (v79 == 2)
  {
    sub_2289055AC(0x7461697665447369, 0xEB000000006E6F69, v152);
    sub_22890858C(v152);
LABEL_23:
    sub_2289055AC(0xD000000000000013, 0x8000000228934C40, v152);
    sub_22890858C(v152);
    v104 = MEMORY[0x277D837D0];
    if (v91 == 2)
    {
      sub_2289055AC(0x74654D646E756F62, 0xEB00000000646F68, v152);
      sub_22890858C(v152);
      return v157;
    }

    v106 = v157;
    goto LABEL_27;
  }

  v93 = MEMORY[0x277D839B0];
  v155 = MEMORY[0x277D839B0];
  v94 = MEMORY[0x277D839C8];
  v156 = MEMORY[0x277D839C8];
  LOBYTE(v154) = v79 & 1;
  sub_2288D3C20(&v154, v152);
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v90;
  v96 = v153;
  v97 = __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
  v98 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v100 = &v124 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v101 + 16))(v100);
  v102 = v95;
  v92 = v79;
  sub_2289066C0(v100, 0x7461697665447369, 0xEB000000006E6F69, v102, &v151, v93, v94);
  __swift_destroy_boxed_opaque_existential_0(v152);
  v103 = v151;
  v157 = v151;
  if ((v79 & 0xFF00) == 0x200)
  {
    goto LABEL_23;
  }

  v155 = v93;
  v156 = v94;
  LOBYTE(v154) = BYTE1(v79) & 1;
  sub_2288D3C20(&v154, v152);
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v103;
  v108 = v153;
  v109 = __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
  v110 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v112 = &v124 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v113 + 16))(v112);
  v92 = v79;
  sub_2289066C0(v112, 0xD000000000000013, 0x8000000228934C40, v107, &v151, v93, v94);
  __swift_destroy_boxed_opaque_existential_0(v152);
  v106 = v151;
  v104 = MEMORY[0x277D837D0];
LABEL_27:
  v114 = 7500137;
  if ((*&v92 & 0x10000) != 0)
  {
    v114 = 0x6E696772616DLL;
  }

  v115 = 0xE600000000000000;
  v155 = v104;
  v116 = MEMORY[0x277D837F8];
  v156 = MEMORY[0x277D837F8];
  if ((*&v92 & 0x10000) == 0)
  {
    v115 = 0xE300000000000000;
  }

  *&v154 = v114;
  *(&v154 + 1) = v115;
  sub_2288D3C20(&v154, v152);
  v117 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v106;
  v118 = v153;
  v119 = __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
  v120 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v122 = &v124 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v123 + 16))(v122);
  sub_2289066C0(v122, 0x74654D646E756F62, 0xEB00000000646F68, v117, &v151, v104, v116);
  __swift_destroy_boxed_opaque_existential_0(v152);
  return v151;
}

uint64_t sub_228907AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a1;
  v5 = a3 + 288;
  v6 = sub_22892E508();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *(a3 + 40);
  v78 = *(a3 + 48);
  v76 = *(a3 + 120);
  v75 = *(a3 + 128);
  v83 = *(a3 + 200);
  v82 = *(a3 + 208);
  v11 = *(a3 + 280);
  v86 = *(a3 + 288);
  v12 = *(a3 + 360);
  v87 = v11;
  v88 = v12;
  v13 = *(v5 + 80);
  v77 = *(a3 + 72);
  v74 = *(a3 + 56);
  v73[1] = *(a3 + 152);
  v73[0] = *(a3 + 136);
  v81 = *(a3 + 232);
  v80 = *(a3 + 216);
  v85 = *(v5 + 24);
  v84 = *(v5 + 8);
  v14 = *(v5 + 104);
  v90 = *(v5 + 88);
  v91 = v14;
  v15 = MEMORY[0x277D84F98];
  v100 = MEMORY[0x277D84F98];
  if (*(a2 + 24))
  {
    sub_2289055AC(6645601, 0xE300000000000000, &v96);
    sub_22890858C(&v96);
    v16 = v100;
  }

  else
  {
    v17 = *(a2 + 16);
    v98 = MEMORY[0x277D83B88];
    v99 = MEMORY[0x277D83BA8];
    *&v96 = v17;
    sub_2288D3C20(&v96, &v93);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v15;
    v19 = v95;
    v20 = __swift_mutable_project_boxed_opaque_existential_1(&v93, v95);
    v21 = *(*(v19 - 8) + 64);
    MEMORY[0x28223BE20](v20);
    v23 = v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v23);
    sub_2289066C0(v23, 6645601, 0xE300000000000000, isUniquelyReferenced_nonNull_native, &v92, MEMORY[0x277D83B88], MEMORY[0x277D83BA8]);
    __swift_destroy_boxed_opaque_existential_0(&v93);
    v16 = v92;
  }

  v25 = *(a2 + 32);
  v26 = *(a2 + 40);
  v98 = MEMORY[0x277D837D0];
  v99 = MEMORY[0x277D837F8];
  *&v96 = v25;
  *(&v96 + 1) = v26;
  sub_2288D3C20(&v96, &v93);

  LOBYTE(v26) = swift_isUniquelyReferenced_nonNull_native();
  v92 = v16;
  v27 = v95;
  v28 = __swift_mutable_project_boxed_opaque_existential_1(&v93, v95);
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  sub_2289064D0(*v31, v31[1], 0x6369676F6C6F6962, 0xED00007865536C61, v26, &v92);
  __swift_destroy_boxed_opaque_existential_0(&v93);
  v100 = v92;
  (*(v7 + 16))(v10, v89, v6);
  v33 = (*(v7 + 88))(v10, v6);
  if (v33 == *MEMORY[0x277D0FF50])
  {
    v34 = v88;
  }

  else
  {
    if (v33 == *MEMORY[0x277D0FF40])
    {
      v34 = v87;
      v13 = v86;
      v90 = v84;
      v35 = &v102;
    }

    else if (v33 == *MEMORY[0x277D0FF38])
    {
      v34 = v83;
      v13 = v82;
      v90 = v80;
      v35 = &v101;
    }

    else if (v33 == *MEMORY[0x277D0FF48])
    {
      v34 = v76;
      v13 = v75;
      v90 = v73[0];
      v35 = &v94;
    }

    else
    {
      if (v33 != *MEMORY[0x277D0FF30])
      {
        *&v96 = 0;
        *(&v96 + 1) = 0xE000000000000000;
        sub_22892F648();
        MEMORY[0x22AAC3770](0xD000000000000010, 0x8000000228934B60);
        sub_22892F718();
        result = sub_22892F738();
        __break(1u);
        return result;
      }

      v34 = v79;
      v13 = v78;
      v90 = v74;
      v35 = &v97;
    }

    v91 = *(v35 - 16);
  }

  if (v13)
  {
    sub_2289055AC(0xD000000000000016, 0x8000000228934B80, &v96);
    sub_22890858C(&v96);
  }

  else
  {
    v36 = MEMORY[0x277D83B88];
    v37 = MEMORY[0x277D83BA8];
    v98 = MEMORY[0x277D83B88];
    v99 = MEMORY[0x277D83BA8];
    *&v96 = v34;
    sub_2288D3C20(&v96, &v93);
    v38 = v100;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v38;
    v40 = v95;
    v41 = __swift_mutable_project_boxed_opaque_existential_1(&v93, v95);
    v42 = *(*(v40 - 8) + 64);
    MEMORY[0x28223BE20](v41);
    v44 = v73 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v45 + 16))(v44);
    sub_2289066C0(v44, 0xD000000000000016, 0x8000000228934B80, v39, &v92, v36, v37);
    __swift_destroy_boxed_opaque_existential_0(&v93);
    v100 = v92;
  }

  if (v90 == 2)
  {
    sub_2289055AC(0x646E756F42776F6CLL, 0xE800000000000000, &v93);
    sub_22890858C(&v93);
    sub_2289055AC(0x6E756F4268676968, 0xE900000000000064, &v93);
    sub_22890858C(&v93);
    sub_2289055AC(5394761, 0xE300000000000000, &v93);
    sub_22890858C(&v93);
    return v100;
  }

  else
  {
    v47 = MEMORY[0x277D839F8];
    v48 = MEMORY[0x277D83A28];
    v98 = MEMORY[0x277D839F8];
    v99 = MEMORY[0x277D83A28];
    *&v96 = *(&v90 + 1);
    sub_2288D3C20(&v96, &v93);
    v49 = v100;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v49;
    v51 = v95;
    v52 = __swift_mutable_project_boxed_opaque_existential_1(&v93, v95);
    v53 = *(*(v51 - 8) + 64);
    MEMORY[0x28223BE20](v52);
    v55 = v73 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v56 + 16))(v55);
    sub_2289066C0(v55, 0x646E756F42776F6CLL, 0xE800000000000000, v50, &v92, v47, v48);
    __swift_destroy_boxed_opaque_existential_0(&v93);
    v57 = v92;
    v98 = v47;
    v99 = v48;
    *&v96 = v91;
    sub_2288D3C20(&v96, &v93);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v57;
    v59 = v95;
    v60 = __swift_mutable_project_boxed_opaque_existential_1(&v93, v95);
    v61 = *(*(v59 - 8) + 64);
    MEMORY[0x28223BE20](v60);
    v63 = v73 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v64 + 16))(v63);
    sub_2289066C0(v63, 0x6E756F4268676968, 0xE900000000000064, v58, &v92, v47, v48);
    __swift_destroy_boxed_opaque_existential_0(&v93);
    v65 = v92;
    v98 = v47;
    v99 = v48;
    *&v96 = *(&v91 + 1);
    sub_2288D3C20(&v96, &v93);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v65;
    v67 = v95;
    v68 = __swift_mutable_project_boxed_opaque_existential_1(&v93, v95);
    v69 = *(*(v67 - 8) + 64);
    MEMORY[0x28223BE20](v68);
    v71 = v73 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v72 + 16))(v71);
    sub_2289066C0(v71, 5394761, 0xE300000000000000, v66, &v92, v47, v48);
    __swift_destroy_boxed_opaque_existential_0(&v93);
    return v92;
  }
}

uint64_t sub_22890858C(uint64_t a1)
{
  sub_2289085E8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2289085E8()
{
  if (!qword_2813DED60)
  {
    sub_2288D3BBC();
    v0 = sub_22892F498();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DED60);
    }
  }
}

void sub_228908640()
{
  if (!qword_2813DEA58)
  {
    sub_2288D3BBC();
    v0 = sub_22892F798();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DEA58);
    }
  }
}

void sub_2289086A8()
{
  if (!qword_2813DEA48)
  {
    sub_228908724();
    sub_22892DDC8();
    sub_2288E716C();
    v0 = sub_22892F798();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DEA48);
    }
  }
}

unint64_t sub_228908724()
{
  result = qword_2813DEC58;
  if (!qword_2813DEC58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813DEC58);
  }

  return result;
}

id sub_228908770(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC19HealthBalanceDaemon31AnalyticsDailyMultiEventManager_eventSubmissionManager] = a2;
  v11 = &v5[OBJC_IVAR____TtC19HealthBalanceDaemon31AnalyticsDailyMultiEventManager_unitTest_didObserveAnalyticsSubmissionCoordinator];
  *v11 = a3;
  v11[1] = a4;
  v12 = a2;
  sub_2288C0764(a3);
  v17.receiver = v5;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, sel_init);
  v14 = [a1 daemon];
  if (v14)
  {
    v15 = v14;
    [v14 registerDaemonReadyObserver:v13 queue:0];
    sub_2288C751C(a3);
  }

  else
  {
    sub_2288C751C(a3);
  }

  return v13;
}

void sub_2289089F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_22892DE28();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

void sub_228908B30(void (*a1)(void, uint64_t, void *), uint64_t a2)
{
  v3 = v2;
  v182[55] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v7 = sub_22892E508();
  v166 = *(v7 - 8);
  v8 = *(v166 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v164 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v163 = &v143 - v12;
  MEMORY[0x28223BE20](v11);
  v160 = &v143 - v13;
  v14 = sub_22892EDE8();
  v169 = *(v14 - 8);
  v15 = *(v169 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v143 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v162 = &v143 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v153 = &v143 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v167 = &v143 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v143 - v28;
  v165 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_22892EDC8();
    v43 = sub_22892EDD8();
    v44 = sub_22892F378();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v182[0] = v46;
      *v45 = 136446210;
      v47 = sub_22892F948();
      v171 = v14;
      v49 = sub_2288B748C(v47, v48, v182);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_2288B2000, v43, v44, "[%{public}s] Profile not available, completing without submission", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AAC47E0](v46, -1, -1);
      MEMORY[0x22AAC47E0](v45, -1, -1);

      (*(v169 + 8))(v21, v171);
    }

    else
    {

      (*(v169 + 8))(v21, v14);
    }

    a1(0, 2, 0);
    goto LABEL_34;
  }

  v31 = Strong;
  v157 = a1;
  sub_22892EDC8();
  v32 = sub_22892EDD8();
  v33 = sub_22892F398();
  v34 = os_log_type_enabled(v32, v33);
  v170 = v7;
  v171 = v14;
  v156 = a2;
  v154 = v18;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v182[0] = v36;
    *v35 = 136446210;
    v37 = sub_22892F948();
    v39 = sub_2288B748C(v37, v38, v182);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_2288B2000, v32, v33, "[%{public}s] Submitting HealthBalanceDailyAnalyticsEvent", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x22AAC47E0](v36, -1, -1);
    MEMORY[0x22AAC47E0](v35, -1, -1);

    v40 = *(v169 + 8);
    v41 = v29;
    v42 = v171;
  }

  else
  {

    v40 = *(v169 + 8);
    v41 = v29;
    v42 = v14;
  }

  v168 = v40;
  v40(v41, v42);
  v50 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (v50)
  {
    v51 = v50;
    v52 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
    if (v52)
    {
      v53 = v52;
      sub_22892E268();
      v54 = sub_22892E258();
      v55 = objc_allocWithZone(MEMORY[0x277D62528]);
      v56 = sub_22892F098();
      v57 = [v55 initWithIdentifier:v56 healthStore:0 options:2];

      type metadata accessor for HealthBalanceDailyAnalyticsEvent();
      v58 = swift_allocObject();
      *(v58 + 64) = 0u;
      *(v58 + 80) = 0u;
      *(v58 + 96) = 0u;
      *(v58 + 112) = 0u;
      *(v58 + 121) = 0u;
      sub_228909A9C(v182);
      memcpy((v58 + 144), v182, 0x1B8uLL);
      *(v58 + 16) = v31;
      v59 = v31;
      *(v58 + 24) = [v59 notificationManager];
      *(v58 + 32) = v51;
      *(v58 + 40) = v53;
      *(v58 + 48) = v54;
      *(v58 + 56) = v57;
      v60 = *(v165 + OBJC_IVAR____TtC19HealthBalanceDaemon31AnalyticsDailyMultiEventManager_eventSubmissionManager);
      v174[0] = 0;
      v161 = v60;
      v61 = [v60 submitEvent:v58 error:v174];
      v62 = v174[0];
      if (v61)
      {
        v63 = *(v58 + 112);
        v176 = *(v58 + 96);
        v177[0] = v63;
        *(v177 + 9) = *(v58 + 121);
        v64 = *(v58 + 80);
        v175[0] = *(v58 + 64);
        v175[1] = v64;
        v179 = v175[0];
        v180 = v64;
        v181 = *(v58 + 96);
        v65 = *(v58 + 112);
        *(v178 + 9) = *(v58 + 121);
        v178[0] = v65;
        v66 = v171;
        v67 = v162;
        v158 = *(&v176 + 1);
        v146 = v58;
        if (!*(&v176 + 1) || (memcpy(v174, (v58 + 144), sizeof(v174)), sub_2288D3CB8(v174) == 1))
        {
          v68 = v62;
          sub_22892EDC8();
          v69 = sub_22892EDD8();
          v70 = sub_22892F378();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v174[0] = v72;
            *v71 = 136446210;
            v73 = sub_22892F948();
            v75 = v59;
            v76 = sub_2288B748C(v73, v74, v174);

            *(v71 + 4) = v76;
            v59 = v75;
            _os_log_impl(&dword_2288B2000, v69, v70, "[%{public}s] Daily event failed to populate, cannot continue", v71, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v72);
            MEMORY[0x22AAC47E0](v72, -1, -1);
            MEMORY[0x22AAC47E0](v71, -1, -1);

            v77 = v162;
          }

          else
          {

            v77 = v67;
          }

          v168(v77, v66);
          v157(0, 1, 0);

LABEL_34:
          v140 = *MEMORY[0x277D85DE8];
          return;
        }

        v144 = v59;
        v97 = v62;
        sub_228909AE8(v175, v173);
        v155 = sub_22892E4F8();
        v99 = v170;
        v100 = v160;
        v152 = *(v155 + 16);
        if (!v152)
        {
LABEL_31:

          sub_228909B4C(v175, sub_2288D1B4C);
          v131 = v153;
          sub_22892EDC8();
          v132 = sub_22892EDD8();
          v133 = sub_22892F398();
          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            v173[0] = v135;
            *v134 = 136446210;
            v136 = sub_22892F948();
            v138 = sub_2288B748C(v136, v137, v173);

            *(v134 + 4) = v138;
            _os_log_impl(&dword_2288B2000, v132, v133, "[%{public}s] All events submitted successfully", v134, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v135);
            MEMORY[0x22AAC47E0](v135, -1, -1);
            MEMORY[0x22AAC47E0](v134, -1, -1);
          }

          v168(v131, v171);
          v139 = v144;
          v157(0, 0, 0);

          goto LABEL_34;
        }

        v101 = 0;
        v150 = v155 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
        v102 = v166 + 16;
        v165 = (v166 + 8);
        v148 = (v166 + 32);
        v149 = v169 + 8;
        *&v98 = 136446466;
        v145 = v98;
        v151 = ObjectType;
        while (1)
        {
          if (v101 >= *(v155 + 16))
          {
            __break(1u);
          }

          v103 = *(v166 + 16);
          v103(v100, v150 + *(v166 + 72) * v101, v99);
          sub_22892EDC8();
          v104 = v163;
          v103(v163, v100, v99);
          v105 = sub_22892EDD8();
          v106 = sub_22892F398();
          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            v159 = v103;
            v108 = v104;
            v109 = v107;
            v147 = swift_slowAlloc();
            v173[0] = v147;
            *v109 = v145;
            v110 = sub_22892F948();
            v112 = v102;
            v113 = sub_2288B748C(v110, v111, v173);

            *(v109 + 4) = v113;
            *(v109 + 12) = 2080;
            v114 = v164;
            v159(v164, v108, v170);
            v115 = sub_22892F0D8();
            v117 = v116;
            v118 = v108;
            v103 = v159;
            v162 = *v165;
            (v162)(v118, v170);
            v119 = sub_2288B748C(v115, v117, v173);
            v102 = v112;

            *(v109 + 14) = v119;
            v99 = v170;
            _os_log_impl(&dword_2288B2000, v105, v106, "[%{public}s] Submitting HealthBalanceAnalysisAnalyticsEvent(%s)", v109, 0x16u);
            v120 = v147;
            swift_arrayDestroy();
            v121 = v120;
            v100 = v160;
            MEMORY[0x22AAC47E0](v121, -1, -1);
            MEMORY[0x22AAC47E0](v109, -1, -1);

            v168(v167, v171);
          }

          else
          {

            v162 = *v165;
            (v162)(v104, v99);
            v168(v167, v171);
            v114 = v164;
          }

          v103(v114, v100, v99);
          v122 = type metadata accessor for HealthBalanceAnalysisAnalyticsEvent();
          v123 = *(v122 + 48);
          v124 = *(v122 + 52);
          v125 = swift_allocObject();
          (*v148)(v125 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_dataType, v114, v99);
          v126 = v125 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_analyticsEnvironment;
          v127 = v180;
          *v126 = v179;
          *(v126 + 16) = v127;
          v128 = v158;
          *(v126 + 32) = v181;
          *(v126 + 40) = v128;
          *(v126 + 48) = v178[0];
          *(v126 + 57) = *(v178 + 9);
          memcpy((v125 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_summaryAnalytics), v174, 0x1B8uLL);
          v172[0] = 0;
          sub_228909AE8(v175, v173);
          v129 = [v161 submitEvent:v125 error:v172];

          v130 = v172[0];
          if (!v129)
          {
            break;
          }

          ++v101;
          (v162)(v100, v99);
          if (v152 == v101)
          {
            goto LABEL_31;
          }
        }

        v141 = v130;

        sub_228909B4C(v175, sub_2288D1B4C);
        v142 = v100;
        v79 = sub_22892DE38();

        swift_willThrow();

        (v162)(v142, v99);
        v59 = v144;
      }

      else
      {
        v78 = v174[0];
        v79 = sub_22892DE38();

        swift_willThrow();
      }

      v80 = v171;
      v81 = v154;
      sub_22892EDC8();
      v82 = v79;
      v83 = sub_22892EDD8();
      v84 = sub_22892F378();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v174[0] = v87;
        *v85 = 136446466;
        v88 = sub_22892F948();
        v90 = sub_2288B748C(v88, v89, v174);

        *(v85 + 4) = v90;
        *(v85 + 12) = 2114;
        v91 = v79;
        v92 = _swift_stdlib_bridgeErrorToNSError();
        *(v85 + 14) = v92;
        *v86 = v92;
        _os_log_impl(&dword_2288B2000, v83, v84, "[%{public}s] Error submitting event: %{public}@", v85, 0x16u);
        sub_228909B4C(v86, sub_2288D6D64);
        MEMORY[0x22AAC47E0](v86, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v87);
        MEMORY[0x22AAC47E0](v87, -1, -1);
        MEMORY[0x22AAC47E0](v85, -1, -1);

        v93 = v154;
        v94 = v171;
      }

      else
      {

        v93 = v81;
        v94 = v80;
      }

      v168(v93, v94);
      v95 = v157;
      v96 = v79;
      v95(0, 1, v79);

      goto LABEL_34;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_228909A9C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 3;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
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
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  return result;
}

uint64_t sub_228909AE8(uint64_t a1, uint64_t a2)
{
  sub_2288D1B4C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228909B4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_228909BAC@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  *(a1 + 56) = 2;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1;
  *(a1 + 136) = 2;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1;
  *(a1 + 216) = 2;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 288) = 1;
  *(a1 + 296) = 2;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 1;
  *(a1 + 376) = 2;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  return result;
}

uint64_t sub_228909C20(uint64_t a1)
{
  v3 = sub_22892E508();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v4[13];
  v8(v7, *MEMORY[0x277D0FF30], v3);
  sub_22890B5CC(a1, v7);
  v9 = v4[1];
  v9(v7, v3);
  v8(v7, *MEMORY[0x277D0FF48], v3);
  sub_22890B5CC(a1, v7);
  v9(v7, v3);
  v8(v7, *MEMORY[0x277D0FF38], v3);
  sub_22890B5CC(a1, v7);
  v9(v7, v3);
  v8(v7, *MEMORY[0x277D0FF40], v3);
  sub_22890B5CC(a1, v7);
  v9(v7, v3);
  v8(v7, *MEMORY[0x277D0FF50], v3);
  sub_22890B5CC(a1, v7);
  v9(v7, v3);
  result = sub_22892E6B8();
  if (result)
  {
    v11 = *(v1 + 408);
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    *(v1 + 408) = v13;
  }

  if (sub_22892E6B8())
  {
    v14 = 3;
  }

  else
  {
    sub_22892E6D8();
    if (sub_22892EC28())
    {
      v14 = 2;
    }

    else if (sub_22892E698())
    {
      v14 = 4;
    }

    else
    {
      v14 = 1;
    }
  }

  *(v1 + 416) = v14;
  result = MEMORY[0x22AAC2CF0]();
  if (result >= 1)
  {
    v15 = *(v1 + 424);
    v12 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (v12)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    *(v1 + 424) = v16;
    *(v1 + 416) = 5;
  }

  v17 = MEMORY[0x22AAC2D10]();
  result = sub_22892E228();
  if (v17 < result)
  {
LABEL_17:
    if (!__OFADD__(*v1, 1))
    {
      ++*v1;
      return result;
    }

    __break(1u);
    goto LABEL_20;
  }

  v18 = *(v1 + 432);
  v12 = __OFADD__(v18, 1);
  v19 = v18 + 1;
  if (!v12)
  {
    *(v1 + 432) = v19;
    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_228909F24()
{
  v1 = v0[1];
  v2 = v0[11];
  v3 = v0[21];
  v4 = v0[31];
  v5 = v0[41];
  v6 = v0[51];
  sub_22890CEFC(0, &unk_2813DE9B8, sub_22890CE94, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001BLL;
  v8 = MEMORY[0x277D83B88];
  *(inited + 16) = xmmword_228932620;
  v9 = MEMORY[0x277D83BA8];
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  *(inited + 40) = 0x8000000228934BA0;
  *(inited + 48) = v1;
  *(inited + 88) = 0xD00000000000001ALL;
  *(inited + 96) = 0x8000000228934EE0;
  *(inited + 128) = v8;
  *(inited + 136) = v9;
  *(inited + 104) = v2;
  *(inited + 144) = 0xD000000000000015;
  *(inited + 152) = 0x8000000228934F00;
  *(inited + 184) = v8;
  *(inited + 192) = v9;
  *(inited + 160) = v3;
  *(inited + 200) = 0xD000000000000020;
  *(inited + 208) = 0x8000000228934F20;
  *(inited + 240) = v8;
  *(inited + 248) = v9;
  *(inited + 216) = v4;
  *(inited + 256) = 0xD00000000000001CLL;
  *(inited + 264) = 0x8000000228934F50;
  *(inited + 296) = v8;
  *(inited + 304) = v9;
  *(inited + 272) = v5;
  *(inited + 312) = 0xD000000000000017;
  *(inited + 320) = 0x8000000228934F70;
  *(inited + 352) = v8;
  *(inited + 360) = v9;
  *(inited + 328) = v6;
  v10 = sub_22891CBE4(inited);
  swift_setDeallocating();
  sub_22890CE94();
  swift_arrayDestroy();
  return v10;
}

unint64_t sub_22890A0D4()
{
  v16 = *(v0 + 32);
  v1 = *(v0 + 112);
  v2 = *(v0 + 192);
  v3 = *(v0 + 272);
  v4 = *(v0 + 352);
  v5 = *(v0 + 416);
  v7 = *(v0 + 424);
  v6 = *(v0 + 432);
  sub_22890CEFC(0, &unk_2813DE9B8, sub_22890CE94, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228932630;
  *(inited + 32) = 0x746174537473616CLL;
  *(inited + 40) = 0xEA00000000007375;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v9 = 0xEA0000000000746ELL;
      v10 = 0x656D656E69666572;
    }

    else if (v5 == 4)
    {
      v9 = 0xE700000000000000;
      v10 = 0x6C616369707974;
    }

    else
    {
      v9 = 0xE800000000000000;
      v10 = 0x737265696C74756FLL;
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      v9 = 0xE600000000000000;
      v10 = 0x617461446F6ELL;
    }

    else
    {
      v9 = 0x8000000228933080;
      v10 = 0xD000000000000014;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E75;
  }

  v11 = MEMORY[0x277D837F8];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v11;
  *(inited + 48) = v10;
  *(inited + 56) = v9;
  v12 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xD00000000000001CLL;
  *(inited + 96) = 0x8000000228934DC0;
  v13 = MEMORY[0x277D83BA8];
  *(inited + 128) = v12;
  *(inited + 136) = v13;
  *(inited + 104) = v7;
  *(inited + 144) = 0xD00000000000001BLL;
  *(inited + 152) = 0x8000000228934DE0;
  *(inited + 184) = v12;
  *(inited + 192) = v13;
  *(inited + 160) = v2;
  *(inited + 200) = 0xD000000000000026;
  *(inited + 208) = 0x8000000228934E00;
  *(inited + 240) = v12;
  *(inited + 248) = v13;
  *(inited + 216) = v3;
  *(inited + 256) = 0xD000000000000022;
  *(inited + 264) = 0x8000000228934E30;
  *(inited + 296) = v12;
  *(inited + 304) = v13;
  *(inited + 272) = v4;
  *(inited + 312) = 0xD000000000000020;
  *(inited + 320) = 0x8000000228934E60;
  *(inited + 352) = v12;
  *(inited + 360) = v13;
  *(inited + 328) = v1;
  *(inited + 368) = 0xD000000000000024;
  *(inited + 376) = 0x8000000228934E90;
  *(inited + 408) = v12;
  *(inited + 416) = v13;
  *(inited + 384) = v16;
  *(inited + 424) = 0xD00000000000001ALL;
  *(inited + 432) = 0x8000000228934EC0;
  *(inited + 464) = v12;
  *(inited + 472) = v13;
  *(inited + 440) = v6;
  v14 = sub_22891CBE4(inited);
  swift_setDeallocating();
  sub_22890CE94();
  swift_arrayDestroy();
  return v14;
}

uint64_t sub_22890A39C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEA0000000000746ELL;
  v5 = 0xE700000000000000;
  v6 = 0x6C616369707974;
  if (a1 != 4)
  {
    v6 = 0x737265696C74756FLL;
    v5 = 0xE800000000000000;
  }

  if (a1 == 3)
  {
    v6 = 0x656D656E69666572;
  }

  else
  {
    v4 = v5;
  }

  v7 = 0xE600000000000000;
  v8 = 0x617461446F6ELL;
  if (a1 != 1)
  {
    v8 = 0xD000000000000014;
    v7 = 0x8000000228933080;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEA0000000000746ELL;
      if (v9 != 0x656D656E69666572)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x6C616369707974)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x737265696C74756FLL)
      {
LABEL_35:
        v12 = sub_22892F818();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x617461446F6ELL)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0x8000000228933080;
      if (v9 != 0xD000000000000014)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x6E776F6E6B6E75)
    {
      goto LABEL_35;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_35;
  }

  v12 = 1;
LABEL_36:

  return v12 & 1;
}

uint64_t sub_22890A580()
{
  sub_22892F8A8();
  sub_22892F0F8();

  return sub_22892F8C8();
}

uint64_t sub_22890A68C()
{
  sub_22892F8A8();
  sub_22892F0F8();

  return sub_22892F8C8();
}

uint64_t SleepingSampleDaySummaryCollectionAnalytics.MetricSummary.BoundMethod.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6E696772616DLL;
  }

  else
  {
    result = 7500137;
  }

  *v0;
  return result;
}

HealthBalanceDaemon::SleepingSampleDaySummaryCollectionAnalytics::MetricSummary::BoundMethod_optional __swiftcall SleepingSampleDaySummaryCollectionAnalytics.MetricSummary.BoundMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22892F7C8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22890A858(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E696772616DLL;
  }

  else
  {
    v4 = 7500137;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6E696772616DLL;
  }

  else
  {
    v6 = 7500137;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22892F818();
  }

  return v9 & 1;
}

uint64_t sub_22890A8F4()
{
  v1 = *v0;
  sub_22892F8A8();
  sub_22892F0F8();

  return sub_22892F8C8();
}

uint64_t sub_22890A96C()
{
  *v0;
  sub_22892F0F8();
}

uint64_t sub_22890A9D0()
{
  v1 = *v0;
  sub_22892F8A8();
  sub_22892F0F8();

  return sub_22892F8C8();
}

uint64_t sub_22890AA44@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22892F7C8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_22890AAA4(uint64_t *a1@<X8>)
{
  v2 = 7500137;
  if (*v1)
  {
    v2 = 0x6E696772616DLL;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_22890AC00(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v6 = sub_22892E5A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22890CEFC(0, &qword_2813DFE90, MEMORY[0x277D0FF28], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v55 - v13;
  v15 = sub_22892E4D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892E908();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v20 = sub_22892E508();
    (*(*(v20 - 8) + 8))(a2, v20);
    v21 = sub_22892E948();
    (*(*(v21 - 8) + 8))(a1, v21);
    sub_22890CF60(v14);
    *a3 = 2;
    a3[1] = 0.0;
    a3[2] = 0.0;
    a3[3] = 0.0;
    return;
  }

  v55 = v7;
  v56 = v6;
  (*(v16 + 32))(v19, v14, v15);
  v58 = a1;
  v60 = sub_22892E898() & 1;
  if (v60)
  {
    v22 = 0;
  }

  else
  {
    v22 = 2;
  }

  v57 = v22;
  v23 = sub_22892E498();
  v24 = sub_22890BF00();
  v25 = [v23 minimum];
  [v25 doubleValueForUnit_];
  v27 = v26;

  v28 = [v23 maximum];
  [v28 doubleValueForUnit_];
  v30 = v29;

  sub_22890C12C(v27);
  v32 = v31;
  sub_22890C12C(v30);
  v34 = v33;

  if (v32 > v34)
  {
    __break(1u);
    return;
  }

  v35 = sub_22892E4B8();
  sub_22890B230(v35);
  v37 = v36;

  sub_2288CD058();
  v38 = sub_22892E498();
  v39 = sub_22892E4A8();
  v40 = sub_22892F468();

  if (v40)
  {
    v41 = sub_22892E508();
    (*(*(v41 - 8) + 8))(a2, v41);
    v42 = sub_22892E948();
    (*(*(v42 - 8) + 8))(v58, v42);
    (*(v16 + 8))(v19, v15);
    v59 = 0;
  }

  else
  {
    v59 = 1;
    v43 = v58;
    sub_22892E938();
    v44 = sub_22892E598();
    (*(v55 + 8))(v10, v56);
    if (v44)
    {
      v45 = sub_22892E4A8();
      v46 = [v45 containsQuantity_];

      if ((v46 & 1) == 0)
      {
        v51 = sub_22892E498();
        v52 = [v51 containsQuantity_];

        v53 = sub_22892E508();
        (*(*(v53 - 8) + 8))(a2, v53);
        v54 = sub_22892E948();
        (*(*(v54 - 8) + 8))(v43, v54);
        (*(v16 + 8))(v19, v15);
        v49 = v57;
        if (v52)
        {
          v49 = 1;
        }

        goto LABEL_14;
      }
    }

    v47 = sub_22892E508();
    (*(*(v47 - 8) + 8))(a2, v47);
    v48 = sub_22892E948();
    (*(*(v48 - 8) + 8))(v43, v48);
    (*(v16 + 8))(v19, v15);
  }

  v49 = v57;
LABEL_14:
  v50 = 0x10000;
  if (!v59)
  {
    v50 = 0;
  }

  *a3 = v50 | v60 | (v49 << 8);
  a3[1] = v32;
  a3[2] = v34;
  *(a3 + 3) = v37;
}

uint64_t sub_22890B230(void *a1)
{
  v2 = v1;
  v4 = sub_22892E508();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22890BF00();
  [a1 doubleValueForUnit_];
  v11 = v10;

  (*(v5 + 16))(v8, v2, v4);
  v12 = (*(v5 + 88))(v8, v4);
  if (v12 == *MEMORY[0x277D0FF50])
  {
    v17 = v11;
    v18 = xmmword_228932680;
    v13 = 0x4000000000000000;
LABEL_10:
    v16 = v13;
    sub_22890CFEC();
    return sub_22892EFE8();
  }

  if (v12 == *MEMORY[0x277D0FF40])
  {
    v17 = v11;
    v14 = xmmword_228932670;
LABEL_5:
    v18 = v14;
    v13 = 0x3FE0000000000000;
    goto LABEL_10;
  }

  if (v12 == *MEMORY[0x277D0FF38])
  {
    v17 = v11;
    v18 = xmmword_228932660;
    v13 = 0x3F747AE147AE147BLL;
    goto LABEL_10;
  }

  if (v12 == *MEMORY[0x277D0FF48])
  {
    v17 = v11;
    v18 = xmmword_228932650;
    v13 = 0x3FD0000000000000;
    goto LABEL_10;
  }

  if (v12 == *MEMORY[0x277D0FF30])
  {
    v17 = v11;
    v14 = xmmword_228932640;
    goto LABEL_5;
  }

  *&v18 = 0;
  *(&v18 + 1) = 0xE000000000000000;
  sub_22892F648();
  MEMORY[0x22AAC3770](0xD000000000000015, 0x8000000228934F90);
  sub_22892F718();
  result = sub_22892F738();
  __break(1u);
  return result;
}

uint64_t SleepingSampleDaySummaryCollectionAnalytics.MetricCounts.daysSinceLastDeviation.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.MetricCounts.lastSummary.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 48);
  v3 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.MetricCounts.lastSummary.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v3;
  return result;
}

uint64_t sub_22890B5CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v5 = sub_22892E508();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892E538();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22892E5A8();
  v12 = *(v34 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v34);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22892E948();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v33 - v22;
  sub_22892E678();
  sub_22892E938();
  sub_22892E548();
  (*(v12 + 8))(v15, v34);
  sub_22890B93C(v11);
  (*(v35 + 8))(v11, v36);
  (*(v17 + 16))(v21, v23, v16);
  v24 = v38;
  (*(v39 + 16))(v38, a2, v40);
  sub_22890AC00(v21, v24, v41);
  v25 = v41[1];
  *(v3 + 48) = v41[0];
  *(v3 + 64) = v25;
  LOBYTE(v24) = sub_22892E898();
  result = (*(v17 + 8))(v23, v16);
  if ((v24 & 1) == 0)
  {
    if (*(v3 + 40))
    {
      return result;
    }

    v31 = *(v3 + 32);
    v32 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      v30 = (v3 + 40);
      *(v3 + 32) = v32;
      goto LABEL_7;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v27 = *(v3 + 24);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(v3 + 24) = v29;
  *(v3 + 32) = 0;
  v30 = (v3 + 40);
LABEL_7:
  *v30 = 0;
  return result;
}

uint64_t sub_22890B93C(uint64_t a1)
{
  v3 = sub_22892E538();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  result = (*(v4 + 88))(v7, v3);
  if (result == *MEMORY[0x277D0FF70])
  {
    v9 = v1[1];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (!v10)
    {
      v1[1] = v11;
      return result;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (result == *MEMORY[0x277D0FF58])
  {
    v12 = v1[2];
    v10 = __OFADD__(v12, 1);
    v13 = v12 + 1;
    if (!v10)
    {
      v1[2] = v13;
      return result;
    }

    goto LABEL_21;
  }

  if (result == *MEMORY[0x277D0FF68] || result == *MEMORY[0x277D0FF60] || result == *MEMORY[0x277D0FF78])
  {
    if (!__OFADD__(*v1, 1))
    {
      ++*v1;
      return result;
    }

    goto LABEL_22;
  }

  v16 = v1[1];
  v10 = __OFADD__(v16, 1);
  v17 = v16 + 1;
  if (v10)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v1[1] = v17;
  return (*(v4 + 8))(v7, v3);
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.watchSleepCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 56);
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 72);
  *a1 = *(v1 + 8);
  *(a1 + 16) = result;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.watchSleepCounts.setter(__int128 *a1)
{
  v2 = *a1;
  *(v1 + 24) = a1[1];
  v3 = a1[3];
  *(v1 + 40) = a1[2];
  *(v1 + 56) = v3;
  result = a1[4];
  *(v1 + 72) = result;
  *(v1 + 8) = v2;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.wristTempCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 104);
  v3 = *(v1 + 136);
  *(a1 + 32) = *(v1 + 120);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 152);
  *a1 = *(v1 + 88);
  *(a1 + 16) = result;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.wristTempCounts.setter(__int128 *a1)
{
  v2 = *a1;
  *(v1 + 104) = a1[1];
  v3 = a1[3];
  *(v1 + 120) = a1[2];
  *(v1 + 136) = v3;
  result = a1[4];
  *(v1 + 152) = result;
  *(v1 + 88) = v2;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.spO2Counts.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 184);
  v3 = *(v1 + 216);
  *(a1 + 32) = *(v1 + 200);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 232);
  *a1 = *(v1 + 168);
  *(a1 + 16) = result;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.spO2Counts.setter(__int128 *a1)
{
  v2 = *a1;
  *(v1 + 184) = a1[1];
  v3 = a1[3];
  *(v1 + 200) = a1[2];
  *(v1 + 216) = v3;
  result = a1[4];
  *(v1 + 232) = result;
  *(v1 + 168) = v2;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.respiratoryRateCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 264);
  v3 = *(v1 + 280);
  *a1 = *(v1 + 248);
  *(a1 + 16) = v2;
  result = *(v1 + 296);
  v5 = *(v1 + 312);
  *(a1 + 32) = v3;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.respiratoryRateCounts.setter(__int128 *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *a1;
  *(v1 + 264) = a1[1];
  *(v1 + 280) = v2;
  result = a1[4];
  *(v1 + 296) = v3;
  *(v1 + 312) = result;
  *(v1 + 248) = v4;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.sleepingRHRCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 376);
  *(a1 + 32) = *(v1 + 360);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 392);
  result = *(v1 + 344);
  *a1 = *(v1 + 328);
  *(a1 + 16) = result;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.sleepingRHRCounts.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 360) = *(a1 + 32);
  *(v1 + 376) = v2;
  *(v1 + 392) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 328) = *a1;
  *(v1 + 344) = result;
  return result;
}

uint64_t sub_22890BD08()
{
  *v0;
  *v0;
  *v0;
  sub_22892F0F8();
}

uint64_t sub_22890BE04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22890CE48();
  *a2 = result;
  return result;
}

void sub_22890BE34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEA0000000000746ELL;
  v6 = 0x656D656E69666572;
  v7 = 0xE700000000000000;
  v8 = 0x6C616369707974;
  if (v2 != 4)
  {
    v8 = 0x737265696C74756FLL;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x617461446F6ELL;
  if (v2 != 1)
  {
    v10 = 0xD000000000000014;
    v9 = 0x8000000228933080;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

id sub_22890BF00()
{
  v1 = v0;
  v2 = sub_22892E508();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D0FF50] || v7 == *MEMORY[0x277D0FF40])
  {
    v9 = &selRef__countPerMinuteUnit;
  }

  else if (v7 == *MEMORY[0x277D0FF38])
  {
    v9 = &selRef_percentUnit;
  }

  else if (v7 == *MEMORY[0x277D0FF48])
  {
    v9 = &selRef__changeInDegreeCelsiusUnit;
  }

  else
  {
    if (v7 != *MEMORY[0x277D0FF30])
    {
      v12[0] = 0;
      v12[1] = 0xE000000000000000;
      sub_22892F648();
      MEMORY[0x22AAC3770](0xD000000000000015, 0x8000000228934F90);
      sub_22892F718();
      result = sub_22892F738();
      __break(1u);
      return result;
    }

    v9 = &selRef_hourUnit;
  }

  v10 = [objc_opt_self() *v9];

  return v10;
}

uint64_t sub_22890C12C(double a1)
{
  v2 = v1;
  v4 = sub_22892E508();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D0FF50])
  {
    v13 = a1;
    v14 = xmmword_2289326D0;
    v10 = 0x4014000000000000;
LABEL_11:
    v12 = v10;
    sub_22890CFEC();
    return sub_22892EFE8();
  }

  if (v9 == *MEMORY[0x277D0FF40])
  {
    v13 = a1;
    v14 = xmmword_2289326C0;
    v10 = 0x4000000000000000;
    goto LABEL_11;
  }

  if (v9 == *MEMORY[0x277D0FF38])
  {
    v13 = a1;
    v14 = xmmword_2289326B0;
    v10 = 0x3F947AE147AE147BLL;
    goto LABEL_11;
  }

  if (v9 == *MEMORY[0x277D0FF48])
  {
    v13 = a1;
    v14 = xmmword_2289326A0;
    v10 = 0x3FE0000000000000;
    goto LABEL_11;
  }

  if (v9 == *MEMORY[0x277D0FF30])
  {
    v13 = a1;
    v14 = xmmword_228932690;
    v10 = 0x3FF0000000000000;
    goto LABEL_11;
  }

  *&v14 = 0;
  *(&v14 + 1) = 0xE000000000000000;
  sub_22892F648();
  MEMORY[0x22AAC3770](0xD000000000000015, 0x8000000228934F90);
  sub_22892F718();
  result = sub_22892F738();
  __break(1u);
  return result;
}

BOOL _s19HealthBalanceDaemon43SleepingSampleDaySummaryCollectionAnalyticsV06MetricG0V2eeoiySbAE_AEtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v11 = a2[1];
  v10 = a2[2];
  v12 = a2[3];
  if (v3 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }

LABEL_8:
    if (v4)
    {
      v13 = 0x6E696772616DLL;
    }

    else
    {
      v13 = 7500137;
    }

    if (v4)
    {
      v14 = 0xE600000000000000;
    }

    else
    {
      v14 = 0xE300000000000000;
    }

    if (*(a2 + 2))
    {
      v15 = 0x6E696772616DLL;
    }

    else
    {
      v15 = 7500137;
    }

    if (*(a2 + 2))
    {
      v16 = 0xE600000000000000;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    if (v13 == v15 && v14 == v16)
    {

      if (v6 != v11 || v5 != v10)
      {
        return 0;
      }
    }

    else
    {
      v18 = sub_22892F818();

      result = 0;
      if ((v18 & 1) == 0 || v6 != v11 || v5 != v10)
      {
        return result;
      }
    }

    return v7 == v12;
  }

  result = 0;
  if (v8 != 2 && ((v8 ^ v3) & 1) == 0)
  {
    goto LABEL_8;
  }

  return result;
}

BOOL _s19HealthBalanceDaemon43SleepingSampleDaySummaryCollectionAnalyticsV12MetricCountsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(*(a1 + 16), *(a2 + 16))))) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 64);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (*(a1 + 48) != 2)
  {
    v11[0] = *(a1 + 48);
    v11[1] = v3;
    if (v5 != 2)
    {
      LOWORD(v8) = v5 & 0xFF01;
      BYTE2(v8) = BYTE2(v5) & 1;
      v9 = v6;
      v10 = v7;
      if (_s19HealthBalanceDaemon43SleepingSampleDaySummaryCollectionAnalyticsV06MetricG0V2eeoiySbAE_AEtFZ_0(v11, &v8))
      {
        return 1;
      }
    }

    return 0;
  }

  return *(a2 + 48) == 2;
}

uint64_t _s19HealthBalanceDaemon43SleepingSampleDaySummaryCollectionAnalyticsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v47 = v2;
  v48 = v3;
  v6 = *(a1 + 408);
  v7 = *(a1 + 416);
  v9 = *(a1 + 424);
  v8 = *(a1 + 432);
  v10 = *(a2 + 408);
  v11 = *(a2 + 416);
  v13 = *(a2 + 424);
  v12 = *(a2 + 432);
  v14 = *(a1 + 24);
  v15 = *(a1 + 56);
  v44 = *(a1 + 40);
  v45 = v15;
  v46 = *(a1 + 72);
  v42 = *(a1 + 8);
  v43 = v14;
  v16 = *(a2 + 24);
  v17 = *(a2 + 56);
  v39 = *(a2 + 40);
  v40 = v17;
  v41 = *(a2 + 72);
  v37 = *(a2 + 8);
  v38 = v16;
  if (!_s19HealthBalanceDaemon43SleepingSampleDaySummaryCollectionAnalyticsV12MetricCountsV2eeoiySbAE_AEtFZ_0(&v42, &v37))
  {
    return 0;
  }

  v18 = *(a1 + 104);
  v19 = *(a1 + 136);
  v44 = *(a1 + 120);
  v45 = v19;
  v46 = *(a1 + 152);
  v42 = *(a1 + 88);
  v43 = v18;
  v20 = *(a2 + 104);
  v21 = *(a2 + 136);
  v39 = *(a2 + 120);
  v40 = v21;
  v41 = *(a2 + 152);
  v37 = *(a2 + 88);
  v38 = v20;
  if (!_s19HealthBalanceDaemon43SleepingSampleDaySummaryCollectionAnalyticsV12MetricCountsV2eeoiySbAE_AEtFZ_0(&v42, &v37))
  {
    return 0;
  }

  v22 = *(a1 + 184);
  v23 = *(a1 + 216);
  v44 = *(a1 + 200);
  v45 = v23;
  v46 = *(a1 + 232);
  v42 = *(a1 + 168);
  v43 = v22;
  v24 = *(a2 + 184);
  v25 = *(a2 + 216);
  v39 = *(a2 + 200);
  v40 = v25;
  v41 = *(a2 + 232);
  v37 = *(a2 + 168);
  v38 = v24;
  if (!_s19HealthBalanceDaemon43SleepingSampleDaySummaryCollectionAnalyticsV12MetricCountsV2eeoiySbAE_AEtFZ_0(&v42, &v37))
  {
    return 0;
  }

  v26 = *(a1 + 296);
  v44 = *(a1 + 280);
  v45 = v26;
  v46 = *(a1 + 312);
  v27 = *(a1 + 264);
  v42 = *(a1 + 248);
  v43 = v27;
  v28 = *(a2 + 296);
  v39 = *(a2 + 280);
  v40 = v28;
  v41 = *(a2 + 312);
  v29 = *(a2 + 264);
  v37 = *(a2 + 248);
  v38 = v29;
  if (!_s19HealthBalanceDaemon43SleepingSampleDaySummaryCollectionAnalyticsV12MetricCountsV2eeoiySbAE_AEtFZ_0(&v42, &v37))
  {
    return 0;
  }

  v30 = *(a1 + 376);
  v44 = *(a1 + 360);
  v45 = v30;
  v46 = *(a1 + 392);
  v31 = *(a1 + 344);
  v42 = *(a1 + 328);
  v43 = v31;
  v32 = *(a2 + 376);
  v39 = *(a2 + 360);
  v40 = v32;
  v41 = *(a2 + 392);
  v33 = *(a2 + 344);
  v37 = *(a2 + 328);
  v38 = v33;
  v34 = _s19HealthBalanceDaemon43SleepingSampleDaySummaryCollectionAnalyticsV12MetricCountsV2eeoiySbAE_AEtFZ_0(&v42, &v37);
  result = 0;
  if (v34 && v6 == v10)
  {
    v36 = sub_22890A39C(v7, v11) & (v9 == v13);
    if (v8 == v12)
    {
      return v36;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_22890C82C()
{
  result = qword_27D85BD50;
  if (!qword_27D85BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85BD50);
  }

  return result;
}

uint64_t sub_22890C888(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 440))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22890C8E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 440) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 440) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 2;
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

uint64_t sub_22890C9B8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
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

uint64_t sub_22890CA0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepingSampleDaySummaryCollectionAnalytics.MetricSummary.BoundMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepingSampleDaySummaryCollectionAnalytics.MetricSummary.BoundMethod(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_22890CBD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 80))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22890CC38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepingSampleDaySummaryCollectionAnalytics.Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepingSampleDaySummaryCollectionAnalytics.Status(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22890CDF4()
{
  result = qword_27D85BD58;
  if (!qword_27D85BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85BD58);
  }

  return result;
}

uint64_t sub_22890CE48()
{
  v0 = sub_22892F7C8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

void sub_22890CE94()
{
  if (!qword_2813DED40)
  {
    sub_2288D3BBC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DED40);
    }
  }
}

void sub_22890CEFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22890CF60(uint64_t a1)
{
  sub_22890CEFC(0, &qword_2813DFE90, MEMORY[0x277D0FF28], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22890CFEC()
{
  result = qword_2813DEDB8;
  if (!qword_2813DEDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DEDB8);
  }

  return result;
}

void sub_22890D06C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22892DF58();
  v88 = *(v2 - 8);
  v89 = v2;
  v3 = *(v88 + 64);
  MEMORY[0x28223BE20](v2);
  v87 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22892EDE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v90 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v85 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v85 - v13;
  sub_22892EDC8();
  v15 = v0;
  v16 = sub_22892EDD8();
  v17 = sub_22892F398();

  v18 = os_log_type_enabled(v16, v17);
  v92 = ObjectType;
  v93 = v6;
  if (v18)
  {
    v91 = v5;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v94 = v20;
    *v19 = 136446466;
    v21 = sub_22892F948();
    v23 = sub_2288B748C(v21, v22, &v94);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = [v15 &selRef_activityTypes];
    v25 = [v24 debugIdentifier];

    if (v25)
    {
      v26 = sub_22892F0C8();
      v28 = v27;
    }

    else
    {
      v30 = [v15 queryUUID];
      v31 = v87;
      sub_22892DF38();

      v26 = sub_22892DF08();
      v28 = v32;
      (*(v88 + 8))(v31, v89);
    }

    v33 = sub_2288B748C(v26, v28, &v94);

    *(v19 + 14) = v33;
    _os_log_impl(&dword_2288B2000, v16, v17, "[%{public}s:%s] Training Load Query started", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v20, -1, -1);
    MEMORY[0x22AAC47E0](v19, -1, -1);

    v29 = *(v93 + 8);
    v5 = v91;
    v29(v14, v91);
    ObjectType = v92;
  }

  else
  {

    v29 = *(v6 + 8);
    v29(v14, v5);
  }

  v95.receiver = v15;
  v95.super_class = ObjectType;
  objc_msgSendSuper2(&v95, sel__queue_start);
  v34 = [v15 configuration];
  v35 = [v34 shouldDeactivateAfterInitialResults];

  if ((v35 & 1) == 0)
  {
    v36 = [objc_allocWithZone(MEMORY[0x277CCD830]) initWithIdentifier_];
    if (v36)
    {
      v37 = v36;
      sub_22892EDC8();
      v38 = v15;
      v39 = sub_22892EDD8();
      v40 = sub_22892F398();

      if (os_log_type_enabled(v39, v40))
      {
        v86 = v29;
        v91 = v5;
        v41 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v94 = v85;
        *v41 = 136446466;
        v42 = sub_22892F948();
        v44 = sub_2288B748C(v42, v43, &v94);

        *(v41 + 4) = v44;
        *(v41 + 12) = 2080;
        v45 = [v38 configuration];
        v46 = [v45 debugIdentifier];

        if (v46)
        {
          v47 = sub_22892F0C8();
          v49 = v48;
        }

        else
        {
          v52 = [v38 queryUUID];
          v53 = v87;
          sub_22892DF38();

          v47 = sub_22892DF08();
          v49 = v54;
          (*(v88 + 8))(v53, v89);
        }

        v55 = sub_2288B748C(v47, v49, &v94);

        *(v41 + 14) = v55;
        _os_log_impl(&dword_2288B2000, v39, v40, "[%{public}s:%s] Training Load Query, adding observer on workout effort", v41, 0x16u);
        v56 = v85;
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v56, -1, -1);
        MEMORY[0x22AAC47E0](v41, -1, -1);

        v50 = v12;
        v5 = v91;
        v51 = v91;
        v29 = v86;
      }

      else
      {

        v50 = v12;
        v51 = v5;
      }

      v29(v50, v51);
      v57 = [v38 profile];
      if (v57)
      {
        v58 = v57;
        v59 = [v57 associationManager];

        if (v59)
        {
          [v59 addObserver:v38 forDataType:v37];
        }
      }
    }
  }

  v60 = [v15 configuration];
  v61 = [v60 shouldDeactivateAfterInitialResults];

  if ((v61 & 1) == 0)
  {
    v62 = [objc_allocWithZone(MEMORY[0x277CCD830]) initWithIdentifier_];
    if (v62)
    {
      v63 = v62;
      v64 = v90;
      sub_22892EDC8();
      v65 = v15;
      v66 = sub_22892EDD8();
      v67 = sub_22892F398();

      if (os_log_type_enabled(v66, v67))
      {
        v86 = v29;
        v91 = v5;
        v68 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v94 = v85;
        *v68 = 136446466;
        v69 = sub_22892F948();
        v71 = sub_2288B748C(v69, v70, &v94);

        *(v68 + 4) = v71;
        *(v68 + 12) = 2080;
        v72 = [v65 configuration];
        v73 = [v72 debugIdentifier];

        if (v73)
        {
          v74 = sub_22892F0C8();
          v76 = v75;
        }

        else
        {
          v77 = [v65 queryUUID];
          v78 = v87;
          sub_22892DF38();

          v74 = sub_22892DF08();
          v76 = v79;
          (*(v88 + 8))(v78, v89);
        }

        v80 = sub_2288B748C(v74, v76, &v94);

        *(v68 + 14) = v80;
        _os_log_impl(&dword_2288B2000, v66, v67, "[%{public}s:%s] Training Load Query, adding observer on estimated workout effort", v68, 0x16u);
        v81 = v85;
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v81, -1, -1);
        MEMORY[0x22AAC47E0](v68, -1, -1);

        v86(v90, v91);
      }

      else
      {

        v29(v64, v5);
      }

      v82 = [v65 profile];
      if (v82)
      {
        v83 = v82;
        v84 = [v82 associationManager];

        if (v84)
        {
          [v84 addObserver:v65 forDataType:v63];
        }
      }
    }
  }

  sub_2288B5F94();
}

void sub_22890DA00()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22892DF58();
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22892EDE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43.receiver = v0;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, sel__queue_stop);
  sub_22892EDC8();
  v11 = v0;
  v12 = sub_22892EDD8();
  v13 = sub_22892F398();

  if (os_log_type_enabled(v12, v13))
  {
    v38 = v2;
    v40 = v6;
    v14 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v14 = 136446466;
    v15 = sub_22892F948();
    v17 = sub_2288B748C(v15, v16, &v42);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = [v11 configuration];
    v19 = [v18 debugIdentifier];

    if (v19)
    {
      v20 = sub_22892F0C8();
      v22 = v21;
    }

    else
    {
      v23 = [v11 queryUUID];
      sub_22892DF38();

      v20 = sub_22892DF08();
      v22 = v24;
      (*(v41 + 8))(v5, v38);
    }

    v25 = sub_2288B748C(v20, v22, &v42);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_2288B2000, v12, v13, "[%{public}s:%s] Training Load Query, Queue Stop, removing observer for effort", v14, 0x16u);
    v26 = v39;
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v26, -1, -1);
    MEMORY[0x22AAC47E0](v14, -1, -1);

    (*(v7 + 8))(v10, v40);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v27 = [objc_allocWithZone(MEMORY[0x277CCD830]) initWithIdentifier_];
  if (v27)
  {
    v28 = v27;
    v29 = [v11 profile];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 associationManager];

      if (v31)
      {
        [v31 removeObserver:v11 forDataType:v28];
      }
    }
  }

  v32 = [objc_allocWithZone(MEMORY[0x277CCD830]) initWithIdentifier_];
  if (v32)
  {
    v33 = v32;
    v34 = [v11 profile];
    if (v34)
    {
      v35 = v34;
      v36 = [v34 associationManager];

      if (v36)
      {
        [v36 removeObserver:v11 forDataType:v33];
      }
    }
  }
}

uint64_t sub_22890DF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v179 = a6;
  ObjectType = swift_getObjectType();
  v166 = sub_22892DF58();
  v165 = *(v166 - 8);
  v13 = *(v165 + 64);
  MEMORY[0x28223BE20](v166);
  v164 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22892EDE8();
  v16 = *(v15 - 8);
  v177 = v15;
  v178 = v16;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v168 = (&v156 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v170 = &v156 - v24;
  MEMORY[0x28223BE20](v23);
  v157 = &v156 - v25;
  v163 = sub_22892EDF8();
  v162 = *(v163 - 8);
  v26 = *(v162 + 64);
  MEMORY[0x28223BE20](v163);
  v160 = &v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_22892EE18();
  v159 = *(v161 - 8);
  v28 = *(v159 + 64);
  MEMORY[0x28223BE20](v161);
  v158 = &v156 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B6D08(0, &qword_2813DFEB0, MEMORY[0x277CC99E8], MEMORY[0x277D83D88]);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v156 - v32;
  v175 = sub_22892DEF8();
  v171 = *(v175 - 8);
  v34 = *(v171 + 64);
  v35 = MEMORY[0x28223BE20](v175);
  v169 = &v156 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v173 = &v156 - v38;
  MEMORY[0x28223BE20](v37);
  v174 = &v156 - v39;
  sub_228911988();
  v41 = v40;
  v42 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v176 = &v156 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BC0FC(0, &unk_27D85BD70, 0x277CCD6F0);
  v44 = sub_22892F208();
  v182.receiver = v7;
  v182.super_class = ObjectType;
  v172 = ObjectType;
  v167 = a2;
  objc_msgSendSuper2(&v182, sel_associationsUpdatedForObject_subObject_type_behavior_objects_anchor_, a1, a2, a3, a4, v44, v179);

  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  if (v45)
  {
    v46 = v45;
    swift_unknownObjectRetain();
    v47 = [v7 configuration];
    sub_22892EBF8();
    if (swift_dynamicCastClass())
    {
      v179 = v47;
      sub_22890F20C(v176, v176 + *(v41 + 48));
      sub_22892EBC8();
      v48 = sub_22892E048();
      v49 = *(v48 - 8);
      result = (*(v49 + 48))(v33, 1, v48);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v51 = v174;
        sub_22892EF98();
        (*(v49 + 8))(v33, v48);
        v52 = [v46 endDate];
        v53 = v173;
        sub_22892DEC8();

        sub_22891285C(&qword_2813DFEE8, MEMORY[0x277CC9578]);
        v54 = v175;
        LOBYTE(v52) = sub_22892F038();
        v55 = v171;
        v168 = *(v171 + 8);
        v168(v53, v54);
        if (v52)
        {
          v56 = v167;
          if (!v167 || (sub_2288BC0FC(0, &unk_27D85BDA0, 0x277CCDBF0), [v56 isKindOfClass_]))
          {
            v57 = [v7 queryQueue];
            v58 = swift_allocObject();
            *(v58 + 16) = v7;
            aBlock[4] = sub_2289119EC;
            aBlock[5] = v58;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_2288F3CC4;
            aBlock[3] = &block_descriptor_8;
            v59 = _Block_copy(aBlock);
            v60 = v7;
            v61 = v158;
            sub_22892EE08();
            v180 = MEMORY[0x277D84F90];
            sub_22891285C(qword_2813DEE40, MEMORY[0x277D85198]);
            sub_228911A20(0);
            sub_22891285C(&qword_27D85B7B0, sub_228911A20);
            v62 = v160;
            v63 = v163;
            sub_22892F548();
            MEMORY[0x22AAC3A70](0, v61, v62, v59);
            _Block_release(v59);
            swift_unknownObjectRelease();

            (*(v162 + 8))(v62, v63);
            (*(v159 + 8))(v61, v161);
            v168(v174, v175);
            sub_2288B5BCC(v176, sub_228911988);
          }

          v114 = v157;
          sub_22892EDC8();
          v115 = v7;
          v116 = sub_22892EDD8();
          v117 = sub_22892F398();

          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            aBlock[0] = v119;
            *v118 = 136446466;
            v120 = sub_22892F948();
            v122 = sub_2288B748C(v120, v121, aBlock);

            *(v118 + 4) = v122;
            *(v118 + 12) = 2080;
            v123 = [v115 configuration];
            v124 = [v123 debugIdentifier];

            if (v124)
            {
              v125 = sub_22892F0C8();
              v127 = v126;
            }

            else
            {
              v152 = [v115 queryUUID];
              v153 = v164;
              sub_22892DF38();

              v125 = sub_22892DF08();
              v127 = v154;
              (*(v165 + 8))(v153, v166);
            }

            v155 = sub_2288B748C(v125, v127, aBlock);

            *(v118 + 14) = v155;
            _os_log_impl(&dword_2288B2000, v116, v117, "[%{public}s:%s] Associations Updated, sub-object is NOT workout activity", v118, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AAC47E0](v119, -1, -1);
            MEMORY[0x22AAC47E0](v118, -1, -1);
            swift_unknownObjectRelease();

            (*(v178 + 8))(v157, v177);
          }

          else
          {
            swift_unknownObjectRelease();

            (*(v178 + 8))(v114, v177);
          }

          v168(v174, v175);
        }

        else
        {
          v92 = v170;
          sub_22892EDC8();
          v93 = v169;
          (*(v55 + 16))(v169, v51, v54);
          swift_unknownObjectRetain();
          v94 = v51;
          v95 = a1;
          v96 = v7;
          v97 = sub_22892EDD8();
          v98 = v54;
          v99 = sub_22892F398();
          swift_unknownObjectRelease();

          if (os_log_type_enabled(v97, v99))
          {
            v171 = v95;
            v100 = swift_slowAlloc();
            v167 = swift_slowAlloc();
            aBlock[0] = v167;
            *v100 = 136446978;
            v101 = sub_22892F948();
            v103 = sub_2288B748C(v101, v102, aBlock);

            *(v100 + 4) = v103;
            *(v100 + 12) = 2080;
            v104 = [v96 configuration];
            v105 = [v104 debugIdentifier];

            if (v105)
            {
              v106 = sub_22892F0C8();
              v108 = v107;
            }

            else
            {
              v133 = [v96 queryUUID];
              v134 = v164;
              sub_22892DF38();

              v106 = sub_22892DF08();
              v108 = v135;
              (*(v165 + 8))(v134, v166);
            }

            v136 = sub_2288B748C(v106, v108, aBlock);

            *(v100 + 14) = v136;
            *(v100 + 22) = 2080;
            v137 = [v46 endDate];
            v138 = v173;
            sub_22892DEC8();

            sub_22891285C(&qword_27D85B550, MEMORY[0x277CC9578]);
            v139 = v175;
            v140 = sub_22892F7E8();
            v142 = v141;
            v143 = v138;
            v144 = v168;
            v168(v143, v139);
            v145 = sub_2288B748C(v140, v142, aBlock);

            *(v100 + 24) = v145;
            *(v100 + 32) = 2080;
            v146 = v169;
            v147 = sub_22892F7E8();
            v149 = v148;
            v144(v146, v139);
            v150 = sub_2288B748C(v147, v149, aBlock);

            *(v100 + 34) = v150;
            _os_log_impl(&dword_2288B2000, v97, v99, "[%{public}s:%s] Associations Updated, workout's end date %s is older than lower bound of query range %s", v100, 0x2Au);
            v151 = v167;
            swift_arrayDestroy();
            MEMORY[0x22AAC47E0](v151, -1, -1);
            MEMORY[0x22AAC47E0](v100, -1, -1);
            swift_unknownObjectRelease();

            (*(v178 + 8))(v170, v177);
            v144(v174, v139);
          }

          else
          {
            swift_unknownObjectRelease();

            v109 = v168;
            v168(v93, v98);
            (*(v178 + 8))(v92, v177);
            v109(v94, v98);
          }
        }

        return sub_2288B5BCC(v176, sub_228911988);
      }
    }

    else
    {

      v78 = v168;
      sub_22892EDC8();
      v79 = v7;
      v80 = sub_22892EDD8();
      v81 = sub_22892F398();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        aBlock[0] = v83;
        *v82 = 136446466;
        v84 = sub_22892F948();
        v86 = sub_2288B748C(v84, v85, aBlock);

        *(v82 + 4) = v86;
        *(v82 + 12) = 2080;
        v87 = [v79 &selRef_activityTypes];
        v88 = [v87 debugIdentifier];

        if (v88)
        {
          v89 = sub_22892F0C8();
          v91 = v90;
        }

        else
        {
          v128 = [v79 queryUUID];
          v129 = v164;
          sub_22892DF38();

          v89 = sub_22892DF08();
          v91 = v130;
          v131 = v129;
          v78 = v168;
          (*(v165 + 8))(v131, v166);
        }

        v132 = sub_2288B748C(v89, v91, aBlock);

        *(v82 + 14) = v132;
        _os_log_impl(&dword_2288B2000, v80, v81, "[%{public}s:%s] Associations Updated, No Custom Configuration for Query", v82, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v83, -1, -1);
        MEMORY[0x22AAC47E0](v82, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return (*(v178 + 8))(v78, v177);
    }
  }

  else
  {
    sub_22892EDC8();
    v64 = v7;
    v65 = sub_22892EDD8();
    v66 = sub_22892F398();

    v67 = v20;
    if (os_log_type_enabled(v65, v66))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      aBlock[0] = v69;
      *v68 = 136446466;
      v70 = sub_22892F948();
      v72 = sub_2288B748C(v70, v71, aBlock);

      *(v68 + 4) = v72;
      *(v68 + 12) = 2080;
      v73 = [v64 configuration];
      v74 = [v73 debugIdentifier];

      if (v74)
      {
        v75 = sub_22892F0C8();
        v77 = v76;
      }

      else
      {
        v110 = [v64 queryUUID];
        v111 = v164;
        sub_22892DF38();

        v75 = sub_22892DF08();
        v77 = v112;
        (*(v165 + 8))(v111, v166);
      }

      v113 = sub_2288B748C(v75, v77, aBlock);

      *(v68 + 14) = v113;
      _os_log_impl(&dword_2288B2000, v65, v66, "[%{public}s:%s] Associations Updated, object is NOT workout", v68, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v69, -1, -1);
      MEMORY[0x22AAC47E0](v68, -1, -1);
    }

    return (*(v178 + 8))(v67, v177);
  }

  return result;
}

uint64_t sub_22890F20C(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  sub_2288B4A64(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v32 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = sub_22892EFA8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v38 = (&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v35 = &v32 - v19;
  sub_22892EBD8();
  sub_2288B4B3C(0);
  v21 = v20;
  v22 = *(*(v20 - 8) + 48);
  result = v22(v13, 1, v20);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = &v13[*(v21 + 36)];
  v37 = *(v15 + 16);
  v37(a2, v24, v14);
  sub_2288B5BCC(v13, sub_2288B4B3C);
  sub_22892EBD8();
  result = v22(v11, 1, v21);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v25 = *(v21 + 36);
  sub_22891285C(&unk_2813DEE00, MEMORY[0x277CCB6A8]);
  sub_22892F4E8();
  v26 = v39;
  sub_2288B5BCC(v11, sub_2288B4B3C);
  if (v26 > 28)
  {
    v27 = v34;
    sub_22892EBD8();
    result = v22(v27, 1, v21);
    if (result == 1)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v22 = v38;
    v37(v38, v27, v14);
    sub_2288B5BCC(v27, sub_2288B4B3C);
    sub_2288E2A3C();
    if (!__OFSUB__(0, (*(v28 + 32))()))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v29 = v33;
  sub_22892EBD8();
  result = v22(v29, 1, v21);
  if (result != 1)
  {
    v22 = v38;
    v37(v38, (v29 + *(v21 + 36)), v14);
    sub_2288B5BCC(v29, sub_2288B4B3C);
    sub_2288E2A3C();
    result = (*(v30 + 32))();
    if (!__OFADD__(result, 28))
    {
LABEL_10:
      v31 = v35;
      sub_22892EF78();
      (*(v15 + 8))(v22, v14);
      return (*(v15 + 32))(v36, v31, v14);
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_22890F740()
{
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemon30TrainingLoadSummaryQueryServer____lazy_storage___loadBaselineUnit;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon30TrainingLoadSummaryQueryServer____lazy_storage___loadBaselineUnit);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon30TrainingLoadSummaryQueryServer____lazy_storage___loadBaselineUnit);
  }

  else
  {
    v4 = objc_opt_self();
    v5 = [v4 appleEffortScoreUnit];
    v6 = [v4 secondUnit];
    v7 = [v5 unitMultipliedByUnit_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_22890F810(unint64_t a1, uint64_t a2)
{
  v65 = a2;
  v64 = sub_22892DE18();
  v4 = *(v64 - 8);
  v5 = *(v4 + 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_22892DDC8();
  v7 = *(v62 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v62);
  v61 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22892DEF8();
  v10 = *(v60 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v60);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22892DFB8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22892E048();
  v49 = *(v19 - 8);
  v50 = v19;
  v20 = *(v49 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, *MEMORY[0x277CC9830], v14);
  v66 = v22;
  sub_22892DFC8();
  (*(v15 + 8))(v18, v14);
  result = sub_22892F248();
  *(result + 16) = 56;
  *(result + 32) = 0u;
  v51 = result + 32;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 208) = 0u;
  *(result + 224) = 0u;
  *(result + 240) = 0u;
  *(result + 256) = 0u;
  *(result + 272) = 0u;
  *(result + 288) = 0u;
  *(result + 304) = 0u;
  *(result + 320) = 0u;
  *(result + 336) = 0u;
  *(result + 352) = 0u;
  *(result + 368) = 0u;
  *(result + 384) = 0u;
  *(result + 400) = 0u;
  *(result + 416) = 0u;
  *(result + 432) = 0u;
  *(result + 448) = 0u;
  v52 = result;
  *(result + 464) = 0u;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
LABEL_23:
    v48 = sub_228912164(v52);

    (*(v49 + 8))(v66, v50);
    return v48;
  }

LABEL_3:
  if (v24 >= 1)
  {
    v25 = 0;
    v26 = v4;
    v27 = a1 & 0xC000000000000001;
    v59 = v7 + 1;
    v58 = *MEMORY[0x277CC9968];
    v56 = (v10 + 8);
    v57 = (v26 + 8);
    v28 = &off_278609000;
    v55 = xmmword_228931960;
    v53 = a1 & 0xC000000000000001;
    v54 = v24;
    while (1)
    {
      if (v27)
      {
        v29 = MEMORY[0x22AAC3CC0](v25, a1);
      }

      else
      {
        v29 = *(a1 + 8 * v25 + 32);
      }

      v7 = v29;
      v30 = [v29 v28[465]];
      v31 = sub_22890F740();
      [v30 doubleValueForUnit_];
      v33 = v32;

      if (v33 <= 0.0)
      {
      }

      else
      {
        v4 = a1;
        v10 = v2;
        v34 = [v7 dateInterval];
        v35 = v61;
        sub_22892DD68();

        sub_22892DD98();
        (*v59)(v35, v62);
        sub_2288B6D08(0, &qword_2813DEA08, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
        v36 = sub_22892E038();
        v37 = v13;
        v38 = *(v36 - 8);
        v39 = *(v38 + 72);
        v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v41 = swift_allocObject();
        *(v41 + 16) = v55;
        (*(v38 + 104))(v41 + v40, v58, v36);
        sub_228912338(v41);
        swift_setDeallocating();
        (*(v38 + 8))(v41 + v40, v36);
        v13 = v37;
        swift_deallocClassInstance();
        a1 = v63;
        sub_22892DFE8();

        v2 = a1;
        v42 = sub_22892DDF8();
        LOBYTE(v41) = v43;
        (*v57)(a1, v64);
        if ((v41 & 1) != 0 || v42 > 55)
        {
          (*v56)(v37, v60);

          v2 = v10;
          a1 = v4;
        }

        else
        {
          v44 = [v7 workoutsCount];

          (*v56)(v37, v60);
          if (v42 < 0)
          {
            __break(1u);
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            result = sub_22892F588();
            v24 = result;
            if (!result)
            {
              goto LABEL_23;
            }

            goto LABEL_3;
          }

          if (v42 >= *(v52 + 16))
          {
            goto LABEL_20;
          }

          v45 = *(v51 + 8 * v42);
          v46 = __OFADD__(v45, v44);
          v47 = &v44[v45];
          if (v46)
          {
            goto LABEL_21;
          }

          v2 = v10;
          a1 = v4;
          *(v51 + 8 * v42) = v47;
        }

        v27 = v53;
        v24 = v54;
        v28 = &off_278609000;
      }

      if (v24 == ++v25)
      {
        goto LABEL_23;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22890FF10(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v205 = a6;
  v182 = a5;
  v167 = a4;
  v166 = a3;
  v186 = a2;
  v203 = sub_22892DDC8();
  v164 = *(v203 - 8);
  v9 = *(v164 + 64);
  MEMORY[0x28223BE20](v203);
  v202 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B6D08(0, &qword_2813DFEB0, MEMORY[0x277CC99E8], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v176 = &v164 - v16;
  v208 = sub_22892DEF8();
  v193 = *(v208 - 8);
  v17 = *(v193 + 64);
  v18 = MEMORY[0x28223BE20](v208);
  v169 = &v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v207 = &v164 - v21;
  MEMORY[0x28223BE20](v20);
  v174 = &v164 - v22;
  v23 = sub_22892EFA8();
  v200 = *(v23 - 8);
  v24 = v200[8];
  v25 = MEMORY[0x28223BE20](v23);
  v179 = &v164 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v180 = &v164 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v175 = (&v164 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = (&v164 - v32);
  MEMORY[0x28223BE20](v31);
  v201 = (&v164 - v34);
  sub_2288BB4E0();
  v192 = v35;
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v191 = &v164 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v195 = &v164 - v39;
  sub_2288B4B3C(0);
  v190 = v40;
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v198 = (&v164 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289126E0();
  v165 = v43;
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43);
  v181 = &v164 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v204 = &v164 - v47;
  v48 = sub_2288E2A3C();
  v50 = v49;
  v51 = *(v49 + 8);
  v210[3] = v48;
  v210[4] = v49;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v210);
  v172 = v48;
  v173 = v50;
  v51(v205, a7 & 1, v48, v50);
  v168 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_82;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22892F588())
  {
    v197 = v33;
    v170 = v15;
    v206 = a1;
    if (i)
    {
      v53 = 0;
      v54 = a1 & 0xC000000000000001;
      v55 = a1 & 0xFFFFFFFFFFFFFF8;
      v56 = 0.0;
      while (1)
      {
        if (v54)
        {
          v57 = MEMORY[0x22AAC3CC0](v53, a1);
        }

        else
        {
          if (v53 >= *(v55 + 16))
          {
            goto LABEL_73;
          }

          v57 = *(a1 + 8 * v53 + 32);
        }

        v33 = v57;
        v15 = (v53 + 1);
        if (__OFADD__(v53, 1))
        {
          break;
        }

        v58 = [v57 quantity];
        v59 = sub_22890F740();
        [v58 doubleValueForUnit_];
        v61 = v60;

        v56 = v56 + v61;
        ++v53;
        a1 = v206;
        v62 = v200;
        if (v15 == i)
        {
          goto LABEL_13;
        }
      }

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
      goto LABEL_77;
    }

    v56 = 0.0;
    v62 = v200;
LABEL_13:
    v63 = v62;
    v64 = sub_22891285C(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
    v65 = v166;
    v66 = v167;
    result = sub_22892F048();
    if ((result & 1) == 0)
    {
      break;
    }

    v199 = v64;
    v68 = v63 + 2;
    v69 = v63[2];
    v70 = v195;
    v69(v195, v65, v23);
    v71 = v192;
    v69(v70 + *(v192 + 48), v66, v23);
    v72 = v191;
    sub_2289127F4(v70, v191, sub_2288BB4E0);
    v73 = *(v71 + 48);
    v177 = v23;
    v74 = v63[4];
    v33 = v198;
    v74(v198, v72, v177);
    v75 = v63[1];
    v76 = v72 + v73;
    v15 = v74;
    v23 = v177;
    v75(v76, v177);
    sub_2288C34B4(v195, v72, sub_2288BB4E0);
    v77 = *(v71 + 48);
    v78 = v190;
    v79 = v33 + *(v190 + 36);
    v196 = (v63 + 4);
    (v15)(v79, v72 + v77, v23);
    v188 = v75;
    v200 = v63 + 1;
    v75(v72, v23);
    v80 = v204;
    sub_2289127F4(v33, v204, sub_2288B4B3C);
    v205 = *(v165 + 36);
    v69(v80 + v205, v33, v23);
    sub_2288B5BCC(v33, sub_2288B4B3C);
    v81 = *(v78 + 36);
    v189 = sub_22891285C(&unk_2813DEE10, MEMORY[0x277CCB6A8]);
    v82 = 0;
    v183 = (v193 + 8);
    v187 = v68;
    v185 = v69;
    v184 = v15;
    v83 = v197;
    v194 = v81;
    while ((sub_22892F088() & 1) == 0)
    {
      v193 = v82;
      v84 = v205;
      v69(v201, v80 + v205, v23);
      a1 = v196;
      (v15)(v83, v80 + v84, v23);
      v33 = v69;
      v85 = v194;
      if ((sub_22892F048() & 1) == 0)
      {
        goto LABEL_74;
      }

      v86 = v195;
      (v33)(v195, v80, v23);
      v87 = v80;
      v88 = v192;
      (v33)(v86 + *(v192 + 48), v87 + v85, v23);
      v89 = v191;
      sub_2289127F4(v86, v191, sub_2288BB4E0);
      v90 = *(v88 + 48);
      (v15)(v198, v89, v23);
      v91 = v89 + v90;
      v92 = v188;
      v188(v91, v23);
      v33 = v198;
      sub_2288C34B4(v86, v89, sub_2288BB4E0);
      (v15)(v33 + *(v190 + 36), v89 + *(v88 + 48), v23);
      v93 = v89;
      v94 = v92;
      v92(v93, v23);
      if ((sub_22892F048() & 1) == 0)
      {
        goto LABEL_75;
      }

      v95 = sub_22892F028();
      sub_2288B5BCC(v33, sub_2288B4B3C);
      if ((v95 & 1) == 0)
      {
        goto LABEL_76;
      }

      v209 = 1;
      sub_22891285C(&unk_2813DEE00, MEMORY[0x277CCB6A8]);
      sub_22892F4D8();
      v94(v83, v23);
      v96 = v175;
      (v15)(v175, v201, v23);
      v97 = v176;
      sub_22892EBC8();
      v98 = sub_22892E048();
      v99 = v97;
      v100 = *(v98 - 8);
      result = (*(v100 + 48))(v99, 1, v98);
      if (result == 1)
      {
        goto LABEL_87;
      }

      v101 = v174;
      sub_22892EF98();
      (*(v100 + 8))(v99, v98);
      v102 = sub_22892DDA8();
      (*v183)(v101, v208);
      v94(v96, v23);
      v83 = v197;
      v69 = v185;
      v15 = v184;
      v80 = v204;
      v82 = v193;
      if (v102)
      {
        break;
      }

      v82 = v193 + 1;
      if (__OFADD__(v193, 1))
      {
        __break(1u);
        break;
      }
    }

    sub_2288B5BCC(v80, sub_2289126E0);
    v103 = sub_22892EF68();
    result = sub_22892EF68();
    v104 = v103 - result;
    if (__OFSUB__(v103, result))
    {
      goto LABEL_84;
    }

    v105 = __OFSUB__(v104, v82);
    v106 = v104 - v82;
    if (v105)
    {
      goto LABEL_85;
    }

    if (v106 < 1)
    {
      v107 = 0.0;
    }

    else
    {
      v107 = v56 / v106;
    }

    v108 = v178;
    v109 = sub_22890F740();
    v110 = objc_opt_self();
    v175 = [v110 quantityWithUnit:v109 doubleValue:v107];

    v174 = [v110 quantityWithUnit:*(v108 + OBJC_IVAR____TtC19HealthBalanceDaemon30TrainingLoadSummaryQueryServer____lazy_storage___loadBaselineUnit) doubleValue:0.0];
    v111 = v166;
    v112 = v167;
    result = sub_22892F048();
    if ((result & 1) == 0)
    {
      goto LABEL_86;
    }

    v113 = v195;
    v69(v195, v111, v23);
    v114 = v192;
    v69(v113 + *(v192 + 48), v112, v23);
    v115 = v191;
    sub_2289127F4(v113, v191, sub_2288BB4E0);
    v116 = *(v114 + 48);
    (v15)(v33, v115, v23);
    v117 = v115 + v116;
    v118 = v188;
    v188(v117, v177);
    sub_2288C34B4(v113, v115, sub_2288BB4E0);
    v119 = v190;
    (v15)(v33 + *(v190 + 36), v115 + *(v114 + 48), v177);
    v23 = v177;
    v118(v115, v177);
    v120 = v181;
    sub_2289127F4(v33, v181, sub_2288B4B3C);
    v121 = *(v165 + 36);
    v69(v120 + v121, v33, v23);
    sub_2288B5BCC(v33, sub_2288B4B3C);
    a1 = *(v119 + 36);
    v122 = v120;
    if (sub_22892F088())
    {
LABEL_31:
      sub_2288B5BCC(v122, sub_2289126E0);
      v123 = (*(v173 + 24))(v166, v167, v172);

      __swift_destroy_boxed_opaque_existential_0(v210);
      return v123;
    }

    v124 = 0;
    v125 = v206 & 0xFFFFFFFFFFFFFF8;
    v205 = v206 & 0xFFFFFFFFFFFFFF8;
    if (v206 < 0)
    {
      v125 = v206;
    }

    v176 = v125;
    v204 = v206 & 0xC000000000000001;
    v201 = (v164 + 8);
    v178 = (v173 + 16);
    v194 = v121;
    v193 = a1;
    while (1)
    {
      v127 = v185;
      v185(v180, v122 + v121, v23);
      v15 = v196;
      v33 = v184;
      (v184)(v197, v122 + v121, v23);
      if ((sub_22892F048() & 1) == 0)
      {
        break;
      }

      v128 = a1;
      v129 = v195;
      v127(v195, v122, v23);
      v130 = v192;
      v127(v129 + *(v192 + 48), v122 + v128, v23);
      v131 = v191;
      sub_2289127F4(v129, v191, sub_2288BB4E0);
      v132 = *(v130 + 48);
      v133 = v198;
      (v33)(v198, v131, v23);
      v134 = v131 + v132;
      v135 = v188;
      v136 = v200;
      v188(v134, v23);
      sub_2288C34B4(v129, v131, sub_2288BB4E0);
      (v33)(v133 + *(v190 + 36), v131 + *(v130 + 48), v23);
      v137 = v131;
      v138 = v133;
      v139 = v197;
      v15 = v136;
      a1 = v199;
      v135(v137, v23);
      if ((sub_22892F048() & 1) == 0)
      {
        goto LABEL_78;
      }

      v140 = sub_22892F028();
      sub_2288B5BCC(v138, sub_2288B4B3C);
      if ((v140 & 1) == 0)
      {
        goto LABEL_79;
      }

      v209 = 1;
      sub_22891285C(&unk_2813DEE00, MEMORY[0x277CCB6A8]);
      sub_22892F4D8();
      v135(v139, v23);
      (v33)(v179, v180, v23);
      v141 = v170;
      sub_22892EBC8();
      v142 = sub_22892E048();
      v143 = *(v142 - 8);
      result = (*(v143 + 48))(v141, 1, v142);
      if (result == 1)
      {
        goto LABEL_88;
      }

      sub_22892EF98();
      v144 = *(v143 + 8);
      v15 = (v143 + 8);
      v144(v141, v142);
      v145 = v169;
      a1 = v183;
      if (v168)
      {
        v146 = sub_22892F588();
      }

      else
      {
        v146 = *(v205 + 16);
      }

      v23 = v177;
      if (v124 >= v146)
      {
LABEL_62:
        v153 = 0;
      }

      else
      {
        v147 = v206;
        while (1)
        {
          v33 = (v147 + 8 * v124);
          if (v204)
          {
            v148 = MEMORY[0x22AAC3CC0](v124, v206);
          }

          else
          {
            if ((v124 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_71:
              __break(1u);
              goto LABEL_72;
            }

            if (v124 >= *(v205 + 16))
            {
              goto LABEL_71;
            }

            v148 = v33[4];
          }

          v149 = v148;
          v150 = [v148 dateInterval];

          v151 = v202;
          sub_22892DD68();

          sub_22892DD78();
          v15 = *v201;
          (*v201)(v151, v203);
          LOBYTE(v151) = sub_22892DE78();
          (*a1)(v145, v208);
          if ((v151 & 1) == 0)
          {
            break;
          }

          ++v124;
          v147 = v206;
          if (v146 == v124)
          {
            v153 = 0;
            v124 = v146;
            goto LABEL_63;
          }
        }

        if (v204)
        {
          v152 = MEMORY[0x22AAC3CC0](v124, v206);
        }

        else
        {
          if ((v124 & 0x8000000000000000) != 0)
          {
            goto LABEL_80;
          }

          if (v124 >= *(v205 + 16))
          {
            goto LABEL_81;
          }

          v152 = v33[4];
        }

        v154 = v152;
        v155 = [v152 dateInterval];

        v156 = v202;
        sub_22892DD68();

        LOBYTE(v154) = sub_22892DDA8();
        (v15)(v156, v203);
        if ((v154 & 1) == 0)
        {
          goto LABEL_62;
        }

        if (v204)
        {
          v157 = MEMORY[0x22AAC3CC0](v124, v206);
        }

        else
        {
          v157 = v33[4];
        }

        v163 = v157;
        v153 = [v157 quantity];

        ++v124;
      }

LABEL_63:
      sub_22892DD98();
      v158 = sub_22892DE78();
      v159 = *a1;
      (*a1)(v145, v208);
      if (v153)
      {
        v126 = v179;
        (*(v173 + 16))(v153, v179, 0, v172);

        v122 = v181;
      }

      else
      {
        v122 = v181;
        if (v158)
        {
          v160 = v175;
          v126 = v179;
          v161 = v179;
          v162 = 1;
        }

        else
        {
          v160 = v174;
          v126 = v179;
          v161 = v179;
          v162 = 0;
        }

        (*v178)(v160, v161, v162, v172, v173);
      }

      v159(v207, v208);
      v135(v126, v23);
      v121 = v194;
      a1 = v193;
      if (sub_22892F088())
      {
        goto LABEL_31;
      }
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    ;
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_2289115DC(uint64_t *a1)
{
  v2 = sub_22892EFA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22892E828();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_22892EE68();
  sub_22892E808();
  (*(v8 + 8))(v11, v7);
  sub_22891285C(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
  if (sub_22892F048())
  {
    sub_2288B4B3C(0);
    v14 = *(v13 + 36);
    v15 = sub_22892F028();
  }

  else
  {
    v15 = 0;
  }

  (*(v3 + 8))(v6, v2);
  return v15 & 1;
}

void sub_228911988()
{
  if (!qword_27D85BD80)
  {
    sub_22892EFA8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D85BD80);
    }
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_228911A54()
{
  result = qword_2813DFDE0;
  if (!qword_2813DFDE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DFDE0);
  }

  return result;
}

unint64_t sub_228911AB8()
{
  result = qword_2813DE8F0;
  if (!qword_2813DE8F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DE8F0);
  }

  return result;
}

uint64_t sub_228911B1C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2288BC0FC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228911B80(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2288B5C84(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v55 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v50 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v50 - v12;
  v14 = sub_22892DEF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v56 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v50 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v50 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v50 - v26;
  MEMORY[0x28223BE20](v25);
  v54 = v50 - v28;
  sub_22892EF98();
  v29 = [a1 _startDate];
  if (v29)
  {
    v30 = v29;
    sub_22892DEC8();

    v31 = *(v15 + 32);
    v31(v13, v24, v14);
    v53 = *(v15 + 56);
    v53(v13, 0, 1, v14);
    v31(v27, v13, v14);
    v32 = v56;
    v33 = v27;
    v34 = a1;
    v35 = v54;
  }

  else
  {
    v50[1] = a3;
    v52 = v27;
    v36 = *(v15 + 56);
    v36(v13, 1, 1, v14);
    v51 = a1;
    v37 = [a1 _endDate];
    v53 = v36;
    if (v37)
    {
      v38 = v36;
      v39 = v37;
      sub_22892DEC8();

      v40 = *(v15 + 32);
      v40(v11, v24, v14);
      v38(v11, 0, 1, v14);
      v40(v21, v11, v14);
      v35 = v54;
    }

    else
    {
      v36(v11, 1, 1, v14);
      sub_22892DEE8();
      v41 = (*(v15 + 48))(v11, 1, v14);
      v35 = v54;
      if (v41 != 1)
      {
        sub_2288B5BCC(v11, sub_2288B5C84);
      }
    }

    v33 = v52;
    sub_22892DFD8();
    (*(v15 + 8))(v21, v14);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      sub_2288B5BCC(v13, sub_2288B5C84);
    }

    v32 = v56;
    v34 = v51;
  }

  v42 = [v34 _endDate];
  if (v42)
  {
    v43 = v42;
    sub_22892DEC8();

    v44 = *(v15 + 32);
    v45 = v55;
    v44(v55, v24, v14);
    v53(v45, 0, 1, v14);
    v44(v32, v45, v14);
  }

  else
  {
    v46 = v55;
    v53(v55, 1, 1, v14);
    sub_22892DEE8();
    if ((*(v15 + 48))(v46, 1, v14) != 1)
    {
      sub_2288B5BCC(v46, sub_2288B5C84);
    }
  }

  sub_22891285C(&qword_2813DFEE8, MEMORY[0x277CC9578]);
  if (sub_22892F048())
  {
    v47 = sub_22892F038();
  }

  else
  {
    v47 = 0;
  }

  v48 = *(v15 + 8);
  v48(v32, v14);
  v48(v33, v14);
  v48(v35, v14);
  return v47 & 1;
}

BOOL sub_228912164(_BOOL8 result)
{
  v1 = 0;
  v2 = *(result + 16);
  if (v2 <= 0x1B)
  {
    v2 = 27;
  }

  v3 = v2 - 27;
  v4 = (result + 128);
  v5 = -32;
  while (1)
  {
    if (v3 == v1)
    {
      goto LABEL_41;
    }

    v6 = *(v4 - 12);
    v7 = *(v4 - 11);
    v8 = __OFADD__(v6, v7);
    v9 = v6 + v7;
    if (v8)
    {
      goto LABEL_40;
    }

    v10 = *(v4 - 10);
    v8 = __OFADD__(v9, v10);
    v11 = v9 + v10;
    if (v8)
    {
      goto LABEL_40;
    }

    v12 = *(v4 - 9);
    v8 = __OFADD__(v11, v12);
    v13 = v11 + v12;
    if (v8)
    {
      goto LABEL_40;
    }

    v14 = *(v4 - 8);
    v8 = __OFADD__(v13, v14);
    v15 = v13 + v14;
    if (v8)
    {
      goto LABEL_40;
    }

    v16 = *(v4 - 7);
    v8 = __OFADD__(v15, v16);
    v17 = v15 + v16;
    if (v8)
    {
      goto LABEL_40;
    }

    v18 = *(v4 - 6);
    v8 = __OFADD__(v17, v18);
    v19 = v17 + v18;
    if (v8)
    {
      goto LABEL_40;
    }

    v20 = *(v4 - 5);
    v8 = __OFADD__(v19, v20);
    v21 = v19 + v20;
    if (v8)
    {
      goto LABEL_40;
    }

    v22 = *(v4 - 4);
    v8 = __OFADD__(v21, v22);
    v23 = v21 + v22;
    if (v8)
    {
      goto LABEL_40;
    }

    v24 = *(v4 - 3);
    v8 = __OFADD__(v23, v24);
    v25 = v23 + v24;
    if (v8)
    {
      goto LABEL_40;
    }

    v26 = *(v4 - 2);
    v8 = __OFADD__(v25, v26);
    v27 = v25 + v26;
    if (v8)
    {
      goto LABEL_40;
    }

    v28 = *(v4 - 1);
    v8 = __OFADD__(v27, v28);
    v29 = v27 + v28;
    if (v8)
    {
      goto LABEL_40;
    }

    v8 = __OFADD__(v29, *v4);
    v30 = v29 + *v4;
    if (v8)
    {
      goto LABEL_40;
    }

    v31 = v4[1];
    v8 = __OFADD__(v30, v31);
    v32 = v30 + v31;
    if (v8)
    {
      goto LABEL_40;
    }

    v33 = v4[2];
    v8 = __OFADD__(v32, v33);
    v34 = v32 + v33;
    if (v8)
    {
      goto LABEL_40;
    }

    v35 = v4[3];
    v8 = __OFADD__(v34, v35);
    v36 = v34 + v35;
    if (v8)
    {
      goto LABEL_40;
    }

    v37 = v4[4];
    v8 = __OFADD__(v36, v37);
    v38 = v36 + v37;
    if (v8)
    {
      goto LABEL_40;
    }

    v39 = v4[5];
    v8 = __OFADD__(v38, v39);
    v40 = v38 + v39;
    if (v8)
    {
      goto LABEL_40;
    }

    v41 = v4[6];
    v8 = __OFADD__(v40, v41);
    v42 = v40 + v41;
    if (v8)
    {
      goto LABEL_40;
    }

    v43 = v4[7];
    v8 = __OFADD__(v42, v43);
    v44 = v42 + v43;
    if (v8)
    {
      goto LABEL_40;
    }

    v45 = v4[8];
    v8 = __OFADD__(v44, v45);
    v46 = v44 + v45;
    if (v8)
    {
      goto LABEL_40;
    }

    v47 = v4[9];
    v8 = __OFADD__(v46, v47);
    v48 = v46 + v47;
    if (v8)
    {
      goto LABEL_40;
    }

    v49 = v4[10];
    v8 = __OFADD__(v48, v49);
    v50 = v48 + v49;
    if (v8)
    {
      goto LABEL_40;
    }

    v51 = v4[11];
    v8 = __OFADD__(v50, v51);
    v52 = v50 + v51;
    if (v8)
    {
      goto LABEL_40;
    }

    v53 = v4[12];
    v8 = __OFADD__(v52, v53);
    v54 = v52 + v53;
    if (v8)
    {
      goto LABEL_40;
    }

    v55 = v4[13];
    v8 = __OFADD__(v54, v55);
    v56 = v54 + v55;
    if (v8 || (v57 = v4[14], v8 = __OFADD__(v56, v57), v58 = v56 + v57, v8) || (v59 = v4[15], v8 = __OFADD__(v58, v59), v60 = v58 + v59, v8))
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v60 >= 6)
    {
      break;
    }

    if (v5 != -248)
    {
      v5 -= 8;
      ++v4;
      if (v1++ | v60)
      {
        continue;
      }
    }

    return 0;
  }

  v62 = 0;
  v63 = -v5;
  while (1)
  {
    v64 = *(result + v63);
    v8 = __OFADD__(v62, v64);
    v62 += v64;
    if (v8)
    {
      break;
    }

    v63 += 8;
    if (v63 == 256)
    {
      return v62 > 0;
    }
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_228912338(uint64_t a1)
{
  v2 = sub_22892E038();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_22891264C();
    v10 = sub_22892F618();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_22891285C(&unk_2813DFEB8, MEMORY[0x277CC99D0]);
      v18 = sub_22892EFF8();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_22891285C(&qword_27D85BDB0, MEMORY[0x277CC99D0]);
          v25 = sub_22892F088();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_22891264C()
{
  if (!qword_2813DEAF0)
  {
    sub_22892E038();
    sub_22891285C(&unk_2813DFEB8, MEMORY[0x277CC99D0]);
    v0 = sub_22892F628();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DEAF0);
    }
  }
}

void sub_2289126E0()
{
  if (!qword_2813DEA70)
  {
    sub_2288B4B3C(255);
    sub_228912744();
    v0 = sub_22892F728();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DEA70);
    }
  }
}

unint64_t sub_228912744()
{
  result = qword_2813DECA8;
  if (!qword_2813DECA8)
  {
    sub_2288B4B3C(255);
    sub_22891285C(&unk_2813DEE00, MEMORY[0x277CCB6A8]);
    sub_2288D9DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DECA8);
  }

  return result;
}

uint64_t sub_2289127F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22891285C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2289128B0(void **a1)
{
  v2 = *(type metadata accessor for BloodOxygenMetadataStatistics(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2289170EC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_228915C30(v6);
  *a1 = v3;
  return result;
}

BOOL sub_228912958()
{
  v1 = v0;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for BloodOxygenComparisonSummary(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228913674();
  v7 = swift_allocObject();
  v8 = v7;
  v7[2] = sub_2289159D8;
  v7[3] = v1;
  aBlock[4] = sub_2289159E0;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2289147D4;
  aBlock[3] = &block_descriptor_9;
  v9 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v10 = [v6 enumerateWithError:aBlock handler:v9];
  _Block_release(v9);
  v11 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v10)
  {
    v13 = *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon40OxygenSaturationElevationContextProvider_builder);
    sub_228914830(v5);
    v8 = sub_228914AC0();

    sub_228915B3C(v5, type metadata accessor for BloodOxygenComparisonSummary);
  }

  else
  {
    sub_22892DE38();

    swift_willThrow();
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_228912BAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = a4;
  v85 = a3;
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v81 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = &v62 - v11;
  v12 = sub_22892E048();
  v86 = *(v12 - 8);
  v13 = *(v86 + 64);
  MEMORY[0x28223BE20](v12);
  v82 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BB4E0();
  v74 = v15;
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v66 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v73 = &v62 - v19;
  v20 = sub_22892EFA8();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v62 - v26;
  sub_2289171F8(0, &qword_2813DECB8, MEMORY[0x277D83D00]);
  v70 = v28;
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v80 = &v62 - v30;
  *(v4 + 16) = a1;
  v31 = v21[2];
  v78 = v21 + 2;
  v79 = v31;
  v31(v4 + OBJC_IVAR____TtC19HealthBalanceDaemon40OxygenSaturationElevationContextProvider_targetDay, a2, v20);
  v32 = OBJC_IVAR____TtC19HealthBalanceDaemon40OxygenSaturationElevationContextProvider_targetEndDate;
  v33 = sub_22892DEF8();
  v71 = *(v33 - 8);
  v72 = v33;
  (*(v71 + 16))(v4 + v32, v85);
  v34 = *(v86 + 16);
  v75 = v4;
  v76 = v12;
  v68 = v86 + 16;
  v67 = v34;
  v34((v4 + OBJC_IVAR____TtC19HealthBalanceDaemon40OxygenSaturationElevationContextProvider_gregorianCalendar), v84, v12);
  v69 = a1;
  sub_22892EED8();
  sub_22892EF18();
  v87 = v21;
  v35 = v21[1];
  v35(v25, v20);
  sub_2288BAA64(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
  v36 = a2;
  result = sub_22892F048();
  if (result)
  {
    v63 = v35;
    v39 = v87 + 4;
    v38 = v87[4];
    v40 = v73;
    v77 = v27;
    v38(v73, v27, v20);
    v41 = v38;
    v42 = v74;
    v43 = v40 + *(v74 + 48);
    v64 = v36;
    v44 = v66;
    v79(v43, v36, v20);
    sub_228917294(v40, v44, sub_2288BB4E0);
    v45 = *(v42 + 48);
    v46 = v80;
    v65 = v41;
    v87 = v39;
    v41(v80, v44, v20);
    v47 = v44 + v45;
    v48 = v63;
    v63(v47, v20);
    sub_2289172FC(v40, v44, sub_2288BB4E0);
    v41(v46 + *(v70 + 36), (v44 + *(v42 + 48)), v20);
    v48(v44, v20);
    v49 = v48;
    v50 = v64;
    v79(v77, v64, v20);
    v51 = v84;
    v52 = v76;
    v67(v82, v84, v76);
    v53 = type metadata accessor for BloodOxygenMetadataStatistics(0);
    v54 = *(*(v53 - 8) + 56);
    v54(v83, 1, 1, v53);
    v54(v81, 1, 1, v53);

    v55 = v86;
    (*(v86 + 8))(v51, v52);
    (*(v71 + 8))(v85, v72);
    v49(v50, v20);
    v56 = type metadata accessor for BloodOxygenMetadataStatisticsBuilder(0);
    v57 = *(v56 + 48);
    v58 = *(v56 + 52);
    v59 = swift_allocObject();
    v54(v59 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_targetStatistics, 1, 1, v53);
    v54(v59 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_openStatistics, 1, 1, v53);
    *(v59 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_lastSample) = 0;
    sub_228917364(v80, v59 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_baselineRange);
    v65(v59 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_targetDay, v77, v20);
    (*(v55 + 32))(v59 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_gregorianCalendar, v82, v52);
    *(v59 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_completedBaselineStatistics) = MEMORY[0x277D84F90];
    v60 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_targetStatistics;
    swift_beginAccess();
    sub_228917164(v83, v59 + v60);
    swift_endAccess();
    v61 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_openStatistics;
    swift_beginAccess();
    sub_228917164(v81, v59 + v61);
    swift_endAccess();
    result = v75;
    *(v75 + OBJC_IVAR____TtC19HealthBalanceDaemon40OxygenSaturationElevationContextProvider_builder) = v59;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22891336C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  sub_2288BB4E0();
  v4 = v3;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  sub_2289171F8(0, &qword_2813DED90, MEMORY[0x277D83638]);
  v12 = v11;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_baselineRange;
  v17 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_targetDay;
  v18 = sub_22892EFA8();
  sub_2288BAA64(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
  result = sub_22892F048();
  if (result)
  {
    v20 = *(v18 - 8);
    v21 = v20;
    v31 = v12;
    v22 = *(v20 + 16);
    v23 = v16;
    v24 = v17;
    v25 = v15;
    v30 = v15;
    v32 = v2;
    v22(v10, v2 + v23, v18);
    v22(&v10[*(v4 + 48)], v2 + v24, v18);
    sub_228917294(v10, v8, sub_2288BB4E0);
    v26 = *(v4 + 48);
    v27 = *(v21 + 32);
    v27(v25, v8, v18);
    v28 = *(v21 + 8);
    v28(&v8[v26], v18);
    sub_2289172FC(v10, v8, sub_2288BB4E0);
    v29 = v30;
    v27(&v30[*(v31 + 36)], &v8[*(v4 + 48)], v18);
    v28(v8, v18);
    sub_22892F058();
    return sub_2288BA8EC(v29, &qword_2813DED90, MEMORY[0x277D83638]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_228913674()
{
  v1 = v0;
  v34 = sub_22892DDC8();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v34);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  sub_2288BC0FC(0, &qword_27D85BDF8, 0x277D10810);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = sub_2288BC0FC(0, &qword_2813DEC40, 0x277CCD830);
  v10 = *MEMORY[0x277CCCBE8];
  v11 = MEMORY[0x22AAC3A10]();
  v12 = *(v1 + 16);
  v33 = [ObjCClassFromMetadata entityEnumeratorWithType:v11 profile:v12];

  sub_2288DB154();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228931950;
  *(inited + 32) = HDDataEntityPredicateForObjectsFromAppleWatchSources();
  v14 = [v12 metadataManager];
  v15 = [v14 predicateWithMetadataKey:*MEMORY[0x277CCC478] exists:1];

  *(inited + 40) = v15;
  v16 = *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon40OxygenSaturationElevationContextProvider_builder);
  sub_22891336C(v6);
  sub_22892DD38();
  v17 = *(v2 + 8);
  v18 = v6;
  v19 = v34;
  v17(v18, v34);
  v20 = sub_22892DD58();
  v17(v8, v19);
  v21 = MEMORY[0x22AAC3A10](v10);
  v22 = HDSampleEntityPredicateForDateInterval();

  *(inited + 48) = v22;
  v23 = v33;
  sub_228901F80(inited);
  swift_setDeallocating();
  v24 = *(inited + 16);
  swift_arrayDestroy();
  v25 = sub_22892F208();

  v26 = [objc_opt_self() predicateMatchingAllPredicates_];

  [v23 setPredicate_];
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_228930AF0;
  v28 = *MEMORY[0x277D104A8];
  sub_2288BC0FC(0, &qword_27D85BE00, 0x277D10848);
  v29 = swift_getObjCClassFromMetadata();
  *(v27 + 32) = [objc_opt_self() orderingTermWithProperty:v28 entityClass:v29 ascending:1];
  sub_2288BC0FC(0, &qword_27D85BE08, 0x277D10B68);
  v30 = sub_22892F208();

  [v23 setOrderingTerms_];

  return v23;
}

BOOL sub_228913A6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = *(a4 + OBJC_IVAR____TtC19HealthBalanceDaemon40OxygenSaturationElevationContextProvider_builder);
    v9 = a1;
    sub_228913BBC(v7);
  }

  else
  {
    v10 = objc_opt_self();
    sub_22892F648();

    v11 = [a1 description];
    v12 = sub_22892F0C8();
    v14 = v13;

    MEMORY[0x22AAC3770](v12, v14);

    v9 = sub_22892F098();

    [v10 hk:a3 assignError:0 code:v9 description:?];
  }

  return v7 != 0;
}

char *sub_228913BBC(void *a1)
{
  v2 = v1;
  v126 = a1;
  v3 = sub_22892DDC8();
  v116 = *(v3 - 8);
  v117 = v3;
  v4 = *(v116 + 64);
  MEMORY[0x28223BE20](v3);
  v113 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_22892EFA8();
  v114 = *(v115 - 8);
  v6 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v112 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892E048();
  v123 = *(v8 - 8);
  v124 = v8;
  v9 = *(v123 + 64);
  MEMORY[0x28223BE20](v8);
  v122 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v118 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v119 = &v105 - v15;
  v121 = type metadata accessor for BloodOxygenMetadataStatistics(0);
  v16 = *(v121 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v121);
  v120 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22892DEF8();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v125 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v105 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v105 - v27;
  v29 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_lastSample;
  v30 = *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_lastSample);
  if (v30)
  {
    v31 = v30;
    v32 = v29;
    v33 = v1;
    v34 = [v31 endDate];
    sub_22892DEC8();

    v35 = [v126 endDate];
    sub_22892DEC8();

    sub_2288BAA64(&qword_2813DFEE8, MEMORY[0x277CC9578]);
    LOBYTE(v35) = sub_22892F048();

    v36 = v20[1];
    v36(v26, v19);
    result = (v36)(v28, v19);
    v2 = v33;
    v29 = v32;
    if ((v35 & 1) == 0)
    {
      __break(1u);
      goto LABEL_24;
    }
  }

  v38 = v19;
  v39 = [v126 metadata];
  if (v39)
  {
    v111 = v16;
    v40 = v39;
    v41 = sub_22892EFC8();

    v42 = *MEMORY[0x277CCC478];
    v43 = sub_22892F0C8();
    if (*(v41 + 16))
    {
      v45 = sub_22891C740(v43, v44);
      v47 = v46;

      if (v47)
      {
        sub_2288B7664(*(v41 + 56) + 32 * v45, v128);

        sub_2288BC0FC(0, &unk_2813DEC98, 0x277CCD7E8);
        if (swift_dynamicCast())
        {
          v48 = v127;
          v49 = objc_opt_self();
          v50 = v48;
          v51 = [v49 pascalUnitWithMetricPrefix_];
          [v50 doubleValueForUnit_];
          v53 = v52;

          v54 = [v126 endDate];
          v55 = v125;
          sub_22892DEC8();

          v56 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_openStatistics;
          swift_beginAccess();
          v57 = v119;
          sub_228915A1C(v2 + v56, v119);
          v58 = v121;
          v59 = (*(v111 + 48))(v57, 1, v121);
          v110 = v56;
          if (v59 == 1)
          {
            sub_228915AB0(v57);
            v106 = v20;
            v60 = v20[2];
            v108 = v28;
            v109 = v38;
            v60(v28, v55, v38);
            (*(v123 + 16))(v122, v2 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_gregorianCalendar, v124);
            v61 = v58;
            v62 = sub_22892DE58();
            v63 = sub_22892DFF8();
            [v62 hk:v63 morningIndexWithCalendar:?];

            v64 = v112;
            sub_22892EED8();
            v65 = v50;
            v66 = v113;
            sub_22892EEC8();
            v67 = v114;
            v68 = v118;
            v69 = v115;
            (*(v114 + 16))(v118, v64, v115);
            v70 = v68 + v61[5];
            sub_22892DD48();

            (*(v116 + 8))(v66, v117);
            (*(v67 + 8))(v64, v69);
            (*(v123 + 8))(v122, v124);
            v71 = v106[1];
            v72 = v109;
            v71(v108, v109);
            v71(v125, v72);
            *(v68 + v61[6]) = v53;
            *(v68 + v61[7]) = 1;
            (*(v111 + 56))(v68, 0, 1, v61);
LABEL_9:
            v73 = v110;
            swift_beginAccess();
            v74 = v2 + v73;
            v75 = v68;
LABEL_22:
            sub_228917164(v75, v74);
            swift_endAccess();
            goto LABEL_12;
          }

          v107 = v50;
          v78 = v57;
          v79 = v120;
          sub_2289172FC(v78, v120, type metadata accessor for BloodOxygenMetadataStatistics);
          v80 = v79 + v58[5];
          sub_2288BAA64(&qword_2813DFEE8, MEMORY[0x277CC9578]);
          v81 = v38;
          v82 = v20;
          if ((sub_22892F048() & 1) == 0 || (sub_228915874(), v84 = *(v83 + 36), (sub_22892F028() & 1) == 0))
          {
            sub_228915070();
            (v20[2])(v28, v55, v81);
            v92 = *(v123 + 16);
            v108 = v28;
            v109 = v81;
            v92(v122, v2 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_gregorianCalendar, v124);
            v93 = sub_22892DE58();
            v94 = sub_22892DFF8();
            [v93 hk:v94 morningIndexWithCalendar:?];

            v95 = v112;
            sub_22892EED8();
            v96 = v113;
            sub_22892EEC8();
            v97 = v114;
            v98 = v118;
            v99 = v115;
            (*(v114 + 16))(v118, v95, v115);
            v100 = v121;
            v101 = v98 + *(v121 + 20);
            sub_22892DD48();

            (*(v116 + 8))(v96, v117);
            (*(v97 + 8))(v95, v99);
            (*(v123 + 8))(v122, v124);
            v102 = v82[1];
            v103 = v109;
            v102(v108, v109);
            sub_228915B3C(v120, type metadata accessor for BloodOxygenMetadataStatistics);
            v102(v125, v103);
            *(v98 + *(v100 + 24)) = v53;
            *(v98 + *(v100 + 28)) = 1;
            (*(v111 + 56))(v98, 0, 1, v100);
            v104 = v110;
            swift_beginAccess();
            v74 = v2 + v104;
            v75 = v98;
            goto LABEL_22;
          }

          (v20[1])(v55, v81);

          result = v120;
          v85 = v121;
          v86 = *(v121 + 24);
          v87 = *&v120[v86];
          if (v53 < v87)
          {
            v87 = v53;
          }

          *&v120[v86] = v87;
          v88 = *(v85 + 28);
          v89 = *&result[v88];
          v90 = __OFADD__(v89, 1);
          v91 = v89 + 1;
          if (!v90)
          {
            *&result[v88] = v91;
            v68 = v118;
            sub_2289172FC(result, v118, type metadata accessor for BloodOxygenMetadataStatistics);
            (*(v111 + 56))(v68, 0, 1, v85);
            goto LABEL_9;
          }

LABEL_24:
          __break(1u);
          return result;
        }

        goto LABEL_12;
      }
    }

    else
    {
    }
  }

LABEL_12:
  v76 = *(v2 + v29);
  *(v2 + v29) = v126;

  v77 = v126;

  return v77;
}