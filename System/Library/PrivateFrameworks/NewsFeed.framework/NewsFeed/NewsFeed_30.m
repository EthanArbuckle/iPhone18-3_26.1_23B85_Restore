uint64_t sub_1D5E1211C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v98 = result;
  v8 = *(a3 + 8);
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_141:
    v5 = v7;
    v7 = *v98;
    if (!*v98)
    {
      goto LABEL_180;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_143:
      v90 = v6;
      v91 = *(v10 + 2);
      if (v91 >= 2)
      {
        while (*v5)
        {
          v6 = v91 - 1;
          v92 = *&v10[16 * v91];
          v93 = *&v10[16 * v91 + 24];
          sub_1D5E17A60((*v5 + v92), (*v5 + *&v10[16 * v91 + 16]), *v5 + v93, v7);
          if (v90)
          {
          }

          if (v93 < v92)
          {
            goto LABEL_167;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D62FF50C(v10);
          }

          if (v91 - 2 >= *(v10 + 2))
          {
            goto LABEL_168;
          }

          v94 = &v10[16 * v91];
          *v94 = v92;
          *(v94 + 1) = v93;
          result = sub_1D62FF480(v91 - 1);
          v91 = *(v10 + 2);
          if (v91 <= 1)
          {
          }
        }

        goto LABEL_178;
      }
    }

LABEL_174:
    result = sub_1D62FF50C(v10);
    v10 = result;
    goto LABEL_143;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v12 = *v7;
      if (v9[*v7])
      {
        v13 = 0x73676E69646E6962;
      }

      else
      {
        v13 = 0x736E6F6974706FLL;
      }

      if (v9[*v7])
      {
        v14 = 0xE800000000000000;
      }

      else
      {
        v14 = 0xE700000000000000;
      }

      if (*(*v7 + v11))
      {
        v15 = 0x73676E69646E6962;
      }

      else
      {
        v15 = 0x736E6F6974706FLL;
      }

      if (*(*v7 + v11))
      {
        v5 = 0xE800000000000000;
      }

      else
      {
        v5 = 0xE700000000000000;
      }

      if (v13 == v15 && v14 == v5)
      {
        v101 = 0;
      }

      else
      {
        v101 = sub_1D72646CC();
      }

      v9 = (v11 + 2);
      if (v11 + 2 < v8)
      {
        do
        {
          if (v9[v12])
          {
            v20 = 0x73676E69646E6962;
          }

          else
          {
            v20 = 0x736E6F6974706FLL;
          }

          if (v9[v12])
          {
            v21 = 0xE800000000000000;
          }

          else
          {
            v21 = 0xE700000000000000;
          }

          if (v9[v12 - 1])
          {
            v22 = 0x73676E69646E6962;
          }

          else
          {
            v22 = 0x736E6F6974706FLL;
          }

          if (v9[v12 - 1])
          {
            v5 = 0xE800000000000000;
          }

          else
          {
            v5 = 0xE700000000000000;
          }

          if (v20 == v22 && v21 == v5)
          {

            if (v101)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v17 = v12;
            v18 = sub_1D72646CC();

            v19 = v101 ^ v18;
            v12 = v17;
            v7 = a3;
            if (v19)
            {
              goto LABEL_47;
            }
          }

          ++v9;
        }

        while (v8 != v9);
        v9 = v8;
      }

LABEL_47:
      if (v101)
      {
LABEL_48:
        if (v9 < v11)
        {
          goto LABEL_171;
        }

        if (v11 < v9)
        {
          v24 = v9 - 1;
          v25 = v11;
          do
          {
            if (v25 != v24)
            {
              v27 = *v7;
              if (!*v7)
              {
                goto LABEL_177;
              }

              v28 = v25[v27];
              v25[v27] = v24[v27];
              v24[v27] = v28;
            }
          }

          while (++v25 < v24--);
        }
      }
    }

    v29 = *(v7 + 1);
    if (v9 < v29)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_170;
      }

      if (&v9[-v11] < a4)
      {
        break;
      }
    }

LABEL_90:
    if (v9 < v11)
    {
      goto LABEL_169;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v42 = v11;
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v44 = *(v10 + 2);
    v43 = *(v10 + 3);
    v5 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_1D698BA94((v43 > 1), v44 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v5;
    v45 = &v10[16 * v44];
    *(v45 + 4) = v42;
    *(v45 + 5) = v9;
    v103 = *v98;
    if (!*v98)
    {
      goto LABEL_179;
    }

    if (v44)
    {
      while (1)
      {
        v46 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v47 = *(v10 + 4);
          v48 = *(v10 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_110:
          if (v50)
          {
            goto LABEL_158;
          }

          v63 = &v10[16 * v5];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_161;
          }

          v69 = &v10[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_164;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_165;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v5 - 2;
            }

            goto LABEL_131;
          }

          goto LABEL_124;
        }

        v73 = &v10[16 * v5];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_124:
        if (v68)
        {
          goto LABEL_160;
        }

        v76 = &v10[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_163;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_131:
        v84 = v46 - 1;
        if (v46 - 1 >= v5)
        {
          __break(1u);
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
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        v85 = *v7;
        if (!*v7)
        {
          goto LABEL_176;
        }

        v86 = v9;
        v87 = v7;
        v88 = *&v10[16 * v84 + 32];
        v7 = *&v10[16 * v46 + 40];
        sub_1D5E17A60((v85 + v88), (v85 + *&v10[16 * v46 + 32]), &v7[v85], v103);
        if (v6)
        {
        }

        if (v7 < v88)
        {
          goto LABEL_154;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D62FF50C(v10);
        }

        if (v84 >= *(v10 + 2))
        {
          goto LABEL_155;
        }

        v89 = &v10[16 * v84];
        *(v89 + 4) = v88;
        *(v89 + 5) = v7;
        result = sub_1D62FF480(v46);
        v5 = *(v10 + 2);
        v9 = v86;
        v7 = v87;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v10[16 * v5 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_156;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_157;
      }

      v58 = &v10[16 * v5];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_159;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_162;
      }

      if (v62 >= v54)
      {
        v80 = &v10[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_166;
        }

        if (v49 < v83)
        {
          v46 = v5 - 2;
        }

        goto LABEL_131;
      }

      goto LABEL_110;
    }

LABEL_3:
    v8 = *(v7 + 1);
    if (v9 >= v8)
    {
      goto LABEL_141;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_172;
  }

  if (v11 + a4 < v29)
  {
    v29 = (v11 + a4);
  }

  if (v29 < v11)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  if (v9 == v29)
  {
    goto LABEL_90;
  }

  v95 = v11;
  v96 = v6;
  v30 = *v7;
  v31 = &v9[*v7];
  v32 = v11 - v9;
  v100 = v29;
LABEL_67:
  v102 = v9;
  v33 = v9[v30];
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (v33)
    {
      v36 = 0x73676E69646E6962;
    }

    else
    {
      v36 = 0x736E6F6974706FLL;
    }

    if (v33)
    {
      v37 = 0xE800000000000000;
    }

    else
    {
      v37 = 0xE700000000000000;
    }

    if (*(v35 - 1))
    {
      v38 = 0x73676E69646E6962;
    }

    else
    {
      v38 = 0x736E6F6974706FLL;
    }

    if (*(v35 - 1))
    {
      v39 = 0xE800000000000000;
    }

    else
    {
      v39 = 0xE700000000000000;
    }

    if (v36 == v38 && v37 == v39)
    {

LABEL_66:
      v9 = v102 + 1;
      ++v31;
      --v32;
      if (v102 + 1 == v100)
      {
        v9 = v100;
        v11 = v95;
        v6 = v96;
        v7 = a3;
        goto LABEL_90;
      }

      goto LABEL_67;
    }

    v5 = sub_1D72646CC();

    if ((v5 & 1) == 0)
    {
      goto LABEL_66;
    }

    if (!v30)
    {
      break;
    }

    v33 = *v35;
    *v35 = *(v35 - 1);
    *--v35 = v33;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
  return result;
}

void sub_1D5E12844(int64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v129 = a1;
  v144 = type metadata accessor for FormatRegex();
  v137 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144, v8);
  v133 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v143 = &v124 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v124 - v15);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v124 - v19);
  MEMORY[0x1EEE9AC00](v21, v22);
  v142 = (&v124 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v141 = (&v124 - v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v128 = (&v124 - v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v127 = (&v124 - v32);
  v33 = *(a3 + 8);
  if (v33 < 1)
  {
    v35 = MEMORY[0x1E69E7CC0];
LABEL_110:
    v36 = *v129;
    if (!*v129)
    {
      goto LABEL_148;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_112:
      v145 = v35;
      v119 = *(v35 + 16);
      if (v119 >= 2)
      {
        while (*a3)
        {
          v120 = v35;
          v35 = *(v35 + 16 * v119);
          v121 = v120;
          v122 = *&v120[16 * v119 + 24];
          sub_1D5E17D68(*a3 + *(v137 + 72) * v35, *a3 + *(v137 + 72) * *&v120[16 * v119 + 16], *a3 + *(v137 + 72) * v122, v36);
          if (v5)
          {
            goto LABEL_120;
          }

          if (v122 < v35)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v121 = sub_1D62FF50C(v121);
          }

          if (v119 - 2 >= *(v121 + 2))
          {
            goto LABEL_136;
          }

          v123 = &v121[16 * v119];
          *v123 = v35;
          v123[1] = v122;
          v145 = v121;
          sub_1D62FF480(v119 - 1);
          v35 = v145;
          v119 = *(v145 + 16);
          if (v119 <= 1)
          {
            goto LABEL_120;
          }
        }

        goto LABEL_146;
      }

LABEL_120:

      return;
    }

LABEL_142:
    v35 = sub_1D62FF50C(v35);
    goto LABEL_112;
  }

  v124 = a4;
  v34 = 0;
  v35 = MEMORY[0x1E69E7CC0];
  v138 = a3;
  v134 = v20;
  while (1)
  {
    v36 = v34;
    v37 = v34 + 1;
    if (v34 + 1 < v33)
    {
      v135 = v33;
      v125 = v35;
      v38 = *a3;
      v39 = *(v137 + 72);
      v40 = v34 + 1;
      v41 = v127;
      sub_1D5E190A4(v38 + v39 * v37, v127, type metadata accessor for FormatRegex);
      v130 = v36;
      v139 = v39;
      v42 = v38 + v39 * v36;
      v43 = v128;
      sub_1D5E190A4(v42, v128, type metadata accessor for FormatRegex);
      v44 = *v41 == *v43 && v41[1] == v43[1];
      v126 = v5;
      if (v44)
      {
        LODWORD(v136) = 0;
      }

      else
      {
        LODWORD(v136) = sub_1D72646CC();
      }

      sub_1D5E1A778(v128);
      sub_1D5E1A778(v127);
      v45 = v130 + 2;
      v46 = v139 * (v130 + 2);
      v47 = v38 + v46;
      v48 = v40;
      v49 = v139 * v40;
      a3 = v38 + v139 * v40;
      do
      {
        v5 = v45;
        v51 = v48;
        v35 = v49;
        v36 = v46;
        if (v45 >= v135)
        {
          break;
        }

        v140 = v45;
        v52 = v16;
        v53 = v141;
        sub_1D5E190A4(v47, v141, type metadata accessor for FormatRegex);
        v54 = v142;
        sub_1D5E190A4(a3, v142, type metadata accessor for FormatRegex);
        v55 = *v53 == *v54 && v53[1] == v54[1];
        v50 = v55 ? 0 : sub_1D72646CC();
        v16 = v52;
        v5 = v140;
        sub_1D5E1A778(v142);
        sub_1D5E1A778(v141);
        v45 = v5 + 1;
        v47 += v139;
        a3 += v139;
        v48 = v51 + 1;
        v49 = v35 + v139;
        v46 = v36 + v139;
        v20 = v134;
      }

      while (((v136 ^ v50) & 1) == 0);
      if (v136)
      {
        if (v5 < v130)
        {
          goto LABEL_139;
        }

        if (v130 >= v5)
        {
          v37 = v5;
          v35 = v125;
          v5 = v126;
          a3 = v138;
          v36 = v130;
          goto LABEL_36;
        }

        v56 = v130 * v139;
        v57 = v130;
        do
        {
          if (v57 != v51)
          {
            v59 = *v138;
            if (!*v138)
            {
              goto LABEL_145;
            }

            v140 = v59 + v56;
            sub_1D5E1A7D4(v59 + v56, v133, type metadata accessor for FormatRegex);
            if (v56 < v35 || v140 >= (v59 + v36))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v56 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1D5E1A7D4(v133, v59 + v35, type metadata accessor for FormatRegex);
          }

          ++v57;
          v35 -= v139;
          v36 -= v139;
          v56 += v139;
        }

        while (v57 < v51--);
      }

      v37 = v5;
      v35 = v125;
      v5 = v126;
      a3 = v138;
      v36 = v130;
    }

LABEL_36:
    v60 = *(a3 + 8);
    v140 = v37;
    if (v37 < v60)
    {
      v87 = __OFSUB__(v37, v36);
      v61 = v37 - v36;
      if (v87)
      {
        goto LABEL_138;
      }

      if (v61 < v124)
      {
        break;
      }
    }

LABEL_59:
    if (v140 < v36)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_1D698BA94(0, *(v35 + 16) + 1, 1, v35);
    }

    v73 = *(v35 + 16);
    v72 = *(v35 + 24);
    v74 = v73 + 1;
    if (v73 >= v72 >> 1)
    {
      v35 = sub_1D698BA94((v72 > 1), v73 + 1, 1, v35);
    }

    *(v35 + 16) = v74;
    v75 = v35 + 16 * v73;
    v76 = v140;
    *(v75 + 32) = v36;
    *(v75 + 40) = v76;
    v36 = *v129;
    if (!*v129)
    {
      goto LABEL_147;
    }

    if (v73)
    {
      while (1)
      {
        a3 = v74 - 1;
        if (v74 >= 4)
        {
          break;
        }

        if (v74 == 3)
        {
          v77 = *(v35 + 32);
          v78 = *(v35 + 40);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_79:
          if (v80)
          {
            goto LABEL_126;
          }

          v93 = (v35 + 16 * v74);
          v95 = *v93;
          v94 = v93[1];
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_129;
          }

          v99 = (v35 + 32 + 16 * a3);
          v101 = *v99;
          v100 = v99[1];
          v87 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v87)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v97, v102))
          {
            goto LABEL_133;
          }

          if (v97 + v102 >= v79)
          {
            if (v79 < v102)
            {
              a3 = v74 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v103 = (v35 + 16 * v74);
        v105 = *v103;
        v104 = v103[1];
        v87 = __OFSUB__(v104, v105);
        v97 = v104 - v105;
        v98 = v87;
LABEL_93:
        if (v98)
        {
          goto LABEL_128;
        }

        v106 = v35 + 16 * a3;
        v108 = *(v106 + 32);
        v107 = *(v106 + 40);
        v87 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v87)
        {
          goto LABEL_131;
        }

        if (v109 < v97)
        {
          goto LABEL_3;
        }

LABEL_100:
        v114 = a3 - 1;
        if (a3 - 1 >= v74)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v138)
        {
          goto LABEL_144;
        }

        v115 = v35;
        v116 = v35 + 32;
        v35 = *(v35 + 32 + 16 * v114);
        v117 = *(v116 + 16 * a3 + 8);
        sub_1D5E17D68(*v138 + *(v137 + 72) * v35, *v138 + *(v137 + 72) * *(v116 + 16 * a3), *v138 + *(v137 + 72) * v117, v36);
        if (v5)
        {
          goto LABEL_120;
        }

        if (v117 < v35)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_1D62FF50C(v115);
        }

        if (v114 >= *(v115 + 2))
        {
          goto LABEL_123;
        }

        v118 = &v115[16 * v114];
        *(v118 + 4) = v35;
        *(v118 + 5) = v117;
        v145 = v115;
        sub_1D62FF480(a3);
        v35 = v145;
        v74 = *(v145 + 16);
        if (v74 <= 1)
        {
          goto LABEL_3;
        }
      }

      v81 = v35 + 32 + 16 * v74;
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_124;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_125;
      }

      v88 = (v35 + 16 * v74);
      v90 = *v88;
      v89 = v88[1];
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_127;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_130;
      }

      if (v92 >= v84)
      {
        v110 = (v35 + 32 + 16 * a3);
        v112 = *v110;
        v111 = v110[1];
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_134;
        }

        if (v79 < v113)
        {
          a3 = v74 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    a3 = v138;
    v33 = v138[1];
    v34 = v140;
    if (v140 >= v33)
    {
      goto LABEL_110;
    }
  }

  if (__OFADD__(v36, v124))
  {
    goto LABEL_140;
  }

  if (v36 + v124 >= v60)
  {
    v62 = v60;
  }

  else
  {
    v62 = v36 + v124;
  }

  if (v62 < v36)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v140 == v62)
  {
    goto LABEL_59;
  }

  v125 = v35;
  v126 = v5;
  v63 = *a3;
  v64 = *(v137 + 72);
  v65 = *a3 + v64 * (v140 - 1);
  v66 = -v64;
  v130 = v36;
  v131 = v64;
  a3 = v36 - v140;
  v67 = v63 + v140 * v64;
  v132 = v62;
