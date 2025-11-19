uint64_t sub_1ABE49A14()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1ABE49A3C()
{
  sub_1ABE49A14();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABE49AB8(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_1ABF24FE4();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1ABF24164();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_1ABE49F28(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1ABE49CE4(0, v4, 1, a1, a2);
  }
}

uint64_t sub_1ABE49BF0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABE4A8D8(v7, v8, a1, v4);
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
    return sub_1ABE49E1C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABE49CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v8 = *a4;
    v9 = (*a4 + 16 * a3);
    v10 = a1 - a3;
    while (2)
    {
      v23 = a3;
      v11 = (v8 + 16 * a3);
      v12 = *v11;
      v13 = v11[1];
      v19 = v10;
      v20 = v9;
      do
      {
        v22[0] = v12;
        v22[1] = v13;
        v14 = *(v9 - 1);
        v21[0] = *(v9 - 2);
        v21[1] = v14;

        v15 = sub_1ABE497D4(v22, v21, a5);
        if (v5)
        {
        }

        v16 = v15;

        if ((v16 & 1) == 0)
        {
          break;
        }

        if (!v8)
        {
          __break(1u);
          return result;
        }

        v12 = *v9;
        v13 = v9[1];
        *v9 = *(v9 - 1);
        *(v9 - 1) = v13;
        *(v9 - 2) = v12;
        v9 -= 2;
      }

      while (!__CFADD__(v10++, 1));
      a3 = v23 + 1;
      v9 = v20 + 2;
      v10 = v19 - 1;
      if (v23 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1ABE49E1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 88 * a3 - 88;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *(v10 + 11);
        v11 = *(v10 + 13);
        v12 = *(v10 + 2);
        if (v11 >= v12)
        {
          if (v11 != v12)
          {
            break;
          }

          if (result == *v10 && *(v10 + 12) == *(v10 + 1))
          {
            break;
          }

          result = sub_1ABF25054();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10 + 88, sizeof(__dst));
        memcpy(v10 + 88, v10, 0x58uLL);
        result = memcpy(v10, __dst, 0x58uLL);
        v10 -= 88;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 88;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1ABE49F28(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a3[1];
  v151 = a5;
  if (v6 < 1)
  {
    swift_retain_n();
    v8 = MEMORY[0x1E69E7CC0];
LABEL_108:
    v144 = *a1;
    if (*a1)
    {
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_145;
      }

      goto LABEL_110;
    }

    goto LABEL_154;
  }

  swift_retain_n();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_22;
    }

    v134 = v8;
    v11 = *a3;
    v12 = v10;
    v13 = (*a3 + 16 * v10);
    v14 = v13[1];
    v149 = *v13;
    v150 = v14;
    v15 = (v11 + 16 * v9);
    v16 = v15[1];
    v147 = *v15;
    v148 = v16;

    v17 = sub_1ABE497D4(&v149, &v147, v5);
    if (v142)
    {

LABEL_120:
    }

    v18 = v17;

    v19 = 16 * v9;
    v20 = v9;
    v21 = v15 + 3;
    v130 = v20;
    v22 = v20 + 2;
    v10 = v12;
    do
    {
      v23 = v22;
      if (v10 + 1 >= v6)
      {
        v10 = v6;
        if ((v18 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_9:
        v9 = v130;
        if (v10 >= v130)
        {
          v8 = v134;
          if (v130 < v10)
          {
            if (v6 >= v23)
            {
              v28 = v23;
            }

            else
            {
              v28 = v6;
            }

            v29 = 16 * v28;
            v30 = v10;
            v31 = v130;
            do
            {
              if (v31 != --v30)
              {
                v32 = *a3;
                if (!*a3)
                {
                  goto LABEL_152;
                }

                v33 = (v32 + v19);
                v34 = v32 + v29;
                v35 = *v33;
                v36 = v33[1];
                *v33 = *(v34 - 16);
                *(v34 - 16) = v35;
                *(v34 - 8) = v36;
              }

              ++v31;
              v29 -= 16;
              v19 += 16;
            }

            while (v31 < v30);
          }

          goto LABEL_22;
        }

        goto LABEL_148;
      }

      v24 = v10;
      v25 = v21[2];
      v149 = v21[1];
      v150 = v25;
      v26 = *v21;
      v147 = *(v21 - 1);
      v148 = v26;

      v27 = sub_1ABE497D4(&v149, &v147, v151);

      v21 += 2;
      v10 = v24 + 1;
      v22 = v23 + 1;
    }

    while (((v18 ^ v27) & 1) == 0);
    if (v18)
    {
      goto LABEL_9;
    }

LABEL_21:
    v8 = v134;
    v9 = v130;
LABEL_22:
    v37 = a3[1];
    if (v10 < v37)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_144;
      }

      if (v10 - v9 < a4)
      {
        v38 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          __break(1u);
        }

        else
        {
          if (v38 >= v37)
          {
            v38 = a3[1];
          }

          if (v38 >= v9)
          {
            if (v10 == v38)
            {
              goto LABEL_55;
            }

            v133 = v38;
            v135 = v8;
            v143 = *a3;
            v39 = (*a3 + 16 * v10);
            v131 = v9;
            v40 = v9 - v10;
            while (1)
            {
              v138 = v39;
              v139 = v10;
              v41 = (v143 + 16 * v10);
              v42 = *v41;
              v43 = v41[1];
              v137 = v40;
              while (1)
              {
                v44 = *(v39 - 2);
                v45 = *(v39 - 1);
                v46 = v151;
                swift_beginAccess();
                v47 = *(v46 + 16);
                v48 = *(v47 + 16);

                if (v48 && (v49 = sub_1ABA94FC8(v42, v43), (v50 & 1) != 0))
                {
                  v51 = *(v47 + 56) + 40 * v49;
                  v52 = *(v51 + 8);
                  v144 = *v51;
                  v53 = *(v51 + 16);
                  v54 = *(v51 + 24);
                  swift_endAccess();
                }

                else
                {
                  swift_endAccess();
                  sub_1ABAD219C(&unk_1EB4DAFF0, &unk_1ABF6BFC0);
                  v144 = 0;
                  sub_1ABF239C4();
                  v54 = 0.0;
                  v52 = 0xE000000000000000;
                }

                v55 = v151;
                swift_beginAccess();
                v56 = *(v55 + 16);
                if (*(v56 + 16) && (v57 = sub_1ABA94FC8(v44, v45), (v58 & 1) != 0))
                {
                  v59 = *(v56 + 56) + 40 * v57;
                  v60 = *v59;
                  v61 = *(v59 + 8);
                  v62 = *(v59 + 16);
                  v63 = *(v59 + 24);
                  swift_endAccess();
                }

                else
                {
                  swift_endAccess();
                  sub_1ABAD219C(&unk_1EB4DAFF0, &unk_1ABF6BFC0);
                  sub_1ABF239C4();
                  v60 = 0;
                  v61 = 0xE000000000000000;
                  v63 = 0.0;
                }

                if (v54 != v63)
                {

                  if (v63 >= v54)
                  {
                    goto LABEL_53;
                  }

                  goto LABEL_48;
                }

                if (v60 == v144 && v61 == v52)
                {
                  break;
                }

                v65 = sub_1ABF25054();

                if ((v65 & 1) == 0)
                {
                  goto LABEL_53;
                }

LABEL_48:
                if (!v143)
                {
                  goto LABEL_149;
                }

                v42 = *v39;
                v43 = v39[1];
                *v39 = *(v39 - 1);
                *(v39 - 1) = v43;
                *(v39 - 2) = v42;
                v39 -= 2;
                if (__CFADD__(v40++, 1))
                {
                  goto LABEL_53;
                }
              }

LABEL_53:
              v10 = v139 + 1;
              v39 = v138 + 2;
              v40 = v137 - 1;
              if (v139 + 1 == v133)
              {
                v10 = v133;
                v8 = v135;
                v9 = v131;
                goto LABEL_55;
              }
            }
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
LABEL_153:

        __break(1u);
LABEL_154:

        __break(1u);
        return result;
      }
    }

LABEL_55:
    if (v10 < v9)
    {
      goto LABEL_143;
    }

    v140 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = *(v8 + 16);
      sub_1ABAD8820();
      v8 = v115;
    }

    v67 = *(v8 + 16);
    v68 = v67 + 1;
    if (v67 >= *(v8 + 24) >> 1)
    {
      sub_1ABAD8820();
      v8 = v116;
    }

    *(v8 + 16) = v68;
    v69 = (v8 + 32);
    v70 = (v8 + 32 + 16 * v67);
    *v70 = v9;
    v70[1] = v140;
    v145 = *a1;
    if (!*a1)
    {
      goto LABEL_153;
    }

    if (v67)
    {
      break;
    }

LABEL_105:
    v7 = v140;
    v6 = a3[1];
    v5 = v151;
    if (v140 >= v6)
    {
      goto LABEL_108;
    }
  }

  v144 = (v8 + 32);
  while (1)
  {
    v71 = v68 - 1;
    v72 = &v69[16 * v68 - 16];
    v73 = (v8 + 16 * v68);
    if (v68 >= 4)
    {
      v78 = &v69[16 * v68];
      v79 = *(v78 - 8);
      v80 = *(v78 - 7);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_131;
      }

      v83 = *(v78 - 6);
      v82 = *(v78 - 5);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_132;
      }

      v85 = v73[1];
      v86 = v85 - *v73;
      if (__OFSUB__(v85, *v73))
      {
        goto LABEL_134;
      }

      v84 = __OFADD__(v76, v86);
      v87 = v76 + v86;
      if (v84)
      {
        goto LABEL_137;
      }

      if (v87 >= v81)
      {
        v101 = *v72;
        v100 = *(v72 + 1);
        v84 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v84)
        {
          goto LABEL_142;
        }

        if (v76 < v102)
        {
          v71 = v68 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_76;
    }

    if (v68 == 3)
    {
      v74 = *(v8 + 32);
      v75 = *(v8 + 40);
      v84 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      v77 = v84;
LABEL_76:
      if (v77)
      {
        goto LABEL_133;
      }

      v89 = *v73;
      v88 = v73[1];
      v90 = __OFSUB__(v88, v89);
      v91 = v88 - v89;
      v92 = v90;
      if (v90)
      {
        goto LABEL_136;
      }

      v93 = *(v72 + 1);
      v94 = v93 - *v72;
      if (__OFSUB__(v93, *v72))
      {
        goto LABEL_139;
      }

      if (__OFADD__(v91, v94))
      {
        goto LABEL_141;
      }

      if (v91 + v94 >= v76)
      {
        if (v76 < v94)
        {
          v71 = v68 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_91;
    }

    if (v68 < 2)
    {
      goto LABEL_135;
    }

    v96 = *v73;
    v95 = v73[1];
    v84 = __OFSUB__(v95, v96);
    v91 = v95 - v96;
    v92 = v84;
LABEL_91:
    if (v92)
    {
      goto LABEL_138;
    }

    v98 = *v72;
    v97 = *(v72 + 1);
    v84 = __OFSUB__(v97, v98);
    v99 = v97 - v98;
    if (v84)
    {
      goto LABEL_140;
    }

    if (v99 < v91)
    {
      goto LABEL_105;
    }

LABEL_98:
    if (v71 - 1 >= v68)
    {
      break;
    }

    v103 = *a3;
    if (!*a3)
    {
      goto LABEL_150;
    }

    v104 = v8;
    v105 = &v69[16 * v71 - 16];
    v106 = *v105;
    v107 = v71;
    v108 = &v69[16 * v71];
    v109 = *(v108 + 1);
    v110 = (v103 + 16 * *v105);
    v111 = (v103 + 16 * *v108);
    v112 = v103 + 16 * v109;
    v8 = v151;

    sub_1ABE4AFB0(v110, v111, v112, v145, v8);
    if (v142)
    {

      goto LABEL_120;
    }

    if (v109 < v106)
    {
      goto LABEL_125;
    }

    v8 = v104;
    v113 = *(v104 + 16);
    if (v107 > v113)
    {
      goto LABEL_126;
    }

    *v105 = v106;
    *(v105 + 1) = v109;
    if (v107 >= v113)
    {
      goto LABEL_127;
    }

    v68 = v113 - 1;
    sub_1ABE7A0CC(v108 + 16, v113 - 1 - v107, v108);
    *(v104 + 16) = v113 - 1;
    v69 = v144;
    if (v113 <= 2)
    {
      goto LABEL_105;
    }
  }

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
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  v8 = sub_1ABE7A0B4(v8);
LABEL_110:
  v117 = (v8 + 16);
  v118 = *(v8 + 16);
  for (i = v8; ; v8 = i)
  {
    if (v118 < 2)
    {
    }

    v119 = *a3;
    if (!*a3)
    {
      goto LABEL_151;
    }

    v120 = (v8 + 16 * v118);
    v121 = *v120;
    v122 = v117;
    v123 = &v117[2 * v118];
    v8 = *(v123 + 1);
    v124 = (v119 + 16 * *v120);
    v146 = (v119 + 16 * *v123);
    v125 = v119 + 16 * v8;
    v126 = v151;

    sub_1ABE4AFB0(v124, v146, v125, v144, v126);
    if (v142)
    {
      break;
    }

    if (v8 < v121)
    {
      goto LABEL_128;
    }

    if (v118 - 2 >= *v122)
    {
      goto LABEL_129;
    }

    v117 = v122;
    *v120 = v121;
    v120[1] = v8;
    v127 = *v122 - v118;
    if (*v122 < v118)
    {
      goto LABEL_130;
    }

    v118 = *v122 - 1;
    sub_1ABE7A0CC(v123 + 16, v127, v123);
    *v122 = v118;
  }
}

void sub_1ABE4A8D8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v86 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = *a3 + 88 * v6;
        v11 = *(v10 + 16);
        v12 = *a3 + 88 * v8;
        v13 = *(v12 + 16);
        if (v11 >= v13)
        {
          if (v11 != v13 || (*v10 == *v12 ? (v15 = *(v10 + 8) == *(v12 + 8)) : (v15 = 0), v15))
          {
            v14 = 0;
          }

          else
          {
            v14 = sub_1ABF25054();
          }
        }

        else
        {
          v14 = 1;
        }

        v6 = v8 + 2;
        v16 = 88 * v8;
        v17 = (v9 + 88 * v8 + 192);
        while (v6 < v5)
        {
          v18 = *(v17 - 11);
          if (*v17 >= v18)
          {
            if (*v17 != v18 || (*(v17 - 2) == *(v17 - 13) ? (v19 = *(v17 - 1) == *(v17 - 12)) : (v19 = 0), v19))
            {
              if (v14)
              {
                goto LABEL_28;
              }
            }

            else if ((v14 & 1) != (sub_1ABF25054() & 1))
            {
              break;
            }
          }

          else if ((v14 & 1) == 0)
          {
            goto LABEL_35;
          }

          ++v6;
          v17 += 11;
        }

        if (v14)
        {
LABEL_28:
          if (v6 < v8)
          {
            goto LABEL_133;
          }

          if (v8 < v6)
          {
            v20 = 88 * v6 - 88;
            v21 = v6;
            v22 = v8;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_136;
                }

                memcpy(__dst, (v23 + v16), sizeof(__dst));
                memmove((v23 + v16), (v23 + v20), 0x58uLL);
                memcpy((v23 + v20), __dst, 0x58uLL);
              }

              ++v22;
              v20 -= 88;
              v16 += 88;
            }

            while (v22 < v21);
          }
        }
      }

LABEL_35:
      v24 = a3[1];
      if (v6 < v24)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_130;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_131;
          }

          if (v8 + a4 >= v24)
          {
            v25 = a3[1];
          }

          else
          {
            v25 = v8 + a4;
          }

          if (v25 < v8)
          {
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
            return;
          }

          if (v6 != v25)
          {
            v82 = v7;
            v26 = *a3;
            v27 = *a3 + 88 * v6 - 88;
            v28 = v8 - v6;
            do
            {
              v29 = v28;
              v30 = v27;
              do
              {
                v31 = *(v30 + 104);
                v32 = *(v30 + 16);
                if (v31 >= v32)
                {
                  if (v31 != v32)
                  {
                    break;
                  }

                  v33 = *(v30 + 88) == *v30 && *(v30 + 96) == *(v30 + 8);
                  if (v33 || (sub_1ABF25054() & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v26)
                {
                  goto LABEL_134;
                }

                memcpy(__dst, (v30 + 88), sizeof(__dst));
                memcpy((v30 + 88), v30, 0x58uLL);
                memcpy(v30, __dst, 0x58uLL);
                v30 -= 88;
              }

              while (!__CFADD__(v29++, 1));
              ++v6;
              v27 += 88;
              --v28;
            }

            while (v6 != v25);
            v6 = v25;
            v7 = v82;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_129;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = v7[2];
        sub_1ABAD8820();
        v7 = v78;
      }

      v35 = v7[2];
      v36 = v35 + 1;
      if (v35 >= v7[3] >> 1)
      {
        sub_1ABAD8820();
        v7 = v79;
      }

      v7[2] = v36;
      v37 = v7 + 4;
      v38 = &v7[2 * v35 + 4];
      *v38 = v8;
      v38[1] = v6;
      v83 = *a1;
      if (!*a1)
      {
        goto LABEL_137;
      }

      if (v35)
      {
        while (1)
        {
          v39 = v36 - 1;
          v40 = &v37[2 * v36 - 2];
          v41 = &v7[2 * v36];
          if (v36 >= 4)
          {
            break;
          }

          if (v36 == 3)
          {
            v42 = v7[4];
            v43 = v7[5];
            v52 = __OFSUB__(v43, v42);
            v44 = v43 - v42;
            v45 = v52;
LABEL_78:
            if (v45)
            {
              goto LABEL_119;
            }

            v57 = *v41;
            v56 = v41[1];
            v58 = __OFSUB__(v56, v57);
            v59 = v56 - v57;
            v60 = v58;
            if (v58)
            {
              goto LABEL_122;
            }

            v61 = v40[1];
            v62 = v61 - *v40;
            if (__OFSUB__(v61, *v40))
            {
              goto LABEL_125;
            }

            if (__OFADD__(v59, v62))
            {
              goto LABEL_127;
            }

            if (v59 + v62 >= v44)
            {
              if (v44 < v62)
              {
                v39 = v36 - 2;
              }

              goto LABEL_100;
            }

            goto LABEL_93;
          }

          if (v36 < 2)
          {
            goto LABEL_121;
          }

          v64 = *v41;
          v63 = v41[1];
          v52 = __OFSUB__(v63, v64);
          v59 = v63 - v64;
          v60 = v52;
LABEL_93:
          if (v60)
          {
            goto LABEL_124;
          }

          v66 = *v40;
          v65 = v40[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_126;
          }

          if (v67 < v59)
          {
            goto LABEL_107;
          }

LABEL_100:
          if (v39 - 1 >= v36)
          {
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
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          if (!*a3)
          {
            goto LABEL_135;
          }

          v71 = v7;
          v72 = &v37[2 * v39 - 2];
          v73 = *v72;
          v74 = &v37[2 * v39];
          v75 = v74[1];
          sub_1ABE4B30C((*a3 + 88 * *v72), (*a3 + 88 * *v74), (*a3 + 88 * v75), v83);
          if (v4)
          {
            goto LABEL_112;
          }

          if (v75 < v73)
          {
            goto LABEL_114;
          }

          v76 = v71[2];
          if (v39 > v76)
          {
            goto LABEL_115;
          }

          *v72 = v73;
          v72[1] = v75;
          if (v39 >= v76)
          {
            goto LABEL_116;
          }

          v36 = v76 - 1;
          memmove(&v37[2 * v39], v74 + 2, 16 * (v76 - 1 - v39));
          v7 = v71;
          v71[2] = v76 - 1;
          if (v76 <= 2)
          {
            goto LABEL_107;
          }
        }

        v46 = &v37[2 * v36];
        v47 = *(v46 - 8);
        v48 = *(v46 - 7);
        v52 = __OFSUB__(v48, v47);
        v49 = v48 - v47;
        if (v52)
        {
          goto LABEL_117;
        }

        v51 = *(v46 - 6);
        v50 = *(v46 - 5);
        v52 = __OFSUB__(v50, v51);
        v44 = v50 - v51;
        v45 = v52;
        if (v52)
        {
          goto LABEL_118;
        }

        v53 = v41[1];
        v54 = v53 - *v41;
        if (__OFSUB__(v53, *v41))
        {
          goto LABEL_120;
        }

        v52 = __OFADD__(v44, v54);
        v55 = v44 + v54;
        if (v52)
        {
          goto LABEL_123;
        }

        if (v55 >= v49)
        {
          v69 = *v40;
          v68 = v40[1];
          v52 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v52)
          {
            goto LABEL_128;
          }

          if (v44 < v70)
          {
            v39 = v36 - 2;
          }

          goto LABEL_100;
        }

        goto LABEL_78;
      }

LABEL_107:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v86 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_138;
  }

  sub_1ABE4AE78(&v86, *a1, a3);
LABEL_112:
}

