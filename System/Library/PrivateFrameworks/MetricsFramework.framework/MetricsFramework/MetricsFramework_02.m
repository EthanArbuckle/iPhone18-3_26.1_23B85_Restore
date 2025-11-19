uint64_t sub_258E046C8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_258E05680(v8);
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
        sub_258E053CC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_258F0AD80();
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
            result = sub_258F0AD80();
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
      result = sub_258DE2334(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_258DE2334((v39 > 1), v40 + 1, 1, v8);
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
        sub_258E053CC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_258E05680(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_258E055F4(v44);
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
    if (v37 || (result = sub_258F0AD80(), (result & 1) == 0))
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

uint64_t sub_258E04CA4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v59 = type metadata accessor for AssetPenetrationData();
  v8 = *(*(v59 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v59, v9);
  v58 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v57 = &v52 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v52 - v17;
  result = MEMORY[0x28223BE20](v16, v19);
  v22 = (&v52 - v21);
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_73;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_74;
  }

  v26 = (a2 - a1) / v24;
  v61 = a4;
  v62 = a1;
  if (v26 >= v25 / v24)
  {
    v29 = v25 / v24 * v24;
    if (a4 < a2 || a2 + v29 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v29;
    if (v29 >= 1)
    {
      v39 = -v24;
      v40 = a4 + v29;
      v55 = a4;
      v56 = a1;
      do
      {
        v53 = v38;
        v41 = a2;
        v42 = a2 + v39;
        while (1)
        {
          if (v41 <= v56)
          {
            v62 = v41;
            v38 = v53;
            goto LABEL_70;
          }

          v43 = a3;
          v54 = v38;
          v44 = v40 + v39;
          v45 = v57;
          sub_258E02EF8(v40 + v39, v57);
          v46 = v42;
          v47 = v58;
          sub_258E02EF8(v42, v58);
          v48 = *(v45 + 56) ? 0.0 : *(v45 + 48);
          v49 = *(v47 + 48);
          v50 = *(v47 + 56) ? 0.0 : *(v47 + 48);
          v51 = v43 + v39;
          sub_258E02F5C(v47);
          sub_258E02F5C(v45);
          if (v48 <= v50)
          {
            break;
          }

          v38 = v40 + v39;
          a3 = v43 + v39;
          if (v43 < v40 || v51 >= v40)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v40 + v39;
            v42 = v46;
          }

          else
          {
            v42 = v46;
            if (v43 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
              v38 = v40 + v39;
            }
          }

          v40 = v38;
          if (v44 <= v55)
          {
            v62 = v41;
            goto LABEL_70;
          }
        }

        a3 = v43 + v39;
        if (v43 < v41 || v51 >= v41)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a2 = v46;
          if (v43 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v38 = v54;
      }

      while (v40 > v55);
    }

    v62 = a2;
LABEL_70:
    v60 = v38;
  }

  else
  {
    v27 = v24;
    v28 = v26 * v24;
    if (a4 < a1 || a1 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v28;
    v60 = a4 + v28;
    if (v28 >= 1 && a2 < a3)
    {
      v32 = v27;
      do
      {
        sub_258E02EF8(a2, v22);
        sub_258E02EF8(a4, v18);
        if (*(v22 + 56))
        {
          v33 = 0.0;
        }

        else
        {
          v33 = v22[6];
        }

        v34 = *(v18 + 6);
        if (v18[56])
        {
          v35 = 0.0;
        }

        else
        {
          v35 = *(v18 + 6);
        }

        sub_258E02F5C(v18);
        sub_258E02F5C(v22);
        if (v33 <= v35)
        {
          v37 = a2 + v32;
          if (a1 < a2 || a1 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v37;
        }

        else
        {
          v36 = a4 + v32;
          if (a1 < a4 || a1 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v61 = v36;
          a4 = v36;
        }

        a1 += v27;
        v62 = a1;
        if (a4 >= v30)
        {
          break;
        }

        v32 = v27;
      }

      while (a2 < a3);
    }
  }

  sub_258E05694(&v62, &v61, &v60);
  return 1;
}

uint64_t sub_258E05190(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
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

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v17 = v6 - 5;
    v5 -= 40;
    v18 = v12;
    do
    {
      v19 = (v5 + 40);
      v20 = *(v18 - 40);
      v18 -= 40;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          v23 = *v17;
          v24 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v23;
          *(v5 + 16) = v24;
        }

        if (v12 <= v4 || (v6 -= 5, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v19 != v12)
      {
        v21 = *v18;
        v22 = *(v18 + 16);
        *(v5 + 32) = *(v18 + 32);
        *v5 = v21;
        *(v5 + 16) = v22;
      }

      v5 -= 40;
      v12 = v18;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v25 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v26 = (v25 >> 4) + (v25 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v26])
  {
    memmove(v6, v4, 40 * v26);
  }

  return 1;
}

uint64_t sub_258E053CC(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_258F0AD80() & 1) != 0)
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
      if (!v21 && (sub_258F0AD80() & 1) != 0)
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

uint64_t sub_258E055F4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_258E05680(v3);
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

uint64_t sub_258E05694(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for AssetPenetrationData();
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

char *sub_258E05778(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988878, &unk_258F0D3B0);
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

uint64_t sub_258E0587C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_258F0AA30();

    if (v8)
    {

      sub_258F0A390();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_258F0AA20();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_258E05F4C(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_258E06180(v19 + 1);
    }

    sub_258E069D0(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  sub_258F0A390();
  v10 = *(v6 + 40);
  sub_258E08FDC(&qword_27F988CA0, MEMORY[0x277CBCDA8]);
  v11 = sub_258F0A440();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_258E06AB8(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_258E08FDC(&qword_27F988CA8, MEMORY[0x277CBCDA8]);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (sub_258F0A4B0())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_258E05B1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_258F0AE40();
  sub_258F0A5B0();
  v9 = sub_258F0AE90();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_258F0AD80() & 1) != 0)
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

    sub_258E06CA0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_258E05C6C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_258F09A70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_258E08FDC(&qword_27F988CC8, MEMORY[0x277CC95F0]);
  v37 = a2;
  v14 = sub_258F0A440();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_258E08FDC(&qword_27F988CD0, MEMORY[0x277CC95F0]);
      v24 = sub_258F0A4B0();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_258E06E20(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_258E05F4C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CB0, &qword_258F0D3D8);
    v2 = sub_258F0AAB0();
    v16 = v2;
    sub_258F0AA10();
    if (sub_258F0AA40())
    {
      sub_258F0A390();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_258E06180(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_258E08FDC(&qword_27F988CA0, MEMORY[0x277CBCDA8]);
        result = sub_258F0A440();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_258F0AA40());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_258E06180(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CB0, &qword_258F0D3D8);
  result = sub_258F0AAA0();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
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
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_258F0A390();
      sub_258E08FDC(&qword_27F988CA0, MEMORY[0x277CBCDA8]);
      result = sub_258F0A440();
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
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
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
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_258E06414(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C80, &qword_258F0D3C0);
  result = sub_258F0AAA0();
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
      sub_258F0AE40();
      sub_258F0A5B0();
      result = sub_258F0AE90();
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

uint64_t sub_258E06674(uint64_t a1)
{
  v2 = v1;
  v42 = sub_258F09A70();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CC0, &qword_258F0D3E8);
  result = sub_258F0AAA0();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_258E08FDC(&qword_27F988CC8, MEMORY[0x277CC95F0]);
      result = sub_258F0A440();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

unint64_t sub_258E069D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_258F0A390();
  sub_258E08FDC(&qword_27F988CA0, MEMORY[0x277CBCDA8]);
  sub_258F0A440();
  v5 = -1 << *(a2 + 32);
  result = sub_258F0AA00();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_258E06AB8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_258E06180(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_258E070C4();
      goto LABEL_12;
    }

    sub_258E075A8(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_258F0A390();
  sub_258E08FDC(&qword_27F988CA0, MEMORY[0x277CBCDA8]);
  result = sub_258F0A440();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_258E08FDC(&qword_27F988CA8, MEMORY[0x277CBCDA8]);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = sub_258F0A4B0();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_258F0ADB0();
  __break(1u);
  return result;
}

uint64_t sub_258E06CA0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_258E06414(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_258E07214();
      goto LABEL_16;
    }

    sub_258E07820(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_258F0AE40();
  sub_258F0A5B0();
  result = sub_258F0AE90();
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

      result = sub_258F0AD80();
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
  result = sub_258F0ADB0();
  __break(1u);
  return result;
}

uint64_t sub_258E06E20(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_258F09A70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_258E06674(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_258E07370();
      goto LABEL_12;
    }

    sub_258E07A58(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_258E08FDC(&qword_27F988CC8, MEMORY[0x277CC95F0]);
  v16 = sub_258F0A440();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_258E08FDC(&qword_27F988CD0, MEMORY[0x277CC95F0]);
      v24 = sub_258F0A4B0();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_258F0ADB0();
  __break(1u);
  return result;
}

void *sub_258E070C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CB0, &qword_258F0D3D8);
  v2 = *v0;
  v3 = sub_258F0AA90();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_258E07214()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C80, &qword_258F0D3C0);
  v2 = *v0;
  v3 = sub_258F0AA90();
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

void *sub_258E07370()
{
  v1 = v0;
  v2 = sub_258F09A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CC0, &qword_258F0D3E8);
  v8 = *v0;
  v9 = sub_258F0AA90();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v12 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

uint64_t sub_258E075A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CB0, &qword_258F0D3D8);
  result = sub_258F0AAA0();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_258F0A390();
      sub_258E08FDC(&qword_27F988CA0, MEMORY[0x277CBCDA8]);

      result = sub_258F0A440();
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

uint64_t sub_258E07820(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C80, &qword_258F0D3C0);
  result = sub_258F0AAA0();
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
      sub_258F0AE40();

      sub_258F0A5B0();
      result = sub_258F0AE90();
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

uint64_t sub_258E07A58(uint64_t a1)
{
  v2 = v1;
  v38 = sub_258F09A70();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CC0, &qword_258F0D3E8);
  v11 = sub_258F0AAA0();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_258E08FDC(&qword_27F988CC8, MEMORY[0x277CC95F0]);
      result = sub_258F0A440();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
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
    *v2 = v11;
  }

  return result;
}

void *sub_258E07D74(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_258E07F1C(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 40;
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = (v5 + 16 * v3);
  while (1)
  {
    if (v4 == v3)
    {
      return v6;
    }

    if (v3 >= v4)
    {
      break;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_21;
    }

    v9 = *v7;
    if (*(a2 + 56))
    {
      v10 = 0.0;
    }

    else
    {
      v10 = *(a2 + 48);
    }

    if ((*(a2 + 56) & 1) == 0 && (*(a2 + 48) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      goto LABEL_22;
    }

    if (v10 <= -1.0)
    {
      goto LABEL_23;
    }

    if (v10 >= 1.84467441e19)
    {
      goto LABEL_24;
    }

    ++v3;
    v7 += 2;
    if (v9 <= v10)
    {
      v14 = *(v7 - 3);
      result = swift_isUniquelyReferenced_nonNull_native();
      v15 = v5;
      if ((result & 1) == 0)
      {
        result = sub_258E14B88(0, *(v6 + 16) + 1, 1);
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_258E14B88((v11 > 1), v12 + 1, 1);
      }

      *(v6 + 16) = v12 + 1;
      v13 = v6 + 16 * v12;
      v5 = v15;
      *(v13 + 32) = v14;
      *(v13 + 40) = v9;
      v3 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_258E080A4(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CD8, &qword_258F0D3F0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v51 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v51 - v15;
  v67 = type metadata accessor for AssetPenetrationData();
  v17 = *(v67 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v67, v19);
  v59 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v58 = (&v51 - v23);
  v68[0] = a1;

  sub_258E02FCC(v68);
  v24 = v68[0];
  v68[0] = a2;

  sub_258E03074(v68);
  v25 = v68[0];
  v26 = v24[2];
  if (v26 >= v68[0][2])
  {
    v27 = v68[0][2];
  }

  else
  {
    v27 = v24[2];
  }

  v60 = sub_258DE230C(0, v27, 0, MEMORY[0x277D84F90]);
  v63 = v25[2];
  if (!v63)
  {
LABEL_30:

    return v60;
  }

  v28 = 0;
  v56 = v25 + 4;
  v57 = v26;
  v62 = v24[2];
  v29 = (v17 + 56);
  v52 = v26 - 1;
  v53 = (v17 + 48);
  v54 = v25;
  v55 = v16;
  v51 = (v17 + 56);
  while (1)
  {
    if (v28 >= v25[2])
    {
      goto LABEL_35;
    }

    v26 = *v29;
    if (!v62)
    {
      (v26)(v16, 1, 1, v67);
      goto LABEL_7;
    }

    v30 = &v56[5 * v28];
    v31 = *v30;
    v32 = *(v30 + 2);
    v61 = *(v30 + 1);
    v34 = *(v30 + 3);
    v33 = *(v30 + 4);
    (v26)(v13, 1, 1, v67);
    v65 = v32;
    v66 = v33;
    v64 = v34;
    if (v57)
    {
      break;
    }

LABEL_25:
    v16 = v55;
    sub_258E09024(v13, v55);
    if ((*v53)(v16, 1, v67) != 1)
    {
      v40 = v58;
      sub_258E09094(v16, v58);
      v41 = v40[4];
      v42 = v40[5];
      sub_258E090F8(v40[2], v40[3]);
      v44 = v64;
      v43 = v65;
      v40[2] = v61;
      v40[3] = v43;
      v45 = v66;
      v40[4] = v44;
      v40[5] = v45;
      sub_258E02EF8(v40, v59);
      v47 = v60[2];
      v46 = v60[3];
      v26 = (v47 + 1);
      v25 = v54;
      if (v47 >= v46 >> 1)
      {
        v60 = sub_258DE230C(v46 > 1, v47 + 1, 1, v60);
      }

      v48 = v59;
      v49 = v60;
      v60[2] = v26;
      sub_258E09094(v48, v49 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v47);
      sub_258E02F5C(v58);
      goto LABEL_8;
    }

    v25 = v54;
LABEL_7:
    sub_258DE2184(v16, &qword_27F988CD8, &qword_258F0D3F0);
LABEL_8:
    if (++v28 == v63)
    {
      goto LABEL_30;
    }
  }

  v35 = v24 + ((*(v17 + 80) + 32) & ~*(v17 + 80));

  v29 = v51;

  v36 = 0;
  v37 = v52;
  while (!__OFSUB__(v37, v36))
  {
    v38 = v36 + &v37[-v36] / 2;
    if (__OFADD__(v36, &v37[-v36] / 2))
    {
      goto LABEL_32;
    }

    if ((v38 & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

    if (v38 >= v24[2])
    {
      goto LABEL_34;
    }

    v39 = &v35[*(v17 + 72) * v38];
    if (*(v39 + 56))
    {
      if (v31 < 0.0)
      {
        goto LABEL_23;
      }
    }

    else if (*(v39 + 48) > v31)
    {
LABEL_23:
      v37 = (v38 - 1);
      goto LABEL_14;
    }

    sub_258E02EF8(v39, v9);
    sub_258DE2184(v13, &qword_27F988CD8, &qword_258F0D3F0);
    (v26)(v9, 0, 1, v67);
    sub_258E09024(v9, v13);
    v36 = v38 + 1;
LABEL_14:
    if (v37 < v36)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_258E085A0()
{
  result = qword_27F988BD0;
  if (!qword_27F988BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988BD0);
  }

  return result;
}

uint64_t sub_258E085F4(uint64_t a1)
{
  result = sub_258E08FDC(&qword_27F988BD8, type metadata accessor for AssetPenetrationCalculator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E0864C(uint64_t a1)
{
  result = sub_258E08FDC(&qword_27F988BE0, type metadata accessor for AssetPenetrationCalculator);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258E086A4()
{
  result = qword_27F988BE8;
  if (!qword_27F988BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988BE8);
  }

  return result;
}

void sub_258E08710()
{
  v0 = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_258DE3B74();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = sub_258F09B00();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_258F09A70();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of AssetPenetrationCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of AssetEventsBiomeClientProtocol.getGmsEvents(startTimeInterval:eventType:useCase:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v17 = *(a7 + 8);
  v22 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_258E08B24;
  v20.n128_f64[0] = a8;

  return v22(a1, a2, a3, a4, a5, a6, a7, v20);
}

uint64_t sub_258E08B24(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of AssetEventsBiomeClientProtocol.getUafEvents(startTimeInterval:useCase:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = *(a5 + 16);
  v18 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_258E09150;
  v16.n128_f64[0] = a6;

  return v18(a1, a2, a3, a4, a5, v16);
}

double sub_258E08D70(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_258E016FC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 40));
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_258E08DA0(void *a1)
{
  v3 = *(sub_258F0A370() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C68, &qword_258F0D398) - 8);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = v1 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80));

  return sub_258E01F40(a1, v1 + v4, v8, v9);
}

uint64_t sub_258E08EC8(void **a1)
{
  v3 = *(sub_258F0A370() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C90, &qword_258F0D3D0) - 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = v1 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80));

  return sub_258E00BA8(a1, v8, v1 + v4, v9, v10);
}

uint64_t sub_258E08FDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258E09024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CD8, &qword_258F0D3F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E09094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPenetrationData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E090F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_258E09164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258F0A370();
  v94 = *(v6 - 8);
  v7 = *(v94 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v97 = v9;
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_258F09A70();
  v11 = *(v110 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v110, v13);
  v109 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CD8, &qword_258F0D3F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v102 = &v93 - v18;
  v108 = type metadata accessor for AssetPenetrationData();
  v100 = *(v108 - 8);
  v19 = *(v100 + 64);
  v21 = MEMORY[0x28223BE20](v108, v20);
  v107 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v106 = &v93 - v24;
  v112 = a3;
  v25 = sub_258F0A350();
  v26 = sub_258F0A810();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = a1;
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = 5;
    _os_log_impl(&dword_258DD8000, v25, v26, "--- Start Biome SQL Row Iteration (Logging first %ld) ---", v28, 0xCu);
    v29 = v28;
    a1 = v27;
    MEMORY[0x259C9EF40](v29, -1, -1);
  }

  v31 = 0;
  if (sub_258F0A070())
  {
    v104 = (v94 + 16);
    v105 = (v11 + 16);
    v111 = MEMORY[0x277D84F90];
    v103 = (v100 + 48);
    *&v30 = 134217984;
    v93 = v30;
    *&v30 = 134218242;
    v95 = v30;
    v32 = v102;
    v96 = v6;
    v99 = a1;
    while (1)
    {
      v33 = __OFADD__(v31++, 1);
      if (v33)
      {
        break;
      }

      if (v31 <= 5)
      {
        v34 = sub_258F0A060();
        if (v34)
        {
          v35 = v34;
          if (*(v34 + 16))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B58, &unk_258F0D720);
            v36 = sub_258F0ABD0();
          }

          else
          {
            v36 = MEMORY[0x277D84F98];
          }

          v134 = v36;
          swift_bridgeObjectRetain_n();
          sub_258EA3354(v35, v35, &v128);
          swift_bridgeObjectRetain_n();
          while (1)
          {
            sub_258EA33C0(&v124);
            if (!*(&v125 + 1))
            {
              break;
            }

            v115 = v124;
            v116 = v125;
            v117 = v126;
            sub_258DEB8B8(&v127, v114);
            v41 = sub_258E2EA2C(&v115);
            v43 = v36[2];
            v44 = (v42 & 1) == 0;
            v33 = __OFADD__(v43, v44);
            v45 = v43 + v44;
            if (v33)
            {
              __break(1u);
LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

            v46 = v42;
            if (v36[3] < v45)
            {
              sub_258ED5164(v45, 1);
              v36 = v134;
              v41 = sub_258E2EA2C(&v115);
              if ((v46 & 1) != (v47 & 1))
              {
                goto LABEL_47;
              }
            }

            if (v46)
            {
              goto LABEL_45;
            }

            v36[(v41 >> 6) + 8] |= 1 << v41;
            v48 = v36[6] + 40 * v41;
            v49 = v115;
            v50 = v116;
            *(v48 + 32) = v117;
            *v48 = v49;
            *(v48 + 16) = v50;
            sub_258DEB8B8(v114, (v36[7] + 32 * v41));
            v51 = v36[2];
            v33 = __OFADD__(v51, 1);
            v52 = v51 + 1;
            if (v33)
            {
              goto LABEL_43;
            }

            v36[2] = v52;
          }

          v121 = v131;
          v122 = v132;
          v123 = v133;
          v118 = v128;
          v119 = v129;
          v120 = v130;
          sub_258DE2184(&v118, &qword_27F988D98, &qword_258F14070);
          swift_bridgeObjectRelease_n();

          v53 = sub_258F0A350();
          v54 = sub_258F0A810();

          v101 = v53;
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            *&v115 = v98;
            *v55 = v95;
            *(v55 + 4) = v31;
            *(v55 + 12) = 2080;
            v56 = a2;
            v57 = sub_258F0A420();
            v59 = v58;

            v60 = v57;
            a2 = v56;
            v61 = sub_258DE3018(v60, v59, &v115);
            v6 = v96;

            *(v55 + 14) = v61;
            v62 = v101;
            _os_log_impl(&dword_258DD8000, v101, v54, "Row %ld: %s", v55, 0x16u);
            v63 = v98;
            __swift_destroy_boxed_opaque_existential_1Tm(v98);
            MEMORY[0x259C9EF40](v63, -1, -1);
            MEMORY[0x259C9EF40](v55, -1, -1);
          }

          else
          {
          }

          v32 = v102;
        }

        else
        {
          v37 = sub_258F0A350();
          v38 = sub_258F0A810();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = v93;
            *(v39 + 4) = v31;
            _os_log_impl(&dword_258DD8000, v37, v38, "Row %ld: Failed to get row data for logging.", v39, 0xCu);
            v40 = v39;
            v32 = v102;
            MEMORY[0x259C9EF40](v40, -1, -1);
          }
        }
      }

      v64 = v109;
      (*v105)(v109, a2, v110);
      (*v104)(v10, v112, v6);

      sub_258E0A358(v65, v64, v10, v32);
      if ((*v103)(v32, 1, v108) == 1)
      {
        sub_258DE2184(v32, &qword_27F988CD8, &qword_258F0D3F0);
        v66 = sub_258F0A350();
        v67 = sub_258F0A800();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&dword_258DD8000, v66, v67, "Encountered row with assetSetPayload empty.", v68, 2u);
          v69 = v68;
          v32 = v102;
          MEMORY[0x259C9EF40](v69, -1, -1);
        }
      }

      else
      {
        v70 = v106;
        sub_258E09094(v32, v106);
        sub_258E02EF8(v70, v107);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_258DE230C(0, v111[2] + 1, 1, v111);
        }

        v72 = v111[2];
        v71 = v111[3];
        if (v72 >= v71 >> 1)
        {
          v111 = sub_258DE230C(v71 > 1, v72 + 1, 1, v111);
        }

        sub_258E02F5C(v106);
        v73 = v111;
        v111[2] = v72 + 1;
        sub_258E09094(v107, v73 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v72);
      }

      if ((sub_258F0A070() & 1) == 0)
      {
        goto LABEL_37;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    v36 = swift_allocError();
    swift_willThrow();
    v113 = v36;
    v92 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
    if (swift_dynamicCast())
    {
      *&v118 = 0;
      *(&v118 + 1) = 0xE000000000000000;
      sub_258F0AAE0();
      MEMORY[0x259C9DEB0](0xD00000000000001BLL, 0x8000000258F19CC0);
      sub_258F0AB70();
      MEMORY[0x259C9DEB0](39, 0xE100000000000000);
      sub_258F0AB90();
      __break(1u);
LABEL_47:
      sub_258F0ADC0();
      __break(1u);
    }

    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
    sub_258E0F590(&v115);
    v121 = v131;
    v122 = v132;
    v123 = v133;
    v118 = v128;
    v119 = v129;
    v120 = v130;
    sub_258DE2184(&v118, &qword_27F988D98, &qword_258F14070);

    swift_unexpectedError();
    __break(1u);

    __break(1u);
  }

  else
  {
    v111 = MEMORY[0x277D84F90];
LABEL_37:
    v74 = sub_258F0A350();
    v75 = sub_258F0A810();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 134217984;
      *(v76 + 4) = v31;
      _os_log_impl(&dword_258DD8000, v74, v75, "--- End Biome SQL Row Iteration (Total rows processed: %ld) ---", v76, 0xCu);
      MEMORY[0x259C9EF40](v76, -1, -1);
    }

    v77 = v10;

    *&v128 = v111;

    sub_258E0DAB0(&v128);

    KeyPath = swift_getKeyPath();
    v79 = v94;
    v80 = *(v94 + 16);
    v110 = v94 + 16;
    v111 = v80;
    v81 = v112;
    (v80)(v77, v112, v6);
    v82 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v83 = swift_allocObject();
    v109 = *(v79 + 32);
    (v109)(v83 + v82, v77, v6);
    sub_258E0B654(KeyPath, sub_258E0F42C, v83);

    v84 = swift_getKeyPath();
    (v111)(v77, v81, v6);
    v85 = swift_allocObject();
    (v109)(v85 + v82, v77, v6);
    sub_258E0BAC0(v84, sub_258E0F444);

    v86 = swift_getKeyPath();
    (v111)(v77, v81, v6);
    v87 = swift_allocObject();
    (v109)(v87 + v82, v77, v6);
    sub_258E0BAC0(v86, sub_258E0F4E4);

    v88 = sub_258F0A350();
    v89 = sub_258F0A810();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_258DD8000, v88, v89, "--- End Forward & Backward fill for device aggregation IDs. ---", v90, 2u);
      MEMORY[0x259C9EF40](v90, -1, -1);
    }

    return v128;
  }

  return result;
}

unint64_t sub_258E09EC8(char a1)
{
  result = 0x7465537465737361;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x69745F746E657665;
      break;
    case 3:
      result = 0x745F656369766564;
      break;
    case 4:
      result = 0x625F6D6574737973;
      break;
    case 5:
      result = 0x5F6D6172676F7270;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD00000000000002CLL;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x644964646FLL;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0xD000000000000029;
      break;
    case 12:
      result = 0xD00000000000002BLL;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_258E0A084(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_258E09EC8(*a1);
  v5 = v4;
  if (v3 == sub_258E09EC8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_258F0AD80();
  }

  return v8 & 1;
}

uint64_t sub_258E0A10C()
{
  v1 = *v0;
  sub_258F0AE40();
  sub_258E09EC8(v1);
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E0A170()
{
  sub_258E09EC8(*v0);
  sub_258F0A5B0();
}

uint64_t sub_258E0A1C4()
{
  v1 = *v0;
  sub_258F0AE40();
  sub_258E09EC8(v1);
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E0A224@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_258E0F3E0();
  *a2 = result;
  return result;
}

unint64_t sub_258E0A254@<X0>(unint64_t *a1@<X8>)
{
  result = sub_258E09EC8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_258E0A29C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_258E0F3E0();
  *a1 = result;
  return result;
}

uint64_t sub_258E0A2E0(uint64_t a1)
{
  v2 = sub_258E0ED2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E0A31C(uint64_t a1)
{
  v2 = sub_258E0ED2C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_258E0A358(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AssetPenetrationData();
  v168 = *(v8 - 8);
  v9 = *(v168 + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v138[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v138[-v16];
  *(v17 + 1) = 0u;
  *(v17 + 2) = 0u;
  *v17 = 0u;
  v18 = &v138[v15[15] - v16];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v138[v15[16] - v16];
  *v19 = 0;
  v19[8] = 1;
  *&v17[v15[17]] = 0;
  v20 = sub_258F0A060();
  if (v20)
  {
    v169 = v20;
    *&v171 = 0xD000000000000015;
    *(&v171 + 1) = 0x8000000258F189D0;
    sub_258F0AA80();
    if (*(v169 + 16) && (v21 = sub_258E2EA2C(v183), (v22 & 1) != 0))
    {
      sub_258DE4090(*(v169 + 56) + 32 * v21, &v171);
      sub_258E0F590(v183);
      v23 = swift_dynamicCast();
      if (v23)
      {
        v24 = *&v180[0];
      }

      else
      {
        v24 = 0;
      }

      if (v23)
      {
        v25 = *(&v180[0] + 1);
      }

      else
      {
        v25 = 0;
      }

      v159 = v25;
      v160 = v24;
    }

    else
    {
      sub_258E0F590(v183);
      v159 = 0;
      v160 = 0;
    }

    *&v171 = 0x69745F746E657665;
    *(&v171 + 1) = 0xEF706D617473656DLL;
    sub_258F0AA80();
    if (*(v169 + 16) && (v26 = sub_258E2EA2C(v183), (v27 & 1) != 0))
    {
      sub_258DE4090(*(v169 + 56) + 32 * v26, &v171);
      sub_258E0F590(v183);
      v28 = swift_dynamicCast();
      v29 = *&v180[0];
      if (!v28)
      {
        v29 = 0;
      }

      v158 = v29;
      v30 = v28 ^ 1;
    }

    else
    {
      sub_258E0F590(v183);
      v158 = 0;
      v30 = 1;
    }

    v157 = v30;
    strcpy(&v171, "device_type");
    HIDWORD(v171) = -352321536;
    sub_258F0AA80();
    if (*(v169 + 16) && (v31 = sub_258E2EA2C(v183), (v32 & 1) != 0))
    {
      sub_258DE4090(*(v169 + 56) + 32 * v31, &v171);
      sub_258E0F590(v183);
      v33 = swift_dynamicCast();
      if (v33)
      {
        v34 = *&v180[0];
      }

      else
      {
        v34 = 0;
      }

      if (v33)
      {
        v35 = *(&v180[0] + 1);
      }

      else
      {
        v35 = 0;
      }

      v155 = v35;
      v156 = v34;
    }

    else
    {
      sub_258E0F590(v183);
      v155 = 0;
      v156 = 0;
    }

    strcpy(&v171, "system_build");
    BYTE13(v171) = 0;
    HIWORD(v171) = -5120;
    sub_258F0AA80();
    if (*(v169 + 16) && (v36 = sub_258E2EA2C(v183), (v37 & 1) != 0))
    {
      sub_258DE4090(*(v169 + 56) + 32 * v36, &v171);
      sub_258E0F590(v183);
      v38 = swift_dynamicCast();
      if (v38)
      {
        v39 = *&v180[0];
      }

      else
      {
        v39 = 0;
      }

      if (v38)
      {
        v40 = *(&v180[0] + 1);
      }

      else
      {
        v40 = 0;
      }

      v153 = v40;
      v154 = v39;
    }

    else
    {
      sub_258E0F590(v183);
      v153 = 0;
      v154 = 0;
    }

    strcpy(&v171, "program_code");
    BYTE13(v171) = 0;
    HIWORD(v171) = -5120;
    sub_258F0AA80();
    if (*(v169 + 16) && (v41 = sub_258E2EA2C(v183), (v42 & 1) != 0))
    {
      sub_258DE4090(*(v169 + 56) + 32 * v41, &v171);
      sub_258E0F590(v183);
      v43 = swift_dynamicCast();
      if (v43)
      {
        v44 = *&v180[0];
      }

      else
      {
        v44 = 0;
      }

      if (v43)
      {
        v45 = *(&v180[0] + 1);
      }

      else
      {
        v45 = 0;
      }

      v151 = v45;
      v152 = v44;
    }

    else
    {
      sub_258E0F590(v183);
      v151 = 0;
      v152 = 0;
    }

    *&v171 = 0xD000000000000011;
    *(&v171 + 1) = 0x8000000258F18A30;
    sub_258F0AA80();
    if (*(v169 + 16) && (v46 = sub_258E2EA2C(v183), (v47 & 1) != 0))
    {
      sub_258DE4090(*(v169 + 56) + 32 * v46, &v171);
      sub_258E0F590(v183);
      v48 = swift_dynamicCast();
      if (v48)
      {
        v49 = *&v180[0];
      }

      else
      {
        v49 = 0;
      }

      if (v48)
      {
        v50 = *(&v180[0] + 1);
      }

      else
      {
        v50 = 0;
      }

      v149 = v50;
      v150 = v49;
    }

    else
    {
      sub_258E0F590(v183);
      v149 = 0;
      v150 = 0;
    }

    *&v171 = 0xD000000000000013;
    *(&v171 + 1) = 0x8000000258F18A80;
    sub_258F0AA80();
    if (*(v169 + 16) && (v51 = sub_258E2EA2C(v183), (v52 & 1) != 0))
    {
      sub_258DE4090(*(v169 + 56) + 32 * v51, &v171);
      sub_258E0F590(v183);
      v53 = swift_dynamicCast();
      if (v53)
      {
        v54 = *&v180[0];
      }

      else
      {
        v54 = 0;
      }

      if (v53)
      {
        v55 = *(&v180[0] + 1);
      }

      else
      {
        v55 = 0;
      }

      v147 = v55;
      v148 = v54;
    }

    else
    {
      sub_258E0F590(v183);
      v147 = 0;
      v148 = 0;
    }

    *&v171 = 0xD000000000000019;
    *(&v171 + 1) = 0x8000000258F18AA0;
    sub_258F0AA80();
    if (*(v169 + 16) && (v56 = sub_258E2EA2C(v183), (v57 & 1) != 0))
    {
      sub_258DE4090(*(v169 + 56) + 32 * v56, &v171);
      sub_258E0F590(v183);
      v58 = swift_dynamicCast();
      if (v58)
      {
        v59 = *&v180[0];
      }

      else
      {
        v59 = 0;
      }

      if (v58)
      {
        v60 = *(&v180[0] + 1);
      }

      else
      {
        v60 = 0;
      }

      v145 = v60;
      v146 = v59;
    }

    else
    {
      sub_258E0F590(v183);
      v145 = 0;
      v146 = 0;
    }

    *&v171 = 0xD00000000000002CLL;
    *(&v171 + 1) = 0x8000000258F18A50;
    sub_258F0AA80();
    if (*(v169 + 16) && (v61 = sub_258E2EA2C(v183), (v62 & 1) != 0))
    {
      sub_258DE4090(*(v169 + 56) + 32 * v61, &v171);
      sub_258E0F590(v183);
      v63 = swift_dynamicCast();
      v64 = *&v180[0];
      if (!v63)
      {
        v64 = 0;
      }

      v144 = v64;
      v65 = v63 ^ 1;
    }

    else
    {
      sub_258E0F590(v183);
      v144 = 0;
      v65 = 1;
    }

    v143 = v65;
    *&v171 = 0xD000000000000029;
    *(&v171 + 1) = 0x8000000258F18AC0;
    sub_258F0AA80();
    if (*(v169 + 16) && (v66 = sub_258E2EA2C(v183), (v67 & 1) != 0))
    {
      sub_258DE4090(*(v169 + 56) + 32 * v66, &v171);
      sub_258E0F590(v183);
      v68 = swift_dynamicCast();
      v69 = *&v180[0];
      if (!v68)
      {
        v69 = 0;
      }

      v142 = v69;
      v70 = v68 ^ 1;
    }

    else
    {
      sub_258E0F590(v183);
      v142 = 0;
      v70 = 1;
    }

    v141 = v70;
    *&v171 = 0xD00000000000002BLL;
    *(&v171 + 1) = 0x8000000258F18AF0;
    sub_258F0AA80();
    v71 = *(v169 + 16);
    v166 = a4;
    v167 = v8;
    v162 = v13;
    if (v71 && (v72 = sub_258E2EA2C(v183), (v73 & 1) != 0))
    {
      sub_258DE4090(*(v169 + 56) + 32 * v72, &v171);
      sub_258E0F590(v183);
      v74 = swift_dynamicCast();
      v75 = *&v180[0];
      if (!v74)
      {
        v75 = 0;
      }

      v140 = v75;
      v76 = v74 ^ 1;
    }

    else
    {
      sub_258E0F590(v183);
      v140 = 0;
      v76 = 1;
    }

    v139 = v76;
    v161 = a1;
    v163 = a3;
    v164 = a2;
    v77 = v169;
    v78 = *(v169 + 16);
    v185 = MEMORY[0x277D84F90];
    swift_bridgeObjectRetain_n();
    sub_258E14BA8(0, v78, 0);
    v79 = v185;
    sub_258EA3354(v77, v77, v183);
    v165 = v17;
    if (v78)
    {

      while (1)
      {
        sub_258EA33C0(&v171);
        if (!*(&v172 + 1))
        {
          break;
        }

        sub_258DE4090(v173 + 8, v180);
        if (swift_dynamicCast())
        {

          *&v180[0] = 0;
          *(&v180[0] + 1) = 0xE000000000000000;
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
          sub_258F0AB70();
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
        }

        else
        {
          *&v180[0] = 0;
          *(&v180[0] + 1) = 0xE000000000000000;
          sub_258F0AB70();
        }

        v80 = v180[0];
        *&v180[0] = 34;
        *(&v180[0] + 1) = 0xE100000000000000;
        v81 = sub_258F0AA50();
        MEMORY[0x259C9DEB0](v81);

        MEMORY[0x259C9DEB0](2112034, 0xE300000000000000);
        MEMORY[0x259C9DEB0](v80, *(&v80 + 1));

        v82 = v180[0];
        sub_258DE2184(&v171, &qword_27F988DA0, &unk_258F0FFA0);
        v185 = v79;
        v84 = *(v79 + 16);
        v83 = *(v79 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_258E14BA8((v83 > 1), v84 + 1, 1);
          v79 = v185;
        }

        *(v79 + 16) = v84 + 1;
        *(v79 + 16 * v84 + 32) = v82;
        if (!--v78)
        {
          goto LABEL_112;
        }
      }

      __break(1u);
    }

    else
    {

LABEL_112:
      sub_258EA33C0(&v175);
      while (*(&v176 + 1))
      {
        v181[0] = v177;
        v181[1] = v178;
        v182 = v179;
        v180[0] = v175;
        v180[1] = v176;
        sub_258DE4090(v181 + 8, &v171);
        if (swift_dynamicCast())
        {

          *&v171 = 0;
          *(&v171 + 1) = 0xE000000000000000;
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
          sub_258F0AB70();
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
        }

        else
        {
          *&v171 = 0;
          *(&v171 + 1) = 0xE000000000000000;
          sub_258F0AB70();
        }

        v93 = v171;
        *&v171 = 34;
        *(&v171 + 1) = 0xE100000000000000;
        v94 = sub_258F0AA50();
        MEMORY[0x259C9DEB0](v94);

        MEMORY[0x259C9DEB0](2112034, 0xE300000000000000);
        MEMORY[0x259C9DEB0](v93, *(&v93 + 1));

        v95 = v171;
        sub_258DE2184(v180, &qword_27F988DA0, &unk_258F0FFA0);
        v185 = v79;
        v97 = *(v79 + 16);
        v96 = *(v79 + 24);
        if (v97 >= v96 >> 1)
        {
          sub_258E14BA8((v96 > 1), v97 + 1, 1);
          v79 = v185;
        }

        *(v79 + 16) = v97 + 1;
        *(v79 + 16 * v97 + 32) = v95;
        sub_258EA33C0(&v175);
      }

      swift_bridgeObjectRelease_n();
      v173[0] = v183[2];
      v173[1] = v183[3];
      v173[2] = v183[4];
      v174 = v184;
      v171 = v183[0];
      v172 = v183[1];
      sub_258DE2184(&v171, &qword_27F988D98, &qword_258F14070);
      sub_258DE2184(&v175, &qword_27F988DA8, &unk_258F0D740);
      v170 = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
      sub_258E0F5E4(&qword_27F988DB8, &qword_27F988DB0, &unk_258F13940);
      v98 = sub_258F0A490();
      v100 = v99;

      v101 = v163;
      v102 = sub_258F0A350();
      v103 = sub_258F0A840();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v170 = v105;
        *v104 = 136315138;
        v106 = sub_258DE3018(v98, v100, &v170);

        *(v104 + 4) = v106;
        _os_log_impl(&dword_258DD8000, v102, v103, "Asset Set Status query result yielded: \n{%s}", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v105);
        MEMORY[0x259C9EF40](v105, -1, -1);
        MEMORY[0x259C9EF40](v104, -1, -1);
      }

      else
      {
      }

      v107 = sub_258F0A370();
      (*(*(v107 - 8) + 8))(v101, v107);
      v109 = v166;
      v108 = v167;
      v111 = v164;
      v110 = v165;
      v112 = v159;
      v113 = v158;
      v114 = v157;
      v116 = v155;
      v115 = v156;
      v118 = v153;
      v117 = v154;
      v120 = v151;
      v119 = v152;
      v122 = v149;
      v121 = v150;
      v124 = v147;
      v123 = v148;
      v126 = v145;
      v125 = v146;
      v127 = v144;
      v128 = v143;
      v129 = v142;
      v130 = v162;
      *v162 = v160;
      *(v130 + 8) = v112;
      *(v130 + 16) = 0u;
      *(v130 + 32) = 0u;
      *(v130 + 48) = v113;
      *(v130 + 56) = v114;
      *(v130 + 64) = v115;
      *(v130 + 72) = v116;
      *(v130 + 80) = v117;
      *(v130 + 88) = v118;
      *(v130 + 96) = v119;
      *(v130 + 104) = v120;
      *(v130 + 112) = v121;
      *(v130 + 120) = v122;
      *(v130 + 128) = v123;
      *(v130 + 136) = v124;
      *(v130 + 144) = v127;
      *(v130 + 152) = v128;
      v131 = v108[13];
      v132 = sub_258F09A70();
      (*(*(v132 - 8) + 32))(v130 + v131, v111, v132);
      v133 = (v130 + v108[14]);
      *v133 = v125;
      v133[1] = v126;
      v134 = v130 + v108[15];
      *v134 = v129;
      *(v134 + 8) = v141;
      v135 = v130 + v108[16];
      *v135 = v140;
      *(v135 + 8) = v139;
      *(v130 + v108[17]) = 0;
      v136 = v110[4];
      v137 = v110[5];
      sub_258E090F8(v110[2], v110[3]);
      sub_258E09094(v130, v110);
      sub_258E02EF8(v110, v109);
      (*(v168 + 56))(v109, 0, 1, v108);
      sub_258E02F5C(v110);
    }
  }

  else
  {
    v85 = sub_258F0A350();
    v86 = sub_258F0A840();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_258DD8000, v85, v86, "failed to get row", v87, 2u);
      MEMORY[0x259C9EF40](v87, -1, -1);
    }

    v88 = sub_258F0A370();
    (*(*(v88 - 8) + 8))(a3, v88);
    v89 = sub_258F09A70();
    (*(*(v89 - 8) + 8))(a2, v89);
    v90 = *(v17 + 4);
    v91 = *(v17 + 5);
    sub_258E090F8(*(v17 + 2), *(v17 + 3));
    v92 = *(v168 + 56);

    v92(a4, 1, 1, v8);
  }
}

void sub_258E0B4B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPenetrationData();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258E02EF8(a2, v8);
  v9 = sub_258F0A350();
  v10 = sub_258F0A800();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 134218242;
    *(v11 + 4) = a1;
    *(v11 + 12) = 2080;
    if (v8[1])
    {
      v13 = *v8;
      v14 = v8[1];
    }

    else
    {
      v14 = 0xE300000000000000;
      v13 = 7104878;
    }

    sub_258E02F5C(v8);
    v15 = sub_258DE3018(v13, v14, &v17);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_258DD8000, v9, v10, "Filled value at row %ld: %s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x259C9EF40](v12, -1, -1);
    MEMORY[0x259C9EF40](v11, -1, -1);
  }

  else
  {

    sub_258E02F5C(v8);
  }
}

uint64_t sub_258E0B654(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v46[2] = a3;
  v49 = a2;
  v55 = a1;
  v4 = type metadata accessor for AssetPenetrationData();
  v51 = *(v4 - 8);
  v5 = *(v51 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v47 = v46 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v52 = v46 - v14;
  v48 = v3;
  v15 = *v3;
  v16 = *(*v3 + 16);
  if (v16)
  {
    v17 = *v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      do
      {
        if (v18 >= v15[2])
        {
          goto LABEL_36;
        }

        v54 = (*(v51 + 80) + 32) & ~*(v51 + 80);
        v53 = *(v51 + 72);
        v21 = v15 + v54 + v53 * v18;
        sub_258E02EF8(v21, v9);
        v22 = swift_readAtKeyPath();
        v24 = *v23;
        v25 = v23[1];

        v22(&v56, 0);
        sub_258E02F5C(v9);
        if (v25)
        {

          v19 = v24;
          v20 = v25;
        }

        else if (v20)
        {
          v56 = v19;
          v57 = v20;
          v26 = v15[2];
          swift_bridgeObjectRetain_n();
          if (v18 >= v26)
          {
            goto LABEL_37;
          }

          swift_setAtWritableKeyPath();
          if (v49)
          {
            if (v18 >= v15[2])
            {
              goto LABEL_38;
            }

            v27 = v21;
            v28 = v47;
            sub_258E02EF8(v27, v47);
            v49(v18, v28);

            sub_258E02F5C(v28);
          }

          else
          {
          }
        }

        ++v18;
      }

      while (v16 != v18);
      v46[1] = v20;
      *v48 = v15;
      v29 = v15[2];
      if (!v29)
      {
        break;
      }

      v50 = 0;
      v51 = v29;
      v16 = 0;
      v30 = v29 - 1;
      while (1)
      {
        v31 = sub_258E0ED04(&v56, v30);
        v33 = *v32;
        (v31)(&v56, 0);
        if ((v33 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (v33 >= v15[2])
        {
          goto LABEL_32;
        }

        v34 = v15;
        v35 = v53 * v33;
        v36 = v15 + v54 + v53 * v33;
        v37 = v52;
        sub_258E02EF8(v36, v52);
        v38 = swift_readAtKeyPath();
        v40 = *v39;
        v9 = v39[1];

        v38(&v56, 0);
        sub_258E02F5C(v37);
        if (v9)
        {

          v50 = v40;
          v16 = v9;
LABEL_17:
          v15 = v34;
          goto LABEL_18;
        }

        if (!v16)
        {
          goto LABEL_17;
        }

        v56 = v50;
        v57 = v16;
        swift_bridgeObjectRetain_n();
        v15 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_258E02FB8(v34);
        }

        if (v33 >= v15[2])
        {
          break;
        }

        v41 = v15 + v54;
        swift_setAtWritableKeyPath();
        v42 = v49;
        *v48 = v15;
        if (v42)
        {
          if (v33 >= v15[2])
          {
            goto LABEL_35;
          }

          v43 = &v41[v35];
          v44 = v47;
          sub_258E02EF8(v43, v47);
          v49(v33, v44);

          sub_258E02F5C(v44);
        }

        else
        {
        }

LABEL_18:
        if (--v30 == -1)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v15 = sub_258E02FB8(v15);
    }
  }

LABEL_33:
}

uint64_t sub_258E0BAC0(uint64_t a1, void (*a2)(unint64_t, uint64_t))
{
  v44 = a2;
  v48 = a1;
  v3 = type metadata accessor for AssetPenetrationData();
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v42 = &v41 - v11;
  result = MEMORY[0x28223BE20](v10, v12);
  v15 = &v41 - v14;
  v43 = v2;
  v16 = *v2;
  v41 = *(*v2 + 16);
  if (v41)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_41:
      v16 = sub_258E02FB8(v16);
    }

    v17 = 0;
    v18 = 0;
    v19 = 1;
    do
    {
      if (v17 >= v16[2])
      {
        goto LABEL_38;
      }

      v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v46 = *(v45 + 72);
      v20 = v16 + v47 + v46 * v17;
      sub_258E02EF8(v20, v8);
      v21 = swift_readAtKeyPath();
      v23 = *v22;
      v24 = *(v22 + 8);
      v21(&v49, 0);
      result = sub_258E02F5C(v8);
      if (v24)
      {
        v25 = v18;
      }

      else
      {
        v25 = v23;
      }

      if (v19 & 1 | ((v24 & 1) == 0))
      {
        v19 &= v24;
        v18 = v25;
      }

      else
      {
        v49 = v18;
        v50 = 0;
        if (v17 >= v16[2])
        {
          goto LABEL_39;
        }

        result = swift_setAtWritableKeyPath();
        if (v44)
        {
          if (v17 >= v16[2])
          {
            goto LABEL_40;
          }

          v26 = v42;
          sub_258E02EF8(v20, v42);
          v44(v17, v26);
          result = sub_258E02F5C(v26);
        }

        v19 = 0;
      }

      ++v17;
    }

    while (v41 != v17);
    *v43 = v16;
    v45 = v16[2];
    if (v45)
    {
      v27 = 0;
      v8 = (v45 - 1);
      v28 = 1;
      while (1)
      {
        v29 = sub_258E0ED04(&v49, v8);
        v31 = *v30;
        (v29)(&v49, 0);
        if ((v31 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v31 >= v16[2])
        {
          goto LABEL_35;
        }

        v32 = v46 * v31;
        sub_258E02EF8(v16 + v47 + v46 * v31, v15);
        v33 = swift_readAtKeyPath();
        v35 = *v34;
        v36 = *(v34 + 8);
        v33(&v49, 0);
        result = sub_258E02F5C(v15);
        if (v36)
        {
          v37 = v27;
        }

        else
        {
          v37 = v35;
        }

        if (v28 & 1 | ((v36 & 1) == 0))
        {
          v28 &= v36;
          v27 = v37;
        }

        else
        {
          v49 = v27;
          v50 = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_258E02FB8(v16);
          }

          if (v31 >= v16[2])
          {
            goto LABEL_36;
          }

          v38 = v16 + v47;
          result = swift_setAtWritableKeyPath();
          v39 = v44;
          *v43 = v16;
          if (v39)
          {
            if (v31 >= v16[2])
            {
              goto LABEL_37;
            }

            v40 = v42;
            sub_258E02EF8(&v38[v32], v42);
            v44(v31, v40);
            result = sub_258E02F5C(v40);
          }

          v28 = 0;
        }

        if (--v8 == -1)
        {
          return result;
        }
      }

      __break(1u);
LABEL_35:
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
      goto LABEL_41;
    }
  }

  return result;
}

uint64_t Array.fill<A>(_:logger:)(void *a1, void (*a2)(unint64_t, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v120 = a3;
  v125 = a2;
  v147 = a1;
  v7 = *(*(*(*(*a1 + *MEMORY[0x277D84308] + 8) + 16) - 8) + 64);
  v8 = MEMORY[0x28223BE20](a1, a2);
  v124 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v113 - v12;
  v14 = *(a4 + 16);
  v127 = *(v14 - 8);
  v15 = *(v127 + 64);
  v17 = MEMORY[0x28223BE20](v11, v16);
  v139 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v119 = &v113 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v143 = &v113 - v24;
  v128 = v25;
  v148 = *(v25 - 8);
  v26 = *(v148 + 64);
  v28 = MEMORY[0x28223BE20](v23, v27);
  v123 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v129 = &v113 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v130 = &v113 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v140 = &v113 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v121 = &v113 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v45 = (&v113 - v44);
  v47 = MEMORY[0x28223BE20](v43, v46);
  v138 = &v113 - v48;
  MEMORY[0x28223BE20](v47, v49);
  v114 = v50;
  v51 = *(v50 + 56);
  v118 = &v113 - v52;
  v141 = v53;
  v133 = v50 + 56;
  v132 = v51;
  v51();
  *&v150 = *v4;
  WitnessTable = swift_getWitnessTable();
  v126 = a4;
  v113 = WitnessTable;
  result = sub_258F0A7E0();
  v56 = v152;
  v142 = v4;
  v146 = v14;
  if (v152 != v153)
  {
    if (v153 < v152)
    {
      __break(1u);
    }

    else if (v152 < v153)
    {
      v88 = (v148 + 16);
      v145 = (v127 + 8);
      v137 = (v114 + 48);
      v135 = (v148 + 8);
      v134 = (v114 + 32);
      v116 = (v114 + 16);
      v115 = (v114 + 8);
      v131 = v45;
      v122 = (v148 + 16);
      v136 = v153;
      v117 = v13;
      v89 = v141;
      do
      {
        v92 = *v5;
        v93 = v143;
        sub_258F0A720();
        v94 = swift_readAtKeyPath();
        v95 = *v88;
        v96 = v138;
        v97 = v128;
        (*v88)(v138);
        v94(&v152, 0);
        v144 = *v145;
        v144(v93, v14);
        v98 = *v137;
        v99 = (*v137)(v96, 1, v89);
        v100 = *v135;
        if (v99 == 1)
        {
          v100(v96, v97);
          v101 = v131;
          (v95)(v131, v118, v97);
          if (v98(v101, 1, v89) == 1)
          {
            v100(v101, v97);
            v5 = v142;
            v91 = v136;
          }

          else
          {
            v102 = v117;
            (*v134)(v117, v101, v89);
            v103 = v121;
            (*v116)(v121, v102, v89);
            (v132)(v103, 0, 1, v89);
            v5 = v142;
            sub_258F0A6E0();
            v104 = v146;
            sub_258E0DA5C(v56, *v5);
            _swift_isClassOrObjCExistentialType();
            v105 = *(v127 + 80);
            v106 = *(v127 + 72);
            swift_setAtWritableKeyPath();
            v107 = v125;
            v91 = v136;
            if (v125)
            {
              v108 = *v5;
              v109 = v119;
              sub_258F0A720();
              v107(v56, v109);
              v110 = v109;
              v5 = v142;
              v144(v110, v104);
            }

            (*v115)(v102, v89);
          }

          v88 = v122;
        }

        else
        {
          v90 = v118;
          v100(v118, v97);
          (*v134)(v90, v96, v89);
          (v132)(v90, 0, 1, v89);
          v5 = v142;
          v91 = v136;
        }

        ++v56;
        v14 = v146;
      }

      while (v91 != v56);
      goto LABEL_2;
    }

    __break(1u);
    return result;
  }

LABEL_2:
  (v132)(v140, 1, 1, v141);
  v151 = *v5;
  sub_258F0A7E0();
  v149 = v150;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CE0, &qword_258F0D400);
  v58 = sub_258E0D97C();
  MEMORY[0x259C9DD40](&v152, v57, v58);
  v59 = v152;
  if (v153 == v152)
  {
    v111 = *(v148 + 8);
    v62 = v128;
  }

  else
  {
    v60 = (v148 + 16);
    v144 = (v127 + 8);
    v135 = (v114 + 48);
    v131 = (v114 + 32);
    v122 = (v114 + 16);
    v121 = (v114 + 8);
    v61 = v153;
    v62 = v128;
    v63 = v130;
    v136 = (v148 + 16);
    v137 = v153;
    v138 = v152;
    v148 += 8;
    while (v59 < v61)
    {
      v65 = sub_258E0ED04(&v152, --v61);
      v67 = *v66;
      (v65)(&v152, 0);
      v68 = *v5;
      v69 = v139;
      v145 = v67;
      v70 = v146;
      sub_258F0A720();
      v71 = swift_readAtKeyPath();
      v72 = *v60;
      (*v60)(v63);
      v71(&v152, 0);
      v143 = *v144;
      (v143)(v69, v70);
      v73 = *v135;
      v74 = v141;
      v75 = (*v135)(v63, 1, v141);
      v76 = *v148;
      v134 = *v148;
      if (v75 == 1)
      {
        v76(v63, v62);
        v77 = v129;
        (v72)(v129, v140, v62);
        if ((v73)(v77, 1, v74) == 1)
        {
          v76(v77, v62);
          v5 = v142;
        }

        else
        {
          v78 = v124;
          (*v131)(v124, v77, v74);
          v79 = v123;
          (*v122)(v123, v78, v74);
          (v132)(v79, 0, 1, v74);
          v80 = v74;
          v5 = v142;
          sub_258F0A6E0();
          v81 = v145;
          v82 = v146;
          sub_258E0DA5C(v145, *v5);
          _swift_isClassOrObjCExistentialType();
          v83 = *(v127 + 80);
          v84 = *(v127 + 72);
          swift_setAtWritableKeyPath();
          v85 = v125;
          if (v125)
          {
            v86 = *v5;
            v87 = v119;
            sub_258F0A720();
            v85(v81, v87);
            (v143)(v87, v82);
          }

          (*v121)(v78, v80);
          v62 = v128;
        }

        v63 = v130;
      }

      else
      {
        v64 = v140;
        v76(v140, v62);
        (*v131)(v64, v63, v74);
        (v132)(v64, 0, 1, v74);
        v5 = v142;
      }

      v59 = v138;
      v60 = v136;
      if (v138 == v61)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_27:
    v111 = v134;
  }

  v112 = v111;
  v111(v140, v62);
  return v112(v118, v62);
}

void sub_258E0CB64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPenetrationData();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258E02EF8(a2, v8);
  v9 = sub_258F0A350();
  v10 = sub_258F0A800();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = a1;
    *(v11 + 12) = 2048;
    v12 = &v8[*(v4 + 60)];
    if (v12[8])
    {
      v13 = 0;
    }

    else
    {
      v13 = *v12;
    }

    sub_258E02F5C(v8);
    *(v11 + 14) = v13;
    _os_log_impl(&dword_258DD8000, v9, v10, "Filled value at row %ld: %llu", v11, 0x16u);
    MEMORY[0x259C9EF40](v11, -1, -1);
  }

  else
  {
    sub_258E02F5C(v8);
  }
}

void sub_258E0CCA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPenetrationData();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258E02EF8(a2, v8);
  v9 = sub_258F0A350();
  v10 = sub_258F0A800();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = a1;
    *(v11 + 12) = 2048;
    v12 = &v8[*(v4 + 64)];
    if (v12[8])
    {
      v13 = 0;
    }

    else
    {
      v13 = *v12;
    }

    sub_258E02F5C(v8);
    *(v11 + 14) = v13;
    _os_log_impl(&dword_258DD8000, v9, v10, "Filled value at row %ld: %llu", v11, 0x16u);
    MEMORY[0x259C9EF40](v11, -1, -1);
  }

  else
  {
    sub_258E02F5C(v8);
  }
}

