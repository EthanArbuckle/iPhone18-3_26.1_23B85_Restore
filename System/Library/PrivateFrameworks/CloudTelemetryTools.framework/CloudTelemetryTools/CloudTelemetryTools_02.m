unint64_t sub_22DF104D0(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_22DF10540(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_22DF105EC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22DF1206C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22DF10658(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22DF10658(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22DF64144();
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
        v5 = sub_22DF63BA4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22DF10838(v7, v8, a1, v4);
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
    return sub_22DF10750(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22DF10750(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = result;
    v7 = *a4;
    sub_22DF141A8();
    v8 = (v7 + v4);
    v9 = v6 - v4;
LABEL_5:
    v10 = *(v7 + v4);
    v11 = v9;
    v12 = v8;
    while (1)
    {
      v15 = *(v12 - 1);
      result = sub_22DF63964();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        ++v8;
        --v9;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v13 = *v12;
      *v12 = *(v12 - 1);
      *--v12 = v13;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22DF10838(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v85 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_92:
    v5 = *v85;
    if (!*v85)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_22DEF96DC(v10);
      v10 = result;
    }

    v76 = *(v10 + 2);
    if (v76 >= 2)
    {
      while (1)
      {
        v77 = *v7;
        if (!*v7)
        {
          goto LABEL_128;
        }

        v7 = (v76 - 1);
        v78 = *&v10[16 * v76];
        v79 = *&v10[16 * v76 + 24];
        sub_22DF10E54(&v77[v78], &v77[*&v10[16 * v76 + 16]], &v77[v79], v5);
        if (v6)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_22DEF96DC(v10);
        }

        if (v76 - 2 >= *(v10 + 2))
        {
          goto LABEL_118;
        }

        v80 = &v10[16 * v76];
        *v80 = v78;
        *(v80 + 1) = v79;
        result = sub_22DEF9650(v7);
        v76 = *(v10 + 2);
        v7 = a3;
        if (v76 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v83 = v6;
      v5 = *v7;
      v93 = *(*v7 + v12);
      v92 = *(*v7 + v9);
      sub_22DF141A8();
      result = sub_22DF63964();
      v13 = v11;
      v14 = result;
      v82 = v13;
      while (v8 - 2 != v13)
      {
        v91 = v5[v13 + 2];
        v90 = v5[v13 + 1];
        result = sub_22DF63964();
        ++v13;
        if ((v14 & 1) != (result & 1))
        {
          v8 = v13 + 1;
          break;
        }
      }

      v6 = v83;
      v7 = a3;
      if (v14)
      {
        v11 = v82;
        if (v8 < v82)
        {
          goto LABEL_121;
        }

        if (v82 < v8)
        {
          v15 = v8 - 1;
          v16 = v82;
          do
          {
            if (v16 != v15)
            {
              v19 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v17 = *(v19 + v16);
              *(v19 + v16) = *(v19 + v15);
              *(v19 + v15) = v17;
            }
          }

          while (++v16 < v15--);
        }

        v12 = v8;
      }

      else
      {
        v12 = v8;
        v11 = v82;
      }
    }

    v20 = v7[1];
    if (v12 < v20)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_120;
      }

      if (v12 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_122;
        }

        if (v11 + a4 >= v20)
        {
          v21 = v7[1];
        }

        else
        {
          v21 = v11 + a4;
        }

        if (v21 < v11)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v12 != v21)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v12 < v11)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v89 = v12;
    v29 = v6;
    if ((result & 1) == 0)
    {
      result = sub_22DEF78C8(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v31 = *(v10 + 2);
    v30 = *(v10 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_22DEF78C8((v30 > 1), v31 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v32;
    v33 = &v10[16 * v31];
    *(v33 + 4) = v11;
    *(v33 + 5) = v89;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_129;
    }

    if (v31)
    {
      v6 = v29;
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v10 + 4);
          v37 = *(v10 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_61:
          if (v39)
          {
            goto LABEL_108;
          }

          v52 = &v10[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_111;
          }

          v58 = &v10[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_115;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v62 = &v10[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_75:
        if (v57)
        {
          goto LABEL_110;
        }

        v65 = &v10[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_113;
        }

        if (v68 < v56)
        {
          goto LABEL_4;
        }

LABEL_82:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
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

        if (!*v7)
        {
          goto LABEL_126;
        }

        v74 = *&v10[16 * v73 + 32];
        v5 = *&v10[16 * v35 + 40];
        sub_22DF10E54((*v7 + v74), (*v7 + *&v10[16 * v35 + 32]), &v5[*v7], v34);
        if (v6)
        {
        }

        if (v5 < v74)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_22DEF96DC(v10);
        }

        if (v73 >= *(v10 + 2))
        {
          goto LABEL_105;
        }

        v75 = &v10[16 * v73];
        *(v75 + 4) = v74;
        *(v75 + 5) = v5;
        result = sub_22DEF9650(v35);
        v32 = *(v10 + 2);
        if (v32 <= 1)
        {
          goto LABEL_4;
        }
      }

      v40 = &v10[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_106;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_107;
      }

      v47 = &v10[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_109;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_112;
      }

      if (v51 >= v43)
      {
        v69 = &v10[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_116;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

    v6 = v29;
LABEL_4:
    v8 = v7[1];
    v9 = v89;
    if (v89 >= v8)
    {
      goto LABEL_92;
    }
  }

  v84 = v6;
  v22 = *v7;
  sub_22DF141A8();
  v23 = &v22[v12];
  v24 = v11 - v12;
  v87 = v21;
LABEL_33:
  v88 = v12;
  v25 = v22[v12];
  v26 = v24;
  v5 = v23;
  while (1)
  {
    v94 = *(v5 - 1);
    result = sub_22DF63964();
    if ((result & 1) == 0)
    {
LABEL_32:
      ++v12;
      ++v23;
      --v24;
      if (v88 + 1 != v87)
      {
        goto LABEL_33;
      }

      v12 = v87;
      v6 = v84;
      v7 = a3;
      goto LABEL_40;
    }

    if (!v22)
    {
      break;
    }

    v27 = *v5;
    *v5 = *(v5 - 1);
    *--v5 = v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_22DF10E54(_BYTE *__dst, _BYTE *__src, unint64_t a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      sub_22DF141A8();
LABEL_26:
      v14 = v6 - 1;
      --v5;
      v15 = v10;
      do
      {
        v16 = v5 + 1;
        v17 = *--v15;
        v21 = *v14;
        if (sub_22DF63964())
        {
          if (v16 < v6 || v5 >= v6)
          {
            *v5 = *v14;
          }

          if (v10 <= v4 || (--v6, v14 <= v7))
          {
            v6 = v14;
            goto LABEL_40;
          }

          goto LABEL_26;
        }

        if (v16 < v10 || v5 >= v10)
        {
          *v5 = *v15;
        }

        --v5;
        v10 = v15;
      }

      while (v15 > v4);
      v10 = v15;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      sub_22DF141A8();
      while (1)
      {
        v20 = *v6;
        v19 = *v4;
        if (sub_22DF63964())
        {
          v11 = v6 + 1;
          v12 = v6;
          if (v7 >= v6 && v7 < v11)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v13 = v4 + 1;
          v12 = v4;
          v11 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_17;
            }
          }
        }

        *v7 = *v12;
LABEL_17:
        ++v7;
        if (v4 < v10)
        {
          v6 = v11;
          if (v11 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
  }

LABEL_40:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_22DF110A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22DF642A4();
  sub_22DF63A54();
  v9 = sub_22DF642D4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22DF64184() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_22DF11458(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22DF111F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47828, &qword_22DF68950);
  result = sub_22DF63EE4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22DF642A4();
      sub_22DF63A54();
      result = sub_22DF642D4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22DF11458(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_22DF111F8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22DF115D8();
      goto LABEL_16;
    }

    sub_22DF11734(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22DF642A4();
  sub_22DF63A54();
  result = sub_22DF642D4();
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

      result = sub_22DF64184();
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
  result = sub_22DF64224();
  __break(1u);
  return result;
}

void *sub_22DF115D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47828, &qword_22DF68950);
  v2 = *v0;
  v3 = sub_22DF63ED4();
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

uint64_t sub_22DF11734(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47828, &qword_22DF68950);
  result = sub_22DF63EE4();
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
      sub_22DF642A4();

      sub_22DF63A54();
      result = sub_22DF642D4();
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

size_t sub_22DF1196C(size_t a1, int64_t a2, char a3)
{
  result = sub_22DF11AA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22DF1198C(void *a1, int64_t a2, char a3)
{
  result = sub_22DF11C78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22DF119AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47838, &unk_22DF67100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

size_t sub_22DF11AA0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47610, &unk_22DF660D0);
  v10 = *(type metadata accessor for ServiceEventValue() - 8);
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
  v15 = *(type metadata accessor for ServiceEventValue() - 8);
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

void *sub_22DF11C78(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47820, &qword_22DF670E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47818, &qword_22DF670E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22DF11DAC(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_22DF638B4();
      sub_22DF1213C(&qword_27DA47750, MEMORY[0x277CC5540]);
      result = sub_22DF63864();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_22DF11F8C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22DF11F8C(uint64_t a1, uint64_t a2)
{
  result = sub_22DF63204();
  if (!result || (result = sub_22DF63234(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22DF63224();
      sub_22DF638B4();
      sub_22DF1213C(&qword_27DA47750, MEMORY[0x277CC5540]);
      return sub_22DF63864();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22DF12080(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_22DF07128(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_22DF12118(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

uint64_t sub_22DF1213C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22DF12184()
{
  result = qword_27DA4A5D8[0];
  if (!qword_27DA4A5D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4A5D8);
  }

  return result;
}

uint64_t sub_22DF121D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_22DF64184() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x5F68736572666572 && a2 == 0xED0000656C637963 || (sub_22DF64184() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x765F646572616873 && a2 == 0xEC00000073656C61 || (sub_22DF64184() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0x6D706F6C65766564 && a2 == 0xEB00000000746E65)
  {
    v5 = 0;
LABEL_17:

    return v5;
  }

  v6 = sub_22DF64184();

  result = 0;
  if ((v6 & 1) == 0)
  {
    if (a1 == 0x6E695F656C707061 && a2 == 0xEE006C616E726574)
    {
      v5 = 1;
      goto LABEL_17;
    }

    v7 = sub_22DF64184();

    if (v7)
    {
      return 1;
    }

    if (a1 == 1684366707 && a2 == 0xE400000000000000)
    {
      v5 = 2;
      goto LABEL_17;
    }

    v8 = sub_22DF64184();

    if (v8)
    {
      return 2;
    }

    if (a1 == 0x657361656C6572 && a2 == 0xE700000000000000)
    {
      v5 = 3;
      goto LABEL_17;
    }

    v9 = sub_22DF64184();

    if (v9)
    {
      return 3;
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t sub_22DF1245C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA477B8, &qword_22DF67098);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF13D6C();
  sub_22DF64304();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v41) = 4;
  v33 = sub_22DF640C4();
  v34 = v11;
  LOBYTE(v41) = 5;
  v32 = sub_22DF640A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47C00, &qword_22DF670A0);
  v40 = 6;
  sub_22DF13F94(&qword_27DA477C0, &qword_27DA47C00, &qword_22DF670A0, sub_22DF13DC0);
  sub_22DF64094();
  v30 = v41;
  v13 = sub_22DF64104();
  v14 = *(v13 + 16);
  v31 = v6;
  v29[1] = v13;
  if (v14)
  {
    v15 = (v13 + 32);
    v16 = MEMORY[0x277D84F90];
    v37 = a2;
    while (1)
    {
      v18 = *v15;
      v17 = v18;
      v39 = v15 + 1;
      if (v18 <= 2)
      {
        if (!v17)
        {
          goto LABEL_27;
        }

        if (v17 == 1)
        {
          LOBYTE(v17) = (sub_22DF64184() & 1) == 0;
          goto LABEL_27;
        }

        v38 = 1;
        v35 = 1;
        v36 = 1;
      }

      else
      {
        v38 = 0;
        if (v17 > 4)
        {
          v35 = 1;
          v36 = 1;
        }

        else
        {
          v35 = 0;
          v36 = v17 != 3;
        }
      }

      if (sub_22DF64184())
      {
        LOBYTE(v17) = 0;
        goto LABEL_27;
      }

      v19 = sub_22DF64184();
      if (v19)
      {
        LOBYTE(v17) = 1;
      }

      else
      {
        LOBYTE(v17) = 2;
      }

      if ((v19 | v38))
      {
        goto LABEL_27;
      }

      if (sub_22DF64184())
      {
        break;
      }

      if ((v36 | v35) != 1)
      {
        LOBYTE(v17) = 3;
        goto LABEL_27;
      }

      v20 = sub_22DF64184();

      if (v20)
      {
        LOBYTE(v17) = 3;
LABEL_28:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_22DF0EDC0(0, *(v16 + 2) + 1, 1, v16);
        }

        v22 = *(v16 + 2);
        v21 = *(v16 + 3);
        if (v22 >= v21 >> 1)
        {
          v16 = sub_22DF0EDC0((v21 > 1), v22 + 1, 1, v16);
        }

        *(v16 + 2) = v22 + 1;
        v16[v22 + 32] = v17;
      }

      a2 = v37;
      --v14;
      v15 = v39;
      if (!v14)
      {
        goto LABEL_36;
      }
    }

    LOBYTE(v17) = 2;
LABEL_27:

    goto LABEL_28;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_36:

  MEMORY[0x28223BE20](v23);
  v29[-2] = v9;
  v24 = sub_22DF0C198(sub_22DF13E14, &v29[-4], v16);

  if (v24[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA477D0, &qword_22DF670A8);
    v25 = sub_22DF64044();
  }

  else
  {
    v25 = MEMORY[0x277D84F98];
  }

  v26 = v31;
  v41 = v25;
  sub_22DF0F3E8(v24, 1, &v41);
  v27 = v41;
  (*(v26 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v28 = v34;
  *a2 = v33;
  *(a2 + 8) = v28;
  BYTE4(v28) = BYTE4(v32);
  *(a2 + 16) = v32;
  *(a2 + 20) = BYTE4(v28) & 1;
  *(a2 + 24) = v30;
  *(a2 + 32) = v27;
  return result;
}

unint64_t sub_22DF12AD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47858, &qword_22DF67120);
    v3 = sub_22DF64044();

    for (i = (a1 + 72); ; i += 48)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      sub_22DF12F0C(v7, v8, v9, v10);
      result = sub_22DEF08FC(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 32 * result;
      *v14 = v7;
      *(v14 + 8) = v8;
      *(v14 + 16) = v9;
      *(v14 + 24) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_22DF12C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47850, &qword_22DF67118);
    v3 = sub_22DF64044();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_22DEF08FC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
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

uint64_t sub_22DF12D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || !a1)
  {
    return 0;
  }

  v5 = (a1 + 40);
  v6 = *(a1 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 2;
    v9 = *(v5 - 1);
    v8 = *v5;
    v13[0] = a2;
    v13[1] = a3;
    MEMORY[0x28223BE20](a1);
    v12[2] = v13;

    v10 = sub_22DF10540(sub_22DF144B8, v12, v9);

    v5 = v7;
    if (v10)
    {
      return v8;
    }
  }

  return 0;
}

uint64_t sub_22DF12E24(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = a1[1];
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  (*(v6 + 8))(v11, v5, v6);
  v13 = v12;
  v7 = v12;

  sub_22DEF0FA8(v11);
  if (v3 == v7 && v4 == *(&v7 + 1))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22DF64184();
  }

  sub_22DF13A04(&v13);
  return v9 & 1;
}

uint64_t sub_22DF12EF4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22DF12F0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }
  }
}

uint64_t sub_22DF12F5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }
  }
}

uint64_t sub_22DF12FC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_22DEEBC28();
  }

  return result;
}

uint64_t sub_22DF12FE0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_22DEEBC34();
  }

  return result;
}

uint64_t sub_22DF12FF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2318DCC40](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22DF110A8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *sub_22DF13090(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = ~a3;
  v57 = type metadata accessor for ServiceEventValue();
  v9 = *(v57 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v57);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v8)
  {
    goto LABEL_6;
  }

  if (a3)
  {
    if (!*(a4 + 16) || (v13 = sub_22DEF08FC(a1, a2), (v14 & 1) == 0) || (v15 = *(a4 + 56) + 16 * v13, *(v15 + 8)))
    {
LABEL_6:
      a1 = MEMORY[0x277D84F90];
      goto LABEL_8;
    }

    a1 = *v15;
  }

  else
  {
    sub_22DEEBC28();
  }

LABEL_8:
  result = sub_22DF0F0C8(0, *(a1 + 16), 0, MEMORY[0x277D84F90]);
  v56 = result;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = a1 + 32;
    v51 = 0x800000022DF6E510;
    v53 = a1;
    v54 = v17;
    v52 = a1 + 32;
    while (1)
    {
      v20 = v19 + 72 * v18;
      v21 = *(v20 + 48);
      v22 = *(v20 + 64);
      v23 = *(v20 + 16);
      v61 = *(v20 + 32);
      v24 = *v20;
      v63 = v22;
      v62 = v21;
      v59 = v24;
      v60 = v23;
      if (!*(&v61 + 1))
      {
        break;
      }

LABEL_26:
      if (++v18 == v17)
      {
        goto LABEL_52;
      }

      if (v18 >= *(a1 + 16))
      {
        __break(1u);
        return result;
      }
    }

    v25 = *(&v59 + 1);
    sub_22DF08DA4(&v59, v58);

    v27 = sub_22DF12FF8(v26);

    v29 = *(v25 + 16);
    if (v29)
    {
      v55 = v27;
      v58[0] = MEMORY[0x277D84F90];
      sub_22DF1196C(0, v29, 0);
      v30 = v58[0];
      v31 = (v25 + 40);
      do
      {
        v32 = *v31;
        *v12 = *(v31 - 1);
        v12[1] = v32;
        swift_storeEnumTagMultiPayload();
        v58[0] = v30;
        v34 = *(v30 + 16);
        v33 = *(v30 + 24);

        if (v34 >= v33 >> 1)
        {
          sub_22DF1196C(v33 > 1, v34 + 1, 1);
          v30 = v58[0];
        }

        *(v30 + 16) = v34 + 1;
        sub_22DF140DC(v12, v30 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v34, type metadata accessor for ServiceEventValue);
        v31 += 2;
        --v29;
      }

      while (v29);
      v27 = v55;
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    v35 = v60;
    v36 = j_nullsub_1(v27, v30, v28);
    v38 = v37;
    if (v35 == __PAIR128__(0xE500000000000000, 0x776F6C6C61) || (sub_22DF64184() & 1) != 0)
    {
      v39 = &type metadata for EventAllowFilter;
      v40 = &off_2841953D0;
    }

    else if (v35 == __PAIR128__(0xE600000000000000, 0x65766F6D6572) || (sub_22DF64184() & 1) != 0)
    {
      v39 = &type metadata for EventRemoveFilter;
      v40 = &off_2841953F8;
    }

    else if (v35 == __PAIR128__(0xE600000000000000, 0x363532616873) || (sub_22DF64184() & 1) != 0)
    {
      v39 = &type metadata for EventSHA256KeyFilter;
      v40 = &off_284195420;
    }

    else if (v35 == __PAIR128__(0xEF7365756C615674, 0x73696C6574696877) || (sub_22DF64184() & 1) != 0)
    {
      v39 = &type metadata for EventAllowValuesFilter;
      v40 = &off_284195448;
    }

    else if (v35 == __PAIR128__(0xEF7365756C615674, 0x73696C6B63616C62) || (sub_22DF64184() & 1) != 0)
    {
      v39 = &type metadata for EventDenyValuesFilter;
      v40 = &off_284195470;
    }

    else if (__PAIR128__(v51, 0xD000000000000018) == v35 || (sub_22DF64184() & 1) != 0)
    {
      v39 = &type metadata for EventInsertStringKeyFilter;
      v40 = &off_284195498;
    }

    else if (v35 == __PAIR128__(0xE600000000000000, 0x646E65707061) || (sub_22DF64184() & 1) != 0)
    {
      v39 = &type metadata for EventAppendToKeyFilter;
      v40 = &off_2841954C0;
    }

    else
    {
      if (v35 != __PAIR128__(0xE700000000000000, 0x646E6570657270))
      {
        v50 = sub_22DF64184();
        sub_22DF08DDC(&v59);
        if ((v50 & 1) == 0)
        {

          a1 = v53;
          v17 = v54;
LABEL_25:
          v19 = v52;
          goto LABEL_26;
        }

        v39 = &type metadata for EventPrependToKeyFilter;
        v40 = &off_2841954E8;
LABEL_22:
        v41 = v40[2];
        v58[3] = v39;
        v58[4] = v40;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
        v43 = v41(v36, v38, boxed_opaque_existential_1);
        v64 = v56;
        v45 = v56[2];
        v44 = v56[3];
        if (v45 >= v44 >> 1)
        {
          v43 = sub_22DF0F0C8((v44 > 1), v45 + 1, 1, v56);
          v56 = v43;
          v64 = v43;
        }

        v17 = v54;
        v46 = *(v39[-1].Description + 8);
        MEMORY[0x28223BE20](v43);
        v48 = &v51 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v49 + 16))(v48, boxed_opaque_existential_1, v39);
        sub_22DF12080(v45, v48, &v64, v39, v40);
        result = __swift_destroy_boxed_opaque_existential_0(v58);
        a1 = v53;
        goto LABEL_25;
      }

      v39 = &type metadata for EventPrependToKeyFilter;
      v40 = &off_2841954E8;
    }

    sub_22DF08DDC(&v59);
    goto LABEL_22;
  }

LABEL_52:

  return v56;
}

void type metadata accessor for CFString()
{
  if (!qword_27DA477B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DA477B0);
    }
  }
}

uint64_t sub_22DF13944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF139A8(uint64_t a1)
{
  v2 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22DF13A5C()
{
  result = qword_27DA47788;
  if (!qword_27DA47788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47788);
  }

  return result;
}

uint64_t sub_22DF13AF4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_22DF13B40()
{
  result = qword_27DA477A0;
  if (!qword_27DA477A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA477A0);
  }

  return result;
}

unint64_t sub_22DF13B98()
{
  result = qword_27DA477A8;
  if (!qword_27DA477A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA477A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Storebag.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Storebag.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22DF13D6C()
{
  result = qword_27DA4AA60[0];
  if (!qword_27DA4AA60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4AA60);
  }

  return result;
}

unint64_t sub_22DF13DC0()
{
  result = qword_27DA477C8;
  if (!qword_27DA477C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA477C8);
  }

  return result;
}

uint64_t sub_22DF13E14@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA477B8, &qword_22DF67098);
  sub_22DF13F40();
  sub_22DF640E4();
  if (v3)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA477F8, &unk_22DF670D0);
    sub_22DF13F94(&qword_27DA47800, &qword_27DA477F8, &unk_22DF670D0, sub_22DF14018);
    result = sub_22DF640E4();
    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    result = sub_22DEF7A34(v8, v9);
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

