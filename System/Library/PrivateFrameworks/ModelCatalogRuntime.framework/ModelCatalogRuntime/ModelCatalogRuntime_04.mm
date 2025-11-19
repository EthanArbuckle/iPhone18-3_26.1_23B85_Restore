uint64_t sub_22D89E5F8()
{
  sub_22D84D198();
  v1 = *(v0 + 760);

  sub_22D84D800();
  v3 = *(v0 + 792);

  return v2();
}

void sub_22D89EC58()
{
  v229 = v0;
  v3 = v0[109];

  v4 = v0[111];
  v5 = v0[108];
  v6 = v0[93];

  v7 = v4;
  v8 = sub_22D8B176C();
  sub_22D8B1C4C();

  if (sub_22D84DFC0())
  {
    sub_22D84DD3C();
    v9 = sub_22D84C600();
    *v1 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    sub_22D8AF7F8(v11);
    sub_22D8516B0();
    sub_22D8AF804(v12, v13, v14, v15);
    sub_22D84D014(v9, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84F8CC();
    sub_22D84D6DC();
  }

  else
  {
  }

  v16 = v0[100];
  v206 = sub_22D8B10EC();
  v17 = sub_22D8B193C();
  v218 = v0;
  if (v16)
  {
    v19 = 0;
    v20 = 0;
    v209 = (v0 + 83);
    v21 = v0[103];
    v204 = v0[94] + 32;
    *&v18 = 136315138;
    v199 = v18;
    v203 = v21;
    while (1)
    {
      if (v20 >= *(v0[94] + 16))
      {
        goto LABEL_75;
      }

      sub_22D84E298(v204 + 40 * v20, (v0 + 54));
      v23 = v0[57];
      v22 = v0[58];
      sub_22D84E4D0(v0 + 54);
      v24 = sub_22D8B0A5C();
      if (!*(v21 + 16))
      {
        break;
      }

      v26 = v0[103];
      v27 = sub_22D852D10(v24, v25);
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        goto LABEL_30;
      }

      HIDWORD(v205) = *(*(v21 + 56) + v27);
      v31 = v0[57];
      v30 = v0[58];
      sub_22D84E4D0(v0 + 54);
      v32 = sub_22D8B0A7C();
      v4 = *(v32 + 16);
      if (v4)
      {
        v202 = v20;
        v33 = sub_22D8B12BC();
        v34 = sub_22D8AF994(v33);
        v201 = v32;
        v36 = v32 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
        v216 = *(v37 + 72);
        v212 = (v35 + 16);
        v214 = *(v37 + 64) + 15;
        v210 = v34;
        v211 = (v35 + 8);
        while (1)
        {
          v225 = v4;
          v38 = v218[92];
          v39 = swift_task_alloc();
          v40 = *v212;
          v222 = v36;
          sub_22D8AFE88();
          v41();
          v42 = sub_22D8B0D8C();
          sub_22D84D7DC(v42);
          v44 = v43;
          v46 = *(v45 + 64);
          v2 = sub_22D8AFA9C();
          sub_22D8B127C();
          sub_22D8B0D1C();
          sub_22D8AF424();
          v47 = *(v44 + 8);
          v48 = sub_22D87294C();
          v219 = v49;
          (v49)(v48);
          v218[83] = v2;
          v218[84] = v4;
          v50 = swift_task_alloc();
          v51 = sub_22D8AF114(v50, v209);
          LOBYTE(v38) = sub_22D855C1C(v51, v52, v38);

          if (v38)
          {
            break;
          }

          v76 = sub_22D84F910(v53, v54, v55, v56, v57, v58, v59, v60, v199, *(&v199 + 1), v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211);
          v77(v76);
LABEL_27:

          v36 = v222 + v216;
          v4 = v225 - 1;
          if (v225 == 1)
          {

            v0 = v218;
            v20 = v202;
            v21 = v203;
            goto LABEL_34;
          }
        }

        v61 = sub_22D8B128C();
        v62 = swift_task_alloc();
        sub_22D8B127C();
        sub_22D8B0D1C();
        sub_22D854FE4();
        v219(v62, v42);
        v63 = *(v17 + 16);
        if (v61)
        {
          if (v63)
          {
            sub_22D852D10(v62, v2);
            v65 = v64;

            if (v65)
            {
              v74 = sub_22D8AF940(v66, v67, v68, v69, v70, v71, v72, v73, v199, *(&v199 + 1), v200, v201, v202, v203, v204, v205, v206, v39, v19, v209, v210, v211);
              v75(v74);
              goto LABEL_25;
            }
          }

          else
          {
          }

          swift_task_alloc();
          sub_22D8AFAB4();
          sub_22D8B0D1C();
          v93 = sub_22D8508F8();
          v42(v93);
          v94 = objc_allocWithZone(v206);
          sub_22D853B64();
LABEL_24:
          sub_22D8B109C();
          swift_isUniquelyReferenced_nonNull_native();
          v228 = v17;
          sub_22D84C55C();
          sub_22D8AF214();
          sub_22D8AD600();

          v105 = sub_22D84F910(v97, v98, v99, v100, v101, v102, v103, v104, v199, *(&v199 + 1), v200, v201, v202, v203, v204, v205, v206, v39, v19, v209, v210, v211);
          v106(v105);
LABEL_25:

LABEL_26:
          v19 = v208;
          goto LABEL_27;
        }

        if (v63)
        {
          v78 = sub_22D852D10(v62, v2);
          v80 = v79;

          if (v80)
          {
            v81 = *(*(v17 + 56) + 8 * v78);

            v82 = v81;
            sub_22D8B10AC();
            sub_22D8B10BC();
            sub_22D8B107C();
            sub_22D8B108C();
            sub_22D8B10CC();
            sub_22D8B10DC();

            v91 = sub_22D8AF940(v83, v84, v85, v86, v87, v88, v89, v90, v199, *(&v199 + 1), v200, v201, v202, v203, v204, v205, v206, v39, v19, v209, v210, v211);
            v92(v91);
            goto LABEL_26;
          }
        }

        else
        {
        }

        swift_task_alloc();
        sub_22D8AFAB4();
        sub_22D8B0D1C();
        v95 = sub_22D8508F8();
        v42(v95);
        v96 = objc_allocWithZone(v206);
        goto LABEL_24;
      }

LABEL_34:
      ++v20;
      v122 = v0[100];
      sub_22D84D8A0(v0 + 54);
      if (v20 == v122)
      {
        goto LABEL_35;
      }
    }

LABEL_30:
    v107 = v0[93];
    sub_22D84E298((v0 + 54), (v0 + 59));
    v108 = sub_22D8B176C();
    v109 = sub_22D8B1C4C();
    if (sub_22D84F8E8(v109))
    {
      v110 = sub_22D84DD3C();
      v111 = sub_22D84CE7C();
      sub_22D8AF8E4(v111, v112, v113, v114, v115, v116, v117, v118, v199);
      sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
      sub_22D8B1A3C();
      sub_22D8AFE7C();
      sub_22D84D8A0(v0 + 59);
      v119 = sub_22D8AF220();
      sub_22D84C63C(v119, v120, v121);
      sub_22D84D0E8();
      v21 = v203;

      *(v110 + 4) = v2;
      sub_22D8AF804(&dword_22D84A000, v108, v109, "could not find resource: %s inside resourceToReadinessMapping");
      sub_22D84D8A0(v4);
      sub_22D8AF038();
      sub_22D84D6DC();
    }

    else
    {

      sub_22D84D8A0(v0 + 59);
    }

    goto LABEL_34;
  }

LABEL_35:
  v123 = v0[94];
  v124 = v0[92];

  v126 = v17 + 64;
  v125 = *(v17 + 64);
  v127 = *(v17 + 32);
  sub_22D84E484();
  v130 = v129 & v128;
  sub_22D8AF3E8();
  v132 = v131 >> 6;
  v227 = v133;

  v134 = 0;
  v226 = v126;
  if (!v130)
  {
    goto LABEL_37;
  }

  do
  {
    v135 = v134;
LABEL_40:
    v136 = v0[93];
    v137 = __clz(__rbit64(v130));
    v130 &= v130 - 1;
    v138 = v137 | (v135 << 6);
    v139 = (*(v227 + 48) + 16 * v138);
    v140 = *v139;
    v141 = v139[1];
    v142 = *(*(v227 + 56) + 8 * v138);

    v124 = sub_22D8B176C();
    v143 = sub_22D8B1C6C();

    if (os_log_type_enabled(v124, v143))
    {
      v144 = sub_22D8AF4E8();
      v220 = v124;
      v145 = sub_22D84E1FC();
      v223 = sub_22D84CE7C();
      v228 = v223;
      *v144 = 136315394;
      v146 = sub_22D84C63C(v140, v141, &v228);

      *(v144 + 4) = v146;
      *(v144 + 12) = 2112;
      *(v144 + 14) = v142;
      *v145 = v142;
      v147 = v142;
      _os_log_impl(&dword_22D84A000, v220, v143, "useCase: %s has availability: %@", v144, 0x16u);
      sub_22D84D014(v145, &qword_27DA0D4D0, &qword_22D8B3400);
      sub_22D85167C();
      v124 = v223;
      sub_22D84D8A0(v223);
      sub_22D85167C();
      sub_22D84F8CC();
    }

    else
    {
    }

    v134 = v135;
    v0 = v218;
    v126 = v226;
  }

  while (v130);
  while (1)
  {
LABEL_37:
    v135 = v134 + 1;
    if (__OFADD__(v134, 1))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      sub_22D8AF90C();

      sub_22D8B1FBC();
      return;
    }

    if (v135 >= v132)
    {
      break;
    }

    v130 = *(v126 + 8 * v135);
    ++v134;
    if (v130)
    {
      goto LABEL_40;
    }
  }

  v148 = v227;

  sub_22D8B113C();
  sub_22D8AF1BC(&qword_2814591E8);
  v213 = sub_22D8B193C();
  v149 = -1 << *(v227 + 32);
  v150 = *(v227 + 64);
  sub_22D8AFD30();
  v153 = v151 & v152;
  v155 = (63 - v154) >> 6;

  v156 = 0;
  v217 = v155;
  while (1)
  {
    v157 = v156;
    if (v153)
    {
      goto LABEL_47;
    }

    do
    {
      v156 = v157 + 1;
      if (__OFADD__(v157, 1))
      {
        goto LABEL_74;
      }

      if (v156 >= v155)
      {
        sub_22D8AFD10();

        (v156)(v213, 0);

        sub_22D84D800();
        sub_22D8AF90C();

        __asm { BRAA            X1, X16 }
      }

      v153 = *(v126 + 8 * v156);
      ++v157;
    }

    while (!v153);
    while (2)
    {
      sub_22D8AFD64();
      v159 = v158 | (v156 << 6);
      v160 = (*(v148 + 48) + 16 * v159);
      v161 = v160[1];
      v221 = *(*(v148 + 56) + 8 * v159);
      v224 = *v160;
      v162 = sub_22D8B0D8C();
      sub_22D84D7DC(v162);
      v215 = v163;
      v165 = *(v164 + 64);
      v166 = sub_22D8AF5EC();
      v167 = sub_22D8580D8(qword_27DA0D9F0, &unk_22D8B4DE0);
      sub_22D84C3FC(v167);
      v169 = *(v168 + 64);
      sub_22D84C584();
      sub_22D8AF338();
      swift_bridgeObjectRetain_n();
      v170 = v221;
      sub_22D8B0D7C();
      v171 = sub_22D8AF22C();
      sub_22D8AFBB4(v171, v172, v162);
      if (v173)
      {

        sub_22D84D014(v124, qword_27DA0D9F0, &unk_22D8B4DE0);

        v157 = v156;
        v148 = v227;
LABEL_47:
        v156 = v157;
        continue;
      }

      break;
    }

    v174 = *(v215 + 32);
    sub_22D8AF0BC();
    v175();

    swift_task_alloc();
    (*(v215 + 16))();
    v176 = sub_22D8B112C();

    v177 = v213;
    if ((v213 & 0xC000000000000001) != 0)
    {
      if (v213 >= 0)
      {
        v177 = v213 & 0xFFFFFFFFFFFFFF8;
      }

      v178 = v170;
      v179 = sub_22D8B1EDC();
      if (__OFADD__(v179, 1))
      {
        goto LABEL_80;
      }

      v177 = sub_22D8ACE5C(v177, v179 + 1);
    }

    else
    {
      v180 = v170;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v228 = v177;
    sub_22D870F3C(v176);
    v181 = *(v177 + 16);
    sub_22D8AF02C();
    if (__OFADD__(v184, v185))
    {
      break;
    }

    v186 = v182;
    v187 = v183;
    sub_22D8580D8(&qword_27DA0DCA0, &qword_22D8B4E08);
    v188 = sub_22D8B1EAC();
    v124 = v228;
    if (v188)
    {
      sub_22D870F3C(v176);
      sub_22D850930();
      if (!v173)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v189 = v186;
    }

    v126 = v226;
    v213 = v124;
    if (v187)
    {
      isa = v124[7].isa;
      v191 = *(isa + v189);
      v124 = v170;
      *(isa + v189) = v170;

      (*(v215 + 8))(v166, v162);
    }

    else
    {
      sub_22D8AF544();
      sub_22D84DDB0(v192);
      *(v124[6].isa + v193) = v176;
      *(v124[7].isa + v193) = v170;

      (*(v215 + 8))(v166, v162);
      sub_22D8AF538();
      if (v195)
      {
        goto LABEL_81;
      }

      v124[2].isa = v194;
    }

    v148 = v227;
    v155 = v217;
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
}

uint64_t sub_22D89F92C(uint64_t a1)
{
  v1 = sub_22D84E124((a1 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_unifiedAssetInterface), *(a1 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_unifiedAssetInterface + 24));
  sub_22D8580D8(&qword_27DA0DC98, &unk_22D8B4DF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D8B3470;
  *(inited + 32) = sub_22D8B0DAC();
  *(inited + 40) = v3;
  *(inited + 48) = MEMORY[0x277D84F90];
  sub_22D8580D8(&qword_27DA0D7A0, &unk_22D8B3B50);
  sub_22D8B193C();
  v4 = *v1;
  sub_22D8678C0();

  return sub_22D8B1D0C();
}

void sub_22D89FAC4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_22D8B113C();
    sub_22D8B10EC();
    sub_22D8AEC30(&qword_2814591E8, MEMORY[0x282221C18]);
    v5 = sub_22D8B190C();
  }

  if (a2)
  {
    v6 = sub_22D8B068C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_22D89FBDC()
{
  sub_22D8B0028();
  sub_22D8AFEA0();
  v4 = v3;
  v5 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  sub_22D84C3FC(v5);
  v7 = *(v6 + 64);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v8);
  sub_22D8B1B9C();
  sub_22D84E35C();
  sub_22D84C4F8(v9, v10, v11, v12);
  sub_22D8AF500();
  v13 = swift_allocObject();
  v14 = sub_22D8AFDA4(v13);
  v14[4] = v1;
  v14[5] = v4;
  v14[6] = v2;
  v15 = v1;

  v16 = sub_22D862778();
  v0(v16);

  sub_22D8AFEDC();
}

uint64_t sub_22D89FCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  return MEMORY[0x2822009F8](sub_22D89FCD4, 0, 0);
}

uint64_t sub_22D89FCD4()
{
  sub_22D872924();
  v1 = v0[9];
  v2 = sub_22D8B0B2C();
  v0[12] = v2;
  sub_22D84C5D0(v2);
  v0[13] = v3;
  v0[14] = *(v4 + 64);
  v5 = sub_22D84C584();
  v0[15] = v5;
  v6 = (v1 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_subscriptionManager);
  v7 = *(v1 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_subscriptionManager + 24);
  v8 = v6[4];
  sub_22D84E124(v6, v7);
  sub_22D8580D8(&qword_27DA0DC98, &unk_22D8B4DF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D8B3470;
  *(inited + 32) = sub_22D8B0FCC();
  *(inited + 40) = v10;
  sub_22D8580D8(&qword_27DA0D7E0, &unk_22D8B3D70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22D8B3470;
  *(v11 + 32) = sub_22D8B116C();
  *(v11 + 40) = v12;
  *(inited + 48) = v11;
  sub_22D8580D8(&qword_27DA0D7A0, &unk_22D8B3B50);
  v13 = sub_22D8B193C();
  v0[16] = v13;
  v14 = *(MEMORY[0x277D29C80] + 4);
  swift_task_alloc();
  sub_22D84DDC0();
  v0[17] = v15;
  *v15 = v16;
  v15[1] = sub_22D89FEAC;

  return MEMORY[0x282188950](v5, v13, v7, v8);
}

uint64_t sub_22D89FEAC()
{
  sub_22D84D198();
  sub_22D84C734();
  v2 = *(v1 + 136);
  v3 = *(v1 + 128);
  v4 = *v0;
  sub_22D84CED0();
  *v5 = v4;

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22D89FFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22D8AF47C();
  sub_22D8516FC();
  v13 = v12[14];
  v14 = v12[15];
  v15 = v12[12];
  v16 = v12[13];
  v17 = sub_22D84C584();
  (*(v16 + 104))(v17, *MEMORY[0x277D29AC0], v15);
  sub_22D8551D4(&qword_281459220, MEMORY[0x282221910]);
  sub_22D8AF448();
  v18 = sub_22D8B19AC();
  v19 = *(v16 + 8);
  v19(v17, v15);

  if (v18)
  {
    sub_22D8AF0E0((v12[9] + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_unifiedAssetInterface), *(v12[9] + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_unifiedAssetInterface + 24));
    v20 = sub_22D8B0FCC();
    v22 = v21;
    v23 = sub_22D8B116C();
    v24 = *v18;
    v26 = sub_22D8651BC(v20, v22, v23, v25);

    v35 = objc_allocWithZone(sub_22D8B11CC());
    v28 = sub_22D8B11BC();
    if (qword_2814589E0 != -1)
    {
      sub_22D86845C();
      swift_once();
    }

    v36 = sub_22D8B178C();
    sub_22D84DD10(v36, qword_281459298);
    v37 = sub_22D8B176C();
    v31 = sub_22D8B1C6C();
    if (os_log_type_enabled(v37, v31))
    {
      v38 = sub_22D84DD3C();
      *v38 = 134217984;
      *(v38 + 4) = v26;
      sub_22D8B0144(&dword_22D84A000, v37, v31, "siriResourceAvailability: Out of space, disk space required: %lld");
      sub_22D84F8CC();
    }

    v34 = v12[10];
    v39 = v12[11];
  }

  else
  {
    v27 = objc_allocWithZone(sub_22D8B11CC());
    sub_22D853B64();
    v28 = sub_22D8B11BC();
    if (qword_2814589E0 != -1)
    {
      sub_22D86845C();
      swift_once();
    }

    v29 = sub_22D8B178C();
    sub_22D84DD10(v29, qword_281459298);
    v30 = sub_22D8B176C();
    v31 = sub_22D8B1C6C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = sub_22D85225C();
      sub_22D8AFA30(v32);
      sub_22D8AFC78(&dword_22D84A000, v30, v31, "siriResourceAvailability: Enough storage on disk.");
      sub_22D84D6DC();
    }

    v34 = v12[10];
    v33 = v12[11];
  }

  v40 = v28;
  v41 = sub_22D8AF384();
  v34(v41);

  v19(v12[15], v12[12]);

  sub_22D84D800();
  sub_22D8AF2C0();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t sub_22D8A03C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x277D85DE8];
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[20] = a4;
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22D8A0460, 0, 0);
}

