uint64_t sub_24ECE8F94(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v104 = result;
  v127 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_117:
    v9 = *v104;
    if (!*v104)
    {
      goto LABEL_155;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_119:
      v126 = v8;
      v95 = v8;
      v96 = *(v8 + 16);
      if (v96 >= 2)
      {
        while (*v127)
        {
          v97 = *&v95[16 * v96];
          v98 = *&v95[16 * v96 + 24];
          sub_24ECEA598((*v127 + 192 * v97), (*v127 + 192 * *&v95[16 * v96 + 16]), (*v127 + 192 * v98), v9);
          if (v5)
          {
          }

          if (v98 < v97)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = sub_24E86164C(v95);
          }

          if (v96 - 2 >= *(v95 + 2))
          {
            goto LABEL_143;
          }

          v99 = &v95[16 * v96];
          *v99 = v97;
          *(v99 + 1) = v98;
          v126 = v95;
          v8 = &v126;
          result = sub_24E8615C0(v96 - 1);
          v95 = v126;
          v96 = *(v126 + 16);
          if (v96 <= 1)
          {
          }
        }

        goto LABEL_153;
      }
    }

LABEL_149:
    result = sub_24E86164C(v8);
    v8 = result;
    goto LABEL_119;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = (v7 + 1);
    if ((v7 + 1) < v6)
    {
      v101 = v8;
      v11 = *v127;
      v12 = v7 + 1;
      sub_24ECEBE24(*v127 + 192 * v10, &v115);
      v105 = v9;
      sub_24ECEBE24(v11 + 192 * v9, v114);
      sub_24ECEBE24(&v115, v111);
      v13 = v113;
      sub_24ECEB9B4(v112);
      sub_24ECEBE24(v114, v111);
      v14 = v113;
      sub_24ECEB9B4(v112);
      v102 = v5;
      if (v13)
      {
        if ((v14 & 1) == 0)
        {
          v108 = 0;
LABEL_16:
          v17 = v12;
          sub_24ECEBE94(v114);
          result = sub_24ECEBE94(&v115);
          v18 = (v105 + 2);
          v8 = 192 * v105;
          v19 = v11 + 192 * v105 + 384;
          v20 = 192 * v105 + 192;
          while (1)
          {
            v23 = v18;
            v9 = v17;
            v5 = v20;
            if (v18 >= v6)
            {
LABEL_29:
              if (v108)
              {
                v26 = v105;
                if (v23 < v105)
                {
                  goto LABEL_146;
                }

                if (v105 >= v23)
                {
                  v10 = v23;
                  v8 = v101;
                  v5 = v102;
                  v9 = v105;
                  goto LABEL_39;
                }

                do
                {
                  if (v26 != v9)
                  {
                    v27 = *v127;
                    if (!*v127)
                    {
                      goto LABEL_152;
                    }

                    v28 = (v27 + v5);
                    v123 = *(v27 + v8 + 128);
                    v124 = *(v27 + v8 + 144);
                    v125[0] = *(v27 + v8 + 160);
                    *(v125 + 10) = *(v27 + v8 + 170);
                    v119 = *(v27 + v8 + 64);
                    v120 = *(v27 + v8 + 80);
                    v121 = *(v27 + v8 + 96);
                    v122 = *(v27 + v8 + 112);
                    v115 = *(v27 + v8);
                    v116 = *(v27 + v8 + 16);
                    v117 = *(v27 + v8 + 32);
                    v118 = *(v27 + v8 + 48);
                    result = memmove((v27 + v8), (v27 + v5), 0xC0uLL);
                    v28[8] = v123;
                    v28[9] = v124;
                    v28[10] = v125[0];
                    *(v28 + 170) = *(v125 + 10);
                    v28[4] = v119;
                    v28[5] = v120;
                    v28[6] = v121;
                    v28[7] = v122;
                    *v28 = v115;
                    v28[1] = v116;
                    v28[2] = v117;
                    v28[3] = v118;
                  }

                  ++v26;
                  v5 -= 192;
                  v8 += 192;
                  v15 = v26 < v9--;
                }

                while (v15);
              }

              v10 = v23;
              v8 = v101;
              v5 = v102;
              v9 = v105;
              goto LABEL_39;
            }

            sub_24ECEBE24(v19, &v115);
            sub_24ECEBE24(v19 - 192, v114);
            sub_24ECEBE24(&v115, v111);
            v24 = v113;
            sub_24ECEB9B4(v112);
            sub_24ECEBE24(v114, v111);
            v25 = v113;
            sub_24ECEB9B4(v112);
            if (v24)
            {
              if (v25)
              {
                v21 = v114[0] < v115;
LABEL_18:
                v22 = v21;
                goto LABEL_21;
              }

              v22 = 0;
            }

            else
            {
              if ((v25 & 1) == 0)
              {
                v21 = v115 < v114[0];
                goto LABEL_18;
              }

              v22 = 1;
            }

LABEL_21:
            sub_24ECEBE94(v114);
            result = sub_24ECEBE94(&v115);
            v18 = v23 + 1;
            v19 += 192;
            v17 = v9 + 1;
            v20 = v5 + 192;
            if (v108 != v22)
            {
              goto LABEL_29;
            }
          }
        }

        v15 = v114[0] < v115;
      }

      else
      {
        if (v14)
        {
          v16 = 1;
LABEL_15:
          v108 = v16;
          goto LABEL_16;
        }

        v15 = v115 < v114[0];
      }

      v16 = v15;
      goto LABEL_15;
    }

LABEL_39:
    v29 = v127[1];
    if (v10 < v29)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_145;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_66:
    if (v10 < v9)
    {
      goto LABEL_144;
    }

    v110 = v10;
    result = swift_isUniquelyReferenced_nonNull_native();
    v48 = v5;
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v50 = *(v8 + 16);
    v49 = *(v8 + 24);
    v5 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      result = sub_24E615ED8((v49 > 1), v50 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v5;
    v51 = v8 + 16 * v50;
    *(v51 + 32) = v9;
    *(v51 + 40) = v110;
    v52 = *v104;
    if (!*v104)
    {
      goto LABEL_154;
    }

    if (v50)
    {
      while (1)
      {
        v53 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v54 = *(v8 + 32);
          v55 = *(v8 + 40);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_86:
          if (v57)
          {
            goto LABEL_133;
          }

          v70 = (v8 + 16 * v5);
          v72 = *v70;
          v71 = v70[1];
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_136;
          }

          v76 = (v8 + 32 + 16 * v53);
          v78 = *v76;
          v77 = v76[1];
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_140;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v5 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        v80 = (v8 + 16 * v5);
        v82 = *v80;
        v81 = v80[1];
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_100:
        if (v75)
        {
          goto LABEL_135;
        }

        v83 = v8 + 16 * v53;
        v85 = *(v83 + 32);
        v84 = *(v83 + 40);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_138;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_107:
        v91 = v53 - 1;
        if (v53 - 1 >= v5)
        {
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
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v127)
        {
          goto LABEL_151;
        }

        v92 = v8;
        v93 = *(v8 + 32 + 16 * v91);
        v9 = *(v8 + 32 + 16 * v53 + 8);
        sub_24ECEA598((*v127 + 192 * v93), (*v127 + 192 * *(v8 + 32 + 16 * v53)), (*v127 + 192 * v9), v52);
        v5 = v48;
        if (v48)
        {
        }

        if (v9 < v93)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_24E86164C(v8);
        }

        if (v91 >= *(v92 + 2))
        {
          goto LABEL_130;
        }

        v94 = &v92[16 * v91];
        *(v94 + 4) = v93;
        *(v94 + 5) = v9;
        v126 = v92;
        result = sub_24E8615C0(v53);
        v8 = v126;
        v5 = *(v126 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = v8 + 32 + 16 * v5;
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_131;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_132;
      }

      v65 = (v8 + 16 * v5);
      v67 = *v65;
      v66 = v65[1];
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_134;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_137;
      }

      if (v69 >= v61)
      {
        v87 = (v8 + 32 + 16 * v53);
        v89 = *v87;
        v88 = v87[1];
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_141;
        }

        if (v56 < v90)
        {
          v53 = v5 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_86;
    }

LABEL_3:
    v6 = v127[1];
    v7 = v110;
    v5 = v48;
    if (v110 >= v6)
    {
      goto LABEL_117;
    }
  }

  v30 = &v9[a4];
  if (__OFADD__(v9, a4))
  {
    goto LABEL_147;
  }

  if (v30 >= v29)
  {
    v30 = v127[1];
  }

  if (v30 < v9)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v10 == v30)
  {
    goto LABEL_66;
  }

  v103 = v5;
  v31 = *v127;
  v32 = *v127 + 192 * v10;
  v106 = v9;
  v107 = v30;
  v33 = &v9[-v10];
LABEL_50:
  v109 = v10;
  v34 = v33;
  v35 = v32;
  while (1)
  {
    sub_24ECEBE24(v35, &v115);
    v36 = v35 - 12;
    sub_24ECEBE24((v35 - 12), v114);
    sub_24ECEBE24(&v115, v111);
    v37 = v113;
    sub_24ECEB9B4(v112);
    sub_24ECEBE24(v114, v111);
    v38 = v113;
    sub_24ECEB9B4(v112);
    if (v37)
    {
      if ((v38 & 1) == 0)
      {
        sub_24ECEBE94(v114);
        sub_24ECEBE94(&v115);
LABEL_49:
        v10 = v109 + 1;
        v32 += 192;
        --v33;
        if ((v109 + 1) == v107)
        {
          v10 = v107;
          v5 = v103;
          v9 = v106;
          goto LABEL_66;
        }

        goto LABEL_50;
      }

      v39 = v114[0] < v115;
    }

    else
    {
      if (v38)
      {
        sub_24ECEBE94(v114);
        result = sub_24ECEBE94(&v115);
        goto LABEL_61;
      }

      v39 = v115 < v114[0];
    }

    v40 = v39;
    sub_24ECEBE94(v114);
    result = sub_24ECEBE94(&v115);
    if ((v40 & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_61:
    if (!v31)
    {
      break;
    }

    v123 = v35[8];
    v124 = v35[9];
    v125[0] = v35[10];
    *(v125 + 10) = *(v35 + 170);
    v119 = v35[4];
    v120 = v35[5];
    v121 = v35[6];
    v122 = v35[7];
    v115 = *v35;
    v116 = v35[1];
    v117 = v35[2];
    v118 = v35[3];
    v41 = *(v35 - 3);
    v35[8] = *(v35 - 4);
    v35[9] = v41;
    v42 = *(v35 - 1);
    v35[10] = *(v35 - 2);
    v35[11] = v42;
    v43 = *(v35 - 7);
    v35[4] = *(v35 - 8);
    v35[5] = v43;
    v44 = *(v35 - 5);
    v35[6] = *(v35 - 6);
    v35[7] = v44;
    v45 = *(v35 - 11);
    *v35 = *v36;
    v35[1] = v45;
    v46 = *(v35 - 9);
    v35[2] = *(v35 - 10);
    v35[3] = v46;
    *(v35 - 4) = v123;
    *(v35 - 3) = v124;
    *(v35 - 2) = v125[0];
    *(v35 - 22) = *(v125 + 10);
    *(v35 - 8) = v119;
    *(v35 - 7) = v120;
    *(v35 - 6) = v121;
    *(v35 - 5) = v122;
    *v36 = v115;
    *(v35 - 11) = v116;
    *(v35 - 10) = v117;
    *(v35 - 9) = v118;
    v35 -= 12;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_49;
    }
  }

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
  return result;
}

uint64_t sub_24ECE9910(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v98 = result;
  v119 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_101:
    v7 = *v98;
    if (!*v98)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_103:
      v118 = v8;
      v89 = v8;
      v8 = *(v8 + 16);
      if (v8 >= 2)
      {
        while (*v119)
        {
          v90 = *&v89[16 * v8];
          v91 = *&v89[16 * v8 + 24];
          sub_24ECEA91C((*v119 + 192 * v90), (*v119 + 192 * *&v89[16 * v8 + 16]), (*v119 + 192 * v91), v7);
          if (v5)
          {
          }

          if (v91 < v90)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v89 = sub_24E86164C(v89);
          }

          if ((v8 - 2) >= *(v89 + 2))
          {
            goto LABEL_127;
          }

          v92 = &v89[16 * v8];
          *v92 = v90;
          *(v92 + 1) = v91;
          v118 = v89;
          result = sub_24E8615C0(v8 - 1);
          v89 = v118;
          v8 = *(v118 + 16);
          if (v8 <= 1)
          {
          }
        }

        goto LABEL_137;
      }
    }

LABEL_133:
    result = sub_24E86164C(v8);
    v8 = result;
    goto LABEL_103;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    v99 = v7;
    if (v7 + 1 < v6)
    {
      v94 = v8;
      v11 = *v119;
      sub_24ECEBE24(*v119 + 192 * v10, &v107);
      sub_24ECEBE24(v11 + 192 * v7, v106);
      sub_24ECEBE24(&v107, v103);
      v12 = v105;
      sub_24ECEB9B4(v104);
      sub_24ECEBE24(v106, v103);
      v7 = v105;
      sub_24ECEB9B4(v104);
      v96 = v5;
      if (3 - v7 >= (3 - v12))
      {
        v101 = v7 == v12 && v107 < v106[0];
      }

      else
      {
        v101 = 1;
      }

      sub_24ECEBE94(v106);
      result = sub_24ECEBE94(&v107);
      v13 = v9 + 2;
      v14 = 192 * v9;
      v15 = v11 + 192 * v9 + 384;
      v16 = v14 + 192;
      do
      {
        v19 = v13;
        v8 = v10;
        v5 = v16;
        if (v13 >= v6)
        {
          break;
        }

        sub_24ECEBE24(v15, &v107);
        sub_24ECEBE24(v15 - 192, v106);
        sub_24ECEBE24(&v107, v103);
        v7 = v105;
        sub_24ECEB9B4(v104);
        sub_24ECEBE24(v106, v103);
        v20 = v105;
        sub_24ECEB9B4(v104);
        v17 = 3 - v20 < (3 - v7) || v20 == v7 && v107 < v106[0];
        sub_24ECEBE94(v106);
        result = sub_24ECEBE94(&v107);
        v13 = v19 + 1;
        v15 += 192;
        v16 = v5 + 192;
        v18 = v101 == v17;
        v10 = v8 + 1;
      }

      while (v18);
      if (!v101)
      {
        goto LABEL_28;
      }

      v21 = v99;
      if (v19 < v99)
      {
        goto LABEL_130;
      }

      if (v99 < v19)
      {
        do
        {
          if (v21 != v8)
          {
            v23 = *v119;
            if (!*v119)
            {
              goto LABEL_136;
            }

            v24 = (v23 + v5);
            v115 = *(v23 + v14 + 128);
            v116 = *(v23 + v14 + 144);
            v117[0] = *(v23 + v14 + 160);
            v7 = &v107;
            *(v117 + 10) = *(v23 + v14 + 170);
            v111 = *(v23 + v14 + 64);
            v112 = *(v23 + v14 + 80);
            v113 = *(v23 + v14 + 96);
            v114 = *(v23 + v14 + 112);
            v107 = *(v23 + v14);
            v108 = *(v23 + v14 + 16);
            v109 = *(v23 + v14 + 32);
            v110 = *(v23 + v14 + 48);
            result = memmove((v23 + v14), (v23 + v5), 0xC0uLL);
            v24[8] = v115;
            v24[9] = v116;
            v24[10] = v117[0];
            *(v24 + 170) = *(v117 + 10);
            v24[4] = v111;
            v24[5] = v112;
            v24[6] = v113;
            v24[7] = v114;
            *v24 = v107;
            v24[1] = v108;
            v24[2] = v109;
            v24[3] = v110;
          }

          ++v21;
          v5 -= 192;
          v14 += 192;
        }

        while (v21 < v8--);
LABEL_28:
        v10 = v19;
        v8 = v94;
        v5 = v96;
        v9 = v99;
        goto LABEL_29;
      }

      v10 = v19;
      v8 = v94;
      v5 = v96;
      v9 = v99;
    }

LABEL_29:
    v25 = v119[1];
    if (v10 < v25)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_129;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_50:
    if (v10 < v9)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v42 = *(v8 + 16);
    v41 = *(v8 + 24);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_24E615ED8((v41 > 1), v42 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v43;
    v44 = v8 + 16 * v42;
    *(v44 + 32) = v99;
    *(v44 + 40) = v10;
    v45 = *v98;
    if (!*v98)
    {
      goto LABEL_138;
    }

    v7 = v10;
    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v8 + 32);
          v48 = *(v8 + 40);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_70:
          if (v50)
          {
            goto LABEL_117;
          }

          v63 = (v8 + 16 * v43);
          v65 = *v63;
          v64 = v63[1];
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_120;
          }

          v69 = (v8 + 32 + 16 * v46);
          v71 = *v69;
          v70 = v69[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_124;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v73 = (v8 + 16 * v43);
        v75 = *v73;
        v74 = v73[1];
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_84:
        if (v68)
        {
          goto LABEL_119;
        }

        v76 = v8 + 16 * v46;
        v78 = *(v76 + 32);
        v77 = *(v76 + 40);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_122;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_91:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v119)
        {
          goto LABEL_135;
        }

        v85 = v8;
        v86 = v8 + 32;
        v8 = *(v8 + 32 + 16 * v84);
        v87 = *(v86 + 16 * v46 + 8);
        sub_24ECEA91C((*v119 + 192 * v8), (*v119 + 192 * *(v86 + 16 * v46)), (*v119 + 192 * v87), v45);
        if (v5)
        {
        }

        if (v87 < v8)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_24E86164C(v85);
        }

        if (v84 >= *(v85 + 2))
        {
          goto LABEL_114;
        }

        v88 = &v85[16 * v84];
        *(v88 + 4) = v8;
        *(v88 + 5) = v87;
        v118 = v85;
        result = sub_24E8615C0(v46);
        v8 = v118;
        v43 = *(v118 + 16);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = v8 + 32 + 16 * v43;
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_115;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_116;
      }

      v58 = (v8 + 16 * v43);
      v60 = *v58;
      v59 = v58[1];
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_118;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_121;
      }

      if (v62 >= v54)
      {
        v80 = (v8 + 32 + 16 * v46);
        v82 = *v80;
        v81 = v80[1];
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_125;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v6 = v119[1];
    if (v7 >= v6)
    {
      goto LABEL_101;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_131;
  }

  if (v9 + a4 < v25)
  {
    v25 = v9 + a4;
  }

  if (v25 < v9)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v10 == v25)
  {
    goto LABEL_50;
  }

  v100 = v25;
  v95 = v8;
  v97 = v5;
  v26 = *v119;
  v27 = *v119 + 192 * v10;
  v28 = v9 - v10;
LABEL_40:
  v102 = v10;
  v29 = v28;
  v30 = v27;
  while (1)
  {
    sub_24ECEBE24(v30, &v107);
    v31 = v30 - 12;
    sub_24ECEBE24((v30 - 12), v106);
    sub_24ECEBE24(&v107, v103);
    v7 = v105;
    sub_24ECEB9B4(v104);
    sub_24ECEBE24(v106, v103);
    v32 = v105;
    sub_24ECEB9B4(v104);
    if (3 - v32 >= (3 - v7))
    {
      if (v32 != v7)
      {
        sub_24ECEBE94(v106);
        sub_24ECEBE94(&v107);
LABEL_39:
        v10 = v102 + 1;
        v27 += 192;
        --v28;
        if (v102 + 1 == v100)
        {
          v9 = v99;
          v10 = v100;
          v8 = v95;
          v5 = v97;
          goto LABEL_50;
        }

        goto LABEL_40;
      }

      v7 = v107;
      v33 = v106[0];
      sub_24ECEBE94(v106);
      result = sub_24ECEBE94(&v107);
      if (v7 >= v33)
      {
        goto LABEL_39;
      }
    }

    else
    {
      sub_24ECEBE94(v106);
      result = sub_24ECEBE94(&v107);
    }

    if (!v26)
    {
      break;
    }

    v115 = v30[8];
    v116 = v30[9];
    v117[0] = v30[10];
    *(v117 + 10) = *(v30 + 170);
    v111 = v30[4];
    v112 = v30[5];
    v113 = v30[6];
    v114 = v30[7];
    v107 = *v30;
    v108 = v30[1];
    v109 = v30[2];
    v110 = v30[3];
    v34 = *(v30 - 3);
    v30[8] = *(v30 - 4);
    v30[9] = v34;
    v35 = *(v30 - 1);
    v30[10] = *(v30 - 2);
    v30[11] = v35;
    v36 = *(v30 - 7);
    v30[4] = *(v30 - 8);
    v30[5] = v36;
    v37 = *(v30 - 5);
    v30[6] = *(v30 - 6);
    v30[7] = v37;
    v38 = *(v30 - 11);
    *v30 = *v31;
    v30[1] = v38;
    v39 = *(v30 - 9);
    v30[2] = *(v30 - 10);
    v30[3] = v39;
    *(v30 - 4) = v115;
    *(v30 - 3) = v116;
    *(v30 - 2) = v117[0];
    *(v30 - 22) = *(v117 + 10);
    *(v30 - 8) = v111;
    *(v30 - 7) = v112;
    *(v30 - 6) = v113;
    *(v30 - 5) = v114;
    *v31 = v107;
    *(v30 - 11) = v108;
    *(v30 - 10) = v109;
    *(v30 - 9) = v110;
    v30 -= 12;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_39;
    }
  }

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
  return result;
}

