uint64_t sub_24829AB34(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_248384640();
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
        v5 = sub_248383B60();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24829ACFC(v7, v8, a1, v4);
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
    return sub_24829AC2C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24829AC2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_248384680(), (result & 1) == 0))
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

uint64_t sub_24829ACFC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_24829B58C(v8);
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
        sub_24829B2D8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_248384680();
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
            result = sub_248384680();
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
      result = sub_248299530(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_248299530((v39 > 1), v40 + 1, 1, v8);
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
        sub_24829B2D8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24829B58C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_24829B500(v44);
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
    if (v37 || (result = sub_248384680(), (result & 1) == 0))
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

uint64_t sub_24829B2D8(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_248384680() & 1) != 0)
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
      if (!v21 && (sub_248384680() & 1) != 0)
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

uint64_t sub_24829B500(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24829B58C(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_24829B5B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91690);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91660);
    v7 = sub_2483845F0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_248232C78(v9, v5, &qword_27EE91690);
      result = sub_248299634(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_248381DC0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_24829B79C()
{
  v1 = *(sub_248381DC0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_248297974(v3, v0 + v2, v4);
}

uint64_t sub_24829B850(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24829B8B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_248298A60();
  }

  return result;
}

uint64_t sub_24829B90C(uint64_t a1)
{
  v3 = *(sub_248381DC0() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_248297DF4(a1, v4, v5);
}

uint64_t sub_24829B980()
{
  v1 = *(sub_248381DC0() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return sub_248298260(v2, v0 + 24, v3);
}

id sub_24829BA10(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CF9208]) initWithPackage:a2 state:0];
  [v6 setContentMode_];
  if (a3)
  {
    [v6 play];
  }

  return v6;
}

id sub_24829BA8C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  [a1 setContentMode_];
  v7 = &selRef_play;
  if ((a4 & 1) == 0)
  {
    v7 = &selRef_stop;
  }

  v8 = *v7;

  return [a1 v8];
}

uint64_t sub_24829BAF0(int a1, int a2, int a3, int a4, id a5)
{
  v5 = [a5 package];
  v6 = [v5 rootLayer];

  if (!v6)
  {
    return 0;
  }

  [v6 frame];
  v8 = v7;

  return v8;
}

id sub_24829BB8C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = [objc_allocWithZone(MEMORY[0x277CF9208]) initWithPackage:v1 state:0];
  [v4 setContentMode_];
  if (v2 == 1)
  {
    [v4 play];
  }

  return v4;
}

id sub_24829BC0C(void *a1)
{
  v3 = *(v1 + 8);
  [a1 setContentMode_];
  v4 = &selRef_play;
  if (!v3)
  {
    v4 = &selRef_stop;
  }

  v5 = *v4;

  return [a1 v5];
}

uint64_t sub_24829BCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24829BE90();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24829BD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24829BE90();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24829BD6C()
{
  sub_24829BE90();
  sub_2483833F0();
  __break(1u);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24829BDA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24829BDF0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void type metadata accessor for ContentMode()
{
  if (!qword_27EE91698)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE91698);
    }
  }
}

unint64_t sub_24829BE90()
{
  result = qword_27EE916A0;
  if (!qword_27EE916A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE916A0);
  }

  return result;
}

uint64_t DBLiveActivityBannerView.requestIdentifier.getter()
{
  v1 = sub_2483812C0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v3);
  v6 = sub_2483812A0();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_24829C19C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9DashBoard24DBLiveActivityBannerView_identifier;
  swift_beginAccess();
  v4 = sub_2483812C0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24829C224(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard24DBLiveActivityBannerView_identifier;
  swift_beginAccess();
  v4 = sub_2483812C0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id sub_24829C314()
{
  v1 = OBJC_IVAR____TtC9DashBoard24DBLiveActivityBannerView_activityHostVC;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_24829C368(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard24DBLiveActivityBannerView_activityHostVC;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DBLiveActivityBannerView.ensureContent(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x88))();
  sub_248297394();
  v6 = sub_248383E50();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_248382800();
}

void sub_24829C638(void *a1, void (*a2)(void *))
{
  v4 = sub_248382A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = sub_248160784();
  v12 = *(v5 + 16);
  if (a1)
  {
    v12(v10, v11, v4);
    v13 = a1;
    v14 = sub_248382A80();
    v15 = sub_248383DC0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_248146000, v14, v15, "Banner content could not be ensured. Error %@", v16, 0xCu);
      sub_24822D578(v17, &qword_27EE8FE40);
      MEMORY[0x24C1CD5F0](v17, -1, -1);
      MEMORY[0x24C1CD5F0](v16, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    v20 = sub_2483810B0();
  }

  else
  {
    v12(v7, v11, v4);
    v21 = sub_248382A80();
    v22 = sub_248383DC0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_248146000, v21, v22, "Banner content ensured.", v23, 2u);
      MEMORY[0x24C1CD5F0](v23, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v20 = 0;
  }

  a2(v20);
}

uint64_t sub_24829CA68(uint64_t a1)
{
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {

    return FunctionReplacement(a1);
  }

  else
  {
    result = sub_248384580();
    __break(1u);
  }

  return result;
}

CGSize __swiftcall DBLiveActivityBannerView.preferredContentSize(withPresentationSize:containerSize:)(CGSize withPresentationSize, CGSize containerSize)
{
  v7 = (*((*MEMORY[0x277D85000] & *v2) + 0x88))(__PAIR128__(v3, *&withPresentationSize.width), __PAIR128__(v4, *&withPresentationSize.height), __PAIR128__(v5, *&containerSize.width), __PAIR128__(v6, *&containerSize.height));
  v8 = [v7 view];

  if (v8)
  {
    [v8 intrinsicContentSize];
    v12 = v11;
    v14 = v13;

    v9 = v12;
    v10 = v14;
  }

  else
  {
    __break(1u);
  }

  result.height = v10;
  result.width = v9;
  return result;
}

BOOL static DBLiveActivityBannerView.dataIsActivityDescriptor(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE936F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  v6 = sub_2483812C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v9 = 1;
  v8(v2, 1, 1, v6);
  sub_24829D8AC(&unk_27EE916B0);
  sub_248384610();
  v10 = (*(v7 + 48))(v2, 1, v6);
  if (v10 != 1)
  {
    (*(v7 + 32))(v5, v2, v6);
    v9 = 0;
  }

  v8(v5, v9, 1, v6);
  sub_24822D578(v5, &qword_27EE936F0);
  return v10 != 1;
}

id DBLiveActivityBannerView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBLiveActivityBannerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBLiveActivityBannerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s9DashBoard24DBLiveActivityBannerViewC19requesterIdentifierSSSgvg_0()
{
  sub_248384440();
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_248383960();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD10);
  v2 = sub_2483841D0();
  v4 = v3;

  MEMORY[0x24C1CAFD0](v2, v4);

  MEMORY[0x24C1CAFD0](0xD000000000000013, 0x80000002483AE6B0);
  return 0;
}

uint64_t sub_24829D29C()
{
  sub_248382850();
  sub_2483828A0();
  sub_248382880();
  sub_248382880();
  v0 = sub_248382840();
  sub_248382890();
  sub_248382880();
  sub_2483827D0();
  sub_2483827C0();
  v1 = sub_248382830();
  sub_248382890();
  sub_248382880();
  sub_2483827C0();
  v2 = sub_248382830();
  v3 = objc_allocWithZone(sub_2483828C0());
  v4 = v0;
  v5 = v1;
  v6 = v2;
  v7 = sub_2483828B0();
  v8 = objc_allocWithZone(sub_2483827F0());
  v9 = v7;
  v10 = sub_2483827E0();

  return v10;
}

id sub_24829D4A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_248382CC0();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2483812C0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v10(&v2[OBJC_IVAR____TtC9DashBoard24DBLiveActivityBannerView_identifier], a1, v5, v7);
  v11 = sub_24829D29C();
  (v10)(v9, a1, v5);
  objc_allocWithZone(sub_248382870());
  v12 = v11;
  v13 = sub_248382860();
  v14 = OBJC_IVAR____TtC9DashBoard24DBLiveActivityBannerView_activityHostVC;
  *&v2[OBJC_IVAR____TtC9DashBoard24DBLiveActivityBannerView_activityHostVC] = v13;
  result = [v13 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = result;
  v17 = [result layer];

  [v17 setCornerRadius_];
  swift_beginAccess();
  result = [*&v2[v14] view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v18 = result;
  [result setClipsToBounds_];

  v19 = *&v2[v14];
  sub_248382810();

  [*&v2[v14] setOverrideUserInterfaceStyle_];
  result = [*&v2[v14] view];
  if (result)
  {
    v20 = result;
    sub_248382C90();
    v24[3] = sub_248382CE0();
    v24[4] = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_1(v24);
    sub_248382CF0();
    sub_248383F70();

    v21 = type metadata accessor for DBLiveActivityBannerView();
    v23.receiver = v2;
    v23.super_class = v21;
    v22 = objc_msgSendSuper2(&v23, sel_init);

    (*(v6 + 8))(a1, v5);
    return v22;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DBLiveActivityBannerView()
{
  result = qword_27EE96600;
  if (!qword_27EE96600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24829D810()
{
  result = sub_2483812C0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24829D8AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2483812C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24829D930()
{
  v1 = *v0;
  sub_248384780();
  MEMORY[0x24C1CBD70](qword_24839EF70[v1]);
  return sub_2483847B0();
}

uint64_t sub_24829D9B8()
{
  v1 = *v0;
  sub_248384780();
  MEMORY[0x24C1CBD70](qword_24839EF70[v1]);
  return sub_2483847B0();
}

uint64_t sub_24829DA04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24829E728(*a1);
  *a2 = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DBUISyncSession.sendTransitionData(_:description:)(Swift::OpaquePointer _, Swift::String_optional description)
{
  object = description.value._object;
  countAndFlagsBits = description.value._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839CCA0;
  *(inited + 32) = 1701869940;
  v7 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 2;
  *(inited + 72) = v7;
  *(inited + 80) = 1635017060;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE941F0);
  *(inited + 96) = _;

  v8 = sub_24828CCA0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE945D0);
  swift_arrayDestroy();
  (*((*MEMORY[0x277D85000] & *v2) + 0x158))(v8, 1, countAndFlagsBits, object);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DBUISyncSession.sendTransitionStart(_:description:)(Swift::OpaquePointer _, Swift::String_optional description)
{
  object = description.value._object;
  countAndFlagsBits = description.value._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839CCA0;
  *(inited + 32) = 1701869940;
  v7 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 1;
  *(inited + 72) = v7;
  *(inited + 80) = 1635017060;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE941F0);
  *(inited + 96) = _;

  v8 = sub_24828CCA0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE945D0);
  swift_arrayDestroy();
  v9 = sub_24822D6A4();
  (*((*MEMORY[0x277D85000] & *v2) + 0x158))(v8, v9 & 1, countAndFlagsBits, object);
}

uint64_t sub_24829DE7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = sub_2483838A0();
  v8 = a1;
  a5(v7);

  return 1;
}

uint64_t sub_24829E010(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839CCA0;
  *(inited + 32) = 1701869940;
  v6 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a2;
  *(inited + 72) = v6;
  *(inited + 80) = 1635017060;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE941F0);
  *(inited + 96) = a1;

  v7 = sub_24828CCA0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE945D0);
  swift_arrayDestroy();
  v8 = sub_24822D6A4();
  (*((*MEMORY[0x277D85000] & *v2) + 0x158))(v7, v8 & 1, 0, 0);
}

uint64_t sub_24829E1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839CCA0;
  *(inited + 32) = 1701869940;
  v10 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a2;
  *(inited + 72) = v10;
  *(inited + 80) = 1635017060;
  *(inited + 88) = 0xE400000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91850);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_24839C7F0;
  *(v11 + 32) = a3;
  v12 = v11 + 32;
  *(v11 + 40) = a4;
  *(v11 + 48) = a1;
  v13 = sub_24829E74C(v11);
  swift_setDeallocating();
  sub_24822D578(v12, &qword_27EE91858);
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91860);
  *(inited + 96) = v13;
  v14 = sub_24828CCA0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE945D0);
  swift_arrayDestroy();
  v15 = sub_24822D6A4();
  (*((*MEMORY[0x277D85000] & *v4) + 0x158))(v14, v15 & 1, 0, 0);
}

uint64_t sub_24829E3B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = a1;
  a5(a3);

  return 1;
}

uint64_t sub_24829E49C(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839CCA0;
  *(inited + 32) = 1701869940;
  v6 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a2;
  *(inited + 72) = v6;
  *(inited + 80) = 1635017060;
  *(inited + 88) = 0xE400000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91868);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_24839C7F0;
  *(v7 + 32) = 0xD000000000000010;
  v8 = v7 + 32;
  *(v7 + 40) = 0x80000002483AE6D0;
  *(v7 + 48) = a1;
  v9 = sub_24829E848(v7);
  swift_setDeallocating();
  sub_24822D578(v8, &qword_27EE91870);
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91878);
  *(inited + 96) = v9;
  v10 = sub_24828CCA0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE945D0);
  swift_arrayDestroy();
  v11 = sub_24822D6A4();
  (*((*MEMORY[0x277D85000] & *v2) + 0x158))(v10, v11 & 1, 0, 0);
}

uint64_t sub_24829E690(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = a1;
  a5(a3);

  return 1;
}

uint64_t sub_24829E728(uint64_t a1)
{
  if ((a1 - 1) > 0x15)
  {
    return 16;
  }

  else
  {
    return byte_24839EFF0[a1 - 1];
  }
}

unint64_t sub_24829E74C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91890);
    v3 = sub_2483845F0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24822B8A0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_24829E848(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91888);
    v3 = sub_2483845F0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24822B8A0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_24829E948()
{
  result = qword_27EE91880;
  if (!qword_27EE91880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE91880);
  }

  return result;
}

id DBLockOutWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBLockOutWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *DBIconLayerView.init(allowGlassGrouping:)(char a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC9DashBoard15DBIconLayerView_allowGlassGrouping] = a1;
  v4 = [objc_allocWithZone(MEMORY[0x277D661E0]) init];
  *&v1[OBJC_IVAR____TtC9DashBoard15DBIconLayerView_iconLayer] = v4;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v5 setUserInteractionEnabled_];
  v6 = [v5 layer];
  [v6 setAllowsGroupBlending_];

  v7 = [v5 layer];
  [v7 setCornerCurve_];

  v8 = [v5 layer];
  v9 = OBJC_IVAR____TtC9DashBoard15DBIconLayerView_iconLayer;
  [v8 addSublayer_];

  v14.value.super.isa = [*&v5[v9] iconContentLayer];
  isa = v14.value.super.isa;
  v14.is_nil = 1;
  DBIconLayerView.set(_:animated:)(v14, v11);

  return v5;
}