unint64_t sub_22DF13F40()
{
  result = qword_27DA477F0;
  if (!qword_27DA477F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA477F0);
  }

  return result;
}

uint64_t sub_22DF13F94(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22DF14018()
{
  result = qword_27DA47808;
  if (!qword_27DA47808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47808);
  }

  return result;
}

uint64_t sub_22DF1406C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47818, &qword_22DF670E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF140DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_22DF141A8()
{
  result = qword_27DA47840;
  if (!qword_27DA47840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47840);
  }

  return result;
}

double sub_22DF141FC(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_22DF14220(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22DF64184() & 1;
  }
}

uint64_t getEnumTagSinglePayload for Storebag._StorebagRoot.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Storebag._StorebagRoot.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_22DF143D0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_22DF143E4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_22DF14408()
{
  result = qword_27DA4AB70;
  if (!qword_27DA4AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA4AB70);
  }

  return result;
}

unint64_t sub_22DF14460()
{
  result = qword_27DA4AB78;
  if (!qword_27DA4AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA4AB78);
  }

  return result;
}

uint64_t sub_22DF144F0()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E5D8);
  __swift_project_value_buffer(v0, qword_27DA4E5D8);
  return sub_22DF63724();
}

uint64_t sub_22DF14570(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v16 = *(v8 + 48);
  v17 = *(v8 + 52);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v19 = (v18 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_clientID);
  *v19 = a5;
  v19[1] = a6;
  *(v18 + 112) = a3;
  *(v18 + 120) = a1;
  v40 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v20 = v40[7];
  v21 = OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_url;
  v22 = sub_22DF63444();
  (*(*(v22 - 8) + 16))(v18 + v21, &a4[v20], v22);
  *(v18 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_options) = a7;
  v23 = a7;
  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  v26 = *(v25 + 16);

  v38 = v23;
  v27 = v26(v24, v25);
  v29 = v28;
  v31 = a2[3];
  v30 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v31);
  (*(v30 + 8))(v41, v31, v30);
  sub_22DF35BA0(v27, v29, v41, a4[v40[9]], v42);

  v32 = v18 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_extraHeaders;
  v33 = v42[3];
  *(v32 + 32) = v42[2];
  *(v32 + 48) = v33;
  *(v32 + 64) = v42[4];
  *(v32 + 80) = v43;
  v34 = v42[1];
  *v32 = v42[0];
  *(v32 + 16) = v34;
  *(v18 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_filters) = *&a4[v40[8]];
  v35 = *(a4 + 1);
  v36 = (v18 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_name);
  *v36 = *a4;
  v36[1] = v35;
  LOBYTE(a6) = a4[v40[10]];

  sub_22DF17B50(a4, type metadata accessor for SessionConfiguration.BackendHTTP);
  *(v18 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_skipLogging) = a6;
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v18;
}

uint64_t sub_22DF147D4()
{
  v1 = 0x6449746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x73746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D695474736F70;
  }
}

