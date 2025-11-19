unint64_t sub_1E59DF470()
{
  result = qword_1ECFFFDA0;
  if (!qword_1ECFFFDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFD98, &qword_1E5A400B0);
    sub_1E58CD164(&qword_1ECFFFDA8, &qword_1ECFFFDB0, &qword_1E5A400B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFDA0);
  }

  return result;
}

unint64_t sub_1E59DF534()
{
  result = qword_1ECFFFDC0;
  if (!qword_1ECFFFDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFDB8, &qword_1E5A400C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFDC8, &qword_1E5A400C8);
    sub_1E59DF610();
    sub_1E58EFCE8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFDC0);
  }

  return result;
}

unint64_t sub_1E59DF610()
{
  result = qword_1ECFFFDD0;
  if (!qword_1ECFFFDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFDC8, &qword_1E5A400C8);
    sub_1E58CD164(&qword_1ECFFFDD8, &qword_1ECFFFDE0, &qword_1E5A400D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFDD0);
  }

  return result;
}

unint64_t sub_1E59DF744()
{
  result = qword_1ECFFFE08;
  if (!qword_1ECFFFE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFE00, &qword_1E5A40110);
    sub_1E59DF7FC();
    sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFE08);
  }

  return result;
}

unint64_t sub_1E59DF7FC()
{
  result = qword_1ECFFFE10;
  if (!qword_1ECFFFE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFE18, &qword_1E5A40118);
    sub_1E59DF8B4();
    sub_1E58CD164(&qword_1ECFFC758, &qword_1ECFFC760, &qword_1E5A342C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFE10);
  }

  return result;
}

unint64_t sub_1E59DF8B4()
{
  result = qword_1ECFFFE20;
  if (!qword_1ECFFFE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFE28, &unk_1E5A40120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFD50, &qword_1E5A3FF98);
    sub_1E59DEFA8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFE20);
  }

  return result;
}

uint64_t sub_1E59DF97C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1E58B3C9C(a1, a2, a3 & 1);
}

