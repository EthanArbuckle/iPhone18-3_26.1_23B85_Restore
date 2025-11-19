id sub_25C804D4C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25C82E46C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_25C804ED0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_25C82E46C();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v6;
    v33 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v26, v37);
        v29 = *(*(v9 + 56) + 8 * v24);
        v30 = v38;
        (*(v25 + 32))(*(v38 + 48) + v26, v28, v27);
        *(*(v30 + 56) + 8 * v24) = v29;

        v19 = v40;
      }

      while (v40);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v23 = *(v33 + v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

uint64_t sub_25C80514C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25C82E4CC();
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
        sub_25C82DFBC();
        v6 = sub_25C82E1FC();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25C82DFBC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25C8056FC(v8, v9, a1, v4);
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
    return sub_25C80537C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25C805278(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25C82E4CC();
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
        type metadata accessor for ODCurareDataBoundary();
        v6 = sub_25C82E1FC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_25C8060EC(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_25C80560C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25C80537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25C82DFBC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v45 = &v31 - v13;
  result = MEMORY[0x28223BE20](v12);
  v44 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v42 = *(v15 + 16);
    v43 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v20 = v17 + v18 * (a3 - 1);
    v38 = -v18;
    v39 = (v15 + 32);
    v21 = a1 - a3;
    v40 = v17;
    v32 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v36 = v20;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v22, v8);
      v25 = v45;
      v24(v45, v20, v8);
      sub_25C807804();
      v26 = sub_25C82E05C();
      v27 = *v19;
      (*v19)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v20 = v36 + v32;
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v20, v29, v8);
      v20 += v38;
      v22 += v38;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C80560C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v15 = v6;
    while (1)
    {
      v10 = *v6;

      v11 = sub_25C82DF5C();

      if ((v11 & 1) == 0)
      {
LABEL_4:
        ++v4;
        v6 = v15 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v12 = *v6;
      *v6 = v6[1];
      v6[1] = v12;
      --v6;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C8056FC(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = sub_25C82DFBC();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v126 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v134 = &v119 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v139 = &v119 - v17;
  result = MEMORY[0x28223BE20](v16);
  v140 = &v119 - v19;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_134;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_25C807028(a4);
    }

    v142 = result;
    v114 = *(result + 16);
    if (v114 >= 2)
    {
      while (*a3)
      {
        a4 = v114 - 1;
        v115 = *(result + 16 * v114);
        v116 = result;
        v117 = *(result + 16 * (v114 - 1) + 40);
        sub_25C806738(*a3 + v10[9] * v115, *a3 + v10[9] * *(result + 16 * (v114 - 1) + 32), *a3 + v10[9] * v117, v5);
        if (v6)
        {
        }

        if (v117 < v115)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_25C807028(v116);
        }

        if (v114 - 2 >= *(v116 + 2))
        {
          goto LABEL_122;
        }

        v118 = &v116[16 * v114];
        *v118 = v115;
        *(v118 + 1) = v117;
        v142 = v116;
        sub_25C806F9C(a4);
        result = v142;
        v114 = *(v142 + 16);
        if (v114 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v21 = 0;
  v137 = (v10 + 1);
  v138 = v10 + 2;
  v136 = (v10 + 4);
  v22 = MEMORY[0x277D84F90];
  v124 = a3;
  v121 = a4;
  v141 = v9;
  v120 = v10;
  while (1)
  {
    v23 = v21;
    v127 = v22;
    if (v21 + 1 >= v20)
    {
      v37 = v21 + 1;
    }

    else
    {
      v132 = v20;
      v24 = v9;
      v25 = *a3;
      v26 = v10;
      v27 = v10[9];
      v5 = v25 + v27 * (v21 + 1);
      v128 = v25;
      v28 = v26[2];
      v28(v140, v5, v24);
      v29 = v25 + v27 * v23;
      v30 = v26;
      v123 = v23;
      v31 = v139;
      v131 = v28;
      v28(v139, v29, v24);
      v32 = sub_25C807804();
      v33 = v140;
      v130 = v32;
      LODWORD(v133) = sub_25C82E05C();
      v34 = v30[1];
      v34(v31, v24);
      v129 = v34;
      result = (v34)(v33, v24);
      v35 = v123 + 2;
      v135 = v27;
      v36 = v128 + v27 * (v123 + 2);
      while (1)
      {
        v37 = v132;
        if (v132 == v35)
        {
          break;
        }

        v39 = v140;
        v38 = v141;
        v40 = v131;
        (v131)(v140, v36, v141);
        v41 = v6;
        v42 = v139;
        v40(v139, v5, v38);
        v43 = sub_25C82E05C() & 1;
        v44 = v42;
        v6 = v41;
        v45 = v129;
        v129(v44, v38);
        result = v45(v39, v38);
        ++v35;
        v36 += v135;
        v5 += v135;
        if ((v133 & 1) != v43)
        {
          v37 = v35 - 1;
          break;
        }
      }

      v23 = v123;
      a3 = v124;
      v10 = v120;
      v22 = v127;
      a4 = v121;
      v9 = v141;
      if (v133)
      {
        if (v37 < v123)
        {
          goto LABEL_125;
        }

        if (v123 < v37)
        {
          v46 = v135 * (v37 - 1);
          v5 = v37 * v135;
          v132 = v37;
          v47 = v37;
          v48 = v123;
          v49 = v123 * v135;
          do
          {
            if (v48 != --v47)
            {
              v51 = *a3;
              if (!v51)
              {
                goto LABEL_131;
              }

              v133 = *v136;
              (v133)(v126, v51 + v49, v141, v22);
              if (v49 < v46 || v51 + v49 >= v51 + v5)
              {
                v50 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v50 = v141;
                if (v49 != v46)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(v51 + v46, v126, v50);
              a3 = v124;
              v22 = v127;
            }

            ++v48;
            v46 -= v135;
            v5 -= v135;
            v49 += v135;
          }

          while (v48 < v47);
          v10 = v120;
          a4 = v121;
          v9 = v141;
          v23 = v123;
          v37 = v132;
        }
      }
    }

    v52 = a3[1];
    if (v37 < v52)
    {
      if (__OFSUB__(v37, v23))
      {
        goto LABEL_124;
      }

      if (v37 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_126;
        }

        if ((v23 + a4) >= v52)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v23 + a4;
        }

        if (v5 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v37 != v5)
        {
          break;
        }
      }
    }

    v5 = v37;
    if (v37 < v23)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v127;
    }

    else
    {
      result = sub_25C7E6F4C(0, *(v127 + 2) + 1, 1, v127);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v53 = *(v22 + 3);
    v54 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      result = sub_25C7E6F4C((v53 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v54;
    v55 = &v22[16 * a4];
    *(v55 + 4) = v23;
    *(v55 + 5) = v5;
    v56 = *v122;
    if (!*v122)
    {
      goto LABEL_133;
    }

    v128 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v57 = *(v22 + 4);
          v58 = *(v22 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_112;
          }

          v73 = &v22[16 * v54];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_115;
          }

          v79 = &v22[16 * v5 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_119;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v5 = v54 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v22[16 * v54];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_114;
        }

        v86 = &v22[16 * v5];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_117;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v5 - 1;
        if (v5 - 1 >= v54)
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

        if (!*a3)
        {
          goto LABEL_130;
        }

        v94 = v22;
        v95 = *&v22[16 * a4 + 32];
        v96 = *&v22[16 * v5 + 40];
        sub_25C806738(*a3 + v10[9] * v95, *a3 + v10[9] * *&v22[16 * v5 + 32], *a3 + v10[9] * v96, v56);
        if (v6)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_25C807028(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_109;
        }

        v97 = &v94[16 * a4];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        v142 = v94;
        result = sub_25C806F9C(v5);
        v22 = v142;
        v54 = *(v142 + 16);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v22[16 * v54 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_110;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_111;
      }

      v68 = &v22[16 * v54];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_113;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_116;
      }

      if (v72 >= v64)
      {
        v90 = &v22[16 * v5 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_120;
        }

        if (v59 < v93)
        {
          v5 = v54 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v128;
    a4 = v121;
    v9 = v141;
    if (v128 >= v20)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v98 = *a3;
  v99 = v10[9];
  v135 = v10[2];
  v100 = v98 + v99 * (v37 - 1);
  v101 = v23;
  v102 = -v99;
  v123 = v101;
  v103 = v101 - v37;
  v133 = v98;
  v125 = v99;
  a4 = v98 + v37 * v99;
  v128 = v5;
LABEL_85:
  v131 = v100;
  v132 = v37;
  v129 = a4;
  v130 = v103;
  v104 = v100;
  while (1)
  {
    v105 = v140;
    v106 = v135;
    (v135)(v140, a4, v9, v22);
    v107 = v139;
    v106(v139, v104, v141);
    sub_25C807804();
    v108 = sub_25C82E05C();
    v109 = *v137;
    v110 = v107;
    v9 = v141;
    (*v137)(v110, v141);
    result = v109(v105, v9);
    if ((v108 & 1) == 0)
    {
LABEL_84:
      v37 = v132 + 1;
      v100 = &v131[v125];
      v103 = v130 - 1;
      a4 = v129 + v125;
      v5 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v6 = v119;
      v23 = v123;
      a3 = v124;
      v10 = v120;
      if (v128 < v123)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v111 = *v136;
    v112 = v134;
    (*v136)(v134, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v111(v104, v112, v9);
    v104 += v102;
    a4 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
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

uint64_t sub_25C8060EC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v6 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_25C807028(v8);
      v8 = result;
    }

    v82 = v5;
    v83 = *(v8 + 2);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v5 = v83 - 1;
        v84 = *&v8[16 * v83];
        v85 = *&v8[16 * v83 + 24];
        sub_25C806CC8((*a3 + 8 * v84), (*a3 + 8 * *&v8[16 * v83 + 16]), (*a3 + 8 * v85), v6);
        if (v82)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25C807028(v8);
        }

        if (v83 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v86 = &v8[16 * v83];
        *v86 = v84;
        *(v86 + 1) = v85;
        result = sub_25C806F9C(v83 - 1);
        v83 = *(v8 + 2);
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v88 = v5;
      v10 = *(*a3 + 8 * v7);
      v5 = 8 * v9;
      v11 = (*a3 + 8 * v9);
      v13 = *v11;
      v12 = v11 + 2;

      v14 = v9;
      v15 = sub_25C82DF5C();

      v90 = v14;
      v16 = v14 + 2;
      while (v6 != v16)
      {
        v18 = *(v12 - 1);
        v17 = *v12;

        v19 = sub_25C82DF5C() & 1;

        ++v16;
        ++v12;
        if ((v15 & 1) != v19)
        {
          v6 = v16 - 1;
          break;
        }
      }

      if (v15)
      {
        v9 = v90;
        if (v6 < v90)
        {
          goto LABEL_118;
        }

        if (v90 < v6)
        {
          v20 = 8 * v6 - 8;
          v21 = v6;
          v22 = v90;
          do
          {
            if (v22 != --v21)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v23 = *(v24 + v5);
              *(v24 + v5) = *(v24 + v20);
              *(v24 + v20) = v23;
            }

            ++v22;
            v20 -= 8;
            v5 += 8;
          }

          while (v22 < v21);
        }

        v7 = v6;
        v5 = v88;
      }

      else
      {
        v7 = v6;
        v5 = v88;
        v9 = v90;
      }
    }

    v25 = a3[1];
    if (v7 < v25)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_117;
      }

      if (v7 - v9 < a4)
      {
        v26 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v26 >= v25)
        {
          v26 = a3[1];
        }

        if (v26 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v7 != v26)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_116;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25C7E6F4C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v37 = *(v8 + 2);
    v36 = *(v8 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_25C7E6F4C((v36 > 1), v37 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v38;
    v39 = &v8[16 * v37];
    *(v39 + 4) = v9;
    *(v39 + 5) = v7;
    v40 = *v92;
    if (!*v92)
    {
      goto LABEL_126;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v8 + 4);
          v43 = *(v8 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_105;
          }

          v58 = &v8[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_108;
          }

          v64 = &v8[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_112;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v68 = &v8[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_71:
        if (v63)
        {
          goto LABEL_107;
        }

        v71 = &v8[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_78:
        v79 = v41 - 1;
        if (v41 - 1 >= v38)
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

        if (!*a3)
        {
          goto LABEL_123;
        }

        v80 = *&v8[16 * v79 + 32];
        v6 = *&v8[16 * v41 + 40];
        sub_25C806CC8((*a3 + 8 * v80), (*a3 + 8 * *&v8[16 * v41 + 32]), (*a3 + 8 * v6), v40);
        if (v5)
        {
        }

        if (v6 < v80)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25C807028(v8);
        }

        if (v79 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v81 = &v8[16 * v79];
        *(v81 + 4) = v80;
        *(v81 + 5) = v6;
        result = sub_25C806F9C(v41);
        v38 = *(v8 + 2);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v8[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_103;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_104;
      }

      v53 = &v8[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_106;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_109;
      }

      if (v57 >= v49)
      {
        v75 = &v8[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v89 = v5;
  v91 = v9;
  v27 = *a3;
  v28 = *a3 + 8 * v7 - 8;
  v29 = v9 - v7;
  v93 = v26;
LABEL_30:
  v94 = v7;
  v30 = *(v27 + 8 * v7);
  v31 = v29;
  v6 = v28;
  while (1)
  {
    v32 = *v6;

    v33 = sub_25C82DF5C();

    if ((v33 & 1) == 0)
    {
LABEL_29:
      v7 = v94 + 1;
      v28 += 8;
      --v29;
      if (v94 + 1 != v93)
      {
        goto LABEL_30;
      }

      v7 = v93;
      v5 = v89;
      v9 = v91;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v34 = *v6;
    *v6 = *(v6 + 8);
    *(v6 + 8) = v34;
    v6 -= 8;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
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
  return result;
}

uint64_t sub_25C806738(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = sub_25C82DFBC();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v57);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v54 = &v45 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v56 = a3;
  v17 = (a2 - a1) / v15;
  v60 = a1;
  v59 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v19;
    if (v19 >= 1)
    {
      v30 = -v15;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = a4 + v19;
      v32 = v56;
      v47 = a1;
      v48 = a4;
      v51 = v30;
      do
      {
        v45 = v29;
        v33 = a2 + v30;
        v34 = v29;
        v52 = a2;
        v53 = a2 + v30;
        while (1)
        {
          if (a2 <= a1)
          {
            v60 = a2;
            v29 = v45;
            goto LABEL_59;
          }

          v36 = v32;
          v46 = v34;
          v56 = v32 + v30;
          v37 = v31 + v30;
          v38 = *v50;
          v39 = v54;
          v40 = v31 + v30;
          v41 = v31;
          v42 = v57;
          (*v50)(v54, v40, v57);
          v43 = v55;
          (v38)(v55, v33, v42);
          sub_25C807804();
          LOBYTE(v38) = sub_25C82E05C();
          v44 = *v49;
          (*v49)(v43, v42);
          v44(v39, v42);
          if (v38)
          {
            break;
          }

          v34 = v37;
          v32 = v56;
          if (v36 < v41 || v56 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v53;
            a1 = v47;
          }

          else
          {
            v33 = v53;
            a1 = v47;
            if (v36 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v37;
          v35 = v37 > v48;
          v30 = v51;
          a2 = v52;
          if (!v35)
          {
            v29 = v34;
            goto LABEL_58;
          }
        }

        v32 = v56;
        if (v36 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v47;
          v31 = v41;
        }

        else
        {
          a2 = v53;
          a1 = v47;
          v31 = v41;
          if (v36 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v29 = v46;
        v30 = v51;
      }

      while (v31 > v48);
    }

LABEL_58:
    v60 = a2;
LABEL_59:
    v58 = v29;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v18;
    v58 = a4 + v18;
    if (v18 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = v8 + 16;
      v49 = v15;
      v50 = (v8 + 8);
      do
      {
        v21 = v54;
        v22 = v57;
        v23 = v51;
        v51(v54, a2, v57);
        v24 = v55;
        v23(v55, a4, v22);
        sub_25C807804();
        v25 = sub_25C82E05C();
        v26 = *v50;
        (*v50)(v24, v22);
        v26(v21, v22);
        if (v25)
        {
          v27 = v49;
          if (a1 < a2 || a1 >= v49 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v27;
        }

        else
        {
          v27 = v49;
          v28 = v49 + a4;
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v59 = v28;
          a4 += v27;
        }

        a1 += v27;
        v60 = a1;
      }

      while (a4 < v53 && a2 < v56);
    }
  }

  sub_25C80703C(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_25C806CC8(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
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
  if (v10 < v12 >> 3)
  {
    if (__dst != __src || &__src[8 * v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
      v6 = a2;
    }

    v15 = &v4[8 * v10];
    if (v8 < 8 || v6 >= v5)
    {
      v22 = v7;
      goto LABEL_38;
    }

    while (1)
    {
      v16 = *v6;
      v17 = *v4;
      v18 = v6;

      v19 = sub_25C82DF5C();

      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = v18;
      v6 = v18 + 8;
      if (v7 != v18)
      {
        goto LABEL_15;
      }

LABEL_16:
      v7 += 8;
      if (v4 >= v15 || v6 >= v5)
      {
        v22 = v7;
        goto LABEL_38;
      }
    }

    v20 = v4;
    v21 = v7 == v4;
    v4 += 8;
    v6 = v18;
    if (v21)
    {
      goto LABEL_16;
    }

LABEL_15:
    *v7 = *v20;
    goto LABEL_16;
  }

  if (__dst != a2 || &a2[8 * v13] <= __dst)
  {
    memmove(__dst, a2, 8 * v13);
    v6 = a2;
  }

  v15 = &v4[8 * v13];
  if (v11 < 8 || v6 <= v7)
  {
    v22 = v6;
  }

  else
  {
    v33 = v4;
    do
    {
      v32 = v6;
      v24 = v6 - 8;
      v5 -= 8;
      v25 = v15;
      while (1)
      {
        v26 = v5 + 8;
        v27 = *(v25 - 1);
        v25 -= 8;
        v28 = v24;
        v29 = *v24;

        v30 = sub_25C82DF5C();

        if (v30)
        {
          break;
        }

        if (v26 != v15)
        {
          *v5 = *v25;
        }

        v5 -= 8;
        v15 = v25;
        v24 = v28;
        if (v25 <= v33)
        {
          v15 = v25;
          v22 = v32;
          v4 = v33;
          goto LABEL_38;
        }
      }

      if (v26 != v32)
      {
        *v5 = *v28;
      }

      if (v15 <= v33)
      {
        break;
      }

      v6 = v28;
    }

    while (v28 > v7);
    v22 = v28;
    v4 = v33;
  }

LABEL_38:
  if (v22 != v4 || v22 >= &v4[(v15 - v4 + (v15 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v22, v4, 8 * ((v15 - v4) / 8));
  }

  return 1;
}

uint64_t sub_25C806F9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25C807028(v3);
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

uint64_t sub_25C80703C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_25C82DFBC();
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

uint64_t sub_25C807148(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_25C807248(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_25C82E43C();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v7 = sub_25C8040F4(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_25C8072E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25C82E43C();
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
      result = sub_25C82E43C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25C80785C(&qword_27FC162B0, &qword_27FC162A8, &unk_25C830950);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162A8, &unk_25C830950);
            v9 = sub_25C807614(v13, i, a3);
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
        sub_25C7E96B8(0, &qword_27FC16218, off_2799B97D0);
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

uint64_t sub_25C807484(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25C82E43C();
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
      result = sub_25C82E43C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25C80785C(&qword_27FC16260, &qword_27FC16258, &qword_25C8308D0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16258, &qword_25C8308D0);
            v9 = sub_25C80769C(v13, i, a3);
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
        type metadata accessor for ODCurareDataBoundary();
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

void (*sub_25C807614(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F88F6D0](a2, a3);
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
    return sub_25C807694;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_25C80769C(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25F88F6D0](a2, a3);
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
    *v3 = v5;
    return sub_25C80771C;
  }

  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25C807804()
{
  result = qword_27FC16288;
  if (!qword_27FC16288)
  {
    sub_25C82DFBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC16288);
  }

  return result;
}

uint64_t sub_25C80785C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_25C8078B4(int a1, int a2, id a3)
{
  v4 = [a3 data];
  if (v4)
  {
    v5 = v4;
    v6 = sub_25C82DF0C();
    v8 = v7;

    v9 = objc_allocWithZone(MEMORY[0x277CBEA90]);
    v10 = sub_25C82DEEC();
    v11 = [v9 initWithData_];

    sub_25C808E3C(v6, v8);
    v12 = *(v3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16298, &unk_25C830930);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_25C830640;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162A0, &unk_25C830BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25C830640;
    sub_25C82E35C();
    *(inited + 96) = sub_25C7E96B8(0, &qword_281559490, 0x277CBEA90);
    *(inited + 72) = v11;
    v15 = v11;
    v16 = sub_25C8009E0(inited);
    swift_setDeallocating();
    sub_25C7E97F4(inited + 32, &qword_27FC161A8, &unk_25C8307A0);
    *(v13 + 32) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
    v17 = sub_25C82E1BC();

    v18 = sub_25C82DF4C();
    sub_25C82DE8C();
    v19 = sub_25C82E07C();

    [v12 saveDictionaries:v17 date:v18 eventIdentifier:v19];

    sub_25C827FD8(v12, *(v3 + 24));
  }

  else
  {
    __break(1u);
  }
}

id sub_25C807AF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v55 = a3;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v7);
  v64 = &v48 - v9;
  v62 = sub_25C82DEAC();
  v10 = *(v62 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v62);
  v63 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(a1 + 16) queryDataWithPredicate_];
  if (!result)
  {
    return result;
  }

  v14 = result;
  sub_25C7E96B8(0, &qword_2815594A0, off_2799B9788);
  v15 = sub_25C82E1DC();

  if (v15 >> 62)
  {
LABEL_35:
    v16 = sub_25C82E43C();
    if (v16)
    {
      goto LABEL_4;
    }
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
  }

LABEL_4:
  v17 = 0;
  v18 = v15 & 0xC000000000000001;
  v51 = v15 + 32;
  v52 = v15 & 0xFFFFFFFFFFFFFF8;
  v57 = (v10 + 2);
  v58 = "leSystemMetadataStore";
  v53 = v15;
  v54 = (v10 + 1);
  v19 = &selRef__setBiomeFilter_fromInclusive_toDate_toInclusive_;
  v49 = v16;
  v50 = v4;
  v48 = v15 & 0xC000000000000001;
  while (1)
  {
    if (v18)
    {
      v21 = MEMORY[0x25F88F6D0](v17, v15);
    }

    else
    {
      if (v17 >= *(v52 + 16))
      {
        __break(1u);
LABEL_39:
        swift_once();
        goto LABEL_28;
      }

      v21 = *(v51 + 8 * v17);
    }

    v20 = v21;
    v22 = __OFADD__(v17, 1);
    v17 = (v17 + 1);
    if (v22)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v23 = [v21 v19[77]];
    if (v23)
    {
      break;
    }

LABEL_6:

    if (v17 == v16)
    {
    }
  }

  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
  v4 = sub_25C82E1DC();

  v56 = v20;
  v10 = [v20 identifier];
  sub_25C82E0AC();

  sub_25C82DE0C();

  v25 = sub_25C812AA0(v4);

  v59 = *(v25 + 16);
  if (!v59)
  {
LABEL_5:
    (*v54)(v63, v62);

    v16 = v49;
    v4 = v50;
    v20 = v56;
    v15 = v53;
    v18 = v48;
    v19 = &selRef__setBiomeFilter_fromInclusive_toDate_toInclusive_;
    goto LABEL_6;
  }

  v26 = 0;
  while (1)
  {
    if (v26 >= *(v25 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v27 = *(v25 + 8 * v26 + 32);
    if (!*(v27 + 16))
    {
      break;
    }

    v28 = *(v25 + 8 * v26 + 32);

    v29 = sub_25C8139BC(0xD000000000000017, v58 | 0x8000000000000000);
    if ((v30 & 1) == 0)
    {

      break;
    }

    sub_25C7E9854(*(v27 + 56) + 32 * v29, v65);

    sub_25C7E96B8(0, &qword_281559490, 0x277CBEA90);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v15 = a2;
    v10 = v66;
    v31 = MEMORY[0x25F88F1F0](v66);
    v33 = v32;
    v34 = objc_allocWithZone(ODCurareReportFillerMetadata);
    v35 = sub_25C82DEEC();
    sub_25C808E3C(v31, v33);
    v36 = [v34 initWithData_];

    if (!v36)
    {

      sub_25C82E27C();
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v46 = qword_281559838;
      sub_25C82E00C();

      sub_25C7E7DEC();
      v44 = swift_allocError();
      *v47 = 17;
      swift_willThrow();

      v17 = v55;
      v4 = v56;
      goto LABEL_32;
    }

    v37 = *(v61 + 48);
    v38 = v64;
    (*v57)(v64, v63, v62);
    *(v38 + v37) = v36;
    a2 = v15;
    v4 = *v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v15 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_25C7E72A4(0, v4[2] + 1, 1, v4);
      *v15 = v4;
    }

    v41 = v4[2];
    v40 = v4[3];
    if (v41 >= v40 >> 1)
    {
      *v15 = sub_25C7E72A4(v40 > 1, v41 + 1, 1, v4);
    }

    ++v26;

    v42 = *v15;
    v42[2] = v41 + 1;
    sub_25C7E9274(v64, v42 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v41, &qword_27FC16090, qword_25C8304A0);
    if (v59 == v26)
    {
      goto LABEL_5;
    }
  }

  sub_25C82E27C();
  v17 = v55;
  v4 = v56;
  if (qword_2815594B8 != -1)
  {
    goto LABEL_39;
  }

LABEL_28:
  v43 = qword_281559838;
  sub_25C82E00C();

  sub_25C7E7DEC();
  v44 = swift_allocError();
  *v45 = 17;
  swift_willThrow();
LABEL_32:

  result = (*v54)(v63, v62);
  *v17 = v44;
  return result;
}

void sub_25C8081D4(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16088, &qword_25C830498);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v73 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v78 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v71 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v68 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v68 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v68 - v23;
  v25 = *(v13 + 56);
  v26 = a1;
  v25(a1, 1, 1, v12);
  v86[0] = MEMORY[0x277D84F90];
  v27 = objc_autoreleasePoolPush();
  v28 = v85;
  sub_25C807AF8(v84, v86, &v87);
  if (v28)
  {
    objc_autoreleasePoolPop(v27);

    sub_25C7E97F4(v26, &qword_27FC16088, &qword_25C830498);
    return;
  }

  v76 = v19;
  v77 = v13;
  v84 = v24;
  v75 = v22;
  v68[0] = v25;
  v68[1] = v13 + 56;
  v69 = v26;
  v70 = 0;
  objc_autoreleasePoolPop(v27);
  v29 = *(v86[0] + 16);

  v81 = v29;
  if (v29)
  {
    v31 = 0;
    v32 = MEMORY[0x277D84F90];
    v74 = "evaluateWithModel:]";
    v33 = v79;
    v35 = v75;
    v34 = v76;
    v36 = v84;
    v37 = v77;
    v80 = v30;
    while (v31 < *(v30 + 16))
    {
      v85 = v32;
      v83 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v82 = *(v37 + 72);
      sub_25C7E92DC(v30 + v83 + v82 * v31, v36, &qword_27FC16090, qword_25C8304A0);
      sub_25C7E92DC(v36, v35, &qword_27FC16090, qword_25C8304A0);
      v38 = *(v35 + *(v12 + 48));
      v39 = [v38 date];

      if (v39)
      {
        v40 = v12;
        sub_25C82E0AC();

        v41 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        v42 = sub_25C82E07C();
        [v41 setDateFormat_];

        v43 = sub_25C82E07C();
        v44 = [v41 dateFromString_];

        if (v44)
        {
          v45 = v78;
          sub_25C82DF8C();

          v46 = 0;
          v41 = v44;
        }

        else
        {
          v46 = 1;
          v45 = v78;
        }

        v32 = v85;

        v48 = sub_25C82DFBC();
        (*(*(v48 - 8) + 56))(v45, v46, 1, v48);
        v49 = v45;
        v33 = v79;
        sub_25C7E9274(v49, v79, &qword_27FC16048, qword_25C8309D0);
        v12 = v40;
        v34 = v76;
        v37 = v77;
        v35 = v75;
      }

      else
      {
        v47 = sub_25C82DFBC();
        (*(*(v47 - 8) + 56))(v33, 1, 1, v47);
        v32 = v85;
      }

      v50 = sub_25C82DEAC();
      (*(*(v50 - 8) + 8))(v35, v50);
      v51 = sub_25C82DFBC();
      v52 = (*(*(v51 - 8) + 48))(v33, 1, v51);
      v36 = v84;
      if (v52 == 1)
      {
        sub_25C7E97F4(v84, &qword_27FC16090, qword_25C8304A0);
        sub_25C7E97F4(v33, &qword_27FC16048, qword_25C8309D0);
      }

      else
      {
        sub_25C7E97F4(v33, &qword_27FC16048, qword_25C8309D0);
        sub_25C7E9274(v36, v34, &qword_27FC16090, qword_25C8304A0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86[0] = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25C814068(0, v32[2] + 1, 1);
          v32 = v86[0];
        }

        v55 = v32[2];
        v54 = v32[3];
        if (v55 >= v54 >> 1)
        {
          sub_25C814068(v54 > 1, v55 + 1, 1);
          v32 = v86[0];
        }

        v32[2] = v55 + 1;
        sub_25C7E9274(v34, v32 + v83 + v55 * v82, &qword_27FC16090, qword_25C8304A0);
        v36 = v84;
      }

      ++v31;
      v30 = v80;
      if (v81 == v31)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_31:
    v32 = sub_25C7E9700(v32);
    goto LABEL_23;
  }

  v32 = MEMORY[0x277D84F90];
  v37 = v77;
LABEL_21:
  swift_bridgeObjectRelease_n();
  if (!v32[2])
  {

    v33 = v69;
    v34 = v73;
    goto LABEL_26;
  }

  v56 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v69;
  v34 = v73;
  if ((v56 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_23:
  v57 = v72;
  v58 = v32[2];
  v59 = v32 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  v86[0] = v59;
  v86[1] = v58;
  v60 = v70;
  sub_25C808E90(v86);
  v70 = v60;
  if (!v32[2])
  {
    __break(1u);
LABEL_33:
    swift_once();
    goto LABEL_28;
  }

  v61 = v59;
  v62 = v71;
  sub_25C7E92DC(v61, v71, &qword_27FC16090, qword_25C8304A0);
  sub_25C7E97F4(v33, &qword_27FC16088, &qword_25C830498);

  v63 = *(v12 + 48);
  v64 = *(v62 + v63);
  v65 = sub_25C82DEAC();
  (*(*(v65 - 8) + 32))(v57, v62, v65);
  *(v57 + v63) = v64;
  (v68[0])(v57, 0, 1, v12);
  sub_25C7E9274(v57, v33, &qword_27FC16088, &qword_25C830498);
LABEL_26:
  sub_25C7E92DC(v33, v34, &qword_27FC16088, &qword_25C830498);
  v66 = (*(v37 + 48))(v34, 1, v12);
  sub_25C7E97F4(v34, &qword_27FC16088, &qword_25C830498);
  if (v66 != 1)
  {
    return;
  }

  sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    goto LABEL_33;
  }

LABEL_28:
  v67 = qword_281559838;
  sub_25C82E00C();
}

uint64_t sub_25C808AB4(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v38 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v37 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v34 - v13;
  sub_25C7E92DC(a1, v8, &qword_27FC16090, qword_25C8304A0);
  v15 = *&v8[*(v3 + 48)];
  v16 = [v15 date];

  if (v16)
  {
    sub_25C82E0AC();
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  sub_25C82B668(v18, v14);

  v19 = sub_25C82DEAC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 8);
  v34[2] = v20 + 8;
  v35 = v21;
  v21(v8, v19);
  v22 = sub_25C82DFBC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  result = v24(v14, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v26 = v38;
    sub_25C7E92DC(v36, v38, &qword_27FC16090, qword_25C8304A0);
    v27 = *(v26 + *(v3 + 48));
    v28 = [v27 date];

    if (v28)
    {
      sub_25C82E0AC();
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = v37;
    sub_25C82B668(v30, v37);

    v35(v38, v19);
    result = v24(v31, 1, v22);
    if (result != 1)
    {
      v32 = sub_25C82DF5C();
      v33 = *(v23 + 8);
      v33(v31, v22);
      v33(v14, v22);
      return v32 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25C808E3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25C808E90(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25C82E4CC();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
        v6 = sub_25C82E1FC();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25C809808(v8, v9, a1, v4);
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
    return sub_25C808FD4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25C808FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v81 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v73 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v82 = &v73 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v73 - v17;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v19 = *(*(v95 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v95);
  v85 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v94 = &v73 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v73 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v98 = &v73 - v28;
  result = MEMORY[0x28223BE20](v27);
  v93 = &v73 - v31;
  v75 = a2;
  if (a3 != a2)
  {
    v32 = *a4;
    v33 = *(v30 + 72);
    v89 = "evaluateWithModel:]";
    v34 = v32 + v33 * (a3 - 1);
    v83 = -v33;
    v84 = v32;
    v35 = a1 - a3;
    v74 = v33;
    v36 = v32 + v33 * a3;
    v90 = v18;
    v80 = v14;
    v86 = v26;
LABEL_5:
    v79 = a3;
    v76 = v36;
    v96 = v34;
    v97 = v36;
    v77 = v35;
    v78 = v34;
    while (1)
    {
      v91 = v35;
      v37 = v93;
      sub_25C7E92DC(v97, v93, &qword_27FC16090, qword_25C8304A0);
      sub_25C7E92DC(v96, v98, &qword_27FC16090, qword_25C8304A0);
      sub_25C7E92DC(v37, v26, &qword_27FC16090, qword_25C8304A0);
      v38 = *&v26[*(v95 + 48)];
      v39 = [v38 date];

      if (v39)
      {
        sub_25C82E0AC();

        v40 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        v41 = sub_25C82E07C();
        [v40 setDateFormat_];

        v42 = sub_25C82E07C();
        v43 = [v40 dateFromString_];

        if (v43)
        {
          v44 = v82;
          sub_25C82DF8C();

          v45 = 0;
          v40 = v43;
        }

        else
        {
          v45 = 1;
          v44 = v82;
        }

        v47 = sub_25C82DFBC();
        (*(*(v47 - 8) + 56))(v44, v45, 1, v47);
        v18 = v90;
        sub_25C7E9274(v44, v90, &qword_27FC16048, qword_25C8309D0);
      }

      else
      {
        v46 = sub_25C82DFBC();
        (*(*(v46 - 8) + 56))(v18, 1, 1, v46);
      }

      v48 = sub_25C82DEAC();
      v49 = *(v48 - 8);
      v50 = *(v49 + 8);
      v92 = v49 + 8;
      v50(v26, v48);
      v51 = sub_25C82DFBC();
      v52 = *(v51 - 8);
      v53 = *(v52 + 48);
      result = v53(v18, 1, v51);
      if (result == 1)
      {
        break;
      }

      v54 = v94;
      sub_25C7E92DC(v98, v94, &qword_27FC16090, qword_25C8304A0);
      v55 = *(v54 + *(v95 + 48));
      v56 = [v55 date];

      if (v56)
      {
        v88 = v50;
        sub_25C82E0AC();
        v58 = v57;

        v59 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        v60 = sub_25C82E07C();
        [v59 setDateFormat_];

        v87 = v58;
        v61 = sub_25C82E07C();
        v62 = [v59 dateFromString_];

        if (v62)
        {
          v63 = v81;
          sub_25C82DF8C();

          v64 = 0;
          v59 = v62;
        }

        else
        {
          v64 = 1;
          v63 = v81;
        }

        v18 = v90;

        (*(v52 + 56))(v63, v64, 1, v51);
        v14 = v80;
        sub_25C7E9274(v63, v80, &qword_27FC16048, qword_25C8309D0);

        v50 = v88;
      }

      else
      {
        (*(v52 + 56))(v14, 1, 1, v51);
        v18 = v90;
      }

      v50(v94, v48);
      result = v53(v14, 1, v51);
      if (result == 1)
      {
        goto LABEL_26;
      }

      v65 = sub_25C82DF5C();
      v66 = *(v52 + 8);
      v66(v14, v51);
      v66(v18, v51);
      sub_25C7E97F4(v98, &qword_27FC16090, qword_25C8304A0);
      result = sub_25C7E97F4(v93, &qword_27FC16090, qword_25C8304A0);
      v26 = v86;
      v67 = v91;
      if (v65)
      {
        if (!v84)
        {
          goto LABEL_27;
        }

        v68 = v97;
        v69 = v85;
        sub_25C7E9274(v97, v85, &qword_27FC16090, qword_25C8304A0);
        v70 = v14;
        v71 = v96;
        swift_arrayInitWithTakeFrontToBack();
        result = sub_25C7E9274(v69, v71, &qword_27FC16090, qword_25C8304A0);
        v96 = v71 + v83;
        v14 = v70;
        v97 = v68 + v83;
        v72 = __CFADD__(v67, 1);
        v35 = v67 + 1;
        if (!v72)
        {
          continue;
        }
      }

      a3 = v79 + 1;
      v34 = v78 + v74;
      v35 = v77 - 1;
      v36 = v76 + v74;
      if (v79 + 1 == v75)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_25C809808(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v211 = a4;
  v210 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v208 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v208 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v208 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v208 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v216 = &v208 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v222 = &v208 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v217 = &v208 - v24;
  MEMORY[0x28223BE20](v23);
  v227 = &v208 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v223 = *(v26 - 8);
  v27 = *(v223 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v214 = &v208 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v235 = &v208 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v248 = &v208 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v249 = &v208 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v250 = &v208 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v247 = &v208 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v226 = &v208 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v228 = &v208 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v231 = &v208 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v225 = &v208 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  result = MEMORY[0x28223BE20](v48);
  v224 = a3;
  if (a3[1] >= 1)
  {
    v52 = a3[1];
    v208 = &v208 - v50;
    v209 = v51;
    v53 = 0;
    v54 = MEMORY[0x277D84F90];
    v239 = v18;
    v240 = "evaluateWithModel:]";
    v232 = v9;
    v236 = v12;
    v237 = v15;
    v241 = v26;
    while (1)
    {
      v55 = v53 + 1;
      v215 = v54;
      v212 = v53;
      if (v53 + 1 >= v52)
      {
        v67 = v53 + 1;
        v105 = v211;
        v60 = qword_25C8304A0;
        goto LABEL_38;
      }

      v229 = v52;
      v56 = v53;
      v57 = *v224;
      v58 = *(v223 + 72);
      v246 = (*v224 + v58 * v55);
      v59 = v208;
      v60 = qword_25C8304A0;
      sub_25C7E92DC(v246, v208, &qword_27FC16090, qword_25C8304A0);
      v61 = v57 + v58 * v56;
      v62 = v209;
      sub_25C7E92DC(v61, v209, &qword_27FC16090, qword_25C8304A0);
      v63 = v230;
      LODWORD(v233) = sub_25C808AB4(v59, v62);
      v230 = v63;
      if (v63)
      {
        break;
      }

      sub_25C7E97F4(v62, &qword_27FC16090, qword_25C8304A0);
      sub_25C7E97F4(v59, &qword_27FC16090, qword_25C8304A0);
      v64 = v212 + 2;
      result = v57 + v58 * (v212 + 2);
      v65 = v58;
      v238 = v58;
      v66 = v246;
      do
      {
        v67 = v229;
        if (v229 == v64)
        {
          goto LABEL_24;
        }

        v242 = result;
        v243 = v64;
        v68 = v225;
        sub_25C7E92DC(result, v225, &qword_27FC16090, qword_25C8304A0);
        sub_25C7E92DC(v66, v231, &qword_27FC16090, qword_25C8304A0);
        v69 = v68;
        v70 = v228;
        sub_25C7E92DC(v69, v228, &qword_27FC16090, qword_25C8304A0);
        v71 = *(v70 + *(v26 + 48));
        v72 = [v71 date];

        v246 = v66;
        if (v72)
        {
          sub_25C82E0AC();

          v73 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v74 = sub_25C82E07C();
          [v73 setDateFormat_];

          v75 = sub_25C82E07C();
          v76 = [v73 dateFromString_];

          if (v76)
          {
            v77 = v217;
            sub_25C82DF8C();

            v78 = 0;
            v73 = v76;
          }

          else
          {
            v78 = 1;
            v77 = v217;
          }

          v81 = sub_25C82DFBC();
          (*(*(v81 - 8) + 56))(v77, v78, 1, v81);
          v80 = v227;
          sub_25C7E9274(v77, v227, &qword_27FC16048, qword_25C8309D0);

          v26 = v241;
        }

        else
        {
          v79 = sub_25C82DFBC();
          v80 = v227;
          (*(*(v79 - 8) + 56))(v227, 1, 1, v79);
        }

        v82 = sub_25C82DEAC();
        v83 = *(v82 - 8);
        v84 = *(v83 + 8);
        v244 = v83 + 8;
        v245 = v84;
        v84(v228, v82);
        v85 = sub_25C82DFBC();
        v86 = *(v85 - 8);
        v87 = *(v86 + 48);
        result = v87(v80, 1, v85);
        if (result == 1)
        {
          goto LABEL_164;
        }

        v88 = v226;
        sub_25C7E92DC(v231, v226, &qword_27FC16090, qword_25C8304A0);
        v89 = *(v88 + *(v26 + 48));
        v90 = [v89 date];

        if (v90)
        {
          sub_25C82E0AC();
          v92 = v91;

          v93 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v94 = sub_25C82E07C();
          [v93 setDateFormat_];

          v234 = v92;
          v95 = sub_25C82E07C();
          v96 = [v93 dateFromString_];

          if (v96)
          {
            v97 = v216;
            sub_25C82DF8C();

            v98 = 0;
            v93 = v96;
          }

          else
          {
            v98 = 1;
            v97 = v216;
          }

          (*(v86 + 56))(v97, v98, 1, v85);
          v99 = v222;
          sub_25C7E9274(v97, v222, &qword_27FC16048, qword_25C8309D0);

          v18 = v239;
          v26 = v241;
        }

        else
        {
          v99 = v222;
          (*(v86 + 56))(v222, 1, 1, v85);
        }

        v245(v226, v82);
        result = v87(v99, 1, v85);
        if (result == 1)
        {
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        v100 = v227;
        v101 = sub_25C82DF5C();
        v102 = v99;
        v103 = v101 & 1;
        v104 = *(v86 + 8);
        v104(v102, v85);
        v104(v100, v85);
        v60 = qword_25C8304A0;
        sub_25C7E97F4(v231, &qword_27FC16090, qword_25C8304A0);
        sub_25C7E97F4(v225, &qword_27FC16090, qword_25C8304A0);
        v64 = v243 + 1;
        v15 = v237;
        v65 = v238;
        result = v242 + v238;
        v66 = &v246[v238];
      }

      while ((v233 & 1) == v103);
      v67 = v243;
LABEL_24:
      v105 = v211;
      v53 = v212;
      if (v233)
      {
        if (v67 >= v212)
        {
          if (v212 < v67)
          {
            v106 = v65 * (v67 - 1);
            v107 = v67 * v65;
            v229 = v67;
            v108 = v212;
            v109 = v212 * v65;
            do
            {
              if (v108 != --v67)
              {
                v110 = *v224;
                if (!*v224)
                {
                  goto LABEL_167;
                }

                sub_25C7E9274(v110 + v109, v214, &qword_27FC16090, qword_25C8304A0);
                if (v109 < v106 || v110 + v109 >= (v110 + v107))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v109 != v106)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_25C7E9274(v214, v110 + v106, &qword_27FC16090, qword_25C8304A0);
                v105 = v211;
                v53 = v212;
                v65 = v238;
              }

              ++v108;
              v106 -= v65;
              v107 -= v65;
              v109 += v65;
            }

            while (v108 < v67);
            v26 = v241;
            v60 = qword_25C8304A0;
            v67 = v229;
          }

          goto LABEL_38;
        }

LABEL_159:
        __break(1u);
LABEL_160:
        result = sub_25C807028(v60);
        goto LABEL_127;
      }

LABEL_38:
      v111 = v224[1];
      if (v67 < v111)
      {
        if (__OFSUB__(v67, v53))
        {
          goto LABEL_156;
        }

        if (v67 - v53 < v105)
        {
          if (__OFADD__(v53, v105))
          {
            goto LABEL_157;
          }

          if (v53 + v105 < v111)
          {
            v111 = v53 + v105;
          }

          if (v111 < v53)
          {
LABEL_158:
            __break(1u);
            goto LABEL_159;
          }

          if (v67 != v111)
          {
            v218 = v111;
            v112 = *v224;
            v113 = *(v223 + 72);
            v114 = *v224 + v113 * (v67 - 1);
            v233 = -v113;
            v234 = v112;
            v115 = v53 - v67;
            v213 = v113;
            v116 = v112 + v67 * v113;
            do
            {
              v229 = v67;
              v219 = v116;
              v220 = v115;
              v117 = v115;
              v221 = v114;
              while (1)
              {
                v243 = v116;
                v244 = v117;
                v118 = v247;
                sub_25C7E92DC(v116, v247, &qword_27FC16090, qword_25C8304A0);
                sub_25C7E92DC(v114, v250, &qword_27FC16090, qword_25C8304A0);
                v119 = v118;
                v120 = v249;
                sub_25C7E92DC(v119, v249, &qword_27FC16090, qword_25C8304A0);
                v121 = *(v120 + *(v26 + 48));
                v122 = [v121 date];

                v242 = v114;
                if (v122)
                {
                  sub_25C82E0AC();

                  v123 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
                  v124 = sub_25C82E07C();
                  [v123 setDateFormat_];

                  v125 = sub_25C82E07C();
                  v126 = [v123 dateFromString_];

                  if (v126)
                  {
                    sub_25C82DF8C();

                    v127 = 0;
                    v123 = v126;
                  }

                  else
                  {
                    v127 = 1;
                  }

                  v129 = sub_25C82DFBC();
                  (*(*(v129 - 8) + 56))(v15, v127, 1, v129);
                  v18 = v239;
                  sub_25C7E9274(v15, v239, &qword_27FC16048, qword_25C8309D0);

                  v26 = v241;
                }

                else
                {
                  v128 = sub_25C82DFBC();
                  (*(*(v128 - 8) + 56))(v18, 1, 1, v128);
                }

                v130 = sub_25C82DEAC();
                v131 = *(v130 - 8);
                v132 = *(v131 + 8);
                v133 = (v131 + 8);
                v132(v249, v130);
                v134 = sub_25C82DFBC();
                v135 = *(v134 - 8);
                v136 = *(v135 + 48);
                result = v136(v18, 1, v134);
                if (result == 1)
                {
                  goto LABEL_162;
                }

                v245 = v133;
                v246 = v132;
                v137 = v248;
                sub_25C7E92DC(v250, v248, &qword_27FC16090, qword_25C8304A0);
                v138 = *(v137 + *(v26 + 48));
                v139 = [v138 date];

                if (v139)
                {
                  sub_25C82E0AC();
                  v141 = v140;

                  v142 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
                  v143 = sub_25C82E07C();
                  [v142 setDateFormat_];

                  v238 = v141;
                  v144 = sub_25C82E07C();
                  v145 = [v142 dateFromString_];

                  if (v145)
                  {
                    v146 = v232;
                    sub_25C82DF8C();

                    v147 = 0;
                    v142 = v145;
                  }

                  else
                  {
                    v147 = 1;
                    v146 = v232;
                  }

                  (*(v135 + 56))(v146, v147, 1, v134);
                  v148 = v236;
                  sub_25C7E9274(v146, v236, &qword_27FC16048, qword_25C8309D0);

                  v18 = v239;
                  v26 = v241;
                }

                else
                {
                  v148 = v236;
                  (*(v135 + 56))(v236, 1, 1, v134);
                }

                (v246)(v248, v130);
                result = v136(v148, 1, v134);
                if (result == 1)
                {
                  __break(1u);
LABEL_162:
                  __break(1u);
LABEL_163:
                  __break(1u);
LABEL_164:
                  __break(1u);
                  goto LABEL_165;
                }

                v149 = sub_25C82DF5C();
                v150 = *(v135 + 8);
                v150(v148, v134);
                v150(v18, v134);
                v60 = qword_25C8304A0;
                sub_25C7E97F4(v250, &qword_27FC16090, qword_25C8304A0);
                result = sub_25C7E97F4(v247, &qword_27FC16090, qword_25C8304A0);
                if ((v149 & 1) == 0)
                {
                  break;
                }

                v15 = v237;
                v151 = v244;
                if (!v234)
                {
                  goto LABEL_163;
                }

                v152 = v243;
                v153 = v235;
                sub_25C7E9274(v243, v235, &qword_27FC16090, qword_25C8304A0);
                v154 = v242;
                swift_arrayInitWithTakeFrontToBack();
                sub_25C7E9274(v153, v154, &qword_27FC16090, qword_25C8304A0);
                v114 = v154 + v233;
                v116 = v152 + v233;
                v155 = __CFADD__(v151, 1);
                v117 = v151 + 1;
                if (v155)
                {
                  goto LABEL_48;
                }
              }

              v15 = v237;
LABEL_48:
              v67 = v229 + 1;
              v114 = v221 + v213;
              v115 = v220 - 1;
              v116 = v219 + v213;
            }

            while (v229 + 1 != v218);
            v53 = v212;
            v67 = v218;
          }
        }
      }

      if (v67 < v53)
      {
        goto LABEL_155;
      }

      v218 = v67;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v54 = v215;
      }

      else
      {
        result = sub_25C7E6F4C(0, *(v215 + 2) + 1, 1, v215);
        v54 = result;
      }

      v157 = *(v54 + 2);
      v156 = *(v54 + 3);
      v60 = v157 + 1;
      if (v157 >= v156 >> 1)
      {
        result = sub_25C7E6F4C((v156 > 1), v157 + 1, 1, v54);
        v54 = result;
      }

      *(v54 + 2) = v60;
      v158 = &v54[16 * v157];
      v159 = v218;
      *(v158 + 4) = v53;
      *(v158 + 5) = v159;
      v53 = *v210;
      if (!*v210)
      {
        goto LABEL_169;
      }

      if (v157)
      {
        while (1)
        {
          v160 = v60 - 1;
          if (v60 >= 4)
          {
            break;
          }

          if (v60 == 3)
          {
            v161 = *(v54 + 4);
            v162 = *(v54 + 5);
            v171 = __OFSUB__(v162, v161);
            v163 = v162 - v161;
            v164 = v171;
LABEL_90:
            if (v164)
            {
              goto LABEL_144;
            }

            v177 = &v54[16 * v60];
            v179 = *v177;
            v178 = *(v177 + 1);
            v180 = __OFSUB__(v178, v179);
            v181 = v178 - v179;
            v182 = v180;
            if (v180)
            {
              goto LABEL_147;
            }

            v183 = &v54[16 * v160 + 32];
            v185 = *v183;
            v184 = *(v183 + 1);
            v171 = __OFSUB__(v184, v185);
            v186 = v184 - v185;
            if (v171)
            {
              goto LABEL_150;
            }

            if (__OFADD__(v181, v186))
            {
              goto LABEL_151;
            }

            if (v181 + v186 >= v163)
            {
              if (v163 < v186)
              {
                v160 = v60 - 2;
              }

              goto LABEL_111;
            }

            goto LABEL_104;
          }

          v187 = &v54[16 * v60];
          v189 = *v187;
          v188 = *(v187 + 1);
          v171 = __OFSUB__(v188, v189);
          v181 = v188 - v189;
          v182 = v171;
LABEL_104:
          if (v182)
          {
            goto LABEL_146;
          }

          v190 = &v54[16 * v160];
          v192 = *(v190 + 4);
          v191 = *(v190 + 5);
          v171 = __OFSUB__(v191, v192);
          v193 = v191 - v192;
          if (v171)
          {
            goto LABEL_149;
          }

          if (v193 < v181)
          {
            goto LABEL_3;
          }

LABEL_111:
          v198 = v160 - 1;
          if (v160 - 1 >= v60)
          {
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
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

          if (!*v224)
          {
            goto LABEL_166;
          }

          v199 = v54;
          v60 = *&v54[16 * v198 + 32];
          v200 = *&v54[16 * v160 + 40];
          v201 = v230;
          sub_25C80AE1C(*v224 + *(v223 + 72) * v60, *v224 + *(v223 + 72) * *&v54[16 * v160 + 32], (*v224 + *(v223 + 72) * v200), v53);
          v230 = v201;
          if (v201)
          {
          }

          if (v200 < v60)
          {
            goto LABEL_140;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v199 = sub_25C807028(v199);
          }

          if (v198 >= *(v199 + 2))
          {
            goto LABEL_141;
          }

          v202 = &v199[16 * v198];
          *(v202 + 4) = v60;
          *(v202 + 5) = v200;
          v251 = v199;
          result = sub_25C806F9C(v160);
          v54 = v251;
          v60 = *(v251 + 16);
          if (v60 <= 1)
          {
            goto LABEL_3;
          }
        }

        v165 = &v54[16 * v60 + 32];
        v166 = *(v165 - 64);
        v167 = *(v165 - 56);
        v171 = __OFSUB__(v167, v166);
        v168 = v167 - v166;
        if (v171)
        {
          goto LABEL_142;
        }

        v170 = *(v165 - 48);
        v169 = *(v165 - 40);
        v171 = __OFSUB__(v169, v170);
        v163 = v169 - v170;
        v164 = v171;
        if (v171)
        {
          goto LABEL_143;
        }

        v172 = &v54[16 * v60];
        v174 = *v172;
        v173 = *(v172 + 1);
        v171 = __OFSUB__(v173, v174);
        v175 = v173 - v174;
        if (v171)
        {
          goto LABEL_145;
        }

        v171 = __OFADD__(v163, v175);
        v176 = v163 + v175;
        if (v171)
        {
          goto LABEL_148;
        }

        if (v176 >= v168)
        {
          v194 = &v54[16 * v160 + 32];
          v196 = *v194;
          v195 = *(v194 + 1);
          v171 = __OFSUB__(v195, v196);
          v197 = v195 - v196;
          if (v171)
          {
            goto LABEL_152;
          }

          if (v163 < v197)
          {
            v160 = v60 - 2;
          }

          goto LABEL_111;
        }

        goto LABEL_90;
      }

LABEL_3:
      v52 = v224[1];
      v53 = v218;
      if (v218 >= v52)
      {
        goto LABEL_124;
      }
    }

    sub_25C7E97F4(v62, &qword_27FC16090, qword_25C8304A0);
    sub_25C7E97F4(v59, &qword_27FC16090, qword_25C8304A0);
  }

  v54 = MEMORY[0x277D84F90];
LABEL_124:
  v53 = *v210;
  if (*v210)
  {
    v60 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_160;
    }

    result = v60;
LABEL_127:
    v251 = result;
    v60 = *(result + 16);
    if (v60 < 2)
    {
    }

    while (*v224)
    {
      v203 = *(result + 16 * v60);
      v204 = result;
      v205 = *(result + 16 * (v60 - 1) + 40);
      v206 = v230;
      sub_25C80AE1C(*v224 + *(v223 + 72) * v203, *v224 + *(v223 + 72) * *(result + 16 * (v60 - 1) + 32), (*v224 + *(v223 + 72) * v205), v53);
      v230 = v206;
      if (v206)
      {
      }

      if (v205 < v203)
      {
        goto LABEL_153;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v204 = sub_25C807028(v204);
      }

      if (v60 - 2 >= *(v204 + 2))
      {
        goto LABEL_154;
      }

      v207 = &v204[16 * v60];
      *v207 = v203;
      *(v207 + 1) = v205;
      v251 = v204;
      sub_25C806F9C(v60 - 1);
      result = v251;
      v60 = *(v251 + 16);
      if (v60 <= 1)
      {
      }
    }

LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25C80AE1C(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v132 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v135 = &v132 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v147 = &v132 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v137 = &v132 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v142 = &v132 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v138 = &v132 - v25;
  MEMORY[0x28223BE20](v24);
  v145 = &v132 - v26;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v27 = *(*(v155 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v155);
  v144 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v132 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v148 = (&v132 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v143 = &v132 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v150 = &v132 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v151 = &v132 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v154 = &v132 - v42;
  result = MEMORY[0x28223BE20](v41);
  v149 = &v132 - v44;
  v46 = *(v45 + 72);
  if (!v46)
  {
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (a2 - a1 == 0x8000000000000000 && v46 == -1)
  {
    goto LABEL_89;
  }

  v47 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v46 == -1)
  {
    goto LABEL_90;
  }

  v48 = (a2 - a1) / v46;
  v158 = a1;
  v157 = a4;
  if (v48 >= v47 / v46)
  {
    v51 = v47 / v46 * v46;
    if (a4 < a2 || a2 + v51 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v51 < 1)
    {
      v91 = a4 + v51;
    }

    else
    {
      v88 = -v46;
      v140 = "evaluateWithModel:]";
      v89 = a4 + v51;
      v146 = a1;
      v134 = v12;
      v141 = v15;
      v90 = v147;
      v91 = a4 + v51;
      v92 = a3;
      v152 = a4;
      v136 = v32;
      v154 = v88;
      do
      {
        v133 = v91;
        v93 = a2;
        a2 += v88;
        v153 = a2;
        v138 = v93;
        while (1)
        {
          if (v93 <= a1)
          {
            v158 = v93;
            v156 = v133;
            goto LABEL_87;
          }

          v145 = v92;
          v149 = v89;
          v142 = v89 + v88;
          v94 = v143;
          sub_25C7E92DC(v89 + v88, v143, &qword_27FC16090, qword_25C8304A0);
          sub_25C7E92DC(a2, v148, &qword_27FC16090, qword_25C8304A0);
          sub_25C7E92DC(v94, v32, &qword_27FC16090, qword_25C8304A0);
          v95 = *&v32[*(v155 + 48)];
          v96 = [v95 date];

          v137 = v91;
          if (v96)
          {
            sub_25C82E0AC();

            v97 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
            v98 = sub_25C82E07C();
            [v97 setDateFormat_];

            v99 = sub_25C82E07C();
            v100 = [v97 dateFromString_];

            if (v100)
            {
              v101 = v135;
              sub_25C82DF8C();

              v102 = 0;
              v97 = v100;
            }

            else
            {
              v102 = 1;
              v101 = v135;
            }

            v90 = v147;

            v104 = sub_25C82DFBC();
            (*(*(v104 - 8) + 56))(v101, v102, 1, v104);
            sub_25C7E9274(v101, v90, &qword_27FC16048, qword_25C8309D0);

            v15 = v141;
          }

          else
          {
            v103 = sub_25C82DFBC();
            (*(*(v103 - 8) + 56))(v90, 1, 1, v103);
          }

          v105 = sub_25C82DEAC();
          v106 = *(v105 - 8);
          v107 = *(v106 + 8);
          v150 = v106 + 8;
          v151 = v107;
          (v107)(v32, v105);
          v108 = sub_25C82DFBC();
          v109 = *(v108 - 8);
          v110 = *(v109 + 48);
          result = v110(v90, 1, v108);
          if (result == 1)
          {
            goto LABEL_93;
          }

          v111 = v144;
          sub_25C7E92DC(v148, v144, &qword_27FC16090, qword_25C8304A0);
          v112 = *&v111[*(v155 + 48)];
          v113 = [v112 date];

          if (v113)
          {
            sub_25C82E0AC();
            v115 = v114;

            v116 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
            v117 = sub_25C82E07C();
            [v116 setDateFormat_];

            v139 = v115;
            v118 = sub_25C82E07C();
            v119 = [v116 dateFromString_];

            if (v119)
            {
              v120 = v134;
              sub_25C82DF8C();

              v121 = 0;
              v116 = v119;
            }

            else
            {
              v121 = 1;
              v120 = v134;
            }

            (*(v109 + 56))(v120, v121, 1, v108);
            v15 = v141;
            sub_25C7E9274(v120, v141, &qword_27FC16048, qword_25C8309D0);
          }

          else
          {
            (*(v109 + 56))(v15, 1, 1, v108);
          }

          (v151)(v144, v105);
          result = v110(v15, 1, v108);
          if (result == 1)
          {
            goto LABEL_94;
          }

          v122 = v15;
          v123 = v145;
          v124 = v145 + v154;
          v125 = v147;
          v126 = sub_25C82DF5C();
          v127 = *(v109 + 8);
          v128 = v122;
          v127(v122, v108);
          v127(v125, v108);
          sub_25C7E97F4(v148, &qword_27FC16090, qword_25C8304A0);
          sub_25C7E97F4(v143, &qword_27FC16090, qword_25C8304A0);
          a1 = v146;
          v129 = v152;
          a2 = v153;
          if (v126)
          {
            break;
          }

          v130 = v142;
          v91 = v142;
          v32 = v136;
          v92 = v124;
          if (v123 < v149 || v124 >= v149)
          {
            swift_arrayInitWithTakeFrontToBack();
            v92 = v124;
            v15 = v128;
          }

          else
          {
            v131 = v123 == v149;
            v15 = v128;
            if (!v131)
            {
              swift_arrayInitWithTakeBackToFront();
              v92 = v124;
            }
          }

          v89 = v91;
          v88 = v154;
          v93 = v138;
          v90 = v147;
          if (v130 <= v129)
          {
            a2 = v138;
            goto LABEL_86;
          }
        }

        v32 = v136;
        v92 = v124;
        if (v123 < v138 || v124 >= v138)
        {
          swift_arrayInitWithTakeFrontToBack();
          v92 = v124;
          v91 = v137;
          v15 = v128;
        }

        else
        {
          v131 = v123 == v138;
          v91 = v137;
          v15 = v128;
          if (!v131)
          {
            swift_arrayInitWithTakeBackToFront();
            v92 = v124;
          }
        }

        v89 = v149;
        v88 = v154;
        v90 = v147;
      }

      while (v149 > v129);
    }

LABEL_86:
    v158 = a2;
    v156 = v91;
    goto LABEL_87;
  }

  v49 = v48 * v46;
  if (a4 < a1 || a1 + v49 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
    v50 = v145;
  }

  else
  {
    v50 = v145;
    if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  v141 = a4 + v49;
  v156 = a4 + v49;
  if (v49 < 1 || a2 >= a3)
  {
LABEL_87:
    sub_25C807134(&v158, &v157, &v156);
    return 1;
  }

  v144 = "evaluateWithModel:]";
  v139 = v46;
  v140 = a3;
  while (1)
  {
    v53 = v149;
    sub_25C7E92DC(a2, v149, &qword_27FC16090, qword_25C8304A0);
    sub_25C7E92DC(a4, v154, &qword_27FC16090, qword_25C8304A0);
    v54 = v53;
    v55 = v151;
    sub_25C7E92DC(v54, v151, &qword_27FC16090, qword_25C8304A0);
    v56 = *&v55[*(v155 + 48)];
    v57 = [v56 date];

    v152 = a4;
    v153 = a2;
    if (v57)
    {
      sub_25C82E0AC();

      v58 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v59 = sub_25C82E07C();
      [v58 setDateFormat_];

      v60 = sub_25C82E07C();
      v61 = [v58 dateFromString_];

      if (v61)
      {
        v62 = v138;
        sub_25C82DF8C();

        v63 = 0;
        v58 = v61;
      }

      else
      {
        v63 = 1;
        v62 = v138;
      }

      v65 = sub_25C82DFBC();
      (*(*(v65 - 8) + 56))(v62, v63, 1, v65);
      v50 = v145;
      sub_25C7E9274(v62, v145, &qword_27FC16048, qword_25C8309D0);
    }

    else
    {
      v64 = sub_25C82DFBC();
      (*(*(v64 - 8) + 56))(v50, 1, 1, v64);
    }

    v66 = sub_25C82DEAC();
    v67 = *(v66 - 8);
    v68 = *(v67 + 8);
    v147 = (v67 + 8);
    v148 = v68;
    (v68)(v151, v66);
    v69 = sub_25C82DFBC();
    v70 = *(v69 - 8);
    v71 = *(v70 + 48);
    result = v71(v50, 1, v69);
    if (result == 1)
    {
      break;
    }

    v72 = v150;
    sub_25C7E92DC(v154, v150, &qword_27FC16090, qword_25C8304A0);
    v73 = *(v72 + *(v155 + 48));
    v74 = [v73 date];

    if (v74)
    {
      v146 = a1;
      sub_25C82E0AC();
      v76 = v75;

      v77 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v78 = sub_25C82E07C();
      [v77 setDateFormat_];

      v143 = v76;
      v79 = sub_25C82E07C();
      v80 = [v77 dateFromString_];

      if (v80)
      {
        v81 = v137;
        sub_25C82DF8C();

        v82 = 0;
        v77 = v80;
      }

      else
      {
        v82 = 1;
        v81 = v137;
      }

      v50 = v145;

      (*(v70 + 56))(v81, v82, 1, v69);
      v83 = v142;
      sub_25C7E9274(v81, v142, &qword_27FC16048, qword_25C8309D0);

      a1 = v146;
    }

    else
    {
      v83 = v142;
      (*(v70 + 56))(v142, 1, 1, v69);
      v50 = v145;
    }

    (v148)(v150, v66);
    result = v71(v83, 1, v69);
    if (result == 1)
    {
      goto LABEL_92;
    }

    v84 = sub_25C82DF5C();
    v85 = *(v70 + 8);
    v85(v83, v69);
    v85(v50, v69);
    sub_25C7E97F4(v154, &qword_27FC16090, qword_25C8304A0);
    sub_25C7E97F4(v149, &qword_27FC16090, qword_25C8304A0);
    v87 = v139;
    v86 = v140;
    if (v84)
    {
      a4 = v152;
      a2 = v153 + v139;
      if (a1 < v153 || a1 >= a2)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v153)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    else
    {
      a2 = v153;
      a4 = v152 + v139;
      if (a1 < v152 || a1 >= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v152)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v157 = a4;
    }

    a1 += v87;
    v158 = a1;
    if (a4 >= v141 || a2 >= v86)
    {
      goto LABEL_87;
    }
  }

LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  return result;
}

void sub_25C80BEA0(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_25C7E98B0(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_25C80C658(v4);
  *a1 = v2;
}

uint64_t sub_25C80BF18(unint64_t a1, void *a2, id a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  v47 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_47:
    v13 = sub_25C82E43C();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = v12;
  if (!v13)
  {
    v25 = MEMORY[0x277D84F90];
    v47 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_24;
  }

  v14 = 0;
  v45 = a1 & 0xFFFFFFFFFFFFFF8;
  v46 = a1 & 0xC000000000000001;
  v44 = v10;
  do
  {
    if (v46)
    {
      v15 = MEMORY[0x25F88F6D0](v14, a1);
    }

    else
    {
      if (v14 >= *(v45 + 16))
      {
        goto LABEL_44;
      }

      v15 = *(a1 + 8 * v14 + 32);
    }

    v16 = v15;
    v10 = (v14 + 1);
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v17 = [v15 modelName];
    if (!v17)
    {

      goto LABEL_6;
    }

    v18 = a1;
    v19 = a3;
    v20 = v17;
    v21 = sub_25C82E0AC();
    v23 = v22;

    a3 = v19;
    v24 = v21 == a2 && v23 == v19;
    if (v24)
    {
    }

    else
    {
      v12 = sub_25C82E4EC();

      if ((v12 & 1) == 0)
      {

        a1 = v18;
        goto LABEL_6;
      }
    }

    sub_25C82E3DC();
    v12 = *(v47 + 16);
    sub_25C82E3FC();
    sub_25C82E40C();
    sub_25C82E3EC();
    a1 = v18;
LABEL_6:
    ++v14;
    v24 = v10 == v13;
    v10 = v44;
  }

  while (!v24);
  v25 = v47;
  v47 = MEMORY[0x277D84F90];
  if (v25 < 0)
  {
LABEL_48:
    v12 = sub_25C82E43C();
    v26 = v43;
    if (!v12)
    {
      goto LABEL_49;
    }

LABEL_26:
    v27 = 0;
    v45 = v12;
    v46 = v25 & 0xC000000000000001;
    v44 = "evaluateWithModel:]";
    while (2)
    {
      if (v46)
      {
        v29 = MEMORY[0x25F88F6D0](v27, v25);
      }

      else
      {
        if (v27 >= *(v25 + 16))
        {
          goto LABEL_46;
        }

        v29 = *(v25 + 8 * v27 + 32);
      }

      a2 = v29;
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_45;
      }

      v31 = [v29 evaluationDate];
      if (v31)
      {
        v32 = v31;
        sub_25C82E0AC();

        v33 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        v34 = sub_25C82E07C();
        [v33 setDateFormat_];

        v35 = sub_25C82E07C();
        a3 = [v33 dateFromString_];

        if (a3)
        {
          sub_25C82DF8C();

          v36 = 0;
          v33 = a3;
        }

        else
        {
          v36 = 1;
        }

        v37 = sub_25C82DFBC();
        v38 = *(v37 - 8);
        (*(v38 + 56))(v10, v36, 1, v37);
        v26 = v43;
        sub_25C80E758(v10, v43);
        v39 = *(v38 + 48);
        a1 = v38 + 48;
        if (v39(v26, 1, v37) == 1)
        {

          v12 = v45;
LABEL_28:
          sub_25C80E6F0(v26);
        }

        else
        {
          sub_25C80E6F0(v26);
          a1 = &v47;
          sub_25C82E3DC();
          v40 = *(v47 + 16);
          sub_25C82E3FC();
          sub_25C82E40C();
          sub_25C82E3EC();
          v12 = v45;
        }

        ++v27;
        if (v30 == v12)
        {
          v41 = v47;
          goto LABEL_50;
        }

        continue;
      }

      break;
    }

    v28 = sub_25C82DFBC();
    (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
    goto LABEL_28;
  }

LABEL_24:
  if ((v25 & 0x4000000000000000) != 0)
  {
    goto LABEL_48;
  }

  v12 = *(v25 + 16);
  v26 = v43;
  if (v12)
  {
    goto LABEL_26;
  }

LABEL_49:
  v41 = MEMORY[0x277D84F90];
LABEL_50:

  v47 = v41;
  sub_25C80BEA0(&v47);
  return v47;
}

uint64_t sub_25C80C424(void **a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = *a1;
  v12 = *a2;
  v13 = [v11 evaluationDate];
  if (v13)
  {
    v14 = v13;
    sub_25C82E0AC();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  sub_25C82B668(v16, v10);

  v17 = sub_25C82DFBC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  result = v19(v10, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v21 = [v12 evaluationDate];
    if (v21)
    {
      v22 = v21;
      sub_25C82E0AC();
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    sub_25C82B668(v24, v8);

    result = v19(v8, 1, v17);
    if (result != 1)
    {
      v25 = sub_25C82DF6C();
      v26 = *(v18 + 8);
      v26(v8, v17);
      v26(v10, v17);
      return v25 & 1;
    }
  }

  __break(1u);
  return result;
}

void sub_25C80C658(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_25C82E4CC();
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
        sub_25C80E7C8();
        v6 = sub_25C82E1FC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_25C80CC9C(v8, v9, a1, v4);
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
    sub_25C80C75C(0, v2, 1, a1);
  }
}

void sub_25C80C75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v58 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v58 - v17;
  MEMORY[0x28223BE20](v16);
  v73 = &v58 - v19;
  v59 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v72 = "evaluateWithModel:]";
    v64 = v15;
    v65 = v20;
    v21 = (v20 + 8 * a3 - 8);
    v22 = a1 - a3;
    v63 = v18;
LABEL_5:
    v61 = v21;
    v62 = a3;
    v23 = *(v65 + 8 * a3);
    v60 = v22;
    v24 = v22;
    while (1)
    {
      v25 = *v21;
      v26 = v23;
      v74 = v25;
      v27 = [v26 evaluationDate];
      if (!v27)
      {
        break;
      }

      v28 = v27;
      v69 = v26;
      v70 = v24;
      sub_25C82E0AC();

      v29 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v30 = sub_25C82E07C();
      [v29 setDateFormat_];

      v31 = sub_25C82E07C();
      v32 = [v29 dateFromString_];

      if (v32)
      {
        sub_25C82DF8C();

        v33 = 0;
        v29 = v32;
      }

      else
      {
        v33 = 1;
      }

      v34 = sub_25C82DFBC();
      v35 = *(v34 - 8);
      v36 = v35;
      v37 = *(v35 + 56);
      v71 = v35 + 56;
      v37(v18, v33, 1, v34);
      v38 = v73;
      sub_25C80E758(v18, v73);

      v39 = *(v36 + 48);
      if (v39(v38, 1, v34) == 1)
      {
        goto LABEL_24;
      }

      v40 = [v74 evaluationDate];
      if (!v40)
      {
        v37(v64, 1, 1, v34);
LABEL_22:
        __break(1u);
        break;
      }

      v41 = v40;
      v66 = v21;
      v68 = v37;
      sub_25C82E0AC();
      v43 = v42;

      v44 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v45 = sub_25C82E07C();
      [v44 setDateFormat_];

      v67 = v43;
      v46 = sub_25C82E07C();
      v47 = [v44 dateFromString_];

      if (v47)
      {
        sub_25C82DF8C();

        v48 = 0;
        v44 = v47;
      }

      else
      {
        v48 = 1;
      }

      v49 = v66;

      v68(v12, v48, 1, v34);
      v50 = v64;
      sub_25C80E758(v12, v64);

      if (v39(v50, 1, v34) == 1)
      {
        goto LABEL_22;
      }

      v51 = v73;
      v52 = sub_25C82DF6C();
      v53 = *(v36 + 8);
      v53(v50, v34);
      v53(v51, v34);

      v18 = v63;
      v54 = v70;
      if (v52)
      {
        if (!v65)
        {
          goto LABEL_25;
        }

        v55 = *v49;
        v23 = v49[1];
        *v49 = v23;
        v49[1] = v55;
        v21 = v49 - 1;
        v56 = __CFADD__(v54, 1);
        v24 = v54 + 1;
        if (!v56)
        {
          continue;
        }
      }

      a3 = v62 + 1;
      v21 = v61 + 1;
      v22 = v60 - 1;
      if (v62 + 1 == v59)
      {
        return;
      }

      goto LABEL_5;
    }

    v57 = sub_25C82DFBC();
    (*(*(v57 - 8) + 56))(v73, 1, 1, v57);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

void sub_25C80CC9C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v160 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v174 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v175 = &v158 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v182 = &v158 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v166 = &v158 - v20;
  MEMORY[0x28223BE20](v19);
  v170 = a3;
  v171 = &v158 - v24;
  v25 = *(a3 + 8);
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_112:
    a3 = *v160;
    if (*v160)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_145;
      }

      goto LABEL_114;
    }

    goto LABEL_159;
  }

  v165 = v23;
  v164 = v22;
  v173 = v21;
  v159 = a4;
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v183 = "evaluateWithModel:]";
  while (1)
  {
    v169 = v27;
    v161 = v26;
    if (v26 + 1 >= v25)
    {
      v25 = v26 + 1;
      goto LABEL_30;
    }

    v28 = v26;
    v29 = *v170;
    v30 = *(*v170 + 8 * (v26 + 1));
    v185 = *(*v170 + 8 * v26);
    v31 = v185;
    v186 = v30;
    v32 = v30;
    a3 = v31;
    LODWORD(v168) = sub_25C80C424(&v186, &v185);
    if (v5)
    {

      return;
    }

    v33 = (v26 + 2);
    v176 = 8 * v28;
    v34 = (v29 + 8 * v28 + 16);
    v167 = 0;
    v172 = v25;
    do
    {
      if (v25 == v33)
      {
        goto LABEL_20;
      }

      v35 = *(v34 - 1);
      v36 = *v34;
      v184 = v35;
      v37 = [v36 evaluationDate];
      if (!v37)
      {
        goto LABEL_153;
      }

      v38 = v37;
      sub_25C82E0AC();

      v39 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v40 = sub_25C82E07C();
      [v39 setDateFormat_];

      v41 = sub_25C82E07C();
      v42 = [v39 dateFromString_];

      v43 = v166;
      v178 = v34;
      v179 = v33;
      if (v42)
      {
        sub_25C82DF8C();

        v44 = 0;
        v39 = v42;
      }

      else
      {
        v44 = 1;
      }

      v45 = sub_25C82DFBC();
      v46 = *(v45 - 1);
      v47 = v46[7];
      v180 = v46 + 7;
      v181 = v47;
      v47(v43, v44, 1, v45);
      v48 = v171;
      sub_25C80E758(v43, v171);

      v49 = v46[6];
      if (v49(v48, 1, v45) == 1)
      {
        goto LABEL_154;
      }

      v50 = [v184 evaluationDate];
      if (!v50)
      {
        goto LABEL_151;
      }

      v51 = v50;
      sub_25C82E0AC();
      v53 = v52;

      v54 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v55 = sub_25C82E07C();
      [v54 setDateFormat_];

      v177 = v53;
      v56 = sub_25C82E07C();
      v57 = [v54 dateFromString_];

      if (v57)
      {
        v58 = v164;
        sub_25C82DF8C();

        v59 = 0;
        v54 = v57;
      }

      else
      {
        v59 = 1;
        v58 = v164;
      }

      v181(v58, v59, 1, v45);
      v60 = v58;
      v61 = v165;
      sub_25C80E758(v60, v165);

      if (v49(v61, 1, v45) == 1)
      {
LABEL_152:
        __break(1u);
LABEL_153:
        v157 = sub_25C82DFBC();
        (*(*(v157 - 8) + 56))(v171, 1, 1, v157);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
        return;
      }

      v62 = v171;
      a3 = sub_25C82DF6C() & 1;
      v63 = v46[1];
      v63(v61, v45);
      v63(v62, v45);

      v33 = v179 + 1;
      v34 = v178 + 1;
      v5 = v167;
      v27 = v169;
      v25 = v172;
    }

    while ((v168 & 1) == a3);
    v25 = v179;
LABEL_20:
    if (v168)
    {
      break;
    }

LABEL_30:
    v69 = v170[1];
    if (v25 >= v69)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v25, v161))
    {
      goto LABEL_141;
    }

    if (v25 - v161 >= v159)
    {
LABEL_40:
      v26 = v25;
    }

    else
    {
      if (__OFADD__(v161, v159))
      {
        goto LABEL_142;
      }

      if (v161 + v159 >= v69)
      {
        v70 = v170[1];
      }

      else
      {
        v70 = v161 + v159;
      }

      if (v70 < v161)
      {
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      v71 = v161;
      if (v25 == v70)
      {
        v26 = v25;
        goto LABEL_42;
      }

      v167 = v5;
      v176 = *v170;
      v117 = v176 + 8 * v25 - 8;
      v118 = v161 - v25;
      v119 = v173;
      v162 = v70;
      do
      {
        v172 = v25;
        v120 = *(v176 + 8 * v25);
        v163 = v118;
        v121 = v118;
        v168 = v117;
        v122 = v117;
        do
        {
          v123 = *v122;
          v45 = v120;
          v184 = v123;
          v124 = [v45 evaluationDate];
          if (!v124)
          {
            goto LABEL_148;
          }

          v125 = v124;
          v179 = v45;
          sub_25C82E0AC();

          v126 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v127 = sub_25C82E07C();
          [v126 setDateFormat_];

          v128 = sub_25C82E07C();
          v129 = [v126 dateFromString_];

          if (v129)
          {
            v130 = v175;
            sub_25C82DF8C();

            v131 = 0;
            v126 = v129;
          }

          else
          {
            v131 = 1;
            v130 = v175;
          }

          v45 = sub_25C82DFBC();
          v132 = *(v45 - 1);
          v133 = v132[7];
          v180 = v132 + 7;
          v181 = v133;
          v133(v130, v131, 1, v45);
          v134 = v182;
          sub_25C80E758(v130, v182);

          v135 = v132[6];
          if (v135(v134, 1, v45) == 1)
          {
            goto LABEL_149;
          }

          v136 = [v184 evaluationDate];
          if (!v136)
          {
            v181(v119, 1, 1, v45);
LABEL_147:
            __break(1u);
LABEL_148:
            v156 = sub_25C82DFBC();
            (*(*(v156 - 8) + 56))(v182, 1, 1, v156);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            v181(v165, 1, 1, v45);
            goto LABEL_152;
          }

          v137 = v136;
          v177 = v121;
          sub_25C82E0AC();
          v139 = v138;

          v140 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v141 = sub_25C82E07C();
          [v140 setDateFormat_];

          v178 = v139;
          v142 = sub_25C82E07C();
          v143 = [v140 dateFromString_];

          if (v143)
          {
            v144 = v174;
            sub_25C82DF8C();

            v145 = 0;
            v140 = v143;
          }

          else
          {
            v145 = 1;
            v144 = v174;
          }

          v181(v144, v145, 1, v45);
          v146 = v144;
          v119 = v173;
          sub_25C80E758(v146, v173);

          if (v135(v119, 1, v45) == 1)
          {
            goto LABEL_147;
          }

          v147 = v182;
          a3 = sub_25C82DF6C();
          v148 = v132[1];
          v148(v119, v45);
          v148(v147, v45);

          if ((a3 & 1) == 0)
          {
            break;
          }

          v149 = v177;
          if (!v176)
          {
            goto LABEL_150;
          }

          v150 = *v122;
          v120 = *(v122 + 8);
          *v122 = v120;
          *(v122 + 8) = v150;
          v122 -= 8;
          v151 = __CFADD__(v149, 1);
          v121 = v149 + 1;
        }

        while (!v151);
        v25 = v172 + 1;
        v117 = v168 + 8;
        v118 = v163 - 1;
        v26 = v162;
      }

      while (v172 + 1 != v162);
      v5 = v167;
      v27 = v169;
    }

    v71 = v161;
LABEL_42:
    if (v26 < v71)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_25C7E6F4C(0, *(v27 + 2) + 1, 1, v27);
    }

    a3 = *(v27 + 2);
    v72 = *(v27 + 3);
    v73 = a3 + 1;
    if (a3 >= v72 >> 1)
    {
      v27 = sub_25C7E6F4C((v72 > 1), a3 + 1, 1, v27);
    }

    *(v27 + 2) = v73;
    v74 = &v27[16 * a3];
    *(v74 + 4) = v161;
    *(v74 + 5) = v26;
    v75 = *v160;
    if (!*v160)
    {
      goto LABEL_158;
    }

    if (a3)
    {
      while (1)
      {
        v76 = v73 - 1;
        if (v73 >= 4)
        {
          break;
        }

        if (v73 == 3)
        {
          v77 = *(v27 + 4);
          v78 = *(v27 + 5);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_62:
          if (v80)
          {
            goto LABEL_129;
          }

          v93 = &v27[16 * v73];
          v95 = *v93;
          v94 = *(v93 + 1);
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_132;
          }

          v99 = &v27[16 * v76 + 32];
          v101 = *v99;
          v100 = *(v99 + 1);
          v87 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v87)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v97, v102))
          {
            goto LABEL_136;
          }

          if (v97 + v102 >= v79)
          {
            if (v79 < v102)
            {
              v76 = v73 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v103 = &v27[16 * v73];
        v105 = *v103;
        v104 = *(v103 + 1);
        v87 = __OFSUB__(v104, v105);
        v97 = v104 - v105;
        v98 = v87;
LABEL_76:
        if (v98)
        {
          goto LABEL_131;
        }

        v106 = &v27[16 * v76];
        v108 = *(v106 + 4);
        v107 = *(v106 + 5);
        v87 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v87)
        {
          goto LABEL_134;
        }

        if (v109 < v97)
        {
          goto LABEL_3;
        }

LABEL_83:
        a3 = v76 - 1;
        if (v76 - 1 >= v73)
        {
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

        if (!*v170)
        {
          goto LABEL_155;
        }

        v114 = *&v27[16 * a3 + 32];
        v115 = *&v27[16 * v76 + 40];
        sub_25C80DBC4((*v170 + 8 * v114), (*v170 + 8 * *&v27[16 * v76 + 32]), (*v170 + 8 * v115), v75);
        if (v5)
        {
          goto LABEL_122;
        }

        if (v115 < v114)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_25C807028(v27);
        }

        if (a3 >= *(v27 + 2))
        {
          goto LABEL_126;
        }

        v116 = &v27[16 * a3];
        *(v116 + 4) = v114;
        *(v116 + 5) = v115;
        v187 = v27;
        sub_25C806F9C(v76);
        v27 = v187;
        v73 = *(v187 + 2);
        if (v73 <= 1)
        {
          goto LABEL_3;
        }
      }

      v81 = &v27[16 * v73 + 32];
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_127;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_128;
      }

      v88 = &v27[16 * v73];
      v90 = *v88;
      v89 = *(v88 + 1);
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_130;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_133;
      }

      if (v92 >= v84)
      {
        v110 = &v27[16 * v76 + 32];
        v112 = *v110;
        v111 = *(v110 + 1);
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_137;
        }

        if (v79 < v113)
        {
          v76 = v73 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v25 = v170[1];
    if (v26 >= v25)
    {
      goto LABEL_112;
    }
  }

  v64 = v161;
  if (v25 >= v161)
  {
    if (v161 < v25)
    {
      v65 = 8 * v25 - 8;
      v66 = v25;
      while (1)
      {
        if (v64 != --v66)
        {
          v68 = *v170;
          if (!*v170)
          {
            goto LABEL_156;
          }

          v67 = *(v68 + v176);
          *(v68 + v176) = *(v68 + v65);
          *(v68 + v65) = v67;
        }

        ++v64;
        v65 -= 8;
        v176 += 8;
        if (v64 >= v66)
        {
          goto LABEL_30;
        }
      }
    }

    goto LABEL_30;
  }

LABEL_144:
  __break(1u);
LABEL_145:
  v27 = sub_25C807028(v27);
LABEL_114:
  v187 = v27;
  v152 = *(v27 + 2);
  if (v152 >= 2)
  {
    while (*v170)
    {
      v153 = *&v27[16 * v152];
      v154 = *&v27[16 * v152 + 24];
      sub_25C80DBC4((*v170 + 8 * v153), (*v170 + 8 * *&v27[16 * v152 + 16]), (*v170 + 8 * v154), a3);
      if (v5)
      {
        goto LABEL_122;
      }

      if (v154 < v153)
      {
        goto LABEL_138;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_25C807028(v27);
      }

      if (v152 - 2 >= *(v27 + 2))
      {
        goto LABEL_139;
      }

      v155 = &v27[16 * v152];
      *v155 = v153;
      *(v155 + 1) = v154;
      v187 = v27;
      sub_25C806F9C(v152 - 1);
      v27 = v187;
      v152 = *(v187 + 2);
      if (v152 <= 1)
      {
        goto LABEL_122;
      }
    }

    goto LABEL_157;
  }

LABEL_122:
}

uint64_t sub_25C80DBC4(id *a1, id *a2, char *a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v105 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v110 = &v105 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v118 = &v105 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v108 = &v105 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v109 = (&v105 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v111 = (&v105 - v25);
  MEMORY[0x28223BE20](v24);
  v26 = a2;
  v117 = &v105 - v27;
  v28 = a2 - a1;
  v29 = v28 / 8;
  v30 = a3 - v26;
  v31 = a3 - v26 + 7;
  if (a3 - v26 >= 0)
  {
    v31 = a3 - v26;
  }

  v32 = v31 >> 3;
  if (v29 >= v31 >> 3)
  {
    if (a4 != v26 || &v26[v32] <= a4)
    {
      v66 = v26;
      memmove(a4, v26, 8 * v32);
      v26 = v66;
    }

    v122 = &a4[v32];
    if (v30 < 8 || v26 <= a1)
    {
      v65 = v26;
    }

    else
    {
      v117 = "evaluateWithModel:]";
      v121 = a4;
      v115 = a1;
      v106 = v12;
      v107 = v15;
      do
      {
        v116 = v26;
        v67 = v26 - 1;
        v68 = (a3 - 8);
        v69 = v122;
        v109 = v67;
        while (1)
        {
          v71 = *(v69 - 1);
          v70 = v69 - 1;
          v72 = *v67;
          v73 = v71;
          v119 = v72;
          v74 = [v73 evaluationDate];
          if (!v74)
          {
            goto LABEL_66;
          }

          v75 = v74;
          v113 = v73;
          sub_25C82E0AC();

          v76 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v77 = sub_25C82E07C();
          [v76 setDateFormat_];

          v78 = sub_25C82E07C();
          v79 = [v76 dateFromString_];

          v120 = v68;
          v111 = v70;
          if (v79)
          {
            v80 = v110;
            sub_25C82DF8C();

            v81 = 0;
            v76 = v79;
          }

          else
          {
            v81 = 1;
            v80 = v110;
          }

          v30 = sub_25C82DFBC();
          v82 = *(v30 - 8);
          v83 = v82[7];
          v83(v80, v81, 1, v30);
          v84 = v118;
          sub_25C80E758(v80, v118);

          v85 = v82[6];
          result = v85(v84, 1, v30);
          if (result == 1)
          {
            goto LABEL_67;
          }

          v114 = v83;
          v87 = [v119 evaluationDate];
          if (!v87)
          {
            goto LABEL_64;
          }

          v88 = v87;
          sub_25C82E0AC();
          v90 = v89;

          v91 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v92 = sub_25C82E07C();
          [v91 setDateFormat_];

          v112 = v90;
          v93 = sub_25C82E07C();
          v94 = [v91 dateFromString_];

          if (v94)
          {
            v95 = v106;
            sub_25C82DF8C();

            v96 = 0;
            v91 = v94;
          }

          else
          {
            v96 = 1;
            v95 = v106;
          }

          v114(v95, v96, 1, v30);
          v97 = v107;
          sub_25C80E758(v95, v107);

          if (v85(v97, 1, v30) == 1)
          {
LABEL_65:
            __break(1u);
LABEL_66:
            v104 = sub_25C82DFBC();
            result = (*(*(v104 - 8) + 56))(v118, 1, 1, v104);
LABEL_67:
            __break(1u);
            return result;
          }

          v98 = v118;
          v99 = sub_25C82DF6C();
          v100 = v82[1];
          v100(v97, v30);
          v100(v98, v30);

          a4 = v121;
          if (v99)
          {
            break;
          }

          v101 = v120;
          v67 = v109;
          v69 = v111;
          if (v120 + 1 != v122)
          {
            *v120 = *v111;
          }

          v68 = v101 - 1;
          v122 = v69;
          if (v69 <= a4)
          {
            v122 = v69;
            v65 = v116;
            goto LABEL_56;
          }
        }

        a3 = v120;
        v102 = v115;
        v65 = v109;
        if (v120 + 1 != v116)
        {
          *v120 = *v109;
        }

        if (v122 <= a4)
        {
          break;
        }

        v26 = v65;
      }

      while (v65 > v102);
    }
  }

  else
  {
    if (a4 != a1 || &a1[v29] <= a4)
    {
      v30 = v26;
      memmove(a4, a1, 8 * v29);
      v26 = v30;
    }

    v122 = &a4[v29];
    if (v28 >= 8 && v26 < a3)
    {
      v118 = "evaluateWithModel:]";
      v120 = a3;
      while (1)
      {
        v116 = v26;
        v33 = *a4;
        v34 = *v26;
        v119 = v33;
        v35 = [v34 evaluationDate];
        if (!v35)
        {
LABEL_62:
          v103 = sub_25C82DFBC();
          (*(*(v103 - 8) + 56))(v117, 1, 1, v103);
LABEL_63:
          __break(1u);
LABEL_64:
          v114(v107, 1, 1, v30);
          goto LABEL_65;
        }

        v36 = v35;
        sub_25C82E0AC();

        v37 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        v38 = sub_25C82E07C();
        [v37 setDateFormat_];

        v39 = sub_25C82E07C();
        v40 = [v37 dateFromString_];

        v121 = a4;
        v114 = v34;
        v115 = a1;
        if (v40)
        {
          v41 = v111;
          sub_25C82DF8C();

          v42 = 0;
          v37 = v40;
        }

        else
        {
          v42 = 1;
          v41 = v111;
        }

        v30 = sub_25C82DFBC();
        v43 = *(v30 - 8);
        v44 = v43[7];
        v44(v41, v42, 1, v30);
        v45 = v41;
        v46 = v117;
        sub_25C80E758(v45, v117);

        v47 = v43[6];
        if (v47(v46, 1, v30) == 1)
        {
          goto LABEL_63;
        }

        v48 = [v119 evaluationDate];
        if (!v48)
        {
          v44(v109, 1, 1, v30);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v49 = v48;
        v113 = v44;
        sub_25C82E0AC();
        v51 = v50;

        v52 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        v53 = sub_25C82E07C();
        [v52 setDateFormat_];

        v112 = v51;
        v54 = sub_25C82E07C();
        v55 = [v52 dateFromString_];

        if (v55)
        {
          v56 = v108;
          sub_25C82DF8C();

          v57 = 0;
          v52 = v55;
        }

        else
        {
          v57 = 1;
          v56 = v108;
        }

        v113(v56, v57, 1, v30);
        v58 = v109;
        sub_25C80E758(v56, v109);

        if (v47(v58, 1, v30) == 1)
        {
          goto LABEL_61;
        }

        v59 = v117;
        v60 = sub_25C82DF6C();
        v61 = v43[1];
        v61(v58, v30);
        v61(v59, v30);

        a4 = v121;
        if ((v60 & 1) == 0)
        {
          break;
        }

        v62 = v115;
        v63 = v116;
        v26 = v116 + 1;
        v64 = v120;
        if (v115 != v116)
        {
          goto LABEL_24;
        }

LABEL_25:
        a1 = v62 + 1;
        if (a4 >= v122 || v26 >= v64)
        {
          goto LABEL_27;
        }
      }

      v63 = v121;
      v62 = v115;
      a4 = v121 + 1;
      v26 = v116;
      v64 = v120;
      if (v115 == v121)
      {
        goto LABEL_25;
      }

LABEL_24:
      *v62 = *v63;
      goto LABEL_25;
    }

LABEL_27:
    v65 = a1;
  }

LABEL_56:
  if (v65 != a4 || v65 >= (a4 + ((v122 - a4 + (v122 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v65, a4, 8 * (v122 - a4));
  }

  return 1;
}

uint64_t sub_25C80E6F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25C80E758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25C80E7C8()
{
  result = qword_27FC16218;
  if (!qword_27FC16218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FC16218);
  }

  return result;
}

id sub_25C80E88C(void *a1, void *a2)
{
  if (([a1 hasStreamFilter] & 1) == 0)
  {
    sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v5 = qword_281559838;
    sub_25C82E00C();
    v6 = 29;
    goto LABEL_10;
  }

  if (([a2 respondsToSelector_] & 1) == 0 || (result = objc_msgSend(a2, sel_evaluateWithModel_, a1)) == 0)
  {
    sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v5 = qword_281559838;
    sub_25C82E00C();
    v6 = 30;
LABEL_10:

    sub_25C7E7DEC();
    swift_allocError();
    *v7 = v6;
    return swift_willThrow();
  }

  return result;
}

id sub_25C80EA2C(uint64_t a1, void *a2)
{
  v47 = sub_25C82DFBC();
  v45 = *(v47 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(a1 + 16) queryDataWithPredicate_];
  if (result)
  {
    v8 = result;
    sub_25C80EE70();
    v9 = sub_25C82E1DC();

    if (v9 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25C82E43C())
    {
      v11 = 0;
      v41 = v9;
      v42 = v9 & 0xC000000000000001;
      v38 = v9 + 32;
      v39 = v9 & 0xFFFFFFFFFFFFFF8;
      v44 = v45 + 16;
      v46 = (v45 + 8);
      v40 = i;
      while (1)
      {
        if (v42)
        {
          v12 = MEMORY[0x25F88F6D0](v11, v9);
        }

        else
        {
          if (v11 >= *(v39 + 16))
          {
            goto LABEL_33;
          }

          v12 = *(v38 + 8 * v11);
        }

        v50 = v12;
        v13 = __OFADD__(v11++, 1);
        if (v13)
        {
          break;
        }

        v14 = [v50 metadata];
        if (v14)
        {
          v15 = v14;
          v43 = v11;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
          v9 = sub_25C82E1DC();

          v16 = sub_25C812AA0(v9);

          v49 = *(v16 + 16);
          if (v49)
          {
            v17 = 0;
            v48 = v16 + 32;
            do
            {
              if (v17 >= *(v16 + 16))
              {
                __break(1u);
LABEL_30:
                __break(1u);
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

              v21 = *(v48 + 8 * v17);

              v22 = [v50 startDate];
              sub_25C82DF8C();

              v23 = *a2;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v51 = *a2;
              v25 = v51;
              *a2 = 0x8000000000000000;
              v27 = sub_25C813BA8(v6);
              v28 = v25[2];
              v29 = (v26 & 1) == 0;
              v30 = v28 + v29;
              if (__OFADD__(v28, v29))
              {
                goto LABEL_30;
              }

              v9 = v26;
              if (v25[3] >= v30)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v33 = v51;
                  if (v26)
                  {
                    goto LABEL_15;
                  }
                }

                else
                {
                  sub_25C804EA8();
                  v33 = v51;
                  if (v9)
                  {
                    goto LABEL_15;
                  }
                }
              }

              else
              {
                sub_25C7FC488(v30, isUniquelyReferenced_nonNull_native);
                v31 = sub_25C813BA8(v6);
                if ((v9 & 1) != (v32 & 1))
                {
                  result = sub_25C82E51C();
                  __break(1u);
                  return result;
                }

                v27 = v31;
                v33 = v51;
                if (v9)
                {
LABEL_15:
                  v18 = v33[7];
                  v19 = *(v18 + 8 * v27);
                  *(v18 + 8 * v27) = v21;

                  (*v46)(v6, v47);
                  goto LABEL_16;
                }
              }

              v33[(v27 >> 6) + 8] |= 1 << v27;
              v34 = v45;
              v9 = v47;
              (*(v45 + 16))(v33[6] + *(v45 + 72) * v27, v6, v47);
              *(v33[7] + 8 * v27) = v21;
              (*(v34 + 8))(v6, v9);
              v35 = v33[2];
              v13 = __OFADD__(v35, 1);
              v36 = v35 + 1;
              if (v13)
              {
                goto LABEL_31;
              }

              v33[2] = v36;
LABEL_16:
              ++v17;
              v20 = *a2;
              *a2 = v33;
            }

            while (v49 != v17);
          }

          i = v40;
          v9 = v41;
          v11 = v43;
        }

        if (v11 == i)
        {
        }
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }
  }

  return result;
}

unint64_t sub_25C80EE70()
{
  result = qword_2815594A0;
  if (!qword_2815594A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2815594A0);
  }

  return result;
}

uint64_t sub_25C80EEBC(unint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v7 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v6))
  {
    v8 = v7;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = a3;
    *v10 = a3;
    v11 = a3;
    _os_log_impl(&dword_25C7D2000, v8, v6, "Start compareModelEvaluationTimeseries with selection policy: %@", v9, 0xCu);
    sub_25C81189C(v10);
    MEMORY[0x25F890110](v10, -1, -1);
    MEMORY[0x25F890110](v9, -1, -1);
  }

  v12 = &selRef__setBiomeFilter_fromInclusive_toDate_toInclusive_;
  v13 = [a3 minimumNumberOfSamples];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 integerValue];

    v16 = [a3 minimumNumberOfEvaluations];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 integerValue];

      v19 = sub_25C82E25C();
      v20 = qword_281559838;
      if (os_log_type_enabled(qword_281559838, v19))
      {
        v21 = v20;
        v22 = swift_slowAlloc();
        *v22 = 134218240;
        *(v22 + 4) = v15;
        *(v22 + 12) = 2048;
        *(v22 + 14) = v18;
        _os_log_impl(&dword_25C7D2000, v21, v19, "Evaluating based on both minimum number of samples: %ld and minimum number of evaluations: %ld", v22, 0x16u);
        MEMORY[0x25F890110](v22, -1, -1);
      }

      if (a1 >> 62)
      {
        v23 = sub_25C82E43C();
      }

      else
      {
        v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v23 < v18)
      {
        goto LABEL_16;
      }

      if (a2 >> 62)
      {
        if (sub_25C82E43C() >= v18)
        {
          goto LABEL_14;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v18)
      {
LABEL_14:
        sub_25C810650(a1);
        if (v24 < v15)
        {
          goto LABEL_16;
        }

        sub_25C810650(a2);
        if (v25 < v15)
        {
          goto LABEL_16;
        }

LABEL_70:
        sub_25C82E25C();
        v92 = qword_281559838;
        sub_25C82E00C();

        sub_25C810784(a1, a2);
        v95 = v93;
        v96 = v94;
        if (v93 && v94)
        {
          v97 = v93;
          v98 = v96;
          v12 = [a3 modelSelectionParameters];
          sub_25C7E96B8(0, &qword_27FC16170, off_2799B97A0);
          v99 = sub_25C82E1DC();

          LOBYTE(v12) = sub_25C80FAD4(v97, v98, v99);

          return v12 & 1;
        }

        sub_25C82E25C();
        v100 = qword_281559838;
        sub_25C82E00C();

        goto LABEL_61;
      }

LABEL_16:
      v26 = sub_25C82E25C();
      v27 = qword_281559838;
      if (os_log_type_enabled(qword_281559838, v26))
      {
        v28 = v27;
        v29 = swift_slowAlloc();
        *v29 = 134218240;
        *(v29 + 4) = v15;
        *(v29 + 12) = 2048;
        *(v29 + 14) = v18;
        _os_log_impl(&dword_25C7D2000, v28, v26, "modelTimeseries or otherModelTimeseries did not have enough evaluations or samples to satisfy requirements. Minimum number of samples: %ld and minimum number of evaluations: %ld", v29, 0x16u);
        MEMORY[0x25F890110](v29, -1, -1);
      }

      v30 = sub_25C82E25C();
      v31 = qword_281559838;
      if (os_log_type_enabled(qword_281559838, v30))
      {

        v32 = v31;
        v33 = swift_slowAlloc();
        *v33 = 134218240;
        if (a1 >> 62)
        {
          v34 = sub_25C82E43C();
        }

        else
        {
          v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v33 + 4) = v34;
        *(v33 + 12) = 2048;
        sub_25C810650(a1);
        *(v33 + 14) = v76;

        _os_log_impl(&dword_25C7D2000, v32, v30, "modelTimeseries number of evaluations: %ld, number of samples: %ld", v33, 0x16u);
        MEMORY[0x25F890110](v33, -1, -1);
      }

      v77 = sub_25C82E25C();
      v78 = qword_281559838;
      if (!os_log_type_enabled(qword_281559838, v77))
      {
        goto LABEL_60;
      }

      v55 = v78;
      v56 = swift_slowAlloc();
      *v56 = 134218240;
      if (a2 >> 62)
      {
        v79 = sub_25C82E43C();
      }

      else
      {
        v79 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v56 + 4) = v79;
      *(v56 + 12) = 2048;
      sub_25C810650(a2);
      *(v56 + 14) = v80;

      v58 = "otherModelTimeseries number of evaluations: %ld, number of samples: %ld";
      v81 = v77;
      v82 = v55;
      v83 = v56;
      v84 = 22;
LABEL_59:
      _os_log_impl(&dword_25C7D2000, v82, v81, v58, v83, v84);
      MEMORY[0x25F890110](v56, -1, -1);

LABEL_60:
      sub_25C82E25C();
      v89 = qword_281559838;
      sub_25C82E00C();

LABEL_61:
      LOBYTE(v12) = 0;
      return v12 & 1;
    }
  }

  v35 = [a3 minimumNumberOfSamples];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 integerValue];

    v38 = sub_25C82E25C();
    v39 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v38))
    {
      v40 = v39;
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = v37;
      _os_log_impl(&dword_25C7D2000, v40, v38, "Evaluating based on minimum number of samples: %ld", v41, 0xCu);
      MEMORY[0x25F890110](v41, -1, -1);
    }

    sub_25C810650(a1);
    if (v42 >= v37)
    {
      sub_25C810650(a2);
      if (v43 >= v37)
      {
        goto LABEL_70;
      }
    }

    v44 = sub_25C82E25C();
    v45 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v44))
    {
      v46 = v45;
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      *(v47 + 4) = v37;
      _os_log_impl(&dword_25C7D2000, v46, v44, "modelTimeseries or otherModelTimeseries did not have enough evaluations or samples to satisfy requirements. Minimum number of samples: %ld", v47, 0xCu);
      MEMORY[0x25F890110](v47, -1, -1);
    }

    v48 = sub_25C82E25C();
    v49 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v48))
    {

      v50 = v49;
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      sub_25C810650(a1);
      *(v51 + 4) = v52;

      _os_log_impl(&dword_25C7D2000, v50, v48, "modelTimeseries number of samples: %ld", v51, 0xCu);
      MEMORY[0x25F890110](v51, -1, -1);
    }

    v53 = sub_25C82E25C();
    v54 = qword_281559838;
    if (!os_log_type_enabled(qword_281559838, v53))
    {
      goto LABEL_60;
    }

    v55 = v54;
    v56 = swift_slowAlloc();
    *v56 = 134217984;
    sub_25C810650(a2);
    *(v56 + 4) = v57;

    v58 = "otherModelTimeseries number of samples: %ld";
LABEL_58:
    v81 = v53;
    v82 = v55;
    v83 = v56;
    v84 = 12;
    goto LABEL_59;
  }

  v59 = [a3 minimumNumberOfEvaluations];
  if (v59)
  {
    v60 = v59;
    v61 = [v59 integerValue];

    v62 = sub_25C82E25C();
    v63 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v62))
    {
      v64 = v63;
      v65 = swift_slowAlloc();
      *v65 = 134217984;
      *(v65 + 4) = v61;
      _os_log_impl(&dword_25C7D2000, v64, v62, "Evaluating based on minimum number of evaluations: %ld", v65, 0xCu);
      MEMORY[0x25F890110](v65, -1, -1);
    }

    if (a1 >> 62)
    {
      v66 = sub_25C82E43C();
    }

    else
    {
      v66 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v66 < v61)
    {
      goto LABEL_40;
    }

    if (a2 >> 62)
    {
      if (sub_25C82E43C() < v61)
      {
        goto LABEL_40;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < v61)
    {
LABEL_40:
      v67 = sub_25C82E25C();
      v68 = qword_281559838;
      if (os_log_type_enabled(qword_281559838, v67))
      {
        v69 = v68;
        v70 = swift_slowAlloc();
        *v70 = 134217984;
        *(v70 + 4) = v61;
        _os_log_impl(&dword_25C7D2000, v69, v67, "modelTimeseries or otherModelTimeseries did not have enough evaluations or samples to satisfy requirements. Minimum number of evaluations: %ld", v70, 0xCu);
        MEMORY[0x25F890110](v70, -1, -1);
      }

      v71 = sub_25C82E25C();
      v72 = qword_281559838;
      if (os_log_type_enabled(qword_281559838, v71))
      {

        v73 = v72;
        v74 = swift_slowAlloc();
        *v74 = 134217984;
        if (a1 >> 62)
        {
          v75 = sub_25C82E43C();
        }

        else
        {
          v75 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v74 + 4) = v75;

        _os_log_impl(&dword_25C7D2000, v73, v71, "modelTimeseries number of evaluations: %ld", v74, 0xCu);
        MEMORY[0x25F890110](v74, -1, -1);
      }

      v53 = sub_25C82E25C();
      v87 = qword_281559838;
      if (!os_log_type_enabled(qword_281559838, v53))
      {
        goto LABEL_60;
      }

      v55 = v87;
      v56 = swift_slowAlloc();
      *v56 = 134217984;
      if (a2 >> 62)
      {
        v88 = sub_25C82E43C();
      }

      else
      {
        v88 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v56 + 4) = v88;

      v58 = "otherModelTimeseries number of evaluations: %ld";
      goto LABEL_58;
    }

    sub_25C82E25C();
    v91 = qword_281559838;
    sub_25C82E00C();

    goto LABEL_70;
  }

  sub_25C82E27C();
  v85 = qword_281559838;
  sub_25C82E00C();

  sub_25C7E7DEC();
  swift_allocError();
  *v86 = 20;
  swift_willThrow();
  return v12 & 1;
}

uint64_t sub_25C80FAD4(void *a1, uint64_t a2, unint64_t a3)
{
  sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v4 = qword_281559838;
    sub_25C82E00C();

    if (a3 >> 62)
    {
      if (!sub_25C82E43C())
      {
LABEL_10:
        sub_25C82E25C();
        v7 = qword_281559838;
        sub_25C82E00C();

        return 1;
      }
    }

    else if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a3 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

  MEMORY[0x25F88F6D0](0, a3);
LABEL_7:
  result = [a1 modelEvaluationResults];
  if (result)
  {
    sub_25C7E96B8(0, &qword_27FC162B8, off_2799B97C8);
    result = sub_25C82E1CC();
    __break(1u);
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

void sub_25C810650(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_25C82E43C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = 0;
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x25F88F6D0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v8 = [v6 dataUsedToEvaluateModel];
    if (!v8)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v9 = v8;
    v10 = [v8 size];

    if (!v10)
    {
      goto LABEL_21;
    }

    v11 = [v10 numberOfUserSessions];

    v12 = __OFADD__(v5, v11);
    v5 += v11;
    ++v4;
    if (v12)
    {
      goto LABEL_18;
    }
  }
}

void sub_25C810784(unint64_t a1, unint64_t a2)
{
  v72 = MEMORY[0x277D84FA0];
  v73 = MEMORY[0x277D84FA0];
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25C82E43C())
  {
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25F88F6D0](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 evaluationDate];
      if (!v8)
      {
        goto LABEL_82;
      }

      v9 = v8;
      v10 = sub_25C82E0AC();
      v12 = v11;

      sub_25C811904(&v69, v10, v12);

      ++v4;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
  if (a2 >> 62)
  {
    goto LABEL_28;
  }

  for (j = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_25C82E43C())
  {
    v13 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x25F88F6D0](v13, a2);
      }

      else
      {
        if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v14 = *(a2 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v17 = [v14 evaluationDate];
      if (!v17)
      {
        goto LABEL_83;
      }

      v18 = v17;
      v19 = sub_25C82E0AC();
      v21 = v20;

      sub_25C811904(&v69, v19, v21);

      ++v13;
      if (v16 == j)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:
  v66 = a2;
  v22 = MEMORY[0x277D84F90];
  v70 = MEMORY[0x277D84F90];
  v71 = MEMORY[0x277D84F90];
  v24 = v72;
  v23 = v73;

  v25 = sub_25C811CB4(v24, v23);
  v26 = v25 + 56;
  if (i)
  {
    v27 = 0;
    v64 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x25F88F6D0](v27, a1);
      }

      else
      {
        if (v27 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_79;
        }

        v28 = *(a1 + 32 + 8 * v27);
      }

      v29 = v28;
      v30 = __OFADD__(v27++, 1);
      if (v30)
      {
        break;
      }

      v31 = [v28 evaluationDate];
      if (!v31)
      {
        goto LABEL_84;
      }

      v32 = v31;
      v33 = sub_25C82E0AC();
      v35 = v34;

      if (*(v25 + 16) && (v36 = *(v25 + 40), sub_25C82E57C(), sub_25C82E10C(), v37 = sub_25C82E59C(), v38 = -1 << *(v25 + 32), v39 = v37 & ~v38, ((*(v26 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0))
      {
        v40 = ~v38;
        while (1)
        {
          v41 = (*(v25 + 48) + 16 * v39);
          v42 = *v41 == v33 && v41[1] == v35;
          if (v42 || (sub_25C82E4EC() & 1) != 0)
          {
            break;
          }

          v39 = (v39 + 1) & v40;
          if (((*(v26 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        v43 = v29;
        MEMORY[0x25F88F4D0]();
        if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v44 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_25C82E1EC();
        }

        sub_25C82E20C();

        v64 = v71;
      }

      else
      {
LABEL_31:
      }

      if (v27 == i)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
  }

  else
  {
    v64 = v22;
LABEL_53:
    if (!j)
    {
      v65 = MEMORY[0x277D84F90];
LABEL_77:

      v62 = sub_25C810DC8(v64);

      v63 = v62;
      sub_25C810DC8(v65);

      return;
    }

    v45 = 0;
    v65 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v66 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x25F88F6D0](v45);
      }

      else
      {
        if (v45 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_81;
        }

        v46 = *(v66 + 32 + 8 * v45);
      }

      v47 = v46;
      v30 = __OFADD__(v45++, 1);
      if (v30)
      {
        break;
      }

      v48 = [v46 evaluationDate];
      if (!v48)
      {
        goto LABEL_85;
      }

      v49 = v48;
      v50 = sub_25C82E0AC();
      v52 = v51;

      if (*(v25 + 16) && (v53 = *(v25 + 40), sub_25C82E57C(), sub_25C82E10C(), v54 = sub_25C82E59C(), v55 = -1 << *(v25 + 32), v56 = v54 & ~v55, ((*(v26 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) != 0))
      {
        v57 = ~v55;
        while (1)
        {
          v58 = (*(v25 + 48) + 16 * v56);
          v59 = *v58 == v50 && v58[1] == v52;
          if (v59 || (sub_25C82E4EC() & 1) != 0)
          {
            break;
          }

          v56 = (v56 + 1) & v57;
          if (((*(v26 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        v60 = v47;
        MEMORY[0x25F88F4D0]();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v61 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_25C82E1EC();
        }

        sub_25C82E20C();

        v65 = v70;
      }

      else
      {
LABEL_55:
      }

      if (v45 == j)
      {
        goto LABEL_77;
      }
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
}

uint64_t sub_25C810DC8(unint64_t a1)
{
  sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_281559838;
    sub_25C82E00C();

    v55 = a1;
    if (a1 >> 62)
    {
      a1 = sub_25C82E43C();
      if (!a1)
      {
LABEL_13:
        v4 = MEMORY[0x277D84F98];
        v5 = MEMORY[0x277D84F98] + 64;
        v6 = 1 << *(MEMORY[0x277D84F98] + 32);
        v7 = -1;
        if (v6 < 64)
        {
          v7 = ~(-1 << v6);
        }

        v8 = v7 & *(MEMORY[0x277D84F98] + 64);
        v9 = (v6 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v10 = 0;
        v56 = v9;
        while (v8)
        {
LABEL_22:
          v12 = __clz(__rbit64(v8)) | (v10 << 6);
          v13 = (*(v4 + 48) + 16 * v12);
          v15 = *v13;
          v14 = v13[1];
          v16 = *(*(v4 + 56) + 8 * v12);

          v17 = v16;
          v18 = sub_25C82E25C();
          v19 = qword_281559838;
          v57 = v17;
          if (os_log_type_enabled(qword_281559838, v18))
          {
            v20 = v19;
            v21 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            v58 = v22;
            *v21 = 136315138;
            v23 = sub_25C7E77E4(v15, v14, &v58);

            *(v21 + 4) = v23;
            _os_log_impl(&dword_25C7D2000, v20, v18, "aggregated evals: name: %s", v21, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v22);
            v24 = v22;
            v17 = v57;
            MEMORY[0x25F890110](v24, -1, -1);
            v25 = v21;
            v9 = v56;
            MEMORY[0x25F890110](v25, -1, -1);
          }

          else
          {
          }

          v26 = sub_25C82E25C();
          v27 = qword_281559838;
          if (os_log_type_enabled(qword_281559838, v26))
          {
            v28 = v17;
            v29 = v27;
            v30 = swift_slowAlloc();
            *v30 = 67109376;
            *(v30 + 4) = [v28 numberOfPositiveSamples];
            *(v30 + 8) = 1024;
            *(v30 + 10) = [v28 numberOfSamples];

            v17 = v57;
            _os_log_impl(&dword_25C7D2000, v29, v26, "> aggregated evals: positive: %u, total: %u", v30, 0xEu);
            MEMORY[0x25F890110](v30, -1, -1);
          }

          v8 &= v8 - 1;
        }

        while (1)
        {
          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v11 >= v9)
          {

            sub_25C82E25C();
            v31 = qword_281559838;
            sub_25C82E00C();

            v32 = [objc_allocWithZone(ODCurareReportFillerModelEvaluationSummary) init];
            if (!v32)
            {
              goto LABEL_48;
            }

            v33 = v32;
            v34 = 0;
            v35 = 1 << *(v4 + 32);
            v36 = *(v4 + 64);
            v37 = -1;
            if (v35 < 64)
            {
              v37 = ~(-1 << v35);
            }

            v38 = v37 & v36;
            v39 = (v35 + 63) >> 6;
            if ((v37 & v36) != 0)
            {
              while (1)
              {
                v40 = v34;
LABEL_35:
                v41 = __clz(__rbit64(v38)) | (v40 << 6);
                v42 = (*(v4 + 48) + 16 * v41);
                v44 = *v42;
                v43 = v42[1];
                v45 = *(*(v4 + 56) + 8 * v41);

                v46 = v45;
                if (![v46 numberOfSamples])
                {
                  break;
                }

                v38 &= v38 - 1;

                [v46 setMetricValue_];
                [v33 addModelEvaluationResults_];

                v34 = v40;
                if (!v38)
                {
                  goto LABEL_32;
                }
              }

              v49 = sub_25C82E27C();
              v50 = qword_281559838;
              if (os_log_type_enabled(qword_281559838, v49))
              {
                v51 = v50;
                v52 = swift_slowAlloc();
                v53 = swift_slowAlloc();
                v58 = v53;
                *v52 = 136315138;
                v54 = sub_25C7E77E4(v44, v43, &v58);

                *(v52 + 4) = v54;
                _os_log_impl(&dword_25C7D2000, v51, v49, "Found zero samples for metric %s, returning nil.", v52, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v53);
                MEMORY[0x25F890110](v53, -1, -1);
                MEMORY[0x25F890110](v52, -1, -1);
              }

              else
              {
              }

              return 0;
            }

LABEL_32:
            while (1)
            {
              v40 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
                break;
              }

              if (v40 >= v39)
              {

                sub_25C82E25C();
                v47 = qword_281559838;
                sub_25C82E00C();

                return v33;
              }

              v38 = *(v5 + 8 * v40);
              ++v34;
              if (v38)
              {
                goto LABEL_35;
              }
            }

LABEL_45:
            __break(1u);
            __break(1u);
            __break(1u);

            __break(1u);
            __break(1u);
            __break(1u);
            goto LABEL_46;
          }

          v8 = *(v5 + 8 * v11);
          ++v10;
          if (v8)
          {
            v10 = v11;
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      a1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a1)
      {
        goto LABEL_13;
      }
    }

    if ((v55 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v3 = *(v55 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

  v3 = MEMORY[0x25F88F6D0](0, v55);
LABEL_7:
  if ([v3 modelEvaluationResults])
  {
    v58 = 0;
    sub_25C7E96B8(0, &qword_27FC162B8, off_2799B97C8);
    sub_25C82E1CC();
LABEL_46:
    __break(1u);
  }

  __break(1u);
LABEL_48:
  __break(1u);
  result = sub_25C82E51C();
  __break(1u);
  return result;
}

uint64_t sub_25C81189C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16100, &qword_25C8305B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25C811904(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_25C82E57C();
  sub_25C82E10C();
  v9 = sub_25C82E59C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_25C82E4EC() & 1) != 0)
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

    sub_25C812508(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25C811A54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162C0, qword_25C830A90);
  result = sub_25C82E37C();
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
      sub_25C82E57C();
      sub_25C82E10C();
      result = sub_25C82E59C();
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

uint64_t sub_25C811CB4(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_25C811F08(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_25C811E78(v12, v6, a2, a1);

    MEMORY[0x25F890110](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_25C811E78(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_25C811F08(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_25C811F08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_25C82E57C();

      sub_25C82E10C();
      v27 = sub_25C82E59C();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_25C82E4EC() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_25C8122E4(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_25C82E57C();

      sub_25C82E10C();
      v41 = sub_25C82E59C();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_25C82E4EC() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25C8122E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162C0, qword_25C830A90);
  result = sub_25C82E38C();
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
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_25C82E57C();

    sub_25C82E10C();
    result = sub_25C82E59C();
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
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
      v10 = (v15 - 1) & v15;
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

uint64_t sub_25C812508(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_25C811A54(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25C812688();
      goto LABEL_16;
    }

    sub_25C8127E4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_25C82E57C();
  sub_25C82E10C();
  result = sub_25C82E59C();
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

      result = sub_25C82E4EC();
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
  result = sub_25C82E50C();
  __break(1u);
  return result;
}

void *sub_25C812688()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162C0, qword_25C830A90);
  v2 = *v0;
  v3 = sub_25C82E36C();
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

uint64_t sub_25C8127E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162C0, qword_25C830A90);
  result = sub_25C82E37C();
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
      sub_25C82E57C();

      sub_25C82E10C();
      result = sub_25C82E59C();
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

uint64_t sub_25C812AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25C8140A8(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160C8, &qword_25C830580);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25C8140A8((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_25C812BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;

  MEMORY[0x25F88F460](0xD00000000000001FLL, 0x800000025C833E40);
  v8 = objc_allocWithZone(ODCurareCoreDuetStorage);
  v9 = sub_25C82E07C();

  v10 = [v8 init_];

  v4[2] = v10;
  v16 = a2;

  MEMORY[0x25F88F460](0xD00000000000002CLL, 0x800000025C833E60);

  v11 = objc_allocWithZone(ODCurareCoreDuetStorage);
  v12 = sub_25C82E07C();

  v13 = [v11 init_];

  v4[3] = v13;
  v4[4] = a1;
  return v4;
}

void sub_25C812D1C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v34 = MEMORY[0x277D84F90];
  if (!(a2 >> 62))
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_17:
    v18 = MEMORY[0x277D84F90];
LABEL_18:
    if (a3)
    {
      v19 = v33[2];
    }

    else
    {
      v19 = v33[3];
      sub_25C82E25C();
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v20 = qword_281559838;
      sub_25C82E00C();
    }

    v21 = sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v22 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v21))
    {

      v23 = v22;
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      if (v18 >> 62)
      {
        v25 = sub_25C82E43C();
      }

      else
      {
        v25 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v24 + 4) = v25;

      _os_log_impl(&dword_25C7D2000, v23, v21, "Storing %ld number of evaluation summaries", v24, 0xCu);
      MEMORY[0x25F890110](v24, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16298, &unk_25C830930);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_25C830640;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162A0, &unk_25C830BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25C830640;
    sub_25C82E35C();
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162C8, &qword_25C830BB8);
    *(inited + 72) = v18;
    v28 = sub_25C8009E0(inited);
    swift_setDeallocating();
    sub_25C8146F4(inited + 32);
    *(v26 + 32) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
    v29 = sub_25C82E1BC();

    v30 = sub_25C82DF4C();
    [v19 saveDictionaries:v29 date:v30 eventIdentifier:0];

    sub_25C827FD8(v19, v33[4]);
    return;
  }

LABEL_16:
  v6 = sub_25C82E43C();
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_3:
  v31 = v4;
  v4 = 0;
  while (1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x25F88F6D0](v4, a2);
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(a2 + 8 * v4 + 32);
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    v9 = v7;
    v10 = [v7 data];
    if (!v10)
    {
      break;
    }

    v11 = v10;
    v12 = sub_25C82DF0C();
    v14 = v13;

    v15 = objc_allocWithZone(MEMORY[0x277CBEA90]);
    sub_25C8146A0(v12, v14);
    v16 = sub_25C82DEEC();
    [v15 initWithData_];

    v17 = sub_25C808E3C(v12, v14);
    MEMORY[0x25F88F4D0](v17);
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25C82E1EC();
    }

    sub_25C82E20C();
    sub_25C808E3C(v12, v14);

    ++v4;
    if (v8 == v6)
    {
      v18 = v34;
      goto LABEL_18;
    }
  }

  __break(1u);
}

unint64_t sub_25C8131CC(char a1)
{
  v3 = *(v1 + 16);
  v17 = v3;
  v4 = MEMORY[0x277D84F90];
  if (a1)
  {
    v5 = v3;
  }

  else
  {
    v17 = *(v1 + 24);
    v5 = v17;
    sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v6 = qword_281559838;
    sub_25C82E00C();
  }

  v16 = v4;
  v7 = objc_autoreleasePoolPush();
  sub_25C81340C(&v17, &v16, v15);
  if (v2)
  {
    objc_autoreleasePoolPop(v7);
    v8 = v16;
  }

  else
  {
    objc_autoreleasePoolPop(v7);
    v9 = sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v10 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v9))
    {
      v11 = v10;
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      swift_beginAccess();
      if (v16 >> 62)
      {
        v13 = sub_25C82E43C();
      }

      else
      {
        v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v12 + 4) = v13;
      _os_log_impl(&dword_25C7D2000, v11, v9, "Retrieved %ld number of results", v12, 0xCu);
      MEMORY[0x25F890110](v12, -1, -1);
    }

    swift_beginAccess();
    v8 = v16;
  }

  return v8;
}

void sub_25C81340C(id *a1, void *a2, uint64_t *a3)
{
  v4 = [*a1 queryDataWithPredicate_];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  sub_25C7E96B8(0, &qword_2815594A0, off_2799B9788);
  v6 = sub_25C82E1DC();

  if (v6 >> 62)
  {
LABEL_47:
    v7 = sub_25C82E43C();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_37:

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_37;
  }

LABEL_4:
  v8 = 0;
  v9 = v6 & 0xC000000000000001;
  v37 = v6 + 32;
  v38 = v6 & 0xFFFFFFFFFFFFFF8;
  v45 = v6;
  v39 = v6 & 0xC000000000000001;
  v40 = v7;
  while (1)
  {
    if (v9)
    {
      v10 = MEMORY[0x25F88F6D0](v8, v6);
      v11 = __OFADD__(v8++, 1);
      if (v11)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v8 >= *(v38 + 16))
      {
        __break(1u);
LABEL_50:
        swift_once();
        goto LABEL_40;
      }

      v10 = *(v37 + 8 * v8);
      v11 = __OFADD__(v8++, 1);
      if (v11)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    v12 = v10;
    v13 = [v10 metadata];
    if (v13)
    {
      break;
    }

LABEL_36:
    v9 = v39;
    if (v8 == v40)
    {
      goto LABEL_37;
    }
  }

  v14 = v13;
  v42 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
  v15 = sub_25C82E1DC();

  v16 = sub_25C812AA0(v15);
  v17 = v16;
  v44 = *(v16 + 16);
  if (!v44)
  {
LABEL_35:

    goto LABEL_36;
  }

  v18 = 0;
  v47 = v16 + 32;
  v41 = v8;
  v46 = v16;
  while (1)
  {
    if (v18 >= *(v17 + 16))
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v19 = *(v47 + 8 * v18);
    if (!*(v19 + 16))
    {
      goto LABEL_44;
    }

    v20 = *(v47 + 8 * v18);

    v21 = sub_25C8139BC(0xD000000000000026, 0x800000025C833DE0);
    if ((v22 & 1) == 0)
    {
      goto LABEL_45;
    }

    v48 = v18;
    sub_25C7E9854(*(v19 + 56) + 32 * v21, v50);

    sub_25C801F34(v50, &v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162C8, &qword_25C830BB8);
    swift_dynamicCast();
    v23 = v52;
    if (v52 >> 62)
    {
      break;
    }

    v6 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_20;
    }

LABEL_14:
    v18 = v48 + 1;

    v6 = v45;
    v8 = v41;
    v17 = v46;
    if (v48 + 1 == v44)
    {
      goto LABEL_35;
    }
  }

  v6 = sub_25C82E43C();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_20:
  v24 = 0;
  while (1)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x25F88F6D0](v24, v23);
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v24 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v25 = *(v23 + 8 * v24 + 32);
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }
    }

    v49 = v25;
    v27 = MEMORY[0x25F88F1F0]();
    v29 = v28;
    v30 = objc_allocWithZone(ODCurareReportFillerModelEvaluationSummary);
    v31 = sub_25C82DEEC();
    sub_25C808E3C(v27, v29);
    v32 = [v30 initWithData_];

    if (!v32)
    {
      break;
    }

    v33 = v32;
    MEMORY[0x25F88F4D0]();
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25C82E1EC();
    }

    sub_25C82E20C();

    ++v24;
    if (v26 == v6)
    {
      goto LABEL_14;
    }
  }

  sub_25C82E27C();
  if (qword_2815594B8 != -1)
  {
    goto LABEL_50;
  }

LABEL_40:
  v34 = qword_281559838;
  sub_25C82E00C();

  sub_25C7E7DEC();
  v35 = swift_allocError();
  *v36 = 11;
  swift_willThrow();

  *a3 = v35;
}

uint64_t sub_25C81390C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_25C813978(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25C82E33C();

  return sub_25C813C7C(a1, v5);
}

unint64_t sub_25C8139BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25C82E57C();
  sub_25C82E10C();
  v6 = sub_25C82E59C();

  return sub_25C813D44(a1, a2, v6);
}

unint64_t sub_25C813A34(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25C82E2AC();
  return sub_25C813DFC(a1, v5, &qword_27FC16200, off_2799B9798);
}

unint64_t sub_25C813A84(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25C82E2AC();
  return sub_25C813DFC(a1, v5, &qword_281559498, off_2799B9778);
}

unint64_t sub_25C813AD4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25C82DEAC();
  v5 = MEMORY[0x277CC9260];
  sub_25C814658(&qword_27FC161C8, MEMORY[0x277CC9260]);
  v6 = sub_25C82E04C();
  return sub_25C813EC8(a1, v6, MEMORY[0x277CC9260], &qword_281559830, v5, MEMORY[0x277CC9278]);
}

unint64_t sub_25C813BA8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25C82DFBC();
  v5 = MEMORY[0x277CC9578];
  sub_25C814658(&qword_27FC16198, MEMORY[0x277CC9578]);
  v6 = sub_25C82E04C();
  return sub_25C813EC8(a1, v6, MEMORY[0x277CC9578], &qword_27FC162D0, v5, MEMORY[0x277CC9598]);
}

unint64_t sub_25C813C7C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25C8077A8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F88F670](v9, a1);
      sub_25C814604(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25C813D44(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25C82E4EC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25C813DFC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_25C7E96B8(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_25C82E2BC();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_25C813EC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_25C814658(v24, v25);
      v20 = sub_25C82E06C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

size_t sub_25C814068(size_t a1, int64_t a2, char a3)
{
  result = sub_25C8142E8(a1, a2, a3, *v3, &qword_27FC160D8, &qword_25C830590, &qword_27FC16090, qword_25C8304A0);
  *v3 = result;
  return result;
}

void *sub_25C8140A8(void *a1, int64_t a2, char a3)
{
  result = sub_25C8144D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25C8140C8(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160B8, &qword_25C830570);
  v10 = *(sub_25C82DFBC() - 8);
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
  v15 = *(sub_25C82DFBC() - 8);
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

size_t sub_25C8142E8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_25C8144D0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160C0, &qword_25C830578);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160C8, &qword_25C830580);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25C814658(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25C8146A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25C8146F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161A8, &unk_25C8307A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25C81475C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, char a6)
{
  v154 = a5;
  v151 = a2;
  v152 = a3;
  v150 = a1;
  v163[1] = *MEMORY[0x277D85DE8];
  v8 = sub_25C82E0EC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v149 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v157 = *(v11 - 8);
  v158 = v11;
  v12 = *(v157 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v156 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v153 = &v126 - v16;
  MEMORY[0x28223BE20](v15);
  v155 = &v126 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v159 = *(v18 - 8);
  v160 = v18;
  v19 = *(v159 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v126 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v126 - v26;
  sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v28 = qword_281559838;
  v29 = MEMORY[0x277D84F90];
  sub_25C82E00C();

  v30 = [objc_allocWithZone(ODCurareReportFillerReport) init];
  v31 = [objc_opt_self() sharedInstance];
  if (!v31)
  {
    sub_25C82E28C();
    v35 = qword_281559838;
    sub_25C82E00C();

    goto LABEL_12;
  }

  v32 = v31;
  if (a6)
  {
    sub_25C82E28C();
    v33 = qword_281559838;
    sub_25C82E00C();

    if (v30)
    {
      [v30 setFrameworkFailure_];
      [v32 logMessage_];
      goto LABEL_7;
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v36 = *__swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v163[0] = v29;
  v37 = objc_autoreleasePoolPush();
  v38 = v161;
  sub_25C807AF8(v36, v163, &v162);
  if (v38)
  {
    objc_autoreleasePoolPop(v37);

    goto LABEL_12;
  }

  v148 = v32;
  objc_autoreleasePoolPop(v37);
  v39 = v163[0];
  v40 = v154;
  v41 = *__swift_project_boxed_opaque_existential_1(v154, v154[3]);
  v42 = sub_25C8131CC(1);
  v138 = v39;
  v44 = v42;
  v45 = *__swift_project_boxed_opaque_existential_1(v40, v40[3]);
  v137 = sub_25C8131CC(0);
  v46 = *__swift_project_boxed_opaque_existential_1(v152, v152[3]);
  v47 = sub_25C81EF2C();
  v147 = v25;
  v145 = v22;
  v135 = v47;
  v136 = v44;
  v154 = v30;
  v161 = 0;
  v48 = v138;
  v146 = v138[2];
  if (v146)
  {
    v49 = 0;
    v144 = v27;
    do
    {
      v50 = v160;
      if (v49 >= v48[2])
      {
        __break(1u);
        goto LABEL_42;
      }

      v51 = v49;
      sub_25C7E92DC(v48 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v49, v27, &qword_27FC16090, qword_25C8304A0);
      v52 = *(v50 + 48);
      v152 = *&v27[v52];
      v53 = sub_25C82DEAC();
      v54 = *(v53 - 8);
      v55 = v147;
      (*(v54 + 32))(v147, v27, v53);
      *(v55 + v52) = v152;
      v56 = v154;
      if (!v154)
      {
        goto LABEL_66;
      }

      v57 = v145;
      sub_25C7E92DC(v55, v145, &qword_27FC16090, qword_25C8304A0);
      v58 = *(v57 + *(v50 + 48));
      v59 = v56;
      [v59 addMetadataList_];

      v60 = v55;
      v49 = v51 + 1;
      sub_25C7E97F4(v60, &qword_27FC16090, qword_25C8304A0);
      (*(v54 + 8))(v57, v53);
      v48 = v138;
      v27 = v144;
    }

    while (v146 != (v51 + 1));
  }

  if (v136 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25C82E43C())
  {
    v30 = v154;
    v32 = v148;
    if (i)
    {
      v62 = 0;
      v63 = v136 & 0xC000000000000001;
      v64 = v136 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v63)
        {
          v65 = MEMORY[0x25F88F6D0](v62, v136);
        }

        else
        {
          if (v62 >= *(v64 + 16))
          {
            goto LABEL_43;
          }

          v65 = *(v136 + 8 * v62 + 32);
        }

        v66 = v65;
        v67 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          break;
        }

        if (!v30)
        {
          goto LABEL_67;
        }

        [v30 addModelEvaluationSummaries_];

        ++v62;
        if (v67 == i)
        {
          goto LABEL_30;
        }
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_30:
    if (!(v137 >> 62))
    {
      v68 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v68)
      {
        break;
      }

      goto LABEL_32;
    }

    v68 = sub_25C82E43C();
    if (!v68)
    {
      break;
    }

LABEL_32:
    v69 = 0;
    v70 = v137 & 0xC000000000000001;
    v71 = v137 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v70)
      {
        v72 = MEMORY[0x25F88F6D0](v69, v137);
      }

      else
      {
        if (v69 >= *(v71 + 16))
        {
          goto LABEL_45;
        }

        v72 = *(v137 + 8 * v69 + 32);
      }

      v73 = v72;
      v74 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (!v30)
      {
        goto LABEL_68;
      }

      [v30 addModelEvaluationSummaries_];

      ++v69;
      if (v74 == v68)
      {
        goto LABEL_48;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

LABEL_48:
  v75 = v135;
  v76 = v153;
  v134 = v135[2];
  if (v134)
  {
    v77 = 0;
    v133 = v158[12];
    v132 = v158[16];
    v131 = (v155 + v158[24]);
    v130 = (v155 + v158[28]);
    v78 = *(v157 + 80);
    v129 = v158[20];
    v128 = v135 + ((v78 + 32) & ~v78);
    v127 = v156 + 8;
    v79 = &qword_25C830490;
    do
    {
      if (v77 >= v75[2])
      {
        __break(1u);
      }

      v80 = *(v157 + 72);
      v139 = v77;
      v81 = v155;
      sub_25C7E92DC(&v128[v80 * v77], v155, &qword_27FC16080, v79);
      v159 = *(v81 + v132);
      v152 = *(v81 + v129);
      v82 = *v131;
      v146 = v131[1];
      v147 = v82;
      v83 = *v130;
      v144 = v130[1];
      v145 = v83;
      v84 = v158;
      v141 = v158[12];
      v143 = v158[16];
      v142 = (v76 + v158[24]);
      v85 = (v76 + v158[28]);
      v140 = v158[20];
      v86 = sub_25C82DFBC();
      v87 = *(v86 - 8);
      v88 = *(v87 + 32);
      v160 = v86;
      v88(v76, v81);
      v89 = sub_25C82DEAC();
      v90 = v79;
      v91 = *(v89 - 8);
      (*(v91 + 32))(v76 + v141, v81 + v133, v89);
      *(v76 + v143) = v159;
      *(v76 + v140) = v152;
      v92 = v146;
      v93 = v142;
      *v142 = v147;
      v93[1] = v92;
      v94 = v144;
      *v85 = v145;
      v85[1] = v94;
      v95 = v156;
      v96 = v90;
      sub_25C7E92DC(v76, v156, &qword_27FC16080, v90);
      v159 = v84[12];
      v97 = *(v95 + v84[16]);

      v98 = v127;
      v99 = *(v127 + v84[24]);

      v100 = *(v98 + v84[28]);

      if (v97)
      {
        (*(v91 + 8))(v95 + v159, v89);
        (*(v87 + 8))(v95, v160);
        v30 = v154;
        if (!v154)
        {
          goto LABEL_69;
        }

        [v154 addModelInformationList_];

        v76 = v153;
        v79 = v96;
        sub_25C7E97F4(v153, &qword_27FC16080, v96);
        v32 = v148;
        v75 = v135;
      }

      else
      {
        sub_25C7E97F4(v76, &qword_27FC16080, v96);
        (*(v91 + 8))(v95 + v159, v89);
        (*(v87 + 8))(v95, v160);
        v30 = v154;
        v32 = v148;
        v75 = v135;
        v79 = v96;
      }

      v77 = v139 + 1;
    }

    while (v134 != v139 + 1);
  }

  sub_25C82E25C();
  v101 = qword_281559838;
  sub_25C82E00C();

  if (!v30)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  v102 = [v30 dictionaryRepresentation];
  if (v102)
  {
    v103 = v102;
    v104 = sub_25C82E02C();
  }

  else
  {
    v104 = 0;
  }

  v105 = objc_opt_self();
  v163[0] = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16310, &qword_25C830C10);
  v106 = sub_25C82E2EC();

  v163[0] = 0;
  v107 = [v105 dataWithJSONObject:v106 options:2 error:v163];
  swift_unknownObjectRelease();
  v108 = v163[0];
  if (!v107)
  {
    v125 = v108;

    sub_25C82DDAC();

    swift_willThrow();
    goto LABEL_12;
  }

  v109 = sub_25C82DF0C();
  v111 = v110;

  sub_25C82E0DC();
  sub_25C82E0BC();
  if (!v112)
  {
    goto LABEL_71;
  }

  v113 = sub_25C82E07C();
  v114 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v163[0] = v114;
  sub_25C7FCB68(v113, 0x7542746567726174, 0xEE004449656C646ELL, isUniquelyReferenced_nonNull_native);
  v116 = v163[0];
  v117 = sub_25C82E07C();

  v118 = swift_isUniquelyReferenced_nonNull_native();
  v163[0] = v116;
  sub_25C7FCB68(v117, 0x74726F706572, 0xE600000000000000, v118);
  v119 = v163[0];
  sub_25C82E25C();
  v120 = qword_281559838;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_25C830640;
  *(v121 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16318, &qword_25C830C18);
  *(v121 + 64) = sub_25C81874C();
  *(v121 + 32) = v119;
  v122 = v120;

  sub_25C82E00C();

  v123 = sub_25C82E07C();
  sub_25C8187B0();
  v124 = sub_25C82E01C();

  AnalyticsSendEvent();
  sub_25C808E3C(v109, v111);

LABEL_7:
  sub_25C82E25C();
  v34 = qword_281559838;
  sub_25C82E00C();

LABEL_12:
  v43 = *MEMORY[0x277D85DE8];
}