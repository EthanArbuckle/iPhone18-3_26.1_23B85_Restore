char *sub_20DFF077C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852378, &qword_20E00B250);
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

char *sub_20DFF0888(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A0, &qword_20E013380);
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

size_t sub_20DFF097C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853598, &unk_20E013398);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534E8, qword_20E013000) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534E8, qword_20E013000) - 8);
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

char *sub_20DFF0B6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535A0, &qword_20E0133A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20DFF0C8C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852140, &qword_20E011050);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20DFF0DC0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853588, &unk_20E013388);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E98, &unk_20E00FE60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE *sub_20DFF0EF4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_20DFF2358(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_20DFF2410(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_20DFF248C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_20DFF0F88(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20DFF20E4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_20DFF0FF4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_20DFF0FF4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20E009954();
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
        v5 = sub_20E009454();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_20DFF11BC(v7, v8, a1, v4);
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
    return sub_20DFF10EC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20DFF10EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_20E009984(), (result & 1) == 0))
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

uint64_t sub_20DFF11BC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_20DFF1A4C(v8);
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
        sub_20DFF1798((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_20E009984();
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
            result = sub_20E009984();
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
      result = sub_20DFF1A60(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_20DFF1A60((v39 > 1), v40 + 1, 1, v8);
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
        sub_20DFF1798((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_20DFF1A4C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_20DFF19C0(v44);
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
    if (v37 || (result = sub_20E009984(), (result & 1) == 0))
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

uint64_t sub_20DFF1798(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_20E009984() & 1) != 0)
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
      if (!v21 && (sub_20E009984() & 1) != 0)
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

uint64_t sub_20DFF19C0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20DFF1A4C(v3);
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

char *sub_20DFF1A60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853580, &unk_20E013720);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_20DFF1B64(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_20DFF1CBC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = MEMORY[0x277D84F90];
  v4 = v2 - a2;
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (!v2)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = 0;
      v6 = (a2 + result + 32);
      v7 = (MEMORY[0x277D84F90] + 32);
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!v5)
        {
          v10 = v3[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_28;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A0, &qword_20E013380);
          v13 = swift_allocObject();
          v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
          v13[2] = v12;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v13 != v3 || v15 >= v3 + v16 + 32)
            {
              memmove(v13 + 4, v3 + 4, v16);
            }

            v3[2] = 0;
          }

          v7 = (v15 + v16);
          v5 = (v14 >> 1) - v16;

          v3 = v13;
        }

        v18 = __OFSUB__(v5--, 1);
        if (v18)
        {
          break;
        }

        *v7++ = v8;
        if (!--v4)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = 0;
LABEL_23:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20DFF1E24(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_20E009144();
      sub_20DFF2518(&qword_27C852DB8, MEMORY[0x277CC5540]);
      result = sub_20E0090C4();
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

  result = sub_20DFF2004(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_20DFF2004(uint64_t a1, uint64_t a2)
{
  result = sub_20E008904();
  if (!result || (result = sub_20E008934(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_20E008924();
      sub_20E009144();
      sub_20DFF2518(&qword_27C852DB8, MEMORY[0x277CC5540]);
      return sub_20E0090C4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20DFF20F8()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredLanguages];
  if (!v1)
  {
    sub_20E009424();
    v1 = sub_20E009414();
  }

  v2 = [v0 minimizedLanguagesFromLanguages_];

  v3 = sub_20E009424();
  v4 = v3[2];
  if (!v4)
  {
    v6 = 28261;
    goto LABEL_10;
  }

  v6 = v3[4];
  v5 = v3[5];

  if (v4 == 1)
  {
LABEL_10:

    return v6;
  }

  v8 = v3 + 7;
  v9 = 1;
  v10 = 9;
  while (v9 < v4)
  {
    ++v9;
    v12 = *(v8 - 1);
    v11 = *v8;

    MEMORY[0x20F32A4B0](v12, v11);
    MEMORY[0x20F32A4B0](0x2E303D713BLL, 0xE500000000000000);
    v13 = sub_20E009964();
    MEMORY[0x20F32A4B0](v13);

    MEMORY[0x20F32A4B0](44, 0xE100000000000000);

    v4 = v3[2];
    v8 += 2;
    --v10;
    if (v9 == v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_20DFF22E4()
{
  result = qword_27C853570;
  if (!qword_27C853570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853570);
  }

  return result;
}

unint64_t sub_20DFF2338(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_20DFF2358(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_20DFF2410(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_20E008944();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_20E0088F4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_20E008B34();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_20DFF248C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_20E008944();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_20E0088F4();
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

uint64_t sub_20DFF2518(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20DFF2560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v10 = sub_20E008714();
  v7[11] = v10;
  v11 = *(v10 - 8);
  v7[12] = v11;
  v12 = *(v11 + 64) + 15;
  v7[13] = swift_task_alloc();
  v13 = swift_task_alloc();
  v7[14] = v13;
  *v13 = v7;
  v13[1] = sub_20DFF2698;

  return sub_20DF9D6CC(a7);
}

uint64_t sub_20DFF2698()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DFF2794, 0, 0);
}

uint64_t sub_20DFF2794()
{
  KeyPath = swift_getKeyPath();
  v0[15] = KeyPath;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_20DFF2854;
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];

  return sub_20DF66FB0(v3, v8, v9, v6, v7, v4, v5, KeyPath);
}

uint64_t sub_20DFF2854()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DFF296C, 0, 0);
}

uint64_t sub_20DFF296C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF8B6B4(v3);
    if (qword_27C852080 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626E0);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to generate request URL for TokenSet Generation", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    type metadata accessor for NetworkError();
    sub_20DFF3F10(&qword_281123200, type metadata accessor for NetworkError);
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v9 = v0[13];
    v10 = v0[10];

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    sub_20DFDF8DC(0xD00000000000001DLL, 0x800000020E017630, 0xD00000000000002ELL, 0x800000020E017650);
    v13 = *(MEMORY[0x277CC9D18] + 4);
    v14 = swift_task_alloc();
    v0[17] = v14;
    *v14 = v0;
    v14[1] = sub_20DFF2C28;
    v15 = v0[13];
    v16 = v0[9];

    return MEMORY[0x28211ECF8](v15, 0);
  }
}

uint64_t sub_20DFF2C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 136);
  v9 = *v4;
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;
  v5[21] = v3;

  if (v3)
  {
    v7 = sub_20DFCC4C4;
  }

  else
  {
    v7 = sub_20DFF2D40;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20DFF2D40()
{
  v123 = v0;
  v1 = *(v0 + 160);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    if (qword_27C852080 != -1)
    {
      swift_once();
    }

    v29 = sub_20E009094();
    __swift_project_value_buffer(v29, qword_27C8626E0);
    v30 = sub_20E009074();
    v31 = sub_20E009544();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20DF62000, v30, v31, "Unable to process Address Verification Response.", v32, 2u);
      MEMORY[0x20F32B3A0](v32, -1, -1);
    }

    v33 = *(v0 + 152);
    v34 = *(v0 + 160);
    v35 = *(v0 + 144);
    v37 = *(v0 + 96);
    v36 = *(v0 + 104);
    v38 = *(v0 + 88);

    type metadata accessor for NetworkError();
    sub_20DFF3F10(&qword_281123200, type metadata accessor for NetworkError);
    swift_allocError();
    *v39 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v35, v33);
    goto LABEL_53;
  }

  v3 = v2;
  v4 = *(v0 + 104);
  v5 = *(v0 + 160);
  sub_20DFDFFF8(0xD000000000000016, 0x800000020E017680, [v3 statusCode], &unk_28252DF10);
  v6 = [v3 statusCode];
  if (v6 > 411)
  {
    if (v6 == 412)
    {
      if (*(v0 + 48))
      {
        if (qword_27C852080 != -1)
        {
          swift_once();
        }

        v69 = sub_20E009094();
        __swift_project_value_buffer(v69, qword_27C8626E0);
        v70 = sub_20E009074();
        v71 = sub_20E009544();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v122[0] = v73;
          *v72 = 136315138;
          *(v72 + 4) = sub_20DF74468(0xD000000000000051, 0x800000020E017700, v122);
          _os_log_impl(&dword_20DF62000, v70, v71, "%s", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v73);
          MEMORY[0x20F32B3A0](v73, -1, -1);
          MEMORY[0x20F32B3A0](v72, -1, -1);
        }
      }

      else
      {
        if (qword_27C852080 != -1)
        {
          swift_once();
        }

        v105 = sub_20E009094();
        __swift_project_value_buffer(v105, qword_27C8626E0);
        v70 = sub_20E009074();
        v106 = sub_20E009544();
        if (os_log_type_enabled(v70, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v122[0] = v108;
          *v107 = 136315138;
          *(v107 + 4) = sub_20DF74468(0xD000000000000056, 0x800000020E0176A0, v122);
          _os_log_impl(&dword_20DF62000, v70, v106, "%s", v107, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v108);
          MEMORY[0x20F32B3A0](v108, -1, -1);
          MEMORY[0x20F32B3A0](v107, -1, -1);
        }
      }

      v109 = *(v0 + 152);
      v110 = *(v0 + 160);
      v111 = *(v0 + 144);
      v113 = *(v0 + 96);
      v112 = *(v0 + 104);
      v114 = *(v0 + 88);
      type metadata accessor for NetworkError();
      sub_20DFF3F10(&qword_281123200, type metadata accessor for NetworkError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_20DF67FFC(v111, v109);

      (*(v113 + 8))(v112, v114);
      goto LABEL_54;
    }

    if (v6 != 429)
    {
      if (v6 == 500)
      {
        if (qword_27C852080 != -1)
        {
          swift_once();
        }

        v40 = sub_20E009094();
        __swift_project_value_buffer(v40, qword_27C8626E0);
        v41 = sub_20E009074();
        v42 = sub_20E009544();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_20DF62000, v41, v42, "Internal Server Error", v43, 2u);
          MEMORY[0x20F32B3A0](v43, -1, -1);
        }

        v45 = *(v0 + 152);
        v44 = *(v0 + 160);
        v46 = *(v0 + 144);
        v47 = *(v0 + 96);
        v117 = *(v0 + 88);
        v120 = *(v0 + 104);

        type metadata accessor for NetworkError();
        sub_20DFF3F10(&qword_281123200, type metadata accessor for NetworkError);
        swift_allocError();
        *v48 = [v3 statusCode];
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_20DF67FFC(v46, v45);

        (*(v47 + 8))(v120, v117);
        goto LABEL_54;
      }

      goto LABEL_39;
    }

    if (qword_27C852080 != -1)
    {
      swift_once();
    }

    v86 = sub_20E009094();
    __swift_project_value_buffer(v86, qword_27C8626E0);
    v83 = sub_20E009074();
    v87 = sub_20E009544();
    if (os_log_type_enabled(v83, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_20DF62000, v83, v87, "TOO MANY REQUESTS | Server rejected calls cause of too many requests being made", v88, 2u);
      MEMORY[0x20F32B3A0](v88, -1, -1);
    }

    goto LABEL_52;
  }

  if (v6 != 201)
  {
    if (v6 != 400)
    {
      if (v6 == 401)
      {
        if (qword_27C852080 != -1)
        {
          swift_once();
        }

        v7 = sub_20E009094();
        __swift_project_value_buffer(v7, qword_27C8626E0);
        v8 = sub_20E009074();
        v9 = sub_20E009544();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v122[0] = v11;
          *v10 = 136315138;
          *(v10 + 4) = sub_20DF74468(0xD000000000000068, 0x800000020E017760, v122);
          _os_log_impl(&dword_20DF62000, v8, v9, "%s", v10, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v11);
          MEMORY[0x20F32B3A0](v11, -1, -1);
          MEMORY[0x20F32B3A0](v10, -1, -1);
        }

        v12 = *(v0 + 160);
        v13 = sub_20E009074();
        v14 = sub_20E009534();

        v15 = os_log_type_enabled(v13, v14);
        v17 = *(v0 + 152);
        v16 = *(v0 + 160);
        v18 = *(v0 + 144);
        v19 = *(v0 + 96);
        v20 = *(v0 + 104);
        v21 = *(v0 + 88);
        if (v15)
        {
          v119 = *(v0 + 152);
          v22 = swift_slowAlloc();
          v116 = v18;
          v23 = swift_slowAlloc();
          v122[0] = v23;
          *v22 = 136315138;
          v24 = [v3 allHeaderFields];
          v115 = v19;
          sub_20E009164();

          v25 = sub_20E009174();
          v27 = v26;

          v28 = sub_20DF74468(v25, v27, v122);

          *(v22 + 4) = v28;
          _os_log_impl(&dword_20DF62000, v13, v14, "Headers: %s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v23);
          MEMORY[0x20F32B3A0](v23, -1, -1);
          MEMORY[0x20F32B3A0](v22, -1, -1);

          type metadata accessor for NetworkError();
          sub_20DFF3F10(&qword_281123200, type metadata accessor for NetworkError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_20DF67FFC(v116, v119);

          (*(v115 + 8))(v20, v21);
        }

        else
        {

          type metadata accessor for NetworkError();
          sub_20DFF3F10(&qword_281123200, type metadata accessor for NetworkError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_20DF67FFC(v18, v17);

          (*(v19 + 8))(v20, v21);
        }

        goto LABEL_54;
      }

LABEL_39:
      if (qword_27C852070 != -1)
      {
        swift_once();
      }

      v74 = *(v0 + 160);
      v75 = sub_20E009094();
      __swift_project_value_buffer(v75, qword_27C8626B0);
      v76 = v74;
      v77 = sub_20E009074();
      v78 = sub_20E009544();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = *(v0 + 160);
        v80 = swift_slowAlloc();
        *v80 = 134217984;
        *(v80 + 4) = [v3 statusCode];

        _os_log_impl(&dword_20DF62000, v77, v78, "Request failed : Status Code %ld", v80, 0xCu);
        MEMORY[0x20F32B3A0](v80, -1, -1);
        v81 = *(v0 + 160);
      }

      else
      {

        v81 = *(v0 + 160);
        v77 = v81;
      }

      v96 = *(v0 + 144);
      v95 = *(v0 + 152);
      v97 = *(v0 + 96);
      v118 = *(v0 + 88);
      v121 = *(v0 + 104);

      type metadata accessor for NetworkError();
      sub_20DFF3F10(&qword_281123200, type metadata accessor for NetworkError);
      swift_allocError();
      *v98 = [v3 statusCode];
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_20DF67FFC(v96, v95);

      (*(v97 + 8))(v121, v118);
      goto LABEL_54;
    }

    if (qword_27C852080 != -1)
    {
      swift_once();
    }

    v82 = sub_20E009094();
    __swift_project_value_buffer(v82, qword_27C8626E0);
    v83 = sub_20E009074();
    v84 = sub_20E009544();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_20DF62000, v83, v84, "BAD REQUEST | Check request", v85, 2u);
      MEMORY[0x20F32B3A0](v85, -1, -1);
    }

LABEL_52:
    v89 = *(v0 + 152);
    v34 = *(v0 + 160);
    v90 = *(v0 + 144);
    v37 = *(v0 + 96);
    v36 = *(v0 + 104);
    v38 = *(v0 + 88);

    type metadata accessor for NetworkError();
    sub_20DFF3F10(&qword_281123200, type metadata accessor for NetworkError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v90, v89);

LABEL_53:
    (*(v37 + 8))(v36, v38);
LABEL_54:
    v91 = *(v0 + 104);
    v92 = *(v0 + 80);

    v93 = *(v0 + 8);

    return v93();
  }

  if (qword_27C852080 != -1)
  {
    swift_once();
  }

  v49 = sub_20E009094();
  __swift_project_value_buffer(v49, qword_27C8626E0);
  v50 = sub_20E009074();
  v51 = sub_20E009554();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_20DF62000, v50, v51, "Address Verification Response received", v52, 2u);
    MEMORY[0x20F32B3A0](v52, -1, -1);
  }

  v53 = *(v0 + 168);
  v55 = *(v0 + 144);
  v54 = *(v0 + 152);

  v56 = sub_20E008744();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  sub_20E008734();
  type metadata accessor for UtilitySubscriptionTokenSet();
  sub_20DFF3F10(&qword_27C8528A8, type metadata accessor for UtilitySubscriptionTokenSet);
  sub_20E008724();
  if (v53)
  {
    v59 = v53;

    v60 = sub_20E009074();
    v61 = sub_20E009544();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_20DF62000, v60, v61, "Error while decoding response from server", v62, 2u);
      MEMORY[0x20F32B3A0](v62, -1, -1);
    }

    v63 = *(v0 + 152);
    v64 = *(v0 + 160);
    v65 = *(v0 + 144);
    v67 = *(v0 + 96);
    v66 = *(v0 + 104);
    v68 = *(v0 + 88);

    sub_20DFFE0B0(v59);
    swift_willThrow();
    sub_20DF67FFC(v65, v63);

    (*(v67 + 8))(v66, v68);
    goto LABEL_54;
  }

  v99 = *(v0 + 152);
  v100 = *(v0 + 160);
  v101 = *(v0 + 144);
  v102 = *(v0 + 80);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

  sub_20DF67FFC(v101, v99);
  v103 = *(v0 + 16);

  v104 = *(v0 + 8);

  return v104(v103);
}

uint64_t sub_20DFF3F10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20DFF3F58(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_20E008D04();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_20E008714();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_20E008AF4();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFF4114, 0, 0);
}