LABEL_48:
  v135 = v67;
  v136 = a3;
  v139 = v65;
  while (1)
  {
    sub_1D5E190A4(v67, v20, type metadata accessor for FormatRegex);
    sub_1D5E190A4(v65, v16, type metadata accessor for FormatRegex);
    if (*v20 == *v16 && v20[1] == v16[1])
    {
      sub_1D5E1A778(v16);
      sub_1D5E1A778(v20);
LABEL_47:
      v65 = v139 + v131;
      a3 = v136 - 1;
      v67 = v135 + v131;
      if (++v140 == v132)
      {
        v140 = v132;
        v35 = v125;
        v5 = v126;
        v36 = v130;
        goto LABEL_59;
      }

      goto LABEL_48;
    }

    v69 = sub_1D72646CC();
    sub_1D5E1A778(v16);
    sub_1D5E1A778(v20);
    if ((v69 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (!v63)
    {
      break;
    }

    v70 = v143;
    sub_1D5E1A7D4(v67, v143, type metadata accessor for FormatRegex);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D5E1A7D4(v70, v65, type metadata accessor for FormatRegex);
    v65 += v66;
    v67 += v66;
    if (__CFADD__(a3++, 1))
    {
      goto LABEL_47;
    }
  }

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
}

uint64_t sub_1D5E13224(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v118 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_198:
    v8 = *v118;
    if (!*v118)
    {
      goto LABEL_237;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_200:
      v110 = v5;
      v128 = v10;
      v111 = *(v10 + 2);
      if (v111 >= 2)
      {
        while (1)
        {
          v112 = *v6;
          if (!*v6)
          {
            goto LABEL_235;
          }

          v113 = v6;
          v5 = v111 - 1;
          v6 = *&v10[16 * v111];
          v114 = *&v10[16 * v111 + 24];
          sub_1D5E18278(v6 + v112, (v112 + *&v10[16 * v111 + 16]), v112 + v114, v8);
          if (v110)
          {
          }

          if (v114 < v6)
          {
            goto LABEL_224;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D62FF50C(v10);
          }

          if (v111 - 2 >= *(v10 + 2))
          {
            goto LABEL_225;
          }

          v115 = &v10[16 * v111];
          *v115 = v6;
          *(v115 + 1) = v114;
          v128 = v10;
          result = sub_1D62FF480(v111 - 1);
          v10 = v128;
          v111 = *(v128 + 2);
          v6 = v113;
          if (v111 <= 1)
          {
          }
        }
      }
    }

LABEL_231:
    result = sub_1D62FF50C(v10);
    v10 = result;
    goto LABEL_200;
  }

  v8 = 0;
  v9 = 0xEC000000646E6962;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v8++;
    v120 = v11;
    if (v8 < v7)
    {
      v121 = *v6;
      v12 = *(*v6 + v11);
      v127 = v8[*v6];
      v126 = v12;
      result = _s8NewsFeed20FormatPrintNodeValueO1loiySbAC_ACtFZ_0(&v127, &v126);
      __dst = result;
      v13 = (v11 + 2);
      if (v11 + 2 < v7)
      {
        v8 = (v7 - 1);
        while (1)
        {
          v16 = v13[v121];
          if (v16 > 3)
          {
            if (v13[v121] > 5u)
            {
              if (v16 == 6)
              {
                v9 = 0xE800000000000000;
                v17 = 0x73676E69646E6962;
              }

              else
              {
                v9 = 0xE300000000000000;
                v17 = 7105633;
              }
            }

            else if (v16 == 4)
            {
              v9 = 0xE800000000000000;
              v17 = 0x6574616C706D6574;
            }

            else
            {
              v9 = 0xE700000000000000;
              v17 = 0x747865746E6F63;
            }
          }

          else if (v13[v121] > 1u)
          {
            if (v16 == 2)
            {
              v17 = 0x40736E6F6974706FLL;
              v9 = 0xEE0074756F79616CLL;
            }

            else
            {
              v9 = 0xE600000000000000;
              v17 = 0x726F73727563;
            }
          }

          else if (v13[v121])
          {
            v17 = 0x40736E6F6974706FLL;
          }

          else
          {
            v9 = 0xE700000000000000;
            v17 = 0x736E6F6974706FLL;
          }

          v18 = v13[v121 - 1];
          v19 = 0x73676E69646E6962;
          if (v18 != 6)
          {
            v19 = 7105633;
          }

          v20 = 0xE300000000000000;
          if (v18 == 6)
          {
            v20 = 0xE800000000000000;
          }

          v21 = 0x6574616C706D6574;
          if (v18 == 4)
          {
            v22 = 0xE800000000000000;
          }

          else
          {
            v21 = 0x747865746E6F63;
            v22 = 0xE700000000000000;
          }

          if (v13[v121 - 1] <= 5u)
          {
            v19 = v21;
            v20 = v22;
          }

          if (v18 == 2)
          {
            v23 = 0x40736E6F6974706FLL;
          }

          else
          {
            v23 = 0x726F73727563;
          }

          if (v18 == 2)
          {
            v24 = 0xEE0074756F79616CLL;
          }

          else
          {
            v24 = 0xE600000000000000;
          }

          if (v13[v121 - 1])
          {
            v25 = 0x40736E6F6974706FLL;
          }

          else
          {
            v25 = 0x736E6F6974706FLL;
          }

          v26 = 0xEC000000646E6962;
          if (!v13[v121 - 1])
          {
            v26 = 0xE700000000000000;
          }

          if (v13[v121 - 1] <= 1u)
          {
            v23 = v25;
            v24 = v26;
          }

          if (v13[v121 - 1] <= 3u)
          {
            v27 = v23;
          }

          else
          {
            v27 = v19;
          }

          if (v13[v121 - 1] <= 3u)
          {
            v28 = v24;
          }

          else
          {
            v28 = v20;
          }

          if (v17 == v27 && v9 == v28)
          {

            if (__dst)
            {
              v29 = v13 - 1;
              goto LABEL_59;
            }
          }

          else
          {
            v14 = sub_1D72646CC();

            v15 = __dst ^ v14;
            v6 = a3;
            v11 = v120;
            if (v15)
            {
              v8 = v13 - 1;
              break;
            }
          }

          ++v13;
          v9 = 0xEC000000646E6962;
          if (v7 == v13)
          {
            v13 = v7;
            break;
          }
        }
      }

      v29 = v8;
      v8 = v13;
      if (__dst)
      {
LABEL_59:
        if (v13 < v11)
        {
          goto LABEL_228;
        }

        if (v11 <= v29)
        {
          v58 = v13 - 1;
          v59 = v11;
          do
          {
            if (v59 != v58)
            {
              v61 = *v6;
              if (!*v6)
              {
                goto LABEL_234;
              }

              v62 = *(v61 + v59);
              *(v61 + v59) = v58[v61];
              v58[v61] = v62;
            }
          }

          while (++v59 < v58--);
        }

        v8 = v13;
      }
    }

    v30 = v6[1];
    if (v8 < v30)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_227;
      }

      if (&v8[-v11] < a4)
      {
        break;
      }
    }

LABEL_147:
    if (v8 < v11)
    {
      goto LABEL_226;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v64 = *(v10 + 2);
    v63 = *(v10 + 3);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      result = sub_1D698BA94((v63 > 1), v64 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v65;
    v66 = &v10[16 * v64];
    *(v66 + 4) = v11;
    *(v66 + 5) = v8;
    __dstb = *v118;
    if (!*v118)
    {
      goto LABEL_236;
    }

    if (v64)
    {
      while (1)
      {
        v67 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v68 = *(v10 + 4);
          v69 = *(v10 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_167:
          if (v71)
          {
            goto LABEL_215;
          }

          v84 = &v10[16 * v65];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_218;
          }

          v90 = &v10[16 * v67 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_221;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_222;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v65 - 2;
            }

            goto LABEL_188;
          }

          goto LABEL_181;
        }

        v94 = &v10[16 * v65];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_181:
        if (v89)
        {
          goto LABEL_217;
        }

        v97 = &v10[16 * v67];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_220;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_188:
        v105 = v67 - 1;
        if (v67 - 1 >= v65)
        {
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
          goto LABEL_230;
        }

        v106 = *v6;
        if (!*v6)
        {
          goto LABEL_233;
        }

        v107 = v8;
        v108 = v6;
        v6 = *&v10[16 * v105 + 32];
        v8 = *&v10[16 * v67 + 40];
        sub_1D5E18278(v6 + v106, (v106 + *&v10[16 * v67 + 32]), &v8[v106], __dstb);
        if (v5)
        {
        }

        if (v8 < v6)
        {
          goto LABEL_211;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D62FF50C(v10);
        }

        if (v105 >= *(v10 + 2))
        {
          goto LABEL_212;
        }

        v109 = &v10[16 * v105];
        *(v109 + 4) = v6;
        *(v109 + 5) = v8;
        v128 = v10;
        result = sub_1D62FF480(v67);
        v10 = v128;
        v65 = *(v128 + 2);
        v8 = v107;
        v6 = v108;
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v10[16 * v65 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_213;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_214;
      }

      v79 = &v10[16 * v65];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_216;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_219;
      }

      if (v83 >= v75)
      {
        v101 = &v10[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_223;
        }

        if (v70 < v104)
        {
          v67 = v65 - 2;
        }

        goto LABEL_188;
      }

      goto LABEL_167;
    }

LABEL_3:
    v7 = v6[1];
    v9 = 0xEC000000646E6962;
    if (v8 >= v7)
    {
      goto LABEL_198;
    }
  }

  v31 = (v11 + a4);
  if (__OFADD__(v11, a4))
  {
    goto LABEL_229;
  }

  if (v31 >= v30)
  {
    v31 = v6[1];
  }

  if (v31 < v11)
  {
LABEL_230:
    __break(1u);
    goto LABEL_231;
  }

  if (v8 == v31)
  {
    goto LABEL_147;
  }

  v116 = v5;
  v32 = v11;
  v33 = *v6;
  v34 = &v8[*v6];
  v35 = v32 - v8;
  v122 = v31;
LABEL_73:
  __dsta = v8;
  v36 = v8[v33];
  v37 = v35;
  v38 = v34;
  while (1)
  {
    if (v36 > 3u)
    {
      if (v36 > 5u)
      {
        if (v36 == 6)
        {
          v44 = 0xE800000000000000;
          v43 = 0x73676E69646E6962;
        }

        else
        {
          v44 = 0xE300000000000000;
          v43 = 7105633;
        }
      }

      else
      {
        if (v36 == 4)
        {
          v43 = 0x6574616C706D6574;
        }

        else
        {
          v43 = 0x747865746E6F63;
        }

        if (v36 == 4)
        {
          v44 = 0xE800000000000000;
        }

        else
        {
          v44 = 0xE700000000000000;
        }
      }
    }

    else
    {
      if (v36 == 2)
      {
        v39 = 0x40736E6F6974706FLL;
      }

      else
      {
        v39 = 0x726F73727563;
      }

      if (v36 == 2)
      {
        v40 = 0xEE0074756F79616CLL;
      }

      else
      {
        v40 = 0xE600000000000000;
      }

      if (v36)
      {
        v41 = 0x40736E6F6974706FLL;
      }

      else
      {
        v41 = 0x736E6F6974706FLL;
      }

      if (v36)
      {
        v42 = 0xEC000000646E6962;
      }

      else
      {
        v42 = 0xE700000000000000;
      }

      if (v36 <= 1u)
      {
        v43 = v41;
      }

      else
      {
        v43 = v39;
      }

      if (v36 <= 1u)
      {
        v44 = v42;
      }

      else
      {
        v44 = v40;
      }
    }

    v45 = *(v38 - 1);
    v46 = 0x73676E69646E6962;
    if (v45 != 6)
    {
      v46 = 7105633;
    }

    v47 = 0xE300000000000000;
    if (v45 == 6)
    {
      v47 = 0xE800000000000000;
    }

    v48 = 0x6574616C706D6574;
    if (v45 == 4)
    {
      v49 = 0xE800000000000000;
    }

    else
    {
      v48 = 0x747865746E6F63;
      v49 = 0xE700000000000000;
    }

    if (*(v38 - 1) <= 5u)
    {
      v46 = v48;
      v47 = v49;
    }

    if (v45 == 2)
    {
      v50 = 0x40736E6F6974706FLL;
    }

    else
    {
      v50 = 0x726F73727563;
    }

    if (v45 == 2)
    {
      v51 = 0xEE0074756F79616CLL;
    }

    else
    {
      v51 = 0xE600000000000000;
    }

    if (*(v38 - 1))
    {
      v52 = 0x40736E6F6974706FLL;
    }

    else
    {
      v52 = 0x736E6F6974706FLL;
    }

    if (*(v38 - 1))
    {
      v53 = 0xEC000000646E6962;
    }

    else
    {
      v53 = 0xE700000000000000;
    }

    if (*(v38 - 1) <= 1u)
    {
      v50 = v52;
      v51 = v53;
    }

    if (*(v38 - 1) <= 3u)
    {
      v54 = v50;
    }

    else
    {
      v54 = v46;
    }

    if (*(v38 - 1) <= 3u)
    {
      v55 = v51;
    }

    else
    {
      v55 = v47;
    }

    if (v43 == v54 && v44 == v55)
    {

LABEL_72:
      v8 = __dsta + 1;
      ++v34;
      --v35;
      if (__dsta + 1 == v122)
      {
        v8 = v122;
        v5 = v116;
        v6 = a3;
        v11 = v120;
        goto LABEL_147;
      }

      goto LABEL_73;
    }

    v56 = sub_1D72646CC();

    if ((v56 & 1) == 0)
    {
      goto LABEL_72;
    }

    if (!v33)
    {
      break;
    }

    v36 = *v38;
    *v38 = *(v38 - 1);
    *--v38 = v36;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_72;
    }
  }

  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
  return result;
}

uint64_t sub_1D5E13DEC(_BYTE *__dst, _BYTE *__src, unint64_t a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
LABEL_32:
      v17 = v6 - 1;
      --v5;
      do
      {
        if (*(v10 - 1))
        {
          v18 = 0x646165687473616DLL;
        }

        else
        {
          v18 = 0x6465727574616566;
        }

        if (*v17)
        {
          v19 = 0x646165687473616DLL;
        }

        else
        {
          v19 = 0x6465727574616566;
        }

        if (v18 == v19)
        {
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v20 = sub_1D72646CC();
          swift_bridgeObjectRelease_n();
          if (v20)
          {
            if (v5 + 1 < v6 || v5 >= v6)
            {
              *v5 = *v17;
            }

            if (v10 <= v4 || (--v6, v17 <= v7))
            {
              v6 = v17;
              goto LABEL_54;
            }

            goto LABEL_32;
          }
        }

        v21 = (v10 - 1);
        if ((v5 + 1) < v10 || v5 >= v10)
        {
          *v5 = *v21;
        }

        --v5;
        --v10;
      }

      while (v21 > v4);
      v10 = v21;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        if (*v6)
        {
          v11 = 0x646165687473616DLL;
        }

        else
        {
          v11 = 0x6465727574616566;
        }

        if (*v4)
        {
          v12 = 0x646165687473616DLL;
        }

        else
        {
          v12 = 0x6465727574616566;
        }

        if (v11 == v12)
        {
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v13 = sub_1D72646CC();
          swift_bridgeObjectRelease_n();
          if (v13)
          {
            v14 = v6 + 1;
            v15 = v6;
            if (v7 >= v6 && v7 < v14)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }
        }

        v16 = v4 + 1;
        v15 = v4;
        v14 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v16)
          {
            goto LABEL_24;
          }
        }

LABEL_23:
        *v7 = *v15;