uint64_t sub_1E59DF9B8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E5A227C4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E59DFA24(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E59DFA24(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E5A2C0E4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1E5A2BC24();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1E59DFC08(v7, v8, a1, v4);
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
    return sub_1E59DFB1C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E59DFB1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3 - 48;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 48 * v4;
    result = *(v9 + 32);
    v10 = *(v9 + 40);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 + 32) && v10 == *(v12 + 40);
      if (v13 || (result = sub_1E5A2C114(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 48;
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

      v14 = *(v12 + 48);
      v15 = *(v12 + 56);
      result = *(v12 + 80);
      v10 = *(v12 + 88);
      v16 = *(v12 + 64);
      v17 = *(v12 + 16);
      *(v12 + 48) = *v12;
      *(v12 + 64) = v17;
      *(v12 + 80) = *(v12 + 32);
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = v16;
      *(v12 + 32) = result;
      *(v12 + 40) = v10;
      v12 -= 48;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E59DFC08(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v104 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v104 = *v104;
    if (!v104)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1E5A21290(v8);
      v8 = result;
    }

    v95 = v8 + 16;
    v96 = *(v8 + 2);
    if (v96 >= 2)
    {
      while (1)
      {
        v97 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v98 = &v8[16 * v96];
        v5 = *v98;
        v99 = &v95[2 * v96];
        v100 = v99[1];
        sub_1E59E0218((v97 + 48 * *v98), (v97 + 48 * *v99), (v97 + 48 * v100), v104);
        if (v4)
        {
        }

        if (v100 < v5)
        {
          goto LABEL_129;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_130;
        }

        *v98 = v5;
        *(v98 + 1) = v100;
        v101 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_131;
        }

        v96 = *v95 - 1;
        result = memmove(v99, v99 + 2, 16 * v101);
        *v95 = v96;
        v5 = a3;
        if (v96 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 48 * v7;
      result = *(v11 + 32);
      v12 = *(v11 + 40);
      v13 = *v5 + 48 * v9;
      if (result == *(v13 + 32) && v12 == *(v13 + 40))
      {
        v15 = 0;
      }

      else
      {
        result = sub_1E5A2C114();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 48 * v9 + 136);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 7) && *v16 == *(v16 - 6))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1E5A2C114();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 6;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v18 = 48 * v7 - 16;
          v19 = 48 * v9 + 40;
          v20 = v7;
          v21 = v9;
          do
          {
            if (v21 != --v20)
            {
              v31 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v22 = (v31 + v19);
              v23 = (v31 + v18);
              v24 = *(v22 - 5);
              v25 = *(v22 - 4);
              v26 = *(v22 - 1);
              v27 = *v22;
              v28 = *(v22 - 3);
              v30 = *(v23 - 1);
              v29 = *v23;
              *(v22 - 5) = *(v23 - 2);
              *(v22 - 3) = v30;
              *(v22 - 1) = v29;
              *(v23 - 4) = v24;
              *(v23 - 3) = v25;
              *(v23 - 1) = v28;
              *v23 = v26;
              *(v23 + 1) = v27;
            }

            ++v21;
            v18 -= 48;
            v19 += 48;
          }

          while (v21 < v20);
        }
      }
    }

    v32 = v5[1];
    if (v7 < v32)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v32)
        {
          v33 = v5[1];
        }

        else
        {
          v33 = v9 + a4;
        }

        if (v33 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v33)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E58E6258(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_1E58E6258((v48 > 1), v49 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *v104;
    if (!*v104)
    {
      goto LABEL_142;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_74:
          if (v57)
          {
            goto LABEL_120;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_123;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_127;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_88:
        if (v75)
        {
          goto LABEL_122;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_125;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_95:
        v91 = v53 - 1;
        if (v53 - 1 >= v50)
        {
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
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v92 = *&v8[16 * v91 + 32];
        v93 = *&v8[16 * v53 + 40];
        sub_1E59E0218((*v5 + 48 * v92), (*v5 + 48 * *&v8[16 * v53 + 32]), (*v5 + 48 * v93), v52);
        if (v4)
        {
        }

        if (v93 < v92)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E5A21290(v8);
        }

        if (v91 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v94 = &v8[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        result = sub_1E5A21204(v53);
        v50 = *(v8 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_118;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_119;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_121;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_124;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_128;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v34 = *v5;
  v35 = *v5 + 48 * v7 - 48;
  v102 = v9;
  v36 = v9 - v7;
LABEL_43:
  v37 = v34 + 48 * v7;
  v38 = *(v37 + 32);
  v39 = *(v37 + 40);
  v40 = v36;
  v41 = v35;
  while (1)
  {
    v42 = v38 == *(v41 + 32) && v39 == *(v41 + 40);
    if (v42 || (result = sub_1E5A2C114(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v35 += 48;
      --v36;
      if (v7 != v33)
      {
        goto LABEL_43;
      }

      v7 = v33;
      v5 = a3;
      v9 = v102;
      goto LABEL_54;
    }

    if (!v34)
    {
      break;
    }

    v43 = *(v41 + 48);
    v44 = *(v41 + 56);
    v38 = *(v41 + 80);
    v39 = *(v41 + 88);
    v45 = *(v41 + 64);
    v46 = *(v41 + 16);
    *(v41 + 48) = *v41;
    *(v41 + 64) = v46;
    *(v41 + 80) = *(v41 + 32);
    *v41 = v43;
    *(v41 + 8) = v44;
    *(v41 + 16) = v45;
    *(v41 + 32) = v38;
    *(v41 + 40) = v39;
    v41 -= 48;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1E59E0218(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *(v6 + 4) == *(v4 + 4) && *(v6 + 5) == *(v4 + 5);
      if (!v16 && (sub_1E5A2C114() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v16 = v7 == v4;
      v4 += 48;
      if (!v16)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v16 = v7 == v6;
    v6 += 48;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    v15 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v15;
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[48 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[48 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_24:
    v5 -= 48;
    do
    {
      v17 = *(v12 - 2) == *(v6 - 2) && *(v12 - 1) == *(v6 - 1);
      if (!v17 && (sub_1E5A2C114() & 1) != 0)
      {
        v21 = v6 - 48;
        if (v5 + 48 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v23;
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 48, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      v18 = v12 - 48;
      if (v5 + 48 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 1);
        *(v5 + 1) = *(v12 - 2);
        *(v5 + 2) = v20;
        *v5 = v19;
      }

      v5 -= 48;
      v12 -= 48;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_39:
  v24 = (v12 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v24])
  {
    memmove(v6, v4, 48 * v24);
  }

  return 1;
}

void *sub_1E59E0478(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1E59E0F44(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1E59E0514(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v8 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v8;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFE50, &qword_1E5A40178);
  result = sub_1E5A2BE44();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 56;
  v35 = v4;
  while (v9)
  {
    v12 = v8;
    v13 = __clz(__rbit64(v9));
    v36 = (v9 - 1) & v9;
LABEL_17:
    v16 = *(v4 + 48) + 40 * (v13 | (v10 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    v21 = *(v16 + 32);
    v22 = v12;
    v23 = *(v12 + 40);
    sub_1E5A2C1B4();

    v37 = v17;
    sub_1E5A2BB74();
    sub_1E5A2BB74();
    sub_1E5A2C1E4();
    result = sub_1E5A2C204();
    v8 = v22;
    v24 = -1 << *(v22 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
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
        v31 = *(v11 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v11 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = *(v22 + 48) + 40 * v27;
    *v32 = v37;
    *(v32 + 8) = v18;
    *(v32 + 16) = v20;
    *(v32 + 24) = v19;
    *(v32 + 32) = v21;
    ++*(v22 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    v9 = v36;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v10;
  while (1)
  {
    v10 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v10];
    ++v14;
    if (v15)
    {
      v12 = v8;
      v13 = __clz(__rbit64(v15));
      v36 = (v15 - 1) & v15;
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

uint64_t sub_1E59E07C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD920, &qword_1E5A364E0);
  result = sub_1E5A2BE44();
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
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v32 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v9 + 40);
    sub_1E5A2C1B4();
    MEMORY[0x1E6932DE0](v19);

    sub_1E5A2BB74();
    result = sub_1E5A2C204();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v9 + 48) + 24 * v24;
    *v29 = v18;
    *(v29 + 8) = v17;
    *(v29 + 16) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    v10 = v32;
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
      v32 = (v15 - 1) & v15;
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

uint64_t sub_1E59E0A24(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_1E5A2BE44();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v34 = v6;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v35 = (v12 - 1) & v12;
LABEL_17:
    v18 = (*(v6 + 48) + 32 * (v15 | (v13 << 6)));
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = v18[3];
    v23 = *(v11 + 40);
    sub_1E5A2C1B4();

    sub_1E5A2BB74();
    sub_1E5A2BB74();
    result = sub_1E5A2C204();
    v24 = -1 << *(v11 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
        v31 = *(v14 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v11 + 48) + 32 * v27);
    *v32 = v19;
    v32[1] = v20;
    v32[2] = v21;
    v32[3] = v22;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    v6 = v34;
    v12 = v35;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v35 = (v17 - 1) & v17;
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

uint64_t sub_1E59E0C74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v10 = MEMORY[0x1E69E7CD0];
LABEL_31:

    return v10;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFE38, &qword_1E5A40158);
  result = sub_1E5A2BE44();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v35 = v4;
  v36 = result;
  while (v9)
  {
    v13 = __clz(__rbit64(v9));
    v37 = (v9 - 1) & v9;
LABEL_15:
    v16 = (*(v4 + 48) + 48 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v20 = v16[2];
    v19 = v16[3];
    v21 = v16[5];
    v39 = v16[4];
    v22 = *(v8 + 40);
    sub_1E5A2C1B4();

    v38 = v18;
    sub_1E5A2BB74();
    if (v19)
    {
      sub_1E5A2C1D4();
      v23 = v20;
      sub_1E5A2BB74();
    }

    else
    {
      v23 = v20;
      sub_1E5A2C1D4();
    }

    sub_1E5A2BB74();
    result = sub_1E5A2C204();
    v8 = v36;
    v24 = -1 << *(v36 + 32);
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
          goto LABEL_28;
        }
      }

      goto LABEL_34;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v36 + 48) + 48 * v27);
    *v32 = v17;
    v32[1] = v38;
    v32[2] = v23;
    v32[3] = v19;
    v32[4] = v39;
    v32[5] = v21;
    ++*(v36 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v35;
    v9 = v37;
    if (!v5)
    {
LABEL_30:
      v10 = v8;
      goto LABEL_31;
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
      goto LABEL_30;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v37 = (v15 - 1) & v15;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1E59E0F44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = result;
  v30 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v32 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    if (*(a4 + 16))
    {
      v29 = v11 | (v5 << 6);
      v14 = (*(a3 + 48) + 48 * v29);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[5];
      v18 = v14[3];
      v19 = *(a4 + 40);
      sub_1E5A2C1B4();

      sub_1E5A2BB74();
      v20 = sub_1E5A2C204();
      v21 = -1 << *(a4 + 32);
      v22 = v20 & ~v21;
      if ((*(v32 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(a4 + 48) + 16 * v22);
          v25 = *v24 == v15 && v24[1] == v16;
          if (v25 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v32 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v28 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_26:

          return sub_1E59E0C74(v28, a2, v30, a3);
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E59E1198(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v38[0] = v3;
    v38[1] = v38;
    v39 = v8;
    MEMORY[0x1EEE9AC00](v10);
    v40 = v38 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v9);
    v43 = 0;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v3 = v13 & *(v5 + 56);
    v14 = (v12 + 63) >> 6;
    v46 = a2 + 56;
    v41 = v5;
    while (v3)
    {
      v15 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
LABEL_14:
      v18 = v15 | (v11 << 6);
      if (*(a2 + 16))
      {
        v19 = *(v5 + 48);
        v42 = v18;
        v20 = (v19 + 48 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[5];
        v24 = v20[3];
        v25 = *(a2 + 40);
        sub_1E5A2C1B4();
        v45 = v24;

        v44 = v23;

        sub_1E5A2BB74();
        v26 = sub_1E5A2C204();
        v27 = -1 << *(a2 + 32);
        v9 = v26 & ~v27;
        if ((*(v46 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          v28 = ~v27;
          while (1)
          {
            v29 = (*(a2 + 48) + 16 * v9);
            v30 = *v29 == v21 && v29[1] == v22;
            if (v30 || (sub_1E5A2C114() & 1) != 0)
            {
              break;
            }

            v9 = (v9 + 1) & v28;
            if (((*(v46 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v5 = v41;
          *&v40[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
          if (__OFADD__(v43++, 1))
          {
            __break(1u);
LABEL_27:
            v32 = sub_1E59E0C74(v40, v39, v43, v5);

            v33 = *MEMORY[0x1E69E9840];
            return v32;
          }
        }

        else
        {
LABEL_6:

          v5 = v41;
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v14)
      {
        goto LABEL_27;
      }

      v17 = *(v8 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v3 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v35 = swift_slowAlloc();

  v36 = sub_1E59E0478(v35, v8, v5, a2);

  MEMORY[0x1E6933430](v35, -1, -1);

  v37 = *MEMORY[0x1E69E9840];
  return v36;
}

uint64_t sub_1E59E1534(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF746867696C746FLL;
  v3 = 0x7053747369747261;
  v4 = a1;
  v5 = 0x576D6172676F7270;
  v6 = 0xEE0074756F6B726FLL;
  if (a1 != 6)
  {
    v5 = 0x6967736B6E616874;
    v6 = 0xEC000000676E6976;
  }

  v7 = 0xE700000000000000;
  v8 = 0x7261655977656ELL;
  if (a1 != 4)
  {
    v8 = 0x6564697270;
    v7 = 0xE500000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x796164696C6F68;
  if (a1 != 2)
  {
    v10 = 0x77654E72616E756CLL;
    v9 = 0xEC00000072616559;
  }

  v11 = 0x6565776F6C6C6168;
  v12 = 0xE90000000000006ELL;
  if (!a1)
  {
    v11 = 0x7053747369747261;
    v12 = 0xEF746867696C746FLL;
  }

  if (a1 <= 1u)
  {
    v10 = v11;
    v9 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEE0074756F6B726FLL;
        if (v13 != 0x576D6172676F7270)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xEC000000676E6976;
        if (v13 != 0x6967736B6E616874)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v13 != 0x7261655977656ELL)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x6564697270)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x796164696C6F68)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x77654E72616E756CLL;
      v2 = 0xEC00000072616559;
    }

    else if (a2)
    {
      v2 = 0xE90000000000006ELL;
      if (v13 != 0x6565776F6C6C6168)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_1E5A2C114();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t CalendarDay.init(date:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a3;
  v28 = sub_1E5A29C54();
  v26 = *(v28 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFE58, &qword_1E5A40180);
  v8 = sub_1E5A29FC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E5A303B0;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, *MEMORY[0x1E6969A68], v8);
  v14(v13 + v10, *MEMORY[0x1E6969A78], v8);
  v14(v13 + 2 * v10, *MEMORY[0x1E6969A48], v8);
  sub_1E59E21BC(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1E5A29F24();

  result = sub_1E5A29C24();
  if (v16)
  {
    __break(1u);
    goto LABEL_6;
  }

  v17 = result;
  result = sub_1E5A29C34();
  if (v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v19 = result;
  result = sub_1E5A29C14();
  if ((v20 & 1) == 0)
  {
    v21 = result;
    v22 = sub_1E5A29FE4();
    (*(*(v22 - 8) + 8))(a2, v22);
    v23 = sub_1E5A29E34();
    (*(*(v23 - 8) + 8))(a1, v23);
    result = (*(v26 + 8))(v7, v28);
    v24 = v27;
    *v27 = v17;
    v24[1] = v19;
    v24[2] = v21;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

FitnessWorkoutPlan::CalendarDay __swiftcall CalendarDay.init(year:month:day:)(Swift::Int year, Swift::Int month, Swift::Int day)
{
  *v3 = year;
  v3[1] = month;
  v3[2] = day;
  result.day = day;
  result.month = month;
  result.year = year;
  return result;
}

uint64_t sub_1E59E1B24()
{
  v1 = 0x68746E6F6DLL;
  if (*v0 != 1)
  {
    v1 = 7954788;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1918985593;
  }
}

uint64_t sub_1E59E1B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E59E33F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E59E1B94(uint64_t a1)
{
  v2 = sub_1E59E3508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59E1BD0(uint64_t a1)
{
  v2 = sub_1E59E3508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CalendarDay.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFE60, &qword_1E5A40188);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v13[1] = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59E3508();
  sub_1E5A2C224();
  v16 = 0;
  sub_1E5A2C094();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = 1;
  sub_1E5A2C094();
  v14 = 2;
  sub_1E5A2C094();
  return (*(v5 + 8))(v8, v4);
}

uint64_t CalendarDay.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFE70, &qword_1E5A40190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59E3508();
  sub_1E5A2C214();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_1E5A2BFC4();
    v18 = 1;
    v16 = sub_1E5A2BFC4();
    v17 = 2;
    v13 = sub_1E5A2BFC4();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v11;
    a2[1] = v14;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CalendarDay.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1E6932DE0](*v0);
  MEMORY[0x1E6932DE0](v1);
  return MEMORY[0x1E6932DE0](v2);
}

uint64_t CalendarDay.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v1);
  MEMORY[0x1E6932DE0](v2);
  MEMORY[0x1E6932DE0](v3);
  return sub_1E5A2C204();
}

uint64_t sub_1E59E20A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v1);
  MEMORY[0x1E6932DE0](v2);
  MEMORY[0x1E6932DE0](v3);
  return sub_1E5A2C204();
}

uint64_t sub_1E59E210C()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1E6932DE0](*v0);
  MEMORY[0x1E6932DE0](v1);
  return MEMORY[0x1E6932DE0](v2);
}

uint64_t sub_1E59E2154()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v1);
  MEMORY[0x1E6932DE0](v2);
  MEMORY[0x1E6932DE0](v3);
  return sub_1E5A2C204();
}

uint64_t sub_1E59E21BC(uint64_t a1)
{
  v2 = sub_1E5A29FC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFE98, &qword_1E5A40400);
    v10 = sub_1E5A2BE44();
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
      sub_1E59E36D8(&qword_1ECFFFEA0);
      v18 = sub_1E5A2BA34();
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
          sub_1E59E36D8(&qword_1ECFFFEA8);
          v25 = sub_1E5A2BA74();
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

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E59E24B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F8, &unk_1E5A403F0);
    v3 = sub_1E5A2BE44();
    v4 = 0;
    v5 = v3 + 56;
    v76 = v1;
    v77 = a1 + 32;
    v87 = v3;
    while (1)
    {
      v6 = v77 + 48 * v4;
      v8 = *v6;
      v7 = *(v6 + 8);
      v90 = *(v6 + 16);
      v91 = *(v6 + 24);
      v92 = *(v6 + 32);
      v9 = *(v6 + 40);
      v10 = *(v3 + 40);
      sub_1E5A2C1B4();
      v89 = v9;
      v86 = v4;
      if (v9 <= 3)
      {
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            v11 = 2;
          }

          else
          {
            v11 = 3;
          }
        }

        else
        {
          if (v9)
          {
            MEMORY[0x1E6932DE0](1);
            if ((*&v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v12 = v8;
            }

            else
            {
              v12 = 0.0;
            }

            MEMORY[0x1E6932E10](*&v12);

            sub_1E5A2BB74();
            if ((*&v91 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v13 = v91;
            }

            else
            {
              v13 = 0.0;
            }

            MEMORY[0x1E6932E10](*&v13);
            if ((*&v92 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v14 = v92;
            }

            else
            {
              v14 = 0.0;
            }

            MEMORY[0x1E6932E10](*&v14);
            goto LABEL_34;
          }

          v11 = 0;
        }

        goto LABEL_33;
      }

      if (v9 <= 5)
      {
        if (v9 == 4)
        {
          v11 = 4;
        }

        else
        {
          v11 = 5;
        }

        goto LABEL_33;
      }

      if (v9 == 6)
      {
        break;
      }

      if (v9 == 7)
      {
        v11 = 7;
LABEL_33:
        MEMORY[0x1E6932DE0](v11);

        sub_1E5A2BB74();
        goto LABEL_34;
      }

      MEMORY[0x1E6932DE0](8);
      sub_1E5A2BB74();

LABEL_34:
      result = sub_1E5A2C204();
      v16 = -1 << *(v3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = *(v5 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      if (((1 << v17) & v19) == 0)
      {
        v21 = v90;
        LOBYTE(v22) = v9;
LABEL_169:
        *(v5 + 8 * v18) = v19 | v20;
        v72 = *(v3 + 48) + 48 * v17;
        *v72 = v8;
        *(v72 + 8) = v7;
        *(v72 + 16) = v21;
        *(v72 + 24) = v91;
        *(v72 + 32) = v92;
        *(v72 + 40) = v22;
        v73 = *(v3 + 16);
        v74 = __OFADD__(v73, 1);
        v75 = v73 + 1;
        if (!v74)
        {
          *(v3 + 16) = v75;
          goto LABEL_6;
        }

        __break(1u);
        return result;
      }

      v88 = ~v16;
      v21 = v90;
      v22 = v9;
      while (1)
      {
        v28 = *(v3 + 48) + 48 * v17;
        v30 = *v28;
        v29 = *(v28 + 8);
        v31 = *(v28 + 16);
        v32 = *(v28 + 24);
        v33 = *(v28 + 32);
        v34 = *(v28 + 40);
        v93[0] = v30;
        v93[1] = v29;
        v93[2] = v31;
        v93[3] = v32;
        v93[4] = v33;
        v94 = v34;
        v95 = v8;
        v96 = v7;
        v97 = v21;
        v98 = v91;
        v99 = v92;
        v100 = v22;
        if (v34 > 3)
        {
          if (v34 <= 5)
          {
            if (v34 == 4)
            {
              if (v22 == 4)
              {
                if (v30 == *&v8 && v29 == v7)
                {
                  goto LABEL_3;
                }

                v40 = v21;
                v80 = sub_1E5A2C114();
                sub_1E58BACE0(*&v8, v7, v40, *&v91, *&v92, 4u);
                sub_1E58BACE0(v30, v29, v31, v32, v33, 4u);
                result = sub_1E58F7160(v93);
                if (v80)
                {
                  sub_1E58BACAC(*&v8, v7, v90, *&v91, *&v92, 4u);
                  goto LABEL_5;
                }

                goto LABEL_38;
              }

              sub_1E58BACE0(*&v8, v7, v21, *&v91, *&v92, v22);
              v23 = v30;
              v24 = v29;
              v25 = v31;
              v26 = v32;
              v27 = v33;
              LOBYTE(v22) = 4;
            }

            else
            {
              if (v22 == 5)
              {
                if (v30 == *&v8 && v29 == v7)
                {
                  goto LABEL_3;
                }

                v50 = v21;
                v84 = sub_1E5A2C114();
                sub_1E58BACE0(*&v8, v7, v50, *&v91, *&v92, 5u);
                sub_1E58BACE0(v30, v29, v31, v32, v33, 5u);
                result = sub_1E58F7160(v93);
                if (v84)
                {
                  sub_1E58BACAC(*&v8, v7, v90, *&v91, *&v92, 5u);
                  goto LABEL_5;
                }

                goto LABEL_38;
              }

              sub_1E58BACE0(*&v8, v7, v21, *&v91, *&v92, v22);
              v23 = v30;
              v24 = v29;
              v25 = v31;
              v26 = v32;
              v27 = v33;
              LOBYTE(v22) = 5;
            }
          }

          else if (v34 == 6)
          {
            if (v22 == 6)
            {
              if (v30 == *&v8 && v29 == v7)
              {
                goto LABEL_3;
              }

              v42 = v21;
              v81 = sub_1E5A2C114();
              sub_1E58BACE0(*&v8, v7, v42, *&v91, *&v92, 6u);
              sub_1E58BACE0(v30, v29, v31, v32, v33, 6u);
              result = sub_1E58F7160(v93);
              if (v81)
              {
                sub_1E58BACAC(*&v8, v7, v90, *&v91, *&v92, 6u);
                goto LABEL_5;
              }

              goto LABEL_38;
            }

            sub_1E58BACE0(*&v8, v7, v21, *&v91, *&v92, v22);
            v23 = v30;
            v24 = v29;
            v25 = v31;
            v26 = v32;
            v27 = v33;
            LOBYTE(v22) = 6;
          }

          else if (v34 == 7)
          {
            if (v22 == 7)
            {
              if (v30 == *&v8 && v29 == v7)
              {
                goto LABEL_3;
              }

              v36 = v21;
              v78 = sub_1E5A2C114();
              sub_1E58BACE0(*&v8, v7, v36, *&v91, *&v92, 7u);
              sub_1E58BACE0(v30, v29, v31, v32, v33, 7u);
              result = sub_1E58F7160(v93);
              if (v78)
              {
                sub_1E58BACAC(*&v8, v7, v90, *&v91, *&v92, 7u);
                goto LABEL_5;
              }

              goto LABEL_38;
            }

            sub_1E58BACE0(*&v8, v7, v21, *&v91, *&v92, v22);
            v23 = v30;
            v24 = v29;
            v25 = v31;
            v26 = v32;
            v27 = v33;
            LOBYTE(v22) = 7;
          }

          else
          {
            if (v22 == 8)
            {
              if (v30 > 3u)
              {
                if (v30 <= 5u)
                {
                  if (v30 == 4)
                  {
                    v48 = 0xE700000000000000;
                    v47 = 0x7261655977656ELL;
                  }

                  else
                  {
                    v48 = 0xE500000000000000;
                    v47 = 0x6564697270;
                  }

                  goto LABEL_137;
                }

                if (v30 == 6)
                {
                  v47 = 0x576D6172676F7270;
                  v48 = 0xEE0074756F6B726FLL;
                  goto LABEL_137;
                }

                v47 = 0x6967736B6E616874;
                v60 = 1735289206;
              }

              else
              {
                if (v30 <= 1u)
                {
                  v47 = 0x7053747369747261;
                  v48 = 0xEF746867696C746FLL;
                  if (v30)
                  {
                    v47 = 0x6565776F6C6C6168;
                    v48 = 0xE90000000000006ELL;
                  }

                  goto LABEL_137;
                }

                if (v30 == 2)
                {
                  v48 = 0xE700000000000000;
                  v47 = 0x796164696C6F68;
LABEL_137:
                  v61 = 0x6967736B6E616874;
                  if (LOBYTE(v8) == 6)
                  {
                    v61 = 0x576D6172676F7270;
                  }

                  v62 = 0xEE0074756F6B726FLL;
                  if (LOBYTE(v8) != 6)
                  {
                    v62 = 0xEC000000676E6976;
                  }

                  v63 = 0x7261655977656ELL;
                  if (LOBYTE(v8) != 4)
                  {
                    v63 = 0x6564697270;
                  }

                  v64 = 0xE500000000000000;
                  if (LOBYTE(v8) == 4)
                  {
                    v64 = 0xE700000000000000;
                  }

                  if (LOBYTE(v8) <= 5u)
                  {
                    v61 = v63;
                    v62 = v64;
                  }

                  v65 = 0x77654E72616E756CLL;
                  if (LOBYTE(v8) == 2)
                  {
                    v65 = 0x796164696C6F68;
                  }

                  v66 = 0xEC00000072616559;
                  if (LOBYTE(v8) == 2)
                  {
                    v66 = 0xE700000000000000;
                  }

                  v67 = 0x7053747369747261;
                  if (LOBYTE(v8))
                  {
                    v67 = 0x6565776F6C6C6168;
                  }

                  v68 = 0xEF746867696C746FLL;
                  if (LOBYTE(v8))
                  {
                    v68 = 0xE90000000000006ELL;
                  }

                  if (LOBYTE(v8) <= 1u)
                  {
                    v65 = v67;
                    v66 = v68;
                  }

                  if (LOBYTE(v8) <= 3u)
                  {
                    v69 = v65;
                  }

                  else
                  {
                    v69 = v61;
                  }

                  if (LOBYTE(v8) <= 3u)
                  {
                    v70 = v66;
                  }

                  else
                  {
                    v70 = v62;
                  }

                  if (v47 == v69 && v48 == v70)
                  {

                    goto LABEL_4;
                  }

                  v71 = sub_1E5A2C114();

                  result = sub_1E58F7160(v93);
                  if (v71)
                  {
                    goto LABEL_5;
                  }

                  goto LABEL_38;
                }

                v47 = 0x77654E72616E756CLL;
                v60 = 1918985561;
              }

              v48 = v60 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              goto LABEL_137;
            }

            v23 = *&v8;
            v24 = v7;
            v25 = v21;
            v26 = *&v91;
            v27 = *&v92;
          }

          goto LABEL_37;
        }

        if (v34 > 1)
        {
          if (v34 == 2)
          {
            if (v22 == 2)
            {
              if (v30 == *&v8 && v29 == v7)
              {
                goto LABEL_3;
              }

              v38 = v21;
              v79 = sub_1E5A2C114();
              sub_1E58BACE0(*&v8, v7, v38, *&v91, *&v92, 2u);
              sub_1E58BACE0(v30, v29, v31, v32, v33, 2u);
              result = sub_1E58F7160(v93);
              if (v79)
              {
                sub_1E58BACAC(*&v8, v7, v90, *&v91, *&v92, 2u);
                goto LABEL_5;
              }

              goto LABEL_38;
            }

            sub_1E58BACE0(*&v8, v7, v21, *&v91, *&v92, v22);
            v23 = v30;
            v24 = v29;
            v25 = v31;
            v26 = v32;
            v27 = v33;
            LOBYTE(v22) = 2;
          }

          else
          {
            if (v22 == 3)
            {
              if (v30 == *&v8 && v29 == v7)
              {
LABEL_3:

LABEL_4:
                sub_1E58F7160(v93);
LABEL_5:
                v1 = v76;
                v3 = v87;
                goto LABEL_6;
              }

              v46 = v21;
              v83 = sub_1E5A2C114();
              sub_1E58BACE0(*&v8, v7, v46, *&v91, *&v92, 3u);
              sub_1E58BACE0(v30, v29, v31, v32, v33, 3u);
              result = sub_1E58F7160(v93);
              if (v83)
              {
                sub_1E58BACAC(*&v8, v7, v90, *&v91, *&v92, 3u);
                goto LABEL_5;
              }

              goto LABEL_38;
            }

            sub_1E58BACE0(*&v8, v7, v21, *&v91, *&v92, v22);
            v23 = v30;
            v24 = v29;
            v25 = v31;
            v26 = v32;
            v27 = v33;
            LOBYTE(v22) = 3;
          }

          goto LABEL_37;
        }

        if (!v34)
        {
          break;
        }

        if (v22 != 1)
        {
          v51 = *&v8;
          v52 = v7;
          v53 = v21;
          v54 = *&v91;
          v55 = *&v92;
          goto LABEL_121;
        }

        if (*&v30 != v8)
        {
          v51 = *&v8;
          v52 = v7;
          v53 = v21;
          v54 = *&v91;
          v55 = *&v92;
          LOBYTE(v22) = 1;
LABEL_121:
          sub_1E58BACE0(v51, v52, v53, v54, v55, v22);
          v23 = v30;
          v24 = v29;
          v25 = v31;
          v26 = v32;
          v27 = v33;
          LOBYTE(v22) = 1;
LABEL_37:
          sub_1E58BACE0(v23, v24, v25, v26, v27, v22);
          result = sub_1E58F7160(v93);
          goto LABEL_38;
        }

        if (v29 == v7 && v31 == v21)
        {
          v58 = v21;
          sub_1E58BACE0(*&v8, v7, v21, *&v91, *&v92, 1u);
          sub_1E58BACE0(v30, v7, v58, v32, v33, 1u);
          result = sub_1E58F7160(v93);
LABEL_123:
          if (*&v32 == v91 && *&v33 == v92)
          {
            sub_1E58BACAC(*&v8, v7, v90, *&v91, *&v92, 1u);
            goto LABEL_5;
          }

          goto LABEL_38;
        }

        v44 = v21;
        v82 = sub_1E5A2C114();
        sub_1E58BACE0(*&v8, v7, v44, *&v91, *&v92, 1u);
        sub_1E58BACE0(v30, v29, v31, v32, v33, 1u);
        result = sub_1E58F7160(v93);
        if (v82)
        {
          goto LABEL_123;
        }

LABEL_38:
        v3 = v87;
        v17 = (v17 + 1) & v88;
        v18 = v17 >> 6;
        v20 = 1 << v17;
        v21 = v90;
        v22 = v89;
        if ((*(v5 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
        {
          v19 = *(v5 + 8 * v18);
          v1 = v76;
          goto LABEL_169;
        }
      }

      if (v22)
      {
        sub_1E58BACE0(*&v8, v7, v21, *&v91, *&v92, v22);
        v23 = v30;
        v24 = v29;
        v25 = v31;
        v26 = v32;
        v27 = v33;
        LOBYTE(v22) = 0;
        goto LABEL_37;
      }

      if (v30 != *&v8 || v29 != v7)
      {
        v57 = v21;
        v85 = sub_1E5A2C114();
        sub_1E58BACE0(*&v8, v7, v57, *&v91, *&v92, 0);
        sub_1E58BACE0(v30, v29, v31, v32, v33, 0);
        result = sub_1E58F7160(v93);
        if (v85)
        {
          sub_1E58BACAC(*&v8, v7, v90, *&v91, *&v92, 0);
          goto LABEL_5;
        }

        goto LABEL_38;
      }

      sub_1E58F7160(v93);
      v1 = v76;
LABEL_6:
      v4 = v86 + 1;
      if (v86 + 1 == v1)
      {
        return v3;
      }
    }

    v11 = 6;
    goto LABEL_33;
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E59E32B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD918, &qword_1E5A364D8);
    v3 = sub_1E5A2BE44();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v10);
      result = sub_1E5A2C204();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E59E33F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1918985593 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7954788 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

unint64_t sub_1E59E3508()
{
  result = qword_1ECFFFE68;
  if (!qword_1ECFFFE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFE68);
  }

  return result;
}

unint64_t sub_1E59E355C()
{
  result = qword_1ECFFFE78;
  if (!qword_1ECFFFE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFE78);
  }

  return result;
}

unint64_t sub_1E59E35D4()
{
  result = qword_1ECFFFE80;
  if (!qword_1ECFFFE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFE80);
  }

  return result;
}

unint64_t sub_1E59E362C()
{
  result = qword_1ECFFFE88;
  if (!qword_1ECFFFE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFE88);
  }

  return result;
}

unint64_t sub_1E59E3684()
{
  result = qword_1ECFFFE90;
  if (!qword_1ECFFFE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFE90);
  }

  return result;
}

uint64_t sub_1E59E36D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E5A29FC4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TVPersonalizedWorkoutPlanCandidateView.init(store:candidate:index:actionButtonViewBuilder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView();
  v12 = v11[9];
  v13 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  (*(*(v13 - 8) + 56))(a6 + v12, 1, 1, v13);
  v14 = a6 + v11[12];
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView.FocusedButton();
  swift_getWitnessTable();
  sub_1E5A2A444();
  *v14 = v20;
  *(v14 + 1) = v21;
  v14[16] = v22;
  v15 = *a1;
  sub_1E58CD164(&qword_1EE2CFA98, &qword_1ECFFE258, &unk_1E5A39330);
  *a6 = sub_1E5A2A654();
  a6[1] = v16;
  result = sub_1E59E38FC(a2, a6 + v12);
  *(a6 + v11[10]) = a3;
  v18 = (a6 + v11[11]);
  *v18 = a4;
  v18[1] = a5;
  return result;
}

uint64_t sub_1E59E38FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E59E396C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v7 = *v2;
  v8 = *(v2 + 1);
  v9 = v2[16];
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView.FocusedButton();
  sub_1E5A2BD84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2A454();
  sub_1E5A2A434();
  return v6;
}

uint64_t sub_1E59E3A34(uint64_t a1)
{
  v3 = sub_1E5A29EB4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1E5A2BB14();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1E5A2BAF4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29[-v11];
  sub_1E593B564(v1 + *(a1 + 36), &v29[-v11]);
  v13 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    sub_1E58BAD14(v12, &qword_1ECFFC120, &qword_1E5A2FF10);
    return 0;
  }

  v15 = *&v12[*(v13 + 28)];

  sub_1E59E7350(v12, type metadata accessor for PersonalizedWorkoutPlanCandidate);

  v17 = sub_1E591BB44(v16);

  v18 = sub_1E591C344(v17);
  if (v19)
  {

    v20 = 0;
  }

  else
  {
    v20 = v18;
    v21 = sub_1E591C3F8(v17);
    v23 = v22;

    if (v23)
    {
      v20 = 0;
    }

    else
    {
      if (v21 < v20)
      {
        __break(1u);
        return result;
      }

      if (v20 != v21)
      {
        sub_1E5A2BAE4();
        sub_1E5A2BAD4();
        v28 = *(v15 + 16);

        v30 = v28;
        sub_1E5A2BAB4();
        sub_1E5A2BAD4();
        v30 = v20;
        sub_1E5A2BAB4();
        sub_1E5A2BAD4();
        v30 = v21;
        goto LABEL_10;
      }
    }
  }

  sub_1E5A2BAE4();
  sub_1E5A2BAD4();
  v24 = *(v15 + 16);

  v30 = v24;
  sub_1E5A2BAB4();
  sub_1E5A2BAD4();
  v30 = v20;
LABEL_10:
  sub_1E5A2BAB4();
  sub_1E5A2BAD4();
  sub_1E5A2BB04();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v25 = qword_1EE2D33E0;
  v26 = *(v1 + 8);
  swift_getKeyPath();

  v27 = v25;
  sub_1E5A2B944();

  return sub_1E5A2BB64();
}

uint64_t TVPersonalizedWorkoutPlanCandidateView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v76 = sub_1E5A2A754();
  v3 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1E5A2ACC4();
  v73 = *(v74 - 8);
  v5 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFFFEB0, &qword_1E5A40408);
  v7 = MEMORY[0x1E6981148];
  v94 = MEMORY[0x1E6981148];
  v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  v96 = v7;
  v97 = v95;
  v98 = v7;
  v99 = MEMORY[0x1E6981840];
  v70 = a1;
  v69 = *(a1 + 16);
  v8 = sub_1E5A2A6C4();
  v68 = *(a1 + 24);
  v9 = v68;
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView.FocusedButton();
  v10 = sub_1E5A2BD84();
  v92 = v9;
  v93 = MEMORY[0x1E697E040];
  v75 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v91 = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v87 = v8;
  v88 = v10;
  v89 = WitnessTable;
  v90 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v87 = v8;
  v88 = v10;
  v89 = WitnessTable;
  v90 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v87 = OpaqueTypeMetadata2;
  v88 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v100 = sub_1E5A2AA84();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v15 = sub_1E5A2B624();
  v65 = *(v15 - 8);
  v16 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v55 - v17;
  v19 = swift_getWitnessTable();
  v57 = v19;
  v86 = swift_getWitnessTable();
  v56 = swift_getWitnessTable();
  v94 = v15;
  v95 = v10;
  v96 = v19;
  v97 = v56;
  v62 = MEMORY[0x1E697CE68];
  v58 = swift_getOpaqueTypeMetadata2();
  v63 = *(v58 - 8);
  v20 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v22 = &v55 - v21;
  v61 = sub_1E5A2A6C4();
  v66 = *(v61 - 8);
  v23 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v55 = &v55 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFFE0F0, &qword_1E5A39170);
  v60 = sub_1E5A2A6C4();
  v67 = *(v60 - 8);
  v25 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v64 = &v55 - v28;
  sub_1E5A2B7B4();
  v79 = v69;
  v80 = v68;
  v81 = v71;
  v29 = v18;
  sub_1E5A2B614();
  v94 = sub_1E59E396C(v70);
  v95 = v30;
  LOBYTE(v96) = v31 & 1;
  LOBYTE(v87) = 0;
  v32 = v72;
  sub_1E5A2ACB4();
  v33 = swift_checkMetadataState();
  v34 = v22;
  v35 = v57;
  v36 = v56;
  MEMORY[0x1E6931D40](&v94, &v87, v32, v15, v33, v57, v56);
  (*(v73 + 8))(v32, v74);

  (*(v65 + 8))(v29, v15);
  v94 = v15;
  v95 = v33;
  v96 = v35;
  v97 = v36;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v55;
  v39 = v58;
  sub_1E5A2B0A4();
  (*(v63 + 8))(v34, v39);
  sub_1E5A2A0A4();
  v41 = v40;
  v42 = *(v76 + 20);
  v43 = *MEMORY[0x1E697F468];
  v44 = sub_1E5A2A9B4();
  v45 = v77;
  (*(*(v44 - 8) + 104))(&v77[v42], v43, v44);
  *v45 = v41;
  v45[1] = v41;
  v84 = v37;
  v85 = MEMORY[0x1E697F568];
  v46 = v61;
  v47 = swift_getWitnessTable();
  sub_1E594AA70();
  v48 = v59;
  sub_1E5A2B3C4();
  sub_1E59E7350(v45, MEMORY[0x1E697EAF0]);
  (*(v66 + 8))(v38, v46);
  v49 = sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170);
  v82 = v47;
  v83 = v49;
  v50 = v60;
  v51 = swift_getWitnessTable();
  v52 = v64;
  sub_1E58B41DC(v48, v50, v51);
  v53 = *(v67 + 8);
  v53(v48, v50);
  sub_1E58B41DC(v52, v50, v51);
  return (v53)(v52, v50);
}

uint64_t sub_1E59E48B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v86 = a1;
  v84 = a4;
  v6 = MEMORY[0x1E6981148];
  v98 = MEMORY[0x1E6981148];
  v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  v100 = v6;
  v101 = v99;
  v102 = v6;
  v103 = MEMORY[0x1E6981840];
  sub_1E5A2A6C4();
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView.FocusedButton();
  sub_1E5A2BD84();
  v96 = a3;
  v97 = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  v95 = swift_getWitnessTable();
  v93 = WitnessTable;
  v94 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v104 = sub_1E5A2AA84();
  swift_getTupleTypeMetadata();
  v79 = sub_1E5A2B864();
  v77 = swift_getWitnessTable();
  v8 = sub_1E5A2B604();
  v80 = *(v8 - 8);
  v9 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v64 - v10;
  v69 = v11;
  v75 = sub_1E5A2A6C4();
  v81 = *(v75 - 8);
  v12 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v83 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v64 - v15;
  v66 = sub_1E5A2A734();
  v65 = *(v66 - 8);
  v16 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFFB8, &qword_1E5A40538);
  v67 = *(v73 - 8);
  v19 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v21 = &v64 - v20;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFFC0, &qword_1E5A40540);
  v22 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v24 = &v64 - v23;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFFC8, &qword_1E5A40548);
  v25 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v27 = &v64 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFFD0, &qword_1E5A40550);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v64 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v64 - v34;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFFEB0, &qword_1E5A40408);
  v36 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v64 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v85 = &v64 - v39;
  v70 = a2;
  v71 = a3;
  v40 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView();
  sub_1E593B564(v86 + *(v40 + 36), v35);
  v41 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  if ((*(*(v41 - 8) + 48))(v35, 1, v41) == 1)
  {
    sub_1E58BAD14(v35, &qword_1ECFFC120, &qword_1E5A2FF10);
    sub_1E5A2A724();
    v42 = sub_1E59E7078();
    v43 = MEMORY[0x1E6981EF8];
    sub_1E5A2B394();
    (*(v65 + 8))(v18, v66);
    v44 = v67;
    v45 = v73;
    (*(v67 + 16))(v24, v21, v73);
    swift_storeEnumTagMultiPayload();
    sub_1E59E70CC();
    v98 = v43;
    v99 = v42;
    swift_getOpaqueTypeConformance2();
    sub_1E5A2AA74();
    sub_1E58BABA0(v27, v31, &qword_1ECFFFFC8, &qword_1E5A40548);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFFE8, &unk_1E5A40558);
    sub_1E59E7120();
    sub_1E59E7200();
    sub_1E5A2AA74();
    sub_1E58BAD14(v27, &qword_1ECFFFFC8, &qword_1E5A40548);
    (*(v44 + 8))(v21, v45);
  }

  else
  {
    v46 = v35[*(v41 + 44)];
    sub_1E59E7350(v35, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    if (v46)
    {
      if (v46 != 1)
      {
        swift_storeEnumTagMultiPayload();
        sub_1E59E70CC();
        v47 = sub_1E59E7078();
        v98 = MEMORY[0x1E6981EF8];
        v99 = v47;
        swift_getOpaqueTypeConformance2();
        sub_1E5A2AA74();
        sub_1E58BABA0(v27, v31, &qword_1ECFFFFC8, &qword_1E5A40548);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFFE8, &unk_1E5A40558);
        sub_1E59E7120();
        sub_1E59E7200();
        sub_1E5A2AA74();
        sub_1E58BAD14(v27, &qword_1ECFFFFC8, &qword_1E5A40548);
        goto LABEL_9;
      }

      LOBYTE(OpaqueTypeMetadata2) = 1;
    }

    else
    {
      LOBYTE(OpaqueTypeMetadata2) = 0;
    }

    sub_1E59E71AC();
    sub_1E5A2AA74();
    *v31 = v98;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFFE8, &unk_1E5A40558);
    sub_1E59E7120();
    sub_1E59E7200();
    sub_1E5A2AA74();
  }

LABEL_9:
  v48 = v71;
  v49 = v86;
  v50 = v70;
  v51 = v69;
  v52 = sub_1E5A2AA34();
  MEMORY[0x1EEE9AC00](v52);
  *(&v64 - 4) = v50;
  *(&v64 - 3) = v48;
  *(&v64 - 2) = v49;
  v53 = v78;
  sub_1E5A2B5F4();
  v54 = swift_getWitnessTable();
  v55 = v83;
  sub_1E5A2B324();
  (*(v80 + 8))(v53, v51);
  v89 = v54;
  v90 = MEMORY[0x1E697E5D8];
  v56 = v75;
  v57 = swift_getWitnessTable();
  v58 = v82;
  sub_1E58B41DC(v55, v56, v57);
  v59 = v81;
  v60 = *(v81 + 8);
  v60(v55, v56);
  v61 = v85;
  v62 = v76;
  sub_1E58BABA0(v85, v76, qword_1ECFFFEB0, &qword_1E5A40408);
  v98 = v62;
  (*(v59 + 16))(v55, v58, v56);
  v99 = v55;
  OpaqueTypeMetadata2 = v74;
  OpaqueTypeConformance2 = v56;
  v87 = sub_1E59E72C4();
  v88 = v57;
  sub_1E597DC00(&v98, 2uLL, &OpaqueTypeMetadata2);
  v60(v58, v56);
  sub_1E58BAD14(v61, qword_1ECFFFEB0, &qword_1E5A40408);
  v60(v55, v56);
  return sub_1E58BAD14(v62, qword_1ECFFFEB0, &qword_1E5A40408);
}

id sub_1E59E5574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v246 = a1;
  v236 = a4;
  v6 = sub_1E5A2BA14();
  v201 = *(v6 - 8);
  v202 = v6;
  v7 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v200 = &v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5A2B994();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v198 = &v191 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5A2B9C4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v231 = &v191 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v199 = &v191 - v17;
  v18 = sub_1E5A2A6C4();
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView.FocusedButton();
  v19 = sub_1E5A2BD84();
  v321 = a3;
  v322 = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  v320 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v294 = v18;
  v295 = v19;
  v296 = WitnessTable;
  v297 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v294 = v18;
  v295 = v19;
  v227 = v19;
  v228 = WitnessTable;
  v296 = WitnessTable;
  v297 = v21;
  v226 = v21;
  v23 = v246;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v294 = OpaqueTypeMetadata2;
  v295 = OpaqueTypeConformance2;
  v245 = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeMetadata2();
  v197 = *(v25 - 8);
  v26 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v196 = &v191 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v194 = &v191 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v195 = &v191 - v31;
  v32 = sub_1E5A29EB4();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v225 = &v191 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E5A2BB14();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v237 = &v191 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = *(a2 - 8);
  v38 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v219 = &v191 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = swift_checkMetadataState();
  v222 = *(v41 - 8);
  v223 = v41;
  v42 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v221 = &v191 - v43;
  v44 = swift_checkMetadataState();
  v232 = *(v44 - 8);
  v45 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v224 = &v191 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v193 = &v191 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v192 = &v191 - v50;
  v51 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v238 = &v191 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = v25;
  v55 = sub_1E5A2AA84();
  v234 = *(v55 - 8);
  v235 = v55;
  v56 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v244 = &v191 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v242 = &v191 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60 - 8);
  v218 = &v191 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v217 = &v191 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v191 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v191 - v69;
  v229 = a3;
  v230 = a2;
  v241 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView();
  v247 = v241[9];
  sub_1E593B564(&v247[v23], v70);
  v191 = v52;
  v71 = v52 + 48;
  v240 = *(v52 + 48);
  v72 = (v240)(v70, 1, v51);
  v248 = v51;
  v73 = v23;
  if (v72 == 1)
  {
    sub_1E58BAD14(v70, &qword_1ECFFC120, &qword_1E5A2FF10);
    v74 = 0;
    v75 = 0xE000000000000000;
  }

  else
  {
    v76 = &v70[*(v51 + 20)];
    v74 = *v76;
    v75 = v76[1];

    sub_1E59E7350(v70, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  }

  v243 = v44;
  v294 = v74;
  v295 = v75;
  v77 = sub_1E58D1C80();
  v78 = sub_1E5A2AFD4();
  v80 = v79;
  v82 = v81;
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    v239 = v77;
    sub_1E5A2AF34();
    v84 = sub_1E5A2AFA4();
    v252 = v85;
    v253 = v84;
    v216 = v86;
    v254 = v87;

    sub_1E58B3C9C(v78, v80, v82 & 1);

    sub_1E5A2B7E4();
    sub_1E5A2A5B4();
    v212 = v323;
    v213 = v325;
    v214 = v328;
    v215 = v327;
    v319 = 1;
    v317 = v324;
    v315 = v326;
    sub_1E593B564(&v247[v73], v67);
    v88 = v248;
    v89 = (v240)(v67, 1, v248);
    v203 = v71;
    if (v89 == 1)
    {
      sub_1E58BAD14(v67, &qword_1ECFFC120, &qword_1E5A2FF10);
      v90 = 0;
      v91 = 0xE000000000000000;
    }

    else
    {
      v92 = &v67[*(v88 + 24)];
      v90 = *v92;
      v91 = v92[1];

      sub_1E59E7350(v67, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    }

    v93 = v241;
    v294 = v90;
    v295 = v91;
    v94 = sub_1E5A2AFD4();
    v96 = v95;
    v98 = v97;
    LODWORD(v294) = sub_1E5A2AB84();
    v99 = sub_1E5A2AF84();
    v249 = v100;
    v250 = v99;
    v210 = v101;
    v251 = v102;
    sub_1E58B3C9C(v94, v96, v98 & 1);

    sub_1E5A2B7E4();
    sub_1E5A2A5B4();
    v205 = v329;
    v206 = v331;
    v207 = v334;
    v208 = v333;
    v313 = 1;
    v311 = v330;
    v309 = v332;
    v294 = sub_1E59E3A34(v93);
    v295 = v103;
    v104 = sub_1E5A2AFD4();
    v106 = v105;
    v108 = v107;
    sub_1E5A2AED4();
    v109 = sub_1E5A2AFA4();
    v111 = v110;
    v113 = v112;

    sub_1E58B3C9C(v104, v106, v108 & 1);

    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v294 = qword_1ED026498;

    v209 = sub_1E5A2AF84();
    v239 = v114;
    v204 = v115;
    v211 = v116;
    sub_1E58B3C9C(v109, v111, v113 & 1);

    v117 = v246;
    v118 = v217;
    sub_1E593B564(&v247[v246], v217);
    v119 = v248;
    v120 = (v240)(v118, 1, v248);
    v121 = v238;
    v122 = v218;
    if (v120 == 1)
    {
      sub_1E58BAD14(v118, &qword_1ECFFC120, &qword_1E5A2FF10);
      v123 = v241;
      v124 = v241[10];
      v125 = (v117 + v241[11]);
      v127 = *v125;
      v126 = v125[1];
      v248 = v127;
      v240 = v126;
      v128 = *(v117 + v124);
      sub_1E5A2BA84();
      if (qword_1EE2CFA28 != -1)
      {
        swift_once();
      }

      v129 = qword_1EE2D33E0;
      v130 = *(v117 + 8);
      swift_getKeyPath();

      v131 = v129;
      sub_1E5A2B944();

      v132 = sub_1E5A2BB64();
      v133 = v219;
      (v248)(&v247[v117], v128, v132, v134);

      sub_1E5A2B7E4();
      v135 = v221;
      v136 = v230;
      sub_1E5A2B2D4();
      (*(v220 + 8))(v133, v136);
      v294 = sub_1E59E396C(v123);
      v295 = v137;
      LOBYTE(v296) = v138 & 1;
      LOBYTE(v279) = 0;
      swift_checkMetadataState();
      v139 = v193;
      v140 = v223;
      sub_1E5A2B304();

      (*(v222 + 8))(v135, v140);
      v141 = v192;
      v142 = v243;
      v143 = v245;
      sub_1E58B41DC(v139, v243, v245);
      v144 = *(v232 + 8);
      v144(v139, v142);
      sub_1E58B41DC(v141, v142, v143);
      v294 = v142;
      v295 = v143;
      swift_getOpaqueTypeConformance2();
      sub_1E595ECB8(v139, v233, v142);
      v144(v139, v142);
      v144(v141, v142);
    }

    else
    {
      sub_1E593CD50(v118, v238);
      v145 = v241;
      v146 = (v117 + v241[11]);
      v148 = *v146;
      v147 = v146[1];
      v247 = v148;
      v240 = v147;
      sub_1E59D2018(v121, v122);
      (*(v191 + 56))(v122, 0, 1, v119);
      v217 = *(v117 + *(v145 + 40));
      sub_1E5A2BA84();
      if (qword_1EE2CFA28 != -1)
      {
        swift_once();
      }

      v149 = qword_1EE2D33E0;
      v150 = *(v117 + 8);
      swift_getKeyPath();

      v151 = v149;
      sub_1E5A2B944();

      v152 = sub_1E5A2BB64();
      v153 = v219;
      (v247)(v122, v217, v152, v154);

      sub_1E58BAD14(v122, &qword_1ECFFC120, &qword_1E5A2FF10);
      sub_1E5A2B7E4();
      v155 = v221;
      v156 = v230;
      sub_1E5A2B2D4();
      (*(v220 + 8))(v153, v156);
      v294 = sub_1E59E396C(v145);
      v295 = v157;
      LOBYTE(v296) = v158 & 1;
      LOBYTE(v279) = 0;
      swift_checkMetadataState();
      v159 = v223;
      sub_1E5A2B304();

      (*(v222 + 8))(v155, v159);
      *(v121 + *(v248 + 44));
      sub_1E5A2B9B4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E5A303B0;
      *(inited + 32) = 1701667182;
      *(inited + 40) = 0xE400000000000000;
      sub_1E5A2BA84();
      v161 = qword_1EE2D33E0;
      v162 = *(v117 + 8);
      swift_getKeyPath();

      v163 = v161;
      sub_1E5A2B944();

      *(inited + 48) = sub_1E5A2BB64();
      *(inited + 56) = v164;
      v165 = MEMORY[0x1E69E6158];
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 80) = 0x6973736572706D69;
      v166 = MEMORY[0x1E69E6530];
      *(inited + 88) = 0xEF7865646E496E6FLL;
      *(inited + 96) = 0;
      *(inited + 120) = v166;
      strcpy((inited + 128), "impressionType");
      *(inited + 168) = v165;
      *(inited + 143) = -18;
      *(inited + 144) = 0x6E6F74747562;
      *(inited + 152) = 0xE600000000000000;
      sub_1E590DF48(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
      swift_arrayDestroy();
      sub_1E5A2B984();
      v167 = MEMORY[0x1E69E7CC0];
      sub_1E590DF48(MEMORY[0x1E69E7CC0]);
      sub_1E590DF48(v167);
      v168 = v199;
      sub_1E5A2B9D4();
      v169 = sub_1E5A2B9E4();
      (*(*(v169 - 8) + 56))(v168, 0, 1, v169);
      v170 = v200;
      sub_1E5A2B9F4();
      v171 = v194;
      v172 = v243;
      v173 = v245;
      v174 = v224;
      sub_1E5A2B014();
      (*(v201 + 8))(v170, v202);
      sub_1E58BAD14(v168, &qword_1ECFFB550, &qword_1E5A304B0);
      (*(v232 + 8))(v174, v172);
      v294 = v172;
      v295 = v173;
      v175 = swift_getOpaqueTypeConformance2();
      v176 = v195;
      v177 = v233;
      sub_1E58B41DC(v171, v233, v175);
      v178 = *(v197 + 8);
      v178(v171, v177);
      v179 = v196;
      sub_1E58B41DC(v176, v177, v175);
      sub_1E595EBC0(v179, v177);
      v178(v179, v177);
      v178(v176, v177);
      sub_1E59E7350(v238, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    }

    v303 = v253;
    v304 = v252;
    LODWORD(v247) = v216 & 1;
    v305 = v216 & 1;
    v306 = v254;
    v307[0] = &v303;
    LOBYTE(v295) = v319;
    *(&v295 + 1) = *v318;
    HIDWORD(v295) = *&v318[3];
    v296 = v212;
    LOBYTE(v297) = v317;
    *(&v297 + 1) = *v316;
    HIDWORD(v297) = *&v316[3];
    v298 = v213;
    v299 = v315;
    *&v300[3] = *&v314[3];
    *v300 = *v314;
    v301 = v215;
    v302 = v214;
    v290 = v250;
    v291 = v249;
    LODWORD(v248) = v210 & 1;
    v292 = v210 & 1;
    v293 = v251;
    v294 = 0;
    v307[1] = &v294;
    v307[2] = &v290;
    v280 = v313;
    *v281 = *v312;
    *&v281[3] = *&v312[3];
    v282 = v205;
    v283 = v311;
    *v284 = *v310;
    *&v284[3] = *&v310[3];
    v285 = v206;
    v286 = v309;
    *&v287[3] = *&v308[3];
    *v287 = *v308;
    v288 = v208;
    v289 = v207;
    v180 = v209;
    v181 = v239;
    v275 = v209;
    v276 = v239;
    LODWORD(v246) = v204 & 1;
    v277 = v204 & 1;
    v278 = v211;
    v279 = 0;
    v307[3] = &v279;
    v307[4] = &v275;
    v273 = 0;
    v274 = 1;
    v307[5] = &v273;
    v183 = v234;
    v182 = v235;
    v184 = v244;
    v185 = v242;
    (*(v234 + 16))(v244, v242, v235);
    v307[6] = v184;
    sub_1E594C9E8(v253, v252, v247);

    sub_1E594C9E8(v250, v249, v248);

    v186 = v181;
    LOBYTE(v181) = v246;
    sub_1E594C9E8(v180, v186, v246);

    v187 = MEMORY[0x1E6981148];
    v266 = MEMORY[0x1E6981148];
    v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
    v268 = v187;
    v269 = v267;
    v270 = v187;
    v271 = MEMORY[0x1E6981840];
    v272 = v182;
    v188 = MEMORY[0x1E6981138];
    v259 = MEMORY[0x1E6981138];
    v260 = sub_1E594C9F8();
    v261 = v188;
    v262 = v260;
    v263 = v188;
    v264 = MEMORY[0x1E6981838];
    v189 = v245;
    v257 = v243;
    v258 = v245;
    v255 = swift_getOpaqueTypeConformance2();
    v256 = v189;
    v265 = swift_getWitnessTable();
    sub_1E597DC00(v307, 7uLL, &v266);
    sub_1E58B3C9C(v180, v239, v181);

    sub_1E58B3C9C(v250, v249, v248);

    sub_1E58B3C9C(v253, v252, v247);

    v190 = *(v183 + 8);
    v190(v185, v182);
    v190(v244, v182);
    sub_1E58B3C9C(v275, v276, v277);

    sub_1E58B3C9C(v290, v291, v292);

    sub_1E58B3C9C(v303, v304, v305);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E59E6E14(uint64_t a1)
{
  sub_1E59E6F68();
  if (v2 <= 0x3F)
  {
    sub_1E593C91C();
    if (v3 <= 0x3F)
    {
      sub_1E59E700C();
      if (v4 <= 0x3F)
      {
        v5 = *(a1 + 16);
        v6 = *(a1 + 24);
        type metadata accessor for TVPersonalizedWorkoutPlanCandidateView.FocusedButton();
        sub_1E5A2BD84();
        swift_getWitnessTable();
        swift_getWitnessTable();
        sub_1E5A2A454();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E59E6F68()
{
  if (!qword_1EE2CFB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE258, &unk_1E5A39330);
    sub_1E58CD164(&qword_1EE2CFA98, &qword_1ECFFE258, &unk_1E5A39330);
    v0 = sub_1E5A2A664();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2CFB20);
    }
  }
}

unint64_t sub_1E59E700C()
{
  result = qword_1EE2CFA20;
  if (!qword_1EE2CFA20)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE2CFA20);
  }

  return result;
}

unint64_t sub_1E59E7078()
{
  result = qword_1ECFFFFD8;
  if (!qword_1ECFFFFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFFD8);
  }

  return result;
}

unint64_t sub_1E59E70CC()
{
  result = qword_1ECFFFFE0;
  if (!qword_1ECFFFFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFFE0);
  }

  return result;
}

unint64_t sub_1E59E7120()
{
  result = qword_1ECFFFFF0;
  if (!qword_1ECFFFFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFFE8, &unk_1E5A40558);
    sub_1E59E71AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFFF0);
  }

  return result;
}

unint64_t sub_1E59E71AC()
{
  result = qword_1ECFFFFF8;
  if (!qword_1ECFFFFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFFF8);
  }

  return result;
}

unint64_t sub_1E59E7200()
{
  result = qword_1ED000000;
  if (!qword_1ED000000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFFC8, &qword_1E5A40548);
    sub_1E59E70CC();
    sub_1E59E7078();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000000);
  }

  return result;
}

unint64_t sub_1E59E72C4()
{
  result = qword_1ED000008;
  if (!qword_1ED000008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFFFEB0, &qword_1E5A40408);
    sub_1E59E7120();
    sub_1E59E7200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000008);
  }

  return result;
}

uint64_t sub_1E59E7350(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

FitnessWorkoutPlan::CreateWorkoutPlanHandoffAlertState __swiftcall CreateWorkoutPlanHandoffAlertState.init(iconState:isPresentingAlert:)(FitnessWorkoutPlan::HandoffAlertIconState iconState, Swift::Bool isPresentingAlert)
{
  *v2 = iconState & 1;
  v2[1] = isPresentingAlert;
  result.iconState = iconState;
  return result;
}

unint64_t sub_1E59E744C()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x746174536E6F6369;
  }

  *v0;
  return result;
}

uint64_t sub_1E59E7490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746174536E6F6369 && a2 == 0xE900000000000065;
  if (v6 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5A47250 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();

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

uint64_t sub_1E59E757C(uint64_t a1)
{
  v2 = sub_1E59E7984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59E75B8(uint64_t a1)
{
  v2 = sub_1E59E7984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CreateWorkoutPlanHandoffAlertState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000010, &qword_1E5A40590);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59E7984();
  sub_1E5A2C224();
  v16 = v9;
  v15 = 0;
  sub_1E59E79D8();
  sub_1E5A2C0B4();
  if (!v2)
  {
    v14 = 1;
    sub_1E5A2C074();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t CreateWorkoutPlanHandoffAlertState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000028, &qword_1E5A40598);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59E7984();
  sub_1E5A2C214();
  if (!v2)
  {
    v16 = 0;
    sub_1E59E7A2C();
    sub_1E5A2BFE4();
    v11 = v17;
    v15 = 1;
    v13 = sub_1E5A2BFA4();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E59E7984()
{
  result = qword_1ED000018;
  if (!qword_1ED000018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000018);
  }

  return result;
}

unint64_t sub_1E59E79D8()
{
  result = qword_1ED000020;
  if (!qword_1ED000020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000020);
  }

  return result;
}

unint64_t sub_1E59E7A2C()
{
  result = qword_1ED000030;
  if (!qword_1ED000030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000030);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CreateWorkoutPlanHandoffAlertState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for CreateWorkoutPlanHandoffAlertState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_1E59E7C00()
{
  result = qword_1ED000038;
  if (!qword_1ED000038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000038);
  }

  return result;
}

unint64_t sub_1E59E7C58()
{
  result = qword_1ED000040;
  if (!qword_1ED000040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000040);
  }

  return result;
}

unint64_t sub_1E59E7CB0()
{
  result = qword_1ED000048;
  if (!qword_1ED000048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000048);
  }

  return result;
}

uint64_t WorkoutPlanItemContext.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1E58B413C();
  return v1;
}

uint64_t sub_1E59E7D48()
{
  if (*v0)
  {
    result = 0x6C6F686563616C70;
  }

  else
  {
    result = 1835365481;
  }

  *v0;
  return result;
}

uint64_t sub_1E59E7D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();

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

uint64_t sub_1E59E7E64(uint64_t a1)
{
  v2 = sub_1E59E8A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59E7EA0(uint64_t a1)
{
  v2 = sub_1E59E8A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E59E7EDC(uint64_t a1)
{
  v2 = sub_1E59E8B1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59E7F18(uint64_t a1)
{
  v2 = sub_1E59E8B1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E59E7F54(uint64_t a1)
{
  v2 = sub_1E59E8AC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59E7F90(uint64_t a1)
{
  v2 = sub_1E59E8AC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanItemContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000050, &qword_1E5A40780);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000058, &qword_1E5A40788);
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000060, &qword_1E5A40790);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = *v1;
  v27 = v1[1];
  v28 = v15;
  v16 = *(v1 + 16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59E8A74();
  sub_1E5A2C224();
  if (v16)
  {
    v30 = 1;
    sub_1E59E8AC8();
    v18 = v24;
    sub_1E5A2C024();
    v19 = v26;
    sub_1E5A2C064();
    (*(v25 + 8))(v18, v19);
  }

  else
  {
    v29 = 0;
    sub_1E59E8B1C();
    sub_1E5A2C024();
    v20 = v23;
    sub_1E5A2C064();
    (*(v22 + 8))(v9, v20);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t WorkoutPlanItemContext.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1E6932DE0](*(v0 + 16));

  return sub_1E5A2BB74();
}

uint64_t WorkoutPlanItemContext.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v3);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t WorkoutPlanItemContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000080, &qword_1E5A40798);
  v37 = *(v35 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000088, &qword_1E5A407A0);
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000090, &unk_1E5A407A8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E59E8A74();
  v17 = v39;
  sub_1E5A2C214();
  if (!v17)
  {
    v39 = v11;
    v18 = sub_1E5A2C004();
    v19 = (2 * *(v18 + 16)) | 1;
    v41 = v18;
    v42 = v18 + 32;
    v43 = 0;
    v44 = v19;
    v20 = sub_1E58BC5B4();
    v21 = v10;
    if (v20 == 2 || v43 != v44 >> 1)
    {
      v28 = sub_1E5A2BE84();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
      *v30 = &type metadata for WorkoutPlanItemContext;
      sub_1E5A2BF54();
      sub_1E5A2BE74();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v39 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = v20;
      if (v20)
      {
        v46 = 1;
        sub_1E59E8AC8();
        sub_1E5A2BF44();
        v23 = v38;
        v22 = v39;
        v24 = v35;
        v25 = sub_1E5A2BF94();
        v27 = v26;
        (*(v37 + 8))(v5, v24);
      }

      else
      {
        v46 = 0;
        sub_1E59E8B1C();
        v33 = v9;
        sub_1E5A2BF44();
        v23 = v38;
        v22 = v39;
        v25 = sub_1E5A2BF94();
        v27 = v34;
        (*(v36 + 8))(v33, v6);
      }

      (*(v22 + 8))(v14, v21);
      swift_unknownObjectRelease();
      *v23 = v25;
      *(v23 + 8) = v27;
      *(v23 + 16) = v45 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t _s18FitnessWorkoutPlan0bC11ItemContextO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    v9 = *a2;
    v10 = a2[1];
    sub_1E58B413C();
    sub_1E58B413C();
    sub_1E591CB8C();
    sub_1E591CB8C();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v14 = sub_1E5A2C114();
    sub_1E58B413C();
    sub_1E58B413C();
    sub_1E591CB8C();
    sub_1E591CB8C();
    return v14 & 1;
  }

LABEL_15:
  sub_1E58B413C();
  sub_1E58B413C();
  sub_1E591CB8C();
  sub_1E591CB8C();
  return 1;
}

unint64_t sub_1E59E8A74()
{
  result = qword_1ED000068;
  if (!qword_1ED000068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000068);
  }

  return result;
}

unint64_t sub_1E59E8AC8()
{
  result = qword_1ED000070;
  if (!qword_1ED000070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000070);
  }

  return result;
}

unint64_t sub_1E59E8B1C()
{
  result = qword_1ED000078;
  if (!qword_1ED000078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000078);
  }

  return result;
}

unint64_t sub_1E59E8B74()
{
  result = qword_1ED000098;
  if (!qword_1ED000098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000098);
  }

  return result;
}

