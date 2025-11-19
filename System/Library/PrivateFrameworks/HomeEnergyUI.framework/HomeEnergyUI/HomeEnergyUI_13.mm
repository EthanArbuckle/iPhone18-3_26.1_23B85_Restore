uint64_t sub_20D93D2B4()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  result = sub_20D975108();
  qword_27C840E50 = result;
  *algn_27C840E58 = v6;
  return result;
}

uint64_t sub_20D93D404()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  result = sub_20D975108();
  qword_27C840E60 = result;
  *algn_27C840E68 = v6;
  return result;
}

uint64_t sub_20D93D554(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20D9562D0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_20D975798();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_20D975268();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_20D93D688(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_20D93D688(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
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
      result = sub_20D9560B0(v8);
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
        sub_20D93DBD4((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
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
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
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

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
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
      result = sub_20D8D42B4(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_20D8D42B4((v29 > 1), v5 + 1, 1, v8);
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
        sub_20D93DBD4((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
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
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 >= v24)
    {
LABEL_29:
      ++v7;
      v22 += 8;
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

uint64_t sub_20D93DBD4(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
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

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_20D93DDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v10 = v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_20D93E2F0(v10, v8, v6, a2, a3);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_20D93E3E8(v13, v8, v6, a2, a3);
  result = MEMORY[0x20F324260](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_20D93DF48()
{
  result = qword_27C83BDB0;
  if (!qword_27C83BDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BD50, &qword_20D97F070);
    sub_20D7EBC4C(&qword_27C83BDB8, &qword_27C83BDC0, &unk_20D97F0E8);
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BDB0);
  }

  return result;
}

unint64_t sub_20D93E02C()
{
  result = qword_27C83BDC8;
  if (!qword_27C83BDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BD58, &qword_20D97F078);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BD50, &qword_20D97F070);
    sub_20D93DF48();
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281126F48, &qword_27C838B68, &unk_20D9771A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BDC8);
  }

  return result;
}

uint64_t sub_20D93E120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D93E188(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for FilterButtonsAndPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20D939874(a1, a2, v6);
}

unint64_t sub_20D93E208()
{
  result = qword_27C83BDD0;
  if (!qword_27C83BDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BD60, &qword_20D97F080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BD58, &qword_20D97F078);
    sub_20D9741E8();
    sub_20D93E02C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BDD0);
  }

  return result;
}

unint64_t *sub_20D93E2F0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v13 = v12 | (v7 << 6);
LABEL_11:
    v16 = *(*(a3 + 48) + 8 * v13);
    if (v16 >= a4 && v16 <= a5)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return sub_20D93E478(result, a2, v6, a3);
      }
    }
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
      return sub_20D93E478(result, a2, v6, a3);
    }

    v15 = *(a3 + 64 + 8 * v7);
    ++v14;
    if (v15)
    {
      v10 = (v15 - 1) & v15;
      v13 = __clz(__rbit64(v15)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_20D93E3E8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_20D93E2F0(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t sub_20D93E478(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
  result = sub_20D975778();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    v19 = *(v9 + 40);
    result = sub_20D975878();
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

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v17;
    *(*(v9 + 56) + 8 * v23) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20D93E67C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_20D93E6B0()
{
  sub_20D93EB94(319, &qword_281124BD8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20D93EAD8(319, &qword_27C83BD20, &qword_27C83B158, &qword_20D97D260, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_20D93F130(319, &qword_281127050, MEMORY[0x277CDFA28]);
      if (v2 <= 0x3F)
      {
        sub_20D93F130(319, &qword_281127058, MEMORY[0x277CDF3E0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20D93E814(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20D93E85C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_20D93E8F8(uint64_t a1)
{
  sub_20D93EAD8(319, &qword_27C83BD20, &qword_27C83B158, &qword_20D97D260, MEMORY[0x277CE11F8]);
  if (v2 <= 0x3F)
  {
    type metadata accessor for DynamicEnergyUsagesCalculations(319);
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_getMetatypeMetadata();
      sub_20D93EAD8(319, &qword_27C83BE80, &qword_27C83BE88, qword_20D97F210, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        sub_20D93EB3C(319, &qword_27C83BE90);
        if (v6 <= 0x3F)
        {
          sub_20D93EB3C(319, &qword_27C83BE98);
          if (v7 <= 0x3F)
          {
            sub_20D93EB94(319, &qword_27C83BEA0, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
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

void sub_20D93EAD8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_20D93EB3C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_20D974F68();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_20D93EB94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_20D93EBE4(uint64_t a1)
{
  result = sub_20D93EC0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_20D93EC0C()
{
  result = qword_27C83BEB8;
  if (!qword_27C83BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BEB8);
  }

  return result;
}

uint64_t sub_20D93EC7C(uint64_t a1)
{
  result = sub_20D93EEB8(&qword_27C83BEC0, type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20D93ED34@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for FilterButtonsAndPickerView.CategoryFilterButtonsView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_20D93A344(a1, v8, v5, a2);
}

uint64_t sub_20D93EDF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D93EE58()
{
  v1 = *(type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_20D93C048(v2);
}

uint64_t sub_20D93EEB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D93EF00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20D93EFF8()
{
  sub_20D93F130(319, &qword_27C83BEF8, MEMORY[0x277CE0228]);
  if (v0 <= 0x3F)
  {
    sub_20D93F130(319, &qword_281127058, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      sub_20D93EB94(319, &qword_281124BD8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20D93F130(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20D973B28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_20D93F184()
{
  result = qword_27C83BF00;
  if (!qword_27C83BF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BF08, &qword_20D97F438);
    type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(255);
    sub_20D93EEB8(&qword_27C83BED8, type metadata accessor for FilterButtonsAndPickerView.UsageFilterView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BF00);
  }

  return result;
}

unint64_t sub_20D93F284()
{
  result = qword_27C83BF40;
  if (!qword_27C83BF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BF10, &qword_20D97F490);
    sub_20D93F33C();
    sub_20D7EBC4C(&qword_281124DE8, &qword_27C838F88, &qword_20D977910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BF40);
  }

  return result;
}

unint64_t sub_20D93F33C()
{
  result = qword_27C83BF48;
  if (!qword_27C83BF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BF38, &qword_20D97F4B8);
    sub_20D7EBC4C(&qword_27C83BF50, &qword_27C83BF58, &qword_20D97F4C0);
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BF48);
  }

  return result;
}

unint64_t sub_20D93F420()
{
  result = qword_27C83BF60;
  if (!qword_27C83BF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BF28, &qword_20D97F4A8);
    sub_20D93F4D8();
    sub_20D7EBC4C(&qword_281124FF8, &qword_27C838C98, &unk_20D977550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BF60);
  }

  return result;
}

unint64_t sub_20D93F4D8()
{
  result = qword_27C83BF68;
  if (!qword_27C83BF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BF20, &qword_20D97F4A0);
    sub_20D93F590();
    sub_20D7EBC4C(&qword_27C83BF78, &qword_27C83BF80, &qword_20D97F4C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BF68);
  }

  return result;
}

unint64_t sub_20D93F590()
{
  result = qword_27C83BF70;
  if (!qword_27C83BF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BF18, &qword_20D97F498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BF10, &qword_20D97F490);
    sub_20D93F284();
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281126F60, &qword_27C83A110, &qword_20D97CC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BF70);
  }

  return result;
}

uint64_t sub_20D93F684@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = (v3 + *(type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(0) + 32));
  v5 = v4[1];
  *a1 = *v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
}

unint64_t sub_20D93F6E8()
{
  result = qword_27C83BF98;
  if (!qword_27C83BF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BF90, &qword_20D97F4D8);
    sub_20D7EBC4C(&qword_27C83BFA0, &qword_27C83BFA8, &qword_20D97F4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BF98);
  }

  return result;
}

unint64_t sub_20D93F7A0()
{
  result = qword_27C83BFC0;
  if (!qword_27C83BFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BFC8, &qword_20D97F4F8);
    sub_20D93F420();
    sub_20D93EEB8(&qword_281126F38, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BFC0);
  }

  return result;
}

uint64_t sub_20D93F85C()
{
  v1 = sub_20D974048();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 232);
  if (*(v0 + 240) != 1)
  {
    v7 = *(v0 + 232);

    sub_20D975468();
    v8 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();
    sub_20D809438(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

void UtilityUsageAndRatesView.init(dataIsReady:showBanner:utilityDetails:removeProviderFunction:host:)(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X5>, uint64_t a5@<X8>)
{
  swift_unknownObjectWeakInit();
  if (qword_27C838418 != -1)
  {
    swift_once();
  }

  v26 = qword_27C839510;
  type metadata accessor for HistoricalUsageSnapshotManager();

  sub_20D974A38();
  v10 = v24;
  *(a5 + 32) = v24;
  if (qword_27C8383D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for UtilityRateInfoSnapshotManager();

  sub_20D974A38();
  v11 = *(&v24 + 1);
  v23 = v24;
  *(a5 + 48) = v24;
  *(a5 + 56) = v11;
  sub_20D974A38();
  v12 = v25;
  *(a5 + 64) = v24;
  *(a5 + 80) = v12;
  sub_20D974A38();
  v13 = *(&v24 + 1);
  *(a5 + 88) = v24;
  *(a5 + 96) = v13;
  sub_20D974A38();
  v14 = *(&v24 + 1);
  *(a5 + 104) = v24;
  *(a5 + 112) = v14;
  sub_20D974A38();
  v15 = *(&v24 + 1);
  *(a5 + 120) = v24;
  *(a5 + 128) = v15;
  sub_20D974A38();
  v16 = v25;
  *(a5 + 136) = v24;
  *(a5 + 152) = v16;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_20D974A38();
  v17 = v25;
  *(a5 + 160) = v24;
  *(a5 + 176) = v17;
  sub_20D974A38();
  v18 = *(&v24 + 1);
  *(a5 + 184) = v24;
  *(a5 + 192) = v18;
  sub_20D974A38();
  v19 = *(&v24 + 1);
  *(a5 + 200) = v24;
  *(a5 + 208) = v19;
  LOBYTE(v26) = 0;
  sub_20D974A38();
  v20 = *(&v24 + 1);
  *(a5 + 216) = v24;
  *(a5 + 224) = v20;
  *(a5 + 232) = swift_getKeyPath();
  *(a5 + 240) = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  swift_unknownObjectWeakAssign();
  if (*(a1 + 16))
  {

    v21 = sub_20D8D4A48(0x6F6D2D6563726F66, 0xEA00000000006B63);
    if (v22)
    {
      sub_20D7EB630(*(a1 + 56) + 32 * v21, &v24);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD0, &qword_20D97F528);
      if (swift_dynamicCast() & 1) != 0 && (v26)
      {
        if (qword_27C838420 != -1)
        {
          swift_once();
        }

        v24 = v10;
        v26 = qword_27C839518;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD8, &qword_20D97F530);
        sub_20D974A58();
        if (qword_27C8383E0 != -1)
        {
          swift_once();
        }

        *&v24 = v23;
        *(&v24 + 1) = v11;
        v26 = qword_27C839498;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFE0, &qword_20D97F538);
        sub_20D974A58();
      }
    }

    else
    {
    }
  }
}

uint64_t UtilityUsageAndRatesView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFE8, &qword_20D97F540);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26[-v7 - 8];
  *v8 = sub_20D974158();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFF0, &qword_20D97F548);
  sub_20D94011C(v1, &v8[*(v9 + 44)]);
  sub_20D9484C8(v1, v26);
  v10 = swift_allocObject();
  sub_20D948500(v26, v10 + 16);
  v11 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFF8, &qword_20D97F550) + 36)];
  *v11 = sub_20D948538;
  v11[1] = v10;
  v11[2] = 0;
  v11[3] = 0;
  sub_20D9484C8(v2, v26);
  v12 = swift_allocObject();
  sub_20D948500(v26, v12 + 16);
  v13 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C000, &unk_20D97F568) + 36)];
  v14 = &v13[*(sub_20D973CB8() + 20)];
  sub_20D9752F8();
  *v13 = &unk_20D97F560;
  *(v13 + 1) = v12;
  sub_20D81A2E0();
  v15 = [swift_getObjCClassFromMetadata() defaultCenter];
  sub_20D972F08();
  v16 = sub_20D975078();

  v17 = &v8[*(v5 + 60)];
  sub_20D9754B8();

  sub_20D9484C8(v2, v26);
  v18 = swift_allocObject();
  sub_20D948500(v26, v18 + 16);
  v19 = &v8[*(v5 + 64)];
  *v19 = sub_20D9485D4;
  v19[1] = v18;
  v20 = *(v2 + 128);
  v26[0] = *(v2 + 120);
  v27 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A48();
  v21 = 1.0;
  if ((v25 & 0x100000000000000) == 0)
  {
    v22 = *(v2 + 96);
    v26[0] = *(v2 + 88);
    v27 = v22;
    sub_20D974A48();
    if ((v25 & 0x100000000000000) == 0)
    {
      v23 = *(v2 + 112);
      v26[0] = *(v2 + 104);
      v27 = v23;
      sub_20D974A48();
      if (HIBYTE(v25))
      {
        v21 = 1.0;
      }

      else
      {
        v21 = 0.0;
      }
    }
  }

  sub_20D7DB478(v8, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C008, &qword_20D97F578);
  *(a1 + *(result + 36)) = v21;
  return result;
}

uint64_t sub_20D94011C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = sub_20D9744B8();
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  MEMORY[0x28223BE20](v3);
  v72 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for UtilityRemoveBanner();
  v6 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v75 = (&v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C030, &qword_20D97F798);
  v8 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v76 = &v67 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C038, &qword_20D97F7A0);
  v10 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v12 = &v67 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C040, &qword_20D97F7A8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v67 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C048, &qword_20D97F7B0);
  v17 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v19 = &v67 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C050, &qword_20D97F7B8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v67 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C058, &qword_20D97F7C0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v83 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v67 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C060, &qword_20D97F7C8);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v82 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v81 = &v67 - v34;
  sub_20D940B68(&v67 - v34);
  v35 = *(a1 + 128);
  LOBYTE(v87) = *(a1 + 120);
  *(&v87 + 1) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A48();
  if (v85 == 1)
  {
    *v23 = 0x4024000000000000;
    sub_20D940F64(&v23[*(v20 + 44)]);
    sub_20D7EB7E8(v23, v16, &qword_27C83C050, &qword_20D97F7B8);
    swift_storeEnumTagMultiPayload();
    sub_20D948BA4();
    sub_20D948C88();
    sub_20D9741B8();
    sub_20D7EB7E8(v19, v12, &qword_27C83C048, &qword_20D97F7B0);
    swift_storeEnumTagMultiPayload();
    sub_20D948B18();
    sub_20D94911C(&qword_27C83C100, type metadata accessor for UtilityRemoveBanner);
    sub_20D9741B8();
    sub_20D7E3944(v19, &qword_27C83C048, &qword_20D97F7B0);
    sub_20D7E3944(v23, &qword_27C83C050, &qword_20D97F7B8);
LABEL_11:
    v43 = 0;
    goto LABEL_12;
  }

  v71 = v29;
  v36 = *(a1 + 96);
  LOBYTE(v87) = *(a1 + 88);
  *(&v87 + 1) = v36;
  sub_20D974A48();
  if (v85 == 1)
  {
    v37 = v76;
    sub_20D941B4C(v76);
    sub_20D7EB7E8(v37, v16, &qword_27C83C030, &qword_20D97F798);
    swift_storeEnumTagMultiPayload();
    sub_20D948BA4();
    sub_20D948C88();
    sub_20D9741B8();
    sub_20D7EB7E8(v19, v12, &qword_27C83C048, &qword_20D97F7B0);
    swift_storeEnumTagMultiPayload();
    sub_20D948B18();
    sub_20D94911C(&qword_27C83C100, type metadata accessor for UtilityRemoveBanner);
    v29 = v71;
    sub_20D9741B8();
    sub_20D7E3944(v19, &qword_27C83C048, &qword_20D97F7B0);
    sub_20D7E3944(v37, &qword_27C83C030, &qword_20D97F798);
    goto LABEL_11;
  }

  v38 = *(a1 + 112);
  LOBYTE(v87) = *(a1 + 104);
  *(&v87 + 1) = v38;
  sub_20D974A48();
  if (v85 == 1)
  {
    v39 = *(a1 + 152);
    v87 = *(a1 + 136);
    v88 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C028, &qword_20D97F720);
    sub_20D974A48();
    v76 = v86;
    v77 = v85;
    v40 = *(a1 + 176);
    v87 = *(a1 + 160);
    v88 = v40;
    sub_20D974A48();
    v69 = v86;
    v70 = v85;
    v41 = *(a1 + 192);
    LOBYTE(v87) = *(a1 + 184);
    *(&v87 + 1) = v41;
    sub_20D974A48();
    if (v85 == 1)
    {
      v42 = *(a1 + 16);
      v68 = *(a1 + 8);
      v67 = v42;
    }

    else
    {
      v68 = 0;
      v67 = 0;
    }

    v44 = v80;
    Strong = swift_unknownObjectWeakLoadStrong();
    KeyPath = swift_getKeyPath();
    v47 = v75;
    *v75 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
    swift_storeEnumTagMultiPayload();
    v48 = v47 + v44[5];
    LOBYTE(v85) = 1;
    sub_20D974A38();
    v49 = *(&v87 + 1);
    *v48 = v87;
    *(v48 + 8) = v49;
    v50 = v44[7];
    *(v47 + v50) = 2;
    v51 = (v47 + v44[8]);
    *v51 = 0;
    v51[1] = 0;
    v52 = (v47 + v44[9]);
    v53 = (v47 + v44[10]);
    v54 = v44[11];
    swift_unknownObjectWeakInit();
    v55 = v44[12];
    *&v87 = 0x3FF0000000000000;
    (*(v73 + 104))(v72, *MEMORY[0x277CE0A68], v74);
    sub_20D7E6420();
    sub_20D973B68();
    v56 = (v47 + v44[6]);
    v57 = v76;
    *v56 = v77;
    v56[1] = v57;
    *(v47 + v50) = 0;
    v58 = v69;
    *v52 = v70;
    v52[1] = v58;
    v59 = v67;
    *v53 = v68;
    v53[1] = v59;
    swift_unknownObjectWeakAssign();

    sub_20D948FCC(v47, v12, type metadata accessor for UtilityRemoveBanner);
    swift_storeEnumTagMultiPayload();
    sub_20D948B18();
    sub_20D94911C(&qword_27C83C100, type metadata accessor for UtilityRemoveBanner);
    v29 = v71;
    sub_20D9741B8();
    sub_20D949164(v47, type metadata accessor for UtilityRemoveBanner);
    goto LABEL_11;
  }

  v43 = 1;
  v29 = v71;
LABEL_12:
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C068, &qword_20D97F7D0);
  (*(*(v60 - 8) + 56))(v29, v43, 1, v60);
  v62 = v81;
  v61 = v82;
  sub_20D7EB7E8(v81, v82, &qword_27C83C060, &qword_20D97F7C8);
  v63 = v83;
  sub_20D7EB7E8(v29, v83, &qword_27C83C058, &qword_20D97F7C0);
  v64 = v84;
  sub_20D7EB7E8(v61, v84, &qword_27C83C060, &qword_20D97F7C8);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C070, &qword_20D97F7D8);
  sub_20D7EB7E8(v63, v64 + *(v65 + 48), &qword_27C83C058, &qword_20D97F7C0);
  sub_20D7E3944(v29, &qword_27C83C058, &qword_20D97F7C0);
  sub_20D7E3944(v62, &qword_27C83C060, &qword_20D97F7C8);
  sub_20D7E3944(v63, &qword_27C83C058, &qword_20D97F7C0);
  return sub_20D7E3944(v61, &qword_27C83C060, &qword_20D97F7C8);
}

uint64_t sub_20D940B68@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_20D974458();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C218, &qword_20D97F958);
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v30 = &v29 - v8;
  sub_20D9740F8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v9 = qword_28112ABE8;
  v10 = sub_20D9745A8();
  v12 = v11;
  v14 = v13;
  sub_20D974428();
  (*(v2 + 104))(v5, *MEMORY[0x277CE0A10], v1);
  sub_20D974478();

  (*(v2 + 8))(v5, v1);
  v15 = sub_20D974558();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_20D7EADC0(v10, v12, v14 & 1);

  sub_20D974C58();
  sub_20D973E08();
  v44 = v19 & 1;
  *&v34 = v15;
  *(&v34 + 1) = v17;
  LOBYTE(v35) = v19 & 1;
  *(&v35 + 1) = v21;
  sub_20D9743F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A738, &qword_20D97C0F0);
  sub_20D8E3FD8();
  v22 = v30;
  sub_20D974708();
  v43[6] = v40;
  v43[7] = v41;
  v43[8] = v42;
  v43[2] = v36;
  v43[3] = v37;
  v43[4] = v38;
  v43[5] = v39;
  v43[0] = v34;
  v43[1] = v35;
  sub_20D7E3944(v43, &qword_27C83A738, &qword_20D97C0F0);
  if (sub_20D93F85C())
  {
    v23 = sub_20D9748E8();
  }

  else
  {
    v23 = sub_20D974918();
  }

  v24 = v23;
  v25 = sub_20D974258();
  v26 = v33;
  (*(v31 + 32))(v33, v22, v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C060, &qword_20D97F7C8);
  v28 = v26 + *(result + 36);
  *v28 = v24;
  *(v28 + 8) = v25;
  return result;
}

uint64_t sub_20D940F64@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C108, &qword_20D97F858);
  v2 = *(v1 - 8);
  v3 = v2;
  v28 = v1;
  v29 = v2;
  v4 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C110, &qword_20D97F860);
  v30 = *(v10 - 8);
  v11 = v30;
  v12 = *(v30 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  sub_20D94120C(&v28 - v16);
  sub_20D941618(v9);
  v18 = *(v11 + 16);
  v18(v15, v17, v10);
  v19 = *(v3 + 16);
  v19(v7, v9, v1);
  v20 = v31;
  v18(v31, v15, v10);
  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C118, &qword_20D97F868) + 48)];
  v22 = v28;
  v19(v21, v7, v28);
  v23 = *(v29 + 8);
  v24 = v9;
  v25 = v22;
  v23(v24, v22);
  v26 = *(v30 + 8);
  v26(v17, v10);
  v23(v7, v25);
  return (v26)(v15, v10);
}

uint64_t sub_20D94120C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_20D972628();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for HistoricalUsageSummaryView(0);
  v7 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C188, &qword_20D97F8D8);
  v11 = *(v10 - 8);
  v26 = v10;
  v27 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = *(v1 + 40);
  v31[0] = *(v1 + 32);
  v31[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD8, &qword_20D97F530);
  sub_20D974A48();
  v16 = v29;
  sub_20D9725C8();
  HistoricalUsageSummaryView.init(displayDate:snapshotManager:)(v6, v16, v9);
  sub_20D9484C8(v2, v31);
  v17 = swift_allocObject();
  sub_20D948500(v31, v17 + 16);
  v18 = sub_20D94911C(&qword_27C83C190, type metadata accessor for HistoricalUsageSummaryView);
  sub_20D974748();

  sub_20D949164(v9, type metadata accessor for HistoricalUsageSummaryView);
  v19 = *(v2 + 208);
  LOBYTE(v29) = *(v2 + 200);
  v30 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A68();
  v25 = v32;
  sub_20D9484C8(v2, v31);
  v20 = swift_allocObject();
  sub_20D948500(v31, v20 + 16);
  sub_20D9484C8(v2, &v29);
  v21 = swift_allocObject();
  sub_20D948500(&v29, v21 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C198, &qword_20D97F8E0);
  v29 = v24;
  v30 = v18;
  swift_getOpaqueTypeConformance2();
  sub_20D7EBC4C(&qword_27C83C1A0, &qword_27C83C198, &qword_20D97F8E0);
  v22 = v26;
  sub_20D974808();

  return (*(v27 + 8))(v14, v22);
}

