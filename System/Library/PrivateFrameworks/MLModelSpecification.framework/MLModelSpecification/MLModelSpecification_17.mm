uint64_t sub_2576479FC(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E00, &qword_257744720) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC2A4(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_257647AB0(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_257647AB0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_257743964();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E00, &qword_257744720);
        v6 = sub_257743764();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E00, &qword_257744720) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_257647E64(v8, v9, a1, v4);
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
    return sub_257647BF8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_257647BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E00, &qword_257744720);
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v37);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v28 - v12);
  result = MEMORY[0x28223BE20](v11);
  v17 = (&v28 - v16);
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v33 = v20;
      v34 = a3;
      v31 = v23;
      v32 = v22;
      while (1)
      {
        sub_2574AD5D8(v23, v17, &qword_27F879E00, &qword_257744720);
        sub_2574AD5D8(v20, v13, &qword_27F879E00, &qword_257744720);
        if (*v17 == *v13 && v17[1] == v13[1])
        {
          break;
        }

        v25 = sub_257743994();
        sub_2574695E4(v13, &qword_27F879E00, &qword_257744720);
        result = sub_2574695E4(v17, &qword_27F879E00, &qword_257744720);
        if (v25)
        {
          if (!v35)
          {
            __break(1u);
            return result;
          }

          v26 = v36;
          sub_257649478(v23, v36);
          swift_arrayInitWithTakeFrontToBack();
          result = sub_257649478(v26, v20);
          v20 += v21;
          v23 += v21;
          if (!__CFADD__(v22++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_2574695E4(v13, &qword_27F879E00, &qword_257744720);
      result = sub_2574695E4(v17, &qword_27F879E00, &qword_257744720);
LABEL_14:
      a3 = v34 + 1;
      v20 = v33 + v29;
      v22 = v32 - 1;
      v23 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_257647E64(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v119 = a1;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E00, &qword_257744720);
  v126 = *(v134 - 8);
  v6 = *(v126 + 64);
  v7 = MEMORY[0x28223BE20](v134);
  v122 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v133 = &v114 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v135 = (&v114 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v114 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v130 = (&v114 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v129 = (&v114 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v118 = (&v114 - v21);
  MEMORY[0x28223BE20](v20);
  v117 = (&v114 - v22);
  v128 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_112:
    v26 = *v119;
    if (!*v119)
    {
      goto LABEL_152;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_114:
      v106 = (v25 + 16);
      for (i = *(v25 + 16); i >= 2; *v106 = i)
      {
        if (!*v128)
        {
          goto LABEL_149;
        }

        v108 = (v25 + 16 * i);
        v109 = *v108;
        v110 = &v106[2 * i];
        v111 = *(v110 + 1);
        v112 = v132;
        sub_257648804(*v128 + *(v126 + 72) * *v108, *v128 + *(v126 + 72) * *v110, *v128 + *(v126 + 72) * v111, v26);
        v132 = v112;
        if (v112)
        {
          break;
        }

        if (v111 < v109)
        {
          goto LABEL_137;
        }

        if (i - 2 >= *v106)
        {
          goto LABEL_138;
        }

        *v108 = v109;
        v108[1] = v111;
        v113 = *v106 - i;
        if (*v106 < i)
        {
          goto LABEL_139;
        }

        i = *v106 - 1;
        sub_2576FB794(v110 + 16, v113, v110);
      }

LABEL_110:

      return;
    }

LABEL_146:
    v25 = sub_2576FB678(v25);
    goto LABEL_114;
  }

  v114 = a4;
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  v26 = &qword_257744720;
  v123 = v15;
  while (1)
  {
    v27 = v24;
    v28 = v24 + 1;
    if (v24 + 1 < v23)
    {
      v124 = v23;
      v29 = *v128;
      v30 = *(v126 + 72);
      v131 = v24 + 1;
      v31 = v117;
      sub_2574AD5D8(v29 + v30 * v28, v117, &qword_27F879E00, &qword_257744720);
      v127 = v30;
      v32 = v118;
      sub_2574AD5D8(v29 + v30 * v27, v118, &qword_27F879E00, &qword_257744720);
      if (*v31 == *v32 && v31[1] == v32[1])
      {
        LODWORD(v125) = 0;
      }

      else
      {
        LODWORD(v125) = sub_257743994();
      }

      v115 = v25;
      v26 = &qword_257744720;
      sub_2574695E4(v118, &qword_27F879E00, &qword_257744720);
      sub_2574695E4(v117, &qword_27F879E00, &qword_257744720);
      v116 = v27;
      v34 = v27 + 2;
      v35 = v127 * (v27 + 2);
      v36 = v29 + v35;
      v37 = v131;
      v38 = v127 * v131;
      v39 = v29 + v127 * v131;
      do
      {
        v28 = v34;
        v25 = v37;
        v40 = v38;
        v41 = v35;
        if (v34 >= v124)
        {
          break;
        }

        v131 = v34;
        v42 = v129;
        sub_2574AD5D8(v36, v129, &qword_27F879E00, &qword_257744720);
        v43 = v130;
        sub_2574AD5D8(v39, v130, &qword_27F879E00, &qword_257744720);
        v44 = *v42 == *v43 && v42[1] == v43[1];
        v45 = v44 ? 0 : sub_257743994();
        v28 = v131;
        sub_2574695E4(v130, &qword_27F879E00, &qword_257744720);
        v26 = &qword_257744720;
        sub_2574695E4(v129, &qword_27F879E00, &qword_257744720);
        v34 = v28 + 1;
        v36 += v127;
        v39 += v127;
        v37 = v25 + 1;
        v38 = v40 + v127;
        v35 = v41 + v127;
        v15 = v123;
      }

      while (((v125 ^ v45) & 1) == 0);
      if (v125)
      {
        v46 = v116;
        if (v28 < v116)
        {
          goto LABEL_143;
        }

        if (v116 >= v28)
        {
          v25 = v115;
          v27 = v116;
          goto LABEL_37;
        }

        v47 = v116 * v127;
        do
        {
          if (v46 != v25)
          {
            v48 = *v128;
            if (!*v128)
            {
              goto LABEL_150;
            }

            v26 = v48 + v47;
            sub_257649478(v48 + v47, v122);
            v49 = v47 < v40 || v26 >= v48 + v41;
            if (v49)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v47 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_257649478(v122, v48 + v40);
          }

          ++v46;
          v40 -= v127;
          v41 -= v127;
          v47 += v127;
        }

        while (v46 < v25--);
      }

      v25 = v115;
      v27 = v116;
    }

LABEL_37:
    v51 = v128[1];
    if (v28 < v51)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_142;
      }

      if (v28 - v27 < v114)
      {
        break;
      }
    }

LABEL_59:
    if (v28 < v27)
    {
      goto LABEL_141;
    }

    v131 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = *(v25 + 16);
      sub_257469A28();
      v25 = v104;
    }

    v62 = *(v25 + 16);
    v63 = v62 + 1;
    v24 = v131;
    if (v62 >= *(v25 + 24) >> 1)
    {
      sub_257469A28();
      v24 = v131;
      v25 = v105;
    }

    *(v25 + 16) = v63;
    v64 = v25 + 32;
    v65 = (v25 + 32 + 16 * v62);
    *v65 = v27;
    v65[1] = v24;
    v127 = *v119;
    if (!v127)
    {
      goto LABEL_151;
    }

    if (v62)
    {
      while (1)
      {
        v26 = v63 - 1;
        v66 = (v64 + 16 * (v63 - 1));
        v67 = (v25 + 16 * v63);
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v68 = *(v25 + 32);
          v69 = *(v25 + 40);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_79:
          if (v71)
          {
            goto LABEL_128;
          }

          v83 = *v67;
          v82 = v67[1];
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_131;
          }

          v87 = v66[1];
          v88 = v87 - *v66;
          if (__OFSUB__(v87, *v66))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v85, v88))
          {
            goto LABEL_136;
          }

          if (v85 + v88 >= v70)
          {
            if (v70 < v88)
            {
              v26 = v63 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v63 < 2)
        {
          goto LABEL_130;
        }

        v90 = *v67;
        v89 = v67[1];
        v78 = __OFSUB__(v89, v90);
        v85 = v89 - v90;
        v86 = v78;
LABEL_94:
        if (v86)
        {
          goto LABEL_133;
        }

        v92 = *v66;
        v91 = v66[1];
        v78 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v78)
        {
          goto LABEL_135;
        }

        if (v93 < v85)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v26 - 1 >= v63)
        {
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

        if (!*v128)
        {
          goto LABEL_148;
        }

        v97 = v25;
        v98 = (v64 + 16 * (v26 - 1));
        v99 = *v98;
        v100 = v64 + 16 * v26;
        v25 = *(v100 + 8);
        v101 = v132;
        sub_257648804(*v128 + *(v126 + 72) * *v98, *v128 + *(v126 + 72) * *v100, *v128 + *(v126 + 72) * v25, v127);
        v132 = v101;
        if (v101)
        {
          goto LABEL_110;
        }

        if (v25 < v99)
        {
          goto LABEL_123;
        }

        v102 = *(v97 + 16);
        if (v26 > v102)
        {
          goto LABEL_124;
        }

        *v98 = v99;
        v98[1] = v25;
        if (v26 >= v102)
        {
          goto LABEL_125;
        }

        v63 = v102 - 1;
        sub_2576FB794((v100 + 16), v102 - 1 - v26, (v64 + 16 * v26));
        v25 = v97;
        *(v97 + 16) = v102 - 1;
        v24 = v131;
        if (v102 <= 2)
        {
          goto LABEL_108;
        }
      }

      v72 = v64 + 16 * v63;
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_126;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_127;
      }

      v79 = v67[1];
      v80 = v79 - *v67;
      if (__OFSUB__(v79, *v67))
      {
        goto LABEL_129;
      }

      v78 = __OFADD__(v70, v80);
      v81 = v70 + v80;
      if (v78)
      {
        goto LABEL_132;
      }

      if (v81 >= v75)
      {
        v95 = *v66;
        v94 = v66[1];
        v78 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v78)
        {
          goto LABEL_140;
        }

        if (v70 < v96)
        {
          v26 = v63 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v23 = v128[1];
    v26 = &qword_257744720;
    if (v24 >= v23)
    {
      goto LABEL_112;
    }
  }

  v52 = v27 + v114;
  if (__OFADD__(v27, v114))
  {
    goto LABEL_144;
  }

  if (v52 >= v51)
  {
    v52 = v128[1];
  }

  if (v52 < v27)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v28 == v52)
  {
    goto LABEL_59;
  }

  v115 = v25;
  v116 = v27;
  v53 = *v128;
  v54 = *(v126 + 72);
  v55 = *v128 + v54 * (v28 - 1);
  v26 = -v54;
  v56 = v27 - v28;
  v120 = v54;
  v121 = v52;
  v57 = v53 + v28 * v54;
