uint64_t sub_24B58C8DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 103) = a6;
  *(v6 + 216) = a3;
  *(v6 + 224) = a5;
  *(v6 + 102) = a4;
  *(v6 + 208) = a1;
  *(v6 + 176) = a3;
  *(v6 + 184) = a4;
  *(v6 + 192) = a5;
  *(v6 + 200) = a6;
  v8 = type metadata accessor for FilterAction();
  *(v6 + 232) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v6 + 240) = swift_task_alloc();
  *(v6 + 248) = sub_24B5FFBEC();
  *(v6 + 256) = sub_24B5FFBDC();
  v10 = *(a2 + 72);
  v14 = (*(a2 + 64) + **(a2 + 64));
  v11 = *(*(a2 + 64) + 4);
  v12 = swift_task_alloc();
  *(v6 + 264) = v12;
  *v12 = v6;
  v12[1] = sub_24B58CA48;

  return v14(v6 + 104, v6 + 176);
}

uint64_t sub_24B58CA48()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v5 = v2[31];
    v6 = v2[32];
    v7 = sub_24B5FFBCC();
    v9 = v8;
    v10 = sub_24B58CEC8;
    v11 = v7;
    v12 = v9;
  }

  else
  {
    v13 = v2[31];
    v14 = v2[32];
    v15 = sub_24B5FFBCC();
    v12 = v16;
    v2[35] = v15;
    v2[36] = v16;
    v10 = sub_24B58CBA8;
    v11 = v15;
  }

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_24B58CBA8()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 103);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v6 = *(v0 + 102) & 1;
  *(v0 + 39) = *(v0 + 120);
  *(v0 + 55) = *(v0 + 136);
  *(v0 + 71) = *(v0 + 152);
  *(v0 + 87) = *(v0 + 168);
  *(v0 + 23) = *(v0 + 104);
  *v1 = v4;
  *(v1 + 8) = v6;
  v7 = *(v0 + 95);
  *(v1 + 12) = *(v0 + 98);
  *(v1 + 9) = v7;
  *(v1 + 16) = v5;
  *(v1 + 24) = v3;
  *(v1 + 25) = *(v0 + 16);
  v8 = *(v0 + 32);
  v9 = *(v0 + 48);
  v10 = *(v0 + 64);
  *(v1 + 88) = *(v0 + 79);
  *(v1 + 73) = v10;
  *(v1 + 57) = v9;
  *(v1 + 41) = v8;
  swift_storeEnumTagMultiPayload();
  v11 = *(MEMORY[0x277D043C8] + 4);

  v12 = swift_task_alloc();
  *(v0 + 296) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BC8, &unk_24B601050);
  *v12 = v0;
  v12[1] = sub_24B58CD00;
  v14 = *(v0 + 240);
  v15 = *(v0 + 208);

  return MEMORY[0x282159B08](v14, v13);
}

uint64_t sub_24B58CD00()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 240);
  v7 = *v0;

  sub_24B5A149C(v3, type metadata accessor for FilterAction);
  v4 = *(v1 + 288);
  v5 = *(v1 + 280);

  return MEMORY[0x2822009F8](sub_24B58CE58, v5, v4);
}

uint64_t sub_24B58CE58()
{
  v1 = v0[32];
  v2 = v0[30];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B58CEC8()
{
  v1 = v0[32];
  v2 = v0[30];

  v3 = v0[1];
  v4 = v0[34];

  return v3();
}

BOOL sub_24B58CF38(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](v3);
  v5 = sub_24B5FFF3C();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_24B58D004(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v22 = *a1;
  v23[0] = v2;
  *(v23 + 9) = *(a1 + 25);
  if (*(a2 + 16) && (v4 = *(a2 + 40), sub_24B5FFEFC(), FilterItem.hash(into:)(), v5 = sub_24B5FFF3C(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(a2 + 48) + 48 * v7;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *(v9 + 24);
      v13 = *(v9 + 32);
      v16 = *v9;
      v17 = v10;
      v18 = v11;
      v19 = v12;
      v20 = v13;
      v21 = *(v9 + 40);
      sub_24B57BA1C(v16, v10, v11, v12, v13, v21);
      v14 = _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(&v16, &v22);
      sub_24B57BA04(v16, v17, v18, v19, v20, v21);
      if (v14)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_24B58D120(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 89) = a5;
  *(v5 + 24) = a2;
  *(v5 + 32) = a4;
  *(v5 + 88) = a3;
  *(v5 + 16) = a1;
  v6 = type metadata accessor for FilterAction();
  *(v5 + 40) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  sub_24B5FFBEC();
  *(v5 + 56) = sub_24B5FFBDC();
  v9 = sub_24B5FFBCC();
  *(v5 + 64) = v9;
  *(v5 + 72) = v8;

  return MEMORY[0x2822009F8](sub_24B58D1F4, v9, v8);
}

uint64_t sub_24B58D1F4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 89);
  v4 = *(v0 + 88);
  v5 = *(v0 + 32);
  *v1 = *(v0 + 24);
  *(v1 + 8) = v4 & 1;
  *(v1 + 16) = v5;
  *(v1 + 24) = v3;
  swift_storeEnumTagMultiPayload();
  v6 = *(MEMORY[0x277D043C8] + 4);

  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BC8, &unk_24B601050);
  *v7 = v0;
  v7[1] = sub_24B58D2F0;
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);

  return MEMORY[0x282159B08](v9, v8);
}

uint64_t sub_24B58D2F0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 48);
  v7 = *v0;

  sub_24B5A149C(v3, type metadata accessor for FilterAction);
  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_24B58D448, v5, v4);
}

uint64_t sub_24B58D448()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B58D4B4(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v4 = type metadata accessor for FilterAction();
  *(v3 + 32) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  sub_24B5FFBEC();
  *(v3 + 48) = sub_24B5FFBDC();
  v7 = sub_24B5FFBCC();
  *(v3 + 56) = v7;
  *(v3 + 64) = v6;

  return MEMORY[0x2822009F8](sub_24B58D580, v7, v6);
}

uint64_t sub_24B58D580()
{
  if (*(v0 + 96) == 1)
  {
    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    swift_storeEnumTagMultiPayload();
    v3 = *(MEMORY[0x277D043C8] + 4);
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BC8, &unk_24B601050);
    *v4 = v0;
    v4[1] = sub_24B58D718;
    v6 = *(v0 + 40);
    v7 = *(v0 + 16);

    return MEMORY[0x282159B08](v6, v5);
  }

  else
  {
    v8 = *(v0 + 24);
    v9 = *(v8 + 24);
    v13 = (*(v8 + 16) + **(v8 + 16));
    v10 = *(*(v8 + 16) + 4);
    v11 = swift_task_alloc();
    *(v0 + 80) = v11;
    *v11 = v0;
    v11[1] = sub_24B58D8EC;

    return v13();
  }
}

uint64_t sub_24B58D718()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 40);
  v4 = *v0;

  sub_24B5A149C(v3, type metadata accessor for FilterAction);
  v5 = *(v1 + 24);
  v6 = *(v5 + 24);
  v10 = (*(v5 + 16) + **(v5 + 16));
  v7 = *(*(v5 + 16) + 4);
  v8 = swift_task_alloc();
  *(v1 + 80) = v8;
  *v8 = v4;
  v8[1] = sub_24B58D8EC;

  return v10();
}