void sub_22D8A0460()
{
  sub_22D8516FC();
  v363 = v0;
  v1 = v0;
  v362 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(*(v0 + 160) + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_catalogIndex);
  sub_22D8B092C();
  v5 = 0;
  if (!*(v0 + 80))
  {
    sub_22D84D014(v0 + 56, &qword_27DA0DC70, &unk_22D8B4C10);
    v138 = 0x281458000;
    if (qword_2814589E0 != -1)
    {
      goto LABEL_182;
    }

    goto LABEL_69;
  }

  sub_22D851550((v0 + 56), v0 + 16);
  v22 = *(v0 + 40);
  v21 = *(v1 + 48);
  sub_22D8AF0E0((v1 + 16), *(v1 + 40));
  sub_22D8AF778();
  v23 = sub_22D8B0B3C();
  v24 = sub_22D8B193C();
  v351 = *(v23 + 16);
  v344 = v1;
  if (v351)
  {
    v25 = 0;
    v5 = v23 + 32;
    v349 = v23;
    do
    {
      if (v25 >= *(v23 + 16))
      {
        goto LABEL_173;
      }

      sub_22D84E298(v5, v1 + 96);
      v26 = *(v1 + 128);
      sub_22D8AF0E0((v1 + 96), *(v1 + 120));
      sub_22D8AF778();
      v27 = sub_22D8B0A4C();
      v29 = v28;
      v30 = *(v1 + 128);
      sub_22D8AF0E0((v1 + 96), *(v1 + 120));
      sub_22D8AF778();
      v1 = sub_22D8B0A6C();
      v355 = v31;
      swift_isUniquelyReferenced_nonNull_native();
      v358 = v24;
      v32 = sub_22D8AF784();
      sub_22D852D10(v32, v33);
      v34 = *(v24 + 16);
      sub_22D8AF02C();
      if (__OFADD__(v37, v38))
      {
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
        goto LABEL_180;
      }

      v39 = v35;
      v40 = v36;
      sub_22D8580D8(&qword_27DA0DC08, &qword_22D8B4A80);
      sub_22D8AF82C();
      if (sub_22D8B1EAC())
      {
        v41 = sub_22D8AF784();
        sub_22D852D10(v41, v42);
        sub_22D8554D4();
        if (!v44)
        {
          v289 = *MEMORY[0x277D85DE8];
          sub_22D872A24();

          sub_22D8B1FBC();
          return;
        }

        v39 = v43;
      }

      if (v40)
      {

        v24 = v358;
        sub_22D8AFD98(v358[7]);
        *v45 = v1;
        v45[1] = v355;
      }

      else
      {
        v24 = v358;
        sub_22D84DDB0(&v358[v39 >> 6]);
        v46 = (v358[6] + 16 * v39);
        *v46 = v27;
        v46[1] = v29;
        v47 = (*(v24 + 56) + 16 * v39);
        *v47 = v1;
        v47[1] = v355;
        v48 = *(v24 + 16);
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_178;
        }

        *(v24 + 16) = v50;
      }

      ++v25;
      v1 = v344;
      sub_22D84D8A0(v344 + 12);
      v5 += 40;
      v23 = v349;
    }

    while (v351 != v25);
  }

  v325 = v1 + 136;
  v331 = (v1 + 152);
  v51 = *(v1 + 160);

  sub_22D8580D8(&qword_27DA0D828, &unk_22D8B4DB0);
  sub_22D8B193C();
  v52 = 0;
  v53 = -1 << *(v24 + 32);
  if (-v53 < 64)
  {
    v54 = ~(-1 << -v53);
  }

  else
  {
    v54 = -1;
  }

  v5 = v54 & *(v24 + 64);
  v55 = OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_variantResolverMappings;
  sub_22D8AF3E8();
  v58 = v57 >> 6;
  v350 = v24;
  v341 = v56;
  v342 = v59;
  v356 = v57 >> 6;
