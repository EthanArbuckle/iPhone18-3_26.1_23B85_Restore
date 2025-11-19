void *sub_22B3E0BD4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE430, &qword_22B3F9BC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE428, &qword_22B3F9BB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22B3E0D1C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE468, &unk_22B3F9C10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE460, &qword_22B3F9C08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22B3E0E50(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22B3E2258(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_22B3F6C64();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE440, &qword_22B3F9BE0);
      v7 = sub_22B3F67B4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_22B3E12A4(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_22B3E0FA4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22B3E226C(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_22B3F6C64();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 8);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 2) >= v11)
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = *(v13 + 2);
          *(v13 + 4) = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE428, &qword_22B3F9BB8);
      v7 = sub_22B3F67B4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_22B3E182C(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_22B3E1114(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE200, &qword_22B3F88F0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_22B3E11D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2C8, &unk_22B3F8920);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_22B3E12A4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_22B3E2230(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_22B3E1DF0((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
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
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
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
      result = sub_22B3C1DD8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_22B3C1DD8((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
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

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_22B3E1DF0((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
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

uint64_t sub_22B3E182C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_22B3E2230(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22B3E1FF4((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v27 + v10);
            v22 = (v27 + v18);
            v23 = *v21;
            v24 = v21[1];
            v25 = v21[2];
            v26 = *v22;
            *v21 = *(v22 - 1);
            v21[2] = v26;
            *(v22 - 2) = v23;
            *(v22 - 1) = v24;
            *v22 = v25;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22B3C1DD8(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_22B3C1DD8((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
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

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_22B3E1FF4((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*(v33 - 1) >= v31)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *v33;
    v35 = *(v33 + 1);
    *v33 = *(v33 - 3);
    v33[2] = *(v33 - 1);
    *(v33 - 2) = v35;
    *(v33 - 1) = v31;
    *(v33 - 3) = v34;
    v33 -= 3;
    if (__CFADD__(v32++, 1))
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

uint64_t sub_22B3E1DF0(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
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
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_22B3E1FF4(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 3;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 3, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 3;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 3;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

void *sub_22B3E2280(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v19;
        goto LABEL_24;
      }

      v11 += 2;
      v20 = v19;
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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22B3E23D8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

_OWORD *sub_22B3E2534(_OWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _OWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v56 = a8;
  v53 = a7;
  v54 = a3;
  v51 = a6;
  v49 = a5;
  v58 = a4;
  v62 = a2;
  v60 = a12;
  v59 = a11;
  v61 = a10;
  v55 = a9;
  v52 = a22;
  v48 = a21;
  v50 = a19;
  v24 = type metadata accessor for BlackPearlLevels();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v57 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68[3] = a15;
  v68[4] = a20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
  (*(*(a15 - 8) + 32))(boxed_opaque_existential_1, v49, a15);
  v67[3] = a18;
  v67[4] = a23;
  v28 = __swift_allocate_boxed_opaque_existential_1(v67);
  (*(*(a18 - 8) + 32))(v28, v51, a18);
  v66[3] = a16;
  v66[4] = v48;
  v29 = __swift_allocate_boxed_opaque_existential_1(v66);
  (*(*(a16 - 8) + 32))(v29, v53, a16);
  v65[3] = a14;
  v65[4] = v50;
  v30 = __swift_allocate_boxed_opaque_existential_1(v65);
  v31 = v54;
  (*(*(a14 - 8) + 32))(v30, v56, a14);
  v64[3] = a17;
  v64[4] = v52;
  v32 = __swift_allocate_boxed_opaque_existential_1(v64);
  (*(*(a17 - 8) + 32))(v32, v55, a17);
  v34 = a1[1];
  v69[0] = *a1;
  v33 = v69[0];
  v69[1] = v34;
  v36 = a1[3];
  v70 = a1[2];
  v35 = v70;
  v71 = v36;
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_catMaxSeqLen) = 256;
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_nonCommerceCategories) = &unk_283F05350;
  a13[1] = v33;
  a13[2] = v34;
  a13[3] = v35;
  a13[4] = v36;
  v37 = v62[3];
  v38 = v62[4];
  v39 = v62;
  __swift_project_boxed_opaque_existential_0(v62, v37);
  v40 = *(v38 + 304);
  sub_22B3CEED0(v69, &v63);
  v41 = v57;
  v40(v37, v38);
  sub_22B3B2C30(v41, a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels);
  sub_22B3CEF2C(v39, a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_modelLoader);
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_nerRule) = v31;
  v42 = v60;
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_commerceSenderRule) = v61;
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_guaranteeList) = v59;
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_finalRule) = v42;
  sub_22B3CEF2C(v68, a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_tsSubjectMap);
  sub_22B3CEF2C(v67, a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_tsSenderMap);
  sub_22B3CEF2C(v66, a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_catMap);
  type metadata accessor for BertEmbeddings();
  swift_allocObject();

  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_bertEmbeddings) = BertEmbeddings.init()();
  sub_22B3CEF2C(v65, a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_saasSenderMap);
  sub_22B3CEF2C(v64, a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_mbertDomainMap);
  type metadata accessor for LanguageDetection();
  swift_allocObject();
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_languageDetection) = sub_22B3C2BDC();
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_domainHelper) = v58;
  v43 = objc_allocWithZone(MEMORY[0x277CCAC68]);

  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_privateRelayRegex) = sub_22B3CED78(0xD000000000000041, 0x800000022B3FB800, 1);
  v44 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_tsRegex) = sub_22B3CED78(0x775C5E5B7C2B775CLL, 0xEB000000005D735CLL, 0);
  v45 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v46 = sub_22B3CED78(0xD000000000000014, 0x800000022B3FB8E0, 0);

  sub_22B3CEF90(v69);
  __swift_destroy_boxed_opaque_existential_0(v64);
  __swift_destroy_boxed_opaque_existential_0(v65);
  __swift_destroy_boxed_opaque_existential_0(v66);
  __swift_destroy_boxed_opaque_existential_0(v67);
  __swift_destroy_boxed_opaque_existential_0(v68);
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_alphaNumericRegex) = v46;
  __swift_destroy_boxed_opaque_existential_0(v62);
  return a13;
}

_OWORD *sub_22B3E2C44(_OWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, __int128 a19, uint64_t a20)
{
  v58 = a6;
  v56 = a5;
  v70 = a3;
  v71 = a4;
  v68 = a1;
  v69 = a2;
  v67 = a10;
  v66 = a11;
  v64 = a19;
  v65 = a18;
  v62 = a8;
  v63 = a20;
  v60 = a7;
  v61 = a9;
  v53 = a15;
  v59 = a16;
  v57 = *(a16 - 8);
  v20 = *(v57 + 64);
  v54 = a13;
  MEMORY[0x28223BE20](a1);
  v55 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v33 = &v52 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a17 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v38 = &v52 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(a14 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v43 = &v52 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DecisionStrategy();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  v52 = swift_allocObject();
  (*(v39 + 16))(v43, v56, a14);
  (*(v34 + 16))(v38, v58, a17);
  v47 = v53;
  (*(v29 + 16))(v33, v60, v53);
  v48 = v54;
  (*(v23 + 16))(v27, v62, v54);
  v49 = v55;
  v50 = v59;
  (*(v57 + 16))(v55, v61, v59);
  return sub_22B3E2534(v68, v69, v70, v71, v43, v38, v33, v27, v49, v67, *(&v67 + 1), v66, v52, v48, a14, v47, v50, a17, v65, *(&v65 + 1), v64, *(&v64 + 1), v63);
}

uint64_t sub_22B3E3088(uint64_t a1)
{
  v2 = type metadata accessor for BlackPearlLevels();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B3E30E4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *sub_22B3E30FC(unsigned __int8 *a1)
{
  v1 = a1[65];
  v2 = a1[66];
  v3 = a1[68];
  if (a1[67])
  {
    v4 = sub_22B3C1CD8(0, 1, 1, MEMORY[0x277D84F90]);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_22B3C1CD8((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v4[v6 + 32] = 4;
    if (!v2)
    {
      if (!v3)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v4 = MEMORY[0x277D84F90];
  if (v2)
  {
LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_22B3C1CD8(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    if (v8 >= v7 >> 1)
    {
      v4 = sub_22B3C1CD8((v7 > 1), v8 + 1, 1, v4);
    }

    *(v4 + 2) = v8 + 1;
    v4[v8 + 32] = 6;
    if (!v3)
    {
LABEL_6:
      if (!v1)
      {
        return v4;
      }

      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if ((v3 & 1) == 0)
  {
    if ((v1 & 1) == 0)
    {
      return v4;
    }

    goto LABEL_21;
  }

LABEL_16:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_22B3C1CD8(0, *(v4 + 2) + 1, 1, v4);
  }

  v10 = *(v4 + 2);
  v9 = *(v4 + 3);
  if (v10 >= v9 >> 1)
  {
    v4 = sub_22B3C1CD8((v9 > 1), v10 + 1, 1, v4);
  }

  *(v4 + 2) = v10 + 1;
  v4[v10 + 32] = 4;
  if (v1)
  {
LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_22B3C1CD8(0, *(v4 + 2) + 1, 1, v4);
    }

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    if (v12 >= v11 >> 1)
    {
      v4 = sub_22B3C1CD8((v11 > 1), v12 + 1, 1, v4);
    }

    *(v4 + 2) = v12 + 1;
    v4[v12 + 32] = 5;
  }

  return v4;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_22B3E33CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_22B3E3414(uint64_t result, int a2, int a3)
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
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for DecisionStrategy()
{
  result = qword_28140CBD8;
  if (!qword_28140CBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B3E34CC()
{
  result = type metadata accessor for BlackPearlLevels();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_22B3E36B4()
{
  v0 = sub_22B3B4258();
  v1 = MEMORY[0x231890330](1601462623, 0xE400000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v0);
  if (v1[2] > 1uLL)
  {
    v5 = v1[4];
    v4 = v1[5];
    v6 = v1[6];
    v7 = v1[7];
    v8 = v1;

    v9 = MEMORY[0x23188FF00](v5, v4, v6, v7);

    if (v8[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v18 = *(v8 + 4);
      v10 = v8[10];
      v11 = v8[11];

      v12 = sub_22B3B63C0();
      v13 = MEMORY[0x231890330](95, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D83E40], v12);

      if (*(v13 + 16) > 2uLL)
      {
        sub_22B3DD884(2, v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE460, &qword_22B3F9C08);
        sub_22B3D0990(&qword_28140BF98, &qword_27D8BE460, &qword_22B3F9C08);
        v15 = sub_22B3F6774();
        v17 = v16;

        MEMORY[0x23188FF80](64, 0xE100000000000000);

        MEMORY[0x23188FF80](v15, v17);

        return v9;
      }

      else
      {

        sub_22B3E52A8();
        swift_allocError();
        *v14 = 1;
        swift_willThrow();
      }
    }
  }

  else
  {

    sub_22B3E52A8();
    swift_allocError();
    *v2 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22B3E3940(uint64_t a1, int64_t a2)
{
  v3 = *(a1 + 16);
  v4 = a2 - v3;
  if (a2 > v3)
  {
    if (a2 - v3 >= 0)
    {
      v5 = sub_22B3F67B4();
      *(v5 + 16) = v4;
      bzero((v5 + 32), 8 * v4);

      sub_22B3CB5B0(v6);
      return v5;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_unknownObjectRelease();
    sub_22B3E11D4(a1, a1 + 32, 0, v4);
    v13 = v12;
    swift_unknownObjectRelease();
    return v13;
  }

  if (a2 >= v3)
  {
  }

  if (a2 < 0)
  {
    goto LABEL_19;
  }

  if (v3 >= a2)
  {
    v3 = a2;
  }

  v8 = 2 * v3;
  if (a2)
  {
    v4 = v8 + 1;
  }

  else
  {
    v4 = 1;
  }

  sub_22B3F6C94();
  swift_unknownObjectRetain_n();

  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);

  if (v10 != v4 >> 1)
  {
    goto LABEL_20;
  }

  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  result = v11;
  if (!v11)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22B3E3A98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v105 = a4;
  v104 = a3;
  v107 = 0;
  v113 = sub_22B3F5F94();
  v7 = *(v113 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v113);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v102 - v12;
  MEMORY[0x28223BE20](v14);
  v112 = &v102 - v15;
  MEMORY[0x28223BE20](v16);
  v111 = &v102 - v17;
  v18 = v4[2];
  v120[0] = v4[1];
  v120[1] = v18;
  v19 = v4[4];
  v21 = v4[1];
  v20 = v4[2];
  v120[2] = v4[3];
  v120[3] = v19;
  v116 = v21;
  v117 = v20;
  v109 = v4;
  v22 = v4[4];
  v118 = v4[3];
  v119 = v22;
  sub_22B3CEED0(v120, v121);
  v23 = sub_22B3D204C();
  v121[0] = v116;
  v121[1] = v117;
  v121[2] = v118;
  v121[3] = v119;
  sub_22B3CEF90(v121);
  v24 = *(v23 + 16);
  v106 = v23;
  if (v24)
  {
    v115 = a2;
    v25 = v7;
    *&v116 = MEMORY[0x277D84F90];
    sub_22B3B799C(0, v24, 0);
    v26 = v116;
    v27 = (v23 + 32);
    v28 = *(v116 + 16);
    do
    {
      v30 = *v27++;
      v29 = v30;
      *&v116 = v26;
      v31 = *(v26 + 24);
      if (v28 >= v31 >> 1)
      {
        sub_22B3B799C((v31 > 1), v28 + 1, 1);
        v26 = v116;
      }

      *(v26 + 16) = v28 + 1;
      *(v26 + 4 * v28++ + 32) = v29;
      --v24;
    }

    while (v24);
    v110 = v26;
    v7 = v25;
    a2 = v115;
  }

  else
  {
    v110 = MEMORY[0x277D84F90];
  }

  sub_22B3F5F54();
  sub_22B3F5F44();
  sub_22B3F5F84();
  *&v116 = a1;
  *(&v116 + 1) = a2;
  sub_22B3F5F34();
  sub_22B3F5F74();
  v32 = *(v7 + 8);
  v33 = v113;
  v32(v10, v113);
  sub_22B3B4258();
  v34 = sub_22B3F69D4();
  v108 = v7 + 8;
  v103 = v32;
  v32(v13, v33);
  v35 = 0;
  v36 = *(v34 + 16);
  v37 = MEMORY[0x277D84F90];
LABEL_9:
  v38 = (v34 + 40 + 16 * v35);
  while (v36 != v35)
  {
    if (v35 >= *(v34 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      swift_once();
      goto LABEL_31;
    }

    ++v35;
    v40 = *(v38 - 1);
    v39 = *v38;
    v38 += 2;
    v41 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v41 = v40 & 0xFFFFFFFFFFFFLL;
    }

    if (v41)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v116 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22B3B791C(0, *(v37 + 16) + 1, 1);
        v37 = v116;
      }

      v44 = *(v37 + 16);
      v43 = *(v37 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_22B3B791C((v43 > 1), v44 + 1, 1);
        v37 = v116;
      }

      *(v37 + 16) = v44 + 1;
      v45 = v37 + 16 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v39;
      goto LABEL_9;
    }
  }

  v46 = 0;
  v115 = *(v37 + 16);
  v47 = (v109 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_catMap);
  v48 = v37 + 40;
  v114 = MEMORY[0x277D84F90];
  v102 = v37 + 40;
LABEL_21:
  v49 = (v48 + 16 * v46);
  while (v115 != v46)
  {
    if (v46 >= *(v37 + 16))
    {
      goto LABEL_50;
    }

    ++v46;
    v50 = v37;
    v51 = v49 + 2;
    v52 = *(v49 - 1);
    v53 = *v49;
    v54 = v47[4];
    __swift_project_boxed_opaque_existential_0(v47, v47[3]);
    *&v116 = sub_22B3F65D4();
    *(&v116 + 1) = v55;

    v56 = sub_22B3F6754();
    v57 = (*(v54 + 16))(v56);
    LOBYTE(v54) = v58;

    v49 = v51;
    v37 = v50;
    if ((v54 & 1) == 0)
    {
      v59 = v114;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_22B3C199C(0, *(v59 + 2) + 1, 1, v59);
      }

      v114 = v59;
      v61 = *(v59 + 2);
      v60 = *(v59 + 3);
      if (v61 >= v60 >> 1)
      {
        v114 = sub_22B3C199C((v60 > 1), v61 + 1, 1, v114);
      }

      v62 = v114;
      *(v114 + 2) = v61 + 1;
      *&v62[8 * v61 + 32] = v57;
      v48 = v102;
      goto LABEL_21;
    }
  }

  if (qword_28140BFC8 != -1)
  {
    goto LABEL_51;
  }

LABEL_31:
  v63 = sub_22B3F6464();
  __swift_project_value_buffer(v63, qword_28140D680);
  v64 = v114;

  v65 = sub_22B3F6444();
  v66 = sub_22B3F68B4();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *&v116 = v68;
    *v67 = 136315138;
    v69 = MEMORY[0x2318900A0](v64, MEMORY[0x277D83B88]);
    v71 = sub_22B3BDABC(v69, v70, &v116);

    *(v67 + 4) = v71;
    v64 = v114;
    _os_log_impl(&dword_22B3A7000, v65, v66, "LSTM Token IDs: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x231890C40](v68, -1, -1);
    MEMORY[0x231890C40](v67, -1, -1);
  }

  v72 = sub_22B3E3940(v64, 256);
  v73 = *(v72 + 16);
  v74 = MEMORY[0x277D84F90];
  if (v73)
  {
    *&v116 = MEMORY[0x277D84F90];
    sub_22B3B799C(0, v73, 0);
    v74 = v116;
    v75 = (v72 + 32);
    v76 = *(v116 + 16);
    do
    {
      v78 = *v75++;
      v77 = v78;
      *&v116 = v74;
      v79 = *(v74 + 24);
      if (v76 >= v79 >> 1)
      {
        sub_22B3B799C((v79 > 1), v76 + 1, 1);
        v74 = v116;
      }

      *(v74 + 16) = v76 + 1;
      *(v74 + 4 * v76++ + 32) = v77;
      --v73;
    }

    while (v73);
  }

  *&v116 = v74;

  sub_22B3CB4C4(v80);
  v81 = v116;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE290, &unk_22B3F88E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3F79B0;
  v83 = HIBYTE(v105) & 0xF;
  if ((v105 & 0x2000000000000000) == 0)
  {
    v83 = v104 & 0xFFFFFFFFFFFFLL;
  }

  if (v83)
  {
    v84 = *(v109 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_domainHelper);
    v85 = inited;
    sub_22B3B6414(v104, v105);
    v86 = sub_22B3B568C();

    inited = v85;
    v87 = v86;
  }

  else
  {
    v87 = -1.0;
  }

  *(inited + 32) = v87;
  *&v116 = v81;
  sub_22B3CB4C4(inited);
  v88 = v116;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE420, &unk_22B3F9AB8);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_22B3F9AA0;
  sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
  *(v89 + 32) = sub_22B3F6964();
  *(v89 + 40) = sub_22B3F6964();
  v90 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v91 = v89;
  v92 = v107;
  v93 = sub_22B3E0294(v91, 65600);
  if (v92)
  {

    goto LABEL_53;
  }

  v94 = v93;
  if (!v93)
  {
LABEL_53:
    result = sub_22B3F6B14();
    __break(1u);
    return result;
  }

  v95 = *(v88 + 16);
  if (v95)
  {
    for (i = 0; i != v95; ++i)
    {
      v97 = *(v88 + 32 + 4 * i);
      v98 = sub_22B3F6834();
      [v94 setObject:v98 atIndexedSubscript:i];
    }
  }

  v99 = v113;
  v100 = v103;
  v103(v112, v113);
  v100(v111, v99);
  return v94;
}

uint64_t sub_22B3E4510(void *a1)
{
  v2 = sub_22B3CC1DC(MEMORY[0x277D84F90]);
  v3 = [a1 count];
  if (__OFSUB__(v3, 1))
  {
    goto LABEL_20;
  }

  if (((v3 - 1) & 0x8000000000000000) == 0)
  {
    v4 = v3;
    v5 = [a1 objectAtIndexedSubscript_];
    [v5 doubleValue];
    v7 = v6;

    v8 = &unk_283F053F0;
    v9 = 1;
    while (1)
    {
      v11 = *(v8 - 1);
      v10 = *v8;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_22B3B79DC(v11, v10);
      v15 = v2[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v19 = v14;
      if (v2[3] < v18)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_9;
      }

      v22 = v13;
      sub_22B3B9BB0();
      v13 = v22;
      if ((v19 & 1) == 0)
      {
LABEL_13:
        v2[(v13 >> 6) + 8] |= 1 << v13;
        v23 = (v2[6] + 16 * v13);
        *v23 = v11;
        v23[1] = v10;
        *(v2[7] + 8 * v13) = v7;
        v24 = v2[2];
        v17 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v17)
        {
          goto LABEL_19;
        }

        v2[2] = v25;
        if (v4 == v9)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_10:
      v21 = v13;

      *(v2[7] + 8 * v21) = v7;
      if (v4 == v9)
      {
        goto LABEL_17;
      }

LABEL_15:
      v26 = [a1 objectAtIndexedSubscript_];
      [v26 doubleValue];
      v7 = v27;

      ++v9;
      v8 += 2;
      if (v9 == 6)
      {
        __break(1u);
LABEL_17:
        swift_arrayDestroy();
        return v2;
      }
    }

    sub_22B3B8C5C(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_22B3B79DC(v11, v10);
    if ((v19 & 1) != (v20 & 1))
    {
      goto LABEL_22;
    }

LABEL_9:
    if ((v19 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_22B3F6CC4();
  __break(1u);
  return result;
}

char *sub_22B3E475C()
{
  v0 = sub_22B3B4258();
  v1 = MEMORY[0x231890330](64, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v0);
  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = MEMORY[0x277D84F90];
    sub_22B3B79BC(0, v2, 0);
    v3 = v27;
    v4 = sub_22B3B63C0();
    v5 = (v1 + 56);
    v6 = MEMORY[0x277D83E40];
    do
    {
      v24 = *(v5 - 3);
      v25 = *(v5 - 1);
      v26 = *v5;

      v7 = MEMORY[0x231890330](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, v6, v4);

      v9 = *(v27 + 16);
      v8 = *(v27 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_22B3B79BC((v8 > 1), v9 + 1, 1);
      }

      *(v27 + 16) = v9 + 1;
      *(v27 + 8 * v9 + 32) = v7;
      v5 += 4;
      --v2;
    }

    while (v2);

    v11 = *(v27 + 16);
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_25:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE460, &qword_22B3F9C08);
    sub_22B3D0990(&qword_28140BF98, &qword_27D8BE460, &qword_22B3F9C08);
    sub_22B3B63C0();
    v23 = sub_22B3F6774();

    return v23;
  }

  v3 = MEMORY[0x277D84F90];
  v11 = *(MEMORY[0x277D84F90] + 16);
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_7:
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v12 < *(v3 + 16))
  {
    v14 = *(v3 + 32 + 8 * v12);
    v15 = *(v14 + 16);
    v16 = *(v13 + 2);
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      goto LABEL_27;
    }

    v18 = *(v3 + 32 + 8 * v12);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v17 <= *(v13 + 3) >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v19 = v16 + v15;
      }

      else
      {
        v19 = v16;
      }

      result = sub_22B3C1890(result, v19, 1, v13);
      v13 = result;
      if (*(v14 + 16))
      {
LABEL_20:
        if ((*(v13 + 3) >> 1) - *(v13 + 2) < v15)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v20 = *(v13 + 2);
          v21 = __OFADD__(v20, v15);
          v22 = v20 + v15;
          if (v21)
          {
            goto LABEL_30;
          }

          *(v13 + 2) = v22;
        }

        goto LABEL_9;
      }
    }

    if (v15)
    {
      goto LABEL_28;
    }

LABEL_9:
    if (v11 == ++v12)
    {
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
  return result;
}

uint64_t sub_22B3E4A64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v21 = MEMORY[0x277D84F90];
    sub_22B3B799C(0, v3, 0);
    v4 = v21;
    v6 = (a1 + 32);
    v7 = *(v21 + 16);
    do
    {
      v9 = *v6++;
      v8 = v9;
      v10 = *(v21 + 24);
      if (v7 >= v10 >> 1)
      {
        sub_22B3B799C((v10 > 1), v7 + 1, 1);
      }

      *(v21 + 16) = v7 + 1;
      *(v21 + 4 * v7++ + 32) = v8;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE420, &unk_22B3F9AB8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22B3F9AA0;
  sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
  *(v11 + 32) = sub_22B3F6964();
  *(v11 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v12 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v13 = sub_22B3E0294(v11, 65600);
  if (v13)
  {
    v14 = *(v4 + 16);
    if (v14)
    {
      for (i = 0; i != v14; ++i)
      {
        v16 = *(v4 + 32 + 4 * i);
        v17 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        LODWORD(v18) = v16;
        v19 = [v17 initWithFloat_];
        [v13 setObject:v19 atIndexedSubscript:i];
      }
    }

    return v13;
  }

  else
  {
    result = sub_22B3F6B14();
    __break(1u);
  }

  return result;
}

uint64_t sub_22B3E4CAC(void *a1)
{
  v2 = sub_22B3CC1DC(MEMORY[0x277D84F90]);
  v3 = [a1 count];
  if (__OFSUB__(v3, 1))
  {
    goto LABEL_20;
  }

  if (((v3 - 1) & 0x8000000000000000) == 0)
  {
    v4 = v3;
    v5 = [a1 objectAtIndexedSubscript_];
    [v5 doubleValue];
    v7 = v6;

    v8 = &aCalendar_0[8];
    v9 = 1;
    while (1)
    {
      v11 = *(v8 - 1);
      v10 = *v8;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_22B3B79DC(v11, v10);
      v15 = v2[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v19 = v14;
      if (v2[3] < v18)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_9;
      }

      v22 = v13;
      sub_22B3B9BB0();
      v13 = v22;
      if ((v19 & 1) == 0)
      {
LABEL_13:
        v2[(v13 >> 6) + 8] |= 1 << v13;
        v23 = (v2[6] + 16 * v13);
        *v23 = v11;
        v23[1] = v10;
        *(v2[7] + 8 * v13) = v7;
        v24 = v2[2];
        v17 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v17)
        {
          goto LABEL_19;
        }

        v2[2] = v25;
        if (v4 == v9)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_10:
      v21 = v13;

      *(v2[7] + 8 * v21) = v7;
      if (v4 == v9)
      {
        goto LABEL_17;
      }

LABEL_15:
      v26 = [a1 objectAtIndexedSubscript_];
      [v26 doubleValue];
      v7 = v27;

      ++v9;
      v8 += 2;
      if (v9 == 8)
      {
        __break(1u);
LABEL_17:
        swift_arrayDestroy();
        return v2;
      }
    }

    sub_22B3B8C5C(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_22B3B79DC(v11, v10);
    if ((v19 & 1) != (v20 & 1))
    {
      goto LABEL_22;
    }

LABEL_9:
    if ((v19 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_22B3F6CC4();
  __break(1u);
  return result;
}

uint64_t sub_22B3E4F00(uint64_t a1)
{
  v2 = sub_22B3CC1DC(MEMORY[0x277D84F90]);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_10:
    v10 = __clz(__rbit64(v6)) | (v8 << 6);
    sub_22B3E51F8(*(a1 + 48) + 40 * v10, &v39);
    v11 = *(*(a1 + 56) + 8 * v10);
    v12 = v40;
    v32 = v39;
    v34 = v41;
    v13 = v41;
    v14 = v11;
    if (!v13)
    {
LABEL_24:

      return v2;
    }

    v15 = v14;
    v39 = v32;
    v6 &= v6 - 1;
    v40 = v12;
    v41 = v34;
    sub_22B3F6A74();
    if (swift_dynamicCast())
    {
      v37 = 0;
      v38 = 1;
      MEMORY[0x231890110](v15, &v37);
      if (v38 == 1)
      {
        sub_22B3E5254(&v39);
      }

      else
      {
        v33 = a1;
        v16 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v2;
        v18 = sub_22B3B79DC(v35, v36);
        v20 = v2[2];
        v21 = (v19 & 1) == 0;
        v22 = __OFADD__(v20, v21);
        v23 = v20 + v21;
        if (v22)
        {
          goto LABEL_26;
        }

        v24 = v19;
        if (v2[3] >= v23)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_19;
          }

          v27 = v18;
          sub_22B3B9BB0();
          v18 = v27;
          if ((v24 & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_20:
          v26 = v18;

          v2 = v37;
          *(v37[7] + 8 * v26) = v16;

          sub_22B3E5254(&v39);
          a1 = v33;
        }

        else
        {
          sub_22B3B8C5C(v23, isUniquelyReferenced_nonNull_native);
          v18 = sub_22B3B79DC(v35, v36);
          if ((v24 & 1) != (v25 & 1))
          {
            goto LABEL_28;
          }

LABEL_19:
          if (v24)
          {
            goto LABEL_20;
          }

LABEL_22:
          v2 = v37;
          v37[(v18 >> 6) + 8] |= 1 << v18;
          v28 = (v2[6] + 16 * v18);
          *v28 = v35;
          v28[1] = v36;
          *(v2[7] + 8 * v18) = v16;

          sub_22B3E5254(&v39);
          v29 = v2[2];
          v22 = __OFADD__(v29, 1);
          v30 = v29 + 1;
          if (v22)
          {
            goto LABEL_27;
          }

          v2[2] = v30;
          a1 = v33;
        }
      }
    }

    else
    {
      sub_22B3E5254(&v39);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      goto LABEL_24;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_22B3F6CC4();
  __break(1u);
  return result;
}

unint64_t sub_22B3E52A8()
{
  result = qword_27D8BE448;
  if (!qword_27D8BE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE448);
  }

  return result;
}

double sub_22B3E52FC(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 217) = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
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

unint64_t sub_22B3E533C()
{
  result = qword_27D8BE470;
  if (!qword_27D8BE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE470);
  }

  return result;
}

uint64_t sub_22B3E5394@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_22B3F6184();
  v177 = *(v6 - 8);
  v178 = v6;
  v7 = v177[8];
  v8 = MEMORY[0x28223BE20](v6);
  v166 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v168 = &v151 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v169 = &v151 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v170 = &v151 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v171 = &v151 - v17;
  MEMORY[0x28223BE20](v16);
  v172 = &v151 - v18;
  v19 = type metadata accessor for BloomFilterData(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v176 = &v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for BlackPearlModel(0);
  v22 = *(*(v167 - 1) + 64);
  v23 = MEMORY[0x28223BE20](v167);
  v175 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v185 = &v151 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v184 = &v151 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v187 = &v151 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v186 = &v151 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v182 = &v151 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v151 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE480, qword_22B3F9EB8);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v181 = (&v151 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x28223BE20](v39);
  v180 = (&v151 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v151 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = (&v151 - v46);
  LODWORD(v179) = *a2;
  type metadata accessor for BlackPearlSharedDefaults();
  swift_allocObject();
  v48 = sub_22B3BA428();
  v162 = a3;
  *a3 = v48;

  v183 = a1;
  static BlackPearlTrialLevels.buildVersion(trialClient:)(a1, &v191);
  v209 = v197;
  v210 = v198;
  v211 = v199;
  v212 = v200;
  v213 = v191;
  v205 = v193;
  v206 = v194;
  v207 = v195;
  v208 = v196;
  v49 = v201;
  v50 = v202;
  v51 = v203;
  v52 = v204;
  v173 = *(&v192 + 1);
  v174 = v192;
  sub_22B3BA6F4(&v191);

  v158 = v52;
  if (v52)
  {
    goto LABEL_43;
  }

  v160 = v50;
  v161 = v49;
  *&v191 = v49;
  *(&v191 + 1) = v50;
  v159 = v51;
  *&v192 = v51;
  v53 = BlackPearlCategorizationVersion.getVersionString()();
  v54 = *(v37 + 48);
  LOBYTE(v191) = 0;
  v55 = v183;
  object = v53._object;
  sub_22B3E72A0(v47, (v47 + v54), v183, &v191, v53._countAndFlagsBits, v53._object);
  sub_22B3E8E9C(v47, v45);
  v56 = *(v37 + 48);
  v164 = v36;
  sub_22B3A9CCC(v45, v36, type metadata accessor for BlackPearlModel);
  sub_22B3BD990(&v45[v56]);
  sub_22B3E8E9C(v47, v45);
  sub_22B3A9CCC(&v45[*(v37 + 48)], v182, type metadata accessor for BlackPearlModel);
  sub_22B3BD990(v45);
  v57 = v179;
  if (v179 == 4 || v179 == 1)
  {
    BlackPearlModel.loadModel()();
    BlackPearlModel.loadModel()();
  }

  v58 = *(v37 + 48);
  LOBYTE(v191) = 1;
  v59 = v180;
  v60 = v55;
  sub_22B3E72A0(v180, (v180 + v58), v55, &v191, v53._countAndFlagsBits, object);
  sub_22B3E8E9C(v59, v45);
  v61 = v57;
  v62 = *(v37 + 48);
  sub_22B3A9CCC(v45, v186, type metadata accessor for BlackPearlModel);
  sub_22B3BD990(&v45[v62]);
  sub_22B3E8E9C(v59, v45);
  sub_22B3A9CCC(&v45[*(v37 + 48)], v187, type metadata accessor for BlackPearlModel);
  sub_22B3BD990(v45);
  if (v61 == 4 || v61 == 2)
  {
    BlackPearlModel.loadModel()();
    BlackPearlModel.loadModel()();
  }

  v63 = *(v37 + 48);
  LOBYTE(v191) = 2;
  v64 = v181;
  sub_22B3E72A0(v181, (v181 + v63), v60, &v191, v53._countAndFlagsBits, object);
  sub_22B3E8E9C(v64, v45);
  v65 = *(v37 + 48);
  sub_22B3A9CCC(v45, v184, type metadata accessor for BlackPearlModel);
  sub_22B3BD990(&v45[v65]);
  sub_22B3E8E9C(v64, v45);
  sub_22B3A9CCC(&v45[*(v37 + 48)], v185, type metadata accessor for BlackPearlModel);
  sub_22B3BD990(v45);
  if ((v61 - 3) <= 1)
  {
    BlackPearlModel.loadModel()();
    BlackPearlModel.loadModel()();
  }

  v66 = sub_22B3F6564();
  v179 = "P";
  v67 = sub_22B3F6564();
  v68 = [v60 levelForFactor:v66 withNamespaceName:v67];

  if (!v68)
  {
    goto LABEL_43;
  }

  v69 = [v68 directoryValue];

  if (!v69)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v70 = [v69 path];

  if (!v70)
  {
    goto LABEL_43;
  }

  v157 = v47;
  v71 = sub_22B3F6594();
  v73 = v72;

  *&v191 = 47;
  *(&v191 + 1) = 0xE100000000000000;
  v189 = v71;
  v190 = v73;
  v156 = v73;

  v189 = sub_22B3F6754();
  v190 = v74;
  sub_22B3F6664();
  v165 = 0x800000022B3FA4F0;
  *&v191 = 0xD000000000000010;
  *(&v191 + 1) = 0x800000022B3FA4F0;
  v189 = sub_22B3F6754();
  v190 = v75;
  sub_22B3F6664();
  *&v191 = 0x616B6361706C6D2ELL;
  *(&v191 + 1) = 0xEA00000000006567;
  v189 = sub_22B3F6754();
  v190 = v76;
  sub_22B3F6664();
  v77 = v190;
  v78 = v167;
  v79 = v167[7];
  v80 = v178;
  v81 = v177[7];
  v82 = v175;
  v81(&v175[v79], 1, 1, v178);
  v163 = v78[8];
  v83 = v165;
  *v82 = 0xD000000000000010;
  *(v82 + 1) = v83;
  v84 = v173;
  *(v82 + 2) = v174;
  *(v82 + 3) = v84;
  v85 = v78[6];

  v155 = v77;
  sub_22B3F60D4();
  sub_22B3B4B3C(&v82[v79], &qword_27D8BE0A0, &qword_22B3F7FD0);
  v81(&v82[v79], 1, 1, v80);
  *&v82[v163] = 0;
  v82[v78[9]] = 0;
  BlackPearlModel.loadModel()();
  v86 = v183;
  static BlackPearlTrialLevels.buildThresholds(trialClient:)(v183, &v191);
  static BlackPearlTrialLevels.buildBloomFilters(trialClient:)(v86, v176);
  v87 = sub_22B3F6564();
  v88 = sub_22B3F6564();
  v89 = [v86 levelForFactor:v87 withNamespaceName:v88];

  if (!v89)
  {
    goto LABEL_43;
  }

  v90 = [v89 fileValue];
  if (!v90)
  {
    goto LABEL_36;
  }

  v91 = v90;
  v92 = [v90 path];

  if (!v92)
  {
    goto LABEL_43;
  }

  sub_22B3F6594();
  v94 = v93;

  v163 = v94;
  sub_22B3F60D4();
  v95 = sub_22B3F6564();
  v96 = sub_22B3F6564();
  v97 = [v86 levelForFactor:v95 withNamespaceName:v96];

  if (!v97)
  {
    goto LABEL_43;
  }

  v98 = [v97 fileValue];
  if (!v98)
  {
    goto LABEL_37;
  }

  v99 = v98;
  v100 = [v98 path];

  if (!v100)
  {
    goto LABEL_43;
  }

  sub_22B3F6594();
  v102 = v101;

  v154 = v102;
  sub_22B3F60D4();
  v103 = sub_22B3F6564();
  v104 = sub_22B3F6564();
  v105 = [v86 levelForFactor:v103 withNamespaceName:v104];

  v167 = v105;
  if (!v105)
  {
    goto LABEL_43;
  }

  v106 = [v167 fileValue];
  if (!v106)
  {
    goto LABEL_38;
  }

  v107 = v106;
  v108 = [v106 path];

  if (!v108)
  {
    goto LABEL_43;
  }

  sub_22B3F6594();
  v110 = v109;

  v153 = v110;
  sub_22B3F60D4();
  v111 = sub_22B3F6564();
  v112 = sub_22B3F6564();
  v113 = [v86 levelForFactor:v111 withNamespaceName:v112];

  v165 = v113;
  if (!v113)
  {
    goto LABEL_43;
  }

  v114 = [v165 fileValue];
  if (!v114)
  {
    goto LABEL_39;
  }

  v115 = v114;
  v116 = [v114 path];

  if (!v116)
  {
    goto LABEL_43;
  }

  v152 = v97;
  sub_22B3F6594();

  sub_22B3F60D4();
  v117 = sub_22B3F6564();
  v118 = sub_22B3F6564();
  v119 = [v86 levelForFactor:v117 withNamespaceName:v118];

  if (!v119)
  {
    goto LABEL_43;
  }

  v120 = [v119 fileValue];
  if (!v120)
  {
    goto LABEL_40;
  }

  v121 = v120;
  v122 = [v120 path];

  if (!v122)
  {
    goto LABEL_43;
  }

  v151 = v89;
  sub_22B3F6594();

  sub_22B3F60D4();
  v123 = sub_22B3F6564();
  v124 = sub_22B3F6564();
  v125 = [v86 levelForFactor:v123 withNamespaceName:v124];

  if (!v125)
  {
    goto LABEL_43;
  }

  v126 = [v125 fileValue];
  if (!v126)
  {
    goto LABEL_41;
  }

  v127 = v126;
  v128 = [v126 path];

  if (!v128)
  {
    goto LABEL_43;
  }

  sub_22B3F6594();

  sub_22B3F60D4();
  v129 = sub_22B3F6564();
  v130 = sub_22B3F6564();
  v131 = [v86 levelForFactor:v129 withNamespaceName:v130];

  if (!v131)
  {
    goto LABEL_43;
  }

  v132 = [v131 fileValue];
  if (!v132)
  {
    goto LABEL_42;
  }

  v133 = v132;
  v134 = [v132 path];

  if (v134)
  {

    sub_22B3F6594();

    v135 = v162 + *(type metadata accessor for BlackPearlTrialLevels() + 20);
    v136 = type metadata accessor for BlackPearlLevels();
    v137 = v135 + v136[20];
    sub_22B3F60D4();

    sub_22B3B4B3C(v181, &qword_27D8BE480, qword_22B3F9EB8);
    sub_22B3B4B3C(v180, &qword_27D8BE480, qword_22B3F9EB8);
    sub_22B3B4B3C(v157, &qword_27D8BE480, qword_22B3F9EB8);
    sub_22B3A9CCC(v164, v135, type metadata accessor for BlackPearlModel);
    sub_22B3A9CCC(v186, v135 + v136[5], type metadata accessor for BlackPearlModel);
    sub_22B3A9CCC(v184, v135 + v136[6], type metadata accessor for BlackPearlModel);
    sub_22B3A9CCC(v187, v135 + v136[9], type metadata accessor for BlackPearlModel);
    sub_22B3A9CCC(v185, v135 + v136[10], type metadata accessor for BlackPearlModel);
    sub_22B3A9CCC(v175, v135 + v136[7], type metadata accessor for BlackPearlModel);
    sub_22B3A9CCC(v182, v135 + v136[8], type metadata accessor for BlackPearlModel);
    v138 = v135 + v136[11];
    *v138 = v213;
    v139 = v173;
    *(v138 + 16) = v174;
    *(v138 + 24) = v139;
    v140 = v210;
    *(v138 + 96) = v209;
    *(v138 + 112) = v140;
    v141 = v212;
    *(v138 + 128) = v211;
    *(v138 + 144) = v141;
    v142 = v206;
    *(v138 + 32) = v205;
    *(v138 + 48) = v142;
    v143 = v208;
    *(v138 + 64) = v207;
    *(v138 + 80) = v143;
    v144 = v160;
    *(v138 + 160) = v161;
    *(v138 + 168) = v144;
    *(v138 + 176) = v159;
    *(v138 + 184) = v158;
    v145 = v135 + v136[12];
    v146 = v194;
    *(v145 + 32) = v193;
    *(v145 + 48) = v146;
    *(v145 + 64) = v195;
    *(v145 + 80) = v196;
    v147 = v192;
    *v145 = v191;
    *(v145 + 16) = v147;
    sub_22B3A9CCC(v176, v135 + v136[13], type metadata accessor for BloomFilterData);
    v148 = v178;
    v149 = v177[4];
    v149(v135 + v136[14], v172, v178);
    v149(v135 + v136[15], v171, v148);
    v149(v135 + v136[16], v170, v148);
    v149(v135 + v136[17], v169, v148);
    v149(v135 + v136[18], v168, v148);
    return (v149)(v135 + v136[19], v166, v148);
  }

LABEL_43:
  result = sub_22B3F6B14();
  __break(1u);
  return result;
}

uint64_t BlackPearlTrialLevels.getBlackPearlLevels()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BlackPearlTrialLevels() + 20);

  return sub_22B3B2A74(v3, a1);
}

uint64_t type metadata accessor for BlackPearlTrialLevels()
{
  result = qword_28140C4C8;
  if (!qword_28140C4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NLPLevel.hashValue.getter()
{
  v1 = *v0;
  sub_22B3F6D34();
  MEMORY[0x231890640](v1);
  return sub_22B3F6D54();
}

void static BlackPearlTrialLevels.buildVersion(trialClient:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22B3F6564();
  v5 = [a1 experimentIdentifiersWithNamespaceName_];

  v6 = sub_22B3F6564();
  v80 = [a1 rolloutIdentifiersWithNamespaceName_];

  v7 = sub_22B3F6564();
  v8 = sub_22B3F6564();
  v9 = [a1 levelForFactor:v7 withNamespaceName:v8];

  if (!v9 || (v10 = [v9 stringValue], v9, !v10))
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v56 = sub_22B3F6464();
    __swift_project_value_buffer(v56, qword_28140D680);
    v57 = sub_22B3F6444();
    v58 = sub_22B3F68C4();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_44;
    }

    v59 = "Model version not found";
    goto LABEL_43;
  }

  v77 = sub_22B3F6594();
  v78 = v11;

  v12 = sub_22B3F6564();
  v13 = sub_22B3F6564();
  v14 = [a1 levelForFactor:v12 withNamespaceName:v13];

  if (!v14 || (v15 = [v14 stringValue], v14, !v15))
  {

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v60 = sub_22B3F6464();
    __swift_project_value_buffer(v60, qword_28140D680);
    v57 = sub_22B3F6444();
    v58 = sub_22B3F68C4();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_44;
    }

    v59 = "Sender Model Version not found";
    goto LABEL_43;
  }

  v75 = sub_22B3F6594();
  v76 = v16;

  v17 = sub_22B3F6564();
  v18 = sub_22B3F6564();
  v19 = [a1 levelForFactor:v17 withNamespaceName:v18];

  if (!v19 || (v20 = [v19 stringValue], v19, !v20))
  {

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v61 = sub_22B3F6464();
    __swift_project_value_buffer(v61, qword_28140D680);
    v57 = sub_22B3F6444();
    v58 = sub_22B3F68C4();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_44;
    }

    v59 = "TS Model Version not found";
    goto LABEL_43;
  }

  v73 = sub_22B3F6594();
  v74 = v21;

  v22 = sub_22B3F6564();
  v23 = sub_22B3F6564();
  v24 = [a1 levelForFactor:v22 withNamespaceName:v23];

  if (!v24 || (v25 = [v24 stringValue], v24, !v25))
  {

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v62 = sub_22B3F6464();
    __swift_project_value_buffer(v62, qword_28140D680);
    v57 = sub_22B3F6444();
    v58 = sub_22B3F68C4();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_44;
    }

    v59 = "Rule Version not found";
    goto LABEL_43;
  }

  v71 = sub_22B3F6594();
  v72 = v26;

  v27 = sub_22B3F6564();
  v28 = sub_22B3F6564();
  v29 = [a1 levelForFactor:v27 withNamespaceName:v28];

  if (!v29 || (v30 = [v29 stringValue], v29, !v30))
  {

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v63 = sub_22B3F6464();
    __swift_project_value_buffer(v63, qword_28140D680);
    v57 = sub_22B3F6444();
    v58 = sub_22B3F68C4();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_44;
    }

    v59 = "BreakThrough version not found";
    goto LABEL_43;
  }

  v69 = sub_22B3F6594();
  v70 = v31;

  v32 = sub_22B3F6564();
  v33 = sub_22B3F6564();
  v34 = [a1 levelForFactor:v32 withNamespaceName:v33];

  if (v34)
  {
    v35 = [v34 stringValue];

    if (v35)
    {
      sub_22B3F6594();

      v36 = v80;
      v79 = v5;
      if (v5)
      {
        v37 = [v5 experimentId];
        v38 = sub_22B3F6594();
        v67 = v39;
        v68 = v38;

        v40 = [v5 treatmentId];
        v41 = v5;
        v5 = sub_22B3F6594();
        v43 = v42;

        v44 = [v41 deploymentId];
        if (v80)
        {
LABEL_15:
          v45 = [v80 deploymentId];
          v46 = [v80 factorPackId];
          v47 = sub_22B3F6594();
          v49 = v48;

          v50 = [v80 rolloutId];
          v51 = sub_22B3F6594();
          v53 = v52;

          v36 = v80;
LABEL_18:
          *a2 = v77;
          *(a2 + 8) = v78;
          *(a2 + 16) = v75;
          *(a2 + 24) = v76;
          *(a2 + 32) = v73;
          *(a2 + 40) = v74;
          *(a2 + 48) = v71;
          *(a2 + 56) = v72;
          *(a2 + 64) = v69;
          *(a2 + 72) = v70;
          *(a2 + 96) = v5;
          *(a2 + 104) = v43;
          *(a2 + 80) = v68;
          *(a2 + 88) = v67;
          *(a2 + 112) = v44;
          *(a2 + 120) = v45;
          *(a2 + 128) = v47;
          *(a2 + 136) = v49;
          *(a2 + 144) = v51;
          *(a2 + 152) = v53;
          sub_22B3BB2B8(&v81);

          v54 = v82;
          v55 = v83;
          *(a2 + 160) = v81;
          *(a2 + 176) = v54;
          *(a2 + 184) = v55;
          return;
        }
      }

      else
      {
        v43 = 0;
        v67 = 0;
        v68 = 0;
        v44 = -1;
        if (v80)
        {
          goto LABEL_15;
        }
      }

      v51 = 0;
      v53 = 0;
      v47 = 0;
      v49 = 0;
      v45 = -1;
      goto LABEL_18;
    }
  }

  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v64 = sub_22B3F6464();
  __swift_project_value_buffer(v64, qword_28140D680);
  v57 = sub_22B3F6444();
  v58 = sub_22B3F68C4();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = "Categorization version not found";
LABEL_43:
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_22B3A7000, v57, v58, v59, v65, 2u);
    MEMORY[0x231890C40](v65, -1, -1);
  }

LABEL_44:

  sub_22B3B30D4();
  swift_allocError();
  *v66 = 1;
  swift_willThrow();

  sub_22B3F6AC4();
  MEMORY[0x23188FF80](0xD000000000000028, 0x800000022B3FBFB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A8, &qword_22B3F7A70);
  sub_22B3F6B04();
  sub_22B3F6B14();
  __break(1u);
}

uint64_t sub_22B3E72A0(unint64_t *a1, unint64_t *a2, void *a3, char *a4, unint64_t a5, unint64_t a6)
{
  v11 = *a4;
  type metadata accessor for TrialLoader();
  LOBYTE(v39) = v11;
  static TrialLoader.getModelFactors(forLanguageModel:)(&v39, v41);
  v36 = v41[2];
  v37 = v41[3];

  v12 = sub_22B3F6564();

  v13 = sub_22B3F6564();
  v14 = [a3 levelForFactor:v12 withNamespaceName:v13];

  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = [v14 directoryValue];

  if (!v15)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = [v15 path];

  if (!v16)
  {
    goto LABEL_10;
  }

  v34 = a5;
  v35 = a2;
  v33 = a6;
  sub_22B3F6594();

  v39 = 47;
  v40 = 0xE100000000000000;

  sub_22B3F6754();
  sub_22B3F6664();
  v39 = v36;
  v40 = v37;
  sub_22B3F6754();
  sub_22B3F6664();
  v39 = 0x616B6361706C6D2ELL;
  v40 = 0xEA00000000006567;
  sub_22B3F6754();
  sub_22B3F6664();
  v17 = v41[6];
  v18 = v41[7];

  v19 = sub_22B3F6564();

  v20 = sub_22B3F6564();
  v21 = [a3 levelForFactor:v19 withNamespaceName:v20];

  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = [v21 directoryValue];

  if (!v22)
  {
    goto LABEL_9;
  }

  v23 = [v22 path];

  if (v23)
  {

    sub_22B3F6594();

    v39 = 47;
    v40 = 0xE100000000000000;
    sub_22B3F6754();
    sub_22B3F6664();
    v39 = v17;
    v40 = v18;
    sub_22B3F6754();
    sub_22B3F6664();
    v39 = 0x616B6361706C6D2ELL;
    v40 = 0xEA00000000006567;
    sub_22B3F6754();
    sub_22B3F6664();
    v24 = type metadata accessor for BlackPearlModel(0);
    v25 = v24[7];
    v26 = sub_22B3F6184();
    v27 = *(*(v26 - 8) + 56);
    v27(a1 + v25, 1, 1, v26);
    v32 = v24[8];
    *a1 = v36;
    a1[1] = v37;
    a1[2] = a5;
    a1[3] = v33;
    v28 = v24[6];

    sub_22B3F60D4();

    sub_22B3B4B3C(a1 + v25, &qword_27D8BE0A0, &qword_22B3F7FD0);
    v27(a1 + v25, 1, 1, v26);
    *(a1 + v32) = 0;
    *(a1 + v24[9]) = 0;
    v29 = v24[7];
    v27(v35 + v29, 1, 1, v26);
    v38 = v24[8];
    *v35 = v17;
    v35[1] = v18;
    v35[2] = v34;
    v35[3] = v33;
    v30 = v24[6];

    sub_22B3F60D4();
    sub_22B3B30A4(v41);

    sub_22B3B4B3C(v35 + v29, &qword_27D8BE0A0, &qword_22B3F7FD0);
    result = (v27)(v35 + v29, 1, 1, v26);
    *(v35 + v38) = 0;
    *(v35 + v24[9]) = 0;
    return result;
  }

LABEL_10:
  result = sub_22B3F6B14();
  __break(1u);
  return result;
}

void static BlackPearlTrialLevels.buildThresholds(trialClient:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22B3F6564();
  v5 = sub_22B3F6564();
  v6 = [a1 levelForFactor:v4 withNamespaceName:v5];

  if (!v6)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v62 = sub_22B3F6464();
    __swift_project_value_buffer(v62, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "Threshold Commerce not found";
    goto LABEL_57;
  }

  [v6 doubleValue];
  v8 = v7;

  v9 = sub_22B3F6564();
  v10 = sub_22B3F6564();
  v11 = [a1 levelForFactor:v9 withNamespaceName:v10];

  if (!v11)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v66 = sub_22B3F6464();
    __swift_project_value_buffer(v66, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "ThresholdEmployeeNews value not found";
    goto LABEL_57;
  }

  [v11 doubleValue];
  v13 = v12;

  v14 = sub_22B3F6564();
  v15 = sub_22B3F6564();
  v16 = [a1 levelForFactor:v14 withNamespaceName:v15];

  if (!v16)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v67 = sub_22B3F6464();
    __swift_project_value_buffer(v67, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "ThresholdEmployee value not found";
    goto LABEL_57;
  }

  [v16 doubleValue];
  v18 = v17;

  v19 = sub_22B3F6564();
  v20 = sub_22B3F6564();
  v21 = [a1 levelForFactor:v19 withNamespaceName:v20];

  if (!v21)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v68 = sub_22B3F6464();
    __swift_project_value_buffer(v68, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "ThresholdPersonal value not found";
    goto LABEL_57;
  }

  [v21 doubleValue];
  v23 = v22;

  v24 = sub_22B3F6564();
  v25 = sub_22B3F6564();
  v26 = [a1 levelForFactor:v24 withNamespaceName:v25];

  if (!v26)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v69 = sub_22B3F6464();
    __swift_project_value_buffer(v69, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "ThresholdP2C values ";
    goto LABEL_57;
  }

  [v26 doubleValue];
  v28 = v27;

  v29 = sub_22B3F6564();
  v30 = sub_22B3F6564();
  v31 = [a1 levelForFactor:v29 withNamespaceName:v30];

  if (!v31)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v70 = sub_22B3F6464();
    __swift_project_value_buffer(v70, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "ThresholdCorpEmployee not found";
    goto LABEL_57;
  }

  [v31 doubleValue];
  v33 = v32;

  v34 = sub_22B3F6564();
  v35 = sub_22B3F6564();
  v36 = [a1 levelForFactor:v34 withNamespaceName:v35];

  if (!v36)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v71 = sub_22B3F6464();
    __swift_project_value_buffer(v71, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "Threshold Sender is not found";
    goto LABEL_57;
  }

  v78 = v33;
  v37 = v28;
  v38 = v23;
  v39 = v18;
  v40 = v13;
  [v36 doubleValue];
  v42 = v41;

  v43 = sub_22B3F6564();
  v44 = sub_22B3F6564();
  v45 = [a1 levelForFactor:v43 withNamespaceName:v44];

  if (!v45)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v72 = sub_22B3F6464();
    __swift_project_value_buffer(v72, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "Threshold TS is not found";
    goto LABEL_57;
  }

  v46 = v8;
  [v45 doubleValue];
  v48 = v47;

  v49 = sub_22B3F6564();
  v50 = sub_22B3F6564();
  v51 = [a1 levelForFactor:v49 withNamespaceName:v50];

  if (!v51)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v73 = sub_22B3F6464();
    __swift_project_value_buffer(v73, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "Threshold Category TS is not found";
    goto LABEL_57;
  }

  [v51 doubleValue];
  v53 = v52;

  v54 = sub_22B3F6564();
  v55 = sub_22B3F6564();
  v56 = [a1 levelForFactor:v54 withNamespaceName:v55];

  if (!v56)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v74 = sub_22B3F6464();
    __swift_project_value_buffer(v74, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "Sender Max Tokens is not found";
    goto LABEL_57;
  }

  v57 = [v56 longValue];

  v58 = sub_22B3F6564();
  v59 = sub_22B3F6564();
  v60 = [a1 levelForFactor:v58 withNamespaceName:v59];

  if (v60)
  {
    v61 = [v60 longValue];

    *a2 = v46;
    a2[1] = v40;
    a2[2] = v39;
    a2[3] = v38;
    a2[4] = v37;
    a2[5] = v42;
    a2[6] = v48;
    a2[7] = v53;
    a2[8] = v78;
    a2[9] = v57;
    a2[10] = v61;
    return;
  }

  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v75 = sub_22B3F6464();
  __swift_project_value_buffer(v75, qword_28140D680);
  v63 = sub_22B3F6444();
  v64 = sub_22B3F68C4();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = "Subject Max Tokens is not found";
LABEL_57:
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_22B3A7000, v63, v64, v65, v76, 2u);
    MEMORY[0x231890C40](v76, -1, -1);
  }

LABEL_58:

  sub_22B3B30D4();
  swift_allocError();
  *v77 = 1;
  swift_willThrow();
  sub_22B3F6AC4();
  MEMORY[0x23188FF80](0xD000000000000026, 0x800000022B3FBFE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A8, &qword_22B3F7A70);
  sub_22B3F6B04();
  sub_22B3F6B14();
  __break(1u);
}

uint64_t static BlackPearlTrialLevels.buildBloomFilters(trialClient:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22B3F6184();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v47 - v8;
  v9 = sub_22B3F6564();
  v10 = sub_22B3F6564();
  v11 = [a1 levelForFactor:v9 withNamespaceName:v10];

  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = [v11 fileValue];

  if (!v12)
  {
    __break(1u);
    goto LABEL_12;
  }

  v13 = [v12 path];

  if (!v13)
  {
LABEL_14:
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v29 = sub_22B3F6464();
    __swift_project_value_buffer(v29, qword_28140D680);
    v30 = sub_22B3F6444();
    v31 = sub_22B3F68C4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22B3A7000, v30, v31, "Commerce Bloom filter file is missing", v32, 2u);
      MEMORY[0x231890C40](v32, -1, -1);
    }

    sub_22B3B30D4();
    v33 = swift_allocError();
    *v34 = 1;
    swift_willThrow();
    goto LABEL_30;
  }

  sub_22B3F6594();

  sub_22B3F60D4();
  v14 = sub_22B3F6564();
  v15 = sub_22B3F6564();
  v16 = [a1 levelForFactor:v14 withNamespaceName:v15];

  if (!v16)
  {
LABEL_19:

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v35 = sub_22B3F6464();
    __swift_project_value_buffer(v35, qword_28140D680);
    v36 = sub_22B3F6444();
    v37 = sub_22B3F68C4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22B3A7000, v36, v37, "Guaranteed list file is missing", v38, 2u);
      MEMORY[0x231890C40](v38, -1, -1);
    }

    sub_22B3B30D4();
    v33 = swift_allocError();
    *v39 = 1;
    swift_willThrow();
    (*(v47 + 8))(v50, v48);
    goto LABEL_30;
  }

  v17 = [v16 fileValue];

  if (!v17)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = [v17 path];

  if (!v18)
  {
    goto LABEL_19;
  }

  sub_22B3F6594();

  sub_22B3F60D4();
  v19 = sub_22B3F6564();
  v20 = sub_22B3F6564();
  v21 = [a1 levelForFactor:v19 withNamespaceName:v20];

  if (v21)
  {
    v22 = [v21 fileValue];

    if (v22)
    {

      v23 = [v22 path];

      if (v23)
      {
        sub_22B3F6594();

        v24 = type metadata accessor for BloomFilterData(0);
        v25 = a2 + *(v24 + 24);
        sub_22B3F60D4();

        v26 = v48;
        v27 = *(v47 + 32);
        v27(a2, v50, v48);
        return (v27)(a2 + *(v24 + 20), v49, v26);
      }

      goto LABEL_25;
    }

    goto LABEL_13;
  }

LABEL_25:
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v40 = sub_22B3F6464();
  __swift_project_value_buffer(v40, qword_28140D680);
  v41 = sub_22B3F6444();
  v42 = sub_22B3F68C4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_22B3A7000, v41, v42, "NER bloom filer file path not found", v43, 2u);
    MEMORY[0x231890C40](v43, -1, -1);
  }

  sub_22B3B30D4();
  v33 = swift_allocError();
  *v44 = 1;
  swift_willThrow();
  v45 = v48;
  v46 = *(v47 + 8);
  v46(v49, v48);
  v46(v50, v45);
LABEL_30:
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_22B3F6AC4();
  MEMORY[0x23188FF80](0xD00000000000002DLL, 0x800000022B3FC010);
  v51 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A8, &qword_22B3F7A70);
  sub_22B3F6B04();
  result = sub_22B3F6B14();
  __break(1u);
  return result;
}

