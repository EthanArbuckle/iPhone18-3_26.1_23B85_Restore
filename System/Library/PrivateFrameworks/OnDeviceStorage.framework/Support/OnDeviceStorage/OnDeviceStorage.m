uint64_t sub_100001A90(int *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_100025C60(a2, 0);
  v7 = strdup(a4);
  sub_100025C68(a2, v7, *a1, a1[1]);
  return 0;
}

uint64_t sub_100001AE8(uint64_t a1)
{
  v184 = __chkstk_darwin(a1);
  v185 = v1;
  v204 = 0u;
  v205 = 0u;
  if ((atomic_load_explicit(&qword_10016DB90, memory_order_acquire) & 1) == 0)
  {
    sub_10011C04C();
  }

  v199 = xmmword_10016DB98;
  v200 = qword_10016DBA8;
  v201 = 0;
  v202 = 0;
  v203 = 0;
  sub_10000644C(&v201, qword_10016DBB0, qword_10016DBB8, (qword_10016DBB8 - qword_10016DBB0) >> 3);
  v2 = 0x1FFFFFFFFFFFFB50;
  do
  {
    v3 = &v217[v2];
    *(v3 + 1203) = 0uLL;
    v3[1205] = 0;
    v2 += 6;
  }

  while (v2 * 8);
  v195 = 0;
  v196 = 0;
  v197 = 0;
  v209 = 0;
  v210 = 0;
  v211 = 0;
  memset(v214, 0, 24);
  v216[1] = 0;
  v215 = 0;
  v216[0] = 0;
  v192 = v208;
  size = 128;
  v199 = 0uLL;
  v200 = 0;
  memset(v217, 0, sizeof(v217));
  sub_100006628(v218, v201, v202, (v202 - v201) >> 3);
  v5 = 0;
  v6 = 0;
  v220[0] = 0;
  v7 = v217;
  v8 = v219;
  v9 = -2;
  while (1)
  {
    if (v5 == 75)
    {
      v166 = 0;
      v165 = &v220[v6 / 2];
      goto LABEL_332;
    }

    v10 = word_10011F9A8[v5];
    if (v10 == -568)
    {
      goto LABEL_22;
    }

    if (v9 == -2)
    {
      v9 = sub_1000073DC(&v204, &v199, v185);
    }

    if (v9 < 1)
    {
      v11 = 0;
      v9 = 0;
    }

    else
    {
      if (v9 == 256)
      {
        v212 = v199;
        v213 = v200;
        sub_100006628(v214, v201, v202, (v202 - v201) >> 3);
        v9 = &stru_100000100.sectname[1];
        if (!v6)
        {
          goto LABEL_311;
        }

        goto LABEL_328;
      }

      v11 = v9 > 0x1B8 ? 2 : byte_10011FED2[v9];
    }

    v12 = v11 + v10;
    if ((v11 + v10) > 0x3D8 || v11 != word_10012008C[v12])
    {
LABEL_22:
      v16 = word_100120FF0[v5];
      if (word_100120FF0[v5])
      {
        v187 = v9;
        goto LABEL_24;
      }

      v165 = &v220[v6 / 2];
      if (v9 == -2)
      {
        v167 = -2;
        goto LABEL_316;
      }

LABEL_313:
      if (v9 > 0x1B8)
      {
        v167 = 2;
      }

      else
      {
        v167 = byte_10011FED2[v9];
      }

LABEL_316:
      __p[0] = v165;
      __p[1] = v167;
      *&v207 = &v199;
      v168 = sub_100005598(&size, &v192, __p);
      if (v168 == -1)
      {
        if (v192 != v208)
        {
          free(v192);
        }

        v171 = malloc_type_malloc(size, 0x100004077774924uLL);
        v192 = v171;
        if (v171)
        {
          v170 = sub_100005598(&size, &v192, __p);
          goto LABEL_325;
        }

        v192 = v208;
        size = 128;
        v170 = -2;
      }

      else
      {
        v170 = v168;
        if (!v168)
        {
          v171 = v192;
LABEL_325:
          sub_100001A90(&v199, v184, v169, v171);
          if (v170 != -2)
          {
            v212 = v199;
            v213 = v200;
            sub_100006628(v214, v201, v202, (v202 - v201) >> 3);
            if (!v6)
            {
              goto LABEL_311;
            }

            goto LABEL_328;
          }

LABEL_326:
          sub_100001A90(&v199, v184, v4, "memory exhausted");
          v166 = 2;
          goto LABEL_332;
        }
      }

      v171 = "syntax error";
      goto LABEL_325;
    }

    v13 = word_10012083E[v12];
    if (v13 <= 0)
    {
      break;
    }

    v14 = v205;
    v8[2] = v204;
    v8[3] = v14;
    v15 = v7 + 3;
    v7[3] = v199;
    *(v7 + 8) = v200;
    if (v7 + 3 != &v199)
    {
      sub_100006628(v7 + 9, v201, v202, (v202 - v201) >> 3);
    }

    v9 = -2;
    v8 += 2;
LABEL_305:
    v163 = v6 + 2;
    v220[v6 / 2 + 1] = v13;
    v5 = v13;
    v7 = v15;
    v164 = v6 <= 395;
    v6 += 2;
    if (!v164)
    {
      v165 = (v220 + v163);
      goto LABEL_326;
    }
  }

  if (v13 == -360)
  {
    v165 = &v220[v6 / 2];
    goto LABEL_313;
  }

  v187 = v9;
  v16 = -v13;
LABEL_24:
  v17 = byte_10012151A[v16];
  v18 = &v8[2 * (1 - v17)];
  v19 = *v18;
  v188 = *(v18 + 1);
  v198 = v18[1];
  if (v17)
  {
    *&v20 = *&v7[-3 * v17 + 3];
    v21 = *(v7 + 1);
  }

  else
  {
    *&v20 = *(v7 + 1);
  }

  *(&v20 + 1) = *(v7 + 1);
  v193 = v20;
  v213 = v194;
  v212 = v20;
  sub_100006628(v214, v195, v196, (v196 - v195) >> 3);
  v22 = v19;
  v23 = v19 >> 8;
  v24 = HIDWORD(v19);
  v186 = v16;
  switch(v16)
  {
    case 2:
      v148 = *(v8 - 4);
      v149 = *v148;
      v150 = v148[1];
      while (v149 != v150)
      {
        sub_100025A38(v184, *v149++);
      }

      v152 = v195;
      v151 = v196;
      if (v195 != v196)
      {
        v153 = 0;
        do
        {
          v154 = *v152;
          if (*v152)
          {
            *(v154 + 80) = v153;
            sub_100025C74(v184, v154);
            ++v153;
          }

          ++v152;
        }

        while (v152 != v151);
      }

      v155 = *(v8 - 4);
      if (!v155)
      {
        goto LABEL_298;
      }

      v156 = *v155;
      if (*v155)
      {
        *(v155 + 8) = v156;
        operator delete(v156);
      }

      goto LABEL_290;
    case 3:
      *(*v8 + 8) = SHIDWORD(v200);
      HIDWORD(v200) = 0;
      operator new();
    case 4:
      *(*v8 + 8) = SHIDWORD(v200);
      HIDWORD(v200) = 0;
      sub_100005310(*(v8 - 8), v8);
      goto LABEL_277;
    case 5:
    case 6:
      v26 = *(v8 - 4);
      v22 = v26;
      v23 = v26 >> 8;
      v24 = HIDWORD(v26);
      *(v26 + 16) = *v8;
      goto LABEL_298;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 58:
    case 59:
    case 84:
    case 101:
    case 134:
    case 150:
    case 152:
    case 153:
    case 157:
    case 159:
    case 177:
    case 246:
    case 315:
    case 325:
    case 340:
      v25 = *v8;
      goto LABEL_278;
    case 23:
    case 79:
    case 121:
    case 124:
    case 136:
    case 137:
    case 192:
      goto LABEL_139;
    case 24:
    case 80:
    case 122:
    case 151:
    case 154:
    case 156:
    case 158:
    case 160:
    case 168:
    case 174:
    case 178:
    case 245:
    case 247:
    case 316:
    case 320:
    case 324:
    case 326:
    case 339:
      v24 = 0;
      goto LABEL_30;
    case 25:
      operator new();
    case 26:
    case 57:
    case 127:
    case 162:
    case 176:
    case 180:
    case 310:
    case 342:
      sub_100005310(*(v8 - 8), v8);
      goto LABEL_277;
    case 27:
      sub_10000EC5C();
    case 28:
      sub_10000EC5C();
    case 29:
      operator new();
    case 30:
      operator new();
    case 31:
      operator new();
    case 34:
      operator new();
    case 36:
      operator new();
    case 37:
      operator new();
    case 38:
      operator new();
    case 39:
      operator new();
    case 40:
      v99 = *v8;
      if (!strcasecmp(*v8, "csv"))
      {
        v22 = 0;
      }

      else if (!strcasecmp(v99, "tbl"))
      {
        v22 = 1;
      }

      else
      {
        if (strcasecmp(v99, "binary") && strcasecmp(v99, "bin"))
        {
          free(v99);
          v183 = "File type is unknown.";
          goto LABEL_357;
        }

        v22 = 2;
      }

      free(v99);
LABEL_31:
      v23 = 0;
      goto LABEL_298;
    case 41:
      v27 = *v8;
      v28 = strdup(*(*v8 + 48));
      v22 = v28;
      v23 = v28 >> 8;
      v24 = v28 >> 32;
      (*(*v27 + 8))(v27);
      goto LABEL_298;
    case 42:
      v22 = *v8;
      v23 = *v8 >> 8;
      goto LABEL_298;
    case 43:
    case 88:
    case 113:
    case 263:
    case 269:
    case 334:
    case 351:
    case 352:
      v23 = 0;
      v22 = 3;
      goto LABEL_298;
    case 44:
      operator new();
    case 45:
      operator new();
    case 46:
      operator new();
    case 47:
      operator new();
    case 48:
      operator new();
    case 49:
      operator new();
    case 50:
      operator new();
    case 51:
      operator new();
    case 52:
      operator new();
    case 53:
      operator new();
    case 54:
    case 98:
    case 144:
    case 147:
      goto LABEL_35;
    case 55:
    case 99:
    case 145:
    case 148:
      v22 = 0;
      goto LABEL_298;
    case 56:
      operator new();
    case 60:
      operator new();
    case 61:
      sub_100023D68(__p, 1, 0, 0, 0);
      goto LABEL_274;
    case 62:
      sub_100023D68(__p, 2, 0, 0, 0);
      goto LABEL_274;
    case 63:
      sub_100023D68(__p, 3, *(v8 - 4), 0, 0);
      goto LABEL_274;
    case 64:
    case 78:
      sub_100023D68(__p, 15, *(v8 - 4), 0, 0);
      goto LABEL_274;
    case 65:
      sub_100023D68(__p, 4, 0, 0, 0);
      goto LABEL_274;
    case 66:
    case 77:
      sub_100023D68(__p, 5, 0, 0, 0);
      goto LABEL_274;
    case 67:
      sub_100023D68(__p, 6, 0, **v8, *(*v8 + 8));
      v188 = __p[1];
      v22 = LOBYTE(__p[0]);
      v23 = LODWORD(__p[0]) >> 8;
      v24 = __p[0] >> 32;
      v198 = v207;
      if (*v8)
      {
        goto LABEL_290;
      }

      goto LABEL_298;
    case 68:
      sub_100023D68(__p, 7, 0, 0, 0);
      goto LABEL_274;
    case 69:
      sub_100023D68(__p, 8, 0, 0, 0);
      goto LABEL_274;
    case 70:
    case 71:
      sub_100023D68(__p, 9, 0, 0, 0);
      goto LABEL_274;
    case 72:
      sub_100023D68(__p, 10, 0, 0, 0);
      goto LABEL_274;
    case 73:
      sub_100023D68(__p, 11, 0, 0, 0);
      goto LABEL_274;
    case 74:
      sub_100023D68(__p, 12, 0, 0, 0);
      goto LABEL_274;
    case 75:
      sub_100023D68(__p, 13, 0, 0, 0);
      goto LABEL_274;
    case 76:
      sub_100023D68(__p, 14, 0, *v8, 0);
LABEL_274:
      v188 = __p[1];
      v22 = LOBYTE(__p[0]);
      v23 = LODWORD(__p[0]) >> 8;
      v24 = __p[0] >> 32;
      v198 = v207;
      goto LABEL_298;
    case 81:
      operator new();
    case 82:
      operator new();
    case 83:
      operator new();
    case 85:
      operator new();
    case 86:
      operator new();
    case 87:
      sub_100006B64(*(v8 - 4), v8);
      goto LABEL_139;
    case 89:
    case 114:
    case 264:
    case 270:
    case 356:
      v23 = 0;
      v22 = 4;
      goto LABEL_298;
    case 90:
    case 112:
    case 253:
    case 262:
    case 268:
    case 333:
    case 337:
    case 349:
    case 350:
      v23 = 0;
      v22 = 2;
      goto LABEL_298;
    case 91:
    case 111:
    case 165:
    case 252:
    case 261:
    case 267:
    case 332:
    case 335:
    case 353:
    case 354:
    case 355:
      v23 = 0;
LABEL_35:
      v22 = 1;
      goto LABEL_298;
    case 92:
      operator new();
    case 93:
      operator new();
    case 94:
      operator new();
    case 95:
      operator new();
    case 96:
      operator new();
    case 97:
      operator new();
    case 100:
      operator new();
    case 102:
      operator new();
    case 103:
      operator new();
    case 104:
      operator new();
    case 105:
      operator new();
    case 106:
      operator new();
    case 107:
      operator new();
    case 108:
      operator new();
    case 109:
      operator new();
    case 110:
      operator new();
    case 115:
    case 265:
    case 271:
      v23 = 0;
      v22 = 5;
      goto LABEL_298;
    case 116:
      operator new();
    case 117:
      operator new();
    case 118:
    case 328:
      sub_100005310(*(v8 - 4), v8);
LABEL_139:
      v25 = *(v8 - 4);
      goto LABEL_278;
    case 119:
      operator new();
    case 120:
      operator new();
    case 123:
      sub_100006850(*(v8 - 16), *(*(v8 - 16) + 8), **(v8 - 4), *(*(v8 - 4) + 8), (*(*(v8 - 4) + 8) - **(v8 - 4)) >> 3);
      v54 = *(v8 - 4);
      if (v54)
      {
        v55 = *v54;
        if (*v54)
        {
          *(v54 + 8) = v55;
          operator delete(v55);
        }

        operator delete();
      }

      v25 = *(v8 - 16);
      goto LABEL_278;
    case 125:
      operator new();
    case 126:
      operator new();
    case 128:
      operator new();
    case 129:
    case 130:
      v22 = *v8;
      v23 = *v8 >> 8;
      v24 = HIDWORD(*v8);
      *(*v8 + 88) = *(v8 - 4);
      goto LABEL_298;
    case 131:
      v62 = *(v8 - 16);
      v63 = *(v62 + 72);
      if (!v63)
      {
        operator new();
      }

      sub_100005310(v63, v8 - 12);
      v22 = v62;
      v23 = v62 >> 8;
      v24 = HIDWORD(v62);
      v64 = *(*(v62 + 72) + 8);
      *(*(v64 - 8) + 16) = *(v8 - 8);
      *(*(v64 - 8) + 24) = *(v8 - 4);
      *(*(v64 - 8) + 32) = *v8;
      *(v62 + 88) = *(v8 - 20);
      goto LABEL_298;
    case 135:
      v34 = *(v8 - 8);
      v35 = *(v34 + 72);
      if (!v35)
      {
        operator new();
      }

      sub_100005310(v35, v8 - 4);
      v22 = v34;
      v23 = v34 >> 8;
      v24 = HIDWORD(v34);
      *(*(*(*(v34 + 72) + 8) - 8) + 16) = *v8;
      goto LABEL_298;
    case 138:
      v49 = *(v8 - 12);
      *(v49 + 80) = *(v8 - 8);
      v50 = *(v8 - 4);
      if (v50)
      {
        v51 = *(v49 + 96);
        if (v51)
        {
          (*(*v51 + 8))(v51);
          v50 = *(v8 - 4);
        }

        *(v49 + 96) = v50;
      }

      v22 = v49;
      v23 = v49 >> 8;
      v24 = HIDWORD(v49);
      if (*v8)
      {
        *(v49 + 104) = *v8;
      }

      goto LABEL_298;
    case 139:
      v38 = *(v8 - 20);
      v39 = *(v38 + 72);
      if (!v39)
      {
        operator new();
      }

      sub_100005310(v39, v8 - 16);
      v22 = v38;
      v23 = v38 >> 8;
      v24 = HIDWORD(v38);
      v40 = *(*(v38 + 72) + 8);
      *(*(v40 - 8) + 16) = *(v8 - 12);
      *(*(v40 - 8) + 24) = *(v8 - 8);
      *(*(v40 - 8) + 32) = *(v8 - 4);
      *(v38 + 104) = *v8;
      goto LABEL_298;
    case 140:
      v29 = *(v8 - 4);
      v22 = v29;
      v23 = v29 >> 8;
      v24 = HIDWORD(v29);
      *(v29 + 12) = *v8;
      goto LABEL_298;
    case 141:
      operator new();
    case 142:
      operator new();
    case 143:
      operator new();
    case 146:
      operator new();
    case 155:
      operator new();
    case 161:
      operator new();
    case 163:
      operator new();
    case 164:
    case 166:
    case 251:
    case 331:
    case 336:
    case 348:
    case 357:
LABEL_30:
      v22 = 0;
      goto LABEL_31;
    case 167:
      operator new();
    case 169:
      operator new();
    case 170:
      operator new();
    case 171:
      operator new();
    case 172:
      operator new();
    case 173:
      operator new();
    case 175:
      operator new();
    case 179:
      operator new();
    case 182:
      v79 = *(v8 - 12);
      v80 = *(v8 - 1);
      *__p = *(v8 - 2);
      v207 = v80;
      sub_1000102FC();
    case 183:
      v83 = *v8;
      if (*(*v8 + 8) != 7)
      {
        v22 = *v8;
        v23 = v83 >> 8;
        v24 = HIDWORD(v83);
LABEL_298:
        v157 = &v8[-2 * v17];
        v158 = &v7[-3 * v17];
        *(v157 + 4) = v22 | (v23 << 8) | (v24 << 32);
        *(v157 + 5) = v188;
        v8 = v157 + 2;
        v8[1] = v198;
        v159 = v193;
        v15 = v158 + 3;
        *(v158 + 8) = v194;
        v158[3] = v159;
        if (v158 + 3 != &v193)
        {
          sub_100006628(v158 + 9, v195, v196, (v196 - v195) >> 3);
        }

        v6 -= 2 * v17;
        v160 = word_100121686[v186] - 203;
        v161 = (v220[v6 / 2] + word_10012195C[v160]);
        if (v161 <= 0x3D8 && word_10012008C[v161] == v220[v6 / 2])
        {
          v162 = &word_10012083E[v161];
        }

        else
        {
          v162 = &unk_100121A74 + 2 * v160;
        }

        v13 = *v162;
        v9 = v187;
        goto LABEL_305;
      }

      (*(*v83 + 8))(v83);
      v183 = "Parameter ? is not a valid literal.";
LABEL_357:
      sub_100001A90(&v193, v184, v182, v183);
      v9 = v187;
LABEL_358:
      v8 -= 2 * v17;
      v6 -= 2 * v17;
      v7 -= 3 * v17;
      v5 = v220[v6 / 2];
      if (!v6)
      {
LABEL_311:
        v165 = v220;
        goto LABEL_331;
      }

      do
      {
LABEL_328:
        v172 = *v7;
        v213 = *(v7 + 2);
        v212 = v172;
        if (v7 != &v212)
        {
          sub_100006628(v214, *(v7 + 3), *(v7 + 4), (*(v7 + 4) - *(v7 + 3)) >> 3);
        }

        sub_10000586C(word_100121B8C[v5], v8);
        v8 -= 2;
        v165 = v220;
        v7 -= 3;
        v5 = *&v219[v6 + 6398];
        v6 -= 2;
      }

      while (v6);
LABEL_331:
      v166 = 1;
LABEL_332:
      if (v9 != -2)
      {
        if (v9 > 0x1B8)
        {
          v173 = 2;
        }

        else
        {
          v173 = byte_10011FED2[v9];
        }

        sub_10000586C(v173, &v204);
      }

      for (; v165 != v220; --v165)
      {
        sub_10000586C(word_100121B8C[*v165], v8);
        v8 -= 2;
      }

      if (v192 != v208)
      {
        free(v192);
      }

      for (i = 0; i != -18; i -= 6)
      {
        v175 = v216[i - 1];
        if (v175)
        {
          v216[i] = v175;
          operator delete(v175);
        }
      }

      if (v195)
      {
        v196 = v195;
        operator delete(v195);
      }

      v176 = 1200;
      do
      {
        v177 = v216[v176 - 1];
        if (v177)
        {
          v216[v176] = v177;
          operator delete(v177);
        }

        v176 -= 6;
      }

      while (v176 * 8);
      if (v201)
      {
        v202 = v201;
        operator delete(v201);
      }

      return v166;
    case 184:
      v101 = *v8;
      sub_10000ED1C();
    case 185:
      v88 = *v8;
      sub_10000ED1C();
    case 186:
      v100 = *(v8 - 4);
      v22 = v100;
      v23 = v100 >> 8;
      v24 = HIDWORD(v100);
      if (*v8)
      {
        *(v100 + 64) = **v8;
        **v8 = 0;
        if (*v8)
        {
          sub_100025430(*v8);
LABEL_290:
          operator delete();
        }
      }

      goto LABEL_298;
    case 202:
      v128 = *(v8 - 4);
      sub_10000FEF0();
    case 205:
      v30 = *v8;
      sub_10000ED1C();
    case 206:
      v33 = *v8;
      sub_10000ED1C();
    case 207:
      v84 = *(v8 - 4);
      sub_10000ED1C();
    case 208:
      v45 = *(v8 - 8);
      sub_10000ED1C();
    case 209:
      v108 = *(v8 - 12);
      sub_10000ED1C();
    case 211:
      v113 = *(v8 - 8);
      v114 = *v8;
      sub_10000EDE8();
    case 212:
      v81 = *(v8 - 8);
      v82 = *v8;
      sub_10000EDE8();
    case 213:
      v117 = *(v8 - 8);
      v118 = *v8;
      sub_10000EDE8();
    case 214:
      v106 = *(v8 - 8);
      v107 = *v8;
      sub_10000EDE8();
    case 215:
      v60 = *(v8 - 8);
      v61 = *v8;
      sub_10000EDE8();
    case 216:
      v67 = *(v8 - 8);
      v68 = *v8;
      sub_10000EDE8();
    case 217:
      v109 = *(v8 - 8);
      v110 = *v8;
      sub_10000EDE8();
    case 218:
      v124 = *(v8 - 12);
      v125 = *v8;
      sub_10000EDE8();
    case 219:
      v31 = *(v8 - 8);
      v32 = *v8;
      sub_10000EDE8();
    case 220:
      v36 = *(v8 - 8);
      v37 = *v8;
      sub_10000EDE8();
    case 221:
      v65 = *(v8 - 8);
      v66 = *v8;
      sub_10000EDE8();
    case 222:
      v72 = *(v8 - 8);
      v73 = *v8;
      sub_10000EDE8();
    case 223:
      v43 = *(v8 - 16);
      v44 = *(v8 - 4);
      sub_100010084();
    case 224:
      v47 = *(v8 - 20);
      v48 = *(v8 - 4);
      sub_100010084();
    case 225:
      v130 = *(v8 - 16);
      v131 = *(v8 - 4);
      sub_100010158();
    case 226:
      v132 = *(v8 - 20);
      v133 = *(v8 - 4);
      sub_100010158();
    case 227:
      v58 = *(v8 - 8);
      v59 = *(v8 - 4);
      sub_10000F1D4();
    case 228:
      v134 = *(v8 - 16);
      v135 = *(v8 - 12);
      v136 = *(v8 - 4);
      sub_10000F1D4();
    case 229:
      v138 = *(v8 - 4);
      sub_10000F1D4();
    case 230:
      v146 = *(v8 - 12);
      v147 = *(v8 - 4);
      sub_10000F1D4();
    case 231:
      v92 = *(v8 - 8);
      v93 = *v8;
      sub_10000F0C8();
    case 232:
      v143 = *(v8 - 16);
      v144 = *(v8 - 8);
      v145 = *v8;
      sub_10000F0C8();
    case 233:
      v46 = *(v8 - 4);
      sub_10000FFB8();
    case 234:
      v137 = *(v8 - 4);
      sub_10000FFB8();
    case 235:
      v96 = *(v8 - 8);
      v97 = *v8;
      sub_10000EDE8();
    case 236:
      v52 = *(v8 - 8);
      v53 = *v8;
      sub_10000EDE8();
    case 237:
      v90 = *(v8 - 8);
      v91 = *v8;
      sub_10000EDE8();
    case 238:
      v41 = *(v8 - 8);
      v42 = *v8;
      sub_10000EDE8();
    case 239:
      v139 = *(v8 - 8);
      v140 = *v8;
      sub_10000EDE8();
    case 240:
      v141 = *(v8 - 8);
      v142 = *v8;
      sub_10000EDE8();
    case 241:
      v56 = *(v8 - 8);
      v57 = *v8;
      sub_10000EDE8();
    case 242:
      v129 = *(v8 - 12);
      operator new();
    case 243:
      v102 = *(v8 - 20);
      v103 = *(v8 - 8);
      v104 = *(v8 - 96);
      v105 = *v8;
      sub_10000FBAC();
    case 244:
      operator new();
    case 248:
      operator new();
    case 249:
      operator new();
    case 250:
      operator new();
    case 254:
      operator new();
    case 255:
      operator new();
    case 256:
      operator new();
    case 257:
      operator new();
    case 258:
      operator new();
    case 259:
      v69 = *(v8 - 24);
      v70 = *(v8 - 4);
      sub_10001022C();
    case 260:
      v126 = *(v8 - 12);
      v127 = *(v8 - 1);
      *__p = *(v8 - 2);
      v207 = v127;
      sub_1000102FC();
    case 266:
    case 272:
      v23 = 0;
      v22 = 6;
      goto LABEL_298;
    case 275:
      v112 = *(v8 - 4);
      sub_10000FC8C();
    case 276:
      v94 = *(v8 - 12);
      v95 = *(*(v8 - 4) + 80);
      sub_10000FD54();
    case 277:
      sub_10000EEC0(*(v8 - 16), *(v8 - 8), *v8);
    case 278:
      v111 = *v8;
      sub_10000F868();
    case 279:
      v119 = *(v8 - 8);
      v120 = *v8;
      sub_10000F930();
    case 280:
      sub_10000F9FC();
    case 281:
      v74 = *(v8 - 8);
      sub_10000FAC8();
    case 290:
      v71 = *v8;
      sub_10000F478();
    case 291:
      v77 = *v8;
      sub_10000F478();
    case 292:
      sub_10000F540();
    case 293:
      sub_10000F540();
    case 294:
      v89 = *v8;
      sub_10000F3AC();
    case 296:
      v98 = *v8;
      sub_10000F2E4();
    case 297:
      sub_10000F610();
    case 298:
      LODWORD(__p[0]) = 0;
      LODWORD(v190.__r_.__value_.__l.__data_) = 0;
      v189 = 0;
      v115 = sscanf(*v8, "%4d-%2d-%2d%n", __p, &v190, &v189 + 4, &v189);
      v116 = *v8;
      if (v115 == 3 && !v116[v189])
      {
        sub_10000F6D0();
      }

      free(v116);
      sub_100001A90(&v193, v184, v181, "Found incorrect date format. Expected format: YYYY-MM-DD");
      v9 = v187;
      goto LABEL_358;
    case 299:
      v75 = *(v8 - 4);
      v76 = *v8;
      sub_10000F798();
    case 300:
      LODWORD(__p[0]) = 0;
      LODWORD(v190.__r_.__value_.__l.__data_) = 0;
      v121 = sscanf(*(v8 - 4), "%d%n", __p, &v190);
      v122 = *(v8 - 4);
      if (v121 == 1 && !*(v122 + SLODWORD(v190.__r_.__value_.__l.__data_)))
      {
        free(v122);
        v123 = *v8;
        sub_10000F798();
      }

      free(v122);
      sub_100001A90(&v193, v184, v179, "Found incorrect interval format. Expected format: INTEGER");
      v9 = v187;
      goto LABEL_358;
    case 301:
      HIDWORD(v189) = 0;
      LODWORD(v190.__r_.__value_.__l.__data_) = 0;
      v85 = sscanf(*v8, "%d %7s%n", &v190, __p, &v189 + 4);
      v86 = *v8;
      if (v85 != 2 || *(v86 + SHIDWORD(v189)))
      {
        free(v86);
        sub_100001A90(&v193, v184, v180, "Found incorrect interval format. Expected format: INTEGER INTERVAL_QUALIIFIER");
        v9 = v187;
      }

      else
      {
        free(v86);
        if (!strcasecmp(__p, "second") || !strcasecmp(__p, "seconds") || !strcasecmp(__p, "minute") || !strcasecmp(__p, "minutes") || !strcasecmp(__p, "hour") || !strcasecmp(__p, "hours") || !strcasecmp(__p, "day") || !strcasecmp(__p, "days") || !strcasecmp(__p, "month") || !strcasecmp(__p, "months") || !strcasecmp(__p, "year") || !strcasecmp(__p, "years"))
        {
          sub_10000F798();
        }

        sub_100001A90(&v193, v184, v87, "Interval qualifier is unknown.");
        v9 = v187;
      }

      goto LABEL_358;
    case 302:
      sub_10000FE24();
    case 304:
      sub_100005310(*(v8 - 8), v8);
      operator new();
    case 308:
      operator new();
    case 309:
      operator new();
    case 311:
      operator new();
    case 312:
      operator new();
    case 313:
      v24 = 0;
      v22 = 0;
      v23 = 0;
      v188 = *v8;
      goto LABEL_298;
    case 314:
      v78 = *(v8 - 8);
      v22 = v78;
      v23 = v78 >> 8;
      v24 = HIDWORD(v78);
      v188 = *v8;
      goto LABEL_298;
    case 318:
      operator new();
    case 321:
      operator new();
    case 322:
      operator new();
    case 327:
      operator new();
    case 329:
      operator new();
    case 330:
      operator new();
    case 341:
      operator new();
    case 343:
      operator new();
    case 344:
      operator new();
    case 345:
      operator new();
    case 346:
      operator new();
    case 347:
      operator new();
    case 361:
      operator new();
    case 362:
      sub_1000054C4(*(v8 - 8), v8);
LABEL_277:
      v25 = *(v8 - 8);
LABEL_278:
      v22 = v25;
      v23 = v25 >> 8;
      v24 = HIDWORD(v25);
      goto LABEL_298;
    default:
      goto LABEL_298;
  }
}