uint64_t sub_1ABE4AE78(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1ABE4B30C((*a3 + 88 * *v4), (*a3 + 88 * *v9), (*a3 + 88 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1ABE4AFB0(char *a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v52 = a5;
  v6 = a4;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 16;
  v11 = (a3 - a2) / 16;
  if (v9 < v11)
  {
    sub_1ABAC9278(a1, (a2 - a1) / 16, a4);
    v12 = &v6[2 * v9];
    v13 = a3;
    while (1)
    {
      if (v6 >= v12 || v7 >= v13)
      {
        v7 = v8;
        goto LABEL_29;
      }

      v15 = v7[1];
      v16 = v7;
      v50 = *v7;
      v51 = v15;
      v17 = v6[1];
      v48 = *v6;
      v49 = v17;

      v18 = sub_1ABE497D4(&v50, &v48, v52);
      if (v5)
      {

        v38 = (v12 - v6) / 16;
        if (v8 < v6 || v8 >= &v6[2 * v38])
        {
          v36 = 16 * v38;
          v37 = v8;
          v40 = v6;
          goto LABEL_54;
        }

        if (v8 != v6)
        {
          v36 = 16 * v38;
          v37 = v8;
LABEL_51:
          v40 = v6;
LABEL_54:
          memmove(v37, v40, v36);
        }

        goto LABEL_55;
      }

      v19 = v18;

      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = v16;
      v7 = v16 + 2;
      v13 = a3;
      if (v8 != v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 2;
    }

    v20 = v6;
    v21 = v8 == v6;
    v6 += 2;
    v13 = a3;
    v7 = v16;
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v20;
    goto LABEL_13;
  }

  sub_1ABAC9278(a2, (a3 - a2) / 16, a4);
  v47 = &v6[2 * v11];
  v22 = a3;
  __src = v6;
LABEL_15:
  v23 = 0;
  v44 = v7 - 2;
  while (1)
  {
    v12 = &v47[v23 / 8];
    if (&v47[v23 / 8] <= v6 || v7 <= a1)
    {
LABEL_29:
      v34 = (v12 - v6) / 16;
      if (v7 < v6 || v7 >= &v6[2 * v34])
      {
        memmove(v7, v6, 16 * v34);
      }

      else if (v7 != v6)
      {
        v36 = 16 * v34;
        v37 = v7;
        goto LABEL_51;
      }

      goto LABEL_55;
    }

    v25 = v22;
    v27 = *(v12 - 1);
    v26 = v12 - 2;
    v50 = *(v12 - 2);
    v51 = v27;
    v28 = *(v7 - 1);
    v29 = v7;
    v48 = *(v7 - 2);
    v49 = v28;

    v30 = sub_1ABE497D4(&v50, &v48, v52);
    if (v5)
    {
      break;
    }

    v31 = v30;

    v32 = (v25 + v23);
    v33 = (v25 + v23 - 16);
    if (v31)
    {
      v47 = (v47 + v23);
      v22 = v25 + v23 - 16;
      v6 = __src;
      v7 = v44;
      if (v32 != v29)
      {
        *v33 = *v44;
        v7 = v44;
        v22 = v33;
      }

      goto LABEL_15;
    }

    v22 = v25;
    if (&v47[v23 / 8] != (v25 + v23))
    {
      *v33 = *v26;
    }

    v23 -= 16;
    v6 = __src;
    v7 = v29;
  }

  v40 = __src;
  v41 = (v47 - __src + v23) / 16;
  if (v7 < __src || v7 >= &__src[2 * v41])
  {
    v36 = 16 * v41;
    v37 = v7;
    goto LABEL_54;
  }

  if (v7 != __src)
  {
    v36 = 16 * v41;
    v37 = v7;
    goto LABEL_54;
  }

LABEL_55:

  return 1;
}

uint64_t sub_1ABE4B30C(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 88;
  v9 = (a3 - a2) / 88;
  if (v8 < v9)
  {
    sub_1ABADD380(a1, (a2 - a1) / 88, a4);
    v10 = &v4[11 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v16 = v7;
        goto LABEL_40;
      }

      v12 = v6[2];
      v13 = v4[2];
      if (v12 < v13)
      {
        break;
      }

      if (v12 == v13)
      {
        v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
        if (!v15 && (sub_1ABF25054() & 1) != 0)
        {
          break;
        }
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 11;
      if (!v15)
      {
        goto LABEL_9;
      }

LABEL_10:
      v7 += 11;
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 11;
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v7, v14, 0x58uLL);
    goto LABEL_10;
  }

  sub_1ABADD380(a2, (a3 - a2) / 88, a4);
  v10 = &v4[11 * v9];
LABEL_21:
  v16 = v6;
  v6 -= 11;
  for (v5 -= 11; v10 > v4 && v16 > v7; v5 -= 11)
  {
    v18 = *(v10 - 9);
    v19 = *(v16 - 9);
    if (v18 < v19 || v18 == v19 && (*(v10 - 11) == *(v16 - 11) ? (v20 = *(v10 - 10) == *(v16 - 10)) : (v20 = 0), !v20 && (sub_1ABF25054() & 1) != 0))
    {
      if (v5 + 11 != v16)
      {
        memmove(v5, v6, 0x58uLL);
      }

      goto LABEL_21;
    }

    if (v10 != v5 + 11)
    {
      memmove(v5, v10 - 11, 0x58uLL);
    }

    v10 -= 11;
  }

LABEL_40:
  v21 = (v10 - v4) / 88;
  if (v16 != v4 || v16 >= &v4[11 * v21])
  {
    memmove(v16, v4, 88 * v21);
  }

  return 1;
}

uint64_t sub_1ABE4B5BC@<X0>(uint64_t a1@<X8>)
{
  sub_1ABB33F2C();
  sub_1ABB34118();
  sub_1ABB33F60();
  sub_1ABB34118();
  sub_1ABB32E40();
  v3 = v2;
  v5 = v4;

  *a1 = v18;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
  *(a1 + 48) = v12;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  *(a1 + 80) = v10;
  *(a1 + 88) = v11;
  *(a1 + 96) = v3;
  *(a1 + 104) = v5;
  return result;
}

uint64_t sub_1ABE4B78C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t sub_1ABE4B7D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t sub_1ABE4B858()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1ABE4B8D8()
{
  result = qword_1EB4DB000;
  if (!qword_1EB4DB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB000);
  }

  return result;
}

unint64_t sub_1ABE4B92C()
{
  result = qword_1EB4DB008;
  if (!qword_1EB4DB008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB008);
  }

  return result;
}

unint64_t sub_1ABE4B9AC()
{
  result = qword_1EB4CEC00;
  if (!qword_1EB4CEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEC00);
  }

  return result;
}

unint64_t sub_1ABE4BA00()
{
  result = qword_1EB4CEC08;
  if (!qword_1EB4CEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEC08);
  }

  return result;
}

uint64_t sub_1ABE4BA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABE4BABC()
{
  result = qword_1EB4CEBE0;
  if (!qword_1EB4CEBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEBE0);
  }

  return result;
}

unint64_t sub_1ABE4BB10()
{
  result = qword_1EB4CEBE8;
  if (!qword_1EB4CEBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEBE8);
  }

  return result;
}

uint64_t sub_1ABE4BB64(void *__src, __int128 *a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  v12 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 24);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  swift_getObjectType();
  v13 = *(a3 + 16);
  sub_1ABF241F4();
  result = sub_1ABF22464();
  if (!v4)
  {
    return v15;
  }

  return result;
}

uint64_t sub_1ABE4BC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, __int128 *a6@<X5>, const void *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, void *a10)
{
  v40 = a1;
  v43 = a7;
  v38 = a9;
  v16 = sub_1ABF22924();
  v58 = *(v16 - 8);
  v17 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v47 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v48 = &v38 - v20;
  v42 = v21;
  if (a4 == 1)
  {
    v46 = 0;
    v44 = 0;
    v39 = 0;
    v45 = 1;
  }

  else
  {
    v45 = a3;
    v46 = a2;
    v44 = a4;
    v39 = a5;
  }

  v57 = *a6;
  v22 = a10[4];
  sub_1ABB3E558(&v57, v53);
  sub_1ABE4C0D8(a2, a3, a4);
  v23 = v22(a8, a10);
  v25 = v24;
  v26 = v57;
  v54[3] = sub_1ABF22424();
  v54[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v54);
  memcpy(__dst, v43, 0x69uLL);
  memcpy(v53, v43, 0x69uLL);
  v50 = v26;
  v51 = v23;
  v52 = v25;
  sub_1ABE10DCC(__dst, &v49);
  TriplesQuery.Clause.Impl.graphIdentifierSQLExpression(config:)(&v50);
  memcpy(v55, v53, 0x69uLL);
  sub_1ABE4C0EC(v55);

  v27 = a10[2];
  v28 = v48;
  sub_1ABF221C4();
  sub_1ABA84B54(v54);
  if (v44)
  {
    v53[0] = v44;
    LOBYTE(v53[1]) = v39 & 1;
    TriplesSort.sqlOrdering.getter();
    v29 = v42;
    swift_getWitnessTable();
    v30 = v47;
    sub_1ABF224A4();

    v31 = v58;
    (*(v58 + 8))(v28, v29);
    (*(v31 + 32))(v28, v30, v29);

    v33 = v46;
  }

  else
  {

    v31 = v58;
    v33 = v46;
    v30 = v47;
    v29 = v42;
  }

  if ((v45 & 1) == 0)
  {
    if (v33 < 0)
    {
      __break(1u);
      return result;
    }

    swift_getWitnessTable();
    sub_1ABF22754();
    (*(v31 + 8))(v28, v29);
    (*(v31 + 32))(v28, v30, v29);
  }

  swift_getWitnessTable();
  v34 = a10[1];
  v35 = v41;
  v36 = sub_1ABF22234();
  if (v35)
  {
    return (*(v31 + 8))(v28, v29);
  }

  v37 = v36;
  result = (*(v31 + 8))(v28, v29);
  *v38 = v37;
  return result;
}

uint64_t sub_1ABE4C064(void *a1, __int128 *a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 4);
  return sub_1ABE4BB64(a1, a2, a3);
}