uint64_t sub_20DFF4114()
{
  v1 = (v0[3] + OBJC_IVAR____TtC19HomeUtilityServices21TAFVerificationFactor__factor);
  if (v1[7])
  {
    v2 = v0[11];
    v3 = v0[12];
    v4 = v0[10];
    v6 = v1[8];
    v5 = v1[9];

    sub_20E008AC4();

    if ((*(v3 + 48))(v4, 1, v2) != 1)
    {
      v15 = v0[13];
      v14 = v0[14];
      v16 = v0[11];
      v17 = v0[12];
      v18 = v0[9];
      v19 = v0[8];
      v21 = v0[5];
      v20 = v0[6];
      v29 = v0[4];
      v30 = v0[2];
      v31 = v0[7];
      (*(v17 + 32))(v14, v0[10], v16);
      (*(v17 + 16))(v15, v14, v16);
      sub_20E0086B4();
      sub_20E008694();
      sub_20E008CF4();
      sub_20E008CE4();
      (*(v21 + 8))(v20, v29);
      sub_20E009254();

      sub_20E0086D4();

      sub_20E005CA0(0, v30);
      (*(v19 + 8))(v18, v31);
      (*(v17 + 8))(v14, v16);
      goto LABEL_10;
    }

    sub_20DF66E28(v0[10], &qword_27C8520D0, &qword_20E00AB70);
  }

  if (qword_27C852078 != -1)
  {
    swift_once();
  }

  v7 = sub_20E009094();
  __swift_project_value_buffer(v7, qword_27C8626C8);
  v8 = sub_20E009074();
  v9 = sub_20E009544();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_20DF62000, v8, v9, "Unable to generate send OTP URL for TAF Flow.", v10, 2u);
    MEMORY[0x20F32B3A0](v10, -1, -1);
  }

  v11 = v0[7];
  v12 = v0[8];
  v13 = v0[2];

  (*(v12 + 56))(v13, 1, 1, v11);
LABEL_10:
  v23 = v0[13];
  v22 = v0[14];
  v25 = v0[9];
  v24 = v0[10];
  v26 = v0[6];

  v27 = v0[1];

  return v27();
}

uint64_t sub_20DFF446C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_20E008D04();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v8 = sub_20E008714();
  v4[18] = v8;
  v9 = *(v8 - 8);
  v4[19] = v9;
  v10 = *(v9 + 64) + 15;
  v4[20] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v12 = sub_20E008AF4();
  v4[22] = v12;
  v13 = *(v12 - 8);
  v4[23] = v13;
  v14 = *(v13 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v15 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20DFF4658, 0, 0);
}

uint64_t sub_20DFF4658()
{
  v55 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96) + OBJC_IVAR____TtC19HomeUtilityServices21TAFVerificationFactor__factor;
  if (!*(v1 + 56))
  {
    goto LABEL_4;
  }

  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);

  sub_20E008AC4();

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_20DF66E28(*(v0 + 168), &qword_27C8520D0, &qword_20E00AB70);
LABEL_4:
    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v7 = sub_20E009094();
    __swift_project_value_buffer(v7, qword_27C8626C8);
    v8 = sub_20E009074();
    v9 = sub_20E009544();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20DF62000, v8, v9, "Unable to generate verify OTP URL for TAF Flow.", v10, 2u);
      MEMORY[0x20F32B3A0](v10, -1, -1);
    }

    v11 = *(v0 + 144);
    v12 = *(v0 + 152);
    v13 = *(v0 + 88);

    (*(v12 + 56))(v13, 1, 1, v11);
    goto LABEL_16;
  }

  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  (*(*(v0 + 184) + 32))(*(v0 + 200), *(v0 + 168), *(v0 + 176));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E00AB50;
  *(inited + 32) = 0x65646F4373736170;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v15;
  *(inited + 56) = v14;

  sub_20DF74E1C(inited);
  swift_setDeallocating();
  sub_20DF66E28(inited + 32, &qword_27C852140, &qword_20E011050);
  v17 = objc_opt_self();
  v18 = sub_20E009154();

  *(v0 + 80) = 0;
  v19 = [v17 dataWithJSONObject:v18 options:0 error:v0 + 80];

  v20 = *(v0 + 80);
  if (v19)
  {
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v24 = *(v0 + 176);
    v23 = *(v0 + 184);
    v25 = *(v0 + 160);
    v53 = *(v0 + 152);
    v26 = *(v0 + 136);
    v54 = *(v0 + 144);
    v27 = *(v0 + 128);
    v51 = *(v0 + 120);
    v52 = *(v0 + 88);
    v28 = sub_20E008B84();
    v50 = v29;

    (*(v23 + 16))(v22, v21, v24);
    sub_20E0086B4();
    sub_20E008694();
    sub_20DF67FA8(v28, v50);
    sub_20E0086F4();
    sub_20E008CF4();
    sub_20E008CE4();
    (*(v27 + 8))(v26, v51);
    sub_20E009254();

    sub_20E0086D4();

    sub_20E005CA0(1, v52);
    sub_20DF67FFC(v28, v50);
    (*(v53 + 8))(v25, v54);
    (*(v23 + 8))(v21, v24);
  }

  else
  {
    v30 = v20;
    v31 = sub_20E008A34();

    swift_willThrow();
    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v32 = sub_20E009094();
    __swift_project_value_buffer(v32, qword_27C8626C8);
    v33 = sub_20E009074();
    v34 = sub_20E009544();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_20DF62000, v33, v34, "Unable to encode TAF OTP Passcode", v35, 2u);
      MEMORY[0x20F32B3A0](v35, -1, -1);
    }

    v36 = *(v0 + 200);
    v37 = *(v0 + 176);
    v38 = *(v0 + 184);
    v39 = *(v0 + 144);
    v40 = *(v0 + 152);
    v41 = *(v0 + 88);

    (*(v38 + 8))(v36, v37);
    (*(v40 + 56))(v41, 1, 1, v39);
  }

LABEL_16:
  v43 = *(v0 + 192);
  v42 = *(v0 + 200);
  v45 = *(v0 + 160);
  v44 = *(v0 + 168);
  v46 = *(v0 + 136);

  v47 = *(v0 + 8);
  v48 = *MEMORY[0x277D85DE8];

  return v47();
}

uint64_t sub_20DFF54A8(int a1, int a2, int a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  (*(v5 + 2))(v5, 0, 0);
  _Block_release(v5);
  v6 = *(v4 + 8);

  return v6();
}

uint64_t UtilitySubscriptionService.createUtilitySubscription(serviceLocation:accessToken:siteID:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_20DFF5550, 0, 0);
}

uint64_t sub_20DFF5550()
{
  v1 = (v0[2] + OBJC_IVAR____TtC19HomeUtilityServices22UtilityServiceLocation_serviceLocationID);
  v3 = *v1;
  v2 = v1[1];
  v4 = (*(v0[6] + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v5 = *v4;
  v6 = v4[1];
  v0[7] = v6;

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_20DFF5668;
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return sub_20DF873C4(v3, v2, v10, v8, v5, v6, v9);
}

uint64_t sub_20DFF5668(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DFAA7FC, 0, 0);
  }

  else
  {
    v7 = *(v4 + 56);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_20DFF596C(void *a1, int a2, int a3, void *a4, void *aBlock, void *a6)
{
  v6[3] = a4;
  v6[4] = a6;
  v6[2] = a1;
  v6[5] = _Block_copy(aBlock);
  v6[6] = sub_20E0091D4();
  v6[7] = v10;
  v11 = a1;
  v12 = a4;
  v13 = a6;

  return MEMORY[0x2822009F8](sub_20DFF5A14, 0, 0);
}

uint64_t sub_20DFF5A14()
{
  v1 = (v0[2] + OBJC_IVAR____TtC19HomeUtilityServices22UtilityServiceLocation_serviceLocationID);
  v3 = *v1;
  v2 = v1[1];
  v4 = (*(v0[4] + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v5 = *v4;
  v6 = v4[1];
  v0[8] = v6;

  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_20DFF5B2C;
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[3];

  return sub_20DF873C4(v3, v2, v8, v9, v5, v6, v10);
}

uint64_t sub_20DFF5B2C(void *a1)
{
  v4 = *(*v2 + 72);
  v5 = *v2;
  v5[10] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DFF5CC4, 0, 0);
  }

  else
  {
    v7 = v5[7];
    v6 = v5[8];
    v9 = v5[4];
    v8 = v5[5];
    v10 = v5[2];
    v11 = v5[3];

    (v8)[2](v8, a1, 0);
    _Block_release(v8);

    v12 = v5[1];

    return v12();
  }
}

uint64_t sub_20DFF5CC4()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  v8 = sub_20E008A24();

  (v4)[2](v4, 0, v8);
  _Block_release(v4);
  v9 = v0[1];

  return v9();
}

uint64_t UtilitySubscriptionService.verifyOTPForAccount(factor:oneTimePasscode:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_20E008D04();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFF5E54, 0, 0);
}

uint64_t sub_20DFF5E54()
{
  v1 = v0[10];
  v3 = v0[11];
  v2 = v0[12];
  v4 = (*(v0[9] + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v5 = *v4;
  v6 = v4[1];
  v0[13] = v6;

  sub_20E008CF4();
  v7 = sub_20E008CE4();
  v0[14] = v8;
  (*(v3 + 8))(v2, v1);
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_20DFF5F84;
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[5];
  v13 = v0[6];

  return sub_20DFEA928((v0 + 2), v12, v13, v10, v11, v5, v6, v7);
}

uint64_t sub_20DFF5F84()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_20DFF628C;
  }

  else
  {
    v5 = *(v2 + 104);
    v6 = *(v2 + 112);

    v4 = sub_20DFF60A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DFF60A8()
{
  v1 = v0[2];
  v2 = v0[4];
  if (v2)
  {
    v3 = v0[3];
    v4 = v0[12];

    v5 = v0[1];

    return v5(v3, v2);
  }

  else
  {
    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v7 = sub_20E009094();
    __swift_project_value_buffer(v7, qword_27C8626C8);
    v8 = sub_20E009074();
    v9 = sub_20E009544();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20DF62000, v8, v9, "TAF Account Verification(OTP) failed | No authorization code.", v10, 2u);
      MEMORY[0x20F32B3A0](v10, -1, -1);
    }

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v11 = v0[12];
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_20DFF628C()
{
  v1 = v0[13];
  v2 = v0[14];

  v3 = v0[16];
  v4 = v0[12];
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_20DFF64B8(void *a1, int a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v9 = sub_20E0091D4();
  v11 = v10;
  v5[6] = v10;
  v12 = a1;
  v13 = a3;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_20DFF65B8;

  return UtilitySubscriptionService.verifyOTPForAccount(factor:oneTimePasscode:_:)(v12, v9, v11, v13);
}

uint64_t sub_20DFF65B8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  if (v2)
  {
    v10 = sub_20E008A24();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    v13 = sub_20E0091C4();

    v12 = v13;
    v11 = 0;
    v10 = v13;
  }

  v14 = *(v3 + 40);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t UtilitySubscriptionService.createUtilitySubscription(serviceLocationID:accessToken:siteID:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_20DF6A53C;

  return (sub_20DFF82A4)(a1, a2, a3, a4, a7);
}

uint64_t sub_20DFF6A24(int a1, int a2, int a3, void *a4, void *aBlock, void *a6)
{
  v6[2] = a4;
  v6[3] = a6;
  v6[4] = _Block_copy(aBlock);
  v9 = sub_20E0091D4();
  v11 = v10;
  v6[5] = v10;
  v12 = sub_20E0091D4();
  v14 = v13;
  v6[6] = v13;
  v15 = a4;
  a6;
  v16 = swift_task_alloc();
  v6[7] = v16;
  *v16 = v6;
  v16[1] = sub_20DFF6B4C;

  return sub_20DFF82A4(v9, v11, v12, v14, v15);
}

uint64_t sub_20DFF6B4C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 24);
  v10 = *(*v2 + 16);
  v11 = *v2;

  v12 = *(v5 + 32);
  if (v3)
  {
    v13 = sub_20E008A24();

    (v12)[2](v12, 0, v13);
    _Block_release(v12);
  }

  else
  {
    (v12)[2](*(v5 + 32), a1, 0);
    _Block_release(v12);
  }

  v14 = *(v11 + 8);

  return v14();
}

uint64_t UtilitySubscriptionService.createUtilitySubscription(serviceLocationID:accessToken:zoneName:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_20DF77B54;

  return (sub_20DFF8478)(a1, a2, a3, a4, a7);
}

uint64_t sub_20DFF6FCC(int a1, int a2, int a3, void *a4, void *aBlock, void *a6)
{
  v6[2] = a4;
  v6[3] = a6;
  v6[4] = _Block_copy(aBlock);
  v9 = sub_20E0091D4();
  v11 = v10;
  v6[5] = v10;
  v12 = sub_20E0091D4();
  v14 = v13;
  v6[6] = v13;
  v15 = a4;
  a6;
  v16 = swift_task_alloc();
  v6[7] = v16;
  *v16 = v6;
  v16[1] = sub_20DFF9424;

  return sub_20DFF8478(v9, v11, v12, v14, v15);
}

uint64_t static UtilitySubscriptionService.resendHistoricalData(accessToken:subscriptionID:utilityID:start:end:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = swift_task_alloc();
  *(v8 + 16) = v11;
  *v11 = v8;
  v11[1] = sub_20DFAE848;

  return (sub_20DFF87A4)(a7, a8);
}

uint64_t sub_20DFF7370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7)
{
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0) - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v7[2] = v11;
  v12 = sub_20E008CD4();
  v7[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v7[4] = v13;
  v15 = *(v13 + 64) + 15;
  v16 = swift_task_alloc();
  v7[5] = v16;
  v17 = swift_task_alloc();
  v7[6] = v17;
  v7[7] = _Block_copy(a7);
  sub_20E008C84();
  if (a5)
  {
    sub_20E008C84();
    (*(v14 + 32))(v11, v16, v12);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  (*(v14 + 56))(v11, v18, 1, v12);
  v19 = swift_task_alloc();
  v7[8] = v19;
  *v19 = v7;
  v19[1] = sub_20DFF7568;

  return (sub_20DFF87A4)(v17, v11);
}

uint64_t sub_20DFF7568(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = (*v2)[8];
  v8 = *v2;

  v9 = v5[7];
  v10 = v5[6];
  v11 = v5[4];
  v12 = v5[3];
  sub_20DF66E28(v5[2], &qword_27C852A58, &qword_20E00F7A0);
  (*(v11 + 8))(v10, v12);
  if (v3)
  {
    v13 = sub_20E008A24();

    (*(v9 + 16))(v9, 0, v13);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  v15 = v6[6];
  v14 = v6[7];
  v16 = v6[5];
  v17 = v6[2];
  _Block_release(v14);

  v18 = v8[1];

  return v18();
}

uint64_t static UtilitySubscriptionService.revokeSubscription(accessToken:subscriptionID:utilityID:_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20DFAC2E4;

  return sub_20DFF87C0();
}

uint64_t sub_20DFF79D4(int a1, int a2, int a3, int a4, void *aBlock)
{
  *(v5 + 16) = _Block_copy(aBlock);
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_20DFF7A80;

  return sub_20DFF87C0();
}

uint64_t sub_20DFF7A80(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 24);
  v8 = *v2;

  v9 = *(v5 + 16);
  if (v3)
  {
    v10 = sub_20E008A24();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 16));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_20DFF7BF8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_20DF6BD98;

  return v7();
}

uint64_t sub_20DFF7CE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_20DF6BA84;

  return v8();
}

uint64_t sub_20DFF7DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_20DFC9618(a3, v25 - v11);
  v13 = sub_20E0094C4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20DF66E28(v12, &qword_27C8522B0, &qword_20E00B1F0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_20E0094B4();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_20E009484();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_20E009264() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_20DF66E28(a3, &qword_27C8522B0, &qword_20E00B1F0);

    return v23;
  }

LABEL_8:
  sub_20DF66E28(a3, &qword_27C8522B0, &qword_20E00B1F0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_20DFF80B4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DFF81AC;

  return v7(a1);
}

uint64_t sub_20DFF81AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20DFF82A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_20DFF82CC, 0, 0);
}

uint64_t sub_20DFF82CC()
{
  if (qword_2811230C8 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_2811249D0);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v5 = v0[7];

  v6 = (*(v5 + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v8 = *v6;
  v7 = v6[1];
  v0[8] = v7;

  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_20DFAA97C;
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[3];
  v13 = v0[4];
  v14 = v0[2];

  return sub_20DF873C4(v14, v12, v13, v10, v8, v7, v11);
}

uint64_t sub_20DFF8478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_20DFF84A0, 0, 0);
}

uint64_t sub_20DFF84A0()
{
  if (qword_2811230C8 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_2811249D0);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v5 = v0[7];

  v6 = (*(v5 + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v8 = *v6;
  v7 = v6[1];
  v0[8] = v7;

  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_20DFF864C;
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[3];
  v13 = v0[4];
  v14 = v0[2];

  return sub_20DF873C4(v14, v12, v13, v10, v8, v7, v11);
}

uint64_t sub_20DFF864C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DFF9430, 0, 0);
  }

  else
  {
    v7 = *(v4 + 64);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_20DFF87DC()
{
  if (qword_2811230C8 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_2811249D0);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "This API has been deprecated and use of this API will result in request failure.", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  type metadata accessor for NetworkError();
  sub_20DF960FC();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_20DFF8938()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_20DF6BD98;

  return sub_20DFF79D4(v2, v3, v4, v5, v7);
}

uint64_t sub_20DFF8A0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DF6BD98;

  return sub_20DFF80B4(a1, v5);
}

uint64_t sub_20DFF8AC4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DF6BA84;

  return sub_20DFF80B4(a1, v5);
}

uint64_t sub_20DFF8B7C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_20DF6BD98;

  return sub_20DFF7370(v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_20DFF8C64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_20DF6BD98;

  return sub_20DFF6FCC(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_20DFF8D38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_20DF6BD98;

  return sub_20DFF6A24(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_20DFF8E0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_20DF6BD98;

  return sub_20DFF64B8(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_51Tm()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20DFF8F34()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_20DF6BA84;

  return sub_20DFF596C(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_20DFF9008()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_20DF6BD98;

  return sub_20DFF54A8(v2, v3, v4, v5);
}

uint64_t sub_20DFF90D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_20DF6BD98;

  return sub_20DFF9428(v2, v3, v4, v5);
}

uint64_t objectdestroy_111Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20DFF91E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_20DF6BD98;

  return sub_20DFF942C(v2, v3, v4, v5);
}

uint64_t sub_20DFF92B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20DF6BD98;

  return sub_20DFF9420(v2, v3);
}

uint64_t sub_20DFF9364()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20DF6BD98;

  return sub_20DFF941C(v2, v3);
}