LABEL_27:
  while (2)
  {
    if (v5)
    {
LABEL_32:
      v61 = (v52 << 10) | (16 * __clz(__rbit64(v5)));
      v62 = *(v24 + 56);
      v63 = (*(v24 + 48) + v61);
      v64 = *v63;
      v65 = v63[1];
      v66 = (v62 + v61);
      v67 = *v66;
      isUniquelyReferenced_nonNull_native = v66[1];
      v69 = *(v51 + v55);
      v70 = *(v69 + 16);

      if (v70)
      {

        v71 = sub_22D852D10(v64, v65);
        if (v72)
        {
          v5 &= v5 - 1;
          v73 = *(*(v69 + 56) + 8 * v71);
          v24 = v350;
          if (!*(v73 + 16))
          {
LABEL_37:

            v56 = v341;
            v58 = v356;
            continue;
          }

          v74 = sub_22D852D10(v67, isUniquelyReferenced_nonNull_native);
          if ((v75 & 1) == 0)
          {

            goto LABEL_37;
          }

          v336 = v55;
          v338 = v51;
          v76 = *(*(v73 + 56) + 8 * v74);
          v77 = *(v76 + 64);
          v322 = v76 + 64;
          v78 = *(v76 + 32);
          sub_22D855954();
          v79 = sub_22D8580D8(&qword_27DA0D830, &unk_22D8B3E10);
          sub_22D84C3FC(v79);
          v329 = *(v80 + 64) + 15;
          v333 = swift_task_alloc();
          v321 = (63 - v73) >> 6;
          v323 = v76;
          swift_bridgeObjectRetain_n();
          v1 = 0;
          v334 = v65;
          while (1)
          {
            v81 = swift_task_alloc();
            if (v55)
            {
              v82 = v1;
LABEL_46:
              v352 = (v55 - 1) & v55;
              v84 = __clz(__rbit64(v55)) | (v82 << 6);
              v85 = *(sub_22D8B122C() - 8);
              v86 = *(v85 + 64);
              sub_22D84C584();
              v87 = *(v323 + 48) + *(v85 + 72) * v84;
              (*(v85 + 16))();
              v88 = *(*(v323 + 56) + 8 * v84);
              v89 = sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
              v90 = *(v89 + 48);
              v91 = *(v85 + 32);
              v92 = sub_22D8AF448();
              v93(v92);
              *(v81 + v90) = v88;
              sub_22D84C4F8(v81, 0, 1, v89);

              v24 = v350;
              v65 = v334;
              v83 = v333;
            }

            else
            {
              v83 = v333;
              while (1)
              {
                v82 = v1 + 1;
                if (__OFADD__(v1, 1))
                {
                  goto LABEL_179;
                }

                if (v82 >= v321)
                {
                  break;
                }

                v55 = *(v322 + 8 * v82);
                ++v1;
                if (v55)
                {
                  v1 = v82;
                  goto LABEL_46;
                }
              }

              sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
              sub_22D84E35C();
              sub_22D84C4F8(v131, v132, v133, v134);
              v352 = 0;
            }

            v94 = sub_22D8AF0D4();
            sub_22D8AED30(v94, v95, &qword_27DA0D830, &unk_22D8B3E10);

            sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
            v96 = sub_22D8AEFC8();
            sub_22D8AFBB4(v96, 1, v81);
            if (v44)
            {

              v55 = v336;
              v51 = v338;
              v56 = v341;
              v58 = v356;
              goto LABEL_27;
            }

            v97 = sub_22D8B122C();
            sub_22D84D7DC(v97);
            v99 = v98;
            v101 = *(v100 + 64);
            v102 = sub_22D84C584();
            v346 = *(v83 + *(v81 + 48));
            (*(v99 + 32))(v102, v83, v97);
            v103 = sub_22D8B121C();
            if (!*(v342 + 16))
            {
              break;
            }

            sub_22D852D10(v103, v104);
            v106 = v105;

            v55 = v352;
            if ((v106 & 1) == 0)
            {
              goto LABEL_60;
            }

            v64 = sub_22D8B121C();
            v108 = v107;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v358 = v342;
            v327 = sub_22D852D10(v64, v108);
            v109 = *(v342 + 16);
            sub_22D8AF02C();
            if (__OFADD__(v111, v112))
            {
              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              sub_22D86845C();
              swift_once();
LABEL_164:
              v305 = sub_22D8B178C();
              sub_22D84DD10(v305, qword_281459298);

              v306 = sub_22D8B176C();
              sub_22D8B1C4C();

              v1 = v344;
              if (sub_22D868510())
              {
                sub_22D84DD3C();
                v307 = sub_22D854F30();
                v358 = v307;
                *isUniquelyReferenced_nonNull_native = 136315138;
                *(isUniquelyReferenced_nonNull_native + 4) = sub_22D84C63C(v64, v65, &v358);
                sub_22D84E1F0();
                sub_22D8B015C(v308, v309, v310, v311);
                sub_22D84D8A0(v307);
                sub_22D84D6DC();
                sub_22D8AF2DC();
              }

              v312 = sub_22D8B09FC();
              sub_22D8AF63C(&qword_27DA0DC90);
              sub_22D8AFC60();
              sub_22D8AF360();
              sub_22D8B1E2C();

              sub_22D84F5A0();
              v314 = sub_22D8AFD44(v313);
              MEMORY[0x2318D4340](v314, v65);
              v315 = v358;
              v316 = v359;
              *isUniquelyReferenced_nonNull_native = v64;
              *(isUniquelyReferenced_nonNull_native + 8) = v65;
              *(isUniquelyReferenced_nonNull_native + 16) = v315;
              *(isUniquelyReferenced_nonNull_native + 24) = v316;
              v317 = *MEMORY[0x277D29A60];
              sub_22D84C5C4(v312);
              (*(v318 + 104))(isUniquelyReferenced_nonNull_native);
LABEL_167:
              swift_willThrow();

              sub_22D84D8A0((v1 + 16));
              v154 = 0x281458000;
LABEL_2:
              if (*(v154 + 2528) == -1)
              {
LABEL_3:
                v6 = sub_22D8B178C();
                sub_22D84C6FC(v6, qword_281459298);
                v7 = sub_22D8AF054();
                v8 = sub_22D8B176C();
                v9 = sub_22D8B1C4C();

                if (os_log_type_enabled(v8, v9))
                {
                  v10 = sub_22D84DD3C();
                  v11 = sub_22D84E1FC();
                  *v10 = 138412290;
                  v12 = v5;
                  v13 = _swift_stdlib_bridgeErrorToNSError();
                  *(v10 + 4) = v13;
                  *v11 = v13;
                  _os_log_impl(&dword_22D84A000, v8, v9, "supportedArguments: error while processing request %@.", v10, 0xCu);
                  sub_22D84D014(v11, &qword_27DA0D4D0, &qword_22D8B3400);
                  sub_22D84DDE4();
                  sub_22D8AF038();
                }

                v15 = *(v1 + 184);
                v14 = *(v1 + 192);

                v16 = v5;
                v15(0, v5);

LABEL_6:
                v17 = *(v1 + 8);
                v18 = *MEMORY[0x277D85DE8];
                sub_22D872A24();

                __asm { BRAA            X1, X16 }
              }

LABEL_180:
              sub_22D86845C();
              swift_once();
              goto LABEL_3;
            }

            v113 = v110;
            sub_22D8580D8(&unk_27DA0D840, &qword_22D8B3E20);
            sub_22D8AF82C();
            if (sub_22D8B1EAC())
            {
              v327 = sub_22D852D10(v64, v108);
              sub_22D8554D4();
              if (!v44)
              {
                goto LABEL_150;
              }
            }

            v64 = v346;
            if ((v113 & 1) == 0)
            {
              goto LABEL_184;
            }

            sub_22D855238();
            v116 = *(v114 + 8 * v115);
            *v331 = v346;
            LOBYTE(v114) = *(v116 + 32);
            v117 = v114 & 0x3F;
            v118 = 1 << v114;
            isStackAllocationSafe = swift_task_alloc();
            *(isStackAllocationSafe + 16) = v331;
            *(isStackAllocationSafe + 24) = v116;
            v120 = (v118 + 63) >> 6;
            if (v117 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
            {
              MEMORY[0x28223BE20](isStackAllocationSafe);
              sub_22D8AFE88();
              sub_22D88C8E8(v121, v122, v123);
              sub_22D8AF430();
              sub_22D8AE3D4(v124, v125, v126, v116);
              sub_22D85331C();
            }

            else
            {
              v137 = swift_slowAlloc();
              sub_22D8AE560(v137, v120, sub_22D8AEB84);
              sub_22D85331C();

              sub_22D8AF038();

              v65 = v334;
              v55 = v352;
            }

            v24 = v350;
            if (v120)
            {

              sub_22D855238();
              *(v127 + 8 * v128) = v120;
            }

            else
            {

              sub_22D872840(v358[6] + 16 * v327);
              sub_22D851E68();
              sub_22D8B1EBC();
            }

            v135 = sub_22D8AFD78();
            v136(v135);

            v342 = v358;
LABEL_64:
          }

          v55 = v352;
LABEL_60:
          sub_22D8B121C();
          sub_22D851EAC(v346);
          swift_isUniquelyReferenced_nonNull_native();
          v358 = v342;
          sub_22D8AD538();
          v65 = v334;

          v129 = sub_22D8AFD78();
          v130(v129);
          v24 = v350;
          goto LABEL_64;
        }
      }

      if (qword_2814589E0 != -1)
      {
        goto LABEL_185;
      }

      goto LABEL_164;
    }

    break;
  }

  while (1)
  {
    v60 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v60 >= v58)
    {

      if (*(v342 + 16))
      {
        v337 = v55;
        v339 = v51;
        v1 = v342 + 64;
        v155 = *(v342 + 64);
        v156 = *(v342 + 32);
        sub_22D84E484();
        v159 = v158 & v157;
        sub_22D8AF3E8();
        v138 = (v160 >> 6);

        v161 = 0;
        v162 = MEMORY[0x277D84F90];
        v357 = MEMORY[0x277D84F90];
        for (i = MEMORY[0x277D84F90]; ; i[v183 + 4] = v5)
        {
          v5 = 0;
          if (v159)
          {
            v163 = v342;
            goto LABEL_81;
          }

          v163 = v342;
          do
          {
            v164 = v161 + 1;
            if (__OFADD__(v161, 1))
            {
              goto LABEL_175;
            }

            if (v164 >= v138)
            {

              v360 = sub_22D893F6C(v193);
              v361 = v194;
              v332 = v360;

              v335 = MEMORY[0x277D84F90];
LABEL_95:
              while (1)
              {
                sub_22D894070();
                if (!v195)
                {
                  break;
                }

                v196 = v195;
                v340 = v5;
                sub_22D8AF778();
                v138 = sub_22D8B193C();
                v197 = 0;
                v345 = v196;
                v347 = *(v357 + 16);
                while (v347 != v197)
                {
                  sub_22D8AF988(v357);
                  if (v273)
                  {
                    __break(1u);
LABEL_171:
                    __break(1u);
LABEL_172:
                    __break(1u);
LABEL_173:
                    __break(1u);
                    goto LABEL_174;
                  }

                  if (v199 >= *(v196 + 16))
                  {
                    goto LABEL_171;
                  }

                  v353 = v199;
                  v201 = *(v357 + v198 + 32);
                  v200 = *(v357 + v198 + 40);
                  v5 = v198;
                  v202 = *(v196 + v198 + 32);
                  v203 = *(v196 + v198 + 40);

                  swift_isUniquelyReferenced_nonNull_native();
                  v358 = v138;
                  v204 = sub_22D8AF784();
                  sub_22D852D10(v204, v205);
                  v206 = v138[2];
                  sub_22D8AF02C();
                  if (__OFADD__(v209, v210))
                  {
                    goto LABEL_172;
                  }

                  v1 = v207;
                  v211 = v208;
                  sub_22D8580D8(&qword_27DA0DC08, &qword_22D8B4A80);
                  sub_22D8AF82C();
                  v212 = sub_22D8B1EAC();
                  v138 = v358;
                  if (v212)
                  {
                    v213 = sub_22D8AF784();
                    sub_22D852D10(v213, v214);
                    sub_22D8554D4();
                    if (!v44)
                    {
LABEL_150:
                      sub_22D8B1FBC();
                      goto LABEL_151;
                    }

                    v1 = v215;
                  }

                  if (v211)
                  {
                    v216 = (v138[7] + 16 * v1);
                    v217 = v216[1];
                    *v216 = v202;
                    v216[1] = v203;
                  }

                  else
                  {
                    sub_22D84DDB0(&v138[v1 >> 6]);
                    v218 = (v138[6] + 16 * v1);
                    *v218 = v201;
                    v218[1] = v200;
                    v219 = (v138[7] + 16 * v1);
                    *v219 = v202;
                    v219[1] = v203;
                    v220 = v138[2];
                    v49 = __OFADD__(v220, 1);
                    v221 = v220 + 1;
                    if (v49)
                    {
                      goto LABEL_177;
                    }

                    v138[2] = v221;
                  }

                  v24 = v350;
                  v197 = v353 + 1;
                  v196 = v345;
                }

                v222 = -1 << *(v24 + 32);
                if (-v222 < 64)
                {
                  v223 = ~(-1 << -v222);
                }

                else
                {
                  v223 = -1;
                }

                v224 = v223 & *(v24 + 64);
                v225 = (63 - v222) >> 6;

                v1 = 0;
                v354 = v225;
LABEL_114:
                v226 = v1;
                v5 = v340;
LABEL_115:
                v227 = v341;
                if (!v224)
                {
                  goto LABEL_117;
                }

                do
                {
                  v1 = v226;
LABEL_120:
                  v228 = (v1 << 10) | (16 * __clz(__rbit64(v224)));
                  v229 = *(v24 + 56);
                  v230 = (*(v24 + 48) + v228);
                  v231 = *v230;
                  v232 = v230[1];
                  v233 = (v229 + v228);
                  v234 = *v233;
                  v235 = v233[1];
                  v236 = *(v339 + v337);
                  v237 = *(v236 + 16);

                  if (!v237 || (v238 = sub_22D852D10(v231, v232), (v239 & 1) == 0))
                  {

                    if (qword_2814589E0 != -1)
                    {
                      sub_22D86845C();
                      swift_once();
                    }

                    v291 = sub_22D8B178C();
                    sub_22D84DD10(v291, qword_281459298);

                    v292 = sub_22D8B176C();
                    sub_22D8B1C4C();

                    v1 = v344;
                    if (sub_22D868510())
                    {
                      sub_22D84DD3C();
                      v293 = sub_22D854F30();
                      v358 = v293;
                      *v332 = 136315138;
                      *(v332 + 4) = sub_22D84C63C(v231, v232, &v358);
                      sub_22D84E1F0();
                      sub_22D8B015C(v294, v295, v296, v297);
                      sub_22D84D8A0(v293);
                      sub_22D84D6DC();
                      sub_22D8AF2DC();
                    }

                    v298 = sub_22D8B09FC();
                    sub_22D8AF63C(&qword_27DA0DC90);
                    sub_22D8AFC60();
                    sub_22D8AF360();
                    sub_22D8B1E2C();

                    sub_22D84F5A0();
                    v300 = sub_22D8AFD44(v299);
                    MEMORY[0x2318D4340](v300, v232);
                    v301 = v358;
                    v302 = v359;
                    *v332 = v231;
                    *(v332 + 8) = v232;
                    *(v332 + 16) = v301;
                    *(v332 + 24) = v302;
                    v303 = *MEMORY[0x277D29A60];
                    sub_22D84C5C4(v298);
                    (*(v304 + 104))(v332);
                    goto LABEL_167;
                  }

                  v240 = v238;
                  v224 &= v224 - 1;

                  v241 = *(*(v236 + 56) + 8 * v240);
                  if (*(v241 + 16))
                  {

                    v242 = sub_22D84C538();
                    v244 = sub_22D852D10(v242, v243);
                    v246 = v245;

                    v24 = v350;
                    v225 = v354;
                    if ((v246 & 1) == 0)
                    {

                      v226 = v1;
                      goto LABEL_115;
                    }

                    v247 = *(*(v241 + 56) + 8 * v244);

                    v249 = v247 + 64;
                    v248 = *(v247 + 64);
                    v250 = *(v247 + 32);
                    sub_22D855954();
                    v330 = sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
                    sub_22D84C740(v330);
                    v252 = *(v251 + 64);
                    v253 = sub_22D84C584();
                    v254 = (63 - v241) >> 6;
                    v348 = v247;

                    v255 = 0;
                    v326 = v247 + 64;
                    v324 = v254;
                    v328 = v253;
                    while (1)
                    {
                      v340 = v5;
                      if (!v232)
                      {
                        break;
                      }

                      v5 = v255;
LABEL_133:
                      v256 = __clz(__rbit64(v232)) | (v5 << 6);
                      v257 = *(v348 + 48);
                      v258 = sub_22D8B122C();
                      sub_22D84C740(v258);
                      (*(v259 + 16))(v253, v257 + *(v259 + 72) * v256);
                      v260 = *(*(v348 + 56) + 8 * v256);
                      *(v253 + *(v330 + 48)) = v260;

                      v261 = sub_22D8B121C();
                      if (!v138[2])
                      {

                        v5 = v340;
LABEL_147:
                        sub_22D84D014(v253, &qword_27DA0D838, &unk_22D8B4DC0);

                        goto LABEL_95;
                      }

                      v263 = sub_22D852D10(v261, v262);
                      v265 = v264;

                      if ((v265 & 1) == 0)
                      {
                        v5 = v340;
LABEL_146:
                        v253 = v328;
                        goto LABEL_147;
                      }

                      v266 = (v138[7] + 16 * v263);
                      v267 = v266[1];
                      v344[17] = *v266;
                      v344[18] = v267;
                      v268 = swift_task_alloc();
                      *(v268 + 16) = v325;

                      v269 = sub_22D855C1C(sub_22D8AEE90, v268, v260);

                      if (!v269)
                      {
                        v5 = 0;
                        v24 = v350;
                        goto LABEL_146;
                      }

                      sub_22D8AF964();
                      v253 = v328;
                      sub_22D84D014(v328, &qword_27DA0D838, &unk_22D8B4DC0);
                      v255 = v5;
                      v5 = 0;
                      v24 = v350;
                      v249 = v326;
                      v254 = v324;
                    }

                    while (1)
                    {
                      v5 = v255 + 1;
                      if (__OFADD__(v255, 1))
                      {
                        goto LABEL_181;
                      }

                      if (v5 >= v254)
                      {
                        break;
                      }

                      v232 = *(v249 + 8 * v5);
                      ++v255;
                      if (v232)
                      {
                        goto LABEL_133;
                      }
                    }

                    v225 = v354;
                    goto LABEL_114;
                  }

                  v226 = v1;
                  v24 = v350;
                  v225 = v354;
                  v227 = v341;
                }

                while (v224);
                while (1)
                {
LABEL_117:
                  v1 = v226 + 1;
                  if (__OFADD__(v226, 1))
                  {
                    goto LABEL_176;
                  }

                  if (v1 >= v225)
                  {
                    break;
                  }

                  v224 = *(v227 + 8 * v1);
                  ++v226;
                  if (v224)
                  {
                    goto LABEL_120;
                  }
                }

                v270 = swift_isUniquelyReferenced_nonNull_native();
                if (v270)
                {
                  sub_22D8AF060(v335);
                }

                else
                {
                  v276 = sub_22D84DAB8(v270, v271, v272, v335);
                  sub_22D88C2D0(v276, v277, v278, v279);
                  v335 = v280;
                  sub_22D8AF060(v280);
                }

                if (v273)
                {
                  v281 = sub_22D854F8C(v274);
                  sub_22D88C2D0(v281, v282, v283, v335);
                  v335 = v284;
                  sub_22D8AF958(v284);
                }

                else
                {
                  sub_22D8AF958(v335);
                }

                *(v275 + 32) = v138;
              }

              v1 = v344;
              v319 = v344[23];
              v320 = v344[24];

              v319(v335, 0);

LABEL_153:

              sub_22D84D8A0((v1 + 16));
              goto LABEL_6;
            }

            v159 = *(v1 + 8 * v164);
            ++v161;
          }

          while (!v159);
          v161 = v164;
LABEL_81:
          v165 = __clz(__rbit64(v159)) | (v161 << 6);
          v166 = (*(v163 + 48) + 16 * v165);
          v167 = *v166;
          v168 = v166[1];
          v169 = *(*(v163 + 56) + 8 * v165);

          v170 = swift_isUniquelyReferenced_nonNull_native();
          if ((v170 & 1) == 0)
          {
            sub_22D84DAB8(v170, v171, v172, v357);
            sub_22D851D5C();
            v357 = v184;
          }

          v174 = *(v357 + 16);
          v173 = *(v357 + 24);
          if (v174 >= v173 >> 1)
          {
            sub_22D84C4D0(v173);
            sub_22D851D5C();
            v357 = v185;
          }

          *(v357 + 16) = v174 + 1;
          v175 = v357 + 16 * v174;
          *(v175 + 32) = v167;
          *(v175 + 40) = v168;
          v176 = *(v169 + 16);
          if (v176)
          {
            sub_22D8580D8(&qword_27DA0D7E0, &unk_22D8B3D70);
            v5 = sub_22D854FC8();
            j__malloc_size(v5);
            sub_22D8AEF00();
            *(v5 + 16) = v176;
            *(v5 + 24) = v177;
            v178 = sub_22D8AE98C(&v358, (v5 + 32), v176, v169);
            sub_22D879544();
            v24 = v350;
            if (v178 != v176)
            {
              __break(1u);
LABEL_181:
              __break(1u);
LABEL_182:
              sub_22D86845C();
              swift_once();
LABEL_69:
              v139 = *(v1 + 176);
              v140 = sub_22D8B178C();
              sub_22D84C6FC(v140, qword_281459298);
              sub_22D8AEFC8();

              v141 = sub_22D8B176C();
              v142 = sub_22D8B1C4C();

              if (os_log_type_enabled(v141, v142))
              {
                v144 = *(v1 + 168);
                v143 = *(v1 + 176);
                v145 = sub_22D84DD3C();
                v5 = sub_22D84CE7C();
                v358 = v5;
                *v145 = 136315138;
                *(v145 + 4) = sub_22D84C63C(v144, v143, &v358);
                sub_22D8AF804(&dword_22D84A000, v141, v142, "supportedArguments: Cannot find resource bundle for resourceBundleID: %s");
                sub_22D8AEF40();
                sub_22D84D6DC();
              }

              v147 = *(v1 + 168);
              v146 = *(v1 + 176);
              v148 = sub_22D8B09FC();
              sub_22D8AF63C(&qword_27DA0DC90);
              sub_22D8AFC60();
              sub_22D8AF360();

              sub_22D8B1E2C();
              MEMORY[0x2318D4340](0xD000000000000032, 0x800000022D8B9230);
              v149 = sub_22D84CFB4();
              MEMORY[0x2318D4340](v149);
              v150 = v358;
              v151 = v359;
              *v142 = v147;
              v142[1] = v146;
              v142[2] = v150;
              v142[3] = v151;
              v152 = *MEMORY[0x277D29A60];
              sub_22D84C5C4(v148);
              (*(v153 + 104))(v142);
              swift_willThrow();
              v154 = v138;
              goto LABEL_2;
            }
          }

          else
          {

            v5 = v162;
            v24 = v350;
          }

          v179 = swift_isUniquelyReferenced_nonNull_native();
          if ((v179 & 1) == 0)
          {
            v186 = sub_22D84DAB8(v179, v180, v181, i);
            sub_22D88C2F4(v186, v187, v188, v189);
            i = v190;
          }

          v183 = i[2];
          v182 = i[3];
          if (v183 >= v182 >> 1)
          {
            v191 = sub_22D84C4D0(v182);
            sub_22D88C2F4(v191, v183 + 1, 1, i);
            i = v192;
          }

          v159 &= v159 - 1;
          i[2] = v183 + 1;
        }
      }

      v1 = v344;
      v286 = v344[23];
      v287 = v344[24];

      sub_22D8580D8(&qword_27DA0DBD8, &unk_22D8B4A38);
      v288 = swift_allocObject();
      *(v288 + 16) = xmmword_22D8B3470;
      *(v288 + 32) = sub_22D8B193C();
      v286(v288, 0);

      goto LABEL_153;
    }

    v5 = *(v56 + 8 * v60);
    ++v52;
    if (v5)
    {
      v52 = v60;
      goto LABEL_32;
    }
  }

  __break(1u);
  swift_willThrow();

LABEL_151:
  v285 = *MEMORY[0x277D85DE8];
  sub_22D872A24();
}