uint64_t sub_24ECEA268(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 192;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 192;
  if (v9 >= v11)
  {
    v19 = 192 * v11;
    if (a4 != __src || &__src[v19] <= a4)
    {
      memmove(a4, __src, 192 * v11);
    }

    v13 = &v4[v19];
    if (v10 < 192 || v6 <= v7)
    {
      v18 = v6;
    }

    else
    {
      v37 = v4;
      v31 = v7;
      do
      {
        v20 = (v6 - 192);
        v21 = v13 - 192;
        v5 -= 192;
        while (1)
        {
          v24 = v21 + 192;
          v25 = v5 + 192;
          sub_24ECEBE24(v21, v36);
          v26 = v20;
          sub_24ECEBE24(v20, v35);
          sub_24ECEBE24(v36, v32);
          v27 = v34;
          sub_24ECEB9B4(v33);
          sub_24ECEBE24(v35, v32);
          v28 = v34;
          sub_24ECEB9B4(v33);
          sub_24ECEBE94(v35);
          sub_24ECEBE94(v36);
          if (v27 < v28)
          {
            break;
          }

          if (v25 != v24)
          {
            memmove(v5, v21, 0xC0uLL);
          }

          v22 = v21 - 192;
          v5 -= 192;
          v23 = v21 > v37;
          v21 -= 192;
          v20 = v26;
          if (!v23)
          {
            v13 = v22 + 192;
            v18 = v6;
            v4 = v37;
            goto LABEL_34;
          }
        }

        v17 = v25 == v6;
        v18 = v26;
        if (!v17)
        {
          memmove(v5, v26, 0xC0uLL);
        }

        v4 = v37;
        v13 = v21 + 192;
        if (v24 <= v37)
        {
          break;
        }

        v6 = v18;
      }

      while (v18 > v31);
      v13 = v21 + 192;
    }
  }

  else
  {
    v12 = 192 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 >= 192 && v6 < v5)
    {
      while (1)
      {
        sub_24ECEBE24(v6, v36);
        sub_24ECEBE24(v4, v35);
        sub_24ECEBE24(v36, v32);
        v14 = v34;
        sub_24ECEB9B4(v33);
        sub_24ECEBE24(v35, v32);
        v15 = v34;
        sub_24ECEB9B4(v33);
        sub_24ECEBE94(v35);
        sub_24ECEBE94(v36);
        if (v14 >= v15)
        {
          break;
        }

        v16 = v6;
        v17 = v7 == v6;
        v6 += 192;
        if (!v17)
        {
          goto LABEL_12;
        }

LABEL_13:
        v7 += 192;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_15;
        }
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 192;
      if (v17)
      {
        goto LABEL_13;
      }

LABEL_12:
      memmove(v7, v16, 0xC0uLL);
      goto LABEL_13;
    }

LABEL_15:
    v18 = v7;
  }

LABEL_34:
  v29 = 192 * ((v13 - v4) / 192);
  if (v18 != v4 || v18 >= &v4[v29])
  {
    memmove(v18, v4, v29);
  }

  return 1;
}

uint64_t sub_24ECEA598(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 192;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 192;
  if (v9 >= v11)
  {
    v21 = 192 * v11;
    if (a4 != __src || &__src[v21] <= a4)
    {
      memmove(a4, __src, 192 * v11);
    }

    v13 = &v4[v21];
    if (v10 < 192 || v6 <= v7)
    {
LABEL_52:
      v20 = v6;
      goto LABEL_53;
    }

    while (1)
    {
      v20 = v6 - 192;
      v22 = v13 - 192;
      v5 -= 192;
      while (1)
      {
        sub_24ECEBE24(v22, v34);
        sub_24ECEBE24((v6 - 192), v33);
        sub_24ECEBE24(v34, v30);
        v24 = v32;
        sub_24ECEB9B4(v31);
        sub_24ECEBE24(v33, v30);
        v25 = v32;
        sub_24ECEB9B4(v31);
        if (v24)
        {
          if ((v25 & 1) == 0)
          {
            v27 = 0;
            goto LABEL_44;
          }

          v26 = v33[0] < v34[0];
        }

        else
        {
          if (v25)
          {
            v27 = 1;
            goto LABEL_44;
          }

          v26 = v34[0] < v33[0];
        }

        v27 = v26;
LABEL_44:
        sub_24ECEBE94(v33);
        sub_24ECEBE94(v34);
        if (v27)
        {
          break;
        }

        if (v5 + 192 != v22 + 192)
        {
          memmove(v5, v22, 0xC0uLL);
        }

        v23 = v22 - 192;
        v5 -= 192;
        v16 = v22 > v4;
        v22 -= 192;
        if (!v16)
        {
          v13 = v23 + 192;
          goto LABEL_52;
        }
      }

      if (v5 + 192 != v6)
      {
        memmove(v5, v6 - 192, 0xC0uLL);
      }

      v13 = v22 + 192;
      if (v22 + 192 > v4)
      {
        v6 -= 192;
        if (v20 > v7)
        {
          continue;
        }
      }

      v13 = v22 + 192;
      goto LABEL_53;
    }
  }

  v12 = 192 * v9;
  if (a4 != __dst || &__dst[v12] <= a4)
  {
    memmove(a4, __dst, v12);
  }

  v13 = &v4[v12];
  if (v8 >= 192 && v6 < v5)
  {
    do
    {
      sub_24ECEBE24(v6, v34);
      sub_24ECEBE24(v4, v33);
      sub_24ECEBE24(v34, v30);
      v14 = v32;
      sub_24ECEB9B4(v31);
      sub_24ECEBE24(v33, v30);
      v15 = v32;
      sub_24ECEB9B4(v31);
      if (v14)
      {
        if ((v15 & 1) == 0)
        {
          sub_24ECEBE94(v33);
          sub_24ECEBE94(v34);
LABEL_21:
          v18 = v4;
          v19 = v7 == v4;
          v4 += 192;
          if (v19)
          {
            goto LABEL_23;
          }

LABEL_22:
          memmove(v7, v18, 0xC0uLL);
          goto LABEL_23;
        }

        v16 = v33[0] < v34[0];
      }

      else
      {
        if (v15)
        {
          sub_24ECEBE94(v33);
          sub_24ECEBE94(v34);
          goto LABEL_18;
        }

        v16 = v34[0] < v33[0];
      }

      v17 = v16;
      sub_24ECEBE94(v33);
      sub_24ECEBE94(v34);
      if ((v17 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_18:
      v18 = v6;
      v19 = v7 == v6;
      v6 += 192;
      if (!v19)
      {
        goto LABEL_22;
      }

LABEL_23:
      v7 += 192;
    }

    while (v4 < v13 && v6 < v5);
  }

  v20 = v7;
LABEL_53:
  v28 = 192 * ((v13 - v4) / 192);
  if (v20 != v4 || v20 >= &v4[v28])
  {
    memmove(v20, v4, v28);
  }

  return 1;
}

uint64_t sub_24ECEA91C(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 192;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 192;
  if (v9 >= v11)
  {
    v20 = 192 * v11;
    if (__dst != a2 || &a2[v20] <= __dst)
    {
      memmove(__dst, a2, 192 * v11);
    }

    v13 = &v4[v20];
    if (v10 < 192 || v6 <= v7)
    {
LABEL_43:
      v21 = v6;
    }

    else
    {
      do
      {
        v21 = v6 - 192;
        v22 = v13 - 192;
        v5 -= 192;
        while (1)
        {
          sub_24ECEBE24(v22, v34);
          sub_24ECEBE24((v6 - 192), v33);
          sub_24ECEBE24(v34, v30);
          v25 = v32;
          sub_24ECEB9B4(v31);
          sub_24ECEBE24(v33, v30);
          v26 = v32;
          sub_24ECEB9B4(v31);
          v27 = 3 - v26 < (3 - v25) || v26 == v25 && v34[0] < v33[0];
          sub_24ECEBE94(v33);
          sub_24ECEBE94(v34);
          if (v27)
          {
            break;
          }

          if (v5 + 192 != v22 + 192)
          {
            memmove(v5, v22, 0xC0uLL);
          }

          v23 = v22 - 192;
          v5 -= 192;
          v24 = v22 > v4;
          v22 -= 192;
          if (!v24)
          {
            v13 = v23 + 192;
            goto LABEL_43;
          }
        }

        if (v5 + 192 != v6)
        {
          memmove(v5, v6 - 192, 0xC0uLL);
        }

        v13 = v22 + 192;
        if (v22 + 192 <= v4)
        {
          break;
        }

        v6 -= 192;
      }

      while (v21 > v7);
      v13 = v22 + 192;
    }
  }

  else
  {
    v12 = 192 * v9;
    if (__dst != __src || &__src[v12] <= __dst)
    {
      memmove(__dst, __src, v12);
    }

    v13 = &v4[v12];
    if (v8 >= 192 && v6 < v5)
    {
      while (1)
      {
        sub_24ECEBE24(v6, v34);
        sub_24ECEBE24(v4, v33);
        sub_24ECEBE24(v34, v30);
        v14 = v32;
        sub_24ECEB9B4(v31);
        sub_24ECEBE24(v33, v30);
        v15 = v32;
        sub_24ECEB9B4(v31);
        if (3 - v15 < (3 - v14))
        {
          break;
        }

        if (v15 == v14)
        {
          v18 = v34[0];
          v19 = v33[0];
          sub_24ECEBE94(v33);
          sub_24ECEBE94(v34);
          if (v18 < v19)
          {
            goto LABEL_9;
          }
        }

        else
        {
          sub_24ECEBE94(v33);
          sub_24ECEBE94(v34);
        }

        v16 = v4;
        v17 = v7 == v4;
        v4 += 192;
        if (!v17)
        {
          goto LABEL_10;
        }

LABEL_11:
        v7 += 192;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_42;
        }
      }

      sub_24ECEBE94(v33);
      sub_24ECEBE94(v34);
LABEL_9:
      v16 = v6;
      v17 = v7 == v6;
      v6 += 192;
      if (v17)
      {
        goto LABEL_11;
      }

LABEL_10:
      memmove(v7, v16, 0xC0uLL);
      goto LABEL_11;
    }

LABEL_42:
    v21 = v7;
  }

  v28 = 192 * ((v13 - v4) / 192);
  if (v21 != v4 || v21 >= &v4[v28])
  {
    memmove(v21, v4, v28);
  }

  return 1;
}

void sub_24ECEAC9C(uint64_t a1@<X0>, uint64_t a2@<X1>, JUMeasurements *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v94 = a2;
  v87 = a5;
  v89 = a4;
  v85 = a3;
  v6 = v123;
  v93 = sub_24F92CDB8();
  v7 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210628 != -1)
  {
    goto LABEL_107;
  }

  while (1)
  {
    v9 = xmmword_27F22D9C0;
    *(v6 + 13) = xmmword_27F22D9B0;
    *(v6 + 14) = v9;
    v10 = *&qword_27F22D9E0;
    *(v6 + 15) = xmmword_27F22D9D0;
    *(v6 + 16) = v10;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = sub_24F92B618();
      v13 = v12;
      *(v12 + 16) = v11;
      v14 = 32;
      do
      {
        v15 = (v12 + v14);
        v16 = *(v6 + 14);
        *v15 = *(v6 + 13);
        v15[1] = v16;
        v17 = *(v6 + 16);
        v15[2] = *(v6 + 15);
        v15[3] = v17;
        v14 += 64;
        --v11;
      }

      while (v11);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v88 = a1;
    *&v123[0] = sub_24F406A20(a1);
    sub_24ECE75A0(v123, sub_24ECE9910, sub_24ECE8478);
    v86 = 0;
    v95 = *&v123[0];
    v18 = *(*&v123[0] + 16);
    v99 = v13 + 32;
    v100 = *&v13;
    v91 = v18;
    if (v18)
    {
      v19 = 0;
      v6 = (v95 + 32);
      v90 = v7 + 1;
      v20 = v89;
      while (v19 < *(v95 + 16))
      {
        sub_24ECEBE24(v6, v123);
        v110 = *(v123 + 8);
        v111 = *(&v123[1] + 8);
        v108 = v123[9];
        v109[0] = v123[10];
        *(v109 + 10) = *(&v123[10] + 10);
        v104 = v123[5];
        v105 = v123[6];
        v106 = v123[7];
        v107 = v123[8];
        v102 = v123[3];
        v103 = v123[4];
        if (!*(&v123[2] + 1))
        {
          goto LABEL_20;
        }

        v96 = v19;
        v97 = v6;
        v98 = *&v123[0];
        v123[0] = v110;
        v123[1] = v111;
        *(&v123[7] + 8) = v107;
        *(&v123[8] + 8) = v108;
        *(&v123[9] + 8) = v109[0];
        *(&v123[10] + 2) = *(v109 + 10);
        *(&v123[4] + 8) = v104;
        *(&v123[5] + 8) = v105;
        *(&v123[6] + 8) = v106;
        *(&v123[3] + 8) = v103;
        *&v123[2] = *(&v123[2] + 1);
        *(&v123[2] + 8) = v102;
        __swift_project_boxed_opaque_existential_1(&v123[3], v104);
        a1 = v92;
        sub_24E8ED7D8();
        sub_24F9223A8();
        v22 = v21;
        v23 = *v90;
        v6 = v93;
        (*v90)(a1, v93);
        __swift_project_boxed_opaque_existential_1(&v123[5] + 1, *&v123[7]);
        sub_24E8ED7D8();
        sub_24F9223A8();
        v25 = v24;
        v23(a1, v6);
        if (v20 - v22 - v25 < 0.0)
        {
          v26 = 0.0;
        }

        else
        {
          v26 = v20 - v22 - v25;
        }

        v7 = __swift_project_boxed_opaque_existential_1(v123 + 1, *&v123[2]);
        sub_24F922288();
        if (v26 - v27 < 0.0)
        {
          v20 = 0.0;
        }

        else
        {
          v20 = v26 - v27;
        }

        if ((v98 & 0x8000000000000000) != 0)
        {
          goto LABEL_95;
        }

        v13 = *&v100;
        if (v98 >= *(*&v100 + 16))
        {
          goto LABEL_96;
        }

        v31 = v99 + (v98 << 6);
        *v31 = v22;
        *(v31 + 8) = v25;
        v19 = v96 + 1;
        *(v31 + 16) = v27;
        *(v31 + 24) = v28;
        *(v31 + 32) = v29;
        *(v31 + 40) = v30;
        *(v31 + 48) = 0;
        *(v31 + 56) = 0;
        sub_24ECEB9B4(v123);
        v6 = v97 + 192;
        if (v91 == v19)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_94;
    }

LABEL_20:

    *&v123[0] = sub_24F406A20(v88);
    a1 = v123;
    v32 = v86;
    sub_24ECE75A0(v123, sub_24ECE8F94, sub_24ECE8228);
    if (v32)
    {
      v83 = v32;
LABEL_109:

      __break(1u);

      __break(1u);
      return;
    }

    v7 = *&v123[0];
    v33 = *(*&v123[0] + 16);
    if (!v33)
    {
      break;
    }

    v34 = 0;
    v6 = (*&v123[0] + 32);
    v35 = 0.0;
    v36 = v89;
    while (v34 < *(v7 + 2))
    {
      sub_24ECEBE24(v6, v123);
      v37 = *&v123[0];
      v110 = *(v123 + 8);
      v111 = *(&v123[1] + 8);
      v108 = v123[9];
      v109[0] = v123[10];
      *(v109 + 10) = *(&v123[10] + 10);
      v104 = v123[5];
      v105 = v123[6];
      v106 = v123[7];
      v107 = v123[8];
      v102 = v123[3];
      v103 = v123[4];
      if (!*(&v123[2] + 1))
      {
        goto LABEL_32;
      }

      v123[0] = v110;
      v123[1] = v111;
      *(&v123[7] + 8) = v107;
      *(&v123[8] + 8) = v108;
      *(&v123[9] + 8) = v109[0];
      *(&v123[10] + 2) = *(v109 + 10);
      *(&v123[3] + 8) = v103;
      *(&v123[4] + 8) = v104;
      *(&v123[5] + 8) = v105;
      *(&v123[6] + 8) = v106;
      *&v123[2] = *(&v123[2] + 1);
      *(&v123[2] + 8) = v102;
      if ((v37 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }

      if (v37 >= *(v13 + 16))
      {
        goto LABEL_98;
      }

      v38 = (v99 + (v37 << 6));
      v40 = *v38;
      v39 = v38[1];
      v41 = v38[2];
      if (BYTE1(v123[11]))
      {
        v42 = v36 - v41 - v39;
        v36 = v36 - (v39 + v40 + v41);
      }

      else
      {
        v42 = v35 + v40;
        v35 = v35 + v39 + v40 + v41;
      }

      sub_24ECEB9B4(v123);
      if (v37 >= *(v13 + 16))
      {
        goto LABEL_99;
      }

      ++v34;
      v38[6] = v42;
      v6 += 192;
      if (v33 == v34)
      {
        goto LABEL_32;
      }
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
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
    swift_once();
  }

LABEL_32:

  v122 = sub_24F406A20(v88);
  sub_24ECE75A0(&v122, sub_24ECE86C4, sub_24ECE8024);
  a1 = v122;
  *&v120 = v89;
  *(&v120 + 1) = v87;
  *v121 = 0;
  v6 = &v110;
  memset(&v121[8], 0, 32);
  *&v121[40] = xmmword_24F995DF0;
  v43 = sub_24E60BF00(MEMORY[0x277D84F90]);
  v7 = v123;
  v97 = *(a1 + 16);
  if (v97)
  {
    v32 = 0;
    v98 = a1 + 32;
    v96 = a1;
    while (1)
    {
      if (v32 >= *(a1 + 16))
      {
        goto LABEL_100;
      }

      sub_24ECEBE24(v98, v123);
      v45 = *&v123[0];
      v118 = *(v123 + 8);
      v119 = *(&v123[1] + 8);
      v116 = v123[9];
      v117[0] = v123[10];
      *(v117 + 10) = *(&v123[10] + 10);
      v112 = v123[5];
      v113 = v123[6];
      v114 = v123[7];
      v115 = v123[8];
      v110 = v123[3];
      v111 = v123[4];
      if (!*(&v123[2] + 1))
      {
        goto LABEL_92;
      }

      v123[0] = v118;
      v123[1] = v119;
      *(&v123[7] + 8) = v115;
      *(&v123[8] + 8) = v116;
      *(&v123[9] + 8) = v117[0];
      *(&v123[10] + 2) = *(v117 + 10);
      *(&v123[3] + 8) = v111;
      *(&v123[4] + 8) = v112;
      *(&v123[5] + 8) = v113;
      *(&v123[6] + 8) = v114;
      *&v123[2] = *(&v123[2] + 1);
      *(&v123[2] + 8) = v110;
      if ((v45 & 0x8000000000000000) != 0)
      {
        goto LABEL_101;
      }

      if (v45 >= *(*&v100 + 16))
      {
        goto LABEL_102;
      }

      v46 = (v99 + (v45 << 6));
      v47 = v46[2];
      v48 = v46[3];
      v50 = v46[4];
      v49 = v46[5];
      a1 = LOBYTE(v123[8]);
      if ((*(&v123[8] + 1) & 0x8000000000000000) == 0)
      {
        v51 = *(*(&v123[8] + 1) + 16);
        if (LOBYTE(v123[8]) > 1u)
        {
          goto LABEL_42;
        }

        goto LABEL_52;
      }

      v6 = (*(&v123[8] + 1) & 0x7FFFFFFFFFFFFFFFLL);
      v53 = *((*(&v123[8] + 1) & 0x7FFFFFFFFFFFFFFFLL) + 0xC2);
      sub_24ECEB97C((*(&v123[8] + 1) & 0x7FFFFFFFFFFFFFFFLL) + 16, &v102);
      if (!*(v43 + 2) || (v7 = v43, v54 = sub_24E76D97C(v102), (v55 & 1) == 0))
      {
        sub_24ECEB9B4(&v102);
        v51 = 0.0;
        if (a1 > 1)
        {
          goto LABEL_42;
        }

        goto LABEL_52;
      }

      v56 = (*(v43 + 7) + (v54 << 6));
      v58 = v56[3];
      v57 = v56[4];
      v59 = v56[5];
      v60 = v56[7];

      sub_24ECEB9B4(&v102);

      if (v53 <= 1)
      {
        break;
      }

      if (v53 != 2)
      {
        if (v53 != 3)
        {
          v57 = v58 - v59;
        }

        goto LABEL_87;
      }

      v51 = v60 + v58;
      if (a1 > 1)
      {
LABEL_42:
        v52 = v48;
        if (a1 != 2)
        {
          v52 = v50;
          if (a1 != 3)
          {
            v52 = v48 - v49;
          }
        }

        goto LABEL_54;
      }

LABEL_52:
      v52 = 0.0;
      if (a1)
      {
        v52 = v48 * 0.5;
      }

LABEL_54:
      if (v45 >= *(*&v100 + 16))
      {
        goto LABEL_103;
      }

      v61 = v51 - v52;
      v46[7] = v51 - v52;
      v62 = v46[3];
      v63 = v46[6] - *v46;
      v64 = v46[1] + *v46 + v46[2];
      v121[1] = 1;
      if (v121[0])
      {
        v7 = &v120;
        sub_24EE6A1B8(v63, v61, v64, v62, v47, v48, v50, v49);
      }

      else
      {
        v74 = *(&v120 + 1);
        v75 = *&v120;
        v124.origin.x = v63;
        v124.origin.y = v61;
        v124.size.width = v64;
        v124.size.height = v62;
        if (*&v121[16] < CGRectGetMaxY(v124))
        {
          v125.origin.x = v63;
          v125.origin.y = v61;
          v125.size.width = v64;
          v125.size.height = v62;
          if (CGRectGetMaxY(v125) <= v74)
          {
            v126.origin.x = v63;
            v126.origin.y = v61;
            v126.size.width = v64;
            v126.size.height = v62;
            *&v121[16] = CGRectGetMaxY(v126);
          }
        }

        v127.origin.x = v63;
        v127.origin.y = v61;
        v127.size.width = v64;
        v127.size.height = v62;
        if (*&v121[32] < CGRectGetMaxX(v127))
        {
          v128.origin.x = v63;
          v128.origin.y = v61;
          v128.size.width = v64;
          v128.size.height = v62;
          if (CGRectGetMaxX(v128) <= v75)
          {
            v129.origin.x = v63;
            v129.origin.y = v61;
            v129.size.width = v64;
            v129.size.height = v62;
            *&v121[32] = CGRectGetMaxX(v129);
          }
        }

        v130.origin.x = v63;
        v130.origin.y = v61;
        v130.size.width = v64;
        v130.size.height = v62;
        v76 = v50 + CGRectGetMinY(v130);
        if (v76 > 0.0 && v76 <= v74)
        {
          if (v76 < *&v121[40])
          {
            *&v121[40] = v76;
          }

          if (*&v121[48] < v76)
          {
            *&v121[48] = v76;
          }
        }

        v131.origin.x = v63;
        v131.origin.y = v61;
        v131.size.width = v64;
        v131.size.height = v62;
        v77 = CGRectGetMaxY(v131) - v49;
        if (v77 > 0.0 && v77 <= v74)
        {
          if (v77 < *&v121[40])
          {
            *&v121[40] = v77;
          }

          if (*&v121[48] < v77)
          {
            *&v121[48] = v77;
          }
        }
      }

      if (v45 >= *(*&v100 + 16))
      {
        goto LABEL_104;
      }

      v6 = *&v123[0];
      v102 = *v46;
      v103 = *(v46 + 1);
      v104 = *(v46 + 2);
      v105 = *(v46 + 3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v43;
      v7 = v43;
      v66 = sub_24E76D97C(v6);
      v68 = *(v43 + 2);
      v69 = (v67 & 1) == 0;
      v70 = __OFADD__(v68, v69);
      v71 = v68 + v69;
      if (v70)
      {
        goto LABEL_105;
      }

      v72 = v67;
      if (*(v43 + 3) >= v71)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = &v101;
          v81 = v66;
          sub_24E8B0160();
          v66 = v81;
        }
      }

      else
      {
        sub_24E89CFB8(v71, isUniquelyReferenced_nonNull_native);
        v7 = v101;
        v66 = sub_24E76D97C(v6);
        if ((v72 & 1) != (v73 & 1))
        {
          sub_24F92CF88();
          __break(1u);
          v83 = v86;
          goto LABEL_109;
        }
      }

      a1 = v96;
      v43 = v101;
      if (v72)
      {
        v44 = (*(v101 + 7) + (v66 << 6));
        *v44 = v102;
        v44[1] = v103;
        v44[2] = v104;
        v44[3] = v105;
        sub_24ECEB9B4(v123);
      }

      else
      {
        *(v101 + (v66 >> 6) + 8) |= 1 << v66;
        *(*(v43 + 6) + 8 * v66) = v6;
        v78 = (*(v43 + 7) + (v66 << 6));
        *v78 = v102;
        v78[1] = v103;
        v78[2] = v104;
        v78[3] = v105;
        sub_24ECEB9B4(v123);
        v79 = *(v43 + 2);
        v70 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (v70)
        {
          goto LABEL_106;
        }

        *(v43 + 2) = v80;
      }

      ++v32;
      v98 += 192;
      v7 = v123;
      v6 = &v110;
      if (v97 == v32)
      {
        goto LABEL_91;
      }
    }

    v57 = 0.0;
    if (v53)
    {
      v57 = v58 * 0.5;
    }

LABEL_87:
    v51 = v60 + v57;
    if (a1 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_52;
  }

LABEL_91:
  memset(v123, 0, 186);
  v118 = *(v123 + 8);
  v119 = *(&v123[1] + 8);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v110 = 0u;
  *(v117 + 10) = *(&v123[10] + 10);
  v116 = 0u;
  v117[0] = 0u;
  v115 = 0u;
LABEL_92:

  v123[2] = *&v121[16];
  v123[3] = *&v121[32];
  *&v123[4] = *&v121[48];
  v123[0] = v120;
  v123[1] = *v121;
  v132 = FrameAccumulator.measurements()();
  v82 = v85;
  *v85 = v132;
  v82[1].var0 = v100;
  v132.var0 = v87;
  v82[1].var1 = v89;
  v82[1].var2 = v132.var0;
}

unint64_t sub_24ECEB9E8()
{
  result = qword_27F22D9F0;
  if (!qword_27F22D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D9F0);
  }

  return result;
}

unint64_t sub_24ECEBA40()
{
  result = qword_27F22D9F8;
  if (!qword_27F22D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D9F8);
  }

  return result;
}

unint64_t sub_24ECEBA98()
{
  result = qword_27F22DA00;
  if (!qword_27F22DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DA00);
  }

  return result;
}