id DBIconLayerView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *DBIconLayerView.init()()
{
  v0 = objc_allocWithZone(swift_getObjectType());
  v1 = DBIconLayerView.init(allowGlassGrouping:)(1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

Swift::Void __swiftcall DBIconLayerView.layoutSubviews()()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v1 = [v0 layer];
  [v0 bounds];
  v3 = v2;
  [v0 bounds];
  if (v4 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  [v1 setCornerRadius_];

  v6 = *&v0[OBJC_IVAR____TtC9DashBoard15DBIconLayerView_iconLayer];
  [v0 bounds];
  [v6 setBounds_];
  [v0 bounds];
  sub_248383F00();
  [v6 setPosition_];
  [v0 bounds];
  Width = CGRectGetWidth(v10);
  [v0 bounds];
  Height = CGRectGetHeight(v11);
  if (Height >= Width)
  {
    Height = Width;
  }

  [v6 setCornerRadius_];
  [v6 setCornerCurve_];
}

Swift::Void __swiftcall DBIconLayerView.set(_:animated:)(CALayer_optional _, Swift::Bool animated)
{
  v3 = v2;
  v20 = *&_.is_nil;
  isa = _.value.super.isa;
  v5 = sub_248382CC0();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_248382CE0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248382BD0();
  [v2 updateTraitsIfNeeded];
  v11 = [v2 traitCollection];
  v12 = [v11 sbh_iconImageAppearance];

  if ([v12 hasGlass])
  {
    v19 = isa;
    if ([v12 appearanceType] != 3)
    {
      [v12 appearanceType];
    }

    sub_248383F80();
    sub_248382BC0();
    sub_248383F90();
    sub_248382CB0();
    sub_248382CF0();
    *(&v22 + 1) = v6;
    v23 = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_1(&v21);
    sub_248382CD0();
    (*(v7 + 8))(v9, v6);
    sub_248383F70();
    isa = v19;
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    sub_248383F70();
  }

  v13 = OBJC_IVAR____TtC9DashBoard15DBIconLayerView_iconLayer;
  [*&v3[OBJC_IVAR____TtC9DashBoard15DBIconLayerView_iconLayer] setIconContentLayer:isa generation:0 imageAppearance:v12 type:2 animated:v20 & 1];
  v14 = [*&v3[v13] iconContentLayer];
  if (v14)
  {
    v15 = v14;
    v16 = [v3 traitCollection];
    [v16 displayScale];
    v18 = v17;

    [v15 setContentsScale_];
  }
}

id DBIconLayerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DBIconLayerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *DBSmartWidgetEffectCoordinatingButton.init()()
{
  *&v0[OBJC_IVAR____TtC9DashBoard37DBSmartWidgetEffectCoordinatingButton_cornerRadius] = 0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for DBSmartWidgetEffectCoordinatingButton();
  v1 = objc_msgSendSuper2(&v11, sel_init);
  v2 = objc_opt_self();
  v3 = v1;
  [v2 defaultStrokeWidth];
  v5 = [objc_allocWithZone(MEMORY[0x277CF90E8]) initWithCornerRadius:0.0 strokeWidth:v4];
  [v3 addSubview_];
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *v3) + 0x78);
  v8 = v5;
  v7(v5);
  v9 = [objc_allocWithZone(MEMORY[0x277CF90D8]) init];
  [v3 addSubview_];
  (*((*v6 & *v3) + 0x90))(v9);

  return v3;
}

Swift::Void __swiftcall DBSmartWidgetEffectCoordinatingButton.configureWith(backgroundColor:)(UIColor backgroundColor)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90CF0);
  MEMORY[0x28223BE20](v2 - 8);
  v24 = &v23 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93D90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_248382C30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = sub_248384100();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2483840E0();
  sub_248382C20();
  *(swift_allocObject() + 16) = backgroundColor;
  v18 = backgroundColor.super.isa;
  sub_248382C70();
  v19 = sub_248382C60();
  (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
  sub_248382C10();
  (*(v8 + 16))(v10, v13, v7);
  v20 = sub_248384060();
  (*((*MEMORY[0x277D85000] & *v23) + 0xF8))(v20);
  v21 = sub_248384050();
  sub_248382BF0();
  v21(v25, 0);
  v22 = v24;
  (*(v15 + 16))(v24, v17, v14);
  (*(v15 + 56))(v22, 0, 1, v14);
  sub_248384120();
  (*(v8 + 8))(v13, v7);
  (*(v15 + 8))(v17, v14);
}

Swift::Void __swiftcall DBSmartWidgetEffectCoordinatingButton.configureWith(image:)(UIImage image)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90CF0);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = &v26 - v3;
  v4 = sub_248382C30();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93D90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_248384100();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2483840E0();
  v17 = image.super.isa;
  sub_2483840C0();
  v18 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x277D76920] scale:-1];
  sub_248384040();
  sub_248382C70();
  v19 = sub_248382C60();
  v20 = *(*(v19 - 8) + 56);
  v20(v12, 0, 1, v19);
  sub_2483840B0();
  sub_248382C20();
  sub_248382C70();
  v20(v12, 0, 1, v19);
  sub_248382C10();
  v22 = v26;
  v21 = v27;
  (*(v26 + 16))(v6, v9, v27);
  v23 = sub_248384060();
  (*((*MEMORY[0x277D85000] & *v28) + 0xF8))(v23);
  v24 = sub_248384050();
  sub_248382BF0();
  v24(v30, 0);
  v25 = v29;
  (*(v14 + 16))(v29, v16, v13);
  (*(v14 + 56))(v25, 0, 1, v13);
  sub_248384120();
  (*(v22 + 8))(v9, v21);
  (*(v14 + 8))(v16, v13);
}

id sub_24829FFB0()
{
  v0 = [objc_opt_self() labelColor];

  return v0;
}

id sub_24829FFF0()
{
  v0 = [objc_opt_self() secondarySystemFillColor];

  return v0;
}

Swift::Void __swiftcall DBSmartWidgetEffectCoordinatingButton.layoutSubviews()()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for DBSmartWidgetEffectCoordinatingButton();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  v1 = [objc_opt_self() defaultStrokeWidth];
  v3 = v2;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v1);
  if (v5)
  {
    v6 = v5;
    [v0 bounds];
    [v6 setFrame_];
  }

  v11 = (*((*v4 & *v0) + 0x88))();
  if (v11)
  {
    v12 = v11;
    [v0 bounds];
    [v12 setFrame_];
  }
}

double DBSmartWidgetEffectCoordinatingButton.cornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard37DBSmartWidgetEffectCoordinatingButton_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

void DBSmartWidgetEffectCoordinatingButton.cornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard37DBSmartWidgetEffectCoordinatingButton_cornerRadius;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_2482A035C();
}

void sub_2482A035C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90CF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v27[-v6];
  sub_248384110();
  v8 = sub_248384100();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    sub_2482A0A94(v7, v4);
    sub_248384120();
    v9 = sub_2482A0B04(v7);
  }

  else
  {
    swift_beginAccess();
    v10 = sub_248384050();
    sub_248382BF0();
    v10(v27, 0);
    v9 = sub_248384120();
  }

  v11 = MEMORY[0x277D85000];
  v12 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v13 = (v12)(v9);
  if (v13)
  {
    v14 = v13;
    v15 = OBJC_IVAR____TtC9DashBoard37DBSmartWidgetEffectCoordinatingButton_cornerRadius;
    swift_beginAccess();
    v16 = *(v1 + v15);
    v17 = objc_opt_self();
    [v17 defaultStrokeWidth];
    v19 = v16 + v18;
    [v17 defaultStrokeWidth];
    [v14 updateEffectWithCornerRadius:v19 strokeWidth:v20];
  }

  v21 = v12();
  if (v21)
  {
    v22 = v21;
    [v21 setNeedsLayout];
  }

  v23 = (*((*v11 & *v1) + 0x88))();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 layer];

    v26 = OBJC_IVAR____TtC9DashBoard37DBSmartWidgetEffectCoordinatingButton_cornerRadius;
    swift_beginAccess();
    [v25 setCornerRadius_];
  }
}

void (*DBSmartWidgetEffectCoordinatingButton.cornerRadius.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2482A0694;
}

void sub_2482A0694(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_2482A035C();
  }
}

void *DBSmartWidgetActionGlassButton.__allocating_init(symbolName:)()
{
  v5.receiver = objc_allocWithZone(v0);
  v5.super_class = v0;
  v1 = objc_msgSendSuper2(&v5, sel_init);
  v2 = sub_248383930();

  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(v3);
  }

  return v1;
}

void *DBSmartWidgetActionGlassButton.init(symbolName:)()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DBSmartWidgetActionGlassButton();
  v1 = objc_msgSendSuper2(&v5, sel_init);
  v2 = sub_248383930();

  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(v3);
  }

  return v1;
}

id DBSmartWidgetActionGlassButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2482A0A5C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2482A0A94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2482A0B04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *DBCornerRadiusWindow.init(windowScene:frame:)(void *a1)
{
  *(v1 + OBJC_IVAR____TtC9DashBoard20DBCornerRadiusWindow_cornerRadius) = 0;
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v1 + OBJC_IVAR____TtC9DashBoard20DBCornerRadiusWindow__containerView) = v3;
  v4 = a1;
  v5 = sub_24832C6D0(v4, 13);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor_];

  v9 = OBJC_IVAR____TtC9DashBoard20DBCornerRadiusWindow__containerView;
  v10 = *&v7[OBJC_IVAR____TtC9DashBoard20DBCornerRadiusWindow__containerView];
  v11 = [v6 clearColor];
  [v10 setBackgroundColor_];

  [*&v7[v9] setUserInteractionEnabled_];
  [v7 addSubview_];

  return v7;
}

double DBCornerRadiusWindow.cornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard20DBCornerRadiusWindow_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

void DBCornerRadiusWindow.cornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard20DBCornerRadiusWindow_cornerRadius;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_2482A0EEC();
}

void sub_2482A0EEC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard20DBCornerRadiusWindow__containerView);
  v2 = [v1 subviews];
  sub_24814FB28(0, &qword_27EE8FFC0);
  v3 = sub_248383B10();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    v8 = [v0 traitCollection];
    [v8 displayScale];
    v10 = v9;

    v11 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
    v12 = v10 * v11();
    v13 = ceil(v11() * 1.528665);
    v14 = [objc_opt_self() blackColor];
    v15 = DBGenerateUpperLeftCornerImage(v14, 0, v10 * v13, v12);

    v16 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v17 = v15;
    v18 = [v16 initWithImage_];
    [v18 setTranslatesAutoresizingMaskIntoConstraints_];
    [v1 addSubview_];
    v19 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    CGAffineTransformMakeRotation(&v77, 1.57079633);
    *v73 = *&v77.a;
    v67 = *&v77.tx;
    v70 = *&v77.c;
    v20 = v19;
    *&v77.a = *v73;
    *&v77.c = v70;
    *&v77.tx = v67;
    [v20 setTransform_];
    [v20 setTranslatesAutoresizingMaskIntoConstraints_];
    [v1 addSubview_];
    v21 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    CGAffineTransformMakeRotation(&v77, 3.14159265);
    *v74 = *&v77.a;
    v68 = *&v77.tx;
    v71 = *&v77.c;
    v22 = v21;
    *&v77.a = *v74;
    *&v77.c = v71;
    *&v77.tx = v68;
    [v22 setTransform_];
    [v22 setTranslatesAutoresizingMaskIntoConstraints_];
    [v1 addSubview_];
    v76 = v17;
    v23 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

    CGAffineTransformMakeRotation(&v77, 4.71238898);
    *v75 = *&v77.a;
    v69 = *&v77.tx;
    v72 = *&v77.c;
    v24 = v23;
    *&v77.a = *v75;
    *&v77.c = v72;
    *&v77.tx = v69;
    [v24 setTransform_];
    [v24 setTranslatesAutoresizingMaskIntoConstraints_];
    [v1 addSubview_];
    v75[0] = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_24839F0C0;
    v26 = [v18 leftAnchor];
    v27 = [v1 &selRef_navigationAppButtonSizeConstraints + 2];
    v28 = [v26 constraintEqualToAnchor_];

    *(v25 + 32) = v28;
    v29 = [v18 topAnchor];
    v30 = [v1 &selRef_supportsWirelessCarPlay];
    v31 = [v29 &selRef_exportIconLayoutState + 5];

    *(v25 + 40) = v31;
    v32 = [v18 heightAnchor];
    v33 = [v32 constraintEqualToConstant_];

    *(v25 + 48) = v33;
    v34 = [v18 widthAnchor];

    v35 = [v34 &selRef:v13 filterWithName:? + 1];
    *(v25 + 56) = v35;
    v36 = [v20 rightAnchor];
    v37 = [v1 rightAnchor];
    v38 = [v36 constraintEqualToAnchor_];

    *(v25 + 64) = v38;
    v39 = [v20 topAnchor];
    v40 = [v1 topAnchor];
    v41 = [v39 constraintEqualToAnchor_];

    *(v25 + 72) = v41;
    v42 = [v20 heightAnchor];
    v43 = [v42 constraintEqualToConstant_];

    *(v25 + 80) = v43;
    v44 = [v20 widthAnchor];

    v45 = [v44 constraintEqualToConstant_];
    *(v25 + 88) = v45;
    v46 = [v22 rightAnchor];
    v47 = [v1 rightAnchor];
    v48 = [v46 constraintEqualToAnchor_];

    *(v25 + 96) = v48;
    v49 = [v22 bottomAnchor];
    v50 = [v1 bottomAnchor];
    v51 = [v49 constraintEqualToAnchor_];

    *(v25 + 104) = v51;
    v52 = [v22 heightAnchor];
    v53 = [v52 constraintEqualToConstant_];

    *(v25 + 112) = v53;
    v54 = [v22 widthAnchor];

    v55 = [v54 constraintEqualToConstant_];
    *(v25 + 120) = v55;
    v56 = [v24 leftAnchor];
    v57 = [v1 leftAnchor];
    v58 = [v56 constraintEqualToAnchor_];

    *(v25 + 128) = v58;
    v59 = [v24 bottomAnchor];
    v60 = [v1 bottomAnchor];
    v61 = [v59 constraintEqualToAnchor_];

    *(v25 + 136) = v61;
    v62 = [v24 heightAnchor];
    v63 = [v62 constraintEqualToConstant_];

    *(v25 + 144) = v63;
    v64 = [v24 widthAnchor];

    v65 = [v64 constraintEqualToConstant_];
    *(v25 + 152) = v65;
    sub_24814FB28(0, &qword_27EE8FE90);
    v66 = sub_248383B00();

    [v75[0] activateConstraints_];

    return;
  }

  v4 = sub_248384360();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1CBA50](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      [v6 removeFromSuperview];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void (*DBCornerRadiusWindow.cornerRadius.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2482A18E4;
}

void sub_2482A18E4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_2482A0EEC();
  }
}

id DBCornerRadiusWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBCornerRadiusWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DBCornerRadiusWindow.frame.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBCornerRadiusWindow();
  return objc_msgSendSuper2(&v2, sel_frame);
}

id DBCornerRadiusWindow.frame.setter(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for DBCornerRadiusWindow();
  objc_msgSendSuper2(&v11, sel_setFrame_, a1, a2, a3, a4);
  v9 = *&v4[OBJC_IVAR____TtC9DashBoard20DBCornerRadiusWindow__containerView];
  [v4 bounds];
  [v9 setFrame_];
  return [v4 layoutIfNeeded];
}