void __swiftcall BlackPearlTrialLevels.getThresholds()(MCCKitCategorization::BlackPearlThreshold *__return_ptr retstr)
{
  v3 = v1 + *(type metadata accessor for BlackPearlTrialLevels() + 20);
  v4 = v3 + *(type metadata accessor for BlackPearlLevels() + 48);
  v5 = *(v4 + 48);
  *&retstr->thresholdP2C = *(v4 + 32);
  *&retstr->thresholdTS = v5;
  *&retstr->thresholdCorpEmployee = *(v4 + 64);
  retstr->tsSubjectMaxTokens = *(v4 + 80);
  v6 = *(v4 + 16);
  *&retstr->thresholdCommerce = *v4;
  *&retstr->thresholdEmployee = v6;
}

unint64_t sub_22B3E8C4C()
{
  result = qword_27D8BE478;
  if (!qword_27D8BE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE478);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NLPLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NLPLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22B3E8E18()
{
  result = type metadata accessor for BlackPearlSharedDefaults();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BlackPearlLevels();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B3E8E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE480, qword_22B3F9EB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_22B3E8F0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2E8, &qword_22B3F8B58);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22B3F9890;
  v1 = *MEMORY[0x277CD8708];
  v2 = *MEMORY[0x277CD8718];
  *(v0 + 32) = *MEMORY[0x277CD8708];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CD8810];
  v4 = *MEMORY[0x277CD87D8];
  *(v0 + 48) = *MEMORY[0x277CD8810];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CD8768];
  v6 = *MEMORY[0x277CD8728];
  *(v0 + 64) = *MEMORY[0x277CD8768];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277CD87F8];
  v33 = *MEMORY[0x277CD8840];
  v8 = *MEMORY[0x277CD8840];
  *(v0 + 80) = *MEMORY[0x277CD87F8];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x277CD8790];
  v10 = *MEMORY[0x277CD8770];
  *(v0 + 96) = *MEMORY[0x277CD8790];
  *(v0 + 104) = v10;
  v11 = *MEMORY[0x277CD8868];
  v35 = *MEMORY[0x277CD8848];
  v12 = *MEMORY[0x277CD8848];
  *(v0 + 112) = *MEMORY[0x277CD8868];
  *(v0 + 120) = v12;
  v32 = *MEMORY[0x277CD8700];
  v36 = *MEMORY[0x277CD8818];
  v13 = *MEMORY[0x277CD8818];
  *(v0 + 128) = *MEMORY[0x277CD8700];
  *(v0 + 136) = v13;
  v14 = *MEMORY[0x277CD87C0];
  v34 = *MEMORY[0x277CD86F8];
  v15 = *MEMORY[0x277CD86F8];
  *(v0 + 144) = *MEMORY[0x277CD87C0];
  *(v0 + 152) = v15;
  qword_27D8C1150 = v0;
  v16 = v1;
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v33;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v35;
  v28 = v32;
  v29 = v36;
  v30 = v14;

  return v34;
}

