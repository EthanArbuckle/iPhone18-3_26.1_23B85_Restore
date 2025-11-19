char *sub_255794758(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3068, &qword_2557B1FF0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_255794864(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3060, &qword_2557B1FE8);
  v10 = *(type metadata accessor for SLAMScript(0) - 8);
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
  v15 = *(type metadata accessor for SLAMScript(0) - 8);
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

uint64_t sub_255794A3C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_255794330(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_255794B4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255794B94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255794BF4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = sub_2557B09D8();
  v4 = 0;
  return v3 | (v4 << 8);
}

uint64_t sub_255794C7C@<X0>(void *a1@<X8>)
{
  v363 = *MEMORY[0x277D85DE8];
  type metadata accessor for Select();
  swift_allocObject();
  v3 = sub_25578C0EC(1);
  sub_255792F64(v3, &unk_286790820);
  if (v1)
  {

LABEL_3:

    goto LABEL_4;
  }

  *v329 = 0;
  v6 = [objc_opt_self() embeddedSecureElementWithError_];
  v7 = *v329;
  if (!v6)
  {
LABEL_9:
    v11 = v7;
    sub_2557B0908();

    swift_willThrow();
    goto LABEL_3;
  }

  v8 = v6;
  v9 = *v329;
  v7 = [v8 info];

  if (v7)
  {
    v10 = [v7 deviceType];
    if (v10 > 0xFF)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  v280 = qword_2557B2328[sub_2557AE130(v10)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2557B1770;
  v290 = v7;
  v281 = a1;
  if (v7 && (v13 = [v7 sequenceCounter]) != 0)
  {
    v14 = v13;
    v15 = [v13 unsignedShortValue];

    v349 = MEMORY[0x277D84C58];
    v350 = MEMORY[0x277D84CB8];
    LOWORD(v348) = v15;
    sub_255799CE4(&v348, v12 + 32);
  }

  else
  {
    v16 = MEMORY[0x277D83C10];
    *(v12 + 56) = MEMORY[0x277D83B88];
    *(v12 + 64) = v16;
    *(v12 + 32) = 0;
  }

  v282 = sub_2557B0C48();
  v286 = v17;
  v316 = MEMORY[0x277D84F90];
  LOBYTE(v326) = 1;
  v340[0] = 34647936;
  v341 = &unk_286790848;
  v342 = 256;
  v343 = 1;
  v344 = 34647936;
  v345 = &unk_286790848;
  v346 = 256;
  v347 = 1;
  sub_25578BBE4(v340, v329);
  sub_25578BC40(&v344);
  v18 = HIBYTE(v340[0]);
  v19 = v343;
  v20 = v342;
  v21 = v341;
  v22 = BYTE2(v340[0]);
  v23 = BYTE1(v340[0]);
  v24 = v340[0];
  v287 = v340[0];
  v289 = v340[1];
  v318 = v342;
  v320 = v343;
  v299 = HIBYTE(v342);
  v315 = HIBYTE(v342);
  type metadata accessor for Message();
  v25 = swift_allocObject();
  v295 = v24;
  *(v25 + 16) = v24;
  v297 = v23;
  *(v25 + 17) = v23;
  v306 = v22;
  *(v25 + 18) = v22;
  *(v25 + 19) = v18;
  v309 = v21;
  *(v25 + 24) = v21;
  v302 = v20;
  *(v25 + 32) = v20;
  *(v25 + 33) = v315;
  *(v25 + 34) = v19;
  sub_25578BBE4(v340, v329);
  sub_255792F64(v25, &unk_286790878);
  v27 = v26;
  v293 = v19;
  swift_setDeallocating();
  *v339 = *(v25 + 16);
  *&v339[15] = *(v25 + 31);
  sub_25578BC40(v339);
  swift_deallocClassInstance();

  sub_255794A3C(v28);
  while (v27 == 25360)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = v24;
    *(v29 + 17) = v23;
    *(v29 + 18) = v22;
    *(v29 + 19) = 3;
    *(v29 + 24) = v21;
    *(v29 + 32) = v20;
    *(v29 + 33) = v299;
    *(v29 + 34) = v19;
    sub_25578BBE4(v340, v329);
    sub_255792F64(v29, &unk_286790878);
    v27 = v30;
    swift_setDeallocating();
    *v339 = *(v29 + 16);
    *&v339[15] = *(v29 + 31);
    sub_25578BC40(v339);
    swift_deallocClassInstance();

    sub_255794A3C(v31);
  }

  if (v27 == 36864)
  {
    v32 = sub_2557ABD08(v316);
    v34 = v33;

    *v337 = v32;
    *&v337[8] = v34;
    v337[16] = 0;
    v35 = sub_2557AF0E8();
    v36 = 0;
    v37 = MEMORY[0x277D84F90];
    v48 = v35;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    for (i = MEMORY[0x277D84F90]; ; i = v279)
    {
      while (1)
      {
        if ((~v48 & 0xFF00000000) == 0)
        {
          v317 = v37;
          sub_25578BC40(v340);
          v103 = swift_allocObject();
          *(v103 + 16) = v295;
          v104 = v103 + 16;
          *(v103 + 17) = v297;
          *(v103 + 18) = 576;
          *(v103 + 24) = &unk_2867908A0;
          *(v103 + 32) = v302;
          *(v103 + 33) = v299;
          *(v103 + 34) = v293;
          v278 = i;
          v117 = sub_255792F64(v103, &unk_2867908D0);
          v119 = v118;
          swift_setDeallocating();
          *v338 = *v104;
          *&v338[15] = *(v104 + 15);
          sub_25578BC40(v338);
          swift_deallocClassInstance();
          sub_255794A3C(v117);
          if (v119 == 25360)
          {
            do
            {
              v120 = swift_allocObject();
              *(v120 + 16) = v295;
              v121 = v120 + 16;
              *(v120 + 17) = v297;
              *(v120 + 18) = 832;
              *(v120 + 24) = &unk_2867908A0;
              *(v120 + 32) = v302;
              *(v120 + 33) = v299;
              *(v120 + 34) = v293;
              v122 = sub_255792F64(v120, &unk_2867908D0);
              v124 = v123;
              swift_setDeallocating();
              *v338 = *v121;
              *&v338[15] = *(v121 + 15);
              sub_25578BC40(v338);
              swift_deallocClassInstance();
              sub_255794A3C(v122);
            }

            while (v124 == 25360);
          }

          v125 = v317;

          v127 = sub_2557ABD08(v126);
          v129 = v128;

          sub_25578AAE0(*v337, *&v337[8]);
          *v337 = v127;
          *&v337[8] = v129;
          v337[16] = 0;
          v130 = sub_2557AF0E8();
          v132 = MEMORY[0x277D84F90];
          v203 = v130;
          v205 = v204;
          v207 = v206;
          while (2)
          {
            if ((~v203 & 0xFF00000000) == 0)
            {
              v303 = v132;
              sub_25578AAE0(*v337, *&v337[8]);
              v309 = &unk_2867908A0;
              v306 = 64;
              goto LABEL_20;
            }

            v208 = v131;
            sub_255799C60(v207, v131);
            sub_2557995A0(v207, v208, &v354);
            *v329 = v354;
            *&v329[16] = v355;
            v330[0] = *v356;
            *(v330 + 9) = *&v356[9];
            if (v356[0] == 15)
            {
              sub_255799C30(v203, v205, v207, v208);
LABEL_207:
              v203 = sub_2557AF0E8();
              v205 = v209;
              v207 = v210;
              continue;
            }

            break;
          }

          v271 = v208;
          v360 = v354;
          v361 = v355;
          *&v362[0] = *v356;
          *(v362 + 8) = *&v356[8];
          BYTE8(v362[1]) = v356[24];
          sub_255799C74(&v360, &v326);
          v275 = v205;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v132 = sub_255794530(0, *(v132 + 2) + 1, 1, v132);
          }

          v212 = *(v132 + 2);
          v211 = *(v132 + 3);
          if (v212 >= v211 >> 1)
          {
            v132 = sub_255794530((v211 > 1), v212 + 1, 1, v132);
          }

          v273 = v207;
          *(v132 + 2) = v212 + 1;
          v213 = &v132[64 * v212];
          v214 = v360;
          v215 = v361;
          v216 = v362[0];
          *(v213 + 73) = *(v362 + 9);
          *(v213 + 3) = v215;
          *(v213 + 4) = v216;
          *(v213 + 2) = v214;
          if (qword_27F7D2DF8 != -1)
          {
            swift_once();
          }

          v217 = sub_2557B0B38();
          __swift_project_value_buffer(v217, qword_27F7D3080);
          v326 = *v329;
          v327 = *&v329[16];
          v328[0] = v330[0];
          *(v328 + 9) = *(v330 + 9);
          sub_255799C74(&v326, &v322);
          v218 = sub_2557B0B18();
          v219 = sub_2557B0DE8();
          sub_255799CFC(&v354, &qword_27F7D3098, &unk_2557B2A30);
          v269 = v219;
          if (!os_log_type_enabled(v218, v219))
          {
            sub_255799C30(v203, v205, v207, v271);

            sub_255799CFC(&v354, &qword_27F7D3098, &unk_2557B2A30);
            goto LABEL_207;
          }

          v220 = 1634953558;
          v221 = swift_slowAlloc();
          v222 = swift_slowAlloc();
          v334[0] = v222;
          *v221 = 136446466;
          v223 = 0xE400000000000000;
          v224 = v222;
          switch(LOBYTE(v362[0]))
          {
            case 1:
              v223 = 0xE500000000000000;
              v220 = 0x736C697455;
              break;
            case 2:
              v223 = 0xE700000000000000;
              v220 = 0x7265676E697453;
              break;
            case 3:
              v223 = 0xEA00000000006472;
              v220 = 0x616372657473614DLL;
              break;
            case 4:
              break;
            case 5:
              v220 = 2019913025;
              break;
            case 6:
              v223 = 0xE800000000000000;
              v220 = 0x7265766F63736944;
              break;
            case 7:
              v220 = 2020505932;
              break;
            case 8:
              v220 = 0x656E6E6F63656542;
              v223 = 0xED0000736E6F6978;
              break;
            case 9:
              v223 = 0xE600000000000000;
              v220 = 0x736F70746645;
              break;
            case 0xA:
              v223 = 0xE300000000000000;
              v220 = 4342602;
              break;
            case 0xB:
              v223 = 0xE700000000000000;
              v220 = 0x63617265746E49;
              break;
            case 0xC:
              v223 = 0xE300000000000000;
              v220 = 4804693;
              break;
            case 0xD:
              v220 = 1701999952;
              break;
            case 0xE:
              v223 = 0xE700000000000000;
              v220 = 0x6E776F6E6B6E55;
              break;
            default:
              v223 = 0xE300000000000000;
              v220 = 6645058;
              break;
          }

          v225 = sub_2557AAA60(v220, v223, v334);

          *(v221 + 4) = v225;
          *(v221 + 12) = 2082;
          v226 = *(&v360 + 1);
          v227 = *(&v360 + 1) >> 62;
          v308 = *(&v360 + 1) >> 62;
          v314 = v360;
          v304 = v132;
          v265 = v221;
          v267 = v125;
          v262 = v218;
          v264 = v224;
          if ((*(&v360 + 1) >> 62) <= 1)
          {
            if (v227)
            {
              if (__OFSUB__(DWORD1(v360), v360))
              {
                goto LABEL_302;
              }

              v228 = DWORD1(v360) - v360;
            }

            else
            {
              v228 = BYTE14(v360);
            }

            goto LABEL_240;
          }

          if (v227 == 2)
          {
            v230 = *(v360 + 16);
            v229 = *(v360 + 24);
            v228 = v229 - v230;
            if (__OFSUB__(v229, v230))
            {
              goto LABEL_301;
            }

LABEL_240:
            if (v228)
            {
              v331 = MEMORY[0x277D84F90];
              sub_2557AB37C(0, v228 & ~(v228 >> 63), 0);
              if (v308)
              {
                if (v308 == 2)
                {
                  v231 = *(v314 + 16);
                }

                else
                {
                  v231 = v314;
                }
              }

              else
              {
                v231 = 0;
              }

              v301 = v231;
              if (v228 < 0)
              {
                goto LABEL_292;
              }

              v237 = 0;
              v232 = v331;
              v238 = v314;
              v277 = &v322 + v231;
              while (2)
              {
                if (v237 >= v228)
                {
                  goto LABEL_281;
                }

                v239 = v237 + 1;
                if (__OFADD__(v237, 1))
                {
                  goto LABEL_282;
                }

                v240 = v301 + v237;
                if (v308 == 2)
                {
                  if (v240 < *(v238 + 16))
                  {
                    goto LABEL_287;
                  }

                  if (v240 >= *(v238 + 24))
                  {
                    goto LABEL_289;
                  }

                  v245 = sub_2557B0868();
                  if (!v245)
                  {
                    goto LABEL_313;
                  }

                  v242 = v245;
                  v246 = sub_2557B0888();
                  v244 = v240 - v246;
                  if (__OFSUB__(v240, v246))
                  {
                    goto LABEL_291;
                  }

LABEL_264:
                  v247 = *(v242 + v244);
                }

                else
                {
                  if (v308 == 1)
                  {
                    if (v240 < v314 || v240 >= v314 >> 32)
                    {
                      goto LABEL_288;
                    }

                    v241 = sub_2557B0868();
                    if (!v241)
                    {
                      goto LABEL_312;
                    }

                    v242 = v241;
                    v243 = sub_2557B0888();
                    v244 = v240 - v243;
                    if (__OFSUB__(v240, v243))
                    {
                      goto LABEL_290;
                    }

                    goto LABEL_264;
                  }

                  if (v240 >= BYTE6(v226))
                  {
                    goto LABEL_286;
                  }

                  v322 = v238;
                  LODWORD(v323) = v226;
                  WORD2(v323) = WORD2(v226);
                  v247 = v277[v237];
                }

                v248 = swift_allocObject();
                *(v248 + 16) = xmmword_2557B1770;
                *(v248 + 56) = MEMORY[0x277D84B78];
                *(v248 + 64) = MEMORY[0x277D84BC0];
                *(v248 + 32) = v247;
                v249 = sub_2557B0C48();
                v331 = v232;
                v252 = *(v232 + 16);
                v251 = *(v232 + 24);
                if (v252 >= v251 >> 1)
                {
                  v261 = v249;
                  v254 = v250;
                  sub_2557AB37C((v251 > 1), v252 + 1, 1);
                  v250 = v254;
                  v249 = v261;
                  v232 = v331;
                }

                *(v232 + 16) = v252 + 1;
                v253 = v232 + 16 * v252;
                *(v253 + 32) = v249;
                *(v253 + 40) = v250;
                ++v237;
                v238 = v314;
                if (v239 == v228)
                {
                  goto LABEL_245;
                }

                continue;
              }
            }
          }

          v232 = MEMORY[0x277D84F90];
LABEL_245:
          v132 = v304;
          v322 = v232;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
          sub_25578AB8C();
          v233 = sub_2557B0BF8();
          v235 = v234;

          v236 = sub_2557AAA60(v233, v235, v334);

          *(v265 + 14) = v236;
          _os_log_impl(&dword_255786000, v262, v269, "Muirfield instance detected: %{public}s (%{public}s)", v265, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C40F40](v264, -1, -1);
          MEMORY[0x259C40F40](v265, -1, -1);
          sub_255799C30(v203, v275, v273, v271);
          sub_255799CFC(&v354, &qword_27F7D3098, &unk_2557B2A30);

          v125 = v267;
          goto LABEL_207;
        }

        sub_255799C60(v52, v54);
        sub_25579920C(v52, v54, &v351);
        if (v353 != 15)
        {
          break;
        }

        sub_255799C30(v48, v50, v52, v54);
        v48 = sub_2557AF0E8();
        v50 = v56;
        v52 = v57;
        v54 = v58;
      }

      v59 = v351;
      v60 = v352;
      v357 = v351;
      v358 = v352;
      v359 = v353;
      sub_255799CAC(&v357, v329);
      v291 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        i = sub_25579463C(0, *(i + 2) + 1, 1, i);
      }

      v62 = *(i + 2);
      v61 = *(i + 3);
      v279 = i;
      if (v62 >= v61 >> 1)
      {
        v279 = sub_25579463C((v61 > 1), v62 + 1, 1, i);
      }

      *(v279 + 2) = v62 + 1;
      v63 = &v279[40 * v62];
      v64 = v357;
      v65 = v358;
      v63[64] = v359;
      *(v63 + 2) = v64;
      *(v63 + 3) = v65;
      if (qword_27F7D2DF8 != -1)
      {
        swift_once();
      }

      v66 = sub_2557B0B38();
      __swift_project_value_buffer(v66, qword_27F7D3080);
      sub_25578ACE4(v59, *(&v59 + 1));
      sub_25578ACE4(v60, *(&v60 + 1));
      v67 = sub_2557B0B18();
      v68 = sub_2557B0DE8();
      sub_255799CFC(&v351, &qword_27F7D30A0, &qword_2557B2078);
      v259 = v68;
      if (!os_log_type_enabled(v67, v68))
      {
        sub_255799C30(v48, v50, v52, v54);

        sub_255799CFC(&v351, &qword_27F7D30A0, &qword_2557B2078);
        v72 = v36;
        v37 = MEMORY[0x277D84F90];
        goto LABEL_90;
      }

      log = v67;
      v69 = 1634953558;
      v70 = swift_slowAlloc();
      v257 = swift_slowAlloc();
      *&v326 = v257;
      buf = v70;
      *v70 = 136446466;
      v71 = 0xE400000000000000;
      switch(v359)
      {
        case 1:
          v71 = 0xE500000000000000;
          v69 = 0x736C697455;
          break;
        case 2:
          v71 = 0xE700000000000000;
          v69 = 0x7265676E697453;
          break;
        case 3:
          v71 = 0xEA00000000006472;
          v69 = 0x616372657473614DLL;
          break;
        case 4:
          break;
        case 5:
          v69 = 2019913025;
          break;
        case 6:
          v71 = 0xE800000000000000;
          v69 = 0x7265766F63736944;
          break;
        case 7:
          v69 = 2020505932;
          break;
        case 8:
          v69 = 0x656E6E6F63656542;
          v71 = 0xED0000736E6F6978;
          break;
        case 9:
          v71 = 0xE600000000000000;
          v69 = 0x736F70746645;
          break;
        case 10:
          v71 = 0xE300000000000000;
          v69 = 4342602;
          break;
        case 11:
          v71 = 0xE700000000000000;
          v69 = 0x63617265746E49;
          break;
        case 12:
          v71 = 0xE300000000000000;
          v69 = 4804693;
          break;
        case 13:
          v69 = 1701999952;
          break;
        case 14:
          v71 = 0xE700000000000000;
          v69 = 0x6E776F6E6B6E55;
          break;
        default:
          v71 = 0xE300000000000000;
          v69 = 6645058;
          break;
      }

      v73 = sub_2557AAA60(v69, v71, &v326);

      *(buf + 4) = v73;
      *(buf + 6) = 2082;
      v274 = v357;
      v74 = *(&v357 + 1) >> 62;
      v256 = v50;
      if ((*(&v357 + 1) >> 62) > 1)
      {
        if (v74 != 2)
        {
          v37 = MEMORY[0x277D84F90];
LABEL_62:
          v79 = v37;
          goto LABEL_89;
        }

        v77 = *(v357 + 16);
        v76 = *(v357 + 24);
        v75 = v76 - v77;
        v37 = MEMORY[0x277D84F90];
        if (__OFSUB__(v76, v77))
        {
          goto LABEL_284;
        }
      }

      else
      {
        if (v74)
        {
          if (__OFSUB__(DWORD1(v357), v357))
          {
            goto LABEL_285;
          }

          v75 = DWORD1(v357) - v357;
        }

        else
        {
          v75 = BYTE14(v357);
        }

        v37 = MEMORY[0x277D84F90];
      }

      if (!v75)
      {
        goto LABEL_62;
      }

      v268 = *(&v357 + 1);
      v322 = v37;
      sub_2557AB37C(0, v75 & ~(v75 >> 63), 0);
      if (v74)
      {
        if (v74 != 2)
        {
          v80 = v268;
          v272 = v274;
          goto LABEL_66;
        }

        v78 = *(v274 + 16);
      }

      else
      {
        v78 = 0;
      }

      v272 = v78;
      v80 = v268;
LABEL_66:
      if (v75 < 0)
      {
        __break(1u);
LABEL_284:
        __break(1u);
LABEL_285:
        __break(1u);
LABEL_286:
        __break(1u);
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
LABEL_289:
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
        goto LABEL_293;
      }

      v81 = 0;
      v79 = v322;
      v263 = BYTE6(v80);
      v266 = v74;
      v270 = v75;
      do
      {
        if (v81 >= v75)
        {
          __break(1u);
LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
        }

        if (__OFADD__(v81, 1))
        {
          goto LABEL_274;
        }

        v82 = v272 + v81;
        v276 = v81 + 1;
        if (v74 == 2)
        {
          if (v82 < *(v274 + 16))
          {
            goto LABEL_276;
          }

          if (v82 >= *(v274 + 24))
          {
            goto LABEL_278;
          }

          v87 = sub_2557B0868();
          if (!v87)
          {
            goto LABEL_304;
          }

          v84 = v87;
          v88 = sub_2557B0888();
          v86 = v82 - v88;
          if (__OFSUB__(v82, v88))
          {
            goto LABEL_280;
          }

          goto LABEL_82;
        }

        if (v74 == 1)
        {
          if (v82 < v274 || v82 >= v274 >> 32)
          {
            goto LABEL_277;
          }

          v83 = sub_2557B0868();
          if (!v83)
          {
            goto LABEL_303;
          }

          v84 = v83;
          v85 = sub_2557B0888();
          v86 = v82 - v85;
          if (__OFSUB__(v82, v85))
          {
            goto LABEL_279;
          }

LABEL_82:
          v89 = *(v84 + v86);
          LODWORD(v74) = v266;
          v80 = v268;
          goto LABEL_85;
        }

        if (v82 >= v263)
        {
          goto LABEL_275;
        }

        *v329 = v274;
        *&v329[8] = v80;
        *&v329[12] = WORD2(v80);
        v89 = v329[v272 + v81];
LABEL_85:
        v90 = swift_allocObject();
        *(v90 + 16) = xmmword_2557B1770;
        *(v90 + 56) = MEMORY[0x277D84B78];
        *(v90 + 64) = MEMORY[0x277D84BC0];
        *(v90 + 32) = v89;
        v91 = sub_2557B0C48();
        v322 = v79;
        v94 = *(v79 + 16);
        v93 = *(v79 + 24);
        if (v94 >= v93 >> 1)
        {
          v255 = v91;
          v74 = v92;
          sub_2557AB37C((v93 > 1), v94 + 1, 1);
          v92 = v74;
          LODWORD(v74) = v266;
          v80 = v268;
          v91 = v255;
          v79 = v322;
        }

        *(v79 + 16) = v94 + 1;
        v95 = v79 + 16 * v94;
        *(v95 + 32) = v91;
        *(v95 + 40) = v92;
        ++v81;
        v75 = v270;
      }

      while (v276 != v270);
      v37 = MEMORY[0x277D84F90];
LABEL_89:
      *v329 = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
      sub_25578AB8C();
      v96 = sub_2557B0BF8();
      v98 = v97;

      v99 = sub_2557AAA60(v96, v98, &v326);

      *(buf + 14) = v99;
      _os_log_impl(&dword_255786000, log, v259, "Muirfield package detected: %{public}s (%{public}s)", buf, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C40F40](v257, -1, -1);
      MEMORY[0x259C40F40](buf, -1, -1);
      sub_255799C30(v48, v256, v52, v54);
      sub_255799CFC(&v351, &qword_27F7D30A0, &qword_2557B2078);

      v72 = v291;
LABEL_90:
      v48 = sub_2557AF0E8();
      v50 = v100;
      v52 = v101;
      v54 = v102;
      v36 = v72;
    }
  }

  v278 = MEMORY[0x277D84F90];
  v303 = MEMORY[0x277D84F90];
LABEL_20:
  LOBYTE(v334[0]) = 1;
  *v338 = -33502592;
  *&v338[8] = &unk_2867908F8;
  *&v338[16] = 256;
  v338[18] = 0;
  LODWORD(v322) = -33502592;
  v323 = &unk_2867908F8;
  v324 = 256;
  v325 = 0;
  sub_25578BBE4(v338, v337);
  sub_25578BC40(&v322);
  LOWORD(v326) = v287;
  BYTE2(v326) = v306;
  BYTE3(v326) = 3;
  DWORD1(v326) = v289;
  *(&v326 + 1) = v309;
  LOWORD(v327) = v318;
  BYTE2(v327) = v320;
  sub_25578BC40(&v326);
  v38 = *v338;
  v39 = v338[2];
  v40 = v338[3];
  v41 = *&v338[4];
  v42 = *&v338[8];
  v319 = *&v338[16];
  v321 = v338[18];
  *v329 = *v338;
  *&v329[2] = *&v338[2];
  *&v329[4] = *&v338[4];
  *&v329[8] = *&v338[8];
  *&v329[16] = *&v338[16];
  v329[18] = v338[18];
  v43 = swift_allocObject();
  *(v43 + 16) = *v329;
  *(v43 + 31) = *&v329[15];
  sub_25578BBE4(v329, v337);
  v310 = sub_255792F64(v43, &unk_286790920);
  v305 = v38;
  v307 = v39;
  v296 = v40;
  v298 = v41;
  v300 = v42;
  swift_setDeallocating();
  *v337 = *(v43 + 16);
  *&v337[15] = *(v43 + 31);
  sub_25578BC40(v337);
  swift_deallocClassInstance();

  v44 = sub_2557ABD08(v310);
  v46 = v45;

  v47 = sub_2557B04DC(57130, v44, v46);
  v106 = v105;
  v108 = v107;
  v294 = v109;
  v110 = v47;
  sub_25578AAE0(v44, v46);
  v292 = v110;
  if ((~v110 & 0xFF00000000) == 0)
  {
    v111 = v278;

    v112 = v303;

    v113 = 0;
    v114 = 0;
    v311 = 0;
    v115 = 0;
    v116 = v282;
    goto LABEL_94;
  }

  if (v108 >> 60 == 15)
  {
    goto LABEL_311;
  }

  sub_25578ACE4(v106, v108);

  v288 = v106;
  v331 = v106;
  v332 = v108;
  v333 = 0;
  v134 = sub_2557AF0E8();
  v136 = v135;
  v138 = v137;
  v285 = 0;
  v139 = 0;
  v114 = 0;
  v113 = 0;
LABEL_100:
  v116 = v282;
  while ((~v134 & 0xFF00000000) != 0)
  {
    if (BYTE4(v134))
    {
      v144 = v134;
    }

    else
    {
      v144 = v134;
    }

    if (BYTE4(v134) - 2 < 2)
    {
      v144 = v134;
    }

    if (v144 > 1)
    {
      if (v144 == 2)
      {
        if (v138 >> 60 == 15)
        {
          v147 = v134;
          v148 = v136;
LABEL_144:
          sub_255799C30(v147, v148, v133, v138);
          v164 = 0;
          goto LABEL_147;
        }

        LODWORD(v334[0]) = 0;
        v152 = v138 >> 62;
        if ((v138 >> 62) > 1)
        {
          if (v152 != 2)
          {
            v165 = v133;
            sub_255799C30(v134, v136, v133, v138);
            sub_255799C30(v134, v136, v165, v138);
            v164 = 0;
            goto LABEL_147;
          }

          v159 = *(v133 + 16);
          v158 = *(v133 + 24);
          v154 = v158 - v159;
          if (__OFSUB__(v158, v159))
          {
            goto LABEL_300;
          }

          v160 = v133;
          v153 = v133;
          goto LABEL_141;
        }

        if (v152)
        {
          if (__OFSUB__(HIDWORD(v133), v133))
          {
            goto LABEL_299;
          }

          v154 = HIDWORD(v133) - v133;
          v160 = v133;
          v153 = v133;
LABEL_141:
          sub_255799C60(v160, v138);
          goto LABEL_142;
        }

        v153 = v133;
        v154 = BYTE6(v138);
LABEL_142:
        if (v154 <= 3)
        {
          sub_255799C30(v134, v136, v153, v138);
          v147 = v134;
          v148 = v136;
          v133 = v153;
          goto LABEL_144;
        }

        sub_255799044(v153, v138, v334);
        sub_255799C30(v134, v136, v153, v138);
        sub_255799C30(v134, v136, v153, v138);
        v164 = LODWORD(v334[0]);
LABEL_147:
        v134 = sub_2557AF0E8();
        v136 = v166;
        v138 = v167;
        v116 = v282;
        v139 = v164;
      }

      else
      {
        if (v144 != 3)
        {
          goto LABEL_101;
        }

        v312 = v139;
        if (v138 >> 60 == 15)
        {
          v145 = v134;
          v146 = v136;
LABEL_135:
          sub_255799C30(v145, v146, v133, v138);
          v285 = 0;
          goto LABEL_138;
        }

        LODWORD(v334[0]) = 0;
        v149 = v138 >> 62;
        if ((v138 >> 62) > 1)
        {
          if (v149 != 2)
          {
            v161 = v133;
            sub_255799C30(v134, v136, v133, v138);
            sub_255799C30(v134, v136, v161, v138);
            v285 = 0;
            goto LABEL_138;
          }

          v156 = *(v133 + 16);
          v155 = *(v133 + 24);
          v151 = v155 - v156;
          if (__OFSUB__(v155, v156))
          {
            goto LABEL_298;
          }

          v157 = v133;
          v150 = v133;
          goto LABEL_132;
        }

        if (v149)
        {
          if (__OFSUB__(HIDWORD(v133), v133))
          {
            goto LABEL_295;
          }

          v151 = HIDWORD(v133) - v133;
          v157 = v133;
          v150 = v133;
LABEL_132:
          sub_255799C60(v157, v138);
          goto LABEL_133;
        }

        v150 = v133;
        v151 = BYTE6(v138);
LABEL_133:
        if (v151 <= 3)
        {
          sub_255799C30(v134, v136, v150, v138);
          v145 = v134;
          v146 = v136;
          v133 = v150;
          goto LABEL_135;
        }

        sub_255799044(v150, v138, v334);
        sub_255799C30(v134, v136, v150, v138);
        sub_255799C30(v134, v136, v150, v138);
        v285 = LODWORD(v334[0]);
LABEL_138:
        v134 = sub_2557AF0E8();
        v136 = v162;
        v138 = v163;
        v116 = v282;
        v139 = v312;
      }
    }

    else
    {
      if (!v144)
      {
        v313 = v139;
        if (v138 >> 60 == 15)
        {
          sub_255799C30(v134, v136, v133, v138);
          v168 = 0;
LABEL_202:
          v113 = v168;
          goto LABEL_203;
        }

        v173 = v133;
        v174 = v138 >> 62;
        v284 = v114;
        if ((v138 >> 62) > 1)
        {
          if (v174 == 2)
          {
            v175 = v278;
            v180 = *(v133 + 16);
            v179 = *(v133 + 24);
            v176 = v179 - v180;
            if (__OFSUB__(v179, v180))
            {
              goto LABEL_296;
            }

            goto LABEL_180;
          }

LABEL_182:
          sub_255799C30(v134, v136, v173, v138);
          sub_255799C30(v134, v136, v173, v138);
          v168 = 0;
          goto LABEL_201;
        }

        v175 = v278;
        if (!v174)
        {
          v176 = BYTE6(v138);
          goto LABEL_181;
        }

        if (!__OFSUB__(HIDWORD(v133), v133))
        {
          v176 = HIDWORD(v133) - v133;
LABEL_180:
          sub_255799C60(v133, v138);
LABEL_181:
          v278 = v175;
          if (v176 <= 3)
          {
            goto LABEL_182;
          }

          if (v174 == 2)
          {
            v196 = *(v173 + 16);
            v197 = sub_2557B0868();
            if (v197)
            {
              v198 = v197;
              v199 = sub_2557B0888();
              if (__OFSUB__(v196, v199))
              {
                goto LABEL_307;
              }

              v190 = (v196 - v199 + v198);
              sub_2557B0878();
              if (v190)
              {
                goto LABEL_197;
              }

LABEL_320:
              __break(1u);
            }

            sub_2557B0878();
            __break(1u);
            JUMPOUT(0x2557972C0);
          }

          if (v174 == 1)
          {
            if (v173 > v173 >> 32)
            {
              goto LABEL_305;
            }

            v187 = sub_2557B0868();
            if (!v187)
            {
              goto LABEL_318;
            }

            v188 = v187;
            v189 = sub_2557B0888();
            if (__OFSUB__(v173, v189))
            {
              goto LABEL_309;
            }

            v190 = (v173 - v189 + v188);
            sub_2557B0878();
            if (!v190)
            {
LABEL_319:
              __break(1u);
              goto LABEL_320;
            }

LABEL_197:
            v200 = *v190;
            sub_255799C30(v134, v136, v173, v138);
            sub_255799C30(v134, v136, v173, v138);
            v168 = bswap32(v200);
          }

          else
          {
            sub_255799C30(v134, v136, v173, v138);
            sub_255799C30(v134, v136, v173, v138);
            v168 = bswap32(v173);
          }

LABEL_201:
          v114 = v284;
          goto LABEL_202;
        }

LABEL_293:
        __break(1u);
        goto LABEL_294;
      }

      if (v144 == 1)
      {
        v313 = v139;
        if (v138 >> 60 == 15)
        {
          sub_255799C30(v134, v136, v133, v138);
          v114 = 0;
          goto LABEL_203;
        }

        v169 = v138 >> 62;
        if ((v138 >> 62) <= 1)
        {
          v170 = v133;
          v283 = v113;
          v171 = v278;
          if (!v169)
          {
            v172 = BYTE6(v138);
            goto LABEL_168;
          }

          if (!__OFSUB__(HIDWORD(v133), v133))
          {
            v172 = HIDWORD(v133) - v133;
            goto LABEL_167;
          }

LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
LABEL_296:
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
LABEL_299:
          __break(1u);
LABEL_300:
          __break(1u);
LABEL_301:
          __break(1u);
LABEL_302:
          __break(1u);
LABEL_303:
          __break(1u);
LABEL_304:
          __break(1u);
LABEL_305:
          __break(1u);
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
LABEL_314:
          sub_2557B0878();
          goto LABEL_315;
        }

        if (v169 != 2)
        {
          v186 = v133;
          sub_255799C30(v134, v136, v133, v138);
          sub_255799C30(v134, v136, v186, v138);
          v114 = 0;
          goto LABEL_203;
        }

        v283 = v113;
        v171 = v278;
        v178 = *(v133 + 16);
        v177 = *(v133 + 24);
        v172 = v177 - v178;
        if (__OFSUB__(v177, v178))
        {
          goto LABEL_297;
        }

        v170 = v133;
LABEL_167:
        sub_255799C60(v170, v138);
LABEL_168:
        v278 = v171;
        if (v172 <= 3)
        {
          sub_255799C30(v134, v136, v170, v138);
          sub_255799C30(v134, v136, v170, v138);
          v181 = 0;
          goto LABEL_199;
        }

        if (v169 == 2)
        {
          v191 = *(v170 + 16);
          v192 = sub_2557B0868();
          if (v192)
          {
            v193 = v192;
            v194 = sub_2557B0888();
            if (__OFSUB__(v191, v194))
            {
              goto LABEL_308;
            }

            v185 = (v191 - v194 + v193);
            sub_2557B0878();
            if (v185)
            {
              goto LABEL_193;
            }

LABEL_316:
            __break(1u);
          }

          sub_2557B0878();
          __break(1u);
LABEL_318:
          sub_2557B0878();
          goto LABEL_319;
        }

        if (v169 == 1)
        {
          if (v170 > v170 >> 32)
          {
            goto LABEL_306;
          }

          v182 = sub_2557B0868();
          if (!v182)
          {
            goto LABEL_314;
          }

          v183 = v182;
          v184 = sub_2557B0888();
          if (__OFSUB__(v170, v184))
          {
            goto LABEL_310;
          }

          v185 = (v170 - v184 + v183);
          sub_2557B0878();
          if (!v185)
          {
LABEL_315:
            __break(1u);
            goto LABEL_316;
          }

LABEL_193:
          v195 = *v185;
          sub_255799C30(v134, v136, v170, v138);
          sub_255799C30(v134, v136, v170, v138);
          v181 = bswap32(v195);
        }

        else
        {
          sub_255799C30(v134, v136, v170, v138);
          sub_255799C30(v134, v136, v170, v138);
          v181 = bswap32(v170);
        }

LABEL_199:
        v113 = v283;
        v114 = v181;
LABEL_203:
        v134 = sub_2557AF0E8();
        v136 = v201;
        v138 = v202;
        v139 = v313;
        goto LABEL_100;
      }

LABEL_101:
      v140 = v139;
      sub_255799C30(v134, v136, v133, v138);
      v141 = sub_2557AF0E8();
      v139 = v140;
      v116 = v282;
      v134 = v141;
      v136 = v142;
      v138 = v143;
    }
  }

  v311 = v139;
  sub_25578AAE0(v331, v332);

  sub_255799C30(v292, v294, v288, v108);

  v112 = v303;
  v39 = v307;
  v111 = v278;
  v115 = v285;
LABEL_94:
  LOWORD(v334[0]) = v305;
  BYTE2(v334[0]) = v39;
  BYTE3(v334[0]) = v296;
  HIDWORD(v334[0]) = v298;
  v334[1] = v300;
  v335 = v319;
  v336 = v321;
  result = sub_25578BC40(v334);
  *v281 = v113;
  v281[1] = v114;
  v281[2] = v311;
  v281[3] = v115;
  v281[4] = v116;
  v281[5] = v286;
  v281[6] = v280;
  v281[7] = v111;
  v281[8] = v112;
LABEL_4:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_255797338()
{
  v237[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);
  isa = v1[2].isa;
  if (!isa)
  {
    if (qword_27F7D2DF8 == -1)
    {
LABEL_267:
      v190 = sub_2557B0B38();
      __swift_project_value_buffer(v190, qword_27F7D3080);
      v191 = sub_2557B0B18();
      v192 = sub_2557B0DB8();
      if (os_log_type_enabled(v191, v192))
      {
        v193 = swift_slowAlloc();
        *v193 = 0;
        _os_log_impl(&dword_255786000, v191, v192, "Expected state: no Muirfield package found", v193, 2u);
        MEMORY[0x259C40F40](v193, -1, -1);
      }

      v40 = 1;
      goto LABEL_270;
    }

LABEL_315:
    swift_once();
    goto LABEL_267;
  }

  v3 = 0;
  v208 = *(v0 + 64);
  v4 = 0x80000002557B37E0;
  v204 = (isa - 1);
  v5 = v1 + 7;
  v6 = 1;
  v219 = *(v0 + 56);
  v223 = v1[2].isa;
  log = v1 + 7;
LABEL_3:
  v214 = v6;
  v7 = &v5[5 * v3];
  do
  {
    if (v3 >= v1[2].isa)
    {
      goto LABEL_275;
    }

    v14 = *(v7 - 3);
    v13 = *(v7 - 2);
    v15 = *(v7 - 1);
    v16 = *v7;
    v17 = swift_allocObject();
    *(v17 + 16) = 0xD000000000000014;
    *(v17 + 24) = 0x80000002557B37E0;
    v225 = v14;
    v227 = v13;
    sub_25578ACE4(v14, v13);
    sub_25578ACE4(v15, v16);
    v18 = sub_2557A07AC(15, sub_25578AAD8, v17, 0);
    v20 = v16 >> 62;
    v21 = v19 >> 62;
    if (v16 >> 62 == 3)
    {
      v22 = 0;
      if (!v15 && v16 == 0xC000000000000000 && v19 >> 62 == 3)
      {
        v22 = 0;
        if (!v18 && v19 == 0xC000000000000000)
        {
          sub_25578AAE0(v14, v13);
          sub_25578AAE0(0, 0xC000000000000000);
          v11 = 0;
          v12 = 0xC000000000000000;
          goto LABEL_6;
        }
      }

LABEL_25:
      if (v21 > 1)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v28 = *(v15 + 16);
        v27 = *(v15 + 24);
        v25 = __OFSUB__(v27, v28);
        v22 = v27 - v28;
        if (v25)
        {
          goto LABEL_297;
        }

        goto LABEL_25;
      }

      v22 = 0;
      if (v21 > 1)
      {
        goto LABEL_19;
      }
    }

    else if (v20)
    {
      LODWORD(v22) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_296;
      }

      v22 = v22;
      if (v21 > 1)
      {
LABEL_19:
        if (v21 != 2)
        {
          if (v22)
          {
            goto LABEL_40;
          }

LABEL_5:
          v8 = v18;
          v9 = v15;
          v10 = v19;
          sub_25578AAE0(v14, v227);
          sub_25578AAE0(v9, v16);
          v11 = v8;
          v12 = v10;
LABEL_6:
          sub_25578AAE0(v11, v12);
          goto LABEL_7;
        }

        v24 = *(v18 + 16);
        v23 = *(v18 + 24);
        v25 = __OFSUB__(v23, v24);
        v26 = v23 - v24;
        if (v25)
        {
          goto LABEL_295;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v21 > 1)
      {
        goto LABEL_19;
      }
    }

LABEL_26:
    if (!v21)
    {
      v26 = BYTE6(v19);
LABEL_28:
      if (v22 != v26)
      {
        goto LABEL_40;
      }

      goto LABEL_32;
    }

    if (__OFSUB__(HIDWORD(v18), v18))
    {
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      v40 = v4 & buf & v196;
      goto LABEL_270;
    }

    if (v22 != HIDWORD(v18) - v18)
    {
LABEL_40:
      v221 = v16 >> 62;
      sub_25578AAE0(v18, v19);
      goto LABEL_42;
    }

LABEL_32:
    if (v22 < 1)
    {
      goto LABEL_5;
    }

    v221 = v16 >> 62;
    v29 = v18;
    v30 = v15;
    v31 = v19;
    sub_25578ACE4(v18, v19);
    v32 = sub_255798EB4(v30, v16, v29, v31);
    sub_25578AAE0(v29, v31);
    if ((v32 & 1) == 0)
    {
      v4 = 0x80000002557B37E0;
      v15 = v30;
LABEL_42:
      v218 = v15;
      if (qword_27F7D2DF8 != -1)
      {
        swift_once();
      }

      v33 = sub_2557B0B38();
      __swift_project_value_buffer(v33, qword_27F7D3080);
      sub_25578ACE4(v14, v227);
      sub_25578ACE4(v15, v16);
      v34 = sub_2557B0B18();
      v35 = sub_2557B0DD8();
      sub_25578AAE0(v225, v227);
      sub_25578AAE0(v15, v16);
      v198 = v35;
      if (!os_log_type_enabled(v34, v35))
      {

        sub_25578AAE0(v225, v227);
        sub_25578AAE0(v15, v16);
        v6 = 0;
        v40 = 0;
        v41 = v204 == v3;
        goto LABEL_125;
      }

      v200 = v34;
      v36 = swift_slowAlloc();
      v232 = swift_slowAlloc();
      v196 = v232;
      buf = v36;
      *v36 = 136446466;
      v37 = v227 >> 62;
      if ((v227 >> 62) > 1)
      {
        v38 = v34;
        if (v37 != 2)
        {
          goto LABEL_58;
        }

        v43 = *(v225 + 16);
        v42 = *(v225 + 24);
        v39 = v42 - v43;
        if (!__OFSUB__(v42, v43))
        {
          if (v39)
          {
            goto LABEL_53;
          }

          goto LABEL_58;
        }

LABEL_325:
        __break(1u);
        goto LABEL_326;
      }

      v38 = v34;
      if (v37)
      {
        v47 = HIDWORD(v225) - v225;
        if (!__OFSUB__(HIDWORD(v225), v225))
        {
          v39 = v47;
          if (v47)
          {
            goto LABEL_53;
          }

LABEL_58:
          v4 = MEMORY[0x277D84F90];
          goto LABEL_85;
        }

        goto LABEL_324;
      }

      v39 = BYTE6(v227);
      if (!BYTE6(v227))
      {
        goto LABEL_58;
      }

LABEL_53:
      v237[0] = MEMORY[0x277D84F90];
      sub_2557AB37C(0, v39 & ~(v39 >> 63), 0);
      v44 = v225;
      if (v37)
      {
        v45 = BYTE6(v227);
        if (v37 == 2)
        {
          v46 = *(v225 + 16);
        }

        else
        {
          v46 = v225;
        }

        v215 = v46;
      }

      else
      {
        v215 = 0;
        v45 = BYTE6(v227);
      }

      if (v39 < 0)
      {
        goto LABEL_322;
      }

      v48 = 0;
      v4 = v237[0];
      v209 = v45;
      v213 = v39;
      while (2)
      {
        if (v48 >= v39)
        {
          goto LABEL_289;
        }

        v49 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          __break(1u);
LABEL_293:
          v40 = v4 & v196;
          goto LABEL_270;
        }

        v50 = v215 + v48;
        if (v37 == 2)
        {
          if (v50 >= *(v44 + 16))
          {
            if (v50 >= *(v44 + 24))
            {
              goto LABEL_302;
            }

            v55 = sub_2557B0868();
            if (!v55)
            {
              goto LABEL_333;
            }

            v52 = v55;
            v56 = sub_2557B0888();
            v54 = v50 - v56;
            if (__OFSUB__(v50, v56))
            {
              goto LABEL_304;
            }

            goto LABEL_78;
          }

          __break(1u);
LABEL_300:
          __break(1u);
LABEL_301:
          __break(1u);
LABEL_302:
          __break(1u);
LABEL_303:
          __break(1u);
LABEL_304:
          __break(1u);
LABEL_305:
          __break(1u);
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
          goto LABEL_314;
        }

        if (v37 == 1)
        {
          if (v50 < v225 || v50 >= v225 >> 32)
          {
            goto LABEL_301;
          }

          v51 = sub_2557B0868();
          if (!v51)
          {
            goto LABEL_332;
          }

          v52 = v51;
          v53 = sub_2557B0888();
          v54 = v50 - v53;
          if (__OFSUB__(v50, v53))
          {
            goto LABEL_303;
          }

LABEL_78:
          v57 = *(v52 + v54);
          v44 = v225;
        }

        else
        {
          if (v50 >= v209)
          {
            goto LABEL_300;
          }

          LOWORD(v235[0]) = v44;
          BYTE2(v235[0]) = BYTE2(v44);
          BYTE3(v235[0]) = BYTE3(v44);
          BYTE4(v235[0]) = BYTE4(v225);
          BYTE5(v235[0]) = BYTE5(v44);
          BYTE6(v235[0]) = BYTE6(v44);
          BYTE7(v235[0]) = HIBYTE(v44);
          DWORD2(v235[0]) = v227;
          WORD6(v235[0]) = WORD2(v227);
          v57 = *(v235 + v215 + v48);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_2557B1770;
        *(v58 + 56) = MEMORY[0x277D84B78];
        *(v58 + 64) = MEMORY[0x277D84BC0];
        *(v58 + 32) = v57;
        v59 = sub_2557B0C48();
        v61 = v60;
        v237[0] = v4;
        v63 = *(v4 + 16);
        v62 = *(v4 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_2557AB37C((v62 > 1), v63 + 1, 1);
          v44 = v225;
          v4 = v237[0];
        }

        *(v4 + 16) = v63 + 1;
        v64 = v4 + 16 * v63;
        *(v64 + 32) = v59;
        *(v64 + 40) = v61;
        ++v48;
        v39 = v213;
        LODWORD(v37) = v227 >> 62;
        v1 = v219;
        if (v49 != v213)
        {
          continue;
        }

        break;
      }

      v38 = v200;
LABEL_85:
      *&v235[0] = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
      sub_25578AB8C();
      v65 = sub_2557B0BF8();
      v67 = v66;

      v68 = sub_2557AAA60(v65, v67, &v232);

      *(buf + 4) = v68;
      *(buf + 6) = 2082;
      if (v221 > 1)
      {
        if (v221 != 2)
        {
          v4 = MEMORY[0x277D84F90];
          goto LABEL_124;
        }

        v71 = *(v218 + 16);
        v70 = *(v218 + 24);
        v69 = v70 - v71;
        if (!__OFSUB__(v70, v71))
        {
          if (!v69)
          {
            goto LABEL_88;
          }

          goto LABEL_92;
        }

LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
      }

      if (v221)
      {
        v75 = HIDWORD(v218) - v218;
        if (!__OFSUB__(HIDWORD(v218), v218))
        {
          v69 = v75;
          if (!v75)
          {
            goto LABEL_88;
          }

          goto LABEL_92;
        }

        goto LABEL_327;
      }

      v69 = BYTE6(v16);
      if (!BYTE6(v16))
      {
LABEL_88:
        v4 = MEMORY[0x277D84F90];
        v38 = v200;
        goto LABEL_124;
      }

LABEL_92:
      v237[0] = MEMORY[0x277D84F90];
      sub_2557AB37C(0, v69 & ~(v69 >> 63), 0);
      v72 = v221;
      v73 = v218;
      if (v221)
      {
        if (v221 == 2)
        {
          v74 = *(v218 + 16);
        }

        else
        {
          v74 = v218;
        }
      }

      else
      {
        v74 = 0;
      }

      v216 = v74;
      if (v69 < 0)
      {
        goto LABEL_323;
      }

      v76 = 0;
      v4 = v237[0];
      v211 = v235 + v74;
      while (2)
      {
        if (v76 >= v69)
        {
          goto LABEL_291;
        }

        v77 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          goto LABEL_292;
        }

        v78 = v216 + v76;
        if (v72 == 2)
        {
          if (v78 < *(v73 + 16))
          {
            goto LABEL_305;
          }

          if (v78 >= *(v73 + 24))
          {
            goto LABEL_308;
          }

          v83 = sub_2557B0868();
          if (!v83)
          {
            goto LABEL_335;
          }

          v80 = v83;
          v84 = sub_2557B0888();
          v82 = v78 - v84;
          if (__OFSUB__(v78, v84))
          {
            goto LABEL_310;
          }

LABEL_117:
          v85 = *(v80 + v82);
          v73 = v218;
        }

        else
        {
          if (v72 == 1)
          {
            if (v78 < v218 || v78 >= v218 >> 32)
            {
              goto LABEL_307;
            }

            v79 = sub_2557B0868();
            if (!v79)
            {
              goto LABEL_334;
            }

            v80 = v79;
            v81 = sub_2557B0888();
            v82 = v78 - v81;
            if (__OFSUB__(v78, v81))
            {
              goto LABEL_309;
            }

            goto LABEL_117;
          }

          if (v78 >= BYTE6(v16))
          {
            goto LABEL_306;
          }

          *&v235[0] = v73;
          WORD4(v235[0]) = v16;
          BYTE10(v235[0]) = BYTE2(v16);
          BYTE11(v235[0]) = BYTE3(v16);
          BYTE12(v235[0]) = BYTE4(v16);
          BYTE13(v235[0]) = BYTE5(v16);
          v85 = v211[v76];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
        v86 = swift_allocObject();
        *(v86 + 16) = xmmword_2557B1770;
        *(v86 + 56) = MEMORY[0x277D84B78];
        *(v86 + 64) = MEMORY[0x277D84BC0];
        *(v86 + 32) = v85;
        v87 = sub_2557B0C48();
        v237[0] = v4;
        v90 = *(v4 + 16);
        v89 = *(v4 + 24);
        if (v90 >= v89 >> 1)
        {
          v92 = v87;
          v93 = v88;
          sub_2557AB37C((v89 > 1), v90 + 1, 1);
          v73 = v218;
          v88 = v93;
          v87 = v92;
          v4 = v237[0];
        }

        *(v4 + 16) = v90 + 1;
        v91 = v4 + 16 * v90;
        *(v91 + 32) = v87;
        *(v91 + 40) = v88;
        ++v76;
        v1 = v219;
        v72 = v221;
        if (v77 != v69)
        {
          continue;
        }

        break;
      }

      v38 = v200;
LABEL_124:
      *&v235[0] = v4;
      v94 = sub_2557B0BF8();
      v96 = v95;

      v97 = sub_2557AAA60(v94, v96, &v232);

      *(buf + 14) = v97;
      _os_log_impl(&dword_255786000, v38, v198, "%{public}s is not associated with a Muirfield SSD, under: %{public}s", buf, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C40F40](v196, -1, -1);
      MEMORY[0x259C40F40](buf, -1, -1);
      sub_25578AAE0(v225, v227);
      sub_25578AAE0(v218, v16);

      v6 = 0;
      v40 = 0;
      v41 = v204 == v3;
      v4 = 0x80000002557B37E0;
LABEL_125:
      v5 = log;
      v3 = (v3 + 1);
      if (v41)
      {
        goto LABEL_270;
      }

      goto LABEL_3;
    }

    sub_25578AAE0(v14, v227);
    sub_25578AAE0(v30, v16);
    v4 = 0x80000002557B37E0;
LABEL_7:
    v3 = (v3 + 1);
    v7 += 5;
  }

  while (v223 != v3);
  if ((v214 & 1) == 0)
  {
    goto LABEL_265;
  }

  v98 = v208;
  v205 = *(v208 + 16);
  if (!v205)
  {
    goto LABEL_265;
  }

  LOBYTE(v196) = 0;
  LOBYTE(buf) = 0;
  v99 = 0;
  LOBYTE(v4) = 1;
LABEL_131:
  while (2)
  {
    if (v99 >= *(v98 + 16))
    {
      goto LABEL_276;
    }

    while (1)
    {
      v100 = (v208 + 32 + (v99 << 6));
      v102 = v100[1];
      v101 = v100[2];
      v103 = *v100;
      *&v236[9] = *(v100 + 41);
      v235[1] = v102;
      *v236 = v101;
      v235[0] = v103;
      v105 = *(&v102 + 1);
      v104 = v102;
      ++v99;
      v106 = swift_allocObject();
      *(v106 + 16) = 0xD000000000000014;
      *(v106 + 24) = 0x80000002557B37E0;
      sub_255799C74(v235, &v232);
      v107 = sub_2557A07AC(15, sub_255799F58, v106, 0);
      v109 = v105 >> 62;
      v217 = HIDWORD(v104);
      v110 = v108 >> 62;
      if (v105 >> 62 == 3)
      {
        v111 = 0;
        if (!v104 && v105 == 0xC000000000000000 && v108 >> 62 == 3)
        {
          v111 = 0;
          if (!v107 && v108 == 0xC000000000000000)
          {
            v107 = 0;
            v108 = 0xC000000000000000;
LABEL_163:
            sub_25578AAE0(v107, v108);
            goto LABEL_164;
          }
        }
      }

      else if (v109 > 1)
      {
        if (v109 == 2)
        {
          v113 = *(v104 + 16);
          v112 = *(v104 + 24);
          v25 = __OFSUB__(v112, v113);
          v111 = v112 - v113;
          if (v25)
          {
            goto LABEL_317;
          }
        }

        else
        {
          v111 = 0;
        }
      }

      else if (v109)
      {
        LODWORD(v111) = HIDWORD(v104) - v104;
        if (__OFSUB__(HIDWORD(v104), v104))
        {
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
          goto LABEL_321;
        }

        v111 = v111;
      }

      else
      {
        v111 = BYTE6(v105);
      }

      v222 = v104;
      if (v110 > 1)
      {
        if (v110 != 2)
        {
          if (v111)
          {
            break;
          }

          goto LABEL_163;
        }

        v115 = *(v107 + 16);
        v114 = *(v107 + 24);
        v25 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v25)
        {
          goto LABEL_312;
        }

        if (v111 != v116)
        {
          break;
        }

        goto LABEL_159;
      }

      if (!v110)
      {
        if (v111 != BYTE6(v108))
        {
          break;
        }

        goto LABEL_159;
      }

      if (__OFSUB__(HIDWORD(v107), v107))
      {
        goto LABEL_311;
      }

      if (v111 != HIDWORD(v107) - v107)
      {
        break;
      }

LABEL_159:
      if (v111 < 1)
      {
        goto LABEL_163;
      }

      v117 = v107;
      v118 = v108;
      sub_25578ACE4(v107, v108);
      v119 = sub_255798EB4(v222, v105, v117, v118);
      sub_25578AAE0(v117, v118);
      if ((v119 & 1) == 0)
      {
        goto LABEL_173;
      }

LABEL_164:
      if (v236[0])
      {
        if (v236[0] - 3 >= 0xC && v236[0] != 1)
        {
          if (qword_27F7D2DF8 != -1)
          {
            swift_once();
          }

          v186 = sub_2557B0B38();
          __swift_project_value_buffer(v186, qword_27F7D3080);
          v187 = sub_2557B0B18();
          v188 = sub_2557B0DE8();
          if (os_log_type_enabled(v187, v188))
          {
            v189 = swift_slowAlloc();
            *v189 = 0;
            _os_log_impl(&dword_255786000, v187, v188, "Stinger instance found", v189, 2u);
            MEMORY[0x259C40F40](v189, -1, -1);
          }

          LOBYTE(v196) = 1;
        }

        sub_255799D94(v235);
        v98 = v208;
        if (v99 != v205)
        {
          goto LABEL_131;
        }

        goto LABEL_298;
      }

      if (qword_27F7D2DF8 != -1)
      {
        swift_once();
      }

      v120 = sub_2557B0B38();
      __swift_project_value_buffer(v120, qword_27F7D3080);
      v121 = sub_2557B0B18();
      v122 = sub_2557B0DE8();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        *v123 = 0;
        _os_log_impl(&dword_255786000, v121, v122, "Bee instance found", v123, 2u);
        MEMORY[0x259C40F40](v123, -1, -1);
      }

      sub_255799D94(v235);
      if (v99 == v205)
      {
        goto LABEL_293;
      }

      LOBYTE(buf) = 1;
      if (v99 >= *(v208 + 16))
      {
        goto LABEL_276;
      }
    }

    sub_25578AAE0(v107, v108);