void sub_2482A1B54(void *a1, void *a2, char a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = objc_allocWithZone(v8);
  v17 = [a1 definition];
  v18 = [v17 clientIdentity];

  LODWORD(v17) = [v18 isLocal];
  if (v17)
  {
    if (([a1 isLegacy] & 1) == 0)
    {
      v19 = [objc_allocWithZone(DBLocalSceneController) initWithScene_];
      *&v16[OBJC_IVAR____TtC9DashBoard22DBLocalSceneHostWindow__localSceneController] = v19;
      v20 = a2;
      v21 = sub_248279ADC(v20, a3, a4, a5, a6, a7);
      v22 = *&v21[OBJC_IVAR____TtC9DashBoard22DBLocalSceneHostWindow__localSceneController];
      v23 = v21;
      v24 = [v22 presentationView];
      [v23 addSubview_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2482A1CCC(void *a1, void *a2, char a3, double a4, double a5, double a6, double a7)
{
  v15 = [a1 definition];
  v16 = [v15 clientIdentity];

  LODWORD(v15) = [v16 isLocal];
  if (v15)
  {
    if (([a1 isLegacy] & 1) == 0)
    {
      v17 = [objc_allocWithZone(DBLocalSceneController) initWithScene_];
      *(v7 + OBJC_IVAR____TtC9DashBoard22DBLocalSceneHostWindow__localSceneController) = v17;
      v18 = a2;
      v19 = sub_248279ADC(v18, a3, a4, a5, a6, a7);
      v20 = *&v19[OBJC_IVAR____TtC9DashBoard22DBLocalSceneHostWindow__localSceneController];
      v21 = v19;
      v22 = [v20 presentationView];
      [v21 addSubview_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id DBLocalSceneHostWindow.localScene.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9DashBoard22DBLocalSceneHostWindow__localSceneController) scene];

  return v1;
}

id DBLocalSceneHostWindow.clientScene.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9DashBoard22DBLocalSceneHostWindow__localSceneController) clientScene];

  return v1;
}

void __swiftcall DBLocalSceneHostWindow.presentationView(identifier:)(UIView *__return_ptr retstr, Swift::String identifier)
{
  v3 = *(v2 + OBJC_IVAR____TtC9DashBoard22DBLocalSceneHostWindow__localSceneController);
  v4 = sub_248383930();
  v5 = [v3 presentationViewWithIdentifier_];
}

Swift::Void __swiftcall DBLocalSceneHostWindow.invalidatePresentationView(identifier:)(Swift::String identifier)
{
  v2 = *(v1 + OBJC_IVAR____TtC9DashBoard22DBLocalSceneHostWindow__localSceneController);
  v3 = sub_248383930();
  [v2 invalidatePresentationViewForIdentifier_];
}

id DBLocalSceneHostWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBLocalSceneHostWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2482A216C(double a1, double a2, double a3, double a4)
{
  v25.receiver = v4;
  v25.super_class = type metadata accessor for DBDynamicContentBackgroundView.MaskView();
  v9 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92CF0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24839CCA0;
    v14 = objc_opt_self();
    v15 = [v14 clearColor];
    v16 = [v15 CGColor];

    type metadata accessor for CGColor();
    v18 = v17;
    *(v13 + 56) = v17;
    *(v13 + 32) = v16;
    v19 = [v14 blackColor];
    v20 = [v19 CGColor];

    *(v13 + 88) = v18;
    *(v13 + 64) = v20;
    v21 = sub_248383B00();

    [v12 setColors_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_24839D8B0;
    sub_24814FB28(0, &qword_27EE90740);
    *(v22 + 32) = sub_248384010();
    *(v22 + 40) = sub_248384000();
    v23 = sub_248383B00();

    [v12 setLocations_];

    [v12 setStartPoint_];
    [v12 setEndPoint_];
  }

  return v9;
}

char *sub_2482A2490(double a1, double a2, double a3, double a4)
{
  v9 = [objc_opt_self() effectWithStyle_];
  v10 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v4[OBJC_IVAR____TtC9DashBoard30DBDynamicContentBackgroundView__blurView] = v10;
  v34.receiver = v4;
  v34.super_class = type metadata accessor for DBDynamicContentBackgroundView();
  v11 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a1, a2, a3, a4);
  [v11 bounds];
  v16 = [objc_allocWithZone(type metadata accessor for DBDynamicContentBackgroundView.MaskView()) initWithFrame_];
  v17 = OBJC_IVAR____TtC9DashBoard30DBDynamicContentBackgroundView__blurView;
  [*&v11[OBJC_IVAR____TtC9DashBoard30DBDynamicContentBackgroundView__blurView] setMaskView_];
  [*&v11[v17] setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 addSubview_];
  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24839CCB0;
  v20 = [*&v11[v17] leadingAnchor];
  v21 = [v11 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v19 + 32) = v22;
  v23 = [*&v11[v17] trailingAnchor];
  v24 = [v11 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v19 + 40) = v25;
  v26 = [*&v11[v17] topAnchor];
  v27 = [v11 topAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v19 + 48) = v28;
  v29 = [*&v11[v17] bottomAnchor];
  v30 = [v11 bottomAnchor];

  v31 = [v29 constraintEqualToAnchor_];
  *(v19 + 56) = v31;
  sub_24814FB28(0, &qword_27EE8FE90);
  v32 = sub_248383B00();

  [v18 activateConstraints_];

  return v11;
}

id sub_2482A294C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void type metadata accessor for CGColor()
{
  if (!qword_27EE92340)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE92340);
    }
  }
}

void sub_2482A2A34(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_broadcaster];
  swift_beginAccess();
  *(v4 + 1) = a2;
  swift_unknownObjectWeakAssign();
  v5 = *&v2[OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_carManager];
  [v5 registerObserver_];
  v6 = [v5 currentCar];
  [v2 carManager:v5 didUpdateCurrentCar:v6];
  swift_unknownObjectRelease();
}

void (*sub_2482A2AF8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_broadcaster;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_2482A2B98;
}

void sub_2482A2B98(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = *&v4[OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_carManager];
    [v5 registerObserver_];
    v6 = [v5 currentCar];
    [v4 carManager:v5 didUpdateCurrentCar:v6];
  }

  free(v3);
}

id sub_2482A2C7C()
{
  v0 = [DBApp carManager];

  return v0;
}

