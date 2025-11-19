uint64_t sub_1D1623D04(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D16272B4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D1623E1C(v6);
  return sub_1D1670384();
}

uint64_t sub_1D1623D80(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1D1623F30(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

void sub_1D1623E1C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D1670584();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
        v6 = sub_1D166FCA4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D16249F0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1D1624110(0, v2, 1, a1);
  }
}

uint64_t sub_1D1623F30(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1D1670584();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1D166FCA4();
        *(v10 + 16) = v7 / 2;
      }

      v12[0] = v10 + 32;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_1D1624040(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_1D16705D4(), (result & 1) == 0))
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

void sub_1D1624110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v20 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_5:
    v18 = v4;
    v19 = a3;
    v6 = *(v20 + 8 * a3);
    v17 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 identifier];
      v11 = [v10 rawIdentifier];

      v12 = [v9 identifier];
      v13 = [v12 rawIdentifier];

      if (v11 >= v13)
      {
LABEL_4:
        a3 = v19 + 1;
        v4 = v18 + 8;
        v5 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v20)
      {
        break;
      }

      v14 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v14;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D1624244(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v4 = (*a4 + 24 * a3);
    v5 = result - a3;
LABEL_6:
    v23 = v4;
    v24 = a3;
    v6 = (v25 + 24 * a3);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v22 = v5;
    while (1)
    {
      v10 = *(v4 - 3);
      v26 = *(v4 - 2);
      v11 = *(v4 - 1);

      v12 = MedicationRouteFormConcept.displayString.getter();
      v14 = v13;
      if (v12 == MedicationRouteFormConcept.displayString.getter() && v14 == v15)
      {

LABEL_5:
        a3 = v24 + 1;
        v4 = v23 + 3;
        v5 = v22 - 1;
        if (v24 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v16 = sub_1D16705D4();

      if ((v16 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v25)
      {
        break;
      }

      v18 = *v4;
      v17 = v4[1];
      v19 = v4[2];
      *v4 = *(v4 - 3);
      v4[2] = *(v4 - 1);
      *(v4 - 2) = v17;
      *(v4 - 1) = v19;
      *(v4 - 3) = v18;
      v4 -= 3;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1624414(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
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
      result = sub_1D1626448(v8);
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
        sub_1D16259D8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
  v8 = MEMORY[0x1E69E7CC0];
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
        result = sub_1D16705D4();
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
            result = sub_1D16705D4();
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
      result = sub_1D15ECC40(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1D15ECC40((v39 > 1), v40 + 1, 1, v8);
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
        sub_1D16259D8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D1626448(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1D16263BC(v44);
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
    if (v37 || (result = sub_1D16705D4(), (result & 1) == 0))
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

void sub_1D16249F0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v5 = sub_1D1626448(v5);
    }

    v96 = *(v5 + 2);
    if (v96 >= 2)
    {
      do
      {
        v97 = *v7;
        if (!*v7)
        {
          goto LABEL_125;
        }

        v7 = (v96 - 1);
        v98 = *&v5[16 * v96];
        v99 = *&v5[16 * v96 + 24];
        sub_1D1625C00((v97 + 8 * v98), (v97 + 8 * *&v5[16 * v96 + 16]), (v97 + 8 * v99), v10);
        if (v6)
        {
          break;
        }

        if (v99 < v98)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1D1626448(v5);
        }

        if (v96 - 2 >= *(v5 + 2))
        {
          goto LABEL_115;
        }

        v100 = &v5[16 * v96];
        *v100 = v98;
        *(v100 + 1) = v99;
        sub_1D16263BC(v96 - 1);
        v96 = *(v5 + 2);
        v7 = a3;
      }

      while (v96 > 1);
    }

LABEL_99:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v110 = v8;
      v106 = v6;
      v5 = v9;
      v102 = 8 * v9;
      v13 = (*v7 + 8 * v9);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = *(*v7 + 8 * v12);
      v17 = v15;
      v18 = [v16 identifier];
      v114 = [v18 rawIdentifier];

      v19 = [v17 identifier];
      v112 = [v19 rawIdentifier];

      v104 = v5;
      v20 = v5 + 2;
      while (1)
      {
        v12 = v110;
        if (v110 == v20)
        {
          break;
        }

        v21 = *(v14 - 1);
        v22 = *v14;
        v23 = v21;
        v24 = [v22 identifier];
        v5 = v10;
        v25 = [v24 rawIdentifier];

        v26 = [v23 identifier];
        v27 = [v26 rawIdentifier];

        v28 = v25 < v27;
        v10 = v5;
        v29 = !v28;
        ++v20;
        ++v14;
        if ((((v114 < v112) ^ v29) & 1) == 0)
        {
          v12 = (v20 - 1);
          break;
        }
      }

      v11 = v104;
      v6 = v106;
      v7 = a3;
      v30 = v102;
      if (v114 < v112)
      {
        if (v12 < v104)
        {
          goto LABEL_118;
        }

        if (v104 < v12)
        {
          v31 = 8 * v12 - 8;
          v32 = v12;
          v33 = v104;
          do
          {
            if (v33 != --v32)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v34 = *(v35 + v30);
              *(v35 + v30) = *(v35 + v31);
              *(v35 + v31) = v34;
            }

            ++v33;
            v31 -= 8;
            v30 += 8;
          }

          while (v33 < v32);
        }
      }
    }

    v36 = v7[1];
    if (v12 < v36)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_117;
      }

      if (v12 - v11 < a4)
      {
        v37 = &v11[a4];
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v37 >= v36)
        {
          v37 = v7[1];
        }

        if (v37 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v12 != v37)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v12 < v11)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D15ECC40(0, *(v10 + 2) + 1, 1, v10);
    }

    v51 = *(v10 + 2);
    v50 = *(v10 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      v10 = sub_1D15ECC40((v50 > 1), v51 + 1, 1, v10);
    }

    *(v10 + 2) = v52;
    v53 = &v10[16 * v51];
    *(v53 + 4) = v11;
    *(v53 + 5) = v12;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v117 = v12;
    if (v51)
    {
      while (1)
      {
        v54 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v55 = *(v10 + 4);
          v56 = *(v10 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_58:
          if (v58)
          {
            goto LABEL_105;
          }

          v71 = &v10[16 * v52];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_108;
          }

          v77 = &v10[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_112;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v52 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v81 = &v10[16 * v52];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_72:
        if (v76)
        {
          goto LABEL_107;
        }

        v84 = &v10[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_110;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_79:
        v92 = v54 - 1;
        if (v54 - 1 >= v52)
        {
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
          goto LABEL_120;
        }

        if (!*v7)
        {
          goto LABEL_123;
        }

        v93 = *&v10[16 * v92 + 32];
        v94 = *&v10[16 * v54 + 40];
        sub_1D1625C00((*v7 + 8 * v93), (*v7 + 8 * *&v10[16 * v54 + 32]), (*v7 + 8 * v94), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v94 < v93)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D1626448(v10);
        }

        if (v92 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v95 = &v10[16 * v92];
        *(v95 + 4) = v93;
        *(v95 + 5) = v94;
        sub_1D16263BC(v54);
        v52 = *(v10 + 2);
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v10[16 * v52 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_103;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_104;
      }

      v66 = &v10[16 * v52];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_106;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_109;
      }

      if (v70 >= v62)
      {
        v88 = &v10[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_113;
        }

        if (v57 < v91)
        {
          v54 = v52 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v117;
    if (v117 >= v8)
    {
      goto LABEL_89;
    }
  }

  v103 = v10;
  v105 = v11;
  v107 = v6;
  v38 = *v7;
  v39 = *v7 + 8 * v12 - 8;
  v40 = &v11[-v12];
  v111 = v37;
LABEL_31:
  v115 = v39;
  v116 = v12;
  v41 = *(v38 + 8 * v12);
  v113 = v40;
  while (1)
  {
    v42 = *v39;
    v43 = v41;
    v44 = v42;
    v45 = [v43 identifier];
    v5 = [v45 rawIdentifier];

    v46 = [v44 identifier];
    v47 = [v46 rawIdentifier];

    if (v5 >= v47)
    {
LABEL_30:
      ++v12;
      v39 = v115 + 8;
      v40 = v113 - 1;
      if (v116 + 1 != v111)
      {
        goto LABEL_31;
      }

      v12 = v111;
      v11 = v105;
      v6 = v107;
      v7 = a3;
      v10 = v103;
      goto LABEL_38;
    }

    if (!v38)
    {
      break;
    }

    v48 = *v39;
    v41 = *(v39 + 8);
    *v39 = v41;
    *(v39 + 8) = v48;
    v39 -= 8;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_30;
    }
  }

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
}

uint64_t sub_1D162510C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v117 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v7 = *v117;
    if (!*v117)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_100:
      v109 = v5;
      v110 = *(v8 + 2);
      if (v110 >= 2)
      {
        while (*a3)
        {
          v111 = v8;
          v8 = (v110 - 1);
          v112 = *&v111[16 * v110];
          v5 = *&v111[16 * v110 + 24];
          sub_1D1625F60((*a3 + 24 * v112), (*a3 + 24 * *&v111[16 * v110 + 16]), *a3 + 24 * v5, v7);
          if (v109)
          {
          }

          if (v5 < v112)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = sub_1D1626448(v111);
          }

          if (v110 - 2 >= *(v111 + 2))
          {
            goto LABEL_125;
          }

          v113 = &v111[16 * v110];
          *v113 = v112;
          *(v113 + 1) = v5;
          result = sub_1D16263BC(v8);
          v8 = v111;
          v110 = *(v111 + 2);
          if (v110 <= 1)
          {
          }
        }

        goto LABEL_135;
      }
    }

LABEL_131:
    result = sub_1D1626448(v8);
    v8 = result;
    goto LABEL_100;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    v125 = v8;
    if ((v7 + 1) < v6)
    {
      v121 = v6;
      v115 = v5;
      v11 = *a3;
      v127 = v7 + 1;
      v12 = (*a3 + 24 * v10);
      v14 = *v12;
      v13 = v12[1];
      v7 = v12[2];
      v118 = v9;
      v15 = (*a3 + 24 * v9);
      v16 = *v15;
      v5 = v15[1];
      v17 = v15[2];

      v18 = MedicationRouteFormConcept.displayString.getter();
      v20 = v19;
      if (v18 == MedicationRouteFormConcept.displayString.getter() && v20 == v21)
      {
        v123 = 0;
      }

      else
      {
        v123 = sub_1D16705D4();
      }

      v22 = 0;
      v23 = v118 + 2;
      v24 = (v11 + 24 * v118 + 64);
      v8 = v125;
      v25 = v127;
      do
      {
        v10 = v23;
        v27 = v25;
        v28 = v22;
        if (v23 >= v121)
        {
          break;
        }

        v128 = v22;
        v131 = v25;
        v133 = v23;
        v7 = *v24;
        v5 = *(v24 - 5);
        v29 = *(v24 - 4);
        v30 = *(v24 - 3);
        v134 = *(v24 - 2);
        v135 = *(v24 - 1);

        v31 = MedicationRouteFormConcept.displayString.getter();
        v33 = v32;
        if (v31 != MedicationRouteFormConcept.displayString.getter())
        {
          goto LABEL_10;
        }

        if (v33 == v34)
        {
          v26 = 0;
        }

        else
        {
LABEL_10:
          v26 = sub_1D16705D4();
        }

        v27 = v131;
        v10 = v133;
        v23 = v133 + 1;
        v24 += 3;
        v25 = v131 + 1;
        v28 = v128;
        v22 = v128 + 24;
        v8 = v125;
      }

      while (((v123 ^ v26) & 1) == 0);
      if (v123)
      {
        v9 = v118;
        if (v10 < v118)
        {
          goto LABEL_128;
        }

        if (v118 < v10)
        {
          v35 = 0;
          v36 = v118;
          do
          {
            if (v36 != v27)
            {
              if (!*a3)
              {
                goto LABEL_134;
              }

              v38 = *a3 + 24 * v118;
              v39 = (v38 + v35);
              v40 = v38 + v28;
              v41 = *v39;
              v42 = *(v39 + 2);
              v43 = *(v40 + 40);
              *v39 = *(v40 + 24);
              *(v39 + 2) = v43;
              *(v40 + 24) = v41;
              *(v40 + 40) = v42;
            }

            ++v36;
            v28 -= 24;
            v35 += 24;
          }

          while (v36 < v27--);
        }

        v5 = v115;
      }

      else
      {
        v5 = v115;
        v9 = v118;
      }
    }

    v44 = a3[1];
    if (v10 < v44)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_127;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_47:
    if (v10 < v9)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D15ECC40(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v63 = *(v8 + 2);
    v62 = *(v8 + 3);
    v64 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      result = sub_1D15ECC40((v62 > 1), v63 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v64;
    v65 = &v8[16 * v63];
    *(v65 + 4) = v9;
    *(v65 + 5) = v10;
    v7 = v10;
    v66 = *v117;
    if (!*v117)
    {
      goto LABEL_136;
    }

    if (v63)
    {
      while (1)
      {
        v67 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v68 = *(v8 + 4);
          v69 = *(v8 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_67:
          if (v71)
          {
            goto LABEL_115;
          }

          v84 = &v8[16 * v64];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_118;
          }

          v90 = &v8[16 * v67 + 32];
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
              v67 = v64 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        v94 = &v8[16 * v64];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_81:
        if (v89)
        {
          goto LABEL_117;
        }

        v97 = &v8[16 * v67];
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

LABEL_88:
        v105 = v67 - 1;
        if (v67 - 1 >= v64)
        {
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

        if (!*a3)
        {
          goto LABEL_133;
        }

        v106 = *&v8[16 * v105 + 32];
        v107 = *&v8[16 * v67 + 40];
        sub_1D1625F60((*a3 + 24 * v106), (*a3 + 24 * *&v8[16 * v67 + 32]), *a3 + 24 * v107, v66);
        if (v5)
        {
        }

        if (v107 < v106)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D1626448(v8);
        }

        if (v105 >= *(v8 + 2))
        {
          goto LABEL_112;
        }

        v108 = &v8[16 * v105];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        result = sub_1D16263BC(v67);
        v64 = *(v8 + 2);
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v8[16 * v64 + 32];
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

      v79 = &v8[16 * v64];
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
        v101 = &v8[16 * v67 + 32];
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
          v67 = v64 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_67;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_98;
    }
  }

  v45 = &v9[a4];
  if (__OFADD__(v9, a4))
  {
    goto LABEL_129;
  }

  if (v45 >= v44)
  {
    v45 = a3[1];
  }

  if (v45 < v9)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (v10 == v45)
  {
    goto LABEL_47;
  }

  v116 = v5;
  v130 = *a3;
  v46 = (*a3 + 24 * v10);
  v119 = v9;
  v120 = v45;
  v47 = v9 - v10;
LABEL_38:
  v129 = v10;
  v48 = (v130 + 24 * v10);
  v50 = *v48;
  v49 = v48[1];
  v51 = v48[2];
  v122 = v47;
  v124 = v46;
  while (1)
  {
    v52 = *(v46 - 3);
    v132 = *(v46 - 2);
    v7 = *(v46 - 1);

    v53 = MedicationRouteFormConcept.displayString.getter();
    v55 = v54;
    if (v53 == MedicationRouteFormConcept.displayString.getter() && v55 == v56)
    {

LABEL_37:
      v10 = v129 + 1;
      v46 = v124 + 3;
      v47 = v122 - 1;
      if (v129 + 1 == v120)
      {
        v10 = v120;
        v5 = v116;
        v8 = v125;
        v9 = v119;
        goto LABEL_47;
      }

      goto LABEL_38;
    }

    v57 = sub_1D16705D4();

    if ((v57 & 1) == 0)
    {
      goto LABEL_37;
    }

    if (!v130)
    {
      break;
    }

    v59 = *v46;
    v58 = v46[1];
    v60 = v46[2];
    *v46 = *(v46 - 3);
    v46[2] = *(v46 - 1);
    *(v46 - 2) = v58;
    *(v46 - 1) = v60;
    *(v46 - 3) = v59;
    v46 -= 3;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_37;
    }
  }

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
  return result;
}

uint64_t sub_1D16259D8(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_1D16705D4() & 1) != 0)
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
      if (!v21 && (sub_1D16705D4() & 1) != 0)
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

