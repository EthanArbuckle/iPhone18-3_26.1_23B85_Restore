void sub_1C4CF1EE0()
{
  v2 = v0;
  v3 = v0[11];
  if (v3 >> 60 != 15)
  {
    v4 = v0[10];
    v5 = *(v2 + 73);
    sub_1C44344B8(v2[10], v3);
    if (v5)
    {
      sub_1C44F9344(v4, v3);
      if (v1)
      {
        return;
      }
    }

    else
    {
      sub_1C4463E90(v4, v3);
    }
  }

  _s13OutputBuilderCMa();
  inited = swift_initStackObject();
  sub_1C4CF05C4();
  sub_1C4CF0684(0, 0);
  memcpy(__dst, v2 + 21, sizeof(__dst));
  v7 = __dst[1];
  v8 = __dst[3];
  v9 = __dst[4];
  v197 = v2;
  v198 = inited;
  if (!(__dst[6] >> 62))
  {
    v27 = *v2;
    v28 = v2[1];
    v29 = inited;
    v30 = v2[2];
    memcpy(__src, v2 + 21, 0x48uLL);
    __src[6] &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_1C44600A0(__src, &v200, &unk_1EC0C6360, &qword_1C4F6BAC8);
    v31 = sub_1C4D11C18(v27, v28, v30);
    sub_1C4CF6C10(v31, v32, 9215458, 0xA300000000000000, v29);

    v200 = 546086370;
    v201 = 0xA400000000000000;
    v33 = sub_1C4CC2358(v7);
    MEMORY[0x1C6940010](v33);

    MEMORY[0x1C6940010](32, 0xE100000000000000);
    if (v9)
    {
      v34 = v8;
    }

    else
    {
      v34 = 0;
    }

    if (v9)
    {
      v35 = v9;
    }

    else
    {
      v35 = 0xE000000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v34, v35);

    sub_1C4CF6C10(0x6962616C69617661, 0xEC0000007974696CLL, v200, v201, v29);
    sub_1C4CF6BE0(__dst);
    goto LABEL_65;
  }

  v10 = __dst[0];
  v11 = MEMORY[0x1E69E7CC0];
  if (__dst[6] >> 62 == 1)
  {
    v13 = *v2;
    v12 = v2[1];
    v14 = v2[2];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = sub_1C4D11C18(v13, v12, v14);
    sub_1C4CF6C10(v15, v16, 3029639152, 0xA400000000000000, inited);

    v17 = *(v10 + 16);
    if (v17)
    {
      v200 = v11;
      sub_1C44CD9C0();
      v18 = v11;
      v19 = (v10 + 48);
      do
      {
        v20 = *(v19 - 8);
        v21 = *v19;
        v22 = v19[1];
        v192 = *(v19 + 16);
        v24 = v19[5];
        v23 = v19[6];
        __src[0] = 0;
        __src[1] = 0xE000000000000000;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4431E64(v24, v23);
        sub_1C4F02438();
        MEMORY[0x1C6940010](58, 0xE100000000000000);
        MEMORY[0x1C6940010](v21, v22);
        MEMORY[0x1C6940010](58, 0xE100000000000000);
        LOBYTE(v202) = v192;
        sub_1C4F02438();

        sub_1C441DFEC(v24, v23);
        v200 = v18;
        v25 = *(v18 + 16);
        if (v25 >= *(v18 + 24) >> 1)
        {
          sub_1C44CD9C0();
          v18 = v200;
        }

        v19 += 9;
        *(v18 + 16) = v25 + 1;
        v26 = v18 + 16 * v25;
        *(v26 + 32) = 0;
        *(v26 + 40) = 0xE000000000000000;
        --v17;
      }

      while (v17);
      sub_1C4CF6BE0(__dst);
      v2 = v197;
    }

    else
    {
      sub_1C4CF6BE0(__dst);
      v18 = MEMORY[0x1E69E7CC0];
    }

    __src[0] = 0x1000000000000024;
    __src[1] = 0x80000001C4FC5C80;
    v200 = v18;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    v71 = sub_1C4F01048();
    v73 = v72;

    MEMORY[0x1C6940010](v71, v73);

    v74 = 0x1000000000000024;
    v75 = 0x80000001C4FC5C80;
    v76 = v198;
    goto LABEL_64;
  }

  if (__dst[6] != 0x8000000000000000 || __dst[3] | __dst[1] | __dst[0] | __dst[4] | __dst[8] | __dst[7] | __dst[5] | __dst[2])
  {
    v69 = sub_1C4D11C18(*v2, v2[1], v2[2]);
    sub_1C4CF6C10(v69, v70, 2728370160, 0xA400000000000000, inited);

    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0x1000000000000010, 0x80000001C4FC5BF0);
    sub_1C4F01A28();
    MEMORY[0x1C6940010](41, 0xE100000000000000);
LABEL_63:
    v74 = __src[0];
    v75 = __src[1];
    v76 = inited;
LABEL_64:
    sub_1C4CF6C10(0x6962616C69617661, 0xEC0000007974696CLL, v74, v75, v76);
LABEL_65:

LABEL_66:
    v80 = 0;
    v81 = v2[39];
    v82 = *(v81 + 16);
    v83 = v81 + 32;
    v84 = MEMORY[0x1E69E7CC0];
LABEL_67:
    v85 = (v83 + 72 * v80);
    while (v82 != v80)
    {
      if (v80 >= v82)
      {
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
        goto LABEL_206;
      }

      memcpy(__src, v85, 0x48uLL);
      v86 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        goto LABEL_193;
      }

      if ((__src[6] >> 60) >= 0xB)
      {
        sub_1C4CF6478(__src, &v200);
        v87 = sub_1C4F01CF8();
      }

      else
      {
        sub_1C4CF6478(__src, &v200);
        v87 = sub_1C4F01CD8();
      }

      if (v87 == sub_1C4F01CD8())
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v202 = v84;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C459E808(0, v84[2] + 1, 1);
          v84 = v202;
        }

        v90 = v84[2];
        v89 = v84[3];
        if (v90 >= v89 >> 1)
        {
          sub_1C459E808((v89 > 1), v90 + 1, 1);
          v84 = v202;
        }

        v84[2] = v90 + 1;
        memcpy(&v84[9 * v90 + 4], __src, 0x48uLL);
        v80 = v86;
        goto LABEL_67;
      }

      sub_1C4CF64B0(__src);
      ++v80;
      v85 += 72;
    }

    v91 = v84[2];
    if (v91)
    {
      sub_1C45A323C(0, 1, v84);
      memcpy(v206, v84 + 4, 0x48uLL);
      sub_1C4CF6478(v206, __src);

      __src[0] = 546086370;
      __src[1] = 0xA400000000000000;
      v200 = v91;
      v92 = sub_1C4F02858();
      MEMORY[0x1C6940010](v92);

      MEMORY[0x1C6940010](0x2073726F72726520, 0xEF203A7473726966);
      v93 = sub_1C4CF5BF8();
      MEMORY[0x1C6940010](v93);

      sub_1C4CF6C10(0x73726F727265, 0xE600000000000000, __src[0], __src[1], v198);
      sub_1C4CF64B0(v206);
    }

    else
    {
    }

    v94 = v2[37];
    __src[0] = MEMORY[0x1E69E7CC0];
    v95 = sub_1C4428DA0(v94);
    for (i = 0; v95 != i; ++i)
    {
      if ((v94 & 0xC000000000000001) != 0)
      {
        v97 = MEMORY[0x1C6940F90](i, v94);
      }

      else
      {
        if (i >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_195;
        }

        v97 = *(v94 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_194;
      }

      if (*(v97 + 266) & 1) != 0 || (*(v97 + 282))
      {
        sub_1C4F02318();
        v98 = *(__src[0] + 16);
        sub_1C4F02358();
        sub_1C4F02368();
        sub_1C4F02328();
      }

      else
      {
      }
    }

    v99 = __src[0];
    __src[0] = MEMORY[0x1E69E7CC0];
    v100 = sub_1C4428DA0(v99);
    for (j = 0; v100 != j; ++j)
    {
      if ((v99 & 0xC000000000000001) != 0)
      {
        v102 = MEMORY[0x1C6940F90](j, v99);
      }

      else
      {
        if (j >= *(v99 + 16))
        {
          goto LABEL_197;
        }

        v102 = *(v99 + 8 * j + 32);
      }

      if (__OFADD__(j, 1))
      {
        goto LABEL_196;
      }

      if (*(v102 + 282))
      {
        sub_1C4F02318();
        v103 = *(__src[0] + 16);
        sub_1C4F02358();
        sub_1C4F02368();
        sub_1C4F02328();
      }

      else
      {
      }
    }

    v104 = __src[0];
    v105 = sub_1C4428DA0(__src[0]);
    v188 = v99 & 0xC000000000000001;
    if (v105)
    {
      v106 = v105;
      __src[0] = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0();
      if (v106 < 0)
      {
        goto LABEL_212;
      }

      v187 = v99;
      v107 = 0;
      v108 = __src[0];
      v194 = v104 & 0xC000000000000001;
      v109 = v104;
      do
      {
        if (v194)
        {
          MEMORY[0x1C6940F90](v107, v104);
        }

        else
        {
          v110 = *(v104 + 8 * v107 + 32);
        }

        v111 = sub_1C4CF5A60();
        v113 = v112;

        __src[0] = v108;
        v114 = v108[2];
        if (v114 >= v108[3] >> 1)
        {
          sub_1C44CD9C0();
          v108 = __src[0];
        }

        ++v107;
        v108[2] = v114 + 1;
        v115 = &v108[2 * v114];
        v115[4] = v111;
        v115[5] = v113;
        v104 = v109;
      }

      while (v106 != v107);

      v2 = v197;
      v99 = v187;
    }

    else
    {

      v108 = MEMORY[0x1E69E7CC0];
    }

    v116 = v108[2];
    if (v116)
    {
      sub_1C45A323C(0, 1, v108);
      v118 = v108[4];
      v117 = v108[5];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      if (v116 == 1)
      {
        v119 = v118;
      }

      else
      {
        __src[0] = v118;
        __src[1] = v117;
        MEMORY[0x1C6940010](10272, 0xE200000000000000);
        v200 = v116;
        v120 = sub_1C4F02858();
        MEMORY[0x1C6940010](v120);

        MEMORY[0x1C6940010](47, 0xE100000000000000);
        v200 = sub_1C4428DA0(v99);
        v121 = sub_1C4F02858();
        MEMORY[0x1C6940010](v121);

        MEMORY[0x1C6940010](0x73206C61746F7420, 0xEF2973656372756FLL);
        v119 = __src[0];
        v117 = __src[1];
      }

      sub_1C4CF6C10(0xD000000000000010, 0x80000001C4FC5C10, v119, v117, v198);
    }

    v122 = 0;
    __src[0] = MEMORY[0x1E69E7CC0];
    while (v100 != v122)
    {
      if (v188)
      {
        v123 = MEMORY[0x1C6940F90](v122, v99);
      }

      else
      {
        if (v122 >= *(v99 + 16))
        {
          goto LABEL_199;
        }

        v123 = *(v99 + 8 * v122 + 32);
      }

      if (__OFADD__(v122, 1))
      {
        goto LABEL_198;
      }

      if (*(v123 + 64) == *(v123 + 120) || (*(v123 + 282) & 1) != 0)
      {
      }

      else
      {
        sub_1C4F02318();
        v124 = *(__src[0] + 16);
        sub_1C4F02358();
        sub_1C4F02368();
        sub_1C4F02328();
      }

      ++v122;
    }

    v125 = __src[0];
    v126 = sub_1C4428DA0(__src[0]);
    if (v126)
    {
      v127 = v126;
      __src[0] = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0();
      if (v127 < 0)
      {
        goto LABEL_213;
      }

      v128 = 0;
      v129 = __src[0];
      v190 = v125 & 0xC000000000000001;
      v195 = v125;
      do
      {
        if (v190)
        {
          MEMORY[0x1C6940F90](v128, v125);
        }

        else
        {
          v130 = *(v125 + 8 * v128 + 32);
        }

        v131 = sub_1C4CF5A60();
        v133 = v132;

        __src[0] = v129;
        v134 = v129[2];
        if (v134 >= v129[3] >> 1)
        {
          sub_1C44CD9C0();
          v129 = __src[0];
        }

        ++v128;
        v129[2] = v134 + 1;
        v135 = &v129[2 * v134];
        v135[4] = v131;
        v135[5] = v133;
        v125 = v195;
        v2 = v197;
      }

      while (v127 != v128);
    }

    else
    {

      v129 = MEMORY[0x1E69E7CC0];
    }

    v136 = v129[2];
    if (v136)
    {
      sub_1C45A323C(0, 1, v129);
      v138 = v129[4];
      v137 = v129[5];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      if (v136 == 1)
      {

        v139 = v138;
      }

      else
      {
        __src[0] = v138;
        __src[1] = v137;
        MEMORY[0x1C6940010](10272, 0xE200000000000000);
        v200 = v136;
        v141 = sub_1C4F02858();
        MEMORY[0x1C6940010](v141);

        MEMORY[0x1C6940010](47, 0xE100000000000000);
        v142 = sub_1C4428DA0(v99);

        v200 = v142;
        v143 = sub_1C4F02858();
        MEMORY[0x1C6940010](v143);

        MEMORY[0x1C6940010](0x73206C61746F7420, 0xEF2973656372756FLL);
        v139 = __src[0];
        v137 = __src[1];
      }

      v140 = v198;
      sub_1C4CF6C10(0x4373656372756F73, 0xEE006465676E6168, v139, v137, v198);
    }

    else
    {

      v140 = v198;
    }

    v144 = v2[31];
    sub_1C4CF6E8C(v2, __src);
    v145 = sub_1C4CF65C0(v144, v2);
    v146 = *(v145 + 16);
    if (v146)
    {
      __src[0] = MEMORY[0x1E69E7CC0];
      v191 = v146;
      v196 = v145;
      sub_1C44CD9C0();
      v147 = __src[0];
      v150 = sub_1C4703354(v196);
      v152 = v191;
      v151 = v196;
      v153 = 0;
      v154 = v196 + 64;
      if ((v150 & 0x8000000000000000) == 0)
      {
        while (v150 < 1 << *(v151 + 32))
        {
          v155 = v150 >> 6;
          if ((*(v154 + 8 * (v150 >> 6)) & (1 << v150)) == 0)
          {
            goto LABEL_201;
          }

          if (*(v151 + 36) != v148)
          {
            goto LABEL_202;
          }

          v156 = v150 & 0x3F;
          v157 = 0xE400000000000000;
          v158 = 1702259052;
          switch(*(*(v151 + 48) + v150))
          {
            case 1:
              v158 = 1701736302;
              break;
            case 2:
              v157 = 0xE500000000000000;
              v158 = 0x796C696164;
              break;
            case 3:
              v158 = 0xD000000000000013;
              v157 = 0x80000001C4F86260;
              break;
            case 4:
              v157 = 0xE600000000000000;
              v159 = 1801807223;
              goto LABEL_165;
            case 5:
              v160 = 0x347972657665;
              goto LABEL_168;
            case 6:
              v160 = 0x327972657665;
LABEL_168:
              v158 = v160 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
              v157 = 0xEB00000000737275;
              break;
            case 7:
              v157 = 0xE600000000000000;
              v159 = 1920298856;
LABEL_165:
              v158 = v159 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
              break;
            case 8:
              v158 = 0x4D31327972657665;
              v157 = 0xEE00736574756E69;
              break;
            case 9:
              v158 = 0x694D377972657665;
              v157 = 0xED0000736574756ELL;
              break;
            case 0xA:
              v158 = 0xD000000000000013;
              v157 = 0x80000001C4F862C0;
              break;
            default:
              break;
          }

          __src[0] = v147;
          v161 = *(v147 + 16);
          if (v161 >= *(v147 + 24) >> 1)
          {
            v186 = v148;
            v184 = v149;
            v174 = v153;
            sub_1C44CD9C0();
            v156 = v150 & 0x3F;
            v149 = v184;
            v148 = v186;
            v154 = v196 + 64;
            v152 = v191;
            v153 = v174;
            v151 = v196;
            v147 = __src[0];
          }

          *(v147 + 16) = v161 + 1;
          v162 = v147;
          v163 = v147 + 16 * v161;
          *(v163 + 32) = v158;
          *(v163 + 40) = v157;
          v164 = 1 << *(v151 + 32);
          if (v150 >= v164)
          {
            goto LABEL_203;
          }

          v165 = *(v154 + 8 * v155);
          if ((v165 & (1 << v150)) == 0)
          {
            goto LABEL_204;
          }

          if (*(v151 + 36) != v148)
          {
            goto LABEL_205;
          }

          v166 = v165 & (-2 << v156);
          if (v166)
          {
            v164 = __clz(__rbit64(v166)) | v150 & 0x7FFFFFFFFFFFFFC0;
            v140 = v198;
          }

          else
          {
            v167 = v155 << 6;
            v168 = v155 + 1;
            v169 = (v196 + 72 + 8 * v155);
            v140 = v198;
            while (v168 < (v164 + 63) >> 6)
            {
              v171 = *v169++;
              v170 = v171;
              v167 += 64;
              ++v168;
              if (v171)
              {
                v172 = v153;
                sub_1C440951C(v150, v148, v149 & 1);
                v154 = v196 + 64;
                v152 = v191;
                v153 = v172;
                v151 = v196;
                v164 = __clz(__rbit64(v170)) + v167;
                goto LABEL_183;
              }
            }

            v173 = v153;
            sub_1C440951C(v150, v148, v149 & 1);
            v154 = v196 + 64;
            v152 = v191;
            v153 = v173;
            v151 = v196;
          }

LABEL_183:
          if (++v153 == v152)
          {

            v2 = v197;
            v175 = v162;
            goto LABEL_188;
          }

          v149 = 0;
          v148 = *(v151 + 36);
          v150 = v164;
          v147 = v162;
          if (v150 < 0)
          {
            goto LABEL_200;
          }
        }
      }

      goto LABEL_200;
    }

    v175 = MEMORY[0x1E69E7CC0];
LABEL_188:
    if (*(v175 + 16))
    {
      __src[0] = v175;
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C443D694();
      v176 = sub_1C4F01048();
      v178 = v177;

      sub_1C4CF6C10(0x646575657571, 0xE600000000000000, v176, v178, v140);
    }

    v204 = *v2;
    v205 = v2[2];
    v179 = v205;
    v180 = *(&v204 + 1);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4CF6C10(0x656D614E77656976, 0xE800000000000000, v180, v179, v140);
    sub_1C4CF6EC4(&v204);
    sub_1C4CF6F18(0x644977656976, 0xE600000000000000, v204, v140);
    sub_1C4CF0804();
    swift_beginAccess();
    v181 = *(v140 + 16);
    v182 = *(v140 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return;
  }

  v36 = sub_1C4D11C18(*v2, v2[1], v2[2]);
  sub_1C4CF6C10(v36, v37, 2694815728, 0xA400000000000000, inited);

  v38 = v2[31];
  sub_1C4CF6E8C(v2, __src);
  v39 = sub_1C4CF65C0(v38, v2);
  v40 = *(v39 + 16);
  if (!v40)
  {

    v56 = MEMORY[0x1E69E7CC0];
LABEL_61:
    if (!*(v56 + 16))
    {

      sub_1C4CF6C10(0x6962616C69617661, 0xEC0000007974696CLL, 0x1000000000000025, 0x80000001C4FC5C50, inited);
      goto LABEL_66;
    }

    __src[0] = 0x100000000000001DLL;
    __src[1] = 0x80000001C4FC5C30;
    v200 = v56;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    v77 = sub_1C4F01048();
    v79 = v78;

    MEMORY[0x1C6940010](v77, v79);

    goto LABEL_63;
  }

  __src[0] = v11;
  v189 = v40;
  v193 = v39;
  sub_1C44CD9C0();
  v41 = __src[0];
  v44 = sub_1C4703354(v193);
  v46 = v189;
  v45 = v193;
  v47 = 0;
  v48 = v193 + 64;
  if ((v44 & 0x8000000000000000) == 0)
  {
    while (v44 < 1 << *(v45 + 32))
    {
      v49 = v44 >> 6;
      if ((*(v48 + 8 * (v44 >> 6)) & (1 << v44)) == 0)
      {
        goto LABEL_207;
      }

      if (*(v45 + 36) != v42)
      {
        goto LABEL_208;
      }

      v50 = v44 & 0x3F;
      v51 = 0xE400000000000000;
      v52 = 1702259052;
      switch(*(*(v45 + 48) + v44))
      {
        case 1:
          v52 = 1701736302;
          break;
        case 2:
          v51 = 0xE500000000000000;
          v52 = 0x796C696164;
          break;
        case 3:
          v52 = 0xD000000000000013;
          v51 = 0x80000001C4F86260;
          break;
        case 4:
          v51 = 0xE600000000000000;
          v53 = 1801807223;
          goto LABEL_35;
        case 5:
          v54 = 0x347972657665;
          goto LABEL_38;
        case 6:
          v54 = 0x327972657665;
LABEL_38:
          v52 = v54 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v51 = 0xEB00000000737275;
          break;
        case 7:
          v51 = 0xE600000000000000;
          v53 = 1920298856;
LABEL_35:
          v52 = v53 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8:
          v52 = 0x4D31327972657665;
          v51 = 0xEE00736574756E69;
          break;
        case 9:
          v52 = 0x694D377972657665;
          v51 = 0xED0000736574756ELL;
          break;
        case 0xA:
          v52 = 0xD000000000000013;
          v51 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      __src[0] = v41;
      v55 = *(v41 + 16);
      if (v55 >= *(v41 + 24) >> 1)
      {
        v185 = v42;
        v183 = v43;
        v68 = v47;
        sub_1C44CD9C0();
        v50 = v44 & 0x3F;
        v43 = v183;
        v42 = v185;
        v48 = v193 + 64;
        v46 = v189;
        v47 = v68;
        v45 = v193;
        v41 = __src[0];
      }

      *(v41 + 16) = v55 + 1;
      v56 = v41;
      v57 = v41 + 16 * v55;
      *(v57 + 32) = v52;
      *(v57 + 40) = v51;
      v58 = 1 << *(v45 + 32);
      if (v44 >= v58)
      {
        goto LABEL_209;
      }

      v59 = *(v48 + 8 * v49);
      if ((v59 & (1 << v44)) == 0)
      {
        goto LABEL_210;
      }

      if (*(v45 + 36) != v42)
      {
        goto LABEL_211;
      }

      v60 = v59 & (-2 << v50);
      if (v60)
      {
        v58 = __clz(__rbit64(v60)) | v44 & 0x7FFFFFFFFFFFFFC0;
        inited = v198;
      }

      else
      {
        v61 = v49 << 6;
        v62 = v49 + 1;
        v63 = (v193 + 72 + 8 * v49);
        inited = v198;
        while (v62 < (v58 + 63) >> 6)
        {
          v65 = *v63++;
          v64 = v65;
          v61 += 64;
          ++v62;
          if (v65)
          {
            v66 = v47;
            sub_1C440951C(v44, v42, v43 & 1);
            v48 = v193 + 64;
            v46 = v189;
            v47 = v66;
            v45 = v193;
            v58 = __clz(__rbit64(v64)) + v61;
            goto LABEL_53;
          }
        }

        v67 = v47;
        sub_1C440951C(v44, v42, v43 & 1);
        v48 = v193 + 64;
        v46 = v189;
        v47 = v67;
        v45 = v193;
      }

LABEL_53:
      if (++v47 == v46)
      {

        v2 = v197;
        goto LABEL_61;
      }

      v43 = 0;
      v42 = *(v45 + 36);
      v44 = v58;
      v41 = v56;
      if (v44 < 0)
      {
        break;
      }
    }
  }

LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
}

uint64_t sub_1C4CF36D8()
{
  _s13OutputBuilderCMa();
  v2 = swift_allocObject();
  sub_1C4CF05C4();
  sub_1C4CF0684(0, 0);
  v3 = *v0;
  v4 = v0[1];
  v151 = v0[2];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4CF6C10(0x656D614E77656976, 0xE800000000000000, v4, v151, v2);

  sub_1C4CF6F18(0x644977656976, 0xE600000000000000, v3, v2);
  v152[0] = sub_1C4D11C18(v3, v4, v151);
  v152[1] = v5;
  MEMORY[0x1C6940010](0x7972616D6D755320, 0xE800000000000000);
  sub_1C4CF0684(v152[0], v152[1]);

  memcpy(__dst, v0 + 21, 0x48uLL);
  v6 = __dst[3];
  v7 = __dst[4];
  v148 = v2;
  v145 = v1;
  if (!(__dst[6] >> 62))
  {
    v153 = 546086370;
    v154 = 0xA400000000000000;
    v20 = sub_1C4CC2358(__dst[1]);
    v22 = v21;
    memcpy(v152, __dst, 0x48uLL);
    v152[6] &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_1C44600A0(v152, v158, &unk_1EC0C6360, &qword_1C4F6BAC8);
    MEMORY[0x1C6940010](v20, v22);

    MEMORY[0x1C6940010](32, 0xE100000000000000);
    if (v7)
    {
      v23 = v6;
    }

    else
    {
      v23 = 0;
    }

    if (v7)
    {
      v24 = v7;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v23, v24);

    sub_1C4CF6C10(0x6962616C69617661, 0xEC0000007974696CLL, v153, v154, v2);
    sub_1C4CF6BE0(__dst);
    goto LABEL_58;
  }

  v8 = __dst[0];
  if (__dst[6] >> 62 == 1)
  {
    v9 = *(__dst[0] + 16);
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v149 = v4;
      v150 = v3;
      sub_1C4CF6410(__dst, v152);
      v156 = v10;
      sub_1C44CD9C0();
      v10 = v156;
      v11 = (v8 + 32);
      for (i = v9 - 1; ; --i)
      {
        v147 = v11;
        memcpy(v152, v11, 0x48uLL);
        v13 = v152[2];
        v14 = v152[3];
        v15 = v152[4];
        v153 = 0;
        v154 = 0xE000000000000000;
        LOBYTE(v155) = v152[1];
        sub_1C444AAD0(v152, v158);
        sub_1C4F02438();
        MEMORY[0x1C6940010](58, 0xE100000000000000);
        MEMORY[0x1C6940010](v13, v14);
        MEMORY[0x1C6940010](58, 0xE100000000000000);
        LOBYTE(v158[0]) = v15;
        sub_1C4F02438();
        sub_1C44528B0(v152);
        v16 = v153;
        v17 = v154;
        v156 = v10;
        v18 = *(v10 + 16);
        if (v18 >= *(v10 + 24) >> 1)
        {
          sub_1C44CD9C0();
          v10 = v156;
        }

        *(v10 + 16) = v18 + 1;
        v19 = v10 + 16 * v18;
        *(v19 + 32) = v16;
        *(v19 + 40) = v17;
        if (!i)
        {
          break;
        }

        v11 = (v147 + 72);
      }

      sub_1C4CF6BE0(__dst);
      v4 = v149;
      v3 = v150;
    }

    v152[0] = 0x1000000000000024;
    v152[1] = 0x80000001C4FC5C80;
    v158[0] = v10;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    v55 = sub_1C4F01048();
    v57 = v56;

    MEMORY[0x1C6940010](v55, v57);

    v58 = v152[0];
    v59 = v152[1];
    goto LABEL_57;
  }

  v25 = MEMORY[0x1E69E7CC0];
  if (__dst[6] != 0x8000000000000000 || __dst[3] | __dst[1] | __dst[0] | __dst[4] | __dst[8] | __dst[7] | __dst[5] | __dst[2])
  {
    v60 = 0x61766120A29F9FF0;
    v61 = 0xAE00656C62616C69;
LABEL_60:
    v2 = v148;
    sub_1C4CF6C10(0x6962616C69617661, 0xEC0000007974696CLL, v60, v61, v148);
    goto LABEL_61;
  }

  v26 = v146[31];
  sub_1C4CF6E8C(v146, v152);
  v27 = sub_1C4CF65C0(v26, v146);
  v28 = *(v27 + 16);
  if (v28)
  {
    v149 = v4;
    v150 = v3;
    v152[0] = v25;
    v147 = v27;
    v144 = v28;
    sub_1C44CD9C0();
    v29 = v152[0];
    v32 = sub_1C4703354(v147);
    result = v147;
    v34 = v144;
    v35 = 0;
    v36 = v147 + 64;
    v140 = 0x80000001C4F86260;
    v141 = 0x80000001C4F862C0;
    v142 = v147 + 72;
    v143 = v147 + 64;
    if ((v32 & 0x8000000000000000) == 0)
    {
      while (v32 < 1 << *(result + 32))
      {
        v37 = v32 >> 6;
        if ((*(v36 + 8 * (v32 >> 6)) & (1 << v32)) == 0)
        {
          goto LABEL_167;
        }

        if (*(result + 36) != v30)
        {
          goto LABEL_168;
        }

        v38 = v32 & 0x3F;
        v39 = 0xE600000000000000;
        v40 = 0x796C6B656577;
        switch(*(*(result + 48) + v32))
        {
          case 1:
            v39 = 0xE400000000000000;
            v40 = 1701736302;
            break;
          case 2:
            v39 = 0xE500000000000000;
            v40 = 0x796C696164;
            break;
          case 3:
            v40 = 0xD000000000000013;
            v39 = v140;
            break;
          case 4:
            break;
          case 5:
            v41 = 0x347972657665;
            goto LABEL_32;
          case 6:
            v41 = 0x327972657665;
LABEL_32:
            v40 = v41 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
            v39 = 0xEB00000000737275;
            break;
          case 7:
            v40 = 0x796C72756F68;
            break;
          case 8:
            v40 = 0x4D31327972657665;
            v39 = 0xEE00736574756E69;
            break;
          case 9:
            v40 = 0x694D377972657665;
            v39 = 0xED0000736574756ELL;
            break;
          case 0xA:
            v40 = 0xD000000000000013;
            v39 = v141;
            break;
          default:
            v39 = 0xE400000000000000;
            v40 = 1702259052;
            break;
        }

        v152[0] = v29;
        v42 = *(v29 + 16);
        v43 = v29;
        if (v42 >= *(v29 + 24) >> 1)
        {
          v138 = v30;
          v139 = v35;
          v137 = v31;
          v136 = v32 & 0x3F;
          sub_1C44CD9C0();
          v38 = v32 & 0x3F;
          LOBYTE(v31) = v137;
          v30 = v138;
          v35 = v139;
          v36 = v143;
          v34 = v144;
          result = v147;
          v43 = v152[0];
        }

        *(v43 + 16) = v42 + 1;
        v44 = v43 + 16 * v42;
        *(v44 + 32) = v40;
        *(v44 + 40) = v39;
        v45 = 1 << *(result + 32);
        if (v32 >= v45)
        {
          goto LABEL_169;
        }

        v46 = *(v36 + 8 * v37);
        if ((v46 & (1 << v32)) == 0)
        {
          goto LABEL_170;
        }

        v29 = v43;
        if (*(result + 36) != v30)
        {
          goto LABEL_171;
        }

        v47 = v46 & (-2 << v38);
        if (v47)
        {
          v45 = __clz(__rbit64(v47)) | v32 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v48 = v37 << 6;
          v49 = v37 + 1;
          v50 = (v142 + 8 * v37);
          while (v49 < (v45 + 63) >> 6)
          {
            v52 = *v50++;
            v51 = v52;
            v48 += 64;
            ++v49;
            if (v52)
            {
              v53 = v35;
              sub_1C440951C(v32, v30, v31 & 1);
              v36 = v143;
              v34 = v144;
              v35 = v53;
              result = v147;
              v45 = __clz(__rbit64(v51)) + v48;
              goto LABEL_47;
            }
          }

          v54 = v35;
          sub_1C440951C(v32, v30, v31 & 1);
          v36 = v143;
          v34 = v144;
          v35 = v54;
          result = v147;
        }

LABEL_47:
        if (++v35 == v34)
        {

          v4 = v149;
          v3 = v150;
          goto LABEL_55;
        }

        v31 = 0;
        v30 = *(result + 36);
        v32 = v45;
        if (v45 < 0)
        {
          goto LABEL_166;
        }
      }
    }

    goto LABEL_166;
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_55:
  if (!*(v29 + 16))
  {

    v60 = 0x1000000000000025;
    v61 = 0x80000001C4FC5C50;
    goto LABEL_60;
  }

  v152[0] = 0x100000000000001DLL;
  v152[1] = 0x80000001C4FC5C30;
  v158[0] = v29;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  v62 = sub_1C4F01048();
  v64 = v63;

  MEMORY[0x1C6940010](v62, v64);

  v58 = v152[0];
  v59 = v152[1];
LABEL_57:
  v2 = v148;
  sub_1C4CF6C10(0x6962616C69617661, 0xEC0000007974696CLL, v58, v59, v148);
LABEL_58:

LABEL_61:
  memcpy(v160, v146 + 3, sizeof(v160));
  if (v160[2] >= 1)
  {
    v158[0] = v160[2];
    v152[0] = sub_1C4F02858();
    v152[1] = v65;
    MEMORY[0x1C6940010](0x100000000000001BLL, 0x80000001C4FC5F20);
    sub_1C4CF6C10(0x4374706D65747461, 0xEC000000746E756FLL, v152[0], v152[1], v2);
  }

  memcpy(v152, v146 + 12, 0x48uLL);
  if (v152[3])
  {
    v66 = *&v152[5];
    memcpy(v158, v146 + 12, sizeof(v158));
    sub_1C444AAD0(v158, &v153);
    sub_1C4CF7188(0xD000000000000020, 0x80000001C4FC5EF0, v2, v66);
    sub_1C4423A0C(v152, &qword_1EC0C6340, &qword_1C4F6BAA0);
  }

  v67 = v160;
  sub_1C4BBB1BC();
  if (v145)
  {

    return v67;
  }

  if (v69)
  {
    sub_1C4CF0884(0x6B72616D6B6F6F62, 0xE800000000000000, v68, v69);
  }

  v70 = v146[30];
  v71 = *(v70 + 16);
  if (v71)
  {
    sub_1C4CF0674(0x736575737369, 0xE600000000000000);
    v72 = (v70 + 32);
    do
    {
      memcpy(v163, v72, sizeof(v163));
      sub_1C4CF6478(v163, v158);
      v73 = sub_1C4CF6320(v3, v4, v151);
      sub_1C4CF6998(v73, v74, v2);
      sub_1C4CF64B0(v163);

      v72 += 72;
      --v71;
    }

    while (v71);
    sub_1C4CF067C();
  }

  v149 = v4;
  v150 = v3;
  sub_1C4CF0804();
  v75 = v146[31];
  v159 = v75;
  v76 = v75 + 64;
  v77 = 1 << *(v75 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & *(v75 + 64);
  v80 = (v77 + 63) >> 6;
  v147 = v75;
  result = swift_bridgeObjectRetain_n();
  v81 = 0;
  while (v79)
  {
    v82 = v81;
LABEL_83:
    v84 = *(*(v147 + 56) + ((v82 << 9) | (8 * __clz(__rbit64(v79)))));
    v79 &= v79 - 1;
    v158[0] = v150;
    v158[1] = v149;
    v158[2] = v151;
    MEMORY[0x1EEE9AC00](result);
    v135 = v158;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v85 = v145;
    v86 = sub_1C479B5CC(sub_1C4959A04, v134, v84);
    v145 = v85;

    if (v86)
    {
      v87 = v147;

      v88 = v148;
      result = sub_1C4CF0674(0x736575657551, 0xE600000000000000);
      v89 = 0;
      v90 = 1 << *(v87 + 32);
      v91 = -1;
      if (v90 < 64)
      {
        v91 = ~(-1 << v90);
      }

      v92 = v91 & *(v87 + 64);
      v93 = (v90 + 63) >> 6;
      v141 = 0x80000001C4F86260;
      v142 = 0x80000001C4F862C0;
      while (v92)
      {
LABEL_92:
        v95 = __clz(__rbit64(v92)) | (v89 << 6);
        v96 = *(*(v147 + 48) + v95);
        v97 = *(*(v147 + 56) + 8 * v95);
        v92 &= v92 - 1;
        v158[0] = v150;
        v158[1] = v149;
        v158[2] = v151;
        MEMORY[0x1EEE9AC00](result);
        v135 = v158;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v98 = v145;
        v99 = sub_1C479B5CC(sub_1C4959A04, v134, v97);
        v145 = v98;
        if (v99)
        {
          v100 = v146[32];
          if (*(v100 + 16) && (v101 = sub_1C457B5CC(v96), (v102 & 1) != 0))
          {
            v143 = v93;
            v103 = *(*(v100 + 56) + 8 * v101);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

            sub_1C4CF0684(0, 0);
            v104 = sub_1C4424B10(v96);
            sub_1C4CF6C10(1701667182, 0xE400000000000000, v104, v105, v88);

            sub_1C4CF0674(0x73726F727265, 0xE600000000000000);
            v144 = v103;
            v106 = *(v103 + 16);
            if (v106)
            {
              v107 = (v144 + 32);
              do
              {
                memcpy(v161, v107, sizeof(v161));
                if ((v161[6] >> 60) >= 0xB)
                {
                  sub_1C4CF6478(v161, v158);
                  v108 = sub_1C4F01CF8();
                }

                else
                {
                  sub_1C4CF6478(v161, v158);
                  v108 = sub_1C4F01CD8();
                }

                if (sub_1C4F01CF8() == v108)
                {
                  v158[0] = 0x208FB8EFA09AE2;
                  v109 = 0xA700000000000000;
                }

                else
                {
                  v158[0] = 546086370;
                  v109 = 0xA400000000000000;
                }

                v158[1] = v109;
                v156 = v150;
                v153 = sub_1C4F02858();
                v154 = v110;
                MEMORY[0x1C6940010](58, 0xE100000000000000);
                MEMORY[0x1C6940010](v149, v151);
                MEMORY[0x1C6940010](v153, v154);

                MEMORY[0x1C6940010](8250, 0xE200000000000000);
                v111 = sub_1C4CF5BF8();
                MEMORY[0x1C6940010](v111);

                v88 = v148;
                sub_1C4CF6998(v158[0], v158[1], v148);
                sub_1C4CF64B0(v161);

                v107 += 72;
                --v106;
              }

              while (v106);
            }

            sub_1C4CF067C();
            result = sub_1C4CF0804();
            v93 = v143;
          }

          else
          {

            v112 = 0xE600000000000000;
            v113 = 0x796C6B656577;
            switch(v96)
            {
              case 1:
                v112 = 0xE400000000000000;
                v113 = 1701736302;
                break;
              case 2:
                v112 = 0xE500000000000000;
                v113 = 0x796C696164;
                break;
              case 3:
                v113 = 0xD000000000000013;
                v112 = v141;
                break;
              case 4:
                break;
              case 5:
                v114 = 0x347972657665;
                goto LABEL_116;
              case 6:
                v114 = 0x327972657665;
LABEL_116:
                v113 = v114 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
                v112 = 0xEB00000000737275;
                break;
              case 7:
                v113 = 0x796C72756F68;
                break;
              case 8:
                v113 = 0x4D31327972657665;
                v112 = 0xEE00736574756E69;
                break;
              case 9:
                v113 = 0x694D377972657665;
                v112 = 0xED0000736574756ELL;
                break;
              case 10:
                v113 = 0xD000000000000013;
                v112 = v142;
                break;
              default:
                v112 = 0xE400000000000000;
                v113 = 1702259052;
                break;
            }

            sub_1C4CF6998(v113, v112, v88);
          }
        }

        else
        {
        }
      }

      while (1)
      {
        v94 = v89 + 1;
        if (__OFADD__(v89, 1))
        {
          goto LABEL_172;
        }

        if (v94 >= v93)
        {

          sub_1C4CF067C();
          v83 = v146;
          goto LABEL_121;
        }

        v92 = *(v76 + 8 * v94);
        ++v89;
        if (v92)
        {
          v89 = v94;
          goto LABEL_92;
        }
      }
    }
  }

  v83 = v146;
  while (1)
  {
    v82 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      __break(1u);
      goto LABEL_165;
    }

    if (v82 >= v80)
    {
      break;
    }

    v79 = *(v76 + 8 * v82);
    ++v81;
    if (v79)
    {
      v81 = v82;
      goto LABEL_83;
    }
  }

  sub_1C4423A0C(&v159, &qword_1EC0C6348, &qword_1C4F6BAA8);

  v88 = v148;
LABEL_121:
  v115 = v83[37];
  v147 = sub_1C4428DA0(v115);
  if (!v147)
  {
LABEL_161:
    sub_1C4CF0804();
    swift_beginAccess();
    v67 = *(v88 + 16);
    v133 = *(v88 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return v67;
  }

  sub_1C4CF0674(0x73656372756F53, 0xE700000000000000);
  v116 = 0;
  v146 = (v115 & 0xC000000000000001);
  v144 = v115 + 32;
  v143 = v115;
  while (1)
  {
    v117 = v146;
    sub_1C4431590(v116, v146 == 0);
    if (v117)
    {
      result = MEMORY[0x1C6940F90](v116, v115);
      v118 = result;
    }

    else
    {
      v118 = *(v144 + 8 * v116);
    }

    if (__OFADD__(v116++, 1))
    {
      break;
    }

    swift_beginAccess();
    if (*(*(v118 + 272) + 16))
    {
      sub_1C4CF0684(0, 0);
      v120 = sub_1C4CF5A60();
      sub_1C4CF6C10(v120, v121, 9215458, 0xA300000000000000, v88);

      sub_1C4CF7400(0x6C62616C69617661, 0xE900000000000065, *(v118 + 72), v88);
      if (*(v118 + 72) == 1)
      {
        if (*(v118 + 64) != *(v118 + 120))
        {
          sub_1C4CF7400(0x6465676E616863, 0xE700000000000000, 1, v88);
        }

        if (*(v118 + 282) == 1)
        {
          sub_1C4CF7400(0x65726F74696E6F6DLL, 0xE900000000000064, 1, v88);
        }

        if (*(v118 + 243) == 1)
        {
          sub_1C4CF7400(0x6F69725068676968, 0xEC00000079746972, 1, v88);
        }
      }

      if (*(*(v118 + 272) + 16))
      {
        sub_1C4CF0674(0x73726F727265, 0xE600000000000000);
        v122 = *(v118 + 272);
        v123 = *(v122 + 16);
        if (v123)
        {
          v124 = *(v118 + 272);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v125 = 32;
          do
          {
            memcpy(v162, (v122 + v125), sizeof(v162));
            if ((v162[6] >> 60) >= 0xB)
            {
              sub_1C4CF6478(v162, v158);
              v126 = sub_1C4F01CF8();
            }

            else
            {
              sub_1C4CF6478(v162, v158);
              v126 = sub_1C4F01CD8();
            }

            if (sub_1C4F01CF8() == v126)
            {
              v158[0] = 0x208FB8EFA09AE2;
              v127 = 0xA700000000000000;
            }

            else
            {
              v158[0] = 546086370;
              v127 = 0xA400000000000000;
            }

            v158[1] = v127;
            v155 = v150;
            v156 = sub_1C4F02858();
            v157 = v128;
            MEMORY[0x1C6940010](58, 0xE100000000000000);
            MEMORY[0x1C6940010](v149, v151);
            MEMORY[0x1C6940010](v156, v157);

            MEMORY[0x1C6940010](8250, 0xE200000000000000);
            v129 = sub_1C4CF5BF8();
            MEMORY[0x1C6940010](v129);

            v88 = v148;
            sub_1C4CF6998(v158[0], v158[1], v148);
            sub_1C4CF64B0(v162);

            v125 += 72;
            --v123;
          }

          while (v123);

          v115 = v143;
        }

        sub_1C4CF067C();
      }

      sub_1C4CF0804();
    }

    else
    {
      v158[0] = sub_1C4CF5A60();
      v158[1] = v130;
      v131 = 0xB4949FF020;
      if (*(v118 + 72) != 1)
      {
        goto LABEL_153;
      }

      MEMORY[0x1C6940010](0xA29F9FF020, 0xA500000000000000);
      if (*(v118 + 282) == 1)
      {
        MEMORY[0x1C6940010](0x8D949FF020, 0xA500000000000000);
      }

      if (*(v118 + 64) != *(v118 + 120))
      {
        MEMORY[0x1C6940010](0x8FB8EF949CE220, 0xA700000000000000);
      }

      v132 = *(v118 + 281);
      if (v132 != 2)
      {
        v131 = 0x90959FF020;
        if (v132)
        {
LABEL_153:
          MEMORY[0x1C6940010](v131, 0xA500000000000000);
        }
      }

      if (*(v118 + 243) == 1)
      {
        MEMORY[0x1C6940010](2510152224, 0xA400000000000000);
      }

      sub_1C4CF6998(v158[0], v158[1], v88);
    }

    if (v116 == v147)
    {
      sub_1C4CF067C();
      goto LABEL_161;
    }
  }

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
  return result;
}

uint64_t sub_1C4CF4CD4()
{
  v2 = v0;
  _s13OutputBuilderCMa();
  v3 = swift_allocObject();
  sub_1C4CF05C4();
  sub_1C4CF0684(0, 0);
  v4 = *v0;
  v5 = v0[1];
  v6 = v0[2];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4CF6C10(0x656D614E77656976, 0xE800000000000000, v5, v6, v3);

  sub_1C4CF6F18(0x644977656976, 0xE600000000000000, v4, v3);
  memcpy(__dst, v0 + 3, sizeof(__dst));
  v159 = __dst[0];
  v160 = __dst[1];
  v161 = __dst[2];
  v162 = 0;
  v163 = 0;
  v164 = __dst[5];
  v165 = __dst[6];
  v166 = xmmword_1C4F29230;
  sub_1C4CF7670(0x7461745377656976, 0xE900000000000065, &v159, v3);
  v7 = __dst;
  sub_1C4BBB1BC();
  if (v1)
  {

    return v7;
  }

  else
  {
    v114 = v5;
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 1819047278;
    }

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xE400000000000000;
    }

    sub_1C4CF0884(0xD000000000000012, 0x80000001C4FC5F40, v10, v11);

    memcpy(v122, v2 + 12, sizeof(v122));
    if (v122[3])
    {
      v153 = *(v2 + 6);
      v154 = v2[14];
      v155 = v122[3];
      v12 = *(v2 + 9);
      v156 = *(v2 + 8);
      v157 = v12;
      v158 = v2[20];
      memcpy(v121, v2 + 12, sizeof(v121));
      sub_1C444AAD0(v121, &v116);
      sub_1C4CF7910(0x72756F5377656976, 0xEF65746174536563, &v153, v3);
      sub_1C4423A0C(v122, &qword_1EC0C6340, &qword_1C4F6BAA0);
    }

    v13 = v2[30];
    v14 = *(v13 + 16);
    if (v14)
    {
      sub_1C4CF0674(0x736575737369, 0xE600000000000000);
      v15 = (v13 + 32);
      do
      {
        memcpy(v152, v15, sizeof(v152));
        sub_1C4CF6478(v152, v121);
        v16 = sub_1C4CF6320(v4, v114, v6);
        sub_1C4CF6998(v16, v17, v3);
        sub_1C4CF64B0(v152);

        v15 += 72;
        --v14;
      }

      while (v14);
      sub_1C4CF067C();
    }

    v167 = v4;
    sub_1C4CF0684(0x736575657551, 0xE600000000000000);
    v18 = v2[31];
    v21 = *(v18 + 64);
    v20 = v18 + 64;
    v19 = v21;
    v22 = 1 << *(v2[31] + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v19;
    v25 = (v22 + 63) >> 6;
    v110 = v2[31];
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v27 = 0;
    v115 = v6;
    v103 = v2;
    v105 = v25;
    v107 = v20;
    if (v24)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_85;
      }

      if (v28 >= v25)
      {
        break;
      }

      v24 = *(v20 + 8 * v28);
      ++v27;
      if (v24)
      {
        v27 = v28;
        do
        {
LABEL_22:
          v29 = __clz(__rbit64(v24)) | (v27 << 6);
          v30 = *(*(v110 + 48) + v29);
          v31 = *(*(v110 + 56) + 8 * v29);
          v112 = v30;
          v32 = sub_1C4424B10(v30);
          v34 = v33;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4CF0674(v32, v34);
          v35 = v31;

          v36 = *(v31 + 16);
          if (v36)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v37 = (v35 + 48);
            do
            {
              v38 = *(v37 - 2);
              v39 = *(v37 - 1);
              v40 = *v37;
              if (v38 == v167 && (v39 == v114 ? (v41 = v40 == v115) : (v41 = 0), v41 || (v42 = *(v37 - 1), v43 = *v37, (sub_1C4F02938() & 1) != 0)))
              {
                v116 = v167;
              }

              else
              {
                v116 = v38;
              }

              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v121[0] = sub_1C4F02858();
              v121[1] = v44;
              MEMORY[0x1C6940010](58, 0xE100000000000000);
              MEMORY[0x1C6940010](v39, v40);

              sub_1C4CF6998(v121[0], v121[1], v3);

              v37 += 3;
              --v36;
            }

            while (v36);

            v6 = v115;
            v2 = v103;
          }

          v24 &= v24 - 1;
          sub_1C4CF067C();
          v45 = v2[32];
          if (*(v45 + 16) && (v46 = sub_1C457B5CC(v112), (v47 & 1) != 0))
          {
            v48 = *(*(v45 + 56) + 8 * v46);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

            v121[0] = sub_1C4424B10(v112);
            v121[1] = v49;
            MEMORY[0x1C6940010](0x53524F5252455FLL, 0xE700000000000000);
            sub_1C4CF0674(v121[0], v121[1]);

            v113 = v48;
            v50 = *(v48 + 16);
            if (v50)
            {
              v51 = (v113 + 32);
              do
              {
                memcpy(v124, v51, sizeof(v124));
                if ((v124[6] >> 60) >= 0xB)
                {
                  sub_1C4CF6478(v124, v121);
                  v52 = sub_1C4F01CF8();
                }

                else
                {
                  sub_1C4CF6478(v124, v121);
                  v52 = sub_1C4F01CD8();
                }

                if (sub_1C4F01CF8() == v52)
                {
                  v121[0] = 0x208FB8EFA09AE2;
                  v53 = 0xA700000000000000;
                }

                else
                {
                  v121[0] = 546086370;
                  v53 = 0xA400000000000000;
                }

                v121[1] = v53;
                v119 = v167;
                v116 = sub_1C4F02858();
                v117 = v54;
                MEMORY[0x1C6940010](58, 0xE100000000000000);
                MEMORY[0x1C6940010](v114, v6);
                MEMORY[0x1C6940010](v116, v117);

                MEMORY[0x1C6940010](8250, 0xE200000000000000);
                v55 = sub_1C4CF5BF8();
                MEMORY[0x1C6940010](v55);

                sub_1C4CF6998(v121[0], v121[1], v3);
                sub_1C4CF64B0(v124);

                v51 += 72;
                --v50;
                v6 = v115;
              }

              while (v50);
            }

            result = sub_1C4CF067C();
            v2 = v103;
          }

          else
          {
          }

          v25 = v105;
          v20 = v107;
        }

        while (v24);
      }
    }

    sub_1C4CF0804();
    sub_1C4CF0684(0x73656372756F53, 0xE700000000000000);
    v56 = v2[37];
    v104 = sub_1C4428DA0(v56);
    if (!v104)
    {
LABEL_82:
      sub_1C4CF0804();
      sub_1C4CF0804();
      swift_beginAccess();
      v7 = *(v3 + 16);
      v99 = *(v3 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      return v7;
    }

    v57 = 0;
    v101 = v56;
    v102 = v56 & 0xC000000000000001;
    v100 = v56 + 32;
    while (1)
    {
      sub_1C4431590(v57, v102 == 0);
      if (v102)
      {
        result = MEMORY[0x1C6940F90](v57, v56);
        v58 = result;
      }

      else
      {
        v58 = *(v100 + 8 * v57);
      }

      if (__OFADD__(v57++, 1))
      {
        break;
      }

      v60 = sub_1C4CF5A60();
      sub_1C4CF0684(v60, v61);

      sub_1C4CF7400(0x6C62616C69617661, 0xE900000000000065, *(v58 + 72), v3);
      if (*(v58 + 72))
      {
        if (*(v58 + 64) != *(v58 + 120))
        {
          sub_1C4CF7400(0x6465676E616863, 0xE700000000000000, 1, v3);
        }

        if (*(v58 + 282) == 1)
        {
          sub_1C4CF7400(0x65726F74696E6F6DLL, 0xE900000000000064, 1, v3);
        }

        if (*(v58 + 243) == 1)
        {
          sub_1C4CF7400(0x6F69725068676968, 0xEC00000079746972, 1, v3);
        }
      }

      memcpy(v151, (v58 + 24), sizeof(v151));
      sub_1C444AAD0(v151, v121);
      sub_1C4CF7910(0x656372756F73, 0xE600000000000000, v151, v3);
      sub_1C44528B0(v151);
      v62 = *(v58 + 112);
      v63 = *(v58 + 136);
      v64 = *(v58 + 144);
      v147 = *(v58 + 96);
      v148 = v62;
      v149 = *(v58 + 120);
      v150 = xmmword_1C4F29230;
      v109 = v64;
      v111 = v63;
      sub_1C4431E64(v63, v64);
      sub_1C4CF7BB0(0x694C656372756F73, 0xEE0072656E657473, &v147, v3);
      v65 = *(v58 + 32);
      memcpy(v144, (v58 + 24), sizeof(v144));
      v66 = *(v58 + 224);
      v145[0] = *(v58 + 208);
      v145[1] = v66;
      v145[2] = *(v58 + 240);
      v146 = *(v58 + 256);
      v67 = *(v58 + 136);
      v68 = *(v58 + 144);
      sub_1C444AAD0(v144, v121);
      sub_1C444808C(v145, v121);
      sub_1C4431E64(v67, v68);
      v69 = sub_1C4CF0B88(v144, v145, v67, v68, v65);
      v71 = v70;
      sub_1C441DFEC(v67, v68);
      sub_1C44636BC(v145);
      sub_1C44528B0(v144);
      if (v71)
      {
        v72 = v69;
      }

      else
      {
        v72 = 1819047278;
      }

      if (v71)
      {
        v73 = v71;
      }

      else
      {
        v73 = 0xE400000000000000;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4CF0884(0xD000000000000017, 0x80000001C4FC5F60, v72, v73);

      v74 = *(v58 + 168);
      v75 = *(v58 + 192);
      v76 = *(v58 + 200);
      v140 = *(v58 + 152);
      v141 = v74;
      v142 = *(v58 + 176);
      v143 = xmmword_1C4F29230;
      v106 = v76;
      v108 = v75;
      sub_1C4431E64(v75, v76);
      sub_1C4CF7BB0(0xD000000000000019, 0x80000001C4FC5960, &v140, v3);
      v77 = *(v58 + 32);
      memcpy(v137, (v58 + 24), sizeof(v137));
      v78 = *(v58 + 224);
      v138[0] = *(v58 + 208);
      v138[1] = v78;
      v138[2] = *(v58 + 240);
      v139 = *(v58 + 256);
      v79 = *(v58 + 192);
      v80 = *(v58 + 200);
      sub_1C444AAD0(v137, v121);
      sub_1C444808C(v138, v121);
      sub_1C4431E64(v79, v80);
      sub_1C4CF0B88(v137, v138, v79, v80, v77);

      sub_1C441DFEC(v79, v80);
      sub_1C44636BC(v138);
      sub_1C44528B0(v137);
      sub_1C4CF0884(0xD000000000000022, 0x80000001C4FC5F80, v72, v73);

      v81 = *(v58 + 224);
      v82 = *(v58 + 232);
      v83 = *(v58 + 240);
      v84 = *(v58 + 241);
      v85 = *(v58 + 242);
      v86 = *(v58 + 243);
      v87 = *(v58 + 244);
      v88 = *(v58 + 245);
      v126 = *(v58 + 208);
      v127 = v81;
      v128 = v82;
      v129 = v83;
      v130 = v84;
      v131 = v85;
      v132 = v86;
      v133 = v87;
      v134 = v88;
      v135 = 0;
      v136 = 0xE000000000000000;
      sub_1C4CF7E58(0xD000000000000014, 0x80000001C4F87AC0, &v126, v3);
      v89 = *(v58 + 248);
      v90 = *(v58 + 256);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4CF0884(0xD00000000000001BLL, 0x80000001C4FC5FB0, v89, v90);

      swift_beginAccess();
      if (*(*(v58 + 272) + 16))
      {
        sub_1C4CF0674(0x73726F727265, 0xE600000000000000);
        v91 = *(v58 + 272);
        v92 = *(v91 + 16);
        if (v92)
        {
          v93 = *(v58 + 272);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v94 = 32;
          do
          {
            memcpy(v125, (v91 + v94), sizeof(v125));
            if ((v125[6] >> 60) >= 0xB)
            {
              sub_1C4CF6478(v125, v121);
              v95 = sub_1C4F01CF8();
            }

            else
            {
              sub_1C4CF6478(v125, v121);
              v95 = sub_1C4F01CD8();
            }

            if (sub_1C4F01CF8() == v95)
            {
              v121[0] = 0x208FB8EFA09AE2;
              v96 = 0xA700000000000000;
            }

            else
            {
              v121[0] = 546086370;
              v96 = 0xA400000000000000;
            }

            v121[1] = v96;
            v118 = v167;
            v119 = sub_1C4F02858();
            v120 = v97;
            MEMORY[0x1C6940010](58, 0xE100000000000000);
            MEMORY[0x1C6940010](v114, v115);
            MEMORY[0x1C6940010](v119, v120);

            MEMORY[0x1C6940010](8250, 0xE200000000000000);
            v98 = sub_1C4CF5BF8();
            MEMORY[0x1C6940010](v98);

            sub_1C4CF6998(v121[0], v121[1], v3);
            sub_1C4CF64B0(v125);

            v94 += 72;
            --v92;
          }

          while (v92);
        }

        sub_1C4CF067C();
      }

      sub_1C4CF0804();
      sub_1C441DFEC(v108, v106);
      sub_1C441DFEC(v111, v109);

      v56 = v101;
      if (v57 == v104)
      {
        goto LABEL_82;
      }
    }

LABEL_85:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4CF5A60()
{
  sub_1C4F02248();
  v4 = *(v0 + 216);
  v1 = sub_1C4F02858();
  MEMORY[0x1C6940010](v1);

  MEMORY[0x1C6940010](58, 0xE100000000000000);
  LOBYTE(v4) = *(v0 + 224);
  sub_1C4F02438();
  MEMORY[0x1C6940010](58, 0xE100000000000000);
  v5 = *(v0 + 232);
  v2 = sub_1C4F02858();
  MEMORY[0x1C6940010](v2);

  MEMORY[0x1C6940010](58, 0xE100000000000000);
  MEMORY[0x1C6940010](*(v0 + 40), *(v0 + 48));
  MEMORY[0x1C6940010](58, 0xE100000000000000);
  LOBYTE(v5) = *(v0 + 56);
  sub_1C4F02438();
  MEMORY[0x1C6940010](58, 0xE100000000000000);
  LOBYTE(v5) = *(v0 + 240);
  sub_1C4F02438();
  return 0;
}

unint64_t sub_1C4CF5BF8()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[6];
  v4 = *v0;
  switch(v3 >> 60)
  {
    case 1uLL:
      v43 = 0;
      sub_1C4F02248();
      v5 = 0x6575657571207369;
      v6 = 0xED0000206E692064;
      goto LABEL_21;
    case 2uLL:
      sub_1C4F02248();

      v43 = 0xD00000000000001DLL;
      swift_unownedRetainStrong();
      v25 = sub_1C4CF5A60();
      v27 = v26;

      MEMORY[0x1C6940010](v25, v27);
      goto LABEL_33;
    case 3uLL:
      v43 = 0;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000038, 0x80000001C4FC5E20);
      swift_unownedRetainStrong();
      v28 = sub_1C4CF5A60();
      v30 = v29;

      MEMORY[0x1C6940010](v28, v30);

      v22 = 0x63657078656E7520;
      v31 = 0xEB00000000646574;
      goto LABEL_25;
    case 4uLL:
      sub_1C4F02248();
      swift_unownedRetainStrong();
      v20 = sub_1C4CF5A60();

      v43 = v20;
      v21 = "and cannot update: ";
      v22 = 0xD000000000000020;
      goto LABEL_24;
    case 5uLL:
      sub_1C4F02248();
      swift_unownedRetainStrong();
      v36 = sub_1C4CF5A60();

      v43 = v36;
      v21 = "eue unexpectedly";
      v22 = 0xD000000000000029;
      goto LABEL_24;
    case 6uLL:
      sub_1C4F02248();
      swift_unownedRetainStrong();
      v37 = sub_1C4CF5A60();

      v43 = v37;
      v21 = " is not monitoring changes";
      v22 = 0xD000000000000023;
      goto LABEL_24;
    case 7uLL:
      sub_1C4F02248();
      swift_unownedRetainStrong();
      v32 = sub_1C4CF5A60();

      v43 = v32;
      v21 = "is not queued in ";
      v22 = 0xD00000000000001ALL;
LABEL_24:
      v31 = v21 | 0x8000000000000000;
      goto LABEL_25;
    case 8uLL:
      return 0xD00000000000003DLL;
    case 9uLL:
      return 0xD00000000000003DLL;
    case 0xAuLL:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      v43 = 0x64656C6261736964;
      v38 = sub_1C4F02858();
      MEMORY[0x1C6940010](v38);

      MEMORY[0x1C6940010](8250, 0xE200000000000000);
      if (v2)
      {
        v39 = v1;
      }

      else
      {
        v39 = 0;
      }

      if (v2)
      {
        v40 = v2;
      }

      else
      {
        v40 = 0xE000000000000000;
      }

      MEMORY[0x1C6940010](v39, v40);
      goto LABEL_33;
    case 0xBuLL:
      v43 = 0;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000033, 0x80000001C4FC5D80);
      v7 = *(v4 + 16);
      v8 = MEMORY[0x1E69E7CC0];
      if (v7)
      {
        v42 = MEMORY[0x1E69E7CC0];
        sub_1C44CD9C0();
        v8 = v42;
        v9 = (v4 + 48);
        do
        {
          v11 = *v9;
          v10 = v9[1];
          v12 = *(v9 + 16);
          v13 = v9[5];
          v14 = v9[6];
          v41[8] = 0;
          *v41 = *(v9 - 8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4431E64(v13, v14);
          sub_1C4F02438();
          MEMORY[0x1C6940010](58, 0xE100000000000000);
          MEMORY[0x1C6940010](v11, v10);
          MEMORY[0x1C6940010](58, 0xE100000000000000);
          sub_1C4F02438();

          sub_1C441DFEC(v13, v14);
          v15 = *(v42 + 16);
          if (v15 >= *(v42 + 24) >> 1)
          {
            sub_1C44CD9C0();
          }

          v9 += 9;
          *(v42 + 16) = v15 + 1;
          v16 = v42 + 16 * v15;
          *(v16 + 32) = *&v41[1];
          *(v16 + 40) = 0xE000000000000000;
          --v7;
        }

        while (v7);
      }

      v17 = MEMORY[0x1C6940380](v8, MEMORY[0x1E69E6158]);
      v19 = v18;

      MEMORY[0x1C6940010](v17, v19);
LABEL_33:

      return v43;
    case 0xCuLL:
      if (v3 == 0xC000000000000000 && (v1 | v2 | v4 | v0[8] | v0[7] | v0[5] | v0[4] | v0[3]) == 0)
      {
        return 0xD000000000000022;
      }

      else
      {
        return 0xD000000000000016;
      }

    default:
      v43 = 0;
      sub_1C4F02248();
      v5 = 0xD000000000000011;
      v6 = 0x80000001C4FC5E80;
LABEL_21:
      MEMORY[0x1C6940010](v5, v6);
      sub_1C4F02438();
      MEMORY[0x1C6940010](2108704, 0xE300000000000000);
      swift_unownedRetainStrong();
      v33 = sub_1C4CF5A60();
      v35 = v34;

      MEMORY[0x1C6940010](v33, v35);

      v22 = 0x63657078656E7520;
      v31 = 0xED0000796C646574;
LABEL_25:
      MEMORY[0x1C6940010](v22, v31);
      return v43;
  }
}