uint64_t sub_20D941618@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_20D9744B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UtilityRateInfoSummaryView();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C120, &qword_20D97F870);
  v13 = *(v12 - 8);
  v31 = v12;
  v32 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v30 = v29 - v15;
  v16 = *(v1 + 56);
  v36[0] = *(v1 + 48);
  v36[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFE0, &qword_20D97F538);
  sub_20D974A48();
  v17 = v34;
  v18 = *(v8 + 24);
  v36[0] = 0x3FF0000000000000;
  (*(v4 + 104))(v7, *MEMORY[0x277CE0A68], v3);
  sub_20D7E6420();
  sub_20D973B68();
  *v11 = v17;
  v19 = *(v8 + 20);
  swift_getKeyPath();
  v36[0] = v17;
  sub_20D94911C(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);

  sub_20D972858();

  v20 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot;
  swift_beginAccess();
  sub_20D948FCC(v17 + v20, v11 + v19, type metadata accessor for UtilityRateInfoSnapshot);

  sub_20D9484C8(v2, v36);
  v21 = swift_allocObject();
  sub_20D948500(v36, v21 + 16);
  v22 = sub_20D94911C(&qword_27C83C128, type metadata accessor for UtilityRateInfoSummaryView);
  sub_20D974748();

  sub_20D949164(v11, type metadata accessor for UtilityRateInfoSummaryView);
  v23 = *(v2 + 224);
  LOBYTE(v34) = *(v2 + 216);
  v35 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A68();
  v29[3] = v37;
  sub_20D9484C8(v2, v36);
  v24 = swift_allocObject();
  sub_20D948500(v36, v24 + 16);
  sub_20D9484C8(v2, &v34);
  v25 = swift_allocObject();
  sub_20D948500(&v34, v25 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C130, &qword_20D97F8A0);
  v34 = v8;
  v35 = v22;
  swift_getOpaqueTypeConformance2();
  sub_20D7EBC4C(&qword_27C83C138, &qword_27C83C130, &qword_20D97F8A0);
  v26 = v30;
  v27 = v31;
  sub_20D974808();

  return (*(v32 + 8))(v26, v27);
}

uint64_t sub_20D941B4C@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C0F8, &unk_20D97F848);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v58 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C0E8, &qword_20D97F840);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v58 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C0D8, &qword_20D97F838);
  v10 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v12 = &v58 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C0C8, &qword_20D97F830);
  v13 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v61 = &v58 - v14;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C0B8, &qword_20D97F828);
  v15 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v17 = &v58 - v16;
  *v5 = sub_20D974078();
  *(v5 + 1) = 0x402C000000000000;
  v5[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1C8, &qword_20D97F900);
  sub_20D9471A8(v1, &v5[*(v18 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C80, &unk_20D97BFB0);
  inited = swift_initStackObject();
  v58 = xmmword_20D977210;
  *(inited + 16) = xmmword_20D977210;
  v20 = sub_20D974328();
  *(inited + 32) = v20;
  v21 = sub_20D974348();
  *(inited + 33) = v21;
  v22 = sub_20D974358();
  sub_20D974358();
  if (sub_20D974358() != v20)
  {
    v22 = sub_20D974358();
  }

  sub_20D974358();
  if (sub_20D974358() != v21)
  {
    v22 = sub_20D974358();
  }

  sub_20D973AD8();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_20D7EAF18(v5, v9, &qword_27C83C0F8, &unk_20D97F848);
  v31 = &v9[*(v6 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = swift_initStackObject();
  *(v32 + 16) = v58;
  v33 = sub_20D974338();
  *(v32 + 32) = v33;
  v34 = sub_20D974368();
  *(v32 + 33) = v34;
  v35 = sub_20D974358();
  sub_20D974358();
  if (sub_20D974358() != v33)
  {
    v35 = sub_20D974358();
  }

  sub_20D974358();
  if (sub_20D974358() != v34)
  {
    v35 = sub_20D974358();
  }

  sub_20D7EAF18(v9, v12, &qword_27C83C0E8, &qword_20D97F840);
  v36 = &v12[*(v59 + 36)];
  *v36 = v35;
  *(v36 + 8) = 0u;
  *(v36 + 24) = 0u;
  v36[40] = 1;
  sub_20D974C48();
  sub_20D973E08();
  v37 = v61;
  sub_20D7EAF18(v12, v61, &qword_27C83C0D8, &qword_20D97F838);
  v38 = (v37 + *(v60 + 36));
  v39 = v69;
  v38[4] = v68;
  v38[5] = v39;
  v38[6] = v70;
  v40 = v65;
  *v38 = v64;
  v38[1] = v40;
  v41 = v67;
  v38[2] = v66;
  v38[3] = v41;
  v42 = sub_20D974C48();
  v44 = v43;
  v45 = &v17[*(v62 + 36)];
  v46 = *(sub_20D973DE8() + 20);
  v47 = *MEMORY[0x277CE0118];
  v48 = sub_20D974118();
  (*(*(v48 - 8) + 104))(&v45[v46], v47, v48);
  __asm { FMOV            V0.2D, #24.0 }

  *v45 = _Q0;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FD0, &unk_20D97BFC0);
  v55 = &v45[*(v54 + 52)];
  sub_20D974C08();
  *&v45[*(v54 + 56)] = 256;
  v56 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FD8, &qword_20D977990) + 36)];
  *v56 = v42;
  v56[1] = v44;
  sub_20D7EAF18(v37, v17, &qword_27C83C0C8, &qword_20D97F830);
  sub_20D948D44();
  sub_20D9747D8();
  return sub_20D7E3944(v17, &qword_27C83C0B8, &qword_20D97F828);
}

uint64_t sub_20D942138(uint64_t *a1)
{
  v2 = *a1;
  if (*(*a1 + 16))
  {
    v3 = sub_20D8D4A48(0x4449656D6F68, 0xE600000000000000);
    if (v4)
    {
      sub_20D7EB630(*(v2 + 56) + 32 * v3, &v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD0, &qword_20D97F528);
      swift_dynamicCast();
    }
  }

  v5 = a1[10];
  v10 = *(a1 + 4);
  v11 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C028, &qword_20D97F720);
  sub_20D974A58();
  if (*(v2 + 16))
  {
    v6 = sub_20D8D4A48(0x656B6F7665527369, 0xEF6465776F6C6C41);
    if (v7)
    {
      sub_20D7EB630(*(v2 + 56) + 32 * v6, &v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD0, &qword_20D97F528);
      swift_dynamicCast();
    }
  }

  v8 = a1[24];
  LOBYTE(v10) = *(a1 + 184);
  *(&v10 + 1) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  return sub_20D974A58();
}

uint64_t sub_20D9422D8()
{
  v0[2] = sub_20D9752E8();
  v0[3] = sub_20D9752D8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20D92D3C8;

  return sub_20D942384();
}

uint64_t sub_20D942384()
{
  v1[471] = v0;
  v2 = sub_20D973488();
  v1[472] = v2;
  v3 = *(v2 - 8);
  v1[473] = v3;
  v4 = *(v3 + 64) + 15;
  v1[474] = swift_task_alloc();
  v1[475] = swift_task_alloc();
  v5 = sub_20D973448();
  v1[476] = v5;
  v6 = *(v5 - 8);
  v1[477] = v6;
  v7 = *(v6 + 64) + 15;
  v1[478] = swift_task_alloc();
  v1[479] = swift_task_alloc();
  v1[480] = swift_task_alloc();
  v1[481] = swift_task_alloc();
  v8 = sub_20D973478();
  v1[482] = v8;
  v9 = *(v8 - 8);
  v1[483] = v9;
  v10 = *(v9 + 64) + 15;
  v1[484] = swift_task_alloc();
  v11 = sub_20D972EA8();
  v1[485] = v11;
  v12 = *(v11 - 8);
  v1[486] = v12;
  v13 = *(v12 + 64) + 15;
  v1[487] = swift_task_alloc();
  v1[488] = swift_task_alloc();
  v1[489] = swift_task_alloc();
  sub_20D9752E8();
  v1[490] = sub_20D9752D8();
  v15 = sub_20D975298();
  v1[491] = v15;
  v1[492] = v14;

  return MEMORY[0x2822009F8](sub_20D9425D8, v15, v14);
}

uint64_t sub_20D9425D8()
{
  v1 = *(v0 + 3768);
  sub_20D972CD8();
  v2 = *(v1 + 80);
  *(v0 + 3192) = *(v1 + 64);
  *(v0 + 3208) = v2;
  *(v0 + 3944) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C028, &qword_20D97F720);
  sub_20D974A48();
  v3 = *(v0 + 3624);
  v4 = *(v0 + 3632);
  v5 = *(MEMORY[0x277D07650] + 4);
  v6 = swift_task_alloc();
  *(v0 + 3952) = v6;
  *v6 = v0;
  v6[1] = sub_20D9426C8;

  return MEMORY[0x28215C940](v3, v4);
}

uint64_t sub_20D9426C8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 3952);
  v7 = *v1;
  *(*v1 + 3960) = a1;

  v4 = *(v2 + 3936);
  v5 = *(v2 + 3928);

  return MEMORY[0x2822009F8](sub_20D9427F0, v5, v4);
}

uint64_t sub_20D9427F0()
{
  v129 = v0;
  v1 = *(v0 + 3960);
  if (v1)
  {
    if (qword_27C838470 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 3768);
    v3 = sub_20D9734F8();
    *(v0 + 3968) = __swift_project_value_buffer(v3, qword_27C840CC8);
    sub_20D9484C8(v2, v0 + 2904);

    v4 = sub_20D9734D8();
    v5 = sub_20D975478();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 3944);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v128 = v8;
      *v7 = 136315650;
      *(v7 + 4) = sub_20D7F4DC8(0x4468736572666572, 0xED00002928617461, &v128);
      *(v7 + 12) = 2080;
      v9 = sub_20D972C68();
      v11 = sub_20D7F4DC8(v9, v10, &v128);

      *(v7 + 14) = v11;
      *(v7 + 22) = 2080;
      v12 = *(v0 + 2984);
      *(v0 + 3256) = *(v0 + 2968);
      *(v0 + 3272) = v12;
      sub_20D974A48();
      v13 = *(v0 + 3656);
      v14 = *(v0 + 3664);
      sub_20D948844(v0 + 2904);
      v15 = sub_20D7F4DC8(v13, v14, &v128);

      *(v7 + 24) = v15;
      _os_log_impl(&dword_20D7C9000, v4, v5, "%s obtained site %s for homeID: %s", v7, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v8, -1, -1);
      MEMORY[0x20F324260](v7, -1, -1);
    }

    else
    {

      sub_20D948844(v0 + 2904);
    }

    v28 = sub_20D972C98();
    v30 = v29;
    v31 = sub_20D9734D8();
    v32 = sub_20D975448();
    v126 = v1;
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v128 = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_20D7F4DC8(0x4468736572666572, 0xED00002928617461, &v128);
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_20D7F4DC8(v28, v30, &v128);
      _os_log_impl(&dword_20D7C9000, v31, v32, "%s site.subscriptionState: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v34, -1, -1);
      MEMORY[0x20F324260](v33, -1, -1);
    }

    v35 = *(v0 + 3912);
    v36 = *(v0 + 3888);
    v37 = *(v0 + 3880);
    v127 = *(v36 + 104);
    v127(v35, *MEMORY[0x277D07348], v37);
    v38 = sub_20D972E98();
    v40 = v39;
    v41 = *(v36 + 8);
    v41(v35, v37);
    if (v28 == v38 && v30 == v40)
    {
      goto LABEL_15;
    }

    v44 = sub_20D9757C8();

    if (v44)
    {
      v42 = v30;
      v43 = v28;
      v125 = 1;
      goto LABEL_19;
    }

    v66 = *(v0 + 3904);
    v67 = *(v0 + 3880);
    v127(v66, *MEMORY[0x277D07350], v67);
    v68 = sub_20D972E98();
    v70 = v69;
    v41(v66, v67);
    if (v28 == v68 && v30 == v70)
    {
LABEL_15:
      v42 = v30;
      v43 = v28;
      v125 = 1;
    }

    else
    {
      v71 = v30;
      v43 = v28;
      v42 = v71;
      v125 = sub_20D9757C8();
    }

LABEL_19:
    v45 = *(v0 + 3896);
    v46 = *(v0 + 3880);
    v127(v45, *MEMORY[0x277D07358], v46);
    v47 = sub_20D972E98();
    v49 = v48;
    v41(v45, v46);
    if (v43 == v47 && v42 == v49)
    {

      LOBYTE(v50) = 1;
      v51 = v126;
LABEL_23:
      *(v0 + 3149) = v50 & 1;
      v52 = swift_task_alloc();
      *(v0 + 3976) = v52;
      *v52 = v0;
      v52[1] = sub_20D9435F0;
      v53 = *(v0 + 3768);

      return sub_20D944A30(v51, 0);
    }

    v50 = sub_20D9757C8();

    v51 = v126;
    if ((v50 | v125))
    {
      goto LABEL_23;
    }

    v72 = *(v0 + 3768);
    v73 = *(v72 + 32);
    *(v0 + 3984) = v73;
    v74 = *(v72 + 40);
    *(v0 + 3992) = v74;
    *(v0 + 3592) = v73;
    *(v0 + 3600) = v74;
    *(v0 + 4000) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD8, &qword_20D97F530);
    sub_20D974A48();
    v75 = *(v0 + 3752);
    swift_getKeyPath();
    *(v0 + 3760) = v75;
    sub_20D94911C(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
    sub_20D972858();

    swift_beginAccess();
    v77 = *(v75 + 24);
    v76 = *(v75 + 32);

    v78 = sub_20D972C68();
    if (v76)
    {
      if (v77 == v78 && v76 == v79)
      {

LABEL_39:
        v81 = *(v0 + 3768);
        v82 = *(v81 + 96);
        *(v0 + 3640) = *(v81 + 88);
        *(v0 + 3648) = v82;
        *(v0 + 3148) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
        sub_20D974A58();
        v83 = *(v81 + 112);
        *(v0 + 3672) = *(v81 + 104);
        *(v0 + 3680) = v83;
        *(v0 + 2858) = 0;
        sub_20D974A58();
        v84 = *(v81 + 128);
        *(v0 + 3448) = *(v81 + 120);
        *(v0 + 3456) = v84;
        *(v0 + 2857) = 1;
        sub_20D974A58();
        goto LABEL_40;
      }

      v80 = sub_20D9757C8();

      if (v80)
      {
        goto LABEL_39;
      }
    }

    else
    {
    }

LABEL_40:
    if (qword_27C8384A0 != -1)
    {
      swift_once();
    }

    v85 = *(v0 + 3872);
    v86 = *(v0 + 3864);
    v87 = *(v0 + 3856);
    v88 = *(v0 + 3848);
    v89 = __swift_project_value_buffer(v87, qword_27C839AA8);
    (*(v86 + 16))(v85, v89, v87);
    sub_20D973458();
    sub_20D973418();
    v90 = sub_20D973458();
    v91 = sub_20D975498();
    if (sub_20D9754E8())
    {
      v92 = *(v0 + 3848);
      v93 = swift_slowAlloc();
      *v93 = 0;
      v94 = sub_20D973428();
      _os_signpost_emit_with_name_impl(&dword_20D7C9000, v90, v91, v94, "UtilityUsageAndRatesView.refreshData", "", v93, 2u);
      MEMORY[0x20F324260](v93, -1, -1);
    }

    v95 = *(v0 + 3872);
    v96 = *(v0 + 3848);
    v97 = *(v0 + 3840);
    v98 = *(v0 + 3816);
    v99 = *(v0 + 3808);

    v100 = *(v98 + 16);
    v100(v97, v96, v99);
    v101 = sub_20D9734B8();
    v102 = *(v101 + 48);
    v103 = *(v101 + 52);
    swift_allocObject();
    *(v0 + 4008) = sub_20D9734A8();
    v104 = sub_20D973458();
    v105 = sub_20D975498();
    if (sub_20D9754E8())
    {
      v106 = *(v0 + 3848);
      v107 = swift_slowAlloc();
      *v107 = 0;
      v108 = sub_20D973428();
      _os_signpost_emit_with_name_impl(&dword_20D7C9000, v104, v105, v108, "Show tiles", "", v107, 2u);
      MEMORY[0x20F324260](v107, -1, -1);
    }

    v109 = *(v0 + 3848);
    v110 = *(v0 + 3840);
    v111 = *(v0 + 3808);

    v100(v110, v109, v111);
    v112 = *(v101 + 48);
    v113 = *(v101 + 52);
    swift_allocObject();
    *(v0 + 4016) = sub_20D9734A8();

    v114 = sub_20D9734D8();
    v115 = sub_20D975478();

    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v128 = v117;
      *v116 = 136315394;
      *(v116 + 4) = sub_20D7F4DC8(0x4468736572666572, 0xED00002928617461, &v128);
      *(v116 + 12) = 2080;
      v118 = sub_20D972C68();
      v120 = sub_20D7F4DC8(v118, v119, &v128);

      *(v116 + 14) = v120;
      _os_log_impl(&dword_20D7C9000, v114, v115, "%s configuring for site %s", v116, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v117, -1, -1);
      MEMORY[0x20F324260](v116, -1, -1);
    }

    v121 = *(v0 + 3768);
    v122 = swift_task_alloc();
    *(v0 + 4024) = v122;
    *(v122 + 16) = v121;
    *(v122 + 24) = v126;
    swift_asyncLet_begin();
    v123 = swift_task_alloc();
    *(v0 + 4032) = v123;
    *(v123 + 16) = v121;
    *(v123 + 24) = v126;
    swift_asyncLet_begin();

    return MEMORY[0x282200928](v0 + 1296, v124, sub_20D9438FC, v0 + 3408);
  }

  v16 = *(v0 + 3920);

  if (qword_27C838470 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 3768);
  v18 = sub_20D9734F8();
  __swift_project_value_buffer(v18, qword_27C840CC8);
  sub_20D9484C8(v17, v0 + 2616);
  v19 = sub_20D9734D8();
  v20 = sub_20D975458();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 3944);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v128 = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_20D7F4DC8(0x4468736572666572, 0xED00002928617461, &v128);
    *(v22 + 12) = 2080;
    v24 = *(v0 + 2696);
    *(v0 + 3384) = *(v0 + 2680);
    *(v0 + 3400) = v24;
    sub_20D974A48();
    v25 = *(v0 + 3608);
    v26 = *(v0 + 3616);
    sub_20D948844(v0 + 2616);
    v27 = sub_20D7F4DC8(v25, v26, &v128);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_20D7C9000, v19, v20, "%s could not get EnergySite for homeID: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v23, -1, -1);
    MEMORY[0x20F324260](v22, -1, -1);
  }

  else
  {

    sub_20D948844(v0 + 2616);
  }

  v55 = *(v0 + 3912);
  v56 = *(v0 + 3904);
  v57 = *(v0 + 3896);
  v58 = *(v0 + 3872);
  v59 = *(v0 + 3848);
  v60 = *(v0 + 3840);
  v61 = *(v0 + 3832);
  v62 = *(v0 + 3824);
  v63 = *(v0 + 3800);
  v64 = *(v0 + 3792);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_20D9435F0()
{
  v1 = *v0;
  v2 = *(*v0 + 3976);
  v6 = *v0;

  v3 = *(v1 + 3936);
  v4 = *(v1 + 3928);

  return MEMORY[0x2822009F8](sub_20D943710, v4, v3);
}

uint64_t sub_20D943710()
{
  v1 = *(v0 + 3149);
  v2 = *(v0 + 3920);
  v3 = *(v0 + 3768);

  v4 = *(v3 + 128);
  *(v0 + 3688) = *(v3 + 120);
  *(v0 + 3696) = v4;
  *(v0 + 2859) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A58();
  if (v1)
  {
    v5 = 3146;
  }

  else
  {
    v5 = 2861;
  }

  v6 = *(v3 + 96);
  v7 = 2860;
  v8 = *(v0 + 3960);
  if (v1)
  {
    v7 = 2863;
  }

  v9 = 3576;
  if (v1)
  {
    v9 = 3528;
    v10 = 3496;
  }

  else
  {
    v10 = 3560;
  }

  v11 = 3584;
  if (v1)
  {
    v11 = 3536;
  }

  *(v0 + v9) = *(v3 + 88);
  if (v1)
  {
    v12 = 3504;
  }

  else
  {
    v12 = 3568;
  }

  *(v0 + v11) = v6;
  *(v0 + v7) = v1;
  sub_20D974A58();
  v13 = *(v3 + 104);
  v14 = *(v3 + 112);
  *(v0 + v10) = v13;
  *(v0 + v12) = v14;
  *(v0 + v5) = v1 ^ 1;

  sub_20D974A58();

  v15 = *(v0 + 3912);
  v16 = *(v0 + 3904);
  v17 = *(v0 + 3896);
  v18 = *(v0 + 3872);
  v19 = *(v0 + 3848);
  v20 = *(v0 + 3840);
  v21 = *(v0 + 3832);
  v22 = *(v0 + 3824);
  v23 = *(v0 + 3800);
  v24 = *(v0 + 3792);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_20D943934()
{
  v1 = v0[484];
  v2 = sub_20D973458();
  v3 = sub_20D9754A8();
  if (sub_20D9754E8())
  {
    v4 = v0[481];
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v2, v3, v6, "RateInfo+HistoricalUsage configureForSite", "", v5, 2u);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v7 = v0[500];
  v8 = v0[499];
  v9 = v0[498];

  v0[443] = v9;
  v0[444] = v8;
  sub_20D974A48();
  v0[505] = v0[463];
  v10 = swift_task_alloc();
  v0[506] = v10;
  *v10 = v0;
  v10[1] = sub_20D943A74;

  return sub_20D821518();
}

uint64_t sub_20D943A74()
{
  v1 = *v0;
  v2 = *(*v0 + 4048);
  v3 = *(*v0 + 4040);
  v7 = *v0;

  v4 = *(v1 + 3936);
  v5 = *(v1 + 3928);

  return MEMORY[0x2822009F8](sub_20D943BB8, v5, v4);
}

uint64_t sub_20D943BB8()
{
  v38 = v0;
  v1 = *(v0 + 4016);
  v2 = *(v0 + 3872);
  v3 = *(v0 + 3832);
  v4 = *(v0 + 3768);
  v5 = *(v4 + 96);
  *(v0 + 3464) = *(v4 + 88);
  *(v0 + 3472) = v5;
  *(v0 + 3147) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A58();
  v6 = *(v4 + 112);
  *(v0 + 3480) = *(v4 + 104);
  *(v0 + 3488) = v6;
  *(v0 + 3145) = 0;
  sub_20D974A58();
  v7 = *(v4 + 128);
  *(v0 + 3512) = *(v4 + 120);
  *(v0 + 3520) = v7;
  *(v0 + 2862) = 1;
  sub_20D974A58();
  v8 = sub_20D973458();
  sub_20D973498();
  v9 = sub_20D975488();
  if (sub_20D9754E8())
  {
    v10 = *(v0 + 4016);
    v11 = *(v0 + 3800);
    v12 = *(v0 + 3784);
    v13 = *(v0 + 3776);

    sub_20D9734C8();

    if ((*(v12 + 88))(v11, v13) == *MEMORY[0x277D85B00])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 3784) + 8))(*(v0 + 3800), *(v0 + 3776));
      v14 = "";
    }

    v15 = *(v0 + 3832);
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v8, v9, v17, "Show tiles", v14, v16, 2u);
    MEMORY[0x20F324260](v16, -1, -1);
  }

  v18 = *(v0 + 3968);
  v19 = *(v0 + 3960);
  v20 = *(v0 + 3832);
  v21 = *(v0 + 3816);
  v22 = *(v0 + 3808);
  v23 = *(v0 + 3768);

  v24 = *(v21 + 8);
  *(v0 + 4056) = v24;
  v24(v20, v22);
  v25 = swift_task_alloc();
  *(v0 + 4064) = v25;
  *(v25 + 16) = v23;
  swift_asyncLet_begin();
  v26 = swift_task_alloc();
  *(v0 + 4072) = v26;
  *(v26 + 16) = v23;
  *(v26 + 24) = v19;
  swift_asyncLet_begin();

  v27 = sub_20D9734D8();
  v28 = sub_20D975478();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v0 + 3960);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37 = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_20D7F4DC8(0x4468736572666572, 0xED00002928617461, &v37);
    *(v30 + 12) = 2080;
    v32 = sub_20D972C68();
    v34 = sub_20D7F4DC8(v32, v33, &v37);

    *(v30 + 14) = v34;
    _os_log_impl(&dword_20D7C9000, v27, v28, "%s starting snapshot tasks for site %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v31, -1, -1);
    MEMORY[0x20F324260](v30, -1, -1);
  }

  return MEMORY[0x282200928](v0 + 16, v35, sub_20D943F98, v0 + 3344);
}