LABEL_24:
        ++v7;
        if (v4 < v10)
        {
          v6 = v14;
          if (v14 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
  }

LABEL_54:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_1D5E140B4(uint64_t *__dst, uint64_t *__src, uint64_t *a3, uint64_t *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 4;
  v10 = a3 - __src;
  v11 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 4;
  if (v9 >= v11 >> 4)
  {
    if (a4 != __src || &__src[2 * v12] <= a4)
    {
      v28 = a4;
      memmove(a4, __src, 16 * v12);
      a4 = v28;
    }

    v49 = &a4[2 * v12];
    v13 = a4;
    if (v10 < 16 || v5 <= v6)
    {
      goto LABEL_169;
    }

    v44 = a4;
    v46 = v6;
LABEL_91:
    v43 = v5 - 2;
    v4 -= 2;
    v29 = v49;
    v48 = v5;
    while (1)
    {
      v30 = *(v29 - 2);
      v31 = *(v29 - 1);
      v29 -= 16;
      v32 = *(v5 - 2);
      v33 = *(v5 - 1);
      v34 = 0xE700000000000000;
      v35 = 0x656C6369747261;
      switch(v31)
      {
        case 0uLL:
          goto LABEL_124;
        case 1uLL:
          v34 = 0xE500000000000000;
          v36 = 1970500457;
          goto LABEL_114;
        case 2uLL:
          v34 = 0xE800000000000000;
          v35 = 0x6465626D45626577;
          if (v33 > 0xF)
          {
            goto LABEL_115;
          }

          goto LABEL_124;
        case 3uLL:
          v34 = 0xEA00000000006B63;
          v35 = 0x6172546F69647561;
          if (v33 > 0xF)
          {
            goto LABEL_115;
          }

          goto LABEL_124;
        case 4uLL:
          v34 = 0xE300000000000000;
          v35 = 6775156;
          if (v33 > 0xF)
          {
            goto LABEL_115;
          }

          goto LABEL_124;
        case 5uLL:
          v34 = 0xE500000000000000;
          v36 = 1919902579;
LABEL_114:
          v35 = v36 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
          if (v33 > 0xF)
          {
            goto LABEL_115;
          }

          goto LABEL_124;
        case 6uLL:
          v34 = 0xE800000000000000;
          v35 = 0x676E69646E617473;
          if (v33 > 0xF)
          {
            goto LABEL_115;
          }

          goto LABEL_124;
        case 7uLL:
          v35 = 0x74656B63617262;
          if (v33 > 0xF)
          {
            goto LABEL_115;
          }

          goto LABEL_124;
        case 8uLL:
          v34 = 0xE800000000000000;
          v35 = 0x65726F6353786F62;
          goto LABEL_124;
        case 9uLL:
          v35 = 0x726F6353656E696CLL;
          v34 = 0xE900000000000065;
          if (v33 > 0xF)
          {
            goto LABEL_115;
          }

          goto LABEL_124;
        case 0xAuLL:
          v35 = 0x65527972756A6E69;
          v34 = 0xEC00000074726F70;
          if (v33 > 0xF)
          {
            goto LABEL_115;
          }

          goto LABEL_124;
        case 0xBuLL:
          v34 = 0xE900000000000072;
          v35 = 0x6579616C5079656BLL;
          if (v33 > 0xF)
          {
            goto LABEL_115;
          }

          goto LABEL_124;
        case 0xCuLL:
          v34 = 0xE600000000000000;
          v35 = 0x656C7A7A7570;
          if (v33 > 0xF)
          {
            goto LABEL_115;
          }

          goto LABEL_124;
        case 0xDuLL:
          v35 = 0x7954656C7A7A7570;
          v34 = 0xEA00000000006570;
          if (v33 > 0xF)
          {
            goto LABEL_115;
          }

          goto LABEL_124;
        case 0xEuLL:
          v35 = 0x7453656C7A7A7570;
          v34 = 0xEF63697473697461;
          if (v33 > 0xF)
          {
            goto LABEL_115;
          }

          goto LABEL_124;
        case 0xFuLL:
          v34 = 0xE600000000000000;
          v35 = 0x657069636572;
          if (v33 > 0xF)
          {
            goto LABEL_115;
          }

          goto LABEL_124;
        default:
          v35 = v30;
          v34 = v31;
          if (v33 <= 0xF)
          {
LABEL_124:
            v37 = 0xE700000000000000;
            v38 = 0x656C6369747261;
            switch(v33)
            {
              case 0uLL:
                goto LABEL_154;
              case 1uLL:
                v37 = 0xE500000000000000;
                v39 = 1970500457;
                goto LABEL_145;
              case 2uLL:
                v37 = 0xE800000000000000;
                if (v35 != 0x6465626D45626577)
                {
                  goto LABEL_157;
                }

                goto LABEL_155;
              case 3uLL:
                v37 = 0xEA00000000006B63;
                if (v35 != 0x6172546F69647561)
                {
                  goto LABEL_157;
                }

                goto LABEL_155;
              case 4uLL:
                v37 = 0xE300000000000000;
                if (v35 != 6775156)
                {
                  goto LABEL_157;
                }

                goto LABEL_155;
              case 5uLL:
                v37 = 0xE500000000000000;
                v39 = 1919902579;
LABEL_145:
                if (v35 != (v39 & 0xFFFF0000FFFFFFFFLL | 0x6500000000))
                {
                  goto LABEL_157;
                }

                goto LABEL_155;
              case 6uLL:
                v37 = 0xE800000000000000;
                if (v35 != 0x676E69646E617473)
                {
                  goto LABEL_157;
                }

                goto LABEL_155;
              case 7uLL:
                if (v35 != 0x74656B63617262)
                {
                  goto LABEL_157;
                }

                goto LABEL_155;
              case 8uLL:
                v37 = 0xE800000000000000;
                v38 = 0x65726F6353786F62;
LABEL_154:
                if (v35 == v38)
                {
                  goto LABEL_155;
                }

                goto LABEL_157;
              case 9uLL:
                v37 = 0xE900000000000065;
                if (v35 != 0x726F6353656E696CLL)
                {
                  goto LABEL_157;
                }

                goto LABEL_155;
              case 0xAuLL:
                v37 = 0xEC00000074726F70;
                if (v35 != 0x65527972756A6E69)
                {
                  goto LABEL_157;
                }

                goto LABEL_155;
              case 0xBuLL:
                v37 = 0xE900000000000072;
                if (v35 != 0x6579616C5079656BLL)
                {
                  goto LABEL_157;
                }

                goto LABEL_155;
              case 0xCuLL:
                v37 = 0xE600000000000000;
                if (v35 != 0x656C7A7A7570)
                {
                  goto LABEL_157;
                }

                goto LABEL_155;
              case 0xDuLL:
                v37 = 0xEA00000000006570;
                if (v35 != 0x7954656C7A7A7570)
                {
                  goto LABEL_157;
                }

                goto LABEL_155;
              case 0xEuLL:
                v37 = 0xEF63697473697461;
                if (v35 != 0x7453656C7A7A7570)
                {
                  goto LABEL_157;
                }

                goto LABEL_155;
              case 0xFuLL:
                v37 = 0xE600000000000000;
                if (v35 != 0x657069636572)
                {
                  goto LABEL_157;
                }

                goto LABEL_155;
              default:
                break;
            }
          }

LABEL_115:
          v37 = v33;
          if (v35 != v32)
          {
            goto LABEL_157;
          }

LABEL_155:
          if (v34 == v37)
          {
            v40 = 0;
          }

          else
          {
LABEL_157:
            v40 = sub_1D72646CC();
          }

          sub_1D5CBA110(v32, v33);
          sub_1D5CBA110(v30, v31);
          sub_1D5CBA110(v30, v31);
          sub_1D5CBA110(v32, v33);

          sub_1D5CBA0FC(v32, v33);
          sub_1D5CBA0FC(v30, v31);
          v41 = (v4 + 2);
          if (v40)
          {
            v5 = v43;
            if (v41 != v48)
            {
              *v4 = *v43;
            }

            v13 = v44;
            if (v49 <= v44 || v43 <= v46)
            {
              goto LABEL_169;
            }

            goto LABEL_91;
          }

          v5 = v48;
          if (v41 != v49)
          {
            *v4 = *v29;
          }

          v4 -= 2;
          v49 = v29;
          if (v29 <= v44)
          {
            v49 = v29;
            v13 = v44;
            goto LABEL_169;
          }

          break;
      }
    }
  }

  v13 = a4;
  if (a4 != __dst || &__dst[2 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v49 = &v13[2 * v9];
  if (v7 >= 16)
  {
    while (v5 < v4)
    {
      v45 = v6;
      v47 = v5;
      v16 = *v5;
      v17 = v5[1];
      v19 = *v13;
      v18 = v13[1];
      v20 = 0xE700000000000000;
      v21 = 0x656C6369747261;
      switch(v17)
      {
        case 0uLL:
          goto LABEL_46;
        case 1uLL:
          v20 = 0xE500000000000000;
          v22 = 1970500457;
          goto LABEL_36;
        case 2uLL:
          v20 = 0xE800000000000000;
          v21 = 0x6465626D45626577;
          if (v18 > 0xF)
          {
            goto LABEL_37;
          }

          goto LABEL_46;
        case 3uLL:
          v20 = 0xEA00000000006B63;
          v21 = 0x6172546F69647561;
          if (v18 > 0xF)
          {
            goto LABEL_37;
          }

          goto LABEL_46;
        case 4uLL:
          v20 = 0xE300000000000000;
          v21 = 6775156;
          if (v18 > 0xF)
          {
            goto LABEL_37;
          }

          goto LABEL_46;
        case 5uLL:
          v20 = 0xE500000000000000;
          v22 = 1919902579;
LABEL_36:
          v21 = v22 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
          if (v18 > 0xF)
          {
            goto LABEL_37;
          }

          goto LABEL_46;
        case 6uLL:
          v20 = 0xE800000000000000;
          v21 = 0x676E69646E617473;
          if (v18 > 0xF)
          {
            goto LABEL_37;
          }

          goto LABEL_46;
        case 7uLL:
          v21 = 0x74656B63617262;
          if (v18 > 0xF)
          {
            goto LABEL_37;
          }

          goto LABEL_46;
        case 8uLL:
          v20 = 0xE800000000000000;
          v21 = 0x65726F6353786F62;
          goto LABEL_46;
        case 9uLL:
          v21 = 0x726F6353656E696CLL;
          v20 = 0xE900000000000065;
          if (v18 > 0xF)
          {
            goto LABEL_37;
          }

          goto LABEL_46;
        case 0xAuLL:
          v21 = 0x65527972756A6E69;
          v20 = 0xEC00000074726F70;
          if (v18 > 0xF)
          {
            goto LABEL_37;
          }

          goto LABEL_46;
        case 0xBuLL:
          v20 = 0xE900000000000072;
          v21 = 0x6579616C5079656BLL;
          if (v18 > 0xF)
          {
            goto LABEL_37;
          }

          goto LABEL_46;
        case 0xCuLL:
          v20 = 0xE600000000000000;
          v21 = 0x656C7A7A7570;
          if (v18 > 0xF)
          {
            goto LABEL_37;
          }

          goto LABEL_46;
        case 0xDuLL:
          v21 = 0x7954656C7A7A7570;
          v20 = 0xEA00000000006570;
          if (v18 > 0xF)
          {
            goto LABEL_37;
          }

          goto LABEL_46;
        case 0xEuLL:
          v21 = 0x7453656C7A7A7570;
          v20 = 0xEF63697473697461;
          if (v18 > 0xF)
          {
            goto LABEL_37;
          }

          goto LABEL_46;
        case 0xFuLL:
          v20 = 0xE600000000000000;
          v21 = 0x657069636572;
          if (v18 > 0xF)
          {
            goto LABEL_37;
          }

          goto LABEL_46;
        default:
          v21 = v16;
          v20 = v17;
          if (v18 <= 0xF)
          {
LABEL_46:
            v23 = 0xE700000000000000;
            v24 = 0x656C6369747261;
            switch(v18)
            {
              case 0uLL:
                goto LABEL_76;
              case 1uLL:
                v23 = 0xE500000000000000;
                v25 = 1970500457;
                goto LABEL_67;
              case 2uLL:
                v23 = 0xE800000000000000;
                if (v21 != 0x6465626D45626577)
                {
                  goto LABEL_79;
                }

                goto LABEL_77;
              case 3uLL:
                v23 = 0xEA00000000006B63;
                if (v21 != 0x6172546F69647561)
                {
                  goto LABEL_79;
                }

                goto LABEL_77;
              case 4uLL:
                v23 = 0xE300000000000000;
                if (v21 != 6775156)
                {
                  goto LABEL_79;
                }

                goto LABEL_77;
              case 5uLL:
                v23 = 0xE500000000000000;
                v25 = 1919902579;
LABEL_67:
                if (v21 != (v25 & 0xFFFF0000FFFFFFFFLL | 0x6500000000))
                {
                  goto LABEL_79;
                }

                goto LABEL_77;
              case 6uLL:
                v23 = 0xE800000000000000;
                if (v21 != 0x676E69646E617473)
                {
                  goto LABEL_79;
                }

                goto LABEL_77;
              case 7uLL:
                if (v21 != 0x74656B63617262)
                {
                  goto LABEL_79;
                }

                goto LABEL_77;
              case 8uLL:
                v23 = 0xE800000000000000;
                v24 = 0x65726F6353786F62;
LABEL_76:
                if (v21 == v24)
                {
                  goto LABEL_77;
                }

                goto LABEL_79;
              case 9uLL:
                v23 = 0xE900000000000065;
                if (v21 != 0x726F6353656E696CLL)
                {
                  goto LABEL_79;
                }

                goto LABEL_77;
              case 0xAuLL:
                v23 = 0xEC00000074726F70;
                if (v21 != 0x65527972756A6E69)
                {
                  goto LABEL_79;
                }

                goto LABEL_77;
              case 0xBuLL:
                v23 = 0xE900000000000072;
                if (v21 != 0x6579616C5079656BLL)
                {
                  goto LABEL_79;
                }

                goto LABEL_77;
              case 0xCuLL:
                v23 = 0xE600000000000000;
                if (v21 != 0x656C7A7A7570)
                {
                  goto LABEL_79;
                }

                goto LABEL_77;
              case 0xDuLL:
                v23 = 0xEA00000000006570;
                if (v21 != 0x7954656C7A7A7570)
                {
                  goto LABEL_79;
                }

                goto LABEL_77;
              case 0xEuLL:
                v23 = 0xEF63697473697461;
                if (v21 != 0x7453656C7A7A7570)
                {
                  goto LABEL_79;
                }

                goto LABEL_77;
              case 0xFuLL:
                v23 = 0xE600000000000000;
                if (v21 != 0x657069636572)
                {
                  goto LABEL_79;
                }

                goto LABEL_77;
              default:
                break;
            }
          }

LABEL_37:
          v23 = v13[1];
          if (v21 != v19)
          {
            goto LABEL_79;
          }

LABEL_77:
          if (v20 == v23)
          {
            sub_1D5CBA110(*v13, v13[1]);
            sub_1D5CBA110(v16, v17);
            sub_1D5CBA110(v16, v17);
            sub_1D5CBA110(v19, v18);

            sub_1D5CBA0FC(v19, v18);
            sub_1D5CBA0FC(v16, v17);
          }

          else
          {
LABEL_79:
            v26 = sub_1D72646CC();
            sub_1D5CBA110(v19, v18);
            sub_1D5CBA110(v16, v17);
            sub_1D5CBA110(v16, v17);
            sub_1D5CBA110(v19, v18);

            sub_1D5CBA0FC(v19, v18);
            sub_1D5CBA0FC(v16, v17);
            if (v26)
            {
              v14 = v45;
              v15 = v47;
              v5 = v47 + 2;
              if (v45 == v47)
              {
                goto LABEL_13;
              }

LABEL_12:
              *v14 = *v15;
              goto LABEL_13;
            }
          }

          v15 = v13;
          v14 = v45;
          v5 = v47;
          v27 = v45 == v13;
          v13 += 2;
          if (!v27)
          {
            goto LABEL_12;
          }

LABEL_13:
          v6 = v14 + 2;
          if (v13 >= v49)
          {
            goto LABEL_10;
          }

          break;
      }
    }
  }

LABEL_10:
  v5 = v6;
LABEL_169:
  if (v5 != v13 || v5 >= (v13 + ((v49 - v13 + (v49 - v13 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v5, v13, 16 * ((v49 - v13) / 16));
  }

  return 1;
}

uint64_t sub_1D5E14D04(unsigned __int8 *__src, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src >= (a3 - a2))
  {
    if (__dst != a2 || __dst >= a3)
    {
      memmove(__dst, a2, a3 - a2);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      v46 = v4;
LABEL_62:
      v47 = v6;
      v28 = v6 - 1;
      --v5;
      v29 = v10;
      do
      {
        v31 = *--v29;
        v30 = v31;
        v32 = v10;
        if (v31 <= 2)
        {
          if (v30)
          {
            v33 = 0xE700000000000000;
            if (v30 == 1)
            {
              v34 = 0x72656874616577;
            }

            else
            {
              v34 = 0x6C6C6177796170;
            }
          }

          else
          {
            v33 = 0xE300000000000000;
            v34 = 6775156;
          }
        }

        else if (v30 > 4)
        {
          if (v30 == 5)
          {
            v33 = 0xE800000000000000;
            v34 = 0x6465626D45626577;
          }

          else
          {
            v33 = 0xE400000000000000;
            v34 = 1684366694;
          }
        }

        else if (v30 == 3)
        {
          v33 = 0xE800000000000000;
          v34 = 0x656E696C64616568;
        }

        else
        {
          v33 = 0xE500000000000000;
          v34 = 0x6575737369;
        }

        v6 = v28;
        v35 = *v28;
        v36 = 0x6465626D45626577;
        if (v35 != 5)
        {
          v36 = 1684366694;
        }

        v37 = 0xE400000000000000;
        if (v35 == 5)
        {
          v37 = 0xE800000000000000;
        }

        v38 = 0x656E696C64616568;
        if (v35 != 3)
        {
          v38 = 0x6575737369;
        }

        v39 = 0xE500000000000000;
        if (v35 == 3)
        {
          v39 = 0xE800000000000000;
        }

        if (v35 <= 4)
        {
          v36 = v38;
          v37 = v39;
        }

        v40 = 0x72656874616577;
        if (v35 != 1)
        {
          v40 = 0x6C6C6177796170;
        }

        v41 = 0xE700000000000000;
        if (!v35)
        {
          v40 = 6775156;
          v41 = 0xE300000000000000;
        }

        if (v35 <= 2)
        {
          v42 = v40;
        }

        else
        {
          v42 = v36;
        }

        if (v35 <= 2)
        {
          v43 = v41;
        }

        else
        {
          v43 = v37;
        }

        if (v34 == v42 && v33 == v43)
        {
        }

        else
        {
          v44 = sub_1D72646CC();

          if (v44)
          {
            v10 = v32;
            if ((v5 + 1) < v47 || v5 >= v47)
            {
              *v5 = *v6;
            }

            v4 = v46;
            if (v10 > v46 && v6 > v7)
            {
              goto LABEL_62;
            }

            if (v6 == v46)
            {
              goto LABEL_119;
            }

            goto LABEL_120;
          }
        }

        v28 = v6;
        if ((v5 + 1) < v32 || v5 >= v32)
        {
          *v5 = *v29;
        }

        --v5;
        v10 = v29;
        v4 = v46;
        v6 = v47;
      }

      while (v29 > v46);
      v10 = v29;
LABEL_113:
      if (v6 == v4)
      {
        goto LABEL_119;
      }

      goto LABEL_120;
    }
  }

  else
  {
    if (__dst != __src || __dst >= a2)
    {
      memmove(__dst, __src, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1)
    {
      if (v6 < v5)
      {
        v11 = &v4[v8];
        while (1)
        {
          v12 = *v6;
          if (v12 <= 2)
          {
            if (*v6)
            {
              v13 = 0xE700000000000000;
              if (v12 == 1)
              {
                v14 = 0x72656874616577;
              }

              else
              {
                v14 = 0x6C6C6177796170;
              }
            }

            else
            {
              v13 = 0xE300000000000000;
              v14 = 6775156;
            }
          }

          else if (*v6 > 4u)
          {
            if (v12 == 5)
            {
              v13 = 0xE800000000000000;
              v14 = 0x6465626D45626577;
            }

            else
            {
              v13 = 0xE400000000000000;
              v14 = 1684366694;
            }
          }

          else if (v12 == 3)
          {
            v13 = 0xE800000000000000;
            v14 = 0x656E696C64616568;
          }

          else
          {
            v13 = 0xE500000000000000;
            v14 = 0x6575737369;
          }

          v15 = *v4;
          v16 = 0x6465626D45626577;
          if (v15 != 5)
          {
            v16 = 1684366694;
          }

          v17 = 0xE400000000000000;
          if (v15 == 5)
          {
            v17 = 0xE800000000000000;
          }

          v18 = 0x656E696C64616568;
          if (v15 != 3)
          {
            v18 = 0x6575737369;
          }

          v19 = 0xE500000000000000;
          if (v15 == 3)
          {
            v19 = 0xE800000000000000;
          }

          if (*v4 <= 4u)
          {
            v16 = v18;
            v17 = v19;
          }

          v20 = 0x72656874616577;
          if (v15 != 1)
          {
            v20 = 0x6C6C6177796170;
          }

          v21 = 0xE700000000000000;
          if (!*v4)
          {
            v20 = 6775156;
            v21 = 0xE300000000000000;
          }

          if (*v4 <= 2u)
          {
            v22 = v20;
          }

          else
          {
            v22 = v16;
          }

          if (*v4 <= 2u)
          {
            v23 = v21;
          }

          else
          {
            v23 = v17;
          }

          if (v14 == v22 && v13 == v23)
          {
          }

          else
          {
            v24 = sub_1D72646CC();

            if (v24)
            {
              v25 = v6 + 1;
              v26 = v6;
              if (v7 >= v6 && v7 < v25)
              {
                goto LABEL_53;
              }

              goto LABEL_52;
            }
          }

          v27 = v4 + 1;
          v26 = v4;
          v25 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v27)
            {
              goto LABEL_53;
            }
          }

LABEL_52:
          *v7 = *v26;
LABEL_53:
          ++v7;
          v10 = v11;
          if (v4 < v11)
          {
            v6 = v25;
            if (v25 < v5)
            {
              continue;
            }
          }

          v6 = v7;
          goto LABEL_113;
        }
      }

      v6 = v7;
      if (v7 != v4)
      {
        goto LABEL_120;
      }

      goto LABEL_119;
    }

    v6 = v7;
  }

  if (v6 != v4)
  {
LABEL_120:
    memmove(v6, v4, v10 - v4);
    return 1;
  }

LABEL_119:
  if (v6 >= v10)
  {
    goto LABEL_120;
  }

  return 1;
}

uint64_t sub_1D5E152D0(_BYTE *__src, _BYTE *a2, unint64_t a3, _BYTE *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src >= (a3 - a2))
  {
    if (__dst != a2 || __dst >= a3)
    {
      memmove(__dst, a2, a3 - a2);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      v26 = 0x64656C6261736964;
      v43 = v7;
LABEL_51:
      v44 = v6;
      v27 = v6 - 1;
      --v5;
      v28 = v10;
      do
      {
        v30 = *--v28;
        v29 = v30;
        v31 = v10;
        if (v30 > 1)
        {
          if (v29 == 2)
          {
            v32 = 0x6867696C68676968;
            v33 = 0xEB00000000646574;
          }

          else
          {
            v33 = 0xE800000000000000;
            v32 = 0x64657463656C6573;
          }
        }

        else
        {
          if (v29)
          {
            v32 = 0x64657375636F66;
          }

          else
          {
            v32 = 0x64656C6261736964;
          }

          if (v29)
          {
            v33 = 0xE700000000000000;
          }

          else
          {
            v33 = 0xE800000000000000;
          }
        }

        v34 = *v27;
        v35 = 0x6867696C68676968;
        if (v34 != 2)
        {
          v35 = 0x64657463656C6573;
        }

        v36 = 0xEB00000000646574;
        if (v34 != 2)
        {
          v36 = 0xE800000000000000;
        }

        if (*v27)
        {
          v26 = 0x64657375636F66;
          v37 = 0xE700000000000000;
        }

        else
        {
          v37 = 0xE800000000000000;
        }

        if (*v27 <= 1u)
        {
          v38 = v26;
        }

        else
        {
          v38 = v35;
        }

        if (*v27 <= 1u)
        {
          v39 = v37;
        }

        else
        {
          v39 = v36;
        }

        v40 = v27;
        if (v32 == v38 && v33 == v39)
        {
        }

        else
        {
          v41 = sub_1D72646CC();

          if (v41)
          {
            v10 = v31;
            if ((v5 + 1) < v44 || v5 >= v44)
            {
              *v5 = *v40;
            }

            if (v31 > v4)
            {
              v6 = v40;
              v26 = 0x64656C6261736964;
              if (v40 > v43)
              {
                goto LABEL_51;
              }
            }

            v6 = v40;
            if (v40 == v4)
            {
              goto LABEL_98;
            }

            goto LABEL_99;
          }
        }

        v27 = v40;
        if ((v5 + 1) < v31 || v5 >= v31)
        {
          *v5 = *v28;
        }

        --v5;
        v10 = v28;
        v6 = v44;
        v26 = 0x64656C6261736964;
      }

      while (v28 > v4);
      v10 = v28;
LABEL_92:
      if (v6 == v4)
      {
        goto LABEL_98;
      }

      goto LABEL_99;
    }
  }

  else
  {
    if (__dst != __src || __dst >= a2)
    {
      memmove(__dst, __src, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1)
    {
      if (v6 < v5)
      {
        v11 = &v4[v8];
        while (1)
        {
          if (*v6 > 1u)
          {
            if (*v6 == 2)
            {
              v14 = 0x6867696C68676968;
              v12 = 0xEB00000000646574;
              goto LABEL_16;
            }

            v12 = 0xE800000000000000;
            v13 = 0x7463656C6573;
          }

          else
          {
            if (*v6)
            {
              v12 = 0xE700000000000000;
              v14 = 0x64657375636F66;
              goto LABEL_16;
            }

            v12 = 0xE800000000000000;
            v13 = 0x6C6261736964;
          }

          v14 = v13 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
LABEL_16:
          v15 = *v4;
          v16 = 0x6867696C68676968;
          if (v15 != 2)
          {
            v16 = 0x64657463656C6573;
          }

          v17 = 0xEB00000000646574;
          if (v15 != 2)
          {
            v17 = 0xE800000000000000;
          }

          v18 = 0x64656C6261736964;
          if (*v4)
          {
            v18 = 0x64657375636F66;
          }

          v19 = 0xE700000000000000;
          if (!*v4)
          {
            v19 = 0xE800000000000000;
          }

          if (*v4 <= 1u)
          {
            v20 = v18;
          }

          else
          {
            v20 = v16;
          }

          if (*v4 <= 1u)
          {
            v21 = v19;
          }

          else
          {
            v21 = v17;
          }

          if (v14 == v20 && v12 == v21)
          {
          }

          else
          {
            v22 = sub_1D72646CC();

            if (v22)
            {
              v23 = v6 + 1;
              v24 = v6;
              if (v7 >= v6 && v7 < v23)
              {
                goto LABEL_42;
              }

              goto LABEL_41;
            }
          }

          v25 = v4 + 1;
          v24 = v4;
          v23 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v25)
            {
              goto LABEL_42;
            }
          }

LABEL_41:
          *v7 = *v24;
LABEL_42:
          ++v7;
          v10 = v11;
          if (v4 < v11)
          {
            v6 = v23;
            if (v23 < v5)
            {
              continue;
            }
          }

          v6 = v7;
          goto LABEL_92;
        }
      }

      v6 = v7;
      if (v7 != v4)
      {
        goto LABEL_99;
      }

      goto LABEL_98;
    }

    v6 = v7;
  }

  if (v6 != v4)
  {
LABEL_99:
    memmove(v6, v4, v10 - v4);
    return 1;
  }

LABEL_98:
  if (v6 >= v10)
  {
    goto LABEL_99;
  }

  return 1;
}

uint64_t sub_1D5E157C0(char *__src, unsigned __int8 *a2, unint64_t a3, char *__dst)
{
  __srca = __dst;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a3 - a2;
  if (a2 - __src < (a3 - a2))
  {
    v105 = a3;
    if (__dst != __src || __dst >= a2)
    {
      memmove(__dst, __src, v6);
    }

    v9 = &__dst[v6];
    if (v6 < 1 || a2 >= v105)
    {
      v54 = v5;
      goto LABEL_323;
    }

    v103 = &__dst[v6];
    v10 = __srca;
    v11 = a2;
    while (1)
    {
      v99 = v5;
      __dsta = v11;
      v12 = 0;
      v13 = *v11;
      __srcb = v10;
      v14 = *v10;
      while (1)
      {
        v15 = byte_1F50F2678[v12 + 32];
        if (v15 <= 4)
        {
          v18 = 0x656E6F7074736F70;
          if (v15 == 3)
          {
            v18 = 0x6B61657262;
            v19 = 0xE500000000000000;
          }

          else
          {
            v19 = 0xE900000000000064;
          }

          if (v15 == 2)
          {
            v18 = 0x6572676F72506E69;
            v19 = 0xEA00000000007373;
          }

          v20 = 0x6576694C7261656ELL;
          if (!byte_1F50F2678[v12 + 32])
          {
            v20 = 0x656D6167657270;
          }

          v21 = 0xE800000000000000;
          if (!byte_1F50F2678[v12 + 32])
          {
            v21 = 0xE700000000000000;
          }

          if (byte_1F50F2678[v12 + 32] <= 1u)
          {
            v16 = v20;
          }

          else
          {
            v16 = v18;
          }

          if (byte_1F50F2678[v12 + 32] <= 1u)
          {
            v17 = v21;
          }

          else
          {
            v17 = v19;
          }
        }

        else if (byte_1F50F2678[v12 + 32] > 7u)
        {
          if (v15 == 8)
          {
            v17 = 0xE500000000000000;
            v16 = 0x6C616E6966;
          }

          else
          {
            v17 = 0xE700000000000000;
            if (v15 == 9)
            {
              v16 = 0x74696566726F66;
            }

            else
            {
              v16 = 0x6E776F6E6B6E75;
            }
          }
        }

        else if (v15 == 5)
        {
          v16 = 0x65646E6570737573;
          v17 = 0xE900000000000064;
        }

        else
        {
          if (v15 == 6)
          {
            v16 = 0x656C6C65636E6163;
          }

          else
          {
            v16 = 0x646579616C6564;
          }

          if (v15 == 6)
          {
            v17 = 0xE900000000000064;
          }

          else
          {
            v17 = 0xE700000000000000;
          }
        }

        if (v13 > 4)
        {
          v22 = 0x74696566726F66;
          if (v13 != 9)
          {
            v22 = 0x6E776F6E6B6E75;
          }

          v23 = 0xE700000000000000;
          if (v13 == 8)
          {
            v22 = 0x6C616E6966;
            v23 = 0xE500000000000000;
          }

          v24 = 0x656C6C65636E6163;
          if (v13 == 6)
          {
            v25 = 0xE900000000000064;
          }

          else
          {
            v24 = 0x646579616C6564;
            v25 = 0xE700000000000000;
          }

          if (v13 == 5)
          {
            v24 = 0x65646E6570737573;
            v25 = 0xE900000000000064;
          }

          if (v13 <= 7)
          {
            v26 = v24;
          }

          else
          {
            v26 = v22;
          }

          if (v13 <= 7)
          {
            v27 = v25;
          }

          else
          {
            v27 = v23;
          }

          if (v16 != v26)
          {
            goto LABEL_73;
          }

          goto LABEL_72;
        }

        if (v13 > 1)
        {
          v28 = 0x656E6F7074736F70;
          if (v13 == 3)
          {
            v28 = 0x6B61657262;
            v29 = 0xE500000000000000;
          }

          else
          {
            v29 = 0xE900000000000064;
          }

          if (v13 == 2)
          {
            v30 = 0x6572676F72506E69;
          }

          else
          {
            v30 = v28;
          }

          if (v13 == 2)
          {
            v27 = 0xEA00000000007373;
          }

          else
          {
            v27 = v29;
          }

          if (v16 != v30)
          {
            goto LABEL_73;
          }

          goto LABEL_72;
        }

        if (!v13)
        {
          break;
        }

        v27 = 0xE800000000000000;
        if (v16 == 0x6576694C7261656ELL)
        {
          goto LABEL_72;
        }

LABEL_73:
        v31 = sub_1D72646CC();

        if (v31)
        {
          goto LABEL_78;
        }

        if (++v12 == 11)
        {
          v12 = 0;
          goto LABEL_78;
        }
      }

      v27 = 0xE700000000000000;
      if (v16 != 0x656D6167657270)
      {
        goto LABEL_73;
      }

LABEL_72:
      if (v17 != v27)
      {
        goto LABEL_73;
      }

LABEL_78:
      v32 = 0;
      while (2)
      {
        v33 = byte_1F50F2678[v32 + 32];
        if (v33 <= 4)
        {
          v36 = 0x656E6F7074736F70;
          if (v33 == 3)
          {
            v36 = 0x6B61657262;
            v37 = 0xE500000000000000;
          }

          else
          {
            v37 = 0xE900000000000064;
          }

          if (v33 == 2)
          {
            v36 = 0x6572676F72506E69;
            v37 = 0xEA00000000007373;
          }

          v38 = 0x6576694C7261656ELL;
          if (!byte_1F50F2678[v32 + 32])
          {
            v38 = 0x656D6167657270;
          }

          v39 = 0xE800000000000000;
          if (!byte_1F50F2678[v32 + 32])
          {
            v39 = 0xE700000000000000;
          }

          if (byte_1F50F2678[v32 + 32] <= 1u)
          {
            v34 = v38;
          }

          else
          {
            v34 = v36;
          }

          if (byte_1F50F2678[v32 + 32] <= 1u)
          {
            v35 = v39;
          }

          else
          {
            v35 = v37;
          }
        }

        else if (byte_1F50F2678[v32 + 32] > 7u)
        {
          if (v33 == 8)
          {
            v35 = 0xE500000000000000;
            v34 = 0x6C616E6966;
          }

          else
          {
            v35 = 0xE700000000000000;
            if (v33 == 9)
            {
              v34 = 0x74696566726F66;
            }

            else
            {
              v34 = 0x6E776F6E6B6E75;
            }
          }
        }

        else if (v33 == 5)
        {
          v34 = 0x65646E6570737573;
          v35 = 0xE900000000000064;
        }

        else
        {
          if (v33 == 6)
          {
            v34 = 0x656C6C65636E6163;
          }

          else
          {
            v34 = 0x646579616C6564;
          }

          if (v33 == 6)
          {
            v35 = 0xE900000000000064;
          }

          else
          {
            v35 = 0xE700000000000000;
          }
        }

        if (v14 <= 4)
        {
          if (v14 <= 1)
          {
            if (v14)
            {
              v45 = 0xE800000000000000;
              if (v34 != 0x6576694C7261656ELL)
              {
                goto LABEL_143;
              }
            }

            else
            {
              v45 = 0xE700000000000000;
              if (v34 != 0x656D6167657270)
              {
                goto LABEL_143;
              }
            }
          }

          else
          {
            v46 = 0x656E6F7074736F70;
            if (v14 == 3)
            {
              v46 = 0x6B61657262;
              v47 = 0xE500000000000000;
            }

            else
            {
              v47 = 0xE900000000000064;
            }

            if (v14 == 2)
            {
              v48 = 0x6572676F72506E69;
            }

            else
            {
              v48 = v46;
            }

            if (v14 == 2)
            {
              v45 = 0xEA00000000007373;
            }

            else
            {
              v45 = v47;
            }

            if (v34 != v48)
            {
              goto LABEL_143;
            }
          }
        }

        else
        {
          v40 = 0x74696566726F66;
          if (v14 != 9)
          {
            v40 = 0x6E776F6E6B6E75;
          }

          v41 = 0xE700000000000000;
          if (v14 == 8)
          {
            v40 = 0x6C616E6966;
            v41 = 0xE500000000000000;
          }

          v42 = 0x656C6C65636E6163;
          if (v14 == 6)
          {
            v43 = 0xE900000000000064;
          }

          else
          {
            v42 = 0x646579616C6564;
            v43 = 0xE700000000000000;
          }

          if (v14 == 5)
          {
            v42 = 0x65646E6570737573;
            v43 = 0xE900000000000064;
          }

          if (v14 <= 7)
          {
            v44 = v42;
          }

          else
          {
            v44 = v40;
          }

          if (v14 <= 7)
          {
            v45 = v43;
          }

          else
          {
            v45 = v41;
          }

          if (v34 != v44)
          {
LABEL_143:
            v49 = sub_1D72646CC();

            if (v49)
            {
              goto LABEL_148;
            }

            if (++v32 == 11)
            {
              goto LABEL_152;
            }

            continue;
          }
        }

        break;
      }

      if (v35 != v45)
      {
        goto LABEL_143;
      }

LABEL_148:
      if (v12 >= v32)
      {
LABEL_152:
        v50 = __srcb;
        v51 = v99;
        if (v99 >= __srcb)
        {
          v52 = __dsta;
          v10 = __srcb + 1;
          v53 = v105;
          if (v99 < (__srcb + 1))
          {
            goto LABEL_159;
          }

          goto LABEL_158;
        }

        v52 = __dsta;
        v10 = __srcb + 1;
LABEL_157:
        v53 = v105;
        goto LABEL_158;
      }

      v51 = v99;
      v50 = __dsta;
      v52 = __dsta + 1;
      if (v99 < __dsta)
      {
        v10 = __srcb;
        goto LABEL_157;
      }

      v10 = __srcb;
      v53 = v105;
      if (v99 < v52)
      {
        goto LABEL_159;
      }

LABEL_158:
      *v51 = *v50;
LABEL_159:
      v5 = v51 + 1;
      if (v10 < v103)
      {
        v11 = v52;
        if (v52 < v53)
        {
          continue;
        }
      }

      __srca = v10;
      v54 = v5;
      v9 = v103;
      goto LABEL_323;
    }
  }

  v55 = a2;
  if (__dst != a2 || __dst >= a3)
  {
    v56 = a3;
    memmove(__dst, a2, a3 - a2);
    a3 = v56;
  }

  v9 = &__dst[v7];
  if (v7 < 1 || v55 <= v5)
  {
    v54 = v55;
    goto LABEL_323;
  }

  do
  {
    __dstb = v55;
    v57 = (v55 - 1);
    v97 = (v55 - 1);
LABEL_170:
    v58 = 0;
    v102 = a3;
    v104 = v9;
    v59 = *(v9 - 1);
    v98 = v9 - 1;
    v60 = *v57;
    while (1)
    {
      v61 = byte_1F50F2678[v58 + 32];
      if (v61 <= 4)
      {
        v64 = 0x656E6F7074736F70;
        if (v61 == 3)
        {
          v64 = 0x6B61657262;
          v65 = 0xE500000000000000;
        }

        else
        {
          v65 = 0xE900000000000064;
        }

        if (v61 == 2)
        {
          v64 = 0x6572676F72506E69;
          v65 = 0xEA00000000007373;
        }

        v66 = 0x6576694C7261656ELL;
        if (!byte_1F50F2678[v58 + 32])
        {
          v66 = 0x656D6167657270;
        }

        v67 = 0xE800000000000000;
        if (!byte_1F50F2678[v58 + 32])
        {
          v67 = 0xE700000000000000;
        }

        if (byte_1F50F2678[v58 + 32] <= 1u)
        {
          v62 = v66;
        }

        else
        {
          v62 = v64;
        }

        if (byte_1F50F2678[v58 + 32] <= 1u)
        {
          v63 = v67;
        }

        else
        {
          v63 = v65;
        }
      }

      else if (byte_1F50F2678[v58 + 32] > 7u)
      {
        if (v61 == 8)
        {
          v63 = 0xE500000000000000;
          v62 = 0x6C616E6966;
        }

        else
        {
          v63 = 0xE700000000000000;
          if (v61 == 9)
          {
            v62 = 0x74696566726F66;
          }

          else
          {
            v62 = 0x6E776F6E6B6E75;
          }
        }
      }

      else if (v61 == 5)
      {
        v62 = 0x65646E6570737573;
        v63 = 0xE900000000000064;
      }

      else
      {
        if (v61 == 6)
        {
          v62 = 0x656C6C65636E6163;
        }

        else
        {
          v62 = 0x646579616C6564;
        }

        if (v61 == 6)
        {
          v63 = 0xE900000000000064;
        }

        else
        {
          v63 = 0xE700000000000000;
        }
      }

      if (v59 > 4)
      {
        v68 = 0x74696566726F66;
        if (v59 != 9)
        {
          v68 = 0x6E776F6E6B6E75;
        }

        v69 = 0xE700000000000000;
        if (v59 == 8)
        {
          v68 = 0x6C616E6966;
          v69 = 0xE500000000000000;
        }

        v70 = 0x656C6C65636E6163;
        if (v59 == 6)
        {
          v71 = 0xE900000000000064;
        }

        else
        {
          v70 = 0x646579616C6564;
          v71 = 0xE700000000000000;
        }

        if (v59 == 5)
        {
          v70 = 0x65646E6570737573;
          v71 = 0xE900000000000064;
        }

        if (v59 <= 7)
        {
          v72 = v70;
        }

        else
        {
          v72 = v68;
        }

        if (v59 <= 7)
        {
          v73 = v71;
        }

        else
        {
          v73 = v69;
        }

        if (v62 != v72)
        {
          goto LABEL_235;
        }

        goto LABEL_234;
      }

      if (v59 > 1)
      {
        v74 = 0x656E6F7074736F70;
        if (v59 == 3)
        {
          v74 = 0x6B61657262;
          v75 = 0xE500000000000000;
        }

        else
        {
          v75 = 0xE900000000000064;
        }

        if (v59 == 2)
        {
          v76 = 0x6572676F72506E69;
        }

        else
        {
          v76 = v74;
        }

        if (v59 == 2)
        {
          v73 = 0xEA00000000007373;
        }

        else
        {
          v73 = v75;
        }

        if (v62 != v76)
        {
          goto LABEL_235;
        }

        goto LABEL_234;
      }

      if (!v59)
      {
        break;
      }

      v73 = 0xE800000000000000;
      if (v62 == 0x6576694C7261656ELL)
      {
        goto LABEL_234;
      }

LABEL_235:
      v77 = sub_1D72646CC();

      if (v77)
      {
        goto LABEL_240;
      }

      if (++v58 == 11)
      {
        v58 = 0;
        goto LABEL_240;
      }
    }

    v73 = 0xE700000000000000;
    if (v62 != 0x656D6167657270)
    {
      goto LABEL_235;
    }

LABEL_234:
    if (v63 != v73)
    {
      goto LABEL_235;
    }

LABEL_240:
    v78 = 0;
    v106 = (v102 - 1);
LABEL_241:
    v79 = byte_1F50F2678[v78 + 32];
    if (v79 <= 4)
    {
      v82 = 0x656E6F7074736F70;
      if (v79 == 3)
      {
        v82 = 0x6B61657262;
        v83 = 0xE500000000000000;
      }

      else
      {
        v83 = 0xE900000000000064;
      }

      if (v79 == 2)
      {
        v82 = 0x6572676F72506E69;
        v83 = 0xEA00000000007373;
      }

      v84 = 0x6576694C7261656ELL;
      if (!byte_1F50F2678[v78 + 32])
      {
        v84 = 0x656D6167657270;
      }

      v85 = 0xE800000000000000;
      if (!byte_1F50F2678[v78 + 32])
      {
        v85 = 0xE700000000000000;
      }

      if (byte_1F50F2678[v78 + 32] <= 1u)
      {
        v80 = v84;
      }

      else
      {
        v80 = v82;
      }

      if (byte_1F50F2678[v78 + 32] <= 1u)
      {
        v81 = v85;
      }

      else
      {
        v81 = v83;
      }
    }

    else if (byte_1F50F2678[v78 + 32] > 7u)
    {
      if (v79 == 8)
      {
        v81 = 0xE500000000000000;
        v80 = 0x6C616E6966;
      }

      else
      {
        v81 = 0xE700000000000000;
        if (v79 == 9)
        {
          v80 = 0x74696566726F66;
        }

        else
        {
          v80 = 0x6E776F6E6B6E75;
        }
      }
    }

    else if (v79 == 5)
    {
      v80 = 0x65646E6570737573;
      v81 = 0xE900000000000064;
    }

    else
    {
      if (v79 == 6)
      {
        v80 = 0x656C6C65636E6163;
      }

      else
      {
        v80 = 0x646579616C6564;
      }

      if (v79 == 6)
      {
        v81 = 0xE900000000000064;
      }

      else
      {
        v81 = 0xE700000000000000;
      }
    }

    if (v60 <= 4)
    {
      if (v60 <= 1)
      {
        if (v60)
        {
          v91 = 0xE800000000000000;
          if (v80 != 0x6576694C7261656ELL)
          {
            goto LABEL_305;
          }
        }

        else
        {
          v91 = 0xE700000000000000;
          if (v80 != 0x656D6167657270)
          {
            goto LABEL_305;
          }
        }
      }

      else
      {
        v92 = 0x656E6F7074736F70;
        if (v60 == 3)
        {
          v92 = 0x6B61657262;
          v93 = 0xE500000000000000;
        }

        else
        {
          v93 = 0xE900000000000064;
        }

        if (v60 == 2)
        {
          v94 = 0x6572676F72506E69;
        }

        else
        {
          v94 = v92;
        }

        if (v60 == 2)
        {
          v91 = 0xEA00000000007373;
        }

        else
        {
          v91 = v93;
        }

        if (v80 != v94)
        {
          goto LABEL_305;
        }
      }
    }

    else
    {
      v86 = 0x74696566726F66;
      if (v60 != 9)
      {
        v86 = 0x6E776F6E6B6E75;
      }

      v87 = 0xE700000000000000;
      if (v60 == 8)
      {
        v86 = 0x6C616E6966;
        v87 = 0xE500000000000000;
      }

      v88 = 0x656C6C65636E6163;
      if (v60 == 6)
      {
        v89 = 0xE900000000000064;
      }

      else
      {
        v88 = 0x646579616C6564;
        v89 = 0xE700000000000000;
      }

      if (v60 == 5)
      {
        v88 = 0x65646E6570737573;
        v89 = 0xE900000000000064;
      }

      if (v60 <= 7)
      {
        v90 = v88;
      }

      else
      {
        v90 = v86;
      }

      if (v60 <= 7)
      {
        v91 = v89;
      }

      else
      {
        v91 = v87;
      }

      if (v80 != v90)
      {
LABEL_305:
        v95 = sub_1D72646CC();

        if (v95)
        {
          goto LABEL_310;
        }

        if (++v78 == 11)
        {
LABEL_311:
          a3 = v102 - 1;
          v9 = v98;
          if (v102 < v104 || v106 >= v104)
          {
            *v106 = *v98;
          }

          v57 = v97;
          if (v98 <= __srca)
          {
            v54 = __dstb;
            break;
          }

          goto LABEL_170;
        }

        goto LABEL_241;
      }
    }

    if (v81 != v91)
    {
      goto LABEL_305;
    }

LABEL_310:
    if (v58 >= v78)
    {
      goto LABEL_311;
    }

    a3 = v102 - 1;
    v54 = v97;
    if (v102 < __dstb || v106 >= __dstb)
    {
      *v106 = *v97;
    }

    v9 = v104;
    if (v104 <= __srca)
    {
      break;
    }

    v55 = v97;
  }

  while (v97 > v5);
LABEL_323:
  if (v54 != __srca || v54 >= v9)
  {
    memmove(v54, __srca, v9 - __srca);
  }

  return 1;
}

uint64_t sub_1D5E16644(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v17 = *--v15;
          if (sub_1D6954CAC(v17, *v14))
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = *v15;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = *v14;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        if (sub_1D6954CAC(*v6, *v4))
        {
          v11 = v6 + 1;
          v12 = v6;
          if (v7 >= v6 && v7 < v11)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v13 = v4 + 1;
          v12 = v4;
          v11 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        *v7 = *v12;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v11;
          if (v11 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_1D5E16848(_BYTE *__src, _BYTE *a2, unint64_t a3, _BYTE *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src >= (a3 - a2))
  {
    if (__dst != a2 || __dst >= a3)
    {
      memmove(__dst, a2, a3 - a2);
    }

    v10 = &v4[v9];
    if (v9 < 1 || v6 <= v7)
    {
LABEL_154:
      if (v6 != v4)
      {
        goto LABEL_156;
      }

      goto LABEL_155;
    }

    v25 = 0x63696C617469;
    __srca = v4;
LABEL_87:
    v26 = v6 - 1;
    --v5;
    v27 = v10;
    v38 = v6;
    while (1)
    {
      v10 = v27;
      v28 = *--v27;
      v29 = 0xE600000000000000;
      v30 = v25;
      switch(v28)
      {
        case 1:
          v29 = 0xE400000000000000;
          v30 = 1684828002;
          break;
        case 2:
          v29 = 0xE800000000000000;
          v30 = 0x6465646E61707865;
          break;
        case 3:
          v30 = 0x65736E65646E6F63;
          v29 = 0xE900000000000064;
          break;
        case 4:
          v29 = 0xE900000000000065;
          v30 = 0x636170536F6E6F6DLL;
          break;
        case 5:
          v29 = 0xE800000000000000;
          v30 = 0x6C61636974726576;
          break;
        case 6:
          v30 = 0x696D6974704F6975;
          v29 = 0xEB0000000064657ALL;
          break;
        case 7:
          v31 = 0x4C7468676974;
          goto LABEL_110;
        case 8:
          v31 = 0x4C65736F6F6CLL;
LABEL_110:
          v30 = v31 & 0xFFFFFFFFFFFFLL | 0x6165000000000000;
          v29 = 0xEC000000676E6964;
          break;
        case 9:
          v29 = 0xE400000000000000;
          v30 = 1802723693;
          break;
        case 10:
          v30 = 0x656C797453646C6FLL;
          goto LABEL_108;
        case 11:
          v30 = 0xD000000000000012;
          v29 = 0x80000001D73B9100;
          break;
        case 12:
          v30 = 0x65536E7265646F6DLL;
          v29 = 0xEC00000073666972;
          break;
        case 13:
          v30 = 0x6F646E6572616C63;
          v29 = 0xEF7366697265536ELL;
          break;
        case 14:
          v30 = 0x6972655362616C73;
          v29 = 0xEA00000000007366;
          break;
        case 15:
          v30 = 0x6D726F6665657266;
LABEL_108:
          v29 = 0xEE00736669726553;
          break;
        case 16:
          v29 = 0xE900000000000066;
          v30 = 0x69726553736E6173;
          break;
        case 17:
          v30 = 0x746E656D616E726FLL;
          v29 = 0xEB00000000736C61;
          break;
        case 18:
          v29 = 0xE700000000000000;
          v30 = 0x73747069726373;
          break;
        case 19:
          v29 = 0xE800000000000000;
          v30 = 0x63696C6F626D7973;
          break;
        default:
          break;
      }

      v32 = 0xE600000000000000;
      v33 = v25;
      switch(*v26)
      {
        case 1:
          v32 = 0xE400000000000000;
          v25 = 1684828002;
          break;
        case 2:
          v32 = 0xE800000000000000;
          v25 = 0x6465646E61707865;
          break;
        case 3:
          v25 = 0x65736E65646E6F63;
          v32 = 0xE900000000000064;
          break;
        case 4:
          v32 = 0xE900000000000065;
          v25 = 0x636170536F6E6F6DLL;
          break;
        case 5:
          v32 = 0xE800000000000000;
          v25 = 0x6C61636974726576;
          break;
        case 6:
          v25 = 0x696D6974704F6975;
          v32 = 0xEB0000000064657ALL;
          break;
        case 7:
          v34 = 0x4C7468676974;
          goto LABEL_132;
        case 8:
          v34 = 0x4C65736F6F6CLL;
LABEL_132:
          v25 = v34 & 0xFFFFFFFFFFFFLL | 0x6165000000000000;
          v32 = 0xEC000000676E6964;
          break;
        case 9:
          v32 = 0xE400000000000000;
          v25 = 1802723693;
          break;
        case 0xA:
          v25 = 0x656C797453646C6FLL;
          goto LABEL_130;
        case 0xB:
          v25 = 0xD000000000000012;
          v32 = 0x80000001D73B9100;
          break;
        case 0xC:
          v25 = 0x65536E7265646F6DLL;
          v32 = 0xEC00000073666972;
          break;
        case 0xD:
          v25 = 0x6F646E6572616C63;
          v32 = 0xEF7366697265536ELL;
          break;
        case 0xE:
          v25 = 0x6972655362616C73;
          v32 = 0xEA00000000007366;
          break;
        case 0xF:
          v25 = 0x6D726F6665657266;
LABEL_130:
          v32 = 0xEE00736669726553;
          break;
        case 0x10:
          v32 = 0xE900000000000066;
          v25 = 0x69726553736E6173;
          break;
        case 0x11:
          v25 = 0x746E656D616E726FLL;
          v32 = 0xEB00000000736C61;
          break;
        case 0x12:
          v32 = 0xE700000000000000;
          v25 = 0x73747069726373;
          break;
        case 0x13:
          v32 = 0xE800000000000000;
          v25 = 0x63696C6F626D7973;
          break;
        default:
          break;
      }

      v6 = v26;
      if (v30 == v25 && v29 == v32)
      {
      }

      else
      {
        v35 = sub_1D72646CC();

        if (v35)
        {
          v25 = v33;
          if ((v5 + 1) < v38 || v5 >= v38)
          {
            *v5 = *v6;
          }

          v4 = __srca;
          if (v10 <= __srca || v6 <= v7)
          {
            if (v6 == __srca)
            {
              goto LABEL_155;
            }

            goto LABEL_156;
          }

          goto LABEL_87;
        }
      }

      v25 = v33;
      v26 = v6;
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = *v27;
      }

      --v5;
      v4 = __srca;
      v6 = v38;
      if (v27 <= __srca)
      {
        v10 = v27;
        goto LABEL_149;
      }
    }
  }

  if (__dst != __src || __dst >= a2)
  {
    memmove(__dst, __src, v8);
  }

  v10 = &v4[v8];
  if (v8 < 1)
  {
    v6 = v7;
    goto LABEL_154;
  }

  if (v6 >= v5)
  {
    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_156;
    }
  }

  else
  {
    while (2)
    {
      v11 = 0xE600000000000000;
      v12 = 0x63696C617469;
      switch(*v6)
      {
        case 1:
          v11 = 0xE400000000000000;
          v12 = 1684828002;
          break;
        case 2:
          v11 = 0xE800000000000000;
          v12 = 0x6465646E61707865;
          break;
        case 3:
          v12 = 0x65736E65646E6F63;
          v11 = 0xE900000000000064;
          break;
        case 4:
          v11 = 0xE900000000000065;
          v12 = 0x636170536F6E6F6DLL;
          break;
        case 5:
          v11 = 0xE800000000000000;
          v12 = 0x6C61636974726576;
          break;
        case 6:
          v12 = 0x696D6974704F6975;
          v11 = 0xEB0000000064657ALL;
          break;
        case 7:
          v13 = 0x4C7468676974;
          goto LABEL_27;
        case 8:
          v13 = 0x4C65736F6F6CLL;
LABEL_27:
          v12 = v13 & 0xFFFFFFFFFFFFLL | 0x6165000000000000;
          v11 = 0xEC000000676E6964;
          break;
        case 9:
          v11 = 0xE400000000000000;
          v12 = 1802723693;
          break;
        case 0xA:
          v12 = 0x656C797453646C6FLL;
          goto LABEL_25;
        case 0xB:
          v12 = 0xD000000000000012;
          v11 = 0x80000001D73B9100;
          break;
        case 0xC:
          v12 = 0x65536E7265646F6DLL;
          v11 = 0xEC00000073666972;
          break;
        case 0xD:
          v12 = 0x6F646E6572616C63;
          v11 = 0xEF7366697265536ELL;
          break;
        case 0xE:
          v12 = 0x6972655362616C73;
          v11 = 0xEA00000000007366;
          break;
        case 0xF:
          v12 = 0x6D726F6665657266;
LABEL_25:
          v11 = 0xEE00736669726553;
          break;
        case 0x10:
          v11 = 0xE900000000000066;
          v12 = 0x69726553736E6173;
          break;
        case 0x11:
          v12 = 0x746E656D616E726FLL;
          v11 = 0xEB00000000736C61;
          break;
        case 0x12:
          v11 = 0xE700000000000000;
          v12 = 0x73747069726373;
          break;
        case 0x13:
          v11 = 0xE800000000000000;
          v12 = 0x63696C6F626D7973;
          break;
        default:
          break;
      }

      v14 = 0xE600000000000000;
      v15 = 0x63696C617469;
      switch(*v4)
      {
        case 1:
          v14 = 0xE400000000000000;
          if (v12 == 1684828002)
          {
            goto LABEL_66;
          }

          goto LABEL_69;
        case 2:
          v14 = 0xE800000000000000;
          if (v12 != 0x6465646E61707865)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 3:
          v14 = 0xE900000000000064;
          if (v12 != 0x65736E65646E6F63)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 4:
          v14 = 0xE900000000000065;
          if (v12 != 0x636170536F6E6F6DLL)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 5:
          v14 = 0xE800000000000000;
          if (v12 != 0x6C61636974726576)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 6:
          v19 = 0x696D6974704F6975;
          v20 = 6579578;
          goto LABEL_57;
        case 7:
          v16 = 0x61654C7468676974;
          v17 = 1735289188;
          goto LABEL_49;
        case 8:
          v15 = 0x61654C65736F6F6CLL;
          v14 = 0xEC000000676E6964;
          goto LABEL_65;
        case 9:
          v14 = 0xE400000000000000;
          if (v12 != 1802723693)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 0xA:
          v18 = 0x656C797453646C6FLL;
          goto LABEL_62;
        case 0xB:
          v14 = 0x80000001D73B9100;
          if (v12 != 0xD000000000000012)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 0xC:
          v16 = 0x65536E7265646F6DLL;
          v17 = 1936091506;
LABEL_49:
          v14 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v12 != v16)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 0xD:
          v14 = 0xEF7366697265536ELL;
          if (v12 != 0x6F646E6572616C63)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 0xE:
          v14 = 0xEA00000000007366;
          if (v12 != 0x6972655362616C73)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 0xF:
          v18 = 0x6D726F6665657266;
LABEL_62:
          v14 = 0xEE00736669726553;
          if (v12 != v18)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 0x10:
          v14 = 0xE900000000000066;
          if (v12 != 0x69726553736E6173)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 0x11:
          v19 = 0x746E656D616E726FLL;
          v20 = 7564385;
LABEL_57:
          v14 = v20 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v12 != v19)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 0x12:
          v14 = 0xE700000000000000;
          if (v12 != 0x73747069726373)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 0x13:
          v14 = 0xE800000000000000;
          if (v12 != 0x63696C6F626D7973)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        default:
LABEL_65:
          if (v12 != v15)
          {
            goto LABEL_69;
          }

LABEL_66:
          if (v11 == v14)
          {

LABEL_73:
            v24 = v4 + 1;
            v23 = v4;
            v22 = v6;
            if (v7 < v4)
            {
              ++v4;
            }

            else
            {
              ++v4;
              if (v7 < v24)
              {
                goto LABEL_78;
              }
            }

LABEL_77:
            *v7 = *v23;
            goto LABEL_78;
          }

LABEL_69:
          v21 = sub_1D72646CC();

          if ((v21 & 1) == 0)
          {
            goto LABEL_73;
          }

          v22 = v6 + 1;
          v23 = v6;
          if (v7 < v6 || v7 >= v22)
          {
            goto LABEL_77;
          }

LABEL_78:
          ++v7;
          if (v4 < v10)
          {
            v6 = v22;
            if (v22 < v5)
            {
              continue;
            }
          }

          v6 = v7;
          break;
      }

      break;
    }

LABEL_149:
    if (v6 != v4)
    {
LABEL_156:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

LABEL_155:
  if (v6 >= v10)
  {
    goto LABEL_156;
  }

  return 1;
}

uint64_t sub_1D5E17458(_BYTE *__src, _BYTE *a2, unint64_t a3, _BYTE *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a3 - a2;
  if (a2 - __src >= (a3 - a2))
  {
    if (__dst != a2 || __dst >= a3)
    {
      v21 = a2;
      memmove(__dst, a2, a3 - a2);
      a2 = v21;
    }

    v10 = &v4[v8];
    if (v8 >= 1 && a2 > v6)
    {
      v44 = v4;
      v43 = v6;
LABEL_49:
      v22 = a2 - 1;
      v23 = v5 - 1;
      v24 = v10;
      do
      {
        v26 = *--v24;
        v25 = v26;
        if (v26 > 2)
        {
          if (v25 == 3)
          {
            v27 = 0xD000000000000011;
            v28 = 0x80000001D73BAB30;
          }

          else if (v25 == 4)
          {
            v27 = 0x656C626978656C66;
            v28 = 0xEE00746867696548;
          }

          else
          {
            v27 = 0xD000000000000014;
            v28 = 0x80000001D73BAB60;
          }
        }

        else if (v25)
        {
          v27 = 0x656C626978656C66;
          v28 = 0xED00006874646957;
          if (v25 != 1)
          {
            v27 = 0xD000000000000013;
            v28 = 0x80000001D73BAB10;
          }
        }

        else
        {
          v27 = 0xD000000000000012;
          v28 = 0x80000001D73BAAE0;
        }

        v29 = v23;
        v30 = v23 + 1;
        v31 = v22;
        v32 = *v22;
        v33 = 0xD000000000000014;
        if (v32 == 4)
        {
          v33 = 0x656C626978656C66;
        }

        v34 = 0xEE00746867696548;
        if (v32 != 4)
        {
          v34 = 0x80000001D73BAB60;
        }

        if (v32 == 3)
        {
          v33 = 0xD000000000000011;
          v34 = 0x80000001D73BAB30;
        }

        v35 = 0xD000000000000013;
        if (v32 == 1)
        {
          v35 = 0x656C626978656C66;
        }

        v36 = 0xED00006874646957;
        if (v32 != 1)
        {
          v36 = 0x80000001D73BAB10;
        }

        if (!v32)
        {
          v35 = 0xD000000000000012;
          v36 = 0x80000001D73BAAE0;
        }

        if (v32 <= 2)
        {
          v37 = v35;
        }

        else
        {
          v37 = v33;
        }

        if (v32 <= 2)
        {
          v38 = v36;
        }

        else
        {
          v38 = v34;
        }

        v39 = a2;
        if (v27 == v37 && v28 == v38)
        {
        }

        else
        {
          v40 = sub_1D72646CC();

          if (v40)
          {
            v41 = v31;
            v5 = v29;
            if ((v29 + 1) < v39 || v29 >= v39)
            {
              *v29 = *v41;
            }

            v4 = v44;
            if (v10 > v44)
            {
              a2 = v41;
              if (v41 > v43)
              {
                goto LABEL_49;
              }
            }

            a2 = v41;
            if (v41 == v44)
            {
              goto LABEL_101;
            }

            goto LABEL_102;
          }
        }

        a2 = v39;
        v22 = v31;
        if (v30 < v10 || v29 >= v10)
        {
          *v29 = *v24;
        }

        v23 = v29 - 1;
        v10 = v24;
        v4 = v44;
      }

      while (v24 > v44);
      v10 = v24;
LABEL_95:
      if (a2 == v4)
      {
        goto LABEL_101;
      }

      goto LABEL_102;
    }
  }

  else
  {
    if (__dst != __src || __dst >= a2)
    {
      v9 = a2;
      memmove(__dst, __src, v7);
      a2 = v9;
    }

    v10 = &v4[v7];
    if (v7 >= 1)
    {
      if (a2 < v5)
      {
        while (1)
        {
          v11 = *a2;
          if (v11 > 2)
          {
            if (v11 == 3)
            {
              v12 = 0xD000000000000011;
              v13 = 0x80000001D73BAB30;
            }

            else if (v11 == 4)
            {
              v12 = 0x656C626978656C66;
              v13 = 0xEE00746867696548;
            }

            else
            {
              v12 = 0xD000000000000014;
              v13 = 0x80000001D73BAB60;
            }
          }

          else if (*a2)
          {
            v12 = 0x656C626978656C66;
            v13 = 0xED00006874646957;
            if (v11 != 1)
            {
              v12 = 0xD000000000000013;
              v13 = 0x80000001D73BAB10;
            }
          }

          else
          {
            v12 = 0xD000000000000012;
            v13 = 0x80000001D73BAAE0;
          }

          v14 = *v4;
          if (v14 > 2)
          {
            if (v14 == 3)
            {
              v15 = 0xD000000000000011;
              v16 = 0x80000001D73BAB30;
            }

            else if (v14 == 4)
            {
              v15 = 0x656C626978656C66;
              v16 = 0xEE00746867696548;
            }

            else
            {
              v15 = 0xD000000000000014;
              v16 = 0x80000001D73BAB60;
            }
          }

          else if (*v4)
          {
            v15 = 0x656C626978656C66;
            v16 = 0xED00006874646957;
            if (v14 != 1)
            {
              v15 = 0xD000000000000013;
              v16 = 0x80000001D73BAB10;
            }
          }

          else
          {
            v15 = 0xD000000000000012;
            v16 = 0x80000001D73BAAE0;
          }

          v17 = a2;
          v18 = v4;
          if (v12 == v15 && v13 == v16)
          {
          }

          else
          {
            v19 = sub_1D72646CC();

            if (v19)
            {
              v20 = v17++;
              if (v6 < v20)
              {
                v4 = v18;
              }

              else
              {
                v4 = v18;
                if (v6 < v17)
                {
                  goto LABEL_40;
                }
              }

              goto LABEL_39;
            }
          }

          v20 = v18;
          if (v6 < v18)
          {
            v4 = v18 + 1;
          }

          else
          {
            v4 = v18 + 1;
            if (v6 < v18 + 1)
            {
              goto LABEL_40;
            }
          }

LABEL_39:
          *v6 = *v20;
LABEL_40:
          ++v6;
          if (v4 < v10)
          {
            a2 = v17;
            if (v17 < v5)
            {
              continue;
            }
          }

          a2 = v6;
          goto LABEL_95;
        }
      }

      a2 = v6;
      if (v6 != v4)
      {
        goto LABEL_102;
      }

      goto LABEL_101;
    }

    a2 = v6;
  }

  if (a2 != v4)
  {
LABEL_102:
    memmove(a2, v4, v10 - v4);
    return 1;
  }

LABEL_101:
  if (a2 >= v10)
  {
    goto LABEL_102;
  }

  return 1;
}

uint64_t sub_1D5E17A60(_BYTE *__src, _BYTE *__dst, unint64_t a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = a3 - __dst;
  if (__dst - __src < (a3 - __dst))
  {
    if (a4 != __src || a4 >= __dst)
    {
      memmove(a4, __src, v8);
    }

    v10 = &v4[v8];
    if (v8 < 1 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_74;
    }

    while (1)
    {
      if (*v6)
      {
        v11 = 0x73676E69646E6962;
      }

      else
      {
        v11 = 0x736E6F6974706FLL;
      }

      if (*v6)
      {
        v12 = 0xE800000000000000;
      }

      else
      {
        v12 = 0xE700000000000000;
      }

      if (*v4)
      {
        v13 = 0x73676E69646E6962;
      }

      else
      {
        v13 = 0x736E6F6974706FLL;
      }

      if (*v4)
      {
        v14 = 0xE800000000000000;
      }

      else
      {
        v14 = 0xE700000000000000;
      }

      if (v11 == v13 && v12 == v14)
      {
      }

      else
      {
        v16 = sub_1D72646CC();

        if (v16)
        {
          v17 = v6 + 1;
          v18 = v6;
          if (v7 >= v6 && v7 < v17)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }
      }

      v19 = v4 + 1;
      v18 = v4;
      v17 = v6;
      if (v7 < v4)
      {
        ++v4;
      }

      else
      {
        ++v4;
        if (v7 < v19)
        {
          goto LABEL_33;
        }
      }

LABEL_32:
      *v7 = *v18;
LABEL_33:
      ++v7;
      if (v4 < v10)
      {
        v6 = v17;
        if (v17 < v5)
        {
          continue;
        }
      }

      v6 = v7;
      goto LABEL_74;
    }
  }

  if (a4 != __dst || a4 >= a3)
  {
    memmove(a4, __dst, a3 - __dst);
  }

  v10 = &v4[v9];
  if (v9 >= 1 && v6 > v7)
  {
LABEL_41:
    v20 = v6 - 1;
    --v5;
    while (1)
    {
      if (*(v10 - 1))
      {
        v21 = 0x73676E69646E6962;
      }

      else
      {
        v21 = 0x736E6F6974706FLL;
      }

      if (*(v10 - 1))
      {
        v22 = 0xE800000000000000;
      }

      else
      {
        v22 = 0xE700000000000000;
      }

      if (*v20)
      {
        v23 = 0x73676E69646E6962;
      }

      else
      {
        v23 = 0x736E6F6974706FLL;
      }

      if (*v20)
      {
        v24 = 0xE800000000000000;
      }

      else
      {
        v24 = 0xE700000000000000;
      }

      if (v21 == v23 && v22 == v24)
      {
      }

      else
      {
        v26 = sub_1D72646CC();

        if (v26)
        {
          if (v5 + 1 < v6 || v5 >= v6)
          {
            *v5 = *v20;
          }

          if (v10 <= v4 || (--v6, v20 <= v7))
          {
            v6 = v20;
            break;
          }

          goto LABEL_41;
        }
      }

      v27 = (v10 - 1);
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = *v27;
      }

      --v5;
      --v10;
      if (v27 <= v4)
      {
        v10 = v27;
        break;
      }
    }
  }

LABEL_74:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

void sub_1D5E17D68(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for FormatRegex();
  MEMORY[0x1EEE9AC00](v52, v8);
  v51 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v50 = (&v44 - v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v44 - v15);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v44 - v19);
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  v49 = a2;
  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_71;
  }

  v23 = a3 - v49;
  if (a3 - v49 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_72;
  }

  v24 = (a2 - a1) / v22;
  v55 = a1;
  v54 = a4;
  if (v24 >= v23 / v22)
  {
    v27 = v23 / v22 * v22;
    if (a4 < v49 || v49 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v49)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v27;
    if (v27 >= 1)
    {
      v33 = -v22;
      v34 = a4 + v27;
      v47 = a4;
      v48 = -v22;
      do
      {
        v45 = v32;
        v35 = v49;
        v49 += v33;
        while (1)
        {
          if (v35 <= a1)
          {
            v55 = v35;
            v53 = v45;
            goto LABEL_69;
          }

          v36 = a3;
          v46 = v32;
          v37 = v48;
          v38 = v34 + v48;
          v39 = v50;
          sub_1D5E190A4(v34 + v48, v50, type metadata accessor for FormatRegex);
          v40 = v51;
          sub_1D5E190A4(v49, v51, type metadata accessor for FormatRegex);
          v41 = *v39 == *v40 && v39[1] == v40[1];
          v42 = v41 ? 0 : sub_1D72646CC();
          a3 = v36 + v37;
          sub_1D5E1A778(v51);
          sub_1D5E1A778(v50);
          v43 = v47;
          if (v42)
          {
            break;
          }

          v32 = v38;
          if (v36 < v34 || a3 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v36 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v34 = v38;
          if (v38 <= v43)
          {
            v49 = v35;
            goto LABEL_68;
          }
        }

        if (v36 < v35 || a3 >= v35)
        {
          swift_arrayInitWithTakeFrontToBack();
          v32 = v46;
        }

        else
        {
          v32 = v46;
          if (v36 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v33 = v48;
      }

      while (v34 > v43);
    }

LABEL_68:
    v55 = v49;
    v53 = v32;
  }

  else
  {
    v25 = v24 * v22;
    if (a4 < a1 || a1 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v26 = v49;
    }

    else
    {
      v26 = v49;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v28 = a4 + v25;
    v53 = a4 + v25;
    if (v25 >= 1 && v26 < a3)
    {
      while (1)
      {
        sub_1D5E190A4(v26, v20, type metadata accessor for FormatRegex);
        sub_1D5E190A4(a4, v16, type metadata accessor for FormatRegex);
        if (*v20 == *v16 && v20[1] == v16[1])
        {
          break;
        }

        v31 = sub_1D72646CC();
        sub_1D5E1A778(v16);
        sub_1D5E1A778(v20);
        if ((v31 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < v26 || a1 >= v26 + v22)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v26)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v26 += v22;
LABEL_38:
        a1 += v22;
        v55 = a1;
        if (a4 >= v28 || v26 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_1D5E1A778(v16);
      sub_1D5E1A778(v20);
LABEL_30:
      if (a1 < a4 || a1 >= a4 + v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v54 = a4 + v22;
      a4 += v22;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_1D62FF520(&v55, &v54, &v53);
}

uint64_t sub_1D5E18278(_BYTE *__src, _BYTE *a2, unint64_t a3, _BYTE *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src >= (a3 - a2))
  {
    if (__dst != a2 || __dst >= a3)
    {
      memmove(__dst, a2, a3 - a2);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
LABEL_66:
      v21 = v6 - 1;
      --v5;
      v22 = v10;
      __dsta = v6 - 1;
      do
      {
        v24 = *--v22;
        v23 = v24;
        if (v24 > 3)
        {
          if (v23 > 5)
          {
            if (v23 == 6)
            {
              v25 = 0xE800000000000000;
              v26 = 0x73676E69646E6962;
            }

            else
            {
              v25 = 0xE300000000000000;
              v26 = 7105633;
            }
          }

          else if (v23 == 4)
          {
            v25 = 0xE800000000000000;
            v26 = 0x6574616C706D6574;
          }

          else
          {
            v25 = 0xE700000000000000;
            v26 = 0x747865746E6F63;
          }
        }

        else if (v23 > 1)
        {
          if (v23 == 2)
          {
            v26 = 0x40736E6F6974706FLL;
            v25 = 0xEE0074756F79616CLL;
          }

          else
          {
            v25 = 0xE600000000000000;
            v26 = 0x726F73727563;
          }
        }

        else if (v23)
        {
          v26 = 0x40736E6F6974706FLL;
          v25 = 0xEC000000646E6962;
        }

        else
        {
          v25 = 0xE700000000000000;
          v26 = 0x736E6F6974706FLL;
        }

        v27 = *v21;
        if (v27 > 3)
        {
          v30 = 0x73676E69646E6962;
          if (v27 != 6)
          {
            v30 = 7105633;
          }

          v31 = 0xE300000000000000;
          if (v27 == 6)
          {
            v31 = 0xE800000000000000;
          }

          v32 = 0x6574616C706D6574;
          if (v27 != 4)
          {
            v32 = 0x747865746E6F63;
          }

          v33 = 0xE700000000000000;
          if (v27 == 4)
          {
            v33 = 0xE800000000000000;
          }

          if (v27 <= 5)
          {
            v28 = v32;
          }

          else
          {
            v28 = v30;
          }

          if (v27 <= 5)
          {
            v29 = v33;
          }

          else
          {
            v29 = v31;
          }
        }

        else if (*v21 > 1u)
        {
          if (v27 == 2)
          {
            v28 = 0x40736E6F6974706FLL;
            v29 = 0xEE0074756F79616CLL;
          }

          else
          {
            v29 = 0xE600000000000000;
            v28 = 0x726F73727563;
          }
        }

        else
        {
          if (*v21)
          {
            v28 = 0x40736E6F6974706FLL;
          }

          else
          {
            v28 = 0x736E6F6974706FLL;
          }

          if (*v21)
          {
            v29 = 0xEC000000646E6962;
          }

          else
          {
            v29 = 0xE700000000000000;
          }
        }

        if (v26 == v28 && v25 == v29)
        {
        }

        else
        {
          v34 = sub_1D72646CC();

          if (v34)
          {
            if (v5 + 1 < v6 || v5 >= v6)
            {
              *v5 = *__dsta;
            }

            if (v10 > v4)
            {
              --v6;
              if (__dsta > v7)
              {
                goto LABEL_66;
              }
            }

            v6 = __dsta;
            if (__dsta == v4)
            {
              goto LABEL_130;
            }

            goto LABEL_131;
          }
        }

        v21 = v6 - 1;
        if ((v5 + 1) < v10 || v5 >= v10)
        {
          *v5 = *v22;
        }

        --v5;
        v10 = v22;
      }

      while (v22 > v4);
      v10 = v22;
LABEL_124:
      if (v6 == v4)
      {
        goto LABEL_130;
      }

      goto LABEL_131;
    }
  }

  else
  {
    if (__dst != __src || __dst >= a2)
    {
      memmove(__dst, __src, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1)
    {
      if (v6 < v5)
      {
        while (1)
        {
          v11 = *v6;
          if (v11 > 3)
          {
            if (*v6 > 5u)
            {
              if (v11 == 6)
              {
                v12 = 0xE800000000000000;
                v13 = 0x73676E69646E6962;
              }

              else
              {
                v12 = 0xE300000000000000;
                v13 = 7105633;
              }
            }

            else if (v11 == 4)
            {
              v12 = 0xE800000000000000;
              v13 = 0x6574616C706D6574;
            }

            else
            {
              v12 = 0xE700000000000000;
              v13 = 0x747865746E6F63;
            }
          }

          else if (*v6 > 1u)
          {
            if (v11 == 2)
            {
              v13 = 0x40736E6F6974706FLL;
              v12 = 0xEE0074756F79616CLL;
            }

            else
            {
              v12 = 0xE600000000000000;
              v13 = 0x726F73727563;
            }
          }

          else if (*v6)
          {
            v13 = 0x40736E6F6974706FLL;
            v12 = 0xEC000000646E6962;
          }

          else
          {
            v12 = 0xE700000000000000;
            v13 = 0x736E6F6974706FLL;
          }

          v14 = *v4;
          if (v14 > 3)
          {
            if (*v4 > 5u)
            {
              if (v14 == 6)
              {
                v16 = 0x73676E69646E6962;
              }

              else
              {
                v16 = 7105633;
              }

              if (v14 == 6)
              {
                v15 = 0xE800000000000000;
              }

              else
              {
                v15 = 0xE300000000000000;
              }

              if (v13 != v16)
              {
                goto LABEL_49;
              }
            }

            else if (v14 == 4)
            {
              v15 = 0xE800000000000000;
              if (v13 != 0x6574616C706D6574)
              {
                goto LABEL_49;
              }
            }

            else
            {
              v15 = 0xE700000000000000;
              if (v13 != 0x747865746E6F63)
              {
                goto LABEL_49;
              }
            }
          }

          else if (*v4 > 1u)
          {
            if (v14 == 2)
            {
              v15 = 0xEE0074756F79616CLL;
              if (v13 != 0x40736E6F6974706FLL)
              {
                goto LABEL_49;
              }
            }

            else
            {
              v15 = 0xE600000000000000;
              if (v13 != 0x726F73727563)
              {
                goto LABEL_49;
              }
            }
          }

          else if (*v4)
          {
            v15 = 0xEC000000646E6962;
            if (v13 != 0x40736E6F6974706FLL)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v15 = 0xE700000000000000;
            if (v13 != 0x736E6F6974706FLL)
            {
              goto LABEL_49;
            }
          }

          if (v12 == v15)
          {

            goto LABEL_53;
          }

LABEL_49:
          v17 = sub_1D72646CC();

          if (v17)
          {
            v18 = v6 + 1;
            v19 = v6;
            if (v7 >= v6 && v7 < v18)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          }

LABEL_53:
          v20 = v4 + 1;
          v19 = v4;
          v18 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v20)
            {
              goto LABEL_58;
            }
          }

LABEL_57:
          *v7 = *v19;
LABEL_58:
          ++v7;
          if (v4 < v10)
          {
            v6 = v18;
            if (v18 < v5)
            {
              continue;
            }
          }

          v6 = v7;
          goto LABEL_124;
        }
      }

      v6 = v7;
      if (v7 != v4)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }

    v6 = v7;
  }

  if (v6 != v4)
  {
LABEL_131:
    memmove(v6, v4, v10 - v4);
    return 1;
  }

LABEL_130:
  if (v6 >= v10)
  {
    goto LABEL_131;
  }

  return 1;
}

void sub_1D5E18934()
{
  if (!qword_1EDF3BD68)
  {
    sub_1D5B59CD8();
    sub_1D5B59D2C();
    v0 = sub_1D725AAEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BD68);
    }
  }
}

uint64_t sub_1D5E1899C(uint64_t a1, uint64_t a2)
{
  sub_1D5C2CA18(0, &qword_1EDF2CA60, sub_1D5E04DE8, &type metadata for FormatCodingRecipeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5E18A38(void *a1)
{
  a1[1] = sub_1D5D40B60(&unk_1EDF12370, type metadata accessor for FormatRecipe);
  a1[2] = sub_1D5D40B60(&qword_1EDF12380, type metadata accessor for FormatRecipe);
  result = sub_1D5D40B60(&qword_1EC87F830, type metadata accessor for FormatRecipe);
  a1[3] = result;
  return result;
}

uint64_t type metadata accessor for FormatRecipe()
{
  result = qword_1EDF418B8;
  if (!qword_1EDF418B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_get_1Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t sub_1D5E18B90()
{
  result = type metadata accessor for FormatRecipeOverrides();
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

unint64_t sub_1D5E18CA4()
{
  result = qword_1EC87F838;
  if (!qword_1EC87F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F838);
  }

  return result;
}

unint64_t sub_1D5E18CFC()
{
  result = qword_1EDF12388;
  if (!qword_1EDF12388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12388);
  }

  return result;
}

unint64_t sub_1D5E18D54()
{
  result = qword_1EDF12390;
  if (!qword_1EDF12390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12390);
  }

  return result;
}

uint64_t sub_1D5E18DA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656469727265766FLL && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1D5E18F20()
{
  result = qword_1EDF0D1A0;
  if (!qword_1EDF0D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D1A0);
  }

  return result;
}

uint64_t sub_1D5E18F74(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5C2CA18(255, a2, a3, a4, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5E18FD8(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49714(255, a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5E19050()
{
  result = qword_1EC87F868;
  if (!qword_1EC87F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F868);
  }

  return result;
}

uint64_t sub_1D5E190A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D5E1910C()
{
  result = qword_1EDF40650;
  if (!qword_1EDF40650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF40650);
  }

  return result;
}

unint64_t sub_1D5E19160()
{
  result = qword_1EDF30748;
  if (!qword_1EDF30748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30748);
  }

  return result;
}

unint64_t sub_1D5E191B4()
{
  result = qword_1EC87F880;
  if (!qword_1EC87F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F880);
  }

  return result;
}

unint64_t sub_1D5E19208()
{
  result = qword_1EC87F898;
  if (!qword_1EC87F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F898);
  }

  return result;
}

unint64_t sub_1D5E1925C()
{
  result = qword_1EDF12960;
  if (!qword_1EDF12960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12960);
  }

  return result;
}

unint64_t sub_1D5E192B0()
{
  result = qword_1EDF337E0;
  if (!qword_1EDF337E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF337E0);
  }

  return result;
}

unint64_t sub_1D5E19304()
{
  result = qword_1EDF417E8[0];
  if (!qword_1EDF417E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF417E8);
  }

  return result;
}

unint64_t sub_1D5E19358()
{
  result = qword_1EC87F8B8;
  if (!qword_1EC87F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F8B8);
  }

  return result;
}

unint64_t sub_1D5E193AC()
{
  result = qword_1EDF1BB00;
  if (!qword_1EDF1BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1BB00);
  }

  return result;
}

