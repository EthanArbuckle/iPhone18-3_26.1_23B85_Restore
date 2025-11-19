uint64_t sub_247969260()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_247969298@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_247971874();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_247971894();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_247971884();
  result = (*(v5 + 8))(a1, v4);
  *(v9 + 16) = v13;
  *a2 = v9;
  return result;
}

uint64_t sub_2479693C8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v240 = a2;
  v237 = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE58F00, &qword_247971FA8) - 8) + 64);
  v5 = (MEMORY[0x28223BE20])();
  v236 = &v218 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v235 = &v218 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v233 = &v218 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v234 = &v218 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v231 = &v218 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v232 = &v218 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v229 = &v218 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v230 = &v218 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v228 = &v218 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v227 = &v218 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v220 = &v218 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v219 = &v218 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v226 = &v218 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v225 = &v218 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v218 = &v218 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v224 = &v218 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v223 = &v218 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v221 = &v218 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v222 = &v218 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v218 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v218 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v218 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v54 = &v218 - v53;
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v218 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v60 = &v218 - v59;
  v61 = MEMORY[0x28223BE20](v58);
  v63 = &v218 - v62;
  MEMORY[0x28223BE20](v61);
  v65 = &v218 - v64;
  v66 = sub_247971854();
  v67 = *(v66 - 8);
  v244 = v66;
  v245 = v67;
  v68 = *(v67 + 56);
  v241 = v65;
  v239 = v67 + 56;
  v238 = v68;
  (v68)(v65, 1, 1);
  v246 = a1;
  v69 = sub_2479717D4();
  v70 = v69;
  if (v69 > 0xFF36AD3976A092A4)
  {
    if (v69 > 0x31BF4070DB2F13F5)
    {
      v72 = v241;
      if (v69 > 0x5AB466FC8E211106)
      {
        if (v69 <= 0x72D244C5DA3817E0)
        {
          v83 = v245;
          if (v69 == 0x5AB466FC8E211107)
          {
            sub_24796C534((v242 + 3), v247);
            v84 = v248;
            v85 = v249;
            v86 = __swift_project_boxed_opaque_existential_1(v247, v248);
            v87 = sub_2479717D4();
            if (v87 == 0x371451BC23D3ED89)
            {
              LODWORD(v79) = 1;
              v88 = v243;
            }

            else
            {
              v88 = v243;
              if (v87 != 0xE943957390EDD167)
              {
                goto LABEL_289;
              }

              LODWORD(v79) = 0;
            }

            if (v88)
            {
              __swift_destroy_boxed_opaque_existential_1(v247);
              v189 = (*(v83 + 48))(v72, 1, v244);
              goto LABEL_274;
            }

            v242 = v86;
            v192 = sub_2479717A4();
            v193 = sub_2479717A4();
            v194 = sub_2479717C4();
            v195 = 0x10000;
            if ((v193 & 1) == 0)
            {
              v195 = 0;
            }

            v196 = v195 | (v194 << 32);
            v197 = 256;
            if ((v192 & 1) == 0)
            {
              v197 = 0;
            }

            (*(v85 + 96))(v196 | v197 | v79, v84, v85);
            __swift_destroy_boxed_opaque_existential_1(v247);
            v198 = v218;
            v199 = v243;
            sub_2479717E4();
            if (!v199)
            {
              v246 = 0;
              v79 = v244;
              v238(v198, 0, 1, v244);
              v80 = *(v83 + 48);
              if (v80(v72, 1, v79) != 1)
              {
                sub_24796C45C(v72);
              }

              v111 = v198;
              goto LABEL_159;
            }
          }

          else
          {
            if (v69 != 0x6235F79F0F251BA0)
            {
              goto LABEL_287;
            }

            v152 = v242[6];
            v153 = v242[7];
            __swift_project_boxed_opaque_existential_1(v242 + 3, v152);
            (*(v153 + 40))(v152, v153);
            v154 = v243;
            sub_2479717E4();
            if (!v154)
            {
              v246 = 0;
              v79 = v244;
              v238(v51, 0, 1, v244);
              v155 = *(v83 + 48);
              if (v155(v72, 1, v79) != 1)
              {
                sub_24796C45C(v72);
              }

              sub_24796C4C4(v51, v72);
              v80 = v155;
              if (!v155(v72, 1, v79))
              {
                sub_247971834();
                sub_247971804();
              }

              goto LABEL_201;
            }
          }

          LODWORD(v79) = v250;
          result = (*(v83 + 48))(v72, 1, v244);
          goto LABEL_280;
        }

        v89 = v245;
        if (v69 != 0x72D244C5DA3817E1)
        {
          if (v69 != 0x72E46FD363089C9FLL)
          {
            goto LABEL_287;
          }

          v161 = v242[6];
          v162 = v242[7];
          __swift_project_boxed_opaque_existential_1(v242 + 3, v161);
          (*(v162 + 8))(v161, v162);
          v163 = v243;
          sub_2479717E4();
          if (v163)
          {
            goto LABEL_128;
          }

          v246 = 0;
          v164 = v244;
          v238(v63, 0, 1, v244);
          v80 = *(v89 + 48);
          if (v80(v72, 1, v164) != 1)
          {
            sub_24796C45C(v72);
          }

          sub_24796C4C4(v63, v72);
          v137 = v72;
          v79 = v244;
LABEL_112:
          if (v80(v137, 1, v79))
          {
            goto LABEL_201;
          }

          goto LABEL_183;
        }

        v116 = v242[6];
        v117 = v242[7];
        __swift_project_boxed_opaque_existential_1(v242 + 3, v116);
        (*(v117 + 136))(v116, v117);
        v118 = &v254;
LABEL_83:
        v147 = *(v118 - 32);
        v148 = v243;
        sub_2479717E4();
        if (!v148)
        {
          v246 = 0;
          v79 = v244;
          v238(v147, 0, 1, v244);
          v80 = *(v89 + 48);
          if (v80(v72, 1, v79) != 1)
          {
            sub_24796C45C(v72);
          }

          sub_24796C4C4(v147, v72);
          if (v80(v72, 1, v79))
          {
            goto LABEL_201;
          }

          goto LABEL_200;
        }

        goto LABEL_128;
      }

      if (v69 == 0x31BF4070DB2F13F6)
      {
        v121 = v242[6];
        v122 = v242[7];
        __swift_project_boxed_opaque_existential_1(v242 + 3, v121);
        (*(v122 + 160))(v121, v122);
        v123 = v229;
        v124 = v243;
        sub_2479717E4();
        if (!v124)
        {
          v246 = 0;
          v79 = v244;
          v238(v123, 0, 1, v244);
          v80 = *(v245 + 48);
          if (v80(v72, 1, v79) != 1)
          {
            sub_24796C45C(v72);
          }

          sub_24796C4C4(v123, v72);
          if (v80(v72, 1, v79))
          {
            goto LABEL_201;
          }

          goto LABEL_200;
        }
      }

      else
      {
        if (v69 != 0x3B97179C438E7D3FLL)
        {
          v89 = v245;
          if (v69 != 0x4AEFB38382AAD867)
          {
            goto LABEL_287;
          }

          v145 = v242[6];
          v146 = v242[7];
          __swift_project_boxed_opaque_existential_1(v242 + 3, v145);
          (*(v146 + 144))(v145, v146);
          v118 = &v255;
          goto LABEL_83;
        }

        v101 = v242[6];
        v102 = v242[7];
        __swift_project_boxed_opaque_existential_1(v242 + 3, v101);
        (*(v102 + 16))(v101, v102);
        v103 = v243;
        sub_2479717E4();
        if (!v103)
        {
          v246 = 0;
          v79 = v244;
          v238(v60, 0, 1, v244);
          v104 = *(v245 + 48);
          if (v104(v72, 1, v79) != 1)
          {
            sub_24796C45C(v72);
          }

          sub_24796C4C4(v60, v72);
          v80 = v104;
          if (v104(v72, 1, v79))
          {
            goto LABEL_201;
          }

          goto LABEL_183;
        }
      }

      LODWORD(v79) = v250;
      result = (*(v245 + 48))(v72, 1, v244);
      goto LABEL_280;
    }

    v72 = v241;
    if (v69 <= 0x2D198AE7D7D567D7)
    {
      v89 = v245;
      if (v69 == 0xFF36AD3976A092A5)
      {
        v131 = v242[6];
        v132 = v242[7];
        __swift_project_boxed_opaque_existential_1(v242 + 3, v131);
        (*(v132 + 192))(v131, v132);
        v107 = &v259;
        goto LABEL_127;
      }

      if (v69 != 0x31EB8B1F9F153B4)
      {
        if (v69 != 0x27639B712DF9D8DELL)
        {
          goto LABEL_287;
        }

        v175 = v242[6];
        v176 = v242[7];
        __swift_project_boxed_opaque_existential_1(v242 + 3, v175);
        (*(v176 + 64))(v175, v176);
        v178 = v177;
        v179 = v222;
        v180 = v243;
        sub_2479717E4();
        if (!v180)
        {
          v246 = 0;
          v79 = v244;
          v238(v179, 0, 1, v244);
          v80 = *(v89 + 48);
          if (v80(v72, 1, v79) != 1)
          {
            sub_24796C45C(v72);
          }

          sub_24796C4C4(v179, v72);
          if (v80(v72, 1, v79))
          {
            goto LABEL_201;
          }

          if ((v178 & 0x100000000) == 0)
          {
            sub_247971834();
            sub_247971834();
            goto LABEL_124;
          }

LABEL_200:
          sub_247971834();
          goto LABEL_201;
        }

        goto LABEL_128;
      }

      v94 = v242[6];
      v95 = v242[7];
      __swift_project_boxed_opaque_existential_1(v242 + 3, v94);
      (*(v95 + 32))(v94, v95);
      v96 = v243;
      sub_2479717E4();
      if (v96)
      {
        goto LABEL_128;
      }

      v246 = 0;
      v79 = v244;
      v238(v54, 0, 1, v244);
      v80 = *(v89 + 48);
      if (v80(v72, 1, v79) != 1)
      {
        sub_24796C45C(v72);
      }

      v97 = v54;
      goto LABEL_71;
    }

    v71 = v245;
    if (v69 != 0x2D198AE7D7D567D8)
    {
      if (v69 == 0x2FCE95A5051B2A83)
      {
        v108 = v242[6];
        v109 = v242[7];
        __swift_project_boxed_opaque_existential_1(v242 + 3, v108);
        (*(v109 + 56))(v108, v109);
        v110 = v243;
        sub_2479717E4();
        if (v110)
        {
          goto LABEL_279;
        }

        v246 = 0;
        v79 = v244;
        v238(v45, 0, 1, v244);
        v80 = *(v71 + 48);
        if (v80(v72, 1, v79) != 1)
        {
          sub_24796C45C(v72);
        }

        v111 = v45;
LABEL_159:
        sub_24796C4C4(v111, v72);
        goto LABEL_201;
      }

      if (v69 != 0x2FECE9015A139163)
      {
        goto LABEL_287;
      }

      v185 = v242[6];
      v186 = v242[7];
      __swift_project_boxed_opaque_existential_1(v242 + 3, v185);
      (*(v186 + 80))(v185, v186);
      v187 = v223;
      v188 = v243;
      sub_2479717E4();
      if (v188)
      {
        goto LABEL_279;
      }

      v246 = 0;
      v79 = v244;
      v238(v187, 0, 1, v244);
      v80 = *(v71 + 48);
      if (v80(v72, 1, v79) != 1)
      {
        sub_24796C45C(v72);
      }

      sub_24796C4C4(v187, v72);
      if (v80(v72, 1, v79))
      {
        goto LABEL_201;
      }

      goto LABEL_183;
    }

    sub_24796C534((v242 + 3), v247);
    v138 = v248;
    v139 = v249;
    __swift_project_boxed_opaque_existential_1(v247, v248);
    v140 = sub_2479717D4();
    if (v140 > 0xF7A18E1D22D08A90)
    {
      v141 = v243;
      if (v140 > 0x1BF81CE64F07AF5ELL)
      {
        if (v140 <= 0x5DEB4BD3591B78E3)
        {
          if (v140 <= 0x2F2B502739B04598)
          {
            if (v140 == 0x1BF81CE64F07AF5FLL)
            {
              v79 = 15;
              goto LABEL_272;
            }

            if (v140 == 0x2AC83335E2A52E86)
            {
              v79 = 10;
              goto LABEL_272;
            }
          }

          else
          {
            switch(v140)
            {
              case 0x2F2B502739B04599:
                v79 = 8;
                goto LABEL_272;
              case 0x418732BF980FEFD2:
                v79 = 36;
                goto LABEL_272;
              case 0x42841AE7412F624ELL:
                v79 = 37;
                goto LABEL_272;
            }
          }
        }

        else if (v140 > 0x78DF870862C02B91)
        {
          switch(v140)
          {
            case 0x78DF870862C02B92:
              v79 = 25;
              goto LABEL_272;
            case 0x7AB3544148B1E1B7:
              v79 = 7;
              goto LABEL_272;
            case 0x7F5D3A1A2CB8F720:
              v79 = 3;
              goto LABEL_272;
          }
        }

        else
        {
          switch(v140)
          {
            case 0x5DEB4BD3591B78E4:
              v79 = 28;
              goto LABEL_272;
            case 0x656AA29B2034004ELL:
              v79 = 40;
              goto LABEL_272;
            case 0x714EE36D8BEDD13ELL:
              v79 = 2;
              goto LABEL_272;
          }
        }
      }

      else if (v140 <= 0x3D3D863DC239E3DLL)
      {
        if (v140 <= 0xFBAF50BAF192177ELL)
        {
          if (v140 == 0xF7A18E1D22D08A91)
          {
            v79 = 0;
            goto LABEL_272;
          }

          if (v140 == 0xF939AE07D1B76443)
          {
            v79 = 17;
            goto LABEL_272;
          }
        }

        else
        {
          switch(v140)
          {
            case 0xFBAF50BAF192177FLL:
              v79 = 22;
              goto LABEL_272;
            case 0xFC78C82705D56FD3:
              v79 = 30;
              goto LABEL_272;
            case 0x6B4AA5139D1C4BLL:
              v79 = 33;
              goto LABEL_272;
          }
        }
      }

      else if (v140 > 0x17D6386C38CD04C3)
      {
        switch(v140)
        {
          case 0x17D6386C38CD04C4:
            v79 = 43;
            goto LABEL_272;
          case 0x19DBCC66CD1226D8:
            v79 = 16;
            goto LABEL_272;
          case 0x1AC4EDF324CC3F83:
            v79 = 1;
            goto LABEL_272;
        }
      }

      else
      {
        switch(v140)
        {
          case 0x3D3D863DC239E3ELL:
            v79 = 34;
            goto LABEL_272;
          case 0xE1551273F2C8F91:
            v79 = 24;
            goto LABEL_272;
          case 0x113C060897761B63:
            v79 = 38;
            goto LABEL_272;
        }
      }
    }

    else
    {
      v141 = v243;
      if (v140 > 0xC89696D3BDD2FCEFLL)
      {
        if (v140 <= 0xD76D6E510A1C7BE2)
        {
          if (v140 <= 0xD124D0A81190947ELL)
          {
            if (v140 == 0xC89696D3BDD2FCF0)
            {
              v79 = 5;
              goto LABEL_272;
            }

            if (v140 == 0xCC92900C433FE06DLL)
            {
              v79 = 18;
              goto LABEL_272;
            }
          }

          else
          {
            switch(v140)
            {
              case 0xD124D0A81190947FLL:
                v79 = 29;
                goto LABEL_272;
              case 0xD1729F554A45BDECLL:
                v79 = 26;
                goto LABEL_272;
              case 0xD53D863AB432198BLL:
                v79 = 11;
                goto LABEL_272;
            }
          }
        }

        else if (v140 > 0xE1B29391201EDA1CLL)
        {
          switch(v140)
          {
            case 0xE1B29391201EDA1DLL:
              v79 = 35;
              goto LABEL_272;
            case 0xE5ABCB70FB0576BALL:
              v79 = 32;
              goto LABEL_272;
            case 0xEBD1015A2B9EB77CLL:
              v79 = 12;
              goto LABEL_272;
          }
        }

        else
        {
          switch(v140)
          {
            case 0xD76D6E510A1C7BE3:
              v79 = 21;
              goto LABEL_272;
            case 0xDA26D915BB129394:
              v79 = 14;
              goto LABEL_272;
            case 0xDCCBE59234188423:
              v79 = 42;
              goto LABEL_272;
          }
        }
      }

      else if (v140 <= 0x9D4B7954B05BFDBDLL)
      {
        if (v140 <= 0x8E9889B77234E946)
        {
          if (v140 == 0x84035BF99132125ELL)
          {
            v79 = 9;
            goto LABEL_272;
          }

          if (v140 == 0x88394872043826BDLL)
          {
            v79 = 6;
            goto LABEL_272;
          }
        }

        else
        {
          switch(v140)
          {
            case 0x8E9889B77234E947:
              v79 = 4;
              goto LABEL_272;
            case 0x8F1538728B7CDEA4:
              v79 = 27;
              goto LABEL_272;
            case 0x91EC7732FD261E2ELL:
              v79 = 41;
              goto LABEL_272;
          }
        }
      }

      else if (v140 > 0xA13AE2AABE773445)
      {
        switch(v140)
        {
          case 0xA13AE2AABE773446:
            v79 = 31;
            goto LABEL_272;
          case 0xAACEDDC4B24F04BBLL:
            v79 = 19;
            goto LABEL_272;
          case 0xB76BD80C1D29A5DDLL:
            v79 = 13;
            goto LABEL_272;
        }
      }

      else
      {
        switch(v140)
        {
          case 0x9D4B7954B05BFDBELL:
            v79 = 20;
            goto LABEL_272;
          case 0x9FB4FE7B8C107ED7:
            v79 = 23;
LABEL_272:
            if (!v141)
            {
              v206 = sub_2479717A4();
              (*(v139 + 128))(v79, v206 & 1, v138, v139);
              __swift_destroy_boxed_opaque_existential_1(v247);
              v207 = v220;
              sub_2479717E4();
              v246 = 0;
              v79 = v244;
              v238(v207, 0, 1, v244);
              v80 = *(v71 + 48);
              if (v80(v72, 1, v79) != 1)
              {
                sub_24796C45C(v72);
              }

              v160 = v220;
LABEL_105:
              sub_24796C4C4(v160, v72);
              if (v80(v72, 1, v79))
              {
                goto LABEL_201;
              }

              goto LABEL_200;
            }

            __swift_destroy_boxed_opaque_existential_1(v247);
            v189 = (*(v71 + 48))(v72, 1, v244);
LABEL_274:
            if (v189 != 1)
            {
              v191 = v72;
              goto LABEL_276;
            }

LABEL_277:
            v205 = sub_2479717F4();
            result = (*(*(v205 - 8) + 8))(v246, v205);
            goto LABEL_283;
          case 0xA123AEFB86EACA53:
            v79 = 39;
            goto LABEL_272;
        }
      }
    }

    v254 = 0;
    v255 = 0xE000000000000000;
    v214 = v140;
    sub_2479718B4();

    v254 = 0xD00000000000001ALL;
    v255 = 0x8000000247972280;
    v257 = v214;
    v215 = sub_2479718D4();
    MEMORY[0x24C1AF350](v215);

    v217 = 0;
    i = 828;
    goto LABEL_288;
  }

  if (v69 <= 0xAA9E7E89658C60C6)
  {
    v89 = v245;
    if (v69 <= 0x9A31449AF781DAA0)
    {
      if (v69 != 0x8459910482DE32B0)
      {
        if (v69 == 0x8BBD137760ACEDA0)
        {
          v90 = v242[6];
          v91 = v242[7];
          __swift_project_boxed_opaque_existential_1(v242 + 3, v90);
          (*(v91 + 48))(v90, v91);
          v92 = v243;
          sub_2479717E4();
          if (!v92)
          {
            v246 = 0;
            v79 = v244;
            v238(v48, 0, 1, v244);
            v80 = *(v89 + 48);
            v93 = v241;
            if (v80(v241, 1, v79) != 1)
            {
              sub_24796C45C(v93);
            }

            sub_24796C4C4(v48, v93);
            v72 = v93;
            goto LABEL_201;
          }

LABEL_64:
          LODWORD(v79) = v250;
          v129 = v241;
          result = (*(v89 + 48))(v241, 1, v244);
          if (result != 1)
          {
            v130 = v129;
LABEL_282:
            result = sub_24796C45C(v130);
          }

LABEL_283:
          *v240 = v79;
          return result;
        }

        if (v69 != 0x92C89C79D4633701)
        {
          goto LABEL_287;
        }

        sub_24796C534((v242 + 3), v247);
        v165 = v248;
        v166 = v249;
        __swift_project_boxed_opaque_existential_1(v247, v248);
        v167 = v246;
        v168 = sub_2479717D4();
        MEMORY[0x28223BE20](v168);
        v216 = v167;
        v169 = v243;
        v171 = sub_24796C178(sub_24796C5E4, (&v218 - 4), 0, v170);
        v172 = sub_2479717C4();
        v173 = sub_2479717C4();
        v174 = sub_2479717D4();
        if (v174 == 0x5FE91FEE7BE681E1)
        {
          v79 = 1;
LABEL_148:
          if (v169)
          {

            __swift_destroy_boxed_opaque_existential_1(v247);
            v190 = v241;
            if ((*(v245 + 48))(v241, 1, v244) != 1)
            {
              v191 = v190;
LABEL_276:
              sub_24796C45C(v191);
              goto LABEL_277;
            }

            goto LABEL_277;
          }

          (*(v166 + 120))(v171, v172 | (v173 << 32), v79, v165, v166);

          __swift_destroy_boxed_opaque_existential_1(v247);
          v200 = v219;
          sub_2479717E4();
          v246 = 0;
          v79 = v244;
          v238(v200, 0, 1, v244);
          v80 = *(v245 + 48);
          v72 = v241;
          if (v80(v241, 1, v79) != 1)
          {
            sub_24796C45C(v72);
          }

          sub_24796C4C4(v200, v72);
          if (v80(v72, 1, v79))
          {
            goto LABEL_201;
          }

LABEL_183:
          sub_247971804();
          goto LABEL_201;
        }

        if (v174 == 0xB4634D822B7084E5)
        {
          v79 = 0;
          goto LABEL_148;
        }

        v254 = 0;
        v255 = 0xE000000000000000;
        v212 = v174;
        sub_2479718B4();

        v254 = 0xD00000000000001ALL;
        v255 = 0x8000000247972280;
        v257 = v212;
        v213 = sub_2479718D4();
        MEMORY[0x24C1AF350](v213);

        v217 = 0;
        for (i = 924; ; i = 700)
        {
LABEL_288:
          v216 = i;
          v87 = sub_2479718C4();
          __break(1u);
LABEL_289:
          v254 = 0;
          v255 = 0xE000000000000000;
          v210 = v87;
          sub_2479718B4();

          v254 = 0xD00000000000001ALL;
          v255 = 0x8000000247972280;
          v257 = v210;
          v211 = sub_2479718D4();
          MEMORY[0x24C1AF350](v211);

          v217 = 0;
        }
      }

      v125 = v242[6];
      v126 = v242[7];
      __swift_project_boxed_opaque_existential_1(v242 + 3, v125);
      (*(v126 + 104))(v125, v126);
      v127 = v225;
      v128 = v243;
      sub_2479717E4();
      if (v128)
      {
        goto LABEL_64;
      }

      v246 = 0;
      v79 = v244;
      v238(v127, 0, 1, v244);
      v80 = *(v89 + 48);
      v72 = v241;
      v184 = v80(v241, 1, v79);
LABEL_156:
      if (v184 == 1)
      {
LABEL_158:
        v111 = v127;
        goto LABEL_159;
      }

LABEL_157:
      sub_24796C45C(v72);
      goto LABEL_158;
    }

    v72 = v241;
    if (v69 != 0x9A31449AF781DAA1)
    {
      if (v69 == 0x9A8ED7C9F66DB4DCLL)
      {
        v105 = v242[6];
        v106 = v242[7];
        __swift_project_boxed_opaque_existential_1(v242 + 3, v105);
        (*(v106 + 176))(v105, v106);
        v107 = &v257;
      }

      else
      {
        if (v69 != 0xA2C6205447591559)
        {
          goto LABEL_287;
        }

        v181 = v242[6];
        v182 = v242[7];
        __swift_project_boxed_opaque_existential_1(v242 + 3, v181);
        (*(v182 + 88))(v181, v182);
        v107 = &v252;
      }

LABEL_127:
      v127 = *(v107 - 32);
      v183 = v243;
      sub_2479717E4();
      if (!v183)
      {
        v246 = 0;
        v79 = v244;
        v238(v127, 0, 1, v244);
        v80 = *(v89 + 48);
        v184 = v80(v72, 1, v79);
        goto LABEL_156;
      }

LABEL_128:
      LODWORD(v79) = v250;
      result = (*(v89 + 48))(v72, 1, v244);
      goto LABEL_280;
    }

    v133 = v242[6];
    v134 = v242[7];
    __swift_project_boxed_opaque_existential_1(v242 + 3, v133);
    (*(v134 + 200))(v133, v134);
    v135 = v235;
    v136 = v243;
    sub_2479717E4();
    if (v136)
    {
      goto LABEL_128;
    }

    v246 = 0;
    v79 = v244;
    v238(v135, 0, 1, v244);
    v80 = *(v89 + 48);
    if (v80(v72, 1, v79) != 1)
    {
      sub_24796C45C(v72);
    }

    v97 = v135;
LABEL_71:
    sub_24796C4C4(v97, v72);
    v137 = v72;
    goto LABEL_112;
  }

  v71 = v245;
  if (v69 <= 0xE4883D286D903510)
  {
    v72 = v241;
    if (v69 == 0xAA9E7E89658C60C7)
    {
      v119 = v242[6];
      v120 = v242[7];
      __swift_project_boxed_opaque_existential_1(v242 + 3, v119);
      (*(v120 + 72))(v119, v120);
      v100 = &v251;
      goto LABEL_90;
    }

    if (v69 == 0xADE6FAE7D602FBADLL)
    {
      v98 = v242[6];
      v99 = v242[7];
      __swift_project_boxed_opaque_existential_1(v242 + 3, v98);
      (*(v99 + 208))(v98, v99);
      v100 = &v261;
      goto LABEL_90;
    }

    if (v69 != 0xB0FDC6F7A36AD198)
    {
      goto LABEL_287;
    }

    v142 = v242[6];
    v143 = v242[7];
    __swift_project_boxed_opaque_existential_1(v242 + 3, v142);
    (*(v143 + 152))(v142, v143);
    v144 = &v256;
    goto LABEL_101;
  }

  v72 = v241;
  if (v69 > 0xEF371B9ADE48574FLL)
  {
    if (v69 == 0xEF371B9ADE485750)
    {
      v112 = v242[6];
      v113 = v242[7];
      __swift_project_boxed_opaque_existential_1(v242 + 3, v112);
      v114 = sub_2479717D4();
      (*(v113 + 24))(v114, v112, v113);
      v115 = v243;
      sub_2479717E4();
      if (v115)
      {
        goto LABEL_279;
      }

      v246 = 0;
      v79 = v244;
      v238(v57, 0, 1, v244);
      v80 = *(v71 + 48);
      if (v80(v72, 1, v79) != 1)
      {
        sub_24796C45C(v72);
      }

      sub_24796C4C4(v57, v72);
      if (v80(v72, 1, v79))
      {
        goto LABEL_201;
      }

      sub_247971824();
LABEL_124:
      sub_247971824();
      goto LABEL_201;
    }

    if (v69 == 0xF92368B0DC2BDCC6)
    {
      v156 = v242[6];
      v157 = v242[7];
      __swift_project_boxed_opaque_existential_1(v242 + 3, v156);
      (*(v157 + 168))(v156, v157);
      v144 = &v258;
LABEL_101:
      v158 = *(v144 - 32);
      v159 = v243;
      sub_2479717E4();
      if (v159)
      {
        goto LABEL_279;
      }

      v246 = 0;
      v79 = v244;
      v238(v158, 0, 1, v244);
      v80 = *(v71 + 48);
      if (v80(v72, 1, v79) != 1)
      {
        sub_24796C45C(v72);
      }

      v160 = v158;
      goto LABEL_105;
    }

LABEL_287:
    v247[0] = 0;
    v247[1] = 0xE000000000000000;
    sub_2479718B4();
    MEMORY[0x24C1AF350](0xD000000000000036, 0x80000002479722A0);
    v254 = v70;
    v208 = sub_2479718D4();
    MEMORY[0x24C1AF350](v208);

    v217 = 0;
    i = 666;
    goto LABEL_288;
  }

  if (v69 != 0xE4883D286D903511)
  {
    if (v69 == 0xED1379E084BB7E44)
    {
      v149 = v242[6];
      v150 = v242[7];
      __swift_project_boxed_opaque_existential_1(v242 + 3, v149);
      (*(v150 + 184))(v149, v150);
      v100 = &v260;
LABEL_90:
      v127 = *(v100 - 32);
      v151 = v243;
      sub_2479717E4();
      if (v151)
      {
        goto LABEL_279;
      }

      v246 = 0;
      v79 = v244;
      v238(v127, 0, 1, v244);
      v80 = *(v71 + 48);
      if (v80(v72, 1, v79) == 1)
      {
        goto LABEL_158;
      }

      goto LABEL_157;
    }

    goto LABEL_287;
  }

  v73 = v242[6];
  v74 = v242[7];
  __swift_project_boxed_opaque_existential_1(v242 + 3, v73);
  v75 = sub_2479717A4();
  (*(v74 + 112))(&v251, v75 & 1, v73, v74);
  v76 = *(&unk_247971FC0 + ((v253 >> 11) & 0x18));
  v77 = v226;
  v78 = v243;
  sub_2479717E4();
  if (v78)
  {
LABEL_279:
    LODWORD(v79) = v250;
    result = (*(v71 + 48))(v72, 1, v244);
LABEL_280:
    if (result != 1)
    {
      v130 = v72;
      goto LABEL_282;
    }

    goto LABEL_283;
  }

  v246 = 0;
  v79 = v244;
  v238(v77, 0, 1, v244);
  v80 = *(v71 + 48);
  if (v80(v72, 1, v79) != 1)
  {
    sub_24796C45C(v72);
  }

  sub_24796C4C4(v77, v72);
  if (!v80(v72, 1, v79))
  {
    v81 = v246;
    sub_24796BE44(&v251);
    if (v81)
    {
      result = (v80)(v72, 1, v79);
      if (result != 1)
      {
        result = sub_24796C45C(v72);
      }

      goto LABEL_283;
    }

    v246 = 0;
  }