unint64_t sub_1E59E8C14()
{
  result = qword_1ED0000A0;
  if (!qword_1ED0000A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0000A0);
  }

  return result;
}

unint64_t sub_1E59E8C6C()
{
  result = qword_1ED0000A8;
  if (!qword_1ED0000A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0000A8);
  }

  return result;
}

unint64_t sub_1E59E8CC4()
{
  result = qword_1ED0000B0;
  if (!qword_1ED0000B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0000B0);
  }

  return result;
}

unint64_t sub_1E59E8D1C()
{
  result = qword_1ED0000B8;
  if (!qword_1ED0000B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0000B8);
  }

  return result;
}

unint64_t sub_1E59E8D74()
{
  result = qword_1ED0000C0;
  if (!qword_1ED0000C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0000C0);
  }

  return result;
}

unint64_t sub_1E59E8DCC()
{
  result = qword_1ED0000C8;
  if (!qword_1ED0000C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0000C8);
  }

  return result;
}

unint64_t sub_1E59E8E24()
{
  result = qword_1ED0000D0;
  if (!qword_1ED0000D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0000D0);
  }

  return result;
}

unint64_t sub_1E59E8E7C()
{
  result = qword_1ED0000D8;
  if (!qword_1ED0000D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0000D8);
  }

  return result;
}