__n128 __swift_memcpy178_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 88);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_24ECEBB44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 178))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ECEBB8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24ECEBC0C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[24])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24ECEBC50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_24ECEBCC4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[25])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24ECEBD08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_24ECEBD80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ECEBDC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24ECEBE24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DA08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ECEBE94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DA08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double ContactLockup.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1, v5, &qword_27F213F18);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t type metadata accessor for ContactLockup()
{
  result = qword_27F22DA40;
  if (!qword_27F22DA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ContactLockup.segue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContactLockup();
  sub_24E60169C(v1 + *(v3 + 40), v6, qword_27F24EC90);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t ContactLockup.contextMenu.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for ContactLockup();
  sub_24E60169C(v1 + *(v6 + 48), v5, &qword_27F215440);
  return sub_24E6009C8(v5, a1, &qword_27F215460);
}

uint64_t sub_24ECEC26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for ContactLockup();
  sub_24E60169C(a1 + *(v7 + 48), v6, &qword_27F215440);
  return sub_24E6009C8(v6, a2, &qword_27F215460);
}

unint64_t sub_24ECEC3C4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x4C7972616D697270;
    if (a1 != 2)
    {
      v6 = 0x614C786966657270;
    }

    if (a1)
    {
      v5 = 0x726174617661;
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
    v1 = 0x6575676573;
    v2 = 0x654D6C6169636F73;
    if (a1 != 7)
    {
      v2 = 0x4D747865746E6F63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x634170756B636F6CLL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
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

uint64_t sub_24ECEC500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24ECEF558(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ECEC528(uint64_t a1)
{
  v2 = sub_24ECECA20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ECEC564(uint64_t a1)
{
  v2 = sub_24ECECA20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactLockup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DA10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECECA20();
  sub_24F92D128();
  LOBYTE(v15) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for ContactLockup();
    LOBYTE(v15) = 1;
    type metadata accessor for PlayerAvatar(0);
    sub_24ECEFA04(&qword_27F218A38, type metadata accessor for PlayerAvatar);
    sub_24F92CCF8();
    LOBYTE(v15) = 2;
    sub_24F92CD08();
    LOBYTE(v15) = 3;
    sub_24F92CCA8();
    v10 = v3 + *(v9 + 32);
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v15 = *v10;
    v16 = v11;
    v17 = v12;
    HIBYTE(v14) = 4;
    sub_24ECECA74(v15, v11, v12);
    sub_24ECECA8C();
    sub_24F92CCF8();
    sub_24E640000(v15, v16, v17);
    LOBYTE(v15) = 5;
    sub_24F929608();
    sub_24ECEFA04(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    LOBYTE(v15) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v15 = *(v3 + *(v9 + 44));
    HIBYTE(v14) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0);
    sub_24E7AA500();
    sub_24F92CD48();
    LOBYTE(v15) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24ECECA20()
{
  result = qword_27F22DA18;
  if (!qword_27F22DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DA18);
  }

  return result;
}

uint64_t sub_24ECECA74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24E672C48();
  }

  return result;
}

unint64_t sub_24ECECA8C()
{
  result = qword_27F22DA20;
  if (!qword_27F22DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DA20);
  }

  return result;
}

uint64_t ContactLockup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v49);
  v50 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227328);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DA28);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = type metadata accessor for ContactLockup();
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 20);
  v17 = type metadata accessor for PlayerAvatar(0);
  v18 = *(*(v17 - 8) + 56);
  v61 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = &v14[v12[8]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v60 = v19;
  v19[16] = -1;
  v20 = v12[9];
  v21 = sub_24F929608();
  v22 = *(*(v21 - 8) + 56);
  v58 = v20;
  v22(&v14[v20], 1, 1, v21);
  v23 = &v14[v12[10]];
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  v59 = v23;
  sub_24E61DA68(&v62, v23, qword_27F21B590);
  v24 = v12[12];
  v25 = sub_24F92A6D8();
  v26 = *(*(v25 - 8) + 56);
  v57 = v24;
  v26(&v14[v24], 1, 1, v25);
  v27 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_24ECECA20();
  v52 = v11;
  v28 = v56;
  sub_24F92D108();
  if (v28)
  {
    v30 = v61;
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_24E601704(&v14[v30], &qword_27F227328);
    v31 = v58;

    sub_24E640000(*v60, *(v60 + 1), v60[16]);
    sub_24E601704(&v14[v31], &qword_27F213E68);
    sub_24E601704(v59, qword_27F24EC90);

    return sub_24E601704(&v14[v57], &qword_27F215440);
  }

  else
  {
    v56 = v12;
    v29 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v65 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v32 = v63;
    *v14 = v62;
    *(v14 + 1) = v32;
    *(v14 + 4) = v64;
    LOBYTE(v62) = 1;
    sub_24ECEFA04(&qword_27F2185A0, type metadata accessor for PlayerAvatar);
    sub_24F92CC18();
    sub_24E61DA68(v8, &v14[v61], &qword_27F227328);
    LOBYTE(v62) = 2;
    v33 = sub_24F92CC28();
    v34 = v56;
    v35 = &v14[v56[6]];
    *v35 = v33;
    v35[1] = v36;
    LOBYTE(v62) = 3;
    v37 = sub_24F92CBC8();
    v38 = &v14[v34[7]];
    *v38 = v37;
    v38[1] = v39;
    v65 = 4;
    sub_24ECED500();
    sub_24F92CC18();
    v47 = *(&v62 + 1);
    v40 = v62;
    v41 = v63;
    v42 = v60;
    sub_24E640000(*v60, *(v60 + 1), v60[16]);
    v43 = v47;
    *v42 = v40;
    *(v42 + 1) = v43;
    v42[16] = v41;
    LOBYTE(v62) = 5;
    sub_24ECEFA04(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    sub_24E61DA68(v29, &v14[v58], &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v65 = 6;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v62, v59, qword_27F24EC90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0);
    v65 = 7;
    sub_24E7AA3E4();
    sub_24F92CC68();
    *&v14[v56[11]] = v62;
    LOBYTE(v62) = 8;
    sub_24E65CAA0();
    v44 = v50;
    sub_24F92CC68();
    (*(v53 + 8))(v52, v54);
    sub_24E61DA68(v44, &v14[v57], &qword_27F215440);
    sub_24ECEFCD0(v14, v48, type metadata accessor for ContactLockup);
    __swift_destroy_boxed_opaque_existential_1(v55);
    return sub_24ECEFD38(v14, type metadata accessor for ContactLockup);
  }
}

unint64_t sub_24ECED500()
{
  result = qword_27F22DA30;
  if (!qword_27F22DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DA30);
  }

  return result;
}

uint64_t sub_24ECED59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 48), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

double sub_24ECED694@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_24ECED6EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContactLockup();
  sub_24E60169C(a1 + *(v4 + 40), v7, qword_27F24EC90);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_24ECED804(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227328);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_24ECED9A8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227328);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

void sub_24ECEDB38()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24ECEDCEC(319, &qword_27F22DA50, type metadata accessor for PlayerAvatar);
    if (v1 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F254DE0);
      if (v2 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F22DA58);
        if (v3 <= 0x3F)
        {
          sub_24ECEDCEC(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
          if (v4 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
            if (v5 <= 0x3F)
            {
              sub_24E65B038(319, &qword_27F21C120, &qword_27F213840);
              if (v6 <= 0x3F)
              {
                sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
                if (v7 <= 0x3F)
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
}

void sub_24ECEDCEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24ECEDD54()
{
  result = qword_27F22DA60;
  if (!qword_27F22DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DA60);
  }

  return result;
}

unint64_t sub_24ECEDDAC()
{
  result = qword_27F22DA68;
  if (!qword_27F22DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DA68);
  }

  return result;
}

unint64_t sub_24ECEDE04()
{
  result = qword_27F22DA70;
  if (!qword_27F22DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DA70);
  }

  return result;
}

uint64_t sub_24ECEDE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DA88) - 8;
  MEMORY[0x28223BE20](v61);
  v4 = &v58 - v3;
  v59 = sub_24F9248C8();
  v5 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223760);
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223750);
  v11 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DA90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v58 - v15;
  *v10 = sub_24F9249A8();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DA98);
  sub_24ECEE3E8(a1, &v10[*(v17 + 44)]);
  v18 = sub_24F925868();
  sub_24F923318();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223788) + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223778) + 36)] = 0;
  sub_24F9248B8();
  sub_24E99CAB8();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v5 + 8))(v7, v59);
  sub_24E601704(v10, &qword_27F223760);
  v28 = type metadata accessor for ContactLockup();
  sub_24E993850(*(a1 + *(v28 + 44)));
  v29 = v13;
  v30 = v16;
  (*(v11 + 8))(v29, v58);
  v31 = v60;
  v32 = *(sub_24F924258() + 20);
  v33 = *MEMORY[0x277CE0118];
  v34 = sub_24F924B38();
  (*(*(v34 - 8) + 104))(&v4[v32], v33, v34);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(sub_24F924248() + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v40 = sub_24F926D08();

  *&v4[*(v61 + 60)] = v40;
  sub_24E60169C(v4, v31, &qword_27F22DA88);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAA0);
  sub_24E60169C(v16, v31 + v41[9], &qword_27F22DA90);
  v42 = v31 + v41[10];
  *v42 = sub_24F923398() & 1;
  *(v42 + 8) = v43;
  *(v42 + 16) = v44 & 1;
  v45 = v31 + v41[11];
  *v45 = swift_getKeyPath();
  *(v45 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v46 = qword_27F24E488;
  v47 = sub_24F923398();
  v49 = v48;
  v51 = v50;
  v52 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAA8) + 36);
  *v52 = v46;
  *(v52 + 8) = v47 & 1;
  *(v52 + 16) = v49;
  *(v52 + 24) = v51 & 1;
  LOBYTE(v46) = sub_24F923398();
  v54 = v53;
  LOBYTE(v49) = v55;
  sub_24E601704(v4, &qword_27F22DA88);
  sub_24E601704(v30, &qword_27F22DA90);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAB0);
  v57 = v31 + *(result + 36);
  *v57 = v46 & 1;
  *(v57 + 8) = v54;
  *(v57 + 16) = v49 & 1;
  return result;
}

uint64_t sub_24ECEE3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a1;
  v124 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v110);
  v109 = &v105 - v2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAB8);
  MEMORY[0x28223BE20](v120);
  v122 = &v105 - v3;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAC0);
  MEMORY[0x28223BE20](v112);
  v113 = (&v105 - v4);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAC8);
  MEMORY[0x28223BE20](v121);
  v114 = &v105 - v5;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAD0);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v105 - v6;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAD8);
  MEMORY[0x28223BE20](v111);
  v108 = &v105 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAE0);
  MEMORY[0x28223BE20](v8 - 8);
  v123 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v125 = &v105 - v11;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233C8);
  v12 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v14 = &v105 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227328);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v105 - v16;
  v18 = type metadata accessor for PlayerAvatar(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v105 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAE8);
  MEMORY[0x28223BE20](v25 - 8);
  v119 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v105 - v28;
  v30 = type metadata accessor for ContactLockup();
  sub_24E60169C(v126 + v30[5], v17, &qword_27F227328);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_24E601704(v17, &qword_27F227328);
    v31 = 1;
    v32 = v29;
    v33 = v118;
  }

  else
  {
    sub_24E72FFFC(v17, v24);
    sub_24ECEFCD0(v24, v21, type metadata accessor for PlayerAvatar);
    LOBYTE(v131[0]) = 7;
    sub_24F8319B8(v21, v131, v14);
    sub_24F927618();
    sub_24F9238C8();
    v34 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0) + 36)];
    v35 = v131[1];
    *v34 = v131[0];
    *(v34 + 1) = v35;
    *(v34 + 2) = v131[2];
    v36 = sub_24F925858();
    sub_24F923318();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_24ECEFD38(v24, type metadata accessor for PlayerAvatar);
    v45 = v118;
    v46 = &v14[*(v118 + 36)];
    *v46 = v36;
    *(v46 + 1) = v38;
    *(v46 + 2) = v40;
    *(v46 + 3) = v42;
    *(v46 + 4) = v44;
    v46[40] = 0;
    sub_24E6009C8(v14, v29, &qword_27F2233C8);
    v31 = 0;
    v32 = v29;
    v33 = v45;
  }

  (*(v12 + 56))(v32, v31, 1, v33);
  v47 = v30[7];
  v48 = (v126 + v30[6]);
  v49 = v48[1];
  v117 = *v48;
  v50 = *(v126 + v47 + 8);
  v116 = *(v126 + v47);
  v51 = v126 + v30[8];
  v52 = *(v51 + 16);
  v53 = v125;
  v118 = v50;
  v115 = v49;
  if (v52 == 255)
  {
    swift_storeEnumTagMultiPayload();
    sub_24ECEFA54();

    sub_24F924E28();
  }

  else
  {
    v55 = *v51;
    v54 = *(v51 + 8);
    if (v52)
    {
      v127 = *v51;
      v128 = v54;

      sub_24ECECA74(v55, v54, v52);
      sub_24E600AEC();
      v56 = sub_24F925E18();
      v58 = v57;
      v60 = v59;
      v126 = v32;
      sub_24F925898();
      v61 = sub_24F925C98();
      v63 = v62;
      v65 = v64;

      sub_24E600B40(v56, v58, v60 & 1);

      LODWORD(v56) = sub_24F9251C8();
      v66 = *(v110 + 36);
      v67 = *MEMORY[0x277CE13B8];
      v68 = sub_24F927748();
      v69 = v109;
      (*(*(v68 - 8) + 104))(&v109[v66], v67, v68);
      *v69 = v56;
      sub_24E602068(&qword_27F214428, &qword_27F213F10);
      v70 = sub_24F925C58();
      v72 = v71;
      v74 = v73;
      v76 = v75;
      sub_24E600B40(v61, v63, v65 & 1);

      sub_24E601704(v69, &qword_27F213F10);
      v77 = v113;
      *v113 = v70;
      v77[1] = v72;
      v78 = v74 & 1;
      v53 = v125;
      *(v77 + 16) = v78;
      v77[3] = v76;
      swift_storeEnumTagMultiPayload();
      sub_24E5FD138(v70, v72, v78);
      sub_24ECEFAE0();

      v79 = v114;
      sub_24F924E28();
      sub_24E60169C(v79, v122, &qword_27F22DAC8);
      swift_storeEnumTagMultiPayload();
      sub_24ECEFA54();
      sub_24F924E28();
      sub_24E600B40(v70, v72, v78);

      v80 = v79;
      v32 = v126;
      v81 = &qword_27F22DAC8;
    }

    else
    {
      sub_24E60169C(v126 + v30[10], &v127, qword_27F24EC90);
      if (v130)
      {

        sub_24ECECA74(v55, v54, v52);
        sub_24E601704(&v127, qword_27F21B590);
        v82 = sub_24F926DF8();
        v83 = sub_24F925898();
        KeyPath = swift_getKeyPath();
        v127 = v82;
        v128 = KeyPath;
        v129 = v83;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0);
        sub_24E60156C();
        v85 = v105;
        sub_24F9268B8();

        LODWORD(v82) = sub_24F9251C8();
        v86 = v107;
        v87 = (v85 + *(v107 + 36));
        v88 = *(v110 + 36);
        v89 = *MEMORY[0x277CE13B8];
        v90 = sub_24F927748();
        (*(*(v90 - 8) + 104))(&v87[v88], v89, v90);
        *v87 = v82;
        v91 = v108;
        sub_24ECEFC60(v85, v108);
        v92 = 0;
      }

      else
      {

        sub_24E601704(&v127, qword_27F21B590);
        v92 = 1;
        v91 = v108;
        v86 = v107;
      }

      (*(v106 + 56))(v91, v92, 1, v86);
      sub_24E60169C(v91, v113, &qword_27F22DAD8);
      swift_storeEnumTagMultiPayload();
      sub_24ECEFAE0();
      v93 = v114;
      sub_24F924E28();
      sub_24E60169C(v93, v122, &qword_27F22DAC8);
      swift_storeEnumTagMultiPayload();
      sub_24ECEFA54();
      sub_24F924E28();
      sub_24E601704(v93, &qword_27F22DAC8);
      v80 = v91;
      v81 = &qword_27F22DAD8;
    }

    sub_24E601704(v80, v81);
  }

  v94 = v119;
  sub_24E60169C(v32, v119, &qword_27F22DAE8);
  v95 = v123;
  sub_24E60169C(v53, v123, &qword_27F22DAE0);
  v96 = v124;
  sub_24E60169C(v94, v124, &qword_27F22DAE8);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DB08);
  v98 = (v96 + v97[12]);
  v99 = v32;
  v100 = v53;
  v101 = v115;
  *v98 = v117;
  v98[1] = v101;
  v102 = v118;
  v98[2] = v116;
  v98[3] = v102;
  v103 = v96 + v97[16];
  *v103 = 0;
  *(v103 + 8) = 1;
  sub_24E60169C(v95, v96 + v97[20], &qword_27F22DAE0);

  sub_24E601704(v100, &qword_27F22DAE0);
  sub_24E601704(v99, &qword_27F22DAE8);
  sub_24E601704(v95, &qword_27F22DAE0);

  return sub_24E601704(v94, &qword_27F22DAE8);
}