uint64_t sub_1C4CF6320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((*(v4 + 48) >> 60) >= 0xB)
  {
    v8 = sub_1C4F01CF8();
  }

  else
  {
    v8 = sub_1C4F01CD8();
  }

  if (sub_1C4F01CF8() == v8)
  {
    v9 = 0x208FB8EFA09AE2;
  }

  else
  {
    v9 = 546086370;
  }

  v13 = v9;
  v10 = sub_1C4D11C18(a1, a2, a3);
  MEMORY[0x1C6940010](v10);

  MEMORY[0x1C6940010](8250, 0xE200000000000000);
  v11 = sub_1C4CF5BF8();
  MEMORY[0x1C6940010](v11);

  return v13;
}

uint64_t sub_1C4CF64E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a7 >> 60 != 11)
  {
    return sub_1C4431E64(a6, a7);
  }

  return result;
}

void *sub_1C4CF64FC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C4CF6E8C(a4, v11);
    sub_1C4CF6E8C(a4, v11);
    v8 = sub_1C43FE990();
    v10 = sub_1C4CF6788(v8, v9, a3, a4, a5);

    sub_1C4CF6448(a4);
    sub_1C4CF6448(a4);
    return v10;
  }

  return result;
}

uint64_t sub_1C4CF65C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32[41] = *MEMORY[0x1E69E9840];
  v5 = ((1 << *(a1 + 32)) + 63) >> 6;
  v6 = sub_1C441E88C();
  if (v8 > 0xD)
  {
    sub_1C4CF6E8C(v6, v7);
    v22 = sub_1C441E88C();
    sub_1C4CF6E8C(v22, v23);

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      v24 = swift_slowAlloc();
      v25 = sub_1C441E88C();
      sub_1C4CF6E8C(v25, v26);
      v27 = sub_1C442C0FC();
      v3 = sub_1C4CF64FC(v27, v28, v29, v30, v31);
      MEMORY[0x1C6942830](v24, -1, -1);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1C4CF6E8C(v6, v7);
    v9 = sub_1C441E88C();
    v11 = sub_1C4CF6E8C(v9, v10);
  }

  MEMORY[0x1EEE9AC00](v11);
  sub_1C4501018(0, v5, v32 - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
  v12 = sub_1C441E88C();
  sub_1C4CF6E8C(v12, v13);
  v14 = sub_1C442C0FC();
  v19 = sub_1C4CF6788(v14, v15, v16, v17, v18);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v3 = v19;
  }