unint64_t sub_1D5E19400()
{
  result = qword_1EC87F8D0;
  if (!qword_1EC87F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F8D0);
  }

  return result;
}

unint64_t sub_1D5E19454()
{
  result = qword_1EDF331D0;
  if (!qword_1EDF331D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF331D0);
  }

  return result;
}

void sub_1D5E195C4()
{
  if (!qword_1EDF25280)
  {
    sub_1D5E19648();
    sub_1D5E1969C();
    sub_1D5E196F0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25280);
    }
  }
}

unint64_t sub_1D5E19648()
{
  result = qword_1EDF28FF8;
  if (!qword_1EDF28FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28FF8);
  }

  return result;
}

unint64_t sub_1D5E1969C()
{
  result = qword_1EDF29000;
  if (!qword_1EDF29000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29000);
  }

  return result;
}

unint64_t sub_1D5E196F0()
{
  result = qword_1EDF29008;
  if (!qword_1EDF29008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29008);
  }

  return result;
}

void sub_1D5E197B4()
{
  if (!qword_1EDF0C398)
  {
    sub_1D5E19838();
    sub_1D5E1988C();
    sub_1D5E198E0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0C398);
    }
  }
}

unint64_t sub_1D5E19838()
{
  result = qword_1EDF117C0;
  if (!qword_1EDF117C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF117C0);
  }

  return result;
}