LABEL_173:
    if (qword_27F7D2DF8 != -1)
    {
      swift_once();
    }

    v124 = sub_2557B0B38();
    __swift_project_value_buffer(v124, qword_27F7D3080);
    sub_255799C74(v235, &v232);
    v125 = sub_2557B0B18();
    v126 = sub_2557B0DD8();
    sub_255799D94(v235);
    if (!os_log_type_enabled(v125, v126))
    {

      sub_255799D94(v235);
      goto LABEL_254;
    }

    v220 = v105 >> 62;
    v228 = v105;
    v207 = v99;
    v128 = *(&v235[0] + 1);
    v127 = *&v235[0];
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v237[0] = v130;
    v206 = v129;
    *v129 = 136446466;
    v131 = v128 >> 62;
    loga = v125;
    v201 = v126;
    v199 = v130;
    if ((v128 >> 62) > 1)
    {
      if (v131 != 2)
      {
        goto LABEL_189;
      }

      v133 = *(v127 + 16);
      v132 = *(v127 + 24);
      v4 = v132 - v133;
      if (!__OFSUB__(v132, v133))
      {
        if (v4)
        {
          goto LABEL_184;
        }

        goto LABEL_189;
      }

      goto LABEL_318;
    }

    if (!v131)
    {
      v4 = BYTE6(v128);
      if (!BYTE6(v128))
      {
        goto LABEL_189;
      }

LABEL_184:
      v229 = MEMORY[0x277D84F90];
      sub_2557AB37C(0, v4 & ~(v4 >> 63), 0);
      v134 = v128 >> 62;
      if (v128 >> 62)
      {
        if (v128 >> 62 == 2)
        {
          v135 = *(v127 + 16);
        }

        else
        {
          v135 = v127;
        }
      }

      else
      {
        v135 = v134;
      }

      v226 = v135;
      if (v4 < 0)
      {
        goto LABEL_313;
      }

      v150 = 0;
      v137 = v229;
      v210 = &v232 + v135;
      v224 = v4;
      while (2)
      {
        if (v150 >= v4)
        {
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
          goto LABEL_290;
        }

        v151 = v150 + 1;
        if (__OFADD__(v150, 1))
        {
          goto LABEL_272;
        }

        v4 = v226 + v150;
        if (v134 == 2)
        {
          if (v4 < *(v127 + 16))
          {
            goto LABEL_278;
          }

          if (v4 >= *(v127 + 24))
          {
            goto LABEL_280;
          }

          v156 = sub_2557B0868();
          if (!v156)
          {
            goto LABEL_329;
          }

          v153 = v156;
          v157 = sub_2557B0888();
          v155 = v4 - v157;
          if (__OFSUB__(v4, v157))
          {
            goto LABEL_282;
          }

LABEL_221:
          v158 = *(v153 + v155);
          LODWORD(v134) = v128 >> 62;
        }

        else
        {
          if (v134 == 1)
          {
            if (v4 < v127 || v4 >= v127 >> 32)
            {
              goto LABEL_279;
            }

            v152 = sub_2557B0868();
            if (!v152)
            {
              goto LABEL_328;
            }

            v153 = v152;
            v154 = sub_2557B0888();
            v155 = v4 - v154;
            if (__OFSUB__(v4, v154))
            {
              goto LABEL_281;
            }

            goto LABEL_221;
          }

          if (v4 >= BYTE6(v128))
          {
            goto LABEL_277;
          }

          v232 = v127;
          LOWORD(v233) = v128;
          BYTE2(v233) = BYTE2(v128);
          HIBYTE(v233) = BYTE3(v128);
          LOBYTE(v234) = BYTE4(v128);
          HIBYTE(v234) = BYTE5(v128);
          v158 = v210[v150];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
        v159 = swift_allocObject();
        *(v159 + 16) = xmmword_2557B1770;
        *(v159 + 56) = MEMORY[0x277D84B78];
        *(v159 + 64) = MEMORY[0x277D84BC0];
        *(v159 + 32) = v158;
        v160 = sub_2557B0C48();
        v162 = v161;
        v164 = *(v229 + 16);
        v163 = *(v229 + 24);
        if (v164 >= v163 >> 1)
        {
          sub_2557AB37C((v163 > 1), v164 + 1, 1);
          LODWORD(v134) = v128 >> 62;
        }

        *(v229 + 16) = v164 + 1;
        v165 = v229 + 16 * v164;
        *(v165 + 32) = v160;
        *(v165 + 40) = v162;
        ++v150;
        v4 = v224;
        if (v151 == v224)
        {
          goto LABEL_190;
        }

        continue;
      }
    }

    v136 = HIDWORD(v127) - v127;
    if (__OFSUB__(HIDWORD(v127), v127))
    {
      goto LABEL_319;
    }

    v4 = v136;
    if (v136)
    {
      goto LABEL_184;
    }

LABEL_189:
    v137 = MEMORY[0x277D84F90];
LABEL_190:
    v232 = v137;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
    sub_25578AB8C();
    v138 = sub_2557B0BF8();
    v140 = v139;

    v141 = sub_2557AAA60(v138, v140, v237);

    v4 = v206;
    v99 = v207;
    *(v206 + 1) = v141;
    *(v206 + 6) = 2082;
    v142 = v220;
    if (v220 > 1)
    {
      if (v220 != 2)
      {
        goto LABEL_202;
      }

      v145 = *(v222 + 16);
      v144 = *(v222 + 24);
      v143 = v144 - v145;
      if (!__OFSUB__(v144, v145))
      {
        if (v143)
        {
          goto LABEL_197;
        }

        goto LABEL_202;
      }

LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
      goto LABEL_325;
    }

    if (v220)
    {
      v148 = v217 - v222;
      if (!__OFSUB__(v217, v222))
      {
        v143 = v148;
        if (v148)
        {
          goto LABEL_197;
        }

LABEL_202:
        v149 = MEMORY[0x277D84F90];
        goto LABEL_253;
      }

      goto LABEL_320;
    }

    v143 = BYTE6(v228);
    if (!BYTE6(v228))
    {
      goto LABEL_202;
    }

LABEL_197:
    v230 = MEMORY[0x277D84F90];
    sub_2557AB37C(0, v143 & ~(v143 >> 63), 0);
    v146 = v222;
    if (v220)
    {
      if (v220 == 2)
      {
        v147 = *(v222 + 16);
      }

      else
      {
        v147 = v222;
      }
    }

    else
    {
      v147 = 0;
    }

    if (v143 < 0)
    {
LABEL_314:
      __break(1u);
      goto LABEL_315;
    }

    v166 = 0;
    v149 = v230;
    do
    {
      if (v166 >= v143)
      {
        goto LABEL_273;
      }

      v4 = v166 + 1;
      if (__OFADD__(v166, 1))
      {
        goto LABEL_274;
      }

      v167 = v147 + v166;
      if (v142 == 2)
      {
        if (v167 < *(v146 + 16))
        {
          goto LABEL_283;
        }

        if (v167 >= *(v146 + 24))
        {
          goto LABEL_286;
        }

        v172 = sub_2557B0868();
        if (!v172)
        {
          goto LABEL_331;
        }

        v169 = v172;
        v173 = sub_2557B0888();
        v171 = v167 - v173;
        if (__OFSUB__(v167, v173))
        {
          goto LABEL_288;
        }

        goto LABEL_246;
      }

      if (v142 == 1)
      {
        if (v167 < v222 || v167 >= v222 >> 32)
        {
          goto LABEL_285;
        }

        v168 = sub_2557B0868();
        if (!v168)
        {
          goto LABEL_330;
        }

        v169 = v168;
        v170 = sub_2557B0888();
        v171 = v167 - v170;
        if (__OFSUB__(v167, v170))
        {
          goto LABEL_287;
        }

LABEL_246:
        v174 = *(v169 + v171);
        v146 = v222;
        v142 = v220;
        goto LABEL_249;
      }

      if (v167 >= BYTE6(v228))
      {
        goto LABEL_284;
      }

      LOWORD(v232) = v146;
      BYTE2(v232) = BYTE2(v146);
      BYTE3(v232) = BYTE3(v146);
      BYTE4(v232) = v217;
      BYTE5(v232) = BYTE5(v146);
      BYTE6(v232) = BYTE6(v146);
      HIBYTE(v232) = HIBYTE(v146);
      v233 = v228;
      v234 = WORD2(v228);
      v174 = *(&v232 + v147 + v166);
LABEL_249:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
      v175 = swift_allocObject();
      *(v175 + 16) = xmmword_2557B1770;
      *(v175 + 56) = MEMORY[0x277D84B78];
      *(v175 + 64) = MEMORY[0x277D84BC0];
      *(v175 + 32) = v174;
      v176 = sub_2557B0C48();
      v231 = v149;
      v179 = *(v149 + 16);
      v178 = *(v149 + 24);
      if (v179 >= v178 >> 1)
      {
        v212 = v176;
        v181 = v177;
        sub_2557AB37C((v178 > 1), v179 + 1, 1);
        v146 = v222;
        v177 = v181;
        v176 = v212;
        v149 = v231;
      }

      *(v149 + 16) = v179 + 1;
      v180 = v149 + 16 * v179;
      *(v180 + 32) = v176;
      *(v180 + 40) = v177;
      ++v166;
    }

    while (v4 != v143);
    v4 = v206;
    v99 = v207;
LABEL_253:
    v232 = v149;
    v182 = sub_2557B0BF8();
    v184 = v183;

    v185 = sub_2557AAA60(v182, v184, v237);

    *(v4 + 14) = v185;
    _os_log_impl(&dword_255786000, loga, v201, "%{public}s is not associated with a Muirfield SSD, under: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C40F40](v199, -1, -1);
    MEMORY[0x259C40F40](v4, -1, -1);
    sub_255799D94(v235);

LABEL_254:
    if (v99 != v205)
    {
      LOBYTE(v4) = 0;
      v98 = v208;
      continue;
    }

    break;
  }

LABEL_265:
  v40 = 0;
LABEL_270:
  v194 = *MEMORY[0x277D85DE8];
  return v40 & 1;
}