uint64_t sub_2482A2CD4()
{
  v0 = sub_248383D90();
  v1 = *sub_24827C040();
  if (os_log_type_enabled(v1, v0))
  {
    v2 = v1;
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_24814A378(0xD000000000000023, 0x80000002483AB610, &v10);
    *(v3 + 12) = 2080;
    sub_24814FB28(0, &qword_27EE90740);
    sub_248264E40();

    v5 = sub_2483838B0();
    v7 = v6;

    v8 = sub_24814A378(v5, v7, &v10);

    *(v3 + 14) = v8;
    _os_log_impl(&dword_248146000, v2, v0, "%s automakerStatusBarPriorities=%s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v4, -1, -1);
    MEMORY[0x24C1CD5F0](v3, -1, -1);
  }
}

id sub_2482A2EC8(SEL *a1, unint64_t *a2)
{
  result = [*(v2 + OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_carManager) currentCar];
  if (result)
  {
    v6 = result;
    v7 = [result statusIndicators];

    if (v7)
    {
      v8 = [v7 *a1];

      result = 0;
      if (v8)
      {
        sub_24814FB28(0, a2);
        v9 = sub_248383B10();

        return v9;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2482A2F98()
{
  if (sub_248383A60())
  {
    v1 = [*(v0 + OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_carManager) currentCar];
    v2 = [v1 statusIndicators];

    v3 = [v2 currentUserStatus];
    if (v3)
    {
      if ([v3 hasImage] && (v4 = objc_msgSend(v3, sel_image)) != 0)
      {
        v5 = v4;
        v6 = sub_2483811B0();
        v8 = v7;

        v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
        sub_24825CD28(v6, v8);
        v10 = sub_2483811A0();
        v11 = [v9 initWithData_];

        sub_24823BD70(v6, v8);
        if (v11)
        {
          v12 = sub_248383FF0();

          sub_24823BD70(v6, v8);
          return v12;
        }

        sub_24823BD70(v6, v8);
      }

      else
      {
      }
    }
  }

  return 0;
}

id sub_2482A3130()
{
  *&v0[OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_broadcaster + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_carManager;
  *&v0[v1] = [DBApp carManager];
  v2 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_automakerStatusBarItems] = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_automakerStatusBarPriorities;
  *&v0[v3] = sub_2482AB690(v2);
  *&v0[OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_trackedServices] = MEMORY[0x277D84FA0];
  v5.receiver = v0;
  v5.super_class = _s18VehicleStateSourceCMa();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_2482A320C()
{
  v2.receiver = v0;
  v2.super_class = _s18VehicleStateSourceCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2482A333C(void *a1)
{
  sub_2482ABBD0();
  v2 = sub_248383C70();

  v3 = [a1 dataByRemovingEntriesForKeys_];

  return v3;
}

uint64_t sub_2482A33BC(void *a1)
{
  v3 = sub_248381210();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v57 - v8;
  if (a1)
  {
    v10 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_trackedServices;
    swift_beginAccess();
    v11 = *(v1 + v10);
    v12 = a1;

    v13 = [v12 uniqueIdentifier];
    sub_2483811F0();

    v14 = sub_2482A6130(v9, v11);

    v15 = *(v4 + 8);
    v15(v9, v3);
    if (v14)
    {

LABEL_25:
      v16 = v14 ^ 1;

      return v16 & 1;
    }

    v60 = v15;
    v61 = v14;
    v17 = sub_248383D90();
    v18 = *sub_24827C040();
    if (os_log_type_enabled(v18, v17))
    {
      v59 = v18;
      v19 = swift_slowAlloc();
      v62 = v12;
      v20 = v19;
      v21 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v63[0] = v58;
      *v20 = 136315394;
      *(v20 + 4) = sub_24814A378(0xD00000000000001ELL, 0x80000002483AEC40, v63);
      *(v20 + 12) = 2112;
      *(v20 + 14) = v62;
      *v21 = a1;
      v22 = v62;
      v23 = v59;
      _os_log_impl(&dword_248146000, v59, v17, "%s service=%@", v20, 0x16u);
      sub_24822D578(v21, &qword_27EE8FE40);
      MEMORY[0x24C1CD5F0](v21, -1, -1);
      v24 = v58;
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x24C1CD5F0](v24, -1, -1);
      v25 = v20;
      v12 = v62;
      MEMORY[0x24C1CD5F0](v25, -1, -1);
    }

    v26 = [v12 uniqueIdentifier];
    sub_2483811F0();

    swift_beginAccess();
    sub_2482A9B34(v9, v6);
    v60(v9, v3);
    swift_endAccess();
    [v12 registerObserver_];

    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = v27;
      v29 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
      v30 = v12;
      if (v29())
      {
        v32 = v31;
        ObjectType = swift_getObjectType();
        v34 = swift_allocObject();
        *(v34 + 16) = v28;
        v35 = *(v32 + 16);
        v36 = v30;
        v37 = sub_2482ADAA8;
LABEL_22:
        v35(v37, v34, ObjectType, v32);

        swift_unknownObjectRelease();

LABEL_24:
        LOBYTE(v14) = v61;
        goto LABEL_25;
      }
    }

    else
    {
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (v38)
      {
        v39 = v38;
        v40 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
        v30 = v12;
        if (v40())
        {
          v32 = v41;
          ObjectType = swift_getObjectType();
          v34 = swift_allocObject();
          *(v34 + 16) = v39;
          v35 = *(v32 + 16);
          v36 = v30;
          v37 = sub_2482ADAAC;
          goto LABEL_22;
        }
      }

      else
      {
        objc_opt_self();
        v42 = swift_dynamicCastObjCClass();
        if (v42)
        {
          v43 = v42;
          v44 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
          v30 = v12;
          if (v44())
          {
            v32 = v45;
            ObjectType = swift_getObjectType();
            v34 = swift_allocObject();
            *(v34 + 16) = v43;
            v35 = *(v32 + 16);
            v36 = v30;
            v37 = sub_2482ADAB0;
            goto LABEL_22;
          }
        }

        else
        {
          objc_opt_self();
          v46 = swift_dynamicCastObjCClass();
          if (v46)
          {
            v47 = v46;
            v48 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
            v30 = v12;
            if (v48())
            {
              v32 = v49;
              ObjectType = swift_getObjectType();
              v34 = swift_allocObject();
              *(v34 + 16) = v47;
              v35 = *(v32 + 16);
              v36 = v30;
              v37 = sub_2482ADAB4;
              goto LABEL_22;
            }
          }

          else
          {
            objc_opt_self();
            v50 = swift_dynamicCastObjCClass();
            if (!v50)
            {
              v55 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_automakerStatusBarItems;
              swift_beginAccess();
              v56 = v12;
              MEMORY[0x24C1CB0D0]();
              if (*((*(v1 + v55) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v55) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_248383B50();
              }

              sub_248383B70();
              swift_endAccess();
              goto LABEL_24;
            }

            v51 = v50;
            v52 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
            v30 = v12;
            if (v52())
            {
              v32 = v53;
              ObjectType = swift_getObjectType();
              v34 = swift_allocObject();
              *(v34 + 16) = v51;
              v35 = *(v32 + 16);
              v36 = v30;
              v37 = sub_2482ADAB8;
              goto LABEL_22;
            }
          }
        }
      }
    }

    goto LABEL_24;
  }

  v16 = 0;
  return v16 & 1;
}

void sub_2482A3B40(void *a1)
{
  v3 = sub_248381210();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v30[-v8];
  if (a1)
  {
    v10 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_trackedServices;
    swift_beginAccess();
    v11 = *(v1 + v10);
    v12 = a1;

    v13 = [v12 uniqueIdentifier];
    sub_2483811F0();

    LOBYTE(v13) = sub_2482A6130(v9, v11);

    v14 = *(v4 + 8);
    v14(v9, v3);
    if (v13)
    {
    }

    else
    {
      v34 = v14;
      v15 = sub_248383D90();
      v16 = *sub_24827C040();
      if (os_log_type_enabled(v16, v15))
      {
        v33 = v16;
        v17 = swift_slowAlloc();
        v31 = v15;
        v18 = v17;
        v19 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v35[0] = v32;
        *v18 = 136315394;
        *(v18 + 4) = sub_24814A378(0xD00000000000001ELL, 0x80000002483AEC40, v35);
        *(v18 + 12) = 2112;
        *(v18 + 14) = v12;
        *v19 = a1;
        v20 = v12;
        v21 = v33;
        _os_log_impl(&dword_248146000, v33, v31, "%s service=%@", v18, 0x16u);
        sub_24822D578(v19, &qword_27EE8FE40);
        MEMORY[0x24C1CD5F0](v19, -1, -1);
        v22 = v32;
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x24C1CD5F0](v22, -1, -1);
        MEMORY[0x24C1CD5F0](v18, -1, -1);
      }

      v23 = [v12 uniqueIdentifier];
      sub_2483811F0();

      swift_beginAccess();
      sub_2482A9B34(v9, v6);
      v34(v9, v3);
      swift_endAccess();
      [v12 registerObserver_];

      if ((*((*MEMORY[0x277D85000] & *v1) + 0x78))())
      {
        v25 = v24;
        ObjectType = swift_getObjectType();
        v27 = swift_allocObject();
        *(v27 + 16) = v12;
        v28 = *(v25 + 16);
        v29 = v12;
        v28(sub_2482ADAA8, v27, ObjectType, v25);

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_2482A3F24(void *a1)
{
  v3 = sub_248381210();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v35[-v8];
  if (a1)
  {
    v10 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_trackedServices;
    swift_beginAccess();
    v11 = *(v1 + v10);
    v12 = a1;

    v13 = [v12 uniqueIdentifier];
    sub_2483811F0();

    LOBYTE(v13) = sub_2482A6130(v9, v11);

    v14 = *(v4 + 8);
    v14(v9, v3);
    if ((v13 & 1) == 0)
    {
      v39 = v14;
      v15 = sub_248383D90();
      v16 = *sub_24827C040();
      if (os_log_type_enabled(v16, v15))
      {
        v38 = v16;
        v17 = swift_slowAlloc();
        v36 = v15;
        v18 = v17;
        v19 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v40[0] = v37;
        *v18 = 136315394;
        *(v18 + 4) = sub_24814A378(0xD00000000000001ELL, 0x80000002483AEC40, v40);
        *(v18 + 12) = 2112;
        *(v18 + 14) = v12;
        *v19 = a1;
        v20 = v12;
        v21 = v38;
        _os_log_impl(&dword_248146000, v38, v36, "%s service=%@", v18, 0x16u);
        sub_24822D578(v19, &qword_27EE8FE40);
        MEMORY[0x24C1CD5F0](v19, -1, -1);
        v22 = v37;
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x24C1CD5F0](v22, -1, -1);
        MEMORY[0x24C1CD5F0](v18, -1, -1);
      }

      v23 = [v12 uniqueIdentifier];
      sub_2483811F0();

      swift_beginAccess();
      sub_2482A9B34(v9, v6);
      v39(v9, v3);
      swift_endAccess();
      [v12 registerObserver_];

      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      v25 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
      v26 = v12;
      if (v25())
      {
        v28 = v27;
        if (v24)
        {
          v29 = sub_2482ADAA8;
        }

        else
        {
          v29 = sub_2482ADAAC;
        }

        if (v24)
        {
          v30 = v24;
        }

        else
        {
          v30 = v26;
        }

        ObjectType = swift_getObjectType();
        v32 = swift_allocObject();
        *(v32 + 16) = v30;
        v33 = *(v28 + 16);
        v34 = v26;
        v33(v29, v32, ObjectType, v28);

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_2482A4358(void *a1)
{
  v3 = sub_248381210();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v37[-v8];
  if (a1)
  {
    v10 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_trackedServices;
    swift_beginAccess();
    v11 = *(v1 + v10);
    v12 = a1;

    v13 = [v12 uniqueIdentifier];
    sub_2483811F0();

    LOBYTE(v13) = sub_2482A6130(v9, v11);

    v14 = *(v4 + 8);
    v14(v9, v3);
    if ((v13 & 1) == 0)
    {
      v41 = v14;
      v15 = sub_248383D90();
      v16 = *sub_24827C040();
      if (os_log_type_enabled(v16, v15))
      {
        v40 = v16;
        v17 = swift_slowAlloc();
        v38 = v15;
        v18 = v17;
        v19 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v42[0] = v39;
        *v18 = 136315394;
        *(v18 + 4) = sub_24814A378(0xD00000000000001ELL, 0x80000002483AEC40, v42);
        *(v18 + 12) = 2112;
        *(v18 + 14) = v12;
        *v19 = a1;
        v20 = v12;
        v21 = v40;
        _os_log_impl(&dword_248146000, v40, v38, "%s service=%@", v18, 0x16u);
        sub_24822D578(v19, &qword_27EE8FE40);
        MEMORY[0x24C1CD5F0](v19, -1, -1);
        v22 = v39;
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x24C1CD5F0](v22, -1, -1);
        MEMORY[0x24C1CD5F0](v18, -1, -1);
      }

      v23 = [v12 uniqueIdentifier];
      sub_2483811F0();

      swift_beginAccess();
      sub_2482A9B34(v9, v6);
      v41(v9, v3);
      swift_endAccess();
      [v12 registerObserver_];

      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (!v24)
      {
        objc_opt_self();
        v25 = swift_dynamicCastObjCClass();
        v29 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
        v30 = v12;
        v31 = v29();
        if (v25)
        {
          v28 = sub_2482ADAAC;
        }

        else
        {
          v25 = v30;
          v28 = sub_2482ADAB0;
        }

        if (!v31)
        {
          goto LABEL_14;
        }

        v27 = v32;
        goto LABEL_13;
      }

      v25 = v24;
      if ((*((*MEMORY[0x277D85000] & *v1) + 0x78))(v12))
      {
        v27 = v26;
        v28 = sub_2482ADAA8;
LABEL_13:
        ObjectType = swift_getObjectType();
        v34 = swift_allocObject();
        *(v34 + 16) = v25;
        v35 = *(v27 + 16);
        v36 = v12;
        v35(v28, v34, ObjectType, v27);

        swift_unknownObjectRelease();
      }
    }

LABEL_14:
  }
}

void sub_2482A4814(void *a1)
{
  v3 = sub_248381210();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v39[-v8];
  if (a1)
  {
    v10 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_trackedServices;
    swift_beginAccess();
    v11 = *(v1 + v10);
    v12 = a1;

    v13 = [v12 uniqueIdentifier];
    sub_2483811F0();

    LOBYTE(v13) = sub_2482A6130(v9, v11);

    v14 = *(v4 + 8);
    v14(v9, v3);
    if ((v13 & 1) == 0)
    {
      v43 = v14;
      v15 = sub_248383D90();
      v16 = *sub_24827C040();
      if (os_log_type_enabled(v16, v15))
      {
        v42 = v16;
        v17 = swift_slowAlloc();
        v40 = v15;
        v18 = v17;
        v19 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v44[0] = v41;
        *v18 = 136315394;
        *(v18 + 4) = sub_24814A378(0xD00000000000001ELL, 0x80000002483AEC40, v44);
        *(v18 + 12) = 2112;
        *(v18 + 14) = v12;
        *v19 = a1;
        v20 = v12;
        v21 = v42;
        _os_log_impl(&dword_248146000, v42, v40, "%s service=%@", v18, 0x16u);
        sub_24822D578(v19, &qword_27EE8FE40);
        MEMORY[0x24C1CD5F0](v19, -1, -1);
        v22 = v41;
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x24C1CD5F0](v22, -1, -1);
        MEMORY[0x24C1CD5F0](v18, -1, -1);
      }

      v23 = [v12 uniqueIdentifier];
      sub_2483811F0();

      swift_beginAccess();
      sub_2482A9B34(v9, v6);
      v43(v9, v3);
      swift_endAccess();
      [v12 registerObserver_];

      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24)
      {
        v25 = v24;
        if ((*((*MEMORY[0x277D85000] & *v1) + 0x78))(v12))
        {
          v27 = v26;
          v28 = sub_2482ADAA8;
LABEL_16:
          ObjectType = swift_getObjectType();
          v36 = swift_allocObject();
          *(v36 + 16) = v25;
          v37 = *(v27 + 16);
          v38 = v12;
          v37(v28, v36, ObjectType, v27);

          swift_unknownObjectRelease();
        }
      }

      else
      {
        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();
        if (!v29)
        {
          objc_opt_self();
          v25 = swift_dynamicCastObjCClass();
          v31 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
          v32 = v12;
          v33 = v31();
          if (v25)
          {
            v28 = sub_2482ADAB0;
          }

          else
          {
            v25 = v32;
            v28 = sub_2482ADAB4;
          }

          if (!v33)
          {
            goto LABEL_17;
          }

          v27 = v34;
          goto LABEL_16;
        }

        v25 = v29;
        if ((*((*MEMORY[0x277D85000] & *v1) + 0x78))(v12))
        {
          v27 = v30;
          v28 = sub_2482ADAAC;
          goto LABEL_16;
        }
      }
    }

LABEL_17:
  }
}

void sub_2482A4D54(void *a1)
{
  v3 = sub_248381210();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v41[-v8];
  if (a1)
  {
    v10 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_trackedServices;
    swift_beginAccess();
    v11 = *(v1 + v10);
    v12 = a1;

    v13 = [v12 uniqueIdentifier];
    sub_2483811F0();

    LOBYTE(v13) = sub_2482A6130(v9, v11);

    v14 = *(v4 + 8);
    v14(v9, v3);
    if ((v13 & 1) == 0)
    {
      v45 = v14;
      v15 = sub_248383D90();
      v16 = *sub_24827C040();
      if (os_log_type_enabled(v16, v15))
      {
        v44 = v16;
        v17 = swift_slowAlloc();
        v42 = v15;
        v18 = v17;
        v19 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v46[0] = v43;
        *v18 = 136315394;
        *(v18 + 4) = sub_24814A378(0xD00000000000001ELL, 0x80000002483AEC40, v46);
        *(v18 + 12) = 2112;
        *(v18 + 14) = v12;
        *v19 = a1;
        v20 = v12;
        v21 = v44;
        _os_log_impl(&dword_248146000, v44, v42, "%s service=%@", v18, 0x16u);
        sub_24822D578(v19, &qword_27EE8FE40);
        MEMORY[0x24C1CD5F0](v19, -1, -1);
        v22 = v43;
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x24C1CD5F0](v22, -1, -1);
        MEMORY[0x24C1CD5F0](v18, -1, -1);
      }

      v23 = [v12 uniqueIdentifier];
      sub_2483811F0();

      swift_beginAccess();
      sub_2482A9B34(v9, v6);
      v45(v9, v3);
      swift_endAccess();
      [v12 registerObserver_];

      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24)
      {
        v25 = v24;
        if ((*((*MEMORY[0x277D85000] & *v1) + 0x78))(v12))
        {
          v27 = v26;
          v28 = sub_2482ADAA8;
LABEL_19:
          ObjectType = swift_getObjectType();
          v38 = swift_allocObject();
          *(v38 + 16) = v25;
          v39 = *(v27 + 16);
          v40 = v12;
          v39(v28, v38, ObjectType, v27);

          swift_unknownObjectRelease();
        }
      }

      else
      {
        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();
        if (v29)
        {
          v25 = v29;
          if ((*((*MEMORY[0x277D85000] & *v1) + 0x78))(v12))
          {
            v27 = v30;
            v28 = sub_2482ADAAC;
            goto LABEL_19;
          }
        }

        else
        {
          objc_opt_self();
          v31 = swift_dynamicCastObjCClass();
          if (!v31)
          {
            objc_opt_self();
            v25 = swift_dynamicCastObjCClass();
            v33 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
            v34 = v12;
            v35 = v33();
            if (v25)
            {
              v28 = sub_2482ADAB4;
            }

            else
            {
              v25 = v34;
              v28 = sub_2482ADAB8;
            }

            if (!v35)
            {
              goto LABEL_20;
            }

            v27 = v36;
            goto LABEL_19;
          }

          v25 = v31;
          if ((*((*MEMORY[0x277D85000] & *v1) + 0x78))(v12))
          {
            v27 = v32;
            v28 = sub_2482ADAB0;
            goto LABEL_19;
          }
        }
      }
    }

LABEL_20:
  }
}

void sub_2482A5318(void *a1)
{
  v3 = sub_248381210();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - v8;
  if (a1)
  {
    v10 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_trackedServices;
    swift_beginAccess();
    v11 = *(v1 + v10);
    v12 = a1;

    v13 = [v12 uniqueIdentifier];
    sub_2483811F0();

    LOBYTE(v13) = sub_2482A6130(v9, v11);

    v14 = *(v4 + 8);
    v14(v9, v3);
    if (v13)
    {

LABEL_23:
      return;
    }

    v61 = v14;
    v62 = v12;
    v15 = sub_248383D90();
    v16 = *sub_24827C040();
    if (os_log_type_enabled(v16, v15))
    {
      v60 = v16;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v63[0] = v59;
      *v17 = 136315394;
      *(v17 + 4) = sub_24814A378(0xD00000000000001ELL, 0x80000002483AEC40, v63);
      *(v17 + 12) = 2112;
      v19 = v62;
      *(v17 + 14) = v62;
      *v18 = a1;
      v20 = v19;
      v21 = v60;
      _os_log_impl(&dword_248146000, v60, v15, "%s service=%@", v17, 0x16u);
      sub_24822D578(v18, &qword_27EE8FE40);
      MEMORY[0x24C1CD5F0](v18, -1, -1);
      v22 = v59;
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x24C1CD5F0](v22, -1, -1);
      MEMORY[0x24C1CD5F0](v17, -1, -1);
    }

    v12 = v62;
    v23 = [v62 uniqueIdentifier];
    sub_2483811F0();

    swift_beginAccess();
    sub_2482A9B34(v9, v6);
    v61(v9, v3);
    swift_endAccess();
    [v12 registerObserver_];

    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v25 = v24;
      v26 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
      v27 = v12;
      if (v26())
      {
        v29 = v28;
        ObjectType = swift_getObjectType();
        v31 = swift_allocObject();
        *(v31 + 16) = v25;
        v32 = *(v29 + 16);
        v33 = v27;
        v34 = sub_2482ADAA8;
LABEL_21:
        v32(v34, v31, ObjectType, v29);

        swift_unknownObjectRelease();

        goto LABEL_23;
      }
    }

    else
    {
      objc_opt_self();
      v35 = swift_dynamicCastObjCClass();
      if (v35)
      {
        v36 = v35;
        v37 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
        v27 = v12;
        if (v37())
        {
          v29 = v38;
          ObjectType = swift_getObjectType();
          v31 = swift_allocObject();
          *(v31 + 16) = v36;
          v32 = *(v29 + 16);
          v33 = v27;
          v34 = sub_2482ADAAC;
          goto LABEL_21;
        }
      }

      else
      {
        objc_opt_self();
        v39 = swift_dynamicCastObjCClass();
        if (v39)
        {
          v40 = v39;
          v41 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
          v27 = v12;
          if (v41())
          {
            v29 = v42;
            ObjectType = swift_getObjectType();
            v31 = swift_allocObject();
            *(v31 + 16) = v40;
            v32 = *(v29 + 16);
            v33 = v27;
            v34 = sub_2482ADAB0;
            goto LABEL_21;
          }
        }

        else
        {
          objc_opt_self();
          v43 = swift_dynamicCastObjCClass();
          if (v43)
          {
            v44 = v43;
            v45 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
            v27 = v12;
            if (v45())
            {
              v29 = v46;
              ObjectType = swift_getObjectType();
              v31 = swift_allocObject();
              *(v31 + 16) = v44;
              v32 = *(v29 + 16);
              v33 = v27;
              v34 = sub_2482ADAB4;
              goto LABEL_21;
            }
          }

          else
          {
            objc_opt_self();
            v47 = swift_dynamicCastObjCClass();
            if (!v47)
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v51 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_automakerStatusBarItems;
                swift_beginAccess();
                MEMORY[0x24C1CB0D0](v12);
                if (*((*(v1 + v51) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v51) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_248383B50();
                }

                sub_248383B70();
                swift_endAccess();
              }

              else
              {
                v52 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
                v53 = v12;
                if (v52())
                {
                  v55 = v54;
                  v56 = swift_getObjectType();
                  v57 = swift_allocObject();
                  *(v57 + 16) = v53;
                  v58 = *(v55 + 16);
                  v53 = v53;
                  v58(sub_2482ADABC, v57, v56, v55);

                  swift_unknownObjectRelease();
                }
              }

              goto LABEL_23;
            }

            v48 = v47;
            v49 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
            v27 = v12;
            if (v49())
            {
              v29 = v50;
              ObjectType = swift_getObjectType();
              v31 = swift_allocObject();
              *(v31 + 16) = v48;
              v32 = *(v29 + 16);
              v33 = v27;
              v34 = sub_2482ADAB8;
              goto LABEL_21;
            }
          }
        }
      }
    }

    goto LABEL_23;
  }
}

uint64_t sub_2482A5B58(unint64_t a1)
{
  if (!a1)
  {
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_12:
    LODWORD(v4) = 0;
LABEL_13:
    v9 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_automakerStatusBarItems;
    swift_beginAccess();
    v10 = *&v1[v9];
    swift_bridgeObjectRetain_n();
    v11 = v1;
    v41 = sub_2482AB420(v10);
    sub_2482ACCD8(&v41, v11);

    v12 = v41;
    if ((v41 & 0x8000000000000000) != 0 || (v41 & 0x4000000000000000) != 0)
    {
      goto LABEL_39;
    }

    v13 = *(v41 + 16);
    for (i = v11; v13; i = v11)
    {
      v14 = 0;
      v39 = v12 & 0xC000000000000001;
      v11 = MEMORY[0x277D84F98];
      v38 = v12;
      v37 = v4;
      while (1)
      {
        if (v39)
        {
          v16 = MEMORY[0x24C1CBA50](v14, v12);
        }

        else
        {
          if (v14 >= *(v12 + 16))
          {
            goto LABEL_36;
          }

          v16 = *(v12 + 8 * v14 + 32);
        }

        v17 = v16;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v40 = v14 + 1;
        v18 = v13;
        v19 = sub_248383CC0();
        v3 = v17;
        v20 = [v17 identifier];
        v21 = sub_248383960();
        v4 = v22;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v11;
        v12 = sub_2482A8314(v19);
        v25 = *(v11 + 2);
        v26 = (v24 & 1) == 0;
        v27 = v25 + v26;
        if (__OFADD__(v25, v26))
        {
          goto LABEL_37;
        }

        v28 = v24;
        if (*(v11 + 3) >= v27)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v11 = v41;
            if (v24)
            {
              goto LABEL_17;
            }
          }

          else
          {
            sub_2482AAE18();
            v11 = v41;
            if (v28)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
          sub_2482AA8F0(v27, isUniquelyReferenced_nonNull_native);
          v1 = v41;
          v29 = sub_2482A8314(v19);
          if ((v28 & 1) != (v30 & 1))
          {
            goto LABEL_44;
          }

          v12 = v29;
          v11 = v41;
          if (v28)
          {
LABEL_17:
            v15 = (*(v11 + 7) + 16 * v12);
            *v15 = v21;
            v15[1] = v4;

            goto LABEL_18;
          }
        }

        *&v11[8 * (v12 >> 6) + 64] |= 1 << v12;
        *(*(v11 + 6) + 8 * v12) = v19;
        v31 = (*(v11 + 7) + 16 * v12);
        *v31 = v21;
        v31[1] = v4;

        v32 = *(v11 + 2);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_38;
        }

        *(v11 + 2) = v34;
LABEL_18:
        ++v14;
        v13 = v18;
        LODWORD(v4) = v37;
        v12 = v38;
        if (v40 == v18)
        {
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v13 = sub_248384360();
    }

    v11 = MEMORY[0x277D84F98];
LABEL_41:

    *(i + OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_automakerStatusBarPriorities) = v11;

    return v4 & 1;
  }

  v3 = sub_248384360();
  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v3 >= 1)
  {
    LODWORD(v4) = 0;
    v5 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1CBA50](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = sub_2482A33BC(v6);

      LODWORD(v4) = v8 | v4;
    }

    while (v3 != v5);
    goto LABEL_13;
  }

  __break(1u);
LABEL_44:
  sub_24814FB28(0, &qword_27EE90740);
  sub_2483846E0();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2482A5EF0()
{
  v1 = sub_248383D90();
  v2 = *sub_24827C040();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v2;
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24814A378(0xD00000000000001FLL, 0x80000002483AEBE0, &v13);
    _os_log_impl(&dword_248146000, v3, v1, "%s fire", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C1CD5F0](v5, -1, -1);
    MEMORY[0x24C1CD5F0](v4, -1, -1);
  }

  result = (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    v11 = *(v8 + 16);
    v12 = v0;
    v11(sub_2482AD9A8, v10, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2482A6130(uint64_t a1, uint64_t a2)
{
  v3 = sub_248381210();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_2482ADA48(&qword_27EE91CD8), v7 = sub_2483838D0(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_2482ADA48(&unk_27EE91CE0);
      v15 = sub_248383910();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_2482A6590(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*((*MEMORY[0x277D85000] & *v4) + 0x78))();
  if (result)
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    v12 = *(v9 + 16);
    v13 = a1;
    v12(a4, v11, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_2482A68CC(void *a1)
{
  v2 = sub_2482A692C();
  v3 = [a1 dataByReplacingEntry:v2 forKey:*MEMORY[0x277D6BE90]];

  return v3;
}

id sub_2482A692C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91C40);
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v5 = &v15 - v4;
  v6 = ![v0 hasIcyConditions] || objc_msgSend(v0, sel_icyConditions) != 1;
  if (([v0 temperatureInvalid] & 1) == 0)
  {
    if (qword_27EE96790 != -1)
    {
      swift_once();
    }

    v7 = [v0 temperature];
    sub_24814FB28(0, &qword_27EE91C48);
    sub_248380FC0();

    sub_248383EE0();
    (*(v2 + 8))(v5, v1);
  }

  sub_2482A6D3C();
  v9 = v8;
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_248383930();
  }

  v11 = sub_248383930();

  if (v9)
  {
    v12 = sub_248383930();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_opt_self() entryWithImageName:v10 temperature:v11 aqi:v12];

  return v13;
}

id sub_2482A6BC8()
{
  result = sub_2482A6BE8();
  qword_27EE96798 = result;
  return result;
}

id sub_2482A6BE8()
{
  v0 = sub_248381240();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  sub_248381230();
  v5 = sub_248381220();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  [v4 setUnitStyle_];
  result = [v4 numberFormatter];
  if (result)
  {
    v7 = result;
    [result setMaximumFractionDigits_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2482A6D3C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91C30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = v13 - v8;
  if ([v1 aqiInvalid])
  {
    return 45;
  }

  result = [v1 aqi];
  if (result)
  {
    v11 = result;
    sub_24814FB28(0, &qword_27EE91C38);
    sub_248380FC0();

    (*(v3 + 32))(v9, v5, v2);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    MEMORY[0x24C1CAFD0](541675841, 0xE400000000000000);
    sub_248380FD0();
    sub_248383C50();
    v12 = v13[0];
    (*(v3 + 8))(v9, v2);
    return v12;
  }

  return result;
}

id sub_2482A7014(void *a1, id a2)
{
  if ([a2 moduleStatus])
  {
    v4 = sub_2482A7184([a2 cellularType]);
    v5 = [a2 moduleStatus] - 1;
    if (v5 > 4)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_24839F228[v5];
    }

    LOBYTE(v13) = 0;
    LOBYTE(v12) = 0;
    BYTE2(v11) = 0;
    LOWORD(v11) = 0;
    v7 = [objc_opt_self() entryWithType:v4 stringValue:0 crossfadeStringValue:0 badgeStringValue:0 wifiCalling:0 callForwarding:0 showsSOSWhenDisabled:v11 sosAvailable:v6 isBootstrapCellular:v12 status:objc_msgSend(a2 lowDataMode:sel_signalBars) rawValue:objc_msgSend(a2 displayValue:sel_signalBars) displayRawValue:v13];
  }

  else
  {
    sub_24814FB28(0, &unk_27EE91C80);
    v7 = [swift_getObjCClassFromMetadata() disabledEntry];
  }

  v8 = v7;
  v9 = [a1 dataByReplacingEntry:v8 forKey:*MEMORY[0x277D6BDC8]];

  return v9;
}

uint64_t sub_2482A7184(char a1)
{
  if ((a1 - 1) < 0xFu)
  {
    return (a1 - 1) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2482A719C(char a1)
{
  if ((a1 - 1) > 4u)
  {
    return 0;
  }

  else
  {
    return qword_24839F228[(a1 - 1)];
  }
}

id sub_2482A7288(void *a1, id a2)
{
  if ([a2 moduleStatus])
  {
    v4 = [a2 moduleStatus] - 1;
    if (v4 > 4)
    {
      v5 = 0;
    }

    else
    {
      v5 = qword_24839F228[v4];
    }

    v6 = [objc_opt_self() entryWithType:0 status:v5 lowDataMode:0 rawValue:objc_msgSend(a2 displayValue:sel_signalBars) displayRawValue:{objc_msgSend(a2, sel_signalBars), 0}];
  }

  else
  {
    sub_24814FB28(0, &qword_27EE91C78);
    v6 = [swift_getObjCClassFromMetadata() disabledEntry];
  }

  v7 = v6;
  v8 = [a1 dataByReplacingEntry:v7 forKey:*MEMORY[0x277D6BDD8]];

  return v8;
}

void sub_2482A7410(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *((*MEMORY[0x277D85000] & *a1) + 0x78);
  v9 = a3;
  v16 = a1;
  if (v8())
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    v14 = *(v11 + 16);
    v15 = v9;
    v14(a6, v13, ObjectType, v11);

    swift_unknownObjectRelease();
  }
}

id sub_2482A755C(void *a1, id a2)
{
  if ([a2 moduleStatus])
  {
    v4 = [objc_opt_self() entryWithState:objc_msgSend(a2 batteryEntry:{sel_moduleStatus) == 3, 0}];
  }

  else
  {
    sub_24814FB28(0, &qword_27EE91C70);
    v4 = [swift_getObjCClassFromMetadata() disabledEntry];
  }

  v5 = v4;
  v6 = [a1 dataByReplacingEntry:v5 forKey:*MEMORY[0x277D6BDC0]];

  return v6;
}

uint64_t sub_2482A7808(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*((*MEMORY[0x277D85000] & *v5) + 0x78))();
  if (result)
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = *(v10 + 16);
    v14 = a1;
    v13(a5, v12, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_2482A7964(void *a1, id a2)
{
  if ([a2 hidden])
  {
    sub_24814FB28(0, &qword_27EE91C68);
    v4 = [swift_getObjCClassFromMetadata() disabledEntry];
  }

  else
  {
    v5 = [a2 userVisibleLabel];
    if (v5)
    {
      v6 = v5;
      sub_248383960();
    }

    v7 = sub_248383930();

    v8 = sub_248383930();
    v4 = [objc_opt_self() entryWithStringValue:v7 avatarIdentifier:v8];
  }

  v9 = [a1 dataByReplacingEntry:v4 forKey:*MEMORY[0x277D6BE08]];

  return v9;
}

id sub_2482A7B38(void *a1, id a2)
{
  v3 = [objc_opt_self() entryWithCamera:objc_msgSend(a2 microphone:sel_cameraActive) location:{objc_msgSend(a2, sel_microphoneActive), 0}];
  v4 = [a1 dataByReplacingEntry:v3 forKey:*MEMORY[0x277D6BDD0]];

  return v4;
}

uint64_t sub_2482A7CCC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v47 = a1 & 0xFFFFFFFFFFFFFF8;
    v48 = a1 & 0xC000000000000001;
    v3 = MEMORY[0x277D84F98];
    v45 = v1;
    v46 = a1;
    while (1)
    {
      if (v48)
      {
        a1 = MEMORY[0x24C1CBA50](v2, a1);
      }

      else
      {
        if (v2 >= *(v47 + 16))
        {
          goto LABEL_42;
        }

        a1 = *(a1 + 8 * v2 + 32);
      }

      v7 = a1;
      v8 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v9 = [a1 identifier];
      v10 = sub_248383960();
      v12 = v11;

      v13 = [v7 hidden];
      v14 = [v7 hasUserVisibleLabel];
      if (v13)
      {
        if (v14)
        {
          sub_24814FB28(0, &qword_27EE91910);
        }

        else
        {
          sub_24814FB28(0, &qword_27EE91908);
        }

        v26 = [swift_getObjCClassFromMetadata() disabledEntry];
      }

      else
      {
        v15 = [v7 symbolName];
        v16 = v15;
        if (v14)
        {
          if (!v15)
          {
            sub_248383960();
            v16 = sub_248383930();
          }

          v17 = [v7 disabled];
          v18 = [v7 userVisibleLabel];
          if (v18)
          {
            v44 = v17;
            v19 = v10;
            v20 = v18;
            v21 = sub_248383960();
            v23 = v22;

            v24 = HIBYTE(v23) & 0xF;
            if ((v23 & 0x2000000000000000) == 0)
            {
              v24 = v21 & 0xFFFFFFFFFFFFLL;
            }

            if (v24)
            {
              v25 = sub_248383930();
            }

            else
            {
              v25 = 0;
            }

            v10 = v19;

            v17 = v44;
          }

          else
          {
            v25 = 0;
          }

          v26 = [objc_opt_self() entryWithImageNamed:v16 BOOLValue:v17 ^ 1 stringValue:v25];
        }

        else
        {
          if (!v15)
          {
            sub_248383960();
            v16 = sub_248383930();
          }

          v26 = [objc_opt_self() entryWithImageNamed:v16 BOOLValue:{objc_msgSend(v7, sel_disabled) ^ 1}];
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a1 = sub_24822B8A0(v10, v12);
      v29 = v3[2];
      v30 = (v28 & 1) == 0;
      v31 = __OFADD__(v29, v30);
      v32 = v29 + v30;
      if (v31)
      {
        goto LABEL_43;
      }

      v33 = v28;
      if (v3[3] < v32)
      {
        sub_2482AAB74(v32, isUniquelyReferenced_nonNull_native);
        a1 = sub_24822B8A0(v10, v12);
        if ((v33 & 1) != (v34 & 1))
        {
          result = sub_2483846E0();
          __break(1u);
          return result;
        }

LABEL_35:
        if (v33)
        {
          goto LABEL_4;
        }

        goto LABEL_36;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_35;
      }

      v38 = v10;
      v39 = a1;
      sub_2482AAF88();
      a1 = v39;
      v10 = v38;
      if (v33)
      {
LABEL_4:
        v4 = a1;

        v5 = v3[7];
        v6 = *(v5 + 8 * v4);
        *(v5 + 8 * v4) = v26;

        goto LABEL_5;
      }

LABEL_36:
      v3[(a1 >> 6) + 8] |= 1 << a1;
      v35 = (v3[6] + 16 * a1);
      *v35 = v10;
      v35[1] = v12;
      *(v3[7] + 8 * a1) = v26;

      v36 = v3[2];
      v31 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v31)
      {
        goto LABEL_44;
      }

      v3[2] = v37;
LABEL_5:
      ++v2;
      a1 = v46;
      if (v8 == v45)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v40 = a1;
    v1 = sub_248384360();
    a1 = v40;
  }

LABEL_46:
  sub_24814FB28(0, &unk_27EE91918);
  v41 = sub_248383880();

  v42 = [objc_opt_self() entryWithDictionary_];

  return v42;
}

void *sub_2482A8190(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

size_t sub_2482A8218(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE938F0);
  v4 = *(sub_248381210() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2482A8314(uint64_t a1)
{
  v2 = sub_248384020();

  return sub_2482A8358(a1, v2);
}

unint64_t sub_2482A8358(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_24814FB28(0, &qword_27EE90740);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_248384030();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

size_t sub_2482A842C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE938F0);
  v10 = *(sub_248381210() - 8);
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
  v15 = *(sub_248381210() - 8);
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

void sub_2482A8604(void **a1)
{
  v2 = *(sub_248381210() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2482AB67C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_2482A86AC(v5);
  *a1 = v3;
}

void sub_2482A86AC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_248384640();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_248381210();
        v6 = sub_248383B60();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_248381210() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2482A8A88(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2482A87D8(0, v2, 1, a1);
  }
}

void sub_2482A87D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_248381210();
  MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v31 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_2482ADA48(&qword_27EE91CA8);
      v26 = sub_248383900();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2482A8A88(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_248381210();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v134 = &v119 - v12;
  MEMORY[0x28223BE20](v13);
  v140 = &v119 - v14;
  v16 = MEMORY[0x28223BE20](v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_24829B58C(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_2482A9488(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_24829B58C(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_24829B500(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_2482ADA48(&qword_27EE91CA8);
      LODWORD(v133) = sub_248383900();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_248383900() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_248299530(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_248299530((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_2482A9488(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_24829B58C(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_24829B500(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_2482ADA48(&qword_27EE91CA8);
    v109 = sub_248383900();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_2482A9488(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = sub_248381210();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v42 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v53 = a3;
  v15 = (a2 - a1) / v13;
  v57 = a1;
  v56 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v46 = (v8 + 8);
      v47 = (v8 + 16);
      v28 = a4 + v17;
      v29 = v53;
      v44 = a1;
      v45 = a4;
      v48 = v27;
      do
      {
        v42 = v26;
        v30 = a2 + v27;
        v31 = v26;
        v49 = a2;
        v50 = a2 + v27;
        while (1)
        {
          if (a2 <= a1)
          {
            v57 = a2;
            v26 = v42;
            goto LABEL_59;
          }

          v33 = v29;
          v43 = v31;
          v53 = v29 + v27;
          v34 = v28 + v27;
          v35 = *v47;
          v36 = v51;
          v37 = v28 + v27;
          v38 = v28;
          v39 = v54;
          (*v47)(v51, v37, v54);
          v40 = v52;
          (v35)(v52, v30, v39);
          sub_2482ADA48(&qword_27EE91CA8);
          LOBYTE(v35) = sub_248383900();
          v41 = *v46;
          (*v46)(v40, v39);
          v41(v36, v39);
          if (v35)
          {
            break;
          }

          v31 = v34;
          v29 = v53;
          if (v33 < v38 || v53 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v50;
            a1 = v44;
          }

          else
          {
            v30 = v50;
            a1 = v44;
            if (v33 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v34;
          v32 = v34 > v45;
          v27 = v48;
          a2 = v49;
          if (!v32)
          {
            v26 = v31;
            goto LABEL_58;
          }
        }

        v29 = v53;
        if (v33 < v49 || v53 >= v49)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v44;
          v28 = v38;
        }

        else
        {
          a2 = v50;
          a1 = v44;
          v28 = v38;
          if (v33 != v49)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v43;
        v27 = v48;
      }

      while (v28 > v45);
    }

LABEL_58:
    v57 = a2;
LABEL_59:
    v55 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v50 = a4 + v16;
    v55 = a4 + v16;
    if (v16 >= 1 && a2 < v53)
    {
      v48 = *(v8 + 16);
      v49 = v8 + 16;
      v46 = v13;
      v47 = (v8 + 8);
      do
      {
        v19 = v51;
        v20 = v54;
        v21 = v48;
        v48(v51, a2, v54);
        v22 = v52;
        v21(v52, a4, v20);
        sub_2482ADA48(&qword_27EE91CA8);
        LOBYTE(v21) = sub_248383900();
        v23 = *v47;
        (*v47)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v46;
          if (a1 < a2 || a1 >= v46 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v46;
          v25 = v46 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v56 = v25;
          a4 += v24;
        }

        a1 += v24;
        v57 = a1;
      }

      while (a4 < v50 && a2 < v53);
    }
  }

  sub_2482A9A50(&v57, &v56, &v55);
}

uint64_t sub_2482A9A50(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_248381210();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_2482A9B34(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_248381210();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2482ADA48(&qword_27EE91CD8);
  v33 = a2;
  v11 = sub_2483838D0();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2482ADA48(&unk_27EE91CE0);
      v21 = sub_248383910();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2482AA134(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2482A9DEC()
{
  v1 = v0;
  v35 = sub_248381210();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE94680);
  result = sub_248384400();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_2482ADA48(&qword_27EE91CD8);
      result = sub_2483838D0();
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_2482AA134(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_248381210();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2482A9DEC();
  }

  else
  {
    if (v12 > v11)
    {
      sub_2482AA3B0();
      goto LABEL_12;
    }

    sub_2482AA5E8();
  }

  v13 = *v3;
  sub_2482ADA48(&qword_27EE91CD8);
  v14 = sub_2483838D0();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_2482ADA48(&unk_27EE91CE0);
      v22 = sub_248383910();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2483846D0();
  __break(1u);
  return result;
}

void *sub_2482AA3B0()
{
  v1 = v0;
  v2 = sub_248381210();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE94680);
  v6 = *v0;
  v7 = sub_2483843F0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_2482AA5E8()
{
  v1 = v0;
  v32 = sub_248381210();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE94680);
  v6 = sub_248384400();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_2482ADA48(&qword_27EE91CD8);
      result = sub_2483838D0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_2482AA8F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CC0);
  v35 = a2;
  result = sub_2483845D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v35 & 1) == 0)
      {
        v25 = v21;
      }

      result = sub_248384020();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2482AAB74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91C60);
  v35 = a2;
  result = sub_2483845D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_248384780();
      sub_2483839E0();
      result = sub_2483847B0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_2482AAE18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CC0);
  v2 = *v0;
  v3 = sub_2483845C0();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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

id sub_2482AAF88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91C60);
  v2 = *v0;
  v3 = sub_2483845C0();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void sub_2482AB0F4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_248381210();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void (*sub_2482AB398(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1CBA50](a2, a3);
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
    return sub_2482AB418;
  }

  __break(1u);
  return result;
}

uint64_t sub_2482AB420(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_248384360();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_2482A8190(v3, 0);
  sub_2482AB4B4((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2482AB4B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_248384360();
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
      result = sub_248384360();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24822D648(&qword_27EE91CD0, &qword_27EE91CC8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CC8);
            v9 = sub_2482AB398(v13, i, a3);
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
        sub_24814FB28(0, &qword_27EE91C98);
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

unint64_t sub_2482AB690(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CC0);
    v3 = sub_2483845F0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_2482A8314(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void sub_2482AB7B4(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = a1;
    v5 = sub_248383D90();
    v6 = *sub_24827C040();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = v6;
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18[0] = v10;
      *v8 = 136315394;
      *(v8 + 4) = sub_24814A378(0xD000000000000022, 0x80000002483AEC60, v18);
      *(v8 + 12) = 2112;
      *(v8 + 14) = v4;
      *v9 = a1;
      v11 = v4;
      _os_log_impl(&dword_248146000, v7, v5, "%s currentCar=%@", v8, 0x16u);
      sub_24822D578(v9, &qword_27EE8FE40);
      MEMORY[0x24C1CD5F0](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C1CD5F0](v10, -1, -1);
      MEMORY[0x24C1CD5F0](v8, -1, -1);
    }

    v12 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_trackedServices;
    swift_beginAccess();
    *(v2 + v12) = MEMORY[0x277D84FA0];

    v13 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_automakerStatusBarItems;
    swift_beginAccess();
    *(v2 + v13) = MEMORY[0x277D84F90];

    *(v2 + OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_automakerStatusBarPriorities) = MEMORY[0x277D84F98];

    if ((*((*MEMORY[0x277D85000] & *v2) + 0x78))(v14))
    {
      v16 = v15;
      ObjectType = swift_getObjectType();
      (*(v16 + 16))(sub_2482A333C, 0, ObjectType, v16);
      (*(v16 + 8))(ObjectType, v16);
      swift_unknownObjectRelease();
    }

    [v4 registerObserver_];
    [v2 carDidUpdateAccessories_];
  }
}

uint64_t sub_2482ABA68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE91CF0);
    v3 = sub_248384420();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_248384780();

      sub_2483839E0();
      result = sub_2483847B0();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_248384680();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2482ABBD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839F1A0;
  *(inited + 32) = sub_248383960();
  *(inited + 40) = v1;
  *(inited + 48) = sub_248383960();
  *(inited + 56) = v2;
  *(inited + 64) = sub_248383960();
  *(inited + 72) = v3;
  *(inited + 80) = sub_248383960();
  *(inited + 88) = v4;
  v5 = sub_2482ABA68(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_2482ABCAC(void **__src, void **a2, id *a3, void **a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != a2 || &a2[v13] <= a4)
    {
      v29 = a2;
      memmove(a4, a2, 8 * v13);
      a2 = v29;
    }

    v30 = a2;
    v15 = &v5[v13];
    if (v11 >= 8 && a2 > v7)
    {
      v50 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_carManager;
      v51 = v5;
LABEL_30:
      __dst = v30;
      v31 = v30 - 1;
      --v6;
      v32 = v15;
      do
      {
        v33 = *--v32;
        v34 = v31;
        v35 = *v31;
        v36 = *(a5 + v50);
        v37 = v33;
        v38 = v35;
        v39 = [v36 currentCar];
        if (v39 && (v40 = v39, v41 = [v39 rightHandDrive], v40, v41))
        {
          v42 = [v37 sortOrder];
          v43 = [v38 sortOrder];

          if (v43 < v42)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v44 = [v37 sortOrder];
          v45 = [v38 sortOrder];

          if (v44 < v45)
          {
LABEL_39:
            v46 = v34;
            if (v6 + 1 != __dst)
            {
              *v6 = *v34;
            }

            v5 = v51;
            if (v15 <= v51 || (v30 = v46, v46 <= v7))
            {
              v30 = v46;
              goto LABEL_46;
            }

            goto LABEL_30;
          }
        }

        if (v6 + 1 != v15)
        {
          *v6 = *v32;
        }

        --v6;
        v15 = v32;
        v31 = v34;
      }

      while (v32 > v51);
      v15 = v32;
      v30 = __dst;
      v5 = v51;
    }
  }

  else
  {
    v14 = a2;
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v15 = &v5[v10];
    if (v8 >= 8 && v14 < v6)
    {
      v49 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_carManager;
      do
      {
        v16 = *v5;
        v17 = *(a5 + v49);
        v18 = *v14;
        v19 = v16;
        v20 = [v17 currentCar];
        if (v20 && (v21 = v20, v22 = [v20 rightHandDrive], v21, v22))
        {
          v23 = [v18 sortOrder];
          v24 = [v19 sortOrder];

          if (v24 >= v23)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v27 = [v18 sortOrder];
          v28 = [v19 sortOrder];

          if (v27 >= v28)
          {
LABEL_15:
            v25 = v5;
            v26 = v7 == v5++;
            if (v26)
            {
              goto LABEL_17;
            }

LABEL_16:
            *v7 = *v25;
            goto LABEL_17;
          }
        }

        v25 = v14;
        v26 = v7 == v14++;
        if (!v26)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v7;
      }

      while (v5 < v15 && v14 < v6);
    }

    v30 = v7;
  }

LABEL_46:
  if (v30 != v5 || v30 >= (v5 + ((v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v30, v5, 8 * (v15 - v5));
  }

  return 1;
}

void sub_2482AC074(char **a1, void **a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_24829B58C(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      __src = (v9 + 8 * *v10);
      v23 = (v9 + 8 * *v13);
      v14 = (v9 + 8 * v5);
      v15 = v21;
      sub_2482ABCAC(__src, v23, v14, a2, v15);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_2482AC214(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, void **a5)
{
  v5 = a5;
  v6 = a3[1];
  v130 = MEMORY[0x277D84F90];
  if (v6 >= 1)
  {
    v114 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_carManager;
    v120 = a5;
    v8 = 0;
    v125 = MEMORY[0x277D84F90];
    v119 = v5;
    v117 = a4;
    while (1)
    {
      v9 = v8++;
      if (v8 >= v6)
      {
        v21 = v125;
      }

      else
      {
        v10 = *a3;
        v115 = v9;
        v11 = *(*a3 + 8 * v9);
        v12 = *(v5 + v114);
        v13 = *(*a3 + 8 * v8);
        v14 = v11;
        v15 = [v12 currentCar];
        if (v15 && (v16 = v15, v17 = [v15 rightHandDrive], v16, v17))
        {
          v18 = [v13 sortOrder];
          v19 = [v14 sortOrder];

          v20 = v19 >= v18;
        }

        else
        {
          v22 = [v13 sortOrder];
          v23 = [v14 sortOrder];

          v20 = v22 >= v23;
        }

        v24 = !v20;
        v9 = v115;
        v8 = v115 + 2;
        if (v115 + 2 >= v6)
        {
          v5 = v119;
        }

        else
        {
          v25 = (v10 + 8 * v115 + 16);
          do
          {
            v28 = *(v25 - 1);
            v29 = *v25;
            v30 = v28;
            v31 = [v12 currentCar];
            if (v31 && (v32 = v31, v33 = [v31 rightHandDrive], v32, v33))
            {
              v34 = [v29 sortOrder];
              v35 = [v30 sortOrder];

              if (((v24 ^ (v35 >= v34)) & 1) == 0)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v26 = [v29 sortOrder];
              v27 = [v30 sortOrder];

              if (v24 == v26 >= v27)
              {
                goto LABEL_23;
              }
            }

            ++v8;
            ++v25;
          }

          while (v6 != v8);
          v8 = v6;
LABEL_23:
          v5 = v119;
          v9 = v115;
        }

        a4 = v117;
        v21 = v125;
        if (v24)
        {
          if (v8 < v9)
          {
            goto LABEL_132;
          }

          if (v9 < v8)
          {
            v36 = 8 * v8 - 8;
            v37 = 8 * v9;
            v38 = v8;
            v39 = v9;
            do
            {
              if (v39 != --v38)
              {
                v41 = *a3;
                if (!*a3)
                {
                  goto LABEL_137;
                }

                v40 = *(v41 + v37);
                *(v41 + v37) = *(v41 + v36);
                *(v41 + v36) = v40;
              }

              ++v39;
              v36 -= 8;
              v37 += 8;
            }

            while (v39 < v38);
          }
        }
      }

      v42 = a3[1];
      if (v8 < v42)
      {
        if (__OFSUB__(v8, v9))
        {
          goto LABEL_131;
        }

        if (v8 - v9 < a4)
        {
          v43 = v9 + a4;
          if (__OFADD__(v9, a4))
          {
            goto LABEL_133;
          }

          if (v43 >= v42)
          {
            v43 = a3[1];
          }

          if (v43 < v9)
          {
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
            goto LABEL_139;
          }

          if (v8 != v43)
          {
            v44 = *a3;
            v45 = *(v5 + v114);
            v46 = *a3 + 8 * v8 - 8;
            v116 = v9;
            v47 = v9 - v8;
            v121 = v43;
            do
            {
              v127 = v8;
              v48 = *(v44 + 8 * v8);
              v49 = v47;
              v123 = v46;
              do
              {
                v50 = *v46;
                v51 = v48;
                v52 = v50;
                v53 = [v45 currentCar];
                if (v53 && (v54 = v53, v55 = [v53 rightHandDrive], v54, v55))
                {
                  v5 = [v51 sortOrder];
                  v56 = [v52 sortOrder];

                  if (v56 >= v5)
                  {
                    break;
                  }
                }

                else
                {
                  v5 = [v51 sortOrder];
                  v57 = [v52 sortOrder];

                  if (v5 >= v57)
                  {
                    break;
                  }
                }

                if (!v44)
                {
                  goto LABEL_135;
                }

                v58 = *v46;
                v48 = *(v46 + 8);
                *v46 = v48;
                *(v46 + 8) = v58;
                v46 -= 8;
                v20 = __CFADD__(v49++, 1);
              }

              while (!v20);
              v8 = v127 + 1;
              v46 = v123 + 8;
              --v47;
            }

            while (v127 + 1 != v121);
            v8 = v121;
            v21 = v125;
            v9 = v116;
          }
        }
      }

      if (v8 < v9)
      {
        goto LABEL_130;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_248299530(0, *(v21 + 2) + 1, 1, v21);
      }

      v60 = *(v21 + 2);
      v59 = *(v21 + 3);
      v61 = v60 + 1;
      if (v60 >= v59 >> 1)
      {
        v21 = sub_248299530((v59 > 1), v60 + 1, 1, v21);
      }

      *(v21 + 2) = v61;
      v62 = v21 + 32;
      v63 = &v21[16 * v60 + 32];
      *v63 = v9;
      *(v63 + 1) = v8;
      v124 = *a1;
      if (!*a1)
      {
        goto LABEL_138;
      }

      v125 = v21;
      if (v60)
      {
        v128 = v8;
        v122 = v21 + 32;
        while (1)
        {
          v64 = v61 - 1;
          if (v61 >= 4)
          {
            break;
          }

          if (v61 == 3)
          {
            v65 = *(v21 + 4);
            v66 = *(v21 + 5);
            v75 = __OFSUB__(v66, v65);
            v67 = v66 - v65;
            v68 = v75;
LABEL_75:
            if (v68)
            {
              goto LABEL_120;
            }

            v81 = &v21[16 * v61];
            v83 = *v81;
            v82 = *(v81 + 1);
            v84 = __OFSUB__(v82, v83);
            v85 = v82 - v83;
            v86 = v84;
            if (v84)
            {
              goto LABEL_122;
            }

            v87 = &v62[16 * v64];
            v89 = *v87;
            v88 = *(v87 + 1);
            v75 = __OFSUB__(v88, v89);
            v90 = v88 - v89;
            if (v75)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v85, v90))
            {
              goto LABEL_127;
            }

            if (v85 + v90 >= v67)
            {
              if (v67 < v90)
              {
                v64 = v61 - 2;
              }

              goto LABEL_97;
            }

            goto LABEL_90;
          }

          if (v61 < 2)
          {
            goto LABEL_128;
          }

          v91 = &v21[16 * v61];
          v93 = *v91;
          v92 = *(v91 + 1);
          v75 = __OFSUB__(v92, v93);
          v85 = v92 - v93;
          v86 = v75;
LABEL_90:
          if (v86)
          {
            goto LABEL_124;
          }

          v94 = &v62[16 * v64];
          v96 = *v94;
          v95 = *(v94 + 1);
          v75 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v75)
          {
            goto LABEL_126;
          }

          if (v97 < v85)
          {
            goto LABEL_3;
          }

LABEL_97:
          if (v64 - 1 >= v61)
          {
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
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            goto LABEL_134;
          }

          v102 = *a3;
          if (!*a3)
          {
            goto LABEL_136;
          }

          v103 = &v62[16 * v64 - 16];
          v104 = *v103;
          v105 = v64;
          v106 = &v62[16 * v64];
          v107 = *(v106 + 1);
          v5 = (v102 + 8 * *v103);
          v108 = (v102 + 8 * *v106);
          v109 = (v102 + 8 * v107);
          v110 = v120;
          sub_2482ABCAC(v5, v108, v109, v124, v110);
          if (v129)
          {

            v5 = v119;
            goto LABEL_110;
          }

          v21 = v125;
          if (v107 < v104)
          {
            goto LABEL_115;
          }

          v5 = *(v125 + 2);
          if (v105 > v5)
          {
            goto LABEL_116;
          }

          *v103 = v104;
          *(v103 + 1) = v107;
          if (v105 >= v5)
          {
            goto LABEL_117;
          }

          v61 = v5 - 1;
          memmove(v106, v106 + 16, 16 * (v5 - v105 - 1));
          *(v125 + 2) = v5 - 1;
          v8 = v128;
          v62 = v122;
          if (v5 <= 2)
          {
            goto LABEL_3;
          }
        }

        v69 = &v62[16 * v61];
        v70 = *(v69 - 8);
        v71 = *(v69 - 7);
        v75 = __OFSUB__(v71, v70);
        v72 = v71 - v70;
        if (v75)
        {
          goto LABEL_118;
        }

        v74 = *(v69 - 6);
        v73 = *(v69 - 5);
        v75 = __OFSUB__(v73, v74);
        v67 = v73 - v74;
        v68 = v75;
        if (v75)
        {
          goto LABEL_119;
        }

        v76 = &v21[16 * v61];
        v78 = *v76;
        v77 = *(v76 + 1);
        v75 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v75)
        {
          goto LABEL_121;
        }

        v75 = __OFADD__(v67, v79);
        v80 = v67 + v79;
        if (v75)
        {
          goto LABEL_123;
        }

        if (v80 >= v72)
        {
          v98 = &v62[16 * v64];
          v100 = *v98;
          v99 = *(v98 + 1);
          v75 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v75)
          {
            goto LABEL_129;
          }

          if (v67 < v101)
          {
            v64 = v61 - 2;
          }

          goto LABEL_97;
        }

        goto LABEL_75;
      }

LABEL_3:
      v6 = a3[1];
      v5 = v119;
      a4 = v117;
      if (v8 >= v6)
      {
        v130 = v125;
        goto LABEL_107;
      }
    }
  }

  v111 = a5;
LABEL_107:
  v112 = *a1;
  if (*a1)
  {
    v113 = v5;
    sub_2482AC074(&v130, v112, a3, v113);
    if (v129)
    {

LABEL_110:
    }

    else
    {
    }
  }

  else
  {
LABEL_139:

    __break(1u);
  }
}

void sub_2482ACA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *(a5 + OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_carManager);
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
LABEL_5:
    v25 = a3;
    v9 = *(v5 + 8 * a3);
    v23 = v8;
    v24 = v7;
    while (1)
    {
      v10 = *v7;
      v11 = v9;
      v12 = v10;
      v13 = [v6 currentCar];
      if (v13 && (v14 = v13, v15 = [v13 rightHandDrive], v14, v15))
      {
        v16 = [v11 sortOrder];
        v17 = [v12 sortOrder];

        if (v17 >= v16)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v18 = [v11 sortOrder];
        v19 = [v12 sortOrder];

        if (v18 >= v19)
        {
          goto LABEL_4;
        }
      }

      if (!v5)
      {
        break;
      }

      v20 = *v7;
      v9 = *(v7 + 8);
      *v7 = v9;
      *(v7 + 8) = v20;
      v7 -= 8;
      if (__CFADD__(v8++, 1))
      {
LABEL_4:
        a3 = v25 + 1;
        v7 = v24 + 8;
        v8 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_2482ACB84(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_248384640();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24814FB28(0, &qword_27EE91C98);
        v8 = sub_248383B60();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      v9 = v4;
      sub_2482AC214(v10, v11, a1, v6, v9);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_2482ACA14(0, v3, 1, a1, v4);
  }
}

void sub_2482ACCD8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_2482AB668(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_2482ACB84(v8, v7);

  sub_2483844B0();
}

void sub_2482ACD78()
{
  v1 = v0;
  v2 = 0;
  v110 = sub_248381210();
  v106 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_248383D90();
  v5 = sub_24827C040();
  v6 = *v5;
  if (!os_log_type_enabled(*v5, v4))
  {
    goto LABEL_14;
  }

  LODWORD(v102) = v4;
  v104 = v5;
  v103 = v6;
  v7 = swift_slowAlloc();
  v100 = swift_slowAlloc();
  v112[0] = v100;
  *v7 = 136315394;
  *(v7 + 4) = sub_24814A378(0xD00000000000001BLL, 0x80000002483AEC20, v112);
  v101 = v7;
  *(v7 + 12) = 2080;
  v8 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_trackedServices;
  swift_beginAccess();
  v105 = v1;
  v9 = *(&v1->isa + v8);
  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = sub_2482A8218(*(v9 + 16), 0);
  sub_2482AB0F4(&v111, &v11[(*(v106 + 80) + 32) & ~*(v106 + 80)], v10, v9);
  v13 = v12;
  swift_bridgeObjectRetain_n();
  sub_248167908();
  if (v13 != v10)
  {
    __break(1u);
LABEL_5:

    v11 = MEMORY[0x277D84F90];
  }

  v111 = v11;
  sub_2482A8604(&v111);

  v14 = v111;
  v15 = *(v111 + 2);
  if (v15)
  {
    v99 = 0;
    v111 = MEMORY[0x277D84F90];
    sub_24822C8F0(0, v15, 0);
    v16 = v111;
    v108 = v106[2];
    v17 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v98[1] = v14;
    v18 = v14 + v17;
    v107 = v106[9];
    v19 = (v106 + 1);
    do
    {
      v20 = v109;
      v21 = v110;
      v108(v109, v18, v110);
      v22 = sub_2483811D0();
      v24 = v23;
      (*v19)(v20, v21);
      v111 = v16;
      v26 = *(v16 + 2);
      v25 = *(v16 + 3);
      if (v26 >= v25 >> 1)
      {
        sub_24822C8F0((v25 > 1), v26 + 1, 1);
        v16 = v111;
      }

      *(v16 + 2) = v26 + 1;
      v27 = &v16[16 * v26];
      *(v27 + 4) = v22;
      *(v27 + 5) = v24;
      v18 += v107;
      --v15;
    }

    while (v15);

    v2 = v99;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v111 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AB0);
  sub_24822D648(&qword_27EE91C90, &unk_27EE93AB0);
  v28 = sub_2483838F0();
  v30 = v29;

  v31 = sub_24814A378(v28, v30, v112);

  v32 = v101;
  *(v101 + 14) = v31;
  v33 = v103;
  _os_log_impl(&dword_248146000, v103, v102, "%s start trackedServices: [%s]", v32, 0x16u);
  v34 = v100;
  swift_arrayDestroy();
  MEMORY[0x24C1CD5F0](v34, -1, -1);
  MEMORY[0x24C1CD5F0](v32, -1, -1);

  v5 = v104;
  v1 = v105;
LABEL_14:
  v35 = *(&v1->isa + OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_carManager);
  v36 = [v35 currentCar];
  v37 = [v36 environmentalConditions];

  v38 = [v37 exteriorConditions];
  sub_2482A3B40(v38);

  v39 = [v35 currentCar];
  v40 = [v39 statusIndicators];

  v41 = [v40 cellularStatus];
  sub_2482A3F24(v41);

  v42 = [v35 currentCar];
  v43 = [v42 statusIndicators];

  v44 = [v43 wiFiStatus];
  sub_2482A4358(v44);

  v45 = [v35 currentCar];
  v46 = [v45 statusIndicators];

  v47 = [v46 bluetoothStatus];
  sub_2482A4814(v47);

  v48 = [v35 currentCar];
  v49 = [v48 statusIndicators];

  v50 = [v49 currentUserStatus];
  sub_2482A4D54(v50);

  v51 = [v35 currentCar];
  v52 = [v51 statusIndicators];

  v53 = [v52 activityIndicator];
  sub_2482A5318(v53);

  v54 = sub_2482A2E90();
  v55 = v54;
  if (v54)
  {
    if (v54 >> 62)
    {
      sub_24814FB28(0, &qword_27EE91C98);
      v96 = sub_248384590();

      v55 = v96;
    }

    else
    {

      sub_2483846A0();
      sub_24814FB28(0, &qword_27EE91C98);
    }
  }

  v56 = sub_2482A5B58(v55);

  v57 = sub_2482A2EAC();
  v58 = v57;
  if (v57)
  {
    if (v57 >> 62)
    {
      sub_24814FB28(0, &qword_27EE91C98);
      v97 = sub_248384590();

      v58 = v97;
    }

    else
    {

      sub_2483846A0();
      sub_24814FB28(0, &qword_27EE91C98);
    }
  }

  v59 = sub_2482A5B58(v58);

  if ((v56 | v59))
  {
    v60 = sub_2482A5EF0();
    if ((*((*MEMORY[0x277D85000] & v1->isa) + 0x78))(v60))
    {
      v62 = v61;
      ObjectType = swift_getObjectType();
      (*(v62 + 8))(ObjectType, v62);
      swift_unknownObjectRelease();
    }
  }

  v64 = sub_248383D90();
  v65 = *v5;
  if (os_log_type_enabled(*v5, v64))
  {
    LODWORD(v103) = v64;
    v105 = v65;
    v66 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v113[0] = v102;
    *v66 = 136315394;
    *(v66 + 4) = sub_24814A378(0xD00000000000001BLL, 0x80000002483AEC20, v113);
    v104 = v66;
    *(v66 + 12) = 2080;
    v67 = OBJC_IVAR____TtCE9DashBoardCSo26DBStatusBarDataBroadcaster18VehicleStateSource_trackedServices;
    swift_beginAccess();
    v68 = *(&v1->isa + v67);
    v69 = *(v68 + 16);
    if (v69)
    {
      v70 = sub_2482A8218(*(v68 + 16), 0);
      sub_2482AB0F4(&v111, &v70[(*(v106 + 80) + 32) & ~*(v106 + 80)], v69, v68);
      v72 = v71;
      swift_bridgeObjectRetain_n();
      sub_248167908();
      if (v72 == v69)
      {
        goto LABEL_28;
      }

      __break(1u);
    }

    v70 = MEMORY[0x277D84F90];
LABEL_28:
    v111 = v70;
    sub_2482A8604(&v111);
    if (v2)
    {

      __break(1u);
    }

    else
    {

      v73 = v111;
      v74 = *(v111 + 2);
      if (v74)
      {
        v111 = MEMORY[0x277D84F90];
        sub_24822C8F0(0, v74, 0);
        v75 = v111;
        v76 = v106 + 2;
        v77 = v106[2];
        v78 = *(v106 + 80);
        v106 = v73;
        v79 = v73 + ((v78 + 32) & ~v78);
        v107 = v76[7];
        v108 = v77;
        v80 = (v76 - 1);
        do
        {
          v82 = v109;
          v81 = v110;
          v108(v109, v79, v110);
          v83 = sub_2483811D0();
          v85 = v84;
          (*v80)(v82, v81);
          v111 = v75;
          v87 = *(v75 + 2);
          v86 = *(v75 + 3);
          if (v87 >= v86 >> 1)
          {
            sub_24822C8F0((v86 > 1), v87 + 1, 1);
            v75 = v111;
          }

          *(v75 + 2) = v87 + 1;
          v88 = &v75[16 * v87];
          *(v88 + 4) = v83;
          *(v88 + 5) = v85;
          v79 += v107;
          --v74;
        }

        while (v74);
      }

      else
      {

        v75 = MEMORY[0x277D84F90];
      }

      v111 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AB0);
      sub_24822D648(&qword_27EE91C90, &unk_27EE93AB0);
      v89 = sub_2483838F0();
      v91 = v90;

      v92 = sub_24814A378(v89, v91, v113);

      v93 = v104;
      *(v104 + 14) = v92;
      v94 = v105;
      _os_log_impl(&dword_248146000, v105, v103, "%s done trackedServices: [%s]", v93, 0x16u);
      v95 = v102;
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v95, -1, -1);
      MEMORY[0x24C1CD5F0](v93, -1, -1);
    }
  }
}

id sub_2482AD9A8(void *a1)
{
  swift_beginAccess();

  v3 = sub_2482A7CCC(v2);

  v4 = [a1 dataByReplacingEntry:v3 forKey:*MEMORY[0x277D6BD40]];

  return v4;
}

uint64_t sub_2482ADA48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_248381210();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id variable initialization expression of DBIconImageView.dimmingView()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CF90D8]) init];
  [v0 setHidden_];
  v1 = [v0 layer];

  [v1 setCornerCurve_];
  return v0;
}

id DBIconImageView.dimmingView.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard15DBIconImageView_dimmingView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DBIconImageView.dimmingView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBIconImageView_dimmingView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id variable initialization expression of DBIconImageView.crossfadeMaskView()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1 = [objc_opt_self() blackColor];
  [v0 setBackgroundColor_];

  [v0 setHidden_];
  return v0;
}

id DBIconImageView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *DBIconImageView.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC9DashBoard15DBIconImageView_dimmingView;
  v3 = [objc_allocWithZone(MEMORY[0x277CF90D8]) init];
  [v3 setHidden_];
  v4 = [v3 layer];

  [v4 setCornerCurve_];
  *&v0[v2] = v3;
  v5 = OBJC_IVAR____TtC9DashBoard15DBIconImageView_crossfadeMaskView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = [objc_opt_self() blackColor];
  [v6 setBackgroundColor_];

  [v6 setHidden_];
  *&v0[v5] = v6;
  v15.receiver = v0;
  v15.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = [v8 layer];
  [v9 setAllowsGroupBlending_];

  v10 = OBJC_IVAR____TtC9DashBoard15DBIconImageView_dimmingView;
  swift_beginAccess();
  v11 = [*&v8[v10] layer];
  [v8 iconImageInfo];
  v13 = v12;

  [v11 setCornerRadius_];
  [v8 addSubview_];

  return v8;
}

Swift::Void __swiftcall DBIconImageView.setupMaskForCrossfade()()
{
  v1 = *&v0[OBJC_IVAR____TtC9DashBoard15DBIconImageView_crossfadeMaskView];
  [v0 addSubview_];

  [v1 setHidden_];
}

Swift::Void __swiftcall DBIconImageView.cleanupMaskViewAfterCrossfade()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard15DBIconImageView_crossfadeMaskView);
  [v1 setHidden_];

  [v1 removeFromSuperview];
}

Swift::Void __swiftcall DBIconImageView.layoutSubviews()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC9DashBoard15DBIconImageView_dimmingView;
  swift_beginAccess();
  v2 = *&v0[v1];
  [v0 bounds];
  [v2 setFrame_];

  v3 = *&v0[OBJC_IVAR____TtC9DashBoard15DBIconImageView_crossfadeMaskView];
  [v0 bounds];
  [v3 setFrame_];
}

Swift::Void __swiftcall DBIconImageView.iconImageInfoDidChange()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_iconImageInfoDidChange);
  v1 = OBJC_IVAR____TtC9DashBoard15DBIconImageView_dimmingView;
  swift_beginAccess();
  v2 = [*&v0[v1] layer];
  [v0 iconImageInfo];
  [v2 setCornerRadius_];
}

Swift::Void __swiftcall DBIconImageView.prepareForReuse()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_prepareForReuse);
  v1 = OBJC_IVAR____TtC9DashBoard15DBIconImageView_dimmingView;
  swift_beginAccess();
  [*&v0[v1] setHidden_];
}

id DBIconImageView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DBIconImageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2482AE6FC()
{
  v1 = OBJC_IVAR____TtC9DashBoard15DBIconImageView_dimmingView;
  v2 = [objc_allocWithZone(MEMORY[0x277CF90D8]) init];
  [v2 setHidden_];
  v3 = [v2 layer];

  [v3 setCornerCurve_];
  *(v0 + v1) = v2;
  v4 = OBJC_IVAR____TtC9DashBoard15DBIconImageView_crossfadeMaskView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v6 = [objc_opt_self() blackColor];
  [v5 setBackgroundColor_];

  [v5 setHidden_];
  *(v0 + v4) = v5;
  sub_248384580();
  __break(1u);
}

uint64_t DBElevatedStatusBarCloseView.isPressed.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_isPressed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*DBElevatedStatusBarCloseView.isPressed.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2482AF90C;
}

uint64_t DBElevatedStatusBarCloseView.showFocusedState.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_showFocusedState;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2482AEA28(void *a1, uint64_t a2, char a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  *(a1 + v6) = a3;
  v7 = *((*MEMORY[0x277D85000] & *a1) + 0xA0);
  v8 = a1;
  v7();
}

uint64_t sub_2482AEAC4(char a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_beginAccess();
  *(v2 + v4) = a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0xA0))(v5);
}