uint64_t sub_20D943FD0()
{
  v30 = v0;
  v1 = v0[496];
  v2 = v0[495];

  v3 = sub_20D9734D8();
  v4 = sub_20D975478();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[495];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D7F4DC8(0x4468736572666572, 0xED00002928617461, &v29);
    *(v6 + 12) = 2080;
    v8 = sub_20D972C68();
    v10 = sub_20D7F4DC8(v8, v9, &v29);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s finished snapshot tasks for site %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v7, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  v11 = v0[501];
  v12 = v0[484];
  v13 = v0[478];
  v14 = sub_20D973458();
  sub_20D973498();
  v15 = sub_20D975488();
  if (sub_20D9754E8())
  {
    v16 = v0[501];
    v17 = v0[474];
    v18 = v0[473];
    v19 = v0[472];

    sub_20D9734C8();

    if ((*(v18 + 88))(v17, v19) == *MEMORY[0x277D85B00])
    {
      v20 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[473] + 8))(v0[474], v0[472]);
      v20 = "";
    }

    v21 = v0[478];
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v14, v15, v23, "UtilityUsageAndRatesView.refreshData", v20, v22, 2u);
    MEMORY[0x20F324260](v22, -1, -1);
  }

  v24 = v0[507];
  v25 = v0[478];
  v26 = v0[477];
  v27 = v0[476];

  v24(v25, v27);

  return MEMORY[0x282200920](v0 + 82);
}

uint64_t sub_20D9442C0()
{
  v1 = *(v0 + 4072);

  return MEMORY[0x282200920](v0 + 16);
}

uint64_t sub_20D944344()
{
  v1 = *(v0 + 4064);

  return MEMORY[0x282200920](v0 + 1936);
}

uint64_t sub_20D9443C8()
{
  v1 = *(v0 + 4032);

  return MEMORY[0x282200920](v0 + 1296);
}

uint64_t sub_20D94444C()
{
  v1 = v0[503];
  v2 = v0[502];
  v3 = v0[501];
  v4 = v0[495];
  v5 = v0[490];
  v23 = v0[484];
  v24 = v0[507];
  v6 = v0[483];
  v7 = v0[482];
  v8 = v0[481];
  v9 = v0[477];
  v10 = v0[476];

  v24(v8, v10);
  (*(v6 + 8))(v23, v7);
  v11 = v0[489];
  v12 = v0[488];
  v13 = v0[487];
  v14 = v0[484];
  v15 = v0[481];
  v16 = v0[480];
  v17 = v0[479];
  v18 = v0[478];
  v19 = v0[475];
  v20 = v0[474];

  v21 = v0[1];

  return v21();
}

uint64_t sub_20D9445C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v8 = sub_20D971DE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C838470 != -1)
  {
    swift_once();
  }

  v13 = sub_20D9734F8();
  __swift_project_value_buffer(v13, qword_27C840CC8);
  (*(v9 + 16))(v12, a1, v8);
  v14 = sub_20D9734D8();
  v15 = sub_20D975448();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_20D7F4DC8(2036625250, 0xE400000000000000, v31);
    *(v17 + 12) = 2080;
    sub_20D94911C(&qword_27C83C020, MEMORY[0x277CC8900]);
    v19 = sub_20D9757A8();
    v21 = v20;
    (*(v9 + 8))(v12, v8);
    v22 = sub_20D7F4DC8(v19, v21, v31);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_20D7C9000, v14, v15, "%s onReceive: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v18, -1, -1);
    v23 = v17;
    a2 = v30;
    MEMORY[0x20F324260](v23, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v24 = sub_20D975318();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  sub_20D9484C8(a2, v31);
  sub_20D9752E8();
  v25 = sub_20D9752D8();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v25;
  *(v26 + 24) = v27;
  sub_20D948500(v31, v26 + 32);
  sub_20D82D02C(0, 0, v7, &unk_20D97F710, v26);
}

uint64_t sub_20D944984()
{
  v0[2] = sub_20D9752E8();
  v0[3] = sub_20D9752D8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20D92E8CC;

  return sub_20D942384();
}

uint64_t sub_20D944A30(uint64_t a1, char a2)
{
  *(v3 + 432) = a2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v2;
  sub_20D9752E8();
  *(v3 + 344) = sub_20D9752D8();
  v5 = sub_20D975298();
  *(v3 + 352) = v5;
  *(v3 + 360) = v4;

  return MEMORY[0x2822009F8](sub_20D944ACC, v5, v4);
}

uint64_t sub_20D944ACC()
{
  v32 = v0;
  v1 = v0[42];
  v2 = v1[17];
  v0[46] = v2;
  v3 = v1[18];
  v0[47] = v3;
  v4 = v1[19];
  v0[2] = v2;
  v0[48] = v4;
  v0[3] = v3;
  v0[4] = v4;
  v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C028, &qword_20D97F720);
  sub_20D974A48();
  v5 = v0[20];
  v6 = v0[21];

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = v0[43];

LABEL_5:
    v9 = v0[1];

    return v9();
  }

  v11 = v0[41];
  v12 = sub_20D972CC8();
  v0[50] = v13;
  if (!v13)
  {
    v20 = v0[43];

    if (qword_27C838470 != -1)
    {
      swift_once();
    }

    v21 = v0[41];
    v22 = sub_20D9734F8();
    __swift_project_value_buffer(v22, qword_27C840CC8);

    v23 = sub_20D9734D8();
    v24 = sub_20D975458();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v0[41];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v31 = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D98B0A0, &v31);
      *(v26 + 12) = 2080;
      v28 = sub_20D972C68();
      v30 = sub_20D7F4DC8(v28, v29, &v31);

      *(v26 + 14) = v30;
      _os_log_impl(&dword_20D7C9000, v23, v24, "%s could not get utilityID for site: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v27, -1, -1);
      MEMORY[0x20F324260](v26, -1, -1);
    }

    goto LABEL_5;
  }

  v14 = v12;
  v15 = v13;
  v16 = [objc_opt_self() defaultSessionConfiguration];
  v17 = [objc_opt_self() sessionWithConfiguration_];
  v0[51] = v17;

  sub_20D973328();
  v18 = *(MEMORY[0x277D18270] + 4);
  v19 = swift_task_alloc();
  v0[52] = v19;
  *v19 = v0;
  v19[1] = sub_20D944E10;

  return MEMORY[0x282172650](v14, v15, v17);
}

uint64_t sub_20D944E10(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 416);
  v6 = *v2;
  *(*v2 + 424) = a1;

  v7 = *(v3 + 400);
  if (v1)
  {

    v8 = *(v4 + 352);
    v9 = *(v4 + 360);
    v10 = sub_20D945330;
  }

  else
  {

    v8 = *(v4 + 352);
    v9 = *(v4 + 360);
    v10 = sub_20D944F60;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_20D944F60()
{
  v46 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 344);

  if (v1)
  {
    v3 = *(v0 + 424);
    v4 = sub_20D9731D8();
    if (!v5)
    {
      v4 = sub_20D9731B8();
    }

    v6 = *(v0 + 384);
    v7 = *(v0 + 392);
    v8 = *(v0 + 336);
    v9 = *(v0 + 432);
    *(v0 + 40) = *(v0 + 368);
    *(v0 + 56) = v6;
    *(v0 + 176) = v4;
    *(v0 + 184) = v5;
    sub_20D974A58();
    v10 = sub_20D9731A8();
    v44 = v3;
    v11 = sub_20D973168();

    v12 = sub_20D9732E8();
    v14 = v13;

    v15 = v8[20];
    v16 = v8[21];
    v17 = v8[22];
    *(v0 + 64) = v15;
    *(v0 + 72) = v16;
    *(v0 + 80) = v17;
    *(v0 + 192) = v12;
    *(v0 + 200) = v14;
    sub_20D974A58();
    v18 = *(v0 + 408);
    if (v9 == 1)
    {
      v42 = *(v0 + 376);
      v43 = *(v0 + 384);
      v40 = *(v0 + 392);
      v41 = *(v0 + 368);
      v19 = *(v0 + 336);
      v20 = v19[6];
      v21 = v19[7];
      *(v0 + 208) = v20;
      *(v0 + 216) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFE0, &qword_20D97F538);
      sub_20D974A48();
      v22 = *(v0 + 304);
      *(v0 + 88) = v15;
      *(v0 + 96) = v16;
      *(v0 + 104) = v17;
      sub_20D974A48();
      sub_20D80D4B0(*(v0 + 224), *(v0 + 232));

      *(v0 + 240) = v20;
      *(v0 + 248) = v21;
      sub_20D974A48();
      v23 = *(v0 + 312);
      *(v0 + 112) = v41;
      *(v0 + 120) = v42;
      *(v0 + 128) = v43;
      sub_20D974A48();
      sub_20D80D89C(*(v0 + 256), *(v0 + 264));

      v24 = v19[5];
      *(v0 + 272) = v19[4];
      *(v0 + 280) = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD8, &qword_20D97F530);
      sub_20D974A48();
      v25 = *(v0 + 320);
      *(v0 + 136) = v41;
      *(v0 + 144) = v42;
      *(v0 + 152) = v43;
      sub_20D974A48();
      sub_20D81B69C(*(v0 + 288), *(v0 + 296));
    }

    else
    {
    }
  }

  else
  {
    if (qword_27C838470 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 328);
    v27 = sub_20D9734F8();
    __swift_project_value_buffer(v27, qword_27C840CC8);

    v28 = sub_20D9734D8();
    v29 = sub_20D975458();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 408);
    if (v30)
    {
      v32 = *(v0 + 328);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D98B0A0, &v45);
      *(v33 + 12) = 2080;
      v35 = sub_20D972C68();
      v37 = sub_20D7F4DC8(v35, v36, &v45);

      *(v33 + 14) = v37;
      _os_log_impl(&dword_20D7C9000, v28, v29, "%s could not get utilityConfiguration for site: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v34, -1, -1);
      MEMORY[0x20F324260](v33, -1, -1);
    }
  }

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_20D945330()
{
  v17 = v0;
  v1 = v0[43];

  if (qword_27C838470 != -1)
  {
    swift_once();
  }

  v2 = v0[41];
  v3 = sub_20D9734F8();
  __swift_project_value_buffer(v3, qword_27C840CC8);

  v4 = sub_20D9734D8();
  v5 = sub_20D975458();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[51];
  if (v6)
  {
    v8 = v0[41];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D98B0A0, &v16);
    *(v9 + 12) = 2080;
    v11 = sub_20D972C68();
    v13 = sub_20D7F4DC8(v11, v12, &v16);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s could not get utilityConfiguration for site: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_20D94550C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return MEMORY[0x2822009F8](sub_20D94552C, 0, 0);
}

uint64_t sub_20D94552C()
{
  sub_20D9752E8();
  *(v0 + 56) = sub_20D9752D8();
  v2 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D9455C0, v2, v1);
}

uint64_t sub_20D9455C0()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = *(v2 + 56);
  v0[2] = *(v2 + 48);
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFE0, &qword_20D97F538);
  sub_20D974A48();
  v0[8] = v0[4];

  return MEMORY[0x2822009F8](sub_20D945660, 0, 0);
}

uint64_t sub_20D945660()
{
  v1 = v0[6];
  v2 = sub_20D972C68();
  v4 = v3;
  v0[9] = v3;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_20D945714;
  v6 = v0[8];

  return sub_20D80FEF0(v2, v4);
}

uint64_t sub_20D945714()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_20D945844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return MEMORY[0x2822009F8](sub_20D945864, 0, 0);
}

uint64_t sub_20D945864()
{
  sub_20D9752E8();
  *(v0 + 56) = sub_20D9752D8();
  v2 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D9458F8, v2, v1);
}

uint64_t sub_20D9458F8()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = *(v2 + 40);
  v0[2] = *(v2 + 32);
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD8, &qword_20D97F530);
  sub_20D974A48();
  v0[8] = v0[4];

  return MEMORY[0x2822009F8](sub_20D945998, 0, 0);
}

uint64_t sub_20D945998()
{
  v1 = v0[6];
  v2 = sub_20D972C68();
  v4 = v3;
  v0[9] = v3;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_20D9493B4;
  v6 = v0[8];

  return sub_20D81F678(v2, v4);
}

uint64_t sub_20D945A6C()
{
  sub_20D9752E8();
  *(v0 + 48) = sub_20D9752D8();
  v2 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D945B00, v2, v1);
}

uint64_t sub_20D945B00()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = *(v2 + 40);
  v0[2] = *(v2 + 32);
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD8, &qword_20D97F530);
  sub_20D974A48();
  v0[7] = v0[4];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_20D945BC8;

  return sub_20D821F08();
}

uint64_t sub_20D945BC8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_20D945CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_20D84B0F8;

  return sub_20D944A30(a3, 1);
}

uint64_t sub_20D945D7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1A8, &qword_20D97F8E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C1B0, &qword_20D97F8F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C150, &qword_20D97F8B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C1B8, &qword_20D97F8F8);
  type metadata accessor for HistoricalUsageDetailsSheet();
  sub_20D94911C(&qword_27C83C1C0, type metadata accessor for HistoricalUsageDetailsSheet);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C168, &qword_20D97F8C8);
  sub_20D7EBC4C(&qword_27C83C170, &qword_27C83C168, &qword_20D97F8C8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_20D973DB8();
}

uint64_t sub_20D945F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_20D974068();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D9726E8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_20D975058();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = type metadata accessor for HistoricalUsageDetailsSheet();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1B8, &qword_20D97F8F8);
  v43 = *(v14 - 8);
  v15 = *(v43 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1B0, &qword_20D97F8F0);
  v44 = *(v18 - 8);
  v45 = v18;
  v19 = *(v44 + 64);
  MEMORY[0x28223BE20](v18);
  v42 = &v41 - v20;
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v49 = a1;
  v52 = v21;
  v53 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD8, &qword_20D97F530);
  sub_20D974A48();
  HistoricalUsageDetailsSheet.init(snapshotManager:)(v51, v13);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v23 = qword_28112ABE8;
  sub_20D9726B8();
  v52 = sub_20D9750F8();
  v53 = v24;
  sub_20D7E1EF8();
  v25 = sub_20D9745C8();
  v27 = v26;
  v29 = v28;
  v30 = sub_20D94911C(&qword_27C83C1C0, type metadata accessor for HistoricalUsageDetailsSheet);
  sub_20D974788();
  sub_20D7EADC0(v25, v27, v29 & 1);

  sub_20D949164(v13, type metadata accessor for HistoricalUsageDetailsSheet);
  v32 = v46;
  v31 = v47;
  v33 = v48;
  (*(v47 + 104))(v46, *MEMORY[0x277CDDDC0], v48);
  v52 = v10;
  v53 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v42;
  sub_20D9747E8();
  (*(v31 + 8))(v32, v33);
  v36 = (*(v43 + 8))(v17, v14);
  MEMORY[0x28223BE20](v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C150, &qword_20D97F8B8);
  v52 = v14;
  v53 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C168, &qword_20D97F8C8);
  v38 = sub_20D7EBC4C(&qword_27C83C170, &qword_27C83C168, &qword_20D97F8C8);
  v52 = v37;
  v53 = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v45;
  sub_20D974828();
  return (*(v44 + 8))(v35, v39);
}

uint64_t sub_20D946578(uint64_t a1)
{
  v2 = *(a1 + 200);
  v3 = *(a1 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  return sub_20D974A58();
}

uint64_t sub_20D9465D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C140, &qword_20D97F8A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C148, &qword_20D97F8B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C150, &qword_20D97F8B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C158, &qword_20D97F8C0);
  type metadata accessor for UtilityRateInfoDetailsSheet(255);
  sub_20D94911C(&qword_27C83C160, type metadata accessor for UtilityRateInfoDetailsSheet);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C168, &qword_20D97F8C8);
  sub_20D7EBC4C(&qword_27C83C170, &qword_27C83C168, &qword_20D97F8C8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_20D973DB8();
}

uint64_t sub_20D9467C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_20D974068();
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v3);
  v59 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D9726E8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v53[1] = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D975058();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_20D972628();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v53 - v17;
  v19 = type metadata accessor for UtilityRateInfoDetailsSheet(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C158, &qword_20D97F8C0);
  v54 = *(v23 - 8);
  v55 = v23;
  v24 = *(v54 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = v53 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C148, &qword_20D97F8B0);
  v57 = *(v27 - 8);
  v58 = v27;
  v28 = *(v57 + 64);
  MEMORY[0x28223BE20](v27);
  v56 = v53 - v29;
  v30 = *(a1 + 48);
  v31 = *(a1 + 56);
  v62 = a1;
  v65 = v30;
  v66 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFE0, &qword_20D97F538);
  sub_20D974A48();
  v32 = v64;
  v33 = *(v19 + 20);
  sub_20D9725C8();
  (*(v12 + 16))(v16, v18, v11);
  sub_20D974A38();
  (*(v12 + 8))(v18, v11);
  *v22 = v32;
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v34 = qword_28112ABE8;
  sub_20D9726B8();
  v65 = sub_20D975108();
  v66 = v35;
  sub_20D7E1EF8();
  v36 = sub_20D9745C8();
  v38 = v37;
  v40 = v39;
  v41 = sub_20D94911C(&qword_27C83C160, type metadata accessor for UtilityRateInfoDetailsSheet);
  sub_20D974788();
  sub_20D7EADC0(v36, v38, v40 & 1);

  sub_20D949164(v22, type metadata accessor for UtilityRateInfoDetailsSheet);
  v43 = v59;
  v42 = v60;
  v44 = v61;
  (*(v60 + 104))(v59, *MEMORY[0x277CDDDC0], v61);
  v65 = v19;
  v66 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v55;
  v47 = v56;
  sub_20D9747E8();
  (*(v42 + 8))(v43, v44);
  v48 = (*(v54 + 8))(v26, v46);
  MEMORY[0x28223BE20](v48);
  v53[-2] = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C150, &qword_20D97F8B8);
  v65 = v46;
  v66 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C168, &qword_20D97F8C8);
  v50 = sub_20D7EBC4C(&qword_27C83C170, &qword_27C83C168, &qword_20D97F8C8);
  v65 = v49;
  v66 = v50;
  swift_getOpaqueTypeConformance2();
  v51 = v58;
  sub_20D974828();
  return (*(v57 + 8))(v47, v51);
}

uint64_t sub_20D946E9C(uint64_t a1)
{
  v2 = sub_20D974208();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C168, &qword_20D97F8C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_20D9741F8();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C178, &qword_20D97F8D0);
  sub_20D7EBC4C(&qword_27C83C180, &qword_27C83C178, &qword_20D97F8D0);
  sub_20D973B48();
  v9 = sub_20D7EBC4C(&qword_27C83C170, &qword_27C83C168, &qword_20D97F8C8);
  MEMORY[0x20F3223E0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_20D94707C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20D973AC8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_20D973AB8();
  sub_20D9484C8(a1, v12);
  v9 = swift_allocObject();
  sub_20D948500(v12, v9 + 16);
  return MEMORY[0x20F322C50](v8, a3, v9);
}

uint64_t sub_20D94714C(uint64_t a1)
{
  v2 = *(a1 + 216);
  v3 = *(a1 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  return sub_20D974A58();
}

uint64_t sub_20D9471A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1D0, &qword_20D97F908);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v33 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA30, &unk_20D97E930);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v33 - v22;
  v24 = *(a1 + 176);
  v35 = *(a1 + 160);
  *&v36 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C028, &qword_20D97F720);
  sub_20D974A48();
  sub_20D9721B8();

  sub_20D7EB7E8(v23, v21, &qword_27C838B78, &qword_20D97A5A0);
  *(swift_allocObject() + 16) = 0x4042800000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA38, &qword_20D97E940);
  sub_20D949328();
  sub_20D973AA8();
  sub_20D974C48();
  sub_20D973C18();
  v25 = &v16[*(v10 + 44)];
  v26 = v36;
  *v25 = v35;
  *(v25 + 1) = v26;
  *(v25 + 2) = v37;
  *v8 = sub_20D974168();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1D8, &qword_20D97F910);
  sub_20D94788C(a1, &v8[*(v27 + 44)]);
  sub_20D7EB7E8(v16, v14, &qword_27C83BA30, &unk_20D97E930);
  v28 = v33;
  sub_20D7EB7E8(v8, v33, &qword_27C83C1D0, &qword_20D97F908);
  v29 = v34;
  sub_20D7EB7E8(v14, v34, &qword_27C83BA30, &unk_20D97E930);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1E0, &qword_20D97F918);
  sub_20D7EB7E8(v28, v29 + *(v30 + 48), &qword_27C83C1D0, &qword_20D97F908);
  v31 = v29 + *(v30 + 64);
  *v31 = 0;
  *(v31 + 8) = 1;
  sub_20D7E3944(v8, &qword_27C83C1D0, &qword_20D97F908);
  sub_20D7E3944(v16, &qword_27C83BA30, &unk_20D97E930);
  sub_20D7E3944(v23, &qword_27C838B78, &qword_20D97A5A0);
  sub_20D7E3944(v28, &qword_27C83C1D0, &qword_20D97F908);
  return sub_20D7E3944(v14, &qword_27C83BA30, &unk_20D97E930);
}

uint64_t sub_20D9475A8@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_20D9749C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA50, &qword_20D97E948);
  v22 = *(v9 - 8);
  v10 = *(v22 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  if (sub_20D973D28())
  {
    (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
    v13 = sub_20D974A08();

    (*(v5 + 8))(v8, v4);
    v14 = a2 * 0.225;
    v15 = &v12[*(v9 + 36)];
    v16 = *(sub_20D973DE8() + 20);
    v17 = *MEMORY[0x277CE0118];
    v18 = sub_20D974118();
    (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
    *v15 = v14;
    v15[1] = v14;
    *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C98, &unk_20D977550) + 36)) = 256;
    *v12 = v13;
    *(v12 + 1) = 0;
    *(v12 + 8) = 1;
    sub_20D7EAF18(v12, a1, &qword_27C83BA50, &qword_20D97E948);
    return (*(v22 + 56))(a1, 0, 1, v9);
  }

  else
  {
    v20 = *(v22 + 56);

    return v20(a1, 1, 1, v9);
  }
}