unint64_t sub_1E59E8ED4()
{
  result = qword_1ED0000E0;
  if (!qword_1ED0000E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0000E0);
  }

  return result;
}

uint64_t sub_1E59E8F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  v7 = sub_1E5A2C204();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1E5A2C114() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1E59E9034(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v3);
  v5 = sub_1E5A2C204();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1E59E9100(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_1E5A2B774();
      v5 = sub_1E5A2BC24();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v12 = sub_1E5A2B774();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_1E59E925C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);

  return sub_1E5A2A4F4();
}

uint64_t sub_1E59E9304(uint64_t a1)
{
  v2 = sub_1E5A2A644();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v5);
  sub_1E5A2B514();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1E59E93FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF28, qword_1E5A2FAE0);
  sub_1E5A2B514();
  return v1;
}

uint64_t sub_1E59E9454(uint64_t a1)
{
  v2 = (v1 + *(a1 + 68));
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000360, &qword_1E5A41150);
  sub_1E5A2B524();
  return v4;
}

uint64_t sub_1E59E94C0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 68));
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000360, &qword_1E5A41150);
  sub_1E5A2B544();
  return v4;
}

uint64_t WorkoutPlanCreationView.init(store:dateComponentsFormatter:artworkViewBuilder:marketingButtonViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, __int128 a10, uint64_t a11)
{
  v35 = a7;
  v34 = a10;
  v19 = sub_1E5A2A644();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA0, &unk_1E5A2FBB0);
  swift_storeEnumTagMultiPayload();
  v36 = a8;
  v37 = v34;
  v38 = a11;
  v23 = type metadata accessor for WorkoutPlanCreationView();
  v24 = v23[13];
  *(a9 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  swift_storeEnumTagMultiPayload();
  v25 = v23[16];
  sub_1E5A2A634();
  sub_1E59E9304(v22);
  v26 = a9 + v23[17];
  *v26 = sub_1E59E93FC();
  v26[8] = v27 & 1;
  *(v26 + 2) = v28;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  v30 = a9 + v23[14];
  *v30 = sub_1E58D2CB8;
  *(v30 + 1) = result;
  v30[16] = 0;
  v31 = (a9 + v23[18]);
  *v31 = a4;
  v31[1] = a5;
  *(a9 + v23[15]) = a3;
  v32 = (a9 + v23[19]);
  v33 = v35;
  *v32 = a6;
  v32[1] = v33;
  return result;
}

uint64_t sub_1E59E970C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v9 = *(v5 + *(a2 + 60));
  [v9 setUnitsStyle_];
  [v9 setAllowedUnits_];
  a5(a1);
  v10 = [v9 stringFromTimeInterval_];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = sub_1E5A2BB44();

  return v12;
}

uint64_t sub_1E59E97B8(uint64_t a1)
{
  v3 = sub_1E5A2B764();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1E5A2B774();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5A2A684();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1 + *(a1 + 52);
  sub_1E58CD1AC(v15);
  v17 = (*(v12 + 88))(v15, v11);
  if (v17 == *MEMORY[0x1E697E718] || v17 == *MEMORY[0x1E697E6F0] || v17 == *MEMORY[0x1E697E6F8] || v17 == *MEMORY[0x1E697E6E8])
  {
    sub_1E59E925C(a1);
    swift_getKeyPath();
    sub_1E5A2B944();

    if (v29 < 3u)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }
  }

  else
  {
    v22 = v17;
    v27 = v3;
    v23 = *MEMORY[0x1E697E708];
    sub_1E59E925C(a1);
    swift_getKeyPath();
    if (v22 == v23 || v22 == *MEMORY[0x1E697E720] || v22 == *MEMORY[0x1E697E728] || v22 == *MEMORY[0x1E697E6C0] || v22 == *MEMORY[0x1E697E6C8] || v22 == *MEMORY[0x1E697E6D0] || v22 == *MEMORY[0x1E697E6D8] || v22 == *MEMORY[0x1E697E6E0])
    {
      sub_1E5A2B944();

      if (v30 < 3u)
      {
        v21 = 2;
      }

      else
      {
        v21 = 3;
      }
    }

    else
    {
      sub_1E5A2B944();

      if (v31 < 3u)
      {
        v21 = 3;
      }

      else
      {
        v21 = 4;
      }

      (*(v12 + 8))(v15, v11);
    }

    v3 = v27;
  }

  v24 = v28;
  *v6 = xmmword_1E5A3EA30;
  (*(v24 + 104))(v6, *MEMORY[0x1E697D748], v3);
  sub_1E5A2B784();
  return sub_1E59E9100(v10, v21);
}

uint64_t sub_1E59E9B90(uint64_t a1)
{
  sub_1E59E925C(a1);
  swift_getKeyPath();
  sub_1E5A2B934();

  if (v3 != 1)
  {
    return sub_1E5A2B454();
  }

  v1 = [objc_opt_self() secondarySystemBackgroundColor];
  return sub_1E5A2B474();
}

double sub_1E59E9C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E59E925C(a3);
  swift_getKeyPath();
  sub_1E5A2B934();

  LOBYTE(a2) = sub_1E59E8F3C(a1, a2, v6);

  result = 0.0;
  if (a2)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_1E59E9CB4(uint64_t a1)
{
  v2 = sub_1E5A29EB4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5A2BB14();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E59E925C(a1);
  swift_getKeyPath();
  sub_1E5A2B934();

  if (v8)
  {
    sub_1E58D1C80();
    return sub_1E5A2AFD4();
  }

  else
  {
    sub_1E5A2BA84();
    if (qword_1EE2CFA28 != -1)
    {
      swift_once();
    }

    v7 = qword_1EE2D33E0;
    sub_1E59E925C(a1);
    swift_getKeyPath();
    sub_1E5A2B944();

    return sub_1E5A2AF64();
  }
}

uint64_t WorkoutPlanCreationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v98 = a1;
  v2 = (a1 - 8);
  v97 = *(a1 - 8);
  v3 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v113 = v4;
  v96 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  v5 = *(*(v110 - 1) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v94 - v6;
  v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFED40, &qword_1E5A3C098);
  v107 = sub_1E5A2A644();
  v115 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0000E8, &qword_1E5A40D20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0000F0, &qword_1E5A40D28);
  *&v117 = v2[4];
  sub_1E5A2AA84();
  sub_1E5A2B494();
  v7 = sub_1E5A2A6C4();
  v8 = sub_1E58CD164(&qword_1ED0000F8, &qword_1ED0000F0, &qword_1E5A40D28);
  v9 = v2[6];
  v134 = v8;
  v135 = v9;
  v108 = MEMORY[0x1E697F968];
  WitnessTable = swift_getWitnessTable();
  v106 = MEMORY[0x1E6981600];
  v131 = swift_getWitnessTable();
  v132 = MEMORY[0x1E697E5D8];
  v111 = MEMORY[0x1E697E858];
  v10 = swift_getWitnessTable();
  *&v127 = v7;
  *(&v127 + 1) = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v103 = OpaqueTypeMetadata2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000100, &qword_1E5A40D30);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000108, &qword_1E5A40D38);
  v14 = sub_1E58CD164(&qword_1ED000110, &qword_1ED000108, &qword_1E5A40D38);
  *&v127 = v13;
  *(&v127 + 1) = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v127 = v12;
  *(&v127 + 1) = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v102 = v16;
  *&v127 = v7;
  *(&v127 + 1) = v10;
  v101 = swift_getOpaqueTypeConformance2();
  *&v127 = v115;
  *(&v127 + 1) = OpaqueTypeMetadata2;
  *&v128 = v16;
  *(&v128 + 1) = v101;
  v105 = swift_getOpaqueTypeMetadata2();
  *&v17 = v2[5];
  *&v18 = v2[3];
  *(&v18 + 1) = v117;
  v116 = v18;
  *(&v17 + 1) = v9;
  v117 = v17;
  v127 = v18;
  v128 = v17;
  v19 = type metadata accessor for WorkoutPlanScheduleReviewView();
  v20 = swift_getWitnessTable();
  *&v127 = v19;
  *(&v127 + 1) = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  *&v127 = v19;
  *(&v127 + 1) = v20;
  v22 = swift_getOpaqueTypeConformance2();
  *&v127 = v21;
  *(&v127 + 1) = v22;
  v104 = MEMORY[0x1E697D448];
  v23 = swift_getOpaqueTypeMetadata2();
  *&v127 = v21;
  *(&v127 + 1) = v22;
  v24 = swift_getOpaqueTypeConformance2();
  *&v127 = v23;
  *(&v127 + 1) = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000118, &qword_1E5A40D40);
  *&v127 = v23;
  *(&v127 + 1) = v24;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000120, &unk_1E5A40D48);
  v29 = sub_1E59F6A70();
  *&v127 = v28;
  *(&v127 + 1) = v29;
  v100 = MEMORY[0x1E697C790];
  v30 = swift_getOpaqueTypeConformance2();
  *&v127 = v25;
  *(&v127 + 1) = v26;
  *&v128 = v27;
  *(&v128 + 1) = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  *&v127 = v115;
  *(&v127 + 1) = v103;
  *&v128 = v102;
  *(&v128 + 1) = v101;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_1E59F6B64();
  *&v127 = v25;
  *(&v127 + 1) = v26;
  *&v128 = v27;
  *(&v128 + 1) = v30;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v105;
  *&v127 = v105;
  *(&v127 + 1) = &type metadata for WorkoutPlanCreationRoute;
  *&v128 = v31;
  *(&v128 + 1) = v32;
  v129 = v33;
  v130 = v34;
  v36 = swift_getOpaqueTypeMetadata2();
  *&v127 = v35;
  *(&v127 + 1) = &type metadata for WorkoutPlanCreationRoute;
  *&v128 = v31;
  *(&v128 + 1) = v32;
  v129 = v33;
  v130 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  *&v127 = v36;
  *(&v127 + 1) = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  *&v127 = v36;
  *(&v127 + 1) = v37;
  v39 = swift_getOpaqueTypeConformance2();
  *&v127 = v38;
  *(&v127 + 1) = v39;
  v40 = swift_getOpaqueTypeMetadata2();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000140, &qword_1E5A40D58);
  *&v127 = v38;
  *(&v127 + 1) = v39;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE9F0, &qword_1E5A3B340);
  v44 = sub_1E58CD164(&qword_1ED000130, &qword_1ECFFE9F0, &qword_1E5A3B340);
  *&v127 = v43;
  *(&v127 + 1) = v44;
  v45 = swift_getOpaqueTypeConformance2();
  *&v127 = v40;
  *(&v127 + 1) = v41;
  *&v128 = v42;
  *(&v128 + 1) = v45;
  swift_getOpaqueTypeMetadata2();
  *&v127 = v40;
  *(&v127 + 1) = v41;
  *&v128 = v42;
  *(&v128 + 1) = v45;
  swift_getOpaqueTypeConformance2();
  v46 = v110;
  sub_1E5A2A6F4();
  sub_1E5A2AA84();
  v47 = sub_1E5A2B494();
  v109 = *(v47 - 8);
  v48 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v94 - v49;
  v51 = sub_1E58CD164(qword_1ECFFED48, &qword_1ECFFED40, &qword_1E5A3C098);
  v52 = swift_getWitnessTable();
  v125 = v51;
  v126 = v52;
  v124 = swift_getWitnessTable();
  v53 = swift_getWitnessTable();
  v54 = sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0);
  *&v127 = v47;
  *(&v127 + 1) = v46;
  *&v128 = v53;
  *(&v128 + 1) = v54;
  v55 = swift_getOpaqueTypeMetadata2();
  v102 = *(v55 - 8);
  v56 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v95 = &v94 - v57;
  v103 = v58;
  v59 = sub_1E5A2A6C4();
  v107 = *(v59 - 8);
  v60 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v115 = &v94 - v61;
  *&v127 = v47;
  *(&v127 + 1) = v46;
  v101 = v53;
  *&v128 = v53;
  *(&v128 + 1) = v54;
  v62 = v112;
  v100 = swift_getOpaqueTypeConformance2();
  v122 = v100;
  v123 = MEMORY[0x1E69805D0];
  v63 = swift_getWitnessTable();
  *&v127 = v59;
  *(&v127 + 1) = MEMORY[0x1E69E6370];
  v106 = v63;
  *&v128 = v63;
  *(&v128 + 1) = MEMORY[0x1E69E6388];
  v111 = swift_getOpaqueTypeMetadata2();
  v108 = *(v111 - 8);
  v64 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v104 = &v94 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v105 = &v94 - v67;
  v119 = v117;
  v118 = v116;
  v68 = v114;
  v120 = v114;
  v69 = v50;
  sub_1E5A2B484();
  v70 = *MEMORY[0x1E697E728];
  v71 = sub_1E5A2A684();
  (*(*(v71 - 8) + 104))(v62, v70, v71);
  sub_1E59F922C(&qword_1ECFFBF40, MEMORY[0x1E697E730]);
  result = sub_1E5A2BA74();
  if (result)
  {
    v73 = v95;
    sub_1E5A2B164();
    sub_1E58BAD14(v62, &qword_1ECFFCE80, &qword_1E5A35BC0);
    (*(v109 + 8))(v69, v47);
    v74 = v97;
    v110 = *(v97 + 16);
    v112 = v59;
    v75 = v96;
    v76 = v98;
    (v110)(v96, v68, v98);
    v77 = (*(v74 + 80) + 48) & ~*(v74 + 80);
    v78 = swift_allocObject();
    v79 = v117;
    *(v78 + 16) = v116;
    *(v78 + 32) = v79;
    v109 = *(v74 + 32);
    (v109)(v78 + v77, v75, v76);
    v80 = v103;
    sub_1E5A2B364();

    (*(v102 + 8))(v73, v80);
    v81 = v114;
    sub_1E59E925C(v76);
    swift_getKeyPath();
    sub_1E5A2B934();

    v121 = v127;
    (v110)(v75, v81, v76);
    v82 = swift_allocObject();
    v83 = v117;
    *(v82 + 16) = v116;
    *(v82 + 32) = v83;
    (v109)(v82 + v77, v75, v76);
    v84 = v104;
    v85 = v112;
    v86 = MEMORY[0x1E69E6370];
    v87 = v106;
    v88 = MEMORY[0x1E69E6388];
    v89 = v115;
    sub_1E5A2B374();

    (*(v107 + 8))(v89, v85);
    *&v127 = v85;
    *(&v127 + 1) = v86;
    *&v128 = v87;
    *(&v128 + 1) = v88;
    v90 = swift_getOpaqueTypeConformance2();
    v91 = v105;
    v92 = v111;
    sub_1E58B41DC(v84, v111, v90);
    v93 = *(v108 + 8);
    v93(v84, v92);
    sub_1E58B41DC(v91, v92, v90);
    return (v93)(v91, v92);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E59EAE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v87 = a3;
  v88 = a4;
  v86 = a2;
  v83 = a1;
  v84 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0001E8, &qword_1E5A40E58);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v75[1] = v75 - v9;
  v82 = sub_1E5A2A644();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0000E8, &qword_1E5A40D20);
  v79 = v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0000F0, &qword_1E5A40D28);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  v11 = sub_1E5A2A6C4();
  v100 = sub_1E58CD164(&qword_1ED0000F8, &qword_1ED0000F0, &qword_1E5A40D28);
  v101 = a5;
  v85 = a5;
  WitnessTable = swift_getWitnessTable();
  v97 = swift_getWitnessTable();
  v98 = MEMORY[0x1E697E5D8];
  v12 = swift_getWitnessTable();
  v91 = v11;
  v92 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v78 = OpaqueTypeMetadata2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000100, &qword_1E5A40D30);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000108, &qword_1E5A40D38);
  v16 = sub_1E58CD164(&qword_1ED000110, &qword_1ED000108, &qword_1E5A40D38);
  v91 = v15;
  v92 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = v14;
  v92 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v77 = v18;
  v91 = v11;
  v92 = v12;
  v76 = swift_getOpaqueTypeConformance2();
  v91 = v10;
  v92 = OpaqueTypeMetadata2;
  v93 = v18;
  v94 = v76;
  v81 = swift_getOpaqueTypeMetadata2();
  v91 = v86;
  v92 = v87;
  v93 = v88;
  v94 = a5;
  v19 = type metadata accessor for WorkoutPlanScheduleReviewView();
  v20 = swift_getWitnessTable();
  v91 = v19;
  v92 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v91 = v19;
  v92 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v91 = v21;
  v92 = v22;
  v80 = MEMORY[0x1E697D448];
  v23 = swift_getOpaqueTypeMetadata2();
  v91 = v21;
  v92 = v22;
  v24 = swift_getOpaqueTypeConformance2();
  v91 = v23;
  v92 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000118, &qword_1E5A40D40);
  v91 = v23;
  v92 = v24;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000120, &unk_1E5A40D48);
  v29 = sub_1E59F6A70();
  v91 = v28;
  v92 = v29;
  v75[2] = MEMORY[0x1E697C790];
  v30 = swift_getOpaqueTypeConformance2();
  v91 = v25;
  v92 = v26;
  v93 = v27;
  v94 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v91 = v79;
  v92 = v78;
  v93 = v77;
  v94 = v76;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_1E59F6B64();
  v91 = v25;
  v92 = v26;
  v93 = v27;
  v94 = v30;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v81;
  v91 = v81;
  v92 = &type metadata for WorkoutPlanCreationRoute;
  v93 = v31;
  v94 = v32;
  v95 = v33;
  v96 = v34;
  v36 = swift_getOpaqueTypeMetadata2();
  v91 = v35;
  v92 = &type metadata for WorkoutPlanCreationRoute;
  v93 = v31;
  v94 = v32;
  v95 = v33;
  v96 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  v91 = v36;
  v92 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v91 = v36;
  v92 = v37;
  v39 = swift_getOpaqueTypeConformance2();
  v91 = v38;
  v92 = v39;
  v40 = swift_getOpaqueTypeMetadata2();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000140, &qword_1E5A40D58);
  v91 = v38;
  v92 = v39;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE9F0, &qword_1E5A3B340);
  v44 = sub_1E58CD164(&qword_1ED000130, &qword_1ECFFE9F0, &qword_1E5A3B340);
  v91 = v43;
  v92 = v44;
  v45 = swift_getOpaqueTypeConformance2();
  v91 = v40;
  v92 = v41;
  v93 = v42;
  v94 = v45;
  v46 = swift_getOpaqueTypeMetadata2();
  v91 = v40;
  v92 = v41;
  v93 = v42;
  v94 = v45;
  v47 = swift_getOpaqueTypeConformance2();
  v79 = v46;
  v78 = v47;
  v48 = sub_1E5A2A6F4();
  v81 = *(v48 - 8);
  v49 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = v75 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v80 = v75 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFED40, &qword_1E5A3C098);
  v77 = *(v54 - 8);
  v55 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v57 = v75 - v56;
  v58 = sub_1E5A2AA84();
  v82 = *(v58 - 8);
  v59 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v61 = v75 - v60;
  v91 = v86;
  v92 = v87;
  v93 = v88;
  v94 = v85;
  v62 = type metadata accessor for WorkoutPlanCreationView();
  v63 = v83;
  sub_1E59E925C(v62);
  swift_getKeyPath();
  sub_1E5A2B934();

  if (v91 > 2u)
  {
    v64 = *(v62 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED000148, &qword_1E5A40D60);
    v65 = sub_1E5A2B544();
    MEMORY[0x1EEE9AC00](v65);
    v66 = v87;
    v75[-6] = v86;
    v75[-5] = v66;
    v67 = v85;
    v75[-4] = v88;
    v75[-3] = v67;
    v75[-2] = v63;
    sub_1E5A2A6D4();
    v68 = swift_getWitnessTable();
    v69 = v80;
    sub_1E58B41DC(v51, v48, v68);
    v70 = *(v81 + 8);
    v70(v51, v48);
    sub_1E58B41DC(v69, v48, v68);
    sub_1E58CD164(qword_1ECFFED48, &qword_1ECFFED40, &qword_1E5A3C098);
    sub_1E595ECB8(v51, v54, v48);
    v70(v51, v48);
    v70(v69, v48);
  }

  else
  {
    sub_1E5A2A534();
    sub_1E58CD164(qword_1ECFFED48, &qword_1ECFFED40, &qword_1E5A3C098);
    swift_getWitnessTable();
    sub_1E595EBC0(v57, v54);
    (*(v77 + 8))(v57, v54);
  }

  v71 = sub_1E58CD164(qword_1ECFFED48, &qword_1ECFFED40, &qword_1E5A3C098);
  v72 = swift_getWitnessTable();
  v89 = v71;
  v90 = v72;
  v73 = swift_getWitnessTable();
  sub_1E58B41DC(v61, v58, v73);
  return (*(v82 + 8))(v61, v58);
}