uint64_t sub_1D1625C00(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v14 = a4;
    if (a4 != a2 || &a2[v11] <= a4)
    {
      v26 = a2;
      memmove(a4, a2, 8 * v11);
      a2 = v26;
    }

    v25 = a2;
    v44 = &v14[v11];
    if (v9 >= 8 && a2 > v5)
    {
      v43 = v14;
LABEL_27:
      __dst = v25;
      v27 = v25 - 1;
      v28 = v4 - 1;
      v29 = v44;
      v42 = v25 - 1;
      do
      {
        v30 = v28;
        v31 = (v28 + 1);
        v32 = *(v29 - 1);
        v29 -= 8;
        v33 = *v27;
        v34 = v32;
        v35 = v33;
        v36 = [v34 identifier];
        v37 = [v36 rawIdentifier];

        v38 = [v35 identifier];
        v39 = [v38 rawIdentifier];

        if (v37 < v39)
        {
          v4 = v30;
          if (v31 != __dst)
          {
            *v30 = *v42;
          }

          v14 = v43;
          if (v44 <= v43 || (v25 = v42, v42 <= v5))
          {
            v25 = v42;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v31 != v44)
        {
          *v30 = *v29;
        }

        v28 = v30 - 1;
        v44 = v29;
        v27 = v42;
      }

      while (v29 > v43);
      v44 = v29;
      v14 = v43;
      v25 = __dst;
    }
  }

  else
  {
    v12 = a2;
    if (a4 != __src || &__src[v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v8);
      a4 = v13;
    }

    v44 = &a4[v8];
    v14 = a4;
    if (v6 >= 8 && v12 < v4)
    {
      v15 = v12;
      while (1)
      {
        v16 = *v14;
        v17 = *v15;
        v18 = v16;
        v19 = [v17 identifier];
        v20 = [v19 rawIdentifier];

        v21 = [v18 identifier];
        v22 = [v21 rawIdentifier];

        if (v20 >= v22)
        {
          break;
        }

        v23 = v15;
        v24 = v5 == v15++;
        if (!v24)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v5;
        if (v14 >= v44 || v15 >= v4)
        {
          goto LABEL_20;
        }
      }

      v23 = v14;
      v24 = v5 == v14++;
      if (v24)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v23;
      goto LABEL_18;
    }

LABEL_20:
    v25 = v5;
  }

LABEL_38:
  if (v25 != v14 || v25 >= (v14 + ((v44 - v14 + (v44 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v25, v14, 8 * ((v44 - v14) / 8));
  }

  return 1;
}

uint64_t sub_1D1625F60(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __dst - __src;
  v8 = (__dst - __src) / 24;
  v9 = a3 - __dst;
  v10 = (a3 - __dst) / 24;
  if (v8 >= v10)
  {
    if (a4 != __dst || &__dst[24 * v10] <= a4)
    {
      memmove(a4, __dst, 24 * v10);
    }

    v51 = &v4[24 * v10];
    if (v9 >= 24 && v6 > __src)
    {
      v44 = v4;
LABEL_25:
      v43 = (v6 - 24);
      v27 = v5 - 24;
      v28 = v51;
      v49 = v6;
      do
      {
        v47 = v27;
        v30 = *(v28 - 3);
        v29 = *(v28 - 2);
        v28 -= 24;
        v32 = *(v6 - 3);
        v31 = *(v6 - 2);
        v33 = *(v6 - 1);
        v50 = *(v28 + 2);

        v34 = MedicationRouteFormConcept.displayString.getter();
        v36 = v35;
        if (v34 == MedicationRouteFormConcept.displayString.getter() && v36 == v37)
        {
          v38 = 0;
        }

        else
        {
          v38 = sub_1D16705D4();
        }

        if (v38)
        {
          v5 = v47;
          v4 = v44;
          if ((v47 + 24) != v49)
          {
            v40 = *v43;
            *(v47 + 16) = *(v43 + 16);
            *v47 = v40;
          }

          if (v51 <= v44 || (v6 = v43, v43 <= __src))
          {
            v6 = v43;
            goto LABEL_40;
          }

          goto LABEL_25;
        }

        v6 = v49;
        v4 = v44;
        if ((v47 + 24) != v51)
        {
          v39 = *v28;
          *(v47 + 16) = *(v28 + 2);
          *v47 = v39;
        }

        v27 = v47 - 24;
        v51 = v28;
      }

      while (v28 > v44);
      v51 = v28;
    }
  }

  else
  {
    v11 = __src;
    if (a4 != __src || &__src[24 * v8] <= a4)
    {
      memmove(a4, __src, 24 * v8);
    }

    v51 = &v4[24 * v8];
    if (v7 >= 24 && v6 < v5)
    {
      v46 = v5;
      while (1)
      {
        v13 = *v6;
        v12 = *(v6 + 1);
        v48 = v6;
        v14 = *(v6 + 2);
        v16 = *v4;
        v15 = *(v4 + 1);
        v17 = v4;
        v18 = *(v4 + 2);

        v19 = MedicationRouteFormConcept.displayString.getter();
        v21 = v20;
        if (v19 == MedicationRouteFormConcept.displayString.getter() && v21 == v22)
        {
          break;
        }

        v23 = sub_1D16705D4();

        if ((v23 & 1) == 0)
        {
          goto LABEL_14;
        }

        v24 = v48;
        v6 = v48 + 24;
        v4 = v17;
        v25 = v46;
        if (v11 != v48)
        {
          goto LABEL_15;
        }

LABEL_16:
        v11 += 24;
        if (v4 >= v51 || v6 >= v25)
        {
          goto LABEL_18;
        }
      }

LABEL_14:
      v24 = v17;
      v4 = v17 + 24;
      v6 = v48;
      v25 = v46;
      if (v11 == v17)
      {
        goto LABEL_16;
      }

LABEL_15:
      v26 = *v24;
      *(v11 + 2) = *(v24 + 2);
      *v11 = v26;
      goto LABEL_16;
    }

LABEL_18:
    v6 = v11;
  }

LABEL_40:
  v41 = (v51 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v41])
  {
    memmove(v6, v4, 24 * v41);
  }

  return 1;
}

uint64_t sub_1D16263BC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D1626448(v3);
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

char *sub_1D162645C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D16280C8(0, &qword_1EC63D790, sub_1D15EE4BC, MEMORY[0x1E69E6F90]);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1D1626584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D1627CE8();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a4;
  sub_1D1627D98();
  result = sub_1D166FBE4();
  if (!a2)
  {
    (*(v10 + 32))(a1, v13, v9);
    return 0;
  }

  if (!a3)
  {
LABEL_10:
    (*(v10 + 32))(a1, v13, v9);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    sub_1D1627DEC();
    v15 = 0;
    while (1)
    {
      sub_1D1670104();
      if (v17)
      {
        break;
      }

      *(a2 + 8 * v15) = v16[1];
      if (a3 - 1 == v15)
      {
        goto LABEL_10;
      }

      if (__OFADD__(++v15, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    (*(v10 + 32))(a1, v13, v9);
    return v15;
  }

  __break(1u);
  return result;
}

void *sub_1D1626738(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 24 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v20 = v18[2];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1D16268B8(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void sub_1D1626A14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_1D1670224();
    MEMORY[0x1D388D890](v8);
    v3 = sub_1D1670224();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1D388D890](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x1D388D4D0](i, a2);
      sub_1D16700B4();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1D16700B4();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1D1626B04(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1D1670224();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1D1622EC0(v3, 0);
  sub_1D16270C4((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D1626B98(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1670224();
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
      result = sub_1D1670224();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D1627F28(0, &qword_1EDECAE00, &unk_1EDECACE0, 0x1E696C280, MEMORY[0x1E69E62F8]);
          sub_1D1628064(&qword_1EC63DD98, &qword_1EDECAE00, &unk_1EDECACE0, 0x1E696C280);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D15FFD9C(v13, i, a3);
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
        sub_1D15EE5A8(0, &unk_1EDECACE0, 0x1E696C280);
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

uint64_t sub_1D1626D60(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1670224();
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
      result = sub_1D1670224();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D16280C8(0, &qword_1EC63DD88, type metadata accessor for ScheduleItem, MEMORY[0x1E69E62F8]);
          sub_1D162812C();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D1600838(v13, i, a3);
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
        type metadata accessor for ScheduleItem();
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

uint64_t sub_1D1626EFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1670224();
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
      result = sub_1D1670224();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D1627F28(0, &qword_1EC63DD78, &qword_1EC63DD70, 0x1E69A3B28, MEMORY[0x1E69E62F8]);
          sub_1D1628064(&qword_1EC63DD80, &qword_1EC63DD78, &qword_1EC63DD70, 0x1E69A3B28);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D16008C0(v13, i, a3);
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
        sub_1D15EE5A8(0, &qword_1EC63DD70, 0x1E69A3B28);
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

uint64_t sub_1D16270C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1670224();
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
      result = sub_1D1670224();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D1627F28(0, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010, MEMORY[0x1E69E62F8]);
          sub_1D1628064(&qword_1EC63DD58, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D16008C0(v13, i, a3);
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
        sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
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

uint64_t _s27HealthMedicationsExperience21MedicationGroupingKeyV2eeoiySbAC_ACtFZ_0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 ingredientProducts];
  sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
  v5 = sub_1D166FC54();

  v6 = [v3 ingredientProducts];
  v7 = sub_1D166FC54();

  LOBYTE(v6) = sub_1D16205B0(v5, v7, &qword_1EC63DA98, 0x1E696C010);

  if (v6)
  {
    v8 = [v2 tradeNameProduct];
    v9 = [v3 tradeNameProduct];
    v10 = v9;
    if (v8)
    {
      if (v9)
      {
        v11 = sub_1D16700A4();
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      if (!v9)
      {
        v11 = 1;
        return v11 & 1;
      }

      v11 = 0;
      v8 = v9;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1D162744C(unint64_t a1)
{
  v1 = a1;
  v33 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_1D1670224();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v28 = v1 & 0xFFFFFFFFFFFFFF8;
      v29 = v1 & 0xC000000000000001;
      v4 = MEMORY[0x1E69E7CC8];
      v27 = v2;
      while (1)
      {
        if (v29)
        {
          v7 = MEMORY[0x1D388D4D0](v3, v1);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v3 >= *(v28 + 16))
          {
            goto LABEL_21;
          }

          v7 = *(v1 + 8 * v3 + 32);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v30 = v8;
        v9 = v1;
        v10 = v7;
        v11 = [v7 routedDoseFormProducts];
        sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
        v12 = sub_1D166FC54();

        MedicationRouteFormConcept.init(_:)(v12);
        v1 = sub_1D160643C(v31, *(&v31 + 1), v32);
        v14 = v4[2];
        v15 = (v13 & 1) == 0;
        v16 = v14 + v15;
        if (__OFADD__(v14, v15))
        {
          goto LABEL_22;
        }

        v17 = v13;
        if (v4[3] < v16)
        {
          sub_1D160774C(v16, 1);
          v4 = v33;
          v18 = sub_1D160643C(v31, *(&v31 + 1), v32);
          if ((v17 & 1) != (v19 & 1))
          {
            result = sub_1D1670634();
            __break(1u);
            return result;
          }

          v1 = v18;
        }

        if (v17)
        {

          v6 = (v4[7] + 8 * v1);
          MEMORY[0x1D388CE10](v5);
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v25 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1D166FC84();
          }

          sub_1D166FCC4();
        }

        else
        {
          sub_1D1628014(0, &qword_1EDECB330, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_1D16721C0;
          *(v20 + 32) = v10;
          v4[(v1 >> 6) + 8] |= 1 << v1;
          v21 = v4[6] + 24 * v1;
          *v21 = v31;
          *(v21 + 16) = v32;
          *(v4[7] + 8 * v1) = v20;
          v22 = v4[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_23;
          }

          v4[2] = v24;
        }

        v1 = v9;
        ++v3;
        if (v30 == v27)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1D162775C(unint64_t a1)
{
  v25 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_30:
    v2 = sub_1D1670224();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D388D4D0](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v6 = *(a1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        if ([v6 meds_isClinicalProduct])
        {
          break;
        }

        if ([v7 meds_isSpecificProduct])
        {
          v9 = [v7 firstConceptOfRelationshipType_];
          if (v9)
          {
            goto LABEL_16;
          }
        }

        v10 = 0;
LABEL_18:
        v12 = sub_1D16064D0(v10);
        v13 = v4[2];
        v14 = (v11 & 1) == 0;
        v15 = v13 + v14;
        if (__OFADD__(v13, v14))
        {
          goto LABEL_28;
        }

        v16 = v11;
        if (v4[3] < v15)
        {
          sub_1D1607ACC(v15, 1);
          v4 = v25;
          v17 = sub_1D16064D0(v10);
          if ((v16 & 1) != (v18 & 1))
          {
            sub_1D1627F28(0, &qword_1EC63DB08, &qword_1EC63DB10, 0x1E696C020, MEMORY[0x1E69E6720]);
            result = sub_1D1670634();
            __break(1u);
            return result;
          }

          v12 = v17;
        }

        if (v16)
        {

          v5 = (v4[7] + 8 * v12);
          MEMORY[0x1D388CE10]();
          if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v23 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1D166FC84();
          }

          sub_1D166FCC4();
        }

        else
        {
          sub_1D1628014(0, &qword_1EDECB330, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_1D16721C0;
          *(v19 + 32) = v7;
          v4[(v12 >> 6) + 8] |= 1 << v12;
          *(v4[6] + 8 * v12) = v10;
          *(v4[7] + 8 * v12) = v19;
          v20 = v4[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_29;
          }

          v4[2] = v22;
        }

        ++v3;
        if (v8 == v2)
        {
          return v4;
        }
      }

      v9 = v7;
LABEL_16:
      v10 = [v9 identifier];

      goto LABEL_18;
    }
  }

  return MEMORY[0x1E69E7CC8];
}

unint64_t sub_1D1627A78()
{
  result = qword_1EC63DD10;
  if (!qword_1EC63DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DD10);
  }

  return result;
}

unint64_t sub_1D1627AD0()
{
  result = qword_1EC63DD18;
  if (!qword_1EC63DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DD18);
  }

  return result;
}

unint64_t sub_1D1627B28()
{
  result = qword_1EC63DD20;
  if (!qword_1EC63DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DD20);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D1627BAC(uint64_t *a1, int a2)
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

uint64_t sub_1D1627BF4(uint64_t result, int a2, int a3)
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

uint64_t sub_1D1627C54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1D1627C9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D1627CE8()
{
  if (!qword_1EC63DD28)
  {
    sub_1D1627D44();
    v0 = sub_1D166F884();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DD28);
    }
  }
}

unint64_t sub_1D1627D44()
{
  result = qword_1EC63DD30;
  if (!qword_1EC63DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DD30);
  }

  return result;
}

unint64_t sub_1D1627D98()
{
  result = qword_1EC63DD38;
  if (!qword_1EC63DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DD38);
  }

  return result;
}

unint64_t sub_1D1627DEC()
{
  result = qword_1EC63DD40;
  if (!qword_1EC63DD40)
  {
    sub_1D1627CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DD40);
  }

  return result;
}

void sub_1D1627E44()
{
  if (!qword_1EDEC9D48)
  {
    sub_1D1628014(255, &qword_1EDECAE20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v0 = sub_1D16705A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC9D48);
    }
  }
}

void sub_1D1627EC0()
{
  if (!qword_1EC63DD50)
  {
    type metadata accessor for HKMedicationFreeTextFormTypeCode(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63DD50);
    }
  }
}

void sub_1D1627F28(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D15EE5A8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D1627F90()
{
  if (!qword_1EC63DD68)
  {
    sub_1D1627F28(255, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010, MEMORY[0x1E69E62F8]);
    v0 = sub_1D16705A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DD68);
    }
  }
}

void sub_1D1628014(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D1628064(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D1627F28(255, a2, a3, a4, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D16280C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D162812C()
{
  result = qword_1EC63DD90;
  if (!qword_1EC63DD90)
  {
    sub_1D16280C8(255, &qword_1EC63DD88, type metadata accessor for ScheduleItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DD90);
  }

  return result;
}

unint64_t sub_1D162826C()
{
  result = qword_1EDEC9DD0;
  if (!qword_1EDEC9DD0)
  {
    type metadata accessor for LogStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC9DD0);
  }

  return result;
}

id MedicationRoomInteractionEvent.__allocating_init(action:roomType:provenance:calendarCache:hasSideEffectsContent:hasPregnancyContent:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 56) = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  if (qword_1EDECB1C0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDECAD88;
  v14 = *(off_1EDECB1C8 + 2);
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDECAD90;
  v16 = type metadata accessor for MedicationsSettingsManager();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1D163E808(v14, 0, v15);

  *(v12 + 64) = v19;
  result = [a4 currentCalendar];
  if (result)
  {
    v21 = result;

    *(v12 + 16) = v21;
    *(v12 + 24) = a1;
    *(v12 + 32) = a2;
    *(v12 + 40) = a3;
    *(v12 + 48) = a5 & 1;
    *(v12 + 49) = a6 & 1;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1628440(uint64_t a1)
{
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D1670224();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v31 = MEMORY[0x1E69E7CC0];
    sub_1D16703A4();
    result = sub_1D16701D4();
    v28 = result;
    v29 = v4;
    v30 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1D16703A4();
  v5 = -1 << *(a1 + 32);
  result = sub_1D16701A4();
  v6 = *(a1 + 36);
  v28 = result;
  v29 = v6;
  v30 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v28;
    v10 = v29;
    v12 = v30;
    sub_1D162B204(v28, v29, v30, a1);
    v14 = v13;
    v15 = [v13 severity];

    sub_1D1670374();
    v16 = *(v31 + 16);
    sub_1D16703B4();
    sub_1D16703C4();
    result = sub_1D1670384();
    if (v26)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (sub_1D16701F4())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_1D162CF50();
      v8 = sub_1D166FE24();
      sub_1D1670264();
      result = v8(v27, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_1D162CFE4(v28, v29, v30);
        return v31;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v17 = 1 << *(a1 + 32);
      if (v11 >= v17)
      {
        goto LABEL_32;
      }

      v18 = v11 >> 6;
      v19 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v19 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v20 = v19 & (-2 << (v11 & 0x3F));
      if (v20)
      {
        v17 = __clz(__rbit64(v20)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v18 << 6;
        v22 = v18 + 1;
        v23 = (a1 + 64 + 8 * v18);
        while (v22 < (v17 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1D162CFE4(v11, v10, 0);
            v17 = __clz(__rbit64(v24)) + v21;
            goto LABEL_27;
          }
        }

        result = sub_1D162CFE4(v11, v10, 0);
      }

LABEL_27:
      v28 = v17;
      v29 = v10;
      v30 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1D162874C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D16701E4();
    sub_1D15EE5A8(0, &qword_1EC63DE20, 0x1E69A3AC8);
    sub_1D162CDE8(&qword_1EC63DE28, &qword_1EC63DE20, 0x1E69A3AC8);
    result = sub_1D166FE54();
    v3 = v49[4];
    v5 = v49[5];
    v6 = v49[6];
    v7 = v49[7];
    v8 = v49[8];
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  v47 = MEMORY[0x1E69E7CC0];
  v42 = v3;
  v44 = v5;
  while (v3 < 0)
  {
    v17 = sub_1D1670254();
    if (!v17)
    {
      goto LABEL_48;
    }

    v49[10] = v17;
    sub_1D15EE5A8(0, &qword_1EC63DE20, 0x1E69A3AC8);
    swift_dynamicCast();
    v16 = v49[0];
    v15 = v7;
    v46 = v8;
    if (!v49[0])
    {
      goto LABEL_48;
    }

LABEL_18:
    v18 = [v16 interactions];
    sub_1D15EE5A8(0, &qword_1EC63DE30, 0x1E69A3AA0);
    sub_1D162CDE8(&qword_1EC63DE38, &qword_1EC63DE30, 0x1E69A3AA0);
    v19 = sub_1D166FE04();

    v20 = sub_1D1628440(v19);

    v21 = v20 >> 62;
    if (v20 >> 62)
    {
      v22 = sub_1D1670224();
    }

    else
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v47;
    v24 = v47 >> 62;
    v48 = v22;
    if (v47 >> 62)
    {
      v41 = sub_1D1670224();
      v26 = v41 + v48;
      if (__OFADD__(v41, v48))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        sub_1D160FD3C();
        return v47;
      }
    }

    else
    {
      v25 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v26 = v25 + v22;
      if (__OFADD__(v25, v22))
      {
        goto LABEL_47;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v24)
      {
LABEL_29:
        sub_1D1670224();
      }

      else
      {
        v27 = v47 & 0xFFFFFFFFFFFFFF8;
LABEL_28:
        v28 = *(v27 + 16);
      }

      result = sub_1D1670304();
      v23 = result;
      v27 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_31;
    }

    if (v24)
    {
      goto LABEL_29;
    }

    v27 = v47 & 0xFFFFFFFFFFFFFF8;
    if (v26 > *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_28;
    }

LABEL_31:
    v29 = *(v27 + 16);
    v30 = *(v27 + 24);
    if (v21)
    {
      v32 = v27;
      result = sub_1D1670224();
      v27 = v32;
      v31 = result;
    }

    else
    {
      v31 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v47 = v23;
    if (v31)
    {
      if (((v30 >> 1) - v29) < v48)
      {
        goto LABEL_51;
      }

      v45 = v2;
      v33 = v27 + 8 * v29 + 32;
      v43 = v27;
      if (v21)
      {
        if (v31 < 1)
        {
          goto LABEL_53;
        }

        sub_1D162CEA0();
        sub_1D162CF08(&qword_1EC63DE50, sub_1D162CEA0);
        for (i = 0; i != v31; ++i)
        {
          v35 = sub_1D16008C0(v49, i, v20);
          v37 = *v36;
          (v35)(v49, 0);
          *(v33 + 8 * i) = v37;
        }
      }

      else
      {
        sub_1D15EE5A8(0, &qword_1EC63DE40, 0x1E69A3AA8);
        swift_arrayInitWithCopy();
      }

      v2 = v45;
      v7 = v15;
      v8 = v46;
      v3 = v42;
      v12 = (v6 + 64) >> 6;
      v5 = v44;
      if (v48 >= 1)
      {
        v38 = *(v43 + 16);
        v39 = __OFADD__(v38, v48);
        v40 = v38 + v48;
        if (v39)
        {
          goto LABEL_52;
        }

        *(v43 + 16) = v40;
        v7 = v15;
        v8 = v46;
      }
    }

    else
    {

      v7 = v15;
      v8 = v46;
      v12 = (v6 + 64) >> 6;
      v5 = v44;
      if (v48 > 0)
      {
        goto LABEL_50;
      }
    }
  }

  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_14:
    v46 = (v14 - 1) & v14;
    v16 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v16)
    {
      goto LABEL_48;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_48;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

id MedicationRoomInteractionEvent.init(action:roomType:provenance:calendarCache:hasSideEffectsContent:hasPregnancyContent:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, char a6)
{
  v7 = v6;
  *(v6 + 56) = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  if (qword_1EDECB1C0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDECAD88;
  v15 = *(off_1EDECB1C8 + 2);
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDECAD90;
  v17 = type metadata accessor for MedicationsSettingsManager();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_1D163E808(v15, 0, v16);

  *(v7 + 64) = v20;
  result = [a4 currentCalendar];
  if (result)
  {
    v22 = result;

    *(v7 + 16) = v22;
    *(v7 + 24) = a1;
    *(v7 + 32) = a2;
    *(v7 + 40) = a3;
    *(v7 + 48) = a5 & 1;
    *(v7 + 49) = a6 & 1;
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1628DC8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D16702D4();
  MEMORY[0x1D388CCF0](0xD000000000000051, 0x80000001D16776A0);
  MEMORY[0x1D388CCF0](v1, v2);
  return 0;
}

uint64_t sub_1D1628ECC(void *a1)
{
  v3 = *v1;
  v4 = sub_1D166F4E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 healthDataSource])
  {
    swift_unknownObjectRelease();
    v50 = sub_1D162B684(MEMORY[0x1E69E7CC0]);
    if (qword_1EDECB1C0 != -1)
    {
      swift_once();
    }

    v9 = off_1EDECB1C8;
    sub_1D162B79C();
    swift_getKeyPath();
    swift_getKeyPath();
    *&v47[0] = v9;

    sub_1D166F384();

    v10 = sub_1D166F4A4();

    if (v10 >> 62)
    {
      v11 = sub_1D1670224();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x1E69E6370];
    v49 = MEMORY[0x1E69E6370];
    LOBYTE(v48) = v11 > 0;
    sub_1D15FA184(&v48, v47);
    v13 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v13;
    sub_1D1608EE4(v47, 0x4C7364654D736168, 0xEB00000000747369, isUniquelyReferenced_nonNull_native);
    v15 = v46;
    v50 = v46;
    v16 = *MEMORY[0x1E696B4C8];
    v17 = sub_1D166FA04();
    v19 = v18;
    v20 = &property descriptor for MedicationView.config;
    v21 = [a1 environmentDataSource];
    v22 = [v21 activePairedDeviceProductType];

    if (v22)
    {
      v23 = sub_1D166FA04();
      v24 = v12;
      v26 = v25;

      v49 = MEMORY[0x1E69E6158];
      *&v48 = v23;
      *(&v48 + 1) = v26;
      v12 = v24;
      v20 = &property descriptor for MedicationView.config;
      sub_1D15FA184(&v48, v47);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v46 = v15;
      sub_1D1608EE4(v47, v17, v19, v27);

      v28 = v46;
      v50 = v46;
    }

    else
    {
      sub_1D162B160(v17, v19, &v48);

      sub_1D162B804(&v48);
      v28 = v50;
    }

    v38 = *MEMORY[0x1E696B500];
    v39 = sub_1D166FA04();
    v41 = v40;
    v42 = [a1 v20[308]];
    v43 = [v42 isImproveHealthAndActivityEnabled];

    v49 = v12;
    LOBYTE(v48) = v43;
    sub_1D15FA184(&v48, v47);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v28;
    sub_1D1608EE4(v47, v39, v41, v44);

    return v46;
  }

  else
  {
    sub_1D166F4C4();
    v29 = sub_1D166F4D4();
    v30 = sub_1D166FF54();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v48 = v32;
      *v31 = 136446210;
      v33 = sub_1D1670754();
      v35 = sub_1D15F7A30(v33, v34, &v48);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1D15E6000, v29, v30, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1D388E250](v32, -1, -1);
      MEMORY[0x1D388E250](v31, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    sub_1D162B428();
    swift_allocError();
    *v36 = 0xD00000000000002CLL;
    v36[1] = 0x80000001D1677560;
    return swift_willThrow();
  }
}

uint64_t sub_1D16293F4(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = sub_1D166F4E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1D166F174();
  v11 = *(v96 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v14 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 healthDataSource];
  if (v15)
  {
    v16 = v15;
    v94 = v11;
    v95 = v2;
    v17 = sub_1D162B684(MEMORY[0x1E69E7CC0]);
    v97 = [objc_allocWithZone(MEMORY[0x1E69A3AB0]) initWithDataSource_];
    v18 = v3[5];
    v19 = HKStringFromMedicationRoomProvenance();
    v20 = sub_1D166FA04();
    v22 = v21;

    v23 = MEMORY[0x1E69E6158];
    v101 = MEMORY[0x1E69E6158];
    *&v100 = v20;
    *(&v100 + 1) = v22;
    sub_1D15FA184(&v100, v99);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = v17;
    sub_1D1608EE4(v99, 0x6E616E65766F7270, 0xEA00000000006563, isUniquelyReferenced_nonNull_native);
    v25 = v102;
    v26 = v3[4];
    v27 = HKStringFromMedicationRoomType();
    v28 = sub_1D166FA04();
    v30 = v29;

    v101 = v23;
    *&v100 = v28;
    *(&v100 + 1) = v30;
    sub_1D15FA184(&v100, v99);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v102 = v25;
    sub_1D1608EE4(v99, 0x657079546D6F6F72, 0xE800000000000000, v31);
    v32 = v102;
    v33 = v3[3];
    v34 = HKStringFromMedicationRoomAnalyticsAction();
    v35 = sub_1D166FA04();
    v37 = v36;

    v101 = v23;
    *&v100 = v35;
    *(&v100 + 1) = v37;
    sub_1D15FA184(&v100, v99);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v102 = v32;
    sub_1D1608EE4(v99, 0x6E6F69746361, 0xE600000000000000, v38);
    v39 = v102;
    v40 = sub_1D162B95C();
    v41 = MEMORY[0x1E69E6370];
    v101 = MEMORY[0x1E69E6370];
    LOBYTE(v100) = v40 & 1;
    sub_1D15FA184(&v100, v99);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v102 = v39;
    sub_1D1608EE4(v99, 0xD000000000000013, 0x80000001D1677590, v42);
    v43 = v102;
    v44 = *(v3 + 48);
    v101 = v41;
    LOBYTE(v100) = v44;
    sub_1D15FA184(&v100, v99);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v102 = v43;
    sub_1D1608EE4(v99, 0xD000000000000015, 0x80000001D1676DE0, v45);
    v46 = v102;
    v47 = *(v3 + 49);
    v101 = v41;
    LOBYTE(v100) = v47;
    sub_1D15FA184(&v100, v99);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v46;
    sub_1D1608EE4(v99, 0xD000000000000013, 0x80000001D1676E00, v48);
    v49 = v98;
    v102 = v98;
    v50 = sub_1D162C1E0();
    v52 = v23;
    if (v51)
    {
      v101 = v23;
      *&v100 = v50;
      *(&v100 + 1) = v51;
      sub_1D15FA184(&v100, v99);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v98 = v49;
      sub_1D1608EE4(v99, 0xD000000000000018, 0x80000001D16775B0, v53);
      v102 = v98;
    }

    else
    {
      sub_1D162B160(0xD000000000000018, 0x80000001D16775B0, &v100);
      sub_1D162B804(&v100);
    }

    v63 = *MEMORY[0x1E696B4D8];
    v64 = sub_1D166FA04();
    v66 = v65;
    v67 = [v97 biologicalSex];
    if (v67)
    {
      v68 = v67;
      v69 = sub_1D166FA04();
      v71 = v70;

      v101 = v52;
      if (v71)
      {
LABEL_13:
        v74 = v94;
        *&v100 = v69;
        *(&v100 + 1) = v71;
        sub_1D15FA184(&v100, v99);
        v75 = v102;
        v76 = swift_isUniquelyReferenced_nonNull_native();
        v98 = v75;
        sub_1D1608EE4(v99, v64, v66, v76);

        v102 = v98;
        v77 = *MEMORY[0x1E696B4D0];
        v78 = sub_1D166FA04();
        v80 = v79;
        sub_1D166F164();
        v81 = sub_1D166F124();
        (*(v74 + 8))(v14, v96);
        v82 = v97;
        v83 = [v97 bucketedUserAgeForCurrentDate_];

        v101 = sub_1D15EE5A8(0, &qword_1EC63DA50, 0x1E696AD98);
        *&v100 = v83;
        sub_1D15FA184(&v100, v99);
        v84 = v102;
        v85 = swift_isUniquelyReferenced_nonNull_native();
        v98 = v84;
        sub_1D1608EE4(v99, v78, v80, v85);

        v86 = v98;
        v102 = v98;
        v87 = *MEMORY[0x1E69A39D0];
        v88 = sub_1D166FA04();
        v90 = v89;
        v91 = sub_1D162A950(v16);
        v101 = MEMORY[0x1E69E6370];
        LOBYTE(v100) = v91 & 1;
        sub_1D15FA184(&v100, v99);
        v92 = swift_isUniquelyReferenced_nonNull_native();
        v98 = v86;
        sub_1D1608EE4(v99, v88, v90, v92);

        swift_unknownObjectRelease();

        return v98;
      }
    }

    else
    {
      v101 = v52;
    }

    v72 = *MEMORY[0x1E696B508];
    v69 = sub_1D166FA04();
    v71 = v73;
    goto LABEL_13;
  }

  sub_1D166F4C4();
  v54 = sub_1D166F4D4();
  v55 = sub_1D166FF54();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *&v100 = v57;
    *v56 = 136446210;
    v58 = sub_1D1670754();
    v60 = sub_1D15F7A30(v58, v59, &v100);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_1D15E6000, v54, v55, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x1D388E250](v57, -1, -1);
    MEMORY[0x1D388E250](v56, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  sub_1D162B428();
  swift_allocError();
  *v61 = 0xD00000000000002CLL;
  v61[1] = 0x80000001D1677560;
  return swift_willThrow();
}

id sub_1D1629BEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v6 = a3;

  a5(v6);

  v7 = sub_1D166F934();

  return v7;
}

void *sub_1D1629CE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a5;
  v49 = a4;
  sub_1D162CE50(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v47 - v11;
  v13 = sub_1D166F4E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v53 = result;
  if (result)
  {
    if (a2)
    {
      v19 = a2;
      sub_1D166F4C4();
      v20 = a2;
      v21 = sub_1D166F4D4();
      v22 = sub_1D166FF44();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v56[0] = v24;
        *v23 = 136315650;
        v25 = sub_1D1670754();
        v27 = sub_1D15F7A30(v25, v26, v56);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2080;
        *(v23 + 14) = sub_1D15F7A30(0xD00000000000001DLL, 0x80000001D16777A0, v56);
        *(v23 + 22) = 2080;
        v54 = a2;
        v28 = a2;
        sub_1D15F9218();
        v29 = sub_1D166FA84();
        v31 = sub_1D15F7A30(v29, v30, v56);

        *(v23 + 24) = v31;
        _os_log_impl(&dword_1D15E6000, v21, v22, "%s.%s Error: %s", v23, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D388E250](v24, -1, -1);
        MEMORY[0x1D388E250](v23, -1, -1);
      }

      (*(v14 + 8))(v17, v13);
      sub_1D1670044();
    }

    if (a1)
    {
      v32 = sub_1D162874C(a1);
      v33 = v32;
      v54 = MEMORY[0x1E69E7CC0];
      if (v32 >> 62)
      {
LABEL_25:
        v34 = sub_1D1670224();
        if (v34)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34)
        {
LABEL_9:
          v35 = 0;
          v51 = v33 & 0xFFFFFFFFFFFFFF8;
          v52 = v33 & 0xC000000000000001;
          v50 = (v9 + 2);
          v36 = (v9 + 1);
          while (1)
          {
            if (v52)
            {
              v38 = MEMORY[0x1D388D4D0](v35, v33);
            }

            else
            {
              if (v35 >= *(v51 + 16))
              {
                goto LABEL_24;
              }

              v38 = *(v33 + 8 * v35 + 32);
            }

            v9 = v38;
            v39 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              __break(1u);
LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

            v40 = v53[8];
            v41 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__showMinorDrugInteractions;
            swift_beginAccess();
            (*v50)(v12, v40 + v41, v8);
            sub_1D166F334();
            (*v36)(v12, v8);
            if (v55 == 1)
            {
              result = [objc_opt_self() sharedBehavior];
              if (!result)
              {
                __break(1u);
                return result;
              }

              v42 = result;
              v43 = [result isAppleInternalInstall];

              if (v43)
              {
                goto LABEL_10;
              }
            }

            if ([v9 severityLevel] != 4)
            {
LABEL_10:
              sub_1D1670374();
              v37 = v54[2];
              sub_1D16703B4();
              sub_1D16703C4();
              sub_1D1670384();
            }

            else
            {
            }

            ++v35;
            if (v39 == v34)
            {
              v44 = v54;
              goto LABEL_27;
            }
          }
        }
      }

      v44 = MEMORY[0x1E69E7CC0];
LABEL_27:

      if ((v44 & 0x8000000000000000) != 0 || (v44 & 0x4000000000000000) != 0)
      {
        v45 = sub_1D1670224();
      }

      else
      {
        v45 = *(v44 + 16);
      }

      if (v45 > 0)
      {
        v46 = v48;
        swift_beginAccess();
        *(v46 + 16) = 1;
      }
    }

    sub_1D1670044();
  }

  return result;
}

uint64_t sub_1D162A23C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1D15EE5A8(0, &qword_1EC63DE20, 0x1E69A3AC8);
    sub_1D162CDE8(&qword_1EC63DE28, &qword_1EC63DE20, 0x1E69A3AC8);
    v4 = sub_1D166FE04();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_1D162A30C()
{
  sub_1D162CE50(0, &qword_1EDECAB28, MEMORY[0x1E69E6370], MEMORY[0x1E69A3308]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v16 - v5;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1D1670224())
  {
    sub_1D15F9BCC(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CD0];
  }

  v20 = v7;
  v8 = *(v0 + 64);
  v9 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isAlcoholDrugInteractionFactorEnabled;
  swift_beginAccess();
  v10 = v3[2];
  v10(v6, v8 + v9, v2);
  sub_1D166F3E4();
  v11 = v3[1];
  v11(v6, v2);
  if (LOBYTE(v19[0]) == 1)
  {
    sub_1D1648FB0(v19, [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_]);
  }

  v12 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isTobaccoDrugInteractionFactorEnabled;
  swift_beginAccess();
  v10(v6, v8 + v12, v2);
  sub_1D166F3E4();
  v11(v6, v2);
  if (LOBYTE(v18[0]) == 1)
  {
    sub_1D1648FB0(v18, [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_]);
  }

  v13 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isMarijuanaDrugInteractionFactorEnabled;
  swift_beginAccess();
  v10(v6, v8 + v13, v2);
  sub_1D166F3E4();
  v11(v6, v2);
  if (v17 == 1)
  {
    sub_1D1648FB0(&v17, [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_]);
  }

  v14 = v20;
  if ((v20 & 0xC000000000000001) == 0)
  {
    if (*(v20 + 16))
    {
      return v14;
    }

    goto LABEL_11;
  }

  if (!sub_1D1670224())
  {
LABEL_11:
    sub_1D1648FB0(&v17, [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_]);

    return v20;
  }

  return v14;
}

void sub_1D162A65C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D166F4E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    if (!a2)
    {
LABEL_15:
      sub_1D1670044();
      return;
    }

    if (a2 >> 62)
    {
      if (sub_1D1670224())
      {
        goto LABEL_8;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      if ((a2 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1D388D4D0](0, a2);
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v28 = *(a2 + 32);
      }

      v29 = v28;
      goto LABEL_14;
    }

    v29 = 0;
LABEL_14:
    swift_beginAccess();
    v30 = *(a5 + 16);
    *(a5 + 16) = v29;

    goto LABEL_15;
  }

  v14 = a3;
  sub_1D166F4C4();
  v15 = a3;
  v16 = sub_1D166F4D4();
  v17 = sub_1D166FF44();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31[1] = a4;
    v20 = v19;
    v32[0] = v19;
    *v18 = 136315650;
    v21 = sub_1D1670754();
    v23 = sub_1D15F7A30(v21, v22, v32);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1D15F7A30(0xD000000000000021, 0x80000001D1677750, v32);
    *(v18 + 22) = 2080;
    v31[2] = a3;
    v24 = a3;
    sub_1D15F9218();
    v25 = sub_1D166FA84();
    v27 = sub_1D15F7A30(v25, v26, v32);

    *(v18 + 24) = v27;
    _os_log_impl(&dword_1D15E6000, v16, v17, "%s.%s Error: %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D388E250](v20, -1, -1);
    MEMORY[0x1D388E250](v18, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  sub_1D1670044();
}

uint64_t sub_1D162A950(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_1D166F834();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v29 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = dispatch_semaphore_create(0);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v4;
  aBlock[4] = sub_1D162CDC4;
  aBlock[5] = v15;
  v29[1] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D162AE68;
  aBlock[3] = &block_descriptor_4;
  v16 = _Block_copy(aBlock);

  v17 = v14;

  [a1 isImproveHealthRecordsAnalyticsSubmissionAllowedWithCompletion_];
  _Block_release(v16);
  sub_1D166F824();
  sub_1D166F854();
  v18 = *(v6 + 8);
  v18(v10, v5);
  sub_1D1670034();
  v18(v12, v5);
  if (sub_1D166F7D4())
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v19 = sub_1D166F4E4();
    __swift_project_value_buffer(v19, qword_1EDECB360);
    v20 = sub_1D166F4D4();
    v21 = sub_1D166FF44();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136446210;
      v24 = sub_1D1670754();
      v26 = sub_1D15F7A30(v24, v25, aBlock);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1D15E6000, v20, v21, "[%{public}s] Timed out fetching IHR status for analytics.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1D388E250](v23, -1, -1);
      MEMORY[0x1D388E250](v22, -1, -1);
    }
  }

  swift_beginAccess();
  v27 = *(v13 + 16);

  return v27;
}

uint64_t sub_1D162ACD8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = [a1 BOOLValue];
    swift_beginAccess();
    *(a3 + 16) = v4;
  }

  else
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v5 = sub_1D166F4E4();
    __swift_project_value_buffer(v5, qword_1EDECB360);
    v6 = sub_1D166F4D4();
    v7 = sub_1D166FF44();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446210;
      v10 = sub_1D1670754();
      v12 = sub_1D15F7A30(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1D15E6000, v6, v7, "[%{public}s] failed fetching IHR status for analytics.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1D388E250](v9, -1, -1);
      MEMORY[0x1D388E250](v8, -1, -1);
    }
  }

  return sub_1D1670044();
}

void sub_1D162AE68(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t MedicationRoomInteractionEvent.deinit()
{
  v1 = *(v0 + 64);

  return v0;
}

uint64_t MedicationRoomInteractionEvent.__deallocating_deinit()
{
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_1D162AF6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1D162B79C();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  *a2 = v5;
  return result;
}

uint64_t sub_1D162B014(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1D162B79C();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D166F394();
}

uint64_t sub_1D162B0A8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_1D15EE5A8(0, &qword_1EDECACA0, 0x1E696C3A8);
    v5 = sub_1D166FC54();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

double sub_1D162B160@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1D16061DC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D16484C8();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1D15FA184((*(v12 + 56) + 32 * v9), a3);
    sub_1D1647E28(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_1D162B204(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1D388D420](a1, a2, v7);
      sub_1D15EE5A8(0, &qword_1EC63DE30, 0x1E69A3AA0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D15EE5A8(0, &qword_1EC63DE30, 0x1E69A3AA0);
    if (sub_1D1670204() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D1670214();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_1D1670094();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_1D16700A4();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

unint64_t sub_1D162B428()
{
  result = qword_1EC63DDA0;
  if (!qword_1EC63DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DDA0);
  }

  return result;
}

unint64_t sub_1D162B47C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D162D0B8();
    v3 = sub_1D1670484();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D162D158(v4, &v11, sub_1D160BACC);
      v5 = v11;
      result = sub_1D16062FC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D15FA184(&v12, (v3[7] + 32 * result));
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

unint64_t sub_1D162B58C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D162CD4C();
    v3 = sub_1D1670484();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1D16061DC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1D162B684(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D162CFF0();
    v3 = sub_1D1670484();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D162D158(v4, &v13, sub_1D162D054);
      v5 = v13;
      v6 = v14;
      result = sub_1D16061DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D15FA184(&v15, (v3[7] + 32 * result));
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

void sub_1D162B79C()
{
  if (!qword_1EDECAB68)
  {
    type metadata accessor for MedicationsExperienceStore();
    sub_1D166F4B4();
    v0 = sub_1D166F3A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECAB68);
    }
  }
}

uint64_t sub_1D162B804(uint64_t a1)
{
  sub_1D162CE50(0, &qword_1EC63DDA8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D162B888(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D1609264();
    v3 = sub_1D1670484();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D1606560(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_1D162B95C()
{
  v1 = *v0;
  v2 = sub_1D166F834();
  v57 = *(v2 - 8);
  v3 = *(v57 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v52 - v7;
  if (qword_1EDECB1C0 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v8 = off_1EDECB1C8;
    sub_1D162B79C();
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[6] = v8;

    sub_1D166F384();

    v9 = sub_1D166F4A4();

    v58 = v1;
    if (!(v9 >> 62))
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_41;
      }

      v53 = v6;
      v54 = v2;
      aBlock[0] = MEMORY[0x1E69E7CC0];
LABEL_5:
      v11 = 0;
      v2 = v9 & 0xC000000000000001;
      v6 = (v9 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v2)
        {
          v12 = MEMORY[0x1D388D4D0](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v1 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v14 = [v12 firstOntologyCoding];
        if (v14)
        {

          sub_1D1670374();
          v15 = *(aBlock[0] + 16);
          sub_1D16703B4();
          sub_1D16703C4();
          sub_1D1670384();
        }

        else
        {
        }

        ++v11;
        if (v1 == v10)
        {
          v1 = v58;
          v16 = aBlock[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (!sub_1D1670224())
    {
LABEL_41:

      return 0;
    }

    v53 = v6;
    v54 = v2;
    v16 = MEMORY[0x1E69E7CC0];
    aBlock[0] = MEMORY[0x1E69E7CC0];
    v10 = sub_1D1670224();
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_16:

    aBlock[0] = MEMORY[0x1E69E7CC0];
    if ((v16 & 0x8000000000000000) == 0 && (v16 & 0x4000000000000000) == 0)
    {
      v17 = *(v16 + 16);
      if (!v17)
      {
        break;
      }

      goto LABEL_19;
    }

    v17 = sub_1D1670224();
    if (!v17)
    {
      break;
    }

LABEL_19:
    v6 = 0;
    v2 = v16 & 0xC000000000000001;
    v18 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v19 = v6;
    while (1)
    {
      if (v2)
      {
        v20 = MEMORY[0x1D388D4D0](v19, v16);
      }

      else
      {
        if (v19 >= *(v16 + 16))
        {
          goto LABEL_36;
        }

        v20 = *(v16 + 8 * v19 + 32);
      }

      v21 = v20;
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x1D388CE10]();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D166FC84();
        }

        sub_1D166FCC4();
        v18 = aBlock[0];
        if (v6 != v17)
        {
          goto LABEL_20;
        }

        goto LABEL_44;
      }

      ++v19;
      if (v6 == v17)
      {
        goto LABEL_44;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_44:

  v24 = v55;
  sub_1D162A30C();
  v25 = [objc_allocWithZone(MEMORY[0x1E69A3A98]) initWithHealthStore_];
  v26 = dispatch_semaphore_create(0);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v52 = v27 + 16;
  sub_1D163AA14(v18);

  sub_1D15EE5A8(0, &qword_1EDECACB0, 0x1E69A3B10);
  sub_1D162CDE8(&qword_1EC63DE18, &qword_1EDECACB0, 0x1E69A3B10);
  v28 = sub_1D166FDF4();

  sub_1D15EE5A8(0, &qword_1EC63DA50, 0x1E696AD98);
  sub_1D162CDE8(&qword_1EC63DA58, &qword_1EC63DA50, 0x1E696AD98);
  v29 = sub_1D166FDF4();

  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = v26;
  v31[4] = v27;
  v31[5] = v1;
  aBlock[4] = sub_1D162CE44;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D162A23C;
  aBlock[3] = &block_descriptor_28;
  v32 = _Block_copy(aBlock);
  v33 = v26;

  v55 = v25;
  [v25 interactionResultsForMedications:v28 lifestyleFactors:v29 completion:v32];
  _Block_release(v32);

  v34 = v53;
  sub_1D166F824();
  v35 = v56;
  sub_1D166F854();
  v36 = *(v57 + 8);
  v37 = v54;
  v36(v34, v54);
  LOBYTE(v34) = sub_1D1670034();
  v36(v35, v37);
  if (v34)
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v38 = sub_1D166F4E4();
    __swift_project_value_buffer(v38, qword_1EDECB360);
    v39 = sub_1D166F4D4();
    v40 = sub_1D166FF44();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136446210;
      v43 = sub_1D1670754();
      v45 = sub_1D15F7A30(v43, v44, aBlock);

      *(v41 + 4) = v45;
      v46 = "[%{public}s] Timed out fetching ddi interaction info for analytics.";
      goto LABEL_53;
    }
  }

  else
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v47 = sub_1D166F4E4();
    __swift_project_value_buffer(v47, qword_1EDECB360);
    v39 = sub_1D166F4D4();
    v40 = sub_1D166FF64();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136446210;
      v48 = sub_1D1670754();
      v50 = sub_1D15F7A30(v48, v49, aBlock);

      *(v41 + 4) = v50;
      v46 = "[%{public}s] Successfully fetched ddi interaction info for analytics.";
LABEL_53:
      _os_log_impl(&dword_1D15E6000, v39, v40, v46, v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1D388E250](v42, -1, -1);
      MEMORY[0x1D388E250](v41, -1, -1);
    }
  }

  swift_beginAccess();
  v23 = *(v27 + 16);

  return v23;
}

uint64_t sub_1D162C1E0()
{
  v1 = *v0;
  v69 = sub_1D166F174();
  v68 = *(v69 - 8);
  v2 = *(v68 + 64);
  v3 = MEMORY[0x1EEE9AC00](v69);
  v65 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v67 = v64 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v66 = v64 - v7;
  v8 = sub_1D166F834();
  v73 = *(v8 - 1);
  v74 = v8;
  isa = v73[8].isa;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v71 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v72 = v64 - v12;
  v80 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  sub_1D162CE50(0, &qword_1EDECB330, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1672930;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1D15F9BCC(inited);
  swift_setDeallocating();
  v14 = *(inited + 16);
  swift_arrayDestroy();
  v15 = objc_opt_self();
  sub_1D15EE5A8(0, &qword_1EC63DA50, 0x1E696AD98);
  sub_1D162CDE8(&qword_1EC63DA58, &qword_1EC63DA50, 0x1E696AD98);
  v16 = sub_1D166FDF4();

  v17 = [v15 predicateForMedicationDoseEventWithStatuses_];

  v18 = [objc_opt_self() medicationDoseEventType];
  v19 = objc_allocWithZone(MEMORY[0x1E696C388]);
  v78 = v18;
  v79 = v17;
  v20 = [v19 initWithSampleType:v18 predicate:v17];
  v21 = [objc_allocWithZone(MEMORY[0x1E696AEB0]) initWithKey:*MEMORY[0x1E696BE38] ascending:1];
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v70 = (v22 + 16);
  v23 = dispatch_semaphore_create(0);
  v24 = swift_allocObject();
  v77 = xmmword_1D16721C0;
  *(v24 + 16) = xmmword_1D16721C0;
  *(v24 + 32) = v20;
  v25 = swift_allocObject();
  *(v25 + 16) = v77;
  *(v25 + 32) = v21;
  v26 = swift_allocObject();
  v26[2] = v23;
  v26[3] = v22;
  v64[0] = v1;
  v26[4] = v1;
  v27 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
  sub_1D15EE5A8(0, &qword_1EC63DE10, 0x1E696C388);
  v76 = v20;
  v75 = v21;
  v28 = v23;
  *&v77 = v22;

  v29 = sub_1D166FC44();

  sub_1D15EE5A8(0, &qword_1EDECB340, 0x1E696AEB0);
  v30 = sub_1D166FC44();

  aBlock[4] = sub_1D162CE38;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D162B0A8;
  aBlock[3] = &block_descriptor_18;
  v31 = _Block_copy(aBlock);
  v32 = [v27 initWithQueryDescriptors:v29 limit:1 sortDescriptors:v30 resultsHandler:v31];

  _Block_release(v31);

  [v80 executeQuery_];
  v33 = v71;
  sub_1D166F824();
  v34 = v72;
  sub_1D166F854();
  v35 = v73[1].isa;
  v36 = v33;
  v37 = v74;
  v35(v36, v74);
  LOBYTE(v29) = sub_1D1670034();
  v35(v34, v37);
  if (v29)
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v38 = sub_1D166F4E4();
    __swift_project_value_buffer(v38, qword_1EDECB360);
    v39 = sub_1D166F4D4();
    v40 = sub_1D166FF44();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136446210;
      v43 = sub_1D1670754();
      v45 = sub_1D15F7A30(v43, v44, aBlock);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1D15E6000, v39, v40, "[%{public}s] Timed out fetching oldest dose event for analytics.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1D388E250](v42, -1, -1);
      MEMORY[0x1D388E250](v41, -1, -1);
    }
  }

  else
  {
    v46 = v70;
    swift_beginAccess();
    if (*v46)
    {
      v47 = *(v64[1] + 16);
      v74 = *v46;
      v48 = [v74 startDate];
      v73 = v28;
      v49 = v67;
      sub_1D166F144();

      v50 = sub_1D166F124();
      v51 = *(v68 + 8);
      v52 = v69;
      v51(v49, v69);
      v53 = [v47 startOfDayForDate_];

      v54 = v66;
      sub_1D166F144();

      v55 = v65;
      sub_1D166F154();
      v56 = sub_1D166F124();
      v51(v55, v52);
      v57 = [v47 startOfDayForDate_];

      sub_1D166F144();
      v58 = sub_1D166F124();
      v59 = sub_1D166F124();
      v60 = HKMedicationAnalyticsWeeksBetweenDates();

      v61 = [v60 stringValue];
      v62 = sub_1D166FA04();

      v51(v49, v52);
      v51(v54, v52);

      return v62;
    }
  }

  return 0;
}

uint64_t sub_1D162CCB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D162CCFC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1D162CD4C()
{
  if (!qword_1EC63DAF0)
  {
    sub_1D15EE5A8(255, &qword_1EDEC9D80, 0x1E69E58C0);
    v0 = sub_1D1670494();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DAF0);
    }
  }
}

uint64_t sub_1D162CDC4(void *a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_1D162ACD8(a1, a2, v2[2]);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D162CDE8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D15EE5A8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D162CE50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D162CEA0()
{
  if (!qword_1EC63DE48)
  {
    sub_1D15EE5A8(255, &qword_1EC63DE40, 0x1E69A3AA8);
    v0 = sub_1D166FCF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DE48);
    }
  }
}

uint64_t sub_1D162CF08(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D162CF50()
{
  if (!qword_1EC63DE58)
  {
    sub_1D15EE5A8(255, &qword_1EC63DE30, 0x1E69A3AA0);
    sub_1D162CDE8(&qword_1EC63DE38, &qword_1EC63DE30, 0x1E69A3AA0);
    v0 = sub_1D166FE34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DE58);
    }
  }
}

uint64_t sub_1D162CFE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1D162CFF0()
{
  if (!qword_1EC63DAF8)
  {
    v0 = sub_1D1670494();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DAF8);
    }
  }
}

void sub_1D162D054()
{
  if (!qword_1EC63DE60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63DE60);
    }
  }
}

void sub_1D162D0B8()
{
  if (!qword_1EDEC9D58)
  {
    type metadata accessor for Key(255);
    sub_1D162CF08(&qword_1EDEC9E10, type metadata accessor for Key);
    v0 = sub_1D1670494();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC9D58);
    }
  }
}