void sub_10000492C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  v64 = 0;
  while (1)
  {
    v65 = *(&a63 + v64 + 120);
    if (v65)
    {
      *(&a63 + v64 + 128) = v65;
      operator delete(v65);
    }

    v64 -= 48;
    if (v64 == -144)
    {
      if (__p)
      {
        operator delete(__p);
      }

      v66 = 9600;
      while (1)
      {
        v67 = *(&STACK[0x240] + v66 - 24);
        if (v67)
        {
          *(&STACK[0x240] + v66 - 16) = v67;
          operator delete(v67);
        }

        v66 -= 48;
        if (!v66)
        {
          if (a36)
          {
            operator delete(a36);
          }

          _Unwind_Resume(a1);
        }
      }
    }
  }
}

uint64_t sub_1000052DC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_100005310(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_100006504();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_100006754(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_1000053E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v8 = 1;
  if (sub_10000679C(v2, &v8) || (v3 = *(a1 + 8), v7 = 3, sub_10000679C(v3, &v7)))
  {
    v4 = *(a1 + 8);
    v6 = 2;
    if (sub_10000679C(v4, &v6))
    {
      return 0;
    }

    *(a1 + 56) = 0;
  }

  return 1;
}

__n128 sub_100005464@<Q0>(const char *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  v7 = std::string::insert(a2, 0, a1, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void sub_1000054C4(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_100006504();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_100006A70(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_100005598(uint64_t *a1, _BYTE **a2, __int16 **a3)
{
  if (*(a3 + 2) == -2)
  {
    v5 = 0;
    v6 = "syntax error";
  }

  else
  {
    v34 = *(a3 + 2);
    v7 = word_10011F9A8[**a3];
    if (v7 == -568)
    {
      goto LABEL_17;
    }

    LODWORD(v8) = -v7 & (v7 >> 31);
    v9 = 985 - v7 >= 203 ? 203 : 985 - v7;
    if (v8 >= v9)
    {
      goto LABEL_17;
    }

    result = 0;
    v8 = v8;
    v11 = &unk_10012083E + 2 * word_10011F9A8[**a3];
    v12 = &unk_10012008C + 2 * word_10011F9A8[**a3];
    v6 = "syntax error, unexpected %s";
    do
    {
      if (v8 != 1)
      {
        v13 = *&v12[2 * v8];
        if (v8 == v13 && *&v11[2 * v8] != -360)
        {
          if (result == 4)
          {
            goto LABEL_18;
          }

          v35[result] = v13;
          result = (result + 1);
        }
      }

      ++v8;
    }

    while (v9 != v8);
    if (result == -2)
    {
      return result;
    }

    if (result)
    {
      v29 = "syntax error";
      if (result <= 1)
      {
        if (result == -3)
        {
          return 4294967294;
        }

        v33 = result == 1;
        v30 = "syntax error, unexpected %s, expecting %s";
        if (result == 1)
        {
          v5 = 2;
        }

        else
        {
          v5 = result + 1;
        }
      }

      else
      {
        v30 = "syntax error, unexpected %s, expecting %s or %s";
        if (result == 4)
        {
          v31 = 5;
        }

        else
        {
          v31 = result + 1;
        }

        if (result == 4)
        {
          v29 = "syntax error, unexpected %s, expecting %s or %s or %s or %s";
        }

        if (result == 3)
        {
          v32 = 4;
        }

        else
        {
          v32 = v31;
        }

        if (result == 3)
        {
          v29 = "syntax error, unexpected %s, expecting %s or %s or %s";
        }

        v33 = result == 2;
        if (result == 2)
        {
          v5 = 3;
        }

        else
        {
          v5 = v32;
        }
      }

      if (v33)
      {
        v6 = v30;
      }

      else
      {
        v6 = v29;
      }
    }

    else
    {
LABEL_17:
      v35[0] = -2;
      v6 = "syntax error, unexpected %s";
LABEL_18:
      v5 = 1;
    }
  }

  v14 = -2 * v5;
  v15 = v6;
  do
  {
    v16 = *v15++;
    ++v14;
  }

  while (v16);
  if (v5 >= 1)
  {
    v17 = v5;
    v18 = &v34;
    do
    {
      v19 = *v18++;
      v20 = sub_100006AB8(0, off_100163018[v19]);
      if (v20 < 0)
      {
        return 4294967294;
      }

      v14 += v20;
    }

    while (--v17);
  }

  if (*a1 >= v14)
  {
    v22 = 0;
    v23 = *a2;
    while (1)
    {
      v24 = *v6;
      *v23 = v24;
      if (v24 != 37)
      {
        break;
      }

      if (v6[1] != 115 || v22 >= v5)
      {
        goto LABEL_37;
      }

      v28 = v22 + 1;
      v26 = sub_100006AB8(v23, off_100163018[v35[v22 - 1]]);
      v27 = 2;
      v22 = v28;
LABEL_39:
      v23 += v26;
      v6 += v27;
    }

    if (!v24)
    {
      return 0;
    }

LABEL_37:
    v26 = 1;
    v27 = 1;
    goto LABEL_39;
  }

  v21 = 2 * v14;
  if (v14 > 2 * v14)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *a1 = v21;
  return 0xFFFFFFFFLL;
}

void sub_10000586C(int a1, uint64_t a2)
{
  if (a1 <= 204)
  {
    if (a1 == 3 || a1 == 4 || a1 == 5)
    {
LABEL_42:
      v6 = *a2;

      free(v6);
    }
  }

  else
  {
    switch(a1)
    {
      case 205:
        v7 = *a2;
        if (!*a2)
        {
          return;
        }

        v23 = *v7;
        v24 = *(v7 + 8);
        if (*v7 == v24)
        {
          goto LABEL_168;
        }

        do
        {
          if (*v23)
          {
            (*(**v23 + 8))(*v23);
          }

          ++v23;
        }

        while (v23 != v24);
        break;
      case 206:
      case 207:
      case 211:
      case 213:
      case 215:
      case 216:
      case 220:
      case 221:
      case 222:
      case 234:
      case 236:
      case 239:
      case 240:
      case 241:
      case 242:
      case 243:
      case 245:
      case 250:
      case 253:
      case 254:
      case 255:
      case 256:
      case 257:
      case 261:
        if (!*a2)
        {
          return;
        }

        v3 = *(**a2 + 8);

        goto LABEL_176;
      case 208:
        v7 = *a2;
        if (!*a2)
        {
          return;
        }

        v28 = *v7;
        v29 = *(v7 + 8);
        if (*v7 == v29)
        {
          goto LABEL_168;
        }

        do
        {
          if (*v28)
          {
            (*(**v28 + 8))(*v28);
          }

          ++v28;
        }

        while (v28 != v29);
        break;
      case 209:
        v7 = *a2;
        if (!*a2)
        {
          return;
        }

        v21 = *v7;
        v22 = *(v7 + 8);
        if (*v7 == v22)
        {
          goto LABEL_168;
        }

        do
        {
          if (*v21)
          {
            (*(**v21 + 8))(*v21);
          }

          ++v21;
        }

        while (v21 != v22);
        break;
      case 210:
      case 266:
      case 268:
      case 278:
      case 279:
      case 280:
      case 281:
      case 282:
      case 283:
      case 284:
      case 285:
      case 286:
      case 287:
      case 288:
      case 289:
      case 290:
      case 291:
      case 292:
      case 298:
      case 299:
      case 303:
      case 304:
      case 305:
      case 306:
      case 307:
      case 308:
      case 309:
      case 310:
      case 311:
      case 312:
      case 313:
      case 314:
      case 315:
      case 316:
      case 340:
        if (!*a2)
        {
          return;
        }

        v3 = *(**a2 + 8);

        goto LABEL_176;
      case 214:
      case 218:
      case 324:
        goto LABEL_42;
      case 224:
        v7 = *a2;
        if (!*a2)
        {
          return;
        }

        v19 = *v7;
        v20 = *(v7 + 8);
        if (*v7 == v20)
        {
          goto LABEL_168;
        }

        do
        {
          if (*v19)
          {
            (*(**v19 + 8))(*v19);
          }

          ++v19;
        }

        while (v19 != v20);
        break;
      case 225:
      case 226:
      case 233:
        if (!*a2)
        {
          return;
        }

        v3 = *(**a2 + 8);

        goto LABEL_176;
      case 229:
        if (*a2)
        {
          goto LABEL_170;
        }

        return;
      case 237:
      case 238:
        if (!*a2)
        {
          return;
        }

        v3 = *(**a2 + 8);

        goto LABEL_176;
      case 246:
        v7 = *a2;
        if (!*a2)
        {
          return;
        }

        v8 = *v7;
        v9 = *(v7 + 8);
        if (*v7 == v9)
        {
          goto LABEL_168;
        }

        do
        {
          if (*v8)
          {
            sub_1000247D8(*v8);
            operator delete();
          }

          ++v8;
        }

        while (v8 != v9);
        break;
      case 247:
        if (!*a2)
        {
          return;
        }

        sub_1000247D8(*a2);
        goto LABEL_170;
      case 248:
        v7 = *a2;
        if (!*a2)
        {
          return;
        }

        v25 = *v7;
        v26 = *(v7 + 8);
        if (*v7 == v26)
        {
          goto LABEL_168;
        }

        do
        {
          v27 = *v25++;
          free(v27);
        }

        while (v25 != v26);
        break;
      case 249:
        v7 = *a2;
        if (!*a2)
        {
          return;
        }

        v10 = *v7;
        v11 = *(v7 + 8);
        if (*v7 == v11)
        {
          goto LABEL_168;
        }

        do
        {
          if (*v10)
          {
            (*(**v10 + 8))(*v10);
          }

          ++v10;
        }

        while (v10 != v11);
        break;
      case 251:
        v7 = *a2;
        if (!*a2)
        {
          return;
        }

        v34 = *v7;
        v35 = *(v7 + 8);
        if (*v7 == v35)
        {
          goto LABEL_168;
        }

        do
        {
          if (*v34)
          {
            operator delete();
          }

          ++v34;
        }

        while (v34 != v35);
        break;
      case 252:
        if (!*a2)
        {
          return;
        }

        goto LABEL_170;
      case 258:
      case 259:
        if (!*a2)
        {
          return;
        }

        v3 = *(**a2 + 8);

        goto LABEL_176;
      case 263:
        v7 = *a2;
        if (!*a2)
        {
          return;
        }

        v30 = *v7;
        v31 = *(v7 + 8);
        if (*v7 == v31)
        {
          goto LABEL_168;
        }

        do
        {
          if (*v30)
          {
            (*(**v30 + 8))(*v30);
          }

          ++v30;
        }

        while (v30 != v31);
        break;
      case 264:
      case 265:
      case 317:
      case 318:
      case 319:
      case 321:
      case 322:
      case 338:
        if (!*a2)
        {
          return;
        }

        v3 = *(**a2 + 8);

        goto LABEL_176;
      case 267:
        if (!*a2)
        {
          return;
        }

        v3 = *(**a2 + 8);

        goto LABEL_176;
      case 269:
        v7 = *a2;
        if (!*a2)
        {
          return;
        }

        v40 = *v7;
        v41 = *(v7 + 8);
        if (*v7 == v41)
        {
          goto LABEL_168;
        }

        do
        {
          if (*v40)
          {
            (*(**v40 + 8))(*v40);
          }

          ++v40;
        }

        while (v40 != v41);
        break;
      case 270:
        v7 = *a2;
        if (!*a2)
        {
          return;
        }

        v12 = *v7;
        v13 = *(v7 + 8);
        if (*v7 == v13)
        {
          goto LABEL_168;
        }

        do
        {
          if (*v12)
          {
            (*(**v12 + 8))(*v12);
          }

          ++v12;
        }

        while (v12 != v13);
        break;
      case 271:
        if (!*a2)
        {
          return;
        }

        v3 = *(**a2 + 8);

        goto LABEL_176;
      case 273:
      case 274:
        if (!*a2)
        {
          return;
        }

        v3 = *(**a2 + 8);

        goto LABEL_176;
      case 275:
        v7 = *a2;
        if (!*a2)
        {
          return;
        }

        v36 = *v7;
        v37 = *(v7 + 8);
        if (*v7 == v37)
        {
          goto LABEL_168;
        }

        do
        {
          if (*v36)
          {
            (*(**v36 + 8))(*v36);
          }

          ++v36;
        }

        while (v36 != v37);
        break;
      case 276:
        v7 = *a2;
        if (!*a2)
        {
          return;
        }

        v38 = *v7;
        v39 = *(v7 + 8);
        if (*v7 == v39)
        {
          goto LABEL_168;
        }

        do
        {
          if (*v38)
          {
            (*(**v38 + 8))(*v38);
          }

          ++v38;
        }

        while (v38 != v39);
        break;
      case 277:
        v7 = *a2;
        if (!*a2)
        {
          return;
        }

        v42 = *v7;
        v43 = *(v7 + 8);
        if (*v7 == v43)
        {
          goto LABEL_168;
        }

        do
        {
          if (*v42)
          {
            (*(**v42 + 8))(*v42);
          }

          ++v42;
        }

        while (v42 != v43);
        break;
      case 293:
        if (!*a2)
        {
          return;
        }

        v3 = *(**a2 + 8);

        goto LABEL_176;
      case 294:
        v7 = *a2;
        if (!*a2)
        {
          return;
        }

        v17 = *v7;
        v18 = *(v7 + 8);
        if (*v7 == v18)
        {
          goto LABEL_168;
        }

        do
        {
          if (*v17)
          {
            (*(**v17 + 8))(*v17);
          }

          ++v17;
        }

        while (v17 != v18);
        break;
      case 295:
        if (!*a2)
        {
          return;
        }

        v3 = *(**a2 + 8);

LABEL_176:
        v3();
        return;
      case 297:
        if (*a2)
        {
          goto LABEL_170;
        }

        return;
      case 320:
        v7 = *a2;
        if (!*a2)
        {
          return;
        }

        v32 = *v7;
        v33 = *(v7 + 8);
        if (*v7 == v33)
        {
          goto LABEL_168;
        }

        do
        {
          if (*v32)
          {
            (*(**v32 + 8))(*v32);
          }

          ++v32;
        }

        while (v32 != v33);
        break;
      case 323:
        free(*(a2 + 8));
        goto LABEL_42;
      case 325:
      case 326:
      case 327:
      case 328:
        if (!*a2)
        {
          return;
        }

        sub_100025430(*a2);
        goto LABEL_170;
      case 329:
      case 330:
      case 334:
      case 335:
      case 336:
        v4 = *a2;
        if (!*a2)
        {
          return;
        }

        v5 = *v4;
        if (*v4)
        {
          *(v4 + 8) = v5;
          operator delete(v5);
        }

        goto LABEL_170;
      case 331:
        if (*a2)
        {
          goto LABEL_170;
        }

        return;
      case 337:
        if (!*a2)
        {
          return;
        }

        sub_100024DA8(*a2);
        goto LABEL_170;
      case 342:
        v7 = *a2;
        if (!*a2)
        {
          return;
        }

        v14 = *v7;
        v15 = *(v7 + 8);
        if (*v7 == v15)
        {
          goto LABEL_168;
        }

        do
        {
          v16 = *v14++;
          free(v16);
        }

        while (v14 != v15);
        break;
      default:
        return;
    }

    v7 = *a2;
    if (*a2)
    {
LABEL_168:
      v44 = *v7;
      if (*v7)
      {
        *(v7 + 8) = v44;
        operator delete(v44);
      }

LABEL_170:

      operator delete();
    }
  }
}

uint64_t sub_10000644C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000064C8(result, a4);
  }

  return result;
}

void sub_1000064AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000064C8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_10000651C(a1, a2);
  }

  sub_100006504();
}

void sub_10000651C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000065F4();
}

void sub_100006564(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000065C0(exception, a1);
}

std::logic_error *sub_1000065C0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_1000065F4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *sub_100006628(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1000064C8(v6, v10);
    }

    sub_100006504();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_100006754(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000065F4();
}