uint64_t sub_20D94788C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v92 = sub_20D974458();
  v91 = *(v92 - 8);
  v3 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v89 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1E8, &unk_20D97F920);
  v5 = *(*(v90 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v90);
  v96 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v98 = (&v87 - v8);
  v9 = sub_20D9740E8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v94 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v95 = &v87 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v93 = &v87 - v18;
  MEMORY[0x28223BE20](v17);
  v99 = &v87 - v19;
  sub_20D9740D8();
  sub_20D9740C8();
  v20 = *(a1 + 152);
  v100 = *(a1 + 136);
  v101 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C028, &qword_20D97F720);
  sub_20D974A48();
  sub_20D9740B8();

  sub_20D9740C8();
  sub_20D974108();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v21 = qword_28112ABE8;
  v22 = sub_20D9745A8();
  v24 = v23;
  v26 = v25;
  sub_20D974388();
  sub_20D9743A8();

  v27 = sub_20D974558();
  v29 = v28;
  v31 = v30;

  sub_20D7EADC0(v22, v24, v26 & 1);

  v88 = objc_opt_self();
  v32 = [v88 labelColor];
  *&v100 = sub_20D974888();
  v33 = sub_20D974518();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_20D7EADC0(v27, v29, v31 & 1);

  *&v100 = v33;
  *(&v100 + 1) = v35;
  LOBYTE(v101) = v37 & 1;
  v102 = v39;
  sub_20D9747D8();
  sub_20D7EADC0(v33, v35, v37 & 1);

  v40 = sub_20D974088();
  v41 = v98;
  *v98 = v40;
  v41[1] = 0;
  *(v41 + 16) = 1;
  v42 = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1F0, &qword_20D97F930);
  v44 = v42;
  sub_20D948170(&v42[*(v43 + 44)]);
  LOBYTE(v42) = sub_20D974328();
  sub_20D973AD8();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1F8, &qword_20D97F938) + 36)];
  *v53 = v42;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  LOBYTE(v42) = sub_20D974338();
  sub_20D973AD8();
  v54 = &v44[*(v90 + 36)];
  *v54 = v42;
  *(v54 + 1) = v55;
  *(v54 + 2) = v56;
  *(v54 + 3) = v57;
  *(v54 + 4) = v58;
  v54[40] = 0;
  sub_20D9740F8();
  v59 = sub_20D9745A8();
  v61 = v60;
  LOBYTE(v35) = v62;
  sub_20D974388();
  v63 = v91;
  v64 = v89;
  v65 = v92;
  (*(v91 + 104))(v89, *MEMORY[0x277CE0A10], v92);
  sub_20D974478();

  (*(v63 + 8))(v64, v65);
  v66 = sub_20D974558();
  v68 = v67;
  v70 = v69;

  sub_20D7EADC0(v59, v61, v35 & 1);

  v71 = [v88 secondaryLabelColor];
  *&v100 = sub_20D974888();
  v72 = sub_20D974518();
  v74 = v73;
  LOBYTE(v35) = v75;
  v77 = v76;
  sub_20D7EADC0(v66, v68, v70 & 1);

  *&v100 = v72;
  *(&v100 + 1) = v74;
  LOBYTE(v101) = v35 & 1;
  v102 = v77;
  v78 = v93;
  sub_20D9747D8();
  sub_20D7EADC0(v72, v74, v35 & 1);

  v79 = v99;
  v80 = v95;
  sub_20D7EB7E8(v99, v95, &qword_27C838F18, &unk_20D977860);
  v81 = v98;
  v82 = v96;
  sub_20D7EB7E8(v98, v96, &qword_27C83C1E8, &unk_20D97F920);
  v83 = v94;
  sub_20D7EB7E8(v78, v94, &qword_27C838F18, &unk_20D977860);
  v84 = v97;
  sub_20D7EB7E8(v80, v97, &qword_27C838F18, &unk_20D977860);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C200, &qword_20D97F940);
  sub_20D7EB7E8(v82, v84 + *(v85 + 48), &qword_27C83C1E8, &unk_20D97F920);
  sub_20D7EB7E8(v83, v84 + *(v85 + 64), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v78, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v81, &qword_27C83C1E8, &unk_20D97F920);
  sub_20D7E3944(v79, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v83, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v82, &qword_27C83C1E8, &unk_20D97F920);
  return sub_20D7E3944(v80, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D948170@<X0>(char *a1@<X8>)
{
  v34 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C208, &qword_20D97F948);
  v33 = *(v36 - 8);
  v1 = *(v33 + 64);
  v2 = MEMORY[0x28223BE20](v36);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - v4;
  sub_20D973B58();
  sub_20D9740F8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = sub_20D9745A8();
  v9 = v8;
  v11 = v10;
  sub_20D974388();
  v12 = sub_20D974558();
  v14 = v13;
  v16 = v15;

  sub_20D7EADC0(v7, v9, v11 & 1);

  v17 = [objc_opt_self() secondaryLabelColor];
  v37 = sub_20D974888();
  v18 = sub_20D974518();
  v20 = v19;
  v22 = v21;
  v32 = v23;
  sub_20D7EADC0(v12, v14, v16 & 1);

  v24 = v33;
  v25 = *(v33 + 16);
  v27 = v35;
  v26 = v36;
  v25(v35, v5, v36);
  v28 = v34;
  v25(v34, v27, v26);
  v29 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C210, &qword_20D97F950) + 48)];
  *v29 = v18;
  *(v29 + 1) = v20;
  v29[16] = v22 & 1;
  *(v29 + 3) = v32;
  sub_20D7DDC4C(v18, v20, v22 & 1);
  v30 = *(v24 + 8);

  v30(v5, v26);
  sub_20D7EADC0(v18, v20, v22 & 1);

  return (v30)(v27, v26);
}

uint64_t sub_20D948540()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20D805810;

  return sub_20D9422D8();
}

uint64_t sub_20D948604(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 241))
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

uint64_t sub_20D94864C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20D9486DC()
{
  result = qword_27C83C010;
  if (!qword_27C83C010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C008, &qword_20D97F578);
    sub_20D7EBC4C(&qword_27C83C018, &qword_27C83BFE8, &qword_20D97F540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C010);
  }

  return result;
}

uint64_t sub_20D948794()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D7EB52C;

  return sub_20D944984();
}

uint64_t sub_20D948874(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D7EB52C;

  return sub_20D94550C(a1, v5, v4);
}

uint64_t sub_20D948920(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D805810;

  return sub_20D945844(a1, v5, v4);
}

uint64_t sub_20D9489CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D805810;

  return sub_20D945A4C(a1, v4);
}

uint64_t sub_20D948A6C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D805810;

  return sub_20D945CDC(a1, v5, v4);
}

unint64_t sub_20D948B18()
{
  result = qword_27C83C078;
  if (!qword_27C83C078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C048, &qword_20D97F7B0);
    sub_20D948BA4();
    sub_20D948C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C078);
  }

  return result;
}

unint64_t sub_20D948BA4()
{
  result = qword_27C83C080;
  if (!qword_27C83C080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C050, &qword_20D97F7B8);
    sub_20D7EBC4C(&qword_27C83C088, &qword_27C83C090, &qword_20D97F818);
    sub_20D7EBC4C(&qword_27C83C098, &qword_27C83C0A0, &qword_20D97F820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C080);
  }

  return result;
}

unint64_t sub_20D948C88()
{
  result = qword_27C83C0A8;
  if (!qword_27C83C0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C030, &qword_20D97F798);
    sub_20D948D44();
    sub_20D94911C(&qword_281126F38, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C0A8);
  }

  return result;
}

unint64_t sub_20D948D44()
{
  result = qword_27C83C0B0;
  if (!qword_27C83C0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C0B8, &qword_20D97F828);
    sub_20D948DFC();
    sub_20D7EBC4C(&qword_281124E40, &qword_27C838FD8, &qword_20D977990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C0B0);
  }

  return result;
}

unint64_t sub_20D948DFC()
{
  result = qword_27C83C0C0;
  if (!qword_27C83C0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C0C8, &qword_20D97F830);
    sub_20D948E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C0C0);
  }

  return result;
}

unint64_t sub_20D948E88()
{
  result = qword_27C83C0D0;
  if (!qword_27C83C0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C0D8, &qword_20D97F838);
    sub_20D948F14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C0D0);
  }

  return result;
}

unint64_t sub_20D948F14()
{
  result = qword_27C83C0E0;
  if (!qword_27C83C0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C0E8, &qword_20D97F840);
    sub_20D7EBC4C(&qword_27C83C0F0, &qword_27C83C0F8, &unk_20D97F848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C0E0);
  }

  return result;
}

uint64_t sub_20D948FCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D94911C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D949164(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  MEMORY[0x20F324310](v0 + 40);
  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = *(v0 + 88);

  v8 = *(v0 + 96);

  v9 = *(v0 + 112);

  v10 = *(v0 + 128);

  v11 = *(v0 + 144);

  v12 = *(v0 + 160);

  v13 = *(v0 + 168);

  v14 = *(v0 + 184);

  v15 = *(v0 + 192);

  v16 = *(v0 + 208);

  v17 = *(v0 + 224);

  v18 = *(v0 + 240);

  sub_20D809438(*(v0 + 248), *(v0 + 256));

  return MEMORY[0x2821FE8E8](v0, 257, 7);
}

unint64_t sub_20D949328()
{
  result = qword_27C83BA40;
  if (!qword_27C83BA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BA38, &qword_20D97E940);
    sub_20D9309A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BA40);
  }

  return result;
}

uint64_t UtilityRateInfoDetailsSheet.init(snapshotManager:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = *(type metadata accessor for UtilityRateInfoDetailsSheet(0) + 20);
  sub_20D9725C8();
  (*(v5 + 16))(v9, v11, v4);
  sub_20D974A38();
  result = (*(v5 + 8))(v11, v4);
  *a2 = a1;
  return result;
}

uint64_t UtilityRateInfoDetailsSheet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = type metadata accessor for UtilityRateInfoDetailsSheet(0);
  v67 = *(v2 - 8);
  v65 = *(v67 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v68 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_20D973CD8();
  v4 = *(v66 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v66);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C220, &qword_20D97F980);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v57 - v11;
  v13 = type metadata accessor for UtilityRateInfoSnapshot();
  v63 = *(v13 - 8);
  v62 = *(v63 + 64);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v61 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v57 - v16;
  v18 = *v1;
  v64 = v1;
  swift_getKeyPath();
  v71 = v18;
  sub_20D9502D0(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  v19 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot;
  swift_beginAccess();
  v59 = v17;
  v60 = type metadata accessor for UtilityRateInfoSnapshot;
  sub_20D94AEE0(v18 + v19, v17, type metadata accessor for UtilityRateInfoSnapshot);
  v69 = v17;
  v70 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C228, &qword_20D97F9B0);
  sub_20D7EBC4C(&qword_27C83C230, &qword_27C83C228, &qword_20D97F9B0);
  sub_20D9744D8();
  sub_20D973CC8();
  sub_20D7EBC4C(&qword_27C83C238, &qword_27C83C220, &qword_20D97F980);
  v20 = v58;
  v21 = v66;
  sub_20D974878();
  (*(v4 + 8))(v7, v21);
  (*(v9 + 8))(v12, v8);
  v22 = objc_opt_self();
  v23 = [v22 defaultCenter];
  v24 = *MEMORY[0x277D76E80];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C240, &qword_20D97F9B8);
  v26 = v20 + *(v25 + 52);
  v27 = v20;
  sub_20D9754B8();

  v28 = v64;
  v29 = v68;
  v57 = type metadata accessor for UtilityRateInfoDetailsSheet;
  sub_20D94AEE0(v64, v68, type metadata accessor for UtilityRateInfoDetailsSheet);
  v30 = *(v67 + 80);
  v31 = v65 + ((v30 + 16) & ~v30);
  v32 = (v30 + 16) & ~v30;
  v66 = v32;
  v67 = v30 | 7;
  v33 = swift_allocObject();
  v65 = type metadata accessor for UtilityRateInfoDetailsSheet;
  v34 = v33 + v32;
  v35 = v29;
  sub_20D94B290(v29, v34, type metadata accessor for UtilityRateInfoDetailsSheet);
  v36 = v27;
  v37 = (v27 + *(v25 + 56));
  *v37 = sub_20D94AF48;
  v37[1] = v33;
  v38 = [v22 defaultCenter];
  v39 = *MEMORY[0x277D76E58];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C248, &qword_20D97F9C8);
  v41 = v27 + *(v40 + 52);
  sub_20D9754B8();

  sub_20D94AEE0(v28, v35, type metadata accessor for UtilityRateInfoDetailsSheet);
  v43 = v59;
  v42 = v60;
  v44 = v61;
  sub_20D94AEE0(v59, v61, v60);
  v45 = *(v63 + 80);
  v46 = &v31[v45] & ~v45;
  v47 = swift_allocObject();
  sub_20D94B290(v35, v47 + v66, v65);
  sub_20D94B290(v44, v47 + v46, type metadata accessor for UtilityRateInfoSnapshot);
  v48 = (v36 + *(v40 + 56));
  *v48 = sub_20D94B2F8;
  v48[1] = v47;
  sub_20D94AEE0(v43, v44, v42);
  v49 = swift_allocObject();
  v50 = v44;
  sub_20D94B290(v44, v49 + ((v45 + 16) & ~v45), type metadata accessor for UtilityRateInfoSnapshot);
  v51 = v36;
  v52 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C250, &qword_20D97F9D0) + 36));
  *v52 = sub_20D94B568;
  v52[1] = v49;
  v52[2] = 0;
  v52[3] = 0;
  v53 = v68;
  sub_20D94AEE0(v64, v68, v57);
  sub_20D94AEE0(v43, v50, v42);
  v54 = swift_allocObject();
  sub_20D94B290(v53, v54 + v66, v65);
  sub_20D94B290(v50, v54 + v46, type metadata accessor for UtilityRateInfoSnapshot);
  v55 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C258, &qword_20D97F9D8) + 36));
  *v55 = 0;
  v55[1] = 0;
  v55[2] = sub_20D94BAE4;
  v55[3] = v54;
  return sub_20D956740(v43, type metadata accessor for UtilityRateInfoSnapshot);
}

uint64_t sub_20D949C60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v157 = a3;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A890, &qword_20D97C498);
  v153 = *(v154 - 1);
  v5 = *(v153 + 64);
  MEMORY[0x28223BE20](v154);
  v139 = &v138 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A898, &qword_20D97C4A0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v156 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v165 = &v138 - v11;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C480, &qword_20D97FE48);
  v12 = *(*(v152 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v152);
  v166 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v170 = &v138 - v15;
  v16 = type metadata accessor for UtilityRateInfoDetailsSheet.RatePlanTypeView(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v171 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v169 = &v138 - v20;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C488, &qword_20D97FE50);
  v155 = *(v164 - 8);
  v21 = *(v155 + 64);
  v22 = MEMORY[0x28223BE20](v164);
  v163 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v168 = &v138 - v24;
  v148 = sub_20D974BD8();
  v146 = *(v148 - 8);
  v25 = *(v146 + 64);
  MEMORY[0x28223BE20](v148);
  v145 = (&v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C490, &qword_20D97FE58);
  v27 = *(*(v147 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v147);
  v162 = &v138 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v167 = &v138 - v30;
  v31 = type metadata accessor for UtilityRateInfoSnapshot();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v138 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for RatePlanTitle(0);
  v36 = *(*(v35 - 1) + 64);
  MEMORY[0x28223BE20](v35);
  v38 = (&v138 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C498, &qword_20D97FE60);
  v160 = *(v161 - 8);
  v39 = v160[8];
  v40 = MEMORY[0x28223BE20](v161);
  v159 = &v138 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v138 - v42;
  sub_20D94AEE0(a1, v34, type metadata accessor for UtilityRateInfoSnapshot);
  v44 = *a2;
  swift_getKeyPath();
  v45 = v44 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  v173 = v44;
  v149 = sub_20D9502D0(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  v150 = v45;
  sub_20D972858();

  v151 = v44;
  v46 = (v44 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityArtworkURL);
  swift_beginAccess();
  if (v46[1])
  {
    v47 = *v46;
    v48 = v46[1];
  }

  else
  {
    v47 = 0;
    v48 = 0xE000000000000000;
  }

  *v38 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  sub_20D94B290(v34, v38 + v35[5], type metadata accessor for UtilityRateInfoSnapshot);
  v49 = (v38 + v35[6]);
  *v49 = v47;
  v49[1] = v48;
  *(v38 + v35[7]) = 0x4044800000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C4A0, &qword_20D97FE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D977210;

  v51 = sub_20D973BB8();
  *(inited + 32) = v51;
  v52 = sub_20D973BC8();
  *(inited + 33) = v52;
  sub_20D973BD8();
  sub_20D973BD8();
  if (sub_20D973BD8() != v51)
  {
    sub_20D973BD8();
  }

  sub_20D973BD8();
  if (sub_20D973BD8() != v52)
  {
    sub_20D973BD8();
  }

  sub_20D9502D0(&qword_27C83C4A8, type metadata accessor for RatePlanTitle);
  v158 = v43;
  sub_20D974798();
  sub_20D956740(v38, type metadata accessor for RatePlanTitle);
  v143 = type metadata accessor for UtilityRateInfoSnapshot;
  v53 = a1;
  v144 = a1;
  v54 = v167;
  sub_20D94AEE0(v53, v167, type metadata accessor for UtilityRateInfoSnapshot);
  KeyPath = swift_getKeyPath();
  v56 = type metadata accessor for UtilityPeaksGrid(0);
  *(v54 + v56[6]) = KeyPath;
  swift_storeEnumTagMultiPayload();
  *(v54 + v56[5]) = 0x4039000000000000;
  v142 = v56[7];
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C4B0, &qword_20D97FE98);
  v57 = *(sub_20D974BE8() - 8);
  v58 = *(v57 + 72);
  v59 = *(v57 + 80);
  v60 = swift_allocObject();
  v140 = xmmword_20D979110;
  *(v60 + 16) = xmmword_20D979110;
  v61 = v145;
  *v145 = xmmword_20D97F960;
  v62 = *(v146 + 104);
  v63 = v148;
  v62(v61, *MEMORY[0x277CDF100], v148);
  sub_20D974BF8();
  *(v54 + v142) = v60;
  v64 = v56[8];
  v65 = swift_allocObject();
  *(v65 + 16) = v140;
  *v61 = xmmword_20D97F970;
  v62(v61, *MEMORY[0x277CDF108], v63);
  sub_20D974BF8();
  *(v54 + v64) = v65;
  LOBYTE(v65) = sub_20D974338();
  sub_20D973AD8();
  v66 = v54 + *(v147 + 36);
  *v66 = v65;
  *(v66 + 8) = v67;
  *(v66 + 16) = v68;
  *(v66 + 24) = v69;
  *(v66 + 32) = v70;
  *(v66 + 40) = 0;
  LOBYTE(v65) = sub_20D974328();
  sub_20D973AD8();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  LOBYTE(v61) = sub_20D974338();
  sub_20D973AD8();
  v172 = 0;
  v187 = 0;
  LOBYTE(v173) = v65;
  *(&v173 + 1) = *v190;
  HIDWORD(v173) = *&v190[3];
  v174 = v72;
  v175 = v74;
  v176 = v76;
  v177 = v78;
  v178 = 0;
  *v179 = *v189;
  *&v179[3] = *&v189[3];
  v180 = v61;
  *&v181[3] = *&v188[3];
  *v181 = *v188;
  v182 = v79;
  v183 = v80;
  v184 = v81;
  v185 = v82;
  v186 = 0;
  sub_20D973BC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C4B8, &qword_20D97FEA0);
  sub_20D9567A0();
  sub_20D974798();
  v83 = v144;
  v84 = v143;
  sub_20D94AEE0(v144, v169, v143);
  v85 = v170;
  sub_20D94AEE0(v83, v170, v84);
  LOBYTE(v83) = sub_20D974328();
  sub_20D973AD8();
  v86 = v85 + *(v152 + 36);
  *v86 = v83;
  *(v86 + 8) = v87;
  *(v86 + 16) = v88;
  *(v86 + 24) = v89;
  *(v86 + 32) = v90;
  *(v86 + 40) = 0;
  swift_getKeyPath();
  v91 = v151;
  v173 = v151;
  sub_20D972858();

  v92 = (v91 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityName);
  swift_beginAccess();
  if (v92[1])
  {
    v93 = *v92;

    v94 = _s12HomeEnergyUI25UtilityIntegrationStringsV17utilityRateFooter0G4NameS2S_tFZ_0();
    v96 = v95;

    v173 = v94;
    v174 = v96;
    sub_20D7E1EF8();
    v97 = sub_20D9745C8();
    v99 = v98;
    LOBYTE(v96) = v100;
    sub_20D974398();
    v101 = sub_20D974558();
    v103 = v102;
    v105 = v104;

    sub_20D7EADC0(v97, v99, v96 & 1);

    v106 = sub_20D974588();
    v108 = v107;
    LOBYTE(v96) = v109;
    sub_20D7EADC0(v101, v103, v105 & 1);

    sub_20D974968();
    v110 = sub_20D974508();
    v112 = v111;
    v114 = v113;
    v116 = v115;

    sub_20D7EADC0(v106, v108, v96 & 1);

    v173 = v110;
    v174 = v112;
    LOBYTE(v175) = v114 & 1;
    v176 = v116;
    sub_20D973BC8();
    v117 = v139;
    sub_20D974798();
    sub_20D7EADC0(v110, v112, v114 & 1);

    v118 = v153;
    v119 = v165;
    v120 = v154;
    (*(v153 + 32))(v165, v117, v154);
    v121 = 0;
  }

  else
  {
    v119 = v165;
    v120 = v154;
    v118 = v153;
    v121 = 1;
  }

  (*(v118 + 56))(v119, v121, 1, v120);
  v122 = v160[2];
  v123 = v159;
  v122(v159, v158, v161);
  v124 = v162;
  sub_20D7EB7E8(v167, v162, &qword_27C83C490, &qword_20D97FE58);
  v125 = v155;
  v154 = *(v155 + 16);
  v126 = v163;
  (v154)(v163, v168, v164);
  sub_20D94AEE0(v169, v171, type metadata accessor for UtilityRateInfoDetailsSheet.RatePlanTypeView);
  sub_20D7EB7E8(v170, v166, &qword_27C83C480, &qword_20D97FE48);
  v127 = v119;
  v128 = v156;
  sub_20D7DC374(v127, v156);
  v129 = v157;
  v130 = v123;
  v131 = v161;
  v122(v157, v130, v161);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C4E0, &qword_20D97FED8);
  sub_20D7EB7E8(v124, &v129[v132[12]], &qword_27C83C490, &qword_20D97FE58);
  v133 = v164;
  (v154)(&v129[v132[16]], v126, v164);
  sub_20D94AEE0(v171, &v129[v132[20]], type metadata accessor for UtilityRateInfoDetailsSheet.RatePlanTypeView);
  v134 = v166;
  sub_20D7EB7E8(v166, &v129[v132[24]], &qword_27C83C480, &qword_20D97FE48);
  sub_20D7DC374(v128, &v129[v132[28]]);
  sub_20D7DC3E4(v165);
  sub_20D7E3944(v170, &qword_27C83C480, &qword_20D97FE48);
  sub_20D956740(v169, type metadata accessor for UtilityRateInfoDetailsSheet.RatePlanTypeView);
  v135 = *(v125 + 8);
  v135(v168, v133);
  sub_20D7E3944(v167, &qword_27C83C490, &qword_20D97FE58);
  v136 = v160[1];
  v136(v158, v131);
  sub_20D7DC3E4(v128);
  sub_20D7E3944(v134, &qword_27C83C480, &qword_20D97FE48);
  sub_20D956740(v171, type metadata accessor for UtilityRateInfoDetailsSheet.RatePlanTypeView);
  v135(v163, v133);
  sub_20D7E3944(v162, &qword_27C83C490, &qword_20D97FE58);
  return (v136)(v159, v131);
}