uint64_t sub_1D162D158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t HKMedicationScheduleItemQueryDescriptor.init(_:toDate:identifier:sortDescriptors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = sub_1D166F174();
  v12 = *(*(v11 - 8) + 56);
  v12(a6, 1, 1, v11);
  Descriptor = type metadata accessor for HKMedicationScheduleItemQueryDescriptor();
  v14 = Descriptor[7];
  v12(a6 + v14, 1, 1, v11);
  v15 = Descriptor[9];
  v16 = (a6 + Descriptor[8]);
  v17 = a6 + Descriptor[10];
  sub_1D166F8D4();
  sub_1D15FB9CC(a1, a6);
  result = sub_1D15FB9CC(a2, a6 + v14);
  *v16 = a3;
  v16[1] = a4;
  *(a6 + v15) = a5;
  return result;
}

uint64_t HKMedicationScheduleItemQueryDescriptor.result(for:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D162D324, 0, 0);
}

uint64_t sub_1D162D324()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1D162D3D8;
  v4 = swift_continuation_init();
  sub_1D162D79C(v4, v1, v3, *(v2 + 16));

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D162D3D8()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v0 + 80);
    v6 = *(v1 + 8);
    v7 = *v0;

    return v6(v5);
  }
}

uint64_t (*HKMedicationScheduleItemQueryDescriptor.toDate.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t HKMedicationScheduleItemQueryDescriptor.identifier.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t HKMedicationScheduleItemQueryDescriptor.identifier.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 32));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*HKMedicationScheduleItemQueryDescriptor.identifier.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t HKMedicationScheduleItemQueryDescriptor.sortDescriptors.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*HKMedicationScheduleItemQueryDescriptor.sortDescriptors.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t HKMedicationScheduleItemQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1D166F8E4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t HKMedicationScheduleItemQueryDescriptor.queryAttributes.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1D166F8E4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*HKMedicationScheduleItemQueryDescriptor.queryAttributes.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