LABEL_46:
  v131 = v28;
  v124 = v57;
  v125 = v56;
  v127 = v55;
  while (1)
  {
    sub_2574AD5D8(v57, v15, &qword_27F879E00, &qword_257744720);
    v58 = v135;
    sub_2574AD5D8(v55, v135, &qword_27F879E00, &qword_257744720);
    if (*v15 == *v58 && v15[1] == v58[1])
    {
      sub_2574695E4(v135, &qword_27F879E00, &qword_257744720);
      sub_2574695E4(v15, &qword_27F879E00, &qword_257744720);
LABEL_57:
      v28 = v131 + 1;
      v55 = v127 + v120;
      v56 = v125 - 1;
      v57 = v124 + v120;
      if (v131 + 1 == v121)
      {
        v28 = v121;
        v25 = v115;
        v27 = v116;
        goto LABEL_59;
      }

      goto LABEL_46;
    }

    v60 = sub_257743994();
    sub_2574695E4(v135, &qword_27F879E00, &qword_257744720);
    sub_2574695E4(v15, &qword_27F879E00, &qword_257744720);
    if ((v60 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (!v53)
    {
      break;
    }

    v61 = v133;
    sub_257649478(v57, v133);
    swift_arrayInitWithTakeFrontToBack();
    sub_257649478(v61, v55);
    v55 += v26;
    v57 += v26;
    v49 = __CFADD__(v56++, 1);
    if (v49)
    {
      goto LABEL_57;
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
}

uint64_t sub_257648804(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E00, &qword_257744720);
  v8 = *(*(v66 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v66);
  v65 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v64 = (&v57 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v57 - v14);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v57 - v17);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  v22 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v22)
  {
    goto LABEL_72;
  }

  v23 = a2;
  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v26 = v21 / v20;
  v69 = a1;
  v68 = a4;
  v27 = v24 / v20;
  if (v21 / v20 < v24 / v20)
  {
    v28 = v23;
    sub_257483558(a1, v21 / v20, a4);
    v29 = v28;
    v65 = a4 + v26 * v20;
    v67 = v65;
    v63 = a3;
    while (1)
    {
      if (a4 >= v65 || v29 >= a3)
      {
        goto LABEL_70;
      }

      v31 = v29;
      sub_2574AD5D8(v29, v18, &qword_27F879E00, &qword_257744720);
      sub_2574AD5D8(a4, v15, &qword_27F879E00, &qword_257744720);
      if (*v18 == *v15 && v18[1] == v15[1])
      {
        sub_2574695E4(v15, &qword_27F879E00, &qword_257744720);
        sub_2574695E4(v18, &qword_27F879E00, &qword_257744720);
      }

      else
      {
        v33 = sub_257743994();
        sub_2574695E4(v15, &qword_27F879E00, &qword_257744720);
        sub_2574695E4(v18, &qword_27F879E00, &qword_257744720);
        if (v33)
        {
          v34 = v31;
          v35 = v31 + v20;
          if (a1 < v31 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v31 + v20;
            a3 = v63;
          }

          else
          {
            a3 = v63;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v29 = v35;
          }

          goto LABEL_37;
        }
      }

      if (a1 < a4 || a1 >= a4 + v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v68 = a4 + v20;
      a4 += v20;
      v29 = v31;
      a3 = v63;
LABEL_37:
      a1 += v20;
      v69 = a1;
    }
  }

  v38 = v23;
  sub_257483558(v23, v24 / v20, a4);
  v39 = v38;
  v40 = a4 + v27 * v20;
  v41 = -v20;
  v42 = v40;
  v62 = -v20;
  v59 = a4;
LABEL_42:
  v43 = v39 + v41;
  v44 = a3;
  v45 = v42;
  v63 = v39;
  v60 = v42;
  v61 = v43;
  while (1)
  {
    if (v40 <= a4)
    {
      v69 = v39;
      v67 = v45;
      goto LABEL_70;
    }

    if (v39 <= a1)
    {
      break;
    }

    v58 = v45;
    v46 = v62;
    v47 = v40 + v62;
    v48 = v64;
    sub_2574AD5D8(v40 + v62, v64, &qword_27F879E00, &qword_257744720);
    v49 = v43;
    v50 = v65;
    sub_2574AD5D8(v49, v65, &qword_27F879E00, &qword_257744720);
    if (*v48 == *v50 && v48[1] == v50[1])
    {
      v52 = 0;
    }

    else
    {
      v52 = sub_257743994();
    }

    a3 = v44 + v46;
    sub_2574695E4(v65, &qword_27F879E00, &qword_257744720);
    sub_2574695E4(v64, &qword_27F879E00, &qword_257744720);
    if (v52)
    {
      v54 = v44 < v63 || a3 >= v63;
      a4 = v59;
      if (v54)
      {
        v55 = v61;
        swift_arrayInitWithTakeFrontToBack();
        v39 = v55;
        v42 = v58;
        v41 = v62;
      }

      else
      {
        v42 = v58;
        v56 = v61;
        v41 = v62;
        v39 = v61;
        if (v44 != v63)
        {
          v42 = v58;
          swift_arrayInitWithTakeBackToFront();
          v39 = v56;
        }
      }

      goto LABEL_42;
    }

    v53 = v44 < v40 || a3 >= v40;
    a4 = v59;
    if (v53)
    {
      swift_arrayInitWithTakeFrontToBack();
      v44 = a3;
      v40 = v47;
      v45 = v47;
      v39 = v63;
      v42 = v60;
      v43 = v61;
    }

    else
    {
      v45 = v47;
      v22 = v40 == v44;
      v44 = a3;
      v40 = v47;
      v39 = v63;
      v42 = v60;
      v43 = v61;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v39 = v63;
        v44 = a3;
        v40 = v47;
        v45 = v47;
      }
    }
  }

  v69 = v39;
  v67 = v42;
LABEL_70:
  sub_2576FB6A4(&v69, &v68, &v67);
  return 1;
}

void sub_257648D5C(uint64_t a1)
{
  v2 = type metadata accessor for Proto_MILSpec_Argument(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  v43 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_1();
  v42 = v7;
  v8 = OUTLINED_FUNCTION_153();
  v9 = type metadata accessor for MLProgram.Argument(v8);
  v10 = OUTLINED_FUNCTION_24(v9);
  v41 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_64_2(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880628, &unk_25776CCA8);
  sub_2577438E4();
  v15 = 0;
  v44 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v18 = *(v16 - 32);
  OUTLINED_FUNCTION_41_0();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  v38 = v24 + 8;
  v39 = v24;
  if ((v20 & v19) != 0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_50_2();
LABEL_8:
      v27 = v25 | (v15 << 6);
      v28 = (*(v44 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_25764953C(*(v44 + 56) + *(v41 + 72) * v27, v40);
      OUTLINED_FUNCTION_42_6();
      sub_25764953C(v40, v42);

      OUTLINED_FUNCTION_41_7();
      sub_2576494E8();
      *(v38 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      v31 = (v39[6] + 16 * v27);
      *v31 = v29;
      v31[1] = v30;
      v32 = v39[7];
      v33 = *(v43 + 72);
      OUTLINED_FUNCTION_40_7();
      sub_257649420(v42, v34);
      v35 = v39[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        break;
      }

      v39[2] = v37;
      if (!v21)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v15 >= v23)
      {
        return;
      }

      ++v26;
      if (*(v16 + 8 * v15))
      {
        OUTLINED_FUNCTION_49_2();
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_257648FB0(uint64_t a1)
{
  v2 = type metadata accessor for Proto_MILSpec_Value(0);
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MLProgram.Value();
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880630, &qword_25776D4A0);
  result = sub_2577438E4();
  v9 = result;
  v10 = 0;
  v38 = a1;
  v13 = *(a1 + 64);
  v12 = a1 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v32 = result + 64;
  v33 = result;
  if ((v15 & v11) != 0)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_10:
      v21 = v18 | (v10 << 6);
      v22 = (*(v38 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = v34;
      sub_25764953C(*(v38 + 56) + *(v35 + 72) * v21, v34);
      v26 = v36;
      sub_25764953C(v25, v36);

      sub_2576494E8();
      v9 = v33;
      *(v32 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = (v9[6] + 16 * v21);
      *v27 = v23;
      v27[1] = v24;
      result = sub_257649420(v26, v9[7] + *(v37 + 72) * v21);
      v28 = v9[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v9[2] = v30;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        return v9;
      }

      v20 = *(v12 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for MLProgram.Operation()
{
  result = qword_27F8805F8;
  if (!qword_27F8805F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2576492E0()
{
  result = qword_27F87B640;
  if (!qword_27F87B640)
  {
    type metadata accessor for Proto_MILSpec_Operation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87B640);
  }

  return result;
}

uint64_t sub_257649360()
{
  result = type metadata accessor for Proto_MILSpec_Operation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257649420(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t sub_257649478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E00, &qword_257744720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576494E8()
{
  v1 = OUTLINED_FUNCTION_376();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_25764953C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

__n128 OUTLINED_FUNCTION_33_4(__n128 *a1)
{
  result = v1[12];
  a1[1] = result;
  a1[2].n128_u64[0] = 0x2064657070617257;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_3(uint64_t result)
{
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  *(v2 - 120) = result + 64;
  return result;
}

void OUTLINED_FUNCTION_36_3()
{
  *(*(v4 - 120) + ((v1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v1;
  v5 = (*(v0 + 48) + 16 * v1);
  *v5 = v2;
  v5[1] = v3;
  v6 = *(v0 + 56) + *(*(v4 - 88) + 72) * v1;
}

uint64_t OUTLINED_FUNCTION_55_3@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 | (v2 << 6);
  v5 = (*(v1 + 48) + 16 * v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v3 - 112);
  return *(v1 + 56) + *(*(v3 - 104) + 72) * v4;
}

__n128 *OUTLINED_FUNCTION_62_2(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1701667182;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

void OUTLINED_FUNCTION_69_0()
{

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_70_4()
{
}

uint64_t OUTLINED_FUNCTION_84_4()
{
}

uint64_t OUTLINED_FUNCTION_85_2()
{
  *(v0 + 296) = v1 & 0x1FFFFFFFFFFFFFFFLL;

  return swift_projectBox();
}

void sub_257649AC4()
{
  OUTLINED_FUNCTION_31();
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE08, &qword_25776CCD0);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v180 = v176 - v8;
  v9 = OUTLINED_FUNCTION_153();
  v179 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(v9);
  v10 = OUTLINED_FUNCTION_4(v179);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v177 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v178 = v176 - v16;
  OUTLINED_FUNCTION_153();
  v17 = type metadata accessor for SupportVectorCoefficients();
  v18 = OUTLINED_FUNCTION_24(v17);
  v185 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880640, &qword_25776CCC8);
  OUTLINED_FUNCTION_13(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  v187 = v176 - v29;
  v30 = OUTLINED_FUNCTION_153();
  v186 = type metadata accessor for SupportVectorClassifierConfiguration.SupportVectors(v30);
  v31 = OUTLINED_FUNCTION_4(v186);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3();
  v188 = (v35 - v34);
  v36 = OUTLINED_FUNCTION_153();
  v37 = type metadata accessor for SupportVectorKernel.Kind(v36);
  v38 = OUTLINED_FUNCTION_13(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880638, &unk_25776CCB8);
  OUTLINED_FUNCTION_13(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v44);
  v45 = OUTLINED_FUNCTION_17_3();
  v46 = type metadata accessor for SupportVectorKernel(v45);
  v47 = OUTLINED_FUNCTION_4(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_56_2();
  SupportVectorClassifierConfiguration.kernel.getter();
  OUTLINED_FUNCTION_155(v2, 1, v46);
  if (v50)
  {
    sub_2574695E4(v2, &qword_27F880638, &unk_25776CCB8);
    v51 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_10_19();
    sub_25764A9B0(v2, v0);
    SupportVectorKernel.kind.getter();
    v52 = sub_2576D4A84();
    v54 = v53;
    v56 = v55;
    sub_25764D180();
    sub_257469AE0();
    v51 = v57;
    v59 = *(v57 + 16);
    v58 = *(v57 + 24);
    if (v59 >= v58 >> 1)
    {
      OUTLINED_FUNCTION_174(v58);
      OUTLINED_FUNCTION_34_4();
      v51 = v174;
    }

    sub_25764D180();
    *(v51 + 16) = v59 + 1;
    v60 = v51 + 40 * v59;
    *(v60 + 32) = 0x6C656E72654BLL;
    *(v60 + 40) = 0xE600000000000000;
    *(v60 + 48) = v52;
    *(v60 + 56) = v54;
    *(v60 + 64) = v56;
  }

  v61 = MEMORY[0x277D84F90];
  v62 = SupportVectorClassifierConfiguration.supportVectorCountPerClass.getter();
  v63 = *(v62 + 16);
  v181 = v3;
  v184 = v24;
  if (v63)
  {
    v64 = OUTLINED_FUNCTION_27_9();
    sub_257484040(v64, v63, 0);
    v65 = 32;
    v66 = v189;
    do
    {
      v192 = *(v62 + v65);
      v67 = sub_257743674();
      v69 = v68;
      v189 = v66;
      v71 = *(v66 + 16);
      v70 = *(v66 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_257484040((v70 > 1), v71 + 1, 1);
        v66 = v189;
      }

      *(v66 + 16) = v71 + 1;
      v72 = v66 + 24 * v71;
      *(v72 + 32) = v67;
      *(v72 + 40) = v69;
      *(v72 + 48) = 0;
      v65 += 8;
      --v63;
    }

    while (v63);

    v3 = v181;
    v51 = v182;
    v24 = v184;
    v61 = MEMORY[0x277D84F90];
  }

  else
  {

    v66 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v166 = *(v51 + 16);
    OUTLINED_FUNCTION_34_4();
    v51 = v167;
  }

  v74 = *(v51 + 16);
  v73 = *(v51 + 24);
  if (v74 >= v73 >> 1)
  {
    OUTLINED_FUNCTION_174(v73);
    OUTLINED_FUNCTION_34_4();
    v51 = v168;
  }

  *(v51 + 16) = v74 + 1;
  v75 = v51 + 40 * v74;
  *(v75 + 32) = 0xD00000000000001ELL;
  *(v75 + 40) = 0x8000000257780AA0;
  *(v75 + 48) = v66;
  *(v75 + 56) = 0;
  *(v75 + 64) = 1;
  v76 = v187;
  SupportVectorClassifierConfiguration.supportVectors.getter();
  OUTLINED_FUNCTION_155(v76, 1, v186);
  if (v50)
  {
    sub_2574695E4(v76, &qword_27F880640, &qword_25776CCC8);
  }

  else
  {
    sub_25764A9B0(v76, v188);
    v77 = sub_25764C88C();
    v79 = v78;
    v81 = v80;
    v83 = *(v51 + 16);
    v82 = *(v51 + 24);
    if (v83 >= v82 >> 1)
    {
      OUTLINED_FUNCTION_174(v82);
      OUTLINED_FUNCTION_34_4();
      v51 = v175;
    }

    OUTLINED_FUNCTION_3_28();
    sub_25764D180();
    *(v51 + 16) = v83 + 1;
    v84 = v51 + 40 * v83;
    *(v84 + 32) = 0x2074726F70707553;
    *(v84 + 40) = 0xEF73726F74636556;
    *(v84 + 48) = v77;
    *(v84 + 56) = v79;
    *(v84 + 64) = v81;
  }

  v85 = SupportVectorClassifierConfiguration.coefficients.getter();
  v86 = *(v85 + 16);
  if (v86)
  {
    v87 = OUTLINED_FUNCTION_27_9();
    sub_257484040(v87, v86, 0);
    v88 = 0;
    v89 = v189;
    v90 = *(v185 + 80);
    OUTLINED_FUNCTION_193();
    v176[1] = v85;
    v186 = v85 + v91;
    v185 = *(v92 + 72);
    v183 = v86;
    do
    {
      OUTLINED_FUNCTION_20_8();
      sub_25764D1D4(v93, v24);
      v94 = *v24;
      v95 = *(*v24 + 16);
      if (v95)
      {
        v187 = v88;
        v188 = v89;
        v192 = v61;
        v96 = OUTLINED_FUNCTION_13_8();
        sub_257484040(v96, v97, v98);
        v99 = v192;
        v100 = (v94 + 32);
        do
        {
          v191 = *v100;
          v101 = sub_257743674();
          v103 = v102;
          v192 = v99;
          v105 = *(v99 + 16);
          v104 = *(v99 + 24);
          if (v105 >= v104 >> 1)
          {
            v107 = OUTLINED_FUNCTION_174(v104);
            sub_257484040(v107, v105 + 1, 1);
            v99 = v192;
          }

          *(v99 + 16) = v105 + 1;
          v106 = v99 + 24 * v105;
          *(v106 + 32) = v101;
          *(v106 + 40) = v103;
          *(v106 + 48) = 0;
          ++v100;
          --v95;
        }

        while (v95);
        v86 = v183;
        v24 = v184;
        v61 = MEMORY[0x277D84F90];
        v88 = v187;
        v89 = v188;
      }

      else
      {
        v99 = v61;
      }

      OUTLINED_FUNCTION_23_10();
      sub_25764D180();
      v189 = v89;
      v109 = *(v89 + 16);
      v108 = *(v89 + 24);
      if (v109 >= v108 >> 1)
      {
        v111 = OUTLINED_FUNCTION_174(v108);
        sub_257484040(v111, v109 + 1, 1);
        v89 = v189;
      }

      ++v88;
      *(v89 + 16) = v109 + 1;
      v110 = v89 + 24 * v109;
      *(v110 + 32) = v99;
      *(v110 + 40) = 0;
      *(v110 + 48) = 1;
    }

    while (v88 != v86);

    v3 = v181;
    v51 = v182;
  }

  else
  {

    v89 = MEMORY[0x277D84F90];
  }

  v113 = *(v51 + 16);
  v112 = *(v51 + 24);
  v114 = v113 + 1;
  if (v113 >= v112 >> 1)
  {
    OUTLINED_FUNCTION_174(v112);
    OUTLINED_FUNCTION_34_4();
    v51 = v169;
  }

  *(v51 + 16) = v114;
  v115 = v51 + 40 * v113;
  strcpy((v115 + 32), "Coefficients");
  *(v115 + 45) = 0;
  *(v115 + 46) = -5120;
  *(v115 + 48) = v89;
  *(v115 + 56) = 0;
  *(v115 + 64) = 1;
  v116 = type metadata accessor for Proto_SupportVectorClassifier(0);
  v117 = *(v3 + *(v116 + 28));
  v118 = *(v117 + 16);
  v119 = MEMORY[0x277D84F90];
  v188 = v116;
  if (v118)
  {
    v182 = v51;
    v189 = MEMORY[0x277D84F90];
    v120 = OUTLINED_FUNCTION_13_8();
    sub_257484040(v120, v121, v122);
    v119 = v189;
    v123 = (v117 + 32);
    do
    {
      v124 = OUTLINED_FUNCTION_45_3(*v123);
      v86 = v125;
      v189 = v119;
      v127 = *(v119 + 16);
      v126 = *(v119 + 24);
      if (v127 >= v126 >> 1)
      {
        v129 = OUTLINED_FUNCTION_174(v126);
        OUTLINED_FUNCTION_46_5(v129);
        v119 = v189;
      }

      *(v119 + 16) = v127 + 1;
      v128 = v119 + 24 * v127;
      *(v128 + 32) = v124;
      *(v128 + 40) = v86;
      *(v128 + 48) = 0;
      ++v123;
      --v118;
    }

    while (v118);
    v3 = v181;
    v51 = v182;
    v114 = *(v182 + 16);
    v130 = v188;
  }

  else
  {
    v130 = v116;
  }

  v131 = *(v51 + 24);
  if (v114 >= v131 >> 1)
  {
    OUTLINED_FUNCTION_174(v131);
    OUTLINED_FUNCTION_34_4();
    v51 = v170;
  }

  *(v51 + 16) = v114 + 1;
  v132 = v51 + 40 * v114;
  *(v132 + 32) = 7301202;
  *(v132 + 40) = 0xE300000000000000;
  *(v132 + 48) = v119;
  *(v132 + 56) = 0;
  *(v132 + 64) = 1;
  v133 = *(v3 + v130[8]);
  v134 = *(v133 + 16);
  if (v134)
  {
    v182 = v51;
    v189 = MEMORY[0x277D84F90];
    v135 = OUTLINED_FUNCTION_13_8();
    sub_257484040(v135, v136, v137);
    v138 = v189;
    v139 = (v133 + 32);
    do
    {
      OUTLINED_FUNCTION_45_3(*v139);
      OUTLINED_FUNCTION_31_6();
      if (v141)
      {
        v143 = OUTLINED_FUNCTION_174(v140);
        OUTLINED_FUNCTION_46_5(v143);
        v138 = v189;
      }

      *(v138 + 16) = v3;
      v142 = v138 + 24 * v51;
      *(v142 + 32) = v130;
      *(v142 + 40) = v86;
      *(v142 + 48) = 0;
      ++v139;
      --v134;
    }

    while (v134);
    v3 = v181;
    v51 = v182;
    v130 = v188;
  }

  v145 = *(v51 + 16);
  v144 = *(v51 + 24);
  v146 = v145 + 1;
  if (v145 >= v144 >> 1)
  {
    OUTLINED_FUNCTION_174(v144);
    OUTLINED_FUNCTION_34_4();
    v51 = v171;
  }

  OUTLINED_FUNCTION_54_3();
  *(v51 + 16) = v146;
  OUTLINED_FUNCTION_42_7(v51 + 40 * v145);
  v147 = *(v3 + v130[9]);
  v148 = *(v147 + 16);
  if (v148)
  {
    v182 = v51;
    v189 = MEMORY[0x277D84F90];
    v149 = OUTLINED_FUNCTION_13_8();
    sub_257484040(v149, v150, v151);
    v152 = v189;
    v153 = (v147 + 32);
    do
    {
      OUTLINED_FUNCTION_45_3(*v153);
      OUTLINED_FUNCTION_31_6();
      if (v141)
      {
        v156 = OUTLINED_FUNCTION_174(v154);
        OUTLINED_FUNCTION_46_5(v156);
        v152 = v189;
      }

      *(v152 + 16) = v3;
      v155 = v152 + 24 * v51;
      *(v155 + 32) = v130;
      *(v155 + 40) = v86;
      *(v155 + 48) = 0;
      ++v153;
      --v148;
    }

    while (v148);
    v3 = v181;
    v51 = v182;
    v146 = *(v182 + 16);
    v130 = v188;
    OUTLINED_FUNCTION_54_3();
  }

  v157 = *(v51 + 24);
  if (v146 >= v157 >> 1)
  {
    OUTLINED_FUNCTION_174(v157);
    OUTLINED_FUNCTION_34_4();
    v51 = v172;
  }

  *(v51 + 16) = v146 + 1;
  OUTLINED_FUNCTION_42_7(v51 + 40 * v146);
  v158 = v180;
  sub_2574FD880(v3 + v130[10], v180, &qword_27F87FE08, &qword_25776CCD0);
  OUTLINED_FUNCTION_155(v158, 1, v179);
  if (v50)
  {
    v161 = 0;
    v160 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_9_11();
    v159 = v178;
    sub_25764A9B0(v158, v178);
    OUTLINED_FUNCTION_4_18();
    sub_25764D1D4(v159, v177);
    sub_25764C344();
    v160 = v189;
    v161 = v190;
    OUTLINED_FUNCTION_0_40();
    sub_25764D180();
  }

  v189 = v160;
  v190 = v161;
  v162 = sub_25764C9E0();

  v164 = *(v51 + 16);
  v163 = *(v51 + 24);
  if (v164 >= v163 >> 1)
  {
    OUTLINED_FUNCTION_174(v163);
    OUTLINED_FUNCTION_34_4();
    v51 = v173;
  }

  *(v51 + 16) = v164 + 1;
  v165 = v51 + 40 * v164;
  strcpy((v165 + 32), "Class Labels");
  *(v165 + 45) = 0;
  *(v165 + 46) = -5120;
  *(v165 + 48) = v162;
  *(v165 + 56) = 0;
  *(v165 + 64) = 1;
  sub_2576AACFC(v51);
  OUTLINED_FUNCTION_35();
}

void SupportVectorClassifierConfiguration.kernel.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = type metadata accessor for Proto_Kernel(0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v35 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE0, &unk_257768D60);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  v19 = *(type metadata accessor for Proto_SupportVectorClassifier(0) + 48);
  sub_2574FD880(v0 + v19, v18, &qword_27F87FDE0, &unk_257768D60);
  v20 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v3);
  sub_2574695E4(v18, &qword_27F87FDE0, &unk_257768D60);
  if (EnumTagSinglePayload != 1)
  {
    sub_2574FD880(v0 + v19, v15, &qword_27F87FDE0, &unk_257768D60);
    v22 = OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_155(v22, v23, v3);
    if (v24)
    {
      type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
      v32 = v35;
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
      v29 = v32 + *(v3 + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v30 = OUTLINED_FUNCTION_188();
      OUTLINED_FUNCTION_155(v30, v31, v3);
      if (!v24)
      {
        sub_2574695E4(v15, &qword_27F87FDE0, &unk_257768D60);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_23();
      v32 = v35;
      sub_25764A9B0(v15, v35);
    }

    OUTLINED_FUNCTION_5_23();
    sub_25764A9B0(v32, v2);
    v20 = 0;
  }

  v33 = type metadata accessor for SupportVectorKernel(0);
  __swift_storeEnumTagSinglePayload(v2, v20, 1, v33);
  OUTLINED_FUNCTION_35();
}

uint64_t SupportVectorClassifierConfiguration.kernel.setter(uint64_t a1)
{
  v5 = type metadata accessor for Proto_Kernel(0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_17_3();
  v10 = type metadata accessor for SupportVectorKernel(v9);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v14 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_155(v14, v15, v16);
  if (v17)
  {
    sub_2574695E4(a1, &qword_27F880638, &unk_25776CCB8);
    v18 = type metadata accessor for Proto_SupportVectorClassifier(0);
    sub_2574695E4(v1 + *(v18 + 48), &qword_27F87FDE0, &unk_257768D60);
    OUTLINED_FUNCTION_44();

    return __swift_storeEnumTagSinglePayload(v19, v20, v21, v5);
  }

  else
  {
    OUTLINED_FUNCTION_10_19();
    v22 = OUTLINED_FUNCTION_277();
    sub_25764A9B0(v22, v23);
    sub_25764A9B0(v3, v2);
    v24 = *(type metadata accessor for Proto_SupportVectorClassifier(0) + 48);
    sub_2574695E4(v1 + v24, &qword_27F87FDE0, &unk_257768D60);
    sub_25764A9B0(v2, v1 + v24);
    OUTLINED_FUNCTION_21();
    return __swift_storeEnumTagSinglePayload(v25, v26, v27, v5);
  }
}

uint64_t sub_25764A9B0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

void (*SupportVectorClassifierConfiguration.kernel.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for SupportVectorKernel(0);
  v3[1] = v4;
  v34 = v4;
  OUTLINED_FUNCTION_4(v4);
  v3[2] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = type metadata accessor for Proto_Kernel(0);
  v3[3] = v6;
  OUTLINED_FUNCTION_4(v6);
  v8 = *(v7 + 64);
  v3[4] = __swift_coroFrameAllocStub(v8);
  v33 = __swift_coroFrameAllocStub(v8);
  v3[5] = v33;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE0, &unk_257768D60);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_67_2();
  v3[6] = v12;
  v13 = OUTLINED_FUNCTION_67_2();
  v3[7] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880638, &unk_25776CCB8);
  OUTLINED_FUNCTION_13(v14);
  v16 = *(v15 + 64);
  v3[8] = OUTLINED_FUNCTION_67_2();
  v17 = OUTLINED_FUNCTION_67_2();
  v3[9] = v17;
  v18 = *(type metadata accessor for Proto_SupportVectorClassifier(0) + 48);
  *(v3 + 20) = v18;
  sub_2574FD880(v1 + v18, v13, &qword_27F87FDE0, &unk_257768D60);
  v19 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v6);
  sub_2574695E4(v13, &qword_27F87FDE0, &unk_257768D60);
  if (EnumTagSinglePayload != 1)
  {
    sub_2574FD880(v1 + v18, v12, &qword_27F87FDE0, &unk_257768D60);
    v21 = OUTLINED_FUNCTION_50_3();
    OUTLINED_FUNCTION_155(v21, v22, v6);
    if (v23)
    {
      type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
      v31 = v33;
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
      v28 = &v33[*(v6 + 20)];
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v29 = OUTLINED_FUNCTION_50_3();
      OUTLINED_FUNCTION_155(v29, v30, v6);
      if (!v23)
      {
        sub_2574695E4(v12, &qword_27F87FDE0, &unk_257768D60);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_23();
      v31 = v33;
      sub_25764A9B0(v12, v33);
    }

    OUTLINED_FUNCTION_5_23();
    sub_25764A9B0(v31, v17);
    v19 = 0;
  }

  __swift_storeEnumTagSinglePayload(v17, v19, 1, v34);
  return sub_25764AC88;
}

void sub_25764AC88()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = (*v0)[9];
  if (v3)
  {
    v5 = v1[7];
    v4 = v1[8];
    v7 = v1[5];
    v6 = v1[6];
    v8 = v1[4];
    v9 = v1[2];
    v10 = *v1;
    v11 = OUTLINED_FUNCTION_263();
    sub_2574FD880(v11, v12, &qword_27F880638, v13);
    SupportVectorClassifierConfiguration.kernel.setter(v4);
    sub_2574695E4(v2, &qword_27F880638, &unk_25776CCB8);
  }

  else
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload((*v0)[9], 1, v1[1]);
    v15 = *(v1 + 20);
    if (EnumTagSinglePayload == 1)
    {
      v16 = *v1;
      sub_2574695E4(v2, &qword_27F880638, &unk_25776CCB8);
      sub_2574695E4(v16 + v15, &qword_27F87FDE0, &unk_257768D60);
      v17 = 1;
    }

    else
    {
      v18 = v1[4];
      v19 = v1[2];
      v20 = *v1;
      OUTLINED_FUNCTION_10_19();
      v21 = OUTLINED_FUNCTION_263();
      sub_25764A9B0(v21, v22);
      sub_25764A9B0(v19, v18);
      sub_2574695E4(v20 + v15, &qword_27F87FDE0, &unk_257768D60);
      sub_25764A9B0(v18, v20 + v15);
      v17 = 0;
    }

    v4 = v1[8];
    v2 = v1[9];
    v6 = v1[6];
    v5 = v1[7];
    v8 = v1[4];
    v7 = v1[5];
    v9 = v1[2];
    __swift_storeEnumTagSinglePayload(*v1 + *(v1 + 20), v17, 1, v1[3]);
  }

  free(v2);
  free(v4);
  free(v5);
  free(v6);
  free(v7);
  free(v8);
  free(v9);
  OUTLINED_FUNCTION_35();

  free(v23);
}

uint64_t SupportVectorClassifierConfiguration.supportVectorCountPerClass.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_13_8();
    sub_257483724();
    result = v9;
    v4 = (v1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v10 = result;
      v8 = *(result + 24);
      if (v5 >= v8 >> 1)
      {
        OUTLINED_FUNCTION_174(v8);
        sub_257483724();
        result = v10;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_25764AEF4(uint64_t *a1)
{
  v1 = *a1;

  SupportVectorClassifierConfiguration.supportVectorCountPerClass.setter();
}

void SupportVectorClassifierConfiguration.supportVectorCountPerClass.setter()
{
  OUTLINED_FUNCTION_63_3();
  v3 = v0;
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    v7 = OUTLINED_FUNCTION_269();
    sub_257484BE0(v7, v8, v9);
    v10 = 32;
    v11 = v17;
    while (1)
    {
      v12 = *(v5 + v10);
      if (v12 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v12 > 0x7FFFFFFF)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_53_2();
      if (v14)
      {
        v15 = OUTLINED_FUNCTION_174(v13);
        sub_257484BE0(v15, v1, 1);
        v11 = v17;
      }

      *(v11 + 16) = v1;
      *(v11 + 4 * v2 + 32) = v12;
      v10 += 8;
      if (!--v6)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
LABEL_10:
    v16 = *v3;

    *v3 = v11;
    OUTLINED_FUNCTION_62_3();
  }
}

uint64_t (*SupportVectorClassifierConfiguration.supportVectorCountPerClass.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_375(a1);
  *v1 = SupportVectorClassifierConfiguration.supportVectorCountPerClass.getter();
  return sub_25764B04C;
}

uint64_t SupportVectorClassifierConfiguration.supportVectors.getter()
{
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(v3);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE00, &unk_257768E10);
  OUTLINED_FUNCTION_13(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12_6();
  v18 = type metadata accessor for Proto_SupportVectorClassifier(0);
  sub_2574FD880(v1 + *(v18 + 20), v2, &qword_27F87FE00, &unk_257768E10);
  v19 = 1;
  OUTLINED_FUNCTION_155(v2, 1, v4);
  if (!v20)
  {
    OUTLINED_FUNCTION_19_10();
    sub_25764A9B0(v2, v13);
    sub_25764D1D4(v13, v10);
    sub_25764B39C();
    sub_25764D180();
    v19 = 0;
  }

  v21 = type metadata accessor for SupportVectorClassifierConfiguration.SupportVectors(0);
  return __swift_storeEnumTagSinglePayload(v0, v19, 1, v21);
}

uint64_t sub_25764B1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_13(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_21_1();
  sub_2574FD880(a1, v7, a5, a6);
  return a7(v7);
}

uint64_t SupportVectorClassifierConfiguration.supportVectors.setter(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE00, &unk_257768E10);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17_3();
  v10 = type metadata accessor for SupportVectorClassifierConfiguration.SupportVectors(v9);
  OUTLINED_FUNCTION_155(a1, 1, v10);
  if (v11)
  {
    sub_2574695E4(a1, &qword_27F880640, &qword_25776CCC8);
    v12 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(0);
    v13 = 1;
  }

  else
  {
    sub_25764B438();
    OUTLINED_FUNCTION_3_28();
    sub_25764D180();
    v12 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(0);
    v13 = 0;
  }

  __swift_storeEnumTagSinglePayload(v2, v13, 1, v12);
  v14 = type metadata accessor for Proto_SupportVectorClassifier(0);
  return sub_2574FD834(v2, v3 + *(v14 + 20), &qword_27F87FE00, &unk_257768E10);
}

uint64_t sub_25764B39C()
{
  type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(0);
  swift_getEnumCaseMultiPayload();
  v0 = OUTLINED_FUNCTION_205();
  sub_25764A9B0(v0, v1);
  type metadata accessor for SupportVectorClassifierConfiguration.SupportVectors(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25764B438()
{
  v4 = OUTLINED_FUNCTION_16_1();
  v5 = type metadata accessor for DenseSupportVectorCollection(v4);
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_37_8();
  v10 = type metadata accessor for SparseSupportVectorCollection(v9);
  v11 = OUTLINED_FUNCTION_13(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = OUTLINED_FUNCTION_78();
  v15 = type metadata accessor for SupportVectorClassifierConfiguration.SupportVectors(v14);
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_6_23();
  sub_25764D1D4(v1, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_12_16();
    sub_25764A9B0(v3, v1);
    v19 = OUTLINED_FUNCTION_44_1();
    sub_25764A9B0(v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_11_15();
    sub_25764A9B0(v3, v2);
    sub_25764A9B0(v2, v0);
  }

  type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(0);
  return swift_storeEnumTagMultiPayload();
}

void SupportVectorClassifierConfiguration.supportVectors.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(0);
  v3[1] = v4;
  OUTLINED_FUNCTION_4(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[2] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE00, &unk_257768E10);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  v3[3] = OUTLINED_FUNCTION_66_2();
  v10 = OUTLINED_FUNCTION_66_2();
  v3[4] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880640, &qword_25776CCC8);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  v3[5] = OUTLINED_FUNCTION_66_2();
  v14 = OUTLINED_FUNCTION_66_2();
  v3[6] = v14;
  v15 = *(type metadata accessor for Proto_SupportVectorClassifier(0) + 20);
  *(v3 + 14) = v15;
  OUTLINED_FUNCTION_64_3(v15);
  v16 = 1;
  v17 = OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_155(v17, v18, v4);
  if (!v19)
  {
    OUTLINED_FUNCTION_19_10();
    sub_25764A9B0(v10, v6);
    sub_25764B39C();
    v16 = 0;
  }

  v20 = type metadata accessor for SupportVectorClassifierConfiguration.SupportVectors(0);
  __swift_storeEnumTagSinglePayload(v14, v16, 1, v20);
  OUTLINED_FUNCTION_35();
}

void sub_25764B718()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = (*v0)[6];
  if (v3)
  {
    v5 = v1[4];
    v4 = v1[5];
    v7 = v1[2];
    v6 = v1[3];
    v8 = *v1;
    v9 = OUTLINED_FUNCTION_263();
    sub_2574FD880(v9, v10, &qword_27F880640, &qword_25776CCC8);
    SupportVectorClassifierConfiguration.supportVectors.setter(v4);
    sub_2574695E4(v2, &qword_27F880640, &qword_25776CCC8);
  }

  else
  {
    v11 = type metadata accessor for SupportVectorClassifierConfiguration.SupportVectors(0);
    OUTLINED_FUNCTION_155(v2, 1, v11);
    if (v12)
    {
      sub_2574695E4(v2, &qword_27F880640, &qword_25776CCC8);
      v14 = 1;
    }

    else
    {
      v13 = v1[3];
      sub_25764B438();
      OUTLINED_FUNCTION_3_28();
      sub_25764D180();
      v14 = 0;
    }

    v15 = *(v1 + 14);
    v4 = v1[5];
    v2 = v1[6];
    v6 = v1[3];
    v5 = v1[4];
    v7 = v1[2];
    v16 = *v1;
    __swift_storeEnumTagSinglePayload(v6, v14, 1, v1[1]);
    sub_2574FD834(v6, v16 + v15, &qword_27F87FE00, &unk_257768E10);
  }

  free(v2);
  free(v4);
  free(v5);
  free(v6);
  free(v7);
  OUTLINED_FUNCTION_35();

  free(v17);
}

uint64_t SupportVectorClassifierConfiguration.coefficients.getter()
{
  v2 = type metadata accessor for SupportVectorCoefficients();
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = OUTLINED_FUNCTION_17_3();
  v9 = *(v0 + *(type metadata accessor for Proto_SupportVectorClassifier(v8) + 24));
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v22 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_269();
    sub_2574842F0();
    v11 = v22;
    v12 = type metadata accessor for Proto_Coefficients(0);
    OUTLINED_FUNCTION_24(v12);
    v14 = v9 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v16 = *(v15 + 72);
    do
    {
      OUTLINED_FUNCTION_21_10();
      sub_25764D1D4(v14, v1);
      v18 = *(v22 + 16);
      v17 = *(v22 + 24);
      if (v18 >= v17 >> 1)
      {
        OUTLINED_FUNCTION_174(v17);
        sub_2574842F0();
      }

      *(v22 + 16) = v18 + 1;
      v19 = *(v5 + 80);
      OUTLINED_FUNCTION_193();
      sub_25764A9B0(v1, v22 + v20 + *(v5 + 72) * v18);
      v14 += v16;
      --v10;
    }

    while (v10);
  }

  return v11;
}

void sub_25764BA08(uint64_t *a1)
{
  v1 = *a1;

  SupportVectorClassifierConfiguration.coefficients.setter();
}

void SupportVectorClassifierConfiguration.coefficients.setter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_376();
  v4 = type metadata accessor for SupportVectorCoefficients();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = OUTLINED_FUNCTION_78();
  v11 = type metadata accessor for Proto_Coefficients(v10);
  v12 = OUTLINED_FUNCTION_24(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  v17 = *(v0 + 16);
  if (v17)
  {
    OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
    sub_257484C00();
    v18 = v29;
    v19 = *(v7 + 80);
    OUTLINED_FUNCTION_193();
    v21 = v0 + v20;
    v22 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_20_8();
      sub_25764D1D4(v21, v2);
      OUTLINED_FUNCTION_21_10();
      sub_25764D1D4(v2, v3);
      OUTLINED_FUNCTION_23_10();
      sub_25764D180();
      v24 = *(v29 + 16);
      v23 = *(v29 + 24);
      if (v24 >= v23 >> 1)
      {
        OUTLINED_FUNCTION_174(v23);
        sub_257484C00();
      }

      *(v29 + 16) = v24 + 1;
      v25 = *(v14 + 80);
      OUTLINED_FUNCTION_193();
      sub_25764A9B0(v3, v29 + v26 + *(v14 + 72) * v24);
      v21 += v22;
      --v17;
    }

    while (v17);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v27 = *(type metadata accessor for Proto_SupportVectorClassifier(0) + 24);
  v28 = *(v1 + v27);

  *(v1 + v27) = v18;
  OUTLINED_FUNCTION_35();
}

uint64_t (*SupportVectorClassifierConfiguration.coefficients.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_375(a1);
  *v1 = SupportVectorClassifierConfiguration.coefficients.getter();
  return sub_25764BC6C;
}

uint64_t sub_25764BC84(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

uint64_t SupportVectorClassifierConfiguration.rho.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_SupportVectorClassifier(0) + 28));
}

uint64_t sub_25764BD28(uint64_t *a1)
{
  v1 = *a1;

  return SupportVectorClassifierConfiguration.rho.setter();
}

uint64_t SupportVectorClassifierConfiguration.rho.setter()
{
  v2 = OUTLINED_FUNCTION_376();
  v3 = *(type metadata accessor for Proto_SupportVectorClassifier(v2) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SupportVectorClassifierConfiguration.rho.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  v1 = type metadata accessor for Proto_SupportVectorClassifier(0);
  OUTLINED_FUNCTION_25_7(*(v1 + 28));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t SupportVectorClassifierConfiguration.probabilityA.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_SupportVectorClassifier(0) + 32));
}

uint64_t sub_25764BE14(uint64_t *a1)
{
  v1 = *a1;

  return SupportVectorClassifierConfiguration.probabilityA.setter();
}

uint64_t SupportVectorClassifierConfiguration.probabilityA.setter()
{
  v2 = OUTLINED_FUNCTION_376();
  v3 = *(type metadata accessor for Proto_SupportVectorClassifier(v2) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SupportVectorClassifierConfiguration.probabilityA.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  v1 = type metadata accessor for Proto_SupportVectorClassifier(0);
  OUTLINED_FUNCTION_25_7(*(v1 + 32));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t SupportVectorClassifierConfiguration.probabilityB.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_SupportVectorClassifier(0) + 36));
}

uint64_t sub_25764BF04(uint64_t *a1)
{
  v1 = *a1;

  return SupportVectorClassifierConfiguration.probabilityB.setter();
}

uint64_t SupportVectorClassifierConfiguration.probabilityB.setter()
{
  v2 = OUTLINED_FUNCTION_376();
  v3 = *(type metadata accessor for Proto_SupportVectorClassifier(v2) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SupportVectorClassifierConfiguration.probabilityB.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  v1 = type metadata accessor for Proto_SupportVectorClassifier(0);
  OUTLINED_FUNCTION_25_7(*(v1 + 36));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_25764BFBC(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *(a1 + 6);
  v5 = *a1;
  if (a2)
  {
    v6 = *a1;

    *(v3 + v4) = v5;
  }

  else
  {
    v8 = a1[2];

    *(v3 + v4) = v5;
  }

  return result;
}

uint64_t SupportVectorClassifierConfiguration.classLabels.getter()
{
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(v3);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE08, &qword_25776CCD0);
  OUTLINED_FUNCTION_13(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_78();
  v19 = type metadata accessor for Proto_SupportVectorClassifier(v18);
  sub_2574FD880(v1 + *(v19 + 40), v2, &qword_27F87FE08, &qword_25776CCD0);
  v20 = OUTLINED_FUNCTION_188();
  result = OUTLINED_FUNCTION_155(v20, v21, v4);
  if (v23)
  {
    v27 = 0;
    v26 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_9_11();
    v24 = OUTLINED_FUNCTION_277();
    sub_25764A9B0(v24, v25);
    OUTLINED_FUNCTION_4_18();
    sub_25764D1D4(v13, v10);
    sub_25764C344();
    v26 = v28;
    v27 = v29;
    OUTLINED_FUNCTION_0_40();
    result = sub_25764D180();
  }

  *v0 = v26;
  *(v0 + 8) = v27;
  return result;
}

uint64_t sub_25764C194@<X0>(uint64_t a1@<X8>)
{
  result = SupportVectorClassifierConfiguration.classLabels.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_25764C1D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return SupportVectorClassifierConfiguration.classLabels.setter(&v3);
}

uint64_t SupportVectorClassifierConfiguration.classLabels.setter(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE08, &qword_25776CCD0);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_56_2();
  v8 = *a1;
  if (a1[1])
  {
    v9 = v1 + *(type metadata accessor for Proto_StringVector(0) + 20);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v1 = v8;
    v10 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v11 = *a1;

    sub_25764CFE8();
    v10 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v10);
  v15 = type metadata accessor for Proto_SupportVectorClassifier(0);
  return sub_2574FD834(v1, v2 + *(v15 + 40), &qword_27F87FE08, &qword_25776CCD0);
}

void sub_25764C344()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Proto_StringVector(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = OUTLINED_FUNCTION_37_8();
  v12 = type metadata accessor for Proto_Int64Vector(v11);
  v13 = OUTLINED_FUNCTION_13(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v16 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(0);
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_4_18();
  sub_25764D1D4(v4, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_25764A9B0(v2, v1);
    v22 = *v1;
    v23 = *(*v1 + 16);
    if (v23)
    {
      OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
      sub_257483724();
      v21 = v29;
      v24 = (v22 + 32);
      v25 = *(v29 + 16);
      do
      {
        v27 = *v24++;
        v26 = v27;
        v28 = *(v29 + 24);
        if (v25 >= v28 >> 1)
        {
          OUTLINED_FUNCTION_174(v28);
          sub_257483724();
        }

        *(v29 + 16) = v25 + 1;
        *(v29 + 8 * v25++ + 32) = v26;
        --v23;
      }

      while (v23);
      OUTLINED_FUNCTION_0_40();
      sub_25764D180();
      OUTLINED_FUNCTION_24_11();
    }

    else
    {
      OUTLINED_FUNCTION_0_40();
      sub_25764D180();
      OUTLINED_FUNCTION_24_11();
      v21 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_40();
    sub_25764D180();
    sub_25764A9B0(v2, v0);
    v21 = *v0;

    sub_25764D180();
  }

  *v6 = v21;
  *(v6 + 8) = EnumCaseMultiPayload != 1;
  OUTLINED_FUNCTION_35();
}

void SupportVectorClassifierConfiguration.classLabels.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_63_3();
  v12 = v11;
  v13 = __swift_coroFrameAllocStub(0x48uLL);
  *v12 = v13;
  v13[2] = v10;
  v14 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(0);
  v13[3] = v14;
  OUTLINED_FUNCTION_4(v14);
  v16 = *(v15 + 64);
  v13[4] = __swift_coroFrameAllocStub(v16);
  v17 = __swift_coroFrameAllocStub(v16);
  v13[5] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE08, &qword_25776CCD0);
  OUTLINED_FUNCTION_13(v18);
  v20 = *(v19 + 64);
  v13[6] = __swift_coroFrameAllocStub(v20);
  v13[7] = __swift_coroFrameAllocStub(v20);
  v21 = __swift_coroFrameAllocStub(v20);
  v13[8] = v21;
  v22 = *(type metadata accessor for Proto_SupportVectorClassifier(0) + 40);
  *(v13 + 3) = v22;
  OUTLINED_FUNCTION_64_3(v22);
  v23 = OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_155(v23, v24, v14);
  if (v25)
  {
    a10 = 0;
    a9 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_9_11();
    sub_25764A9B0(v21, v17);
    OUTLINED_FUNCTION_4_18();
    v26 = OUTLINED_FUNCTION_263();
    sub_25764D1D4(v26, v27);
    sub_25764C344();
    OUTLINED_FUNCTION_0_40();
    sub_25764D180();
  }

  *v13 = a9;
  *(v13 + 8) = a10;
  OUTLINED_FUNCTION_62_3();
}

void sub_25764C6FC(void ***a1, char a2)
{
  v6 = *a1;
  v7 = **a1;
  v8 = *(*a1 + 8);
  v9 = (*a1)[3];
  if (a2)
  {
    v10 = v6[6];
    if ((*a1)[1])
    {
      v11 = v10 + *(type metadata accessor for Proto_StringVector(0) + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v10 = v7;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v13 = **a1;

      sub_25764CFE8();
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_43_6();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    sub_2574FD834(v10, v5 + v4, &qword_27F87FE08, &qword_25776CCD0);
    v18 = *v6;
  }

  else
  {
    v10 = v6[7];
    if ((*a1)[1])
    {
      v12 = v10 + *(type metadata accessor for Proto_StringVector(0) + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v10 = v7;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v19 = **a1;

      sub_25764CFE8();
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_43_6();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    sub_2574FD834(v9, v5 + v4, &qword_27F87FE08, &qword_25776CCD0);
  }

  free(v7);
  free(v9);
  free(v10);
  free(v2);
  free(v3);

  free(v6);
}

uint64_t sub_25764C88C()
{
  v2 = type metadata accessor for DenseSupportVectorCollection(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_37_8();
  v7 = type metadata accessor for SparseSupportVectorCollection(v6);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_56_2();
  v11 = type metadata accessor for SupportVectorClassifierConfiguration.SupportVectors(0);
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_6_23();
  v18 = OUTLINED_FUNCTION_263();
  sub_25764D1D4(v18, v19);
  OUTLINED_FUNCTION_277();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_12_16();
    sub_25764A9B0(v17, v1);
    sub_2576C029C();
    OUTLINED_FUNCTION_2_28();
  }

  else
  {
    OUTLINED_FUNCTION_11_15();
    sub_25764A9B0(v17, v0);
    sub_25771C79C();
    OUTLINED_FUNCTION_1_29();
  }

  sub_25764D180();
  return OUTLINED_FUNCTION_263();
}

uint64_t sub_25764C9E0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v0[8])
  {
    if (v2)
    {
      v27 = MEMORY[0x277D84F90];
      v4 = OUTLINED_FUNCTION_13_8();
      sub_257484040(v4, v5, v6);
      v3 = v27;
      v7 = (v1 + 40);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;

        v10 = OUTLINED_FUNCTION_277();
        MEMORY[0x259C64E90](v10);
        MEMORY[0x259C64E90](34, 0xE100000000000000);

        v12 = *(v27 + 16);
        v11 = *(v27 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_257484040((v11 > 1), v12 + 1, 1);
        }

        *(v27 + 16) = v12 + 1;
        v13 = v27 + 24 * v12;
        *(v13 + 32) = 34;
        *(v13 + 40) = 0xE100000000000000;
        *(v13 + 48) = 0;
        v7 += 2;
        --v2;
      }

      while (v2);
    }
  }

  else if (v2)
  {
    v26 = MEMORY[0x277D84F90];
    v14 = OUTLINED_FUNCTION_13_8();
    sub_257484040(v14, v15, v16);
    v3 = v26;
    v17 = (v1 + 32);
    do
    {
      v18 = *v17++;
      v19 = sub_257743674();
      v21 = v20;
      v23 = *(v26 + 16);
      v22 = *(v26 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_257484040((v22 > 1), v23 + 1, 1);
      }

      *(v26 + 16) = v23 + 1;
      v24 = v26 + 24 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      *(v24 + 48) = 0;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t SupportVectorClassifierConfiguration.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  v3 = type metadata accessor for Proto_SupportVectorClassifier(0);
  v4 = v3[5];
  type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  *(a1 + v3[6]) = v2;
  *(a1 + v3[7]) = v2;
  *(a1 + v3[8]) = v2;
  *(a1 + v3[9]) = v2;
  v9 = v3[10];
  type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = a1 + v3[11];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v15 = v3[12];
  type metadata accessor for Proto_Kernel(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

void static SupportVectorClassifierConfiguration.SupportVectors.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for DenseSupportVectorCollection(0);
  v30 = OUTLINED_FUNCTION_13(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3();
  v33 = OUTLINED_FUNCTION_17_3();
  v34 = type metadata accessor for SparseSupportVectorCollection(v33);
  v35 = OUTLINED_FUNCTION_13(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  v38 = type metadata accessor for SupportVectorClassifierConfiguration.SupportVectors(0);
  v39 = OUTLINED_FUNCTION_4(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_11();
  v44 = (v42 - v43);
  MEMORY[0x28223BE20](v45);
  v47 = (&a9 - v46);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880648, &qword_25776CCD8);
  OUTLINED_FUNCTION_13(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_56_2();
  v53 = *(v52 + 56);
  sub_25764D1D4(v28, v20);
  sub_25764D1D4(v26, v20 + v53);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_23();
    sub_25764D1D4(v20, v44);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_12_16();
      sub_25764A9B0(v20 + v53, v21);
      v54 = *v44;
      v55 = *v21;
      sub_25747B378();
      if (v56)
      {
        v57 = *(type metadata accessor for Proto_DenseSupportVectors(0) + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_22_10();
        sub_25764D274(v58, v59);
        sub_257743644();
      }

      OUTLINED_FUNCTION_2_28();
      sub_25764D180();
      OUTLINED_FUNCTION_2_28();
LABEL_14:
      sub_25764D180();
      OUTLINED_FUNCTION_3_28();
      sub_25764D180();
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_2_28();
  }

  else
  {
    OUTLINED_FUNCTION_6_23();
    sub_25764D1D4(v20, v47);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_11_15();
      sub_25764A9B0(v20 + v53, v22);
      v60 = *v47;
      v61 = *v22;
      sub_25747B1CC();
      if (v62)
      {
        v63 = *(type metadata accessor for Proto_SparseSupportVectors(0) + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_22_10();
        sub_25764D274(v64, v65);
        sub_257743644();
      }

      OUTLINED_FUNCTION_1_29();
      sub_25764D180();
      OUTLINED_FUNCTION_1_29();
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_1_29();
  }

  sub_25764D180();
  sub_2574695E4(v20, &qword_27F880648, &qword_25776CCD8);
LABEL_15:
  OUTLINED_FUNCTION_35();
}

void sub_25764CFE8()
{
  OUTLINED_FUNCTION_63_3();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_16_1();
  v6 = v0 + *(type metadata accessor for Proto_Int64Vector(v5) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v7 = *(v4 + 16);
  v22 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_269();
  sub_2574845B8();
  v8 = v22;
  if (v7)
  {
    v9 = *(v4 + 16);
    v10 = (v4 + 32);
    v11 = v7;
    while (v9)
    {
      v12 = *v10;
      OUTLINED_FUNCTION_53_2();
      if (v14)
      {
        OUTLINED_FUNCTION_174(v13);
        sub_2574845B8();
        v8 = v22;
      }

      *(v8 + 16) = v1;
      *(v8 + 8 * v2 + 32) = v12;
      ++v10;
      --v9;
      if (!--v11)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_7:
  v15 = *(v4 + 16);
  v16 = v15 - v7;
  if (v15 == v7)
  {
LABEL_8:

    *v0 = v8;
    OUTLINED_FUNCTION_62_3();
    return;
  }

  if (v15 > v7)
  {
    v17 = *(v8 + 16);
    v18 = (v4 + 8 * v7 + 32);
    do
    {
      v20 = *v18++;
      v19 = v20;
      v21 = *(v8 + 24);
      if (v17 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_174(v21);
        sub_2574845B8();
      }

      *(v8 + 16) = v17 + 1;
      *(v8 + 8 * v17++ + 32) = v19;
      --v16;
    }

    while (v16);
    goto LABEL_8;
  }

LABEL_16:
  __break(1u);
}

uint64_t static SupportVectorClassifierConfiguration.ClassLabels.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_257479C78(v4, v5);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return sub_257487374(v4, v5);
}

uint64_t sub_25764D180()
{
  v1 = OUTLINED_FUNCTION_376();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_25764D1D4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t sub_25764D274(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25764D304()
{
  result = type metadata accessor for Proto_SupportVectorClassifier(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25764D370()
{
  result = type metadata accessor for SparseSupportVectorCollection(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DenseSupportVectorCollection(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t _s14ShapeDimensionOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s14ShapeDimensionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_11()
{

  return sub_25764D180();
}

uint64_t OUTLINED_FUNCTION_25_7@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 24) = a1;
  result = *(v2 + a1);
  *(v1 + 16) = result;
  *v1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_9()
{
  *(v2 - 168) = v1;
  *(v2 - 112) = v0;
  return 0;
}

void OUTLINED_FUNCTION_31_6()
{
  *(v1 - 112) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void OUTLINED_FUNCTION_34_4()
{

  sub_257469AE0();
}

void OUTLINED_FUNCTION_42_7(uint64_t a1@<X8>)
{
  *(a1 + 32) = v2;
  *(a1 + 40) = v1 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
  *(a1 + 48) = v3;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
}

void OUTLINED_FUNCTION_43_6()
{
  v1 = *(v0 + 12);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_45_3(double a1)
{
  *(v1 - 88) = a1;

  return sub_257743674();
}

char *OUTLINED_FUNCTION_46_5(char *a1)
{

  return sub_257484040(a1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_64_3@<X0>(uint64_t a1@<X8>)
{

  return sub_2574FD880(v1 + a1, v2, v3, v4);
}

void *OUTLINED_FUNCTION_66_2()
{

  return __swift_coroFrameAllocStub(v0);
}

void *OUTLINED_FUNCTION_67_2()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t sub_25764D7E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257743FF0;
  OUTLINED_FUNCTION_1_30(inited, 0x6449u);
  MEMORY[0x259C64E90](*v0, v0[1]);
  MEMORY[0x259C64E90](34, 0xE100000000000000);
  *(inited + 48) = 34;
  *(inited + 56) = 0xE100000000000000;
  *(inited + 64) = 0;
  *(inited + 72) = 1635017028;
  *(inited + 80) = 0xE400000000000000;
  sub_257486740(v0[2], v0[3]);
  *(inited + 88) = sub_257743674();
  *(inited + 96) = v2;
  *(inited + 104) = 0;
  return sub_2576A6964(inited);
}

uint64_t SerializedModelConfiguration.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25764D8F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SerializedModelConfiguration.identifier.setter(v1, v2);
}

uint64_t SerializedModelConfiguration.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*SerializedModelConfiguration.identifier.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25749BD04;
}

uint64_t SerializedModelConfiguration.data.getter()
{
  v1 = *(v0 + 16);
  sub_257486740(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_25764D9EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_257486740(*a1, v2);
  return SerializedModelConfiguration.data.setter(v1, v2);
}

uint64_t SerializedModelConfiguration.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_257486798(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t (*SerializedModelConfiguration.data.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  a1[1] = v4;
  sub_257486740(v3, v4);
  return sub_25764DAB4;
}

uint64_t sub_25764DAB4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  if (a2)
  {
    sub_257486740(*a1, v2);
    sub_257486798(v5, v6);
    *(v3 + 16) = v4;
    *(v3 + 24) = v2;

    return sub_257486798(v4, v2);
  }

  else
  {
    result = sub_257486798(*(v3 + 16), *(v3 + 24));
    *(v3 + 16) = v4;
    *(v3 + 24) = v2;
  }

  return result;
}

uint64_t SerializedModelConfiguration.init(identifier:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *(a5 + 1) = xmmword_257745740;
  v10 = a5 + *(type metadata accessor for Proto_SerializedModel(0) + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a5 = a1;
  a5[1] = a2;
  result = sub_257486798(a5[2], a5[3]);
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

BOOL static SerializedModelConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v4 || (sub_257743994()) && (MEMORY[0x259C648D0](a1[2], a1[3], a2[2], a2[3]))
  {
    v5 = *(type metadata accessor for Proto_SerializedModel(0) + 24);
    sub_2577431B4();
    sub_25764E194(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t SerializedModelConfiguration.hash(into:)()
{
  type metadata accessor for Proto_SerializedModel(0);
  OUTLINED_FUNCTION_0_41();
  sub_25764E194(v0, v1);

  return sub_2577435F4();
}

uint64_t SerializedModelConfiguration.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_SerializedModel(0);
  OUTLINED_FUNCTION_0_41();
  sub_25764E194(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25764DD80()
{
  sub_257743A14();
  type metadata accessor for Proto_SerializedModel(0);
  sub_25764E194(&qword_27F87BA00, type metadata accessor for Proto_SerializedModel);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t SerializedModelConfiguration.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23[1] = a1;
  v3 = sub_257743A84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  v12 = type metadata accessor for SerializedModelConfiguration();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  sub_25764E0A0(v2, v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_257743FF0;
  v16 = OUTLINED_FUNCTION_1_30(v15, 0x6469u);
  v17 = v2[1];
  v18 = MEMORY[0x277D837D0];
  v16[6] = *v2;
  v16[7] = v17;
  v16[9] = v18;
  v16[10] = 1635017060;
  v16[15] = MEMORY[0x277CC9318];
  v20 = v2[2];
  v19 = v2[3];
  v16[11] = 0xE400000000000000;
  v16[12] = v20;
  v16[13] = v19;
  v21 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v21);
  (*(v4 + 104))(v7, *MEMORY[0x277D84C38], v3);

  sub_257486740(v20, v19);
  return sub_257743AA4();
}

uint64_t type metadata accessor for SerializedModelConfiguration()
{
  result = qword_281537770;
  if (!qword_281537770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25764E0A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SerializedModelConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25764E194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25764E204()
{
  result = type metadata accessor for Proto_SerializedModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_30@<X0>(uint64_t result@<X0>, unsigned __int16 a2@<W8>)
{
  *(result + 32) = a2 | 0x696669746E650000;
  *(result + 40) = 0xEA00000000007265;
  return result;
}

uint64_t sub_25764E2A4(uint64_t a1, uint64_t *a2)
{
  v77 = a2;
  v4 = type metadata accessor for MLProgram.ValueType.StateParameters(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v74 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v73 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MLProgram.ValueType.TupleParameters(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v72 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MLProgram.ValueType.ListParameters(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v71 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  v16 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v70 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v69 - v20;
  v82 = type metadata accessor for Proto_MILSpec_ValueType(0);
  v22 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v24 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for MLProgram.NamedValueType();
  v76 = *(v25 - 8);
  v26 = *(v76 + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = (v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(a1 + 16);
  v30 = MEMORY[0x277D84F90];
  if (v29)
  {
    v69[1] = v2;
    v84 = MEMORY[0x277D84F90];
    sub_2574848C0();
    v31 = (a1 + 40);
    v30 = v84;
    v81 = v24;
    do
    {
      v79 = v30;
      v80 = v29;
      v32 = v21;
      v34 = *(v31 - 1);
      v33 = *v31;
      v35 = *v77;
      v36 = *(*v77 + 16);
      swift_bridgeObjectRetain_n();
      if (v36 && (v37 = sub_25765368C(v34, v33), (v38 & 1) != 0))
      {
        v39 = *(*(v35 + 56) + 8 * v37);
      }

      else
      {
        v39 = swift_allocBox();
        v83 = 3;
        MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
      }

      v40 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
      v41 = v28 + *(v40 + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v42 = *(v40 + 24);
      v43 = v82;
      __swift_storeEnumTagSinglePayload(v28 + v42, 1, 1, v82);
      *v28 = v34;
      v28[1] = v33;
      v78 = v33;
      v44 = v81;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v45 = *(v43 + 20);
      if (qword_27F878FF0 != -1)
      {
        swift_once();
      }

      *&v44[v45] = qword_27F87B038;
      v21 = v32;
      switch(v39 >> 61)
      {
        case 1uLL:
          v54 = swift_projectBox();
          v55 = v71;
          sub_257653FCC(v54, v71);
          sub_257653D3C(v55, v32);
          break;
        case 2uLL:
          v50 = swift_projectBox();
          v51 = v72;
          sub_257653FCC(v50, v72);
          sub_257653D3C(v51, v32);
          break;
        case 3uLL:
          v52 = swift_projectBox();
          v53 = v73;
          sub_257653FCC(v52, v73);
          sub_257653D3C(v53, v32);
          break;
        case 4uLL:
          v48 = swift_projectBox();
          v49 = v74;
          sub_257653FCC(v48, v74);
          sub_257653D3C(v49, v32);
          break;
        default:
          v46 = swift_projectBox();
          v47 = v70;
          sub_257653FCC(v46, v70);
          sub_257653D3C(v47, v32);
          break;
      }

      v56 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v32, 0, 1, v56);

      v57 = v81;
      v58 = *&v81[v45];
      if (swift_isUniquelyReferenced_nonNull_native())
      {

        v59 = *(v57 + v45);
      }

      else
      {
        v60 = *(v57 + v45);
        v61 = type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
        v62 = *(v61 + 48);
        v63 = *(v61 + 52);
        swift_allocObject();

        v59 = sub_2574E503C(v64);

        *(v57 + v45) = v59;
      }

      v65 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
      swift_beginAccess();
      sub_25749FBA8(v21, v59 + v65);
      swift_endAccess();
      sub_2574695E4(v28 + v42, &qword_27F879E10, &qword_257744730);
      sub_257653D3C(v57, v28 + v42);
      __swift_storeEnumTagSinglePayload(v28 + v42, 0, 1, v82);

      v30 = v79;
      v66 = v80;
      v84 = v79;
      v67 = *(v79 + 16);
      if (v67 >= *(v79 + 24) >> 1)
      {
        sub_2574848C0();
        v30 = v84;
      }

      *(v30 + 16) = v67 + 1;
      sub_257653D3C(v28, v30 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v67);
      v31 += 2;
      v29 = v66 - 1;
    }

    while (v29);
  }

  return v30;
}

uint64_t MLProgram.Function.inputs.getter()
{
  v1 = type metadata accessor for MLProgram.NamedValueType();
  v2 = OUTLINED_FUNCTION_24(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = *v0;
  v11 = *(*v0 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v24 = MEMORY[0x277D84F90];
    sub_2574848C0();
    v12 = v24;
    v13 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
    OUTLINED_FUNCTION_24(v13);
    v15 = v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v17 = *(v16 + 72);
    do
    {
      OUTLINED_FUNCTION_26_7();
      sub_257653FCC(v15, v9);
      v19 = *(v24 + 16);
      v18 = *(v24 + 24);
      if (v19 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_174(v18);
        sub_2574848C0();
      }

      *(v24 + 16) = v19 + 1;
      v20 = *(v4 + 80);
      OUTLINED_FUNCTION_193();
      v21 = *(v4 + 72);
      OUTLINED_FUNCTION_42_8();
      sub_257653D3C(v9, v22);
      v15 += v17;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void sub_25764EB90(uint64_t *a1)
{
  v1 = *a1;

  MLProgram.Function.inputs.setter();
}

void MLProgram.Function.inputs.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = type metadata accessor for MLProgram.NamedValueType();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v10 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
  v11 = OUTLINED_FUNCTION_24(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = *(v3 + 16);
  if (v19)
  {
    v31 = MEMORY[0x277D84F90];
    sub_257484918();
    v20 = v31;
    v21 = *(v7 + 80);
    OUTLINED_FUNCTION_193();
    v23 = v3 + v22;
    v24 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_13_9();
      sub_257653FCC(v23, v1);
      OUTLINED_FUNCTION_26_7();
      sub_257653FCC(v1, v18);
      OUTLINED_FUNCTION_11_16();
      sub_257654024(v1, v25);
      v27 = *(v31 + 16);
      v26 = *(v31 + 24);
      if (v27 >= v26 >> 1)
      {
        OUTLINED_FUNCTION_174(v26);
        sub_257484918();
      }

      *(v31 + 16) = v27 + 1;
      v28 = *(v13 + 80);
      OUTLINED_FUNCTION_193();
      sub_257653D3C(v18, v31 + v29 + *(v13 + 72) * v27);
      v23 += v24;
      --v19;
    }

    while (v19);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v30 = *v0;

  *v0 = v20;
  OUTLINED_FUNCTION_35();
}

void (*MLProgram.Function.inputs.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = MLProgram.Function.inputs.getter();
  return sub_25764EE08;
}

void sub_25764EE08(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    MLProgram.Function.inputs.setter();
  }

  else
  {
    v5 = *a1;
    MLProgram.Function.inputs.setter();
  }
}

void MLProgram.Function.outputs.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = type metadata accessor for MLProgram.Operation();
  v2 = OUTLINED_FUNCTION_24(v1);
  v213 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_1();
  v219 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_196();
  v216 = v15;
  v16 = OUTLINED_FUNCTION_153();
  v17 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(v16);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_167();
  v221 = v25;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_167();
  v217 = v27;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_196();
  v212 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  v31 = OUTLINED_FUNCTION_13(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25_0();
  v224 = v34;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_196();
  v218 = v36;
  v37 = OUTLINED_FUNCTION_153();
  v38 = type metadata accessor for Proto_MILSpec_ValueType(v37);
  v39 = OUTLINED_FUNCTION_4(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_25_0();
  v223 = v42;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_196();
  v225 = v44;
  OUTLINED_FUNCTION_153();
  v45 = type metadata accessor for MLProgram.NamedValueType();
  v46 = OUTLINED_FUNCTION_24(v45);
  v230 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_25_0();
  v229 = v50;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_167();
  v211 = v52;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v53);
  v55 = (&v209 - v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880668, &unk_257774DB0);
  OUTLINED_FUNCTION_13(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_40();
  v60 = type metadata accessor for MLProgram.Block();
  v61 = OUTLINED_FUNCTION_13(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_11();
  v66 = v64 - v65;
  MEMORY[0x28223BE20](v67);
  v69 = &v209 - v68;
  MLProgram.Function.blockSpecializations.getter();
  sub_25763CD70(v70, v0);

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880428, &unk_25776C030);
  v72 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_155(v72, v73, v71);
  if (v74)
  {
    sub_2574695E4(v0, &qword_27F880668, &unk_257774DB0);
LABEL_77:
    OUTLINED_FUNCTION_35();
    return;
  }

  v220 = v23;
  v222 = v13;
  v75 = v0[1];

  sub_257653D3C(v0 + *(v71 + 48), v66);
  v210 = v69;
  sub_257653D3C(v66, v69);
  v233 = MEMORY[0x277D84F98];
  v76 = MLProgram.Function.inputs.getter();
  v77 = v76;
  v78 = *(v76 + 16);
  v227 = v17;
  v228 = v38;
  v215 = v78;
  if (v78)
  {
    v79 = 0;
    v80 = *(v230 + 80);
    OUTLINED_FUNCTION_193();
    v214 = v77 + v81;
    v82 = v218;
    v83 = v225;
    while (v79 < *(v77 + 16))
    {
      v84 = *(v230 + 72);
      OUTLINED_FUNCTION_13_9();
      sub_257653FCC(v85, v55);
      v86 = v55[1];
      v226 = *v55;
      v87 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
      sub_2574AD5D8(v55 + *(v87 + 24), v82, &qword_27F879E10, &qword_257744730);
      OUTLINED_FUNCTION_155(v82, 1, v38);
      if (v74)
      {
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        v88 = *(v38 + 20);
        v90 = v227;
        if (qword_27F878FF0 != -1)
        {
          OUTLINED_FUNCTION_12_15();
          swift_once();
        }

        *(v83 + v88) = qword_27F87B038;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v82, 1, v38);

        if (EnumTagSinglePayload != 1)
        {
          sub_2574695E4(v82, &qword_27F879E10, &qword_257744730);
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_29();
        sub_257653D3C(v82, v83);
        v90 = v227;
      }

      v91 = *(v83 + *(v38 + 20));
      v92 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
      OUTLINED_FUNCTION_296();
      v93 = v91 + v92;
      v94 = v216;
      sub_2574AD5D8(v93, v216, &qword_27F879D40, &qword_257744660);
      OUTLINED_FUNCTION_155(v94, 1, v90);
      if (v74)
      {
        sub_2574695E4(v94, &qword_27F879D40, &qword_257744660);
        type metadata accessor for MLProgram.ValueType.TensorParameters(0);
        v95 = swift_allocBox();
        LOBYTE(v231) = 3;
        MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
        OUTLINED_FUNCTION_0_42();
        sub_257654024(v83, v96);
      }

      else
      {
        OUTLINED_FUNCTION_0_42();
        sub_257654024(v83, v106);
        OUTLINED_FUNCTION_46_6();
        v107 = v94;
        v108 = v212;
        sub_257653D3C(v107, v212);
        sub_257653D3C(v108, v217);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        switch(EnumCaseMultiPayload)
        {
          case 1:
            type metadata accessor for MLProgram.ValueType.ListParameters(0);
            v130 = swift_allocBox();
            OUTLINED_FUNCTION_3_29();
            OUTLINED_FUNCTION_69_1(v131, v132);
            v95 = v130 | 0x2000000000000000;
            break;
          case 2:
            type metadata accessor for MLProgram.ValueType.TupleParameters(0);
            v124 = swift_allocBox();
            OUTLINED_FUNCTION_5_24();
            OUTLINED_FUNCTION_69_1(v125, v126);
            v95 = v124 | 0x4000000000000000;
            break;
          case 3:
            type metadata accessor for MLProgram.ValueType.DictionaryParameters(0);
            v127 = swift_allocBox();
            OUTLINED_FUNCTION_4_19();
            OUTLINED_FUNCTION_69_1(v128, v129);
            v95 = v127 | 0x6000000000000000;
            break;
          case 4:
            type metadata accessor for MLProgram.ValueType.StateParameters(0);
            v121 = swift_allocBox();
            OUTLINED_FUNCTION_6_24();
            OUTLINED_FUNCTION_69_1(v122, v123);
            v95 = v121 | 0x8000000000000000;
            break;
          default:
            type metadata accessor for MLProgram.ValueType.TensorParameters(0);
            v95 = swift_allocBox();
            OUTLINED_FUNCTION_7_15();
            OUTLINED_FUNCTION_69_1(v110, v111);
            break;
        }
      }

      v97 = v233;
      swift_isUniquelyReferenced_nonNull_native();
      v231 = v97;
      sub_25765368C(v226, v86);
      OUTLINED_FUNCTION_52_3();
      if (__OFADD__(v100, v101))
      {
        goto LABEL_82;
      }

      v102 = v98;
      v103 = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880670, &qword_25776CF20);
      if (sub_257743894())
      {
        v104 = sub_25765368C(v226, v86);
        v83 = v225;
        if ((v103 & 1) != (v105 & 1))
        {
          goto LABEL_85;
        }

        v102 = v104;
      }

      else
      {
        v83 = v225;
      }

      v112 = v231;
      if (v103)
      {
        v113 = *(v231 + 56);
        v114 = *(v113 + 8 * v102);
        *(v113 + 8 * v102) = v95;
      }

      else
      {
        OUTLINED_FUNCTION_71_1(v231 + 8 * (v102 >> 6));
        v116 = (v115 + 16 * v102);
        *v116 = v226;
        v116[1] = v86;
        *(*(v112 + 56) + 8 * v102) = v95;
        v117 = *(v112 + 16);
        v118 = __OFADD__(v117, 1);
        v119 = v117 + 1;
        if (v118)
        {
          goto LABEL_84;
        }

        *(v112 + 16) = v119;
      }

      ++v79;
      v233 = v112;
      OUTLINED_FUNCTION_11_16();
      sub_257654024(v55, v120);
      v38 = v228;
      v82 = v218;
      if (v215 == v79)
      {
        goto LABEL_33;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

LABEL_33:

  v133 = v210;
  v217 = *(MLProgram.Block.operations.getter() + 16);
  if (!v217)
  {

LABEL_76:
    sub_25764E2A4(*(v133 + 8), &v233);
    OUTLINED_FUNCTION_17_10();
    sub_257654024(v133, v208);

    goto LABEL_77;
  }

  v134 = 0;
  v135 = *(v213 + 80);
  OUTLINED_FUNCTION_193();
  v216 = v136 + v137;
  v138 = v222;
  v215 = v136;
  while (v134 < *(v136 + 16))
  {
    v139 = *(v213 + 72);
    v218 = v134;
    v140 = v216 + v139 * v134;
    v141 = v219;
    sub_257653FCC(v140, v219);
    v142 = *(v141 + 24);
    v143 = *(v142 + 16);
    if (v143)
    {
      v232 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_64_4();
      sub_2574848C0();
      v144 = v211;
      v145 = v232;
      v146 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
      OUTLINED_FUNCTION_24(v146);
      v148 = v142 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
      v150 = *(v149 + 72);
      do
      {
        OUTLINED_FUNCTION_26_7();
        sub_257653FCC(v148, v144);
        v232 = v145;
        v152 = *(v145 + 16);
        v151 = *(v145 + 24);
        if (v152 >= v151 >> 1)
        {
          OUTLINED_FUNCTION_174(v151);
          sub_2574848C0();
          v144 = v211;
          v145 = v232;
        }

        *(v145 + 16) = v152 + 1;
        v153 = *(v230 + 80);
        OUTLINED_FUNCTION_193();
        v155 = *(v154 + 72);
        OUTLINED_FUNCTION_42_8();
        sub_257653D3C(v144, v156);
        v148 += v150;
        --v143;
      }

      while (v143);
      v38 = v228;
    }

    else
    {
      v145 = MEMORY[0x277D84F90];
    }

    sub_257654024(v219, type metadata accessor for MLProgram.Operation);
    v226 = *(v145 + 16);
    if (v226)
    {
      v157 = 0;
      v158 = *(v230 + 80);
      OUTLINED_FUNCTION_193();
      v225 = v145 + v159;
      while (v157 < *(v145 + 16))
      {
        v160 = v229;
        v161 = *(v230 + 72);
        OUTLINED_FUNCTION_13_9();
        sub_257653FCC(v162, v160);
        v164 = *v160;
        v163 = v160[1];
        v165 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
        v166 = v224;
        sub_2574AD5D8(v160 + *(v165 + 24), v224, &qword_27F879E10, &qword_257744730);
        v167 = OUTLINED_FUNCTION_188();
        OUTLINED_FUNCTION_155(v167, v168, v38);
        if (v74)
        {
          v173 = v223;
          _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
          v169 = *(v38 + 20);
          if (qword_27F878FF0 != -1)
          {
            OUTLINED_FUNCTION_12_15();
            swift_once();
          }

          *(v173 + v169) = qword_27F87B038;
          v170 = OUTLINED_FUNCTION_188();
          v172 = __swift_getEnumTagSinglePayload(v170, v171, v38);

          if (v172 != 1)
          {
            sub_2574695E4(v166, &qword_27F879E10, &qword_257744730);
          }
        }

        else
        {
          OUTLINED_FUNCTION_2_29();
          v173 = v223;
          sub_257653D3C(v166, v223);
        }

        v174 = *(v173 + *(v38 + 20));
        v175 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
        OUTLINED_FUNCTION_296();
        sub_2574AD5D8(v174 + v175, v138, &qword_27F879D40, &qword_257744660);
        OUTLINED_FUNCTION_155(v138, 1, v227);
        if (v74)
        {
          sub_2574695E4(v138, &qword_27F879D40, &qword_257744660);
          type metadata accessor for MLProgram.ValueType.TensorParameters(0);
          v176 = swift_allocBox();
          LOBYTE(v232) = 3;
          MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
          OUTLINED_FUNCTION_0_42();
          sub_257654024(v173, v177);
        }

        else
        {
          OUTLINED_FUNCTION_0_42();
          sub_257654024(v173, v186);
          OUTLINED_FUNCTION_46_6();
          v187 = v221;
          sub_257653D3C(v138, v221);
          v188 = v187;
          v189 = v220;
          sub_257653D3C(v188, v220);
          v190 = swift_getEnumCaseMultiPayload();
          switch(v190)
          {
            case 1:
              type metadata accessor for MLProgram.ValueType.ListParameters(0);
              v206 = swift_allocBox();
              OUTLINED_FUNCTION_3_29();
              sub_257653D3C(v189, v207);
              v176 = v206 | 0x2000000000000000;
              break;
            case 2:
              type metadata accessor for MLProgram.ValueType.TupleParameters(0);
              v202 = swift_allocBox();
              OUTLINED_FUNCTION_5_24();
              sub_257653D3C(v189, v203);
              v176 = v202 | 0x4000000000000000;
              break;
            case 3:
              type metadata accessor for MLProgram.ValueType.DictionaryParameters(0);
              v204 = swift_allocBox();
              OUTLINED_FUNCTION_4_19();
              sub_257653D3C(v189, v205);
              v176 = v204 | 0x6000000000000000;
              break;
            case 4:
              type metadata accessor for MLProgram.ValueType.StateParameters(0);
              v200 = swift_allocBox();
              OUTLINED_FUNCTION_6_24();
              sub_257653D3C(v189, v201);
              v176 = v200 | 0x8000000000000000;
              break;
            default:
              type metadata accessor for MLProgram.ValueType.TensorParameters(0);
              v176 = swift_allocBox();
              OUTLINED_FUNCTION_7_15();
              sub_257653D3C(v189, v191);
              break;
          }
        }

        v178 = v233;
        swift_isUniquelyReferenced_nonNull_native();
        v232 = v178;
        sub_25765368C(v164, v163);
        OUTLINED_FUNCTION_52_3();
        if (__OFADD__(v181, v182))
        {
          goto LABEL_79;
        }

        v183 = v179;
        v184 = v180;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880670, &qword_25776CF20);
        if (sub_257743894())
        {
          sub_25765368C(v164, v163);
          OUTLINED_FUNCTION_63_4();
          v138 = v222;
          if (!v74)
          {
            goto LABEL_85;
          }

          v183 = v185;
        }

        else
        {
          v138 = v222;
        }

        v192 = v232;
        if (v184)
        {
          v193 = *(v232 + 56);
          v194 = *(v193 + 8 * v183);
          *(v193 + 8 * v183) = v176;
        }

        else
        {
          OUTLINED_FUNCTION_71_1(v232 + 8 * (v183 >> 6));
          v196 = (v195 + 16 * v183);
          *v196 = v164;
          v196[1] = v163;
          *(*(v192 + 56) + 8 * v183) = v176;
          v197 = *(v192 + 16);
          v118 = __OFADD__(v197, 1);
          v198 = v197 + 1;
          if (v118)
          {
            goto LABEL_80;
          }

          *(v192 + 16) = v198;
        }

        ++v157;
        v233 = v192;
        OUTLINED_FUNCTION_11_16();
        sub_257654024(v229, v199);
        v38 = v228;
        if (v226 == v157)
        {
          goto LABEL_73;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

LABEL_73:
    v134 = v218 + 1;

    v136 = v215;
    if (v134 == v217)
    {

      v133 = v210;
      goto LABEL_76;
    }
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  sub_2577439B4();
  __break(1u);
}

void MLProgram.Function.blockSpecializations.getter()
{
  OUTLINED_FUNCTION_31();
  v6 = type metadata accessor for MLProgram.Block();
  v7 = OUTLINED_FUNCTION_24(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v28 = v10;
  v11 = OUTLINED_FUNCTION_153();
  v12 = type metadata accessor for Proto_MILSpec_Block(v11);
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_64_2(v16);
  v17 = *(v1 + 24);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880678, &qword_25776CF28);
  v19 = sub_2577438E4();
  OUTLINED_FUNCTION_35_3(v19);
  if (v2)
  {
    while (1)
    {
      OUTLINED_FUNCTION_50_2();
LABEL_8:
      OUTLINED_FUNCTION_55_3(v20);
      OUTLINED_FUNCTION_44_5();
      sub_257653FCC(v22, v0);
      OUTLINED_FUNCTION_43_7();
      v23 = v0;
      v0 = v28;
      sub_257653D3C(v23, v28);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_15_6();
      sub_257653D3C(v28, v24);
      v25 = *(v18 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      *(v18 + 16) = v27;

      if (!v2)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v21 = v4;
    while (1)
    {
      v4 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v4 >= v5)
      {
        OUTLINED_FUNCTION_35();
        return;
      }

      ++v21;
      if (*(v3 + 8 * v4))
      {
        OUTLINED_FUNCTION_49_2();
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t MLProgram.Function.opset.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_205();
}

uint64_t sub_25764FEC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MLProgram.Function.opset.setter(v1, v2);
}

uint64_t MLProgram.Function.opset.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t (*MLProgram.Function.opset.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25764FF90;
}

uint64_t sub_25764FF90(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *(v5 + 8) = v3;
    *(v5 + 16) = v2;
  }

  else
  {
    v8 = a1[3];

    *(v5 + 8) = v3;
    *(v5 + 16) = v2;
  }

  return result;
}

uint64_t sub_257650004(uint64_t *a1)
{
  v1 = *a1;

  return MLProgram.Function.blockSpecializations.setter(v2);
}

uint64_t MLProgram.Function.blockSpecializations.setter(uint64_t a1)
{
  sub_257653AF8(a1);
  v3 = v2;

  v4 = *(v1 + 24);

  *(v1 + 24) = v3;
  return result;
}

uint64_t (*MLProgram.Function.blockSpecializations.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  MLProgram.Function.blockSpecializations.getter();
  *a1 = v3;
  return sub_2576500C8;
}

uint64_t sub_2576500C8(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {

    sub_257653AF8(v5);
    OUTLINED_FUNCTION_84_4();
    v6 = *(v3 + 24);

    *(v3 + 24) = v2;
  }

  else
  {
    sub_257653AF8(v4);
    OUTLINED_FUNCTION_84_4();
    v8 = *(v3 + 24);

    *(v3 + 24) = v2;
  }

  return result;
}

void MLProgram.Function.attributes.getter()
{
  OUTLINED_FUNCTION_31();
  v6 = type metadata accessor for MLProgram.Value();
  v7 = OUTLINED_FUNCTION_24(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v28 = v10;
  v11 = OUTLINED_FUNCTION_153();
  v12 = type metadata accessor for Proto_MILSpec_Value(v11);
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_64_2(v16);
  v17 = *(v1 + 32);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805D0, &qword_25776CBC8);
  v19 = sub_2577438E4();
  OUTLINED_FUNCTION_35_3(v19);
  if (v2)
  {
    while (1)
    {
      OUTLINED_FUNCTION_50_2();
LABEL_8:
      v22 = OUTLINED_FUNCTION_55_3(v20);
      sub_257653FCC(v22, v0);
      v23 = v0;
      v0 = v28;
      sub_257653D3C(v23, v28);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_18_13();
      sub_257653D3C(v28, v24);
      v25 = *(v18 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      *(v18 + 16) = v27;

      if (!v2)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v21 = v4;
    while (1)
    {
      v4 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v4 >= v5)
      {
        OUTLINED_FUNCTION_35();
        return;
      }

      ++v21;
      if (*(v3 + 8 * v4))
      {
        OUTLINED_FUNCTION_49_2();
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_257650320(uint64_t *a1)
{
  v1 = *a1;

  return MLProgram.Function.attributes.setter(v2);
}

uint64_t MLProgram.Function.attributes.setter(uint64_t a1)
{
  v2 = sub_257653818(a1);

  v3 = *(v1 + 32);

  *(v1 + 32) = v2;
  return result;
}

uint64_t (*MLProgram.Function.attributes.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  MLProgram.Function.attributes.getter();
  *a1 = v3;
  return sub_2576503E4;
}

uint64_t sub_2576503E4(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {

    sub_257653818(v5);
    OUTLINED_FUNCTION_84_4();
    v6 = *(v3 + 32);

    *(v3 + 32) = v2;
  }

  else
  {
    sub_257653818(v4);
    OUTLINED_FUNCTION_84_4();
    v8 = *(v3 + 32);

    *(v3 + 32) = v2;
  }

  return result;
}

void sub_257650478()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v440 = *MEMORY[0x277D85DE8];
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  v2 = OUTLINED_FUNCTION_4(v418);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_25_0();
  v417 = v5;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_167();
  v416 = v7;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_196();
  v415 = v9;
  v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880428, &unk_25776C030);
  v10 = OUTLINED_FUNCTION_4(v424);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_0();
  v423 = v13;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_167();
  v422 = v15;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_196();
  v421 = v17;
  v18 = OUTLINED_FUNCTION_153();
  v406 = type metadata accessor for MLProgram.ValueType.ListParameters(v18);
  v19 = OUTLINED_FUNCTION_4(v406);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_12_1();
  v409 = v22;
  v23 = OUTLINED_FUNCTION_153();
  v420 = type metadata accessor for MLProgram.ValueType.TensorParameters(v23);
  v24 = OUTLINED_FUNCTION_4(v420);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12_1();
  v419 = v27;
  v28 = OUTLINED_FUNCTION_153();
  v405 = type metadata accessor for MLProgram.ValueType.StateParameters(v28);
  v29 = OUTLINED_FUNCTION_4(v405);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25_0();
  v381 = v32;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_167();
  v385 = v34;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_167();
  v392 = v36;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_196();
  v413 = v38;
  v39 = OUTLINED_FUNCTION_153();
  v404 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v39);
  v40 = OUTLINED_FUNCTION_4(v404);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_12_1();
  v408 = v43;
  v44 = OUTLINED_FUNCTION_153();
  v403 = type metadata accessor for MLProgram.ValueType.TupleParameters(v44);
  v45 = OUTLINED_FUNCTION_4(v403);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_12_1();
  v407 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v50 = OUTLINED_FUNCTION_13(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_25_0();
  v389 = v53;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_167();
  v397 = v55;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v56);
  v58 = v378 - v57;
  v59 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  v60 = OUTLINED_FUNCTION_4(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_25_0();
  v388 = v63;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_167();
  v386 = v65;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_167();
  v396 = v67;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_167();
  v394 = v69;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_167();
  v431 = v71;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_196();
  v414 = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  v75 = OUTLINED_FUNCTION_13(v74);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_25_0();
  v383 = v78;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_167();
  v384 = v80;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_167();
  v390 = v82;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_167();
  v391 = v84;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_167();
  v400 = v86;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_167();
  v402 = v88;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v89);
  v91 = v378 - v90;
  v92 = type metadata accessor for Proto_MILSpec_ValueType(0);
  v93 = OUTLINED_FUNCTION_4(v92);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_25_0();
  v382 = v96;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_167();
  v387 = v98;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_167();
  v395 = v100;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_196();
  v430 = v102;
  OUTLINED_FUNCTION_153();
  v103 = type metadata accessor for MLProgram.NamedValueType();
  v104 = OUTLINED_FUNCTION_24(v103);
  v106 = v105;
  v108 = *(v107 + 64);
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_3();
  v111 = (v110 - v109);
  v112 = MLProgram.Function.inputs.getter();
  v113 = *(v112 + 16);
  v429 = v0;
  if (v113)
  {
    v437 = MEMORY[0x277D84F90];
    v114 = v112;
    v435 = v113;
    sub_257484060();
    v115 = *(v106 + 80);
    OUTLINED_FUNCTION_193();
    v393 = v114;
    v117 = v114 + v116;
    v436 = v437;
    v425 = *(v106 + 72);
    v401 = xmmword_2577442B0;
    v427 = v59;
    v428 = v58;
    v426 = v91;
    v432 = v92;
    do
    {
      OUTLINED_FUNCTION_13_9();
      sub_257653FCC(v117, v111);
      OUTLINED_FUNCTION_82_2();
      MEMORY[0x259C64E90](*v111, v111[1]);
      OUTLINED_FUNCTION_316();
      v433 = v439;
      v434 = v438;
      v118 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
      v119 = v111;
      sub_2574AD5D8(v111 + *(v118 + 24), v91, &qword_27F879E10, &qword_257744730);
      OUTLINED_FUNCTION_155(v91, 1, v92);
      if (v120)
      {
        v123 = v430;
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        v121 = *(v92 + 20);
        if (qword_27F878FF0 != -1)
        {
          OUTLINED_FUNCTION_12_15();
          swift_once();
        }

        *(v123 + v121) = qword_27F87B038;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v91, 1, v92);

        if (EnumTagSinglePayload != 1)
        {
          sub_2574695E4(v91, &qword_27F879E10, &qword_257744730);
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_29();
        v123 = v430;
        sub_257653D3C(v91, v430);
      }

      v124 = *(v123 + *(v92 + 20));
      v125 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
      OUTLINED_FUNCTION_296();
      v126 = v124 + v125;
      v127 = &qword_257744660;
      sub_2574AD5D8(v126, v58, &qword_27F879D40, &qword_257744660);
      v128 = OUTLINED_FUNCTION_197();
      OUTLINED_FUNCTION_155(v128, v129, v59);
      if (v120)
      {
        sub_2574695E4(v58, &qword_27F879D40, &qword_257744660);
        swift_allocBox();
        OUTLINED_FUNCTION_28_9();
        MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
        OUTLINED_FUNCTION_0_42();
        sub_257654024(v123, v130);
        v111 = v119;
LABEL_12:
        swift_projectBox();
        OUTLINED_FUNCTION_19_11();
        v131 = v419;
        sub_257653FCC(v132, v419);
        sub_2576F1B84();
        OUTLINED_FUNCTION_49_3();
        v133 = type metadata accessor for MLProgram.ValueType.TensorParameters;
LABEL_13:
        sub_257654024(v131, v133);
      }

      else
      {
        OUTLINED_FUNCTION_0_42();
        sub_257654024(v123, v140);
        v127 = v414;
        sub_257653D3C(v58, v414);
        v141 = v127;
        LOBYTE(v127) = v431;
        sub_257653D3C(v141, v431);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v111 = v119;
        switch(EnumCaseMultiPayload)
        {
          case 1:
            swift_allocBox();
            v166 = v165;
            OUTLINED_FUNCTION_3_29();
            sub_257653D3C(v431, v167);
            OUTLINED_FUNCTION_10_20();
            v168 = v166;
            v131 = v409;
            sub_257653FCC(v168, v409);
            sub_2576F210C();
            OUTLINED_FUNCTION_49_3();
            v133 = type metadata accessor for MLProgram.ValueType.ListParameters;
            goto LABEL_13;
          case 2:
            swift_allocBox();
            v158 = v157;
            OUTLINED_FUNCTION_5_24();
            sub_257653D3C(v431, v159);
            OUTLINED_FUNCTION_14_8();
            v160 = v158;
            v131 = v407;
            sub_257653FCC(v160, v407);
            sub_2576F2344();
            OUTLINED_FUNCTION_49_3();
            v133 = type metadata accessor for MLProgram.ValueType.TupleParameters;
            goto LABEL_13;
          case 3:
            swift_allocBox();
            v162 = v161;
            OUTLINED_FUNCTION_4_19();
            sub_257653D3C(v431, v163);
            OUTLINED_FUNCTION_12_17();
            v164 = v162;
            v131 = v408;
            sub_257653FCC(v164, v408);
            sub_2576F4D1C();
            OUTLINED_FUNCTION_49_3();
            v133 = type metadata accessor for MLProgram.ValueType.DictionaryParameters;
            goto LABEL_13;
          case 4:
            v410 = v117;
            v412 = swift_allocBox();
            v145 = v144;
            OUTLINED_FUNCTION_6_24();
            sub_257653D3C(v431, v146);
            OUTLINED_FUNCTION_16_7();
            v147 = v413;
            sub_257653FCC(v145, v413);
            v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
            inited = swift_initStackObject();
            OUTLINED_FUNCTION_33_4(inited);
            v411 = v149;
            *(v149 + 40) = v150;
            v398 = type metadata accessor for Proto_MILSpec_StateType(0);
            v151 = *(v147 + *(v398 + 20));
            v152 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
            OUTLINED_FUNCTION_296();
            v153 = v402;
            sub_2574AD5D8(v151 + v152, v402, &qword_27F879E10, &qword_257744730);
            v154 = OUTLINED_FUNCTION_197();
            v155 = v432;
            v127 = __swift_getEnumTagSinglePayload(v154, v156, v432);
            sub_2574695E4(v153, &qword_27F879E10, &qword_257744730);
            if (v127 == 1)
            {
              swift_allocBox();
              OUTLINED_FUNCTION_28_9();
              MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
              v117 = v410;
LABEL_34:
              swift_projectBox();
              OUTLINED_FUNCTION_19_11();
              v184 = v419;
              sub_257653FCC(v185, v419);
              v186 = v184;
              sub_2576F1B84();
              OUTLINED_FUNCTION_32_6();
              OUTLINED_FUNCTION_30_6();
              goto LABEL_35;
            }

            v169 = v400;
            sub_2574AD5D8(v151 + v152, v400, &qword_27F879E10, &qword_257744730);
            v170 = OUTLINED_FUNCTION_188();
            OUTLINED_FUNCTION_155(v170, v171, v155);
            v152 = v155;
            v117 = v410;
            if (v120)
            {
              v177 = v395;
              _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
              v172 = *(v152 + 20);
              if (qword_27F878FF0 != -1)
              {
                OUTLINED_FUNCTION_12_15();
                swift_once();
              }

              *(v177 + v172) = qword_27F87B038;
              v173 = v400;
              v174 = OUTLINED_FUNCTION_197();
              v176 = __swift_getEnumTagSinglePayload(v174, v175, v152);

              if (v176 != 1)
              {
                sub_2574695E4(v173, &qword_27F879E10, &qword_257744730);
              }
            }

            else
            {
              OUTLINED_FUNCTION_2_29();
              v177 = v395;
              sub_257653D3C(v169, v395);
            }

            v178 = *(v177 + *(v152 + 20));
            v179 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
            OUTLINED_FUNCTION_296();
            v180 = v178 + v179;
            v127 = v397;
            sub_2574AD5D8(v180, v397, &qword_27F879D40, &qword_257744660);
            v181 = OUTLINED_FUNCTION_188();
            OUTLINED_FUNCTION_155(v181, v182, v59);
            if (v120)
            {
              sub_2574695E4(v127, &qword_27F879D40, &qword_257744660);
              swift_allocBox();
              OUTLINED_FUNCTION_28_9();
              MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
              OUTLINED_FUNCTION_0_42();
              sub_257654024(v177, v183);
              goto LABEL_34;
            }

            OUTLINED_FUNCTION_0_42();
            sub_257654024(v177, v190);
            v191 = OUTLINED_FUNCTION_47_5();
            v127 = v192;
            v193 = v394;
            sub_257653D3C(v191, v394);
            sub_257653D3C(v193, v396);
            v194 = swift_getEnumCaseMultiPayload();
            switch(v194)
            {
              case 1:
                swift_allocBox();
                v218 = v217;
                OUTLINED_FUNCTION_3_29();
                sub_257653D3C(v396, v219);
                OUTLINED_FUNCTION_10_20();
                v212 = v409;
                sub_257653FCC(v218, v409);
                v186 = v212;
                sub_2576F210C();
                OUTLINED_FUNCTION_32_6();
                v213 = type metadata accessor for MLProgram.ValueType.ListParameters;
                goto LABEL_43;
              case 2:
                swift_allocBox();
                v210 = v209;
                OUTLINED_FUNCTION_5_24();
                sub_257653D3C(v396, v211);
                OUTLINED_FUNCTION_14_8();
                v212 = v407;
                sub_257653FCC(v210, v407);
                v186 = v212;
                sub_2576F2344();
                OUTLINED_FUNCTION_32_6();
                v213 = type metadata accessor for MLProgram.ValueType.TupleParameters;
                goto LABEL_43;
              case 3:
                swift_allocBox();
                v215 = v214;
                OUTLINED_FUNCTION_4_19();
                sub_257653D3C(v396, v216);
                OUTLINED_FUNCTION_12_17();
                v212 = v408;
                sub_257653FCC(v215, v408);
                v186 = v212;
                sub_2576F4D1C();
                OUTLINED_FUNCTION_32_6();
                v213 = type metadata accessor for MLProgram.ValueType.DictionaryParameters;
LABEL_43:
                sub_257654024(v212, v213);
                break;
              case 4:
                v380 = swift_allocBox();
                v197 = v196;
                OUTLINED_FUNCTION_6_24();
                sub_257653D3C(v396, v198);
                OUTLINED_FUNCTION_16_7();
                v199 = v197;
                v200 = v392;
                sub_257653FCC(v199, v392);
                v201 = swift_initStackObject();
                OUTLINED_FUNCTION_33_4(v201);
                v379 = v202;
                *(v202 + 40) = v203;
                v204 = *(v200 + *(v398 + 20));
                v152 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                OUTLINED_FUNCTION_296();
                v205 = v391;
                sub_2574AD5D8(v204 + v152, v391, &qword_27F879E10, &qword_257744730);
                v206 = OUTLINED_FUNCTION_197();
                v207 = v432;
                v127 = __swift_getEnumTagSinglePayload(v206, v208, v432);
                sub_2574695E4(v205, &qword_27F879E10, &qword_257744730);
                if (v127 == 1)
                {
                  swift_allocBox();
                  OUTLINED_FUNCTION_28_9();
                  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
LABEL_53:
                  swift_projectBox();
                  OUTLINED_FUNCTION_19_11();
                  v235 = v419;
                  sub_257653FCC(v236, v419);
                  v186 = v235;
                  sub_2576F1B84();
                  OUTLINED_FUNCTION_32_6();
                  OUTLINED_FUNCTION_30_6();
                  goto LABEL_54;
                }

                v220 = v390;
                sub_2574AD5D8(v204 + v152, v390, &qword_27F879E10, &qword_257744730);
                v221 = OUTLINED_FUNCTION_188();
                OUTLINED_FUNCTION_155(v221, v222, v207);
                v152 = v207;
                if (v120)
                {
                  v228 = v387;
                  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                  v223 = *(v152 + 20);
                  if (qword_27F878FF0 != -1)
                  {
                    OUTLINED_FUNCTION_12_15();
                    swift_once();
                  }

                  *(v228 + v223) = qword_27F87B038;
                  v224 = v390;
                  v225 = OUTLINED_FUNCTION_197();
                  v227 = __swift_getEnumTagSinglePayload(v225, v226, v152);

                  if (v227 != 1)
                  {
                    sub_2574695E4(v224, &qword_27F879E10, &qword_257744730);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_2_29();
                  v228 = v387;
                  sub_257653D3C(v220, v387);
                }

                v229 = *(v228 + *(v152 + 20));
                v230 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
                OUTLINED_FUNCTION_296();
                v231 = v229 + v230;
                v127 = v389;
                sub_2574AD5D8(v231, v389, &qword_27F879D40, &qword_257744660);
                v232 = OUTLINED_FUNCTION_188();
                OUTLINED_FUNCTION_155(v232, v233, v59);
                if (v120)
                {
                  sub_2574695E4(v127, &qword_27F879D40, &qword_257744660);
                  swift_allocBox();
                  OUTLINED_FUNCTION_28_9();
                  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                  OUTLINED_FUNCTION_0_42();
                  sub_257654024(v228, v234);
                  goto LABEL_53;
                }

                OUTLINED_FUNCTION_0_42();
                sub_257654024(v228, v239);
                v240 = OUTLINED_FUNCTION_47_5();
                v127 = v241;
                v242 = v386;
                sub_257653D3C(v240, v386);
                sub_257653D3C(v242, v388);
                v243 = swift_getEnumCaseMultiPayload();
                switch(v243)
                {
                  case 1:
                    swift_allocBox();
                    OUTLINED_FUNCTION_67_3();
                    OUTLINED_FUNCTION_3_29();
                    sub_257653D3C(v388, v263);
                    OUTLINED_FUNCTION_10_20();
                    v260 = v409;
                    sub_257653FCC(v228, v409);
                    v186 = v260;
                    sub_2576F210C();
                    OUTLINED_FUNCTION_32_6();
                    v261 = type metadata accessor for MLProgram.ValueType.ListParameters;
                    goto LABEL_62;
                  case 2:
                    swift_allocBox();
                    OUTLINED_FUNCTION_67_3();
                    OUTLINED_FUNCTION_5_24();
                    sub_257653D3C(v388, v259);
                    OUTLINED_FUNCTION_14_8();
                    v260 = v407;
                    sub_257653FCC(v228, v407);
                    v186 = v260;
                    sub_2576F2344();
                    OUTLINED_FUNCTION_32_6();
                    v261 = type metadata accessor for MLProgram.ValueType.TupleParameters;
                    goto LABEL_62;
                  case 3:
                    swift_allocBox();
                    OUTLINED_FUNCTION_67_3();
                    OUTLINED_FUNCTION_4_19();
                    sub_257653D3C(v388, v262);
                    OUTLINED_FUNCTION_12_17();
                    v260 = v408;
                    sub_257653FCC(v228, v408);
                    v186 = v260;
                    sub_2576F4D1C();
                    OUTLINED_FUNCTION_32_6();
                    v261 = type metadata accessor for MLProgram.ValueType.DictionaryParameters;
LABEL_62:
                    sub_257654024(v260, v261);
                    break;
                  case 4:
                    v378[1] = swift_allocBox();
                    v246 = v245;
                    OUTLINED_FUNCTION_6_24();
                    sub_257653D3C(v388, v247);
                    OUTLINED_FUNCTION_16_7();
                    v248 = v246;
                    v249 = v385;
                    sub_257653FCC(v248, v385);
                    v250 = swift_initStackObject();
                    OUTLINED_FUNCTION_33_4(v250);
                    v399 = v251;
                    *(v251 + 40) = v252;
                    v127 = *(v249 + *(v398 + 20));
                    v253 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                    OUTLINED_FUNCTION_296();
                    v254 = v384;
                    sub_2574AD5D8(v127 + v253, v384, &qword_27F879E10, &qword_257744730);
                    v255 = OUTLINED_FUNCTION_197();
                    v257 = __swift_getEnumTagSinglePayload(v255, v256, v152);
                    sub_2574695E4(v254, &qword_27F879E10, &qword_257744730);
                    if (v257 == 1)
                    {
                      v258 = swift_allocBox();
                      OUTLINED_FUNCTION_28_9();
                      MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                      v438 = v258;
                    }

                    else
                    {
                      v264 = v383;
                      sub_2574AD5D8(v127 + v253, v383, &qword_27F879E10, &qword_257744730);
                      v265 = OUTLINED_FUNCTION_197();
                      OUTLINED_FUNCTION_155(v265, v266, v152);
                      if (v120)
                      {
                        v267 = v382;
                        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                        v268 = *(v152 + 20);
                        if (qword_27F878FF0 != -1)
                        {
                          OUTLINED_FUNCTION_12_15();
                          swift_once();
                        }

                        *(v267 + v268) = qword_27F87B038;
                        v269 = OUTLINED_FUNCTION_197();
                        v127 = __swift_getEnumTagSinglePayload(v269, v270, v152);

                        if (v127 != 1)
                        {
                          sub_2574695E4(v264, &qword_27F879E10, &qword_257744730);
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_2_29();
                        sub_257653D3C(v264, v382);
                      }

                      sub_2576F0F64();
                      v258 = v438;
                    }

                    switch(v258 >> 61)
                    {
                      case 1uLL:
                        OUTLINED_FUNCTION_79_2();
                        OUTLINED_FUNCTION_10_20();
                        v275 = v409;
                        sub_257653FCC(v283, v409);
                        v186 = v275;
                        sub_2576F210C();
                        OUTLINED_FUNCTION_39_5();
                        v274 = v284;
                        v278 = type metadata accessor for MLProgram.ValueType.ListParameters;
                        goto LABEL_76;
                      case 2uLL:
                        OUTLINED_FUNCTION_79_2();
                        OUTLINED_FUNCTION_14_8();
                        v275 = v407;
                        sub_257653FCC(v279, v407);
                        v186 = v275;
                        sub_2576F2344();
                        OUTLINED_FUNCTION_39_5();
                        v274 = v280;
                        v278 = type metadata accessor for MLProgram.ValueType.TupleParameters;
                        goto LABEL_76;
                      case 3uLL:
                        OUTLINED_FUNCTION_79_2();
                        OUTLINED_FUNCTION_12_17();
                        v275 = v408;
                        sub_257653FCC(v281, v408);
                        v186 = v275;
                        sub_2576F4D1C();
                        OUTLINED_FUNCTION_39_5();
                        v274 = v282;
                        v278 = type metadata accessor for MLProgram.ValueType.DictionaryParameters;
                        goto LABEL_76;
                      case 4uLL:
                        OUTLINED_FUNCTION_79_2();
                        OUTLINED_FUNCTION_16_7();
                        v275 = v381;
                        sub_257653FCC(v276, v381);
                        v186 = v275;
                        sub_2576F4F60();
                        OUTLINED_FUNCTION_39_5();
                        v274 = v277;
                        v278 = type metadata accessor for MLProgram.ValueType.StateParameters;
LABEL_76:
                        sub_257654024(v275, v278);
                        break;
                      default:
                        swift_projectBox();
                        OUTLINED_FUNCTION_19_11();
                        v271 = v419;
                        sub_257653FCC(v272, v419);
                        v186 = v271;
                        sub_2576F1B84();
                        OUTLINED_FUNCTION_39_5();
                        v274 = v273;
                        OUTLINED_FUNCTION_30_6();
                        break;
                    }

                    v285 = v399;
                    *(v399 + 48) = v186;
                    *(v285 + 56) = v127;
                    *(v285 + 64) = v274;
                    sub_2576A6964(v285);
                    OUTLINED_FUNCTION_39_5();
                    OUTLINED_FUNCTION_27_10();
                    sub_257654024(v385, v286);
                    LOBYTE(v152) = 2;
                    break;
                  default:
                    swift_allocBox();
                    OUTLINED_FUNCTION_7_15();
                    sub_257653D3C(v388, v244);
                    goto LABEL_53;
                }

LABEL_54:

                v237 = v379;
                *(v379 + 48) = v186;
                *(v237 + 56) = v127;
                *(v237 + 64) = v152;
                sub_2576A6964(v237);
                OUTLINED_FUNCTION_39_5();
                OUTLINED_FUNCTION_27_10();
                sub_257654024(v392, v238);
                LOBYTE(v152) = 2;
                break;
              default:
                swift_allocBox();
                OUTLINED_FUNCTION_7_15();
                sub_257653D3C(v396, v195);
                goto LABEL_34;
            }

LABEL_35:

            v187 = v411;
            *(v411 + 48) = v186;
            *(v187 + 56) = v127;
            *(v187 + 64) = v152;
            v92 = sub_2576A6964(v187);
            v59 = v188;
            OUTLINED_FUNCTION_27_10();
            sub_257654024(v413, v189);
            LOBYTE(v127) = 2;
            break;
          default:
            swift_allocBox();
            OUTLINED_FUNCTION_7_15();
            sub_257653D3C(v431, v143);
            goto LABEL_12;
        }
      }

      OUTLINED_FUNCTION_11_16();
      sub_257654024(v111, v134);

      v135 = v436;
      v437 = v436;
      v137 = *(v436 + 16);
      v136 = *(v436 + 24);
      if (v137 >= v136 >> 1)
      {
        OUTLINED_FUNCTION_174(v136);
        sub_257484060();
        v135 = v437;
      }

      *(v135 + 16) = v137 + 1;
      v436 = v135;
      v138 = v135 + 40 * v137;
      v139 = v433;
      *(v138 + 32) = v434;
      *(v138 + 40) = v139;
      *(v138 + 48) = v92;
      *(v138 + 56) = v59;
      *(v138 + 64) = v127;
      v91 = v426;
      v117 += v425;
      --v435;
      v59 = v427;
      v58 = v428;
      v92 = v432;
    }

    while (v435);

    v1 = v429;
  }

  else
  {

    v436 = MEMORY[0x277D84F90];
  }

  MLProgram.Function.blockSpecializations.getter();
  v288 = v287;
  v289 = *(v287 + 16);
  if (v289)
  {
    v437 = MEMORY[0x277D84F90];
    v290 = &v437;
    OUTLINED_FUNCTION_64_4();
    sub_257484060();
    v291 = v437;
    sub_25774107C(v288);
    OUTLINED_FUNCTION_67_3();
    v293 = v292;
    v427 = v288;
    v428 = (v288 + 64);
    do
    {
      if (v91 < 0 || v91 >= 1 << *(v288 + 32))
      {
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
      }

      if (((*&v428[(v91 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v91) & 1) == 0)
      {
        goto LABEL_105;
      }

      if (*(v288 + 36) != v290)
      {
        goto LABEL_106;
      }

      v432 = v289;
      LODWORD(v433) = v293;
      v434 = v290;
      v294 = v424;
      v295 = *(v424 + 48);
      v296 = *(v288 + 48);
      v297 = *(v288 + 56);
      v298 = (v296 + 16 * v91);
      v299 = *v298;
      v300 = v298[1];
      v301 = type metadata accessor for MLProgram.Block();
      OUTLINED_FUNCTION_13(v301);
      v303 = *(v302 + 72);
      OUTLINED_FUNCTION_25_8();
      v304 = v421;
      sub_257653FCC(v305, v421 + v295);
      v435 = v291;
      v306 = v422;
      *v422 = v299;
      *(v306 + 8) = v300;
      v307 = *(v294 + 48);
      OUTLINED_FUNCTION_15_6();
      sub_257653D3C(v304 + v295, v306 + v308);
      OUTLINED_FUNCTION_82_2();

      MEMORY[0x259C64E90](v299, v300);
      OUTLINED_FUNCTION_316();
      v430 = v439;
      v431 = v438;
      v309 = v423;
      sub_2574AD5D8(v306, v423, &qword_27F880428, &unk_25776C030);
      v310 = *(v309 + 8);

      v311 = *(v294 + 48);
      sub_2576963A8();
      v313 = v312;
      v315 = v314;
      v290 = v316;
      OUTLINED_FUNCTION_17_10();
      sub_257654024(v309 + v311, v317);
      v318 = v306;
      v291 = v435;
      sub_2574695E4(v318, &qword_27F880428, &unk_25776C030);
      v437 = v291;
      v320 = *(v291 + 16);
      v319 = *(v291 + 24);
      if (v320 >= v319 >> 1)
      {
        OUTLINED_FUNCTION_174(v319);
        sub_257484060();
        v291 = v437;
      }

      *(v291 + 16) = v320 + 1;
      v321 = v291 + 40 * v320;
      v322 = v430;
      *(v321 + 32) = v431;
      *(v321 + 40) = v322;
      *(v321 + 48) = v313;
      *(v321 + 56) = v315;
      *(v321 + 64) = v290;
      v288 = v427;
      sub_25765C64C(v91, v434, v433 & 1, v427);
      OUTLINED_FUNCTION_67_3();
      v293 = v323;
      v289 = v432 - 1;
      v1 = v429;
    }

    while (v432 != 1);

    sub_257653FC0(v91, v290, v293 & 1);
  }

  else
  {

    v291 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  v324 = swift_initStackObject();
  *(v324 + 16) = xmmword_2577442C0;
  *(v324 + 32) = 0x746573706FLL;
  *(v324 + 40) = 0xE500000000000000;
  v325 = *(v1 + 8);
  v326 = *(v1 + 16);
  v438 = 34;
  v439 = 0xE100000000000000;
  MEMORY[0x259C64E90](v325, v326);
  OUTLINED_FUNCTION_316();
  v327 = v439;
  *(v324 + 48) = v438;
  *(v324 + 56) = v327;
  *(v324 + 64) = 0;
  *(v324 + 72) = 0x737475706E69;
  *(v324 + 80) = 0xE600000000000000;
  *(v324 + 88) = sub_2576AACFC(v436);
  *(v324 + 96) = v328;
  *(v324 + 104) = 2;
  *(v324 + 112) = 0x736B636F6C62;
  *(v324 + 120) = 0xE600000000000000;
  *(v324 + 128) = sub_2576AACFC(v291);
  *(v324 + 136) = v329;
  *(v324 + 144) = 2;
  MLProgram.Function.attributes.getter();
  v331 = *(v330 + 16);

  if (v331)
  {
    MLProgram.Function.attributes.getter();
    v333 = v332;
    v334 = *(v332 + 16);
    if (v334)
    {
      v428 = v324;
      v437 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_64_4();
      sub_257484060();
      v335 = v437;
      v336 = sub_25774107C(v333);
      v338 = v337;
      v340 = v339;
      v429 = v333;
      v430 = v333 + 64;
      v341 = v416;
      do
      {
        if (v336 < 0 || v336 >= 1 << *(v333 + 32))
        {
          goto LABEL_107;
        }

        if (((*(v430 + ((v336 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v336) & 1) == 0)
        {
          goto LABEL_108;
        }

        if (*(v333 + 36) != v338)
        {
          goto LABEL_109;
        }

        v434 = v334;
        LODWORD(v435) = v340;
        v436 = v338;
        v342 = v418;
        v343 = v335;
        v344 = *(v418 + 48);
        v345 = *(v333 + 56);
        v346 = (*(v333 + 48) + 16 * v336);
        v347 = *v346;
        v348 = v346[1];
        v349 = type metadata accessor for MLProgram.Value();
        OUTLINED_FUNCTION_13(v349);
        v351 = v345 + *(v350 + 72) * v336;
        v352 = v415;
        sub_257653FCC(v351, v415 + v344);
        *v341 = v347;
        v341[1] = v348;
        v353 = *(v342 + 48);
        OUTLINED_FUNCTION_18_13();
        sub_257653D3C(v352 + v344, v341 + v354);
        OUTLINED_FUNCTION_82_2();

        MEMORY[0x259C64E90](v347, v348);
        OUTLINED_FUNCTION_316();
        v432 = v439;
        v433 = v438;
        v355 = v417;
        sub_2574AD5D8(v341, v417, &qword_27F879D18, &unk_257775F30);
        v356 = *(v355 + 8);

        v357 = *(v342 + 48);
        sub_25771810C();
        v335 = v343;
        v359 = v358;
        v431 = v360;
        v362 = v361;
        OUTLINED_FUNCTION_45_4();
        sub_257654024(v355 + v357, v363);
        sub_2574695E4(v341, &qword_27F879D18, &unk_257775F30);
        v437 = v335;
        v365 = *(v335 + 16);
        v364 = *(v335 + 24);
        if (v365 >= v364 >> 1)
        {
          OUTLINED_FUNCTION_174(v364);
          sub_257484060();
          v335 = v437;
        }

        *(v335 + 16) = v365 + 1;
        v366 = v335 + 40 * v365;
        v367 = v432;
        *(v366 + 32) = v433;
        *(v366 + 40) = v367;
        v368 = v431;
        *(v366 + 48) = v359;
        *(v366 + 56) = v368;
        *(v366 + 64) = v362;
        v333 = v429;
        v336 = sub_25765C64C(v336, v436, v435 & 1, v429);
        v338 = v369;
        v340 = v370;
        v334 = (v434 - 1);
      }

      while (v434 != 1);

      sub_257653FC0(v336, v338, v340 & 1);
    }

    else
    {

      v335 = MEMORY[0x277D84F90];
    }

    v371 = sub_2576AACFC(v335);
    v373 = v372;
    sub_257469AE0();
    v324 = v374;
    *(v374 + 16) = 4;
    OUTLINED_FUNCTION_76_3();
    *(v375 + 152) = v376;
    *(v375 + 160) = 0xEA00000000007365;
    *(v375 + 168) = v371;
    *(v375 + 176) = v373;
    *(v375 + 184) = 2;
  }

  sub_2576AACFC(v324);
  v377 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Function.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  type metadata accessor for Proto_MILSpec_Block(0);
  a1[3] = sub_2577435D4();
  type metadata accessor for Proto_MILSpec_Value(0);
  a1[4] = sub_2577435D4();
  v2 = a1 + *(type metadata accessor for Proto_MILSpec_Function(0) + 32);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t MLProgram.Function.weightsFileNames()()
{
  v1 = MEMORY[0x277D84FA0];
  sub_257652114();
  return v1;
}

void sub_257652114()
{
  OUTLINED_FUNCTION_31();
  v54 = v2;
  v55 = v1;
  v57 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_40();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880698, &qword_25776CFE0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  MLProgram.Function.blockSpecializations.getter();
  v16 = v14 + 64;
  v15 = *(v14 + 64);
  v56 = v14;
  OUTLINED_FUNCTION_56_1(v14);
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  if ((v19 & v18) != 0)
  {
    while (1)
    {
      v23 = v17;
LABEL_6:
      v24 = *(v56 + 48);
      OUTLINED_FUNCTION_60_1();
      v27 = *v25;
      v26 = v25[1];
      MLProgram.Function.blockSpecializations.getter();
      v29 = v28;

      sub_257657B7C(v27, v26, v29, v13);

      v30 = type metadata accessor for MLProgram.Block();
      OUTLINED_FUNCTION_155(v13, 1, v30);
      if (v31)
      {
        break;
      }

      v20 &= v20 - 1;

      v55(v13, v57);
      OUTLINED_FUNCTION_17_10();
      sub_257654024(v13, v32);
      v17 = v23;
      if (!v20)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v23 >= v22)
      {

        MLProgram.Function.attributes.getter();
        v34 = v33;
        v36 = v33 + 64;
        v35 = *(v33 + 64);
        OUTLINED_FUNCTION_56_1(v33);
        v40 = v39 & v38;
        v42 = (v41 + 63) >> 6;
        if ((v39 & v38) == 0)
        {
          goto LABEL_11;
        }

        while (1)
        {
          v43 = v37;
LABEL_14:
          v44 = *(v34 + 48);
          OUTLINED_FUNCTION_60_1();
          v47 = *v45;
          v46 = v45[1];
          MLProgram.Function.attributes.getter();
          v49 = v48;

          sub_257657A68(v47, v46, v49, v0);

          type metadata accessor for MLProgram.Value();
          v50 = OUTLINED_FUNCTION_188();
          OUTLINED_FUNCTION_155(v50, v51, v52);
          if (v31)
          {
            goto LABEL_21;
          }

          v40 &= v40 - 1;

          v54(v0, v57);
          OUTLINED_FUNCTION_45_4();
          sub_257654024(v0, v53);
          v37 = v43;
          if (!v40)
          {
LABEL_11:
            while (1)
            {
              v43 = v37 + 1;
              if (__OFADD__(v37, 1))
              {
                goto LABEL_19;
              }

              if (v43 >= v42)
              {

                OUTLINED_FUNCTION_35();
                return;
              }

              v40 = *(v36 + 8 * v43);
              ++v37;
              if (v40)
              {
                goto LABEL_14;
              }
            }
          }
        }
      }

      v20 = *(v16 + 8 * v23);
      ++v17;
      if (v20)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_257652460()
{
  OUTLINED_FUNCTION_31();
  v110 = v1;
  v116 = v2;
  v4 = v3;
  v122 = v5;
  OUTLINED_FUNCTION_30();
  v111 = type metadata accessor for MLProgram.Value();
  v6 = OUTLINED_FUNCTION_63(v111);
  v109 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_1();
  v106 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  v12 = OUTLINED_FUNCTION_13(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_25_0();
  v108 = v15;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_196();
  v120 = v17;
  OUTLINED_FUNCTION_153();
  v18 = type metadata accessor for MLProgram.Block();
  v19 = OUTLINED_FUNCTION_63(v18);
  v115 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_12_1();
  v107 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880698, &qword_25776CFE0);
  v25 = OUTLINED_FUNCTION_13(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25_0();
  v114 = v28;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_196();
  v123 = v30;
  MLProgram.Function.blockSpecializations.getter();
  v33 = v31 + 64;
  v32 = *(v31 + 64);
  v118 = v31;
  v34 = *(v31 + 32);
  OUTLINED_FUNCTION_41_0();
  v37 = v36 & v35;
  v39 = (v38 + 63) >> 6;
  v125 = v4;
  swift_bridgeObjectRetain_n();
  v40 = 0;
  v41 = 0;
  v121 = v0;
  v112 = v39;
  v113 = v33;
  if (!v37)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v126 = v41;
    v41 = v18;
LABEL_7:
    v43 = *(v118 + 48);
    OUTLINED_FUNCTION_60_1();
    v45 = *v44;
    v46 = v44[1];
    MLProgram.Function.blockSpecializations.getter();
    v48 = v47;

    swift_isUniquelyReferenced_nonNull_native();
    sub_25765368C(v45, v46);
    OUTLINED_FUNCTION_52_3();
    if (__OFADD__(v51, v52))
    {
      break;
    }

    v53 = v49;
    v54 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8806A0, &qword_25776CFE8);
    if (OUTLINED_FUNCTION_77_2())
    {
      sub_25765368C(v45, v46);
      OUTLINED_FUNCTION_63_4();
      if (!v56)
      {
        goto LABEL_41;
      }

      v53 = v55;
    }

    if ((v54 & 1) == 0)
    {
      goto LABEL_39;
    }

    v57 = *(v48 + 56);
    v58 = *(v115 + 72) * v53;
    OUTLINED_FUNCTION_15_6();
    sub_257653D3C(v59 + v58, v123);
    OUTLINED_FUNCTION_21();
    v18 = v41;
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v41);

    v116(v123, v122, v125);
    sub_2574AD5D8(v123, v114, &qword_27F880698, &qword_25776CFE0);
    OUTLINED_FUNCTION_155(v114, 1, v41);
    if (v56)
    {
      sub_2574695E4(v114, &qword_27F880698, &qword_25776CFE0);
      sub_2576493CC(*(v48 + 48) + 16 * v53);
      sub_2577438B4();
    }

    else
    {
      sub_257653D3C(v114, v107);
      sub_257653D3C(v107, *(v48 + 56) + v58);
    }

    v41 = v126;
    v33 = v113;
    v37 &= v37 - 1;
    sub_2574695E4(v123, &qword_27F880698, &qword_25776CFE0);
    sub_257653AF8(v48);
    v64 = v63;

    v65 = *(v121 + 24);

    *(v121 + 24) = v64;
    v39 = v112;
    if (!v37)
    {
LABEL_3:
      while (1)
      {
        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v42 >= v39)
        {

          MLProgram.Function.attributes.getter();
          v66 = 0;
          v68 = *(v67 + 64);
          v124 = v67;
          v69 = *(v67 + 32);
          OUTLINED_FUNCTION_41_0();
          v73 = v72 & v71;
          v75 = (v74 + 63) >> 6;
          v76 = &qword_27F880608;
          v117 = v75;
          v119 = v70;
          if ((v72 & v71) == 0)
          {
            goto LABEL_20;
          }

          while (1)
          {
            v127 = v41;
            v41 = v76;
LABEL_24:
            v78 = *(v124 + 48);
            OUTLINED_FUNCTION_60_1();
            v81 = *v79;
            v80 = v79[1];
            MLProgram.Function.attributes.getter();
            v83 = v82;

            swift_isUniquelyReferenced_nonNull_native();
            sub_25765368C(v81, v80);
            OUTLINED_FUNCTION_52_3();
            if (__OFADD__(v86, v87))
            {
              goto LABEL_38;
            }

            v88 = v84;
            v89 = v85;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880620, &qword_25776CCA0);
            if (OUTLINED_FUNCTION_77_2())
            {
              v90 = sub_25765368C(v81, v80);
              if ((v89 & 1) != (v91 & 1))
              {
                goto LABEL_41;
              }

              v88 = v90;
            }

            v76 = v41;
            if ((v89 & 1) == 0)
            {
              goto LABEL_40;
            }

            v92 = *(v83 + 56);
            v93 = *(v109 + 72) * v88;
            OUTLINED_FUNCTION_18_13();
            sub_257653D3C(v94 + v93, v120);
            OUTLINED_FUNCTION_21();
            __swift_storeEnumTagSinglePayload(v95, v96, v97, v111);

            v110(v120, v122, v125);
            sub_2574AD5D8(v120, v108, v41, &unk_25776D460);
            OUTLINED_FUNCTION_155(v108, 1, v111);
            if (v56)
            {
              sub_2574695E4(v108, v41, &unk_25776D460);
              sub_2576493CC(*(v83 + 48) + 16 * v88);
              sub_2577438B4();
            }

            else
            {
              sub_257653D3C(v108, v106);
              sub_257653D3C(v106, *(v83 + 56) + v93);
            }

            v73 &= v73 - 1;
            sub_2574695E4(v120, v41, &unk_25776D460);
            v41 = v127;
            v98 = sub_257653818(v83);

            v99 = *(v121 + 32);

            *(v121 + 32) = v98;
            v75 = v117;
            v70 = v119;
            if (!v73)
            {
LABEL_20:
              while (1)
              {
                v77 = v66 + 1;
                if (__OFADD__(v66, 1))
                {
                  goto LABEL_36;
                }

                if (v77 >= v75)
                {
                  swift_bridgeObjectRelease_n();

                  OUTLINED_FUNCTION_35();
                  return;
                }

                v73 = *(v70 + 8 * v77);
                ++v66;
                if (v73)
                {
                  v127 = v41;
                  v41 = v76;
                  v66 = v77;
                  goto LABEL_24;
                }
              }
            }
          }
        }

        v37 = *(v33 + 8 * v42);
        ++v40;
        if (v37)
        {
          v126 = v41;
          v41 = v18;
          v40 = v42;
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v41);
  __break(1u);
LABEL_40:
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v111);
  __break(1u);
LABEL_41:
  swift_bridgeObjectRelease_n();
  sub_2577439B4();
  __break(1u);
}

void sub_257652BA8()
{
  OUTLINED_FUNCTION_31();
  v116 = v1;
  OUTLINED_FUNCTION_30();
  v2 = type metadata accessor for MLProgram.Value();
  v3 = OUTLINED_FUNCTION_63(v2);
  v106 = v4;
  v107 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_1();
  v103 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_0();
  v105 = v12;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_196();
  v115 = v14;
  OUTLINED_FUNCTION_153();
  v15 = type metadata accessor for MLProgram.Block();
  v16 = OUTLINED_FUNCTION_63(v15);
  v110 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_1();
  v104 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880698, &qword_25776CFE0);
  v22 = OUTLINED_FUNCTION_13(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_0();
  v111 = v25;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_64_2(v27);
  MLProgram.Function.blockSpecializations.getter();
  v28 = 0;
  v29 = 0;
  v31 = *(v30 + 64);
  v112 = v15;
  v113 = v30;
  v32 = *(v30 + 32);
  OUTLINED_FUNCTION_41_0();
  v36 = v35 & v34;
  v38 = (v37 + 63) >> 6;
  v117 = v0;
  v108 = v38;
  v109 = v33;
  if ((v35 & v34) == 0)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v120 = v29;
LABEL_7:
    v40 = *(v113 + 48);
    OUTLINED_FUNCTION_60_1();
    v42 = *v41;
    v43 = v41[1];
    MLProgram.Function.blockSpecializations.getter();
    v45 = v44;

    swift_isUniquelyReferenced_nonNull_native();
    sub_25765368C(v42, v43);
    OUTLINED_FUNCTION_52_3();
    if (__OFADD__(v48, v49))
    {
      break;
    }

    v50 = v46;
    v51 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8806A0, &qword_25776CFE8);
    if (sub_257743894())
    {
      sub_25765368C(v42, v43);
      OUTLINED_FUNCTION_63_4();
      if (!v53)
      {
        goto LABEL_42;
      }

      v50 = v52;
    }

    if ((v51 & 1) == 0)
    {
      goto LABEL_40;
    }

    v54 = *(v45 + 56);
    v55 = *(v110 + 72) * v50;
    OUTLINED_FUNCTION_15_6();
    sub_257653D3C(v56 + v55, v118);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v112);
    sub_2576986A0();
    sub_2574AD5D8(v118, v111, &qword_27F880698, &qword_25776CFE0);
    OUTLINED_FUNCTION_155(v111, 1, v112);
    if (v53)
    {
      sub_2574695E4(v111, &qword_27F880698, &qword_25776CFE0);
      sub_2576493CC(*(v45 + 48) + 16 * v50);
      sub_2577438B4();
    }

    else
    {
      sub_257653D3C(v111, v104);
      sub_257653D3C(v104, *(v45 + 56) + v55);
    }

    v29 = v120;
    v36 &= v36 - 1;
    sub_2574695E4(v118, &qword_27F880698, &qword_25776CFE0);
    sub_257653AF8(v45);
    v61 = v60;

    v62 = *(v117 + 24);

    *(v117 + 24) = v61;
    v38 = v108;
    v33 = v109;
    if (!v36)
    {
LABEL_3:
      while (1)
      {
        v39 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v39 >= v38)
        {

          MLProgram.Function.attributes.getter();
          v63 = 0;
          v65 = *(v64 + 64);
          v119 = v64;
          v66 = *(v64 + 32);
          OUTLINED_FUNCTION_41_0();
          v70 = v69 & v68;
          v72 = (v71 + 63) >> 6;
          v112 = v72;
          v114 = v67;
          if ((v69 & v68) == 0)
          {
            goto LABEL_20;
          }

          while (1)
          {
            v121 = v29;
LABEL_24:
            v74 = *(v119 + 48);
            OUTLINED_FUNCTION_60_1();
            v76 = *v75;
            v77 = v75[1];
            MLProgram.Function.attributes.getter();
            v79 = v78;

            swift_isUniquelyReferenced_nonNull_native();
            v122 = v79;
            sub_25765368C(v76, v77);
            OUTLINED_FUNCTION_52_3();
            if (__OFADD__(v82, v83))
            {
              goto LABEL_39;
            }

            v84 = v80;
            v85 = v81;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880620, &qword_25776CCA0);
            if (sub_257743894())
            {
              v86 = sub_25765368C(v76, v77);
              v88 = v117;
              if ((v85 & 1) != (v87 & 1))
              {
                goto LABEL_42;
              }

              v84 = v86;
            }

            else
            {
              v88 = v117;
            }

            if ((v85 & 1) == 0)
            {
              goto LABEL_41;
            }

            v89 = *(v122 + 56);
            v90 = *(v106 + 72) * v84;
            OUTLINED_FUNCTION_18_13();
            sub_257653D3C(v91 + v90, v115);
            OUTLINED_FUNCTION_21();
            __swift_storeEnumTagSinglePayload(v92, v93, v94, v107);
            sub_257718008(v115, v116);
            sub_2574AD5D8(v115, v105, &qword_27F880608, &unk_25776D460);
            OUTLINED_FUNCTION_155(v105, 1, v107);
            if (v53)
            {
              sub_2574695E4(v105, &qword_27F880608, &unk_25776D460);
              sub_2576493CC(*(v122 + 48) + 16 * v84);
              sub_2577438B4();
            }

            else
            {
              sub_257653D3C(v105, v103);
              sub_257653D3C(v103, *(v122 + 56) + v90);
            }

            v70 &= v70 - 1;
            sub_2574695E4(v115, &qword_27F880608, &unk_25776D460);
            v29 = v121;
            v95 = sub_257653818(v122);

            v96 = *(v88 + 32);

            *(v88 + 32) = v95;
            v72 = v112;
            v67 = v114;
            if (!v70)
            {
LABEL_20:
              while (1)
              {
                v73 = v63 + 1;
                if (__OFADD__(v63, 1))
                {
                  goto LABEL_37;
                }

                if (v73 >= v72)
                {

                  OUTLINED_FUNCTION_35();
                  return;
                }

                v70 = *(v67 + 8 * v73);
                ++v63;
                if (v70)
                {
                  v121 = v29;
                  v63 = v73;
                  goto LABEL_24;
                }
              }
            }
          }
        }

        v36 = *(v33 + 8 * v39);
        ++v28;
        if (v36)
        {
          v120 = v29;
          v28 = v39;
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v112);
  __break(1u);
LABEL_41:
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v107);
  __break(1u);
LABEL_42:
  sub_2577439B4();
  __break(1u);
}

void MLProgram.Function.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = sub_257743A84();
  v3 = OUTLINED_FUNCTION_63(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v12 = type metadata accessor for MLProgram.Function();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_257653FCC(v0, v17 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_257744E70;
  *(v18 + 32) = 0x737475706E69;
  *(v18 + 40) = 0xE600000000000000;
  v19 = MLProgram.Function.inputs.getter();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805E0, &qword_25776CBD8);
  *(v18 + 48) = v19;
  *(v18 + 72) = v20;
  *(v18 + 80) = 0x746573706FLL;
  v21 = MEMORY[0x277D837D0];
  v22 = *(v0 + 8);
  v23 = *(v0 + 16);
  *(v18 + 88) = 0xE500000000000000;
  *(v18 + 96) = v22;
  *(v18 + 104) = v23;
  *(v18 + 120) = v21;
  *(v18 + 128) = 0xD000000000000014;
  *(v18 + 136) = 0x8000000257780AC0;
  MLProgram.Function.blockSpecializations.getter();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880680, &qword_25776CF30);
  *(v18 + 144) = v25;
  OUTLINED_FUNCTION_76_3();
  *(v18 + 168) = v26;
  *(v18 + 176) = v27;
  *(v18 + 184) = 0xEA00000000007365;
  MLProgram.Function.attributes.getter();
  v29 = v28;
  *(v18 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805F0, &qword_25776CBE8);
  *(v18 + 192) = v29;
  sub_257743A74();
  v30 = OUTLINED_FUNCTION_197();
  __swift_storeEnumTagSinglePayload(v30, v31, 1, v32);
  (*(v5 + 104))(v1, *MEMORY[0x277D84C38], v2);

  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Function.debugDescription.getter()
{
  sub_257650478();
  sub_2576A66C8(0, v0, v1, 2);
  v3 = v2;
  v4 = OUTLINED_FUNCTION_205();
  sub_257483A28(v4, v5, 2);
  return v3;
}

unint64_t sub_25765368C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_257743A14();
  sub_257743694();
  v6 = sub_257743A64();

  return sub_257653704(a1, a2, v6);
}

unint64_t sub_257653704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_257743994() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2576537B8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_257653818(uint64_t a1)
{
  v2 = type metadata accessor for Proto_MILSpec_Value(0);
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MLProgram.Value();
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880630, &qword_25776D4A0);
  result = sub_2577438E4();
  v9 = result;
  v10 = 0;
  v38 = a1;
  v13 = *(a1 + 64);
  v12 = a1 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v32 = result + 64;
  v33 = result;
  if ((v15 & v11) != 0)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_10:
      v21 = v18 | (v10 << 6);
      v22 = (*(v38 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = v34;
      sub_257653FCC(*(v38 + 56) + *(v35 + 72) * v21, v34);
      v26 = v36;
      sub_257653FCC(v25, v36);

      sub_257654024(v25, type metadata accessor for MLProgram.Value);
      v9 = v33;
      *(v32 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = (v9[6] + 16 * v21);
      *v27 = v23;
      v27[1] = v24;
      result = sub_257653D3C(v26, v9[7] + *(v37 + 72) * v21);
      v28 = v9[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v9[2] = v30;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        return v9;
      }

      v20 = *(v12 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_257653AF8(uint64_t a1)
{
  v2 = type metadata accessor for Proto_MILSpec_Block(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  v46 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_1();
  v45 = v7;
  OUTLINED_FUNCTION_153();
  v8 = type metadata accessor for MLProgram.Block();
  v9 = OUTLINED_FUNCTION_24(v8);
  v44 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_64_2(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8806A8, &unk_25776CFF0);
  sub_2577438E4();
  v14 = 0;
  v47 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v17 = *(v15 - 32);
  OUTLINED_FUNCTION_41_0();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v41 = v23 + 8;
  v42 = v23;
  if ((v19 & v18) != 0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_50_2();
LABEL_8:
      v26 = v24 | (v14 << 6);
      v27 = *(v47 + 56);
      v28 = (*(v47 + 48) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(v44 + 72);
      OUTLINED_FUNCTION_25_8();
      sub_257653FCC(v32, v43);
      OUTLINED_FUNCTION_44_5();
      sub_257653FCC(v43, v45);

      OUTLINED_FUNCTION_17_10();
      sub_257654024(v43, v33);
      *(v41 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v34 = (v42[6] + 16 * v26);
      *v34 = v29;
      v34[1] = v30;
      v35 = v42[7];
      v36 = *(v46 + 72);
      OUTLINED_FUNCTION_43_7();
      sub_257653D3C(v45, v37);
      v38 = v42[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        break;
      }

      v42[2] = v40;
      if (!v20)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v25 = v14;
    while (1)
    {
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v14 >= v22)
      {
        return;
      }

      ++v25;
      if (*(v15 + 8 * v14))
      {
        OUTLINED_FUNCTION_49_2();
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_257653D3C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t type metadata accessor for MLProgram.Function()
{
  result = qword_27F880688;
  if (!qword_27F880688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257653E28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257653E98()
{
  result = type metadata accessor for Proto_MILSpec_Function(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257653F04(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = result;
    v6 = *(a5 + 56);
    v7 = (*(a5 + 48) + 16 * a2);
    v8 = *v7;
    v9 = v7[1];
    v10 = type metadata accessor for MLProgram.Block();
    OUTLINED_FUNCTION_13(v10);
    v12 = *(v11 + 72);
    OUTLINED_FUNCTION_25_8();
    sub_257653FCC(v13, v5);

    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_257653FC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_257653FCC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t sub_257654024(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_30_6()
{

  return sub_257654024(v0, type metadata accessor for MLProgram.ValueType.TensorParameters);
}

uint64_t OUTLINED_FUNCTION_69_1(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 272);

  return sub_257653D3C(v4, a2);
}

uint64_t OUTLINED_FUNCTION_77_2()
{

  return sub_257743894();
}

uint64_t OUTLINED_FUNCTION_79_2()
{

  return swift_projectBox();
}

uint64_t sub_257654400@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_4_20();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v7 = type metadata accessor for AudioFeaturePrintKind(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v14);
  v15 = a1 + *(type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  sub_25765560C(a1);
  OUTLINED_FUNCTION_2_30();
  sub_257655280(v1, v13);
  OUTLINED_FUNCTION_0_43();
  sub_257655674(v13, v2);
  OUTLINED_FUNCTION_7_16();
  sub_257655674(v2, a1);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v14);
}

uint64_t sub_257654518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_4_20();
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A388, &unk_257745F50);
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType(0);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v25 - v21;
  sub_2576556D0(a1, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_25765560C(v13);
    v23 = v2 + *(type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0) + 20);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v2 = 1;
    *(v2 + 8) = 1;
    OUTLINED_FUNCTION_0_43();
    sub_257655674(v2, a2);
    return OUTLINED_FUNCTION_10_21();
  }

  else
  {
    OUTLINED_FUNCTION_10_21();
    sub_257655674(v13, v22);
    sub_257655674(v22, v20);
    OUTLINED_FUNCTION_7_16();
    return sub_257655674(v20, a2);
  }
}

uint64_t sub_2576546DC()
{
  v2 = OUTLINED_FUNCTION_4_20();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = type metadata accessor for AudioFeaturePrintKind(0);
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_2_30();
  sub_257655280(v0, v1);
  OUTLINED_FUNCTION_0_43();
  sub_257655674(v1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257743FF0;
  *(inited + 32) = 1684957515;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = xmmword_25776D000;
  *(inited + 64) = 0;
  OUTLINED_FUNCTION_13_10();
  *(v13 + 72) = v14;
  *(v13 + 80) = v15;
  v16 = *v7;
  if (*(v7 + 8))
  {
    v17 = *v7 != 0;
  }

  *(inited + 88) = sub_257743674();
  *(inited + 96) = v18;
  *(inited + 104) = 0;
  v19 = sub_2576A6964(inited);
  OUTLINED_FUNCTION_9_12();
  return v19;
}

uint64_t AudioFeaturePrintKind.SoundParameters.version.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void static AudioFeaturePrintKind.sound(version:)(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_4_20();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = v6 - v5 + *(type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  sub_2574A5B08();
  if ((v10 & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    *v7 = v9;
    *(v7 + 8) = v10 & 1;
    OUTLINED_FUNCTION_0_43();
    sub_257655674(v7, a1);
  }
}

uint64_t AudioFeaturePrintKind.SoundParameters.init(version:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0) + 20);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a1;
  *(a2 + 8) = a1 < 2;
  return result;
}

BOOL static AudioFeaturePrintKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_4_20();
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8806B0, &qword_25776D010);
  v13 = OUTLINED_FUNCTION_13(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v27 - v17;
  v19 = *(v16 + 56);
  sub_257655280(a1, &v27 - v17);
  sub_257655280(a2, &v18[v19]);
  sub_257655674(v18, v11);
  sub_257655674(&v18[v19], v9);
  v20 = *v11;
  v21 = *v9;
  if (v11[8])
  {
    v20 = *v11 != 0;
  }

  if (v9[8] == 1)
  {
    if (v21)
    {
      if (v20 != 1)
      {
LABEL_6:
        sub_257655740(v9, type metadata accessor for AudioFeaturePrintKind.SoundParameters);
        sub_257655740(v11, type metadata accessor for AudioFeaturePrintKind.SoundParameters);
        return 0;
      }
    }

    else if (v20)
    {
      goto LABEL_6;
    }
  }

  else if (v20 != v21)
  {
    goto LABEL_6;
  }

  v22 = *(type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0) + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_8_13();
  sub_257654F98(v23, v24);
  v25 = sub_257743644();
  sub_257655740(v9, type metadata accessor for AudioFeaturePrintKind.SoundParameters);
  sub_257655740(v11, type metadata accessor for AudioFeaturePrintKind.SoundParameters);
  return (v25 & 1) != 0;
}

uint64_t AudioFeaturePrintKind.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_4_20();
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = type metadata accessor for AudioFeaturePrintKind(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_2_30();
  sub_257655280(v0, v13);
  OUTLINED_FUNCTION_0_43();
  sub_257655674(v13, v6);
  MEMORY[0x259C651F0](0);
  type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  OUTLINED_FUNCTION_1_31();
  sub_257654F98(v14, v15);
  sub_2577435F4();
  return OUTLINED_FUNCTION_9_12();
}

uint64_t AudioFeaturePrintKind.hashValue.getter()
{
  sub_257743A14();
  AudioFeaturePrintKind.hash(into:)();
  return sub_257743A64();
}

uint64_t sub_257654CFC()
{
  sub_257743A14();
  AudioFeaturePrintKind.hash(into:)();
  return sub_257743A64();
}

unint64_t AudioFeaturePrintKind.SoundParameters.version.setter(unint64_t result)
{
  *v1 = result;
  *(v1 + 8) = result < 2;
  return result;
}

void *(*AudioFeaturePrintKind.SoundParameters.version.modify(void *a1))(void *result)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
  a1[1] = v1;
  return sub_257654D94;
}

void *sub_257654D94(void *result)
{
  v1 = result[1];
  v2 = *result < 2uLL;
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

BOOL static AudioFeaturePrintKind.SoundParameters.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0) + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_8_13();
  sub_257654F98(v5, v6);
  return (sub_257743644() & 1) != 0;
}

uint64_t AudioFeaturePrintKind.SoundParameters.hash(into:)()
{
  type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  OUTLINED_FUNCTION_1_31();
  sub_257654F98(v0, v1);

  return sub_2577435F4();
}

uint64_t AudioFeaturePrintKind.SoundParameters.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  OUTLINED_FUNCTION_1_31();
  sub_257654F98(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257654F98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257654FE0()
{
  sub_257743A14();
  type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  sub_257654F98(&qword_27F87A3C0, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t AudioFeaturePrintKind.SoundParameters.customMirror.getter()
{
  v2 = v0;
  v3 = sub_257743A84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v7 = OUTLINED_FUNCTION_13(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for AudioFeaturePrintKind.SoundParameters(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_257655280(v2, v17 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  *(swift_allocObject() + 16) = xmmword_2577442B0;
  OUTLINED_FUNCTION_13_10();
  v18[4] = v19;
  v18[5] = v20;
  v21 = *v2;
  if (*(v2 + 8))
  {
    v21 = *v2 != 0;
  }

  v18[9] = MEMORY[0x277D83B88];
  v18[6] = v21;
  v22 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v22);
  (*(v4 + 104))(v1, *MEMORY[0x277D84C38], v3);
  return sub_257743AA4();
}

uint64_t sub_257655280(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_257655400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeaturePrintKind.SoundParameters(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_25745AAD0);
}

uint64_t sub_257655458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AudioFeaturePrintKind.SoundParameters(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_25745AB14);
}

uint64_t sub_2576554C0(uint64_t a1)
{
  v2 = type metadata accessor for AudioFeaturePrintKind.SoundParameters(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v4 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(319);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
      return 0;
    }
  }

  return v2;
}

uint64_t sub_2576555A0()
{
  result = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25765560C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A388, &unk_257745F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257655674(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2576556D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A388, &unk_257745F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257655740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_20()
{
  v0 = type metadata accessor for AudioFeaturePrintKind.SoundParameters(0);
  v2 = *(v0 - 8);
  return v0 - 8;
}

uint64_t OUTLINED_FUNCTION_9_12()
{

  return sub_257655740(v0, type metadata accessor for AudioFeaturePrintKind.SoundParameters);
}

uint64_t OUTLINED_FUNCTION_10_21()
{

  return sub_257655740(v0, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint);
}

uint64_t NeuralNetwork.Quantization.bitCount.getter()
{
  result = *v0;
  if (*v0 < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Quantization.bitCount.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
  }

  return result;
}

uint64_t *(*NeuralNetwork.Quantization.bitCount.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = *v1;
    return sub_25763D564;
  }

  return result;
}

uint64_t NeuralNetwork.Quantization.kind.getter()
{
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(v3);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C80, &qword_25776D180);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_30_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8806C8, &qword_25776D188);
  OUTLINED_FUNCTION_13(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - v19;
  v21 = type metadata accessor for Proto_QuantizationParams(0);
  sub_257655B60(v1 + *(v21 + 20), v2);
  v22 = 1;
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) != 1)
  {
    sub_257656328();
    sub_2576563C0();
    sub_257655DFC();
    sub_257656418(v10, type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType);
    v22 = 0;
  }

  v23 = type metadata accessor for NeuralNetwork.Quantization.Kind(0);
  __swift_storeEnumTagSinglePayload(v20, v22, 1, v23);
  if (__swift_getEnumTagSinglePayload(v20, 1, v23) != 1)
  {
    return sub_257656328();
  }

  v24 = v0 + *(type metadata accessor for Proto_LinearQuantizationParams(0) + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v25 = MEMORY[0x277D84F90];
  *v0 = MEMORY[0x277D84F90];
  v0[1] = v25;
  OUTLINED_FUNCTION_205();
  swift_storeEnumTagMultiPayload();
  result = __swift_getEnumTagSinglePayload(v20, 1, v23);
  if (result != 1)
  {
    return sub_2574695E4(v20, &qword_27F8806C8, &qword_25776D188);
  }

  return result;
}

uint64_t sub_257655B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C80, &qword_25776D180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257655BF0()
{
  v0 = type metadata accessor for NeuralNetwork.Quantization.Kind(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2576563C0();
  return NeuralNetwork.Quantization.kind.setter();
}

uint64_t NeuralNetwork.Quantization.kind.setter()
{
  v1 = type metadata accessor for NeuralNetwork.Quantization.LookupTableParameters(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v5 = type metadata accessor for NeuralNetwork.Quantization.LinearParameters(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v9 = *(type metadata accessor for Proto_QuantizationParams(0) + 20);
  sub_2574695E4(v0 + v9, &qword_27F879C80, &qword_25776D180);
  OUTLINED_FUNCTION_29_8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_10_22();
  }

  else
  {
    OUTLINED_FUNCTION_9_13();
  }

  sub_257656328();
  sub_257656328();
  v10 = type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v0 + v9, 0, 1, v10);
}

uint64_t sub_257655DFC()
{
  v0 = OUTLINED_FUNCTION_18_14();
  type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(v0);
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_205();
  sub_257656328();
  OUTLINED_FUNCTION_29_8();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static NeuralNetwork.Quantization.Kind.linear(scale:bias:)()
{
  OUTLINED_FUNCTION_267();
  v3 = v2;
  v4 = v2 + *(type metadata accessor for Proto_LinearQuantizationParams(0) + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v3 = v1;
  v3[1] = v0;
  OUTLINED_FUNCTION_29_8();
  swift_storeEnumTagMultiPayload();
}

void (*NeuralNetwork.Quantization.kind.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = type metadata accessor for NeuralNetwork.Quantization.Kind(0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  NeuralNetwork.Quantization.kind.getter();
  return sub_257655F84;
}

void sub_257655F84(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_2576563C0();
    NeuralNetwork.Quantization.kind.setter();
    OUTLINED_FUNCTION_1_32();
    sub_257656418(v3, v5);
  }

  else
  {
    NeuralNetwork.Quantization.kind.setter();
  }

  free(v3);

  free(v2);
}

uint64_t NeuralNetwork.Quantization.init(bitCount:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for NeuralNetwork.Quantization.Kind(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  *a3 = 0;
  v10 = type metadata accessor for Proto_QuantizationParams(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(0);
  __swift_storeEnumTagSinglePayload(a3 + v11, 1, 1, v12);
  v13 = a3 + *(v10 + 24);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = a1;
    OUTLINED_FUNCTION_3_30();
    sub_2576563C0();
    NeuralNetwork.Quantization.kind.setter();
    OUTLINED_FUNCTION_1_32();
    return sub_257656418(a2, v15);
  }

  return result;
}

void NeuralNetwork.Quantization.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v2 = sub_257743A84();
  v3 = OUTLINED_FUNCTION_63(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_64();
  v13 = type metadata accessor for NeuralNetwork.Quantization(v12);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  sub_2576563C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_257743FF0;
  *(v17 + 32) = 0x746E756F43746962;
  *(v17 + 40) = 0xE800000000000000;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v18 = v17;
    v19 = MEMORY[0x277D83B88];
    *(v17 + 48) = *v0;
    *(v17 + 72) = v19;
    *(v17 + 80) = 1684957547;
    *(v17 + 88) = 0xE400000000000000;
    *(v17 + 120) = type metadata accessor for NeuralNetwork.Quantization.Kind(0);
    __swift_allocate_boxed_opaque_existential_0((v18 + 96));
    NeuralNetwork.Quantization.kind.getter();
    v20 = sub_257743A74();
    OUTLINED_FUNCTION_15_7(v20);
    (*(v5 + 104))(v1, *MEMORY[0x277D84C38], v2);
    OUTLINED_FUNCTION_12_18();
    sub_257743AA4();
    OUTLINED_FUNCTION_35();
  }
}

uint64_t NeuralNetwork.Quantization.LinearParameters.init(scale:bias:)()
{
  OUTLINED_FUNCTION_267();
  v3 = v2;
  v4 = v2 + *(type metadata accessor for Proto_LinearQuantizationParams(0) + 24);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v3 = v1;
  v3[1] = v0;
  return result;
}

uint64_t sub_257656328()
{
  OUTLINED_FUNCTION_267();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v0;
}

uint64_t sub_2576563C0()
{
  OUTLINED_FUNCTION_267();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v0;
}

uint64_t sub_257656418(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t static NeuralNetwork.Quantization.Kind.lookupTable(table:)()
{
  v2 = OUTLINED_FUNCTION_18_14();
  v3 = v1 + *(type metadata accessor for Proto_LookUpTableQuantizationParams(v2) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v1 = v0;
  OUTLINED_FUNCTION_29_8();
  swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Quantization.LookupTableParameters.init(table:)()
{
  v2 = OUTLINED_FUNCTION_18_14();
  v3 = v1 + *(type metadata accessor for Proto_LookUpTableQuantizationParams(v2) + 20);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v1 = v0;
  return result;
}

void static NeuralNetwork.Quantization.Kind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = type metadata accessor for NeuralNetwork.Quantization.LookupTableParameters(0);
  v27 = OUTLINED_FUNCTION_13(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v30 = type metadata accessor for NeuralNetwork.Quantization.LinearParameters(0);
  v31 = OUTLINED_FUNCTION_13(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v34 = type metadata accessor for NeuralNetwork.Quantization.Kind(0);
  v35 = OUTLINED_FUNCTION_4(v34);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = (&a9 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v38);
  v42 = (&a9 - v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8806D0, &unk_25776D190);
  OUTLINED_FUNCTION_13(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_29();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &a9 - v48;
  v50 = *(v47 + 56);
  sub_2576563C0();
  sub_2576563C0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_30();
    sub_2576563C0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_10_22();
      sub_257656328();
      if (sub_257479B60(*v40, *v20))
      {
        v51 = *(type metadata accessor for Proto_LookUpTableQuantizationParams(0) + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_2_31();
        sub_257656FF4(v52, v53);
        sub_257743644();
      }

      OUTLINED_FUNCTION_0_44();
      sub_257656418(v20, v54);
      OUTLINED_FUNCTION_0_44();
      v61 = v40;
LABEL_15:
      sub_257656418(v61, v62);
      OUTLINED_FUNCTION_1_32();
      sub_257656418(v49, v63);
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_0_44();
    v56 = v40;
  }

  else
  {
    OUTLINED_FUNCTION_3_30();
    sub_2576563C0();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_9_13();
      sub_257656328();
      if (sub_257479B60(*v42, *v21) & 1) != 0 && (sub_257479B60(v42[1], v21[1]))
      {
        v57 = *(type metadata accessor for Proto_LinearQuantizationParams(0) + 24);
        v25 = sub_2577431B4();
        OUTLINED_FUNCTION_2_31();
        sub_257656FF4(v58, v59);
        sub_257743644();
      }

      OUTLINED_FUNCTION_8_14();
      sub_257656418(v21, v60);
      v61 = v42;
      v62 = v25;
      goto LABEL_15;
    }

    v55 = type metadata accessor for NeuralNetwork.Quantization.LinearParameters;
    v56 = v42;
  }

  sub_257656418(v56, v55);
  sub_2574695E4(v49, &qword_27F8806D0, &unk_25776D190);
LABEL_16:
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Quantization.LinearParameters.scale.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*NeuralNetwork.Quantization.LinearParameters.scale.modify(void *a1))(uint64_t *, char)
{
  OUTLINED_FUNCTION_21_11(a1);

  return sub_257656938;
}

uint64_t sub_257656944(uint64_t *a1)
{
  v1 = *a1;

  return NeuralNetwork.Quantization.LinearParameters.bias.setter(v2);
}

uint64_t NeuralNetwork.Quantization.LinearParameters.bias.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*NeuralNetwork.Quantization.LinearParameters.bias.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 8);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25763F698;
}

BOOL static NeuralNetwork.Quantization.LinearParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  result = 0;
  if (sub_257479B60(*v2, *v3) & 1) != 0 && (sub_257479B60(*(v1 + 8), *(v0 + 8)))
  {
    v4 = *(type metadata accessor for Proto_LinearQuantizationParams(0) + 24);
    sub_2577431B4();
    OUTLINED_FUNCTION_2_31();
    sub_257656FF4(v5, v6);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return result;
}

void NeuralNetwork.Quantization.LinearParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  OUTLINED_FUNCTION_16_1();
  v3 = sub_257743A84();
  v4 = OUTLINED_FUNCTION_63(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_64();
  v14 = type metadata accessor for NeuralNetwork.Quantization.LinearParameters(v13);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  sub_2576563C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_257743FF0;
  *(v18 + 32) = 0x656C616373;
  *(v18 + 40) = 0xE500000000000000;
  v19 = *v2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D68, &qword_25776F940);
  *(v18 + 48) = v19;
  *(v18 + 72) = v20;
  *(v18 + 80) = 1935763810;
  v21 = v2[1];
  *(v18 + 120) = v20;
  *(v18 + 88) = 0xE400000000000000;
  *(v18 + 96) = v21;
  v22 = sub_257743A74();
  OUTLINED_FUNCTION_15_7(v22);
  (*(v6 + 104))(v1, *MEMORY[0x277D84C38], v3);

  OUTLINED_FUNCTION_12_18();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t (*NeuralNetwork.Quantization.LookupTableParameters.table.modify(void *a1))(uint64_t *, char)
{
  OUTLINED_FUNCTION_21_11(a1);

  return sub_2576571EC;
}

BOOL static NeuralNetwork.Quantization.LookupTableParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  result = 0;
  if (sub_257479B60(*v0, *v1))
  {
    v2 = *(type metadata accessor for Proto_LookUpTableQuantizationParams(0) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_2_31();
    sub_257656FF4(v3, v4);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return result;
}

void NeuralNetwork.Quantization.LookupTableParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  OUTLINED_FUNCTION_16_1();
  v3 = sub_257743A84();
  v4 = OUTLINED_FUNCTION_63(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_64();
  v14 = type metadata accessor for NeuralNetwork.Quantization.LookupTableParameters(v13);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  sub_2576563C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2577442B0;
  *(v18 + 32) = 0x656C626174;
  *(v18 + 40) = 0xE500000000000000;
  v19 = *v2;
  *(v18 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D68, &qword_25776F940);
  *(v18 + 48) = v19;
  v20 = sub_257743A74();
  OUTLINED_FUNCTION_15_7(v20);
  (*(v6 + 104))(v1, *MEMORY[0x277D84C38], v3);

  OUTLINED_FUNCTION_12_18();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257656FF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257657080()
{
  result = type metadata accessor for NeuralNetwork.Quantization.LinearParameters(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NeuralNetwork.Quantization.LookupTableParameters(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_257657174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_7(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_21_11(void *a1)
{
  result = *v1;
  a1[1] = v1;
  a1[2] = result;
  *a1 = result;
  return result;
}

void sub_257657310()
{
  OUTLINED_FUNCTION_31();
  v98 = *MEMORY[0x277D85DE8];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  v1 = OUTLINED_FUNCTION_63(v80);
  v76 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_196();
  v78 = v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880750, &unk_25776D490);
  v7 = OUTLINED_FUNCTION_4(v86);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_196();
  v83 = v12;
  MLProgram.functions.getter();
  v14 = v13;
  v15 = *(v13 + 16);
  v16 = MEMORY[0x277D84F90];
  v77 = v0;
  if (v15)
  {
    v97 = MEMORY[0x277D84F90];
    sub_257484060();
    v17 = v16;
    v18 = sub_25774107C(v14);
    v20 = v19;
    v22 = v21;
    v82 = v14 + 64;
    v81 = v14;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(v14 + 32))
    {
      if (((*(v82 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_28;
      }

      if (*(v14 + 36) != v20)
      {
        goto LABEL_29;
      }

      v88 = v15;
      v91 = v22;
      v93 = v20;
      v23 = *(v86 + 48);
      v24 = *(v14 + 56);
      v25 = (*(v14 + 48) + 16 * v18);
      v26 = *v25;
      v27 = v25[1];
      v28 = type metadata accessor for MLProgram.Function();
      OUTLINED_FUNCTION_13(v28);
      v30 = *(v29 + 72);
      OUTLINED_FUNCTION_3_31();
      sub_25765C59C(v31, v83 + v23);
      *v84 = v26;
      v84[1] = v27;
      v32 = *(v86 + 48);
      OUTLINED_FUNCTION_0_45();
      sub_25765C3FC(v83 + v23, v84 + v33);
      v95 = 34;
      v96 = 0xE100000000000000;

      MEMORY[0x259C64E90](v26, v27);
      MEMORY[0x259C64E90](34, 0xE100000000000000);
      sub_2574AD5D8(v84, v85, &qword_27F880750, &unk_25776D490);
      v34 = *(v85 + 8);

      v35 = *(v86 + 48);
      sub_257650478();
      v37 = v36;
      v39 = v38;
      v41 = v40;
      OUTLINED_FUNCTION_16_8();
      sub_25765C454(v85 + v35, v42);
      sub_2574695E4(v84, &qword_27F880750, &unk_25776D490);
      v97 = v17;
      v43 = *(v17 + 16);
      if (v43 >= *(v17 + 24) >> 1)
      {
        sub_257484060();
        v17 = v97;
      }

      *(v17 + 16) = v43 + 1;
      v44 = v17 + 40 * v43;
      *(v44 + 32) = 34;
      *(v44 + 40) = 0xE100000000000000;
      *(v44 + 48) = v37;
      *(v44 + 56) = v39;
      *(v44 + 64) = v41;
      v14 = v81;
      v18 = sub_25765C51C(v18, v93, v91 & 1, v81);
      v20 = v45;
      v22 = v46;
      --v15;
      if (v88 == 1)
      {

        sub_257653FC0(v18, v20, v22 & 1);
        v0 = v77;
        v16 = MEMORY[0x277D84F90];
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  OUTLINED_FUNCTION_38_4();
  *(v48 + 32) = v49;
  *(v48 + 40) = 0xE900000000000073;
  *(inited + 48) = sub_2576AACFC(v17);
  *(inited + 56) = v50;
  *(inited + 64) = 2;
  MLProgram.attributes.getter();
  v52 = *(v51 + 16);

  if (v52)
  {
    MLProgram.attributes.getter();
    v95 = sub_2576A8BA8();
    sub_25765A304(&v95);

    v53 = v95;
    v54 = *(v95 + 16);
    if (v54)
    {
      v95 = v16;
      sub_257484060();
      v55 = v95;
      v56 = v53 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
      v87 = *(v76 + 72);
      do
      {
        sub_2574AD5D8(v56, v78, &qword_27F879D18, &unk_257775F30);
        sub_2574AD5D8(v78, v79, &qword_27F879D18, &unk_257775F30);
        v92 = v79[1];
        v94 = *v79;
        sub_25765C454(v79 + *(v80 + 48), type metadata accessor for MLProgram.Value);
        sub_2574AD5D8(v78, v79, &qword_27F879D18, &unk_257775F30);
        v57 = v79[1];

        v58 = *(v80 + 48);
        sub_25771810C();
        v89 = v60;
        v90 = v59;
        v62 = v61;
        sub_2574695E4(v78, &qword_27F879D18, &unk_257775F30);
        sub_25765C454(v79 + v58, type metadata accessor for MLProgram.Value);
        v95 = v55;
        v63 = *(v55 + 16);
        if (v63 >= *(v55 + 24) >> 1)
        {
          sub_257484060();
          v55 = v95;
        }

        *(v55 + 16) = v63 + 1;
        v64 = v55 + 40 * v63;
        *(v64 + 32) = v94;
        *(v64 + 40) = v92;
        *(v64 + 48) = v90;
        *(v64 + 56) = v89;
        *(v64 + 64) = v62;
        v56 += v87;
        --v54;
      }

      while (v54);
    }

    else
    {

      v55 = MEMORY[0x277D84F90];
    }

    v65 = sub_2576AACFC(v55);
    v67 = v66;
    sub_257469AE0();
    inited = v68;
    *(v68 + 16) = 2;
    OUTLINED_FUNCTION_76_3();
    *(v69 + 72) = v70;
    *(v69 + 80) = 0xEA00000000007365;
    *(v69 + 88) = v65;
    *(v69 + 96) = v67;
    *(v69 + 104) = 2;
    v0 = v77;
  }

  v71 = *(v0 + 24);
  v72 = HIBYTE(v71) & 0xF;
  if ((v71 & 0x2000000000000000) == 0)
  {
    v72 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v72)
  {
    v95 = 34;
    v96 = 0xE100000000000000;
    MEMORY[0x259C64E90]();
    MEMORY[0x259C64E90](34, 0xE100000000000000);
    v20 = v95;
    v14 = v96;
    v18 = *(inited + 16);
    v15 = v18 + 1;
    if (v18 < *(inited + 24) >> 1)
    {
LABEL_25:
      *(inited + 16) = v15;
      v73 = inited + 40 * v18;
      strcpy((v73 + 32), "documentation");
      *(v73 + 46) = -4864;
      *(v73 + 48) = v20;
      *(v73 + 56) = v14;
      *(v73 + 64) = 0;
      goto LABEL_26;
    }

LABEL_30:
    sub_257469AE0();
    inited = v75;
    goto LABEL_25;
  }

LABEL_26:
  sub_2576AACFC(inited);
  v74 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257657AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 16) && (v8 = sub_25765368C(a1, a2), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(a3 + 56);
    v12 = a4(0);
    OUTLINED_FUNCTION_4(v12);
    sub_25765C59C(v11 + *(v13 + 72) * v10, a5);
    OUTLINED_FUNCTION_21();
    v17 = v12;
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_44();
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

void sub_257657BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_64();
  v13 = type metadata accessor for MLProgram.Function();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  if (__swift_getEnumTagSinglePayload(a1, 1, v20) == 1)
  {
    sub_2574695E4(a1, &qword_27F880730, &qword_25776D388);
    sub_25765BC84(a2, a3, v4);

    sub_2574695E4(v4, &qword_27F880730, &qword_25776D388);
  }

  else
  {
    sub_25765C3FC(a1, v19);
    v21 = *v5;
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *v5;
    sub_25765BDAC(v19, a2, a3);

    *v5 = v22;
  }

  OUTLINED_FUNCTION_434();
}

uint64_t static ModelKind.mlProgram(main:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880718, &qword_25776D370);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880720, &qword_25776D378) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2577442B0;
  v8 = (v7 + v6);
  v9 = v4[14];
  *v8 = 1852399981;
  v8[1] = 0xE400000000000000;
  OUTLINED_FUNCTION_3_31();
  sub_25765C59C(a1, v10 + v11);
  type metadata accessor for MLProgram.Function();
  v12 = sub_2577435D4();
  MLProgram.init(version:functions:)(1, v12, a2);
  type metadata accessor for ModelKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t MLProgram.init(version:functions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for Proto_MILSpec_Function(0);
  sub_2577435D4();
  a3[2] = 0;
  a3[3] = 0xE000000000000000;
  type metadata accessor for Proto_MILSpec_Value(0);
  a3[4] = sub_2577435D4();
  v6 = a3 + *(type metadata accessor for Proto_MILSpec_Program(0) + 32);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a3 = a1;
  sub_25765B944(a2);
  v8 = v7;

  a3[1] = v8;
  return result;
}

uint64_t (*MLProgram.version.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257636A44;
}

void MLProgram.functions.getter()
{
  OUTLINED_FUNCTION_31();
  v6 = type metadata accessor for MLProgram.Function();
  v7 = OUTLINED_FUNCTION_24(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v11 = OUTLINED_FUNCTION_30_7(v10);
  v12 = type metadata accessor for Proto_MILSpec_Function(v11);
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_64_2(v16);
  v17 = *(v1 + 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880728, &qword_25776D380);
  v19 = sub_2577438E4();
  OUTLINED_FUNCTION_35_3(v19);
  if (v2)
  {
    while (1)
    {
      OUTLINED_FUNCTION_50_2();
LABEL_8:
      OUTLINED_FUNCTION_55_3(v20);
      OUTLINED_FUNCTION_18_15();
      sub_25765C59C(v22, v0);
      OUTLINED_FUNCTION_17_11();
      v23 = v0;
      v0 = v28;
      sub_25765C3FC(v23, v28);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_0_45();
      sub_25765C3FC(v28, v24);
      v25 = *(v18 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      *(v18 + 16) = v27;

      if (!v2)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v21 = v4;
    while (1)
    {
      v4 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v4 >= v5)
      {
        OUTLINED_FUNCTION_35();
        return;
      }

      ++v21;
      if (*(v3 + 8 * v4))
      {
        OUTLINED_FUNCTION_49_2();
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25765815C(uint64_t *a1)
{
  v1 = *a1;

  return MLProgram.functions.setter(v2);
}

uint64_t MLProgram.functions.setter(uint64_t a1)
{
  sub_25765B944(a1);
  v3 = v2;

  v4 = *(v1 + 8);

  *(v1 + 8) = v3;
  return result;
}

uint64_t (*MLProgram.functions.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  MLProgram.functions.getter();
  *a1 = v3;
  return sub_257658220;
}

uint64_t sub_257658220(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {

    sub_25765B944(v5);
    OUTLINED_FUNCTION_84_4();
    v6 = *(v3 + 8);

    *(v3 + 8) = v2;
  }

  else
  {
    sub_25765B944(v4);
    OUTLINED_FUNCTION_84_4();
    v8 = *(v3 + 8);

    *(v3 + 8) = v2;
  }

  return result;
}

uint64_t MLProgram.mainFunction.getter()
{
  MLProgram.functions.getter();
  OUTLINED_FUNCTION_13_11();
  v1 = OUTLINED_FUNCTION_28_10();
  sub_257657AC0(v1, v2, v0, v3, v4);
}

void sub_257658314(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2574AD5D8(a1, &v5 - v4, &qword_27F880730, &qword_25776D388);
  MLProgram.mainFunction.setter();
}

void MLProgram.mainFunction.setter()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for MLProgram.Function();
  v5 = OUTLINED_FUNCTION_63(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  v14 = OUTLINED_FUNCTION_13(v13);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v38 - v20;
  sub_2574AD5D8(v3, v38 - v20, &qword_27F880730, &qword_25776D388);
  MLProgram.functions.getter();
  v23 = v22;
  if (__swift_getEnumTagSinglePayload(v21, 1, v4) == 1)
  {
    sub_2574695E4(v21, &qword_27F880730, &qword_25776D388);
    v24 = OUTLINED_FUNCTION_28_10();
    v26 = sub_25765368C(v24, v25);
    if (v27)
    {
      v28 = v26;
      swift_isUniquelyReferenced_nonNull_native();
      v38[0] = v23;
      v29 = *(v23 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880738, &unk_25776D390);
      sub_257743894();
      v23 = v38[0];
      v30 = *(*(v38[0] + 48) + 16 * v28 + 8);

      v31 = *(v23 + 56);
      v32 = *(v7 + 72);
      OUTLINED_FUNCTION_0_45();
      sub_25765C3FC(v33, v19);
      sub_2577438B4();
      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    __swift_storeEnumTagSinglePayload(v19, v34, 1, v4);
    sub_2574695E4(v19, &qword_27F880730, &qword_25776D388);
  }

  else
  {
    OUTLINED_FUNCTION_0_45();
    sub_25765C3FC(v21, v12);
    swift_isUniquelyReferenced_nonNull_native();
    v38[0] = v23;
    sub_25765BDAC(v12, 1852399981, 0xE400000000000000);
    v23 = v38[0];
  }

  sub_25765B944(v23);
  v36 = v35;

  sub_2574695E4(v3, &qword_27F880730, &qword_25776D388);
  v37 = *(v1 + 8);

  *(v1 + 8) = v36;
  OUTLINED_FUNCTION_35();
}

void (*MLProgram.mainFunction.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  MLProgram.functions.getter();
  OUTLINED_FUNCTION_13_11();
  v6 = OUTLINED_FUNCTION_28_10();
  sub_257657AC0(v6, v7, v1, v8, v9);

  return sub_25765872C;
}

void sub_25765872C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_2574AD5D8(a1[2], v2, &qword_27F880730, &qword_25776D388);
    MLProgram.mainFunction.setter();
    sub_2574695E4(v3, &qword_27F880730, &qword_25776D388);
  }

  else
  {
    v5 = a1[2];
    MLProgram.mainFunction.setter();
  }

  free(v3);

  free(v2);
}

uint64_t MLProgram.documentation.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_205();
}

uint64_t sub_2576587F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MLProgram.documentation.setter(v1, v2);
}

uint64_t MLProgram.documentation.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t (*MLProgram.documentation.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_2576359C0;
}

void MLProgram.attributes.getter()
{
  OUTLINED_FUNCTION_31();
  v6 = type metadata accessor for MLProgram.Value();
  v7 = OUTLINED_FUNCTION_24(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v11 = OUTLINED_FUNCTION_30_7(v10);
  v12 = type metadata accessor for Proto_MILSpec_Value(v11);
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_64_2(v16);
  v17 = *(v1 + 32);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805D0, &qword_25776CBC8);
  v19 = sub_2577438E4();
  OUTLINED_FUNCTION_35_3(v19);
  if (v2)
  {
    while (1)
    {
      OUTLINED_FUNCTION_50_2();
LABEL_8:
      v22 = OUTLINED_FUNCTION_55_3(v20);
      sub_25765C59C(v22, v0);
      v23 = OUTLINED_FUNCTION_39_2();
      v0 = v28;
      sub_25765C3FC(v23, v28);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_14_9();
      sub_25765C3FC(v28, v24);
      v25 = *(v18 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      *(v18 + 16) = v27;

      if (!v2)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v21 = v4;
    while (1)
    {
      v4 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v4 >= v5)
      {
        OUTLINED_FUNCTION_35();
        return;
      }

      ++v21;
      if (*(v3 + 8 * v4))
      {
        OUTLINED_FUNCTION_49_2();
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_257658A78(uint64_t *a1)
{
  v1 = *a1;

  return MLProgram.attributes.setter(v2);
}

uint64_t MLProgram.attributes.setter(uint64_t a1)
{
  v2 = sub_25765B64C(a1);

  v3 = *(v1 + 32);

  *(v1 + 32) = v2;
  return result;
}

uint64_t (*MLProgram.attributes.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  MLProgram.attributes.getter();
  *a1 = v3;
  return sub_257658B3C;
}

uint64_t sub_257658B3C(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {

    sub_25765B64C(v5);
    OUTLINED_FUNCTION_84_4();
    v6 = *(v3 + 32);

    *(v3 + 32) = v2;
  }

  else
  {
    sub_25765B64C(v4);
    OUTLINED_FUNCTION_84_4();
    v8 = *(v3 + 32);

    *(v3 + 32) = v2;
  }

  return result;
}

uint64_t MLProgram.weightsFileNames()()
{
  v2 = MEMORY[0x277D84FA0];
  sub_257658C08(v0, &v2);
  return v2;
}

void sub_257658C08(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v40 - v8;
  MLProgram.functions.getter();
  v10 = 0;
  v13 = v11 + 64;
  v12 = *(v11 + 64);
  v40 = v11;
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  if ((v15 & v12) == 0)
  {
LABEL_5:
    while (1)
    {
      v18 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v18 >= v17)
      {

        MLProgram.attributes.getter();
        v26 = v25;
        v27 = 0;
        v28 = v25 + 64;
        v29 = 1 << *(v25 + 32);
        v30 = -1;
        if (v29 < 64)
        {
          v30 = ~(-1 << v29);
        }

        v31 = v30 & *(v25 + 64);
        for (i = (v29 + 63) >> 6; v31; v27 = v33)
        {
          v33 = v27;
LABEL_18:
          v34 = (*(v26 + 48) + ((v33 << 10) | (16 * __clz(__rbit64(v31)))));
          v36 = *v34;
          v35 = v34[1];
          MLProgram.attributes.getter();
          v38 = v37;

          sub_257657AC0(v36, v35, v38, type metadata accessor for MLProgram.Value, v5);

          v39 = type metadata accessor for MLProgram.Value();
          if (__swift_getEnumTagSinglePayload(v5, 1, v39) == 1)
          {
            goto LABEL_25;
          }

          v31 &= v31 - 1;

          sub_25771C364(v5, v41);
          sub_25765C454(v5, type metadata accessor for MLProgram.Value);
        }

        while (1)
        {
          v33 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v33 >= i)
          {

            return;
          }

          v31 = *(v28 + 8 * v33);
          ++v27;
          if (v31)
          {
            goto LABEL_18;
          }
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v16 = *(v13 + 8 * v18);
      ++v10;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  while (1)
  {
    v18 = v10;
LABEL_8:
    v19 = (*(v40 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v16)))));
    v21 = *v19;
    v20 = v19[1];
    MLProgram.functions.getter();
    v23 = v22;

    sub_257657AC0(v21, v20, v23, type metadata accessor for MLProgram.Function, v9);

    v24 = type metadata accessor for MLProgram.Function();
    if (__swift_getEnumTagSinglePayload(v9, 1, v24) == 1)
    {
      break;
    }

    v16 &= v16 - 1;

    sub_2576520E8();
    sub_25765C454(v9, type metadata accessor for MLProgram.Function);
    v10 = v18;
    if (!v16)
    {
      goto LABEL_5;
    }
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

Swift::Void __swiftcall MLProgram.updateWeightsFileName(to:)(Swift::String to)
{
  object = to._object;
  countAndFlagsBits = to._countAndFlagsBits;

  sub_257658FD0(v1, countAndFlagsBits, object);
}

uint64_t sub_257658FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v96 = a2;
  v5 = type metadata accessor for MLProgram.Value();
  v85 = *(v5 - 8);
  v86 = v5;
  v6 = *(v85 + 64);
  MEMORY[0x28223BE20](v5);
  v82 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v84 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v94 = &v82 - v12;
  v13 = type metadata accessor for MLProgram.Function();
  v89 = *(v13 - 8);
  v14 = *(v89 + 64);
  MEMORY[0x28223BE20](v13);
  v83 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v91 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v97 = &v82 - v20;
  MLProgram.functions.getter();
  v23 = v21 + 64;
  v22 = *(v21 + 64);
  v92 = v21;
  v24 = 1 << *(v21 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v22;
  v27 = (v24 + 63) >> 6;
  v98 = a3;
  swift_bridgeObjectRetain_n();
  v28 = 0;
  v29 = 0;
  v95 = a1;
  v87 = v27;
  v88 = v23;
  v90 = v13;
  if (v26)
  {
    while (1)
    {
      v93 = v29;
LABEL_9:
      v31 = (*(v92 + 48) + ((v28 << 10) | (16 * __clz(__rbit64(v26)))));
      v32 = *v31;
      v33 = v31[1];
      MLProgram.functions.getter();
      v35 = v34;

      swift_isUniquelyReferenced_nonNull_native();
      v99 = v35;
      v36 = sub_25765368C(v32, v33);
      v38 = v91;
      if (__OFADD__(*(v35 + 16), (v37 & 1) == 0))
      {
        break;
      }

      v39 = v36;
      v40 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880738, &unk_25776D390);
      if (sub_257743894())
      {
        v41 = sub_25765368C(v32, v33);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_44;
        }

        v39 = v41;
      }

      if ((v40 & 1) == 0)
      {
        goto LABEL_42;
      }

      v43 = v99;
      v44 = *(v89 + 72) * v39;
      v45 = v97;
      sub_25765C3FC(*(v99 + 56) + v44, v97);
      v46 = v90;
      __swift_storeEnumTagSinglePayload(v45, 0, 1, v90);

      sub_257652434();
      sub_2574AD5D8(v45, v38, &qword_27F880730, &qword_25776D388);
      if (__swift_getEnumTagSinglePayload(v38, 1, v46) == 1)
      {
        sub_2574695E4(v38, &qword_27F880730, &qword_25776D388);
        sub_2576493CC(*(v43 + 48) + 16 * v39);
        sub_2577438B4();
      }

      else
      {
        v47 = v38;
        v48 = v83;
        sub_25765C3FC(v47, v83);
        sub_25765C3FC(v48, *(v43 + 56) + v44);
      }

      v29 = v93;
      v23 = v88;
      v26 &= v26 - 1;
      sub_2574695E4(v97, &qword_27F880730, &qword_25776D388);
      sub_25765B944(v43);
      v50 = v49;

      v51 = v95;
      v52 = *(v95 + 8);

      *(v51 + 8) = v50;
      v27 = v87;
      if (!v26)
      {
        goto LABEL_5;
      }
    }

LABEL_40:
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if (v30 >= v27)
      {
        break;
      }

      v26 = *(v23 + 8 * v30);
      ++v28;
      if (v26)
      {
        v93 = v29;
        v28 = v30;
        goto LABEL_9;
      }
    }

    MLProgram.attributes.getter();
    v54 = 0;
    v56 = v53 + 64;
    v55 = *(v53 + 64);
    v97 = v53;
    v57 = 1 << *(v53 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & v55;
    v60 = (v57 + 63) >> 6;
    v92 = v60;
    v93 = v53 + 64;
    if ((v58 & v55) == 0)
    {
LABEL_22:
      while (1)
      {
        v61 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_39;
        }

        if (v61 >= v60)
        {
          swift_bridgeObjectRelease_n();
        }

        v59 = *(v56 + 8 * v61);
        ++v54;
        if (v59)
        {
          v54 = v61;
          break;
        }
      }
    }

    while (1)
    {
      v62 = (*(v97 + 48) + ((v54 << 10) | (16 * __clz(__rbit64(v59)))));
      v26 = *v62;
      v63 = v62[1];
      MLProgram.attributes.getter();
      v65 = v64;

      swift_isUniquelyReferenced_nonNull_native();
      v99 = v65;
      v66 = sub_25765368C(v26, v63);
      if (__OFADD__(*(v65 + 16), (v67 & 1) == 0))
      {
        break;
      }

      v68 = v66;
      v69 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880620, &qword_25776CCA0);
      if (sub_257743894())
      {
        v70 = sub_25765368C(v26, v63);
        if ((v69 & 1) != (v71 & 1))
        {
          goto LABEL_44;
        }

        v68 = v70;
        v26 = v86;
      }

      else
      {
        v26 = v86;
      }

      if ((v69 & 1) == 0)
      {
        goto LABEL_43;
      }

      v72 = v99;
      v73 = *(v85 + 72) * v68;
      v74 = v94;
      sub_25765C3FC(*(v99 + 56) + v73, v94);
      __swift_storeEnumTagSinglePayload(v74, 0, 1, v26);
      v75 = v98;

      sub_257717EB8(v74, v96, v75);
      v76 = v84;
      sub_2574AD5D8(v74, v84, &qword_27F880608, &unk_25776D460);
      if (__swift_getEnumTagSinglePayload(v76, 1, v26) == 1)
      {
        sub_2574695E4(v76, &qword_27F880608, &unk_25776D460);
        sub_2576493CC(*(v72 + 48) + 16 * v68);
        sub_2577438B4();
      }

      else
      {
        v77 = v82;
        sub_25765C3FC(v76, v82);
        sub_25765C3FC(v77, *(v72 + 56) + v73);
      }

      v59 &= v59 - 1;
      sub_2574695E4(v94, &qword_27F880608, &unk_25776D460);
      v78 = sub_25765B64C(v72);

      v79 = v95;
      v80 = *(v95 + 32);

      *(v79 + 32) = v78;
      v60 = v92;
      v56 = v93;
      if (!v59)
      {
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_42:
  swift_bridgeObjectRelease_n();
  __swift_storeEnumTagSinglePayload(v97, 1, 1, v90);
  __break(1u);
LABEL_43:
  swift_bridgeObjectRelease_n();
  __swift_storeEnumTagSinglePayload(v94, 1, 1, v26);
  __break(1u);
LABEL_44:
  swift_bridgeObjectRelease_n();
  result = sub_2577439B4();
  __break(1u);
  return result;
}