uint64_t sub_20D94ADA4()
{
  v0 = sub_20D972628();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_20D9725C8();
  v8 = *(type metadata accessor for UtilityRateInfoDetailsSheet(0) + 20);
  (*(v1 + 16))(v5, v7, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
  sub_20D974A58();
  return (*(v1 + 8))(v7, v0);
}

uint64_t sub_20D94AEE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D94AF48()
{
  v0 = *(*(type metadata accessor for UtilityRateInfoDetailsSheet(0) - 8) + 80);

  return sub_20D94ADA4();
}

uint64_t sub_20D94AFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - v10;
  sub_20D972618();
  v12 = *(type metadata accessor for UtilityRateInfoDetailsSheet(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
  sub_20D974A48();
  sub_20D972458();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v9, v4);
  v15(v11, v4);
  LODWORD(v16) = *(a3 + *(type metadata accessor for UtilityRateInfoSnapshot() + 40));
  v17 = v16 == 7;
  if (v16 == 7)
  {
    v16 = 0;
  }

  else
  {
    v16 = v16;
  }

  v22[424] = 0;
  v22[416] = 1;
  v22[408] = 1;
  v22[400] = 1;
  v22[392] = 1;
  v22[384] = 1;
  v22[376] = 1;
  v22[368] = 1;
  v22[360] = 1;
  v22[352] = 1;
  v22[344] = 1;
  v22[336] = 1;
  v22[328] = 1;
  v22[320] = 1;
  v22[312] = 1;
  v22[304] = v17;
  v20[0] = v14;
  LOWORD(v20[1]) = 512;
  v20[2] = 0;
  LOBYTE(v20[3]) = 1;
  v20[4] = 0;
  LOBYTE(v20[5]) = 1;
  memset(&v20[6], 0, 24);
  LOBYTE(v20[9]) = 1;
  memset(&v20[10], 0, 24);
  LOBYTE(v20[13]) = 1;
  v20[14] = 0;
  LOWORD(v20[15]) = 513;
  v20[16] = 0;
  LOWORD(v20[17]) = 1;
  memset(&v20[18], 0, 24);
  LOBYTE(v20[21]) = 1;
  v20[22] = 0;
  LOBYTE(v20[23]) = 1;
  v20[24] = 0;
  LOBYTE(v20[25]) = 1;
  v20[26] = 0;
  LOWORD(v20[27]) = 513;
  v20[28] = 0;
  LOWORD(v20[29]) = 513;
  v20[30] = 0;
  LOBYTE(v20[31]) = 1;
  v20[32] = 0;
  LOBYTE(v20[33]) = 1;
  v20[34] = 0;
  LOBYTE(v20[35]) = 1;
  v20[36] = v16;
  LOBYTE(v20[37]) = v17;
  nullsub_5(v20);
  type metadata accessor for HEUIFAnalyticsEvent();
  v18 = swift_allocObject();
  sub_20D7E3AF0(v21);
  *(v18 + 16) = 36;
  memcpy(v22, v21, 0x129uLL);
  memcpy((v18 + 24), v20, 0x129uLL);
  sub_20D7E3944(v22, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v18);
}

uint64_t sub_20D94B290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D94B2F8(uint64_t a1)
{
  v3 = *(type metadata accessor for UtilityRateInfoDetailsSheet(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UtilityRateInfoSnapshot() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_20D94AFB8(a1, v1 + v4, v7);
}

uint64_t sub_20D94B3CC(uint64_t a1)
{
  LODWORD(v1) = *(a1 + *(type metadata accessor for UtilityRateInfoSnapshot() + 40));
  v2 = v1 == 7;
  __dst[424] = 1;
  if (v1 == 7)
  {
    v1 = 0;
  }

  else
  {
    v1 = v1;
  }

  __dst[416] = 1;
  __dst[408] = 1;
  __dst[400] = 1;
  __dst[392] = 1;
  __dst[384] = 1;
  __dst[376] = 1;
  __dst[368] = 1;
  __dst[360] = 1;
  __dst[352] = 1;
  __dst[344] = 1;
  __dst[336] = 1;
  __dst[328] = 1;
  __dst[320] = 1;
  __dst[312] = 1;
  __dst[304] = v2;
  v5[0] = 0;
  LOWORD(v5[1]) = 513;
  v5[2] = 0;
  LOBYTE(v5[3]) = 1;
  v5[4] = 0;
  LOBYTE(v5[5]) = 1;
  memset(&v5[6], 0, 24);
  LOBYTE(v5[9]) = 1;
  memset(&v5[10], 0, 24);
  LOBYTE(v5[13]) = 1;
  v5[14] = 0;
  LOWORD(v5[15]) = 513;
  v5[16] = 0;
  LOWORD(v5[17]) = 1;
  memset(&v5[18], 0, 24);
  LOBYTE(v5[21]) = 1;
  v5[22] = 0;
  LOBYTE(v5[23]) = 1;
  v5[24] = 0;
  LOBYTE(v5[25]) = 1;
  v5[26] = 0;
  LOWORD(v5[27]) = 513;
  v5[28] = 0;
  LOWORD(v5[29]) = 513;
  v5[30] = 0;
  LOBYTE(v5[31]) = 1;
  v5[32] = 0;
  LOBYTE(v5[33]) = 1;
  v5[34] = 0;
  LOBYTE(v5[35]) = 1;
  v5[36] = v1;
  LOBYTE(v5[37]) = v2;
  nullsub_5(v5);
  type metadata accessor for HEUIFAnalyticsEvent();
  v3 = swift_allocObject();
  sub_20D7E3AF0(__src);
  *(v3 + 16) = 35;
  memcpy(__dst, __src, 0x129uLL);
  memcpy((v3 + 24), v5, 0x129uLL);
  sub_20D7E3944(__dst, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v3);
}

uint64_t sub_20D94B568()
{
  v1 = *(type metadata accessor for UtilityRateInfoSnapshot() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_20D94B3CC(v2);
}

uint64_t sub_20D94B5C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_20D972628();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  sub_20D972618();
  v11 = *(type metadata accessor for UtilityRateInfoDetailsSheet(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
  sub_20D974A48();
  sub_20D972458();
  v13 = v12;
  v14 = *(v4 + 8);
  v14(v8, v3);
  v14(v10, v3);
  LODWORD(v15) = *(a2 + *(type metadata accessor for UtilityRateInfoSnapshot() + 40));
  v16 = v15 == 7;
  if (v15 == 7)
  {
    v15 = 0;
  }

  else
  {
    v15 = v15;
  }

  v21[424] = 0;
  v21[416] = 1;
  v21[408] = 1;
  v21[400] = 1;
  v21[392] = 1;
  v21[384] = 1;
  v21[376] = 1;
  v21[368] = 1;
  v21[360] = 1;
  v21[352] = 1;
  v21[344] = 1;
  v21[336] = 1;
  v21[328] = 1;
  v21[320] = 1;
  v21[312] = 1;
  v21[304] = v16;
  v19[0] = v13;
  LOWORD(v19[1]) = 512;
  v19[2] = 0;
  LOBYTE(v19[3]) = 1;
  v19[4] = 0;
  LOBYTE(v19[5]) = 1;
  memset(&v19[6], 0, 24);
  LOBYTE(v19[9]) = 1;
  memset(&v19[10], 0, 24);
  LOBYTE(v19[13]) = 1;
  v19[14] = 0;
  LOWORD(v19[15]) = 513;
  v19[16] = 0;
  LOWORD(v19[17]) = 1;
  memset(&v19[18], 0, 24);
  LOBYTE(v19[21]) = 1;
  v19[22] = 0;
  LOBYTE(v19[23]) = 1;
  v19[24] = 0;
  LOBYTE(v19[25]) = 1;
  v19[26] = 0;
  LOWORD(v19[27]) = 513;
  v19[28] = 0;
  LOWORD(v19[29]) = 513;
  v19[30] = 0;
  LOBYTE(v19[31]) = 1;
  v19[32] = 0;
  LOBYTE(v19[33]) = 1;
  v19[34] = 0;
  LOBYTE(v19[35]) = 1;
  v19[36] = v15;
  LOBYTE(v19[37]) = v16;
  nullsub_5(v19);
  type metadata accessor for HEUIFAnalyticsEvent();
  v17 = swift_allocObject();
  sub_20D7E3AF0(v20);
  *(v17 + 16) = 36;
  memcpy(v21, v20, 0x129uLL);
  memcpy((v17 + 24), v19, 0x129uLL);
  sub_20D7E3944(v21, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v17);
}

uint64_t objectdestroy_2Tm()
{
  v1 = (type metadata accessor for UtilityRateInfoDetailsSheet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for UtilityRateInfoSnapshot() - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*v5 + 64);
  v9 = v2 | v6;
  v10 = *(v0 + v3);

  v11 = v0 + v3 + v1[7];
  v12 = sub_20D972628();
  v13 = *(*(v12 - 8) + 8);
  v13(v11, v12);
  v14 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0) + 28));

  v15 = *(v0 + v7 + 8);

  v13(v0 + v7 + v5[7], v12);
  v13(v0 + v7 + v5[8], v12);
  v13(v0 + v7 + v5[9], v12);
  v16 = *(v0 + v7 + v5[10] + 8);

  v17 = v5[11];
  v18 = sub_20D972838();
  (*(*(v18 - 8) + 8))(v0 + v7 + v17, v18);
  v19 = *(v0 + v7 + v5[14]);

  v20 = *(v0 + v7 + v5[15]);

  v21 = *(v0 + v7 + v5[16]);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_20D94BAE4()
{
  v1 = *(type metadata accessor for UtilityRateInfoDetailsSheet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UtilityRateInfoSnapshot() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_20D94B5C8(v0 + v2, v5);
}

uint64_t sub_20D94BBCC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C2D8, &qword_20D97FC90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v31 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C2E0, &qword_20D97FC98);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = *(type metadata accessor for UtilityRateInfoSnapshot() + 40);
  v13 = *(v1 + v12);
  if (v13 == 7)
  {
LABEL_2:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C2E8, &qword_20D97FCA0);
    v15 = *(*(v14 - 8) + 56);

    return v15(a1, 1, 1, v14);
  }

  if ((sub_20D96659C(*(v1 + v12), 1u) & 1) == 0)
  {
    if (sub_20D96659C(v13, 2u))
    {
      v25 = sub_20D974148();
      *v6 = 0x4045000000000000;
      v6[1] = v25;
      v6[2] = sub_20D7EDA0C;
      v6[3] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C2F0, &qword_20D97FCA8);
      sub_20D956314(&qword_27C83C2F8, &qword_27C83C2E0, &qword_20D97FC98, sub_20D9500FC);
      sub_20D950338();
      sub_20D9741B8();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C2E8, &qword_20D97FCA0);
      return (*(*(v26 - 8) + 56))(a1, 0, 1, v26);
    }

    goto LABEL_2;
  }

  v35 = UtilityRateInfoSnapshot.currentDayPeaks.getter();

  sub_20D953308(&v35);
  v34 = a1;

  v17 = v35;
  v18 = *(v35 + 2);
  if (v18)
  {
    v19 = *(v35 + 4);
    v20 = *(v35 + 5);
    v32 = *(v35 + 6);
    v33 = v19;
    v21 = &v35[24 * v18 + 32];
    v23 = *(v21 - 3);
    v22 = *(v21 - 2);
    v24 = *(v21 - 1);
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v24 = 0;
    v32 = 0;
    v33 = 0;
    v20 = 0;
  }

  v35 = v17;
  v27 = swift_allocObject();
  v28 = v32;
  v27[2] = v33;
  v27[3] = v20;
  v27[4] = v28;
  v27[5] = v23;
  v27[6] = v22;
  v27[7] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C348, &qword_20D97FCC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C308, &qword_20D97FCB0);
  sub_20D7EBC4C(&qword_27C83C350, &qword_27C83C348, &qword_20D97FCC8);
  sub_20D9500FC();
  sub_20D953264();
  sub_20D974BA8();
  (*(v8 + 16))(v6, v11, v7);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C2F0, &qword_20D97FCA8);
  sub_20D956314(&qword_27C83C2F8, &qword_27C83C2E0, &qword_20D97FC98, sub_20D9500FC);
  sub_20D950338();
  v29 = v34;
  sub_20D9741B8();
  (*(v8 + 8))(v11, v7);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C2E8, &qword_20D97FCA0);
  return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
}

uint64_t sub_20D94C0E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v61 = a5;
  v62 = a7;
  v58 = a6;
  v55[1] = a4;
  v56 = a2;
  v63 = a8;
  v10 = type metadata accessor for AboutPeakType(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C328, &qword_20D97FCC0);
  v15 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v17 = v55 - v16;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C318, &qword_20D97FCB8);
  v18 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v20 = v55 - v19;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C308, &qword_20D97FCB0);
  v21 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v23 = v55 - v22;
  v24 = *a1;
  v25 = a1[1];
  v26 = a1[2];
  *(v14 + *(v11 + 32)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  v64 = v26;
  v65 = v24;
  *v14 = v24;
  v14[1] = v25;
  v14[2] = v26;
  v14[3] = 0x4045000000000000;

  v27 = sub_20D974328();
  if (!v25)
  {
    if (!a3)
    {

      v28 = v58;
      goto LABEL_9;
    }

LABEL_8:
    v28 = v58;

    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_8;
  }

  v28 = v58;
  if (v65 == v56)
  {
    swift_bridgeObjectRetain_n();

    sub_20D96B6FC(v25, a3);

    swift_bridgeObjectRelease_n();
  }

LABEL_9:
  sub_20D973AD8();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_20D94B290(v14, v17, type metadata accessor for AboutPeakType);
  v37 = &v17[*(v57 + 36)];
  *v37 = v27;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = sub_20D974338();
  if (!v25)
  {
    v40 = v61;
    v39 = v62;
    if (!v28)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v40 = v61;
  v39 = v62;
  if (!v28)
  {
LABEL_15:

    goto LABEL_16;
  }

  if (v65 != v61)
  {
LABEL_16:

    goto LABEL_17;
  }

  swift_bridgeObjectRetain_n();

  sub_20D96B6FC(v25, v28);

  swift_bridgeObjectRelease_n();
LABEL_17:
  sub_20D973AD8();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_20D7EAF18(v17, v20, &qword_27C83C328, &qword_20D97FCC0);
  v49 = &v20[*(v59 + 36)];
  *v49 = v38;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  v50 = sub_20D974148();
  v51 = swift_allocObject();
  v52 = v64;
  v51[2] = v65;
  v51[3] = v25;
  v51[4] = v52;
  v51[5] = v40;
  v51[6] = v28;
  v51[7] = v39;
  sub_20D7EAF18(v20, v23, &qword_27C83C318, &qword_20D97FCB8);
  v53 = &v23[*(v60 + 36)];
  *v53 = v50;
  v53[1] = sub_20D9532F8;
  v53[2] = v51;
  sub_20D7EAF18(v23, v63, &qword_27C83C308, &qword_20D97FCB0);
}

double sub_20D94C58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a3)
  {
    if (!a6)
    {

      return 0.0;
    }

LABEL_8:

LABEL_9:
    v12 = sub_20D974148();
    MEMORY[0x20F321ED0](v12);
    return result;
  }

  if (!a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    goto LABEL_9;
  }

  swift_bridgeObjectRetain_n();

  v11 = sub_20D96B6FC(a3, a6);
  swift_bridgeObjectRelease_n();

  if ((v11 & 1) == 0 || a4 != a7)
  {
    goto LABEL_9;
  }

  return 0.0;
}

void sub_20D94C68C()
{
  type metadata accessor for UtilityRateInfoSnapshotManager();
  if (v0 <= 0x3F)
  {
    sub_20D94CBC8(319, &qword_27C83A860, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_20D94C750()
{
  result = qword_27C83C270;
  if (!qword_27C83C270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C258, &qword_20D97F9D8);
    sub_20D94C7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C270);
  }

  return result;
}

unint64_t sub_20D94C7DC()
{
  result = qword_27C83C278;
  if (!qword_27C83C278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C250, &qword_20D97F9D0);
    sub_20D7EBC4C(&qword_27C83C280, &qword_27C83C248, &qword_20D97F9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C278);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_22Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityRateInfoSnapshot();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_23Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityRateInfoSnapshot();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20D94CA00()
{
  result = type metadata accessor for UtilityRateInfoSnapshot();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20D94CAC4()
{
  type metadata accessor for UtilityRateInfoSnapshot();
  if (v0 <= 0x3F)
  {
    sub_20D94CBC8(319, &qword_281127050, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_20D94CBC8(319, &qword_27C83C2B8, MEMORY[0x277CDF110], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20D94CBC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20D94CC74()
{
  sub_20D94CBC8(319, &qword_281127050, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UtilityRateInfoSnapshot();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20D94CD5C@<X0>(__int16 *a1@<X8>)
{
  result = type metadata accessor for UtilityRateInfoSnapshot();
  v4 = *(v1 + *(result + 40));
  if ((v4 - 1) >= 5)
  {
    if (v4 == 7)
    {
      v8 = -256;
      goto LABEL_7;
    }

    sub_20D9500A8();
    result = sub_20D9741B8();
    v5 = v12;
    v6 = v13;
  }

  else
  {
    v9 = *(v1 + *(result + 40));
    sub_20D9500A8();
    result = sub_20D9741B8();
    v5 = v10;
    v6 = v11;
  }

  if (v6)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | v5;
LABEL_7:
  *a1 = v8;
  return result;
}

uint64_t sub_20D94CE40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20D974048();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_20D7EB7E8(v2, &v17 - v11, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20D973D58();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_20D975468();
    v16 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_20D94D044@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C3F8, &qword_20D97FD60);
  v3 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v5 = &v42 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C400, &qword_20D97FD68);
  v6 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v47 = &v42 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C408, &qword_20D97FD70);
  v8 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v44 = &v42 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C410, &qword_20D97FD78);
  v10 = *(*(v43 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v43);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C418, &qword_20D97FD80);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = sub_20D973D58();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D94CE40(v27);
  v28 = sub_20D973D38();
  (*(v24 + 8))(v27, v23);
  if (v28)
  {
    sub_20D94D640(v22);
    *v15 = sub_20D974168();
    *(v15 + 1) = 0;
    v15[16] = 1;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C438, &qword_20D97FD90);
    sub_20D94DED8(v2, &v15[*(v29 + 44)]);
    v30 = sub_20D974958();
    KeyPath = swift_getKeyPath();
    v32 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C440, &qword_20D97FDC8) + 36)];
    *v32 = KeyPath;
    v32[1] = v30;
    v33 = sub_20D974368();
    v34 = &v15[*(v43 + 36)];
    *v34 = v33;
    *(v34 + 8) = 0u;
    *(v34 + 24) = 0u;
    v34[40] = 1;
    v35 = &qword_20D97FD80;
    sub_20D7EB7E8(v22, v20, &qword_27C83C418, &qword_20D97FD80);
    sub_20D7EB7E8(v15, v13, &qword_27C83C410, &qword_20D97FD78);
    v36 = v44;
    sub_20D7EB7E8(v20, v44, &qword_27C83C418, &qword_20D97FD80);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C448, &unk_20D97FDD0);
    sub_20D7EB7E8(v13, v36 + *(v37 + 48), &qword_27C83C410, &qword_20D97FD78);
    sub_20D7E3944(v13, &qword_27C83C410, &qword_20D97FD78);
    sub_20D7E3944(v20, &qword_27C83C418, &qword_20D97FD80);
    sub_20D7EB7E8(v36, v47, &qword_27C83C408, &qword_20D97FD70);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_27C83C428, &qword_27C83C408, &qword_20D97FD70);
    sub_20D7EBC4C(&qword_27C83C430, &qword_27C83C3F8, &qword_20D97FD60);
    sub_20D9741B8();
    sub_20D7E3944(v36, &qword_27C83C408, &qword_20D97FD70);
    sub_20D7E3944(v15, &qword_27C83C410, &qword_20D97FD78);
    v38 = v22;
    v39 = &qword_27C83C418;
  }

  else
  {
    *v5 = sub_20D974088();
    *(v5 + 1) = 0x402C000000000000;
    v5[16] = 0;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C420, &qword_20D97FD88);
    sub_20D94D950(v2, &v5[*(v40 + 44)]);
    v35 = &qword_20D97FD60;
    sub_20D7EB7E8(v5, v47, &qword_27C83C3F8, &qword_20D97FD60);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_27C83C428, &qword_27C83C408, &qword_20D97FD70);
    sub_20D7EBC4C(&qword_27C83C430, &qword_27C83C3F8, &qword_20D97FD60);
    sub_20D9741B8();
    v38 = v5;
    v39 = &qword_27C83C3F8;
  }

  return sub_20D7E3944(v38, v39, v35);
}

uint64_t sub_20D94D640@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26[1] = a1;
  v3 = type metadata accessor for RatePlanTitle(0);
  v4 = v3 - 8;
  v26[0] = *(v3 - 8);
  v5 = *(v26[0] + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA30, &unk_20D97E930);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v26 - v15;
  v17 = (v2 + *(v4 + 32));
  v18 = *v17;
  v19 = v17[1];
  sub_20D9721B8();
  sub_20D7EB7E8(v16, v14, &qword_27C838B78, &qword_20D97A5A0);
  sub_20D94AEE0(v2, v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RatePlanTitle);
  v20 = (*(v26[0] + 80) + 16) & ~*(v26[0] + 80);
  v21 = swift_allocObject();
  sub_20D94B290(v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for RatePlanTitle);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA38, &qword_20D97E940);
  sub_20D949328();
  sub_20D973AA8();
  v22 = *(v2 + *(v4 + 36));
  sub_20D974C48();
  sub_20D973C18();
  v23 = &v9[*(v6 + 36)];
  v24 = v28;
  *v23 = v27;
  *(v23 + 1) = v24;
  *(v23 + 2) = v29;
  sub_20D956688();
  sub_20D9747D8();
  sub_20D7E3944(v9, &qword_27C83BA30, &unk_20D97E930);
  return sub_20D7E3944(v16, &qword_27C838B78, &qword_20D97A5A0);
}

uint64_t sub_20D94D950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C410, &qword_20D97FD78);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C418, &qword_20D97FD80);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  sub_20D94D640(&v27 - v16);
  *v10 = sub_20D974168();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C438, &qword_20D97FD90);
  sub_20D94DED8(a1, &v10[*(v18 + 44)]);
  v19 = sub_20D974958();
  KeyPath = swift_getKeyPath();
  v21 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C440, &qword_20D97FDC8) + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  v22 = sub_20D974368();
  v23 = &v10[*(v4 + 44)];
  *v23 = v22;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  v23[40] = 1;
  sub_20D7EB7E8(v17, v15, &qword_27C83C418, &qword_20D97FD80);
  sub_20D7EB7E8(v10, v8, &qword_27C83C410, &qword_20D97FD78);
  v24 = v28;
  sub_20D7EB7E8(v15, v28, &qword_27C83C418, &qword_20D97FD80);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C448, &unk_20D97FDD0);
  sub_20D7EB7E8(v8, v24 + *(v25 + 48), &qword_27C83C410, &qword_20D97FD78);
  sub_20D7E3944(v10, &qword_27C83C410, &qword_20D97FD78);
  sub_20D7E3944(v17, &qword_27C83C418, &qword_20D97FD80);
  sub_20D7E3944(v8, &qword_27C83C410, &qword_20D97FD78);
  return sub_20D7E3944(v15, &qword_27C83C418, &qword_20D97FD80);
}