uint64_t sub_24ECEF240()
{
  sub_24ECEF8AC();

  return sub_24F9218E8();
}

uint64_t sub_24ECEF284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v26 = a1;
  v5 = sub_24F91F0C8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F91F008();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  sub_24F91EFF8();
  if (a2)
  {

    sub_24F91F0B8();
    sub_24F91F018();
    v27 = sub_24F9258D8();
    sub_24E6584A4();
    sub_24F91F038();
    sub_24F91EEE8();
    sub_24F91EE58();
    sub_24F91EEE8();
    v16 = *(v7 + 8);
    v16(v9, v6);
    v16(v12, v6);
  }

  sub_24F91F0B8();
  sub_24F91F018();
  v27 = sub_24F925A28();
  sub_24E6584A4();
  sub_24F91F038();
  sub_24F91EEE8();
  (*(v7 + 16))(v9, v15, v6);
  v17 = sub_24F925DF8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = *(v7 + 8);
  v24(v12, v6);
  result = (v24)(v15, v6);
  *a3 = v17;
  *(a3 + 8) = v19;
  *(a3 + 16) = v21 & 1;
  *(a3 + 24) = v23;
  return result;
}

uint64_t sub_24ECEF558(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C7972616D697270 && a2 == 0xEC0000006C656261 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614C786966657270 && a2 == 0xEB000000006C6562 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x634170756B636F6CLL && a2 == 0xEF79726F73736563 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x654D6C6169636F73 && a2 == 0xEA0000000000756ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65)
  {

    return 8;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_24ECEF8AC()
{
  result = qword_27F22DA78;
  if (!qword_27F22DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DA78);
  }

  return result;
}

unint64_t sub_24ECEF904()
{
  result = qword_27F22DA80;
  if (!qword_27F22DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DA80);
  }

  return result;
}

uint64_t sub_24ECEFA04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24ECEFA54()
{
  result = qword_27F22DAF0;
  if (!qword_27F22DAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DAC8);
    sub_24ECEFAE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DAF0);
  }

  return result;
}

unint64_t sub_24ECEFAE0()
{
  result = qword_27F22DAF8;
  if (!qword_27F22DAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DAD8);
    sub_24ECEFB64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DAF8);
  }

  return result;
}

unint64_t sub_24ECEFB64()
{
  result = qword_27F22DB00;
  if (!qword_27F22DB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DAD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F212AA0);
    sub_24E60156C();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB00);
  }

  return result;
}

uint64_t sub_24ECEFC60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ECEFCD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ECEFD38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24ECEFDAC()
{
  result = qword_27F22DB10;
  if (!qword_27F22DB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DAB0);
    sub_24ECEFE38();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB10);
  }

  return result;
}

unint64_t sub_24ECEFE38()
{
  result = qword_27F22DB18;
  if (!qword_27F22DB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DAA8);
    sub_24E602068(&qword_27F22DB20, &qword_27F22DAA0);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB18);
  }

  return result;
}

uint64_t sub_24ECEFF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24ECEFFFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SocialSuggestionsComponentGrid()
{
  result = qword_27F22DB28;
  if (!qword_27F22DB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ECF00F8()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
    if (v1 <= 0x3F)
    {
      sub_24E61C938();
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F21F938, &qword_27F21BE90);
        if (v3 <= 0x3F)
        {
          sub_24ECF01F4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24ECF01F4()
{
  if (!qword_27F22DB38)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22DB38);
    }
  }
}

uint64_t sub_24ECF0244(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 153))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24ECF0264(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
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

  *(result + 153) = v3;
  return result;
}

uint64_t sub_24ECF02C8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DB88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECF1998();
  sub_24F92D128();
  LOBYTE(v14) = 0;
  sub_24F92CD38();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_24F92CD38();
    v10 = *(v3 + 32);
    v14 = *(v3 + 16);
    v15 = v10;
    v16 = *(v3 + 48);
    v13 = 2;
    sub_24ECF1A40();
    sub_24F92CCF8();
    v11 = *(v3 + 72);
    v14 = *(v3 + 56);
    v15 = v11;
    v16 = *(v3 + 88);
    v13 = 3;
    sub_24F92CCF8();
    LOBYTE(v14) = 4;
    sub_24F92CCE8();
    LOBYTE(v14) = 5;
    sub_24F92CCE8();
    LOBYTE(v14) = 6;
    sub_24F92CCE8();
    LOBYTE(v14) = 7;
    sub_24F92CCE8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24ECF0584()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000012;
    if (v1 == 6)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0xD000000000000011;
    if (v1 == 4)
    {
      v6 = 0x5765676445706F74;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 1937207154;
    v3 = 0x746469576D657469;
    if (v1 != 2)
    {
      v3 = 0x676965486D657469;
    }

    if (*v0)
    {
      v2 = 0x726550736D657469;
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
}

uint64_t sub_24ECF0698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24ECF1CC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ECF06C0(uint64_t a1)
{
  v2 = sub_24ECF1998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ECF06FC(uint64_t a1)
{
  v2 = sub_24ECF1998();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24ECF0738@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_24ECF1628(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    a2[6] = v9[6];
    a2[7] = v5;
    a2[8] = v10[0];
    *(a2 + 137) = *(v10 + 9);
    v6 = v9[3];
    a2[2] = v9[2];
    a2[3] = v6;
    v7 = v9[5];
    a2[4] = v9[4];
    a2[5] = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    a2[1] = v8;
  }

  return result;
}

uint64_t sub_24ECF07B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DB60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECF138C();
  sub_24F92D128();
  LOBYTE(v17) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v9 = type metadata accessor for SocialSuggestionsComponentGrid();
    LOBYTE(v17) = 2;
    sub_24F929608();
    sub_24ECF14F4(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    v27 = *(v3 + *(v9 + 28));
    v26 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0);
    sub_24ECF153C(&qword_27F21F8A8, &qword_27F21F8B0);
    sub_24F92CD48();
    v10 = (v3 + *(v9 + 32));
    v11 = v10[7];
    v23 = v10[6];
    v24 = v11;
    v25[0] = v10[8];
    *(v25 + 10) = *(v10 + 138);
    v12 = v10[3];
    v19 = v10[2];
    v20 = v12;
    v13 = v10[5];
    v21 = v10[4];
    v22 = v13;
    v14 = v10[1];
    v17 = *v10;
    v18 = v14;
    v16[15] = 4;
    sub_24ECF15D4();
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24ECF0B54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DB48);
  v32 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v30 - v6;
  v8 = type metadata accessor for SocialSuggestionsComponentGrid();
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 40) = 0u;
  *&v42 = 0;
  v40 = 0u;
  v41 = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 9) = 0;
  v39 = v10 + 40;
  sub_24E61DA68(&v40, (v10 + 40), qword_27F21B590);
  v11 = *(v8 + 24);
  v12 = sub_24F929608();
  v13 = *(*(v12 - 8) + 56);
  v37 = v11;
  v13(&v10[v11], 1, 1, v12);
  v33 = v8;
  v14 = &v10[*(v8 + 32)];
  sub_24ECF1364(v49);
  v15 = v49[7];
  *(v14 + 6) = v49[6];
  *(v14 + 7) = v15;
  *(v14 + 8) = v50[0];
  *(v14 + 138) = *(v50 + 10);
  v16 = v49[3];
  *(v14 + 2) = v49[2];
  *(v14 + 3) = v16;
  v17 = v49[5];
  *(v14 + 4) = v49[4];
  *(v14 + 5) = v17;
  v18 = v49[1];
  *v14 = v49[0];
  *(v14 + 1) = v18;
  v19 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24ECF138C();
  v34 = v7;
  v20 = v36;
  sub_24F92D108();
  if (v20)
  {
    v21 = v37;
    __swift_destroy_boxed_opaque_existential_1(v38);
    sub_24E601704(v39, qword_27F24EC90);
    return sub_24E601704(&v10[v21], &qword_27F213E68);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v51 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v22 = v41;
    *v10 = v40;
    *(v10 + 1) = v22;
    *(v10 + 4) = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v51 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    v23 = v37;
    v24 = v32;
    sub_24E61DA68(&v40, v39, qword_27F24EC90);
    LOBYTE(v40) = 2;
    sub_24ECF14F4(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    sub_24E61DA68(v5, &v10[v23], &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0);
    v51 = 3;
    sub_24ECF153C(&qword_27F21F8D0, &qword_27F21F8D8);
    sub_24F92CC68();
    *&v10[*(v33 + 28)] = v40;
    v51 = 4;
    sub_24ECF13E0();
    sub_24F92CC18();
    (*(v24 + 8))(v34, v35);
    v25 = v47;
    *(v14 + 6) = v46;
    *(v14 + 7) = v25;
    *(v14 + 8) = v48[0];
    *(v14 + 138) = *(v48 + 10);
    v26 = v43;
    *(v14 + 2) = v42;
    *(v14 + 3) = v26;
    v27 = v45;
    *(v14 + 4) = v44;
    *(v14 + 5) = v27;
    v28 = v41;
    *v14 = v40;
    *(v14 + 1) = v28;
    sub_24ECF1434(v10, v31);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return sub_24ECF1498(v10);
  }
}

unint64_t sub_24ECF11B4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x736D657469;
  if (v1 != 3)
  {
    v4 = 0x6369666963657073;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6575676573;
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

uint64_t sub_24ECF124C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24ECF1F80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ECF1274(uint64_t a1)
{
  v2 = sub_24ECF138C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ECF12B0(uint64_t a1)
{
  v2 = sub_24ECF138C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24ECF1364(uint64_t a1)
{
  result = 0.0;
  *(a1 + 137) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 153) = 1;
  return result;
}

unint64_t sub_24ECF138C()
{
  result = qword_27F22DB50;
  if (!qword_27F22DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB50);
  }

  return result;
}

unint64_t sub_24ECF13E0()
{
  result = qword_27F22DB58;
  if (!qword_27F22DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB58);
  }

  return result;
}

uint64_t sub_24ECF1434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialSuggestionsComponentGrid();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ECF1498(uint64_t a1)
{
  v2 = type metadata accessor for SocialSuggestionsComponentGrid();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ECF14F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ECF153C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F8A0);
    sub_24E602068(a2, &qword_27F21BE90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24ECF15D4()
{
  result = qword_27F22DB68;
  if (!qword_27F22DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB68);
  }

  return result;
}

uint64_t sub_24ECF1628@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DB70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECF1998();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35) = 0;
  v9 = sub_24F92CC58();
  LOBYTE(v35) = 1;
  v34 = sub_24F92CC58();
  v44 = 2;
  sub_24ECF19EC();
  sub_24F92CC18();
  v32 = v36;
  v33 = v35;
  v43 = v37;
  v44 = 3;
  sub_24F92CC18();
  v30 = v36;
  v31 = v35;
  v42 = v37;
  LOBYTE(v35) = 4;
  v10 = sub_24F92CC08();
  v41 = v11 & 1;
  LOBYTE(v35) = 5;
  v29 = sub_24F92CC08();
  v40 = v12 & 1;
  LOBYTE(v35) = 6;
  v28 = sub_24F92CC08();
  v39 = v13 & 1;
  LOBYTE(v35) = 7;
  v14 = sub_24F92CC08();
  v16 = v15;
  v17 = *(v6 + 8);
  v27 = v14;
  v17(v8, v5);
  v16 &= 1u;
  v38 = v16;
  v18 = v43;
  v19 = v42;
  v20 = v41;
  v25 = v40;
  v26 = v39;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v22 = v34;
  *a2 = v9;
  *(a2 + 8) = v22;
  v23 = v32;
  *(a2 + 16) = v33;
  *(a2 + 32) = v23;
  *(a2 + 48) = v18;
  v24 = v31;
  *(a2 + 72) = v30;
  *(a2 + 56) = v24;
  *(a2 + 88) = v19;
  *(a2 + 96) = v10;
  *(a2 + 104) = v20;
  *(a2 + 112) = v29;
  *(a2 + 120) = v25;
  *(a2 + 128) = v28;
  *(a2 + 136) = v26;
  *(a2 + 144) = v27;
  *(a2 + 152) = v16;
  return result;
}

unint64_t sub_24ECF1998()
{
  result = qword_27F22DB78;
  if (!qword_27F22DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB78);
  }

  return result;
}

unint64_t sub_24ECF19EC()
{
  result = qword_27F22DB80;
  if (!qword_27F22DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB80);
  }

  return result;
}

unint64_t sub_24ECF1A40()
{
  result = qword_27F22DB90;
  if (!qword_27F22DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB90);
  }

  return result;
}

unint64_t sub_24ECF1AB8()
{
  result = qword_27F22DB98;
  if (!qword_27F22DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB98);
  }

  return result;
}

unint64_t sub_24ECF1B10()
{
  result = qword_27F22DBA0;
  if (!qword_27F22DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DBA0);
  }

  return result;
}

unint64_t sub_24ECF1B68()
{
  result = qword_27F22DBA8;
  if (!qword_27F22DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DBA8);
  }

  return result;
}

unint64_t sub_24ECF1BC0()
{
  result = qword_27F22DBB0;
  if (!qword_27F22DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DBB0);
  }

  return result;
}

unint64_t sub_24ECF1C18()
{
  result = qword_27F22DBB8;
  if (!qword_27F22DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DBB8);
  }

  return result;
}

unint64_t sub_24ECF1C70()
{
  result = qword_27F22DBC0;
  if (!qword_27F22DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DBC0);
  }

  return result;
}

uint64_t sub_24ECF1CC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1937207154 && a2 == 0xE400000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726550736D657469 && a2 == 0xEB00000000776F52 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746469576D657469 && a2 == 0xE900000000000068 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676965486D657469 && a2 == 0xEA00000000007468 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5765676445706F74 && a2 == 0xED00007468676965 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA5A480 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA5A4A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA5A4C0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_24ECF1F80(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6369666963657073 && a2 == 0xED00006E6F697461)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24ECF2140(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DBD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECF287C();
  sub_24F92D128();
  v13 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v12 = 1;
    sub_24F92CCA8();
    v11 = *(v3 + 32);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    sub_24E61B71C(&qword_27F2137A0);
    sub_24F92CCF8();
    v10[14] = 3;
    sub_24F92CD08();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24ECF2378()
{
  v1 = 0x646E7542656D6167;
  v2 = 0x6F6272656461656CLL;
  if (*v0 != 2)
  {
    v2 = 0x4449726579616C70;
  }

  if (*v0)
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

uint64_t sub_24ECF240C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24ECF29E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ECF2434(uint64_t a1)
{
  v2 = sub_24ECF287C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ECF2470(uint64_t a1)
{
  v2 = sub_24ECF287C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24ECF24CC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24ECF2534(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_24ECF2534@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DBC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECF287C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v26 = v9;
  v31 = 1;
  v12 = sub_24F92CBC8();
  v27 = v13;
  v25 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  v30 = 2;
  sub_24E61B71C(&qword_27F216420);
  sub_24F92CC18();
  v24 = v28;
  v29 = 3;
  v14 = sub_24F92CC28();
  v16 = v15;
  v17 = *(v6 + 8);
  v23 = v14;
  v17(v8, v5);
  v18 = v24;

  v19 = v27;

  __swift_destroy_boxed_opaque_existential_1(a1);

  v21 = v25;
  *a2 = v26;
  a2[1] = v11;
  a2[2] = v21;
  a2[3] = v19;
  v22 = v23;
  a2[4] = v18;
  a2[5] = v22;
  a2[6] = v16;
  return result;
}

unint64_t sub_24ECF287C()
{
  result = qword_27F22DBD0;
  if (!qword_27F22DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DBD0);
  }

  return result;
}

unint64_t sub_24ECF28E4()
{
  result = qword_27F22DBE0;
  if (!qword_27F22DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DBE0);
  }

  return result;
}

unint64_t sub_24ECF293C()
{
  result = qword_27F22DBE8;
  if (!qword_27F22DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DBE8);
  }

  return result;
}

unint64_t sub_24ECF2994()
{
  result = qword_27F22DBF0;
  if (!qword_27F22DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DBF0);
  }

  return result;
}

uint64_t sub_24ECF29E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E7542656D6167 && a2 == 0xEC0000004449656CLL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA4D4E0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xEE00734449647261 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t SearchLandingDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a3;
  v57 = a4;
  v59 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v14 = swift_allocObject();
  v50 = a2;
  sub_24E60169C(a2, v13, &qword_27F228530);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_24E911D90(v13, v17 + v15);
  v18 = v59;
  *(v17 + v16) = v59;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a5;
  sub_24E60169C(a2, v10, &qword_27F228530);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_24ECB2574;
  *(v20 + 24) = v18;
  v55 = v20;
  *(v14 + qword_27F22F198) = 0;
  v21 = MEMORY[0x277D84F90];
  *(v14 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v22 = qword_27F39C780;
  v58 = a5;
  swift_retain_n();
  swift_retain_n();

  *(v14 + v22) = sub_24E60986C(v21);
  v23 = (v14 + qword_27F22F1A8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v14 + qword_27F22F1B0);
  *v24 = 0;
  v24[1] = 0;
  v53 = v24;
  v25 = (v14 + qword_27F22F1B8);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v14 + qword_27F22F1C0);
  *v26 = 0;
  v26[1] = 0;
  v52 = v26;
  v27 = (v14 + qword_27F22F1C8);
  *v27 = 0;
  v27[1] = 0;
  v51 = v27;
  v28 = (v14 + qword_27F39C788);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 25) = 0u;
  *(v14 + qword_27F39C790) = 0;
  *(v14 + qword_27F22F1D0) = 0;
  *(v14 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v14 + qword_27F39C798) = 0;
  v29 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE58);
  swift_allocObject();
  *(v14 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v14 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE70);
  swift_allocObject();
  *(v14 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B8;
  swift_allocObject();
  *(v14 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v14 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  v35 = sub_24F92ADA8();

  v36 = v19;

  v37 = v59;

  sub_24E601704(v50, &qword_27F228530);
  *(v14 + v34) = v35;
  v38 = qword_27F22F1E0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v40 = *(*(v39 - 8) + 56);
  v40(v14 + v38, 1, 1, v39);
  v40(v14 + qword_27F22F1E8, 1, 1, v39);
  v41 = v56;
  *(v14 + 16) = v37;
  sub_24E911D90(v54, v14 + qword_27F39C7D0);
  *v23 = sub_24ECF3B10;
  v23[1] = v17;
  *v25 = 0;
  v25[1] = 0;
  if (v41)
  {
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    v43 = sub_24E965688;
  }

  else
  {
    v43 = 0;
    v42 = 0;
  }

  v44 = v52;
  v45 = v53;
  *v53 = v43;
  v45[1] = v42;
  *v44 = sub_24ECB256C;
  v44[1] = v36;
  v46 = v51;
  v47 = v55;
  *v51 = sub_24ECF3DB0;
  v46[1] = v47;
  v48 = v58;
  *(v14 + qword_27F22F1F0) = v57;
  *(v14 + qword_27F39C7D8) = v48;
  return v14;
}

uint64_t SearchLandingDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v65 = a3;
  v66 = a4;
  v57 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  v59 = a2;
  sub_24E60169C(a2, &v56 - v14, &qword_27F228530);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_24E911D90(v15, v18 + v16);
  v19 = v57;
  *(v18 + v17) = v57;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v58 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a5;
  sub_24E60169C(a2, v12, &qword_27F228530);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_24ECF4144;
  *(v21 + 24) = v19;
  v63 = v21;
  *(v6 + qword_27F22F198) = 0;
  v22 = MEMORY[0x277D84F90];
  *(v6 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v23 = qword_27F39C780;
  v67 = a5;
  swift_retain_n();
  swift_retain_n();

  *(v6 + v23) = sub_24E60986C(v22);
  v24 = (v6 + qword_27F22F1A8);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v6 + qword_27F22F1B0);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v6 + qword_27F22F1B8);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v6 + qword_27F22F1C0);
  *v27 = 0;
  v27[1] = 0;
  v60 = v27;
  v28 = (v6 + qword_27F22F1C8);
  *v28 = 0;
  v28[1] = 0;
  v61 = v28;
  v29 = (v6 + qword_27F39C788);
  *v29 = 0u;
  v29[1] = 0u;
  *(v29 + 25) = 0u;
  *(v6 + qword_27F39C790) = 0;
  *(v6 + qword_27F22F1D0) = 0;
  *(v6 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v6 + qword_27F39C798) = 0;
  v30 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE58);
  swift_allocObject();
  *(v6 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v6 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE70);
  swift_allocObject();
  *(v6 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7B8;
  swift_allocObject();
  *(v6 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v6 + v34) = sub_24F92ADA8();
  v35 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  v36 = sub_24F92ADA8();
  v37 = v58;

  v64 = v20;

  sub_24E601704(v59, &qword_27F228530);
  *(v6 + v35) = v36;
  v38 = qword_27F22F1E0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v40 = *(*(v39 - 8) + 56);
  v40(v6 + v38, 1, 1, v39);
  v41 = v39;
  v42 = v65;
  v40(v6 + qword_27F22F1E8, 1, 1, v41);
  *(v6 + 16) = v19;
  sub_24E911D90(v62, v6 + qword_27F39C7D0);
  v43 = *v24;
  *v24 = sub_24ECF4140;
  v24[1] = v37;
  sub_24E824448(v43);
  v44 = *v26;
  *v26 = 0;
  v26[1] = 0;
  sub_24E824448(v44);
  if (v42)
  {
    v45 = swift_allocObject();
    *(v45 + 16) = v42;
    v46 = sub_24EC02BCC;
  }

  else
  {
    v46 = 0;
    v45 = 0;
  }

  v47 = *v25;
  *v25 = v46;
  v25[1] = v45;
  sub_24E824448(v47);
  v48 = v60;
  v49 = *v60;
  v50 = v64;
  *v60 = sub_24ECF4170;
  v48[1] = v50;
  sub_24E824448(v49);
  v51 = v61;
  v52 = *v61;
  v53 = v63;
  *v61 = sub_24ECF4148;
  v51[1] = v53;
  sub_24E824448(v52);
  v54 = v67;
  *(v6 + qword_27F22F1F0) = v66;
  *(v6 + qword_27F39C7D8) = v54;
  return v6;
}