uint64_t static LocaleHelper.isCategorizationSupported(forLocale:)()
{
  v0 = sub_22B3F62E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_22B3F6254();
  v5 = sub_22B3E9278(v4);
  v6 = qword_27D8BDFE0;
  v7 = v5;
  v8 = v7;
  if (v6 != -1)
  {
    v7 = swift_once();
  }

  v13 = v8;
  MEMORY[0x28223BE20](v7);
  *(&v12 - 2) = &v13;
  v10 = sub_22B3C46E8(sub_22B3C48DC, (&v12 - 4), v9);
  (*(v1 + 8))(v4, v0);

  return v10 & 1;
}

uint64_t sub_22B3E9278(uint64_t a1)
{
  v1080 = sub_22B3F6294();
  v1077 = *(v1080 - 8);
  v2 = *(v1077 + 64);
  MEMORY[0x28223BE20](v1080);
  v1075 = &v1033 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1070 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE488, &qword_22B3F9F00);
  v4 = *(*(v1070 - 8) + 64);
  MEMORY[0x28223BE20](v1070);
  v1078 = &v1033 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE490, &qword_22B3F9F08);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v1074 = &v1033 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v1072 = &v1033 - v10;
  MEMORY[0x28223BE20](v11);
  v1073 = &v1033 - v12;
  v13 = sub_22B3F6274();
  v1215 = *(v13 - 8);
  v14 = *(v1215 + 64);
  MEMORY[0x28223BE20](v13);
  v1210 = &v1033 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE498, &qword_22B3F9F10);
  v16 = *(*(v1217 - 8) + 64);
  MEMORY[0x28223BE20](v1217);
  v1108 = &v1033 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v1107 = &v1033 - v19;
  MEMORY[0x28223BE20](v20);
  v1106 = &v1033 - v21;
  MEMORY[0x28223BE20](v22);
  v1103 = &v1033 - v23;
  MEMORY[0x28223BE20](v24);
  v1100 = &v1033 - v25;
  MEMORY[0x28223BE20](v26);
  v1097 = &v1033 - v27;
  MEMORY[0x28223BE20](v28);
  v1094 = &v1033 - v29;
  MEMORY[0x28223BE20](v30);
  v1091 = &v1033 - v31;
  MEMORY[0x28223BE20](v32);
  v1088 = &v1033 - v33;
  MEMORY[0x28223BE20](v34);
  v1085 = &v1033 - v35;
  MEMORY[0x28223BE20](v36);
  v1082 = &v1033 - v37;
  MEMORY[0x28223BE20](v38);
  v1076 = &v1033 - v39;
  MEMORY[0x28223BE20](v40);
  v1067 = &v1033 - v41;
  MEMORY[0x28223BE20](v42);
  v1064 = &v1033 - v43;
  MEMORY[0x28223BE20](v44);
  v1061 = &v1033 - v45;
  MEMORY[0x28223BE20](v46);
  v1059 = &v1033 - v47;
  MEMORY[0x28223BE20](v48);
  v1056 = &v1033 - v49;
  MEMORY[0x28223BE20](v50);
  v1053 = &v1033 - v51;
  MEMORY[0x28223BE20](v52);
  v1051 = &v1033 - v53;
  MEMORY[0x28223BE20](v54);
  v1048 = &v1033 - v55;
  MEMORY[0x28223BE20](v56);
  v1113 = &v1033 - v57;
  MEMORY[0x28223BE20](v58);
  v1112 = &v1033 - v59;
  MEMORY[0x28223BE20](v60);
  v1118 = &v1033 - v61;
  MEMORY[0x28223BE20](v62);
  v1120 = &v1033 - v63;
  MEMORY[0x28223BE20](v64);
  v1123 = &v1033 - v65;
  MEMORY[0x28223BE20](v66);
  v1126 = &v1033 - v67;
  MEMORY[0x28223BE20](v68);
  v1129 = &v1033 - v69;
  MEMORY[0x28223BE20](v70);
  v1132 = &v1033 - v71;
  MEMORY[0x28223BE20](v72);
  v1135 = &v1033 - v73;
  MEMORY[0x28223BE20](v74);
  v1138 = &v1033 - v75;
  MEMORY[0x28223BE20](v76);
  v1141 = &v1033 - v77;
  MEMORY[0x28223BE20](v78);
  v1144 = &v1033 - v79;
  MEMORY[0x28223BE20](v80);
  v1147 = &v1033 - v81;
  MEMORY[0x28223BE20](v82);
  v1151 = &v1033 - v83;
  MEMORY[0x28223BE20](v84);
  v1155 = &v1033 - v85;
  MEMORY[0x28223BE20](v86);
  v1157 = &v1033 - v87;
  MEMORY[0x28223BE20](v88);
  v1154 = &v1033 - v89;
  MEMORY[0x28223BE20](v90);
  v1159 = &v1033 - v91;
  MEMORY[0x28223BE20](v92);
  v1162 = &v1033 - v93;
  MEMORY[0x28223BE20](v94);
  v1165 = &v1033 - v95;
  MEMORY[0x28223BE20](v96);
  v1168 = &v1033 - v97;
  MEMORY[0x28223BE20](v98);
  v1171 = &v1033 - v99;
  MEMORY[0x28223BE20](v100);
  v1174 = &v1033 - v101;
  MEMORY[0x28223BE20](v102);
  v1177 = &v1033 - v103;
  MEMORY[0x28223BE20](v104);
  v1180 = &v1033 - v105;
  MEMORY[0x28223BE20](v106);
  v1183 = &v1033 - v107;
  MEMORY[0x28223BE20](v108);
  v1186 = &v1033 - v109;
  MEMORY[0x28223BE20](v110);
  v1189 = &v1033 - v111;
  MEMORY[0x28223BE20](v112);
  v1192 = &v1033 - v113;
  MEMORY[0x28223BE20](v114);
  v1195 = &v1033 - v115;
  MEMORY[0x28223BE20](v116);
  v1198 = &v1033 - v117;
  MEMORY[0x28223BE20](v118);
  v1203 = &v1033 - v119;
  MEMORY[0x28223BE20](v120);
  v1208 = &v1033 - v121;
  MEMORY[0x28223BE20](v122);
  v1209 = &v1033 - v123;
  MEMORY[0x28223BE20](v124);
  v1211 = &v1033 - v125;
  MEMORY[0x28223BE20](v126);
  v128 = &v1033 - v127;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE4A0, &qword_22B3F9F18);
  v130 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129 - 8);
  v1105 = &v1033 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v132);
  v1104 = &v1033 - v133;
  MEMORY[0x28223BE20](v134);
  v1102 = &v1033 - v135;
  MEMORY[0x28223BE20](v136);
  v1101 = &v1033 - v137;
  MEMORY[0x28223BE20](v138);
  v1099 = &v1033 - v139;
  MEMORY[0x28223BE20](v140);
  v1098 = &v1033 - v141;
  MEMORY[0x28223BE20](v142);
  v1096 = &v1033 - v143;
  MEMORY[0x28223BE20](v144);
  v1095 = &v1033 - v145;
  MEMORY[0x28223BE20](v146);
  v1093 = &v1033 - v147;
  MEMORY[0x28223BE20](v148);
  v1092 = &v1033 - v149;
  MEMORY[0x28223BE20](v150);
  v1090 = &v1033 - v151;
  MEMORY[0x28223BE20](v152);
  v1089 = &v1033 - v153;
  MEMORY[0x28223BE20](v154);
  v1087 = &v1033 - v155;
  MEMORY[0x28223BE20](v156);
  v1086 = &v1033 - v157;
  MEMORY[0x28223BE20](v158);
  v1084 = &v1033 - v159;
  MEMORY[0x28223BE20](v160);
  v1083 = &v1033 - v161;
  MEMORY[0x28223BE20](v162);
  v1081 = &v1033 - v163;
  MEMORY[0x28223BE20](v164);
  v1079 = &v1033 - v165;
  MEMORY[0x28223BE20](v166);
  v1069 = &v1033 - v167;
  MEMORY[0x28223BE20](v168);
  v1068 = &v1033 - v169;
  MEMORY[0x28223BE20](v170);
  v1066 = &v1033 - v171;
  MEMORY[0x28223BE20](v172);
  v1065 = &v1033 - v173;
  MEMORY[0x28223BE20](v174);
  v1063 = &v1033 - v175;
  MEMORY[0x28223BE20](v176);
  v1062 = &v1033 - v177;
  MEMORY[0x28223BE20](v178);
  v1060 = &v1033 - v179;
  MEMORY[0x28223BE20](v180);
  v1058 = &v1033 - v181;
  MEMORY[0x28223BE20](v182);
  v1057 = &v1033 - v183;
  MEMORY[0x28223BE20](v184);
  v1055 = &v1033 - v185;
  MEMORY[0x28223BE20](v186);
  v1054 = &v1033 - v187;
  MEMORY[0x28223BE20](v188);
  v1052 = &v1033 - v189;
  MEMORY[0x28223BE20](v190);
  v1050 = &v1033 - v191;
  MEMORY[0x28223BE20](v192);
  v1049 = &v1033 - v193;
  MEMORY[0x28223BE20](v194);
  v1045 = &v1033 - v195;
  MEMORY[0x28223BE20](v196);
  v1043 = &v1033 - v197;
  MEMORY[0x28223BE20](v198);
  v1041 = &v1033 - v199;
  MEMORY[0x28223BE20](v200);
  v1040 = &v1033 - v201;
  MEMORY[0x28223BE20](v202);
  v1039 = &v1033 - v203;
  MEMORY[0x28223BE20](v204);
  v1038 = &v1033 - v205;
  MEMORY[0x28223BE20](v206);
  v1037 = &v1033 - v207;
  MEMORY[0x28223BE20](v208);
  v1036 = &v1033 - v209;
  MEMORY[0x28223BE20](v210);
  v1035 = &v1033 - v211;
  MEMORY[0x28223BE20](v212);
  v1111 = &v1033 - v213;
  MEMORY[0x28223BE20](v214);
  v1034 = &v1033 - v215;
  MEMORY[0x28223BE20](v216);
  v1110 = &v1033 - v217;
  MEMORY[0x28223BE20](v218);
  v1109 = &v1033 - v219;
  MEMORY[0x28223BE20](v220);
  v1115 = &v1033 - v221;
  MEMORY[0x28223BE20](v222);
  v1114 = &v1033 - v223;
  MEMORY[0x28223BE20](v224);
  v1117 = &v1033 - v225;
  MEMORY[0x28223BE20](v226);
  v1116 = &v1033 - v227;
  MEMORY[0x28223BE20](v228);
  v1121 = &v1033 - v229;
  MEMORY[0x28223BE20](v230);
  v1119 = &v1033 - v231;
  MEMORY[0x28223BE20](v232);
  v1124 = &v1033 - v233;
  MEMORY[0x28223BE20](v234);
  v1122 = &v1033 - v235;
  MEMORY[0x28223BE20](v236);
  v1127 = &v1033 - v237;
  MEMORY[0x28223BE20](v238);
  v1125 = &v1033 - v239;
  MEMORY[0x28223BE20](v240);
  v1130 = &v1033 - v241;
  MEMORY[0x28223BE20](v242);
  v1128 = &v1033 - v243;
  MEMORY[0x28223BE20](v244);
  v1133 = &v1033 - v245;
  MEMORY[0x28223BE20](v246);
  v1131 = &v1033 - v247;
  MEMORY[0x28223BE20](v248);
  v1136 = &v1033 - v249;
  MEMORY[0x28223BE20](v250);
  v1134 = &v1033 - v251;
  MEMORY[0x28223BE20](v252);
  v1139 = &v1033 - v253;
  MEMORY[0x28223BE20](v254);
  v1137 = &v1033 - v255;
  MEMORY[0x28223BE20](v256);
  v1142 = &v1033 - v257;
  MEMORY[0x28223BE20](v258);
  v1140 = &v1033 - v259;
  MEMORY[0x28223BE20](v260);
  v1145 = &v1033 - v261;
  MEMORY[0x28223BE20](v262);
  v1143 = &v1033 - v263;
  MEMORY[0x28223BE20](v264);
  v1148 = &v1033 - v265;
  MEMORY[0x28223BE20](v266);
  v1146 = &v1033 - v267;
  MEMORY[0x28223BE20](v268);
  v1152 = &v1033 - v269;
  MEMORY[0x28223BE20](v270);
  v1150 = &v1033 - v271;
  MEMORY[0x28223BE20](v272);
  v1156 = &v1033 - v273;
  MEMORY[0x28223BE20](v274);
  v1149 = &v1033 - v275;
  MEMORY[0x28223BE20](v276);
  v1160 = &v1033 - v277;
  MEMORY[0x28223BE20](v278);
  v1153 = &v1033 - v279;
  MEMORY[0x28223BE20](v280);
  v1163 = &v1033 - v281;
  MEMORY[0x28223BE20](v282);
  v1158 = &v1033 - v283;
  MEMORY[0x28223BE20](v284);
  v1167 = &v1033 - v285;
  MEMORY[0x28223BE20](v286);
  v1161 = &v1033 - v287;
  MEMORY[0x28223BE20](v288);
  v1170 = &v1033 - v289;
  MEMORY[0x28223BE20](v290);
  v1164 = &v1033 - v291;
  MEMORY[0x28223BE20](v292);
  v1173 = &v1033 - v293;
  MEMORY[0x28223BE20](v294);
  v1166 = &v1033 - v295;
  MEMORY[0x28223BE20](v296);
  v1176 = &v1033 - v297;
  MEMORY[0x28223BE20](v298);
  v1169 = &v1033 - v299;
  MEMORY[0x28223BE20](v300);
  v1179 = &v1033 - v301;
  MEMORY[0x28223BE20](v302);
  v1172 = &v1033 - v303;
  MEMORY[0x28223BE20](v304);
  v1182 = &v1033 - v305;
  MEMORY[0x28223BE20](v306);
  v1175 = &v1033 - v307;
  MEMORY[0x28223BE20](v308);
  v1185 = &v1033 - v309;
  MEMORY[0x28223BE20](v310);
  v1178 = &v1033 - v311;
  MEMORY[0x28223BE20](v312);
  v1188 = &v1033 - v313;
  MEMORY[0x28223BE20](v314);
  v1181 = &v1033 - v315;
  MEMORY[0x28223BE20](v316);
  v1191 = &v1033 - v317;
  MEMORY[0x28223BE20](v318);
  v1184 = &v1033 - v319;
  MEMORY[0x28223BE20](v320);
  v1194 = &v1033 - v321;
  MEMORY[0x28223BE20](v322);
  v1187 = &v1033 - v323;
  MEMORY[0x28223BE20](v324);
  v1197 = &v1033 - v325;
  MEMORY[0x28223BE20](v326);
  v1190 = &v1033 - v327;
  MEMORY[0x28223BE20](v328);
  v1200 = &v1033 - v329;
  MEMORY[0x28223BE20](v330);
  v1193 = &v1033 - v331;
  MEMORY[0x28223BE20](v332);
  v1202 = &v1033 - v333;
  MEMORY[0x28223BE20](v334);
  v1196 = &v1033 - v335;
  MEMORY[0x28223BE20](v336);
  v1201 = &v1033 - v337;
  MEMORY[0x28223BE20](v338);
  v1199 = &v1033 - v339;
  MEMORY[0x28223BE20](v340);
  v1205 = &v1033 - v341;
  MEMORY[0x28223BE20](v342);
  v1204 = &v1033 - v343;
  MEMORY[0x28223BE20](v344);
  v1207 = &v1033 - v345;
  MEMORY[0x28223BE20](v346);
  v1206 = &v1033 - v347;
  MEMORY[0x28223BE20](v348);
  v350 = &v1033 - v349;
  MEMORY[0x28223BE20](v351);
  v353 = &v1033 - v352;
  MEMORY[0x28223BE20](v354);
  v356 = &v1033 - v355;
  MEMORY[0x28223BE20](v357);
  v359 = &v1033 - v358;
  v360 = sub_22B3F62C4();
  v361 = *(v360 - 8);
  v362 = *(v361 + 64);
  MEMORY[0x28223BE20](v360);
  v1044 = &v1033 - ((v363 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v364);
  v366 = &v1033 - v365;
  v1071 = a1;
  sub_22B3F62D4();
  sub_22B3F62A4();
  v367 = *(v361 + 8);
  v368 = v366;
  v369 = v128;
  v1047 = v360;
  v370 = v360;
  v371 = v1215;
  v1046 = v361 + 8;
  v1042 = v367;
  v367(v368, v370);
  sub_22B3F6264();
  v1213 = *(v371 + 56);
  v1214 = v371 + 56;
  v1213(v356, 0, 1, v13);
  v372 = *(v1217 + 48);
  sub_22B3B4B9C(v356, v128, &qword_27D8BE4A0, &qword_22B3F9F18);
  v1216 = v359;
  sub_22B3B4B9C(v359, &v128[v372], &qword_27D8BE4A0, &qword_22B3F9F18);
  v373 = *(v371 + 48);
  v374 = v373(v369, 1, v13);
  v1212 = v373;
  if (v374 != 1)
  {
    sub_22B3B4B9C(v369, v353, &qword_27D8BE4A0, &qword_22B3F9F18);
    if (v373(v369 + v372, 1, v13) != 1)
    {
      v387 = v1215;
      v388 = v1210;
      (*(v1215 + 32))(v1210, v369 + v372, v13);
      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
      v389 = sub_22B3F6554();
      v390 = *(v387 + 8);
      v390(v388, v13);
      sub_22B3B4B3C(v356, &qword_27D8BE4A0, &qword_22B3F9F18);
      v390(v353, v13);
      v373 = v1212;
      sub_22B3B4B3C(v369, &qword_27D8BE4A0, &qword_22B3F9F18);
      if (v389)
      {
        goto LABEL_17;
      }

LABEL_7:
      sub_22B3F6264();
      v1213(v350, 0, 1, v13);
      v375 = *(v1217 + 48);
      v376 = v1211;
      sub_22B3B4B9C(v350, v1211, &qword_27D8BE4A0, &qword_22B3F9F18);
      v377 = v376;
      sub_22B3B4B9C(v1216, v376 + v375, &qword_27D8BE4A0, &qword_22B3F9F18);
      if (v373(v376, 1, v13) == 1)
      {
        sub_22B3B4B3C(v350, &qword_27D8BE4A0, &qword_22B3F9F18);
        v378 = v373(v376 + v375, 1, v13);
        v379 = v1209;
        if (v378 == 1)
        {
          sub_22B3B4B3C(v377, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_25:
          sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
          v391 = MEMORY[0x277CD86B8];
          return *v391;
        }
      }

      else
      {
        v380 = v376;
        v381 = v1206;
        sub_22B3B4B9C(v380, v1206, &qword_27D8BE4A0, &qword_22B3F9F18);
        if (v373(v377 + v375, 1, v13) != 1)
        {
          v396 = v1215;
          v397 = v1210;
          (*(v1215 + 32))(v1210, v377 + v375, v13);
          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
          v398 = sub_22B3F6554();
          v399 = *(v396 + 8);
          v399(v397, v13);
          sub_22B3B4B3C(v350, &qword_27D8BE4A0, &qword_22B3F9F18);
          v399(v381, v13);
          sub_22B3B4B3C(v1211, &qword_27D8BE4A0, &qword_22B3F9F18);
          v379 = v1209;
          if (v398)
          {
            goto LABEL_25;
          }

LABEL_13:
          v382 = v1207;
          sub_22B3F6264();
          v1213(v382, 0, 1, v13);
          v383 = *(v1217 + 48);
          sub_22B3B4B9C(v382, v379, &qword_27D8BE4A0, &qword_22B3F9F18);
          sub_22B3B4B9C(v1216, v379 + v383, &qword_27D8BE4A0, &qword_22B3F9F18);
          v384 = v1212;
          if (v1212(v379, 1, v13) == 1)
          {
            sub_22B3B4B3C(v382, &qword_27D8BE4A0, &qword_22B3F9F18);
            v385 = v384(v379 + v383, 1, v13);
            v386 = v1208;
            if (v385 == 1)
            {
              sub_22B3B4B3C(v379, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_33:
              sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
              v391 = MEMORY[0x277CD86C0];
              return *v391;
            }
          }

          else
          {
            v392 = v1204;
            sub_22B3B4B9C(v379, v1204, &qword_27D8BE4A0, &qword_22B3F9F18);
            if (v384(v379 + v383, 1, v13) != 1)
            {
              v407 = v1215;
              v408 = v379 + v383;
              v409 = v1210;
              (*(v1215 + 32))(v1210, v408, v13);
              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
              v410 = sub_22B3F6554();
              v411 = *(v407 + 8);
              v411(v409, v13);
              sub_22B3B4B3C(v382, &qword_27D8BE4A0, &qword_22B3F9F18);
              v411(v392, v13);
              sub_22B3B4B3C(v379, &qword_27D8BE4A0, &qword_22B3F9F18);
              v386 = v1208;
              if (v410)
              {
                goto LABEL_33;
              }

LABEL_21:
              v393 = v1205;
              sub_22B3F6264();
              v1213(v393, 0, 1, v13);
              v394 = *(v1217 + 48);
              sub_22B3B4B9C(v393, v386, &qword_27D8BE4A0, &qword_22B3F9F18);
              sub_22B3B4B9C(v1216, v386 + v394, &qword_27D8BE4A0, &qword_22B3F9F18);
              v395 = v1212;
              if (v1212(v386, 1, v13) == 1)
              {
                sub_22B3B4B3C(v393, &qword_27D8BE4A0, &qword_22B3F9F18);
                if (v395(v386 + v394, 1, v13) == 1)
                {
                  sub_22B3B4B3C(v386, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_41:
                  sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                  v391 = MEMORY[0x277CD86C8];
                  return *v391;
                }
              }

              else
              {
                v400 = v1199;
                sub_22B3B4B9C(v386, v1199, &qword_27D8BE4A0, &qword_22B3F9F18);
                if (v395(v386 + v394, 1, v13) != 1)
                {
                  v418 = v1215;
                  v419 = v386 + v394;
                  v420 = v1210;
                  (*(v1215 + 32))(v1210, v419, v13);
                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                  v421 = sub_22B3F6554();
                  v422 = *(v418 + 8);
                  v422(v420, v13);
                  sub_22B3B4B3C(v393, &qword_27D8BE4A0, &qword_22B3F9F18);
                  v422(v400, v13);
                  sub_22B3B4B3C(v386, &qword_27D8BE4A0, &qword_22B3F9F18);
                  if (v421)
                  {
                    goto LABEL_41;
                  }

LABEL_29:
                  v401 = v1201;
                  sub_22B3F6264();
                  v1213(v401, 0, 1, v13);
                  v402 = *(v1217 + 48);
                  v403 = v1203;
                  sub_22B3B4B9C(v401, v1203, &qword_27D8BE4A0, &qword_22B3F9F18);
                  sub_22B3B4B9C(v1216, v403 + v402, &qword_27D8BE4A0, &qword_22B3F9F18);
                  v404 = v1212;
                  if (v1212(v403, 1, v13) == 1)
                  {
                    sub_22B3B4B3C(v401, &qword_27D8BE4A0, &qword_22B3F9F18);
                    v405 = v404(v403 + v402, 1, v13);
                    v406 = v1202;
                    if (v405 == 1)
                    {
                      sub_22B3B4B3C(v403, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_49:
                      sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                      v391 = MEMORY[0x277CD86D0];
                      return *v391;
                    }
                  }

                  else
                  {
                    v412 = v1196;
                    sub_22B3B4B9C(v403, v1196, &qword_27D8BE4A0, &qword_22B3F9F18);
                    if (v404(v403 + v402, 1, v13) != 1)
                    {
                      v429 = v1215;
                      v430 = v403 + v402;
                      v431 = v1210;
                      (*(v1215 + 32))(v1210, v430, v13);
                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                      v432 = sub_22B3F6554();
                      v433 = *(v429 + 8);
                      v433(v431, v13);
                      sub_22B3B4B3C(v401, &qword_27D8BE4A0, &qword_22B3F9F18);
                      v433(v412, v13);
                      sub_22B3B4B3C(v403, &qword_27D8BE4A0, &qword_22B3F9F18);
                      v406 = v1202;
                      if (v432)
                      {
                        goto LABEL_49;
                      }

LABEL_37:
                      sub_22B3F6264();
                      v1213(v406, 0, 1, v13);
                      v413 = *(v1217 + 48);
                      v414 = v1198;
                      sub_22B3B4B9C(v406, v1198, &qword_27D8BE4A0, &qword_22B3F9F18);
                      sub_22B3B4B9C(v1216, v414 + v413, &qword_27D8BE4A0, &qword_22B3F9F18);
                      v415 = v1212;
                      if (v1212(v414, 1, v13) == 1)
                      {
                        sub_22B3B4B3C(v406, &qword_27D8BE4A0, &qword_22B3F9F18);
                        v416 = v415(v414 + v413, 1, v13);
                        v417 = v1200;
                        if (v416 == 1)
                        {
                          sub_22B3B4B3C(v414, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_57:
                          sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                          v391 = MEMORY[0x277CD86D8];
                          return *v391;
                        }
                      }

                      else
                      {
                        v423 = v1193;
                        sub_22B3B4B9C(v414, v1193, &qword_27D8BE4A0, &qword_22B3F9F18);
                        if (v415(v414 + v413, 1, v13) != 1)
                        {
                          v440 = v1215;
                          v441 = v414 + v413;
                          v442 = v1210;
                          (*(v1215 + 32))(v1210, v441, v13);
                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                          v443 = sub_22B3F6554();
                          v444 = *(v440 + 8);
                          v444(v442, v13);
                          sub_22B3B4B3C(v406, &qword_27D8BE4A0, &qword_22B3F9F18);
                          v444(v423, v13);
                          sub_22B3B4B3C(v1198, &qword_27D8BE4A0, &qword_22B3F9F18);
                          v417 = v1200;
                          if (v443)
                          {
                            goto LABEL_57;
                          }

LABEL_45:
                          sub_22B3F6264();
                          v1213(v417, 0, 1, v13);
                          v424 = *(v1217 + 48);
                          v425 = v1195;
                          sub_22B3B4B9C(v417, v1195, &qword_27D8BE4A0, &qword_22B3F9F18);
                          sub_22B3B4B9C(v1216, v425 + v424, &qword_27D8BE4A0, &qword_22B3F9F18);
                          v426 = v1212;
                          if (v1212(v425, 1, v13) == 1)
                          {
                            sub_22B3B4B3C(v417, &qword_27D8BE4A0, &qword_22B3F9F18);
                            v427 = v426(v425 + v424, 1, v13);
                            v428 = v1197;
                            if (v427 == 1)
                            {
                              sub_22B3B4B3C(v425, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_65:
                              sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                              v391 = MEMORY[0x277CD86E0];
                              return *v391;
                            }
                          }

                          else
                          {
                            v434 = v1190;
                            sub_22B3B4B9C(v425, v1190, &qword_27D8BE4A0, &qword_22B3F9F18);
                            if (v426(v425 + v424, 1, v13) != 1)
                            {
                              v451 = v1215;
                              v452 = v425 + v424;
                              v453 = v1210;
                              (*(v1215 + 32))(v1210, v452, v13);
                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                              v454 = sub_22B3F6554();
                              v455 = *(v451 + 8);
                              v455(v453, v13);
                              sub_22B3B4B3C(v1200, &qword_27D8BE4A0, &qword_22B3F9F18);
                              v455(v434, v13);
                              sub_22B3B4B3C(v425, &qword_27D8BE4A0, &qword_22B3F9F18);
                              v428 = v1197;
                              if (v454)
                              {
                                goto LABEL_65;
                              }

LABEL_53:
                              sub_22B3F6264();
                              v1213(v428, 0, 1, v13);
                              v435 = *(v1217 + 48);
                              v436 = v1192;
                              sub_22B3B4B9C(v428, v1192, &qword_27D8BE4A0, &qword_22B3F9F18);
                              sub_22B3B4B9C(v1216, v436 + v435, &qword_27D8BE4A0, &qword_22B3F9F18);
                              v437 = v1212;
                              if (v1212(v436, 1, v13) == 1)
                              {
                                sub_22B3B4B3C(v428, &qword_27D8BE4A0, &qword_22B3F9F18);
                                v438 = v437(v436 + v435, 1, v13);
                                v439 = v1194;
                                if (v438 == 1)
                                {
                                  sub_22B3B4B3C(v436, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_73:
                                  sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                  v391 = MEMORY[0x277CD86E8];
                                  return *v391;
                                }
                              }

                              else
                              {
                                v445 = v1187;
                                sub_22B3B4B9C(v436, v1187, &qword_27D8BE4A0, &qword_22B3F9F18);
                                if (v437(v436 + v435, 1, v13) != 1)
                                {
                                  v462 = v1215;
                                  v463 = v436 + v435;
                                  v464 = v1210;
                                  (*(v1215 + 32))(v1210, v463, v13);
                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                  v465 = sub_22B3F6554();
                                  v466 = *(v462 + 8);
                                  v466(v464, v13);
                                  sub_22B3B4B3C(v1197, &qword_27D8BE4A0, &qword_22B3F9F18);
                                  v466(v445, v13);
                                  sub_22B3B4B3C(v436, &qword_27D8BE4A0, &qword_22B3F9F18);
                                  v439 = v1194;
                                  if (v465)
                                  {
                                    goto LABEL_73;
                                  }

LABEL_61:
                                  sub_22B3F6264();
                                  v1213(v439, 0, 1, v13);
                                  v446 = *(v1217 + 48);
                                  v447 = v1189;
                                  sub_22B3B4B9C(v439, v1189, &qword_27D8BE4A0, &qword_22B3F9F18);
                                  sub_22B3B4B9C(v1216, v447 + v446, &qword_27D8BE4A0, &qword_22B3F9F18);
                                  v448 = v1212;
                                  if (v1212(v447, 1, v13) == 1)
                                  {
                                    sub_22B3B4B3C(v439, &qword_27D8BE4A0, &qword_22B3F9F18);
                                    v449 = v448(v447 + v446, 1, v13);
                                    v450 = v1191;
                                    if (v449 == 1)
                                    {
                                      sub_22B3B4B3C(v447, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_81:
                                      sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                      v391 = MEMORY[0x277CD86F0];
                                      return *v391;
                                    }
                                  }

                                  else
                                  {
                                    v456 = v1184;
                                    sub_22B3B4B9C(v447, v1184, &qword_27D8BE4A0, &qword_22B3F9F18);
                                    if (v448(v447 + v446, 1, v13) != 1)
                                    {
                                      v473 = v1215;
                                      v474 = v447 + v446;
                                      v475 = v1210;
                                      (*(v1215 + 32))(v1210, v474, v13);
                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                      v476 = sub_22B3F6554();
                                      v477 = *(v473 + 8);
                                      v477(v475, v13);
                                      sub_22B3B4B3C(v1194, &qword_27D8BE4A0, &qword_22B3F9F18);
                                      v477(v456, v13);
                                      sub_22B3B4B3C(v447, &qword_27D8BE4A0, &qword_22B3F9F18);
                                      v450 = v1191;
                                      if (v476)
                                      {
                                        goto LABEL_81;
                                      }

LABEL_69:
                                      sub_22B3F6264();
                                      v1213(v450, 0, 1, v13);
                                      v457 = *(v1217 + 48);
                                      v458 = v1186;
                                      sub_22B3B4B9C(v450, v1186, &qword_27D8BE4A0, &qword_22B3F9F18);
                                      sub_22B3B4B9C(v1216, v458 + v457, &qword_27D8BE4A0, &qword_22B3F9F18);
                                      v459 = v1212;
                                      if (v1212(v458, 1, v13) == 1)
                                      {
                                        sub_22B3B4B3C(v450, &qword_27D8BE4A0, &qword_22B3F9F18);
                                        v460 = v459(v458 + v457, 1, v13);
                                        v461 = v1188;
                                        if (v460 == 1)
                                        {
                                          sub_22B3B4B3C(v458, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_89:
                                          sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                          v391 = MEMORY[0x277CD86F8];
                                          return *v391;
                                        }
                                      }

                                      else
                                      {
                                        v467 = v1181;
                                        sub_22B3B4B9C(v458, v1181, &qword_27D8BE4A0, &qword_22B3F9F18);
                                        if (v459(v458 + v457, 1, v13) != 1)
                                        {
                                          v484 = v1215;
                                          v485 = v458 + v457;
                                          v486 = v1210;
                                          (*(v1215 + 32))(v1210, v485, v13);
                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                          v487 = sub_22B3F6554();
                                          v488 = *(v484 + 8);
                                          v488(v486, v13);
                                          sub_22B3B4B3C(v1191, &qword_27D8BE4A0, &qword_22B3F9F18);
                                          v488(v467, v13);
                                          sub_22B3B4B3C(v458, &qword_27D8BE4A0, &qword_22B3F9F18);
                                          v461 = v1188;
                                          if (v487)
                                          {
                                            goto LABEL_89;
                                          }

LABEL_77:
                                          sub_22B3F6264();
                                          v1213(v461, 0, 1, v13);
                                          v468 = *(v1217 + 48);
                                          v469 = v1183;
                                          sub_22B3B4B9C(v461, v1183, &qword_27D8BE4A0, &qword_22B3F9F18);
                                          sub_22B3B4B9C(v1216, v469 + v468, &qword_27D8BE4A0, &qword_22B3F9F18);
                                          v470 = v1212;
                                          if (v1212(v469, 1, v13) == 1)
                                          {
                                            sub_22B3B4B3C(v461, &qword_27D8BE4A0, &qword_22B3F9F18);
                                            v471 = v470(v469 + v468, 1, v13);
                                            v472 = v1185;
                                            if (v471 == 1)
                                            {
                                              sub_22B3B4B3C(v469, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_97:
                                              sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                              v391 = MEMORY[0x277CD8700];
                                              return *v391;
                                            }
                                          }

                                          else
                                          {
                                            v478 = v1178;
                                            sub_22B3B4B9C(v469, v1178, &qword_27D8BE4A0, &qword_22B3F9F18);
                                            if (v470(v469 + v468, 1, v13) != 1)
                                            {
                                              v495 = v1215;
                                              v496 = v469 + v468;
                                              v497 = v1210;
                                              (*(v1215 + 32))(v1210, v496, v13);
                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                              v498 = sub_22B3F6554();
                                              v499 = *(v495 + 8);
                                              v499(v497, v13);
                                              sub_22B3B4B3C(v1188, &qword_27D8BE4A0, &qword_22B3F9F18);
                                              v499(v478, v13);
                                              sub_22B3B4B3C(v469, &qword_27D8BE4A0, &qword_22B3F9F18);
                                              v472 = v1185;
                                              if (v498)
                                              {
                                                goto LABEL_97;
                                              }

LABEL_85:
                                              sub_22B3F6264();
                                              v1213(v472, 0, 1, v13);
                                              v479 = *(v1217 + 48);
                                              v480 = v1180;
                                              sub_22B3B4B9C(v472, v1180, &qword_27D8BE4A0, &qword_22B3F9F18);
                                              sub_22B3B4B9C(v1216, v480 + v479, &qword_27D8BE4A0, &qword_22B3F9F18);
                                              v481 = v1212;
                                              if (v1212(v480, 1, v13) == 1)
                                              {
                                                sub_22B3B4B3C(v472, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                v482 = v481(v480 + v479, 1, v13);
                                                v483 = v1182;
                                                if (v482 == 1)
                                                {
                                                  sub_22B3B4B3C(v480, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_105:
                                                  sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                  v391 = MEMORY[0x277CD8708];
                                                  return *v391;
                                                }
                                              }

                                              else
                                              {
                                                v489 = v1175;
                                                sub_22B3B4B9C(v480, v1175, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                if (v481(v480 + v479, 1, v13) != 1)
                                                {
                                                  v506 = v1215;
                                                  v507 = v480 + v479;
                                                  v508 = v1210;
                                                  (*(v1215 + 32))(v1210, v507, v13);
                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                  v509 = sub_22B3F6554();
                                                  v510 = *(v506 + 8);
                                                  v510(v508, v13);
                                                  sub_22B3B4B3C(v1185, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                  v510(v489, v13);
                                                  sub_22B3B4B3C(v480, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                  v483 = v1182;
                                                  if (v509)
                                                  {
                                                    goto LABEL_105;
                                                  }

LABEL_93:
                                                  sub_22B3F6264();
                                                  v1213(v483, 0, 1, v13);
                                                  v490 = *(v1217 + 48);
                                                  v491 = v1177;
                                                  sub_22B3B4B9C(v483, v1177, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                  sub_22B3B4B9C(v1216, v491 + v490, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                  v492 = v1212;
                                                  if (v1212(v491, 1, v13) == 1)
                                                  {
                                                    sub_22B3B4B3C(v483, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                    v493 = v492(v491 + v490, 1, v13);
                                                    v494 = v1179;
                                                    if (v493 == 1)
                                                    {
                                                      sub_22B3B4B3C(v491, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_113:
                                                      sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                      v391 = MEMORY[0x277CD8710];
                                                      return *v391;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v500 = v1172;
                                                    sub_22B3B4B9C(v491, v1172, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                    if (v492(v491 + v490, 1, v13) != 1)
                                                    {
                                                      v517 = v1215;
                                                      v518 = v491 + v490;
                                                      v519 = v1210;
                                                      (*(v1215 + 32))(v1210, v518, v13);
                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                      v520 = sub_22B3F6554();
                                                      v521 = *(v517 + 8);
                                                      v521(v519, v13);
                                                      sub_22B3B4B3C(v1182, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                      v521(v500, v13);
                                                      sub_22B3B4B3C(v491, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                      v494 = v1179;
                                                      if (v520)
                                                      {
                                                        goto LABEL_113;
                                                      }

LABEL_101:
                                                      sub_22B3F6264();
                                                      v1213(v494, 0, 1, v13);
                                                      v501 = *(v1217 + 48);
                                                      v502 = v1174;
                                                      sub_22B3B4B9C(v494, v1174, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                      sub_22B3B4B9C(v1216, v502 + v501, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                      v503 = v1212;
                                                      if (v1212(v502, 1, v13) == 1)
                                                      {
                                                        sub_22B3B4B3C(v494, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                        v504 = v503(v502 + v501, 1, v13);
                                                        v505 = v1176;
                                                        if (v504 == 1)
                                                        {
                                                          sub_22B3B4B3C(v502, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_121:
                                                          sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                          v391 = MEMORY[0x277CD8718];
                                                          return *v391;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v511 = v1169;
                                                        sub_22B3B4B9C(v502, v1169, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                        if (v503(v502 + v501, 1, v13) != 1)
                                                        {
                                                          v528 = v1215;
                                                          v529 = v502 + v501;
                                                          v530 = v1210;
                                                          (*(v1215 + 32))(v1210, v529, v13);
                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                          v531 = sub_22B3F6554();
                                                          v532 = *(v528 + 8);
                                                          v532(v530, v13);
                                                          sub_22B3B4B3C(v1179, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                          v532(v511, v13);
                                                          sub_22B3B4B3C(v502, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                          v505 = v1176;
                                                          if (v531)
                                                          {
                                                            goto LABEL_121;
                                                          }

LABEL_109:
                                                          sub_22B3F6264();
                                                          v1213(v505, 0, 1, v13);
                                                          v512 = *(v1217 + 48);
                                                          v513 = v1171;
                                                          sub_22B3B4B9C(v505, v1171, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                          sub_22B3B4B9C(v1216, v513 + v512, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                          v514 = v1212;
                                                          if (v1212(v513, 1, v13) == 1)
                                                          {
                                                            sub_22B3B4B3C(v505, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                            v515 = v514(v513 + v512, 1, v13);
                                                            v516 = v1173;
                                                            if (v515 == 1)
                                                            {
                                                              sub_22B3B4B3C(v513, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_129:
                                                              sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                              v391 = MEMORY[0x277CD8720];
                                                              return *v391;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v522 = v1166;
                                                            sub_22B3B4B9C(v513, v1166, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                            if (v514(v513 + v512, 1, v13) != 1)
                                                            {
                                                              v539 = v1215;
                                                              v540 = v513 + v512;
                                                              v541 = v1210;
                                                              (*(v1215 + 32))(v1210, v540, v13);
                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                              v542 = sub_22B3F6554();
                                                              v543 = *(v539 + 8);
                                                              v543(v541, v13);
                                                              sub_22B3B4B3C(v1176, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                              v543(v522, v13);
                                                              sub_22B3B4B3C(v513, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                              v516 = v1173;
                                                              if (v542)
                                                              {
                                                                goto LABEL_129;
                                                              }

LABEL_117:
                                                              sub_22B3F6264();
                                                              v1213(v516, 0, 1, v13);
                                                              v523 = *(v1217 + 48);
                                                              v524 = v1168;
                                                              sub_22B3B4B9C(v516, v1168, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                              sub_22B3B4B9C(v1216, v524 + v523, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                              v525 = v1212;
                                                              if (v1212(v524, 1, v13) == 1)
                                                              {
                                                                sub_22B3B4B3C(v516, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                v526 = v525(v524 + v523, 1, v13);
                                                                v527 = v1170;
                                                                if (v526 == 1)
                                                                {
                                                                  sub_22B3B4B3C(v524, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_137:
                                                                  sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                  v391 = MEMORY[0x277CD8728];
                                                                  return *v391;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v533 = v1164;
                                                                sub_22B3B4B9C(v524, v1164, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                if (v525(v524 + v523, 1, v13) != 1)
                                                                {
                                                                  v548 = v1215;
                                                                  v549 = v524 + v523;
                                                                  v550 = v1210;
                                                                  (*(v1215 + 32))(v1210, v549, v13);
                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                  v551 = sub_22B3F6554();
                                                                  v552 = *(v548 + 8);
                                                                  v552(v550, v13);
                                                                  sub_22B3B4B3C(v1173, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                  v552(v533, v13);
                                                                  sub_22B3B4B3C(v524, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                  v527 = v1170;
                                                                  if (v551)
                                                                  {
                                                                    goto LABEL_137;
                                                                  }

LABEL_125:
                                                                  sub_22B3F6264();
                                                                  v1213(v527, 0, 1, v13);
                                                                  v534 = *(v1217 + 48);
                                                                  v535 = v1165;
                                                                  sub_22B3B4B9C(v527, v1165, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                  sub_22B3B4B9C(v1216, v535 + v534, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                  v536 = v1212;
                                                                  if (v1212(v535, 1, v13) == 1)
                                                                  {
                                                                    sub_22B3B4B3C(v527, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                    v537 = v536(v535 + v534, 1, v13);
                                                                    v538 = v1167;
                                                                    if (v537 == 1)
                                                                    {
                                                                      sub_22B3B4B3C(v535, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_145:
                                                                      sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                      v391 = MEMORY[0x277CD8730];
                                                                      return *v391;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v544 = v1161;
                                                                    sub_22B3B4B9C(v535, v1161, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                    if (v536(v535 + v534, 1, v13) != 1)
                                                                    {
                                                                      v558 = v1215;
                                                                      v559 = v535 + v534;
                                                                      v560 = v1210;
                                                                      (*(v1215 + 32))(v1210, v559, v13);
                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                      v561 = sub_22B3F6554();
                                                                      v562 = *(v558 + 8);
                                                                      v562(v560, v13);
                                                                      sub_22B3B4B3C(v1170, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                      v562(v544, v13);
                                                                      sub_22B3B4B3C(v535, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                      v538 = v1167;
                                                                      if (v561)
                                                                      {
                                                                        goto LABEL_145;
                                                                      }

LABEL_133:
                                                                      sub_22B3F6264();
                                                                      v1213(v538, 0, 1, v13);
                                                                      v545 = *(v1217 + 48);
                                                                      v546 = v1162;
                                                                      sub_22B3B4B9C(v538, v1162, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                      sub_22B3B4B9C(v1216, v546 + v545, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                      v547 = v1212;
                                                                      if (v1212(v546, 1, v13) == 1)
                                                                      {
                                                                        sub_22B3B4B3C(v538, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                        if (v547(v546 + v545, 1, v13) == 1)
                                                                        {
                                                                          sub_22B3B4B3C(v546, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_153:
                                                                          sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                          v391 = MEMORY[0x277CD8738];
                                                                          return *v391;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v553 = v1158;
                                                                        sub_22B3B4B9C(v546, v1158, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                        if (v547(v546 + v545, 1, v13) != 1)
                                                                        {
                                                                          v570 = v1215;
                                                                          v571 = v546 + v545;
                                                                          v572 = v1210;
                                                                          (*(v1215 + 32))(v1210, v571, v13);
                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                          v573 = sub_22B3F6554();
                                                                          v574 = *(v570 + 8);
                                                                          v574(v572, v13);
                                                                          sub_22B3B4B3C(v1167, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                          v574(v553, v13);
                                                                          sub_22B3B4B3C(v546, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                          if (v573)
                                                                          {
                                                                            goto LABEL_153;
                                                                          }

LABEL_141:
                                                                          v554 = v1163;
                                                                          sub_22B3F6264();
                                                                          v1213(v554, 0, 1, v13);
                                                                          v555 = *(v1217 + 48);
                                                                          v556 = v1159;
                                                                          sub_22B3B4B9C(v554, v1159, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                          sub_22B3B4B9C(v1216, v556 + v555, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                          v557 = v1212;
                                                                          if (v1212(v556, 1, v13) == 1)
                                                                          {
                                                                            sub_22B3B4B3C(v1163, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                            if (v557(v556 + v555, 1, v13) == 1)
                                                                            {
                                                                              sub_22B3B4B3C(v556, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_161:
                                                                              sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                              v391 = MEMORY[0x277CD8740];
                                                                              return *v391;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v563 = v1153;
                                                                            sub_22B3B4B9C(v556, v1153, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                            if (v557(v556 + v555, 1, v13) != 1)
                                                                            {
                                                                              v582 = v1215;
                                                                              v583 = v556 + v555;
                                                                              v584 = v1210;
                                                                              (*(v1215 + 32))(v1210, v583, v13);
                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                              v585 = sub_22B3F6554();
                                                                              v586 = *(v582 + 8);
                                                                              v586(v584, v13);
                                                                              sub_22B3B4B3C(v1163, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                              v586(v563, v13);
                                                                              sub_22B3B4B3C(v556, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                              if (v585)
                                                                              {
                                                                                goto LABEL_161;
                                                                              }

LABEL_149:
                                                                              v564 = v1160;
                                                                              sub_22B3F6264();
                                                                              v1213(v564, 0, 1, v13);
                                                                              v565 = *(v1217 + 48);
                                                                              v566 = v564;
                                                                              v567 = v1154;
                                                                              sub_22B3B4B9C(v566, v1154, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                              sub_22B3B4B9C(v1216, v567 + v565, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                              v568 = v1212;
                                                                              if (v1212(v567, 1, v13) == 1)
                                                                              {
                                                                                sub_22B3B4B3C(v1160, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                v569 = v13;
                                                                                if (v568(v567 + v565, 1, v13) == 1)
                                                                                {
                                                                                  sub_22B3B4B3C(v567, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_169:
                                                                                  sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                  v391 = MEMORY[0x277CD8748];
                                                                                  return *v391;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v575 = v1149;
                                                                                sub_22B3B4B9C(v567, v1149, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                if (v568(v567 + v565, 1, v13) != 1)
                                                                                {
                                                                                  v591 = v1215;
                                                                                  v592 = v567 + v565;
                                                                                  v593 = v1210;
                                                                                  (*(v1215 + 32))(v1210, v592, v13);
                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                  v594 = sub_22B3F6554();
                                                                                  v595 = *(v591 + 8);
                                                                                  v595(v593, v13);
                                                                                  sub_22B3B4B3C(v1160, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                  v596 = v575;
                                                                                  v569 = v13;
                                                                                  v595(v596, v13);
                                                                                  sub_22B3B4B3C(v567, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                  if (v594)
                                                                                  {
                                                                                    goto LABEL_169;
                                                                                  }

LABEL_157:
                                                                                  v577 = v1156;
                                                                                  sub_22B3F6264();
                                                                                  v1213(v577, 0, 1, v569);
                                                                                  v578 = *(v1217 + 48);
                                                                                  v579 = v577;
                                                                                  v580 = v1157;
                                                                                  sub_22B3B4B9C(v579, v1157, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                  sub_22B3B4B9C(v1216, v580 + v578, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                  v581 = v1212;
                                                                                  if (v1212(v580, 1, v569) == 1)
                                                                                  {
                                                                                    sub_22B3B4B3C(v1156, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                    if (v581(v580 + v578, 1, v569) == 1)
                                                                                    {
                                                                                      sub_22B3B4B3C(v1157, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_177:
                                                                                      sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                      v391 = MEMORY[0x277CD8750];
                                                                                      return *v391;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    sub_22B3B4B9C(v580, v1150, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                    if (v581(v580 + v578, 1, v569) != 1)
                                                                                    {
                                                                                      v602 = v1215;
                                                                                      v603 = v1157;
                                                                                      v604 = v1157 + v578;
                                                                                      v605 = v1210;
                                                                                      (*(v1215 + 32))(v1210, v604, v569);
                                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                      v606 = v1150;
                                                                                      v607 = sub_22B3F6554();
                                                                                      v608 = *(v602 + 8);
                                                                                      v608(v605, v569);
                                                                                      sub_22B3B4B3C(v1156, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                      v608(v606, v569);
                                                                                      sub_22B3B4B3C(v603, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                      if (v607)
                                                                                      {
                                                                                        goto LABEL_177;
                                                                                      }

LABEL_165:
                                                                                      v587 = v1152;
                                                                                      sub_22B3F6264();
                                                                                      v1213(v587, 0, 1, v569);
                                                                                      v588 = *(v1217 + 48);
                                                                                      v589 = v587;
                                                                                      v590 = v1155;
                                                                                      sub_22B3B4B9C(v589, v1155, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                      sub_22B3B4B9C(v1216, v590 + v588, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                      if (v1212(v590, 1, v569) == 1)
                                                                                      {
                                                                                        sub_22B3B4B3C(v1152, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                        if (v1212(v1155 + v588, 1, v569) == 1)
                                                                                        {
                                                                                          sub_22B3B4B3C(v1155, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_185:
                                                                                          sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                          v391 = MEMORY[0x277CD8758];
                                                                                          return *v391;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v597 = v1155;
                                                                                        sub_22B3B4B9C(v1155, v1146, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                        if (v1212(v597 + v588, 1, v569) != 1)
                                                                                        {
                                                                                          v614 = v1215;
                                                                                          v615 = v1155;
                                                                                          v616 = v1155 + v588;
                                                                                          v617 = v1210;
                                                                                          (*(v1215 + 32))(v1210, v616, v569);
                                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                          v618 = v1146;
                                                                                          v619 = sub_22B3F6554();
                                                                                          v620 = *(v614 + 8);
                                                                                          v620(v617, v569);
                                                                                          sub_22B3B4B3C(v1152, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                          v620(v618, v569);
                                                                                          sub_22B3B4B3C(v615, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                          if (v619)
                                                                                          {
                                                                                            goto LABEL_185;
                                                                                          }

LABEL_173:
                                                                                          v598 = v1148;
                                                                                          sub_22B3F6264();
                                                                                          v1213(v598, 0, 1, v569);
                                                                                          v599 = *(v1217 + 48);
                                                                                          v600 = v598;
                                                                                          v601 = v1151;
                                                                                          sub_22B3B4B9C(v600, v1151, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                          sub_22B3B4B9C(v1216, v601 + v599, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                          if (v1212(v601, 1, v569) == 1)
                                                                                          {
                                                                                            sub_22B3B4B3C(v1148, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                            if (v1212(v1151 + v599, 1, v569) == 1)
                                                                                            {
                                                                                              sub_22B3B4B3C(v1151, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_193:
                                                                                              sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                              v391 = MEMORY[0x277CD8760];
                                                                                              return *v391;
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v609 = v1151;
                                                                                            sub_22B3B4B9C(v1151, v1143, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                            if (v1212(v609 + v599, 1, v569) != 1)
                                                                                            {
                                                                                              v626 = v1215;
                                                                                              v627 = v1151;
                                                                                              v628 = v1151 + v599;
                                                                                              v629 = v1210;
                                                                                              (*(v1215 + 32))(v1210, v628, v569);
                                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                              v630 = v1143;
                                                                                              v631 = sub_22B3F6554();
                                                                                              v632 = *(v626 + 8);
                                                                                              v632(v629, v569);
                                                                                              sub_22B3B4B3C(v1148, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                              v632(v630, v569);
                                                                                              sub_22B3B4B3C(v627, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                              if (v631)
                                                                                              {
                                                                                                goto LABEL_193;
                                                                                              }

LABEL_181:
                                                                                              v610 = v1145;
                                                                                              sub_22B3F6264();
                                                                                              v1213(v610, 0, 1, v569);
                                                                                              v611 = *(v1217 + 48);
                                                                                              v612 = v610;
                                                                                              v613 = v1147;
                                                                                              sub_22B3B4B9C(v612, v1147, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                              sub_22B3B4B9C(v1216, v613 + v611, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                              if (v1212(v613, 1, v569) == 1)
                                                                                              {
                                                                                                sub_22B3B4B3C(v1145, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                if (v1212(v1147 + v611, 1, v569) == 1)
                                                                                                {
                                                                                                  sub_22B3B4B3C(v1147, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_201:
                                                                                                  sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                  v391 = MEMORY[0x277CD8768];
                                                                                                  return *v391;
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v621 = v1147;
                                                                                                sub_22B3B4B9C(v1147, v1140, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                if (v1212(v621 + v611, 1, v569) != 1)
                                                                                                {
                                                                                                  v638 = v1215;
                                                                                                  v639 = v1147;
                                                                                                  v640 = v1147 + v611;
                                                                                                  v641 = v1210;
                                                                                                  (*(v1215 + 32))(v1210, v640, v569);
                                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                  v642 = v1140;
                                                                                                  v643 = sub_22B3F6554();
                                                                                                  v644 = *(v638 + 8);
                                                                                                  v644(v641, v569);
                                                                                                  sub_22B3B4B3C(v1145, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                  v644(v642, v569);
                                                                                                  sub_22B3B4B3C(v639, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                  if (v643)
                                                                                                  {
                                                                                                    goto LABEL_201;
                                                                                                  }

LABEL_189:
                                                                                                  v622 = v1142;
                                                                                                  sub_22B3F6264();
                                                                                                  v1213(v622, 0, 1, v569);
                                                                                                  v623 = *(v1217 + 48);
                                                                                                  v624 = v622;
                                                                                                  v625 = v1144;
                                                                                                  sub_22B3B4B9C(v624, v1144, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                  sub_22B3B4B9C(v1216, v625 + v623, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                  if (v1212(v625, 1, v569) == 1)
                                                                                                  {
                                                                                                    sub_22B3B4B3C(v1142, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                    if (v1212(v1144 + v623, 1, v569) == 1)
                                                                                                    {
                                                                                                      sub_22B3B4B3C(v1144, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_209:
                                                                                                      sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                      v391 = MEMORY[0x277CD8770];
                                                                                                      return *v391;
                                                                                                    }
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v633 = v1144;
                                                                                                    sub_22B3B4B9C(v1144, v1137, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                    if (v1212(v633 + v623, 1, v569) != 1)
                                                                                                    {
                                                                                                      v650 = v1215;
                                                                                                      v651 = v1144;
                                                                                                      v652 = v1144 + v623;
                                                                                                      v653 = v1210;
                                                                                                      (*(v1215 + 32))(v1210, v652, v569);
                                                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                      v654 = v1137;
                                                                                                      v655 = sub_22B3F6554();
                                                                                                      v656 = *(v650 + 8);
                                                                                                      v656(v653, v569);
                                                                                                      sub_22B3B4B3C(v1142, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                      v656(v654, v569);
                                                                                                      sub_22B3B4B3C(v651, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                      if (v655)
                                                                                                      {
                                                                                                        goto LABEL_209;
                                                                                                      }

LABEL_197:
                                                                                                      v634 = v1139;
                                                                                                      sub_22B3F6264();
                                                                                                      v1213(v634, 0, 1, v569);
                                                                                                      v635 = *(v1217 + 48);
                                                                                                      v636 = v634;
                                                                                                      v637 = v1141;
                                                                                                      sub_22B3B4B9C(v636, v1141, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                      sub_22B3B4B9C(v1216, v637 + v635, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                      if (v1212(v637, 1, v569) == 1)
                                                                                                      {
                                                                                                        sub_22B3B4B3C(v1139, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                        if (v1212(v1141 + v635, 1, v569) == 1)
                                                                                                        {
                                                                                                          sub_22B3B4B3C(v1141, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_217:
                                                                                                          sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                          v391 = MEMORY[0x277CD8778];
                                                                                                          return *v391;
                                                                                                        }
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v645 = v1141;
                                                                                                        sub_22B3B4B9C(v1141, v1134, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                        if (v1212(v645 + v635, 1, v569) != 1)
                                                                                                        {
                                                                                                          v662 = v1215;
                                                                                                          v663 = v1141;
                                                                                                          v664 = v1141 + v635;
                                                                                                          v665 = v1210;
                                                                                                          (*(v1215 + 32))(v1210, v664, v569);
                                                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                          v666 = v1134;
                                                                                                          v667 = sub_22B3F6554();
                                                                                                          v668 = *(v662 + 8);
                                                                                                          v668(v665, v569);
                                                                                                          sub_22B3B4B3C(v1139, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                          v668(v666, v569);
                                                                                                          sub_22B3B4B3C(v663, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                          if (v667)
                                                                                                          {
                                                                                                            goto LABEL_217;
                                                                                                          }

LABEL_205:
                                                                                                          v646 = v1136;
                                                                                                          sub_22B3F6264();
                                                                                                          v1213(v646, 0, 1, v569);
                                                                                                          v647 = *(v1217 + 48);
                                                                                                          v648 = v646;
                                                                                                          v649 = v1138;
                                                                                                          sub_22B3B4B9C(v648, v1138, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                          sub_22B3B4B9C(v1216, v649 + v647, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                          if (v1212(v649, 1, v569) == 1)
                                                                                                          {
                                                                                                            sub_22B3B4B3C(v1136, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                            if (v1212(v1138 + v647, 1, v569) == 1)
                                                                                                            {
                                                                                                              sub_22B3B4B3C(v1138, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_225:
                                                                                                              sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                              v391 = MEMORY[0x277CD8788];
                                                                                                              return *v391;
                                                                                                            }
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v657 = v1138;
                                                                                                            sub_22B3B4B9C(v1138, v1131, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                            if (v1212(v657 + v647, 1, v569) != 1)
                                                                                                            {
                                                                                                              v674 = v1215;
                                                                                                              v675 = v1138;
                                                                                                              v676 = v1138 + v647;
                                                                                                              v677 = v1210;
                                                                                                              (*(v1215 + 32))(v1210, v676, v569);
                                                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                              v678 = v1131;
                                                                                                              v679 = sub_22B3F6554();
                                                                                                              v680 = *(v674 + 8);
                                                                                                              v680(v677, v569);
                                                                                                              sub_22B3B4B3C(v1136, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                              v680(v678, v569);
                                                                                                              sub_22B3B4B3C(v675, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                              if (v679)
                                                                                                              {
                                                                                                                goto LABEL_225;
                                                                                                              }

LABEL_213:
                                                                                                              v658 = v1133;
                                                                                                              sub_22B3F6264();
                                                                                                              v1213(v658, 0, 1, v569);
                                                                                                              v659 = *(v1217 + 48);
                                                                                                              v660 = v658;
                                                                                                              v661 = v1135;
                                                                                                              sub_22B3B4B9C(v660, v1135, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                              sub_22B3B4B9C(v1216, v661 + v659, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                              if (v1212(v661, 1, v569) == 1)
                                                                                                              {
                                                                                                                sub_22B3B4B3C(v1133, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                if (v1212(v1135 + v659, 1, v569) == 1)
                                                                                                                {
                                                                                                                  sub_22B3B4B3C(v1135, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_233:
                                                                                                                  sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                  v391 = MEMORY[0x277CD8790];
                                                                                                                  return *v391;
                                                                                                                }
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v669 = v1135;
                                                                                                                sub_22B3B4B9C(v1135, v1128, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                if (v1212(v669 + v659, 1, v569) != 1)
                                                                                                                {
                                                                                                                  v686 = v1215;
                                                                                                                  v687 = v1135;
                                                                                                                  v688 = v1135 + v659;
                                                                                                                  v689 = v1210;
                                                                                                                  (*(v1215 + 32))(v1210, v688, v569);
                                                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                  v690 = v1128;
                                                                                                                  v691 = sub_22B3F6554();
                                                                                                                  v692 = *(v686 + 8);
                                                                                                                  v692(v689, v569);
                                                                                                                  sub_22B3B4B3C(v1133, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                  v692(v690, v569);
                                                                                                                  sub_22B3B4B3C(v687, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                  if (v691)
                                                                                                                  {
                                                                                                                    goto LABEL_233;
                                                                                                                  }

LABEL_221:
                                                                                                                  v670 = v1130;
                                                                                                                  sub_22B3F6264();
                                                                                                                  v1213(v670, 0, 1, v569);
                                                                                                                  v671 = *(v1217 + 48);
                                                                                                                  v672 = v670;
                                                                                                                  v673 = v1132;
                                                                                                                  sub_22B3B4B9C(v672, v1132, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                  sub_22B3B4B9C(v1216, v673 + v671, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                  if (v1212(v673, 1, v569) == 1)
                                                                                                                  {
                                                                                                                    sub_22B3B4B3C(v1130, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                    if (v1212(v1132 + v671, 1, v569) == 1)
                                                                                                                    {
                                                                                                                      sub_22B3B4B3C(v1132, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_241:
                                                                                                                      sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                      v391 = MEMORY[0x277CD8798];
                                                                                                                      return *v391;
                                                                                                                    }
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v681 = v1132;
                                                                                                                    sub_22B3B4B9C(v1132, v1125, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                    if (v1212(v681 + v671, 1, v569) != 1)
                                                                                                                    {
                                                                                                                      v698 = v1215;
                                                                                                                      v699 = v1132;
                                                                                                                      v700 = v1132 + v671;
                                                                                                                      v701 = v1210;
                                                                                                                      (*(v1215 + 32))(v1210, v700, v569);
                                                                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                      v702 = v1125;
                                                                                                                      v703 = sub_22B3F6554();
                                                                                                                      v704 = *(v698 + 8);
                                                                                                                      v704(v701, v569);
                                                                                                                      sub_22B3B4B3C(v1130, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                      v704(v702, v569);
                                                                                                                      sub_22B3B4B3C(v699, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                      if (v703)
                                                                                                                      {
                                                                                                                        goto LABEL_241;
                                                                                                                      }

LABEL_229:
                                                                                                                      v682 = v1127;
                                                                                                                      sub_22B3F6264();
                                                                                                                      v1213(v682, 0, 1, v569);
                                                                                                                      v683 = *(v1217 + 48);
                                                                                                                      v684 = v682;
                                                                                                                      v685 = v1129;
                                                                                                                      sub_22B3B4B9C(v684, v1129, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                      sub_22B3B4B9C(v1216, v685 + v683, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                      if (v1212(v685, 1, v569) == 1)
                                                                                                                      {
                                                                                                                        sub_22B3B4B3C(v1127, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                        if (v1212(v1129 + v683, 1, v569) == 1)
                                                                                                                        {
                                                                                                                          sub_22B3B4B3C(v1129, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_249:
                                                                                                                          sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                          v391 = MEMORY[0x277CD87A0];
                                                                                                                          return *v391;
                                                                                                                        }
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v693 = v1129;
                                                                                                                        sub_22B3B4B9C(v1129, v1122, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                        if (v1212(v693 + v683, 1, v569) != 1)
                                                                                                                        {
                                                                                                                          v710 = v1215;
                                                                                                                          v711 = v1129;
                                                                                                                          v712 = v1129 + v683;
                                                                                                                          v713 = v1210;
                                                                                                                          (*(v1215 + 32))(v1210, v712, v569);
                                                                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                          v714 = v1122;
                                                                                                                          v715 = sub_22B3F6554();
                                                                                                                          v716 = *(v710 + 8);
                                                                                                                          v716(v713, v569);
                                                                                                                          sub_22B3B4B3C(v1127, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                          v716(v714, v569);
                                                                                                                          sub_22B3B4B3C(v711, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                          if (v715)
                                                                                                                          {
                                                                                                                            goto LABEL_249;
                                                                                                                          }

LABEL_237:
                                                                                                                          v694 = v1124;
                                                                                                                          sub_22B3F6264();
                                                                                                                          v1213(v694, 0, 1, v569);
                                                                                                                          v695 = *(v1217 + 48);
                                                                                                                          v696 = v694;
                                                                                                                          v697 = v1126;
                                                                                                                          sub_22B3B4B9C(v696, v1126, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                          sub_22B3B4B9C(v1216, v697 + v695, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                          if (v1212(v697, 1, v569) == 1)
                                                                                                                          {
                                                                                                                            sub_22B3B4B3C(v1124, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                            if (v1212(v1126 + v695, 1, v569) == 1)
                                                                                                                            {
                                                                                                                              sub_22B3B4B3C(v1126, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_254:
                                                                                                                              sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                              v391 = MEMORY[0x277CD87A8];
                                                                                                                              return *v391;
                                                                                                                            }
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v705 = v1126;
                                                                                                                            sub_22B3B4B9C(v1126, v1119, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                            if (v1212(v705 + v695, 1, v569) != 1)
                                                                                                                            {
                                                                                                                              v718 = v1215;
                                                                                                                              v719 = v1126;
                                                                                                                              v720 = v1126 + v695;
                                                                                                                              v721 = v1210;
                                                                                                                              (*(v1215 + 32))(v1210, v720, v569);
                                                                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                              v722 = v1119;
                                                                                                                              v723 = sub_22B3F6554();
                                                                                                                              v724 = *(v718 + 8);
                                                                                                                              v724(v721, v569);
                                                                                                                              sub_22B3B4B3C(v1124, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                              v724(v722, v569);
                                                                                                                              sub_22B3B4B3C(v719, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                              if (v723)
                                                                                                                              {
                                                                                                                                goto LABEL_254;
                                                                                                                              }

LABEL_245:
                                                                                                                              v706 = v1121;
                                                                                                                              sub_22B3F6264();
                                                                                                                              v1213(v706, 0, 1, v569);
                                                                                                                              v707 = *(v1217 + 48);
                                                                                                                              v708 = v706;
                                                                                                                              v709 = v1123;
                                                                                                                              sub_22B3B4B9C(v708, v1123, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                              sub_22B3B4B9C(v1216, v709 + v707, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                              if (v1212(v709, 1, v569) == 1)
                                                                                                                              {
                                                                                                                                sub_22B3B4B3C(v1121, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                if (v1212(v1123 + v707, 1, v569) == 1)
                                                                                                                                {
                                                                                                                                  sub_22B3B4B3C(v1123, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_256:
                                                                                                                                  sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                  v391 = MEMORY[0x277CD87B0];
                                                                                                                                  return *v391;
                                                                                                                                }
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v717 = v1123;
                                                                                                                                sub_22B3B4B9C(v1123, v1116, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                if (v1212(v717 + v707, 1, v569) != 1)
                                                                                                                                {
                                                                                                                                  v725 = v1215;
                                                                                                                                  v726 = v1123;
                                                                                                                                  v727 = v1123 + v707;
                                                                                                                                  v728 = v1210;
                                                                                                                                  (*(v1215 + 32))(v1210, v727, v569);
                                                                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                  v729 = v1116;
                                                                                                                                  v730 = sub_22B3F6554();
                                                                                                                                  v731 = *(v725 + 8);
                                                                                                                                  v731(v728, v569);
                                                                                                                                  sub_22B3B4B3C(v1121, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                  v731(v729, v569);
                                                                                                                                  sub_22B3B4B3C(v726, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                  if (v730)
                                                                                                                                  {
                                                                                                                                    goto LABEL_256;
                                                                                                                                  }

LABEL_257:
                                                                                                                                  v732 = v1117;
                                                                                                                                  sub_22B3F6264();
                                                                                                                                  v1213(v732, 0, 1, v569);
                                                                                                                                  v733 = *(v1217 + 48);
                                                                                                                                  v734 = v732;
                                                                                                                                  v735 = v1120;
                                                                                                                                  sub_22B3B4B9C(v734, v1120, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                  sub_22B3B4B9C(v1216, v735 + v733, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                  if (v1212(v735, 1, v569) == 1)
                                                                                                                                  {
                                                                                                                                    sub_22B3B4B3C(v1117, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                    if (v1212(v1120 + v733, 1, v569) == 1)
                                                                                                                                    {
                                                                                                                                      sub_22B3B4B3C(v1120, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_273:
                                                                                                                                      sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                      v391 = MEMORY[0x277CD87B8];
                                                                                                                                      return *v391;
                                                                                                                                    }
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v736 = v1120;
                                                                                                                                    sub_22B3B4B9C(v1120, v1114, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                    if (v1212(v736 + v733, 1, v569) != 1)
                                                                                                                                    {
                                                                                                                                      v747 = v1215;
                                                                                                                                      v748 = v1120;
                                                                                                                                      v749 = v1120 + v733;
                                                                                                                                      v750 = v1210;
                                                                                                                                      (*(v1215 + 32))(v1210, v749, v569);
                                                                                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                      v751 = v1114;
                                                                                                                                      v752 = sub_22B3F6554();
                                                                                                                                      v753 = *(v747 + 8);
                                                                                                                                      v753(v750, v569);
                                                                                                                                      sub_22B3B4B3C(v1117, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                      v753(v751, v569);
                                                                                                                                      sub_22B3B4B3C(v748, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                      if (v752)
                                                                                                                                      {
                                                                                                                                        goto LABEL_273;
                                                                                                                                      }

LABEL_263:
                                                                                                                                      v737 = v1115;
                                                                                                                                      sub_22B3F6264();
                                                                                                                                      v1213(v737, 0, 1, v569);
                                                                                                                                      v738 = *(v1217 + 48);
                                                                                                                                      v739 = v737;
                                                                                                                                      v740 = v1118;
                                                                                                                                      sub_22B3B4B9C(v739, v1118, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                      sub_22B3B4B9C(v1216, v740 + v738, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                      if (v1212(v740, 1, v569) == 1)
                                                                                                                                      {
                                                                                                                                        sub_22B3B4B3C(v1115, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                        if (v1212(v1118 + v738, 1, v569) == 1)
                                                                                                                                        {
                                                                                                                                          v741 = &v1150;
LABEL_280:
                                                                                                                                          sub_22B3B4B3C(*(v741 - 32), &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_281:
                                                                                                                                          sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                          v391 = MEMORY[0x277CD87C0];
                                                                                                                                          return *v391;
                                                                                                                                        }
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v742 = v1118;
                                                                                                                                        sub_22B3B4B9C(v1118, v1109, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                        if (v1212(v742 + v738, 1, v569) != 1)
                                                                                                                                        {
                                                                                                                                          v760 = v1215;
                                                                                                                                          v761 = v1118;
                                                                                                                                          v762 = v1118 + v738;
                                                                                                                                          v763 = v1210;
                                                                                                                                          (*(v1215 + 32))(v1210, v762, v569);
                                                                                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                          v764 = v1109;
                                                                                                                                          v765 = sub_22B3F6554();
                                                                                                                                          v766 = *(v760 + 8);
                                                                                                                                          v766(v763, v569);
                                                                                                                                          sub_22B3B4B3C(v1115, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                          v766(v764, v569);
                                                                                                                                          sub_22B3B4B3C(v761, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                          if (v765)
                                                                                                                                          {
                                                                                                                                            goto LABEL_281;
                                                                                                                                          }

LABEL_269:
                                                                                                                                          v743 = v1110;
                                                                                                                                          sub_22B3F6264();
                                                                                                                                          v1213(v743, 0, 1, v569);
                                                                                                                                          v744 = *(v1217 + 48);
                                                                                                                                          v745 = v743;
                                                                                                                                          v746 = v1112;
                                                                                                                                          sub_22B3B4B9C(v745, v1112, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                          sub_22B3B4B9C(v1216, v746 + v744, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                          if (v1212(v746, 1, v569) == 1)
                                                                                                                                          {
                                                                                                                                            sub_22B3B4B3C(v1110, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                            if (v1212(v1112 + v744, 1, v569) == 1)
                                                                                                                                            {
                                                                                                                                              v741 = &v1144;
                                                                                                                                              goto LABEL_280;
                                                                                                                                            }
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v754 = v1112;
                                                                                                                                            sub_22B3B4B9C(v1112, v1034, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                            if (v1212(v754 + v744, 1, v569) != 1)
                                                                                                                                            {
                                                                                                                                              v768 = v1215;
                                                                                                                                              v769 = v1112;
                                                                                                                                              v770 = v1112 + v744;
                                                                                                                                              v771 = v1210;
                                                                                                                                              (*(v1215 + 32))(v1210, v770, v569);
                                                                                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                              v772 = v1034;
                                                                                                                                              v773 = sub_22B3F6554();
                                                                                                                                              v774 = *(v768 + 8);
                                                                                                                                              v774(v771, v569);
                                                                                                                                              sub_22B3B4B3C(v1110, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                              v774(v772, v569);
                                                                                                                                              sub_22B3B4B3C(v769, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                              if (v773)
                                                                                                                                              {
                                                                                                                                                goto LABEL_281;
                                                                                                                                              }

LABEL_277:
                                                                                                                                              v755 = v1111;
                                                                                                                                              sub_22B3F6264();
                                                                                                                                              v1213(v755, 0, 1, v569);
                                                                                                                                              v756 = *(v1217 + 48);
                                                                                                                                              v757 = v755;
                                                                                                                                              v758 = v1113;
                                                                                                                                              sub_22B3B4B9C(v757, v1113, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                              sub_22B3B4B9C(v1216, v758 + v756, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                              if (v1212(v758, 1, v569) == 1)
                                                                                                                                              {
                                                                                                                                                sub_22B3B4B3C(v1111, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                if (v1212(v1113 + v756, 1, v569) == 1)
                                                                                                                                                {
                                                                                                                                                  v741 = &v1145;
                                                                                                                                                  goto LABEL_280;
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v767 = v1113;
                                                                                                                                                sub_22B3B4B9C(v1113, v1035, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                if (v1212(v767 + v756, 1, v569) != 1)
                                                                                                                                                {
                                                                                                                                                  v775 = v1215;
                                                                                                                                                  v776 = v1113;
                                                                                                                                                  v777 = v1113 + v756;
                                                                                                                                                  v778 = v1210;
                                                                                                                                                  (*(v1215 + 32))(v1210, v777, v569);
                                                                                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                  v779 = v1035;
                                                                                                                                                  v780 = sub_22B3F6554();
                                                                                                                                                  v781 = *(v775 + 8);
                                                                                                                                                  v781(v778, v569);
                                                                                                                                                  sub_22B3B4B3C(v1111, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                  v781(v779, v569);
                                                                                                                                                  sub_22B3B4B3C(v776, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                  if (v780)
                                                                                                                                                  {
                                                                                                                                                    goto LABEL_281;
                                                                                                                                                  }

LABEL_291:
                                                                                                                                                  v782 = v1036;
                                                                                                                                                  sub_22B3F6264();
                                                                                                                                                  v1213(v782, 0, 1, v569);
                                                                                                                                                  v783 = *(v1217 + 48);
                                                                                                                                                  v784 = v782;
                                                                                                                                                  v785 = v1048;
                                                                                                                                                  sub_22B3B4B9C(v784, v1048, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                  sub_22B3B4B9C(v1216, v785 + v783, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                  if (v1212(v785, 1, v569) == 1)
                                                                                                                                                  {
                                                                                                                                                    sub_22B3B4B3C(v1036, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                    if (v1212(v1048 + v783, 1, v569) == 1)
                                                                                                                                                    {
                                                                                                                                                      sub_22B3B4B3C(v1048, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_304:
                                                                                                                                                      sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                      v391 = MEMORY[0x277CD87C8];
                                                                                                                                                      return *v391;
                                                                                                                                                    }
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v786 = v1048;
                                                                                                                                                    sub_22B3B4B9C(v1048, v1037, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                    if (v1212(v786 + v783, 1, v569) != 1)
                                                                                                                                                    {
                                                                                                                                                      v792 = v1215;
                                                                                                                                                      v793 = v1048;
                                                                                                                                                      v794 = v1048 + v783;
                                                                                                                                                      v795 = v1210;
                                                                                                                                                      (*(v1215 + 32))(v1210, v794, v569);
                                                                                                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                      v796 = v1037;
                                                                                                                                                      v797 = sub_22B3F6554();
                                                                                                                                                      v798 = *(v792 + 8);
                                                                                                                                                      v798(v795, v569);
                                                                                                                                                      sub_22B3B4B3C(v1036, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                      v798(v796, v569);
                                                                                                                                                      sub_22B3B4B3C(v793, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                      if (v797)
                                                                                                                                                      {
                                                                                                                                                        goto LABEL_304;
                                                                                                                                                      }

LABEL_297:
                                                                                                                                                      v787 = v1038;
                                                                                                                                                      sub_22B3F6264();
                                                                                                                                                      v1213(v787, 0, 1, v569);
                                                                                                                                                      v788 = *(v1217 + 48);
                                                                                                                                                      v789 = v787;
                                                                                                                                                      v790 = v1051;
                                                                                                                                                      sub_22B3B4B9C(v789, v1051, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                      sub_22B3B4B9C(v1216, v790 + v788, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                      if (v1212(v790, 1, v569) == 1)
                                                                                                                                                      {
                                                                                                                                                        sub_22B3B4B3C(v1038, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                        if (v1212(v1051 + v788, 1, v569) == 1)
                                                                                                                                                        {
                                                                                                                                                          sub_22B3B4B3C(v1051, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_306:
                                                                                                                                                          sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                          v391 = MEMORY[0x277CD87D0];
                                                                                                                                                          return *v391;
                                                                                                                                                        }
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v791 = v1051;
                                                                                                                                                        sub_22B3B4B9C(v1051, v1039, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                        if (v1212(v791 + v788, 1, v569) != 1)
                                                                                                                                                        {
                                                                                                                                                          v799 = v1215;
                                                                                                                                                          v800 = v1051;
                                                                                                                                                          v801 = v1051 + v788;
                                                                                                                                                          v802 = v1210;
                                                                                                                                                          (*(v1215 + 32))(v1210, v801, v569);
                                                                                                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                          v803 = v1039;
                                                                                                                                                          v804 = sub_22B3F6554();
                                                                                                                                                          v805 = *(v799 + 8);
                                                                                                                                                          v805(v802, v569);
                                                                                                                                                          sub_22B3B4B3C(v1038, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                          v805(v803, v569);
                                                                                                                                                          sub_22B3B4B3C(v800, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                          if (v804)
                                                                                                                                                          {
                                                                                                                                                            goto LABEL_306;
                                                                                                                                                          }

LABEL_307:
                                                                                                                                                          v806 = v1040;
                                                                                                                                                          sub_22B3F6264();
                                                                                                                                                          v1213(v806, 0, 1, v569);
                                                                                                                                                          v807 = *(v1217 + 48);
                                                                                                                                                          v808 = v806;
                                                                                                                                                          v809 = v1053;
                                                                                                                                                          sub_22B3B4B9C(v808, v1053, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                          sub_22B3B4B9C(v1216, v809 + v807, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                          if (v1212(v809, 1, v569) == 1)
                                                                                                                                                          {
                                                                                                                                                            sub_22B3B4B3C(v1040, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                            if (v1212(v1053 + v807, 1, v569) == 1)
                                                                                                                                                            {
                                                                                                                                                              sub_22B3B4B3C(v1053, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_320:
                                                                                                                                                              sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                              v391 = MEMORY[0x277CD87D8];
                                                                                                                                                              return *v391;
                                                                                                                                                            }
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v810 = v1053;
                                                                                                                                                            sub_22B3B4B9C(v1053, v1041, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                            if (v1212(v810 + v807, 1, v569) != 1)
                                                                                                                                                            {
                                                                                                                                                              v816 = v1215;
                                                                                                                                                              v817 = v1053;
                                                                                                                                                              v818 = v1053 + v807;
                                                                                                                                                              v819 = v1210;
                                                                                                                                                              (*(v1215 + 32))(v1210, v818, v569);
                                                                                                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                              v820 = v1041;
                                                                                                                                                              v821 = sub_22B3F6554();
                                                                                                                                                              v822 = *(v816 + 8);
                                                                                                                                                              v822(v819, v569);
                                                                                                                                                              sub_22B3B4B3C(v1040, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                              v822(v820, v569);
                                                                                                                                                              sub_22B3B4B3C(v817, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                              if (v821)
                                                                                                                                                              {
                                                                                                                                                                goto LABEL_320;
                                                                                                                                                              }

LABEL_313:
                                                                                                                                                              v811 = v1043;
                                                                                                                                                              sub_22B3F6264();
                                                                                                                                                              v1213(v811, 0, 1, v569);
                                                                                                                                                              v812 = *(v1217 + 48);
                                                                                                                                                              v813 = v811;
                                                                                                                                                              v814 = v1056;
                                                                                                                                                              sub_22B3B4B9C(v813, v1056, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                              sub_22B3B4B9C(v1216, v814 + v812, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                              if (v1212(v814, 1, v569) == 1)
                                                                                                                                                              {
                                                                                                                                                                sub_22B3B4B3C(v1043, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                if (v1212(v1056 + v812, 1, v569) == 1)
                                                                                                                                                                {
                                                                                                                                                                  sub_22B3B4B3C(v1056, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_322:
                                                                                                                                                                  sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                  v391 = MEMORY[0x277CD87E0];
                                                                                                                                                                  return *v391;
                                                                                                                                                                }
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v815 = v1056;
                                                                                                                                                                sub_22B3B4B9C(v1056, v1045, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                if (v1212(v815 + v812, 1, v569) != 1)
                                                                                                                                                                {
                                                                                                                                                                  v823 = v1215;
                                                                                                                                                                  v824 = v1056;
                                                                                                                                                                  v825 = v1056 + v812;
                                                                                                                                                                  v826 = v1210;
                                                                                                                                                                  (*(v1215 + 32))(v1210, v825, v569);
                                                                                                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                                  v827 = v1045;
                                                                                                                                                                  v828 = sub_22B3F6554();
                                                                                                                                                                  v829 = *(v823 + 8);
                                                                                                                                                                  v829(v826, v569);
                                                                                                                                                                  sub_22B3B4B3C(v1043, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                  v829(v827, v569);
                                                                                                                                                                  sub_22B3B4B3C(v824, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                  if (v828)
                                                                                                                                                                  {
                                                                                                                                                                    goto LABEL_322;
                                                                                                                                                                  }

LABEL_323:
                                                                                                                                                                  v830 = v1049;
                                                                                                                                                                  sub_22B3F6264();
                                                                                                                                                                  v1213(v830, 0, 1, v569);
                                                                                                                                                                  v831 = *(v1217 + 48);
                                                                                                                                                                  v832 = v830;
                                                                                                                                                                  v833 = v1059;
                                                                                                                                                                  sub_22B3B4B9C(v832, v1059, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                  sub_22B3B4B9C(v1216, v833 + v831, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                  if (v1212(v833, 1, v569) == 1)
                                                                                                                                                                  {
                                                                                                                                                                    sub_22B3B4B3C(v1049, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                    if (v1212(v1059 + v831, 1, v569) == 1)
                                                                                                                                                                    {
                                                                                                                                                                      sub_22B3B4B3C(v1059, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_330:
                                                                                                                                                                      sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                      v391 = MEMORY[0x277CD87E8];
                                                                                                                                                                      return *v391;
                                                                                                                                                                    }
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v834 = v1059;
                                                                                                                                                                    sub_22B3B4B9C(v1059, v1050, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                    if (v1212(v834 + v831, 1, v569) != 1)
                                                                                                                                                                    {
                                                                                                                                                                      v835 = v1215;
                                                                                                                                                                      v836 = v1059;
                                                                                                                                                                      v837 = v1059 + v831;
                                                                                                                                                                      v838 = v1210;
                                                                                                                                                                      (*(v1215 + 32))(v1210, v837, v569);
                                                                                                                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                                      v839 = v1050;
                                                                                                                                                                      v840 = sub_22B3F6554();
                                                                                                                                                                      v841 = *(v835 + 8);
                                                                                                                                                                      v841(v838, v569);
                                                                                                                                                                      sub_22B3B4B3C(v1049, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                      v841(v839, v569);
                                                                                                                                                                      sub_22B3B4B3C(v836, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                      if (v840)
                                                                                                                                                                      {
                                                                                                                                                                        goto LABEL_330;
                                                                                                                                                                      }

LABEL_331:
                                                                                                                                                                      v842 = v1052;
                                                                                                                                                                      sub_22B3F6264();
                                                                                                                                                                      v1213(v842, 0, 1, v569);
                                                                                                                                                                      v843 = *(v1217 + 48);
                                                                                                                                                                      v844 = v842;
                                                                                                                                                                      v845 = v1061;
                                                                                                                                                                      sub_22B3B4B9C(v844, v1061, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                      sub_22B3B4B9C(v1216, v845 + v843, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                      if (v1212(v845, 1, v569) == 1)
                                                                                                                                                                      {
                                                                                                                                                                        sub_22B3B4B3C(v1052, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                        if (v1212(v1061 + v843, 1, v569) == 1)
                                                                                                                                                                        {
                                                                                                                                                                          sub_22B3B4B3C(v1061, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_338:
                                                                                                                                                                          sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                          v391 = MEMORY[0x277CD87F0];
                                                                                                                                                                          return *v391;
                                                                                                                                                                        }
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v846 = v1061;
                                                                                                                                                                        sub_22B3B4B9C(v1061, v1054, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                        if (v1212(v846 + v843, 1, v569) != 1)
                                                                                                                                                                        {
                                                                                                                                                                          v847 = v1215;
                                                                                                                                                                          v848 = v1061;
                                                                                                                                                                          v849 = v1061 + v843;
                                                                                                                                                                          v850 = v1210;
                                                                                                                                                                          (*(v1215 + 32))(v1210, v849, v569);
                                                                                                                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                                          v851 = v1054;
                                                                                                                                                                          v852 = sub_22B3F6554();
                                                                                                                                                                          v853 = *(v847 + 8);
                                                                                                                                                                          v853(v850, v569);
                                                                                                                                                                          sub_22B3B4B3C(v1052, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                          v853(v851, v569);
                                                                                                                                                                          sub_22B3B4B3C(v848, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                          if (v852)
                                                                                                                                                                          {
                                                                                                                                                                            goto LABEL_338;
                                                                                                                                                                          }

LABEL_339:
                                                                                                                                                                          v854 = v1055;
                                                                                                                                                                          sub_22B3F6264();
                                                                                                                                                                          v1213(v854, 0, 1, v569);
                                                                                                                                                                          v855 = *(v1217 + 48);
                                                                                                                                                                          v856 = v854;
                                                                                                                                                                          v857 = v1064;
                                                                                                                                                                          sub_22B3B4B9C(v856, v1064, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                          sub_22B3B4B9C(v1216, v857 + v855, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                          if (v1212(v857, 1, v569) == 1)
                                                                                                                                                                          {
                                                                                                                                                                            sub_22B3B4B3C(v1055, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                            if (v1212(v1064 + v855, 1, v569) == 1)
                                                                                                                                                                            {
                                                                                                                                                                              sub_22B3B4B3C(v1064, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                              goto LABEL_346;
                                                                                                                                                                            }
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v858 = v1064;
                                                                                                                                                                            sub_22B3B4B9C(v1064, v1057, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                            if (v1212(v858 + v855, 1, v569) != 1)
                                                                                                                                                                            {
                                                                                                                                                                              v859 = v1215;
                                                                                                                                                                              v860 = v1064;
                                                                                                                                                                              v861 = v1064 + v855;
                                                                                                                                                                              v862 = v1210;
                                                                                                                                                                              (*(v1215 + 32))(v1210, v861, v569);
                                                                                                                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                                              v863 = v1057;
                                                                                                                                                                              v864 = sub_22B3F6554();
                                                                                                                                                                              v865 = *(v859 + 8);
                                                                                                                                                                              v865(v862, v569);
                                                                                                                                                                              sub_22B3B4B3C(v1055, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                              v865(v863, v569);
                                                                                                                                                                              sub_22B3B4B3C(v860, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                              if (v864)
                                                                                                                                                                              {
LABEL_346:
                                                                                                                                                                                sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                v866 = v1044;
                                                                                                                                                                                sub_22B3F62D4();
                                                                                                                                                                                v867 = v1073;
                                                                                                                                                                                sub_22B3F62B4();
                                                                                                                                                                                v1042(v866, v1047);
                                                                                                                                                                                v868 = v1072;
                                                                                                                                                                                sub_22B3F6284();
                                                                                                                                                                                v869 = v1077;
                                                                                                                                                                                v870 = v1080;
                                                                                                                                                                                (*(v1077 + 56))(v868, 0, 1, v1080);
                                                                                                                                                                                v871 = *(v1070 + 48);
                                                                                                                                                                                v872 = v1078;
                                                                                                                                                                                sub_22B3B4B9C(v867, v1078, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                sub_22B3B4B9C(v868, v872 + v871, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                v873 = *(v869 + 48);
                                                                                                                                                                                if (v873(v872, 1, v870) == 1)
                                                                                                                                                                                {
                                                                                                                                                                                  sub_22B3B4B3C(v1072, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                  sub_22B3B4B3C(v1073, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                  if (v873(v1078 + v871, 1, v1080) == 1)
                                                                                                                                                                                  {
                                                                                                                                                                                    sub_22B3B4B3C(v1078, &qword_27D8BE490, &qword_22B3F9F08);
LABEL_378:
                                                                                                                                                                                    v391 = MEMORY[0x277CD87F8];
                                                                                                                                                                                    return *v391;
                                                                                                                                                                                  }
                                                                                                                                                                                }

                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                  v884 = v1078;
                                                                                                                                                                                  sub_22B3B4B9C(v1078, v1074, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                  if (v873(v884 + v871, 1, v1080) != 1)
                                                                                                                                                                                  {
                                                                                                                                                                                    v908 = v1077;
                                                                                                                                                                                    v909 = v1078;
                                                                                                                                                                                    v910 = v1078 + v871;
                                                                                                                                                                                    v911 = v1075;
                                                                                                                                                                                    v912 = v1080;
                                                                                                                                                                                    (*(v1077 + 32))(v1075, v910, v1080);
                                                                                                                                                                                    sub_22B3F4AAC(&qword_27D8BE4B0, MEMORY[0x277CC96C0]);
                                                                                                                                                                                    v913 = v1074;
                                                                                                                                                                                    v914 = sub_22B3F6554();
                                                                                                                                                                                    v915 = *(v908 + 8);
                                                                                                                                                                                    v915(v911, v912);
                                                                                                                                                                                    sub_22B3B4B3C(v1072, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                    sub_22B3B4B3C(v1073, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                    v915(v913, v912);
                                                                                                                                                                                    sub_22B3B4B3C(v909, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                    if (v914)
                                                                                                                                                                                    {
                                                                                                                                                                                      goto LABEL_378;
                                                                                                                                                                                    }

LABEL_379:
                                                                                                                                                                                    v391 = MEMORY[0x277CD8840];
                                                                                                                                                                                    return *v391;
                                                                                                                                                                                  }

                                                                                                                                                                                  sub_22B3B4B3C(v1072, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                  sub_22B3B4B3C(v1073, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                  (*(v1077 + 8))(v1074, v1080);
                                                                                                                                                                                }

                                                                                                                                                                                sub_22B3B4B3C(v1078, &qword_27D8BE488, &qword_22B3F9F00);
                                                                                                                                                                                goto LABEL_379;
                                                                                                                                                                              }

LABEL_349:
                                                                                                                                                                              v874 = v1058;
                                                                                                                                                                              sub_22B3F6264();
                                                                                                                                                                              v1213(v874, 0, 1, v569);
                                                                                                                                                                              v875 = *(v1217 + 48);
                                                                                                                                                                              v876 = v874;
                                                                                                                                                                              v877 = v1067;
                                                                                                                                                                              sub_22B3B4B9C(v876, v1067, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                              sub_22B3B4B9C(v1216, v877 + v875, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                              if (v1212(v877, 1, v569) == 1)
                                                                                                                                                                              {
                                                                                                                                                                                sub_22B3B4B3C(v1058, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                if (v1212(v1067 + v875, 1, v569) == 1)
                                                                                                                                                                                {
                                                                                                                                                                                  sub_22B3B4B3C(v1067, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_365:
                                                                                                                                                                                  sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                  v391 = MEMORY[0x277CD8800];
                                                                                                                                                                                  return *v391;
                                                                                                                                                                                }
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                v878 = v1067;
                                                                                                                                                                                sub_22B3B4B9C(v1067, v1060, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                if (v1212(v878 + v875, 1, v569) != 1)
                                                                                                                                                                                {
                                                                                                                                                                                  v885 = v1215;
                                                                                                                                                                                  v886 = v1067;
                                                                                                                                                                                  v887 = v1067 + v875;
                                                                                                                                                                                  v888 = v1210;
                                                                                                                                                                                  (*(v1215 + 32))(v1210, v887, v569);
                                                                                                                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                                                  v889 = v1060;
                                                                                                                                                                                  v890 = sub_22B3F6554();
                                                                                                                                                                                  v891 = *(v885 + 8);
                                                                                                                                                                                  v891(v888, v569);
                                                                                                                                                                                  sub_22B3B4B3C(v1058, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                  v891(v889, v569);
                                                                                                                                                                                  sub_22B3B4B3C(v886, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                  if (v890)
                                                                                                                                                                                  {
                                                                                                                                                                                    goto LABEL_365;
                                                                                                                                                                                  }

LABEL_355:
                                                                                                                                                                                  v879 = v1062;
                                                                                                                                                                                  sub_22B3F6264();
                                                                                                                                                                                  v1213(v879, 0, 1, v569);
                                                                                                                                                                                  v880 = *(v1217 + 48);
                                                                                                                                                                                  v881 = v879;
                                                                                                                                                                                  v882 = v1076;
                                                                                                                                                                                  sub_22B3B4B9C(v881, v1076, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                  sub_22B3B4B9C(v1216, v882 + v880, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                  if (v1212(v882, 1, v569) == 1)
                                                                                                                                                                                  {
                                                                                                                                                                                    sub_22B3B4B3C(v1062, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                    if (v1212(v1076 + v880, 1, v569) == 1)
                                                                                                                                                                                    {
                                                                                                                                                                                      sub_22B3B4B3C(v1076, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_367:
                                                                                                                                                                                      sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                      v391 = MEMORY[0x277CD8808];
                                                                                                                                                                                      return *v391;
                                                                                                                                                                                    }
                                                                                                                                                                                  }

                                                                                                                                                                                  else
                                                                                                                                                                                  {
                                                                                                                                                                                    v883 = v1076;
                                                                                                                                                                                    sub_22B3B4B9C(v1076, v1063, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                    if (v1212(v883 + v880, 1, v569) != 1)
                                                                                                                                                                                    {
                                                                                                                                                                                      v892 = v1215;
                                                                                                                                                                                      v893 = v1076;
                                                                                                                                                                                      v894 = v1076 + v880;
                                                                                                                                                                                      v895 = v1210;
                                                                                                                                                                                      (*(v1215 + 32))(v1210, v894, v569);
                                                                                                                                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                                                      v896 = v1063;
                                                                                                                                                                                      v897 = sub_22B3F6554();
                                                                                                                                                                                      v898 = *(v892 + 8);
                                                                                                                                                                                      v898(v895, v569);
                                                                                                                                                                                      sub_22B3B4B3C(v1062, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                      v898(v896, v569);
                                                                                                                                                                                      sub_22B3B4B3C(v893, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                      if (v897)
                                                                                                                                                                                      {
                                                                                                                                                                                        goto LABEL_367;
                                                                                                                                                                                      }

LABEL_368:
                                                                                                                                                                                      v899 = v1065;
                                                                                                                                                                                      sub_22B3F6264();
                                                                                                                                                                                      v1213(v899, 0, 1, v569);
                                                                                                                                                                                      v900 = *(v1217 + 48);
                                                                                                                                                                                      v901 = v899;
                                                                                                                                                                                      v902 = v1082;
                                                                                                                                                                                      sub_22B3B4B9C(v901, v1082, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                      sub_22B3B4B9C(v1216, v902 + v900, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                      if (v1212(v902, 1, v569) == 1)
                                                                                                                                                                                      {
                                                                                                                                                                                        sub_22B3B4B3C(v1065, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                        if (v1212(v1082 + v900, 1, v569) == 1)
                                                                                                                                                                                        {
                                                                                                                                                                                          sub_22B3B4B3C(v1082, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_384:
                                                                                                                                                                                          sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                          v391 = MEMORY[0x277CD8810];
                                                                                                                                                                                          return *v391;
                                                                                                                                                                                        }
                                                                                                                                                                                      }

                                                                                                                                                                                      else
                                                                                                                                                                                      {
                                                                                                                                                                                        v903 = v1082;
                                                                                                                                                                                        sub_22B3B4B9C(v1082, v1066, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                        if (v1212(v903 + v900, 1, v569) != 1)
                                                                                                                                                                                        {
                                                                                                                                                                                          v917 = v1215;
                                                                                                                                                                                          v918 = v1082;
                                                                                                                                                                                          v919 = v1082 + v900;
                                                                                                                                                                                          v920 = v1210;
                                                                                                                                                                                          (*(v1215 + 32))(v1210, v919, v569);
                                                                                                                                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                                                          v921 = v1066;
                                                                                                                                                                                          v922 = sub_22B3F6554();
                                                                                                                                                                                          v923 = *(v917 + 8);
                                                                                                                                                                                          v923(v920, v569);
                                                                                                                                                                                          sub_22B3B4B3C(v1065, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                          v923(v921, v569);
                                                                                                                                                                                          sub_22B3B4B3C(v918, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                          if (v922)
                                                                                                                                                                                          {
                                                                                                                                                                                            goto LABEL_384;
                                                                                                                                                                                          }

LABEL_374:
                                                                                                                                                                                          v904 = v1068;
                                                                                                                                                                                          sub_22B3F6264();
                                                                                                                                                                                          v1213(v904, 0, 1, v569);
                                                                                                                                                                                          v905 = *(v1217 + 48);
                                                                                                                                                                                          v906 = v904;
                                                                                                                                                                                          v907 = v1085;
                                                                                                                                                                                          sub_22B3B4B9C(v906, v1085, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                          sub_22B3B4B9C(v1216, v907 + v905, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                          if (v1212(v907, 1, v569) == 1)
                                                                                                                                                                                          {
                                                                                                                                                                                            sub_22B3B4B3C(v1068, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                            if (v1212(v1085 + v905, 1, v569) == 1)
                                                                                                                                                                                            {
                                                                                                                                                                                              sub_22B3B4B3C(v1085, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_386:
                                                                                                                                                                                              sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                              v391 = MEMORY[0x277CD8818];
                                                                                                                                                                                              return *v391;
                                                                                                                                                                                            }
                                                                                                                                                                                          }

                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                            v916 = v1085;
                                                                                                                                                                                            sub_22B3B4B9C(v1085, v1069, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                            if (v1212(v916 + v905, 1, v569) != 1)
                                                                                                                                                                                            {
                                                                                                                                                                                              v924 = v1215;
                                                                                                                                                                                              v925 = v1085;
                                                                                                                                                                                              v926 = v1085 + v905;
                                                                                                                                                                                              v927 = v1210;
                                                                                                                                                                                              (*(v1215 + 32))(v1210, v926, v569);
                                                                                                                                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                                                              v928 = v1069;
                                                                                                                                                                                              v929 = sub_22B3F6554();
                                                                                                                                                                                              v930 = *(v924 + 8);
                                                                                                                                                                                              v930(v927, v569);
                                                                                                                                                                                              sub_22B3B4B3C(v1068, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                              v930(v928, v569);
                                                                                                                                                                                              sub_22B3B4B3C(v925, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                              if (v929)
                                                                                                                                                                                              {
                                                                                                                                                                                                goto LABEL_386;
                                                                                                                                                                                              }

LABEL_387:
                                                                                                                                                                                              v931 = v1079;
                                                                                                                                                                                              sub_22B3F6264();
                                                                                                                                                                                              v1213(v931, 0, 1, v569);
                                                                                                                                                                                              v932 = *(v1217 + 48);
                                                                                                                                                                                              v933 = v931;
                                                                                                                                                                                              v934 = v1088;
                                                                                                                                                                                              sub_22B3B4B9C(v933, v1088, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                              sub_22B3B4B9C(v1216, v934 + v932, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                              if (v1212(v934, 1, v569) == 1)
                                                                                                                                                                                              {
                                                                                                                                                                                                sub_22B3B4B3C(v1079, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                if (v1212(v1088 + v932, 1, v569) == 1)
                                                                                                                                                                                                {
                                                                                                                                                                                                  sub_22B3B4B3C(v1088, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_400:
                                                                                                                                                                                                  sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                  v391 = MEMORY[0x277CD8820];
                                                                                                                                                                                                  return *v391;
                                                                                                                                                                                                }
                                                                                                                                                                                              }

                                                                                                                                                                                              else
                                                                                                                                                                                              {
                                                                                                                                                                                                v935 = v1088;
                                                                                                                                                                                                sub_22B3B4B9C(v1088, v1081, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                if (v1212(v935 + v932, 1, v569) != 1)
                                                                                                                                                                                                {
                                                                                                                                                                                                  v941 = v1215;
                                                                                                                                                                                                  v942 = v1088;
                                                                                                                                                                                                  v943 = v1088 + v932;
                                                                                                                                                                                                  v944 = v1210;
                                                                                                                                                                                                  (*(v1215 + 32))(v1210, v943, v569);
                                                                                                                                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                                                                  v945 = v1081;
                                                                                                                                                                                                  v946 = sub_22B3F6554();
                                                                                                                                                                                                  v947 = *(v941 + 8);
                                                                                                                                                                                                  v947(v944, v569);
                                                                                                                                                                                                  sub_22B3B4B3C(v1079, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                  v947(v945, v569);
                                                                                                                                                                                                  sub_22B3B4B3C(v942, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                  if (v946)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    goto LABEL_400;
                                                                                                                                                                                                  }

LABEL_393:
                                                                                                                                                                                                  v936 = v1083;
                                                                                                                                                                                                  sub_22B3F6264();
                                                                                                                                                                                                  v1213(v936, 0, 1, v569);
                                                                                                                                                                                                  v937 = *(v1217 + 48);
                                                                                                                                                                                                  v938 = v936;
                                                                                                                                                                                                  v939 = v1091;
                                                                                                                                                                                                  sub_22B3B4B9C(v938, v1091, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                  sub_22B3B4B9C(v1216, v939 + v937, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                  if (v1212(v939, 1, v569) == 1)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    sub_22B3B4B3C(v1083, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                    if (v1212(v1091 + v937, 1, v569) == 1)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      sub_22B3B4B3C(v1091, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_402:
                                                                                                                                                                                                      sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                      v391 = MEMORY[0x277CD8828];
                                                                                                                                                                                                      return *v391;
                                                                                                                                                                                                    }
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v940 = v1091;
                                                                                                                                                                                                    sub_22B3B4B9C(v1091, v1084, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                    if (v1212(v940 + v937, 1, v569) != 1)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v948 = v1215;
                                                                                                                                                                                                      v949 = v1091;
                                                                                                                                                                                                      v950 = v1091 + v937;
                                                                                                                                                                                                      v951 = v1210;
                                                                                                                                                                                                      (*(v1215 + 32))(v1210, v950, v569);
                                                                                                                                                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                                                                      v952 = v1084;
                                                                                                                                                                                                      v953 = sub_22B3F6554();
                                                                                                                                                                                                      v954 = *(v948 + 8);
                                                                                                                                                                                                      v954(v951, v569);
                                                                                                                                                                                                      sub_22B3B4B3C(v1083, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                      v954(v952, v569);
                                                                                                                                                                                                      sub_22B3B4B3C(v949, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                      if (v953)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        goto LABEL_402;
                                                                                                                                                                                                      }

LABEL_403:
                                                                                                                                                                                                      v955 = v1086;
                                                                                                                                                                                                      sub_22B3F6264();
                                                                                                                                                                                                      v1213(v955, 0, 1, v569);
                                                                                                                                                                                                      v956 = *(v1217 + 48);
                                                                                                                                                                                                      v957 = v955;
                                                                                                                                                                                                      v958 = v1094;
                                                                                                                                                                                                      sub_22B3B4B9C(v957, v1094, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                      sub_22B3B4B9C(v1216, v958 + v956, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                      if (v1212(v958, 1, v569) == 1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        sub_22B3B4B3C(v1086, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                        if (v1212(v1094 + v956, 1, v569) == 1)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          sub_22B3B4B3C(v1094, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_416:
                                                                                                                                                                                                          sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                          v391 = MEMORY[0x277CD8830];
                                                                                                                                                                                                          return *v391;
                                                                                                                                                                                                        }
                                                                                                                                                                                                      }

                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v959 = v1094;
                                                                                                                                                                                                        sub_22B3B4B9C(v1094, v1087, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                        if (v1212(v959 + v956, 1, v569) != 1)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v965 = v1215;
                                                                                                                                                                                                          v966 = v1094;
                                                                                                                                                                                                          v967 = v1094 + v956;
                                                                                                                                                                                                          v968 = v1210;
                                                                                                                                                                                                          (*(v1215 + 32))(v1210, v967, v569);
                                                                                                                                                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                                                                          v969 = v1087;
                                                                                                                                                                                                          v970 = sub_22B3F6554();
                                                                                                                                                                                                          v971 = *(v965 + 8);
                                                                                                                                                                                                          v971(v968, v569);
                                                                                                                                                                                                          sub_22B3B4B3C(v1086, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                          v971(v969, v569);
                                                                                                                                                                                                          sub_22B3B4B3C(v966, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                          if (v970)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            goto LABEL_416;
                                                                                                                                                                                                          }

LABEL_409:
                                                                                                                                                                                                          v960 = v1089;
                                                                                                                                                                                                          sub_22B3F6264();
                                                                                                                                                                                                          v1213(v960, 0, 1, v569);
                                                                                                                                                                                                          v961 = *(v1217 + 48);
                                                                                                                                                                                                          v962 = v960;
                                                                                                                                                                                                          v963 = v1097;
                                                                                                                                                                                                          sub_22B3B4B9C(v962, v1097, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                          sub_22B3B4B9C(v1216, v963 + v961, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                          if (v1212(v963, 1, v569) == 1)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            sub_22B3B4B3C(v1089, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                            if (v1212(v1097 + v961, 1, v569) == 1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              sub_22B3B4B3C(v1097, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_418:
                                                                                                                                                                                                              sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                              v391 = MEMORY[0x277CD8838];
                                                                                                                                                                                                              return *v391;
                                                                                                                                                                                                            }
                                                                                                                                                                                                          }

                                                                                                                                                                                                          else
                                                                                                                                                                                                          {
                                                                                                                                                                                                            v964 = v1097;
                                                                                                                                                                                                            sub_22B3B4B9C(v1097, v1090, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                            if (v1212(v964 + v961, 1, v569) != 1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v972 = v1215;
                                                                                                                                                                                                              v973 = v1097;
                                                                                                                                                                                                              v974 = v1097 + v961;
                                                                                                                                                                                                              v975 = v1210;
                                                                                                                                                                                                              (*(v1215 + 32))(v1210, v974, v569);
                                                                                                                                                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                                                                              v976 = v1090;
                                                                                                                                                                                                              v977 = sub_22B3F6554();
                                                                                                                                                                                                              v978 = *(v972 + 8);
                                                                                                                                                                                                              v978(v975, v569);
                                                                                                                                                                                                              sub_22B3B4B3C(v1089, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                              v978(v976, v569);
                                                                                                                                                                                                              sub_22B3B4B3C(v973, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                              if (v977)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                goto LABEL_418;
                                                                                                                                                                                                              }

LABEL_419:
                                                                                                                                                                                                              v979 = v1092;
                                                                                                                                                                                                              sub_22B3F6264();
                                                                                                                                                                                                              v1213(v979, 0, 1, v569);
                                                                                                                                                                                                              v980 = *(v1217 + 48);
                                                                                                                                                                                                              v981 = v979;
                                                                                                                                                                                                              v982 = v1100;
                                                                                                                                                                                                              sub_22B3B4B9C(v981, v1100, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                              sub_22B3B4B9C(v1216, v982 + v980, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                              if (v1212(v982, 1, v569) == 1)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                sub_22B3B4B3C(v1092, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                if (v1212(v1100 + v980, 1, v569) == 1)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  sub_22B3B4B3C(v1100, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_426:
                                                                                                                                                                                                                  sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                  v391 = MEMORY[0x277CD8848];
                                                                                                                                                                                                                  return *v391;
                                                                                                                                                                                                                }
                                                                                                                                                                                                              }

                                                                                                                                                                                                              else
                                                                                                                                                                                                              {
                                                                                                                                                                                                                v983 = v1100;
                                                                                                                                                                                                                sub_22B3B4B9C(v1100, v1093, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                if (v1212(v983 + v980, 1, v569) != 1)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v984 = v1215;
                                                                                                                                                                                                                  v985 = v1100;
                                                                                                                                                                                                                  v986 = v1100 + v980;
                                                                                                                                                                                                                  v987 = v1210;
                                                                                                                                                                                                                  (*(v1215 + 32))(v1210, v986, v569);
                                                                                                                                                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                                                                                  v988 = v1093;
                                                                                                                                                                                                                  v989 = sub_22B3F6554();
                                                                                                                                                                                                                  v990 = *(v984 + 8);
                                                                                                                                                                                                                  v990(v987, v569);
                                                                                                                                                                                                                  sub_22B3B4B3C(v1092, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                  v990(v988, v569);
                                                                                                                                                                                                                  sub_22B3B4B3C(v985, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                  if (v989)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    goto LABEL_426;
                                                                                                                                                                                                                  }

LABEL_427:
                                                                                                                                                                                                                  v991 = v1095;
                                                                                                                                                                                                                  sub_22B3F6264();
                                                                                                                                                                                                                  v1213(v991, 0, 1, v569);
                                                                                                                                                                                                                  v992 = *(v1217 + 48);
                                                                                                                                                                                                                  v993 = v991;
                                                                                                                                                                                                                  v994 = v1103;
                                                                                                                                                                                                                  sub_22B3B4B9C(v993, v1103, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                  sub_22B3B4B9C(v1216, v994 + v992, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                  if (v1212(v994, 1, v569) == 1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    sub_22B3B4B3C(v1095, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                    if (v1212(v1103 + v992, 1, v569) == 1)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      sub_22B3B4B3C(v1103, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_434:
                                                                                                                                                                                                                      sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                      v391 = MEMORY[0x277CD8850];
                                                                                                                                                                                                                      return *v391;
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v995 = v1103;
                                                                                                                                                                                                                    sub_22B3B4B9C(v1103, v1096, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                    if (v1212(v995 + v992, 1, v569) != 1)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      v996 = v1215;
                                                                                                                                                                                                                      v997 = v1103;
                                                                                                                                                                                                                      v998 = v1103 + v992;
                                                                                                                                                                                                                      v999 = v1210;
                                                                                                                                                                                                                      (*(v1215 + 32))(v1210, v998, v569);
                                                                                                                                                                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                                                                                      v1000 = v1096;
                                                                                                                                                                                                                      v1001 = sub_22B3F6554();
                                                                                                                                                                                                                      v1002 = *(v996 + 8);
                                                                                                                                                                                                                      v1002(v999, v569);
                                                                                                                                                                                                                      sub_22B3B4B3C(v1095, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                      v1002(v1000, v569);
                                                                                                                                                                                                                      sub_22B3B4B3C(v997, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                      if (v1001)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        goto LABEL_434;
                                                                                                                                                                                                                      }

LABEL_435:
                                                                                                                                                                                                                      v1003 = v1098;
                                                                                                                                                                                                                      sub_22B3F6264();
                                                                                                                                                                                                                      v1213(v1003, 0, 1, v569);
                                                                                                                                                                                                                      v1004 = *(v1217 + 48);
                                                                                                                                                                                                                      v1005 = v1003;
                                                                                                                                                                                                                      v1006 = v1106;
                                                                                                                                                                                                                      sub_22B3B4B9C(v1005, v1106, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                      sub_22B3B4B9C(v1216, v1006 + v1004, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                      if (v1212(v1006, 1, v569) == 1)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        sub_22B3B4B3C(v1098, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                        if (v1212(v1106 + v1004, 1, v569) == 1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          sub_22B3B4B3C(v1106, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_448:
                                                                                                                                                                                                                          sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                          v391 = MEMORY[0x277CD8860];
                                                                                                                                                                                                                          return *v391;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      else
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        v1007 = v1106;
                                                                                                                                                                                                                        sub_22B3B4B9C(v1106, v1099, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                        if (v1212(v1007 + v1004, 1, v569) != 1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          v1012 = v1215;
                                                                                                                                                                                                                          v1013 = v1106;
                                                                                                                                                                                                                          v1014 = v1106 + v1004;
                                                                                                                                                                                                                          v1015 = v1210;
                                                                                                                                                                                                                          (*(v1215 + 32))(v1210, v1014, v569);
                                                                                                                                                                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                                                                                          v1016 = v1099;
                                                                                                                                                                                                                          v1017 = sub_22B3F6554();
                                                                                                                                                                                                                          v1018 = *(v1012 + 8);
                                                                                                                                                                                                                          v1018(v1015, v569);
                                                                                                                                                                                                                          sub_22B3B4B3C(v1098, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                          v1018(v1016, v569);
                                                                                                                                                                                                                          sub_22B3B4B3C(v1013, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                          if (v1017)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            goto LABEL_448;
                                                                                                                                                                                                                          }

LABEL_441:
                                                                                                                                                                                                                          v1008 = v1101;
                                                                                                                                                                                                                          sub_22B3F6264();
                                                                                                                                                                                                                          v1213(v1008, 0, 1, v569);
                                                                                                                                                                                                                          v1009 = *(v1217 + 48);
                                                                                                                                                                                                                          v1010 = v1008;
                                                                                                                                                                                                                          v1011 = v1107;
                                                                                                                                                                                                                          sub_22B3B4B9C(v1010, v1107, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                          sub_22B3B4B9C(v1216, v1011 + v1009, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                          if (v1212(v1011, 1, v569) == 1)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            sub_22B3B4B3C(v1101, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                            if (v1212(v1011 + v1009, 1, v569) == 1)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              sub_22B3B4B3C(v1011, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_450:
                                                                                                                                                                                                                              sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                              v391 = MEMORY[0x277CD8868];
                                                                                                                                                                                                                              return *v391;
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          else
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            sub_22B3B4B9C(v1011, v1102, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                            if (v1212(v1011 + v1009, 1, v569) != 1)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v1019 = v1215;
                                                                                                                                                                                                                              v1020 = v1011 + v1009;
                                                                                                                                                                                                                              v1021 = v1210;
                                                                                                                                                                                                                              (*(v1215 + 32))(v1210, v1020, v569);
                                                                                                                                                                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                                                                                              v1022 = v1102;
                                                                                                                                                                                                                              v1023 = sub_22B3F6554();
                                                                                                                                                                                                                              v1024 = *(v1019 + 8);
                                                                                                                                                                                                                              v1024(v1021, v569);
                                                                                                                                                                                                                              sub_22B3B4B3C(v1101, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                              v1024(v1022, v569);
                                                                                                                                                                                                                              sub_22B3B4B3C(v1011, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                              if (v1023)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                goto LABEL_450;
                                                                                                                                                                                                                              }

LABEL_451:
                                                                                                                                                                                                                              v1025 = v1104;
                                                                                                                                                                                                                              sub_22B3F6264();
                                                                                                                                                                                                                              v1213(v1025, 0, 1, v569);
                                                                                                                                                                                                                              v1026 = *(v1217 + 48);
                                                                                                                                                                                                                              v1027 = v1108;
                                                                                                                                                                                                                              sub_22B3B4B9C(v1025, v1108, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                              sub_22B3F4A3C(v1216, v1027 + v1026);
                                                                                                                                                                                                                              if (v1212(v1027, 1, v569) == 1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                sub_22B3B4B3C(v1104, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                                if (v1212(v1027 + v1026, 1, v569) == 1)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  sub_22B3B4B3C(v1027, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_459:
                                                                                                                                                                                                                                  v391 = MEMORY[0x277CD8780];
                                                                                                                                                                                                                                  return *v391;
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                sub_22B3B4B9C(v1027, v1105, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                                if (v1212(v1027 + v1026, 1, v569) != 1)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v1028 = v1215;
                                                                                                                                                                                                                                  v1029 = v1210;
                                                                                                                                                                                                                                  (*(v1215 + 32))(v1210, v1027 + v1026, v569);
                                                                                                                                                                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640]);
                                                                                                                                                                                                                                  v1030 = v1105;
                                                                                                                                                                                                                                  v1031 = sub_22B3F6554();
                                                                                                                                                                                                                                  v1032 = *(v1028 + 8);
                                                                                                                                                                                                                                  v1032(v1029, v569);
                                                                                                                                                                                                                                  sub_22B3B4B3C(v1104, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                                  v1032(v1030, v569);
                                                                                                                                                                                                                                  sub_22B3B4B3C(v1027, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                                  if (v1031)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    goto LABEL_459;
                                                                                                                                                                                                                                  }

LABEL_457:
                                                                                                                                                                                                                                  v391 = MEMORY[0x277CD8858];
                                                                                                                                                                                                                                  return *v391;
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                sub_22B3B4B3C(v1104, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                                (*(v1215 + 8))(v1105, v569);
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              sub_22B3B4B3C(v1027, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                                                              goto LABEL_457;
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            sub_22B3B4B3C(v1101, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                            (*(v1215 + 8))(v1102, v569);
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          sub_22B3B4B3C(v1011, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                                                          goto LABEL_451;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        sub_22B3B4B3C(v1098, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                        (*(v1215 + 8))(v1099, v569);
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      sub_22B3B4B3C(v1106, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                                                      goto LABEL_441;
                                                                                                                                                                                                                    }

                                                                                                                                                                                                                    sub_22B3B4B3C(v1095, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                    (*(v1215 + 8))(v1096, v569);
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  sub_22B3B4B3C(v1103, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                                                  goto LABEL_435;
                                                                                                                                                                                                                }

                                                                                                                                                                                                                sub_22B3B4B3C(v1092, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                (*(v1215 + 8))(v1093, v569);
                                                                                                                                                                                                              }

                                                                                                                                                                                                              sub_22B3B4B3C(v1100, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                                              goto LABEL_427;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            sub_22B3B4B3C(v1089, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                            (*(v1215 + 8))(v1090, v569);
                                                                                                                                                                                                          }

                                                                                                                                                                                                          sub_22B3B4B3C(v1097, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                                          goto LABEL_419;
                                                                                                                                                                                                        }

                                                                                                                                                                                                        sub_22B3B4B3C(v1086, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                        (*(v1215 + 8))(v1087, v569);
                                                                                                                                                                                                      }

                                                                                                                                                                                                      sub_22B3B4B3C(v1094, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                                      goto LABEL_409;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    sub_22B3B4B3C(v1083, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                    (*(v1215 + 8))(v1084, v569);
                                                                                                                                                                                                  }

                                                                                                                                                                                                  sub_22B3B4B3C(v1091, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                                  goto LABEL_403;
                                                                                                                                                                                                }

                                                                                                                                                                                                sub_22B3B4B3C(v1079, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                (*(v1215 + 8))(v1081, v569);
                                                                                                                                                                                              }

                                                                                                                                                                                              sub_22B3B4B3C(v1088, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                              goto LABEL_393;
                                                                                                                                                                                            }

                                                                                                                                                                                            sub_22B3B4B3C(v1068, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                            (*(v1215 + 8))(v1069, v569);
                                                                                                                                                                                          }

                                                                                                                                                                                          sub_22B3B4B3C(v1085, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                          goto LABEL_387;
                                                                                                                                                                                        }

                                                                                                                                                                                        sub_22B3B4B3C(v1065, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                        (*(v1215 + 8))(v1066, v569);
                                                                                                                                                                                      }

                                                                                                                                                                                      sub_22B3B4B3C(v1082, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                      goto LABEL_374;
                                                                                                                                                                                    }

                                                                                                                                                                                    sub_22B3B4B3C(v1062, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                    (*(v1215 + 8))(v1063, v569);
                                                                                                                                                                                  }

                                                                                                                                                                                  sub_22B3B4B3C(v1076, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                  goto LABEL_368;
                                                                                                                                                                                }

                                                                                                                                                                                sub_22B3B4B3C(v1058, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                (*(v1215 + 8))(v1060, v569);
                                                                                                                                                                              }

                                                                                                                                                                              sub_22B3B4B3C(v1067, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                              goto LABEL_355;
                                                                                                                                                                            }

                                                                                                                                                                            sub_22B3B4B3C(v1055, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                            (*(v1215 + 8))(v1057, v569);
                                                                                                                                                                          }

                                                                                                                                                                          sub_22B3B4B3C(v1064, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                          goto LABEL_349;
                                                                                                                                                                        }

                                                                                                                                                                        sub_22B3B4B3C(v1052, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                        (*(v1215 + 8))(v1054, v569);
                                                                                                                                                                      }

                                                                                                                                                                      sub_22B3B4B3C(v1061, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                      goto LABEL_339;
                                                                                                                                                                    }

                                                                                                                                                                    sub_22B3B4B3C(v1049, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                    (*(v1215 + 8))(v1050, v569);
                                                                                                                                                                  }

                                                                                                                                                                  sub_22B3B4B3C(v1059, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                  goto LABEL_331;
                                                                                                                                                                }

                                                                                                                                                                sub_22B3B4B3C(v1043, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                (*(v1215 + 8))(v1045, v569);
                                                                                                                                                              }

                                                                                                                                                              sub_22B3B4B3C(v1056, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                              goto LABEL_323;
                                                                                                                                                            }

                                                                                                                                                            sub_22B3B4B3C(v1040, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                            (*(v1215 + 8))(v1041, v569);
                                                                                                                                                          }

                                                                                                                                                          sub_22B3B4B3C(v1053, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                          goto LABEL_313;
                                                                                                                                                        }

                                                                                                                                                        sub_22B3B4B3C(v1038, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                        (*(v1215 + 8))(v1039, v569);
                                                                                                                                                      }

                                                                                                                                                      sub_22B3B4B3C(v1051, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                      goto LABEL_307;
                                                                                                                                                    }

                                                                                                                                                    sub_22B3B4B3C(v1036, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                    (*(v1215 + 8))(v1037, v569);
                                                                                                                                                  }

                                                                                                                                                  sub_22B3B4B3C(v1048, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                  goto LABEL_297;
                                                                                                                                                }

                                                                                                                                                sub_22B3B4B3C(v1111, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                (*(v1215 + 8))(v1035, v569);
                                                                                                                                              }

                                                                                                                                              sub_22B3B4B3C(v1113, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                              goto LABEL_291;
                                                                                                                                            }

                                                                                                                                            sub_22B3B4B3C(v1110, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                            (*(v1215 + 8))(v1034, v569);
                                                                                                                                          }

                                                                                                                                          sub_22B3B4B3C(v1112, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                          goto LABEL_277;
                                                                                                                                        }

                                                                                                                                        sub_22B3B4B3C(v1115, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                        (*(v1215 + 8))(v1109, v569);
                                                                                                                                      }

                                                                                                                                      sub_22B3B4B3C(v1118, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                      goto LABEL_269;
                                                                                                                                    }

                                                                                                                                    sub_22B3B4B3C(v1117, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                    (*(v1215 + 8))(v1114, v569);
                                                                                                                                  }

                                                                                                                                  sub_22B3B4B3C(v1120, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                  goto LABEL_263;
                                                                                                                                }

                                                                                                                                sub_22B3B4B3C(v1121, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                (*(v1215 + 8))(v1116, v569);
                                                                                                                              }

                                                                                                                              sub_22B3B4B3C(v1123, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                              goto LABEL_257;
                                                                                                                            }

                                                                                                                            sub_22B3B4B3C(v1124, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                            (*(v1215 + 8))(v1119, v569);
                                                                                                                          }

                                                                                                                          sub_22B3B4B3C(v1126, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                          goto LABEL_245;
                                                                                                                        }

                                                                                                                        sub_22B3B4B3C(v1127, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                        (*(v1215 + 8))(v1122, v569);
                                                                                                                      }

                                                                                                                      sub_22B3B4B3C(v1129, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                      goto LABEL_237;
                                                                                                                    }

                                                                                                                    sub_22B3B4B3C(v1130, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                    (*(v1215 + 8))(v1125, v569);
                                                                                                                  }

                                                                                                                  sub_22B3B4B3C(v1132, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                  goto LABEL_229;
                                                                                                                }

                                                                                                                sub_22B3B4B3C(v1133, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                (*(v1215 + 8))(v1128, v569);
                                                                                                              }

                                                                                                              sub_22B3B4B3C(v1135, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                              goto LABEL_221;
                                                                                                            }

                                                                                                            sub_22B3B4B3C(v1136, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                            (*(v1215 + 8))(v1131, v569);
                                                                                                          }

                                                                                                          sub_22B3B4B3C(v1138, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                          goto LABEL_213;
                                                                                                        }

                                                                                                        sub_22B3B4B3C(v1139, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                        (*(v1215 + 8))(v1134, v569);
                                                                                                      }

                                                                                                      sub_22B3B4B3C(v1141, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                      goto LABEL_205;
                                                                                                    }

                                                                                                    sub_22B3B4B3C(v1142, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                    (*(v1215 + 8))(v1137, v569);
                                                                                                  }

                                                                                                  sub_22B3B4B3C(v1144, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                  goto LABEL_197;
                                                                                                }

                                                                                                sub_22B3B4B3C(v1145, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                (*(v1215 + 8))(v1140, v569);
                                                                                              }

                                                                                              sub_22B3B4B3C(v1147, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                              goto LABEL_189;
                                                                                            }

                                                                                            sub_22B3B4B3C(v1148, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                            (*(v1215 + 8))(v1143, v569);
                                                                                          }

                                                                                          sub_22B3B4B3C(v1151, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                          goto LABEL_181;
                                                                                        }

                                                                                        sub_22B3B4B3C(v1152, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                        (*(v1215 + 8))(v1146, v569);
                                                                                      }

                                                                                      sub_22B3B4B3C(v1155, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                      goto LABEL_173;
                                                                                    }

                                                                                    sub_22B3B4B3C(v1156, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                    (*(v1215 + 8))(v1150, v569);
                                                                                  }

                                                                                  sub_22B3B4B3C(v1157, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                  goto LABEL_165;
                                                                                }

                                                                                sub_22B3B4B3C(v1160, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                v576 = v575;
                                                                                v569 = v13;
                                                                                (*(v1215 + 8))(v576, v13);
                                                                              }

                                                                              sub_22B3B4B3C(v567, &qword_27D8BE498, &qword_22B3F9F10);
                                                                              goto LABEL_157;
                                                                            }

                                                                            sub_22B3B4B3C(v1163, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                            (*(v1215 + 8))(v563, v13);
                                                                          }

                                                                          sub_22B3B4B3C(v556, &qword_27D8BE498, &qword_22B3F9F10);
                                                                          goto LABEL_149;
                                                                        }

                                                                        sub_22B3B4B3C(v1167, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                        (*(v1215 + 8))(v553, v13);
                                                                      }

                                                                      sub_22B3B4B3C(v546, &qword_27D8BE498, &qword_22B3F9F10);
                                                                      goto LABEL_141;
                                                                    }

                                                                    sub_22B3B4B3C(v1170, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                    (*(v1215 + 8))(v544, v13);
                                                                    v538 = v1167;
                                                                  }

                                                                  sub_22B3B4B3C(v535, &qword_27D8BE498, &qword_22B3F9F10);
                                                                  goto LABEL_133;
                                                                }

                                                                sub_22B3B4B3C(v1173, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                (*(v1215 + 8))(v533, v13);
                                                                v527 = v1170;
                                                              }

                                                              sub_22B3B4B3C(v524, &qword_27D8BE498, &qword_22B3F9F10);
                                                              goto LABEL_125;
                                                            }

                                                            sub_22B3B4B3C(v1176, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                            (*(v1215 + 8))(v522, v13);
                                                            v516 = v1173;
                                                          }

                                                          sub_22B3B4B3C(v513, &qword_27D8BE498, &qword_22B3F9F10);
                                                          goto LABEL_117;
                                                        }

                                                        sub_22B3B4B3C(v1179, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                        (*(v1215 + 8))(v511, v13);
                                                        v505 = v1176;
                                                      }

                                                      sub_22B3B4B3C(v502, &qword_27D8BE498, &qword_22B3F9F10);
                                                      goto LABEL_109;
                                                    }

                                                    sub_22B3B4B3C(v1182, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                    (*(v1215 + 8))(v500, v13);
                                                    v494 = v1179;
                                                  }

                                                  sub_22B3B4B3C(v491, &qword_27D8BE498, &qword_22B3F9F10);
                                                  goto LABEL_101;
                                                }

                                                sub_22B3B4B3C(v1185, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                (*(v1215 + 8))(v489, v13);
                                                v483 = v1182;
                                              }

                                              sub_22B3B4B3C(v480, &qword_27D8BE498, &qword_22B3F9F10);
                                              goto LABEL_93;
                                            }

                                            sub_22B3B4B3C(v1188, &qword_27D8BE4A0, &qword_22B3F9F18);
                                            (*(v1215 + 8))(v478, v13);
                                            v472 = v1185;
                                          }

                                          sub_22B3B4B3C(v469, &qword_27D8BE498, &qword_22B3F9F10);
                                          goto LABEL_85;
                                        }

                                        sub_22B3B4B3C(v1191, &qword_27D8BE4A0, &qword_22B3F9F18);
                                        (*(v1215 + 8))(v467, v13);
                                        v461 = v1188;
                                      }

                                      sub_22B3B4B3C(v458, &qword_27D8BE498, &qword_22B3F9F10);
                                      goto LABEL_77;
                                    }

                                    sub_22B3B4B3C(v1194, &qword_27D8BE4A0, &qword_22B3F9F18);
                                    (*(v1215 + 8))(v456, v13);
                                    v450 = v1191;
                                  }

                                  sub_22B3B4B3C(v447, &qword_27D8BE498, &qword_22B3F9F10);
                                  goto LABEL_69;
                                }

                                sub_22B3B4B3C(v1197, &qword_27D8BE4A0, &qword_22B3F9F18);
                                (*(v1215 + 8))(v445, v13);
                                v439 = v1194;
                              }

                              sub_22B3B4B3C(v436, &qword_27D8BE498, &qword_22B3F9F10);
                              goto LABEL_61;
                            }

                            sub_22B3B4B3C(v1200, &qword_27D8BE4A0, &qword_22B3F9F18);
                            (*(v1215 + 8))(v434, v13);
                            v428 = v1197;
                          }

                          sub_22B3B4B3C(v425, &qword_27D8BE498, &qword_22B3F9F10);
                          goto LABEL_53;
                        }

                        sub_22B3B4B3C(v406, &qword_27D8BE4A0, &qword_22B3F9F18);
                        (*(v1215 + 8))(v423, v13);
                        v417 = v1200;
                      }

                      sub_22B3B4B3C(v414, &qword_27D8BE498, &qword_22B3F9F10);
                      goto LABEL_45;
                    }

                    sub_22B3B4B3C(v401, &qword_27D8BE4A0, &qword_22B3F9F18);
                    (*(v1215 + 8))(v412, v13);
                    v406 = v1202;
                  }

                  sub_22B3B4B3C(v403, &qword_27D8BE498, &qword_22B3F9F10);
                  goto LABEL_37;
                }

                sub_22B3B4B3C(v393, &qword_27D8BE4A0, &qword_22B3F9F18);
                (*(v1215 + 8))(v400, v13);
              }

              sub_22B3B4B3C(v386, &qword_27D8BE498, &qword_22B3F9F10);
              goto LABEL_29;
            }

            sub_22B3B4B3C(v382, &qword_27D8BE4A0, &qword_22B3F9F18);
            (*(v1215 + 8))(v392, v13);
            v386 = v1208;
          }

          sub_22B3B4B3C(v379, &qword_27D8BE498, &qword_22B3F9F10);
          goto LABEL_21;
        }

        sub_22B3B4B3C(v350, &qword_27D8BE4A0, &qword_22B3F9F18);
        (*(v1215 + 8))(v381, v13);
        v379 = v1209;
      }

      sub_22B3B4B3C(v377, &qword_27D8BE498, &qword_22B3F9F10);
      goto LABEL_13;
    }

    sub_22B3B4B3C(v356, &qword_27D8BE4A0, &qword_22B3F9F18);
    (*(v1215 + 8))(v353, v13);
LABEL_6:
    sub_22B3B4B3C(v369, &qword_27D8BE498, &qword_22B3F9F10);
    goto LABEL_7;
  }

  sub_22B3B4B3C(v356, &qword_27D8BE4A0, &qword_22B3F9F18);
  if (v373(v369 + v372, 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_22B3B4B3C(v369, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_17:
  sub_22B3B4B3C(v1216, &qword_27D8BE4A0, &qword_22B3F9F18);
  v391 = MEMORY[0x277CD86B0];
  return *v391;
}

uint64_t sub_22B3F4A3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE4A0, &qword_22B3F9F18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B3F4AAC(unint64_t *a1, void (*a2)(uint64_t))
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

MCCKitCategorization::CategoryTS_optional __swiftcall CategoryTS.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 4) > 0xC)
  {
    *v1 = 12;
  }

  else
  {
    *v1 = byte_22B3FA062[rawValue + 4];
  }

  return rawValue;
}

void static CategoryTS.getCategory(for:)(char *a1@<X8>)
{
  v3 = sub_22B3F65E4();
  v4 = v2;
  if (v3 == 0x5241444E454C4143 && v2 == 0xE800000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    v5 = 4;
  }

  else if (v3 == 5130566 && v4 == 0xE300000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    v5 = 5;
  }

  else if (v3 == 0x474E49524948 && v4 == 0xE600000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    v5 = 6;
  }

  else if (v3 == 0x59545245504F5250 && v4 == 0xE800000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    v5 = 7;
  }

  else if (v3 == 0x4E49474F4CLL && v4 == 0xE500000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    v5 = 8;
  }

  else if (v3 == 0x5354544F4ELL && v4 == 0xE500000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    v5 = 9;
  }

  else if (v3 == 0x544341534E415254 && v4 == 0xEC000000534E4F49 || (sub_22B3F6C84() & 1) != 0)
  {

    v5 = 10;
  }

  else if (v3 == 0xD000000000000014 && 0x800000022B3FBA60 == v4 || (sub_22B3F6C84() & 1) != 0)
  {

    v5 = 0;
  }

  else
  {
    if (v3 == 0x524F525245 && v4 == 0xE500000000000000 || (sub_22B3F6C84() & 1) != 0)
    {
    }

    else
    {
      if (v3 == 18760 && v4 == 0xE200000000000000)
      {

        v5 = 11;
        goto LABEL_5;
      }

      v6 = sub_22B3F6C84();

      if (v6)
      {
        v5 = 11;
        goto LABEL_5;
      }

      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v7 = sub_22B3F6464();
      __swift_project_value_buffer(v7, qword_28140D680);

      v8 = sub_22B3F6444();
      v9 = sub_22B3F68C4();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v15 = v11;
        *v10 = 136315138;
        v12 = sub_22B3F65E4();
        v14 = sub_22B3BDABC(v12, v13, &v15);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_22B3A7000, v8, v9, "Invalid category key: %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x231890C40](v11, -1, -1);
        MEMORY[0x231890C40](v10, -1, -1);
      }
    }

    v5 = 1;
  }

LABEL_5:
  *a1 = v5;
}

unint64_t static CategoryTS.getCategoryText(for:)(_BYTE *a1)
{
  v1 = *a1;
  if (v1 > 5)
  {
    v2 = 0x5354544F4ELL;
    v5 = 0x544341534E415254;
    if (v1 != 10)
    {
      v5 = 18760;
    }

    if (v1 != 9)
    {
      v2 = v5;
    }

    v3 = 0x474E49524948;
    v6 = 0x59545245504F5250;
    if (v1 != 7)
    {
      v6 = 0x4E49474F4CLL;
    }

    if (v1 != 6)
    {
      v3 = v6;
    }

    v4 = *a1 <= 8u;
  }

  else
  {
    v2 = 0x5241444E454C4143;
    if (v1 != 4)
    {
      v2 = 5130566;
    }

    if (v1 == 3)
    {
      v2 = 0x524F525245;
    }

    v3 = 0xD000000000000014;
    if (*a1)
    {
      v3 = 0x524F525245;
    }

    v4 = *a1 <= 2u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22B3F5134()
{
  v1 = *v0;
  sub_22B3F6D34();
  MEMORY[0x231890640](qword_22B3FA070[v1]);
  return sub_22B3F6D54();
}

uint64_t sub_22B3F51BC()
{
  v1 = *v0;
  sub_22B3F6D34();
  MEMORY[0x231890640](qword_22B3FA070[v1]);
  return sub_22B3F6D54();
}

unint64_t sub_22B3F523C()
{
  result = qword_27D8BE4B8;
  if (!qword_27D8BE4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE4B8);
  }

  return result;
}

unint64_t sub_22B3F5294()
{
  result = qword_27D8BE4C0;
  if (!qword_27D8BE4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BE4C8, &qword_22B3F9FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE4C0);
  }

  return result;
}

void *ModelProxy.__allocating_init(modelLocation:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = 0x636C65646F6D6C6DLL;
  v4[3] = 0xE800000000000000;
  v4[4] = 0x6C65646F6D6C6DLL;
  v4[5] = 0xE700000000000000;
  v4[6] = a1;
  v4[7] = a2;

  v5 = sub_22B3F56B0(a1, a2);

  v4[8] = v5;
  return v4;
}

void *ModelProxy.init(modelLocation:)(uint64_t a1, unint64_t a2)
{
  v2[2] = 0x636C65646F6D6C6DLL;
  v2[3] = 0xE800000000000000;
  v2[4] = 0x6C65646F6D6C6DLL;
  v2[5] = 0xE700000000000000;
  v2[6] = a1;
  v2[7] = a2;

  v2[8] = sub_22B3F56B0(a1, a2);

  return v2;
}

uint64_t sub_22B3F5428(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

void sub_22B3F5468()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = sub_22B3F56B0(v1, v2);

  v4 = v0[8];
  v0[8] = v3;
}

id sub_22B3F54C8(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22B3F60F4();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_22B3F6184();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_22B3F6064();

    swift_willThrow();
    v9 = sub_22B3F6184();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ModelProxy.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return v0;
}

uint64_t ModelProxy.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_22B3F56B0(uint64_t a1, unint64_t a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v57 = sub_22B3F6184();
  v4 = *(v57 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v57);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  type metadata accessor for MCCNLP();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  v56 = a1;
  v22 = sub_22B3F6564();
  v23 = sub_22B3F6564();
  v58 = v21;
  v24 = [v21 URLForResource:v22 withExtension:v23];

  if (v24)
  {
    sub_22B3F6134();

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v25 = sub_22B3F6464();
    __swift_project_value_buffer(v25, qword_28140D680);
    v26 = sub_22B3F6444();
    v27 = sub_22B3F68B4();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v57;
    if (v28)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22B3A7000, v26, v27, "Model already compiled", v30, 2u);
      MEMORY[0x231890C40](v30, -1, -1);
    }

    sub_22B3BE570();
    (*(v4 + 16))(v16, v19, v29);
    v31 = sub_22B3F54C8(v16);
    (*(v4 + 8))(v19, v29);
    goto LABEL_14;
  }

  v55 = v13;
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v32 = sub_22B3F6464();
  __swift_project_value_buffer(v32, qword_28140D680);

  v33 = sub_22B3F6444();
  v34 = sub_22B3F68B4();

  v35 = os_log_type_enabled(v33, v34);
  v36 = v56;
  if (v35)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v60 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_22B3BDABC(v36, a2, &v60);
    _os_log_impl(&dword_22B3A7000, v33, v34, "Compiled model not found. Finding %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x231890C40](v38, -1, -1);
    MEMORY[0x231890C40](v37, -1, -1);
  }

  v54 = a2;
  v39 = sub_22B3F6564();
  v40 = sub_22B3F6564();
  v41 = [v58 pathForResource:v39 ofType:v40];

  if (v41)
  {
    sub_22B3F6594();

    v42 = objc_opt_self();
    sub_22B3F60D4();
    v43 = sub_22B3F60F4();
    v44 = *(v4 + 8);
    v45 = v57;
    v44(v10, v57);
    v60 = 0;
    v46 = [v42 compileModelAtURL:v43 error:&v60];

    v47 = v60;
    if (v46)
    {
      v48 = v55;
      sub_22B3F6134();
      v49 = v47;

      sub_22B3BE570();
      (*(v4 + 16))(v7, v48, v45);
      v31 = sub_22B3F54C8(v7);
      v44(v48, v45);

LABEL_14:

      v50 = *MEMORY[0x277D85DE8];
      return v31;
    }

    v52 = v60;
    v53 = sub_22B3F6064();

    swift_willThrow();
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_22B3F6AC4();
    MEMORY[0x23188FF80](0xD00000000000001BLL, 0x800000022B3FC280);
    MEMORY[0x23188FF80](v56, v54);
    MEMORY[0x23188FF80](8238, 0xE200000000000000);
    v59 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A8, &qword_22B3F7A70);
    sub_22B3F6B04();
  }

  else
  {
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_22B3F6AC4();

    v60 = 0xD00000000000001ELL;
    v61 = 0x800000022B3FC260;
    MEMORY[0x23188FF80](v56, v54);
  }

  result = sub_22B3F6B14();
  __break(1u);
  return result;
}