Swift::String __swiftcall CLLocationCoordinate2D.geohash(length:)(Swift::Int length)
{
  v3 = v2;
  v4 = v1;
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  v7 = sub_20DFF96EC(length, v4, v3);
  v9 = v8;
  swift_setDeallocating();
  v10 = *(inited + 16);

  v11 = *(inited + 24);

  v12 = v7;
  v13 = v9;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

Swift::String __swiftcall CLLocation.geohash(length:)(Swift::Int length)
{
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  [v1 coordinate];
  v5 = v4;
  [v1 coordinate];
  v7 = sub_20DFF96EC(length, v5, v6);
  v9 = v8;
  swift_setDeallocating();
  v10 = *(inited + 16);

  v11 = *(inited + 24);

  v12 = v7;
  v13 = v9;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

CLLocation __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CLLocation.init(geohash:)(Swift::String geohash)
{
  object = geohash._object;
  countAndFlagsBits = geohash._countAndFlagsBits;
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  sub_20DFFA158(countAndFlagsBits, object);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (!v1)
  {
    object = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLatitude:(v6 + v8) * 0.5 longitude:(v10 + v12) * 0.5];
  }

  swift_setDeallocating();
  v13 = *(inited + 16);

  v14 = *(inited + 24);

  v16 = object;
  result._internal = v15;
  result.super.isa = v16;
  return result;
}

uint64_t Geohash.Error.hashValue.getter()
{
  sub_20E009A34();
  MEMORY[0x20F32AC10](0);
  return sub_20E009A54();
}

uint64_t sub_20DFF96EC(uint64_t result, double a2, double a3)
{
  v3 = ceil(result * 5.0 * 0.5);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v4 = v3;
  if (v3 < 0)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v5 = result;
  v118 = v3;
  if (!v4)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  result = sub_20E009454();
  v6 = result;
  *(result + 16) = v4;
  v7 = (result + 32);
  if (v4 < 4)
  {
    v8 = 0;
    v9 = a2;
LABEL_12:
    v13 = v4 - v8;
    do
    {
      *v7++ = v9;
      --v13;
    }

    while (v13);
    goto LABEL_14;
  }

  v8 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  v7 += v4 & 0x7FFFFFFFFFFFFFFCLL;
  v9 = a2;
  v10 = vdupq_lane_s64(*&a2, 0);
  v11 = (result + 48);
  v12 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v11[-1] = v10;
    *v11 = v10;
    v11 += 2;
    v12 -= 4;
  }

  while (v12);
  if (v8 != v4)
  {
    goto LABEL_12;
  }

LABEL_14:
  v112 = v5;
  v14 = *(v6 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v17 = 90.0;
    v18 = -90.0;
    do
    {
      v19 = v17;
      v20 = v16;
      v21 = v15;
      while (1)
      {
        if (v21 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_111;
        }

        v15 = v21 + 1;
        v22 = *(v6 + 32 + 8 * v21);
        v17 = (v19 + v18) * 0.5;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v20;
        if (v22 < v17)
        {
          break;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_20DFFAE38(0, *(v20 + 2) + 1, 1, v20);
        }

        v26 = *(v24 + 2);
        v25 = *(v24 + 3);
        if (v26 >= v25 >> 1)
        {
          v24 = sub_20DFFAE38((v25 > 1), v26 + 1, 1, v24);
        }

        *(v24 + 2) = v26 + 1;
        v27 = &v24[16 * v26];
        *(v27 + 4) = 49;
        *(v27 + 5) = 0xE100000000000000;
        v28 = v24;

        v16 = v28;
        v18 = (v19 + v18) * 0.5;
        v20 = v28;
        ++v21;
        if (v14 == v15)
        {
          goto LABEL_32;
        }
      }

      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_20DFFAE38(0, *(v20 + 2) + 1, 1, v20);
      }

      v30 = *(v24 + 2);
      v29 = *(v24 + 3);
      if (v30 >= v29 >> 1)
      {
        v24 = sub_20DFFAE38((v29 > 1), v30 + 1, 1, v24);
      }

      *(v24 + 2) = v30 + 1;
      v31 = &v24[16 * v30];
      *(v31 + 4) = 48;
      *(v31 + 5) = 0xE100000000000000;
      v32 = v24;

      v16 = v32;
    }

    while (v14 - 1 != v21);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

LABEL_32:
  v116 = v16;

  if (!v118)
  {
    v33 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

  result = sub_20E009454();
  v33 = result;
  *(result + 16) = v118;
  v34 = (result + 32);
  if (v118 < 4)
  {
    v35 = 0;
    v36 = a3;
LABEL_39:
    v40 = v118 - v35;
    do
    {
      *v34++ = v36;
      --v40;
    }

    while (v40);
    goto LABEL_41;
  }

  v35 = v118 & 0x7FFFFFFFFFFFFFFCLL;
  v34 += v118 & 0x7FFFFFFFFFFFFFFCLL;
  v36 = a3;
  v37 = vdupq_lane_s64(*&a3, 0);
  v38 = (result + 48);
  v39 = v118 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v38[-1] = v37;
    *v38 = v37;
    v38 += 2;
    v39 -= 4;
  }

  while (v39);
  if (v35 != v118)
  {
    goto LABEL_39;
  }

LABEL_41:
  v41 = *(v33 + 16);
  if (v41)
  {
    v42 = 0;
    v43 = MEMORY[0x277D84F90];
    v44 = 180.0;
    v45 = -180.0;
LABEL_43:
    v46 = v44;
    v47 = v43;
    v48 = v42;
    while (v48 < *(v33 + 16))
    {
      v42 = v48 + 1;
      v49 = *(v33 + 32 + 8 * v48);
      v44 = (v46 + v45) * 0.5;

      v50 = swift_isUniquelyReferenced_nonNull_native();
      v43 = v47;
      if (v49 < v44)
      {
        if ((v50 & 1) == 0)
        {
          v43 = sub_20DFFAE38(0, *(v47 + 2) + 1, 1, v47);
        }

        v55 = *(v43 + 2);
        v54 = *(v43 + 3);
        if (v55 >= v54 >> 1)
        {
          v43 = sub_20DFFAE38((v54 > 1), v55 + 1, 1, v43);
        }

        *(v43 + 2) = v55 + 1;
        v56 = &v43[16 * v55];
        *(v56 + 4) = 48;
        *(v56 + 5) = 0xE100000000000000;

        if (v41 - 1 != v48)
        {
          goto LABEL_43;
        }

        goto LABEL_59;
      }

      if ((v50 & 1) == 0)
      {
        v43 = sub_20DFFAE38(0, *(v47 + 2) + 1, 1, v47);
      }

      v52 = *(v43 + 2);
      v51 = *(v43 + 3);
      if (v52 >= v51 >> 1)
      {
        v43 = sub_20DFFAE38((v51 > 1), v52 + 1, 1, v43);
      }

      *(v43 + 2) = v52 + 1;
      v53 = &v43[16 * v52];
      *(v53 + 4) = 49;
      *(v53 + 5) = 0xE100000000000000;

      v45 = (v46 + v45) * 0.5;
      v47 = v43;
      ++v48;
      if (v41 == v42)
      {
        goto LABEL_59;
      }
    }

LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v43 = MEMORY[0x277D84F90];
LABEL_59:

  v114 = *(v43 + 2);
  if (v114)
  {
    v57 = 0;
    v58 = v116 + 40;
    v59 = v43 + 40;
    v60 = MEMORY[0x277D84F90];
    while (v57 < *(v43 + 2))
    {
      v61 = *(v59 - 1);
      v62 = *v59;
      v119 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852378, &qword_20E00B250);
      result = swift_initStackObject();
      *(result + 16) = xmmword_20E00E010;
      *(result + 32) = v61;
      *(result + 40) = v62;
      if (v57 >= *(v116 + 2))
      {
        goto LABEL_113;
      }

      v63 = v43;
      v64 = v58;
      v65 = *(v58 - 1);
      v66 = *v58;
      *(result + 48) = v65;
      *(result + 56) = v66;
      v67 = *(v60 + 16);
      v68 = v67 + 2;
      if (__OFADD__(v67, 2))
      {
        goto LABEL_114;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v69 = *(v60 + 24) >> 1, v69 < v68))
      {
        if (v67 <= v68)
        {
          v70 = v67 + 2;
        }

        else
        {
          v70 = v67;
        }

        result = sub_20DFFAE38(result, v70, 1, v60);
        v60 = result;
        v69 = *(result + 24) >> 1;
      }

      v43 = v63;
      if (v69 - *(v60 + 16) < 2)
      {
        goto LABEL_115;
      }

      swift_arrayInitWithCopy();

      v71 = *(v60 + 16);
      v72 = __OFADD__(v71, 2);
      v73 = v71 + 2;
      if (v72)
      {
        goto LABEL_116;
      }

      ++v57;
      *(v60 + 16) = v73;
      v58 = v64 + 2;
      v59 = v119 + 2;
      if (v114 == v57)
      {
        goto LABEL_75;
      }
    }

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
    goto LABEL_117;
  }

  v60 = MEMORY[0x277D84F90];
LABEL_75:

  v117 = *(v60 + 16);
  if (v117)
  {
    v74 = 0;
    v75 = 0;
    v76 = (v60 + 40);
    v77 = MEMORY[0x277D84F90];
    while (v75 < *(v60 + 16))
    {
      v120 = *(v76 - 1);
      v122 = *v76;
      swift_bridgeObjectRetain_n();

      result = sub_20E009394();
      v79 = result;
      v81 = v80;
      if (v74 + 5 * (v75 / 5))
      {
        if (!*(v77 + 16))
        {
          goto LABEL_119;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v82 = v77;
        if (result)
        {
          v83 = *(v77 + 16);
          if (!v83)
          {
            goto LABEL_120;
          }
        }

        else
        {
          result = sub_20DFFC5A8(v77);
          v82 = result;
          v83 = *(result + 16);
          if (!v83)
          {
            goto LABEL_120;
          }
        }

        v84 = v83 - 1;
        v85 = &v82[16 * v84];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        *(v82 + 2) = v84;
        v121 = v87;
        v123 = v86;
        MEMORY[0x20F32A4B0](v79, v81);

        v89 = *(v82 + 2);
        v88 = *(v82 + 3);
        if (v89 >= v88 >> 1)
        {
          v82 = sub_20DFFAE38((v88 > 1), v89 + 1, 1, v82);
        }

        *(v82 + 2) = v89 + 1;
        v78 = &v82[16 * v89];
        *(v78 + 4) = v121;
        *(v78 + 5) = v123;
        v77 = v82;
      }

      else
      {
        v90 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_20DFFAE38(0, *(v77 + 16) + 1, 1, v77);
        }

        v92 = *(v90 + 2);
        v91 = *(v90 + 3);
        if (v92 >= v91 >> 1)
        {
          v90 = sub_20DFFAE38((v91 > 1), v92 + 1, 1, v90);
        }

        *(v90 + 2) = v92 + 1;
        v93 = &v90[16 * v92];
        *(v93 + 4) = v79;
        *(v93 + 5) = v81;
        v77 = v90;
      }

      ++v75;
      --v74;
      v76 += 2;
      if (v117 == v75)
      {
        goto LABEL_94;
      }
    }

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

  v77 = MEMORY[0x277D84F90];
LABEL_94:

  v94 = *(v77 + 16);
  if (v94)
  {
    v95 = 0;
    v96 = v77 + 40;
    v97 = MEMORY[0x277D84F90];
LABEL_96:
    v98 = (v96 + 16 * v95);
    v99 = v95;
    while (v99 < *(v77 + 16))
    {
      v100 = *(v98 - 1);
      v101 = *v98;

      v102 = sub_20DFFA9C8();
      if (*(v102 + 16))
      {
        v103 = sub_20DFB85D0(v100, v101);
        if (v104)
        {
          v105 = (*(v102 + 56) + 16 * v103);
          v107 = *v105;
          v106 = v105[1];

          result = swift_isUniquelyReferenced_nonNull_native();
          v108 = v77;
          if ((result & 1) == 0)
          {
            result = sub_20DFFB11C(0, *(v97 + 16) + 1, 1, v97);
            v97 = result;
          }

          v110 = *(v97 + 16);
          v109 = *(v97 + 24);
          if (v110 >= v109 >> 1)
          {
            result = sub_20DFFB11C((v109 > 1), v110 + 1, 1, v97);
            v97 = result;
          }

          v95 = v99 + 1;
          *(v97 + 16) = v110 + 1;
          v111 = v97 + 16 * v110;
          *(v111 + 32) = v107;
          *(v111 + 40) = v106;
          v77 = v108;
          if (v94 - 1 != v99)
          {
            goto LABEL_96;
          }

          goto LABEL_108;
        }
      }

      ++v99;

      v98 += 2;
      if (v94 == v99)
      {
        goto LABEL_108;
      }
    }

    goto LABEL_118;
  }

  v97 = MEMORY[0x277D84F90];
LABEL_108:

  if ((v112 & 0x8000000000000000) == 0)
  {
    *(v97 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535A8, &qword_20E0135E8);
    sub_20DFC4DDC(&qword_27C8535B0, &qword_27C8535A8, &qword_20E0135E8);
    return sub_20E009384();
  }

LABEL_125:
  __break(1u);
  return result;
}