uint64_t sub_24ECF37DC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296F8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_24F91F4A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a2, v8, &qword_27F228530);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24E601704(v8, &qword_27F228530);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC08);
    sub_24ECF40CC();
    swift_allocError();
    *v13 = 0;
    return sub_24F92A978();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    (*(v10 + 16))(v5, v12, v9);
    sub_24F929C28();

    sub_24F928FE8();
    sub_24F929BF8();

    v15 = sub_24F929C08();

    v16 = sub_24EB48430(v5, v15, "GameStoreKit/SearchLandingDiffablePageContentPresenter.swift", 60, 2);

    sub_24E601704(v5, &qword_27F2296F8);
    (*(v10 + 8))(v12, v9);
    return v16;
  }
}

uint64_t sub_24ECF3B14(uint64_t a1)
{
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24F929C28();

  sub_24F928FE8();
  sub_24F929BF8();

  v2 = sub_24F929C18();

  v3 = sub_24EB46264(a1, v2, "GameStoreKit/SearchLandingDiffablePageContentPresenter.swift", 60, 2);

  return v3;
}

uint64_t sub_24ECF3C04(uint64_t a1, uint64_t a2)
{
  sub_24E60169C(a1, &v6, &qword_27F2129B0);
  if (v7)
  {
    sub_24E612B0C(&v6, v8);
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    sub_24E643A9C(v8, &v6);
    v3 = sub_24EB486CC(&v6, a2, "GameStoreKit/SearchLandingDiffablePageContentPresenter.swift", 60, 2);

    sub_24E601704(&v6, &qword_27F2296E8);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    sub_24E601704(&v6, &qword_27F2129B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC08);
    sub_24ECF40CC();
    swift_allocError();
    *v5 = 2;
    return sub_24F92A978();
  }
}

uint64_t sub_24ECF3D50(uint64_t a1, uint64_t (*a2)(_BYTE *))
{
  sub_24E643A9C(a1, v5);
  v3 = a2(v5);
  sub_24E601704(v5, &qword_27F2129B0);
  return v3;
}

uint64_t SearchLandingDiffablePageContentPresenter.__deallocating_deinit()
{
  _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_24ECF3E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_24E824448(a10);
  sub_24E824448(a6);
  sub_24E824448(a4);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t objectdestroyTm_32()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24ECF3FE4()
{

  return swift_deallocObject();
}

uint64_t sub_24ECF401C()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for SearchLandingDiffablePageContentPresenter()
{
  result = qword_27F22DBF8;
  if (!qword_27F22DBF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24ECF40CC()
{
  result = qword_27F22DC10;
  if (!qword_27F22DC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DC10);
  }

  return result;
}

id sub_24ECF4174(uint64_t a1, void *a2, uint64_t a3)
{
  v62 = a2;
  v4 = v3;
  v68 = a3;
  v66 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DCC0);
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v57 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DCC8);
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v65 = &v46 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC60);
  v58 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v56 = &v46 - v9;
  v49 = sub_24F927FF8();
  v10 = *(v49 - 1);
  MEMORY[0x28223BE20](v49);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_24F927ED8();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v53 = v13;
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_24F927FA8();
  v72 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v19 = sub_24F927FC8();
  MEMORY[0x28223BE20](v19 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DCD0);
  swift_allocObject();
  *(v3 + 16) = sub_24F928888();
  result = [objc_allocWithZone(MEMORY[0x277CD4660]) init];
  if (result)
  {
    *(v3 + OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher_virtualMachine) = result;
    v21 = OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher____lazy_storage___indexPipeline;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2222D8);
    (*(*(v22 - 8) + 56))(v4 + v21, 1, 1, v22);
    v23 = OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher____lazy_storage___sourceDataPipeline;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2222D0);
    (*(*(v24 - 8) + 56))(v4 + v23, 1, 1, v24);
    sub_24F927FB8();
    sub_24F927FE8();
    swift_allocObject();
    v25 = sub_24F927FD8();
    v26 = v66;
    sub_24E615E00(v66, &v69);
    v48 = v25;

    sub_24F92A328();
    v63 = v18;
    sub_24F927F98();
    (*(v10 + 104))(v12, *MEMORY[0x277D21A38], v49);
    v70 = sub_24F928028();
    v71 = MEMORY[0x277D21A60];
    __swift_allocate_boxed_opaque_existential_1(&v69);
    sub_24F928018();
    sub_24F927EB8();
    v27 = OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher_jetpackLoader;
    v28 = v50;
    v49 = *(v50 + 32);
    v29 = v52;
    v49(v4 + OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher_jetpackLoader, v14, v52);
    v30 = *(v28 + 16);
    v47 = v4;
    v30(v14, v4 + v27, v29);
    sub_24F92AAF8();
    (*(v28 + 8))(v14, v29);
    (*(v72 + 16))(v64, v63, v67);
    v30(v14, v4 + v27, v29);
    sub_24E615E00(v26, &v69);
    v31 = v72;
    v32 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v33 = (v51 + *(v28 + 80) + v32) & ~*(v28 + 80);
    v34 = (v53 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    v36 = *(v31 + 32);
    v37 = v67;
    v36(v35 + v32, v64, v67);
    v49(v35 + v33, v14, v29);
    sub_24E612C80(&v69, v35 + v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F38);
    sub_24E602068(&qword_27F22DCD8, &qword_27F22DCC8);
    v38 = v55;
    v39 = v65;
    v40 = sub_24F928A08();

    (*(v54 + 8))(v39, v38);
    *&v69 = v40;
    v41 = v57;
    sub_24F928C48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DCE0);
    sub_24E602068(&qword_27F22DCE8, &qword_27F22DCE0);
    v42 = sub_24F928A38();
    (*(v59 + 8))(v41, v60);

    *&v69 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DCF0);
    sub_24E602068(&qword_27F22DCF8, &qword_27F22DCF0);
    v43 = v56;
    sub_24F9289F8();

    v44 = v47;
    (*(v58 + 32))(v47 + OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher_bundlePipeline, v43, v61);
    sub_24F928ED8();

    v45 = sub_24F92A498();
    (*(*(v45 - 8) + 8))(v68, v45);
    __swift_destroy_boxed_opaque_existential_1(v66);
    (*(v72 + 8))(v63, v37);
    return v44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24ECF4AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = &v23 - v6;
  v7 = sub_24F927ED8();
  v24 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_24F927FA8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a2, v10, v13);
  (*(v8 + 16))(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v7);
  sub_24E615E00(v26, v28);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v15, v14, v10);
  (*(v8 + 32))(v17 + v16, &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  sub_24E612C80(v28, v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD00);
  v18 = sub_24F92A9E8();
  v19 = sub_24F92B858();
  v20 = v27;
  (*(*(v19 - 8) + 56))(v27, 1, 1, v19);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_24F996E38;
  v21[5] = v17;
  v21[6] = v18;

  sub_24E6959D8(0, 0, v20, &unk_24F996E48, v21);

  return v18;
}

uint64_t sub_24ECF4E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_24F91F4A8();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD08);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECF4F70, 0, 0);
}

uint64_t sub_24ECF4F70()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = sub_24F927EF8();
  *v3 = v0;
  v3[1] = sub_24ECF5058;
  v5 = v0[11];
  v6 = MEMORY[0x277D21998];

  return MEMORY[0x28217E758](v5, &unk_24F996E60, v2, v4, v6);
}

uint64_t sub_24ECF5058()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24ECF5440;
  }

  else
  {

    v2 = sub_24ECF5174;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECF5174()
{
  v1 = v0[5];
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_24ECF5224;
  v4 = v0[8];

  return sub_24ECF5764(v4, v2);
}

uint64_t sub_24ECF5224()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24ECF54B8;
  }

  else
  {
    v2 = sub_24ECF5338;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECF5338()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F38);
  (*(v6 + 16))(v7, v4, v5);
  sub_24F927F88();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24ECF5440()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECF54B8()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24ECF5540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_24ECF5564, 0, 0);
}

uint64_t sub_24ECF5564()
{
  sub_24F928098();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_24ECF5610;
  v2 = *(v0 + 56);

  return MEMORY[0x28217E6F8](v2, v0 + 16);
}

uint64_t sub_24ECF5610()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24ECF574C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24ECF5764(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD10);
  v3[5] = swift_task_alloc();
  v5 = sub_24F927F58();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD18);
  v3[9] = swift_task_alloc();
  v3[10] = *(a2 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = sub_24F927F18();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECF5954, 0, 0);
}

uint64_t sub_24ECF5954()
{
  v1 = v0[14];
  v2 = *(v0[10] + 16);
  v2(v0[12], v0[4], v0[3]);
  v3 = swift_dynamicCast();
  v4 = *(v1 + 56);
  if (v3)
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = v0[13];
    v8 = v0[9];
    v4(v8, 0, 1, v7);
    (*(v6 + 32))(v5, v8, v7);
    sub_24F927F08();
    (*(v6 + 8))(v0[15], v0[13]);

    v9 = v0[1];
LABEL_8:

    return v9();
  }

  v10 = v0[11];
  v11 = v0[9];
  v12 = v0[7];
  v13 = v0[4];
  v14 = v0[3];
  v4(v11, 1, 1, v0[13]);
  sub_24E601704(v11, &qword_27F22DD18);
  v2(v10, v13, v14);
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (!v15)
  {
    v23 = v0[5];
    v16(v23, 1, 1, v0[6]);
    sub_24E601704(v23, &qword_27F22DD10);
    sub_24ECF7930();
    swift_allocError();
    swift_willThrow();

    v9 = v0[1];
    goto LABEL_8;
  }

  v18 = v0[7];
  v17 = v0[8];
  v20 = v0[5];
  v19 = v0[6];
  v16(v20, 0, 1, v19);
  (*(v18 + 32))(v17, v20, v19);
  v21 = swift_task_alloc();
  v0[16] = v21;
  *v21 = v0;
  v21[1] = sub_24ECF5CB0;
  v22 = v0[2];

  return MEMORY[0x28217E740](v22);
}

uint64_t sub_24ECF5CB0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24ECF5E88;
  }

  else
  {
    v2 = sub_24ECF5DC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECF5DC4()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24ECF5E88()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24ECF5F48@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC98);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher____lazy_storage___indexPipeline;
  swift_beginAccess();
  sub_24E60169C(v1 + v9, v8, &qword_27F22DC98);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2222D8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_24E601704(v8, &qword_27F22DC98);
  v13[1] = OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher_bundlePipeline;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DCA0);
  sub_24E602068(&qword_27F22DC70, &qword_27F22DC60);
  v13[2] = sub_24F928A18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DCA8);
  sub_24E602068(&qword_27F22DCB0, &qword_27F22DCA8);
  sub_24F9289F8();

  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_24E61DA68(v5, v1 + v9, &qword_27F22DC98);
  return swift_endAccess();
}

uint64_t sub_24ECF625C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = a1;
  v48 = a2;
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928078();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928088();
  v14 = sub_24F927EE8();
  if (v2)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v46 = v11;
  v47 = v10;
  v17 = v52;
  if (v15 >> 60 == 15)
  {
    v18 = sub_24F928068();
    v20 = v19;
    sub_24ECF733C();
    swift_allocError();
    *v21 = v18;
    v21[1] = v20;
    swift_willThrow();
    return (*(v46 + 8))(v13, v47);
  }

  else
  {
    v22 = v14;
    v23 = v15;
    sub_24E71CBC0(v14, v15);
    v44 = v22;
    v45 = v23;
    sub_24F928238();
    v24 = type metadata accessor for JSJetpackIndex(0);
    (*(v4 + 16))(v6, v17, v3);
    v25 = sub_24EE7CB00(v9, v6);
    v52 = v24;
    v26 = ASKBuildTypeGetCurrent();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_24F9479A0;
    *(v27 + 32) = @"debug";
    *(v27 + 40) = @"convergence";
    *(v27 + 48) = @"internal";
    type metadata accessor for BuildType(0);
    v43 = v25;
    v28 = @"debug";
    v29 = @"convergence";
    v30 = @"internal";
    v31 = sub_24F92B588();

    LODWORD(v23) = ASKBuildTypeIsAnyOf(v26, v31);

    v32 = v43;
    v34 = v46;
    v33 = v47;
    if (v23)
    {
      v35 = *(v43 + OBJC_IVAR____TtC12GameStoreKit14JSJetpackIndex_properties);
      if (*(v35 + 16) && (v36 = sub_24E76D644(0x6E6F6973726576, 0xE700000000000000), (v37 & 1) != 0))
      {
        sub_24E643A9C(*(v35 + 56) + 32 * v36, v51);
        v38 = swift_dynamicCast();
        v39 = v38 == 0;
        if (v38)
        {
          v40 = v49;
        }

        else
        {
          v40 = 0;
        }

        if (v39)
        {
          v41 = 0;
        }

        else
        {
          v41 = v50;
        }
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      sub_24EA2330C(v40, v41);
    }

    v42 = v48;
    v48[3] = v52;
    v42[4] = &off_2861F9570;
    sub_24E71CBAC(v44, v45);
    *v42 = v32;
    return (*(v34 + 8))(v13, v33);
  }
}

uint64_t sub_24ECF6718@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC78);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher____lazy_storage___sourceDataPipeline;
  swift_beginAccess();
  sub_24E60169C(v1 + v9, v8, &qword_27F22DC78);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2222D0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_24E601704(v8, &qword_27F22DC78);
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC60);
  sub_24E602068(&qword_27F22DC70, &qword_27F22DC60);
  v16 = sub_24F928A18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC80);
  sub_24E602068(&qword_27F22DC88, &qword_27F22DC80);
  v12 = v15;
  sub_24F9289F8();

  (*(v11 + 16))(v5, v12, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_24E61DA68(v5, v1 + v9, &qword_27F22DC78);
  return swift_endAccess();
}

uint64_t sub_24ECF6A18@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_24F928078();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F38);
  sub_24F928058();
  v7 = sub_24F927EE8();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  if (v8 >> 60 == 15)
  {
    v9 = sub_24F928068();
    v11 = v10;
    sub_24ECF733C();
    swift_allocError();
    *v12 = v9;
    v12[1] = v11;
    swift_willThrow();
    return (*(v4 + 8))(v6, v3);
  }

  v14 = v7;
  v15 = v6;
  v16 = v8;
  result = (*(v4 + 8))(v15, v3);
  *a1 = v14;
  a1[1] = v16;
  return result;
}

uint64_t sub_24ECF6B98@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F38);
  sub_24F927EF8();
  result = sub_24F928008();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24ECF6C00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F38) + 48);
  v5 = sub_24F927EF8();
  v6 = MEMORY[0x277D21998];
  a2[3] = v5;
  a2[4] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1 + v4, v5);
}

uint64_t sub_24ECF6CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_24E60169C(a1, v9, &qword_27F22DCB8);
  v5 = v10;
  v6 = v11;
  sub_24E612C80(v9, v12);
  v7 = *(a2 + OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher_virtualMachine);
  sub_24EC65300(v5, v6, v12, v7, a3);
  __swift_destroy_boxed_opaque_existential_1(v12);

  return sub_24E627880(v5, v6);
}

uint64_t sub_24ECF6D5C()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher_jetpackLoader;
  v2 = sub_24F927ED8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher_bundlePipeline;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC60);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher____lazy_storage___indexPipeline, &qword_27F22DC98);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher____lazy_storage___sourceDataPipeline, &qword_27F22DC78);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JSJetpackFetcher()
{
  result = qword_27F22DC38;
  if (!qword_27F22DC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ECF6EF0()
{
  sub_24F927ED8();
  if (v0 <= 0x3F)
  {
    sub_24ECF70D0(319, &qword_27F22DC48, &qword_27F216F38, &unk_24F944828, MEMORY[0x277D21D88]);
    if (v1 <= 0x3F)
    {
      sub_24ECF70D0(319, &qword_27F22DC50, &qword_27F2222D8, &unk_24F969100, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24ECF70D0(319, &qword_27F22DC58, &qword_27F2222D0, &unk_24F9690F8, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_24ECF70D0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24ECF715C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2222D8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  sub_24ECF5F48(&v6 - v2);
  v4 = sub_24F928ED8();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_24ECF7264(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC60);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  sub_24E602068(&qword_27F22DC70, &qword_27F22DC60);
  sub_24F928A18();
  v4 = sub_24F929088();

  return v4;
}

unint64_t sub_24ECF733C()
{
  result = qword_27F22DC90;
  if (!qword_27F22DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DC90);
  }

  return result;
}

uint64_t sub_24ECF7394(uint64_t a1)
{
  v3 = *(sub_24F927FA8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_24F927ED8() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  return sub_24ECF4AF0(a1, v1 + v4, v1 + v7, v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t objectdestroyTm_33()
{
  v1 = sub_24F927FA8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F927ED8();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + v8);

  return swift_deallocObject();
}

uint64_t sub_24ECF75EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_24F927FA8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24F927ED8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24E6541E4;

  return sub_24ECF4E44(a1, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_24ECF775C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ECF77A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24E6953A8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24ECF7880(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24ECF5540(a1, a2, v6);
}

unint64_t sub_24ECF7930()
{
  result = qword_27F22DD20;
  if (!qword_27F22DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DD20);
  }

  return result;
}

unint64_t sub_24ECF79AC()
{
  result = qword_27F22DD28;
  if (!qword_27F22DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DD28);
  }

  return result;
}

uint64_t sub_24ECF7A30@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  *a2 = sub_24F9249A8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD30);
  sub_24ECF7C78(a1, (a2 + *(v4 + 44)));
  sub_24F927618();
  sub_24F9238C8();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD38) + 36));
  *v5 = v23;
  v5[1] = v24;
  v5[2] = v25;
  LOBYTE(a1) = sub_24F9257F8();
  sub_24F923318();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD40) + 36);
  *v14 = a1;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v15 = sub_24F926D08();

  LOBYTE(a1) = sub_24F925808();
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD48) + 36);
  *v16 = v15;
  *(v16 + 8) = a1;
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD50) + 36);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_24F924B38();
  v20 = *(*(v19 - 8) + 104);
  v20(v17, v18, v19);
  *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B698) + 36)) = 0;
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD58) + 36);
  v20(v21, v18, v19);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2552C0);
  *(v21 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_24ECF7C78@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  LODWORD(v43) = a1;
  v44 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD60);
  MEMORY[0x28223BE20](v42);
  v3 = &v39[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD68);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v39[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v39[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD78);
  MEMORY[0x28223BE20](v12);
  v14 = &v39[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD80);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v39[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v21 = &v39[-v20];
  sub_24ECF8170(v14);
  v22 = sub_24F9259D8();
  KeyPath = swift_getKeyPath();
  v24 = &v14[*(v12 + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  sub_24ECF8410();
  v25 = 1;
  sub_24F9268B8();
  sub_24E601704(v14, &qword_27F22DD78);
  if (v43)
  {
    v43 = sub_24F926DF8();
    v40 = sub_24F9251C8();
    v26 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214418) + 36);
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
    v28 = *MEMORY[0x277CE13B8];
    v29 = sub_24F927748();
    (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
    *v26 = v40;
    *v3 = v43;
    v30 = sub_24F925898();
    v31 = swift_getKeyPath();
    v32 = (v3 + *(v42 + 36));
    *v32 = v31;
    v32[1] = v30;
    sub_24F925938();
    sub_24ECF8650();
    v33 = v41;
    sub_24F9260C8();
    sub_24E601704(v3, &qword_27F22DD60);
    (*(v45 + 32))(v11, v33, v46);
    v25 = 0;
  }

  (*(v45 + 56))(v11, v25, 1, v46);
  v34 = *(v16 + 16);
  v34(v18, v21, v15);
  sub_24ECF8578(v11, v8);
  v35 = v44;
  v34(v44, v18, v15);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DDB0);
  sub_24ECF8578(v8, &v35[*(v36 + 48)]);
  sub_24ECF85E8(v11);
  v37 = *(v16 + 8);
  v37(v21, v15);
  sub_24ECF85E8(v8);
  return (v37)(v18, v15);
}

uint64_t sub_24ECF8170@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_24F9252A8();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_24F925288();
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_24F925298();
  sub_24F9252B8();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DDC8) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