uint64_t sub_255798C10()
{
  v0 = sub_2557B0B38();
  __swift_allocate_value_buffer(v0, qword_27F7D3080);
  __swift_project_value_buffer(v0, qword_27F7D3080);
  return sub_2557B0B28();
}

uint64_t sub_255798C84@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2557B0868();
    if (v10)
    {
      v11 = sub_2557B0888();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2557B0878();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2557B0868();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2557B0888();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2557B0878();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_255798EB4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_255799154(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_25578AAE0(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_255798C84(v14, a3, a4, &v13);
  v10 = v4;
  sub_25578AAE0(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_255799044(uint64_t result, unint64_t a2, unsigned int *a3)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v5 = 0;
      goto LABEL_15;
    }

    v6 = *(result + 16);
    v7 = sub_2557B0868();
    if (!v7)
    {
      goto LABEL_19;
    }

    v8 = v7;
    v9 = sub_2557B0888();
    if (!__OFSUB__(v6, v9))
    {
      v10 = (v6 - v9 + v8);
      result = sub_2557B0878();
      if (v10)
      {
LABEL_13:
        v5 = bswap32(*v10);
        goto LABEL_15;
      }

      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (!v4)
  {
    v5 = bswap32(result);
LABEL_15:
    *a3 = v5;
    return result;
  }

  v11 = result;
  if (result > result >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    sub_2557B0878();
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = sub_2557B0868();
  if (!v12)
  {
LABEL_21:
    result = sub_2557B0878();
    __break(1u);
    goto LABEL_22;
  }

  v13 = v12;
  v14 = sub_2557B0888();
  if (__OFSUB__(v11, v14))
  {
    goto LABEL_18;
  }

  v10 = (v11 - v14 + v13);
  result = sub_2557B0878();
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_255799154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2557B0868();
  v11 = result;
  if (result)
  {
    result = sub_2557B0888();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2557B0878();
  sub_255798C84(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

void sub_25579920C(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
LABEL_25:
    sub_255799C4C(a1, a2);
    goto LABEL_26;
  }

  sub_255799C60(a1, a2);
  sub_255799C60(a1, a2);
  v6 = 0;
  v7 = 0;
  v8 = 0xF000000000000000;
  v9 = 0xF000000000000000;
  do
  {
    while (1)
    {
      v10 = sub_2557AF0E8();
      if ((~v10 & 0xFF00000000) == 0)
      {
        if (v9 >> 60 == 15)
        {
          sub_25578AAE0(a1, a2);
          sub_255799C4C(v6, v8);
          v27 = a1;
          v28 = a2;
        }

        else
        {
          if (v8 >> 60 != 15)
          {
            sub_25578ACE4(v7, v9);
            v30 = sub_2557B09D8();
            sub_255799C4C(v7, v9);
            sub_255799C4C(a1, a2);
            sub_255799C4C(a1, a2);
            sub_25578AAE0(a1, a2);
            v31 = sub_2557914E8(v30);
            if (v31 == 15)
            {
              v29 = 14;
            }

            else
            {
              v29 = v31;
            }

            goto LABEL_27;
          }

          sub_25578AAE0(a1, a2);
          sub_255799C4C(a1, a2);
          v27 = v7;
          v28 = v9;
        }

        sub_255799C4C(v27, v28);
        goto LABEL_25;
      }

      if (BYTE4(v10))
      {
        v14 = v10;
      }

      else
      {
        v14 = v10;
      }

      if (BYTE4(v10) - 2 < 2)
      {
        v14 = v10;
      }

      if (v14 == 204)
      {
        break;
      }

      if (v14 == 79)
      {
        v15 = v7;
        v16 = v9;
        v9 = v13;
        v7 = v12;
        sub_255799C4C(v15, v16);
        if (v9 >> 60 == 15)
        {
          __break(1u);
          return;
        }
      }

      else
      {
        sub_255799C30(v10, v11, v12, v13);
      }
    }

    v17 = v6;
    v18 = v8;
    v8 = v13;
    v6 = v12;
    sub_255799C4C(v17, v18);
  }

  while (v8 >> 60 != 15);
  __break(1u);
  sub_25578AAE0(a1, a2);
  sub_255799C4C(v6, v8);
  sub_255799C4C(v7, v9);
  sub_255799C4C(a1, a2);
  if (qword_27F7D2DF8 != -1)
  {
    swift_once();
  }

  v19 = sub_2557B0B38();
  __swift_project_value_buffer(v19, qword_27F7D3080);
  v20 = 0;
  v21 = sub_2557B0B18();
  v22 = sub_2557B0DD8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = 0;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_255786000, v21, v22, "Failed to decode Package information: %@", v23, 0xCu);
    sub_255799CFC(v24, &qword_27F7D30A8, &qword_2557B2080);
    MEMORY[0x259C40F40](v24, -1, -1);
    MEMORY[0x259C40F40](v23, -1, -1);

    sub_255799C4C(a1, a2);
  }

  else
  {
    sub_255799C4C(a1, a2);
  }

LABEL_26:
  v7 = 0;
  v9 = 0;
  v6 = 0;
  v8 = 0;
  v29 = 15;
LABEL_27:
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v6;
  *(a3 + 24) = v8;
  *(a3 + 32) = v29;
}

uint64_t sub_2557995A0@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v3 = a2;
  v51 = *MEMORY[0x277D85DE8];
  if (a2 >> 60 == 15)
  {
    v5 = a1;
    goto LABEL_55;
  }

  sub_255799C60(a1, a2);
  v42 = a1;
  sub_255799C60(a1, v3);
  v7 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v39 = 1;
  v47 = 0xF000000000000000;
  v48 = 0xF000000000000000;
  v46 = 0xF000000000000000;
LABEL_4:
  while (2)
  {
    while (2)
    {
      v8 = sub_2557AF0E8();
      v10 = v9;
      v12 = v11;
      for (i = v13; ; i = v17)
      {
        if ((~v8 & 0xFF00000000) == 0)
        {
          v28 = v46;
          if (v46 >> 60 == 15)
          {
            sub_25578AAE0(a1, a2);
            sub_255799C4C(v45, v47);
            sub_255799C4C(v44, v48);
            v29 = a1;
            v30 = v3;
          }

          else if (v48 >> 60 == 15)
          {
            sub_25578AAE0(a1, a2);
            sub_255799C4C(v45, v47);
            sub_255799C4C(a1, v3);
            v29 = v43;
            v30 = v46;
          }

          else
          {
            if (v39)
            {
              sub_25578AAE0(a1, a2);
              sub_255799C4C(v45, v47);
            }

            else
            {
              if (v47 >> 60 != 15)
              {
                v31 = v43;
                sub_25578ACE4(v43, v46);
                v38 = sub_2557B09D8();
                sub_255799C4C(v43, v46);
                sub_255799C4C(v42, v3);
                v33 = v48;
                sub_255799C4C(v42, v3);
                sub_25578AAE0(a1, a2);
                result = sub_2557914E8(v38);
                if (result == 15)
                {
                  LOBYTE(v36) = 14;
                }

                else
                {
                  LOBYTE(v36) = result;
                }

                v36 = v36;
                v32 = v44;
                v34 = v45;
                v35 = v47;
                goto LABEL_56;
              }

              sub_25578AAE0(a1, a2);
            }

            sub_255799C4C(a1, v3);
            sub_255799C4C(v43, v46);
            v29 = v44;
            v30 = v48;
          }

          sub_255799C4C(v29, v30);
          v5 = a1;
LABEL_55:
          result = sub_255799C4C(v5, v3);
          v31 = 0;
          v28 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v7 = 0;
          v36 = 15;
LABEL_56:
          *a3 = v31;
          *(a3 + 8) = v28;
          *(a3 + 16) = v32;
          *(a3 + 24) = v33;
          *(a3 + 32) = v36;
          *(a3 + 40) = v34;
          *(a3 + 48) = v35;
          *(a3 + 56) = v7;
          v37 = *MEMORY[0x277D85DE8];
          return result;
        }

        v18 = BYTE4(v8) ? v8 : v8;
        if (BYTE4(v8) - 2 < 2)
        {
          v18 = v8;
        }

        if (v18 > 203)
        {
          break;
        }

        if (v18 == 79)
        {
          sub_255799C4C(v43, v46);
          v43 = v12;
          v46 = i;
          if (i >> 60 == 15)
          {
            goto LABEL_67;
          }

          goto LABEL_4;
        }

        if (v18 == 196)
        {
          sub_255799C4C(v45, v47);
          v45 = v12;
          v47 = i;
          if (i >> 60 == 15)
          {
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
            goto LABEL_70;
          }

          goto LABEL_4;
        }

LABEL_5:
        sub_255799C30(v8, v10, v12, i);
        v8 = sub_2557AF0E8();
        v10 = v15;
        v12 = v16;
      }

      if (v18 == 204)
      {
        sub_255799C4C(v44, v48);
        v44 = v12;
        v48 = i;
        if (i >> 60 == 15)
        {
          goto LABEL_69;
        }

        continue;
      }

      break;
    }

    if (v18 != 40816)
    {
      goto LABEL_5;
    }

    if (i >> 60 == 15)
    {
      goto LABEL_68;
    }

    v19 = i >> 62;
    if ((i >> 62) > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_70;
      }

      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      goto LABEL_32;
    }

    if (v19)
    {
      v21 = v12;
      v20 = v12 >> 32;
LABEL_32:
      if (v21 == v20)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
      }

      if (v19 == 2)
      {
        if (v21 < *(v12 + 16))
        {
          goto LABEL_62;
        }

        v40 = v21;
        if (v21 >= *(v12 + 24))
        {
          goto LABEL_65;
        }

        result = sub_2557B0868();
        if (!result)
        {
          goto LABEL_72;
        }

        v23 = result;
        v24 = sub_2557B0888();
        if (__OFSUB__(v40, v24))
        {
          goto LABEL_66;
        }

        v7 = *(v23 + v40 - v24);
      }

      else
      {
        v41 = v3;
        if (v21 < v12 || v21 >= v12 >> 32)
        {
          goto LABEL_63;
        }

        v25 = v21;

        result = sub_2557B0868();
        if (!result)
        {
          goto LABEL_71;
        }

        v26 = result;
        v27 = sub_2557B0888();
        if (__OFSUB__(v25, v27))
        {
          goto LABEL_64;
        }

        v7 = *(v26 + v25 - v27);
        v3 = v41;
      }

LABEL_44:
      sub_255799C30(v8, v10, v12, i);
      sub_255799C30(v8, v10, v12, i);
      v39 = 0;
      continue;
    }

    break;
  }

  if ((i & 0xFF000000000000) != 0)
  {
    v7 = v12;
    goto LABEL_44;
  }

LABEL_70:
  result = sub_255799C30(v8, v10, v12, i);
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_255799C30(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((~result & 0xFF00000000) != 0)
  {
    return sub_255799C4C(a3, a4);
  }

  return result;
}

uint64_t sub_255799C4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25578AAE0(a1, a2);
  }

  return a1;
}