void sub_1D162D79C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1D15FB870();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - v13;
  Descriptor = type metadata accessor for HKMedicationScheduleItemQueryDescriptor();
  v16 = Descriptor;
  v17 = *(a2 + *(Descriptor + 36));
  if (v17)
  {
    v43 = &v39;
    aBlock[0] = v17;
    MEMORY[0x1EEE9AC00](Descriptor);
    *(&v39 - 2) = a4;
    sub_1D166EFE4();
    v18 = sub_1D166FCF4();
    v19 = sub_1D15EE5A8(0, &qword_1EDECB340, 0x1E696AEB0);
    WitnessTable = swift_getWitnessTable();
    v40 = sub_1D165FD7C(sub_1D162E174, (&v39 - 4), v18, v19, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v21);
  }

  else
  {
    v40 = 0;
  }

  sub_1D15F8A24(a2, v14);
  sub_1D15F8A24(a2 + *(v16 + 28), v12);
  v42 = v16;
  v43 = a2;
  v22 = (a2 + *(v16 + 32));
  v23 = v22[1];
  v39 = *v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a1;
  v25 = sub_1D166F174();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  v28 = v27(v14, 1, v25);
  v41 = a3;
  v29 = 0;
  if (v28 != 1)
  {
    v29 = sub_1D166F124();
    (*(v26 + 8))(v14, v25);
  }

  if (v27(v12, 1, v25) == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = sub_1D166F124();
    (*(v26 + 8))(v12, v25);
  }

  v31 = v42;
  v32 = v40;
  if (!v23)
  {
    v33 = 0;
    if (v40)
    {
      goto LABEL_11;
    }

LABEL_13:
    v34 = 0;
    goto LABEL_14;
  }

  v33 = sub_1D166F9C4();
  if (!v32)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_1D15EE5A8(0, &qword_1EDECB340, 0x1E696AEB0);
  v34 = sub_1D166FC44();