uint64_t sub_22DF1482C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22DF1839C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22DF14860(uint64_t a1)
{
  v2 = sub_22DF17D60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF1489C(uint64_t a1)
{
  v2 = sub_22DF17D60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22DF148D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47870, &qword_22DF673D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF17D60();
  sub_22DF64334();
  v18 = 0;
  sub_22DF64124();
  if (!v4)
  {
    v17 = 1;
    sub_22DF64114();
    v16 = a4;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47878, &qword_22DF673D8);
    sub_22DF17DB4();
    sub_22DF64134();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_22DF14B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = a1;
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v7 = *(v3 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_filters);
  v8 = *(v7 + 16);

  if (!v8)
  {
    return v6;
  }

  v10 = 0;
  v11 = v7 + 32;
  while (v10 < *(v7 + 16))
  {
    sub_22DEF2388(v11, v14);
    v12 = v15;
    v13 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v6 = v5;
    (*(v13 + 24))(v17, v12, v13);
    if (v5)
    {
      __swift_destroy_boxed_opaque_existential_0(v14);

      return v6;
    }

    ++v10;
    result = __swift_destroy_boxed_opaque_existential_0(v14);
    v11 += 40;
    if (v8 == v10)
    {
      return v17[0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22DF14C38(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = sub_22DF63604();
  v2[35] = v3;
  v4 = *(v3 - 8);
  v2[36] = v4;
  v5 = *(v4 + 64) + 15;
  v2[37] = swift_task_alloc();
  v6 = type metadata accessor for ServiceEventValue();
  v2[38] = v6;
  v7 = *(v6 - 8);
  v2[39] = v7;
  v8 = *(v7 + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47598, &qword_22DF65E30) - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v10 = sub_22DF63444();
  v2[44] = v10;
  v11 = *(v10 - 8);
  v2[45] = v11;
  v12 = *(v11 + 64) + 15;
  v2[46] = swift_task_alloc();
  v13 = sub_22DF63124();
  v2[47] = v13;
  v14 = *(v13 - 8);
  v2[48] = v14;
  v15 = *(v14 + 64) + 15;
  v2[49] = swift_task_alloc();
  v16 = sub_22DF63174();
  v2[50] = v16;
  v17 = *(v16 - 8);
  v2[51] = v17;
  v18 = *(v17 + 64) + 15;
  v2[52] = swift_task_alloc();
  v19 = sub_22DF63594();
  v2[53] = v19;
  v20 = *(v19 - 8);
  v2[54] = v20;
  v21 = *(v20 + 64) + 15;
  v2[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF14F14, v1, 0);
}

uint64_t sub_22DF14F14()
{
  v170 = v0;
  v1 = v0;
  v2 = v0[33];
  v3 = *(v2 + 16);
  v167 = v1;
  if (v3)
  {
    v168 = MEMORY[0x277D84F90];
    sub_22DEF0AB0(0, v3, 0);
    v4 = v168;
    v5 = (v2 + 48);
    do
    {
      v6 = v1[34];
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;

      v10 = sub_22DF14B10(v7, v8, v9);
      v12 = v11;
      v14 = v13;

      v168 = v4;
      v16 = *(v4 + 16);
      v15 = *(v4 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        sub_22DEF0AB0((v15 > 1), v16 + 1, 1);
        v17 = v16 + 1;
        v4 = v168;
      }

      *(v4 + 16) = v17;
      v18 = (v4 + 24 * v16);
      v18[4] = v10;
      v18[5] = v12;
      v18[6] = v14;
      v5 += 3;
      --v3;
      v1 = v167;
    }

    while (v3);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    v17 = *(MEMORY[0x277D84F90] + 16);
    v19 = MEMORY[0x277D84F90];
    if (!v17)
    {
LABEL_16:
      v1[56] = v19;

      if (*(v19 + 16))
      {
        if (qword_27DA4AC00 == -1)
        {
          goto LABEL_18;
        }

        goto LABEL_99;
      }

      v38 = v1[55];
      v39 = v1[52];
      v40 = v1[49];
      v41 = v1[46];
      v43 = v1[42];
      v42 = v1[43];
      v45 = v1[40];
      v44 = v1[41];
      v46 = v1[37];

      v47 = v1[1];

      return v47();
    }
  }

  v20 = 0;
  v1 = (v4 + 48);
  v19 = MEMORY[0x277D84F90];
  v164 = v17;
  while (v20 < *(v4 + 16))
  {
    v21 = *(v1 - 2);
    v22 = *(v1 - 1);
    v23 = *v1;

    v168 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22DEF0AB0(0, *(v19 + 16) + 1, 1);
      v17 = v164;
      v19 = v168;
    }

    v25 = *(v19 + 16);
    v24 = *(v19 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_22DEF0AB0((v24 > 1), v25 + 1, 1);
      v17 = v164;
      v19 = v168;
    }

    ++v20;
    *(v19 + 16) = v25 + 1;
    v26 = (v19 + 24 * v25);
    v26[4] = v21;
    v26[5] = v22;
    v26[6] = v23;
    v1 += 3;
    if (v17 == v20)
    {
      v1 = v167;
      goto LABEL_16;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_99:
    swift_once();
LABEL_18:
    v27 = v1[34];
    v28 = sub_22DF63734();
    v1[57] = __swift_project_value_buffer(v28, qword_27DA4E5D8);

    v29 = sub_22DF63714();
    v30 = sub_22DF63D24();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v1[44];
      v32 = v1[34];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v168 = v34;
      *v33 = 134349314;
      *(v33 + 4) = *(v19 + 16);

      *(v33 + 12) = 2082;
      sub_22DF17E38(&qword_27DA47868, MEMORY[0x277CC9260]);
      v35 = sub_22DF64154();
      v37 = sub_22DEF0354(v35, v36, &v168);

      *(v33 + 14) = v37;
      _os_log_impl(&dword_22DEEA000, v29, v30, "submitting %{public}ld events to %{public}s", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x2318DDBE0](v34, -1, -1);
      MEMORY[0x2318DDBE0](v33, -1, -1);
    }

    else
    {
    }

    v49 = v1[54];
    v48 = v1[55];
    v50 = v1[53];
    v51 = v1[34];
    sub_22DF63554();
    v52 = getTimeIntervalSince1970(Date:)();
    (*(v49 + 8))(v48, v50);
    v53 = *(v51 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_clientID + 8);
    v165 = *(v51 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_clientID);
    v1[58] = v53;
    v54 = *(v19 + 16);
    if (v54)
    {
      v168 = MEMORY[0x277D84F90];

      sub_22DF17748(0, v54, 0);
      v55 = v168;
      v56 = *(v168 + 16);
      v57 = (v19 + 48);
      do
      {
        v58 = *v57;
        v168 = v55;
        v59 = *(v55 + 24);

        if (v56 >= v59 >> 1)
        {
          sub_22DF17748((v59 > 1), v56 + 1, 1);
          v55 = v168;
        }

        *(v55 + 16) = v56 + 1;
        *(v55 + 8 * v56 + 32) = v58;
        v57 += 3;
        ++v56;
        --v54;
      }

      while (v54);
      v1 = v167;
    }

    else
    {

      v55 = MEMORY[0x277D84F90];
    }

    v1[59] = v55;
    v60 = v1[51];
    v61 = v1[52];
    v62 = v1[50];
    v63 = sub_22DF631B4();
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();
    v1[60] = sub_22DF631A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47368, qword_22DF67230);
    v66 = *(v60 + 72);
    v67 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_22DF65900;
    sub_22DF63164();
    v1[27] = v68;
    sub_22DF17E38(&qword_27DA47370, MEMORY[0x277CC8718]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47378, &qword_22DF65950);
    sub_22DF17768();
    sub_22DF63E54();
    sub_22DF63184();
    *(v1 + 13) = v52;
    v1[14] = v165;
    v1[15] = v53;
    v1[16] = v55;
    sub_22DF177CC();
    v69 = sub_22DF63194();
    v1[61] = 0;
    v1[62] = v69;
    v1[63] = v70;
    v72 = sub_22DF2E5EC();
    swift_beginAccess();
    if (*v72 == 1 && *sub_22DF2E7D0() == 1)
    {
      v73 = v1[34];
    }

    else
    {
      v73 = v1[34];
      if ((*(v73 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_skipLogging) & 1) == 0)
      {
        v77 = *(v73 + 120);
        v1[64] = v77;
        v78 = v73 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_name;
        v1[65] = *(v73 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_name);
        v1[66] = *(v78 + 8);

        return MEMORY[0x2822009F8](sub_22DF160DC, v77, 0);
      }
    }

    v74 = v1[62];
    v75 = v1[63];
    v76 = v1[49];
    (*(v1[45] + 16))(v1[46], v73 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_url, v1[44]);
    sub_22DF630E4();
    sub_22DEF7A88(v74, v75);
    sub_22DF17954(v74, v75, v74, v75, &v168);
    v80 = v168;
    v79 = v169;
    if (v169 >> 60 == 15)
    {
      sub_22DEF7A88(v1[62], v1[63]);
      v81 = v1[62];
      v82 = v1[63];
    }

    else
    {
      sub_22DEF7A88(v168, v169);
    }

    v1[69] = v79;
    v1[68] = v80;
    v83 = v1[49];
    sub_22DF63104();
    sub_22DF630D4();
    if (v79 >> 60 != 15)
    {
      v84 = v1[49];
      sub_22DF63114();
    }

    v85 = v1[49];
    sub_22DF63114();
    sub_22DF63114();
    v86 = sub_22DF630F4();
    if (v87 >> 60 == 15)
    {
      goto LABEL_101;
    }

    v88 = v87 >> 62;
    if ((v87 >> 62) <= 1)
    {
      if (!v88)
      {
        v89 = BYTE6(v87);
        sub_22DEF7A20(v86, v87);
        v90 = v89;
        goto LABEL_57;
      }

      goto LABEL_54;
    }

    if (v88 != 2)
    {
      sub_22DEF7A20(v86, v87);
      v90 = 0;
      goto LABEL_57;
    }

    v92 = *(v86 + 16);
    v91 = *(v86 + 24);
    v86 = sub_22DEF7A20(v86, v87);
    v90 = v91 - v92;
    if (__OFSUB__(v91, v92))
    {
      __break(1u);
LABEL_54:
      v93 = HIDWORD(v86);
      v94 = v86;
      v86 = sub_22DEF7A20(v86, v87);
      LODWORD(v90) = v93 - v94;
      if (__OFSUB__(v93, v94))
      {
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        return MEMORY[0x2821463B8](v86, v87);
      }

      v90 = v90;
    }

LABEL_57:
    v95 = v1[49];
    v166 = v1[43];
    v159 = v1[40];
    v160 = v1[39];
    v161 = v1[42];
    v96 = v1[34];
    v1[28] = v90;
    sub_22DF64154();
    sub_22DF63114();

    v97 = v96 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_extraHeaders;
    v98 = *(v96 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_extraHeaders + 16);
    *(v1 + 1) = *(v96 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_extraHeaders);
    *(v1 + 2) = v98;
    v100 = *(v97 + 48);
    v99 = *(v97 + 64);
    v101 = *(v97 + 32);
    v1[12] = *(v97 + 80);
    *(v1 + 4) = v100;
    *(v1 + 5) = v99;
    *(v1 + 3) = v101;
    v102 = sub_22DF35C50();
    v103 = 0;
    v19 = v102 + 64;
    v104 = *(v102 + 64);
    v162 = v102;
    v163 = v102 + 64;
    v105 = -1;
    v106 = -1 << *(v102 + 32);
    if (-v106 < 64)
    {
      v105 = ~(-1 << -v106);
    }

    v107 = v105 & v104;
    v108 = (63 - v106) >> 6;
    v109 = &unk_27DA475B0;
    if ((v105 & v104) != 0)
    {
      break;
    }

LABEL_64:
    if (v108 <= v103 + 1)
    {
      v115 = v103 + 1;
    }

    else
    {
      v115 = v108;
    }

    v116 = v115 - 1;
    v1 = v167;
    while (1)
    {
      v114 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        break;
      }

      if (v114 >= v108)
      {
        v140 = v167[42];
        v124 = v109;
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(v109, qword_22DF65E40);
        (*(*(v141 - 8) + 56))(v140, 1, 1, v141);
        v107 = 0;
        v103 = v116;
        goto LABEL_73;
      }

      v107 = *(v19 + 8 * v114);
      ++v103;
      if (v107)
      {
        v103 = v114;
        goto LABEL_72;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v114 = v103;
    v1 = v167;
LABEL_72:
    v118 = v1[41];
    v117 = v1[42];
    v119 = __clz(__rbit64(v107));
    v107 &= v107 - 1;
    v120 = v119 | (v114 << 6);
    v121 = (*(v162 + 48) + 16 * v120);
    v122 = *v121;
    v123 = v121[1];
    sub_22DEF0974(*(v162 + 56) + *(v160 + 72) * v120, v118);
    v124 = v109;
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(v109, qword_22DF65E40);
    v126 = *(v125 + 48);
    *v117 = v122;
    *(v161 + 8) = v123;
    sub_22DEFE894(v118, v117 + v126);
    v127 = *(*(v125 - 8) + 56);
    v128 = v125;
    v1 = v167;
    v127(v117, 0, 1, v128);

LABEL_73:
    v129 = v1[43];
    sub_22DF17AE0(v1[42], v129);
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(v124, qword_22DF65E40);
    if ((*(*(v130 - 8) + 48))(v129, 1, v130) == 1)
    {
      break;
    }

    v131 = v124;
    v132 = v1[43];
    v133 = v1[40];
    v134 = v1[38];
    v135 = *v132;
    v136 = v1;
    v137 = *(v166 + 8);
    sub_22DEFE894(v132 + *(v130 + 48), v133);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v139 = v136[40];
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v112 = v167;
        v167[30] = *v139;
        goto LABEL_79;
      }

      v109 = v131;
      if (EnumCaseMultiPayload == 1)
      {
        v112 = v167;
        v167[31] = *v139;
LABEL_79:
        sub_22DF64154();
        goto LABEL_62;
      }

      sub_22DF17B50(v139, type metadata accessor for ServiceEventValue);
      v19 = v163;
      if (!v107)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v110 = *v139;
      v111 = *(v159 + 8);
      v112 = v167;
LABEL_62:
      v19 = v163;
      v113 = v112[49];
      sub_22DF63114();

      v109 = v131;
      if (!v107)
      {
        goto LABEL_64;
      }
    }
  }

  v143 = v1[36];
  v142 = v1[37];
  v144 = v1[34];
  v145 = v1[35];

  [*(v144 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_options) copy];
  sub_22DF63E44();
  swift_unknownObjectRelease();
  sub_22DEF7E20(0, &qword_27DA47860, 0x277CF36E0);
  swift_dynamicCast();
  v146 = v1[29];
  v1[70] = v146;
  sub_22DF635F4();
  sub_22DF635A4();
  (*(v143 + 8))(v142, v145);
  v147 = sub_22DF63984();

  [v146 setIdentifier_];

  sub_22DEF7E20(0, &qword_27DA47630, 0x277CCABB0);
  v148 = sub_22DF63E04();
  [v146 setUseNWLoaderOverride_];

  v149 = sub_22DF633E4();
  if (v150)
  {
    if (v149 == 0xD00000000000001BLL && v150 == 0x800000022DF6E550)
    {

      goto LABEL_88;
    }

    v151 = sub_22DF64184();

    if (v151)
    {
LABEL_88:
      v152 = sub_22DF63E04();
      [v146 setPrivacyProxyFailClosedOverride_];
    }
  }

  if (v1[3] == 0x51424A3241394B34 && v1[4] == 0xEA00000000005832 || (sub_22DF64184() & 1) != 0)
  {
    v153 = sub_22DF63E04();
    [v146 setUseNWLoaderOverride_];
  }

  [v146 set:1 optIntoDisableAPWakeOnIdleConnections:?];
  v86 = [objc_opt_self() sharedManager];
  v1[71] = v86;
  if (!v86)
  {
    goto LABEL_102;
  }

  v155 = v1[58];
  v154 = v1[59];
  v156 = v1[56];

  v157 = *(MEMORY[0x277CF3698] + 4);
  v158 = swift_task_alloc();
  v1[72] = v158;
  *v158 = v1;
  v158[1] = sub_22DF16B48;
  v86 = v1[49];
  v87 = v146;

  return MEMORY[0x2821463B8](v86, v87);
}

uint64_t sub_22DF160DC()
{
  v1 = v0[64];
  v2 = v0[61];
  sub_22DEF6580(v0[65], v0[66], v0[62], v0[63]);
  v0[67] = v2;
  v3 = v0[34];
  if (v2)
  {
    v4 = sub_22DF16DEC;
  }

  else
  {
    v4 = sub_22DF16170;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DF16170()
{
  v103 = v0;
  v1 = v0[67];
  v2 = v0[62];
  v3 = v0[63];
  v4 = v0[49];
  (*(v0[45] + 16))(v0[46], v0[34] + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_url, v0[44]);
  sub_22DF630E4();
  sub_22DEF7A88(v2, v3);
  sub_22DF17954(v2, v3, v2, v3, &v101);
  v100 = v0;
  if (v1)
  {
    v5 = v0[57];
    v6 = v1;
    v7 = sub_22DF63714();
    v8 = sub_22DF63D04();

    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[62];
    v10 = v0[63];
    if (v9)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v101 = v13;
      *v12 = 136446210;
      swift_getErrorValue();
      v14 = v0[24];
      v15 = v0[25];
      v16 = v0[26];
      v17 = sub_22DF64244();
      v19 = sub_22DEF0354(v17, v18, &v101);

      *(v12 + 4) = v19;
      _os_log_impl(&dword_22DEEA000, v7, v8, "failed to compress payload: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x2318DDBE0](v13, -1, -1);
      MEMORY[0x2318DDBE0](v12, -1, -1);
    }

    else
    {
    }

    sub_22DEF7A88(v11, v10);
    v21 = 0;
    v24 = v0[62];
    v25 = v0[63];
    v20 = 0xF000000000000000;
  }

  else
  {
    v21 = v101;
    v20 = v102;
    if (v102 >> 60 == 15)
    {
      sub_22DEF7A88(v0[62], v0[63]);
      v22 = v0[62];
      v23 = v0[63];
    }

    else
    {
      sub_22DEF7A88(v101, v102);
    }
  }

  v0[69] = v20;
  v0[68] = v21;
  v26 = v0[49];
  sub_22DF63104();
  sub_22DF630D4();
  if (v20 >> 60 != 15)
  {
    v27 = v0[49];
    sub_22DF63114();
  }

  v28 = v0[49];
  sub_22DF63114();
  sub_22DF63114();
  v29 = sub_22DF630F4();
  if (v30 >> 60 == 15)
  {
    goto LABEL_64;
  }

  v31 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    if (v31 != 2)
    {
      sub_22DEF7A20(v29, v30);
      v33 = 0;
      goto LABEL_22;
    }

    v35 = *(v29 + 16);
    v34 = *(v29 + 24);
    v29 = sub_22DEF7A20(v29, v30);
    v33 = v34 - v35;
    if (!__OFSUB__(v34, v35))
    {
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v31)
  {
LABEL_19:
    v36 = HIDWORD(v29);
    v37 = v29;
    v29 = sub_22DEF7A20(v29, v30);
    LODWORD(v33) = v36 - v37;
    if (!__OFSUB__(v36, v37))
    {
      v33 = v33;
      goto LABEL_22;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v32 = BYTE6(v30);
  sub_22DEF7A20(v29, v30);
  v33 = v32;
LABEL_22:
  v38 = v0[49];
  v99 = v0[43];
  v94 = v0[40];
  v95 = v0[39];
  v96 = v0[42];
  v39 = v0[34];
  v0[28] = v33;
  sub_22DF64154();
  sub_22DF63114();

  v40 = v39 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_extraHeaders;
  v41 = *(v39 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_extraHeaders + 16);
  *(v0 + 1) = *(v39 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_extraHeaders);
  *(v0 + 2) = v41;
  v43 = *(v40 + 48);
  v42 = *(v40 + 64);
  v44 = *(v40 + 32);
  v0[12] = *(v40 + 80);
  *(v0 + 4) = v43;
  *(v0 + 5) = v42;
  *(v0 + 3) = v44;
  v29 = sub_22DF35C50();
  v45 = 0;
  v46 = v29 + 64;
  v97 = v29;
  v98 = v29 + 64;
  v47 = -1;
  v48 = -1 << *(v29 + 32);
  if (-v48 < 64)
  {
    v47 = ~(-1 << -v48);
  }

  v49 = v47 & *(v29 + 64);
  v50 = (63 - v48) >> 6;
  while (1)
  {
    if (!v49)
    {
      if (v50 <= v45 + 1)
      {
        v55 = v45 + 1;
      }

      else
      {
        v55 = v50;
      }

      v56 = v55 - 1;
      while (1)
      {
        v54 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        if (v54 >= v50)
        {
          v74 = v0[42];
          v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
          (*(*(v75 - 8) + 56))(v74, 1, 1, v75);
          v49 = 0;
          v45 = v56;
          goto LABEL_39;
        }

        v49 = *(v46 + 8 * v54);
        ++v45;
        if (v49)
        {
          v45 = v54;
          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_63;
    }

    v54 = v45;
LABEL_38:
    v58 = v0[41];
    v57 = v0[42];
    v59 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
    v60 = v59 | (v54 << 6);
    v61 = (*(v97 + 48) + 16 * v60);
    v63 = *v61;
    v62 = v61[1];
    sub_22DEF0974(*(v97 + 56) + *(v95 + 72) * v60, v58);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
    v65 = *(v64 + 48);
    *v57 = v63;
    v0 = v100;
    *(v96 + 8) = v62;
    sub_22DEFE894(v58, v57 + v65);
    (*(*(v64 - 8) + 56))(v57, 0, 1, v64);

LABEL_39:
    v66 = v0[43];
    sub_22DF17AE0(v0[42], v66);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
    if ((*(*(v67 - 8) + 48))(v66, 1, v67) == 1)
    {
      break;
    }

    v68 = v0[43];
    v69 = v100[38];
    v70 = *v68;
    v71 = *(v99 + 8);
    sub_22DEFE894(v68 + *(v67 + 48), v0[40]);
    v0 = v100;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v73 = v100[40];
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v51 = *v73;
        v52 = *(v94 + 8);
        goto LABEL_26;
      case 2:
        v100[30] = *v73;
LABEL_45:
        sub_22DF64154();
LABEL_26:
        v53 = v100[49];
        sub_22DF63114();

        goto LABEL_27;
      case 1:
        v100[31] = *v73;
        goto LABEL_45;
    }

    v29 = sub_22DF17B50(v73, type metadata accessor for ServiceEventValue);
LABEL_27:
    v46 = v98;
  }

  v77 = v0[36];
  v76 = v0[37];
  v78 = v0[34];
  v79 = v0[35];

  [*(v78 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_options) copy];
  sub_22DF63E44();
  swift_unknownObjectRelease();
  sub_22DEF7E20(0, &qword_27DA47860, 0x277CF36E0);
  swift_dynamicCast();
  v80 = v0[29];
  v0[70] = v80;
  sub_22DF635F4();
  sub_22DF635A4();
  (*(v77 + 8))(v76, v79);
  v81 = sub_22DF63984();

  [v80 setIdentifier_];

  sub_22DEF7E20(0, &qword_27DA47630, 0x277CCABB0);
  v82 = sub_22DF63E04();
  [v80 setUseNWLoaderOverride_];

  v83 = sub_22DF633E4();
  if (v84)
  {
    if (v83 == 0xD00000000000001BLL && v84 == 0x800000022DF6E550)
    {

      goto LABEL_53;
    }

    v85 = sub_22DF64184();

    if (v85)
    {
LABEL_53:
      v86 = sub_22DF63E04();
      [v80 setPrivacyProxyFailClosedOverride_];
    }
  }

  if (v0[3] == 0x51424A3241394B34 && v0[4] == 0xEA00000000005832 || (sub_22DF64184() & 1) != 0)
  {
    v87 = sub_22DF63E04();
    [v80 setUseNWLoaderOverride_];
  }

  [v80 set:1 optIntoDisableAPWakeOnIdleConnections:?];
  v29 = [objc_opt_self() sharedManager];
  v0[71] = v29;
  if (v29)
  {
    v89 = v0[58];
    v88 = v0[59];
    v90 = v0[56];

    v91 = *(MEMORY[0x277CF3698] + 4);
    v92 = swift_task_alloc();
    v0[72] = v92;
    *v92 = v0;
    v92[1] = sub_22DF16B48;
    v29 = v0[49];
    v30 = v80;

    return MEMORY[0x2821463B8](v29, v30);
  }

LABEL_65:
  __break(1u);
  return MEMORY[0x2821463B8](v29, v30);
}

uint64_t sub_22DF16B48(uint64_t a1, unint64_t a2, void *a3)
{
  v8 = *v4;
  v9 = *(*v4 + 576);
  v10 = *v4;
  *(*v4 + 584) = v3;

  v11 = *(v8 + 568);
  v12 = *(v8 + 272);
  if (v3)
  {

    v13 = sub_22DF16EFC;
  }

  else
  {
    sub_22DEF7A34(a1, a2);

    v13 = sub_22DF16CC0;
  }

  return MEMORY[0x2822009F8](v13, v12, 0);
}

uint64_t sub_22DF16CC0()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v4 = *(v0 + 496);
  v3 = *(v0 + 504);
  v5 = *(v0 + 480);
  v7 = *(v0 + 384);
  v6 = *(v0 + 392);
  v8 = *(v0 + 376);

  sub_22DEF7A34(v4, v3);
  sub_22DEF7A20(v2, v1);
  (*(v7 + 8))(v6, v8);
  v9 = *(v0 + 440);
  v10 = *(v0 + 416);
  v11 = *(v0 + 392);
  v12 = *(v0 + 368);
  v14 = *(v0 + 336);
  v13 = *(v0 + 344);
  v16 = *(v0 + 320);
  v15 = *(v0 + 328);
  v17 = *(v0 + 296);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_22DF16DEC()
{
  v1 = v0[59];
  v2 = v0[60];
  v3 = v0[58];
  v4 = v0[56];
  sub_22DEF7A34(v0[62], v0[63]);

  v5 = v0[67];
  v6 = v0[55];
  v7 = v0[52];
  v8 = v0[49];
  v9 = v0[46];
  v11 = v0[42];
  v10 = v0[43];
  v13 = v0[40];
  v12 = v0[41];
  v14 = v0[37];

  v15 = v0[1];

  return v15();
}

uint64_t sub_22DF16EFC()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v4 = *(v0 + 496);
  v3 = *(v0 + 504);
  v5 = *(v0 + 480);
  v7 = *(v0 + 384);
  v6 = *(v0 + 392);
  v8 = *(v0 + 376);

  sub_22DEF7A34(v4, v3);
  sub_22DEF7A20(v2, v1);
  (*(v7 + 8))(v6, v8);
  v9 = *(v0 + 584);
  v10 = *(v0 + 440);
  v11 = *(v0 + 416);
  v12 = *(v0 + 392);
  v13 = *(v0 + 368);
  v15 = *(v0 + 336);
  v14 = *(v0 + 344);
  v17 = *(v0 + 320);
  v16 = *(v0 + 328);
  v18 = *(v0 + 296);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22DF17030()
{
  MEMORY[0x2318DCA20](*(v0 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_name), *(v0 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_name + 8));
  MEMORY[0x2318DCA20](539828258, 0xE400000000000000);
  sub_22DF63444();
  sub_22DF17E38(&qword_27DA47868, MEMORY[0x277CC9260]);
  v1 = sub_22DF64154();
  MEMORY[0x2318DCA20](v1);

  MEMORY[0x2318DCA20](41, 0xE100000000000000);
  return 8744;
}

uint64_t sub_22DF17118()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_url;
  v4 = sub_22DF63444();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_clientID + 8);

  v6 = *(v0 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_extraHeaders + 16);
  v7 = *(v0 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_extraHeaders + 32);
  v8 = *(v0 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_extraHeaders + 56);
  v9 = *(v0 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_extraHeaders + 80);

  v10 = *(v0 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_filters);

  v11 = *(v0 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_name + 8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22DF17218()
{
  sub_22DF17118();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DF17244(uint64_t a1)
{
  v4 = *(*v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22DEEFBD4;

  return v8(a1);
}

uint64_t sub_22DF173A8@<X0>(Bytef *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a2 - a1;
  memset(&strm.total_out, 0, 72);
  if (a1)
  {
    v8 = a2 - a1;
  }

  else
  {
    v8 = 0;
  }

  memset(&strm.avail_in, 0, 32);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (HIDWORD(v8))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  strm.avail_in = v8;
  if (!a1)
  {
    goto LABEL_49;
  }

  strm.next_in = a1;
  v11 = deflateInit2_(&strm, -1, 8, 31, 8, 0, "1.2.12", 112);
  if (!v11)
  {
    v15 = deflateBound(&strm, v7);
    if ((v15 & 0x8000000000000000) == 0)
    {
      v36 = sub_22DF184B0(v15);
      v37 = v16;
      v17 = sub_22DF17F94(&v36, &strm);
      if (v17 != 1)
      {
        v5 = v17;
        if (qword_27DA4AC00 == -1)
        {
LABEL_16:
          v22 = sub_22DF63734();
          __swift_project_value_buffer(v22, qword_27DA4E5D8);
          v23 = sub_22DF63714();
          v24 = sub_22DF63D14();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 67240192;
            *(v25 + 4) = v5;
            _os_log_impl(&dword_22DEEA000, v23, v24, "zlib returned unexpected status %{public}d", v25, 8u);
            MEMORY[0x2318DDBE0](v25, -1, -1);
          }

          *a5 = xmmword_22DF671F0;
          v18 = v36;
          v19 = v37;
          goto LABEL_39;
        }

LABEL_45:
        swift_once();
        goto LABEL_16;
      }

      if ((strm.total_out & 0x8000000000000000) == 0)
      {
        sub_22DF63494();
        v18 = v36;
        v19 = v37;
        v20 = v37 >> 62;
        if ((v37 >> 62) > 1)
        {
          if (v20 != 2)
          {
            v21 = 0;
            goto LABEL_26;
          }

          v27 = *(v36 + 16);
          v26 = *(v36 + 24);
          v28 = __OFSUB__(v26, v27);
          v21 = v26 - v27;
          if (!v28)
          {
            goto LABEL_26;
          }

          __break(1u);
        }

        else if (!v20)
        {
          v21 = BYTE6(v37);
          goto LABEL_26;
        }

        LODWORD(v21) = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
          __break(1u);
          goto LABEL_47;
        }

        v21 = v21;
LABEL_26:
        v29 = a4 >> 62;
        if ((a4 >> 62) <= 1)
        {
          if (!v29)
          {
            if (v21 >= BYTE6(a4))
            {
              goto LABEL_38;
            }

LABEL_33:
            *a5 = v18;
            *(a5 + 8) = v19;
            v33 = v18;
            v34 = v19;
            sub_22DEF7A88(v18, v19);
            v18 = v33;
            v19 = v34;
LABEL_39:
            sub_22DEF7A34(v18, v19);
            result = deflateEnd(&strm);
            goto LABEL_40;
          }

          if (!__OFSUB__(HIDWORD(a3), a3))
          {
            if (v21 >= HIDWORD(a3) - a3)
            {
              goto LABEL_38;
            }

            goto LABEL_33;
          }

          goto LABEL_48;
        }

        if (v29 != 2)
        {
          if (v21 < 0)
          {
            goto LABEL_33;
          }

          goto LABEL_38;
        }

        v31 = *(a3 + 16);
        v30 = *(a3 + 24);
        v28 = __OFSUB__(v30, v31);
        v32 = v30 - v31;
        if (!v28)
        {
          if (v21 < v32)
          {
            goto LABEL_33;
          }

LABEL_38:
          *a5 = xmmword_22DF671F0;
          goto LABEL_39;
        }

LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v12 = v11;
  sub_22DF17F40();
  swift_allocError();
  *v13 = v12;
  result = swift_willThrow();
LABEL_40:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22DF176CC@<X0>(z_streamp strm@<X2>, uint64_t result@<X0>, uint64_t a3@<X1>, _DWORD *a4@<X8>)
{
  if (result)
  {
    v5 = a3 - result;
  }

  else
  {
    v5 = 0;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  total_out = strm->total_out;
  v7 = v5 >= total_out;
  v8 = v5 - total_out;
  if (!v7)
  {
    goto LABEL_12;
  }

  if (HIDWORD(v8))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  strm->avail_out = v8;
  if (result)
  {
    if ((total_out & 0x8000000000000000) == 0)
    {
      strm->next_out = (total_out + result);
      result = deflate(strm, 4);
      *a4 = result;
      return result;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_22DF17748(void *a1, int64_t a2, char a3)
{
  result = sub_22DF17820(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_22DF17768()
{
  result = qword_27DA47380;
  if (!qword_27DA47380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA47378, &qword_22DF65950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47380);
  }

  return result;
}

unint64_t sub_22DF177CC()
{
  result = qword_27DA4AC08[0];
  if (!qword_27DA4AC08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4AC08);
  }

  return result;
}

void *sub_22DF17820(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47890, &unk_22DF673E0);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47590, &unk_22DF65E20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22DF17954@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v14, 0, 14);
      v8 = v14;
      goto LABEL_9;
    }

    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      v8 = v14 + BYTE6(a2);
LABEL_9:
      sub_22DF173A8(v14, v8, a3, a4, a5);
      goto LABEL_10;
    }

    v9 = a1;
    v10 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_22DEF7A88(a3, a4);
  sub_22DF17E80(v9, v10, a3, a4, a5);
LABEL_10:
  result = sub_22DEF7A34(a3, a4);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22DF17AE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47598, &qword_22DF65E30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF17B50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for BackendHTTP()
{
  result = qword_28150A8B0;
  if (!qword_28150A8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DF17C04()
{
  result = sub_22DF63444();
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

uint64_t _s9ZLibErrorOwet(uint64_t a1, int a2)
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

uint64_t _s9ZLibErrorOwst(uint64_t result, int a2, int a3)
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

unint64_t sub_22DF17D60()
{
  result = qword_27DA4AE10[0];
  if (!qword_27DA4AE10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4AE10);
  }

  return result;
}

unint64_t sub_22DF17DB4()
{
  result = qword_27DA47880;
  if (!qword_27DA47880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA47878, &qword_22DF673D8);
    sub_22DEF7D64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47880);
  }

  return result;
}

uint64_t sub_22DF17E38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22DF17E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  result = sub_22DF63204();
  v11 = result;
  if (result)
  {
    result = sub_22DF63234();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = sub_22DF63224();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = &v11[v15];
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  sub_22DF173A8(v11, v17, a3, a4, a5);
  return sub_22DEF7A34(a3, a4);
}

unint64_t sub_22DF17F40()
{
  result = qword_27DA47888;
  if (!qword_27DA47888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47888);
  }

  return result;
}

uint64_t sub_22DF17F94(uint64_t *a1, z_streamp strm)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_22DEF7A34(v6, v5);
      *&v22 = v6;
      WORD4(v22) = v5;
      BYTE10(v22) = BYTE2(v5);
      BYTE11(v22) = BYTE3(v5);
      BYTE12(v22) = BYTE4(v5);
      BYTE13(v22) = BYTE5(v5);
      BYTE14(v22) = BYTE6(v5);
      result = sub_22DF176CC(strm, &v22, &v22 + BYTE6(v5), &v21);
      if (!v2)
      {
        result = v21;
      }

      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
      *a1 = v22;
      a1[1] = v9;
      goto LABEL_19;
    }

    v12 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_22DEF7A34(v6, v5);
    *a1 = xmmword_22DF67200;
    sub_22DEF7A34(0, 0xC000000000000000);
    v13 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v6)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (sub_22DF63204() && __OFSUB__(v6, sub_22DF63234()))
      {
LABEL_22:
        __break(1u);
      }

      v14 = sub_22DF63244();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = sub_22DF631E4();

      v12 = v17;
    }

    if (v13 >= v6)
    {

      v18 = sub_22DF182F8(v6, v6 >> 32, v12, strm);

      *a1 = v6;
      a1[1] = v12 | 0x4000000000000000;
      if (!v2)
      {
        result = v18;
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v7 == 2)
  {
    v10 = *a1;

    sub_22DEF7A34(v6, v5);
    *&v22 = v6;
    *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_22DF67200;
    sub_22DEF7A34(0, 0xC000000000000000);
    sub_22DF63454();
    v11 = *(&v22 + 1);
    result = sub_22DF182F8(*(v22 + 16), *(v22 + 24), *(&v22 + 1), strm);
    *a1 = v22;
    a1[1] = v11 | 0x8000000000000000;
  }

  else
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    result = sub_22DF176CC(strm, &v22, &v22, &v21);
    if (!v2)
    {
      result = v21;
    }
  }

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22DF182F8(uint64_t a1, uint64_t a2, uint64_t a3, z_stream *a4)
{
  result = sub_22DF63204();
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  result = sub_22DF63234();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = sub_22DF63224();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  result = sub_22DF176CC(a4, v9 + v10, v9 + v10 + v14, &v15);
  if (!v4)
  {
    return v15;
  }

  return result;
}

uint64_t sub_22DF1839C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D695474736F70 && a2 == 0xE800000000000000;
  if (v4 || (sub_22DF64184() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000 || (sub_22DF64184() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22DF64184();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22DF184B0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_22DF63244();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_22DF63214();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22DF63484();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_22DF18564()
{
  result = qword_27DA4AF20[0];
  if (!qword_27DA4AF20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4AF20);
  }

  return result;
}

unint64_t sub_22DF185BC()
{
  result = qword_27DA4B030;
  if (!qword_27DA4B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA4B030);
  }

  return result;
}

unint64_t sub_22DF18614()
{
  result = qword_27DA4B038[0];
  if (!qword_27DA4B038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4B038);
  }

  return result;
}

uint64_t type metadata accessor for CachedSession()
{
  result = qword_27DA4B140;
  if (!qword_27DA4B140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DF186B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v10 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v10;
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = *(a1 + 48);
  *(a6 + 56) = a2;
  *(a6 + 64) = a3;
  *(a6 + 72) = a7;
  v11 = type metadata accessor for CachedSession();
  v12 = v11[7];
  v13 = sub_22DF63594();
  result = (*(*(v13 - 8) + 32))(a6 + v12, a4, v13);
  v15 = a6 + v11[8];
  *v15 = 0;
  *(v15 + 4) = 1;
  *(a6 + v11[9]) = a5;
  return result;
}

uint64_t sub_22DF18780()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_22DF187B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_22DF63594();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

int8x16_t *sub_22DF18864@<X0>(int8x16_t *result@<X0>, uint64_t a2@<X1>, int8x8_t *a3@<X8>)
{
  if (!result || (a2 - result + 7) < 0xF)
  {
    *a3 = 0;
    return result;
  }

  v3 = ((a2 - result) / 8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v3 >= 3)
  {
    v6 = v3 + 1;
    v7 = (v3 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v5 = &result->i64[v7];
    v8 = result + 1;
    v9 = 0uLL;
    v10 = v7;
    v11 = 0uLL;
    do
    {
      v9 = veorq_s8(v8[-1], v9);
      v11 = veorq_s8(*v8, v11);
      v8 += 2;
      v10 -= 4;
    }

    while (v10);
    v12 = veorq_s8(v11, v9);
    v4 = veor_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
    if (v6 == v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    v5 = result;
  }

  do
  {
    v13 = *v5++;
    *&v4 ^= v13;
  }

  while (v5 != &result->i8[(a2 - result + (a2 - result < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8]);
LABEL_10:
  *a3 = v4;
  return result;
}

uint64_t sub_22DF18918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8 || !*(a2 + 16))
  {
    return 0;
  }

  v33 = MEMORY[0x277D84F90];
  sub_22DF18BA0(0, v8, 0);
  v9 = v33;
  v10 = (a1 + 40);
  do
  {
    v11 = *v10;
    if (*(a2 + 16))
    {
      v12 = *(v10 - 1);
      v13 = *v10;

      v14 = sub_22DEF08FC(v12, v11);
      if (v15)
      {
        sub_22DEF0974(*(a2 + 56) + *(v32 + 72) * v14, v7);
        v16 = sub_22DEFC730();
        sub_22DF1904C(v7);
        v17 = [v16 description];
        v18 = sub_22DF639B4();
        v20 = v19;

        goto LABEL_9;
      }
    }

    else
    {
      v21 = *v10;
    }

    v18 = 0;
    v20 = 0xE000000000000000;
LABEL_9:
    v33 = v9;
    v23 = *(v9 + 16);
    v22 = *(v9 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_22DF18BA0((v22 > 1), v23 + 1, 1);
      v9 = v33;
    }

    *(v9 + 16) = v23 + 1;
    v24 = v9 + 16 * v23;
    *(v24 + 32) = v18;
    *(v24 + 40) = v20;
    v10 += 2;
    --v8;
  }

  while (v8);
  v33 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47670, &qword_22DF67510);
  sub_22DF18FE8();
  v25 = sub_22DF63954();
  v27 = v26;

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    sub_22DF18CCC(v25, v27);
    v30 = v29;

    return v30;
  }

  return 0;
}

char *sub_22DF18BA0(char *a1, int64_t a2, char a3)
{
  result = sub_22DF18BC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22DF18BC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA476A8, &qword_22DF663F0);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_22DF18CCC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22DF638B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22DF638A4();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22DF63A04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return arc4random_uniform(0x2710u);
  }

  v21 = v8;
  sub_22DF639F4();
  v17 = sub_22DF639C4();
  v19 = v18;
  result = (*(v13 + 8))(v16, v12);
  if (v19 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_22DF19254();
    sub_22DF63884();
    sub_22DEF7A88(v17, v19);
    sub_22DF11DAC(v17, v19);
    sub_22DEF7A20(v17, v19);
    sub_22DF63874();
    (*(v4 + 8))(v7, v3);
    sub_22DF63894();
    sub_22DEF7A20(v17, v19);
    return (*(v22 + 8))(v11, v21);
  }

  return result;
}

unint64_t sub_22DF18FE8()
{
  result = qword_27DA47768;
  if (!qword_27DA47768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA47670, &qword_22DF67510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47768);
  }

  return result;
}

uint64_t sub_22DF1904C(uint64_t a1)
{
  v2 = type metadata accessor for ServiceEventValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SessionUser(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SessionUser(uint64_t result, int a2, int a3)
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_22DF19108(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22DF19124(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

void sub_22DF1917C()
{
  sub_22DF63594();
  if (v0 <= 0x3F)
  {
    sub_22DEFFA04();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_22DF19254()
{
  result = qword_27DA47750;
  if (!qword_27DA47750)
  {
    sub_22DF638B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47750);
  }

  return result;
}

void *sub_22DF192AC()
{
  v0 = dlopen("../../AppleInternal/Library/Frameworks/CloudTelemetryLocalBackend.framework/CloudTelemetryLocalBackend", 1);
  if (v0)
  {
    result = dlsym(v0, "initLocalBackend");
  }

  else
  {
    if (dlerror())
    {
      v2 = sub_22DF63AA4();
      v4 = v3;
    }

    else
    {
      v4 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
    }

    if (qword_27DA4B158 != -1)
    {
      swift_once();
    }

    v5 = sub_22DF63734();
    __swift_project_value_buffer(v5, qword_27DA4E5F8);

    v6 = sub_22DF63714();
    v7 = sub_22DF63D04();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136446210;
      v10 = sub_22DEF0354(v2, v4, &v11);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_22DEEA000, v6, v7, "failed to load CloudTelemetryTTR framework: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x2318DDBE0](v9, -1, -1);
      MEMORY[0x2318DDBE0](v8, -1, -1);
    }

    else
    {
    }

    result = 0;
  }

  off_27DA4E5F0 = result;
  return result;
}

uint64_t sub_22DF19464()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E5F8);
  __swift_project_value_buffer(v0, qword_27DA4E5F8);
  return sub_22DF63724();
}

uint64_t sub_22DF194E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  sub_22DF19540(a1, a2, a3);
  return v6;
}

uint64_t sub_22DF19540(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA475F8, qword_22DF67590);
  v5 = sub_22DF64024();
  v6 = v5;
  v7 = 0;
  v49 = a2;
  v10 = *(a2 + 64);
  v9 = a2 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v48 = v5 + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v3 = 16 * v18;
      v19 = (*(v49 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = (*(v49 + 56) + 48 * v18);
      v23 = v22[2];
      *v52 = v22[1];
      *&v52[16] = v23;
      v51 = *v22;
      v53 = v51;
      v54 = *&v52[8];
      v55[0] = *(&v23 + 1);

      sub_22DF051C0(&v53, v50);
      sub_22DF051C0(&v54, v50);
      sub_22DF1998C(v55, v50);
      v24 = sub_22DF3B2D4();
      sub_22DF13A04(&v53);
      sub_22DF13A04(&v54);
      sub_22DF199FC(v55);
      *(v48 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v25 = (v6[6] + 16 * v18);
      *v25 = v20;
      v25[1] = v21;
      *(v6[7] + 8 * v18) = v24;
      v26 = v6[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v6[2] = v28;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v14)
      {
        break;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    v3 = v47;
    v47[16] = v6;
    v47[17] = a1;

    v6 = a3;
    v29 = a3[3];
    v30 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v29);
    (*(v30 + 8))(v50, v29, v30);
    v31 = v50[0];
    v32 = v50[1];

    sub_22DEF0FA8(v50);
    v47[14] = v31;
    v47[15] = v32;
    v33 = sub_22DF2E5EC();
    swift_beginAccess();
    if ((*v33 & 1) == 0)
    {
      v47[18] = 0;
      goto LABEL_30;
    }

    if (qword_27DA4B150 != -1)
    {
      goto LABEL_33;
    }
  }

  v34 = off_27DA4E5F0;
  if (off_27DA4E5F0)
  {
    v35 = v6[3];
    v36 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v35);
    v37 = (*(v36 + 40))(v35, v36);
    if ((v37 & 0x100000000) != 0)
    {
      v37 = 0;
    }

    else
    {
      v37 = v37;
    }

    *(v3 + 144) = v34(v37);
    if (qword_27DA4B158 != -1)
    {
      swift_once();
    }

    v38 = sub_22DF63734();
    __swift_project_value_buffer(v38, qword_27DA4E5F8);
    v39 = sub_22DF63714();
    v40 = sub_22DF63D24();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_29;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "initialized CloudTelemetryTTR framework";
  }

  else
  {
    *(v3 + 144) = 0;
    if (qword_27DA4B158 != -1)
    {
      swift_once();
    }

    v43 = sub_22DF63734();
    __swift_project_value_buffer(v43, qword_27DA4E5F8);
    v39 = sub_22DF63714();
    v40 = sub_22DF63D04();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_29;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "failed to initialize CloudTelemetryTTR framework";
  }

  _os_log_impl(&dword_22DEEA000, v39, v40, v42, v41, 2u);
  MEMORY[0x2318DDBE0](v41, -1, -1);
LABEL_29:

LABEL_30:
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v3;
}

uint64_t sub_22DF1998C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47898, &unk_22DF69230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF199FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47898, &unk_22DF69230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DF19A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = a1;
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v7 = *(v3 + 136);
  v8 = *(v7 + 16);

  if (!v8)
  {
    return v6;
  }

  v10 = 0;
  v11 = v7 + 32;
  while (v10 < *(v7 + 16))
  {
    sub_22DEF2388(v11, v14);
    v12 = v15;
    v13 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v6 = v5;
    (*(v13 + 24))(v17, v12, v13);
    if (v5)
    {
      __swift_destroy_boxed_opaque_existential_0(v14);

      return v6;
    }

    ++v10;
    result = __swift_destroy_boxed_opaque_existential_0(v14);
    v11 += 40;
    if (v8 == v10)
    {
      return v17[0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22DF19B84(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  v3 = *(type metadata accessor for ServiceEventValue() - 8);
  v2[13] = v3;
  v4 = *(v3 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47598, &qword_22DF65E30) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF19CB8, v1, 0);
}

uint64_t sub_22DF19CB8()
{
  v130 = v0;
  v2 = v0;
  v3 = sub_22DF2E5EC();
  isUniquelyReferenced_nonNull_native = swift_beginAccess();
  if (*v3 != 1)
  {
    goto LABEL_57;
  }

  v5 = *(v0 + 80);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  v128 = v2;
  if (v6)
  {
    v129 = MEMORY[0x277D84F90];
    sub_22DEF0AB0(0, v6, 0);
    v7 = v129;
    v8 = (v5 + 48);
    do
    {
      v9 = *(v2 + 88);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;

      v13 = sub_22DF19A64(v10, v11, v12);
      v15 = v14;
      v17 = v16;

      v129 = v7;
      v1 = *(v7 + 16);
      v18 = *(v7 + 24);
      v19 = v1 + 1;
      if (v1 >= v18 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_22DEF0AB0((v18 > 1), v1 + 1, 1);
        v7 = v129;
      }

      *(v7 + 16) = v19;
      v20 = (v7 + 24 * v1);
      v20[4] = v13;
      v20[5] = v15;
      v20[6] = v17;
      v8 += 3;
      --v6;
      v2 = v128;
    }

    while (v6);
LABEL_60:
    v98 = 0;
    v99 = (v7 + 48);
    v21 = MEMORY[0x277D84F90];
    while (v98 < *(v7 + 16))
    {
      v1 = *(v99 - 2);
      v100 = *(v99 - 1);
      v101 = *v99;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_22DEF0AB0(0, *(v21 + 16) + 1, 1);
        v21 = v129;
      }

      v103 = *(v21 + 16);
      v102 = *(v21 + 24);
      if (v103 >= v102 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_22DEF0AB0((v102 > 1), v103 + 1, 1);
        v21 = v129;
      }

      ++v98;
      *(v21 + 16) = v103 + 1;
      v104 = (v21 + 24 * v103);
      v104[4] = v1;
      v104[5] = v100;
      v104[6] = v101;
      v99 += 3;
      v2 = v128;
      if (v19 == v98)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_72;
  }

  v19 = *(MEMORY[0x277D84F90] + 16);
  v21 = MEMORY[0x277D84F90];
  if (v19)
  {
    goto LABEL_60;
  }

LABEL_9:
  *(v2 + 144) = v21;
  v22 = *(v2 + 88);

  v23 = *(v22 + 144);
  *(v2 + 152) = v23;
  if (!v23)
  {
    goto LABEL_54;
  }

  v24 = *(v21 + 16);
  *(v2 + 160) = v24;
  if (!v24)
  {
    goto LABEL_54;
  }

  *(v2 + 168) = 0;
  v25 = *(v2 + 144);
  v26 = *(v25 + 16);
  v27 = v23;
  if (!v26)
  {
    goto LABEL_53;
  }

  v1 = v2 + 64;
  v28 = sub_22DF1B590();
  v29 = 0;
  v30 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277D837E0];
  v124 = v28;
  while (2)
  {
    v32 = *(v25 + 24 * v29 + 48);
    v21 = *(v32 + 16);

    isUniquelyReferenced_nonNull_native = MEMORY[0x2318DC890](v21, v30, v28, v31);
    v33 = 0;
    *v1 = isUniquelyReferenced_nonNull_native;
    v34 = v32 + 64;
    v35 = -1 << *(v32 + 32);
    if (-v35 < 64)
    {
      v36 = ~(-1 << -v35);
    }

    else
    {
      v36 = -1;
    }

    v37 = v36 & *(v32 + 64);
    v38 = (63 - v35) >> 6;
    v127 = v32 + 64;
    v125 = v32;
    v126 = v38;
    while (1)
    {
      if (!v37)
      {
        if (v38 <= v33 + 1)
        {
          v43 = v33 + 1;
        }

        else
        {
          v43 = v38;
        }

        v44 = v43 - 1;
        while (1)
        {
          v42 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v42 >= v38)
          {
            v78 = *(v2 + 128);
            v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
            (*(*(v79 - 8) + 56))(v78, 1, 1, v79);
            v37 = 0;
            v33 = v44;
            goto LABEL_30;
          }

          v37 = *(v34 + 8 * v42);
          ++v33;
          if (v37)
          {
            v33 = v42;
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        v86 = 0;
LABEL_74:
        *(v2 + 184) = v21;
        *(v2 + 192) = v86;
        v105 = __clz(__rbit64(v21)) | (v86 << 6);
        v106 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v105);
        v33 = *v106;
        v65 = v106[1];
        *(v2 + 200) = v65;
        v107 = *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v105);
        *(v2 + 208) = v107;
        v108 = qword_27DA4B158;

        v59 = v107;
        if (v108 == -1)
        {
          goto LABEL_75;
        }

        goto LABEL_83;
      }

      v42 = v33;
LABEL_29:
      v45 = *(v2 + 120);
      v46 = *(v2 + 128);
      v47 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v48 = v47 | (v42 << 6);
      v49 = (*(v125 + 48) + 16 * v48);
      v51 = *v49;
      v50 = v49[1];
      sub_22DEF0974(*(v125 + 56) + *(*(v2 + 104) + 72) * v48, v45);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
      v53 = *(v52 + 48);
      *v46 = v51;
      v46[1] = v50;
      sub_22DEFE894(v45, v46 + v53);
      (*(*(v52 - 8) + 56))(v46, 0, 1, v52);

LABEL_30:
      v54 = *(v2 + 136);
      sub_22DF17AE0(*(v2 + 128), v54);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
      if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
      {
        break;
      }

      v56 = v1;
      v57 = *(v2 + 136);
      v58 = *v57;
      v1 = v57[1];
      sub_22DEFE894(v57 + *(v55 + 48), *(v2 + 112));
      v59 = sub_22DEFC730();
      v60 = *(v2 + 64);
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v62 = v2;
      v2 = v61;
      v63 = *(v62 + 64);
      *(v62 + 72) = v63;
      v65 = sub_22DEF08FC(v58, v1);
      v66 = *(v63 + 16);
      v67 = (v64 & 1) == 0;
      v68 = v66 + v67;
      if (__OFADD__(v66, v67))
      {
        __break(1u);
        goto LABEL_81;
      }

      v69 = v64;
      if (*(v63 + 24) >= v68)
      {
        if (v2)
        {
          v2 = v128;
          v21 = *(v128 + 112);
          if (v64)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v2 = v128;
          sub_22DEFD87C();
          v21 = *(v128 + 112);
          if (v69)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        v70 = v2;
        v2 = v128;
        sub_22DEFD394(v68, v70);
        v71 = *(v128 + 72);
        v72 = sub_22DEF08FC(v58, v1);
        if ((v69 & 1) != (v73 & 1))
        {

          return sub_22DF64234();
        }

        v65 = v72;
        v21 = *(v128 + 112);
        if (v69)
        {
LABEL_17:

          v39 = *(v2 + 72);
          v40 = v39[7];
          v41 = *(v40 + 8 * v65);
          *(v40 + 8 * v65) = v59;

          isUniquelyReferenced_nonNull_native = sub_22DF1904C(v21);
          goto LABEL_18;
        }
      }

      v39 = *(v2 + 72);
      v39[(v65 >> 6) + 8] |= 1 << v65;
      v74 = (v39[6] + 16 * v65);
      *v74 = v58;
      v74[1] = v1;
      *(v39[7] + 8 * v65) = v59;
      isUniquelyReferenced_nonNull_native = sub_22DF1904C(v21);
      v75 = v39[2];
      v76 = __OFADD__(v75, 1);
      v77 = v75 + 1;
      if (v76)
      {
        __break(1u);
LABEL_83:
        swift_once();
LABEL_75:
        v109 = sub_22DF63734();
        __swift_project_value_buffer(v109, qword_27DA4E5F8);

        v110 = sub_22DF63714();
        v111 = sub_22DF63D24();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v129 = v113;
          *v112 = 136446210;
          *(v112 + 4) = sub_22DEF0354(v33, v65, &v129);
          _os_log_impl(&dword_22DEEA000, v110, v111, "running TTR rule %{public}s", v112, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v113);
          v114 = v113;
          v2 = v128;
          MEMORY[0x2318DDBE0](v114, -1, -1);
          MEMORY[0x2318DDBE0](v112, -1, -1);
        }

        v115 = *(v2 + 152);
        v116 = v2;
        v117 = *(v2 + 96);
        v118 = v116[11];
        sub_22DF1B5DC();
        v119 = swift_task_alloc();
        v116[27] = v119;
        v119[2] = v59;
        v119[3] = v115;
        v119[4] = v1;
        v119[5] = v118;
        v119[6] = v33;
        v119[7] = v65;
        v119[8] = v117;
        v120 = *(MEMORY[0x277D859E0] + 4);
        v121 = swift_task_alloc();
        v116[28] = v121;
        *v121 = v116;
        v121[1] = sub_22DF1A73C;

        return MEMORY[0x2822007B8]();
      }

      v39[2] = v77;
LABEL_18:
      v1 = v56;
      *v56 = v39;
      v38 = v126;
      v34 = v127;
    }

    v80 = *(v2 + 88);

    v81 = *(v80 + 128);
    *(v2 + 176) = v81;
    v82 = *(v81 + 32);
    *(v2 + 232) = v82;
    v83 = -1 << v82;
    if (-(-1 << v82) < 64)
    {
      v84 = ~(-1 << -v83);
    }

    else
    {
      v84 = -1;
    }

    v21 = v84 & *(v81 + 64);

    if (v21)
    {
      goto LABEL_73;
    }

    v85 = 0;
    v30 = MEMORY[0x277D837D0];
    v31 = MEMORY[0x277D837E0];
    while (((63 - v83) >> 6) - 1 != v85)
    {
      v86 = v85 + 1;
      v21 = *(isUniquelyReferenced_nonNull_native + 8 * v85++ + 72);
      if (v21)
      {
        goto LABEL_74;
      }
    }

    v88 = *(v2 + 160);
    v87 = *(v2 + 168);

    v89 = *(v2 + 64);

    if (v87 + 1 == v88)
    {
LABEL_81:
      v122 = *(v2 + 144);
      v123 = *(v2 + 152);

      goto LABEL_55;
    }

    v29 = *(v2 + 168) + 1;
    *(v2 + 168) = v29;
    v25 = *(v2 + 144);
    v28 = v124;
    if (v29 < *(v25 + 16))
    {
      continue;
    }

    break;
  }

LABEL_53:
  __break(1u);
LABEL_54:

LABEL_55:
  swift_beginAccess();
  v90 = off_27DA4E610;
  if (off_27DA4E610)
  {

    v90(v91);
    sub_22DEEB93C(v90);
  }

LABEL_57:
  v93 = *(v2 + 128);
  v92 = *(v2 + 136);
  v95 = *(v2 + 112);
  v94 = *(v2 + 120);

  v96 = *(v2 + 8);

  return v96();
}

uint64_t sub_22DF1A73C()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 88);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_22DF1A88C, v4, 0);
}

uint64_t sub_22DF1A88C()
{
  v90 = v1;
  v87 = v1 + 8;

  v3 = v1[24];
  v4 = (v1[23] - 1) & v1[23];
  v88 = v1;
  if (v4)
  {
    v5 = v1[22];
    goto LABEL_3;
  }

  v8 = -1;
  while (1)
  {
LABEL_11:
    v22 = __OFADD__(v3++, 1);
    if (v22)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v5 = v1[22];
    if (v3 >= (((1 << *(v1 + 232)) + 63) >> 6))
    {
      break;
    }

    v4 = *(v5 + 8 * v3 + 64);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v0 = v1[20];
  v23 = v1[21];

  v24 = v1[8];

  if (v23 + 1 != v0)
  {
    v25 = v1[21] + 1;
    v1[21] = v25;
    v26 = v1[18];
    if (v25 < *(v26 + 16))
    {
      isUniquelyReferenced_nonNull_native = *(v26 + 24 * v25 + 48);
      v27 = *(isUniquelyReferenced_nonNull_native + 16);
      v28 = sub_22DF1B590();

      v29 = MEMORY[0x2318DC890](v27, MEMORY[0x277D837D0], v28, MEMORY[0x277D837E0]);
      v30 = 0;
      *v87 = v29;
      v84 = isUniquelyReferenced_nonNull_native + 64;
      v85 = isUniquelyReferenced_nonNull_native;
      v31 = -1 << *(isUniquelyReferenced_nonNull_native + 32);
      if (-v31 < 64)
      {
        v32 = ~(-1 << -v31);
      }

      else
      {
        v32 = -1;
      }

      v33 = v32 & *(isUniquelyReferenced_nonNull_native + 64);
      v34 = (63 - v31) >> 6;
      v86 = v34;
      while (2)
      {
        if (!v33)
        {
          if (v34 <= v30 + 1)
          {
            v38 = v30 + 1;
          }

          else
          {
            v38 = v34;
          }

          v8 = v38 - 1;
          while (1)
          {
            v37 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v37 >= v34)
            {
              v67 = v1[16];
              v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
              (*(*(v68 - 8) + 56))(v67, 1, 1, v68);
              v33 = 0;
              goto LABEL_31;
            }

            v33 = *(v84 + 8 * v37);
            ++v30;
            if (v33)
            {
              goto LABEL_30;
            }
          }

          __break(1u);
          goto LABEL_53;
        }

        v37 = v30;
LABEL_30:
        v39 = v1[15];
        v40 = v1[16];
        v41 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v42 = v41 | (v37 << 6);
        v43 = (*(v85 + 48) + 16 * v42);
        v45 = *v43;
        v44 = v43[1];
        sub_22DEF0974(*(v85 + 56) + *(v1[13] + 72) * v42, v39);
        isUniquelyReferenced_nonNull_native = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
        v46 = *(isUniquelyReferenced_nonNull_native + 48);
        *v40 = v45;
        v40[1] = v44;
        sub_22DEFE894(v39, v40 + v46);
        v1 = v88;
        (*(*(isUniquelyReferenced_nonNull_native - 8) + 56))(v40, 0, 1, isUniquelyReferenced_nonNull_native);

        v8 = v37;
LABEL_31:
        v0 = v1[17];
        sub_22DF17AE0(v1[16], v0);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
        if ((*(*(v47 - 8) + 48))(v0, 1, v47) == 1)
        {
          v69 = v1[11];

          v70 = *(v69 + 128);
          v1[22] = v70;
          v71 = *(v70 + 32);
          *(v1 + 232) = v71;
          v72 = 1 << v71;
          v8 = -1;
          if (v72 < 64)
          {
            v73 = ~(-1 << v72);
          }

          else
          {
            v73 = -1;
          }

          v4 = v73 & *(v70 + 64);

          v3 = 0;
          if (!v4)
          {
            goto LABEL_11;
          }

LABEL_3:
          v1[23] = v4;
          v1[24] = v3;
          v6 = __clz(__rbit64(v4)) | (v3 << 6);
          v7 = (*(v5 + 48) + 16 * v6);
          v8 = *v7;
          v0 = v7[1];
          v1[25] = v0;
          v9 = *(*(v5 + 56) + 8 * v6);
          v1[26] = v9;
          v10 = qword_27DA4B158;

          isUniquelyReferenced_nonNull_native = v9;
          if (v10 == -1)
          {
LABEL_4:
            v11 = sub_22DF63734();
            __swift_project_value_buffer(v11, qword_27DA4E5F8);

            v12 = sub_22DF63714();
            v13 = sub_22DF63D24();

            if (os_log_type_enabled(v12, v13))
            {
              v14 = swift_slowAlloc();
              v15 = swift_slowAlloc();
              v89 = v15;
              *v14 = 136446210;
              *(v14 + 4) = sub_22DEF0354(v8, v0, &v89);
              _os_log_impl(&dword_22DEEA000, v12, v13, "running TTR rule %{public}s", v14, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v15);
              MEMORY[0x2318DDBE0](v15, -1, -1);
              MEMORY[0x2318DDBE0](v14, -1, -1);
            }

            v16 = v88[19];
            v17 = v88[11];
            v18 = v88[12];
            sub_22DF1B5DC();
            v19 = swift_task_alloc();
            v88[27] = v19;
            v19[2] = isUniquelyReferenced_nonNull_native;
            v19[3] = v16;
            v19[4] = v87;
            v19[5] = v17;
            v19[6] = v8;
            v19[7] = v0;
            v19[8] = v18;
            v20 = *(MEMORY[0x277D859E0] + 4);
            v21 = swift_task_alloc();
            v88[28] = v21;
            *v21 = v88;
            v21[1] = sub_22DF1A73C;

            return MEMORY[0x2822007B8]();
          }

LABEL_62:
          swift_once();
          goto LABEL_4;
        }

        v48 = v8;
        v49 = v1[17];
        v51 = *v49;
        v50 = v49[1];
        sub_22DEFE894(v49 + *(v47 + 48), v1[14]);
        v52 = sub_22DEFC730();
        v53 = v1[8];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = v1[8];
        v1[9] = v54;
        v0 = sub_22DEF08FC(v51, v50);
        v56 = *(v54 + 16);
        v57 = (v55 & 1) == 0;
        v58 = v56 + v57;
        if (__OFADD__(v56, v57))
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v59 = v55;
        if (*(v54 + 24) >= v58)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v1 = v88;
            v63 = v88[14];
            if ((v55 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v1 = v88;
            sub_22DEFD87C();
            v63 = v88[14];
            if ((v59 & 1) == 0)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          v1 = v88;
          sub_22DEFD394(v58, isUniquelyReferenced_nonNull_native);
          v60 = v88[9];
          v61 = sub_22DEF08FC(v51, v50);
          if ((v59 & 1) != (v62 & 1))
          {

            return sub_22DF64234();
          }

          v0 = v61;
          v63 = v88[14];
          if ((v59 & 1) == 0)
          {
LABEL_39:
            v8 = v1[9];
            *(v8 + 8 * (v0 >> 6) + 64) |= 1 << v0;
            v64 = (*(v8 + 48) + 16 * v0);
            *v64 = v51;
            v64[1] = v50;
            *(*(v8 + 56) + 8 * v0) = v52;
            sub_22DF1904C(v63);
            v65 = *(v8 + 16);
            v22 = __OFADD__(v65, 1);
            v66 = v65 + 1;
            if (v22)
            {
              goto LABEL_59;
            }

            *(v8 + 16) = v66;
            goto LABEL_20;
          }
        }

        v8 = v1[9];
        v35 = *(v8 + 56);
        v36 = *(v35 + 8 * v0);
        *(v35 + 8 * v0) = v52;

        sub_22DF1904C(v63);
LABEL_20:
        v34 = v86;
        *v87 = v8;
        v30 = v48;
        continue;
      }
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_53:
  v74 = v1[18];
  v75 = v1[19];

  swift_beginAccess();
  v76 = off_27DA4E610;
  if (off_27DA4E610)
  {

    v76(v77);
    sub_22DEEB93C(v76);
  }

  v79 = v1[16];
  v78 = v1[17];
  v81 = v1[14];
  v80 = v1[15];

  v82 = v1[1];

  return v82();
}

void sub_22DF1B084(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v29 = a7;
  v26 = a1;
  v27 = a6;
  v30 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA478A8, "r6");
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  aBlock[0] = 0;
  sub_22DF1B590();
  sub_22DF638D4();
  if (aBlock[0])
  {
    v15 = *a4;

    v25 = sub_22DF638C4();

    v16 = *(a5 + 112);
    v17 = *(a5 + 120);
    v18 = sub_22DF63984();
    v19 = sub_22DF638C4();

    (*(v11 + 16))(v14, v26, v10);
    v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v21 = swift_allocObject();
    v22 = v29;
    *(v21 + 16) = v27;
    *(v21 + 24) = v22;
    (*(v11 + 32))(v21 + v20, v14, v10);
    *(v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
    aBlock[4] = sub_22DF1B668;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22DF1B35C;
    aBlock[3] = &block_descriptor_1;
    v23 = _Block_copy(aBlock);

    v24 = v25;
    [v30 handleEvent:v25 sender:v18 ruleConfig:v19 withReplyBlock:v23];
    _Block_release(v23);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22DF1B35C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_22DF1B3B0()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  v3 = *(v0 + 136);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DF1B400(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22DEEFBD4;

  return v8(a1);
}

unint64_t sub_22DF1B520()
{
  v1 = *v0;
  sub_22DF63F24();

  MEMORY[0x2318DCA20](*(v1 + 112), *(v1 + 120));
  return 0xD000000000000016;
}

unint64_t sub_22DF1B590()
{
  result = qword_27DA475C0;
  if (!qword_27DA475C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA475C0);
  }

  return result;
}

unint64_t sub_22DF1B5DC()
{
  result = qword_27DA478A0;
  if (!qword_27DA478A0)
  {
    type metadata accessor for BackendLocal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478A0);
  }

  return result;
}

uint64_t sub_22DF1B668(char a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA478A8, "r6") - 8) + 80);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (qword_27DA4B158 != -1)
  {
    swift_once();
  }

  v6 = sub_22DF63734();
  __swift_project_value_buffer(v6, qword_27DA4E5F8);

  v7 = sub_22DF63714();
  v8 = sub_22DF63CE4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_22DEF0354(v5, v4, &v12);
    *(v9 + 12) = 1026;
    *(v9 + 14) = a1 & 1;
    _os_log_impl(&dword_22DEEA000, v7, v8, "TTR rule %{public}s processed event with status: %{BOOL,public}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x2318DDBE0](v10, -1, -1);
    MEMORY[0x2318DDBE0](v9, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA478A8, "r6");
  return sub_22DF63C04();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22DF1B850()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E620);
  __swift_project_value_buffer(v0, qword_27DA4E620);
  return sub_22DF63724();
}

uint64_t sub_22DF1B8C8(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + OBJC_IVAR____TtC19CloudTelemetryTools8Throttle_state) = 0;
  v6 = OBJC_IVAR____TtC19CloudTelemetryTools8Throttle_location;
  v7 = sub_22DF63444();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

id sub_22DF1B98C()
{
  v29[4] = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC19CloudTelemetryTools8Throttle_state;
  v2 = *(v0 + OBJC_IVAR____TtC19CloudTelemetryTools8Throttle_state);
  if (v2)
  {
    goto LABEL_3;
  }

  v11 = sub_22DF63464();
  v13 = v12;
  v14 = objc_opt_self();
  sub_22DEF7A88(v11, v13);
  v15 = sub_22DF634A4();
  sub_22DEF7A34(v11, v13);
  v29[0] = 0;
  v16 = [v14 propertyListWithData:v15 options:0 format:0 error:v29];

  if (v16)
  {
    v17 = v29[0];
    sub_22DF63E44();
    sub_22DEF7A34(v11, v13);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47638, &qword_22DF660F0);
    v18 = swift_dynamicCast();
    v19 = v28;
    if (!v18)
    {
      v19 = 0;
    }
  }

  else
  {
    v20 = v29[0];
    v21 = sub_22DF63334();

    swift_willThrow();
    sub_22DEF7A34(v11, v13);

    v19 = 0;
  }

  v22 = *(v0 + v1);
  *(v0 + v1) = v19;

  v2 = *(v0 + v1);
  if (v2)
  {
LABEL_3:
    if (!*(v2 + 16))
    {
      goto LABEL_23;
    }

    v3 = sub_22DEF08FC(0xD000000000000011, 0x800000022DF6E7C0);
    if (v4)
    {
      sub_22DEF12A0(*(v2 + 56) + 32 * v3, v29);
      sub_22DF1C99C();
      if (swift_dynamicCast())
      {
        if (!*(v2 + 16) || (v5 = sub_22DEF08FC(0xD000000000000012, 0x800000022DF6E7E0), (v6 & 1) == 0) || (sub_22DEF12A0(*(v2 + 56) + 32 * v5, v29), (swift_dynamicCast() & 1) == 0))
        {

          goto LABEL_23;
        }

        if (*(v2 + 16))
        {
          v7 = sub_22DEF08FC(0x756F437972746572, 0xEC0000007265746ELL);
          if (v8)
          {
            sub_22DEF12A0(*(v2 + 56) + 32 * v7, v29);

            if (swift_dynamicCast())
            {
              v9 = v28;
              [v28 doubleValue];
              [v28 doubleValue];
              v10 = [v28 integerValue];

LABEL_28:
              goto LABEL_29;
            }

LABEL_23:
            if (qword_27DA4B260 != -1)
            {
              swift_once();
            }

            v23 = sub_22DF63734();
            __swift_project_value_buffer(v23, qword_27DA4E620);
            v9 = sub_22DF63714();
            v24 = sub_22DF63D04();
            if (os_log_type_enabled(v9, v24))
            {
              v25 = swift_slowAlloc();
              *v25 = 0;
              _os_log_impl(&dword_22DEEA000, v9, v24, "failed to decode throttle state", v25, 2u);
              MEMORY[0x2318DDBE0](v25, -1, -1);
            }

            v10 = 0;
            goto LABEL_28;
          }
        }
      }
    }

    goto LABEL_23;
  }

  v10 = 0;
LABEL_29:
  v26 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_22DF1BDEC(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v33 = *MEMORY[0x277D85DE8];
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v8 = sub_22DF1C99C();
  v32 = v8;
  *&v31 = v7;
  sub_22DEFFBF0(&v31, v30);
  v9 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22DF1CCA0(v30, 0xD000000000000011, 0x800000022DF6E7C0, isUniquelyReferenced_nonNull_native);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v32 = v8;
  *&v31 = v11;
  sub_22DEFFBF0(&v31, v30);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_22DF1CCA0(v30, 0xD000000000000012, 0x800000022DF6E7E0, v12);
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v32 = v8;
  *&v31 = v13;
  sub_22DEFFBF0(&v31, v30);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_22DF1CCA0(v30, 0x756F437972746572, 0xEC0000007265746ELL, v14);
  v15 = *(v4 + OBJC_IVAR____TtC19CloudTelemetryTools8Throttle_state);
  *(v4 + OBJC_IVAR____TtC19CloudTelemetryTools8Throttle_state) = v9;

  v16 = objc_opt_self();
  v17 = sub_22DF638C4();

  *&v31 = 0;
  v18 = [v16 dataWithPropertyList:v17 format:100 options:0 error:&v31];

  v19 = v31;
  if (v18)
  {
    v20 = sub_22DF634C4();
    v22 = v21;

    sub_22DF634D4();
    sub_22DEF7A34(v20, v22);
  }

  else
  {
    v23 = v19;
    v24 = sub_22DF63334();

    swift_willThrow();
    if (qword_27DA4B260 != -1)
    {
      swift_once();
    }

    v25 = sub_22DF63734();
    __swift_project_value_buffer(v25, qword_27DA4E620);
    v26 = sub_22DF63714();
    v27 = sub_22DF63D04();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22DEEA000, v26, v27, "failed to encode throttle", v28, 2u);
      MEMORY[0x2318DDBE0](v28, -1, -1);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22DF1C23C()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v1 + 24) = v0;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22DF1C2CC, v0, 0);
}

uint64_t sub_22DF1C2CC()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC19CloudTelemetryTools8Throttle_state);
  *(v1 + OBJC_IVAR____TtC19CloudTelemetryTools8Throttle_state) = 0;

  v3 = [objc_opt_self() defaultManager];
  v4 = sub_22DF63394();
  v0[2] = 0;
  v5 = [v3 removeItemAtURL:v4 error:v0 + 2];

  v6 = v0[2];
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v8 = v6;
    v9 = sub_22DF63334();

    swift_willThrow();
    if (qword_27DA4B260 != -1)
    {
      swift_once();
    }

    v10 = sub_22DF63734();
    __swift_project_value_buffer(v10, qword_27DA4E620);
    v11 = sub_22DF63714();
    v12 = sub_22DF63D04();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22DEEA000, v11, v12, "failed to clear throttle", v13, 2u);
      MEMORY[0x2318DDBE0](v13, -1, -1);
    }
  }

  v14 = v0[1];
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