LABEL_6:
  sub_1C4CF6448(a2);
  sub_1C4CF6448(a2);
  sub_1C4CF6448(a2);
  v20 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1C4CF6788(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  v24 = a5;
  v28 = a4;
  v21 = a2;
  v22 = result;
  v5 = 0;
  v25 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(v25 + 56) + 8 * v14);
    v26 = *v28;
    v27 = *(v28 + 2);
    MEMORY[0x1EEE9AC00](result);
    v20[2] = &v26;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = sub_1C479B5CC(v24, v20, v15);

    if (v16)
    {
      *(v22 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C458752C(v22, v21, v23, v25);
        v19 = v18;
        sub_1C4CF6448(v28);
        return v19;
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
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1C4CF693C()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C48348F0(v1);
    v1 = v7;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = v1 + 16 * v3;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    *(v1 + 16) = v3;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C4CF6998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4F01188();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v25 = MEMORY[0x1E69E6158];
  v26 = MEMORY[0x1E69E6160];
  v24[0] = a1;
  v24[1] = a2;
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4CEC2C0();
  v9 = v8;
  v11 = v10;
  swift_endAccess();
  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if (!v11)
  {
    v11 = 0xE000000000000000;
  }

  swift_beginAccess();
  MEMORY[0x1C6940010](v12, v11);
  swift_endAccess();

  sub_1C4409678(v24, v25);
  v13 = *(a3 + 32);
  v14 = sub_1C4EF93B8();
  v16 = v15;
  sub_1C4F01178();
  v17 = sub_1C4F01158();
  v19 = v18;
  sub_1C4434000(v14, v16);
  if (!v19)
  {

    v19 = 0xE400000000000000;
    v17 = 1819047278;
  }

  MEMORY[0x1C6940010](v17, v19);

  swift_beginAccess();
  MEMORY[0x1C6940010](0, 0xE000000000000000);
  swift_endAccess();

  swift_beginAccess();
  sub_1C4588BAC();
  v20 = *(*(a3 + 40) + 16);
  sub_1C45897E8();
  v21 = *(a3 + 40);
  *(v21 + 16) = v20 + 1;
  v22 = v21 + 16 * v20;
  *(v22 + 32) = 44;
  *(v22 + 40) = 0xE100000000000000;
  *(a3 + 40) = v21;
  swift_endAccess();
  return sub_1C440962C(v24);
}

uint64_t sub_1C4CF6C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C4F01188();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v29 = MEMORY[0x1E69E6158];
  v30 = MEMORY[0x1E69E6160];
  v28[0] = a3;
  v28[1] = a4;
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4CEC2C0();
  v13 = v12;
  v15 = v14;
  swift_endAccess();
  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
    v15 = 0xE000000000000000;
  }

  swift_beginAccess();
  MEMORY[0x1C6940010](v16, v15);
  swift_endAccess();

  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](14882, 0xE200000000000000);
  sub_1C4409678(v28, v29);
  v17 = *(a5 + 32);
  v18 = sub_1C4EF93B8();
  v20 = v19;
  sub_1C4F01178();
  v21 = sub_1C4F01158();
  v23 = v22;
  sub_1C4434000(v18, v20);
  if (!v23)
  {

    v23 = 0xE400000000000000;
    v21 = 1819047278;
  }

  MEMORY[0x1C6940010](v21, v23);

  swift_beginAccess();
  MEMORY[0x1C6940010](34, 0xE100000000000000);
  swift_endAccess();

  swift_beginAccess();
  sub_1C4588BAC();
  v24 = *(*(a5 + 40) + 16);
  sub_1C45897E8();
  v25 = *(a5 + 40);
  *(v25 + 16) = v24 + 1;
  v26 = v25 + 16 * v24;
  *(v26 + 32) = 44;
  *(v26 + 40) = 0xE100000000000000;
  *(a5 + 40) = v25;
  swift_endAccess();
  return sub_1C440962C(v28);
}