LABEL_201:
  v201 = (v80)(v72, 1, v79);
  v202 = v201;
  if (v201 == 1)
  {
    v203 = v237;
  }

  else
  {
    v203 = v237;
    if (v201)
    {
      sub_24796C45C(v72);
      v202 = 1;
    }

    else
    {
      sub_247971844();
    }
  }

  v204 = sub_247971864();
  return (*(*(v204 - 8) + 56))(v203, v202, 1, v204);
}

uint64_t sub_24796BE44(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 20);
  v3 = v2 >> 14;
  if (v2 >> 14 > 1)
  {
    if (v3 != 2)
    {
      if (v2 == 49152)
      {
        v12 = (a1[2] | a1[1] | v1 | a1[3] | a1[4]) == 0;
      }

      return sub_247971834();
    }

    sub_247971834();
    v8 = v1;
    v9 = &unk_247971FF8;
  }

  else
  {
    if (!v3)
    {
      v4 = a1[1];
      sub_247971834();
      sub_247971834();
      sub_247971814();
      sub_247971824();
      sub_247971834();
      sub_247971834();
      v5 = qword_247971FE0[v2];
      sub_247971834();
      v6 = qword_247972030[(v2 >> 8) & 0x3F];
      return sub_247971834();
    }

    v13 = *a1;
    sub_247971834();
    sub_247971824();
    v10 = qword_247971FE0[v1 << 24 >> 56];
    sub_247971834();
    v8 = v1 << 16 >> 56;
    v9 = qword_247972030;
  }

  v11 = v9[v8];
  return sub_247971834();
}