uint64_t sub_1E59EBA00@<X0>(uint64_t a1@<X0>, char *a2@<X1>, ValueMetadata *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v193 = a4;
  v191 = a2;
  v192 = a1;
  v186 = a6;
  v185 = sub_1E5A2A904();
  v184 = *(v185 - 8);
  v10 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v183 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5A29EB4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v182 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E5A2BB14();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v181 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = a2;
  v201 = a3;
  v194 = a3;
  v202 = a4;
  v203 = a5;
  v180 = type metadata accessor for WorkoutPlanCreationView();
  v179 = *(v180 - 8);
  v177 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v180);
  v178 = &v135 - v18;
  v176 = sub_1E5A2A4A4();
  v175 = *(v176 - 8);
  v19 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v174 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1E5A2AC64();
  v170 = *(v172 - 8);
  v21 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v138 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000108, &qword_1E5A40D38);
  v166 = *(v23 - 8);
  v24 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v135 = &v135 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000100, &qword_1E5A40D30);
  v168 = *(v26 - 8);
  v27 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v165 = &v135 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0000E8, &qword_1E5A40D20);
  v189 = v29;
  v173 = *(v29 - 8);
  v30 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v171 = &v135 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0000F0, &qword_1E5A40D28);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  v32 = sub_1E5A2A6C4();
  v209 = sub_1E58CD164(&qword_1ED0000F8, &qword_1ED0000F0, &qword_1E5A40D28);
  v210 = a5;
  v190 = a5;
  WitnessTable = swift_getWitnessTable();
  v206 = swift_getWitnessTable();
  v207 = MEMORY[0x1E697E5D8];
  v33 = swift_getWitnessTable();
  v200 = v32;
  v201 = v33;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v188 = OpaqueTypeMetadata2;
  v35 = sub_1E58CD164(&qword_1ED000110, &qword_1ED000108, &qword_1E5A40D38);
  v167 = v23;
  v200 = v23;
  v201 = v35;
  v159 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v169 = v26;
  v200 = v26;
  v201 = OpaqueTypeConformance2;
  v160 = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  v187 = v37;
  v200 = v32;
  v201 = v33;
  v38 = swift_getOpaqueTypeConformance2();
  v200 = v29;
  v201 = OpaqueTypeMetadata2;
  v202 = v37;
  v203 = v38;
  v164 = MEMORY[0x1E697CE30];
  v39 = swift_getOpaqueTypeMetadata2();
  v163 = *(v39 - 8);
  v40 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v162 = &v135 - v41;
  v200 = v191;
  v201 = v194;
  v202 = v193;
  v203 = a5;
  v42 = type metadata accessor for WorkoutPlanScheduleReviewView();
  v43 = swift_getWitnessTable();
  v200 = v42;
  v201 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v200 = v42;
  v201 = v43;
  v45 = swift_getOpaqueTypeConformance2();
  v200 = v44;
  v201 = v45;
  v150 = MEMORY[0x1E697D448];
  v46 = swift_getOpaqueTypeMetadata2();
  v200 = v44;
  v201 = v45;
  v47 = swift_getOpaqueTypeConformance2();
  v200 = v46;
  v201 = v47;
  v48 = swift_getOpaqueTypeMetadata2();
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000118, &qword_1E5A40D40);
  v200 = v46;
  v201 = v47;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000120, &unk_1E5A40D48);
  v52 = sub_1E59F6A70();
  v200 = v51;
  v201 = v52;
  v155 = MEMORY[0x1E697C790];
  v53 = swift_getOpaqueTypeConformance2();
  v200 = v48;
  v201 = v49;
  v202 = v50;
  v203 = v53;
  v148 = MEMORY[0x1E697D5A0];
  v54 = swift_getOpaqueTypeMetadata2();
  v200 = v189;
  v201 = v188;
  v202 = v187;
  v203 = v38;
  v161 = v38;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = sub_1E59F6B64();
  v200 = v48;
  v201 = v49;
  v202 = v50;
  v203 = v53;
  v57 = swift_getOpaqueTypeConformance2();
  v200 = v39;
  v201 = &type metadata for WorkoutPlanCreationRoute;
  v202 = v54;
  v203 = v55;
  v204 = v56;
  v205 = v57;
  v58 = swift_getOpaqueTypeMetadata2();
  v157 = *(v58 - 8);
  v59 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v136 = &v135 - v60;
  v164 = v39;
  v200 = v39;
  v201 = &type metadata for WorkoutPlanCreationRoute;
  v139 = v54;
  v202 = v54;
  v203 = v55;
  v142 = v55;
  v140 = v56;
  v204 = v56;
  v205 = v57;
  v137 = v57;
  v61 = swift_getOpaqueTypeConformance2();
  v200 = v58;
  v201 = v61;
  v62 = swift_getOpaqueTypeMetadata2();
  v154 = *(v62 - 8);
  v63 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v152 = &v135 - v64;
  v158 = v58;
  v200 = v58;
  v201 = v61;
  v147 = v61;
  v65 = v138;
  v66 = swift_getOpaqueTypeConformance2();
  v200 = v62;
  v201 = v66;
  v67 = swift_getOpaqueTypeMetadata2();
  v153 = *(v67 - 8);
  v68 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v151 = &v135 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000140, &qword_1E5A40D58);
  v156 = v62;
  v200 = v62;
  v201 = v66;
  v146 = v66;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE9F0, &qword_1E5A3B340);
  v73 = sub_1E58CD164(&qword_1ED000130, &qword_1ECFFE9F0, &qword_1E5A3B340);
  v200 = v72;
  v201 = v73;
  v74 = swift_getOpaqueTypeConformance2();
  v155 = v67;
  v200 = v67;
  v201 = v70;
  v150 = v70;
  v149 = v71;
  v202 = v71;
  v203 = v74;
  v144 = v74;
  v148 = swift_getOpaqueTypeMetadata2();
  v145 = *(v148 - 8);
  v75 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v141 = &v135 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77);
  v143 = &v135 - v78;
  v195 = v191;
  v196 = v194;
  v197 = v193;
  v198 = v190;
  v199 = v192;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0001F0, &qword_1E5A40E80);
  sub_1E59F7040();
  v79 = v135;
  sub_1E5A2AF44();
  sub_1E5A2AAB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD770, &qword_1E5A35D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C930;
  LOBYTE(v70) = sub_1E5A2AD84();
  *(inited + 32) = v70;
  v81 = sub_1E5A2AD64();
  *(inited + 33) = v81;
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v70)
  {
    sub_1E5A2AD74();
  }

  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v81)
  {
    sub_1E5A2AD74();
  }

  v82 = v165;
  v83 = v167;
  sub_1E5A2B1B4();
  (*(v170 + 8))(v65, v172);
  (*(v166 + 8))(v79, v83);
  v84 = v175;
  v85 = v174;
  v86 = v176;
  (*(v175 + 104))(v174, *MEMORY[0x1E697DAD8], v176);
  v87 = v171;
  v88 = v169;
  sub_1E5A2B194();
  (*(v84 + 8))(v85, v86);
  v89 = (*(v168 + 8))(v82, v88);
  MEMORY[0x1EEE9AC00](v89);
  v90 = v191;
  v91 = v194;
  *(&v135 - 6) = v191;
  *(&v135 - 5) = v91;
  v92 = v193;
  v93 = v190;
  *(&v135 - 4) = v193;
  *(&v135 - 3) = v93;
  v94 = v192;
  sub_1E5A2AA24();
  swift_checkMetadataState();
  v134 = v161;
  v133 = v187;
  v95 = v162;
  v96 = v189;
  sub_1E5A2B0E4();
  (*(v173 + 8))(v87, v96);
  v97 = v179;
  v98 = v178;
  v99 = v180;
  (*(v179 + 16))(v178, v94, v180);
  v100 = (*(v97 + 80) + 48) & ~*(v97 + 80);
  v101 = swift_allocObject();
  v102 = v194;
  *(v101 + 2) = v90;
  *(v101 + 3) = v102;
  *(v101 + 4) = v92;
  *(v101 + 5) = v93;
  (*(v97 + 32))(&v101[v100], v98, v99);
  swift_checkMetadataState();
  v133 = v137;
  v103 = v136;
  v104 = v164;
  sub_1E5A2B254();

  (*(v163 + 8))(v95, v104);
  sub_1E5A2BA84();
  v105 = v90;
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v106 = qword_1EE2D33E0;
  v107 = v192;
  sub_1E59E925C(v99);
  swift_getKeyPath();
  sub_1E5A2B944();

  v108 = sub_1E5A2AF64();
  v110 = v109;
  v111 = v107;
  LOBYTE(v107) = v112;
  v113 = v152;
  v114 = v158;
  sub_1E5A2B174();
  sub_1E58B3C9C(v108, v110, v107 & 1);

  (*(v157 + 8))(v103, v114);
  v115 = v184;
  v116 = v183;
  v117 = v185;
  (*(v184 + 104))(v183, *MEMORY[0x1E697C428], v185);
  v118 = v151;
  v119 = v156;
  sub_1E590F06C();
  (*(v115 + 8))(v116, v117);
  v120 = (*(v154 + 8))(v113, v119);
  MEMORY[0x1EEE9AC00](v120);
  v121 = v194;
  *(&v135 - 6) = v105;
  *(&v135 - 5) = v121;
  v122 = v190;
  *(&v135 - 4) = v193;
  *(&v135 - 3) = v122;
  v133 = v111;
  v123 = v141;
  v124 = v155;
  v125 = v150;
  v126 = v149;
  v127 = v144;
  sub_1E5A2B344();
  (*(v153 + 8))(v118, v124);
  v200 = v124;
  v201 = v125;
  v202 = v126;
  v203 = v127;
  v128 = swift_getOpaqueTypeConformance2();
  v129 = v143;
  v130 = v148;
  sub_1E58B41DC(v123, v148, v128);
  v131 = *(v145 + 8);
  v131(v123, v130);
  sub_1E58B41DC(v129, v130, v128);
  return (v131)(v129, v130);
}

uint64_t sub_1E59ECF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v55 = a6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000278, &qword_1E5A41038);
  v51 = *(v50 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v42 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000280, &qword_1E5A41040);
  v54 = *(v53 - 8);
  v13 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v45 = &v42 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000288, &qword_1E5A41048);
  v49 = *(v52 - 8);
  v15 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v42 - v18;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000290, &qword_1E5A41050);
  v57 = *(v47 - 8);
  v19 = v57[8];
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  v63 = a2;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v67 = a1;
  sub_1E59F0150(v68);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000298, &qword_1E5A41058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0002A0, &qword_1E5A41060);
  sub_1E59F8890();
  sub_1E58CD164(&qword_1ED0002C0, &qword_1ED0002A0, &qword_1E5A41060);
  v43 = v23;
  sub_1E5A2B714();
  v58 = a2;
  v59 = a3;
  v60 = a4;
  v61 = a5;
  v62 = a1;
  sub_1E59F2F54(v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0002C8, &qword_1E5A41070);
  sub_1E59F8960();
  v24 = v46;
  sub_1E5A2B714();
  sub_1E5A2ADA4();
  v25 = sub_1E59F8AD0();
  v26 = v45;
  v27 = v50;
  sub_1E5A2B1D4();
  (*(v51 + 8))(v24, v27);
  sub_1E5A2A574();
  v68[0] = v27;
  v68[1] = v25;
  swift_getOpaqueTypeConformance2();
  v28 = v56;
  v29 = v53;
  sub_1E5A2B1A4();
  (*(v54 + 8))(v26, v29);
  v30 = v57[2];
  v31 = v44;
  v32 = v47;
  v30(v44, v23, v47);
  v33 = v49;
  v34 = *(v49 + 16);
  v35 = v48;
  v36 = v52;
  v34(v48, v28, v52);
  v37 = v55;
  v30(v55, v31, v32);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000300, &qword_1E5A41090);
  v34(&v37[*(v38 + 48)], v35, v36);
  v39 = *(v33 + 8);
  v39(v56, v36);
  v40 = v57[1];
  v40(v43, v32);
  v39(v35, v36);
  return (v40)(v31, v32);
}

uint64_t sub_1E59ED5E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v81 = a6;
  v107[0] = a2;
  v107[1] = a3;
  v96 = a2;
  v107[2] = a4;
  v107[3] = a5;
  v11 = type metadata accessor for WorkoutPlanCreationView();
  v94 = v11;
  v12 = *(v11 - 8);
  v83 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v75 - v13;
  v89 = v75 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0004B0, &qword_1E5A41238);
  v79 = *(v80 - 8);
  v15 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v78 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v77 = v75 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v87 = v75 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v93 = v75 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0004B8, &qword_1E5A41240);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v76 = v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v75 - v28;
  *v29 = sub_1E5A2A934();
  *(v29 + 1) = 0;
  v29[16] = 1;
  v88 = v29;
  v30 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0004C0, &qword_1E5A41248) + 44)];
  v95 = a1;
  v90 = a3;
  v91 = a4;
  v82 = a5;
  sub_1E59EDFD4(a1, a2, a3, a4, a5);
  v31 = sub_1E5A2AA14();
  v32 = &v29[*(v24 + 44)];
  *v32 = v31;
  v32[1] = sub_1E59EF930;
  v32[2] = 0;
  v33 = *(v12 + 16);
  v85 = v12 + 16;
  v86 = v33;
  v33(v14, a1, v11);
  v92 = sub_1E5A2BC84();
  v34 = sub_1E5A2BC74();
  v35 = *(v12 + 80);
  v36 = v12;
  v37 = (v35 + 64) & ~v35;
  v75[1] = v35;
  v38 = swift_allocObject();
  v39 = MEMORY[0x1E69E85E0];
  *(v38 + 2) = v34;
  *(v38 + 3) = v39;
  *(v38 + 4) = v96;
  *(v38 + 5) = a3;
  *(v38 + 6) = a4;
  *(v38 + 7) = a5;
  v40 = *(v36 + 32);
  v41 = v89;
  v42 = v94;
  v40(&v38[v37], v89, v94);
  v84 = v40;
  v75[2] = v36 + 32;
  v86(v41, v95, v42);
  v43 = sub_1E5A2BC74();
  v75[0] = v37;
  v44 = swift_allocObject();
  *(v44 + 2) = v43;
  v45 = v96;
  *(v44 + 3) = MEMORY[0x1E69E85E0];
  *(v44 + 4) = v45;
  v46 = v90;
  v47 = v91;
  *(v44 + 5) = v90;
  *(v44 + 6) = v47;
  v48 = v82;
  *(v44 + 7) = v82;
  v40(&v44[v37], v41, v94);
  sub_1E5A2B674();
  v102 = v45;
  v103 = v46;
  v104 = v47;
  v105 = v48;
  v49 = v95;
  v106 = v95;
  v108 = v110;
  v109 = v111;
  sub_1E59EF938(v107);
  v75[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0004C8, &unk_1E5A41250);
  v75[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF168, &qword_1E5A3C7C0);
  v75[3] = sub_1E59F9684();
  v75[6] = sub_1E59F973C();
  sub_1E5A2B5D4();
  v50 = v89;
  v51 = v86;
  v86(v89, v49, v94);
  v52 = sub_1E5A2BC74();
  v53 = v75[0];
  v54 = swift_allocObject();
  *(v54 + 2) = v52;
  v55 = v96;
  *(v54 + 3) = MEMORY[0x1E69E85E0];
  *(v54 + 4) = v55;
  v56 = v91;
  *(v54 + 5) = v90;
  *(v54 + 6) = v56;
  *(v54 + 7) = v48;
  v57 = v94;
  v84(&v54[v53], v50, v94);
  v51(v50, v95, v57);
  v58 = sub_1E5A2BC74();
  v59 = swift_allocObject();
  *(v59 + 2) = v58;
  v60 = v96;
  *(v59 + 3) = MEMORY[0x1E69E85E0];
  *(v59 + 4) = v60;
  v61 = v90;
  v62 = v91;
  *(v59 + 5) = v90;
  *(v59 + 6) = v62;
  v63 = v82;
  *(v59 + 7) = v82;
  v84(&v59[v53], v89, v57);
  sub_1E5A2B674();
  v97 = v60;
  v98 = v61;
  v99 = v62;
  v100 = v63;
  v101 = v95;
  v108 = v110;
  v109 = v111;
  sub_1E59EFF6C(v107);
  v64 = v87;
  sub_1E5A2B5D4();
  v65 = v76;
  sub_1E58BABA0(v88, v76, &qword_1ED0004B8, &qword_1E5A41240);
  v66 = v79;
  v67 = *(v79 + 16);
  v68 = v77;
  v69 = v80;
  v67(v77, v93, v80);
  v70 = v78;
  v67(v78, v64, v69);
  v71 = v81;
  sub_1E58BABA0(v65, v81, &qword_1ED0004B8, &qword_1E5A41240);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0004E8, &qword_1E5A41268);
  v67((v71 + *(v72 + 48)), v68, v69);
  v67((v71 + *(v72 + 64)), v70, v69);
  v73 = *(v66 + 8);
  v73(v87, v69);
  v73(v93, v69);
  sub_1E58BAD14(v88, &qword_1ED0004B8, &qword_1E5A41240);
  v73(v70, v69);
  v73(v68, v69);
  return sub_1E58BAD14(v65, &qword_1ED0004B8, &qword_1E5A41240);
}

uint64_t sub_1E59EDFD4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v44 = a2;
  v45 = a3;
  v48[0] = a2;
  v48[1] = a3;
  v46 = a4;
  v47 = a5;
  v48[2] = a4;
  v48[3] = a5;
  v6 = type metadata accessor for WorkoutPlanCreationView();
  v42 = *(v6 - 8);
  v43 = v6;
  v40 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v38 - v7;
  v8 = sub_1E5A2A004();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - v12;
  v14 = sub_1E5A29EC4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E5A29FE4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, *MEMORY[0x1E6969868], v14, v22);
  sub_1E5A29ED4();
  (*(v15 + 8))(v18, v14);
  sub_1E5A29F04();
  sub_1E5A29E94();
  v25 = sub_1E5A29EB4();
  (*(*(v25 - 8) + 56))(v13, 0, 1, v25);
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  sub_1E5A29FB4();
  v26 = sub_1E58FEBC0();
  (*(v20 + 8))(v24, v19);
  v27 = *(v26 + 16);
  if (!v27)
  {

    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v39 = a1;
  v28 = sub_1E5A20618(v27, 0);
  v29 = sub_1E5A22820(v48, (v28 + 4), v27, v26);

  sub_1E58D26C0();
  if (v29 == v27)
  {

    a1 = v39;
LABEL_5:
    v48[0] = v28;
    sub_1E59F73F4(v48);
    swift_getKeyPath();
    v31 = v41;
    v30 = v42;
    v32 = v43;
    (*(v42 + 16))(v41, a1, v43);
    v33 = (*(v30 + 80) + 48) & ~*(v30 + 80);
    v34 = swift_allocObject();
    v35 = v45;
    *(v34 + 2) = v44;
    *(v34 + 3) = v35;
    v36 = v47;
    *(v34 + 4) = v46;
    *(v34 + 5) = v36;
    (*(v30 + 32))(&v34[v33], v31, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC070, &qword_1E5A2FD50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0004F0, &qword_1E5A41378);
    sub_1E58CD164(&qword_1ECFFC078, &qword_1ECFFC070, &qword_1E5A2FD50);
    sub_1E58D1B2C();
    sub_1E59FA084();
    return sub_1E5A2B6E4();
  }

  __break(1u);
  MEMORY[0x1E69331F0](v26);

  __break(1u);
  return result;
}

uint64_t sub_1E59EE500@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v68 = a5;
  v81 = a7;
  v77 = sub_1E5A2A714();
  v78 = *(v77 - 8);
  v13 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v73 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v92 = a3;
  *(&v92 + 1) = a4;
  v15 = a4;
  *&v93 = a5;
  *(&v93 + 1) = a6;
  v16 = type metadata accessor for WorkoutPlanCreationView();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v63 - v19;
  v64 = &v63 - v19;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000520, &qword_1E5A41390);
  v74 = *(v71 - 8);
  v21 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v63 - v22;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000540, &qword_1E5A413A0);
  v75 = *(v76 - 8);
  v23 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v70 = &v63 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000518, &qword_1E5A41388);
  v26 = *(v25 - 8);
  v72 = v25 - 8;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v67 = &v63 - v28;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000508, &qword_1E5A41380);
  v29 = *(*(v79 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v79);
  v80 = &v63 - v31;
  v32 = *(a1 + 2);
  v65 = *(a1 + 1);
  v66 = v32;
  v33 = *(v17 + 16);
  v82 = *a1;
  v33(v20, a2, v16, v30);
  v34 = v17;
  v35 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v36 = (v18 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v37[2] = a3;
  v37[3] = v15;
  v38 = v15;
  v39 = v68;
  v37[4] = v68;
  v37[5] = a6;
  v40 = v37 + v35;
  v41 = v16;
  (*(v34 + 32))(v40, v64, v16);
  v42 = v37 + v36;
  LOBYTE(v34) = v82;
  *v42 = v82;
  v43 = v65;
  v44 = v66;
  *(v42 + 1) = v65;
  *(v42 + 2) = v44;
  v83 = a3;
  v84 = v38;
  v85 = v39;
  v86 = a6;
  v87 = v34;
  v88 = v43;
  v89 = v44;
  v90 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000548, &qword_1E5A413A8);
  sub_1E59FA430();
  v45 = v69;
  v46 = v67;
  sub_1E5A2B574();
  v47 = v73;
  sub_1E5A2A704();
  sub_1E58CD164(&qword_1ED000528, &qword_1ED000520, &qword_1E5A41390);
  sub_1E59F922C(&qword_1ECFFC220, MEMORY[0x1E697C248]);
  v48 = v70;
  v49 = v71;
  v50 = v77;
  sub_1E5A2B0B4();
  (*(v78 + 8))(v47, v50);
  (*(v74 + 8))(v45, v49);
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  (*(v75 + 32))(v46, v48, v76);
  v51 = &v46[*(v72 + 44)];
  v52 = v97;
  *(v51 + 4) = v96;
  *(v51 + 5) = v52;
  *(v51 + 6) = v98;
  v53 = v93;
  *v51 = v92;
  *(v51 + 1) = v53;
  v54 = v95;
  *(v51 + 2) = v94;
  *(v51 + 3) = v54;
  sub_1E59E925C(v41);
  swift_getKeyPath();
  sub_1E5A2B934();

  LOBYTE(v34) = sub_1E59E9034(v82, v91);

  if (v34)
  {
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v55 = qword_1ED026498;
  }

  else
  {
    v55 = sub_1E5A2B444();
  }

  v56 = v46;
  v57 = v80;
  sub_1E58F0054(v56, v80, &qword_1ED000518, &qword_1E5A41388);
  *(v57 + *(v79 + 36)) = v55;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0004F0, &qword_1E5A41378);
  v59 = v81;
  v60 = (v81 + *(v58 + 36));
  v61 = &v60[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000538, &qword_1E5A41398) + 40)];
  sub_1E5A2A784();
  *v60 = 0;
  return sub_1E58F0054(v57, v59, &qword_1ED000508, &qword_1E5A41380);
}

uint64_t sub_1E59EECA0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for WorkoutPlanCreationAction();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = a5;
  v19[1] = a6;
  v19[2] = a7;
  v19[3] = a8;
  v17 = type metadata accessor for WorkoutPlanCreationView();
  sub_1E59E925C(v17);
  *v16 = a2;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();

  return sub_1E59F8818(v16, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E59EEDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v103 = a7;
  *(&v103 + 1) = a8;
  *&v102 = a5;
  *(&v102 + 1) = a6;
  v88 = a4;
  v104 = a1;
  v95 = a9;
  v101 = a1;
  v11 = sub_1E5A2A9E4();
  v91 = *(v11 - 8);
  v92 = v11;
  v12 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v90 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5A2A004();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v100 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v97 = v82 - v19;
  v96 = sub_1E5A29EC4();
  v20 = *(v96 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v23 = v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E5A29FE4();
  v98 = *(v24 - 8);
  v99 = v24;
  v25 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000578, &unk_1E5A413E0);
  v84 = *(v28 - 8);
  v85 = v28;
  v29 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v82 - v30;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000560, &qword_1E5A413B0);
  v32 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v86 = v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v89 = v82 - v35;
  v93 = a2;
  *&v131 = a2;
  *(&v131 + 1) = a3;
  v36 = sub_1E58D1C80();
  v94 = a3;

  v82[1] = v36;
  v37 = sub_1E5A2AFD4();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = sub_1E5A2ADF4();
  sub_1E5A2A424();
  LOBYTE(v122) = v41 & 1;
  v105[0] = 0;
  *&v131 = v37;
  *(&v131 + 1) = v39;
  LOBYTE(v132) = v41 & 1;
  *(&v132 + 1) = v43;
  LOBYTE(v133) = v44;
  *(&v133 + 1) = v45;
  *&v134[0] = v46;
  *(&v134[0] + 1) = v47;
  *&v134[1] = v48;
  BYTE8(v134[1]) = 0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA58, &unk_1E5A3B3E0);
  v50 = sub_1E596F604();
  v83 = v31;
  sub_1E5A2B2B4();
  v137[2] = v133;
  v138[0] = v134[0];
  *(v138 + 9) = *(v134 + 9);
  v137[0] = v131;
  v137[1] = v132;
  sub_1E58BAD14(v137, &qword_1ECFFEA58, &unk_1E5A3B3E0);
  v51 = v96;
  (*(v20 + 104))(v23, *MEMORY[0x1E6969868], v96);
  sub_1E5A29ED4();
  v52 = v23;
  v53 = v104;
  (*(v20 + 8))(v52, v51);
  sub_1E5A29F04();
  v54 = v97;
  sub_1E5A29E94();
  v55 = sub_1E5A29EB4();
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  sub_1E5A29FB4();
  v56 = sub_1E5A29F74();
  result = (*(v98 + 8))(v27, v99);
  if (v101 == 6)
  {
    v58 = 0;
  }

  else
  {
    v58 = v53 + 1;
  }

  if (v58 >= *(v56 + 16))
  {
    __break(1u);
  }

  else
  {
    v59 = v56 + 16 * v58;
    v61 = *(v59 + 32);
    v60 = *(v59 + 40);

    *&v131 = v61;
    *(&v131 + 1) = v60;
    *&v122 = v49;
    *(&v122 + 1) = v50;
    swift_getOpaqueTypeConformance2();
    v62 = v85;
    v63 = v86;
    v64 = v83;
    sub_1E5A2B1C4();

    (*(v84 + 8))(v64, v62);
    v131 = v102;
    v132 = v103;
    v65 = type metadata accessor for WorkoutPlanCreationView();
    sub_1E59E925C(v65);
    swift_getKeyPath();
    sub_1E5A2B934();

    LOBYTE(v60) = sub_1E59E9034(v53, v131);

    if (v60)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000410, &qword_1E5A411B0);
      v66 = v91;
      v67 = *(v91 + 72);
      v68 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1E5A2C920;
      sub_1E5A2A9C4();
      *&v131 = v69;
      sub_1E59F922C(&qword_1ED0003A0, MEMORY[0x1E697F5E0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003A8, &qword_1E5A41188);
      sub_1E58CD164(&qword_1ED0003B0, &qword_1ED0003A8, &qword_1E5A41188);
      v70 = v90;
      v71 = v92;
      sub_1E5A2BDD4();
    }

    else
    {
      *&v131 = MEMORY[0x1E69E7CC0];
      sub_1E59F922C(&qword_1ED0003A0, MEMORY[0x1E697F5E0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003A8, &qword_1E5A41188);
      sub_1E58CD164(&qword_1ED0003B0, &qword_1ED0003A8, &qword_1E5A41188);
      v70 = v90;
      v71 = v92;
      sub_1E5A2BDD4();
      v66 = v91;
    }

    v72 = v89;
    sub_1E5A2A6B4();
    (*(v66 + 8))(v70, v71);
    sub_1E58BAD14(v63, &qword_1ED000560, &qword_1E5A413B0);
    v73 = sub_1E5A2B7E4();
    v75 = v74;
    sub_1E59EF738(v104, v102, *(&v102 + 1), v103, *(&v103 + 1), &v114);
    v110 = v118;
    v111 = v119;
    v112 = v120;
    v113 = v121;
    v106 = v114;
    v107 = v115;
    v108 = v116;
    v109 = v117;
    v122 = v114;
    v123 = v115;
    v124 = v116;
    v125 = v117;
    v126 = v118;
    v127 = v119;
    v128 = v120;
    v129 = v121;
    *&v130 = v73;
    *(&v130 + 1) = v75;
    v76 = v95;
    sub_1E58F0054(v72, v95, &qword_1ED000560, &qword_1E5A413B0);
    v77 = (v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000548, &qword_1E5A413A8) + 36));
    v78 = v129;
    v77[6] = v128;
    v77[7] = v78;
    v77[8] = v130;
    v79 = v125;
    v77[2] = v124;
    v77[3] = v79;
    v80 = v127;
    v77[4] = v126;
    v77[5] = v80;
    v81 = v123;
    *v77 = v122;
    v77[1] = v81;
    v134[1] = v110;
    v134[2] = v111;
    v134[3] = v112;
    v134[4] = v113;
    v131 = v106;
    v132 = v107;
    v133 = v108;
    v134[0] = v109;
    v135 = v73;
    v136 = v75;
    sub_1E58BABA0(&v122, v105, &qword_1ED000570, &qword_1E5A413B8);
    return sub_1E58BAD14(&v131, &qword_1ED000570, &qword_1E5A413B8);
  }

  return result;
}