uint64_t sub_20D94DBD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_20D9749C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA50, &qword_20D97E948);
  v22 = *(v9 - 8);
  v10 = *(v22 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  if (sub_20D973D28())
  {
    (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
    v13 = sub_20D974A08();

    (*(v5 + 8))(v8, v4);
    v14 = *(a1 + *(type metadata accessor for RatePlanTitle(0) + 28)) * 0.225;
    v15 = &v12[*(v9 + 36)];
    v16 = *(sub_20D973DE8() + 20);
    v17 = *MEMORY[0x277CE0118];
    v18 = sub_20D974118();
    (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
    *v15 = v14;
    v15[1] = v14;
    *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C98, &unk_20D977550) + 36)) = 256;
    *v12 = v13;
    *(v12 + 1) = 0;
    *(v12 + 8) = 1;
    sub_20D7EAF18(v12, a2, &qword_27C83BA50, &qword_20D97E948);
    return (*(v22 + 56))(a2, 0, 1, v9);
  }

  else
  {
    v20 = *(v22 + 56);

    return v20(a2, 1, 1, v9);
  }
}

uint64_t sub_20D94DED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a1;
  v88 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v89 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v87 = &v74 - v6;
  v7 = sub_20D974458();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20D9726E8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_20D975058();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3A0, &unk_20D97D7E0);
  v16 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v83 = &v74 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C450, &unk_20D97FDE0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v86 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v90 = &v74 - v22;
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v23 = qword_28112ABE8;
  sub_20D9726B8();
  v91 = sub_20D975108();
  v92 = v24;
  v82 = sub_20D7E1EF8();
  v25 = sub_20D9745C8();
  v27 = v26;
  v29 = v28;
  sub_20D974488();
  v79 = *MEMORY[0x277CE0A10];
  v30 = v8[13];
  v80 = v8 + 13;
  v81 = v30;
  v75 = v11;
  v30(v11);
  sub_20D974478();
  v76 = v7;

  v31 = v8[1];
  v77 = v8 + 1;
  v78 = v31;
  v31(v11, v7);
  v32 = sub_20D974558();
  v34 = v33;
  v36 = v35;

  sub_20D7EADC0(v25, v27, v29 & 1);

  sub_20D9743F8();
  v37 = sub_20D9744F8();
  v39 = v38;
  v41 = v40;
  v74 = v42;
  sub_20D7EADC0(v32, v34, v36 & 1);

  v43 = v83;
  v44 = &v83[*(v84 + 36)];
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A108, &unk_20D97B230) + 28);
  v46 = *MEMORY[0x277CE0B48];
  v47 = sub_20D974538();
  v48 = *(v47 - 8);
  (*(v48 + 104))(v44 + v45, v46, v47);
  (*(v48 + 56))(v44 + v45, 0, 1, v47);
  *v44 = swift_getKeyPath();
  *v43 = v37;
  *(v43 + 8) = v39;
  *(v43 + 16) = v41 & 1;
  *(v43 + 24) = v74;
  sub_20D919DD8();
  sub_20D9747D8();
  sub_20D7E3944(v43, &qword_27C83B3A0, &unk_20D97D7E0);
  v49 = v85 + *(type metadata accessor for RatePlanTitle(0) + 20);
  v91 = UtilityRateInfoSnapshot.ratePlanTitle.getter();
  v92 = v50;
  v51 = sub_20D9745C8();
  v53 = v52;
  LOBYTE(v47) = v54;
  sub_20D974428();
  v55 = v75;
  v56 = v76;
  v81(v75, v79, v76);
  sub_20D974478();

  v78(v55, v56);
  v57 = sub_20D974558();
  v59 = v58;
  LOBYTE(v55) = v60;

  sub_20D7EADC0(v51, v53, v47 & 1);

  v61 = sub_20D974548();
  v63 = v62;
  LOBYTE(v53) = v64;
  v66 = v65;
  sub_20D7EADC0(v57, v59, v55 & 1);

  v91 = v61;
  v92 = v63;
  v93 = v53 & 1;
  v94 = v66;
  v67 = v87;
  sub_20D9747D8();
  sub_20D7EADC0(v61, v63, v53 & 1);

  v68 = v90;
  v69 = v86;
  sub_20D7EB7E8(v90, v86, &qword_27C83C450, &unk_20D97FDE0);
  v70 = v89;
  sub_20D7EB7E8(v67, v89, &qword_27C838F18, &unk_20D977860);
  v71 = v88;
  sub_20D7EB7E8(v69, v88, &qword_27C83C450, &unk_20D97FDE0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C458, &qword_20D97FE20);
  sub_20D7EB7E8(v70, v71 + *(v72 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v67, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v68, &qword_27C83C450, &unk_20D97FDE0);
  sub_20D7E3944(v70, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v69, &qword_27C83C450, &unk_20D97FDE0);
}

uint64_t sub_20D94E6E4@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v1 = sub_20D974458();
  v78 = *(v1 - 8);
  v79 = v1;
  v2 = *(v78 + 64);
  MEMORY[0x28223BE20](v1);
  v77 = v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v82 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = v75 - v8;
  v9 = sub_20D9726E8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D975058();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839050, &qword_20D977A90);
  v15 = *(*(v76 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v76);
  v80 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v84 = v75 - v18;
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v19 = qword_28112ABE8;
  v20 = qword_28112ABE8;
  v75[2] = v19;
  v21 = v20;
  sub_20D9726B8();
  v22 = v21;
  v85 = sub_20D975108();
  v86 = v23;
  v75[1] = sub_20D7E1EF8();
  v24 = sub_20D9745C8();
  v26 = v25;
  v28 = v27;
  v75[0] = v12;
  sub_20D974428();
  v29 = sub_20D974558();
  v31 = v30;
  LOBYTE(v19) = v32;

  sub_20D7EADC0(v24, v26, v28 & 1);

  v33 = sub_20D974548();
  v35 = v34;
  LOBYTE(v26) = v36;
  sub_20D7EADC0(v29, v31, v19 & 1);

  sub_20D974958();
  v37 = sub_20D974508();
  v39 = v38;
  v41 = v40;
  v43 = v42;

  sub_20D7EADC0(v33, v35, v26 & 1);

  v85 = v37;
  v86 = v39;
  v87 = v41 & 1;
  v88 = v43;
  v44 = v84;
  sub_20D9747D8();
  sub_20D7EADC0(v37, v39, v41 & 1);

  LOBYTE(v33) = sub_20D974338();
  sub_20D973AD8();
  v45 = v44 + *(v76 + 36);
  *v45 = v33;
  *(v45 + 8) = v46;
  *(v45 + 16) = v47;
  *(v45 + 24) = v48;
  *(v45 + 32) = v49;
  *(v45 + 40) = 0;
  sub_20D974FE8();
  sub_20D9726B8();
  v85 = sub_20D975108();
  v86 = v50;
  v51 = sub_20D9745C8();
  v53 = v52;
  LOBYTE(v26) = v54;
  sub_20D974398();
  v56 = v77;
  v55 = v78;
  v57 = v79;
  (*(v78 + 104))(v77, *MEMORY[0x277CE0A08], v79);
  sub_20D974478();

  (*(v55 + 8))(v56, v57);
  v58 = sub_20D974558();
  v60 = v59;
  LOBYTE(v55) = v61;

  sub_20D7EADC0(v51, v53, v26 & 1);

  sub_20D974968();
  v62 = sub_20D974508();
  v64 = v63;
  LOBYTE(v51) = v65;
  v67 = v66;

  sub_20D7EADC0(v58, v60, v55 & 1);

  v85 = v62;
  v86 = v64;
  v87 = v51 & 1;
  v88 = v67;
  v68 = v81;
  sub_20D9747D8();
  sub_20D7EADC0(v62, v64, v51 & 1);

  v69 = v84;
  v70 = v80;
  sub_20D7EB7E8(v84, v80, &qword_27C839050, &qword_20D977A90);
  v71 = v82;
  sub_20D7EB7E8(v68, v82, &qword_27C838F18, &unk_20D977860);
  v72 = v83;
  sub_20D7EB7E8(v70, v83, &qword_27C839050, &qword_20D977A90);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C370, &qword_20D97FD10);
  sub_20D7EB7E8(v71, v72 + *(v73 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v68, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v69, &qword_27C839050, &qword_20D977A90);
  sub_20D7E3944(v71, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v70, &qword_27C839050, &qword_20D977A90);
}

uint64_t sub_20D94EE0C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_20D974168();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C360, &qword_20D97FD00);
  sub_20D94E6E4(a1 + *(v2 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C368, &qword_20D97FD08);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_20D94EE7C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v70 = a1;
  v76 = a2;
  v72 = sub_20D974458();
  v71 = *(v72 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v5 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v75 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D10, &qword_20D9775A8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v73 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69[0] = v69 - v15;
  LOBYTE(v77) = v2;
  *&v83[0] = sub_20D96A608();
  *(&v83[0] + 1) = v16;
  v69[1] = sub_20D7E1EF8();
  v17 = sub_20D9745C8();
  v19 = v18;
  v21 = v20;
  sub_20D974428();
  v22 = sub_20D974558();
  v24 = v23;
  v26 = v25;

  sub_20D7EADC0(v17, v19, v21 & 1);

  v27 = sub_20D974548();
  v29 = v28;
  v31 = v30;
  sub_20D7EADC0(v22, v24, v26 & 1);

  sub_20D974958();
  v32 = sub_20D974508();
  v34 = v33;
  LOBYTE(v22) = v35;
  v37 = v36;

  sub_20D7EADC0(v27, v29, v31 & 1);

  LOBYTE(v24) = sub_20D974338();
  sub_20D973AD8();
  v82 = v22 & 1;
  v81 = 0;
  *&v77 = v32;
  *(&v77 + 1) = v34;
  LOBYTE(v78) = v22 & 1;
  *(&v78 + 1) = v37;
  LOBYTE(v79) = v24;
  *(&v79 + 1) = v38;
  *v80 = v39;
  *&v80[8] = v40;
  *&v80[16] = v41;
  v80[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D18, &qword_20D9775B0);
  sub_20D7F021C();
  v42 = v69[0];
  sub_20D9747D8();
  v83[2] = v79;
  *v84 = *v80;
  *&v84[9] = *&v80[9];
  v83[0] = v77;
  v83[1] = v78;
  sub_20D7E3944(v83, &qword_27C838D18, &qword_20D9775B0);
  v82 = v70;
  *&v77 = sub_20D96A8E8();
  *(&v77 + 1) = v43;
  v44 = sub_20D9745C8();
  v46 = v45;
  v48 = v47;
  sub_20D974398();
  v49 = v71;
  v50 = v72;
  (*(v71 + 104))(v5, *MEMORY[0x277CE0A08], v72);
  sub_20D974478();

  (*(v49 + 8))(v5, v50);
  v51 = sub_20D974558();
  v53 = v52;
  LOBYTE(v50) = v54;

  sub_20D7EADC0(v44, v46, v48 & 1);

  sub_20D974968();
  v55 = sub_20D974508();
  v57 = v56;
  LOBYTE(v27) = v58;
  v60 = v59;

  sub_20D7EADC0(v51, v53, v50 & 1);

  *&v77 = v55;
  *(&v77 + 1) = v57;
  LOBYTE(v78) = v27 & 1;
  *(&v78 + 1) = v60;
  v61 = v74;
  sub_20D9747D8();
  sub_20D7EADC0(v55, v57, v27 & 1);

  v62 = v73;
  sub_20D7EB7E8(v42, v73, &qword_27C838D10, &qword_20D9775A8);
  v63 = v61;
  v64 = v61;
  v65 = v75;
  sub_20D7EB7E8(v63, v75, &qword_27C838F18, &unk_20D977860);
  v66 = v76;
  sub_20D7EB7E8(v62, v76, &qword_27C838D10, &qword_20D9775A8);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C588, &qword_20D9800D8);
  sub_20D7EB7E8(v65, v66 + *(v67 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v64, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v42, &qword_27C838D10, &qword_20D9775A8);
  sub_20D7E3944(v65, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v62, &qword_27C838D10, &qword_20D9775A8);
}

uint64_t sub_20D94F508@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_20D974168();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C578, &qword_20D9800C8);
  sub_20D94EE7C(v3, a1 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C580, &qword_20D9800D0);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_20D94F580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20D974218();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_20D973D58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C390, &qword_20D97FD28);
  v24 = *(v11 - 8);
  v12 = *(v24 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - v13;
  v15 = *(a1 + *(type metadata accessor for UtilityRateInfoSnapshot() + 40));
  if (v15 == 7 || (sub_20D96659C(v15, 1u) & 1) == 0)
  {
    v22 = *(v24 + 56);

    return v22(a2, 1, 1, v11);
  }

  else
  {
    sub_20D9515B4(type metadata accessor for UtilityPeaksGrid, v10);
    v16 = sub_20D973D38();
    (*(v7 + 8))(v10, v6);
    v17 = type metadata accessor for UtilityPeaksGrid(0);
    v18 = 28;
    if (v16)
    {
      v18 = 32;
    }

    v19 = *(a1 + *(v17 + v18));

    v23[1] = v23;
    MEMORY[0x28223BE20](v20);
    sub_20D974158();
    v25 = 0;
    sub_20D9502D0(&qword_27C83C398, MEMORY[0x277CE0428]);
    sub_20D9758B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C3A0, &qword_20D97FD30);
    sub_20D956314(&qword_27C83C3A8, &qword_27C83C3A0, &qword_20D97FD30, sub_20D956390);
    sub_20D974C88();
    (*(v24 + 32))(a2, v14, v11);
    return (*(v24 + 56))(a2, 0, 1, v11);
  }
}

uint64_t sub_20D94F948(uint64_t a1)
{
  v2 = type metadata accessor for UtilityPeaksGrid(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v9 = UtilityRateInfoSnapshot.currentDayPeaks.getter();

  sub_20D953308(&v9);

  sub_20D94AEE0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UtilityPeaksGrid);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_20D94B290(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for UtilityPeaksGrid);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C348, &qword_20D97FCC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C3B8, &qword_20D97FD38);
  sub_20D7EBC4C(&qword_27C83C350, &qword_27C83C348, &qword_20D97FCC8);
  sub_20D956390();
  sub_20D953264();
  return sub_20D974BA8();
}

uint64_t sub_20D94FB58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20D971D98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = *(a2 + 8);
  v23 = *(a1 + 8);

  sub_20D953374(&v23);
  if (!v2)
  {
    if (*(v23 + 2))
    {
      v22 = v11;
      v15 = *(v7 + 16);
      v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v15(v13, &v23[v16], v6);

      v23 = v14;

      sub_20D953374(&v23);
      v3 = v23;
      if (*(v23 + 2))
      {
        v17 = v22;
        v15(v22, &v23[v16], v6);

        v18 = MEMORY[0x20F31FEF0](v13, v17);
        v19 = *(v7 + 8);
        v19(v17, v6);
        v19(v13, v6);
        return v18 & 1;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20D94FD60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  sub_20D94AEE0(a2, a3, type metadata accessor for UtilityRateInfoSnapshot);
  v8 = *(v3 + *(type metadata accessor for UtilityPeaksGrid(0) + 20));
  v9 = type metadata accessor for UtilityPeakSquare(0);
  v10 = (a3 + *(v9 + 20));
  *v10 = v6;
  v10[1] = v5;
  v10[2] = v7;
  *(a3 + *(v9 + 24)) = v8;

  LOBYTE(v3) = sub_20D974318();
  v11 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C3D8, &qword_20D97FD48) + 36);
  *v11 = v3;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 1;
  v12 = sub_20D974C48();
  v14 = v13;
  v15 = [objc_opt_self() tertiarySystemFillColor];
  v16 = sub_20D974888();
  v17 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C3C8, &qword_20D97FD40) + 36);
  *v17 = v16;
  *(v17 + 8) = 256;
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  v18 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C3B8, &qword_20D97FD38) + 36));
  v19 = *(sub_20D973DE8() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_20D974118();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #24.0 }

  *v18 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C98, &unk_20D977550);
  *&v18[*(result + 36)] = 256;
  return result;
}

uint64_t sub_20D94FF2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C378, &qword_20D97FD18);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  *v4 = sub_20D974088();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C380, &qword_20D97FD20);
  sub_20D94F580(v0, &v4[*(v5 + 44)]);
  sub_20D7EBC4C(&qword_27C83C388, &qword_27C83C378, &qword_20D97FD18);
  sub_20D9747D8();
  return sub_20D7E3944(v4, &qword_27C83C378, &qword_20D97FD18);
}

unint64_t sub_20D9500A8()
{
  result = qword_27C83C2D0;
  if (!qword_27C83C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C2D0);
  }

  return result;
}

unint64_t sub_20D9500FC()
{
  result = qword_27C83C300;
  if (!qword_27C83C300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C308, &qword_20D97FCB0);
    sub_20D950188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C300);
  }

  return result;
}

unint64_t sub_20D950188()
{
  result = qword_27C83C310;
  if (!qword_27C83C310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C318, &qword_20D97FCB8);
    sub_20D950214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C310);
  }

  return result;
}

unint64_t sub_20D950214()
{
  result = qword_27C83C320;
  if (!qword_27C83C320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C328, &qword_20D97FCC0);
    sub_20D9502D0(&qword_27C83C330, type metadata accessor for AboutPeakType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C320);
  }

  return result;
}

uint64_t sub_20D9502D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20D950338()
{
  result = qword_27C83C338;
  if (!qword_27C83C338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C2F0, &qword_20D97FCA8);
    sub_20D9503C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C338);
  }

  return result;
}

unint64_t sub_20D9503C4()
{
  result = qword_27C83C340;
  if (!qword_27C83C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C340);
  }

  return result;
}

__n128 sub_20D950418@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C688, &qword_20D9801D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v12 - v5;
  *v6 = sub_20D974168();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C690, &qword_20D9801D8);
  sub_20D950574(v1, &v6[*(v7 + 44)]);
  sub_20D974C58();
  sub_20D973E08();
  sub_20D7EAF18(v6, a1, &qword_27C83C688, &qword_20D9801D0);
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C698, &qword_20D9801E0) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_20D950574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v80 = a2;
  v3 = type metadata accessor for UtilityPeakSquare(0);
  v4 = v3 - 8;
  v73 = *(v3 - 8);
  v72 = *(v73 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C6A0, &qword_20D9801E8);
  v7 = *(v6 - 8);
  v78 = v6;
  v79 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v76 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C6A8, &unk_20D9801F0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v77 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v75 = &v66 - v14;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3A0, &unk_20D97D7E0);
  v15 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v17 = &v66 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C450, &unk_20D97FDE0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v74 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v68 = &v66 - v22;
  v69 = (a1 + *(v4 + 28));
  v23 = v69[2];
  v81 = *v69;
  LOBYTE(v82) = 0;
  v83 = 0;
  v84 = 0;
  v85 = v23;
  v24 = PeakPeriodAttributes.peakName.getter();
  v26 = v25;

  v81 = v24;
  v82 = v26;
  sub_20D7E1EF8();
  v27 = sub_20D9745C8();
  v29 = v28;
  v31 = v30;
  sub_20D974488();
  v32 = sub_20D974558();
  v34 = v33;
  v36 = v35;

  sub_20D7EADC0(v27, v29, v31 & 1);

  sub_20D9743F8();
  v37 = sub_20D9744F8();
  v39 = v38;
  LOBYTE(v29) = v40;
  sub_20D7EADC0(v32, v34, v36 & 1);

  sub_20D974968();
  v41 = sub_20D974508();
  v43 = v42;
  v45 = v44;
  v66 = v46;

  sub_20D7EADC0(v37, v39, v29 & 1);

  v47 = &v17[*(v67 + 36)];
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A108, &unk_20D97B230) + 28);
  v49 = *MEMORY[0x277CE0B48];
  v50 = sub_20D974538();
  v51 = *(v50 - 8);
  (*(v51 + 104))(v47 + v48, v49, v50);
  (*(v51 + 56))(v47 + v48, 0, 1, v50);
  *v47 = swift_getKeyPath();
  *v17 = v41;
  *(v17 + 1) = v43;
  v17[16] = v45 & 1;
  *(v17 + 3) = v66;
  sub_20D919DD8();
  v52 = v68;
  sub_20D9747D8();
  sub_20D7E3944(v17, &qword_27C83B3A0, &unk_20D97D7E0);
  v81 = v69[1];
  swift_getKeyPath();
  v53 = v71;
  sub_20D94AEE0(v70, v71, type metadata accessor for UtilityPeakSquare);
  v54 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v55 = swift_allocObject();
  sub_20D94B290(v53, v55 + v54, type metadata accessor for UtilityPeakSquare);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C6B0, &qword_20D980218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C6B8, &qword_20D980220);
  sub_20D7EBC4C(&qword_27C83C6C0, &qword_27C83C6B0, &qword_20D980218);
  sub_20D9502D0(&unk_27C83CA60, MEMORY[0x277CC88A8]);
  sub_20D7EBC4C(&qword_27C83C6C8, &qword_27C83C6B8, &qword_20D980220);
  v56 = v76;
  sub_20D974B98();
  sub_20D957568();
  v57 = v75;
  v58 = v78;
  sub_20D9747D8();
  (*(v79 + 8))(v56, v58);
  v59 = v74;
  sub_20D7EB7E8(v52, v74, &qword_27C83C450, &unk_20D97FDE0);
  v60 = v57;
  v61 = v77;
  sub_20D7EB7E8(v57, v77, &qword_27C83C6A8, &unk_20D9801F0);
  v62 = v80;
  sub_20D7EB7E8(v59, v80, &qword_27C83C450, &unk_20D97FDE0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C6D8, &qword_20D980228);
  sub_20D7EB7E8(v61, v62 + *(v63 + 48), &qword_27C83C6A8, &unk_20D9801F0);
  v64 = v62 + *(v63 + 64);
  *v64 = 0;
  *(v64 + 8) = 1;
  sub_20D7E3944(v60, &qword_27C83C6A8, &unk_20D9801F0);
  sub_20D7E3944(v52, &qword_27C83C450, &unk_20D97FDE0);
  sub_20D7E3944(v61, &qword_27C83C6A8, &unk_20D9801F0);
  return sub_20D7E3944(v59, &qword_27C83C450, &unk_20D97FDE0);
}