uint64_t sub_1C4CF6F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C4F01188();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v27 = MEMORY[0x1E69E6530];
  v28 = MEMORY[0x1E69E6538];
  v26[0] = a3;
  swift_beginAccess();
  sub_1C4CEC2C0();
  v11 = v10;
  v13 = v12;
  swift_endAccess();
  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (!v13)
  {
    v13 = 0xE000000000000000;
  }

  swift_beginAccess();
  MEMORY[0x1C6940010](v14, v13);
  swift_endAccess();

  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](14882, 0xE200000000000000);
  sub_1C4409678(v26, v27);
  v15 = *(a4 + 32);
  v16 = sub_1C4EF93B8();
  v18 = v17;
  sub_1C4F01178();
  v19 = sub_1C4F01158();
  v21 = v20;
  sub_1C4434000(v16, v18);
  if (!v21)
  {

    v21 = 0xE400000000000000;
    v19 = 1819047278;
  }

  MEMORY[0x1C6940010](v19, v21);

  swift_beginAccess();
  MEMORY[0x1C6940010](34, 0xE100000000000000);
  swift_endAccess();

  swift_beginAccess();
  sub_1C4588BAC();
  v22 = *(*(a4 + 40) + 16);
  sub_1C45897E8();
  v23 = *(a4 + 40);
  *(v23 + 16) = v22 + 1;
  v24 = v23 + 16 * v22;
  *(v24 + 32) = 44;
  *(v24 + 40) = 0xE100000000000000;
  *(a4 + 40) = v23;
  swift_endAccess();
  return sub_1C440962C(v26);
}

uint64_t sub_1C4CF7188(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_1C4F01188();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v27 = MEMORY[0x1E69E63B0];
  v28 = MEMORY[0x1E69E63C0];
  *v26 = a4;
  swift_beginAccess();
  sub_1C4CEC2C0();
  v11 = v10;
  v13 = v12;
  swift_endAccess();
  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (!v13)
  {
    v13 = 0xE000000000000000;
  }

  swift_beginAccess();
  MEMORY[0x1C6940010](v14, v13);
  swift_endAccess();

  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](14882, 0xE200000000000000);
  sub_1C4409678(v26, v27);
  v15 = *(a3 + 32);
  v16 = sub_1C4EF93B8();
  v18 = v17;
  sub_1C4F01178();
  v19 = sub_1C4F01158();
  v21 = v20;
  sub_1C4434000(v16, v18);
  if (!v21)
  {

    v21 = 0xE400000000000000;
    v19 = 1819047278;
  }

  MEMORY[0x1C6940010](v19, v21);

  swift_beginAccess();
  MEMORY[0x1C6940010](34, 0xE100000000000000);
  swift_endAccess();

  swift_beginAccess();
  sub_1C4588BAC();
  v22 = *(*(a3 + 40) + 16);
  sub_1C45897E8();
  v23 = *(a3 + 40);
  *(v23 + 16) = v22 + 1;
  v24 = v23 + 16 * v22;
  *(v24 + 32) = 44;
  *(v24 + 40) = 0xE100000000000000;
  *(a3 + 40) = v23;
  swift_endAccess();
  return sub_1C440962C(v26);
}

uint64_t sub_1C4CF7400(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_1C4F01188();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v27 = MEMORY[0x1E69E6370];
  v28 = MEMORY[0x1E69E6378];
  LOBYTE(v26[0]) = a3;
  swift_beginAccess();
  sub_1C4CEC2C0();
  v11 = v10;
  v13 = v12;
  swift_endAccess();
  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (!v13)
  {
    v13 = 0xE000000000000000;
  }

  swift_beginAccess();
  MEMORY[0x1C6940010](v14, v13);
  swift_endAccess();

  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](14882, 0xE200000000000000);
  sub_1C4409678(v26, v27);
  v15 = *(a4 + 32);
  v16 = sub_1C4EF93B8();
  v18 = v17;
  sub_1C4F01178();
  v19 = sub_1C4F01158();
  v21 = v20;
  sub_1C4434000(v16, v18);
  if (!v21)
  {

    v21 = 0xE400000000000000;
    v19 = 1819047278;
  }

  MEMORY[0x1C6940010](v19, v21);

  swift_beginAccess();
  MEMORY[0x1C6940010](34, 0xE100000000000000);
  swift_endAccess();

  swift_beginAccess();
  sub_1C4588BAC();
  v22 = *(*(a4 + 40) + 16);
  sub_1C45897E8();
  v23 = *(a4 + 40);
  *(v23 + 16) = v22 + 1;
  v24 = v23 + 16 * v22;
  *(v24 + 32) = 44;
  *(v24 + 40) = 0xE100000000000000;
  *(a4 + 40) = v23;
  swift_endAccess();
  return sub_1C440962C(v26);
}

uint64_t sub_1C4CF7670(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v8 = sub_1C4F01188();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &unk_1F4400ED0;
  v32 = sub_1C4BBBAA4();
  v30[0] = swift_allocObject();
  memcpy((v30[0] + 16), a3, 0x48uLL);
  swift_beginAccess();
  sub_1C4443048(a3, &v28);
  sub_1C4CEC2C0();
  v11 = v10;
  v13 = v12;
  swift_endAccess();
  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (!v13)
  {
    v13 = 0xE000000000000000;
  }

  swift_beginAccess();
  MEMORY[0x1C6940010](v14, v13);
  swift_endAccess();

  v28 = 34;
  v29 = 0xE100000000000000;
  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](14882, 0xE200000000000000);
  sub_1C4409678(v30, v31);
  v15 = *(a4 + 32);
  v16 = sub_1C4EF93B8();
  v18 = v17;
  sub_1C4F01178();
  v19 = sub_1C4F01158();
  v21 = v20;
  sub_1C4434000(v16, v18);
  if (!v21)
  {

    v21 = 0xE400000000000000;
    v19 = 1819047278;
  }

  MEMORY[0x1C6940010](v19, v21);

  v22 = v28;
  v23 = v29;
  swift_beginAccess();
  MEMORY[0x1C6940010](v22, v23);
  swift_endAccess();

  swift_beginAccess();
  sub_1C4588BAC();
  v24 = *(*(a4 + 40) + 16);
  sub_1C45897E8();
  v25 = *(a4 + 40);
  *(v25 + 16) = v24 + 1;
  v26 = v25 + 16 * v24;
  *(v26 + 32) = 44;
  *(v26 + 40) = 0xE100000000000000;
  *(a4 + 40) = v25;
  swift_endAccess();
  return sub_1C440962C(v30);
}

uint64_t sub_1C4CF7910(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v8 = sub_1C4F01188();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &_s11SourceStateVN;
  v32 = sub_1C4BB966C();
  v30[0] = swift_allocObject();
  memcpy((v30[0] + 16), a3, 0x48uLL);
  swift_beginAccess();
  sub_1C444AAD0(a3, &v28);
  sub_1C4CEC2C0();
  v11 = v10;
  v13 = v12;
  swift_endAccess();
  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (!v13)
  {
    v13 = 0xE000000000000000;
  }

  swift_beginAccess();
  MEMORY[0x1C6940010](v14, v13);
  swift_endAccess();

  v28 = 34;
  v29 = 0xE100000000000000;
  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](14882, 0xE200000000000000);
  sub_1C4409678(v30, v31);
  v15 = *(a4 + 32);
  v16 = sub_1C4EF93B8();
  v18 = v17;
  sub_1C4F01178();
  v19 = sub_1C4F01158();
  v21 = v20;
  sub_1C4434000(v16, v18);
  if (!v21)
  {

    v21 = 0xE400000000000000;
    v19 = 1819047278;
  }

  MEMORY[0x1C6940010](v19, v21);

  v22 = v28;
  v23 = v29;
  swift_beginAccess();
  MEMORY[0x1C6940010](v22, v23);
  swift_endAccess();

  swift_beginAccess();
  sub_1C4588BAC();
  v24 = *(*(a4 + 40) + 16);
  sub_1C45897E8();
  v25 = *(a4 + 40);
  *(v25 + 16) = v24 + 1;
  v26 = v25 + 16 * v24;
  *(v26 + 32) = 44;
  *(v26 + 40) = 0xE100000000000000;
  *(a4 + 40) = v25;
  swift_endAccess();
  return sub_1C440962C(v30);
}

uint64_t sub_1C4CF7BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C4F01188();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v33 = &unk_1F44009B8;
  v34 = sub_1C4BB7BA4();
  v10 = swift_allocObject();
  v32[0] = v10;
  v11 = *(a3 + 16);
  *(v10 + 16) = *a3;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a3 + 32);
  *(v10 + 64) = *(a3 + 48);
  swift_beginAccess();
  sub_1C444C58C(a3, &v30);
  sub_1C4CEC2C0();
  v13 = v12;
  v15 = v14;
  swift_endAccess();
  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
    v15 = 0xE000000000000000;
  }

  swift_beginAccess();
  MEMORY[0x1C6940010](v16, v15);
  swift_endAccess();

  v30 = 34;
  v31 = 0xE100000000000000;
  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](14882, 0xE200000000000000);
  sub_1C4409678(v32, v33);
  v17 = *(a4 + 32);
  v18 = sub_1C4EF93B8();
  v20 = v19;
  sub_1C4F01178();
  v21 = sub_1C4F01158();
  v23 = v22;
  sub_1C4434000(v18, v20);
  if (!v23)
  {

    v23 = 0xE400000000000000;
    v21 = 1819047278;
  }

  MEMORY[0x1C6940010](v21, v23);

  v24 = v30;
  v25 = v31;
  swift_beginAccess();
  MEMORY[0x1C6940010](v24, v25);
  swift_endAccess();

  swift_beginAccess();
  sub_1C4588BAC();
  v26 = *(*(a4 + 40) + 16);
  sub_1C45897E8();
  v27 = *(a4 + 40);
  *(v27 + 16) = v26 + 1;
  v28 = v27 + 16 * v26;
  *(v28 + 32) = 44;
  *(v28 + 40) = 0xE100000000000000;
  *(a4 + 40) = v27;
  swift_endAccess();
  return sub_1C440962C(v32);
}

uint64_t sub_1C4CF7E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C4F01188();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v33 = &unk_1F4400910;
  v34 = sub_1C4BB7AFC();
  v10 = swift_allocObject();
  v32[0] = v10;
  v11 = *(a3 + 16);
  *(v10 + 16) = *a3;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a3 + 32);
  *(v10 + 64) = *(a3 + 48);
  swift_beginAccess();
  sub_1C444808C(a3, &v30);
  sub_1C4CEC2C0();
  v13 = v12;
  v15 = v14;
  swift_endAccess();
  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
    v15 = 0xE000000000000000;
  }

  swift_beginAccess();
  MEMORY[0x1C6940010](v16, v15);
  swift_endAccess();

  v30 = 34;
  v31 = 0xE100000000000000;
  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](14882, 0xE200000000000000);
  sub_1C4409678(v32, v33);
  v17 = *(a4 + 32);
  v18 = sub_1C4EF93B8();
  v20 = v19;
  sub_1C4F01178();
  v21 = sub_1C4F01158();
  v23 = v22;
  sub_1C4434000(v18, v20);
  if (!v23)
  {

    v23 = 0xE400000000000000;
    v21 = 1819047278;
  }

  MEMORY[0x1C6940010](v21, v23);

  v24 = v30;
  v25 = v31;
  swift_beginAccess();
  MEMORY[0x1C6940010](v24, v25);
  swift_endAccess();

  swift_beginAccess();
  sub_1C4588BAC();
  v26 = *(*(a4 + 40) + 16);
  sub_1C45897E8();
  v27 = *(a4 + 40);
  *(v27 + 16) = v26 + 1;
  v28 = v27 + 16 * v26;
  *(v28 + 32) = 44;
  *(v28 + 40) = 0xE100000000000000;
  *(a4 + 40) = v27;
  swift_endAccess();
  return sub_1C440962C(v32);
}

uint64_t sub_1C4CF8134(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1C4CF814C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C4CF8170(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4CF81B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4CF8254(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8) >> 3;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C4CF829C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 8 * -a2;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0;
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4CF8310(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 48) & 0x101 | (a2 << 62);
    *(result + 8) &= 7uLL;
    *(result + 48) = v2;
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = 0x8000000000000000;
    *(result + 56) = 0;
    *(result + 64) = 0;
  }

  return result;
}

void sub_1C4CF837C(uint64_t a1, unint64_t a2)
{
  sub_1C4417AD0(a1, a2);
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v3 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    v6 = sub_1C43FE198();
    v8 = sub_1C441D828(v6, v7, &v16);

    *(v4 + 4) = v8;
    sub_1C4411448(&dword_1C43F8000, v9, v10, "ViewUpdate: %s: Finished update", v11, v12, v13, v14, oslog);
    sub_1C440962C(v5);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }
}

uint64_t sub_1C4CF84B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  sub_1C444C58C(a2, v16);
  sub_1C4BACEC4();
  if (v3)
  {
    return sub_1C444053C(a2);
  }

  sub_1C4449828();
  if (v19[49])
  {
    sub_1C44F92C4();
  }

  else
  {
    sub_1C4463B90();
  }

  v11 = v20;
  v12 = v21;
  sub_1C4BAA378();
  v13 = v17;
  v14 = v18;
  sub_1C4409678(v16, v17);
  v15 = (*(v14 + 64))(v13, v14);
  LOBYTE(v13) = v19[40] | (v12 >> 60 != 15);
  sub_1C4431E64(v11, v12);
  sub_1C444AF3C(v19);
  result = sub_1C440962C(v16);
  *a3 = v15;
  *(a3 + 1) = v13 & 1;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;
  *(a3 + 40) = xmmword_1C4F29230;
  return result;
}

double sub_1C4CF865C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = v3[1];
  sub_1C4CF84B0(a1, a2, v10);
  if (!v4)
  {
    v9 = v10[1];
    *a3 = v10[0];
    *(a3 + 16) = v9;
    result = *&v11;
    *(a3 + 32) = v11;
    *(a3 + 48) = v12;
  }

  return result;
}

uint64_t sub_1C4CF86B0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t sub_1C4CF86DC()
{
  sub_1C4F02248();
  v1 = sub_1C4432E24();
  MEMORY[0x1C6940010](v1);
  if (v0[32])
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v0[32])
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v2, v3);

  MEMORY[0x1C6940010](0x3A6574617473202CLL, 0xE900000000000020);
  v6 = v0[33];
  sub_1C43FF824();
  MEMORY[0x1C6940010](0x6E6F70736572202CLL, 0xEC000000203A6573);
  v7 = v0[34];
  sub_1C43FF824();
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC3970);
  v4 = sub_1C43FE198();
  MEMORY[0x1C6940010](v4);

  MEMORY[0x1C6940010](93, 0xE100000000000000);
  return 0;
}

uint64_t *sub_1C4CF8844(void *a1, void *a2)
{
  v4 = v2;
  v7 = *v2;
  *(v2 + 19) = xmmword_1C4F29230;
  *(v2 + 224) = 0;
  v8 = [a1 state];
  sub_1C4F01138();

  v9 = sub_1C443BE78();
  if (v9 == 5)
  {
    sub_1C4F02248();

    *&v83[0] = 0xD00000000000001ELL;
    *(&v83[0] + 1) = 0x80000001C4FC3990;
    MEMORY[0x1C6940010](*a2, a2[1]);
    MEMORY[0x1C6940010](8250, 0xE200000000000000);
    v10 = [a1 state];
    v11 = sub_1C4F01138();
    v13 = v12;

    MEMORY[0x1C6940010](v11, v13);

    sub_1C446D0DC();
    v14 = sub_1C43FFB2C();
    *v15 = v83[0];
    sub_1C4413C68(v14, v15);

    sub_1C445F57C(a2);
    sub_1C441DFEC(v4[19], v4[20]);
LABEL_10:
    swift_deallocPartialClassInstance();
    return v4;
  }

  v16 = v9;
  v17 = [a1 configIdentifier];
  v18 = [v17 index];

  v19 = a2[33];
  if (!v19 || *(v19 + 16) <= v18)
  {
    *&v83[0] = 0;
    *(&v83[0] + 1) = 0xE000000000000000;
    sub_1C4F02248();
    v32 = sub_1C4432E24();
    MEMORY[0x1C6940010](v32);
    MEMORY[0x1C6940010](2003134838, 0xE400000000000000);
    MEMORY[0x1C6940010](0x65646E6920666F20, 0xEA00000000002078);
    *&v81[0] = v18;
    v33 = sub_1C4F02858();
    MEMORY[0x1C6940010](v33);

    MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC39D0);
    MEMORY[0x1C6940010](*a2, a2[1]);
    sub_1C446D0DC();
    v34 = sub_1C43FFB2C();
    *v35 = v83[0];
    sub_1C4413C68(v34, v35);

    sub_1C445F57C(a2);
    goto LABEL_9;
  }

  result = a2[1];
  v4[2] = *a2;
  v4[3] = result;
  if ((v18 & 0x80000000) == 0)
  {
    v21 = v19 + 56 * v18;
    v22 = *(v21 + 32);
    v23 = *(v21 + 48);
    v24 = *(v21 + 64);
    v84 = *(v21 + 80);
    v83[1] = v23;
    v83[2] = v24;
    v83[0] = v22;
    v25 = *(v21 + 32);
    v26 = *(v21 + 48);
    v27 = *(v21 + 64);
    *(v4 + 30) = *(v21 + 80);
    *(v4 + 13) = v27;
    *(v4 + 11) = v26;
    *(v4 + 9) = v25;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C47F5DBC(v83, v81);
    v28 = sub_1C443ED0C([a1 configIdentifier]);
    if (v3)
    {

      sub_1C445F57C(a2);
      v49 = v4[3];

      sub_1C441296C(v50, v51, v52, v53, v54, v55, v56, v57, v70, v71, v72, v73, v75, v76, v77, v78, v79, v80, v81[0], v81[1], v81[2], v82);
LABEL_9:
      sub_1C441DFEC(v4[19], v4[20]);
      goto LABEL_10;
    }

    v4[5] = v28;
    v4[6] = v29;
    *(v4 + 56) = v30;
    v4[8] = v31;
    v4[16] = 0;
    v4[17] = sub_1C443D554(a1);
    v4[18] = v36;
    v37 = sub_1C443D554(a1);
    v38 = v4[19];
    v39 = v4[20];
    v4[19] = v37;
    v4[20] = v40;
    sub_1C441DFEC(v38, v39);
    v41 = sub_1C445CA14(a1);
    v4[21] = v41;
    v4[22] = v42;
    *(v4 + 34) = 0;
    v43 = *(v4 + 96);
    v85 = v42;
    if (v43 == 2 || (v43 & 1) == 0)
    {
      sub_1C4463B90();
    }

    else
    {
      sub_1C44F92C4();
    }

    v45 = v4[17];
    v44 = v4[18];
    v46 = v4[19];
    v74 = v4[20];
    v47 = sub_1C440DE0C();
    sub_1C4431E64(v47, v48);
    sub_1C4431E64(v41, v85);
    sub_1C4431E64(v46, v74);
    sub_1C440DE0C();
    sub_1C4BAA378();
    sub_1C441DFEC(v46, v74);
    sub_1C441DFEC(v41, v85);
    sub_1C441DFEC(v45, v44);
    sub_1C441D670(v81, (v4 + 23));
    *(v4 + 33) = v16;
    *(v4 + 32) = [a1 triggered];
    if (a2[37])
    {
      v58 = v4[26];
      v59 = v4[27];
      sub_1C4409678(v4 + 23, v58);
      v60 = (*(v59 + 64))(v58, v59);
      *(v4 + 33) = v60;
      sub_1C4441C50(v60);
      if (v62 == 0x676E616843736168 && v61 == 0xEA00000000007365)
      {
      }

      else
      {
        v64 = sub_1C4F02938();

        if ((v64 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v65 = *(v4 + 123);
      if (v65 != 2 && (v65 & 1) != 0)
      {
        *(v4 + 33) = 1;
      }
    }

LABEL_27:
    sub_1C4441C50(*(v4 + 33));
    if (v67 == 0x65676E6168436F6ELL && v66 == 0xE900000000000073)
    {

      sub_1C445F57C(a2);
    }

    else
    {
      v69 = sub_1C4F02938();

      sub_1C445F57C(a2);
      if ((v69 & 1) == 0)
      {
        return v4;
      }
    }

    *(v4 + 34) = 1;
    return v4;
  }

  __break(1u);
  return result;
}

void sub_1C4CF8EC4()
{
  sub_1C4417AD0(*(v0 + 168), *(v0 + 176));
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v2 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136315138;
    v5 = sub_1C43FE198();
    v7 = sub_1C441D828(v5, v6, &v15);

    *(v3 + 4) = v7;
    sub_1C4411448(&dword_1C43F8000, v8, v9, "ViewUpdate: %s: Finished update", v10, v11, v12, v13, oslog);
    sub_1C440962C(v4);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }
}

void sub_1C4CF8FFC(const char *a1)
{
  v3 = v1;
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  *(v1 + 152) = xmmword_1C4F29230;
  sub_1C441DFEC(v4, v5);
  if (*(v1 + 176) >> 60 == 15)
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  *(v1 + 33) = v6;
  *(v1 + 34) = 2;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v8 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = *(v3 + 64);
    v12 = *(v3 + 56);
    v13 = sub_1C444F05C(*(v3 + 40), *(v3 + 48));
    v15 = sub_1C441D828(v13, v14, &v17);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1C43F8000, oslog, v8, a1, v9, 0xCu);
    sub_1C440962C(v10);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }
}