uint64_t sub_22DF1C4C8()
{
  v1[2] = v0;
  v2 = sub_22DF63594();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF1C588, v0, 0);
}

uint64_t sub_22DF1C588()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_22DF1B98C();
  v6 = v5;
  v8 = v7;
  sub_22DF63554();
  sub_22DF63544();
  v10 = v9;
  (*(v2 + 8))(v1, v4);
  v11 = 1;
  if (v6 != 0.0)
  {
    v11 = v8 == 0.0 || v10 + 3600.0 < v6 || v6 + v8 < v10;
  }

  v13 = v0[5];

  v14 = v0[1];

  return v14(v11);
}

uint64_t sub_22DF1C678()
{
  v1[2] = v0;
  v2 = sub_22DF63594();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF1C738, v0, 0);
}

uint64_t sub_22DF1C738()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_22DF1B98C();
  sub_22DF63554();
  sub_22DF63544();
  v7 = v6;
  (*(v2 + 8))(v1, v4);
  result = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = v0[5];
    v10 = v0[2];
    v11 = 86400.0;
    if ((v5 ^ 2) <= 86400.0)
    {
      v11 = (v5 ^ 2);
    }

    sub_22DF1BDEC(result, v7, v11);

    v12 = v0[1];

    return v12();
  }

  return result;
}