LABEL_14:
  v35 = objc_allocWithZone(MEMORY[0x1E69A3B00]);
  aBlock[4] = sub_1D1600940;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D162E0A4;
  aBlock[3] = &block_descriptor_5;
  v36 = _Block_copy(aBlock);
  v37 = [v35 initWithFromDate:v29 toDate:v30 identifier:v33 sortDescriptors:v34 resultsHandler:v36];

  _Block_release(v36);

  v38 = *(v31 + 40);
  sub_1D1670084();
  [v41 executeQuery_];
}

uint64_t sub_1D162DBC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D166EFE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  sub_1D15EE5A8(0, &qword_1EDECB340, 0x1E696AEB0);
  (*(v5 + 16))(v8, a1, v4);
  result = sub_1D166FF84();
  *a2 = result;
  return result;
}

uint64_t sub_1D162DCCC(uint64_t a1, uint64_t a2, void *a3, id a4, uint64_t a5)
{
  [a4 stopQuery_];
  if (a2)
  {
    **(*(a5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](a5);
  }

  else
  {
    if (a3)
    {
      v8 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_1D165BD30(MEMORY[0x1E69E7CC0]);
      sub_1D162E194();
      sub_1D166F074();
      v8 = v12;
    }

    sub_1D15F9218();
    swift_allocError();
    *v9 = v8;
    v10 = a3;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1D162DDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D162DE94;

  return HKMedicationScheduleItemQueryDescriptor.result(for:)(a2, a3);
}

uint64_t sub_1D162DE94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

void sub_1D162DFAC(uint64_t a1)
{
  sub_1D15FB870();
  if (v2 <= 0x3F)
  {
    sub_1D15F42BC();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      sub_1D166EFE4();
      sub_1D166FCF4();
      sub_1D16700E4();
      if (v5 <= 0x3F)
      {
        sub_1D166F8E4();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D162E0A4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_1D15EE5A8(0, &qword_1EDECACD0, 0x1E69A3AF0);
    v5 = sub_1D166FC54();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D162E194()
{
  result = qword_1EC63D868;
  if (!qword_1EC63D868)
  {
    type metadata accessor for HKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63D868);
  }

  return result;
}

uint64_t NotificationActionHandler.doseEventStatus.getter()
{
  v1 = *v0;
  result = 4;
  if (*v0 > 3)
  {
    if (v1 == 4)
    {
      return 0;
    }

    if (v1 == 5)
    {
      return result;
    }

    if (v1 != 6)
    {
      return 0;
    }

    return 5;
  }

  switch(v1)
  {
    case 1:
      return result;
    case 2:
      return 5;
    case 3:
      return 3;
  }

  return 0;
}

uint64_t NotificationActionHandler.analyticsInteraction.getter()
{
  v1 = *v0;
  if (*v0 <= 3)
  {
    if (v1 != 1)
    {
      if (v1 != 2)
      {
        if (v1 == 3)
        {
          return 6;
        }

        return 0;
      }

      return 5;
    }

    return 4;
  }

  switch(v1)
  {
    case 4:
      return 2;
    case 5:
      return 4;
    case 6:
      return 5;
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for NotificationActionHandler(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NotificationActionHandler(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1D162E37C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  sub_1D162E7F0(0);
  *v4 = v0;
  v4[1] = sub_1D162E478;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001DLL, 0x80000001D16777C0, sub_1D162E7E8, v2, v5);
}

uint64_t sub_1D162E478()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1D162E5B0;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1D162E594;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D162E5B0()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

void sub_1D162E614(uint64_t a1, void *a2)
{
  sub_1D162F4E8(0, &qword_1EC63DE70, sub_1D162E7F0, MEMORY[0x1E69E8548]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = aBlock - v8;
  (*(v6 + 16))(aBlock - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  aBlock[4] = sub_1D162F5B0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1618744;
  aBlock[3] = &block_descriptor_21;
  v12 = _Block_copy(aBlock);

  [a2 fetchAllSchedulesWithCompletion_];
  _Block_release(v12);
}

unint64_t sub_1D162E824()
{
  result = qword_1EDECACF0;
  if (!qword_1EDECACF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDECACF0);
  }

  return result;
}

uint64_t sub_1D162E870(uint64_t a1, id a2)
{
  if (a1)
  {
    sub_1D162F4E8(0, &qword_1EC63DE70, sub_1D162E7F0, MEMORY[0x1E69E8548]);

    return sub_1D166FD34();
  }

  else
  {
    if (!a2)
    {
      type metadata accessor for HKError(0);
      sub_1D165BD30(MEMORY[0x1E69E7CC0]);
      sub_1D162ECF4(&qword_1EC63D868, type metadata accessor for HKError);
      sub_1D166F074();
      a2 = 0;
    }

    v3 = a2;
    sub_1D162F4E8(0, &qword_1EC63DE70, sub_1D162E7F0, MEMORY[0x1E69E8548]);
    return sub_1D166FD24();
  }
}

uint64_t HKMedicationScheduleControl.schedulePublisher(for:using:)(uint64_t a1)
{
  sub_1D162EB88();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = a1;
  sub_1D162EC1C(0);
  sub_1D162ECF4(&qword_1EDECA068, sub_1D162EC1C);
  v10 = v1;

  sub_1D166F6E4();
  sub_1D162ECF4(&qword_1EDECA058, sub_1D162EB88);
  v11 = sub_1D166F754();
  (*(v5 + 8))(v8, v4);
  return v11;
}

void sub_1D162EB88()
{
  if (!qword_1EDECA050)
  {
    sub_1D162EC1C(255);
    sub_1D162ECF4(&qword_1EDECA068, sub_1D162EC1C);
    v0 = sub_1D166F6F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECA050);
    }
  }
}

uint64_t sub_1D162EC50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1D162EC1C(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = a1;

  result = sub_1D166F6C4();
  *a3 = result;
  return result;
}

uint64_t sub_1D162ECF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D162ED3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D162EF2C(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = sub_1D166FD84();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  v14[5] = a4;
  v14[6] = sub_1D162EF90;
  v14[7] = v11;

  sub_1D1617D5C(0, 0, v10, &unk_1D1673C70, v14);

  return sub_1D161DF10(v10);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1D162EF2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D162EF90(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_1D162EFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D162EFF4, 0, 0);
}

uint64_t sub_1D162EFF4()
{
  v1 = v0[22];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[23];
    v5 = sub_1D166FC44();
    v0[27] = v5;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1D162F1B4;
    v6 = swift_continuation_init();
    sub_1D162F4E8(0, &qword_1EC63DE68, sub_1D162F564, MEMORY[0x1E69E86F8]);
    v0[17] = v7;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D166C0D0;
    v0[13] = &block_descriptor_6;
    v0[14] = v6;
    [v3 fetchSchedulesWithMedicationIdentifiers:v5 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D162F1B4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_1D162F360;
  }

  else
  {
    v3 = sub_1D162F2C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D162F2C4()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 168);

  if (!v4)
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v3(v4, 0);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D162F360()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  swift_willThrow();

  v6 = v1;
  v5(v1, 1);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D162F414(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D15FFFCC;

  return sub_1D162EFD0(a1, v4, v5, v6, v7, v9, v8);
}

void sub_1D162F4E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_1D15F9218();
    v9 = a4(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D162F5B0(uint64_t a1, void *a2)
{
  sub_1D162F4E8(0, &qword_1EC63DE70, sub_1D162E7F0, MEMORY[0x1E69E8548]);
  v5 = *(*(v4 - 8) + 80);

  return sub_1D162E870(a1, a2);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id HKConcept.clinicalProduct.getter()
{
  if ([v0 meds_isClinicalProduct])
  {
    v1 = v0;
  }

  else if ([v0 meds_isSpecificProduct])
  {
    return [v0 firstConceptOfRelationshipType_];
  }

  else
  {
    return 0;
  }

  return v0;
}

id HKConcept.routedDoseFormName.getter()
{
  if (![v0 meds_isRoutedDoseFormProduct])
  {
    return 0;
  }

  result = [v0 meds:982 preferredNameForFirstObjectOfRelationshipType:?];
  if (result)
  {
    v2 = result;
    v3 = sub_1D166FA04();

    return v3;
  }

  return result;
}

uint64_t HKConcept.conceptDisplayName.getter()
{
  v1 = [v0 localizedPreferredName];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D166FA04();

    return v3;
  }

  else
  {
    if (qword_1EDECB050 != -1)
    {
      swift_once();
    }

    return sub_1D166F004();
  }
}

uint64_t HKConcept.strengthDisplay.getter()
{
  if ([v0 meds_isClinicalProduct])
  {
    v1 = v0;
  }

  else
  {
    if (![v0 meds_isSpecificProduct])
    {
      goto LABEL_7;
    }

    v1 = [v0 firstConceptOfRelationshipType_];
    if (!v1)
    {
      goto LABEL_7;
    }
  }

  v2 = [v1 firstAttributeForType_];

  if (v2)
  {
    v3 = [v2 stringValue];

LABEL_11:
    v10 = sub_1D166FA04();

    return v10;
  }

LABEL_7:
  v4 = [v0 firstAttributeForType_];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 stringValue];

    v7 = sub_1D166FA04();
    return v7;
  }

  v9 = [v0 localizedPreferredName];
  if (v9)
  {
    v3 = v9;
    goto LABEL_11;
  }

  if (qword_1EDECB050 != -1)
  {
    swift_once();
  }

  return sub_1D166F004();
}

uint64_t MedicationConceptType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result - 73;
  if ((result - 841) >= 5)
  {
    v2 = 5;
  }

  *a2 = v2;
  return result;
}

id MedicationConceptType.conceptIdentifier.getter()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696C020]);

  return [v2 initWithRawIdentifier_];
}

unint64_t MedicationConceptType.debugDescription.getter()
{
  v1 = *v0;
  v2 = 0x6369666963657073;
  v3 = 0xD000000000000018;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x6D614E6564617254;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C6163696E696C63;
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

uint64_t sub_1D162FB5C()
{
  v1 = *v0;
  sub_1D16706A4();
  MEMORY[0x1D388D8B0](v1 + 841);
  return sub_1D16706E4();
}

uint64_t sub_1D162FBD4()
{
  v1 = *v0;
  sub_1D16706A4();
  MEMORY[0x1D388D8B0](v1 + 841);
  return sub_1D16706E4();
}

void *sub_1D162FC18@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result - 841;
  if (v2 >= 5)
  {
    LOBYTE(v2) = 5;
  }

  *a2 = v2;
  return result;
}

uint64_t HKConcept.formDisplay.getter()
{
  v1 = [v0 firstAttributeForType_];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 stringValue];

    v4 = sub_1D166FA04();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v0 firstAttributeForType_];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 stringValue];

    sub_1D166FA04();
  }

  return v4;
}