uint64_t sub_255799C60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25578ACE4(a1, a2);
  }

  return a1;
}

uint64_t sub_255799CE4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_255799CFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_255799D5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_255799DFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF2 && *(a1 + 57))
  {
    return (*a1 + 242);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 0xF;
  v5 = v3 - 15;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_255799E40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 242;
    if (a3 >= 0xF2)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 14;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_255799EB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF2 && *(a1 + 33))
  {
    return (*a1 + 242);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 0xF;
  v5 = v3 - 15;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_255799EFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 242;
    *(result + 8) = 0;
    if (a3 >= 0xF2)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 14;
    }
  }

  return result;
}

uint64_t sub_255799F5C()
{
  v0 = sub_2557B0B38();
  __swift_allocate_value_buffer(v0, qword_27F7D30B0);
  __swift_project_value_buffer(v0, qword_27F7D30B0);
  return sub_2557B0B28();
}

void *sub_255799FD4()
{
  type metadata accessor for Settings();
  swift_allocObject();
  result = sub_25579A0EC();
  off_27F7D30C8 = result;
  return result;
}

uint64_t sub_25579A024()
{
  v1 = *v0;
  sub_2557B1028();
  MEMORY[0x259C409C0](v1);
  return sub_2557B1058();
}

uint64_t sub_25579A098()
{
  v1 = *v0;
  sub_2557B1028();
  MEMORY[0x259C409C0](v1);
  return sub_2557B1058();
}

uint64_t sub_25579A0EC()
{
  v1 = v0;
  v2 = sub_2557B0E08();
  v19 = *(v2 - 8);
  v20 = v2;
  v3 = *(v19 + 64);
  MEMORY[0x28223BE20]();
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_2557B0DF8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_2557B0B58() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_2557B0C08();
  v9 = [v7 initWithSuiteName_];

  *(v0 + 16) = v9;
  sub_25579A964();
  sub_2557B0B48();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25579A9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D30E0, &qword_2557B23C0);
  sub_25579AEE8(&qword_27F7D30E8, &qword_27F7D30E0, &qword_2557B23C0);
  sub_2557B0EB8();
  (*(v19 + 104))(v18, *MEMORY[0x277D85260], v20);
  *(v0 + 24) = sub_2557B0E18();
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v10 = sub_2557B0C08();
  v11 = MGGetBoolAnswer();

  *(v1 + 41) = v11;
  v12 = *(v1 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_25579AA40;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25579A8A8;
  aBlock[3] = &block_descriptor;
  v14 = _Block_copy(aBlock);

  v15 = os_state_add_handler();
  _Block_release(v14);
  *(v1 + 32) = v15;
  *(v1 + 40) = 0;
  return v1;
}

void sub_25579A460()
{
  if (qword_27F7D2E00 != -1)
  {
    swift_once();
  }

  v1 = sub_2557B0B38();
  __swift_project_value_buffer(v1, qword_27F7D30B0);
  v2 = sub_2557B0B18();
  v3 = sub_2557B0DE8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255786000, v2, v3, "===== State Dump =====", v4, 2u);
    MEMORY[0x259C40F40](v4, -1, -1);
  }

  v5 = *(v0 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = &off_2797F4000;
    do
    {
      LOBYTE(v26[0]) = byte_286790BC8[v6 + 32];
      v8 = sub_2557B0C58();
      v10 = v9;
      v11 = sub_2557B0C08();
      v12 = [v5 v7[102]];

      if (v12)
      {
        sub_2557B0EA8();
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = 0u;
        v25 = 0u;
      }

      v26[0] = v24;
      v26[1] = v25;
      if (*(&v25 + 1))
      {
        if (swift_dynamicCast())
        {

          v13 = sub_2557B0B18();
          v14 = sub_2557B0DE8();

          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            v16 = v5;
            v17 = swift_slowAlloc();
            *&v26[0] = v17;
            *v15 = 136315394;
            v18 = sub_2557AAA60(v8, v10, v26);

            *(v15 + 4) = v18;
            *(v15 + 12) = 2080;
            v19 = sub_2557AAA60(v24, *(&v24 + 1), v26);

            *(v15 + 14) = v19;
            _os_log_impl(&dword_255786000, v13, v14, "%s: %s", v15, 0x16u);
            swift_arrayDestroy();
            v20 = v17;
            v5 = v16;
            MEMORY[0x259C40F40](v20, -1, -1);
            MEMORY[0x259C40F40](v15, -1, -1);
          }

          else
          {
          }

          v7 = &off_2797F4000;
        }

        else
        {
        }
      }

      else
      {

        sub_25579AA60(v26);
      }

      ++v6;
    }

    while (v6 != 3);
  }

  v21 = sub_2557B0B18();
  v22 = sub_2557B0DE8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_255786000, v21, v22, "======================", v23, 2u);
    MEMORY[0x259C40F40](v23, -1, -1);
  }
}

uint64_t sub_25579A83C(uint64_t a1)
{
  if (*(a1 + 16) == 3)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_25579A460();
    }
  }

  return 0;
}

uint64_t sub_25579A8A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

uint64_t sub_25579A8F8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_25579A964()
{
  result = qword_27F7D30D0;
  if (!qword_27F7D30D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7D30D0);
  }

  return result;
}

unint64_t sub_25579A9B0()
{
  result = qword_27F7D30D8;
  if (!qword_27F7D30D8)
  {
    sub_2557B0DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D30D8);
  }

  return result;
}

uint64_t sub_25579AA08()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25579AA60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D30F0, &qword_2557B23C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25579AAD0()
{
  sub_2557B0C58();
  if (qword_27F7D2E08 != -1)
  {
    swift_once();
  }

  v0 = *(off_27F7D30C8 + 2);
  if (v0)
  {
    v1 = v0;
    v2 = sub_2557B0C08();

    v3 = [v1 stringForKey_];

    if (v3)
    {
      v4 = sub_2557B0C38();

      return v4;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_25579ABD4()
{
  LOBYTE(v12) = 2;
  sub_2557B0C58();
  if (qword_27F7D2E08 != -1)
  {
    swift_once();
  }

  v0 = off_27F7D30C8;
  v1 = *(off_27F7D30C8 + 2);
  if (!v1)
  {

    v12 = 0u;
    v13 = 0u;
LABEL_12:
    v8 = 2;
    goto LABEL_13;
  }

  v2 = v1;
  v3 = sub_2557B0C08();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_2557B0EA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1) || (v5 = v0[2]) == 0)
  {

    goto LABEL_12;
  }

  v6 = v5;
  v7 = sub_2557B0C08();

  v8 = [v6 BOOLForKey_];

LABEL_13:
  sub_25579AA60(&v12);
  return v8;
}

uint64_t getEnumTagSinglePayload for Settings.UserDefaultKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Settings.UserDefaultKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25579AEE8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_25579AF34()
{
  result = qword_27F7D3108;
  if (!qword_27F7D3108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D3108);
  }

  return result;
}

uint64_t sub_25579AF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3128, &unk_2557B2530);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v6);
  v10 = &v22[-v9 - 8];
  v11 = swift_allocBox();
  v13 = v12;
  v14 = type metadata accessor for SLAMScript(0);
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  v22[0] = 1;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2557B2490;
  *(v16 + 32) = v11;

  sub_25579DD5C(a1, v22, sub_25579EC4C, v16);
  if (v2)
  {
  }

  swift_beginAccess();
  sub_25579E5D8(v13, v10);
  v17 = *(v15 + 48);
  v18 = v17(v10, 1, v14);
  sub_25579E648(v10);
  if (v18 == 1)
  {
    sub_25578AA30();
    swift_allocError();
    *v19 = xmmword_2557B24A0;
    *(v19 + 16) = 7;
    swift_willThrow();
  }

  sub_25579E5D8(v13, v8);
  result = v17(v8, 1, v14);
  if (result != 1)
  {
    sub_25579E6B0(v8, v23);
  }

  __break(1u);
  return result;
}

uint64_t sub_25579B208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3128, &unk_2557B2530);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8 - 8];
  v10 = swift_allocBox();
  v12 = v11;
  v13 = type metadata accessor for SLAMScript(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  v23[0] = 0;
  v15 = swift_allocObject();
  v15[2] = 0xD000000000000015;
  v15[3] = 0x80000002557B39C0;
  v15[4] = v10;

  v16 = v24;
  sub_25579DD5C(a1, v23, sub_25579EC4C, v15);
  if (v16)
  {
  }

  v17 = v7;

  swift_beginAccess();
  sub_25579E5D8(v12, v9);
  v18 = *(v14 + 48);
  v19 = v18(v9, 1, v13);
  sub_25579E648(v9);
  if (v19 == 1)
  {
    sub_25578AA30();
    swift_allocError();
    *v20 = xmmword_2557B24A0;
    *(v20 + 16) = 7;
    swift_willThrow();
  }

  sub_25579E5D8(v12, v17);
  result = v18(v17, 1, v13);
  if (result != 1)
  {
    sub_25579E6B0(v17, v22);
  }

  __break(1u);
  return result;
}

uint64_t sub_25579B498@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3128, &unk_2557B2530);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = sub_2557911E8(a2);
  if (v14 != 11)
  {
    v38 = a3;
    v39 = v11;
    v21 = sub_255790D64(v14);
    v23 = v22;
    v40 = 0;
    v41 = 0xE000000000000000;
    v42 = v3;
    sub_2557B0EF8();

    v40 = 0xD000000000000010;
    v41 = 0x80000002557B39A0;
    MEMORY[0x259C40650](v21, v23);

    v24 = a1;
    v25 = v40;
    v26 = v41;
    v27 = swift_allocBox();
    v29 = v28;
    v30 = type metadata accessor for SLAMScript(0);
    v31 = *(v30 - 8);
    (*(v31 + 56))(v29, 1, 1, v30);
    LOBYTE(v40) = 3;
    v32 = swift_allocObject();
    v32[2] = v25;
    v32[3] = v26;
    v32[4] = v27;

    v33 = v42;
    sub_25579DD5C(v24, &v40, sub_25579EC4C, v32);
    if (v33)
    {
    }

    swift_beginAccess();
    sub_25579E5D8(v29, v13);
    v34 = *(v31 + 48);
    if (v34(v13, 1, v30) == 1)
    {

      sub_25579E648(v13);
      sub_25578AA30();
      swift_allocError();
      *v35 = xmmword_2557B24A0;
      *(v35 + 16) = 7;
      swift_willThrow();
    }

    else
    {
      sub_25579E648(v13);
      v36 = v39;
      sub_25579E5D8(v29, v39);
      result = v34(v36, 1, v30);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      sub_25579E6B0(v36, v38);
    }
  }

  if (qword_27F7D2E10 != -1)
  {
    swift_once();
  }

  v15 = sub_2557B0B38();
  __swift_project_value_buffer(v15, qword_27F7D3110);
  v16 = sub_2557B0B18();
  v17 = sub_2557B0DD8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 16908544;
    v18[4] = a2;
    _os_log_impl(&dword_255786000, v16, v17, "Could not find an script for kernelId: %{public}hhu", v18, 5u);
    MEMORY[0x259C40F40](v18, -1, -1);
  }

  sub_25578AA30();
  swift_allocError();
  *v19 = xmmword_2557B24B0;
  *(v19 + 16) = 7;
  return swift_willThrow();
}

uint64_t sub_25579B8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3128, &unk_2557B2530);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8 - 8];
  v10 = swift_allocBox();
  v12 = v11;
  v13 = type metadata accessor for SLAMScript(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  v23[0] = 7;
  v15 = swift_allocObject();
  v15[2] = 0xD000000000000012;
  v15[3] = 0x80000002557B39E0;
  v15[4] = v10;

  v16 = v24;
  sub_25579DD5C(a1, v23, sub_25579EC4C, v15);
  if (v16)
  {
  }

  v17 = v7;

  swift_beginAccess();
  sub_25579E5D8(v12, v9);
  v18 = *(v14 + 48);
  v19 = v18(v9, 1, v13);
  sub_25579E648(v9);
  if (v19 == 1)
  {
    sub_25578AA30();
    swift_allocError();
    *v20 = xmmword_2557B24A0;
    *(v20 + 16) = 7;
    swift_willThrow();
  }

  sub_25579E5D8(v12, v17);
  result = v18(v17, 1, v13);
  if (result != 1)
  {
    sub_25579E6B0(v17, v22);
  }

  __break(1u);
  return result;
}