uint64_t *sub_10000679C(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

char *sub_100006850(void *a1, char *__src, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 <= (v9 - v10) >> 3)
  {
    v16 = (v10 - __src) >> 3;
    if (v16 >= a5)
    {
      v20 = &__src[8 * a5];
      v21 = &v10[-a5];
      v22 = a1[1];
      while (v21 < v10)
      {
        v23 = *v21++;
        *v22++ = v23;
      }

      a1[1] = v22;
      if (v10 != v20)
      {
        memmove(&__src[8 * a5], __src, v10 - v20);
      }

      v24 = &v7[a5];
      v25 = __src;
      do
      {
        v26 = *v7++;
        *v25++ = v26;
      }

      while (v7 != v24);
    }

    else
    {
      v17 = (a3 + v10 - __src);
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v36 = (a3 + v10 - __src);
        v19 = a1[1];
        do
        {
          v37 = *v36++;
          *v19 = v37;
          v19 += 8;
          ++v18;
        }

        while (v36 != a4);
      }

      a1[1] = v18;
      if (v16 >= 1)
      {
        v38 = &__src[8 * a5];
        v39 = &v18[-a5];
        v40 = v18;
        while (v39 < v10)
        {
          v41 = *v39++;
          *v40++ = v41;
        }

        a1[1] = v40;
        if (v19 != v38)
        {
          memmove(&__src[8 * a5], __src, v18 - v38);
        }

        if (v10 != __src)
        {
          v42 = __src;
          do
          {
            v43 = *v7++;
            *v42++ = v43;
          }

          while (v7 != v17);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + ((v10 - *a1) >> 3);
  if (v12 >> 61)
  {
    sub_100006504();
  }

  v13 = __src - v11;
  v14 = v9 - v11;
  if (v14 >> 2 > v12)
  {
    v12 = v14 >> 2;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    v15 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    sub_100006754(a1, v15);
  }

  v27 = 8 * (v13 >> 3);
  v28 = 8 * a5;
  v29 = v27;
  do
  {
    v30 = *v7++;
    *v29++ = v30;
    v28 -= 8;
  }

  while (v28);
  memcpy((v27 + 8 * a5), __src, a1[1] - __src);
  v31 = *a1;
  v32 = v27 + 8 * a5 + a1[1] - __src;
  a1[1] = __src;
  v33 = (__src - v31);
  v34 = (v27 - (__src - v31));
  memcpy(v34, v31, v33);
  v35 = *a1;
  *a1 = v34;
  a1[1] = v32;
  a1[2] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  return v27;
}

void sub_100006A70(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000065F4();
}

uint64_t sub_100006AB8(uint64_t a1, _BYTE *a2)
{
  if (*a2 != 34)
  {
LABEL_13:
    v9 = 0;
    if (a1)
    {
      do
      {
        v10 = a2[v9];
        *(a1 + v9++) = v10;
      }

      while (v10);
    }

    else
    {
        ;
      }
    }

    return v9 - 1;
  }

  v2 = 0;
  v3 = a2;
  for (i = a2; ; v3 = i)
  {
    v6 = *++i;
    v5 = v6;
    if (v6 > 91)
    {
      if (v5 == 92)
      {
        v8 = v3[2];
        v7 = v3 + 2;
        if (v8 != 92)
        {
          goto LABEL_13;
        }

        i = v7;
      }

      goto LABEL_10;
    }

    if (v5 == 34)
    {
      break;
    }

    if (v5 == 39 || v5 == 44)
    {
      goto LABEL_13;
    }

LABEL_10:
    if (a1)
    {
      *(a1 + v2) = v5;
    }

    ++v2;
  }

  if (a1)
  {
    *(a1 + v2) = 0;
  }

  return v2;
}

uint64_t *sub_100006B64(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_100006D90(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_100006E80(a1, prime);
    }
  }
}

void sub_100006E80(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1000065F4();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void (__cdecl ***sub_100006FE4(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_10000DBAC((a1 + 3), 24);
  return a1;
}

void sub_100007260(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100007288(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000073DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *(a3 + 160) = a2;
  v4 = (a3 + 160);
  *(a3 + 152) = a1;
  if (!*(a3 + 80))
  {
    *(a3 + 80) = 1;
    if (!*(a3 + 84))
    {
      *(a3 + 84) = 1;
    }

    if (!*(a3 + 8))
    {
      *(a3 + 8) = __stdinp;
    }

    if (!*(a3 + 16))
    {
      *(a3 + 16) = __stdoutp;
    }

    v5 = *(a3 + 40);
    if (!v5 || (v6 = *(a3 + 24), (v7 = *(v5 + 8 * v6)) == 0))
    {
      sub_10000D34C(a3);
      v8 = sub_10000D3F0(*(v3 + 8), 0x4000, v3);
      v6 = *(v3 + 24);
      *(*(v3 + 40) + 8 * v6) = v8;
      v5 = *(v3 + 40);
      v7 = *(v5 + 8 * v6);
    }

    *(v3 + 56) = *(v7 + 32);
    v9 = *(v7 + 16);
    *(v3 + 72) = v9;
    *(v3 + 136) = v9;
    *(v3 + 8) = **(v5 + 8 * v6);
    *(v3 + 48) = *v9;
  }

  v1577 = (v3 + 72);
  v10 = (v3 + 120);
  off_10016DA38();
  v12 = v11;
  v13 = byte_1001220D8;
  v14 = word_100128B6C;
  v1576 = (v3 + 120);
LABEL_13:
  v15 = *(v3 + 72);
  *v15 = *(v3 + 48);
  v16 = *(v3 + 84);
  v17 = v15;
  do
  {
LABEL_14:
    v18 = v13[*v17];
    if (word_1001221D8[v16])
    {
      *(v3 + 112) = v16;
      *(v3 + 120) = v17;
    }

    v19 = v16;
    v20 = word_100127542[v16] + v18;
    if (v16 != word_100122CB0[v20])
    {
      do
      {
        v19 = word_100128030[v19];
        if (v19 >= 1388)
        {
          v18 = *(&unk_100128B1E + v18);
        }

        v20 = word_100127542[v19] + v18;
      }

      while (word_100122CB0[v20] != v19);
    }

    v16 = v14[v20];
    ++v17;
  }

  while (v16 != 1387);
  while (1)
  {
    v21 = *(v3 + 112);
    v22 = v10;
    while (2)
    {
      v23 = *v22;
      v24 = word_1001221D8[v21];
      *(v3 + 136) = v15;
      *(v3 + 64) = v23 - v15;
      *(v3 + 48) = *v23;
      *v23 = 0;
      *(v3 + 72) = v23;
LABEL_23:
      switch(v24)
      {
        case 0:
          *v23 = *(v3 + 48);
          v21 = *(v3 + 112);
          v22 = v1576;
          continue;
        case 1:
          v111 = *v4;
          v112 = (*v4)[1].i32[0];
          v113 = (*v4)[1].i32[1];
          v111->i32[0] = v112;
          v111->i32[1] = v113;
          v114 = *(v3 + 136);
          v10 = v1576;
          if (*v114)
          {
            v115 = v111[2];
            v116 = v114 + 1;
            do
            {
              v115 = vadd_s32(v115, 0x100000001);
              v111[2] = v115;
              if (*(v116 - 1) == 10)
              {
                v113 = 0;
                v111[1].i32[0] = ++v112;
              }

              else
              {
                ++v113;
              }

              v111[1].i32[1] = v113;
            }

            while (*v116++);
          }

          *(v3 + 84) = 5;
          goto LABEL_13;
        case 2:
          v135 = *v4;
          v136 = (*v4)[1].i32[0];
          v137 = (*v4)[1].i32[1];
          v135->i32[0] = v136;
          v135->i32[1] = v137;
          v138 = *(v3 + 136);
          v10 = v1576;
          if (*v138)
          {
            v139 = v135[2];
            v140 = v138 + 1;
            do
            {
              v139 = vadd_s32(v139, 0x100000001);
              v135[2] = v139;
              if (*(v140 - 1) == 10)
              {
                v137 = 0;
                v135[1].i32[0] = ++v136;
              }

              else
              {
                ++v137;
              }

              v135[1].i32[1] = v137;
            }

            while (*v140++);
          }

          goto LABEL_13;
        case 3:
          v142 = *v4;
          v143 = (*v4)[1].i32[0];
          v144 = (*v4)[1].i32[1];
          v142->i32[0] = v143;
          v142->i32[1] = v144;
          v145 = *(v3 + 136);
          v10 = v1576;
          if (*v145)
          {
            v146 = v142[2];
            v147 = v145 + 1;
            do
            {
              v146 = vadd_s32(v146, 0x100000001);
              v142[2] = v146;
              if (*(v147 - 1) == 10)
              {
                v144 = 0;
                v142[1].i32[0] = ++v143;
              }

              else
              {
                ++v144;
              }

              v142[1].i32[1] = v144;
            }

            while (*v147++);
          }

          *(v3 + 84) = 1;
          goto LABEL_13;
        case 4:
          v128 = *v4;
          v129 = (*v4)[1].i32[0];
          v130 = (*v4)[1].i32[1];
          v128->i32[0] = v129;
          v128->i32[1] = v130;
          v131 = *(v3 + 136);
          v10 = v1576;
          if (*v131)
          {
            v132 = v128[2];
            v133 = v131 + 1;
            do
            {
              v132 = vadd_s32(v132, 0x100000001);
              v128[2] = v132;
              if (*(v133 - 1) == 10)
              {
                v130 = 0;
                v128[1].i32[0] = ++v129;
              }

              else
              {
                ++v130;
              }

              v128[1].i32[1] = v130;
            }

            while (*v133++);
          }

          goto LABEL_13;
        case 5:
          v731 = *v4;
          v732 = (*v4)[1].i32[0];
          v733 = (*v4)[1].i32[1];
          v731->i32[0] = v732;
          v731->i32[1] = v733;
          v734 = *(v3 + 136);
          if (!*v734)
          {
            return 429;
          }

          v735 = v731[2];
          v736 = v734 + 1;
          result = 429;
          do
          {
            v735 = vadd_s32(v735, 0x100000001);
            v731[2] = v735;
            if (*(v736 - 1) == 10)
            {
              v733 = 0;
              v731[1].i32[0] = ++v732;
            }

            else
            {
              ++v733;
            }

            v731[1].i32[1] = v733;
          }

          while (*v736++);
          return result;
        case 6:
          v434 = *v4;
          v435 = (*v4)[1].i32[0];
          v436 = (*v4)[1].i32[1];
          v434->i32[0] = v435;
          v434->i32[1] = v436;
          v437 = *(v3 + 136);
          if (!*v437)
          {
            return 371;
          }

          v438 = v434[2];
          v439 = v437 + 1;
          result = 371;
          do
          {
            v438 = vadd_s32(v438, 0x100000001);
            v434[2] = v438;
            if (*(v439 - 1) == 10)
            {
              v436 = 0;
              v434[1].i32[0] = ++v435;
            }

            else
            {
              ++v436;
            }

            v434[1].i32[1] = v436;
          }

          while (*v439++);
          return result;
        case 7:
          v1189 = *v4;
          v1190 = (*v4)[1].i32[0];
          v1191 = (*v4)[1].i32[1];
          v1189->i32[0] = v1190;
          v1189->i32[1] = v1191;
          v1192 = *(v3 + 136);
          if (!*v1192)
          {
            return 321;
          }

          v1193 = v1189[2];
          v1194 = v1192 + 1;
          result = 321;
          do
          {
            v1193 = vadd_s32(v1193, 0x100000001);
            v1189[2] = v1193;
            if (*(v1194 - 1) == 10)
            {
              v1191 = 0;
              v1189[1].i32[0] = ++v1190;
            }

            else
            {
              ++v1191;
            }

            v1189[1].i32[1] = v1191;
          }

          while (*v1194++);
          return result;
        case 8:
          v1449 = *v4;
          v1450 = (*v4)[1].i32[0];
          v1451 = (*v4)[1].i32[1];
          v1449->i32[0] = v1450;
          v1449->i32[1] = v1451;
          v1452 = *(v3 + 136);
          if (!*v1452)
          {
            return 372;
          }

          v1453 = v1449[2];
          v1454 = v1452 + 1;
          result = 372;
          do
          {
            v1453 = vadd_s32(v1453, 0x100000001);
            v1449[2] = v1453;
            if (*(v1454 - 1) == 10)
            {
              v1451 = 0;
              v1449[1].i32[0] = ++v1450;
            }

            else
            {
              ++v1451;
            }

            v1449[1].i32[1] = v1451;
          }

          while (*v1454++);
          return result;
        case 9:
          v640 = *v4;
          v641 = (*v4)[1].i32[0];
          v642 = (*v4)[1].i32[1];
          v640->i32[0] = v641;
          v640->i32[1] = v642;
          v643 = *(v3 + 136);
          if (!*v643)
          {
            return 322;
          }

          v644 = v640[2];
          v645 = v643 + 1;
          result = 322;
          do
          {
            v644 = vadd_s32(v644, 0x100000001);
            v640[2] = v644;
            if (*(v645 - 1) == 10)
            {
              v642 = 0;
              v640[1].i32[0] = ++v641;
            }

            else
            {
              ++v642;
            }

            v640[1].i32[1] = v642;
          }

          while (*v645++);
          return result;
        case 10:
          v449 = *v4;
          v450 = (*v4)[1].i32[0];
          v451 = (*v4)[1].i32[1];
          v449->i32[0] = v450;
          v449->i32[1] = v451;
          v452 = *(v3 + 136);
          if (!*v452)
          {
            return 272;
          }

          v453 = v449[2];
          v454 = v452 + 1;
          result = 272;
          do
          {
            v453 = vadd_s32(v453, 0x100000001);
            v449[2] = v453;
            if (*(v454 - 1) == 10)
            {
              v451 = 0;
              v449[1].i32[0] = ++v450;
            }

            else
            {
              ++v451;
            }

            v449[1].i32[1] = v451;
          }

          while (*v454++);
          return result;
        case 11:
          v1166 = *v4;
          v1167 = (*v4)[1].i32[0];
          v1168 = (*v4)[1].i32[1];
          v1166->i32[0] = v1167;
          v1166->i32[1] = v1168;
          v1169 = *(v3 + 136);
          if (!*v1169)
          {
            return 373;
          }

          v1170 = v1166[2];
          v1171 = v1169 + 1;
          result = 373;
          do
          {
            v1170 = vadd_s32(v1170, 0x100000001);
            v1166[2] = v1170;
            if (*(v1171 - 1) == 10)
            {
              v1168 = 0;
              v1166[1].i32[0] = ++v1167;
            }

            else
            {
              ++v1168;
            }

            v1166[1].i32[1] = v1168;
          }

          while (*v1171++);
          return result;
        case 12:
          v549 = *v4;
          v550 = (*v4)[1].i32[0];
          v551 = (*v4)[1].i32[1];
          v549->i32[0] = v550;
          v549->i32[1] = v551;
          v552 = *(v3 + 136);
          if (!*v552)
          {
            return 393;
          }

          v553 = v549[2];
          v554 = v552 + 1;
          result = 393;
          do
          {
            v553 = vadd_s32(v553, 0x100000001);
            v549[2] = v553;
            if (*(v554 - 1) == 10)
            {
              v551 = 0;
              v549[1].i32[0] = ++v550;
            }

            else
            {
              ++v551;
            }

            v549[1].i32[1] = v551;
          }

          while (*v554++);
          return result;
        case 13:
          v793 = *v4;
          v794 = (*v4)[1].i32[0];
          v795 = (*v4)[1].i32[1];
          v793->i32[0] = v794;
          v793->i32[1] = v795;
          v796 = *(v3 + 136);
          if (!*v796)
          {
            return 383;
          }

          v797 = v793[2];
          v798 = v796 + 1;
          result = 383;
          do
          {
            v797 = vadd_s32(v797, 0x100000001);
            v793[2] = v797;
            if (*(v798 - 1) == 10)
            {
              v795 = 0;
              v793[1].i32[0] = ++v794;
            }

            else
            {
              ++v795;
            }

            v793[1].i32[1] = v795;
          }

          while (*v798++);
          return result;
        case 14:
          v403 = *v4;
          v404 = (*v4)[1].i32[0];
          v405 = (*v4)[1].i32[1];
          v403->i32[0] = v404;
          v403->i32[1] = v405;
          v406 = *(v3 + 136);
          if (!*v406)
          {
            return 374;
          }

          v407 = v403[2];
          v408 = v406 + 1;
          result = 374;
          do
          {
            v407 = vadd_s32(v407, 0x100000001);
            v403[2] = v407;
            if (*(v408 - 1) == 10)
            {
              v405 = 0;
              v403[1].i32[0] = ++v404;
            }

            else
            {
              ++v405;
            }

            v403[1].i32[1] = v405;
          }

          while (*v408++);
          return result;
        case 15:
          v594 = *v4;
          v595 = (*v4)[1].i32[0];
          v596 = (*v4)[1].i32[1];
          v594->i32[0] = v595;
          v594->i32[1] = v596;
          v597 = *(v3 + 136);
          if (!*v597)
          {
            return 294;
          }

          v598 = v594[2];
          v599 = v597 + 1;
          result = 294;
          do
          {
            v598 = vadd_s32(v598, 0x100000001);
            v594[2] = v598;
            if (*(v599 - 1) == 10)
            {
              v596 = 0;
              v594[1].i32[0] = ++v595;
            }

            else
            {
              ++v596;
            }

            v594[1].i32[1] = v596;
          }

          while (*v599++);
          return result;
        case 16:
          v1503 = *v4;
          v1504 = (*v4)[1].i32[0];
          v1505 = (*v4)[1].i32[1];
          v1503->i32[0] = v1504;
          v1503->i32[1] = v1505;
          v1506 = *(v3 + 136);
          if (!*v1506)
          {
            return 413;
          }

          v1507 = v1503[2];
          v1508 = v1506 + 1;
          result = 413;
          do
          {
            v1507 = vadd_s32(v1507, 0x100000001);
            v1503[2] = v1507;
            if (*(v1508 - 1) == 10)
            {
              v1505 = 0;
              v1503[1].i32[0] = ++v1504;
            }

            else
            {
              ++v1505;
            }

            v1503[1].i32[1] = v1505;
          }

          while (*v1508++);
          return result;
        case 17:
          v786 = *v4;
          v787 = (*v4)[1].i32[0];
          v788 = (*v4)[1].i32[1];
          v786->i32[0] = v787;
          v786->i32[1] = v788;
          v789 = *(v3 + 136);
          if (!*v789)
          {
            return 273;
          }

          v790 = v786[2];
          v791 = v789 + 1;
          result = 273;
          do
          {
            v790 = vadd_s32(v790, 0x100000001);
            v786[2] = v790;
            if (*(v791 - 1) == 10)
            {
              v788 = 0;
              v786[1].i32[0] = ++v787;
            }

            else
            {
              ++v788;
            }

            v786[1].i32[1] = v788;
          }

          while (*v791++);
          return result;
        case 18:
          v396 = *v4;
          v397 = (*v4)[1].i32[0];
          v398 = (*v4)[1].i32[1];
          v396->i32[0] = v397;
          v396->i32[1] = v398;
          v399 = *(v3 + 136);
          if (!*v399)
          {
            return 289;
          }

          v400 = v396[2];
          v401 = v399 + 1;
          result = 289;
          do
          {
            v400 = vadd_s32(v400, 0x100000001);
            v396[2] = v400;
            if (*(v401 - 1) == 10)
            {
              v398 = 0;
              v396[1].i32[0] = ++v397;
            }

            else
            {
              ++v398;
            }

            v396[1].i32[1] = v398;
          }

          while (*v401++);
          return result;
        case 19:
          v830 = *v4;
          v831 = (*v4)[1].i32[0];
          v832 = (*v4)[1].i32[1];
          v830->i32[0] = v831;
          v830->i32[1] = v832;
          v833 = *(v3 + 136);
          if (!*v833)
          {
            return 411;
          }

          v834 = v830[2];
          v835 = v833 + 1;
          result = 411;
          do
          {
            v834 = vadd_s32(v834, 0x100000001);
            v830[2] = v834;
            if (*(v835 - 1) == 10)
            {
              v832 = 0;
              v830[1].i32[0] = ++v831;
            }

            else
            {
              ++v832;
            }

            v830[1].i32[1] = v832;
          }

          while (*v835++);
          return result;
        case 20:
          v1418 = *v4;
          v1419 = (*v4)[1].i32[0];
          v1420 = (*v4)[1].i32[1];
          v1418->i32[0] = v1419;
          v1418->i32[1] = v1420;
          v1421 = *(v3 + 136);
          if (!*v1421)
          {
            return 384;
          }

          v1422 = v1418[2];
          v1423 = v1421 + 1;
          result = 384;
          do
          {
            v1422 = vadd_s32(v1422, 0x100000001);
            v1418[2] = v1422;
            if (*(v1423 - 1) == 10)
            {
              v1420 = 0;
              v1418[1].i32[0] = ++v1419;
            }

            else
            {
              ++v1420;
            }

            v1418[1].i32[1] = v1420;
          }

          while (*v1423++);
          return result;
        case 21:
          v906 = *v4;
          v907 = (*v4)[1].i32[0];
          v908 = (*v4)[1].i32[1];
          v906->i32[0] = v907;
          v906->i32[1] = v908;
          v909 = *(v3 + 136);
          if (!*v909)
          {
            return 341;
          }

          v910 = v906[2];
          v911 = v909 + 1;
          result = 341;
          do
          {
            v910 = vadd_s32(v910, 0x100000001);
            v906[2] = v910;
            if (*(v911 - 1) == 10)
            {
              v908 = 0;
              v906[1].i32[0] = ++v907;
            }

            else
            {
              ++v908;
            }

            v906[1].i32[1] = v908;
          }

          while (*v911++);
          return result;
        case 22:
          v1128 = *v4;
          v1129 = (*v4)[1].i32[0];
          v1130 = (*v4)[1].i32[1];
          v1128->i32[0] = v1129;
          v1128->i32[1] = v1130;
          v1131 = *(v3 + 136);
          if (!*v1131)
          {
            return 274;
          }

          v1132 = v1128[2];
          v1133 = v1131 + 1;
          result = 274;
          do
          {
            v1132 = vadd_s32(v1132, 0x100000001);
            v1128[2] = v1132;
            if (*(v1133 - 1) == 10)
            {
              v1130 = 0;
              v1128[1].i32[0] = ++v1129;
            }

            else
            {
              ++v1130;
            }

            v1128[1].i32[1] = v1130;
          }

          while (*v1133++);
          return result;
        case 23:
          v495 = *v4;
          v496 = (*v4)[1].i32[0];
          v497 = (*v4)[1].i32[1];
          v495->i32[0] = v496;
          v495->i32[1] = v497;
          v498 = *(v3 + 136);
          if (!*v498)
          {
            return 342;
          }

          v499 = v495[2];
          v500 = v498 + 1;
          result = 342;
          do
          {
            v499 = vadd_s32(v499, 0x100000001);
            v495[2] = v499;
            if (*(v500 - 1) == 10)
            {
              v497 = 0;
              v495[1].i32[0] = ++v496;
            }

            else
            {
              ++v497;
            }

            v495[1].i32[1] = v497;
          }

          while (*v500++);
          return result;
        case 24:
          v579 = *v4;
          v580 = (*v4)[1].i32[0];
          v581 = (*v4)[1].i32[1];
          v579->i32[0] = v580;
          v579->i32[1] = v581;
          v582 = *(v3 + 136);
          if (!*v582)
          {
            return 304;
          }

          v583 = v579[2];
          v584 = v582 + 1;
          result = 304;
          do
          {
            v583 = vadd_s32(v583, 0x100000001);
            v579[2] = v583;
            if (*(v584 - 1) == 10)
            {
              v581 = 0;
              v579[1].i32[0] = ++v580;
            }

            else
            {
              ++v581;
            }

            v579[1].i32[1] = v581;
          }

          while (*v584++);
          return result;
        case 25:
          v860 = *v4;
          v861 = (*v4)[1].i32[0];
          v862 = (*v4)[1].i32[1];
          v860->i32[0] = v861;
          v860->i32[1] = v862;
          v863 = *(v3 + 136);
          if (!*v863)
          {
            return 343;
          }

          v864 = v860[2];
          v865 = v863 + 1;
          result = 343;
          do
          {
            v864 = vadd_s32(v864, 0x100000001);
            v860[2] = v864;
            if (*(v865 - 1) == 10)
            {
              v862 = 0;
              v860[1].i32[0] = ++v861;
            }

            else
            {
              ++v862;
            }

            v860[1].i32[1] = v862;
          }

          while (*v865++);
          return result;
        case 26:
          v853 = *v4;
          v854 = (*v4)[1].i32[0];
          v855 = (*v4)[1].i32[1];
          v853->i32[0] = v854;
          v853->i32[1] = v855;
          v856 = *(v3 + 136);
          if (!*v856)
          {
            return 295;
          }

          v857 = v853[2];
          v858 = v856 + 1;
          result = 295;
          do
          {
            v857 = vadd_s32(v857, 0x100000001);
            v853[2] = v857;
            if (*(v858 - 1) == 10)
            {
              v855 = 0;
              v853[1].i32[0] = ++v854;
            }

            else
            {
              ++v855;
            }

            v853[1].i32[1] = v855;
          }

          while (*v858++);
          return result;
        case 27:
          v556 = *v4;
          v557 = (*v4)[1].i32[0];
          v558 = (*v4)[1].i32[1];
          v556->i32[0] = v557;
          v556->i32[1] = v558;
          v559 = *(v3 + 136);
          if (!*v559)
          {
            return 275;
          }

          v560 = v556[2];
          v561 = v559 + 1;
          result = 275;
          do
          {
            v560 = vadd_s32(v560, 0x100000001);
            v556[2] = v560;
            if (*(v561 - 1) == 10)
            {
              v558 = 0;
              v556[1].i32[0] = ++v557;
            }

            else
            {
              ++v558;
            }

            v556[1].i32[1] = v558;
          }

          while (*v561++);
          return result;
        case 28:
          v1556 = *v4;
          v1557 = (*v4)[1].i32[0];
          v1558 = (*v4)[1].i32[1];
          v1556->i32[0] = v1557;
          v1556->i32[1] = v1558;
          v1559 = *(v3 + 136);
          if (!*v1559)
          {
            return 414;
          }

          v1560 = v1556[2];
          v1561 = v1559 + 1;
          result = 414;
          do
          {
            v1560 = vadd_s32(v1560, 0x100000001);
            v1556[2] = v1560;
            if (*(v1561 - 1) == 10)
            {
              v1558 = 0;
              v1556[1].i32[0] = ++v1557;
            }

            else
            {
              ++v1558;
            }

            v1556[1].i32[1] = v1558;
          }

          while (*v1561++);
          return result;
        case 29:
          v808 = *v4;
          v809 = (*v4)[1].i32[0];
          v810 = (*v4)[1].i32[1];
          v808->i32[0] = v809;
          v808->i32[1] = v810;
          v811 = *(v3 + 136);
          if (!*v811)
          {
            return 427;
          }

          v812 = v808[2];
          v813 = v811 + 1;
          result = 427;
          do
          {
            v812 = vadd_s32(v812, 0x100000001);
            v808[2] = v812;
            if (*(v813 - 1) == 10)
            {
              v810 = 0;
              v808[1].i32[0] = ++v809;
            }

            else
            {
              ++v810;
            }

            v808[1].i32[1] = v810;
          }

          while (*v813++);
          return result;
        case 30:
          v1059 = *v4;
          v1060 = (*v4)[1].i32[0];
          v1061 = (*v4)[1].i32[1];
          v1059->i32[0] = v1060;
          v1059->i32[1] = v1061;
          v1062 = *(v3 + 136);
          if (!*v1062)
          {
            return 276;
          }

          v1063 = v1059[2];
          v1064 = v1062 + 1;
          result = 276;
          do
          {
            v1063 = vadd_s32(v1063, 0x100000001);
            v1059[2] = v1063;
            if (*(v1064 - 1) == 10)
            {
              v1061 = 0;
              v1059[1].i32[0] = ++v1060;
            }

            else
            {
              ++v1061;
            }

            v1059[1].i32[1] = v1061;
          }

          while (*v1064++);
          return result;
        case 31:
          v1283 = *v4;
          v1284 = (*v4)[1].i32[0];
          v1285 = (*v4)[1].i32[1];
          v1283->i32[0] = v1284;
          v1283->i32[1] = v1285;
          v1286 = *(v3 + 136);
          if (!*v1286)
          {
            return 344;
          }

          v1287 = v1283[2];
          v1288 = v1286 + 1;
          result = 344;
          do
          {
            v1287 = vadd_s32(v1287, 0x100000001);
            v1283[2] = v1287;
            if (*(v1288 - 1) == 10)
            {
              v1285 = 0;
              v1283[1].i32[0] = ++v1284;
            }

            else
            {
              ++v1285;
            }

            v1283[1].i32[1] = v1285;
          }

          while (*v1288++);
          return result;
        case 32:
          v1510 = *v4;
          v1511 = (*v4)[1].i32[0];
          v1512 = (*v4)[1].i32[1];
          v1510->i32[0] = v1511;
          v1510->i32[1] = v1512;
          v1513 = *(v3 + 136);
          if (!*v1513)
          {
            return 296;
          }

          v1514 = v1510[2];
          v1515 = v1513 + 1;
          result = 296;
          do
          {
            v1514 = vadd_s32(v1514, 0x100000001);
            v1510[2] = v1514;
            if (*(v1515 - 1) == 10)
            {
              v1512 = 0;
              v1510[1].i32[0] = ++v1511;
            }

            else
            {
              ++v1512;
            }

            v1510[1].i32[1] = v1512;
          }

          while (*v1515++);
          return result;
        case 33:
          v899 = *v4;
          v900 = (*v4)[1].i32[0];
          v901 = (*v4)[1].i32[1];
          v899->i32[0] = v900;
          v899->i32[1] = v901;
          v902 = *(v3 + 136);
          if (!*v902)
          {
            return 323;
          }

          v903 = v899[2];
          v904 = v902 + 1;
          result = 323;
          do
          {
            v903 = vadd_s32(v903, 0x100000001);
            v899[2] = v903;
            if (*(v904 - 1) == 10)
            {
              v901 = 0;
              v899[1].i32[0] = ++v900;
            }

            else
            {
              ++v901;
            }

            v899[1].i32[1] = v901;
          }

          while (*v904++);
          return result;
        case 34:
          v609 = *v4;
          v610 = (*v4)[1].i32[0];
          v611 = (*v4)[1].i32[1];
          v609->i32[0] = v610;
          v609->i32[1] = v611;
          v612 = *(v3 + 136);
          if (!*v612)
          {
            return 399;
          }

          v613 = v609[2];
          v614 = v612 + 1;
          result = 399;
          do
          {
            v613 = vadd_s32(v613, 0x100000001);
            v609[2] = v613;
            if (*(v614 - 1) == 10)
            {
              v611 = 0;
              v609[1].i32[0] = ++v610;
            }

            else
            {
              ++v611;
            }

            v609[1].i32[1] = v611;
          }

          while (*v614++);
          return result;
        case 35:
          v1464 = *v4;
          v1465 = (*v4)[1].i32[0];
          v1466 = (*v4)[1].i32[1];
          v1464->i32[0] = v1465;
          v1464->i32[1] = v1466;
          v1467 = *(v3 + 136);
          if (!*v1467)
          {
            return 405;
          }

          v1468 = v1464[2];
          v1469 = v1467 + 1;
          result = 405;
          do
          {
            v1468 = vadd_s32(v1468, 0x100000001);
            v1464[2] = v1468;
            if (*(v1469 - 1) == 10)
            {
              v1466 = 0;
              v1464[1].i32[0] = ++v1465;
            }

            else
            {
              ++v1466;
            }

            v1464[1].i32[1] = v1466;
          }

          while (*v1469++);
          return result;
        case 36:
          v270 = *v4;
          v271 = (*v4)[1].i32[0];
          v272 = (*v4)[1].i32[1];
          v270->i32[0] = v271;
          v270->i32[1] = v272;
          v273 = *(v3 + 136);
          if (!*v273)
          {
            return 263;
          }

          v274 = v270[2];
          v275 = v273 + 1;
          result = 263;
          do
          {
            v274 = vadd_s32(v274, 0x100000001);
            v270[2] = v274;
            if (*(v275 - 1) == 10)
            {
              v272 = 0;
              v270[1].i32[0] = ++v271;
            }

            else
            {
              ++v272;
            }

            v270[1].i32[1] = v272;
          }

          while (*v275++);
          return result;
        case 37:
          v937 = *v4;
          v938 = (*v4)[1].i32[0];
          v939 = (*v4)[1].i32[1];
          v937->i32[0] = v938;
          v937->i32[1] = v939;
          v940 = *(v3 + 136);
          if (!*v940)
          {
            return 287;
          }

          v941 = v937[2];
          v942 = v940 + 1;
          result = 287;
          do
          {
            v941 = vadd_s32(v941, 0x100000001);
            v937[2] = v941;
            if (*(v942 - 1) == 10)
            {
              v939 = 0;
              v937[1].i32[0] = ++v938;
            }

            else
            {
              ++v939;
            }

            v937[1].i32[1] = v939;
          }

          while (*v942++);
          return result;
        case 38:
          v815 = *v4;
          v816 = (*v4)[1].i32[0];
          v817 = (*v4)[1].i32[1];
          v815->i32[0] = v816;
          v815->i32[1] = v817;
          v818 = *(v3 + 136);
          if (!*v818)
          {
            return 277;
          }

          v819 = v815[2];
          v820 = v818 + 1;
          result = 277;
          do
          {
            v819 = vadd_s32(v819, 0x100000001);
            v815[2] = v819;
            if (*(v820 - 1) == 10)
            {
              v817 = 0;
              v815[1].i32[0] = ++v816;
            }

            else
            {
              ++v817;
            }

            v815[1].i32[1] = v817;
          }

          while (*v820++);
          return result;
        case 39:
          v1081 = *v4;
          v1082 = (*v4)[1].i32[0];
          v1083 = (*v4)[1].i32[1];
          v1081->i32[0] = v1082;
          v1081->i32[1] = v1083;
          v1084 = *(v3 + 136);
          if (!*v1084)
          {
            return 297;
          }

          v1085 = v1081[2];
          v1086 = v1084 + 1;
          result = 297;
          do
          {
            v1085 = vadd_s32(v1085, 0x100000001);
            v1081[2] = v1085;
            if (*(v1086 - 1) == 10)
            {
              v1083 = 0;
              v1081[1].i32[0] = ++v1082;
            }

            else
            {
              ++v1083;
            }

            v1081[1].i32[1] = v1083;
          }

          while (*v1086++);
          return result;
        case 40:
          v1074 = *v4;
          v1075 = (*v4)[1].i32[0];
          v1076 = (*v4)[1].i32[1];
          v1074->i32[0] = v1075;
          v1074->i32[1] = v1076;
          v1077 = *(v3 + 136);
          if (!*v1077)
          {
            return 324;
          }

          v1078 = v1074[2];
          v1079 = v1077 + 1;
          result = 324;
          do
          {
            v1078 = vadd_s32(v1078, 0x100000001);
            v1074[2] = v1078;
            if (*(v1079 - 1) == 10)
            {
              v1076 = 0;
              v1074[1].i32[0] = ++v1075;
            }

            else
            {
              ++v1076;
            }

            v1074[1].i32[1] = v1076;
          }

          while (*v1079++);
          return result;
        case 41:
          v975 = *v4;
          v976 = (*v4)[1].i32[0];
          v977 = (*v4)[1].i32[1];
          v975->i32[0] = v976;
          v975->i32[1] = v977;
          v978 = *(v3 + 136);
          if (!*v978)
          {
            return 347;
          }

          v979 = v975[2];
          v980 = v978 + 1;
          result = 347;
          do
          {
            v979 = vadd_s32(v979, 0x100000001);
            v975[2] = v979;
            if (*(v980 - 1) == 10)
            {
              v977 = 0;
              v975[1].i32[0] = ++v976;
            }

            else
            {
              ++v977;
            }

            v975[1].i32[1] = v977;
          }

          while (*v980++);
          return result;
        case 42:
          v464 = *v4;
          v465 = (*v4)[1].i32[0];
          v466 = (*v4)[1].i32[1];
          v464->i32[0] = v465;
          v464->i32[1] = v466;
          v467 = *(v3 + 136);
          if (!*v467)
          {
            return 293;
          }

          v468 = v464[2];
          v469 = v467 + 1;
          result = 293;
          do
          {
            v468 = vadd_s32(v468, 0x100000001);
            v464[2] = v468;
            if (*(v469 - 1) == 10)
            {
              v466 = 0;
              v464[1].i32[0] = ++v465;
            }

            else
            {
              ++v466;
            }

            v464[1].i32[1] = v466;
          }

          while (*v469++);
          return result;
        case 43:
          v990 = *v4;
          v991 = (*v4)[1].i32[0];
          v992 = (*v4)[1].i32[1];
          v990->i32[0] = v991;
          v990->i32[1] = v992;
          v993 = *(v3 + 136);
          if (!*v993)
          {
            return 298;
          }

          v994 = v990[2];
          v995 = v993 + 1;
          result = 298;
          do
          {
            v994 = vadd_s32(v994, 0x100000001);
            v990[2] = v994;
            if (*(v995 - 1) == 10)
            {
              v992 = 0;
              v990[1].i32[0] = ++v991;
            }

            else
            {
              ++v992;
            }

            v990[1].i32[1] = v992;
          }

          while (*v995++);
          return result;
        case 44:
          v534 = *v4;
          v535 = (*v4)[1].i32[0];
          v536 = (*v4)[1].i32[1];
          v534->i32[0] = v535;
          v534->i32[1] = v536;
          v537 = *(v3 + 136);
          if (!*v537)
          {
            return 268;
          }

          v538 = v534[2];
          v539 = v537 + 1;
          result = 268;
          do
          {
            v538 = vadd_s32(v538, 0x100000001);
            v534[2] = v538;
            if (*(v539 - 1) == 10)
            {
              v536 = 0;
              v534[1].i32[0] = ++v535;
            }

            else
            {
              ++v536;
            }

            v534[1].i32[1] = v536;
          }

          while (*v539++);
          return result;
        case 45:
          v1036 = *v4;
          v1037 = (*v4)[1].i32[0];
          v1038 = (*v4)[1].i32[1];
          v1036->i32[0] = v1037;
          v1036->i32[1] = v1038;
          v1039 = *(v3 + 136);
          if (!*v1039)
          {
            return 428;
          }

          v1040 = v1036[2];
          v1041 = v1039 + 1;
          result = 428;
          do
          {
            v1040 = vadd_s32(v1040, 0x100000001);
            v1036[2] = v1040;
            if (*(v1041 - 1) == 10)
            {
              v1038 = 0;
              v1036[1].i32[0] = ++v1037;
            }

            else
            {
              ++v1038;
            }

            v1036[1].i32[1] = v1038;
          }

          while (*v1041++);
          return result;
        case 46:
          v884 = *v4;
          v885 = (*v4)[1].i32[0];
          v886 = (*v4)[1].i32[1];
          v884->i32[0] = v885;
          v884->i32[1] = v886;
          v887 = *(v3 + 136);
          if (!*v887)
          {
            return 299;
          }

          v888 = v884[2];
          v889 = v887 + 1;
          result = 299;
          do
          {
            v888 = vadd_s32(v888, 0x100000001);
            v884[2] = v888;
            if (*(v889 - 1) == 10)
            {
              v886 = 0;
              v884[1].i32[0] = ++v885;
            }

            else
            {
              ++v886;
            }

            v884[1].i32[1] = v886;
          }

          while (*v889++);
          return result;
        case 47:
          v295 = *v4;
          v296 = (*v4)[1].i32[0];
          v297 = (*v4)[1].i32[1];
          v295->i32[0] = v296;
          v295->i32[1] = v297;
          v298 = *(v3 + 136);
          if (!*v298)
          {
            return 348;
          }

          v299 = v295[2];
          v300 = v298 + 1;
          result = 348;
          do
          {
            v299 = vadd_s32(v299, 0x100000001);
            v295[2] = v299;
            if (*(v300 - 1) == 10)
            {
              v297 = 0;
              v295[1].i32[0] = ++v296;
            }

            else
            {
              ++v297;
            }

            v295[1].i32[1] = v297;
          }

          while (*v300++);
          return result;
        case 48:
          v334 = *v4;
          v335 = (*v4)[1].i32[0];
          v336 = (*v4)[1].i32[1];
          v334->i32[0] = v335;
          v334->i32[1] = v336;
          v337 = *(v3 + 136);
          if (!*v337)
          {
            return 349;
          }

          v338 = v334[2];
          v339 = v337 + 1;
          result = 349;
          do
          {
            v338 = vadd_s32(v338, 0x100000001);
            v334[2] = v338;
            if (*(v339 - 1) == 10)
            {
              v336 = 0;
              v334[1].i32[0] = ++v335;
            }

            else
            {
              ++v336;
            }

            v334[1].i32[1] = v336;
          }

          while (*v339++);
          return result;
        case 49:
          v952 = *v4;
          v953 = (*v4)[1].i32[0];
          v954 = (*v4)[1].i32[1];
          v952->i32[0] = v953;
          v952->i32[1] = v954;
          v955 = *(v3 + 136);
          if (!*v955)
          {
            return 375;
          }

          v956 = v952[2];
          v957 = v955 + 1;
          result = 375;
          do
          {
            v956 = vadd_s32(v956, 0x100000001);
            v952[2] = v956;
            if (*(v957 - 1) == 10)
            {
              v954 = 0;
              v952[1].i32[0] = ++v953;
            }

            else
            {
              ++v954;
            }

            v952[1].i32[1] = v954;
          }

          while (*v957++);
          return result;
        case 50:
          v1268 = *v4;
          v1269 = (*v4)[1].i32[0];
          v1270 = (*v4)[1].i32[1];
          v1268->i32[0] = v1269;
          v1268->i32[1] = v1270;
          v1271 = *(v3 + 136);
          if (!*v1271)
          {
            return 300;
          }

          v1272 = v1268[2];
          v1273 = v1271 + 1;
          result = 300;
          do
          {
            v1272 = vadd_s32(v1272, 0x100000001);
            v1268[2] = v1272;
            if (*(v1273 - 1) == 10)
            {
              v1270 = 0;
              v1268[1].i32[0] = ++v1269;
            }

            else
            {
              ++v1270;
            }

            v1268[1].i32[1] = v1270;
          }

          while (*v1273++);
          return result;
        case 51:
          v381 = *v4;
          v382 = (*v4)[1].i32[0];
          v383 = (*v4)[1].i32[1];
          v381->i32[0] = v382;
          v381->i32[1] = v383;
          v384 = *(v3 + 136);
          if (!*v384)
          {
            return 301;
          }

          v385 = v381[2];
          v386 = v384 + 1;
          result = 301;
          do
          {
            v385 = vadd_s32(v385, 0x100000001);
            v381[2] = v385;
            if (*(v386 - 1) == 10)
            {
              v383 = 0;
              v381[1].i32[0] = ++v382;
            }

            else
            {
              ++v383;
            }

            v381[1].i32[1] = v383;
          }

          while (*v386++);
          return result;
        case 52:
          v1549 = *v4;
          v1550 = (*v4)[1].i32[0];
          v1551 = (*v4)[1].i32[1];
          v1549->i32[0] = v1550;
          v1549->i32[1] = v1551;
          v1552 = *(v3 + 136);
          if (!*v1552)
          {
            return 278;
          }

          v1553 = v1549[2];
          v1554 = v1552 + 1;
          result = 278;
          do
          {
            v1553 = vadd_s32(v1553, 0x100000001);
            v1549[2] = v1553;
            if (*(v1554 - 1) == 10)
            {
              v1551 = 0;
              v1549[1].i32[0] = ++v1550;
            }

            else
            {
              ++v1551;
            }

            v1549[1].i32[1] = v1551;
          }

          while (*v1554++);
          return result;
        case 53:
          v1013 = *v4;
          v1014 = (*v4)[1].i32[0];
          v1015 = (*v4)[1].i32[1];
          v1013->i32[0] = v1014;
          v1013->i32[1] = v1015;
          v1016 = *(v3 + 136);
          if (!*v1016)
          {
            return 302;
          }

          v1017 = v1013[2];
          v1018 = v1016 + 1;
          result = 302;
          do
          {
            v1017 = vadd_s32(v1017, 0x100000001);
            v1013[2] = v1017;
            if (*(v1018 - 1) == 10)
            {
              v1015 = 0;
              v1013[1].i32[0] = ++v1014;
            }

            else
            {
              ++v1015;
            }

            v1013[1].i32[1] = v1015;
          }

          while (*v1018++);
          return result;
        case 54:
          v1135 = *v4;
          v1136 = (*v4)[1].i32[0];
          v1137 = (*v4)[1].i32[1];
          v1135->i32[0] = v1136;
          v1135->i32[1] = v1137;
          v1138 = *(v3 + 136);
          if (!*v1138)
          {
            return 279;
          }

          v1139 = v1135[2];
          v1140 = v1138 + 1;
          result = 279;
          do
          {
            v1139 = vadd_s32(v1139, 0x100000001);
            v1135[2] = v1139;
            if (*(v1140 - 1) == 10)
            {
              v1137 = 0;
              v1135[1].i32[0] = ++v1136;
            }

            else
            {
              ++v1137;
            }

            v1135[1].i32[1] = v1137;
          }

          while (*v1140++);
          return result;
        case 55:
          v302 = *v4;
          v303 = (*v4)[1].i32[0];
          v304 = (*v4)[1].i32[1];
          v302->i32[0] = v303;
          v302->i32[1] = v304;
          v305 = *(v3 + 136);
          if (!*v305)
          {
            return 303;
          }

          v306 = v302[2];
          v307 = v305 + 1;
          result = 303;
          do
          {
            v306 = vadd_s32(v306, 0x100000001);
            v302[2] = v306;
            if (*(v307 - 1) == 10)
            {
              v304 = 0;
              v302[1].i32[0] = ++v303;
            }

            else
            {
              ++v304;
            }

            v302[1].i32[1] = v304;
          }

          while (*v307++);
          return result;
        case 56:
          v222 = *v4;
          v223 = (*v4)[1];
          **v4 = v223;
          v224 = *(v3 + 136);
          if (!*v224)
          {
            return 430;
          }

          v225 = v222[2];
          v226 = v223.i32[0];
          v227 = v222[1].i32[1];
          v228 = v224 + 1;
          result = 430;
          do
          {
            v225 = vadd_s32(v225, 0x100000001);
            v222[2] = v225;
            if (*(v228 - 1) == 10)
            {
              v227 = 0;
              v222[1].i32[0] = ++v226;
            }

            else
            {
              ++v227;
            }

            v222[1].i32[1] = v227;
          }

          while (*v228++);
          return result;
        case 57:
          v921 = *v4;
          v922 = (*v4)[1];
          **v4 = v922;
          v923 = *(v3 + 136);
          if (!*v923)
          {
            return 410;
          }

          v924 = v921[2];
          v925 = v922.i32[0];
          v926 = v921[1].i32[1];
          v927 = v923 + 1;
          result = 410;
          do
          {
            v924 = vadd_s32(v924, 0x100000001);
            v921[2] = v924;
            if (*(v927 - 1) == 10)
            {
              v926 = 0;
              v921[1].i32[0] = ++v925;
            }

            else
            {
              ++v926;
            }

            v921[1].i32[1] = v926;
          }

          while (*v927++);
          return result;
        case 58:
          v1252 = *v4;
          v1253 = (*v4)[1];
          **v4 = v1253;
          v1254 = *(v3 + 136);
          if (!*v1254)
          {
            return 350;
          }

          v1255 = v1252[2];
          v1256 = v1253.i32[0];
          v1257 = v1252[1].i32[1];
          v1258 = v1254 + 1;
          result = 350;
          do
          {
            v1255 = vadd_s32(v1255, 0x100000001);
            v1252[2] = v1255;
            if (*(v1258 - 1) == 10)
            {
              v1257 = 0;
              v1252[1].i32[0] = ++v1256;
            }

            else
            {
              ++v1257;
            }

            v1252[1].i32[1] = v1257;
          }

          while (*v1258++);
          return result;
        case 59:
          v632 = *v4;
          v633 = (*v4)[1];
          **v4 = v633;
          v634 = *(v3 + 136);
          if (!*v634)
          {
            return 325;
          }

          v635 = v632[2];
          v636 = v633.i32[0];
          v637 = v632[1].i32[1];
          v638 = v634 + 1;
          result = 325;
          do
          {
            v635 = vadd_s32(v635, 0x100000001);
            v632[2] = v635;
            if (*(v638 - 1) == 10)
            {
              v637 = 0;
              v632[1].i32[0] = ++v636;
            }

            else
            {
              ++v637;
            }

            v632[1].i32[1] = v637;
          }

          while (*v638++);
          return result;
        case 60:
          v1104 = *v4;
          v1105 = (*v4)[1];
          **v4 = v1105;
          v1106 = *(v3 + 136);
          if (!*v1106)
          {
            return 424;
          }

          v1107 = v1104[2];
          v1108 = v1105.i32[0];
          v1109 = v1104[1].i32[1];
          v1110 = v1106 + 1;
          result = 424;
          do
          {
            v1107 = vadd_s32(v1107, 0x100000001);
            v1104[2] = v1107;
            if (*(v1110 - 1) == 10)
            {
              v1109 = 0;
              v1104[1].i32[0] = ++v1108;
            }

            else
            {
              ++v1109;
            }

            v1104[1].i32[1] = v1109;
          }

          while (*v1110++);
          return result;
        case 61:
          v707 = *v4;
          v708 = (*v4)[1];
          **v4 = v708;
          v709 = *(v3 + 136);
          if (!*v709)
          {
            return 376;
          }

          v710 = v707[2];
          v711 = v708.i32[0];
          v712 = v707[1].i32[1];
          v713 = v709 + 1;
          result = 376;
          do
          {
            v710 = vadd_s32(v710, 0x100000001);
            v707[2] = v710;
            if (*(v713 - 1) == 10)
            {
              v712 = 0;
              v707[1].i32[0] = ++v711;
            }

            else
            {
              ++v712;
            }

            v707[1].i32[1] = v712;
          }

          while (*v713++);
          return result;
        case 62:
          v1314 = *v4;
          v1315 = (*v4)[1];
          **v4 = v1315;
          v1316 = *(v3 + 136);
          if (!*v1316)
          {
            return 305;
          }

          v1317 = v1314[2];
          v1318 = v1315.i32[0];
          v1319 = v1314[1].i32[1];
          v1320 = v1316 + 1;
          result = 305;
          do
          {
            v1317 = vadd_s32(v1317, 0x100000001);
            v1314[2] = v1317;
            if (*(v1320 - 1) == 10)
            {
              v1319 = 0;
              v1314[1].i32[0] = ++v1318;
            }

            else
            {
              ++v1319;
            }

            v1314[1].i32[1] = v1319;
          }

          while (*v1320++);
          return result;
        case 63:
          v287 = *v4;
          v288 = (*v4)[1];
          **v4 = v288;
          v289 = *(v3 + 136);
          if (!*v289)
          {
            return 351;
          }

          v290 = v287[2];
          v291 = v288.i32[0];
          v292 = v287[1].i32[1];
          v293 = v289 + 1;
          result = 351;
          do
          {
            v290 = vadd_s32(v290, 0x100000001);
            v287[2] = v290;
            if (*(v293 - 1) == 10)
            {
              v292 = 0;
              v287[1].i32[0] = ++v291;
            }

            else
            {
              ++v292;
            }

            v287[1].i32[1] = v292;
          }

          while (*v293++);
          return result;
        case 64:
          v166 = *v4;
          v167 = (*v4)[1];
          **v4 = v167;
          v168 = *(v3 + 136);
          if (!*v168)
          {
            return 352;
          }

          v169 = v166[2];
          v170 = v167.i32[0];
          v171 = v166[1].i32[1];
          v172 = v168 + 1;
          result = 352;
          do
          {
            v169 = vadd_s32(v169, 0x100000001);
            v166[2] = v169;
            if (*(v172 - 1) == 10)
            {
              v171 = 0;
              v166[1].i32[0] = ++v170;
            }

            else
            {
              ++v171;
            }

            v166[1].i32[1] = v171;
          }

          while (*v172++);
          return result;
        case 65:
          v518 = *v4;
          v519 = (*v4)[1];
          **v4 = v519;
          v520 = *(v3 + 136);
          if (!*v520)
          {
            return 306;
          }

          v521 = v518[2];
          v522 = v519.i32[0];
          v523 = v518[1].i32[1];
          v524 = v520 + 1;
          result = 306;
          do
          {
            v521 = vadd_s32(v521, 0x100000001);
            v518[2] = v521;
            if (*(v524 - 1) == 10)
            {
              v523 = 0;
              v518[1].i32[0] = ++v522;
            }

            else
            {
              ++v523;
            }

            v518[1].i32[1] = v523;
          }

          while (*v524++);
          return result;
        case 66:
          v1181 = *v4;
          v1182 = (*v4)[1];
          **v4 = v1182;
          v1183 = *(v3 + 136);
          if (!*v1183)
          {
            return 326;
          }

          v1184 = v1181[2];
          v1185 = v1182.i32[0];
          v1186 = v1181[1].i32[1];
          v1187 = v1183 + 1;
          result = 326;
          do
          {
            v1184 = vadd_s32(v1184, 0x100000001);
            v1181[2] = v1184;
            if (*(v1187 - 1) == 10)
            {
              v1186 = 0;
              v1181[1].i32[0] = ++v1185;
            }

            else
            {
              ++v1186;
            }

            v1181[1].i32[1] = v1186;
          }

          while (*v1187++);
          return result;
        case 67:
          v1402 = *v4;
          v1403 = (*v4)[1];
          **v4 = v1403;
          v1404 = *(v3 + 136);
          if (!*v1404)
          {
            return 422;
          }

          v1405 = v1402[2];
          v1406 = v1403.i32[0];
          v1407 = v1402[1].i32[1];
          v1408 = v1404 + 1;
          result = 422;
          do
          {
            v1405 = vadd_s32(v1405, 0x100000001);
            v1402[2] = v1405;
            if (*(v1408 - 1) == 10)
            {
              v1407 = 0;
              v1402[1].i32[0] = ++v1406;
            }

            else
            {
              ++v1407;
            }

            v1402[1].i32[1] = v1407;
          }

          while (*v1408++);
          return result;
        case 68:
          v1150 = *v4;
          v1151 = (*v4)[1];
          **v4 = v1151;
          v1152 = *(v3 + 136);
          if (!*v1152)
          {
            return 353;
          }

          v1153 = v1150[2];
          v1154 = v1151.i32[0];
          v1155 = v1150[1].i32[1];
          v1156 = v1152 + 1;
          result = 353;
          do
          {
            v1153 = vadd_s32(v1153, 0x100000001);
            v1150[2] = v1153;
            if (*(v1156 - 1) == 10)
            {
              v1155 = 0;
              v1150[1].i32[0] = ++v1154;
            }

            else
            {
              ++v1155;
            }

            v1150[1].i32[1] = v1155;
          }

          while (*v1156++);
          return result;
        case 69:
          v1051 = *v4;
          v1052 = (*v4)[1];
          **v4 = v1052;
          v1053 = *(v3 + 136);
          if (!*v1053)
          {
            return 307;
          }

          v1054 = v1051[2];
          v1055 = v1052.i32[0];
          v1056 = v1051[1].i32[1];
          v1057 = v1053 + 1;
          result = 307;
          do
          {
            v1054 = vadd_s32(v1054, 0x100000001);
            v1051[2] = v1054;
            if (*(v1057 - 1) == 10)
            {
              v1056 = 0;
              v1051[1].i32[0] = ++v1055;
            }

            else
            {
              ++v1056;
            }

            v1051[1].i32[1] = v1056;
          }

          while (*v1057++);
          return result;
        case 70:
          v1471 = *v4;
          v1472 = (*v4)[1];
          **v4 = v1472;
          v1473 = *(v3 + 136);
          if (!*v1473)
          {
            return 354;
          }

          v1474 = v1471[2];
          v1475 = v1472.i32[0];
          v1476 = v1471[1].i32[1];
          v1477 = v1473 + 1;
          result = 354;
          do
          {
            v1474 = vadd_s32(v1474, 0x100000001);
            v1471[2] = v1474;
            if (*(v1477 - 1) == 10)
            {
              v1476 = 0;
              v1471[1].i32[0] = ++v1475;
            }

            else
            {
              ++v1476;
            }

            v1471[1].i32[1] = v1476;
          }

          while (*v1477++);
          return result;
        case 71:
          v663 = *v4;
          v664 = (*v4)[1];
          **v4 = v664;
          v665 = *(v3 + 136);
          if (!*v665)
          {
            return 398;
          }

          v666 = v663[2];
          v667 = v664.i32[0];
          v668 = v663[1].i32[1];
          v669 = v665 + 1;
          result = 398;
          do
          {
            v666 = vadd_s32(v666, 0x100000001);
            v663[2] = v666;
            if (*(v669 - 1) == 10)
            {
              v668 = 0;
              v663[1].i32[0] = ++v667;
            }

            else
            {
              ++v668;
            }

            v663[1].i32[1] = v668;
          }

          while (*v669++);
          return result;
        case 72:
          v1533 = *v4;
          v1534 = (*v4)[1];
          **v4 = v1534;
          v1535 = *(v3 + 136);
          if (!*v1535)
          {
            return 404;
          }

          v1536 = v1533[2];
          v1537 = v1534.i32[0];
          v1538 = v1533[1].i32[1];
          v1539 = v1535 + 1;
          result = 404;
          do
          {
            v1536 = vadd_s32(v1536, 0x100000001);
            v1533[2] = v1536;
            if (*(v1539 - 1) == 10)
            {
              v1538 = 0;
              v1533[1].i32[0] = ++v1537;
            }

            else
            {
              ++v1538;
            }

            v1533[1].i32[1] = v1538;
          }

          while (*v1539++);
          return result;
        case 73:
          v647 = *v4;
          v648 = (*v4)[1];
          **v4 = v648;
          v649 = *(v3 + 136);
          if (!*v649)
          {
            return 385;
          }

          v650 = v647[2];
          v651 = v648.i32[0];
          v652 = v647[1].i32[1];
          v653 = v649 + 1;
          result = 385;
          do
          {
            v650 = vadd_s32(v650, 0x100000001);
            v647[2] = v650;
            if (*(v653 - 1) == 10)
            {
              v652 = 0;
              v647[1].i32[0] = ++v651;
            }

            else
            {
              ++v652;
            }

            v647[1].i32[1] = v652;
          }

          while (*v653++);
          return result;
        case 74:
          v456 = *v4;
          v457 = (*v4)[1];
          **v4 = v457;
          v458 = *(v3 + 136);
          if (!*v458)
          {
            return 431;
          }

          v459 = v456[2];
          v460 = v457.i32[0];
          v461 = v456[1].i32[1];
          v462 = v458 + 1;
          result = 431;
          do
          {
            v459 = vadd_s32(v459, 0x100000001);
            v456[2] = v459;
            if (*(v462 - 1) == 10)
            {
              v461 = 0;
              v456[1].i32[0] = ++v460;
            }

            else
            {
              ++v461;
            }

            v456[1].i32[1] = v461;
          }

          while (*v462++);
          return result;
        case 75:
          v1433 = *v4;
          v1434 = (*v4)[1];
          **v4 = v1434;
          v1435 = *(v3 + 136);
          if (!*v1435)
          {
            return 395;
          }

          v1436 = v1433[2];
          v1437 = v1434.i32[0];
          v1438 = v1433[1].i32[1];
          v1439 = v1435 + 1;
          result = 395;
          do
          {
            v1436 = vadd_s32(v1436, 0x100000001);
            v1433[2] = v1436;
            if (*(v1439 - 1) == 10)
            {
              v1438 = 0;
              v1433[1].i32[0] = ++v1437;
            }

            else
            {
              ++v1438;
            }

            v1433[1].i32[1] = v1438;
          }

          while (*v1439++);
          return result;
        case 76:
          v1495 = *v4;
          v1496 = (*v4)[1];
          **v4 = v1496;
          v1497 = *(v3 + 136);
          if (!*v1497)
          {
            return 308;
          }

          v1498 = v1495[2];
          v1499 = v1496.i32[0];
          v1500 = v1495[1].i32[1];
          v1501 = v1497 + 1;
          result = 308;
          do
          {
            v1498 = vadd_s32(v1498, 0x100000001);
            v1495[2] = v1498;
            if (*(v1501 - 1) == 10)
            {
              v1500 = 0;
              v1495[1].i32[0] = ++v1499;
            }

            else
            {
              ++v1500;
            }

            v1495[1].i32[1] = v1500;
          }

          while (*v1501++);
          return result;
        case 77:
          v1028 = *v4;
          v1029 = (*v4)[1];
          **v4 = v1029;
          v1030 = *(v3 + 136);
          if (!*v1030)
          {
            return 386;
          }

          v1031 = v1028[2];
          v1032 = v1029.i32[0];
          v1033 = v1028[1].i32[1];
          v1034 = v1030 + 1;
          result = 386;
          do
          {
            v1031 = vadd_s32(v1031, 0x100000001);
            v1028[2] = v1031;
            if (*(v1034 - 1) == 10)
            {
              v1033 = 0;
              v1028[1].i32[0] = ++v1032;
            }

            else
            {
              ++v1033;
            }

            v1028[1].i32[1] = v1033;
          }

          while (*v1034++);
          return result;
        case 78:
          v1378 = *v4;
          v1379 = (*v4)[1];
          **v4 = v1379;
          v1380 = *(v3 + 136);
          if (!*v1380)
          {
            return 327;
          }

          v1381 = v1378[2];
          v1382 = v1379.i32[0];
          v1383 = v1378[1].i32[1];
          v1384 = v1380 + 1;
          result = 327;
          do
          {
            v1381 = vadd_s32(v1381, 0x100000001);
            v1378[2] = v1381;
            if (*(v1384 - 1) == 10)
            {
              v1383 = 0;
              v1378[1].i32[0] = ++v1382;
            }

            else
            {
              ++v1383;
            }

            v1378[1].i32[1] = v1383;
          }

          while (*v1384++);
          return result;
        case 79:
          v876 = *v4;
          v877 = (*v4)[1];
          **v4 = v877;
          v878 = *(v3 + 136);
          if (!*v878)
          {
            return 328;
          }

          v879 = v876[2];
          v880 = v877.i32[0];
          v881 = v876[1].i32[1];
          v882 = v878 + 1;
          result = 328;
          do
          {
            v879 = vadd_s32(v879, 0x100000001);
            v876[2] = v879;
            if (*(v882 - 1) == 10)
            {
              v881 = 0;
              v876[1].i32[0] = ++v880;
            }

            else
            {
              ++v881;
            }

            v876[1].i32[1] = v881;
          }

          while (*v882++);
          return result;
        case 80:
          v262 = *v4;
          v263 = (*v4)[1];
          **v4 = v263;
          v264 = *(v3 + 136);
          if (!*v264)
          {
            return 309;
          }

          v265 = v262[2];
          v266 = v263.i32[0];
          v267 = v262[1].i32[1];
          v268 = v264 + 1;
          result = 309;
          do
          {
            v265 = vadd_s32(v265, 0x100000001);
            v262[2] = v265;
            if (*(v268 - 1) == 10)
            {
              v267 = 0;
              v262[1].i32[0] = ++v266;
            }

            else
            {
              ++v267;
            }

            v262[1].i32[1] = v267;
          }

          while (*v268++);
          return result;
        case 81:
          v586 = *v4;
          v587 = (*v4)[1];
          **v4 = v587;
          v588 = *(v3 + 136);
          if (!*v588)
          {
            return 377;
          }

          v589 = v586[2];
          v590 = v587.i32[0];
          v591 = v586[1].i32[1];
          v592 = v588 + 1;
          result = 377;
          do
          {
            v589 = vadd_s32(v589, 0x100000001);
            v586[2] = v589;
            if (*(v592 - 1) == 10)
            {
              v591 = 0;
              v586[1].i32[0] = ++v590;
            }

            else
            {
              ++v591;
            }

            v586[1].i32[1] = v591;
          }

          while (*v592++);
          return result;
        case 82:
          v487 = *v4;
          v488 = (*v4)[1];
          **v4 = v488;
          v489 = *(v3 + 136);
          if (!*v489)
          {
            return 280;
          }

          v490 = v487[2];
          v491 = v488.i32[0];
          v492 = v487[1].i32[1];
          v493 = v489 + 1;
          result = 280;
          do
          {
            v490 = vadd_s32(v490, 0x100000001);
            v487[2] = v490;
            if (*(v493 - 1) == 10)
            {
              v492 = 0;
              v487[1].i32[0] = ++v491;
            }

            else
            {
              ++v492;
            }

            v487[1].i32[1] = v492;
          }

          while (*v493++);
          return result;
        case 83:
          v1362 = *v4;
          v1363 = (*v4)[1];
          **v4 = v1363;
          v1364 = *(v3 + 136);
          if (!*v1364)
          {
            return 265;
          }

          v1365 = v1362[2];
          v1366 = v1363.i32[0];
          v1367 = v1362[1].i32[1];
          v1368 = v1364 + 1;
          result = 265;
          do
          {
            v1365 = vadd_s32(v1365, 0x100000001);
            v1362[2] = v1365;
            if (*(v1368 - 1) == 10)
            {
              v1367 = 0;
              v1362[1].i32[0] = ++v1366;
            }

            else
            {
              ++v1367;
            }

            v1362[1].i32[1] = v1367;
          }

          while (*v1368++);
          return result;
        case 84:
          v254 = *v4;
          v255 = (*v4)[1];
          **v4 = v255;
          v256 = *(v3 + 136);
          if (!*v256)
          {
            return 408;
          }

          v257 = v254[2];
          v258 = v255.i32[0];
          v259 = v254[1].i32[1];
          v260 = v256 + 1;
          result = 408;
          do
          {
            v257 = vadd_s32(v257, 0x100000001);
            v254[2] = v257;
            if (*(v260 - 1) == 10)
            {
              v259 = 0;
              v254[1].i32[0] = ++v258;
            }

            else
            {
              ++v259;
            }

            v254[1].i32[1] = v259;
          }

          while (*v260++);
          return result;
        case 85:
          v929 = *v4;
          v930 = (*v4)[1];
          **v4 = v930;
          v931 = *(v3 + 136);
          if (!*v931)
          {
            return 355;
          }

          v932 = v929[2];
          v933 = v930.i32[0];
          v934 = v929[1].i32[1];
          v935 = v931 + 1;
          result = 355;
          do
          {
            v932 = vadd_s32(v932, 0x100000001);
            v929[2] = v932;
            if (*(v935 - 1) == 10)
            {
              v934 = 0;
              v929[1].i32[0] = ++v933;
            }

            else
            {
              ++v934;
            }

            v929[1].i32[1] = v934;
          }

          while (*v935++);
          return result;
        case 86:
          v762 = *v4;
          v763 = (*v4)[1];
          **v4 = v763;
          v764 = *(v3 + 136);
          if (!*v764)
          {
            return 387;
          }

          v765 = v762[2];
          v766 = v763.i32[0];
          v767 = v762[1].i32[1];
          v768 = v764 + 1;
          result = 387;
          do
          {
            v765 = vadd_s32(v765, 0x100000001);
            v762[2] = v765;
            if (*(v768 - 1) == 10)
            {
              v767 = 0;
              v762[1].i32[0] = ++v766;
            }

            else
            {
              ++v767;
            }

            v762[1].i32[1] = v767;
          }

          while (*v768++);
          return result;
        case 87:
          v1096 = *v4;
          v1097 = (*v4)[1];
          **v4 = v1097;
          v1098 = *(v3 + 136);
          if (!*v1098)
          {
            return 310;
          }

          v1099 = v1096[2];
          v1100 = v1097.i32[0];
          v1101 = v1096[1].i32[1];
          v1102 = v1098 + 1;
          result = 310;
          do
          {
            v1099 = vadd_s32(v1099, 0x100000001);
            v1096[2] = v1099;
            if (*(v1102 - 1) == 10)
            {
              v1101 = 0;
              v1096[1].i32[0] = ++v1100;
            }

            else
            {
              ++v1101;
            }

            v1096[1].i32[1] = v1101;
          }

          while (*v1102++);
          return result;
        case 88:
          v800 = *v4;
          v801 = (*v4)[1];
          **v4 = v801;
          v802 = *(v3 + 136);
          if (!*v802)
          {
            return 356;
          }

          v803 = v800[2];
          v804 = v801.i32[0];
          v805 = v800[1].i32[1];
          v806 = v802 + 1;
          result = 356;
          do
          {
            v803 = vadd_s32(v803, 0x100000001);
            v800[2] = v803;
            if (*(v806 - 1) == 10)
            {
              v805 = 0;
              v800[1].i32[0] = ++v804;
            }

            else
            {
              ++v805;
            }

            v800[1].i32[1] = v805;
          }

          while (*v806++);
          return result;
        case 89:
          v510 = *v4;
          v511 = (*v4)[1];
          **v4 = v511;
          v512 = *(v3 + 136);
          if (!*v512)
          {
            return 378;
          }

          v513 = v510[2];
          v514 = v511.i32[0];
          v515 = v510[1].i32[1];
          v516 = v512 + 1;
          result = 378;
          do
          {
            v513 = vadd_s32(v513, 0x100000001);
            v510[2] = v513;
            if (*(v516 - 1) == 10)
            {
              v515 = 0;
              v510[1].i32[0] = ++v514;
            }

            else
            {
              ++v515;
            }

            v510[1].i32[1] = v515;
          }

          while (*v516++);
          return result;
        case 90:
          v1088 = *v4;
          v1089 = (*v4)[1];
          **v4 = v1089;
          v1090 = *(v3 + 136);
          if (!*v1090)
          {
            return 357;
          }

          v1091 = v1088[2];
          v1092 = v1089.i32[0];
          v1093 = v1088[1].i32[1];
          v1094 = v1090 + 1;
          result = 357;
          do
          {
            v1091 = vadd_s32(v1091, 0x100000001);
            v1088[2] = v1091;
            if (*(v1094 - 1) == 10)
            {
              v1093 = 0;
              v1088[1].i32[0] = ++v1092;
            }

            else
            {
              ++v1093;
            }

            v1088[1].i32[1] = v1093;
          }

          while (*v1094++);
          return result;
        case 91:
          v190 = *v4;
          v191 = (*v4)[1];
          **v4 = v191;
          v192 = *(v3 + 136);
          if (!*v192)
          {
            return 358;
          }

          v193 = v190[2];
          v194 = v191.i32[0];
          v195 = v190[1].i32[1];
          v196 = v192 + 1;
          result = 358;
          do
          {
            v193 = vadd_s32(v193, 0x100000001);
            v190[2] = v193;
            if (*(v196 - 1) == 10)
            {
              v195 = 0;
              v190[1].i32[0] = ++v194;
            }

            else
            {
              ++v195;
            }

            v190[1].i32[1] = v195;
          }

          while (*v196++);
          return result;
        case 92:
          v699 = *v4;
          v700 = (*v4)[1];
          **v4 = v700;
          v701 = *(v3 + 136);
          if (!*v701)
          {
            return 329;
          }

          v702 = v699[2];
          v703 = v700.i32[0];
          v704 = v699[1].i32[1];
          v705 = v701 + 1;
          result = 329;
          do
          {
            v702 = vadd_s32(v702, 0x100000001);
            v699[2] = v702;
            if (*(v705 - 1) == 10)
            {
              v704 = 0;
              v699[1].i32[0] = ++v703;
            }

            else
            {
              ++v704;
            }

            v699[1].i32[1] = v704;
          }

          while (*v705++);
          return result;
        case 93:
          v1158 = *v4;
          v1159 = (*v4)[1];
          **v4 = v1159;
          v1160 = *(v3 + 136);
          if (!*v1160)
          {
            return 359;
          }

          v1161 = v1158[2];
          v1162 = v1159.i32[0];
          v1163 = v1158[1].i32[1];
          v1164 = v1160 + 1;
          result = 359;
          do
          {
            v1161 = vadd_s32(v1161, 0x100000001);
            v1158[2] = v1161;
            if (*(v1164 - 1) == 10)
            {
              v1163 = 0;
              v1158[1].i32[0] = ++v1162;
            }

            else
            {
              ++v1163;
            }

            v1158[1].i32[1] = v1163;
          }

          while (*v1164++);
          return result;
        case 94:
          v1394 = *v4;
          v1395 = (*v4)[1];
          **v4 = v1395;
          v1396 = *(v3 + 136);
          if (!*v1396)
          {
            return 330;
          }

          v1397 = v1394[2];
          v1398 = v1395.i32[0];
          v1399 = v1394[1].i32[1];
          v1400 = v1396 + 1;
          result = 330;
          do
          {
            v1397 = vadd_s32(v1397, 0x100000001);
            v1394[2] = v1397;
            if (*(v1400 - 1) == 10)
            {
              v1399 = 0;
              v1394[1].i32[0] = ++v1398;
            }

            else
            {
              ++v1399;
            }

            v1394[1].i32[1] = v1399;
          }

          while (*v1400++);
          return result;
        case 95:
          v246 = *v4;
          v247 = (*v4)[1];
          **v4 = v247;
          v248 = *(v3 + 136);
          if (!*v248)
          {
            return 418;
          }

          v249 = v246[2];
          v250 = v247.i32[0];
          v251 = v246[1].i32[1];
          v252 = v248 + 1;
          result = 418;
          do
          {
            v249 = vadd_s32(v249, 0x100000001);
            v246[2] = v249;
            if (*(v252 - 1) == 10)
            {
              v251 = 0;
              v246[1].i32[0] = ++v250;
            }

            else
            {
              ++v251;
            }

            v246[1].i32[1] = v251;
          }

          while (*v252++);
          return result;
        case 96:
          v754 = *v4;
          v755 = (*v4)[1];
          **v4 = v755;
          v756 = *(v3 + 136);
          if (!*v756)
          {
            return 360;
          }

          v757 = v754[2];
          v758 = v755.i32[0];
          v759 = v754[1].i32[1];
          v760 = v756 + 1;
          result = 360;
          do
          {
            v757 = vadd_s32(v757, 0x100000001);
            v754[2] = v757;
            if (*(v760 - 1) == 10)
            {
              v759 = 0;
              v754[1].i32[0] = ++v758;
            }

            else
            {
              ++v759;
            }

            v754[1].i32[1] = v759;
          }

          while (*v760++);
          return result;
        case 97:
          v1220 = *v4;
          v1221 = (*v4)[1];
          **v4 = v1221;
          v1222 = *(v3 + 136);
          if (!*v1222)
          {
            return 331;
          }

          v1223 = v1220[2];
          v1224 = v1221.i32[0];
          v1225 = v1220[1].i32[1];
          v1226 = v1222 + 1;
          result = 331;
          do
          {
            v1223 = vadd_s32(v1223, 0x100000001);
            v1220[2] = v1223;
            if (*(v1226 - 1) == 10)
            {
              v1225 = 0;
              v1220[1].i32[0] = ++v1224;
            }

            else
            {
              ++v1225;
            }

            v1220[1].i32[1] = v1225;
          }

          while (*v1226++);
          return result;
        case 98:
          v1120 = *v4;
          v1121 = (*v4)[1];
          **v4 = v1121;
          v1122 = *(v3 + 136);
          if (!*v1122)
          {
            return 332;
          }

          v1123 = v1120[2];
          v1124 = v1121.i32[0];
          v1125 = v1120[1].i32[1];
          v1126 = v1122 + 1;
          result = 332;
          do
          {
            v1123 = vadd_s32(v1123, 0x100000001);
            v1120[2] = v1123;
            if (*(v1126 - 1) == 10)
            {
              v1125 = 0;
              v1120[1].i32[0] = ++v1124;
            }

            else
            {
              ++v1125;
            }

            v1120[1].i32[1] = v1125;
          }

          while (*v1126++);
          return result;
        case 99:
          v1142 = *v4;
          v1143 = (*v4)[1];
          **v4 = v1143;
          v1144 = *(v3 + 136);
          if (!*v1144)
          {
            return 397;
          }

          v1145 = v1142[2];
          v1146 = v1143.i32[0];
          v1147 = v1142[1].i32[1];
          v1148 = v1144 + 1;
          result = 397;
          do
          {
            v1145 = vadd_s32(v1145, 0x100000001);
            v1142[2] = v1145;
            if (*(v1148 - 1) == 10)
            {
              v1147 = 0;
              v1142[1].i32[0] = ++v1146;
            }

            else
            {
              ++v1147;
            }

            v1142[1].i32[1] = v1147;
          }

          while (*v1148++);
          return result;
        case 100:
          v691 = *v4;
          v692 = (*v4)[1];
          **v4 = v692;
          v693 = *(v3 + 136);
          if (!*v693)
          {
            return 403;
          }

          v694 = v691[2];
          v695 = v692.i32[0];
          v696 = v691[1].i32[1];
          v697 = v693 + 1;
          result = 403;
          do
          {
            v694 = vadd_s32(v694, 0x100000001);
            v691[2] = v694;
            if (*(v697 - 1) == 10)
            {
              v696 = 0;
              v691[1].i32[0] = ++v695;
            }

            else
            {
              ++v696;
            }

            v691[1].i32[1] = v696;
          }

          while (*v697++);
          return result;
        case 101:
          v410 = *v4;
          v411 = (*v4)[1];
          **v4 = v411;
          v412 = *(v3 + 136);
          if (!*v412)
          {
            return 400;
          }

          v413 = v410[2];
          v414 = v411.i32[0];
          v415 = v410[1].i32[1];
          v416 = v412 + 1;
          result = 400;
          do
          {
            v413 = vadd_s32(v413, 0x100000001);
            v410[2] = v413;
            if (*(v416 - 1) == 10)
            {
              v415 = 0;
              v410[1].i32[0] = ++v414;
            }

            else
            {
              ++v415;
            }

            v410[1].i32[1] = v415;
          }

          while (*v416++);
          return result;
        case 102:
          v1330 = *v4;
          v1331 = (*v4)[1];
          **v4 = v1331;
          v1332 = *(v3 + 136);
          if (!*v1332)
          {
            return 406;
          }

          v1333 = v1330[2];
          v1334 = v1331.i32[0];
          v1335 = v1330[1].i32[1];
          v1336 = v1332 + 1;
          result = 406;
          do
          {
            v1333 = vadd_s32(v1333, 0x100000001);
            v1330[2] = v1333;
            if (*(v1336 - 1) == 10)
            {
              v1335 = 0;
              v1330[1].i32[0] = ++v1334;
            }

            else
            {
              ++v1335;
            }

            v1330[1].i32[1] = v1335;
          }

          while (*v1336++);
          return result;
        case 103:
          v655 = *v4;
          v656 = (*v4)[1];
          **v4 = v656;
          v657 = *(v3 + 136);
          if (!*v657)
          {
            return 281;
          }

          v658 = v655[2];
          v659 = v656.i32[0];
          v660 = v655[1].i32[1];
          v661 = v657 + 1;
          result = 281;
          do
          {
            v658 = vadd_s32(v658, 0x100000001);
            v655[2] = v658;
            if (*(v661 - 1) == 10)
            {
              v660 = 0;
              v655[1].i32[0] = ++v659;
            }

            else
            {
              ++v660;
            }

            v655[1].i32[1] = v660;
          }

          while (*v661++);
          return result;
        case 104:
          v683 = *v4;
          v684 = (*v4)[1];
          **v4 = v684;
          v685 = *(v3 + 136);
          if (!*v685)
          {
            return 392;
          }

          v686 = v683[2];
          v687 = v684.i32[0];
          v688 = v683[1].i32[1];
          v689 = v685 + 1;
          result = 392;
          do
          {
            v686 = vadd_s32(v686, 0x100000001);
            v683[2] = v686;
            if (*(v689 - 1) == 10)
            {
              v688 = 0;
              v683[1].i32[0] = ++v687;
            }

            else
            {
              ++v688;
            }

            v683[1].i32[1] = v688;
          }

          while (*v689++);
          return result;
        case 105:
          v373 = *v4;
          v374 = (*v4)[1];
          **v4 = v374;
          v375 = *(v3 + 136);
          if (!*v375)
          {
            return 379;
          }

          v376 = v373[2];
          v377 = v374.i32[0];
          v378 = v373[1].i32[1];
          v379 = v375 + 1;
          result = 379;
          do
          {
            v376 = vadd_s32(v376, 0x100000001);
            v373[2] = v376;
            if (*(v379 - 1) == 10)
            {
              v378 = 0;
              v373[1].i32[0] = ++v377;
            }

            else
            {
              ++v378;
            }

            v373[1].i32[1] = v378;
          }

          while (*v379++);
          return result;
        case 106:
          v1228 = *v4;
          v1229 = (*v4)[1];
          **v4 = v1229;
          v1230 = *(v3 + 136);
          if (!*v1230)
          {
            return 416;
          }

          v1231 = v1228[2];
          v1232 = v1229.i32[0];
          v1233 = v1228[1].i32[1];
          v1234 = v1230 + 1;
          result = 416;
          do
          {
            v1231 = vadd_s32(v1231, 0x100000001);
            v1228[2] = v1231;
            if (*(v1234 - 1) == 10)
            {
              v1233 = 0;
              v1228[1].i32[0] = ++v1232;
            }

            else
            {
              ++v1233;
            }

            v1228[1].i32[1] = v1233;
          }

          while (*v1234++);
          return result;
        case 107:
          v349 = *v4;
          v350 = (*v4)[1];
          **v4 = v350;
          v351 = *(v3 + 136);
          if (!*v351)
          {
            return 361;
          }

          v352 = v349[2];
          v353 = v350.i32[0];
          v354 = v349[1].i32[1];
          v355 = v351 + 1;
          result = 361;
          do
          {
            v352 = vadd_s32(v352, 0x100000001);
            v349[2] = v352;
            if (*(v355 - 1) == 10)
            {
              v354 = 0;
              v349[1].i32[0] = ++v353;
            }

            else
            {
              ++v354;
            }

            v349[1].i32[1] = v354;
          }

          while (*v355++);
          return result;
        case 108:
          v601 = *v4;
          v602 = (*v4)[1];
          **v4 = v602;
          v603 = *(v3 + 136);
          if (!*v603)
          {
            return 269;
          }

          v604 = v601[2];
          v605 = v602.i32[0];
          v606 = v601[1].i32[1];
          v607 = v603 + 1;
          result = 269;
          do
          {
            v604 = vadd_s32(v604, 0x100000001);
            v601[2] = v604;
            if (*(v607 - 1) == 10)
            {
              v606 = 0;
              v601[1].i32[0] = ++v605;
            }

            else
            {
              ++v606;
            }

            v601[1].i32[1] = v606;
          }

          while (*v607++);
          return result;
        case 109:
          v1260 = *v4;
          v1261 = (*v4)[1];
          **v4 = v1261;
          v1262 = *(v3 + 136);
          if (!*v1262)
          {
            return 388;
          }

          v1263 = v1260[2];
          v1264 = v1261.i32[0];
          v1265 = v1260[1].i32[1];
          v1266 = v1262 + 1;
          result = 388;
          do
          {
            v1263 = vadd_s32(v1263, 0x100000001);
            v1260[2] = v1263;
            if (*(v1266 - 1) == 10)
            {
              v1265 = 0;
              v1260[1].i32[0] = ++v1264;
            }

            else
            {
              ++v1265;
            }

            v1260[1].i32[1] = v1265;
          }

          while (*v1266++);
          return result;
        case 110:
          v1441 = *v4;
          v1442 = (*v4)[1];
          **v4 = v1442;
          v1443 = *(v3 + 136);
          if (!*v1443)
          {
            return 380;
          }

          v1444 = v1441[2];
          v1445 = v1442.i32[0];
          v1446 = v1441[1].i32[1];
          v1447 = v1443 + 1;
          result = 380;
          do
          {
            v1444 = vadd_s32(v1444, 0x100000001);
            v1441[2] = v1444;
            if (*(v1447 - 1) == 10)
            {
              v1446 = 0;
              v1441[1].i32[0] = ++v1445;
            }

            else
            {
              ++v1446;
            }

            v1441[1].i32[1] = v1446;
          }

          while (*v1447++);
          return result;
        case 111:
          v1456 = *v4;
          v1457 = (*v4)[1];
          **v4 = v1457;
          v1458 = *(v3 + 136);
          if (!*v1458)
          {
            return 311;
          }

          v1459 = v1456[2];
          v1460 = v1457.i32[0];
          v1461 = v1456[1].i32[1];
          v1462 = v1458 + 1;
          result = 311;
          do
          {
            v1459 = vadd_s32(v1459, 0x100000001);
            v1456[2] = v1459;
            if (*(v1462 - 1) == 10)
            {
              v1461 = 0;
              v1456[1].i32[0] = ++v1460;
            }

            else
            {
              ++v1461;
            }

            v1456[1].i32[1] = v1461;
          }

          while (*v1462++);
          return result;
        case 112:
          v715 = *v4;
          v716 = (*v4)[1];
          **v4 = v716;
          v717 = *(v3 + 136);
          if (!*v717)
          {
            return 389;
          }

          v718 = v715[2];
          v719 = v716.i32[0];
          v720 = v715[1].i32[1];
          v721 = v717 + 1;
          result = 389;
          do
          {
            v718 = vadd_s32(v718, 0x100000001);
            v715[2] = v718;
            if (*(v721 - 1) == 10)
            {
              v720 = 0;
              v715[1].i32[0] = ++v719;
            }

            else
            {
              ++v720;
            }

            v715[1].i32[1] = v720;
          }

          while (*v721++);
          return result;
        case 113:
          v1244 = *v4;
          v1245 = (*v4)[1];
          **v4 = v1245;
          v1246 = *(v3 + 136);
          if (!*v1246)
          {
            return 390;
          }

          v1247 = v1244[2];
          v1248 = v1245.i32[0];
          v1249 = v1244[1].i32[1];
          v1250 = v1246 + 1;
          result = 390;
          do
          {
            v1247 = vadd_s32(v1247, 0x100000001);
            v1244[2] = v1247;
            if (*(v1250 - 1) == 10)
            {
              v1249 = 0;
              v1244[1].i32[0] = ++v1248;
            }

            else
            {
              ++v1249;
            }

            v1244[1].i32[1] = v1249;
          }

          while (*v1250++);
          return result;
        case 114:
          v230 = *v4;
          v231 = (*v4)[1];
          **v4 = v231;
          v232 = *(v3 + 136);
          if (!*v232)
          {
            return 333;
          }

          v233 = v230[2];
          v234 = v231.i32[0];
          v235 = v230[1].i32[1];
          v236 = v232 + 1;
          result = 333;
          do
          {
            v233 = vadd_s32(v233, 0x100000001);
            v230[2] = v233;
            if (*(v236 - 1) == 10)
            {
              v235 = 0;
              v230[1].i32[0] = ++v234;
            }

            else
            {
              ++v235;
            }

            v230[1].i32[1] = v235;
          }

          while (*v236++);
          return result;
        case 115:
          v624 = *v4;
          v625 = (*v4)[1];
          **v4 = v625;
          v626 = *(v3 + 136);
          if (!*v626)
          {
            return 335;
          }

          v627 = v624[2];
          v628 = v625.i32[0];
          v629 = v624[1].i32[1];
          v630 = v626 + 1;
          result = 335;
          do
          {
            v627 = vadd_s32(v627, 0x100000001);
            v624[2] = v627;
            if (*(v630 - 1) == 10)
            {
              v629 = 0;
              v624[1].i32[0] = ++v628;
            }

            else
            {
              ++v629;
            }

            v624[1].i32[1] = v629;
          }

          while (*v630++);
          return result;
        case 116:
          v967 = *v4;
          v968 = (*v4)[1];
          **v4 = v968;
          v969 = *(v3 + 136);
          if (!*v969)
          {
            return 334;
          }

          v970 = v967[2];
          v971 = v968.i32[0];
          v972 = v967[1].i32[1];
          v973 = v969 + 1;
          result = 334;
          do
          {
            v970 = vadd_s32(v970, 0x100000001);
            v967[2] = v970;
            if (*(v973 - 1) == 10)
            {
              v972 = 0;
              v967[1].i32[0] = ++v971;
            }

            else
            {
              ++v972;
            }

            v967[1].i32[1] = v972;
          }

          while (*v973++);
          return result;
        case 117:
          v1236 = *v4;
          v1237 = (*v4)[1];
          **v4 = v1237;
          v1238 = *(v3 + 136);
          if (!*v1238)
          {
            return 264;
          }

          v1239 = v1236[2];
          v1240 = v1237.i32[0];
          v1241 = v1236[1].i32[1];
          v1242 = v1238 + 1;
          result = 264;
          do
          {
            v1239 = vadd_s32(v1239, 0x100000001);
            v1236[2] = v1239;
            if (*(v1242 - 1) == 10)
            {
              v1241 = 0;
              v1236[1].i32[0] = ++v1240;
            }

            else
            {
              ++v1241;
            }

            v1236[1].i32[1] = v1241;
          }

          while (*v1242++);
          return result;
        case 118:
          v388 = *v4;
          v389 = (*v4)[1];
          **v4 = v389;
          v390 = *(v3 + 136);
          if (!*v390)
          {
            return 362;
          }

          v391 = v388[2];
          v392 = v389.i32[0];
          v393 = v388[1].i32[1];
          v394 = v390 + 1;
          result = 362;
          do
          {
            v391 = vadd_s32(v391, 0x100000001);
            v388[2] = v391;
            if (*(v394 - 1) == 10)
            {
              v393 = 0;
              v388[1].i32[0] = ++v392;
            }

            else
            {
              ++v393;
            }

            v388[1].i32[1] = v393;
          }

          while (*v394++);
          return result;
        case 119:
          v1066 = *v4;
          v1067 = (*v4)[1];
          **v4 = v1067;
          v1068 = *(v3 + 136);
          if (!*v1068)
          {
            return 363;
          }

          v1069 = v1066[2];
          v1070 = v1067.i32[0];
          v1071 = v1066[1].i32[1];
          v1072 = v1068 + 1;
          result = 363;
          do
          {
            v1069 = vadd_s32(v1069, 0x100000001);
            v1066[2] = v1069;
            if (*(v1072 - 1) == 10)
            {
              v1071 = 0;
              v1066[1].i32[0] = ++v1070;
            }

            else
            {
              ++v1071;
            }

            v1066[1].i32[1] = v1071;
          }

          while (*v1072++);
          return result;
        case 120:
          v837 = *v4;
          v838 = (*v4)[1];
          **v4 = v838;
          v839 = *(v3 + 136);
          if (!*v839)
          {
            return 425;
          }

          v840 = v837[2];
          v841 = v838.i32[0];
          v842 = v837[1].i32[1];
          v843 = v839 + 1;
          result = 425;
          do
          {
            v840 = vadd_s32(v840, 0x100000001);
            v837[2] = v840;
            if (*(v843 - 1) == 10)
            {
              v842 = 0;
              v837[1].i32[0] = ++v841;
            }

            else
            {
              ++v842;
            }

            v837[1].i32[1] = v842;
          }

          while (*v843++);
          return result;
        case 121:
          v770 = *v4;
          v771 = (*v4)[1];
          **v4 = v771;
          v772 = *(v3 + 136);
          if (!*v772)
          {
            return 282;
          }

          v773 = v770[2];
          v774 = v771.i32[0];
          v775 = v770[1].i32[1];
          v776 = v772 + 1;
          result = 282;
          do
          {
            v773 = vadd_s32(v773, 0x100000001);
            v770[2] = v773;
            if (*(v776 - 1) == 10)
            {
              v775 = 0;
              v770[1].i32[0] = ++v774;
            }

            else
            {
              ++v775;
            }

            v770[1].i32[1] = v775;
          }

          while (*v776++);
          return result;
        case 122:
          v174 = *v4;
          v175 = (*v4)[1];
          **v4 = v175;
          v176 = *(v3 + 136);
          if (!*v176)
          {
            return 283;
          }

          v177 = v174[2];
          v178 = v175.i32[0];
          v179 = v174[1].i32[1];
          v180 = v176 + 1;
          result = 283;
          do
          {
            v177 = vadd_s32(v177, 0x100000001);
            v174[2] = v177;
            if (*(v180 - 1) == 10)
            {
              v179 = 0;
              v174[1].i32[0] = ++v178;
            }

            else
            {
              ++v179;
            }

            v174[1].i32[1] = v179;
          }

          while (*v180++);
          return result;
        case 123:
          v341 = *v4;
          v342 = (*v4)[1];
          **v4 = v342;
          v343 = *(v3 + 136);
          if (!*v343)
          {
            return 420;
          }

          v344 = v341[2];
          v345 = v342.i32[0];
          v346 = v341[1].i32[1];
          v347 = v343 + 1;
          result = 420;
          do
          {
            v344 = vadd_s32(v344, 0x100000001);
            v341[2] = v344;
            if (*(v347 - 1) == 10)
            {
              v346 = 0;
              v341[1].i32[0] = ++v345;
            }

            else
            {
              ++v346;
            }

            v341[1].i32[1] = v346;
          }

          while (*v347++);
          return result;
        case 124:
          v778 = *v4;
          v779 = (*v4)[1];
          **v4 = v779;
          v780 = *(v3 + 136);
          if (!*v780)
          {
            return 286;
          }

          v781 = v778[2];
          v782 = v779.i32[0];
          v783 = v778[1].i32[1];
          v784 = v780 + 1;
          result = 286;
          do
          {
            v781 = vadd_s32(v781, 0x100000001);
            v778[2] = v781;
            if (*(v784 - 1) == 10)
            {
              v783 = 0;
              v778[1].i32[0] = ++v782;
            }

            else
            {
              ++v783;
            }

            v778[1].i32[1] = v783;
          }

          while (*v784++);
          return result;
        case 125:
          v1290 = *v4;
          v1291 = (*v4)[1];
          **v4 = v1291;
          v1292 = *(v3 + 136);
          if (!*v1292)
          {
            return 312;
          }

          v1293 = v1290[2];
          v1294 = v1291.i32[0];
          v1295 = v1290[1].i32[1];
          v1296 = v1292 + 1;
          result = 312;
          do
          {
            v1293 = vadd_s32(v1293, 0x100000001);
            v1290[2] = v1293;
            if (*(v1296 - 1) == 10)
            {
              v1295 = 0;
              v1290[1].i32[0] = ++v1294;
            }

            else
            {
              ++v1295;
            }

            v1290[1].i32[1] = v1295;
          }

          while (*v1296++);
          return result;
        case 126:
          v571 = *v4;
          v572 = (*v4)[1];
          **v4 = v572;
          v573 = *(v3 + 136);
          if (!*v573)
          {
            return 432;
          }

          v574 = v571[2];
          v575 = v572.i32[0];
          v576 = v571[1].i32[1];
          v577 = v573 + 1;
          result = 432;
          do
          {
            v574 = vadd_s32(v574, 0x100000001);
            v571[2] = v574;
            if (*(v577 - 1) == 10)
            {
              v576 = 0;
              v571[1].i32[0] = ++v575;
            }

            else
            {
              ++v576;
            }

            v571[1].i32[1] = v576;
          }

          while (*v577++);
          return result;
        case 127:
          v1525 = *v4;
          v1526 = (*v4)[1];
          **v4 = v1526;
          v1527 = *(v3 + 136);
          if (!*v1527)
          {
            return 270;
          }

          v1528 = v1525[2];
          v1529 = v1526.i32[0];
          v1530 = v1525[1].i32[1];
          v1531 = v1527 + 1;
          result = 270;
          do
          {
            v1528 = vadd_s32(v1528, 0x100000001);
            v1525[2] = v1528;
            if (*(v1531 - 1) == 10)
            {
              v1530 = 0;
              v1525[1].i32[0] = ++v1529;
            }

            else
            {
              ++v1530;
            }

            v1525[1].i32[1] = v1530;
          }

          while (*v1531++);
          return result;
        case 128:
          v891 = *v4;
          v892 = (*v4)[1];
          **v4 = v892;
          v893 = *(v3 + 136);
          if (!*v893)
          {
            return 336;
          }

          v894 = v891[2];
          v895 = v892.i32[0];
          v896 = v891[1].i32[1];
          v897 = v893 + 1;
          result = 336;
          do
          {
            v894 = vadd_s32(v894, 0x100000001);
            v891[2] = v894;
            if (*(v897 - 1) == 10)
            {
              v896 = 0;
              v891[1].i32[0] = ++v895;
            }

            else
            {
              ++v896;
            }

            v891[1].i32[1] = v896;
          }

          while (*v897++);
          return result;
        case 129:
          v1196 = *v4;
          v1197 = (*v4)[1];
          **v4 = v1197;
          v1198 = *(v3 + 136);
          if (!*v1198)
          {
            return 415;
          }

          v1199 = v1196[2];
          v1200 = v1197.i32[0];
          v1201 = v1196[1].i32[1];
          v1202 = v1198 + 1;
          result = 415;
          do
          {
            v1199 = vadd_s32(v1199, 0x100000001);
            v1196[2] = v1199;
            if (*(v1202 - 1) == 10)
            {
              v1201 = 0;
              v1196[1].i32[0] = ++v1200;
            }

            else
            {
              ++v1201;
            }

            v1196[1].i32[1] = v1201;
          }

          while (*v1202++);
          return result;
        case 130:
          v1386 = *v4;
          v1387 = (*v4)[1];
          **v4 = v1387;
          v1388 = *(v3 + 136);
          if (!*v1388)
          {
            return 421;
          }

          v1389 = v1386[2];
          v1390 = v1387.i32[0];
          v1391 = v1386[1].i32[1];
          v1392 = v1388 + 1;
          result = 421;
          do
          {
            v1389 = vadd_s32(v1389, 0x100000001);
            v1386[2] = v1389;
            if (*(v1392 - 1) == 10)
            {
              v1391 = 0;
              v1386[1].i32[0] = ++v1390;
            }

            else
            {
              ++v1391;
            }

            v1386[1].i32[1] = v1391;
          }

          while (*v1392++);
          return result;
        case 131:
          v1322 = *v4;
          v1323 = (*v4)[1];
          **v4 = v1323;
          v1324 = *(v3 + 136);
          if (!*v1324)
          {
            return 313;
          }

          v1325 = v1322[2];
          v1326 = v1323.i32[0];
          v1327 = v1322[1].i32[1];
          v1328 = v1324 + 1;
          result = 313;
          do
          {
            v1325 = vadd_s32(v1325, 0x100000001);
            v1322[2] = v1325;
            if (*(v1328 - 1) == 10)
            {
              v1327 = 0;
              v1322[1].i32[0] = ++v1326;
            }

            else
            {
              ++v1327;
            }

            v1322[1].i32[1] = v1327;
          }

          while (*v1328++);
          return result;
        case 132:
          v959 = *v4;
          v960 = (*v4)[1];
          **v4 = v960;
          v961 = *(v3 + 136);
          if (!*v961)
          {
            return 284;
          }

          v962 = v959[2];
          v963 = v960.i32[0];
          v964 = v959[1].i32[1];
          v965 = v961 + 1;
          result = 284;
          do
          {
            v962 = vadd_s32(v962, 0x100000001);
            v959[2] = v962;
            if (*(v965 - 1) == 10)
            {
              v964 = 0;
              v959[1].i32[0] = ++v963;
            }

            else
            {
              ++v964;
            }

            v959[1].i32[1] = v964;
          }

          while (*v965++);
          return result;
        case 133:
          v1173 = *v4;
          v1174 = (*v4)[1];
          **v4 = v1174;
          v1175 = *(v3 + 136);
          if (!*v1175)
          {
            return 396;
          }

          v1176 = v1173[2];
          v1177 = v1174.i32[0];
          v1178 = v1173[1].i32[1];
          v1179 = v1175 + 1;
          result = 396;
          do
          {
            v1176 = vadd_s32(v1176, 0x100000001);
            v1173[2] = v1176;
            if (*(v1179 - 1) == 10)
            {
              v1178 = 0;
              v1173[1].i32[0] = ++v1177;
            }

            else
            {
              ++v1178;
            }

            v1173[1].i32[1] = v1178;
          }

          while (*v1179++);
          return result;
        case 134:
          v1370 = *v4;
          v1371 = (*v4)[1];
          **v4 = v1371;
          v1372 = *(v3 + 136);
          if (!*v1372)
          {
            return 402;
          }

          v1373 = v1370[2];
          v1374 = v1371.i32[0];
          v1375 = v1370[1].i32[1];
          v1376 = v1372 + 1;
          result = 402;
          do
          {
            v1373 = vadd_s32(v1373, 0x100000001);
            v1370[2] = v1373;
            if (*(v1376 - 1) == 10)
            {
              v1375 = 0;
              v1370[1].i32[0] = ++v1374;
            }

            else
            {
              ++v1375;
            }

            v1370[1].i32[1] = v1375;
          }

          while (*v1376++);
          return result;
        case 135:
          v1204 = *v4;
          v1205 = (*v4)[1];
          **v4 = v1205;
          v1206 = *(v3 + 136);
          if (!*v1206)
          {
            return 314;
          }

          v1207 = v1204[2];
          v1208 = v1205.i32[0];
          v1209 = v1204[1].i32[1];
          v1210 = v1206 + 1;
          result = 314;
          do
          {
            v1207 = vadd_s32(v1207, 0x100000001);
            v1204[2] = v1207;
            if (*(v1210 - 1) == 10)
            {
              v1209 = 0;
              v1204[1].i32[0] = ++v1208;
            }

            else
            {
              ++v1209;
            }

            v1204[1].i32[1] = v1209;
          }

          while (*v1210++);
          return result;
        case 136:
          v944 = *v4;
          v945 = (*v4)[1];
          **v4 = v945;
          v946 = *(v3 + 136);
          if (!*v946)
          {
            return 381;
          }

          v947 = v944[2];
          v948 = v945.i32[0];
          v949 = v944[1].i32[1];
          v950 = v946 + 1;
          result = 381;
          do
          {
            v947 = vadd_s32(v947, 0x100000001);
            v944[2] = v947;
            if (*(v950 - 1) == 10)
            {
              v949 = 0;
              v944[1].i32[0] = ++v948;
            }

            else
            {
              ++v949;
            }

            v944[1].i32[1] = v949;
          }

          while (*v950++);
          return result;
        case 137:
          v1306 = *v4;
          v1307 = (*v4)[1];
          **v4 = v1307;
          v1308 = *(v3 + 136);
          if (!*v1308)
          {
            return 419;
          }

          v1309 = v1306[2];
          v1310 = v1307.i32[0];
          v1311 = v1306[1].i32[1];
          v1312 = v1308 + 1;
          result = 419;
          do
          {
            v1309 = vadd_s32(v1309, 0x100000001);
            v1306[2] = v1309;
            if (*(v1312 - 1) == 10)
            {
              v1311 = 0;
              v1306[1].i32[0] = ++v1310;
            }

            else
            {
              ++v1311;
            }

            v1306[1].i32[1] = v1311;
          }

          while (*v1312++);
          return result;
        case 138:
          v198 = *v4;
          v199 = (*v4)[1];
          **v4 = v199;
          v200 = *(v3 + 136);
          if (!*v200)
          {
            return 364;
          }

          v201 = v198[2];
          v202 = v199.i32[0];
          v203 = v198[1].i32[1];
          v204 = v200 + 1;
          result = 364;
          do
          {
            v201 = vadd_s32(v201, 0x100000001);
            v198[2] = v201;
            if (*(v204 - 1) == 10)
            {
              v203 = 0;
              v198[1].i32[0] = ++v202;
            }

            else
            {
              ++v203;
            }

            v198[1].i32[1] = v203;
          }

          while (*v204++);
          return result;
        case 139:
          v214 = *v4;
          v215 = (*v4)[1];
          **v4 = v215;
          v216 = *(v3 + 136);
          if (!*v216)
          {
            return 417;
          }

          v217 = v214[2];
          v218 = v215.i32[0];
          v219 = v214[1].i32[1];
          v220 = v216 + 1;
          result = 417;
          do
          {
            v217 = vadd_s32(v217, 0x100000001);
            v214[2] = v217;
            if (*(v220 - 1) == 10)
            {
              v219 = 0;
              v214[1].i32[0] = ++v218;
            }

            else
            {
              ++v219;
            }

            v214[1].i32[1] = v219;
          }

          while (*v220++);
          return result;
        case 140:
          v1043 = *v4;
          v1044 = (*v4)[1];
          **v4 = v1044;
          v1045 = *(v3 + 136);
          if (!*v1045)
          {
            return 288;
          }

          v1046 = v1043[2];
          v1047 = v1044.i32[0];
          v1048 = v1043[1].i32[1];
          v1049 = v1045 + 1;
          result = 288;
          do
          {
            v1046 = vadd_s32(v1046, 0x100000001);
            v1043[2] = v1046;
            if (*(v1049 - 1) == 10)
            {
              v1048 = 0;
              v1043[1].i32[0] = ++v1047;
            }

            else
            {
              ++v1048;
            }

            v1043[1].i32[1] = v1048;
          }

          while (*v1049++);
          return result;
        case 141:
          v365 = *v4;
          v366 = (*v4)[1];
          **v4 = v366;
          v367 = *(v3 + 136);
          if (!*v367)
          {
            return 315;
          }

          v368 = v365[2];
          v369 = v366.i32[0];
          v370 = v365[1].i32[1];
          v371 = v367 + 1;
          result = 315;
          do
          {
            v368 = vadd_s32(v368, 0x100000001);
            v365[2] = v368;
            if (*(v371 - 1) == 10)
            {
              v370 = 0;
              v365[1].i32[0] = ++v369;
            }

            else
            {
              ++v370;
            }

            v365[1].i32[1] = v370;
          }

          while (*v371++);
          return result;
        case 142:
          v723 = *v4;
          v724 = (*v4)[1];
          **v4 = v724;
          v725 = *(v3 + 136);
          if (!*v725)
          {
            return 290;
          }

          v726 = v723[2];
          v727 = v724.i32[0];
          v728 = v723[1].i32[1];
          v729 = v725 + 1;
          result = 290;
          do
          {
            v726 = vadd_s32(v726, 0x100000001);
            v723[2] = v726;
            if (*(v729 - 1) == 10)
            {
              v728 = 0;
              v723[1].i32[0] = ++v727;
            }

            else
            {
              ++v728;
            }

            v723[1].i32[1] = v728;
          }

          while (*v729++);
          return result;
        case 143:
          v1410 = *v4;
          v1411 = (*v4)[1];
          **v4 = v1411;
          v1412 = *(v3 + 136);
          if (!*v1412)
          {
            return 337;
          }

          v1413 = v1410[2];
          v1414 = v1411.i32[0];
          v1415 = v1410[1].i32[1];
          v1416 = v1412 + 1;
          result = 337;
          do
          {
            v1413 = vadd_s32(v1413, 0x100000001);
            v1410[2] = v1413;
            if (*(v1416 - 1) == 10)
            {
              v1415 = 0;
              v1410[1].i32[0] = ++v1414;
            }

            else
            {
              ++v1415;
            }

            v1410[1].i32[1] = v1415;
          }

          while (*v1416++);
          return result;
        case 144:
          v913 = *v4;
          v914 = (*v4)[1];
          **v4 = v914;
          v915 = *(v3 + 136);
          if (!*v915)
          {
            return 316;
          }

          v916 = v913[2];
          v917 = v914.i32[0];
          v918 = v913[1].i32[1];
          v919 = v915 + 1;
          result = 316;
          do
          {
            v916 = vadd_s32(v916, 0x100000001);
            v913[2] = v916;
            if (*(v919 - 1) == 10)
            {
              v918 = 0;
              v913[1].i32[0] = ++v917;
            }

            else
            {
              ++v918;
            }

            v913[1].i32[1] = v918;
          }

          while (*v919++);
          return result;
        case 145:
          v426 = *v4;
          v427 = (*v4)[1];
          **v4 = v427;
          v428 = *(v3 + 136);
          if (!*v428)
          {
            return 266;
          }

          v429 = v426[2];
          v430 = v427.i32[0];
          v431 = v426[1].i32[1];
          v432 = v428 + 1;
          result = 266;
          do
          {
            v429 = vadd_s32(v429, 0x100000001);
            v426[2] = v429;
            if (*(v432 - 1) == 10)
            {
              v431 = 0;
              v426[1].i32[0] = ++v430;
            }

            else
            {
              ++v431;
            }

            v426[1].i32[1] = v431;
          }

          while (*v432++);
          return result;
        case 146:
          v1479 = *v4;
          v1480 = (*v4)[1];
          **v4 = v1480;
          v1481 = *(v3 + 136);
          if (!*v1481)
          {
            return 365;
          }

          v1482 = v1479[2];
          v1483 = v1480.i32[0];
          v1484 = v1479[1].i32[1];
          v1485 = v1481 + 1;
          result = 365;
          do
          {
            v1482 = vadd_s32(v1482, 0x100000001);
            v1479[2] = v1482;
            if (*(v1485 - 1) == 10)
            {
              v1484 = 0;
              v1479[1].i32[0] = ++v1483;
            }

            else
            {
              ++v1484;
            }

            v1479[1].i32[1] = v1484;
          }

          while (*v1485++);
          return result;
        case 147:
          v357 = *v4;
          v358 = (*v4)[1];
          **v4 = v358;
          v359 = *(v3 + 136);
          if (!*v359)
          {
            return 366;
          }

          v360 = v357[2];
          v361 = v358.i32[0];
          v362 = v357[1].i32[1];
          v363 = v359 + 1;
          result = 366;
          do
          {
            v360 = vadd_s32(v360, 0x100000001);
            v357[2] = v360;
            if (*(v363 - 1) == 10)
            {
              v362 = 0;
              v357[1].i32[0] = ++v361;
            }

            else
            {
              ++v362;
            }

            v357[1].i32[1] = v362;
          }

          while (*v363++);
          return result;
        case 148:
          v1005 = *v4;
          v1006 = (*v4)[1];
          **v4 = v1006;
          v1007 = *(v3 + 136);
          if (!*v1007)
          {
            return 367;
          }

          v1008 = v1005[2];
          v1009 = v1006.i32[0];
          v1010 = v1005[1].i32[1];
          v1011 = v1007 + 1;
          result = 367;
          do
          {
            v1008 = vadd_s32(v1008, 0x100000001);
            v1005[2] = v1008;
            if (*(v1011 - 1) == 10)
            {
              v1010 = 0;
              v1005[1].i32[0] = ++v1009;
            }

            else
            {
              ++v1010;
            }

            v1005[1].i32[1] = v1010;
          }

          while (*v1011++);
          return result;
        case 149:
          v1212 = *v4;
          v1213 = (*v4)[1];
          **v4 = v1213;
          v1214 = *(v3 + 136);
          if (!*v1214)
          {
            return 267;
          }

          v1215 = v1212[2];
          v1216 = v1213.i32[0];
          v1217 = v1212[1].i32[1];
          v1218 = v1214 + 1;
          result = 267;
          do
          {
            v1215 = vadd_s32(v1215, 0x100000001);
            v1212[2] = v1215;
            if (*(v1218 - 1) == 10)
            {
              v1217 = 0;
              v1212[1].i32[0] = ++v1216;
            }

            else
            {
              ++v1217;
            }

            v1212[1].i32[1] = v1217;
          }

          while (*v1218++);
          return result;
        case 150:
          v1346 = *v4;
          v1347 = (*v4)[1];
          **v4 = v1347;
          v1348 = *(v3 + 136);
          if (!*v1348)
          {
            return 391;
          }

          v1349 = v1346[2];
          v1350 = v1347.i32[0];
          v1351 = v1346[1].i32[1];
          v1352 = v1348 + 1;
          result = 391;
          do
          {
            v1349 = vadd_s32(v1349, 0x100000001);
            v1346[2] = v1349;
            if (*(v1352 - 1) == 10)
            {
              v1351 = 0;
              v1346[1].i32[0] = ++v1350;
            }

            else
            {
              ++v1351;
            }

            v1346[1].i32[1] = v1351;
          }

          while (*v1352++);
          return result;
        case 151:
          v1487 = *v4;
          v1488 = (*v4)[1];
          **v4 = v1488;
          v1489 = *(v3 + 136);
          if (!*v1489)
          {
            return 382;
          }

          v1490 = v1487[2];
          v1491 = v1488.i32[0];
          v1492 = v1487[1].i32[1];
          v1493 = v1489 + 1;
          result = 382;
          do
          {
            v1490 = vadd_s32(v1490, 0x100000001);
            v1487[2] = v1490;
            if (*(v1493 - 1) == 10)
            {
              v1492 = 0;
              v1487[1].i32[0] = ++v1491;
            }

            else
            {
              ++v1492;
            }

            v1487[1].i32[1] = v1492;
          }

          while (*v1493++);
          return result;
        case 152:
          v822 = *v4;
          v823 = (*v4)[1];
          **v4 = v823;
          v824 = *(v3 + 136);
          if (!*v824)
          {
            return 412;
          }

          v825 = v822[2];
          v826 = v823.i32[0];
          v827 = v822[1].i32[1];
          v828 = v824 + 1;
          result = 412;
          do
          {
            v825 = vadd_s32(v825, 0x100000001);
            v822[2] = v825;
            if (*(v828 - 1) == 10)
            {
              v827 = 0;
              v822[1].i32[0] = ++v826;
            }

            else
            {
              ++v827;
            }

            v822[1].i32[1] = v827;
          }

          while (*v828++);
          return result;
        case 153:
          v318 = *v4;
          v319 = (*v4)[1];
          **v4 = v319;
          v320 = *(v3 + 136);
          if (!*v320)
          {
            return 409;
          }

          v321 = v318[2];
          v322 = v319.i32[0];
          v323 = v318[1].i32[1];
          v324 = v320 + 1;
          result = 409;
          do
          {
            v321 = vadd_s32(v321, 0x100000001);
            v318[2] = v321;
            if (*(v324 - 1) == 10)
            {
              v323 = 0;
              v318[1].i32[0] = ++v322;
            }

            else
            {
              ++v323;
            }

            v318[1].i32[1] = v323;
          }

          while (*v324++);
          return result;
        case 154:
          v238 = *v4;
          v239 = (*v4)[1];
          **v4 = v239;
          v240 = *(v3 + 136);
          if (!*v240)
          {
            return 271;
          }

          v241 = v238[2];
          v242 = v239.i32[0];
          v243 = v238[1].i32[1];
          v244 = v240 + 1;
          result = 271;
          do
          {
            v241 = vadd_s32(v241, 0x100000001);
            v238[2] = v241;
            if (*(v244 - 1) == 10)
            {
              v243 = 0;
              v238[1].i32[0] = ++v242;
            }

            else
            {
              ++v243;
            }

            v238[1].i32[1] = v243;
          }

          while (*v244++);
          return result;
        case 155:
          v158 = *v4;
          v159 = (*v4)[1];
          **v4 = v159;
          v160 = *(v3 + 136);
          if (!*v160)
          {
            return 423;
          }

          v161 = v158[2];
          v162 = v159.i32[0];
          v163 = v158[1].i32[1];
          v164 = v160 + 1;
          result = 423;
          do
          {
            v161 = vadd_s32(v161, 0x100000001);
            v158[2] = v161;
            if (*(v164 - 1) == 10)
            {
              v163 = 0;
              v158[1].i32[0] = ++v162;
            }

            else
            {
              ++v163;
            }

            v158[1].i32[1] = v163;
          }

          while (*v164++);
          return result;
        case 156:
          v502 = *v4;
          v503 = (*v4)[1];
          **v4 = v503;
          v504 = *(v3 + 136);
          if (!*v504)
          {
            return 338;
          }

          v505 = v502[2];
          v506 = v503.i32[0];
          v507 = v502[1].i32[1];
          v508 = v504 + 1;
          result = 338;
          do
          {
            v505 = vadd_s32(v505, 0x100000001);
            v502[2] = v505;
            if (*(v508 - 1) == 10)
            {
              v507 = 0;
              v502[1].i32[0] = ++v506;
            }

            else
            {
              ++v507;
            }

            v502[1].i32[1] = v507;
          }

          while (*v508++);
          return result;
        case 157:
          v1275 = *v4;
          v1276 = (*v4)[1];
          **v4 = v1276;
          v1277 = *(v3 + 136);
          if (!*v1277)
          {
            return 317;
          }

          v1278 = v1275[2];
          v1279 = v1276.i32[0];
          v1280 = v1275[1].i32[1];
          v1281 = v1277 + 1;
          result = 317;
          do
          {
            v1278 = vadd_s32(v1278, 0x100000001);
            v1275[2] = v1278;
            if (*(v1281 - 1) == 10)
            {
              v1280 = 0;
              v1275[1].i32[0] = ++v1279;
            }

            else
            {
              ++v1280;
            }

            v1275[1].i32[1] = v1280;
          }

          while (*v1281++);
          return result;
        case 158:
          v182 = *v4;
          v183 = (*v4)[1];
          **v4 = v183;
          v184 = *(v3 + 136);
          if (!*v184)
          {
            return 318;
          }

          v185 = v182[2];
          v186 = v183.i32[0];
          v187 = v182[1].i32[1];
          v188 = v184 + 1;
          result = 318;
          do
          {
            v185 = vadd_s32(v185, 0x100000001);
            v182[2] = v185;
            if (*(v188 - 1) == 10)
            {
              v187 = 0;
              v182[1].i32[0] = ++v186;
            }

            else
            {
              ++v187;
            }

            v182[1].i32[1] = v187;
          }

          while (*v188++);
          return result;
        case 159:
          v845 = *v4;
          v846 = (*v4)[1];
          **v4 = v846;
          v847 = *(v3 + 136);
          if (!*v847)
          {
            return 319;
          }

          v848 = v845[2];
          v849 = v846.i32[0];
          v850 = v845[1].i32[1];
          v851 = v847 + 1;
          result = 319;
          do
          {
            v848 = vadd_s32(v848, 0x100000001);
            v845[2] = v848;
            if (*(v851 - 1) == 10)
            {
              v850 = 0;
              v845[1].i32[0] = ++v849;
            }

            else
            {
              ++v850;
            }

            v845[1].i32[1] = v850;
          }

          while (*v851++);
          return result;
        case 160:
          v982 = *v4;
          v983 = (*v4)[1];
          **v4 = v983;
          v984 = *(v3 + 136);
          if (!*v984)
          {
            return 339;
          }

          v985 = v982[2];
          v986 = v983.i32[0];
          v987 = v982[1].i32[1];
          v988 = v984 + 1;
          result = 339;
          do
          {
            v985 = vadd_s32(v985, 0x100000001);
            v982[2] = v985;
            if (*(v988 - 1) == 10)
            {
              v987 = 0;
              v982[1].i32[0] = ++v986;
            }

            else
            {
              ++v987;
            }

            v982[1].i32[1] = v987;
          }

          while (*v988++);
          return result;
        case 161:
          v1020 = *v4;
          v1021 = (*v4)[1];
          **v4 = v1021;
          v1022 = *(v3 + 136);
          if (!*v1022)
          {
            return 320;
          }

          v1023 = v1020[2];
          v1024 = v1021.i32[0];
          v1025 = v1020[1].i32[1];
          v1026 = v1022 + 1;
          result = 320;
          do
          {
            v1023 = vadd_s32(v1023, 0x100000001);
            v1020[2] = v1023;
            if (*(v1026 - 1) == 10)
            {
              v1025 = 0;
              v1020[1].i32[0] = ++v1024;
            }

            else
            {
              ++v1025;
            }

            v1020[1].i32[1] = v1025;
          }

          while (*v1026++);
          return result;
        case 162:
          v471 = *v4;
          v472 = (*v4)[1];
          **v4 = v472;
          v473 = *(v3 + 136);
          if (!*v473)
          {
            return 291;
          }

          v474 = v471[2];
          v475 = v472.i32[0];
          v476 = v471[1].i32[1];
          v477 = v473 + 1;
          result = 291;
          do
          {
            v474 = vadd_s32(v474, 0x100000001);
            v471[2] = v474;
            if (*(v477 - 1) == 10)
            {
              v476 = 0;
              v471[1].i32[0] = ++v475;
            }

            else
            {
              ++v476;
            }

            v471[1].i32[1] = v476;
          }

          while (*v477++);
          return result;
        case 163:
          v1425 = *v4;
          v1426 = (*v4)[1];
          **v4 = v1426;
          v1427 = *(v3 + 136);
          if (!*v1427)
          {
            return 368;
          }

          v1428 = v1425[2];
          v1429 = v1426.i32[0];
          v1430 = v1425[1].i32[1];
          v1431 = v1427 + 1;
          result = 368;
          do
          {
            v1428 = vadd_s32(v1428, 0x100000001);
            v1425[2] = v1428;
            if (*(v1431 - 1) == 10)
            {
              v1430 = 0;
              v1425[1].i32[0] = ++v1429;
            }

            else
            {
              ++v1430;
            }

            v1425[1].i32[1] = v1430;
          }

          while (*v1431++);
          return result;
        case 164:
          v616 = *v4;
          v617 = (*v4)[1];
          **v4 = v617;
          v618 = *(v3 + 136);
          if (!*v618)
          {
            return 292;
          }

          v619 = v616[2];
          v620 = v617.i32[0];
          v621 = v616[1].i32[1];
          v622 = v618 + 1;
          result = 292;
          do
          {
            v619 = vadd_s32(v619, 0x100000001);
            v616[2] = v619;
            if (*(v622 - 1) == 10)
            {
              v621 = 0;
              v616[1].i32[0] = ++v620;
            }

            else
            {
              ++v621;
            }

            v616[1].i32[1] = v621;
          }

          while (*v622++);
          return result;
        case 165:
          v206 = *v4;
          v207 = (*v4)[1];
          **v4 = v207;
          v208 = *(v3 + 136);
          if (!*v208)
          {
            return 369;
          }

          v209 = v206[2];
          v210 = v207.i32[0];
          v211 = v206[1].i32[1];
          v212 = v208 + 1;
          result = 369;
          do
          {
            v209 = vadd_s32(v209, 0x100000001);
            v206[2] = v209;
            if (*(v212 - 1) == 10)
            {
              v211 = 0;
              v206[1].i32[0] = ++v210;
            }

            else
            {
              ++v211;
            }

            v206[1].i32[1] = v211;
          }

          while (*v212++);
          return result;
        case 166:
          v1298 = *v4;
          v1299 = (*v4)[1];
          **v4 = v1299;
          v1300 = *(v3 + 136);
          if (!*v1300)
          {
            return 340;
          }

          v1301 = v1298[2];
          v1302 = v1299.i32[0];
          v1303 = v1298[1].i32[1];
          v1304 = v1300 + 1;
          result = 340;
          do
          {
            v1301 = vadd_s32(v1301, 0x100000001);
            v1298[2] = v1301;
            if (*(v1304 - 1) == 10)
            {
              v1303 = 0;
              v1298[1].i32[0] = ++v1302;
            }

            else
            {
              ++v1303;
            }

            v1298[1].i32[1] = v1303;
          }

          while (*v1304++);
          return result;
        case 167:
          v1541 = *v4;
          v1542 = (*v4)[1];
          **v4 = v1542;
          v1543 = *(v3 + 136);
          if (!*v1543)
          {
            return 370;
          }

          v1544 = v1541[2];
          v1545 = v1542.i32[0];
          v1546 = v1541[1].i32[1];
          v1547 = v1543 + 1;
          result = 370;
          do
          {
            v1544 = vadd_s32(v1544, 0x100000001);
            v1541[2] = v1544;
            if (*(v1547 - 1) == 10)
            {
              v1546 = 0;
              v1541[1].i32[0] = ++v1545;
            }

            else
            {
              ++v1546;
            }

            v1541[1].i32[1] = v1546;
          }

          while (*v1547++);
          return result;
        case 168:
          v563 = *v4;
          v564 = (*v4)[1];
          **v4 = v564;
          v565 = *(v3 + 136);
          if (!*v565)
          {
            return 401;
          }

          v566 = v563[2];
          v567 = v564.i32[0];
          v568 = v563[1].i32[1];
          v569 = v565 + 1;
          result = 401;
          do
          {
            v566 = vadd_s32(v566, 0x100000001);
            v563[2] = v566;
            if (*(v569 - 1) == 10)
            {
              v568 = 0;
              v563[1].i32[0] = ++v567;
            }

            else
            {
              ++v568;
            }

            v563[1].i32[1] = v568;
          }

          while (*v569++);
          return result;
        case 169:
          v1112 = *v4;
          v1113 = (*v4)[1];
          **v4 = v1113;
          v1114 = *(v3 + 136);
          if (!*v1114)
          {
            return 407;
          }

          v1115 = v1112[2];
          v1116 = v1113.i32[0];
          v1117 = v1112[1].i32[1];
          v1118 = v1114 + 1;
          result = 407;
          do
          {
            v1115 = vadd_s32(v1115, 0x100000001);
            v1112[2] = v1115;
            if (*(v1118 - 1) == 10)
            {
              v1117 = 0;
              v1112[1].i32[0] = ++v1116;
            }

            else
            {
              ++v1117;
            }

            v1112[1].i32[1] = v1117;
          }

          while (*v1118++);
          return result;
        case 170:
          v541 = *v4;
          v542 = (*v4)[1];
          **v4 = v542;
          v543 = *(v3 + 136);
          if (!*v543)
          {
            return 426;
          }

          v544 = v541[2];
          v545 = v542.i32[0];
          v546 = v541[1].i32[1];
          v547 = v543 + 1;
          result = 426;
          do
          {
            v544 = vadd_s32(v544, 0x100000001);
            v541[2] = v544;
            if (*(v547 - 1) == 10)
            {
              v546 = 0;
              v541[1].i32[0] = ++v545;
            }

            else
            {
              ++v546;
            }

            v541[1].i32[1] = v546;
          }

          while (*v547++);
          return result;
        case 171:
          v738 = *v4;
          v739 = (*v4)[1];
          **v4 = v739;
          v740 = *(v3 + 136);
          if (!*v740)
          {
            return 285;
          }

          v741 = v738[2];
          v742 = v739.i32[0];
          v743 = v738[1].i32[1];
          v744 = v740 + 1;
          result = 285;
          do
          {
            v741 = vadd_s32(v741, 0x100000001);
            v738[2] = v741;
            if (*(v744 - 1) == 10)
            {
              v743 = 0;
              v738[1].i32[0] = ++v742;
            }

            else
            {
              ++v743;
            }

            v738[1].i32[1] = v743;
          }

          while (*v744++);
          return result;
        case 172:
          v479 = *v4;
          v480 = (*v4)[1];
          **v4 = v480;
          v481 = *(v3 + 136);
          if (!*v481)
          {
            return 433;
          }

          v482 = v479[2];
          v483 = v480.i32[0];
          v484 = v479[1].i32[1];
          v485 = v481 + 1;
          result = 433;
          do
          {
            v482 = vadd_s32(v482, 0x100000001);
            v479[2] = v482;
            if (*(v485 - 1) == 10)
            {
              v484 = 0;
              v479[1].i32[0] = ++v483;
            }

            else
            {
              ++v484;
            }

            v479[1].i32[1] = v484;
          }

          while (*v485++);
          return result;
        case 173:
          v441 = *v4;
          v442 = (*v4)[1];
          **v4 = v442;
          v443 = *(v3 + 136);
          if (!*v443)
          {
            return 434;
          }

          v444 = v441[2];
          v445 = v442.i32[0];
          v446 = v441[1].i32[1];
          v447 = v443 + 1;
          result = 434;
          do
          {
            v444 = vadd_s32(v444, 0x100000001);
            v441[2] = v444;
            if (*(v447 - 1) == 10)
            {
              v446 = 0;
              v441[1].i32[0] = ++v445;
            }

            else
            {
              ++v446;
            }

            v441[1].i32[1] = v446;
          }

          while (*v447++);
          return result;
        case 174:
          v326 = *v4;
          v327 = (*v4)[1];
          **v4 = v327;
          v328 = *(v3 + 136);
          if (!*v328)
          {
            return 434;
          }

          v329 = v326[2];
          v330 = v327.i32[0];
          v331 = v326[1].i32[1];
          v332 = v328 + 1;
          result = 434;
          do
          {
            v329 = vadd_s32(v329, 0x100000001);
            v326[2] = v329;
            if (*(v332 - 1) == 10)
            {
              v331 = 0;
              v326[1].i32[0] = ++v330;
            }

            else
            {
              ++v331;
            }

            v326[1].i32[1] = v331;
          }

          while (*v332++);
          return result;
        case 175:
          v746 = *v4;
          v747 = (*v4)[1];
          **v4 = v747;
          v748 = *(v3 + 136);
          if (!*v748)
          {
            return 437;
          }

          v749 = v746[2];
          v750 = v747.i32[0];
          v751 = v746[1].i32[1];
          v752 = v748 + 1;
          result = 437;
          do
          {
            v749 = vadd_s32(v749, 0x100000001);
            v746[2] = v749;
            if (*(v752 - 1) == 10)
            {
              v751 = 0;
              v746[1].i32[0] = ++v750;
            }

            else
            {
              ++v751;
            }

            v746[1].i32[1] = v751;
          }

          while (*v752++);
          return result;
        case 176:
          v997 = *v4;
          v998 = (*v4)[1];
          **v4 = v998;
          v999 = *(v3 + 136);
          if (!*v999)
          {
            return 438;
          }

          v1000 = v997[2];
          v1001 = v998.i32[0];
          v1002 = v997[1].i32[1];
          v1003 = v999 + 1;
          result = 438;
          do
          {
            v1000 = vadd_s32(v1000, 0x100000001);
            v997[2] = v1000;
            if (*(v1003 - 1) == 10)
            {
              v1002 = 0;
              v997[1].i32[0] = ++v1001;
            }

            else
            {
              ++v1002;
            }

            v997[1].i32[1] = v1002;
          }

          while (*v1003++);
          return result;
        case 177:
          v1354 = *v4;
          v1355 = (*v4)[1];
          **v4 = v1355;
          v1356 = *(v3 + 136);
          if (!*v1356)
          {
            return 394;
          }

          v1357 = v1354[2];
          v1358 = v1355.i32[0];
          v1359 = v1354[1].i32[1];
          v1360 = v1356 + 1;
          result = 394;
          do
          {
            v1357 = vadd_s32(v1357, 0x100000001);
            v1354[2] = v1357;
            if (*(v1360 - 1) == 10)
            {
              v1359 = 0;
              v1354[1].i32[0] = ++v1358;
            }

            else
            {
              ++v1359;
            }

            v1354[1].i32[1] = v1359;
          }

          while (*v1360++);
          return result;
        case 178:
          v1517 = *v4;
          v1518 = (*v4)[1];
          **v4 = v1518;
          v1519 = *(v3 + 136);
          if (!*v1519)
          {
            return 0;
          }

          v1520 = v1517[2];
          v1521 = v1518.i32[0];
          v1522 = v1517[1].i32[1];
          v1523 = v1519 + 1;
          do
          {
            v1520 = vadd_s32(v1520, 0x100000001);
            v1517[2] = v1520;
            if (*(v1523 - 1) == 10)
            {
              v1522 = 0;
              v1517[1].i32[0] = ++v1521;
            }

            else
            {
              ++v1522;
            }

            v1517[1].i32[1] = v1522;
          }

          while (*v1523++);
          return *v1519;
        case 179:
        case 180:
        case 181:
        case 182:
        case 183:
          v149 = *v4;
          v150 = (*v4)[1];
          **v4 = v150;
          v151 = *(v3 + 136);
          if (*v151)
          {
            v152 = v149[2];
            v153 = v150.i32[0];
            v154 = v149[1].i32[1];
            v155 = (v151 + 1);
            do
            {
              v152 = vadd_s32(v152, 0x100000001);
              v149[2] = v152;
              if (*(v155 - 1) == 10)
              {
                v154 = 0;
                v149[1].i32[0] = ++v153;
              }

              else
              {
                ++v154;
              }

              v149[1].i32[1] = v154;
            }

            while (*v155++);
          }

          **(v3 + 152) = atof(v151);
          return 261;
        case 184:
          v418 = *v4;
          v419 = (*v4)[1];
          **v4 = v419;
          v420 = *(v3 + 136);
          if (*v420)
          {
            v421 = v418[2];
            v422 = v419.i32[0];
            v423 = v418[1].i32[1];
            v424 = v420 + 1;
            do
            {
              v421 = vadd_s32(v421, 0x100000001);
              v418[2] = v421;
              if (*(v424 - 1) == 10)
              {
                v423 = 0;
                v418[1].i32[0] = ++v422;
              }

              else
              {
                ++v423;
              }

              v418[1].i32[1] = v423;
            }

            while (*v424++);
          }

          **(v3 + 152) = 0x8000000000000000;
          return 262;
        case 185:
          v526 = *v4;
          v527 = (*v4)[1];
          **v4 = v527;
          v528 = *(v3 + 136);
          if (*v528)
          {
            v529 = v526[2];
            v530 = v527.i32[0];
            v531 = v526[1].i32[1];
            v532 = v528 + 1;
            do
            {
              v529 = vadd_s32(v529, 0x100000001);
              v526[2] = v529;
              if (*(v532 - 1) == 10)
              {
                v531 = 0;
                v526[1].i32[0] = ++v530;
              }

              else
              {
                ++v531;
              }

              v526[1].i32[1] = v531;
            }

            while (*v532++);
          }

          *__error() = 0;
          **(v3 + 152) = strtoll(*(v3 + 136), 0, 0);
          if (*__error())
          {
            return fprintf(__stderrp, "[SQL-Lexer-Error] Integer cannot be parsed - is it out of range?");
          }

          else
          {
            return 262;
          }

        case 186:
          v277 = *v4;
          v278 = (*v4)[1];
          **v4 = v278;
          v279 = *(v3 + 136);
          if (*v279)
          {
            v280 = v277[2];
            v281 = v278.i32[0];
            v282 = v277[1].i32[1];
            v283 = (v279 + 1);
            do
            {
              v280 = vadd_s32(v280, 0x100000001);
              v277[2] = v280;
              if (*(v283 - 1) == 10)
              {
                v282 = 0;
                v277[1].i32[0] = ++v281;
              }

              else
              {
                ++v282;
              }

              v277[1].i32[1] = v282;
            }

            while (*v283++);
          }

          v285 = strlen(v279);
          v286 = sub_1000103D4(v279, 1, v285 - 1);
          goto LABEL_1245;
        case 187:
          v867 = *v4;
          v868 = (*v4)[1];
          **v4 = v868;
          v869 = *(v3 + 136);
          if (*v869)
          {
            v870 = v867[2];
            v871 = v868.i32[0];
            v872 = v867[1].i32[1];
            v873 = (v869 + 1);
            do
            {
              v870 = vadd_s32(v870, 0x100000001);
              v867[2] = v870;
              if (*(v873 - 1) == 10)
              {
                v872 = 0;
                v867[1].i32[0] = ++v871;
              }

              else
              {
                ++v872;
              }

              v867[1].i32[1] = v872;
            }

            while (*v873++);
          }

          v875 = strlen(v869);
          **(v3 + 152) = sub_1000103D4(v869, 2, v875 - 1);
          return 260;
        case 188:
          v1338 = *v4;
          v1339 = (*v4)[1];
          **v4 = v1339;
          v1340 = *(v3 + 136);
          if (*v1340)
          {
            v1341 = v1338[2];
            v1342 = v1339.i32[0];
            v1343 = v1338[1].i32[1];
            v1344 = (v1340 + 1);
            do
            {
              v1341 = vadd_s32(v1341, 0x100000001);
              v1338[2] = v1341;
              if (*(v1344 - 1) == 10)
              {
                v1343 = 0;
                v1338[1].i32[0] = ++v1342;
              }

              else
              {
                ++v1343;
              }

              v1338[1].i32[1] = v1343;
            }

            while (*v1344++);
          }

          v286 = strdup(v1340);
LABEL_1245:
          **(v3 + 152) = v286;
          return 258;
        case 189:
          v118 = *v4;
          v119 = (*v4)[1];
          **v4 = v119;
          v120 = *(v3 + 136);
          if (*v120)
          {
            v121 = v118[2];
            v122 = v119.i32[0];
            v123 = v118[1].i32[1];
            v124 = v120 + 1;
            do
            {
              v121 = vadd_s32(v121, 0x100000001);
              v118[2] = v121;
              if (*(v124 - 1) == 10)
              {
                v123 = 0;
                v118[1].i32[0] = ++v122;
              }

              else
              {
                ++v123;
              }

              v118[1].i32[1] = v123;
            }

            while (*v124++);
          }

          *(v3 + 84) = 3;
          v126 = off_10016DA50;
          off_10016DA50();
          if (!*v127)
          {
            *(v126)(&off_10016DA50) = 1;
            sub_10000E29C();
          }

          std::ios_base::clear((v12 + *(*v12 - 24)), 0);
          if (!*(v126)(&off_10016DA50))
          {
            *(v126)(&off_10016DA50) = 1;
            sub_10000E29C();
          }

          std::string::__init(&v1578, "", 0);
          sub_10000DD70((v12 + 3), &v1578);
          v10 = v1576;
          v13 = byte_1001220D8;
          if (SHIBYTE(v1578.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v1578.__r_.__value_.__l.__data_);
            v13 = byte_1001220D8;
          }

          goto LABEL_13;
        case 190:
          v100 = *v4;
          v101 = (*v4)[1];
          **v4 = v101;
          v102 = *(v3 + 136);
          v10 = v1576;
          if (*v102)
          {
            v103 = v100[2];
            v104 = v101.i32[0];
            v105 = v100[1].i32[1];
            v106 = v102 + 1;
            do
            {
              v103 = vadd_s32(v103, 0x100000001);
              v100[2] = v103;
              if (*(v106 - 1) == 10)
              {
                v105 = 0;
                v100[1].i32[0] = ++v104;
              }

              else
              {
                ++v105;
              }

              v100[1].i32[1] = v105;
            }

            while (*v106++);
          }

          v94 = v13;
          off_10016DA50();
          if (!*v110)
          {
            *v109(v108) = 1;
            sub_10000E29C();
          }

          v1578.__r_.__value_.__s.__data_[0] = 39;
          sub_10000DDD0(v12 + 2, &v1578, 1);
          goto LABEL_117;
        case 191:
          v85 = v12;
          v86 = *v4;
          v87 = (*v4)[1];
          **v4 = v87;
          v88 = *(v3 + 136);
          if (*v88)
          {
            v89 = v86[2];
            v90 = v87.i32[0];
            v91 = v86[1].i32[1];
            v92 = (v88 + 1);
            do
            {
              v89 = vadd_s32(v89, 0x100000001);
              v86[2] = v89;
              if (*(v92 - 1) == 10)
              {
                v91 = 0;
                v86[1].i32[0] = ++v90;
              }

              else
              {
                ++v91;
              }

              v86[1].i32[1] = v91;
            }

            while (*v92++);
          }

          v94 = v13;
          off_10016DA50();
          if (!*v97)
          {
            *v96(v95) = 1;
            sub_10000E29C();
            v88 = *(v3 + 136);
          }

          v98 = strlen(v88);
          v99 = v88;
          v12 = v85;
          sub_10000DDD0(v85 + 2, v99, v98);
          v10 = v1576;
LABEL_117:
          v13 = v94;
          v14 = word_100128B6C;
          goto LABEL_13;
        case 192:
          v671 = *v4;
          v672 = (*v4)[1];
          **v4 = v672;
          v673 = *(v3 + 136);
          if (*v673)
          {
            v674 = v671[2];
            v675 = v672.i32[0];
            v676 = v671[1].i32[1];
            v677 = v673 + 1;
            do
            {
              v674 = vadd_s32(v674, 0x100000001);
              v671[2] = v674;
              if (*(v677 - 1) == 10)
              {
                v676 = 0;
                v671[1].i32[0] = ++v675;
              }

              else
              {
                ++v676;
              }

              v671[1].i32[1] = v676;
            }

            while (*v677++);
          }

          *(v3 + 84) = 1;
          off_10016DA50();
          if (!*v681)
          {
            v1563 = v680(v679);
            *v1563 = v1564;
            sub_10000E29C();
          }

          sub_10000E160((v12 + 3), &v1578);
          if ((v1578.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v682 = &v1578;
          }

          else
          {
            v682 = v1578.__r_.__value_.__r.__words[0];
          }

          **(v3 + 152) = strdup(v682);
          if (SHIBYTE(v1578.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v1578.__r_.__value_.__l.__data_);
          }

          return 259;
        case 193:
          v309 = *v4;
          v310 = (*v4)[1];
          **v4 = v310;
          v311 = *(v3 + 136);
          if (*v311)
          {
            v312 = v309[2];
            v313 = v310.i32[0];
            v314 = v309[1].i32[1];
            v315 = v311 + 1;
            do
            {
              v312 = vadd_s32(v312, 0x100000001);
              v309[2] = v312;
              if (*(v315 - 1) == 10)
              {
                v314 = 0;
                v309[1].i32[0] = ++v313;
              }

              else
              {
                ++v314;
              }

              v309[1].i32[1] = v314;
            }

            while (*v315++);
            v317 = *v311;
          }

          else
          {
            v317 = 0;
          }

          fprintf(__stderrp, "[SQL-Lexer-Error] Unknown Character: %c\n", v317);
          return 0;
        case 194:
          v77 = *v4;
          v78 = (*v4)[1];
          **v4 = v78;
          v79 = *(v3 + 136);
          v10 = v1576;
          if (*v79)
          {
            v80 = v77[2];
            v81 = v78.i32[0];
            v82 = v77[1].i32[1];
            v83 = v79 + 1;
            do
            {
              v80 = vadd_s32(v80, 0x100000001);
              v77[2] = v80;
              if (*(v83 - 1) == 10)
              {
                v82 = 0;
                v77[1].i32[0] = ++v81;
              }

              else
              {
                ++v82;
              }

              v77[1].i32[1] = v82;
            }

            while (*v83++);
          }

          fwrite(v79, *(v3 + 64), 1uLL, *(v3 + 16));
          v13 = byte_1001220D8;
          goto LABEL_13;
        case 195:
          v1570 = *(v3 + 136);
          v1573 = v23;
          *v23 = *(v3 + 48);
          v25 = *(v3 + 40);
          v26 = *(v3 + 24);
          v27 = *(v25 + 8 * v26);
          if (*(v27 + 64))
          {
            v28 = *(v3 + 56);
          }

          else
          {
            v28 = *(v27 + 32);
            *(v3 + 56) = v28;
            *v27 = *(v3 + 8);
            v27 = *(v25 + 8 * v26);
            *(v27 + 64) = 1;
          }

          v29 = *v1577;
          v30 = *(v27 + 8);
          if (*v1577 > &v30[v28])
          {
            if (v29 > &v30[v28 + 1])
            {
              sub_10000D544("fatal flex scanner internal error--end of buffer missed");
            }

            v31 = *(v3 + 136);
            if (*(v27 + 60))
            {
              v32 = ~v31 + v29;
              if (v32 >= 1)
              {
                v33 = ~v31 + v29;
                do
                {
                  v34 = *v31++;
                  *v30++ = v34;
                  --v33;
                }

                while (v33);
                v27 = *(*(v3 + 40) + 8 * *(v3 + 24));
              }

              v1571 = v32;
              v1572 = v12;
              if (*(v27 + 64) == 2)
              {
                *(v3 + 56) = 0;
                goto LABEL_36;
              }

              v1574 = v3;
              v37 = ~v32;
              v38 = *(v27 + 24);
              v39 = v38 + ~v32;
              v1565 = v4;
              v1568 = v32;
              if (!v39)
              {
                v40 = *v1577;
                do
                {
                  if (!*(v27 + 40))
                  {
                    *(v27 + 8) = 0;
LABEL_1621:
                    sub_10000D544("fatal error - scanner input buffer overflow");
                  }

                  v41 = v15;
                  v42 = v13;
                  v43 = *(v27 + 8);
                  v44 = 2 * v38;
                  *(v27 + 24) = v44;
                  v45 = malloc_type_realloc(v43, v44 + 2, 0x648D5F5CuLL);
                  *(v27 + 8) = v45;
                  if (!v45)
                  {
                    goto LABEL_1621;
                  }

                  v40 = &v45[v40 - v43];
                  *(v1574 + 72) = v40;
                  v27 = *(*(v1574 + 40) + 8 * *(v1574 + 24));
                  v38 = *(v27 + 24);
                  v39 = v38 + v37;
                  v13 = v42;
                  v15 = v41;
                }

                while (!(v38 + v37));
                v4 = v1565;
                v14 = word_100128B6C;
              }

              v1566 = v15;
              if (v39 >= 0x2000)
              {
                v46 = 0x2000;
              }

              else
              {
                v46 = v39;
              }

              v3 = v1574;
              if (*(v27 + 44))
              {
                v47 = v46;
                v35 = 0;
                while (1)
                {
                  v48 = getc(*(v1574 + 8));
                  if (v48 == -1 || v48 == 10)
                  {
                    break;
                  }

                  *(*(*(*(v1574 + 40) + 8 * *(v1574 + 24)) + 8) + v1571 + v35++) = v48;
                  if (v47 == v35)
                  {
                    v35 = v47;
                    break;
                  }
                }

                v4 = v1565;
                if (v48 == -1)
                {
                  v53 = ferror(*(v1574 + 8));
                  v13 = byte_1001220D8;
                  v15 = v1566;
                  if (v53)
                  {
LABEL_1624:
                    sub_10000D544("input in flex scanner failed");
                  }
                }

                else
                {
                  if (v48 == 10)
                  {
                    *(*(*(*(v1574 + 40) + 8 * *(v1574 + 24)) + 8) + v1571 + v35++) = 10;
                  }

                  v13 = byte_1001220D8;
                  v15 = v1566;
                }

                *(v1574 + 56) = v35;
LABEL_69:
                v27 = *(*(v1574 + 40) + 8 * *(v1574 + 24));
                *(v27 + 32) = v35;
                if (v35)
                {
                  v36 = 0;
                  v32 = v1568;
                  goto LABEL_73;
                }

                v32 = v1568;
                if (!v1568)
                {
LABEL_72:
                  v1569 = v32;
                  v54 = v14;
                  v55 = v13;
                  v56 = v15;
                  sub_10000D57C(*(v3 + 8), v3);
                  v32 = v1569;
                  v15 = v56;
                  v13 = v55;
                  v14 = v54;
                  v35 = *(v3 + 56);
                  v27 = *(*(v3 + 40) + 8 * *(v3 + 24));
                  v36 = 1;
LABEL_73:
                  v57 = v35 + v32;
                  if (v57 <= *(v27 + 24))
                  {
                    v65 = *(v27 + 8);
                    v10 = v1576;
                  }

                  else
                  {
                    v1575 = v36;
                    v58 = v15;
                    v59 = v13;
                    v60 = v57 + (v35 >> 1);
                    v61 = malloc_type_realloc(*(v27 + 8), v60, 0x648D5F5CuLL);
                    v62 = *(v3 + 40);
                    v63 = *(v3 + 24);
                    *(*(v62 + 8 * v63) + 8) = v61;
                    v64 = *(v62 + 8 * v63);
                    v65 = *(v64 + 8);
                    if (!v65)
                    {
                      sub_10000D544("out of dynamic memory in yy_get_next_buffer()");
                    }

                    *(v64 + 24) = v60 - 2;
                    v57 = *(v3 + 56) + v1571;
                    v10 = v1576;
                    v13 = v59;
                    v14 = word_100128B6C;
                    v15 = v58;
                    v36 = v1575;
                  }

                  *(v3 + 56) = v57;
                  *(v65 + v57) = 0;
                  *(*(*(*(v3 + 40) + 8 * *(v3 + 24)) + 8) + *(v3 + 56) + 1) = 0;
                  v66 = *(v3 + 40);
                  v67 = *(v3 + 24);
                  v31 = *(*(v66 + 8 * v67) + 8);
                  *(v3 + 136) = v31;
                  v12 = v1572;
                  if (v36 == 1)
                  {
LABEL_78:
                    *(v3 + 88) = 0;
                    *(v3 + 72) = v31;
                    v24 = (*(v3 + 84) - 1) / 2 + 196;
                    v23 = v1573;
                    goto LABEL_23;
                  }

                  if (!v36)
                  {
                    *(v3 + 72) = &v31[~v1570 + v1573];
                    v76 = v13;
                    v16 = sub_10000D480(v3);
                    v13 = v76;
                    v14 = word_100128B6C;
                    v17 = *(v3 + 72);
                    v15 = *(v3 + 136);
                    goto LABEL_14;
                  }

                  v30 = *(*(v66 + 8 * v67) + 8);
                  v28 = *(v3 + 56);
LABEL_82:
                  *(v3 + 72) = &v30[v28];
                  v68 = v13;
                  v21 = sub_10000D480(v3);
                  v13 = v68;
                  v14 = word_100128B6C;
                  v15 = *(v3 + 136);
                  v22 = v1577;
                  continue;
                }
              }

              else
              {
                *__error() = 0;
                v50 = fread((*(*(*(v1574 + 40) + 8 * *(v1574 + 24)) + 8) + v1568), 1uLL, v46, *(v1574 + 8));
                v51 = v46;
                v35 = v50;
                *(v1574 + 56) = v50;
                v13 = byte_1001220D8;
                v15 = v1566;
                if (v50 << 32)
                {
                  goto LABEL_69;
                }

                __nitems = v51;
                while (ferror(*(v1574 + 8)))
                {
                  if (*__error() != 4)
                  {
                    goto LABEL_1624;
                  }

                  *__error() = 0;
                  clearerr(*(v1574 + 8));
                  v52 = fread((*(*(*(v1574 + 40) + 8 * *(v1574 + 24)) + 8) + v1571), 1uLL, __nitems, *(v1574 + 8));
                  v35 = v52;
                  *(v1574 + 56) = v52;
                  if (v52 << 32)
                  {
                    v13 = byte_1001220D8;
                    v15 = v1566;
                    goto LABEL_69;
                  }
                }

                v27 = *(*(v1574 + 40) + 8 * *(v1574 + 24));
                v13 = byte_1001220D8;
                v15 = v1566;
                v32 = v1568;
LABEL_36:
                *(v27 + 32) = 0;
                if (!v32)
                {
                  goto LABEL_72;
                }
              }

              v35 = 0;
              v36 = 2;
              *(v27 + 64) = 2;
              goto LABEL_73;
            }

            if (v29 - v31 == 1)
            {
              goto LABEL_78;
            }

            goto LABEL_82;
          }

          v69 = v13;
          *(v3 + 72) = *(v3 + 136) + ~v1570 + v1573;
          v70 = sub_10000D480(v3);
          if (word_1001221D8[v70])
          {
            v71 = *(v3 + 72);
            *(v3 + 112) = v70;
            *(v3 + 120) = v71;
          }

          v72 = v70;
          v73 = word_100127542[v70] + 1;
          v10 = v1576;
          v13 = v69;
          v14 = word_100128B6C;
          if (v70 != word_100122CB0[v73])
          {
            do
            {
              v74 = word_100128030[v72];
              v72 = v74;
              v73 = word_100127542[v74] + 1;
            }

            while (v74 != word_100122CB0[v73]);
          }

          v75 = word_100128B6C[v73];
          v15 = *(v3 + 136);
          if (word_100128B6C[v73] && v75 != 1387)
          {
            v16 = v75;
            v17 = (*v1577 + 1);
            *v1577 = v17;
            goto LABEL_14;
          }

          break;
        case 196:
        case 198:
          return 0;
        case 197:
          fwrite("[SQL-Lexer-Error] Unterminated string\n", 0x26uLL, 1uLL, __stderrp);
          return 0;
        default:
          sub_10000D544("fatal flex scanner internal error--no action found");
      }

      break;
    }
  }
}