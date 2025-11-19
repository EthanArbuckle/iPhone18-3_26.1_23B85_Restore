size_t sub_24909F754(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_24909F930(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24909F9FC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_2490A4944(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24909F9FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24909FB08(a5, a6);
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
    result = sub_24910D29C();
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

uint64_t sub_24909FB08(uint64_t a1, unint64_t a2)
{
  v4 = sub_24909FB54(a1, a2);
  sub_24909FC84(&unk_285C1EBF8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24909FB54(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24909FD70(v5, 0);
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

  result = sub_24910D29C();
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
        v10 = sub_24910CD0C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24909FD70(v10, 0);
        result = sub_24910D24C();
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

uint64_t sub_24909FC84(uint64_t result)
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

  result = sub_24909FDE4(result, v12, 1, v3);
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

void *sub_24909FD70(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7EC0, &qword_249110010);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24909FDE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7EC0, &qword_249110010);
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

uint64_t sub_24909FED8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2490A2D10(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_24909FF44(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_24909FF44(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24910D4FC();
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
        v5 = sub_24910CD8C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2490A010C(v7, v8, a1, v4);
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
    return sub_2490A003C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2490A003C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_24910D54C(), (result & 1) == 0))
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

uint64_t sub_2490A010C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_2490A099C(v8);
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
        sub_2490A06E8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_24910D54C();
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
            result = sub_24910D54C();
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
      result = sub_24909F544(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_24909F544((v39 > 1), v40 + 1, 1, v8);
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
        sub_2490A06E8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2490A099C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2490A0910(v44);
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
    if (v37 || (result = sub_24910D54C(), (result & 1) == 0))
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

uint64_t sub_2490A06E8(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_24910D54C() & 1) != 0)
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
      if (!v21 && (sub_24910D54C() & 1) != 0)
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

uint64_t sub_2490A0910(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2490A099C(v3);
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

unint64_t sub_2490A09B0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x24C1F2700](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x24C1F2700](&v3, 8);
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

unint64_t sub_2490A0A3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24910D60C();
  sub_24910CCCC();
  v6 = sub_24910D62C();

  return sub_2490A0AF8(a1, a2, v6);
}

unint64_t sub_2490A0AB4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_24910D5FC();

  return sub_2490A0BB0(a1, v4);
}

unint64_t sub_2490A0AF8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24910D54C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2490A0BB0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_2490A0C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = *v7;
  v15 = sub_2490A0A3C(a1, a2);
  if (v16)
  {
    v17 = v15;
    v18 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v12;
    v31 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v20 = v31;
    }

    v21 = *(*(v20 + 48) + 16 * v17 + 8);

    v22 = *(v20 + 56);
    v23 = a3(0);
    v30 = *(v23 - 8);
    sub_2490A43AC(v22 + *(v30 + 72) * v17, a7, a4);
    sub_2490A17E4(v17, v20, a5);
    *v12 = v20;
    v24 = *(v30 + 56);
    v25 = a7;
    v26 = 0;
    v27 = v23;
  }

  else
  {
    v28 = a3(0);
    v24 = *(*(v28 - 8) + 56);
    v27 = v28;
    v25 = a7;
    v26 = 1;
  }

  return v24(v25, v26, 1, v27);
}

uint64_t sub_2490A0DA0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for DTSyncedAlarm(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7648, &qword_24910EB60);
  v44 = a2;
  result = sub_24910D36C();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
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
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_2490A43AC(v31, v45, type metadata accessor for DTSyncedAlarm);
      }

      else
      {
        sub_2490A3010(v31, v45, type metadata accessor for DTSyncedAlarm);
      }

      v32 = *(v12 + 40);
      sub_24910D60C();
      sub_24910CCCC();
      result = sub_24910D62C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_2490A43AC(v45, *(v12 + 56) + v30 * v20, type metadata accessor for DTSyncedAlarm);
      ++*(v12 + 16);
      v9 = v42;
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

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_2490A1118(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for DTSyncedTimer(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7650, &qword_24910EB68);
  v44 = a2;
  result = sub_24910D36C();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
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
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_2490A43AC(v31, v45, type metadata accessor for DTSyncedTimer);
      }

      else
      {
        sub_2490A3010(v31, v45, type metadata accessor for DTSyncedTimer);
      }

      v32 = *(v12 + 40);
      sub_24910D60C();
      sub_24910CCCC();
      result = sub_24910D62C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_2490A43AC(v45, *(v12 + 56) + v30 * v20, type metadata accessor for DTSyncedTimer);
      ++*(v12 + 16);
      v9 = v42;
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

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_2490A1490(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890);
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - v8;
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7690, &qword_24910EBA0);
  v41 = a2;
  result = sub_24910D36C();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
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
    v39 = (v6 + 16);
    v40 = v6;
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
      if (v41)
      {
        (*v19)(v42, v28, v43);
      }

      else
      {
        (*v39)(v42, v28, v43);
      }

      v29 = *(v12 + 40);
      result = sub_24910D5FC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v42, v43);
      ++*(v12 + 16);
      v6 = v40;
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

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v9 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_2490A17E4(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_24910D16C() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_24910D60C();

      sub_24910CCCC();
      v15 = sub_24910D62C();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2490A19D8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24910D16C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_24910D5FC();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
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

uint64_t sub_2490A1B9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2490A0A3C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for DTSyncedAlarm(0);
      return sub_2490A4480(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for DTSyncedAlarm);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_2490A219C();
    goto LABEL_7;
  }

  sub_2490A0DA0(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_2490A0A3C(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_24910D57C();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_2490A2038(v12, a2, a3, a1, v18, type metadata accessor for DTSyncedAlarm, type metadata accessor for DTSyncedAlarm);
}

uint64_t sub_2490A1D30(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2490A0A3C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for DTSyncedTimer(0);
      return sub_2490A4480(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for DTSyncedTimer);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_2490A23F4();
    goto LABEL_7;
  }

  sub_2490A1118(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_2490A0A3C(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_24910D57C();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_2490A2038(v12, a2, a3, a1, v18, type metadata accessor for DTSyncedTimer, type metadata accessor for DTSyncedTimer);
}

uint64_t sub_2490A1EC4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2490A0AB4(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2490A264C();
      goto LABEL_7;
    }

    sub_2490A1490(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_2490A0AB4(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_24910D57C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_2490A20E4(v10, a2, a1, v16);
}

uint64_t sub_2490A2038(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_2490A43AC(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_2490A20E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890);
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *sub_2490A219C()
{
  v1 = v0;
  v2 = type metadata accessor for DTSyncedAlarm(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7648, &qword_24910EB60);
  v5 = *v0;
  v6 = sub_24910D35C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_2490A3010(*(v5 + 56) + v27, v31, type metadata accessor for DTSyncedAlarm);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_2490A43AC(v26, *(v28 + 56) + v27, type metadata accessor for DTSyncedAlarm);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_2490A23F4()
{
  v1 = v0;
  v2 = type metadata accessor for DTSyncedTimer(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7650, &qword_24910EB68);
  v5 = *v0;
  v6 = sub_24910D35C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_2490A3010(*(v5 + 56) + v27, v31, type metadata accessor for DTSyncedTimer);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_2490A43AC(v26, *(v28 + 56) + v27, type metadata accessor for DTSyncedTimer);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_2490A264C()
{
  v1 = v0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890);
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7690, &qword_24910EBA0);
  v4 = *v0;
  v5 = sub_24910D35C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_2490A28BC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_24909F754(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_27EED7600, &qword_24910EB38, MEMORY[0x277CBBC78]);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_24910C99C();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

size_t sub_2490A2A0C(size_t a1, int64_t a2, char a3)
{
  result = sub_2490A2B38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2490A2A2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81E0, &unk_249110E50);
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

size_t sub_2490A2B38(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
  v10 = *(sub_24910C99C() - 8);
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
  v15 = *(sub_24910C99C() - 8);
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

uint64_t sub_2490A2D24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_weakInit();
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  sub_2490A561C((v3 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData));
  v5 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__migrateTime;
  v6 = sub_24910C48C();
  (*(*(v6 - 8) + 56))(v3 + v5, 1, 1, v6);
  *(v3 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__eventContinuations) = MEMORY[0x277D84F98];
  v7 = sub_24910C37C();
  if (!v7)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CBC230]) init];
    [v8 setUseZoneWidePCS_];
    v9 = sub_24910CC8C();
    v10 = [objc_opt_self() containerWithIdentifier_];

    v11 = [v10 containerID];
    v12 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID:v11 options:v8];

    v7 = v12;
  }

  *(v3 + 24) = v7;
  swift_weakAssign();
  v13 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__environment;
  v14 = sub_24910C3BC();
  (*(*(v14 - 8) + 32))(v3 + v13, a2, v14);
  return v3;
}

uint64_t sub_2490A2F0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A0, &qword_24910E898);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DTSyncDaemon()
{
  result = qword_27EED8610;
  if (!qword_27EED8610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2490A2FC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2490A3010(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2490A3078()
{
  result = qword_27EED75C8;
  if (!qword_27EED75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED75C8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
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

uint64_t sub_2490A317C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2490A31BC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *v1;
  v4 = sub_24910CA7C();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = sub_24910CA5C();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = sub_24910CAAC();
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v13 = sub_24910C9EC();
  v2[16] = v13;
  v14 = *(v13 - 8);
  v2[17] = v14;
  v15 = *(v14 + 64) + 15;
  v2[18] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7710, &qword_24910E8C8) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v17 = sub_24910C9BC();
  v2[20] = v17;
  v18 = *(v17 - 8);
  v2[21] = v18;
  v19 = *(v18 + 64) + 15;
  v2[22] = swift_task_alloc();
  v20 = sub_24910CABC();
  v2[23] = v20;
  v21 = *(v20 - 8);
  v2[24] = v21;
  v22 = *(v21 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon);
  v24 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490A3504, v24, v23);
}

uint64_t sub_2490A3504()
{
  v115 = v0;
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[5];
  v109 = sub_24910C89C();
  __swift_project_value_buffer(v109, qword_27EED82D8);
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  v6 = sub_24910C87C();
  v7 = sub_24910CF5C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  if (v8)
  {
    bufa = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v114 = v112;
    *bufa = 136315138;
    sub_2490A2FC8(&qword_27EED7620, MEMORY[0x277CBBD88]);
    v108 = v7;
    v12 = v5;
    v13 = sub_24910D50C();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = v13;
    v5 = v12;
    v18 = sub_24909F930(v17, v15, &v114);

    *(bufa + 4) = v18;
    _os_log_impl(&dword_249083000, v6, v108, "CloudKit event: %s", bufa, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v112);
    MEMORY[0x24C1F26F0](v112, -1, -1);
    MEMORY[0x24C1F26F0](bufa, -1, -1);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  v20 = v0[24];
  v19 = v0[25];
  v21 = v0[23];
  v5(v19, v0[5], v21);
  v22 = (*(v20 + 88))(v19, v21);
  if (v22 == *MEMORY[0x277CBBC98])
  {
    v23 = v0[25];
    v24 = v0[22];
    v25 = v0[20];
    v26 = v0[21];
    v27 = v0[19];
    v28 = v0[6];
    (*(v0[24] + 96))(v23, v0[23]);
    (*(v26 + 32))(v24, v23, v25);
    sub_24910C9AC();
    v29 = sub_24910CACC();
    (*(*(v29 - 8) + 56))(v27, 0, 1, v29);
    v30 = v28 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    swift_beginAccess();
    v31 = type metadata accessor for DTSyncDaemon.PersistentData(0);
    sub_2490A48DC(v27, v30 + *(v31 + 20), &qword_27EED7710, &qword_24910E8C8);
    swift_endAccess();
    sub_24909329C();
    LOBYTE(v114) = 0;
    DTSyncDaemon._report(event:)(&v114);
    (*(v26 + 8))(v24, v25);
    goto LABEL_13;
  }

  if (v22 == *MEMORY[0x277CBBCD0])
  {
    v32 = v0[25];
    v34 = v0[17];
    v33 = v0[18];
    v35 = v0[16];
    v36 = v0[6];
    (*(v0[24] + 96))(v32, v0[23]);
    (*(v34 + 32))(v33, v32, v35);
    sub_249096028(v33);
LABEL_12:
    (*(v34 + 8))(v33, v35);
    goto LABEL_13;
  }

  if (v22 == *MEMORY[0x277CBBD58])
  {
    v37 = v0[25];
    v34 = v0[8];
    v33 = v0[9];
    v38 = v0[6];
    v35 = v0[7];
    (*(v0[24] + 96))(v37, v0[23]);
    (*(v34 + 32))(v33, v37, v35);
    sub_2490967C0();
    goto LABEL_12;
  }

  if (v22 == *MEMORY[0x277CBBD70])
  {
    v49 = v0[25];
    v50 = v0[14];
    v51 = v0[15];
    v52 = v0[13];
    (*(v0[24] + 96))(v49, v0[23]);
    v53 = (*(v50 + 32))(v51, v49, v52);
    v54 = MEMORY[0x24C1F14B0](v53);
    v55 = *(v54 + 16);
    if (v55)
    {
      v56 = v54;
      v113 = 0;
      v57 = *(sub_24910CECC() - 8);
      v58 = v56 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
      buf = *(v57 + 72);
      while (1)
      {
        v59 = MEMORY[0x24C1F18E0]();
        v60 = sub_24910D0FC();
        v62 = v61;
        v63 = [v59 recordID];
        v64 = [v63 recordName];

        v65 = sub_24910CC9C();
        v67 = v66;

        v68 = sub_2490A86B8();
        if (v60 == *v68 && v62 == *(v68 + 1) || (sub_24910D54C() & 1) != 0)
        {
          v69 = v0[6];

          v70.super.isa = v59;
          v71 = sub_249099438(v65, v67, v70);
        }

        else
        {
          v73 = sub_2490AF22C();
          if ((v60 != *v73 || v62 != *(v73 + 1)) && (sub_24910D54C() & 1) == 0)
          {
            if (qword_27EED82D0 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v109, qword_27EED82D8);

            v75 = sub_24910C87C();
            v76 = sub_24910CF5C();

            if (os_log_type_enabled(v75, v76))
            {
              log = v75;
              v77 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              v114 = v107;
              *v77 = 136315394;
              v78 = sub_24909F930(v60, v62, &v114);

              *(v77 + 4) = v78;
              *(v77 + 12) = 2080;
              v79 = sub_24909F930(v65, v67, &v114);

              *(v77 + 14) = v79;
              _os_log_impl(&dword_249083000, log, v76, "Server modification: unsupported, type=%s, id=%s", v77, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C1F26F0](v107, -1, -1);
              MEMORY[0x24C1F26F0](v77, -1, -1);
            }

            else
            {
            }

            goto LABEL_24;
          }

          v74 = v0[6];

          v71 = sub_249099DC8(v65, v67, v59);
        }

        v72 = v71;

        v113 |= v72;
LABEL_24:
        v58 += buf;
        if (!--v55)
        {
          goto LABEL_44;
        }
      }
    }

    v113 = 0;
LABEL_44:
    v100 = v0[15];
    v101 = v0[6];

    v103 = MEMORY[0x24C1F14C0](v102);
    v104 = sub_249098278(v103);

    if (v113 & 1) != 0 || (v104)
    {
      v105 = v0[6];
      sub_24909329C();
    }

    v98 = v0[14];
    v97 = v0[15];
    v99 = v0[13];
    goto LABEL_48;
  }

  if (v22 == *MEMORY[0x277CBBD28])
  {
    v80 = v0[25];
    v81 = v0[23];
    v82 = v0[24] + 8;
  }

  else
  {
    v83 = v0[25];
    v81 = v0[23];
    if (v22 == *MEMORY[0x277CBBD40])
    {
      v85 = v0[11];
      v84 = v0[12];
      v86 = v0[10];
      v87 = v0[6];
      (*(v0[24] + 96))(v0[25], v81);
      v88 = (*(v85 + 32))(v84, v83, v86);
      v89 = MEMORY[0x24C1F1470](v88);
      LOBYTE(v85) = sub_24909A748(v89);

      v91 = MEMORY[0x24C1F1460](v90);
      v92 = sub_24909B378(v91);

      v94 = MEMORY[0x24C1F1450](v93);
      v95 = sub_24909C2CC(v94);

      if (v85 & 1) != 0 || (v92 & 1) != 0 || (v95)
      {
        v96 = v0[6];
        sub_24909329C();
      }

      v98 = v0[11];
      v97 = v0[12];
      v99 = v0[10];
LABEL_48:
      (*(v98 + 8))(v97, v99);
      goto LABEL_13;
    }

    v80 = v0[25];
  }

  v16(v80, v81);
LABEL_13:
  v40 = v0[25];
  v39 = v0[26];
  v41 = v0[22];
  v43 = v0[18];
  v42 = v0[19];
  v44 = v0[15];
  v45 = v0[12];
  v46 = v0[9];

  v47 = v0[1];

  return v47();
}

uint64_t sub_2490A3F18(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24909EED8;

  return sub_249097610(a1, v5, v4);
}

unint64_t sub_2490A3FC4()
{
  result = qword_27EED75F0;
  if (!qword_27EED75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED75F0);
  }

  return result;
}

uint64_t sub_2490A4018(uint64_t a1)
{
  result = sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon);
  *(a1 + 8) = result;
  return result;
}

void sub_2490A4078()
{
  v0 = sub_24910C3BC();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for DTSyncDaemon.PersistentData(319);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2490A41E0();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2490A41E0()
{
  if (!qword_27EED75F8)
  {
    sub_24910C48C();
    v0 = sub_24910D11C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EED75F8);
    }
  }
}