uint64_t sub_25579BBC8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v28 = a3;
  v25 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3128, &unk_2557B2530);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = swift_allocBox();
  v15 = v14;
  v16 = type metadata accessor for SLAMScript(0);
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  v27[0] = a2;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v13;

  v19 = v26;
  sub_25579DD5C(a1, v27, v28, v18);
  if (v19)
  {
  }

  swift_beginAccess();
  sub_25579E5D8(v15, v12);
  v20 = *(v17 + 48);
  v21 = v20(v12, 1, v16);
  sub_25579E648(v12);
  if (v21 == 1)
  {
    sub_25578AA30();
    swift_allocError();
    *v22 = xmmword_2557B24A0;
    *(v22 + 16) = 7;
    swift_willThrow();
  }

  sub_25579E5D8(v15, v10);
  result = v20(v10, 1, v16);
  if (result != 1)
  {
    sub_25579E6B0(v10, v25);
  }

  __break(1u);
  return result;
}

uint64_t sub_25579BE30()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

_WORD *sub_25579BEF4(uint64_t a1, unint64_t a2)
{
  v47[4] = *MEMORY[0x277D85DE8];
  sub_255793B04((v2 + 2), v47);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_25578BB90(v47);
  if (Strong)
  {
    v4 = sub_2557B09E8();
    v8 = v2[2];
    v9 = v2[3];
    v10 = sub_2557B0C08();
    v47[0] = 0;
    v11 = [Strong transceive:v4 forSEID:v10 error:v47];

    v12 = v47[0];
    if (v11)
    {
      v4 = sub_2557B09F8();
      v14 = v13;

      v15 = v2[6];
      if (v15)
      {
        v16 = v2[7];
        v15(a1, a2, v4, v14);
      }

      sub_25578ACE4(v4, v14);
      sub_2557ADDA8(v4, v14);
      if (v3)
      {
        sub_25578AAE0(v4, v14);
      }

      else
      {
        v25 = v17;
        sub_25578AAE0(v4, v14);
        if (v25 == 36864)
        {
        }

        else
        {
          if (qword_27F7D2E10 != -1)
          {
            swift_once();
          }

          v26 = sub_2557B0B38();
          __swift_project_value_buffer(v26, qword_27F7D3110);
          sub_25578ACE4(a1, a2);
          v27 = sub_2557B0B18();
          v28 = sub_2557B0DD8();
          sub_25578AAE0(a1, a2);
          v45 = v28;
          if (os_log_type_enabled(v27, v28))
          {
            log = v27;
            v29 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v47[0] = v44;
            *v29 = 136446210;
            sub_2557A594C(a1, a2);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
            sub_25578AB8C();
            v30 = sub_2557B0BF8();
            v32 = v31;

            v33 = sub_2557AAA60(v30, v32, v47);

            *(v29 + 4) = v33;
            _os_log_impl(&dword_255786000, log, v45, "SLAM Command: %{public}s", v29, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v44);
            MEMORY[0x259C40F40](v44, -1, -1);
            MEMORY[0x259C40F40](v29, -1, -1);
          }

          else
          {
          }

          v34 = sub_2557B0B18();
          v35 = sub_2557B0DD8();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            v47[0] = v46;
            *v36 = 136446210;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
            v37 = swift_allocObject();
            v38 = MEMORY[0x277D84C58];
            *(v37 + 16) = xmmword_2557B1770;
            v39 = MEMORY[0x277D84CB8];
            *(v37 + 56) = v38;
            *(v37 + 64) = v39;
            *(v37 + 32) = v25;
            v40 = sub_2557B0C48();
            v42 = sub_2557AAA60(v40, v41, v47);

            *(v36 + 4) = v42;
            _os_log_impl(&dword_255786000, v34, v35, "SLAM response returned SW %{public}s", v36, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v46);
            MEMORY[0x259C40F40](v46, -1, -1);
            MEMORY[0x259C40F40](v36, -1, -1);
          }
        }
      }
    }

    else
    {
      v22 = v12;
      sub_2557B0908();

      swift_willThrow();
    }
  }

  else
  {
    if (qword_27F7D2E10 != -1)
    {
      swift_once();
    }

    v18 = sub_2557B0B38();
    __swift_project_value_buffer(v18, qword_27F7D3110);
    v19 = sub_2557B0B18();
    v20 = sub_2557B0DD8();
    if (os_log_type_enabled(v19, v20))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_255786000, v19, v20, "session reference lost", v4, 2u);
      MEMORY[0x259C40F40](v4, -1, -1);
    }

    sub_25578AA30();
    swift_allocError();
    *v21 = 0xD000000000000016;
    *(v21 + 8) = 0x80000002557B3790;
    *(v21 + 16) = 6;
    swift_willThrow();
  }

  v23 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_25579C5A4(uint64_t a1)
{
  v98 = sub_2557B0A58();
  v2 = *(v98 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v98);
  v94 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v99 = &v91 - v6;
  v7 = type metadata accessor for SLAMScript(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v91 - v12;
  v14 = sub_2557B0948();
  v16 = v15;
  if (qword_27F7D2E10 != -1)
  {
    swift_once();
  }

  v17 = sub_2557B0B38();
  v18 = __swift_project_value_buffer(v17, qword_27F7D3110);
  sub_25579E8E4(a1, v13);
  sub_25579E8E4(a1, v11);

  v95 = v18;
  v19 = sub_2557B0B18();
  v20 = sub_2557B0DE8();

  v21 = os_log_type_enabled(v19, v20);
  v96 = a1;
  if (v21)
  {
    v92 = v14;
    v97 = v2;
    v22 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v100 = v91;
    *v22 = 136446722;
    v23 = v13[*(v7 + 24)];
    if (v23 > 3)
    {
      v30 = 0xEF656C69666F7250;
      v31 = 0x6C616E696D726574;
      if (v23 != 6)
      {
        v31 = 0x6567727570;
        v30 = 0xE500000000000000;
      }

      v32 = 0x80000002557B2F30;
      if (v23 != 4)
      {
        v32 = 0x80000002557B2F50;
      }

      if (v13[*(v7 + 24)] <= 5u)
      {
        v28 = 0xD000000000000011;
      }

      else
      {
        v28 = v31;
      }

      if (v13[*(v7 + 24)] <= 5u)
      {
        v29 = v32;
      }

      else
      {
        v29 = v30;
      }
    }

    else
    {
      v24 = 0xEF6574656C654465;
      v25 = 0x654274656C707061;
      v26 = 0x80000002557B2EF0;
      v27 = 0xD000000000000013;
      if (v23 != 2)
      {
        v27 = 0xD000000000000012;
        v26 = 0x80000002557B2F10;
      }

      if (!v13[*(v7 + 24)])
      {
        v25 = 0xD000000000000010;
        v24 = 0x80000002557B2EC0;
      }

      if (v13[*(v7 + 24)] <= 1u)
      {
        v28 = v25;
      }

      else
      {
        v28 = v27;
      }

      if (v13[*(v7 + 24)] <= 1u)
      {
        v29 = v24;
      }

      else
      {
        v29 = v26;
      }
    }

    sub_25579E888(v13);
    v33 = sub_2557AAA60(v28, v29, &v100);

    *(v22 + 4) = v33;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_2557AAA60(v92, v16, &v100);
    *(v22 + 22) = 2082;
    v34 = [*&v11[*(v7 + 28)] scriptName];
    if (!v34)
    {
      goto LABEL_54;
    }

    v35 = v34;
    v36 = sub_2557B0C38();
    v38 = v37;

    sub_25579E888(v11);
    v39 = sub_2557AAA60(v36, v38, &v100);

    *(v22 + 24) = v39;
    _os_log_impl(&dword_255786000, v19, v20, "executing SLAM <%{public}s> %{public}s:%{public}s", v22, 0x20u);
    v40 = v91;
    swift_arrayDestroy();
    MEMORY[0x259C40F40](v40, -1, -1);
    MEMORY[0x259C40F40](v22, -1, -1);

    a1 = v96;
    v2 = v97;
    v14 = v92;
  }

  else
  {

    sub_25579E888(v13);
    sub_25579E888(v11);
  }

  v41 = v99;
  sub_2557B0A48();
  v100 = 0;
  v101 = 0xE000000000000000;
  sub_2557B0EF8();

  v100 = 0x223A77666573;
  v101 = 0xE600000000000000;
  MEMORY[0x259C40650](v14, v16);
  MEMORY[0x259C40650](0x3A656D616E202C22, 0xEA00000000002220);
  v42 = [*(a1 + *(v7 + 28)) scriptName];
  v43 = v98;
  if (!v42)
  {
    __break(1u);
LABEL_54:
    __break(1u);
    return;
  }

  v44 = v42;
  v45 = a1;

  v46 = sub_2557B0C38();
  v48 = v47;

  MEMORY[0x259C40650](v46, v48);

  v49 = MEMORY[0x259C40650](34, 0xE100000000000000);
  v50 = v101;
  MEMORY[0x28223BE20](v49);
  v51 = v93;
  *(&v91 - 2) = v45;
  *(&v91 - 1) = v51;
  v53 = sub_2557A0C60("internal_slam-execute", 0x15, 2, v52, v50, sub_25579E9B8, (&v91 - 4));

  v54 = v94;
  sub_2557B0A48();
  sub_2557B0A38();
  v56 = v55;
  v57 = *(v2 + 8);
  v97 = v2 + 8;
  v57(v54, v43);
  v58 = sub_2557B0B18();
  v59 = sub_2557B0DC8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 134217984;
    *(v60 + 4) = v56;
    _os_log_impl(&dword_255786000, v58, v59, "script execution took %f seconds", v60, 0xCu);
    v61 = v60;
    v41 = v99;
    MEMORY[0x259C40F40](v61, -1, -1);
  }

  v62 = v53;
  v63 = sub_2557B0B18();
  v64 = sub_2557B0DE8();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v100 = v66;
    *v65 = 136446210;
    if ([v62 isSuccessful])
    {
      v67 = 0x73736563637573;
    }

    else
    {
      v67 = 0x6572756C696166;
    }

    v68 = v57;
    v69 = sub_2557AAA60(v67, 0xE700000000000000, &v100);

    *(v65 + 4) = v69;
    v57 = v68;
    _os_log_impl(&dword_255786000, v63, v64, "Script execution result: %{public}s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    v70 = v66;
    v41 = v99;
    MEMORY[0x259C40F40](v70, -1, -1);
    MEMORY[0x259C40F40](v65, -1, -1);
  }

  v71 = v96;
  if (qword_27F7D2DD0 != -1)
  {
    v90 = v96;
    swift_once();
    v71 = v90;
  }

  sub_2557881D4(v71, v62, v56);
  v72 = [v62 error];
  if (v72)
  {
  }

  else if (![v62 outcome])
  {
    v57(v41, v98);

    return;
  }

  v73 = v62;
  v74 = sub_2557B0B18();
  v75 = sub_2557B0DD8();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = v57;
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v100 = v78;
    *v77 = 136446466;
    v79 = [v73 description];
    v80 = sub_2557B0C38();
    v82 = v81;

    v83 = sub_2557AAA60(v80, v82, &v100);

    *(v77 + 4) = v83;
    *(v77 + 12) = 2082;
    v84 = [v73 outcome];
    if (v84 == 2)
    {
      v86 = 0xE500000000000000;
      v87 = 0x726F727245;
      v85 = v98;
    }

    else if (v84 == 1)
    {
      v86 = 0xE700000000000000;
      v87 = 0x676E696E726157;
      v85 = v98;
    }

    else
    {
      v85 = v98;
      if (v84)
      {
        v86 = 0xE900000000000064;
        v87 = 0x656E696665646E55;
      }

      else
      {
        v86 = 0xE700000000000000;
        v87 = 0x73736563637553;
      }
    }

    v88 = sub_2557AAA60(v87, v86, &v100);

    *(v77 + 14) = v88;
    _os_log_impl(&dword_255786000, v74, v75, "LibSCLM performScript error: %{public}s outcome: %{public}s", v77, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C40F40](v78, -1, -1);
    MEMORY[0x259C40F40](v77, -1, -1);

    v41 = v99;
    v57 = v76;
  }

  else
  {

    v85 = v98;
  }

  sub_25578AA30();
  swift_allocError();
  *v89 = 0;
  *(v89 + 8) = 0;
  *(v89 + 16) = 7;
  swift_willThrow();

  v57(v41, v85);
}