unint64_t sub_24ECF8410()
{
  result = qword_27F22DD88;
  if (!qword_27F22DD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DD78);
    sub_24ECF84C8();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DD88);
  }

  return result;
}

unint64_t sub_24ECF84C8()
{
  result = qword_27F22DD90;
  if (!qword_27F22DD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DD98);
    sub_24E602068(&qword_27F22DDA0, &qword_27F22DDA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DD90);
  }

  return result;
}

uint64_t sub_24ECF8578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ECF85E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24ECF8650()
{
  result = qword_27F22DDB8;
  if (!qword_27F22DDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DD60);
    sub_24ECF8708();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DDB8);
  }

  return result;
}

unint64_t sub_24ECF8708()
{
  result = qword_27F22DDC0;
  if (!qword_27F22DDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214418);
    sub_24E602068(&qword_27F213F88, &qword_27F213F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DDC0);
  }

  return result;
}

unint64_t sub_24ECF87C4()
{
  result = qword_27F22DDD0;
  if (!qword_27F22DDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DD58);
    sub_24ECF887C();
    sub_24E602068(&qword_27F21B728, &unk_27F2552C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DDD0);
  }

  return result;
}

unint64_t sub_24ECF887C()
{
  result = qword_27F22DDD8;
  if (!qword_27F22DDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DD50);
    sub_24ECF8934();
    sub_24E602068(&qword_27F21B720, &qword_27F21B698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DDD8);
  }

  return result;
}

unint64_t sub_24ECF8934()
{
  result = qword_27F22DDE0;
  if (!qword_27F22DDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DD48);
    sub_24ECF89EC();
    sub_24E602068(&qword_27F216518, &qword_27F216520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DDE0);
  }

  return result;
}

unint64_t sub_24ECF89EC()
{
  result = qword_27F22DDE8;
  if (!qword_27F22DDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DD40);
    sub_24ECF8A78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DDE8);
  }

  return result;
}

unint64_t sub_24ECF8A78()
{
  result = qword_27F22DDF0;
  if (!qword_27F22DDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DD38);
    sub_24E602068(&qword_27F22DDF8, &qword_27F22DE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DDF0);
  }

  return result;
}

void *sub_24ECF8B58()
{
  v1 = v0;
  v2 = sub_24F927AF8();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F927AA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24F929638();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE08);
  swift_allocObject();
  v12 = sub_24F9280D8();
  v0[4] = 0;
  v0[5] = 0;
  v0[3] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226588);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v0[6] = v13;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v15 = result;
    v16 = sub_24F92B098();
    v17 = [v15 applicationIsInstalled_];

    *(v1 + 16) = v17;
    sub_24F929628();
    v18 = sub_24E8039DC(&unk_2861C0A78);
    sub_24EB715C4(&unk_2861C0A98);
    *v7 = v18;
    v19 = *MEMORY[0x277CEBFA8];
    v20 = *(v5 + 104);
    v26 = v4;
    v20(v7, v19, v4);
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v21 = v27;
    sub_24F927AE8();
    *(&v31 + 1) = v8;
    v32 = MEMORY[0x277D21FB0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
    (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
    swift_allocObject();
    swift_weakInit();

    v23 = sub_24F927AD8();
    v25 = v24;

    (*(v28 + 8))(v21, v29);
    (*(v5 + 8))(v7, v26);
    (*(v9 + 8))(v11, v8);

    __swift_destroy_boxed_opaque_existential_1(&v30);
    v1[4] = v23;
    v1[5] = v25;
    swift_unknownObjectRelease();
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24ECF8F40(unint64_t a1)
{
  if (a1 >> 62)
  {
    v5 = a1;
    v6 = sub_24F92C738();
    a1 = v5;
    if (!v6)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x253052270](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v1 = *(a1 + 32);
  }

  v2 = v1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 48);
    MEMORY[0x28223BE20](Strong);

    os_unfair_lock_lock(v4 + 4);
    sub_24ECF9130();
    os_unfair_lock_unlock(v4 + 4);
  }

  else
  {
  }
}

uint64_t sub_24ECF9078()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_24ECF90F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_24ECF9130()
{
  v1 = *(v0 + 16);
  result = [*(v0 + 24) isInstalled];
  v3 = *(v1 + 16);
  *(v1 + 16) = result;
  if (result != v3)
  {
    return sub_24F9280C8();
  }

  return result;
}

uint64_t sub_24ECF9254(char a1, char a2)
{
  if (a1 && (a2 & 0xFE) != 2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93FC20;
  sub_24F926C98();
  *(v2 + 32) = sub_24F9273C8();
  *(v2 + 40) = v3;
  sub_24F926C98();
  *(v2 + 48) = sub_24F9273C8();
  *(v2 + 56) = v4;
  sub_24F926C88();
  *(v2 + 64) = sub_24F9273C8();
  *(v2 + 72) = v5;
  sub_24F926C88();
  *(v2 + 80) = sub_24F9273C8();
  *(v2 + 88) = v6;
  return v2;
}

uint64_t sub_24ECF93C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Achievement(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24ECF9448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Achievement(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AchievementsCardFanLayoutMetrics.Card()
{
  result = qword_27F22DE10;
  if (!qword_27F22DE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECF9504()
{
  result = type metadata accessor for Achievement(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ECF95AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_24F9294C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F929688();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929678();
  v17 = a2;
  sub_24F929E68();
  sub_24F9295D8();
  v13 = sub_24F929478();
  (*(v6 + 8))(v8, v5);
  if (v13 != 2 && (v13 & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v3 + 24);
      sub_24F929E68();
      ObjectType = swift_getObjectType();
      (*(v14 + 8))(ObjectType, v14);
      swift_unknownObjectRelease();
    }
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_24ECF97DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v16 = a2;
  v4 = sub_24F9294C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F929688();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929678();
  sub_24F9295D8();
  v12 = sub_24F929478();
  (*(v5 + 8))(v7, v4);
  if (v12 != 2 && (v12 & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v3 + 24);
      sub_24F929E68();
      ObjectType = swift_getObjectType();
      (*(v13 + 8))(ObjectType, v13);
      swift_unknownObjectRelease();
    }
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24ECF99F4(uint64_t a1, uint64_t a2)
{
  v14[1] = a2;
  v2 = sub_24F9294C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F929688();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929668();
  sub_24F9295D8();
  v10 = sub_24F929478();
  (*(v3 + 8))(v5, v2);
  if (v10 != 2 && (v10 & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v14[2] + 24);
      sub_24F929E68();
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(ObjectType, v11);
      swift_unknownObjectRelease();
    }
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24ECF9C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[1] = a5;
  v6 = sub_24F9294C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F929688();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v5;
  sub_24F929668();
  sub_24F929E68();
  sub_24F9295D8();
  v14 = sub_24F929478();
  (*(v7 + 8))(v9, v6);
  if (v14 != 2 && (v14 & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v13 + 24);
      sub_24F929E68();
      ObjectType = swift_getObjectType();
      (*(v15 + 8))(ObjectType, v15);
      swift_unknownObjectRelease();
    }
  }

  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_24ECF9E64(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F9294C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F929688();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929678();
  v13 = a2;
  sub_24F929E78();
  sub_24F9295D8();
  v11 = sub_24F929478();
  (*(v4 + 8))(v6, v3);
  if (v11 != 2 && (v11 & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_24F929E78();
    }
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24ECFA064(uint64_t a1, uint64_t a2)
{
  v12 = a2;
  v2 = sub_24F9294C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F929688();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929678();
  sub_24F9295D8();
  v10 = sub_24F929478();
  (*(v3 + 8))(v5, v2);
  if (v10 != 2 && (v10 & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_24F929E78();
    }
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t FastImpressionsTracker.__allocating_init(mainQueueName:fastQueueName:impressionableThreshold:)(double a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_24F929EB8();
  swift_allocObject();
  *(v2 + 40) = sub_24F929E98();
  swift_allocObject();
  *(v2 + 48) = sub_24F929E98();
  *(v2 + 32) = a1;
  return v2;
}

uint64_t FastImpressionsTracker.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*FastImpressionsTracker.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24EC037BC;
}

uint64_t FastImpressionsTracker.init(mainQueueName:fastQueueName:impressionableThreshold:)(double a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_24F929EB8();
  swift_allocObject();
  *(v1 + 40) = sub_24F929E98();
  swift_allocObject();
  *(v1 + 48) = sub_24F929E98();
  *(v1 + 32) = a1;
  return v1;
}

uint64_t FastImpressionsTracker.elementDidEnterView(_:on:with:)()
{
  v1 = v0;
  v2 = sub_24F9294C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929E68();
  sub_24F9295D8();
  v6 = sub_24F929478();
  result = (*(v3 + 8))(v5, v2);
  if (v6 != 2 && (v6 & 1) != 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(v1 + 24);
      sub_24F929E68();
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(ObjectType, v8);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t FastImpressionsTracker.elementDidLeaveView(_:on:with:)()
{
  v0 = sub_24F9294C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929E78();
  sub_24F9295D8();
  v4 = sub_24F929478();
  result = (*(v1 + 8))(v3, v0);
  if (v4 != 2 && (v4 & 1) != 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_unknownObjectRelease();
      return sub_24F929E78();
    }
  }

  return result;
}

uint64_t FastImpressionsTracker.deinit()
{
  sub_24E883630(v0 + 16);

  return v0;
}

uint64_t FastImpressionsTracker.__deallocating_deinit()
{
  sub_24E883630(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_24ECFA98C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24ECFA9DC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit37ContactsListRecentsSocialMenuProvider_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_24ECFAAC4()
{
  result = qword_27F22DE28;
  if (!qword_27F22DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DE28);
  }

  return result;
}

unint64_t sub_24ECFAB1C()
{
  result = qword_27F22DE30;
  if (!qword_27F22DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DE30);
  }

  return result;
}

uint64_t sub_24ECFAB70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xD00000000000001DLL;
  a2[1] = 0x800000024F997430;
  a2[2] = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v4 = [objc_allocWithZone(MEMORY[0x277CF7D40]) init];
  a2[3] = v4;
  sub_24F2BE760(a2 + 4);
  v5 = MEMORY[0x277D84F90];
  a2[10] = MEMORY[0x277D84F90];
  a2[12] = 0;
  sub_24E60169C(a1, (a2 + 13), &unk_27F22DFF0);
  a2[11] = v5;
  v6 = [v4 callCountWithPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  *(v7 + 32) = v6;
  result = sub_24E601704(a1, &unk_27F22DFF0);
  a2[11] = v7;
  return result;
}

uint64_t sub_24ECFAC98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223438);
  v0 = *(type metadata accessor for SocialMenuItem(0) - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = (v2 + v1);
  v4 = type metadata accessor for SocialMenuAction(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  v10 = 0;
  *v3 = 0x676E6964616F6CLL;
  *(v3 + 1) = 0xE700000000000000;
  *(v3 + 2) = 0xE2676E6964616F4CLL;
  *(v3 + 3) = 0xAA0000000000A680;
  memset(v9, 0, sizeof(v9));
  v3[v4[7]] = 82;
  v7 = &v3[v4[8]];
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  sub_24E61DA68(v9, v7, qword_27F21B590);
  *&v3[v4[9]] = 0;
  result = swift_storeEnumTagMultiPayload();
  qword_27F39C5A0 = v2;
  return result;
}

uint64_t sub_24ECFAE48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v118 = a1;
  v114 = sub_24F921288();
  v134 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v4 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF50);
  MEMORY[0x28223BE20](v115);
  v117 = (&v101 - v5);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF58);
  MEMORY[0x28223BE20](v111);
  v112 = &v101 - v6;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF60);
  MEMORY[0x28223BE20](v116);
  v113 = &v101 - v7;
  v8 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v133 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v119 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8);
  MEMORY[0x28223BE20](v110);
  v106 = &v101 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF70);
  v103 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v102 = &v101 - v12;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF78);
  MEMORY[0x28223BE20](v107);
  v109 = &v101 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v129 = &v101 - v18;
  v19 = type metadata accessor for PlayerAvatarView(0);
  v126 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v125 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v136 = (&v101 - v22);
  MEMORY[0x28223BE20](v23);
  v25 = &v101 - v24;
  v128 = type metadata accessor for PlayerAvatar(0);
  v26 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v135 = (&v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v124 = (&v101 - v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v101 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = (&v101 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF88);
  MEMORY[0x28223BE20](v36);
  v108 = &v101 - v38;
  v39 = v2[11];
  v40 = *(v39 + 16);
  if (v40)
  {
    v127 = v19;
    v105 = v37;
    v104 = v11;
    if (v40 == 1)
    {
      v41 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v136 = type metadata accessor for PlayerAvatar;
      sub_24ECFF7D0(v39 + v41, v35, type metadata accessor for PlayerAvatar);
      v42 = v35[1];
      v135 = *v35;
      v43 = type metadata accessor for PlayerAvatar.Overlay(0);
      v44 = *(*(v43 - 8) + 56);
      v45 = v129;
      v44(v129, 1, 1, v43);
      v142 = 0;
      v140 = 0u;
      v141 = 0u;
      v46 = v128;
      v47 = *(v128 + 20);
      v44(&v32[v47], 1, 1, v43);
      v48 = &v32[*(v46 + 24)];
      v139 = 0;
      v137 = 0u;
      v138 = 0u;
      *v48 = 0u;
      *(v48 + 16) = 0u;
      *(v48 + 32) = 0;

      sub_24E61DA68(&v137, v48, qword_27F21B590);
      *v32 = v135;
      *(v32 + 1) = v42;
      sub_24E61DA68(v45, &v32[v47], &qword_27F22DF80);
      sub_24E61DA68(&v140, v48, qword_27F21B590);
      LOBYTE(v140) = 7;
      sub_24F8319B8(v32, &v140, v25);
      sub_24ECFF7D0(v25, v109, type metadata accessor for PlayerAvatarView);
      swift_storeEnumTagMultiPayload();
      sub_24ECFF4F8(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
      v49 = sub_24ECFF4A4();
      v50 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
      *&v140 = &type metadata for GroupedPlayerAvatarView;
      *(&v140 + 1) = v110;
      *&v141 = v49;
      *(&v141 + 1) = v50;
      swift_getOpaqueTypeConformance2();
      v51 = v108;
      sub_24F924E28();
      sub_24ECFF838(v25, type metadata accessor for PlayerAvatarView);
      sub_24ECFF838(v35, v136);
LABEL_22:
      sub_24E60169C(v51, v112, &qword_27F22DF88);
      swift_storeEnumTagMultiPayload();
      sub_24ECFF540();
      sub_24ECFF4F8(&qword_27F22DFB8, MEMORY[0x277CFBF00]);
      v96 = v113;
      sub_24F924E28();
      sub_24E60169C(v96, v117, &unk_27F22DF60);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DFC0);
      sub_24ECFF688();
      sub_24ECFF744();
      sub_24F924E28();
      sub_24E601704(v96, &unk_27F22DF60);
      return sub_24E601704(v51, &qword_27F22DF88);
    }

    v62 = v39 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v121 = *(v26 + 72);
    v120 = (v133 + 56);
    v63 = MEMORY[0x277D84F90];
    v123 = v8;
    v122 = v16;
    do
    {
      v133 = v40;
      v134 = v63;
      v131 = type metadata accessor for PlayerAvatar;
      v132 = v62;
      v64 = v124;
      sub_24ECFF7D0(v62, v124, type metadata accessor for PlayerAvatar);
      v65 = v64[1];
      v130 = *v64;
      v66 = type metadata accessor for PlayerAvatar.Overlay(0);
      v67 = *(v66 - 8);
      v68 = *(v67 + 56);
      v69 = v129;
      v68(v129, 1, 1, v66);
      v142 = 0;
      v140 = 0u;
      v141 = 0u;
      v70 = v128;
      v71 = *(v128 + 20);
      v72 = v135;
      v68(v135 + v71, 1, 1, v66);
      v73 = v72 + *(v70 + 24);
      v139 = 0;
      v137 = 0u;
      v138 = 0u;
      *v73 = 0u;
      *(v73 + 16) = 0u;
      *(v73 + 32) = 0;

      sub_24E61DA68(&v137, v73, qword_27F21B590);
      *v72 = v130;
      v72[1] = v65;

      v74 = v69;
      v75 = v122;
      sub_24E61DA68(v74, v72 + v71, &qword_27F22DF80);
      sub_24E61DA68(&v140, v73, qword_27F21B590);
      v76 = v125;
      sub_24F928948();
      sub_24ECFF838(v64, v131);
      type metadata accessor for PlayerAvatarView.AvatarType(0);
      swift_storeEnumTagMultiPayload();
      v77 = v72 + v71;
      v57 = &unk_24F942E50;
      sub_24E60169C(v77, v75, &qword_27F22DF80);
      v78 = v127;
      v79 = *(v127 + 20);
      if ((*(v67 + 48))(v75, 1, v66) == 1)
      {
        sub_24E601704(v75, &qword_27F22DF80);
        v80 = 1;
        v81 = v123;
      }

      else
      {
        v82 = v119;
        sub_24ED00B3C(v75, v119, type metadata accessor for PlayerAvatar.Overlay);
        v81 = v123;
        v83 = v82 + *(v123 + 20);
        *v83 = 0;
        *(v83 + 8) = 1;
        v84 = (v82 + *(v81 + 24));
        *v84 = 0;
        v84[1] = 0;
        sub_24ED00B3C(v82, v76 + v79, type metadata accessor for PlayerAvatarView.Overlay);
        v80 = 0;
      }

      (*v120)(v76 + v79, v80, 1, v81);
      v85 = v76 + *(v78 + 24);
      sub_24E60169C(v73, &v140, qword_27F24EC90);
      sub_24ECFF838(v135, type metadata accessor for PlayerAvatar);
      v86 = v141;
      *v85 = v140;
      *(v85 + 16) = v86;
      *(v85 + 32) = v142;
      *(v76 + *(v78 + 28)) = 7;
      sub_24ED00B3C(v76, v136, type metadata accessor for PlayerAvatarView);
      v63 = v134;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_24E619074(0, v63[2] + 1, 1, v63);
      }

      v88 = v63[2];
      v87 = v63[3];
      if (v88 >= v87 >> 1)
      {
        v63 = sub_24E619074(v87 > 1, v88 + 1, 1, v63);
      }

      v63[2] = v88 + 1;
      sub_24ED00B3C(v136, v63 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v88, type metadata accessor for PlayerAvatarView);
      v62 = v132 + v121;
      v40 = v133 - 1;
    }

    while (v133 != 1);
    *&v140 = v63;
    *(&v140 + 1) = 0x4049000000000000;
    v89 = *MEMORY[0x277CDFA10];
    v54 = sub_24F923E98();
    v56 = v106;
    (*(*(v54 - 8) + 104))(v106, v89, v54);
    sub_24ECFF4F8(&qword_27F22DF90, MEMORY[0x277CDFA28]);
    if (sub_24F92AFF8())
    {
      v90 = sub_24ECFF4A4();
      v91 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
      v92 = v102;
      v93 = v110;
      sub_24F9263F8();
      sub_24E601704(v56, &qword_27F21CCC8);

      v94 = v103;
      v95 = v104;
      (*(v103 + 16))(v109, v92, v104);
      swift_storeEnumTagMultiPayload();
      sub_24ECFF4F8(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
      *&v140 = &type metadata for GroupedPlayerAvatarView;
      *(&v140 + 1) = v93;
      *&v141 = v90;
      *(&v141 + 1) = v91;
      swift_getOpaqueTypeConformance2();
      v51 = v108;
      sub_24F924E28();
      (*(v94 + 8))(v92, v95);
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_28;
  }

  v52 = v134;
  v53 = v2[2];
  v54 = v2[10];
  if (v54 >> 62)
  {
    result = sub_24F92C738();
  }

  else
  {
    result = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v4;
  v57 = v52;
  if (result)
  {
    if ((v54 & 0xC000000000000001) != 0)
    {
LABEL_28:
      v58 = MEMORY[0x253052270](0, v54);
      goto LABEL_10;
    }

    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v58 = *(v54 + 32);
LABEL_10:
      v59 = v58;
      sub_24F921278();
      v60 = v114;
      v57[2](v112, v56, v114);
      swift_storeEnumTagMultiPayload();
      sub_24ECFF540();
      sub_24ECFF4F8(&qword_27F22DFB8, MEMORY[0x277CFBF00]);
      v61 = v113;
      sub_24F924E28();
      sub_24E60169C(v61, v117, &unk_27F22DF60);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DFC0);
      sub_24ECFF688();
      sub_24ECFF744();
      sub_24F924E28();

      sub_24E601704(v61, &unk_27F22DF60);
      return (v57[1])(v56, v60);
    }

    __break(1u);
  }

  else if (v53)
  {
    *&v137 = v53;
    BYTE8(v137) = 0;
    sub_24E7274F0();
    swift_retain_n();
    sub_24F924E28();
    v97 = BYTE8(v140);
    v98 = v117;
    *v117 = v140;
    *(v98 + 8) = v97;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DFC0);
    sub_24ECFF688();
    sub_24ECFF744();
    sub_24F924E28();
  }

  else
  {
    *&v137 = 0;
    BYTE8(v137) = 1;
    sub_24E7274F0();
    sub_24F924E28();
    v99 = BYTE8(v140);
    v100 = v117;
    *v117 = v140;
    *(v100 + 8) = v99;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DFC0);
    sub_24ECFF688();
    sub_24ECFF744();
    return sub_24F924E28();
  }

  return result;
}

uint64_t sub_24ECFC238@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v111 = a1;
  v107 = sub_24F924258();
  MEMORY[0x28223BE20](v107);
  v110 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2232B0);
  MEMORY[0x28223BE20](v109);
  v108 = &v87 - v4;
  v92 = sub_24F9248C8();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2234B0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v87 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2234A0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v87 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223488);
  MEMORY[0x28223BE20](v87);
  v16 = &v87 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE40);
  v88 = *(v17 - 8);
  v89 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v87 - v18;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE48);
  MEMORY[0x28223BE20](v91);
  v21 = &v87 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE50);
  v93 = *(v22 - 8);
  v94 = v22;
  MEMORY[0x28223BE20](v22);
  v112 = &v87 - v23;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE58);
  MEMORY[0x28223BE20](v96);
  v95 = &v87 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE60);
  v102 = *(v25 - 8);
  v103 = v25;
  MEMORY[0x28223BE20](v25);
  v100 = &v87 - v26;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE68);
  MEMORY[0x28223BE20](v97);
  v99 = &v87 - v27;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE70);
  MEMORY[0x28223BE20](v98);
  v106 = &v87 - v28;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE78);
  MEMORY[0x28223BE20](v105);
  v104 = &v87 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE80);
  MEMORY[0x28223BE20](v30 - 8);
  v101 = &v87 - v31;
  *v10 = sub_24F9249A8();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE88);
  sub_24ECFCF8C(v2, &v10[*(v32 + 44)]);
  v33 = sub_24F925808();
  v34 = &v10[*(v8 + 44)];
  *v34 = v33;
  *(v34 + 8) = xmmword_24F96E290;
  *(v34 + 24) = xmmword_24F96E290;
  v34[40] = 0;
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v10, v14, &qword_27F2234B0);
  v35 = &v14[*(v12 + 44)];
  v36 = v123;
  *(v35 + 4) = v122;
  *(v35 + 5) = v36;
  *(v35 + 6) = v124;
  v37 = v119;
  *v35 = v118;
  *(v35 + 1) = v37;
  v38 = v121;
  *(v35 + 2) = v120;
  *(v35 + 3) = v38;
  sub_24E6009C8(v14, v16, &unk_27F2234A0);
  v16[*(v87 + 36)] = 0;
  sub_24F9248B8();
  sub_24E99B220();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v90 + 8))(v6, v92);
  sub_24E601704(v16, &qword_27F223488);
  *v113 = *(v2 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223348);
  sub_24F926F38();
  sub_24E993B08(v125);

  (*(v88 + 8))(v19, v89);
  v132[0] = *(v2 + 136);
  *(v132 + 9) = *(v2 + 145);
  *v113 = *(v2 + 136);
  *&v113[9] = *(v2 + 145);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223350);
  sub_24F923378();
  *v113 = v125;
  *&v113[16] = v126;
  v113[24] = BYTE8(v126);
  v39 = *(v2 + 104);
  v40 = *(v2 + 112);
  v90 = *(v2 + 120);
  LODWORD(v92) = *(v2 + 128);
  *&v125 = v39;
  BYTE8(v125) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390);
  sub_24ECFF1B0();
  sub_24E99A594();
  sub_24F9269B8();

  sub_24E601704(v21, &qword_27F22DE48);
  v41 = sub_24F925188();
  sub_24F927618();
  sub_24F9242E8();
  *&v116[52] = v128;
  *&v116[68] = v129;
  *&v116[84] = v130;
  *&v116[100] = v131;
  *&v116[4] = v125;
  *&v116[20] = v126;
  *&v116[36] = v127;
  v42 = sub_24F925808();
  v117 = 0;
  v43 = 0.0;
  if (v40)
  {
    *v113 = v132[0];
    *&v113[9] = *(v132 + 9);
    sub_24F923358();
    if ((v115 & 1) != 0 || v114 != v39)
    {
      *v113 = v132[0];
      *&v113[9] = *(v132 + 9);
      sub_24F923358();
      if (v115)
      {
        if (v92)
        {
          v43 = 0.0;
        }

        else
        {
          v43 = 1.0;
        }
      }

      else
      {
        v43 = 1.0;
        if ((v92 & 1) == 0)
        {
          if (v114 == v90)
          {
            v43 = 0.0;
          }

          else
          {
            v43 = 1.0;
          }
        }
      }
    }
  }

  v44 = sub_24F9275F8();
  v46 = v45;
  v47 = v95;
  (*(v93 + 32))(v95, v112, v94);
  v48 = v47 + *(v96 + 36);
  v49 = *&v116[80];
  *(v48 + 68) = *&v116[64];
  *(v48 + 84) = v49;
  *(v48 + 100) = *&v116[96];
  v50 = *&v116[16];
  *(v48 + 4) = *v116;
  *(v48 + 20) = v50;
  v51 = *&v116[48];
  *(v48 + 36) = *&v116[32];
  *v48 = v41;
  *(v48 + 116) = *&v116[112];
  *(v48 + 52) = v51;
  *(v48 + 120) = v42;
  *(v48 + 128) = xmmword_24F997370;
  *(v48 + 144) = 0;
  *(v48 + 152) = 0;
  *(v48 + 160) = 0;
  *(v48 + 168) = v43;
  *(v48 + 176) = v44;
  *(v48 + 184) = v46;
  sub_24ECFF23C();
  v52 = v100;
  sub_24F926608();
  sub_24E601704(v47, &qword_27F22DE58);
  v53 = *(v107 + 20);
  v54 = *MEMORY[0x277CE0118];
  v55 = sub_24F924B38();
  v56 = v110;
  (*(*(v55 - 8) + 104))(&v110[v53], v54, v55);
  __asm { FMOV            V0.2D, #12.0 }

  *v56 = _Q0;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  *v113 = v132[0];
  *&v113[9] = *(v132 + 9);
  sub_24F923358();
  v62 = sub_24F926D08();

  v63 = v56;
  v64 = v108;
  sub_24ED00B3C(v63, v108, MEMORY[0x277CDFC08]);
  v65 = v109;
  *(v64 + *(v109 + 52)) = v62;
  *(v64 + *(v65 + 56)) = 256;
  v66 = sub_24F927618();
  v68 = v67;
  v69 = v99;
  v70 = &v99[*(v97 + 36)];
  sub_24ECFF35C(v64, v70);
  v71 = (v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233B0) + 36));
  *v71 = v66;
  v71[1] = v68;
  (*(v102 + 32))(v69, v52, v103);
  LOBYTE(v66) = sub_24F925808();
  v72 = v106;
  sub_24E6009C8(v69, v106, &qword_27F22DE68);
  v73 = v72 + *(v98 + 36);
  *v73 = v66;
  *(v73 + 8) = xmmword_24F947C60;
  *(v73 + 24) = xmmword_24F947C60;
  *(v73 + 40) = 0;
  v114 = *(v2 + 96);
  v74 = v114;
  v75 = swift_allocObject();
  v76 = *(v2 + 144);
  *(v75 + 144) = *(v2 + 128);
  *(v75 + 160) = v76;
  *(v75 + 176) = *(v2 + 160);
  *(v75 + 192) = *(v2 + 176);
  v77 = *(v2 + 80);
  *(v75 + 80) = *(v2 + 64);
  *(v75 + 96) = v77;
  v78 = *(v2 + 112);
  *(v75 + 112) = *(v2 + 96);
  *(v75 + 128) = v78;
  v79 = *(v2 + 16);
  *(v75 + 16) = *v2;
  *(v75 + 32) = v79;
  v80 = *(v2 + 48);
  *(v75 + 48) = *(v2 + 32);
  *(v75 + 64) = v80;
  v81 = v72;
  v82 = v104;
  sub_24E6009C8(v81, v104, &qword_27F22DE70);
  v83 = v105;
  *(v82 + *(v105 + 52)) = v74;
  v84 = (v82 + *(v83 + 56));
  *v84 = sub_24ECFF45C;
  v84[1] = v75;
  v85 = v101;
  sub_24E6009C8(v82, v101, &qword_27F22DE78);
  sub_24E6009C8(v85, v111, &qword_27F22DE80);
  sub_24ECFF464(v2, v113);
  return sub_24E60169C(&v114, v113, &qword_27F22DEC8);
}