uint64_t (*DBElevatedStatusBarCloseView.showFocusedState.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2482AEBA8;
}

uint64_t sub_2482AEBAC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0xA0))(result);
  }

  return result;
}

id DBElevatedStatusBarCloseView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *DBElevatedStatusBarCloseView.init()()
{
  v1 = v0;
  v0[OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_isPressed] = 0;
  v0[OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_showFocusedState] = 0;
  sub_24814FB28(0, &qword_27EE91D80);
  v41 = sub_248383F50();
  v40 = [objc_opt_self() configurationWithFont:v41 scale:1];
  v2 = sub_248383930();
  v39 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v40];

  v3 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  v4 = OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_backgroundView;
  *&v1[OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_backgroundView] = v3;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v1[v4] setClipsToBounds_];
  v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v1[OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_symbolView] = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v42.receiver = v1;
  v42.super_class = type metadata accessor for DBElevatedStatusBarCloseView();
  v6 = objc_msgSendSuper2(&v42, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_backgroundView;
  v8 = *&v6[OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_backgroundView];
  v9 = v6;
  [v9 addSubview_];
  v10 = OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_symbolView;
  [v9 addSubview_];
  v38 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24839F270;
  v12 = [*&v6[v7] centerXAnchor];
  v13 = [v9 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v11 + 32) = v14;
  v15 = [*&v6[v7] centerYAnchor];
  v16 = [v9 &selRef_fillColor];

  v17 = [v15 constraintEqualToAnchor_];
  *(v11 + 40) = v17;
  v18 = [*&v6[v7] widthAnchor];
  v19 = [v9 widthAnchor];

  v20 = [v18 constraintEqualToAnchor_];
  *(v11 + 48) = v20;
  v21 = [*&v6[v7] heightAnchor];
  v22 = [v9 heightAnchor];

  v23 = [v21 constraintEqualToAnchor_];
  *(v11 + 56) = v23;
  v24 = [*&v9[v10] centerXAnchor];
  v25 = [v9 centerXAnchor];

  v26 = [v24 constraintEqualToAnchor_];
  *(v11 + 64) = v26;
  v27 = [*&v9[v10] centerYAnchor];
  v28 = [v9 centerYAnchor];

  v29 = [v27 constraintEqualToAnchor_];
  *(v11 + 72) = v29;
  sub_24814FB28(0, &qword_27EE8FE90);
  v30 = sub_248383B00();

  [v38 activateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90A90);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_24839CCA0;
  v32 = sub_248382C50();
  v33 = MEMORY[0x277D74BF0];
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  v34 = sub_248383870();
  v35 = sub_24827CCC4();
  *(v31 + 48) = v34;
  *(v31 + 56) = v35;
  MEMORY[0x24C1CB580](v31, sel_updateAppearance);
  swift_unknownObjectRelease();

  (*((*MEMORY[0x277D85000] & *v9) + 0xA0))(v36);

  return v9;
}