uint64_t getEnumTagSinglePayload for DTSyncDaemon.Event(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DTSyncDaemon.Event(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2490A43AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2490A4414(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2490A4474(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2490A4480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_2490A44E8()
{
  result = qword_27EED7668;
  if (!qword_27EED7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7668);
  }

  return result;
}

uint64_t sub_2490A453C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2490A45A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2490A45DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24908837C;

  return sub_2490955DC(v4, v2, v3);
}

uint64_t sub_2490A4674(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2490A46DC()
{
  result = qword_27EED8180;
  if (!qword_27EED8180)
  {
    sub_2490A4744(255, &qword_27EED7B60, 0x277D85C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED8180);
  }

  return result;
}

uint64_t sub_2490A4744(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2490A478C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2490A47C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2490887FC;

  return sub_249087F68(a1, v5);
}

uint64_t sub_2490A487C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2490A48DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2490A4944(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2490A49A0()
{
  v1 = sub_24910C48C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2490A4A6C()
{
  v2 = *(sub_24910C48C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24908837C;

  return sub_249093EA4(v5, v6, v7, v4, v0 + v3);
}

void sub_2490A4D08(uint64_t a1, unint64_t *a2)
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

unint64_t sub_2490A4DA0()
{
  result = qword_27EED76F8;
  if (!qword_27EED76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED76F8);
  }

  return result;
}

uint64_t sub_2490A4E8C()
{
  v0 = sub_24910C89C();
  __swift_allocate_value_buffer(v0, qword_27EED8AA8);
  __swift_project_value_buffer(v0, qword_27EED8AA8);
  sub_24910C58C();
  return sub_24910C88C();
}

uint64_t DTSyncDaemon.PersistentData.database.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 DTSyncDaemon.PersistentData.database.setter(__n128 *a1)
{
  v4 = v1->n128_u64[0];
  v3 = v1->n128_i64[1];

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t DTSyncDaemon.PersistentData.stateSerialization.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DTSyncDaemon.PersistentData(0) + 20);

  return sub_2490A4FFC(v3, a1);
}

uint64_t sub_2490A4FFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7710, &qword_24910E8C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DTSyncDaemon.PersistentData.stateSerialization.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DTSyncDaemon.PersistentData(0) + 20);

  return sub_2490A50B0(a1, v3);
}

uint64_t sub_2490A50B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7710, &qword_24910E8C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2490A5188()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x6573616261746164;
  }

  *v0;
  return result;
}

uint64_t sub_2490A51C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6573616261746164 && a2 == 0xE800000000000000;
  if (v6 || (sub_24910D54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000249111270 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24910D54C();

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

uint64_t sub_2490A52C4(uint64_t a1)
{
  v2 = sub_2490A5574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490A5300(uint64_t a1)
{
  v2 = sub_2490A5574();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DTSyncDaemon.PersistentData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7718, &qword_24910EEF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490A5574();
  sub_24910D64C();
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v14[15] = 0;
  sub_2490A55C8();

  sub_24910D4EC();

  if (!v2)
  {
    v12 = *(type metadata accessor for DTSyncDaemon.PersistentData(0) + 20);
    LOBYTE(v15) = 1;
    sub_24910CACC();
    sub_2490A5A5C(&qword_27EED7728, MEMORY[0x277CBBD98]);
    sub_24910D49C();
  }

  return (*(v6 + 8))(v9, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2490A5574()
{
  result = qword_27EED8AC0;
  if (!qword_27EED8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED8AC0);
  }

  return result;
}

unint64_t sub_2490A55C8()
{
  result = qword_27EED7720;
  if (!qword_27EED7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7720);
  }

  return result;
}

uint64_t sub_2490A561C@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x277D84F98];
  *a1 = MEMORY[0x277D84F98];
  *(a1 + 1) = v2;
  v3 = *(type metadata accessor for DTSyncDaemon.PersistentData(0) + 20);
  v4 = sub_24910CACC();
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t DTSyncDaemon.PersistentData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7710, &qword_24910E8C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7730, &qword_24910EEF8);
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for DTSyncDaemon.PersistentData(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D84F98];
  *v16 = MEMORY[0x277D84F98];
  *(v16 + 1) = v17;
  v18 = *(v14 + 28);
  v19 = sub_24910CACC();
  (*(*(v19 - 8) + 56))(&v16[v18], 1, 1, v19);
  v20 = a1[3];
  v21 = a1[4];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_2490A5574();
  sub_24910D63C();
  if (!v2)
  {
    v28 = v18;
    v22 = v30;
    v34 = 0;
    sub_2490A5A08();
    v23 = v31;
    sub_24910D43C();
    v25 = *v16;
    v24 = *(v16 + 1);
    v27 = v33;

    *v16 = v27;
    LOBYTE(v33) = 1;
    sub_2490A5A5C(&qword_27EED7740, MEMORY[0x277CBBD98]);
    sub_24910D3EC();
    (*(v22 + 8))(v11, v23);
    sub_2490A50B0(v7, &v16[v28]);
    sub_2490B3938(v16, v29, type metadata accessor for DTSyncDaemon.PersistentData);
  }

  __swift_destroy_boxed_opaque_existential_0(v32);
  return sub_2490A4414(v16, type metadata accessor for DTSyncDaemon.PersistentData);
}

unint64_t sub_2490A5A08()
{
  result = qword_27EED7738;
  if (!qword_27EED7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7738);
  }

  return result;
}

uint64_t sub_2490A5A5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DTSyncedDatabase.alarms.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t DTSyncedDatabase.timers.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_2490A5BA0()
{
  if (*v0)
  {
    return 0x7372656D6974;
  }

  else
  {
    return 0x736D72616C61;
  }
}

uint64_t sub_2490A5BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736D72616C61 && a2 == 0xE600000000000000;
  if (v6 || (sub_24910D54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7372656D6974 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24910D54C();

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

uint64_t sub_2490A5CA0(uint64_t a1)
{
  v2 = sub_2490A5EF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490A5CDC(uint64_t a1)
{
  v2 = sub_2490A5EF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DTSyncedDatabase.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7748, &qword_24910EF00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490A5EF0();

  sub_24910D64C();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7750, &qword_24910EF08);
  sub_2490A5F44();
  sub_24910D4EC();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7768, &qword_24910EF10);
    sub_2490A6020();
    sub_24910D4EC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2490A5EF0()
{
  result = qword_27EED8AC8;
  if (!qword_27EED8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED8AC8);
  }

  return result;
}

unint64_t sub_2490A5F44()
{
  result = qword_27EED7758;
  if (!qword_27EED7758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EED7750, &qword_24910EF08);
    sub_2490A5A5C(&qword_27EED7760, type metadata accessor for DTSyncedAlarm);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7758);
  }

  return result;
}

unint64_t sub_2490A6020()
{
  result = qword_27EED7770;
  if (!qword_27EED7770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EED7768, &qword_24910EF10);
    sub_2490A5A5C(&qword_27EED7778, type metadata accessor for DTSyncedTimer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7770);
  }

  return result;
}

uint64_t sub_2490A60FC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DTSyncedDatabase.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7780, &qword_24910EF18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490A5EF0();
  sub_24910D63C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7750, &qword_24910EF08);
    v15 = 0;
    sub_2490A6368();
    sub_24910D43C();
    v12 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7768, &qword_24910EF10);
    v15 = 1;
    sub_2490A6424();
    sub_24910D43C();
    (*(v6 + 8))(v9, v5);
    v13 = v16;
    *a2 = v12;
    a2[1] = v13;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_2490A6368()
{
  result = qword_27EED7788;
  if (!qword_27EED7788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EED7750, &qword_24910EF08);
    sub_2490A5A5C(&qword_27EED7790, type metadata accessor for DTSyncedAlarm);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7788);
  }

  return result;
}

unint64_t sub_2490A6424()
{
  result = qword_27EED7798;
  if (!qword_27EED7798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EED7768, &qword_24910EF10);
    sub_2490A5A5C(&qword_27EED77A0, type metadata accessor for DTSyncedTimer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7798);
  }

  return result;
}

id sub_2490A6514()
{
  result = 0;
  v2 = *(v0 + 48);
  if (v2 >> 60 != 15)
  {
    v3 = *(v0 + 40);
    v4 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_2490B3924(v3, v2);
    v5 = sub_2490B3794();
    [v5 setRequiresSecureCoding_];
    v6 = [objc_allocWithZone(MEMORY[0x277CBC5A0]) initWithCoder_];

    sub_2490B3854(v3, v2);
    return v6;
  }

  return result;
}

id sub_2490A6750()
{
  result = 0;
  v2 = *(v0 + 32);
  if (v2 >> 60 != 15)
  {
    v3 = *(v0 + 24);
    v4 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_2490B3924(v3, v2);
    v5 = sub_2490B3794();
    [v5 setRequiresSecureCoding_];
    v6 = [objc_allocWithZone(MEMORY[0x277CBC5A0]) initWithCoder_];

    sub_2490B3854(v3, v2);
    return v6;
  }

  return result;
}

id DTSyncedObject.lastKnownRecord.getter(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 56))();
  result = 0;
  if (v2 >> 60 != 15)
  {
    v5 = v2;
    v6 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v7 = sub_2490B3794();
    [v7 setRequiresSecureCoding_];
    v8 = [objc_allocWithZone(MEMORY[0x277CBC5A0]) initWithCoder_];

    sub_2490B3854(v3, v5);
    return v8;
  }

  return result;
}

void DTSyncedObject.lastKnownRecord.setter(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    [a1 encodeSystemFieldsWithCoder_];
    v6 = [v11 encodedData];
    v7 = sub_24910C1DC();
    v9 = v8;

    (*(a3 + 64))(v7, v9, a2, a3);
  }

  else
  {
    v10 = *(a3 + 64);

    v10();
  }
}