uint64_t sub_1C4CF917C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = sub_1C43FBC98();
  sub_1C4431E64(v3, v4);
  return sub_1C43FBC98();
}

void *sub_1C4CF91A8()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[11];
  v4 = v0[14];

  sub_1C441DFEC(v0[17], v0[18]);
  sub_1C441DFEC(v0[19], v0[20]);
  sub_1C441DFEC(v0[21], v0[22]);
  sub_1C440962C(v0 + 23);
  return v0;
}

uint64_t sub_1C4CF920C()
{
  sub_1C4CF91A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4CF9358()
{
  if (*(v0 + 112))
  {
    v0 = *(v0 + 104);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C446D0DC();
    v1 = sub_1C43FFB2C();
    *v2 = xmmword_1C4F67D80;
    sub_1C4413C68(v1, v2);
  }

  return v0;
}

unint64_t sub_1C4CF93C4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFA598();
  v3 = sub_1C4EFA538();
  if (!v3)
  {
    v5 = 0xD000000000000017;
    sub_1C4868210(v2, v1);
    if (v6)
    {
      sub_1C4F00FF8();

      v7 = sub_1C4C8190C(1uLL, v2, v1);
      v8 = MEMORY[0x1C693FEF0](v7);
      v10 = v9;

      MEMORY[0x1C6940010](v8, v10);

      sub_1C4EFA598();
      v4 = sub_1C4EFA538();

      if (v4)
      {
        return v4;
      }

      v11 = "Do not have a view name";
      v5 = 0xD000000000000029;
    }

    else
    {

      v11 = "View listener [triggered: ";
    }

    v4 = v11 | 0x8000000000000000;
    sub_1C446D0DC();
    v12 = sub_1C43FFB2C();
    *v13 = v5;
    v13[1] = v4;
    sub_1C4413C68(v12, v13);
    return v4;
  }

  v4 = v3;

  return v4;
}

unint64_t sub_1C4CF9544()
{
  v52 = sub_1C4F00728();
  v1 = sub_1C43FCDF8(v52);
  v50 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v53 = v6 - v5;
  v7 = sub_1C4F007C8();
  v8 = sub_1C43FCDF8(v7);
  v51 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v49 = v13 - v12;
  v14 = sub_1C4F00798();
  v15 = sub_1C43FCDF8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = sub_1C4F00778();
  v24 = sub_1C43FCDF8(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v31 = v30 - v29;
  result = sub_1C4CF93C4();
  if (!v0)
  {
    v34 = *(v33 + 8);
    sub_1C4EFA5A8();
    sub_1C4F00768();
    sub_1C4F00788();
    sub_1C4F007A8();
    (*(v50 + 104))(v53, *MEMORY[0x1E69AA7A0], v52);
    sub_1C440B7B4();
    sub_1C4CFA0D4(v35, 255, v36);
    v47 = sub_1C4F00718();
    v48 = v37;
    sub_1C4401350();
    sub_1C4CFA0D4(v38, 255, v39);
    v45 = sub_1C4F006F8();
    v46 = v40;
    sub_1C4408190();
    sub_1C4CFA0D4(v41, 255, v42);
    v43 = sub_1C4F00718();
    MEMORY[0x1C693F420](v53, v47, v48, v45, v46, v43, v44);
    (*(v51 + 8))(v49, v7);
    (*(v17 + 8))(v22, v14);
    return (*(v26 + 8))(v31, v23);
  }

  return result;
}

uint64_t sub_1C4CF9978()
{
  v1 = sub_1C4F00728();
  v2 = sub_1C43FCDF8(v1);
  v67 = v3;
  v68 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = sub_1C4F007C8();
  v10 = sub_1C43FCDF8(v9);
  v66 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v17 = sub_1C4F00798();
  v18 = sub_1C43FCDF8(v17);
  v65 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v24 = v23 - v22;
  v25 = sub_1C4F00778();
  v26 = sub_1C43FCDF8(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v33 = v32 - v31;
  result = sub_1C4CF93C4();
  if (!v69)
  {
    v63 = v8;
    v64 = v33;
    v60 = v24;
    v61 = v28;
    v62 = v9;
    v36 = *(v0 + 160);
    if (v36 >> 60 == 15)
    {
      return sub_1C4CF9544();
    }

    else
    {
      v37 = v35;
      v38 = *(v0 + 152);
      v39 = sub_1C43FD024();
      sub_1C4431E64(v39, v40);
      v41 = sub_1C43FD024();
      sub_1C44344B8(v41, v42);
      v43 = sub_1C43FD024();
      sub_1C44F9344(v43, v44);
      v45 = *(v37 + 8);
      sub_1C4EFA5A8();
      sub_1C4F00768();
      sub_1C4F00788();
      sub_1C4F007A8();
      (*(v67 + 104))(v63, *MEMORY[0x1E69AA7A0], v68);
      sub_1C440B7B4();
      sub_1C4CFA0D4(v46, 255, v47);
      v58 = sub_1C4F00718();
      v59 = v48;
      sub_1C4401350();
      sub_1C4CFA0D4(v49, 255, v50);
      v51 = sub_1C4F006F8();
      v53 = v52;
      sub_1C4408190();
      sub_1C4CFA0D4(v54, 255, v55);
      v56 = sub_1C4F00718();
      MEMORY[0x1C693F420](v63, v58, v59, v51, v53, v56, v57);
      sub_1C441DFEC(v38, v36);
      (*(v66 + 8))(v16, v62);
      (*(v65 + 8))(v60, v17);
      return (*(v61 + 8))(v64, v25);
    }
  }

  return result;
}

uint64_t sub_1C4CF9E40()
{
  v2 = sub_1C4F007C8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  sub_1C4F00748();
  sub_1C4408190();
  sub_1C4CFA0D4(v11, 255, v12);
  result = sub_1C4F00708();
  if (!v1)
  {
    v14 = 0.0;
    v15 = *(v0 + 176) >> 60;
    if (v15 != 15)
    {
      v16 = *(v0 + 168);
      v17 = sub_1C440DE0C();
      sub_1C44344B8(v17, v18);
      v19 = sub_1C440DE0C();
      sub_1C44F9344(v19, v20);
      v14 = v21;
    }

    sub_1C4F007B8();
    v23 = v22;
    if (v15 >= 0xF)
    {
      sub_1C4F007B8();
      v14 = v24;
    }

    v25 = sub_1C44F95AC(v23, v14);
    v27 = v26;
    sub_1C4CF837C(v25, v26);
    sub_1C4434000(v25, v27);
    return (*(v5 + 8))(v10, v2);
  }

  return result;
}

uint64_t sub_1C4CFA07C(uint64_t a1, uint64_t a2)
{
  result = sub_1C4CFA0D4(qword_1EDDFC788, a2, _s10ViewSourceCMa);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4CFA0D4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4CFA12C()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C1F0);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4CFA1BC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA1DC, 0, 0);
}

uint64_t sub_1C4CFA28C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA2AC, 0, 0);
}

uint64_t sub_1C4CFA35C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA37C, 0, 0);
}

uint64_t sub_1C4CFA42C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA44C, 0, 0);
}

uint64_t sub_1C4CFA504(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA524, 0, 0);
}

uint64_t sub_1C4CFA5D4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA5F4, 0, 0);
}

uint64_t sub_1C4CFA6A4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA6C4, 0, 0);
}

uint64_t sub_1C4CFA774(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA794, 0, 0);
}

uint64_t sub_1C4CFA844(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA864, 0, 0);
}

uint64_t sub_1C4CFA914(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA934, 0, 0);
}

uint64_t sub_1C4CFA9E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFAA04, 0, 0);
}

uint64_t sub_1C4CFAAB4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFAAD4, 0, 0);
}

uint64_t sub_1C4CFAB84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFABA4, 0, 0);
}

uint64_t sub_1C4CFAC54(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFAC74, 0, 0);
}

uint64_t sub_1C4CFADA8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4CFAE8C()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 16);
  sub_1C4D0E478();
  sub_1C43FC1B0();

  return v2();
}

uint64_t sub_1C4CFAEE4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4CFAFC8()
{
  sub_1C43FCF70();
  v2 = *(v1 + 16);
  sub_1C4D0E478();
  sub_1C445C2A4();
  sub_1C4BFE7BC();
  if (v0)
  {
    sub_1C43FC560();
  }

  else
  {
    v4 = *(v1 + 16);
    sub_1C4D0E5C0();
    sub_1C43FC1B0();
  }

  return v3();
}

uint64_t sub_1C4CFB044(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFB064, 0, 0);
}

uint64_t sub_1C4CFB114(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFB134, 0, 0);
}

uint64_t sub_1C4CFB1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1C43FCE74();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4CFB494()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 48);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4CFB578()
{
  sub_1C43FCF70();
  v1 = v0[2];
  sub_1C4D0E478();
  v2 = *(v0[4] + 16);
  sub_1C4411260();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v7 = sub_1C441B5E0(v6);

  return v9(v7);
}

uint64_t sub_1C4CFB670()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 56);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  if (v0)
  {
    sub_1C43FBDA0();

    return v6();
  }

  else
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1C4CFB788()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 64);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4CFB86C()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C1E8);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4CFB8FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA1BC(a1);
}

uint64_t sub_1C4CFB9A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA9E4(a1);
}

uint64_t sub_1C4CFBA54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFAAB4(a1);
}

uint64_t sub_1C4CFBB00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFB114(a1);
}

uint64_t sub_1C4CFBBAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA774(a1);
}

uint64_t sub_1C4CFBC58(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D029C0)(a1);
}

uint64_t sub_1C4CFBD04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFB044(a1);
}

uint64_t sub_1C4CFBDB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA914(a1);
}

uint64_t sub_1C4CFBE5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA5D4(a1);
}

uint64_t sub_1C4CFBF08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA504(a1);
}

uint64_t sub_1C4CFBFB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA844(a1);
}

uint64_t sub_1C4CFC060(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D043F4)(a1);
}

uint64_t sub_1C4CFC10C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D002E4)(a1);
}

uint64_t sub_1C4CFC1B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFAB84(a1);
}

uint64_t sub_1C4CFC264()
{
  v11 = v0;
  v1 = sub_1C444E0CC();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_1C442E860(v3, v8);
      v4 = v9;
      v5 = v10;
      sub_1C4409678(v8, v9);
      (*(v5 + 128))(v4, v5);
      sub_1C440962C(v8);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1C4CFC348(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA6A4(a1);
}

uint64_t sub_1C4CFC3F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA35C(a1);
}

uint64_t sub_1C4CFC4A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D054C8)(a1);
}

uint64_t sub_1C4CFC54C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA28C(a1);
}

uint64_t sub_1C4CFC5F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D0244C)(a1);
}

uint64_t sub_1C4CFC6A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4BE34F8(a1);
}

uint64_t sub_1C4CFC738(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D00858)(a1);
}

uint64_t sub_1C4CFC7E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4BE6FE8();
}

uint64_t sub_1C4CFC878(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D05A30)(a1);
}

uint64_t sub_1C4CFC924(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D04968)(a1);
}

uint64_t sub_1C4CFC9D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFAC54(a1);
}

uint64_t sub_1C4CFCA7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D0466C)(a1);
}

uint64_t sub_1C4CFCB28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D04150)(a1);
}

uint64_t sub_1C4CFCBD4(uint64_t a1)
{
  sub_1C4D06A30(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4CFCC4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D04C0C)(a1);
}

uint64_t sub_1C4CFCCF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4CFF7A4)(a1);
}

uint64_t sub_1C4CFCDA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D01398)(a1);
}

uint64_t sub_1C4CFCE50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D08CA0)(a1);
}

uint64_t sub_1C4CFCEFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4CFE66C)(a1);
}

uint64_t sub_1C4CFCFA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D04CA4)(a1);
}

uint64_t sub_1C4CFD054(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D01ED8)(a1);
}

uint64_t sub_1C4CFD100(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D042AC)(a1);
}

uint64_t sub_1C4CFD1AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4CFF230)(a1);
}

uint64_t sub_1C4CFD258(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D04D64)(a1);
}

uint64_t sub_1C4CFD304(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D048C4)(a1);
}

uint64_t sub_1C4CFD3B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D04350)(a1);
}

uint64_t sub_1C4CFD45C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D04B68)(a1);
}

uint64_t sub_1C4CFD508(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA42C(a1);
}

uint64_t sub_1C4CFD5B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4C52F30(a1);
}

uint64_t sub_1C4CFD648(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D04208)(a1);
}

uint64_t sub_1C4CFD6F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4C5C010();
}

uint64_t sub_1C4CFD788(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return (sub_1C4D0B4D4)(a1);
}

uint64_t sub_1C4CFD834()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4C7F63C();
}

uint64_t sub_1C4CFD8C8()
{
  sub_1C4475B28();
  sub_1C43FEAEC();
  sub_1C440C834();
  sub_1C4D0DD68(v0, v1, v2);
  v18 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = sub_1C43FC218(v6);
  *v7 = v8;
  sub_1C4401368(v7);
  sub_1C4D0E0CC();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1C4CFD9B8()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C210);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4CFDA48()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C208);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4CFDAD8()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C230);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4CFDB68()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C228);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4CFDC10()
{
  v1 = *v0;
  memcpy(__dst, v0, sizeof(__dst));
  v2 = *(v1 + 16);

  v3 = sub_1C440CABC();
  sub_1C446C37C(v3, v4);
}

uint64_t sub_1C4CFDC84()
{
  v1 = v0[2];
  memcpy(__dst, v0, sizeof(__dst));
  v2 = *(v1 + 16);

  v3 = sub_1C440CABC();
  sub_1C446C37C(v3, v4);
}

uint64_t sub_1C4CFDD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v6 = *(a3 + 16);
  v8[2] = v9;

  sub_1C446C37C(a5, v8);
}

uint64_t sub_1C4CFDD68()
{
  v1 = *(*(v0 + 24) + 16);

  v2 = sub_1C440CABC();
  sub_1C446C37C(v2, v3);
}

uint64_t sub_1C4CFDDC4()
{
  v7 = *(v0 + 4);
  v5 = *v0;
  v6 = v0[1];
  v1 = *(*(v0 + 3) + 16);

  v2 = sub_1C440CABC();
  sub_1C446C37C(v2, v3);
}

uint64_t sub_1C4CFDE2C()
{
  v1 = *(*(v0 + 32) + 16);

  v2 = sub_1C440CABC();
  sub_1C446C37C(v2, v3);
}

uint64_t sub_1C4CFDE88()
{
  sub_1C43FCF70();
  sub_1C440C834();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C4401368(v1);

  return sub_1C4CFD8C8();
}

uint64_t sub_1C4CFDF14()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C260);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4CFDFA4()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C258);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4CFE034()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C280);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4CFE0C4()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C278);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4CFE154(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 32) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFE178, 0, 0);
}

uint64_t sub_1C4CFE178()
{
  sub_1C4404D98();
  if (*(v1 + 32))
  {
    sub_1C4D0DD2C();
    sub_1C4C20AB8();
    if (!v0)
    {
      v2 = sub_1C441E670();

      return v3(v2);
    }
  }

  else
  {
    sub_1C43FC174();
    sub_1C450B034();
    v5 = sub_1C43FFB2C();
    sub_1C44303A8(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
  }

  sub_1C43FBDA0();

  return v13();
}

uint64_t sub_1C4CFE23C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 32) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFE260, 0, 0);
}

uint64_t sub_1C4CFE260()
{
  sub_1C4404D98();
  if (*(v1 + 32))
  {
    v2 = sub_1C4D0DD2C();
    sub_1C4C16A84(v2);
    if (!v0)
    {
      v3 = sub_1C441E670();

      return v4(v3);
    }
  }

  else
  {
    sub_1C43FC174();
    sub_1C450B034();
    v6 = sub_1C43FFB2C();
    sub_1C44303A8(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
  }

  sub_1C43FBDA0();

  return v14();
}

uint64_t sub_1C4CFE324(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 32) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFE348, 0, 0);
}

uint64_t sub_1C4CFE348()
{
  sub_1C4404D98();
  if (*(v1 + 32))
  {
    v2 = sub_1C4D0DD2C();
    sub_1C4BE4034(v2);
    if (!v0)
    {
      v3 = sub_1C441E670();

      return v4(v3);
    }
  }

  else
  {
    sub_1C43FC174();
    sub_1C450B034();
    v6 = sub_1C43FFB2C();
    sub_1C44303A8(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
  }

  sub_1C43FBDA0();

  return v14();
}

uint64_t sub_1C4CFE40C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 32) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFE430, 0, 0);
}

uint64_t sub_1C4CFE430()
{
  sub_1C4404D98();
  if (*(v1 + 32))
  {
    v2 = sub_1C4D0DD2C();
    sub_1C4C1846C(v2);
    if (!v0)
    {
      v3 = sub_1C441E670();

      return v4(v3);
    }
  }

  else
  {
    sub_1C43FC174();
    sub_1C450B034();
    v6 = sub_1C43FFB2C();
    sub_1C44303A8(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
  }

  sub_1C43FBDA0();

  return v14();
}

uint64_t sub_1C4CFE4F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 32) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFE518, 0, 0);
}

uint64_t sub_1C4CFE518()
{
  sub_1C4404D98();
  if (*(v1 + 32))
  {
    v2 = sub_1C4D0DD2C();
    sub_1C4A32994(v2);
    if (!v0)
    {
      v3 = sub_1C441E670();

      return v4(v3);
    }
  }

  else
  {
    sub_1C43FC174();
    sub_1C450B034();
    v6 = sub_1C43FFB2C();
    sub_1C44303A8(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
  }

  sub_1C43FBDA0();

  return v14();
}

uint64_t sub_1C4CFE5DC()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C2A0);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4CFE66C(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFE68C, 0, 0);
}

uint64_t sub_1C4CFEC2C()
{
  sub_1C44249B4();
  sub_1C4404D98();
  sub_1C443F420();
  sub_1C43FBDAC();
  *v3 = v2;
  v4 = *(v2 + 392);
  *v3 = *v1;
  *(v2 + 400) = v0;

  sub_1C4480614();
  v6 = *(v5 + 384);

  if (!v0)
  {
    sub_1C449541C();
  }

  sub_1C43FEAF8();
  sub_1C442642C();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4CFF1C8()
{
  sub_1C43FBCD4();
  v1 = v0[45];
  sub_1C441DFEC(v0[39], v0[40]);

  v2 = v0[50];
  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4CFF230(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFF250, 0, 0);
}

uint64_t sub_1C4CFF7A4(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFF7C4, 0, 0);
}

uint64_t sub_1C4CFFD48()
{
  sub_1C44249B4();
  sub_1C4404D98();
  sub_1C443F420();
  sub_1C43FBDAC();
  *v3 = v2;
  v4 = *(v2 + 392);
  *v3 = *v1;
  *(v2 + 400) = v0;

  sub_1C4480614();
  v6 = *(v5 + 384);

  if (!v0)
  {
    sub_1C449541C();
  }

  sub_1C43FEAF8();
  sub_1C442642C();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4D002E4(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D00304, 0, 0);
}

uint64_t sub_1C4D00858(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D00878, 0, 0);
}

uint64_t sub_1C4D00DFC()
{
  sub_1C44249B4();
  sub_1C4404D98();
  sub_1C443F420();
  sub_1C43FBDAC();
  *v3 = v2;
  v4 = *(v2 + 392);
  *v3 = *v1;
  *(v2 + 400) = v0;

  sub_1C4480614();
  v6 = *(v5 + 384);

  if (!v0)
  {
    sub_1C449541C();
  }

  sub_1C43FEAF8();
  sub_1C442642C();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4D01398(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D013B8, 0, 0);
}

