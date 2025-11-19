uint64_t sub_1D6347044(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = a2 + 32;
  v197 = a2 + 32;
  v198 = a1 + 32;
  while (1)
  {
    v8 = (v4 + 136 * v3);
    v9 = v8[5];
    v10 = v8[7];
    v287 = v8[6];
    v288 = v10;
    v11 = v8[1];
    v12 = v8[3];
    v283 = v8[2];
    v284 = v12;
    v14 = v8[3];
    v13 = v8[4];
    v15 = v13;
    v286 = v8[5];
    v285 = v13;
    v16 = *v8;
    v17 = *v8;
    v282 = v8[1];
    v281 = v16;
    v18 = (v5 + 136 * v3);
    v19 = v18[5];
    v20 = v18[7];
    v296 = v18[6];
    v297 = v20;
    v21 = v18[1];
    v22 = v18[3];
    v292 = v18[2];
    v293 = v22;
    v24 = v18[3];
    v23 = v18[4];
    v25 = v23;
    v295 = v18[5];
    v294 = v23;
    v26 = *v18;
    v27 = *v18;
    v291 = v18[1];
    v290 = v26;
    v28 = v8[5];
    v29 = v8[7];
    v299[6] = v8[6];
    v299[7] = v29;
    v30 = v8[1];
    v31 = v8[3];
    v299[2] = v8[2];
    v299[3] = v31;
    v32 = v8[4];
    v299[5] = v28;
    v299[4] = v32;
    v33 = *v8;
    v299[1] = v30;
    v299[0] = v33;
    v306 = v19;
    v307 = v296;
    v308 = v18[7];
    v302 = v21;
    v303 = v292;
    v304 = v24;
    v305 = v25;
    v301 = v27;
    v34 = v8[7];
    v310[6] = v287;
    v310[7] = v34;
    v310[2] = v283;
    v310[3] = v14;
    v310[4] = v15;
    v310[5] = v9;
    v289 = *(v8 + 128);
    v298 = *(v18 + 128);
    v300 = *(v8 + 128);
    v309 = *(v18 + 128);
    v311 = *(v8 + 128);
    v310[0] = v17;
    v310[1] = v11;
    v35 = sub_1D5F78DC4(v310);
    if (v35)
    {
      break;
    }

    v72 = sub_1D5DEA32C(v310);
    v226 = v296;
    v227 = v297;
    LOBYTE(v228) = v298;
    v222 = v292;
    v223 = v293;
    v224 = v294;
    v225 = v295;
    v220 = v290;
    v221 = v291;
    if (sub_1D5F78DC4(&v220))
    {
      v278 = v287;
      v279 = v288;
      v280 = v289;
      v274 = v283;
      v275 = v284;
      v277 = v286;
      v276 = v285;
      v273 = v282;
      v272 = v281;
      v191 = sub_1D5DEA32C(&v272);
      v259 = v287;
      v260 = v288;
      v261[0] = v289;
      v255 = v283;
      v256 = v284;
      v258 = v286;
      v257 = v285;
      v253 = v281;
      v254 = v282;
      v192 = sub_1D5DEA32C(&v253);
      sub_1D5F78EE4(v192, &v263);
      sub_1D5F78EE4(v191, &v263);
      goto LABEL_234;
    }

    v73 = sub_1D5DEA32C(&v220);
    sub_1D5F78F40(v72, &v212);
    sub_1D5F78F40(v73, &v244);
    v257 = v216;
    v258 = v217;
    v259 = v218;
    v260 = v219;
    v253 = v212;
    v254 = v213;
    v255 = v214;
    v256 = v215;
    *&v261[32] = v246;
    *&v261[48] = v247;
    *v261 = v244;
    *&v261[16] = v245;
    *&v261[96] = v250;
    *&v261[112] = v251;
    *&v261[64] = v248;
    *&v261[80] = v249;
    v266 = v215;
    v265 = v214;
    v264 = v213;
    v263 = v212;
    v270 = v219;
    v269 = v218;
    v268 = v217;
    v267 = v216;
    if (sub_1D6011280(&v263) == 1)
    {
      v74 = sub_1D5D756C8(&v263);
      v240 = v248;
      v241 = v249;
      v242 = v250;
      v243 = v251;
      v236 = v244;
      v237 = v245;
      v238 = v246;
      v239 = v247;
      v75 = sub_1D6011280(&v236);
      v76 = sub_1D5D756C8(&v236);
      if (v75 != 1)
      {
        goto LABEL_235;
      }

      v77 = v76;
      sub_1D5ECEF80(&v281, &v272);
      sub_1D5ECEF80(&v290, &v272);
      if (*v74 != *v77 || *(v74 + 8) != *(v77 + 8))
      {
LABEL_221:
        sub_1D5ECEF80(&v290, &v272);
        sub_1D5ECEF80(&v281, &v272);
        sub_1D5ECEF80(&v290, &v272);
        sub_1D5ECEF80(&v281, &v272);
        sub_1D5ECEF80(&v290, &v272);
        sub_1D5ECEF80(&v281, &v272);
        sub_1D5ECEF80(&v290, &v272);
        sub_1D5ECEF80(&v281, &v272);
        goto LABEL_222;
      }

      if (*(v74 + 48))
      {
        if ((*(v77 + 48) & 1) == 0 || *(v74 + 16) != *(v77 + 16) || *(v74 + 24) != *(v77 + 24) || *(v74 + 32) != *(v77 + 32))
        {
          goto LABEL_221;
        }

        v78 = *(v74 + 40);
        v79 = *(v77 + 40);
      }

      else
      {
        if (*(v77 + 48))
        {
          goto LABEL_221;
        }

        v78 = *(v74 + 16);
        v79 = *(v77 + 16);
      }

      if (v78 != v79 || *(v74 + 56) != *(v77 + 56) || *(v74 + 64) != *(v77 + 64))
      {
        goto LABEL_221;
      }

      if (*(v74 + 104))
      {
        if ((*(v77 + 104) & 1) == 0 || *(v74 + 72) != *(v77 + 72) || *(v74 + 80) != *(v77 + 80) || *(v74 + 88) != *(v77 + 88))
        {
          goto LABEL_221;
        }

        v144 = *(v74 + 96);
        v145 = *(v77 + 96);
      }

      else
      {
        if (*(v77 + 104))
        {
          goto LABEL_221;
        }

        v144 = *(v74 + 72);
        v145 = *(v77 + 72);
      }

      if (v144 != v145)
      {
        goto LABEL_221;
      }

      v146 = *(v74 + 112);
      v147 = *(v77 + 112);
      v148 = *(v146 + 16);
      if (v148 != *(v147 + 16))
      {
        goto LABEL_221;
      }

      if (v148 && v146 != v147)
      {
        v149 = (v146 + 32);
        v150 = (v147 + 32);
        sub_1D5ECEF80(&v290, &v272);
        sub_1D5ECEF80(&v281, &v272);
        sub_1D5ECEF80(&v290, &v272);
        sub_1D5ECEF80(&v281, &v272);
        sub_1D5ECEF80(&v290, &v272);
        sub_1D5ECEF80(&v281, &v272);
        sub_1D5ECEF80(&v290, &v272);
        sub_1D5ECEF80(&v281, &v272);
        while (1)
        {
          v151 = *v149++;
          *&v272 = v151;
          *&v204 = *v150;

          v152 = static FormatColor.== infix(_:_:)(&v272, &v204);

          if ((v152 & 1) == 0)
          {
            break;
          }

          ++v150;
          if (!--v148)
          {
            goto LABEL_76;
          }
        }

LABEL_222:
        v190 = &qword_1EC889AC8;
LABEL_227:
        sub_1D66AD7C0(&v253, v190);
        sub_1D5ECEFDC(&v290);
LABEL_228:
        sub_1D5ECEFDC(&v281);
LABEL_229:
        sub_1D66AD7C0(v299, &qword_1EC8817E0);
        sub_1D5ECEFDC(&v290);
        sub_1D5ECEFDC(&v281);
        sub_1D5ECEFDC(&v290);
        goto LABEL_230;
      }

      sub_1D5ECEF80(&v290, &v272);
      sub_1D5ECEF80(&v281, &v272);
      sub_1D5ECEF80(&v290, &v272);
      sub_1D5ECEF80(&v281, &v272);
      sub_1D5ECEF80(&v290, &v272);
      sub_1D5ECEF80(&v281, &v272);
      sub_1D5ECEF80(&v290, &v272);
      sub_1D5ECEF80(&v281, &v272);
LABEL_76:
      v153 = *(v74 + 120);
      v154 = *(v77 + 120);
      if (v153)
      {
        if (!v154)
        {
          goto LABEL_222;
        }

        v155 = *(v153 + 16);
        if (v155 != *(v154 + 16))
        {
          goto LABEL_222;
        }

        if (v155 && v153 != v154)
        {
          v156 = (v153 + 32);
          v157 = (v154 + 32);
          while (*v156 == *v157)
          {
            ++v156;
            ++v157;
            if (!--v155)
            {
              goto LABEL_84;
            }
          }

          goto LABEL_222;
        }

LABEL_84:
        v158 = &qword_1EC889AC8;
LABEL_179:
        sub_1D66AD7C0(&v253, v158);
        sub_1D5ECEFDC(&v290);
      }

      else
      {
        sub_1D66AD7C0(&v253, &qword_1EC889AC8);
        sub_1D5ECEFDC(&v290);
        if (v154)
        {
          goto LABEL_228;
        }
      }

      sub_1D5ECEFDC(&v281);
      sub_1D66AD7C0(v299, &qword_1EC8817E0);
      sub_1D5ECEFDC(&v290);
      sub_1D5ECEFDC(&v281);
      sub_1D5ECEFDC(&v290);
      sub_1D5ECEFDC(&v281);
LABEL_182:
      v5 = v197;
      v4 = v198;
      goto LABEL_10;
    }

    v124 = sub_1D5D756C8(&v263);
    v240 = v248;
    v241 = v249;
    v242 = v250;
    v243 = v251;
    v236 = v244;
    v237 = v245;
    v238 = v246;
    v239 = v247;
    v125 = sub_1D6011280(&v236);
    v126 = sub_1D5D756C8(&v236);
    if (v125 == 1)
    {
LABEL_235:
      sub_1D5ECEF80(&v290, &v272);
      sub_1D5ECEF80(&v281, &v272);
      sub_1D5ECEF80(&v290, &v272);
      sub_1D5ECEF80(&v281, &v272);
      sub_1D5ECEF80(&v290, &v272);
      sub_1D5ECEF80(&v281, &v272);
      sub_1D5ECEF80(&v290, &v272);
      sub_1D5ECEF80(&v281, &v272);
      v195 = &qword_1EC889AC8;
LABEL_238:
      sub_1D66AD7C0(&v253, v195);
      goto LABEL_229;
    }

    v204 = *v124;
    v205 = v124[1];
    v206 = v124[2];
    v207 = v124[3];
    v127 = v126[1];
    v200 = *v126;
    v201 = v127;
    v128 = v126[3];
    v202 = v126[2];
    v203 = v128;
    sub_1D5ECEF80(&v281, &v272);
    sub_1D5ECEF80(&v290, &v272);
    sub_1D5ECEF80(&v290, &v272);
    sub_1D5ECEF80(&v281, &v272);
    sub_1D5ECEF80(&v290, &v272);
    sub_1D5ECEF80(&v281, &v272);
    sub_1D5ECEF80(&v290, &v272);
    sub_1D5ECEF80(&v281, &v272);
    sub_1D5ECEF80(&v290, &v272);
    sub_1D5ECEF80(&v281, &v272);
    v129 = _s8NewsFeed14FormatGradientV2eeoiySbAC_ACtFZ_0(&v204, &v200);
    sub_1D66AD7C0(&v253, &qword_1EC889AC8);
    sub_1D5ECEFDC(&v290);
    sub_1D5ECEFDC(&v281);
    sub_1D66AD7C0(v299, &qword_1EC8817E0);
    sub_1D5ECEFDC(&v290);
    sub_1D5ECEFDC(&v281);
    sub_1D5ECEFDC(&v290);
    sub_1D5ECEFDC(&v281);
    if (!v129)
    {
      return 0;
    }

LABEL_10:
    if (++v3 == v2)
    {
      return 1;
    }
  }

  if (v35 != 1)
  {
    v80 = sub_1D5DEA32C(v310);
    v81 = *v80;
    v82 = *(v80 + 8);
    v259 = v296;
    v260 = v297;
    v261[0] = v298;
    v255 = v292;
    v256 = v293;
    v258 = v295;
    v257 = v294;
    v253 = v290;
    v254 = v291;
    if (sub_1D5F78DC4(&v253) != 2)
    {
      goto LABEL_234;
    }

    v83 = sub_1D5DEA32C(&v253);
    v84 = *v83;
    v85 = *(v83 + 8);
    sub_1D66AD7C0(v299, &qword_1EC8817E0);
    if (v82)
    {
      switch(*&v81)
      {
        case 1:
          if (*&v84 == 1)
          {
            v177 = v85;
          }

          else
          {
            v177 = 0;
          }

          if ((v177 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_10;
        case 2:
          v6 = *&v84 == 2;
          break;
        case 3:
          v6 = *&v84 == 3;
          break;
        case 4:
          v6 = *&v84 == 4;
          break;
        case 5:
          v6 = *&v84 == 5;
          break;
        case 6:
          v6 = *&v84 == 6;
          break;
        case 7:
          v6 = *&v84 == 7;
          break;
        case 8:
          v6 = *&v84 == 8;
          break;
        case 9:
          v6 = *&v84 == 9;
          break;
        case 0xALL:
          v6 = *&v84 == 10;
          break;
        case 0xBLL:
          v6 = *&v84 == 11;
          break;
        case 0xCLL:
          v6 = *&v84 == 12;
          break;
        case 0xDLL:
          v6 = *&v84 == 13;
          break;
        case 0xELL:
          v6 = *&v84 == 14;
          break;
        case 0xFLL:
          if (*&v84 > 0xEuLL)
          {
            v176 = v85;
          }

          else
          {
            v176 = 0;
          }

          if ((v176 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_10;
        default:
          v6 = *&v84 == 0;
          break;
      }

      if (v6)
      {
        v7 = v85;
      }

      else
      {
        v7 = 0;
      }

      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v85 & 1) != 0 || v81 != v84)
    {
      return 0;
    }

    goto LABEL_10;
  }

  v36 = sub_1D5DEA32C(v310);
  v278 = v296;
  v279 = v297;
  v280 = v298;
  v274 = v292;
  v275 = v293;
  v277 = v295;
  v276 = v294;
  v273 = v291;
  v272 = v290;
  if (sub_1D5F78DC4(&v272) == 1)
  {
    v37 = sub_1D5DEA32C(&v272);
    v253 = *v36;
    v38 = *(v36 + 64);
    v40 = *(v36 + 16);
    v39 = *(v36 + 32);
    v256 = *(v36 + 48);
    v257 = v38;
    v254 = v40;
    v255 = v39;
    v42 = *(v36 + 96);
    v41 = *(v36 + 112);
    v43 = *(v36 + 80);
    v261[0] = *(v36 + 128);
    v260 = v41;
    v258 = v43;
    v259 = v42;
    v44 = *(v37 + 80);
    v45 = *(v37 + 96);
    v46 = *(v37 + 112);
    v262 = *(v37 + 128);
    *&v261[120] = v46;
    *&v261[104] = v45;
    *&v261[88] = v44;
    v47 = *(v37 + 16);
    v48 = *(v37 + 32);
    v49 = *(v37 + 48);
    *&v261[72] = *(v37 + 64);
    *&v261[56] = v49;
    *&v261[40] = v48;
    *&v261[24] = v47;
    *&v261[8] = *v37;
    v50 = *(v36 + 80);
    v51 = *(v36 + 96);
    v52 = *(v36 + 112);
    v271 = *(v36 + 128);
    v270 = v52;
    v269 = v51;
    v268 = v50;
    v53 = *(v36 + 16);
    v54 = *(v36 + 32);
    v55 = *(v36 + 48);
    v267 = *(v36 + 64);
    v266 = v55;
    v265 = v54;
    v264 = v53;
    v263 = *v36;
    if (sub_1D6011234(&v263) == 1)
    {
      v56 = sub_1D5D756B8(&v263);
      v57 = *v56;
      v58 = *(v56 + 8);
      v220 = *v37;
      v59 = *(v37 + 64);
      v61 = *(v37 + 16);
      v60 = *(v37 + 32);
      v223 = *(v37 + 48);
      v224 = v59;
      v221 = v61;
      v222 = v60;
      v63 = *(v37 + 96);
      v62 = *(v37 + 112);
      v64 = *(v37 + 80);
      LOBYTE(v228) = *(v37 + 128);
      v226 = v63;
      v227 = v62;
      v225 = v64;
      v65 = sub_1D6011234(&v220);
      v66 = sub_1D5D756B8(&v220);
      if (v65 != 1)
      {
        goto LABEL_237;
      }

      v67 = *v66;
      v68 = *(v66 + 8);
      sub_1D5ECEF80(&v281, &v244);
      sub_1D5ECEF80(&v290, &v244);
      *&v212 = v57;
      *&v236 = v67;
      sub_1D5ECEF80(&v281, &v244);
      sub_1D5ECEF80(&v290, &v244);
      sub_1D5ECEF80(&v290, &v244);
      sub_1D5ECEF80(&v281, &v244);
      sub_1D5ECEF80(&v290, &v244);
      sub_1D5ECEF80(&v281, &v244);
      sub_1D5ECEF80(&v290, &v244);
      sub_1D5ECEF80(&v281, &v244);
      sub_1D5ECEF80(&v290, &v244);
      sub_1D5ECEF80(&v281, &v244);
      v69 = static FormatColor.== infix(_:_:)(&v212, &v236);

      if ((v69 & 1) == 0)
      {
        goto LABEL_226;
      }

      v70 = 0xE600000000000000;
      v71 = 0x6C616D726F6ELL;
      switch(v58)
      {
        case 1:
          v70 = 0xE800000000000000;
          v71 = 0x796C7069746C756DLL;
          break;
        case 2:
          v71 = 0x6E6565726373;
          break;
        case 3:
          v70 = 0xE700000000000000;
          v71 = 0x79616C7265766FLL;
          break;
        case 4:
          v71 = 0x6E656B726164;
          break;
        case 5:
          v70 = 0xE700000000000000;
          v71 = 0x6E65746867696CLL;
          break;
        case 6:
          v70 = 0xEA00000000006567;
          v71 = 0x646F44726F6C6F63;
          break;
        case 7:
          v70 = 0xE90000000000006ELL;
          v71 = 0x727542726F6C6F63;
          break;
        case 8:
          v70 = 0xE900000000000074;
          v178 = 1952870259;
          goto LABEL_158;
        case 9:
          v70 = 0xE900000000000074;
          v178 = 1685217640;
LABEL_158:
          v71 = v178 | 0x6867694C00000000;
          break;
        case 10:
          v70 = 0xEA00000000006563;
          v71 = 0x6E65726566666964;
          break;
        case 11:
          v70 = 0xE90000000000006ELL;
          v71 = 0x6F6973756C637865;
          break;
        case 12:
          v70 = 0xE300000000000000;
          v71 = 6649192;
          break;
        case 13:
          v70 = 0xEA00000000006E6FLL;
          v71 = 0x6974617275746173;
          break;
        case 14:
          v70 = 0xE500000000000000;
          v71 = 0x726F6C6F63;
          break;
        case 15:
          v70 = 0xEA00000000007974;
          v71 = 0x69736F6E696D756CLL;
          break;
        default:
          break;
      }

      v179 = 0xE600000000000000;
      v180 = 0x6C616D726F6ELL;
      switch(v68)
      {
        case 1:
          v179 = 0xE800000000000000;
          v180 = 0x796C7069746C756DLL;
          break;
        case 2:
          v180 = 0x6E6565726373;
          break;
        case 3:
          v179 = 0xE700000000000000;
          v180 = 0x79616C7265766FLL;
          break;
        case 4:
          v180 = 0x6E656B726164;
          break;
        case 5:
          v179 = 0xE700000000000000;
          v180 = 0x6E65746867696CLL;
          break;
        case 6:
          v179 = 0xEA00000000006567;
          v180 = 0x646F44726F6C6F63;
          break;
        case 7:
          v179 = 0xE90000000000006ELL;
          v180 = 0x727542726F6C6F63;
          break;
        case 8:
          v179 = 0xE900000000000074;
          v181 = 1952870259;
          goto LABEL_175;
        case 9:
          v179 = 0xE900000000000074;
          v181 = 1685217640;
LABEL_175:
          v180 = v181 | 0x6867694C00000000;
          break;
        case 10:
          v179 = 0xEA00000000006563;
          v180 = 0x6E65726566666964;
          break;
        case 11:
          v179 = 0xE90000000000006ELL;
          v180 = 0x6F6973756C637865;
          break;
        case 12:
          v179 = 0xE300000000000000;
          v180 = 6649192;
          break;
        case 13:
          v179 = 0xEA00000000006E6FLL;
          v180 = 0x6974617275746173;
          break;
        case 14:
          v179 = 0xE500000000000000;
          v180 = 0x726F6C6F63;
          break;
        case 15:
          v179 = 0xEA00000000007974;
          v180 = 0x69736F6E696D756CLL;
          break;
        default:
          break;
      }

      if (v71 == v180 && v70 == v179)
      {

        v158 = &qword_1EC889AC0;
        goto LABEL_179;
      }

      v182 = sub_1D72646CC();

      sub_1D66AD7C0(&v253, &qword_1EC889AC0);
      sub_1D5ECEFDC(&v290);
      sub_1D5ECEFDC(&v281);
      sub_1D66AD7C0(v299, &qword_1EC8817E0);
      sub_1D5ECEFDC(&v290);
      sub_1D5ECEFDC(&v281);
      sub_1D5ECEFDC(&v290);
      sub_1D5ECEFDC(&v281);
      if ((v182 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_182;
    }

    v86 = sub_1D5D756B8(&v263);
    v244 = *v37;
    v87 = *(v37 + 64);
    v89 = *(v37 + 16);
    v88 = *(v37 + 32);
    v247 = *(v37 + 48);
    v248 = v87;
    v245 = v89;
    v246 = v88;
    v91 = *(v37 + 96);
    v90 = *(v37 + 112);
    v92 = *(v37 + 80);
    v252 = *(v37 + 128);
    v250 = v91;
    v251 = v90;
    v249 = v92;
    if (sub_1D6011234(&v244) == 1)
    {
      sub_1D5D756B8(&v244);
LABEL_237:
      sub_1D5ECEF80(&v290, &v220);
      sub_1D5ECEF80(&v281, &v220);
      sub_1D5ECEF80(&v290, &v220);
      sub_1D5ECEF80(&v281, &v220);
      sub_1D5ECEF80(&v290, &v220);
      sub_1D5ECEF80(&v281, &v220);
      sub_1D5ECEF80(&v290, &v220);
      sub_1D5ECEF80(&v281, &v220);
      v195 = &qword_1EC889AC0;
      goto LABEL_238;
    }

    v196 = v2;
    v93 = sub_1D5D756B8(&v244);
    sub_1D5ECEF80(&v290, &v212);
    sub_1D5ECEF80(&v290, &v212);
    v94 = *v86;
    v95 = *(v86 + 16);
    v96 = *(v86 + 48);
    v222 = *(v86 + 32);
    v223 = v96;
    v220 = v94;
    v221 = v95;
    v97 = *(v86 + 64);
    v98 = *(v86 + 80);
    v99 = *(v86 + 112);
    v226 = *(v86 + 96);
    v227 = v99;
    v224 = v97;
    v225 = v98;
    v100 = *(v93 + 112);
    v102 = *(v93 + 64);
    v101 = *(v93 + 80);
    v234 = *(v93 + 96);
    v235 = v100;
    v232 = v102;
    v233 = v101;
    v103 = *v93;
    v104 = *(v93 + 16);
    v105 = *(v93 + 48);
    v230 = *(v93 + 32);
    v231 = v105;
    v228 = v103;
    v229 = v104;
    v106 = *(v86 + 112);
    v108 = *(v86 + 64);
    v107 = *(v86 + 80);
    v242 = *(v86 + 96);
    v243 = v106;
    v240 = v108;
    v241 = v107;
    v109 = *v86;
    v110 = *(v86 + 16);
    v111 = *(v86 + 48);
    v238 = *(v86 + 32);
    v239 = v111;
    v236 = v109;
    v237 = v110;
    if (sub_1D6011280(&v236) == 1)
    {
      v112 = sub_1D5D756C8(&v236);
      sub_1D5ECEF80(&v281, &v212);
      sub_1D5ECEF80(&v281, &v212);
      v113 = *v93;
      v114 = *(v93 + 16);
      v115 = *(v93 + 48);
      v206 = *(v93 + 32);
      v207 = v115;
      v204 = v113;
      v205 = v114;
      v116 = *(v93 + 64);
      v117 = *(v93 + 80);
      v118 = *(v93 + 112);
      v210 = *(v93 + 96);
      v211 = v118;
      v208 = v116;
      v209 = v117;
      v119 = sub_1D6011280(&v204);
      v120 = sub_1D5D756C8(&v204);
      if (v119 != 1)
      {
        goto LABEL_239;
      }

      v121 = v120;
      sub_1D5ECEF80(&v290, &v212);
      sub_1D5ECEF80(&v281, &v212);
      sub_1D5ECEF80(&v281, &v212);
      sub_1D5ECEF80(&v290, &v212);
      if (*v112 != *v121 || *(v112 + 8) != *(v121 + 8))
      {
LABEL_223:
        sub_1D5ECEF80(&v290, &v212);
        sub_1D5ECEF80(&v281, &v212);
        sub_1D5ECEF80(&v290, &v212);
        sub_1D5ECEF80(&v281, &v212);
        sub_1D5ECEF80(&v290, &v212);
        sub_1D5ECEF80(&v281, &v212);
        sub_1D5ECEF80(&v290, &v212);
        sub_1D5ECEF80(&v281, &v212);
LABEL_224:
        sub_1D66AD7C0(&v220, &qword_1EC889AC8);
        sub_1D5ECEFDC(&v290);
LABEL_225:
        sub_1D5ECEFDC(&v281);
        sub_1D5ECEFDC(&v290);
        sub_1D5ECEFDC(&v281);
LABEL_226:
        v190 = &qword_1EC889AC0;
        goto LABEL_227;
      }

      if (*(v112 + 48))
      {
        if ((*(v121 + 48) & 1) == 0 || *(v112 + 16) != *(v121 + 16) || *(v112 + 24) != *(v121 + 24) || *(v112 + 32) != *(v121 + 32))
        {
          goto LABEL_223;
        }

        v122 = *(v112 + 40);
        v123 = *(v121 + 40);
      }

      else
      {
        if (*(v121 + 48))
        {
          goto LABEL_223;
        }

        v122 = *(v112 + 16);
        v123 = *(v121 + 16);
      }

      if (v122 != v123 || *(v112 + 56) != *(v121 + 56) || *(v112 + 64) != *(v121 + 64))
      {
        goto LABEL_223;
      }

      if (*(v112 + 104))
      {
        if ((*(v121 + 104) & 1) == 0 || *(v112 + 72) != *(v121 + 72) || *(v112 + 80) != *(v121 + 80) || *(v112 + 88) != *(v121 + 88))
        {
          goto LABEL_223;
        }

        v159 = *(v112 + 96);
        v160 = *(v121 + 96);
      }

      else
      {
        if (*(v121 + 104))
        {
          goto LABEL_223;
        }

        v159 = *(v112 + 72);
        v160 = *(v121 + 72);
      }

      if (v159 != v160)
      {
        goto LABEL_223;
      }

      v161 = *(v112 + 112);
      v162 = *(v121 + 112);
      v163 = *(v161 + 16);
      if (v163 != *(v162 + 16))
      {
        goto LABEL_223;
      }

      if (v163 && v161 != v162)
      {
        v164 = (v161 + 32);
        v165 = (v162 + 32);
        sub_1D5ECEF80(&v290, &v212);
        sub_1D5ECEF80(&v281, &v212);
        sub_1D5ECEF80(&v290, &v212);
        sub_1D5ECEF80(&v281, &v212);
        sub_1D5ECEF80(&v290, &v212);
        sub_1D5ECEF80(&v281, &v212);
        sub_1D5ECEF80(&v290, &v212);
        sub_1D5ECEF80(&v281, &v212);
        while (1)
        {
          v166 = *v164++;
          *&v212 = v166;
          *&v200 = *v165;

          v167 = static FormatColor.== infix(_:_:)(&v212, &v200);

          if ((v167 & 1) == 0)
          {
            goto LABEL_224;
          }

          ++v165;
          if (!--v163)
          {
            goto LABEL_109;
          }
        }
      }

      sub_1D5ECEF80(&v290, &v212);
      sub_1D5ECEF80(&v281, &v212);
      sub_1D5ECEF80(&v290, &v212);
      sub_1D5ECEF80(&v281, &v212);
      sub_1D5ECEF80(&v290, &v212);
      sub_1D5ECEF80(&v281, &v212);
      sub_1D5ECEF80(&v290, &v212);
      sub_1D5ECEF80(&v281, &v212);
LABEL_109:
      v168 = *(v112 + 120);
      v169 = *(v121 + 120);
      if (v168)
      {
        if (!v169)
        {
          goto LABEL_224;
        }

        v170 = *(v168 + 16);
        if (v170 != *(v169 + 16))
        {
          goto LABEL_224;
        }

        if (v170 && v168 != v169)
        {
          v171 = (v168 + 32);
          v172 = (v169 + 32);
          while (*v171 == *v172)
          {
            ++v171;
            ++v172;
            if (!--v170)
            {
              goto LABEL_117;
            }
          }

          goto LABEL_224;
        }

LABEL_117:
        sub_1D66AD7C0(&v220, &qword_1EC889AC8);
        sub_1D5ECEFDC(&v290);
      }

      else
      {
        sub_1D66AD7C0(&v220, &qword_1EC889AC8);
        sub_1D5ECEFDC(&v290);
        if (v169)
        {
          goto LABEL_225;
        }
      }

      sub_1D5ECEFDC(&v281);
      sub_1D5ECEFDC(&v290);
      sub_1D5ECEFDC(&v281);
    }

    else
    {
      v130 = sub_1D5D756C8(&v236);
      sub_1D5ECEF80(&v281, &v212);
      sub_1D5ECEF80(&v281, &v212);
      v131 = *v93;
      v132 = *(v93 + 16);
      v133 = *(v93 + 48);
      v206 = *(v93 + 32);
      v207 = v133;
      v204 = v131;
      v205 = v132;
      v134 = *(v93 + 64);
      v135 = *(v93 + 80);
      v136 = *(v93 + 112);
      v210 = *(v93 + 96);
      v211 = v136;
      v208 = v134;
      v209 = v135;
      v137 = sub_1D6011280(&v204);
      v138 = sub_1D5D756C8(&v204);
      if (v137 == 1)
      {
LABEL_239:
        sub_1D5ECEF80(&v290, &v212);
        sub_1D5ECEF80(&v281, &v212);
        sub_1D5ECEF80(&v290, &v212);
        sub_1D5ECEF80(&v281, &v212);
        sub_1D5ECEF80(&v290, &v212);
        sub_1D5ECEF80(&v281, &v212);
        sub_1D5ECEF80(&v290, &v212);
        sub_1D5ECEF80(&v281, &v212);
        sub_1D66AD7C0(&v220, &qword_1EC889AC8);
        goto LABEL_226;
      }

      v139 = v130[1];
      v200 = *v130;
      v201 = v139;
      v140 = v130[3];
      v202 = v130[2];
      v203 = v140;
      v141 = v138[1];
      v199[0] = *v138;
      v199[1] = v141;
      v142 = v138[3];
      v199[2] = v138[2];
      v199[3] = v142;
      sub_1D5ECEF80(&v290, &v212);
      sub_1D5ECEF80(&v281, &v212);
      sub_1D5ECEF80(&v281, &v212);
      sub_1D5ECEF80(&v290, &v212);
      sub_1D5ECEF80(&v290, &v212);
      sub_1D5ECEF80(&v281, &v212);
      sub_1D5ECEF80(&v290, &v212);
      sub_1D5ECEF80(&v281, &v212);
      sub_1D5ECEF80(&v290, &v212);
      sub_1D5ECEF80(&v281, &v212);
      sub_1D5ECEF80(&v290, &v212);
      sub_1D5ECEF80(&v281, &v212);
      v143 = _s8NewsFeed14FormatGradientV2eeoiySbAC_ACtFZ_0(&v200, v199);
      sub_1D66AD7C0(&v220, &qword_1EC889AC8);
      sub_1D5ECEFDC(&v290);
      sub_1D5ECEFDC(&v281);
      sub_1D5ECEFDC(&v290);
      sub_1D5ECEFDC(&v281);
      if (!v143)
      {
        goto LABEL_226;
      }
    }

    v173 = *(v86 + 128);
    v174 = 0xE600000000000000;
    v2 = v196;
    v5 = v197;
    v4 = v198;
    v175 = 0x6C616D726F6ELL;
    switch(v173)
    {
      case 1:
        v174 = 0xE800000000000000;
        v175 = 0x796C7069746C756DLL;
        break;
      case 2:
        v175 = 0x6E6565726373;
        break;
      case 3:
        v174 = 0xE700000000000000;
        v175 = 0x79616C7265766FLL;
        break;
      case 4:
        v175 = 0x6E656B726164;
        break;
      case 5:
        v174 = 0xE700000000000000;
        v175 = 0x6E65746867696CLL;
        break;
      case 6:
        v174 = 0xEA00000000006567;
        v175 = 0x646F44726F6C6F63;
        break;
      case 7:
        v174 = 0xE90000000000006ELL;
        v175 = 0x727542726F6C6F63;
        break;
      case 8:
        v174 = 0xE900000000000074;
        v183 = 1952870259;
        goto LABEL_197;
      case 9:
        v174 = 0xE900000000000074;
        v183 = 1685217640;
LABEL_197:
        v175 = v183 | 0x6867694C00000000;
        break;
      case 10:
        v174 = 0xEA00000000006563;
        v175 = 0x6E65726566666964;
        break;
      case 11:
        v174 = 0xE90000000000006ELL;
        v175 = 0x6F6973756C637865;
        break;
      case 12:
        v174 = 0xE300000000000000;
        v175 = 6649192;
        break;
      case 13:
        v174 = 0xEA00000000006E6FLL;
        v175 = 0x6974617275746173;
        break;
      case 14:
        v174 = 0xE500000000000000;
        v175 = 0x726F6C6F63;
        break;
      case 15:
        v174 = 0xEA00000000007974;
        v175 = 0x69736F6E696D756CLL;
        break;
      default:
        break;
    }

    v184 = *(v93 + 128);
    v185 = 0xE600000000000000;
    v186 = 0x6C616D726F6ELL;
    switch(v184)
    {
      case 1:
        v185 = 0xE800000000000000;
        v186 = 0x796C7069746C756DLL;
        break;
      case 2:
        v186 = 0x6E6565726373;
        break;
      case 3:
        v185 = 0xE700000000000000;
        v186 = 0x79616C7265766FLL;
        break;
      case 4:
        v186 = 0x6E656B726164;
        break;
      case 5:
        v185 = 0xE700000000000000;
        v186 = 0x6E65746867696CLL;
        break;
      case 6:
        v185 = 0xEA00000000006567;
        v186 = 0x646F44726F6C6F63;
        break;
      case 7:
        v185 = 0xE90000000000006ELL;
        v186 = 0x727542726F6C6F63;
        break;
      case 8:
        v185 = 0xE900000000000074;
        v187 = 1952870259;
        goto LABEL_214;
      case 9:
        v185 = 0xE900000000000074;
        v187 = 1685217640;
LABEL_214:
        v186 = v187 | 0x6867694C00000000;
        break;
      case 10:
        v185 = 0xEA00000000006563;
        v186 = 0x6E65726566666964;
        break;
      case 11:
        v185 = 0xE90000000000006ELL;
        v186 = 0x6F6973756C637865;
        break;
      case 12:
        v185 = 0xE300000000000000;
        v186 = 6649192;
        break;
      case 13:
        v185 = 0xEA00000000006E6FLL;
        v186 = 0x6974617275746173;
        break;
      case 14:
        v185 = 0xE500000000000000;
        v186 = 0x726F6C6F63;
        break;
      case 15:
        v185 = 0xEA00000000007974;
        v186 = 0x69736F6E696D756CLL;
        break;
      default:
        break;
    }

    if (v175 == v186 && v174 == v185)
    {

      sub_1D66AD7C0(&v253, &qword_1EC889AC0);
      sub_1D5ECEFDC(&v290);
      sub_1D5ECEFDC(&v281);
      sub_1D66AD7C0(v299, &qword_1EC8817E0);
      sub_1D5ECEFDC(&v290);
      sub_1D5ECEFDC(&v281);
      sub_1D5ECEFDC(&v290);
      sub_1D5ECEFDC(&v281);
    }

    else
    {
      v188 = sub_1D72646CC();

      sub_1D66AD7C0(&v253, &qword_1EC889AC0);
      sub_1D5ECEFDC(&v290);
      sub_1D5ECEFDC(&v281);
      sub_1D66AD7C0(v299, &qword_1EC8817E0);
      sub_1D5ECEFDC(&v290);
      sub_1D5ECEFDC(&v281);
      sub_1D5ECEFDC(&v290);
      sub_1D5ECEFDC(&v281);
      if ((v188 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_10;
  }

  v226 = v287;
  v227 = v288;
  LOBYTE(v228) = v289;
  v222 = v283;
  v223 = v284;
  v224 = v285;
  v225 = v286;
  v220 = v281;
  v221 = v282;
  v193 = sub_1D5DEA32C(&v220);
  v259 = v287;
  v260 = v288;
  v261[0] = v289;
  v255 = v283;
  v256 = v284;
  v258 = v286;
  v257 = v285;
  v253 = v281;
  v254 = v282;
  v194 = sub_1D5DEA32C(&v253);
  sub_1D5F78E88(v194, &v263);
  sub_1D5F78E88(v193, &v263);
LABEL_234:
  sub_1D5ECEF80(&v290, &v253);
  sub_1D66AD7C0(v299, &qword_1EC8817E0);
LABEL_230:
  sub_1D5ECEFDC(&v281);
  return 0;
}

uint64_t sub_1D6348EA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v6 = *(v3 - 1);
      v7 = *(v4 - 1);
      v5 = *v4;
      if (*v3 == 1)
      {
        if (v6 == 0.0)
        {
          if (v7 != 0.0)
          {
            LOBYTE(v5) = 0;
          }

          if ((v5 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (v7 == 0.0)
          {
            v5 = 0;
          }

          if (v5 != 1)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v6 != v7)
        {
          LOBYTE(v5) = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D6348F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContentOverlaySubgroup();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = (&v21 - v11);
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      while (1)
      {
        sub_1D6706BB4(v15, v12, type metadata accessor for FormatContentOverlaySubgroup);
        sub_1D6706BB4(v16, v7, type metadata accessor for FormatContentOverlaySubgroup);
        v18 = *v12 == *v7 && v12[1] == v7[1];
        if (!v18 && (sub_1D72646CC() & 1) == 0)
        {
          break;
        }

        v19 = sub_1D633C3EC(*(v12 + *(v4 + 20)), *(v7 + *(v4 + 20)));
        sub_1D5D2CFE8(v7, type metadata accessor for FormatContentOverlaySubgroup);
        sub_1D5D2CFE8(v12, type metadata accessor for FormatContentOverlaySubgroup);
        if (v19)
        {
          v16 += v17;
          v15 += v17;
          if (--v13)
          {
            continue;
          }
        }

        return v19 & 1;
      }

      sub_1D5D2CFE8(v7, type metadata accessor for FormatContentOverlaySubgroup);
      sub_1D5D2CFE8(v12, type metadata accessor for FormatContentOverlaySubgroup);
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1D6349160(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D63491BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatPropertyDefinition(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v345 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v364 = &v345 - v11;
  v13 = 0;
  v14 = a1 + 32;
  v15 = a2 + 32;
  v359 = a2 + 32;
  v360 = a1 + 32;
  v356 = v5;
  v354 = v8;
  v361 = v12;
  while (1)
  {
    v16 = (v14 + 88 * v13);
    v17 = v16[3];
    v391 = v16[2];
    v392 = v17;
    v393 = v16[4];
    v394 = *(v16 + 80);
    v18 = v16[1];
    v389 = *v16;
    v390 = v18;
    v19 = (v15 + 88 * v13);
    v20 = v19[1];
    v395 = *v19;
    v396 = v20;
    v21 = v19[2];
    v22 = v19[3];
    v23 = v19[4];
    v400 = *(v19 + 80);
    v398 = v22;
    v399 = v23;
    v397 = v21;
    if (v389 != v395 && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }

    if (*(&v390 + 1))
    {
      if (!*(&v396 + 1) || v390 != v396 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }
    }

    else if (*(&v396 + 1))
    {
      return 0;
    }

    v363 = v13;
    v24 = v392;
    v26 = *(&v397 + 1);
    v25 = v397;
    v28 = *(&v398 + 1);
    v27 = v398;
    v29 = *(&v399 + 1);
    v30 = v400;
    v383[0] = v391;
    v383[1] = v392;
    v373 = v398;
    v374 = *(&v392 + 1);
    v383[2] = v393;
    v366 = *(&v393 + 1);
    v367 = v392;
    v384 = v394;
    v385 = v397;
    v386 = v398;
    v375 = *(&v397 + 1);
    v376 = v399;
    v387 = v399;
    v368 = v394;
    v31 = v394 >> 6;
    v388 = v400;
    v369 = *(&v398 + 1);
    v370 = v393;
    v377 = v397;
    v378 = v391;
    v372 = v400;
    v371 = *(&v399 + 1);
    v365 = *(&v391 + 1);
    if (v31)
    {
      break;
    }

    if (v400 >= 0x40u)
    {
      goto LABEL_141;
    }

    v60 = *(v378 + 16);
    if (v60 != *(v397 + 16))
    {
      goto LABEL_140;
    }

    v62 = v377;
    v61 = v378;
    if (v60 && v378 != v377)
    {
      v127 = 0;
      while (1)
      {
        v129 = *(v61 + v127 + 48);
        v128 = *(v61 + v127 + 56);
        v130 = *(v61 + v127 + 64);
        v131 = *(v61 + v127 + 72);
        v132 = v62 + v127;
        v133 = *(v62 + v127 + 32);
        v134 = *(v62 + v127 + 40);
        v136 = *(v62 + v127 + 48);
        v135 = *(v62 + v127 + 56);
        v137 = *(v62 + v127 + 64);
        v138 = *(v132 + 72);
        if (*(v61 + v127 + 32) != v133 || *(v61 + v127 + 40) != v134)
        {
          v362 = *(v132 + 72);
          v140 = v137;
          v141 = v131;
          v142 = v130;
          v143 = sub_1D72646CC();
          v130 = v142;
          v131 = v141;
          v137 = v140;
          v138 = v362;
          if ((v143 & 1) == 0)
          {
            break;
          }
        }

        if (v129 != v136 || v128 != v135)
        {
          v145 = v130;
          v146 = sub_1D72646CC();
          v130 = v145;
          if ((v146 & 1) == 0)
          {
            break;
          }
        }

        v147 = v130 == v137 && v131 == v138;
        if (!v147 && (sub_1D72646CC() & 1) == 0)
        {
          break;
        }

        v127 += 48;
        --v60;
        v62 = v377;
        v61 = v378;
        if (!v60)
        {
          goto LABEL_27;
        }
      }

LABEL_140:
      sub_1D618EC0C(v378, v365, v367, v374, v370, v366, v368);
      v270 = v376;
      v269 = v377;
      v271 = v375;
      v272 = v373;
      v273 = v369;
      v274 = v371;
      v275 = v372;
LABEL_142:
      sub_1D618EC0C(v269, v271, v272, v273, v270, v274, v275);
      sub_1D66AD7C0(v383, &qword_1EDF2A868);
      return 0;
    }

LABEL_27:
    sub_1D618EC0C(v61, v365, v367, v374, v370, v366, v368);
    sub_1D618EC0C(v62, v375, v373, v369, v376, v371, v372);
    sub_1D66AD7C0(v383, &qword_1EDF2A868);
LABEL_135:
    v14 = v360;
    v15 = v359;
    v13 = v363 + 1;
    if (v363 + 1 == v361)
    {
      return 1;
    }
  }

  if (v31 != 1)
  {
    if ((v400 & 0xC0) != 0x80)
    {
LABEL_141:
      v280 = v397;
      sub_1D618EC0C(v378, *(&v391 + 1), v392, v374, v393, v366, v368);
      v269 = v280;
      v271 = v26;
      v272 = v27;
      v273 = v28;
      v270 = v376;
      v274 = v29;
      v275 = v30;
      goto LABEL_142;
    }

    v63 = *(&v391 + 1);
    v64 = *(v378 + 16);
    if (v64 != *(v397 + 16))
    {
      sub_1D618EC0C(v397, *(&v397 + 1), v398, *(&v398 + 1), v376, v371, v400);
      v306 = v378;
      v307 = v28;
      v309 = v366;
      v308 = v367;
      v310 = v27;
      v311 = v374;
      v312 = v370;
      v157 = v368;
      sub_1D618EC0C(v378, v63, v367, v374, v370, v366, v368);
      sub_1D618EC0C(v306, v63, v308, v311, v312, v309, v157);
      v313 = v375;
      v314 = v310;
      v315 = v307;
      v316 = v376;
      LOBYTE(v310) = v372;
      sub_1D618EC0C(v377, v375, v314, v315, v376, v371, v372);
      sub_1D618EC0C(v378, v63, v308, v311, v312, v309, v157);
      sub_1D618EC0C(v377, v313, v373, v369, v316, v371, v310);
      sub_1D62B7D1C(&v389, v381);
      sub_1D62B7D1C(&v395, v381);
LABEL_148:
      sub_1D66AD7C0(v383, &qword_1EDF2A868);
      v317 = v376;
      v318 = v375;
      v319 = v373;
      v320 = v369;
      v321 = v371;
      sub_1D60CF6F4(v377, v375, v373, v369, v376, v371, v372);
      v322 = v378;
      v323 = v365;
      v324 = v367;
      sub_1D60CF6F4(v378, v365, v367, v374, v370, v366, v157);
      sub_1D60CF6F4(v377, v318, v319, v320, v317, v321, v372);
      v299 = v322;
      v300 = v323;
      v301 = v324;
      v302 = v374;
      v303 = v370;
      v304 = v366;
      v305 = v157;
LABEL_149:
      sub_1D60CF6F4(v299, v300, v301, v302, v303, v304, v305);
      sub_1D62B7D78(&v395);
      sub_1D62B7D78(&v389);
      return 0;
    }

    if (v64)
    {
      if (v378 == v397)
      {
        v65 = v378;
        v66 = v371;
        sub_1D618EC0C(v378, v375, v398, *(&v398 + 1), v376, v371, v400);
        v67 = v366;
        v68 = v367;
        v69 = v374;
        v70 = v370;
        v71 = v368;
        sub_1D618EC0C(v65, v63, v367, v374, v370, v366, v368);
        sub_1D618EC0C(v65, v63, v68, v69, v70, v67, v71);
        v72 = v376;
        v73 = v66;
        LOBYTE(v66) = v372;
        sub_1D618EC0C(v65, v375, v27, v369, v376, v73, v372);
        v74 = v65;
        v75 = v69;
        LOBYTE(v69) = v66;
        v76 = v65;
        v77 = v371;
        sub_1D618EC0C(v74, v63, v367, v75, v70, v67, v71);
        v78 = v369;
        v79 = v69;
        sub_1D618EC0C(v76, v375, v27, v369, v72, v77, v69);
        sub_1D62B7D1C(&v389, v381);
        sub_1D62B7D1C(&v395, v381);
        v80 = v27;
        v81 = v76;
      }

      else
      {
        v148 = (*(v356 + 80) + 32) & ~*(v356 + 80);
        v149 = v378;
        v150 = v378 + v148;
        v151 = v397 + v148;
        sub_1D618EC0C(v397, v375, v398, *(&v398 + 1), v376, v371, v400);
        v152 = v63;
        v153 = v63;
        v154 = v370;
        v155 = v366;
        v156 = v374;
        v157 = v368;
        sub_1D618EC0C(v149, v152, v367, v374, v370, v366, v368);
        v158 = v149;
        v159 = v367;
        sub_1D618EC0C(v158, v153, v367, v156, v154, v155, v157);
        sub_1D618EC0C(v377, v375, v373, v369, v376, v371, v372);
        sub_1D618EC0C(v378, v153, v159, v156, v154, v155, v157);
        sub_1D618EC0C(v377, v375, v373, v369, v376, v371, v372);
        sub_1D62B7D1C(&v389, v381);
        sub_1D62B7D1C(&v395, v381);
        v160 = *(v356 + 72);
        v161 = v354;
        do
        {
          v162 = v364;
          sub_1D6706BB4(v150, v364, type metadata accessor for FormatPropertyDefinition);
          sub_1D6706BB4(v151, v161, type metadata accessor for FormatPropertyDefinition);
          v163 = _s8NewsFeed24FormatPropertyDefinitionO2eeoiySbAC_ACtFZ_0(v162, v161);
          sub_1D5D2CFE8(v161, type metadata accessor for FormatPropertyDefinition);
          sub_1D5D2CFE8(v162, type metadata accessor for FormatPropertyDefinition);
          if (!v163)
          {
            goto LABEL_148;
          }

          v151 += v160;
          v150 += v160;
          --v64;
        }

        while (v64);
        v81 = v377;
        v76 = v378;
        v79 = v372;
        v77 = v371;
        v78 = v369;
        v80 = v373;
        v72 = v376;
      }
    }

    else
    {
      v82 = v371;
      sub_1D618EC0C(v397, *(&v397 + 1), v398, *(&v398 + 1), v376, v371, v400);
      v76 = v378;
      v83 = v63;
      v84 = v63;
      v86 = v366;
      v85 = v367;
      v87 = v374;
      v88 = v370;
      v89 = v368;
      sub_1D618EC0C(v378, v84, v367, v374, v370, v366, v368);
      sub_1D618EC0C(v76, v83, v85, v87, v88, v86, v89);
      v72 = v376;
      sub_1D618EC0C(v377, v375, v27, v369, v376, v82, v372);
      v90 = v86;
      v77 = v82;
      sub_1D618EC0C(v76, v83, v367, v87, v88, v90, v89);
      v91 = v377;
      v78 = v369;
      v79 = v372;
      sub_1D618EC0C(v377, v375, v27, v369, v72, v82, v372);
      sub_1D62B7D1C(&v389, v381);
      sub_1D62B7D1C(&v395, v381);
      v92 = v27;
      v81 = v91;
      v80 = v92;
    }

    sub_1D66AD7C0(v383, &qword_1EDF2A868);
    v164 = v81;
    v165 = v375;
    sub_1D60CF6F4(v164, v375, v80, v78, v72, v77, v79);
    v166 = v76;
    v167 = v367;
    v168 = v374;
    v169 = v77;
    v170 = v370;
    v171 = v80;
    v172 = v366;
    v173 = v368;
    sub_1D60CF6F4(v166, v365, v367, v374, v370, v366, v368);
    sub_1D60CF6F4(v377, v165, v171, v78, v376, v169, v372);
    v174 = v378;
    v175 = v365;
    v176 = v167;
    v177 = v168;
    v178 = v170;
    v179 = v172;
    v180 = v173;
LABEL_134:
    sub_1D60CF6F4(v174, v175, v176, v177, v178, v179, v180);
    sub_1D62B7D78(&v395);
    sub_1D62B7D78(&v389);
    goto LABEL_135;
  }

  if ((v400 & 0xC0) != 0x40)
  {
    goto LABEL_141;
  }

  v32 = *(v378 + 16);
  if (v32 != *(v397 + 16))
  {
    v279 = *(&v391 + 1);
    v276 = v376;
    sub_1D618EC0C(v397, *(&v397 + 1), v373, *(&v398 + 1), v376, *(&v399 + 1), v400);
    v277 = v378;
    v278 = v378;
    goto LABEL_144;
  }

  v33 = v376;
  if (v32 && v378 != v397)
  {
    v123 = (v378 + 40);
    v124 = (v397 + 40);
    while (1)
    {
      if (*(v123 - 1) != *(v124 - 1) || *v123 != *v124)
      {
        v126 = sub_1D72646CC();
        v25 = v377;
        if ((v126 & 1) == 0)
        {
          break;
        }
      }

      v123 += 2;
      v124 += 2;
      if (!--v32)
      {
        goto LABEL_19;
      }
    }

    v28 = v369;
    v276 = v33;
    sub_1D618EC0C(v377, v375, v373, v369, v33, v29, v30);
    v277 = v378;
    v278 = v378;
    v279 = v365;
LABEL_144:
    v281 = v374;
    v282 = v370;
    v190 = v366;
    v283 = v368;
    sub_1D618EC0C(v278, v279, v24, v374, v370, v366, v368);
    sub_1D618EC0C(v277, v279, v24, v281, v282, v190, v283);
    v284 = v276;
    v189 = v372;
    sub_1D618EC0C(v377, v375, v373, v28, v284, v371, v372);
    v285 = v277;
    v286 = v279;
    v287 = v24;
    v288 = v281;
    v289 = v282;
    v290 = v190;
    v291 = v283;
LABEL_145:
    sub_1D618EC0C(v285, v286, v287, v288, v289, v290, v291);
    sub_1D62B7D1C(&v389, v381);
    sub_1D62B7D1C(&v395, v381);
    sub_1D66AD7C0(v383, &qword_1EDF2A868);
    goto LABEL_146;
  }

LABEL_19:
  v34 = v365;
  v35 = *(v365 + 16);
  v36 = v375;
  if (v35 != *(v375 + 16))
  {
    v28 = v369;
    v325 = v33;
    sub_1D618EC0C(v25, v375, v373, v369, v33, v29, v30);
    v326 = v378;
    v327 = v374;
    v328 = v370;
    v190 = v366;
    v329 = v368;
    sub_1D618EC0C(v378, v34, v24, v374, v370, v366, v368);
    sub_1D618EC0C(v326, v34, v24, v327, v328, v190, v329);
    v330 = v325;
    v189 = v372;
    sub_1D618EC0C(v377, v375, v373, v28, v330, v371, v372);
    v285 = v326;
    v286 = v34;
    v287 = v24;
    v288 = v327;
    v289 = v328;
    v290 = v190;
    v291 = v329;
    goto LABEL_145;
  }

  v28 = v369;
  v37 = v373;
  if (!v35)
  {
    v93 = v378;
    v94 = v374;
    v95 = v25;
    sub_1D618EC0C(v25, v375, v373, v369, v33, v29, v30);
    v96 = v370;
    v97 = v366;
    v98 = v368;
    sub_1D618EC0C(v93, v34, v24, v94, v370, v366, v368);
    sub_1D618EC0C(v93, v34, v24, v94, v96, v97, v98);
    v99 = v95;
    v100 = v36;
    v101 = v373;
    v102 = v371;
    sub_1D618EC0C(v99, v100, v373, v369, v376, v371, v372);
    v103 = v93;
    v53 = v376;
    sub_1D618EC0C(v103, v34, v24, v94, v96, v97, v98);
    v52 = v377;
    v51 = v372;
    v54 = v375;
    v59 = v102;
    v28 = v369;
    v55 = v101;
    v56 = v369;
    v57 = v53;
    v58 = v59;
LABEL_35:
    sub_1D618EC0C(v52, v54, v55, v56, v57, v59, v51);
    sub_1D62B7D1C(&v389, v381);
    sub_1D62B7D1C(&v395, v381);
LABEL_36:
    if (v368)
    {
      v104 = v366;
      v24 = v367;
      v105 = v370;
      if ((v51 & 1) == 0)
      {
        goto LABEL_152;
      }

      v106 = v373;
      sub_1D618ECBC(v373, v28, v53, v58, 1);
      sub_1D618ECBC(v24, v374, v105, v104, 1);
      if ((v24 != v106 || v374 != v28) && (sub_1D72646CC() & 1) == 0)
      {
        sub_1D5E32940(v24, v374, v105, v104, 1);
        v341 = v373;
        sub_1D5E32940(v373, v28, v53, v58, 1);
        sub_1D66AD7C0(v383, &qword_1EDF2A868);
        v342 = v341;
        LOBYTE(v341) = v372;
        sub_1D60CF6F4(v377, v375, v342, v28, v53, v58, v372);
        v190 = v104;
        v189 = v341;
LABEL_146:
        v292 = v378;
        v293 = v365;
        v294 = v374;
        v295 = v370;
        v296 = v190;
        v297 = v190;
        v298 = v368;
        sub_1D60CF6F4(v378, v365, v24, v374, v370, v296, v368);
        sub_1D60CF6F4(v377, v375, v373, v28, v376, v371, v189);
        v299 = v292;
        v300 = v293;
        v301 = v24;
        v302 = v294;
        v303 = v295;
        v304 = v297;
        v305 = v298;
        goto LABEL_149;
      }

      if (v105)
      {
        v107 = 0x6F74656C676E6973;
      }

      else
      {
        v107 = 0x65636E6174736E69;
      }

      if (v105)
      {
        v108 = 0xE90000000000006ELL;
      }

      else
      {
        v108 = 0xE800000000000000;
      }

      v109 = v53;
      if (v53)
      {
        v110 = 0x6F74656C676E6973;
      }

      else
      {
        v110 = 0x65636E6174736E69;
      }

      if (v53)
      {
        v111 = 0xE90000000000006ELL;
      }

      else
      {
        v111 = 0xE800000000000000;
      }

      v362 = v111;
      v358 = v108;
      if (v107 == v110 && v108 == v111)
      {
        v112 = v24;
        v113 = v24;
        v114 = v374;
        v115 = v366;
        sub_1D618ECBC(v112, v374, v105, v366, 1);
        v116 = v373;
        v117 = v105;
        v118 = v369;
        v119 = v53;
        v120 = v371;
        v121 = v115;
        v122 = v114;
        v24 = v113;
        sub_1D618ECBC(v373, v369, v119, v371, 1);
        sub_1D618ECBC(v116, v118, v109, v120, 1);
        sub_1D618ECBC(v113, v122, v117, v121, 1);
        v28 = v118;

        sub_1D5E32940(v24, v122, v117, v121, 1);
        sub_1D5E32940(v116, v118, v109, v120, 1);
        sub_1D5E32940(v116, v118, v109, v120, 1);
        sub_1D5E32940(v24, v122, v117, v121, 1);
      }

      else
      {
        LODWORD(v357) = sub_1D72646CC();
        v237 = v24;
        v238 = v24;
        v239 = v374;
        v240 = v366;
        sub_1D618ECBC(v237, v374, v105, v366, 1);
        v116 = v373;
        v241 = v105;
        v242 = v369;
        v243 = v53;
        v244 = v371;
        v121 = v240;
        v245 = v239;
        v24 = v238;
        sub_1D618ECBC(v373, v369, v243, v371, 1);
        sub_1D618ECBC(v116, v242, v109, v244, 1);
        sub_1D618ECBC(v238, v245, v241, v121, 1);
        v28 = v242;

        sub_1D5E32940(v24, v245, v241, v121, 1);
        sub_1D5E32940(v116, v242, v109, v244, 1);
        sub_1D5E32940(v116, v242, v109, v244, 1);
        sub_1D5E32940(v24, v245, v241, v121, 1);
        if ((v357 & 1) == 0)
        {
          v343 = v371;
          sub_1D5E32940(v116, v242, v109, v371, 1);
          sub_1D5E32940(v24, v374, v370, v121, 1);
          sub_1D66AD7C0(v383, &qword_1EDF2A868);
          v344 = v343;
          v190 = v121;
          v189 = v372;
          sub_1D60CF6F4(v377, v375, v116, v242, v109, v344, v372);
          goto LABEL_146;
        }
      }

      v246 = v371;
      sub_1D5E32940(v116, v28, v109, v371, 1);
      sub_1D5E32940(v24, v374, v370, v121, 1);
      sub_1D66AD7C0(v383, &qword_1EDF2A868);
      v247 = v246;
      v190 = v121;
      v189 = v372;
      sub_1D60CF6F4(v377, v375, v116, v28, v109, v247, v372);
    }

    else
    {
      v104 = v366;
      v24 = v367;
      v105 = v370;
      if (v51)
      {
LABEL_152:
        v189 = v51;
        v331 = v373;
        v332 = v104;
        v333 = v368;
        sub_1D618ECBC(v373, v28, v376, v58, (v368 & 1) == 0);
        v334 = v374;
        sub_1D618ECBC(v24, v374, v105, v332, v333 & 1);
        sub_1D5E32940(v24, v334, v105, v332, v333 & 1);
        v335 = (v333 & 1) == 0;
        v336 = v332;
        v337 = v376;
        sub_1D5E32940(v331, v28, v376, v58, v335);
        sub_1D66AD7C0(v383, &qword_1EDF2A868);
        v338 = v337;
        v190 = v336;
        sub_1D60CF6F4(v377, v375, v331, v28, v338, v58, v189);
        goto LABEL_146;
      }

      v181 = *(v367 + 32);
      v381[0] = *(v367 + 16);
      v381[1] = v181;
      v382[0] = *(v367 + 48);
      *(v382 + 15) = *(v367 + 63);
      v182 = v373;
      v183 = *(v373 + 32);
      v379[0] = *(v373 + 16);
      v379[1] = v183;
      v380[0] = *(v373 + 48);
      *(v380 + 15) = *(v373 + 63);
      sub_1D618ECBC(v373, v28, v53, v58, 0);
      v184 = v374;
      sub_1D618ECBC(v24, v374, v105, v104, 0);
      sub_1D618ECBC(v24, v184, v105, v104, 0);
      sub_1D618ECBC(v182, v28, v53, v58, 0);
      v185 = v182;
      v186 = v53;
      sub_1D618ECBC(v185, v28, v53, v58, 0);
      sub_1D618ECBC(v24, v184, v105, v104, 0);
      if ((static FormatCommandBinding.== infix(_:_:)(v381, v379) & 1) == 0 || (sub_1D635A604(v374, v28) & 1) == 0)
      {
        v339 = v374;
        sub_1D5E32940(v24, v374, v105, v104, 0);
        v340 = v373;
        sub_1D5E32940(v373, v28, v53, v58, 0);
        sub_1D5E32940(v340, v28, v53, v58, 0);
        sub_1D5E32940(v24, v339, v105, v104, 0);
        sub_1D5E32940(v340, v28, v53, v58, 0);
        sub_1D5E32940(v24, v339, v105, v104, 0);
        sub_1D66AD7C0(v383, &qword_1EDF2A868);
        v189 = v372;
        sub_1D60CF6F4(v377, v375, v340, v28, v53, v58, v372);
        v190 = v104;
        goto LABEL_146;
      }

      if (v105 == v53 && v104 == v58)
      {
        v187 = v374;
        sub_1D5E32940(v24, v374, v105, v104, 0);
        v188 = v373;
        sub_1D5E32940(v373, v28, v105, v104, 0);
        sub_1D5E32940(v188, v28, v105, v104, 0);
        sub_1D5E32940(v24, v187, v105, v104, 0);
        sub_1D5E32940(v188, v28, v105, v104, 0);
        sub_1D5E32940(v24, v187, v105, v104, 0);
        sub_1D66AD7C0(v383, &qword_1EDF2A868);
        v189 = v372;
        sub_1D60CF6F4(v377, v375, v188, v28, v105, v104, v372);
        v190 = v104;
      }

      else
      {
        v248 = sub_1D72646CC();
        v249 = v105;
        v250 = v104;
        v251 = v372;
        v252 = v373;
        v253 = v374;
        LODWORD(v362) = v248;
        sub_1D5E32940(v24, v374, v249, v250, 0);
        sub_1D5E32940(v252, v28, v186, v58, 0);
        sub_1D5E32940(v252, v28, v186, v58, 0);
        sub_1D5E32940(v24, v253, v249, v250, 0);
        sub_1D5E32940(v252, v28, v186, v58, 0);
        v254 = v249;
        v190 = v250;
        sub_1D5E32940(v24, v253, v254, v250, 0);
        sub_1D66AD7C0(v383, &qword_1EDF2A868);
        v189 = v251;
        sub_1D60CF6F4(v377, v375, v252, v28, v186, v58, v251);
        if ((v362 & 1) == 0)
        {
          goto LABEL_146;
        }
      }
    }

    v255 = v378;
    v256 = v365;
    v257 = v374;
    v258 = v370;
    v259 = v190;
    v260 = v190;
    v261 = v368;
    sub_1D60CF6F4(v378, v365, v24, v374, v370, v259, v368);
    sub_1D60CF6F4(v377, v375, v373, v28, v376, v371, v189);
    v174 = v255;
    v175 = v256;
    v176 = v24;
    v177 = v257;
    v178 = v258;
    v179 = v260;
    v180 = v261;
    goto LABEL_134;
  }

  if (v365 == v375)
  {
    v38 = v30;
    v39 = v365;
    sub_1D618EC0C(v25, v365, v373, v369, v33, v29, v38);
    v40 = v378;
    v41 = v34;
    v42 = v24;
    v43 = v370;
    v44 = v24;
    v45 = v37;
    v46 = v374;
    v47 = v366;
    v48 = v368;
    sub_1D618EC0C(v378, v41, v42, v374, v370, v366, v368);
    sub_1D618EC0C(v40, v39, v44, v46, v43, v47, v48);
    v49 = v45;
    v50 = v371;
    v51 = v372;
    sub_1D618EC0C(v377, v39, v49, v28, v376, v371, v372);
    sub_1D618EC0C(v40, v39, v44, v46, v43, v47, v368);
    v53 = v376;
    v52 = v377;
    v54 = v39;
    v55 = v373;
    v56 = v28;
    v57 = v376;
    v58 = v50;
    v59 = v50;
    goto LABEL_35;
  }

  v346 = v375 + 32;
  v347 = v365 + 32;
  v348 = v35;
  v191 = v29;
  v192 = v24;
  v193 = v374;
  v194 = v25;
  sub_1D618EC0C(v25, v375, v373, v369, v33, v191, v30);
  v195 = v378;
  v196 = v370;
  v197 = v366;
  v198 = v368;
  sub_1D618EC0C(v378, v34, v192, v193, v370, v366, v368);
  sub_1D618EC0C(v195, v34, v192, v193, v196, v197, v198);
  v199 = v194;
  v200 = v371;
  sub_1D618EC0C(v199, v375, v373, v28, v376, v371, v372);
  v201 = v192;
  v53 = v376;
  sub_1D618EC0C(v195, v34, v201, v193, v196, v197, v198);
  v51 = v372;
  v58 = v200;
  sub_1D618EC0C(v377, v375, v373, v28, v53, v200, v372);
  sub_1D62B7D1C(&v389, v381);
  result = sub_1D62B7D1C(&v395, v381);
  v203 = v348;
  v204 = 0;
  while (1)
  {
    if (v204 == v203)
    {
      goto LABEL_159;
    }

    v205 = (v347 + 40 * v204);
    v206 = *v205;
    v207 = v205[1];
    v362 = v205[2];
    v208 = v205[3];
    v355 = v205[4];
    v349 = v204;
    v209 = (v346 + 40 * v204);
    v210 = *v209;
    v211 = v209[1];
    v212 = v209[2];
    v350 = v209[3];
    v351 = v208;
    v357 = v209[4];
    v358 = v207;
    v213 = v206 == v210 && v207 == v211;
    v24 = v367;
    if (!v213 && (sub_1D72646CC() & 1) == 0)
    {
      sub_1D66AD7C0(v383, &qword_1EDF2A868);
      v262 = v377;
      v263 = v375;
      v264 = v373;
      v28 = v369;
      v265 = v369;
      v266 = v53;
      v267 = v58;
      v268 = v51;
      v189 = v51;
      goto LABEL_139;
    }

    v214 = v362;
    v353 = v211;
    if (v362 != v212)
    {
      break;
    }

    v224 = v355;

LABEL_124:
    if (v351 == v350 && v224 == v357)
    {

      v235 = v372;
      v53 = v376;
    }

    else
    {
      v236 = sub_1D72646CC();

      v235 = v372;
      v53 = v376;
      if ((v236 & 1) == 0)
      {
        sub_1D66AD7C0(v383, &qword_1EDF2A868);
        v28 = v369;
        v189 = v235;
        sub_1D60CF6F4(v377, v375, v373, v369, v53, v371, v235);
        v190 = v366;
        v24 = v367;
        goto LABEL_146;
      }
    }

    v203 = v348;
    v204 = v349 + 1;
    v28 = v369;
    v58 = v371;
    v51 = v235;
    if (v349 + 1 == v348)
    {
      goto LABEL_36;
    }
  }

  v189 = v51;
  if (*(v362 + 16) != *(v212 + 16))
  {
LABEL_138:
    sub_1D66AD7C0(v383, &qword_1EDF2A868);
    v262 = v377;
    v263 = v375;
    v264 = v373;
    v28 = v369;
    v265 = v369;
    v266 = v53;
    v267 = v58;
    v268 = v189;
LABEL_139:
    sub_1D60CF6F4(v262, v263, v264, v265, v266, v267, v268);
    v190 = v366;
    goto LABEL_146;
  }

  v215 = v362 + 56;
  v216 = 1 << *(v362 + 32);
  if (v216 < 64)
  {
    v217 = ~(-1 << v216);
  }

  else
  {
    v217 = -1;
  }

  v218 = v217 & *(v362 + 56);
  v219 = (v216 + 63) >> 6;
  v220 = v212 + 56;

  v221 = 0;
  while (v218)
  {
    v222 = __clz(__rbit64(v218));
    v352 = (v218 - 1) & v218;
LABEL_114:
    v226 = (*(v214 + 48) + 16 * (v222 | (v221 << 6)));
    v228 = *v226;
    v227 = v226[1];
    sub_1D7264A0C();

    sub_1D72621EC();
    v229 = sub_1D7264A5C();
    v230 = -1 << *(v212 + 32);
    v231 = v229 & ~v230;
    if (((*(v220 + ((v231 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v231) & 1) == 0)
    {
LABEL_137:

      v189 = v372;
      v58 = v371;
      v24 = v367;
      v53 = v376;
      goto LABEL_138;
    }

    v232 = ~v230;
    while (1)
    {
      v233 = (*(v212 + 48) + 16 * v231);
      v234 = *v233 == v228 && v233[1] == v227;
      if (v234 || (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v231 = (v231 + 1) & v232;
      if (((*(v220 + ((v231 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v231) & 1) == 0)
      {
        goto LABEL_137;
      }
    }

    v214 = v362;
    v218 = v352;
  }

  v223 = v221;
  v224 = v355;
  while (1)
  {
    v221 = v223 + 1;
    if (__OFADD__(v223, 1))
    {
      break;
    }

    if (v221 >= v219)
    {
      goto LABEL_124;
    }

    v225 = *(v215 + 8 * v221);
    ++v223;
    if (v225)
    {
      v222 = __clz(__rbit64(v225));
      v352 = (v225 - 1) & v225;
      goto LABEL_114;
    }
  }

  __break(1u);
  __break(1u);
LABEL_159:
  __break(1u);
  return result;
}

uint64_t sub_1D634B03C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || result == a2)
    {
      return 1;
    }

    v3 = 0;
    v45 = a2 + 32;
    v46 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_35;
      }

      v4 = (v46 + 40 * v3);
      v5 = *v4;
      v6 = v4[1];
      v8 = v4[2];
      v7 = v4[3];
      v9 = v4[4];
      v10 = (v45 + 40 * v3);
      v12 = v10[2];
      v11 = v10[3];
      v13 = v10[4];
      if (v5 != *v10 || v6 != v10[1])
      {
        v47 = v3;
        v15 = v2;
        v16 = v7;
        v17 = sub_1D72646CC();
        v7 = v16;
        v2 = v15;
        v3 = v47;
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      v18 = v8 == v12 && v7 == v11;
      if (!v18 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }

      v19 = *(v9 + 16);
      if (v19 != *(v13 + 16))
      {
        return 0;
      }

      if (v19 && v9 != v13)
      {
        break;
      }

LABEL_7:
      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    if (*(v9 + 16))
    {
      v21 = 0;
      v22 = v19 - 1;
      v23 = 32;
      while (1)
      {
        v24 = *(v9 + v23);
        v25 = *(v9 + v23 + 32);
        v63[1] = *(v9 + v23 + 16);
        v63[2] = v25;
        v63[0] = v24;
        v26 = *(v9 + v23 + 48);
        v27 = *(v9 + v23 + 64);
        v28 = *(v9 + v23 + 80);
        v64 = *(v9 + v23 + 96);
        v63[4] = v27;
        v63[5] = v28;
        v63[3] = v26;
        v29 = *(v9 + v23 + 16);
        v56 = *(v9 + v23);
        v57 = v29;
        v30 = *(v9 + v23 + 32);
        v31 = *(v9 + v23 + 48);
        v32 = *(v9 + v23 + 64);
        v33 = *(v9 + v23 + 80);
        v62 = *(v9 + v23 + 96);
        v60 = v32;
        v61 = v33;
        v58 = v30;
        v59 = v31;
        if (v21 >= *(v13 + 16))
        {
          break;
        }

        v34 = *(v13 + v23);
        v35 = *(v13 + v23 + 32);
        v65[1] = *(v13 + v23 + 16);
        v65[2] = v35;
        v65[0] = v34;
        v36 = *(v13 + v23 + 48);
        v37 = *(v13 + v23 + 64);
        v38 = *(v13 + v23 + 80);
        v66 = *(v13 + v23 + 96);
        v65[4] = v37;
        v65[5] = v38;
        v65[3] = v36;
        v39 = *(v13 + v23 + 16);
        v49 = *(v13 + v23);
        v50 = v39;
        v40 = *(v13 + v23 + 32);
        v41 = *(v13 + v23 + 48);
        v42 = *(v13 + v23 + 64);
        v43 = *(v13 + v23 + 80);
        v55 = *(v13 + v23 + 96);
        v53 = v42;
        v54 = v43;
        v51 = v40;
        v52 = v41;
        sub_1D5C5C4CC(v63, v48);
        sub_1D5C5C4CC(v65, v48);
        v44 = static FormatSourceMapNode.== infix(_:_:)(&v56, &v49);
        v67[4] = v53;
        v67[5] = v54;
        v68 = v55;
        v67[0] = v49;
        v67[1] = v50;
        v67[2] = v51;
        v67[3] = v52;
        sub_1D5C5C540(v67);
        v69[4] = v60;
        v69[5] = v61;
        v70 = v62;
        v69[0] = v56;
        v69[1] = v57;
        v69[2] = v58;
        v69[3] = v59;
        result = sub_1D5C5C540(v69);
        if ((v44 & 1) == 0)
        {
          goto LABEL_31;
        }

        if (v22 == v21)
        {

          goto LABEL_7;
        }

        v23 += 104;
        if (++v21 >= *(v9 + 16))
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
      return result;
    }

LABEL_30:
    __break(1u);
LABEL_31:
  }

  return 0;
}

uint64_t sub_1D634B39C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    v12 = 0;
    return v12 & 1;
  }

  if (!v2 || a1 == a2)
  {
    v12 = 1;
    return v12 & 1;
  }

  v3 = 0;
  while (1)
  {
    v5 = *(a1 + v3 + 32);
    v4 = *(a1 + v3 + 40);
    v6 = *(a1 + v3 + 56);
    v8 = *(a2 + v3 + 32);
    v7 = *(a2 + v3 + 40);
    v9 = *(a2 + v3 + 48);
    v24 = *(a2 + v3 + 56);
    v23 = *(a1 + v3 + 48);
    if (v23)
    {
      break;
    }

    if (*(a2 + v3 + 48))
    {
      sub_1D5D03180(v8, v7, v9);
      sub_1D5D03180(v5, v4, 0);
      v14 = v5;
      v15 = v4;
      v16 = 0;
LABEL_30:
      sub_1D5D07BA8(v14, v15, v16);
      sub_1D5D07BA8(v8, v7, v9);
      v12 = 0;
      return v12 & 1;
    }

    if (v5 == v8 && v4 == v7)
    {
      sub_1D5D03180(v5, v4, 0);
      v10 = v6;

      sub_1D5D03180(v5, v4, 0);

      sub_1D5D03180(v5, v4, 0);
      sub_1D5D03180(v5, v4, 0);
      sub_1D5D07BA8(v5, v4, 0);
      sub_1D5D07BA8(v5, v4, 0);
    }

    else
    {
      v20 = sub_1D72646CC();
      sub_1D5D03180(v5, v4, 0);
      v10 = v6;

      sub_1D5D03180(v8, v7, 0);

      sub_1D5D03180(v8, v7, 0);
      sub_1D5D03180(v5, v4, 0);
      sub_1D5D07BA8(v5, v4, 0);
      sub_1D5D07BA8(v8, v7, 0);
      if ((v20 & 1) == 0)
      {
        sub_1D5D07BA8(v8, v7, 0);

        v17 = v5;
        v18 = v4;
        v19 = 0;
        goto LABEL_31;
      }
    }

LABEL_21:
    v12 = sub_1D6EEB7F0(v10, v24);
    sub_1D5D07BA8(v8, v7, v9);

    sub_1D5D07BA8(v5, v4, v23);

    if (v12)
    {
      v3 += 32;
      if (--v2)
      {
        continue;
      }
    }

    return v12 & 1;
  }

  if (*(a1 + v3 + 48) == 1)
  {
    if (v9 != 1)
    {
      sub_1D5D03180(v8, v7, v9);
      v14 = v5;
      v15 = v4;
      v16 = 1;
      goto LABEL_30;
    }

    sub_1D5D03180(v5, v4, 1);
    v10 = v6;

    sub_1D5D03180(v8, v7, 1);

    sub_1D5D07BA8(v5, v4, 1);
    sub_1D5D07BA8(v8, v7, 1);
    if ((v8 ^ v5))
    {
      sub_1D5D07BA8(v8, v7, 1);

      v17 = v5;
      v18 = v4;
      v19 = 1;
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  if (v9 != 2)
  {
    sub_1D5D03180(v8, v7, v9);
    v14 = v5;
    v15 = v4;
    v16 = 2;
    goto LABEL_30;
  }

  sub_1D5D03180(v5, v4, 2);
  v10 = v6;

  sub_1D5D03180(v8, v7, 2);

  sub_1D5D07BA8(v5, v4, 2);
  sub_1D5D07BA8(v8, v7, 2);
  if (v5 == v8)
  {
    goto LABEL_21;
  }

  sub_1D5D07BA8(v8, v7, 2);

  v17 = v5;
  v18 = v4;
  v19 = 2;
LABEL_31:
  sub_1D5D07BA8(v17, v18, v19);

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_1D634B7E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 40);
    v4 = (a1 + 40);
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *v3;
      v11 = *(v3 - 1);
      v12 = v6;

      swift_retain_n();
      swift_retain_n();

      v8 = static FormatExpression.== infix(_:_:)(&v12, &v11);

      if ((v8 & 1) == 0)
      {
        break;
      }

      v9 = sub_1D6EEB7F0(v5, v7);

      if (v9)
      {
        v3 += 2;
        v4 += 2;
        if (--v2)
        {
          continue;
        }
      }

      return v9 & 1;
    }

    goto LABEL_11;
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t sub_1D634B928(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      v7 = *(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1);
      if (!v7 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }

      if (!v5)
      {
        if (v6)
        {
          sub_1D5D0A57C(v6);
          v23 = 0;
          goto LABEL_47;
        }

        goto LABEL_6;
      }

      if (v5 == 1)
      {
        if (v6 != 1)
        {
          sub_1D5D0A57C(v6);
          v23 = 1;
LABEL_47:
          sub_1D5D0A58C(v23);
          v5 = v6;
          goto LABEL_61;
        }

LABEL_6:
        sub_1D5D0A58C(v5);
        sub_1D5D0A58C(v5);
        goto LABEL_7;
      }

      if (v6 < 2)
      {
        sub_1D5D0A57C(v6);
        sub_1D5D0A57C(v5);
        v23 = v5;
        goto LABEL_47;
      }

      v8 = *(v5 + 16);
      v47 = *(v5 + 24);
      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v8)
      {
        if (v8 != 1)
        {
          if (v9 < 2)
          {
            sub_1D5D0A57C(v6);

            sub_1D5D0A57C(v5);

            sub_1D5D0A57C(v6);
            sub_1D5D0A57C(v5);
            sub_1D5D0A57C(v9);
            sub_1D5D0A57C(v8);
            v24 = v8;
            goto LABEL_50;
          }

          v11 = *(v8 + 16);
          v44 = *(v8 + 24);
          v45 = *(v6 + 24);
          v12 = *(v9 + 24);
          v46 = *(v9 + 16);
          if (!v11)
          {
            if (v46)
            {
              sub_1D5D0A57C(v6);

              sub_1D5D0A57C(v5);

              sub_1D5D0A57C(v6);
              sub_1D5D0A57C(v5);
              v42 = v9;
              sub_1D5D0A57C(v9);
              v43 = v8;
              sub_1D5D0A57C(v8);
              sub_1D5D0A57C(v46);
              v25 = 0;
              goto LABEL_58;
            }

            goto LABEL_30;
          }

          if (v11 == 1)
          {
            if (v46 != 1)
            {
              sub_1D5D0A57C(v6);

              sub_1D5D0A57C(v5);

              sub_1D5D0A57C(v6);
              sub_1D5D0A57C(v5);
              v42 = v9;
              sub_1D5D0A57C(v9);
              v43 = v8;
              sub_1D5D0A57C(v8);
              sub_1D5D0A57C(v46);
              v25 = 1;
              goto LABEL_58;
            }

LABEL_30:
            v13 = *(v8 + 16);
            sub_1D5D0A57C(v6);

            sub_1D5D0A57C(v5);

            sub_1D5D0A57C(v6);
            sub_1D5D0A57C(v5);
            sub_1D5D0A57C(v9);
            sub_1D5D0A57C(v8);
            sub_1D5D0A58C(v13);
            sub_1D5D0A58C(v13);
            v14 = v9;
LABEL_41:

            v20 = sub_1D634B928(v44, v12);

            sub_1D5D0A58C(v8);
            sub_1D5D0A58C(v14);
            v10 = v45;
            if ((v20 & 1) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_42;
          }

          v42 = *(v6 + 16);
          v43 = *(v5 + 16);
          if (v46 < 2)
          {
            v26 = *(v8 + 16);
            sub_1D5D0A57C(v6);

            sub_1D5D0A57C(v5);

            sub_1D5D0A57C(v6);
            sub_1D5D0A57C(v5);
            sub_1D5D0A57C(v9);
            sub_1D5D0A57C(v8);
            sub_1D5D0A57C(v46);
            sub_1D5D0A57C(v26);
            v25 = v26;
            goto LABEL_58;
          }

          v15 = *(v11 + 16);
          v39 = *(v11 + 24);
          v16 = *(v46 + 16);
          v40 = *(v46 + 24);
          v41 = *(v8 + 16);
          if (v15)
          {
            if (v15 == 1)
            {
              if (v16 != 1)
              {
                v33 = *(v46 + 16);
                sub_1D5D0A57C(v6);

                sub_1D5D0A57C(v5);

                v34 = 1;
LABEL_55:
                v28 = v6;
                v29 = v5;
                v31 = v46;
                v30 = v8;
                v32 = v41;
                v27 = v33;
LABEL_56:
                sub_1D5D0A57C(v28);
                sub_1D5D0A57C(v29);
                sub_1D5D0A57C(v9);
                sub_1D5D0A57C(v30);
                sub_1D5D0A57C(v31);
                sub_1D5D0A57C(v32);
                sub_1D5D0A57C(v27);
                sub_1D5D0A58C(v34);
                sub_1D5D0A58C(v33);
                v25 = v41;
LABEL_58:
                sub_1D5D0A58C(v25);
                sub_1D5D0A58C(v46);
                v14 = v42;
                v8 = v43;
LABEL_59:
                sub_1D5D0A58C(v8);
                sub_1D5D0A58C(v14);
LABEL_60:
                sub_1D5D0A58C(v5);
                sub_1D5D0A58C(v6);

                sub_1D5D0A58C(v6);

LABEL_61:
                sub_1D5D0A58C(v5);
                return 0;
              }

LABEL_37:
              sub_1D5D0A57C(v6);

              sub_1D5D0A57C(v5);

              sub_1D5D0A57C(v6);
              sub_1D5D0A57C(v5);
              sub_1D5D0A57C(v9);
              sub_1D5D0A57C(v8);
              sub_1D5D0A57C(v46);
              v17 = v41;
              sub_1D5D0A57C(v41);
              sub_1D5D0A58C(v15);
              sub_1D5D0A58C(v15);
            }

            else
            {
              if (v16 < 2)
              {
                v33 = *(v46 + 16);
                v27 = *(v11 + 16);
                sub_1D5D0A57C(v6);

                sub_1D5D0A57C(v5);

                sub_1D5D0A57C(v6);
                v28 = v5;
                v29 = v9;
                v9 = v43;
                v30 = v46;
                v31 = v41;
                v32 = v33;
                v34 = v27;
                goto LABEL_56;
              }

              v37 = *(v15 + 16);
              v38 = *(v15 + 24);
              v18 = *(v16 + 16);
              v35 = *(v46 + 16);
              v36 = *(v16 + 24);
              sub_1D5D0A57C(v6);

              sub_1D5D0A57C(v5);

              sub_1D5D0A57C(v6);
              sub_1D5D0A57C(v5);
              sub_1D5D0A57C(v9);
              sub_1D5D0A57C(v8);
              sub_1D5D0A57C(v46);
              v17 = v41;
              sub_1D5D0A57C(v41);
              sub_1D5D0A57C(v35);
              sub_1D5D0A57C(v15);
              sub_1D5D0A57C(v18);

              LOBYTE(v38) = sub_1D6365F00(v37, v38, v18, v36);
              sub_1D5D0A58C(v18);

              sub_1D5D0A58C(v15);
              sub_1D5D0A58C(v35);
              if ((v38 & 1) == 0)
              {
                v25 = v41;
                goto LABEL_58;
              }
            }

            v19 = sub_1D634B928(v39, v40);

            sub_1D5D0A58C(v17);
            sub_1D5D0A58C(v46);
            v14 = v42;
            v8 = v43;
            if ((v19 & 1) == 0)
            {
              goto LABEL_59;
            }

            goto LABEL_41;
          }

          if (v16)
          {
            v33 = *(v46 + 16);
            sub_1D5D0A57C(v6);

            sub_1D5D0A57C(v5);

            v34 = 0;
            goto LABEL_55;
          }

          goto LABEL_37;
        }

        if (v9 != 1)
        {
          sub_1D5D0A57C(v6);

          sub_1D5D0A57C(v5);

          sub_1D5D0A57C(v6);
          sub_1D5D0A57C(v5);
          sub_1D5D0A57C(v9);
          v24 = 1;
LABEL_50:
          sub_1D5D0A58C(v24);
          sub_1D5D0A58C(v9);
          goto LABEL_60;
        }
      }

      else if (v9)
      {
        sub_1D5D0A57C(v6);

        sub_1D5D0A57C(v5);

        sub_1D5D0A57C(v6);
        sub_1D5D0A57C(v5);
        sub_1D5D0A57C(v9);
        v24 = 0;
        goto LABEL_50;
      }

      sub_1D5D0A57C(v6);

      sub_1D5D0A57C(v5);

      sub_1D5D0A57C(v6);
      sub_1D5D0A57C(v5);
      sub_1D5D0A58C(v8);
      sub_1D5D0A58C(v8);
LABEL_42:

      v21 = sub_1D634B928(v47, v10);

      sub_1D5D0A58C(v5);
      sub_1D5D0A58C(v6);

      sub_1D5D0A58C(v6);

      sub_1D5D0A58C(v5);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

LABEL_7:
      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void sub_1D634C12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v4, v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  MEMORY[0x1EEE9AC00](&v102[-v10], v11);
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16) && v17 && a1 != a2)
  {
    v113 = &v102[-v14];
    v114 = v12;
    v106 = v16;
    v107 = v15;
    v115 = (v13 + 8);
    v116 = (v13 + 16);
    v18 = (a1 + 48);
    v19 = (a2 + 48);
    v119 = v4;
    do
    {
      v30 = *v18;
      v31 = *v19;
      v32 = *(v18 - 2) == *(v19 - 2) && *(v18 - 1) == *(v19 - 1);
      if (!v32 && (sub_1D72646CC() & 1) == 0)
      {
        return;
      }

      if (v30 >> 62)
      {
        if (v30 >> 62 == 1)
        {
          if (v31 >> 62 != 1)
          {
            return;
          }

          v33 = swift_projectBox();
          v34 = swift_projectBox();
          v120 = v18;
          v35 = *v116;
          v118 = v19;
          v36 = v113;
          v35(v113, v33, v4);
          v37 = v114;
          v35(v114, v34, v4);

          LOBYTE(v33) = sub_1D72584CC();
          v38 = *v115;
          (*v115)(v37, v4);
          v39 = v36;
          v19 = v118;
          v38(v39, v4);
          v18 = v120;

          if ((v33 & 1) == 0)
          {
            return;
          }
        }

        else
        {
          if (v31 >> 62 != 2)
          {
            return;
          }

          v54 = v30 & 0x3FFFFFFFFFFFFFFFLL;
          v55 = *(v54 + 16);
          v56 = v31 & 0x3FFFFFFFFFFFFFFFLL;
          v58 = *(v56 + 16);
          v57 = *(v56 + 24);
          v59 = v55;
          v117 = *(v54 + 24);
          v118 = v57;
          if (v55 >> 62)
          {
            if (v55 >> 62 == 1)
            {
              if (v58 >> 62 != 1)
              {
                goto LABEL_55;
              }

              v110 = v55;
              v60 = swift_projectBox();
              v61 = swift_projectBox();
              v120 = v18;
              v62 = *v116;
              v112 = v54;
              v63 = v106;
              v62(v106, v60, v4);
              v64 = v107;
              v62(v107, v61, v119);

              swift_retain_n();

              LODWORD(v111) = sub_1D72584CC();
              v65 = *v115;
              v4 = v119;
              (*v115)(v64, v119);
              v27 = v118;
              v65(v63, v4);
              v18 = v120;

              if ((v111 & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            else
            {
              if (v58 >> 62 != 2)
              {
LABEL_55:

                goto LABEL_65;
              }

              v78 = *((v55 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              v79 = *((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              v80 = *((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              v123 = *((v55 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              v124 = v78;
              v121 = v79;
              v122 = v80;
              v112 = v79;

              v120 = (v58 & 0x3FFFFFFFFFFFFFFFLL);
              swift_retain_n();

              if ((static FormatWebEmbedNodeContent.== infix(_:_:)(&v123, &v121) & 1) == 0)
              {

                goto LABEL_65;
              }

              v81 = v124;
              v82 = v122;

              LODWORD(v111) = sub_1D634C12C(v81, v82);

              if ((v111 & 1) == 0)
              {
                goto LABEL_33;
              }

              v27 = v118;
              v4 = v119;
            }
          }

          else
          {
            if (v58 >> 62)
            {
              return;
            }

            v68 = *(v55 + 16);
            v67 = *(v55 + 24);
            v111 = *(v55 + 32);
            v112 = v67;
            v69 = *(v55 + 40);
            v70 = *(v58 + 16);
            v71 = *(v58 + 24);
            v72 = *(v58 + 32);
            v73 = *(v58 + 40);
            v105 = v70;
            v120 = v68;
            v108 = v71;
            v109 = v72;
            if (v69)
            {
              if ((v73 & 1) == 0)
              {

LABEL_63:

                swift_retain_n();

                v94 = v105;
                v96 = v108;
                v95 = v109;
                sub_1D62B6164(v105, v108, v109, v69 ^ 1);
                sub_1D62B61A8(v120, v112, v111, v69);
                sub_1D62B61A8(v94, v96, v95, v69 ^ 1);

                goto LABEL_64;
              }

              if (v68 != v70 || v67 != v71)
              {
                v75 = v70;
                v76 = v71;
                v77 = sub_1D72646CC();
                v71 = v76;
                v70 = v75;
                if ((v77 & 1) == 0)
                {
                  v97 = v75;

                  swift_retain_n();

                  v98 = v109;
                  sub_1D62B6164(v97, v76, v109, 1);
                  v99 = v120;
                  v100 = v111;
                  v101 = v112;
                  sub_1D62B6164(v120, v112, v111, 1);
                  sub_1D62B61A8(v99, v101, v100, 1);
                  sub_1D62B61A8(v97, v76, v98, 1);

LABEL_64:

                  goto LABEL_65;
                }
              }

              v20 = v70;
              sub_1D62B6164(v70, v71, v109, 1);
              v104 = v56;
              sub_1D62B6164(v120, v112, v111, 1);
              v110 = v59;

              swift_retain_n();

              v21 = v109;
              sub_1D62B6164(v20, v108, v109, 1);
              v22 = v120;
              v24 = v111;
              v23 = v112;
              sub_1D62B6164(v120, v112, v111, 1);
              v103 = sub_1D6341C50(v24, v21);
              sub_1D62B61A8(v22, v23, v24, 1);
              v25 = v105;
              v26 = v108;
              sub_1D62B61A8(v105, v108, v21, 1);
              sub_1D62B61A8(v25, v26, v21, 1);
              sub_1D62B61A8(v120, v112, v111, 1);

              v27 = v118;
              if ((v103 & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            else
            {
              if (v73)
              {
                goto LABEL_63;
              }

              swift_retain_n();

              v83 = v120;
              sub_1D62B61A8(v120, v112, v111, 0);
              v84 = v105;
              sub_1D62B61A8(v105, v108, v109, 0);

              v85 = v84 ^ v83;
              v27 = v118;
              if (v85)
              {
LABEL_33:

LABEL_65:

                return;
              }
            }
          }

          v28 = v117;

          v29 = sub_1D634C12C(v28, v27);

          swift_bridgeObjectRelease_n();

          if ((v29 & 1) == 0)
          {
            return;
          }
        }
      }

      else
      {
        if (v31 >> 62)
        {
          return;
        }

        v41 = *(v30 + 16);
        v40 = *(v30 + 24);
        v120 = *(v30 + 32);
        v42 = *(v30 + 40);
        v44 = *(v31 + 16);
        v43 = *(v31 + 24);
        v118 = *(v31 + 32);
        if (v42)
        {
          if ((*(v31 + 40) & 1) == 0)
          {

LABEL_57:

            v86 = v118;
            sub_1D62B6164(v44, v43, v118, v42 ^ 1);
            sub_1D62B61A8(v41, v40, v120, v42);
            v87 = v42 ^ 1;
            v88 = v44;
            v89 = v43;
            v90 = v86;
            goto LABEL_58;
          }

          v45 = v41 == v44 && v40 == v43;
          if (!v45 && (sub_1D72646CC() & 1) == 0)
          {

            v91 = v118;
            sub_1D62B6164(v44, v43, v118, 1);
            v92 = v43;
            v93 = v120;
            sub_1D62B6164(v41, v40, v120, 1);
            sub_1D62B61A8(v41, v40, v93, 1);
            v88 = v44;
            v89 = v92;
            v90 = v91;
            v87 = 1;
LABEL_58:
            sub_1D62B61A8(v88, v89, v90, v87);

            goto LABEL_65;
          }

          v46 = v118;
          sub_1D62B6164(v44, v43, v118, 1);
          v47 = v40;
          v110 = v40;
          v48 = v43;
          v112 = v43;
          v49 = v120;
          sub_1D62B6164(v41, v47, v120, 1);

          sub_1D62B6164(v44, v48, v46, 1);
          v50 = v41;
          v111 = v41;
          v51 = v41;
          v52 = v110;
          sub_1D62B6164(v51, v110, v49, 1);
          LODWORD(v117) = sub_1D6341C50(v49, v46);
          sub_1D62B61A8(v50, v52, v49, 1);
          v53 = v112;
          sub_1D62B61A8(v44, v112, v46, 1);
          sub_1D62B61A8(v44, v53, v46, 1);
          sub_1D62B61A8(v111, v52, v49, 1);

          v4 = v119;
          if ((v117 & 1) == 0)
          {
            return;
          }
        }

        else
        {
          if (*(v31 + 40))
          {
            goto LABEL_57;
          }

          sub_1D62B61A8(v41, v40, v120, 0);
          sub_1D62B61A8(v44, v43, v118, 0);

          v66 = v44 ^ v41;
          v4 = v119;
          if (v66)
          {
            return;
          }
        }
      }

      v18 += 3;
      v19 += 3;
      --v17;
    }

    while (v17);
  }
}

uint64_t sub_1D634CD10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    while (1)
    {
      v6 = (v4 + 80 * v3);
      v7 = v6[1];
      v34 = *v6;
      v35 = v7;
      v8 = v6[3];
      v36 = v6[2];
      *v37 = v8;
      v9 = v6[4];
      v10 = (v5 + 80 * v3);
      v11 = v10[3];
      v40 = v10[2];
      *v41 = v11;
      *&v41[16] = v10[4];
      v12 = *v10;
      v39 = v10[1];
      *&v37[16] = v9;
      v38 = v12;
      if (v34 != v12 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }

      v27 = v35;
      v28 = v36;
      v29[0] = *v37;
      *(v29 + 15) = *&v37[15];
      v24 = v39;
      v25 = v40;
      v26[0] = *v41;
      *(v26 + 15) = *&v41[15];
      sub_1D5CF5D60(&v34, v23);
      sub_1D5CF5D60(&v38, v23);
      sub_1D5CF5DBC(&v35, v23);
      sub_1D5CF5DBC(&v39, v23);
      v13 = static FormatOptionsNodeStatementValue.== infix(_:_:)(&v27, &v24);
      v30[0] = v24;
      v30[1] = v25;
      v31[0] = v26[0];
      *(v31 + 15) = *(v26 + 15);
      sub_1D5CF603C(v30);
      v32[0] = v27;
      v32[1] = v28;
      v33[0] = v29[0];
      *(v33 + 15) = *(v29 + 15);
      sub_1D5CF603C(v32);
      if ((v13 & 1) == 0 || (v14 = *(*&v37[24] + 16), v14 != *(*&v41[24] + 16)))
      {
LABEL_25:
        sub_1D5CF5E18(&v38);
        sub_1D5CF5E18(&v34);
        return 0;
      }

      if (v14 && *&v37[24] != *&v41[24])
      {
        v15 = (*&v37[24] + 32);
        v16 = (*&v41[24] + 32);
        do
        {
          v19 = *v15++;
          v18 = v19;
          v20 = *v16;
          v21 = v19 >> 6;
          if (v19 >> 6)
          {
            if (v21 == 1)
            {
              if (v20 & 0xC0) != 0x40 || ((v20 ^ v18))
              {
                goto LABEL_25;
              }
            }

            else if ((v20 & 0xC0) != 0x80)
            {
              goto LABEL_25;
            }
          }

          else if (v20 > 0x3F || v18 != v20)
          {
            goto LABEL_25;
          }

          ++v16;
          --v14;
        }

        while (v14);
      }

      ++v3;
      sub_1D5CF5E18(&v38);
      sub_1D5CF5E18(&v34);
      if (v3 == v2)
      {
        return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_1D634CF68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_1D72646CC();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D634D024(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v41 = v2;
  v42 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v31 = *(v5 + 80);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v26 = v31;
    v23 = v28;
    v24 = v8;
    v25 = v30;
    v21 = v27[0];
    v22 = v9;
    v10 = *(v6 + 48);
    v33 = *(v6 + 32);
    v34 = v10;
    v35 = *(v6 + 64);
    v36 = *(v6 + 80);
    v11 = *(v6 + 16);
    v32[0] = *v6;
    v32[1] = v11;
    v20 = v36;
    v16 = v11;
    v17 = v33;
    v18 = v10;
    v19 = v35;
    v15 = v32[0];
    sub_1D66F4374(v27, v14);
    sub_1D66F4374(v32, v14);
    v12 = _s8NewsFeed16FormatShineBlendV2eeoiySbAC_ACtFZ_0(&v21, &v15);
    v37[2] = v17;
    v37[3] = v18;
    v37[4] = v19;
    v38 = v20;
    v37[0] = v15;
    v37[1] = v16;
    sub_1D66F43D0(v37);
    v39[2] = v23;
    v39[3] = v24;
    v39[4] = v25;
    v40 = v26;
    v39[0] = v21;
    v39[1] = v22;
    sub_1D66F43D0(v39);
    if (!v12)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 88;
    v5 += 88;
  }

  return 1;
}

uint64_t sub_1D634D194(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v25 = a2 + 32;
  v26 = result + 32;
  while (v3 != v2)
  {
    v4 = (v26 + 40 * v3);
    result = *v4;
    v5 = v4[1];
    v6 = v4[2];
    v7 = v4[3];
    v8 = v4[4];
    v9 = (v25 + 40 * v3);
    v11 = v9[2];
    v10 = v9[3];
    v12 = v9[4];
    if (result != *v9 || v5 != v9[1])
    {
      result = sub_1D72646CC();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v7)
    {
      if (!v10)
      {
        return 0;
      }

      if (v6 != v11 || v7 != v10)
      {
        result = sub_1D72646CC();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v10)
    {
      return 0;
    }

    v15 = *(v8 + 16);
    if (v15 != *(v12 + 16))
    {
      return 0;
    }

    if (v15)
    {
      v16 = v8 == v12;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v17 = (v8 + 56);
      v18 = (v12 + 56);
      while (v15)
      {
        result = *(v17 - 3);
        v19 = *(v17 - 1);
        v20 = *v17;
        v21 = *(v18 - 1);
        v22 = *v18;
        if (result != *(v18 - 3) || *(v17 - 2) != *(v18 - 2))
        {
          result = sub_1D72646CC();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        if (v19 != v21 || v20 != v22)
        {
          result = sub_1D72646CC();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v17 += 4;
        v18 += 4;
        if (!--v15)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D634D390(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 40)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 2);
      v10 = *(v3 - 1);
      v11 = *v3;
      v12 = *(i - 4) == *(v3 - 4) && *(i - 3) == *(v3 - 3);
      if (!v12 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      if (v8)
      {
        if ((v11 & 1) == 0)
        {
          goto LABEL_21;
        }

        if (v6 == v9 && v7 == v10)
        {
          sub_1D5C75A4C(v6, v7, 1);
          sub_1D5C75A4C(v6, v7, 1);
          sub_1D5D2F2C8(v6, v7, 1);
          sub_1D5D2F2C8(v6, v7, 1);
        }

        else
        {
          v5 = sub_1D72646CC();
          sub_1D5C75A4C(v9, v10, 1);
          sub_1D5C75A4C(v6, v7, 1);
          sub_1D5D2F2C8(v6, v7, 1);
          sub_1D5D2F2C8(v9, v10, 1);
          if ((v5 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:

          sub_1D5D2F2C8(v6, v7, v8);
          sub_1D5D2F2C8(v9, v10, v8 ^ 1);
          return 0;
        }

        sub_1D5D2F2C8(v6, v7, 0);
        sub_1D5D2F2C8(v9, v10, 0);
        if ((v9 ^ v6))
        {
          return 0;
        }
      }

      v3 += 40;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D634D564(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  v23 = result + 32;
  v24 = *(result + 16);
  v22 = a2 + 32;
  while (v3 != v2)
  {
    v6 = (v4 + 24 * v3);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = (v5 + 24 * v3);
    v11 = v10[2];
    v12 = v7 == *v10 && v8 == v10[1];
    if (!v12 && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }

    v13 = *(v9 + 16);
    if (v13 != *(v11 + 16))
    {
      return 0;
    }

    if (v13)
    {
      v14 = v9 == v11;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      v25 = v3;

      v15 = 0;
      v16 = 0;
      while (v16 < *(v9 + 16))
      {
        if (v16 >= *(v11 + 16))
        {
          goto LABEL_37;
        }

        v17 = *(v9 + v15 + 32);
        v18 = *(v9 + v15 + 40);
        v19 = *(v11 + v15 + 32);
        v20 = *(v11 + v15 + 40);
        if (v18)
        {
          if ((*(v11 + v15 + 40) & 1) == 0)
          {
            sub_1D62B72CC(*(v9 + v15 + 32), 1);
            sub_1D62B72CC(v19, 0);
            sub_1D62B72CC(v17, 1);
            sub_1D62B72CC(v19, 0);
            goto LABEL_32;
          }

          sub_1D62B72CC(*(v9 + v15 + 32), 1);
          sub_1D62B72CC(v19, 1);
          if ((0x29282F2A2D2BuLL >> (8 * v17)) != (0x29282F2A2D2BuLL >> (8 * v19)))
          {
            goto LABEL_33;
          }
        }

        else
        {
          v27 = *(v9 + v15 + 32);
          v28 = 0;
          if (v20)
          {
            sub_1D62B72CC(v17, 0);
            sub_1D62B72CC(v19, 1);
            sub_1D62B72CC(v17, 0);
            sub_1D62B72CC(v19, 1);
            sub_1D62B72CC(v17, 0);

LABEL_32:
            sub_1D62B72BC(v17, v18);
            sub_1D62B72BC(v19, v18 ^ 1);
            sub_1D62B72BC(v19, v18 ^ 1);
LABEL_33:
            sub_1D62B72BC(v17, v18);

            return 0;
          }

          v26 = v19;
          sub_1D62B72CC(v17, 0);
          sub_1D62B72CC(v19, 0);
          sub_1D62B72CC(v17, 0);
          sub_1D62B72CC(v19, 0);
          sub_1D62B72CC(v17, 0);
          v21 = static FormatFloat.== infix(_:_:)(&v27, &v26);

          sub_1D62B72BC(v17, 0);
          sub_1D62B72BC(v19, 0);
          if ((v21 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        ++v16;
        result = sub_1D62B72BC(v17, v18);
        v15 += 16;
        if (v13 == v16)
        {

          v2 = v24;
          v3 = v25;
          v5 = v22;
          v4 = v23;
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      break;
    }

LABEL_7:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D634D8B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    while (1)
    {
      v6 = *v4;
      v7 = *v3;
      v8 = *(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1);
      if (!v8 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }

      v4 += 24;
      v9 = 0x68637465727473;
      if (v6 != 2)
      {
        v9 = 0x7265746E6563;
      }

      v10 = 0xE600000000000000;
      if (v6 == 2)
      {
        v10 = 0xE700000000000000;
      }

      if (v6)
      {
        v11 = 0x646E4578656C66;
      }

      else
      {
        v11 = 0x7261745378656C66;
      }

      v12 = 0xE900000000000074;
      if (v6)
      {
        v12 = 0xE700000000000000;
      }

      v13 = v6 <= 1 ? v11 : v9;
      v14 = v6 <= 1 ? v12 : v10;
      if (v7 <= 1)
      {
        break;
      }

      if (v7 == 2)
      {
        v16 = 0xE700000000000000;
        v15 = 0x68637465727473;
LABEL_33:
        if (v13 != v15)
        {
          goto LABEL_5;
        }

        goto LABEL_34;
      }

      v16 = 0xE600000000000000;
      if (v13 != 0x7265746E6563)
      {
LABEL_5:
        v5 = sub_1D72646CC();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_34:
      if (v14 != v16)
      {
        goto LABEL_5;
      }

LABEL_6:
      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    v15 = 0x7261745378656C66;
    v16 = 0xE900000000000074;
    if (v7)
    {
      v16 = 0xE700000000000000;
      if (v13 != 0x646E4578656C66)
      {
        goto LABEL_5;
      }

      goto LABEL_34;
    }

    goto LABEL_33;
  }

  return 1;
}

uint64_t sub_1D634DA7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *v4;
      v7 = *v3;
      v8 = *(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1);
      if (!v8 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }

      if (v6 <= 2)
      {
        if (v6 == 1)
        {
          v11 = 0x646E4578656C66;
        }

        else
        {
          v11 = 0x7265746E6563;
        }

        v12 = 0xE700000000000000;
        if (v6 != 1)
        {
          v12 = 0xE600000000000000;
        }

        if (v6)
        {
          v10 = v11;
        }

        else
        {
          v10 = 0x7261745378656C66;
        }

        if (v6)
        {
          v9 = v12;
        }

        else
        {
          v9 = 0xE900000000000074;
        }

        if (v7 <= 2)
        {
LABEL_40:
          if (v7)
          {
            if (v7 == 1)
            {
              v13 = 0xE700000000000000;
              if (v10 != 0x646E4578656C66)
              {
                goto LABEL_5;
              }
            }

            else
            {
              v13 = 0xE600000000000000;
              if (v10 != 0x7265746E6563)
              {
                goto LABEL_5;
              }
            }
          }

          else
          {
            v13 = 0xE900000000000074;
            if (v10 != 0x7261745378656C66)
            {
              goto LABEL_5;
            }
          }

          goto LABEL_56;
        }
      }

      else if (v6 > 4)
      {
        if (v6 == 5)
        {
          v10 = 0x6F72416563617073;
        }

        else
        {
          v10 = 0x6576456563617073;
        }

        if (v6 == 5)
        {
          v9 = 0xEB00000000646E75;
        }

        else
        {
          v9 = 0xEB00000000796C6ELL;
        }

        if (v7 <= 2)
        {
          goto LABEL_40;
        }
      }

      else if (v6 == 3)
      {
        v9 = 0xE700000000000000;
        v10 = 0x68637465727473;
        if (v7 <= 2)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v10 = 0x7465426563617073;
        v9 = 0xEC0000006E656577;
        if (v7 <= 2)
        {
          goto LABEL_40;
        }
      }

      if (v7 > 4)
      {
        if (v7 == 5)
        {
          v14 = 0x6F72416563617073;
          v15 = 6581877;
        }

        else
        {
          v14 = 0x6576456563617073;
          v15 = 7957614;
        }

        v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v10 != v14)
        {
LABEL_5:
          v5 = sub_1D72646CC();

          if ((v5 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      else if (v7 == 3)
      {
        v13 = 0xE700000000000000;
        if (v10 != 0x68637465727473)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v13 = 0xEC0000006E656577;
        if (v10 != 0x7465426563617073)
        {
          goto LABEL_5;
        }
      }

LABEL_56:
      if (v9 != v13)
      {
        goto LABEL_5;
      }

LABEL_6:
      v4 += 24;
      v3 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D634DD64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *v4;
      v7 = *v3;
      v8 = *(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1);
      if (!v8 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }

      v4 += 24;
      if (v6 == 4)
      {
        v9 = 0x6F72416563617073;
      }

      else
      {
        v9 = 0x6576456563617073;
      }

      v10 = 0xEB00000000796C6ELL;
      if (v6 == 4)
      {
        v10 = 0xEB00000000646E75;
      }

      if (v6 == 3)
      {
        v9 = 0x7465426563617073;
        v10 = 0xEC0000006E656577;
      }

      if (v6 == 1)
      {
        v11 = 0x646E4578656C66;
      }

      else
      {
        v11 = 0x7265746E6563;
      }

      v12 = 0xE700000000000000;
      if (v6 != 1)
      {
        v12 = 0xE600000000000000;
      }

      if (!v6)
      {
        v11 = 0x7261745378656C66;
        v12 = 0xE900000000000074;
      }

      if (v6 <= 2)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (v6 <= 2)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v15 = 0xEC0000006E656577;
          if (v13 != 0x7465426563617073)
          {
            goto LABEL_5;
          }
        }

        else
        {
          if (v7 == 4)
          {
            v16 = 0x6F72416563617073;
            v17 = 6581877;
          }

          else
          {
            v16 = 0x6576456563617073;
            v17 = 7957614;
          }

          v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v13 != v16)
          {
LABEL_5:
            v5 = sub_1D72646CC();

            if ((v5 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_6;
          }
        }
      }

      else if (v7)
      {
        if (v7 == 1)
        {
          v15 = 0xE700000000000000;
          if (v13 != 0x646E4578656C66)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v15 = 0xE600000000000000;
          if (v13 != 0x7265746E6563)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v15 = 0xE900000000000074;
        if (v13 != 0x7261745378656C66)
        {
          goto LABEL_5;
        }
      }

      if (v14 != v15)
      {
        goto LABEL_5;
      }

LABEL_6:
      v3 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D634DFE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *v4;
      v7 = *v3;
      v8 = *(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1);
      if (!v8 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }

      v4 += 24;
      v9 = 1885434487;
      if (v6 == 1)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v9 = 0x6576655270617277;
        v10 = 0xEB00000000657372;
      }

      if (v6)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0x706172576F6ELL;
      }

      if (v6)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0xE600000000000000;
      }

      if (v7)
      {
        if (v7 == 1)
        {
          v13 = 0xE400000000000000;
          if (v11 != 1885434487)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v13 = 0xEB00000000657372;
          if (v11 != 0x6576655270617277)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x706172576F6ELL)
        {
          goto LABEL_5;
        }
      }

      if (v12 != v13)
      {
LABEL_5:
        v5 = sub_1D72646CC();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      v3 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D634E170(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *v4;
      v7 = *v3;
      v8 = *(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1);
      if (!v8 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }

      v4 += 24;
      if (v6 == 2)
      {
        v9 = 0x6E6D756C6F63;
      }

      else
      {
        v9 = 0x65526E6D756C6F63;
      }

      v10 = 0xE600000000000000;
      if (v6 != 2)
      {
        v10 = 0xED00006573726576;
      }

      v11 = 7827314;
      if (v6)
      {
        v11 = 0x7265766552776F72;
      }

      v12 = 0xEA00000000006573;
      if (!v6)
      {
        v12 = 0xE300000000000000;
      }

      if (v6 <= 1)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (v6 <= 1)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (v7 > 1)
      {
        if (v7 == 2)
        {
          v15 = 0xE600000000000000;
          if (v13 != 0x6E6D756C6F63)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v15 = 0xED00006573726576;
          if (v13 != 0x65526E6D756C6F63)
          {
            goto LABEL_5;
          }
        }
      }

      else if (v7)
      {
        v15 = 0xEA00000000006573;
        if (v13 != 0x7265766552776F72)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v15 = 0xE300000000000000;
        if (v13 != 7827314)
        {
          goto LABEL_5;
        }
      }

      if (v14 != v15)
      {
LABEL_5:
        v5 = sub_1D72646CC();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      v3 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D634E344(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *i;
      v6 = *v3;
      v7 = *(i - 2) == *(v3 - 2) && *(i - 1) == *(v3 - 1);
      if (!v7 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      if (v5)
      {
        v8 = 0x656E696C6E69;
      }

      else
      {
        v8 = 0x6B636F6C62;
      }

      if (v5)
      {
        v9 = 0xE600000000000000;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      if (v6)
      {
        v10 = 0x656E696C6E69;
      }

      else
      {
        v10 = 0x6B636F6C62;
      }

      if (v6)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      if (v8 == v10 && v9 == v11)
      {
      }

      else
      {
        v13 = sub_1D72646CC();

        if ((v13 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D634E470(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      if (v6 == 1)
      {
        v8 = 0x64656C6261736964;
      }

      else
      {
        v8 = 0xD000000000000012;
      }

      if (v6 == 1)
      {
        v9 = 0xE800000000000000;
      }

      else
      {
        v9 = 0x80000001D73B7530;
      }

      if (*v3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x7463757274736564;
      }

      if (*v3)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xEB00000000657669;
      }

      if (v7 == 1)
      {
        v12 = 0x64656C6261736964;
      }

      else
      {
        v12 = 0xD000000000000012;
      }

      if (v7 == 1)
      {
        v13 = 0xE800000000000000;
      }

      else
      {
        v13 = 0x80000001D73B7530;
      }

      if (*v4)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0x7463757274736564;
      }

      if (*v4)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xEB00000000657669;
      }

      if (v10 == v14 && v11 == v15)
      {
      }

      else
      {
        v5 = sub_1D72646CC();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D634E5D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_1D7263BFC();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v44 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = a1 & 0xC000000000000001;
    v45 = a2 & 0xC000000000000001;
    v43 = a2 + 32;
    v41 = v5;
    v42 = a2;
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        break;
      }

      if (v12)
      {
        result = MEMORY[0x1DA6FB460](v11, a1);
        v14 = result;
        if (v45)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v14 = *(a1 + 32 + 8 * v11);

        if (v45)
        {
LABEL_20:
          v15 = MEMORY[0x1DA6FB460](v11, a2);
          goto LABEL_25;
        }
      }

      if (v11 >= *(v44 + 16))
      {
        goto LABEL_53;
      }

      v15 = *(v43 + 8 * v11);

LABEL_25:
      *&v68[0] = *(v14 + 16);
      *&v66[0] = *(v15 + 16);

      v16 = static FormatExpression.== infix(_:_:)(v68, v66);

      if ((v16 & 1) == 0 || (v46 = v13, swift_beginAccess(), v17 = *(v14 + 24), swift_beginAccess(), v18 = *(v15 + 24), v4 = *(v17 + 16), v4 != *(v18 + 16)))
      {
LABEL_43:

        return 0;
      }

      if (v4)
      {

        if (v17 != v18)
        {
          if (*(v17 + 16))
          {
            v19 = 0;
            v20 = v4 - 1;
            v4 = 32;
            while (1)
            {
              v21 = *(v17 + v4);
              v22 = *(v17 + v4 + 32);
              v62[1] = *(v17 + v4 + 16);
              v62[2] = v22;
              v62[0] = v21;
              v23 = *(v17 + v4 + 48);
              v24 = *(v17 + v4 + 64);
              v25 = *(v17 + v4 + 80);
              v63 = *(v17 + v4 + 96);
              v62[4] = v24;
              v62[5] = v25;
              v62[3] = v23;
              v26 = *(v17 + v4 + 16);
              v55 = *(v17 + v4);
              v56 = v26;
              v27 = *(v17 + v4 + 32);
              v28 = *(v17 + v4 + 48);
              v29 = *(v17 + v4 + 64);
              v30 = *(v17 + v4 + 80);
              v61 = *(v17 + v4 + 96);
              v59 = v29;
              v60 = v30;
              v57 = v27;
              v58 = v28;
              if (v19 >= *(v18 + 16))
              {
                break;
              }

              v31 = *(v18 + v4);
              v32 = *(v18 + v4 + 32);
              v64[1] = *(v18 + v4 + 16);
              v64[2] = v32;
              v64[0] = v31;
              v33 = *(v18 + v4 + 48);
              v34 = *(v18 + v4 + 64);
              v35 = *(v18 + v4 + 80);
              v65 = *(v18 + v4 + 96);
              v64[4] = v34;
              v64[5] = v35;
              v64[3] = v33;
              v36 = *(v18 + v4 + 16);
              v48 = *(v18 + v4);
              v49 = v36;
              v37 = *(v18 + v4 + 32);
              v38 = *(v18 + v4 + 48);
              v39 = *(v18 + v4 + 64);
              v40 = *(v18 + v4 + 80);
              v54 = *(v18 + v4 + 96);
              v52 = v39;
              v53 = v40;
              v50 = v37;
              v51 = v38;
              sub_1D5C5C4CC(v62, v47);
              sub_1D5C5C4CC(v64, v47);
              a2 = static FormatSourceMapNode.== infix(_:_:)(&v55, &v48);
              v66[4] = v52;
              v66[5] = v53;
              v67 = v54;
              v66[0] = v48;
              v66[1] = v49;
              v66[2] = v50;
              v66[3] = v51;
              sub_1D5C5C540(v66);
              v68[4] = v59;
              v68[5] = v60;
              v69 = v61;
              v68[0] = v55;
              v68[1] = v56;
              v68[2] = v57;
              v68[3] = v58;
              sub_1D5C5C540(v68);
              if ((a2 & 1) == 0)
              {

                goto LABEL_43;
              }

              if (v20 == v19)
              {

                v5 = v41;
                a2 = v42;
                v12 = a1 & 0xC000000000000001;
                goto LABEL_39;
              }

              v4 += 104;
              if (++v19 >= *(v17 + 16))
              {
                goto LABEL_46;
              }
            }
          }

          else
          {
LABEL_46:
            __break(1u);
          }

          __break(1u);
LABEL_48:
          v5 = sub_1D7263BFC();
          goto LABEL_3;
        }
      }

      else
      {
      }

LABEL_39:

      result = 1;
      v11 = v46;
      if (v46 == v5)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D634EA04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    while (1)
    {
      v6 = *(v3 - 1);
      v5 = *v3;
      v7 = *v4;
      v11 = *(v4 - 1);
      v12 = v6;
      swift_retain_n();

      swift_retain_n();

      v8 = static FormatExpression.== infix(_:_:)(&v12, &v11);

      if ((v8 & 1) == 0)
      {
        break;
      }

      v9 = sub_1D634EB4C(v5, v7);

      if (v9)
      {
        v3 += 2;
        v4 += 2;
        if (--v2)
        {
          continue;
        }
      }

      return v9 & 1;
    }

    goto LABEL_11;
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t sub_1D634EB4C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v50 = a2 + 32;
  v45 = result + 32;
  v46 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_87;
    }

    v6 = *(v4 + 8 * v3);
    v7 = *(v50 + 8 * v3);
    if (v6 < 0)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        return 0;
      }

      v17 = v6 & 0x7FFFFFFFFFFFFFFFLL;
      v18 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *(v18 + 16);
      v49 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      if (v19 != *(v49 + 16))
      {
        return 0;
      }

      v47 = *(v17 + 24);
      v48 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      if (v19)
      {

        swift_retain_n();
        swift_retain_n();
        if (v18 != )
        {
          v20 = (v18 + 40);
          v21 = (v49 + 40);
          while (1)
          {
            v22 = *(v20 - 1);
            v23 = *v20;
            v24 = *v21;
            v51 = *(v21 - 1);
            v52 = v22;
            swift_retain_n();

            swift_retain_n();

            v25 = static FormatExpression.== infix(_:_:)(&v52, &v51);

            if ((v25 & 1) == 0)
            {
              break;
            }

            v26 = sub_1D634EB4C(v23, v24);

            if ((v26 & 1) == 0)
            {
              goto LABEL_80;
            }

            v20 += 2;
            v21 += 2;
            if (!--v19)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_79;
        }
      }

      else
      {

        swift_retain_n();
        swift_retain_n();
      }

LABEL_53:
      if (v47)
      {
        v4 = v45;
        v2 = v46;
        if (!v48)
        {
          goto LABEL_80;
        }

        v33 = sub_1D634EB4C(v47, v48);

        swift_bridgeObjectRelease_n();
        if ((v33 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v4 = v45;
        v2 = v46;
        if (v48)
        {
LABEL_80:

          return 0;
        }

        swift_bridgeObjectRelease_n();
      }

      goto LABEL_7;
    }

    if (v7 < 0)
    {
      return 0;
    }

    v8 = *(v6 + 16);
    v10 = *(v6 + 24);
    v9 = *(v6 + 32);
    v11 = *(v7 + 16);
    v13 = *(v7 + 24);
    v12 = *(v7 + 32);
    v14 = (v8 >> 3) & 3;
    v15 = v11 & 0x18;
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        if (v15 != 24)
        {
          goto LABEL_72;
        }

        goto LABEL_35;
      }

      if (v15 != 16)
      {
        goto LABEL_72;
      }

LABEL_32:
      if ((v11 ^ v8))
      {
        goto LABEL_72;
      }

      goto LABEL_35;
    }

    if (v14)
    {
      if (v15 != 8)
      {
        goto LABEL_72;
      }

      goto LABEL_32;
    }

    if ((v11 & 0x18) != 0)
    {
      goto LABEL_72;
    }

    v16 = v8 >> 5;
    if (v8 >> 5 <= 1)
    {
      if (v16)
      {
        if ((v11 & 0xE0) != 0x20)
        {
LABEL_72:

LABEL_79:

          return 0;
        }
      }

      else if (v11 >= 0x20)
      {
        goto LABEL_72;
      }

      goto LABEL_32;
    }

    if (v16 == 2)
    {
      if ((v11 & 0xE0) != 0x40)
      {
        goto LABEL_72;
      }

      goto LABEL_32;
    }

    if (v16 == 3)
    {
      if ((v11 & 0xE0) != 0x60)
      {
        goto LABEL_72;
      }

      goto LABEL_32;
    }

    if ((v11 & 0xE0) != 0x80)
    {
      goto LABEL_72;
    }

LABEL_35:
    if (*(v6 + 40))
    {
      break;
    }

    if (*(v7 + 40))
    {
      swift_retain_n();
      swift_retain_n();
      sub_1D5F586D0(v13, v12, 1);
      sub_1D5F586D0(v10, v9, 0);
      v36 = v10;
      v37 = v9;
      v38 = 0;
      goto LABEL_74;
    }

    v31 = *(v10 + 16);
    if (v31 != *(v13 + 16))
    {
      goto LABEL_75;
    }

    if (v31)
    {
      if (v10 != v13)
      {
        v34 = (v10 + 32);
        v35 = (v13 + 32);
        while (*v34 == *v35)
        {
          ++v34;
          ++v35;
          if (!--v31)
          {
            goto LABEL_62;
          }
        }

LABEL_75:
        swift_retain_n();
        swift_retain_n();
        sub_1D5F586D0(v13, v12, 0);
        sub_1D5F586D0(v10, v9, 0);
        v42 = v10;
        v43 = v9;
        v44 = 0;
LABEL_76:
        sub_1D5F5870C(v42, v43, v44);
        v39 = v13;
        v40 = v12;
        v41 = 0;
LABEL_77:
        sub_1D5F5870C(v39, v40, v41);

        return 0;
      }

      swift_retain_n();
      swift_retain_n();
      sub_1D5F586D0(v10, v12, 0);
      sub_1D5F586D0(v10, v9, 0);
      sub_1D5F5870C(v10, v9, 0);
      v32 = v10;
    }

    else
    {
LABEL_62:
      swift_retain_n();
      swift_retain_n();
      sub_1D5F586D0(v13, v12, 0);
      sub_1D5F586D0(v10, v9, 0);
      sub_1D5F5870C(v10, v9, 0);
      v32 = v13;
    }

    sub_1D5F5870C(v32, v12, 0);

LABEL_7:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  if ((*(v7 + 40) & 1) == 0)
  {
    swift_retain_n();
    swift_retain_n();
    sub_1D5F586D0(v13, v12, 0);
    sub_1D5F586D0(v10, v9, 1);
    v42 = v10;
    v43 = v9;
    v44 = 1;
    goto LABEL_76;
  }

  v27 = *(v10 + 16);
  if (v27 != *(v13 + 16))
  {
LABEL_73:
    swift_retain_n();
    swift_retain_n();
    sub_1D5F586D0(v13, v12, 1);
    sub_1D5F586D0(v10, v9, 1);
    v36 = v10;
    v37 = v9;
    v38 = 1;
LABEL_74:
    sub_1D5F5870C(v36, v37, v38);
    v39 = v13;
    v40 = v12;
    v41 = 1;
    goto LABEL_77;
  }

  if (v27)
  {
    v28 = v10 == v13;
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {
LABEL_6:
    v5 = sub_1D633D734(*(v6 + 32), *(v7 + 32));
    swift_retain_n();
    swift_retain_n();
    sub_1D5F586D0(v13, v12, 1);
    sub_1D5F586D0(v10, v9, 1);
    sub_1D5F5870C(v10, v9, 1);
    sub_1D5F5870C(v13, v12, 1);

    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  v29 = (v10 + 32);
  v30 = (v13 + 32);
  while (v27)
  {
    if (*v29 != *v30)
    {
      goto LABEL_73;
    }

    ++v29;
    ++v30;
    if (!--v27)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

uint64_t sub_1D634F2BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      v6 = FormatItemTrait.rawValue.getter();
      v8 = v7;
      if (v6 == FormatItemTrait.rawValue.getter() && v8 == v9)
      {
      }

      else
      {
        v5 = sub_1D72646CC();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D634F3EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_1D5E1FA08(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D634F4A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v3 = (a2 + 80);
      v4 = a1 + 40;
      do
      {
        v5 = *v4;
        v6 = *(v4 + 8);
        v7 = *(v4 + 16);
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        v10 = *(v4 + 40);
        v27 = *(v4 - 8);
        v28 = v5;
        v29 = v6;
        v30 = v7;
        v31 = v8;
        v32 = v9;
        v33 = v10;
        v12 = *(v3 - 5);
        v13 = *(v3 - 4);
        v14 = *(v3 - 3);
        v15 = *(v3 - 2);
        v16 = *(v3 - 1);
        v20 = *(v3 - 6);
        v11 = v20;
        v21 = v12;
        v22 = v13;
        v23 = v14;
        v24 = v15;
        v25 = v16;
        v26 = *v3;
        v17 = v26;
        sub_1D62B7654(v27, v5, v6, v7, v8, v9, v10);
        sub_1D62B7654(v11, v12, v13, v14, v15, v16, v17);
        v18 = _s8NewsFeed25FormatBezierPathComponentO2eeoiySbAC_ACtFZ_0(&v27, &v20);
        sub_1D62B772C(v20, v21, v22, v23, v24, v25, v26);
        sub_1D62B772C(v27, v28, v29, v30, v31, v32, v33);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v4 += 56;
        v3 += 56;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

unint64_t sub_1D634F5E0(unint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v15 = result + 32;
  v4 = a2 + 32;
  while (v3 != v2)
  {
    v5 = (v15 + 16 * v3);
    v7 = *v5;
    v6 = v5[1];
    v8 = (v4 + 16 * v3);
    v9 = v8[1];
    v16 = *v8;
    v17 = v7;
    swift_retain_n();

    swift_retain_n();

    v10 = static FormatExpression.== infix(_:_:)(&v17, &v16);

    if ((v10 & 1) == 0 || (v11 = *(v6 + 16), v11 != *(v9 + 16)))
    {
LABEL_20:

      return 0;
    }

    if (v11)
    {
      v12 = v6 == v9;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = 4;
      while ((v13 - 4) < *(v6 + 16))
      {
        result = *(v6 + 8 * v13);
        v17 = result;
        if ((v13 - 4) >= *(v9 + 16))
        {
          goto LABEL_24;
        }

        v16 = *(v9 + 8 * v13);
        v14 = v16;
        sub_1D5CFEC98(result);
        sub_1D5CFEC98(v14);
        LOBYTE(v14) = static FormatAdjustment.== infix(_:_:)(&v17, &v16);
        sub_1D5CFED88(v16);
        result = sub_1D5CFED88(v17);
        if ((v14 & 1) == 0)
        {
          goto LABEL_20;
        }

        ++v13;
        if (!--v11)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
      break;
    }

LABEL_5:
    ++v3;

    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1D634F7BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatPackage();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_1D725BD1C();
  v8 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213, v9);
  v197 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69D6B38];
  sub_1D5B5BF78(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v196 = &v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v195 = &v173 - v17;
  sub_1D66F4EB8(0, &qword_1EDF178B0, &qword_1EDF45AC0, v11);
  v203 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v198 = &v173 - v24;
  v217 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v217, v25);
  v199 = (&v173 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27, v28);
  v206 = (&v173 - v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v204 = (&v173 - v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v205 = (&v173 - v35);
  v208 = sub_1D72585BC();
  v36 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208, v37);
  v207 = &v173 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66F4E3C();
  v209 = v39;
  MEMORY[0x1EEE9AC00](v39, v40);
  v215 = &v173 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AB28(0);
  v43 = v42;
  v212 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v44);
  v201 = &v173 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v47);
  v200 = &v173 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v216 = &v173 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v214 = &v173 - v54;
  v55 = type metadata accessor for FormatWorkspaceGroup();
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = (&v173 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v59, v60);
  v64 = (&v173 - v63);
  v65 = *(a1 + 16);
  if (v65 != *(a2 + 16) || !v65 || a1 == a2)
  {
    return;
  }

  v186 = v61;
  v66 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v67 = a1 + v66;
  v68 = a2 + v66;
  v69 = 0;
  v183 = (v8 + 48);
  v179 = (v8 + 32);
  v180 = (v8 + 8);
  v181 = (v36 + 32);
  v188 = (v36 + 8);
  v70 = *(v62 + 72);
  v187 = v7;
  v191 = v65;
  v177 = v67;
  v176 = v68;
  v175 = v70;
  while (1)
  {
    v71 = v70 * v69;
    sub_1D6706BB4(v67 + v70 * v69, v64, type metadata accessor for FormatWorkspaceGroup);
    if (v69 == v191)
    {
      goto LABEL_120;
    }

    v182 = v69;
    sub_1D6706BB4(v68 + v71, v58, type metadata accessor for FormatWorkspaceGroup);
    v72 = *v64 == *v58 && v64[1] == v58[1];
    if (!v72 && (sub_1D72646CC() & 1) == 0 || (v64[2] != v58[2] || v64[3] != v58[3]) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_115;
    }

    v73 = *(v186 + 24);
    v74 = *(v64 + v73);
    v75 = *(v64 + v73 + 8);
    v210 = v58 + v73;
    v211 = v64 + v73;
    v76 = v74 == *(v58 + v73) && v75 == *(v58 + v73 + 8);
    if (!v76 && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_115;
    }

    v202 = type metadata accessor for FormatContentSubgroup();
    v77 = v202[5];
    v78 = &v211[v77];
    v79 = &v210[v77];
    if ((sub_1D6B1A454(&v211[v77], &v210[v77]) & 1) == 0)
    {
      goto LABEL_115;
    }

    sub_1D5B5971C();
    v81 = *(v80 + 36);
    v82 = *&v78[v81];
    v83 = *&v79[v81];
    v84 = *(v82 + 16);
    if (v84 != *(v83 + 16))
    {
      goto LABEL_115;
    }

    v85 = v214;
    if (v84 && v82 != v83)
    {
      v86 = 0;
      v87 = (*(v212 + 80) + 32) & ~*(v212 + 80);
      v190 = v82 + v87;
      v189 = v83 + v87;
      v178 = v82;
      v192 = v21;
      v193 = v43;
      v185 = v83;
      v184 = v84;
      do
      {
        if (v86 >= *(v82 + 16))
        {
          goto LABEL_118;
        }

        v92 = v64;
        v93 = v58;
        v94 = v86;
        v95 = *(v212 + 72) * v86;
        sub_1D6706BB4(v190 + v95, v85, sub_1D5C2AB28);
        v96 = *(v83 + 16);
        v194 = v94;
        if (v94 >= v96)
        {
          goto LABEL_119;
        }

        v97 = v216;
        sub_1D6706BB4(v189 + v95, v216, sub_1D5C2AB28);
        v98 = v215;
        v99 = v215 + *(v209 + 48);
        v43 = v193;
        sub_1D6706BB4(v85, v215, sub_1D5C2AB28);
        sub_1D6706BB4(v97, v99, sub_1D5C2AB28);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          v58 = v93;
          if (EnumCaseMultiPayload != 1)
          {
            v88 = swift_getEnumCaseMultiPayload();
            v89 = sub_1D66F4E3C;
            v21 = v192;
            if (v88 != 2)
            {
              goto LABEL_102;
            }

            goto LABEL_25;
          }

          v101 = v201;
          sub_1D6706BB4(v98, v201, sub_1D5C2AB28);
          sub_1D5D57E78(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
          v103 = *(v102 + 48);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_1D5D2CFE8(v101 + v103, type metadata accessor for FormatMetadata);
            sub_1D5D2CFE8(v101, type metadata accessor for FormatPackage);
            goto LABEL_105;
          }

          v104 = v187;
          sub_1D5C8F76C(v99, v187, type metadata accessor for FormatPackage);
          v105 = v206;
          sub_1D5C8F76C(v101 + v103, v206, type metadata accessor for FormatMetadata);
          v106 = v99 + v103;
          v107 = v199;
          sub_1D5C8F76C(v106, v199, type metadata accessor for FormatMetadata);
          v108 = static FormatPackage.== infix(_:_:)(v101, v104);
          sub_1D5D2CFE8(v101, type metadata accessor for FormatPackage);
          v21 = v192;
          v64 = v92;
          if ((v108 & 1) == 0)
          {
            goto LABEL_112;
          }

          v109 = v105[1];
          v110 = v107[1];
          if (v109)
          {
            if (!v110 || (*v105 != *v107 || v109 != v110) && (sub_1D72646CC() & 1) == 0)
            {
              goto LABEL_112;
            }
          }

          else if (v110)
          {
            goto LABEL_112;
          }

          if ((sub_1D725BCBC() & 1) == 0 || (sub_1D725BCBC() & 1) == 0)
          {
            goto LABEL_112;
          }

          v126 = v217[7];
          v127 = v105;
          v128 = *(v203 + 48);
          v129 = MEMORY[0x1E69D6B38];
          sub_1D5CDE2EC(v127 + v126, v21, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
          sub_1D5CDE2EC(v107 + v126, &v21[v128], &qword_1EDF45AC0, v129);
          v130 = *v183;
          if ((*v183)(v21, 1, v213) == 1)
          {
            if (v130(&v21[v128], 1, v213) != 1)
            {
              goto LABEL_111;
            }

            sub_1D5D35558(v21, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5B5BF78);
            v105 = v206;
          }

          else
          {
            v131 = v196;
            sub_1D5CDE2EC(v21, v196, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
            if (v130(&v21[v128], 1, v213) == 1)
            {
              (*v180)(v131, v213);
LABEL_111:
              sub_1D66F4424(v21, &qword_1EDF178B0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
              v105 = v206;
LABEL_112:
              sub_1D5D2CFE8(v107, type metadata accessor for FormatMetadata);
              sub_1D5D2CFE8(v105, type metadata accessor for FormatMetadata);
              sub_1D5D2CFE8(v187, type metadata accessor for FormatPackage);
LABEL_113:
              v89 = sub_1D5C2AB28;
              v172 = v214;
              v98 = v215;
              goto LABEL_114;
            }

            v132 = &v21[v128];
            v133 = v197;
            v134 = v213;
            (*v179)(v197, v132, v213);
            sub_1D5B58B84(&qword_1EDF178B8, MEMORY[0x1E69D6B38]);
            v135 = sub_1D7261FBC();
            v136 = *v180;
            v137 = v133;
            v21 = v192;
            (*v180)(v137, v134);
            v138 = v134;
            v43 = v193;
            v136(v131, v138);
            sub_1D5D35558(v21, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5B5BF78);
            v105 = v206;
            if ((v135 & 1) == 0)
            {
              goto LABEL_112;
            }
          }

          if ((sub_1D5C15FFC(*(v105 + v217[8]), *(v107 + v217[8])) & 1) == 0 || (sub_1D5C15FFC(*(v105 + v217[9]), *(v107 + v217[9])) & 1) == 0 || (sub_1D5D3A964(*(v105 + v217[10]), *(v107 + v217[10])) & 1) == 0)
          {
            goto LABEL_112;
          }

          v139 = sub_1D5D3A964(*(v105 + v217[11]), *(v107 + v217[11]));
          sub_1D5D2CFE8(v107, type metadata accessor for FormatMetadata);
          sub_1D5D2CFE8(v105, type metadata accessor for FormatMetadata);
          sub_1D5D2CFE8(v187, type metadata accessor for FormatPackage);
        }

        else
        {
          v111 = v200;
          sub_1D6706BB4(v98, v200, sub_1D5C2AB28);
          sub_1D5D57E78(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
          v113 = *(v112 + 48);
          v58 = v93;
          if (swift_getEnumCaseMultiPayload())
          {
            sub_1D5D2CFE8(v111 + v113, type metadata accessor for FormatMetadata);
            (*v188)(v111, v208);
LABEL_105:
            v89 = sub_1D66F4E3C;
            v172 = v214;
            v64 = v92;
            goto LABEL_114;
          }

          v114 = v98;
          v115 = v92;
          v116 = v208;
          v117 = v111;
          (*v181)(v207, v99, v208);
          v118 = v205;
          sub_1D5C8F76C(v111 + v113, v205, type metadata accessor for FormatMetadata);
          v119 = v99 + v113;
          v120 = v204;
          sub_1D5C8F76C(v119, v204, type metadata accessor for FormatMetadata);
          v121 = sub_1D72584CC();
          v122 = *v188;
          (*v188)(v117, v116);
          if ((v121 & 1) == 0)
          {
            sub_1D5D2CFE8(v120, type metadata accessor for FormatMetadata);
            sub_1D5D2CFE8(v118, type metadata accessor for FormatMetadata);
            v122(v207, v208);
            v89 = sub_1D5C2AB28;
            v172 = v214;
            v58 = v93;
            v64 = v115;
            v98 = v114;
            goto LABEL_114;
          }

          v174 = v122;
          v123 = v118[1];
          v124 = v120[1];
          v125 = v118;
          if (v123)
          {
            v21 = v192;
            v58 = v93;
            v64 = v115;
            v43 = v193;
            if (!v124 || (*v118 != *v120 || v123 != v124) && (sub_1D72646CC() & 1) == 0)
            {
              goto LABEL_109;
            }
          }

          else
          {
            v21 = v192;
            v58 = v93;
            v64 = v115;
            v43 = v193;
            if (v124)
            {
              goto LABEL_109;
            }
          }

          if ((sub_1D725BCBC() & 1) == 0 || (sub_1D725BCBC() & 1) == 0)
          {
            goto LABEL_109;
          }

          v140 = v217[7];
          v141 = v125;
          v142 = *(v203 + 48);
          v143 = MEMORY[0x1E69D6B38];
          v144 = v120;
          v145 = v198;
          sub_1D5CDE2EC(v141 + v140, v198, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
          sub_1D5CDE2EC(v144 + v140, v145 + v142, &qword_1EDF45AC0, v143);
          v146 = *v183;
          if ((*v183)(v145, 1, v213) == 1)
          {
            if (v146((v145 + v142), 1, v213) != 1)
            {
              goto LABEL_108;
            }

            sub_1D5D35558(v145, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5B5BF78);
            v120 = v204;
            v125 = v205;
          }

          else
          {
            v147 = v195;
            sub_1D5CDE2EC(v145, v195, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
            if (v146((v145 + v142), 1, v213) == 1)
            {
              (*v180)(v147, v213);
LABEL_108:
              sub_1D66F4424(v145, &qword_1EDF178B0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
              v120 = v204;
              v125 = v205;
LABEL_109:
              sub_1D5D2CFE8(v120, type metadata accessor for FormatMetadata);
              sub_1D5D2CFE8(v125, type metadata accessor for FormatMetadata);
              v174(v207, v208);
              goto LABEL_113;
            }

            v148 = v197;
            v149 = v213;
            (*v179)(v197, (v145 + v142), v213);
            sub_1D5B58B84(&qword_1EDF178B8, MEMORY[0x1E69D6B38]);
            v150 = sub_1D7261FBC();
            v151 = *v180;
            v152 = v148;
            v21 = v192;
            (*v180)(v152, v149);
            v151(v147, v149);
            sub_1D5D35558(v145, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5B5BF78);
            v120 = v204;
            v125 = v205;
            if ((v150 & 1) == 0)
            {
              goto LABEL_109;
            }
          }

          if ((sub_1D5C15FFC(*(v125 + v217[8]), *(v120 + v217[8])) & 1) == 0 || (sub_1D5C15FFC(*(v125 + v217[9]), *(v120 + v217[9])) & 1) == 0 || (sub_1D5D3A964(*(v125 + v217[10]), *(v120 + v217[10])) & 1) == 0)
          {
            goto LABEL_109;
          }

          v92 = v64;
          v139 = sub_1D5D3A964(*(v125 + v217[11]), *(v120 + v217[11]));
          sub_1D5D2CFE8(v120, type metadata accessor for FormatMetadata);
          sub_1D5D2CFE8(v125, type metadata accessor for FormatMetadata);
          v174(v207, v208);
        }

        v89 = sub_1D5C2AB28;
        v82 = v178;
        if ((v139 & 1) == 0)
        {
LABEL_102:
          v172 = v214;
          v98 = v215;
          v64 = v92;
LABEL_114:
          sub_1D5D2CFE8(v98, v89);
          sub_1D5D2CFE8(v216, sub_1D5C2AB28);
          sub_1D5D2CFE8(v172, sub_1D5C2AB28);
          goto LABEL_115;
        }

LABEL_25:
        v90 = v58;
        v91 = v194 + 1;
        sub_1D5D2CFE8(v215, sub_1D5C2AB28);
        sub_1D5D2CFE8(v216, sub_1D5C2AB28);
        v85 = v214;
        v86 = v91;
        v58 = v90;
        sub_1D5D2CFE8(v214, sub_1D5C2AB28);
        v83 = v185;
        v64 = v92;
      }

      while (v184 != v86);
    }

    if ((sub_1D6339F3C(*&v211[v202[6]], *&v210[v202[6]]) & 1) == 0)
    {
      goto LABEL_115;
    }

    if ((sub_1D5BFC390(*&v211[v202[7]], *&v210[v202[7]]) & 1) == 0)
    {
      goto LABEL_115;
    }

    if ((sub_1D633BEDC(*&v211[v202[8]], *&v210[v202[8]]) & 1) == 0)
    {
      goto LABEL_115;
    }

    v153 = v202[9];
    v154 = *&v211[v153];
    v155 = *&v210[v153];
    v156 = *(v154 + 16);
    if (v156 != *(v155 + 16))
    {
      goto LABEL_115;
    }

    if (v156 && v154 != v155)
    {
      v157 = (v155 + 48);
      v158 = (v154 + 48);
      do
      {
        v159 = *v158;
        v160 = *v157;
        if (*(v158 - 2) == *(v157 - 2) && *(v158 - 1) == *(v157 - 1))
        {
          if (v159 != v160)
          {
            goto LABEL_115;
          }
        }

        else if (sub_1D72646CC() & 1) == 0 || ((v159 ^ v160))
        {
          goto LABEL_115;
        }

        v157 += 24;
        v158 += 24;
      }

      while (--v156);
    }

    if ((static FormatMetadata.== infix(_:_:)(&v211[v202[10]], &v210[v202[10]]) & 1) == 0 || (v162 = v202[11], v163 = *&v211[v162], v164 = *&v210[v162], v165 = *(v163 + 16), v165 != *(v164 + 16)))
    {
LABEL_115:
      sub_1D5D2CFE8(v58, type metadata accessor for FormatWorkspaceGroup);
      sub_1D5D2CFE8(v64, type metadata accessor for FormatWorkspaceGroup);
      return;
    }

    if (v165 && v163 != v164)
    {
      break;
    }

LABEL_98:
    v171 = sub_1D6343C34(*&v211[v202[12]], *&v210[v202[12]]);
    sub_1D5D2CFE8(v58, type metadata accessor for FormatWorkspaceGroup);
    sub_1D5D2CFE8(v64, type metadata accessor for FormatWorkspaceGroup);
    if (v171)
    {
      v69 = v182 + 1;
      v67 = v177;
      v68 = v176;
      v70 = v175;
      if (v182 + 1 != v191)
      {
        continue;
      }
    }

    return;
  }

  v167 = (v163 + 32);
  v168 = (v164 + 32);
  while (1)
  {
    v169 = *v167++;
    v219 = v169;
    if (!v165)
    {
      break;
    }

    v218 = *v168;

    v170 = static FormatContentSubgroupFilter.== infix(_:_:)(&v219, &v218);

    if ((v170 & 1) == 0)
    {
      goto LABEL_115;
    }

    ++v168;
    if (!--v165)
    {
      goto LABEL_98;
    }
  }

  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
}

uint64_t sub_1D6350F34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_11:
    v7 = 0;
    return v7 & 1;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (1)
    {
      v5 = *v3;
      v11 = *v4;
      v12 = v5;
      v9 = v11;
      v10 = v5;

      swift_retain_n();
      swift_retain_n();

      v6 = static FormatExpression.== infix(_:_:)(&v10, &v9);

      if ((v6 & 1) == 0)
      {
        break;
      }

      v7 = static FormatVideoNodeContent.== infix(_:_:)(&v12 + 8, &v11 + 8);

      if (v7)
      {
        ++v3;
        ++v4;
        if (--v2)
        {
          continue;
        }
      }

      return v7 & 1;
    }

    goto LABEL_11;
  }

  v7 = 1;
  return v7 & 1;
}

BOOL sub_1D63510A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v4 = 0;
      do
      {
        v5 = *(a1 + v4 + 40);
        v7 = *(a1 + v4 + 48);
        v6 = *(a1 + v4 + 56);
        v8 = *(a1 + v4 + 64);
        v9 = *(a1 + v4 + 72);
        v29[0] = *(a1 + v4 + 32);
        v29[1] = v5;
        v30 = v7;
        v31 = v6;
        v32 = v8;
        v33 = v9;
        v10 = *(a2 + v4 + 40);
        v11 = *(a2 + v4 + 48);
        v12 = *(a2 + v4 + 56);
        v13 = *(a2 + v4 + 64);
        v14 = *(a2 + v4 + 72);
        v24[0] = *(a2 + v4 + 32);
        v24[1] = v10;
        v25 = v11;
        v26 = v12;
        v27 = v13;
        v28 = v14;

        sub_1D5CFCFAC(v7);
        sub_1D5CFCFAC(v6);
        sub_1D5D0A59C(v9);

        sub_1D5CFCFAC(v11);
        sub_1D5CFCFAC(v12);
        sub_1D5D0A59C(v14);
        v15 = _s8NewsFeed30FormatSponsoredBannerNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(v29, v24);
        v16 = v25;
        v17 = v26;
        v18 = v28;

        sub_1D5C84FF4(v16);
        sub_1D5C84FF4(v17);
        sub_1D5D0A5AC(v18);
        v19 = v30;
        v20 = v31;
        v21 = v33;

        sub_1D5C84FF4(v19);
        sub_1D5C84FF4(v20);
        sub_1D5D0A5AC(v21);
        if (!v15)
        {
          break;
        }

        v4 += 48;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v15;
}

BOOL sub_1D635122C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v4 = 0;
      do
      {
        v5 = *(a1 + v4 + 40);
        v6 = *(a1 + v4 + 48);
        v7 = *(a1 + v4 + 56);
        v8 = *(a1 + v4 + 64);
        v9 = *(a1 + v4 + 65);
        v27[0] = *(a1 + v4 + 32);
        v27[1] = v5;
        v28 = v6;
        v29 = v7;
        v30 = v8;
        v31 = v9;
        v10 = *(a2 + v4 + 40);
        v11 = *(a2 + v4 + 48);
        v12 = *(a2 + v4 + 56);
        v13 = *(a2 + v4 + 65);
        v22[0] = *(a2 + v4 + 32);
        v22[1] = v10;
        v23 = v11;
        v24 = v12;
        v25 = *(a2 + v4 + 64);
        v14 = v25;
        v26 = v13;

        sub_1D5ED34B0(v6, v7, v8);

        sub_1D5ED34B0(v11, v12, v14);
        v15 = _s8NewsFeed26FormatPuzzleEmbedNodeStyleV8SelectorV2eeoiySbAE_AEtFZ_0(v27, v22);
        v16 = v23;
        v17 = v24;
        LOBYTE(v10) = v25;

        sub_1D5ED348C(v16, v17, v10);
        v18 = v28;
        v19 = v29;
        LOBYTE(v10) = v30;

        sub_1D5ED348C(v18, v19, v10);
        if (!v15)
        {
          break;
        }

        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v15;
}

BOOL sub_1D6351398(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v4 = 0;
      do
      {
        v5 = *(a1 + v4 + 40);
        v6 = *(a1 + v4 + 48);
        v7 = *(a1 + v4 + 56);
        v8 = *(a1 + v4 + 64);
        v9 = *(a1 + v4 + 72);
        v26[0] = *(a1 + v4 + 32);
        v26[1] = v5;
        v26[2] = v6;
        v27 = v7;
        v28 = v8;
        v29 = v9;
        v10 = *(a2 + v4 + 40);
        v11 = *(a2 + v4 + 48);
        v12 = *(a2 + v4 + 56);
        v13 = *(a2 + v4 + 64);
        v14 = *(a2 + v4 + 72);
        v22[0] = *(a2 + v4 + 32);
        v22[1] = v10;
        v22[2] = v11;
        v23 = v12;
        v24 = v13;
        v25 = v14;

        sub_1D5CFCFAC(v7);
        sub_1D5CFCFAC(v8);

        sub_1D5CFCFAC(v12);
        sub_1D5CFCFAC(v13);
        v15 = _s8NewsFeed27FormatProgressViewNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(v26, v22);
        v16 = v23;
        v17 = v24;

        sub_1D5C84FF4(v16);
        sub_1D5C84FF4(v17);
        v18 = v27;
        v19 = v28;

        sub_1D5C84FF4(v18);
        sub_1D5C84FF4(v19);
        if (!v15)
        {
          break;
        }

        v4 += 48;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v15;
}

uint64_t sub_1D635151C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v69 = v2;
  v70 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 112);
    v9 = *(v5 + 80);
    v52 = *(v5 + 96);
    v53 = v8;
    v10 = *(v5 + 112);
    v54 = *(v5 + 128);
    v11 = *(v5 + 48);
    v12 = *(v5 + 16);
    v48 = *(v5 + 32);
    v49 = v11;
    v13 = *(v5 + 48);
    v14 = *(v5 + 80);
    v50 = *(v5 + 64);
    v51 = v14;
    v15 = *(v5 + 16);
    v47[0] = *v5;
    v47[1] = v15;
    v43 = v52;
    v44 = v10;
    v45 = *(v5 + 128);
    v39 = v48;
    v40 = v13;
    v41 = v50;
    v42 = v9;
    v37 = v47[0];
    v38 = v12;
    v16 = *(v6 + 112);
    v17 = *(v6 + 80);
    v61 = *(v6 + 96);
    v62 = v16;
    v18 = *(v6 + 112);
    v63 = *(v6 + 128);
    v19 = *(v6 + 48);
    v20 = *(v6 + 16);
    v57 = *(v6 + 32);
    v58 = v19;
    v21 = *(v6 + 48);
    v22 = *(v6 + 80);
    v59 = *(v6 + 64);
    v60 = v22;
    v23 = *(v6 + 16);
    v56[0] = *v6;
    v56[1] = v23;
    v33 = v61;
    v34 = v18;
    v35 = *(v6 + 128);
    v29 = v57;
    v30 = v21;
    v31 = v59;
    v32 = v17;
    v55 = *(v5 + 144);
    v46 = *(v5 + 144);
    v64 = *(v6 + 144);
    v36 = *(v6 + 144);
    v27 = v56[0];
    v28 = v20;
    sub_1D615EAA0(v47, v26);
    sub_1D615EAA0(v56, v26);
    v24 = _s8NewsFeed25FormatIssueCoverNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(&v37, &v27);
    v65[6] = v33;
    v65[7] = v34;
    v65[8] = v35;
    v66 = v36;
    v65[2] = v29;
    v65[3] = v30;
    v65[4] = v31;
    v65[5] = v32;
    v65[0] = v27;
    v65[1] = v28;
    sub_1D615EAD8(v65);
    v67[6] = v43;
    v67[7] = v44;
    v67[8] = v45;
    v68 = v46;
    v67[2] = v39;
    v67[3] = v40;
    v67[4] = v41;
    v67[5] = v42;
    v67[0] = v37;
    v67[1] = v38;
    sub_1D615EAD8(v67);
    if ((v24 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 152;
    v5 += 152;
  }

  return 1;
}

uint64_t sub_1D635170C(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, _BYTE *), uint64_t (*a4)(__int128 *, __int128 *), void (*a5)(_OWORD *))
{
  v7 = *(a1 + 16);
  if (v7 != *(a2 + 16))
  {
    return 0;
  }

  if (!v7 || a1 == a2)
  {
    return 1;
  }

  v85 = v5;
  v86 = v6;
  v11 = (a1 + 32);
  v12 = (a2 + 32);
  for (i = v7 - 1; ; --i)
  {
    v14 = v11[7];
    v15 = v11[9];
    v68 = v11[8];
    v69 = v15;
    v16 = v11[3];
    v17 = v11[5];
    v64 = v11[4];
    v65 = v17;
    v18 = v11[5];
    v19 = v11[7];
    v66 = v11[6];
    v67 = v19;
    v20 = v11[1];
    v61[0] = *v11;
    v61[1] = v20;
    v21 = v11[3];
    v23 = *v11;
    v22 = v11[1];
    v62 = v11[2];
    v63 = v21;
    v24 = v11[9];
    v58 = v68;
    v59 = v24;
    v54 = v64;
    v55 = v18;
    v56 = v66;
    v57 = v14;
    v50 = v23;
    v51 = v22;
    v52 = v62;
    v53 = v16;
    v25 = v12[7];
    v26 = v12[9];
    v78 = v12[8];
    v79 = v26;
    v27 = v12[3];
    v28 = v12[5];
    v74 = v12[4];
    v75 = v28;
    v29 = v12[5];
    v30 = v12[7];
    v76 = v12[6];
    v77 = v30;
    v31 = v12[1];
    v71[0] = *v12;
    v71[1] = v31;
    v32 = v12[3];
    v34 = *v12;
    v33 = v12[1];
    v72 = v12[2];
    v73 = v32;
    v35 = v12[9];
    v47 = v78;
    v48 = v35;
    v43 = v74;
    v44 = v29;
    v45 = v76;
    v46 = v25;
    v39 = v34;
    v40 = v33;
    v70 = *(v11 + 160);
    v60 = *(v11 + 160);
    v80 = *(v12 + 160);
    v49 = *(v12 + 160);
    v41 = v72;
    v42 = v27;
    a3(v61, v38);
    a3(v71, v38);
    v36 = a4(&v50, &v39);
    v81[8] = v47;
    v81[9] = v48;
    v82 = v49;
    v81[4] = v43;
    v81[5] = v44;
    v81[6] = v45;
    v81[7] = v46;
    v81[0] = v39;
    v81[1] = v40;
    v81[2] = v41;
    v81[3] = v42;
    a5(v81);
    v83[8] = v58;
    v83[9] = v59;
    v84 = v60;
    v83[4] = v54;
    v83[5] = v55;
    v83[6] = v56;
    v83[7] = v57;
    v83[0] = v50;
    v83[1] = v51;
    v83[2] = v52;
    v83[3] = v53;
    a5(v83);
    if ((v36 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v12 = (v12 + 168);
    v11 = (v11 + 168);
  }

  return 1;
}

uint64_t sub_1D6351934(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v87 = v2;
  v88 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[9];
    v9 = v5[11];
    v70 = v5[10];
    v71 = v9;
    v10 = v5[11];
    v72 = v5[12];
    v11 = v5[5];
    v12 = v5[7];
    v66 = v5[6];
    v67 = v12;
    v13 = v5[7];
    v14 = v5[9];
    v68 = v5[8];
    v69 = v14;
    v15 = v5[1];
    v16 = v5[3];
    v62 = v5[2];
    v63 = v16;
    v17 = v5[3];
    v18 = v5[5];
    v64 = v5[4];
    v65 = v18;
    v19 = v5[1];
    v61[0] = *v5;
    v61[1] = v19;
    v58 = v70;
    v59 = v10;
    v60 = v5[12];
    v54 = v66;
    v55 = v13;
    v56 = v68;
    v57 = v8;
    v50 = v62;
    v51 = v17;
    v52 = v64;
    v53 = v11;
    v48 = v61[0];
    v49 = v15;
    v20 = v6[9];
    v21 = v6[11];
    v82 = v6[10];
    v83 = v21;
    v22 = v6[11];
    v84 = v6[12];
    v23 = v6[5];
    v24 = v6[7];
    v78 = v6[6];
    v79 = v24;
    v25 = v6[7];
    v26 = v6[9];
    v80 = v6[8];
    v81 = v26;
    v27 = v6[1];
    v28 = v6[3];
    v74 = v6[2];
    v75 = v28;
    v29 = v6[3];
    v30 = v6[5];
    v76 = v6[4];
    v77 = v30;
    v31 = v6[1];
    v73[0] = *v6;
    v73[1] = v31;
    v45 = v82;
    v46 = v22;
    v47 = v6[12];
    v41 = v78;
    v42 = v25;
    v43 = v80;
    v44 = v20;
    v37 = v74;
    v38 = v29;
    v39 = v76;
    v40 = v23;
    v35 = v73[0];
    v36 = v27;
    sub_1D5D0B3B8(v61, v34);
    sub_1D5D0B3B8(v73, v34);
    v32 = _s8NewsFeed27FormatLayeredMediaNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(&v48, &v35);
    v85[10] = v45;
    v85[11] = v46;
    v85[12] = v47;
    v85[6] = v41;
    v85[7] = v42;
    v85[9] = v44;
    v85[8] = v43;
    v85[2] = v37;
    v85[3] = v38;
    v85[5] = v40;
    v85[4] = v39;
    v85[1] = v36;
    v85[0] = v35;
    sub_1D5D0B670(v85);
    v86[10] = v58;
    v86[11] = v59;
    v86[12] = v60;
    v86[6] = v54;
    v86[7] = v55;
    v86[8] = v56;
    v86[9] = v57;
    v86[2] = v50;
    v86[3] = v51;
    v86[4] = v52;
    v86[5] = v53;
    v86[0] = v48;
    v86[1] = v49;
    sub_1D5D0B670(v86);
    if ((v32 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 13;
    v5 += 13;
  }

  return 1;
}

BOOL sub_1D6351B68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v5 = 0;
      do
      {
        v6 = *(a1 + v5 + 40);
        v7 = *(a1 + v5 + 48);
        v8 = *(a1 + v5 + 56);
        v9 = *(a1 + v5 + 66);
        v10 = *(a1 + v5 + 64);
        v11 = *(a1 + v5 + 67);
        v31[0] = *(a1 + v5 + 32);
        v31[1] = v6;
        v32 = v7;
        v33 = v8;
        v35 = v9;
        v34 = v10;
        v36 = v11;
        v12 = *(a2 + v5 + 40);
        v13 = v10 | (v9 << 16);
        LOBYTE(v9) = *(a2 + v5 + 48);
        v14 = *(a2 + v5 + 56);
        v15 = *(a2 + v5 + 66);
        v16 = *(a2 + v5 + 64);
        v17 = v16 | (v15 << 16);
        v18 = *(a2 + v5 + 67);
        v25[0] = *(a2 + v5 + 32);
        v25[1] = v12;
        v26 = v9;
        v27 = v14;
        v29 = v15;
        v28 = v16;
        v30 = v18;

        sub_1D62B7DCC(v8, v13);

        sub_1D62B7DCC(v14, v17);
        v19 = _s8NewsFeed28FormatSupplementaryNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(v31, v25);
        v20 = v27;
        v21 = v28 | (v29 << 16);

        sub_1D62B6F70(v20, v21);
        v22 = v33;
        v23 = v34 | (v35 << 16);

        sub_1D62B6F70(v22, v23);
        if (!v19)
        {
          break;
        }

        v5 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v19;
}

void sub_1D6351CF4(uint64_t a1, uint64_t a2)
{
  v80 = type metadata accessor for FormatVersionRequirement(0);
  v4 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v5);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BF78(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v65 - v10;
  sub_1D66F4EB8(0, &qword_1EDF0CE38, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v84 = &v65 - v15;
  v16 = type metadata accessor for FormatOption();
  v81 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v85 = (&v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19, v20);
  v86 = (&v65 - v22);
  v23 = *(a2 + 16);
  v83 = *(a1 + 16);
  if (v83 == v23 && v83 && a1 != a2)
  {
    v75 = v21;
    v76 = v13;
    v71 = v7;
    v72 = v11;
    v82 = 0;
    v24 = a1 + 32;
    v25 = a2 + 32;
    v26 = &qword_1EDF44860;
    v79 = (v4 + 48);
    while (v82 != v83)
    {
      v27 = (v24 + 32 * v82);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v27 + 16);
      v31 = v27[3];
      v32 = v25 + 32 * v82;
      v33 = *(v32 + 8);
      v34 = *(v32 + 16);
      v35 = *(v32 + 24);
      if (v28 != *v32 || v29 != v33)
      {
        v37 = v31;
        v38 = v26;
        v39 = v29;
        v40 = v24;
        v41 = sub_1D72646CC();
        v24 = v40;
        v29 = v39;
        v26 = v38;
        v31 = v37;
        if ((v41 & 1) == 0)
        {
          return;
        }
      }

      if (v30 == 2)
      {
        v42 = v79;
        if (v34 != 2)
        {
          return;
        }
      }

      else
      {
        if (v34 == 2)
        {
          return;
        }

        v43 = v34 ^ v30;
        v42 = v79;
        if (v43)
        {
          return;
        }
      }

      if (v31)
      {
        if (!v35)
        {
          return;
        }

        v44 = *(v31 + 16);
        if (v44 != *(v35 + 16))
        {
          return;
        }

        if (v44 && v31 != v35)
        {
          v66 = v25;
          v67 = v24;
          v68 = v29;
          v45 = (*(v81 + 80) + 32) & ~*(v81 + 80);
          v77 = v35 + v45;
          v78 = v31 + v45;

          v69 = v33;

          swift_bridgeObjectRetain_n();
          v46 = 0;
          v73 = v44;
          v74 = v35;
          v70 = v31;
          while (v46 < *(v31 + 16))
          {
            v47 = *(v81 + 72) * v46;
            sub_1D6706BB4(v78 + v47, v86, type metadata accessor for FormatOption);
            if (v46 >= *(v35 + 16))
            {
              goto LABEL_53;
            }

            v48 = v77 + v47;
            v49 = v85;
            sub_1D6706BB4(v48, v85, type metadata accessor for FormatOption);
            if ((*v86 != *v49 || v86[1] != v49[1]) && (sub_1D72646CC() & 1) == 0)
            {
              goto LABEL_50;
            }

            v50 = v86[2];
            v87 = v85[2];
            v88 = v50;

            LOBYTE(v50) = static FormatOptionValue.== infix(_:_:)(&v88, &v87);

            if ((v50 & 1) == 0)
            {
              goto LABEL_50;
            }

            v51 = v86[3];
            v52 = v85[3];
            if (v51 == 1)
            {
              if (v52 != 1)
              {
                goto LABEL_50;
              }
            }

            else
            {
              if (v52 == 1)
              {
                goto LABEL_50;
              }

              if (v51)
              {
                if (!v52)
                {
                  goto LABEL_50;
                }

                v53 = sub_1D5BFC390(v51, v52);
                sub_1D66A5FF8(v52);
                if ((v53 & 1) == 0)
                {
                  goto LABEL_50;
                }
              }

              else if (v52)
              {
                goto LABEL_50;
              }
            }

            v54 = *(v75 + 28);
            v55 = *(v76 + 48);
            v56 = v84;
            sub_1D5CDE2EC(v86 + v54, v84, v26, type metadata accessor for FormatVersionRequirement);
            sub_1D5CDE2EC(v85 + v54, v56 + v55, v26, type metadata accessor for FormatVersionRequirement);
            v57 = *v42;
            v58 = v80;
            if ((*v42)(v56, 1, v80) == 1)
            {
              if (v57(v84 + v55, 1, v58) != 1)
              {
                goto LABEL_49;
              }

              sub_1D5D35558(v84, v26, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720], sub_1D5B5BF78);
              v59 = v73;
              v35 = v74;
            }

            else
            {
              v60 = v84;
              v61 = v72;
              sub_1D5CDE2EC(v84, v72, v26, type metadata accessor for FormatVersionRequirement);
              if (v57(v60 + v55, 1, v58) == 1)
              {
                sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);
LABEL_49:
                sub_1D66F4424(v84, &qword_1EDF0CE38, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
LABEL_50:
                sub_1D5D2CFE8(v85, type metadata accessor for FormatOption);
                sub_1D5D2CFE8(v86, type metadata accessor for FormatOption);

                swift_bridgeObjectRelease_n();
                return;
              }

              v62 = v84;
              v63 = v71;
              sub_1D5C8F76C(v84 + v55, v71, type metadata accessor for FormatVersionRequirement);
              v64 = sub_1D6024840(v61, v63);
              sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);
              sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);
              sub_1D5D35558(v62, v26, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720], sub_1D5B5BF78);
              v59 = v73;
              v35 = v74;
              v42 = v79;
              v31 = v70;
              if ((v64 & 1) == 0)
              {
                goto LABEL_50;
              }
            }

            ++v46;
            sub_1D5D2CFE8(v85, type metadata accessor for FormatOption);
            sub_1D5D2CFE8(v86, type metadata accessor for FormatOption);
            if (v59 == v46)
            {

              swift_bridgeObjectRelease_n();
              v24 = v67;
              v25 = v66;
              goto LABEL_7;
            }
          }

          __break(1u);
LABEL_53:
          __break(1u);
          break;
        }
      }

      else if (v35)
      {
        return;
      }

LABEL_7:
      if (++v82 == v83)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D6352518(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v31 = v2;
  v32 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v23[0] = *v5;
    v23[1] = v8;
    v24[0] = v5[2];
    v9 = v24[0];
    *(v24 + 11) = *(v5 + 43);
    v20 = v23[0];
    v21 = v8;
    v22[0] = v9;
    *(v22 + 11) = *(v24 + 11);
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    *(v26 + 11) = *(v6 + 43);
    v13 = *(v26 + 11);
    v25[1] = v11;
    v26[0] = v12;
    v25[0] = v10;
    v17 = v10;
    v18 = v11;
    v19[0] = v12;
    *(v19 + 11) = v13;
    sub_1D619392C(v23, v16);
    sub_1D619392C(v25, v16);
    v14 = _s8NewsFeed23FormatWebEmbedNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(&v20, &v17);
    v27[0] = v17;
    v27[1] = v18;
    v28[0] = v19[0];
    *(v28 + 11) = *(v19 + 11);
    sub_1D6193964(v27);
    v29[0] = v20;
    v29[1] = v21;
    v30[0] = v22[0];
    *(v30 + 11) = *(v22 + 11);
    sub_1D6193964(v29);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v5 += 4;
    v6 += 4;
  }

  return 1;
}

uint64_t sub_1D6352660(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v51 = v2;
  v52 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  v7 = v4 - 1;
  while (1)
  {
    v8 = v5[1];
    v44 = *v5;
    v45 = v8;
    v9 = v5[3];
    v46 = v5[2];
    v47 = v9;
    v10 = v44;
    v11 = *(&v45 + 1);
    v12 = v45;
    v13 = v6[3];
    v49 = v6[2];
    v50 = v13;
    v14 = v6[1];
    v48[0] = *v6;
    v48[1] = v14;
    v15 = v48[0];
    v16 = *(&v14 + 1);
    v17 = v14;
    v35 = v5;
    v36 = v7;
    if ((BYTE8(v45) & 4) != 0)
    {
      if ((BYTE8(v14) & 4) == 0)
      {
LABEL_28:
        sub_1D62B7098(v44, *(&v44 + 1), v45, SBYTE8(v45));
        sub_1D62B7098(v15, *(&v15 + 1), v17, v16);
        sub_1D62B7130(v10, *(&v10 + 1), v12, v11);
        sub_1D62B7130(v15, *(&v15 + 1), v17, v16);
        return 0;
      }

      *&v37 = v44;
      v43 = *&v48[0];
      sub_1D62B7098(*&v48[0], *(&v48[0] + 1), v14, SBYTE8(v14));
      sub_1D62B7098(v10, *(&v10 + 1), v12, v11);
      sub_1D62B7098(v10, *(&v10 + 1), v12, v11);
      sub_1D62B7098(v15, *(&v15 + 1), v17, v16);
      sub_1D5CFBAA8(&v44, &v40);
      sub_1D5CFBAA8(v48, &v40);
      v20 = &v37;
      v21 = &v43;
    }

    else
    {
      if ((BYTE8(v14) & 4) != 0)
      {
        goto LABEL_28;
      }

      sub_1D62B7098(*&v48[0], *(&v48[0] + 1), v14, SBYTE8(v14));
      sub_1D62B7098(v10, *(&v10 + 1), v12, v11);
      sub_1D62B7098(v10, *(&v10 + 1), v12, v11);
      sub_1D62B7098(v15, *(&v15 + 1), v17, v16);
      sub_1D5CFBAA8(&v44, &v40);
      sub_1D5CFBAA8(v48, &v40);
      if ((sub_1D6353004(v10, v15) & 1) == 0 || (v18 = *(*(&v10 + 1) + 32), v40 = *(*(&v10 + 1) + 16), v41 = v18, v42[0] = *(*(&v10 + 1) + 48), *(v42 + 15) = *(*(&v10 + 1) + 63), v19 = *(*(&v15 + 1) + 32), v37 = *(*(&v15 + 1) + 16), v38 = v19, v39[0] = *(*(&v15 + 1) + 48), *(v39 + 15) = *(*(&v15 + 1) + 63), (static FormatCommandBinding.== infix(_:_:)(&v40, &v37) & 1) == 0) || (sub_1D6359F3C(v12, v17, static FormatTextContent.== infix(_:_:)) & 1) == 0)
      {
        sub_1D62B7130(v10, *(&v10 + 1), v12, v11);
        sub_1D62B7130(v15, *(&v15 + 1), v17, v16);
        sub_1D62B7130(v15, *(&v15 + 1), v17, v16);
        sub_1D62B7130(v10, *(&v10 + 1), v12, v11);
LABEL_32:
        sub_1D5D08954(v48);
        sub_1D5D08954(&v44);
        return 0;
      }

      *&v40 = v11;
      *&v37 = v16;
      v20 = &v40;
      v21 = &v37;
    }

    v22 = static FormatTextContent.== infix(_:_:)(v20, v21);
    sub_1D62B7130(v10, *(&v10 + 1), v12, v11);
    sub_1D62B7130(v15, *(&v15 + 1), v17, v16);
    sub_1D62B7130(v15, *(&v15 + 1), v17, v16);
    sub_1D62B7130(v10, *(&v10 + 1), v12, v11);
    if ((v22 & 1) == 0)
    {
      goto LABEL_32;
    }

    v23 = v46;
    v24 = v47;
    v25 = v49;
    v26 = v50;
    if ((v47 & 0x2000000000000000) == 0)
    {
      if ((v50 & 0x2000000000000000) != 0)
      {
        goto LABEL_29;
      }

      v27 = *(v46 + 32);
      v40 = *(v46 + 16);
      v41 = v27;
      v42[0] = *(v46 + 48);
      *(v42 + 15) = *(v46 + 63);
      v28 = *(v49 + 32);
      v37 = *(v49 + 16);
      v38 = v28;
      v39[0] = *(v49 + 48);
      *(v39 + 15) = *(v49 + 63);
      sub_1D62B6FC0(v49, *(&v49 + 1), v50);
      sub_1D62B6FC0(v23, *(&v23 + 1), v24);
      sub_1D62B6FC0(v23, *(&v23 + 1), v24);
      sub_1D62B6FC0(v25, *(&v25 + 1), v26);
      if (static FormatCommandBinding.== infix(_:_:)(&v40, &v37) & 1) != 0 && (sub_1D6352BBC(*(&v23 + 1), *(&v25 + 1)))
      {
        *&v40 = v24;
        *&v37 = v26;
        goto LABEL_21;
      }

      sub_1D62B703C(v23, *(&v23 + 1), v24);
      sub_1D62B703C(v25, *(&v25 + 1), v26);
      sub_1D62B703C(v25, *(&v25 + 1), v26);
      v33 = *(&v23 + 1);
      v32 = v23;
      v34 = v24;
      goto LABEL_31;
    }

    if ((v50 & 0x2000000000000000) == 0)
    {
LABEL_29:
      sub_1D62B6FC0(v46, *(&v46 + 1), v47);
      sub_1D62B6FC0(v25, *(&v25 + 1), v26);
      sub_1D62B703C(v23, *(&v23 + 1), v24);
      v33 = *(&v25 + 1);
      v32 = v25;
      v34 = v26;
LABEL_31:
      sub_1D62B703C(v32, v33, v34);
      goto LABEL_32;
    }

    *&v40 = v46;
    *&v37 = v49;
    sub_1D62B6FC0(v49, *(&v49 + 1), v50);
    sub_1D62B6FC0(v23, *(&v23 + 1), v24);
    sub_1D62B6FC0(v23, *(&v23 + 1), v24);
    sub_1D62B6FC0(v25, *(&v25 + 1), v26);
LABEL_21:
    v29 = static FormatSyncImageContent.== infix(_:_:)(&v40, &v37);
    sub_1D62B703C(v23, *(&v23 + 1), v24);
    sub_1D62B703C(v25, *(&v25 + 1), v26);
    sub_1D62B703C(v25, *(&v25 + 1), v26);
    sub_1D62B703C(v23, *(&v23 + 1), v24);
    if ((v29 & 1) == 0)
    {
      goto LABEL_32;
    }

    v30 = sub_1D6FB6D20(*(&v47 + 1), *(&v50 + 1));
    sub_1D5D08954(v48);
    sub_1D5D08954(&v44);
    if ((v30 & 1) == 0)
    {
      return 0;
    }

    if (!v36)
    {
      return 1;
    }

    v7 = v36 - 1;
    v6 += 4;
    v5 = v35 + 4;
  }
}

uint64_t sub_1D6352BBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    v13 = 0;
    return v13 & 1;
  }

  if (!v2 || a1 == a2)
  {
    v13 = 1;
    return v13 & 1;
  }

  v3 = 0;
  while (1)
  {
    v5 = *(a1 + v3 + 32);
    v4 = *(a1 + v3 + 40);
    v6 = *(a1 + v3 + 48);
    v7 = *(a1 + v3 + 56);
    v9 = *(a2 + v3 + 32);
    v8 = *(a2 + v3 + 40);
    v10 = *(a2 + v3 + 48);
    v11 = *(a2 + v3 + 56);
    v24[1] = v5;
    v24[2] = v4;
    v25 = v6;
    v26 = v7;
    v24[0] = v11;
    v23 = v10;
    if (v6)
    {
      if (v6 == 1)
      {
        if (v10 == 1)
        {
          sub_1D5D03180(v5, v4, 1);

          sub_1D5D03180(v9, v8, 1);

          sub_1D5D07BA8(v5, v4, 1);
          sub_1D5D07BA8(v9, v8, 1);
          if ((v9 ^ v5))
          {
            sub_1D5D07BA8(v9, v8, 1);

            v18 = v5;
            v19 = v4;
            v20 = 1;
            goto LABEL_29;
          }

          goto LABEL_18;
        }

        sub_1D5D03180(v9, v8, v10);
        v15 = v5;
        v16 = v4;
        v17 = 1;
LABEL_27:
        sub_1D5D07BA8(v15, v16, v17);
        sub_1D5D07BA8(v9, v8, v10);
        v13 = 0;
        return v13 & 1;
      }

      if (v10 != 2)
      {
        sub_1D5D03180(v9, v8, v10);
        v15 = v5;
        v16 = v4;
        v17 = 2;
        goto LABEL_27;
      }

      sub_1D5D03180(v5, v4, 2);

      sub_1D5D03180(v9, v8, 2);

      sub_1D5D07BA8(v5, v4, 2);
      sub_1D5D07BA8(v9, v8, 2);
      if (v5 != v9)
      {
        sub_1D5D07BA8(v9, v8, 2);

        v18 = v5;
        v19 = v4;
        v20 = 2;
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10)
    {
      sub_1D5D03180(v9, v8, v10);
      sub_1D5D03180(v5, v4, 0);
      v15 = v5;
      v16 = v4;
      v17 = 0;
      goto LABEL_27;
    }

    if (v5 == v9 && v4 == v8)
    {
      sub_1D5D03180(v5, v4, 0);

      sub_1D5D03180(v5, v4, 0);

      sub_1D5D03180(v5, v4, 0);
      sub_1D5D03180(v5, v4, 0);
      sub_1D5D07BA8(v5, v4, 0);
      sub_1D5D07BA8(v5, v4, 0);
      goto LABEL_18;
    }

    v12 = sub_1D72646CC();
    sub_1D5D03180(v5, v4, 0);

    sub_1D5D03180(v9, v8, 0);

    sub_1D5D03180(v9, v8, 0);
    sub_1D5D03180(v5, v4, 0);
    sub_1D5D07BA8(v5, v4, 0);
    sub_1D5D07BA8(v9, v8, 0);
    if ((v12 & 1) == 0)
    {
      break;
    }

LABEL_18:
    v13 = static FormatSyncImageContent.== infix(_:_:)(&v26, v24);
    sub_1D5D07BA8(v9, v8, v23);

    sub_1D5D07BA8(v5, v4, v6);

    if (v13)
    {
      v3 += 32;
      if (--v2)
      {
        continue;
      }
    }

    return v13 & 1;
  }

  sub_1D5D07BA8(v9, v8, 0);

  v18 = v5;
  v19 = v4;
  v20 = 0;
LABEL_29:
  sub_1D5D07BA8(v18, v19, v20);

  v13 = 0;
  return v13 & 1;
}

uint64_t sub_1D6353004(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_13:
    v15 = 0;
    return v15 & 1;
  }

  if (v2 && a1 != a2)
  {
    v3 = v2 - 1;
    v4 = (a1 + 56);
    v5 = (a2 + 56);
    while (1)
    {
      v17 = v3;
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = *(v4 - 2);
      v10 = *(v5 - 3);
      v9 = *(v5 - 2);
      v11 = *(v5 - 1);
      v12 = *v5;
      *&v20[0] = *(v4 - 3);
      *&v18[0] = v10;

      swift_retain_n();
      swift_retain_n();

      LOBYTE(v10) = static FormatExpression.== infix(_:_:)(v20, v18);

      if ((v10 & 1) == 0)
      {
        break;
      }

      v13 = *(v8 + 32);
      v20[0] = *(v8 + 16);
      v20[1] = v13;
      v21[0] = *(v8 + 48);
      *(v21 + 15) = *(v8 + 63);
      v14 = *(v9 + 32);
      v18[0] = *(v9 + 16);
      v18[1] = v14;
      v19[0] = *(v9 + 48);
      *(v19 + 15) = *(v9 + 63);
      if ((static FormatCommandBinding.== infix(_:_:)(v20, v18) & 1) == 0 || (sub_1D6359F3C(v6, v11, static FormatTextContent.== infix(_:_:)) & 1) == 0)
      {
        break;
      }

      *&v20[0] = v7;
      *&v18[0] = v12;
      v15 = static FormatTextContent.== infix(_:_:)(v20, v18);

      if (v15)
      {
        v3 = v17 - 1;
        v4 += 4;
        v5 += 4;
        if (v17)
        {
          continue;
        }
      }

      return v15 & 1;
    }

    goto LABEL_13;
  }

  v15 = 1;
  return v15 & 1;
}

uint64_t sub_1D635324C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v83 = v2;
  v84 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[9];
    v9 = v5[7];
    v64 = v5[8];
    v65 = v8;
    v10 = v5[9];
    v66 = v5[10];
    v11 = v5[5];
    v12 = v5[3];
    v60 = v5[4];
    v61 = v11;
    v13 = v5[5];
    v14 = v5[7];
    v62 = v5[6];
    v63 = v14;
    v15 = v5[1];
    v57[0] = *v5;
    v57[1] = v15;
    v16 = v5[3];
    v18 = *v5;
    v17 = v5[1];
    v58 = v5[2];
    v59 = v16;
    v53 = v64;
    v54 = v10;
    v55 = v5[10];
    v49 = v60;
    v50 = v13;
    v51 = v62;
    v52 = v9;
    v45 = v18;
    v46 = v17;
    v47 = v58;
    v48 = v12;
    v19 = v6[9];
    v20 = v6[7];
    v75 = v6[8];
    v76 = v19;
    v21 = v6[9];
    v77 = v6[10];
    v22 = v6[5];
    v23 = v6[3];
    v71 = v6[4];
    v72 = v22;
    v24 = v6[5];
    v25 = v6[7];
    v73 = v6[6];
    v74 = v25;
    v26 = v6[1];
    v68[0] = *v6;
    v68[1] = v26;
    v27 = v6[3];
    v29 = *v6;
    v28 = v6[1];
    v69 = v6[2];
    v70 = v27;
    v41 = v75;
    v42 = v21;
    v43 = v6[10];
    v37 = v71;
    v38 = v24;
    v39 = v73;
    v40 = v20;
    v33 = v29;
    v34 = v28;
    v67 = *(v5 + 176);
    v56 = *(v5 + 176);
    v78 = *(v6 + 176);
    v44 = *(v6 + 176);
    v35 = v69;
    v36 = v23;
    sub_1D62B7804(v57, v32);
    sub_1D62B7804(v68, v32);
    v30 = _s8NewsFeed24FormatGroupNodeMaskStyleC8SelectorV2eeoiySbAE_AEtFZ_0(&v45, &v33);
    v79[8] = v41;
    v79[9] = v42;
    v79[10] = v43;
    v80 = v44;
    v79[4] = v37;
    v79[5] = v38;
    v79[6] = v39;
    v79[7] = v40;
    v79[0] = v33;
    v79[1] = v34;
    v79[2] = v35;
    v79[3] = v36;
    sub_1D62B7860(v79);
    v81[8] = v53;
    v81[9] = v54;
    v81[10] = v55;
    v82 = v56;
    v81[5] = v50;
    v81[6] = v51;
    v81[7] = v52;
    v81[0] = v45;
    v81[1] = v46;
    v81[2] = v47;
    v81[3] = v48;
    v81[4] = v49;
    sub_1D62B7860(v81);
    if ((v30 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 184);
    v5 = (v5 + 184);
  }

  return 1;
}

uint64_t sub_1D6353478(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v17 = v2;
  v18 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    memcpy(__dst, v5, 0x13AuLL);
    memcpy(v12, v5, 0x13AuLL);
    memcpy(v14, v6, 0x13AuLL);
    memcpy(__src, v6, 0x13AuLL);
    sub_1D60101A0(__dst, v10);
    sub_1D60101A0(v14, v10);
    v8 = _s8NewsFeed20FormatGroupNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(v12, __src);
    memcpy(v15, __src, 0x13AuLL);
    sub_1D60101D8(v15);
    memcpy(v16, v12, 0x13AuLL);
    sub_1D60101D8(v16);
    if (!v8)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 320;
    v5 += 320;
  }

  return 1;
}

uint64_t sub_1D63535A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v93 = v2;
  v94 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 176);
    v9 = *(v5 + 144);
    v72 = *(v5 + 160);
    v73 = v8;
    v10 = *(v5 + 176);
    v74 = *(v5 + 192);
    v11 = *(v5 + 112);
    v12 = *(v5 + 80);
    v68 = *(v5 + 96);
    v69 = v11;
    v13 = *(v5 + 112);
    v14 = *(v5 + 144);
    v70 = *(v5 + 128);
    v71 = v14;
    v15 = *(v5 + 48);
    v16 = *(v5 + 16);
    v64 = *(v5 + 32);
    v65 = v15;
    v17 = *(v5 + 48);
    v18 = *(v5 + 80);
    v66 = *(v5 + 64);
    v67 = v18;
    v19 = *(v5 + 16);
    v63[0] = *v5;
    v63[1] = v19;
    v59 = v72;
    v60 = v10;
    v61 = *(v5 + 192);
    v55 = v68;
    v56 = v13;
    v57 = v70;
    v58 = v9;
    v51 = v64;
    v52 = v17;
    v53 = v66;
    v54 = v12;
    v49 = v63[0];
    v50 = v16;
    v20 = *(v6 + 176);
    v21 = *(v6 + 144);
    v85 = *(v6 + 160);
    v86 = v20;
    v22 = *(v6 + 176);
    v87 = *(v6 + 192);
    v23 = *(v6 + 112);
    v24 = *(v6 + 80);
    v81 = *(v6 + 96);
    v82 = v23;
    v25 = *(v6 + 112);
    v26 = *(v6 + 144);
    v83 = *(v6 + 128);
    v84 = v26;
    v27 = *(v6 + 48);
    v28 = *(v6 + 16);
    v77 = *(v6 + 32);
    v78 = v27;
    v29 = *(v6 + 48);
    v30 = *(v6 + 80);
    v79 = *(v6 + 64);
    v80 = v30;
    v31 = *(v6 + 16);
    v76[0] = *v6;
    v76[1] = v31;
    v45 = v85;
    v46 = v22;
    v47 = *(v6 + 192);
    v41 = v81;
    v42 = v25;
    v43 = v83;
    v44 = v21;
    v37 = v77;
    v38 = v29;
    v39 = v79;
    v40 = v24;
    v75 = *(v5 + 208);
    v62 = *(v5 + 208);
    v88 = *(v6 + 208);
    v48 = *(v6 + 208);
    v35 = v76[0];
    v36 = v28;
    sub_1D5D0B0E4(v63, v34);
    sub_1D5D0B0E4(v76, v34);
    v32 = _s8NewsFeed20FormatImageNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(&v49, &v35);
    v89[10] = v45;
    v89[11] = v46;
    v89[12] = v47;
    v90 = v48;
    v89[6] = v41;
    v89[7] = v42;
    v89[8] = v43;
    v89[9] = v44;
    v89[2] = v37;
    v89[3] = v38;
    v89[4] = v39;
    v89[5] = v40;
    v89[0] = v35;
    v89[1] = v36;
    sub_1D5D0B1AC(v89);
    v91[10] = v59;
    v91[11] = v60;
    v91[12] = v61;
    v91[6] = v55;
    v91[7] = v56;
    v91[8] = v57;
    v91[9] = v58;
    v91[2] = v51;
    v91[3] = v52;
    v91[4] = v53;
    v91[5] = v54;
    v91[0] = v49;
    v92 = v62;
    v91[1] = v50;
    sub_1D5D0B1AC(v91);
    if (!v32)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 216;
    v5 += 216;
  }

  return 1;
}

uint64_t sub_1D6353814(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v65 = v2;
  v66 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[7];
    v9 = v5[5];
    v50 = v5[6];
    v51 = v8;
    v10 = v5[7];
    v52[0] = v5[8];
    *(v52 + 9) = *(v5 + 137);
    v11 = v5[3];
    v12 = v5[1];
    v46 = v5[2];
    v47 = v11;
    v13 = v5[3];
    v14 = v5[5];
    v48 = v5[4];
    v49 = v14;
    v15 = v5[1];
    v45[0] = *v5;
    v45[1] = v15;
    v42 = v50;
    v43 = v10;
    v44[0] = v5[8];
    *(v44 + 9) = *(v5 + 137);
    v38 = v46;
    v39 = v13;
    v40 = v48;
    v41 = v9;
    v36 = v45[0];
    v37 = v12;
    v16 = v6[7];
    v17 = v6[5];
    v58 = v6[6];
    v59 = v16;
    v18 = v6[7];
    v60[0] = v6[8];
    *(v60 + 9) = *(v6 + 137);
    v19 = v6[3];
    v20 = v6[1];
    v54 = v6[2];
    v55 = v19;
    v21 = v6[3];
    v22 = v6[5];
    v56 = v6[4];
    v57 = v22;
    v23 = v6[1];
    v53[0] = *v6;
    v53[1] = v23;
    v33 = v58;
    v34 = v18;
    v35[0] = v6[8];
    *(v35 + 9) = *(v6 + 137);
    v29 = v54;
    v30 = v21;
    v31 = v56;
    v32 = v17;
    v27 = v53[0];
    v28 = v20;
    sub_1D5D044D4(v45, v26);
    sub_1D5D044D4(v53, v26);
    v24 = _s8NewsFeed19FormatViewNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(&v36, &v27);
    v61[6] = v33;
    v61[7] = v34;
    v62[0] = v35[0];
    *(v62 + 9) = *(v35 + 9);
    v61[2] = v29;
    v61[3] = v30;
    v61[4] = v31;
    v61[5] = v32;
    v61[0] = v27;
    v61[1] = v28;
    sub_1D5D04BEC(v61);
    v63[6] = v42;
    v63[7] = v43;
    v64[0] = v44[0];
    *(v64 + 9) = *(v44 + 9);
    v63[2] = v38;
    v63[3] = v39;
    v63[4] = v40;
    v63[5] = v41;
    v63[0] = v36;
    v63[1] = v37;
    sub_1D5D04BEC(v63);
    if (!v24)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 10;
    v5 += 10;
  }

  return 1;
}

uint64_t sub_1D6353A1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v5 = 0;
      do
      {
        v6 = *(a1 + v5 + 40);
        v7 = *(a1 + v5 + 64);
        v8 = *(a1 + v5 + 72);
        v9 = *(a1 + v5 + 80);
        v10 = *(a1 + v5 + 84);
        v24[0] = *(a1 + v5 + 32);
        v24[1] = v6;
        v25 = *(a1 + v5 + 48);
        v26 = v7;
        v27 = v8;
        v29 = v10;
        v28 = v9;
        v11 = *(a2 + v5 + 40);
        v12 = *(a2 + v5 + 64);
        v13 = *(a2 + v5 + 72);
        v14 = *(a2 + v5 + 80);
        v15 = *(a2 + v5 + 84);
        v18[0] = *(a2 + v5 + 32);
        v18[1] = v11;
        v19 = *(a2 + v5 + 48);
        v20 = v12;
        v21 = v13;
        v23 = v15;
        v22 = v14;

        v16 = _s8NewsFeed24FormatAnimationNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(v24, v18);

        if ((v16 & 1) == 0)
        {
          break;
        }

        v5 += 56;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1D6353B70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(v3 - 1);
      v8 = *v3;
      v9 = *(i - 3) == *(v3 - 3) && *(i - 2) == *(v3 - 2);
      if (!v9 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v13 = v7;
      v14 = v5;

      swift_retain_n();
      swift_retain_n();

      v10 = static FormatTextContent.== infix(_:_:)(&v14, &v13);

      if ((v10 & 1) == 0)
      {

        return 0;
      }

      v13 = v8;
      v14 = v6;

      v12 = _s8NewsFeed30FormatTextNodeAlternativeLogicO2eeoiySbAC_ACtFZ_0(&v14, &v13);

      if ((v12 & 1) == 0)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D6353D90(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v61 = v2;
  v62 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[5];
    v9 = v5[7];
    v48 = v5[6];
    v49[0] = v9;
    *(v49 + 10) = *(v5 + 122);
    v10 = v5[1];
    v11 = v5[3];
    v44 = v5[2];
    v45 = v11;
    v12 = v5[3];
    v13 = v5[5];
    v46 = v5[4];
    v47 = v13;
    v14 = v5[1];
    v43[0] = *v5;
    v43[1] = v14;
    v15 = v5[7];
    v41 = v48;
    v42[0] = v15;
    *(v42 + 10) = *(v5 + 122);
    v37 = v44;
    v38 = v12;
    v39 = v46;
    v40 = v8;
    v35 = v43[0];
    v36 = v10;
    v16 = v6[5];
    v17 = v6[7];
    v55 = v6[6];
    v56[0] = v17;
    *(v56 + 10) = *(v6 + 122);
    v18 = v6[1];
    v19 = v6[3];
    v51 = v6[2];
    v52 = v19;
    v20 = v6[3];
    v21 = v6[5];
    v53 = v6[4];
    v54 = v21;
    v22 = v6[1];
    v50[0] = *v6;
    v50[1] = v22;
    v23 = v6[7];
    v33 = v55;
    v34[0] = v23;
    *(v34 + 10) = *(v6 + 122);
    v29 = v51;
    v30 = v20;
    v31 = v53;
    v32 = v16;
    v27 = v50[0];
    v28 = v18;
    sub_1D62B7998(v43, v26);
    sub_1D62B7998(v50, v26);
    v24 = _s8NewsFeed19FormatMicaNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(&v35, &v27);
    v57[6] = v33;
    v58[0] = v34[0];
    *(v58 + 10) = *(v34 + 10);
    v57[2] = v29;
    v57[3] = v30;
    v57[4] = v31;
    v57[5] = v32;
    v57[0] = v27;
    v57[1] = v28;
    sub_1D62B79F4(v57);
    v59[6] = v41;
    v60[0] = v42[0];
    *(v60 + 10) = *(v42 + 10);
    v59[2] = v37;
    v59[3] = v38;
    v59[4] = v39;
    v59[5] = v40;
    v59[0] = v35;
    v59[1] = v36;
    sub_1D62B79F4(v59);
    if (!v24)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 9;
    v5 += 9;
  }

  return 1;
}

void sub_1D6353F70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16) || !v16 || a1 == a2)
  {
    return;
  }

  v61 = &v57 - v12;
  v62 = v15;
  v59 = v14;
  v60 = v13;
  v17 = (a1 + 40);
  for (i = (a2 + 40); ; i += 2)
  {
    v19 = v17 + 2;
    v20 = *v17;
    v22 = *(i - 1);
    v21 = *i;
    *&v68 = *(v17 - 1);
    *&v65 = v22;
    v23 = v21 & 0x3FFFFFFFFFFFFFFFLL;

    swift_retain_n();
    swift_retain_n();

    v24 = static FormatExpression.== infix(_:_:)(&v68, &v65);

    if ((v24 & 1) == 0)
    {
LABEL_35:

      return;
    }

    v25 = v20 >> 62;
    if ((v20 >> 62) <= 1)
    {
      if (v25)
      {
        if (v21 >> 62 != 1)
        {
          goto LABEL_35;
        }

        v43 = *((v20 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v44 = *((v21 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v45 = *(v43 + 32);
        v68 = *(v43 + 16);
        v69 = v45;
        v70[0] = *(v43 + 48);
        *(v70 + 15) = *(v43 + 63);
        v46 = *(v44 + 32);
        v65 = *(v44 + 16);
        v66 = v46;
        v67[0] = *(v44 + 48);
        *(v67 + 15) = *(v44 + 63);
        v47 = static FormatCommandBinding.== infix(_:_:)(&v68, &v65);

        if ((v47 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (v21 >> 62)
        {
          goto LABEL_35;
        }

        v26 = swift_projectBox();
        v27 = swift_projectBox();
        v28 = v26;
        v29 = v61;
        sub_1D6706BB4(v28, v61, type metadata accessor for FormatCommandOpenURL);
        v64 = v23;
        v30 = v62;
        sub_1D6706BB4(v27, v62, type metadata accessor for FormatCommandOpenURL);
        v31 = _s8NewsFeed20FormatCommandOpenURLO2eeoiySbAC_ACtFZ_0(v29, v30);
        sub_1D5D2CFE8(v30, type metadata accessor for FormatCommandOpenURL);
        sub_1D5D2CFE8(v29, type metadata accessor for FormatCommandOpenURL);

        if ((v31 & 1) == 0)
        {
          return;
        }
      }

      goto LABEL_6;
    }

    if (v25 != 2)
    {

      if (v21 != 0xC000000000000000)
      {
        return;
      }

      goto LABEL_6;
    }

    if (v21 >> 62 != 2)
    {
      goto LABEL_35;
    }

    v32 = *((v20 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v33 = *((v20 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v63 = v22;
    v64 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    v34 = *((v21 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v35 = *(v64 + 24);
    v36 = v35 & 0x3FFFFFFFFFFFFFFFLL;

    if ((sub_1D6353F70(v32, v34) & 1) == 0)
    {
LABEL_36:

      goto LABEL_37;
    }

    v37 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      break;
    }

    if (v37)
    {
      if (v35 >> 62 != 1)
      {
        goto LABEL_36;
      }

      v52 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v53 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v54 = *(v52 + 32);
      v68 = *(v52 + 16);
      v69 = v54;
      v70[0] = *(v52 + 48);
      *(v70 + 15) = *(v52 + 63);
      v55 = *(v53 + 32);
      v65 = *(v53 + 16);
      v66 = v55;
      v67[0] = *(v53 + 48);
      *(v67 + 15) = *(v53 + 63);
      v56 = static FormatCommandBinding.== infix(_:_:)(&v68, &v65);

      if ((v56 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      if (v35 >> 62)
      {
        goto LABEL_36;
      }

      v38 = swift_projectBox();
      v39 = swift_projectBox();
      v58 = v34;
      v40 = v59;
      sub_1D6706BB4(v38, v59, type metadata accessor for FormatCommandOpenURL);
      v41 = v60;
      sub_1D6706BB4(v39, v60, type metadata accessor for FormatCommandOpenURL);
      v42 = _s8NewsFeed20FormatCommandOpenURLO2eeoiySbAC_ACtFZ_0(v40, v41);
      sub_1D5D2CFE8(v41, type metadata accessor for FormatCommandOpenURL);
      sub_1D5D2CFE8(v40, type metadata accessor for FormatCommandOpenURL);

      if ((v42 & 1) == 0)
      {
        return;
      }
    }

LABEL_6:
    v17 = v19;
    if (!--v16)
    {
      return;
    }
  }

  if (v37 != 2)
  {

    if (v35 != 0xC000000000000000)
    {
      return;
    }

    goto LABEL_6;
  }

  if (v35 >> 62 != 2)
  {
    goto LABEL_36;
  }

  v48 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v58 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v49 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v50 = *(v36 + 24);

  if (sub_1D6353F70(v58, v49))
  {
    v51 = sub_1D6FB6D20(v48, v50);

    if ((v51 & 1) == 0)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_37:
}

uint64_t sub_1D6354600(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = *(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1);
      if (!v8 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }

      if (v6 >> 62)
      {
        if (v6 >> 62 == 1)
        {
          if (v7 >> 62 != 1)
          {
            return 0;
          }

          v9 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
          v10 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v11 = v7 & 0x3FFFFFFFFFFFFFFFLL;
          v12 = *(v11 + 16);
          v13 = *(v11 + 24);
          v14 = *(v11 + 64);
          *&v64 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          *(&v64 + 1) = v10;
          v15 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
          v65 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v66 = v15;
          LOBYTE(v67) = v9;
          *&v57 = v12;
          *(&v57 + 1) = v13;
          v16 = *(v11 + 48);
          v58 = *(v11 + 32);
          v59 = v16;
          LOBYTE(v60) = v14;

          v17 = _s8NewsFeed17FormatBundleImageV2eeoiySbAC_ACtFZ_0(&v64, &v57);

          if (!v17)
          {
            return 0;
          }
        }

        else
        {
          if (v7 >> 62 != 2)
          {
            return 0;
          }

          v25 = v6 & 0x3FFFFFFFFFFFFFFFLL;
          v26 = *(v25 + 16);
          v56 = *(v25 + 24);
          v27 = v7 & 0x3FFFFFFFFFFFFFFFLL;
          v28 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v29 = *(v27 + 24);
          if (v26 >> 62)
          {
            if (v26 >> 62 == 1)
            {
              if (v28 >> 62 != 1)
              {
                goto LABEL_35;
              }

              v30 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
              v31 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              v32 = v28 & 0x3FFFFFFFFFFFFFFFLL;
              v33 = *(v32 + 16);
              v34 = *(v32 + 24);
              v35 = *(v32 + 64);
              *&v64 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              *(&v64 + 1) = v31;
              v36 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
              v65 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
              v66 = v36;
              LOBYTE(v67) = v30;
              *&v57 = v33;
              *(&v57 + 1) = v34;
              v37 = *(v32 + 48);
              v58 = *(v32 + 32);
              v59 = v37;
              LOBYTE(v60) = v35;

              swift_retain_n();

              v38 = _s8NewsFeed17FormatBundleImageV2eeoiySbAC_ACtFZ_0(&v64, &v57);

              if (!v38)
              {
LABEL_37:

                goto LABEL_38;
              }
            }

            else
            {
              if (v28 >> 62 != 2)
              {
LABEL_35:

LABEL_38:

                return 0;
              }

              v46 = v26 & 0x3FFFFFFFFFFFFFFFLL;
              v47 = *(v46 + 24);
              v48 = v28 & 0x3FFFFFFFFFFFFFFFLL;
              v50 = *(v48 + 16);
              v49 = *(v48 + 24);
              *&v64 = *(v46 + 16);
              *(&v64 + 1) = v47;
              *&v57 = v50;
              *(&v57 + 1) = v49;

              swift_retain_n();

              if ((static FormatSyncImageContent.== infix(_:_:)(&v64, &v57) & 1) == 0)
              {

                goto LABEL_38;
              }

              v55 = v29;
              v51 = *(&v64 + 1);
              v52 = *(&v57 + 1);

              v54 = sub_1D6354600(v51, v52);

              if ((v54 & 1) == 0)
              {
                goto LABEL_37;
              }

              v29 = v55;
            }
          }

          else
          {
            if (v28 >> 62)
            {
              return 0;
            }

            v39 = *(v28 + 96);
            v61 = *(v28 + 80);
            v62 = v39;
            v63 = *(v28 + 112);
            v40 = *(v28 + 32);
            v57 = *(v28 + 16);
            v58 = v40;
            v41 = *(v28 + 64);
            v59 = *(v28 + 48);
            v60 = v41;
            v42 = *(v26 + 96);
            v68 = *(v26 + 80);
            v69 = v42;
            v70 = *(v26 + 112);
            v43 = *(v26 + 32);
            v64 = *(v26 + 16);
            v65 = v43;
            v44 = *(v26 + 64);
            v66 = *(v26 + 48);
            v67 = v44;

            swift_retain_n();

            v45 = _s8NewsFeed17FormatSymbolImageV2eeoiySbAC_ACtFZ_0(&v64, &v57);

            if ((v45 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v5 = sub_1D6354600(v56, v29);

          swift_bridgeObjectRelease_n();
          if ((v5 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v7 >> 62)
        {
          return 0;
        }

        v18 = *(v7 + 96);
        v61 = *(v7 + 80);
        v62 = v18;
        v63 = *(v7 + 112);
        v19 = *(v7 + 32);
        v57 = *(v7 + 16);
        v58 = v19;
        v20 = *(v7 + 64);
        v59 = *(v7 + 48);
        v60 = v20;
        v21 = *(v6 + 96);
        v68 = *(v6 + 80);
        v69 = v21;
        v70 = *(v6 + 112);
        v22 = *(v6 + 32);
        v64 = *(v6 + 16);
        v65 = v22;
        v23 = *(v6 + 64);
        v66 = *(v6 + 48);
        v67 = v23;

        v24 = _s8NewsFeed17FormatSymbolImageV2eeoiySbAC_ACtFZ_0(&v64, &v57);

        if ((v24 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D6354AF4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = (v4 + 24 * v3);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = (v5 + 24 * v3);
    v11 = v10[2];
    v12 = v7 == *v10 && v8 == v10[1];
    if (!v12 && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }

    if (v9)
    {
      if (v9 == 1)
      {
        if (v11 != 1)
        {
          sub_1D5DEA234(v11);
          v23 = 1;
LABEL_51:
          sub_1D5CBF568(v23);
          v9 = v11;
LABEL_52:
          sub_1D5CBF568(v9);
          return 0;
        }

        v13 = 1;
      }

      else if (v9 == 2)
      {
        if (v11 != 2)
        {
          sub_1D5DEA234(v11);
          v23 = 2;
          goto LABEL_51;
        }

        v13 = 2;
      }

      else
      {
        if (v11 < 3 || (v14 = *(v9 + 16), v14 != *(v11 + 16)))
        {
          sub_1D5DEA234(v11);
          sub_1D5DEA234(v9);
          v23 = v9;
          goto LABEL_51;
        }

        if (v14)
        {
          v15 = v9 == v11;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          v24 = v5;
          v25 = v4;
          v26 = v2;
          sub_1D5DEA234(v11);
          sub_1D5DEA234(v9);

          sub_1D5DEA234(v9);

          result = sub_1D5DEA234(v11);
          v16 = 0;
          v17 = (v9 + 40);
          v18 = (v11 + 40);
          v27 = v14;
          while (1)
          {
            if (v16 >= *(v9 + 16))
            {
              goto LABEL_56;
            }

            if (v16 >= *(v11 + 16))
            {
              goto LABEL_57;
            }

            v19 = *(v17 - 1);
            v20 = *v17;
            v21 = *(v18 - 1);
            v22 = *v18;
            if (*v17)
            {
              if ((*v18 & 1) == 0)
              {
                sub_1D62B72CC(*(v17 - 1), 1);
                sub_1D62B72CC(v21, 0);
                sub_1D62B72CC(v19, 1);
                sub_1D62B72CC(v21, 0);
LABEL_46:
                sub_1D62B72BC(v19, v20);
                sub_1D62B72BC(v21, v20 ^ 1);
                sub_1D62B72BC(v21, v20 ^ 1);
LABEL_47:
                sub_1D62B72BC(v19, v20);
                sub_1D5CBF568(v9);
                sub_1D5CBF568(v11);

                sub_1D5CBF568(v11);

                goto LABEL_52;
              }

              sub_1D62B72CC(v19, 1);
              sub_1D62B72CC(v21, 1);
              v14 = v27;
              if ((0x29282F2A2D2BuLL >> (8 * v19)) != (0x29282F2A2D2BuLL >> (8 * v21)))
              {
                goto LABEL_47;
              }
            }

            else
            {
              v30 = *(v17 - 1);
              v31 = 0;
              if (v22)
              {
                sub_1D62B72CC(v19, 0);
                sub_1D62B72CC(v21, 1);
                sub_1D62B72CC(v19, 0);
                sub_1D62B72CC(v21, 1);
                sub_1D62B72CC(v19, 0);

                goto LABEL_46;
              }

              v29 = v21;
              sub_1D62B72CC(v19, 0);
              sub_1D62B72CC(v21, 0);
              sub_1D62B72CC(v19, 0);
              sub_1D62B72CC(v21, 0);
              sub_1D62B72CC(v19, 0);
              v28 = static FormatFloat.== infix(_:_:)(&v30, &v29);

              sub_1D62B72BC(v19, 0);
              sub_1D62B72BC(v21, 0);
              if ((v28 & 1) == 0)
              {
                goto LABEL_47;
              }
            }

            ++v16;
            result = sub_1D62B72BC(v19, v20);
            v17 += 16;
            v18 += 16;
            if (v14 == v16)
            {
              sub_1D5CBF568(v9);
              sub_1D5CBF568(v11);

              sub_1D5CBF568(v11);

              v11 = v9;
              v4 = v25;
              v2 = v26;
              v5 = v24;
              goto LABEL_29;
            }
          }
        }

        sub_1D5DEA234(v11);
        sub_1D5DEA234(v9);
        v13 = v9;
      }
    }

    else
    {
      if (v11)
      {
        sub_1D5DEA234(v11);
        v23 = 0;
        goto LABEL_51;
      }

      v13 = 0;
    }

    sub_1D5CBF568(v13);
LABEL_29:
    ++v3;
    result = sub_1D5CBF568(v11);
    if (v3 == v2)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}