unint64_t sub_1D5E1988C()
{
  result = qword_1EDF117C8;
  if (!qword_1EDF117C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF117C8);
  }

  return result;
}

unint64_t sub_1D5E198E0()
{
  result = qword_1EDF117D0;
  if (!qword_1EDF117D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF117D0);
  }

  return result;
}

void sub_1D5E19A14()
{
  if (!qword_1EDF25470)
  {
    sub_1D5E19A98();
    sub_1D5E19AEC();
    sub_1D5E19B40();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25470);
    }
  }
}

unint64_t sub_1D5E19A98()
{
  result = qword_1EDF2BF58;
  if (!qword_1EDF2BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BF58);
  }

  return result;
}

unint64_t sub_1D5E19AEC()
{
  result = qword_1EDF2BF60;
  if (!qword_1EDF2BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BF60);
  }

  return result;
}

unint64_t sub_1D5E19B40()
{
  result = qword_1EDF2BF68;
  if (!qword_1EDF2BF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BF68);
  }

  return result;
}

void sub_1D5E19C04()
{
  if (!qword_1EDF25180)
  {
    sub_1D5E19C88();
    sub_1D5E19CDC();
    sub_1D5E19D30();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25180);
    }
  }
}

unint64_t sub_1D5E19C88()
{
  result = qword_1EDF27048;
  if (!qword_1EDF27048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27048);
  }

  return result;
}