id HKConcept.loggingDoseForm.getter()
{
  if (![v0 meds_isSpecificProduct])
  {
    return 0;
  }

  result = [v0 firstConceptOfRelationshipType_];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result firstConceptOfRelationshipType_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 firstConceptOfRelationshipType_];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 firstConceptOfRelationshipType_];

  return v5;
}

uint64_t HKConcept.educationalContent.getter()
{
  v1 = [v0 allConceptsOfRelationshipType_];
  sub_1D162FF64();
  v2 = sub_1D166FC54();

  return v2;
}

id sub_1D162FE84(SEL *a1, uint64_t a2)
{
  if ([v2 *a1])
  {
    return [v2 firstConceptOfRelationshipType_];
  }

  else
  {
    return 0;
  }
}

uint64_t HKConcept.firstAttribute(for:)(uint64_t a1)
{
  v2 = [v1 firstAttributeForType_];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 stringValue];

  v5 = sub_1D166FA04();
  return v5;
}

unint64_t sub_1D162FF64()
{
  result = qword_1EC63DA98;
  if (!qword_1EC63DA98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC63DA98);
  }

  return result;
}

unint64_t sub_1D162FFB4()
{
  result = qword_1EC63DE78;
  if (!qword_1EC63DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DE78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MedicationConceptType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MedicationConceptType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t HKMedicationFreeTextFormTypeCode.localizedFormString.getter(uint64_t a1)
{
  if (qword_1EDECB050 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  HKMedicationFreeTextFormTypeCode.localizationKey.getter(a1);
  v1 = sub_1D166F004();

  return v1;
}

unint64_t HKMedicationFreeTextFormTypeCode.localizationKey.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0xD000000000000017;
  switch(v1)
  {
    case 0:
      return result;
    case 2:
    case 8:
    case 9:
    case 12:
    case 15:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
    case 16:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD00000000000001BLL;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t HKMedicationFreeTextFormTypeCode.englishFormString.getter(uint64_t a1)
{
  sub_1D163095C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D166F0C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDECB050 != -1)
  {
    swift_once();
  }

  v22 = xmmword_1EDECB058;
  *&v23 = qword_1EDECB068;
  xmmword_1EDECB058;

  LocalizationSource.stringsTable(forLanguageCode:)(28261, 0xE200000000000000, v5);
  v11 = v22;

  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v5, v6);
    v13 = objc_allocWithZone(MEMORY[0x1E695DF20]);
    v14 = sub_1D166F0A4();
    v15 = [v13 initWithContentsOfURL_];

    if (v15)
    {
      v19[1] = HKMedicationFreeTextFormTypeCode.localizationKey.getter(a1);
      v16 = sub_1D166F9C4();

      v17 = [v15 valueForKey_];

      if (v17)
      {
        sub_1D1670164();
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
      }

      v22 = v20;
      v23 = v21;
      if (*(&v21 + 1))
      {
        if (swift_dynamicCast())
        {
          (*(v7 + 8))(v10, v6);

          return v19[2];
        }
      }

      else
      {
        sub_1D16309B4(&v22, sub_1D1630A14);
      }

      v12 = sub_1D166F004();
    }

    else
    {
      HKMedicationFreeTextFormTypeCode.localizationKey.getter(a1);
      v12 = sub_1D166F004();
    }

    (*(v7 + 8))(v10, v6);
    return v12;
  }

  sub_1D16309B4(v5, sub_1D163095C);
  HKMedicationFreeTextFormTypeCode.localizationKey.getter(a1);
  v12 = sub_1D166F004();

  return v12;
}

uint64_t static HKMedicationFreeTextFormTypeCode.allFormsAndTheirDisplayInEnglish.getter()
{
  v0 = _sSo32HKMedicationFreeTextFormTypeCodeV27HealthMedicationsExperienceE8allCasesSayABGvgZ_0();
  v1 = *(v0 + 2);
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D16230AC(0, v1, 0);
    v2 = 32;
    v3 = v13;
    do
    {
      v4 = *&v0[v2];
      v5 = HKMedicationFreeTextFormTypeCode.englishFormString.getter(v4);
      v8 = *(v13 + 16);
      v7 = *(v13 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1D16230AC((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
      }

      *(v13 + 16) = v8 + 1;
      v9 = (v13 + 24 * v8);
      v9[4] = v4;
      v9[5] = v5;
      v9[6] = v6;
      v2 += 8;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

char *_sSo32HKMedicationFreeTextFormTypeCodeV27HealthMedicationsExperienceE8allCasesSayABGvgZ_0()
{
  v0 = sub_1D15ED1C4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    v0 = sub_1D15ED1C4((v1 > 1), v2 + 1, 1, v0);
  }

  *(v0 + 2) = v2 + 1;
  *&v0[8 * v2 + 32] = 1;
  v3 = v2 + 5;
  v4 = -16;
  do
  {
    v5 = *(v0 + 3);
    if (v3 - 4 >= v5 >> 1)
    {
      v0 = sub_1D15ED1C4((v5 > 1), v3 - 3, 1, v0);
    }

    *(v0 + 2) = v3 - 3;
    *&v0[8 * v3++] = v4 + 18;
  }

  while (!__CFADD__(v4++, 1));
  return v0;
}

void sub_1D163095C()
{
  if (!qword_1EC63DE80)
  {
    sub_1D166F0C4();
    v0 = sub_1D16700E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DE80);
    }
  }
}

uint64_t sub_1D16309B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D1630A14()
{
  if (!qword_1EC63DDA8)
  {
    v0 = sub_1D16700E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DDA8);
    }
  }
}