uint64_t sub_1ABE4C0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t type metadata accessor for SearchableViewDatabaseTable()
{
  result = qword_1ED871B58;
  if (!qword_1ED871B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1ABE4C1D0()
{
  sub_1ABB2CA7C();
  if (v0 <= 0x3F)
  {
    sub_1ABB2CAD4();
    if (v1 <= 0x3F)
    {
      sub_1ABE4C274();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1ABE4C274()
{
  if (!qword_1ED871B00)
  {
    v0 = sub_1ABF241F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED871B00);
    }
  }
}

uint64_t sub_1ABE4C2C4(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v4 = v5;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_9:
      result = sub_1ABE4FBC4(result, v4);
      break;
    case 3uLL:
      result = 0;
      v2 = 0;
      goto LABEL_5;
    default:
      v2 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1ABE4FB48(result, v2);
      break;
  }

  return result;
}

uint64_t SemanticSearchServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t static SemanticSearchService.SemanticSearchOptions.defaultSemanticSearchOptions.getter()
{
  v0 = type metadata accessor for SemanticSearchService.SemanticSearchOptions();

  return MEMORY[0x1EEE6C000](v0, &unk_1EB4D04C0);
}

uint64_t SemanticSearchService.__allocating_init(options:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SemanticSearchService.init(options:)(a1);
  return v2;
}

uint64_t SemanticSearchService.init(options:)(uint64_t a1)
{
  v55 = a1;
  v2 = v1;
  v56[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1ABF230A4();
  v4 = sub_1ABA7BB64(v3);
  v51 = v5;
  v52 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v10 = v9 - v8;
  v11 = sub_1ABF21CF4();
  v12 = sub_1ABA7AB80(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v15 = sub_1ABF23074();
  v16 = sub_1ABA7BB64(v15);
  v53 = v17;
  v54 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7AC18();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v51 - v24;
  v26 = type metadata accessor for ViewService();
  v27 = static ViewService.clientService.getter(v26);
  *(v1 + 16) = v27;
  v28 = (v1 + 16);
  v29 = *(v27 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  swift_unknownObjectRetain();
  v30 = sub_1ABF23BD4();
  v56[0] = 0;
  v31 = [v29 requestAssertionForViewName:v30 error:v56];
  swift_unknownObjectRelease();

  v32 = v56[0];
  if (!v31)
  {
    v46 = v56[0];
    sub_1ABF21BE4();

    swift_willThrow();
LABEL_6:

    type metadata accessor for SemanticSearchService();
    swift_deallocPartialClassInstance();
    goto LABEL_7;
  }

  *(v2 + 40) = v55;
  v33 = objc_allocWithZone(MEMORY[0x1E696AB78]);

  v34 = v32;
  v35 = [v33 init];
  *(v2 + 48) = v35;
  v28 = (v2 + 48);
  v36 = v35;
  v37 = sub_1ABF23BD4();
  [v36 setDateFormat_];

  v38 = [objc_opt_self() contextualEmbeddingWithLanguage_];
  if (!v38)
  {
    sub_1ABE4C94C();
    swift_allocError();
    *v47 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    v48 = *(v2 + 40);
    goto LABEL_6;
  }

  *(v2 + 24) = v38;
  v39 = v38;
  v40 = [v31 viewArtifactURL];
  sub_1ABF21CA4();

  (*(v51 + 104))(v10, *MEMORY[0x1E69DF528], v52);
  [*(v2 + 24) sentenceVectorDimension];
  sub_1ABF23054();
  v42 = v53;
  v41 = v54;
  (*(v53 + 16))(v22, v25, v54);
  v43 = sub_1ABF23044();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  *(v2 + 32) = sub_1ABF22FF4();
  sub_1ABF23024();

  swift_unknownObjectRelease();
  (*(v42 + 8))(v25, v41);
LABEL_7:
  v49 = *MEMORY[0x1E69E9840];
  return v2;
}

unint64_t sub_1ABE4C94C()
{
  result = qword_1EB4DB010;
  if (!qword_1EB4DB010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB010);
  }

  return result;
}

uint64_t SemanticSearchService.deinit()
{
  v1 = v0;
  v2 = *(v0 + 32);

  sub_1ABF23034();

  v3 = *(v1 + 32);

  v4 = *(v1 + 40);

  return v1;
}

uint64_t SemanticSearchService.__deallocating_deinit()
{
  SemanticSearchService.deinit();

  return swift_deallocClassInstance();
}

id sub_1ABE4CA38()
{
  v17[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 24);
  v2 = [v1 maximumSequenceLength];

  v3 = sub_1ABD52B98(v2);
  v4 = MEMORY[0x1AC5A9330](v3);
  v6 = v5;

  v7 = *MEMORY[0x1E6977748];
  v17[0] = 0;
  v8 = sub_1ABE4FC60(v4, v6, v7, v17, v1);
  if (v8)
  {
    v9 = v8;
    v10 = v17[0];
    v11 = sub_1ABF21DD4();
    v13 = v12;

    v14 = sub_1ABE4C2C4(v11, v13);
    sub_1ABA96210(v11, v13);
  }

  else
  {
    v14 = v17[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void *sub_1ABE4CB84@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result && (v4 = result, v5 = a2 - result, (a2 - result + 3) >= 7))
  {
    v7 = v5 / 4;
    if (v5 <= 3)
    {
      v8 = 4 * v7;
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D1360, &unk_1ABF41170);
      v8 = 4 * v7;
      v6 = swift_allocObject();
      v9 = j__malloc_size(v6);
      v6[2] = v7;
      v6[3] = 2 * ((v9 - 32) / 4);
    }

    result = memcpy(v6 + 4, v4, v8);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v6;
  return result;
}

char *sub_1ABE4CC54(uint64_t *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v4 = sub_1ABA7AB80(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7AC18();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v141 - v11;
  v13 = sub_1ABF21EB4();
  v14 = sub_1ABA7BB64(v13);
  v152 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7AC18();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v18);
  v146 = &v141 - v19;
  sub_1ABA8409C();
  v162 = sub_1ABF223D4();
  v20 = sub_1ABA7BB64(v162);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7BC58();
  v161 = v26 - v25;
  sub_1ABA8409C();
  v164 = sub_1ABF23144();
  v27 = sub_1ABA7BB64(v164);
  v151 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7BC58();
  v163 = (v32 - v31);
  sub_1ABA8409C();
  v33 = sub_1ABF23134();
  v34 = sub_1ABA7AB80(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7BC58();
  v165 = v38 - v37;
  sub_1ABA8409C();
  v39 = sub_1ABF23094();
  v166 = sub_1ABA7BB64(v39);
  v167 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v166);
  sub_1ABA7AC18();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v44);
  if (a1)
  {
    v1 = &v141 - v45;
    v142 = v12;
    v143 = v9;
    v46 = a1[2];
    v147 = a1;
    v144 = v13;
    if (v46 && (v47 = *(v46 + 16)) != 0)
    {
      v48 = (v46 + 32);
      v160 = *MEMORY[0x1E69DF5B8];
      v158 = *(v151 + 104);
      v159 = v151 + 104;
      v157 = *MEMORY[0x1E69DF550];
      v156 = (v22 + 8);
      v155 = *MEMORY[0x1E69DF5D8];
      v154 = v167 + 32;
      v49 = MEMORY[0x1E69E7CC0];
      v153 = xmmword_1ABF34740;
      v50 = v161;
      do
      {
        v51 = *v48;
        v168 = v48 + 1;
        v53 = v163;
        v52 = v164;
        *v163 = 0;
        v53[1] = 0;
        v158(v53, v160, v52);
        sub_1ABF23124();
        sub_1ABAD219C(&qword_1EB4DB048, &qword_1ABF6C720);
        v54 = (sub_1ABAD219C(&unk_1EB4DB050, &unk_1ABF6C728) - 8);
        v55 = *(*v54 + 72);
        v56 = v49;
        v57 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
        v58 = swift_allocObject();
        *(v58 + 16) = v153;
        v59 = v58 + v57;
        v60 = (v59 + v54[14]);
        v61 = sub_1ABF23114();
        sub_1ABA7BBB0(v61);
        (*(v62 + 104))(v59, v157);
        v169 = 37;
        v170 = 0xE100000000000000;
        MEMORY[0x1AC5AA830](v51);
        sub_1ABB8087C();
        v63 = v162;
        v64 = sub_1ABF24FF4();
        MEMORY[0x1AC5A9410](v64);
        v49 = v56;

        (*v156)(v50, v63);
        MEMORY[0x1AC5A9410](37, 0xE100000000000000);
        v65 = v170;
        *v60 = v169;
        v60[1] = v65;
        v66 = sub_1ABF23154();
        sub_1ABA7BBB0(v66);
        (*(v67 + 104))(v60, v155, v66);
        v68 = sub_1ABA94D60();
        sub_1ABA7B9B4(v68, v69, v70, v66);
        sub_1ABF23084();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = *(v56 + 2);
          sub_1ABA7BEF0();
          sub_1ABADCAA8();
          v49 = v77;
        }

        v72 = *(v49 + 2);
        v71 = *(v49 + 3);
        if (v72 >= v71 >> 1)
        {
          sub_1ABA7BBEC(v71);
          sub_1ABADCAA8();
          v49 = v78;
        }

        *(v49 + 2) = v72 + 1;
        v73 = *(v167 + 80);
        sub_1ABA7AB74();
        (*(v75 + 32))(&v49[v74 + *(v75 + 72) * v72], v1);
        --v47;
        v48 = v168;
      }

      while (v47);
    }

    else
    {
      v49 = MEMORY[0x1E69E7CC0];
    }

    a1 = v147;
    v12 = v142;
    sub_1ABAE6A34(v147 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_startFilter, v142);
    v13 = v144;
    if (sub_1ABA7E1E0(v12, 1, v144) != 1)
    {
      v79 = v152;
      v82 = v146;
      (*(v152 + 32))(v146, v12, v13);
      v84 = v163;
      v83 = v164;
      *v163 = 0;
      v84[1] = 0;
      (*(v151 + 104))(v84, *MEMORY[0x1E69DF5B8], v83);
      sub_1ABF23124();
      sub_1ABAD219C(&qword_1EB4DB048, &qword_1ABF6C720);
      v85 = sub_1ABAD219C(&unk_1EB4DB050, &unk_1ABF6C728);
      sub_1ABAA5524(v85);
      v87 = *(v86 + 72);
      v88 = sub_1ABA996DC();
      sub_1ABA90B70(v88, xmmword_1ABF34740);
      v89 = *MEMORY[0x1E69DF548];
      v90 = sub_1ABF23114();
      sub_1ABA7BBB0(v90);
      (*(v91 + 104))(v49, v89);
      v92 = *(v148 + 48);
      v93 = sub_1ABF21E34();
      v94 = [v92 stringFromDate_];

      v95 = sub_1ABF23C04();
      v97 = v96;

      *a1 = v95;
      a1[1] = v97;
      v98 = *MEMORY[0x1E69DF5D8];
      v99 = sub_1ABF23154();
      sub_1ABA7BBB0(v99);
      (*(v100 + 104))(a1, v98, v99);
      v101 = sub_1ABA94D60();
      v102 = v99;
      v49 = v1;
      sub_1ABA7B9B4(v101, v103, v104, v102);
      v105 = v145;
      sub_1ABF23084();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v138 = *(v1 + 2);
        sub_1ABA7BEF0();
        sub_1ABADCAA8();
        v49 = v139;
      }

      v107 = *(v49 + 2);
      v106 = *(v49 + 3);
      a1 = v147;
      if (v107 >= v106 >> 1)
      {
        sub_1ABA7DC80(v106);
        sub_1ABADCAA8();
        v49 = v140;
      }

      (*(v79 + 8))(v82, v13);
      *(v49 + 2) = v107 + 1;
      (*(v167 + 32))(&v49[((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v107], v105, v166);
      v9 = v143;
      goto LABEL_22;
    }

    v79 = v152;
    v9 = v143;
  }

  else
  {
    sub_1ABA7B9B4(v12, 1, 1, v13);
    v49 = MEMORY[0x1E69E7CC0];
    v79 = v152;
  }

  sub_1ABC28C50(v12);
  if (!a1)
  {
    v80 = sub_1ABAA0A38();
    sub_1ABA7B9B4(v80, v81, 1, v13);
LABEL_23:
    sub_1ABC28C50(v9);
    return v49;
  }

LABEL_22:
  sub_1ABAE6A34(a1 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_endFilter, v9);
  v108 = sub_1ABAA0A38();
  if (sub_1ABA7E1E0(v108, v109, v13) == 1)
  {
    goto LABEL_23;
  }

  (*(v79 + 32))(v150, v9, v13);
  v111 = v163;
  v110 = v164;
  *v163 = 0;
  v111[1] = 0;
  (*(v151 + 104))(v111, *MEMORY[0x1E69DF5B8], v110);
  sub_1ABF23124();
  sub_1ABAD219C(&qword_1EB4DB048, &qword_1ABF6C720);
  v112 = sub_1ABAD219C(&unk_1EB4DB050, &unk_1ABF6C728);
  sub_1ABAA5524(v112);
  v114 = *(v113 + 72);
  v115 = sub_1ABA996DC();
  sub_1ABA90B70(v115, xmmword_1ABF34740);
  v116 = *MEMORY[0x1E69DF540];
  v117 = sub_1ABF23114();
  sub_1ABA7BBB0(v117);
  (*(v118 + 104))(v49, v116);
  v119 = *(v148 + 48);
  v120 = sub_1ABF21E34();
  v121 = [v119 stringFromDate_];

  v122 = sub_1ABF23C04();
  v124 = v123;

  *a1 = v122;
  a1[1] = v124;
  v125 = *MEMORY[0x1E69DF5D8];
  v126 = sub_1ABF23154();
  sub_1ABA7BBB0(v126);
  (*(v127 + 104))(a1, v125, v126);
  v128 = sub_1ABA94D60();
  v129 = v126;
  v49 = v1;
  sub_1ABA7B9B4(v128, v130, v131, v129);
  sub_1ABF23084();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v135 = *(v1 + 2);
    sub_1ABA7BEF0();
    sub_1ABADCAA8();
    v49 = v136;
  }

  v133 = *(v49 + 2);
  v132 = *(v49 + 3);
  if (v133 >= v132 >> 1)
  {
    sub_1ABA7DC80(v132);
    sub_1ABADCAA8();
    v49 = v137;
  }

  (*(v79 + 8))(v150, v13);
  *(v49 + 2) = v133 + 1;
  (*(v167 + 32))(&v49[((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v133], v149, v166);
  return v49;
}

uint64_t sub_1ABE4D85C(unsigned __int8 *a1, unint64_t a2)
{
  v7 = sub_1ABF21EB4();
  v8 = sub_1ABA7BB64(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  v15 = v14 - v13;
  v16 = *a1;
  v17 = *(v2 + 48);
  sub_1ABF21EA4();
  v18 = sub_1ABF21E34();
  (*(v10 + 8))(v15, v7);
  v19 = [v17 stringFromDate_];

  v20 = sub_1ABF23C04();
  v22 = v21;

  v23 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
    v58 = MEMORY[0x1E69E7CC0];
    sub_1ABAAB7C8(a2);
    sub_1ABA843AC();
    while (v19 != v16)
    {
      if (v3)
      {
        v28 = MEMORY[0x1AC5AA170](v16, a2);
      }

      else
      {
        if (v16 >= *(v4 + 16))
        {
          goto LABEL_123;
        }

        v28 = *(a2 + 8 * v16 + 32);
      }

      if (__OFADD__(v16, 1))
      {
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

      v29 = *(v28 + 80);
      if (v29 && (*(v28 + 72) == v20 ? (v30 = v29 == v22) : (v30 = 0), !v30 && (sub_1ABF25054() & 1) != 0))
      {
        v23 = &v58;
        sub_1ABF24B94();
        v31 = v58[2];
        sub_1ABF24BD4();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
      }

      else
      {
      }

      ++v16;
    }

    a2 = v58;
    if (!sub_1ABAAB7C8(v58))
    {
      goto LABEL_117;
    }

    sub_1ABA83CAC();
    if (v16)
    {
      v43 = MEMORY[0x1AC5AA170](0, a2);
    }

    else
    {
      v43 = *(a2 + 32);
    }

    v44 = 1;
LABEL_73:
    v37 = v43;
    for (i = v44; v23 != i; ++i)
    {
      if (v16)
      {
        sub_1ABAA4274();
        v43 = v46;
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_128;
        }

        if (i >= *(a2 + 16))
        {
          goto LABEL_133;
        }

        sub_1ABA81C80();
      }

      v44 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_125;
      }

      v47 = v37[10];
      if (v47 && (v48 = v43[10]) != 0)
      {
        v49 = v37[9] == v43[9] && v47 == v48;
        if (!v49 && (sub_1ABF25054() & 1) != 0)
        {
LABEL_92:

          goto LABEL_73;
        }
      }

      else if (!v43[8] || v37[8])
      {
        goto LABEL_92;
      }
    }

    goto LABEL_116;
  }

  if (v16 == 1)
  {
    v58 = MEMORY[0x1E69E7CC0];
    sub_1ABAAB7C8(a2);
    sub_1ABA843AC();
    while (v19 != v16)
    {
      if (v3)
      {
        v24 = MEMORY[0x1AC5AA170](v16, a2);
      }

      else
      {
        if (v16 >= *(v4 + 16))
        {
          goto LABEL_122;
        }

        v24 = *(a2 + 8 * v16 + 32);
      }

      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_120;
      }

      v25 = *(v24 + 64);
      if (v25 && (v20 == *(v24 + 56) ? (v26 = v25 == v22) : (v26 = 0), !v26 && (sub_1ABF25054() & 1) != 0))
      {
        v23 = &v58;
        sub_1ABF24B94();
        v27 = v58[2];
        sub_1ABF24BD4();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
      }

      else
      {
      }

      ++v16;
    }

    a2 = v58;
    if (!sub_1ABAAB7C8(v58))
    {
      goto LABEL_117;
    }

    sub_1ABA83CAC();
    if (!v16)
    {
      v35 = *(a2 + 32);

      goto LABEL_49;
    }

LABEL_134:
    v35 = MEMORY[0x1AC5AA170](0, a2);
LABEL_49:
    v36 = 1;
LABEL_50:
    v37 = v35;
    for (j = v36; v23 != j; ++j)
    {
      if (v16)
      {
        sub_1ABAA4274();
        v35 = v39;
      }

      else
      {
        if ((j & 0x8000000000000000) != 0)
        {
          goto LABEL_129;
        }

        if (j >= *(a2 + 16))
        {
          goto LABEL_131;
        }

        sub_1ABA81C80();
      }

      v36 = j + 1;
      if (__OFADD__(j, 1))
      {
        goto LABEL_126;
      }

      v40 = *(v35 + 64);
      if (v40)
      {
        v41 = v37[8];
        if (!v41 || (*(v35 + 56) == v37[7] ? (v42 = v40 == v41) : (v42 = 0), !v42 && (sub_1ABF25054() & 1) != 0))
        {
LABEL_68:

          goto LABEL_50;
        }
      }

      else if (!v37[8])
      {
        goto LABEL_68;
      }
    }

    goto LABEL_116;
  }

  v58 = v23;
  v32 = sub_1ABAAB7C8(a2);
  for (k = 0; v32 != k; ++k)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      sub_1ABAA4274();
      v19 = v34;
    }

    else
    {
      if (k >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_124;
      }

      sub_1ABA81C80();
    }

    if (__OFADD__(k, 1))
    {
      goto LABEL_121;
    }

    if (v19[8])
    {
      v23 = &v58;
      sub_1ABF24B94();
      v16 = v58[2];
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
    }

    else
    {
    }
  }

  a2 = v58;
  if (sub_1ABAAB7C8(v58))
  {
    sub_1ABA83CAC();
    if (v16)
    {
      v50 = MEMORY[0x1AC5AA170](0, a2);
    }

    else
    {
      v50 = *(a2 + 32);
    }

    v51 = 1;
LABEL_97:
    v37 = v50;
    for (m = v51; v23 != m; ++m)
    {
      if (v16)
      {
        sub_1ABAA4274();
        v50 = v53;
      }

      else
      {
        if ((m & 0x8000000000000000) != 0)
        {
          goto LABEL_130;
        }

        if (m >= *(a2 + 16))
        {
          goto LABEL_132;
        }

        sub_1ABA81C80();
      }

      v51 = m + 1;
      if (__OFADD__(m, 1))
      {
        goto LABEL_127;
      }

      v54 = *(v50 + 64);
      if (v54)
      {
        v55 = v37[8];
        if (!v55 || (*(v50 + 56) == v37[7] ? (v56 = v54 == v55) : (v56 = 0), !v56 && (sub_1ABF25054() & 1) != 0))
        {
LABEL_115:

          goto LABEL_97;
        }
      }

      else if (!v37[8])
      {
        goto LABEL_115;
      }
    }

LABEL_116:

    sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
    result = swift_allocObject();
    *(result + 16) = xmmword_1ABF5FD20;
    *(result + 32) = v37;
    return result;
  }

LABEL_117:

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1ABE4DEAC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v109 = a3;
  v5 = sub_1ABF23104();
  v6 = sub_1ABA7BB64(v5);
  v113 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7AC18();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v100 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v100 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v100 - v20;
  v22 = v115;
  sub_1ABE4CA38();
  if (!v22)
  {
    v107 = v18;
    v110 = v15;
    v111 = v5;
    v104 = v12;
    sub_1ABE4CC54(v109);
    v23 = *(v3 + 32);
    v24 = *(v4 + 40);
    v25 = *(v24 + 16);
    v26 = sub_1ABF23014();
    v108 = 0;
    v12 = v26;
    v112 = v24;
    v103 = v4;

    v28 = 0;
    v29 = v12[2];
    v30 = v113;
    v114 = v113 + 8;
    v115 = v113 + 16;
    v105 = (v113 + 32);
    v106 = MEMORY[0x1E69E7CC0];
    v31 = v111;
    while (v29 != v28)
    {
      if (v28 >= v12[2])
      {
        __break(1u);
        return result;
      }

      v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v33 = *(v30 + 72);
      (*(v30 + 16))(v21, v12 + v32 + v33 * v28, v31);
      v34 = v31;
      sub_1ABF230B4();
      if (*(v112 + 24) < v35)
      {
        v102 = *v105;
        v102(v107, v21, v31);
        v37 = v106;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v37;
        *__dst = v37;
        if (isUniquelyReferenced_nonNull_native)
        {
          v31 = v34;
        }

        else
        {
          v40 = *(v37 + 16);
          sub_1ABADED24();
          v31 = v111;
          v39 = *__dst;
        }

        v30 = v113;
        v42 = *(v39 + 16);
        v41 = *(v39 + 24);
        v43 = v42 + 1;
        v44 = v107;
        if (v42 >= v41 >> 1)
        {
          sub_1ABA7BBEC(v41);
          v106 = v45;
          v101 = v46;
          sub_1ABADED24();
          v43 = v101;
          v42 = v106;
          v44 = v107;
          v31 = v111;
          v39 = *__dst;
        }

        ++v28;
        *(v39 + 16) = v43;
        v106 = v39;
        result = (v102)(v39 + v32 + v42 * v33, v44, v31);
      }

      else
      {
        sub_1ABAA5AB8();
        result = v36(v21, v31);
        ++v28;
        v30 = v113;
      }
    }

    v47 = *(v103 + 16);
    v48 = v108;
    ViewService.semanticSearchView.getter(__dst);
    if (v48)
    {
    }

    else
    {
      v121 = *&__dst[32];
      v120[0] = *__dst;
      v120[1] = *&__dst[16];
      v49 = v106;
      v50 = *(v106 + 16);
      v51 = MEMORY[0x1E69E7CC0];
      if (v50)
      {
        v108 = 0;
        v117[0] = MEMORY[0x1E69E7CC0];
        sub_1ABADE24C();
        v52 = v117[0];
        v53 = *(v30 + 80);
        sub_1ABA7AB74();
        v55 = v49 + v54;
        v112 = *(v30 + 72);
        v56 = *(v30 + 16);
        v58 = v110;
        v57 = v111;
        do
        {
          v56(v58, v55, v57);
          v59 = sub_1ABF230C4();
          v57 = v111;
          v60 = v59;
          sub_1ABAA5AB8();
          v61(v58, v57);
          v117[0] = v52;
          v63 = *(v52 + 16);
          v62 = *(v52 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_1ABA7BBEC(v62);
            sub_1ABADE24C();
            v57 = v111;
            v52 = v117[0];
          }

          *(v52 + 16) = v63 + 1;
          *(v52 + 8 * v63 + 32) = v60;
          v55 += v112;
          --v50;
          v58 = v110;
        }

        while (v50);
        v64 = v108;
        v51 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v52 = MEMORY[0x1E69E7CC0];
        v64 = 0;
      }

      v65 = sub_1ABE8B698(v52);
      ObjectType = swift_getObjectType();
      MEMORY[0x1EEE9AC00](ObjectType);
      v12 = &v100 - 4;
      *(&v100 - 2) = v120;
      *(&v100 - 1) = v65;
      sub_1ABAD219C(&qword_1EB4DB060, &qword_1ABF6C3B0);
      sub_1ABF22464();
      if (v64)
      {
        sub_1ABE4F588(v120);
      }

      else
      {
        sub_1ABE4F588(v120);

        v67 = v117[0];
        v68 = *(v117[0] + 16);
        v108 = 0;
        if (v68)
        {
          v119 = v51;
          sub_1ABADED04(0, v68, 0);
          v69 = v119;
          v70 = v68 - 1;
          for (i = 32; ; i += 72)
          {
            memcpy(v117, (v67 + i), sizeof(v117));
            v72 = v117[0];
            memcpy(__dst, (v67 + i), sizeof(__dst));
            sub_1ABC106B0(v117, v116);
            v119 = v69;
            v74 = *(v69 + 16);
            v73 = *(v69 + 24);
            if (v74 >= v73 >> 1)
            {
              v76 = sub_1ABA7BBEC(v73);
              sub_1ABADED04(v76, v74 + 1, 1);
              v69 = v119;
            }

            *(v69 + 16) = v74 + 1;
            v75 = v69 + 80 * v74;
            *(v75 + 32) = v72;
            memcpy((v75 + 40), __dst, 0x48uLL);
            if (!v70)
            {
              break;
            }

            --v70;
          }

          v51 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v69 = MEMORY[0x1E69E7CC0];
        }

        v77 = sub_1ABBFA960(v69);
        v116[0] = v51;
        v78 = v106;
        v79 = *(v106 + 16);
        v80 = v104;
        if (v79)
        {
          v81 = *(v113 + 80);
          sub_1ABA7AB74();
          v83 = v78 + v82;
          v85 = *(v84 + 72);
          v86 = *(v84 + 16);
          v12 = MEMORY[0x1E69E7CC0];
          v87 = v111;
          v112 = v85;
          do
          {
            v86(v80, v83, v87);
            v88 = sub_1ABF230C4();
            if (*(v77 + 16) && (v89 = sub_1ABAFF5A4(v88), (v90 & 1) != 0))
            {
              memcpy(__dst, (*(v77 + 56) + 72 * v89), sizeof(__dst));
              sub_1ABC106B0(__dst, v117);
              v91 = sub_1ABF230C4();
              sub_1ABF230B4();
              v93 = v92;
              type metadata accessor for SemanticSearchService.SemanticSearchResult();
              v94 = swift_allocObject();
              *(v94 + 16) = v91;
              *(v94 + 24) = v93;
              memcpy((v94 + 32), __dst, 0x48uLL);
              sub_1ABAA5AB8();
              v96 = v95(v80, v111);
              MEMORY[0x1AC5A9710](v96);
              v97 = *((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v97 >> 1)
              {
                sub_1ABA7BBEC(v97);
                sub_1ABF24134();
              }

              sub_1ABF24184();
              v12 = v116[0];
              v87 = v111;
              v85 = v112;
            }

            else
            {
              sub_1ABAA5AB8();
              v87 = v111;
              v98(v80, v111);
            }

            v83 += v85;
            --v79;
          }

          while (v79);
        }

        else
        {

          v12 = MEMORY[0x1E69E7CC0];
        }

        if (v109 && *(v109 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_orderAndLimit) != 3)
        {
          __dst[0] = *(v109 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_orderAndLimit);
          v99 = sub_1ABE4D85C(__dst, v12);

          return v99;
        }
      }
    }
  }

  return v12;
}

uint64_t SemanticSearchService.SemanticSearchResult.__allocating_init(assetId:similarity:semanticSearchItem:)(uint64_t a1, const void *a2, float a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  memcpy((v6 + 32), a2, 0x48uLL);
  return v6;
}

uint64_t SemanticSearchService.SemanticSearchOptions.__allocating_init(maxResults:similarityThreshold:)(uint64_t a1, float a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t SemanticSearchService.SemanticSearchOptions.init(maxResults:similarityThreshold:)(uint64_t a1, float a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t SemanticSearchService.SemanticSearchFilters.__allocating_init(entityIds:startFilter:endFilter:orderAndLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  SemanticSearchService.SemanticSearchFilters.init(entityIds:startFilter:endFilter:orderAndLimit:)(a1, a2, a3, a4);
  return v11;
}

uint64_t SemanticSearchService.SemanticSearchFilters.init(entityIds:startFilter:endFilter:orderAndLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = *a4;
  *(v4 + 16) = a1;
  sub_1ABAE84E0(a2, v4 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_startFilter);
  sub_1ABAE84E0(a3, v4 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_endFilter);
  *(v4 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_orderAndLimit) = v6;
  return v4;
}

IntelligencePlatform::SemanticSearchService::SemanticSearchFilters::OrderAndLimit_optional __swiftcall SemanticSearchService.SemanticSearchFilters.OrderAndLimit.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SemanticSearchService.SemanticSearchFilters.OrderAndLimit.rawValue.getter()
{
  v1 = 1954047342;
  if (*v0 != 1)
  {
    v1 = 0x7473726966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953718636;
  }
}

uint64_t sub_1ABE4E9A8@<X0>(uint64_t *a1@<X8>)
{
  result = SemanticSearchService.SemanticSearchFilters.OrderAndLimit.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1ABE4E9E0()
{
  v1 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v2 = sub_1ABA7AB80(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7AC18();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = *(v0 + 16);
  if (v11 && *(v11 + 16))
  {
    return 0;
  }

  sub_1ABAE6A34(v0 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_startFilter, &v18 - v9);
  v12 = sub_1ABF21EB4();
  v13 = sub_1ABA7E1E0(v10, 1, v12);
  sub_1ABC28C50(v10);
  if (v13 != 1)
  {
    return 0;
  }

  sub_1ABAE6A34(v0 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_endFilter, v7);
  v14 = sub_1ABAA0A38();
  v16 = sub_1ABA7E1E0(v14, v15, v12);
  sub_1ABC28C50(v7);
  return v16 == 1 && *(v0 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_orderAndLimit) == 3;
}

uint64_t sub_1ABE4EB18()
{
  v1 = v0;
  v2 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7AC18();
  v74 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v71 - v9;
  v11 = sub_1ABF21EB4();
  v76 = sub_1ABA7BB64(v11);
  v77 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v76);
  sub_1ABA7AC18();
  v75 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v73 = &v71 - v18;
  sub_1ABA8409C();
  v19 = sub_1ABF223D4();
  v20 = sub_1ABA7BB64(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7BC58();
  v27 = (v26 - v25);
  v28 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v29 = sub_1ABF23BD4();
  [v28 setDateFormat_];

  v30 = *(v1 + 16);
  if (v30)
  {
    v72 = v28;
    strcpy(v79, "EntityIds: ");
    HIDWORD(v79[1]) = -352321536;
    v31 = *(v30 + 16);
    v32 = MEMORY[0x1E69E7CC0];
    if (v31)
    {
      v71 = v1;
      v78 = MEMORY[0x1E69E7CC0];
      sub_1ABADDBF4();
      v32 = v78;
      v33 = (v30 + 32);
      do
      {
        v34 = *v33++;
        MEMORY[0x1AC5AA830](v34);
        v78 = v32;
        v36 = *(v32 + 16);
        v35 = *(v32 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_1ABA7BBEC(v35);
          sub_1ABADDBF4();
          v32 = v78;
        }

        *(v32 + 16) = v36 + 1;
        v37 = *(v22 + 80);
        sub_1ABA7AB74();
        (*(v22 + 32))(v32 + v38 + *(v22 + 72) * v36, v27, v19);
        --v31;
      }

      while (v31);
      v1 = v71;
    }

    MEMORY[0x1AC5A9750](v32, v19);

    sub_1ABA8E4C8();

    sub_1ABAAA4F4();
    v40 = v39;
    v42 = *(v39 + 16);
    v41 = *(v39 + 24);
    v27 = (v42 + 1);
    v43 = v76;
    if (v42 >= v41 >> 1)
    {
      sub_1ABA7DC80(v41);
      sub_1ABAAA4F4();
      v40 = v61;
    }

    v28 = v72;
    sub_1ABA8ED58();
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
    v43 = v76;
  }

  sub_1ABAE6A34(v1 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_startFilter, v10);
  if (sub_1ABA7E1E0(v10, 1, v43) == 1)
  {
    sub_1ABC28C50(v10);
    v44 = v75;
  }

  else
  {
    (*(v77 + 32))(v73, v10, v43);
    strcpy(v79, "StartFilter: ");
    HIWORD(v79[1]) = -4864;
    v45 = sub_1ABF21E34();
    v46 = sub_1ABAA46C8(v45);

    sub_1ABF23C04();
    sub_1ABA8E4C8();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = *(v40 + 16);
      sub_1ABA7BEF0();
      sub_1ABAAA4F4();
      v40 = v63;
    }

    v44 = v75;
    sub_1ABA8C3FC();
    if (v48)
    {
      sub_1ABA7DC80(v47);
      sub_1ABAAA4F4();
      v40 = v64;
    }

    (*(v77 + 8))(v73, v43);
    sub_1ABA8ED58();
  }

  v49 = v74;
  sub_1ABAE6A34(v1 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_endFilter, v74);
  v50 = sub_1ABAA0A38();
  if (sub_1ABA7E1E0(v50, v51, v43) == 1)
  {
    sub_1ABC28C50(v49);
  }

  else
  {
    (*(v77 + 32))(v44, v49, v43);
    strcpy(v79, "EndFilter: ");
    HIDWORD(v79[1]) = -352321536;
    v52 = sub_1ABF21E34();
    v53 = sub_1ABAA46C8(v52);

    sub_1ABF23C04();
    sub_1ABA8E4C8();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = *(v40 + 16);
      sub_1ABA7BEF0();
      sub_1ABAAA4F4();
      v40 = v66;
    }

    sub_1ABA8C3FC();
    if (v48)
    {
      sub_1ABA7DC80(v54);
      sub_1ABAAA4F4();
      v40 = v67;
    }

    (*(v77 + 8))(v44, v43);
    sub_1ABA8ED58();
  }

  v55 = *(v1 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_orderAndLimit);
  if (v55 != 3)
  {
    v79[0] = 0;
    v79[1] = 0xE000000000000000;
    sub_1ABF24AB4();

    v79[0] = 0x646E41726564724FLL;
    v79[1] = 0xEF203A74696D694CLL;
    if (v55)
    {
      if (v55 == 1)
      {
        v57 = 0xE400000000000000;
        v58 = 1954047342;
      }

      else
      {
        v57 = 0xE500000000000000;
        v58 = 0x7473726966;
      }
    }

    else
    {
      v57 = 0xE400000000000000;
      v58 = 1953718636;
    }

    MEMORY[0x1AC5A9410](v58, v57);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = *(v40 + 16);
      sub_1ABA7BEF0();
      sub_1ABAAA4F4();
      v40 = v69;
    }

    sub_1ABA8C3FC();
    if (v48)
    {
      sub_1ABA7DC80(v59);
      sub_1ABAAA4F4();
      v40 = v70;
    }

    sub_1ABA8ED58();
    goto LABEL_39;
  }

  if (*(v40 + 16))
  {
LABEL_39:
    v79[0] = v40;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAB47C4(&qword_1ED870668, &unk_1EB4D33D0, &unk_1ABF3A8C0);
    v56 = sub_1ABF23B54();

    return v56;
  }

  return 4271950;
}

uint64_t SemanticSearchService.SemanticSearchFilters.deinit()
{
  v1 = *(v0 + 16);

  sub_1ABC28C50(v0 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_startFilter);
  sub_1ABC28C50(v0 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_endFilter);
  return v0;
}

uint64_t SemanticSearchService.SemanticSearchFilters.__deallocating_deinit()
{
  SemanticSearchService.SemanticSearchFilters.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t SemanticSearchService.SemanticSearchResult.semanticSearchItem.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 32), sizeof(__dst));
  memcpy(a1, (v1 + 32), 0x48uLL);
  return sub_1ABC106B0(__dst, &v4);
}

uint64_t SemanticSearchService.SemanticSearchResult.init(assetId:similarity:semanticSearchItem:)(uint64_t a1, const void *a2, float a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  memcpy((v3 + 32), a2, 0x48uLL);
  return v3;
}

uint64_t sub_1ABE4F38C()
{
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1ABF24AB4();
  v6 = 0;
  v7 = 0xE000000000000000;
  MEMORY[0x1AC5A9410](0x4449797469746E45, 0xEA0000000000203ALL);
  __dst[0] = *(v0 + 16);
  v1 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v1);

  MEMORY[0x1AC5A9410](0x616C696D6953202CLL, 0xEE00203A79746972);
  v2 = *(v0 + 24);
  sub_1ABF24374();
  MEMORY[0x1AC5A9410](8236, 0xE200000000000000);
  memcpy(__dst, (v0 + 32), sizeof(__dst));
  v3 = SemanticSearchItem.description.getter();
  MEMORY[0x1AC5A9410](v3);

  return v6;
}