uint64_t sub_24ECFCF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DED0);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v45[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DED8);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v50 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v45[-v12];
  sub_24ECFAE48(&v45[-v12]);
  sub_24F927618();
  sub_24F9238C8();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DEE0) + 36);
  v49 = v13;
  v15 = (v13 + v14);
  v16 = v54;
  *v15 = v53;
  v15[1] = v16;
  v15[2] = v55;
  v17 = sub_24F925808();
  v18 = v13 + *(v9 + 44);
  *v18 = v17;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0x4024000000000000;
  *(v18 + 40) = 0;
  *v7 = sub_24F924C98();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DEE8);
  sub_24ECFD38C(a1, &v7[*(v19 + 44)]);
  v20 = *(a1 + 48);
  v51 = *(a1 + 40);
  v52 = v20;
  sub_24E600AEC();

  v21 = sub_24F925E18();
  v23 = v22;
  LOBYTE(v13) = v24;
  sub_24F925898();
  v25 = sub_24F925C98();
  v27 = v26;
  v29 = v28;

  sub_24E600B40(v21, v23, v13 & 1);

  LODWORD(v51) = sub_24F9251C8();
  v30 = sub_24F925C58();
  v32 = v31;
  v46 = v33;
  v35 = v34;
  sub_24E600B40(v25, v27, v29 & 1);

  v36 = v50;
  sub_24E60169C(v49, v50, &qword_27F22DED8);
  v37 = v47;
  sub_24E60169C(v7, v47, &qword_27F22DED0);
  v38 = v36;
  v39 = v48;
  sub_24E60169C(v38, v48, &qword_27F22DED8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DEF8);
  sub_24E60169C(v37, v39 + v40[12], &qword_27F22DED0);
  v41 = v39 + v40[16];
  *v41 = 0;
  *(v41 + 8) = 1;
  v42 = v39 + v40[20];
  *v42 = v30;
  *(v42 + 8) = v32;
  v43 = v46;
  LOBYTE(v40) = v46 & 1;
  *(v42 + 16) = v46 & 1;
  *(v42 + 24) = v35;
  sub_24E5FD138(v30, v32, v43 & 1);

  sub_24E601704(v7, &qword_27F22DED0);
  sub_24E601704(v49, &qword_27F22DED8);
  sub_24E600B40(v30, v32, v40);

  sub_24E601704(v37, &qword_27F22DED0);
  return sub_24E601704(v50, &qword_27F22DED8);
}

uint64_t sub_24ECFD38C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v56 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF00);
  MEMORY[0x28223BE20](v54);
  v57 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v52 - v5;
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v55 = a1;
  if (*(a1 + 73))
  {
    *&v63 = v7;
    *(&v63 + 1) = v8;
    sub_24E600AEC();

    v9 = sub_24F925E18();
    v11 = v10;
    v13 = v12;
    sub_24F925A28();
    v14 = sub_24F925C98();
    v16 = v15;
    v18 = v17;

    sub_24E600B40(v9, v11, v13 & 1);

    *&v63 = sub_24F926C28();
    v19 = sub_24F925C58();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    sub_24E600B40(v14, v16, v18 & 1);

    v58 = v19;
    v59 = v21;
    v60 = v23 & 1;
    v61 = v25;
    v62 = 0;
  }

  else
  {
    *&v63 = v7;
    *(&v63 + 1) = v8;
    sub_24E600AEC();

    v26 = sub_24F925E18();
    v28 = v27;
    v30 = v29;
    sub_24F925A28();
    v31 = sub_24F925C98();
    v33 = v32;
    v35 = v34;

    sub_24E600B40(v26, v28, v30 & 1);

    LODWORD(v63) = sub_24F925198();
    v36 = sub_24F925C58();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_24E600B40(v31, v33, v35 & 1);

    v58 = v36;
    v59 = v38;
    v60 = v40 & 1;
    v61 = v42;
    v62 = 1;
  }

  sub_24F924E28();
  v43 = v65;
  v52 = v64;
  v53 = v63;
  v44 = v63;
  v45 = v64;
  sub_24E8C5C94(v63, *(&v63 + 1), v64);
  *v6 = sub_24F9249A8();
  *(v6 + 1) = 0x4000000000000000;
  v6[16] = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF08);
  sub_24ECFD7C8(v55, &v6[*(v46 + 44)]);
  *&v6[*(v54 + 36)] = sub_24F9251C8();
  v47 = v57;
  sub_24E60169C(v6, v57, &qword_27F22DF00);
  v48 = v56;
  v49 = v52;
  *v56 = v53;
  v48[1] = v49;
  *(v48 + 32) = v43;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF10);
  sub_24E60169C(v47, v48 + *(v50 + 48), &qword_27F22DF00);
  sub_24E8C5C94(v44, *(&v44 + 1), v45);
  sub_24E8C5E88(v44, *(&v44 + 1), v45);
  sub_24E601704(v6, &qword_27F22DF00);
  sub_24E601704(v47, &qword_27F22DF00);
  return sub_24E8C5E88(v44, *(&v44 + 1), v45);
}

uint64_t sub_24ECFD7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF18);
  MEMORY[0x28223BE20](v35);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20);
  MEMORY[0x28223BE20](v5);
  v7 = (&v33 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF28);
  MEMORY[0x28223BE20](v8 - 8);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = *(a1 + 64);
  v34 = *(a1 + 56);
  v14 = sub_24F926DF8();
  v15 = (v7 + *(v5 + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
  v17 = *MEMORY[0x277CE1050];
  v18 = sub_24F926E78();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *v7 = v14;
  sub_24E60169C(v7, v4, &qword_27F22DF20);
  swift_storeEnumTagMultiPayload();
  sub_24E62A864();
  sub_24F924E28();
  sub_24E601704(v7, &qword_27F22DF20);
  v38 = v34;
  v39 = v13;
  sub_24E600AEC();

  v19 = sub_24F925E18();
  v21 = v20;
  LOBYTE(v13) = v22;
  sub_24F925898();
  v23 = sub_24F925C98();
  v25 = v24;
  LOBYTE(v15) = v26;
  v28 = v27;

  sub_24E600B40(v19, v21, v13 & 1);

  v29 = v36;
  sub_24E60169C(v12, v36, &qword_27F22DF28);
  v30 = v37;
  sub_24E60169C(v29, v37, &qword_27F22DF28);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF48) + 48);
  *v31 = v23;
  *(v31 + 8) = v25;
  LOBYTE(v15) = v15 & 1;
  *(v31 + 16) = v15;
  *(v31 + 24) = v28;
  sub_24E5FD138(v23, v25, v15);

  sub_24E601704(v12, &qword_27F22DF28);
  sub_24E600B40(v23, v25, v15);

  return sub_24E601704(v29, &qword_27F22DF28);
}

uint64_t sub_24ECFDBB8()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223348);
  return sub_24F926F48();
}

__n128 sub_24ECFDC78@<Q0>(uint64_t a1@<X8>)
{
  sub_24F924A88();
  v2 = sub_24F925DE8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_24F9275C8();
  sub_24F9242E8();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 96) = v14;
  *(a1 + 112) = v15;
  *(a1 + 128) = v16;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  result = v13;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  return result;
}

id sub_24ECFDD70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F96E2C0;
  v1 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v2 = *MEMORY[0x277CBCFF8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CBD000];
  *(v0 + 48) = *MEMORY[0x277CBD000];
  v4 = objc_opt_self();
  v5 = v2;
  v6 = v3;
  v7 = [v4 descriptorForAllComparatorKeys];
  v8 = *MEMORY[0x277CBD020];
  *(v0 + 56) = v7;
  *(v0 + 64) = v8;
  v9 = *MEMORY[0x277CBD098];
  v10 = *MEMORY[0x277CBCFC0];
  *(v0 + 72) = *MEMORY[0x277CBD098];
  *(v0 + 80) = v10;
  v11 = *MEMORY[0x277CBD018];
  v12 = *MEMORY[0x277CBD138];
  *(v0 + 88) = *MEMORY[0x277CBD018];
  *(v0 + 96) = v12;
  v19 = *MEMORY[0x277CBD160];
  *(v0 + 104) = *MEMORY[0x277CBD160];
  qword_27F22DE20 = v0;
  v13 = v8;
  v14 = v9;
  v15 = v10;
  v16 = v11;
  v17 = v12;

  return v19;
}

uint64_t sub_24ECFDED4(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v3[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECFDFA0, 0, 0);
}