double sub_1E59EF738@<D0>(unsigned __int8 a1@<W1>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, _OWORD *a6@<X8>)
{
  *&v37 = a2;
  *(&v37 + 1) = a3;
  *&v38 = a4;
  *(&v38 + 1) = a5;
  v8 = type metadata accessor for WorkoutPlanCreationView();
  sub_1E59E925C(v8);
  swift_getKeyPath();
  sub_1E5A2B934();

  v9 = sub_1E59E9034(a1, v37);

  if (v9)
  {
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v10 = qword_1ED026498;
    sub_1E5A2A514();

    v11 = sub_1E5A2B7E4();
    v13 = v12;
    sub_1E5A2B7E4();
    sub_1E5A2A5B4();
    *&v26 = v34 * 0.5;
    *(&v26 + 1) = v34;
    v27 = v35;
    v28 = v36;
    *&v29 = v10;
    WORD4(v29) = 256;
    *&v30 = v11;
    *(&v30 + 1) = v13;
    nullsub_1(&v26, v14, v15, v16, v17, v18, v19, v20);
    v41 = v30;
    v42 = v31;
    v43 = v32;
    v44 = v33;
    v37 = v26;
    v38 = v27;
    v39 = v28;
    v40 = v29;
  }

  else
  {
    sub_1E59FA5E0(&v37);
  }

  v21 = v42;
  a6[4] = v41;
  a6[5] = v21;
  v22 = v44;
  a6[6] = v43;
  a6[7] = v22;
  v23 = v38;
  *a6 = v37;
  a6[1] = v23;
  result = *&v39;
  v25 = v40;
  a6[2] = v39;
  a6[3] = v25;
  return result;
}

uint64_t sub_1E59EF938@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A29EB4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5A2BB14();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2D33E0;
  v7 = type metadata accessor for WorkoutPlanCreationView();
  sub_1E59E925C(v7);
  swift_getKeyPath();
  sub_1E5A2B944();

  v8 = sub_1E5A2AF64();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_1E5A2B444();
  result = swift_getKeyPath();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = result;
  *(a1 + 40) = v15;
  return result;
}

uint64_t sub_1E59EFB14()
{
  v0 = type metadata accessor for WorkoutPlanCreationView();
  sub_1E59E925C(v0);
  swift_getKeyPath();
  sub_1E5A2B934();
}

uint64_t sub_1E59EFB8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = type metadata accessor for WorkoutPlanCreationAction();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  v20[0] = a6;
  v20[1] = a7;
  v20[2] = a8;
  v20[3] = a9;
  v18 = type metadata accessor for WorkoutPlanCreationView();
  sub_1E59E925C(v18);
  *v16 = v17;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();

  return sub_1E59F8818(v16, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E59EFC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v25 = a8;
  v26 = a7;
  v23 = a5;
  v24 = a6;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v12 = type metadata accessor for WorkoutPlanCreationView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  sub_1E59E925C(v17);
  swift_getKeyPath();
  sub_1E5A2B934();

  v27 = v28;
  swift_getKeyPath();
  (*(v13 + 16))(v16, a1, v12);
  v18 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  v20 = v23;
  *(v19 + 4) = a4;
  *(v19 + 5) = v20;
  (*(v13 + 32))(&v19[v18], v16, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF178, &qword_1E5A3C800);
  sub_1E58CD164(&qword_1ECFFF180, &qword_1ECFFF178, &qword_1E5A3C800);
  return sub_1E5A2B6E4();
}

uint64_t sub_1E59EFEB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for WorkoutPlanCreationView();
  sub_1E59E970C(v3, v4, 3, 4096, MEMORY[0x1E699F118]);
  sub_1E58D1C80();
  v5 = sub_1E5A2BD94();
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1E59EFF6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A29EB4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5A2BB14();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2D33E0;
  v7 = type metadata accessor for WorkoutPlanCreationView();
  sub_1E59E925C(v7);
  swift_getKeyPath();
  sub_1E5A2B944();

  v8 = sub_1E5A2AF64();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_1E5A2B444();
  result = swift_getKeyPath();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = result;
  *(a1 + 40) = v15;
  return result;
}

double sub_1E59F0150@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A29EB4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5A2BB14();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2D33E0;
  v7 = type metadata accessor for WorkoutPlanCreationView();
  sub_1E59E925C(v7);
  swift_getKeyPath();
  sub_1E5A2B944();

  v8 = sub_1E5A2AF64();
  v10 = v9;
  v12 = v11;
  sub_1E5A2AE84();
  sub_1E5A2AE24();

  v13 = sub_1E5A2AFA4();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_1E58B3C9C(v8, v10, v12 & 1);

  v20 = sub_1E5A2ADC4();
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  *(a1 + 32) = v20;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  return result;
}

uint64_t sub_1E59F03AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A2AB24();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = type metadata accessor for WorkoutPlanCreationView();
  sub_1E59E97B8(v4);
  sub_1E5A2AA24();
  sub_1E59F922C(&qword_1EE2CFAF0, MEMORY[0x1E697FCB0]);
  sub_1E5A2C264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000308, &qword_1E5A41098);
  sub_1E59F8B98();
  sub_1E5A2B844();
  sub_1E5A2B414();
  v5 = sub_1E5A2B634();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0002E0, &qword_1E5A41078) + 36)) = v5;
  LOBYTE(v5) = sub_1E5A2ADB4();
  sub_1E5A2A424();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0002C8, &qword_1E5A41070);
  v15 = a1 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_1E59F05CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a5;
  v22 = a6;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v10 = type metadata accessor for WorkoutPlanCreationView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  sub_1E59E925C(v15);
  swift_getKeyPath();
  sub_1E5A2B934();

  v23 = v24;
  swift_getKeyPath();
  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  v18 = v21;
  *(v17 + 4) = a4;
  *(v17 + 5) = v18;
  (*(v11 + 32))(&v17[v16], v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE750, &unk_1E5A3ABF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000320, &qword_1E5A410A0);
  sub_1E58CD164(&qword_1ECFFE758, &qword_1ECFFE750, &unk_1E5A3ABF0);
  sub_1E59F8C1C();
  return sub_1E5A2B6E4();
}

double sub_1E59F080C@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v57 = a6;
  v68 = a7;
  v62 = sub_1E5A2A714();
  v63 = *(v62 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v78 = a3;
  *(&v78 + 1) = a4;
  *&v79 = a5;
  *(&v79 + 1) = a6;
  v15 = a5;
  v16 = type metadata accessor for WorkoutPlanCreationView();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v55 - v19;
  v55 = &v55 - v19;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000338, &qword_1E5A410B0);
  v61 = *(v59 - 8);
  v21 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v55 - v22;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000348, &qword_1E5A41100);
  v65 = *(v67 - 8);
  v23 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v56 = &v55 - v24;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000330, &qword_1E5A410A8);
  v25 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v55 - v26;
  v27 = a1[3];
  v80 = a1[2];
  v81 = v27;
  v82 = *(a1 + 8);
  v28 = a1[1];
  v78 = *a1;
  v79 = v28;
  v29 = v20;
  v30 = a2;
  (*(v17 + 16))(v29, a2, v16);
  v31 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v32 = (v18 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 2) = a3;
  *(v33 + 3) = a4;
  v34 = v15;
  *(v33 + 4) = v15;
  v35 = v57;
  *(v33 + 5) = v57;
  (*(v17 + 32))(&v33[v31], v55, v16);
  v36 = &v33[v32];
  v37 = v81;
  *(v36 + 2) = v80;
  *(v36 + 3) = v37;
  *(v36 + 8) = v82;
  v38 = v79;
  *v36 = v78;
  *(v36 + 1) = v38;
  v69 = a3;
  v70 = a4;
  v71 = v34;
  v72 = v35;
  v73 = v30;
  v74 = &v78;
  sub_1E591B3E0(&v78, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000350, &qword_1E5A41108);
  v39 = v16;
  sub_1E58CD164(&qword_1ED000358, &qword_1ED000350, &qword_1E5A41108);
  v40 = v58;
  v41 = v56;
  sub_1E5A2B574();
  v42 = v60;
  sub_1E5A2A704();
  sub_1E58CD164(&qword_1ED000340, &qword_1ED000338, &qword_1E5A410B0);
  sub_1E59F922C(&qword_1ECFFC220, MEMORY[0x1E697C248]);
  v43 = v59;
  v44 = v62;
  sub_1E5A2B0B4();
  (*(v63 + 8))(v42, v44);
  (*(v61 + 8))(v40, v43);
  sub_1E59E925C(v39);
  swift_getKeyPath();
  sub_1E5A2B934();

  LOBYTE(v40) = sub_1E59E8F3C(*(&v78 + 1), v79, *&v76[0]);

  if (v40)
  {
    v45 = 0;
  }

  else
  {
    sub_1E59E925C(v39);
    swift_getKeyPath();
    sub_1E5A2B934();

    v46 = *(*&v76[0] + 16);

    sub_1E59E925C(v39);
    swift_getKeyPath();
    sub_1E5A2B934();

    v45 = v46 >= v75;
  }

  KeyPath = swift_getKeyPath();
  v48 = swift_allocObject();
  *(v48 + 16) = v45;
  v49 = v66;
  (*(v65 + 32))(v66, v41, v67);
  v50 = (v49 + *(v64 + 36));
  *v50 = KeyPath;
  v50[1] = sub_1E59FA600;
  v50[2] = v48;
  sub_1E59E9454(v39);
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v51 = v68;
  sub_1E58F0054(v49, v68, &qword_1ED000330, &qword_1E5A410A8);
  v52 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000320, &qword_1E5A410A0) + 36));
  v53 = v76[1];
  *v52 = v76[0];
  v52[1] = v53;
  result = *&v77;
  v52[2] = v77;
  return result;
}

uint64_t sub_1E59F0F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for WorkoutPlanCreationAction();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  v15 = type metadata accessor for WorkoutPlanCreationView();
  sub_1E59E925C(v15);
  v16 = *(a2 + 16);
  *v14 = *(a2 + 8);
  v14[1] = v16;
  swift_storeEnumTagMultiPayload();

  sub_1E5A2B954();

  return sub_1E59F8818(v14, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E59F1088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a5;
  v27[3] = a6;
  v14 = type metadata accessor for WorkoutPlanCreationView();
  v15 = sub_1E59E94C0(v14);
  v25 = v16;
  v26 = v15;
  v18 = v17;
  v24 = v19;
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  swift_storeEnumTagMultiPayload();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000350, &qword_1E5A41108);
  v21 = *(v20 + 40);
  sub_1E591B3E0(a2, v27);
  sub_1E59F11B0(a2, a1, a3, a4, a5, a6, a7 + v21);
  result = sub_1E58C3164(a2);
  v23 = a7 + *(v20 + 36);
  *v23 = v26;
  *(v23 + 1) = v25;
  *(v23 + 2) = v18;
  v23[24] = v24 & 1;
  return result;
}

uint64_t sub_1E59F11B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v75 = a6;
  v72 = a7;
  v68 = sub_1E5A2A9E4();
  v64 = *(v68 - 8);
  v12 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5A2AC84();
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000368, &qword_1E5A41158);
  v18 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v20 = &v57 - v19;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000370, &qword_1E5A41160);
  v60 = *(v63 - 8);
  v21 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v73 = &v57 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000378, &qword_1E5A41168);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v61 = &v57 - v25;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000380, &qword_1E5A41170);
  v26 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v65 = &v57 - v27;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000388, &qword_1E5A41178);
  v28 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v58 = &v57 - v29;
  *v20 = sub_1E5A2AA34();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000390, &qword_1E5A41180);
  v31 = a5;
  v32 = a5;
  v33 = v75;
  sub_1E59F1A74(a1, a2, a3, a4, v32, v75, &v20[*(v30 + 44)]);
  sub_1E5A2AC74();
  v57 = sub_1E58CD164(&qword_1ED000398, &qword_1ED000368, &qword_1E5A41158);
  sub_1E5A2B224();
  (*(v70 + 8))(v17, v71);
  sub_1E58BAD14(v20, &qword_1ED000368, &qword_1E5A41158);
  v69 = a3;
  v70 = a4;
  *&v76 = a3;
  *(&v76 + 1) = a4;
  v71 = v31;
  *&v77 = v31;
  *(&v77 + 1) = v33;
  v34 = type metadata accessor for WorkoutPlanCreationView();
  v62 = a2;
  sub_1E59E925C(v34);
  swift_getKeyPath();
  sub_1E5A2B934();

  v35 = sub_1E59E8F3C(*(a1 + 8), *(a1 + 16), v76);

  if (v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000410, &qword_1E5A411B0);
    v36 = v64;
    v37 = *(v64 + 72);
    v38 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1E5A2C920;
    sub_1E5A2A9C4();
    *&v76 = v39;
    sub_1E59F922C(&qword_1ED0003A0, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003A8, &qword_1E5A41188);
    sub_1E58CD164(&qword_1ED0003B0, &qword_1ED0003A8, &qword_1E5A41188);
    v40 = v66;
    v41 = v68;
    sub_1E5A2BDD4();
  }

  else
  {
    *&v76 = MEMORY[0x1E69E7CC0];
    sub_1E59F922C(&qword_1ED0003A0, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003A8, &qword_1E5A41188);
    sub_1E58CD164(&qword_1ED0003B0, &qword_1ED0003A8, &qword_1E5A41188);
    v40 = v66;
    v41 = v68;
    sub_1E5A2BDD4();
    v36 = v64;
  }

  *&v76 = v74;
  *(&v76 + 1) = v57;
  swift_getOpaqueTypeConformance2();
  v42 = v61;
  v43 = v63;
  v44 = v73;
  sub_1E5A2B264();
  (*(v36 + 8))(v40, v41);
  (*(v60 + 8))(v44, v43);
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  v45 = v65;
  sub_1E58F0054(v42, v65, &qword_1ED000378, &qword_1E5A41168);
  v46 = (v45 + *(v59 + 36));
  v47 = v81;
  v46[4] = v80;
  v46[5] = v47;
  v46[6] = v82;
  v48 = v77;
  *v46 = v76;
  v46[1] = v48;
  v49 = v79;
  v46[2] = v78;
  v46[3] = v49;
  v50 = sub_1E5A2B7E4();
  v52 = v51;
  v53 = v58;
  v54 = &v58[*(v67 + 36)];
  sub_1E59F221C(a1, v62, v69, v70, v71, v75, v54);
  v55 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003B8, &qword_1E5A41190) + 36));
  *v55 = v50;
  v55[1] = v52;
  sub_1E58F0054(v45, v53, &qword_1ED000380, &qword_1E5A41170);
  sub_1E5A2B7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003C0, &qword_1E5A41198);
  sub_1E59F8FBC();
  sub_1E59F9274();
  sub_1E5A2B3A4();
  return sub_1E58BAD14(v53, &qword_1ED000388, &qword_1E5A41178);
}

uint64_t sub_1E59F1A74@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v73 = a6;
  *&v74 = a2;
  *(&v70 + 1) = a4;
  v71 = a5;
  *&v70 = a3;
  *&v78 = a7;
  v8 = sub_1E5A2AEB4();
  v76 = *(v8 - 8);
  v77 = v8;
  v9 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000458, &qword_1E5A411F8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v79 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v63 - v15;
  v16 = *(a1 + 3);
  v17 = *(a1 + 4);

  v69 = sub_1E5A2B4A4();
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  LOBYTE(v16) = v122;
  v67 = v123;
  v68 = v121;
  v18 = v124;
  v65 = v126;
  v66 = v125;
  LOBYTE(v17) = sub_1E5A2ADA4();
  v119 = v16;
  v118 = v18;
  v117 = 0;
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  *&v120[55] = v130;
  *&v120[71] = v131;
  *&v120[87] = v132;
  *&v120[103] = v133;
  *&v120[7] = v127;
  *&v120[23] = v128;
  *&v120[39] = v129;
  v19 = a1[3];
  v105 = a1[2];
  v106 = v19;
  *&v107 = *(a1 + 8);
  v20 = a1[1];
  v103 = *a1;
  v104 = v20;
  v21 = sub_1E5A2B454();
  v96 = v70;
  *&v97 = v71;
  *(&v97 + 1) = v73;
  v73 = type metadata accessor for WorkoutPlanCreationView();
  v22 = sub_1E59F803C(&v103, v21, v73);

  v100 = xmmword_1E5A40C80;
  v101 = xmmword_1E5A40C90;
  *(&v102[4] + 1) = *&v120[64];
  *(&v102[5] + 1) = *&v120[80];
  *(&v102[6] + 1) = *&v120[96];
  *(v102 + 1) = *v120;
  *(&v102[1] + 1) = *&v120[16];
  *(&v102[2] + 1) = *&v120[32];
  *&v96 = v69;
  *(&v96 + 1) = v68;
  LOBYTE(v97) = v16;
  *(&v97 + 1) = v67;
  LOBYTE(v98) = v18;
  *(&v98 + 1) = v66;
  *&v99 = v65;
  BYTE8(v99) = v17;
  LOBYTE(v102[0]) = 0;
  *(&v102[3] + 1) = *&v120[48];
  *&v102[7] = *&v120[111];
  *(&v102[7] + 1) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000460, &qword_1E5A41200);
  sub_1E59F93F4();
  sub_1E5A2B214();
  v113 = v102[4];
  v114 = v102[5];
  v115 = v102[6];
  v116 = v102[7];
  v109 = v102[0];
  v110 = v102[1];
  v111 = v102[2];
  v112 = v102[3];
  v105 = v98;
  v106 = v99;
  v107 = v100;
  v108 = v101;
  v103 = v96;
  v104 = v97;
  sub_1E58BAD14(&v103, &qword_1ED000460, &qword_1E5A41200);
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  *&v94[55] = v99;
  *&v94[71] = v100;
  *&v94[87] = v101;
  *&v94[103] = v102[0];
  *&v94[7] = v96;
  *&v94[23] = v97;
  v95 = 1;
  *&v94[39] = v98;
  v64 = a1;
  v23 = *(a1 + 7);
  *&v87 = *(a1 + 6);
  *(&v87 + 1) = v23;
  sub_1E58D1C80();

  v24 = sub_1E5A2AFD4();
  v26 = v25;
  v28 = v27;
  sub_1E5A2AE04();
  sub_1E5A2AE64();
  sub_1E5A2AEA4();

  v30 = v75;
  v29 = v76;
  v31 = v77;
  (*(v76 + 104))(v75, *MEMORY[0x1E6980EA8], v77);
  sub_1E5A2AEE4();

  (*(v29 + 8))(v30, v31);
  v32 = sub_1E5A2AFA4();
  v76 = v33;
  v77 = v34;
  LOBYTE(v31) = v35;

  sub_1E58B3C9C(v24, v26, v28 & 1);

  LODWORD(v75) = sub_1E5A2ADA4();
  LOBYTE(v84) = v31 & 1;
  v80 = 0;
  v36 = v64[3];
  *v89 = v64[2];
  *&v89[16] = v36;
  *&v89[32] = *(v64 + 8);
  v37 = v64[1];
  v87 = *v64;
  v88 = v37;
  v38 = sub_1E5A2B444();
  v39 = sub_1E59F803C(&v87, v38, v73);

  v40 = v72;
  v41 = v79;
  sub_1E58BABA0(v72, v79, &qword_1ED000458, &qword_1E5A411F8);
  v42 = v41;
  v43 = v78;
  sub_1E58BABA0(v42, v78, &qword_1ED000458, &qword_1E5A411F8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0004A0, &qword_1E5A41228);
  v45 = v43 + *(v44 + 48);
  *v45 = 0;
  *(v45 + 8) = 1;
  v46 = *&v94[80];
  *(v45 + 73) = *&v94[64];
  *(v45 + 89) = v46;
  *(v45 + 105) = *&v94[96];
  *(v45 + 120) = *&v94[111];
  v47 = *&v94[16];
  *(v45 + 9) = *v94;
  *(v45 + 25) = v47;
  v48 = *&v94[48];
  *(v45 + 41) = *&v94[32];
  *(v45 + 57) = v48;
  v49 = (v43 + *(v44 + 64));
  v50 = v32;
  v51 = v76;
  *&v84 = v32;
  *(&v84 + 1) = v76;
  LOBYTE(v85) = v31 & 1;
  DWORD1(v85) = *&v82[3];
  *(&v85 + 1) = *v82;
  v52 = v77;
  *(&v85 + 1) = v77;
  LOBYTE(v21) = v75;
  LOBYTE(v86[0]) = v75;
  DWORD1(v86[0]) = *&v81[3];
  *(v86 + 1) = *v81;
  v78 = xmmword_1E5A40CA0;
  *(v86 + 8) = xmmword_1E5A40CA0;
  __asm { FMOV            V0.2D, #10.0 }

  v74 = _Q0;
  *(&v86[1] + 8) = _Q0;
  BYTE8(v86[2]) = 0;
  HIDWORD(v86[2]) = *&v83[3];
  *(&v86[2] + 9) = *v83;
  *&v86[3] = v39;
  WORD4(v86[3]) = 256;
  v58 = v85;
  *v49 = v84;
  v49[1] = v58;
  v59 = v86[0];
  v60 = v86[1];
  v61 = v86[2];
  *(v49 + 74) = *(&v86[2] + 10);
  v49[3] = v60;
  v49[4] = v61;
  v49[2] = v59;
  sub_1E58BABA0(&v84, &v87, &qword_1ED0004A8, &qword_1E5A41230);
  sub_1E58BAD14(v40, &qword_1ED000458, &qword_1E5A411F8);
  *&v87 = v50;
  *(&v87 + 1) = v51;
  LOBYTE(v88) = v31 & 1;
  *(&v88 + 1) = *v82;
  DWORD1(v88) = *&v82[3];
  *(&v88 + 1) = v52;
  v89[0] = v21;
  *&v89[1] = *v81;
  *&v89[4] = *&v81[3];
  *&v89[8] = v78;
  *&v89[24] = v74;
  v90 = 0;
  *&v91[3] = *&v83[3];
  *v91 = *v83;
  v92 = v39;
  v93 = 256;
  sub_1E58BAD14(&v87, &qword_1ED0004A8, &qword_1E5A41230);
  return sub_1E58BAD14(v79, &qword_1ED000458, &qword_1E5A411F8);
}