unint64_t sub_1D5E19CDC()
{
  result = qword_1EDF27050;
  if (!qword_1EDF27050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27050);
  }

  return result;
}

unint64_t sub_1D5E19D30()
{
  result = qword_1EDF27058;
  if (!qword_1EDF27058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27058);
  }

  return result;
}

void sub_1D5E19DF4()
{
  if (!qword_1EDF25050)
  {
    sub_1D5E19E78();
    sub_1D5E19ECC();
    sub_1D5E19F20();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25050);
    }
  }
}

unint64_t sub_1D5E19E78()
{
  result = qword_1EDF24380;
  if (!qword_1EDF24380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24380);
  }

  return result;
}

unint64_t sub_1D5E19ECC()
{
  result = qword_1EDF24388;
  if (!qword_1EDF24388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24388);
  }

  return result;
}

unint64_t sub_1D5E19F20()
{
  result = qword_1EDF24390;
  if (!qword_1EDF24390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24390);
  }

  return result;
}

void sub_1D5E1A0C4()
{
  if (!qword_1EDF24FB0)
  {
    sub_1D5E1A148();
    sub_1D5E1A19C();
    sub_1D5E1A1F0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24FB0);
    }
  }
}

unint64_t sub_1D5E1A148()
{
  result = qword_1EDF231D8;
  if (!qword_1EDF231D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF231D8);
  }

  return result;
}