uint64_t sub_1C4D0193C()
{
  sub_1C44249B4();
  sub_1C4404D98();
  sub_1C443F420();
  sub_1C43FBDAC();
  *v3 = v2;
  v4 = *(v2 + 392);
  *v3 = *v1;
  *(v2 + 400) = v0;

  sub_1C4480614();
  v6 = *(v5 + 384);

  if (!v0)
  {
    sub_1C449541C();
  }

  sub_1C43FEAF8();
  sub_1C442642C();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4D01ED8(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D01EF8, 0, 0);
}

uint64_t sub_1C4D0244C(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D0246C, 0, 0);
}

uint64_t sub_1C4D029C0(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D029E0, 0, 0);
}

uint64_t sub_1C4D0300C()
{
  sub_1C44249B4();
  sub_1C4404D98();
  sub_1C443F420();
  sub_1C43FBDAC();
  *v6 = v5;
  v7 = *(v5 + 248);
  *v6 = *v3;
  *(v5 + 256) = v1;

  sub_1C4480614();
  v9 = *(v8 + 240);

  if (!v1)
  {
    *(v5 + 280) = v2;
    *(v5 + 264) = v0;
    *(v5 + 272) = v4;
  }

  sub_1C43FEAF8();
  sub_1C442642C();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4D035E0()
{
  sub_1C43FBCD4();
  v1 = v0[27];
  sub_1C441DFEC(v0[21], v0[22]);

  v2 = v0[32];
  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4D03648()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C298);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D036D8()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C2D0);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D03768()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C2C8);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D037F8()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C2F0);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D03888()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C2E8);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D03918()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C310);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D039A8()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C308);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D03A38()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C330);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D03AC8()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C328);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D03B58()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C350);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D03BE8()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C348);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

void sub_1C4D03CE4()
{
  v1 = sub_1C4488780();
  v2 = sub_1C43FCDF8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C4415108();
  MEMORY[0x1C6940010](*(v0 + 8), *(v0 + 16));
  sub_1C4EFB758();
  sub_1C4475E10();
  v5 = sub_1C44569DC();
  v6(v5);

  sub_1C4D0DF3C();
}

void sub_1C4D03DB4()
{
  v1 = sub_1C4488780();
  v2 = sub_1C43FCDF8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C4415108();
  MEMORY[0x1C6940010](*v0, v0[1]);
  sub_1C4EFB758();
  sub_1C4475E10();
  v5 = sub_1C44569DC();
  v6(v5);

  sub_1C4D0DF3C();
}

void sub_1C4D03E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4EFB768();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  sub_1C4415108();
  MEMORY[0x1C6940010](a2, a3);
  sub_1C4EFB758();
  sub_1C440A9B8();
  sub_1C4EFBFF8();
  (*(v8 + 8))(v13, v5);

  sub_1C4D0DF3C();
}

uint64_t sub_1C4D03F8C()
{
  v1 = sub_1C4EFB768();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v8, "DELETE FROM ");
  HIBYTE(v8[6]) = 0;
  v8[7] = -5120;
  MEMORY[0x1C6940010](*v0, v0[1], v4);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  (*(v2 + 8))(v6, v1);
}

uint64_t sub_1C4D040C0()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C370);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D04150(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D04170, 0, 0);
}

uint64_t sub_1C4D04170()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = sub_1C4D0E2C0();
  v3 = *(v0 + 24);
  if (v2)
  {
    v4 = *(v0 + 16);
    sub_1C4C08580();
    sub_1C4D0E478();
  }

  else
  {
    sub_1C4C085F0();
    v5 = *(v0 + 16);
    sub_1C4D0E5C0();
  }

  sub_1C43FC1B0();

  return v6();
}

uint64_t sub_1C4D04208(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D04228, 0, 0);
}

uint64_t sub_1C4D04228()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 16);
  v2 = sub_1C4D0E2C0();
  v3 = *(v0 + 16);
  if (v2)
  {
    sub_1C441BE68(*(*(v0 + 24) + 24), *(*(v0 + 24) + 32), *(*(v0 + 24) + 40), *(*(v0 + 24) + 48));
    sub_1C4D0E478();
  }

  else
  {
    sub_1C4C5B3E4();
    sub_1C4D0E5C0();
  }

  sub_1C43FC1B0();

  return v4();
}

uint64_t sub_1C4D042AC(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D042CC, 0, 0);
}

uint64_t sub_1C4D042CC()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 88);
  v2 = sub_1C4D0E2C0();
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  if (v2)
  {
    sub_1C4508984();
    sub_1C4CFDC10();
    sub_1C4D0E478();
  }

  else
  {
    sub_1C4C421C0();
    sub_1C4D0E5C0();
  }

  sub_1C43FC1B0();

  return v5();
}

uint64_t sub_1C4D04350(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D04370, 0, 0);
}

uint64_t sub_1C4D04370()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 88);
  v2 = sub_1C4D0E2C0();
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  if (v2)
  {
    sub_1C4508984();
    sub_1C4CFDC10();
    sub_1C4D0E478();
  }

  else
  {
    sub_1C4C4E24C();
    sub_1C4D0E5C0();
  }

  sub_1C43FC1B0();

  return v5();
}

uint64_t sub_1C4D043F4(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D04414, 0, 0);
}

uint64_t sub_1C4D04414()
{
  sub_1C43FBCD4();
  v1 = v0[11];
  if (sub_1C4D0E2C0())
  {
    v2 = v0[11];
    memcpy(v0 + 2, (v0[12] + 24), 0x48uLL);
    sub_1C4CFDC10();
    sub_1C4D0E478();
    sub_1C43FC1B0();

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_1C4D044FC;
    v6 = v0[12];

    return sub_1C4BC92C4();
  }
}

uint64_t sub_1C4D044FC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 104);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  if (v0)
  {
    sub_1C43FBDA0();

    return v6();
  }

  else
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1C4D04614()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 88);
  sub_1C4D0E5C0();
  sub_1C43FC1B0();

  return v2();
}

uint64_t sub_1C4D0466C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D0468C, 0, 0);
}

uint64_t sub_1C4D0468C()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 16);
  if (sub_1C4D0E2C0())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    sub_1C4BFFB40();
    sub_1C4D0E478();
    sub_1C43FC1B0();

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v7 = sub_1C4414DF4(v6);
    *v7 = v8;
    sub_1C44147B0(v7);

    return sub_1C4BFFBDC();
  }
}

uint64_t sub_1C4D04754()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 32);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  if (v0)
  {
    sub_1C43FBDA0();

    return v6();
  }

  else
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1C4D0486C()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 16);
  sub_1C4D0E5C0();
  sub_1C43FC1B0();

  return v2();
}

uint64_t sub_1C4D048C4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D048E4, 0, 0);
}

uint64_t sub_1C4D048E4()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 16);
  v2 = sub_1C4D0E2C0();
  v3 = *(v0 + 16);
  if (v2)
  {
    sub_1C441BE68(*(*(v0 + 24) + 24), *(*(v0 + 24) + 32), *(*(v0 + 24) + 40), *(*(v0 + 24) + 48));
    sub_1C4D0E478();
  }

  else
  {
    sub_1C4C47414();
    sub_1C4D0E5C0();
  }

  sub_1C43FC1B0();

  return v4();
}

uint64_t sub_1C4D04968(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D04988, 0, 0);
}

uint64_t sub_1C4D04988()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 16);
  if (sub_1C4D0E2C0())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    sub_1C4BFAA64();
    sub_1C4D0E478();
    sub_1C43FC1B0();

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v7 = sub_1C4414DF4(v6);
    *v7 = v8;
    sub_1C44147B0(v7);

    return sub_1C4BFAAC0();
  }
}

uint64_t sub_1C4D04A50()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 32);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  if (v0)
  {
    sub_1C43FBDA0();

    return v6();
  }

  else
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1C4D04B68(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D04B88, 0, 0);
}

uint64_t sub_1C4D04B88()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 88);
  v2 = sub_1C4D0E2C0();
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  if (v2)
  {
    sub_1C4508984();
    sub_1C4CFDC10();
    sub_1C4D0E478();
  }

  else
  {
    sub_1C4C5103C();
    sub_1C4D0E5C0();
  }

  sub_1C43FC1B0();

  return v5();
}

uint64_t sub_1C4D04C0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D04C2C, 0, 0);
}

uint64_t sub_1C4D04C2C()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 16);
  if (sub_1C4D0E2C0())
  {
    v2 = *(v0 + 16);
    sub_1C4D0E478();
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    sub_1C4C163F8();
    sub_1C4D0E5C0();
  }

  sub_1C43FC1B0();

  return v5();
}

uint64_t sub_1C4D04CA4(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D04CC4, 0, 0);
}

uint64_t sub_1C4D04CC4()
{
  sub_1C43FCF70();
  v1 = *(v0 + 88);
  v2 = sub_1C4D0E2C0();
  v3 = *(v0 + 96);
  if (v2)
  {
    v4 = *(v0 + 88);
    sub_1C4508984();
    sub_1C4CFDC10();
    sub_1C4D0E478();
  }

  else
  {
    sub_1C4C31A5C();
    v5 = *(v0 + 88);
    sub_1C4D0E5C0();
  }

  sub_1C43FC1B0();

  return v6();
}

uint64_t sub_1C4D04D64(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D04D84, 0, 0);
}

uint64_t sub_1C4D04D84()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 88);
  v2 = sub_1C4D0E2C0();
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  if (v2)
  {
    sub_1C4508984();
    sub_1C4CFDC84();
    sub_1C4D0E478();
  }

  else
  {
    sub_1C4C458C4();
    sub_1C4D0E5C0();
  }

  sub_1C43FC1B0();

  return v5();
}

uint64_t sub_1C4D04E08()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C368);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D04E98()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C390);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D04F28()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C388);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D04FB8()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C3B0);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D05048()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C3A8);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D050D8()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C3C8);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D05168()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C3D8);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D051F8()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C3F0);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D05288()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C3E8);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D05318()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C410);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D053A8()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C408);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D05438()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C438);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D054C8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D054E8, 0, 0);
}

uint64_t sub_1C4D05630()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4D05714()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4D057F8()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 16);
  sub_1C4D0E478();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  sub_1C44147B0(v2);

  return sub_1C4BD8C30();
}

uint64_t sub_1C4D05884()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C43FBE64();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 57) = v3 & 1;
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1C4D059BC()
{
  sub_1C43FBCD4();
  if (*(v0 + 57))
  {
    v1 = *(v0 + 16);
    sub_1C4D0E5C0();
  }

  else if ((*(v0 + 56) & 1) == 0)
  {
    v2 = *(v0 + 16);
    sub_1C4D0E51C();
  }

  sub_1C43FC1B0();

  return v3();
}

uint64_t sub_1C4D05A30(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D05A50, 0, 0);
}

uint64_t sub_1C4D05B3C()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C43FBE64();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 41) = v3 & 1;
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1C4D05C74()
{
  sub_1C43FBCD4();
  if (*(v0 + 41))
  {
    v1 = *(v0 + 16);
    sub_1C4D0E5C0();
  }

  else if ((*(v0 + 40) & 1) == 0)
  {
    v2 = *(v0 + 16);
    sub_1C4D0E51C();
  }

  sub_1C43FC1B0();

  return v3();
}

uint64_t sub_1C4D05CE8()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C430);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D05D78()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C458);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D05E08()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C450);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D05E98()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C478);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D05F28()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C470);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D05FB8()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C490);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D06048()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C4A8);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D060D8()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C4A0);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D06168()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C4C8);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D061F8()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v1[1] = sub_1C442F080;
  v3 = sub_1C4404C28();

  return sub_1C4CFB1E4(v3, v4, v5);
}

uint64_t sub_1C4D06298()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C508);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D06328()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C500);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D063B8()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C528);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D06448()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C520);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D064D8()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C548);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D06568()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C540);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D065F8()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C568);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D06688()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C560);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D06718()
{
  sub_1C43FCF70();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = sub_1C43FC218(v2);
  *v3 = v4;
  v3[1] = sub_1C442F080;
  v5 = sub_1C4402B58();

  return sub_1C4CFB1E4(v5, v6, v7);
}

uint64_t sub_1C4D067DC()
{
  sub_1C43FCF70();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = sub_1C43FC218(v2);
  *v3 = v4;
  v3[1] = sub_1C442F080;
  sub_1C43FBEF8();

  return sub_1C4CFD8C8();
}