uint64_t sub_1E59F221C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v67 = a4;
  v68 = a6;
  v69 = a2;
  v70 = a7;
  v10 = sub_1E5A2A754();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000418, &qword_1E5A411B8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v62 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000420, &qword_1E5A411C0);
  v19 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v21 = &v62 - v20;
  v22 = *(v11 + 28);
  v23 = *MEMORY[0x1E697F468];
  v24 = sub_1E5A2A9B4();
  (*(*(v24 - 8) + 104))(&v14[v22], v23, v24);
  __asm { FMOV            V0.2D, #8.0 }

  *v14 = _Q0;
  LOBYTE(v71) = *(a1 + 40);
  if (WorkoutPlanCatalogModalityKind.rawValue.getter() == 0x697461746964654DLL && v30 == 0xEA00000000006E6FLL)
  {

LABEL_5:
    if (qword_1ECFFB480 != -1)
    {
      swift_once();
    }

    v32 = &qword_1ED0264A0;
    goto LABEL_11;
  }

  v31 = sub_1E5A2C114();

  if (v31)
  {
    goto LABEL_5;
  }

  if (qword_1ECFFB478 != -1)
  {
    swift_once();
  }

  v32 = &qword_1ED026498;
LABEL_11:
  v33 = *v32;

  v34 = *(a1 + 8);
  v35 = *(a1 + 16);
  v64 = a3;
  v65 = a1;
  v36 = v67;
  *&v71 = a3;
  *(&v71 + 1) = v67;
  v37 = v68;
  *&v72 = a5;
  *(&v72 + 1) = v68;
  v38 = type metadata accessor for WorkoutPlanCreationView();
  v63 = a5;
  v39 = v69;
  sub_1E59E9C1C(v34, v35, v38);
  sub_1E5A2A514();
  v40 = MEMORY[0x1E697EAF0];
  sub_1E59F87B0(v14, v18, MEMORY[0x1E697EAF0]);
  v41 = *&v71 * 0.5;
  v42 = &v18[*(v15 + 68)];
  sub_1E59F87B0(v14, v42, v40);
  *(v42 + *(sub_1E5A2A744() + 20)) = v41;
  v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000428, &qword_1E5A411C8) + 36);
  v44 = v72;
  *v43 = v71;
  *(v43 + 16) = v44;
  *(v43 + 32) = v73;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000430, &qword_1E5A411D0);
  *(v42 + *(v45 + 52)) = v33;
  *(v42 + *(v45 + 56)) = 256;
  v46 = sub_1E5A2B7E4();
  v48 = v47;
  sub_1E59F8818(v14, MEMORY[0x1E697EAF0]);
  v49 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000438, &unk_1E5A411D8) + 36));
  *v49 = v46;
  v49[1] = v48;
  if (qword_1ECFFB488 != -1)
  {
    swift_once();
  }

  v50 = qword_1ED0264A8;
  sub_1E59F87B0(v18, v21, MEMORY[0x1E697EAF0]);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEAC0, &qword_1E5A3B470);
  *&v21[*(v51 + 52)] = v50;
  *&v21[*(v51 + 56)] = 256;
  v52 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000440, &qword_1E5A411E8) + 36)];
  sub_1E58BABA0(v18, v52, &qword_1ED000418, &qword_1E5A411B8);

  v53 = sub_1E5A2B7E4();
  v55 = v54;
  sub_1E58BAD14(v18, &qword_1ED000418, &qword_1E5A411B8);
  v56 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000448, &qword_1E5A411F0) + 36));
  *v56 = v53;
  v56[1] = v55;
  v57 = sub_1E5A2B7A4();
  MEMORY[0x1EEE9AC00](v57);
  v58 = v63;
  *(&v62 - 6) = v64;
  *(&v62 - 5) = v36;
  *(&v62 - 4) = v58;
  *(&v62 - 3) = v37;
  v61 = v39;
  v60 = sub_1E58CD164(&qword_1ED000450, &qword_1ED000420, &qword_1E5A411C0);
  sub_1E5A2B3B4();
  return sub_1E58BAD14(v21, &qword_1ED000420, &qword_1E5A411C0);
}

uint64_t sub_1E59F27D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  *&v50 = a5;
  *(&v50 + 1) = a6;
  v51 = a2;
  v11 = sub_1E5A2A754();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000418, &qword_1E5A411B8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v50 - v18;
  sub_1E5A2A084();
  v21 = v20;
  v22 = *(v12 + 28);
  v23 = *MEMORY[0x1E697F468];
  v24 = sub_1E5A2A9B4();
  (*(*(v24 - 8) + 104))(&v15[v22], v23, v24);
  *v15 = v21;
  *(v15 + 1) = v21;
  LOBYTE(v52) = *(a1 + 40);
  if (WorkoutPlanCatalogModalityKind.rawValue.getter() == 0x697461746964654DLL && v25 == 0xEA00000000006E6FLL)
  {

LABEL_5:
    if (qword_1ECFFB480 != -1)
    {
      swift_once();
    }

    v27 = &qword_1ED0264A0;
    goto LABEL_11;
  }

  v26 = sub_1E5A2C114();

  if (v26)
  {
    goto LABEL_5;
  }

  if (qword_1ECFFB478 != -1)
  {
    swift_once();
  }

  v27 = &qword_1ED026498;
LABEL_11:
  v28 = *v27;

  v29 = *(a1 + 8);
  v30 = *(a1 + 16);
  *&v52 = a3;
  *(&v52 + 1) = a4;
  v53 = v50;
  v31 = type metadata accessor for WorkoutPlanCreationView();
  sub_1E59E9C1C(v29, v30, v31);
  sub_1E5A2A514();
  v32 = MEMORY[0x1E697EAF0];
  sub_1E59F87B0(v15, v19, MEMORY[0x1E697EAF0]);
  v33 = *&v52 * 0.5;
  v34 = &v19[*(v16 + 68)];
  sub_1E59F87B0(v15, v34, v32);
  *(v34 + *(sub_1E5A2A744() + 20)) = v33;
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000428, &qword_1E5A411C8) + 36);
  v36 = v53;
  *v35 = v52;
  *(v35 + 16) = v36;
  *(v35 + 32) = v54;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000430, &qword_1E5A411D0);
  *(v34 + *(v37 + 52)) = v28;
  *(v34 + *(v37 + 56)) = 256;
  v38 = sub_1E5A2B7E4();
  v40 = v39;
  sub_1E59F8818(v15, MEMORY[0x1E697EAF0]);
  v41 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000438, &unk_1E5A411D8) + 36));
  *v41 = v38;
  v41[1] = v40;
  if (qword_1ECFFB488 != -1)
  {
    swift_once();
  }

  v42 = qword_1ED0264A8;
  sub_1E59F87B0(v19, a7, MEMORY[0x1E697EAF0]);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEAC0, &qword_1E5A3B470);
  *(a7 + *(v43 + 52)) = v42;
  *(a7 + *(v43 + 56)) = 256;
  v44 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000440, &qword_1E5A411E8) + 36);
  sub_1E58BABA0(v19, v44, &qword_1ED000418, &qword_1E5A411B8);

  v45 = sub_1E5A2B7E4();
  v47 = v46;
  sub_1E58BAD14(v19, &qword_1ED000418, &qword_1E5A411B8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000448, &qword_1E5A411F0);
  v49 = (v44 + *(result + 36));
  *v49 = v45;
  v49[1] = v47;
  return result;
}

uint64_t sub_1E59F2C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E5A2A084();
  v5 = v4;
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003F8, &unk_1E5A411A0) + 36));
  v7 = sub_1E5A2A754();
  v8 = *(v7 + 20);
  v9 = *MEMORY[0x1E697F468];
  v10 = sub_1E5A2A9B4();
  v11 = *(*(v10 - 8) + 104);
  v11(&v6[v8], v9, v10);
  *v6 = v5;
  *(v6 + 1) = v5;
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)] = 256;
  sub_1E58BABA0(a1, a2, &qword_1ED000388, &qword_1E5A41178);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003C0, &qword_1E5A41198) + 36));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000408, &qword_1E5A455F0);
  v14 = v12 + *(v13 + 40);
  sub_1E5A2A784();
  sub_1E5A2A084();
  v16 = v15;
  result = (v11)(v12 + *(v7 + 20), v9, v10);
  *v12 = v16;
  v12[1] = v16;
  *(v12 + *(v13 + 36)) = 0;
  return result;
}

__n128 sub_1E59F2DDC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003F8, &unk_1E5A411A0) + 36));
  v5 = sub_1E5A2A754();
  v6 = *(v5 + 20);
  v7 = *MEMORY[0x1E697F468];
  v8 = sub_1E5A2A9B4();
  v9 = *(*(v8 - 8) + 104);
  v9(v4 + v6, v7, v8);
  __asm { FMOV            V0.2D, #8.0 }

  v19 = _Q0;
  *v4 = _Q0;
  *(v4->n128_u16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)) = 256;
  sub_1E58BABA0(a1, a2, &qword_1ED000388, &qword_1E5A41178);
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003C0, &qword_1E5A41198) + 36));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000408, &qword_1E5A455F0);
  v17 = v15 + *(v16 + 40);
  sub_1E5A2A784();
  v9(v15 + *(v5 + 20), v7, v8);
  result = v19;
  *v15 = v19;
  v15->n128_u8[*(v16 + 36)] = 0;
  return result;
}

uint64_t sub_1E59F2F54@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A29EB4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5A2BB14();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2D33E0;
  v7 = type metadata accessor for WorkoutPlanCreationView();
  sub_1E59E925C(v7);
  swift_getKeyPath();
  sub_1E5A2B944();

  v8 = sub_1E5A2AF64();
  v10 = v9;
  v12 = v11;
  sub_1E5A2AE84();
  sub_1E5A2AE24();

  v13 = sub_1E5A2AFA4();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_1E58B3C9C(v8, v10, v12 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_1E59F3180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a4;
  v47 = a1;
  v53 = a6;
  v9 = sub_1E5A2AA04();
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0000F0, &qword_1E5A40D28);
  v38 = sub_1E5A2AA84();
  v12 = sub_1E5A2B494();
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v36 - v14;
  v41 = v12;
  v15 = sub_1E5A2A6C4();
  v49 = *(v15 - 8);
  v16 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v36 - v17;
  v66 = sub_1E58CD164(&qword_1ED0000F8, &qword_1ED0000F0, &qword_1E5A40D28);
  v67 = a5;
  WitnessTable = swift_getWitnessTable();
  v65 = WitnessTable;
  v40 = swift_getWitnessTable();
  v63 = v40;
  v64 = MEMORY[0x1E697E5D8];
  v39 = swift_getWitnessTable();
  v59 = v15;
  v60 = v39;
  v43 = MEMORY[0x1E697D198];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v44 = *(OpaqueTypeMetadata2 - 8);
  v19 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36 - v23;
  v54 = a2;
  v55 = a3;
  v25 = a3;
  v26 = v46;
  v56 = v46;
  v57 = a5;
  v58 = v47;
  v27 = v42;
  sub_1E5A2B484();
  v59 = a2;
  v60 = v25;
  v61 = v26;
  v62 = a5;
  v28 = type metadata accessor for WorkoutPlanCreationView();
  sub_1E59E925C(v28);
  swift_getKeyPath();
  sub_1E5A2B944();

  v29 = v45;
  v30 = v41;
  sub_1E5A2B324();
  (*(v48 + 8))(v27, v30);
  v31 = v50;
  v32 = v39;
  sub_1E597E014();
  sub_1E5A2B1F4();
  (*(v51 + 8))(v31, v52);
  (*(v49 + 8))(v29, v15);
  v59 = v15;
  v60 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E58B41DC(v21, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v34 = *(v44 + 8);
  v34(v21, OpaqueTypeMetadata2);
  sub_1E58B41DC(v24, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v34)(v24, OpaqueTypeMetadata2);
}

uint64_t sub_1E59F3714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a6;
  v38 = *(a3 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v37 = &v34 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0000F0, &qword_1E5A40D28);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  v20 = sub_1E5A2AA84();
  v39 = *(v20 - 8);
  v21 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v34 - v22;
  v35 = a2;
  v36 = a4;
  v44 = a2;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v40 = a5;
  v24 = type metadata accessor for WorkoutPlanCreationView();
  sub_1E59E925C(v24);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v44 == 1)
  {
    *v19 = sub_1E5A2AA24();
    *(v19 + 1) = 0x4034000000000000;
    v19[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000210, &qword_1E5A40F20);
    v27 = v40;
    sub_1E59F3B3C(a1, v35, a3, v36, v40, &v19[*(v26 + 44)]);
    sub_1E58CD164(&qword_1ED0000F8, &qword_1ED0000F0, &qword_1E5A40D28);
    sub_1E595EBC0(v19, v16);
    sub_1E58BAD14(v19, &qword_1ED0000F0, &qword_1E5A40D28);
  }

  else
  {
    v28 = a1 + *(v24 + 76);
    v29 = *(v28 + 8);
    (*v28)(v25);
    v30 = v37;
    v27 = v40;
    sub_1E58B41DC(v13, a3, v40);
    v31 = *(v38 + 8);
    v31(v13, a3);
    sub_1E58B41DC(v30, a3, v27);
    sub_1E58CD164(&qword_1ED0000F8, &qword_1ED0000F0, &qword_1E5A40D28);
    sub_1E595ECB8(v13, v16, a3);
    v31(v13, a3);
    v31(v30, a3);
  }

  v42 = sub_1E58CD164(&qword_1ED0000F8, &qword_1ED0000F0, &qword_1E5A40D28);
  v43 = v27;
  WitnessTable = swift_getWitnessTable();
  sub_1E58B41DC(v23, v20, WitnessTable);
  return (*(v39 + 8))(v23, v20);
}

uint64_t sub_1E59F3B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v113 = a6;
  v101 = sub_1E5A2ACA4();
  v100 = *(v101 - 8);
  v11 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = a2;
  v118 = a3;
  v119 = a4;
  v120 = a5;
  v92 = a5;
  v13 = type metadata accessor for WorkoutPlanCreationView();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v87 - v16;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE930, &qword_1E5A3B268);
  v95 = *(v98 - 8);
  v18 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v93 = &v87 - v19;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF10, &unk_1E5A3C3F0);
  v96 = *(v97 - 8);
  v20 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v94 = &v87 - v21;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000218, &qword_1E5A40F28);
  v22 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v87 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000220, &qword_1E5A40F30);
  v111 = *(v24 - 8);
  v112 = v24;
  v25 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v116 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v114 = v13;
  v115 = &v87 - v28;
  v107 = a1;
  sub_1E59E925C(v13);
  swift_getKeyPath();
  sub_1E5A2B934();

  if (v118)
  {
    sub_1E58D1C80();
    v29 = sub_1E5A2AFD4();
    v31 = v30;
    v87 = v15;
    v32 = a3;
    v34 = v33;
    v91 = a4;
    sub_1E5A2AF04();
    v35 = sub_1E5A2AFA4();
    v89 = v14;
    v37 = v36;
    v90 = a2;
    v39 = v38;
    v88 = v17;
    v41 = v40;

    v42 = v34 & 1;
    a3 = v32;
    sub_1E58B3C9C(v29, v31, v42);
    a4 = v91;

    KeyPath = swift_getKeyPath();
    v44 = sub_1E5A2ABA4();
    v45 = v39 & 1;
    a2 = v90;
    v102 = v44 << 32;
    v108 = v35;
    v106 = v37;
    v46 = v37;
    v14 = v89;
    v103 = v45;
    sub_1E594C9E8(v35, v46, v45);
    v105 = v41;
    v17 = v88;

    v104 = KeyPath;
  }

  else
  {
    v108 = 0;
    v106 = 0;
    v103 = 0;
    v105 = 0;
    v104 = 0;
    v102 = 0;
  }

  v47 = v114;
  (*(v14 + 16))(v17, v107, v114);
  v48 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v49 = swift_allocObject();
  *(v49 + 2) = a2;
  *(v49 + 3) = a3;
  v50 = v92;
  *(v49 + 4) = a4;
  *(v49 + 5) = v50;
  v51 = (*(v14 + 32))(&v49[v48], v17, v47);
  MEMORY[0x1EEE9AC00](v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA28, &unk_1E5A3B3C0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA30, &unk_1E5A3C420);
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA38, &unk_1E5A3B3D0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA40, &unk_1E5A3C430);
  v55 = sub_1E596F578();
  v56 = sub_1E596F688();
  v57 = sub_1E596F740();
  v117 = v52;
  v118 = MEMORY[0x1E6981CD8];
  v119 = v53;
  v120 = v54;
  v121 = v55;
  v122 = MEMORY[0x1E6981CD0];
  v123 = v56;
  v124 = v57;
  swift_getOpaqueTypeConformance2();
  v58 = v93;
  sub_1E5A2B574();
  v59 = v99;
  sub_1E5A2AC94();
  v60 = sub_1E58CD164(&qword_1ECFFE938, &qword_1ECFFE930, &qword_1E5A3B268);
  v61 = sub_1E59F922C(&qword_1ECFFE940, MEMORY[0x1E697CB70]);
  v62 = v94;
  v63 = v98;
  v64 = v101;
  sub_1E5A2B0B4();
  (*(v100 + 8))(v59, v64);
  (*(v95 + 8))(v58, v63);
  v117 = v63;
  v118 = v64;
  v119 = v60;
  v120 = v61;
  swift_getOpaqueTypeConformance2();
  v65 = v109;
  v66 = v97;
  sub_1E5A2B004();
  (*(v96 + 8))(v62, v66);
  v67 = v114;
  v68 = sub_1E59F81B8(v114);
  v69 = swift_getKeyPath();
  v117 = v68;

  v70 = sub_1E5A2A5C4();
  v71 = (v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000228, &qword_1E5A40F90) + 36));
  *v71 = v69;
  v71[1] = v70;
  sub_1E59E925C(v67);
  swift_getKeyPath();
  sub_1E5A2B934();

  LOBYTE(v69) = v117;
  *(v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000230, &qword_1E5A40FB8) + 36)) = v69;
  sub_1E59E925C(v67);
  swift_getKeyPath();
  sub_1E5A2B934();

  LOBYTE(v69) = v117;
  v72 = swift_getKeyPath();
  v73 = swift_allocObject();
  *(v73 + 16) = (v69 & 1) == 0;
  v74 = (v65 + *(v110 + 36));
  *v74 = v72;
  v74[1] = sub_1E59F8290;
  v74[2] = v73;
  sub_1E5A2B7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000238, &qword_1E5A40FF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000240, &qword_1E5A40FF8);
  sub_1E59F82A8();
  sub_1E59F85A0();
  sub_1E59F8658();
  v75 = v115;
  sub_1E5A2B3A4();
  sub_1E58BAD14(v65, &qword_1ED000218, &qword_1E5A40F28);
  v77 = v111;
  v76 = v112;
  v114 = *(v111 + 16);
  v114(v116, v75, v112);
  v78 = v113;
  v79 = v108;
  v81 = v105;
  v80 = v106;
  *v113 = v108;
  v78[1] = v80;
  LOBYTE(v64) = v103;
  v78[2] = v103;
  v78[3] = v81;
  v82 = v102;
  v78[4] = v104;
  v78[5] = v82;
  v83 = v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000270, &qword_1E5A41000) + 48);
  v84 = v116;
  v114(v83, v116, v76);
  sub_1E59F8710(v79, v80, v64, v81);
  sub_1E59F8760(v79, v80, v64, v81);
  v85 = *(v77 + 8);
  v85(v115, v76);
  v85(v84, v76);
  return sub_1E59F8760(v79, v80, v64, v81);
}

uint64_t sub_1E59F4698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E5A2A644();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = type metadata accessor for WorkoutPlanCreationAction();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v15 = type metadata accessor for WorkoutPlanCreationView();
  sub_1E59E925C(v15);
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();

  sub_1E59F8818(v14, type metadata accessor for WorkoutPlanCreationAction);
  v16 = *(v15 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED000148, &qword_1E5A40D60);
  sub_1E5A2B524();
  sub_1E59F6B64();
  sub_1E5A2A624();
  return sub_1E5A2B534();
}

uint64_t sub_1E59F4828()
{
  v0 = sub_1E5A29EB4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1E5A2BB14();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE2D33E0;
  v5 = type metadata accessor for WorkoutPlanCreationView();
  sub_1E59E925C(v5);
  swift_getKeyPath();
  sub_1E5A2B944();

  v6 = sub_1E5A2AF64();
  v8 = v7;
  v10 = v9;
  sub_1E59E9B90(v5);
  v11 = sub_1E5A2AF84();
  v13 = v12;
  v15 = v14;
  sub_1E58B3C9C(v6, v8, v10 & 1);

  sub_1E5A2AE14();
  sub_1E5A2AE64();
  sub_1E5A2AEA4();

  v16 = sub_1E5A2AFA4();
  v18 = v17;
  LOBYTE(v8) = v19;
  v21 = v20;

  sub_1E58B3C9C(v11, v13, v15 & 1);

  LOBYTE(v5) = sub_1E5A2ADF4();
  sub_1E5A2A424();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v38 = v8 & 1;
  v37 = 0;
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  *(&v39[6] + 7) = *&v39[21];
  *(&v39[8] + 7) = *&v39[23];
  *(&v39[10] + 7) = *&v39[25];
  *(&v39[12] + 7) = v40;
  *(v39 + 7) = *&v39[15];
  *(&v39[2] + 7) = *&v39[17];
  *(&v39[4] + 7) = *&v39[19];
  *&v31 = v16;
  *(&v31 + 1) = v18;
  LOBYTE(v32) = v8 & 1;
  *(&v32 + 1) = v21;
  LOBYTE(v33) = v5;
  *(&v33 + 1) = v23;
  *&v34 = v25;
  *(&v34 + 1) = v27;
  *v35 = v29;
  v35[8] = 0;
  *&v35[73] = *&v39[8];
  *&v35[89] = *&v39[10];
  *&v35[105] = *&v39[12];
  *&v35[120] = *(&v40 + 1);
  *&v35[9] = *v39;
  *&v35[25] = *&v39[2];
  *&v35[41] = *&v39[4];
  *&v35[57] = *&v39[6];
  sub_1E5A2B7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA30, &unk_1E5A3C420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA38, &unk_1E5A3B3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA40, &unk_1E5A3C430);
  sub_1E596F578();
  sub_1E596F688();
  sub_1E596F740();
  sub_1E5A2B3A4();
  v36[8] = *&v35[64];
  v36[9] = *&v35[80];
  v36[10] = *&v35[96];
  v36[11] = *&v35[112];
  v36[4] = *v35;
  v36[5] = *&v35[16];
  v36[6] = *&v35[32];
  v36[7] = *&v35[48];
  v36[0] = v31;
  v36[1] = v32;
  v36[2] = v33;
  v36[3] = v34;
  return sub_1E58BAD14(v36, &qword_1ECFFEA30, &unk_1E5A3C420);
}