unint64_t sub_1D5E1A19C()
{
  result = qword_1EDF231E0;
  if (!qword_1EDF231E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF231E0);
  }

  return result;
}

unint64_t sub_1D5E1A1F0()
{
  result = qword_1EDF231E8;
  if (!qword_1EDF231E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF231E8);
  }

  return result;
}

void sub_1D5E1A2B4()
{
  if (!qword_1EDF25690)
  {
    sub_1D5E1A338();
    sub_1D5E1A38C();
    sub_1D5E1A3E0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25690);
    }
  }
}

unint64_t sub_1D5E1A338()
{
  result = qword_1EDF2FFF8;
  if (!qword_1EDF2FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FFF8);
  }

  return result;
}

unint64_t sub_1D5E1A38C()
{
  result = qword_1EDF30000;
  if (!qword_1EDF30000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30000);
  }

  return result;
}

unint64_t sub_1D5E1A3E0()
{
  result = qword_1EDF30008[0];
  if (!qword_1EDF30008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF30008);
  }

  return result;
}

unint64_t sub_1D5E1A434()
{
  result = qword_1EDF2ACE8;
  if (!qword_1EDF2ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ACE8);
  }

  return result;
}

void sub_1D5E1A4C4()
{
  if (!qword_1EDF24B80)
  {
    sub_1D5E1A548();
    sub_1D5E1A59C();
    sub_1D5E1A5F0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24B80);
    }
  }
}

unint64_t sub_1D5E1A548()
{
  result = qword_1EDF31318;
  if (!qword_1EDF31318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31318);
  }

  return result;
}

unint64_t sub_1D5E1A59C()
{
  result = qword_1EDF31320;
  if (!qword_1EDF31320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31320);
  }

  return result;
}

unint64_t sub_1D5E1A5F0()
{
  result = qword_1EDF31328;
  if (!qword_1EDF31328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31328);
  }

  return result;
}

void sub_1D5E1A678()
{
  if (!qword_1EDF05158)
  {
    type metadata accessor for FormatRegex();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05158);
    }
  }
}

unint64_t sub_1D5E1A6D0()
{
  result = qword_1EDF05150;
  if (!qword_1EDF05150)
  {
    sub_1D5E1A678();
    sub_1D5D40B60(&qword_1EDF34100, type metadata accessor for FormatRegex);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05150);
  }

  return result;
}

uint64_t sub_1D5E1A778(uint64_t a1)
{
  v2 = type metadata accessor for FormatRegex();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5E1A7D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D5E1A878()
{
  if (!qword_1EDF0C508)
  {
    sub_1D5E1A8FC();
    sub_1D5E1A950();
    sub_1D5E1A9A4();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0C508);
    }
  }
}

unint64_t sub_1D5E1A8FC()
{
  result = qword_1EDF0E0B8;
  if (!qword_1EDF0E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E0B8);
  }

  return result;
}

unint64_t sub_1D5E1A950()
{
  result = qword_1EDF0E0C0;
  if (!qword_1EDF0E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E0C0);
  }

  return result;
}

unint64_t sub_1D5E1A9A4()
{
  result = qword_1EDF0E0C8;
  if (!qword_1EDF0E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E0C8);
  }

  return result;
}

void sub_1D5E1AA68()
{
  if (!qword_1EDF25220)
  {
    sub_1D5E1AAEC();
    sub_1D5E1AB40();
    sub_1D5E1AB94();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25220);
    }
  }
}

unint64_t sub_1D5E1AAEC()
{
  result = qword_1EDF28140;
  if (!qword_1EDF28140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28140);
  }

  return result;
}

unint64_t sub_1D5E1AB40()
{
  result = qword_1EDF28148;
  if (!qword_1EDF28148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28148);
  }

  return result;
}

unint64_t sub_1D5E1AB94()
{
  result = qword_1EDF28150[0];
  if (!qword_1EDF28150[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF28150);
  }

  return result;
}

void sub_1D5E1AC58()
{
  if (!qword_1EC87F908)
  {
    sub_1D5E1ACDC();
    sub_1D5E1AD30();
    sub_1D5E1AD84();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC87F908);
    }
  }
}

unint64_t sub_1D5E1ACDC()
{
  result = qword_1EC87F910;
  if (!qword_1EC87F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F910);
  }

  return result;
}

unint64_t sub_1D5E1AD30()
{
  result = qword_1EC87F918;
  if (!qword_1EC87F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F918);
  }

  return result;
}

unint64_t sub_1D5E1AD84()
{
  result = qword_1EC87F920;
  if (!qword_1EC87F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F920);
  }

  return result;
}

unint64_t sub_1D5E1ADD8()
{
  result = qword_1EC87F948;
  if (!qword_1EC87F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F948);
  }

  return result;
}

void sub_1D5E1AE68()
{
  if (!qword_1EC87F958)
  {
    sub_1D5E1AEEC();
    sub_1D5E1AF40();
    sub_1D5E1AF94();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC87F958);
    }
  }
}

unint64_t sub_1D5E1AEEC()
{
  result = qword_1EC87F960;
  if (!qword_1EC87F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F960);
  }

  return result;
}

unint64_t sub_1D5E1AF40()
{
  result = qword_1EC87F968;
  if (!qword_1EC87F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F968);
  }

  return result;
}

unint64_t sub_1D5E1AF94()
{
  result = qword_1EC87F970;
  if (!qword_1EC87F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F970);
  }

  return result;
}

void sub_1D5E1B058()
{
  if (!qword_1EDF25250)
  {
    sub_1D5E1B0DC();
    sub_1D5E1B130();
    sub_1D5E1B184();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25250);
    }
  }
}

unint64_t sub_1D5E1B0DC()
{
  result = qword_1EDF28738;
  if (!qword_1EDF28738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28738);
  }

  return result;
}

unint64_t sub_1D5E1B130()
{
  result = qword_1EDF28740;
  if (!qword_1EDF28740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28740);
  }

  return result;
}

unint64_t sub_1D5E1B184()
{
  result = qword_1EDF28748[0];
  if (!qword_1EDF28748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF28748);
  }

  return result;
}

void sub_1D5E1B248()
{
  if (!qword_1EDF256B0)
  {
    sub_1D5E1B2CC();
    sub_1D5E1B320();
    sub_1D5E1B374();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF256B0);
    }
  }
}

unint64_t sub_1D5E1B2CC()
{
  result = qword_1EDF30488;
  if (!qword_1EDF30488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30488);
  }

  return result;
}

unint64_t sub_1D5E1B320()
{
  result = qword_1EDF30490;
  if (!qword_1EDF30490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30490);
  }

  return result;
}

unint64_t sub_1D5E1B374()
{
  result = qword_1EDF30498;
  if (!qword_1EDF30498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30498);
  }

  return result;
}

unint64_t sub_1D5E1B3C8()
{
  result = qword_1EDF2C4D8;
  if (!qword_1EDF2C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C4D8);
  }

  return result;
}

void sub_1D5E1B4C8()
{
  if (!qword_1EDF0C4D8)
  {
    sub_1D5E1B54C();
    sub_1D5E1B5A0();
    sub_1D5E1B5F4();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0C4D8);
    }
  }
}

unint64_t sub_1D5E1B54C()
{
  result = qword_1EDF0DAE8;
  if (!qword_1EDF0DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DAE8);
  }

  return result;
}

unint64_t sub_1D5E1B5A0()
{
  result = qword_1EDF0DAF0;
  if (!qword_1EDF0DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DAF0);
  }

  return result;
}

unint64_t sub_1D5E1B5F4()
{
  result = qword_1EDF0DAF8;
  if (!qword_1EDF0DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DAF8);
  }

  return result;
}

uint64_t sub_1D5E1B878(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49714(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5E1B918()
{
  if (!qword_1EDF25620)
  {
    sub_1D5E1B99C();
    sub_1D5E1B9F0();
    sub_1D5E1BA44();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25620);
    }
  }
}

unint64_t sub_1D5E1B99C()
{
  result = qword_1EDF2F5A8;
  if (!qword_1EDF2F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F5A8);
  }

  return result;
}

unint64_t sub_1D5E1B9F0()
{
  result = qword_1EDF2F5B0;
  if (!qword_1EDF2F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F5B0);
  }

  return result;
}

unint64_t sub_1D5E1BA44()
{
  result = qword_1EDF2F5B8;
  if (!qword_1EDF2F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F5B8);
  }

  return result;
}

unint64_t sub_1D5E1BA98()
{
  result = qword_1EDF27470;
  if (!qword_1EDF27470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27470);
  }

  return result;
}

void sub_1D5E1BBD4()
{
  if (!qword_1EDF24BC0)
  {
    sub_1D5E1BC58();
    sub_1D5E1BCAC();
    sub_1D5E1BD00();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24BC0);
    }
  }
}

unint64_t sub_1D5E1BC58()
{
  result = qword_1EDF31AB0;
  if (!qword_1EDF31AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31AB0);
  }

  return result;
}

unint64_t sub_1D5E1BCAC()
{
  result = qword_1EDF31AB8;
  if (!qword_1EDF31AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31AB8);
  }

  return result;
}

unint64_t sub_1D5E1BD00()
{
  result = qword_1EDF31AC0;
  if (!qword_1EDF31AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31AC0);
  }

  return result;
}

void sub_1D5E1BDC4()
{
  if (!qword_1EDF24CF0)
  {
    sub_1D5E1BE48();
    sub_1D5E1BE9C();
    sub_1D5E1BEF0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24CF0);
    }
  }
}

unint64_t sub_1D5E1BE48()
{
  result = qword_1EDF34318;
  if (!qword_1EDF34318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34318);
  }

  return result;
}

unint64_t sub_1D5E1BE9C()
{
  result = qword_1EDF34320;
  if (!qword_1EDF34320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34320);
  }

  return result;
}

unint64_t sub_1D5E1BEF0()
{
  result = qword_1EDF34328[0];
  if (!qword_1EDF34328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF34328);
  }

  return result;
}

void sub_1D5E1BFF0()
{
  if (!qword_1EDF25500)
  {
    sub_1D5E1C074();
    sub_1D5E1C0C8();
    sub_1D5E1C11C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25500);
    }
  }
}

unint64_t sub_1D5E1C074()
{
  result = qword_1EDF2CBD8;
  if (!qword_1EDF2CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CBD8);
  }

  return result;
}

unint64_t sub_1D5E1C0C8()
{
  result = qword_1EDF2CBE0;
  if (!qword_1EDF2CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CBE0);
  }

  return result;
}

unint64_t sub_1D5E1C11C()
{
  result = qword_1EDF2CBE8;
  if (!qword_1EDF2CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CBE8);
  }

  return result;
}

unint64_t sub_1D5E1C284()
{
  result = qword_1EC87F990;
  if (!qword_1EC87F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F990);
  }

  return result;
}

unint64_t sub_1D5E1C384()
{
  result = qword_1EDF11548;
  if (!qword_1EDF11548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11548);
  }

  return result;
}

unint64_t sub_1D5E1C448()
{
  result = qword_1EDF0BDA0[0];
  if (!qword_1EDF0BDA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0BDA0);
  }

  return result;
}

unint64_t sub_1D5E1C49C()
{
  result = qword_1EDF30148;
  if (!qword_1EDF30148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30148);
  }

  return result;
}

unint64_t sub_1D5E1C4F0()
{
  result = qword_1EDF29468[0];
  if (!qword_1EDF29468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF29468);
  }

  return result;
}

void sub_1D5E1C580()
{
  if (!qword_1EDF0C558)
  {
    sub_1D5E1C604();
    sub_1D5E1C658();
    sub_1D5E1C6AC();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0C558);
    }
  }
}

unint64_t sub_1D5E1C604()
{
  result = qword_1EDF0EFB0;
  if (!qword_1EDF0EFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EFB0);
  }

  return result;
}

unint64_t sub_1D5E1C658()
{
  result = qword_1EDF0EFB8;
  if (!qword_1EDF0EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EFB8);
  }

  return result;
}

unint64_t sub_1D5E1C6AC()
{
  result = qword_1EDF0EFC0;
  if (!qword_1EDF0EFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EFC0);
  }

  return result;
}

unint64_t sub_1D5E1C734()
{
  result = qword_1EDF217E8;
  if (!qword_1EDF217E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF217E8);
  }

  return result;
}

unint64_t sub_1D5E1C788()
{
  result = qword_1EDF07D68;
  if (!qword_1EDF07D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07D68);
  }

  return result;
}

unint64_t sub_1D5E1C84C()
{
  result = qword_1EC87F9E0;
  if (!qword_1EC87F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F9E0);
  }

  return result;
}

void sub_1D5E1C94C()
{
  if (!qword_1EC87F9F8)
  {
    sub_1D5E1C9D0();
    sub_1D5E1CA24();
    sub_1D5E1CA78();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC87F9F8);
    }
  }
}

unint64_t sub_1D5E1C9D0()
{
  result = qword_1EC87FA00;
  if (!qword_1EC87FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FA00);
  }

  return result;
}

unint64_t sub_1D5E1CA24()
{
  result = qword_1EC87FA08;
  if (!qword_1EC87FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FA08);
  }

  return result;
}

unint64_t sub_1D5E1CA78()
{
  result = qword_1EC87FA10;
  if (!qword_1EC87FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FA10);
  }

  return result;
}