uint64_t sub_20DFFA158(uint64_t a1, unint64_t a2)
{
  result = sub_20E0092B4();
  if (result)
  {
    v6 = result;
    v7 = sub_20DFFC684(result, 0, &qword_27C8535E0, &qword_20E013708);

    v8 = sub_20DFFC5BC(&v39, v7 + 4, v6, a1, a2);

    if (v8 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = MEMORY[0x277D84F90];
LABEL_5:
  v9 = 0xE000000000000000;
  v39 = 0;
  v40 = 0xE000000000000000;
  v10 = v7[2];
  if (v10)
  {
    v43 = v2;
    v11 = 0;
    v12 = v7 + 5;
    while (v11 < v7[2])
    {
      v14 = *(v12 - 1);
      v13 = *v12;

      v15 = sub_20DFFA5C8();
      if (*(v15 + 16))
      {
        v16 = sub_20DFB8640(v14, v13);
        if (v17)
        {
          v18 = (*(v15 + 56) + 16 * v16);
          v19 = *v18;
          v20 = v18[1];

          MEMORY[0x20F32A4B0](v19, v20);
        }
      }

      ++v11;

      v12 += 2;
      if (v10 == v11)
      {
        v21 = v39;
        v9 = v40;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v21 = 0;
LABEL_14:

  if (0xCCCCCCCCCCCCCCCDLL * sub_20E0092B4() + 0x1999999999999999 > 0x3333333333333332)
  {

    sub_20DFFC700();
    swift_allocError();
    return swift_willThrow();
  }

  v22 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  v39 = v21;
  v40 = v9;
  v41 = 0;
  v42 = v22;

  result = sub_20E009304();
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    while (!__OFADD__(v25, 1))
    {
      MEMORY[0x20F32A4A0](result, v24);

      result = sub_20E009304();
      v24 = v26;
      ++v25;
      if (!v26)
      {
        goto LABEL_22;
      }
    }

LABEL_40:
    __break(1u);
    return result;
  }

LABEL_22:

  v39 = 0;
  v40 = 0xE000000000000000;
  v41 = 0;
  v42 = 0;

  v27 = sub_20E009304();
  if (v28)
  {
    v29 = -90.0;
    v30 = 90.0;
    do
    {
      v32 = (v29 + v30) * 0.5;
      if (v27 == 49 && v28 == 0xE100000000000000)
      {
      }

      else
      {
        v31 = sub_20E009984();

        if ((v31 & 1) == 0)
        {
          v30 = (v29 + v30) * 0.5;
          v32 = v29;
        }
      }

      v27 = sub_20E009304();
      v29 = v32;
    }

    while (v28);
  }

  v39 = 0;
  v40 = 0xE000000000000000;
  v41 = 0;
  v42 = 0;

  v33 = sub_20E009304();
  if (v34)
  {
    v35 = -180.0;
    v36 = 180.0;
    do
    {
      v38 = (v35 + v36) * 0.5;
      if (v33 == 49 && v34 == 0xE100000000000000)
      {
      }

      else
      {
        v37 = sub_20E009984();

        if ((v37 & 1) == 0)
        {
          v36 = (v35 + v36) * 0.5;
          v38 = v35;
        }
      }

      v33 = sub_20E009304();
      v35 = v38;
    }

    while (v34);
  }
}

uint64_t sub_20DFFA5C8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_20DFFA624();
    v2 = *(v0 + 16);
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_20DFFA624()
{
  v0 = sub_20E009304();
  if (!v1)
  {
    v5 = MEMORY[0x277D84F98];
LABEL_29:

    return v5;
  }

  v2 = v0;
  v3 = v1;
  v4 = 0;
  v5 = MEMORY[0x277D84F98];
  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    sub_20DFFC830();
    v11 = sub_20E009374();
    v13 = v12;
    v14 = sub_20E0092B4();
    if ((5 - v14 % 5) >= 5)
    {
      v15 = -(v14 % 5);
    }

    else
    {
      v15 = 5 - v14 % 5;
    }

    v40 = v10;
    if (v15)
    {
      v16 = sub_20E009454();
      *(v16 + 16) = v15;
      v17 = (v16 + 32);
      if (v15 < 4)
      {
        v18 = 0;
LABEL_16:
        v21 = v15 - v18;
        do
        {
          *v17 = 48;
          v17[1] = 0xE100000000000000;
          v17 += 2;
          --v21;
        }

        while (v21);
        goto LABEL_18;
      }

      v18 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      v17 += 2 * (v15 & 0xFFFFFFFFFFFFFFFCLL);
      v19 = (v16 + 64);
      v20 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        *(v19 - 2) = xmmword_20E0135D0;
        *(v19 - 1) = xmmword_20E0135D0;
        *v19 = xmmword_20E0135D0;
        v19[1] = xmmword_20E0135D0;
        v19 += 4;
        v20 -= 4;
      }

      while (v20);
      if (v15 != v18)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
    sub_20DFC4DDC(&qword_27C852F10, &qword_27C852460, &qword_20E00B2C0);
    v22 = sub_20E0091A4();
    v24 = v23;

    MEMORY[0x20F32A4B0](v11, v13);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_20DFB8640(v2, v3);
    v28 = v5[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_31;
    }

    v32 = v27;
    if (v5[3] < v31)
    {
      sub_20DFFBCC8(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_20DFB8640(v2, v3);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_33;
      }

LABEL_23:
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v38 = v26;
    sub_20DFFC41C();
    v26 = v38;
    if (v32)
    {
LABEL_3:
      v6 = v26;

      v7 = (v5[7] + 16 * v6);
      v8 = v7[1];
      *v7 = v22;
      v7[1] = v24;

      goto LABEL_4;
    }

LABEL_24:
    v5[(v26 >> 6) + 8] |= 1 << v26;
    v34 = (v5[6] + 16 * v26);
    *v34 = v2;
    v34[1] = v3;
    v35 = (v5[7] + 16 * v26);
    *v35 = v22;
    v35[1] = v24;

    v36 = v5[2];
    v30 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v30)
    {
      goto LABEL_32;
    }

    v5[2] = v37;
LABEL_4:
    v2 = sub_20E009304();
    v3 = v9;
    v4 = v40;
    if (!v9)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_20E0099D4();
  __break(1u);
  return result;
}

uint64_t sub_20DFFA9C8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_20DFFAA24();
    v2 = *(v0 + 24);
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_20DFFAA24()
{
  v0 = sub_20E009304();
  if (!v1)
  {
    v5 = MEMORY[0x277D84F98];
LABEL_29:

    return v5;
  }

  v2 = v0;
  v3 = v1;
  v4 = 0;
  v5 = MEMORY[0x277D84F98];
  while (!__OFADD__(v4, 1))
  {
    v41 = v4 + 1;
    sub_20DFFC830();
    v10 = sub_20E009374();
    v12 = v11;
    v13 = sub_20E0092B4();
    if ((5 - v13 % 5) >= 5)
    {
      v14 = -(v13 % 5);
    }

    else
    {
      v14 = 5 - v13 % 5;
    }

    v42 = v2;
    if (v14)
    {
      v15 = sub_20E009454();
      *(v15 + 16) = v14;
      v16 = (v15 + 32);
      if (v14 < 4)
      {
        v17 = 0;
LABEL_16:
        v20 = v14 - v17;
        do
        {
          *v16 = 48;
          v16[1] = 0xE100000000000000;
          v16 += 2;
          --v20;
        }

        while (v20);
        goto LABEL_18;
      }

      v17 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      v16 += 2 * (v14 & 0xFFFFFFFFFFFFFFFCLL);
      v18 = (v15 + 64);
      v19 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        *(v18 - 2) = xmmword_20E0135D0;
        *(v18 - 1) = xmmword_20E0135D0;
        *v18 = xmmword_20E0135D0;
        v18[1] = xmmword_20E0135D0;
        v18 += 4;
        v19 -= 4;
      }

      while (v19);
      if (v14 != v17)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
    sub_20DFC4DDC(&qword_27C852F10, &qword_27C852460, &qword_20E00B2C0);
    v21 = sub_20E0091A4();
    v23 = v22;

    MEMORY[0x20F32A4B0](v10, v12);

    v24 = v23;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_20DFB85D0(v21, v24);
    v28 = v5[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_31;
    }

    v32 = v27;
    if (v5[3] < v31)
    {
      sub_20DFFBA08(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_20DFB85D0(v21, v24);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_33;
      }

LABEL_23:
      v34 = v42;
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v39 = v26;
    sub_20DFFC2A4();
    v26 = v39;
    v34 = v42;
    if (v32)
    {
LABEL_3:
      v6 = v26;

      v7 = (v5[7] + 16 * v6);
      v8 = v7[1];
      *v7 = v34;
      v7[1] = v3;

      goto LABEL_4;
    }

LABEL_24:
    v5[(v26 >> 6) + 8] |= 1 << v26;
    v35 = (v5[6] + 16 * v26);
    *v35 = v21;
    v35[1] = v24;
    v36 = (v5[7] + 16 * v26);
    *v36 = v34;
    v36[1] = v3;

    v37 = v5[2];
    v30 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v30)
    {
      goto LABEL_32;
    }

    v5[2] = v38;
LABEL_4:
    v2 = sub_20E009304();
    v3 = v9;
    v4 = v41;
    if (!v9)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_20E0099D4();
  __break(1u);
  return result;
}

uint64_t Geohash.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t Geohash.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

char *sub_20DFFAE38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852378, &qword_20E00B250);
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

size_t sub_20DFFAF44(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535F8, &qword_20E013740);
  v10 = *(sub_20E0087E4() - 8);
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
  v15 = *(sub_20E0087E4() - 8);
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

char *sub_20DFFB11C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535E0, &qword_20E013708);
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

void *sub_20DFFB228(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535F0, &unk_20E013730);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521F8, &unk_20E00EBC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20DFFB35C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535C8, "2c");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_20DFFB490(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522C8, &qword_20E00B240);
  v40 = a2;
  result = sub_20E009824();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_20E009A34();
      sub_20E009194();
      result = sub_20E009A54();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_20DFFB750(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852590, &qword_20E00C118);
  v36 = a2;
  result = sub_20E009824();
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
        sub_20DF77A64(v25, v37);
      }

      else
      {
        sub_20DF6981C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_20E009A34();
      sub_20E009194();
      result = sub_20E009A54();
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
      result = sub_20DF77A64(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_20DFFBA08(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535E8, &unk_20E013710);
  v40 = a2;
  result = sub_20E009824();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_20E009A34();
      sub_20E009194();
      result = sub_20E009A54();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_20DFFBCC8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535D8, &qword_20E013700);
  v40 = a2;
  result = sub_20E009824();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_20E009A34();
      sub_20E009194();
      result = sub_20E009A54();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_20DFFBF88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522C8, &qword_20E00B240);
  v2 = *v0;
  v3 = sub_20E009814();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_20DFFC100()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852590, &qword_20E00C118);
  v2 = *v0;
  v3 = sub_20E009814();
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
        sub_20DF6981C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_20DF77A64(v25, (*(v4 + 56) + v22));
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

void *sub_20DFFC2A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535E8, &unk_20E013710);
  v2 = *v0;
  v3 = sub_20E009814();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_20DFFC41C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535D8, &qword_20E013700);
  v2 = *v0;
  v3 = sub_20E009814();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_20DFFC5BC(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_20E009304();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_20DFFC684(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

unint64_t sub_20DFFC700()
{
  result = qword_27C8535B8;
  if (!qword_27C8535B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8535B8);
  }

  return result;
}

unint64_t sub_20DFFC758()
{
  result = qword_27C8535C0;
  if (!qword_27C8535C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8535C0);
  }

  return result;
}

unint64_t sub_20DFFC830()
{
  result = qword_27C8535D0;
  if (!qword_27C8535D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8535D0);
  }

  return result;
}

uint64_t sub_20DFFC884(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_20E0092C4();

    return sub_20E0093A4();
  }

  return result;
}

uint64_t sub_20DFFC920@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v64 = a1;
  v5 = sub_20E008A44();
  v6 = *(v5 - 1);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v62 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v61 = &v59 - v11;
  if (qword_2811230E0 != -1)
  {
LABEL_19:
    swift_once();
  }

  v12 = sub_20E009094();
  v63 = __swift_project_value_buffer(v12, qword_281124A00);
  v13 = sub_20E009074();
  v14 = sub_20E009524();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_20DF62000, v13, v14, "Trying to locate geohash file in geohash-2 folder.", v15, 2u);
    MEMORY[0x20F32B3A0](v15, -1, -1);
  }

  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  v17 = sub_20DFF96EC(8, a2, a3);
  v19 = v18;
  swift_setDeallocating();
  v20 = *(inited + 16);

  v21 = *(inited + 24);

  swift_bridgeObjectRetain_n();
  v22 = sub_20DFFC884(2);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = MEMORY[0x20F32A440](v22, v24, v26, v28);
  v31 = v30;

  v32 = sub_20E0092B4();

  if (v32 < 2)
  {
LABEL_11:

    v46 = sub_20E009074();
    v47 = sub_20E009544();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v65[0] = v49;
      *v48 = 136315138;
      v50 = sub_20DF74468(v29, v31, v65);

      *(v48 + 4) = v50;
      _os_log_impl(&dword_20DF62000, v46, v47, "Unable to locate matching geohash in geohash-2 Folder for : %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x20F32B3A0](v49, -1, -1);
      MEMORY[0x20F32B3A0](v48, -1, -1);
    }

    else
    {
    }

    v51 = sub_20E008AF4();
    return (*(*(v51 - 8) + 56))(v64, 1, 1, v51);
  }

  else
  {
    v59 = v6;
    v60 = v5;
    while (1)
    {
      if (qword_281123098 != -1)
      {
        swift_once();
      }

      v65[0] = qword_2811249C0;
      v65[1] = *algn_2811249C8;

      MEMORY[0x20F32A4B0](v29, v31);
      MEMORY[0x20F32A4B0](47, 0xE100000000000000);
      MEMORY[0x20F32A4B0](v17, v19);
      MEMORY[0x20F32A4B0](0x6E6F736A2ELL, 0xE500000000000000);
      v33 = [objc_opt_self() defaultManager];
      v5 = sub_20E0091C4();
      v6 = [v33 fileExistsAtPath_];

      if (v6)
      {
        break;
      }

      v34 = sub_20E0092B4();
      v35 = __OFSUB__(v34, 1);
      v36 = v34 - 1;
      if (v35)
      {
        __break(1u);
        goto LABEL_19;
      }

      v37 = sub_20DFFC884(v36);
      v39 = v38;
      v41 = v40;
      v43 = v42;

      v17 = MEMORY[0x20F32A440](v37, v39, v41, v43);
      v19 = v44;

      v45 = sub_20E0092B4();

      if (v45 <= 1)
      {
        goto LABEL_11;
      }
    }

    v53 = sub_20E009074();
    v54 = sub_20E009554();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_20DF62000, v53, v54, "Located geohash file in geohash-2 folder.", v55, 2u);
      MEMORY[0x20F32B3A0](v55, -1, -1);
    }

    v56 = sub_20E008AF4();
    v57 = *(*(v56 - 8) + 56);
    v57(v61, 1, 1, v56);
    (v59[13])(v62, *MEMORY[0x277CC91D8], v60);
    v58 = v64;
    sub_20E008AD4();
    return (v57)(v58, 0, 1, v56);
  }
}

id sub_20DFFCF8C()
{
  v32 = *MEMORY[0x277D85DE8];
  v31 = 1;
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_20E0091C4();
  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v31];

  if (v2)
  {
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v3 = sub_20E009094();
    __swift_project_value_buffer(v3, qword_281124A00);
    v4 = sub_20E009074();
    v5 = sub_20E009544();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20DF62000, v4, v5, "Path exists", v6, 2u);
      MEMORY[0x20F32B3A0](v6, -1, -1);
    }

    v7 = sub_20E009074();
    v8 = sub_20E009544();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20DF62000, v7, v8, "Deleting existing file", v9, 2u);
      MEMORY[0x20F32B3A0](v9, -1, -1);
    }

    v10 = sub_20E0091C4();
    v30 = 0;
    v11 = [v0 removeItemAtPath:v10 error:&v30];

    if (v11)
    {
      v12 = v30;
    }

    else
    {
      v13 = v30;
      v14 = sub_20E008A34();

      swift_willThrow();
    }
  }

  v15 = sub_20E0091C4();
  v30 = 0;
  v16 = [v0 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v30];

  if (v16)
  {
    v17 = v30;
  }

  else
  {
    v18 = v30;
    v19 = sub_20E008A34();

    swift_willThrow();
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v20 = sub_20E009094();
    __swift_project_value_buffer(v20, qword_281124A00);
    v21 = v19;
    v22 = sub_20E009074();
    v23 = sub_20E009544();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v19;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_20DF62000, v22, v23, "Unable to create GeoHash Directory! %@", v24, 0xCu);
      sub_20DF66E28(v25, &qword_27C8521E0, &unk_20E011080);
      MEMORY[0x20F32B3A0](v25, -1, -1);
      MEMORY[0x20F32B3A0](v24, -1, -1);
    }

    else
    {
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t sub_20DFFD394()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853600, &qword_20E013748);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v24 - v2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853608, &qword_20E013750);
  v28 = *(v26 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853610, &qword_20E013758);
  v25 = *(v7 - 8);
  v8 = v25;
  v9 = *(v25 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853618, &qword_20E013760);
  sub_20E008E84();
  sub_20E0093A4();
  sub_20DFFD850();
  v27 = v14;
  sub_20E008E74();
  sub_20E008E94();
  v15 = *(v8 + 8);
  v15(v12, v7);

  v16 = v26;
  if ((*(v28 + 48))(v3, 1, v26) == 1)
  {
    sub_20DF66E28(v3, &qword_27C853600, &qword_20E013748);
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v17 = sub_20E009094();
    __swift_project_value_buffer(v17, qword_281124A00);
    v18 = sub_20E009074();
    v19 = sub_20E009544();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20DF62000, v18, v19, "No Matching file name found in Geo Hash", v20, 2u);
      MEMORY[0x20F32B3A0](v20, -1, -1);
    }

    v15(v27, v7);
    return 0;
  }

  else
  {
    v22 = v28;
    (*(v28 + 32))(v6, v3, v16);
    swift_getKeyPath();
    sub_20E008EA4();

    v23 = MEMORY[0x20F32A440](v29, v30, v31, v32);

    (*(v22 + 8))(v6, v16);
    v15(v27, v7);
    return v23;
  }
}

unint64_t sub_20DFFD850()
{
  result = qword_27C853620;
  if (!qword_27C853620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C853610, &qword_20E013758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853620);
  }

  return result;
}

char *sub_20DFFD8B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v14 = *(MEMORY[0x277D84F90] + 16);
LABEL_9:
    v15 = sub_20E009284();

    return v15;
  }

  v16 = MEMORY[0x277D84F90];
  result = sub_20DF749CC(0, v2, 0);
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = a1 + 32;
    do
    {
      v9 = *(v8 + v7);
      v10 = *(a2 + 32 + v7 % v6);
      v12 = *(v16 + 16);
      v11 = *(v16 + 24);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_20DF749CC((v11 > 1), v13, 1);
        v13 = v12 + 1;
      }

      ++v7;
      *(v16 + 16) = v13;
      *(v16 + v12 + 32) = v10 ^ v9;
    }

    while (v2 != v7);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t NetworkError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_20E008E14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NetworkError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DFECA28(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x7270654420495041;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v14 = *v10;
      v21 = 0xD00000000000003ELL;
      v22 = 0x800000020E017E30;
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v16 = "LocalizedDescription ";
          v15 = 0xD000000000000027;
        }

        else
        {
          v16 = "trying to process the request.";
          v15 = 0xD000000000000024;
        }
      }

      else if (v14)
      {
        v16 = "e received from server.";
        v15 = 0xD000000000000032;
      }

      else
      {
        v15 = 0xD00000000000002BLL;
        v16 = "ponse from server.";
      }

      v19 = 0;
      v20 = 0xE000000000000000;
      sub_20E009714();

      v19 = 0xD000000000000015;
      v20 = 0x800000020E017EA0;
      MEMORY[0x20F32A4B0](v15, v16 | 0x8000000000000000);

      MEMORY[0x20F32A4B0](v19, v20);

      goto LABEL_27;
    case 2:
      v17 = *v10;
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_20E009714();
      MEMORY[0x20F32A4B0](0xD000000000000035, 0x800000020E017DF0);
      v19 = v17;
      v18 = sub_20E009964();
      MEMORY[0x20F32A4B0](v18);

      MEMORY[0x20F32A4B0](46, 0xE100000000000000);
LABEL_27:
      result = v21;
      break;
    case 3:
      result = 0xD00000000000002ELL;
      break;
    case 4:
    case 8:
      result = 0xD000000000000038;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD000000000000024;
      break;
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0xD000000000000033;
      break;
    case 12:
    case 19:
      result = 0xD00000000000003ALL;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0x6E49206E656B6F54;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0xD00000000000004FLL;
      break;
    case 18:
      return result;
    default:
      (*(v3 + 32))(v6, v10, v2);
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_20E009714();
      MEMORY[0x20F32A4B0](0xD000000000000023, 0x800000020E017F90);
      sub_20E0097E4();
      MEMORY[0x20F32A4B0](46, 0xE100000000000000);
      v13 = v21;
      (*(v3 + 8))(v6, v2);
      result = v13;
      break;
  }

  return result;
}