uint64_t sub_22DF1C81C()
{
  v1 = OBJC_IVAR____TtC19CloudTelemetryTools8Throttle_location;
  v2 = sub_22DF63444();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC19CloudTelemetryTools8Throttle_state);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for Throttle()
{
  result = qword_28150A820;
  if (!qword_28150A820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DF1C8F8()
{
  result = sub_22DF63444();
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

unint64_t sub_22DF1C99C()
{
  result = qword_27DA47630;
  if (!qword_27DA47630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA47630);
  }

  return result;
}

uint64_t sub_22DF1C9E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA478B0, &unk_22DF676E0);
  v36 = a2;
  result = sub_22DF64034();
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
        sub_22DEFFBF0(v25, v37);
      }

      else
      {
        sub_22DEF12A0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_22DF642A4();
      sub_22DF63A54();
      result = sub_22DF642D4();
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
      result = sub_22DEFFBF0(v37, (*(v8 + 56) + 32 * v16));
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

_OWORD *sub_22DF1CCA0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22DEF08FC(a2, a3);
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
      sub_22DF1CE5C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22DF1C9E8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_22DEF08FC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_22DF64234();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_22DEFFBF0(a1, v23);
  }

  else
  {
    sub_22DF1CDF0(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_22DF1CDF0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22DEFFBF0(a4, (a5[7] + 32 * a1));
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

void *sub_22DF1CE5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA478B0, &unk_22DF676E0);
  v2 = *v0;
  v3 = sub_22DF64024();
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
        sub_22DEF12A0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22DEFFBF0(v25, (*(v4 + 56) + v22));
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

uint64_t sub_22DF1D014@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22DF1DD94(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_22DF1D044(char a1)
{
  result = 0x79745F746E657665;
  switch(a1)
  {
    case 1:
      result = 0x6C72755F74736F70;
      break;
    case 2:
      result = 0x676E696C706D6173;
      break;
    case 3:
    case 12:
    case 16:
      result = 0xD000000000000012;
      break;
    case 4:
    case 20:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x5F64656C62616E65;
      break;
    case 9:
      result = 0x6C625F746E657665;
      break;
    case 10:
      result = 0x68775F746E657665;
      break;
    case 11:
      result = 0x68745F746E657665;
      break;
    case 13:
      result = 0x737265746C6966;
      break;
    case 14:
      result = 0x635F646568736168;
      break;
    case 15:
      result = 0x6863726172656968;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0x656469727265766FLL;
      break;
    case 19:
      result = 0x746C6165725F7369;
      break;
    case 21:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22DF1D2C4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22DF1D044(*a1);
  v5 = v4;
  if (v3 == sub_22DF1D044(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22DF64184();
  }

  return v8 & 1;
}

uint64_t sub_22DF1D34C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000736570;
  v3 = a1;
  v4 = 0x737265746C6966;
  if (a1 != 2)
  {
    v4 = 0x73747069726373;
  }

  v5 = 0xD000000000000012;
  v6 = 0x800000022DF6E850;
  if (!a1)
  {
    v5 = 0x79745F746E657665;
    v6 = 0xEB00000000736570;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v3 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (a2 > 1u)
  {
    v10 = a2 == 2;
    v2 = 0xE700000000000000;
    v9 = 0xE700000000000000;
    if (a2 == 2)
    {
      v11 = 0x737265746C6966;
    }

    else
    {
      v11 = 0x73747069726373;
    }
  }

  else
  {
    v9 = 0x800000022DF6E850;
    v10 = a2 == 0;
    if (a2)
    {
      v11 = 0xD000000000000012;
    }

    else
    {
      v11 = 0x79745F746E657665;
    }
  }

  if (v10)
  {
    v12 = v2;
  }

  else
  {
    v12 = v9;
  }

  if (v7 == v11 && v8 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_22DF64184();
  }

  return v13 & 1;
}

uint64_t sub_22DF1D48C()
{
  v1 = *v0;
  sub_22DF642A4();
  sub_22DF1D044(v1);
  sub_22DF63A54();

  return sub_22DF642D4();
}

uint64_t sub_22DF1D4F0()
{
  sub_22DF1D044(*v0);
  sub_22DF63A54();
}

uint64_t sub_22DF1D544()
{
  v1 = *v0;
  sub_22DF642A4();
  sub_22DF1D044(v1);
  sub_22DF63A54();

  return sub_22DF642D4();
}

uint64_t sub_22DF1D5A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22DF1DF50();
  *a2 = result;
  return result;
}

unint64_t sub_22DF1D5D4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22DF1D044(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22DF1D608@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22DF1DF50();
  *a1 = result;
  return result;
}

uint64_t sub_22DF1D63C(uint64_t a1)
{
  v2 = sub_22DF1F9B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF1D678(uint64_t a1)
{
  v2 = sub_22DF1F9B8();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_22DF1D6B4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22DF1DFA4(a1, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a2 + 160) = v10[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v10[12];
    v6 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v7 = v10[9];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v7;
    v8 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v8;
    v9 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v9;
    result = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_22DF1D720()
{
  if (*v0)
  {
    result = 0x6C6F687365726874;
  }

  else
  {
    result = 0x7972746E756F63;
  }

  *v0;
  return result;
}

uint64_t sub_22DF1D760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_22DF64184() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22DF64184();

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

uint64_t sub_22DF1D850(uint64_t a1)
{
  v2 = sub_22DF1FA60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF1D88C(uint64_t a1)
{
  v2 = sub_22DF1FA60();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22DF1D8C8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22DF1ECFC(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_22DF1D904()
{
  v1 = *v0;
  sub_22DF642A4();
  sub_22DF63A54();

  return sub_22DF642D4();
}

uint64_t sub_22DF1D9D4()
{
  *v0;
  *v0;
  *v0;
  sub_22DF63A54();
}

uint64_t sub_22DF1DA90()
{
  v1 = *v0;
  sub_22DF642A4();
  sub_22DF63A54();

  return sub_22DF642D4();
}

uint64_t sub_22DF1DB5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22DF1EEFC();
  *a2 = result;
  return result;
}

void sub_22DF1DB8C(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000736570;
  v3 = 0x79745F746E657665;
  v4 = 0x737265746C6966;
  if (*v1 != 2)
  {
    v4 = 0x73747069726373;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x800000022DF6E850;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_22DF1DC18()
{
  v1 = 0x79745F746E657665;
  v2 = 0x737265746C6966;
  if (*v0 != 2)
  {
    v2 = 0x73747069726373;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22DF1DCA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22DF1EEFC();
  *a1 = result;
  return result;
}

uint64_t sub_22DF1DCC8(uint64_t a1)
{
  v2 = sub_22DF1F964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF1DD04(uint64_t a1)
{
  v2 = sub_22DF1F964();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_22DF1DD40@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22DF1EF48(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_22DF1DD94(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF642F4();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v5 = sub_22DF641A4();
    if (!v5)
    {
      v4 = 1;
      goto LABEL_10;
    }

    if (v5 == 1)
    {
      v4 = 0;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_0(v12);
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v4;
    }

    v7 = sub_22DF63F74();
    swift_allocError();
    v9 = v8;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47968, &qword_22DF67D38) + 48);
    *v9 = &type metadata for StorebagBool;
    v11 = a1[4];
    v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22DF642E4();
    sub_22DF63F64();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t sub_22DF1DF50()
{
  v0 = sub_22DF64204();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22DF1DFA4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47930, &qword_22DF67D20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v53 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v153 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_22DF1F9B8();
  sub_22DF64304();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v153);
  }

  v12 = v6;
  v82 = a2;
  LOBYTE(v96) = 0;
  v14 = sub_22DF640C4();
  v80 = v15;
  LOBYTE(v96) = 1;
  v16 = sub_22DF640C4();
  v78 = v17;
  v79 = 0;
  v68 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47670, &qword_22DF67510);
  LOBYTE(v83) = 2;
  v19 = v18;
  v20 = sub_22DF1FB08(&qword_27DA47700, &qword_27DA47670, &qword_22DF67510);
  sub_22DF64094();
  v67 = v19;
  v77 = v96;
  LOBYTE(v96) = 3;
  v66 = sub_22DF64084();
  v152 = v21 & 1;
  LOBYTE(v96) = 4;
  v22 = sub_22DF640B4();
  v81 = 0;
  v64 = v22;
  v65 = v20;
  v150 = v23 & 1;
  LOBYTE(v83) = 5;
  v29 = sub_22DF1FAB4();
  v30 = v81;
  sub_22DF64094();
  if (v30)
  {
    v81 = v30;
    (*(v12 + 8))(v9, v5);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v63 = v29;
    v62 = v96;
    LOBYTE(v83) = 6;
    sub_22DF64094();
    v76 = v96;
    LOBYTE(v83) = 7;
    sub_22DF64094();
    v75 = v96;
    LOBYTE(v96) = 8;
    v31 = sub_22DF64074();
    v81 = 0;
    v32 = v31;
    v74 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47940, &qword_22DF67D28);
    LOBYTE(v83) = 9;
    sub_22DF1FB08(&qword_27DA47948, &qword_27DA47940, &qword_22DF67D28);
    v34 = v81;
    sub_22DF64094();
    v81 = v34;
    if (v34)
    {
      (*(v12 + 8))(v9, v5);
      v27 = 0;
      v28 = 0;
      v24 = 1;
      v25 = 1;
      v26 = 1;
    }

    else
    {
      v73 = v96;
      LOBYTE(v83) = 10;
      sub_22DF64094();
      v81 = 0;
      v72 = v96;
      LOBYTE(v96) = 11;
      v61 = sub_22DF640B4();
      v81 = 0;
      v147 = v35 & 1;
      LOBYTE(v83) = 12;
      sub_22DF64094();
      v81 = 0;
      v60 = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47908, &qword_22DF67D08);
      LOBYTE(v83) = 13;
      sub_22DF1FA0C(&qword_27DA47910, &qword_27DA47908, &qword_22DF67D08);
      v36 = v81;
      sub_22DF640E4();
      v81 = v36;
      if (!v36)
      {
        v70 = v97;
        v71 = v96;
        v144 = v98;
        LOBYTE(v96) = 14;
        v37 = sub_22DF64074();
        v69 = v38;
        v81 = 0;
        v39 = v37;
        LOBYTE(v83) = 15;
        sub_22DF64094();
        v81 = 0;
        v59 = v96;
        LOBYTE(v83) = 16;
        sub_22DF64094();
        v81 = 0;
        v58 = v96;
        LOBYTE(v83) = 17;
        sub_22DF64094();
        v81 = 0;
        v79 = v96;
        LOBYTE(v83) = 18;
        sub_22DF64094();
        v81 = 0;
        LODWORD(v67) = v96;
        LOBYTE(v83) = 19;
        sub_22DF64094();
        v81 = 0;
        LODWORD(v65) = v96;
        LOBYTE(v83) = 20;
        sub_22DF64094();
        v81 = 0;
        LODWORD(v63) = v96;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47950, &qword_22DF67D30);
        v137 = 21;
        sub_22DF1FB70();
        v40 = v81;
        sub_22DF64094();
        v81 = v40;
        (*(v12 + 8))(v9, v5);
        if (v40)
        {
          __swift_destroy_boxed_opaque_existential_0(v153);

          sub_22DF144D4(v71, v70, v144);
        }

        else
        {
          v54 = v138;
          *&v83 = v14;
          *(&v83 + 1) = v80;
          *&v84 = v77;
          *(&v84 + 1) = v68;
          *&v85 = v78;
          *(&v85 + 1) = v66;
          v57 = v152;
          LOBYTE(v86) = v152;
          *(&v86 + 1) = *v151;
          DWORD1(v86) = *&v151[3];
          *(&v86 + 1) = v64;
          v56 = v150;
          LOBYTE(v87) = v150;
          BYTE1(v87) = v62;
          WORD3(v87) = v149;
          *(&v87 + 2) = v148;
          *(&v87 + 1) = v76;
          *&v88 = v75;
          v55 = v32;
          *(&v88 + 1) = v32;
          *&v89 = v74;
          *(&v89 + 1) = v73;
          *&v90 = v72;
          *(&v90 + 1) = v61;
          *(&v91 + 2) = v145;
          HIDWORD(v92) = *&v143[3];
          *(&v92 + 9) = *v143;
          *(&v94 + 2) = v141;
          *(&v95 + 3) = v139;
          HIDWORD(v53) = v147;
          LOBYTE(v91) = v147;
          v42 = v59;
          v41 = v60;
          BYTE1(v91) = v60;
          WORD3(v91) = v146;
          *(&v91 + 1) = v71;
          *&v92 = v70;
          WORD3(v94) = v142;
          BYTE7(v95) = v140;
          v43 = v144;
          BYTE8(v92) = v144;
          v44 = v69;
          *&v93 = v39;
          *(&v93 + 1) = v69;
          LOBYTE(v94) = v59;
          v45 = v58;
          BYTE1(v94) = v58;
          *(&v94 + 1) = v79;
          LOBYTE(v95) = v67;
          BYTE1(v95) = v65;
          BYTE2(v95) = v63;
          *(&v95 + 1) = v138;
          sub_22DF13844(&v83, &v96);
          __swift_destroy_boxed_opaque_existential_0(v153);
          v96 = v14;
          v97 = v80;
          v98 = v77;
          v99 = v68;
          v100 = v78;
          v101 = v66;
          v102 = v57;
          *v103 = *v151;
          *&v103[3] = *&v151[3];
          v104 = v64;
          v105 = v56;
          v106 = v62;
          v107 = v148;
          v108 = v149;
          v109 = v76;
          v110 = v75;
          v111 = v55;
          v112 = v74;
          v113 = v73;
          v114 = v72;
          v115 = v61;
          v116 = BYTE4(v53);
          v117 = v41;
          v118 = v145;
          v119 = v146;
          v120 = v71;
          v121 = v70;
          v122 = v43;
          *v123 = *v143;
          *&v123[3] = *&v143[3];
          v124 = v39;
          v125 = v44;
          v126 = v42;
          v127 = v45;
          v129 = v142;
          v128 = v141;
          v130 = v79;
          v131 = v67;
          v132 = v65;
          v133 = v63;
          v135 = v140;
          v134 = v139;
          v136 = v54;
          result = sub_22DF138A0(&v96);
          v46 = v94;
          v47 = v82;
          v82[10] = v93;
          v47[11] = v46;
          v47[12] = v95;
          v48 = v90;
          v47[6] = v89;
          v47[7] = v48;
          v49 = v92;
          v47[8] = v91;
          v47[9] = v49;
          v50 = v86;
          v47[2] = v85;
          v47[3] = v50;
          v51 = v88;
          v47[4] = v87;
          v47[5] = v51;
          v52 = v84;
          *v47 = v83;
          v47[1] = v52;
        }

        return result;
      }

      (*(v12 + 8))(v9, v5);
      v24 = 1;
      v25 = 1;
      v26 = 1;
      v27 = 1;
      v28 = 1;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v153);

  if (v79)
  {
    if (v24)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v24)
    {
LABEL_7:

      if ((v25 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  if (!v25)
  {
LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:

  if (v26)
  {
LABEL_9:

    if ((v27 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:

    if (v28)
    {
    }

    return result;
  }

LABEL_15:
  if (v27)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v28)
  {
  }

  return result;
}

double sub_22DF1ECFC(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47928, &qword_22DF67D18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF1FA60();
  sub_22DF64304();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47670, &qword_22DF67510);
    v12[15] = 0;
    sub_22DF1FB08(&qword_27DA47700, &qword_27DA47670, &qword_22DF67510);
    sub_22DF640E4();
    v12[14] = 1;
    sub_22DF640D4();
    v2 = v11;
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t sub_22DF1EEFC()
{
  v0 = sub_22DF64064();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22DF1EF48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47900, &unk_22DF67CF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF1F964();
  sub_22DF64304();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47670, &qword_22DF67510);
  v31 = 0;
  sub_22DF1FB08(&qword_27DA47700, &qword_27DA47670, &qword_22DF67510);
  sub_22DF640E4();
  v11 = v27;
  LOBYTE(v27) = 1;
  v12 = sub_22DF64084();
  v23 = v13;
  v24 = v12;
  v25 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47908, &qword_22DF67D08);
  v31 = 2;
  sub_22DF1FA0C(&qword_27DA47910, &qword_27DA47908, &qword_22DF67D08);
  sub_22DF64094();
  v20 = v27;
  v21 = v28;
  v22 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47918, &qword_22DF67D10);
  v31 = 3;
  sub_22DF1FA0C(&qword_27DA47920, &qword_27DA47918, &qword_22DF67D10);
  sub_22DF640E4();
  (*(v6 + 8))(v9, v5);
  v14 = v27;
  v15 = v28;
  v30 = v23 & 1;
  v26 = v29;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v17 = v24;
  *a2 = v25;
  *(a2 + 8) = v17;
  *(a2 + 16) = v30;
  v18 = v21;
  *(a2 + 24) = v20;
  *(a2 + 32) = v18;
  *(a2 + 40) = v22;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  *(a2 + 64) = v26;
  return result;
}

unint64_t sub_22DF1F2FC()
{
  result = qword_27DA478B8;
  if (!qword_27DA478B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478B8);
  }

  return result;
}

unint64_t sub_22DF1F354()
{
  result = qword_27DA478C0;
  if (!qword_27DA478C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478C0);
  }

  return result;
}

unint64_t sub_22DF1F3AC()
{
  result = qword_27DA478C8;
  if (!qword_27DA478C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478C8);
  }

  return result;
}

unint64_t sub_22DF1F404()
{
  result = qword_27DA478D0;
  if (!qword_27DA478D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478D0);
  }

  return result;
}

unint64_t sub_22DF1F45C()
{
  result = qword_27DA478D8;
  if (!qword_27DA478D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478D8);
  }

  return result;
}

unint64_t sub_22DF1F4B4()
{
  result = qword_27DA478E0;
  if (!qword_27DA478E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478E0);
  }

  return result;
}

unint64_t sub_22DF1F50C()
{
  result = qword_27DA478E8;
  if (!qword_27DA478E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478E8);
  }

  return result;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_22DF1F5C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_22DF1F608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorebagSectionClientHTTP.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorebagSectionClientHTTP.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22DF1F7DC(uint64_t *a1, int a2)
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

uint64_t sub_22DF1F824(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_19CloudTelemetryTools26StorebagSectionMaybeSharedOySayAA0dE6FilterVGGSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22DF1F8A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_22DF1F8F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22DF1F964()
{
  result = qword_27DA478F0;
  if (!qword_27DA478F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478F0);
  }

  return result;
}

unint64_t sub_22DF1F9B8()
{
  result = qword_27DA478F8;
  if (!qword_27DA478F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478F8);
  }

  return result;
}

uint64_t sub_22DF1FA0C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_22DF1FA60()
{
  result = qword_27DA4BC00[0];
  if (!qword_27DA4BC00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4BC00);
  }

  return result;
}

unint64_t sub_22DF1FAB4()
{
  result = qword_27DA47938;
  if (!qword_27DA47938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47938);
  }

  return result;
}

uint64_t sub_22DF1FB08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_22DF1FB70()
{
  result = qword_27DA47958;
  if (!qword_27DA47958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA47950, &qword_22DF67D30);
    sub_22DF1FBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47958);
  }

  return result;
}