uint64_t (*sub_2490A6D04(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = DTSyncedObject.lastKnownRecord.modify(v6, a2, a3);
  return sub_2490B6480;
}

void (*sub_2490A6D8C(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2490A6514();
  return sub_2490A6DD4;
}

void sub_2490A6DD4(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v18 = v3;
    if (v3)
    {
      v4 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
      v5 = v18;
      v6 = [v4 initRequiringSecureCoding_];
      [v5 encodeSystemFieldsWithCoder_];
      v7 = [v6 encodedData];
      v8 = sub_24910C1DC();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xF000000000000000;
    }

    v16 = a1[1];
    sub_2490B3854(v16[5], v16[6]);
    v16[5] = v8;
    v16[6] = v10;
  }

  else
  {
    if (v3)
    {
      v19 = v3;
      v11 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
      [v19 encodeSystemFieldsWithCoder_];
      v12 = [v11 encodedData];
      v13 = sub_24910C1DC();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xF000000000000000;
    }

    v17 = a1[1];
    sub_2490B3854(v17[5], v17[6]);
    v17[5] = v13;
    v17[6] = v15;
  }
}

void (*sub_2490A6F70(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2490A6750();
  return sub_2490A6FB8;
}

void sub_2490A6FB8(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v18 = v3;
    if (v3)
    {
      v4 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
      v5 = v18;
      v6 = [v4 initRequiringSecureCoding_];
      [v5 encodeSystemFieldsWithCoder_];
      v7 = [v6 encodedData];
      v8 = sub_24910C1DC();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xF000000000000000;
    }

    v16 = a1[1];
    sub_2490B3854(v16[3], v16[4]);
    v16[3] = v8;
    v16[4] = v10;
  }

  else
  {
    if (v3)
    {
      v19 = v3;
      v11 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
      [v19 encodeSystemFieldsWithCoder_];
      v12 = [v11 encodedData];
      v13 = sub_24910C1DC();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xF000000000000000;
    }

    v17 = a1[1];
    sub_2490B3854(v17[3], v17[4]);
    v17[3] = v13;
    v17[4] = v15;
  }
}

void (*DTSyncedObject.lastKnownRecord.modify(id *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = DTSyncedObject.lastKnownRecord.getter(a2, a3);
  return sub_2490A71A8;
}

void sub_2490A71A8(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    v6 = v5;
    DTSyncedObject.lastKnownRecord.setter(v5, v4, v2);
  }

  else
  {
    DTSyncedObject.lastKnownRecord.setter(*a1, v4, v2);
  }
}

uint64_t sub_2490A7234(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED77A8, &unk_24910EF20);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = sub_24910C26C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = sub_2490A6514();
  if (!v18)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_7:
    sub_2490A487C(v9, &qword_27EED77A8, &unk_24910EF20);
    v21 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
    v22 = a1;
    v23 = [v21 initRequiringSecureCoding_];
    [v22 encodeSystemFieldsWithCoder_];
    v24 = [v23 encodedData];
    v25 = sub_24910C1DC();
    v27 = v26;

    result = sub_2490B3854(*(v1 + 40), *(v1 + 48));
    *(v1 + 40) = v25;
    *(v1 + 48) = v27;
    return result;
  }

  v19 = v18;
  v20 = [v18 modificationDate];

  if (v20)
  {
    sub_24910C22C();

    (*(v11 + 56))(v7, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v7, 1, 1, v10);
  }

  sub_2490B3868(v7, v9, &qword_27EED77A8, &unk_24910EF20);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_7;
  }

  (*(v11 + 32))(v17, v9, v10);
  v29 = [a1 modificationDate];
  if (!v29)
  {
    return (*(v11 + 8))(v17, v10);
  }

  v30 = v29;
  sub_24910C22C();

  if (sub_24910C20C())
  {
    v31 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
    v32 = a1;
    v33 = [v31 initRequiringSecureCoding_];
    [v32 encodeSystemFieldsWithCoder_];
    v34 = [v33 encodedData];
    v35 = sub_24910C1DC();
    v37 = v36;

    v38 = *(v11 + 8);
    v38(v15, v10);
    v38(v17, v10);
    result = sub_2490B3854(*(v1 + 40), *(v1 + 48));
    *(v1 + 40) = v35;
    *(v1 + 48) = v37;
  }

  else
  {
    v39 = *(v11 + 8);
    v39(v15, v10);
    return (v39)(v17, v10);
  }

  return result;
}

uint64_t sub_2490A7654(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED77A8, &unk_24910EF20);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = sub_24910C26C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = sub_2490A6750();
  if (!v18)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_7:
    sub_2490A487C(v9, &qword_27EED77A8, &unk_24910EF20);
    v21 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
    v22 = a1;
    v23 = [v21 initRequiringSecureCoding_];
    [v22 encodeSystemFieldsWithCoder_];
    v24 = [v23 encodedData];
    v25 = sub_24910C1DC();
    v27 = v26;

    result = sub_2490B3854(*(v1 + 24), *(v1 + 32));
    *(v1 + 24) = v25;
    *(v1 + 32) = v27;
    return result;
  }

  v19 = v18;
  v20 = [v18 modificationDate];

  if (v20)
  {
    sub_24910C22C();

    (*(v11 + 56))(v7, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v7, 1, 1, v10);
  }

  sub_2490B3868(v7, v9, &qword_27EED77A8, &unk_24910EF20);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_7;
  }

  (*(v11 + 32))(v17, v9, v10);
  v29 = [a1 modificationDate];
  if (!v29)
  {
    return (*(v11 + 8))(v17, v10);
  }

  v30 = v29;
  sub_24910C22C();

  if (sub_24910C20C())
  {
    v31 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
    v32 = a1;
    v33 = [v31 initRequiringSecureCoding_];
    [v32 encodeSystemFieldsWithCoder_];
    v34 = [v33 encodedData];
    v35 = sub_24910C1DC();
    v37 = v36;

    v38 = *(v11 + 8);
    v38(v15, v10);
    v38(v17, v10);
    result = sub_2490B3854(*(v1 + 24), *(v1 + 32));
    *(v1 + 24) = v35;
    *(v1 + 32) = v37;
  }

  else
  {
    v39 = *(v11 + 8);
    v39(v15, v10);
    return (v39)(v17, v10);
  }

  return result;
}

Swift::Void __swiftcall DTSyncedObject.setLastKnownRecordIfNewer(_:)(CKRecord a1)
{
  v3 = v2;
  v4 = v1;
  isa = a1.super.isa;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED77A8, &unk_24910EF20);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = sub_24910C26C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v38 - v21;
  v23 = *(v3 + 80);
  v40 = v4;
  v24 = v23(v4, v3);
  if (!v24)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_7:
    sub_2490A487C(v11, &qword_27EED77A8, &unk_24910EF20);
    v27 = *(v3 + 88);
    v28 = isa;
    v29 = isa;
    v27(v28, v40, v3);
    return;
  }

  v25 = v24;
  v39 = v20;
  v26 = [v24 modificationDate];

  if (v26)
  {
    sub_24910C22C();

    (*(v13 + 56))(v9, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v9, 1, 1, v12);
  }

  sub_2490B3868(v9, v11, &qword_27EED77A8, &unk_24910EF20);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_7;
  }

  v30 = *(v13 + 32);
  v30(v22, v11, v12);
  v31 = isa;
  v32 = [(objc_class *)isa modificationDate];
  if (v32)
  {
    v33 = v32;
    sub_24910C22C();

    v34 = v39;
    v30(v39, v17, v12);
    if (sub_24910C20C())
    {
      v35 = *(v3 + 88);
      v36 = v31;
      v35(v31, v40, v3);
    }

    v37 = *(v13 + 8);
    v37(v34, v12);
    v37(v22, v12);
  }

  else
  {
    (*(v13 + 8))(v22, v12);
  }
}

uint64_t sub_2490A7E1C(void *a1)
{
  v2 = sub_24910BFDC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_24910BFCC();
  type metadata accessor for DTSyncedAlarm(0);
  sub_2490A5A5C(&qword_27EED7760, type metadata accessor for DTSyncedAlarm);
  v5 = sub_24910BFBC();
  v7 = v6;

  v8 = [a1 encryptedValues];
  swift_getObjectType();
  sub_2490B38D0(v5, v7);
  sub_24910CFEC();
  sub_2490A453C(v5, v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_2490A80D8(void *a1)
{
  v2 = sub_24910BFDC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_24910BFCC();
  type metadata accessor for DTSyncedTimer(0);
  sub_2490A5A5C(&qword_27EED7778, type metadata accessor for DTSyncedTimer);
  v5 = sub_24910BFBC();
  v7 = v6;

  v8 = [a1 encryptedValues];
  swift_getObjectType();
  sub_2490B38D0(v5, v7);
  sub_24910CFEC();
  sub_2490A453C(v5, v7);
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall DTSyncedObject.populateRecord(_:)(CKRecord a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_24910BFDC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_24910BFCC();
  v9 = *(v3 + 24);
  v10 = sub_24910BFBC();
  v12 = v11;

  [(objc_class *)a1.super.isa encryptedValues];
  swift_getObjectType();
  (*(v3 + 48))(v4, v3);
  sub_2490B38D0(v10, v12);
  sub_24910CFEC();
  sub_2490A453C(v10, v12);
  swift_unknownObjectRelease();
}

id sub_2490A863C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = DTSyncedObject.lastKnownRecord.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

void sub_2490A8670(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = *a1;
  DTSyncedObject.lastKnownRecord.setter(v6, v4, v5);
}

uint64_t DTSyncedAlarm.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DTSyncedAlarm.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DTSyncedAlarm.lastKnownRecordData.getter()
{
  v1 = *(v0 + 40);
  sub_2490B3924(v1, *(v0 + 48));
  return v1;
}

uint64_t DTSyncedAlarm.lastKnownRecordData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2490B3854(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t DTSyncedAlarm.modificationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DTSyncedAlarm(0) + 36);
  v4 = sub_24910C26C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DTSyncedAlarm.modificationDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DTSyncedAlarm(0) + 36);
  v4 = sub_24910C26C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DTSyncedAlarm.repeatSchedule.getter()
{
  v1 = *(v0 + *(type metadata accessor for DTSyncedAlarm(0) + 40));
}

uint64_t DTSyncedAlarm.repeatSchedule.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DTSyncedAlarm(0) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DTSyncedAlarm.sound.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DTSyncedAlarm(0) + 44);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

__n128 DTSyncedAlarm.sound.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = (v1 + *(type metadata accessor for DTSyncedAlarm(0) + 44));
  v5 = v4->n128_u64[1];

  result = v7;
  *v4 = v7;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u8[8] = v3;
  return result;
}