uint64_t AssetPenetrationData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CF8, &qword_258F0D408);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v43[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E0ED2C();
  sub_258F0AEE0();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v44) = 0;
  sub_258F0ACA0();
  if (!v2)
  {
    v14 = v3[3];
    v15 = v3[4];
    v16 = v3[5];
    v44 = v3[2];
    v45 = v14;
    v46 = v15;
    v47 = v16;
    v43[15] = 1;
    sub_258E0ED80(v44, v14);
    sub_258E0EDD0();
    sub_258F0ACD0();
    sub_258E090F8(v44, v45);
    v17 = v3[6];
    v18 = *(v3 + 56);
    LOBYTE(v44) = 2;
    sub_258F0ACC0();
    v19 = v3[8];
    v20 = v3[9];
    LOBYTE(v44) = 3;
    sub_258F0ACA0();
    v21 = v3[10];
    v22 = v3[11];
    LOBYTE(v44) = 4;
    sub_258F0ACA0();
    v23 = v3[12];
    v24 = v3[13];
    LOBYTE(v44) = 5;
    sub_258F0ACA0();
    v25 = v3[14];
    v26 = v3[15];
    LOBYTE(v44) = 6;
    sub_258F0ACA0();
    v27 = v3[18];
    v28 = *(v3 + 152);
    LOBYTE(v44) = 7;
    sub_258F0ACF0();
    v29 = v3[16];
    v30 = v3[17];
    LOBYTE(v44) = 8;
    sub_258F0ACA0();
    v31 = type metadata accessor for AssetPenetrationData();
    v32 = v31[13];
    LOBYTE(v44) = 9;
    sub_258F09A70();
    sub_258E0EEC4(&qword_27F988D10);
    sub_258F0AD20();
    v33 = (v3 + v31[14]);
    v34 = *v33;
    v35 = v33[1];
    LOBYTE(v44) = 10;
    sub_258F0ACA0();
    v36 = (v3 + v31[15]);
    v37 = *v36;
    v38 = *(v36 + 8);
    LOBYTE(v44) = 11;
    sub_258F0ACF0();
    v39 = (v3 + v31[16]);
    v40 = *v39;
    v41 = *(v39 + 8);
    LOBYTE(v44) = 12;
    sub_258F0ACF0();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t AssetPenetrationData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_258F09A70();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = *(v72 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988D18, &qword_258F0D410);
  v10 = *(v71 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v71, v12);
  v14 = &v69 - v13;
  v15 = type metadata accessor for AssetPenetrationData();
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v20 + 1) = 0u;
  *(v20 + 2) = 0u;
  v74 = a1;
  v75 = v18;
  *&v20[*(v18 + 68)] = 0;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E0ED2C();
  sub_258F0AED0();
  if (v2)
  {
    v76 = v2;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_4;
  }

  v22 = a2;
  LOBYTE(v77) = 0;
  v23 = v71;
  v24 = sub_258F0ABF0();
  v76 = 0;
  *v20 = v24;
  *(v20 + 1) = v25;
  v79 = 1;
  sub_258E0EE70();
  v40 = v76;
  sub_258F0AC20();
  v76 = v40;
  if (v40)
  {
    goto LABEL_21;
  }

  v41 = *(v20 + 2);
  v42 = *(v20 + 3);
  v43 = *(v20 + 4);
  v44 = *(v20 + 5);
  v69 = v78;
  v70 = v77;
  sub_258E090F8(v41, v42);
  v45 = v69;
  *(v20 + 1) = v70;
  *(v20 + 2) = v45;
  LOBYTE(v77) = 2;
  v46 = v76;
  v47 = sub_258F0AC10();
  if (v46)
  {
    v76 = v46;
LABEL_21:
    (*(v10 + 8))(v14, v23);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_4;
  }

  *(v20 + 6) = v47;
  v20[56] = v48 & 1;
  LOBYTE(v77) = 3;
  *(v20 + 8) = sub_258F0ABF0();
  *(v20 + 9) = v49;
  LOBYTE(v77) = 4;
  *(v20 + 10) = sub_258F0ABF0();
  *(v20 + 11) = v50;
  LOBYTE(v77) = 5;
  *(v20 + 12) = sub_258F0ABF0();
  *(v20 + 13) = v51;
  LOBYTE(v77) = 6;
  *(v20 + 14) = sub_258F0ABF0();
  *(v20 + 15) = v52;
  LOBYTE(v77) = 7;
  *(v20 + 18) = sub_258F0AC40();
  v20[152] = v53 & 1;
  LOBYTE(v77) = 8;
  v54 = sub_258F0ABF0();
  v76 = 0;
  *(v20 + 16) = v54;
  *(v20 + 17) = v55;
  LOBYTE(v77) = 9;
  sub_258E0EEC4(&qword_27F988D28);
  v56 = v76;
  sub_258F0AC70();
  v76 = v56;
  if (v56)
  {
    (*(v10 + 8))(v14, v71);
    v31 = 0;
    v26 = 1;
    v27 = 1;
    v28 = 1;
    v29 = 1;
    v30 = 1;
  }

  else
  {
    (*(v72 + 32))(&v20[v75[13]], v9, v73);
    LOBYTE(v77) = 10;
    v57 = v76;
    v58 = sub_258F0ABF0();
    v76 = v57;
    if (!v57)
    {
      v60 = &v20[v75[14]];
      *v60 = v58;
      v60[1] = v59;
      LOBYTE(v77) = 11;
      v61 = sub_258F0AC40();
      v76 = 0;
      v62 = &v20[v75[15]];
      *v62 = v61;
      v62[8] = v63 & 1;
      LOBYTE(v77) = 12;
      v64 = sub_258F0AC40();
      v76 = 0;
      v65 = v64;
      v67 = v66;
      v68 = &v20[v75[16]];
      (*(v10 + 8))(v14, v71);
      *v68 = v65;
      v68[8] = v67 & 1;
      sub_258E02EF8(v20, v22);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      return sub_258E02F5C(v20);
    }

    (*(v10 + 8))(v14, v71);
    v26 = 1;
    v27 = 1;
    v28 = 1;
    v29 = 1;
    v30 = 1;
    v31 = 1;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v74);

  v32 = *(v20 + 4);
  v33 = *(v20 + 5);
  result = sub_258E090F8(*(v20 + 2), *(v20 + 3));
  if (v26)
  {
    v35 = *(v20 + 9);

    if (!v27)
    {
LABEL_6:
      if (!v28)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  v36 = *(v20 + 11);

  if (!v28)
  {
LABEL_7:
    if (!v29)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  v37 = *(v20 + 13);

  if (!v29)
  {
LABEL_8:
    if (!v30)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  v38 = *(v20 + 15);

  if (!v30)
  {
LABEL_9:
    if (!v31)
    {
      return result;
    }

    return (*(v72 + 8))(&v20[v75[13]], v73);
  }

LABEL_15:
  v39 = *(v20 + 17);

  if (v31)
  {
    return (*(v72 + 8))(&v20[v75[13]], v73);
  }

  return result;
}

unint64_t sub_258E0D97C()
{
  result = qword_27F988CE8;
  if (!qword_27F988CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988CE0, &qword_258F0D400);
    sub_258E0DA08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988CE8);
  }

  return result;
}

unint64_t sub_258E0DA08()
{
  result = qword_27F988CF0;
  if (!qword_27F988CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988CF0);
  }

  return result;
}