unint64_t sub_22DF1FBF4()
{
  result = qword_27DA47960;
  if (!qword_27DA47960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47960);
  }

  return result;
}

unint64_t sub_22DF1FC5C()
{
  result = qword_27DA4BD10[0];
  if (!qword_27DA4BD10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4BD10);
  }

  return result;
}

unint64_t sub_22DF1FCB4()
{
  result = qword_27DA4BE20;
  if (!qword_27DA4BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA4BE20);
  }

  return result;
}

unint64_t sub_22DF1FD0C()
{
  result = qword_27DA4BE28[0];
  if (!qword_27DA4BE28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4BE28);
  }

  return result;
}

uint64_t sub_22DF1FD7C()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E638);
  __swift_project_value_buffer(v0, qword_27DA4E638);
  return sub_22DF63724();
}

uint64_t sub_22DF1FE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  return MEMORY[0x2822009F8](sub_22DF1FE24, v3, 0);
}

uint64_t sub_22DF1FE24()
{
  v1 = *(**(v0[18] + 112) + 232);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_22DF1FF4C;
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[15];

  return (v8)(v0 + 2, v6, v4, v5);
}

uint64_t sub_22DF1FF4C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(**(v2 + 144) + 128);
    v14 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v2 + 160) = v9;
    *v9 = v4;
    v9[1] = sub_22DF2014C;
    v10 = *(v2 + 136);
    v11 = *(v2 + 144);
    v12 = *(v2 + 120);
    v13 = *(v2 + 128);

    return v14(v2 + 16, v12, v13, v10);
  }
}