void sub_22D8A1FA8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_22D8580D8(&qword_27DA0D7A8, &qword_22D8B3B60);
    v5 = sub_22D8B1ACC();
  }

  if (a2)
  {
    v6 = sub_22D8B068C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_22D8A2050(uint64_t a1, char a2)
{
  *(v3 + 608) = v2;
  *(v3 + 908) = a2;
  *(v3 + 600) = a1;
  sub_22D84C3F0();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22D8A2084()
{
  sub_22D84D198();
  v0[66] = MEMORY[0x277D84FA0];
  if (qword_281459018 != -1)
  {
    sub_22D84DB74();
  }

  v0[77] = qword_281459480;
  v1 = swift_task_alloc();
  v0[78] = v1;
  *v1 = v0;
  sub_22D84DD88(v1);

  return sub_22D869C90();
}

uint64_t sub_22D8A2140()
{
  sub_22D84D77C();
  v3 = v2;
  sub_22D84C734();
  v5 = v4;
  sub_22D84F51C();
  *v6 = v5;
  v8 = *(v7 + 624);
  v9 = *v1;
  sub_22D84CED0();
  *v10 = v9;
  *(v5 + 632) = v0;

  if (!v0)
  {
    *(v5 + 640) = v3;
  }

  sub_22D8AEFD4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22D8A3F74()
{
  sub_22D84D77C();
  v2 = *v1;
  v3 = *v1;
  sub_22D84CED0();
  *v4 = v3;
  v5 = v2[110];
  v6 = *v1;
  sub_22D84F51C();
  *v7 = v6;
  v3[111] = v8;
  v3[112] = v0;

  v9 = v2[109];
  v10 = v2[108];
  if (v0)
  {
    v11 = v3[104];
  }

  else
  {
    v12 = v3[107];
  }

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

void sub_22D8A40DC()
{
  v1 = v0[98];
  v2 = v0[104];
  v3 = v0[103];
  if (v0[111])
  {
    v4 = (v0 + 74);
    v5 = v0[98];
    swift_isUniquelyReferenced_nonNull_native();
    v0[74] = v1;
    v6 = sub_22D84EB60();
    v8 = sub_22D852D10(v6, v7);
    sub_22D84E448(v8, v9);
    if (v12)
    {
      goto LABEL_208;
    }

    v13 = v10;
    v14 = v11;
    sub_22D8580D8(&qword_27DA0D8E0, &qword_22D8B3FF0);
    sub_22D8AF84C();
    if (sub_22D8B1EAC())
    {
      v15 = v0[74];
      v16 = sub_22D852D10(v0[103], v0[104]);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_5:
        sub_22D8AF460();

        sub_22D8B1FBC();
        return;
      }

      v13 = v16;
    }

    v24 = v0[111];
    v25 = v0[74];
    v26 = v0[104];
    v462 = v25;
    if (v14)
    {
      v27 = v25[7];
      v28 = *(v27 + 8 * v13);
      *(v27 + 8 * v13) = v24;
    }

    else
    {
      v29 = v0[103];
      v25[(v13 >> 6) + 8] |= 1 << v13;
      v30 = (v25[6] + 16 * v13);
      *v30 = v29;
      v30[1] = v26;
      *(v25[7] + 8 * v13) = v24;
      v31 = v25[2];
      v12 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v12)
      {
        goto LABEL_209;
      }

      v25[2] = v32;
    }
  }

  else
  {
    v19 = sub_22D84EB60();
    v21 = sub_22D852D10(v19, v20);
    v4 = v22;

    if (v4)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v4 = v1[3];
      sub_22D8580D8(&qword_27DA0D8E0, &qword_22D8B3FF0);
      sub_22D8B1EAC();
      v23 = *(v1[6] + 16 * v21 + 8);

      sub_22D85AFB0(0, &qword_2814588F0, 0x277D779E8);
      v462 = v1;
      sub_22D8B1EBC();
    }

    else
    {
      v462 = v0[98];
    }
  }

  v455 = v0 + 67;
  v456 = v0 + 69;
  v33 = (v0 + 70);
  v34 = v0[102];
  v459 = v0 + 68;
  v460 = v0 + 72;

  v35 = v0[112];
  sub_22D84F5A0();
  v458 = v36;
  *&v37 = 136446466;
  v453 = v37;
  *&v37 = 136446722;
  v452 = v37;
  v478 = v0;
  do
  {
    v38 = v0[97];
    v39 = v0[96];
    v40 = v0[15];
    v41 = v0[16];
    sub_22D850844(v0 + 12);
    sub_22D8B0A5C();
    v42 = sub_22D8AFA3C();
    v39(v42);
    v43 = v0[73];
    swift_isUniquelyReferenced_nonNull_native();
    v0[72] = v43;
    v44 = sub_22D8AF214();
    v46 = sub_22D852D10(v44, v45);
    sub_22D84E448(v46, v47);
    if (v12)
    {
      goto LABEL_203;
    }

    v50 = v48;
    v51 = v49;
    sub_22D8580D8(&qword_27DA0D620, &qword_22D8B3408);
    v0 = v460;
    v52 = v460;
    if (sub_22D8B1EAC())
    {
      v52 = *v460;
      v53 = sub_22D8AF214();
      v55 = sub_22D852D10(v53, v54);
      if ((v51 & 1) != (v56 & 1))
      {
        goto LABEL_5;
      }

      v50 = v55;
    }

    v57 = *v460;
    if (v51)
    {
      sub_22D8AF7B8(v57[7]);
    }

    else
    {
      sub_22D84DDB0(&v57[v50 >> 6]);
      v58 = (v57[6] + 16 * v50);
      *v58 = v4;
      v58[1] = v40;
      sub_22D8AF7B8(v57[7]);
      v59 = v57[2];
      v12 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v12)
      {
        goto LABEL_205;
      }

      v57[2] = v60;
    }

    sub_22D8AFCC0();
    v461 = v57;
    v460[73] = v57;
    sub_22D84D8A0(v460 + 12);
    if (v40 != v52)
    {
      v410 = v460[99] + 1;
      v409 = v460[94];
      goto LABEL_184;
    }

    do
    {
      v61 = v0[92];
      sub_22D8580D8(&qword_27DA0D828, &unk_22D8B4DB0);
      v62 = 0;
      v0[71] = sub_22D8B193C();
      v63 = v61 + 32;
      for (i = v61 + 32; ; i += 40)
      {
        v65 = v0[92];
        if (v62 == v0[93])
        {
          break;
        }

        v66 = v0[76];
        v67 = sub_22D8AF22C();
        sub_22D8AD6C8(v67, v68, v65);
        sub_22D84E298(i, (v0 + 27));
        sub_22D8A9EF4(v0 + 71, v0 + 27, v66);
        if (v35)
        {
          sub_22D8AFB54();

          sub_22D84D8A0(v0 + 27);
          v434 = v0[71];

          v435 = v0[66];

          v436 = *(v66 + 8);
          v437 = sub_22D84C538();
          v438(v437);

          sub_22D84D800();
          sub_22D8AF460();

          __asm { BRAA            X1, X16 }
        }

        ++v62;
        sub_22D84D8A0(v0 + 27);
      }

      v69 = v0[89];
      v70 = v0[71];
      *(swift_task_alloc() + 16) = v69;

      v71 = sub_22D84DB1C();
      v470 = v35;

      if (*(v70 + 16))
      {
        v450 = v63;
        v457 = v71;
        v72 = v0[89];
        v73 = sub_22D8B0D3C();
        v74 = MEMORY[0x277D84F90];
        if (v73)
        {
          v75 = v73;
        }

        else
        {
          v75 = MEMORY[0x277D84F90];
        }

        v463 = v75;
        v76 = *(v70 + 64);
        v77 = *(v70 + 32);
        sub_22D84E314();
        v79 = v78 >> 6;
        v471 = v74;
        v464 = v74;

        if (v51)
        {
          while (1)
          {
            sub_22D8AF238();
            v81 = *(v80 + 48);
            v82 = *(v80 + 56);
            sub_22D8AF65C(v83);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_22D84DF74(v471);
            }

            else
            {
              sub_22D84DAB8(isUniquelyReferenced_nonNull_native, v85, v86, v471);
              sub_22D851D5C();
              v471 = v98;
              sub_22D84DF74(v98);
            }

            if (v87)
            {
              sub_22D8516E8(v88);
              sub_22D851D5C();
              v471 = v99;
              sub_22D8AF89C(v99);
            }

            else
            {
              sub_22D8AF89C(v471);
            }

            v89 = *(v74 + 16);
            if (v89)
            {
              sub_22D8580D8(&qword_27DA0D7E0, &unk_22D8B3D70);
              v90 = swift_allocObject();
              j__malloc_size(v90);
              sub_22D8AEF00();
              v90[2] = v89;
              v90[3] = v91;
              sub_22D8AE98C(v478 + 256, v90 + 4, v89, v74);
              sub_22D8AFFA8();
              if (v74 != v89)
              {
                goto LABEL_207;
              }
            }

            else
            {

              v90 = MEMORY[0x277D84F90];
            }

            v92 = swift_isUniquelyReferenced_nonNull_native();
            if (v92)
            {
              sub_22D8AF060(v464);
            }

            else
            {
              v100 = sub_22D84DAB8(v92, v93, v94, v464);
              sub_22D88C2F4(v100, v101, v102, v103);
              v464 = v104;
              sub_22D8AF060(v104);
            }

            if (v95)
            {
              v105 = sub_22D854F8C(v96);
              sub_22D88C2F4(v105, v106, v107, v464);
              v464 = v108;
            }

            sub_22D8AF964();
            sub_22D8AF958(v464);
            *(v97 + 32) = v90;
          }
        }

        while (v79 > 1)
        {
          sub_22D8AFDBC(1);
        }

        v110 = sub_22D893F6C(v109);
        v112 = v111;
        v113 = v478;
        *(v478 + 512) = v110;
        *(v478 + 520) = v111;
        v454 = (v71 + 32);
        v448 = v110;

        v449 = v112;

        v451 = v471 + 40;
LABEL_54:
        sub_22D894070();
        if (!v114)
        {
          v469 = v33;
          v377 = *(v113 + 752);
          v374 = *(v113 + 736);

          v378 = *(v113 + 520);

          goto LABEL_178;
        }

        v115 = v114;
        v116 = sub_22D8B193C();
        v117 = 0;
        v467 = *(v471 + 16);
        v466 = v115;
        while (v467 != v117)
        {
          sub_22D8AF988(v471);
          if (v87)
          {
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
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
LABEL_209:
            __break(1u);
            return;
          }

          if (v119 >= *(v115 + 16))
          {
            goto LABEL_199;
          }

          LOBYTE(v473) = v120;
          v475 = v119;
          v122 = *(v120 - 1);
          v121 = *v120;
          v123 = *(v118 - 1);
          v124 = *v118;

          swift_isUniquelyReferenced_nonNull_native();
          *v33 = v116;
          v125 = sub_22D8AFE3C();
          v127 = sub_22D852D10(v125, v126);
          sub_22D84E448(v127, v128);
          if (v12)
          {
            goto LABEL_200;
          }

          v131 = v129;
          v132 = v130;
          sub_22D8580D8(&qword_27DA0DC08, &qword_22D8B4A80);
          if (sub_22D8B1EAC())
          {
            v133 = *v33;
            v134 = sub_22D8AFE3C();
            sub_22D852D10(v134, v135);
            sub_22D850930();
            if (!v184)
            {
              goto LABEL_5;
            }

            v131 = v136;
          }

          v116 = *v33;
          if (v132)
          {
            v137 = (v116[7] + 16 * v131);
            v138 = v137[1];
            *v137 = v123;
            v137[1] = v124;
          }

          else
          {
            sub_22D8AF544();
            sub_22D84DDB0(v139);
            v140 = (v116[6] + 16 * v131);
            *v140 = v122;
            v140[1] = v121;
            v141 = (v116[7] + 16 * v131);
            *v141 = v123;
            v141[1] = v124;
            sub_22D8AF538();
            if (v12)
            {
              goto LABEL_201;
            }

            v116[2] = v142;
          }

          v117 = v475 + 1;
          v115 = v466;
        }

        v465 = v116;
        v143 = sub_22D8B0D5C();
        sub_22D84D7DC(v143);
        v145 = v144;
        v147 = *(v146 + 64);
        v148 = sub_22D84C584();
        v149 = 0;
        v150 = v463;
        v151 = *(v463 + 16);
        v152 = v145 + 16;
        v153 = (v145 + 8);
        while (v151 != v149)
        {
          if (v149 >= *(v150 + 16))
          {
            goto LABEL_202;
          }

          v154 = *(v145 + 80);
          sub_22D84D24C();
          (*(v145 + 16))(v148, v156 + v155 + *(v145 + 72) * v149, v143);
          v157 = sub_22D8AAC30(v148, v465);
          if (v470)
          {

            (*v153)(v148, v143);
            sub_22D8AF460();

            return;
          }

          v158 = v157;
          ++v149;
          (*v153)(v148, v143);
          v470 = 0;
          v150 = v463;
          if (v158)
          {

            v159 = 0;
            v160 = v450;
            v161 = MEMORY[0x277D84F90];
            v113 = v478;
            v162 = v456;
            while (v159 != *(v478 + 744))
            {
              if (v159 >= *(*(v478 + 736) + 16))
              {
                goto LABEL_204;
              }

              v163 = *(v478 + 608);
              sub_22D84E298(v160, v478 + 336);
              if (sub_22D8AADCC((v478 + 336), v163, v465))
              {
                sub_22D851550((v478 + 336), v478 + 376);
                v164 = swift_isUniquelyReferenced_nonNull_native();
                *v162 = v161;
                if ((v164 & 1) == 0)
                {
                  v165 = *(v161 + 16);
                  v166 = sub_22D84C414();
                  sub_22D87BC48(v166, v167, v168);
                  v161 = *v162;
                }

                v170 = *(v161 + 16);
                v169 = *(v161 + 24);
                if (v170 >= v169 >> 1)
                {
                  sub_22D84C4D0(v169);
                  sub_22D8AF9B8();
                  sub_22D87BC48(v171, v172, v173);
                  v161 = *v456;
                }

                *(v161 + 16) = v170 + 1;
                sub_22D851550((v478 + 376), v161 + 40 * v170 + 32);
                v162 = v456;
              }

              else
              {
                sub_22D84D8A0((v478 + 336));
              }

              v160 += 40;
              ++v159;
            }

            v174 = *(v161 + 16);
            if (v174)
            {
              v468 = v33;
              v175 = 0;
              v176 = MEMORY[0x277D84F90];
LABEL_89:
              while (v175 != v174)
              {
                if (v175 >= *(v161 + 16))
                {
                  goto LABEL_206;
                }

                v152 = v175 + 1;
                sub_22D8AFB38(v175);
                sub_22D8AFD04(v457);
                v177 = v454;
                while (1)
                {
                  if (!--v113)
                  {
                    v185 = sub_22D8AF6F4();
                    sub_22D84D8A0(v185);
                    v175 = v152;
                    goto LABEL_89;
                  }

                  v179 = v177[3];
                  v178 = v177[4];
                  sub_22D84E4D0(v177);
                  v160 = sub_22D8B0A5C();
                  v181 = v180;
                  v182 = *(v478 + 48);
                  sub_22D851278((v478 + 16), *(v478 + 40));
                  v184 = v160 == sub_22D8B0A5C() && v181 == v183;
                  if (v184)
                  {
                    break;
                  }

                  v177 += 5;
                  sub_22D87294C();
                  v160 = sub_22D8B00CC();

                  if (v160)
                  {
                    goto LABEL_101;
                  }
                }

LABEL_101:
                v186 = sub_22D8AF6F4();
                sub_22D851550(v186, v187 + 416);
                v188 = swift_isUniquelyReferenced_nonNull_native();
                *v455 = v176;
                if ((v188 & 1) == 0)
                {
                  v189 = *(v176 + 16);
                  v190 = sub_22D84C414();
                  sub_22D87BC48(v190, v191, v192);
                  v176 = *v455;
                }

                v113 = *(v176 + 16);
                v193 = *(v176 + 24);
                if (v113 >= v193 >> 1)
                {
                  sub_22D84C4D0(v193);
                  sub_22D8AF9B8();
                  sub_22D87BC48(v194, v195, v196);
                  v176 = *v455;
                }

                *(v176 + 16) = v113 + 1;
                sub_22D851550((v478 + 416), v176 + 40 * v113 + 32);
                v175 = v152;
              }

              v197 = *(v176 + 16);
              if (v197)
              {
                v198 = MEMORY[0x277D84F90];
                *v459 = MEMORY[0x277D84F90];
                v199 = v176 + 32;
                v200 = v198;
                v201 = v478;
                while (1)
                {
                  sub_22D84E298(v199, v478 + 296);
                  v203 = *(v478 + 320);
                  v202 = *(v478 + 328);
                  sub_22D84E4D0((v478 + 296));
                  v204 = sub_22D8B0A5C();
                  if (*(v461 + 16))
                  {
                    sub_22D852D10(v204, v205);
                    v160 = v206;

                    if (v160)
                    {
                      sub_22D84C5B4(v461);
                      if (v184)
                      {
                        v208 = *(v478 + 320);
                        v207 = *(v478 + 328);
                        sub_22D84E4D0((v478 + 296));
                        sub_22D8B0A5C();
                        sub_22D84C550();
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v222 = *(v200 + 16);
                          sub_22D84C414();
                          sub_22D851D5C();
                          v200 = v223;
                        }

                        v210 = *(v200 + 16);
                        v209 = *(v200 + 24);
                        sub_22D8AF9D0();
                        if (v87)
                        {
                          sub_22D8AEF14(v211);
                          sub_22D851D5C();
                          v200 = v224;
                        }

                        *(v200 + 16) = v160;
                        v212 = v200 + 16 * v210;
                        *(v212 + 32) = v207;
                        *(v212 + 40) = v208;
                        goto LABEL_123;
                      }
                    }
                  }

                  else
                  {
                  }

                  v214 = *(v478 + 320);
                  v213 = *(v478 + 328);
                  sub_22D84E4D0((v478 + 296));
                  sub_22D8B0A5C();
                  sub_22D854FE4();
                  sub_22D8B009C();
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v219 = *(v198 + 16);
                    sub_22D84C414();
                    sub_22D851D5C();
                    v198 = v220;
                  }

                  v216 = *(v198 + 16);
                  v215 = *(v198 + 24);
                  sub_22D8AF9C4();
                  if (v87)
                  {
                    sub_22D8516E8(v217);
                    sub_22D851D5C();
                    v198 = v221;
                  }

                  *(v198 + 16) = v214;
                  v218 = v198 + 16 * v216;
                  *(v218 + 32) = v213;
                  *(v218 + 40) = v160;
                  *v459 = v198;
                  swift_endAccess();
LABEL_123:
                  sub_22D84D8A0((v478 + 296));
                  v199 += 40;
                  if (!--v197)
                  {

                    if (*(v198 + 16))
                    {
                      if (qword_2814589E0 != -1)
                      {
                        sub_22D86845C();
                        swift_once();
                      }

                      v225 = sub_22D8AF74C();
                      sub_22D84C6FC(v225, qword_281459298);
                      v226 = swift_task_alloc();
                      sub_22D8AF1B0();
                      (v200)();

                      v227 = sub_22D8B176C();
                      v228 = sub_22D8B1C6C();

                      v229 = os_log_type_enabled(v227, v228);
                      v230 = *(v478 + 680);
                      v231 = *(v478 + 672);
                      if (v229)
                      {
                        v232 = sub_22D84CE7C();
                        sub_22D8B0084();
                        *v232 = v452;
                        sub_22D8B0D1C();
                        sub_22D8AF1A4();
                        v233 = *(v230 + 8);
                        v234 = sub_22D8AF1E8();
                        v235(v234);
                        v236 = sub_22D8AF014();
                        sub_22D84C63C(v236, 0, v237);
                        sub_22D868470();

                        *(v232 + 4) = v226;
                        *(v232 + 12) = 2082;
                        v238 = MEMORY[0x277D837D0];
                        sub_22D8AFE1C();
                        v239 = sub_22D8B192C();
                        v241 = sub_22D8AF700(v239, v240);

                        *(v232 + 14) = v241;
                        *(v232 + 22) = 2082;

                        MEMORY[0x2318D43B0](v242, v238);
                        sub_22D84C550();

                        v243 = sub_22D8AF014();
                        sub_22D84C63C(v243, v241, v244);
                        sub_22D85331C();

                        *(v232 + 24) = v226;
                        _os_log_impl(&dword_22D84A000, v227, v228, "availableUseCases: Use case identifier %{public}s, with arguments: %{public}s is NOT ready, missing: %{public}s", v232, 0x20u);
                        sub_22D8AF308();
                        swift_arrayDestroy();
                        sub_22D85167C();
                        sub_22D8728AC();
                      }

                      else
                      {

                        v310 = *(v230 + 8);
                        v311 = sub_22D8AF1E8();
                        v312(v311);
                      }

                      v313 = *(v478 + 728);
                      v314 = *(v478 + 720);
                      sub_22D8AF2B0();
                      v316 = *(v315 + 908);
                      sub_22D8B006C();
                      v473 = sub_22D8B0F6C();
                      sub_22D84D7DC(v473);
                      v318 = v317;
                      v320 = *(v319 + 64);
                      sub_22D8AFA9C();
                      sub_22D8B012C();
                      sub_22D8AFC48();
                      sub_22D8AF328();
                      v314();
                      if ((v316 & 1) == 0)
                      {
                        goto LABEL_151;
                      }

LABEL_150:

                      sub_22D8AFEB4();
                    }

                    else
                    {
                      if (qword_2814589E0 != -1)
                      {
                        sub_22D86845C();
                        swift_once();
                      }

                      v289 = sub_22D8AF74C();
                      sub_22D84C6FC(v289, qword_281459298);
                      v226 = swift_task_alloc();
                      sub_22D8AF1B0();
                      (v200)();

                      v290 = sub_22D8B176C();
                      v291 = sub_22D8B1C6C();

                      v292 = os_log_type_enabled(v290, v291);
                      v293 = *(v478 + 680);
                      v294 = *(v478 + 672);
                      if (v292)
                      {
                        sub_22D8AF4E8();
                        v474 = sub_22D8AF15C();
                        *v478 = sub_22D8AF55C(v474, v295, v296, v297, v298, v299, v300, v301, v448, v449, v450, v451, v452, *(&v452 + 1), v453).n128_u32[0];
                        sub_22D8B0D1C();
                        sub_22D8AF1A4();
                        v302 = *(v293 + 8);
                        v303 = sub_22D8AF1E8();
                        v304(v303);
                        v305 = sub_22D8AF014();
                        sub_22D84C63C(v305, 0, v306);
                        sub_22D868470();

                        sub_22D84E224();
                        v307 = sub_22D8B192C();
                        v309 = sub_22D8AF700(v307, v308);

                        *(v478 + 14) = v309;
                        sub_22D8AF928(&dword_22D84A000, v290, v291, "availableUseCases: Use case identifier %{public}s, with arguments: %{public}s is ready.");
                        sub_22D8AF308();
                        swift_arrayDestroy();
                        sub_22D85167C();
                        v201 = v478;
                        sub_22D84C3D8();
                      }

                      else
                      {

                        v334 = *(v293 + 8);
                        v335 = sub_22D8AF1E8();
                        v336(v335);
                      }

                      v337 = *(v201 + 728);
                      v338 = *(v201 + 720);
                      sub_22D8AF2B0();
                      v340 = *(v339 + 908);
                      sub_22D8B006C();
                      v473 = sub_22D8B0F6C();
                      sub_22D84D7DC(v473);
                      v318 = v341;
                      v343 = *(v342 + 64);
                      sub_22D8AFA9C();
                      sub_22D8B012C();
                      sub_22D8AFC48();
                      sub_22D8AF328();
                      v338();
                      if (v340)
                      {
                        goto LABEL_150;
                      }

LABEL_151:

                      sub_22D8AF6D0();
                    }

                    sub_22D8AFA24();
                    sub_22D8B0F5C();

                    v113 = v478;
                    sub_22D88D150();
                    (*(v318 + 8))(v226, v473);

                    v470 = 0;
                    v33 = v468;
                    goto LABEL_54;
                  }
                }
              }

              v265 = v478;
              if (qword_2814589E0 != -1)
              {
                sub_22D86845C();
                swift_once();
              }

              v266 = *(v478 + 728);
              v267 = *(v478 + 720);
              v268 = *(v478 + 712);
              v269 = *(v478 + 696);
              v270 = *(v478 + 672);
              v271 = sub_22D8B0054();
              sub_22D8AF50C(v271, qword_281459298);
              sub_22D8AF1B0();
              v267();

              v272 = sub_22D8B176C();
              v273 = sub_22D8B1C6C();

              v274 = os_log_type_enabled(v272, v273);
              v275 = *(v478 + 680);
              v276 = *(v478 + 672);
              if (v274)
              {
                sub_22D8AF4E8();
                v277 = sub_22D8AF15C();
                sub_22D8AF268(v277);
                *v152 = v453;
                sub_22D8B0D1C();
                sub_22D8AF1A4();
                v278 = *(v275 + 8);
                v279 = sub_22D8538E0();
                v280(v279);
                v281 = sub_22D8AF014();
                sub_22D84C63C(v281, v478, v282);
                sub_22D868470();

                sub_22D84E224();
                v283 = sub_22D8B192C();
                v285 = sub_22D8AF700(v283, v284);

                *(v152 + 14) = v285;
                sub_22D8AF928(&dword_22D84A000, v272, v273, "availableUseCases: Use case identifier %{public}s, with arguments: %{public}s is ready (no matching required variants).");
                sub_22D8AF0F8();
                sub_22D84C3D8();
                v265 = v478;
                sub_22D84C3D8();
              }

              else
              {

                v321 = *(v275 + 8);
                v322 = sub_22D8538E0();
                v323(v322);
              }

              v324 = *(v265 + 728);
              v325 = *(v265 + 720);
              v326 = *(v265 + 712);
              v327 = *(v265 + 672);
              v328 = *(v265 + 696) + 15;
              *(v265 + 908);

              v329 = sub_22D8B0F6C();
              sub_22D84D7DC(v329);
              v331 = v330;
              v333 = *(v332 + 64);
              sub_22D8AF5EC();
              sub_22D8B0114();
              sub_22D8AFA84();
              sub_22D8AF1B0();
              v325();
              sub_22D8B0F5C();
              v113 = v478;

              sub_22D8AF790();
              sub_22D88D150();
              (*(v331 + 8))(v272, v329);

              v470 = 0;
              v33 = v468;
            }

            else
            {

              if (qword_2814589E0 != -1)
              {
                sub_22D86845C();
                swift_once();
              }

              v245 = *(v478 + 728);
              v246 = *(v478 + 720);
              v247 = *(v478 + 712);
              v248 = *(v478 + 672);
              v249 = *(v478 + 696) + 15;
              v250 = sub_22D8B178C();
              sub_22D84C6FC(v250, qword_281459298);
              v251 = swift_task_alloc();
              sub_22D8AF430();
              v246();

              v252 = sub_22D8B176C();
              v253 = sub_22D8B1C6C();

              v254 = os_log_type_enabled(v252, v253);
              v255 = *(v478 + 680);
              v256 = *(v478 + 672);
              if (v254)
              {
                sub_22D8AF4E8();
                v257 = sub_22D8AF15C();
                sub_22D8AF268(v257);
                *v152 = v453;
                sub_22D8B0D1C();
                sub_22D8AF1A4();
                v258 = *(v255 + 8);
                v259 = sub_22D8AF1E8();
                v260(v259);
                v261 = sub_22D8AF014();
                sub_22D84C63C(v261, v151, v262);
                sub_22D868470();

                sub_22D84E224();
                sub_22D8B192C();
                sub_22D84C550();

                v263 = sub_22D8AF014();
                sub_22D84C63C(v263, v256, v264);
                sub_22D85331C();

                *(v152 + 14) = v251;
                sub_22D8AF928(&dword_22D84A000, v252, v253, "availableUseCases: Use case identifier %{public}s, with arguments: %{public}s did NOT match any variants for the use case");
                sub_22D8AF0F8();
                sub_22D84C3D8();
                v113 = v478;
                sub_22D84C3D8();
              }

              else
              {

                v286 = *(v255 + 8);
                v287 = sub_22D8AF1E8();
                v288(v287);
              }

              v470 = 0;
            }

LABEL_86:

            goto LABEL_54;
          }
        }

        v113 = v478;
        goto LABEL_86;
      }

      v469 = v33;
      v344 = v0[94];
      v345 = v0[92];

      v346 = *(v71 + 16);
      if (!v346)
      {

        v348 = MEMORY[0x277D84F90];
        goto LABEL_172;
      }

      v347 = v71 + 32;
      v348 = MEMORY[0x277D84F90];
      v349 = MEMORY[0x277D84F90];
      do
      {
        sub_22D84E298(v347, (v0 + 22));
        v350 = v0[26];
        sub_22D851278(v0 + 22, v0[25]);
        v351 = sub_22D8B0A5C();
        if (*(v461 + 16))
        {
          v353 = sub_22D852D10(v351, v352);
          v355 = v354;

          if ((v355 & 1) != 0 && *(*(v461 + 56) + v353) == 1)
          {
            v357 = v0[25];
            v356 = v0[26];
            sub_22D851278(v0 + 22, v357);
            sub_22D8B0A5C();
            sub_22D84C578();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v367 = v349[2];
              sub_22D84C414();
              sub_22D851D5C();
              v349 = v368;
            }

            v359 = v349[2];
            v358 = v349[3];
            sub_22D8AF9D0();
            if (v87)
            {
              sub_22D8AEF14(v360);
              sub_22D851D5C();
              v349 = v361;
            }

            else
            {
              v361 = v349;
            }

            goto LABEL_167;
          }
        }

        else
        {
        }

        v357 = v0[25];
        v356 = v0[26];
        sub_22D851278(v0 + 22, v357);
        sub_22D8B0A5C();
        sub_22D84C578();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v365 = v348[2];
          sub_22D84C414();
          sub_22D851D5C();
          v348 = v366;
        }

        v359 = v348[2];
        v362 = v348[3];
        sub_22D8AF9D0();
        if (v87)
        {
          sub_22D8AEF14(v363);
          sub_22D851D5C();
          v348 = v361;
        }

        else
        {
          v361 = v348;
        }