uint64_t sub_24ECFDFA0()
{
  v59 = v2;
  v58[6] = *MEMORY[0x277D85DE8];
  v4 = *(v2 + 264);
  v5 = *(v2 + 272);
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_38;
  }

  v1 = [*(*(v2 + 280) + 24) callsWithPredicate:*(*(v2 + 280) + 96) limit:v5 - v4 offset:? batchSize:?];
  if (!v1)
  {
    sub_24E69A5C4(0, &unk_27F23E280);
    sub_24F92B5A8();
    v1 = sub_24F92B588();
  }

  v6 = *(v2 + 280);
  sub_24E69A5C4(0, &unk_27F23E280);
  v3 = sub_24F92B5A8();
  v0 = [objc_allocWithZone(MEMORY[0x277CF7D28]) initWithDataSource_];
  if (qword_27F210638 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0);
    v7 = sub_24F92B588();
    *(v2 + 240) = 0;
    v8 = [v0 contactsByHandleForCalls:v1 keyDescriptors:v7 error:v2 + 240];

    v9 = *(v2 + 240);
    if (!v8)
    {
      break;
    }

    sub_24E69A5C4(0, &qword_27F23E1B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DFE0);
    sub_24ECFF898();
    v54 = sub_24F92AE38();
    v10 = v9;

    v11 = swift_allocObject();
    *(v11 + 16) = MEMORY[0x277D84F90];
    v12 = (v11 + 16);
    if (v3 >> 62)
    {
      v13 = sub_24F92C738();
    }

    else
    {
      v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = MEMORY[0x277D84F90];
    if (!v13)
    {
LABEL_30:
      sub_24E60169C(*(v2 + 280) + 104, v2 + 160, &unk_27F22DFF0);
      if (*(v2 + 184))
      {
        v40 = *(v2 + 288);
        sub_24E612C80((v2 + 160), v2 + 120);
        sub_24F92B808();
        v41 = sub_24F92B858();
        (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
        sub_24E615E00(v2 + 120, v2 + 200);
        v42 = swift_allocObject();
        v42[2] = 0;
        v42[3] = 0;
        sub_24E612C80((v2 + 200), (v42 + 4));
        v42[9] = v3;
        v42[10] = v54;
        v42[11] = v11;

        sub_24EA998B8(0, 0, v40, &unk_24F9976B8, v42);

        __swift_destroy_boxed_opaque_existential_1(v2 + 120);
      }

      else
      {

        sub_24E601704(v2 + 160, &unk_27F22DFF0);
      }

      v43 = *(v2 + 8);

      return v43(v14);
    }

    v57[0] = MEMORY[0x277D84F90];

    v1 = v57;
    sub_24F45873C(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
    }

    v14 = v57[0];
    v50 = v13;
    v44 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      v15 = sub_24F92C738();
    }

    else
    {
      v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = *(v2 + 280);
    v48 = v19[5];
    v49 = v19[4];
    v47 = v19[6];
    v52 = v3 & 0xC000000000000001;
    v53 = v15 & ~(v15 >> 63);
    v20 = 0;
    v0 = &qword_27F223420;
    v45 = v19[9];
    v46 = v19[8];
    v51 = v3;
    v21 = v19[7];
    while (v53 != v20)
    {
      v56 = v20;
      if (v52)
      {
        v22 = MEMORY[0x253052270]();
      }

      else
      {
        if (v20 >= *(v44 + 16))
        {
          goto LABEL_37;
        }

        v22 = *(v3 + 8 * v20 + 32);
      }

      v55 = v22;
      if (qword_27F210630 != -1)
      {
        swift_once();
      }

      *(v2 + 248) = qword_27F39C5A0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223420);
      swift_allocObject();

      v23 = sub_24F922FE8();

      MEMORY[0x253050F00](v24);
      if (*((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v58[0] = v49;
      v58[1] = v48;
      v58[2] = v47;
      v58[3] = v21;
      v58[4] = v46;
      v58[5] = v45;
      *(v2 + 256) = v23;
      sub_24E602068(&qword_27F223428, &qword_27F223420);
      v25 = v55;

      v26 = v49;
      v27 = v48;
      v28 = v47;

      v29 = v46;
      v30 = v45;
      v1 = (v2 + 256);
      v31 = sub_24F9230C8();
      sub_24ECFF938(v25, v54, v58, v31, v2 + 16);

      v57[0] = v14;
      v33 = *(v14 + 16);
      v32 = *(v14 + 24);
      if (v33 >= v32 >> 1)
      {
        v1 = v57;
        sub_24F45873C((v32 > 1), v33 + 1, 1);
        v14 = v57[0];
      }

      v20 = v56 + 1;
      *(v14 + 16) = v33 + 1;
      v34 = v14 + 104 * v33;
      v35 = *(v2 + 16);
      v36 = *(v2 + 48);
      *(v34 + 48) = *(v2 + 32);
      *(v34 + 64) = v36;
      *(v34 + 32) = v35;
      v37 = *(v2 + 64);
      v38 = *(v2 + 80);
      v39 = *(v2 + 96);
      *(v34 + 128) = *(v2 + 112);
      *(v34 + 96) = v38;
      *(v34 + 112) = v39;
      *(v34 + 80) = v37;
      v3 = v51;
      v12 = (v11 + 16);
      v0 = &qword_27F223420;
      if (v50 == v56 + 1)
      {

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v16 = v9;

  sub_24F91F278();

  swift_willThrow();

  v17 = *(v2 + 8);

  return v17();
}

uint64_t sub_24ECFE730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v7[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECFE7D0, 0, 0);
}

uint64_t sub_24ECFE7D0()
{
  v1 = *(v0 + 104);
  v2 = __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  v3 = sub_24F2CF8B8();
  v5 = v4;

  sub_24F2D3E6C(v6, (v0 + 16));
  v7 = swift_task_alloc();
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v0 + 16;
  v7[5] = v2;
  sub_24E7728D0(sub_24ED00A10, v7, v1);
  v9 = v8;
  *(v0 + 136) = v8;

  *(v0 + 56) = *(v0 + 16);
  sub_24E601704(v0 + 56, &unk_27F23E1A0);
  *(v0 + 64) = *(v0 + 24);
  sub_24E601704(v0 + 64, &unk_27F23E1A0);
  *(v0 + 72) = *(v0 + 32);
  sub_24E601704(v0 + 72, &unk_27F23E1A0);
  *(v0 + 80) = *(v0 + 40);
  sub_24E601704(v0 + 80, &unk_27F23E1A0);
  *(v0 + 88) = *(v0 + 48);
  sub_24E601704(v0 + 88, &unk_27F22E000);
  v10 = swift_task_alloc();
  *(v0 + 144) = v10;
  *v10 = v0;
  v10[1] = sub_24ECFE994;

  return sub_24F40B9AC(v9);
}

uint64_t sub_24ECFE994(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_24ECFEBE0;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_24ECFEABC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24ECFEABC()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[15];

  v4 = sub_24F92B858();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_24F92B7F8();

  v5 = sub_24F92B7E8();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v1;
  v6[5] = v3;
  sub_24EA998B8(0, 0, v2, &unk_24F9976D0, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24ECFEBE0()
{

  if (qword_27F2113D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E7C0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Unable to build social menu for contacts: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24ECFED94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_24F92B7F8();
  v5[7] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24ECFEE2C, v7, v6);
}

uint64_t sub_24ECFEE2C()
{
  v1 = v0[5];

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[5] + 32;
    do
    {
      v5 = v0[6];
      v6 = *(v4 + 8 * v3);
      result = swift_beginAccess();
      v8 = *(v5 + 16);
      if ((v8 & 0xC000000000000001) != 0)
      {

        MEMORY[0x253052270](v3, v8);
      }

      else
      {
        if (v3 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }
      }

      ++v3;
      swift_endAccess();
      v0[2] = v6;
      sub_24F922FD8();
    }

    while (v2 != v3);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_24ECFEF78@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v18 = a1[5];
  v33 = a1[4];
  v34 = v18;
  v35 = *(a1 + 12);
  v19 = a1[1];
  v29 = *a1;
  v30 = v19;
  v20 = a1[3];
  v31 = a1[2];
  v32 = v20;
  if (qword_27F210630 != -1)
  {
    swift_once();
  }

  v28 = qword_27F39C5A0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213840);
  sub_24F926F28();
  v21 = v27[0];
  LOBYTE(v28) = a5 & 1;
  v36 = a10 & 1;
  v22 = v34;
  *(a9 + 64) = v33;
  *(a9 + 80) = v22;
  v23 = v35;
  v24 = v30;
  *a9 = v29;
  *(a9 + 16) = v24;
  v25 = v32;
  *(a9 + 32) = v31;
  *(a9 + 48) = v25;
  *(a9 + 96) = v23;
  *(a9 + 104) = a2;
  *(a9 + 112) = a3;
  *(a9 + 120) = a4;
  *(a9 + 128) = v28;
  *(a9 + 136) = a6;
  *(a9 + 144) = a7;
  *(a9 + 152) = a8;
  *(a9 + 160) = v36;
  *(a9 + 168) = v21;
  sub_24ED00BA4(&v29, v27);
}

uint64_t sub_24ECFF0D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E67D094;

  return sub_24ECFDED4(a1, a2);
}

unint64_t sub_24ECFF1B0()
{
  result = qword_27F22DEA0;
  if (!qword_27F22DEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DE48);
    sub_24E99B158();
    sub_24E99B41C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DEA0);
  }

  return result;
}

unint64_t sub_24ECFF23C()
{
  result = qword_27F22DEB8;
  if (!qword_27F22DEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DE58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DE48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215390);
    sub_24ECFF1B0();
    sub_24E99A594();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2233A0, &qword_27F2233A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DEB8);
  }

  return result;
}

uint64_t sub_24ECFF35C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2232B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ECFF3CC()
{

  return swift_deallocObject();
}

unint64_t sub_24ECFF4A4()
{
  result = qword_27F22DF98;
  if (!qword_27F22DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DF98);
  }

  return result;
}

uint64_t sub_24ECFF4F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24ECFF540()
{
  result = qword_27F22DFB0;
  if (!qword_27F22DFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DF88);
    sub_24ECFF4F8(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CCC8);
    sub_24ECFF4A4();
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DFB0);
  }

  return result;
}

unint64_t sub_24ECFF688()
{
  result = qword_27F22DFC8;
  if (!qword_27F22DFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22DF60);
    sub_24ECFF540();
    sub_24ECFF4F8(&qword_27F22DFB8, MEMORY[0x277CFBF00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DFC8);
  }

  return result;
}

unint64_t sub_24ECFF744()
{
  result = qword_27F22DFD0;
  if (!qword_27F22DFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DFC0);
    sub_24E7274F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DFD0);
  }

  return result;
}

uint64_t sub_24ECFF7D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ECFF838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24ECFF898()
{
  result = qword_27F22DFE8;
  if (!qword_27F22DFE8)
  {
    sub_24E69A5C4(255, &qword_27F23E1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DFE8);
  }

  return result;
}

uint64_t sub_24ECFF900()
{

  return swift_deallocObject();
}

size_t sub_24ECFF938@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v156 = a4;
  v157 = a5;
  v172 = a2;
  v7 = sub_24F91F648();
  v146 = *(v7 - 8);
  v147 = v7;
  MEMORY[0x28223BE20](v7);
  v145 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for PlayerAvatar(0);
  v167 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v165 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v10 - 8);
  v169 = &v144 - v11;
  v168 = sub_24F91EAA8();
  v12 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v166 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F91F4A8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v21 = &v144 - v20;
  v23 = *a3;
  v22 = *(a3 + 8);
  v24 = *(a3 + 24);
  v164 = *(a3 + 16);
  v159 = v24;
  v160 = v22;
  v25 = *(a3 + 32);
  v158 = *(a3 + 40);
  v161 = a1;
  v26 = [a1 imageURL];
  v162 = v12;
  if (v26)
  {
    v27 = v23;
    v28 = v26;
    sub_24F91F428();

    (*(v15 + 32))(v21, v17, v14);
    v30 = sub_24F91F4B8();
    v32 = v31;
    v152 = 0;
    v148 = v25;
    v33 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_24E71CBC0(v30, v32);
    v34 = sub_24F91F4C8();
    v35 = [v33 initWithData_];

    sub_24E627880(v30, v32);
    if (v35)
    {
      v155 = sub_24F926DD8();
      sub_24E627880(v30, v32);
      (*(v15 + 8))(v21, v14);
    }

    else
    {
      (*(v15 + 8))(v21, v14);
      sub_24E627880(v30, v32);
      v155 = 0;
    }

    v29 = v162;
    v23 = v27;
    v25 = v148;
  }

  else
  {
    v155 = 0;
    v152 = 0;
    v29 = v12;
  }

  v36 = MEMORY[0x277D84F90];
  v196 = MEMORY[0x277D84F90];
  v37 = v161;
  v38 = [v161 validRemoteParticipantHandles];
  if (v38)
  {
    v39 = v38;
    v154 = v23;
    v40 = sub_24E69A5C4(0, &qword_27F23E1B0);
    sub_24ECFF898();
    v41 = sub_24F92BAA8();

    v42 = v41;
    v148 = v25;
    v163 = v40;
    if ((v41 & 0xC000000000000001) != 0)
    {
      sub_24F92C6F8();
      sub_24F92BAE8();
      v42 = v199;
      v43 = v200;
      v44 = v201;
      v45 = v202;
      v46 = v203;
    }

    else
    {
      v45 = 0;
      v48 = -1 << *(v42 + 32);
      v43 = v42 + 56;
      v44 = ~v48;
      v49 = -v48;
      if (v49 < 64)
      {
        v50 = ~(-1 << v49);
      }

      else
      {
        v50 = -1;
      }

      v46 = v50 & *(v42 + 56);
    }

    v51 = v172;
    v153 = v44;
    v52 = (v44 + 64) >> 6;
    v171 = MEMORY[0x277D84F90];
    v173 = v42;
LABEL_17:
    v53 = v45;
    v29 = v46;
    while (1)
    {
      if (v42 < 0)
      {
        v57 = sub_24F92C778();
        if (!v57 || (*&v175 = v57, swift_dynamicCast(), v56 = v182, v45 = v53, v46 = v29, !v182))
        {
LABEL_41:
          sub_24E6586B4();
          v37 = v161;
          v29 = v162;
          v47 = v164;
          v23 = v154;
          v25 = v148;
          goto LABEL_42;
        }
      }

      else
      {
        v54 = v53;
        v55 = v29;
        v45 = v53;
        if (!v29)
        {
          while (1)
          {
            v45 = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              break;
            }

            if (v45 >= v52)
            {
              goto LABEL_41;
            }

            v55 = *(v43 + 8 * v45);
            ++v54;
            if (v55)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
          goto LABEL_62;
        }

LABEL_24:
        v46 = (v55 - 1) & v55;
        v56 = *(*(v42 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v55)))));
        if (!v56)
        {
          goto LABEL_41;
        }
      }

      if (*(v51 + 16))
      {
        v58 = sub_24E76E4DC(v56);
        if (v59)
        {
          v60 = *(*(v51 + 56) + 8 * v58);
          if (v60 >> 62)
          {
            result = sub_24F92C738();
            if (result)
            {
LABEL_34:
              if ((v60 & 0xC000000000000001) != 0)
              {

                v64 = MEMORY[0x253052270](0, v60);

                v62 = v64;
              }

              else
              {
                if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_79;
                }

                v62 = *(v60 + 32);
              }

              v63 = v62;
              MEMORY[0x253050F00]();
              if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_24F92B5E8();
              }

              sub_24F92B638();

              v171 = v196;
              v42 = v173;
              goto LABEL_17;
            }
          }

          else
          {
            result = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (result)
            {
              goto LABEL_34;
            }
          }
        }
      }

      v53 = v45;
      v29 = v46;
      v42 = v173;
    }
  }

  v171 = v36;
  v47 = v164;
LABEL_42:

  v65 = [v37 uniqueId];
  v66 = sub_24F92B0D8();
  v68 = v67;

  v69 = [v37 callerNameForDisplay];
  v70 = sub_24F92B0D8();
  v151 = v71;
  v152 = v70;

  v72 = [v37 serviceProvider];
  v153 = v68;
  v154 = v66;
  if (v72)
  {
    v73 = v72;
    v74 = sub_24F92B0D8();
    v76 = v75;

    v77 = v159;
    v78 = v160;
    *&v182 = v23;
    *(&v182 + 1) = v160;
    *&v183 = v47;
    *(&v183 + 1) = v159;
    v79 = v158;
    v184 = v25;
    v185 = v158;
    v80 = sub_24F2BF550(v74, v76);

    if (v80)
    {
      *&v182 = v23;
      *(&v182 + 1) = v78;
      v81 = v164;
      *&v183 = v164;
      *(&v183 + 1) = v77;
      v184 = v25;
      v185 = v79;
      v82 = sub_24F2BF82C(v80, [v37 mediaType]);
      v149 = v83;
      v150 = v82;
    }

    else
    {

      v84 = [v37 callerIdForDisplay];
      v85 = sub_24F92B0D8();
      v149 = v86;
      v150 = v85;
    }

    v29 = v162;
  }

  else
  {

    v149 = 0xE000000000000000;
    v150 = 0;
  }

  if (!(v171 >> 62))
  {
    v87 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v87)
    {
      goto LABEL_50;
    }

LABEL_65:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22E010);
    v112 = (*(v167 + 80) + 32) & ~*(v167 + 80);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_24F93DE60;
    v173 = v113;
    v114 = (v113 + v112);
    *&v182 = 0x6C6F686563616C70;
    *(&v182 + 1) = 0xEB00000000726564;

    v115 = v166;
    sub_24F91EA28();
    sub_24E600AEC();
    v116 = sub_24F92C578();
    v118 = v117;
    (v29)[1](v115, v168);
    if (v118)
    {
      v119 = v116;
    }

    else
    {
      v119 = 0x6C6F686563616C70;
    }

    if (!v118)
    {
      v118 = 0xEB00000000726564;
    }

    *&v182 = 0x3A746361746E6F63;
    *(&v182 + 1) = 0xEA00000000002F2FLL;
    MEMORY[0x253050C20](v119, v118);

    v120 = v182;
    v121 = type metadata accessor for PlayerAvatar.Overlay(0);
    v122 = *(*(v121 - 8) + 56);
    v123 = v169;
    v122(v169, 1, 1, v121);
    v184 = 0;
    v182 = 0u;
    v183 = 0u;
    v124 = v170;
    v125 = *(v170 + 20);
    v122(&v114[v125], 1, 1, v121);
    v126 = &v114[*(v124 + 24)];
    *&v177 = 0;
    v175 = 0u;
    v176 = 0u;
    *v126 = 0u;
    *(v126 + 16) = 0u;
    *(v126 + 32) = 0;
    sub_24E61DA68(&v175, v126, qword_27F21B590);
    *v114 = v120;
    sub_24E61DA68(v123, &v114[v125], &qword_27F22DF80);
    sub_24E61DA68(&v182, v126, qword_27F21B590);
    goto LABEL_71;
  }

LABEL_62:
  if (!sub_24F92C738())
  {
    goto LABEL_65;
  }

  v87 = sub_24F92C738();
  if (!v87)
  {

    v173 = MEMORY[0x277D84F90];
LABEL_71:
    v127 = v157;
    v128 = v161;
    v129 = [v161 callStatus];
    if (v129 == *MEMORY[0x277CF7D90])
    {

      v130 = 0;
    }

    else
    {
      v131 = [v128 callStatus];
      v132 = *MEMORY[0x277CF7D80];

      v130 = v131 != v132;
    }

    v133 = [v128 callStatus];
    v134 = *MEMORY[0x277CF7DA0];
    v135 = [v128 date];
    if (v135)
    {
      v136 = v145;
      v137 = v135;
      sub_24F91F608();

      v138 = sub_24F2CF5F4();
      v140 = v139;

      (*(v146 + 8))(v136, v147);
    }

    else
    {

      v140 = 0xA300000000000000;
      v138 = 9666786;
    }

    *&v175 = v154;
    *(&v175 + 1) = v153;
    *&v176 = v155;
    *(&v176 + 1) = v152;
    *&v177 = v151;
    *(&v177 + 1) = v138;
    *&v178 = v140;
    *(&v178 + 1) = v150;
    *&v179 = v149;
    BYTE8(v179) = v130;
    BYTE9(v179) = v133 == v134;
    *(&v179 + 10) = v197;
    HIWORD(v179) = v198;
    *&v180 = v171;
    *(&v180 + 1) = v173;
    v181 = v156;
    *&v182 = v154;
    *(&v182 + 1) = v153;
    *&v183 = v155;
    *(&v183 + 1) = v152;
    v184 = v151;
    v185 = v138;
    v186 = v140;
    v187 = v150;
    v188 = v149;
    v189 = v130;
    v190 = v133 == v134;
    v191 = v197;
    v192 = v198;
    v193 = v171;
    v194 = v173;
    v195 = v156;
    sub_24ED00BA4(&v175, v174);
    result = sub_24ED00BDC(&v182);
    v141 = v180;
    *(v127 + 64) = v179;
    *(v127 + 80) = v141;
    *(v127 + 96) = v181;
    v142 = v176;
    *v127 = v175;
    *(v127 + 16) = v142;
    v143 = v178;
    *(v127 + 32) = v177;
    *(v127 + 48) = v143;
    return result;
  }

LABEL_50:
  v174[0] = MEMORY[0x277D84F90];

  result = sub_24F457BF8(0, v87 & ~(v87 >> 63), 0);
  if ((v87 & 0x8000000000000000) == 0)
  {
    v88 = 0;
    v173 = v174[0];
    v89 = v171;
    v162 = (v29 + 1);
    v163 = v171 & 0xC000000000000001;
    v164 = v87;
    do
    {
      if (v163)
      {
        v90 = MEMORY[0x253052270](v88);
      }

      else
      {
        v90 = *(v89 + 8 * v88 + 32);
      }

      v91 = v90;
      v92 = [v90 identifier];
      v93 = sub_24F92B0D8();
      v95 = v94;

      *&v182 = v93;
      *(&v182 + 1) = v95;
      v96 = v166;
      sub_24F91EA28();
      sub_24E600AEC();
      v97 = sub_24F92C578();
      v99 = v98;
      (*v162)(v96, v168);
      if (v99)
      {

        v93 = v97;
        v95 = v99;
      }

      *&v182 = 0x3A746361746E6F63;
      *(&v182 + 1) = 0xEA00000000002F2FLL;
      MEMORY[0x253050C20](v93, v95);

      v100 = *(&v182 + 1);
      v172 = v182;
      v101 = type metadata accessor for PlayerAvatar.Overlay(0);
      v102 = *(*(v101 - 8) + 56);
      v103 = v169;
      v102(v169, 1, 1, v101);
      v184 = 0;
      v182 = 0u;
      v183 = 0u;
      v104 = v170;
      v105 = *(v170 + 20);
      v106 = v165;
      v102(&v165[v105], 1, 1, v101);
      v107 = v106 + *(v104 + 24);
      *&v177 = 0;
      v175 = 0u;
      v176 = 0u;
      *v107 = 0u;
      *(v107 + 16) = 0u;
      *(v107 + 32) = 0;
      sub_24E61DA68(&v175, v107, qword_27F21B590);
      *v106 = v172;
      v106[1] = v100;
      sub_24E61DA68(v103, v106 + v105, &qword_27F22DF80);
      sub_24E61DA68(&v182, v107, qword_27F21B590);
      v108 = v173;
      v174[0] = v173;
      v110 = *(v173 + 16);
      v109 = *(v173 + 24);
      if (v110 >= v109 >> 1)
      {
        sub_24F457BF8(v109 > 1, v110 + 1, 1);
        v108 = v174[0];
      }

      v88 = v88 + 1;
      *(v108 + 16) = v110 + 1;
      v111 = (*(v167 + 80) + 32) & ~*(v167 + 80);
      v173 = v108;
      sub_24ED00B3C(v106, v108 + v111 + *(v167 + 72) * v110, type metadata accessor for PlayerAvatar);
      v89 = v171;
    }

    while (v164 != v88);
    goto LABEL_71;
  }

  __break(1u);
LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_24ED008E4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_24ED0093C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24ECFE730(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_24ED00A34()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ED00A7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24ECFED94(a1, v4, v5, v7, v6);
}

uint64_t sub_24ED00B3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ED00C0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_24ED00C54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24ED00CCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_24ED00D14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24ED00D94()
{
  result = qword_27F22E028;
  if (!qword_27F22E028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DE80);
    sub_24E602068(&unk_27F22E030, &qword_27F22DE78);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E028);
  }

  return result;
}