uint64_t sub_22DF2014C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 160);
  v8 = *v3;
  v6[21] = v2;

  v9 = v6[18];
  if (v2)
  {
    v10 = sub_22DF2033C;
  }

  else
  {
    v6[22] = a2;
    v6[23] = a1;
    v10 = sub_22DF2028C;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22DF2028C()
{
  *(v0 + 104) = *(v0 + 16);
  sub_22DEF1364(v0 + 104, &qword_27DA47970, qword_22DF67E58);
  *(v0 + 112) = *(v0 + 24);
  sub_22DEF1364(v0 + 112, &qword_27DA47970, qword_22DF67E58);
  *(v0 + 72) = *(v0 + 40);
  sub_22DF13A04(v0 + 72);
  v1 = *(v0 + 8);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1(v2, v3);
}

uint64_t sub_22DF2033C()
{
  *(v0 + 88) = *(v0 + 16);
  sub_22DEF1364(v0 + 88, &qword_27DA47970, qword_22DF67E58);
  *(v0 + 96) = *(v0 + 24);
  sub_22DEF1364(v0 + 96, &qword_27DA47970, qword_22DF67E58);
  *(v0 + 56) = *(v0 + 40);
  sub_22DF13A04(v0 + 56);
  v1 = *(v0 + 168);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22DF203E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  v5[31] = v6;
  v7 = *(v6 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF204B8, v4, 0);
}

uint64_t sub_22DF204B8()
{
  v1 = *(v0 + 208);
  v2 = *v1;
  *(v0 + 272) = *v1;
  v3 = *(v2 + 16);
  *(v0 + 280) = v3;
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = *(v0 + 264);
      v6 = *(v0 + 240);
      v5 = *(v0 + 248);
      v8 = *(v0 + 224);
      v7 = *(v0 + 232);
      v9 = *(v0 + 216);
      *(v0 + 192) = v8;
      *(v0 + 200) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 168));
      (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
      sub_22DF23058(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4, type metadata accessor for SessionConfiguration.Backend);
      (*(v7 + 8))(v8, v7);
      v11 = *(*v6 + 152);
      v33 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v0 + 288) = v13;
      *v13 = v0;
      v13[1] = sub_22DF20888;
      v14 = *(v0 + 240);
      v15 = v0 + 72;
    }

    else
    {
      v20 = *(v0 + 248);
      v21 = sub_22DF22F24(0, v3, 0, MEMORY[0x277D84F90]);
      v22 = *(v20 + 80);
      *(v0 + 376) = v22;
      v23 = *(v20 + 72);
      *(v0 + 328) = v21;
      *(v0 + 336) = 0;
      *(v0 + 320) = v23;
      v24 = *(v0 + 232);
      v25 = *(v0 + 240);
      v26 = *(v0 + 216);
      v27 = *(v0 + 224);
      sub_22DF23058(*(v0 + 272) + ((v22 + 32) & ~v22), *(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
      *(v0 + 152) = v27;
      *(v0 + 160) = v24;
      v28 = __swift_allocate_boxed_opaque_existential_1((v0 + 128));
      (*(*(v27 - 8) + 16))(v28, v26, v27);
      (*(v24 + 8))(v27, v24);
      v29 = *(*v25 + 152);
      v33 = (v29 + *v29);
      v30 = v29[1];
      v31 = swift_task_alloc();
      *(v0 + 344) = v31;
      *v31 = v0;
      v31[1] = sub_22DF20AD0;
      v32 = *(v0 + 240);
      v15 = v0 + 16;
    }

    return v33(v15);
  }

  else
  {
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);

    v18 = *(v0 + 8);

    return v18(0, 0);
  }
}