unint64_t NetworkInternalError.errorDescription.getter()
{
  v1 = 0xD000000000000027;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000024;
  }

  v2 = 0xD000000000000032;
  if (!*v0)
  {
    v2 = 0xD00000000000002BLL;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

unint64_t sub_20DFFDF98()
{
  v1 = 0xD000000000000027;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000024;
  }

  v2 = 0xD000000000000032;
  if (!*v0)
  {
    v2 = 0xD00000000000002BLL;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_20DFFE050(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_20DFFE0B0(void *a1)
{
  v2 = sub_20E009764();
  v95 = *(v2 - 8);
  v3 = *(v95 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v89 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853650, &qword_20E013AC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v89 - v11;
  v13 = sub_20E009774();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v89 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = (&v89 - v22);
  v98[0] = a1;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  v25 = swift_dynamicCast();
  v26 = *(v14 + 56);
  if (v25)
  {
    v94 = v2;
    v26(v12, 0, 1, v13);
    (*(v14 + 32))(v23, v12, v13);
    v27 = *(v14 + 16);
    v28 = v23;
    v27(v21);
    v29 = (*(v14 + 88))(v21, v13);
    if (v29 == *MEMORY[0x277D84160])
    {
      (*(v14 + 96))(v21, v13);
      v30 = *v21;
      if (qword_2811230C8 != -1)
      {
        swift_once();
      }

      v31 = sub_20E009094();
      __swift_project_value_buffer(v31, qword_2811249D0);
      v32 = sub_20E009074();
      v33 = sub_20E009544();
      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_14;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v98[0] = v35;
      *v34 = 136315138;
      v36 = sub_20E009AC4();
      v38 = sub_20DF74468(v36, v37, v98);

      *(v34 + 4) = v38;
      v39 = "DecodingError.typeMismatch : %s";
LABEL_13:
      _os_log_impl(&dword_20DF62000, v32, v33, v39, v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x20F32B3A0](v35, -1, -1);
      MEMORY[0x20F32B3A0](v34, -1, -1);
LABEL_14:

      (*(v14 + 8))(v23, v13);
      v45 = v94;
      v46 = v95;
      v47 = &unk_27C853668;
      v48 = &unk_20E013AE0;
LABEL_15:
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
      (*(v46 + 8))(v21 + *(v49 + 48), v45);
      goto LABEL_16;
    }

    if (v29 == *MEMORY[0x277D84170])
    {
      (*(v14 + 96))(v21, v13);
      v40 = *v21;
      if (qword_2811230C8 != -1)
      {
        swift_once();
      }

      v41 = sub_20E009094();
      __swift_project_value_buffer(v41, qword_2811249D0);
      v32 = sub_20E009074();
      v33 = sub_20E009544();
      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_14;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v98[0] = v35;
      *v34 = 136315138;
      v42 = sub_20E009AC4();
      v44 = sub_20DF74468(v42, v43, v98);

      *(v34 + 4) = v44;
      v39 = "DecodingError.valueNotFound : %s";
      goto LABEL_13;
    }

    if (v29 == *MEMORY[0x277D84158])
    {
      (*(v14 + 96))(v21, v13);
      sub_20DFE4B08(v21, v98);
      if (qword_2811230C8 != -1)
      {
        swift_once();
      }

      v53 = sub_20E009094();
      __swift_project_value_buffer(v53, qword_2811249D0);
      sub_20DFFF450(v98, v97);
      v54 = sub_20E009074();
      v55 = sub_20E009544();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v96 = v57;
        *v56 = 136315138;
        v93 = v28;
        __swift_project_boxed_opaque_existential_1(v97, v97[3]);
        v58 = sub_20E009A94();
        v60 = v59;
        __swift_destroy_boxed_opaque_existential_0(v97);
        v61 = sub_20DF74468(v58, v60, &v96);

        *(v56 + 4) = v61;
        _os_log_impl(&dword_20DF62000, v54, v55, "DecodingError.keyNotFound : %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v57);
        MEMORY[0x20F32B3A0](v57, -1, -1);
        MEMORY[0x20F32B3A0](v56, -1, -1);

        __swift_destroy_boxed_opaque_existential_0(v98);
        (*(v14 + 8))(v93, v13);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v98);
        (*(v14 + 8))(v23, v13);
        __swift_destroy_boxed_opaque_existential_0(v97);
      }

      v45 = v94;
      v46 = v95;
      v47 = &unk_27C853660;
      v48 = &unk_20E013D70;
      goto LABEL_15;
    }

    if (v29 == *MEMORY[0x277D84168])
    {
      (*(v14 + 96))(v21, v13);
      v62 = v94;
      v63 = v95;
      (*(v95 + 32))(v8, v21, v94);
      if (qword_2811230C8 != -1)
      {
        swift_once();
      }

      v64 = sub_20E009094();
      __swift_project_value_buffer(v64, qword_2811249D0);
      (*(v63 + 16))(v6, v8, v62);
      v65 = sub_20E009074();
      v66 = sub_20E009544();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v91 = v67;
        v93 = swift_slowAlloc();
        v98[0] = v93;
        *v67 = 136315138;
        v92 = v66;
        v68 = sub_20E009744();
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853658, &unk_20E013AD0);
        v70 = v62;
        v90 = MEMORY[0x20F32A600](v68, v69);
        v72 = v71;

        v95 = *(v63 + 8);
        v73 = v6;
        v74 = v70;
        (v95)(v73, v70);
        v75 = sub_20DF74468(v90, v72, v98);

        v76 = v91;
        *(v91 + 1) = v75;
        v77 = v76;
        _os_log_impl(&dword_20DF62000, v65, v92, "DecodingError.dataCorrupted : %s", v76, 0xCu);
        v78 = v93;
        __swift_destroy_boxed_opaque_existential_0(v93);
        MEMORY[0x20F32B3A0](v78, -1, -1);
        MEMORY[0x20F32B3A0](v77, -1, -1);

        (v95)(v8, v74);
      }

      else
      {

        v88 = *(v63 + 8);
        v88(v6, v62);
        v88(v8, v62);
      }

      (*(v14 + 8))(v28, v13);
    }

    else
    {
      if (qword_2811230C8 != -1)
      {
        swift_once();
      }

      v79 = sub_20E009094();
      __swift_project_value_buffer(v79, qword_2811249D0);
      (v27)(v18, v23, v13);
      v80 = sub_20E009074();
      v81 = sub_20E009544();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v82 = 138412290;
        swift_allocError();
        v93 = v23;
        (v27)(v83, v18, v13);
        v84 = _swift_stdlib_bridgeErrorToNSError();
        v85 = *(v14 + 8);
        v85(v18, v13);
        *(v82 + 4) = v84;
        v86 = v95;
        *v95 = v84;
        _os_log_impl(&dword_20DF62000, v80, v81, "Uncaught DecodingError %@", v82, 0xCu);
        sub_20DF66E28(v86, &qword_27C8521E0, &unk_20E011080);
        MEMORY[0x20F32B3A0](v86, -1, -1);
        MEMORY[0x20F32B3A0](v82, -1, -1);

        v87 = v93;
      }

      else
      {

        v85 = *(v14 + 8);
        v85(v18, v13);
        v87 = v28;
      }

      v85(v87, v13);
      v85(v21, v13);
    }
  }

  else
  {
    v26(v12, 1, 1, v13);
    sub_20DF66E28(v12, &qword_27C853650, &qword_20E013AC8);
  }

LABEL_16:
  type metadata accessor for NetworkError();
  sub_20DFFFE34(&qword_281123200, type metadata accessor for NetworkError);
  v50 = swift_allocError();
  *v51 = 1;
  swift_storeEnumTagMultiPayload();
  return v50;
}

uint64_t _s19HomeUtilityServices12NetworkErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E008E14();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NetworkError();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853640, &qword_20E013AC0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - v21;
  v23 = *(v20 + 56);
  sub_20DFECA28(a1, &v30 - v21);
  sub_20DFECA28(a2, &v22[v23]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20DFECA28(v22, v15);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_33;
      }

      v24 = *v15 == v22[v23];
      goto LABEL_26;
    case 2u:
      sub_20DFECA28(v22, v12);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_33;
      }

      v24 = *v12 == *&v22[v23];
LABEL_26:
      v25 = v24;
      sub_20DFB2F60(v22);
      result = v25;
      break;
    case 3u:
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 4u:
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 7u:
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 8u:
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        goto LABEL_31;
      }

      goto LABEL_33;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_33;
      }

LABEL_31:
      sub_20DFB2F60(v22);
      result = 1;
      break;
    default:
      sub_20DFECA28(v22, v17);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v31 + 8))(v17, v4);
LABEL_33:
        sub_20DF66E28(v22, &qword_27C853640, &qword_20E013AC0);
        result = 0;
      }

      else
      {
        v27 = v31;
        (*(v31 + 32))(v7, &v22[v23], v4);
        sub_20DFFFE34(&qword_27C853648, MEMORY[0x277CC9AC8]);
        sub_20E0093B4();
        sub_20E0093B4();
        v28 = *(v27 + 8);
        v28(v7, v4);
        v29 = v33 == v32;
        v28(v17, v4);
        sub_20DFB2F60(v22);
        result = v29;
      }

      break;
  }

  return result;
}

uint64_t type metadata accessor for NetworkError()
{
  result = qword_2811231F0;
  if (!qword_2811231F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20DFFF268()
{
  result = qword_27C853628;
  if (!qword_27C853628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853628);
  }

  return result;
}

unint64_t sub_20DFFF2C0()
{
  result = qword_27C853630;
  if (!qword_27C853630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853630);
  }

  return result;
}

unint64_t sub_20DFFF318()
{
  result = qword_27C853638;
  if (!qword_27C853638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853638);
  }

  return result;
}

uint64_t sub_20DFFF3BC()
{
  result = sub_20E008E14();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20DFFF450(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_20DFFF4B4(void *a1)
{
  v2 = sub_20E008E14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853670, &qword_20E013AE8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v55 - v12;
  v14 = sub_20E008E24();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  v62 = a1;
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  v23 = swift_dynamicCast();
  v24 = *(v15 + 56);
  if (v23)
  {
    v58 = v19;
    v24(v13, 0, 1, v14);
    v60 = v15;
    (*(v15 + 32))(v21, v13, v14);
    v25 = sub_20DFFFE34(&qword_27C853678, MEMORY[0x277CC9AE8]);
    sub_20E008A14();
    sub_20E008DF4();
    sub_20DFFFE34(&qword_27C853648, MEMORY[0x277CC9AC8]);
    sub_20E0093B4();
    sub_20E0093B4();
    v26 = *(v3 + 8);
    v26(v7, v2);
    v26(v9, v2);
    if (v62 == v61)
    {
      if (qword_2811230C8 != -1)
      {
        swift_once();
      }

      v27 = sub_20E009094();
      __swift_project_value_buffer(v27, qword_2811249D0);
      v28 = sub_20E009074();
      v29 = sub_20E009544();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_20DF62000, v28, v29, "No Internet connection detected. Check your network connection.", v30, 2u);
        MEMORY[0x20F32B3A0](v30, -1, -1);
      }

      type metadata accessor for NetworkError();
      sub_20DFFFE34(&qword_281123200, type metadata accessor for NetworkError);
      v31 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      (*(v60 + 8))(v21, v14);
    }

    else
    {
      v57 = v25;
      v59 = v21;
      sub_20E008A14();
      sub_20E008DE4();
      sub_20E0093B4();
      sub_20E0093B4();
      v26(v7, v2);
      v26(v9, v2);
      if (v62 == v61)
      {
        v37 = v60;
        if (qword_2811230C8 != -1)
        {
          swift_once();
        }

        v38 = sub_20E009094();
        __swift_project_value_buffer(v38, qword_2811249D0);
        v39 = sub_20E009074();
        v40 = sub_20E009544();
        v41 = os_log_type_enabled(v39, v40);
        v42 = v59;
        if (v41)
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_20DF62000, v39, v40, "Unable to find Host. if this DEV env, please check your VPN connection!", v43, 2u);
          MEMORY[0x20F32B3A0](v43, -1, -1);
        }

        type metadata accessor for NetworkError();
        sub_20DFFFE34(&qword_281123200, type metadata accessor for NetworkError);
        v31 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        (*(v37 + 8))(v42, v14);
      }

      else
      {
        v44 = v60;
        if (qword_2811230C8 != -1)
        {
          swift_once();
        }

        v45 = sub_20E009094();
        __swift_project_value_buffer(v45, qword_2811249D0);
        v46 = v58;
        (*(v44 + 16))(v58, v59, v14);
        v47 = sub_20E009074();
        v48 = sub_20E009544();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v56 = v47;
          v50 = v49;
          *v49 = 134217984;
          sub_20E008A14();
          v51 = sub_20E008E04();
          v26(v9, v2);
          v52 = *(v44 + 8);
          v52(v46, v14);
          *(v50 + 1) = v51;
          v53 = v56;
          _os_log_impl(&dword_20DF62000, v56, v48, "URLError error : %ld", v50, 0xCu);
          MEMORY[0x20F32B3A0](v50, -1, -1);
        }

        else
        {
          v52 = *(v44 + 8);
          v52(v46, v14);
          v53 = v47;
        }

        type metadata accessor for NetworkError();
        sub_20DFFFE34(&qword_281123200, type metadata accessor for NetworkError);
        v31 = swift_allocError();
        v54 = v59;
        sub_20E008A14();
        swift_storeEnumTagMultiPayload();
        v52(v54, v14);
      }
    }
  }

  else
  {
    v24(v13, 1, 1, v14);
    sub_20DF66E28(v13, &qword_27C853670, &qword_20E013AE8);
    if (qword_2811230C8 != -1)
    {
      swift_once();
    }

    v32 = sub_20E009094();
    __swift_project_value_buffer(v32, qword_2811249D0);
    v33 = sub_20E009074();
    v34 = sub_20E009544();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_20DF62000, v33, v34, "Unknown Error", v35, 2u);
      MEMORY[0x20F32B3A0](v35, -1, -1);
    }

    type metadata accessor for NetworkError();
    sub_20DFFFE34(&qword_281123200, type metadata accessor for NetworkError);
    v31 = swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  return v31;
}