uint64_t sub_1D5E1CB14(void *a1, uint64_t a2)
{
  sub_1D5E1D0C4(0, &qword_1EC87FA50, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1CFCC();
  sub_1D7264B5C();
  v11[1] = a2;
  sub_1D5E1D020();
  sub_1D5E1D128(&qword_1EC87FA58, sub_1D5E1D194);
  sub_1D726443C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D5E1CCB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C6966 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D5E1CD3C(uint64_t a1)
{
  v2 = sub_1D5E1CFCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5E1CD78(uint64_t a1)
{
  v2 = sub_1D5E1CFCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D5E1CDB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D5E1CDFC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1D5E1CDFC(void *a1)
{
  sub_1D5E1D0C4(0, &qword_1EC87FA28, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1CFCC();
  sub_1D7264B0C();
  if (!v1)
  {
    sub_1D5E1D020();
    sub_1D5E1D128(&qword_1EC87FA40, sub_1D5E1D070);
    sub_1D726431C();
    (*(v5 + 8))(v8, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D5E1CFCC()
{
  result = qword_1EC87FA30;
  if (!qword_1EC87FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FA30);
  }

  return result;
}

void sub_1D5E1D020()
{
  if (!qword_1EC87FA38)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC87FA38);
    }
  }
}

unint64_t sub_1D5E1D070()
{
  result = qword_1EC87FA48;
  if (!qword_1EC87FA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FA48);
  }

  return result;
}

void sub_1D5E1D0C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5E1CFCC();
    v7 = a3(a1, &type metadata for DebugFormatWorkspaceSnapshotBundle.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5E1D128(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5E1D020();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5E1D194()
{
  result = qword_1EC87FA60;
  if (!qword_1EC87FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FA60);
  }

  return result;
}

unint64_t sub_1D5E1D1FC()
{
  result = qword_1EC87FA68;
  if (!qword_1EC87FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FA68);
  }

  return result;
}

unint64_t sub_1D5E1D254()
{
  result = qword_1EC87FA70;
  if (!qword_1EC87FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FA70);
  }

  return result;
}

unint64_t sub_1D5E1D2AC()
{
  result = qword_1EC87FA78;
  if (!qword_1EC87FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FA78);
  }

  return result;
}

uint64_t _s8NewsFeed022FormatProgressViewNodeD0O2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v43 = *(a1 + 40);
  v7 = *(a1 + 48) | (*(a1 + 50) << 16);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 50);
  v13 = *(a2 + 48);
  v14 = v13 | (v12 << 16);
  v16 = *(a2 + 32);
  v15 = *(a2 + 40);
  v41 = v14;
  v42 = v7;
  v39 = v15;
  v40 = v8;
  if ((v7 & 0x80000000) != 0)
  {
    v51 = BYTE2(v7) & 1;
    if ((v14 & 0x80000000) != 0)
    {
      v50 = BYTE2(v14) & 1;
      v47[0] = v3;
      v47[1] = v2;
      v47[2] = v4;
      v47[3] = v5;
      v47[4] = v6;
      v47[5] = v43;
      v48 = v7;
      v49 = v51;
      v44[0] = v9;
      v44[1] = v8;
      v44[2] = v10;
      v44[3] = v11;
      v44[4] = v16;
      v44[5] = v15;
      v45 = v14;
      v46 = BYTE2(v14) & 1;
      v25 = v9;
      v26 = v9;
      v38 = v9;
      v27 = v4;
      v35 = v6;
      v34 = v16;
      v28 = v16;
      v29 = v14;
      v30 = v14;
      v31 = v2;
      v32 = v8;
      v33 = v3;
      v36 = v3;
      sub_1D5D0A5BC(v26, v8, v10, v11, v28, v15, v30);
      sub_1D5D0A5BC(v33, v31, v27, v5, v35, v43, v7);
      sub_1D5D0A5BC(v25, v32, v10, v11, v34, v39, v29);
      sub_1D5D0A5BC(v36, v31, v27, v5, v35, v43, v7);
      v24 = static FormatCommandBinding.== infix(_:_:)(v47, v44);
      sub_1D5D0A678(v36, v31, v27, v5, v35, v43, v7);
      sub_1D5D0A678(v38, v40, v10, v11, v34, v39, v41);
      sub_1D5D0A678(v38, v40, v10, v11, v34, v39, v41);
      sub_1D5D0A678(v36, v31, v27, v5, v35, v43, v7);
      return v24 & 1;
    }

    v17 = v3;
    v18 = v2;
    v19 = v5;
    v20 = v6;
  }

  else
  {
    v17 = *a1;
    v18 = *(a1 + 8);
    v19 = *(a1 + 24);
    v20 = *(a1 + 32);
    if ((v14 & 0x80000000) == 0)
    {
      v37 = *(a2 + 16);
      sub_1D5D0A5BC(v9, v8, v10, v11, v16, v15, v13 | (v12 << 16));
      v21 = v17;
      sub_1D5D0A5BC(v17, v18, v4, v19, v20, v43, v42);
      v22 = sub_1D633A310(v17, v9);
      sub_1D5D0A678(v21, v18, v4, v19, v20, v43, v42);
      sub_1D5D0A678(v9, v40, v37, v11, v16, v39, v14);
      return v22 & 1;
    }
  }

  sub_1D5D0A5BC(v9, v8, v10, v11, v16, v15, v14);
  sub_1D5D0A5BC(v17, v18, v4, v19, v20, v43, v42);
  sub_1D5D0A678(v17, v18, v4, v19, v20, v43, v42);
  sub_1D5D0A678(v9, v40, v10, v11, v16, v39, v14);
  v24 = 0;
  return v24 & 1;
}

unint64_t sub_1D5E1D6C4(uint64_t a1)
{
  result = sub_1D5E1D6EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5E1D6EC()
{
  result = qword_1EC87FA80;
  if (!qword_1EC87FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FA80);
  }

  return result;
}

unint64_t sub_1D5E1D740(void *a1)
{
  a1[1] = sub_1D5E1D778();
  a1[2] = sub_1D5E1D7CC();
  result = sub_1D5E1D820();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5E1D778()
{
  result = qword_1EDF3A3A0;
  if (!qword_1EDF3A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A3A0);
  }

  return result;
}

unint64_t sub_1D5E1D7CC()
{
  result = qword_1EDF16418;
  if (!qword_1EDF16418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16418);
  }

  return result;
}

unint64_t sub_1D5E1D820()
{
  result = qword_1EC87FA88;
  if (!qword_1EC87FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FA88);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed17FormatTextContentOSg(void *a1)
{
  v1 = (*a1 >> 60) & 0x8F | (16 * (*a1 & 7));
  v2 = v1 ^ 0x7E;
  v3 = 128 - v1;
  if (v2 >= 0x76)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed010FormatDateC0O(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed21FormatHeadlineBindingV4TextO(uint64_t a1)
{
  if ((*(a1 + 48) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 48) & 7;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed17FormatTemperatureOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (((2 * v1) & 0x7C) != 0)
  {
    return 128 - ((2 * v1) & 0x7C | (v1 >> 6));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed20FormatWeatherBindingV4TextO(uint64_t a1)
{
  if ((*(a1 + 17) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 17) & 7;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed19FormatPuzzleBindingV4TextO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed19FormatRecipeBindingV4TextO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3 - 1;
  if (v2 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D5E1D9CC(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = a1 + 48;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x7F;
  *result = v2;
  return result;
}

uint64_t sub_1D5E1D9E8(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  result = a1 + 48;
  *(result + 2) = ((v3 | (*(result + 2) << 16)) & 0x1FFFF | (a2 << 23)) >> 16;
  *result = v3;
  return result;
}

uint64_t sub_1D5E1DA1C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != 2)
  {
    if (a3 != 1)
    {
      return result;
    }

    sub_1D5CFCFAC(result);
  }
}

uint64_t sub_1D5E1DA6C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7)
{
  if ((a7 >> 14) > 1u)
  {
    if (a7 >> 14 == 2)
    {

      return sub_1D5E1DAEC(result, a2, a3, a4, a5, a6, a7, HIBYTE(a7) & 0x3F);
    }
  }

  else
  {
    if (a7 >> 14)
    {
    }
  }

  return result;
}

uint64_t sub_1D5E1DAEC(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v8 = ((2 * a8) | ((a7 & 8) != 0));
  if (v8 > 3)
  {
    switch(v8)
    {
      case 4u:
LABEL_12:

      case 8u:

        return sub_1D5E1DCD8(result, a2, a3, a4, a5, a6, a7);
      case 0xEu:

        return sub_1D5E1DCE8(result, a2, a3);
    }
  }

  else
  {
    if ((2 * a8) | ((a7 & 8) != 0))
    {
      if (v8 == 2)
      {
        return sub_1D5E1E0D4(result, a2, a3, a4, a5, a6, a7, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
      }

      if (v8 != 3)
      {
        return result;
      }

      goto LABEL_12;
    }

    return sub_1D5E1DC48(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_1D5E1DC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    return sub_1D5E1DC5C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D5E1DC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_1D5E1DCA8(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 a4)
{
  if (a4 <= 3u)
  {
    return sub_1D5E1DCBC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D5E1DCBC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_1D5E1DCD0(a1);
  }

  return a1;
}

uint64_t sub_1D5E1DCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (!a7)
  {
    return sub_1D5E1DC5C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D5E1DCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 3) >= 8)
  {
    return sub_1D5E1DC5C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D5E1DCFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, char a8, uint64_t (*a9)(void), uint64_t (*a10)(void), uint64_t (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a8)
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 & 0xFFFFFFF8 | (a7 >> 11) & 7;
  if (v12 > 5)
  {
    if (v12 == 6)
    {
      return sub_1D5E1DE60(result, a2, a3, a4, a9);
    }

    else if (v12 == 7)
    {
      v13 = a7 & 0xFFFFC7FF;

      return a11(result, a2, a3, a4, a5, a6, v13);
    }
  }

  else if (v12)
  {
    if (v12 == 3)
    {

      return a10();
    }
  }

  else
  {
    return sub_1D5E1DDA8(result, a2, a3, a4, a9, a9);
  }

  return result;
}

uint64_t sub_1D5E1DDA8(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = (a4 >> 3) & 7;
  if (v7 <= 2)
  {
    if (v7 && v7 != 2)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v7 == 3)
  {
LABEL_8:

    return a5();
  }

  if (v7 == 4)
  {
    return sub_1D5E1DE60(result, a2, a3, a4 & 0xC7, a6);
  }

  return result;
}

uint64_t sub_1D5E1DE10(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != 2)
  {
    if (a3 != 1)
    {
      return result;
    }

    sub_1D5C84FF4(result);
  }
}

uint64_t sub_1D5E1DE60(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t (*a5)(void))
{
  if ((a4 >> 6) <= 1u)
  {
    return a5();
  }

  if (a4 >> 6 == 2)
  {
    return (a5)(a2, a3, a4 & 0x3F);
  }

  return result;
}

uint64_t sub_1D5E1DE98(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7)
{
  if ((a7 >> 14) > 1u)
  {
    if (a7 >> 14 == 2)
    {

      return sub_1D5E1DF18(result, a2, a3, a4, a5, a6, a7, HIBYTE(a7) & 0x3F);
    }
  }

  else
  {
    if (a7 >> 14)
    {
    }
  }

  return result;
}

uint64_t sub_1D5E1DF18(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v8 = ((2 * a8) | ((a7 & 8) != 0));
  if (v8 > 3)
  {
    switch(v8)
    {
      case 4u:
LABEL_12:

      case 8u:

        return sub_1D5E1E164(result, a2, a3, a4, a5, a6, a7);
      case 0xEu:

        return sub_1D5E1E174(result, a2, a3);
    }
  }

  else
  {
    if ((2 * a8) | ((a7 & 8) != 0))
    {
      if (v8 == 2)
      {
        return sub_1D5E1E0D4(result, a2, a3, a4, a5, a6, a7, sub_1D5E1E074, sub_1D5E1E134, sub_1D5E1E164, sub_1D5E1E174);
      }

      if (v8 != 3)
      {
        return result;
      }

      goto LABEL_12;
    }

    return sub_1D5E1E074(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_1D5E1E074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    return sub_1D5E1E088(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D5E1E088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_1D5E1E0D4(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t (*a8)(void), uint64_t (*a9)(uint64_t, uint64_t, unint64_t, unint64_t), uint64_t (*a10)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t (*a11)(void))
{
  v11 = a7 >> 4;
  if (v11 > 8)
  {
    if (v11 == 9)
    {
      return a10(result, a2, a3, a4, a5, a6, a7 & 0xF);
    }

    else if (v11 == 12)
    {
      return a11();
    }
  }

  else if (a7 >> 4)
  {
    if (v11 == 3)
    {
      return a9(result, a2, a3, a3 >> 8);
    }
  }

  else
  {
    return a8();
  }

  return result;
}

uint64_t sub_1D5E1E134(uint64_t a1, uint64_t a2, char a3, unsigned __int8 a4)
{
  if (a4 <= 3u)
  {
    return sub_1D5E1E148(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D5E1E148(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_1D5E1E15C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D5E1E164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (!a7)
  {
    return sub_1D5E1E088(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D5E1E174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 3) >= 8)
  {
    return sub_1D5E1E088(a1, a2, a3);
  }

  return a1;
}

BOOL static FormatCodingAllColumnsStrategy.shouldEncode(wrappedValue:)(uint64_t a1)
{
  v2 = sub_1D5C8DCC0(&unk_1F50F3420);
  LOBYTE(a1) = sub_1D5E21790(a1, v2);

  return (a1 & 1) == 0;
}

char *static FormatCodingAllColumnsStrategy.encode(wrappedValue:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_1D5C104B8(*(a1 + 16), 0);
  v4 = sub_1D5E24B6C(&v6, v3 + 4, v1, a1);

  sub_1D5B87E38();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x1E69E7CC0];
  }

  v6 = v3;

  sub_1D5E239F4(&v6);

  return v6;
}

void *sub_1D5E1E2D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D5C104B8(*(a1 + 16), 0);
  v4 = sub_1D5E24B6C(&v6, v3 + 4, v2, a1);
  sub_1D5B87E38();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void *sub_1D5E1E368(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D5E23B6C(*(a1 + 16), 0, &unk_1EDF198A8, &type metadata for FormatBorderEdge);
  v4 = sub_1D5E24DD0(&v6, v3 + 32, v2, a1);
  sub_1D5B87E38();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void *sub_1D5E1E408(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D5BA4548(*(a1 + 16), 0, &qword_1EDF195B0, MEMORY[0x1E69E6158]);
  v4 = sub_1D5B9A6EC(&v6, v3 + 4, v2, a1);
  sub_1D5B87E38();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1D5E1E4A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5C8DCC0(&unk_1F50F3140);
  *a1 = result;
  return result;
}

BOOL sub_1D5E1E4D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1D5C8DCC0(&unk_1F50F2C18);
  LOBYTE(v1) = sub_1D5E21790(v1, v2);

  return (v1 & 1) == 0;
}

uint64_t sub_1D5E1E528@<X0>(void *a1@<X8>)
{

  v4 = sub_1D5E1E2D8(v2);

  sub_1D5E239F4(&v4);

  *a1 = v4;
  return result;
}

uint64_t sub_1D5E1E5A4(uint64_t result, uint64_t a2)
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
    sub_1D7264A0C();
    FormatOptionType.rawValue.getter();
    sub_1D72621EC();

    v16 = sub_1D7264A5C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v36 = v12;
    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + v18);
      if (v20 <= 5)
      {
        break;
      }

      if (*(*(a2 + 48) + v18) > 8u)
      {
        if (v20 == 9)
        {
          v22 = 0xE500000000000000;
          v21 = 0x6F65646976;
          if (v15 > 5)
          {
            goto LABEL_63;
          }
        }

        else if (v20 == 10)
        {
          v22 = 0xE400000000000000;
          v21 = 1953394534;
          if (v15 > 5)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v21 = 0x616C506F65646976;
          v22 = 0xEB00000000726579;
          if (v15 > 5)
          {
            goto LABEL_63;
          }
        }
      }

      else if (v20 == 6)
      {
        v22 = 0xE300000000000000;
        v21 = 7107189;
        if (v15 > 5)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v22 = 0xE500000000000000;
        if (v20 == 7)
        {
          v21 = 0x726F6C6F63;
          if (v15 > 5)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v21 = 0x6567616D69;
          if (v15 > 5)
          {
            goto LABEL_63;
          }
        }
      }

LABEL_22:
      if (v15 > 2)
      {
        v25 = 0x72656765746E69;
        if (v15 != 4)
        {
          v25 = 0x676E69727473;
        }

        v26 = 0xE700000000000000;
        if (v15 != 4)
        {
          v26 = 0xE600000000000000;
        }

        if (v15 == 3)
        {
          v27 = 0x74616F6C66;
        }

        else
        {
          v27 = v25;
        }

        if (v15 == 3)
        {
          v24 = 0xE500000000000000;
        }

        else
        {
          v24 = v26;
        }

        if (v21 == v27)
        {
          goto LABEL_80;
        }
      }

      else if (v15)
      {
        if (v15 == 1)
        {
          v23 = 1702125924;
        }

        else
        {
          v23 = 1836412517;
        }

        v24 = 0xE400000000000000;
        if (v21 == v23)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v24 = 0xE700000000000000;
        if (v21 == 0x6E61656C6F6F62)
        {
          goto LABEL_80;
        }
      }

LABEL_81:
      v33 = sub_1D72646CC();

      if (v33)
      {
        goto LABEL_91;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v18) > 2u)
    {
      if (v20 == 3)
      {
        v22 = 0xE500000000000000;
        v21 = 0x74616F6C66;
        if (v15 > 5)
        {
          goto LABEL_63;
        }
      }

      else if (v20 == 4)
      {
        v22 = 0xE700000000000000;
        v21 = 0x72656765746E69;
        if (v15 > 5)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v22 = 0xE600000000000000;
        v21 = 0x676E69727473;
        if (v15 > 5)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_22;
    }

    if (!*(*(a2 + 48) + v18))
    {
      v22 = 0xE700000000000000;
      v21 = 0x6E61656C6F6F62;
      if (v15 > 5)
      {
        goto LABEL_63;
      }

      goto LABEL_22;
    }

    if (v20 == 1)
    {
      v21 = 1702125924;
    }

    else
    {
      v21 = 1836412517;
    }

    v22 = 0xE400000000000000;
    if (v15 <= 5)
    {
      goto LABEL_22;
    }

LABEL_63:
    v28 = 0x616C506F65646976;
    if (v15 == 10)
    {
      v28 = 1953394534;
    }

    v29 = 0xEB00000000726579;
    if (v15 == 10)
    {
      v29 = 0xE400000000000000;
    }

    if (v15 == 9)
    {
      v28 = 0x6F65646976;
      v29 = 0xE500000000000000;
    }

    v30 = 0x726F6C6F63;
    if (v15 != 7)
    {
      v30 = 0x6567616D69;
    }

    v31 = 0xE500000000000000;
    if (v15 == 6)
    {
      v30 = 7107189;
      v31 = 0xE300000000000000;
    }

    if (v15 <= 8)
    {
      v32 = v30;
    }

    else
    {
      v32 = v28;
    }

    if (v15 <= 8)
    {
      v24 = v31;
    }

    else
    {
      v24 = v29;
    }

    if (v21 != v32)
    {
      goto LABEL_81;
    }

LABEL_80:
    if (v22 != v24)
    {
      goto LABEL_81;
    }

LABEL_91:
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