uint64_t sub_22DF20888(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 288);
  v11 = *v3;
  *(*v3 + 296) = v2;

  if (v2)
  {
    v8 = v6[30];
    sub_22DF09508(v6[33], type metadata accessor for SessionConfiguration.Backend);
    sub_22DEF0FA8((v6 + 9));
    v9 = sub_22DF20F48;
  }

  else
  {
    v8 = v6[30];
    v6[38] = a2;
    v6[39] = a1;
    sub_22DEF0FA8((v6 + 9));
    v9 = sub_22DF209E4;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22DF209E4()
{
  v1 = *(v0 + 264);
  v2 = (*(**(v0 + 240) + 144))(v0 + 168, v1, *(v0 + 312), *(v0 + 304));
  v4 = v3;

  sub_22DF09508(v1, type metadata accessor for SessionConfiguration.Backend);
  __swift_destroy_boxed_opaque_existential_0((v0 + 168));
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);

  v7 = *(v0 + 8);

  return v7(v2, v4);
}

uint64_t sub_22DF20AD0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 344);
  v8 = *v3;
  *(*v3 + 352) = v2;

  if (v2)
  {
    v9 = v6[41];
    v10 = v6[30];
    sub_22DEF0FA8((v6 + 2));

    v11 = sub_22DF20FBC;
    v12 = v10;
  }

  else
  {
    v13 = v6[30];
    v6[45] = a2;
    v6[46] = a1;
    sub_22DEF0FA8((v6 + 2));
    v11 = sub_22DF20C34;
    v12 = v13;
  }

  return MEMORY[0x2822009F8](v11, v12, 0);
}

uint64_t sub_22DF20C34()
{
  v1 = *(v0 + 328);
  v2 = (*(**(v0 + 240) + 144))(v0 + 128, *(v0 + 256), *(v0 + 368), *(v0 + 360));
  v4 = v3;

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v0 + 328);
  if (v6 >= v5 >> 1)
  {
    v7 = sub_22DF22F24((v5 > 1), v6 + 1, 1, *(v0 + 328));
  }

  v8 = *(v0 + 280);
  v9 = *(v0 + 336) + 1;
  sub_22DF09508(*(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
  v7[2] = v6 + 1;
  v10 = &v7[2 * v6];
  v10[4] = v2;
  v10[5] = v4;
  if (v9 == v8)
  {
    type metadata accessor for BackendGroup();
    v11 = sub_22DF27764(v7);
    v13 = *(v0 + 256);
    v12 = *(v0 + 264);

    v14 = *(v0 + 8);

    return v14(v11, &off_284194AF0);
  }

  else
  {
    v16 = *(v0 + 336) + 1;
    *(v0 + 328) = v7;
    *(v0 + 336) = v16;
    v17 = *(v0 + 232);
    v18 = *(v0 + 240);
    v19 = *(v0 + 216);
    v20 = *(v0 + 224);
    sub_22DF23058(*(v0 + 272) + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v0 + 320) * v16, *(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
    *(v0 + 152) = v20;
    *(v0 + 160) = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 128));
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v19, v20);
    (*(v17 + 8))(v20, v17);
    v22 = *(*v18 + 152);
    v26 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    *(v0 + 344) = v24;
    *v24 = v0;
    v24[1] = sub_22DF20AD0;
    v25 = *(v0 + 240);

    return v26(v0 + 16);
  }
}

uint64_t sub_22DF20F48()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 21);
  v1 = v0[37];
  v3 = v0[32];
  v2 = v0[33];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22DF20FBC()
{
  sub_22DF09508(v0[32], type metadata accessor for SessionConfiguration.Backend);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = v0[44];
  v3 = v0[32];
  v2 = v0[33];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22DF2104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  v5[31] = v6;
  v7 = *(v6 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF2111C, v4, 0);
}

uint64_t sub_22DF2111C()
{
  v1 = *(v0 + 208);
  v2 = v1[1];
  *(v0 + 272) = v2;
  v3 = *(v2 + 16);
  *(v0 + 280) = v3;
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = *(v0 + 264);
      v6 = *(v0 + 240);
      v5 = *(v0 + 248);
      v8 = *(v0 + 224);
      v7 = *(v0 + 232);
      v9 = *(v0 + 216);
      *(v0 + 192) = v8;
      *(v0 + 200) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 168));
      (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
      sub_22DF23058(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4, type metadata accessor for SessionConfiguration.Backend);
      (*(v7 + 8))(v8, v7);
      v11 = *(*v6 + 152);
      v33 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v0 + 288) = v13;
      *v13 = v0;
      v13[1] = sub_22DF214F4;
      v14 = *(v0 + 240);
      v15 = v0 + 72;
    }

    else
    {
      v20 = *(v0 + 248);
      v21 = sub_22DF22F24(0, *(*v1 + 16), 0, MEMORY[0x277D84F90]);
      v22 = *(v20 + 80);
      *(v0 + 376) = v22;
      v23 = *(v20 + 72);
      *(v0 + 328) = v21;
      *(v0 + 336) = 0;
      *(v0 + 320) = v23;
      v24 = *(v0 + 232);
      v25 = *(v0 + 240);
      v26 = *(v0 + 216);
      v27 = *(v0 + 224);
      sub_22DF23058(*(v0 + 272) + ((v22 + 32) & ~v22), *(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
      *(v0 + 152) = v27;
      *(v0 + 160) = v24;
      v28 = __swift_allocate_boxed_opaque_existential_1((v0 + 128));
      (*(*(v27 - 8) + 16))(v28, v26, v27);
      (*(v24 + 8))(v27, v24);
      v29 = *(*v25 + 152);
      v33 = (v29 + *v29);
      v30 = v29[1];
      v31 = swift_task_alloc();
      *(v0 + 344) = v31;
      *v31 = v0;
      v31[1] = sub_22DF21650;
      v32 = *(v0 + 240);
      v15 = v0 + 16;
    }

    return v33(v15);
  }

  else
  {
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);

    v18 = *(v0 + 8);

    return v18(0, 0);
  }
}