uint64_t SemanticSearchService.SemanticSearchResult.deinit()
{
  sub_1ABAA4B88();

  return v0;
}

uint64_t SemanticSearchService.SemanticSearchResult.__deallocating_deinit()
{
  sub_1ABAA4B88();

  return swift_deallocClassInstance();
}

unint64_t sub_1ABE4F604()
{
  result = qword_1EB4DB018;
  if (!qword_1EB4DB018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB018);
  }

  return result;
}

unint64_t sub_1ABE4F65C()
{
  result = qword_1EB4DB020;
  if (!qword_1EB4DB020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB020);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SemanticSearchServiceError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for SemanticSearchService.SemanticSearchFilters()
{
  result = qword_1EB4DB038;
  if (!qword_1EB4DB038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1ABE4F900()
{
  sub_1ABAE8794();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for SemanticSearchService.SemanticSearchFilters.OrderAndLimit(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void *sub_1ABE4FB48(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v8 = WORD2(a2);
  v7 = a2;
  result = sub_1ABE4CB84(&v6, &v6 + BYTE6(a2), &v5);
  if (!v2)
  {
    result = v5;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ABE4FBC4(uint64_t a1, uint64_t a2)
{
  result = sub_1ABF219E4();
  v6 = result;
  if (result)
  {
    result = sub_1ABF21A04();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v6 += a1 - result;
  }

  v7 = __OFSUB__(a2, a1);
  v8 = a2 - a1;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = sub_1ABF219F4();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = &v6[v10];
  if (v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  result = sub_1ABE4CB84(v6, v12, &v13);
  if (!v2)
  {
    return v13;
  }

  return result;
}

id sub_1ABE4FC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1ABF23BD4();

  v9 = [a5 sentenceEmbeddingVectorDataForString:v8 language:a3 error:a4];

  return v9;
}

void ViewService.semanticSearchView.getter(void *a1@<X8>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = *(v1 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v5 = sub_1ABF23BD4();
  v17[0] = 0;
  v6 = [v4 requestAssertionForViewName:v5 error:v17];

  v7 = v17[0];
  if (v6)
  {
    v8 = *(v1 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v9 = v8[5];
    v10 = v8[6];
    sub_1ABA93E20(v8 + 2, v9);
    v11 = *(v10 + 8);
    v12 = v7;
    v13 = v11(v6, v9, v10);
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1ABE50C68(v6, v13, v14, a1);
    }
  }

  else
  {
    v15 = v17[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t ViewService.SemanticSearchView.getSemanticSearchItems(subjectIds:)()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 4);
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4DB060, &qword_1ABF6C3B0);
  result = sub_1ABF22464();
  if (!v1)
  {
    return v6;
  }

  return result;
}

uint64_t SemanticSearchItem.textualization.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_1ABA7D000();
}

uint64_t SemanticSearchItem.textualization.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t SemanticSearchItem.starttime.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_1ABA7D000();
}

uint64_t SemanticSearchItem.starttime.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t SemanticSearchItem.endtime.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_1ABA7D000();
}

uint64_t SemanticSearchItem.endtime.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t SemanticSearchItem.entities.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return sub_1ABA7D000();
}

uint64_t SemanticSearchItem.entities.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t SemanticSearchItem.description.getter()
{
  v2 = v0[1];
  v1 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[7];
  v7 = v0[8];

  sub_1ABF24AB4();

  if (v1)
  {
    v9 = v2;
  }

  else
  {
    v9 = 4271950;
  }

  if (!v1)
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x1AC5A9410](v9, v1);

  MEMORY[0x1AC5A9410](0x3A7472617453202CLL, 0xE900000000000020);
  if (v3)
  {
    v10 = v4;
  }

  else
  {
    v10 = 4271950;
  }

  if (v3)
  {
    v11 = v3;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x1AC5A9410](v10, v11);

  MEMORY[0x1AC5A9410](0x203A646E45202CLL, 0xE700000000000000);
  if (v5)
  {
    v12 = v6;
  }

  else
  {
    v12 = 4271950;
  }

  if (v5)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  MEMORY[0x1AC5A9410](v12, v13);

  MEMORY[0x1AC5A9410](0x697469746E45202CLL, 0xEC000000203A7365);
  if (v7)
  {
    v14 = v8;
  }

  else
  {
    v14 = 4271950;
  }

  if (v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  MEMORY[0x1AC5A9410](v14, v15);

  return 0x203A74786554;
}

uint64_t sub_1ABE502E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696C617574786574 && a2 == 0xEE006E6F6974617ALL;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D69747472617473 && a2 == 0xE900000000000065;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D6974646E65 && a2 == 0xE700000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1ABE50498(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x696C617574786574;
      break;
    case 2:
      result = 0x6D69747472617473;
      break;
    case 3:
      result = 0x656D6974646E65;
      break;
    case 4:
      result = 0x7365697469746E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE50548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE502E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE50570(uint64_t a1)
{
  v2 = sub_1ABE50FFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE505AC(uint64_t a1)
{
  v2 = sub_1ABE50FFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SemanticSearchItem.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4DB068, &qword_1ABF6C738);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  v13 = *v1;
  v12 = v1[1];
  v14 = v1[3];
  v20[6] = v1[2];
  v20[7] = v12;
  v15 = v1[5];
  v20[4] = v1[4];
  v20[5] = v14;
  v16 = v1[7];
  v20[2] = v1[6];
  v20[3] = v15;
  v17 = v1[8];
  v20[0] = v16;
  v20[1] = v17;
  v18 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE50FFC();
  sub_1ABF252E4();
  v25 = 0;
  sub_1ABF24FA4();
  if (!v2)
  {
    v24 = 1;
    sub_1ABA811DC();
    v23 = 2;
    sub_1ABA811DC();
    v22 = 3;
    sub_1ABA811DC();
    v21 = 4;
    sub_1ABA811DC();
  }

  return (*(v6 + 8))(v11, v4);
}

uint64_t SemanticSearchItem.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4DB078, &qword_1ABF6C740);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE50FFC();
  sub_1ABF252C4();
  if (v2)
  {
    sub_1ABA84B54(a1);
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    sub_1ABA7DFC4();
    v14 = sub_1ABF24E84();
    LOBYTE(v37[0]) = 1;
    sub_1ABA7DFC4();
    v15 = sub_1ABF24DB4();
    v17 = v16;
    v34 = v15;
    v35 = v14;
    LOBYTE(v37[0]) = 2;
    sub_1ABA7DFC4();
    v18 = sub_1ABF24DB4();
    v20 = v19;
    v33 = v18;
    v32 = a2;
    LOBYTE(v37[0]) = 3;
    sub_1ABA7DFC4();
    v21 = sub_1ABF24DB4();
    v23 = v22;
    v31 = v21;
    v38 = 4;
    v24 = sub_1ABF24DB4();
    v25 = v12;
    v27 = v26;
    (*(v7 + 8))(v25, v5);
    v29 = v34;
    v28 = v35;
    __src[0] = v35;
    __src[1] = v34;
    __src[2] = v17;
    __src[3] = v33;
    __src[4] = v20;
    __src[5] = v31;
    __src[6] = v23;
    __src[7] = v24;
    __src[8] = v27;
    memcpy(v32, __src, 0x48uLL);
    sub_1ABC106B0(__src, v37);
    sub_1ABA84B54(a1);
    v37[0] = v28;
    v37[1] = v29;
    v37[2] = v17;
    v37[3] = v33;
    v37[4] = v20;
    v37[5] = v31;
    v37[6] = v23;
    v37[7] = v24;
    v37[8] = v27;
    return sub_1ABC1065C(v37);
  }
}

uint64_t sub_1ABE50AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE514BC();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABE50B20()
{
  sub_1ABE51468();

  return sub_1ABF22804();
}

uint64_t sub_1ABE50C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE51414();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

void sub_1ABE50C68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [swift_unknownObjectRetain() viewArtifactTableName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1ABF23C04();
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v12 = 0x80000001ABF938D0;
    v10 = 0xD000000000000017;
  }

  *a4 = a1;
  a4[1] = v10;
  a4[2] = v12;
  a4[3] = a2;
  a4[4] = a3;
}

uint64_t sub_1ABE50D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v29 = a1;
  v27 = a4;
  v28 = sub_1ABAD219C(&qword_1EB4DB0C8, &qword_1ABF6CB08);
  sub_1ABA7BB64(v28);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = sub_1ABAD219C(&qword_1EB4DB0D0, &qword_1ABF6CB10);
  sub_1ABA7BB64(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  v21 = *(a2 + 8);
  v22 = *(a2 + 16);

  sub_1ABF22D04();
  v32[6] = a3;
  v31[3] = sub_1ABF22D14();
  v31[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v31);
  sub_1ABF22D24();
  v32[3] = sub_1ABF22424();
  v32[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v32);
  sub_1ABAD219C(&qword_1EB4DB0D8, &unk_1ABF6CB18);
  sub_1ABAB47C4(&qword_1EB4DB0E0, &qword_1EB4DB0D8, &unk_1ABF6CB18);
  sub_1ABF23EE4();
  sub_1ABA84B54(v31);
  sub_1ABF22CA4();
  sub_1ABA84B54(v32);
  sub_1ABAB47C4(&qword_1EB4DB0E8, &qword_1EB4DB0C8, &qword_1ABF6CB08);
  sub_1ABE51510();
  v23 = v28;
  v24 = v30;
  v25 = sub_1ABF22234();
  (*(v7 + 8))(v12, v23);
  result = (*(v15 + 8))(v20, v13);
  if (!v24)
  {
    *v27 = v25;
  }

  return result;
}

unint64_t sub_1ABE50FFC()
{
  result = qword_1EB4DB070;
  if (!qword_1EB4DB070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB070);
  }

  return result;
}

unint64_t sub_1ABE51054()
{
  result = qword_1EB4DB080;
  if (!qword_1EB4DB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB080);
  }

  return result;
}

unint64_t sub_1ABE510AC()
{
  result = qword_1EB4DB088;
  if (!qword_1EB4DB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB088);
  }

  return result;
}

unint64_t sub_1ABE51104()
{
  result = qword_1EB4DB090;
  if (!qword_1EB4DB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB090);
  }

  return result;
}

uint64_t sub_1ABE51158(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABE511AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SemanticSearchItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE51310()
{
  result = qword_1EB4DB098;
  if (!qword_1EB4DB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB098);
  }

  return result;
}

unint64_t sub_1ABE51368()
{
  result = qword_1EB4DB0A0;
  if (!qword_1EB4DB0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB0A0);
  }

  return result;
}

unint64_t sub_1ABE513C0()
{
  result = qword_1EB4DB0A8;
  if (!qword_1EB4DB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB0A8);
  }

  return result;
}

unint64_t sub_1ABE51414()
{
  result = qword_1EB4DB0B0;
  if (!qword_1EB4DB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB0B0);
  }

  return result;
}

unint64_t sub_1ABE51468()
{
  result = qword_1EB4DB0B8;
  if (!qword_1EB4DB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB0B8);
  }

  return result;
}

unint64_t sub_1ABE514BC()
{
  result = qword_1EB4DB0C0;
  if (!qword_1EB4DB0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB0C0);
  }

  return result;
}

unint64_t sub_1ABE51510()
{
  result = qword_1EB4DB0F0;
  if (!qword_1EB4DB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB0F0);
  }

  return result;
}

uint64_t sub_1ABE51564(uint64_t a1, uint64_t (*a2)(_BYTE *))
{
  sub_1ABF24C34();
  do
  {
    sub_1ABF24D64();
    if (!__src[2])
    {
      break;
    }

    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v6, __src, sizeof(v6));
    v4 = a2(v6);
    sub_1ABE520BC(__dst);
    if (v2)
    {
      break;
    }
  }

  while ((v4 & 1) != 0);
}