uint64_t sub_24796BFD8()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_24796C018@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  result = sub_2479693C8(a1, &v8, a3);
  if (v4)
  {
    *a2 = v8;
  }

  return result;
}

unint64_t sub_24796C0DC()
{
  result = qword_27EE58EF8;
  if (!qword_27EE58EF8)
  {
    type metadata accessor for SiriVoiceTriggerService.Server();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE58EF8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24796C178(void (*a1)(int *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = a4 - a3;
  if (a4 >= a3)
  {
    if ((a4 - a3) < 0)
    {
      goto LABEL_23;
    }

    goto LABEL_5;
  }

  if ((a3 - a4) >= 0)
  {
    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v20 = MEMORY[0x277D84F90];
    sub_24796C2F4(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v20;
      v10 = a4 - a3;
      if (a4 < a3)
      {
        v10 = 0;
      }

      v16 = v10 + 1;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v18 = a3 + v9;
        a1(&v19, &v18);
        if (v4)
        {
          goto LABEL_24;
        }

        v12 = v19;
        v20 = v8;
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_24796C2F4((v13 > 1), v14 + 1, 1);
          v8 = v20;
        }

        *(v8 + 16) = v14 + 1;
        *(v8 + 4 * v14 + 32) = v12;
        if (a4 < a3)
        {
          goto LABEL_19;
        }

        if (v16 == ++v9)
        {
          goto LABEL_20;
        }

        if (v11 == v7)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:

  __break(1u);
  return result;
}

char *sub_24796C2F4(char *a1, int64_t a2, char a3)
{
  result = sub_24796C314(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24796C314(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE58F08, &qword_247971FB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24796C45C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE58F00, &qword_247971FA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24796C4C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE58F00, &qword_247971FA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24796C534(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24796C5E4@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_2479717B4();
  *a1 = v5;
  return result;
}

void sub_24796F370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24796FBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24796FD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479706E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247970CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCSIsInternalBuildSymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreSpeechFoundationLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreSpeechFoundationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278EB6708;
    v8 = 0;
    CoreSpeechFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = CoreSpeechFoundationLibraryCore_frameworkLibrary;
  if (!CoreSpeechFoundationLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreSpeechFoundationLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"CSSecureSiriAudioProvidingProxy.m" lineNumber:22 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "CSIsInternalBuild");
  *(*(a1[4] + 8) + 24) = result;
  getCSIsInternalBuildSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getAudioCaptureInitializeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AudioCaptureLibrary();
  result = dlsym(v2, "AudioCaptureInitialize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAudioCaptureInitializeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AudioCaptureLibrary()
{
  v20 = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v0 = AudioCaptureLibraryCore_frameworkLibrary;
  v16 = AudioCaptureLibraryCore_frameworkLibrary;
  if (!AudioCaptureLibraryCore_frameworkLibrary)
  {
    v10[1] = MEMORY[0x277D85DD0];
    v10[2] = 3221225472;
    v10[3] = __AudioCaptureLibraryCore_block_invoke;
    v10[4] = &unk_278EB65A8;
    v11 = &v13;
    v12 = v10;
    v17 = xmmword_278EB6578;
    v18 = *off_278EB6588;
    v19 = 0;
    v14[3] = _sl_dlopen();
    AudioCaptureLibraryCore_frameworkLibrary = *(v11[1] + 24);
    v0 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v0)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AudioCaptureLibrary(void)"];
    v6 = v4;
    v7 = v4;
    v8 = v5;
    [v6 handleFailureInFunction:v5 file:@"CSSecureSiriAudioProvidingProxy.m" lineNumber:18 description:{@"%s", v10[0]}];
    v9 = v8;
    v0 = v7;

    __break(1u);
    goto LABEL_7;
  }

  v1 = v10[0];
  if (v10[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_247971094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AudioCaptureLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  AudioCaptureLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreSpeechFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpeechFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int8 *f32__v_visit(unsigned __int8 *result, uint64_t a2)
{
  v3 = result;
  v13 = *MEMORY[0x277D85DE8];
  v4 = *result;
  switch(v4)
  {
    case 1:
LABEL_10:
      v9 = v3[1];
      v10 = v3[2];
      tb_transport_message_buffer_wrap_buffer();
      if (!tb_message_construct())
      {
        result = tb_message_configure_received();
        if (v3[3])
        {
          v11 = 0;
          do
          {
            tb_message_decode_f32();
            result = (*(a2 + 16))(a2, v11++, 0.0);
          }

          while (v11 < v3[3]);
        }

        goto LABEL_14;
      }

      goto LABEL_16;
    case 2:
      v6 = *(result + 1);
      v7 = v3[2];
      v8 = v3[3];
      result = tb_message_subrange();
      if (!result)
      {
LABEL_14:
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }

      printf("TB_ASSERT: (vErr == TB_ERROR_SUCCESS) && tb_message_subrange failed, \b\b (%s:%d)\n", "CoreSpeechExclave_C.c", 1925);
      _os_crash();
      __break(1u);
      goto LABEL_10;
    case 3:
      if (*(result + 2))
      {
        v5 = 0;
        do
        {
          result = (*(a2 + 16))(a2, v5, *(v3[1] + 4 * v5));
          ++v5;
        }

        while (v5 < v3[2]);
      }

      goto LABEL_14;
  }

  printf("TB_FATAL: invalid tag in array metadata: 0x%x (%s:%d)\n", v4, "/Library/Caches/com.apple.xbs/Binaries/CoreSpeech_Common/install/TempContent/Objects/CoreSpeech.build/CoreSpeechExclave.build/DerivedSources/CoreSpeechExclave_C.c", 1928);
  _os_crash();
  __break(1u);
LABEL_16:
  printf("TB_ASSERT: (err == TB_ERROR_SUCCESS) && failed to wrap packed buffer, \b\b (%s:%d)\n", "CoreSpeechExclave_C.c", 1906);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t __f32__v_visit_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 40) + 32))
  {
    v2 = 0;
    do
    {
      tb_message_decode_f32();
      (*(*(a1 + 32) + 16))(0.0);
      ++v2;
    }

    while (v2 < *(*(a1 + 40) + 32));
  }

  return 0;
}

uint64_t corespeechexclave_voicetriggersecondpassresulttriggered__decode(uint64_t a1, uint64_t a2)
{
  tb_message_precheck_decoding();
  tb_message_raw_decode_u64();
  tb_message_raw_decode_f64();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u64();
  tb_message_raw_decode_u64();
  tb_message_raw_decode_u64();
  v3 = *(a2 + 40);
  if (v3 != 0x8F4B41BADF9BCEB7 && v3 != 0x63184B8076456B7FLL && v3 != 0xFD9F2E793902DAD9)
  {
    return 7;
  }

  tb_message_raw_decode_u64();
  result = 0;
  v5 = *(a2 + 48);
  if (v5 <= 0xA2CA431DF93DFCD4)
  {
    if (v5 == 0x92393AFA3ED5D670)
    {
      return result;
    }

    v6 = 0x95C28B8FC17A7457;
LABEL_10:
    if (v5 == v6)
    {
      return result;
    }

    return 7;
  }

  if (v5 != 0xA2CA431DF93DFCD5 && v5 != 0xCEA6F7204A05BC07)
  {
    v6 = 0x70B00C30047C77C5;
    goto LABEL_10;
  }

  return result;
}

uint64_t corespeechexclave_sirivoicetriggerservice_bargeinprocess(uint64_t *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *a1;
  result = tb_client_connection_message_construct();
  if (!result)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v7 = 0;
    v4 = *a1;
    tb_connection_send_query();
    v5 = *a1;
    result = tb_client_connection_message_destruct();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}