uint64_t sub_258E0DA5C(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_258E0DAB0(void **a1)
{
  v2 = *(type metadata accessor for AssetPenetrationData() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_258E07ECC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_258E0DB58(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_258E0DB58(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_258F0AD50();
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
        type metadata accessor for AssetPenetrationData();
        v6 = sub_258F0A6F0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for AssetPenetrationData() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_258E0DEA4(v8, v9, a1, v4);
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
    return sub_258E0DC84(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_258E0DC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AssetPenetrationData();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v34 - v16;
  result = MEMORY[0x28223BE20](v15, v18);
  v22 = (&v34 - v21);
  v36 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v20 + 72);
    v25 = *a4 + v24 * (a3 - 1);
    v26 = -v24;
    v27 = a1 - a3;
    v35 = v24;
    v28 = v23 + v24 * a3;
LABEL_5:
    v39 = v25;
    v40 = a3;
    v37 = v28;
    v38 = v27;
    v29 = v27;
    while (1)
    {
      sub_258E02EF8(v28, v22);
      sub_258E02EF8(v25, v17);
      if (*(v22 + 56))
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v22[6];
      }

      v31 = *(v17 + 6);
      if (v17[56])
      {
        v32 = 0.0;
      }

      else
      {
        v32 = *(v17 + 6);
      }

      sub_258E02F5C(v17);
      result = sub_258E02F5C(v22);
      if (v30 >= v32)
      {
LABEL_4:
        a3 = v40 + 1;
        v25 = v39 + v35;
        v27 = v38 - 1;
        v28 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v23)
      {
        break;
      }

      sub_258E09094(v28, v13);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_258E09094(v13, v25);
      v25 += v26;
      v28 += v26;
      if (__CFADD__(v29++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_258E0DEA4(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v131 = a1;
  v145 = type metadata accessor for AssetPenetrationData();
  v140 = *(v145 - 8);
  v9 = *(v140 + 64);
  v11 = MEMORY[0x28223BE20](v145, v10);
  v134 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v144 = &v126 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v126 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = (&v126 - v22);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v139 = &v126 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v138 = &v126 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v129 = &v126 - v32;
  result = MEMORY[0x28223BE20](v31, v33);
  v128 = &v126 - v35;
  v142 = a3;
  v36 = *(a3 + 8);
  if (v36 < 1)
  {
    v38 = MEMORY[0x277D84F90];
LABEL_113:
    v5 = *v131;
    if (!*v131)
    {
      goto LABEL_152;
    }

    a3 = v38;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_146:
      result = sub_258E05680(a3);
    }

    v146 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v142)
      {
        v122 = *(result + 16 * a3);
        v123 = result;
        v124 = *(result + 16 * (a3 - 1) + 40);
        sub_258E0E818(*v142 + *(v140 + 72) * v122, *v142 + *(v140 + 72) * *(result + 16 * (a3 - 1) + 32), *v142 + *(v140 + 72) * v124, v5);
        if (v6)
        {
        }

        if (v124 < v122)
        {
          goto LABEL_139;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_258E05680(v123);
        }

        if (a3 - 2 >= *(v123 + 2))
        {
          goto LABEL_140;
        }

        v125 = &v123[16 * a3];
        *v125 = v122;
        *(v125 + 1) = v124;
        v146 = v123;
        sub_258E055F4(a3 - 1);
        result = v146;
        a3 = *(v146 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_150;
    }
  }

  v37 = 0;
  v38 = MEMORY[0x277D84F90];
  v130 = a4;
  while (1)
  {
    v39 = v37;
    v40 = v37 + 1;
    v135 = v38;
    v132 = v39;
    if (v40 >= v36)
    {
      v36 = v40;
    }

    else
    {
      a3 = *v142;
      v41 = *(v140 + 72);
      v5 = *v142 + v41 * v40;
      v42 = v39;
      v43 = v128;
      sub_258E02EF8(v5, v128);
      v44 = a3 + v41 * v42;
      v45 = v129;
      sub_258E02EF8(v44, v129);
      v46 = *(v43 + 56) ? 0.0 : *(v43 + 48);
      v47 = *(v45 + 48);
      v48 = *(v45 + 56) ? 0.0 : *(v45 + 48);
      sub_258E02F5C(v45);
      result = sub_258E02F5C(v43);
      v49 = v132 + 2;
      v141 = v41;
      v50 = a3 + v41 * (v132 + 2);
      while (v36 != v49)
      {
        LODWORD(v143) = v46 < v48;
        v51 = v138;
        sub_258E02EF8(v50, v138);
        a3 = v6;
        v52 = v36;
        v53 = v139;
        sub_258E02EF8(v5, v139);
        if (*(v51 + 56))
        {
          v54 = 0.0;
        }

        else
        {
          v54 = *(v51 + 48);
        }

        v55 = *(v53 + 48);
        if (*(v53 + 56))
        {
          v56 = 0.0;
        }

        else
        {
          v56 = *(v53 + 48);
        }

        v57 = v53;
        v36 = v52;
        v6 = a3;
        sub_258E02F5C(v57);
        result = sub_258E02F5C(v51);
        ++v49;
        v50 += v141;
        v5 += v141;
        if (((v143 ^ (v54 >= v56)) & 1) == 0)
        {
          v36 = v49 - 1;
          break;
        }
      }

      v39 = v132;
      a4 = v130;
      if (v46 < v48)
      {
        if (v36 < v132)
        {
          goto LABEL_143;
        }

        if (v132 < v36)
        {
          v127 = v6;
          v58 = v141 * (v36 - 1);
          v59 = v36 * v141;
          v143 = v36;
          v60 = v36;
          v61 = v132;
          v62 = v132 * v141;
          do
          {
            if (v61 != --v60)
            {
              a3 = *v142;
              if (!*v142)
              {
                goto LABEL_149;
              }

              v5 = a3 + v62;
              sub_258E09094(a3 + v62, v134);
              if (v62 < v58 || v5 >= a3 + v59)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v62 != v58)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_258E09094(v134, a3 + v58);
            }

            ++v61;
            v58 -= v141;
            v59 -= v141;
            v62 += v141;
          }

          while (v61 < v60);
          v6 = v127;
          a4 = v130;
          v39 = v132;
          v36 = v143;
        }
      }
    }

    v63 = v142[1];
    if (v36 < v63)
    {
      if (__OFSUB__(v36, v39))
      {
        goto LABEL_142;
      }

      if (v36 - v39 < a4)
      {
        if (__OFADD__(v39, a4))
        {
          goto LABEL_144;
        }

        if (v39 + a4 >= v63)
        {
          v64 = v142[1];
        }

        else
        {
          v64 = v39 + a4;
        }

        if (v64 < v39)
        {
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (v36 != v64)
        {
          break;
        }
      }
    }

    v65 = v36;
    if (v36 < v39)
    {
      goto LABEL_141;
    }

LABEL_45:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v38 = v135;
    }

    else
    {
      result = sub_258DE2334(0, *(v135 + 2) + 1, 1, v135);
      v38 = result;
    }

    a3 = *(v38 + 2);
    v66 = *(v38 + 3);
    v67 = a3 + 1;
    if (a3 >= v66 >> 1)
    {
      result = sub_258DE2334((v66 > 1), a3 + 1, 1, v38);
      v38 = result;
    }

    *(v38 + 2) = v67;
    v68 = &v38[16 * a3];
    *(v68 + 4) = v132;
    *(v68 + 5) = v65;
    v136 = v65;
    v5 = *v131;
    if (!*v131)
    {
      goto LABEL_151;
    }

    if (a3)
    {
      while (1)
      {
        v69 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v70 = *(v38 + 4);
          v71 = *(v38 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_64:
          if (v73)
          {
            goto LABEL_130;
          }

          v86 = &v38[16 * v67];
          v88 = *v86;
          v87 = *(v86 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_133;
          }

          v92 = &v38[16 * v69 + 32];
          v94 = *v92;
          v93 = *(v92 + 1);
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_137;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              v69 = v67 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v96 = &v38[16 * v67];
        v98 = *v96;
        v97 = *(v96 + 1);
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_78:
        if (v91)
        {
          goto LABEL_132;
        }

        v99 = &v38[16 * v69];
        v101 = *(v99 + 4);
        v100 = *(v99 + 5);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_135;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_85:
        a3 = v69 - 1;
        if (v69 - 1 >= v67)
        {
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
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v142)
        {
          goto LABEL_148;
        }

        v107 = v38;
        v108 = *&v38[16 * a3 + 32];
        v109 = *&v38[16 * v69 + 40];
        sub_258E0E818(*v142 + *(v140 + 72) * v108, *v142 + *(v140 + 72) * *&v38[16 * v69 + 32], *v142 + *(v140 + 72) * v109, v5);
        if (v6)
        {
        }

        if (v109 < v108)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_258E05680(v107);
        }

        if (a3 >= *(v107 + 2))
        {
          goto LABEL_127;
        }

        v110 = &v107[16 * a3];
        *(v110 + 4) = v108;
        *(v110 + 5) = v109;
        v146 = v107;
        result = sub_258E055F4(v69);
        v38 = v146;
        v67 = *(v146 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = &v38[16 * v67 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_128;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_129;
      }

      v81 = &v38[16 * v67];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_131;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_134;
      }

      if (v85 >= v77)
      {
        v103 = &v38[16 * v69 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_138;
        }

        if (v72 < v106)
        {
          v69 = v67 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v36 = v142[1];
    v37 = v136;
    a4 = v130;
    if (v136 >= v36)
    {
      goto LABEL_113;
    }
  }

  v127 = v6;
  a3 = *v142;
  v111 = *(v140 + 72);
  v112 = *v142 + v111 * (v36 - 1);
  v113 = -v111;
  v114 = v39 - v36;
  v143 = v36;
  v133 = v111;
  v115 = a3 + v36 * v111;
  v136 = v64;
LABEL_97:
  v5 = v115;
  v137 = v114;
  v116 = v114;
  v141 = v112;
  while (1)
  {
    sub_258E02EF8(v5, v23);
    sub_258E02EF8(v112, v19);
    if (*(v23 + 56))
    {
      v117 = 0.0;
    }

    else
    {
      v117 = v23[6];
    }

    v118 = *(v19 + 6);
    if (v19[56])
    {
      v119 = 0.0;
    }

    else
    {
      v119 = *(v19 + 6);
    }

    sub_258E02F5C(v19);
    result = sub_258E02F5C(v23);
    if (v117 >= v119)
    {
LABEL_96:
      v112 = v141 + v133;
      v65 = v136;
      v114 = v137 - 1;
      v115 += v133;
      if (++v143 != v136)
      {
        goto LABEL_97;
      }

      v6 = v127;
      if (v136 < v132)
      {
        goto LABEL_141;
      }

      goto LABEL_45;
    }

    if (!a3)
    {
      break;
    }

    v120 = v144;
    sub_258E09094(v5, v144);
    swift_arrayInitWithTakeFrontToBack();
    sub_258E09094(v120, v112);
    v112 += v113;
    v5 += v113;
    if (__CFADD__(v116++, 1))
    {
      goto LABEL_96;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
  return result;
}

uint64_t sub_258E0E818(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v59 = type metadata accessor for AssetPenetrationData();
  v8 = *(*(v59 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v59, v9);
  v58 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v57 = &v52 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v52 - v17;
  result = MEMORY[0x28223BE20](v16, v19);
  v22 = (&v52 - v21);
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_73;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_74;
  }

  v26 = (a2 - a1) / v24;
  v61 = a4;
  v62 = a1;
  if (v26 >= v25 / v24)
  {
    v29 = v25 / v24 * v24;
    if (a4 < a2 || a2 + v29 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v29;
    if (v29 >= 1)
    {
      v39 = -v24;
      v40 = a4 + v29;
      v55 = a4;
      v56 = a1;
      do
      {
        v53 = v38;
        v41 = a2;
        v42 = a2 + v39;
        while (1)
        {
          if (v41 <= v56)
          {
            v62 = v41;
            v38 = v53;
            goto LABEL_70;
          }

          v43 = a3;
          v54 = v38;
          v44 = v40 + v39;
          v45 = v57;
          sub_258E02EF8(v40 + v39, v57);
          v46 = v42;
          v47 = v58;
          sub_258E02EF8(v42, v58);
          v48 = *(v45 + 56) ? 0.0 : *(v45 + 48);
          v49 = *(v47 + 48);
          v50 = *(v47 + 56) ? 0.0 : *(v47 + 48);
          v51 = v43 + v39;
          sub_258E02F5C(v47);
          sub_258E02F5C(v45);
          if (v48 < v50)
          {
            break;
          }

          v38 = v40 + v39;
          a3 = v43 + v39;
          if (v43 < v40 || v51 >= v40)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v40 + v39;
            v42 = v46;
          }

          else
          {
            v42 = v46;
            if (v43 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
              v38 = v40 + v39;
            }
          }

          v40 = v38;
          if (v44 <= v55)
          {
            v62 = v41;
            goto LABEL_70;
          }
        }

        a3 = v43 + v39;
        if (v43 < v41 || v51 >= v41)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a2 = v46;
          if (v43 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v38 = v54;
      }

      while (v40 > v55);
    }

    v62 = a2;
LABEL_70:
    v60 = v38;
  }

  else
  {
    v27 = v24;
    v28 = v26 * v24;
    if (a4 < a1 || a1 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v28;
    v60 = a4 + v28;
    if (v28 >= 1 && a2 < a3)
    {
      v32 = v27;
      do
      {
        sub_258E02EF8(a2, v22);
        sub_258E02EF8(a4, v18);
        if (*(v22 + 56))
        {
          v33 = 0.0;
        }

        else
        {
          v33 = v22[6];
        }

        v34 = *(v18 + 6);
        if (v18[56])
        {
          v35 = 0.0;
        }

        else
        {
          v35 = *(v18 + 6);
        }

        sub_258E02F5C(v18);
        sub_258E02F5C(v22);
        if (v33 >= v35)
        {
          v37 = a4 + v32;
          if (a1 < a4 || a1 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v61 = v37;
          a4 = v37;
        }

        else
        {
          v36 = a2 + v32;
          if (a1 < a2 || a1 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v36;
        }

        a1 += v27;
        v62 = a1;
        if (a4 >= v30)
        {
          break;
        }

        v32 = v27;
      }

      while (a2 < a3);
    }
  }

  sub_258E05694(&v62, &v61, &v60);
  return 1;
}

unint64_t sub_258E0ED2C()
{
  result = qword_27F988D00;
  if (!qword_27F988D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988D00);
  }

  return result;
}

uint64_t sub_258E0ED80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_258E0EDD0()
{
  result = qword_27F988D08;
  if (!qword_27F988D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988D08);
  }

  return result;
}

uint64_t type metadata accessor for AssetPenetrationData()
{
  result = qword_27F988D30;
  if (!qword_27F988D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_258E0EE70()
{
  result = qword_27F988D20;
  if (!qword_27F988D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988D20);
  }

  return result;
}

uint64_t sub_258E0EEC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_258F09A70();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258E0EF30()
{
  sub_258E0F074(319, &qword_27F988D40);
  if (v0 <= 0x3F)
  {
    sub_258E0F074(319, &qword_27F988D48);
    if (v1 <= 0x3F)
    {
      sub_258E0F074(319, &qword_27F988D50);
      if (v2 <= 0x3F)
      {
        sub_258E0F074(319, &qword_27F988D58);
        if (v3 <= 0x3F)
        {
          sub_258F09A70();
          if (v4 <= 0x3F)
          {
            sub_258E0F0C0();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_258E0F074(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_258F0A920();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_258E0F0C0()
{
  if (!qword_27F988D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988D68, &qword_258F0D4A8);
    v0 = sub_258F0A920();
    if (!v1)
    {
      atomic_store(v0, &qword_27F988D60);
    }
  }
}

uint64_t getEnumTagSinglePayload for AssetPenetrationData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetPenetrationData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258E0F2DC()
{
  result = qword_27F988D80;
  if (!qword_27F988D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988D80);
  }

  return result;
}

unint64_t sub_258E0F334()
{
  result = qword_27F988D88;
  if (!qword_27F988D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988D88);
  }

  return result;
}

unint64_t sub_258E0F38C()
{
  result = qword_27F988D90;
  if (!qword_27F988D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988D90);
  }

  return result;
}

uint64_t sub_258E0F3E0()
{
  v0 = sub_258F0ABE0();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t objectdestroyTm()
{
  v1 = sub_258F0A370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_258E0F4FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_258F0A370() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_258E0F5E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_258E0F638(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1;
  v7 = [a1 availableAssetDailyStatus];
  if (!v7)
  {
    goto LABEL_65;
  }

  v60 = v5;
  v61 = v7;
  v8 = [v7 assetSetStatus];
  sub_258DEB8C8(0, &qword_27F988E30, 0x277CF16B8);
  v9 = sub_258F0A6B0();

  if (v9 >> 62)
  {
    goto LABEL_63;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_64:

    v5 = v61;
LABEL_65:

    *a2 = 0u;
    *(a2 + 1) = 0u;
    return;
  }

  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x259C9E3B0](0, v9);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_69;
      }

      v10 = *(v9 + 32);
    }

    v3 = v10;

    v11 = [v3 uafAssetSets];
    sub_258DEB8C8(0, &qword_27F988E38, 0x277CF16B0);
    v9 = sub_258F0A6B0();

    v2 = v9 >> 62 ? sub_258F0AA20() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = MEMORY[0x277D84F90];
    v65 = v3;
    v59 = a2;
    if (!v2)
    {
      break;
    }

    v79 = MEMORY[0x277D84F90];
    sub_258E14BE8(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
LABEL_73:
      __break(1u);
      return;
    }

    v12 = 0;
    a2 = 0;
    v13 = v79;
    v3 = (v9 & 0xFFFFFFFFFFFFFF8);
    v4 = (v2 - 1);
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = v13;
        v15 = MEMORY[0x259C9E3B0](v12, v9);
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v14 = v13;
        v15 = *(v9 + 8 * v12 + 32);
      }

      v16 = v15;
      v75 = v15;
      sub_258E13E08(&v75, v76);

      v13 = v14;
      v79 = v14;
      v18 = v14[2];
      v17 = v14[3];
      v2 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_258E14BE8((v17 > 1), v18 + 1, 1);
        v13 = v79;
      }

      v13[2] = v2;
      v19 = &v13[9 * v18];
      *(v19 + 2) = *v76;
      v20 = *&v76[16];
      v21 = *&v76[32];
      v22 = v77;
      *(v19 + 48) = v78;
      *(v19 + 4) = v21;
      *(v19 + 5) = v22;
      *(v19 + 3) = v20;
      if (v4 == v12)
      {
        v58 = v13;

        v3 = v65;
        v4 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }

      ++v12;
    }

    while (!__OFADD__(v12, 1));
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    if (!sub_258F0AA20())
    {
      goto LABEL_64;
    }
  }

  a2 = 0;
  v58 = MEMORY[0x277D84F90];
LABEL_24:
  v23 = [v3 uafAssetSubscriptions];
  sub_258DEB8C8(0, &qword_27F988E40, 0x277CF16D0);
  v2 = sub_258F0A6B0();

  if (!(v2 >> 62))
  {
    v24 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_70;
    }

    goto LABEL_26;
  }

LABEL_69:
  v24 = sub_258F0AA20();
  if (v24)
  {
LABEL_26:
    v79 = v4;
    sub_258E14BC8(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      goto LABEL_73;
    }

    v25 = 0;
    v66 = v24;
    v67 = v2 & 0xC000000000000001;
    v26 = v79;
    v62 = v2 + 32;
    v63 = v2 & 0xFFFFFFFFFFFFFF8;
    v64 = v2;
    while (1)
    {
      v9 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_59;
      }

      if (v67)
      {
        v27 = MEMORY[0x259C9E3B0]();
      }

      else
      {
        if (v25 >= *(v63 + 16))
        {
          goto LABEL_62;
        }

        v27 = *(v62 + 8 * v25);
      }

      v28 = v27;
      v29 = [v27 subscriberName];
      if (v29)
      {
        v30 = v29;
        v31 = sub_258F0A4F0();
        v33 = v32;
      }

      else
      {
        v33 = 0xE700000000000000;
        v31 = 0x6E776F6E6B6E75;
      }

      v69 = v28;
      v34 = [v28 subscriptions];
      sub_258DEB8C8(0, &qword_27F988E48, 0x277CF16C0);
      v35 = sub_258F0A6B0();

      if (v35 >> 62)
      {
        v36 = sub_258F0AA20();
      }

      else
      {
        v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v71 = v33;
      v72 = v9;
      v70 = v31;
      if (v36)
      {
        v73 = v35;
        v75 = v4;
        v37 = v36;
        sub_258E14C08(0, v36 & ~(v36 >> 63), 0);
        if (v37 < 0)
        {
          goto LABEL_60;
        }

        v68 = v26;
        v38 = 0;
        v39 = v75;
        v40 = v73;
        v4 = (v73 & 0xC000000000000001);
        while (1)
        {
          v2 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          if (v4)
          {
            v41 = MEMORY[0x259C9E3B0](v38);
          }

          else
          {
            if (v38 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v41 = *(v40 + 8 * v38 + 32);
          }

          v42 = v41;
          v74 = v41;
          sub_258E14538(&v74, v76);

          v9 = *v76;
          v43 = *&v76[8];
          v44 = *&v76[24];
          v75 = v39;
          v46 = v39[2];
          v45 = v39[3];
          v3 = (v46 + 1);
          if (v46 >= v45 >> 1)
          {
            v56 = *&v76[24];
            v57 = *&v76[8];
            sub_258E14C08((v45 > 1), v46 + 1, 1);
            v44 = v56;
            v43 = v57;
            v39 = v75;
          }

          v39[2] = v3;
          v47 = &v39[5 * v46];
          v47[4] = v9;
          *(v47 + 5) = v43;
          *(v47 + 7) = v44;
          ++v38;
          v40 = v73;
          if (v2 == v37)
          {

            v2 = v64;
            v3 = v65;
            v4 = MEMORY[0x277D84F90];
            v26 = v68;
            goto LABEL_51;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v39 = v4;
LABEL_51:
      v79 = v26;
      v49 = v26[2];
      v48 = v26[3];
      if (v49 >= v48 >> 1)
      {
        sub_258E14BC8((v48 > 1), v49 + 1, 1);
        v26 = v79;
      }

      v26[2] = v49 + 1;
      v50 = &v26[3 * v49];
      v50[4] = v70;
      v50[5] = v71;
      v50[6] = v39;
      v25 = v72;
      if (v72 == v66)
      {

        goto LABEL_71;
      }
    }
  }

LABEL_70:

  v26 = MEMORY[0x277D84F90];
LABEL_71:
  [v61 statusReason];
  v51 = BMAvailableAssetStatusReasonAsString();
  v52 = sub_258F0A4F0();
  v54 = v53;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988E50, &qword_258F0DB58);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_258F0B820;
  *(v55 + 32) = v58;
  *(v55 + 40) = v26;

  *v59 = v52;
  v59[1] = v54;
  v59[2] = v55;
  v59[3] = 0;
}

uint64_t sub_258E0FD3C()
{
  sub_258F0AE40();
  MEMORY[0x259C9E710](0);
  return sub_258F0AE90();
}

uint64_t sub_258E0FDA8()
{
  sub_258F0AE40();
  MEMORY[0x259C9E710](0);
  return sub_258F0AE90();
}

uint64_t sub_258E0FE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x8000000258F19CE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_258F0AD80();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_258E0FEA4(uint64_t a1)
{
  v2 = sub_258E100B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E0FEE0(uint64_t a1)
{
  v2 = sub_258E100B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetPenetrationPayload.encode(to:)(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DC0, &qword_258F0D750);
  v3 = *(v15 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v15, v5);
  v7 = &v14 - v6;
  v8 = v1[1];
  v14 = *v1;
  v9 = v1[2];
  v10 = v1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E100B4();

  sub_258F0AEE0();
  v16 = v14;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  sub_258E10108();
  v12 = v15;
  sub_258F0AD20();

  return (*(v3 + 8))(v7, v12);
}

unint64_t sub_258E100B4()
{
  result = qword_27F988DC8;
  if (!qword_27F988DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988DC8);
  }

  return result;
}

unint64_t sub_258E10108()
{
  result = qword_27F988DD0;
  if (!qword_27F988DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988DD0);
  }

  return result;
}

uint64_t AssetPenetrationPayload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DD8, &qword_258F0D758);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E100B4();
  sub_258F0AED0();
  if (!v2)
  {
    sub_258E102DC();
    sub_258F0AC70();
    (*(v6 + 8))(v10, v5);
    v12 = v17;
    v13 = v16;
    *a2 = v15;
    *(a2 + 8) = v13;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_258E102DC()
{
  result = qword_27F988DE0;
  if (!qword_27F988DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988DE0);
  }

  return result;
}

uint64_t sub_258E10360(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v18 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988EB8, &qword_258F0DBA8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E15A3C();
  sub_258F0AEE0();
  LOBYTE(v20) = 0;
  sub_258F0AD00();
  if (!v5)
  {
    v14 = v17;
    v20 = v18;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988EC8, &qword_258F0DBB0);
    sub_258E15A90();
    sub_258F0AD20();
    v20 = v14;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988EE0, &qword_258F0DBB8);
    sub_258E15B68();
    sub_258F0ACD0();
  }

  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_258E10554()
{
  v1 = 0x7465537465737361;
  if (*v0 != 1)
  {
    v1 = 0x63617073656D616ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6552737574617473;
  }
}

uint64_t sub_258E105D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258E161B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258E105F8(uint64_t a1)
{
  v2 = sub_258E15A3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E10634(uint64_t a1)
{
  v2 = sub_258E15A3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258E10670@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_258E162E0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_258E106C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988F98, &qword_258F0E248);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E16F38();
  sub_258F0AEE0();
  v12 = *v3;
  v13 = v3[1];
  v18[0] = 0;
  sub_258F0AD00();
  if (!v2)
  {
    v14 = *(v3 + 2);
    *v18 = *(v3 + 1);
    *&v18[16] = v14;
    v19 = v3[6];
    v17 = 1;
    sub_258E16F8C();
    sub_258F0AD20();
    *v18 = *(v3 + 7);
    *&v18[13] = *(v3 + 69);
    v17 = 2;
    sub_258E16FE0();
    sub_258F0AD20();
    *v18 = v3[10];
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988FB8, &qword_258F0E250);
    sub_258E17034();
    sub_258F0ACD0();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_258E108E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9892B0, &qword_258F0EE40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1BD3C();
  sub_258F0AEE0();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v20[0]) = 0;
  sub_258F0AD00();
  if (!v2)
  {
    v20[0] = *(v3 + 1);
    *(v20 + 13) = *(v3 + 29);
    v19[15] = 1;
    sub_258E16FE0();
    sub_258F0AD20();
    v14 = v3[5];
    v15 = v3[6];
    LOBYTE(v20[0]) = 2;
    sub_258F0AD00();
    v16 = v3[7];
    v17 = v3[8];
    LOBYTE(v20[0]) = 3;
    sub_258F0AD00();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_258E10AB4()
{
  v1 = 0x6D614E6C61697274;
  v2 = 0xD00000000000001DLL;
  if (*v0 != 2)
  {
    v2 = 0x737465737361;
  }

  if (*v0)
  {
    v1 = 0x74756F6C6C6F72;
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

uint64_t sub_258E10B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258E1710C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258E10B64(uint64_t a1)
{
  v2 = sub_258E16F38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E10BA0(uint64_t a1)
{
  v2 = sub_258E16F38();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_258E10BDC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_258E1727C(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_258E10C50()
{
  v1 = 0x636F4C7465737361;
  v2 = 0x6D614E7465737361;
  if (*v0 != 2)
  {
    v2 = 0x6D614E6C61697274;
  }

  if (*v0)
  {
    v1 = 0x7265567465737361;
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

uint64_t sub_258E10CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258E17708(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258E10D14(uint64_t a1)
{
  v2 = sub_258E1BD3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E10D50(uint64_t a1)
{
  v2 = sub_258E1BD3C();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_258E10D8C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_258E17884(a1, v6);
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

uint64_t sub_258E10DF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9892A0, &qword_258F0EE38);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1BCE8();
  sub_258F0AEE0();
  v17 = 0;
  sub_258F0ACE0();
  if (v4)
  {
    return (*(v7 + 8))(v11, v6);
  }

  v16 = 1;
  sub_258F0ACE0();
  v15 = 2;
  sub_258F0ACE0();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_258E10FC4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989290, &qword_258F0EE30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1BC94();
  sub_258F0AEE0();
  v12 = *v3;
  v18[15] = 0;
  sub_258F0AD30();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  v13 = v3[1];
  v14 = v3[2];
  v18[14] = 1;
  sub_258F0AD00();
  v16 = v3[3];
  v17 = v3[4];
  v18[13] = 2;
  sub_258F0AD00();
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_258E1117C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258E17C1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258E111A4(uint64_t a1)
{
  v2 = sub_258E1BCE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E111E0(uint64_t a1)
{
  v2 = sub_258E1BCE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258E1121C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_258E17D28(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result) & 1;
    *(a2 + 8) = v5;
    *(a2 + 12) = BYTE4(v5) & 1;
    *(a2 + 16) = v6;
    *(a2 + 20) = BYTE4(v6) & 1;
  }

  return result;
}

uint64_t sub_258E112C4()
{
  v1 = 0x4974756F6C6C6F72;
  if (*v0 != 1)
  {
    v1 = 0x6150726F74636166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D796F6C706564;
  }
}

uint64_t sub_258E11328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258E17F24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258E11350(uint64_t a1)
{
  v2 = sub_258E1BC94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E1138C(uint64_t a1)
{
  v2 = sub_258E1BC94();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_258E113C8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_258E18054(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_258E11428(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988F58, &qword_258F0E230);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E16D34();
  sub_258F0AEE0();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988F68, &qword_258F0E238);
  sub_258E16D88();
  sub_258F0AD20();
  if (!v3)
  {
    v17 = a3;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988F80, &qword_258F0E240);
    sub_258E16E60();
    sub_258F0ACD0();
  }

  return (*(v8 + 8))(v12, v7);
}

unint64_t sub_258E115E8()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0x7465737341666175;
  }

  *v0;
  return result;
}

uint64_t sub_258E11630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7465737341666175 && a2 == 0xEC00000073746553;
  if (v6 || (sub_258F0AD80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000258F19D20 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_258F0AD80();

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

uint64_t sub_258E11718(uint64_t a1)
{
  v2 = sub_258E16D34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E11754(uint64_t a1)
{
  v2 = sub_258E16D34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258E11790@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_258E18268(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_258E117D8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9890A0, &qword_258F0E2A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1A2DC();
  sub_258F0AEE0();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v22) = 0;
  sub_258F0ACA0();
  if (!v2)
  {
    v15 = v3[2];
    v16 = v3[3];
    LOBYTE(v22) = 1;
    sub_258F0AD00();
    v22 = v3[4];
    HIBYTE(v21) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989070, &qword_258F0E290);
    sub_258E1A548();
    sub_258F0ACD0();
    v17 = v3[5];
    v18 = v3[6];
    LOBYTE(v22) = 3;
    sub_258F0ACA0();
    v22 = v3[7];
    HIBYTE(v21) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989088, &qword_258F0E298);
    sub_258E1A620();
    sub_258F0ACD0();
    v19 = *(v3 + 64);
    LOBYTE(v22) = 5;
    sub_258F0ACB0();
    v20 = *(v3 + 65);
    LOBYTE(v22) = 6;
    sub_258F0ACB0();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_258E11A80()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x737465737361;
    if (v1 == 1)
    {
      v5 = 0x7465537465737361;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x7465537465737361;
    }
  }

  else
  {
    v2 = 0xD000000000000022;
    if (v1 == 5)
    {
      v2 = 0xD00000000000001CLL;
    }

    v3 = 0xD000000000000025;
    if (v1 == 3)
    {
      v3 = 0x65636E6569647561;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_258E11B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258E18810(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258E11B88(uint64_t a1)
{
  v2 = sub_258E1A2DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E11BC4(uint64_t a1)
{
  v2 = sub_258E1A2DC();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_258E11C00@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_258E18A60(a1, v6);
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

uint64_t sub_258E11C6C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x756F537465737361;
    v6 = 0x6570537465737361;
    if (a1 != 2)
    {
      v6 = 0x6D614E7465737361;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD00000000000001ALL;
    v2 = 0x7461507465737361;
    if (a1 != 7)
    {
      v2 = 0x636F4C7465737361;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000018;
    if (a1 == 4)
    {
      v3 = 0x7265567465737361;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_258E11DC0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989038, &qword_258F0E270);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v27[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E196C4();
  sub_258F0AEE0();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v28) = 0;
  sub_258F0AD00();
  if (!v2)
  {
    v14 = *(v3 + 16);
    LOBYTE(v28) = 1;
    sub_258F0AD10();
    v15 = v3[3];
    v16 = v3[4];
    LOBYTE(v28) = 2;
    sub_258F0ACA0();
    v17 = v3[5];
    v18 = v3[6];
    LOBYTE(v28) = 3;
    sub_258F0AD00();
    v19 = v3[7];
    v20 = v3[8];
    LOBYTE(v28) = 4;
    sub_258F0ACA0();
    v21 = v3[9];
    LOBYTE(v28) = 5;
    sub_258F0AD40();
    v22 = v3[10];
    LOBYTE(v28) = 6;
    sub_258F0AD40();
    v23 = v3[11];
    v24 = v3[12];
    LOBYTE(v28) = 7;
    sub_258F0ACA0();
    v25 = *(v3 + 15);
    v28 = *(v3 + 13);
    v29 = v25;
    v27[15] = 8;
    sub_258E197D4();
    sub_258F0AD20();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_258E120B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9890F0, &qword_258F0E2B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1A6F8();
  sub_258F0AEE0();
  v16 = 0;
  sub_258F0AD00();
  if (!v4)
  {
    v14[1] = v14[0];
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9890D8, &qword_258F0E2B0);
    sub_258E1A824();
    sub_258F0AD20();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_258E12260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258E18EC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258E12294(uint64_t a1)
{
  v2 = sub_258E196C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E122D0(uint64_t a1)
{
  v2 = sub_258E196C4();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_258E1230C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_258E191CC(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9;
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_258E12390()
{
  if (*v0)
  {
    result = 0x437972746E756F63;
  }

  else
  {
    result = 0x65676175676E616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_258E123DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43;
  if (v6 || (sub_258F0AD80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_258F0AD80();

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

uint64_t sub_258E124C0(uint64_t a1)
{
  v2 = sub_258E1BDF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E124FC(uint64_t a1)
{
  v2 = sub_258E1BDF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258E125D4()
{
  if (*v0)
  {
    result = 0x7069726373627573;
  }

  else
  {
    result = 0x6269726373627573;
  }

  *v0;
  return result;
}

uint64_t sub_258E12628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6269726373627573 && a2 == 0xEE00656D614E7265;
  if (v6 || (sub_258F0AD80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7069726373627573 && a2 == 0xED0000736E6F6974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_258F0AD80();

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

uint64_t sub_258E12714(uint64_t a1)
{
  v2 = sub_258E1A6F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E12750(uint64_t a1)
{
  v2 = sub_258E1A6F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258E1278C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_258E19828(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_258E127DC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989188, &qword_258F0E300);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1A9A4();
  sub_258F0AEE0();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v16) = 0;
  sub_258F0AD00();
  if (!v2)
  {
    v16 = v3[2];
    HIBYTE(v15) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989148, &qword_258F0F400);
    sub_258E1ABA8(&qword_27F989190);
    sub_258F0AD20();
    v16 = v3[3];
    HIBYTE(v15) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989158, &qword_258F0E2F0);
    sub_258E1AC14();
    sub_258F0ACD0();
    v16 = v3[4];
    HIBYTE(v15) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989170, &qword_258F0E2F8);
    sub_258E1ACEC();
    sub_258F0ACD0();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_258E12AD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(void *, uint64_t, uint64_t))
{
  v22[2] = a3;
  v22[0] = a4;
  v22[1] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v22 - v14;
  v16 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a8(v17, v18, v19);
  sub_258F0AEE0();
  v24 = 0;
  v20 = v22[3];
  sub_258F0AD00();
  if (!v20)
  {
    v23 = 1;
    sub_258F0AD00();
  }

  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_258E12C68(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989058, &qword_258F0E280);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1A288();
  sub_258F0AEE0();
  v11[15] = 0;
  sub_258F0AD30();
  if (!v1)
  {
    v11[14] = 1;
    sub_258F0AD30();
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_258E12DE8()
{
  v1 = 0x7465537465737361;
  v2 = 0x696C416567617375;
  if (*v0 == 2)
  {
    v2 = 0x7465537465737361;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_258E12E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258E19A2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258E12EA0(uint64_t a1)
{
  v2 = sub_258E1A9A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E12EDC(uint64_t a1)
{
  v2 = sub_258E1A9A4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_258E12F18@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_258E19BB0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_258E12F78()
{
  if (*v0)
  {
    result = 0x6C61566567617375;
  }

  else
  {
    result = 0x6D614E6567617375;
  }

  *v0;
  return result;
}

uint64_t sub_258E12FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E6567617375 && a2 == 0xE900000000000065;
  if (v6 || (sub_258F0AD80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C61566567617375 && a2 == 0xEA00000000006575)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_258F0AD80();

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

uint64_t sub_258E130A8(uint64_t a1)
{
  v2 = sub_258E1A8FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E130E4(uint64_t a1)
{
  v2 = sub_258E1A8FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258E13164@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = sub_258E19EF0(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
  }

  return result;
}

uint64_t sub_258E131FC()
{
  if (*v0)
  {
    result = 0x6D614E7361696C61;
  }

  else
  {
    result = 0x6C61567361696C61;
  }

  *v0;
  return result;
}

uint64_t sub_258E13240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61567361696C61 && a2 == 0xEA00000000006575;
  if (v6 || (sub_258F0AD80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D614E7361696C61 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_258F0AD80();

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

uint64_t sub_258E1332C(uint64_t a1)
{
  v2 = sub_258E1A950();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E13368(uint64_t a1)
{
  v2 = sub_258E1A950();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_258E13440()
{
  if (*v0)
  {
    result = 0x63634F73656D6974;
  }

  else
  {
    result = 0xD00000000000001CLL;
  }

  *v0;
  return result;
}

uint64_t sub_258E1348C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001CLL && 0x8000000258F19DC0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x63634F73656D6974 && a2 == 0xED00006465727275)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_258F0AD80();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_258E1357C(uint64_t a1)
{
  v2 = sub_258E1A288();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E135B8(uint64_t a1)
{
  v2 = sub_258E1A288();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258E135F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_258E1A0E0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_258E1363C()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x656D695478696E75;
  }

  *v0;
  return result;
}

uint64_t sub_258E13688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D695478696E75 && a2 == 0xED0000706D617473;
  if (v6 || (sub_258F0AD80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000258F19D00 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_258F0AD80();

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

uint64_t sub_258E13774(uint64_t a1)
{
  v2 = sub_258E13978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E137B0(uint64_t a1)
{
  v2 = sub_258E13978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GMAssetAvailability.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DE8, &qword_258F0D760);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v13 - v8;
  v10 = *v1;
  v13[1] = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E13978();
  sub_258F0AEE0();
  v15 = 0;
  sub_258F0AD40();
  if (!v2)
  {
    v14 = 1;
    sub_258F0AD40();
  }

  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_258E13978()
{
  result = qword_27F988DF0;
  if (!qword_27F988DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988DF0);
  }

  return result;
}

uint64_t GMAssetAvailability.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DF8, &qword_258F0D768);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E13978();
  sub_258F0AED0();
  if (!v2)
  {
    v17 = 0;
    v12 = sub_258F0AC90();
    v16 = 1;
    v13 = sub_258F0AC90();
    (*(v6 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_258E13BFC()
{
  result = qword_27F988E00;
  if (!qword_27F988E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988E00);
  }

  return result;
}

unint64_t sub_258E13C54()
{
  result = qword_27F988E08;
  if (!qword_27F988E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988E08);
  }

  return result;
}

unint64_t sub_258E13CAC()
{
  result = qword_27F988E10;
  if (!qword_27F988E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988E10);
  }

  return result;
}

unint64_t sub_258E13D04()
{
  result = qword_27F988E18;
  if (!qword_27F988E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988E18);
  }

  return result;
}

unint64_t sub_258E13D5C()
{
  result = qword_27F988E20;
  if (!qword_27F988E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988E20);
  }

  return result;
}

unint64_t sub_258E13DB4()
{
  result = qword_27F988E28;
  if (!qword_27F988E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988E28);
  }

  return result;
}

char *sub_258E13E08@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 assetSetId];
  if (v4)
  {
    v5 = v4;
    v6 = sub_258F0A4F0();
    v52 = v7;
    v53 = v6;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v8 = [v3 assetSetName];
  if (v8)
  {
    v9 = v8;
    v50 = sub_258F0A4F0();
    v51 = v10;
  }

  else
  {
    v50 = 0x676E697373696DLL;
    v51 = 0xE700000000000000;
  }

  v11 = [v3 assets];
  sub_258DEB8C8(0, &qword_27F988E98, 0x277CF16A8);
  v12 = sub_258F0A6B0();

  if (v12 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_258F0AA20())
  {
    v14 = MEMORY[0x277D84F90];
    v54 = a2;
    v55 = v3;
    if (!i)
    {
      break;
    }

    v61 = MEMORY[0x277D84F90];
    result = sub_258E14C48(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      goto LABEL_44;
    }

    v16 = 0;
    a2 = v61;
    v17 = i - 1;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x259C9E3B0](v16, v12);
      }

      else
      {
        if (v16 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v18 = *(v12 + 8 * v16 + 32);
      }

      v19 = v18;
      v58 = v18;
      sub_258E1428C(&v58, v59);

      v61 = a2;
      v21 = *(a2 + 16);
      v20 = *(a2 + 24);
      v3 = (v21 + 1);
      if (v21 >= v20 >> 1)
      {
        sub_258E14C48((v20 > 1), v21 + 1, 1);
        a2 = v61;
      }

      *(a2 + 16) = v3;
      v22 = a2 + 136 * v21;
      *(v22 + 32) = v59[0];
      v23 = v59[1];
      v24 = v59[2];
      v25 = v59[4];
      *(v22 + 80) = v59[3];
      *(v22 + 96) = v25;
      *(v22 + 48) = v23;
      *(v22 + 64) = v24;
      v26 = v59[5];
      v27 = v59[6];
      v28 = v59[7];
      *(v22 + 160) = v60;
      *(v22 + 128) = v27;
      *(v22 + 144) = v28;
      *(v22 + 112) = v26;
      if (v17 == v16)
      {

        v3 = v55;
        v14 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }

      ++v16;
    }

    while (!__OFADD__(v16, 1));
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  a2 = MEMORY[0x277D84F90];
LABEL_24:
  v29 = [v3 audienceId];
  if (v29)
  {
    v30 = v29;
    v31 = sub_258F0A4F0();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v34 = [v3 mobileAssetDownloadErrorCodeFrequency];
  sub_258DEB8C8(0, &qword_27F988EA0, 0x277CF16E0);
  v35 = sub_258F0A6B0();

  if (!(v35 >> 62))
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_29;
    }

LABEL_41:

LABEL_42:
    v47 = [v3 fromPreSoftwareUpdateStaging];
    result = [v3 expensiveCellularDownloadRequested];
    *v54 = v53;
    *(v54 + 8) = v52;
    *(v54 + 16) = v50;
    *(v54 + 24) = v51;
    *(v54 + 32) = a2;
    *(v54 + 40) = v31;
    *(v54 + 48) = v33;
    *(v54 + 56) = v14;
    *(v54 + 64) = v47;
    *(v54 + 65) = result;
    return result;
  }

  v36 = sub_258F0AA20();
  if (!v36)
  {
    goto LABEL_41;
  }

LABEL_29:
  *&v59[0] = v14;
  result = sub_258E14C28(0, v36 & ~(v36 >> 63), 0);
  if ((v36 & 0x8000000000000000) == 0)
  {
    v48 = v33;
    v49 = v31;
    v37 = 0;
    v14 = *&v59[0];
    v38 = v35;
    v56 = v35 & 0xC000000000000001;
    v57 = v35;
    v39 = v36;
    do
    {
      if (v56)
      {
        v40 = MEMORY[0x259C9E3B0](v37, v38);
      }

      else
      {
        v40 = *(v38 + 8 * v37 + 32);
      }

      v41 = v40;
      v42 = [v40 mobileAssetDownloadErrorCode];
      v43 = [v41 timesOccurred];

      *&v59[0] = v14;
      v45 = *(v14 + 16);
      v44 = *(v14 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_258E14C28((v44 > 1), v45 + 1, 1);
        v14 = *&v59[0];
      }

      ++v37;
      *(v14 + 16) = v45 + 1;
      v46 = v14 + 8 * v45;
      *(v46 + 32) = v42;
      *(v46 + 36) = v43;
      v38 = v57;
    }

    while (v39 != v37);

    v3 = v55;
    v33 = v48;
    v31 = v49;
    goto LABEL_42;
  }

LABEL_44:
  __break(1u);
  return result;
}

void sub_258E1428C(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  [*a1 assetSource];
  v4 = BMUAFAssetUAFAssetSourceAsString();
  v5 = sub_258F0A4F0();
  v44 = v6;
  v45 = v5;

  v43 = [v3 isAssetPathValid];
  v7 = [v3 assetSpecifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_258F0A4F0();
    v41 = v10;
    v42 = v9;
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  v11 = [v3 assetName];
  if (v11)
  {
    v12 = v11;
    v39 = sub_258F0A4F0();
    v40 = v13;
  }

  else
  {
    v39 = 0x676E697373696DLL;
    v40 = 0xE700000000000000;
  }

  v14 = [v3 assetVersion];
  if (v14)
  {
    v15 = v14;
    v16 = sub_258F0A4F0();
    v37 = v17;
    v38 = v16;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v36 = [v3 assetDownloadSizeInBytes];
  v35 = [v3 assetUnarchivedSizeInBytes];
  v18 = [v3 assetPath];
  if (v18)
  {
    v19 = v18;
    v20 = sub_258F0A4F0();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = 0x4E574F4E4B4E55;
  v24 = [v3 assetLocale];
  if (v24 && (v25 = v24, v26 = [v24 languageCode], v25, v26))
  {
    v27 = sub_258F0A4F0();
    v29 = v28;
  }

  else
  {
    v29 = 0xE700000000000000;
    v27 = 0x4E574F4E4B4E55;
  }

  v30 = [v3 assetLocale];
  if (v30 && (v31 = v30, v32 = [v30 countryCode], v31, v32))
  {
    v23 = sub_258F0A4F0();
    v34 = v33;
  }

  else
  {
    v34 = 0xE700000000000000;
  }

  *a2 = v45;
  *(a2 + 8) = v44;
  *(a2 + 16) = v43;
  *(a2 + 24) = v42;
  *(a2 + 32) = v41;
  *(a2 + 40) = v39;
  *(a2 + 48) = v40;
  *(a2 + 56) = v38;
  *(a2 + 64) = v37;
  *(a2 + 72) = v36;
  *(a2 + 80) = v35;
  *(a2 + 88) = v20;
  *(a2 + 96) = v22;
  *(a2 + 104) = v27;
  *(a2 + 112) = v29;
  *(a2 + 120) = v23;
  *(a2 + 128) = v34;
}

uint64_t sub_258E14538@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = [*a1 subscriptionName];
  if (v3)
  {
    v4 = v3;
    v60 = sub_258F0A4F0();
    v61 = v5;
  }

  else
  {
    v60 = 0x6E776F6E6B6E75;
    v61 = 0xE700000000000000;
  }

  v63 = v2;
  v6 = [v2 assetSetIndices];
  sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
  v7 = sub_258F0A6B0();

  if (v7 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_258F0AA20())
  {
    if (i)
    {
      v74 = MEMORY[0x277D84F90];
      result = sub_258E14CD8(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        return result;
      }

      v10 = 0;
      v11 = v74;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x259C9E3B0](v10, v7);
        }

        else
        {
          v12 = *(v7 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = sub_258F0AEA0();

        v16 = *(v74 + 16);
        v15 = *(v74 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_258E14CD8((v15 > 1), v16 + 1, 1);
        }

        ++v10;
        *(v74 + 16) = v16 + 1;
        *(v74 + 4 * v16 + 32) = v14;
      }

      while (i != v10);
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }

    v17 = v63;
    v18 = [v63 assetSetUsages];
    sub_258DEB8C8(0, &qword_27F988E60, 0x277CF16C8);
    v19 = sub_258F0A6B0();

    v71 = v11;
    if (v19 >> 62)
    {
      break;
    }

    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_40;
    }

LABEL_19:
    v75 = MEMORY[0x277D84F90];
    result = sub_258E14CA0(0, v20 & ~(v20 >> 63), 0);
    if (v20 < 0)
    {
      goto LABEL_66;
    }

    v21 = 0;
    v22 = v75;
    v72 = v19 & 0xC000000000000001;
    v65 = v19 & 0xFFFFFFFFFFFFFF8;
    v67 = v20;
    v69 = v19;
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v72)
      {
        v24 = v22;
        v25 = MEMORY[0x259C9E3B0](v21, v19);
      }

      else
      {
        if (v21 >= *(v65 + 16))
        {
          goto LABEL_37;
        }

        v24 = v22;
        v25 = *(v19 + 8 * v21 + 32);
      }

      v26 = v25;
      v27 = [v25 usageName];
      if (v27)
      {
        v28 = v27;
        v29 = sub_258F0A4F0();
        v31 = v30;
      }

      else
      {
        v31 = 0xE700000000000000;
        v29 = 0x6E776F6E6B6E75;
      }

      v32 = [v26 usageValue];
      if (v32)
      {
        v33 = v32;
        v34 = sub_258F0A4F0();
        v7 = v35;
      }

      else
      {

        v7 = 0xE700000000000000;
        v34 = 0x6E776F6E6B6E75;
      }

      v22 = v24;
      v76 = v24;
      v36 = *(v24 + 16);
      v37 = *(v22 + 24);
      if (v36 >= v37 >> 1)
      {
        sub_258E14CA0((v37 > 1), v36 + 1, 1);
        v22 = v76;
      }

      *(v22 + 16) = v36 + 1;
      v38 = (v22 + 32 * v36);
      v38[4] = v29;
      v38[5] = v31;
      v38[6] = v34;
      v38[7] = v7;
      ++v21;
      v19 = v69;
      if (v23 == v67)
      {
        v59 = v22;

        v11 = v71;
        v17 = v63;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v20 = sub_258F0AA20();
  if (v20)
  {
    goto LABEL_19;
  }

LABEL_40:

  v59 = MEMORY[0x277D84F90];
LABEL_41:
  v39 = [v17 usageAliases];
  sub_258DEB8C8(0, &qword_27F988E68, 0x277CF16D8);
  v40 = sub_258F0A6B0();

  if (v40 >> 62)
  {
    goto LABEL_62;
  }

  for (j = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_258F0AA20())
  {
    v77 = MEMORY[0x277D84F90];
    result = sub_258E14C68(0, j & ~(j >> 63), 0);
    if (j < 0)
    {
      goto LABEL_67;
    }

    v42 = 0;
    v43 = v77;
    v68 = v40;
    v70 = v40 & 0xC000000000000001;
    v64 = (v40 & 0xFFFFFFFFFFFFFF8);
    v66 = j;
    while (1)
    {
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v70)
      {
        v45 = MEMORY[0x259C9E3B0](v42, v40);
      }

      else
      {
        if (v42 >= v64[2])
        {
          goto LABEL_61;
        }

        v45 = *(v40 + 8 * v42 + 32);
      }

      v46 = v45;
      v47 = [v45 aliasValue];
      if (v47)
      {
        v48 = v47;
        v49 = sub_258F0A4F0();
        v73 = v50;
      }

      else
      {
        v73 = 0xE700000000000000;
        v49 = 0x6E776F6E6B6E75;
      }

      v51 = [v46 aliasName];
      if (v51)
      {
        v52 = v51;
        v53 = sub_258F0A4F0();
        v55 = v54;
      }

      else
      {

        v55 = 0xE700000000000000;
        v53 = 0x6E776F6E6B6E75;
      }

      v57 = *(v77 + 16);
      v56 = *(v77 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_258E14C68((v56 > 1), v57 + 1, 1);
      }

      *(v77 + 16) = v57 + 1;
      v58 = (v77 + 32 * v57);
      v11 = v71;
      v58[4] = v49;
      v58[5] = v73;
      v58[6] = v53;
      v58[7] = v55;
      ++v42;
      v40 = v68;
      if (v44 == v66)
      {

        goto LABEL_64;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

  v43 = MEMORY[0x277D84F90];
LABEL_64:
  *a2 = v60;
  a2[1] = v61;
  a2[2] = v11;
  a2[3] = v59;
  a2[4] = v43;
  return result;
}

char *sub_258E14B68(char *a1, int64_t a2, char a3)
{
  result = sub_258E14DFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}