void sub_2482AF23C()
{
  *(v0 + OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_isPressed) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_showFocusedState) = 0;
  sub_248384580();
  __break(1u);
}

Swift::Void __swiftcall DBElevatedStatusBarCloseView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBElevatedStatusBarCloseView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_backgroundView] layer];
  [v0 bounds];
  [v1 setCornerRadius_];
}

void sub_2482AF458()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x88))())
  {
    v3 = [v0 traitCollection];
    v4 = [v3 userInterfaceStyle];

    v5 = [v1 traitCollection];
    v6 = sub_248383E80();

    v7 = *(v1 + OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_backgroundView);
    v8 = objc_opt_self();
    v9 = &selRef_clearColor;
    if (v6 != 1)
    {
      v9 = &selRef__carSystemFocusColor;
    }

    v10 = [v8 *v9];
    [v7 setBackgroundColor_];

    if (v6 == 1)
    {
      if (v4 == 1)
      {
        v11 = 18;
      }

      else
      {
        v11 = 13;
      }

      v12 = [objc_opt_self() effectWithStyle_];
    }

    else
    {
      v12 = 0;
    }

    [v7 setEffect_];

    v16 = *(v1 + OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_symbolView);
    v17 = [v1 traitCollection];
    v18 = [v17 userInterfaceStyle];

    if (v18 == 2)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    [v16 setOverrideUserInterfaceStyle_];
  }

  else
  {
    v13 = *(v0 + OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_backgroundView);
    v14 = [objc_opt_self() clearColor];
    [v13 setBackgroundColor_];

    v15 = [objc_opt_self() effectWithStyle_];
    [v13 setEffect_];

    v16 = *(v1 + OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_symbolView);
    [v16 setOverrideUserInterfaceStyle_];
  }

  v20 = [objc_opt_self() labelColor];
  if ((*((*v2 & *v1) + 0x70))())
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  v22 = [v20 colorWithProminence_];

  [v16 setTintColor_];
}