uint64_t sub_20D950D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v90 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C6E0, &qword_20D980230);
  v86 = *(v5 - 8);
  v87 = v5;
  v6 = *(v86 + 64);
  MEMORY[0x28223BE20](v5);
  v80 = &v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C6E8, &qword_20D980238);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v89 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v88 = &v80 - v12;
  v13 = sub_20D9740E8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_20D972628();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v80 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v80 - v24;
  sub_20D971D78();
  v82 = UtilityRateInfoSnapshot.dateToFormattedString(date:)(v25);
  v83 = v26;
  v81 = v16;
  v27 = v16[1];
  (v27)(v25, v15);
  v84 = type metadata accessor for UtilityRateInfoSnapshot();
  v85 = a1;
  v28 = *(v84 + 28);
  sub_20D971D48();
  sub_20D9502D0(&qword_281126E30, MEMORY[0x277CC9578]);
  if (sub_20D974FA8())
  {
    v81[4](v23, v20, v15);
  }

  else
  {
    (v27)(v20, v15);
    v81[2](v23, (a2 + v28), v15);
  }

  UtilityRateInfoSnapshot.dateToFormattedString(date:)(v23);
  (v27)(v23, v15);
  sub_20D9740D8();
  sub_20D9740C8();
  sub_20D9740B8();

  sub_20D9740C8();
  sub_20D9740B8();

  sub_20D9740C8();
  sub_20D974108();
  v82 = a2;
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v81 = qword_28112ABE8;
  v29 = sub_20D9745A8();
  v31 = v30;
  v33 = v32;
  sub_20D9744A8();
  v34 = sub_20D974558();
  v36 = v35;
  v38 = v37;

  sub_20D7EADC0(v29, v31, v33 & 1);

  v91 = sub_20D974248();
  v39 = sub_20D974518();
  v41 = v40;
  LODWORD(v83) = v42;
  v44 = v43;
  sub_20D7EADC0(v34, v36, v38 & 1);

  v45 = *(v84 + 20);
  if (sub_20D971D88())
  {
    sub_20D9740F8();
    v46 = v81;
    v47 = sub_20D9745A8();
    v49 = v48;
    v51 = v50;
    sub_20D974468();
    v84 = sub_20D974558();
    v85 = v52;
    v82 = v53;
    v55 = v54;

    sub_20D7EADC0(v47, v49, v51 & 1);

    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3A0, &unk_20D97D7E0);
    v57 = v80;
    v58 = &v80[*(v56 + 36)];
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A108, &unk_20D97B230) + 28);
    v60 = *MEMORY[0x277CE0B48];
    v61 = sub_20D974538();
    v62 = *(v61 - 8);
    (*(v62 + 104))(v58 + v59, v60, v61);
    (*(v62 + 56))(v58 + v59, 0, 1, v61);
    *v58 = swift_getKeyPath();
    v63 = v82;
    *v57 = v84;
    *(v57 + 8) = v63;
    *(v57 + 16) = v55 & 1;
    *(v57 + 24) = v85;
    v64 = sub_20D974968();
    KeyPath = swift_getKeyPath();
    v66 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C6F8, &qword_20D980248) + 36));
    *v66 = KeyPath;
    v66[1] = v64;
    LOBYTE(v64) = sub_20D974338();
    sub_20D973AD8();
    v67 = v87;
    v68 = v88;
    v69 = v57 + *(v87 + 36);
    *v69 = v64;
    *(v69 + 8) = v70;
    *(v69 + 16) = v71;
    *(v69 + 24) = v72;
    *(v69 + 32) = v73;
    *(v69 + 40) = 0;
    sub_20D7EAF18(v57, v68, &qword_27C83C6E0, &qword_20D980230);
    v74 = 0;
  }

  else
  {
    v74 = 1;
    v67 = v87;
    v68 = v88;
  }

  (*(v86 + 56))(v68, v74, 1, v67);
  v75 = v89;
  sub_20D7EB7E8(v68, v89, &qword_27C83C6E8, &qword_20D980238);
  v76 = v90;
  *v90 = v39;
  v76[1] = v41;
  v77 = v83 & 1;
  *(v76 + 16) = v83 & 1;
  v76[3] = v44;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C6F0, &qword_20D980240);
  sub_20D7EB7E8(v75, v76 + *(v78 + 48), &qword_27C83C6E8, &qword_20D980238);
  sub_20D7DDC4C(v39, v41, v77);

  sub_20D7E3944(v68, &qword_27C83C6E8, &qword_20D980238);
  sub_20D7E3944(v75, &qword_27C83C6E8, &qword_20D980238);
  sub_20D7EADC0(v39, v41, v77);
}

uint64_t sub_20D9515B4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20D974048();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - v12);
  v14 = a1(0);
  sub_20D7EB7E8(v2 + *(v14 + 24), v13, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_20D973D58();
    return (*(*(v15 - 8) + 32))(a2, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_20D975468();
    v18 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_20D9517C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26[1] = a1;
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C590, &qword_20D9800E0);
  v3 = *(*(v26[0] - 8) + 64);
  MEMORY[0x28223BE20](v26[0]);
  v5 = v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C598, &qword_20D9800E8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C5A0, &qword_20D9800F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - v12;
  v14 = sub_20D973D58();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D9515B4(type metadata accessor for AboutPeakType, v18);
  v19 = sub_20D973D38();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    *v13 = sub_20D974168();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C5D0, &qword_20D980108);
    sub_20D951E6C(v2, &v13[*(v20 + 44)]);
    v21 = &qword_27C83C5A0;
    v22 = &qword_20D9800F0;
    sub_20D7EB7E8(v13, v9, &qword_27C83C5A0, &qword_20D9800F0);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_27C83C5B0, &qword_27C83C5A0, &qword_20D9800F0);
    sub_20D956FF4();
    sub_20D9741B8();
    v23 = v13;
  }

  else
  {
    *v5 = sub_20D974078();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C5A8, &qword_20D9800F8);
    sub_20D951E6C(v2, &v5[*(v24 + 44)]);
    *&v5[*(v26[0] + 36)] = 256;
    v21 = &qword_27C83C590;
    v22 = &qword_20D9800E0;
    sub_20D7EB7E8(v5, v9, &qword_27C83C590, &qword_20D9800E0);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_27C83C5B0, &qword_27C83C5A0, &qword_20D9800F0);
    sub_20D956FF4();
    sub_20D9741B8();
    v23 = v5;
  }

  return sub_20D7E3944(v23, v21, v22);
}

uint64_t sub_20D951B60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C08, &qword_20D977450);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v33 - v5;
  v7 = *v1;
  v8 = v2[2];

  *&v43 = v7;
  BYTE8(v43) = 0;
  v44 = 0uLL;
  *&v45 = v8;
  PeakPeriodAttributes.variableValue.getter();

  v9 = sub_20D9749A8();
  v10 = sub_20D974328();
  sub_20D973AD8();
  v33[0] = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v53 = 0;
  v52 = 0;
  LOBYTE(v8) = sub_20D974348();
  sub_20D973AD8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v54 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20D977210;
  *(v26 + 32) = sub_20D974938();
  *(v26 + 40) = sub_20D974928();
  v27 = MEMORY[0x20F322D80](v26);
  v28 = v2[3];
  v29 = sub_20D9743C8();
  (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
  v30 = sub_20D974418();
  sub_20D7E3944(v6, &qword_27C838C08, &qword_20D977450);
  KeyPath = swift_getKeyPath();
  *&v34 = v9;
  *(&v34 + 1) = 0x3FF0000000000000;
  LOWORD(v35) = 0;
  BYTE8(v35) = v10;
  *&v36 = v33[0];
  *(&v36 + 1) = v13;
  *&v37 = v15;
  *(&v37 + 1) = v17;
  LOBYTE(v38) = 0;
  BYTE8(v38) = v8;
  *&v39 = v19;
  *(&v39 + 1) = v21;
  *&v40 = v23;
  *(&v40 + 1) = v25;
  LOBYTE(v41) = 0;
  *(&v41 + 1) = v27;
  *&v42 = KeyPath;
  *(&v42 + 1) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C5F0, &qword_20D980158);
  sub_20D9570AC();
  sub_20D9747D8();
  v49 = v40;
  v50 = v41;
  v51 = v42;
  v45 = v36;
  v46 = v37;
  v47 = v38;
  v48 = v39;
  v43 = v34;
  v44 = v35;
  return sub_20D7E3944(&v43, &qword_27C83C5F0, &qword_20D980158);
}

uint64_t sub_20D951E6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C5D8, &qword_20D980110);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C5E0, &qword_20D980118);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  sub_20D951B60(&v24 - v17);
  *v11 = sub_20D974168();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C578, &qword_20D9800C8);
  sub_20D9520B4(a1, &v11[*(v19 + 44)]);
  v20 = sub_20D974368();
  v21 = &v11[*(v5 + 44)];
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  sub_20D7EB7E8(v18, v16, &qword_27C83C5E0, &qword_20D980118);
  sub_20D7EB7E8(v11, v9, &qword_27C83C5D8, &qword_20D980110);
  sub_20D7EB7E8(v16, a2, &qword_27C83C5E0, &qword_20D980118);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C5E8, &qword_20D980120);
  sub_20D7EB7E8(v9, a2 + *(v22 + 48), &qword_27C83C5D8, &qword_20D980110);
  sub_20D7E3944(v11, &qword_27C83C5D8, &qword_20D980110);
  sub_20D7E3944(v18, &qword_27C83C5E0, &qword_20D980118);
  sub_20D7E3944(v9, &qword_27C83C5D8, &qword_20D980110);
  return sub_20D7E3944(v16, &qword_27C83C5E0, &qword_20D980118);
}

uint64_t sub_20D9520B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v86 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v85 = &v73 - v7;
  v8 = sub_20D974458();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D10, &qword_20D9775A8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v84 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v75 = &v73 - v17;
  v83 = *a1;
  v82 = a1[2];
  *&v94 = v83;
  BYTE8(v94) = 0;
  v95 = 0uLL;
  *&v96 = v82;
  v18 = PeakPeriodAttributes.peakName.getter();
  v20 = v19;

  *&v94 = v18;
  *(&v94 + 1) = v20;
  v81 = sub_20D7E1EF8();
  v21 = sub_20D9745C8();
  v23 = v22;
  v25 = v24;
  sub_20D974398();
  v80 = *MEMORY[0x277CE0A08];
  v26 = v9[13];
  v78 = v9 + 13;
  v79 = v26;
  v74 = v8;
  v26(v12);
  sub_20D974478();

  v27 = v9[1];
  v76 = v9 + 1;
  v77 = v27;
  v27(v12, v8);
  v28 = sub_20D974558();
  v30 = v29;
  LOBYTE(v9) = v31;

  sub_20D7EADC0(v21, v23, v25 & 1);

  sub_20D9743F8();
  v32 = sub_20D9744F8();
  v34 = v33;
  v36 = v35;
  sub_20D7EADC0(v28, v30, v9 & 1);

  sub_20D974958();
  v37 = sub_20D974508();
  v39 = v38;
  LOBYTE(v28) = v40;
  v42 = v41;

  sub_20D7EADC0(v32, v34, v36 & 1);

  LOBYTE(v8) = sub_20D974338();
  sub_20D973AD8();
  v93 = v28 & 1;
  v92 = 0;
  *&v88 = v37;
  *(&v88 + 1) = v39;
  LOBYTE(v89) = v28 & 1;
  *(&v89 + 1) = v42;
  LOBYTE(v90) = v8;
  *(&v90 + 1) = v43;
  *v91 = v44;
  *&v91[8] = v45;
  *&v91[16] = v46;
  v91[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D18, &qword_20D9775B0);
  sub_20D7F021C();
  v47 = v75;
  sub_20D9747D8();
  v96 = v90;
  *v97 = *v91;
  *&v97[9] = *&v91[9];
  v94 = v88;
  v95 = v89;
  sub_20D7E3944(&v94, &qword_27C838D18, &qword_20D9775B0);
  *&v88 = v83;
  BYTE8(v88) = 0;
  v89 = 0uLL;
  *&v90 = v82;
  v48 = PeakPeriodAttributes.description.getter();
  v50 = v49;

  *&v88 = v48;
  *(&v88 + 1) = v50;
  v51 = sub_20D9745C8();
  v53 = v52;
  LOBYTE(v37) = v54;
  sub_20D974398();
  v55 = v74;
  v79(v12, v80, v74);
  sub_20D974478();

  v77(v12, v55);
  v56 = sub_20D974558();
  v58 = v57;
  LOBYTE(v55) = v59;

  sub_20D7EADC0(v51, v53, v37 & 1);

  sub_20D974968();
  v60 = sub_20D974508();
  v62 = v61;
  LOBYTE(v53) = v63;
  v65 = v64;

  sub_20D7EADC0(v56, v58, v55 & 1);

  *&v88 = v60;
  *(&v88 + 1) = v62;
  LOBYTE(v89) = v53 & 1;
  *(&v89 + 1) = v65;
  v66 = v85;
  sub_20D9747D8();
  sub_20D7EADC0(v60, v62, v53 & 1);

  v67 = v84;
  sub_20D7EB7E8(v47, v84, &qword_27C838D10, &qword_20D9775A8);
  v68 = v66;
  v69 = v86;
  sub_20D7EB7E8(v66, v86, &qword_27C838F18, &unk_20D977860);
  v70 = v87;
  sub_20D7EB7E8(v67, v87, &qword_27C838D10, &qword_20D9775A8);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C588, &qword_20D9800D8);
  sub_20D7EB7E8(v69, v70 + *(v71 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v68, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v47, &qword_27C838D10, &qword_20D9775A8);
  sub_20D7E3944(v69, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v67, &qword_27C838D10, &qword_20D9775A8);
}

uint64_t sub_20D952838@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C650, &qword_20D980198);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C08, &qword_20D977450);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C658, &qword_20D9801A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  v19 = sub_20D9749A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20D977210;
  *(v20 + 32) = sub_20D974938();
  *(v20 + 40) = sub_20D974928();
  v21 = MEMORY[0x20F322D80](v20);
  v22 = sub_20D9743C8();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v23 = sub_20D974418();
  sub_20D7E3944(v11, &qword_27C838C08, &qword_20D977450);
  KeyPath = swift_getKeyPath();
  v34 = v19;
  v35 = v21;
  v36 = KeyPath;
  v37 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C660, &qword_20D9801A8);
  sub_20D957334();
  sub_20D9747D8();

  *v7 = sub_20D974168();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839150, &qword_20D97EAC0);
  sub_20D952C48(&v7[*(v25 + 44)]);
  v26 = sub_20D974368();
  v27 = &v7[*(v2 + 44)];
  *v27 = v26;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  v27[40] = 1;
  sub_20D7EB7E8(v18, v16, &qword_27C83C658, &qword_20D9801A0);
  v28 = v32;
  sub_20D7EB7E8(v7, v32, &qword_27C83C650, &qword_20D980198);
  v29 = v33;
  sub_20D7EB7E8(v16, v33, &qword_27C83C658, &qword_20D9801A0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C680, &unk_20D9801C0);
  sub_20D7EB7E8(v28, v29 + *(v30 + 48), &qword_27C83C650, &qword_20D980198);
  sub_20D7E3944(v7, &qword_27C83C650, &qword_20D980198);
  sub_20D7E3944(v18, &qword_27C83C658, &qword_20D9801A0);
  sub_20D7E3944(v28, &qword_27C83C650, &qword_20D980198);
  return sub_20D7E3944(v16, &qword_27C83C658, &qword_20D9801A0);
}

uint64_t sub_20D952C48@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v1 = sub_20D9726E8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D975058();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v58 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v57 = v55 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v56 = v55 - v14;
  MEMORY[0x28223BE20](v13);
  v60 = v55 - v15;
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v16 = qword_28112ABE8;
  v17 = qword_28112ABE8;
  v55[3] = v16;
  v18 = v17;
  sub_20D9726B8();
  v19 = v18;
  v61 = sub_20D975108();
  v62 = v20;
  v55[2] = sub_20D7E1EF8();
  v21 = sub_20D9745C8();
  v55[1] = v4;
  v23 = v22;
  LOBYTE(v16) = v24;
  sub_20D974398();
  sub_20D9743F8();
  sub_20D974448();

  v25 = sub_20D974558();
  v27 = v26;
  v29 = v28;

  sub_20D7EADC0(v21, v23, v16 & 1);

  sub_20D974958();
  v30 = sub_20D974508();
  v32 = v31;
  LOBYTE(v23) = v33;
  v35 = v34;

  sub_20D7EADC0(v25, v27, v29 & 1);

  v61 = v30;
  v62 = v32;
  v63 = v23 & 1;
  v64 = v35;
  sub_20D9747D8();
  sub_20D7EADC0(v30, v32, v23 & 1);

  sub_20D974FE8();
  sub_20D9726B8();
  v61 = sub_20D975108();
  v62 = v36;
  v37 = sub_20D9745C8();
  v39 = v38;
  LOBYTE(v32) = v40;
  sub_20D974968();
  v41 = sub_20D974508();
  v43 = v42;
  v45 = v44;
  v47 = v46;

  sub_20D7EADC0(v37, v39, v32 & 1);

  v61 = v41;
  v62 = v43;
  v63 = v45 & 1;
  v64 = v47;
  v48 = v56;
  sub_20D9747D8();
  sub_20D7EADC0(v41, v43, v45 & 1);

  v49 = v60;
  v50 = v57;
  sub_20D7EB7E8(v60, v57, &qword_27C838F18, &unk_20D977860);
  v51 = v58;
  sub_20D7EB7E8(v48, v58, &qword_27C838F18, &unk_20D977860);
  v52 = v59;
  sub_20D7EB7E8(v50, v59, &qword_27C838F18, &unk_20D977860);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839160, &unk_20D977DF0);
  sub_20D7EB7E8(v51, v52 + *(v53 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v48, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v49, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v51, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v50, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D9531A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_20D974078();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C640, &qword_20D980188);
  sub_20D952838(a1 + *(v4 + 44));
  v5 = sub_20D974338();
  sub_20D973AD8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C648, &qword_20D980190);
  v15 = a1 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

unint64_t sub_20D953264()
{
  result = qword_27C83C358;
  if (!qword_27C83C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C358);
  }

  return result;
}