uint64_t sub_1ABE5161C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a1;
  v40 = a2;
  v36[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v37 = v8;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v36 - v12;
  v14 = *(*(sub_1ABF247E4() - 8) + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v36 - v16;
  sub_1ABA7BD7C();
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7BC58();
  v23 = v22 - v21;
  v24 = swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v38 = v25;
  v27 = *(v26 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA811F8();
  v29(v23, v41, a3);
  v41 = a4;
  sub_1ABF23F04();
  v30 = v24;
  swift_getAssociatedConformanceWitness();
  v31 = (v37 + 32);
  v32 = (v37 + 8);
  do
  {
    sub_1ABF24864();
    if (sub_1ABA7E1E0(v17, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*v31)(v13, v17, AssociatedTypeWitness);
    v33 = v39(v13);
    if (v4)
    {
      (*v32)(v13, AssociatedTypeWitness);
      return (*(v38 + 8))(v41, v30);
    }

    v34 = v33;
    (*v32)(v13, AssociatedTypeWitness);
  }

  while ((v34 & 1) != 0);
  return (*(v38 + 8))(v41, v30);
}

uint64_t sub_1ABE51930(uint64_t (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a6;
  v61 = a7;
  v66 = a5;
  v57 = a1;
  v58 = a2;
  sub_1ABA7BD7C();
  v55 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BC58();
  v17 = v16 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v54 = v18;
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v63 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v53 - v24;
  sub_1ABA7BD7C();
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7BC58();
  v31 = v30 - v29;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v56 = v33;
  v35 = *(v34 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA811F8();
  v37(v31, v68, a3);
  v67 = a5;
  sub_1ABF23F04();
  v59 = a3;
  v68 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = (v54 + 32);
  v39 = (v55 + 32);
  for (i = (v55 + 8); ; (*i)(v17, a4))
  {
    v41 = v63;
    sub_1ABF24864();
    (*v38)(v25, v41, v64);
    v42 = TupleTypeMetadata2;
    if (sub_1ABA7E1E0(v25, 1, TupleTypeMetadata2) == 1)
    {
      v48 = sub_1ABA7DFD8();
      return v49(v48);
    }

    v43 = *v25;
    v44 = (*v39)(v17, &v25[*(v42 + 48)], a4);
    v69 = v43;
    MEMORY[0x1EEE9AC00](v44);
    *(&v53 - 6) = v59;
    *(&v53 - 5) = a4;
    v46 = v60;
    v45 = v61;
    *(&v53 - 4) = v66;
    *(&v53 - 3) = v46;
    *(&v53 - 2) = v45;
    *(&v53 - 1) = v17;
    v47 = v57(&v69, sub_1ABE52098);
    if (v7 || (v47 & 1) == 0)
    {
      break;
    }
  }

  v51 = sub_1ABA7DFD8();
  v52(v51);
  return (*i)(v17, a4);
}

uint64_t sub_1ABE51D48(uint64_t (*a1)(char *), uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a3;
  v35 = a1;
  v36 = a2;
  v32[1] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v10 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v32 - v11;
  v13 = sub_1ABF247E4();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = v32 - v16;
  v18 = *(a5 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v34 = *(v22 - 8);
  v23 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v32 - v24;
  (*(v18 + 16))(v21, v37, a5);
  v37 = v25;
  sub_1ABF23F04();
  v26 = v22;
  swift_getAssociatedConformanceWitness();
  v27 = (v33 + 32);
  v28 = (v33 + 8);
  do
  {
    sub_1ABF24864();
    if (sub_1ABA7E1E0(v17, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*v27)(v12, v17, AssociatedTypeWitness);
    v29 = v35(v12);
    if (v7)
    {
      (*v28)(v12, AssociatedTypeWitness);
      return (*(v34 + 8))(v37, v26);
    }

    v30 = v29;
    (*v28)(v12, AssociatedTypeWitness);
  }

  while ((v30 & 1) != 0);
  return (*(v34 + 8))(v37, v26);
}

uint64_t sub_1ABE520BC(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DB100, &qword_1ABF70760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *Sequence<>.bufferToContext()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Sequence<>.bufferToDictionaryGroupedBySubject()(a1, a2, a3);
  swift_getAssociatedTypeWitness();
  sub_1ABF241F4();
  sub_1ABB668FC();
  v3 = sub_1ABF23A44();
  sub_1ABA7DFE8();
  sub_1ABA8FB60();
  swift_getWitnessTable();
  v4 = TripleProviderProtocol.context()(v3);

  return v4;
}

uint64_t Sequence<>.bufferToDictionaryGroupedBySubject()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(a1 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(&v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a1, v8);
  v13 = a1;
  v14 = a2;
  v15 = a3;
  sub_1ABB668FC();
  return sub_1ABF23A14();
}

uint64_t sub_1ABE52300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v5(AssociatedTypeWitness, a4);
}

uint64_t *Sequence<>.bufferToContext<A>(objectMapping:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Sequence<>.bufferToDictionaryGroupedBySubject()(a2, a4, a6);
  swift_getAssociatedTypeWitness();
  sub_1ABF241F4();
  sub_1ABB668FC();
  v8 = sub_1ABF23A44();
  sub_1ABA7DFE8();
  sub_1ABA8FB60();
  swift_getWitnessTable();
  v9 = TripleProviderProtocol.context<A>(objectMapping:)(a1, v8, a3);

  return v9;
}

void static LogSignpost.begin(logger:_:)()
{
  sub_1ABA7E2A8();
  v50 = v1;
  v51 = v2;
  v4 = v3;
  v6 = v5;
  v49 = v7;
  v47 = sub_1ABF23744();
  v8 = sub_1ABA7BB64(v47);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7AC18();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA8E3E8();
  v17 = sub_1ABF237F4();
  v18 = sub_1ABA7BB64(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v25 = v24 - v23;
  v48 = sub_1ABF23774();
  v26 = sub_1ABA7BB64(v48);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7BC58();
  v33 = v32 - v31;
  (*(v20 + 16))(v25, v4, v17);
  v34 = v0;
  v35 = v51;
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v36 = sub_1ABF23764();
  v37 = sub_1ABF24714();
  if ((sub_1ABF247D4() & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v49 & 1) == 0)
  {
    v38 = v50;
    if (v50)
    {
      v39 = v34;
LABEL_9:
      sub_1ABA8179C();
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v36, v37, v43, v38, "", v42, 2u);
      v34 = v39;
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      v35 = v51;
LABEL_10:

      (*(v10 + 16))(v15, v34, v47);
      v44 = sub_1ABF237B4();
      sub_1ABA90758(v44);
      swift_allocObject();
      v45 = sub_1ABF237A4();
      (*(v10 + 8))(v34, v47);
      *v6 = v50;
      *(v6 + 8) = v35;
      *(v6 + 16) = v49;
      *(v6 + 24) = v45;
      v46 = type metadata accessor for LogSignpost();
      (*(v28 + 32))(v6 + *(v46 + 24), v33, v48);
      sub_1ABA7BC1C();
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v50 >> 32)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1ABA8120C();
  if (!v40)
  {
    sub_1ABAA61F8();
    if (!(!v40 & v41))
    {
      v39 = v34;
      v38 = &v52;
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
}

void withThrowingSignpost<A>(_:closure:)(const char *a1, uint64_t a2, char a3, void (*a4)(void))
{
  v7 = sub_1ABF23744();
  v8 = sub_1ABA7BB64(v7);
  v51 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7AC18();
  sub_1ABA843C0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA8E3E8();
  v13 = sub_1ABF237F4();
  v14 = sub_1ABA7BB64(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BC58();
  v21 = v20 - v19;
  v22 = sub_1ABF23774();
  v23 = sub_1ABA7BB64(v22);
  v48 = v24;
  v49 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7BC58();
  sub_1ABA8BFC4();
  v47 = type metadata accessor for LogSignpost();
  v27 = sub_1ABA7BBB0(v47);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7BC58();
  v32 = v31 - v30;
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  v33 = sub_1ABA7AA24(v13, qword_1ED871EF8);
  (*(v16 + 16))(v21, v33, v13);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v34 = sub_1ABF23764();
  v35 = sub_1ABF24714();
  if ((sub_1ABF247D4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v46 = a4;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      v36 = a1;
LABEL_11:
      sub_1ABA8179C();
      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v34, v35, v40, v36, "", v39, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      a4 = v46;
LABEL_12:

      (*(v51 + 16))(v50, v5, v7);
      v41 = sub_1ABF237B4();
      sub_1ABA90758(v41);
      swift_allocObject();
      v42 = sub_1ABF237A4();
      v43 = v7;
      v44 = v42;
      (*(v51 + 8))(v5, v43);
      *v32 = a1;
      *(v32 + 8) = a2;
      *(v32 + 16) = a3;
      *(v32 + 24) = v44;
      v45 = (*(v48 + 32))(v32 + *(v47 + 24), v4, v49);
      a4(v45);
      sub_1ABE542F4();
      sub_1ABBA4F10(v32);
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (a1 >> 32)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1ABA8120C();
  if (!v37)
  {
    sub_1ABAA61F8();
    if (!(!v37 & v38))
    {
      v36 = &v55;
      goto LABEL_11;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t LogSignpost.name.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void static LogSignpost.begin(logger:_:message:)()
{
  sub_1ABA7E2A8();
  v53 = v0;
  v54 = v1;
  v52 = v2;
  v56 = v3;
  v5 = v4;
  v55 = v6;
  v50 = sub_1ABF23744();
  v7 = sub_1ABA7BB64(v50);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7AC18();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v18 = sub_1ABF237F4();
  v19 = sub_1ABA7BB64(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7BC58();
  v26 = v25 - v24;
  v51 = sub_1ABF23774();
  v27 = sub_1ABA7BB64(v51);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7BC58();
  v34 = v33 - v32;
  (*(v21 + 16))(v26, v53, v18);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v35 = sub_1ABF23764();
  sub_1ABF24714();
  v36 = sub_1ABF23704();
  if ((sub_1ABF247D4() & 1) == 0)
  {

    v37 = v50;
    (*(v9 + 16))(v14, v17, v50);
    v38 = sub_1ABF237B4();
    sub_1ABA90758(v38);
    swift_allocObject();
    v39 = sub_1ABF237A4();
    (*(v9 + 8))(v17, v37);
    v40 = v52;
    *v5 = v56;
    *(v5 + 8) = v40;
    *(v5 + 16) = v55;
    *(v5 + 24) = v39;
    v41 = type metadata accessor for LogSignpost();
    (*(v29 + 32))(v5 + *(v41 + 24), v34, v51);
    sub_1ABA7BC1C();
    return;
  }

  v42 = v36;
  v43 = v56;
  if ((v55 & 1) == 0)
  {
    if (v56)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (HIDWORD(v43))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1ABA8120C();
  if (!v44)
  {
    sub_1ABAA61F8();
    if (!v44 & v45)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_9:
    if ((v42 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(v42))
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      sub_1ABAA5538();
      v46 = swift_slowAlloc();
      if (v35)
      {
        sub_1ABAA5AC4();
        if (!v45)
        {
          goto LABEL_27;
        }

        swift_slowAlloc();
      }

      if (v9)
      {
        sub_1ABA97DBC();
        if (!v45)
        {
          goto LABEL_28;
        }

        v47 = swift_slowAlloc();
      }

      else
      {
        v47 = 0;
      }

      sub_1ABA83CD0(v47);
      for (; v5; --v5)
      {
        v49 = *(v46 - 1);
        v48 = *v46;

        v49(&v59, &v58, &v57);

        v46 += 2;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_29:
  __break(1u);
}

Swift::Void __swiftcall LogSignpost.end()()
{
  sub_1ABA7E2A8();
  v1 = sub_1ABF23784();
  v2 = sub_1ABA7BB64(v1);
  v29 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7BC58();
  v8 = v7 - v6;
  v9 = sub_1ABF23744();
  v10 = sub_1ABA7BB64(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  v17 = v16 - v15;
  v18 = *(type metadata accessor for LogSignpost() + 24);
  v19 = *v0;
  v20 = *(v0 + 16);
  v21 = *(v0 + 24);

  v22 = sub_1ABF23764();
  sub_1ABF23794();
  v28 = sub_1ABF24704();
  if ((sub_1ABF247D4() & 1) == 0)
  {
LABEL_13:

    (*(v12 + 8))(v17, v9);
    sub_1ABA7BC1C();
    return;
  }

  if ((v20 & 1) == 0)
  {
    if (v19)
    {
      v23 = v29;
LABEL_9:

      sub_1ABF237C4();

      if ((*(v23 + 88))(v8, v1) == *MEMORY[0x1E69E93E8])
      {
        v25 = "[Error] Interval already ended";
      }

      else
      {
        (*(v23 + 8))(v8, v1);
        v25 = "";
      }

      sub_1ABA8179C();
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v22, v28, v27, v19, v25, v26, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v19 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1ABA8ED68();
  if (!v24)
  {
    v23 = v29;
    if (v19 >> 16 <= 0x10)
    {
      v19 = &v30;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

void LogSignpost.end(message:)()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v3 = sub_1ABF23784();
  v4 = sub_1ABA7BB64(v3);
  v44 = v5;
  v45 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v10 = v9 - v8;
  v11 = sub_1ABF23744();
  v12 = sub_1ABA7BB64(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v19 = v18 - v17;
  v20 = *(type metadata accessor for LogSignpost() + 24);
  v21 = *v0;
  v22 = *(v0 + 16);
  v23 = *(v0 + 24);

  v24 = sub_1ABF23764();
  sub_1ABF23794();
  v43 = sub_1ABF24704();
  v46 = sub_1ABF23704();
  if ((sub_1ABF247D4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v39 = v24;
  v40 = v11;
  v41 = v19;
  v42 = v14;
  if (v22)
  {
    if (v21 >> 32)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    sub_1ABA8ED68();
    if (v25)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v21 >> 16 > 0x10)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v21 = &v50;
  }

  else if (!v21)
  {
    __break(1u);
LABEL_5:

    (*(v14 + 8))(v19, v11);
LABEL_28:
    sub_1ABA7BC1C();
    return;
  }

  v26 = v2[2];
  v27 = v2[5];
  v28 = v2[6];

  sub_1ABF237C4();

  if ((*(v44 + 88))(v10, v45) == *MEMORY[0x1E69E93E8])
  {
    if ((v46 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v46))
    {
      v29 = swift_slowAlloc();
      if (!v28)
      {
        v30 = 0;
        goto LABEL_17;
      }

      if ((v28 - 0x1000000000000000) >> 61 == 7)
      {
        v30 = swift_slowAlloc();
LABEL_17:
        if (!v27)
        {
          v31 = v21;
          v32 = 0;
          goto LABEL_21;
        }

        if ((v27 - 0x400000000000000) >> 59 == 31)
        {
          v31 = v21;
          v32 = swift_slowAlloc();
LABEL_21:
          v47 = v32;
          v48 = v30;
          v33 = v29;
          *v29 = 0;
          v49 = v29 + 2;
          v34 = *(v26 + 16);
          for (i = (v26 + 40); v34; --v34)
          {
            v37 = *(i - 1);
            v36 = *i;

            v37(&v49, &v48, &v47);

            i += 2;
          }

          v38 = sub_1ABF23724();
          _os_signpost_emit_with_name_impl(&dword_1ABA78000, v39, v43, v38, v31, "[Error] Interval already ended", v33, v46);
          if (v30)
          {
            sub_1ABAD219C(&unk_1EB4D57F0, &qword_1ABF390C0);
            swift_arrayDestroy();
            sub_1ABA7BDD8();
            MEMORY[0x1AC5AB8B0]();
          }

          if (v32)
          {
            swift_arrayDestroy();
            sub_1ABA7BDD8();
            MEMORY[0x1AC5AB8B0]();
          }

          sub_1ABA7BDD8();
          MEMORY[0x1AC5AB8B0]();

          (*(v42 + 8))(v41, v40);
          goto LABEL_28;
        }

        goto LABEL_32;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_36:
  __break(1u);
}

void static LogSignpost.emit(_:_:_:)()
{
  sub_1ABA7E2A8();
  v38 = v1;
  v37 = v2;
  v4 = v3;
  v5 = sub_1ABF23744();
  v6 = sub_1ABA7BB64(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  sub_1ABA8BFC4();
  v11 = sub_1ABF237F4();
  v12 = sub_1ABA7BB64(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v19 = v18 - v17;
  v20 = sub_1ABF23774();
  v21 = sub_1ABA7BB64(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  v28 = v27 - v26;
  (*(v14 + 16))(v19, v4, v11);
  sub_1ABF23754();
  sub_1ABF23734();
  v29 = sub_1ABF23764();
  sub_1ABF24724();
  v30 = sub_1ABF23704();
  if ((sub_1ABF247D4() & 1) == 0)
  {

    (*(v8 + 8))(v0, v5);
    (*(v23 + 8))(v28, v20);
    sub_1ABA7BC1C();
    return;
  }

  if ((v38 & 1) == 0)
  {
    if (v37)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (HIDWORD(v37))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1ABA8120C();
  if (!v31)
  {
    sub_1ABAA61F8();
    if (!v31 & v32)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_9:
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(v30))
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      sub_1ABAA5538();
      v33 = swift_slowAlloc();
      if (v29)
      {
        sub_1ABAA5AC4();
        if (!v32)
        {
          goto LABEL_27;
        }

        swift_slowAlloc();
      }

      if (v0)
      {
        sub_1ABA97DBC();
        if (!v32)
        {
          goto LABEL_28;
        }

        v34 = swift_slowAlloc();
      }

      else
      {
        v34 = 0;
      }

      sub_1ABA83CD0(v34);
      for (; v8; --v8)
      {
        v36 = *(v33 - 1);
        v35 = *v33;

        v36(&v41, &v40, &v39);

        v33 += 2;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_29:
  __break(1u);
}

void withSignpost<A>(_:closure:)()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v58 = v4;
  v59 = v5;
  v60 = v6;
  v61 = v7;
  v57 = sub_1ABF23744();
  v8 = sub_1ABA7BB64(v57);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7AC18();
  sub_1ABA843C0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v52 - v14;
  v16 = sub_1ABF237F4();
  v17 = sub_1ABA7BB64(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7BC58();
  v24 = v23 - v22;
  v55 = sub_1ABF23774();
  v25 = sub_1ABA7BB64(v55);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7BC58();
  v32 = v31 - v30;
  v54 = type metadata accessor for LogSignpost();
  v33 = sub_1ABA7BBB0(v54);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7BC58();
  v38 = v37 - v36;
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  v39 = sub_1ABA7AA24(v16, qword_1ED871EF8);
  (*(v19 + 16))(v24, v39, v16);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v40 = sub_1ABF23764();
  v41 = sub_1ABF24714();
  if ((sub_1ABF247D4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v52[1] = v1;
  v53 = v3;
  if ((v61 & 1) == 0)
  {
    if (v60)
    {
      v42 = v60;
LABEL_11:
      sub_1ABA8179C();
      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v40, v41, v46, v42, "", v45, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      v3 = v53;
LABEL_12:

      v47 = v57;
      (*(v10 + 16))(v56, v15, v57);
      v48 = sub_1ABF237B4();
      sub_1ABA90758(v48);
      swift_allocObject();
      v49 = sub_1ABF237A4();
      (*(v10 + 8))(v15, v47);
      v50 = v58;
      *v38 = v60;
      *(v38 + 8) = v50;
      *(v38 + 16) = v61;
      *(v38 + 24) = v49;
      v51 = (*(v27 + 32))(v38 + *(v54 + 24), v32, v55);
      v3(v51);
      sub_1ABE542F4();
      sub_1ABBA4F10(v38);
      sub_1ABA7BC1C();
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v60 >> 32)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1ABA8120C();
  if (!v43)
  {
    sub_1ABAA61F8();
    if (!(!v43 & v44))
    {
      v42 = &v62;
      goto LABEL_11;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t withThrowingSignpostAsync<A>(_:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 176) = a4;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  v7 = sub_1ABF23744();
  *(v6 + 64) = v7;
  sub_1ABA7BBD0(v7);
  *(v6 + 72) = v8;
  v10 = *(v9 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  v11 = sub_1ABF237F4();
  *(v6 + 96) = v11;
  sub_1ABA7BBD0(v11);
  *(v6 + 104) = v12;
  v14 = *(v13 + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  v15 = sub_1ABF23774();
  *(v6 + 120) = v15;
  sub_1ABA7BBD0(v15);
  *(v6 + 128) = v16;
  v18 = *(v17 + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  v19 = type metadata accessor for LogSignpost();
  *(v6 + 144) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ABE53DAC, 0, 0);
}

void sub_1ABE53DAC()
{
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  v1 = *(v0 + 136);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = sub_1ABA7AA24(v4, qword_1ED871EF8);
  (*(v3 + 16))(v2, v5, v4);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v6 = sub_1ABF23764();
  v7 = sub_1ABF24714();
  if ((sub_1ABF247D4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(v0 + 32);
  if (*(v0 + 176))
  {
LABEL_7:
    if (v8 >> 32)
    {
      __break(1u);
    }

    else
    {
      sub_1ABA8ED68();
      if (v9)
      {
LABEL_17:
        __break(1u);
        return;
      }

      if (v8 >> 16 <= 0x10)
      {
        v8 = (v0 + 16);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v10 = *(v0 + 88);
  sub_1ABA8179C();
  v11 = swift_slowAlloc();
  *v11 = 0;
  v12 = sub_1ABF23724();
  _os_signpost_emit_with_name_impl(&dword_1ABA78000, v6, v7, v12, v8, "", v11, 2u);
  sub_1ABA7BDD8();
  MEMORY[0x1AC5AB8B0]();
LABEL_12:

  v13 = *(v0 + 152);
  v14 = *(v0 + 128);
  v30 = *(v0 + 136);
  v28 = *(v0 + 144);
  v29 = *(v0 + 120);
  v15 = *(v0 + 88);
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  v19 = *(v0 + 40);
  v18 = *(v0 + 48);
  v27 = *(v0 + 176);
  v20 = *(v0 + 32);
  (*(v16 + 16))(*(v0 + 80), v15, v17);
  v21 = sub_1ABF237B4();
  sub_1ABA90758(v21);
  swift_allocObject();
  v22 = sub_1ABF237A4();
  (*(v16 + 8))(v15, v17);
  *v13 = v20;
  *(v13 + 8) = v19;
  *(v13 + 16) = v27;
  *(v13 + 24) = v22;
  (*(v14 + 32))(v13 + *(v28 + 24), v30, v29);
  v31 = (v18 + *v18);
  v23 = v18[1];
  v24 = swift_task_alloc();
  *(v0 + 160) = v24;
  *v24 = v0;
  v24[1] = sub_1ABE540A0;
  v25 = *(v0 + 56);
  v26 = *(v0 + 24);

  v31(v26);
}

uint64_t sub_1ABE540A0()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1ABE54254;
  }

  else
  {
    v3 = sub_1ABE541B4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1ABE541B4()
{
  sub_1ABA9A710();
  sub_1ABBA4F10(v0);

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1ABE54254()
{
  sub_1ABA9A710();
  sub_1ABBA4F10(v0);

  v2 = *(v1 + 8);
  v3 = *(v1 + 168);

  return v2();
}

void sub_1ABE542F4()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v3 = sub_1ABF23784();
  v4 = sub_1ABA7BB64(v3);
  v28 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  sub_1ABA8BFC4();
  v8 = sub_1ABF23744();
  v9 = sub_1ABA7BB64(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  v17 = type metadata accessor for LogSignpost();
  v18 = *v2;
  v19 = *(v2 + 16);
  v20 = *(v2 + 24);
  v21 = v2 + *(v17 + 24);
  v22 = sub_1ABF23764();
  sub_1ABF23794();
  v27 = sub_1ABF24704();
  if ((sub_1ABF247D4() & 1) == 0)
  {
LABEL_13:

    (*(v11 + 8))(v16, v8);
    sub_1ABA7BC1C();
    return;
  }

  if ((v19 & 1) == 0)
  {
    if (v18)
    {
LABEL_9:

      sub_1ABF237C4();

      if ((*(v28 + 88))(v0, v3) == *MEMORY[0x1E69E93E8])
      {
        v24 = "[Error] Interval already ended";
      }

      else
      {
        (*(v28 + 8))(v0, v3);
        v24 = "";
      }

      sub_1ABA8179C();
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v22, v27, v26, v18, v24, v25, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v18 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1ABA8ED68();
  if (!v23)
  {
    if (v18 >> 16 <= 0x10)
    {
      v18 = &v29;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_1ABE54550()
{
  result = sub_1ABF237B4();
  if (v1 <= 0x3F)
  {
    result = sub_1ABF23774();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABE545E4()
{
  sub_1ABAA6204();
  v2 = sub_1ABAD219C(&qword_1EB4DB128, &qword_1ABF6CBF0);
  sub_1ABA7AB80(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA8C40C();
  sub_1ABAA2E30();
  result = sub_1ABA9768C();
  if (!v0)
  {
    sub_1ABAA428C();
    MEMORY[0x1EEE9AC00](v7);
    sub_1ABA7F9D8();
    v8 = sub_1ABAA46E8();
    sub_1ABE5555C(v8, v9, v10);
    v11 = sub_1ABAD219C(&qword_1EB4DB130, &qword_1ABF6CBF8);
    sub_1ABA8E4E4(v11);
    if (v12)
    {

      sub_1ABAB480C(v1, &qword_1EB4DB128, &qword_1ABF6CBF0);
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v14 = *v1;
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        swift_willThrowTypedImpl();
      }

      sub_1ABA81C9C();
      v15 = sub_1ABA7D0F8();
      sub_1ABE57C7C(v15, v16, v17);
    }

    v18 = type metadata accessor for CustomGraphPerson(0);
    return sub_1ABAA50A8(v18);
  }

  return result;
}

uint64_t sub_1ABE54754()
{
  sub_1ABAA6204();
  v2 = sub_1ABAD219C(&qword_1EB4D61E8, &qword_1ABF500B8);
  sub_1ABA7AB80(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA8C40C();
  sub_1ABAA2E30();
  result = sub_1ABA9768C();
  if (!v0)
  {
    sub_1ABAA428C();
    MEMORY[0x1EEE9AC00](v7);
    sub_1ABA7F9D8();
    v8 = sub_1ABAA46E8();
    sub_1ABE55928(v8, v9, v10);
    v11 = sub_1ABAD219C(&qword_1EB4D1BE0, &unk_1ABF34230);
    sub_1ABA8E4E4(v11);
    if (v12)
    {

      sub_1ABAB480C(v1, &qword_1EB4D61E8, &qword_1ABF500B8);
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v14 = *v1;
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        swift_willThrowTypedImpl();
      }

      v15 = sub_1ABA7D0F8();
      sub_1ABE57C7C(v15, v16, v17);
    }

    v18 = type metadata accessor for CustomGraphSongEvent(0);
    return sub_1ABAA50A8(v18);
  }

  return result;
}

uint64_t sub_1ABE548D4()
{
  sub_1ABAA6204();
  v2 = sub_1ABAD219C(&qword_1EB4D61E0, &qword_1ABF500B0);
  sub_1ABA7AB80(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA8C40C();
  sub_1ABAA2E30();
  result = sub_1ABA9768C();
  if (!v0)
  {
    sub_1ABAA428C();
    MEMORY[0x1EEE9AC00](v7);
    sub_1ABA7F9D8();
    v8 = sub_1ABAA46E8();
    sub_1ABE55BD4(v8, v9, v10);
    v11 = sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
    sub_1ABA8E4E4(v11);
    if (v12)
    {

      sub_1ABAB480C(v1, &qword_1EB4D61E0, &qword_1ABF500B0);
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v14 = *v1;
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        swift_willThrowTypedImpl();
      }

      v15 = sub_1ABA7D0F8();
      sub_1ABE57C7C(v15, v16, v17);
    }

    v18 = type metadata accessor for CustomGraphActivityEvent(0);
    return sub_1ABAA50A8(v18);
  }

  return result;
}

uint64_t sub_1ABE54A54@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = *(v1 + 16);

  v6 = sub_1ABE910B8();

  if (!v2)
  {
    *&v13[0] = v6;
    v18 = v3;
    MEMORY[0x1EEE9AC00](result);
    sub_1ABE55E80(sub_1ABE57BF0, &v15);
    if (v17[24] == 255)
    {

      v13[0] = v15;
      v13[1] = v16;
      v14[0] = *v17;
      *(v14 + 9) = *&v17[9];
      result = sub_1ABAB480C(v13, &qword_1EB4DB120, &qword_1ABF6CBE8);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0;
    }

    else
    {
      v8 = v15;
      if (v17[24])
      {
        *&v13[0] = v15;
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        swift_willThrowTypedImpl();
      }

      else
      {
        v9 = *(&v15 + 1);
        v10 = v16;
        v11 = *v17;
        v12 = *&v17[16];

        *a1 = v8;
        *(a1 + 8) = v9;
        *(a1 + 16) = v10;
        *(a1 + 32) = v11;
        *(a1 + 48) = v12;
      }
    }
  }

  return result;
}

void *sub_1ABE54BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 32);
  v12[0] = *(v2 + 16);
  v12[1] = v6;
  v13 = *(v2 + 48);
  sub_1ABE577F0(v12, __src);
  v7 = sub_1ABE91150(a1);
  result = sub_1ABE5784C(v12);
  if (!v3)
  {
    __dst[0] = v7;
    __dst[12] = v2;
    MEMORY[0x1EEE9AC00](result);
    sub_1ABE562F8(sub_1ABE579E4, __src);
    if (LOBYTE(__src[11]) == 255)
    {

      memcpy(__dst, __src, 0x59uLL);
      result = sub_1ABAB480C(__dst, &qword_1EB4DB108, &unk_1ABF6CBC8);
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0;
    }

    else
    {
      v9 = __src[0];
      if (__src[11])
      {
        __dst[0] = __src[0];
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        swift_willThrowTypedImpl();
      }

      else
      {

        *a2 = v9;
        return memcpy((a2 + 8), &__src[1], 0x50uLL);
      }
    }
  }

  return result;
}

uint64_t sub_1ABE54DA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 16);
  v9 = (a1 + 32);
  if (v8)
  {
    while (1)
    {
      v10 = v9[1];
      v20[0] = *v9;
      v20[1] = v10;
      v12 = *v9;
      v11 = v9[1];
      v21[0] = v9[2];
      *(v21 + 9) = *(v9 + 41);
      v17 = v12;
      v18 = v11;
      v19[0] = v9[2];
      *(v19 + 9) = *(v9 + 41);
      sub_1ABAFC790(v20, &v14, &qword_1EB4D1828, &qword_1ABF50FD0);
      sub_1ABE57330(&v17, a2, a3, a4);
      if (v4)
      {
        break;
      }

      v14 = v17;
      v15 = v18;
      v16[0] = v19[0];
      *(v16 + 9) = *(v19 + 9);
      sub_1ABAB480C(&v14, &qword_1EB4D1828, &qword_1ABF50FD0);
      v9 += 4;
      if (!--v8)
      {
        goto LABEL_6;
      }
    }

    v14 = v17;
    v15 = v18;
    v16[0] = v19[0];
    *(v16 + 9) = *(v19 + 9);
    sub_1ABAB480C(&v14, &qword_1EB4D1828, &qword_1ABF50FD0);
  }

LABEL_6:
}

uint64_t sub_1ABE54EF8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = (a3 + 32);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    memcpy(__dst, v5, sizeof(__dst));
    memcpy(__src, v5, sizeof(__src));
    sub_1ABB345D8(__dst, v9);
    v7 = v4(__src);
    if (v3)
    {
      memcpy(v9, __src, sizeof(v9));
      return sub_1ABB34634(v9);
    }

    v8 = v7;
    v5 += 112;
    memcpy(v9, __src, sizeof(v9));
    result = sub_1ABB34634(v9);
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t sub_1ABE54FDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = (a3 + 32);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    memcpy(__dst, v5, sizeof(__dst));
    memcpy(__src, v5, sizeof(__src));
    sub_1ABE57A98(__dst, v9);
    v7 = v4(__src);
    if (v3)
    {
      memcpy(v9, __src, sizeof(v9));
      return sub_1ABE57AF4(v9);
    }

    v8 = v7;
    v5 += 120;
    memcpy(v9, __src, sizeof(v9));
    result = sub_1ABE57AF4(v9);
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t sub_1ABE550F0()
{
  v1 = *(v0 + 24);

  sub_1ABE5689C(&type metadata for CustomGraphOrganization);
}

uint64_t sub_1ABE55158(uint64_t (*a1)(void))
{
  v3 = *(v1 + 24);

  v4 = sub_1ABE56740(a1);

  return v4;
}

uint64_t sub_1ABE5519C()
{
  v1 = *(v0 + 56);

  sub_1ABE5689C(&type metadata for CustomGraphSportsTeam);
}

uint64_t sub_1ABE551EC()
{
  v1 = *(v0 + 56);

  v2 = sub_1ABE56740(type metadata accessor for CustomGraphSportsGameEvent);

  return v2;
}

uint64_t sub_1ABE5523C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v5 = sub_1ABE55158(type metadata accessor for CustomGraphPerson);
  result = sub_1ABE564C8(a1, v5, type metadata accessor for CustomGraphPerson, sub_1ABE57C44, sub_1ABCDAAEC);
  if (!v2)
  {
    v7 = type metadata accessor for CustomGraphPerson(0);
    return sub_1ABA7B9B4(a2, 0, 1, v7);
  }

  return result;
}

uint64_t sub_1ABE55314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v5 = sub_1ABE55158(type metadata accessor for CustomGraphSongEvent);
  result = sub_1ABE564C8(a1, v5, type metadata accessor for CustomGraphSongEvent, sub_1ABE57C44, sub_1ABCCF2F4);
  if (!v2)
  {
    v7 = type metadata accessor for CustomGraphSongEvent(0);
    return sub_1ABA7B9B4(a2, 0, 1, v7);
  }

  return result;
}

uint64_t sub_1ABE553EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v5 = sub_1ABE55158(type metadata accessor for CustomGraphActivityEvent);
  result = sub_1ABE564C8(a1, v5, type metadata accessor for CustomGraphActivityEvent, sub_1ABE57C44, sub_1ABC8CE40);
  if (!v2)
  {
    v7 = type metadata accessor for CustomGraphActivityEvent(0);
    return sub_1ABA7B9B4(a2, 0, 1, v7);
  }

  return result;
}

double sub_1ABE554C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1ABE550F0();
  *&result = sub_1ABE5659C(a1, a2).n128_u64[0];
  return result;
}

void *sub_1ABE55510@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  sub_1ABE5519C();
  return sub_1ABE56630(a1, a2);
}

uint64_t sub_1ABE5555C@<X0>(void (*a1)(uint64_t)@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v25[1] = a2;
  v5 = type metadata accessor for CustomGraphPerson(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v25 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v25 - v18;
  a1(v17);
  sub_1ABAFC6F0(v16, v19, &qword_1EB4D2920, &qword_1ABF6CB70);
  sub_1ABAFC6F0(v19, v13, &qword_1EB4D2920, &qword_1ABF6CB70);
  if (sub_1ABA7E1E0(v13, 1, v5) == 1)
  {
    sub_1ABAB480C(v13, &qword_1EB4D2920, &qword_1ABF6CB70);
    v20 = sub_1ABAD219C(&qword_1EB4DB130, &qword_1ABF6CBF8);
    v21 = a3;
    v22 = 1;
  }

  else
  {
    sub_1ABE57C7C(v13, v8, type metadata accessor for CustomGraphPerson);
    sub_1ABE57C7C(v8, a3, type metadata accessor for CustomGraphPerson);
    v23 = sub_1ABAD219C(&qword_1EB4DB130, &qword_1ABF6CBF8);
    swift_storeEnumTagMultiPayload();
    v21 = a3;
    v22 = 0;
    v20 = v23;
  }

  return sub_1ABA7B9B4(v21, v22, 1, v20);
}

void sub_1ABE55928(uint64_t a1, uint64_t a2, int a3)
{
  v9 = sub_1ABA7EBDC(a1, a2, a3);
  v10 = type metadata accessor for CustomGraphSongEvent(v9);
  v11 = sub_1ABA7BBB0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA809E8();
  v14 = sub_1ABAD219C(&qword_1EB4D61B0, &qword_1ABF50310);
  v15 = sub_1ABA7AB80(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA8121C();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA99704();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA8ED74();
  v8();
  if (!v4)
  {
    sub_1ABA97DD0();
    sub_1ABA843D4();
    sub_1ABAA3DF8();
    if (v28)
    {
      sub_1ABAB480C(v7, &qword_1EB4D61B0, &qword_1ABF50310);
      sub_1ABAD219C(&qword_1EB4D1BE0, &unk_1ABF34230);
      v35 = sub_1ABA8FB7C();
LABEL_17:
      sub_1ABA7B9B4(v35, v36, v37, v38);
      return;
    }

    sub_1ABE57C7C(v7, v6, type metadata accessor for CustomGraphSongEvent);
    v40 = sub_1ABA94D70();
    sub_1ABE57C7C(v40, v41, v42);
    sub_1ABAD219C(&qword_1EB4D1BE0, &unk_1ABF34230);
    sub_1ABA939DC();
LABEL_16:
    swift_storeEnumTagMultiPayload();
    v35 = sub_1ABA90B88();
    goto LABEL_17;
  }

  sub_1ABAA32A0();
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((sub_1ABAA5AD8() & 1) == 0)
  {
LABEL_13:

    v50[10] = v3;
    v39 = v3;
    if (sub_1ABAA554C())
    {
      sub_1ABC81B08(v50, v48);
      sub_1ABC81B08(v48, v49);
      sub_1ABC81B64(v48);
      if ((v47 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D1BE0, &unk_1ABF34230);
        v43 = sub_1ABA8FB7C();
        sub_1ABA7B9B4(v43, v44, v45, v46);
        v34 = v3;
        goto LABEL_19;
      }
    }

    swift_willThrow();
    *v5 = v3;
    sub_1ABAD219C(&qword_1EB4D1BE0, &unk_1ABF34230);
    sub_1ABA939DC();
    goto LABEL_16;
  }

  v20 = sub_1ABA7C7AC();
  if (!v28 || v26 || v20 != 1 || (sub_1ABA7C2EC(), v29))
  {
    sub_1ABC81BB8(v20, v21, v22, v23, v24, v25, v26, v27);
    goto LABEL_13;
  }

  sub_1ABAD219C(&qword_1EB4D1BE0, &unk_1ABF34230);
  v30 = sub_1ABA8FB7C();
  sub_1ABA7B9B4(v30, v31, v32, v33);
  v34 = v49[0];
LABEL_19:
}

void sub_1ABE55BD4(uint64_t a1, uint64_t a2, int a3)
{
  v9 = sub_1ABA7EBDC(a1, a2, a3);
  v10 = type metadata accessor for CustomGraphActivityEvent(v9);
  v11 = sub_1ABA7BBB0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA809E8();
  v14 = sub_1ABAD219C(&qword_1EB4D6200, &unk_1ABF6CC00);
  v15 = sub_1ABA7AB80(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA8121C();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA99704();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA8ED74();
  v8();
  if (!v4)
  {
    sub_1ABA97DD0();
    sub_1ABA843D4();
    sub_1ABAA3DF8();
    if (v28)
    {
      sub_1ABAB480C(v7, &qword_1EB4D6200, &unk_1ABF6CC00);
      sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
      v35 = sub_1ABA8FB7C();
LABEL_17:
      sub_1ABA7B9B4(v35, v36, v37, v38);
      return;
    }

    sub_1ABE57C7C(v7, v6, type metadata accessor for CustomGraphActivityEvent);
    v40 = sub_1ABA94D70();
    sub_1ABE57C7C(v40, v41, v42);
    sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
    sub_1ABA939DC();
LABEL_16:
    swift_storeEnumTagMultiPayload();
    v35 = sub_1ABA90B88();
    goto LABEL_17;
  }

  sub_1ABAA32A0();
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((sub_1ABAA5AD8() & 1) == 0)
  {
LABEL_13:

    v50[10] = v3;
    v39 = v3;
    if (sub_1ABAA554C())
    {
      sub_1ABC81B08(v50, v48);
      sub_1ABC81B08(v48, v49);
      sub_1ABC81B64(v48);
      if ((v47 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
        v43 = sub_1ABA8FB7C();
        sub_1ABA7B9B4(v43, v44, v45, v46);
        v34 = v3;
        goto LABEL_19;
      }
    }

    swift_willThrow();
    *v5 = v3;
    sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
    sub_1ABA939DC();
    goto LABEL_16;
  }

  v20 = sub_1ABA7C7AC();
  if (!v28 || v26 || v20 != 1 || (sub_1ABA7C2EC(), v29))
  {
    sub_1ABC81BB8(v20, v21, v22, v23, v24, v25, v26, v27);
    goto LABEL_13;
  }

  sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
  v30 = sub_1ABA8FB7C();
  sub_1ABA7B9B4(v30, v31, v32, v33);
  v34 = v49[0];
LABEL_19:
}

void *sub_1ABE55E80@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  result = a1(&v9);
  v4 = v10;
  if (v10)
  {
    v5 = v9;
    v6 = v11;
    v7 = v12;
    v8 = v13;
    LOBYTE(v9) = 0;
    *a2 = v5;
    *(a2 + 8) = v4;
    *(a2 + 16) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = v8;
    *(a2 + 56) = 0;
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 56) = -1;
  }

  return result;
}

void sub_1ABE5604C(uint64_t a1, uint64_t a2, int a3)
{
  v9 = sub_1ABA7EBDC(a1, a2, a3);
  v10 = type metadata accessor for CustomGraphSportsGameEvent(v9);
  v11 = sub_1ABA7BBB0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA809E8();
  v14 = sub_1ABAD219C(&qword_1EB4D6248, &qword_1ABF50210);
  v15 = sub_1ABA7AB80(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA8121C();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA99704();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA8ED74();
  v8();
  if (!v4)
  {
    sub_1ABA97DD0();
    sub_1ABA843D4();
    sub_1ABAA3DF8();
    if (v28)
    {
      sub_1ABAB480C(v7, &qword_1EB4D6248, &qword_1ABF50210);
      sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
      v35 = sub_1ABA8FB7C();
LABEL_17:
      sub_1ABA7B9B4(v35, v36, v37, v38);
      return;
    }

    sub_1ABE57C7C(v7, v6, type metadata accessor for CustomGraphSportsGameEvent);
    v40 = sub_1ABA94D70();
    sub_1ABE57C7C(v40, v41, v42);
    sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
    sub_1ABA939DC();
LABEL_16:
    swift_storeEnumTagMultiPayload();
    v35 = sub_1ABA90B88();
    goto LABEL_17;
  }

  sub_1ABAA32A0();
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((sub_1ABAA5AD8() & 1) == 0)
  {
LABEL_13:

    v50[10] = v3;
    v39 = v3;
    if (sub_1ABAA554C())
    {
      sub_1ABC81B08(v50, v48);
      sub_1ABC81B08(v48, v49);
      sub_1ABC81B64(v48);
      if ((v47 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
        v43 = sub_1ABA8FB7C();
        sub_1ABA7B9B4(v43, v44, v45, v46);
        v34 = v3;
        goto LABEL_19;
      }
    }

    swift_willThrow();
    *v5 = v3;
    sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
    sub_1ABA939DC();
    goto LABEL_16;
  }

  v20 = sub_1ABA7C7AC();
  if (!v28 || v26 || v20 != 1 || (sub_1ABA7C2EC(), v29))
  {
    sub_1ABC81BB8(v20, v21, v22, v23, v24, v25, v26, v27);
    goto LABEL_13;
  }

  sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
  v30 = sub_1ABA8FB7C();
  sub_1ABA7B9B4(v30, v31, v32, v33);
  v34 = v49[0];
LABEL_19:
}

void *sub_1ABE562F8@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  if (v6)
  {
    *a2 = v5;
    *(a2 + 8) = v4;
    result = memcpy((a2 + 16), v7, 0x48uLL);
    *(a2 + 88) = 0;
  }

  else
  {
    *(a2 + 80) = 0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 88) = -1;
  }

  return result;
}

uint64_t sub_1ABE564C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t, _BYTE *, uint64_t))
{
  v10 = a3(0);
  sub_1ABA7AB80(v10);
  v12 = *(v11 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v20;
  v20 = a1;
  a5(a4, v18, a2);
  if (!v5)
  {
    v14 = sub_1ABA94D70();
    sub_1ABE57C7C(v14, v15, v16);
  }
}

__n128 sub_1ABE5659C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a1;
  sub_1ABCD6550(sub_1ABE57C0C, v8);

  if (!v2)
  {
    v5 = v8[1];
    v6 = v10;
    result = v9;
    v7 = v11;
    *a2 = v8[0];
    *(a2 + 8) = v5;
    *(a2 + 16) = result;
    *(a2 + 32) = v6;
    *(a2 + 40) = v7;
  }

  return result;
}

void *sub_1ABE56630@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = a1;
  sub_1ABCD7E50(sub_1ABE57A44, __src);

  if (!v2)
  {
    return memcpy(a2, __src, 0x58uLL);
  }

  return result;
}

uint64_t sub_1ABE566B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = a5;
  v14[2] = &v15;

  return a7(a6, v14, a1, a2, a3, a4);
}

uint64_t sub_1ABE56740(uint64_t (*a1)(void))
{
  v2 = v1;
  v3 = a1(0);
  sub_1ABA96B24();
  sub_1ABAD5248(v3, *(v1 + 16));
  v4 = v16;
  sub_1ABAB480C(v15, &qword_1EB4D3000, &unk_1ABF3AA60);
  if (!v4)
  {
    v16 = sub_1ABF217F4();
    v5 = *(v16 + 48);
    v6 = *(v16 + 52);
    swift_allocObject();
    v15[0] = sub_1ABF217E4();
    swift_beginAccess();
    sub_1ABD25744(v15, v3);
    swift_endAccess();
  }

  v7 = sub_1ABAD5248(v3, *(v2 + 16));
  sub_1ABAA2408(v8, v9, v10, v7);
  v11 = sub_1ABA7D000();
  sub_1ABAD219C(v11, v12);
  sub_1ABF217F4();
  if (swift_dynamicCast())
  {
    sub_1ABAB480C(v15, &qword_1EB4D3000, &unk_1ABF3AA60);
    return v14;
  }

  else
  {
    sub_1ABAA26FC();
    result = sub_1ABAA4BA8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABE5689C(uint64_t a1)
{
  v3 = v1;
  sub_1ABA96B24();
  sub_1ABAD5248(a1, *(v1 + 16));
  v4 = v13;
  sub_1ABAB480C(v12, &qword_1EB4D3000, &unk_1ABF3AA60);
  if (!v4)
  {
    v13 = MEMORY[0x1E69E7CA8] + 8;
    swift_beginAccess();
    sub_1ABD25744(v12, a1);
    swift_endAccess();
  }

  v5 = sub_1ABAD5248(a1, *(v3 + 16));
  sub_1ABAA2408(v6, v7, v8, v5);
  v9 = sub_1ABA7D000();
  sub_1ABAD219C(v9, v10);
  if (swift_dynamicCast())
  {
    return sub_1ABAB480C(v12, &qword_1EB4D3000, &unk_1ABF3AA60);
  }

  sub_1ABAA26FC();
  result = sub_1ABAA4BA8();
  __break(1u);
  return result;
}

uint64_t ViewService.siriPersonView.getter()
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v3 = sub_1ABF23BD4();
  v18[0] = 0;
  v4 = [v2 requestAssertionForViewName:v3 error:v18];

  v5 = v18[0];
  if (v4)
  {
    v6 = *(v0 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v7 = v6[5];
    v8 = v6[6];
    sub_1ABA93E20(v6 + 2, v7);
    v9 = *(v8 + 8);
    v10 = v5;
    v11 = v9(v4, v7, v8);
    if (v1)
    {
      result = swift_unknownObjectRelease();
    }

    else
    {
      v15 = v11;
      v16 = v12;
      type metadata accessor for SubgraphView();
      swift_allocObject();
      result = SubgraphView.init(accessAssertion:database:tableName:batchSize:)(v4, v15, v16, 0x7372655069726973, 0xEA00000000006E6FLL, 10);
    }
  }

  else
  {
    v14 = v18[0];
    sub_1ABF21BE4();

    result = swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void SiriPersonView.fetchValues(entityIdentifier:)(uint64_t a1)
{
  v3 = v2;
  v5 = sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70);
  sub_1ABA7AB80(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v79 - v9;
  v11 = type metadata accessor for CustomGraphPerson(0);
  v12 = sub_1ABA7BBB0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1[1];
  v79 = *v1;
  v90 = v17;
  v105 = MEMORY[0x1E69E7CC0];
  v92 = *(a1 + 16);
  if (!v92)
  {
    v82 = MEMORY[0x1E69E7CC0];
    return;
  }

  v18 = 0;
  v91 = a1 + 32;
  v81 = v16 + 16;
  v87 = 181;
  v86 = 1844;
  v85 = 3396;
  v83 = xmmword_1ABF34750;
  v82 = MEMORY[0x1E69E7CC0];
  v84 = v10;
  v88 = v11;
  v89 = v16;
  while (1)
  {
    v19 = *(v91 + 8 * v18);
    EntityClass.init(intValue:)(SHIBYTE(v19), &v98);
    if (!v99)
    {
      sub_1ABAEFC04();
      v38 = swift_allocError();
      *v39 = v83;
      v39[1] = 0u;
      v39[2] = 0u;
      v39[3] = 0u;
      *(v39 + 57) = 0u;
LABEL_20:
      swift_willThrow();

      v3 = 0;
      goto LABEL_46;
    }

    if (v87 < 27)
    {
      break;
    }

    if (!_Records_GDEntityClass_records)
    {
      goto LABEL_58;
    }

    if (*(_Records_GDEntityClass_records + 0x278) >= v86)
    {
      goto LABEL_56;
    }

    if (*(_Records_GDEntityClass_records + 0x280) >= v85)
    {
      goto LABEL_57;
    }

    v93 = v19;
    v97 = v99;
    if (!_Records_GDEntityClass_classIds[0])
    {
      goto LABEL_60;
    }

    v94 = v18;
    v95 = v3;
    v20 = v98;
    v22 = v100;
    v21 = v101;
    LODWORD(v96) = v102;
    v23 = *(_Records_GDEntityClass_records + 0x270);
    v24 = sub_1ABF23DD4();
    if (!_Records_GDEntityClass_labels)
    {
      goto LABEL_59;
    }

    v26 = v24;
    v27 = v25;
    v28 = sub_1ABF23DD4();
    v103[0] = v26;
    v103[1] = v27;
    v103[2] = v28;
    v103[3] = v29;
    v104 = v23;
    if (v28 != v22 || v21 != v29)
    {
      v31 = v28;
      v32 = v29;
      if ((sub_1ABF25054() & 1) == 0)
      {
        v98 = v20;
        v99 = v97;
        v100 = v22;
        v101 = v21;
        v102 = v96;
        EntityClass.ancestorClassesSet.getter();
        sub_1ABAA6788();
        LODWORD(v80) = v33;

        if ((v80 & 1) == 0)
        {
          sub_1ABAEFC04();
          v38 = swift_allocError();
          *v77 = v26;
          *(v77 + 8) = v27;
          *(v77 + 16) = v31;
          *(v77 + 24) = v32;
          *(v77 + 32) = v23;
          v78 = v97;
          *(v77 + 40) = v20;
          *(v77 + 48) = v78;
          *(v77 + 56) = v22;
          *(v77 + 64) = v21;
          *(v77 + 72) = v96;
          v18 = v94;
          goto LABEL_20;
        }
      }
    }

    sub_1ABA88934(v103);
    sub_1ABAA8FA8(v20, v97);
    v34 = v84;
    v35 = v95;
    sub_1ABE545E4();
    v3 = v35;
    v36 = v89;
    if (v35)
    {
LABEL_52:

      return;
    }

    v37 = v88;
    if (sub_1ABA7E1E0(v34, 1, v88) == 1)
    {
      sub_1ABAB480C(v34, &qword_1EB4D2920, &qword_1ABF6CB70);
    }

    else
    {
      sub_1ABA81C9C();
      sub_1ABE57C7C(v34, v36, v40);
      if (*&v81[*(v37 + 112)])
      {
        v95 = 0;
        v41 = 0;
        v42 = *(v36 + *(v37 + 108));
        v43 = *(v42 + 16);
        v44 = v42 + 112;
        v93 = MEMORY[0x1E69E7CC0];
        v80 = v42 + 112;
LABEL_23:
        v45 = (v44 + 88 * v41);
        sub_1ABA95964();
        while (v43 != v41)
        {
          if (v41 >= v43)
          {
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

          v47 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_54;
          }

          v48 = *(v45 - 6);
          if (v48)
          {
            v50 = *(v45 - 8);
            v49 = *(v45 - 7);
            v51 = *(v45 - 4);
            v96 = *(v45 - 5);
            v97 = v50;
            v53 = *(v45 - 3);
            v52 = *(v45 - 2);
            v54 = *v45;
            v55 = v49 == v46 && v48 == 0xE900000000000074;
            if (v55 || (sub_1ABF25054(), sub_1ABA95964(), (v56 & 1) != 0))
            {
              if (v53)
              {

                swift_bridgeObjectRetain_n();

                v57 = v93;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v61 = *(v57 + 16);
                  sub_1ABAAA4F4();
                  v57 = v62;
                }

                v58 = *(v57 + 16);
                v59 = v58 + 1;
                if (v58 >= *(v57 + 24) >> 1)
                {
                  v93 = v58 + 1;
                  sub_1ABAAA4F4();
                  v59 = v93;
                  v57 = v63;
                }

                *(v57 + 16) = v59;
                v93 = v57;
                v60 = v57 + 16 * v58;
                *(v60 + 32) = v51;
                *(v60 + 40) = v53;

                v41 = v47;
                v44 = v80;
                goto LABEL_23;
              }
            }
          }

          ++v41;
          v45 += 11;
        }

        v98 = MEMORY[0x1E69E7CC0];
        v64 = v89;
        v65 = *(v89 + *(v88 + 96));
        v66 = v79;

        v67 = v90;

        v68 = v65;
        v69 = v95;
        sub_1ABE54DA8(v68, v66, v67, &v98);
        if (v69)
        {

          sub_1ABE57784(v64);

          goto LABEL_52;
        }

        v95 = 0;
        v70 = v64[5];
        v82 = v64[4];
        v72 = v64[6];
        v71 = v64[7];
        v80 = v64[8];
        v73 = v64[2];
        v74 = v64[3];
        v75 = v64[11];
        v76 = v98;
        v96 = objc_allocWithZone(GDSiriPerson);

        v97 = v76;
        sub_1ABE5759C();
        MEMORY[0x1AC5A9710]();
        if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1ABF24134();
        }

        sub_1ABA7D0F8();
        sub_1ABF24184();
        v82 = v105;
        sub_1ABE57784(v64);

        v3 = v95;
      }

      else
      {
        sub_1ABE57784(v36);
      }
    }

    v18 = v94;
LABEL_46:
    if (++v18 == v92)
    {
      return;
    }
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_1ABE57330(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = 0;
  v6 = *(result + 40);
  v24 = *(v6 + 16);
  v17 = v6;
  v16 = v6 + 32;
  while (v24 != v5)
  {
    if (v5 >= *(v17 + 16))
    {
      __break(1u);
      return result;
    }

    v7 = *(v16 + 8 * v5);
    result = sub_1ABE54A54(&v18);
    if (v4)
    {
      return result;
    }

    v8 = v19;
    if (v19)
    {
      v9 = v18;
      v10 = v20;
      v11 = v21;
      v12 = v22;
      v13 = v23;
      if (v21 | v23)
      {
        sub_1ABE57B8C(v18, v19);

        sub_1ABC77428(v9, v8);
        v14 = objc_allocWithZone(GDSiriPersonOrganization);
        sub_1ABE574FC(v10, v11, v12, v13);
        MEMORY[0x1AC5A9710]();
        if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1ABF24134();
        }

        result = sub_1ABF24184();
      }

      else
      {
        result = sub_1ABC77428(v18, v19);
      }
    }

    ++v5;
  }

  return result;
}

id sub_1ABE574FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_1ABF23BD4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_1ABF23BD4();

LABEL_6:
  v8 = [v4 initWithOrganizationName:v6 phoneticOrganizationName:v7];

  return v8;
}

id sub_1ABE5759C()
{
  v11 = sub_1ABF240C4();

  v0 = sub_1ABF240C4();

  v1 = sub_1ABF240C4();

  v10 = sub_1ABF240C4();

  v9 = sub_1ABF240C4();

  v8 = sub_1ABF240C4();

  v2 = sub_1ABF240C4();

  v7 = sub_1ABF240C4();

  v3 = sub_1ABF240C4();

  sub_1ABE57B48();
  v4 = sub_1ABF240C4();

  v5 = [v12 initWithContactIdentifiers:v11 givenNames:v0 phoneticGivenNames:v1 middleNames:v10 phoneticMiddleNames:v9 lastNames:v8 phoneticLastNames:v2 prefixes:v7 nickNames:v3 organizations:v4];

  return v5;
}

uint64_t sub_1ABE57784(uint64_t a1)
{
  v2 = type metadata accessor for CustomGraphPerson(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABE57B48()
{
  result = qword_1EB4DB118;
  if (!qword_1EB4DB118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4DB118);
  }

  return result;
}

uint64_t sub_1ABE57B8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1ABE57C7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1ABA7BBB0(v4);
  v6 = *(v5 + 32);
  v7 = sub_1ABA7D000();
  v8(v7);
  return a2;
}

uint64_t static ViewService.SiriRemembersView.databaseMigrator()()
{
  v0 = sub_1ABF22714();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABF22734();
  v5 = v1[13];
  (v5)(v4, *MEMORY[0x1E699FE90], v0);
  sub_1ABA81238();
  v6 = v1[1];
  v7 = sub_1ABA7D2D8();
  v6(v7);
  v8 = sub_1ABA8FB90();
  v5(v8);
  sub_1ABA7D2E4();
  v9 = sub_1ABA7D2D8();
  v6(v9);
  v10 = sub_1ABA8FB90();
  v5(v10);
  sub_1ABA7D2E4();
  v11 = sub_1ABA7D2D8();
  v6(v11);
  v12 = sub_1ABA8FB90();
  v5(v12);
  sub_1ABA7D2E4();
  v13 = sub_1ABA7D2D8();
  v6(v13);
  v14 = sub_1ABA8FB90();
  v5(v14);
  sub_1ABA7D2E4();
  v15 = sub_1ABA7D2D8();
  v6(v15);
  v16 = sub_1ABA8FB90();
  v5(v16);
  sub_1ABA7D2E4();
  v17 = sub_1ABA7D2D8();
  v6(v17);
  v18 = sub_1ABA8FB90();
  v5(v18);
  sub_1ABA7D2E4();
  v19 = sub_1ABA7D2D8();
  v6(v19);
  v20 = sub_1ABA8FB90();
  v5(v20);
  sub_1ABA7D2E4();
  v21 = sub_1ABA7D2D8();
  v6(v21);
  v22 = sub_1ABA8FB90();
  v5(v22);
  sub_1ABA81238();
  v23 = sub_1ABA7D2D8();
  v6(v23);
  v24 = sub_1ABA8FB90();
  v5(v24);
  sub_1ABA7D2E4();
  v25 = sub_1ABA7D2D8();
  v6(v25);
  v26 = sub_1ABA8FB90();
  v5(v26);
  sub_1ABA7D2E4();
  v27 = sub_1ABA7D2D8();
  v6(v27);
  v28 = sub_1ABA8FB90();
  v5(v28);
  sub_1ABA7D2E4();
  v29 = sub_1ABA7D2D8();
  v6(v29);
  v30 = sub_1ABA8FB90();
  v5(v30);
  sub_1ABA7D2E4();
  v31 = sub_1ABA7D2D8();
  return (v6)(v31);
}

uint64_t sub_1ABE5818C(uint64_t a1)
{
  v96 = a1;
  v1 = sub_1ABF22C44();
  v2 = *(v1 - 8);
  v85 = v1;
  v86 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v84 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1ABF222B4();
  v6 = *(v5 - 8);
  v91 = v5;
  v92 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v76 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v76 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v76 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v90 = &v76 - v16;
  v17 = sub_1ABF222D4();
  v95 = *(v17 - 8);
  v18 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v83 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v76 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v76 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v76 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v76 - v30;
  *&v98 = MEMORY[0x1E69E7CC0];
  v32 = sub_1ABB55AE0(&qword_1EB4D3468, MEMORY[0x1E699FE00]);
  v33 = sub_1ABAD219C(&qword_1EB4D3470, &qword_1ABF3C4E0);
  v34 = sub_1ABB55B28(&qword_1EB4D3478, &qword_1EB4D3470, &qword_1ABF3C4E0);
  v93 = v33;
  v94 = v32;
  sub_1ABF24964();
  v35 = v97;
  sub_1ABF22EB4();
  v97 = v35;
  if (v35)
  {
    return (*(v95 + 8))(v31, v17);
  }

  v81 = v22;
  v37 = v34;
  v38 = v95 + 8;
  v39 = *(v95 + 8);
  v39(v31, v17);
  *&v98 = MEMORY[0x1E69E7CC0];
  sub_1ABF24964();
  v40 = v97;
  sub_1ABF22EB4();
  v97 = v40;
  if (v40)
  {
    v41 = v28;
  }

  else
  {
    v39(v28, v17);
    v42 = MEMORY[0x1E69E7CC0];
    *&v98 = MEMORY[0x1E69E7CC0];
    sub_1ABF24964();
    v43 = v97;
    sub_1ABF22EB4();
    v97 = v43;
    if (!v43)
    {
      v78 = v37;
      v39(v25, v17);
      v79 = v39;
      v100 = 0;
      v98 = 0u;
      v99 = 0u;
      v101 = v42;
      v44 = sub_1ABB55AE0(&qword_1EB4D3440, MEMORY[0x1E699FDD0]);
      v45 = sub_1ABAD219C(&qword_1EB4D3448, &qword_1ABF3C4C8);
      v46 = sub_1ABB55B28(&qword_1EB4D3450, &qword_1EB4D3448, &qword_1ABF3C4C8);
      v47 = v90;
      v80 = v46;
      v48 = v91;
      sub_1ABF24964();
      v49 = v97;
      sub_1ABF22EA4();
      v97 = v49;
      if (v49)
      {
        (*(v92 + 8))(v47, v48);
      }

      else
      {
        v95 = v38;
        v77 = v17;
        v50 = v47;
        v51 = v92 + 8;
        v52 = *(v92 + 8);
        v52(v50, v48);
        sub_1ABA925A4(&v98, &unk_1EB4D3C40, &unk_1ABF3FCC0);
        v100 = 0;
        v53 = v44;
        v54 = v45;
        v98 = 0u;
        v99 = 0u;
        v101 = MEMORY[0x1E69E7CC0];
        v55 = v89;
        sub_1ABF24964();
        v56 = v97;
        sub_1ABF22EA4();
        v97 = v56;
        v57 = v55;
        if (v56)
        {
          goto LABEL_14;
        }

        v52(v55, v48);
        sub_1ABA925A4(&v98, &unk_1EB4D3C40, &unk_1ABF3FCC0);
        v100 = 0;
        v98 = 0u;
        v99 = 0u;
        v101 = MEMORY[0x1E69E7CC0];
        v58 = v53;
        v59 = v88;
        v60 = v58;
        sub_1ABF24964();
        v61 = v97;
        sub_1ABF22EA4();
        v97 = v61;
        v57 = v59;
        if (v61)
        {
LABEL_14:
          v52(v57, v48);
        }

        else
        {
          v52(v59, v48);
          sub_1ABA925A4(&v98, &unk_1EB4D3C40, &unk_1ABF3FCC0);
          v100 = 0;
          v90 = v52;
          v98 = 0u;
          v99 = 0u;
          v101 = MEMORY[0x1E69E7CC0];
          v62 = v87;
          sub_1ABF24964();
          v63 = v97;
          sub_1ABF22EA4();
          v97 = v63;
          if (v63)
          {
            (v90)(v62, v48);
          }

          else
          {
            v88 = v54;
            v89 = v60;
            v64 = v90;
            (v90)(v62, v48);
            sub_1ABA925A4(&v98, &unk_1EB4D3C40, &unk_1ABF3FCC0);
            *&v98 = MEMORY[0x1E69E7CC0];
            v65 = v81;
            v66 = v77;
            sub_1ABF24964();
            v67 = v97;
            sub_1ABF22EB4();
            v97 = v67;
            v68 = v65;
            if (v67)
            {
              return v79(v68, v66);
            }

            v79(v65, v66);
            v69 = v84;
            sub_1ABF22C34();
            v70 = v85;
            v71 = v97;
            sub_1ABF22E94();
            v97 = v71;
            if (v71)
            {
              return (*(v86 + 8))(v69, v70);
            }

            v92 = v51;
            (*(v86 + 8))(v69, v70);
            v72 = MEMORY[0x1E69E7CC0];
            *&v98 = MEMORY[0x1E69E7CC0];
            v73 = v83;
            sub_1ABF24964();
            v74 = v97;
            sub_1ABF22EB4();
            v97 = v74;
            v68 = v73;
            if (v74)
            {
              return v79(v68, v66);
            }

            v79(v73, v66);
            v100 = 0;
            v98 = 0u;
            v99 = 0u;
            v101 = v72;
            sub_1ABF24964();
            v75 = v97;
            sub_1ABF22EA4();
            v97 = v75;
            v64(v82, v91);
          }
        }
      }

      return sub_1ABA925A4(&v98, &unk_1EB4D3C40, &unk_1ABF3FCC0);
    }

    v41 = v25;
  }

  return (v39)(v41, v17);
}

uint64_t sub_1ABE58D5C()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v11 - v2;
  v4 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v11 - v6;
  sub_1ABF22D84();
  v8 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v7, 0, 1, v8);
  sub_1ABF22634();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v9 = sub_1ABF22E64();
  sub_1ABA7B9B4(v3, 1, 1, v9);
  sub_1ABF22684();

  sub_1ABA925A4(v3, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v7, 0, 1, v8);
  sub_1ABF22634();

  return sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
}

uint64_t sub_1ABE58F34()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v11 - v2;
  v4 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v11 - v6;
  sub_1ABF22D84();
  v8 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v7, 0, 1, v8);
  sub_1ABF22634();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v9 = sub_1ABF22E64();
  sub_1ABA7B9B4(v3, 1, 1, v9);
  sub_1ABF22684();

  sub_1ABA925A4(v3, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DC4();
  sub_1ABA7B9B4(v7, 0, 1, v8);
  sub_1ABF22634();

  return sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
}

uint64_t sub_1ABE59104(uint64_t a1)
{
  v25 = sub_1ABF22E04();
  v26 = *(v25 - 8);
  v2 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - v10;
  v12 = sub_1ABF22E64();
  sub_1ABA7B9B4(v11, 1, 1, v12);
  sub_1ABF22624();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  v13 = sub_1ABF22DD4();
  v23 = v13;
  sub_1ABA7B9B4(v7, 0, 1, v13);
  sub_1ABF22634();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v11, 1, 1, v12);
  sub_1ABF226A4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v7, 0, 1, v13);
  sub_1ABF22634();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v14 = v12;
  sub_1ABA7B9B4(v11, 1, 1, v12);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v15 = v24;
  sub_1ABF22DF4();
  sub_1ABF226B4();

  v22 = *(v26 + 8);
  v26 += 8;
  v16 = v25;
  v22(v15, v25);
  sub_1ABF22D84();
  v17 = v23;
  sub_1ABA7B9B4(v7, 0, 1, v23);
  v21 = a1;
  sub_1ABF22634();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v11, 1, 1, v14);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DF4();
  sub_1ABF226B4();

  v18 = v16;
  v19 = v22;
  v22(v15, v18);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v7, 0, 1, v17);
  sub_1ABF22634();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v11, 1, 1, v14);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DF4();
  sub_1ABF226B4();

  v19(v15, v25);
  sub_1ABF22DA4();
  sub_1ABA7B9B4(v7, 0, 1, v17);
  sub_1ABF22634();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v11, 1, 1, v14);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v7, 0, 1, v17);
  sub_1ABF22634();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v11, 1, 1, v14);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v7, 0, 1, v17);
  sub_1ABF22634();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v11, 1, 1, v14);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v7, 0, 1, v17);
  sub_1ABF22634();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v11, 1, 1, v14);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DC4();
  sub_1ABA7B9B4(v7, 0, 1, v17);
  sub_1ABF22634();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v11, 1, 1, v14);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D94();
  sub_1ABA7B9B4(v7, 0, 1, v17);
  sub_1ABF22634();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v11, 1, 1, v14);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v7, 0, 1, v17);
  sub_1ABF22634();

  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v7, 0, 1, v17);
  sub_1ABF22634();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v11, 1, 1, v14);
  sub_1ABF226C4();

  return sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABE59A7C()
{
  v0 = sub_1ABF22E04();
  v17 = *(v0 - 8);
  v18 = v0;
  v1 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v16 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_1ABF22E64();
  sub_1ABA7B9B4(v10, 1, 1, v11);
  sub_1ABF22624();

  sub_1ABA925A4(v10, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  v12 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v6, 0, 1, v12);
  sub_1ABF22634();
  sub_1ABA925A4(v6, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v10, 1, 1, v11);
  sub_1ABF226C4();

  sub_1ABA925A4(v10, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v6, 0, 1, v12);
  sub_1ABF22634();
  sub_1ABA925A4(v6, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v10, 1, 1, v11);
  sub_1ABF226C4();

  sub_1ABA925A4(v10, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v13 = v16;
  sub_1ABF22DF4();
  sub_1ABF226B4();

  (*(v17 + 8))(v13, v18);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v6, 0, 1, v12);
  sub_1ABF22634();
  sub_1ABA925A4(v6, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v10, 1, 1, v11);
  sub_1ABF226C4();

  sub_1ABA925A4(v10, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v6, 0, 1, v12);
  sub_1ABF22634();
  sub_1ABA925A4(v6, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v10, 1, 1, v11);
  sub_1ABF226C4();

  sub_1ABA925A4(v10, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DC4();
  sub_1ABA7B9B4(v6, 0, 1, v12);
  sub_1ABF22634();
  sub_1ABA925A4(v6, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v10, 1, 1, v11);
  sub_1ABF226C4();

  sub_1ABA925A4(v10, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DC4();
  sub_1ABA7B9B4(v6, 0, 1, v12);
  sub_1ABF22634();
  sub_1ABA925A4(v6, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v10, 1, 1, v11);
  sub_1ABF226C4();

  sub_1ABA925A4(v10, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABA7B9B4(v10, 1, 1, v11);
  sub_1ABF22644();
  return sub_1ABA925A4(v10, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABE5A018(uint64_t *a1)
{
  v1 = *a1;
  sub_1ABF22884();
  sub_1ABF22894();
}

uint64_t sub_1ABE5A07C(uint64_t a1)
{
  v31 = a1;
  v1 = sub_1ABF22E04();
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v32 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1ABAD219C(&qword_1EB4D3480, &qword_1ABF3C4E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v26 - v13;
  v15 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v26 - v17;
  sub_1ABF22DB4();
  v30 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v18, 0, 1, v30);
  sub_1ABF22634();
  sub_1ABA925A4(v18, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v35 = sub_1ABF22E64();
  sub_1ABA7B9B4(v14, 1, 1, v35);
  sub_1ABF226C4();

  sub_1ABA925A4(v14, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v28 = *MEMORY[0x1E69A00B8];
  v19 = v28;
  v20 = sub_1ABF22E44();
  v21 = *(v20 - 8);
  v27 = *(v21 + 104);
  v29 = v21 + 104;
  v27(v10, v19, v20);
  sub_1ABA7B9B4(v10, 0, 1, v20);
  sub_1ABA7B9B4(v7, 1, 1, v20);
  sub_1ABF22694();

  sub_1ABA925A4(v7, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABA925A4(v10, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABF22DB4();
  v22 = v30;
  sub_1ABA7B9B4(v18, 0, 1, v30);
  sub_1ABF22634();
  sub_1ABA925A4(v18, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v14, 1, 1, v35);
  sub_1ABF226C4();

  sub_1ABA925A4(v14, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v27(v10, v28, v20);
  sub_1ABA7B9B4(v10, 0, 1, v20);
  sub_1ABA7B9B4(v7, 1, 1, v20);
  sub_1ABF22694();

  sub_1ABA925A4(v7, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABA925A4(v10, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v18, 0, 1, v22);
  sub_1ABF22634();
  sub_1ABA925A4(v18, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v23 = v35;
  sub_1ABA7B9B4(v14, 1, 1, v35);
  sub_1ABF226C4();

  sub_1ABA925A4(v14, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v24 = v32;
  sub_1ABF22DF4();
  sub_1ABF226B4();

  (*(v33 + 8))(v24, v34);
  sub_1ABA7B9B4(v14, 1, 1, v23);
  sub_1ABF22614();
  return sub_1ABA925A4(v14, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABE5A684(uint64_t a1)
{
  v3 = sub_1ABF22854();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v23 = a1;
  result = sub_1ABF22E84();
  if (!v1)
  {
    v22 = v7;
    sub_1ABF22844();
    sub_1ABF22EC4();
    v18 = v16;
    v19 = *(v4 + 8);
    v19(v18, v3);
    sub_1ABF22844();
    sub_1ABF22EC4();
    v19(v13, v3);
    sub_1ABF22844();
    sub_1ABF22EC4();
    v19(v10, v3);
    v20 = v22;
    sub_1ABF22844();
    sub_1ABF22EC4();
    v19(v20, v3);
    return sub_1ABF22E84();
  }

  return result;
}

uint64_t sub_1ABE5A9C0()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v13[-1] - v2;
  v4 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v13[-1] - v7;
  MEMORY[0x1AC5A7C60](0x727453726F6E6F64, 0xEB000000006D6165, 0x727453726F6E6F64, 0xEF747865546D6165, v6);
  sub_1ABF22DB4();
  v9 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v8, 0, 1, v9);
  sub_1ABF225E4();
  sub_1ABA925A4(v8, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v13[3] = MEMORY[0x1E69E6530];
  v13[4] = MEMORY[0x1E69A0180];
  v13[0] = 0;
  sub_1ABF226D4();

  sub_1ABA84B54(v13);
  v10 = sub_1ABF22E64();
  sub_1ABA7B9B4(v3, 1, 1, v10);
  sub_1ABF226C4();

  return sub_1ABA925A4(v3, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABE5ABF0()
{
  v0 = sub_1ABF22854();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABF22844();
  sub_1ABF22EC4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1ABE5ACEC()
{
  v1 = sub_1ABF22854();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ABF22E84();
  if (!v0)
  {
    sub_1ABF22844();
    sub_1ABF22EC4();
    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t sub_1ABE5AE2C()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v14[-1] - v2;
  v4 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14[-1] - v6;
  sub_1ABF22D94();
  v8 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v7, 0, 1, v8);
  sub_1ABF225E4();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v9 = MEMORY[0x1E69E6530];
  v10 = MEMORY[0x1E69A0180];
  v15 = MEMORY[0x1E69E6530];
  v16 = MEMORY[0x1E69A0180];
  v14[0] = 0;
  sub_1ABF226D4();

  sub_1ABA84B54(v14);
  v11 = sub_1ABF22E64();
  sub_1ABA7B9B4(v3, 1, 1, v11);
  sub_1ABF226C4();

  sub_1ABA925A4(v3, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v7, 0, 1, v8);
  sub_1ABF225E4();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v15 = v9;
  v16 = v10;
  v14[0] = 15;
  sub_1ABF226D4();

  sub_1ABA84B54(v14);
  sub_1ABA7B9B4(v3, 1, 1, v11);
  sub_1ABF226C4();

  return sub_1ABA925A4(v3, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABE5B0C4()
{
  v0 = sub_1ABF222B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v9 = MEMORY[0x1E69E7CC0];
  sub_1ABB55AE0(&qword_1EB4D3440, MEMORY[0x1E699FDD0]);
  sub_1ABAD219C(&qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABB55B28(&qword_1EB4D3450, &qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABF24964();
  sub_1ABF22EA4();
  (*(v1 + 8))(v4, v0);
  return sub_1ABA925A4(v7, &unk_1EB4D3C40, &unk_1ABF3FCC0);
}

uint64_t sub_1ABE5B2B4()
{
  v1 = sub_1ABF22854();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ABF22E84();
  if (!v0)
  {
    v7 = [objc_opt_self() platform];
    v8 = BMDevicePlatform.deviceMetadataDevicePlatform.getter(v7);
    sub_1ABAD219C(&qword_1EB4D5820, &unk_1ABF39E30);
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E72F0];
    *(v9 + 16) = xmmword_1ABF34740;
    v11 = MEMORY[0x1E69A01B8];
    *(v9 + 56) = v10;
    *(v9 + 64) = v11;
    *(v9 + 32) = v8;
    sub_1ABF22834();
    sub_1ABF22EC4();
    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t sub_1ABE5B460()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12[-1] - v2;
  v4 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12[-1] - v6;
  sub_1ABF22DA4();
  v8 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v7, 0, 1, v8);
  sub_1ABF225E4();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v9 = sub_1ABF22E64();
  sub_1ABA7B9B4(v3, 1, 1, v9);
  sub_1ABF226C4();

  sub_1ABA925A4(v3, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v13 = MEMORY[0x1E69E6370];
  v14 = MEMORY[0x1E69A0150];
  LOBYTE(v12[0]) = 1;
  sub_1ABF226D4();

  sub_1ABA84B54(v12);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v7, 0, 1, v8);
  sub_1ABF225E4();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v3, 1, 1, v9);
  sub_1ABF226C4();

  sub_1ABA925A4(v3, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v13 = MEMORY[0x1E69E6530];
  v14 = MEMORY[0x1E69A0180];
  v12[0] = 0;
  sub_1ABF226D4();

  return sub_1ABA84B54(v12);
}

uint64_t sub_1ABE5B758()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12[-1] - v2;
  v4 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12[-1] - v6;
  sub_1ABF22DB4();
  v8 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v7, 0, 1, v8);
  sub_1ABF225E4();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v9 = sub_1ABF22E64();
  sub_1ABA7B9B4(v3, 1, 1, v9);
  sub_1ABF226C4();

  sub_1ABA925A4(v3, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v12[3] = MEMORY[0x1E69E6530];
  v12[4] = MEMORY[0x1E69A0180];
  v12[0] = 0;
  sub_1ABF226D4();

  return sub_1ABA84B54(v12);
}

uint64_t sub_1ABE5B918()
{
  v32 = sub_1ABF22854();
  v0 = *(v32 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  sub_1ABF22844();
  v19 = v31;
  sub_1ABF22EC4();
  if (v19)
  {
    return (*(v0 + 8))(v18, v32);
  }

  v30 = v9;
  v31 = v15;
  v28 = v3;
  v29 = v6;
  v21 = *(v0 + 8);
  v22 = v32;
  v21(v18, v32);
  sub_1ABF22E84();
  sub_1ABF22E84();
  v23 = v31;
  sub_1ABF22844();
  sub_1ABF22EC4();
  v21(v23, v22);
  sub_1ABF22844();
  sub_1ABF22EC4();
  v21(v12, v22);
  v24 = v30;
  sub_1ABF22844();
  sub_1ABF22EC4();
  v21(v24, v22);
  v25 = v21;
  v26 = v29;
  sub_1ABF22844();
  sub_1ABF22EC4();
  v25(v26, v22);
  v27 = v28;
  sub_1ABF22844();
  sub_1ABF22EC4();
  return (v25)(v27, v22);
}

uint64_t sub_1ABE5BD74()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12[-1] - v2;
  v4 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12[-1] - v6;
  sub_1ABF22D84();
  v8 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v7, 0, 1, v8);
  sub_1ABF225E4();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v12[3] = MEMORY[0x1E69E6158];
  v12[4] = MEMORY[0x1E69A0138];
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1ABF226D4();

  sub_1ABA84B54(v12);
  v9 = sub_1ABF22E64();
  sub_1ABA7B9B4(v3, 1, 1, v9);
  sub_1ABF226C4();

  return sub_1ABA925A4(v3, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABE5BF38(uint64_t a1)
{
  v26 = a1;
  v1 = sub_1ABF222D4();
  v23 = *(v1 - 8);
  v24 = v1;
  v2 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v22 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1ABF222B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v30 = MEMORY[0x1E69E7CC0];
  v12 = sub_1ABB55AE0(&qword_1EB4D3440, MEMORY[0x1E699FDD0]);
  v13 = sub_1ABAD219C(&qword_1EB4D3448, &qword_1ABF3C4C8);
  v14 = sub_1ABB55B28(&qword_1EB4D3450, &qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABF24964();
  v15 = v25;
  sub_1ABF22EA4();
  if (v15)
  {
    (*(v5 + 8))(v11, v4);
  }

  else
  {
    v21[0] = v14;
    v21[1] = v13;
    v21[2] = v12;
    v25 = v8;
    v17 = *(v5 + 8);
    v17(v11, v4);
    sub_1ABA925A4(&v27, &unk_1EB4D3C40, &unk_1ABF3FCC0);
    *&v27 = MEMORY[0x1E69E7CC0];
    sub_1ABB55AE0(&qword_1EB4D3468, MEMORY[0x1E699FE00]);
    sub_1ABAD219C(&qword_1EB4D3470, &qword_1ABF3C4E0);
    sub_1ABB55B28(&qword_1EB4D3478, &qword_1EB4D3470, &qword_1ABF3C4E0);
    v18 = v22;
    v19 = v24;
    sub_1ABF24964();
    sub_1ABF22EB4();
    (*(v23 + 8))(v18, v19);
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v30 = MEMORY[0x1E69E7CC0];
    v20 = v25;
    sub_1ABF24964();
    sub_1ABF22EA4();
    v17(v20, v4);
  }

  return sub_1ABA925A4(&v27, &unk_1EB4D3C40, &unk_1ABF3FCC0);
}

uint64_t sub_1ABE5C3B4()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1ABF22D84();
  v8 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v7, 0, 1, v8);
  sub_1ABF22634();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v9 = *MEMORY[0x1E69A00D0];
  v10 = sub_1ABF22E64();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_1ABA7B9B4(v3, 0, 1, v10);
  sub_1ABF22684();

  sub_1ABA925A4(v3, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D94();
  sub_1ABA7B9B4(v7, 0, 1, v8);
  sub_1ABF22634();

  return sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
}

uint64_t sub_1ABE5C5EC()
{
  v0 = sub_1ABF222B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v9 = MEMORY[0x1E69E7CC0];
  sub_1ABB55AE0(&qword_1EB4D3440, MEMORY[0x1E699FDD0]);
  sub_1ABAD219C(&qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABB55B28(&qword_1EB4D3450, &qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABF24964();
  sub_1ABF22EA4();
  (*(v1 + 8))(v4, v0);
  return sub_1ABA925A4(v7, &unk_1EB4D3C40, &unk_1ABF3FCC0);
}

uint64_t sub_1ABE5C7DC()
{
  v0 = sub_1ABF222B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v9 = MEMORY[0x1E69E7CC0];
  sub_1ABB55AE0(&qword_1EB4D3440, MEMORY[0x1E699FDD0]);
  sub_1ABAD219C(&qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABB55B28(&qword_1EB4D3450, &qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABF24964();
  sub_1ABF22EA4();
  (*(v1 + 8))(v4, v0);
  return sub_1ABA925A4(v7, &unk_1EB4D3C40, &unk_1ABF3FCC0);
}

uint64_t sub_1ABE5C9CC()
{
  v1 = sub_1ABF22854();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v14 - v10;
  sub_1ABF22844();
  sub_1ABF22EC4();
  if (v0)
  {
    return (*(v2 + 8))(v11, v1);
  }

  v13 = *(v2 + 8);
  v13(v11, v1);
  sub_1ABF22844();
  sub_1ABF22EC4();
  v13(v8, v1);
  sub_1ABF22844();
  sub_1ABF22EC4();
  return (v13)(v5, v1);
}

uint64_t sub_1ABE5CBC4()
{
  v1 = sub_1ABF22854();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  sub_1ABF22844();
  sub_1ABF22EC4();
  if (v0)
  {
    return (*(v2 + 8))(v14, v1);
  }

  v18 = *(v2 + 8);
  v18(v14, v1);
  sub_1ABF22844();
  sub_1ABF22EC4();
  v16 = v18;
  v18(v11, v1);
  sub_1ABF22844();
  sub_1ABF22EC4();
  v16(v8, v1);
  sub_1ABF22844();
  sub_1ABF22EC4();
  return (v16)(v5, v1);
}

uint64_t sub_1ABE5CE50()
{
  v0 = sub_1ABF22E64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  v8 = sub_1ABF22AB4();
  sub_1ABB9009C(v8, qword_1EB4DB138);
  sub_1ABA7AA24(v8, qword_1EB4DB138);
  v9 = *MEMORY[0x1E69A00D0];
  v10 = *(v1 + 104);
  v10(v7, v9, v0);
  v10(v4, v9, v0);
  return sub_1ABF22AA4();
}

uint64_t static ViewService.SiriRemembersView.ProcessedInteraction.persistenceConflictPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB4D0110 != -1)
  {
    swift_once();
  }

  v2 = sub_1ABF22AB4();
  v3 = sub_1ABA7AA24(v2, qword_1EB4DB138);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ViewService.SiriRemembersView.ProcessedInteraction.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ViewService.SiriRemembersView.ProcessedInteraction.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction() + 20);
  v4 = sub_1ABF21EB4();
  v5 = sub_1ABA7BBB0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction()
{
  result = qword_1ED86B760;
  if (!qword_1ED86B760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ViewService.SiriRemembersView.ProcessedInteraction.init(id:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction() + 20);
  v7 = sub_1ABF21EB4();
  sub_1ABA7BBB0(v7);
  v9 = *(v8 + 32);

  return v9(&a4[v6], a3);
}

uint64_t sub_1ABE5D1B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABE5D270(char a1)
{
  if (a1)
  {
    return 1702125924;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1ABE5D29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE5D1B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE5D2C4(uint64_t a1)
{
  v2 = sub_1ABE5D4CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE5D300(uint64_t a1)
{
  v2 = sub_1ABE5D4CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ViewService.SiriRemembersView.ProcessedInteraction.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = sub_1ABAD219C(&qword_1EB4DB150, &qword_1ABF6CC10);
  sub_1ABA7BB64(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA83634();
  v12 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE5D4CC();
  sub_1ABF252E4();
  v13 = *v4;
  v14 = v4[1];
  sub_1ABF24F34();
  if (!v2)
  {
    v15 = *(type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction() + 20);
    sub_1ABF21EB4();
    sub_1ABA7C7C8();
    sub_1ABE5FC24(v16, v17);
    sub_1ABF24F84();
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t sub_1ABE5D4CC()
{
  result = qword_1EB4CF6D0;
  if (!qword_1EB4CF6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF6D0);
  }

  return result;
}

uint64_t ViewService.SiriRemembersView.ProcessedInteraction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = sub_1ABF21EB4();
  v4 = sub_1ABA7BB64(v30);
  v28 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v10 = v9 - v8;
  v31 = sub_1ABAD219C(&qword_1EB4DB158, &qword_1ABF6CC18);
  sub_1ABA7BB64(v31);
  v12 = *(v11 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  v14 = type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction();
  v15 = sub_1ABA7BBB0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BC58();
  v20 = (v19 - v18);
  v21 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE5D4CC();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  *v20 = sub_1ABF24E14();
  v20[1] = v22;
  sub_1ABA7C7C8();
  sub_1ABE5FC24(v23, v24);
  sub_1ABF24E64();
  v25 = sub_1ABA939EC();
  v26(v25);
  (*(v28 + 32))(v20 + *(v14 + 20), v10, v30);
  sub_1ABE5D7E8(v20, a2);
  sub_1ABA84B54(a1);
  return sub_1ABE5D84C(v20);
}

uint64_t sub_1ABE5D7E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE5D84C(uint64_t a1)
{
  v2 = type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABE5D8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE5FC24(&unk_1EB4D0100, type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABE5D970()
{
  sub_1ABE5FC24(&qword_1EB4DB1A8, type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction);

  return sub_1ABF22804();
}

uint64_t sub_1ABE5DAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE5FC24(&qword_1EB4CF6C8, type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1ABE5DB98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABE5DBF4(v4);
}

uint64_t sub_1ABE5DBC4()
{
  sub_1ABA7F2A0();
  v1 = *(v0 + 16);
}

uint64_t sub_1ABE5DBF4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1ABE5DC68(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t ViewService.SiriRemembersView.ProcessingStateCache.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  *(result + 24) = 0;
  return result;
}

uint64_t ViewService.SiriRemembersView.ProcessingStateCache.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  *(v0 + 24) = 0;
  return result;
}

uint64_t ViewService.SiriRemembersView.ProcessingStateCache.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ViewService.SiriRemembersView.ProcessingStateCache.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t BMSiriRemembersInteraction.ProcessingState.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t BMSiriRemembersInteraction.processingState(db:)@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1;
  v5 = sub_1ABAD219C(&qword_1EB4DB160, &qword_1ABF6CC20);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26[-1] - v11;
  v13 = *(*(sub_1ABAD219C(&qword_1EB4DB168, &qword_1ABF6CC28) - 8) + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA83634();
  if (qword_1ED870750 != -1)
  {
    sub_1ABA7D72C();
  }

  v15 = sub_1ABF237F4();
  sub_1ABA7AA24(v15, qword_1ED870758);
  v16 = sub_1ABF237D4();
  v17 = sub_1ABF24654();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1ABA78000, v16, v17, "ProcessingState: checking database", v18, 2u);
    MEMORY[0x1AC5AB8B0](v18, -1, -1);
  }

  result = sub_1ABBAE7C4(v3, &selRef_identifier);
  if (v20)
  {
    v21 = result;
    v22 = v20;
    v23 = type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction();
    v27[3] = sub_1ABF22D14();
    v27[4] = MEMORY[0x1E69A0050];
    sub_1ABA93DC0(v27);
    sub_1ABF22D24();
    v26[3] = MEMORY[0x1E69E6158];
    v26[4] = MEMORY[0x1E69A0130];
    v26[0] = v21;
    v26[1] = v22;
    v28[3] = sub_1ABF22424();
    v28[4] = MEMORY[0x1E699FE60];
    sub_1ABA93DC0(v28);
    sub_1ABF22AD4();
    sub_1ABAB480C(v26, &unk_1EB4D3C40, &unk_1ABF3FCC0);
    sub_1ABA84B54(v27);
    sub_1ABE5FC24(qword_1ED86B228, type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction);
    sub_1ABF221C4();
    sub_1ABA84B54(v28);
    sub_1ABE5F2E0();
    sub_1ABE5FC24(&qword_1ED86B220, type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction);
    sub_1ABF22244();
    (*(v7 + 8))(v12, v5);
    v24 = 2 * (sub_1ABA7E1E0(v2, 1, v23) != 1);
    result = sub_1ABAB480C(v2, &qword_1EB4DB168, &qword_1ABF6CC28);
  }

  else
  {
    v24 = 0;
  }

  *a1 = v24;
  return result;
}

void BMSiriRemembersInteraction.processingState(db:cache:)(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v6 = *(*(sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240) - 8) + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA83634();
  v8 = sub_1ABBAE7C4(v2, &selRef_identifier);
  if (!v9)
  {
    goto LABEL_3;
  }

  v10 = v8;
  v11 = v9;
  sub_1ABA7F2A0();
  v12 = *(a1 + 16);

  sub_1ABAD5B20(v10, v11, v12);

  v13 = sub_1ABF21EB4();
  LODWORD(v11) = sub_1ABA7E1E0(v3, 1, v13);
  sub_1ABAB480C(v3, &qword_1EB4D9BF0, &qword_1ABF34240);
  if (v11 != 1)
  {
    if (qword_1ED870750 != -1)
    {
      sub_1ABA7D72C();
    }

    v20 = sub_1ABF237F4();
    sub_1ABA7AA24(v20, qword_1ED870758);
    v21 = sub_1ABF237D4();
    v22 = sub_1ABF24654();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      sub_1ABA9490C(&dword_1ABA78000, v24, v25, "ProcessingState: ProcessingStateCache: hit");
      MEMORY[0x1AC5AB8B0](v23, -1, -1);
    }

    *a2 = 2;
  }

  else
  {
LABEL_3:
    sub_1ABA7F2A0();
    if (*(a1 + 24) == 1)
    {
      if (qword_1ED870750 != -1)
      {
        sub_1ABA7D72C();
      }

      v14 = sub_1ABF237F4();
      sub_1ABA7AA24(v14, qword_1ED870758);
      v15 = sub_1ABF237D4();
      v16 = sub_1ABF24654();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        sub_1ABA9490C(&dword_1ABA78000, v18, v19, "ProcessingState: ProcessingStateCache: full coverage assuming unprocessed");
        MEMORY[0x1AC5AB8B0](v17, -1, -1);
      }

      *a2 = 0;
    }

    else
    {
      BMSiriRemembersInteraction.processingState(db:)(a2);
    }
  }
}

void ViewService.SiriRemembersView.Interaction.init(interaction:biomeEventTimestamp:syncedStreamName:isLocal:devicePlatform:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v76 = a4;
  v75 = a2;
  v12 = sub_1ABF21EB4();
  v13 = sub_1ABA7BB64(v12);
  v79 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58 - v20;
  v22 = sub_1ABBAE7C4(a1, &selRef_identifier);
  if (!v23)
  {

    sub_1ABA81258();
    v35 = v34 + 6;
LABEL_15:
    v40 = v33 | 0x8000000000000000;
    sub_1ABE5F344();
    swift_allocError();
    *v41 = v35;
    *(v41 + 8) = v40;
    *(v41 + 16) = 1;
    swift_willThrow();

    return;
  }

  v24 = v23;
  v73 = v22;
  v25 = sub_1ABBAE7C4(a1, &selRef_domain);
  if (!v26)
  {

    sub_1ABA81258();
    v35 = v36 + 2;
    goto LABEL_15;
  }

  v71 = v25;
  v74 = v26;
  v27 = sub_1ABBAE7C4(a1, &selRef_type);
  if (!v28)
  {
    v35 = 0xD00000000000001FLL;

    v33 = "nteraction.domain";
    goto LABEL_15;
  }

  v69 = v27;
  v72 = v28;
  v29 = sub_1ABBAE7C4(a1, &selRef_appBundleId);
  if (!v30)
  {

    sub_1ABA81258();
    v35 = v37 + 7;
    goto LABEL_15;
  }

  v68 = v29;
  v70 = v30;
  if (([a1 hasIsDonatedBySiri] & 1) == 0)
  {

    sub_1ABA81258();
    v35 = v38 + 11;
    goto LABEL_15;
  }

  v67 = a5;
  v31 = [a1 startDate];
  if (!v31)
  {

    sub_1ABA81258();
    v35 = v39 + 5;
    goto LABEL_15;
  }

  v32 = v31;
  sub_1ABF21E64();

  (*(v79 + 32))(v21, v18, v12);
  if ([a1 hasContentHash])
  {
    v66 = [a1 contentHash];
  }

  else
  {
    v66 = 0;
  }

  v65 = [a1 isDonatedBySiri];
  v64 = [a1 interactionSource];
  v63 = [a1 direction];
  v62 = [a1 status];
  v61 = type metadata accessor for ViewService.SiriRemembersView.Interaction(0);
  v42 = v79;
  (*(v79 + 16))(a6 + *(v61 + 52), v21, v12);
  [a1 durationInSeconds];
  v44 = v43;
  v45 = sub_1ABBAE7C4(a1, &selRef_fields);
  v58 = v46;
  v59 = v45;
  v60 = [a1 userDonatorType];
  sub_1ABA81CB4();
  MEMORY[0x1AC5A9410](v75, a3);
  MEMORY[0x1AC5A9410](94, 0xE100000000000000);

  v47 = v77;
  v48 = v78;
  (*(v42 + 8))(v21, v12);
  *a6 = 0;
  *(a6 + 8) = 1;
  *(a6 + 16) = v73;
  *(a6 + 24) = v24;
  v49 = v74;
  *(a6 + 32) = v71;
  *(a6 + 40) = v49;
  v50 = v72;
  *(a6 + 48) = v69;
  *(a6 + 56) = v50;
  v51 = v70;
  *(a6 + 64) = v68;
  *(a6 + 72) = v51;
  v52 = v64;
  *(a6 + 80) = v65;
  LODWORD(v51) = v62;
  v53 = v63;
  *(a6 + 84) = v52;
  *(a6 + 88) = v53;
  *(a6 + 92) = v51;
  v54 = v61;
  *(a6 + *(v61 + 56)) = v44;
  v55 = (a6 + v54[15]);
  v56 = v58;
  *v55 = v59;
  v55[1] = v56;
  *(a6 + v54[16]) = v66;
  *(a6 + v54[17]) = a7;
  *(a6 + v54[18]) = v76 & 1;
  *(a6 + v54[19]) = v67;
  *(a6 + v54[20]) = v60;
  v57 = (a6 + v54[21]);
  *v57 = v47;
  v57[1] = v48;
}

uint64_t ViewService.SiriRemembersView.Interaction.updatedInteraction(from:biomeEventTimestamp:syncedStreamName:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = sub_1ABF21EB4();
  v10 = sub_1ABA7BB64(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  v17 = v16 - v15;
  v60 = sub_1ABBAE7C4(a1, &selRef_fields);
  v61 = v18;
  v19 = type metadata accessor for ViewService.SiriRemembersView.Interaction(0);
  v20 = *(v5 + v19[16]);
  if ([a1 hasContentHash])
  {
    v20 = [a1 contentHash];
  }

  v54 = *(v5 + 8);
  v53 = v5[2];
  v55 = *v5;
  v56 = v5[3];

  v21 = sub_1ABBAE7C4(a1, &selRef_domain);
  if (v22)
  {
    v50 = v22;
    v52 = v21;
  }

  else
  {
    v52 = v5[4];
    v50 = v5[5];
  }

  v23 = sub_1ABBAE7C4(a1, &selRef_type);
  if (v24)
  {
    v47 = v24;
    v48 = v23;
  }

  else
  {
    v48 = v5[6];
    v47 = v5[7];
  }

  v25 = sub_1ABBAE7C4(a1, &selRef_appBundleId);
  if (v26)
  {
    v45 = v26;
    v46 = v25;
  }

  else
  {
    v46 = v5[8];
    v45 = v5[9];
  }

  v57 = v20;
  if ([a1 hasIsDonatedBySiri])
  {
    v44 = [a1 isDonatedBySiri];
  }

  else
  {
    v44 = *(v5 + 80);
  }

  v43 = *(v5 + 21);
  if ([a1 direction])
  {
    v42 = [a1 direction];
  }

  else
  {
    v42 = *(v5 + 22);
  }

  if ([a1 status])
  {
    v41 = [a1 status];
  }

  else
  {
    v41 = *(v5 + 23);
  }

  v27 = [a1 startDate];
  if (v27)
  {
    v28 = v27;
    sub_1ABF21E64();
  }

  else
  {
    (*(v12 + 16))(v17, v5 + v19[13], v9);
  }

  if ([a1 hasDurationInSeconds])
  {
    [a1 durationInSeconds];
    v30 = v29;
  }

  else
  {
    v30 = *(v5 + v19[14]);
  }

  v58 = v12;
  v59 = v9;
  if (!v61)
  {
    v31 = (v5 + v19[15]);
    v60 = *v31;
    v61 = v31[1];
  }

  v32 = *(v5 + v19[18]);
  v40 = *(v5 + v19[19]);
  v33 = [a1 userDonatorType];
  v34 = (v5 + v19[21]);
  v35 = *v34;
  v36 = v34[1];
  sub_1ABA81CB4();
  MEMORY[0x1AC5A9410](a2, a3);
  MEMORY[0x1AC5A9410](94, 0xE100000000000000);
  sub_1ABAE28EC();
  if (sub_1ABF248D4())
  {
  }

  else
  {

    MEMORY[0x1AC5A9410]();
  }

  *a4 = v55;
  *(a4 + 8) = v54;
  *(a4 + 16) = v53;
  *(a4 + 24) = v56;
  *(a4 + 32) = v52;
  *(a4 + 40) = v50;
  *(a4 + 48) = v48;
  *(a4 + 56) = v47;
  *(a4 + 64) = v46;
  *(a4 + 72) = v45;
  *(a4 + 80) = v44;
  *(a4 + 84) = v43;
  *(a4 + 88) = v42;
  *(a4 + 92) = v41;
  result = (*(v58 + 32))(a4 + v19[13], v17, v59);
  *(a4 + v19[14]) = v30;
  v38 = (a4 + v19[15]);
  *v38 = v60;
  v38[1] = v61;
  *(a4 + v19[16]) = v57;
  *(a4 + v19[17]) = a5;
  *(a4 + v19[18]) = v32;
  *(a4 + v19[19]) = v40;
  *(a4 + v19[20]) = v33;
  v39 = (a4 + v19[21]);
  *v39 = v35;
  v39[1] = v36;
  return result;
}