uint64_t sub_24B58D8EC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_24B58DA94;
  }

  else
  {
    v7 = sub_24B58DA28;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24B58DA28()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B58DA94()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_24B58DB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v293 = a1;
  v278 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v284 = &v267 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v283 = &v267 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v273 = &v267 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v271 = &v267 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v272 = &v267 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v270 = &v267 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v268 = &v267 - v26;
  MEMORY[0x28223BE20](v25);
  v269 = &v267 - v27;
  v28 = *(a2 + 32);
  v29 = *a3;
  v285 = a3[2];
  v286 = v29;
  v30 = a4[1];
  v291 = *a4;
  v292 = v28;
  v32 = a4[2];
  v31 = a4[3];
  v33 = a4[4];
  v34 = a4[7];
  v289 = a4[6];
  *&v290 = v31;
  v287 = v34;
  v288 = a4[8];
  v35 = *v6;
  v274 = v6[1];
  v275 = v35;
  v37 = v6[10];
  v36 = v6[11];
  v277 = type metadata accessor for FilterSectionDescriptor();
  v38 = (v293 + *(v277 + 24));
  v39 = *v38;
  v40 = *(v38 + 8);
  v41 = *(a5 + 48);
  v300 = *(a5 + 32);
  v301[0] = v41;
  *&v301[1] = *(a5 + 64);
  v42 = *(a5 + 16);
  v298 = *a5;
  v299 = v42;
  v37(v295, v40, v292, &v298);
  v293 = v39;
  v43 = *(v39 + 16);
  v292 = v43;
  v276 = v40;
  v282 = *&v296[1];
  v281 = v296[0];
  v280 = v295[1];
  v279 = v295[0];
  if (v40 > 3)
  {
    v44 = MEMORY[0x277D84F90];
    if (v40 > 5)
    {
      if (v40 != 6)
      {
        if (v43)
        {
          v302 = MEMORY[0x277D84F90];
          result = sub_24B5947F8(0, v43, 0);
          v216 = v291;
          if (!*(v293 + 16))
          {
LABEL_248:
            __break(1u);
            goto LABEL_249;
          }

          v217 = 0;
          v292 = v293 + 32;
          v44 = v302;
          v218 = v288 + 7;
          v219 = 1;
          while (1)
          {
            v220 = (v292 + 80 * v217);
            v217 = v219;
            v298 = *v220;
            v221 = v220[1];
            v222 = v220[2];
            v223 = v220[3];
            *(v301 + 9) = *(v220 + 57);
            v300 = v222;
            v301[0] = v223;
            v299 = v221;
            if (!v216)
            {
              goto LABEL_203;
            }

            if (v288[2])
            {
              v224 = *(&v299 + 1);
              v225 = v300;
              v226 = v288[5];
              v227 = v288;
              sub_24B5FFEFC();
              sub_24B57BAFC(&v298, v295, &qword_27F018BD8, &unk_24B601060);
              sub_24B57BAFC(&v298, v295, &qword_27F018BD8, &unk_24B601060);
              sub_24B5FFB1C();
              v228 = sub_24B5FFF3C();
              v229 = -1 << *(v227 + 32);
              v230 = v228 & ~v229;
              if ((*(v218 + ((v230 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v230))
              {
                v231 = ~v229;
                while (1)
                {
                  v232 = (v288[6] + 16 * v230);
                  v233 = *v232 == v224 && v232[1] == v225;
                  if (v233 || (sub_24B5FFECC() & 1) != 0)
                  {
                    break;
                  }

                  v230 = (v230 + 1) & v231;
                  if (((*(v218 + ((v230 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v230) & 1) == 0)
                  {
                    goto LABEL_202;
                  }
                }

                if (v286)
                {
                  *&v303 = v224;
                  *(&v303 + 1) = v225;
                  v305 = 0;
                  v306 = 0;
                  v304 = 0;
                  v307 = 7;
                  v235 = sub_24B58D004(&v303, v285);
                  result = sub_24B58090C(&v298, &qword_27F018BD8, &unk_24B601060);
                  v234 = (v235 & 1) != 0 ? 2 : 1;
                }

                else
                {
                  result = sub_24B58090C(&v298, &qword_27F018BD8, &unk_24B601060);
                  v234 = 1;
                }

                v216 = v291;
              }

              else
              {
LABEL_202:
                result = sub_24B58090C(&v298, &qword_27F018BD8, &unk_24B601060);
                v234 = 0;
                v216 = v291;
              }
            }

            else
            {
LABEL_203:
              result = sub_24B57BAFC(&v298, v295, &qword_27F018BD8, &unk_24B601060);
              v234 = 0;
            }

            v297 = *&v301[1];
            v296[0] = v300;
            v296[1] = v301[0];
            v295[0] = v298;
            v295[1] = v299;
            v302 = v44;
            v237 = *(v44 + 16);
            v236 = *(v44 + 24);
            if (v237 >= v236 >> 1)
            {
              result = sub_24B5947F8((v236 > 1), v237 + 1, 1);
              v216 = v291;
              v44 = v302;
            }

            *(v44 + 16) = v237 + 1;
            v238 = v44 + 80 * v237;
            *(v238 + 32) = v295[0];
            v239 = v295[1];
            v240 = v296[0];
            v241 = v296[1];
            *(v238 + 96) = v297;
            *(v238 + 64) = v240;
            *(v238 + 80) = v241;
            *(v238 + 48) = v239;
            *(v238 + 104) = v234;
            if (v217 == v43)
            {
              break;
            }

            v219 = v217 + 1;
            if (v217 >= *(v293 + 16))
            {
              goto LABEL_248;
            }
          }
        }

        if (*(v44 + 16))
        {
          v251 = v279;
          v298 = v279;
          v299 = v280;
          v300 = v281;
          *&v301[0] = v282;
          v275(7, &v298);
          sub_24B5A17AC(v251, *(&v251 + 1));
          v244 = 0xE700000000000000;
          v243 = 0x72656E69617274;
          v245 = v284;
          goto LABEL_240;
        }

        sub_24B5A17AC(v279, *(&v279 + 1));
        v261 = sub_24B5FEDEC();
        v255 = v284;
        (*(*(v261 - 8) + 56))(v284, 1, 1, v261);
        v244 = 0xE700000000000000;
        v243 = 0x72656E69617274;
        goto LABEL_239;
      }

      if (v43)
      {
        v302 = MEMORY[0x277D84F90];
        result = sub_24B594838(0, v43, 0);
        v118 = v291;
        if (!*(v293 + 16))
        {
LABEL_245:
          __break(1u);
          goto LABEL_246;
        }

        v119 = 0;
        *&v290 = v293 + 32;
        v44 = v302;
        v120 = v287 + 7;
        v121 = 1;
        while (1)
        {
          v122 = v290 + 72 * v119;
          v119 = v121;
          v295[0] = *v122;
          v123 = *(v122 + 16);
          v124 = *(v122 + 32);
          v125 = *(v122 + 48);
          LOBYTE(v297) = *(v122 + 64);
          v296[0] = v124;
          v296[1] = v125;
          v295[1] = v123;
          if (!v118)
          {
            goto LABEL_100;
          }

          if (v287[2])
          {
            v126 = *(&v295[1] + 1);
            v127 = *&v296[0];
            v128 = v287[5];
            v129 = v287;
            sub_24B5FFEFC();
            sub_24B57BAFC(v295, v294, &qword_27F018BE0, &qword_24B602300);
            sub_24B57BAFC(v295, v294, &qword_27F018BE0, &qword_24B602300);
            sub_24B5FFB1C();
            v130 = sub_24B5FFF3C();
            v131 = -1 << *(v129 + 32);
            v132 = v130 & ~v131;
            if ((*(v120 + ((v132 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v132))
            {
              v133 = ~v131;
              while (1)
              {
                v134 = (v287[6] + 16 * v132);
                v135 = *v134 == v126 && v134[1] == v127;
                if (v135 || (sub_24B5FFECC() & 1) != 0)
                {
                  break;
                }

                v132 = (v132 + 1) & v133;
                if (((*(v120 + ((v132 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v132) & 1) == 0)
                {
                  goto LABEL_99;
                }
              }

              if (v286)
              {
                *&v303 = v126;
                *(&v303 + 1) = v127;
                v305 = 0;
                v306 = 0;
                v304 = 0;
                v307 = 6;
                v137 = sub_24B58D004(&v303, v285);
                result = sub_24B58090C(v295, &qword_27F018BE0, &qword_24B602300);
                v136 = (v137 & 1) != 0 ? 2 : 1;
              }

              else
              {
                result = sub_24B58090C(v295, &qword_27F018BE0, &qword_24B602300);
                v136 = 1;
              }
            }

            else
            {
LABEL_99:
              result = sub_24B58090C(v295, &qword_27F018BE0, &qword_24B602300);
              v136 = 0;
            }

            v118 = v291;
          }

          else
          {
LABEL_100:
            result = sub_24B57BAFC(v295, &v298, &qword_27F018BE0, &qword_24B602300);
            v136 = 0;
          }

          v300 = v296[0];
          v301[0] = v296[1];
          v298 = v295[0];
          v299 = v295[1];
          v302 = v44;
          v139 = *(v44 + 16);
          v138 = *(v44 + 24);
          if (v139 >= v138 >> 1)
          {
            result = sub_24B594838((v138 > 1), v139 + 1, 1);
            v118 = v291;
            v44 = v302;
          }

          *(v44 + 16) = v139 + 1;
          v140 = v44 + 72 * v139;
          v141 = v298;
          v142 = v299;
          v143 = v301[0];
          *(v140 + 64) = v300;
          *(v140 + 80) = v143;
          *(v140 + 32) = v141;
          *(v140 + 48) = v142;
          *(v140 + 96) = v136;
          if (v119 == v292)
          {
            break;
          }

          v121 = v119 + 1;
          if (v119 >= *(v293 + 16))
          {
            goto LABEL_245;
          }
        }
      }

      if (*(v44 + 16))
      {
        v248 = v279;
        v298 = v279;
        v299 = v280;
        v300 = v281;
        *&v301[0] = v282;
        v275(6, &v298);
        sub_24B5A17AC(v248, *(&v248 + 1));
        v244 = 0xE500000000000000;
        v243 = 0x656D656874;
        v245 = v283;
        goto LABEL_240;
      }

      sub_24B5A17AC(v279, *(&v279 + 1));
      v258 = sub_24B5FEDEC();
      v255 = v283;
      (*(*(v258 - 8) + 56))(v283, 1, 1, v258);
      v244 = 0xE500000000000000;
      v243 = 0x656D656874;
      goto LABEL_239;
    }

    if (v40 != 4)
    {
      if (v43)
      {
        v302 = MEMORY[0x277D84F90];
        result = sub_24B594858(0, v43, 0);
        v165 = v291;
        if (!*(v293 + 16))
        {
LABEL_246:
          __break(1u);
          goto LABEL_247;
        }

        v166 = 0;
        *&v290 = v293 + 32;
        v44 = v302;
        v167 = v289 + 7;
        v168 = 1;
        while (1)
        {
          v169 = (v290 + 80 * v166);
          v166 = v168;
          v298 = *v169;
          v170 = v169[1];
          v171 = v169[2];
          v172 = v169[3];
          *(v301 + 9) = *(v169 + 57);
          v300 = v171;
          v301[0] = v172;
          v299 = v170;
          if (!v165)
          {
            goto LABEL_151;
          }

          if (v289[2])
          {
            v173 = *(&v299 + 1);
            v174 = v300;
            v175 = v289[5];
            v176 = v289;
            sub_24B5FFEFC();
            sub_24B57BAFC(&v298, v295, &qword_27F018BE8, &unk_24B601070);
            sub_24B57BAFC(&v298, v295, &qword_27F018BE8, &unk_24B601070);
            sub_24B5FFB1C();
            v177 = sub_24B5FFF3C();
            v178 = -1 << *(v176 + 32);
            v179 = v177 & ~v178;
            if ((*(v167 + ((v179 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v179))
            {
              v180 = ~v178;
              while (1)
              {
                v181 = (v289[6] + 16 * v179);
                v182 = *v181 == v173 && v181[1] == v174;
                if (v182 || (sub_24B5FFECC() & 1) != 0)
                {
                  break;
                }

                v179 = (v179 + 1) & v180;
                if (((*(v167 + ((v179 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v179) & 1) == 0)
                {
                  goto LABEL_150;
                }
              }

              if (v286)
              {
                *&v303 = v173;
                *(&v303 + 1) = v174;
                v305 = 0;
                v306 = 0;
                v304 = 0;
                v307 = 5;
                v184 = sub_24B58D004(&v303, v285);
                result = sub_24B58090C(&v298, &qword_27F018BE8, &unk_24B601070);
                v183 = (v184 & 1) != 0 ? 2 : 1;
              }

              else
              {
                result = sub_24B58090C(&v298, &qword_27F018BE8, &unk_24B601070);
                v183 = 1;
              }
            }

            else
            {
LABEL_150:
              result = sub_24B58090C(&v298, &qword_27F018BE8, &unk_24B601070);
              v183 = 0;
            }

            v165 = v291;
          }

          else
          {
LABEL_151:
            result = sub_24B57BAFC(&v298, v295, &qword_27F018BE8, &unk_24B601070);
            v183 = 0;
          }

          v297 = *&v301[1];
          v296[0] = v300;
          v296[1] = v301[0];
          v295[0] = v298;
          v295[1] = v299;
          v302 = v44;
          v186 = *(v44 + 16);
          v185 = *(v44 + 24);
          if (v186 >= v185 >> 1)
          {
            result = sub_24B594858((v185 > 1), v186 + 1, 1);
            v165 = v291;
            v44 = v302;
          }

          *(v44 + 16) = v186 + 1;
          v187 = v44 + 80 * v186;
          *(v187 + 32) = v295[0];
          v188 = v295[1];
          v189 = v296[0];
          v190 = v296[1];
          *(v187 + 96) = v297;
          *(v187 + 64) = v189;
          *(v187 + 80) = v190;
          *(v187 + 48) = v188;
          *(v187 + 104) = v183;
          if (v166 == v292)
          {
            break;
          }

          v168 = v166 + 1;
          if (v166 >= *(v293 + 16))
          {
            goto LABEL_246;
          }
        }
      }

      if (*(v44 + 16))
      {
        v249 = v279;
        v298 = v279;
        v299 = v280;
        v300 = v281;
        *&v301[0] = v282;
        v275(5, &v298);
        sub_24B5A17AC(v249, *(&v249 + 1));
        v244 = 0xEA00000000006C65;
        v243 = 0x76654C6C6C696B73;
        v245 = v273;
        goto LABEL_240;
      }

      sub_24B5A17AC(v279, *(&v279 + 1));
      v259 = sub_24B5FEDEC();
      v255 = v273;
      (*(*(v259 - 8) + 56))(v273, 1, 1, v259);
      v244 = 0xEA00000000006C65;
      v243 = 0x76654C6C6C696B73;
      goto LABEL_239;
    }

    if (v43)
    {
      v302 = MEMORY[0x277D84F90];
      result = sub_24B594898(0, v43, 0);
      v70 = v291;
      if (!*(v293 + 16))
      {
LABEL_243:
        __break(1u);
        goto LABEL_244;
      }

      v71 = 0;
      v44 = v302;
      v72 = (v33 + 56);
      v73 = 1;
      v283 = (v33 + 56);
      v284 = (v293 + 32);
      while (1)
      {
        v74 = &v284[64 * v71];
        v71 = v73;
        v75 = *(v74 + 41);
        v77 = v74[1];
        v76 = v74[2];
        v295[0] = *v74;
        v295[1] = v77;
        v296[0] = v76;
        *(v296 + 9) = v75;
        v290 = *(v295 + 8);
        v78 = *(&v77 + 1);
        v288 = *(&v296[0] + 1);
        v79 = v76;
        v289 = *&v295[0];
        v287 = (v75 >> 56);
        if (!v70)
        {
          goto LABEL_46;
        }

        if (*(v33 + 16))
        {
          v80 = *(v33 + 40);
          sub_24B5FFEFC();
          sub_24B57BAFC(v295, v294, &qword_27F018BF0, &qword_24B603600);
          sub_24B57BAFC(v295, v294, &qword_27F018BF0, &qword_24B603600);
          sub_24B5FFB1C();
          v81 = sub_24B5FFF3C();
          v82 = -1 << *(v33 + 32);
          v83 = v81 & ~v82;
          if ((*&v72[(v83 >> 3) & 0xFFFFFFFFFFFFFF8] >> v83))
          {
            v84 = ~v82;
            while (1)
            {
              v85 = (*(v33 + 48) + 16 * v83);
              v86 = *v85 == v78 && v85[1] == v79;
              if (v86 || (sub_24B5FFECC() & 1) != 0)
              {
                break;
              }

              v83 = (v83 + 1) & v84;
              if (((*&v72[(v83 >> 3) & 0xFFFFFFFFFFFFFF8] >> v83) & 1) == 0)
              {
                goto LABEL_45;
              }
            }

            if (v286)
            {
              *&v303 = v78;
              *(&v303 + 1) = v79;
              v305 = 0;
              v306 = 0;
              v304 = 0;
              v307 = 4;
              v88 = sub_24B58D004(&v303, v285);
              result = sub_24B58090C(v295, &qword_27F018BF0, &qword_24B603600);
              v87 = (v88 & 1) != 0 ? 2 : 1;
            }

            else
            {
              result = sub_24B58090C(v295, &qword_27F018BF0, &qword_24B603600);
              v87 = 1;
            }
          }

          else
          {
LABEL_45:
            result = sub_24B58090C(v295, &qword_27F018BF0, &qword_24B603600);
            v87 = 0;
          }

          v70 = v291;
        }

        else
        {
LABEL_46:
          result = sub_24B57BAFC(v295, &v298, &qword_27F018BF0, &qword_24B603600);
          v87 = 0;
        }

        v302 = v44;
        v90 = *(v44 + 16);
        v89 = *(v44 + 24);
        if (v90 >= v89 >> 1)
        {
          result = sub_24B594898((v89 > 1), v90 + 1, 1);
          v70 = v291;
          v44 = v302;
        }

        *(v44 + 16) = v90 + 1;
        v91 = v44 + (v90 << 6);
        v92 = v288;
        *(v91 + 32) = v289;
        *(v91 + 40) = v290;
        *(v91 + 56) = v78;
        *(v91 + 64) = v79;
        v93 = v287;
        *(v91 + 72) = v92;
        *(v91 + 80) = v93;
        *(v91 + 88) = v87;
        if (v71 == v292)
        {
          break;
        }

        v73 = v71 + 1;
        v72 = v283;
        if (v71 >= *(v293 + 16))
        {
          goto LABEL_243;
        }
      }
    }

    if (*(v44 + 16))
    {
      v246 = v279;
      v298 = v279;
      v299 = v280;
      v300 = v281;
      *&v301[0] = v282;
      v275(4, &v298);
      sub_24B5A17AC(v246, *(&v246 + 1));
      v243 = 0x6E6547636973756DLL;
      v244 = 0xEA00000000006572;
      v245 = v271;
      goto LABEL_240;
    }

    sub_24B5A17AC(v279, *(&v279 + 1));
    v256 = sub_24B5FEDEC();
    v255 = v271;
    (*(*(v256 - 8) + 56))(v271, 1, 1, v256);
    v243 = 0x6E6547636973756DLL;
    v244 = 0xEA00000000006572;
LABEL_239:
    v245 = v255;
    goto LABEL_240;
  }

  if (v40 > 1)
  {
    v44 = MEMORY[0x277D84F90];
    if (v40 != 2)
    {
      if (v43)
      {
        v302 = MEMORY[0x277D84F90];
        result = sub_24B5948D8(0, v43, 0);
        v191 = v291;
        if (!*(v293 + 16))
        {
LABEL_247:
          __break(1u);
          goto LABEL_248;
        }

        v192 = 0;
        v289 = (v293 + 32);
        v44 = v302;
        v193 = v290 + 56;
        v194 = 1;
        while (1)
        {
          v195 = &v289[10 * v192];
          v192 = v194;
          v298 = *v195;
          v196 = v195[1];
          v197 = v195[2];
          v198 = v195[3];
          *(v301 + 9) = *(v195 + 57);
          v300 = v197;
          v301[0] = v198;
          v299 = v196;
          if (!v191)
          {
            goto LABEL_177;
          }

          if (*(v290 + 16))
          {
            v199 = v300;
            v200 = *(v290 + 40);
            v201 = v290;
            sub_24B5FFEFC();
            sub_24B57BAFC(&v298, v295, &qword_27F018BF8, &unk_24B601080);
            sub_24B57BAFC(&v298, v295, &qword_27F018BF8, &unk_24B601080);
            sub_24B5FFB1C();
            v202 = sub_24B5FFF3C();
            v203 = -1 << *(v201 + 32);
            v204 = v202 & ~v203;
            if ((*(v193 + ((v204 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v204))
            {
              v205 = ~v203;
              while (1)
              {
                v206 = (*(v290 + 48) + 16 * v204);
                v207 = *v206 == v199 && v206[1] == *(&v199 + 1);
                if (v207 || (sub_24B5FFECC() & 1) != 0)
                {
                  break;
                }

                v204 = (v204 + 1) & v205;
                if (((*(v193 + ((v204 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v204) & 1) == 0)
                {
                  goto LABEL_176;
                }
              }

              if (v286)
              {
                v303 = v199;
                v305 = 0;
                v306 = 0;
                v304 = 0;
                v307 = 3;
                v209 = sub_24B58D004(&v303, v285);
                result = sub_24B58090C(&v298, &qword_27F018BF8, &unk_24B601080);
                v208 = (v209 & 1) != 0 ? 2 : 1;
              }

              else
              {
                result = sub_24B58090C(&v298, &qword_27F018BF8, &unk_24B601080);
                v208 = 1;
              }
            }

            else
            {
LABEL_176:
              result = sub_24B58090C(&v298, &qword_27F018BF8, &unk_24B601080);
              v208 = 0;
            }

            v191 = v291;
          }

          else
          {
LABEL_177:
            result = sub_24B57BAFC(&v298, v295, &qword_27F018BF8, &unk_24B601080);
            v208 = 0;
          }

          v297 = *&v301[1];
          v296[0] = v300;
          v296[1] = v301[0];
          v295[0] = v298;
          v295[1] = v299;
          v302 = v44;
          v211 = *(v44 + 16);
          v210 = *(v44 + 24);
          if (v211 >= v210 >> 1)
          {
            result = sub_24B5948D8((v210 > 1), v211 + 1, 1);
            v191 = v291;
            v44 = v302;
          }

          *(v44 + 16) = v211 + 1;
          v212 = v44 + 80 * v211;
          *(v212 + 32) = v295[0];
          v213 = v295[1];
          v214 = v296[0];
          v215 = v296[1];
          *(v212 + 96) = v297;
          *(v212 + 64) = v214;
          *(v212 + 80) = v215;
          *(v212 + 48) = v213;
          *(v212 + 104) = v208;
          if (v192 == v292)
          {
            break;
          }

          v194 = v192 + 1;
          if (v192 >= *(v293 + 16))
          {
            goto LABEL_247;
          }
        }
      }

      if (*(v44 + 16))
      {
        v250 = v279;
        v298 = v279;
        v299 = v280;
        v300 = v281;
        *&v301[0] = v282;
        v275(3, &v298);
        sub_24B5A17AC(v250, *(&v250 + 1));
        v244 = 0xE800000000000000;
        v243 = 0x7974696C61646F6DLL;
        v245 = v272;
        goto LABEL_240;
      }

      sub_24B5A17AC(v279, *(&v279 + 1));
      v260 = sub_24B5FEDEC();
      v255 = v272;
      (*(*(v260 - 8) + 56))(v272, 1, 1, v260);
      v244 = 0xE800000000000000;
      v243 = 0x7974696C61646F6DLL;
      goto LABEL_239;
    }

    if (v43)
    {
      v302 = MEMORY[0x277D84F90];
      result = sub_24B594918(0, v43, 0);
      v94 = v291;
      if (!*(v293 + 16))
      {
LABEL_244:
        __break(1u);
        goto LABEL_245;
      }

      v95 = 0;
      v44 = v302;
      v96 = (v32 + 56);
      v97 = 1;
      v283 = (v32 + 56);
      v284 = (v293 + 32);
      while (1)
      {
        v98 = &v284[64 * v95];
        v95 = v97;
        v99 = *(v98 + 41);
        v101 = v98[1];
        v100 = v98[2];
        v295[0] = *v98;
        v295[1] = v101;
        v296[0] = v100;
        *(v296 + 9) = v99;
        v290 = *(v295 + 8);
        v102 = *(&v101 + 1);
        v288 = *(&v296[0] + 1);
        v103 = v100;
        v289 = *&v295[0];
        v287 = (v99 >> 56);
        if (!v94)
        {
          goto LABEL_73;
        }

        if (*(v32 + 16))
        {
          v104 = *(v32 + 40);
          sub_24B5FFEFC();
          sub_24B57BAFC(v295, v294, &qword_27F018C00, &qword_24B603620);
          sub_24B57BAFC(v295, v294, &qword_27F018C00, &qword_24B603620);
          sub_24B5FFB1C();
          v105 = sub_24B5FFF3C();
          v106 = -1 << *(v32 + 32);
          v107 = v105 & ~v106;
          if ((*&v96[(v107 >> 3) & 0xFFFFFFFFFFFFFF8] >> v107))
          {
            v108 = ~v106;
            while (1)
            {
              v109 = (*(v32 + 48) + 16 * v107);
              v110 = *v109 == v102 && v109[1] == v103;
              if (v110 || (sub_24B5FFECC() & 1) != 0)
              {
                break;
              }

              v107 = (v107 + 1) & v108;
              if (((*&v96[(v107 >> 3) & 0xFFFFFFFFFFFFFF8] >> v107) & 1) == 0)
              {
                goto LABEL_72;
              }
            }

            if (v286)
            {
              *&v303 = v102;
              *(&v303 + 1) = v103;
              v305 = 0;
              v306 = 0;
              v304 = 0;
              v307 = 2;
              v112 = sub_24B58D004(&v303, v285);
              result = sub_24B58090C(v295, &qword_27F018C00, &qword_24B603620);
              v111 = (v112 & 1) != 0 ? 2 : 1;
            }

            else
            {
              result = sub_24B58090C(v295, &qword_27F018C00, &qword_24B603620);
              v111 = 1;
            }
          }

          else
          {
LABEL_72:
            result = sub_24B58090C(v295, &qword_27F018C00, &qword_24B603620);
            v111 = 0;
          }

          v94 = v291;
        }

        else
        {
LABEL_73:
          result = sub_24B57BAFC(v295, &v298, &qword_27F018C00, &qword_24B603620);
          v111 = 0;
        }

        v302 = v44;
        v114 = *(v44 + 16);
        v113 = *(v44 + 24);
        if (v114 >= v113 >> 1)
        {
          result = sub_24B594918((v113 > 1), v114 + 1, 1);
          v94 = v291;
          v44 = v302;
        }

        *(v44 + 16) = v114 + 1;
        v115 = v44 + (v114 << 6);
        v116 = v288;
        *(v115 + 32) = v289;
        *(v115 + 40) = v290;
        *(v115 + 56) = v102;
        *(v115 + 64) = v103;
        v117 = v287;
        *(v115 + 72) = v116;
        *(v115 + 80) = v117;
        *(v115 + 88) = v111;
        if (v95 == v292)
        {
          break;
        }

        v97 = v95 + 1;
        v96 = v283;
        if (v95 >= *(v293 + 16))
        {
          goto LABEL_244;
        }
      }
    }

    if (*(v44 + 16))
    {
      v247 = v279;
      v298 = v279;
      v299 = v280;
      v300 = v281;
      *&v301[0] = v282;
      v275(2, &v298);
      sub_24B5A17AC(v247, *(&v247 + 1));
      v244 = 0xE900000000000074;
      v243 = 0x6E656D7069757165;
      v245 = v270;
      goto LABEL_240;
    }

    sub_24B5A17AC(v279, *(&v279 + 1));
    v257 = sub_24B5FEDEC();
    v255 = v270;
    (*(*(v257 - 8) + 56))(v270, 1, 1, v257);
    v244 = 0xE900000000000074;
    v243 = 0x6E656D7069757165;
    goto LABEL_239;
  }

  if (!v40)
  {
    v44 = MEMORY[0x277D84F90];
    if (!v43)
    {
LABEL_215:
      if (*(v44 + 16))
      {
        v242 = v279;
        v298 = v279;
        v299 = v280;
        v300 = v281;
        *&v301[0] = v282;
        v275(0, &v298);
        sub_24B5A17AC(v242, *(&v242 + 1));
        v243 = 0x75636F4679646F62;
        v244 = 0xE900000000000073;
        v245 = v269;
LABEL_240:
        v263 = v277;
        v262 = v278;
        *v278 = v243;
        v262[1] = v244;
        result = sub_24B5A1810(v245, v262 + *(v263 + 20));
        v264 = v262 + *(v263 + 24);
        *v264 = v44;
        v264[8] = v276;
        return result;
      }

      sub_24B5A17AC(v279, *(&v279 + 1));
      v254 = sub_24B5FEDEC();
      v255 = v269;
      (*(*(v254 - 8) + 56))(v269, 1, 1, v254);
      v243 = 0x75636F4679646F62;
      v244 = 0xE900000000000073;
      goto LABEL_239;
    }

    v302 = MEMORY[0x277D84F90];
    result = sub_24B594978(0, v43, 0);
    v46 = v291;
    if (*(v293 + 16))
    {
      v47 = 0;
      v284 = (v293 + 32);
      v44 = v302;
      v48 = v291 + 56;
      v49 = 1;
      do
      {
        v50 = &v284[64 * v47];
        v47 = v49;
        v51 = *(v50 + 41);
        v53 = v50[1];
        v52 = v50[2];
        v295[0] = *v50;
        v295[1] = v53;
        v296[0] = v52;
        *(v296 + 9) = v51;
        v290 = *(v295 + 8);
        v54 = *(&v53 + 1);
        v288 = *(&v296[0] + 1);
        v55 = v52;
        v289 = *&v295[0];
        v287 = (v51 >> 56);
        if (!v46)
        {
          goto LABEL_18;
        }

        if (*(v46 + 16))
        {
          v56 = *(v46 + 40);
          sub_24B5FFEFC();
          sub_24B57BAFC(v295, v294, &qword_27F018C08, &qword_24B601090);
          sub_24B57BAFC(v295, v294, &qword_27F018C08, &qword_24B601090);
          sub_24B5FFB1C();
          v57 = sub_24B5FFF3C();
          v58 = -1 << *(v46 + 32);
          v59 = v57 & ~v58;
          if ((*(v48 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
          {
            v60 = ~v58;
            while (1)
            {
              v61 = (*(v291 + 48) + 16 * v59);
              v62 = *v61 == v54 && v61[1] == v55;
              if (v62 || (sub_24B5FFECC() & 1) != 0)
              {
                break;
              }

              v59 = (v59 + 1) & v60;
              if (((*(v48 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            if (v286)
            {
              *&v303 = v54;
              *(&v303 + 1) = v55;
              v305 = 0;
              v306 = 0;
              v304 = 0;
              v307 = 0;
              v64 = sub_24B58D004(&v303, v285);
              result = sub_24B58090C(v295, &qword_27F018C08, &qword_24B601090);
              v63 = (v64 & 1) != 0 ? 2 : 1;
            }

            else
            {
              result = sub_24B58090C(v295, &qword_27F018C08, &qword_24B601090);
              v63 = 1;
            }
          }

          else
          {
LABEL_17:
            result = sub_24B58090C(v295, &qword_27F018C08, &qword_24B601090);
            v63 = 0;
          }

          v46 = v291;
        }

        else
        {
LABEL_18:
          result = sub_24B57BAFC(v295, &v298, &qword_27F018C08, &qword_24B601090);
          v63 = 0;
        }

        v302 = v44;
        v66 = *(v44 + 16);
        v65 = *(v44 + 24);
        if (v66 >= v65 >> 1)
        {
          result = sub_24B594978((v65 > 1), v66 + 1, 1);
          v46 = v291;
          v44 = v302;
        }

        *(v44 + 16) = v66 + 1;
        v67 = v44 + (v66 << 6);
        v68 = v288;
        *(v67 + 32) = v289;
        *(v67 + 40) = v290;
        *(v67 + 56) = v54;
        *(v67 + 64) = v55;
        v69 = v287;
        *(v67 + 72) = v68;
        *(v67 + 80) = v69;
        *(v67 + 88) = v63;
        if (v47 == v292)
        {
          goto LABEL_215;
        }

        v49 = v47 + 1;
      }

      while (v47 < *(v293 + 16));
    }

    __break(1u);
    goto LABEL_243;
  }

  if (!v43)
  {
    v44 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_230:
      v252 = v279;
      v298 = v279;
      v299 = v280;
      v300 = v281;
      *&v301[0] = v282;
      v253 = v268;
      v275(1, &v298);
      sub_24B5A17AC(v252, *(&v252 + 1));
      v245 = v253;
    }

    else
    {
      sub_24B5A17AC(v279, *(&v279 + 1));
      v265 = sub_24B5FEDEC();
      v266 = v268;
      (*(*(v265 - 8) + 56))(v268, 1, 1, v265);
      v245 = v266;
    }

    v244 = 0xE800000000000000;
    v243 = 0x6E6F697461727564;
    goto LABEL_240;
  }

  v294[0] = MEMORY[0x277D84F90];
  result = sub_24B594958(0, v43, 0);
  v144 = 0;
  v44 = v294[0];
  v145 = (v30 + 56);
  v146 = v291;
  v289 = (v30 + 56);
  *&v290 = v293 + 32;
  while (v144 < *(v293 + 16))
  {
    v147 = (v290 + 48 * v144);
    v148 = *v147;
    v149 = v147[1];
    v150 = v147[2];
    v151 = v147[3];
    v152 = v147[4];
    if (v146 && *(v30 + 16))
    {
      v153 = *(v30 + 40);
      sub_24B5FFEFC();
      swift_bridgeObjectRetain_n();
      sub_24B5FFB1C();
      v154 = sub_24B5FFF3C();
      v155 = -1 << *(v30 + 32);
      v156 = v154 & ~v155;
      if ((*(v145 + ((v156 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v156))
      {
        v157 = ~v155;
        while (1)
        {
          v158 = (*(v30 + 48) + 16 * v156);
          v159 = *v158 == v148 && v158[1] == v149;
          if (v159 || (sub_24B5FFECC() & 1) != 0)
          {
            break;
          }

          v156 = (v156 + 1) & v157;
          if (((*(v145 + ((v156 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v156) & 1) == 0)
          {
            goto LABEL_125;
          }
        }

        if (v286)
        {
          *&v295[0] = v148;
          *(&v295[0] + 1) = v149;
          *&v295[1] = v150;
          *(&v295[1] + 1) = v151;
          *&v296[0] = v152;
          BYTE8(v296[0]) = 1;
          v161 = sub_24B58D004(v295, v285);

          if (v161)
          {
            v160 = 2;
          }

          else
          {
            v160 = 1;
          }
        }

        else
        {

          v160 = 1;
        }
      }

      else
      {
LABEL_125:

        v160 = 0;
      }

      v146 = v291;
    }

    else
    {

      v160 = 0;
    }

    v294[0] = v44;
    v163 = *(v44 + 16);
    v162 = *(v44 + 24);
    if (v163 >= v162 >> 1)
    {
      result = sub_24B594958((v162 > 1), v163 + 1, 1);
      v146 = v291;
      v44 = v294[0];
    }

    ++v144;
    *(v44 + 16) = v163 + 1;
    v164 = v44 + 48 * v163;
    *(v164 + 32) = v148;
    *(v164 + 40) = v149;
    *(v164 + 48) = v150;
    *(v164 + 56) = v151;
    *(v164 + 64) = v152;
    *(v164 + 72) = v160;
    v145 = v289;
    if (v144 == v292)
    {
      goto LABEL_230;
    }
  }

LABEL_249:
  __break(1u);
  return result;
}

uint64_t sub_24B58FA9C(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_24B5FFBEC();
  v2[3] = sub_24B5FFBDC();
  v4 = *(a2 + 152);
  v8 = (*(a2 + 144) + **(a2 + 144));
  v5 = *(*(a2 + 144) + 4);
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_24B58FBA4;

  return v8();
}

uint64_t sub_24B58FBA4()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_24B5FFBCC();
  if (v2)
  {
    v8 = sub_24B58FD64;
  }

  else
  {
    v8 = sub_24B58FD00;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24B58FD00()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B58FD64()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

double sub_24B58FDC8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 272) = 2;
  return result;
}

uint64_t sub_24B58FDFC(uint64_t a1)
{
  if (*(a1 + 272) <= 1u)
  {
    return *(a1 + 272);
  }

  else
  {
    return (*a1 + 2);
  }
}

double sub_24B58FE70(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 2;
  return result;
}

unint64_t sub_24B58FF7C()
{
  result = qword_27F018B30;
  if (!qword_27F018B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018B30);
  }

  return result;
}

uint64_t sub_24B58FFD0@<X0>(int a1@<W0>, ValueMetadata **a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  LODWORD(v265) = a1;
  v262 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v246 = &v238 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v241 = &v238 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v242 = &v238 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v245 = &v238 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v238 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v238 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v238 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v238 - v30;
  v32 = a2[1];
  v255 = *a2;
  v249 = v32;
  v33 = a2[3];
  v254 = a2[2];
  v253 = v33;
  v34 = a2[4];
  v252 = a2[5];
  v35 = a2[7];
  v247 = a2[6];
  v243 = v35;
  v248 = a2[8];
  v260 = *a3;
  v258 = a3[2];
  v36 = a4[1];
  v261 = *a4;
  v37 = a4[2];
  v251 = a4[3];
  v38 = a4[8];
  v240 = a4[7];
  v244 = v38;
  v39 = a5[3];
  v275 = a5[2];
  v276 = v39;
  v277 = *(a5 + 8);
  v40 = a5[1];
  v273 = *a5;
  v274 = v40;
  v41 = *(v6 + 8);
  v257 = *v6;
  v256 = v41;
  v42 = *(v6 + 80);
  v43 = *(v6 + 88);
  LOBYTE(a4) = v265;
  v42(&v266, v265, v34, &v273);
  v44 = v267;
  v263 = v266;
  v264 = v268;
  v265 = v267;
  v45 = v270;
  v46 = a4;
  v47 = v271;
  if (v46 <= 3)
  {
    v52 = v254;
    v248 = v36;
    v53 = v37;
    v54 = *(&v270 + 1);
    v259 = v269;
    if (v46 <= 1)
    {
      if (v46)
      {
        goto LABEL_24;
      }

      Kind = v255[1].Kind;
      v56 = v271;
      if (Kind)
      {
        v57 = v255;
        v249 = *(&v270 + 1);
        v250 = v270;
        v58 = sub_24B594728(Kind, 0, &qword_27F018C80, &qword_24B601108);
        v36 = sub_24B59C540(&v273, (v58 + 4), Kind, v57);

        sub_24B5A1880();
        if (v36 != Kind)
        {
          goto LABEL_195;
        }

        v56 = v47;
        v54 = v249;
        v45 = v250;
      }

      else
      {
        v58 = MEMORY[0x277D84F90];
      }

      v131 = v261;
      *&v273 = v58;
      sub_24B596790(&v273, sub_24B59C86C, &type metadata for BodyFocus, sub_24B5997A8, sub_24B597050);
      v132 = v273;
      if (v260)
      {
        v133 = v258;

        if (!v131)
        {
LABEL_73:
          v134 = sub_24B59DB64(v132, v133, v131);

          if (*(v134 + 16))
          {
            v135 = v263;
            v136 = v265;
            *&v273 = v263;
            *(&v273 + 1) = v265;
            *&v274 = v264;
            *(&v274 + 1) = v259;
            *&v275 = v45;
            *(&v275 + 1) = v54;
            *&v276 = v56;
            v257(0, &v273);
            sub_24B5A17AC(v135, v136);
          }

          else
          {
            sub_24B5A17AC(v263, v265);
            v180 = sub_24B5FEDEC();
            (*(*(v180 - 8) + 56))(v31, 1, 1, v180);
          }

          v181 = v262;
          *v262 = 0x75636F4679646F62;
          v181[1] = 0xE900000000000073;
          v182 = type metadata accessor for FilterSectionDescriptor();
          sub_24B5A1810(v31, v181 + *(v182 + 20));
          v183 = v181 + *(v182 + 24);
          *v183 = v134;
          v183[8] = 0;
          return (*(*(v182 - 8) + 56))(v181, 0, 1, v182);
        }
      }

      else
      {
        v133 = 0;
        if (!v131)
        {
          goto LABEL_73;
        }
      }

      goto LABEL_73;
    }

    if (v46 == 2)
    {
      v59 = *(v253 + 16);
      if (v59)
      {
        v60 = v253;
        v249 = *(&v270 + 1);
        v250 = v270;
        v239 = v271;
        v36 = sub_24B594728(v59, 0, &qword_27F018C90, &qword_24B601118);
        v61 = sub_24B59C540(&v273, &v36[2], v59, v60);

        sub_24B5A1880();
        if (v61 != v59)
        {
          goto LABEL_196;
        }

        v47 = v239;
        v54 = v249;
        v45 = v250;
      }

      else
      {
        v36 = MEMORY[0x277D84F90];
      }

      v137 = v261;
      v138 = v53;
      *&v273 = v36;
      sub_24B596790(&v273, sub_24B59C818, &type metadata for Equipment, sub_24B5997A8, sub_24B597050);
      v139 = v273;
      if (v260)
      {
        v140 = v258;

        if (v137)
        {
LABEL_78:

LABEL_118:
          v184 = sub_24B59E4C8(v139, v140, v138, sub_24B594918, 2);

          if (*(v184 + 16))
          {
            v185 = v263;
            v186 = v265;
            *&v273 = v263;
            *(&v273 + 1) = v265;
            *&v274 = v264;
            *(&v274 + 1) = v259;
            *&v275 = v45;
            *(&v275 + 1) = v54;
            *&v276 = v47;
            v257(2, &v273);
            sub_24B5A17AC(v185, v186);
          }

          else
          {
            sub_24B5A17AC(v263, v265);
            v193 = sub_24B5FEDEC();
            (*(*(v193 - 8) + 56))(v26, 1, 1, v193);
          }

          v181 = v262;
          *v262 = 0x6E656D7069757165;
          v181[1] = 0xE900000000000074;
          v182 = type metadata accessor for FilterSectionDescriptor();
          sub_24B5A1810(v26, v181 + *(v182 + 20));
          v194 = v181 + *(v182 + 24);
          *v194 = v184;
          v195 = 2;
          goto LABEL_183;
        }
      }

      else
      {
        v140 = 0;
        if (v137)
        {
          goto LABEL_78;
        }
      }

      v138 = 0;
      goto LABEL_118;
    }

    v77 = *(v252 + 16);
    if (v77)
    {
      v78 = v252;
      v249 = *(&v270 + 1);
      v250 = v270;
      v239 = v271;
      v79 = sub_24B594608(v77, 0, &qword_27F018C98, &qword_24B601120);
      v36 = sub_24B59C244(&v273, v79 + 32, v77, v78);

      sub_24B5A1880();
      if (v36 != v77)
      {
        goto LABEL_198;
      }

      v47 = v239;
      v54 = v249;
      v45 = v250;
    }

    else
    {
      v79 = MEMORY[0x277D84F90];
    }

    v146 = v261;
    v147 = v251;
    v148 = v23;
    *&v273 = v79;
    sub_24B59682C(&v273, sub_24B59C804, &type metadata for Modality, sub_24B599168, sub_24B596F48);
    v149 = v273;
    if (v260)
    {
      v150 = v258;

      if (v146)
      {
LABEL_86:

LABEL_126:
        v190 = sub_24B59E1A4(v149, v150, v147);

        if (*(v190 + 16))
        {
          v191 = v263;
          v192 = v265;
          *&v273 = v263;
          *(&v273 + 1) = v265;
          *&v274 = v264;
          *(&v274 + 1) = v259;
          *&v275 = v45;
          *(&v275 + 1) = v54;
          *&v276 = v47;
          v257(3, &v273);
          sub_24B5A17AC(v191, v192);
        }

        else
        {
          sub_24B5A17AC(v263, v265);
          v197 = sub_24B5FEDEC();
          (*(*(v197 - 8) + 56))(v23, 1, 1, v197);
        }

        v181 = v262;
        *v262 = 0x7974696C61646F6DLL;
        v181[1] = 0xE800000000000000;
        v182 = type metadata accessor for FilterSectionDescriptor();
        sub_24B5A1810(v148, v181 + *(v182 + 20));
        v194 = v181 + *(v182 + 24);
        *v194 = v190;
        v195 = 3;
        goto LABEL_183;
      }
    }

    else
    {
      v150 = 0;
      if (v146)
      {
        goto LABEL_86;
      }
    }

    v147 = 0;
    goto LABEL_126;
  }

  if (v46 > 5)
  {
    if (v46 != 6)
    {
      if (v46 != 7)
      {
        v80 = type metadata accessor for FilterSectionDescriptor();
        (*(*(v80 - 8) + 56))(v262, 1, 1, v80);
        v81 = v263;

        return sub_24B5A17AC(v81, v44);
      }

      v259 = v269;
      v48 = v248;
      v49 = v248[1].Kind;
      v239 = v271;
      if (v49)
      {
        v249 = *(&v270 + 1);
        v250 = v270;
        v50 = sub_24B594608(v49, 0, &qword_27F018CC0, &qword_24B601148);
        v36 = sub_24B59C09C(&v273, v50 + 32, v49, v48, sub_24B5A1548);

        sub_24B5A1880();
        if (v36 != v49)
        {
          goto LABEL_199;
        }

        v51 = v249;
        v45 = v250;
      }

      else
      {
        v51 = *(&v270 + 1);
        v50 = MEMORY[0x277D84F90];
      }

      v151 = v261;
      v152 = v244;
      *&v273 = v50;
      sub_24B596790(&v273, sub_24B59C71C, &type metadata for Trainer, sub_24B598B28, sub_24B596E40);
      v153 = v246;
      v154 = v273;
      if (v260)
      {
        v155 = v258;

        if (v151)
        {
LABEL_90:

LABEL_136:
          v198 = sub_24B5A0298(v154, v155, v152, sub_24B5947F8, sub_24B5A1548, 7);

          if (*(v198 + 16))
          {
            v199 = v263;
            v200 = v265;
            *&v273 = v263;
            *(&v273 + 1) = v265;
            *&v274 = v264;
            *(&v274 + 1) = v259;
            *&v275 = v45;
            *(&v275 + 1) = v51;
            *&v276 = v239;
            v257(7, &v273);
            sub_24B5A17AC(v199, v200);
          }

          else
          {
            sub_24B5A17AC(v263, v265);
            v201 = sub_24B5FEDEC();
            (*(*(v201 - 8) + 56))(v153, 1, 1, v201);
          }

          v181 = v262;
          *v262 = 0x72656E69617274;
          v181[1] = 0xE700000000000000;
          v182 = type metadata accessor for FilterSectionDescriptor();
          sub_24B5A1810(v153, v181 + *(v182 + 20));
          v194 = v181 + *(v182 + 24);
          *v194 = v198;
          v195 = 7;
LABEL_183:
          v194[8] = v195;
          return (*(*(v182 - 8) + 56))(v181, 0, 1, v182);
        }
      }

      else
      {
        v155 = MEMORY[0x277D84FA0];
        if (v151)
        {
          goto LABEL_90;
        }
      }

      v152 = 0;
      goto LABEL_136;
    }

    v259 = v269;
    v68 = v249;
    v69 = *(v249 + 16);
    v70 = *(&v270 + 1);
    v250 = v270;
    v29 = v271;
    if (v69)
    {
      v71 = sub_24B594608(v69, 0, &qword_27F018CB8, &qword_24B601140);
      v72 = sub_24B59BF08(&v273, v71 + 32, v69, v68);
      v45 = *(&v273 + 1);
      v54 = v273;
      v47 = v275;

      sub_24B5A1880();
      if (v72 != v69)
      {
        __break(1u);
LABEL_24:
        v73 = *(v52 + 16);
        v74 = v47;
        if (v73)
        {
          v75 = v52;
          v250 = v45;
          v249 = v54;
          v76 = sub_24B594698(v73, 0);
          v36 = sub_24B59C3D8(&v273, (v76 + 4), v73, v75);

          sub_24B5A1880();
          if (v36 != v73)
          {
            goto LABEL_197;
          }

          v54 = v249;
          v45 = v250;
        }

        else
        {
          v76 = MEMORY[0x277D84F90];
        }

        v141 = v29;
        v142 = v248;
        *&v273 = v76;
        sub_24B5968C8(&v273);
        v143 = v273;
        v144 = v261;
        if (v260)
        {
          v145 = v258;

          if (v144)
          {
LABEL_82:

LABEL_122:
            v187 = sub_24B59DEB4(v143, v145, v142);

            if (*(v187 + 16))
            {
              v188 = v263;
              v189 = v265;
              *&v273 = v263;
              *(&v273 + 1) = v265;
              *&v274 = v264;
              *(&v274 + 1) = v259;
              *&v275 = v45;
              *(&v275 + 1) = v54;
              *&v276 = v74;
              v257(1, &v273);
              sub_24B5A17AC(v188, v189);
            }

            else
            {
              sub_24B5A17AC(v263, v265);
              v196 = sub_24B5FEDEC();
              (*(*(v196 - 8) + 56))(v29, 1, 1, v196);
            }

            v181 = v262;
            *v262 = 0x6E6F697461727564;
            v181[1] = 0xE800000000000000;
            v182 = type metadata accessor for FilterSectionDescriptor();
            sub_24B5A1810(v141, v181 + *(v182 + 20));
            v194 = v181 + *(v182 + 24);
            *v194 = v187;
            v195 = 1;
            goto LABEL_183;
          }
        }

        else
        {
          v145 = 0;
          if (v261)
          {
            goto LABEL_82;
          }
        }

        v142 = 0;
        goto LABEL_122;
      }
    }

    else
    {
      v71 = MEMORY[0x277D84F90];
    }

    *&v273 = v71;
    sub_24B596600(&v273);
    v249 = v70;
    v239 = v29;
    v117 = v273;
    v118 = *(v273 + 16);
    v255 = 0;
    if (!v118)
    {
      v121 = MEMORY[0x277D84F90];
LABEL_99:

      v165 = *(v121 + 2);
      if (v165)
      {
        v166 = 0;
        v36 = (v165 - 1);
        v167 = MEMORY[0x277D84F90];
        do
        {
          v168 = &v121[64 * v166 + 32];
          v169 = v166;
          while (1)
          {
            if (v169 >= *(v121 + 2))
            {
              __break(1u);
              goto LABEL_186;
            }

            v170 = *v168;
            v171 = *(v168 + 1);
            v172 = *(v168 + 3);
            v275 = *(v168 + 2);
            v276 = v172;
            v273 = v170;
            v274 = v171;
            v166 = (&v169->Kind + 1);
            if (*(&v172 + 1))
            {
              break;
            }

            v168 += 64;
            v169 = (v169 + 1);
            if (v165 == v166)
            {
              goto LABEL_147;
            }
          }

          sub_24B5A1888(&v273, &v266);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v272 = v167;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24B5949B8(0, *(v167 + 16) + 1, 1);
            v167 = v272;
          }

          v175 = *(v167 + 16);
          v174 = *(v167 + 24);
          if (v175 >= v174 >> 1)
          {
            sub_24B5949B8((v174 > 1), v175 + 1, 1);
            v167 = v272;
          }

          *(v167 + 16) = v175 + 1;
          v176 = (v167 + (v175 << 6));
          v177 = v273;
          v178 = v274;
          v179 = v276;
          v176[4] = v275;
          v176[5] = v179;
          v176[2] = v177;
          v176[3] = v178;
        }

        while (v36 != v169);
      }

      else
      {
        v167 = MEMORY[0x277D84F90];
      }

LABEL_147:
      *&v273 = v167;

      v36 = v255;
      sub_24B596488(&v273);
      if (v36)
      {
        goto LABEL_202;
      }

      v206 = v273;
      if (v165)
      {
        v207 = 0;
        v208 = v121 + 32;
        v209 = MEMORY[0x277D84F90];
LABEL_150:
        v210 = &v208[64 * v207];
        v211 = v207;
        while (v211 < *(v121 + 2))
        {
          v212 = *v210;
          v213 = *(v210 + 1);
          v214 = *(v210 + 3);
          v275 = *(v210 + 2);
          v276 = v214;
          v273 = v212;
          v274 = v213;
          v207 = v211 + 1;
          if (!*(&v214 + 1))
          {
            sub_24B5A1888(&v273, &v266);
            v215 = swift_isUniquelyReferenced_nonNull_native();
            v272 = v209;
            v255 = v208;
            if ((v215 & 1) == 0)
            {
              sub_24B5949B8(0, *(v209 + 16) + 1, 1);
              v209 = v272;
            }

            v217 = *(v209 + 16);
            v216 = *(v209 + 24);
            if (v217 >= v216 >> 1)
            {
              sub_24B5949B8((v216 > 1), v217 + 1, 1);
              v209 = v272;
            }

            *(v209 + 16) = v217 + 1;
            v218 = (v209 + (v217 << 6));
            v219 = v273;
            v220 = v274;
            v221 = v276;
            v218[4] = v275;
            v218[5] = v221;
            v218[2] = v219;
            v218[3] = v220;
            v208 = v255;
            if ((&v165[-1].Description + 7) != v211)
            {
              goto LABEL_150;
            }

            goto LABEL_162;
          }

          v210 += 64;
          ++v211;
          if (v165 == v207)
          {
            goto LABEL_162;
          }
        }

        goto LABEL_189;
      }

      v209 = MEMORY[0x277D84F90];
LABEL_162:

      *&v273 = v209;

      sub_24B59682C(&v273, sub_24B59C75C, &type metadata for Theme, sub_24B5979A0, sub_24B596D64);

      v222 = v273;
      *&v273 = v206;
      sub_24B59B89C(v222);
      v223 = v273;
      v224 = v239;
      v225 = v249;
      v226 = v250;
      v227 = v241;
      v228 = v240;
      if (v260)
      {
      }

      else
      {
        v258 = 0;
      }

      if (v261)
      {
      }

      else
      {
        v228 = 0;
      }

      v229 = sub_24B59FFA4(v223, v258, v228);

      if (*(v229 + 16))
      {
        v230 = v263;
        v231 = v265;
        *&v273 = v263;
        *(&v273 + 1) = v265;
        *&v274 = v264;
        *(&v274 + 1) = v259;
        *&v275 = v226;
        *(&v275 + 1) = v225;
        *&v276 = v224;
        v257(6, &v273);
        sub_24B5A17AC(v230, v231);
      }

      else
      {
        sub_24B5A17AC(v263, v265);
        v232 = sub_24B5FEDEC();
        (*(*(v232 - 8) + 56))(v227, 1, 1, v232);
      }

      v181 = v262;
      *v262 = 0x656D656874;
      v181[1] = 0xE500000000000000;
      v182 = type metadata accessor for FilterSectionDescriptor();
      sub_24B5A1810(v227, v181 + *(v182 + 20));
      v194 = v181 + *(v182 + 24);
      *v194 = v229;
      v195 = 6;
      goto LABEL_183;
    }

    v119 = 0;
    v120 = (v273 + 96);
    v121 = MEMORY[0x277D84F90];
    v36 = &type metadata for Theme;
    while (1)
    {
      if (v119 >= *(v117 + 16))
      {
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
        goto LABEL_191;
      }

      v122 = *v120;
      v123 = *(*v120 + 16);
      v124 = *(v121 + 2);
      v125 = v124 + v123;
      if (__OFADD__(v124, v123))
      {
        goto LABEL_187;
      }

      v126 = *v120;

      v127 = swift_isUniquelyReferenced_nonNull_native();
      if (v127 && v125 <= *(v121 + 3) >> 1)
      {
        if (*(v122 + 16))
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (v124 <= v125)
        {
          v128 = v124 + v123;
        }

        else
        {
          v128 = v124;
        }

        v121 = sub_24B596270(v127, v128, 1, v121);
        if (*(v122 + 16))
        {
LABEL_65:
          if ((*(v121 + 3) >> 1) - *(v121 + 2) < v123)
          {
            goto LABEL_192;
          }

          swift_arrayInitWithCopy();

          if (v123)
          {
            v129 = *(v121 + 2);
            v96 = __OFADD__(v129, v123);
            v130 = v129 + v123;
            if (v96)
            {
              goto LABEL_193;
            }

            *(v121 + 2) = v130;
          }

          goto LABEL_54;
        }
      }

      if (v123)
      {
        goto LABEL_188;
      }

LABEL_54:
      ++v119;
      v120 += 9;
      if (v118 == v119)
      {
        goto LABEL_99;
      }
    }
  }

  v259 = v269;
  if (v46 == 4)
  {
    v62 = v247;
    v63 = *(v247 + 16);
    v64 = v270;
    if (v63)
    {
      v249 = *(&v270 + 1);
      v250 = v270;
      v65 = sub_24B594728(v63, 0, &qword_27F018CA0, &qword_24B601128);
      v36 = sub_24B59C540(&v273, (v65 + 4), v63, v62);

      sub_24B5A1880();
      if (v36 != v63)
      {
        goto LABEL_200;
      }

      v66 = v47;
      v67 = v249;
      v64 = v250;
    }

    else
    {
      v67 = *(&v270 + 1);
      v66 = v271;
      v65 = MEMORY[0x277D84F90];
    }

    v156 = v261;
    v157 = v251;
    *&v273 = v65;
    sub_24B596790(&v273, sub_24B59C7C4, &type metadata for MusicGenre, sub_24B5997A8, sub_24B597050);
    v158 = v245;
    v159 = v273;
    if (v260)
    {
      v160 = v258;

      if (v156)
      {
LABEL_94:

LABEL_142:
        v202 = sub_24B59E4C8(v159, v160, v157, sub_24B594898, 4);

        if (*(v202 + 16))
        {
          v203 = v263;
          v204 = v265;
          *&v273 = v263;
          *(&v273 + 1) = v265;
          *&v274 = v264;
          *(&v274 + 1) = v259;
          *&v275 = v64;
          *(&v275 + 1) = v67;
          *&v276 = v66;
          v257(4, &v273);
          sub_24B5A17AC(v203, v204);
        }

        else
        {
          sub_24B5A17AC(v263, v265);
          v205 = sub_24B5FEDEC();
          (*(*(v205 - 8) + 56))(v158, 1, 1, v205);
        }

        v181 = v262;
        *v262 = 0x6E6547636973756DLL;
        v181[1] = 0xEA00000000006572;
        v182 = type metadata accessor for FilterSectionDescriptor();
        sub_24B5A1810(v158, v181 + *(v182 + 20));
        v194 = v181 + *(v182 + 24);
        *v194 = v202;
        v195 = 4;
        goto LABEL_183;
      }
    }

    else
    {
      v160 = 0;
      if (v156)
      {
        goto LABEL_94;
      }
    }

    v157 = 0;
    goto LABEL_142;
  }

  v83 = v270;
  v239 = v271;
  if (!v267)
  {
    v161 = v243;
    v162 = *(v243 + 16);
    if (v162)
    {
      v163 = *(&v270 + 1);
      v250 = v270;
      v164 = sub_24B594608(v162, 0, &qword_27F018CA8, &qword_24B601130);
      v36 = sub_24B59C09C(&v273, v164 + 32, v162, v161, sub_24B5A15F8);

      sub_24B5A1880();
      if (v36 != v162)
      {
        goto LABEL_201;
      }

      v111 = v163;
      v83 = v250;
    }

    else
    {
      v111 = *(&v270 + 1);
      v164 = MEMORY[0x277D84F90];
    }

    v113 = v261;
    v115 = v251;
    *&v273 = v164;
    sub_24B596790(&v273, sub_24B59C784, &type metadata for SkillLevel, sub_24B598B28, sub_24B596E40);
    v116 = v242;
    v112 = v273;
    v114 = v260;
LABEL_174:
    v233 = v258;
    if (v114)
    {

      if (v113)
      {
LABEL_176:

LABEL_179:
        v234 = sub_24B5A0298(v112, v233, v115, sub_24B594858, sub_24B5A15F8, 5);

        if (*(v234 + 16))
        {
          v235 = v263;
          v236 = v265;
          v266 = v263;
          v267 = v265;
          v268 = v264;
          v269 = v259;
          *&v270 = v83;
          *(&v270 + 1) = v111;
          v271 = v239;
          v257(5, &v266);
          sub_24B5A17AC(v235, v236);
        }

        else
        {
          sub_24B5A17AC(v263, v265);
          v237 = sub_24B5FEDEC();
          (*(*(v237 - 8) + 56))(v116, 1, 1, v237);
        }

        v181 = v262;
        *v262 = 0x76654C6C6C696B73;
        v181[1] = 0xEA00000000006C65;
        v182 = type metadata accessor for FilterSectionDescriptor();
        sub_24B5A1810(v116, v181 + *(v182 + 20));
        v194 = v181 + *(v182 + 24);
        *v194 = v234;
        v195 = 5;
        goto LABEL_183;
      }
    }

    else
    {
      v233 = 0;
      if (v113)
      {
        goto LABEL_176;
      }
    }

    v115 = 0;
    goto LABEL_179;
  }

  *&v273 = v263;
  *(&v273 + 1) = v267;
  *&v274 = v264;
  *(&v274 + 1) = v269;
  v275 = v270;
  *&v276 = v271;
  v249 = *(&v270 + 1);
  v250 = v270;
  sub_24B5A18E4(v263, v267);

  v84 = sub_24B5EA5E8(MEMORY[0x277D84F90]);
  v85 = *(v44 + 16);
  if (!v85)
  {
LABEL_49:

    v105 = v263;
    v106 = v250;
    v107 = v249;
    sub_24B5A18E4(v263, v44);
    v108 = v44;
    v109 = sub_24B59E804(v243, &v273);
    sub_24B5A17AC(v105, v108);
    v110 = v106;
    v111 = v107;
    sub_24B5A17AC(v105, v108);
    v266 = v109;

    sub_24B59FF00(&v266, v84);

    swift_bridgeObjectRelease_n();
    v112 = v266;
    v113 = v261;
    v114 = v260;
    v115 = v251;
    v116 = v242;
    v83 = v110;
    goto LABEL_174;
  }

  v86 = 0;
  v87 = (v44 + 40);
  while (1)
  {
    if (v86 >= *(v44 + 16))
    {
      goto LABEL_190;
    }

    v90 = *(v87 - 1);
    v36 = *v87;
    swift_bridgeObjectRetain_n();

    v91 = swift_isUniquelyReferenced_nonNull_native();
    v266 = v84;
    v92 = sub_24B5EA2D0(v90, v36);
    v94 = *(v84 + 16);
    v95 = (v93 & 1) == 0;
    v96 = __OFADD__(v94, v95);
    v97 = v94 + v95;
    if (v96)
    {
      break;
    }

    v98 = v93;
    if (*(v84 + 24) < v97)
    {
      sub_24B59B990(v97, v91);
      v92 = sub_24B5EA2D0(v90, v36);
      if ((v98 & 1) != (v99 & 1))
      {
        goto LABEL_203;
      }

LABEL_44:
      if (v98)
      {
        goto LABEL_36;
      }

      goto LABEL_45;
    }

    if (v91)
    {
      goto LABEL_44;
    }

    v104 = v92;
    sub_24B59BC30();
    v92 = v104;
    if (v98)
    {
LABEL_36:
      v88 = v92;

      v89 = v266;
      *(*(v266 + 7) + 8 * v88) = v86;

      v84 = v89;
      goto LABEL_37;
    }

LABEL_45:
    v100 = v266;
    *&v266[8 * (v92 >> 6) + 64] |= 1 << v92;
    v101 = (*(v100 + 6) + 16 * v92);
    *v101 = v90;
    v101[1] = v36;
    *(*(v100 + 7) + 8 * v92) = v86;

    v102 = *(v100 + 2);
    v96 = __OFADD__(v102, 1);
    v103 = v102 + 1;
    if (v96)
    {
      goto LABEL_194;
    }

    *(v100 + 2) = v103;
    v84 = v100;
LABEL_37:
    ++v86;
    v87 += 2;
    v44 = v265;
    if (v85 == v86)
    {
      goto LABEL_49;
    }
  }

LABEL_191:
  __break(1u);
LABEL_192:
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
  MEMORY[0x24C244180](v36);

  __break(1u);
LABEL_203:
  sub_24B5FFEEC();
  __break(1u);

  MEMORY[0x24C244180](v36);

  __break(1u);
  return result;
}

char *sub_24B5920E8(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 72);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *(v6 - 2);
    v9 = *(v6 - 1);
    v10 = *(v6 - 4);
    v11 = *(v6 - 3);
    v12 = *v6;
    v29 = *(v6 - 5);
    v30 = v10;
    v31 = v11;
    v32 = v8;
    v33 = v9;
    v34 = v12;
    sub_24B57BA1C(v29, v10, v11, v8, v9, v12);
    a1(&v25, &v29);
    if (v3)
    {
      break;
    }

    sub_24B57BA04(v29, v30, v31, v32, v33, v34);
    if (*(&v28 + 1))
    {
      v21 = v25;
      v22 = v26;
      v23 = v27;
      v24 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_24B5959CC(0, *(v7 + 2) + 1, 1, v7);
      }

      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      if (v14 >= v13 >> 1)
      {
        v7 = sub_24B5959CC((v13 > 1), v14 + 1, 1, v7);
      }

      v19 = v23;
      v20 = v24;
      v15 = v21;
      v18 = v22;
      *(v7 + 2) = v14 + 1;
      v16 = &v7[64 * v14];
      *(v16 + 4) = v19;
      *(v16 + 5) = v20;
      *(v16 + 2) = v15;
      *(v16 + 3) = v18;
    }

    else
    {
      v21 = v25;
      v22 = v26;
      v23 = v27;
      v24 = v28;
      sub_24B58090C(&v21, &qword_27F018C60, &qword_24B6010E8);
    }

    v6 += 48;
    if (!--v4)
    {
      return v7;
    }
  }

  sub_24B57BA04(v29, v30, v31, v32, v33, v34);

  return v7;
}

uint64_t sub_24B5922BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 89) = a5;
  *(v5 + 24) = a2;
  *(v5 + 32) = a4;
  *(v5 + 88) = a3;
  *(v5 + 16) = a1;
  v6 = type metadata accessor for FilterAction();
  *(v5 + 40) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  sub_24B5FFBEC();
  *(v5 + 56) = sub_24B5FFBDC();
  v9 = sub_24B5FFBCC();
  *(v5 + 64) = v9;
  *(v5 + 72) = v8;

  return MEMORY[0x2822009F8](sub_24B592390, v9, v8);
}

uint64_t sub_24B592390()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 89);
  v4 = *(v0 + 88);
  v5 = *(v0 + 32);
  *v1 = *(v0 + 24);
  *(v1 + 8) = v4 & 1;
  *(v1 + 16) = v5;
  *(v1 + 24) = v3;
  swift_storeEnumTagMultiPayload();
  v6 = *(MEMORY[0x277D043C8] + 4);

  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BC8, &unk_24B601050);
  *v7 = v0;
  v7[1] = sub_24B59248C;
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);

  return MEMORY[0x282159B08](v9, v8);
}

uint64_t sub_24B59248C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 48);
  v7 = *v0;

  sub_24B5A149C(v3, type metadata accessor for FilterAction);
  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_24B5A19A8, v5, v4);
}

uint64_t sub_24B5925E4(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_24B5FFBEC();
  v2[3] = sub_24B5FFBDC();
  v4 = *(a2 + 152);
  v8 = (*(a2 + 144) + **(a2 + 144));
  v5 = *(*(a2 + 144) + 4);
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_24B5926EC;

  return v8();
}

uint64_t sub_24B5926EC()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_24B5FFBCC();
  if (v2)
  {
    v8 = sub_24B5A19B4;
  }

  else
  {
    v8 = sub_24B5A19B8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24B592848(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v3 + 136) = a1;
  v6 = type metadata accessor for FilterAction();
  *(v3 + 144) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = sub_24B5FFBEC();
  v8 = sub_24B5FFBDC();
  *(v3 + 113) = *(a3 + 25);
  v9 = *a3;
  *(v3 + 104) = a3[1];
  *(v3 + 168) = v8;
  v10 = *(a2 + 128);
  v11 = *(a2 + 136);
  *(v3 + 88) = v9;
  v15 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 176) = v13;
  *v13 = v3;
  v13[1] = sub_24B5929AC;

  return v15(v3 + 16, v3 + 88);
}

uint64_t sub_24B5929AC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 176);
  v5 = *v1;
  v3[23] = v0;

  v6 = v3[21];
  v7 = v3[20];
  v8 = sub_24B5FFBCC();
  if (v2)
  {
    v10 = sub_24B592DB0;
  }

  else
  {
    v3[24] = v8;
    v3[25] = v9;
    v10 = sub_24B592B10;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_24B592B10()
{
  v1 = *(v0 + 144);
  memmove(*(v0 + 152), (v0 + 16), 0x48uLL);
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x277D043C8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BC8, &unk_24B601050);
  *v3 = v0;
  v3[1] = sub_24B592BE8;
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);

  return MEMORY[0x282159B08](v5, v4);
}

uint64_t sub_24B592BE8()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 152);
  v7 = *v0;

  sub_24B5A149C(v3, type metadata accessor for FilterAction);
  v4 = *(v1 + 200);
  v5 = *(v1 + 192);

  return MEMORY[0x2822009F8](sub_24B592D40, v5, v4);
}

uint64_t sub_24B592D40()
{
  v1 = v0[21];
  v2 = v0[19];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B592DB0()
{
  v1 = v0[21];
  v2 = v0[19];

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_24B592E20(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B592EBC;

  return sub_24B592848(a1, v1 + 16, (v1 + 200));
}

uint64_t sub_24B592EBC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24B592FE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CE8, &qword_24B601168);
  *(v2 + 24) = v4;
  v5 = *(v4 - 8);
  *(v2 + 32) = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  *(v2 + 40) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CF0, &qword_24B601170);
  *(v2 + 48) = v8;
  v9 = *(v8 - 8);
  *(v2 + 56) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = sub_24B5FFBEC();
  *(v2 + 80) = sub_24B5FFBDC();
  v11 = *(a2 + 96);
  v12 = *(a2 + 104);
  *(v2 + 88) = *(a2 + 160);
  v16 = (v11 + *v11);
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v2 + 104) = v14;
  *v14 = v2;
  v14[1] = sub_24B5931D8;

  return v16(v7);
}

uint64_t sub_24B5931D8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v11 = *v1;
  v3[14] = v2;

  v8 = sub_24B5FFBCC();
  v3[15] = v8;
  v3[16] = v7;
  if (v2)
  {
    v9 = sub_24B5936C4;
  }

  else
  {
    v9 = sub_24B593338;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B593338()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_24B5FFC0C();
  (*(v3 + 8))(v2, v4);
  v5 = v0[9];
  v6 = sub_24B5FFBDC();
  v0[17] = v6;
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_24B593428;
  v9 = v0[8];
  v10 = v0[6];
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v6, v11, v10);
}

uint64_t sub_24B593428()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v7 = *v0;

  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_24B59356C, v5, v4);
}

uint64_t sub_24B59356C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 96);
    (*(v0 + 88))(*(v0 + 16));

    v2 = *(v0 + 72);
    v3 = sub_24B5FFBDC();
    *(v0 + 136) = v3;
    v4 = *(MEMORY[0x277D85798] + 4);
    v5 = swift_task_alloc();
    *(v0 + 144) = v5;
    *v5 = v0;
    v5[1] = sub_24B593428;
    v6 = *(v0 + 64);
    v7 = *(v0 + 48);
    v8 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 16, v3, v8, v7);
  }

  else
  {
    v9 = *(v0 + 80);
    v10 = *(v0 + 40);
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_24B5936C4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

int *FilterFeature.dispose(localState:sharedState:)(void *a1)
{
  result = type metadata accessor for FilterState();
  if (*(a1 + result[9]) == 1)
  {
    sub_24B58FDC8(v3);
    memcpy(__dst, a1, 0x111uLL);
    sub_24B58FECC(__dst);
    return memcpy(a1, v3, 0x111uLL);
  }

  return result;
}

double sub_24B5937B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a2 + 40);
  if (v14 <= 3)
  {
    if (*(a2 + 40) > 1u)
    {
      if (v14 == 2)
      {
        if (v13 == 2)
        {
          goto LABEL_28;
        }
      }

      else if (v13 == 3)
      {
        goto LABEL_28;
      }
    }

    else if (*(a2 + 40))
    {
      if (v13 == 1)
      {
        goto LABEL_28;
      }
    }

    else if (!*(a1 + 40))
    {
      goto LABEL_28;
    }
  }

  else if (*(a2 + 40) <= 5u)
  {
    if (v14 == 4)
    {
      if (v13 == 4)
      {
        goto LABEL_28;
      }
    }

    else if (v13 == 5)
    {
      goto LABEL_28;
    }
  }

  else if (v14 == 6)
  {
    if (v13 == 6)
    {
      goto LABEL_28;
    }
  }

  else if (v14 == 7)
  {
    if (v13 == 7)
    {
      goto LABEL_28;
    }
  }

  else if (v13 == 8)
  {
    goto LABEL_28;
  }

  v15 = a3[9];
  v41 = a3[8];
  v42 = v15;
  v43 = a3[10];
  v44 = *(a3 + 22);
  v16 = a3[5];
  v37 = a3[4];
  v38 = v16;
  v17 = a3[7];
  v39 = a3[6];
  v40 = v17;
  v18 = a3[1];
  v33 = *a3;
  v34 = v18;
  v19 = a3[3];
  v35 = a3[2];
  v36 = v19;
  v31[0] = v8;
  v31[1] = v9;
  v31[2] = v10;
  v31[3] = v11;
  v31[4] = v12;
  v32 = v13;
  v20 = *(a4 + 48);
  v29[2] = *(a4 + 32);
  v29[3] = v20;
  v30 = *(a4 + 64);
  v21 = *(a4 + 16);
  v29[0] = *a4;
  v29[1] = v21;
  v22 = *(a5 + 48);
  v27[2] = *(a5 + 32);
  v27[3] = v22;
  v28 = *(a5 + 64);
  v23 = *(a5 + 16);
  v27[0] = *a5;
  v27[1] = v23;
  v24 = sub_24B593988(v31, v29, v27, a6);
  if (v25)
  {
    *a7 = v8;
    *(a7 + 8) = v9;
    *(a7 + 16) = v10;
    *(a7 + 24) = v11;
    *(a7 + 32) = v12;
    *(a7 + 40) = v13;
    *(a7 + 48) = v24;
    *(a7 + 56) = v25;
    sub_24B57BA1C(v8, v9, v10, v11, v12, v13);
    return result;
  }

LABEL_28:
  result = 0.0;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  return result;
}

uint64_t sub_24B593988(int64_t a1, void *a2, uint64_t a3, int64_t a4)
{
  v126 = a3;
  v8 = sub_24B5FEE1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B5FFADC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_24B5FFABC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = *a1;
  v17 = *(a1 + 8);
  v19 = *(a1 + 40);
  if (v19 <= 3)
  {
    if (*(a1 + 40) <= 1u)
    {
      if (*(a1 + 40))
      {
        v76 = *(a1 + 24);
        sub_24B5FFAAC();
        sub_24B5FFA9C();
        v77 = round(v76 / 60.0);
        if ((*&v77 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v77 > -9.22337204e18)
          {
            if (v77 < 9.22337204e18)
            {
              a1 = a4;
              *&v128[0] = v77;
              sub_24B5FFA7C();
              sub_24B5FFA9C();
              sub_24B5FFACC();
              if (qword_27F0186F0 == -1)
              {
LABEL_90:
                v78 = qword_27F02AD70;
                (*(v9 + 16))(v12, a1, v8);
                v79 = v78;
                return sub_24B5FFAFC();
              }

LABEL_152:
              swift_once();
              goto LABEL_90;
            }

LABEL_151:
            __break(1u);
            goto LABEL_152;
          }

LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      v12 = 0;
      v29 = *a2;
      v30 = *a2;
      v31 = 1 << *(*a2 + 32);
      v32 = -1;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      v33 = *(v30 + 56);
      v8 = v30 + 56;
      v34 = v32 & v33;
      v35 = (v31 + 63) >> 6;
      v9 = *(a1 + 8);
      while (v34)
      {
LABEL_29:
        v37 = (*(v29 + 48) + 56 * (__clz(__rbit64(v34)) | (v12 << 6)));
        a1 = v37[5];
        v38 = v37[6];
        if (v37[3] != v18 || v9 != v37[4])
        {
          v34 &= v34 - 1;
          if ((sub_24B5FFECC() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_104;
      }

      while (1)
      {
        v36 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v36 >= v35)
        {
          return 0;
        }

        v34 = *(v8 + 8 * v36);
        ++v12;
        if (v34)
        {
          v12 = v36;
          goto LABEL_29;
        }
      }

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
      goto LABEL_149;
    }

    v9 = *(a1 + 8);
    v12 = 0;
    if (v19 == 2)
    {
      v40 = a2[3];
      v41 = 1 << *(v40 + 32);
      v42 = -1;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      v8 = v40 + 56;
      v43 = v42 & *(v40 + 56);
      v44 = (v41 + 63) >> 6;
      while (v43)
      {
LABEL_44:
        v46 = (*(v40 + 48) + 56 * (__clz(__rbit64(v43)) | (v12 << 6)));
        a1 = v46[5];
        v47 = v46[6];
        if (v46[3] != v18 || v9 != v46[4])
        {
          v43 &= v43 - 1;
          if ((sub_24B5FFECC() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_104;
      }

      while (1)
      {
        v45 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v45 >= v44)
        {
          return 0;
        }

        v43 = *(v8 + 8 * v45);
        ++v12;
        if (v43)
        {
          v12 = v45;
          goto LABEL_44;
        }
      }

LABEL_139:
      __break(1u);
    }

    else
    {
      v80 = a2[5];
      v81 = 1 << *(v80 + 32);
      v82 = -1;
      if (v81 < 64)
      {
        v82 = ~(-1 << v81);
      }

      v8 = v80 + 56;
      v83 = v82 & *(v80 + 56);
      v84 = (v81 + 63) >> 6;
      while (v83)
      {
LABEL_99:
        v86 = (*(v80 + 48) + 72 * (__clz(__rbit64(v83)) | (v12 << 6)));
        a1 = v86[6];
        v87 = v86[7];
        if (v86[4] != v18 || v9 != v86[5])
        {
          v83 &= v83 - 1;
          if ((sub_24B5FFECC() & 1) == 0)
          {
            continue;
          }
        }

LABEL_104:

        return a1;
      }

      while (1)
      {
        v85 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v85 >= v84)
        {
          return 0;
        }

        v83 = *(v8 + 8 * v85);
        ++v12;
        if (v83)
        {
          v12 = v85;
          goto LABEL_99;
        }
      }
    }

    __break(1u);
    goto LABEL_141;
  }

  if (*(a1 + 40) > 5u)
  {
    v9 = *(a1 + 8);
    if (v19 == 6)
    {
      v59 = a2[1];
      v60 = v59 + 56;
      v61 = 1 << *(v59 + 32);
      v62 = -1;
      if (v61 < 64)
      {
        v62 = ~(-1 << v61);
      }

      v63 = v62 & *(v59 + 56);
      v64 = (v61 + 63) >> 6;
      v127 = v59;

      v65 = 0;
      v8 = MEMORY[0x277D84F90];
      v126 = v18;
      while (v63)
      {
LABEL_74:
        v67 = *(v127 + 48) + 72 * (__clz(__rbit64(v63)) | (v65 << 6));
        v12 = *(v67 + 64);
        v68 = *(v12 + 16);
        a1 = *(v8 + 16);
        v69 = a1 + v68;
        if (__OFADD__(a1, v68))
        {
          goto LABEL_145;
        }

        v70 = *(v67 + 64);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v69 > *(v8 + 24) >> 1)
        {
          if (a1 <= v69)
          {
            v72 = a1 + v68;
          }

          else
          {
            v72 = a1;
          }

          v8 = sub_24B596270(isUniquelyReferenced_nonNull_native, v72, 1, v8);
        }

        v18 = v126;
        v63 &= v63 - 1;
        if (*(v12 + 16))
        {
          if ((*(v8 + 24) >> 1) - *(v8 + 16) < v68)
          {
            goto LABEL_147;
          }

          swift_arrayInitWithCopy();

          if (v68)
          {
            v73 = *(v8 + 16);
            v74 = __OFADD__(v73, v68);
            v75 = v73 + v68;
            if (v74)
            {
              goto LABEL_148;
            }

            *(v8 + 16) = v75;
          }
        }

        else
        {

          if (v68)
          {
            goto LABEL_146;
          }
        }
      }

      while (1)
      {
        v66 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          __break(1u);
          goto LABEL_139;
        }

        if (v66 >= v64)
        {
          break;
        }

        v63 = *(v60 + 8 * v66);
        ++v65;
        if (v63)
        {
          v65 = v66;
          goto LABEL_74;
        }
      }

      v114 = (v8 + 80);
      v115 = *(v8 + 16) + 1;
      while (--v115)
      {
        v116 = *(v114 - 6);
        v117 = *(v114 - 4);
        a1 = *(v114 - 1);
        v118 = *v114;
        if (*(v114 - 3) != v18 || v9 != *(v114 - 2))
        {
          v114 += 8;
          if ((sub_24B5FFECC() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_131;
      }

LABEL_134:
    }

    else if (v19 == 7)
    {
      v12 = 0;
      v20 = a2[8];
      v21 = 1 << *(v20 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v8 = v20 + 56;
      v23 = v22 & *(v20 + 56);
      v24 = (v21 + 63) >> 6;
      while (v23)
      {
LABEL_13:
        v26 = (*(v20 + 48) + 72 * (__clz(__rbit64(v23)) | (v12 << 6)));
        a1 = v26[7];
        v27 = v26[8];
        if (v26[3] != v18 || v9 != v26[4])
        {
          v23 &= v23 - 1;
          if ((sub_24B5FFECC() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_104;
      }

      while (1)
      {
        v25 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v25 >= v24)
        {
          return 0;
        }

        v23 = *(v8 + 8 * v25);
        ++v12;
        if (v23)
        {
          v12 = v25;
          goto LABEL_13;
        }
      }

LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    return 0;
  }

  v127 = *(a1 + 8);
  if (v19 == 4)
  {
    v12 = 0;
    v49 = a2[6];
    v50 = 1 << *(v49 + 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v8 = v49 + 56;
    v52 = v51 & *(v49 + 56);
    v53 = (v50 + 63) >> 6;
    while (v52)
    {
LABEL_59:
      v55 = (*(v49 + 48) + 56 * (__clz(__rbit64(v52)) | (v12 << 6)));
      a1 = v55[5];
      v56 = v55[6];
      if (v55[3] != v18 || v17 != v55[4])
      {
        v52 &= v52 - 1;
        v58 = sub_24B5FFECC();
        v17 = v127;
        if ((v58 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_104;
    }

    while (1)
    {
      v54 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_142;
      }

      if (v54 >= v53)
      {
        return 0;
      }

      v52 = *(v8 + 8 * v54);
      ++v12;
      if (v52)
      {
        v12 = v54;
        goto LABEL_59;
      }
    }
  }

  v89 = 0;
  v123 = a2[4];
  v90 = *(v4 + 88);
  v122 = *(v4 + 80);
  v121 = v90;
  v91 = a2[7];
  v125 = v91;
  v92 = 1 << *(v91 + 32);
  v93 = -1;
  if (v92 < 64)
  {
    v93 = ~(-1 << v92);
  }

  v95 = *(v91 + 56);
  v94 = v91 + 56;
  v12 = v93 & v95;
  v8 = (v92 + 63) >> 6;
  do
  {
    if (!v12)
    {
      while (1)
      {
        v96 = v89 + 1;
        if (__OFADD__(v89, 1))
        {
          goto LABEL_144;
        }

        if (v96 >= v8)
        {
          return 0;
        }

        v12 = *(v94 + 8 * v96);
        ++v89;
        if (v12)
        {
          v89 = v96;
          break;
        }
      }
    }

    v97 = (*(v125 + 48) + 72 * (__clz(__rbit64(v12)) | (v89 << 6)));
    v98 = *v97;
    a1 = v97[2];
    v99 = v97[3];
    v100 = v97[4];
    v124 = v97[5];
    v9 = v97[6];
    v101 = v97[8];
    if (v99 == v18 && v17 == v100)
    {
      break;
    }

    v12 &= v12 - 1;
    v103 = sub_24B5FFECC();
    v17 = v127;
  }

  while ((v103 & 1) == 0);

  if (!v9)
  {

    goto LABEL_134;
  }

  v104 = *(v126 + 48);
  v128[2] = *(v126 + 32);
  v128[3] = v104;
  v129 = *(v126 + 64);
  v105 = *(v126 + 16);
  v128[0] = *v126;
  v128[1] = v105;
  v122(&v130, 5, v123, v128);
  v106 = v131;
  if (!v131)
  {
    goto LABEL_134;
  }

  v107 = v130;
  v108 = v132;

  sub_24B5A17AC(v107, v106);
  if (!*(v108 + 16))
  {

    goto LABEL_134;
  }

  v109 = sub_24B5EA2D0(v124, v9);
  v111 = v110;

  if ((v111 & 1) == 0)
  {
    goto LABEL_134;
  }

  v112 = (*(v108 + 56) + 16 * v109);
  a1 = *v112;
  v113 = v112[1];

LABEL_131:

  return a1;
}

int *sub_24B59444C(uint64_t a1, void *a2)
{
  result = type metadata accessor for FilterState();
  if (*(a2 + result[9]) == 1)
  {
    sub_24B58FDC8(v4);
    memcpy(__dst, a2, 0x111uLL);
    sub_24B58FECC(__dst);
    return memcpy(a2, v4, 0x111uLL);
  }

  return result;
}

void *sub_24B5944BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_24B594578(*(a1 + 16), 0);
  v4 = sub_24B59BD98(&v6, (v3 + 4), v1, a1);

  sub_24B5A1880();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_24B594578(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B58, &qword_24B600DF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *sub_24B594608(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0xE38E38E38E38E39) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 2) + (v9 >> 63));
  return result;
}

void *sub_24B594698(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C88, &qword_24B601110);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_24B594728(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x4924924924924925) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 4) + (v9 >> 63));
  return result;
}

char *sub_24B5947B8(char *a1, int64_t a2, char a3)
{
  result = sub_24B594B2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24B5947D8(size_t a1, int64_t a2, char a3)
{
  result = sub_24B594C20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24B5947F8(void *a1, int64_t a2, char a3)
{
  result = sub_24B594F44(a1, a2, a3, *v3, &qword_27F018C50, &qword_24B6010D8, &qword_27F018BD8, &unk_24B601060);
  *v3 = result;
  return result;
}

void *sub_24B594838(void *a1, int64_t a2, char a3)
{
  result = sub_24B594DF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24B594858(void *a1, int64_t a2, char a3)
{
  result = sub_24B594F44(a1, a2, a3, *v3, &qword_27F018C40, &qword_24B6010C8, &qword_27F018BE8, &unk_24B601070);
  *v3 = result;
  return result;
}

void *sub_24B594898(void *a1, int64_t a2, char a3)
{
  result = sub_24B5951CC(a1, a2, a3, *v3, &qword_27F018C38, &qword_24B6010C0, &qword_27F018BF0, &qword_24B603600);
  *v3 = result;
  return result;
}

void *sub_24B5948D8(void *a1, int64_t a2, char a3)
{
  result = sub_24B594F44(a1, a2, a3, *v3, &qword_27F018C30, &qword_24B6010B8, &qword_27F018BF8, &unk_24B601080);
  *v3 = result;
  return result;
}

void *sub_24B594918(void *a1, int64_t a2, char a3)
{
  result = sub_24B5951CC(a1, a2, a3, *v3, &qword_27F018C28, &qword_24B6010B0, &qword_27F018C00, &qword_24B603620);
  *v3 = result;
  return result;
}

void *sub_24B594958(void *a1, int64_t a2, char a3)
{
  result = sub_24B595088(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24B594978(void *a1, int64_t a2, char a3)
{
  result = sub_24B5951CC(a1, a2, a3, *v3, &qword_27F018C10, &qword_24B601098, &qword_27F018C08, &qword_24B601090);
  *v3 = result;
  return result;
}

char *sub_24B5949B8(char *a1, int64_t a2, char a3)
{
  result = sub_24B595300(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24B5949D8(char *a1, int64_t a2, char a3)
{
  result = sub_24B595534(a1, a2, a3, *v3, &qword_27F018CA8, &qword_24B601130);
  *v3 = result;
  return result;
}

char *sub_24B594A10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B58, &qword_24B600DF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B594B2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CD0, &qword_24B601158);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_24B594C20(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C58, &qword_24B6010E0);
  v10 = *(type metadata accessor for FilterSectionDescriptor() - 8);
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
  v15 = *(type metadata accessor for FilterSectionDescriptor() - 8);
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

void *sub_24B594DF8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C48, &qword_24B6010D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BE0, &qword_24B602300);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24B594F44(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 80);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[10 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 80 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_24B595088(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C18, &unk_24B6010A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C20, &qword_24B603630);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24B5951CC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 + 31;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 6);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[8 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, v14 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_24B595300(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C70, &qword_24B6010F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B59540C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CB8, &qword_24B601140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B595534(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 72);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[72 * v10])
    {
      memmove(v14, v15, 72 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_24B59565C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C98, &qword_24B601120);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B595784(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C88, &qword_24B601110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B5958A4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 56);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[56 * v10])
    {
      memmove(v14, v15, 56 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_24B5959CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C68, &qword_24B6010F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B595AD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C78, &qword_24B601100);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_24B595BDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B58, &qword_24B600DF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_24B595CF8(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C58, &qword_24B6010E0);
  v10 = *(type metadata accessor for FilterSectionDescriptor() - 8);
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
  v15 = *(type metadata accessor for FilterSectionDescriptor() - 8);
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

size_t sub_24B595ED0(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CF8, &qword_24B601178);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B18, &qword_24B600D88) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B18, &qword_24B600D88) - 8);
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

uint64_t sub_24B5960C0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B5A19AC;

  return sub_24B592FE8(a1, v1 + 16);
}

uint64_t sub_24B596158(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B5A19AC;

  return sub_24B5922BC(a1, v4, v5, v6, v7);
}

char *sub_24B596270(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C70, &qword_24B6010F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B59637C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BC0, &qword_24B601048);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24B596488(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24B59C75C(v2);
  }

  v3 = *(v2 + 2);
  v28[0] = (v2 + 32);
  v28[1] = v3;
  result = sub_24B5FFEAC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 88;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 + 8) >= *v12)
          {
            break;
          }

          v13 = v12 - 56;
          v14 = *(v12 + 8);
          v15 = *(v12 + 24);
          v16 = *(v12 + 56);
          v26 = *(v12 + 40);
          v27 = v16;
          v24 = v14;
          v25 = v15;
          v17 = *(v12 - 40);
          *(v12 + 8) = *(v12 - 56);
          *(v12 + 24) = v17;
          v18 = *(v12 - 8);
          *(v12 + 40) = *(v12 - 24);
          *(v12 + 56) = v18;
          v19 = v27;
          v20 = v24;
          v21 = v25;
          *(v13 + 2) = v26;
          *(v13 + 3) = v19;
          *v13 = v20;
          *(v13 + 1) = v21;
          v12 -= 64;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 64;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_24B5FFB9C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v24 = v7 + 32;
    *(&v24 + 1) = v6;
    sub_24B597F80(&v24, v23, v28, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_24B596600(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24B59C770(v2);
  }

  v3 = *(v2 + 2);
  v29[0] = (v2 + 32);
  v29[1] = v3;
  result = sub_24B5FFEAC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 88;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 + 9) >= *v12)
          {
            break;
          }

          v13 = v12 - 56;
          v24 = *(v12 + 1);
          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          v16 = *(v12 + 4);
          v28 = *(v12 + 10);
          v26 = v15;
          v27 = v16;
          v25 = v14;
          *(v12 + 10) = *(v12 + 1);
          v17 = *(v12 - 8);
          *(v12 + 3) = *(v12 - 24);
          *(v12 + 4) = v17;
          v18 = *(v12 - 40);
          *(v12 + 1) = *(v12 - 56);
          *(v12 + 2) = v18;
          *v13 = v24;
          v19 = v28;
          v20 = v27;
          v21 = v25;
          *(v13 + 2) = v26;
          *(v13 + 3) = v20;
          *(v12 + 1) = v19;
          *(v13 + 1) = v21;
          v12 -= 72;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 72;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_24B5FFB9C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v24 = v7 + 32;
    *(&v24 + 1) = v6;
    sub_24B598524(&v24, v23, v29, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_24B596790(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_24B596B40(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_24B59682C(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_24B596A30(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_24B5968C8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24B59C858(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_24B5FFEAC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[40 * i + 56];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 2);
          v15 = *(v13 + 3);
          v16 = *(v13 + 4);
          v17 = *(v13 + 6);
          v18 = *(v13 - 8);
          *(v13 + 1) = *(v13 - 24);
          *(v13 + 2) = v18;
          *(v13 + 6) = *(v13 + 1);
          *(v13 - 3) = v14;
          *(v13 - 2) = v15;
          *(v13 - 1) = v16;
          *v13 = v11;
          *(v13 + 1) = v17;
          v13 -= 40;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_24B5FFB9C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_24B599DD4(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_24B596A30(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_24B5FFEAC();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        v10 = sub_24B5FFB9C();
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

uint64_t sub_24B596B40(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_24B5FFEAC();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        v10 = sub_24B5FFB9C();
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

uint64_t sub_24B596C50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 48 * a3 - 48;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *(v8 + 88);
      v10 = *(v8 + 40);
      if (v10 > 4)
      {
        if (*(v8 + 40) > 6u)
        {
          if (v10 == 7)
          {
            if (v9 >= 7)
            {
              goto LABEL_4;
            }
          }

          else if (v9 >= 8)
          {
            goto LABEL_4;
          }
        }

        else if (v10 == 5)
        {
          if (v9 >= 5)
          {
            goto LABEL_4;
          }
        }

        else if (v9 >= 6)
        {
          goto LABEL_4;
        }
      }

      else if (*(v8 + 40) > 2u)
      {
        if (v10 == 3)
        {
          if (v9 >= 3)
          {
            goto LABEL_4;
          }
        }

        else if (v9 >= 4)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= 2)
      {
        if (v9 >= 2)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v10)
      {
        goto LABEL_4;
      }

      if (!v4)
      {
        break;
      }

      v12 = *(v8 + 48);
      v11 = *(v8 + 64);
      v13 = *(v8 + 16);
      v14 = *(v8 + 32);
      *(v8 + 48) = *v8;
      *(v8 + 64) = v13;
      v15 = *(v8 + 80);
      *(v8 + 80) = v14;
      *v8 = v12;
      *(v8 + 16) = v11;
      *(v8 + 32) = v15;
      *(v8 + 40) = v9;
      v8 -= 48;
      if (__CFADD__(v7++, 1))
      {
LABEL_4:
        ++a3;
        v5 += 48;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B596D64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = (*a4 + (a3 << 6));
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *(v10 + 5);
      v11 = result == *(v10 - 3) && *(v10 + 6) == *(v10 - 2);
      if (v11 || (result = sub_24B5FFECC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 4;
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

      v12 = v10 - 4;
      v14 = v10[2];
      v13 = v10[3];
      v16 = *v10;
      v15 = v10[1];
      v17 = *(v10 - 3);
      *v10 = *(v10 - 4);
      v10[1] = v17;
      v18 = *(v10 - 1);
      v10[2] = *(v10 - 2);
      v10[3] = v18;
      *v12 = v16;
      v12[1] = v15;
      v10 -= 4;
      v12[2] = v14;
      v12[3] = v13;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B596E40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 72 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *(v10 + 56);
      v11 = result == *(v10 - 16) && *(v10 + 64) == *(v10 - 8);
      if (v11 || (result = sub_24B5FFECC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 72;
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

      v12 = v10 - 72;
      v18 = *(v10 + 32);
      v19 = *(v10 + 48);
      v20 = *(v10 + 64);
      v16 = *v10;
      v17 = *(v10 + 16);
      v13 = *(v10 - 24);
      *(v10 + 32) = *(v10 - 40);
      *(v10 + 48) = v13;
      *(v10 + 64) = *(v10 - 8);
      v14 = *(v10 - 56);
      *v10 = *(v10 - 72);
      *(v10 + 16) = v14;
      *(v12 + 64) = v20;
      *(v12 + 32) = v18;
      *(v12 + 48) = v19;
      v10 -= 72;
      *v12 = v16;
      *(v12 + 16) = v17;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B596F48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 72 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *(v10 + 48);
      v11 = result == *(v10 - 24) && *(v10 + 56) == *(v10 - 16);
      if (v11 || (result = sub_24B5FFECC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 72;
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

      v12 = v10 - 72;
      v18 = *(v10 + 32);
      v19 = *(v10 + 48);
      v20 = *(v10 + 64);
      v16 = *v10;
      v17 = *(v10 + 16);
      v13 = *(v10 - 24);
      *(v10 + 32) = *(v10 - 40);
      *(v10 + 48) = v13;
      *(v10 + 64) = *(v10 - 8);
      v14 = *(v10 - 56);
      *v10 = *(v10 - 72);
      *(v10 + 16) = v14;
      *(v12 + 64) = v20;
      *(v12 + 32) = v18;
      *(v12 + 48) = v19;
      v10 -= 72;
      *v12 = v16;
      *(v12 + 16) = v17;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B597050(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 56 * a3 - 56;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 56 * v4;
    result = *(v9 + 40);
    v10 = *(v9 + 48);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 + 40) && v10 == *(v12 + 48);
      if (v13 || (result = sub_24B5FFECC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 56;
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

      v14 = *(v12 + 64);
      v15 = *(v12 + 16);
      v17 = *(v12 + 48);
      v16 = *(v12 + 56);
      *(v12 + 56) = *v12;
      v18 = *(v12 + 80);
      v19 = *(v12 + 88);
      result = *(v12 + 96);
      v10 = *(v12 + 104);
      *(v12 + 72) = v15;
      *(v12 + 88) = *(v12 + 32);
      *(v12 + 104) = v17;
      *v12 = v16;
      *(v12 + 8) = v14;
      *(v12 + 24) = v18;
      *(v12 + 32) = v19;
      *(v12 + 40) = result;
      *(v12 + 48) = v10;
      v12 -= 56;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B59714C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v118 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_128:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_168;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_130;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v119 = v8++;
    if (v8 >= v7)
    {
      goto LABEL_39;
    }

    v10 = *v6;
    v11 = *v6 + 48 * v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    v17 = *(v11 + 40);
    v18 = *v6 + 48 * v119;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v5 = *(v18 + 24);
    v116 = v12;
    v117 = *(v18 + 32);
    v22 = *(v18 + 40);
    v114 = v14;
    v115 = v13;
    v112 = v16;
    v113 = v15;
    if (v4)
    {
      sub_24B57BA1C(v12, v13, v14, v15, v16, v17);
      sub_24B57BA1C(v19, v20, v21, v5, v117, v22);
      sub_24B57BA04(v19, v20, v21, v5, v117, v22);
      sub_24B57BA04(v116, v115, v114, v113, v112, v17);
    }

    v109 = v10;
    sub_24B57BA1C(v12, v13, v14, v15, v16, v17);
    sub_24B57BA1C(v19, v20, v21, v5, v117, v22);
    sub_24B57BA04(v19, v20, v21, v5, v117, v22);
    v23 = v17;
    result = sub_24B57BA04(v116, v115, v114, v113, v112, v17);
    v8 = v119 + 2;
    if (v119 + 2 < v7)
    {
      v6 = a3;
      v24 = v109 + 48 * v119 + 88;
      v25 = v23;
      while (1)
      {
        v29 = v24;
        v31 = *(v24 + 48);
        v24 += 48;
        v30 = v31;
        v32 = *v29;
        if (v32 > 4)
        {
          if (v32 > 6)
          {
            if (v32 == 7)
            {
              v26 = v23 < v22;
              v27 = v30 > 6;
            }

            else
            {
              v26 = v23 < v22;
              v27 = v30 > 7;
            }
          }

          else if (v32 == 5)
          {
            v26 = v23 < v22;
            v27 = v30 > 4;
          }

          else
          {
            v26 = v23 < v22;
            v27 = v30 > 5;
          }

          goto LABEL_9;
        }

        if (v32 > 2)
        {
          break;
        }

        if (v32 >= 2)
        {
          v26 = v23 < v22;
          v27 = v30 > 1;
LABEL_9:
          v28 = v27;
          if (((v26 ^ v28) & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_13;
        }

        if (v23 < v22 == v30 >= v32)
        {
          goto LABEL_30;
        }

LABEL_13:
        if (v7 == ++v8)
        {
          v8 = v7;
          if (v23 >= v22)
          {
            goto LABEL_39;
          }

LABEL_31:
          if (v8 >= v119)
          {
            if (v119 < v8)
            {
              v33 = 48 * v8 - 48;
              v34 = v119;
              v35 = 48 * v119;
              v36 = v8;
              do
              {
                if (v34 != --v36)
                {
                  v37 = *v6;
                  if (!*v6)
                  {
                    goto LABEL_165;
                  }

                  v38 = (v37 + v35);
                  v39 = *(v37 + v35 + 32);
                  v40 = (v37 + v33);
                  v41 = *(v38 + 40);
                  v42 = *v38;
                  v43 = v38[1];
                  v45 = v40[1];
                  v44 = v40[2];
                  *v38 = *v40;
                  v38[1] = v45;
                  v38[2] = v44;
                  *v40 = v42;
                  v40[1] = v43;
                  *(v40 + 4) = v39;
                  *(v40 + 40) = v41;
                }

                ++v34;
                v33 -= 48;
                v35 += 48;
              }

              while (v34 < v36);
            }

            goto LABEL_39;
          }

LABEL_161:
          __break(1u);
LABEL_162:
          result = sub_24B59B888(v9);
          v9 = result;
LABEL_130:
          v105 = *(v9 + 2);
          if (v105 >= 2)
          {
            while (*v6)
            {
              v106 = *&v9[16 * v105];
              v107 = *&v9[16 * v105 + 24];
              sub_24B59A3B4((*v6 + 48 * v106), (*v6 + 48 * *&v9[16 * v105 + 16]), (*v6 + 48 * v107), v5);
              if (v4)
              {
              }

              if (v107 < v106)
              {
                goto LABEL_155;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = sub_24B59B888(v9);
              }

              if (v105 - 2 >= *(v9 + 2))
              {
                goto LABEL_156;
              }

              v108 = &v9[16 * v105];
              *v108 = v106;
              *(v108 + 1) = v107;
              result = sub_24B59B7FC(v105 - 1);
              v105 = *(v9 + 2);
              if (v105 <= 1)
              {
              }
            }

            goto LABEL_166;
          }
        }
      }

      if (v32 == 3)
      {
        v26 = v23 < v22;
        v27 = v30 > 2;
      }

      else
      {
        v26 = v23 < v22;
        v27 = v30 > 3;
      }

      goto LABEL_9;
    }

    v6 = a3;
    v25 = v23;
LABEL_30:
    if (v25 < v22)
    {
      goto LABEL_31;
    }

LABEL_39:
    v46 = v6[1];
    if (v8 < v46)
    {
      if (__OFSUB__(v8, v119))
      {
        goto LABEL_158;
      }

      if (v8 - v119 < a4)
      {
        if (__OFADD__(v119, a4))
        {
          goto LABEL_159;
        }

        if (v119 + a4 < v46)
        {
          v46 = v119 + a4;
        }

        if (v46 < v119)
        {
LABEL_160:
          __break(1u);
          goto LABEL_161;
        }

        if (v8 != v46)
        {
          break;
        }
      }
    }

LABEL_77:
    if (v8 < v119)
    {
      goto LABEL_157;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24B595AD8(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v5 = *(v9 + 2);
    v60 = *(v9 + 3);
    v61 = v5 + 1;
    if (v5 >= v60 >> 1)
    {
      result = sub_24B595AD8((v60 > 1), v5 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v61;
    v62 = &v9[16 * v5];
    *(v62 + 4) = v119;
    *(v62 + 5) = v8;
    v63 = *v118;
    if (!*v118)
    {
      goto LABEL_167;
    }

    if (v5)
    {
      while (1)
      {
        v64 = v61 - 1;
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v65 = *(v9 + 4);
          v66 = *(v9 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_97:
          if (v68)
          {
            goto LABEL_146;
          }

          v81 = &v9[16 * v61];
          v83 = *v81;
          v82 = *(v81 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_149;
          }

          v87 = &v9[16 * v64 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_152;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_153;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v64 = v61 - 2;
            }

            goto LABEL_118;
          }

          goto LABEL_111;
        }

        v91 = &v9[16 * v61];
        v93 = *v91;
        v92 = *(v91 + 1);
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_111:
        if (v86)
        {
          goto LABEL_148;
        }

        v94 = &v9[16 * v64];
        v96 = *(v94 + 4);
        v95 = *(v94 + 5);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_151;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_118:
        v5 = v64 - 1;
        if (v64 - 1 >= v61)
        {
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
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        if (!*v6)
        {
          goto LABEL_164;
        }

        v102 = *&v9[16 * v5 + 32];
        v103 = *&v9[16 * v64 + 40];
        sub_24B59A3B4((*v6 + 48 * v102), (*v6 + 48 * *&v9[16 * v64 + 32]), (*v6 + 48 * v103), v63);
        if (v4)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24B59B888(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_143;
        }

        v104 = &v9[16 * v5];
        *(v104 + 4) = v102;
        *(v104 + 5) = v103;
        result = sub_24B59B7FC(v64);
        v61 = *(v9 + 2);
        if (v61 <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = &v9[16 * v61 + 32];
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_144;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_145;
      }

      v76 = &v9[16 * v61];
      v78 = *v76;
      v77 = *(v76 + 1);
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_147;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_150;
      }

      if (v80 >= v72)
      {
        v98 = &v9[16 * v64 + 32];
        v100 = *v98;
        v99 = *(v98 + 1);
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_154;
        }

        if (v67 < v101)
        {
          v64 = v61 - 2;
        }

        goto LABEL_118;
      }

      goto LABEL_97;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_128;
    }
  }

  v47 = *v6;
  v48 = *v6 + 48 * v8 - 48;
  v49 = v119 - v8;
LABEL_49:
  v50 = v49;
  v51 = v48;
  while (1)
  {
    v52 = *(v51 + 88);
    v53 = *(v51 + 40);
    if (v53 > 4)
    {
      if (*(v51 + 40) > 6u)
      {
        if (v53 == 7)
        {
          if (v52 >= 7)
          {
            goto LABEL_48;
          }
        }

        else if (v52 >= 8)
        {
          goto LABEL_48;
        }
      }

      else if (v53 == 5)
      {
        if (v52 >= 5)
        {
          goto LABEL_48;
        }
      }

      else if (v52 >= 6)
      {
        goto LABEL_48;
      }
    }

    else if (*(v51 + 40) > 2u)
    {
      if (v53 == 3)
      {
        if (v52 >= 3)
        {
          goto LABEL_48;
        }
      }

      else if (v52 >= 4)
      {
        goto LABEL_48;
      }
    }

    else if (v53 >= 2)
    {
      if (v52 >= 2)
      {
        goto LABEL_48;
      }
    }

    else if (v52 >= v53)
    {
      goto LABEL_48;
    }

    if (!v47)
    {
      break;
    }

    v55 = *(v51 + 48);
    v54 = *(v51 + 64);
    v56 = *(v51 + 16);
    v57 = *(v51 + 32);
    *(v51 + 48) = *v51;
    *(v51 + 64) = v56;
    v58 = *(v51 + 80);
    *(v51 + 80) = v57;
    *v51 = v55;
    *(v51 + 16) = v54;
    *(v51 + 32) = v58;
    *(v51 + 40) = v52;
    v51 -= 48;
    if (__CFADD__(v50++, 1))
    {
LABEL_48:
      ++v8;
      v48 += 48;
      --v49;
      if (v8 != v46)
      {
        goto LABEL_49;
      }

      v8 = v46;
      goto LABEL_77;
    }
  }

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
  return result;
}

uint64_t sub_24B5979A0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v100 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v100;
    if (!*v100)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_24B59B888(v7);
      v7 = result;
    }

    v91 = v7 + 16;
    v92 = *(v7 + 2);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = &v7[16 * v92];
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = v95[1];
        sub_24B59A6F4((*a3 + (*v93 << 6)), (*a3 + (*v95 << 6)), (*a3 + (v96 << 6)), v8);
        if (v4)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_129;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_130;
        }

        *v93 = v94;
        *(v93 + 1) = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_131;
        }

        v92 = *v91 - 1;
        result = memmove(v95, v95 + 2, 16 * v97);
        *v91 = v92;
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3 + (v6 << 6);
      result = *(v9 + 40);
      v10 = (*a3 + (v8 << 6));
      if (result == v10[5] && *(v9 + 48) == v10[6])
      {
        v12 = 0;
      }

      else
      {
        result = sub_24B5FFECC();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 22;
        do
        {
          result = *(v13 - 1);
          if (result == *(v13 - 9) && *v13 == *(v13 - 8))
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_24B5FFECC();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          v13 += 8;
          ++v6;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v15 = (v6 << 6) - 64;
          v16 = v8 << 6;
          v17 = v6;
          v18 = v8;
          do
          {
            if (v18 != --v17)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v19 = (v28 + v16);
              v20 = (v28 + v15);
              v22 = v19[2];
              v21 = v19[3];
              v24 = *v19;
              v23 = v19[1];
              v25 = v20[3];
              v27 = *v20;
              v26 = v20[1];
              v19[2] = v20[2];
              v19[3] = v25;
              *v19 = v27;
              v19[1] = v26;
              *v20 = v24;
              v20[1] = v23;
              v20[2] = v22;
              v20[3] = v21;
            }

            ++v18;
            v15 -= 64;
            v16 += 64;
          }

          while (v18 < v17);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = (v8 + a4);
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24B595AD8(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v46 = *(v7 + 2);
    v45 = *(v7 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_24B595AD8((v45 > 1), v46 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v47;
    v48 = &v7[16 * v46];
    *(v48 + 4) = v8;
    *(v48 + 5) = v6;
    v49 = *v100;
    if (!*v100)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v7 + 4);
          v52 = *(v7 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v7[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v7[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v7[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v7[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v50 - 1;
        if (v50 - 1 >= v47)
        {
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v88 = *&v7[16 * v8 + 32];
        v89 = *&v7[16 * v50 + 40];
        sub_24B59A6F4((*a3 + (v88 << 6)), (*a3 + (*&v7[16 * v50 + 32] << 6)), (*a3 + (v89 << 6)), v49);
        if (v4)
        {
        }

        if (v89 < v88)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_24B59B888(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v90 = &v7[16 * v8];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        result = sub_24B59B7FC(v50);
        v47 = *(v7 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v7[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v7[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v7[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + (v6 << 6);
  v98 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = v33;
  v35 = v32;
  while (1)
  {
    v36 = *(v35 + 5) == *(v35 - 3) && *(v35 + 6) == *(v35 - 2);
    if (v36 || (result = sub_24B5FFECC(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 64;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v98;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v37 = v35 - 4;
    v39 = v35[2];
    v38 = v35[3];
    v41 = *v35;
    v40 = v35[1];
    v42 = *(v35 - 3);
    *v35 = *(v35 - 4);
    v35[1] = v42;
    v43 = *(v35 - 1);
    v35[2] = *(v35 - 2);
    v35[3] = v43;
    *v37 = v41;
    v37[1] = v40;
    v35 -= 4;
    v37[2] = v39;
    v37[3] = v38;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_24B597F80(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v99;
    if (!*v99)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_24B59B888(v8);
      v8 = result;
    }

    v91 = (v8 + 16);
    v92 = *(v8 + 16);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = (v8 + 16 * v92);
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = v95[1];
        sub_24B59A934((*a3 + (*v93 << 6)), (*a3 + (*v95 << 6)), (*a3 + (v96 << 6)), v5);
        if (v4)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_114;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_115;
        }

        *v93 = v94;
        v93[1] = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_116;
        }

        v92 = *v91 - 1;
        result = memmove(v95, v95 + 2, 16 * v97);
        *v91 = v92;
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v98 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + (v7 << 6) + 56);
      v11 = v9 << 6;
      v12 = *a3 + (v9 << 6);
      v13 = *(v12 + 56);
      v14 = v9 + 2;
      v15 = (v12 + 184);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 8;
        v18 = (v10 < v13) ^ (v17 >= v16);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = (v7 << 6) - 64;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v31 + v11);
            v23 = (v31 + v19);
            v25 = v22[2];
            v24 = v22[3];
            v27 = *v22;
            v26 = v22[1];
            v28 = v23[3];
            v30 = *v23;
            v29 = v23[1];
            v22[2] = v23[2];
            v22[3] = v28;
            *v22 = v30;
            v22[1] = v29;
            *v23 = v27;
            v23[1] = v26;
            v23[2] = v25;
            v23[3] = v24;
          }

          ++v21;
          v19 -= 64;
          v11 += 64;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24B595AD8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v45 = *(v8 + 24);
    v46 = v5 + 1;
    if (v5 >= v45 >> 1)
    {
      result = sub_24B595AD8((v45 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v46;
    v47 = v8 + 32;
    v48 = (v8 + 32 + 16 * v5);
    *v48 = v9;
    v48[1] = v7;
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v49 = *(v8 + 32);
          v50 = *(v8 + 40);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_57:
          if (v52)
          {
            goto LABEL_104;
          }

          v65 = (v8 + 16 * v46);
          v67 = *v65;
          v66 = v65[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_106;
          }

          v71 = (v47 + 16 * v5);
          v73 = *v71;
          v72 = v71[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_111;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v5 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v75 = (v8 + 16 * v46);
        v77 = *v75;
        v76 = v75[1];
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_72:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = (v47 + 16 * v5);
        v80 = *v78;
        v79 = v78[1];
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_110;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v46)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v86 = (v47 + 16 * (v5 - 1));
        v87 = *v86;
        v88 = (v47 + 16 * v5);
        v89 = v88[1];
        sub_24B59A934((*a3 + (*v86 << 6)), (*a3 + (*v88 << 6)), (*a3 + (v89 << 6)), v100);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *(v8 + 16);
        if (v5 >= v90)
        {
          goto LABEL_101;
        }

        v46 = v90 - 1;
        result = memmove((v47 + 16 * v5), v88 + 2, 16 * (v90 - 1 - v5));
        *(v8 + 16) = v90 - 1;
        if (v90 <= 2)
        {
          goto LABEL_3;
        }
      }

      v53 = v47 + 16 * v46;
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_102;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_103;
      }

      v60 = (v8 + 16 * v46);
      v62 = *v60;
      v61 = v60[1];
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_105;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_107;
      }

      if (v64 >= v56)
      {
        v82 = (v47 + 16 * v5);
        v84 = *v82;
        v83 = v82[1];
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_113;
        }

        if (v51 < v85)
        {
          v5 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v98;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + (v7 << 6);
  v34 = v9 - v7;
LABEL_30:
  v35 = v34;
  v36 = v33;
  while (1)
  {
    if (*(v36 + 7) >= *(v36 - 1))
    {
LABEL_29:
      ++v7;
      v33 += 64;
      --v34;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v37 = v36 - 4;
    v39 = v36[2];
    v38 = v36[3];
    v41 = *v36;
    v40 = v36[1];
    v42 = *(v36 - 3);
    *v36 = *(v36 - 4);
    v36[1] = v42;
    v43 = *(v36 - 1);
    v36[2] = *(v36 - 2);
    v36[3] = v43;
    *v37 = v41;
    v37[1] = v40;
    v36 -= 4;
    v37[2] = v39;
    v37[3] = v38;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_24B598524(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_24B59B888(v7);
      v7 = result;
    }

    v80 = (v7 + 16);
    v81 = *(v7 + 16);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = (v7 + 16 * v81);
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_24B59AB50((*a3 + 72 * *v82), (*a3 + 72 * *v84), (*a3 + 72 * v85), v89);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_114;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_115;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_116;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 72 * v6 + 56);
      v10 = 72 * v8;
      v11 = *a3 + 72 * v8;
      v12 = *(v11 + 56);
      v13 = v8 + 2;
      v14 = (v11 + 200);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 9;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 72 * v6 - 72;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = v22 + v18;
            v94 = *(v22 + v10 + 32);
            v96 = *(v22 + v10 + 48);
            v98 = *(v22 + v10 + 64);
            v90 = *(v22 + v10);
            v92 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0x48uLL);
            *(v21 + 32) = v94;
            *(v21 + 48) = v96;
            *(v21 + 64) = v98;
            *v21 = v90;
            *(v21 + 16) = v92;
          }

          ++v20;
          v18 -= 72;
          v10 += 72;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24B595AD8(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v33 = *(v7 + 16);
    v32 = *(v7 + 24);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_24B595AD8((v32 > 1), v33 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v34;
    v35 = v7 + 32;
    v36 = (v7 + 32 + 16 * v33);
    *v36 = v8;
    v36[1] = v6;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_127;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = *(v7 + 32);
          v39 = *(v7 + 40);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_57:
          if (v41)
          {
            goto LABEL_104;
          }

          v54 = (v7 + 16 * v34);
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_106;
          }

          v60 = (v35 + 16 * v37);
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_111;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v64 = (v7 + 16 * v34);
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_72:
        if (v59)
        {
          goto LABEL_108;
        }

        v67 = (v35 + 16 * v37);
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v37 - 1 >= v34)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v75 = (v35 + 16 * (v37 - 1));
        v76 = *v75;
        v77 = (v35 + 16 * v37);
        v78 = v77[1];
        sub_24B59AB50((*a3 + 72 * *v75), (*a3 + 72 * *v77), (*a3 + 72 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_99;
        }

        if (v37 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = *(v7 + 16);
        if (v37 >= v79)
        {
          goto LABEL_101;
        }

        v34 = v79 - 1;
        result = memmove((v35 + 16 * v37), v77 + 2, 16 * (v79 - 1 - v37));
        *(v7 + 16) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = v35 + 16 * v34;
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_102;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_103;
      }

      v49 = (v7 + 16 * v34);
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_105;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v53 >= v45)
      {
        v71 = (v35 + 16 * v37);
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 72 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 + 56) >= *(v27 - 16))
    {
LABEL_29:
      ++v6;
      v24 += 72;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = v27 - 72;
    v95 = *(v27 + 32);
    v97 = *(v27 + 48);
    v99 = *(v27 + 64);
    v91 = *v27;
    v93 = *(v27 + 16);
    v29 = *(v27 - 24);
    *(v27 + 32) = *(v27 - 40);
    *(v27 + 48) = v29;
    *(v27 + 64) = *(v27 - 8);
    v30 = *(v27 - 56);
    *v27 = *(v27 - 72);
    *(v27 + 16) = v30;
    *(v28 + 64) = v99;
    *(v28 + 32) = v95;
    *(v28 + 48) = v97;
    v27 -= 72;
    *v28 = v91;
    *(v28 + 16) = v93;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_24B598B28(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  __dst = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    __dst = *__dst;
    if (!__dst)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_24B59B888(v8);
      v8 = result;
    }

    v83 = v8 + 16;
    v84 = *(v8 + 2);
    if (v84 >= 2)
    {
      while (1)
      {
        v85 = *v5;
        if (!*v5)
        {
          goto LABEL_142;
        }

        v86 = &v8[16 * v84];
        v5 = *v86;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_24B59ADC8((v85 + 72 * *v86), (v85 + 72 * *v87), (v85 + 72 * v88), __dst);
        if (v4)
        {
        }

        if (v88 < v5)
        {
          goto LABEL_130;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_131;
        }

        *v86 = v5;
        *(v86 + 1) = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_132;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        v5 = a3;
        if (v84 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 72 * v7;
      result = *(v11 + 56);
      v12 = *(v11 + 64);
      v13 = *v5 + 72 * v9;
      if (result == *(v13 + 56) && v12 == *(v13 + 64))
      {
        v15 = 0;
      }

      else
      {
        result = sub_24B5FFECC();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 72 * v9 + 208);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 10) && *v16 == *(v16 - 9))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_24B5FFECC();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 9;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v18 = 72 * v7 - 72;
          v19 = v9;
          v20 = 72 * v9;
          v21 = v7;
          v90 = v19;
          do
          {
            if (v19 != --v21)
            {
              v23 = *v5;
              if (!*v5)
              {
                goto LABEL_141;
              }

              v22 = v23 + v18;
              v99 = *(v23 + v20 + 32);
              v101 = *(v23 + v20 + 48);
              v103 = *(v23 + v20 + 64);
              v95 = *(v23 + v20);
              v97 = *(v23 + v20 + 16);
              result = memmove((v23 + v20), (v23 + v18), 0x48uLL);
              *(v22 + 32) = v99;
              *(v22 + 48) = v101;
              *(v22 + 64) = v103;
              *v22 = v95;
              *(v22 + 16) = v97;
            }

            ++v19;
            v18 -= 72;
            v20 += 72;
          }

          while (v19 < v21);
          v9 = v90;
        }
      }
    }

    v24 = v5[1];
    if (v7 < v24)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_136;
        }

        if (v9 + a4 >= v24)
        {
          v25 = v5[1];
        }

        else
        {
          v25 = v9 + a4;
        }

        if (v25 < v9)
        {
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (v7 != v25)
        {
          break;
        }
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
      result = sub_24B595AD8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v37 = *(v8 + 2);
    v36 = *(v8 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_24B595AD8((v36 > 1), v37 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v38;
    v39 = &v8[16 * v37];
    *(v39 + 4) = v9;
    *(v39 + 5) = v7;
    v40 = *__dst;
    if (!*__dst)
    {
      goto LABEL_143;
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
LABEL_75:
          if (v45)
          {
            goto LABEL_121;
          }

          v58 = &v8[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_124;
          }

          v64 = &v8[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_128;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v68 = &v8[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_89:
        if (v63)
        {
          goto LABEL_123;
        }

        v71 = &v8[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_126;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_96:
        v79 = v41 - 1;
        if (v41 - 1 >= v38)
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

        if (!*v5)
        {
          goto LABEL_140;
        }

        v80 = *&v8[16 * v79 + 32];
        v81 = *&v8[16 * v41 + 40];
        sub_24B59ADC8((*v5 + 72 * v80), (*v5 + 72 * *&v8[16 * v41 + 32]), (*v5 + 72 * v81), v40);
        if (v4)
        {
        }

        if (v81 < v80)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24B59B888(v8);
        }

        if (v79 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v82 = &v8[16 * v79];
        *(v82 + 4) = v80;
        *(v82 + 5) = v81;
        result = sub_24B59B7FC(v41);
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
        goto LABEL_119;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_120;
      }

      v53 = &v8[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_122;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_125;
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
          goto LABEL_129;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  v26 = *v5;
  v27 = *v5 + 72 * v7;
  v91 = v9;
  v28 = v9 - v7;
LABEL_44:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    v31 = *(v30 + 56) == *(v30 - 16) && *(v30 + 64) == *(v30 - 8);
    if (v31 || (result = sub_24B5FFECC(), (result & 1) == 0))
    {
LABEL_43:
      ++v7;
      v27 += 72;
      --v28;
      if (v7 != v25)
      {
        goto LABEL_44;
      }

      v7 = v25;
      v5 = a3;
      v9 = v91;
      goto LABEL_55;
    }

    if (!v26)
    {
      break;
    }

    v32 = v30 - 72;
    v100 = *(v30 + 32);
    v102 = *(v30 + 48);
    v104 = *(v30 + 64);
    v96 = *v30;
    v98 = *(v30 + 16);
    v33 = *(v30 - 24);
    *(v30 + 32) = *(v30 - 40);
    *(v30 + 48) = v33;
    *(v30 + 64) = *(v30 - 8);
    v34 = *(v30 - 56);
    *v30 = *(v30 - 72);
    *(v30 + 16) = v34;
    *(v32 + 64) = v104;
    *(v32 + 32) = v100;
    *(v32 + 48) = v102;
    v30 -= 72;
    *v32 = v96;
    *(v32 + 16) = v98;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_43;
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