uint64_t sub_1C4D068A0()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C598);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D06930()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C590);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D069C0()
{
  sub_1C43FCF70();
  sub_1C4D06A30(v0);
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4D06A30(uint64_t a1)
{
  v87 = sub_1C4F00758();
  v86 = *(v87 - 8);
  v3 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v82 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v82 - v8;
  v10 = sub_1C4EF98F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for Configuration();
  v15 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a1;
  v18 = *(a1 + 56);
  v21 = *(v18 + 32) == 1;
  v90 = v1;
  if (!v21)
  {
    goto LABEL_14;
  }

  sub_1C4441C50(*(v18 + 33));
  v21 = v20 == 0xD000000000000013 && 0x80000001C4F87C40 == v19;
  if (v21)
  {

    goto LABEL_17;
  }

  v22 = sub_1C4F02938();

  if (v22)
  {
LABEL_17:
    v92 = 1;
    v26 = &v105;
LABEL_18:
    *(v26 - 64) = 1;
    goto LABEL_19;
  }

  if (*(v18 + 32) != 1)
  {
LABEL_14:
    v92 = 0;
    goto LABEL_15;
  }

  sub_1C4441C50(*(v18 + 33));
  if (v24 == 0x7165527261656C63 && v23 == 0xED00006465726975)
  {

    v91 = 0;
    v26 = &v105 + 4;
    goto LABEL_18;
  }

  v92 = sub_1C4F02938();

LABEL_15:
  v91 = 0;
LABEL_19:
  v89 = v18;
  v85 = v9;
  v27 = *MEMORY[0x1E698E928];
  if (qword_1EDDFEC88 != -1)
  {
    swift_once();
  }

  v28 = *(&xmmword_1EDDFEC90 + 1);
  if (xmmword_1EDDFEC90 == 0)
  {
    v29 = 0;
  }

  else
  {
    v29 = xmmword_1EDDFEC90;
  }

  sub_1C4F00688();
  sub_1C4F001A8();
  (*(v11 + 16))(v17, v14, v10);
  static Features.optionsForEnabledFeatures.getter(&v101);
  (*(v11 + 8))(v14, v10);
  v30 = *(&v101 + 1) | v28;
  v31 = &v17[*(v104 + 20)];
  *v31 = v101 | v29;
  *(v31 + 1) = v30;
  v32 = v94;
  v33 = static SQLConnection.createConnection(for:config:)(v27);
  v34 = v32;
  if (v32)
  {
    return sub_1C4467948(v17);
  }

  v36 = v33;
  sub_1C4467948(v17);
  v37 = *(v93 + 64);
  if (sub_1C4428DA0())
  {
    sub_1C4431590(0, (v37 & 0xC000000000000001) == 0);
    if ((v37 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6940F90](0, v37);
      swift_unknownObjectRelease();
    }

    sub_1C446D0DC();
    swift_allocError();
    *v38 = 0xD00000000000002DLL;
    *(v38 + 8) = 0x80000001C4FC6120;
    *(v38 + 16) = 2;
    swift_willThrow();
  }

  v94 = v36;
  v83 = 0;
  v39 = sub_1C444E0CC();
  v40 = 0;
  v41 = *(v39 + 16);
  v42 = v39 + 32;
  LODWORD(v104) = v91 | v92;
  v43 = MEMORY[0x1E69E7CC0];
  v44 = &unk_1C4F0E940;
  while (1)
  {
    if (v41 == v40)
    {

      v57 = *(v43 + 16);
      if (v57 > 1)
      {

        sub_1C446D0DC();
        swift_allocError();
        *v58 = 0xD000000000000029;
        *(v58 + 8) = 0x80000001C4FC6180;
        *(v58 + 16) = 2;
        swift_willThrow();
      }

      if (!v57)
      {
        goto LABEL_80;
      }

      sub_1C442E860(v43 + 32, &v101);
      if (v91)
      {
        v59 = 1;
        v60 = v90;
      }

      else
      {
        v61 = v102;
        v62 = v103;
        sub_1C4409678(&v101, v102);
        v63 = (*(v62 + 48))(v61, v62);
        v60 = v90;
        switch(v63)
        {
          case 1:

            v59 = 1;
            break;
          default:
            v59 = sub_1C4F02938();

            break;
        }
      }

      if (v92)
      {
LABEL_61:
        v68 = v83;
        sub_1C4C149DC();
        if (v68)
        {

          goto LABEL_69;
        }

        v83 = 0;
        if ((v59 & 1) == 0)
        {
          goto LABEL_79;
        }

        v67 = 1;
      }

      else
      {
        v64 = v102;
        v65 = v103;
        sub_1C4409678(&v101, v102);
        switch((*(v65 + 48))(v64, v65))
        {
          case 2u:

            goto LABEL_61;
          default:
            v66 = sub_1C4F02938();

            if ((v66 | v59))
            {
              LOBYTE(v59) = v66 ^ 1 | v59;
              goto LABEL_61;
            }

            v67 = 0;
            break;
        }
      }

      v69 = v88;
      sub_1C442E860(&v101, v97);
      sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
      sub_1C456902C(&qword_1EC0C50E8, &qword_1C4F5FB28);
      if (swift_dynamicCast())
      {
        sub_1C441D670(v95, v98);
        v70 = v99;
        v71 = v100;
        sub_1C4409678(v98, v99);
        v72 = v83;
        if (v67)
        {
          (*(v71 + 16))(v70, v71);
        }

        else
        {
          (*(v71 + 24))(v70, v71);
        }

        v34 = v72;
        if (!v72)
        {
          (*(v86 + 32))(v85, v69, v87);
          v74 = *(v60 + 16);
          v75 = *(v60 + 24);
          v44 = v84;
          sub_1C4F00648();
          goto LABEL_76;
        }

        sub_1C440962C(v98);
        return sub_1C440962C(&v101);
      }

      v96 = 0;
      memset(v95, 0, sizeof(v95));

      sub_1C4423A0C(v95, &qword_1EC0C6398, &qword_1C4F6C5C0);
      sub_1C446D0DC();
      swift_allocError();
      *v73 = 0xD00000000000002FLL;
      *(v73 + 8) = 0x80000001C4FC6150;
      *(v73 + 16) = 2;
      swift_willThrow();
LABEL_69:

      return sub_1C440962C(&v101);
    }

    if (v40 >= *(v39 + 16))
    {
      break;
    }

    sub_1C442E860(v42, &v101);
    sub_1C442E860(&v101, v98);
    sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
    _s13ControlSourceCMa();
    if (swift_dynamicCast() & 1) != 0 || (sub_1C442E860(&v101, v98), _s18AlwaysUpdateSourceCMa(), (swift_dynamicCast()))
    {

LABEL_36:
      sub_1C440962C(&v101);
      goto LABEL_37;
    }

    if ((v104 & 1) == 0)
    {
      v45 = v102;
      v34 = v103;
      sub_1C4409678(&v101, v102);
      v46 = v45;
      v44 = &unk_1C4F0E940;
      if (((*(v34 + 40))(v46, v34) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    sub_1C441D670(&v101, v98);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97[0] = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = *(v43 + 16);
      sub_1C445E6E0();
      v43 = v97[0];
    }

    v34 = *(v43 + 16);
    if (v34 >= *(v43 + 24) >> 1)
    {
      sub_1C445E6E0();
    }

    v49 = v99;
    v50 = v100;
    v51 = sub_1C4418280(v98, v99);
    v52 = *(*(v49 - 8) + 64);
    v53 = MEMORY[0x1EEE9AC00](v51);
    v55 = &v82 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v56 + 16))(v55, v53);
    sub_1C445EC18(v34, v55, v97, v49, v50);
    sub_1C440962C(v98);
    v43 = v97[0];
    v44 = &unk_1C4F0E940;
LABEL_37:
    v42 += 40;
    ++v40;
  }

  __break(1u);
LABEL_76:
  v76 = v99;
  v77 = v100;
  sub_1C4409678(v98, v99);
  (*(v77 + 32))(v44, v76, v77);
  v83 = v34;
  if (v34)
  {

    v78 = *(v86 + 8);
    v79 = v87;
    v78(v44, v87);
    v78(v85, v79);
    sub_1C440962C(v98);
    return sub_1C440962C(&v101);
  }

  v80 = *(v86 + 8);
  v81 = v87;
  v80(v44, v87);
  v80(v85, v81);
  sub_1C440962C(v98);
LABEL_79:
  sub_1C440962C(&v101);
LABEL_80:

  sub_1C444F17C();
}

uint64_t sub_1C4D077F0()
{
  sub_1C43FCF70();
  sub_1C4408F38(dword_1C4F6C5B0);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D07880()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C5E0);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D07910()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C5D8);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D079A0()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C600);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D07A30()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C5F8);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D07AC0()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C628);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D07B50()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C620);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D07BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a1;
  v133 = a2;
  v5 = sub_1C456902C(&unk_1EC0B9830, qword_1C4F0FC20);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v132 = &v118 - v9;
  v10 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v131 = (&v118 - v14);
  v134 = sub_1C4EF9648();
  v15 = sub_1C43FCDF8(v134);
  v137 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBD08();
  v129 = (v19 - v20);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  v128 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v118 - v24;
  v26 = sub_1C4EF9F68();
  v27 = sub_1C43FCDF8(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v34 = v33 - v32;
  v35 = sub_1C4EF9F88();
  v138 = sub_1C43FCDF8(v35);
  v139 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v138);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v39 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v40 = sub_1C43FBD18(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBD08();
  v45 = v43 - v44;
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  v127 = v47;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  v126 = v49;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v50);
  v135 = sub_1C4D0DF74();
  v51 = sub_1C43FCDF8(v135);
  v130 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBD08();
  v57 = (v55 - v56);
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBF38();
  v125 = v59;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBF38();
  v124 = v61;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v118 - v63;
  v65 = *(v2 + 16);
  sub_1C4EF9F58();
  if (v65)
  {
    v66 = v26;
    if (v65 == 1)
    {
      v67 = sub_1C456902C(&unk_1EC0BAD80, qword_1C4F16920);
      v123 = *(v29 + 72);
      v124 = v67;
      v68 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v69 = swift_allocObject();
      v122 = xmmword_1C4F0D130;
      *(v69 + 16) = xmmword_1C4F0D130;
      v70 = *MEMORY[0x1E6969A68];
      v121 = *(v29 + 104);
      v121(v69 + v68, v70, v26);
      sub_1C4D51F7C();
      sub_1C4EF9EA8();

      v71 = *(v139 + 8);
      v139 += 8;
      v120 = v71;
      v71(v3, v138);
      v128 = sub_1C4EF95D8();
      LODWORD(v126) = v72;
      v119 = *(v137 + 8);
      v137 += 8;
      v73 = v134;
      v119(v25, v134);
      sub_1C4EF9F58();
      v74 = swift_allocObject();
      *(v74 + 16) = v122;
      v121(v74 + v68, *MEMORY[0x1E6969A78], v26);
      sub_1C4D51F7C();
      sub_1C4EF9EA8();

      v75 = v138;
      v76 = v120;
      v120(v3, v138);
      sub_1C4EF95E8();
      v77 = v25;
      v78 = v119;
      v119(v77, v73);
      v79 = v131;
      sub_1C4EF9F58();
      sub_1C440BAA8(v79, 0, 1, v75);
      v80 = sub_1C4EFA018();
      sub_1C440BAA8(v132, 1, 1, v80);
      sub_1C4D0DED8();
      v81 = v129;
      sub_1C4EF9618();
      sub_1C4EF9F58();
      v82 = v127;
      sub_1C4EF9F08();
      v76(v3, v138);
      v78(v81, v134);
      v83 = v135;
      sub_1C440175C(v82, 1, v135);
      if (!v84)
      {
        v103 = *(v130 + 32);
        v103(v125, v82, v83);
        v104 = v133;
        v105 = sub_1C43FBEF8();
        (v103)(v105);
LABEL_20:
        v90 = 0;
        return sub_1C440BAA8(v104, v90, 1, v83);
      }

      v85 = v82;
    }

    else
    {
      sub_1C456902C(&unk_1EC0BAD80, qword_1C4F16920);
      v91 = *(v29 + 72);
      v92 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_1C4F0D130;
      (*(v29 + 104))(v93 + v92, *MEMORY[0x1E6969A68], v66);
      sub_1C4D51F7C();
      sub_1C4EF9EA8();

      v94 = v138;
      v139 = *(v139 + 8);
      (v139)(v3, v138);
      sub_1C4EF95D8();
      LODWORD(v136) = v95;
      v96 = *(v137 + 8);
      v97 = v25;
      v98 = v134;
      v96(v97, v134);
      v99 = v131;
      sub_1C4EF9F58();
      sub_1C440BAA8(v99, 0, 1, v94);
      v100 = sub_1C4EFA018();
      sub_1C440BAA8(v132, 1, 1, v100);
      sub_1C4D0DED8();
      v101 = v128;
      sub_1C4EF9618();
      sub_1C4EF9F58();
      v102 = v126;
      sub_1C4EF9F08();
      (v139)(v3, v94);
      v96(v101, v98);
      v83 = v135;
      sub_1C440175C(v102, 1, v135);
      if (!v84)
      {
        v114 = *(v130 + 32);
        v114(v124, v102, v83);
        v104 = v133;
        v115 = sub_1C43FBEF8();
        (v114)(v115);
        goto LABEL_20;
      }

      v85 = v102;
    }

    goto LABEL_19;
  }

  v129 = v57;
  v132 = v45;
  v86 = *MEMORY[0x1E6969AB0];
  v134 = *(v29 + 104);
  v134(v34, v86, v26);
  sub_1C4EF9F38();
  v87 = *(v29 + 8);
  v137 = v26;
  v87(v34, v26);
  v88 = v139 + 8;
  v131 = *(v139 + 8);
  v131(v3, v138);
  v89 = v135;
  sub_1C440175C(v4, 1, v135);
  if (v84)
  {
    sub_1C4423A0C(v4, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v90 = 1;
    v104 = v133;
    v83 = v89;
    return sub_1C440BAA8(v104, v90, 1, v83);
  }

  v139 = v88;
  v127 = *(v130 + 32);
  v128 = v130 + 32;
  v127(v64, v4, v89);
  sub_1C4EF9AD8();
  v107 = v106;
  result = sub_1C4EF9AD8();
  v110 = v107 - v109;
  if ((*&v110 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  v111 = v137;
  if (v110 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v83 = v89;
  if (v110 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v112 = v110;
  sub_1C4EF9F58();
  result = (v134)(v34, *MEMORY[0x1E6969A98], v111);
  if (!__OFSUB__(0, v112))
  {
    v113 = v132;
    sub_1C4EF9F28();
    v87(v34, v111);
    v131(v3, v138);
    (*(v130 + 8))(v64, v89);
    sub_1C440175C(v113, 1, v89);
    if (!v84)
    {
      v116 = v129;
      v117 = v127;
      v127(v129, v113, v89);
      v104 = v133;
      v117(v133, v116, v89);
      goto LABEL_20;
    }

    v85 = v113;
LABEL_19:
    sub_1C4423A0C(v85, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v90 = 1;
    v104 = v133;
    return sub_1C440BAA8(v104, v90, 1, v83);
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C4D08790(uint64_t a1)
{
  v3 = v1;
  v75 = a1;
  v73 = sub_1C4EF9F68();
  v4 = sub_1C43FCDF8(v73);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C4EF9F88();
  v13 = sub_1C43FCDF8(v12);
  v71 = v14;
  v72 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v17 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v18 = sub_1C43FBD18(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  v69 = v21 - v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  v68 = v24;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  v74 = sub_1C4D0DF74();
  v26 = sub_1C43FCDF8(v74);
  v70 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBD08();
  v32 = (v30 - v31);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v68 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v68 - v37;
  v39 = *(v3 + 16);
  sub_1C4EF9F58();
  v40 = *(v6 + 104);
  v41 = (v6 + 8);
  if (!v39)
  {
    v52 = v73;
    v40(v11, *MEMORY[0x1E6969A48], v73);
    v43 = v69;
    sub_1C4475874();
    (*v41)(v11, v52);
    v53 = sub_1C445FC2C();
    v54(v53);
    v55 = sub_1C44A1500();
    v47 = v74;
    sub_1C440175C(v55, v56, v74);
    if (!v49)
    {
      sub_1C44559A8();
      v62 = sub_1C43FBEF8();
      v63(v62);
      v38 = v32;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (v39 != 1)
  {
    v58 = v73;
    v40(v11, *MEMORY[0x1E6969A68], v73);
    sub_1C4475874();
    (*v41)(v11, v58);
    v59 = sub_1C445FC2C();
    v60(v59);
    v47 = v74;
    sub_1C440175C(v2, 1, v74);
    if (!v49)
    {
      sub_1C44559A8();
      v64(v38, v2, v47);
      goto LABEL_12;
    }

    v57 = v2;
LABEL_11:
    sub_1C4423A0C(v57, &unk_1EC0B84E0, qword_1C4F0D2D0);
    *&result = 0.0;
    return result;
  }

  v42 = v73;
  v40(v11, *MEMORY[0x1E6969A78], v73);
  v43 = v68;
  sub_1C4475874();
  (*v41)(v11, v42);
  v44 = sub_1C445FC2C();
  v45(v44);
  v46 = sub_1C44A1500();
  v47 = v74;
  sub_1C440175C(v46, v48, v74);
  if (v49)
  {
LABEL_7:
    v57 = v43;
    goto LABEL_11;
  }

  sub_1C44559A8();
  v50 = sub_1C4404BCC();
  v51(v50);
  v38 = v35;
LABEL_12:
  sub_1C4EF9AD8();
  v66 = v65;
  (*(v11 + 8))(v38, v47);
  sub_1C4EF9AD8();
  *&result = v66 - v67;
  return result;
}

uint64_t sub_1C4D08C10()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C650);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D08CA0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4D08DA4, 0, 0);
}

uint64_t sub_1C4D092C0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 72);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4D093A4()
{
  sub_1C43FBCD4();
  v1 = v0[2];
  sub_1C4D0E478();
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];

  sub_1C43FC1B0();

  return v5();
}

uint64_t sub_1C4D09418()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 80);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4D09954()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 152) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4D09A50()
{
  sub_1C43FCF70();
  v1 = *(v0 + 136) + *(v0 + 128);
  *(v0 + 136) = v1;
  if (v1 >= *(v0 + 104))
  {
    v7 = *(v0 + 64);
    sub_1C4EF9AD8();
    v8 = swift_task_alloc();
    v9 = sub_1C4D0DF48(v8);
    *v9 = v10;
    sub_1C44339C4();
  }

  else
  {
    v2 = swift_task_alloc();
    v3 = sub_1C4418A24(v2);
    *v3 = v4;
    v5 = sub_1C440DB48();
  }

  *(v5 + 8) = v6;
  sub_1C4418124();

  return sub_1C4C1A620();
}

uint64_t sub_1C4D09B18()
{
  sub_1C43FCF70();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[8];
  v4 = v0[6];
  sub_1C4423A0C(v0[5], &unk_1EC0B84E0, qword_1C4F0D2D0);
  v2(v3, v4);
  v5 = v0[19];
  sub_1C4D0DDC0();

  sub_1C43FBDA0();

  return v6();
}

uint64_t sub_1C4D09BB4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 168) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4D09CB0()
{
  sub_1C43FEAEC();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[2];
  *(v0[3] + 24) = v0[13];
  sub_1C4D0E5C0();
  sub_1C4423A0C(v5, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = sub_1C4402B58();
  v2(v7);
  v8 = v0[8];
  v9 = v0[4];
  v10 = v0[5];

  sub_1C43FC1B0();

  return v11();
}

uint64_t sub_1C4D09D68()
{
  sub_1C43FCF70();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[8];
  v4 = v0[6];
  sub_1C4423A0C(v0[5], &unk_1EC0B84E0, qword_1C4F0D2D0);
  v2(v3, v4);
  v5 = v0[21];
  sub_1C4D0DDC0();

  sub_1C43FBDA0();

  return v6();
}

uint64_t sub_1C4D09E04()
{
  sub_1C43FCF70();
  v2 = *v1;
  sub_1C43FBE64();
  *v4 = v3;
  v5 = *(v2 + 208);
  *v4 = *v1;
  *(v3 + 216) = v0;

  v6 = *(v2 + 200);

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4D0A36C()
{
  sub_1C43FCF70();
  v1 = *(v0 + 176);

  v2 = *(v0 + 216);
  sub_1C4D0DDC0();

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4D0A3E4()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C648);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0A474()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C670);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0A504()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C668);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0A594()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C698);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0A624()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C690);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0A6B4()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C6B8);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0A744()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C6B0);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0A7D4()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C6D8);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0A864()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C6D0);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0A8F4()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C6F8);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0A984()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C6F0);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0AA14()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C718);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0AAA4()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C710);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0AB34()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C738);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0ABC4()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C730);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0AC54()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v1[1] = sub_1C442F080;
  v3 = sub_1C4404C28();

  return sub_1C4CFB1E4(v3, v4, v5);
}

uint64_t sub_1C4D0ACF4()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C768);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0AD84()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C788);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0AE14()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C780);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0AEA4()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C7A8);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0AF34()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C7A0);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0AFC4()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C7C8);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0B054()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C7C0);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0B0E4()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C7E0);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0B174()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C7F8);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0B204()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C7F0);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0B294()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C810);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0B324()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C820);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0B3B4()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C830);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0B444()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C848);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0B4D4(uint64_t a1)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4D0B4F4, 0, 0);
}

uint64_t sub_1C4D0B4F4()
{
  sub_1C444FD14();
  v2 = v0[27];
  if ((sub_1C4D0E2C0() & 1) == 0)
  {
    v5 = v0[27];
    v6 = sub_1C444E0CC();
    v7 = 0;
    v8 = *(v6 + 16);
    v0[30] = v8;
    do
    {
      i = v7;
      v0[31] = v7;
      if (v8 == v7)
      {
        break;
      }

      if (v7 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_147;
      }

      sub_1C442E860(v6 + 32, (v0 + 12));
      sub_1C4D0D8FC(v0 + 12);
      sub_1C4475518();
      ++v7;
      sub_1C440962C(v0 + 12);
    }

    while ((v1 & 1) == 0);

    if (qword_1EDDFECD0 != -1)
    {
      goto LABEL_157;
    }

    while (1)
    {
      v10 = sub_1C4F00978();
      v0[32] = sub_1C43FCEE8(v10, qword_1EDE2DF70);
      v11 = sub_1C4F00968();
      v12 = sub_1C4F01CB8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 67109120;
        *(v13 + 4) = v8 != i;
        _os_log_impl(&dword_1C43F8000, v11, v12, "ViewMaintenanceUpdateListener: full rebuild due to source changes: %{BOOL}d", v13, 8u);
        sub_1C43FBE2C();
      }

      v103 = v8;
      v14 = v0[27];

      v15 = *(v14 + 112);
      v16 = sub_1C4428DA0();
      v17 = 0;
      v0[33] = v16;
      v104 = v16;
LABEL_11:
      v8 = v17;
      v0[34] = v17;
      if (v104 != v17)
      {
        break;
      }

LABEL_24:
      v20 = sub_1C4F00968();
      v21 = sub_1C4F01CB8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        LOBYTE(v11) = v22;
        *v22 = 67109120;
        *(v22 + 4) = v104 != v8;
        _os_log_impl(&dword_1C43F8000, v20, v21, "ViewMaintenanceUpdateListener: full rebuild due to system notifications: %{BOOL}d", v22, 8u);
        sub_1C43FBE2C();
      }

      v23 = v103 == i && v104 == v8;
      if (!v23)
      {
        v3 = swift_task_alloc();
        v0[35] = v3;
        *v3 = v0;
        v4 = sub_1C4D0C33C;
        goto LABEL_31;
      }

      i = sub_1C4D0DF54();
      v8 = 0;
      while (2)
      {
        if (i == v8)
        {
          sub_1C4458820();
          if (!v23 || v27 != v28)
          {
            goto LABEL_59;
          }

          goto LABEL_93;
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1C6940F90](v8, v20);
        }

        else
        {
          if (v8 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_154;
          }

          v15 = *(v20 + 8 * v8 + 32);
        }

        if (!__OFADD__(v8, 1))
        {
          switch(*(v15 + 34))
          {
            case 1:
              goto LABEL_45;
            case 2:
              sub_1C440B7CC();
              goto LABEL_45;
            case 3:
              sub_1C440FE9C();
              goto LABEL_45;
            case 4:
              sub_1C440CB64();
              goto LABEL_45;
            case 5:
              sub_1C440E9E0();
LABEL_45:
              sub_1C443E214();
              sub_1C4851C38();
              sub_1C447D054();
              if ((v11 & 1) == 0)
              {
                switch(*(v15 + 34))
                {
                  case 3:
                  case 5:
                    sub_1C44018F0();
                    goto LABEL_48;
                  case 4:
                    goto LABEL_57;
                  default:
LABEL_48:
                    sub_1C4441624();
                    sub_1C4F02938();
                    sub_1C447D054();

                    ++v8;
                    if (v11)
                    {
                      goto LABEL_59;
                    }

                    continue;
                }
              }

              break;
            default:
LABEL_57:

              break;
          }

LABEL_59:
          v30 = sub_1C4428DA0();
          v0[37] = v30;
          if (v30)
          {
            for (i = 0; ; i = v0[40])
            {
              v31 = v0[36];
              if ((v31 & 0xC000000000000001) != 0)
              {
                v20 = MEMORY[0x1C6940F90](i);
              }

              else
              {
                sub_1C446090C(v30, v31);
                if (i >= v33)
                {
                  goto LABEL_155;
                }

                sub_1C447F720(v32 + 8 * i);
              }

              v0[39] = v20;
              v0[40] = i + 1;
              if (__OFADD__(i, 1))
              {
                break;
              }

              sub_1C4458820();
              if (v23 && v34 == v35)
              {
                switch(*(v20 + 34))
                {
                  case 1:
                    goto LABEL_76;
                  case 2:
                    sub_1C440B7CC();
                    goto LABEL_76;
                  case 3:
                    sub_1C440FE9C();
                    goto LABEL_76;
                  case 4:
                    sub_1C440CB64();
                    goto LABEL_76;
                  case 5:
                    sub_1C440E9E0();
LABEL_76:
                    sub_1C443E214();
                    i = v37 + 4;
                    sub_1C4851C38();
                    sub_1C447D054();
                    if (v11)
                    {
                      break;
                    }

                    switch(*(v20 + 34))
                    {
                      case 1:
                        v38 = 1869506409;
                        goto LABEL_82;
                      case 2:
                        v38 = 1634036835;
LABEL_82:
                        i = v38 | 0x64657200000000;
                        break;
                      case 3:
                        sub_1C4460B98();
                        v39 = 0x61636E757274;
                        goto LABEL_84;
                      case 4:
                        goto LABEL_79;
                      case 5:
                        sub_1C4460B98();
                        v39 = 0x656C706D6F63;
LABEL_84:
                        i = v39 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
                        break;
                      default:
                        break;
                    }

                    sub_1C445145C();
                    sub_1C4F02938();
                    sub_1C444B308();
                    if (v11)
                    {
                      break;
                    }

                    goto LABEL_91;
                  default:
LABEL_79:

                    break;
                }
              }

              if ((*(v20 + 32) & 1) != 0 || (sub_1C444C41C(v0[27]), v23))
              {
                v40 = sub_1C441299C();
                i = sub_1C4CDF950(v40, v41, v42, v43);
                sub_1C44EC878(i, v44);
                if (v46)
                {
                  v60 = v0[32];
                  sub_1C43FBDBC();
                  *(swift_allocObject() + 16) = i;
                  swift_bridgeObjectRetain_n();
                  v61 = sub_1C4F00968();
                  v62 = sub_1C4F01CB8();
                  *(sub_1C440F54C() + 16) = 0;
                  v63 = sub_1C440F54C();
                  sub_1C44A3AFC(v63);
                  sub_1C44042C4();
                  v64 = swift_allocObject();
                  sub_1C44412E8(v64);
                  sub_1C44042C4();
                  swift_allocObject();
                  sub_1C4433EE0();
                  *(v65 + 16) = v66;
                  *(v65 + 24) = v64;
                  sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
                  inited = swift_initStackObject();
                  v68 = sub_1C444B3D0(inited, xmmword_1C4F0C890);
                  v68[3].n128_u64[0] = sub_1C44549F4;
                  v68[3].n128_u64[1] = v8;
                  v68[4].n128_u64[0] = sub_1C4716C58;
                  v68[4].n128_u64[1] = v15;
                  swift_setDeallocating();

                  sub_1C49E1614();
                  if (os_log_type_enabled(v61, v62))
                  {
                    v69 = sub_1C43FD084();
                    *v69 = 134217984;
                    v70 = *(i + 16);

                    *(v69 + 4) = v70;

                    sub_1C44F0964(&dword_1C43F8000, v71, v72, "ViewMaintenanceUpdateListener: Performing updates for %ld entities");
                    sub_1C43FBE2C();
                  }

                  else
                  {
                  }

                  v73 = swift_task_alloc();
                  v0[43] = v73;
                  *v73 = v0;
                  sub_1C440C0A8(v73);
                  sub_1C44257D8();

                  return sub_1C4C7DA2C(v74);
                }

                v47 = v45;

                sub_1C4CDF674(v47);
              }

              else
              {
                *(v20 + 34) = 1;
              }

LABEL_91:
              v48 = v0[39];
              v20 = v0[40];
              v49 = v0[37];

              if (v20 == v49)
              {
                goto LABEL_93;
              }
            }

            goto LABEL_152;
          }

LABEL_93:
          v50 = v0[27];
          v51 = sub_1C444E0CC();
          v8 = v51;
          v52 = *(v51 + 16);
          if (!v52)
          {
            i = 0;
LABEL_113:
            v76 = v0[27];

            v77 = *(v76 + 72);
            v8 = sub_1C4428DA0();
            v78 = 0;
            do
            {
              while (1)
              {
                if (v78 == v8)
                {
                  v82 = v0[27];
                  v83 = sub_1C444E0CC();
                  v84 = v83;
                  v85 = *(v83 + 16);
                  if (v85)
                  {
                    v86 = 0;
                    v8 = v83 + 32;
                    while (1)
                    {
                      if (v86 >= *(v84 + 16))
                      {
                        goto LABEL_156;
                      }

                      sub_1C442E860(v8, (v0 + 22));
                      ++v86;
                      v87 = v0[26];
                      sub_1C4409678(v0 + 22, v0[25]);
                      sub_1C4413FE4(v87);
                      v88 = sub_1C43FD2BC();
                      v89(v88);
                      sub_1C44693BC();
                      switch(v90)
                      {
                        case 1:
                          goto LABEL_131;
                        case 2:

                          sub_1C440962C(v0 + 22);
                          goto LABEL_136;
                        case 3:
                          sub_1C44081A8();
                          goto LABEL_131;
                        case 4:
                          sub_1C44A1F70();
                          goto LABEL_131;
                        case 5:
                          sub_1C4413C84();
                          goto LABEL_131;
                        default:
                          sub_1C440CB64();
LABEL_131:
                          v91 = sub_1C447E3BC();

                          sub_1C440962C(v0 + 22);
                          if (v91)
                          {
LABEL_136:

                            goto LABEL_137;
                          }

                          v8 += 40;
                          if (v85 == v86)
                          {
                            goto LABEL_133;
                          }

                          break;
                      }
                    }
                  }

LABEL_133:

                  if ((i & 1) == 0)
                  {
                    v92 = v0[27];
                    sub_1C4D0E5C0();
                  }

LABEL_138:
                  sub_1C43FC1B0();
                  sub_1C44257D8();

                  __asm { BRAA            X1, X16 }
                }

                if ((v77 & 0xC000000000000001) != 0)
                {
                  break;
                }

                if ((v78 & 0x8000000000000000) != 0)
                {
                  goto LABEL_150;
                }

                if (v78 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_151;
                }

                v79 = *(v77 + 32 + 8 * v78++);
                if (*(v79 + 32))
                {
                  goto LABEL_137;
                }
              }

              result = MEMORY[0x1C6940F90](v78, v77);
              if (__OFADD__(v78++, 1))
              {
                __break(1u);
                return result;
              }

              v81 = *(result + 32);
              swift_unknownObjectRelease();
            }

            while ((v81 & 1) == 0);
LABEL_137:
            if (i)
            {
              goto LABEL_138;
            }

            v95 = v0[32];
            v96 = sub_1C4F00968();
            v97 = sub_1C4F01CB8();
            if (sub_1C4402B64(v97))
            {
              v98 = sub_1C43FCED0();
              sub_1C43FBD24(v98);
              sub_1C43FFFD8(&dword_1C43F8000, v99, v100, "ViewMaintenanceUpdateListener: Performing index maintenance");
              sub_1C43FE9D4();
            }

            v101 = swift_task_alloc();
            v0[38] = v101;
            *v101 = v0;
            sub_1C441C604(v101);
            sub_1C44257D8();

            return sub_1C4C7DE68();
          }

          v53 = 0;
          v54 = v51 + 32;
          v55 = v52 - 1;
          while (2)
          {
            if (v53 < *(v8 + 16))
            {
              sub_1C442E860(v54, (v0 + 17));
              v56 = v0[21];
              sub_1C4409678(v0 + 17, v0[20]);
              sub_1C4413FE4(v56);
              v57 = sub_1C43FD2BC();
              v58(v57);
              sub_1C44693BC();
              switch(v59)
              {
                case 1:
                  goto LABEL_101;
                case 2:
                  sub_1C43FE1B4();
                  goto LABEL_101;
                case 3:
                  sub_1C44081A8();
                  goto LABEL_101;
                case 4:

                  sub_1C440962C(v0 + 17);
                  i = 1;
                  goto LABEL_113;
                case 5:
                  sub_1C4413C84();
                  goto LABEL_101;
                default:
                  sub_1C440CB64();
LABEL_101:
                  sub_1C445145C();
                  i = sub_1C4F02938();

                  sub_1C440962C(v0 + 17);
                  if ((i & 1) == 0)
                  {
                    v54 += 40;
                    v23 = v55 == v53++;
                    if (!v23)
                    {
                      continue;
                    }
                  }

                  goto LABEL_113;
              }
            }

            break;
          }

LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
        }

        break;
      }

      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      sub_1C4400FC0();
      swift_once();
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = sub_1C43FD258();
      v18 = MEMORY[0x1C6940F90](v19);
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      v18 = *(v15 + 8 * v17 + 32);
    }

    if (!__OFADD__(v8, 1))
    {
      switch(*(v18 + 34))
      {
        case 1:
          goto LABEL_20;
        case 2:
          sub_1C43FE1B4();
          goto LABEL_20;
        case 3:
        case 5:
          sub_1C44018F0();
          goto LABEL_20;
        case 4:
          sub_1C44A1F70();
LABEL_20:
          sub_1C440CB64();
          sub_1C4F02938();
          sub_1C447D054();

          v17 = v8 + 1;
          if (v11)
          {
            goto LABEL_24;
          }

          goto LABEL_11;
        default:

          goto LABEL_24;
      }
    }

LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v4 = sub_1C4D0C200;
LABEL_31:
  v3[1] = v4;
  v24 = v0[28];
  sub_1C44257D8();

  return sub_1C4C7E000();
}

uint64_t sub_1C4D0C200()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 232);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4D0C2E4()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 216);
  sub_1C4D0E478();
  sub_1C43FC1B0();

  return v2();
}

uint64_t sub_1C4D0C33C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 280);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C4D0C420()
{
  v2 = v0[27];
  sub_1C4D0E478();
  v3 = sub_1C4D0DF54();
  v4 = 0;
  while (2)
  {
    if (v3 == v4)
    {
      sub_1C4458820();
      v13 = v13 && v11 == v12;
      if (!v13)
      {
LABEL_31:
        v14 = sub_1C4428DA0();
        v0[37] = v14;
        if (v14)
        {
          for (i = 0; ; i = v0[40])
          {
            v16 = v0[36];
            if ((v16 & 0xC000000000000001) != 0)
            {
              v2 = MEMORY[0x1C6940F90](i);
            }

            else
            {
              sub_1C446090C(v14, v16);
              if (i >= v18)
              {
                goto LABEL_119;
              }

              sub_1C447F720(v17 + 8 * i);
            }

            v0[39] = v2;
            v0[40] = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            sub_1C4458820();
            if (v13 && v19 == v20)
            {
              switch(*(v2 + 34))
              {
                case 1:
                  goto LABEL_48;
                case 2:
                  sub_1C440B7CC();
                  goto LABEL_48;
                case 3:
                  sub_1C4457978();
                  sub_1C442E6F8();
                  goto LABEL_48;
                case 4:
                  sub_1C440CB64();
                  goto LABEL_48;
                case 5:
                  sub_1C4457978();
                  sub_1C441E898();
LABEL_48:
                  sub_1C443E214();
                  v22 = sub_1C4D0DD9C();

                  if ((v22 & 1) == 0)
                  {
                    switch(*(v2 + 34))
                    {
                      case 3:
                      case 5:
                        sub_1C4457978();
                        goto LABEL_52;
                      case 4:
                        goto LABEL_50;
                      default:
LABEL_52:
                        v23 = sub_1C444AE08();

                        if (v23)
                        {
                          goto LABEL_53;
                        }

                        goto LABEL_58;
                    }
                  }

                  break;
                default:
LABEL_50:

                  break;
              }
            }

LABEL_53:
            if ((*(v2 + 32) & 1) != 0 || (sub_1C444C41C(v0[27]), v13))
            {
              v24 = sub_1C441299C();
              v28 = sub_1C4CDF950(v24, v25, v26, v27);
              sub_1C44EC878(v28, v29);
              if (v31)
              {
                v48 = v0[32];
                sub_1C43FBDBC();
                v49 = swift_allocObject();
                sub_1C4485C68(v49);
                v50 = sub_1C4F00968();
                v51 = sub_1C4F01CB8();
                *(sub_1C440F54C() + 16) = 0;
                v52 = sub_1C440F54C();
                sub_1C44A3AFC(v52);
                sub_1C44042C4();
                v53 = swift_allocObject();
                sub_1C44412E8(v53);
                sub_1C44042C4();
                swift_allocObject();
                sub_1C4433EE0();
                *(v54 + 16) = v55;
                *(v54 + 24) = v53;
                sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
                inited = swift_initStackObject();
                v57 = sub_1C444B3D0(inited, xmmword_1C4F0C890);
                v57[3].n128_u64[0] = sub_1C44549F4;
                v57[3].n128_u64[1] = 1;
                v57[4].n128_u64[0] = sub_1C4716C58;
                v57[4].n128_u64[1] = v1;
                swift_setDeallocating();

                sub_1C49E1614();
                if (os_log_type_enabled(v50, v51))
                {
                  v58 = sub_1C43FD084();
                  *v58 = 134217984;
                  v59 = *(v28 + 16);

                  *(v58 + 4) = v59;

                  sub_1C44F0964(&dword_1C43F8000, v60, v61, "ViewMaintenanceUpdateListener: Performing updates for %ld entities");
                  sub_1C43FBE2C();
                }

                else
                {
                }

                v62 = swift_task_alloc();
                v0[43] = v62;
                *v62 = v0;
                sub_1C440C0A8(v62);
                sub_1C4D0DC80();

                sub_1C4C7DA2C(v63);
                return;
              }

              v32 = v30;

              sub_1C4CDF674(v32);
            }

            else
            {
              *(v2 + 34) = 1;
            }

LABEL_58:
            v33 = v0[39];
            v2 = v0[40];
            v34 = v0[37];

            if (v2 == v34)
            {
              goto LABEL_60;
            }
          }

LABEL_116:
          __break(1u);
          break;
        }
      }

LABEL_60:
      v35 = v0[27];
      v36 = sub_1C444E0CC();
      v37 = v36;
      v38 = *(v36 + 16);
      if (!v38)
      {
        v47 = 0;
LABEL_80:
        v65 = v0[27];

        v66 = *(v65 + 72);
        v67 = sub_1C4428DA0();
        v68 = 0;
        do
        {
          while (1)
          {
            if (v68 == v67)
            {
              v73 = v0[27];
              v74 = sub_1C444E0CC();
              v75 = v74;
              v76 = *(v74 + 16);
              if (v76)
              {
                v77 = 0;
                v78 = v74 + 32;
                while (1)
                {
                  if (v77 >= *(v75 + 16))
                  {
                    goto LABEL_120;
                  }

                  sub_1C442E860(v78, (v0 + 22));
                  ++v77;
                  v79 = v0[25];
                  v80 = v0[26];
                  sub_1C4409678(v0 + 22, v79);
                  v81 = sub_1C44255A4(v80);
                  v82(v81, v80);
                  sub_1C44693BC();
                  switch(v83)
                  {
                    case 1:
                      goto LABEL_98;
                    case 2:

                      sub_1C440962C(v0 + 22);
                      goto LABEL_103;
                    case 3:
                      sub_1C44081A8();
                      goto LABEL_98;
                    case 4:
                      sub_1C44A1F70();
                      goto LABEL_98;
                    case 5:
                      sub_1C4413C84();
                      goto LABEL_98;
                    default:
                      sub_1C440CB64();
                      sub_1C4D0DF10(v84);
LABEL_98:
                      sub_1C447E3BC();
                      sub_1C4482D4C();
                      sub_1C440962C(v0 + 22);
                      if (v79)
                      {
LABEL_103:

                        goto LABEL_104;
                      }

                      v78 += 40;
                      if (v76 == v77)
                      {
                        goto LABEL_100;
                      }

                      break;
                  }
                }
              }

LABEL_100:

              if ((v47 & 1) == 0)
              {
                v85 = v0[27];
                sub_1C4D0E5C0();
              }

LABEL_105:
              sub_1C43FC1B0();
              sub_1C4D0DC80();

              __asm { BRAA            X1, X16 }
            }

            if ((v66 & 0xC000000000000001) != 0)
            {
              break;
            }

            if ((v68 & 0x8000000000000000) != 0)
            {
              goto LABEL_114;
            }

            if (v68 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_115;
            }

            v69 = *(v66 + 32 + 8 * v68++);
            if (*(v69 + 32))
            {
              goto LABEL_104;
            }
          }

          v70 = MEMORY[0x1C6940F90](v68, v66);
          if (__OFADD__(v68++, 1))
          {
            goto LABEL_121;
          }

          v72 = *(v70 + 32);
          swift_unknownObjectRelease();
        }

        while ((v72 & 1) == 0);
LABEL_104:
        if (v47)
        {
          goto LABEL_105;
        }

        v88 = v0[32];
        v89 = sub_1C4F00968();
        v90 = sub_1C4F01CB8();
        if (sub_1C4402B64(v90))
        {
          v91 = sub_1C43FCED0();
          sub_1C43FBD24(v91);
          sub_1C43FFFD8(&dword_1C43F8000, v92, v93, "ViewMaintenanceUpdateListener: Performing index maintenance");
          sub_1C43FE9D4();
        }

        v94 = swift_task_alloc();
        v0[38] = v94;
        *v94 = v0;
        sub_1C441C604(v94);
        sub_1C4D0DC80();

        sub_1C4C7DE68();
        return;
      }

      v39 = 0;
      v40 = v36 + 32;
      v41 = v38 - 1;
      while (2)
      {
        if (v39 < *(v37 + 16))
        {
          sub_1C442E860(v40, (v0 + 17));
          v42 = v0[21];
          sub_1C4409678(v0 + 17, v0[20]);
          v43 = sub_1C44255A4(v42);
          v44(v43, v42);
          sub_1C44693BC();
          switch(v45)
          {
            case 1:
              goto LABEL_68;
            case 2:
              sub_1C43FE1B4();
              goto LABEL_68;
            case 3:
              sub_1C44081A8();
              goto LABEL_68;
            case 4:

              sub_1C440962C(v0 + 17);
              v47 = 1;
              goto LABEL_80;
            case 5:
              sub_1C4413C84();
              goto LABEL_68;
            default:
              sub_1C440CB64();
              sub_1C4D0DF10(v46);
LABEL_68:
              v47 = sub_1C444AE08();

              sub_1C440962C(v0 + 17);
              if ((v47 & 1) == 0)
              {
                v40 += 40;
                v13 = v41 == v39++;
                if (!v13)
                {
                  continue;
                }
              }

              goto LABEL_80;
          }
        }

        break;
      }

      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1C6940F90](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_118;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    if (!__OFADD__(v4, 1))
    {
      switch(*(v5 + 34))
      {
        case 1:
          goto LABEL_12;
        case 2:
          sub_1C440B7CC();
          goto LABEL_12;
        case 3:
          sub_1C4D0DEA8();
          sub_1C442E6F8();
          goto LABEL_12;
        case 4:
          sub_1C440CB64();
          goto LABEL_12;
        case 5:
          sub_1C4D0DEA8();
          sub_1C441E898();
LABEL_12:
          sub_1C443E214();
          v1 = v6 + 4;
          v7 = sub_1C4F02938();

          if (v7)
          {
            goto LABEL_30;
          }

          switch(*(v5 + 34))
          {
            case 1:
              v8 = 1869506409;
              goto LABEL_17;
            case 2:
              v8 = 1634036835;
LABEL_17:
              v1 = v8 | 0x64657200000000;
              break;
            case 3:
              sub_1C4D0DEA8();
              v9 = 0x61636E757274;
              goto LABEL_19;
            case 4:
              goto LABEL_29;
            case 5:
              sub_1C4D0DEA8();
              v9 = 0x656C706D6F63;
LABEL_19:
              v1 = v9 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
              break;
            default:
              break;
          }

          v10 = sub_1C444AE08();

          ++v4;
          if (v10)
          {
            goto LABEL_31;
          }

          continue;
        default:
LABEL_29:

LABEL_30:

          goto LABEL_31;
      }
    }

    break;
  }

  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
}

uint64_t sub_1C4D0CD58()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 304);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  if (v0)
  {
    sub_1C43FBDA0();

    return v6();
  }

  else
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1C4D0CE70()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 216);
  sub_1C4D0E5C0();
  sub_1C43FC1B0();

  return v2();
}

uint64_t sub_1C4D0CEC8()
{
  sub_1C43FCF70();
  v2 = *v1;
  sub_1C43FBE64();
  *v4 = v3;
  v5 = *(v2 + 344);
  *v4 = *v1;
  *(v3 + 352) = v0;

  v6 = *(v2 + 336);

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C4D0CFF0()
{
  v2 = *(v0 + 312);
  sub_1C4CDF41C(*(v0 + 328));
  sub_1C44C04C4();
  while (1)
  {
    v3 = *(v0 + 312);
    v4 = *(v0 + 320);
    v5 = *(v0 + 296);

    if (v4 == v5)
    {
      break;
    }

    v7 = *(v0 + 320);
    v8 = *(v0 + 288);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1C6940F90](*(v0 + 320));
    }

    else
    {
      sub_1C446090C(v6, v8);
      if (v7 >= v10)
      {
        goto LABEL_85;
      }

      sub_1C447F720(v9 + 8 * v7);
    }

    *(v0 + 312) = v4;
    *(v0 + 320) = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      return;
    }

    sub_1C4458820();
    v13 = v13 && v11 == v12;
    if (v13)
    {
      switch(*(v4 + 34))
      {
        case 1:
          goto LABEL_18;
        case 2:
          sub_1C440B7CC();
          goto LABEL_18;
        case 3:
          sub_1C4457978();
          sub_1C442E6F8();
          goto LABEL_18;
        case 4:
          sub_1C440CB64();
          goto LABEL_18;
        case 5:
          sub_1C4457978();
          sub_1C441E898();
LABEL_18:
          v1 = sub_1C4D0DD9C();

          if ((v1 & 1) == 0)
          {
            switch(*(v4 + 34))
            {
              case 3:
              case 5:
                sub_1C4457978();
                goto LABEL_22;
              case 4:
                goto LABEL_20;
              default:
LABEL_22:
                sub_1C445145C();
                v14 = sub_1C4851C38();

                if (v14)
                {
                  goto LABEL_23;
                }

                continue;
            }
          }

          break;
        default:
LABEL_20:

          break;
      }
    }

LABEL_23:
    if ((*(v4 + 32) & 1) != 0 || (sub_1C444C41C(*(v0 + 216)), v13))
    {
      v15 = sub_1C441299C();
      v19 = sub_1C4CDF950(v15, v16, v17, v18);
      sub_1C44EC878(v19, v20);
      if (v22)
      {
        v37 = *(v0 + 256);
        sub_1C43FBDBC();
        v38 = swift_allocObject();
        sub_1C4485C68(v38);
        v39 = sub_1C4F00968();
        v40 = sub_1C4F01CB8();
        *(sub_1C440F54C() + 16) = 0;
        v41 = sub_1C440F54C();
        sub_1C44A3AFC(v41);
        sub_1C44042C4();
        v42 = swift_allocObject();
        sub_1C44412E8(v42);
        sub_1C44042C4();
        swift_allocObject();
        sub_1C4433EE0();
        *(v43 + 16) = v44;
        *(v43 + 24) = v42;
        sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
        inited = swift_initStackObject();
        v46 = sub_1C444B3D0(inited, xmmword_1C4F0C890);
        v46[3].n128_u64[0] = sub_1C44549F4;
        v46[3].n128_u64[1] = v1;
        v46[4].n128_u64[0] = sub_1C4716C58;
        v46[4].n128_u64[1] = 1;
        swift_setDeallocating();

        sub_1C49E1614();
        if (os_log_type_enabled(v39, v40))
        {
          v47 = sub_1C43FD084();
          *v47 = 134217984;
          v48 = *(v19 + 16);

          *(v47 + 4) = v48;

          sub_1C44F0964(&dword_1C43F8000, v49, v50, "ViewMaintenanceUpdateListener: Performing updates for %ld entities");
          sub_1C43FBE2C();
        }

        else
        {
        }

        v51 = swift_task_alloc();
        *(v0 + 344) = v51;
        *v51 = v0;
        sub_1C440C0A8();
        sub_1C4D0DC80();

        sub_1C4C7DA2C(v52);
        return;
      }

      v23 = v21;

      sub_1C4CDF674(v23);
    }

    else
    {
      *(v4 + 34) = 1;
    }
  }

  v24 = *(v0 + 216);
  v25 = sub_1C444E0CC();
  v26 = v25;
  v27 = *(v25 + 16);
  if (v27)
  {
    v28 = 0;
    v29 = v25 + 32;
    v30 = v27 - 1;
    while (2)
    {
      if (v28 < *(v26 + 16))
      {
        sub_1C442E860(v29, v0 + 136);
        v31 = *(v0 + 160);
        v32 = *(v0 + 168);
        sub_1C4409678((v0 + 136), v31);
        sub_1C4413FE4(v32);
        v33(v31, v32);
        sub_1C44693BC();
        switch(v34)
        {
          case 1:
            goto LABEL_36;
          case 2:
            sub_1C43FE1B4();
            goto LABEL_36;
          case 3:
            sub_1C44081A8();
            goto LABEL_36;
          case 4:

            sub_1C440962C((v0 + 136));
            v36 = 1;
            goto LABEL_48;
          case 5:
            sub_1C4413C84();
            goto LABEL_36;
          default:
            sub_1C440CB64();
            sub_1C4D0DF10(v35);
LABEL_36:
            sub_1C445145C();
            v36 = sub_1C4851C38();

            sub_1C440962C((v0 + 136));
            if ((v36 & 1) == 0)
            {
              v29 += 40;
              v13 = v30 == v28++;
              if (!v13)
              {
                continue;
              }
            }

            goto LABEL_48;
        }
      }

      goto LABEL_82;
    }
  }

  v36 = 0;
LABEL_48:
  v54 = *(v0 + 216);

  v55 = *(v54 + 72);
  v56 = sub_1C4428DA0();
  v57 = 0;
  do
  {
    while (1)
    {
      if (v57 == v56)
      {
        v61 = *(v0 + 216);
        v62 = sub_1C444E0CC();
        v63 = v62;
        v83 = *(v62 + 16);
        if (v83)
        {
          v64 = 0;
          v65 = v62 + 32;
          while (1)
          {
            if (v64 >= *(v63 + 16))
            {
              goto LABEL_86;
            }

            sub_1C442E860(v65, v0 + 176);
            ++v64;
            v66 = *(v0 + 200);
            v67 = *(v0 + 208);
            sub_1C4409678((v0 + 176), v66);
            sub_1C4413FE4(v67);
            v68(v66, v67);
            sub_1C44693BC();
            switch(v69)
            {
              case 1:
                goto LABEL_66;
              case 2:

                sub_1C440962C((v0 + 176));
                goto LABEL_71;
              case 3:
                sub_1C44081A8();
                goto LABEL_66;
              case 4:
                sub_1C44A1F70();
                goto LABEL_66;
              case 5:
                sub_1C4413C84();
                goto LABEL_66;
              default:
                sub_1C4D0DF10(0xD000000000000010);
LABEL_66:
                v70 = sub_1C447E3BC();

                sub_1C440962C((v0 + 176));
                if (v70)
                {
LABEL_71:

                  goto LABEL_72;
                }

                v65 += 40;
                if (v83 == v64)
                {
                  goto LABEL_68;
                }

                break;
            }
          }
        }

LABEL_68:

        if ((v36 & 1) == 0)
        {
          v71 = *(v0 + 216);
          sub_1C4D0E5C0();
        }

LABEL_73:
        sub_1C43FC1B0();
        sub_1C4D0DC80();

        __asm { BRAA            X1, X16 }
      }

      if ((v55 & 0xC000000000000001) != 0)
      {
        break;
      }

      if ((v57 & 0x8000000000000000) != 0)
      {
        goto LABEL_83;
      }

      if (v57 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_84;
      }

      v58 = *(v55 + 32 + 8 * v57++);
      if (*(v58 + 32))
      {
        goto LABEL_72;
      }
    }

    v59 = MEMORY[0x1C6940F90](v57, v55);
    if (__OFADD__(v57++, 1))
    {
      goto LABEL_87;
    }

    v82 = *(v59 + 32);
    swift_unknownObjectRelease();
  }

  while ((v82 & 1) == 0);
LABEL_72:
  if (v36)
  {
    goto LABEL_73;
  }

  v74 = *(v0 + 256);
  v75 = sub_1C4F00968();
  v76 = sub_1C4F01CB8();
  if (sub_1C4402B64(v76))
  {
    v77 = sub_1C43FCED0();
    sub_1C43FBD24(v77);
    sub_1C43FFFD8(&dword_1C43F8000, v78, v79, "ViewMaintenanceUpdateListener: Performing index maintenance");
    sub_1C43FE9D4();
  }

  v80 = swift_task_alloc();
  *(v0 + 304) = v80;
  *v80 = v0;
  sub_1C441C604(v80);
  sub_1C4D0DC80();

  sub_1C4C7DE68();
}