LABEL_167:
        v361[2] = v357;
        v364 = &v361[2 * v359];
        v364[4] = v356;
        v364[5] = v51;
        v0 = v478;
        sub_22D84D8A0((v478 + 176));
        v347 += 40;
        --v346;
      }

      while (v346);

LABEL_172:
      v472 = v0[91];
      v369 = v0[90];
      v370 = v0[89];
      v476 = sub_22D8AF8BC();
      sub_22D84D7DC(v476);
      v372 = *(v371 + 64) + 15;
      swift_task_alloc();
      swift_task_alloc();
      swift_task_alloc();
      v369();
      sub_22D8B193C();
      if (v473)
      {

        v33 = v348;
      }

      else
      {

        v33 = 0;
      }

      v373 = v348[2];

      sub_22D8B0F5C();

      v374 = v478;
      sub_22D88D150();
      v375 = sub_22D8AF9AC();
      v376(v375, v476);
      v113 = v478;
      while (1)
      {

LABEL_178:
        v379 = *(v113 + 712);
        v380 = *(v113 + 704);
        v381 = *(v113 + 680);
        v382 = *(v113 + 672);
        v383 = *(v113 + 648);
        v384 = sub_22D8AF318();
        v385(v384);

        if (v374 == v383)
        {
          v441 = *(v113 + 528);
          sub_22D8B110C();
          sub_22D8AF198();
          v442 = sub_22D8B0F7C();
          sub_22D84C3FC(v442);
          v444 = *(v443 + 64);
          sub_22D84C584();
          sub_22D8AF454();
          sub_22D8B0F4C();
          sub_22D854FA0();

          sub_22D8AFE28();
          sub_22D8AF460();

          __asm { BRAA            X2, X16 }
        }

        sub_22D8AF400();
        v386 = *(v113 + 656);
        v387 = *(v113 + 608);
        v51 = *(v478 + 600);
        v374 = sub_22D84C584();
        v388 = *(v33 + 16);
        v33 += 16;
        v0 = v478;
        *(v478 + 712) = v374;
        *(v478 + 720) = v388;
        *(v478 + 728) = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v477 = v388;
        v388();
        v389 = *(v387 + v386);
        v390 = sub_22D8B09BC();
        *(swift_task_alloc() + 16) = v374;
        v391 = sub_22D84F550();
        v393 = sub_22D86A4FC(v391, v392, v390);
        *(v478 + 736) = v393;

        v394 = *(v393 + 16);
        *(v478 + 744) = v394;
        if (v394)
        {
          break;
        }

        v395 = *(v478 + 696);
        v396 = *(v478 + 672);
        v397 = *(v478 + 908);

        v398 = sub_22D8B0F6C();
        sub_22D84D7DC(v398);
        v400 = v399;
        v402 = *(v401 + 64);
        sub_22D8AF5EC();
        sub_22D8B00FC();
        sub_22D8AFA84();
        v477();
        sub_22D8B193C();
        sub_22D85098C();
        v113 = v478;

        sub_22D8AF220();
        sub_22D88D150();
        v403 = *(v400 + 8);
        v404 = sub_22D87294C();
        v405(v404);
      }

      v35 = v470;
      v407 = sub_22D89357C(v406, v478 + 584);
      *(v478 + 752) = v407;
      v408 = *(v407 + 16);
      *(v478 + 760) = v408;
      v33 = v469;
    }

    while (!v408);
    sub_22D8AF3B8();
LABEL_184:
    v0[99] = v410;
    v0[98] = v462;
    v411 = sub_22D8AF2F8(v409, v410);
    sub_22D84E298(v411, (v0 + 12));
    v412 = v0[15];
    v413 = v0[16];
    sub_22D850844(v0 + 12);
    v0[60] = sub_22D8B0A4C();
    v0[61] = v414;
    sub_22D8AF550();
    v0[62] = v415;
    v0[63] = v458;
    v4 = sub_22D8ADEAC();
    sub_22D8ADF00();
    sub_22D8AFC30();
    sub_22D84C59C();
  }

  while (((v0 - 32) & 1) == 0 || !v462);
  v416 = v0[15];
  v417 = v0[16];
  sub_22D8519F8(v0 + 12);
  v418 = sub_22D8B0C6C();
  v0[100] = v418;
  sub_22D84D7DC(v418);
  v420 = v419;
  v0[101] = *(v421 + 64);
  v0[102] = sub_22D8AFB20();
  sub_22D8538E0();
  sub_22D8B0E4C();
  v0[103] = sub_22D8B0C2C();
  v0[104] = v422;
  v423 = *(v420 + 8);
  v0[105] = v423;
  v0[106] = (v420 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v424 = sub_22D85236C();
  v423(v424);
  v425 = v0[15];
  v426 = v0[16];
  sub_22D8519F8(v0 + 12);
  v0[107] = swift_task_alloc();
  sub_22D8538E0();
  sub_22D8B0E4C();
  sub_22D8B0C2C();
  sub_22D8AF7EC();
  v0[108] = v427;
  v428 = sub_22D85236C();
  v423(v428);
  v430 = v0[15];
  v429 = v0[16];
  sub_22D852330(v0 + 12);
  v0[109] = sub_22D8AFB78();
  v431 = swift_task_alloc();
  v0[110] = v431;
  *v431 = v0;
  sub_22D84EB94();
  v432 = v0[77];
  sub_22D84C628();
  sub_22D8AF460();

  sub_22D869A48();
}