id DBElevatedStatusBarCloseView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DBElevatedStatusBarCloseView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBElevatedStatusBarCloseView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2482AF910()
{
  v0 = sub_2482B1E58(&unk_285A53400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91DB8);
  result = swift_arrayDestroy();
  qword_27EE967A8 = v0;
  return result;
}

double sub_2482AF96C@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

__n128 sub_2482AF98C(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController_frameOverride;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__n128 sub_2482AFA50@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *a1;
  swift_beginAccess();
  v5 = *(v4 + 32);
  result = *v4;
  v7 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  return result;
}

__n128 sub_2482AFAA4(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController_safeAreaInsetsOverride;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t sub_2482AFB5C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = aBlock - v5;
  sub_2482B04BC(a1, aBlock - v5);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  sub_2482B052C(v6, v8 + v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2482B059C;
  *(v9 + 24) = v8;
  aBlock[4] = sub_24827E2B0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24827E2DC;
  aBlock[3] = &block_descriptor_10;
  v10 = _Block_copy(aBlock);
  v11 = v1;

  [v11 performSceneUpdateWithBlock:v10 completion:0];
  _Block_release(v10);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

void sub_2482AFD58(void *a1, void *a2, uint64_t a3)
{
  v65 = a3;
  v5 = sub_248381170();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = a1;
  v18 = [a2 environment];
  v64 = v17;
  v59 = v8;
  if (v18)
  {
    v19 = [v18 environmentConfiguration];
    swift_unknownObjectRelease();
    v20 = [v19 showsInstruments];

    v21 = v20 ^ 1;
  }

  else
  {
    v21 = 0;
  }

  v63 = v16;
  [v16 setDisplayLocation_];
  v61 = sub_248383DC0();
  v22 = *sub_24827BA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_24839F1A0;
  *(v23 + 56) = type metadata accessor for DBInstrumentClusterSceneViewController();
  *(v23 + 64) = sub_2482B0EB8();
  *(v23 + 32) = a2;
  v24 = v22;
  v25 = a2;
  v26 = [v25 application];
  *(v23 + 96) = sub_24814FB28(0, &qword_27EE91E40);
  *(v23 + 104) = sub_248151298(&qword_27EE92280, &qword_27EE91E40);
  *(v23 + 72) = v26;
  sub_2482B04BC(v65, v14);
  v62 = *(v6 + 48);
  v27 = v62(v14, 1, v5);
  v60 = v6;
  if (v27 == 1)
  {
    sub_2482959EC(v14);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = sub_2483810E0();
    v29 = v30;
    (*(v6 + 8))(v14, v5);
  }

  v31 = MEMORY[0x277D837D0];
  *(v23 + 136) = MEMORY[0x277D837D0];
  v32 = sub_2482970D8();
  *(v23 + 144) = v32;
  v33 = 7104878;
  if (v29)
  {
    v33 = v28;
  }

  v34 = 0xE300000000000000;
  if (v29)
  {
    v34 = v29;
  }

  *(v23 + 112) = v33;
  *(v23 + 120) = v34;
  v35 = v63;
  v36 = [v63 displayLocation];
  if (v36 > 1)
  {
    if (v36 == 3)
    {
      v38 = 0xD000000000000011;
      v39 = "Secondary Cluster";
    }

    else
    {
      if (v36 != 2)
      {
LABEL_19:
        v37 = 0xE700000000000000;
        v38 = 0x6E776F6E6B6E55;
        goto LABEL_23;
      }

      v38 = 0xD000000000000011;
      v39 = "Passenger Display";
    }

    v37 = (v39 - 32) | 0x8000000000000000;
    goto LABEL_23;
  }

  if (!v36)
  {
    v37 = 0x80000002483AEEF0;
    v38 = 0xD000000000000012;
    goto LABEL_23;
  }

  if (v36 != 1)
  {
    goto LABEL_19;
  }

  v37 = 0xEE00656C6F736E6FLL;
  v38 = 0x43207265746E6543;
LABEL_23:
  *(v23 + 176) = v31;
  *(v23 + 184) = v32;
  *(v23 + 152) = v38;
  *(v23 + 160) = v37;
  sub_248382A40();

  v40 = [v25 environment];
  if (v40)
  {
    v41 = [v40 environmentConfiguration];
    v42 = [v41 analytics];

    if (v42)
    {
      v43 = [v25 application];
      v44 = [v43 bundleIdentifier];

      if (!v44)
      {
        sub_248383960();
        v44 = sub_248383930();
      }

      [v42 clusterElementDidChangeVisibility:v44 foreground:1];
    }

    swift_unknownObjectRelease();
  }

  sub_2482B04BC(v65, v11);
  if (v62(v11, 1, v5) == 1)
  {
    sub_2482959EC(v11);
  }

  else
  {
    v46 = v59;
    v45 = v60;
    (*(v60 + 32))(v59, v11, v5);
    v47 = objc_opt_self();
    v48 = sub_2483810F0();
    [v47 applySettingsForClusterURL:v48 toSceneSettings:v35];

    (*(v45 + 8))(v46, v5);
  }

  v49 = v64;
  v50 = [v25 proxyApplication];
  if (v50)
  {

    objc_opt_self();
    v51 = swift_dynamicCastObjCClass();
    if (v51)
    {
      v52 = v51;
      v53 = v49;
      v54 = [v25 application];
      v55 = [v54 bundleIdentifier];

      if (!v55)
      {
        sub_248383960();
        v55 = sub_248383930();
      }

      [v52 setProxiedApplicationBundleIdentifier_];
    }
  }

  v56 = MEMORY[0x277D85000];
  v57 = (*((*MEMORY[0x277D85000] & *v25) + 0x68))(v66);
  if ((v67 & 1) == 0)
  {
    v57 = [v49 setFrame_];
  }

  (*((*v56 & *v25) + 0x80))(&v68, v57);
  if ((v69 & 1) == 0)
  {
    [v49 setSafeAreaInsetsPortrait_];
  }
}

uint64_t sub_2482B04BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2482B052C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2482B059C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0) - 8);
  sub_2482AFD58(a1, *(v1 + 16), v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));
  return 1;
}