uint64_t DTSyncedAlarm.targetIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for DTSyncedAlarm(0) + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DTSyncedAlarm.targetIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DTSyncedAlarm(0) + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DTSyncedAlarm.title.getter()
{
  v1 = (v0 + *(type metadata accessor for DTSyncedAlarm(0) + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DTSyncedAlarm.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DTSyncedAlarm(0) + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DTSyncedAlarm.init(id:hour:minute:modificationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_24910C2FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C2EC();
  sub_24910C28C();
  (*(v13 + 8))(v16, v12);
  *(a6 + 16) = 1;
  *(a6 + 40) = xmmword_24910EEA0;
  v17 = type metadata accessor for DTSyncedAlarm(0);
  v18 = v17[9];
  sub_24910C1FC();
  v19 = v17[10];

  *(a6 + v19) = MEMORY[0x277D84FA0];
  v20 = a6 + v17[11];
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 24) = 0;
  *(v20 + 16) = 0;
  v21 = (a6 + v17[12]);
  *v21 = 0;
  v21[1] = 0;
  v22 = (a6 + v17[13]);
  *v22 = 0;
  v22[1] = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  v23 = sub_24910C26C();
  return (*(*(v23 - 8) + 40))(a6 + v18, a5, v23);
}

void DTSyncedAlarm.init(mtAlarm:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v126 = sub_24910C26C();
  v4 = *(v126 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v126);
  v7 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24910C2FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C2EC();
  sub_24910C28C();
  (*(v9 + 8))(v12, v8);
  *(a2 + 40) = xmmword_24910EEA0;
  v13 = type metadata accessor for DTSyncedAlarm(0);
  v14 = v13[9];
  sub_24910C1FC();
  v15 = v13[10];
  v16 = MEMORY[0x277D84FA0];
  v123 = v13;
  v124 = v15;
  *(a2 + v15) = MEMORY[0x277D84FA0];
  v17 = a2 + v13[11];
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 24) = 0;
  v122 = v17;
  *(v17 + 16) = 0;
  v18 = [a1 alarmIDString];
  v19 = sub_24910CC9C();
  v21 = v20;

  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = [a1 isEnabled];
  *(a2 + 24) = [a1 hour];
  *(a2 + 32) = [a1 minute];
  sub_24910C23C();
  (*(v4 + 40))(a2 + v14, v7, v126);
  v126 = a1;
  v22 = [a1 repeatSchedule];
  if (v22)
  {
    v23 = *(v16 + 40);
    sub_24910D60C();
    sub_24910CCCC();
    v24 = sub_24910D62C();
    v25 = -1 << *(v16 + 32);
    v26 = v24 & ~v25;
    if ((*(v16 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v26))
    {
      v27 = ~v25;
      while (*(*(v16 + 48) + v26) > 3u || *(*(v16 + 48) + v26))
      {
        v28 = sub_24910D54C();

        if (v28)
        {
          goto LABEL_12;
        }

        v26 = (v26 + 1) & v27;
        if (((*(v16 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v26) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v16 = MEMORY[0x277D84FA0];
    }

    else
    {
LABEL_11:
      v29 = v127;
      v30 = v124;
      v31 = *(v127 + v124);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v128 = *(v29 + v30);
      sub_2490B293C(0, v26, isUniquelyReferenced_nonNull_native);
      v16 = v128;
      *(v29 + v30) = v128;
    }
  }

LABEL_12:
  v125 = v22;
  if ((v22 & 2) == 0)
  {
    if ((v22 & 4) != 0)
    {
      goto LABEL_30;
    }

LABEL_14:
    if ((v22 & 8) != 0)
    {
      goto LABEL_41;
    }

LABEL_15:
    if ((v22 & 0x10) != 0)
    {
      goto LABEL_53;
    }

LABEL_16:
    if ((v22 & 0x20) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_17;
  }

  v33 = *(v16 + 40);
  sub_24910D60C();
  sub_24910CCCC();
  v34 = sub_24910D62C();
  v35 = -1 << *(v16 + 32);
  v36 = v34 & ~v35;
  if (((*(v16 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
  {
LABEL_28:
    v40 = v127;
    v41 = v124;
    v42 = *(v127 + v124);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v40 + v41);
    sub_2490B293C(1, v36, v43);
    v16 = v128;
    *(v40 + v41) = v128;
    goto LABEL_29;
  }

  v37 = ~v35;
  while (1)
  {
    if (*(*(v16 + 48) + v36) > 3u)
    {
      goto LABEL_26;
    }

    if (*(*(v16 + 48) + v36) <= 1u)
    {
      break;
    }

    v38 = *(*(v16 + 48) + v36) == 2;
LABEL_26:
    v39 = sub_24910D54C();

    if (v39)
    {
      goto LABEL_29;
    }

    v36 = (v36 + 1) & v37;
    if (((*(v16 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (!*(*(v16 + 48) + v36))
  {
    goto LABEL_26;
  }

LABEL_29:
  LOBYTE(v22) = v125;
  if ((v125 & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_30:
  v44 = *(v16 + 40);
  sub_24910D60C();
  sub_24910CCCC();
  v45 = sub_24910D62C();
  v46 = -1 << *(v16 + 32);
  v47 = v45 & ~v46;
  if ((*(v16 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
  {
    v48 = ~v46;
    while (*(*(v16 + 48) + v47) > 3u || *(*(v16 + 48) + v47) <= 1u || *(*(v16 + 48) + v47) == 3)
    {
      v49 = sub_24910D54C();

      if (v49)
      {
        goto LABEL_40;
      }

      v47 = (v47 + 1) & v48;
      if (((*(v16 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
LABEL_39:
    v50 = v127;
    v51 = v124;
    v52 = *(v127 + v124);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v50 + v51);
    sub_2490B293C(2, v47, v53);
    v16 = v128;
    *(v50 + v51) = v128;
  }

LABEL_40:
  LOBYTE(v22) = v125;
  if ((v125 & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_41:
  v54 = *(v16 + 40);
  sub_24910D60C();
  sub_24910CCCC();
  v55 = sub_24910D62C();
  v56 = -1 << *(v16 + 32);
  v57 = v55 & ~v56;
  if ((*(v16 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
  {
    v58 = ~v56;
    do
    {
      if (*(*(v16 + 48) + v57) <= 2u)
      {
        if (*(*(v16 + 48) + v57))
        {
          v38 = *(*(v16 + 48) + v57) == 1;
        }
      }

      else if (*(*(v16 + 48) + v57) < 4u)
      {

        goto LABEL_52;
      }

      v59 = sub_24910D54C();

      if (v59)
      {
        goto LABEL_52;
      }

      v57 = (v57 + 1) & v58;
    }

    while (((*(v16 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) != 0);
  }

  v60 = v127;
  v61 = v124;
  v62 = *(v127 + v124);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v128 = *(v60 + v61);
  sub_2490B293C(3, v57, v63);
  v16 = v128;
  *(v60 + v61) = v128;
LABEL_52:
  LOBYTE(v22) = v125;
  if ((v125 & 0x10) == 0)
  {
    goto LABEL_16;
  }

LABEL_53:
  v64 = *(v16 + 40);
  sub_24910D60C();
  sub_24910CCCC();
  v65 = sub_24910D62C();
  v66 = -1 << *(v16 + 32);
  v67 = v65 & ~v66;
  if (((*(v16 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
  {
LABEL_62:
    v70 = v127;
    v71 = v124;
    v72 = *(v127 + v124);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v70 + v71);
    sub_2490B293C(4, v67, v73);
    v16 = v128;
    *(v70 + v71) = v128;
    goto LABEL_63;
  }

  v68 = ~v66;
  while (2)
  {
    if (*(*(v16 + 48) + v67) <= 2u)
    {
      *(*(v16 + 48) + v67);
      goto LABEL_60;
    }

    if (*(*(v16 + 48) + v67) > 4u || *(*(v16 + 48) + v67) == 3)
    {
LABEL_60:
      v69 = sub_24910D54C();

      if (v69)
      {
        goto LABEL_63;
      }

      v67 = (v67 + 1) & v68;
      if (((*(v16 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
      {
        goto LABEL_62;
      }

      continue;
    }

    break;
  }

LABEL_63:
  LOBYTE(v22) = v125;
  if ((v125 & 0x20) != 0)
  {
LABEL_64:
    v74 = *(v16 + 40);
    sub_24910D60C();
    sub_24910CCCC();
    v75 = sub_24910D62C();
    v76 = -1 << *(v16 + 32);
    v77 = v75 & ~v76;
    if ((*(v16 + 56 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77))
    {
      v78 = ~v76;
      do
      {
        if (*(*(v16 + 48) + v77) <= 2u)
        {
          *(*(v16 + 48) + v77);
        }

        else if (*(*(v16 + 48) + v77) > 4u && *(*(v16 + 48) + v77) != 6)
        {

          goto LABEL_74;
        }

        v79 = sub_24910D54C();

        if (v79)
        {
          goto LABEL_74;
        }

        v77 = (v77 + 1) & v78;
      }

      while (((*(v16 + 56 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) != 0);
    }

    v80 = v127;
    v81 = v124;
    v82 = *(v127 + v124);
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v80 + v81);
    sub_2490B293C(5, v77, v83);
    v16 = v128;
    *(v80 + v81) = v128;
LABEL_74:
    if ((v125 & 0x40) == 0)
    {
      goto LABEL_85;
    }

LABEL_75:
    v84 = *(v16 + 40);
    sub_24910D60C();
    sub_24910CCCC();
    v85 = sub_24910D62C();
    v86 = -1 << *(v16 + 32);
    v87 = v85 & ~v86;
    if (((*(v16 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0)
    {
LABEL_84:
      v90 = v127;
      v91 = v124;
      v92 = *(v127 + v124);
      v93 = swift_isUniquelyReferenced_nonNull_native();
      v128 = *(v90 + v91);
      sub_2490B293C(6, v87, v93);
      *(v90 + v91) = v128;
      goto LABEL_85;
    }

    v88 = ~v86;
    while (1)
    {
      if (*(*(v16 + 48) + v87) <= 2u)
      {
        *(*(v16 + 48) + v87);
      }

      else if (*(*(v16 + 48) + v87) > 4u && *(*(v16 + 48) + v87) != 5)
      {

        goto LABEL_85;
      }

      v89 = sub_24910D54C();

      if (v89)
      {
        goto LABEL_85;
      }

      v87 = (v87 + 1) & v88;
      if (((*(v16 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0)
      {
        goto LABEL_84;
      }
    }
  }

LABEL_17:
  if ((v22 & 0x40) != 0)
  {
    goto LABEL_75;
  }

LABEL_85:
  v94 = [v126 title];
  if (v94)
  {
    v95 = v94;
    v96 = sub_24910CC9C();
    v98 = v97;
  }

  else
  {
    v96 = 0;
    v98 = 0;
  }

  v99 = v123;
  v100 = v126;
  v101 = (v127 + v123[13]);
  *v101 = v96;
  v101[1] = v98;
  v102 = [v100 sound];
  if ([v102 soundType] == 2)
  {
    v103 = [v102 toneIdentifier];
    if (v103)
    {
      v104 = v103;
      v105 = sub_24910CC9C();
      v107 = v106;

      if (sub_24910CCDC() > 19999)
      {
      }

      else
      {
        v108 = [v102 soundVolume];
        if (v108)
        {
          v109 = v108;
          [v108 doubleValue];
          v111 = v110;

          v112 = v122;
          v113 = *(v122 + 8);

          *v112 = v105;
          *(v112 + 8) = v107;
          *(v112 + 16) = v111;
          *(v112 + 24) = 0;
        }

        else
        {
          v114 = v122;
          v115 = *(v122 + 8);

          *v114 = v105;
          *(v114 + 8) = v107;
          *(v114 + 16) = 0;
          *(v114 + 24) = 1;
        }
      }
    }
  }

  v116 = v126;
  v117 = (v127 + v99[12]);
  v118 = sub_24910D0AC();
  v120 = v119;

  *v117 = v118;
  v117[1] = v120;
}

uint64_t DTSyncedAlarm.description.getter()
{
  v45 = sub_24910C3EC();
  v43 = *(v45 - 8);
  v1 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v52 = 0;
  v53 = 0xE000000000000000;
  v46 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C3CC();
  v3 = 0;
  v42 = type metadata accessor for DTSyncedAlarm(0);
  v4 = *(v42 + 40);
  v44 = v0;
  v5 = *(v0 + v4);
  v6 = v5 + 56;
  while (2)
  {
    if (!*(v5 + 16))
    {
      goto LABEL_5;
    }

    v7 = &unk_285C1EDE8 + 24 * v3;
    v8 = *(v7 + 5);
    v47 = *(v7 + 4);
    v9 = v7[48];
    v10 = *(v5 + 40);
    sub_24910D60C();
    v48 = v8;

    sub_24910CCCC();

    v11 = sub_24910D62C();
    v12 = -1 << *(v5 + 32);
    v13 = v11 & ~v12;
    if (((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_4;
    }

    v14 = ~v12;
    while (1)
    {
      v15 = *(*(v5 + 48) + v13);
      if (v15 <= 2)
      {
        break;
      }

      if (*(*(v5 + 48) + v13) <= 4u)
      {
        if (v15 == 3)
        {
          v16 = 0xE800000000000000;
          v17 = 0x647372756874;
          goto LABEL_32;
        }

        v16 = 0xE600000000000000;
        v21 = 1684632166;
        goto LABEL_38;
      }

      if (v15 == 5)
      {
        v16 = 0xE800000000000000;
        v17 = 0x647275746173;
LABEL_32:
        v18 = v17 & 0xFFFFFFFFFFFFLL | 0x7961000000000000;
        if (v9 > 2)
        {
          goto LABEL_39;
        }

        goto LABEL_21;
      }

      v18 = 0x7961646E7573;
      v16 = 0xE600000000000000;
      if (v9 > 2)
      {
        goto LABEL_39;
      }

LABEL_21:
      if (v9)
      {
        if (v9 == 1)
        {
          v19 = 0x79616473657574;
        }

        else
        {
          v19 = 0x616473656E646577;
        }

        if (v9 == 1)
        {
          v20 = 0xE700000000000000;
        }

        else
        {
          v20 = 0xE900000000000079;
        }

        if (v18 == v19)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v20 = 0xE600000000000000;
        if (v18 == 0x7961646E6F6DLL)
        {
          goto LABEL_52;
        }
      }

LABEL_53:
      v27 = sub_24910D54C();

      if (v27)
      {
        goto LABEL_3;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (!*(*(v5 + 48) + v13))
    {
      v16 = 0xE600000000000000;
      v21 = 1684959085;
LABEL_38:
      v18 = v21 & 0xFFFF0000FFFFFFFFLL | 0x796100000000;
      if (v9 > 2)
      {
        goto LABEL_39;
      }

      goto LABEL_21;
    }

    if (v15 == 1)
    {
      v18 = 0x79616473657574;
    }

    else
    {
      v18 = 0x616473656E646577;
    }

    if (v15 == 1)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = 0xE900000000000079;
    }

    if (v9 <= 2)
    {
      goto LABEL_21;
    }

LABEL_39:
    v22 = 0x7961646E7573;
    if (v9 == 5)
    {
      v22 = 0x7961647275746173;
      v23 = 0xE800000000000000;
    }

    else
    {
      v23 = 0xE600000000000000;
    }

    v24 = 0x7961647372756874;
    if (v9 == 3)
    {
      v25 = 0xE800000000000000;
    }

    else
    {
      v24 = 0x796164697266;
      v25 = 0xE600000000000000;
    }

    if (v9 <= 4)
    {
      v26 = v24;
    }

    else
    {
      v26 = v22;
    }

    if (v9 <= 4)
    {
      v20 = v25;
    }

    else
    {
      v20 = v23;
    }

    if (v18 != v26)
    {
      goto LABEL_53;
    }

LABEL_52:
    if (v16 != v20)
    {
      goto LABEL_53;
    }

LABEL_3:
    sub_24910CCBC();
LABEL_4:

LABEL_5:
    if (++v3 != 7)
    {
      continue;
    }

    break;
  }

  v50 = 0;
  v51 = 0xE000000000000000;
  sub_24910D25C();
  MEMORY[0x24C1F1710](4023401, 0xE300000000000000);
  v28 = v44;
  MEMORY[0x24C1F1710](*v44, v44[1]);
  MEMORY[0x24C1F1710](0x656C62616E65202CLL, 0xEA00000000003D64);
  if (*(v28 + 16))
  {
    v29 = 1702195828;
  }

  else
  {
    v29 = 0x65736C6166;
  }

  if (*(v28 + 16))
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  MEMORY[0x24C1F1710](v29, v30);

  MEMORY[0x24C1F1710](0x3D656D6974202CLL, 0xE700000000000000);
  *&v49 = v28[3];
  v31 = sub_24910D50C();
  MEMORY[0x24C1F1710](v31);

  MEMORY[0x24C1F1710](58, 0xE100000000000000);
  *&v49 = v28[4];
  v32 = sub_24910D50C();
  MEMORY[0x24C1F1710](v32);

  MEMORY[0x24C1F1710](0x3D657461646D202CLL, 0xE800000000000000);
  v33 = v42;
  v34 = v28 + *(v42 + 36);
  v35 = sub_24910C25C();
  MEMORY[0x24C1F1710](v35);

  MEMORY[0x24C1F1710](0x746165706572202CLL, 0xEA00000000005B3DLL);
  MEMORY[0x24C1F1710](v52, v53);

  MEMORY[0x24C1F1710](0x646E756F73202C5DLL, 0xE90000000000003DLL);
  v36 = *(v28 + v33[11] + 8);
  if (v36)
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if (v36)
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  MEMORY[0x24C1F1710](v37, v38);

  MEMORY[0x24C1F1710](0x746567726174202CLL, 0xE90000000000003DLL);
  v49 = *(v28 + v33[12]);
  sub_24910D52C();
  MEMORY[0x24C1F1710](0x3D656C746974202CLL, 0xE800000000000000);
  v49 = *(v28 + v33[13]);
  sub_24910D52C();
  v39 = v50;
  (*(v43 + 8))(v46, v45);
  return v39;
}

Swift::Bool __swiftcall DTSyncedAlarm.mergeFromServerRecord(_:)(CKRecord a1)
{
  v2 = v1;
  v4 = sub_24910C26C();
  v91 = *(v4 - 8);
  v92 = v4;
  v5 = v91[8];
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v93 = &v85 - v9;
  v10 = type metadata accessor for DTSyncedAlarm(0);
  v11 = *(*(v10 - 1) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v85 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v85 - v18;
  v20 = *(v2 + 8);
  v94 = *v2;
  v21 = [(objc_class *)a1.super.isa encryptedValues];
  v22 = sub_24910CC8C();
  v23 = [v21 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v23 || (v95[2] = v23, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7820, &qword_24910EF30), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_27EED8AA0 != -1)
    {
      swift_once();
    }

    v29 = sub_24910C89C();
    __swift_project_value_buffer(v29, qword_27EED8AA8);

    v30 = sub_24910C87C();
    v31 = sub_24910CF4C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v95[0] = v33;
      *v32 = 136315138;
      v34 = sub_24909F930(v94, v20, v95);

      *(v32 + 4) = v34;
      _os_log_impl(&dword_249083000, v30, v31, "No server alarm data: id=%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x24C1F26F0](v33, -1, -1);
      MEMORY[0x24C1F26F0](v32, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v24 = v95[0];
  v25 = v95[1];
  v26 = sub_24910BFAC();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_24910BF9C();
  sub_2490A5A5C(&qword_27EED7790, type metadata accessor for DTSyncedAlarm);
  v90 = v24;
  sub_24910BF8C();
  v85 = v8;
  v89 = v25;

  sub_2490B4644(v17, v19, type metadata accessor for DTSyncedAlarm);
  v36 = v10[9];
  v38 = v91;
  v37 = v92;
  v88 = v91[2];
  v88(v93, v36 + v2, v92);
  v39 = v10[9];
  sub_2490A5A5C(&qword_27EED7828, MEMORY[0x277CC9578]);
  v86 = v36;
  v87 = v39;
  v40 = sub_24910CC6C();
  if ((v40 & 1) == 0)
  {
    if (qword_27EED8AA0 != -1)
    {
      swift_once();
    }

    v61 = sub_24910C89C();
    __swift_project_value_buffer(v61, qword_27EED8AA8);
    v62 = v85;
    v63 = v92;
    v64 = v93;
    v88(v85, v93, v92);
    sub_2490B3938(v19, v14, type metadata accessor for DTSyncedAlarm);

    v65 = sub_24910C87C();
    v66 = sub_24910CF2C();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v88 = v19;
      v68 = v63;
      v69 = v67;
      v87 = swift_slowAlloc();
      v95[0] = v87;
      *v69 = 136315650;
      *(v69 + 4) = sub_24909F930(v94, v20, v95);
      *(v69 + 12) = 2080;
      sub_2490A5A5C(&qword_27EED7830, MEMORY[0x277CC9578]);
      LODWORD(v94) = v66;
      v70 = sub_24910D50C();
      v72 = v71;
      v86 = v65;
      v73 = v91[1];
      v73(v62, v68);
      v74 = sub_24909F930(v70, v72, v95);

      *(v69 + 14) = v74;
      *(v69 + 22) = 2080;
      v75 = &v14[v10[9]];
      v76 = v68;
      v77 = sub_24910D50C();
      v79 = v78;
      sub_2490A4414(v14, type metadata accessor for DTSyncedAlarm);
      v80 = sub_24909F930(v77, v79, v95);

      *(v69 + 24) = v80;
      v81 = v86;
      _os_log_impl(&dword_249083000, v86, v94, "Ignoring older alarm: id=%s, localDate=%s, serverDate=%s", v69, 0x20u);
      v82 = v87;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v82, -1, -1);
      MEMORY[0x24C1F26F0](v69, -1, -1);
      sub_2490A453C(v90, v89);

      v73(v93, v76);
      v83 = v88;
    }

    else
    {
      sub_2490A453C(v90, v89);

      sub_2490A4414(v14, type metadata accessor for DTSyncedAlarm);
      v84 = v91[1];
      v84(v62, v63);
      v84(v64, v63);
      v83 = v19;
    }

    sub_2490A4414(v83, type metadata accessor for DTSyncedAlarm);
    return 0;
  }

  (v38[1])(v93, v37);
  sub_2490A453C(v90, v89);
  *(v2 + 16) = v19[16];
  *(v2 + 24) = *(v19 + 24);
  (v38[3])(v86 + v2, &v19[v87], v37);
  v41 = v10[10];
  v42 = *&v19[v41];
  v43 = *(v2 + v41);

  *(v2 + v41) = v42;
  v44 = v10[11];
  v46 = *&v19[v44];
  v45 = *&v19[v44 + 8];
  v47 = *&v19[v44 + 16];
  v48 = v19[v44 + 24];
  v49 = v2 + v44;
  v50 = *(v2 + v44 + 8);

  *v49 = v46;
  *(v49 + 8) = v45;
  *(v49 + 16) = v47;
  *(v49 + 24) = v48;
  v51 = v10[12];
  v53 = *&v19[v51];
  v52 = *&v19[v51 + 8];
  v54 = (v2 + v51);
  v55 = *(v2 + v51 + 8);

  *v54 = v53;
  v54[1] = v52;
  v56 = &v19[v10[13]];
  v58 = *v56;
  v57 = *(v56 + 1);

  sub_2490A4414(v19, type metadata accessor for DTSyncedAlarm);
  v59 = (v2 + v10[13]);
  v60 = v59[1];

  *v59 = v58;
  v59[1] = v57;
  return 1;
}

unint64_t sub_2490AAF44(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x646E756F73;
    v6 = 0xD000000000000010;
    if (a1 != 8)
    {
      v6 = 0x656C746974;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0x6353746165706572;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 1920298856;
    v3 = 0x6574756E696DLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x64656C62616E65;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2490AB07C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_2490AAF44(*a1);
  v5 = v4;
  if (v3 == sub_2490AAF44(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24910D54C();
  }

  return v8 & 1;
}

uint64_t sub_2490AB104(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x646573756170;
    }

    else
    {
      v4 = 0x676E696E6E7572;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x646570706F7473;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x646573756170;
  if (a2 != 2)
  {
    v7 = 0x676E696E6E7572;
    v6 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x646570706F7473;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24910D54C();
  }

  return v10 & 1;
}

uint64_t sub_2490AB23C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x80000002491111C0;
  v6 = 0x656C746974;
  if (a1 == 5)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v7 = 0x8000000249111190;
  v8 = 0x6574617473;
  if (v2 == 3)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v2 > 4)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0xD000000000000013;
  if (v2 == 1)
  {
    v10 = 0x6E6F697461727564;
  }

  else
  {
    v9 = 0x8000000249111170;
  }

  if (v2)
  {
    v4 = v10;
    v3 = v9;
  }

  if (v2 <= 2)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0xE800000000000000;
        if (v11 != 0x6E6F697461727564)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v13 = 0x8000000249111170;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v13 = 0xE200000000000000;
      if (v11 != 25705)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_40;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0x80000002491111C0;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    v13 = 0xE500000000000000;
    v14 = 1819568500;
  }

  else
  {
    if (a2 == 3)
    {
      v13 = 0x8000000249111190;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    v13 = 0xE500000000000000;
    v14 = 1952543859;
  }

  if (v11 != (v14 & 0xFFFF0000FFFFFFFFLL | 0x6500000000))
  {
LABEL_42:
    v15 = sub_24910D54C();
    goto LABEL_43;
  }

LABEL_40:
  if (v12 != v13)
  {
    goto LABEL_42;
  }

  v15 = 1;
LABEL_43:

  return v15 & 1;
}

uint64_t sub_2490AB43C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7961646E6F6DLL;
  v3 = a1;
  v4 = 0xE600000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x7961647275746173;
  if (a1 != 5)
  {
    v6 = 0x7961646E7573;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7961647372756874;
  if (a1 != 3)
  {
    v8 = 0x796164697266;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x79616473657574;
  if (a1 != 1)
  {
    v10 = 0x616473656E646577;
    v9 = 0xE900000000000079;
  }

  if (a1)
  {
    v4 = v9;
  }

  else
  {
    v10 = 0x7961646E6F6DLL;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v3 <= 2)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v13 = 0xE800000000000000;
        v2 = 0x7961647372756874;
      }

      else
      {
        v13 = 0xE600000000000000;
        v2 = 0x796164697266;
      }

      goto LABEL_31;
    }

    if (a2 == 5)
    {
      v13 = 0xE800000000000000;
      v2 = 0x7961647275746173;
      goto LABEL_31;
    }

    v2 = 0x7961646E7573;
LABEL_30:
    v13 = 0xE600000000000000;
    goto LABEL_31;
  }

  if (!a2)
  {
    goto LABEL_30;
  }

  if (a2 == 1)
  {
    v13 = 0xE700000000000000;
    v2 = 0x79616473657574;
  }

  else
  {
    v2 = 0x616473656E646577;
    v13 = 0xE900000000000079;
  }

LABEL_31:
  if (v11 == v2 && v12 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_24910D54C();
  }

  return v14 & 1;
}

uint64_t sub_2490AB618()
{
  v1 = *v0;
  sub_24910D60C();
  sub_2490AAF44(v1);
  sub_24910CCCC();

  return sub_24910D62C();
}

uint64_t sub_2490AB67C()
{
  sub_2490AAF44(*v0);
  sub_24910CCCC();
}

uint64_t sub_2490AB6D0()
{
  v1 = *v0;
  sub_24910D60C();
  sub_2490AAF44(v1);
  sub_24910CCCC();

  return sub_24910D62C();
}

uint64_t sub_2490AB730()
{
  sub_24910D60C();
  sub_24910CCCC();

  return sub_24910D62C();
}

uint64_t sub_2490AB844()
{
  sub_24910D60C();
  sub_24910CCCC();

  return sub_24910D62C();
}

uint64_t sub_2490AB95C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2490B412C();
  *a2 = result;
  return result;
}

unint64_t sub_2490AB98C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2490AAF44(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2490AB9D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2490B412C();
  *a1 = result;
  return result;
}

uint64_t sub_2490ABA08(uint64_t a1)
{
  v2 = sub_2490B431C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490ABA44(uint64_t a1)
{
  v2 = sub_2490B431C();

  return MEMORY[0x2821FE720](a1, v2);
}

DistributedTimersDaemon::DTSyncedAlarm::Day_optional __swiftcall DTSyncedAlarm.Day.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24910D38C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DTSyncedAlarm.Day.rawValue.getter()
{
  v1 = 0x7961646E6F6DLL;
  v2 = *v0;
  v3 = 0x7961647275746173;
  if (v2 != 5)
  {
    v3 = 0x7961646E7573;
  }

  v4 = 0x7961647372756874;
  if (v2 != 3)
  {
    v4 = 0x796164697266;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79616473657574;
  if (v2 != 1)
  {
    v5 = 0x616473656E646577;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2490ABBC0()
{
  *v0;
  *v0;
  *v0;
  sub_24910CCCC();
}

void sub_2490ABCD4(uint64_t *a1@<X8>)
{
  v2 = 0x7961646E6F6DLL;
  v3 = *v1;
  v4 = 0xE600000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x7961647275746173;
  if (v3 != 5)
  {
    v6 = 0x7961646E7573;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7961647372756874;
  if (v3 != 3)
  {
    v8 = 0x796164697266;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x79616473657574;
  if (v3 != 1)
  {
    v10 = 0x616473656E646577;
    v9 = 0xE900000000000079;
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11;
}

uint64_t DTSyncedAlarm.Sound.MediaInfo.mediaIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DTSyncedAlarm.Sound.MediaInfo.volume.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t static DTSyncedAlarm.Sound.MediaInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_24910D54C(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_2490ABF18()
{
  if (*v0)
  {
    result = 0x656D756C6F76;
  }

  else
  {
    result = 0x656449616964656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_2490ABF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656449616964656DLL && a2 == 0xEF7265696669746ELL;
  if (v6 || (sub_24910D54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D756C6F76 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24910D54C();

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

uint64_t sub_2490AC03C(uint64_t a1)
{
  v2 = sub_2490B4178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490AC078(uint64_t a1)
{
  v2 = sub_2490B4178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DTSyncedAlarm.Sound.MediaInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7838, &qword_24910EF38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v14 = *(v1 + 24);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490B4178();
  sub_24910D64C();
  v16 = 0;
  v11 = v13[1];
  sub_24910D4AC();
  if (!v11)
  {
    v15 = 1;
    sub_24910D48C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t DTSyncedAlarm.Sound.MediaInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7840, &qword_24910EF40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490B4178();
  sub_24910D63C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  v11 = sub_24910D3FC();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_24910D3DC();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2490AC474(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_24910D54C(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_2490AC544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x616964656DLL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24910D54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2490AC5D4(uint64_t a1)
{
  v2 = sub_2490B41CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490AC610(uint64_t a1)
{
  v2 = sub_2490B41CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2490AC64C()
{
  sub_24910D60C();
  MEMORY[0x24C1F2040](0);
  return sub_24910D62C();
}

uint64_t sub_2490AC690()
{
  sub_24910D60C();
  MEMORY[0x24C1F2040](0);
  return sub_24910D62C();
}

uint64_t sub_2490AC6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24910D54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2490AC75C(uint64_t a1)
{
  v2 = sub_2490B4220();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490AC798(uint64_t a1)
{
  v2 = sub_2490B4220();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DTSyncedAlarm.Sound.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7848, &qword_24910EF48);
  v4 = *(v3 - 8);
  v20 = v3;
  v21 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7850, &qword_24910EF50);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17[-v11];
  v19 = *v1;
  v13 = *(v1 + 2);
  v18 = *(v1 + 24);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490B41CC();
  sub_24910D64C();
  sub_2490B4220();
  sub_24910D45C();
  v22 = v19;
  v23 = v13;
  v24 = v18;
  sub_2490B4274();
  v15 = v20;
  sub_24910D4EC();
  (*(v21 + 8))(v7, v15);
  return (*(v9 + 8))(v12, v8);
}

uint64_t DTSyncedAlarm.Sound.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7860, &qword_24910EF58);
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7868, &qword_24910EF60);
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v32);
  v11 = &v25 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490B41CC();
  sub_24910D63C();
  if (v2)
  {
    goto LABEL_5;
  }

  v25 = a1;
  v26 = v8;
  v13 = v32;
  if (*(sub_24910D44C() + 16) != 1)
  {
    v15 = sub_24910D28C();
    swift_allocError();
    v16 = v13;
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7870, &qword_24910EF68) + 48);
    *v18 = &type metadata for DTSyncedAlarm.Sound;
    sub_24910D3AC();
    sub_24910D27C();
    (*(*(v15 - 8) + 104))(v18, *MEMORY[0x277D84160], v15);
    swift_willThrow();
    (*(v26 + 8))(v11, v16);
    swift_unknownObjectRelease();
    a1 = v25;
LABEL_5:
    v24 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }

  sub_2490B4220();
  sub_24910D39C();
  v14 = v26;
  sub_2490B42C8();
  sub_24910D43C();
  (*(v28 + 8))(v7, v4);
  (*(v14 + 8))(v11, v13);
  swift_unknownObjectRelease();
  v21 = v30;
  v22 = v31;
  v23 = v27;
  *v27 = v29;
  *(v23 + 2) = v21;
  *(v23 + 24) = v22;
  v24 = v25;
  return __swift_destroy_boxed_opaque_existential_0(v24);
}

uint64_t sub_2490ACDCC(uint64_t result, uint64_t a2)
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
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v34 = v9;
  v35 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    v16 = *(a2 + 40);
    v17 = sub_2490AB730();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }

    v36 = v12;
    v20 = ~v18;
    while (1)
    {
      v21 = *(*(a2 + 48) + v19);
      if (v21 <= 2)
      {
        break;
      }

      if (*(*(a2 + 48) + v19) <= 4u)
      {
        if (v21 == 3)
        {
          v22 = 0xE800000000000000;
          v23 = 0x647372756874;
          goto LABEL_38;
        }

        v22 = 0xE600000000000000;
        v27 = 1684632166;
        goto LABEL_44;
      }

      if (v21 == 5)
      {
        v22 = 0xE800000000000000;
        v23 = 0x647275746173;
LABEL_38:
        v24 = v23 & 0xFFFFFFFFFFFFLL | 0x7961000000000000;
        if (v15 > 2)
        {
          goto LABEL_45;
        }

        goto LABEL_27;
      }

      v24 = 0x7961646E7573;
      v22 = 0xE600000000000000;
      if (v15 > 2)
      {
        goto LABEL_45;
      }

LABEL_27:
      if (v15)
      {
        if (v15 == 1)
        {
          v25 = 0x79616473657574;
        }

        else
        {
          v25 = 0x616473656E646577;
        }

        if (v15 == 1)
        {
          v26 = 0xE700000000000000;
        }

        else
        {
          v26 = 0xE900000000000079;
        }

        if (v24 == v25)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v26 = 0xE600000000000000;
        if (v24 == 0x7961646E6F6DLL)
        {
          goto LABEL_58;
        }
      }

LABEL_59:
      v33 = sub_24910D54C();

      if (v33)
      {
        goto LABEL_65;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }
    }

    if (!*(*(a2 + 48) + v19))
    {
      v22 = 0xE600000000000000;
      v27 = 1684959085;
LABEL_44:
      v24 = v27 & 0xFFFF0000FFFFFFFFLL | 0x796100000000;
      if (v15 > 2)
      {
        goto LABEL_45;
      }

      goto LABEL_27;
    }

    if (v21 == 1)
    {
      v24 = 0x79616473657574;
    }

    else
    {
      v24 = 0x616473656E646577;
    }

    if (v21 == 1)
    {
      v22 = 0xE700000000000000;
    }

    else
    {
      v22 = 0xE900000000000079;
    }

    if (v15 <= 2)
    {
      goto LABEL_27;
    }

LABEL_45:
    v28 = 0x7961646E7573;
    if (v15 == 5)
    {
      v28 = 0x7961647275746173;
      v29 = 0xE800000000000000;
    }

    else
    {
      v29 = 0xE600000000000000;
    }

    v30 = 0x7961647372756874;
    if (v15 == 3)
    {
      v31 = 0xE800000000000000;
    }

    else
    {
      v30 = 0x796164697266;
      v31 = 0xE600000000000000;
    }

    if (v15 <= 4)
    {
      v32 = v30;
    }

    else
    {
      v32 = v28;
    }

    if (v15 <= 4)
    {
      v26 = v31;
    }

    else
    {
      v26 = v29;
    }

    if (v24 != v32)
    {
      goto LABEL_59;
    }

LABEL_58:
    if (v22 != v26)
    {
      goto LABEL_59;
    }

LABEL_65:
    v9 = v34;
    v3 = v35;
    v8 = v36;
  }

  while (v36);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t DTSyncedAlarm.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7880, &qword_24910EF70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490B431C();
  sub_24910D64C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v28) = 0;
  sub_24910D4AC();
  if (!v2)
  {
    v13 = *(v3 + 16);
    LOBYTE(v28) = 1;
    sub_24910D4BC();
    v14 = v3[3];
    LOBYTE(v28) = 2;
    sub_24910D4DC();
    v15 = v3[4];
    LOBYTE(v28) = 3;
    sub_24910D4DC();
    v16 = v3[6];
    v28 = v3[5];
    *&v29 = v16;
    v31 = 4;
    sub_2490B3924(v28, v16);
    sub_2490B4370();
    sub_24910D49C();
    sub_2490B3854(v28, v29);
    v17 = type metadata accessor for DTSyncedAlarm(0);
    v18 = v17[9];
    LOBYTE(v28) = 5;
    sub_24910C26C();
    sub_2490A5A5C(&qword_27EED7898, MEMORY[0x277CC9578]);
    sub_24910D4EC();
    v28 = *(v3 + v17[10]);
    v31 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED78A0, &qword_24910EF78);
    sub_2490B44C0(&qword_27EED78A8, sub_2490B43C4);
    sub_24910D4EC();
    v19 = v3 + v17[11];
    v20 = *(v19 + 24);
    v28 = *v19;
    v29 = *(v19 + 8);
    v30 = v20;
    v31 = 7;
    sub_2490B4418();

    sub_24910D49C();

    v21 = (v3 + v17[12]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v28) = 8;
    sub_24910D46C();
    v24 = (v3 + v17[13]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v28) = 9;
    sub_24910D46C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t DTSyncedAlarm.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v54 = a2;
  v58 = sub_24910C26C();
  v56 = *(v58 - 8);
  v2 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED78C0, &unk_24910EF80);
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v64 = &v50 - v6;
  v7 = sub_24910C2FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DTSyncedAlarm(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C2EC();
  v17 = sub_24910C28C();
  v19 = v18;
  (*(v8 + 8))(v11, v7);
  *v16 = v17;
  *(v16 + 1) = v19;
  v59 = v19;
  *(v16 + 3) = 0;
  v16[16] = 1;
  *(v16 + 4) = 0;
  *(v16 + 5) = 0;
  *(v16 + 6) = 0xF000000000000000;
  v55 = v13[11];
  sub_24910C1FC();
  v20 = v13[12];
  *&v16[v20] = MEMORY[0x277D84FA0];
  v21 = &v16[v13[13]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v21[24] = 0;
  *(v21 + 2) = 0;
  v22 = &v16[v13[14]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = v13[15];
  v63 = v16;
  v24 = &v16[v23];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = v65[4];
  __swift_project_boxed_opaque_existential_1(v65, v65[3]);
  sub_2490B431C();
  v26 = v62;
  sub_24910D63C();
  if (v26)
  {
    v28 = v63;
    __swift_destroy_boxed_opaque_existential_0(v65);
    v49 = v28;
  }

  else
  {
    *&v62 = v16 + 24;
    v52 = v21;
    v53 = v20;
    v50 = v24;
    v51 = v22;
    v27 = v60;
    LOBYTE(v66) = 0;
    v30 = sub_24910D3FC();
    v32 = v31;

    v33 = v63;
    *v63 = v30;
    v33[1] = v32;
    LOBYTE(v66) = 1;
    *(v33 + 16) = sub_24910D40C() & 1;
    LOBYTE(v66) = 2;
    *v62 = sub_24910D42C();
    LOBYTE(v66) = 3;
    v33[4] = sub_24910D42C();
    v69 = 4;
    sub_2490B446C();
    sub_24910D3EC();
    v34 = v66;
    sub_2490B3854(v33[5], v33[6]);
    *(v33 + 5) = v34;
    LOBYTE(v66) = 5;
    sub_2490A5A5C(&qword_27EED78D0, MEMORY[0x277CC9578]);
    v36 = v57;
    v35 = v58;
    sub_24910D43C();
    (*(v56 + 40))(v33 + v55, v36, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED78A0, &qword_24910EF78);
    v69 = 6;
    sub_2490B44C0(&qword_27EED78D8, sub_2490B4538);
    sub_24910D43C();
    *(v33 + v53) = v66;
    v69 = 7;
    sub_2490B458C();
    sub_24910D3EC();
    v62 = v66;
    v37 = v67;
    v38 = v68;
    v39 = v52;
    v40 = *(v52 + 1);

    *v39 = v62;
    *(v39 + 2) = v37;
    v39[24] = v38;
    LOBYTE(v66) = 8;
    v41 = sub_24910D3BC();
    v42 = v51;
    *v51 = v41;
    v42[1] = v43;
    LOBYTE(v66) = 9;
    v44 = sub_24910D3BC();
    v46 = v45;
    (*(v27 + 8))(v64, v61);
    v47 = v50;
    *v50 = v44;
    v47[1] = v46;
    v48 = v63;
    sub_2490B3938(v63, v54, type metadata accessor for DTSyncedAlarm);
    __swift_destroy_boxed_opaque_existential_0(v65);
    v49 = v48;
  }

  return sub_2490A4414(v49, type metadata accessor for DTSyncedAlarm);
}

uint64_t sub_2490ADC6C()
{
  v1 = *(v0 + 40);
  sub_2490B3924(v1, *(v0 + 48));
  return v1;
}

uint64_t sub_2490ADCA0(uint64_t a1, uint64_t a2)
{
  result = sub_2490B3854(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_2490ADCFC(void *a1)
{
  if (a1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    [a1 encodeSystemFieldsWithCoder_];
    v4 = [v3 encodedData];
    v5 = sub_24910C1DC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  result = sub_2490B3854(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v5;
  *(v1 + 48) = v7;
  return result;
}

uint64_t (*sub_2490ADDB0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2490A6D8C(v2);
  return sub_2490ADE20;
}

uint64_t sub_2490ADE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_24910C26C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2490ADE98(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_24910C26C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2490ADF0C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_2490ADF74@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *MTMutableAlarm.init(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED78F0, &qword_24910EB70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v113 = &v105 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED78F8, &unk_24910EF90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v115 = &v105 - v8;
  v9 = sub_24910C02C();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v114 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v105 - v15;
  v17 = sub_24910C2FC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = *(a1 + 8);
  sub_24910C27C();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_2490A487C(v16, &qword_27EED7900, &qword_24910EB50);
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
    sub_2490A4414(a1, type metadata accessor for DTSyncedAlarm);
    return v9;
  }

  v106 = v10;
  v107 = v9;
  v111 = v1;
  v109 = v18;
  v24 = *(v18 + 32);
  v110 = v17;
  v24(v21, v16, v17);
  v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v108 = v21;
  v26 = sub_24910C2AC();
  v27 = [v25 initWithIdentifier_];

  v28 = *(a1 + 16);
  v9 = v27;
  [v9 setEnabled_];
  [v9 setHour_];
  [v9 setMinute_];

  v112 = type metadata accessor for DTSyncedAlarm(0);
  v29 = *(a1 + *(v112 + 40));
  if (!*(v29 + 16))
  {
    goto LABEL_86;
  }

  v30 = *(v29 + 40);
  sub_24910D60C();
  sub_24910CCCC();
  v31 = sub_24910D62C();
  v32 = v29 + 56;
  v33 = -1 << *(v29 + 32);
  v34 = v31 & ~v33;
  if ((*(v29 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
  {
    v35 = ~v33;
    while (*(*(v29 + 48) + v34))
    {
      v36 = sub_24910D54C();

      if (v36)
      {
        goto LABEL_12;
      }

      v34 = (v34 + 1) & v35;
      if (((*(v32 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    [v9 setRepeatSchedule_];
    if (!*(v29 + 16))
    {
      goto LABEL_86;
    }
  }

  else
  {
LABEL_10:
    if (!*(v29 + 16))
    {
      goto LABEL_86;
    }
  }

  v37 = *(v29 + 40);
  sub_24910D60C();
  sub_24910CCCC();
  v38 = sub_24910D62C();
  v39 = -1 << *(v29 + 32);
  v40 = v38 & ~v39;
  if ((*(v32 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
  {
    v41 = ~v39;
    while (*(*(v29 + 48) + v40) >= 2u || !*(*(v29 + 48) + v40))
    {
      v42 = sub_24910D54C();

      if (v42)
      {
        goto LABEL_21;
      }

      v40 = (v40 + 1) & v41;
      if (((*(v32 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

LABEL_21:
    [v9 setRepeatSchedule_];
  }

LABEL_22:
  if (!*(v29 + 16))
  {
    goto LABEL_86;
  }

  v43 = *(v29 + 40);
  sub_24910D60C();
  sub_24910CCCC();
  v44 = sub_24910D62C();
  v45 = -1 << *(v29 + 32);
  v46 = v44 & ~v45;
  if ((*(v32 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
  {
    v47 = ~v45;
    while (*(*(v29 + 48) + v46) > 3u || *(*(v29 + 48) + v46) <= 1u || *(*(v29 + 48) + v46) == 3)
    {
      v48 = sub_24910D54C();

      if (v48)
      {
        goto LABEL_34;
      }

      v46 = (v46 + 1) & v47;
      if (((*(v32 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

LABEL_34:
    [v9 setRepeatSchedule_];
  }

LABEL_35:
  if (!*(v29 + 16))
  {
    goto LABEL_86;
  }

  v49 = *(v29 + 40);
  sub_24910D60C();
  sub_24910CCCC();
  v50 = sub_24910D62C();
  v51 = -1 << *(v29 + 32);
  v52 = v50 & ~v51;
  if (((*(v32 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
  {
    goto LABEL_47;
  }

  v53 = ~v51;
  while (1)
  {
    if (*(*(v29 + 48) + v52) <= 2u)
    {
      *(*(v29 + 48) + v52);
      goto LABEL_43;
    }

    if (*(*(v29 + 48) + v52) < 4u)
    {
      break;
    }

LABEL_43:
    v54 = sub_24910D54C();

    if (v54)
    {
      goto LABEL_46;
    }

    v52 = (v52 + 1) & v53;
    if (((*(v32 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

LABEL_46:
  [v9 setRepeatSchedule_];
LABEL_47:
  if (!*(v29 + 16))
  {
    goto LABEL_86;
  }

  v55 = *(v29 + 40);
  sub_24910D60C();
  sub_24910CCCC();
  v56 = sub_24910D62C();
  v57 = -1 << *(v29 + 32);
  v58 = v56 & ~v57;
  if (((*(v32 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
  {
    goto LABEL_60;
  }

  v59 = ~v57;
  while (2)
  {
    if (*(*(v29 + 48) + v58) <= 2u)
    {
      *(*(v29 + 48) + v58);
LABEL_55:
      v60 = sub_24910D54C();

      if (v60)
      {
        goto LABEL_59;
      }

      v58 = (v58 + 1) & v59;
      if (((*(v32 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
      {
        goto LABEL_60;
      }

      continue;
    }

    break;
  }

  if (*(*(v29 + 48) + v58) > 4u || *(*(v29 + 48) + v58) == 3)
  {
    goto LABEL_55;
  }

LABEL_59:
  [v9 setRepeatSchedule_];
LABEL_60:
  if (!*(v29 + 16))
  {
    goto LABEL_86;
  }

  v61 = *(v29 + 40);
  sub_24910D60C();
  sub_24910CCCC();
  v62 = sub_24910D62C();
  v63 = -1 << *(v29 + 32);
  v64 = v62 & ~v63;
  if (((*(v32 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
  {
    goto LABEL_73;
  }

  v65 = ~v63;
  while (2)
  {
    if (*(*(v29 + 48) + v64) <= 2u)
    {
      *(*(v29 + 48) + v64);
LABEL_68:
      v66 = sub_24910D54C();

      if (v66)
      {
        goto LABEL_72;
      }

      v64 = (v64 + 1) & v65;
      if (((*(v32 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
      {
        goto LABEL_73;
      }

      continue;
    }

    break;
  }

  if (*(*(v29 + 48) + v64) <= 4u || *(*(v29 + 48) + v64) == 6)
  {
    goto LABEL_68;
  }

LABEL_72:
  [v9 setRepeatSchedule_];
LABEL_73:
  if (!*(v29 + 16))
  {
    goto LABEL_86;
  }

  v67 = *(v29 + 40);
  sub_24910D60C();
  sub_24910CCCC();
  v68 = sub_24910D62C();
  v69 = -1 << *(v29 + 32);
  v70 = v68 & ~v69;
  if (((*(v32 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
  {
    goto LABEL_86;
  }

  v71 = ~v69;
  while (2)
  {
    if (*(*(v29 + 48) + v70) <= 2u)
    {
      *(*(v29 + 48) + v70);
LABEL_81:
      v72 = sub_24910D54C();

      if (v72)
      {
        goto LABEL_85;
      }

      v70 = (v70 + 1) & v71;
      if (((*(v32 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
      {
        goto LABEL_86;
      }

      continue;
    }

    break;
  }

  if (*(*(v29 + 48) + v70) <= 4u || *(*(v29 + 48) + v70) == 5)
  {
    goto LABEL_81;
  }

LABEL_85:
  [v9 setRepeatSchedule_];
LABEL_86:
  v73 = v112;
  v74 = a1 + *(v112 + 44);
  v75 = v107;
  v76 = v106;
  v77 = v115;
  if (*(v74 + 8))
  {
    v78 = *(v74 + 16);
    v79 = *(v74 + 24);
    v80 = *v74;
    v81 = sub_24910CC8C();
    if (v79)
    {
      v82 = 0;
    }

    else
    {
      v82 = sub_24910CE5C();
    }

    v83 = [objc_opt_self() toneSoundWithIdentifier:v81 vibrationIdentifer:0 volume:v82];

    [v9 setSound_];
  }

  v84 = (a1 + *(v73 + 48));
  if (v84[1])
  {
    v85 = *v84;
    sub_24910D09C();
    sub_24910D06C();
    if ((*(v76 + 48))(v77, 1, v75) == 1)
    {
      sub_2490A487C(v77, &qword_27EED78F8, &unk_24910EF90);
    }

    else
    {
      v86 = v114;
      (*(v76 + 32))(v114, v77, v75);
      v87 = v113;
      sub_24910C01C();
      v88 = sub_24910C1AC();
      v89 = *(v88 - 8);
      if ((*(v89 + 48))(v87, 1, v88) == 1)
      {
        (*(v76 + 8))(v86, v75);
        sub_2490A487C(v87, &qword_27EED78F0, &qword_24910EB70);
      }

      else
      {
        v115 = sub_24910C13C();
        v90 = v87;
        v92 = v91;
        (*(v89 + 8))(v90, v88);
        v93 = [v9 siriContext];
        if (v93)
        {
          v94 = v93;
          v95 = sub_24910CC2C();
        }

        else
        {
          v95 = MEMORY[0x277D84F98];
        }

        *&v118 = sub_24910D07C();
        *(&v118 + 1) = v96;
        v97 = MEMORY[0x277D837D0];
        sub_24910D1FC();
        v119 = v97;
        *&v118 = v115;
        *(&v118 + 1) = v92;
        sub_2490B45E0(&v118, v117);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v116 = v95;
        sub_2490B3360(v117, v120, isUniquelyReferenced_nonNull_native);
        sub_2490B45F0(v120);
        v99 = sub_24910CC1C();

        [v9 setSiriContext_];

        (*(v76 + 8))(v114, v75);
      }

      v73 = v112;
    }
  }

  v100 = (a1 + *(v73 + 52));
  v101 = v110;
  if (v100[1])
  {
    v102 = *v100;
    v103 = sub_24910CC8C();
  }

  else
  {
    v103 = 0;
  }

  [v9 setTitle_];

  (*(v109 + 8))(v108, v101);
  sub_2490A4414(a1, type metadata accessor for DTSyncedAlarm);
  return v9;
}

uint64_t _s23DistributedTimersDaemon13DTSyncedAlarmV10ckRecordIDSo08CKRecordH0Cvg_0()
{
  sub_2490A4744(0, &qword_27EED77B0, 0x277CBC5D0);
  v1 = *v0;
  v2 = v0[1];
  sub_2490A4744(0, &qword_27EED77B8, 0x277CBC5F8);
  v3 = *MEMORY[0x277CBBF28];
  sub_24910CC9C();

  sub_24910CF6C();
  return sub_24910CF0C();
}

uint64_t DTSyncedTimer.lastKnownRecordData.getter()
{
  v1 = *(v0 + 24);
  sub_2490B3924(v1, *(v0 + 32));
  return v1;
}

uint64_t DTSyncedTimer.lastKnownRecordData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2490B3854(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t DTSyncedTimer.modificationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DTSyncedTimer(0) + 28);
  v4 = sub_24910C26C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DTSyncedTimer.modificationDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DTSyncedTimer(0) + 28);
  v4 = sub_24910C26C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DTSyncedTimer.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DTSyncedTimer(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t DTSyncedTimer.state.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DTSyncedTimer(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t DTSyncedTimer.targetIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for DTSyncedTimer(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DTSyncedTimer.targetIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DTSyncedTimer(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DTSyncedTimer.title.getter()
{
  v1 = (v0 + *(type metadata accessor for DTSyncedTimer(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DTSyncedTimer.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DTSyncedTimer(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DTSyncedTimer.init(id:duration:modificationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_24910C2FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C2EC();
  sub_24910C28C();
  (*(v11 + 8))(v14, v10);
  *(a4 + 24) = xmmword_24910EEA0;
  v15 = type metadata accessor for DTSyncedTimer(0);
  v16 = v15[7];
  sub_24910C1FC();

  *(a4 + v15[8]) = 0;
  v17 = (a4 + v15[9]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a4 + v15[10]);
  *v18 = 0;
  v18[1] = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  v19 = sub_24910C26C();
  return (*(*(v19 - 8) + 40))(a4 + v16, a3, v19);
}

void DTSyncedTimer.init(mtTimer:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24910C26C();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24910C2FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C2EC();
  sub_24910C28C();
  (*(v9 + 8))(v12, v8);
  *(a2 + 24) = xmmword_24910EEA0;
  v13 = type metadata accessor for DTSyncedTimer(0);
  v14 = v13[7];
  sub_24910C1FC();
  v15 = v13[8];
  *(a2 + v15) = 0;
  v16 = [a1 timerIDString];
  v17 = sub_24910CC9C();
  v19 = v18;

  *a2 = v17;
  *(a2 + 8) = v19;
  [a1 duration];
  *(a2 + 16) = v20;
  sub_24910C23C();
  (*(v31 + 40))(a2 + v14, v7, v32);
  v21 = [a1 state];
  if (v21 >= 4)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  v23 = (a2 + v13[9]);
  *(a2 + v15) = v22;
  *v23 = sub_24910D0CC();
  v23[1] = v24;
  v25 = [a1 title];
  if (v25)
  {
    v26 = v25;
    v27 = sub_24910CC9C();
    v29 = v28;
  }

  else
  {

    v27 = 0;
    v29 = 0;
  }

  v30 = (a2 + v13[10]);
  *v30 = v27;
  v30[1] = v29;
}

unint64_t DTSyncedTimer.State.init(mtTimerState:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t DTSyncedTimer.description.getter()
{
  v1 = v0;
  sub_24910D25C();
  MEMORY[0x24C1F1710](4023401, 0xE300000000000000);
  MEMORY[0x24C1F1710](*v1, v1[1]);
  MEMORY[0x24C1F1710](0x697461727564202CLL, 0xEB000000003D6E6FLL);
  v2 = v0[2];
  sub_24910CE6C();
  MEMORY[0x24C1F1710](0x3D657461646D202CLL, 0xE800000000000000);
  v3 = type metadata accessor for DTSyncedTimer(0);
  v4 = v0 + v3[7];
  v5 = sub_24910C25C();
  MEMORY[0x24C1F1710](v5);

  MEMORY[0x24C1F1710](0x3D6574617473202CLL, 0xE800000000000000);
  v7 = *(v1 + v3[8]);
  sub_24910D32C();
  MEMORY[0x24C1F1710](0x746567726174202CLL, 0xE90000000000003DLL);
  v8 = *(v1 + v3[9]);
  sub_24910D52C();
  MEMORY[0x24C1F1710](0x3D656C746974202CLL, 0xE800000000000000);
  v9 = *(v1 + v3[10]);
  sub_24910D52C();
  return 0;
}

Swift::Bool __swiftcall DTSyncedTimer.mergeFromServerRecord(_:)(CKRecord a1)
{
  v2 = v1;
  v4 = sub_24910C26C();
  v5 = *(v4 - 8);
  v83 = v4;
  v84 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v77 - v10;
  v11 = type metadata accessor for DTSyncedTimer(0);
  v12 = *(*(v11 - 1) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v77 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v77 - v19;
  v21 = *(v2 + 8);
  v86 = *v2;
  v22 = [(objc_class *)a1.super.isa encryptedValues];
  v23 = sub_24910CC8C();
  v24 = [v22 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v24 || (v87[2] = v24, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7820, &qword_24910EF30), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_27EED8AA0 != -1)
    {
      swift_once();
    }

    v30 = sub_24910C89C();
    __swift_project_value_buffer(v30, qword_27EED8AA8);

    v31 = sub_24910C87C();
    v32 = sub_24910CF4C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v87[0] = v34;
      *v33 = 136315138;
      v35 = sub_24909F930(v86, v21, v87);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_249083000, v31, v32, "No server timer data: id=%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C1F26F0](v34, -1, -1);
      MEMORY[0x24C1F26F0](v33, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v26 = v87[0];
  v25 = v87[1];
  v27 = sub_24910BFAC();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_24910BF9C();
  sub_2490A5A5C(&qword_27EED77A0, type metadata accessor for DTSyncedTimer);
  v81 = v26;
  v82 = v25;
  sub_24910BF8C();
  v78 = v9;

  sub_2490B4644(v18, v20, type metadata accessor for DTSyncedTimer);
  v37 = v11[7];
  v38 = v84;
  v39 = v83;
  v80 = *(v84 + 16);
  v80(v85, v2 + v37, v83);
  v40 = v20;
  v41 = v11[7];
  sub_2490A5A5C(&qword_27EED7828, MEMORY[0x277CC9578]);
  v79 = v41;
  v42 = v40;
  v43 = sub_24910CC6C();
  if ((v43 & 1) == 0)
  {
    if (qword_27EED8AA0 != -1)
    {
      swift_once();
    }

    v55 = sub_24910C89C();
    __swift_project_value_buffer(v55, qword_27EED8AA8);
    v56 = v78;
    v57 = v85;
    v58 = v83;
    v80(v78, v85, v83);
    sub_2490B3938(v42, v15, type metadata accessor for DTSyncedTimer);

    v59 = sub_24910C87C();
    v60 = sub_24910CF2C();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = v58;
      v62 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v87[0] = v80;
      *v62 = 136315650;
      *(v62 + 4) = sub_24909F930(v86, v21, v87);
      *(v62 + 12) = 2080;
      sub_2490A5A5C(&qword_27EED7830, MEMORY[0x277CC9578]);
      v86 = v59;
      LODWORD(v79) = v60;
      v63 = sub_24910D50C();
      v65 = v64;
      v66 = *(v84 + 8);
      v84 += 8;
      v66(v56, v61);
      v67 = sub_24909F930(v63, v65, v87);

      *(v62 + 14) = v67;
      *(v62 + 22) = 2080;
      v68 = &v15[v11[7]];
      v69 = v61;
      v70 = sub_24910D50C();
      v72 = v71;
      sub_2490A4414(v15, type metadata accessor for DTSyncedTimer);
      v73 = sub_24909F930(v70, v72, v87);

      *(v62 + 24) = v73;
      v74 = v86;
      _os_log_impl(&dword_249083000, v86, v79, "Ignoring older timer: id=%s, localDate=%s, serverDate=%s", v62, 0x20u);
      v75 = v80;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v75, -1, -1);
      MEMORY[0x24C1F26F0](v62, -1, -1);
      sub_2490A453C(v81, v82);

      v66(v85, v69);
    }

    else
    {
      sub_2490A453C(v81, v82);

      sub_2490A4414(v15, type metadata accessor for DTSyncedTimer);
      v76 = *(v84 + 8);
      v76(v56, v58);
      v76(v57, v58);
    }

    sub_2490A4414(v42, type metadata accessor for DTSyncedTimer);
    return 0;
  }

  (*(v38 + 8))(v85, v39);
  sub_2490A453C(v81, v82);
  *(v2 + 16) = *(v40 + 2);
  (*(v38 + 24))(v2 + v37, &v40[v79], v39);
  *(v2 + v11[8]) = v40[v11[8]];
  v44 = v11[9];
  v46 = *&v40[v44];
  v45 = *&v40[v44 + 8];
  v47 = (v2 + v44);
  v48 = *(v2 + v44 + 8);
  v49 = *(v42 + v44 + 8);

  *v47 = v46;
  v47[1] = v45;
  v50 = (v42 + v11[10]);
  v52 = *v50;
  v51 = v50[1];

  sub_2490A4414(v42, type metadata accessor for DTSyncedTimer);
  v53 = (v2 + v11[10]);
  v54 = v53[1];

  *v53 = v52;
  v53[1] = v51;
  return 1;
}

uint64_t sub_2490B077C()
{
  *v0;
  *v0;
  *v0;
  sub_24910CCCC();
}

uint64_t sub_2490B0888@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2490B46AC();
  *a2 = result;
  return result;
}

void sub_2490B08B8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xD000000000000010;
  v6 = 0x80000002491111C0;
  if (v2 != 5)
  {
    v5 = 0x656C746974;
    v6 = 0xE500000000000000;
  }

  v7 = 0x8000000249111190;
  v8 = 0x6574617473;
  if (v2 == 3)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0xD000000000000013;
  if (v2 == 1)
  {
    v10 = 0x6E6F697461727564;
  }

  else
  {
    v9 = 0x8000000249111170;
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
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_2490B098C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x656C746974;
  }

  v4 = 0x6574617473;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 == 1)
  {
    v5 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2490B0A5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2490B46AC();
  *a1 = result;
  return result;
}

uint64_t sub_2490B0A90(uint64_t a1)
{
  v2 = sub_2490B46F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490B0ACC(uint64_t a1)
{
  v2 = sub_2490B46F8();

  return MEMORY[0x2821FE720](a1, v2);
}

DistributedTimersDaemon::DTSyncedTimer::State_optional __swiftcall DTSyncedTimer.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24910D38C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DTSyncedTimer.State.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x646573756170;
  if (*v0 != 2)
  {
    v2 = 0x676E696E6E7572;
  }

  if (*v0)
  {
    v1 = 0x646570706F7473;
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

uint64_t sub_2490B0BEC()
{
  v1 = *v0;
  sub_24910D60C();
  sub_24910CCCC();

  return sub_24910D62C();
}

uint64_t sub_2490B0CA8()
{
  *v0;
  *v0;
  *v0;
  sub_24910CCCC();
}

uint64_t sub_2490B0D50()
{
  v1 = *v0;
  sub_24910D60C();
  sub_24910CCCC();

  return sub_24910D62C();
}

void sub_2490B0E14(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE600000000000000;
  v5 = 0x646573756170;
  if (*v1 != 2)
  {
    v5 = 0x676E696E6E7572;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x646570706F7473;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t DTSyncedTimer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7908, &qword_24910EFA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490B46F8();
  sub_24910D64C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v26) = 0;
  sub_24910D4AC();
  if (!v2)
  {
    v13 = v3[2];
    LOBYTE(v26) = 1;
    sub_24910D4CC();
    v14 = v3[4];
    v26 = v3[3];
    v27 = v14;
    v25 = 2;
    sub_2490B3924(v26, v14);
    sub_2490B4370();
    sub_24910D49C();
    sub_2490B3854(v26, v27);
    v15 = type metadata accessor for DTSyncedTimer(0);
    v16 = v15[7];
    LOBYTE(v26) = 3;
    sub_24910C26C();
    sub_2490A5A5C(&qword_27EED7898, MEMORY[0x277CC9578]);
    sub_24910D4EC();
    LOBYTE(v26) = *(v3 + v15[8]);
    v25 = 4;
    sub_2490B474C();
    sub_24910D4EC();
    v17 = (v3 + v15[9]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v26) = 5;
    sub_24910D46C();
    v20 = (v3 + v15[10]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v26) = 6;
    sub_24910D46C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t DTSyncedTimer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v48 = a2;
  v2 = sub_24910C26C();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7920, &qword_24910EFA8);
  v52 = *(v54 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v57 = &v45 - v6;
  v7 = sub_24910C2FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DTSyncedTimer(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24910C2EC();
  v17 = sub_24910C28C();
  v19 = v18;
  (*(v8 + 8))(v11, v7);
  *v16 = v17;
  v16[1] = v19;
  v51 = v19;
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = 0xF000000000000000;
  v20 = v13[9];
  sub_24910C1FC();
  v21 = v13[10];
  *(v16 + v21) = 0;
  v22 = (v16 + v13[11]);
  *v22 = 0;
  v22[1] = 0;
  v23 = v13[12];
  v56 = v16;
  v24 = (v16 + v23);
  *v24 = 0;
  v24[1] = 0;
  v25 = v58[4];
  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  sub_2490B46F8();
  v26 = v55;
  sub_24910D63C();
  if (v26)
  {
    v27 = v56;
  }

  else
  {
    v55 = v20;
    v45 = v24;
    v46 = v22;
    v47 = v21;
    v29 = v52;
    v28 = v53;
    LOBYTE(v59) = 0;
    v30 = sub_24910D3FC();
    v32 = v31;

    v27 = v56;
    *v56 = v30;
    v27[1] = v32;
    LOBYTE(v59) = 1;
    sub_24910D41C();
    v16[2] = v33;
    v61 = 2;
    sub_2490B446C();
    sub_24910D3EC();
    v34 = v59;
    v35 = v60;
    sub_2490B3854(v27[3], v27[4]);
    v27[3] = v34;
    v27[4] = v35;
    LOBYTE(v59) = 3;
    sub_2490A5A5C(&qword_27EED78D0, MEMORY[0x277CC9578]);
    v36 = v50;
    sub_24910D43C();
    (*(v49 + 40))(v27 + v55, v28, v36);
    v61 = 4;
    sub_2490B47A0();
    sub_24910D43C();
    *(v27 + v47) = v59;
    LOBYTE(v59) = 5;
    v37 = sub_24910D3BC();
    v38 = v46;
    *v46 = v37;
    v38[1] = v39;
    LOBYTE(v59) = 6;
    v41 = sub_24910D3BC();
    v43 = v42;
    (*(v29 + 8))(v57, v54);
    v44 = v45;
    *v45 = v41;
    v44[1] = v43;
    sub_2490B3938(v27, v48, type metadata accessor for DTSyncedTimer);
  }

  __swift_destroy_boxed_opaque_existential_0(v58);
  return sub_2490A4414(v27, type metadata accessor for DTSyncedTimer);
}

uint64_t sub_2490B17A4()
{
  v1 = *(v0 + 24);
  sub_2490B3924(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_2490B17D8(uint64_t a1, uint64_t a2)
{
  result = sub_2490B3854(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_2490B1834(void *a1)
{
  if (a1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    [a1 encodeSystemFieldsWithCoder_];
    v4 = [v3 encodedData];
    v5 = sub_24910C1DC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  result = sub_2490B3854(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v5;
  *(v1 + 32) = v7;
  return result;
}

uint64_t (*sub_2490B18E8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2490A6F70(v2);
  return sub_2490B6480;
}

void sub_2490B1958(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_2490B19A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_24910C26C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2490B1A14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_24910C26C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2490B1A88(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

void *MTMutableTimer.init(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED78F0, &qword_24910EB70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v69 = v67 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED78F8, &unk_24910EF90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v67 - v7;
  v9 = sub_24910C02C();
  v10 = *(v9 - 8);
  v71 = v9;
  v72 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v70 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24910C26C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v67 - v20;
  v22 = sub_24910C2FC();
  v23 = *(v22 - 1);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v28 = *(a1 + 8);
  sub_24910C27C();
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
    v29 = *(v23 + 32);
    v68 = v22;
    v29(v26, v21, v22);
    v30 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v73 = v26;
    v31 = sub_24910C2AC();
    v32 = [v30 initWithIdentifier_];

    v22 = v32;
    [v22 setState_];
    v33 = type metadata accessor for DTSyncedTimer(0);
    v34 = v33[7];
    sub_24910C23C();
    sub_24910C24C();
    v36 = v35;
    (*(v14 + 8))(v17, v13);
    v37 = *(a1 + 16);
    v38 = v37 - v36;
    v39 = v36 < v37;
    v40 = 1.0;
    if (v39)
    {
      v40 = v38;
    }

    [v22 setDuration_];

    v41 = (a1 + v33[9]);
    if (v41[1])
    {
      v42 = *v41;
      v43 = sub_24910D09C();
      sub_24910D06C();
      v45 = v71;
      v44 = v72;
      if ((*(v72 + 48))(v8, 1, v71) == 1)
      {
        sub_2490A487C(v8, &qword_27EED78F8, &unk_24910EF90);
      }

      else
      {
        v67[1] = v43;
        v46 = v70;
        (*(v44 + 32))(v70, v8, v45);
        v47 = v69;
        sub_24910C01C();
        v48 = v47;
        v49 = sub_24910C1AC();
        v50 = *(v49 - 8);
        if ((*(v50 + 48))(v48, 1, v49) == 1)
        {
          (*(v72 + 8))(v46, v45);
          sub_2490A487C(v48, &qword_27EED78F0, &qword_24910EB70);
        }

        else
        {
          v51 = sub_24910C13C();
          v53 = v52;
          (*(v50 + 8))(v48, v49);
          v54 = [v22 siriContext];
          if (v54)
          {
            v55 = v54;
            v56 = sub_24910CC2C();
          }

          else
          {
            v56 = MEMORY[0x277D84F98];
          }

          *&v76 = sub_24910D08C();
          *(&v76 + 1) = v57;
          v58 = MEMORY[0x277D837D0];
          sub_24910D1FC();
          v77 = v58;
          *&v76 = v51;
          *(&v76 + 1) = v53;
          sub_2490B45E0(&v76, v75);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = v56;
          sub_2490B3360(v75, v78, isUniquelyReferenced_nonNull_native);
          sub_2490B45F0(v78);
          v60 = sub_24910CC1C();

          [v22 setSiriContext_];

          (*(v72 + 8))(v70, v71);
        }
      }
    }

    v61 = (a1 + v33[10]);
    if (v61[1])
    {
      v62 = *v61;
      v63 = sub_24910CC8C();
    }

    else
    {
      v63 = 0;
    }

    [v22 setTitle_];

    v64 = *(a1 + v33[8]);
    if (v64 > 1)
    {
      v65 = v73;
      if (v64 == 2)
      {
        v64 = 2;
      }

      else
      {
        v64 = 3;
      }
    }

    else
    {
      v65 = v73;
      if (!v64)
      {
        goto LABEL_24;
      }
    }

    [v22 setState_];
LABEL_24:
    (*(v23 + 8))(v65, v68);
    sub_2490A4414(a1, type metadata accessor for DTSyncedTimer);
    return v22;
  }

  sub_2490A487C(v21, &qword_27EED7900, &qword_24910EB50);
  sub_24910C7DC();
  sub_24910C7EC();
  swift_willThrow();
  sub_2490A4414(a1, type metadata accessor for DTSyncedTimer);
  return v22;
}

uint64_t sub_2490B225C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_24910C03C();
    if (v10)
    {
      v11 = sub_24910C05C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_24910C04C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_24910C03C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_24910C05C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_24910C04C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2490B248C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2490B39A0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2490A453C(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_2490B225C(v14, a3, a4, &v13);
  v10 = v4;
  sub_2490A453C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_2490B261C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED79F0, &unk_24910FE70);
  result = sub_24910D21C();
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
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_24910D60C();
      sub_24910CCCC();

      result = sub_24910D62C();
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
      *(*(v6 + 48) + v14) = v18;
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

uint64_t sub_2490B293C(uint64_t result, unint64_t a2, char a3)
{
  v28 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_53;
  }

  if (a3)
  {
    sub_2490B261C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_2490B2C34();
      goto LABEL_53;
    }

    sub_2490B2D74(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  result = sub_2490AB730();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 <= 2)
      {
        if (*(*(v7 + 48) + a2))
        {
          if (v11 == 1)
          {
            v12 = 0x79616473657574;
          }

          else
          {
            v12 = 0x616473656E646577;
          }

          if (v11 == 1)
          {
            v13 = 0xE700000000000000;
          }

          else
          {
            v13 = 0xE900000000000079;
          }
        }

        else
        {
          v13 = 0xE600000000000000;
          v12 = 0x7961646E6F6DLL;
        }
      }

      else if (*(*(v7 + 48) + a2) > 4u)
      {
        if (v11 == 5)
        {
          v13 = 0xE800000000000000;
          v12 = 0x7961647275746173;
        }

        else
        {
          v12 = 0x7961646E7573;
          v13 = 0xE600000000000000;
        }
      }

      else
      {
        if (v11 == 3)
        {
          v12 = 0x7961647372756874;
        }

        else
        {
          v12 = 0x796164697266;
        }

        if (v11 == 3)
        {
          v13 = 0xE800000000000000;
        }

        else
        {
          v13 = 0xE600000000000000;
        }
      }

      v14 = 0x7961646E7573;
      if (v28 == 5)
      {
        v14 = 0x7961647275746173;
        v15 = 0xE800000000000000;
      }

      else
      {
        v15 = 0xE600000000000000;
      }

      v16 = 0x7961647372756874;
      if (v28 == 3)
      {
        v17 = 0xE800000000000000;
      }

      else
      {
        v16 = 0x796164697266;
        v17 = 0xE600000000000000;
      }

      if (v28 <= 4u)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = 0x616473656E646577;
      if (v28 == 1)
      {
        v18 = 0x79616473657574;
      }

      v19 = 0xE900000000000079;
      if (v28 == 1)
      {
        v19 = 0xE700000000000000;
      }

      if (!v28)
      {
        v18 = 0x7961646E6F6DLL;
        v19 = 0xE600000000000000;
      }

      v20 = v28 <= 2u ? v18 : v14;
      v21 = v28 <= 2u ? v19 : v15;
      if (v12 == v20 && v13 == v21)
      {
        goto LABEL_56;
      }

      v22 = sub_24910D54C();

      if (v22)
      {
        goto LABEL_57;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_53:
  v23 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + a2) = v28;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_56:

LABEL_57:
  result = sub_24910D56C();
  __break(1u);
  return result;
}

void *sub_2490B2C34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED79F0, &unk_24910FE70);
  v2 = *v0;
  v3 = sub_24910D20C();
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