uint64_t sub_22D8A9BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32[7] = a2;
  sub_22D84E298(a1, v31);
  sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
  sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
  if (swift_dynamicCast())
  {
    v23 = a3;
    v24 = v3;
    sub_22D851550(v29, v32);
    v5 = v32[4];
    sub_22D84E124(v32, v32[3]);
    v6 = *(v5 + 8);
    v7 = sub_22D8B0A7C();
    v8 = sub_22D8B12BC();
    v22[1] = v22;
    v9 = *(v8 - 8);
    v10 = *(v9 + 64);
    result = MEMORY[0x28223BE20](v8);
    v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = 0;
    v27 = *(v7 + 16);
    v28 = v7;
    v25 = v9 + 8;
    v26 = v9 + 16;
    while (1)
    {
      if (v27 == v14)
      {

        v21 = v23;
        *(v23 + 32) = 0;
        *v21 = 0u;
        v21[1] = 0u;
        return sub_22D84D8A0(v32);
      }

      if (v14 >= *(v28 + 16))
      {
        break;
      }

      (*(v9 + 16))(v13, v28 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14++, v8);
      v15 = sub_22D8B0D8C();
      v16 = *(v15 - 8);
      v17 = *(v16 + 64);
      MEMORY[0x28223BE20](v15);
      v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_22D8B127C();
      (*(v9 + 8))(v13, v8);
      v20 = sub_22D8B0D0C();
      result = (*(v16 + 8))(v19, v15);
      if (v20)
      {

        sub_22D84E298(v32, v23);
        return sub_22D84D8A0(v32);
      }
    }

    __break(1u);
  }

  else
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    result = sub_22D84D014(v29, &qword_27DA0D698, &qword_22D8B36C0);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22D8A9EF4(uint64_t *a1, int64_t *a2, uint64_t a3)
{
  v4 = a2;
  v120 = a1;
  v5 = *(a3 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_variantResolverMappings);
  v6 = a2[4];
  sub_22D84E124(a2, a2[3]);
  v7 = *(v6 + 8);
  v8 = sub_22D8B0A4C();
  v9 = sub_22D879550(v8);

  if (v9)
  {
    v111 = 0;
    v112 = 0;
    v10 = 0;
    v11 = v9 + 64;
    v12 = 1 << *(v9 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v9 + 64);
    v15 = (v12 + 63) >> 6;
    v100 = v9 + 64;
    v99 = v15;
    v102 = v3;
    v101 = v9;
    if (v14)
    {
LABEL_6:
      v16 = v10;
LABEL_10:
      v105 = (v14 - 1) & v14;
      v17 = *(v9 + 56);
      v104 = v16;
      v18 = *(v17 + ((v16 << 9) | (8 * __clz(__rbit64(v14)))));
      v19 = *(v18 + 64);
      v107 = v18 + 64;
      v20 = 1 << *(v18 + 32);
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v22 = v21 & v19;
      v23 = sub_22D8580D8(&qword_27DA0D830, &unk_22D8B3E10);
      v103 = &v99;
      v115 = *(*(v23 - 8) + 64);
      MEMORY[0x28223BE20](v23 - 8);
      v113 = &v99 - v24;
      v114 = v24;
      v106 = (v20 + 63) >> 6;
      v108 = v18;

      v26 = 0;
      while (1)
      {
        while (1)
        {
          v4 = &v99;
          MEMORY[0x28223BE20](v25);
          v27 = &v99 - v114;
          if (!v22)
          {
            while (1)
            {
              v28 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                break;
              }

              if (v28 >= v106)
              {
                v79 = sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
                sub_22D84C4F8(v27, 1, 1, v79);
                v22 = 0;
                goto LABEL_21;
              }

              v22 = *(v107 + 8 * v28);
              ++v26;
              if (v22)
              {
                v119 = &v99;
                v26 = v28;
                goto LABEL_20;
              }
            }

            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          v119 = &v99;
          v28 = v26;
LABEL_20:
          v29 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v30 = v29 | (v28 << 6);
          v31 = sub_22D8B122C();
          v118 = &v99;
          v32 = *(v31 - 8);
          v33 = *(v32 + 64);
          MEMORY[0x28223BE20](v31);
          v35 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
          v36 = v108;
          (*(v32 + 16))(v35, *(v108 + 48) + *(v37 + 72) * v30, v31);
          v38 = *(*(v36 + 56) + 8 * v30);
          v39 = sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
          v40 = *(v39 + 48);
          (*(v32 + 32))(v27, v35, v31);
          *&v27[v40] = v38;
          sub_22D84C4F8(v27, 0, 1, v39);

LABEL_21:
          v41 = v113;
          sub_22D8AED30(v27, v113, &qword_27DA0D830, &unk_22D8B3E10);
          v4 = sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
          if (sub_22D84D0C0(v41, 1, v4) == 1)
          {

            v10 = v104;
            v9 = v101;
            v11 = v100;
            v14 = v105;
            v15 = v99;
            if (!v105)
            {
              goto LABEL_7;
            }

            goto LABEL_6;
          }

          v42 = sub_22D8B122C();
          v119 = &v99;
          v43 = *(*(v42 - 8) + 64);
          MEMORY[0x28223BE20](v42);
          v45 = &v99 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
          v46 = *(v41 + *(v4 + 12));
          v117 = v48;
          v118 = v47;
          (*(v48 + 32))(v45, v41);
          v49 = sub_22D8B120C();
          v116 = v45;
          if (v49 != 2)
          {
            break;
          }

          v110 = v46;
          v50 = sub_22D8B121C();
          v4 = v51;
          sub_22D8AEB14(v112);
          v52 = v120;
          v53 = *v120;
          swift_isUniquelyReferenced_nonNull_native();
          v54 = *v52;
          v121 = v54;
          v55 = sub_22D852D10(v50, v4);
          if (__OFADD__(*(v54 + 16), (v56 & 1) == 0))
          {
            goto LABEL_55;
          }

          v57 = v55;
          v58 = v56;
          sub_22D8580D8(&unk_27DA0D840, &qword_22D8B3E20);
          if (sub_22D8B1EAC())
          {
            v59 = sub_22D852D10(v50, v4);
            if ((v58 & 1) != (v60 & 1))
            {
              goto LABEL_59;
            }

            v57 = v59;
          }

          v75 = v121;
          *v120 = v121;
          if (v58)
          {
          }

          else
          {
            sub_22D87954C(v57, v50, v4, MEMORY[0x277D84FA0], v75);
          }

          v77 = *(v75 + 56) + 8 * v57;
          sub_22D8936FC(v110);
          v25 = (*(v117 + 8))(v116, v118);
          v112 = sub_22D8AEE88;
        }

        v61 = v49;

        v4 = sub_22D8B121C();
        v63 = v62;
        v121 = 0;
        v122 = 0xE000000000000000;
        if (v61)
        {
          v64 = 1702195828;
        }

        else
        {
          v64 = 0x65736C6166;
        }

        if (v61)
        {
          v65 = 0xE400000000000000;
        }

        else
        {
          v65 = 0xE500000000000000;
        }

        MEMORY[0x2318D4340](v64, v65);

        v109 = v122;
        v110 = v121;
        sub_22D8AEB14(v111);
        v66 = v120;
        v67 = *v120;
        swift_isUniquelyReferenced_nonNull_native();
        v68 = *v66;
        v121 = v68;
        v69 = sub_22D852D10(v4, v63);
        if (__OFADD__(*(v68 + 16), (v70 & 1) == 0))
        {
          goto LABEL_56;
        }

        v71 = v69;
        v72 = v70;
        sub_22D8580D8(&unk_27DA0D840, &qword_22D8B3E20);
        if (sub_22D8B1EAC())
        {
          v73 = sub_22D852D10(v4, v63);
          if ((v72 & 1) != (v74 & 1))
          {
LABEL_59:
            result = sub_22D8B1FBC();
            __break(1u);
            return result;
          }

          v71 = v73;
        }

        v76 = v121;
        *v120 = v121;
        if (v72)
        {
        }

        else
        {
          sub_22D87954C(v71, v4, v63, MEMORY[0x277D84FA0], v76);
        }

        v78 = *(v76 + 56) + 8 * v71;
        sub_22D851F6C(&v121, v110, v109);

        v25 = (*(v117 + 8))(v116, v118);
        v111 = sub_22D8AEE88;
      }
    }

LABEL_7:
    while (1)
    {
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v16 >= v15)
      {

        sub_22D8AEB14(v111);
        return sub_22D8AEB14(v112);
      }

      v14 = *(v11 + 8 * v16);
      ++v10;
      if (v14)
      {
        goto LABEL_10;
      }
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (qword_2814589E0 != -1)
  {
LABEL_58:
    swift_once();
  }

  v81 = sub_22D8B178C();
  sub_22D84C6FC(v81, qword_281459298);
  sub_22D84E298(v4, &v121);
  v82 = sub_22D8B176C();
  v83 = sub_22D8B1C4C();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v125 = v85;
    *v84 = 136446210;
    v86 = v124;
    sub_22D84E124(&v121, v123);
    v87 = *(v86 + 8);
    v88 = sub_22D8B0A4C();
    v90 = v89;
    sub_22D84D8A0(&v121);
    v91 = sub_22D84C63C(v88, v90, &v125);

    *(v84 + 4) = v91;
    _os_log_impl(&dword_22D84A000, v82, v83, "availableUseCases: Resource '%{public}s' does not have a corresponding variant resolver mapping", v84, 0xCu);
    sub_22D84D8A0(v85);
    MEMORY[0x2318D50E0](v85, -1, -1);
    MEMORY[0x2318D50E0](v84, -1, -1);
  }

  else
  {

    sub_22D84D8A0(&v121);
  }

  v92 = sub_22D8B0A1C();
  sub_22D8551D4(&qword_2814587A0, MEMORY[0x2822218C0]);
  swift_allocError();
  v94 = v93;
  v121 = 0;
  v122 = 0xE000000000000000;
  sub_22D8B1E2C();
  MEMORY[0x2318D4340](0x656372756F736552, 0xEA00000000002720);
  v95 = v4[4];
  sub_22D84E124(v4, v4[3]);
  v96 = *(v95 + 8);
  v97 = sub_22D8B0A4C();
  MEMORY[0x2318D4340](v97);

  MEMORY[0x2318D4340](0xD000000000000038, 0x800000022D8B82B0);
  v98 = v122;
  *v94 = v121;
  v94[1] = v98;
  (*(*(v92 - 8) + 104))(v94, *MEMORY[0x277D29A88], v92);
  return swift_willThrow();
}

uint64_t sub_22D8AA99C(void *a1, uint64_t a2)
{
  v27 = a2;
  v3 = a1[4];
  sub_22D84E124(a1, a1[3]);
  v4 = *(v3 + 8);
  v5 = sub_22D8B0A7C();
  v26 = *(v5 + 16);
  if (v26)
  {
    v21[1] = v2;
    result = sub_22D8B12BC();
    v7 = result;
    v8 = 0;
    v9 = *(result - 8);
    v24 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v25 = v5;
    v22 = (v9 + 8);
    v23 = v9 + 16;
    while (v8 < *(v5 + 16))
    {
      v28 = v21;
      v10 = *(v9 + 64);
      v11 = v24 + *(v9 + 72) * v8;
      MEMORY[0x28223BE20](result);
      v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v13);
      v14 = sub_22D8B0D8C();
      v15 = *(v14 - 8);
      v16 = *(v15 + 64);
      MEMORY[0x28223BE20](v14);
      v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_22D8B127C();
      v19 = sub_22D8B0D0C();
      (*(v15 + 8))(v18, v14);
      if (v19)
      {
        v20 = sub_22D8B128C();
        result = (*v22)(v13, v7);
        v5 = v25;
        if ((v20 & 1) == 0)
        {

          return 1;
        }
      }

      else
      {
        result = (*v22)(v13, v7);
        v5 = v25;
      }

      if (v26 == ++v8)
      {

        return 0;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_22D8AAC30(uint64_t a1, uint64_t a2)
{
  result = sub_22D8B0D4C();
  v4 = 0;
  v5 = result + 64;
  v27 = result;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v8;
LABEL_10:
    v8 = (v10 - 1) & v10;
    if (*(a2 + 16))
    {
      v12 = __clz(__rbit64(v10)) | (v4 << 6);
      v13 = (*(v27 + 56) + 16 * v12);
      v14 = v13[1];
      v26 = *v13;
      v15 = (*(v27 + 48) + 16 * v12);
      v16 = *v15;
      v17 = v15[1];

      v18 = a2;
      v19 = sub_22D852D10(v16, v17);
      v21 = v20;

      if ((v21 & 1) == 0 || ((v22 = (*(v18 + 56) + 16 * v19), *v22 == v26) ? (v23 = v22[1] == v14) : (v23 = 0), v23))
      {

        a2 = v18;
      }

      else
      {
        v24 = sub_22D8B1F8C();

        a2 = v18;
        if ((v24 & 1) == 0)
        {
          v25 = 0;
LABEL_20:

          return v25;
        }
      }
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      v25 = 1;
      goto LABEL_20;
    }

    v10 = *(v5 + 8 * v11);
    ++v4;
    if (v10)
    {
      v4 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D8AADCC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = a3;
  v5 = a1;
  v6 = *(a2 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_variantResolverMappings);
  v7 = a1[4];
  sub_22D84E124(a1, a1[3]);
  v8 = *(v7 + 8);
  v9 = sub_22D8B0A4C();
  v10 = sub_22D879550(v9);

  if (!v10)
  {
    if (qword_2814589E0 == -1)
    {
LABEL_17:
      v40 = sub_22D8B178C();
      sub_22D84C6FC(v40, qword_281459298);
      sub_22D84E298(v5, v59);
      v41 = sub_22D8B176C();
      v42 = sub_22D8B1C4C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v60 = v44;
        *v43 = 136446210;
        v45 = v59[4];
        sub_22D84E124(v59, v59[3]);
        v46 = *(v45 + 8);
        v47 = sub_22D8B0A4C();
        v49 = v48;
        sub_22D84D8A0(v59);
        v50 = sub_22D84C63C(v47, v49, &v60);

        *(v43 + 4) = v50;
        _os_log_impl(&dword_22D84A000, v41, v42, "availableUseCases: Resource '%{public}s' does not have a corresponding variant resolver mapping", v43, 0xCu);
        sub_22D84D8A0(v44);
        MEMORY[0x2318D50E0](v44, -1, -1);
        MEMORY[0x2318D50E0](v43, -1, -1);
      }

      else
      {

        sub_22D84D8A0(v59);
      }

      return 0;
    }

LABEL_29:
    swift_once();
    goto LABEL_17;
  }

  v11 = v5[4];
  sub_22D84E124(v5, v5[3]);
  v12 = *(v11 + 8);
  v13 = sub_22D8B0A6C();
  v14 = sub_22D879550(v13);

  if (!v14)
  {
    return 1;
  }

  v5 = (v14 + 64);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v53[1] = v53;
  v56 = sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
  v18 = (*(*(v56 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v56);
  v20 = v53 - v19;
  v21 = (v15 + 63) >> 6;

  v22 = 0;
  v54 = v21;
  v55 = v14;
  if (!v17)
  {
LABEL_7:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {
        v51 = 1;
        goto LABEL_26;
      }

      v17 = v5[v23];
      ++v22;
      if (v17)
      {
        v58 = v4;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  while (1)
  {
    v58 = v4;
    v23 = v22;
LABEL_11:
    v24 = __clz(__rbit64(v17)) | (v23 << 6);
    v25 = *(v14 + 48);
    v26 = sub_22D8B122C();
    (*(*(v26 - 8) + 16))(v20, v25 + *(*(v26 - 8) + 72) * v24, v26);
    v27 = *(*(v14 + 56) + 8 * v24);
    *&v20[*(v56 + 48)] = v27;

    v28 = sub_22D8B121C();
    v30 = v57;
    if (!*(v57 + 16))
    {

      goto LABEL_25;
    }

    v31 = v20;
    v32 = sub_22D852D10(v28, v29);
    v34 = v33;

    if ((v34 & 1) == 0)
    {
      break;
    }

    v36 = (*(v30 + 56) + 16 * v32);
    v37 = v36[1];
    v59[0] = *v36;
    v59[1] = v37;
    MEMORY[0x28223BE20](v35);
    v53[-2] = v59;

    v38 = v58;
    v39 = sub_22D855C1C(sub_22D8727B0, &v53[-4], v27);
    v4 = v38;

    if (!v39)
    {
      break;
    }

    v17 &= v17 - 1;
    v20 = v31;
    sub_22D84D014(v31, &qword_27DA0D838, &unk_22D8B4DC0);
    v22 = v23;
    v21 = v54;
    v14 = v55;
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  v20 = v31;
LABEL_25:
  sub_22D84D014(v20, &qword_27DA0D838, &unk_22D8B4DC0);
  v51 = 0;
LABEL_26:

  return v51;
}

void CatalogServiceServer.Server.availableUseCases(useCaseIdentifiers:includeAssetsInformation:with:)()
{
  sub_22D8B0028();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  sub_22D84C3FC(v9);
  v11 = *(v10 + 64);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v12);
  sub_22D8AFFE8();
  sub_22D84E35C();
  sub_22D84C4F8(v13, v14, v15, v16);
  sub_22D8AF3F4();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v8;
  *(v17 + 40) = v0;
  *(v17 + 48) = v6;
  *(v17 + 56) = v4;
  *(v17 + 64) = v2;

  v18 = v0;

  sub_22D8AEFE4();
  sub_22D8930E4();

  sub_22D8AFEDC();
}

uint64_t sub_22D8AB378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 88) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22D8AB3A0, 0, 0);
}

uint64_t sub_22D8AB3A0()
{
  sub_22D84D77C();
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v1 = sub_22D8B178C();
  *(v0 + 48) = sub_22D84C6FC(v1, qword_281459298);
  v2 = sub_22D8B176C();
  v3 = sub_22D8B1C6C();
  if (sub_22D84CEE0(v3))
  {
    v4 = sub_22D85225C();
    sub_22D84C544(v4);
    sub_22D84C460();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_22D84DDE4();
  }

  v10 = *(v0 + 16);

  v11 = sub_22D8AB76C(v10);
  *(v0 + 56) = v11;
  v12 = swift_task_alloc();
  *(v0 + 64) = v12;
  *v12 = v0;
  v12[1] = sub_22D8AB4D0;
  v13 = *(v0 + 88);
  v14 = *(v0 + 24);

  return sub_22D8A2050(v11, v13);
}

uint64_t sub_22D8AB4D0()
{
  sub_22D84D77C();
  v3 = v2;
  sub_22D84C734();
  v5 = v4;
  sub_22D84F51C();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  sub_22D84CED0();
  *v10 = v9;
  v5[9] = v0;

  if (!v0)
  {
    v11 = v5[7];

    v5[10] = v3;
  }

  sub_22D8AEFD4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22D8AB5E0()
{
  sub_22D84D77C();
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *(v1 + 80);
  v5 = sub_22D8AF384();
  v3(v5);

  sub_22D84D800();

  return v6();
}

uint64_t sub_22D8AB658()
{
  sub_22D8AFC1C();
  sub_22D84F8A0();
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];

  v4 = v1;
  v5 = sub_22D8B176C();
  sub_22D8B1C4C();

  if (sub_22D8AFC90())
  {
    v6 = v0[9];
    sub_22D84DD3C();
    v7 = sub_22D84C600();
    sub_22D84C520(5.8381e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    sub_22D8AF7F8(v8);
    sub_22D8AF09C(&dword_22D84A000, v9, v10, "availableUseCases: error while processing request %{public}@");
    sub_22D84D014(v7, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84F8CC();
    sub_22D84D6DC();
  }

  v11 = v0[9];
  v13 = v0[4];
  v12 = v0[5];

  v14 = v11;
  v15 = sub_22D84CF98();
  v13(v15);

  sub_22D84D800();
  sub_22D8AFC08();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_22D8AB76C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_22D8B0D8C();
  v4 = *(*(v3 - 8) + 64);
  v40 = *(v3 - 8);
  v41 = (v40 + 32);
  v38 = v40 + 8;
  v39 = (v40 + 16);
  v43 = MEMORY[0x277D84F90];
  v5 = (a1 + 40);
  *&v6 = 136315138;
  v37 = v6;
  v45 = v3;
  v42 = v4;
  do
  {
    v47 = v5;
    v48 = v1;
    v46 = &v37;
    v7 = *(v5 - 1);
    v8 = *v5;
    MEMORY[0x28223BE20](v3);
    v9 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
    v10 = &v37 - v9;
    v11 = sub_22D8580D8(qword_27DA0D9F0, &unk_22D8B4DE0);
    v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v11 - 8);
    v14 = &v37 - v13;
    swift_bridgeObjectRetain_n();
    v44 = v7;
    sub_22D8B0D7C();
    v15 = v45;
    if (sub_22D84D0C0(v14, 1, v45) == 1)
    {
      sub_22D84D014(v14, qword_27DA0D9F0, &unk_22D8B4DE0);
      if (qword_2814589E0 != -1)
      {
        swift_once();
      }

      v16 = sub_22D8B178C();
      sub_22D84C6FC(v16, qword_281459298);

      v17 = sub_22D8B176C();
      v18 = sub_22D8B1C4C();

      v19 = os_log_type_enabled(v17, v18);
      v20 = v48;
      if (v19)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v49 = v22;
        *v21 = v37;
        v23 = sub_22D84C63C(v44, v8, &v49);

        *(v21 + 4) = v23;
        _os_log_impl(&dword_22D84A000, v17, v18, "availableUseCases could not convert identifier %s into a valid UseCaseIdentifier", v21, 0xCu);
        sub_22D84D8A0(v22);
        MEMORY[0x2318D50E0](v22, -1, -1);
        MEMORY[0x2318D50E0](v21, -1, -1);
      }

      else
      {
      }
    }

    else
    {

      v24 = *v41;
      v25 = (*v41)(&v37 - v9, v14, v15);
      MEMORY[0x28223BE20](v25);
      v26 = &v37 - v9;
      (*v39)(&v37 - v9, &v37 - v9, v15);
      v27 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = *(v27 + 16);
        sub_22D853C84();
        v27 = v34;
      }

      v28 = *(v27 + 16);
      if (v28 >= *(v27 + 24) >> 1)
      {
        sub_22D853C84();
        v27 = v35;
      }

      v29 = v40;
      v30 = v10;
      v31 = v45;
      (*(v40 + 8))(v30, v45);
      *(v27 + 16) = v28 + 1;
      v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v43 = v27;
      v3 = v24((v27 + v32 + *(v29 + 72) * v28), v26, v31);
      v20 = v48;
    }

    v5 = v47 + 2;
    v1 = v20 - 1;
    v4 = v42;
  }

  while (v1);
  return v43;
}

uint64_t CatalogServiceServer.Server.debugInformation(options:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  sub_22D84C3FC(v7);
  v9 = *(v8 + 64);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v10);
  sub_22D8AFCE0();
  sub_22D8B1B9C();
  sub_22D84E35C();
  sub_22D84C4F8(v11, v12, v13, v14);
  sub_22D8AFDB0();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = v3;
  v15[6] = a2;
  v15[7] = a3;
  v16 = a1;
  v17 = v3;

  sub_22D8AEFE4();
  sub_22D8930E4();
}

uint64_t sub_22D8ABD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return MEMORY[0x2822009F8](sub_22D8ABD90, 0, 0);
}

uint64_t sub_22D8ABD90()
{
  sub_22D84D77C();
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v1 = sub_22D8B178C();
  sub_22D84DD10(v1, qword_281459298);
  v2 = sub_22D8B176C();
  v3 = sub_22D8B1C6C();
  if (sub_22D84CEE0(v3))
  {
    v4 = sub_22D85225C();
    sub_22D84C544(v4);
    sub_22D84C460();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_22D84DDE4();
  }

  v10 = v0[8];
  v11 = v0[9];

  v12 = sub_22D8B102C();
  v0[12] = v12;
  sub_22D84C5D0(v12);
  v0[13] = v13;
  v15 = *(v14 + 64);
  v16 = sub_22D84C584();
  v0[14] = v16;
  [v10 integerValue];
  sub_22D8B101C();
  sub_22D84E298(v11 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_unifiedAssetInterface, (v0 + 2));
  if (qword_281459018 != -1)
  {
    sub_22D84DB74();
  }

  v0[7] = qword_281459480;
  v17 = sub_22D8B0BCC();
  v0[15] = v17;
  sub_22D84C5D0(v17);
  v0[16] = v18;
  v0[17] = *(v19 + 64);
  v20 = sub_22D84C584();
  v0[18] = v20;

  swift_task_alloc();
  sub_22D84DDC0();
  v0[19] = v21;
  *v21 = v22;
  v21[1] = sub_22D8ABFB4;

  return sub_22D85A6E0(v20, v16);
}

uint64_t sub_22D8ABFB4()
{
  sub_22D84D198();
  sub_22D84C734();
  v2 = *(v1 + 152);
  v3 = *v0;
  sub_22D84CED0();
  *v4 = v3;

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22D8AC09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22D852350();
  v15 = v14[18];
  v16 = v14[15];
  v17 = v14[16];
  v18 = v14[13];
  v19 = v14[11];
  v36 = v14[12];
  v37 = v14[14];
  v20 = v14[10];
  v21 = v14[17] + 15;
  sub_22D8B104C();
  swift_task_alloc();
  sub_22D8AF87C(v17);
  v22();
  v23 = sub_22D8B103C();

  v20(v23, 0);

  v24 = *(v17 + 8);
  v25 = sub_22D84C538();
  v26(v25);
  sub_22D8ADE3C((v14 + 2));
  (*(v18 + 8))(v37, v36);

  sub_22D84D800();
  sub_22D8728C8();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, a12, a13, a14);
}