uint64_t sub_2482B0614(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 3)
    {
      if (a1 == 2)
      {
        return 0xD000000000000011;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0xD000000000000011;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x43207265746E6543;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0xD000000000000012;
  }
}

CGFloat sub_2482B06C4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = [v4 environment];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 environmentConfiguration];
    v12 = [v11 supportsDisplayPlugin];

    if (v12)
    {
      sub_248383DC0();
      v13 = *sub_24827BA50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_24839CCA0;
      *(v14 + 56) = type metadata accessor for DBInstrumentClusterSceneViewController();
      *(v14 + 64) = sub_2482B0EB8();
      *(v14 + 32) = v4;
      v15 = v13;
      v16 = [v4 application];
      *(v14 + 96) = sub_24814FB28(0, &qword_27EE91E40);
      *(v14 + 104) = sub_248151298(&qword_27EE92280, &qword_27EE91E40);
      *(v14 + 72) = v16;
      sub_248382A40();

      v17 = [v10 environmentConfiguration];
      [v17 screenScale];
      v19 = v18;

      CGAffineTransformMakeScale(&v21, 1.0 / v19, 1.0 / v19);
      v22.origin.x = a1;
      v22.origin.y = a2;
      v22.size.width = a3;
      v22.size.height = a4;
      *&a1 = CGRectApplyAffineTransform(v22, &v21);
    }

    swift_unknownObjectRelease();
  }

  return a1;
}

double sub_2482B0908(double a1)
{
  v3 = [v1 environment];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 environmentConfiguration];
    v6 = [v5 supportsDisplayPlugin];

    if (v6)
    {
      sub_248383DC0();
      v7 = *sub_24827BA50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_24839CCA0;
      *(v8 + 56) = type metadata accessor for DBInstrumentClusterSceneViewController();
      *(v8 + 64) = sub_2482B0EB8();
      *(v8 + 32) = v1;
      v9 = v7;
      v10 = [v1 application];
      *(v8 + 96) = sub_24814FB28(0, &qword_27EE91E40);
      *(v8 + 104) = sub_248151298(&qword_27EE92280, &qword_27EE91E40);
      *(v8 + 72) = v10;
      sub_248382A40();

      v11 = [v4 environmentConfiguration];
      [v11 screenScale];
      v13 = v12;

      swift_unknownObjectRelease();
      return 1.0 / v13 * a1;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return a1;
}

uint64_t sub_2482B0B1C()
{
  sub_248383DC0();
  v1 = *sub_24827BA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24839CCA0;
  *(v2 + 56) = type metadata accessor for DBInstrumentClusterSceneViewController();
  *(v2 + 64) = sub_2482B0EB8();
  *(v2 + 32) = v0;
  v3 = v1;
  v4 = v0;
  v5 = [v4 application];
  *(v2 + 96) = sub_24814FB28(0, &qword_27EE91E40);
  *(v2 + 104) = sub_248151298(&qword_27EE92280, &qword_27EE91E40);
  *(v2 + 72) = v5;
  sub_248382A40();

  v6 = [v4 environment];
  if (v6)
  {
    v7 = [v6 environmentConfiguration];
    v8 = [v7 analytics];

    if (v8)
    {
      v9 = [v4 application];
      v10 = [v9 bundleIdentifier];

      if (!v10)
      {
        sub_248383960();
        v10 = sub_248383930();
      }

      [v8 clusterElementDidChangeVisibility:v10 foreground:0];
    }

    swift_unknownObjectRelease();
  }

  sub_24814FB28(0, &qword_27EE90E78);
  v11 = [swift_getObjCClassFromMetadata() _synchronizedDrawingFence];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v4;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2482B0F0C;
  *(v13 + 24) = v12;
  v18[4] = sub_24827EA40;
  v18[5] = v13;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_24827E2DC;
  v18[3] = &block_descriptor_16;
  v14 = _Block_copy(v18);
  v15 = v4;
  v16 = v11;

  [v15 performSceneUpdateWithBlock:v14 completion:0];

  _Block_release(v14);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2482B0EB8()
{
  result = qword_27EE91DA8;
  if (!qword_27EE91DA8)
  {
    type metadata accessor for DBInstrumentClusterSceneViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE91DA8);
  }

  return result;
}

uint64_t sub_2482B0F0C(void *a1, void *a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v7 = a1;
    [a2 setAnimationFence_];
    v8 = [v5 proxyApplication];
    if (v8)
    {

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = [v5 application];
        v12 = [v11 bundleIdentifier];

        if (!v12)
        {
          sub_248383960();
          v12 = sub_248383930();
        }

        [v10 setProxiedApplicationBundleIdentifier_];

        v7 = v12;
      }
    }
  }

  return 0;
}

uint64_t sub_2482B103C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_2482B1194;
  *(v2 + 24) = v1;
  v6[4] = sub_24827EA40;
  v6[5] = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24827E2DC;
  v6[3] = &block_descriptor_26;
  v3 = _Block_copy(v6);
  v4 = v0;

  [v4 performSceneUpdateWithBlock:v3 completion:0];
  _Block_release(v3);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}