uint64_t sub_1E59F4CDC@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E5A2B6A4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26[-v9];
  v11 = a1[9];
  v35 = a1[8];
  v36 = v11;
  v12 = a1[11];
  v37 = a1[10];
  v38 = v12;
  v13 = a1[5];
  v31 = a1[4];
  v32 = v13;
  v14 = a1[7];
  v33 = a1[6];
  v34 = v14;
  v15 = a1[1];
  v27 = *a1;
  v28 = v15;
  v16 = a1[3];
  v29 = a1[2];
  v30 = v16;
  v17 = *MEMORY[0x1E697F468];
  v18 = sub_1E5A2A9B4();
  (*(*(v18 - 8) + 104))(v10, v17, v18);
  sub_1E59F87B0(v10, v7, MEMORY[0x1E6981998]);
  LODWORD(v17) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA38, &unk_1E5A3B3D0) + 36);
  sub_1E59F922C(&qword_1ECFFEA98, MEMORY[0x1E6981998]);
  sub_1E5A2AD54();
  sub_1E59F8818(v10, MEMORY[0x1E6981998]);
  v19 = v36;
  a2[8] = v35;
  a2[9] = v19;
  v20 = v38;
  a2[10] = v37;
  a2[11] = v20;
  v21 = v32;
  a2[4] = v31;
  a2[5] = v21;
  v22 = v34;
  a2[6] = v33;
  a2[7] = v22;
  v23 = v28;
  *a2 = v27;
  a2[1] = v23;
  v24 = v30;
  a2[2] = v29;
  a2[3] = v24;
  return sub_1E58BABA0(&v27, v26, &qword_1ECFFEA30, &unk_1E5A3C420);
}

uint64_t sub_1E59F4EF0@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E5A2A754();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33[-v9];
  v11 = a1[9];
  v42 = a1[8];
  v43 = v11;
  v12 = a1[11];
  v44 = a1[10];
  v45 = v12;
  v13 = a1[5];
  v38 = a1[4];
  v39 = v13;
  v14 = a1[7];
  v40 = a1[6];
  v41 = v14;
  v15 = a1[3];
  v36 = a1[2];
  v37 = v15;
  v16 = a1[1];
  v34 = *a1;
  v35 = v16;
  v18 = *(v17 + 20);
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_1E5A2A9B4();
  (*(*(v20 - 8) + 104))(&v10[v18], v19, v20);
  __asm { FMOV            V0.2D, #12.0 }

  *v10 = _Q0;
  sub_1E59F87B0(v10, v7, MEMORY[0x1E697EAF0]);
  LODWORD(v19) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA40, &unk_1E5A3C430) + 36);
  sub_1E59F922C(&qword_1ECFFEA90, MEMORY[0x1E697EAF0]);
  sub_1E5A2AD54();
  sub_1E59F8818(v10, MEMORY[0x1E697EAF0]);
  v26 = v43;
  a2[8] = v42;
  a2[9] = v26;
  v27 = v45;
  a2[10] = v44;
  a2[11] = v27;
  v28 = v39;
  a2[4] = v38;
  a2[5] = v28;
  v29 = v41;
  a2[6] = v40;
  a2[7] = v29;
  v30 = v35;
  *a2 = v34;
  a2[1] = v30;
  v31 = v37;
  a2[2] = v36;
  a2[3] = v31;
  return sub_1E58BABA0(&v34, v33, &qword_1ECFFEA30, &unk_1E5A3C420);
}

uint64_t sub_1E59F5110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000238, &qword_1E5A40FF0) + 36);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1E5A2A9B4();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC788, &qword_1E5A319E0) + 36)) = 256;
  return sub_1E58BABA0(a1, a2, &qword_1ED000218, &qword_1E5A40F28);
}

uint64_t sub_1E59F51DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000240, &qword_1E5A40FF8) + 36));
  v5 = *(sub_1E5A2A754() + 20);
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1E5A2A9B4();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)] = 256;
  return sub_1E58BABA0(a1, a2, &qword_1ED000218, &qword_1E5A40F28);
}

uint64_t sub_1E59F52C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v106 = a6;
  v105 = sub_1E5A2A904();
  v104 = *(v105 - 8);
  v11 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v118 = a2;
  *(&v118 + 1) = a3;
  v13 = a2;
  v107 = a2;
  *&v119 = a4;
  *(&v119 + 1) = a5;
  v14 = a4;
  v15 = a5;
  v16 = type metadata accessor for WorkoutPlanScheduleReviewView();
  WitnessTable = swift_getWitnessTable();
  *&v118 = v16;
  *(&v118 + 1) = WitnessTable;
  v82 = v16;
  v18 = WitnessTable;
  v90 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v102 = *(OpaqueTypeMetadata2 - 8);
  v20 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v88 = &v76 - v21;
  *&v118 = v16;
  *(&v118 + 1) = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v118 = OpaqueTypeMetadata2;
  *(&v118 + 1) = OpaqueTypeConformance2;
  v95 = OpaqueTypeMetadata2;
  v23 = OpaqueTypeConformance2;
  v96 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeMetadata2();
  v101 = *(v24 - 8);
  v25 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v94 = &v76 - v26;
  *&v118 = OpaqueTypeMetadata2;
  *(&v118 + 1) = v23;
  v27 = swift_getOpaqueTypeConformance2();
  *&v118 = v24;
  *(&v118 + 1) = v27;
  v28 = v24;
  v91 = v24;
  v29 = v27;
  v93 = v27;
  v30 = swift_getOpaqueTypeMetadata2();
  v89 = v30;
  v100 = *(v30 - 8);
  v31 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v99 = &v76 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000118, &qword_1E5A40D40);
  v87 = v33;
  *&v118 = v28;
  *(&v118 + 1) = v29;
  v34 = swift_getOpaqueTypeConformance2();
  v86 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000120, &unk_1E5A40D48);
  v36 = sub_1E59F6A70();
  *&v118 = v35;
  *(&v118 + 1) = v36;
  v85 = swift_getOpaqueTypeConformance2();
  *&v118 = v30;
  *(&v118 + 1) = v33;
  *&v119 = v34;
  *(&v119 + 1) = v85;
  v92 = MEMORY[0x1E697D5A0];
  v97 = swift_getOpaqueTypeMetadata2();
  v98 = *(v97 - 8);
  v37 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v81 = &v76 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v83 = &v76 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v84 = &v76 - v42;
  *&v118 = v13;
  *(&v118 + 1) = a3;
  v78 = a3;
  v79 = v14;
  *&v119 = v14;
  *(&v119 + 1) = v15;
  v80 = v15;
  v43 = type metadata accessor for WorkoutPlanCreationView();
  v44 = a1;
  v77 = sub_1E59E925C(v43);
  v45 = (a1 + v43[18]);
  v47 = *v45;
  v46 = v45[1];
  v48 = (a1 + v43[19]);
  v49 = *v48;
  v50 = v48[1];
  v51 = *(a1 + v43[15]);

  WorkoutPlanScheduleReviewView.init(store:dateComponentsFormatter:artworkViewBuilder:marketingButtonViewBuilder:)(v77, v51, v47, v46, v49, v50, &v113);
  v52 = sub_1E59E9CB4(v43);
  v54 = v53;
  LOBYTE(v15) = v55;
  v56 = swift_checkMetadataState();
  v57 = v88;
  sub_1E5A2B174();
  sub_1E58B3C9C(v52, v54, v15 & 1);

  v120 = v115;
  v121 = v116;
  v122 = v117;
  v118 = v113;
  v119 = v114;
  (*(*(v56 - 8) + 8))(&v118, v56);
  v58 = v104;
  v59 = v103;
  v60 = v105;
  (*(v104 + 104))(v103, *MEMORY[0x1E697C428], v105);
  v61 = v94;
  v62 = v95;
  sub_1E590F06C();
  (*(v58 + 8))(v59, v60);
  (*(v102 + 8))(v57, v62);
  sub_1E59E925C(v43);
  swift_getKeyPath();
  sub_1E5A2B934();

  v63 = v99;
  v64 = v91;
  sub_1E5A2B284();
  (*(v101 + 8))(v61, v64);
  v108 = v107;
  v109 = v78;
  v110 = v79;
  v111 = v80;
  v112 = v44;
  v65 = v81;
  v66 = v89;
  v67 = v87;
  v68 = v86;
  v69 = v85;
  sub_1E5A2B344();
  (*(v100 + 8))(v63, v66);
  *&v113 = v66;
  *(&v113 + 1) = v67;
  *&v114 = v68;
  *(&v114 + 1) = v69;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v83;
  v72 = v97;
  sub_1E58B41DC(v65, v97, v70);
  v73 = *(v98 + 8);
  v73(v65, v72);
  v74 = v84;
  sub_1E58B41DC(v71, v72, v70);
  v73(v71, v72);
  sub_1E58B41DC(v74, v72, v70);
  return (v73)(v74, v72);
}

uint64_t sub_1E59F5C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000140, &qword_1E5A40D58);
  v43 = *(v11 - 8);
  v44 = v11;
  v12 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v38 - v13;
  v14 = sub_1E5A2AB14();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE9F0, &qword_1E5A3B340);
  v41 = *(v45 - 8);
  v16 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v40 = &v38 - v17;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000120, &unk_1E5A40D48);
  v18 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38 - v22;
  v39 = a2;
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v24 = type metadata accessor for WorkoutPlanCreationView();
  sub_1E59E925C(v24);
  swift_getKeyPath();
  sub_1E5A2B934();

  if (v48 == 1)
  {
    v25 = sub_1E5A2AB04();
    v38 = &v38;
    MEMORY[0x1EEE9AC00](v25);
    *(&v38 - 6) = v39;
    *(&v38 - 5) = a3;
    *(&v38 - 4) = a4;
    *(&v38 - 3) = a5;
    *(&v38 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE9F8, &qword_1E5A3B348);
    sub_1E58CD164(&qword_1ECFFEA00, &qword_1ECFFE9F8, &qword_1E5A3B348);
    v26 = v40;
    sub_1E5A2A524();
    v27 = sub_1E58CD164(&qword_1ED000130, &qword_1ECFFE9F0, &qword_1E5A3B340);
    v28 = v42;
    v29 = v45;
    MEMORY[0x1E6931750](v26, v45, v27);
    v31 = v43;
    v30 = v44;
    (*(v43 + 16))(v20, v28, v44);
    (*(v31 + 56))(v20, 0, 1, v30);
    v48 = v29;
    v49 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1E6931760](v20, v30, OpaqueTypeConformance2);
    sub_1E58BAD14(v20, &qword_1ED000120, &unk_1E5A40D48);
    (*(v31 + 8))(v28, v30);
    (*(v41 + 8))(v26, v29);
  }

  else
  {
    v33 = v44;
    (*(v43 + 56))(v20, 1, 1, v44);
    v34 = sub_1E58CD164(&qword_1ED000130, &qword_1ECFFE9F0, &qword_1E5A3B340);
    v48 = v45;
    v49 = v34;
    v35 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1E6931760](v20, v33, v35);
    sub_1E58BAD14(v20, &qword_1ED000120, &unk_1E5A40D48);
  }

  v36 = sub_1E59F6A70();
  MEMORY[0x1E6931750](v23, v46, v36);
  return sub_1E58BAD14(v23, &qword_1ED000120, &unk_1E5A40D48);
}

uint64_t sub_1E59F6140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E5A2AB14();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE9F0, &qword_1E5A3B340);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19[-v15];
  sub_1E5A2AB04();
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE9F8, &qword_1E5A3B348);
  sub_1E58CD164(&qword_1ECFFEA00, &qword_1ECFFE9F8, &qword_1E5A3B348);
  sub_1E5A2A524();
  v17 = sub_1E58CD164(&qword_1ED000130, &qword_1ECFFE9F0, &qword_1E5A3B340);
  MEMORY[0x1E6931750](v16, v12, v17);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1E59F6344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25[2] = a8;
  v26 = a7;
  v25[0] = a5;
  v25[1] = a6;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v12 = type metadata accessor for WorkoutPlanCreationView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v25 - v15;
  v17 = sub_1E5A2A414();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A2A3F4();
  (*(v13 + 16))(v16, a1, v12);
  v21 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  *(v22 + 3) = a3;
  v23 = v25[0];
  *(v22 + 4) = a4;
  *(v22 + 5) = v23;
  (*(v13 + 32))(&v22[v21], v16, v12);
  return MEMORY[0x1E69321A0](v20, v26, v22);
}

uint64_t sub_1E59F64E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E5A2A5E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WorkoutPlanCreationAction();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v18 = type metadata accessor for WorkoutPlanCreationView();
  sub_1E59E925C(v18);
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();

  sub_1E59F8818(v17, type metadata accessor for WorkoutPlanCreationAction);
  sub_1E58CD724(v13);
  sub_1E5A2A5D4();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1E59F668C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E5A2A644();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = type metadata accessor for WorkoutPlanCreationAction();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v15 = type metadata accessor for WorkoutPlanCreationView();
  sub_1E59E925C(v15);
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();

  sub_1E59F8818(v14, type metadata accessor for WorkoutPlanCreationAction);
  sub_1E59E925C(v15);
  *v14 = 2;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();

  sub_1E59F8818(v14, type metadata accessor for WorkoutPlanCreationAction);
  sub_1E59E925C(v15);
  swift_getKeyPath();
  sub_1E5A2B934();

  if (LOBYTE(v19[0]) == 1)
  {
    sub_1E59E925C(v15);
    swift_getKeyPath();
    sub_1E5A2B934();

    v17 = v19[0];
    if (v19[0])
    {
      sub_1E59E925C(v15);
      *v14 = v17;
      swift_storeEnumTagMultiPayload();
      sub_1E5A2B954();

      sub_1E59F8818(v14, type metadata accessor for WorkoutPlanCreationAction);
      v18 = *(v15 + 64);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED000148, &qword_1E5A40D60);
      sub_1E5A2B524();
      sub_1E59F6B64();
      sub_1E5A2A624();
      return sub_1E5A2B534();
    }
  }

  return result;
}

void sub_1E59F6938(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1E5A2A5E4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v17 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    v17[0] = a4;
    v17[1] = a5;
    v17[2] = a6;
    v17[3] = a7;
    type metadata accessor for WorkoutPlanCreationView();
    sub_1E58CD724(v16);
    sub_1E5A2A5D4();
    (*(v13 + 8))(v16, v12);
  }
}

unint64_t sub_1E59F6A70()
{
  result = qword_1ED000128;
  if (!qword_1ED000128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000120, &unk_1E5A40D48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE9F0, &qword_1E5A3B340);
    sub_1E58CD164(&qword_1ED000130, &qword_1ECFFE9F0, &qword_1E5A3B340);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000128);
  }

  return result;
}

unint64_t sub_1E59F6B64()
{
  result = qword_1ED000138;
  if (!qword_1ED000138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000138);
  }

  return result;
}

void sub_1E59F6BE8(uint64_t a1, _BYTE *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for WorkoutPlanCreationView() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  sub_1E59F6938(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t sub_1E59F6CA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_1E59F6CF0()
{
  sub_1E59F6F48(319, &qword_1ECFFE9A0, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1E59F6F48(319, qword_1EE2CFB50, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1E59F6EA4();
      if (v2 <= 0x3F)
      {
        sub_1E59581C4();
        if (v3 <= 0x3F)
        {
          sub_1E59F6F48(319, &qword_1ED0001D8, MEMORY[0x1E697C0B0], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1E59F6FAC();
            if (v5 <= 0x3F)
            {
              sub_1E59E700C();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E59F6EA4()
{
  if (!qword_1ED0001D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
    sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);
    v0 = sub_1E5A2A504();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED0001D0);
    }
  }
}

void sub_1E59F6F48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E59F6FAC()
{
  if (!qword_1ED0001E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBF28, qword_1E5A2FAE0);
    v0 = sub_1E5A2B554();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED0001E0);
    }
  }
}

unint64_t sub_1E59F7040()
{
  result = qword_1ED0001F8;
  if (!qword_1ED0001F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0001F0, &qword_1E5A40E80);
    sub_1E58CD164(&qword_1ED000200, &qword_1ED000208, &unk_1E5A40E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0001F8);
  }

  return result;
}

uint64_t sub_1E59F7108@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for WorkoutPlanCreationView() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1E59F52C4(v8, v3, v4, v5, v6, a1);
}

uint64_t sub_1E59F7264()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for WorkoutPlanCreationView() - 8);
  return sub_1E59F64E8(v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80)), v1, v2, v3, v4);
}

uint64_t sub_1E59F732C(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for WorkoutPlanCreationView() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_1E59F73F4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E5A22668(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1E59F7460(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E59F7460(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E5A2C0E4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000580, &qword_1E5A451D0);
        v5 = sub_1E5A2BC24();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1E59F7664(v7, v8, a1, v4);
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
    return sub_1E59F7568(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E59F7568(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    v10 = *v9;
    result = *(v9 + 1);
    v11 = *(v9 + 2);
    v12 = v8;
    v13 = v7;
    while (1)
    {
      v14 = *v13;
      if (v10 == v14)
      {
        v15 = result == *(v13 + 1) && v11 == *(v13 + 2);
        if (v15 || (result = sub_1E5A2C114(), (result & 1) == 0))
        {
LABEL_4:
          ++v4;
          v7 += 24;
          --v8;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else if (v10 >= v14)
      {
        goto LABEL_4;
      }

      if (!v6)
      {
        break;
      }

      v10 = v13[24];
      result = *(v13 + 4);
      v11 = *(v13 + 5);
      *(v13 + 24) = *v13;
      *(v13 + 5) = *(v13 + 2);
      *v13 = v10;
      *(v13 + 1) = result;
      *(v13 + 2) = v11;
      v13 -= 24;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E59F7664(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v100 = result;
  v5 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_112:
    v9 = *v100;
    if (!*v100)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_144:
      result = sub_1E5A21290(v8);
      v8 = result;
    }

    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (*v5)
      {
        v94 = *&v8[16 * v93];
        v95 = *&v8[16 * v93 + 24];
        sub_1E59F7CC0((*v5 + 24 * v94), (*v5 + 24 * *&v8[16 * v93 + 16]), *v5 + 24 * v95, v9);
        if (v4)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E5A21290(v8);
        }

        if (v93 - 2 >= *(v8 + 2))
        {
          goto LABEL_138;
        }

        v96 = &v8[16 * v93];
        *v96 = v94;
        *(v96 + 1) = v95;
        result = sub_1E5A21204(v93 - 1);
        v93 = *(v8 + 2);
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_148;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      v12 = *v11;
      v13 = (*v5 + 24 * v9);
      v14 = *v13;
      if (v12 == v14)
      {
        result = *(v11 + 1);
        if (result == *(v13 + 1) && *(v11 + 2) == *(v13 + 2))
        {
          v16 = 0;
        }

        else
        {
          result = sub_1E5A2C114();
          v16 = result;
        }
      }

      else
      {
        v16 = v12 < v14;
      }

      v7 = (v9 + 2);
      if ((v9 + 2) < v6)
      {
        v17 = v10 + 24 * v9 + 32;
        v18 = v17;
        do
        {
          v19 = *(v17 + 16);
          v20 = *(v18 + 24);
          v18 += 24;
          result = v20;
          v21 = *(v17 - 8);
          if (v19 == v21)
          {
            if (result == *v17 && *(v17 + 32) == *(v17 + 8))
            {
              if (v16)
              {
                goto LABEL_28;
              }
            }

            else
            {
              result = sub_1E5A2C114();
              if ((v16 ^ result))
              {
                goto LABEL_25;
              }
            }
          }

          else
          {
            result = v19 < v21;
            if ((v16 ^ result))
            {
              goto LABEL_25;
            }
          }

          ++v7;
          v17 = v18;
        }

        while (v6 != v7);
        v7 = v6;
        if (!v16)
        {
          goto LABEL_36;
        }

LABEL_28:
        if (v7 < v9)
        {
          goto LABEL_141;
        }

        if (v9 < v7)
        {
          v23 = 24 * v7 - 8;
          v24 = 24 * v9;
          v25 = v7;
          v26 = v9;
          do
          {
            if (v26 != --v25)
            {
              v33 = *v5;
              if (!*v5)
              {
                goto LABEL_147;
              }

              v27 = (v33 + v24);
              v28 = (v33 + v23);
              v29 = *v27;
              v30 = *(v27 + 1);
              v31 = *(v27 + 2);
              v32 = *v28;
              *v27 = *(v28 - 1);
              *(v27 + 2) = v32;
              *(v28 - 16) = v29;
              *(v28 - 1) = v30;
              *v28 = v31;
            }

            ++v26;
            v23 -= 24;
            v24 += 24;
          }

          while (v26 < v25);
        }

        goto LABEL_36;
      }

LABEL_25:
      if (v16)
      {
        goto LABEL_28;
      }
    }

LABEL_36:
    v34 = v5[1];
    if (v7 < v34)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_140;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_142;
        }

        if (&v9[a4] >= v34)
        {
          v35 = v5[1];
        }

        else
        {
          v35 = &v9[a4];
        }

        if (v35 < v9)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (v7 != v35)
        {
          break;
        }
      }
    }

LABEL_61:
    if (v7 < v9)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E58E6258(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v48 = *(v8 + 2);
    v47 = *(v8 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_1E58E6258((v47 > 1), v48 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v49;
    v50 = &v8[16 * v48];
    *(v50 + 4) = v9;
    *(v50 + 5) = v7;
    v51 = *v100;
    if (!*v100)
    {
      goto LABEL_149;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v53 = *(v8 + 4);
          v54 = *(v8 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_81:
          if (v56)
          {
            goto LABEL_128;
          }

          v69 = &v8[16 * v49];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_131;
          }

          v75 = &v8[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_135;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v49 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        v79 = &v8[16 * v49];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_95:
        if (v74)
        {
          goto LABEL_130;
        }

        v82 = &v8[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_133;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_102:
        v90 = v52 - 1;
        if (v52 - 1 >= v49)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v5)
        {
          goto LABEL_146;
        }

        v9 = *&v8[16 * v90 + 32];
        v91 = *&v8[16 * v52 + 40];
        sub_1E59F7CC0((*v5 + 24 * v9), (*v5 + 24 * *&v8[16 * v52 + 32]), *v5 + 24 * v91, v51);
        if (v4)
        {
        }

        if (v91 < v9)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E5A21290(v8);
        }

        if (v90 >= *(v8 + 2))
        {
          goto LABEL_125;
        }

        v92 = &v8[16 * v90];
        *(v92 + 4) = v9;
        *(v92 + 5) = v91;
        result = sub_1E5A21204(v52);
        v49 = *(v8 + 2);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v8[16 * v49 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_126;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_127;
      }

      v64 = &v8[16 * v49];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_129;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_132;
      }

      if (v68 >= v60)
      {
        v86 = &v8[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_136;
        }

        if (v55 < v89)
        {
          v52 = v49 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_81;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_112;
    }
  }

  v97 = v9;
  v98 = v5;
  v36 = *v5;
  v37 = *v5 + 24 * v7 - 24;
  v38 = &v9[-v7];
LABEL_47:
  v39 = (v36 + 24 * v7);
  v40 = *v39;
  result = *(v39 + 1);
  v41 = *(v39 + 2);
  v42 = v38;
  v43 = v37;
  while (1)
  {
    v44 = *v43;
    if (v40 == v44)
    {
      v45 = result == *(v43 + 1) && v41 == *(v43 + 2);
      if (v45 || (result = sub_1E5A2C114(), (result & 1) == 0))
      {
LABEL_46:
        ++v7;
        v37 += 24;
        --v38;
        if (v7 != v35)
        {
          goto LABEL_47;
        }

        v7 = v35;
        v9 = v97;
        v5 = v98;
        goto LABEL_61;
      }
    }

    else if (v40 >= v44)
    {
      goto LABEL_46;
    }

    if (!v36)
    {
      break;
    }

    v40 = v43[24];
    result = *(v43 + 4);
    v41 = *(v43 + 5);
    *(v43 + 24) = *v43;
    *(v43 + 5) = *(v43 + 2);
    *v43 = v40;
    *(v43 + 1) = result;
    *(v43 + 2) = v41;
    v43 -= 24;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}