void sub_22D8AC250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22D8B1ACC();
  if (a2)
  {
    v6 = sub_22D8B068C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_22D8AC2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22D8AC320, 0, 0);
}

uint64_t sub_22D8AC320()
{
  sub_22D84D198();
  v1 = v0[2];
  v2 = sub_22D8B0B1C();
  v0[5] = v2;
  sub_22D84C5D0(v2);
  v0[6] = v3;
  v5 = *(v4 + 64);
  v6 = sub_22D84C584();
  v0[7] = v6;
  sub_22D8B0F8C();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  sub_22D84DD88(v7);

  return sub_22D8B0174(v6);
}

uint64_t sub_22D8AC404()
{
  sub_22D84F8A0();
  sub_22D84C734();
  v3 = v2;
  sub_22D84F51C();
  *v4 = v3;
  v6 = v5[8];
  v7 = v5[7];
  v8 = v5[6];
  v9 = v5[5];
  v10 = *v1;
  sub_22D84CED0();
  *v11 = v10;
  *(v3 + 72) = v0;

  v12 = *(v8 + 8);
  v13 = sub_22D8538E0();
  v14(v13);
  if (!v0)
  {
    v15 = *(v3 + 56);
  }

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22D8AC564()
{
  sub_22D84D198();
  v1 = *(v0 + 32);
  (*(v0 + 24))(0, 0xE000000000000000, 0);
  sub_22D84D800();

  return v2();
}

uint64_t sub_22D8AC5CC()
{
  sub_22D8AFC1C();
  sub_22D84F8A0();
  v1 = v0[7];

  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v2 = v0[9];
  v3 = sub_22D8B178C();
  sub_22D84DD10(v3, qword_281459298);
  v4 = v2;
  v5 = sub_22D8B176C();
  sub_22D8B1C4C();

  if (sub_22D8AFC90())
  {
    v6 = v0[9];
    sub_22D84DD3C();
    v7 = sub_22D84C600();
    sub_22D84C520(5.7779e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    sub_22D8AF7F8(v8);
    sub_22D8AF09C(&dword_22D84A000, v9, v10, "donateSafetyFailure: error while donating safety failure: %@");
    sub_22D84D014(v7, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84F8CC();
    sub_22D84D6DC();
  }

  v11 = v0[9];
  v13 = v0[3];
  v12 = v0[4];

  v14 = v11;
  v15 = sub_22D862778();
  v13(v15);

  sub_22D84D800();
  sub_22D8AFC08();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t CatalogServiceServer.Server.safetyFailures(userIdentifier:with:)(int a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  sub_22D84C3FC(v6);
  v8 = *(v7 + 64);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v9);
  sub_22D8B0008();
  sub_22D84E35C();
  sub_22D84C4F8(v10, v11, v12, v13);
  sub_22D8AF500();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;

  sub_22D8AEFE4();
  sub_22D8930E4();
}

uint64_t sub_22D8AC824(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 72) = a4;
  return MEMORY[0x2822009F8](sub_22D8AC848, 0, 0);
}

uint64_t sub_22D8AC848()
{
  sub_22D84D198();
  v1 = *(v0 + 72);
  v2 = sub_22D8B131C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 32) = sub_22D8B12FC();
  v5 = *(MEMORY[0x277D0D880] + 4);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_22D8AC90C;
  v7 = *(v0 + 72);

  return MEMORY[0x2821659D0](v7);
}

uint64_t sub_22D8AC90C()
{
  sub_22D84F8A0();
  v3 = v2;
  v5 = v4;
  sub_22D84C734();
  v7 = v6;
  sub_22D84F51C();
  *v8 = v7;
  v10 = *(v9 + 40);
  v11 = *v1;
  sub_22D84CED0();
  *v12 = v11;
  v7[6] = v0;

  if (!v0)
  {
    v7[7] = v3;
    v7[8] = v5;
  }

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22D8ACA24()
{
  sub_22D84D77C();
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v6 = sub_22D84EB60();
  sub_22D879444(v6, v7);
  v8 = sub_22D84EB60();
  v5(v8);
  v9 = sub_22D84EB60();
  sub_22D877894(v9, v10);
  v11 = sub_22D84EB60();
  sub_22D877894(v11, v12);
  sub_22D84D800();

  return v13();
}

uint64_t sub_22D8ACAB4()
{
  sub_22D8AFC1C();
  sub_22D84F8A0();
  v1 = v0[4];

  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v2 = v0[6];
  v3 = sub_22D8B178C();
  sub_22D84DD10(v3, qword_281459298);
  v4 = v2;
  v5 = sub_22D8B176C();
  sub_22D8B1C4C();

  if (sub_22D8AFC90())
  {
    v6 = v0[6];
    sub_22D84DD3C();
    v7 = sub_22D84C600();
    sub_22D84C520(5.7779e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    sub_22D8AF7F8(v8);
    sub_22D8AF09C(&dword_22D84A000, v9, v10, "safetyFailures: error while getting safety failure: %@");
    sub_22D84D014(v7, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84F8CC();
    sub_22D84D6DC();
  }

  v11 = v0[6];
  v13 = v0[2];
  v12 = v0[3];

  v14 = v11;
  v13(0, 0xF000000000000000, v11);

  sub_22D84D800();
  sub_22D8AFC08();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

void sub_22D8ACC9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_22D8B068C();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_22D8B07AC();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

id CatalogServiceServer.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CatalogServiceServer.Server.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22D8ACDF8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_22D8B19CC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_22D8ACE5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_22D8580D8(&qword_27DA0DCB0, &qword_22D8B4E18);
    v2 = sub_22D8B1F2C();
    v18 = v2;
    sub_22D8B1ECC();
    while (1)
    {
      v3 = sub_22D8B1EEC();
      if (!v3)
      {

        return v2;
      }

      v16 = v3;
      sub_22D8B113C();
      swift_dynamicCast();
      sub_22D8B10EC();
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_22D8AD050(v4 + 1, 1);
      }

      v2 = v18;
      v5 = *(v18 + 40);
      result = sub_22D8B1D5C();
      v7 = v18 + 64;
      v8 = -1 << *(v18 + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      if (((-1 << v9) & ~*(v18 + 64 + 8 * (v9 >> 6))) == 0)
      {
        break;
      }

      v11 = __clz(__rbit64((-1 << v9) & ~*(v18 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v18 + 48) + 8 * v11) = v17;
      *(*(v18 + 56) + 8 * v11) = v16;
      ++*(v18 + 16);
    }

    v12 = 0;
    v13 = (63 - v8) >> 6;
    while (++v10 != v13 || (v12 & 1) == 0)
    {
      v14 = v10 == v13;
      if (v10 == v13)
      {
        v10 = 0;
      }

      v12 |= v14;
      v15 = *(v7 + 8 * v10);
      if (v15 != -1)
      {
        v11 = __clz(__rbit64(~v15)) + (v10 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22D8AD050(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22D8580D8(&qword_27DA0DCB0, &qword_22D8B4E18);
  result = sub_22D8B1F1C();
  v8 = result;
  if (!*(v5 + 16))
  {

LABEL_34:
    *v3 = v8;
    return result;
  }

  v34 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        sub_22D88C8E8(0, (v33 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v5 + 48) + 8 * v19);
    v21 = *(*(v5 + 56) + 8 * v19);
    if ((a2 & 1) == 0)
    {
      v22 = v20;
      v23 = v21;
    }

    v24 = *(v8 + 40);
    result = sub_22D8B1D5C();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v8 + 48) + 8 * v28) = v20;
    *(*(v8 + 56) + 8 * v28) = v21;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

_OWORD *sub_22D8AD2B4()
{
  sub_22D8B0028();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v9 = sub_22D852D10(v4, v2);
  sub_22D84E448(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = sub_22D8B1FBC();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  sub_22D8580D8(&qword_27DA0D5F8, &qword_22D8B33B8);
  if (sub_22D8B1EAC())
  {
    v16 = *v1;
    sub_22D852D10(v5, v3);
    sub_22D8AF258();
    if (!v18)
    {
      goto LABEL_14;
    }

    v14 = v17;
  }

  v19 = *v1;
  if (v15)
  {
    sub_22D84D8A0((*(v19 + 56) + 32 * v14));
    sub_22D8AF580();
    sub_22D8AFEDC();

    return sub_22D855C0C(v20, v21);
  }

  else
  {
    sub_22D877930(v14, v5, v3, v7, v19);
    sub_22D8AFEDC();
  }
}

uint64_t sub_22D8AD400()
{
  sub_22D851698();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_22D852D10(v4, v2);
  sub_22D84E448(v11, v12);
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = sub_22D8B1FBC();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  sub_22D8580D8(&qword_27DA0DC08, &qword_22D8B4A80);
  if (sub_22D84E1AC())
  {
    v18 = *v1;
    v19 = sub_22D8AF214();
    sub_22D852D10(v19, v20);
    sub_22D8AF248();
    if (!v22)
    {
      goto LABEL_14;
    }

    v16 = v21;
  }

  v23 = *v1;
  if (v17)
  {
    sub_22D8AFD98(v23[7]);
    *v24 = v9;
    v24[1] = v7;
    sub_22D84D1C0();
  }

  else
  {
    sub_22D877974(v16, v5, v3, v9, v7, v23);
    sub_22D84D1C0();
  }
}

uint64_t sub_22D8AD538()
{
  sub_22D8AFEF0();
  v7 = sub_22D8AF274(v4, v5, v6);
  sub_22D84E448(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_22D8B1FBC();
    __break(1u);
    return result;
  }

  sub_22D8AFF28();
  if (sub_22D84E1AC())
  {
    v10 = *v1;
    v11 = sub_22D84CFB4();
    sub_22D852D10(v11, v12);
    sub_22D8AF248();
    if (!v14)
    {
      goto LABEL_14;
    }

    v3 = v13;
  }

  if (v2)
  {
    v15 = *(*v1 + 56);
    v16 = *(v15 + 8 * v3);
    *(v15 + 8 * v3) = v0;
    sub_22D8AF604();
  }

  else
  {
    v19 = sub_22D8AF970();
    v20(v19);
    sub_22D8AF604();
  }
}

void sub_22D8AD600()
{
  sub_22D8AFEF0();
  v7 = sub_22D8AF274(v4, v5, v6);
  sub_22D84E448(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_14:
    sub_22D8B1FBC();
    __break(1u);
    return;
  }

  sub_22D8AFF28();
  if (sub_22D84E1AC())
  {
    v10 = *v1;
    v11 = sub_22D84CFB4();
    sub_22D852D10(v11, v12);
    sub_22D8AF248();
    if (!v14)
    {
      goto LABEL_14;
    }

    v3 = v13;
  }

  if (v2)
  {
    v15 = *(*v1 + 56);
    v16 = *(v15 + 8 * v3);
    *(v15 + 8 * v3) = v0;
    sub_22D8AF604();
  }

  else
  {
    v19 = sub_22D8AF970();
    v20(v19);
    sub_22D8AF604();
  }
}

unint64_t sub_22D8AD6C8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22D8AD6E8()
{
  sub_22D8AFC1C();
  sub_22D84F8A0();
  sub_22D84C4E8();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_22D84D1FC(v2);
  *v3 = v4;
  sub_22D84DF3C(v3);
  sub_22D8AFC08();

  return sub_22D89ABCC(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D8AD77C()
{
  sub_22D8AFC1C();
  sub_22D84F8A0();
  sub_22D84C4E8();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_22D84D1FC(v2);
  *v3 = v4;
  sub_22D84DF3C(v3);
  sub_22D8AFC08();

  return sub_22D89B050(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D8AD810()
{
  sub_22D872924();
  sub_22D84C4E8();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_22D84D1FC(v3);
  *v4 = v5;
  v6 = sub_22D84DF3C(v4);

  return sub_22D89BD30(v6, v7, v8, v9, v10, v2, v1);
}

uint64_t sub_22D8AD8B8()
{
  sub_22D8AFC1C();
  sub_22D84F8A0();
  sub_22D84C4E8();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_22D84D1FC(v2);
  *v3 = v4;
  sub_22D84DF3C(v3);
  sub_22D8AFC08();

  return sub_22D89FCB0(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D8AD94C()
{
  sub_22D8AF6DC();
  sub_22D872924();
  sub_22D84D764();
  v0 = swift_task_alloc();
  v1 = sub_22D84D1FC(v0);
  *v1 = v2;
  sub_22D84DF3C(v1);
  sub_22D84E19C();
  sub_22D8AF734();

  return sub_22D8A03C8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D8AD9DC()
{
  sub_22D8AF6DC();
  sub_22D872924();
  sub_22D84C4E8();
  v1 = *(v0 + 48);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = swift_task_alloc();
  v5 = sub_22D84D1FC(v4);
  *v5 = v6;
  sub_22D84DF3C(v5);
  sub_22D8AF734();

  return sub_22D8AB378(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_22D8ADA7C()
{
  sub_22D872924();
  sub_22D84C4E8();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_22D84D1FC(v3);
  *v4 = v5;
  v6 = sub_22D84DF3C(v4);

  return sub_22D8ABD6C(v6, v7, v8, v9, v10, v2, v1);
}

uint64_t sub_22D8ADB24()
{
  sub_22D8AFC1C();
  sub_22D84F8A0();
  sub_22D84C4E8();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_22D84D1FC(v2);
  *v3 = v4;
  sub_22D84DF3C(v3);
  sub_22D8AFC08();

  return sub_22D8AC2FC(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D8ADBB8()
{
  sub_22D8AFC1C();
  sub_22D84F8A0();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = swift_task_alloc();
  v7 = sub_22D84D1FC(v6);
  *v7 = v8;
  sub_22D84DC44(v7);
  sub_22D8AFC08();

  return sub_22D8AC824(v9, v10, v11, v12, v13, v14);
}

uint64_t type metadata accessor for CatalogServiceServer.Server()
{
  result = qword_2814591C0;
  if (!qword_2814591C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22D8ADD04()
{
  result = sub_22D8B073C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_22D8ADE18(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_22D8ADEAC()
{
  result = qword_281458930;
  if (!qword_281458930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281458930);
  }

  return result;
}

unint64_t sub_22D8ADF00()
{
  result = qword_281458938;
  if (!qword_281458938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281458938);
  }

  return result;
}

uint64_t sub_22D8ADF74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_22D8ADFEC()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  sub_22D8AE06C();
}

void sub_22D8AE06C()
{
  sub_22D8B0028();
  v3 = v2;
  v12[6] = *MEMORY[0x277D85DE8];
  v12[0] = isStackAllocationSafe;
  v5 = *(v4 + 32);
  v12[3] = v12;
  v12[4] = v4;
  v6 = ((1 << v5) + 63) >> 6;
  if (v5 & 0x3Fu) <= 0xD || (v9 = v1, isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    sub_22D88C8E8(0, v6, &v12[-1] - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    v7 = sub_22D851E68();
    v3(v7);
    sub_22D8AEFC8();
  }

  else
  {
    v10 = swift_slowAlloc();
    sub_22D8AE560(v10, v6, v9);
    sub_22D8AEFC8();

    sub_22D84F8CC();
  }

  v8 = *MEMORY[0x277D85DE8];
  sub_22D8AFEDC();
}

uint64_t sub_22D8AE1E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v34 = a4 + 56;

  v29 = 0;
  v11 = 0;
  v31 = v9;
  v32 = v5;
LABEL_5:
  while (v8)
  {
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = (*(a3 + 48) + ((v11 << 10) | (16 * v13)));
    v16 = *v14;
    v15 = v14[1];
    v17 = *(a4 + 40);
    sub_22D8B201C();

    sub_22D8B1A6C();
    v18 = sub_22D8B205C();
    v19 = ~(-1 << *(a4 + 32));
    do
    {
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = 1 << (v18 & v19);
      if ((v22 & *(v34 + 8 * v21)) == 0)
      {

        v9 = v31;
        v5 = v32;
        goto LABEL_5;
      }

      v23 = (*(a4 + 48) + 16 * v20);
      if (*v23 == v16 && v23[1] == v15)
      {
        break;
      }

      v25 = sub_22D8B1F8C();
      v18 = v20 + 1;
    }

    while ((v25 & 1) == 0);

    v26 = a1[v21];
    a1[v21] = v26 | v22;
    v9 = v31;
    v5 = v32;
    if ((v26 & v22) == 0 && __OFADD__(v29++, 1))
    {
      goto LABEL_24;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return sub_22D877FBC(a1, a2, v29, a4);
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22D8AE3D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v25 = *(a3 + 16);
  v23 = result;
  v24 = a3 + 32;
  v7 = a4 + 56;
  while (1)
  {
    v22 = v5;
LABEL_3:
    if (v6 == v25)
    {
      goto LABEL_19;
    }

    if (v6 >= v25)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_21;
    }

    v8 = (v24 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    v26 = v6 + 1;
    v11 = *(a4 + 40);
    sub_22D8B201C();

    sub_22D8B1A6C();
    v12 = sub_22D8B205C();
    v13 = ~(-1 << *(a4 + 32));
    do
    {
      v14 = v12 & v13;
      v15 = (v12 & v13) >> 6;
      v16 = 1 << (v12 & v13);
      if ((v16 & *(v7 + 8 * v15)) == 0)
      {

        v6 = v26;
        goto LABEL_3;
      }

      v17 = (*(a4 + 48) + 16 * v14);
      if (*v17 == v10 && v17[1] == v9)
      {
        break;
      }

      v19 = sub_22D8B1F8C();
      v12 = v14 + 1;
    }

    while ((v19 & 1) == 0);

    v20 = v23[v15];
    v23[v15] = v20 | v16;
    v6 = v26;
    if ((v20 & v16) != 0)
    {
      goto LABEL_3;
    }

    v5 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_19:

      return sub_22D877FBC(v23, a2, v22, a4);
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_22D8AE560(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_22D8AE5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_22D8B1F8C() & 1;
  }
}

uint64_t sub_22D8AE65C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22D8AF0BC();
  sub_22D8551D4(v3, v4);
  return sub_22D8B19AC() & 1;
}

void *sub_22D8AE6F8(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a4 + 56;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  if (!a2)
  {
    v11 = 0;
    a3 = 0;
LABEL_22:
    *result = a4;
    result[1] = v5;
    result[2] = ~v6;
    result[3] = v11;
    result[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v11 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v27 = -1 << *(a4 + 32);
    v28 = result;
    v10 = 0;
    v11 = 0;
    v29 = (63 - v6) >> 6;
    v30 = a3;
    while (1)
    {
      if (v10 >= a3)
      {
        goto LABEL_25;
      }

      if (__OFADD__(v10, 1))
      {
        goto LABEL_26;
      }

      v12 = v10;
      v33 = v10 + 1;
      v34 = v9;
      v13 = sub_22D8B12BC();
      v14 = *(v13 - 8);
      v15 = *(v14 + 64);
      v16 = MEMORY[0x28223BE20](&v27);
      v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      result = MEMORY[0x28223BE20](v16);
      v21 = &v27 - v19;
      if (!v8)
      {
        while (1)
        {
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v22 >= v29)
          {
            v8 = 0;
            a3 = v12;
            result = v28;
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v22);
          ++v11;
          if (v8)
          {
            v31 = v20;
            v32 = result;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v31 = v20;
      v32 = result;
      v22 = v11;
LABEL_16:
      v23 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v24 = *(v14 + 72);
      (*(v14 + 16))(&v27 - v19, *(a4 + 48) + v24 * (v23 | (v22 << 6)), v13);
      v25 = *(v14 + 32);
      v25(v18, v21, v13);
      v26 = v34;
      result = (v25)(v34, v18, v13);
      a3 = v30;
      if (v33 == v30)
      {
        break;
      }

      v9 = v26 + v24;
      v10 = v33;
      v11 = v22;
    }

    v11 = v22;
    result = v28;
LABEL_20:
    v6 = v27;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22D8AE98C(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22D8AEB14(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22D8AEB24@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_22D8AE1E4(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_22D8AEB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_22D8AE3D4(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_22D8AEBC8()
{
  v1 = sub_22D8580D8(&qword_27DA0DCB8, &qword_22D8B4E20);
  sub_22D84C3FC(v1);
  v3 = *(v2 + 80);
  sub_22D84D24C();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_22D893DE0(v4);
}

uint64_t sub_22D8AEC30(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22D84D794();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22D8AEC74()
{
  v1 = sub_22D8B0C6C();
  sub_22D84C3FC(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  return sub_22D8B0C5C();
}

uint64_t sub_22D8AECE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22D852220(a1, a2, a3, a4);
  sub_22D84C740(v5);
  v7 = *(v6 + 16);
  v8 = sub_22D8AF580();
  v9(v8);
  return v4;
}

uint64_t sub_22D8AED30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22D852220(a1, a2, a3, a4);
  sub_22D84C740(v5);
  v7 = *(v6 + 32);
  v8 = sub_22D8AF580();
  v9(v8);
  return v4;
}

uint64_t sub_22D8AEDAC()
{
  sub_22D84D77C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22D84D1FC(v3);
  *v4 = v5;
  v4[1] = sub_22D851AF8;
  v6 = sub_22D855A60();

  return v7(v6, v2, v1);
}

void sub_22D8AEF40()
{
  sub_22D84D8A0(v0);

  JUMPOUT(0x2318D50E0);
}

void sub_22D8AEF74()
{
  sub_22D84D8A0(v0);

  JUMPOUT(0x2318D50E0);
}

void sub_22D8AEFA8()
{
  v2 = *(v0 - 104);

  JUMPOUT(0x2318D50E0);
}

void sub_22D8AF038()
{

  JUMPOUT(0x2318D50E0);
}

uint64_t sub_22D8AF080()
{

  return swift_slowAlloc();
}

void sub_22D8AF09C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t sub_22D8AF0F8()
{

  return swift_arrayDestroy();
}

void *sub_22D8AF134(int a1, int a2, int a3, void *aBlock)
{

  return _Block_copy(aBlock);
}

uint64_t sub_22D8AF15C()
{

  return swift_slowAlloc();
}

uint64_t sub_22D8AF1BC(unint64_t *a1)
{
  v2 = MEMORY[0x282221C18];

  return sub_22D8AEC30(a1, v2);
}

id sub_22D8AF1F4(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

unint64_t sub_22D8AF274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return sub_22D852D10(a2, a3);
}

void sub_22D8AF2B0()
{
  v1 = v0[89];
  v2 = v0[87];
  v3 = v0[84];
}

void sub_22D8AF2DC()
{

  JUMPOUT(0x2318D50E0);
}

void sub_22D8AF344()
{

  JUMPOUT(0x2318D50E0);
}

void sub_22D8AF394()
{
  v1 = (v0[76] + v0[83]);
  v0[96] = *v1;
  v0[97] = v1[1];
}

void sub_22D8AF3B8()
{
  v1 = (v0[76] + v0[83]);
  v0[96] = *v1;
  v0[97] = v1[1];
}

void sub_22D8AF400()
{
  ++*(v0 + 704);
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 904);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
}

uint64_t sub_22D8AF498@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[114] = v4;
  v6[113] = v5;
  v6[112] = a4;
  v8 = v6[94] + 40 * a1 + 72;

  return sub_22D84E298(v8, (v6 + 49));
}

uint64_t sub_22D8AF4CC()
{

  return swift_slowAlloc();
}

uint64_t sub_22D8AF4E8()
{

  return swift_slowAlloc();
}

uint64_t sub_22D8AF50C(uint64_t a1, uint64_t a2)
{
  sub_22D84C6FC(a1, a2);

  return swift_task_alloc();
}

uint64_t sub_22D8AF58C()
{
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);
  v5 = *(v0 + 696);
  v6 = *(v0 + 672);
  v7 = *(v0 + 908);
}

uint64_t sub_22D8AF5BC()
{
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);
  v5 = *(v0 + 696);
  v6 = *(v0 + 672);
  v7 = *(v0 + 908);
}

uint64_t sub_22D8AF5EC()
{

  return swift_task_alloc();
}

uint64_t sub_22D8AF63C(unint64_t *a1)
{
  v2 = MEMORY[0x282221898];

  return sub_22D8551D4(a1, v2);
}

uint64_t sub_22D8AF65C@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + 16 * a1);
  v6 = *v4;
  v5 = v4[1];
  v7 = *(v2 + 8 * a1);
}

uint64_t sub_22D8AF67C()
{

  return sub_22D8B1B9C();
}

uint64_t sub_22D8AF69C()
{

  return swift_slowAlloc();
}

uint64_t sub_22D8AF6B4()
{
  v2 = *(v1 - 128);
  result = v0;
  v4 = *(v1 - 112);
  return result;
}

uint64_t sub_22D8AF700(uint64_t a1, unint64_t a2)
{

  return sub_22D84C63C(a1, a2, (v2 - 96));
}

uint64_t sub_22D8AF74C()
{
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[84];
  v6 = v0[87] + 15;

  return sub_22D8B178C();
}

uint64_t sub_22D8AF79C()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
}

uint64_t sub_22D8AF7D0(uint64_t result)
{
  v3[89] = result;
  v3[90] = v1;
  v3[91] = v2 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return result;
}

uint64_t sub_22D8AF7F8(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

void sub_22D8AF804(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_22D8AF81C(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2112;
  return result;
}

void sub_22D8AF89C(uint64_t a1@<X8>)
{
  *(a1 + 16) = v4;
  v5 = a1 + 16 * v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
}

uint64_t sub_22D8AF8AC(uint64_t result)
{
  *(v1 + 872) = result;
  *(result + 16) = v2;
  return result;
}

uint64_t sub_22D8AF8BC()
{
  v3 = *(v0 + 696);
  v4 = *(v0 + 672);
  *(v1 - 120) = *(v0 + 908);

  return sub_22D8B0F6C();
}

uint64_t sub_22D8AF8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  *(v11 - 96) = a1;
  *v10 = a9;

  return sub_22D84E298(v9 + 472, v9 + 512);
}

void sub_22D8AF928(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_22D8AFA84()
{

  return swift_task_alloc();
}

uint64_t sub_22D8AFA9C()
{

  return swift_task_alloc();
}

uint64_t sub_22D8AFAB4()
{

  return sub_22D8B127C();
}

uint64_t sub_22D8AFAD8()
{

  return sub_22D8B127C();
}

uint64_t sub_22D8AFAFC()
{
  v4 = (*(v2 - 104) + 416);

  return sub_22D851550(v4, v0 + 40 * v1 + 32);
}

uint64_t sub_22D8AFB20()
{

  return swift_task_alloc();
}

uint64_t sub_22D8AFB38@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v3 - 104) + 16;

  return sub_22D84E298(v2 + a1 * v1, v5);
}

uint64_t sub_22D8AFB54()
{
  v2 = v0[94];
  v3 = v0[92];
  v4 = v0[89];
  v5 = v0[85];
  v6 = v0[84];
}

uint64_t sub_22D8AFB78()
{

  return sub_22D8B0E6C();
}

uint64_t sub_22D8AFB90()
{
  v2 = v0[94];
  v3 = v0[92];
  v4 = v0[89];
  v5 = v0[85];
  v6 = v0[84];
}

BOOL sub_22D8AFBCC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22D8AFBE4()
{
  v1[88] = v0;
  v3 = v1[76];
  v4 = v1[75];

  return swift_task_alloc();
}

uint64_t sub_22D8AFC30()
{

  return sub_22D8B198C();
}

uint64_t sub_22D8AFC48()
{

  return swift_task_alloc();
}

uint64_t sub_22D8AFC60()
{

  return swift_allocError();
}

void sub_22D8AFC78(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

BOOL sub_22D8AFC90()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t sub_22D8AFCA8()
{
}

void sub_22D8AFCC0()
{
  v1 = *(v0 - 104);
  v2 = *(v1 + 760);
  v3 = *(v1 + 792) + 1;
}

void sub_22D8AFD10()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[91];
  v4 = v0[90];
}

uint64_t sub_22D8AFD44@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 144) = 0xD000000000000029;
  *(v2 - 136) = a1;
  return v1;
}

uint64_t sub_22D8AFD78()
{
  v2 = *(*(v1 - 208) + 8);
  result = v0;
  v4 = *(v1 - 192);
  return result;
}

uint64_t sub_22D8AFDA4(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_22D8AFDC8()
{
  v1 = v0[8];
  v2 = *(v0[9] + 8);
  return v0[10];
}

uint64_t sub_22D8AFE08()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_22D8AFE5C(uint64_t result)
{
  *(v1 + 14) = result;
  *v2 = result;
  return result;
}

uint64_t sub_22D8AFF28()
{

  return sub_22D8580D8(v0, v1);
}

uint64_t sub_22D8AFF48(uint64_t a1, uint64_t a2, void (*a3)(void))
{

  return sub_22D8AE65C(a1, a2, a3);
}

void sub_22D8AFF68(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, v6, a4, a5, 0xCu);
}

uint64_t sub_22D8AFF88(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_22D84C63C(a1, v3, va);
}

uint64_t sub_22D8AFFA8()
{
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[36];

  return sub_22D879544();
}

BOOL sub_22D8AFFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{

  return sub_22D8934A0(v4, v6, v5, a4);
}

uint64_t sub_22D8AFFE8()
{

  return sub_22D8B1B9C();
}

uint64_t sub_22D8B0008()
{

  return sub_22D8B1B9C();
}

uint64_t sub_22D8B003C()
{
}

uint64_t sub_22D8B0054()
{

  return sub_22D8B178C();
}

uint64_t sub_22D8B006C()
{
}

uint64_t sub_22D8B0084()
{

  return swift_slowAlloc();
}

uint64_t sub_22D8B009C()
{

  return swift_beginAccess();
}

void sub_22D8B00B4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_22D8B00CC()
{

  return sub_22D8B1F8C();
}

id sub_22D8B00E4()
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v0;
}

uint64_t sub_22D8B00FC()
{

  return swift_task_alloc();
}

uint64_t sub_22D8B0114()
{

  return swift_task_alloc();
}

uint64_t sub_22D8B012C()
{

  return swift_task_alloc();
}

void sub_22D8B0144(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void sub_22D8B015C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_22D8B0194()
{
  v1 = v0[2];
  v2 = sub_22D8B0B0C();
  if (getuid() != v2)
  {
    if (qword_2814589E0 != -1)
    {
      sub_22D84DE60();
    }

    v3 = sub_22D8B178C();
    sub_22D84C6FC(v3, qword_281459298);
    v4 = sub_22D8B176C();
    v5 = sub_22D8B1C5C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67240192;
      *(v6 + 4) = v2;
      _os_log_impl(&dword_22D84A000, v4, v5, "TemporaryGuardrailsHelper:donateSafetyFailure does not support reporting for other users (%{public}u) on embedded platforms", v6, 8u);
      MEMORY[0x2318D50E0](v6, -1, -1);
    }
  }

  v7 = v0[2];
  sub_22D8B0B0C();
  v8 = sub_22D8B131C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v0[3] = sub_22D8B12FC();
  v11 = *(MEMORY[0x277D0D888] + 4);
  v12 = swift_task_alloc();
  v0[4] = v12;
  *v12 = v0;
  v12[1] = sub_22D8B0334;
  v13 = v0[2];

  return MEMORY[0x2821659E0](v13);
}

uint64_t sub_22D8B0334()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_22D8B04AC;
  }

  else
  {
    v3 = sub_22D8B0448;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D8B0448()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22D8B04AC()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

unint64_t sub_22D8B0510()
{
  result = qword_2814588F8;
  if (!qword_2814588F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814588F8);
  }

  return result;
}

uint64_t sub_22D8B0554(void *a1)
{
  v1 = [a1 countryCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22D8B19FC();

  return v3;
}

unint64_t sub_22D8B05B8()
{
  result = qword_281458918;
  if (!qword_281458918)
  {
    sub_22D85EE94(&qword_27DA0D7A0, &unk_22D8B3B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281458918);
  }

  return result;
}