void sub_25579D008(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for SLAMScript(0);
  if (*(a1 + *(v6 + 24)) - 4 < 3)
  {
    v7 = objc_opt_self();
    sub_2557B0948();
    v8 = sub_2557B0C08();

    v9 = [v7 ExecuteScript:v8 seHandle:a2 logSink:a2];
LABEL_5:

    *a3 = v9;
    return;
  }

  v10 = [*(a1 + *(v6 + 28)) scriptName];
  if (v10)
  {
    v11 = v10;
    v12 = objc_opt_self();
    sub_2557B0948();
    v8 = sub_2557B0C08();

    v9 = [v12 ExecuteScriptByName:v11 sefwPath:v8 seHandle:a2 logSink:a2];

    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_25579D150(void *a1, uint64_t (*a2)(_BYTE *), uint64_t a3, uint64_t a4, int a5)
{
  v30 = a5;
  v31 = a3;
  v32 = a2;
  v7 = sub_2557B0968();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for SLAMScript(0);
  v13 = *(*(v12 - 1) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v29[-v17];
  v19 = *(v8 + 16);
  v19(v11, a4, v7);
  v19(v16, v11, v7);
  v20 = [a1 scriptName];
  if (v20)
  {
    v21 = v20;
    v22 = sub_2557B0C38();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v25 = &v16[v12[5]];
  (*(v8 + 8))(v11, v7);
  *v25 = v22;
  v25[1] = v24;
  v16[v12[6]] = v30;
  *&v16[v12[7]] = a1;
  sub_25579E6B0(v16, v18);
  v26 = a1;
  v27 = v32(v18);
  sub_25579E888(v18);
  return v27 & 1;
}

uint64_t sub_25579D364(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

id sub_25579D3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3128, &unk_2557B2530);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = swift_projectBox();
  if (!a3)
  {
    goto LABEL_10;
  }

  result = [*(a1 + *(type metadata accessor for SLAMScript(0) + 28)) scriptName];
  if (result)
  {
    v12 = result;
    v13 = sub_2557B0C38();
    v15 = v14;

    if (v13 == a2 && v15 == a3)
    {
    }

    else
    {
      v17 = sub_2557B0F98();

      v18 = 0;
      if ((v17 & 1) == 0)
      {
        return v18;
      }
    }

LABEL_10:
    sub_25579E8E4(a1, v9);
    v19 = type metadata accessor for SLAMScript(0);
    v18 = 1;
    (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
    swift_beginAccess();
    sub_25579E948(v9, v10);
    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_25579D55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SLAMScript(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v29[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a2 + 16);
  v13 = *(a1 + *(v7 + 36));

  v14 = [v13 scriptName];
  if (v14)
  {
    v15 = v14;
    v16 = sub_2557B0C38();
    v18 = v17;

    v29[0] = v16;
    v29[1] = v18;
    MEMORY[0x28223BE20](v19);
    *(&v28 - 2) = v29;
    LOBYTE(v16) = sub_25579DA00(sub_25578AB34, (&v28 - 4), v12);

    if ((v16 & 1) == 0)
    {
      return 0;
    }

    sub_25579E8E4(a1, v11);
    swift_beginAccess();
    v20 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_255794864(0, v20[2] + 1, 1, v20);
      *(a3 + 16) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_255794864(v22 > 1, v23 + 1, 1, v20);
    }

    v20[2] = v23 + 1;
    sub_25579E6B0(v11, v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v23);
    *(a3 + 16) = v20;
    v24 = swift_endAccess();
    MEMORY[0x28223BE20](v24);
    *(&v28 - 2) = a1;
    swift_beginAccess();
    v25 = sub_25579DAAC(sub_25579EA94, (&v28 - 4));
    v26 = *(*(a2 + 16) + 16);
    if (v26 >= v25)
    {
      sub_25579EB74(v25, v26);
      swift_endAccess();
      swift_beginAccess();
      return *(*(a2 + 16) + 16) == 0;
    }

    __break(1u);
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

id sub_25579D860(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  result = [*(a2 + *(type metadata accessor for SLAMScript(0) + 28)) scriptName];
  if (result)
  {
    v5 = result;
    v6 = sub_2557B0C38();
    v8 = v7;

    if (v2 == v6 && v3 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_2557B0F98();
    }

    return (v10 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25579D918()
{
  sub_25578BB90(v0 + 16);
  v1 = *(v0 + 56);
  sub_25579E5B8(*(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_25579D97C()
{
  v0 = sub_2557B0B38();
  __swift_allocate_value_buffer(v0, qword_27F7D3110);
  __swift_project_value_buffer(v0, qword_27F7D3110);
  return sub_2557B0B28();
}

uint64_t sub_25579DA00(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_25579DAAC(uint64_t (*a1)(void *), uint64_t a2)
{
  v5 = *v2;
  result = sub_25579DC88(a1, a2, *v2);
  if (!v3)
  {
    if (v7)
    {
      return *(v5 + 16);
    }

    v8 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v10 = (v5 + 16);
      v9 = *(v5 + 16);
      if (v8 == v9)
      {
        return result;
      }

      v26 = a1;
      v11 = 16 * result;
      while (v8 < v9)
      {
        v28 = result;
        v12 = v5;
        v13 = v5 + v11;
        v14 = *(v5 + v11 + 48);
        v15 = *(v5 + v11 + 56);
        v27[0] = v14;
        v27[1] = v15;

        v16 = v26(v27);

        if (v16)
        {
          result = v28;
          v5 = v12;
        }

        else
        {
          result = v28;
          v5 = v12;
          if (v8 != v28)
          {
            if ((v28 & 0x8000000000000000) != 0)
            {
              goto LABEL_22;
            }

            if (v28 >= *v10)
            {
              goto LABEL_23;
            }

            if (v8 >= *v10)
            {
              goto LABEL_24;
            }

            v17 = &v12[16 * v28 + 32];
            v19 = *v17;
            v18 = *(v17 + 1);
            v20 = *(v13 + 48);
            v21 = *(v13 + 56);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_25579DD48(v12);
            }

            v22 = &v12[16 * v28];
            v23 = *(v22 + 5);
            *(v22 + 4) = v20;
            *(v22 + 5) = v21;
            v5 = v12;

            if (v8 >= *(v12 + 2))
            {
              goto LABEL_25;
            }

            v24 = &v12[v11];
            v25 = *&v12[v11 + 56];
            *(v24 + 6) = v19;
            *(v24 + 7) = v18;

            *v2 = v12;
            result = v28;
          }

          ++result;
        }

        ++v8;
        v10 = (v5 + 16);
        v9 = *(v5 + 16);
        v11 += 16;
        if (v8 == v9)
        {
          return result;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25579DC88(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *i;
    v11[0] = *(i - 1);
    v11[1] = v8;

    v9 = a1(v11);

    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

id sub_25579DD5C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v7 = sub_2557B0968();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = *a2;
  v20 = objc_opt_self();
  sub_2557B0948();
  v11 = sub_2557B0C08();

  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v19;
  *(v13 + 3) = a4;
  (*(v8 + 32))(&v13[v12], &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v13[v12 + v9] = v10;
  aBlock[4] = sub_25579E7DC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25579D364;
  aBlock[3] = &block_descriptor_0;
  v14 = _Block_copy(aBlock);

  aBlock[0] = 0;
  LOBYTE(a4) = [v20 InspectCompatibleHWSEFW:v11 closure:v14 error:aBlock];
  _Block_release(v14);

  if (a4)
  {
    result = aBlock[0];
  }

  else
  {
    v16 = aBlock[0];
    sub_2557B0908();

    result = swift_willThrow();
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_25579DFD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = (a2 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 <= 5)
      {
        if (v5 <= 2)
        {
          if (v5 == 1)
          {
            v7 = 0xE400000000000000;
            v8 = 1701999952;
          }

          else
          {
            if (v5 != 2)
            {
LABEL_38:
              if (qword_27F7D2E10 != -1)
              {
                swift_once();
              }

              v17 = sub_2557B0B38();
              __swift_project_value_buffer(v17, qword_27F7D3110);
              v18 = sub_2557B0B18();
              v19 = sub_2557B0DD8();
              if (os_log_type_enabled(v18, v19))
              {
                v20 = swift_slowAlloc();
                *v20 = 16908544;
                v20[4] = v5;
                _os_log_impl(&dword_255786000, v18, v19, "Could not find an installation script for kernelId: %{public}hhu", v20, 5u);
                MEMORY[0x259C40F40](v20, -1, -1);
              }

              sub_25578AA30();
              swift_allocError();
              *v21 = xmmword_2557B24B0;
              *(v21 + 16) = 7;
              swift_willThrow();
LABEL_35:

              return v3;
            }

            v7 = 0xEA00000000006472;
            v8 = 0x616372657473614DLL;
          }
        }

        else
        {
          switch(v5)
          {
            case 3:
              v7 = 0xE400000000000000;
              v8 = 1634953558;
              break;
            case 4:
              v7 = 0xE400000000000000;
              v8 = 2019913025;
              break;
            case 5:
              v7 = 0xE300000000000000;
              v8 = 4342602;
              break;
            default:
              goto LABEL_38;
          }
        }
      }

      else if (v5 > 13)
      {
        switch(v5)
        {
          case 14:
            v7 = 0xE400000000000000;
            v8 = 2020505932;
            break;
          case 15:
            v7 = 0xE700000000000000;
            v8 = 0x63617265746E49;
            break;
          case 255:
            v7 = 0xE700000000000000;
            v8 = 0x6E776F6E6B6E55;
            break;
          default:
            goto LABEL_38;
        }
      }

      else
      {
        switch(v5)
        {
          case 6:
            v7 = 0xE800000000000000;
            v8 = 0x7265766F63736944;
            break;
          case 7:
            v7 = 0xE300000000000000;
            v8 = 4804693;
            break;
          case 13:
            v7 = 0xE600000000000000;
            v8 = 0x534F50544645;
            break;
          default:
            goto LABEL_38;
        }
      }

      sub_2557B0EF8();

      v23[0] = 0xD000000000000018;
      v23[1] = 0x80000002557B30F0;
      MEMORY[0x259C40650](v8, v7);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_255794758(0, *(v3 + 2) + 1, 1, v3);
      }

      v10 = *(v3 + 2);
      v9 = *(v3 + 3);
      if (v10 >= v9 >> 1)
      {
        v3 = sub_255794758((v9 > 1), v10 + 1, 1, v3);
      }

      *(v3 + 2) = v10 + 1;
      v11 = &v3[16 * v10];
      *(v11 + 4) = 0xD000000000000018;
      *(v11 + 5) = 0x80000002557B30F0;
      --v2;
    }

    while (v2);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x277D84F90];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  LOBYTE(v23[0]) = 2;
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;

  v15 = v23[4];
  sub_25579DD5C(a1, v23, sub_25579EA8C, v14);
  if (v15)
  {

    goto LABEL_35;
  }

  swift_beginAccess();
  v3 = *(v12 + 16);

  return v3;
}

void sub_25579E460(uint64_t a1, unint64_t a2)
{
  if (qword_27F7D2E10 != -1)
  {
    swift_once();
  }

  v4 = sub_2557B0B38();
  __swift_project_value_buffer(v4, qword_27F7D3110);

  oslog = sub_2557B0B18();
  v5 = sub_2557B0DE8();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_2557AAA60(a1, a2, &v9);
    _os_log_impl(&dword_255786000, oslog, v5, "SLAMLogSink: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x259C40F40](v7, -1, -1);
    MEMORY[0x259C40F40](v6, -1, -1);
  }
}

uint64_t sub_25579E5B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25579E5D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3128, &unk_2557B2530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25579E648(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3128, &unk_2557B2530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25579E6B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SLAMScript(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25579E714()
{
  v1 = sub_2557B0968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_25579E7DC(void *a1)
{
  v3 = *(sub_2557B0968() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_25579D150(a1, v6, v7, v4, v5);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25579E888(uint64_t a1)
{
  v2 = type metadata accessor for SLAMScript(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25579E8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SLAMScript(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25579E948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3128, &unk_2557B2530);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25579EA14()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25579EA4C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_25579EAB4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_25579EB74(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_255794758(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_25579EAB4(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t BeeStateInfo.SystemStatus.description.getter()
{
  v1 = 0x6C62616C69617661;
  v2 = 0x706552736465656ELL;
  if (*v0 != 2)
  {
    v2 = 0x74616E696D726574;
  }

  if (*v0)
  {
    v1 = 0x6174736E49746F6ELL;
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

uint64_t BeeStateInfo.SystemStatus.hashValue.getter()
{
  v1 = *v0;
  sub_2557B1028();
  MEMORY[0x259C409C0](v1);
  return sub_2557B1058();
}

uint64_t sub_25579ED6C()
{
  v1 = 0x6C62616C69617661;
  v2 = 0x706552736465656ELL;
  if (*v0 != 2)
  {
    v2 = 0x74616E696D726574;
  }

  if (*v0)
  {
    v1 = 0x6174736E49746F6ELL;
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

uint64_t BeeStateInfo.loadAndInstallBundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t BeeStateInfo.jsblSequenceCounter.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t BeeStateInfo.version.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t BeeStateInfo.configurationId.getter()
{
  v1 = *(v0 + 72);
  sub_255799C60(v1, *(v0 + 80));
  return v1;
}

void *BeeStateInfo.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  sub_255799C4C(v0[9], v0[10]);
  v4 = v0[11];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[15];

  return v0;
}

uint64_t BeeStateInfo.__deallocating_deinit()
{
  BeeStateInfo.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_25579EF78()
{
  result = qword_27F7D3130;
  if (!qword_27F7D3130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D3130);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BeeStateInfo.SystemStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BeeStateInfo.SystemStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25579F158(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF6574656C654465;
  v3 = a1;
  if (a1 > 3u)
  {
    v10 = 0x6C616E696D726574;
    v11 = 0xEF656C69666F7250;
    if (a1 != 6)
    {
      v10 = 0x6567727570;
      v11 = 0xE500000000000000;
    }

    v12 = 0x80000002557B2F30;
    if (a1 != 4)
    {
      v12 = 0x80000002557B2F50;
    }

    if (a1 <= 5u)
    {
      v8 = 0xD000000000000011;
    }

    else
    {
      v8 = v10;
    }

    if (v3 <= 5)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v4 = 0x80000002557B2EF0;
    v5 = 0xD000000000000013;
    if (a1 != 2)
    {
      v5 = 0xD000000000000012;
      v4 = 0x80000002557B2F10;
    }

    v6 = 0x80000002557B2EC0;
    v7 = 0xD000000000000010;
    if (a1)
    {
      v7 = 0x654274656C707061;
      v6 = 0xEF6574656C654465;
    }

    if (a1 <= 1u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEF656C69666F7250;
        if (v8 != 0x6C616E696D726574)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v8 != 0x6567727570)
        {
LABEL_46:
          v14 = sub_2557B0F98();
          goto LABEL_47;
        }
      }
    }

    else
    {
      if (a2 == 4)
      {
        v13 = "coreConfiguration";
      }

      else
      {
        v13 = "capkConfiguration";
      }

      v2 = (v13 - 32) | 0x8000000000000000;
      if (v8 != 0xD000000000000011)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0x80000002557B2EF0;
      if (v8 != 0xD000000000000013)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v2 = 0x80000002557B2F10;
      if (v8 != 0xD000000000000012)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2)
  {
    if (v8 != 0x654274656C707061)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v2 = 0x80000002557B2EC0;
    if (v8 != 0xD000000000000010)
    {
      goto LABEL_46;
    }
  }

  if (v9 != v2)
  {
    goto LABEL_46;
  }

  v14 = 1;
LABEL_47:

  return v14 & 1;
}

uint64_t sub_25579F3CC()
{
  sub_2557B0C98();
}

uint64_t sub_25579F51C()
{
  sub_2557B1028();
  sub_2557B0C98();

  return sub_2557B1058();
}

id SLAMScript.scriptName.getter()
{
  result = [*(v0 + *(type metadata accessor for SLAMScript(0) + 28)) scriptName];
  if (result)
  {
    v2 = result;
    v3 = sub_2557B0C38();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t SLAMUsageContext.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6C616E696D726574;
    if (v1 != 6)
    {
      v5 = 0x6567727570;
    }

    if (*v0 <= 5u)
    {
      return 0xD000000000000011;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x654274656C707061;
    v3 = 0xD000000000000013;
    if (v1 != 2)
    {
      v3 = 0xD000000000000012;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000010;
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

uint64_t ProfileScript.kernelIdentifiers.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProfileScript(0) + 20));
}

uint64_t ProfileScript.init(profileScriptPath:kernelIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2557B0968();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ProfileScript(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t KernelAsset.init(updatedAsset:kernelMap:configurationScript:capkScripts:terminalProfileScripts:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  v11 = type metadata accessor for KernelAsset(0);
  result = sub_25579F9C0(a4, a7 + v11[6]);
  *(a7 + v11[7]) = a5;
  *(a7 + v11[8]) = a6;
  return result;
}

uint64_t sub_25579F988(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25579F9C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3138, &qword_2557B26A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

KernelManagerLibrary::SLAMUsageContext_optional __swiftcall SLAMUsageContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2557B0F78();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_25579FAC0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xEF656C69666F7250;
    v9 = 0x6C616E696D726574;
    if (v2 != 6)
    {
      v9 = 0x6567727570;
      v8 = 0xE500000000000000;
    }

    v10 = 0x80000002557B2F30;
    if (v2 != 4)
    {
      v10 = 0x80000002557B2F50;
    }

    if (*v1 <= 5u)
    {
      v11 = 0xD000000000000011;
    }

    else
    {
      v11 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v11;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEF6574656C654465;
    v4 = 0x654274656C707061;
    v5 = 0x80000002557B2EF0;
    v6 = 0xD000000000000013;
    if (v2 != 2)
    {
      v6 = 0xD000000000000012;
      v5 = 0x80000002557B2F10;
    }

    if (!*v1)
    {
      v4 = 0xD000000000000010;
      v3 = 0x80000002557B2EC0;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_25579FBE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2557B0968();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SLAMScript.name.getter()
{
  v1 = (v0 + *(type metadata accessor for SLAMScript(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

__n128 KernelAssetEvaluation.requiredMemory.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

unint64_t sub_25579FCB0()
{
  result = qword_27F7D3140;
  if (!qword_27F7D3140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D3140);
  }

  return result;
}

uint64_t sub_25579FD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2557B0968();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25579FDE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2557B0968();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_25579FEA0()
{
  sub_2557B0968();
  if (v0 <= 0x3F)
  {
    sub_2557A0654(319, &qword_27F7D3158, MEMORY[0x277D84B78], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_25579FF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3138, &qword_2557B26A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_2557A0048(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3138, &qword_2557B26A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

void sub_2557A0110()
{
  sub_2557A01F4();
  if (v0 <= 0x3F)
  {
    sub_2557A024C(319, &qword_27F7D3178, &qword_27F7D3180, "x(");
    if (v1 <= 0x3F)
    {
      sub_2557A024C(319, &qword_27F7D3188, &qword_27F7D3190, "z(");
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2557A01F4()
{
  if (!qword_27F7D3170)
  {
    sub_2557B0968();
    v0 = sub_2557B0E58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7D3170);
    }
  }
}

void sub_2557A024C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2557B0E58();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SLAMUsageContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SLAMUsageContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2557A0404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2557B0968();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2557A04D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2557B0968();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_2557A058C()
{
  sub_2557B0968();
  if (v0 <= 0x3F)
  {
    sub_2557A0654(319, &qword_27F7D31A8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2557A06A4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2557A0654(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2557A06A4()
{
  result = qword_27F7D31B0;
  if (!qword_27F7D31B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7D31B0);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2557A0704(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2557A074C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2557A07AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v16[1] = a1;
  v16[2] = a2;
  v16[3] = a3;
  v17 = a4;
  *&v20 = a1;
  *(&v20 + 1) = a2;
  v21 = a3;
  v22 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3230, &qword_2557B29F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3238, &qword_2557B2A00);
  if (!swift_dynamicCast())
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    v4 = sub_255799CFC(v18, &qword_27F7D3240, &qword_2557B2A08);
    v18[0] = xmmword_2557B2830;
    MEMORY[0x28223BE20](v4);
    sub_2557AADB4(sub_2557AC80C, &v23);
    v5 = *(&v23 + 1);
    v16[0] = v23;
    v6 = *(&v18[0] + 1) >> 62;
    if ((*(&v18[0] + 1) >> 62) > 1)
    {
      if (v6 != 2)
      {
        if (!v25)
        {
          goto LABEL_18;
        }

        v11 = 0;
LABEL_25:
        if (v11 < v25)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        sub_2557B09A8();
LABEL_27:

        goto LABEL_28;
      }

      v8 = *(*&v18[0] + 16);
      v7 = *(*&v18[0] + 24);
      v9 = __OFSUB__(v7, v8);
      v10 = v7 - v8;
      if (v9)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
      }

      if (v25 != v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (!v6)
      {
        if (v25 == BYTE14(v18[0]))
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      if (__OFSUB__(DWORD1(v18[0]), v18[0]))
      {
        goto LABEL_37;
      }

      if (v25 != DWORD1(v18[0]) - LODWORD(v18[0]))
      {
LABEL_13:
        if (v6 == 2)
        {
          v11 = *(*&v18[0] + 24);
        }

        else if (v6 == 1)
        {
          v11 = *&v18[0] >> 32;
        }

        else
        {
          v11 = BYTE14(v18[0]);
        }

        goto LABEL_25;
      }
    }

LABEL_18:
    *(&v23 + 7) = 0;
    *&v23 = 0;
    if ((v24 & 1) == 0)
    {
      v5(&v20, v16);
      if (BYTE1(v20))
      {
        LOBYTE(v12) = 0;
LABEL_21:
        if (v12)
        {
          *&v20 = v23;
          *(&v20 + 6) = *(&v23 + 6);
          sub_2557B09B8();
        }

        goto LABEL_27;
      }

      LOBYTE(v12) = 0;
      while (1)
      {
        *(&v23 + v12) = v20;
        v12 = v12 + 1;
        if ((v12 >> 8))
        {
          break;
        }

        if (v12 == 14)
        {
          *&v20 = v23;
          *(&v20 + 6) = *(&v23 + 6);
          sub_2557B09B8();
          LOBYTE(v12) = 0;
        }

        v5(&v20, v16);
        if (BYTE1(v20))
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    goto LABEL_27;
  }

  sub_255799CE4(v18, &v23);
  __swift_project_boxed_opaque_existential_1(&v23, v24);
  sub_2557B08E8();
  v18[0] = v20;
  __swift_destroy_boxed_opaque_existential_0(&v23);
LABEL_28:
  v13 = v18[0];
  sub_25578ACE4(*&v18[0], *(&v18[0] + 1));

  sub_25578AAE0(v13, *(&v13 + 1));
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_2557A0B48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3220, &qword_2557B29F0);
  v16[3] = v8;
  v16[4] = sub_25579AEE8(&qword_27F7D3228, &qword_27F7D3220, &qword_2557B29F0);
  v9 = swift_allocObject();
  v16[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = __swift_project_boxed_opaque_existential_1(v16, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_2557AB18C((v10[1] + v11), (v10[1] + v11 + v14), &v15);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }
}

uint64_t sub_2557A0C60(unint64_t a1, NSObject *a2, int a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t *__return_ptr), uint64_t a7)
{
  v37 = a6;
  v36 = a7;
  v34 = a4;
  LODWORD(v8) = a3;
  v11 = sub_2557B0A88();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  if (qword_27F7D2DE8 != -1)
  {
    swift_once();
  }

  v19 = sub_2557B0AB8();
  __swift_project_value_buffer(v19, qword_27F7D2F30);
  sub_2557B0AA8();
  sub_2557B0A68();
  v39 = a1;
  if (a5)
  {
    v35 = a2;

    a2 = sub_2557B0AA8();
    v32 = sub_2557B0E38();
    result = sub_2557B0E48();
    if (result)
    {
      v33 = v8;
      if (v8)
      {
        if (!HIDWORD(a1))
        {
          if ((a1 & 0xFFFFF800) == 0xD800)
          {
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          if (a1 >> 16 <= 0x10)
          {

            v31 = &v40;
            goto LABEL_17;
          }

          goto LABEL_30;
        }
      }

      else
      {

        if (a1)
        {
          v31 = a1;
LABEL_17:
          v8 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v40 = v23;
          *v8 = 136315138;
          *(v8 + 4) = sub_2557AAA60(v34, a5, &v40);
          v24 = sub_2557B0A78();
          _os_signpost_emit_with_name_impl(&dword_255786000, a2, v32, v24, v31, "%s", v8, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v23);
          MEMORY[0x259C40F40](v23, -1, -1);
          MEMORY[0x259C40F40](v8, -1, -1);

          LODWORD(v8) = v33;
          goto LABEL_18;
        }

        __break(1u);
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_12:

LABEL_18:
    a2 = v35;
    goto LABEL_25;
  }

  v21 = sub_2557B0AA8();
  v22 = sub_2557B0E38();
  result = sub_2557B0E48();
  if (result)
  {
    v33 = v8;
    v35 = a2;
    if (v8)
    {
      if (HIDWORD(v39))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if ((v39 & 0xFFFFF800) == 0xD800)
      {
LABEL_34:
        __break(1u);
        return result;
      }

      if (v39 >> 16 > 0x10)
      {
        goto LABEL_32;
      }

      v8 = &v41;
    }

    else
    {
      v8 = v39;
      if (!v39)
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_2557B0A78();
    _os_signpost_emit_with_name_impl(&dword_255786000, v21, v22, v26, v8, "", v25, 2u);
    MEMORY[0x259C40F40](v25, -1, -1);
    LODWORD(v8) = v33;
    a2 = v35;
  }

LABEL_25:
  (*(v12 + 16))(v16, v18, v11);
  v27 = sub_2557B0AF8();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_2557B0AE8();
  v30 = v38;
  v37(&v42);
  sub_2557920B8(v39, a2, v8);

  if (v30)
  {
    return (*(v12 + 8))(v18, v11);
  }

  (*(v12 + 8))(v18, v11);
  return v42;
}

uint64_t sub_2557A10A8@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a6;
  v39 = a8;
  v40 = a7;
  v43 = a1;
  v12 = sub_2557B0A88();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  if (qword_27F7D2DE8 != -1)
  {
    swift_once();
  }

  v20 = sub_2557B0AB8();
  __swift_project_value_buffer(v20, qword_27F7D2F30);
  sub_2557B0AA8();
  sub_2557B0A68();
  v42 = a2;
  if (a5)
  {
    v37 = a4;

    v21 = sub_2557B0AA8();
    v36 = sub_2557B0E38();
    result = sub_2557B0E48();
    if ((result & 1) == 0)
    {
LABEL_12:

LABEL_24:
      (*(v13 + 16))(v17, v19, v12);
      v31 = sub_2557B0AF8();
      v32 = *(v31 + 48);
      v33 = *(v31 + 52);
      swift_allocObject();
      sub_2557B0AE8();
      v41();
      sub_2557920B8(v43, v42, a3);

      return (*(v13 + 8))(v19, v12);
    }

    v38 = a3;
    if ((a3 & 1) == 0)
    {

      v23 = v43;
      if (!v43)
      {
        __break(1u);
        goto LABEL_8;
      }

LABEL_17:
      v35 = v23;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v44 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_2557AAA60(v37, a5, &v44);
      v28 = sub_2557B0A78();
      _os_signpost_emit_with_name_impl(&dword_255786000, v21, v36, v28, v35, "%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x259C40F40](v27, -1, -1);
      MEMORY[0x259C40F40](v26, -1, -1);

      a3 = v38;
      goto LABEL_24;
    }

    if (v43 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v43 & 0xFFFFF800) == 0xD800)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v43 >> 16 <= 0x10)
      {

        v23 = &v44;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_8:
  v24 = sub_2557B0AA8();
  v21 = sub_2557B0E38();
  result = sub_2557B0E48();
  if ((result & 1) == 0)
  {
LABEL_23:

    goto LABEL_24;
  }

  v25 = v43;
  v38 = a3;
  if ((a3 & 1) == 0)
  {
    if (!v43)
    {
      __break(1u);
      goto LABEL_12;
    }

    goto LABEL_22;
  }

  if (v43 >> 32)
  {
    goto LABEL_27;
  }

  if ((v43 & 0xFFFFF800) != 0xD800)
  {
    if (v43 >> 16 <= 0x10)
    {
      v25 = &v45;
LABEL_22:
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = sub_2557B0A78();
      _os_signpost_emit_with_name_impl(&dword_255786000, v24, v21, v30, v25, "", v29, 2u);
      MEMORY[0x259C40F40](v29, -1, -1);
      a3 = v38;
      goto LABEL_23;
    }

    goto LABEL_28;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t KernelManager.DeviceStateType.hashValue.getter()
{
  v1 = *v0;
  sub_2557B1028();
  MEMORY[0x259C409C0](v1);
  return sub_2557B1058();
}

uint64_t KernelManager.__allocating_init(seWrapper:sefw:)(uint64_t a1, char *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  KernelManager.init(seWrapper:sefw:)(a1, a2);
  return v7;
}

void *KernelManager.init(seWrapper:sefw:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v98 = a2;
  v95 = sub_2557B0B38();
  v91 = *(v95 - 1);
  v5 = *(v91 + 64);
  (MEMORY[0x28223BE20])();
  v90 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_2557B0928();
  v7 = *(v93 - 8);
  v8 = *(v7 + 64);
  (MEMORY[0x28223BE20])();
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3138, &qword_2557B26A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v13 = &v90 - v12;
  v102 = sub_2557B0968();
  v97 = *(v102 - 8);
  v14 = *(v97 + 64);
  v15 = (MEMORY[0x28223BE20])();
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v90 - v18;
  v20 = v3 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 2) = 0u;
  *(v20 + 3) = 0u;
  *(v20 + 8) = 0;
  sub_255793B04(a1, (v3 + 2));
  if (qword_27F7D2DD0 != -1)
  {
    swift_once();
  }

  v94 = v17;
  v96 = a1;
  *(qword_27F7D32A0 + 168) = *(a1 + 16);
  sub_25579AAC8();
  if (v21)
  {
    v22 = v3;
    v23 = v97;
    v24 = v102;
    (*(v97 + 56))(v13, 1, 1, v102);
    (*(v7 + 104))(v10, *MEMORY[0x277CC91D8], v93);
    v25 = v23;
    v3 = v22;
    sub_2557B0958();
  }

  else
  {
    v25 = v97;
    v24 = v102;
    (*(v97 + 16))(v19, v98, v102);
  }

  v26 = OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw;
  (*(v25 + 32))(v3 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw, v19, v24);
  if (qword_27F7D2E18 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v95, qword_27F7D31B8);

  v92 = v27;
  v28 = sub_2557B0B18();
  v29 = sub_2557B0DE8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v100[0] = v31;
    *v30 = 136446210;
    v32 = sub_2557B0948();
    v34 = v24;
    v35 = v26;
    v36 = sub_2557AAA60(v32, v33, v100);

    *(v30 + 4) = v36;
    v26 = v35;
    v24 = v34;
    _os_log_impl(&dword_255786000, v28, v29, "initialized with sefw at: %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v37 = v31;
    v25 = v97;
    MEMORY[0x259C40F40](v37, -1, -1);
    MEMORY[0x259C40F40](v30, -1, -1);
  }

  v38 = v96;
  v39 = [objc_opt_self() defaultManager];
  v40 = *(v25 + 16);
  v93 = v26;
  v41 = v94;
  v40(v94, v3 + v26, v24);
  sub_2557B0948();
  v44 = *(v25 + 8);
  v42 = v25 + 8;
  v43 = v44;
  v44(v41, v24);
  v45 = sub_2557B0C08();

  v46 = [v39 fileExistsAtPath_];

  if (!v46)
  {
    v95 = v43;

    v59 = sub_2557B0B18();
    v60 = sub_2557B0DD8();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v100[0] = v62;
      *v61 = 136446210;
      v63 = v93;
      v64 = sub_2557B0948();
      v66 = sub_2557AAA60(v64, v65, v100);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_255786000, v59, v60, "could not find SEFW file at %{public}s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x259C40F40](v62, -1, -1);
      v67 = v61;
      v38 = v96;
      MEMORY[0x259C40F40](v67, -1, -1);

      v68 = 0;
LABEL_22:
      v78 = v98;
      v79 = sub_2557B0948();
      v81 = v80;
      sub_25578AA30();
      swift_allocError();
      *v82 = v79;
      *(v82 + 8) = v81;
      *(v82 + 16) = v68;
      swift_willThrow();
      v83 = v102;
      v84 = v95;
      v95(v78, v102);
      sub_25578BB90(v38);
      sub_25578BB90((v3 + 2));
      v84(v3 + v63, v83);
      v85 = *(v3 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 48);
      v100[2] = *(v3 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 32);
      v100[3] = v85;
      v101 = *(v3 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 64);
      v86 = *(v3 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 16);
      v100[0] = *(v3 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState);
      v100[1] = v86;
      sub_255799CFC(v100, &qword_27F7D31E0, &qword_2557B28C8);
      type metadata accessor for KernelManager();
      v87 = *(*v3 + 48);
      v88 = *(*v3 + 52);
      swift_deallocPartialClassInstance();
      return v3;
    }

    v68 = 0;
LABEL_21:
    v63 = v93;
    goto LABEL_22;
  }

  sub_2557B0918();
  v47 = sub_2557B0948();
  v49 = v48;
  v43(v41, v24);
  *&v100[0] = v47;
  *(&v100[0] + 1) = v49;
  v99[0] = sub_2557B0948();
  v99[1] = v50;
  sub_25578A994();
  LOBYTE(v47) = sub_2557B0E98();

  if ((v47 & 1) == 0)
  {
    v95 = v43;

    v69 = sub_2557B0B18();
    v70 = sub_2557B0DD8();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v97 = v42;
      v73 = v72;
      *&v100[0] = v72;
      *v71 = 136446210;
      v68 = 1;
      v63 = v93;
      v74 = sub_2557B0948();
      v76 = sub_2557AAA60(v74, v75, v100);

      *(v71 + 4) = v76;
      _os_log_impl(&dword_255786000, v69, v70, "invalid path: %{public}s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x259C40F40](v73, -1, -1);
      v77 = v71;
      v38 = v96;
      MEMORY[0x259C40F40](v77, -1, -1);

      goto LABEL_22;
    }

    v68 = 1;
    goto LABEL_21;
  }

  sub_255793B04(v38, v100);
  v51 = type metadata accessor for BeeInterface();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  v54 = swift_allocObject();
  sub_255793B04(v100, v99);
  if (qword_27F7D2DD8 != -1)
  {
    swift_once();
  }

  v55 = v95;
  v56 = __swift_project_value_buffer(v95, qword_27F7D2EB0);
  v57 = v91;
  v58 = v90;
  (*(v91 + 16))(v90, v56, v55);
  v43(v98, v102);
  sub_25578BB90(v38);
  sub_25578BB90(v100);
  sub_2557ABE30(v99, v54 + 16);
  (*(v57 + 32))(v54 + OBJC_IVAR____TtC20KernelManagerLibrary9SEHandler_logger, v58, v55);
  v3[6] = v54;
  return v3;
}

uint64_t sub_2557A1FAC(unsigned __int8 *a1)
{
  v2 = *a1;

  v3 = sub_2557923C8("api_device-state", 0x10, 2, 0, 0, v1, v2);

  return v3;
}

void sub_2557A2010(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  if (qword_27F7D2E18 != -1)
  {
    swift_once();
  }

  v6 = sub_2557B0B38();
  v7 = __swift_project_value_buffer(v6, qword_27F7D31B8);

  v132 = v7;
  v8 = sub_2557B0B18();
  v9 = sub_2557B0DB8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v127[0] = v11;
    *v10 = 136315138;
    v12 = a1;
    v13 = sub_2557B0948();
    v15 = sub_2557AAA60(v13, v14, v127);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_255786000, v8, v9, "computing sefw hash for: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x259C40F40](v11, -1, -1);
    MEMORY[0x259C40F40](v10, -1, -1);
  }

  else
  {
    v12 = a1;
  }

  v16 = sub_25579A95C();
  if (v17)
  {
    v18 = v16;
    v19 = v17;
  }

  else
  {
    v29 = sub_2557AE338(v12 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw);
    if (v3)
    {
      return;
    }

    v31 = v29;
    v32 = v30;
    v4 = 0;
    *&v127[0] = sub_2557A594C(v29, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
    sub_25579AEE8(&qword_27F7D2E68, &qword_27F7D2E60, &qword_2557B1FA0);
    v18 = sub_2557B0BF8();
    v19 = v33;
    sub_25578AAE0(v31, v32);
  }

  v20 = sub_2557B0B18();
  v21 = sub_2557B0DB8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v127[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_2557AAA60(v18, v19, v127);
    _os_log_impl(&dword_255786000, v20, v21, "calculated hash: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x259C40F40](v23, -1, -1);
    MEMORY[0x259C40F40](v22, -1, -1);
  }

  sub_255793B04(v12 + 16, v129);
  v24 = type metadata accessor for SEInterface();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  sub_255793B04(v129, v27 + 16);
  if (qword_27F7D2DF0 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v6, qword_27F7D3018);
  (*(*(v6 - 8) + 16))(v27 + OBJC_IVAR____TtC20KernelManagerLibrary9SEHandler_logger, v28, v6);
  sub_25578BB90(v129);
  sub_255794C7C(v130);
  if (v4)
  {

    return;
  }

  v105 = v18;
  v34 = (v12 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState);
  v35 = *(v12 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 48);
  v127[2] = *(v12 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 32);
  v127[3] = v35;
  v128 = *(v12 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 64);
  v36 = *(v12 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 16);
  v127[0] = *(v12 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState);
  v127[1] = v36;
  v37 = v130[1];
  *v34 = v130[0];
  v34[1] = v37;
  v38 = v130[3];
  v34[2] = v130[2];
  v34[3] = v38;
  *(v34 + 8) = v131;
  sub_255799CFC(v127, &qword_27F7D31E0, &qword_2557B28C8);
  v39 = *(v34 + 5);
  if (!v39)
  {
    __break(1u);
    goto LABEL_53;
  }

  v40 = *(v34 + 8);
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = (v40 + 32);
    while (1)
    {
      v43 = *v42;
      v44 = v42[1];
      v45 = v42[2];
      *(v123 + 9) = *(v42 + 41);
      *&v122[16] = v44;
      v123[0] = v45;
      *v122 = v43;
      v117 = *v42;
      v118 = v42[1];
      *v119 = v42[2];
      *&v119[9] = *(v42 + 41);
      if (!v45)
      {
        break;
      }

      v42 += 4;
      if (!--v41)
      {
        goto LABEL_21;
      }
    }

    sub_255799C74(v122, v121);
    v124 = v117;
    v125 = v118;
    *v126 = *v119;
    *&v126[9] = *&v119[9];
    v39 = *(v34 + 5);
    if (!v39)
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  else
  {
LABEL_21:
    v124 = 0u;
    v125 = 0u;
    *&v126[16] = 0;
    *v126 = 0xFuLL;
    v126[24] = 0;
  }

  v46 = v34[1];
  v117 = *v34;
  v118 = v46;
  *v119 = *(v34 + 4);
  *&v119[8] = v39;
  *&v119[16] = v34[3];
  v120 = *(v34 + 8);
  v106 = v19;
  if ((sub_255797338() & 1) == 0)
  {
    v47 = 2;
    goto LABEL_29;
  }

  if (v126[0] == 15)
  {
    v47 = 1;
    goto LABEL_29;
  }

LABEL_28:
  v47 = (v126[24] >> 31) & 3;
LABEL_29:
  v48 = sub_2557B0B18();
  v49 = sub_2557B0DE8();
  if (os_log_type_enabled(v48, v49))
  {
    v103 = v34;
    v132 = v12;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v117 = v51;
    v52 = 0xE900000000000065;
    *v50 = 136446210;
    v53 = 0x6C62616C69617661;
    v54 = 0xEB00000000726961;
    v55 = 0x706552736465656ELL;
    if (v47 != 2)
    {
      v55 = 0x74616E696D726574;
      v54 = 0xEA00000000006465;
    }

    if (v47)
    {
      v53 = 0x6174736E49746F6ELL;
      v52 = 0xEC00000064656C6CLL;
    }

    if (v47 <= 1)
    {
      v56 = v53;
    }

    else
    {
      v56 = v55;
    }

    if (v47 <= 1)
    {
      v57 = v52;
    }

    else
    {
      v57 = v54;
    }

    v58 = sub_2557AAA60(v56, v57, &v117);

    *(v50 + 4) = v58;
    _os_log_impl(&dword_255786000, v48, v49, "Bee status: %{public}s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x259C40F40](v51, -1, -1);
    MEMORY[0x259C40F40](v50, -1, -1);

    v12 = v132;
    v34 = v103;
    if (a2)
    {
      goto LABEL_45;
    }
  }

  else
  {

    if (a2)
    {
      goto LABEL_45;
    }
  }

  if (v126[0] == 15)
  {
    goto LABEL_46;
  }

  if (!v47)
  {
    v63 = *(v12 + 48);
    type metadata accessor for Select();
    swift_allocObject();
    v64 = sub_25578C0EC(0);
    v65 = sub_255792F64(v64, &unk_286790970);
    v104 = v34;
    v132 = v12;
    v66 = sub_2557ABD08(v65);
    v68 = v67;

    sub_25578AAE0(v66, v68);
    type metadata accessor for GetData();
    v69 = swift_allocObject();
    *(v69 + 35) = 5;
    v116[0] = 1;
    *v122 = -922695040;
    *&v122[8] = 0;
    *&v122[16] = 256;
    v122[18] = 0;
    LODWORD(v117) = -922695040;
    *(&v117 + 1) = 0;
    LOWORD(v118) = 256;
    BYTE2(v118) = 0;
    sub_25578BBE4(v122, v121);
    sub_25578BC40(&v117);
    *(v69 + 16) = *v122;
    *(v69 + 31) = *&v122[15];
    v70 = sub_255792F64(v69, &unk_286790998);
    v71 = sub_2557ABD08(v70);
    v73 = v72;

    v74 = sub_25578F7D0(v71, v73);
    v102 = v75;
    v109 = v74;
    sub_25578AAE0(v71, v73);
    swift_setDeallocating();
    *v121 = *(v69 + 16);
    *&v121[15] = *(v69 + 31);
    sub_25578BC40(v121);
    swift_deallocClassInstance();
    v76 = swift_allocObject();
    *(v76 + 35) = 6;
    v114[0] = 1;
    *v116 = -989803904;
    *&v116[8] = 0;
    *&v116[16] = 256;
    v116[18] = 0;
    *v121 = -989803904;
    *&v121[8] = 0;
    *&v121[16] = 256;
    v121[18] = 0;
    sub_25578BBE4(v116, v115);
    sub_25578BC40(v121);
    *(v76 + 16) = *v116;
    *(v76 + 31) = *&v116[15];
    v77 = sub_255792F64(v76, &unk_2867909C0);
    v78 = sub_2557ABD08(v77);
    v80 = v79;

    v101 = sub_25578FAC0(v78, v80);
    sub_25578AAE0(v78, v80);
    swift_setDeallocating();
    *v115 = *(v76 + 16);
    *&v115[15] = *(v76 + 31);
    sub_25578BC40(v115);
    swift_deallocClassInstance();
    v81 = swift_allocObject();
    *(v81 + 35) = 1;
    v112[0] = 1;
    *v114 = -1023358336;
    *&v114[8] = 0;
    *&v114[16] = 256;
    v114[18] = 0;
    *v115 = -1023358336;
    *&v115[8] = 0;
    *&v115[16] = 256;
    v115[18] = 0;
    sub_25578BBE4(v114, v113);
    sub_25578BC40(v115);
    *(v81 + 16) = *v114;
    *(v81 + 31) = *&v114[15];
    v82 = sub_255792F64(v81, &unk_2867909E8);
    v83 = sub_2557ABD08(v82);
    v85 = v84;

    v100 = sub_25578F690(v83, v85);
    sub_25578AAE0(v83, v85);
    swift_setDeallocating();
    *v113 = *(v81 + 16);
    *&v113[15] = *(v81 + 31);
    sub_25578BC40(v113);
    swift_deallocClassInstance();
    v86 = swift_allocObject();
    *(v86 + 35) = 4;
    v111 = 1;
    *v112 = -956249472;
    *&v112[8] = 0;
    *&v112[16] = 256;
    v112[18] = 0;
    *v113 = -956249472;
    *&v113[8] = 0;
    *&v113[16] = 256;
    v113[18] = 0;
    sub_25578BBE4(v112, v110);
    sub_25578BC40(v113);
    *(v86 + 16) = *v112;
    *(v86 + 31) = *&v112[15];
    v87 = sub_255792F64(v86, &unk_286790A10);
    v88 = sub_2557ABD08(v87);
    v90 = v89;

    v91 = sub_25578F504(v88, v90);
    sub_25578AAE0(v88, v90);
    swift_setDeallocating();
    *v110 = *(v86 + 16);
    *&v110[15] = *(v86 + 31);
    sub_25578BC40(v110);
    swift_deallocClassInstance();
    v92 = sub_25578B0A0();
    v94 = v93;
    v95 = sub_2557AA280();
    sub_255799CFC(&v124, &qword_27F7D3098, &unk_2557B2A30);
    v96 = v104[5];
    if (v96)
    {
      v97 = v104[4];
      v98 = v104[6];
      type metadata accessor for BeeStateInfo();
      v99 = swift_allocObject();
      *(v99 + 16) = v105;
      *(v99 + 24) = v106;
      *(v99 + 32) = v97;
      *(v99 + 40) = v96;
      *(v99 + 48) = v98;
      *(v99 + 56) = v92;
      *(v99 + 64) = v94;
      *(v99 + 72) = v109;
      *(v99 + 80) = v102;
      *(v99 + 88) = v101;
      *(v99 + 104) = 0;
      *(v99 + 112) = v100;
      *(v99 + 120) = v91;
      *(v99 + 96) = v95;
      *a3 = v99;
      goto LABEL_48;
    }

LABEL_54:
    __break(1u);
    return;
  }

LABEL_45:
  sub_255799CFC(&v124, &qword_27F7D3098, &unk_2557B2A30);
LABEL_46:
  v59 = *(v34 + 5);
  if (!v59)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v60 = *(v34 + 4);
  v61 = *(v34 + 6);
  type metadata accessor for BeeStateInfo();
  v62 = swift_allocObject();
  *(v62 + 16) = v18;
  *(v62 + 24) = v106;
  *(v62 + 32) = v60;
  *(v62 + 40) = v59;
  *(v62 + 48) = v61;
  *(v62 + 56) = 0;
  *(v62 + 64) = 0;
  *(v62 + 72) = 0;
  *(v62 + 80) = xmmword_2557B2840;
  *(v62 + 104) = v47;
  *(v62 + 96) = 0;
  *(v62 + 112) = 0;
  *(v62 + 120) = 0;
  *a3 = v62;
LABEL_48:
}

uint64_t sub_2557A2F74()
{

  v1 = sub_255792810("api_device-state", 0x10, 2, 0, 0, v0);

  return v1;
}

void sub_2557A2FD0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_27F7D2E18 != -1)
  {
    swift_once();
  }

  v93 = sub_2557B0B38();
  __swift_project_value_buffer(v93, qword_27F7D31B8);

  v4 = sub_2557B0B18();
  v5 = sub_2557B0DB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v91[0] = v7;
    *v6 = 136446210;
    v8 = sub_2557B0948();
    v10 = sub_2557AAA60(v8, v9, v91);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_255786000, v4, v5, "computing sefw hash for: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x259C40F40](v7, -1, -1);
    MEMORY[0x259C40F40](v6, -1, -1);
  }

  v11 = sub_2557AE338(a1 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw);
  if (!v2)
  {
    v13 = v11;
    v14 = v12;
    v72 = a1;
    *&v91[0] = sub_2557A594C(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
    sub_25579AEE8(&qword_27F7D2E68, &qword_27F7D2E60, &qword_2557B1FA0);
    v15 = sub_2557B0BF8();
    v17 = v16;
    sub_25578AAE0(v13, v14);

    v18 = sub_2557B0B18();
    v19 = sub_2557B0DB8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v91[0] = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_2557AAA60(v15, v17, v91);
      _os_log_impl(&dword_255786000, v18, v19, "calculated hash: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x259C40F40](v21, -1, -1);
      MEMORY[0x259C40F40](v20, -1, -1);
    }

    sub_255793B04(v72 + 16, v90);
    v22 = type metadata accessor for SEInterface();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v25 = swift_allocObject();
    sub_255793B04(v90, v25 + 16);
    if (qword_27F7D2DF0 != -1)
    {
      swift_once();
    }

    v26 = v93;
    v27 = __swift_project_value_buffer(v93, qword_27F7D3018);
    (*(*(v26 - 8) + 16))(v25 + OBJC_IVAR____TtC20KernelManagerLibrary9SEHandler_logger, v27, v26);
    sub_25578BB90(v90);
    sub_255794C7C(v91);
    v93 = v15;
    v87 = v91[2];
    v88 = v91[3];
    v89 = v92;
    v86[0] = v91[0];
    v86[1] = v91[1];
    v28 = *(v72 + 48);
    type metadata accessor for Select();
    swift_initStackObject();
    v29 = sub_25578C0EC(0);
    v30 = sub_255792F64(v29, &unk_286790A38);
    v31 = sub_2557ABD08(v30);
    v33 = v32;

    sub_25578AAE0(v31, v33);
    type metadata accessor for GetData();
    inited = swift_initStackObject();
    *(inited + 35) = 5;
    v80[0] = 1;
    *v82 = -922695040;
    *&v82[8] = 0;
    *&v82[16] = 256;
    v82[18] = 0;
    LODWORD(v83[0]) = -922695040;
    v83[1] = 0;
    v84 = 256;
    v85 = 0;
    sub_25578BBE4(v82, v81);
    sub_25578BC40(v83);
    v35 = *&v82[15];
    *(inited + 16) = *v82;
    *(inited + 31) = v35;
    v36 = sub_255792F64(inited, &unk_286790A60);
    v37 = sub_2557ABD08(v36);
    v39 = v38;

    v40 = sub_25578F7D0(v37, v39);
    v69 = v41;
    v70 = v40;
    sub_25578AAE0(v37, v39);
    swift_setDeallocating();
    *v81 = *(inited + 16);
    *&v81[15] = *(inited + 31);
    sub_25578BC40(v81);
    v42 = swift_initStackObject();
    *(v42 + 35) = 6;
    v78[0] = 1;
    *v80 = -989803904;
    *&v80[8] = 0;
    *&v80[16] = 256;
    v80[18] = 0;
    *v81 = -989803904;
    *&v81[8] = 0;
    *&v81[16] = 256;
    v81[18] = 0;
    sub_25578BBE4(v80, v79);
    sub_25578BC40(v81);
    v43 = *&v80[15];
    *(v42 + 16) = *v80;
    *(v42 + 31) = v43;
    v44 = sub_255792F64(v42, &unk_286790A88);
    v45 = sub_2557ABD08(v44);
    v47 = v46;

    v68 = sub_25578FAC0(v45, v47);
    sub_25578AAE0(v45, v47);
    swift_setDeallocating();
    *v79 = *(v42 + 16);
    *&v79[15] = *(v42 + 31);
    sub_25578BC40(v79);
    v48 = swift_initStackObject();
    *(v48 + 35) = 1;
    v76[0] = 1;
    *v78 = -1023358336;
    *&v78[8] = 0;
    *&v78[16] = 256;
    v78[18] = 0;
    *v79 = -1023358336;
    *&v79[8] = 0;
    *&v79[16] = 256;
    v79[18] = 0;
    sub_25578BBE4(v78, v77);
    sub_25578BC40(v79);
    v49 = *&v78[15];
    *(v48 + 16) = *v78;
    *(v48 + 31) = v49;
    v50 = sub_255792F64(v48, &unk_286790AB0);
    v51 = sub_2557ABD08(v50);
    v53 = v52;

    v67 = sub_25578F690(v51, v53);
    sub_25578AAE0(v51, v53);
    swift_setDeallocating();
    *v77 = *(v48 + 16);
    *&v77[15] = *(v48 + 31);
    sub_25578BC40(v77);
    v54 = swift_initStackObject();
    *(v54 + 35) = 4;
    v75 = 1;
    *v76 = -956249472;
    *&v76[8] = 0;
    *&v76[16] = 256;
    v76[18] = 0;
    *v77 = -956249472;
    *&v77[8] = 0;
    *&v77[16] = 256;
    v77[18] = 0;
    sub_25578BBE4(v76, v74);
    sub_25578BC40(v77);
    v55 = *&v76[15];
    *(v54 + 16) = *v76;
    *(v54 + 31) = v55;
    v56 = sub_255792F64(v54, &unk_286790AD8);
    v57 = sub_2557ABD08(v56);
    v59 = v58;

    v71 = sub_25578F504(v57, v59);
    sub_25578AAE0(v57, v59);
    swift_setDeallocating();
    *v74 = *(v54 + 16);
    *&v74[15] = *(v54 + 31);
    sub_25578BC40(v74);
    v60 = sub_25578B0A0();
    v62 = v61;
    v63 = sub_2557AA280();
    v64 = v87;
    v65 = v88;
    type metadata accessor for BeeStateInfo();
    v66 = swift_allocObject();
    *(v66 + 16) = v93;
    *(v66 + 24) = v17;
    *(v66 + 32) = v64;

    sub_2557ACAB0(v86);
    *(v66 + 48) = v65;
    *(v66 + 56) = v60;
    *(v66 + 64) = v62;
    *(v66 + 72) = v70;
    *(v66 + 80) = v69;
    *(v66 + 88) = v68;
    *(v66 + 104) = 0;
    *(v66 + 112) = v67;
    *(v66 + 120) = v71;
    *(v66 + 96) = v63;
    *a2 = v66;
  }
}

uint64_t sub_2557A3BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v203 = a3;
  v202 = a2;
  v250 = *MEMORY[0x277D85DE8];
  v205 = type metadata accessor for ProfileScript(0);
  v207 = *(v205 - 8);
  v4 = *(v207 + 64);
  v5 = MEMORY[0x28223BE20](v205);
  v219 = &v198 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v198 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v198 - v10;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D31E8, &qword_2557B28D0);
  v200 = *(v229 - 8);
  v12 = *(v200 + 64);
  MEMORY[0x28223BE20](v229);
  v206 = (&v198 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D31F0, &qword_2557B28D8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v198 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v211 = (&v198 - v19);
  v227 = sub_2557B0968();
  v221 = *(v227 - 8);
  isa = v221[8].isa;
  v21 = MEMORY[0x28223BE20](v227);
  v217 = &v198 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v198 - v23;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D31F8, &qword_2557B28E0);
  *&v239 = *(v222 - 8);
  v25 = *(v239 + 64);
  MEMORY[0x28223BE20](v222);
  v208 = (&v198 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3200, &unk_2557B28E8);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v231 = &v198 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v226 = &v198 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3138, &qword_2557B26A0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  *&v240 = &v198 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v241 = (&v198 - v37);
  MEMORY[0x28223BE20](v36);
  v39 = &v198 - v38;
  v214 = type metadata accessor for KernelAsset(0);
  v40 = *(*(v214 - 1) + 64);
  v41 = MEMORY[0x28223BE20](v214);
  v238 = &v198 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v198 - v43;
  if (qword_27F7D2E18 != -1)
  {
    goto LABEL_164;
  }

  while (1)
  {
    v45 = sub_2557B0B38();
    v46 = __swift_project_value_buffer(v45, qword_27F7D31B8);
    v218 = a1;
    sub_2557ABF34(a1, v44, type metadata accessor for KernelAsset);
    v232 = v46;
    v47 = sub_2557B0B18();
    v48 = sub_2557B0DE8();
    v49 = os_log_type_enabled(v47, v48);
    v215 = v9;
    v230 = v11;
    v228 = v18;
    v225 = v24;
    if (v49)
    {
      v50 = swift_slowAlloc();
      *v50 = 67240192;
      v51 = *v44;
      sub_2557ABF9C(v44, type metadata accessor for KernelAsset);
      *(v50 + 4) = v51;
      _os_log_impl(&dword_255786000, v47, v48, "ServerAsset.updatedAsset: %{BOOL,public}d", v50, 8u);
      MEMORY[0x259C40F40](v50, -1, -1);
    }

    else
    {
      sub_2557ABF9C(v44, type metadata accessor for KernelAsset);
    }

    v52 = v214[6];
    v53 = v218;
    sub_2557ABFFC(v218 + v52, v39, &qword_27F7D3138, &qword_2557B26A0);
    v54 = v221[6].isa;
    v18 = v227;
    v55 = (v54)(v39, 1, v227);
    sub_255799CFC(v39, &qword_27F7D3138, &qword_2557B26A0);
    if (v55 != 1)
    {
      break;
    }

    v56 = sub_2557B0B18();
    v57 = sub_2557B0DE8();
    v58 = os_log_type_enabled(v56, v57);
    v44 = v233;
    if (v58)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_255786000, v56, v57, "ServerAsset.configurationScript: None", v59, 2u);
      MEMORY[0x259C40F40](v59, -1, -1);
    }

LABEL_9:
    v60 = v230;
    v11 = v231;
    v39 = v228;
    v9 = v225;
    v24 = v222;
    v61 = *(v218 + v214[7]);
    v62 = v226;
    if (v61)
    {
      v63 = *(v61 + 16);
      if (v63)
      {
        *&v223 = v221 + 2;
        v213 = (v239 + 56);
        v212 = (v239 + 48);
        v210 = v221 + 4;
        v209 = v221 + 1;
        v216 = v61;

        v64 = v216;
        v65 = 0;
        *(&v66 + 1) = 2;
        v240 = xmmword_2557B1770;
        *&v66 = 134349570;
        v204 = v66;
        a1 = v229;
        v18 = v227;
        while (1)
        {
          if (v65 == v63)
          {
            v68 = 1;
            v224 = v63;
          }

          else
          {
            if (v65 >= v63)
            {
              goto LABEL_159;
            }

            v69 = v65 + 1;
            v70 = v221;
            v71 = v64 + ((LOBYTE(v70[10].isa) + 32) & ~LOBYTE(v70[10].isa)) + v70[9].isa * v65;
            v72 = *(v24 + 48);
            v73 = v208;
            *v208 = v65;
            (v70[2].isa)(v73 + v72, v71, v18);
            v74 = v73;
            v11 = v231;
            sub_2557ABEAC(v74, v231, &qword_27F7D31F8, &qword_2557B28E0);
            v68 = 0;
            v224 = v69;
            v62 = v226;
          }

          (*v213)(v11, v68, 1, v24);
          sub_2557ABEAC(v11, v62, &qword_27F7D3200, &unk_2557B28E8);
          if ((*v212)(v62, 1, v24) == 1)
          {

            goto LABEL_69;
          }

          v75 = *v62;
          (v210->isa)(v9, v62 + *(v24 + 48), v18);
          v76 = sub_2557AE338(v9);
          v39 = v44;
          if (v44)
          {
            (v209->isa)(v9, v227);

            goto LABEL_134;
          }

          v78 = v76;
          v18 = v77;
          v79 = v77 >> 62;
          v238 = HIDWORD(v76);
          *&v239 = v77 >> 62;
          v233 = 0;
          v220 = v75;
          if ((v77 >> 62) > 1)
          {
            if (v79 != 2)
            {
              v39 = MEMORY[0x277D84F90];
              v9 = v217;
              goto LABEL_35;
            }

            v81 = *(v76 + 16);
            v80 = *(v76 + 24);
            v11 = v80 - v81;
            if (__OFSUB__(v80, v81))
            {
              goto LABEL_167;
            }

            if (v11)
            {
              goto LABEL_27;
            }
          }

          else if (v79)
          {
            v83 = v238 - v76;
            if (__OFSUB__(v238, v76))
            {
              goto LABEL_166;
            }

            v11 = v83;
            if (v83)
            {
LABEL_27:
              v243 = MEMORY[0x277D84F90];
              sub_2557AB37C(0, v11 & ~(v11 >> 63), 0);
              v237 = v78;
              a1 = v239;
              if (v239)
              {
                if (v239 == 2)
                {
                  v82 = *(v78 + 16);
                }

                else
                {
                  v82 = v237;
                }
              }

              else
              {
                v82 = 0;
              }

              v241 = v82;
              if (v11 < 0)
              {
                goto LABEL_161;
              }

              v24 = 0;
              v39 = v243;
              v235 = v78 >> 32;
              v236 = BYTE6(v18);
              v234 = &v244 + v241;
              while (2)
              {
                if (v24 >= v11)
                {
                  __break(1u);
LABEL_144:
                  __break(1u);
LABEL_145:
                  __break(1u);
                  goto LABEL_146;
                }

                v44 = v24 + 1;
                if (__OFADD__(v24, 1))
                {
                  goto LABEL_144;
                }

                v9 = v241 + v24;
                if (a1 == 2)
                {
                  if (v9 < *(v78 + 16))
                  {
                    goto LABEL_148;
                  }

                  if (v9 >= *(v78 + 24))
                  {
                    goto LABEL_150;
                  }

                  v101 = sub_2557B0868();
                  if (!v101)
                  {
                    goto LABEL_171;
                  }

                  v98 = v101;
                  a1 = v18 & 0x3FFFFFFFFFFFFFFFLL;
                  v102 = sub_2557B0888();
                  v100 = v9 - v102;
                  if (__OFSUB__(v9, v102))
                  {
                    goto LABEL_152;
                  }

LABEL_56:
                  v103 = *(v98 + v100);
                  a1 = v239;
                }

                else
                {
                  if (a1 == 1)
                  {
                    if (v9 < v237 || v9 >= v235)
                    {
                      goto LABEL_149;
                    }

                    v97 = sub_2557B0868();
                    if (!v97)
                    {
                      goto LABEL_170;
                    }

                    v98 = v97;
                    a1 = v18 & 0x3FFFFFFFFFFFFFFFLL;
                    v99 = sub_2557B0888();
                    v100 = v9 - v99;
                    if (__OFSUB__(v9, v99))
                    {
                      goto LABEL_151;
                    }

                    goto LABEL_56;
                  }

                  if (v9 >= v236)
                  {
                    goto LABEL_147;
                  }

                  LOWORD(v244) = v78;
                  BYTE2(v244) = BYTE2(v78);
                  BYTE3(v244) = BYTE3(v78);
                  BYTE4(v244) = v238;
                  BYTE5(v244) = BYTE5(v78);
                  BYTE6(v244) = BYTE6(v78);
                  HIBYTE(v244) = HIBYTE(v78);
                  v245 = v18;
                  v246 = BYTE2(v18);
                  v247 = BYTE3(v18);
                  v248 = BYTE4(v18);
                  v249 = BYTE5(v18);
                  v103 = v234[v24];
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
                v104 = swift_allocObject();
                *(v104 + 16) = v240;
                *(v104 + 56) = MEMORY[0x277D84B78];
                *(v104 + 64) = MEMORY[0x277D84BC0];
                *(v104 + 32) = v103;
                v105 = sub_2557B0C48();
                v243 = v39;
                v9 = *(v39 + 2);
                v107 = *(v39 + 3);
                if (v9 >= v107 >> 1)
                {
                  v199 = v105;
                  v109 = v106;
                  sub_2557AB37C((v107 > 1), v9 + 1, 1);
                  a1 = v239;
                  v106 = v109;
                  v105 = v199;
                  v39 = v243;
                }

                *(v39 + 2) = v9 + 1;
                v108 = &v39[16 * v9];
                *(v108 + 4) = v105;
                *(v108 + 5) = v106;
                ++v24;
                if (v44 == v11)
                {
                  goto LABEL_33;
                }

                continue;
              }
            }
          }

          else
          {
            v11 = BYTE6(v77);
            if (BYTE6(v77))
            {
              goto LABEL_27;
            }
          }

          v39 = MEMORY[0x277D84F90];
LABEL_33:
          v9 = v217;
          v11 = v231;
LABEL_35:
          v244 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
          sub_25579AEE8(&qword_27F7D2E68, &qword_27F7D2E60, &qword_2557B1FA0);
          v241 = sub_2557B0BF8();
          v24 = v84;
          sub_25578AAE0(v78, v18);

          v44 = v225;
          v18 = v227;
          (*v223)(v9, v225, v227);

          a1 = v232;
          v85 = sub_2557B0B18();
          v86 = sub_2557B0DE8();

          if (os_log_type_enabled(v85, v86))
          {
            v39 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v244 = v87;
            *v39 = v204;
            if (__OFADD__(v220, 1))
            {
              goto LABEL_160;
            }

            v88 = v87;
            *(v39 + 4) = v220 + 1;
            *(v39 + 6) = 2082;
            v89 = sub_2557B0948();
            v91 = v90;
            *&v239 = v209->isa;
            v92 = v9;
            v93 = v227;
            (v239)(v92, v227);
            v94 = sub_2557AAA60(v89, v91, &v244);
            v11 = v231;

            *(v39 + 14) = v94;
            *(v39 + 11) = 2082;
            v95 = sub_2557AAA60(v241, v24, &v244);

            *(v39 + 3) = v95;
            _os_log_impl(&dword_255786000, v85, v86, "ServerAsset.capkScripts %{public}ld: %{public}s (%{public}s)", v39, 0x20u);
            swift_arrayDestroy();
            v96 = v88;
            v18 = v93;
            MEMORY[0x259C40F40](v96, -1, -1);
            MEMORY[0x259C40F40](v39, -1, -1);

            v9 = v225;
            (v239)(v225, v18);
            a1 = v229;
          }

          else
          {

            v67 = v209->isa;
            (v209->isa)(v9, v18);
            v67(v44, v18);
            a1 = v229;
            v9 = v44;
          }

          v64 = v216;
          v63 = *(v216 + 16);
          v44 = v233;
          v60 = v230;
          v39 = v228;
          v24 = v222;
          v62 = v226;
          v65 = v224;
        }
      }
    }

    v116 = sub_2557B0B18();
    v117 = sub_2557B0DE8();
    if (os_log_type_enabled(v116, v117))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_255786000, v116, v117, "ServerAsset.capkScripts: None", v9, 2u);
      MEMORY[0x259C40F40](v9, -1, -1);
    }

    a1 = v229;
LABEL_69:
    v24 = v215;
    v11 = *(v218 + v214[8]);
    if (!v11 || (v118 = *(v11 + 16)) == 0)
    {
      v174 = sub_2557B0B18();
      v175 = sub_2557B0DE8();
      if (os_log_type_enabled(v174, v175))
      {
        v176 = swift_slowAlloc();
        *v176 = 0;
        _os_log_impl(&dword_255786000, v174, v175, "ServerAsset.terminalProfileScripts: None", v176, 2u);
        MEMORY[0x259C40F40](v176, -1, -1);
      }

LABEL_133:
      MEMORY[0x28223BE20](v177);
      v178 = v218;
      *(&v198 - 4) = v201;
      *(&v198 - 3) = v178;
      v179 = v203;
      *(&v198 - 2) = v202;
      *(&v198 - 1) = v179;
      result = sub_2557A10A8("api_process-server-asset", 24, 2, 0, 0, sub_2557ABE8C, (&v198 - 6), &v198);
LABEL_134:
      v180 = *MEMORY[0x277D85DE8];
      return result;
    }

    v226 = (v200 + 56);
    v225 = (v200 + 48);

    v119 = 0;
    *(&v120 + 1) = 2;
    v239 = xmmword_2557B1770;
    *&v120 = 134349826;
    v223 = v120;
    v224 = v11;
    while (1)
    {
      if (v119 == v118)
      {
        v122 = 1;
        v123 = v118;
      }

      else
      {
        if (v119 >= v118)
        {
          goto LABEL_162;
        }

        v123 = v119 + 1;
        v124 = v11 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v119;
        v125 = *(a1 + 48);
        v126 = v206;
        *v206 = v119;
        sub_2557ABF34(v124, v126 + v125, type metadata accessor for ProfileScript);
        sub_2557ABEAC(v126, v39, &qword_27F7D31E8, &qword_2557B28D0);
        v122 = 0;
      }

      (*v226)(v39, v122, 1, a1);
      v127 = v211;
      sub_2557ABEAC(v39, v211, &qword_27F7D31F0, &qword_2557B28D8);
      if ((*v225)(v127, 1, a1) == 1)
      {

        goto LABEL_133;
      }

      v227 = *v127;
      sub_2557AC95C(v127 + *(a1 + 48), v60, type metadata accessor for ProfileScript);
      v128 = sub_2557AE338(v60);
      v39 = v44;
      if (v44)
      {
        sub_2557ABF9C(v60, type metadata accessor for ProfileScript);

        goto LABEL_134;
      }

      v44 = v128;
      v9 = v129;
      v130 = v129 >> 62;
      v238 = HIDWORD(v128);
      v233 = 0;
      v231 = v123;
      if ((v129 >> 62) <= 1)
      {
        break;
      }

      if (v130 != 2)
      {
        v136 = MEMORY[0x277D84F90];
        goto LABEL_95;
      }

      v132 = *(v128 + 16);
      v131 = *(v128 + 24);
      v24 = v131 - v132;
      if (__OFSUB__(v131, v132))
      {
        goto LABEL_169;
      }

      if (v24)
      {
        goto LABEL_87;
      }

LABEL_92:
      v136 = MEMORY[0x277D84F90];
LABEL_93:
      v24 = v215;
      v60 = v230;
LABEL_95:
      v244 = v136;
      v11 = &qword_2557B1FA0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
      sub_25579AEE8(&qword_27F7D2E68, &qword_27F7D2E60, &qword_2557B1FA0);
      v18 = sub_2557B0BF8();
      v39 = v137;
      sub_25578AAE0(v44, v9);

      sub_2557ABF34(v60, v24, type metadata accessor for ProfileScript);
      v44 = v219;
      sub_2557ABF34(v60, v219, type metadata accessor for ProfileScript);

      v138 = sub_2557B0B18();
      a1 = sub_2557B0DE8();

      if (os_log_type_enabled(v138, a1))
      {
        v9 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v244 = v139;
        *v9 = v223;
        if (__OFADD__(v227, 1))
        {
          goto LABEL_163;
        }

        v238 = v139;
        LODWORD(v240) = a1;
        v241 = v138;
        *(v9 + 4) = v227 + 1;
        *(v9 + 12) = 2082;
        v140 = sub_2557B0948();
        v142 = v141;
        sub_2557ABF9C(v24, type metadata accessor for ProfileScript);
        v143 = sub_2557AAA60(v140, v142, &v244);

        *(v9 + 14) = v143;
        *(v9 + 22) = 2082;
        v144 = sub_2557AAA60(v18, v39, &v244);

        *(v9 + 24) = v144;
        *(v9 + 32) = 2082;
        v145 = *(v44 + *(v205 + 20));
        v146 = *(v145 + 16);
        if (v146)
        {
          v243 = MEMORY[0x277D84F90];
          sub_2557AB37C(0, v146, 0);
          v18 = v243;
          v147 = (v145 + 32);
          do
          {
            v148 = *v147++;
            v242 = v148;
            v149 = sub_2557B0F88();
            v151 = v150;
            v243 = v18;
            v153 = *(v18 + 16);
            v152 = *(v18 + 24);
            if (v153 >= v152 >> 1)
            {
              sub_2557AB37C((v152 > 1), v153 + 1, 1);
              v18 = v243;
            }

            *(v18 + 16) = v153 + 1;
            v154 = v18 + 16 * v153;
            *(v154 + 32) = v149;
            *(v154 + 40) = v151;
            --v146;
          }

          while (v146);
          v24 = v215;
          v60 = v230;
        }

        else
        {
          v18 = MEMORY[0x277D84F90];
        }

        v155 = MEMORY[0x259C40720](v18, MEMORY[0x277D837D0]);
        v157 = v156;

        sub_2557ABF9C(v219, type metadata accessor for ProfileScript);
        v158 = sub_2557AAA60(v155, v157, &v244);

        *(v9 + 34) = v158;
        v159 = v241;
        _os_log_impl(&dword_255786000, v241, v240, "ServerAsset.terminalProfileScripts %{public}ld: %{public}s (%{public}s) with kernelIDs: %{public}s", v9, 0x2Au);
        v160 = v238;
        swift_arrayDestroy();
        MEMORY[0x259C40F40](v160, -1, -1);
        MEMORY[0x259C40F40](v9, -1, -1);

        v121 = v60;
      }

      else
      {

        sub_2557ABF9C(v24, type metadata accessor for ProfileScript);
        sub_2557ABF9C(v60, type metadata accessor for ProfileScript);
        v121 = v44;
      }

      sub_2557ABF9C(v121, type metadata accessor for ProfileScript);
      v44 = v233;
      a1 = v229;
      v11 = v224;
      v118 = *(v224 + 16);
      v39 = v228;
      v119 = v231;
    }

    if (!v130)
    {
      v24 = BYTE6(v129);
      if (BYTE6(v129))
      {
        goto LABEL_87;
      }

      goto LABEL_92;
    }

    v135 = v238 - v128;
    if (__OFSUB__(v238, v128))
    {
      goto LABEL_168;
    }

    v24 = v135;
    if (!v135)
    {
      goto LABEL_92;
    }

LABEL_87:
    v243 = MEMORY[0x277D84F90];
    a1 = &v243;
    *&v240 = v129 >> 62;
    sub_2557AB37C(0, v24 & ~(v24 >> 63), 0);
    v133 = v240;
    v237 = v44;
    if (v240)
    {
      if (v240 == 2)
      {
        v134 = *(v44 + 16);
      }

      else
      {
        v134 = v237;
      }
    }

    else
    {
      v134 = 0;
    }

    v241 = v134;
    if (v24 < 0)
    {
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
LABEL_173:
      __break(1u);
    }

    v18 = 0;
    v136 = v243;
    v235 = v44 >> 32;
    v236 = BYTE6(v9);
    v234 = &v244 + v241;
    while (2)
    {
      if (v18 >= v24)
      {
        goto LABEL_145;
      }

      v11 = v18 + 1;
      if (!__OFADD__(v18, 1))
      {
        v161 = v241 + v18;
        if (v133 == 2)
        {
          if (v161 < *(v44 + 16))
          {
            goto LABEL_154;
          }

          if (v161 >= *(v44 + 24))
          {
            goto LABEL_156;
          }

          v165 = sub_2557B0868();
          if (!v165)
          {
            goto LABEL_173;
          }

          v39 = v165;
          a1 = v9 & 0x3FFFFFFFFFFFFFFFLL;
          v166 = sub_2557B0888();
          v164 = &v161[-v166];
          if (__OFSUB__(v161, v166))
          {
            goto LABEL_158;
          }

LABEL_123:
          a1 = v164[v39];
        }

        else
        {
          if (v133 == 1)
          {
            if (v161 < v237 || v161 >= v235)
            {
              goto LABEL_155;
            }

            v162 = sub_2557B0868();
            if (!v162)
            {
              goto LABEL_172;
            }

            v39 = v162;
            a1 = v9 & 0x3FFFFFFFFFFFFFFFLL;
            v163 = sub_2557B0888();
            v164 = &v161[-v163];
            if (__OFSUB__(v161, v163))
            {
              goto LABEL_157;
            }

            goto LABEL_123;
          }

          if (v161 >= v236)
          {
            goto LABEL_153;
          }

          LOWORD(v244) = v44;
          BYTE2(v244) = BYTE2(v44);
          BYTE3(v244) = BYTE3(v44);
          BYTE4(v244) = v238;
          BYTE5(v244) = BYTE5(v44);
          BYTE6(v244) = BYTE6(v44);
          HIBYTE(v244) = HIBYTE(v44);
          v245 = v9;
          v246 = BYTE2(v9);
          v247 = BYTE3(v9);
          v248 = BYTE4(v9);
          v249 = BYTE5(v9);
          a1 = v234[v18];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
        v167 = swift_allocObject();
        *(v167 + 16) = v239;
        *(v167 + 56) = MEMORY[0x277D84B78];
        *(v167 + 64) = MEMORY[0x277D84BC0];
        *(v167 + 32) = a1;
        v168 = sub_2557B0C48();
        v243 = v136;
        v171 = *(v136 + 16);
        v170 = *(v136 + 24);
        v39 = (v171 + 1);
        if (v171 >= v170 >> 1)
        {
          a1 = &v243;
          v222 = v168;
          v173 = v169;
          sub_2557AB37C((v170 > 1), v171 + 1, 1);
          v169 = v173;
          v168 = v222;
          v136 = v243;
        }

        *(v136 + 16) = v39;
        v172 = v136 + 16 * v171;
        *(v172 + 32) = v168;
        *(v172 + 40) = v169;
        ++v18;
        v133 = v240;
        if (v11 == v24)
        {
          goto LABEL_93;
        }

        continue;
      }

      break;
    }

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
    swift_once();
  }

  v110 = v241;
  sub_2557ABFFC(v53 + v52, v241, &qword_27F7D3138, &qword_2557B26A0);
  result = (v54)(v110, 1, v18);
  v112 = v233;
  if (result != 1)
  {
    v113 = sub_2557AE338(v110);
    v115 = v240;
    if (v112)
    {
      result = (v221[1].isa)(v110, v18);
      goto LABEL_134;
    }

    v237 = v54;
    v181 = v221[1].isa;
    v182 = v113;
    v183 = v114;
    v241 = v221 + 1;
    v236 = v181;
    (v181)(v110, v18);
    v184 = sub_2557A594C(v182, v183);
    v233 = 0;
    v244 = v184;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
    v185 = v18;
    sub_25579AEE8(&qword_27F7D2E68, &qword_27F7D2E60, &qword_2557B1FA0);
    v18 = sub_2557B0BF8();
    v187 = v186;
    sub_25578AAE0(v182, v183);

    v188 = v238;
    sub_2557ABF34(v218, v238, type metadata accessor for KernelAsset);

    v189 = sub_2557B0B18();
    v190 = sub_2557B0DE8();
    if (os_log_type_enabled(v189, v190))
    {
      v235 = v18;
      v18 = swift_slowAlloc();
      v234 = swift_slowAlloc();
      v244 = v234;
      *v18 = 136446466;
      sub_2557ABFFC(v188 + v214[6], v115, &qword_27F7D3138, &qword_2557B26A0);
      v191 = (v237)(v115, 1, v185);

      if (v191 == 1)
      {
        goto LABEL_175;
      }

      v192 = sub_2557B0948();
      v194 = v193;
      sub_2557ABF9C(v188, type metadata accessor for KernelAsset);
      (v236)(v115, v185);
      v195 = sub_2557AAA60(v192, v194, &v244);

      *(v18 + 4) = v195;
      *(v18 + 12) = 2082;
      v196 = sub_2557AAA60(v235, v187, &v244);

      *(v18 + 14) = v196;
      _os_log_impl(&dword_255786000, v189, v190, "ServerAsset.configurationScript: %{public}s (%{public}s", v18, 0x16u);
      v197 = v234;
      swift_arrayDestroy();
      MEMORY[0x259C40F40](v197, -1, -1);
      MEMORY[0x259C40F40](v18, -1, -1);

      v44 = v233;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      sub_2557ABF9C(v188, type metadata accessor for KernelAsset);
      v44 = v233;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_175:
  __break(1u);
  return result;
}