uint64_t sub_20DFFFE34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20DFFFE98()
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = sub_20E008774();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_20E008764();
  v4 = v0[2];
  v5 = v0[4];
  v24 = v0[3];
  v25 = v5;
  v6 = *v0;
  v22 = v0[1];
  v23 = v4;
  *(&v21 + 1) = *(&v6 + 1);
  sub_20E003B14();
  v8 = sub_20E008754();
  v10 = v9;

  v11 = objc_opt_self();
  v12 = sub_20E008B64();
  *&v21 = 0;
  v13 = [v11 JSONObjectWithData:v12 options:4 error:&v21];

  v14 = v21;
  if (v13)
  {
    sub_20E009654();
    sub_20DF67FFC(v8, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = v14;
    v16 = sub_20E008A34();

    swift_willThrow();
    sub_20DF67FFC(v8, v10);

    v21 = 0u;
    v22 = 0u;
  }

  v19[0] = v21;
  v19[1] = v22;
  if (*(&v22 + 1))
  {
    sub_20DF77A64(v19, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521F8, &unk_20E00EBC0);
    if (swift_dynamicCast())
    {
      result = v20;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_20E0000C8()
{
  v2 = *v0;
  sub_20E009A34();
  sub_20E009184();
  return sub_20E009A54();
}

uint64_t sub_20E00012C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E003A6C();

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t sub_20E000178()
{
  v2 = *v0;
  sub_20E009A34();
  sub_20E009184();
  return sub_20E009A54();
}

unint64_t sub_20E0001D8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_20E003150(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_20E00020C(uint64_t a1)
{
  v2 = sub_20E003A6C();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_20E000248(uint64_t a1)
{
  v2 = sub_20E003A6C();

  return MEMORY[0x28211C018](a1, v2);
}

uint64_t sub_20E0002A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E003A6C();

  return MEMORY[0x28211C008](a1, a2, v4);
}

uint64_t sub_20E0002F4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853738, &qword_20E014010);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E003ED8();
  sub_20E009A84();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853728, &qword_20E014008);
  sub_20E003F2C(&qword_27C853740, sub_20E003B14);
  sub_20E009944();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_20E000498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73726F74636166 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20E009984();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20E000520(uint64_t a1)
{
  v2 = sub_20E003ED8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E00055C(uint64_t a1)
{
  v2 = sub_20E003ED8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_20E000598@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_20E003354(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_20E0005EC()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20E0006AC()
{
  *v0;
  *v0;
  *v0;
  sub_20E009194();
}

uint64_t sub_20E000758()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20E000814@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_20E003508();
  *a2 = result;
  return result;
}

void sub_20E000844(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xEB000000006E6F69;
  v5 = 0x74616E6974736564;
  if (*v1 != 2)
  {
    v5 = 0x736B6E696C5FLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x7954726F74636166;
    v2 = 0xEA00000000006570;
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

uint64_t sub_20E0008C0()
{
  v1 = 25705;
  v2 = 0x74616E6974736564;
  if (*v0 != 2)
  {
    v2 = 0x736B6E696C5FLL;
  }

  if (*v0)
  {
    v1 = 0x7954726F74636166;
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

uint64_t sub_20E000938@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20E003508();
  *a1 = result;
  return result;
}

uint64_t sub_20E000960(uint64_t a1)
{
  v2 = sub_20E003908();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E00099C(uint64_t a1)
{
  v2 = sub_20E003908();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E0009D8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8536C0, &qword_20E013D60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E003908();
  sub_20E009A84();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v20) = 0;
  sub_20E009914();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v20) = 1;
    sub_20E009914();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v20) = 2;
    sub_20E009914();
    v17 = *(v3 + 4);
    v20 = *(v3 + 3);
    v21 = v17;
    v19[15] = 3;
    sub_20E003A18();
    sub_20E009904();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_20E000BD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853710, &qword_20E013FF8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E003E84();
  sub_20E009A84();
  v16 = 0;
  sub_20E009914();
  if (!v5)
  {
    v15 = 1;
    sub_20E009914();
  }

  return (*(v8 + 8))(v11, v7);
}

__n128 sub_20E000D6C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_20E003554(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_20E000DD0()
{
  if (*v0)
  {
    result = 1684956531;
  }

  else
  {
    result = 0x796669726576;
  }

  *v0;
  return result;
}

uint64_t sub_20E000E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x796669726576 && a2 == 0xE600000000000000;
  if (v6 || (sub_20E009984() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684956531 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E009984();

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

uint64_t sub_20E000ED8(uint64_t a1)
{
  v2 = sub_20E003E84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E000F14(uint64_t a1)
{
  v2 = sub_20E003E84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E000F50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_20E003CA0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_20E000FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[50] = a4;
  v5[51] = a5;
  v5[48] = a2;
  v5[49] = a3;
  v5[47] = a1;
  v6 = sub_20E009764();
  v5[52] = v6;
  v7 = *(v6 - 8);
  v5[53] = v7;
  v8 = *(v7 + 64) + 15;
  v5[54] = swift_task_alloc();
  v9 = sub_20E009774();
  v5[55] = v9;
  v10 = *(v9 - 8);
  v5[56] = v10;
  v11 = *(v10 + 64) + 15;
  v5[57] = swift_task_alloc();
  v12 = sub_20E008CD4();
  v5[58] = v12;
  v13 = *(v12 - 8);
  v5[59] = v13;
  v14 = *(v13 + 64) + 15;
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v5[63] = swift_task_alloc();
  v16 = sub_20E008714();
  v5[64] = v16;
  v17 = *(v16 - 8);
  v5[65] = v17;
  v18 = *(v17 + 64) + 15;
  v5[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E0011CC, 0, 0);
}

uint64_t sub_20E0011CC()
{
  v18 = v0;
  if (os_variant_has_internal_diagnostics() && (v1 = sub_20E0091C4(), v2 = sub_20E0091C4(), v3 = CFPreferencesCopyAppValue(v1, v2), v2, v1, v3) && (v0[45] = v3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E98, &unk_20E00FE60), (swift_dynamicCast() & 1) != 0))
  {
    v4 = v0[46];
    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v5 = sub_20E009094();
    __swift_project_value_buffer(v5, qword_27C8626C8);

    v6 = sub_20E009074();
    v7 = sub_20E009554();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315138;
      v10 = sub_20E009174();
      v12 = sub_20DF74468(v10, v11, &v17);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_20DF62000, v6, v7, "Overriding Account Lookup fields with: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F32B3A0](v9, -1, -1);
      MEMORY[0x20F32B3A0](v8, -1, -1);
    }
  }

  else
  {
    v4 = v0[48];
  }

  v0[67] = v4;
  v13 = swift_task_alloc();
  v0[68] = v13;
  *v13 = v0;
  v13[1] = sub_20E001474;
  v14 = v0[63];
  v15 = v0[47];

  return sub_20E0063AC(v14, v15, v4);
}

uint64_t sub_20E001474()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 536);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20E00158C, 0, 0);
}

uint64_t sub_20E00158C()
{
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_20DF8B6B4(v3);
    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626C8);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to create request URL for TAF Authorization.", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v9 = v0[66];
    v11 = v0[62];
    v10 = v0[63];
    v13 = v0[60];
    v12 = v0[61];
    v14 = v0[57];
    v15 = v0[54];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[62];
    (*(v1 + 32))(v0[66], v3, v2);
    sub_20DFDF8DC(0xD00000000000001ALL, 0x800000020E018060, 0xD000000000000021, 0x800000020E018080);
    sub_20E008CC4();
    v19 = *(MEMORY[0x277CC9D18] + 4);
    v20 = swift_task_alloc();
    v0[69] = v20;
    *v20 = v0;
    v20[1] = sub_20E001864;
    v21 = v0[66];
    v22 = v0[49];

    return MEMORY[0x28211ECF8](v21, 0);
  }
}

uint64_t sub_20E001864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 552);
  v9 = *v4;
  v5[70] = a1;
  v5[71] = a2;
  v5[72] = a3;
  v5[73] = v3;

  if (v3)
  {
    v7 = sub_20E002FCC;
  }

  else
  {
    v7 = sub_20E001984;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20E001984()
{
  v203 = v0;
  v1 = v0[66];
  v3 = v0[61];
  v2 = v0[62];
  v4 = v0[59];
  v5 = v0[60];
  v6 = v0[58];
  v7 = v0[51];
  v8 = (v0[47] + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v197 = v8[1];
  v198 = *v8;

  v9 = sub_20DFE0F98();
  v11 = v10;
  (*(v4 + 16))(v3, v2, v6);

  sub_20E008C94();
  sub_20E008BB4();
  v13 = v12;
  v14 = *(v4 + 8);
  v14(v5, v6);
  v14(v3, v6);
  v15 = v13 * 1000.0;
  if (COERCE__INT64(fabs(v13 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_97;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v196 = v14;
  v0 = v201;
  v16 = *(v201 + 576);
  v18 = *(v201 + 400);
  v17 = *(v201 + 408);
  *(v201 + 176) = v198;
  *(v201 + 184) = v197;
  *(v201 + 192) = v9;
  *(v201 + 200) = v11;
  *(v201 + 208) = v18;
  *(v201 + 216) = v17;
  *(v201 + 224) = 0;
  *(v201 + 232) = v15;
  sub_20E004C78();
  sub_20DFEC91C(v201 + 176);
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    if (qword_27C852070 == -1)
    {
LABEL_15:
      v37 = sub_20E009094();
      __swift_project_value_buffer(v37, qword_27C8626B0);
      v38 = sub_20E009074();
      v39 = sub_20E009544();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_20DF62000, v38, v39, "Unable to process Authorization response from Utility.", v40, 2u);
        MEMORY[0x20F32B3A0](v40, -1, -1);
      }

      v30 = v0[72];
      v41 = v0[71];
      v42 = v0[70];
      v33 = v0[62];
      v34 = v0[58];

      type metadata accessor for NetworkError();
      sub_20DF960FC();
      v35 = swift_allocError();
      *v43 = 2;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_20DF67FFC(v42, v41);
      goto LABEL_66;
    }

LABEL_99:
    swift_once();
    goto LABEL_15;
  }

  v20 = v19;
  v21 = *(v201 + 528);
  v22 = *(v201 + 496);
  v23 = *(v201 + 392);
  v24 = *(v201 + 576);
  sub_20DFDFFF8(0xD00000000000001ALL, 0x800000020E0180B0, [v20 statusCode], &unk_28252DEC0);
  sub_20DFC6D90(v21, [v20 statusCode], v198, v197, v22, v23);
  v25 = [v20 statusCode];
  if (v25 > 408)
  {
    if (v25 > 428)
    {
      if (v25 == 429)
      {
        if (qword_27C852078 != -1)
        {
          swift_once();
        }

        v96 = sub_20E009094();
        __swift_project_value_buffer(v96, qword_27C8626C8);
        v97 = sub_20E009074();
        v98 = sub_20E009544();
        v0 = v201;
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          *v99 = 0;
          _os_log_impl(&dword_20DF62000, v97, v98, "Too Many Request | User requested to authorize multiple times from the same account.", v99, 2u);
          MEMORY[0x20F32B3A0](v99, -1, -1);
        }

        v30 = *(v201 + 576);
        v31 = *(v201 + 568);
        v32 = *(v201 + 560);
        v33 = *(v201 + 496);
        v34 = *(v201 + 464);

        sub_20DFEC8C8();
        v35 = swift_allocError();
        v49 = 5;
      }

      else
      {
        if (v25 != 500)
        {
          goto LABEL_73;
        }

        if (qword_27C852078 != -1)
        {
          swift_once();
        }

        v54 = sub_20E009094();
        __swift_project_value_buffer(v54, qword_27C8626C8);
        v55 = sub_20E009074();
        v56 = sub_20E009544();
        v0 = v201;
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_20DF62000, v55, v56, "Internal Server Error", v57, 2u);
          MEMORY[0x20F32B3A0](v57, -1, -1);
        }

        v30 = *(v201 + 576);
        v31 = *(v201 + 568);
        v32 = *(v201 + 560);
        v33 = *(v201 + 496);
        v34 = *(v201 + 464);

        sub_20DFEC8C8();
        v35 = swift_allocError();
        v49 = 6;
      }
    }

    else if (v25 == 409)
    {
      if (qword_27C852078 != -1)
      {
        swift_once();
      }

      v88 = sub_20E009094();
      __swift_project_value_buffer(v88, qword_27C8626C8);
      v89 = sub_20E009074();
      v90 = sub_20E009544();
      v0 = v201;
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_20DF62000, v89, v90, "User Conflict | User must authenticate using OAuth.", v91, 2u);
        MEMORY[0x20F32B3A0](v91, -1, -1);
      }

      v30 = *(v201 + 576);
      v31 = *(v201 + 568);
      v32 = *(v201 + 560);
      v33 = *(v201 + 496);
      v34 = *(v201 + 464);

      sub_20DFEC8C8();
      v35 = swift_allocError();
      v49 = 3;
    }

    else
    {
      if (v25 != 412)
      {
        goto LABEL_73;
      }

      if (qword_27C852078 != -1)
      {
        swift_once();
      }

      v44 = sub_20E009094();
      __swift_project_value_buffer(v44, qword_27C8626C8);
      v45 = sub_20E009074();
      v46 = sub_20E009544();
      v0 = v201;
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_20DF62000, v45, v46, "No Verification Factor | User does not have a verification factor on record.", v47, 2u);
        MEMORY[0x20F32B3A0](v47, -1, -1);
      }

      v30 = *(v201 + 576);
      v31 = *(v201 + 568);
      v32 = *(v201 + 560);
      v33 = *(v201 + 496);
      v34 = *(v201 + 464);

      sub_20DFEC8C8();
      v35 = swift_allocError();
      v49 = 4;
    }

LABEL_64:
    *v48 = v49;
LABEL_65:
    swift_willThrow();
    sub_20DF67FFC(v32, v31);

LABEL_66:
    v196(v33, v34);
LABEL_67:
    v0[40] = v35;
    v100 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
    v101 = swift_dynamicCast();
    v102 = v0[66];
    v103 = v0[65];
    v104 = v0[64];
    if (v101)
    {
      v105 = v0[41];
      sub_20DFEC8C8();
      swift_allocError();
      *v106 = v105;
    }

    else
    {
      sub_20DFFF4B4(v35);
    }

    swift_willThrow();

    (*(v103 + 8))(v102, v104);
    v107 = v0[66];
    v109 = v0[62];
    v108 = v0[63];
    v111 = v0[60];
    v110 = v0[61];
    v112 = v0[57];
    v113 = v0[54];

    v114 = v0[1];

    return v114();
  }

  if (v25 > 400)
  {
    if (v25 == 401)
    {
      if (qword_27C852078 != -1)
      {
        swift_once();
      }

      v92 = sub_20E009094();
      __swift_project_value_buffer(v92, qword_27C8626C8);
      v93 = sub_20E009074();
      v94 = sub_20E009544();
      v0 = v201;
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&dword_20DF62000, v93, v94, "UnAuthorized | PAT Validation Failed | Check request", v95, 2u);
        MEMORY[0x20F32B3A0](v95, -1, -1);
      }

      v30 = *(v201 + 576);
      v31 = *(v201 + 568);
      v32 = *(v201 + 560);
      v33 = *(v201 + 496);
      v34 = *(v201 + 464);

      sub_20DFEC8C8();
      v35 = swift_allocError();
      v49 = 1;
    }

    else
    {
      if (v25 != 404)
      {
        goto LABEL_73;
      }

      if (qword_27C852078 != -1)
      {
        swift_once();
      }

      v50 = sub_20E009094();
      __swift_project_value_buffer(v50, qword_27C8626C8);
      v51 = sub_20E009074();
      v52 = sub_20E009544();
      v0 = v201;
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_20DF62000, v51, v52, "Lookup Failed | User Account Not Found", v53, 2u);
        MEMORY[0x20F32B3A0](v53, -1, -1);
      }

      v30 = *(v201 + 576);
      v31 = *(v201 + 568);
      v32 = *(v201 + 560);
      v33 = *(v201 + 496);
      v34 = *(v201 + 464);

      sub_20DFEC8C8();
      v35 = swift_allocError();
      v49 = 2;
    }

    goto LABEL_64;
  }

  if (v25 != 300)
  {
    if (v25 == 400)
    {
      if (qword_27C852078 != -1)
      {
        swift_once();
      }

      v26 = sub_20E009094();
      __swift_project_value_buffer(v26, qword_27C8626C8);
      v27 = sub_20E009074();
      v28 = sub_20E009544();
      v0 = v201;
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_20DF62000, v27, v28, "BAD REQUEST | Check request", v29, 2u);
        MEMORY[0x20F32B3A0](v29, -1, -1);
      }

      v30 = *(v201 + 576);
      v31 = *(v201 + 568);
      v32 = *(v201 + 560);
      v33 = *(v201 + 496);
      v34 = *(v201 + 464);

      sub_20DFEC8C8();
      v35 = swift_allocError();
      *v36 = 0;
      goto LABEL_65;
    }

LABEL_73:
    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v0 = v201;
    v116 = *(v201 + 576);
    v117 = sub_20E009094();
    __swift_project_value_buffer(v117, qword_27C8626C8);
    v118 = v116;
    v119 = sub_20E009074();
    v120 = sub_20E009544();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = *(v201 + 576);
      v122 = swift_slowAlloc();
      *v122 = 134217984;
      *(v122 + 4) = [v20 statusCode];

      _os_log_impl(&dword_20DF62000, v119, v120, "Request failed : Status Code %ld", v122, 0xCu);
      MEMORY[0x20F32B3A0](v122, -1, -1);
      v123 = *(v201 + 576);
    }

    else
    {

      v123 = *(v201 + 576);
      v119 = v123;
    }

    v124 = *(v201 + 568);
    v125 = *(v201 + 560);
    v199 = *(v201 + 496);
    v126 = *(v201 + 464);

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    v35 = swift_allocError();
    *v127 = [v20 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v125, v124);

    v196(v199, v126);
    goto LABEL_67;
  }

  if (qword_27C852078 != -1)
  {
    swift_once();
  }

  v58 = sub_20E009094();
  __swift_project_value_buffer(v58, qword_27C8626C8);
  v59 = sub_20E009074();
  v60 = sub_20E009554();
  v0 = v201;
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_20DF62000, v59, v60, "Account Lookup Response received", v61, 2u);
    MEMORY[0x20F32B3A0](v61, -1, -1);
  }

  v62 = *(v201 + 584);
  v63 = *(v201 + 568);
  v64 = *(v201 + 560);

  v65 = sub_20E008744();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();
  sub_20E008734();
  sub_20E003AC0();
  sub_20E008724();
  if (v62)
  {
    v68 = v62;
    v69 = *(v201 + 456);
    v70 = *(v201 + 440);

    *(v201 + 344) = v68;
    v71 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
    if (swift_dynamicCast())
    {
      v72 = (*(*(v201 + 448) + 88))(*(v201 + 456), *(v201 + 440));
      v74 = *(v201 + 448);
      v73 = *(v201 + 456);
      v75 = *(v201 + 440);
      if (v72 == *MEMORY[0x277D84158])
      {
        v76 = *(v201 + 432);
        v77 = *(v201 + 424);
        v78 = *(v201 + 416);

        (*(v74 + 96))(v73, v75);
        v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853660, &qword_20E013D70) + 48);
        sub_20DFE4B08(v73, v201 + 240);
        (*(v77 + 32))(v76, v73 + v79, v78);
        v80 = *(v201 + 272);
        __swift_project_boxed_opaque_existential_1((v201 + 240), *(v201 + 264));
        v81 = sub_20E009A94();
        MEMORY[0x20F32A4B0](v81);

        sub_20E009714();

        v202[0] = 0x6E756F6620746F6ELL;
        v202[1] = 0xAE00209380E22064;
        v82 = sub_20E009754();
        MEMORY[0x20F32A4B0](v82);

        MEMORY[0x20F32A4B0](0x6E756F6620746F6ELL, 0xAE00209380E22064);

        v83 = sub_20E009074();
        v84 = sub_20E009544();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v202[0] = v86;
          *v85 = 136315138;
          v87 = sub_20DF74468(0xD00000000000001FLL, 0x800000020E0180D0, v202);

          *(v85 + 4) = v87;
          _os_log_impl(&dword_20DF62000, v83, v84, "%s", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v86);
          MEMORY[0x20F32B3A0](v86, -1, -1);
          MEMORY[0x20F32B3A0](v85, -1, -1);
        }

        else
        {
        }

        v188 = *(v201 + 576);
        v189 = *(v201 + 568);
        v190 = *(v201 + 560);
        v200 = *(v201 + 496);
        v191 = *(v201 + 464);
        v192 = *(v201 + 432);
        v193 = *(v201 + 424);
        v194 = *(v201 + 416);
        type metadata accessor for NetworkError();
        sub_20DF960FC();
        v35 = swift_allocError();
        *v195 = 1;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_20DF67FFC(v190, v189);

        v0 = v201;
        (*(v193 + 8))(v192, v194);
        v196(v200, v191);
        __swift_destroy_boxed_opaque_existential_0((v201 + 240));

        goto LABEL_67;
      }

      (*(v74 + 8))(*(v201 + 456), *(v201 + 440));
    }

    v151 = sub_20E009074();
    v152 = sub_20E009544();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      *v153 = 0;
      _os_log_impl(&dword_20DF62000, v151, v152, "Error while decoding response from server", v153, 2u);
      MEMORY[0x20F32B3A0](v153, -1, -1);
    }

    v154 = v68;
    v155 = sub_20E009074();
    v156 = sub_20E009544();

    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v202[0] = v158;
      *v157 = 136315138;
      swift_getErrorValue();
      v160 = *(v201 + 280);
      v159 = *(v201 + 288);
      v161 = *(v201 + 296);
      v162 = sub_20E0099E4();
      v164 = sub_20DF74468(v162, v163, v202);

      *(v157 + 4) = v164;
      _os_log_impl(&dword_20DF62000, v155, v156, "%s", v157, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v158);
      MEMORY[0x20F32B3A0](v158, -1, -1);
      MEMORY[0x20F32B3A0](v157, -1, -1);
    }

    v165 = *(v201 + 576);
    v166 = *(v201 + 568);
    v167 = *(v201 + 560);
    v168 = *(v201 + 496);
    v169 = *(v201 + 464);
    type metadata accessor for NetworkError();
    sub_20DF960FC();
    v35 = swift_allocError();
    *v170 = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v167, v166);

    v196(v168, v169);
    goto LABEL_67;
  }

  v128 = *(v201 + 336);
  v129 = *(v128 + 16);
  if (v129)
  {
    v202[0] = MEMORY[0x277D84F90];
    sub_20E0097B4();
    v130 = type metadata accessor for TAFVerificationFactor();
    v131 = v129 - 1;
    for (i = 32; ; i += 80)
    {
      *(v201 + 16) = *(v128 + i);
      v133 = *(v128 + i + 16);
      v134 = *(v128 + i + 32);
      v135 = *(v128 + i + 64);
      *(v201 + 64) = *(v128 + i + 48);
      *(v201 + 80) = v135;
      *(v201 + 32) = v133;
      *(v201 + 48) = v134;
      v136 = objc_allocWithZone(v130);
      v137 = &v136[OBJC_IVAR____TtC19HomeUtilityServices21TAFVerificationFactor__factor];
      *v137 = *(v201 + 16);
      v138 = *(v201 + 32);
      v139 = *(v201 + 48);
      v140 = *(v201 + 80);
      *(v137 + 3) = *(v201 + 64);
      *(v137 + 4) = v140;
      *(v137 + 1) = v138;
      *(v137 + 2) = v139;
      sub_20E0039B0(v201 + 16, v201 + 96);
      *(v201 + 304) = v136;
      *(v201 + 312) = v130;
      objc_msgSendSuper2((v201 + 304), sel_init);
      sub_20E009794();
      v141 = *(v202[0] + 16);
      sub_20E0097C4();
      sub_20E0097D4();
      sub_20E0097A4();
      if (!v131)
      {
        break;
      }

      --v131;
    }

    v0 = v201;
    v142 = *(v201 + 576);
    v143 = *(v201 + 568);
    v144 = *(v201 + 560);
    v145 = *(v201 + 528);
    v146 = *(v201 + 520);
    v147 = *(v201 + 512);
    v148 = *(v201 + 496);
    v149 = *(v201 + 464);

    sub_20DF67FFC(v144, v143);

    v196(v148, v149);
    (*(v146 + 8))(v145, v147);
    v150 = v202[0];
  }

  else
  {
    v171 = *(v201 + 576);
    v172 = *(v201 + 568);
    v173 = *(v201 + 560);
    v174 = *(v201 + 528);
    v175 = *(v201 + 520);
    v176 = *(v201 + 512);
    v177 = *(v201 + 496);
    v178 = *(v201 + 464);
    v179 = *(v201 + 336);

    sub_20DF67FFC(v173, v172);

    v196(v177, v178);
    (*(v175 + 8))(v174, v176);
    v150 = MEMORY[0x277D84F90];
  }

  v180 = v0[66];
  v182 = v0[62];
  v181 = v0[63];
  v184 = v0[60];
  v183 = v0[61];
  v185 = v0[57];
  v186 = v0[54];

  v187 = v0[1];

  return v187(v150);
}