uint64_t sub_1D1630A68()
{
  v0 = sub_1D166F4E4();
  __swift_allocate_value_buffer(v0, qword_1EDECB360);
  __swift_project_value_buffer(v0, qword_1EDECB360);
  v1 = HKLogMedication();
  return sub_1D166F4F4();
}

uint64_t static Logger.medication.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDECB358 != -1)
  {
    swift_once();
  }

  v2 = sub_1D166F4E4();
  v3 = __swift_project_value_buffer(v2, qword_1EDECB360);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id static HKQuantityFormattingParameters.parametersForUnit(_:)()
{
  sub_1D1630C70();
  v0 = [objc_opt_self() percentUnit];
  v1 = sub_1D16700A4();

  result = [objc_allocWithZone(MEMORY[0x1E69A4480]) init];
  if (v1)
  {
    v3 = result;
    [result setHasSpaceBetweenValueAndUnit_];
    return v3;
  }

  return result;
}

unint64_t sub_1D1630C70()
{
  result = qword_1EC63DD08;
  if (!qword_1EC63DD08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC63DD08);
  }

  return result;
}

id sub_1D1630CCC()
{
  _s38HealthMedicationsExperienceBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDECAC98 = result;
  return result;
}

id static NSBundle.healthMedicationsExperience.getter()
{
  if (qword_1EDECAC90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDECAC98;

  return v1;
}

void static Weekdays.weekends.getter(void *a1@<X8>)
{
  sub_1D1627CE8();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 127;
  sub_1D1627D44();
  sub_1D1670744();
  v8 = 0;
  while (1)
  {
    sub_1D166F874();
    if (v13)
    {
      (*(v4 + 8))(v7, v3);
      *a1 = v8;
      return;
    }

    v9 = v12;
    v10 = log2f(v12);
    if ((LODWORD(v10) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      break;
    }

    if (v10 <= -9.2234e18)
    {
      goto LABEL_13;
    }

    if (v10 >= 9.2234e18)
    {
      goto LABEL_14;
    }

    if (v10 <= 6)
    {
      if (([objc_opt_self() weekdayIsWeekend_] & ((v9 & ~v8) != 0)) != 0)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0;
      }

      v8 |= v11;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

void Weekdays.singleDay.getter()
{
  v1 = log2f(*v0);
  if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 >= 9.2234e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  Weekdays.Day.init(rawValue:)(v1);
}

void static Weekdays.weekDays.getter(void *a1@<X8>)
{
  sub_1D1627CE8();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 127;
  sub_1D1627D44();
  sub_1D1670744();
  v8 = 0;
  while (1)
  {
    sub_1D166F874();
    if (v15)
    {
      (*(v4 + 8))(v7, v3);
      *a1 = v8;
      return;
    }

    v9 = v14;
    v10 = log2f(v14);
    if ((LODWORD(v10) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      break;
    }

    if (v10 <= -9.2234e18)
    {
      goto LABEL_16;
    }

    if (v10 >= 9.2234e18)
    {
      goto LABEL_17;
    }

    if (v10 <= 6)
    {
      v11 = [objc_opt_self() weekdayIsWeekend_];
      if ((v9 & ~v8) != 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = v9;
      }

      v8 |= v13;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t Weekdays.sortedWeekdays(calendar:)()
{
  v1 = *v0;
  result = sub_1D166F214();
  if (result > 7)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v3 = result;
  v4 = result - 1;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if ((v3 - 1) < 6)
    {
      v7 = 0x40302010006uLL >> (8 * v4);
      goto LABEL_8;
    }

    if (v4 == 6)
    {
      break;
    }

LABEL_3:
    ++v4;
    if (__OFADD__(v3++, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  LOBYTE(v7) = 5;
LABEL_8:
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D15ED2D8(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_1D15ED2D8((v8 > 1), v9 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v9 + 1;
  *(v5 + v9 + 32) = v7;
  if (v4 != 6)
  {
    goto LABEL_3;
  }

  if (sub_1D166F214() < 2)
  {
LABEL_25:
    v14 = *(v5 + 16);
    if (v14)
    {
      v15 = (v5 + 32);
      v16 = MEMORY[0x1E69E7CC0];
      do
      {
        v20 = *v15++;
        v19 = v20;
        if (v20 > 0x3FuLL || ((v1 >> v19) & 1) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D16230CC(0, *(v16 + 16) + 1, 1);
          }

          v18 = *(v16 + 16);
          v17 = *(v16 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_1D16230CC((v17 > 1), v18 + 1, 1);
          }

          *(v16 + 16) = v18 + 1;
          *(v16 + v18 + 32) = v19;
        }

        --v14;
      }

      while (v14);
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    return v16;
  }

  result = sub_1D166F214();
  if (__OFSUB__(result, 1))
  {
    goto LABEL_40;
  }

  if (result - 1 >= 1)
  {
    v10 = 0;
    v11 = result - 2;
    while (1)
    {
      if (v10 <= 6)
      {
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_1D15ED2D8((v12 > 1), v13 + 1, 1, v5);
          v5 = result;
        }

        *(v5 + 16) = v13 + 1;
        *(v5 + v13 + 32) = 0x5040302010006uLL >> (8 * v10);
      }

      if (v11 == v10)
      {
        goto LABEL_25;
      }

      if (__OFADD__(++v10, 1))
      {
        goto LABEL_38;
      }
    }
  }

LABEL_41:
  __break(1u);
  return result;
}

void Weekdays.Day.weekday.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 0x3F)
  {
    v3 = 1 << v2;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
}

uint64_t Weekdays.enumerate(_:_:)(uint64_t a1, void (*a2)(char *))
{
  v10 = *v2;
  v4 = Weekdays.sortedWeekdays(calendar:)();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6++;
      v9 = v7;
      a2(&v9);
      --v5;
    }

    while (v5);
  }
}

HealthMedicationsExperience::Weekdays::Day_optional __swiftcall Weekdays.Day.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void Weekdays.toString(calendar:)()
{
  v1 = sub_1D166F1F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D16323EC(0, &qword_1EC63DE88, MEMORY[0x1E6968660]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v59 - v10;
  sub_1D16323EC(0, &qword_1EC63DEA0, MEMORY[0x1E6968640]);
  v67 = *(v11 - 8);
  v68 = v11;
  v12 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v59 - v13;
  sub_1D1632508(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v0;
  if (*v0)
  {
    v62 = v19;
    v63 = v17;
    v71 = v20;
    v21 = Weekdays.sortedWeekdays(calendar:)();
    if (v20 == 127)
    {

      if (qword_1EDECB050 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

    static Weekdays.weekDays.getter(&v71);
    if (v20 == v71 || (static Weekdays.weekends.getter(&v71), v20 == v71))
    {

      if (qword_1EDECB050 == -1)
      {
LABEL_8:
        sub_1D166F004();
        return;
      }

LABEL_30:
      swift_once();
      goto LABEL_8;
    }

    v65 = v1;
    v22 = *(v21 + 16);
    if (v22)
    {
      if (v22 != 1)
      {
        v59 = v15;
        v60 = v8;
        v61 = v7;
        v32 = 0;
        v64 = (v2 + 8);
        v33 = MEMORY[0x1E69E7CC0];
        while (v32 < *(v21 + 16))
        {
          v34 = *(v21 + v32 + 32);
          v35 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
          v36 = sub_1D166F1C4();
          if (!v36[2])
          {
            goto LABEL_28;
          }

          v37 = v36[4];
          v38 = v36[5];

          sub_1D166F1B4();
          v39 = sub_1D166F1D4();
          [v35 setLocale_];

          [v35 setFormattingContext_];
          (*v64)(v5, v65);
          v40 = [v35 shortStandaloneWeekdaySymbols];
          if (!v40)
          {
            goto LABEL_33;
          }

          v41 = v40;
          v42 = sub_1D166FC54();

          v43 = qword_1D1674138[v34];
          if (v43 >= *(v42 + 16))
          {
            goto LABEL_29;
          }

          v44 = v42 + 16 * v43;
          v46 = *(v44 + 32);
          v45 = *(v44 + 40);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_1D15ECAB4(0, *(v33 + 2) + 1, 1, v33);
          }

          v48 = *(v33 + 2);
          v47 = *(v33 + 3);
          if (v48 >= v47 >> 1)
          {
            v33 = sub_1D15ECAB4((v47 > 1), v48 + 1, 1, v33);
          }

          ++v32;
          *(v33 + 2) = v48 + 1;
          v49 = &v33[16 * v48];
          *(v49 + 4) = v46;
          *(v49 + 5) = v45;
          if (v22 == v32)
          {

            v70 = v33;
            v50 = v66;
            v51 = v67;
            v52 = v68;
            (*(v67 + 104))(v66, *MEMORY[0x1E6968638], v68);
            v54 = v60;
            v53 = v61;
            v55 = v69;
            (*(v60 + 104))(v69, *MEMORY[0x1E6968658], v61);
            v56 = MEMORY[0x1E69E6158];
            sub_1D1632BE4(0, &qword_1EDECAE18, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
            sub_1D1632394(&qword_1EC63DE98, &qword_1EDECAE18, v56);
            v57 = v62;
            sub_1D166EE54();
            (*(v54 + 8))(v55, v53);
            (*(v51 + 8))(v50, v52);
            sub_1D1632708(&qword_1EC63DEB0, sub_1D1632508);
            v58 = v63;
            sub_1D166FBD4();
            (*(v59 + 8))(v57, v58);

            return;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v23 = *(v21 + 32);

      sub_1D1632528();
      v72 = NSDateFormatter.init(formattingContext:)(NSFormattingContextStandalone);
      isa = v72.super.super.isa;
      v25 = [(objc_class *)v72.super.super.isa standaloneWeekdaySymbols:v72._formatter];
      if (v25)
      {
        v26 = v25;
        v27 = sub_1D166FC54();

        v28 = qword_1D1674138[v23];
        if (v28 < *(v27 + 16))
        {
          v29 = v27 + 16 * v28;
          v31 = *(v29 + 32);
          v30 = *(v29 + 40);

          return;
        }

        __break(1u);
LABEL_33:
        __break(1u);
      }

      __break(1u);
    }

    else
    {
    }
  }
}

NSDateFormatter __swiftcall NSDateFormatter.init(formattingContext:)(NSFormattingContext formattingContext)
{
  v2 = sub_1D166F1F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = sub_1D166F1C4();
  if (*(v8 + 2))
  {
    v12 = *(v8 + 4);
    v13 = *(v8 + 5);

    sub_1D166F1B4();
    v14 = sub_1D166F1D4();
    [v7 setLocale_];

    [v7 setFormattingContext_];
    (*(v3 + 8))(v6, v2);
    v8 = v7;
  }

  else
  {
    __break(1u);
  }

  result._counter = v11;
  result._formatter = v10;
  result._attributes = v9;
  result.super.super.isa = v8;
  return result;
}

uint64_t sub_1D1632068()
{
  sub_1D1627D44();

  return sub_1D1670744();
}

uint64_t sub_1D16320F0()
{
  v1 = *v0;
  sub_1D16706A4();
  MEMORY[0x1D388D890](v1);
  return sub_1D16706E4();
}

uint64_t sub_1D1632138()
{
  v1 = *v0;
  sub_1D16706A4();
  MEMORY[0x1D388D890](v1);
  return sub_1D16706E4();
}

BOOL sub_1D16321C0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1D16321F0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D163221C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1D1632394(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D1632BE4(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D16323EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_1D166EEF4();
    v7 = MEMORY[0x1E69E6158];
    sub_1D1632BE4(255, &qword_1EDECAE18, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v11[0] = v6;
    v11[1] = v8;
    v11[2] = sub_1D1632708(&qword_1EC63DE90, MEMORY[0x1E69680B0]);
    v11[3] = sub_1D1632394(&qword_1EC63DE98, &qword_1EDECAE18, v7);
    v9 = a3(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D1632528()
{
  result = qword_1EC63DEB8;
  if (!qword_1EC63DEB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC63DEB8);
  }

  return result;
}

unint64_t sub_1D1632578()
{
  result = qword_1EC63DEC0;
  if (!qword_1EC63DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DEC0);
  }

  return result;
}

unint64_t sub_1D1632614()
{
  result = qword_1EDECA0C0;
  if (!qword_1EDECA0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECA0C0);
  }

  return result;
}

unint64_t sub_1D163266C()
{
  result = qword_1EDECA0B8;
  if (!qword_1EDECA0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECA0B8);
  }

  return result;
}

uint64_t sub_1D1632708(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1632750()
{
  result = qword_1EDECA0C8;
  if (!qword_1EDECA0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECA0C8);
  }

  return result;
}

unint64_t sub_1D16327A8()
{
  result = qword_1EDECA0B0;
  if (!qword_1EDECA0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECA0B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Weekdays.Day(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Weekdays.Day(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D163295C(uint64_t a1)
{
  sub_1D1627CE8();
  v3 = v2;
  v27 = *(v2 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_1D1627D98();
  sub_1D166FBE4();
  sub_1D1632708(&qword_1EC63DD40, sub_1D1627CE8);
  result = sub_1D1670104();
  v8 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    v9 = 0;
LABEL_22:
    result = (*(v27 + 8))(v6, v3);
    v23 = v8[3];
    if (v23 < 2)
    {
      return v8;
    }

    v24 = v23 >> 1;
    v22 = __OFSUB__(v24, v9);
    v25 = v24 - v9;
    if (!v22)
    {
      v8[2] = v25;
      return v8;
    }
  }

  else
  {
    v9 = 0;
    v10 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      v11 = v28;
      if (!v9)
      {
        v12 = v8[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_27;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_1D1632BE4(0, &qword_1EC63DED8, &type metadata for Weekdays, MEMORY[0x1E69E6F90]);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 25;
        }

        v18 = v17 >> 3;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 3);
        v19 = (v15 + 4);
        v20 = v8[3] >> 1;
        if (v8[2])
        {
          if (v15 != v8 || v19 >= &v8[v20 + 4])
          {
            memmove(v15 + 4, v8 + 4, 8 * v20);
          }

          v8[2] = 0;
        }

        v10 = (v19 + 8 * v20);
        v9 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v8 = v15;
      }

      v22 = __OFSUB__(v9--, 1);
      if (v22)
      {
        break;
      }

      *v10++ = v11;
      result = sub_1D1670104();
      if (v29)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D1632BE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D1632CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D1636EC4(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D161E668(a3, v27 - v11);
  v13 = sub_1D166FD84();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D161DF10(v12);
  }

  else
  {
    sub_1D166FD74();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D166FD14();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D166FA94() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1D161DF10(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D161DF10(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D1632F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D1636EC4(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D161E668(a3, v27 - v11);
  v13 = sub_1D166FD84();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D161DF10(v12);
  }

  else
  {
    sub_1D166FD74();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D166FD14();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v27[0] = a3;
      v21 = sub_1D166FA94() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_1D1636EC4(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1D161DF10(v27[0]);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D161DF10(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1D1636EC4(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D1633290()
{
  v1[5] = v0;
  v1[6] = swift_getObjectType();
  v2 = sub_1D166F4E4();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[10] = v5;
  *v5 = v1;
  v5[1] = sub_1D1633388;

  return sub_1D163367C();
}

uint64_t sub_1D1633388(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[10];
  v7 = *v2;
  v4[11] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1D1633490, 0, 0);
}

uint64_t sub_1D1633490()
{
  v24 = v0;
  v1 = v0[11];
  if (v1 >> 60 == 15 || (v2 = v0[3], v3 = v0[11], v4 = sub_1D1633C1C(), sub_1D163722C(v2, v1), !v4))
  {
    v7 = v0[9];
    sub_1D166F4C4();
    v8 = sub_1D166F4D4();
    v9 = sub_1D166FF44();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[7];
    if (v10)
    {
      v14 = v0[6];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315138;
      v17 = sub_1D1670754();
      v19 = sub_1D15F7A30(v17, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1D15E6000, v8, v9, "%s Failed to get the incompatibility result back from cache, getter returned nil.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1D388E250](v16, -1, -1);
      MEMORY[0x1D388E250](v15, -1, -1);
    }

    (*(v12 + 8))(v11, v13);
    v4 = 0;
  }

  else
  {
    v5 = v0[5] + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues;

    os_unfair_lock_lock(v5);
    v6 = *(v5 + 8);
    *(v5 + 8) = v4;

    os_unfair_lock_unlock(v5);
  }

  v20 = v0[9];

  v21 = v0[1];

  return v21(v4);
}

uint64_t sub_1D163367C()
{
  v1[20] = v0;
  v1[21] = swift_getObjectType();
  v2 = sub_1D166F4E4();
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1633748, 0, 0);
}

uint64_t sub_1D1633748()
{
  v1 = *(v0[20] + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_keyValueDomain);
  v2 = *MEMORY[0x1E69A3A00];
  v0[25] = *MEMORY[0x1E69A3A00];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1633884;
  v3 = swift_continuation_init();
  sub_1D1637240();
  v0[17] = v4;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D1634518;
  v0[13] = &block_descriptor_53;
  v0[14] = v3;
  [v1 dataForKey:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1633884()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_1D1633A08;
  }

  else
  {
    v3 = sub_1D1633994;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1633994()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  v3 = *(v0 + 192);

  v4 = *(v0 + 8);

  return v4(v2, v1);
}

uint64_t sub_1D1633A08()
{
  v27 = v0;
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  swift_willThrow();

  sub_1D166F4C4();
  v4 = v1;
  v5 = sub_1D166F4D4();
  v6 = sub_1D166FF44();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[26];
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  if (v7)
  {
    v12 = v0[21];
    v25 = v0[22];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v13 = 136315394;
    v16 = sub_1D1670754();
    v24 = v9;
    v18 = sub_1D15F7A30(v16, v17, &v26);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v8;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_1D15E6000, v5, v6, "[%s] Error asynchronously fetching the medications incompatibility cache from the KVD. Error: %@", v13, 0x16u);
    sub_1D15FADE4(v14);
    MEMORY[0x1D388E250](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1D388E250](v15, -1, -1);
    MEMORY[0x1D388E250](v13, -1, -1);

    (*(v10 + 8))(v24, v25);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = v0[24];

  v22 = v0[1];

  return v22(0, 0xF000000000000000);
}

uint64_t sub_1D1633C1C()
{
  v25[4] = *MEMORY[0x1E69E9840];
  v0 = sub_1D166F4E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = objc_opt_self();
  sub_1D15EE5A8(0, &qword_1EC63DF30, 0x1E69A3AE8);
  v7 = [v6 hk:swift_getObjCClassFromMetadata() typesForArrayOf:?];
  sub_1D166FE04();

  v8 = sub_1D166FDF4();

  v9 = sub_1D166F0D4();
  v25[0] = 0;
  v10 = [v5 unarchivedObjectOfClasses:v8 fromData:v9 error:v25];

  if (v10)
  {
    v11 = v25[0];
    sub_1D1670164();
    swift_unknownObjectRelease();
    sub_1D163705C(0, &qword_1EC63DF28, &qword_1EC63DF30, 0x1E69A3AE8, MEMORY[0x1E69E62F8]);
    if (swift_dynamicCast())
    {
      result = v24[1];
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    v13 = v25[0];
    v14 = sub_1D166F094();

    swift_willThrow();
    sub_1D166F4C4();
    v15 = v14;
    v16 = sub_1D166F4D4();
    v17 = sub_1D166FF44();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25[0] = v20;
      *v18 = 136315394;
      *(v18 + 4) = sub_1D15F7A30(1635017028, 0xE400000000000000, v25);
      *(v18 + 12) = 2112;
      v21 = v14;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v22;
      *v19 = v22;
      _os_log_impl(&dword_1D15E6000, v16, v17, "%s Failed to unserialize the incompatibility cache data to an object array, returning nil. %@", v18, 0x16u);
      sub_1D15FADE4(v19);
      MEMORY[0x1D388E250](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1D388E250](v20, -1, -1);
      MEMORY[0x1D388E250](v18, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v4, v0);
    result = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

char *MedicationsScheduleIncompatibilityCache.__allocating_init(healthStore:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1D1636914(a1);

  return v4;
}

char *MedicationsScheduleIncompatibilityCache.init(healthStore:)(void *a1)
{
  v2 = sub_1D1636914(a1);

  return v2;
}

uint64_t sub_1D163404C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D15FFFCC;

  return sub_1D16340DC();
}

uint64_t sub_1D16340DC()
{
  *(v1 + 72) = v0;
  *(v1 + 80) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1D163414C, 0, 0);
}

uint64_t sub_1D163414C()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *(v1 + 16) = *(v0 + 72);
  v2 = *(MEMORY[0x1E69E88D0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  sub_1D1636FD8();
  *v3 = v0;
  v3[1] = sub_1D1634248;

  return MEMORY[0x1EEE6DDE0](v0 + 64, 0, 0, 0xD000000000000023, 0x80000001D1677CD0, sub_1D1636FD0, v1, v4);
}

uint64_t sub_1D1634248()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1634360, 0, 0);
}

uint64_t sub_1D1634360()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[9];
    v3 = v0[10];
    v4 = v2 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues;
    os_unfair_lock_lock((v2 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues));
    v5 = *(v4 + 8);
    *(v4 + 8) = v1;

    os_unfair_lock_unlock(v4);
    v6 = _s27HealthMedicationsExperience0B28ScheduleIncompatibilityCacheC010serializedF06result10Foundation4DataVSaySo012HKMedicationdE6ResultCG_tF_0();
    v8 = v7;

    v9 = *(v2 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_keyValueDomain);
    v10 = sub_1D166F0D4();
    v11 = *MEMORY[0x1E69A3A00];
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    v0[6] = sub_1D16373FC;
    v0[7] = v12;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D15FABB0;
    v0[5] = &block_descriptor_43;
    v13 = _Block_copy(v0 + 2);
    v14 = v0[7];
    v15 = v11;

    [v9 setData:v10 forKey:v15 completion:v13];
    _Block_release(v13);

    sub_1D16370C4(v6, v8);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D1634518(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D15F9218();
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      v9 = a2;
      v10 = sub_1D166F0E4();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xF000000000000000;
    }

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1D1634604(int a1, void *a2)
{
  v4 = sub_1D166F4E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D166F4C4();
  v9 = a2;
  v10 = sub_1D166F4D4();
  v11 = sub_1D166FF64();

  if (os_log_type_enabled(v10, v11))
  {
    v26 = v4;
    v12 = swift_slowAlloc();
    v25 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v13 = 136315650;
    v16 = sub_1D1670754();
    v18 = sub_1D15F7A30(v16, v17, &v27);

    *(v13 + 4) = v18;
    *(v13 + 12) = 1024;
    *(v13 + 14) = v25 & 1;
    *(v13 + 18) = 2112;
    if (a2)
    {
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    v23 = v26;
    *(v13 + 20) = v20;
    *v14 = v21;
    _os_log_impl(&dword_1D15E6000, v10, v11, "[%s] Set incompatibility cache with success: %{BOOL}d, error: %@", v13, 0x1Cu);
    sub_1D15FADE4(v14);
    MEMORY[0x1D388E250](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1D388E250](v15, -1, -1);
    MEMORY[0x1D388E250](v13, -1, -1);

    return (*(v5 + 8))(v8, v23);
  }

  else
  {

    return (*(v5 + 8))(v8, v4);
  }
}