uint64_t objectdestroy_53Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20D953308(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20D9562E4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_20D95341C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_20D953374(void **a1)
{
  v2 = *(sub_20D971D98() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20D9562F8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20D953514(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_20D95341C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20D975798();
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
        v5 = sub_20D975268();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_20D953CD0(v7, v8, a1, v4);
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
    return sub_20D953640(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20D953514(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_20D975798();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20D971D98();
        v6 = sub_20D975268();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20D971D98() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_20D954704(v8, v9, a1, v4);
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
    return sub_20D953930(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20D953640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v44 = sub_20D971D98();
  v10 = *(v44 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v44);
  v38 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v43 = &v31 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = v10 + 16;
    v36 = (v10 + 8);
    v37 = v10;
    v39 = v16;
    v17 = v16 + 24 * a3 - 24;
    v18 = a1 - a3;
LABEL_6:
    v34 = v17;
    v35 = a3;
    v19 = *(v39 + 24 * a3 + 8);
    v33 = v18;
    while (1)
    {
      v20 = *(v17 + 8);
      v45 = v19;
      swift_bridgeObjectRetain_n();

      sub_20D953374(&v45);
      v21 = v5;
      if (v5)
      {
        break;
      }

      if (!*(v45 + 2))
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        break;
      }

      v41 = v19;
      v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v23 = *(v10 + 16);
      v23(v43, &v45[v22], v44);

      v45 = v20;

      sub_20D953374(&v45);
      if (!*(v45 + 2))
      {
        goto LABEL_16;
      }

      v5 = 0;
      v24 = v38;
      v21 = v44;
      v23(v38, &v45[v22], v44);

      v25 = v43;
      v40 = MEMORY[0x20F31FEF0](v43, v24);
      v26 = *v36;
      (*v36)(v24, v21);
      v26(v25, v21);

      if ((v40 & 1) == 0)
      {
        v10 = v37;
LABEL_5:
        a3 = v35 + 1;
        v17 = v34 + 24;
        v18 = v33 - 1;
        if (v35 + 1 == v32)
        {
          return result;
        }

        goto LABEL_6;
      }

      v10 = v37;
      if (!v39)
      {
        goto LABEL_17;
      }

      v19 = *(v17 + 32);
      v27 = *(v17 + 40);
      v29 = *(v17 + 16);
      v28 = *(v17 + 24);
      *(v17 + 24) = *v17;
      *(v17 + 40) = v29;
      *v17 = v28;
      *(v17 + 8) = v19;
      *(v17 + 16) = v27;
      v17 -= 24;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20D953930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_20D972628();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v43 - v12;
  v13 = sub_20D971D98();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v43 - v18;
  result = MEMORY[0x28223BE20](v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
LABEL_5:
    v48 = v26;
    v49 = a3;
    v46 = v28;
    v47 = v27;
    v63 = v27;
    while (1)
    {
      v30 = v58;
      v31 = v56;
      v56(v58, v28, v13);
      v32 = v13;
      v33 = v59;
      v31(v59, v26, v32);
      sub_20D971D78();
      v34 = v61;
      sub_20D971D78();
      v64 = sub_20D972548();
      v35 = *v55;
      v36 = v34;
      v37 = v62;
      (*v55)(v36, v62);
      v35(v29, v37);
      v38 = *v54;
      v39 = v33;
      v13 = v32;
      (*v54)(v39, v32);
      result = v38(v30, v32);
      if ((v64 & 1) == 0)
      {
LABEL_4:
        a3 = v49 + 1;
        v26 = &v48[v44];
        v27 = v47 - 1;
        v28 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v40 = *v51;
      v41 = v53;
      (*v51)(v53, v28, v32);
      swift_arrayInitWithTakeFrontToBack();
      result = v40(v26, v41, v32);
      v26 += v50;
      v28 += v50;
      if (__CFADD__(v63++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20D953CD0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v117 = a1;
  v134 = sub_20D971D98();
  v8 = *(*(v134 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v134);
  v126 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v132 = &v114 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v121 = &v114 - v14;
  MEMORY[0x28223BE20](v13);
  v124 = a3;
  v125 = &v114 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_94:
    v20 = *v117;
    if (*v117)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_96;
    }

    goto LABEL_137;
  }

  v115 = a4;
  v18 = 0;
  v133 = v15 + 16;
  v128 = (v15 + 8);
  v129 = v15;
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    v20 = v18;
    v122 = v19;
    if (v18 + 1 >= v17)
    {
      ++v18;
      goto LABEL_21;
    }

    v123 = v17;
    v21 = *v124;
    v22 = *v124 + 24 * (v18 + 1);
    v24 = *v22;
    v23 = *(v22 + 8);
    v25 = *(v22 + 16);
    v136[0] = v24;
    v136[1] = v23;
    v136[2] = v25;
    v26 = (v21 + 24 * v18);
    v27 = *v26;
    v28 = v26[1];
    v29 = v26[2];
    v135[0] = v27;
    v135[1] = v28;
    v135[2] = v29;

    LODWORD(v127) = sub_20D94FB58(v136, v135);
    if (v5)
    {
      goto LABEL_107;
    }

    v30 = (v18 + 2);
    v116 = v18;
    v120 = 24 * v18;
    v31 = (v21 + 24 * v18 + 56);
    do
    {
      v18 = v123;
      if (v123 == v30)
      {
        goto LABEL_12;
      }

      v32 = *(v31 - 3);
      v136[0] = *v31;
      swift_bridgeObjectRetain_n();

      sub_20D953374(v136);
      v20 = v136[0];
      if (!v136[0][2])
      {
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
        goto LABEL_130;
      }

      v131 = v30;
      v33 = (*(v129 + 80) + 32) & ~*(v129 + 80);
      v19 = *(v129 + 16);
      (v19)(v125, v136[0] + v33, v134);

      v136[0] = v32;

      sub_20D953374(v136);
      v20 = v136[0];
      if (!v136[0][2])
      {
        goto LABEL_109;
      }

      v34 = v121;
      v35 = v134;
      (v19)(v121, v136[0] + v33, v134);

      v36 = v125;
      v130 = MEMORY[0x20F31FEF0](v125, v34);
      v37 = *v128;
      v38 = v34;
      v5 = 0;
      (*v128)(v38, v35);
      v37(v36, v35);

      v30 = (v131 + 1);
      v31 += 3;
      v19 = v122;
    }

    while (((v127 ^ v130) & 1) == 0);
    v18 = v131;
LABEL_12:
    v20 = v116;
    if (v127)
    {
      if (v18 >= v116)
      {
        if (v116 < v18)
        {
          v39 = 24 * v18 - 8;
          v40 = v18;
          v41 = v116;
          v42 = v120;
          while (1)
          {
            if (v41 != --v40)
            {
              v43 = *v124;
              if (!*v124)
              {
                goto LABEL_134;
              }

              v44 = (v43 + v42);
              v45 = (v43 + v39);
              v46 = *v44;
              v47 = *(v44 + 2);
              v48 = *v45;
              *v44 = *(v45 - 1);
              *(v44 + 2) = v48;
              *(v45 - 1) = v46;
              *v45 = v47;
            }

            ++v41;
            v39 -= 24;
            v42 += 24;
            if (v41 >= v40)
            {
              goto LABEL_21;
            }
          }
        }

        goto LABEL_21;
      }

LABEL_130:
      __break(1u);
LABEL_131:
      v19 = sub_20D9560B0(v19);
LABEL_96:
      v137 = v19;
      v109 = *(v19 + 2);
      if (v109 < 2)
      {
      }

      while (*v124)
      {
        v110 = *&v19[16 * v109];
        v111 = *&v19[16 * v109 + 24];
        sub_20D955304((*v124 + 24 * v110), (*v124 + 24 * *&v19[16 * v109 + 16]), *v124 + 24 * v111, v20);
        if (v5)
        {
        }

        if (v111 < v110)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_20D9560B0(v19);
        }

        if (v109 - 2 >= *(v19 + 2))
        {
          goto LABEL_125;
        }

        v112 = &v19[16 * v109];
        *v112 = v110;
        *(v112 + 1) = v111;
        v137 = v19;
        sub_20D956024(v109 - 1);
        v19 = v137;
        v109 = *(v137 + 2);
        if (v109 <= 1)
        {
        }
      }

LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:

      __break(1u);
      return result;
    }

LABEL_21:
    v49 = v124[1];
    if (v18 < v49)
    {
      if (__OFSUB__(v18, v20))
      {
        goto LABEL_127;
      }

      if (v18 - v20 < v115)
      {
        if (__OFADD__(v20, v115))
        {
          goto LABEL_128;
        }

        if (&v20[v115] < v49)
        {
          v49 = &v20[v115];
        }

        if (v49 < v20)
        {
          goto LABEL_129;
        }

        if (v18 != v49)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v18 < v20)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_20D8D42B4(0, *(v19 + 2) + 1, 1, v19);
    }

    v64 = *(v19 + 2);
    v63 = *(v19 + 3);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v19 = sub_20D8D42B4((v63 > 1), v64 + 1, 1, v19);
    }

    *(v19 + 2) = v65;
    v66 = &v19[16 * v64];
    *(v66 + 4) = v20;
    *(v66 + 5) = v18;
    v20 = *v117;
    if (!*v117)
    {
      goto LABEL_136;
    }

    if (v64)
    {
      while (1)
      {
        v67 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v68 = *(v19 + 4);
          v69 = *(v19 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_63:
          if (v71)
          {
            goto LABEL_115;
          }

          v84 = &v19[16 * v65];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_118;
          }

          v90 = &v19[16 * v67 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_122;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v65 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v94 = &v19[16 * v65];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_77:
        if (v89)
        {
          goto LABEL_117;
        }

        v97 = &v19[16 * v67];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_120;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_84:
        v105 = v67 - 1;
        if (v67 - 1 >= v65)
        {
          goto LABEL_110;
        }

        if (!*v124)
        {
          goto LABEL_133;
        }

        v106 = *&v19[16 * v105 + 32];
        v107 = *&v19[16 * v67 + 40];
        sub_20D955304((*v124 + 24 * v106), (*v124 + 24 * *&v19[16 * v67 + 32]), *v124 + 24 * v107, v20);
        if (v5)
        {
        }

        if (v107 < v106)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_20D9560B0(v19);
        }

        if (v105 >= *(v19 + 2))
        {
          goto LABEL_112;
        }

        v108 = &v19[16 * v105];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        v137 = v19;
        sub_20D956024(v67);
        v19 = v137;
        v65 = *(v137 + 2);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v19[16 * v65 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_113;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_114;
      }

      v79 = &v19[16 * v65];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_116;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_119;
      }

      if (v83 >= v75)
      {
        v101 = &v19[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_123;
        }

        if (v70 < v104)
        {
          v67 = v65 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v17 = v124[1];
    if (v18 >= v17)
    {
      goto LABEL_94;
    }
  }

  v118 = v49;
  v127 = *v124;
  v50 = v127 + 24 * v18 - 24;
  v116 = v20;
  v51 = &v20[-v18];
LABEL_32:
  v123 = v18;
  v52 = *(v127 + 24 * v18 + 8);
  v119 = v51;
  v120 = v50;
  while (1)
  {
    v53 = *(v50 + 8);
    v136[0] = v52;
    swift_bridgeObjectRetain_n();

    sub_20D953374(v136);
    if (v5)
    {
      goto LABEL_138;
    }

    if (!v136[0][2])
    {
      break;
    }

    v54 = (*(v129 + 80) + 32) & ~*(v129 + 80);
    v55 = *(v129 + 16);
    v55(v132, v136[0] + v54, v134);

    v136[0] = v53;

    sub_20D953374(v136);
    if (!v136[0][2])
    {
      goto LABEL_106;
    }

    v131 = v52;
    v56 = v126;
    v5 = v134;
    v55(v126, v136[0] + v54, v134);

    v57 = v132;
    v130 = MEMORY[0x20F31FEF0](v132, v56);
    v58 = *v128;
    (*v128)(v56, v5);
    v58(v57, v5);

    if ((v130 & 1) == 0)
    {
      v5 = 0;
LABEL_31:
      v18 = v123 + 1;
      v50 = v120 + 24;
      v51 = v119 - 1;
      if ((v123 + 1) == v118)
      {
        v19 = v122;
        v20 = v116;
        v18 = v118;
        goto LABEL_43;
      }

      goto LABEL_32;
    }

    if (!v127)
    {
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v5 = 0;
    v52 = *(v50 + 32);
    v59 = *(v50 + 40);
    v61 = *(v50 + 16);
    v60 = *(v50 + 24);
    *(v50 + 24) = *v50;
    *(v50 + 40) = v61;
    *v50 = v60;
    *(v50 + 8) = v52;
    *(v50 + 16) = v59;
    v50 -= 24;
    if (__CFADD__(v51++, 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
}

uint64_t sub_20D954704(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v161 = sub_20D972628();
  v8 = *(v161 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v161);
  v160 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v159 = &v135 - v12;
  v13 = sub_20D971D98();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v16 = MEMORY[0x28223BE20](v13);
  v142 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v151 = &v135 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v158 = &v135 - v21;
  result = MEMORY[0x28223BE20](v20);
  v162 = &v135 - v23;
  v24 = *(a3 + 1);
  v147 = a3;
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_96:
    v13 = v26;
    v26 = *v139;
    if (!*v139)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v54 = v147;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_20D9560B0(v13);
      v13 = result;
    }

    v164 = v13;
    v131 = *(v13 + 16);
    if (v131 >= 2)
    {
      while (*v54)
      {
        v132 = *(v13 + 16 * v131);
        v133 = *(v13 + 16 * (v131 - 1) + 40);
        sub_20D955934(*v54 + *(v14 + 9) * v132, *v54 + *(v14 + 9) * *(v13 + 16 * (v131 - 1) + 32), *v54 + *(v14 + 9) * v133, v26);
        if (v5)
        {
        }

        if (v133 < v132)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_20D9560B0(v13);
        }

        if (v131 - 2 >= *(v13 + 16))
        {
          goto LABEL_122;
        }

        v134 = (v13 + 16 * v131);
        *v134 = v132;
        v134[1] = v133;
        v164 = v13;
        result = sub_20D956024(v131 - 1);
        v13 = v164;
        v131 = *(v164 + 16);
        if (v131 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v135 = a4;
  v25 = 0;
  v155 = (v8 + 8);
  v156 = v14 + 16;
  v153 = (v14 + 32);
  v154 = v14 + 8;
  v26 = MEMORY[0x277D84F90];
  v157 = v13;
  v138 = v14;
  while (1)
  {
    v27 = v25 + 1;
    if (v25 + 1 >= v24)
    {
      v43 = v25 + 1;
      v54 = v147;
    }

    else
    {
      v148 = v24;
      v136 = v26;
      v137 = v5;
      v28 = v25;
      v140 = v25;
      v29 = *v147;
      v163 = v29;
      v30 = *(v14 + 9);
      v31 = (v29 + v30 * v27);
      v32 = v13;
      v33 = *(v14 + 2);
      (v33)(v162, v31, v13);
      v34 = v158;
      v149 = v33;
      (v33)(v158, v29 + v30 * v28, v32);
      v35 = v159;
      sub_20D971D78();
      v36 = v160;
      sub_20D971D78();
      LODWORD(v150) = sub_20D972548();
      v37 = *v155;
      v38 = v36;
      v39 = v161;
      (*v155)(v38, v161);
      v146 = v37;
      (v37)(v35, v39);
      v40 = *(v138 + 1);
      v26 = v154;
      v40(v34, v32);
      v145 = v40;
      result = (v40)(v162, v32);
      v41 = v140 + 2;
      v152 = v30;
      v42 = v163 + v30 * (v140 + 2);
      while (1)
      {
        v43 = v148;
        if (v148 == v41)
        {
          break;
        }

        v44 = v157;
        v45 = v149;
        v149();
        v46 = v158;
        v45(v158, v31, v44);
        v47 = v159;
        sub_20D971D78();
        v48 = v160;
        sub_20D971D78();
        LOBYTE(v163) = sub_20D972548() & 1;
        LODWORD(v163) = v163;
        v49 = v48;
        v50 = v161;
        v51 = v31;
        v52 = v146;
        (v146)(v49, v161);
        v52(v47, v50);
        v26 = v154;
        v53 = v145;
        (v145)(v46, v44);
        result = v53(v162, v44);
        ++v41;
        v42 += v152;
        v31 = &v152[v51];
        if ((v150 & 1) != v163)
        {
          v43 = v41 - 1;
          goto LABEL_9;
        }
      }

      v5 = v137;
      v54 = v147;
      v14 = v138;
      v13 = v157;
      v25 = v140;
      if ((v150 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v43 < v140)
      {
        goto LABEL_125;
      }

      if (v140 < v43)
      {
        v55 = v43;
        v56 = v152 * (v43 - 1);
        v57 = v43 * v152;
        v148 = v43;
        v58 = v140;
        v59 = v140 * v152;
        do
        {
          if (v58 != --v55)
          {
            v60 = *v54;
            if (!v60)
            {
              goto LABEL_131;
            }

            v61 = *v153;
            (*v153)(v142, v60 + v59, v13);
            if (v59 < v56 || v60 + v59 >= (v60 + v57))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v61)(v60 + v56, v142, v13);
            v54 = v147;
          }

          ++v58;
          v56 -= v152;
          v57 -= v152;
          v59 += v152;
        }

        while (v58 < v55);
        v5 = v137;
        v14 = v138;
        v26 = v136;
        v25 = v140;
        v43 = v148;
      }

      else
      {
LABEL_23:
        v26 = v136;
      }
    }

    v62 = *(v54 + 1);
    if (v43 < v62)
    {
      if (__OFSUB__(v43, v25))
      {
        goto LABEL_124;
      }

      if (v43 - v25 < v135)
      {
        if (__OFADD__(v25, v135))
        {
          goto LABEL_126;
        }

        if (v25 + v135 >= v62)
        {
          v63 = *(v54 + 1);
        }

        else
        {
          v63 = v25 + v135;
        }

        if (v63 < v25)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v43 != v63)
        {
          break;
        }
      }
    }

    v64 = v43;
    if (v43 < v25)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20D8D42B4(0, *(v26 + 2) + 1, 1, v26);
      v26 = result;
    }

    v66 = *(v26 + 2);
    v65 = *(v26 + 3);
    v67 = v66 + 1;
    v54 = v14;
    if (v66 >= v65 >> 1)
    {
      result = sub_20D8D42B4((v65 > 1), v66 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v67;
    v68 = &v26[16 * v66];
    *(v68 + 4) = v25;
    *(v68 + 5) = v64;
    v69 = *v139;
    if (!*v139)
    {
      goto LABEL_133;
    }

    v143 = v64;
    if (v66)
    {
      v14 = v69;
      while (1)
      {
        v70 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v71 = *(v26 + 4);
          v72 = *(v26 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_55:
          if (v74)
          {
            goto LABEL_112;
          }

          v87 = &v26[16 * v67];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_115;
          }

          v93 = &v26[16 * v70 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_119;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v67 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v97 = &v26[16 * v67];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_69:
        if (v92)
        {
          goto LABEL_114;
        }

        v100 = &v26[16 * v70];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_117;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_76:
        v108 = v70 - 1;
        if (v70 - 1 >= v67)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v147)
        {
          goto LABEL_130;
        }

        v109 = *&v26[16 * v108 + 32];
        v110 = *&v26[16 * v70 + 40];
        sub_20D955934(*v147 + *(v54 + 9) * v109, *v147 + *(v54 + 9) * *&v26[16 * v70 + 32], *v147 + *(v54 + 9) * v110, v14);
        if (v5)
        {
        }

        if (v110 < v109)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_20D9560B0(v26);
        }

        if (v108 >= *(v26 + 2))
        {
          goto LABEL_109;
        }

        v111 = &v26[16 * v108];
        *(v111 + 4) = v109;
        *(v111 + 5) = v110;
        v164 = v26;
        result = sub_20D956024(v70);
        v26 = v164;
        v67 = *(v164 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v26[16 * v67 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_110;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_111;
      }

      v82 = &v26[16 * v67];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_113;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_116;
      }

      if (v86 >= v78)
      {
        v104 = &v26[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_120;
        }

        if (v73 < v107)
        {
          v70 = v67 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v24 = *(v147 + 1);
    v25 = v143;
    v14 = v54;
    if (v143 >= v24)
    {
      goto LABEL_96;
    }
  }

  v136 = v26;
  v137 = v5;
  v112 = *v54;
  v113 = *(v14 + 9);
  v152 = *(v14 + 2);
  v114 = (v112 + v113 * (v43 - 1));
  v149 = -v113;
  v140 = v25;
  v115 = (v25 - v43);
  v150 = v112;
  v141 = v113;
  v116 = v112 + v43 * v113;
  v143 = v63;
LABEL_87:
  v148 = v43;
  v144 = v116;
  v145 = v115;
  v117 = v116;
  v146 = v114;
  v118 = v114;
  while (1)
  {
    v54 = v162;
    v119 = v152;
    (v152)(v162, v117, v13);
    v120 = v158;
    v119(v158, v118, v13);
    v121 = v159;
    sub_20D971D78();
    v122 = v160;
    sub_20D971D78();
    LODWORD(v163) = sub_20D972548();
    v123 = *v155;
    v124 = v122;
    v125 = v161;
    (*v155)(v124, v161);
    v126 = v121;
    v13 = v157;
    v123(v126, v125);
    v127 = *v154;
    (*v154)(v120, v13);
    result = v127(v54, v13);
    if ((v163 & 1) == 0)
    {
LABEL_86:
      v43 = v148 + 1;
      v114 = &v146[v141];
      v115 = v145 - 1;
      v64 = v143;
      v116 = v144 + v141;
      if (v148 + 1 != v143)
      {
        goto LABEL_87;
      }

      v5 = v137;
      v14 = v138;
      v26 = v136;
      v25 = v140;
      if (v143 < v140)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v150)
    {
      break;
    }

    v128 = *v153;
    v129 = v151;
    (*v153)(v151, v117, v13);
    swift_arrayInitWithTakeFrontToBack();
    v128(v118, v129, v13);
    v118 = v149 + v118;
    v117 += v149;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_86;
    }
  }

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
  return result;
}

uint64_t sub_20D955304(char *a1, char *a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v63 = sub_20D971D98();
  v58 = *(v63 - 8);
  v9 = *(v58 + 64);
  v10 = MEMORY[0x28223BE20](v63);
  v55 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v59 = &v52 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v54 = &v52 - v15;
  MEMORY[0x28223BE20](v14);
  v57 = &v52 - v17;
  v18 = (a2 - a1) / 24;
  v19 = v16 - a2;
  v20 = (v16 - a2) / 24;
  v62 = a4;
  if (v18 < v20)
  {
    v61 = v16;
    v21 = a4;
    if (a4 != a1 || &a1[24 * v18] <= a4)
    {
      memmove(a4, a1, 24 * v18);
      v21 = v62;
    }

    v22 = &v21[24 * v18];
    if (a2 - a1 >= 24 && a2 < v61)
    {
      v56 = v58 + 16;
      v53 = (v58 + 8);
      v60 = &v21[24 * v18];
      while (1)
      {
        v59 = a2;
        v23 = *(a2 + 1);
        v62 = v21;
        v24 = *(v21 + 1);
        v64 = v23;
        swift_bridgeObjectRetain_n();

        sub_20D953374(&v64);
        if (v5)
        {
          goto LABEL_47;
        }

        if (!*(v64 + 2))
        {
          goto LABEL_44;
        }

        v25 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        v26 = *(v58 + 16);
        v26(v57, &v64[v25], v63);

        v64 = v24;

        sub_20D953374(&v64);
        if (!*(v64 + 2))
        {
          goto LABEL_45;
        }

        v55 = 0;
        v27 = &v64[v25];
        v28 = v54;
        v29 = v63;
        v26(v54, v27, v63);

        v30 = v57;
        v31 = MEMORY[0x20F31FEF0](v57, v28);
        v32 = *v53;
        (*v53)(v28, v29);
        v32(v30, v29);

        if ((v31 & 1) == 0)
        {
          break;
        }

        v33 = v59;
        v59 += 24;
        v21 = v62;
        v22 = v60;
        if (a1 != v33)
        {
          goto LABEL_15;
        }

LABEL_16:
        a1 += 24;
        v5 = v55;
        if (v21 < v22)
        {
          a2 = v59;
          if (v59 < v61)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      v33 = v62;
      v21 = v62 + 24;
      v22 = v60;
      if (a1 == v62)
      {
        goto LABEL_16;
      }

LABEL_15:
      v34 = *v33;
      *(a1 + 2) = *(v33 + 2);
      *a1 = v34;
      goto LABEL_16;
    }

LABEL_18:
    a2 = a1;
    goto LABEL_39;
  }

  v53 = a1;
  v21 = a4;
  if (a4 != a2 || &a2[24 * v20] <= a4)
  {
    v35 = v16;
    memmove(a4, a2, 24 * v20);
    v16 = v35;
    v21 = v62;
  }

  v22 = &v21[24 * v20];
  if (v19 < 24 || a2 <= v53)
  {
LABEL_39:
    v50 = (v22 - v21) / 24;
    if (a2 != v21 || a2 >= &v21[24 * v50])
    {
      memmove(a2, v21, 24 * v50);
    }

    return 1;
  }

  v57 = (v58 + 16);
  v54 = (v58 + 8);
LABEL_25:
  v36 = v16 - 24;
  while (1)
  {
    v61 = v36;
    v37 = *(a2 - 2);
    v64 = *(v22 - 2);
    swift_bridgeObjectRetain_n();

    sub_20D953374(&v64);
    if (v5)
    {
      break;
    }

    if (!*(v64 + 2))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      break;
    }

    v60 = v22;
    v38 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v39 = *(v58 + 16);
    v39(v59, &v64[v38], v63);

    v64 = v37;

    sub_20D953374(&v64);
    if (!*(v64 + 2))
    {
      goto LABEL_46;
    }

    v40 = v55;
    v41 = v63;
    v39(v55, &v64[v38], v63);

    v42 = v59;
    LODWORD(v56) = MEMORY[0x20F31FEF0](v59, v40);
    v43 = *v54;
    (*v54)(v40, v41);
    v43(v42, v41);

    if (v56)
    {
      v48 = a2 - 24;
      v16 = v61;
      v21 = v62;
      v22 = v60;
      if (v61 + 24 != a2)
      {
        v49 = *v48;
        *(v61 + 2) = *(a2 - 1);
        *v16 = v49;
      }

      v5 = 0;
      if (v22 <= v21 || (a2 -= 24, v48 <= v53))
      {
        a2 = v48;
        goto LABEL_39;
      }

      goto LABEL_25;
    }

    v45 = v60;
    v44 = v61;
    v46 = v60 - 24;
    v21 = v62;
    v5 = 0;
    if (v61 + 24 != v60)
    {
      v47 = *v46;
      *(v61 + 2) = *(v60 - 1);
      *v44 = v47;
    }

    v36 = v44 - 24;
    v22 = v45 - 24;
    if (v46 <= v21)
    {
      v22 = v45 - 24;
      goto LABEL_39;
    }
  }

LABEL_47:

  __break(1u);
  return result;
}

uint64_t sub_20D955934(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v75 = a3;
  v70 = sub_20D972628();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v70);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v58 - v11;
  v74 = sub_20D971D98();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v74);
  v67 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v72 = &v58 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v20 = v75 - a2;
  if (v75 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_62;
  }

  v21 = (a2 - a1) / v19;
  v78 = a1;
  v77 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v23;
    if (v23 >= 1)
    {
      v41 = -v19;
      v62 = (v7 + 8);
      v63 = (v12 + 16);
      v60 = a4;
      v61 = (v12 + 8);
      v42 = v40;
      v73 = a1;
      v64 = -v19;
      v43 = v74;
      while (2)
      {
        while (1)
        {
          v58 = v40;
          v44 = a2;
          v45 = a2 + v41;
          v65 = v44;
          v66 = v45;
          while (1)
          {
            v46 = v75;
            if (v44 <= a1)
            {
              v78 = v44;
              v76 = v58;
              goto LABEL_59;
            }

            v59 = v40;
            v75 += v41;
            v47 = v42 + v41;
            v48 = *v63;
            (*v63)();
            v49 = v67;
            (v48)(v67, v45, v43);
            v50 = v68;
            sub_20D971D78();
            v51 = v69;
            sub_20D971D78();
            v71 = sub_20D972548();
            v52 = *v62;
            v53 = v51;
            v54 = v70;
            (*v62)(v53, v70);
            v52(v50, v54);
            v55 = *v61;
            (*v61)(v49, v43);
            v55(v72, v43);
            if (v71)
            {
              break;
            }

            v40 = v47;
            v56 = v60;
            if (v46 < v42 || v75 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v66;
              v41 = v64;
            }

            else
            {
              v45 = v66;
              v41 = v64;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v47;
            a1 = v73;
            v44 = v65;
            if (v47 <= v56)
            {
              a2 = v65;
              goto LABEL_58;
            }
          }

          v57 = v60;
          if (v46 < v65 || v75 >= v65)
          {
            break;
          }

          a2 = v66;
          a1 = v73;
          v40 = v59;
          v41 = v64;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_58;
          }
        }

        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v73;
        v40 = v59;
        v41 = v64;
        if (v42 > v57)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v78 = a2;
    v76 = v40;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v22;
    v76 = a4 + v22;
    if (v22 >= 1 && a2 < v75)
    {
      v25 = *(v12 + 16);
      v62 = (v7 + 8);
      v63 = v25;
      v64 = v19;
      v65 = v12 + 16;
      v61 = (v12 + 8);
      v26 = v74;
      do
      {
        v73 = a1;
        v27 = v72;
        v28 = v63;
        (v63)(v72, a2, v26);
        v29 = v67;
        (v28)(v67, a4, v26);
        v30 = v68;
        sub_20D971D78();
        v31 = v69;
        sub_20D971D78();
        v71 = sub_20D972548();
        v32 = a2;
        v33 = *v62;
        v34 = v31;
        v35 = a4;
        v36 = v70;
        (*v62)(v34, v70);
        v33(v30, v36);
        v37 = *v61;
        (*v61)(v29, v26);
        v37(v27, v26);
        if (v71)
        {
          v38 = v64;
          a2 = v32 + v64;
          v39 = v73;
          a4 = v35;
          if (v73 < v32 || v73 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v32;
          v38 = v64;
          a4 = v35 + v64;
          v39 = v73;
          if (v73 < v35 || v73 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v77 = a4;
        }

        a1 = v39 + v38;
        v78 = a1;
      }

      while (a4 < v66 && a2 < v75);
    }
  }

LABEL_59:
  sub_20D9560F4(&v78, &v77, &v76, MEMORY[0x277CC88A8]);
  return 1;
}

uint64_t sub_20D956024(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20D9560B0(v3);
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