uint64_t sub_20E002FCC()
{
  (*(v0[59] + 8))(v0[62], v0[58]);
  v1 = v0[73];
  v0[40] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  v3 = swift_dynamicCast();
  v4 = v0[66];
  v5 = v0[65];
  v6 = v0[64];
  if (v3)
  {
    v7 = v0[41];
    sub_20DFEC8C8();
    swift_allocError();
    *v8 = v7;
  }

  else
  {
    sub_20DFFF4B4(v1);
  }

  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  v9 = v0[66];
  v11 = v0[62];
  v10 = v0[63];
  v13 = v0[60];
  v12 = v0[61];
  v14 = v0[57];
  v15 = v0[54];

  v16 = v0[1];

  return v16();
}

unint64_t sub_20E003150(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_20E003164()
{
  result = qword_27C853680;
  if (!qword_27C853680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853680);
  }

  return result;
}

unint64_t sub_20E0031BC()
{
  result = qword_27C853688;
  if (!qword_27C853688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853688);
  }

  return result;
}

unint64_t sub_20E003214()
{
  result = qword_27C853690;
  if (!qword_27C853690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853690);
  }

  return result;
}

unint64_t sub_20E00326C()
{
  result = qword_27C853698;
  if (!qword_27C853698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853698);
  }

  return result;
}

unint64_t sub_20E0032C4()
{
  result = qword_27C8536A0;
  if (!qword_27C8536A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19HomeUtilityServices25TAFAuthorizationEndpointsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_20E003354(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853718, &qword_20E014000);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E003ED8();
  sub_20E009A74();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853728, &qword_20E014008);
    sub_20E003F2C(&qword_27C853730, sub_20DF75740);
    sub_20E0098C4();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

uint64_t sub_20E003508()
{
  v0 = sub_20E009844();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_20E003554@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8536A8, &qword_20E013D58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E003908();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = sub_20E009894();
  v32 = v12;
  LOBYTE(v38[0]) = 1;
  v13 = sub_20E009894();
  v31 = v14;
  v29 = v13;
  LOBYTE(v38[0]) = 2;
  v28 = sub_20E009894();
  v30 = v15;
  v41 = 3;
  sub_20E00395C();
  sub_20E009884();
  (*(v6 + 8))(v9, v5);
  v26 = *(&v39 + 1);
  v27 = v39;
  v24 = *(&v40 + 1);
  v25 = v40;
  *&v33 = v11;
  v16 = v32;
  *(&v33 + 1) = v32;
  v17 = v29;
  *&v34 = v29;
  v18 = v31;
  v19 = v28;
  *(&v34 + 1) = v31;
  *&v35 = v28;
  v20 = v30;
  *(&v35 + 1) = v30;
  v36 = v39;
  v37 = v40;
  sub_20E0039B0(&v33, v38);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v38[0] = v11;
  v38[1] = v16;
  v38[2] = v17;
  v38[3] = v18;
  v38[4] = v19;
  v38[5] = v20;
  v38[6] = v27;
  v38[7] = v26;
  v38[8] = v25;
  v38[9] = v24;
  result = sub_20E0039E8(v38);
  v22 = v36;
  a2[2] = v35;
  a2[3] = v22;
  a2[4] = v37;
  v23 = v34;
  *a2 = v33;
  a2[1] = v23;
  return result;
}

unint64_t sub_20E003908()
{
  result = qword_27C8536B0;
  if (!qword_27C8536B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536B0);
  }

  return result;
}

unint64_t sub_20E00395C()
{
  result = qword_27C8536B8;
  if (!qword_27C8536B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536B8);
  }

  return result;
}

unint64_t sub_20E003A18()
{
  result = qword_27C8536C8;
  if (!qword_27C8536C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536C8);
  }

  return result;
}

unint64_t sub_20E003A6C()
{
  result = qword_27C8536D0;
  if (!qword_27C8536D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536D0);
  }

  return result;
}

unint64_t sub_20E003AC0()
{
  result = qword_27C8536D8;
  if (!qword_27C8536D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536D8);
  }

  return result;
}

unint64_t sub_20E003B14()
{
  result = qword_27C8536E0;
  if (!qword_27C8536E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536E0);
  }

  return result;
}

unint64_t sub_20E003B9C()
{
  result = qword_27C8536E8;
  if (!qword_27C8536E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536E8);
  }

  return result;
}

unint64_t sub_20E003BF4()
{
  result = qword_27C8536F0;
  if (!qword_27C8536F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536F0);
  }

  return result;
}

unint64_t sub_20E003C4C()
{
  result = qword_27C8536F8;
  if (!qword_27C8536F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536F8);
  }

  return result;
}

uint64_t sub_20E003CA0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853700, &qword_20E013FF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E003E84();
  sub_20E009A74();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_20E009894();
    v11 = 1;
    sub_20E009894();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_20E003E84()
{
  result = qword_27C853708;
  if (!qword_27C853708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853708);
  }

  return result;
}

unint64_t sub_20E003ED8()
{
  result = qword_27C853720;
  if (!qword_27C853720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853720);
  }

  return result;
}

uint64_t sub_20E003F2C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C853728, &qword_20E014008);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20E003FC8()
{
  result = qword_27C853748;
  if (!qword_27C853748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853748);
  }

  return result;
}

unint64_t sub_20E004020()
{
  result = qword_27C853750;
  if (!qword_27C853750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853750);
  }

  return result;
}

unint64_t sub_20E004078()
{
  result = qword_27C853758;
  if (!qword_27C853758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853758);
  }

  return result;
}

unint64_t sub_20E0040D0()
{
  result = qword_27C853760;
  if (!qword_27C853760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853760);
  }

  return result;
}

unint64_t sub_20E004128()
{
  result = qword_27C853768;
  if (!qword_27C853768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853768);
  }

  return result;
}

unint64_t sub_20E004180()
{
  result = qword_27C853770;
  if (!qword_27C853770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853770);
  }

  return result;
}

uint64_t sub_20E004210()
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = sub_20E008774();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_20E008764();
  v4 = v0[1];
  v20 = *v0;
  v21 = v4;
  v5 = v0[3];
  v22 = v0[2];
  v23 = v5;
  sub_20E004F5C();
  v7 = sub_20E008754();
  v9 = v8;

  v10 = objc_opt_self();
  v11 = sub_20E008B64();
  *&v20 = 0;
  v12 = [v10 JSONObjectWithData:v11 options:4 error:&v20];

  v13 = v20;
  if (v12)
  {
    sub_20E009654();
    sub_20DF67FFC(v7, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v13;
    v15 = sub_20E008A34();

    swift_willThrow();
    sub_20DF67FFC(v7, v9);

    v20 = 0u;
    v21 = 0u;
  }

  v18[0] = v20;
  v18[1] = v21;
  if (*(&v21 + 1))
  {
    sub_20DF77A64(v18, &v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853788, &qword_20E014268);
    if (swift_dynamicCast())
    {
      result = v19;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_20E0043F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_20E004F10();
    v5 = sub_20E009154();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_20E004484(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853798, &qword_20E014328);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E005044();
  sub_20E009A84();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_20E009914();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v19[14] = 1;
    sub_20E009914();
    v15 = v3[4];
    v16 = v3[5];
    v19[13] = 2;
    sub_20E009914();
    v19[12] = *(v3 + 48);
    v19[11] = 3;
    sub_20E005098();
    sub_20E009944();
    v17 = v3[7];
    v19[10] = 4;
    sub_20E009934();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_20E0046A4()
{
  v1 = *v0;
  v2 = 0x497974696C697475;
  v3 = 0x74616C6572726F63;
  v4 = 1701869940;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461727564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4974736575716572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20E004744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20E0050EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20E00476C(uint64_t a1)
{
  v2 = sub_20E005044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E0047A8(uint64_t a1)
{
  v2 = sub_20E005044();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_20E0047E4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_20E0052B4(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_20E004840(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x65646F43646E6573;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 0x6F43796669726576;
  if (v3 == 1)
  {
    v5 = 0x65646F43646E6573;
  }

  else
  {
    v4 = 0xEA00000000006564;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x800000020E014A50;
  }

  v8 = 0xE800000000000000;
  if (*a2 != 1)
  {
    v2 = 0x6F43796669726576;
    v8 = 0xEA00000000006564;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x800000020E014A50;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20E009984();
  }

  return v11 & 1;
}

uint64_t sub_20E004944()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20E0049F0()
{
  *v0;
  *v0;
  sub_20E009194();
}

uint64_t sub_20E004A88()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20E004B30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_20E005854();
  *a2 = result;
  return result;
}

void sub_20E004B60(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x65646F43646E6573;
  if (v2 != 1)
  {
    v4 = 0x6F43796669726576;
    v3 = 0xEA00000000006564;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x800000020E014A50;
  }

  *a1 = v6;
  a1[1] = v3;
}

void sub_20E004C78()
{
  v0 = sub_20E004210();
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  if (qword_27C8520B8 != -1)
  {
    swift_once();
  }

  v2 = sub_20E009094();
  __swift_project_value_buffer(v2, qword_27C862788);

  v3 = sub_20E009074();
  v4 = sub_20E009554();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_20DF74468(0xD00000000000002ELL, 0x800000020E018110, v13);
    *(v5 + 12) = 2080;
    sub_20E004F10();
    v7 = sub_20E009174();
    v9 = sub_20DF74468(v7, v8, v13);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_20DF62000, v3, v4, "Sending analytics event for [%s]: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F32B3A0](v6, -1, -1);
    MEMORY[0x20F32B3A0](v5, -1, -1);
  }

  v10 = sub_20E0091C4();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v13[4] = sub_20E004EF0;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_20E0043F8;
  v13[3] = &block_descriptor_2;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20E004F10()
{
  result = qword_27C853778;
  if (!qword_27C853778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C853778);
  }

  return result;
}

unint64_t sub_20E004F5C()
{
  result = qword_27C853780;
  if (!qword_27C853780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853780);
  }

  return result;
}

unint64_t sub_20E004FC0(uint64_t a1)
{
  *(a1 + 8) = sub_20E004FF0();
  result = sub_20E004F5C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_20E004FF0()
{
  result = qword_27C853790;
  if (!qword_27C853790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853790);
  }

  return result;
}

unint64_t sub_20E005044()
{
  result = qword_27C8537A0;
  if (!qword_27C8537A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8537A0);
  }

  return result;
}

unint64_t sub_20E005098()
{
  result = qword_27C8537A8;
  if (!qword_27C8537A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8537A8);
  }

  return result;
}

uint64_t sub_20E0050EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x497974696C697475 && a2 == 0xE900000000000044;
  if (v4 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000044 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616C6572726F63 && a2 == 0xED000044496E6F69 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_20E0052B4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8537B0, &qword_20E014330);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E005044();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v33[0]) = 0;
  v11 = sub_20E009894();
  v28 = v12;
  LOBYTE(v33[0]) = 1;
  v13 = sub_20E009894();
  v27 = v14;
  v25 = v13;
  LOBYTE(v33[0]) = 2;
  v24 = sub_20E009894();
  v26 = v15;
  LOBYTE(v29) = 3;
  sub_20E0055F4();
  sub_20E0098C4();
  v36 = LOBYTE(v33[0]);
  v37 = 4;
  v16 = sub_20E0098B4();
  (*(v6 + 8))(v9, v5);
  v18 = v27;
  v17 = v28;
  *&v29 = v11;
  *(&v29 + 1) = v28;
  v19 = v25;
  *&v30 = v25;
  *(&v30 + 1) = v27;
  v20 = v26;
  *&v31 = v24;
  *(&v31 + 1) = v26;
  LOBYTE(v32) = v36;
  *(&v32 + 1) = v16;
  sub_20E005648(&v29, v33);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v33[0] = v11;
  v33[1] = v17;
  v33[2] = v19;
  v33[3] = v18;
  v33[4] = v24;
  v33[5] = v20;
  v34 = v36;
  v35 = v16;
  result = sub_20DFEC91C(v33);
  v22 = v30;
  *a2 = v29;
  a2[1] = v22;
  v23 = v32;
  a2[2] = v31;
  a2[3] = v23;
  return result;
}

unint64_t sub_20E0055F4()
{
  result = qword_27C8537B8;
  if (!qword_27C8537B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8537B8);
  }

  return result;
}

unint64_t sub_20E0056A4()
{
  result = qword_27C8537C0;
  if (!qword_27C8537C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8537C0);
  }

  return result;
}

unint64_t sub_20E0056FC()
{
  result = qword_27C8537C8;
  if (!qword_27C8537C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8537C8);
  }

  return result;
}

unint64_t sub_20E005754()
{
  result = qword_27C8537D0;
  if (!qword_27C8537D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8537D0);
  }

  return result;
}

unint64_t sub_20E0057AC()
{
  result = qword_27C8537D8;
  if (!qword_27C8537D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8537D8);
  }

  return result;
}

unint64_t sub_20E005800()
{
  result = qword_27C8537E0;
  if (!qword_27C8537E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8537E0);
  }

  return result;
}

uint64_t sub_20E005854()
{
  v0 = sub_20E009844();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_20E0058A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v46 = MEMORY[0x277D84F90];
  sub_20DF74A4C(0, v1, 0);
  v2 = v46;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = sub_20E009674();
  v7 = *(v3 + 36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522C8, &qword_20E00B240);
  v37 = v3;
  v9 = 0;
  v33 = v3 + 72;
  v34 = v1;
  v35 = v7;
  v36 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_28;
    }

    if (v7 != *(v3 + 36))
    {
      goto LABEL_29;
    }

    v39 = 1 << v6;
    v40 = v6 >> 6;
    v38 = v9;
    v41 = v6;
    v10 = (*(v3 + 48) + 16 * v6);
    v11 = (*(v3 + 56) + 16 * v6);
    v42 = *v10;
    v43 = v10[1];
    v44 = *v11;
    v45 = v11[1];
    v12 = sub_20E009834();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    result = sub_20DFB85D0(0x6D614E646C656966, 0xE900000000000065);
    if (v13)
    {
      goto LABEL_25;
    }

    *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v14 = (v12[6] + 16 * result);
    *v14 = 0x6D614E646C656966;
    v14[1] = 0xE900000000000065;
    v15 = (v12[7] + 16 * result);
    *v15 = v42;
    v15[1] = v43;
    v16 = v12[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_26;
    }

    v12[2] = v18;

    result = sub_20DFB85D0(0x65756C6176, 0xE500000000000000);
    if (v19)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      break;
    }

    *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v20 = (v12[6] + 16 * result);
    *v20 = 0x65756C6176;
    v20[1] = 0xE500000000000000;
    v21 = (v12[7] + 16 * result);
    *v21 = v44;
    v21[1] = v45;
    v22 = v12[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_26;
    }

    v12[2] = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852140, &qword_20E011050);
    swift_arrayDestroy();

    v25 = *(v46 + 16);
    v24 = *(v46 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_20DF74A4C((v24 > 1), v25 + 1, 1);
    }

    *(v46 + 16) = v25 + 1;
    *(v46 + 8 * v25 + 32) = v12;
    v3 = v37;
    v6 = 1 << *(v37 + 32);
    result = v41;
    if (v41 >= v6)
    {
      goto LABEL_30;
    }

    v4 = v36;
    v26 = *(v36 + 8 * v40);
    if ((v26 & v39) == 0)
    {
      goto LABEL_31;
    }

    LODWORD(v7) = v35;
    if (v35 != *(v37 + 36))
    {
      goto LABEL_32;
    }

    v27 = v26 & (-2 << (v41 & 0x3F));
    if (v27)
    {
      v6 = __clz(__rbit64(v27)) | v41 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v40 << 6;
      v29 = v40 + 1;
      v30 = (v33 + 8 * v40);
      while (v29 < (v6 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_20E00721C(v41, v35, 0);
          v6 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_20E00721C(v41, v35, 0);
    }

LABEL_4:
    v9 = v38 + 1;
    if (v38 + 1 == v34)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20E005CA0@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v46 - v6;
  v8 = sub_20E008714();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = *(v9 + 16);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12();
  v13 = sub_20DFE7E38();
  if (v13 == 1)
  {
    goto LABEL_4;
  }

  v14 = sub_20E009984();

  if (v14)
  {
    goto LABEL_6;
  }

  if (v13)
  {
    v15 = sub_20E009984();

    if ((v15 & 1) == 0)
    {
      if (qword_27C852078 != -1)
      {
        swift_once();
      }

      v37 = sub_20E009094();
      __swift_project_value_buffer(v37, qword_27C8626C8);
      v38 = sub_20E009074();
      v39 = sub_20E009554();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v49 = v41;
        *v40 = 136315138;
        v42 = 1953654115;
        if (v13 != 2)
        {
          v42 = 1685025392;
        }

        if (v13 == 1)
        {
          v43 = 7759204;
        }

        else
        {
          v43 = v42;
        }

        if (v13 == 1)
        {
          v44 = 0xE300000000000000;
        }

        else
        {
          v44 = 0xE400000000000000;
        }

        v45 = sub_20DF74468(v43, v44, &v49);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_20DF62000, v38, v39, "No HMAC Auth headers required in current env %s.", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x20F32B3A0](v41, -1, -1);
        MEMORY[0x20F32B3A0](v40, -1, -1);
      }

      v30 = v48;
      if ((a1 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else
  {
LABEL_4:
  }

LABEL_6:
  v47 = a1;
  if (qword_27C852078 != -1)
  {
    swift_once();
  }

  v16 = sub_20E009094();
  __swift_project_value_buffer(v16, qword_27C8626C8);
  v17 = sub_20E009074();
  v18 = sub_20E009554();
  if (os_log_type_enabled(v17, v18))
  {
    v46 = a2;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v49 = v20;
    *v19 = 136315138;
    v21 = 0xE300000000000000;
    v22 = 1953654115;
    if (v13 != 2)
    {
      v22 = 1685025392;
    }

    v23 = 7759204;
    if (!v13)
    {
      v23 = 0x6E7265746E496171;
      v21 = 0xEA00000000006C61;
    }

    if (v13 <= 1u)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    if (v13 <= 1u)
    {
      v25 = v21;
    }

    else
    {
      v25 = 0xE400000000000000;
    }

    v26 = sub_20DF74468(v24, v25, &v49);

    *(v19 + 4) = v26;
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x20F32B3A0](v20, -1, -1);
    MEMORY[0x20F32B3A0](v19, -1, -1);

    a2 = v46;
  }

  else
  {
  }

  v27 = sub_20E009074();
  v28 = sub_20E009554();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v48;
  if (v29)
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_20DF62000, v27, v28, "Adding HMAC headers.", v31, 2u);
    MEMORY[0x20F32B3A0](v31, -1, -1);
  }

  sub_20DFEE628(v7);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 8))(v30, v8);
    (*(v9 + 32))(v30, v7, v8);
    if ((v47 & 1) == 0)
    {
LABEL_29:
      (*(v9 + 32))(a2, v30, v8);
      v35 = 0;
      return (*(v9 + 56))(a2, v35, 1, v8);
    }

LABEL_28:
    sub_20E008704();
    goto LABEL_29;
  }

  sub_20DF66E28(v7, &qword_27C8520C8, &qword_20E010830);
  v32 = sub_20E009074();
  v33 = sub_20E009544();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_20DF62000, v32, v33, "Unable to sign with HMAC headers.", v34, 2u);
    MEMORY[0x20F32B3A0](v34, -1, -1);
  }

  (*(v9 + 8))(v30, v8);
  v35 = 1;
  return (*(v9 + 56))(a2, v35, 1, v8);
}

uint64_t sub_20E0063AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_20E008D04();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_20E008714();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = sub_20E008AF4();
  v3[13] = v11;
  v12 = *(v11 - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20E006598, 0, 0);
}

uint64_t sub_20E006598()
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = (v0[4] + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v2 = v1[15];
  v3 = v1[16];
  v4 = v1[17];
  v0[17] = v4;
  v5 = v1[18];
  v0[18] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852378, &qword_20E00B250);
  v6 = swift_allocObject();
  v0[19] = v6;
  *(v6 + 16) = xmmword_20E00AB50;
  v7 = v1[25];
  *(v6 + 32) = v1[24];
  *(v6 + 40) = v7;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    goto LABEL_8;
  }

  v9 = v0[13];
  v10 = v0[14];
  v11 = v0[12];
  sub_20E008AC4();
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v12 = v0[12];

    sub_20DF66E28(v12, &qword_27C8520D0, &qword_20E00AB70);
LABEL_8:
    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v13 = sub_20E009094();
    __swift_project_value_buffer(v13, qword_27C8626C8);
    v14 = sub_20E009074();
    v15 = sub_20E009544();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20DF62000, v14, v15, "Unable to generate TAF Authorization URL", v16, 2u);
      MEMORY[0x20F32B3A0](v16, -1, -1);
    }

    v17 = v0[9];
    v18 = v0[10];
    v19 = v0[3];

    (*(v18 + 56))(v19, 1, 1, v17);
LABEL_13:
    v21 = v0[15];
    v20 = v0[16];
    v23 = v0[11];
    v22 = v0[12];
    v24 = v0[8];

    v25 = v0[1];
    v26 = *MEMORY[0x277D85DE8];

    return v25();
  }

  (*(v0[14] + 32))(v0[16], v0[12], v0[13]);
  v28 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v28 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {

    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v31 = sub_20E009094();
    __swift_project_value_buffer(v31, qword_27C8626C8);
    v32 = sub_20E009074();
    v33 = sub_20E009544();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_20DF62000, v32, v33, "Unable to generate TAF Authorization URL | UtilityConfiguration contains empty ClientID", v34, 2u);
      MEMORY[0x20F32B3A0](v34, -1, -1);
    }

    v35 = v0[16];
    v36 = v0[13];
    v37 = v0[14];
    v38 = v0[9];
    v39 = v0[10];
    v40 = v0[3];

    (*(v37 + 8))(v35, v36);
    (*(v39 + 56))(v40, 1, 1, v38);
    goto LABEL_13;
  }

  v29 = swift_task_alloc();
  v0[20] = v29;
  *v29 = v0;
  v29[1] = sub_20E0069FC;
  v30 = *MEMORY[0x277D85DE8];

  return sub_20DFC1D5C(v6, 0);
}

uint64_t sub_20E0069FC(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *v3;
  v5 = *(*v3 + 160);
  v11 = *v3;
  v4[21] = a1;
  v4[22] = a2;
  v4[23] = v2;

  if (v2)
  {
    v6 = v4[19];

    v7 = sub_20E006FFC;
  }

  else
  {
    v7 = sub_20E006B5C;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20E006B5C()
{
  v47 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 184);
  v2 = *(v0 + 40);
  sub_20DFC4A54(*(v0 + 152));

  sub_20E0058A0(v2);
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E98, &unk_20E00FE60);
  v4 = sub_20E009414();

  *(v0 + 16) = 0;
  v5 = [v3 dataWithJSONObject:v4 options:0 error:v0 + 16];

  v6 = *(v0 + 16);
  if (v5)
  {
    v38 = *(v0 + 168);
    v39 = *(v0 + 176);
    v42 = *(v0 + 136);
    v43 = *(v0 + 144);
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v11 = *(v0 + 88);
    v12 = *(v0 + 64);
    v45 = *(v0 + 80);
    v46 = *(v0 + 72);
    v13 = *(v0 + 48);
    v14 = *(v0 + 56);
    v44 = *(v0 + 24);
    v15 = sub_20E008B84();
    v40 = v16;
    v41 = v15;

    (*(v10 + 16))(v7, v8, v9);
    sub_20E0086B4();
    sub_20E008CF4();
    sub_20E008CE4();
    (*(v14 + 8))(v12, v13);
    sub_20E009254();

    sub_20E0086D4();

    MEMORY[0x20F32A4B0](v38, v39);

    sub_20E0086D4();

    sub_20E0086D4();
    sub_20E008694();
    sub_20DF67FA8(v41, v40);
    sub_20E0086F4();
    sub_20E005CA0(1, v44);
    sub_20DF67FFC(v41, v40);
    (*(v45 + 8))(v11, v46);
    (*(v10 + 8))(v8, v9);
  }

  else
  {
    v17 = v6;
    v18 = *(v0 + 176);

    v19 = sub_20E008A34();

    swift_willThrow();
    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v20 = sub_20E009094();
    __swift_project_value_buffer(v20, qword_27C8626C8);
    v21 = sub_20E009074();
    v22 = sub_20E009544();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20DF62000, v21, v22, "Unable to encode TAF Authorization fields", v23, 2u);
      MEMORY[0x20F32B3A0](v23, -1, -1);
    }

    v24 = *(v0 + 128);
    v25 = *(v0 + 104);
    v26 = *(v0 + 112);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 24);

    (*(v26 + 8))(v24, v25);
    (*(v28 + 56))(v29, 1, 1, v27);
  }

  v31 = *(v0 + 120);
  v30 = *(v0 + 128);
  v33 = *(v0 + 88);
  v32 = *(v0 + 96);
  v34 = *(v0 + 64);

  v35 = *(v0 + 8);
  v36 = *MEMORY[0x277D85DE8];

  return v35();
}

uint64_t sub_20E006FFC()
{
  v19 = v0;
  v18[1] = *MEMORY[0x277D85DE8];
  if (qword_27C852078 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_27C8626C8);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_20DF74468(0xD000000000000045, 0x800000020E018160, v18);
    _os_log_impl(&dword_20DF62000, v2, v3, "Unable to generate Private Access Token. %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F32B3A0](v9, -1, -1);
    MEMORY[0x20F32B3A0](v8, -1, -1);
  }

  (*(v7 + 8))(v5, v6);
  (*(v0[10] + 56))(v0[3], 1, 1, v0[9]);
  v11 = v0[15];
  v10 = v0[16];
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[8];

  v15 = v0[1];
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

uint64_t sub_20E00721C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void static UtilityPeakPeriodsController.generateMockUtilityPeakPeriods(start:)(uint64_t *a1@<X8>)
{
  v91 = sub_20E008DB4();
  v90 = *(v91 - 8);
  v2 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v89 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20E008CD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v79 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v79 = &v79 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v79 - v15;
  if (qword_281123100 != -1)
  {
    swift_once();
  }

  v17 = sub_20E009094();
  __swift_project_value_buffer(v17, qword_281124A48);
  v18 = sub_20E009074();
  v19 = sub_20E009554();
  v20 = os_log_type_enabled(v18, v19);
  v80 = a1;
  if (v20)
  {
    v21 = v12;
    v22 = v5;
    v23 = v4;
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_20DF62000, v18, v19, "Generating Mock Data for Utility Peak", v24, 2u);
    v25 = v24;
    v4 = v23;
    v5 = v22;
    v12 = v21;
    a1 = v80;
    MEMORY[0x20F32B3A0](v25, -1, -1);
  }

  sub_20E008C24();
  v88 = sub_20E007C40();
  v27 = v26;
  v28 = *(v5 + 8);
  v85 = v5 + 8;
  v28(v16, v4);
  if (v27)
  {
    v29 = sub_20E009074();
    v30 = sub_20E009544();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_20DF62000, v29, v30, "Mock Service unable to calculate end date properly.", v31, 2u);
      MEMORY[0x20F32B3A0](v31, -1, -1);
    }

    a1[10] = 0;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }

  else
  {
    v92 = MEMORY[0x277D84F90];
    v32 = v89;
    sub_20E008D94();
    v33 = v79;
    sub_20E008D64();
    (*(v90 + 8))(v32, v91);
    sub_20E008C24();
    (*(v5 + 16))(v9, v33, v4);
    v34 = sub_20E008C44();
    v84 = v28;
    if (v34)
    {
      v82 = (v5 + 32);
      v81 = xmmword_20E00D800;
      v83 = v12;
      do
      {
        v35 = sub_20DFE30F8();
        v36 = sub_20E008C34();
        v37 = [v35 stringFromDate_];

        v91 = sub_20E0091D4();
        v90 = v38;

        sub_20E008C24();
        v39 = v84;
        v84(v9, v4);
        v40 = *v82;
        (*v82)(v9, v16, v4);
        v41 = v40;
        v42 = sub_20DFE30F8();
        v43 = sub_20E008C34();
        v44 = [v42 stringFromDate_];

        v89 = sub_20E0091D4();
        v88 = v45;

        sub_20E008C24();
        v39(v9, v4);
        v46 = v41;
        v41(v9, v16, v4);
        v47 = sub_20DFE30F8();
        v48 = sub_20E008C34();
        v49 = [v47 stringFromDate_];

        v87 = sub_20E0091D4();
        v86 = v50;

        sub_20E008C24();
        v39(v9, v4);
        v46(v9, v16, v4);
        v51 = v46;
        v52 = sub_20DFE30F8();
        v53 = sub_20E008C34();
        v54 = [v52 stringFromDate_];

        v55 = sub_20E0091D4();
        v57 = v56;

        sub_20E008C24();
        v39(v9, v4);
        v51(v9, v16, v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535C8, "2c");
        inited = swift_initStackObject();
        *(inited + 16) = v81;
        v59 = v90;
        *(inited + 32) = v91;
        *(inited + 40) = v59;
        strcpy((inited + 48), "superOffPeak");
        *(inited + 61) = 0;
        *(inited + 62) = -5120;
        *(inited + 64) = 0;
        v60 = v88;
        *(inited + 72) = v89;
        *(inited + 80) = v60;
        *(inited + 88) = 0x6B61655066666FLL;
        *(inited + 96) = 0xE700000000000000;
        v61 = v87;
        *(inited + 104) = 1;
        *(inited + 112) = v61;
        v12 = v83;
        *(inited + 120) = v86;
        *(inited + 128) = 0x6B6165506E6FLL;
        *(inited + 136) = 0xE600000000000000;
        *(inited + 144) = 2;
        *(inited + 152) = v55;
        *(inited + 160) = v57;
        *(inited + 168) = 0x6B61655066666FLL;
        *(inited + 176) = 0xE700000000000000;
        *(inited + 184) = 1;
        sub_20E007B48(inited);
      }

      while ((sub_20E008C44() & 1) != 0);
    }

    v62 = sub_20DFE30F8();
    v63 = v79;
    v64 = sub_20E008C34();
    v65 = [v62 stringFromDate_];

    v66 = sub_20E0091D4();
    v91 = v67;

    v68 = sub_20DFE30F8();
    v69 = sub_20E008C34();
    v70 = [v68 stringFromDate_];

    v71 = sub_20E0091D4();
    v73 = v72;

    v74 = v92;
    v75 = v9;
    v76 = v84;
    v84(v75, v4);
    v76(v12, v4);
    v76(v63, v4);
    v77 = v80;
    v78 = v91;
    *v80 = v66;
    v77[1] = v78;
    v77[2] = v71;
    v77[3] = v73;
    v77[4] = v74;
    *(v77 + 5) = xmmword_20E014570;
    *(v77 + 7) = xmmword_20E014580;
    *(v77 + 9) = xmmword_20E014590;
  }
}

uint64_t sub_20E007B48(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_20DFFB35C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_20E007C40()
{
  v0 = sub_20E008DA4();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = sub_20E008D44();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20E008DB4();
  v13 = *(v25 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v25);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x277CC9810], v8);
  sub_20E008D54();
  (*(v9 + 8))(v12, v8);
  v17 = v1[13];
  v17(v7, *MEMORY[0x277CC9968], v0);
  v17(v5, *MEMORY[0x277CC9998], v0);
  v18 = sub_20E008D84();
  v20 = v19;
  LOBYTE(v9) = v21;
  v22 = v1[1];
  v22(v5, v0);
  v22(v7, v0);
  (*(v13 + 8))(v16, v25);
  result = 0;
  if ((v9 & 1) == 0)
  {
    result = v20 - v18;
    if (__OFSUB__(v20, v18))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_20E007FC8()
{
  v0 = sub_20E009094();
  __swift_allocate_value_buffer(v0, qword_281124A00);
  __swift_project_value_buffer(v0, qword_281124A00);

  return sub_20E009084();
}

uint64_t sub_20E008054()
{
  v0 = sub_20E009094();
  __swift_allocate_value_buffer(v0, qword_281124A18);
  __swift_project_value_buffer(v0, qword_281124A18);

  return sub_20E009084();
}

uint64_t sub_20E008174()
{
  v0 = sub_20E009094();
  __swift_allocate_value_buffer(v0, qword_27C8626B0);
  __swift_project_value_buffer(v0, qword_27C8626B0);

  return sub_20E009084();
}

uint64_t sub_20E008200()
{
  v0 = sub_20E009094();
  __swift_allocate_value_buffer(v0, qword_27C8626C8);
  __swift_project_value_buffer(v0, qword_27C8626C8);

  return sub_20E009084();
}

uint64_t sub_20E00828C()
{
  v0 = sub_20E009094();
  __swift_allocate_value_buffer(v0, qword_27C8626E0);
  __swift_project_value_buffer(v0, qword_27C8626E0);

  return sub_20E009084();
}

uint64_t sub_20E008318()
{
  v0 = sub_20E009094();
  __swift_allocate_value_buffer(v0, qword_27C8626F8);
  __swift_project_value_buffer(v0, qword_27C8626F8);

  return sub_20E009084();
}

uint64_t sub_20E0083CC()
{
  v0 = sub_20E009094();
  __swift_allocate_value_buffer(v0, qword_27C862728);
  __swift_project_value_buffer(v0, qword_27C862728);

  return sub_20E009084();
}

uint64_t sub_20E008484()
{
  v0 = sub_20E009094();
  __swift_allocate_value_buffer(v0, qword_27C862758);
  __swift_project_value_buffer(v0, qword_27C862758);

  return sub_20E009084();
}

uint64_t sub_20E008560(uint64_t a1, uint64_t *a2)
{
  v3 = sub_20E009094();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);

  return sub_20E009084();
}

uint64_t sub_20E0085E8()
{
  v0 = sub_20E009094();
  __swift_allocate_value_buffer(v0, qword_27C8627A0);
  __swift_project_value_buffer(v0, qword_27C8627A0);

  return sub_20E009084();
}