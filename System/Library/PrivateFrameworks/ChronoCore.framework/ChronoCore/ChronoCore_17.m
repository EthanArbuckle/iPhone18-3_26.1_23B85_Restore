uint64_t sub_224BAC2D4(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v36 = v5;
  v37 = result;
  v34 = v1;
  while (v4)
  {
LABEL_10:
    v10 = *(*(result + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v4)))));
    v11 = v10 >> 62;
    v12 = v10;
    if (v10 >> 62)
    {
      v13 = sub_224DAF838();
    }

    else
    {
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      result = sub_224DAF838();
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v40 = v13;
    v15 = __OFADD__(result, v13);
    v16 = result + v13;
    if (v15)
    {
      goto LABEL_41;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v14)
      {
LABEL_22:
        sub_224DAF838();
      }

      else
      {
        v18 = v8 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v19 = *(v18 + 16);
      }

      result = sub_224DAF968();
      v17 = result;
      v18 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v14)
    {
      goto LABEL_22;
    }

    v17 = v8;
    v18 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v16 > *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

LABEL_24:
    v20 = *(v18 + 16);
    v21 = *(v18 + 24);
    v22 = v12;
    v39 = v17;
    if (v11)
    {
      v24 = v18;
      result = sub_224DAF838();
      v18 = v24;
      v22 = v12;
      v23 = result;
    }

    else
    {
      v23 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 &= v4 - 1;
    if (v23)
    {
      if (((v21 >> 1) - v20) < v40)
      {
        goto LABEL_43;
      }

      v25 = v18 + 8 * v20 + 32;
      v38 = v4;
      v35 = v18;
      v42 = v22;
      if (v11)
      {
        if (v23 < 1)
        {
          goto LABEL_45;
        }

        sub_224BB0D68();
        v26 = 0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A88, &unk_224DB9510);
          v27 = v23;
          v28 = v25;
          v29 = sub_224A6996C(v41, v26, v42);
          v31 = *v30;
          (v29)(v41, 0);
          v25 = v28;
          v23 = v27;
          *(v25 + 8 * v26++) = v31;
        }

        while (v27 != v26);
      }

      else
      {
        sub_224DAE8A8();
        swift_arrayInitWithCopy();
      }

      v8 = v39;
      v5 = v36;
      result = v37;
      v1 = v34;
      v4 = v38;
      if (v40 >= 1)
      {
        v32 = *(v35 + 16);
        v15 = __OFADD__(v32, v40);
        v33 = v32 + v40;
        if (v15)
        {
          goto LABEL_44;
        }

        *(v35 + 16) = v33;
      }
    }

    else
    {

      v8 = v39;
      v5 = v36;
      result = v37;
      if (v40 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v8;
    }

    v4 = *(v1 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void *sub_224BAC690(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v266 = a8;
  v272 = a7;
  v273 = a6;
  v271 = a5;
  v284 = a4;
  v270 = a3;
  v274 = a2;
  v10 = sub_224DAE6E8();
  v254 = *(v10 - 8);
  v11 = *(v254 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v227 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_224DAC268();
  v283 = *(v253 - 8);
  v14 = *(v283 + 64);
  MEMORY[0x28223BE20](v253);
  v255 = &v227 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAB258();
  v275 = *(v16 - 8);
  v17 = *(v275 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v279 = &v227 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v227 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v280 = &v227 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v259 = &v227 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v256 = &v227 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v227 - v30;
  MEMORY[0x28223BE20](v29);
  v252 = &v227 - v32;
  v278 = sub_224DAE4F8();
  v282 = *(v278 - 8);
  v33 = *(v282 + 8);
  v34 = MEMORY[0x28223BE20](v278);
  v36 = &v227 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v227 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A80, &qword_224DB94A8);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &v227 - v41;
  v43 = sub_224DAE478();
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43);
  MEMORY[0x28223BE20](v45);
  v281 = v16;
  v285 = a1;
  if (a1)
  {
    v49 = v270 + 64;
    v50 = 1 << *(v270 + 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v52 = v51 & *(v270 + 64);
    v53 = (v50 + 63) >> 6;
    v283 = 0x8000000224DC8EA0;
    v54 = v270;

    v56 = 0;
    v282 = 0xD00000000000002DLL;
    if (v52)
    {
      while (1)
      {
        v57 = v56;
LABEL_10:
        v58 = __clz(__rbit64(v52));
        v52 &= v52 - 1;
        v59 = (*(v54 + 56) + ((v57 << 10) | (16 * v58)));
        v60 = *v59;
        v61 = v59[1];
        swift_getObjectType();
        v288 = 0;
        v289 = 0xE000000000000000;
        swift_unknownObjectRetain();
        sub_224DAF938();

        v288 = v282;
        v289 = v283;
        swift_getErrorValue();
        v62 = sub_224D1680C(v287[3]);
        MEMORY[0x22AA5D210](v62);

        sub_224DABD08();
        swift_unknownObjectRelease();

        if (!v52)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v57 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        __break(1u);
        goto LABEL_91;
      }

      if (v57 >= v53)
      {
        break;
      }

      v52 = *(v49 + 8 * v57);
      ++v56;
      if (v52)
      {
        v56 = v57;
        goto LABEL_10;
      }
    }

    v63 = v275;
    v64 = v279;
    v65 = v281;
    (*(v275 + 16))(v279, v284 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v281);
    v66 = v271;
    v67 = v285;
    v68 = v285;
    v69 = sub_224DAB228();
    v70 = sub_224DAF288();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v288 = v73;
      *v71 = 138543618;
      *(v71 + 4) = v66;
      *v72 = v66;
      *(v71 + 12) = 2082;
      swift_getErrorValue();
      v74 = v286;
      v75 = v63;
      v76 = v66;
      v77 = v74;
      v67 = v285;
      v78 = sub_224D1680C(v77);
      v80 = sub_224A33F74(v78, v79, &v288);

      *(v71 + 14) = v80;
      _os_log_impl(&dword_224A2F000, v69, v70, "Reload %{public}@: error from extension: %{public}s", v71, 0x16u);
      sub_224A3311C(v72, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v72, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x22AA5EED0](v73, -1, -1);
      MEMORY[0x22AA5EED0](v71, -1, -1);

      (*(v75 + 8))(v279, v281);
    }

    else
    {

      (*(v63 + 8))(v64, v65);
    }

    v225 = v274;
    v273(v67, 1);
    goto LABEL_89;
  }

  v257 = &v227 - v46;
  v248 = v48;
  v269 = v42;
  v249 = v36;
  v233 = v31;
  v241 = v22;
  v242 = v13;
  v238 = v10;
  v236 = a9;
  v81 = v47;
  v82 = sub_224A60D5C(MEMORY[0x277D84F90]);
  v83 = *(v266 + 64);
  v245 = v266 + 64;
  v84 = 1 << *(v266 + 32);
  v85 = -1;
  v290 = v82;
  if (v84 < 64)
  {
    v85 = ~(-1 << v84);
  }

  v86 = v85 & v83;
  v277 = OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger;
  v244 = (v84 + 63) >> 6;
  v279 = v282 + 8;
  v260 = (v81 + 16);
  v268 = (v81 + 56);
  v258 = (v81 + 48);
  v247 = (v81 + 32);
  v235 = (v283 + 8);
  v251 = v81;
  v246 = (v81 + 8);
  v234 = "Reload placeholders: ";
  v276 = (v275 + 16);
  v275 += 8;
  v232 = 0x8000000224DC8E70;

  LODWORD(v243) = 0;
  v87 = 0;
  v237 = 0;
  *&v90 = 136446466;
  v250 = v90;
  v88 = "Reload %{public}s: missing widget metrics.";
  v89 = "Reload %{public}s: missing file promise.";
  *&v90 = 136446210;
  v91 = "Reload %{public}s: missing widget.";
  v92 = v278;
  v93 = v38;
  v261 = v38;
  v267 = v43;
LABEL_17:
  result = v266;
  v94 = v245;
  v95 = v244;
LABEL_18:
  if (v86)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v96 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      break;
    }

    if (v96 >= v95)
    {

      v216 = v241;
      (*v276)(v241, v284 + v277, v16);
      v217 = v271;
      v218 = sub_224DAB228();
      v219 = sub_224DAF2A8();

      if (os_log_type_enabled(v218, v219))
      {
        v220 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        *v220 = 138543362;
        *(v220 + 4) = v217;
        *v221 = v217;
        v222 = v217;
        _os_log_impl(&dword_224A2F000, v218, v219, "%{public}@ reload: end", v220, 0xCu);
        sub_224A3311C(v221, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v221, -1, -1);
        MEMORY[0x22AA5EED0](v220, -1, -1);
      }

      (*v275)(v216, v16);
      v223 = v242;
      if (v243)
      {
        sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
        (*(v254 + 104))(v223, *MEMORY[0x277CE3C40], v238);
        v224 = sub_224DAF638();
        v273(v224, 1);
      }

      else
      {
        v273(v290, 0);
      }

      v225 = v274;
LABEL_89:
      swift_beginAccess();
      v226 = *(v225 + 16);
      *(v225 + 16) = 0;
    }

    v86 = *(v94 + 8 * v96);
    ++v87;
    if (v86)
    {
      v87 = v96;
LABEL_23:
      v97 = (v87 << 9) | (8 * __clz(__rbit64(v86)));
      v98 = *(result[6] + v97);
      v99 = *(result[7] + v97);
      if (v99 >> 62)
      {
        v101 = v88;
        v264 = *(result[7] + v97);
        v102 = v89;
        v231 = v90;
        v103 = v91;
        v104 = sub_224DAF838();
        v91 = v103;
        v90 = v231;
        v89 = v102;
        v99 = v264;
        v88 = v101;
        v95 = v244;
        v94 = v245;
        v100 = v104;
        result = v266;
      }

      else
      {
        v100 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v86 &= v86 - 1;
      if (v100)
      {
        v231 = v90;
        v263 = v99 & 0xC000000000000001;
        v239 = v99 & 0xFFFFFFFFFFFFFF8;
        v265 = v98;

        v105 = 0;
        v264 = v99;
        v262 = v100;
        while (1)
        {
          v106 = v105;
          while (1)
          {
            if (v263)
            {
              result = MEMORY[0x22AA5DCC0](v106, v99);
              v107 = (v106 + 1);
              if (__OFADD__(v106, 1))
              {
                goto LABEL_92;
              }
            }

            else
            {
              if (v106 >= *(v239 + 16))
              {
                goto LABEL_93;
              }

              result = *(v99 + 8 * v106 + 32);
              v107 = (v106 + 1);
              if (__OFADD__(v106, 1))
              {
                goto LABEL_92;
              }
            }

            v282 = v106;
            v283 = v107;
            v108 = v16;
            v285 = result;
            sub_224DAE878();
            swift_getKeyPath();
            v109 = sub_224DAE4A8();

            v110 = *v279;
            (*v279)(v93, v92);
            if (!v109)
            {
              v111 = v269;
              (*v268)(v269, 1, 1, v43);
LABEL_44:
              sub_224A3311C(v111, &qword_27D6F4A80, &qword_224DB94A8);
              v113 = v280;
              v16 = v108;
              (*v276)(v280, v284 + v277, v108);
              v114 = v265;
              v115 = v285;
              v116 = sub_224DAB228();
              v117 = sub_224DAF298();

              if (os_log_type_enabled(v116, v117))
              {
                v118 = swift_slowAlloc();
                v119 = swift_slowAlloc();
                v288 = v119;
                *v118 = v250;
                v120 = [v114 extensionBundleIdentifier];
                v121 = sub_224DAEE18();
                v123 = v122;

                v124 = sub_224A33F74(v121, v123, &v288);

                *(v118 + 4) = v124;
                *(v118 + 12) = 2082;
                v125 = sub_224DAE898();
                v127 = sub_224A33F74(v125, v126, &v288);

                *(v118 + 14) = v127;
                _os_log_impl(&dword_224A2F000, v116, v117, "Reload %{public}s:%{public}s): missing widget family.", v118, 0x16u);
                swift_arrayDestroy();
                v128 = v119;
                v92 = v278;
                MEMORY[0x22AA5EED0](v128, -1, -1);
                v129 = v118;
                v93 = v261;
                v16 = v281;
                MEMORY[0x22AA5EED0](v129, -1, -1);

                result = (*v275)(v280, v16);
              }

              else
              {

                result = (*v275)(v113, v16);
              }

              v43 = v267;
              goto LABEL_31;
            }

            v111 = v269;
            if (*(v109 + 16))
            {
              (*(v251 + 16))(v269, v109 + ((*(v251 + 80) + 32) & ~*(v251 + 80)), v43);
              v112 = 0;
            }

            else
            {
              v112 = 1;
            }

            (*v268)(v111, v112, 1, v43);
            if ((*v258)(v111, 1, v43) == 1)
            {
              goto LABEL_44;
            }

            v130 = v257;
            (*v247)(v257, v111, v43);
            v131 = v248;
            (*v260)(v248, v130, v43);
            MEMORY[0x22AA5D620](v131);
            v132 = [v265 extensionBundleIdentifier];
            v133 = sub_224DAEE18();
            v134 = v92;
            v136 = v135;

            v288 = v133;
            v289 = v136;
            MEMORY[0x22AA5D210](58, 0xE100000000000000);
            v137 = sub_224DAE898();
            MEMORY[0x22AA5D210](v137);

            MEMORY[0x22AA5D210](58, 0xE100000000000000);
            v138 = NSStringFromWidgetFamily();
            v139 = sub_224DAEE18();
            v141 = v140;

            MEMORY[0x22AA5D210](v139, v141);

            v142 = v289;
            v240 = v288;
            v143 = v249;
            sub_224DAE878();
            swift_getKeyPath();
            v144 = v143;
            v145 = sub_224DAE4A8();

            v110(v144, v134);
            v16 = v108;
            if (!v145)
            {
              goto LABEL_62;
            }

            if (v145 >> 62)
            {
              result = sub_224DAF838();
            }

            else
            {
              result = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v146 = v270;
            v93 = v261;
            v147 = v142;
            if (!result)
            {

LABEL_62:
              v181 = v259;
              (*v276)(v259, v284 + v277, v16);
              v182 = v142;

              v183 = sub_224DAB228();
              v184 = sub_224DAF298();

              if (os_log_type_enabled(v183, v184))
              {
                v185 = swift_slowAlloc();
                v186 = swift_slowAlloc();
                v288 = v186;
                *v185 = v231;
                v187 = sub_224A33F74(v240, v182, &v288);

                *(v185 + 4) = v187;
                v16 = v281;
                _os_log_impl(&dword_224A2F000, v183, v184, "Reload %{public}s: missing widget metrics.", v185, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v186);
                MEMORY[0x22AA5EED0](v186, -1, -1);
                MEMORY[0x22AA5EED0](v185, -1, -1);

                (*v275)(v259, v16);
              }

              else
              {

                (*v275)(v181, v16);
              }

              v43 = v267;
              result = (*v246)(v257, v267);
              v92 = v278;
              v93 = v261;
              goto LABEL_31;
            }

            if ((v145 & 0xC000000000000001) != 0)
            {
              v148 = MEMORY[0x22AA5DCC0](0, v145);
            }

            else
            {
              if (!*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_94;
              }

              v148 = *(v145 + 32);
            }

            v149 = v148;
            v150 = v255;

            if (!*(v146 + 16) || (v151 = sub_224B0B580(v285), (v152 & 1) == 0))
            {
              v171 = v256;
              (*v276)(v256, v284 + v277, v16);

              v172 = sub_224DAB228();
              v173 = sub_224DAF288();

              if (os_log_type_enabled(v172, v173))
              {
                v174 = swift_slowAlloc();
                v175 = swift_slowAlloc();
                v288 = v175;
                *v174 = v231;
                v176 = sub_224A33F74(v240, v147, &v288);

                *(v174 + 4) = v176;
                _os_log_impl(&dword_224A2F000, v172, v173, "Reload %{public}s: missing file promise.", v174, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v175);
                v177 = v175;
                v93 = v261;
                v16 = v281;
                MEMORY[0x22AA5EED0](v177, -1, -1);
                MEMORY[0x22AA5EED0](v174, -1, -1);

                v178 = *v275;
                v179 = v287;
                goto LABEL_60;
              }

              v178 = *v275;
              v180 = v171;
LABEL_67:
              v178(v180, v16);
              goto LABEL_68;
            }

            v153 = (*(v146 + 56) + 16 * v151);
            v154 = *v153;
            v155 = v153[1];
            swift_unknownObjectRetain();
            v156 = sub_224D24270(v285, v236);
            if (!v156)
            {
              swift_getObjectType();
              sub_224DABD08();
              v188 = v252;
              (*v276)(v252, v284 + v277, v16);

              v189 = sub_224DAB228();
              v190 = sub_224DAF288();

              if (!os_log_type_enabled(v189, v190))
              {

                swift_unknownObjectRelease();

                (*v275)(v188, v16);
                goto LABEL_68;
              }

              v191 = swift_slowAlloc();
              v230 = v154;
              v192 = v189;
              v193 = v191;
              v194 = swift_slowAlloc();
              v288 = v194;
              *v193 = v231;
              v195 = sub_224A33F74(v240, v147, &v288);

              *(v193 + 4) = v195;
              _os_log_impl(&dword_224A2F000, v192, v190, "Reload %{public}s: missing widget.", v193, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v194);
              v196 = v194;
              v93 = v261;
              v16 = v281;
              MEMORY[0x22AA5EED0](v196, -1, -1);
              MEMORY[0x22AA5EED0](v193, -1, -1);

              swift_unknownObjectRelease();
              v178 = *v275;
              v179 = &v284;
LABEL_60:
              v180 = *(v179 - 32);
              goto LABEL_67;
            }

            v157 = v156;
            v158 = v149;
            v159 = v155;
            v160 = v157;
            v161 = v158;
            v162 = sub_224DAC238();
            v163 = MEMORY[0x22AA5E4C0](v162);
            v164 = v147;
            v165 = v150;
            v166 = v163;
            v230 = v154;
            v167 = v154;
            v228 = v159;
            v168 = v159;
            v169 = v240;
            v229 = v164;
            v170 = v237;
            sub_224BAE2F0(v167, v168, v284, v240, v164, &v290, v165, &v288);
            if (v170)
            {
              break;
            }

            v237 = 0;

            objc_autoreleasePoolPop(v166);

            swift_unknownObjectRelease();
            (*v235)(v165, v253);
LABEL_68:
            v43 = v267;
            result = (*v246)(v257, v267);
            v92 = v278;
LABEL_31:
            v99 = v264;
            v106 = (v282 + 1);
            if (v283 == v262)
            {
              v215 = v237;
              goto LABEL_80;
            }
          }

          v243 = v160;
          v282 = v161;
          v237 = v288;
          objc_autoreleasePoolPop(v166);
          swift_getObjectType();
          v288 = 0;
          v289 = 0xE000000000000000;
          sub_224DAF938();

          v288 = 0xD000000000000029;
          v289 = v232;
          v197 = v229;
          MEMORY[0x22AA5D210](v169, v229);
          sub_224DABD08();

          v198 = v233;
          (*v276)(v233, v284 + v277, v16);

          v199 = v237;
          v200 = v237;
          v201 = sub_224DAB228();
          v202 = sub_224DAF288();

          v203 = v199;

          if (os_log_type_enabled(v201, v202))
          {
            v204 = swift_slowAlloc();
            v205 = swift_slowAlloc();
            v228 = v201;
            v206 = v205;
            v207 = swift_slowAlloc();
            v288 = v207;
            *v204 = v250;
            v208 = sub_224A33F74(v240, v197, &v288);

            *(v204 + 4) = v208;
            v93 = v261;
            v209 = v281;
            *(v204 + 12) = 2114;
            v210 = v203;
            v211 = _swift_stdlib_bridgeErrorToNSError();
            *(v204 + 14) = v211;
            *v206 = v211;
            v212 = v202;
            v213 = v228;
            _os_log_impl(&dword_224A2F000, v228, v212, "Reload %{public}s: failed with error %{public}@)", v204, 0x16u);
            sub_224A3311C(v206, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v206, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v207);
            v214 = v207;
            v16 = v209;
            MEMORY[0x22AA5EED0](v214, -1, -1);
            MEMORY[0x22AA5EED0](v204, -1, -1);
            swift_unknownObjectRelease();

            (*v275)(v233, v209);
          }

          else
          {
            swift_unknownObjectRelease();

            (*v275)(v198, v16);
          }

          (*v235)(v255, v253);
          v43 = v267;
          result = (*v246)(v257, v267);
          v92 = v278;
          v99 = v264;
          v237 = 0;
          v215 = 0;
          LODWORD(v243) = 1;
          v105 = v283;
          if (v283 == v262)
          {
LABEL_80:

            v237 = v215;
            v88 = "Reload %{public}s: missing widget metrics.";
            v89 = "Reload %{public}s: missing file promise.";
            v90 = v231;
            v91 = "Reload %{public}s: missing widget.";
            goto LABEL_17;
          }
        }
      }

      goto LABEL_18;
    }
  }

LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  return result;
}

void sub_224BAE2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v158 = a8;
  v144 = a7;
  v145 = a6;
  v150 = a5;
  v149 = a4;
  v151 = a3;
  v159 = a2;
  v164[5] = *MEMORY[0x277D85DE8];
  v143 = sub_224DAC268();
  v141 = *(v143 - 8);
  v8 = *(v141 + 64);
  MEMORY[0x28223BE20](v143);
  v142 = &v127[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v147 = sub_224DAE6E8();
  v146 = *(v147 - 8);
  v10 = *(v146 + 64);
  MEMORY[0x28223BE20](v147);
  v148 = &v127[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_224DAB258();
  v13 = *(v12 - 8);
  v153 = v12;
  v154 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v127[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v127[-v19];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v127[-v22];
  MEMORY[0x28223BE20](v21);
  v156 = &v127[-v24];
  v25 = sub_224DA9688();
  v157 = *(v25 - 8);
  v26 = *(v157 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v127[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v127[-v31];
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v127[-v34];
  v36 = MEMORY[0x28223BE20](v33);
  v155 = &v127[-v37];
  MEMORY[0x28223BE20](v36);
  v39 = &v127[-v38];
  swift_getObjectType();
  v40 = v160;
  sub_224DABCF8();
  if (v40)
  {
    goto LABEL_19;
  }

  v137 = v32;
  v160 = v35;
  v140 = v29;
  v131 = v23;
  v130 = v17;
  v133 = v20;
  v159 = 0;
  v41 = v154;
  v42 = *(v154 + 16);
  v134 = OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger;
  v43 = v153;
  v136 = v154 + 16;
  v135 = v42;
  (v42)(v156, v151 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v153);
  v44 = v157;
  v45 = *(v157 + 16);
  v139 = v157 + 16;
  v138 = v45;
  v45(v155, v39, v25);
  v46 = v150;

  v47 = sub_224DAB228();
  v48 = sub_224DAF278();

  v49 = os_log_type_enabled(v47, v48);
  v50 = v41;
  v51 = v44;
  v152 = v25;
  if (v49)
  {
    v52 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v164[0] = v129;
    *v52 = 136446466;
    *(v52 + 4) = sub_224A33F74(v149, v46, v164);
    *(v52 + 12) = 2082;
    v128 = v48;
    v53 = v137;
    v54 = v155;
    v55 = v39;
    v56 = v47;
    sub_224DA9548();
    v57 = v160;
    sub_224DA9568();
    v132 = v55;
    v58 = *(v51 + 8);
    v58(v53, v152);
    sub_224A79F60(&qword_281351A70, MEMORY[0x277CC9260]);
    v59 = sub_224DAFD28();
    v61 = v60;
    v58(v57, v152);
    v160 = v58;
    v58(v54, v152);
    v43 = v153;
    v62 = v132;
    v63 = sub_224A33F74(v59, v61, v164);

    *(v52 + 14) = v63;
    _os_log_impl(&dword_224A2F000, v56, v128, "%{public}s: %{public}s", v52, 0x16u);
    v64 = v129;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v64, -1, -1);
    v65 = v52;
    v50 = v154;
    MEMORY[0x22AA5EED0](v65, -1, -1);

    v39 = v62;
  }

  else
  {

    v160 = *(v44 + 8);
    (v160)(v155, v25);
  }

  v66 = *(v50 + 8);
  v66(v156, v43);
  v67 = [objc_opt_self() defaultManager];
  sub_224DA9658();
  v68 = sub_224DAEDE8();

  v164[0] = 0;
  v69 = [v67 attributesOfItemAtPath:v68 error:v164];

  v70 = v164[0];
  if (!v69)
  {
    v97 = v164[0];
    v94 = sub_224DA9528();

    swift_willThrow();
    v95 = v39;
    v96 = v152;
    goto LABEL_17;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_224A79F60(&qword_281350A08, type metadata accessor for FileAttributeKey);
  v71 = sub_224DAECE8();
  v72 = v70;

  if (!*(v71 + 16) || (v73 = sub_224B0BA4C(*MEMORY[0x277CCA1C0]), (v74 & 1) == 0))
  {

    goto LABEL_13;
  }

  sub_224A33E0C(*(v71 + 56) + 32 * v73, v164);

  sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v77 = v152;
    goto LABEL_14;
  }

  v75 = v163[0];
  v76 = [v163[0] unsignedLongLongValue];
  v77 = v152;
  if (v76 > 0xA00000)
  {
    v78 = v131;
    (v135)(v131, v151 + v134, v43);
    v79 = v150;

    v80 = v75;
    v81 = sub_224DAB228();
    v82 = sub_224DAF288();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v132 = v39;
      v85 = v84;
      v86 = swift_slowAlloc();
      v164[0] = v86;
      *v83 = 136446466;
      *(v83 + 4) = sub_224A33F74(v149, v79, v164);
      *(v83 + 12) = 2114;
      *(v83 + 14) = v80;
      *v85 = v80;
      v87 = v80;
      _os_log_impl(&dword_224A2F000, v81, v82, "Reload %{public}s: failed with too large archive %{public}@", v83, 0x16u);
      sub_224A3311C(v85, &unk_27D6F69F0, &unk_224DB3900);
      v88 = v85;
      v39 = v132;
      MEMORY[0x22AA5EED0](v88, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v86);
      MEMORY[0x22AA5EED0](v86, -1, -1);
      MEMORY[0x22AA5EED0](v83, -1, -1);

      v66(v78, v153);
    }

    else
    {

      v66(v78, v43);
    }

    v89 = v147;
    v90 = v146;
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v90 + 104))(v148, *MEMORY[0x277CE3C40], v89);
    v123 = sub_224DAF638();
    swift_willThrow();

    (v160)(v39, v152);
    v40 = v123;
    goto LABEL_19;
  }

LABEL_14:
  v91 = v140;
  sub_224A3B79C(0, &qword_281350B08, 0x277CCA9F8);
  v138(v91, v39, v77);
  v92 = v159;
  v93 = sub_224B83FBC(v91);
  v94 = v92;
  if (v92)
  {
    v95 = v39;
    v96 = v77;
LABEL_17:
    (v160)(v95, v96);
LABEL_18:
    v40 = v94;
LABEL_19:
    *v158 = v40;
    goto LABEL_20;
  }

  v99 = v93;
  sub_224DAE6A8();
  v100 = sub_224DAE698();
  v159 = 0;
  v101 = v43;

  v156 = v100;
  v161 = v100;
  sub_224DAEC88();
  sub_224DAEAB8();
  __swift_project_boxed_opaque_existential_1(v164, v164[3]);
  v102 = *(sub_224DAEAC8() + 16);

  if (!v102)
  {
    v112 = v130;
    v135();
    v113 = v150;

    v114 = sub_224DAB228();
    v115 = sub_224DAF288();

    if (os_log_type_enabled(v114, v115))
    {
      v116 = v39;
      v117 = swift_slowAlloc();
      v118 = v43;
      v119 = swift_slowAlloc();
      v163[0] = v119;
      *v117 = 136446210;
      *(v117 + 4) = sub_224A33F74(v149, v113, v163);
      _os_log_impl(&dword_224A2F000, v114, v115, "Reload %{public}s: failed with bad archive", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v119);
      MEMORY[0x22AA5EED0](v119, -1, -1);
      v120 = v117;
      v39 = v116;
      MEMORY[0x22AA5EED0](v120, -1, -1);

      v121 = v130;
      v122 = v118;
    }

    else
    {

      v121 = v112;
      v122 = v43;
    }

    v66(v121, v122);
    v124 = v148;
    v125 = v147;
    v126 = v146;
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v126 + 104))(v124, *MEMORY[0x277CE3C40], v125);
    v94 = sub_224DAF638();
    swift_willThrow();

    (v160)(v39, v152);
    __swift_destroy_boxed_opaque_existential_1(v164);
    goto LABEL_18;
  }

  v103 = v142;
  (*(v141 + 16))(v142, v144, v143);
  sub_224A3317C(v164, v163);
  sub_224A61F30(v163, v103);
  v104 = v133;
  v135();
  sub_224A3317C(v164, v163);
  v105 = v150;

  v106 = sub_224DAB228();
  v107 = sub_224DAF2A8();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    v162 = v158;
    *v108 = 136446466;
    *(v108 + 4) = sub_224A33F74(v149, v105, &v162);
    *(v108 + 12) = 2050;
    __swift_project_boxed_opaque_existential_1(v163, v163[3]);
    v109 = *(sub_224DAEAC8() + 16);

    __swift_destroy_boxed_opaque_existential_1(v163);
    *(v108 + 14) = v109;
    _os_log_impl(&dword_224A2F000, v106, v107, "Reload %{public}s: succeeded with %{public}ld entries", v108, 0x16u);
    v110 = v158;
    __swift_destroy_boxed_opaque_existential_1(v158);
    MEMORY[0x22AA5EED0](v110, -1, -1);
    MEMORY[0x22AA5EED0](v108, -1, -1);

    v111 = v133;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v163);

    v111 = v104;
  }

  v66(v111, v101);

  (v160)(v39, v152);
  __swift_destroy_boxed_opaque_existential_1(v164);
LABEL_20:
  v98 = *MEMORY[0x277D85DE8];
}

uint64_t sub_224BAF38C()
{
  v1 = v0[3];
  sub_224A3D418(v0[2]);
  v2 = OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger;
  v3 = sub_224DAB258();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_cacheManager);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_extensionManager));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaceholderReloadStrategy()
{
  result = qword_2813557B0;
  if (!qword_2813557B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224BAF4A4()
{
  result = sub_224DAB258();
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

uint64_t sub_224BAF62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAC268();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v58 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v49 - v9;
  v10 = MEMORY[0x277D84F98];
  v62 = MEMORY[0x277D84F98];
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v13 = *(v5 + 16);
  v12 = v5 + 16;
  v51 = *(v12 + 64);
  v14 = *(v12 + 56);
  v56 = (v51 + 32) & ~v51;
  v57 = v13;
  v15 = a1 + v56;
  v60 = (v12 + 16);
  v50 = xmmword_224DB3100;
  v52 = v12;
  v53 = v4;
  v55 = a2;
  v59 = v14;
  v13(v61, a1 + v56, v4);
  while (1)
  {
    v19 = sub_224DAC248();
    v20 = [v19 kind];

    v21 = sub_224DAEE18();
    v23 = v22;
    if (!*(a2 + 16))
    {
      break;
    }

    v24 = v21;

    v25 = sub_224A3A40C(v24, v23);
    LOBYTE(v24) = v26;

    if ((v24 & 1) == 0)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      break;
    }

    v27 = *(*(a2 + 56) + 8 * v25);
    v29 = sub_224B0B5D4(v27);
    v30 = v10[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_21;
    }

    v33 = v28;
    if (v10[3] < v32)
    {
      sub_224B0FBC4(v32, 1);
      v10 = v62;
      v34 = sub_224B0B5D4(v27);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_24;
      }

      v29 = v34;
    }

    if (v33)
    {

      v36 = v10[7];
      v37 = *v60;
      (*v60)(v58, v61, v4);
      v38 = *(v36 + 8 * v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v36 + 8 * v29) = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_224AD93E4(0, v38[2] + 1, 1, v38);
        *(v36 + 8 * v29) = v38;
      }

      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        v38 = sub_224AD93E4(v40 > 1, v41 + 1, 1, v38);
        *(v36 + 8 * v29) = v38;
      }

      a2 = v55;
      v16 = v56;
      v38[2] = v41 + 1;
      v17 = v59;
      v18 = v38 + v16 + v41 * v59;
      v4 = v53;
      v37(v18, v58, v53);
      v12 = v52;
    }

    else
    {
      v54 = v15;
      v42 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3580, &qword_224DB94A0);
      v43 = v56;
      v44 = swift_allocObject();
      *(v44 + 16) = v50;
      (*v60)((v44 + v43), v61, v4);
      v10[(v29 >> 6) + 8] |= 1 << v29;
      *(v10[6] + 8 * v29) = v27;
      *(v10[7] + 8 * v29) = v44;
      v45 = v10[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_22;
      }

      v10[2] = v47;
      v17 = v59;
      v12 = v42;
      v15 = v54;
      a2 = v55;
    }

    v15 += v17;
    if (!--v11)
    {
      return v10;
    }

    v57(v61, v15, v4);
  }

  __break(1u);
LABEL_24:

  sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

void sub_224BAFA30(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void), uint64_t a9)
{
  v158 = a5;
  v147 = a3;
  v166 = a2;
  v13 = a9;
  v150 = sub_224DAE6E8();
  v149 = *(v150 - 8);
  v14 = *(v149 + 64);
  MEMORY[0x28223BE20](v150);
  v151 = v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_224DAC268();
  v170 = *(v165 - 8);
  v16 = *(v170 + 64);
  v17 = MEMORY[0x28223BE20](v165);
  v162 = v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v139 - v19;
  v21 = sub_224DAB258();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = MEMORY[0x28223BE20](v21);
  v144 = v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v145 = v139 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v169 = v139 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v168 = v139 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = v139 - v32;
  v34 = swift_allocObject();
  v34[2] = a7;
  v34[3] = a8;
  v157 = a8;
  v34[4] = a9;
  v35 = v22[2];
  v160 = a6;
  v152 = OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger;
  v163 = v21;
  v154 = v22 + 2;
  v153 = v35;
  v35(v33, a6 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v21);
  v146 = a7;

  v36 = a1;
  v37 = sub_224DAB228();
  v38 = sub_224DAF2A8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138543362;
    *(v39 + 4) = v36;
    *v40 = v36;
    v41 = v36;
    _os_log_impl(&dword_224A2F000, v37, v38, "Reload %{public}@: begin", v39, 0xCu);
    sub_224A3311C(v40, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v40, -1, -1);
    v42 = v39;
    v13 = a9;
    MEMORY[0x22AA5EED0](v42, -1, -1);
  }

  v43 = v22[1];
  v155 = v22 + 1;
  v43(v33, v163);
  v44 = swift_allocObject();
  sub_224DAD198();
  aBlock = 0;
  v172 = 0xE000000000000000;
  sub_224DAF938();

  aBlock = 0xD000000000000015;
  v172 = 0x8000000224DC8E30;
  v156 = v36;
  v45 = [v36 description];
  v46 = sub_224DAEE18();
  v48 = v47;

  MEMORY[0x22AA5D210](v46, v48);

  *(v44 + 16) = sub_224DAD188();
  v49 = v158;
  v50 = v158 & 0xC000000000000001;
  if ((v158 & 0xC000000000000001) != 0)
  {
    if (sub_224DAF838() >= 1)
    {
      goto LABEL_5;
    }

LABEL_9:
    v59 = v43;
    v60 = v168;
    v153(v168, v160 + v152, v163);
    v61 = v156;
    v62 = sub_224DAB228();
    v63 = sub_224DAF288();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138543362;
      *(v64 + 4) = v61;
      *v65 = v61;
      v66 = v61;
      _os_log_impl(&dword_224A2F000, v62, v63, "Reload %{public}@: No descriptors available", v64, 0xCu);
      sub_224A3311C(v65, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v65, -1, -1);
      MEMORY[0x22AA5EED0](v64, -1, -1);
    }

    v59(v60, v163);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v149 + 104))(v151, *MEMORY[0x277CE3C40], v150);
    goto LABEL_15;
  }

  if (*(v158 + 16) < 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (!*(v160 + 16))
  {
    v153(v169, v160 + v152, v163);
    v67 = v156;
    v68 = sub_224DAB228();
    v69 = sub_224DAF288();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138543362;
      *(v70 + 4) = v67;
      *v71 = v67;
      v72 = v67;
      _os_log_impl(&dword_224A2F000, v68, v69, "Reload %{public}@: Failed to find widgetEnvironment provider", v70, 0xCu);
      sub_224A3311C(v71, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v71, -1, -1);
      MEMORY[0x22AA5EED0](v70, -1, -1);
    }

    v43(v169, v163);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v149 + 104))(v151, *MEMORY[0x277CE3C40], v150);
LABEL_15:
    v73 = sub_224DAF638();
    v157();

    goto LABEL_16;
  }

  v140 = v43;
  v141 = v44;
  v142 = v13;
  v143 = v34;
  sub_224BAA780(v49);
  v139[1] = 0;
  v52 = v49;
  v53 = sub_224AE8AF4(v51);

  if (v50)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    sub_224B07048();
    sub_224DAF1F8();
    v54 = v178;
    v55 = v179;
    v56 = v180;
    v57 = v181;
    v58 = v182;
  }

  else
  {
    v74 = -1 << *(v52 + 32);
    v55 = v52 + 56;
    v56 = ~v74;
    v75 = -v74;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    else
    {
      v76 = -1;
    }

    v58 = v76 & *(v52 + 56);

    v57 = 0;
    v54 = v52;
  }

  v164 = 0;
  v169 = v56;
  v77 = (v56 + 64) >> 6;
  if (v54 < 0)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v78 = v57;
    v79 = v58;
    v80 = v57;
    if (!v58)
    {
      break;
    }

LABEL_26:
    v81 = (v79 - 1) & v79;
    v82 = *(*(v54 + 48) + ((v80 << 9) | (8 * __clz(__rbit64(v79)))));
    if (!v82)
    {
LABEL_32:
      sub_224A3B7E4();
      v168 = *(v166 + 16);
      if (v168)
      {
        v85 = 0;
        v167 = *(v170 + 16);
        v148 = (*(v170 + 80) + 32) & ~*(v170 + 80);
        v166 += v148;
        v169 = *(v170 + 72);
        v170 += 16;
        v86 = v53 + 56;
        v87 = (v170 - 8);
        v159 = (v170 + 16);
        v161 = MEMORY[0x277D84F90];
        v88 = v165;
        v167(v20, v166, v165);
        while (1)
        {
          v89 = sub_224DAC248();
          v90 = [v89 kind];

          v91 = sub_224DAEE18();
          v93 = v92;

          if (!*(v53 + 16))
          {

            (*v87)(v20, v88);
            goto LABEL_35;
          }

          v94 = *(v53 + 40);
          sub_224DAFE68();
          sub_224DAEE78();
          v95 = sub_224DAFEA8();
          v96 = -1 << *(v53 + 32);
          v97 = v95 & ~v96;
          if (((*(v86 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
          {
            break;
          }

          v98 = ~v96;
          while (1)
          {
            v99 = (*(v53 + 48) + 16 * v97);
            v100 = *v99 == v91 && v99[1] == v93;
            if (v100 || (sub_224DAFD88() & 1) != 0)
            {
              break;
            }

            v97 = (v97 + 1) & v98;
            if (((*(v86 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
            {
              goto LABEL_46;
            }
          }

          v101 = sub_224DAC248();
          [v101 family];

          if ((CHSWidgetFamilyMaskFromWidgetFamily() & ~v164) != 0)
          {
            goto LABEL_53;
          }

          v102 = *v159;
          v88 = v165;
          (*v159)(v162, v20, v165);
          v103 = v161;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v105 = v103;
          v177 = v103;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_224ADA224(0, v103[2] + 1, 1);
            v88 = v165;
            v105 = v177;
          }

          v107 = v105[2];
          v106 = v105[3];
          if (v107 >= v106 >> 1)
          {
            sub_224ADA224(v106 > 1, v107 + 1, 1);
            v88 = v165;
            v105 = v177;
          }

          v105[2] = v107 + 1;
          v161 = v105;
          v102(v105 + v148 + v107 * v169, v162, v88);
LABEL_35:
          if (++v85 == v168)
          {
            goto LABEL_55;
          }

          v167(v20, v166 + v169 * v85, v88);
        }

LABEL_46:

LABEL_53:
        v88 = v165;
        (*v87)(v20, v165);
        goto LABEL_35;
      }

      v161 = MEMORY[0x277D84F90];
LABEL_55:

      if (!v161[2])
      {

        v120 = v145;
        v153(v145, v160 + v152, v163);
        v121 = v156;
        v122 = sub_224DAB228();
        v123 = sub_224DAF288();

        v124 = os_log_type_enabled(v122, v123);
        v125 = v157;
        if (v124)
        {
          v126 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          *v126 = 138543362;
          *(v126 + 4) = v121;
          *v127 = v121;
          v128 = v121;
          _os_log_impl(&dword_224A2F000, v122, v123, "Reload %{public}@: No keys to reload", v126, 0xCu);
          sub_224A3311C(v127, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v127, -1, -1);
          MEMORY[0x22AA5EED0](v126, -1, -1);
        }

        v140(v120, v163);
        v129 = sub_224A60D5C(MEMORY[0x277D84F90]);
        v130 = v146;
        swift_beginAccess();
        v131 = *(v130 + 16);
        *(v130 + 16) = v129;

        (v125)(0);

        return;
      }

      v108 = v160;
      v109 = sub_224BAAAE8(v161, v158);
      v111 = v110;
      v113 = v112;

      v114 = v157;
      v115 = v143;
      v116 = v156;
      if (*(v113 + 16))
      {
        sub_224BAC2D4(v109);
        sub_224DAE8A8();
        v73 = sub_224DAEFF8();

        v117 = swift_allocObject();
        v117[2] = v141;
        v117[3] = v113;
        v117[4] = v108;
        v117[5] = v116;
        v117[6] = sub_224B819F8;
        v117[7] = v115;
        v117[8] = v109;
        v117[9] = v111;
        v175 = sub_224BB0D34;
        v176 = v117;
        aBlock = MEMORY[0x277D85DD0];
        v172 = 1107296256;
        v173 = sub_224BC6D2C;
        v174 = &block_descriptor_20;
        v118 = _Block_copy(&aBlock);
        v119 = v116;

        [v147 getPlaceholdersWithRequests:v73 completion:v118];
        _Block_release(v118);
      }

      else
      {

        v132 = v144;
        v153(v144, v108 + v152, v163);
        v133 = v116;
        v134 = sub_224DAB228();
        v135 = sub_224DAF288();

        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          *v136 = 138543362;
          *(v136 + 4) = v133;
          *v137 = v133;
          v138 = v133;
          _os_log_impl(&dword_224A2F000, v134, v135, "Reload %{public}@: Failed to create any archive file promises", v136, 0xCu);
          sub_224A3311C(v137, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v137, -1, -1);
          MEMORY[0x22AA5EED0](v136, -1, -1);
        }

        v140(v132, v163);
        sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
        (*(v149 + 104))(v151, *MEMORY[0x277CE3C40], v150);
        v73 = sub_224DAF638();
        v114();
      }

LABEL_16:

      return;
    }

    while (1)
    {
      v84 = [v82 supportedFamilies];

      v164 |= v84;
      v57 = v80;
      v58 = v81;
      if ((v54 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_28:
      v83 = sub_224DAF878();
      if (v83)
      {
        v177 = v83;
        sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
        swift_dynamicCast();
        v82 = aBlock;
        v80 = v57;
        v81 = v58;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_32;
    }
  }

  while (1)
  {
    v80 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
      break;
    }

    if (v80 >= v77)
    {
      goto LABEL_32;
    }

    v79 = *(v55 + 8 * v80);
    ++v78;
    if (v79)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
}

unint64_t sub_224BB0D68()
{
  result = qword_27D6F4A90;
  if (!qword_27D6F4A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4A88, &unk_224DB9510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4A90);
  }

  return result;
}

uint64_t sub_224BB0DCC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 29);
  __swift_destroy_boxed_opaque_existential_1(v0 + 35);
  __swift_destroy_boxed_opaque_existential_1(v0 + 41);
  __swift_destroy_boxed_opaque_existential_1(v0 + 46);
  __swift_destroy_boxed_opaque_existential_1(v0 + 51);

  return swift_deallocClassInstance();
}

uint64_t sub_224BB0E70(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  sub_224A8FA54(a3, v8);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    sub_224DAE1F8();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_224A3311C(v8, &qword_27D6F3AE8, &unk_224DB9600);
  }

  return a4(a1, a2 & 1);
}

uint64_t sub_224BB0F28()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_hostService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_taskService));
  return __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_locationService));
}

uint64_t sub_224BB0F6C()
{
  v1 = v0[3];
  sub_224A3D418(v0[2]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger;
  v4 = sub_224DAB258();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_hostService;

  __swift_destroy_boxed_opaque_existential_1((v0 + v5));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_taskService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_locationService));

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobileTimelineReloadStrategy()
{
  result = qword_281353F80;
  if (!qword_281353F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224BB1100()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  __swift_allocate_value_buffer(v2, qword_281365198);
  __swift_project_value_buffer(v2, qword_281365198);
  sub_224DA9FF8();
  return sub_224DAA228();
}

unint64_t sub_224BB11E8()
{
  result = qword_281351860;
  if (!qword_281351860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351860);
  }

  return result;
}

uint64_t sub_224BB125C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_224B44674(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48F0, &unk_224DB8630);
  result = swift_dynamicCast();
  if (result)
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v8 = sub_224DAB258();
    __swift_project_value_buffer(v8, qword_281365120);
    v9 = sub_224DAB228();
    v10 = sub_224DAF2A8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_224A2F000, v9, v10, "Discovering descriptors for remote host", v11, 2u);
      MEMORY[0x22AA5EED0](v11, -1, -1);
    }

    sub_224A3317C(v4 + 56, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_224DAF938();

    MEMORY[0x22AA5D210]();

    MEMORY[0x22AA5D210](0x4965636976656420, 0xEB00000000203A44);
    MEMORY[0x22AA5D210](a2, a3);
    MEMORY[0x22AA5D210](0x7473657571657220, 0xEA00000000006465);
    sub_224DACA98();

    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return result;
}

unint64_t sub_224BB1500()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_224DA9878();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DABBB8();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_224BB1770(v3);
    v9 = 0xE600000000000000;
    v10 = 0x3E656E6F6E3CLL;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    sub_224B558C8();
    v10 = sub_224DAFD28();
    v9 = v11;
    (*(v5 + 8))(v8, v4);
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_224DAF938();

  v13 = 0xD000000000000013;
  v14 = 0x8000000224DC9060;
  MEMORY[0x22AA5D210](v10, v9);

  return v13;
}

uint64_t sub_224BB16E8()
{
  v2 = **v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4AA0, &unk_224DB96B0);
  return sub_224DAEE28();
}

uint64_t sub_224BB1770(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224BB17D8()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281351540);
  __swift_project_value_buffer(v0, qword_281351540);
  return sub_224DAB238();
}

uint64_t sub_224BB185C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v5 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5960, &unk_224DB97B0);
    sub_224BB5920(&qword_281350F18, &unk_27D6F5960, &unk_224DB97B0);
    v2 = v0;
    v1 = sub_224DAB3A8();
    v3 = *(v0 + 24);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t sub_224BB190C()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v5 = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4AB8, &unk_224DB97C0);
    sub_224BB5920(&qword_281350F20, &qword_27D6F4AB8, &unk_224DB97C0);
    v2 = v0;
    v1 = sub_224DAB3A8();
    v3 = *(v0 + 40);
    *(v2 + 40) = v1;
  }

  return v1;
}

void *sub_224BB19BC()
{
  v1 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
  v2 = sub_224DAD888();
  if (*(v2 + 16))
  {
    v4 = sub_224BB1A6C(v2);
  }

  else
  {

    v3 = v0[4];
    v4 = MEMORY[0x277D84F90];
    sub_224DAB348();
  }

  return v4;
}

void *sub_224BB1A6C(uint64_t a1)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3520, &qword_224DB3AB8);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v49 = v41 - v4;
  v55 = sub_224DACE38();
  v5 = *(v55 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAD3A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v47 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v50 = v41 - v13;
  v56 = v1;
  v14 = v1[12];
  v62 = a1;

  os_unfair_lock_lock((v14 + 24));
  sub_224BB58BC((v14 + 16), &v63);
  os_unfair_lock_unlock((v14 + 24));
  v15 = v63;

  v17 = v15[2];
  if (v17)
  {
    v20 = *(v9 + 16);
    v18 = v9 + 16;
    v19 = v20;
    v21 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v41[1] = v15;
    v22 = v15 + v21;
    v53 = (v5 + 8);
    v23 = *(v18 + 56);
    v51 = (v18 - 8);
    v52 = v23;
    v45 = *MEMORY[0x277CF99E8];
    v44 = (v46 + 104);
    v43 = v46 + 32;
    v57 = MEMORY[0x277D84F90];
    *&v16 = 136446466;
    v42 = v16;
    v24 = v50;
    v58 = v18;
    v59 = v20;
    do
    {
      v60 = v22;
      v61 = v17;
      v19(v24);
      v25 = v19;
      v26 = v56[11];
      __swift_project_boxed_opaque_existential_1(v56 + 6, v56[9]);
      v27 = v8;
      v28 = v54;
      sub_224DAD388();
      sub_224DAD4B8();
      (*v53)(v28, v55);
      v29 = v49;
      v25(v49, v24, v27);
      (*v44)(v29, v45, v48);
      v30 = v57;
      v8 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_224AD9448(0, v30[2] + 1, 1, v30);
      }

      v32 = v30[2];
      v31 = v30[3];
      v57 = v30;
      v19 = v59;
      if (v32 >= v31 >> 1)
      {
        v57 = sub_224AD9448(v31 > 1, v32 + 1, 1, v57);
      }

      (*v51)(v24, v8);
      v33 = v57;
      v57[2] = v32 + 1;
      (*(v46 + 32))(v33 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v32, v49, v48);
      v22 = &v60[v52];
      v17 = v61 - 1;
    }

    while (v61 != 1);

    v34 = v57;
    v35 = v56[4];
    v63 = v57;

    sub_224DAB348();
  }

  else
  {

    if (qword_281351538 != -1)
    {
      swift_once();
    }

    v36 = sub_224DAB258();
    __swift_project_value_buffer(v36, qword_281351540);
    v37 = sub_224DAB228();
    v38 = sub_224DAF278();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_224A2F000, v37, v38, "No extensions added or updated, no changes to publish", v39, 2u);
      MEMORY[0x22AA5EED0](v39, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v34;
}

uint64_t sub_224BB2284(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAD5A8();
  v3 = sub_224DACF78();

  v4 = sub_224BB543C(v3, sub_224B2D9F8, sub_224B2D9F8);

  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAD5B8();
  v6 = sub_224DACF78();

  v7 = sub_224BB543C(v6, sub_224B2D9E4, sub_224B2D9E4);

  if (qword_281351538 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v8 = sub_224DAB258();
    __swift_project_value_buffer(v8, qword_281351540);

    v9 = sub_224DAB228();
    v10 = sub_224DAF2A8();
    v72 = v7;

    v11 = v4;
    v71 = v4;
    if (!os_log_type_enabled(v9, v10))
    {
      break;
    }

    v67 = v10;
    log = v9;
    v12 = MEMORY[0x277D84F90];
    v13 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v74[0] = v66;
    *v13 = 136446466;
    v73 = v12;
    v4 += 64;
    v14 = 1 << *(v11 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v11 + 64);
    v7 = (v14 + 63) >> 6;

    v17 = 0;
    v18 = v12;
    if (v16)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v7)
      {
        v11 = v71;

        v65 = sub_224DAF538();
        v21 = MEMORY[0x22AA5D380](v18);
        v23 = v22;

        v24 = sub_224A33F74(v21, v23, v74);

        *(v13 + 4) = v24;
        *(v13 + 12) = 2082;
        v73 = v12;
        v4 = v72 + 64;
        v25 = 1 << *(v72 + 32);
        v26 = -1;
        if (v25 < 64)
        {
          v26 = ~(-1 << v25);
        }

        v27 = v26 & *(v72 + 64);
        v7 = (v25 + 63) >> 6;

        v28 = 0;
        if (v27)
        {
          goto LABEL_23;
        }

        while (1)
        {
          do
          {
            v29 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_57;
            }

            if (v29 >= v7)
            {

              v32 = MEMORY[0x22AA5D380](v12, v65);
              v34 = v33;

              v35 = sub_224A33F74(v32, v34, v74);

              *(v13 + 14) = v35;
              _os_log_impl(&dword_224A2F000, log, v67, "Attempting to load remote widget descriptors: %{public}s,  remote control descriptors: %{public}s", v13, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x22AA5EED0](v66, -1, -1);
              MEMORY[0x22AA5EED0](v13, -1, -1);

              goto LABEL_28;
            }

            v27 = *(v4 + 8 * v29);
            ++v28;
          }

          while (!v27);
          v28 = v29;
          do
          {
LABEL_23:
            v30 = *(*(v72 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
            MEMORY[0x22AA5D350]();
            if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v31 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_224DAF038();
              v11 = v71;
            }

            v27 &= v27 - 1;
            sub_224DAF078();
            v12 = v73;
          }

          while (v27);
        }
      }

      v16 = *(v4 + 8 * v19);
      ++v17;
      if (v16)
      {
        v17 = v19;
        do
        {
LABEL_11:
          v20 = *(*(v71 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
          MEMORY[0x22AA5D350]();
          if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_224DAF038();
          }

          v16 &= v16 - 1;
          sub_224DAF078();
          v18 = v73;
        }

        while (v16);
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

LABEL_28:

  v37 = sub_224AEA20C(v36);

  v39 = sub_224AEA20C(v38);
  sub_224A5B11C(v39, v37);
  if ((v40 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    sub_224DAF538();
    sub_224BB58D8(&unk_2813509A0, 255, MEMORY[0x277CFA140]);
    v11 = v71;
    sub_224DAF1F8();
    v40 = v74[0];
    v41 = v74[1];
    v42 = v74[2];
    v7 = v74[3];
    v43 = v74[4];
  }

  else
  {
    v7 = 0;
    v44 = -1 << *(v40 + 32);
    v41 = v40 + 56;
    v42 = ~v44;
    v45 = -v44;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v43 = v46 & *(v40 + 56);
  }

  v4 = (v42 + 64) >> 6;
  loga = v40;
  while (2)
  {
    if ((v40 & 0x8000000000000000) == 0)
    {
      v47 = v7;
      v48 = v43;
      v49 = v7;
      if (!v43)
      {
        while (1)
        {
          v49 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          if (v49 >= v4)
          {
            goto LABEL_54;
          }

          v48 = *(v41 + 8 * v49);
          ++v47;
          if (v48)
          {
            goto LABEL_41;
          }
        }

        __break(1u);
        goto LABEL_56;
      }

LABEL_41:
      v50 = (v48 - 1) & v48;
      v51 = *(*(v40 + 48) + ((v49 << 9) | (8 * __clz(__rbit64(v48)))));
      if (!v51)
      {
        break;
      }

      goto LABEL_45;
    }

    if (sub_224DAF878())
    {
      sub_224DAF538();
      swift_dynamicCast();
      v51 = v73;
      v49 = v7;
      v50 = v43;
      if (v73)
      {
LABEL_45:
        if (*(v11 + 16))
        {
          v52 = sub_224A3E7EC(v51);
          v53 = v68;
          if (v54)
          {
            v55 = *(*(v11 + 56) + 8 * v52);
          }
        }

        else
        {
          v53 = v68;
        }

        if (*(v72 + 16))
        {
          v56 = sub_224A3E7EC(v51);
          if (v57)
          {
            v58 = *(*(v72 + 56) + 8 * v56);
          }
        }

        sub_224DAE9F8();
        v59 = sub_224DAE9A8();
        v60 = *(v53 + 96);

        os_unfair_lock_lock(v60 + 6);
        sub_224BB4ED8(&v60[4], v51, &v73);
        os_unfair_lock_unlock(v60 + 6);
        v61 = v53;
        v62 = v73;

        if (v62[2])
        {
          v63 = *(v61 + 16);
          v73 = v62;
          sub_224DAB348();
        }

        v7 = v49;
        v43 = v50;
        v40 = loga;
        v11 = v71;
        continue;
      }
    }

    break;
  }

LABEL_54:
  sub_224A3B7E4();
}

uint64_t sub_224BB2A3C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 96);

  os_unfair_lock_lock(v4 + 6);
  sub_224BB4ED8(&v4[4], a2, &v8);
  os_unfair_lock_unlock(v4 + 6);
  v5 = v8;

  if (*(v5 + 16))
  {
    v6 = *(v2 + 16);
    v8 = v5;
    sub_224DAB348();
  }

  else
  {
  }
}

uint64_t sub_224BB2AF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v97 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v103 = &v96 - v7;
  v8 = sub_224DA9908();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v106 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAD3A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v105 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v115 = &v96 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v104 = &v96 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v124 = &v96 - v21;
  MEMORY[0x28223BE20](v20);
  v100 = &v96 - v22;
  v23 = sub_224DACE38();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v27 = MEMORY[0x28223BE20](v26);
  v110 = &v96 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v108 = &v96 - v30;
  result = MEMORY[0x28223BE20](v29);
  v35 = &v96 - v32;
  v96 = a1;
  v125 = *a1;
  v36 = *(a2 + 16);
  if (v36)
  {
    v98 = v33;
    v38 = *(v24 + 16);
    v37 = v24 + 16;
    v39 = a2 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v40 = v38;
    v123 = (v37 - 8);
    v126 = (v12 + 16);
    v107 = *(v37 + 56);
    v120 = (v12 + 8);
    v109 = v12;
    v102 = v12 + 32;
    v116 = MEMORY[0x277D84F90];
    *&v34 = 138543362;
    v101 = v34;
    *&v34 = 136446210;
    v99 = v34;
    v117 = v37;
    v118 = v11;
    v41 = v108;
    v111 = &v96 - v32;
    v121 = v38;
    while (1)
    {
      v119 = v39;
      v40(v35);
      if (qword_281351538 != -1)
      {
        swift_once();
      }

      v43 = sub_224DAB258();
      __swift_project_value_buffer(v43, qword_281351540);
      (v40)(v41, v35, v23);
      v44 = v23;
      v45 = sub_224DAB228();
      v46 = sub_224DAF2A8();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = v101;
        v49 = sub_224DACDC8();
        v122 = *v123;
        v122(v41, v44);
        *(v47 + 4) = v49;
        *v48 = v49;
        _os_log_impl(&dword_224A2F000, v45, v46, "Attempting to add extension: %{public}@", v47, 0xCu);
        sub_224A3311C(v48, &unk_27D6F69F0, &unk_224DB3900);
        v50 = v48;
        v11 = v118;
        MEMORY[0x22AA5EED0](v50, -1, -1);
        v51 = v47;
        v35 = v111;
        MEMORY[0x22AA5EED0](v51, -1, -1);
      }

      else
      {

        v122 = *v123;
        v122(v41, v44);
      }

      v23 = v44;
      v52 = sub_224DACDC8();
      v53 = v52;
      v54 = v125;
      if (!*(v125 + 16))
      {
        break;
      }

      v55 = sub_224A3E7EC(v52);
      if ((v56 & 1) == 0)
      {
        break;
      }

      v57 = v100;
      (*(v109 + 16))(v100, *(v54 + 56) + *(v109 + 72) * v55, v11);

      v58 = v110;
      sub_224DAD388();
      v59 = sub_224DACDF8();
      v122(v58, v23);
      if ((v59 & 1) == 0)
      {
        v114 = v36;
        (*v120)(v57, v11);
        goto LABEL_17;
      }

      v60 = v98;
      v121(v98, v35, v23);
      v61 = sub_224DAB228();
      v62 = sub_224DAF2A8();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v63 = v101;
        v114 = v61;
        v65 = sub_224DACDC8();
        v66 = v122;
        v122(v60, v23);
        *(v63 + 4) = v65;
        *v64 = v65;
        v67 = v114;
        _os_log_impl(&dword_224A2F000, v114, v62, "Skipping - Extension already exists and did not change: %{public}@", v63, 0xCu);
        sub_224A3311C(v64, &unk_27D6F69F0, &unk_224DB3900);
        v68 = v64;
        v11 = v118;
        MEMORY[0x22AA5EED0](v68, -1, -1);
        v69 = v63;
        v35 = v111;
        MEMORY[0x22AA5EED0](v69, -1, -1);

        (*v120)(v100, v11);
        result = v66(v35, v23);
      }

      else
      {

        v42 = v122;
        v122(v60, v23);
        (*v120)(v100, v11);
        result = v42(v35, v23);
      }

      v41 = v108;
LABEL_5:
      v39 = v119 + v107;
      v36 = (v36 - 1);
      v40 = v121;
      if (!v36)
      {
        goto LABEL_27;
      }
    }

    v114 = v36;

LABEL_17:
    sub_224DADC18();
    sub_224DA98F8();
    sub_224DACDC8();
    sub_224DACD78();
    v70 = sub_224DADBF8();
    v121(v110, v35, v23);

    v71 = v124;
    v113 = v70;
    sub_224DAD378();
    v72 = *v126;
    v73 = v104;
    (*v126)(v104, v71, v11);
    v74 = sub_224DAB228();
    v75 = sub_224DAF2A8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v127 = v77;
      *v76 = v99;
      sub_224BB58D8(&qword_27D6F4AB0, 255, MEMORY[0x277CF9CA8]);
      v78 = sub_224DAFD28();
      v80 = v79;
      v112 = *v120;
      v112(v73, v118);
      v81 = sub_224A33F74(v78, v80, &v127);

      *(v76 + 4) = v81;
      _os_log_impl(&dword_224A2F000, v74, v75, "Added extension: %{public}s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      v82 = v77;
      v11 = v118;
      MEMORY[0x22AA5EED0](v82, -1, -1);
      MEMORY[0x22AA5EED0](v76, -1, -1);
    }

    else
    {

      v112 = *v120;
      v112(v73, v11);
    }

    v83 = v72;
    v72(v115, v124, v11);
    v84 = v116;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v108;
    v36 = v114;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v84 = sub_224AD9780(0, v84[2] + 1, 1, v84);
    }

    v87 = v84[2];
    v86 = v84[3];
    v88 = v109;
    if (v87 >= v86 >> 1)
    {
      v95 = sub_224AD9780(v86 > 1, v87 + 1, 1, v84);
      v88 = v109;
      v84 = v95;
    }

    v84[2] = v87 + 1;
    v89 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v116 = v84;
    (*(v88 + 32))(v84 + v89 + *(v88 + 72) * v87, v115, v11);
    sub_224BB58D8(&qword_27D6F4AA8, 255, MEMORY[0x277CF9CA8]);
    v90 = v124;
    v91 = sub_224DAE3D8();
    v92 = v105;
    v83(v105, v90, v11);
    v93 = v125;
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v93;
    sub_224B20F3C(v92, v91, v94);

    v112(v90, v11);
    v35 = v111;
    result = (v122)(v111, v23);
    v125 = v127;
    goto LABEL_5;
  }

  v116 = MEMORY[0x277D84F90];
LABEL_27:
  *v96 = v125;
  *v97 = v116;
  return result;
}

uint64_t sub_224BB36A8(uint64_t a1)
{
  v150 = *MEMORY[0x277D85DE8];
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3520, &qword_224DB3AB8);
  v120 = *(v129 - 8);
  v3 = *(v120 + 64);
  MEMORY[0x28223BE20](v129);
  v128 = &v116 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v143 = &v116 - v7;
  v8 = sub_224DA9688();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v119 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v116 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v116 - v16;
  v18 = sub_224DAD3A8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v126 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v130 = &v116 - v24;
  MEMORY[0x28223BE20](v23);
  v124 = &v116 - v25;
  v144 = v1;
  v26 = v1[12];
  v147 = a1;

  os_unfair_lock_lock((v26 + 24));
  sub_224BB5974((v26 + 16), v148);
  v145 = 0;
  os_unfair_lock_unlock((v26 + 24));
  v27 = v148[0];

  v146 = v27[2];
  if (v146)
  {
    v118 = v15;
    swift_beginAccess();
    v28 = 0;
    v132 = (v9 + 48);
    v123 = (v9 + 32);
    v122 = (v9 + 16);
    v125 = (v9 + 8);
    v142 = (v19 + 8);
    *&v29 = 136446210;
    v116 = v29;
    *&v29 = 136446466;
    v121 = v29;
    v135 = v18;
    v30 = v124;
    v31 = v18;
    v134 = v27;
    v138 = v19 + 16;
    v137 = v8;
    v127 = v17;
    v133 = v19;
    do
    {
      if (v28 >= v27[2])
      {
        __break(1u);
LABEL_39:
        __break(1u);
      }

      v131 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v141 = *(v19 + 72);
      v33 = *(v19 + 16);
      v33(v30, v27 + v131 + v141 * v28, v31);
      sub_224BB5990((v144 + 13), v148);
      if (!v149)
      {
        goto LABEL_39;
      }

      __swift_project_boxed_opaque_existential_1(v148, v149);
      v140 = sub_224BB58D8(&qword_27D6F4AA8, 255, MEMORY[0x277CF9CA8]);
      v34 = sub_224DAE3D8();
      v35 = v143;
      sub_224DAD408();

      v36 = v137;
      if ((*v132)(v35, 1, v137) == 1)
      {
        v139 = *v142;
        v139(v30, v31);
        sub_224A3311C(v143, &unk_27D6F4680, &unk_224DB4610);
        __swift_destroy_boxed_opaque_existential_1(v148);
        v32 = v138;
        v19 = v133;
      }

      else
      {
        v37 = v127;
        (*v123)(v127, v143, v36);
        __swift_destroy_boxed_opaque_existential_1(v148);
        v38 = [objc_opt_self() defaultManager];
        v39 = sub_224DA95F8();
        v148[0] = 0;
        v40 = [v38 removeItemAtURL:v39 error:v148];

        if (v40)
        {
          v41 = qword_281351538;
          v42 = v148[0];
          v43 = v118;
          if (v41 != -1)
          {
            swift_once();
          }

          v44 = sub_224DAB258();
          __swift_project_value_buffer(v44, qword_281351540);
          (*v122)(v43, v37, v36);
          v45 = sub_224DAB228();
          v46 = sub_224DAF2A8();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = v43;
            v49 = swift_slowAlloc();
            v148[0] = v49;
            *v47 = v116;
            v50 = sub_224DA9658();
            v52 = v51;
            v53 = *v125;
            (*v125)(v48, v137);
            v54 = v50;
            v55 = v127;
            v56 = sub_224A33F74(v54, v52, v148);

            *(v47 + 4) = v56;
            _os_log_impl(&dword_224A2F000, v45, v46, "Removed remote extension data directory: %{public}s", v47, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v49);
            MEMORY[0x22AA5EED0](v49, -1, -1);
            v57 = v47;
            v58 = v137;
            MEMORY[0x22AA5EED0](v57, -1, -1);

            v53(v55, v58);
          }

          else
          {

            v79 = *v125;
            (*v125)(v43, v36);
            v79(v37, v36);
          }

          v30 = v124;
          v31 = v135;
          v139 = *v142;
          v139(v124, v135);
          v32 = v138;
        }

        else
        {
          v136 = v33;
          v59 = v148[0];
          v60 = sub_224DA9528();

          swift_willThrow();
          if (qword_281351538 != -1)
          {
            swift_once();
          }

          v145 = 0;
          v61 = sub_224DAB258();
          __swift_project_value_buffer(v61, qword_281351540);
          v62 = v119;
          (*v122)(v119, v37, v36);
          v63 = v60;
          v64 = sub_224DAB228();
          v65 = sub_224DAF288();

          if (os_log_type_enabled(v64, v65))
          {
            v66 = v62;
            v67 = swift_slowAlloc();
            v117 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            v148[0] = v139;
            *v67 = v121;
            v68 = sub_224DA9658();
            v70 = v69;
            v71 = *v125;
            (*v125)(v66, v137);
            v72 = sub_224A33F74(v68, v70, v148);
            v73 = v127;

            *(v67 + 4) = v72;
            *(v67 + 12) = 2114;
            v74 = v60;
            v75 = _swift_stdlib_bridgeErrorToNSError();
            *(v67 + 14) = v75;
            v76 = v117;
            *v117 = v75;
            _os_log_impl(&dword_224A2F000, v64, v65, "Failed to remove remote extension data directory %{public}s: %{public}@", v67, 0x16u);
            sub_224A3311C(v76, &unk_27D6F69F0, &unk_224DB3900);
            v77 = v137;
            MEMORY[0x22AA5EED0](v76, -1, -1);
            v78 = v139;
            __swift_destroy_boxed_opaque_existential_1(v139);
            MEMORY[0x22AA5EED0](v78, -1, -1);
            MEMORY[0x22AA5EED0](v67, -1, -1);

            v71(v73, v77);
          }

          else
          {

            v80 = *v125;
            (*v125)(v62, v36);
            v80(v37, v36);
          }

          v30 = v124;
          v31 = v135;
          v139 = *v142;
          v139(v124, v135);
          v32 = v138;
          v33 = v136;
        }

        v19 = v133;
      }

      ++v28;
      v27 = v134;
    }

    while (v146 != v28);
    LODWORD(v133) = *MEMORY[0x277CF99F0];
    v132 = (v120 + 104);
    v127 = (v120 + 32);
    v137 = MEMORY[0x277D84F90];
    v81 = v134 + v131;
    v82 = v130;
    v136 = v33;
    do
    {
      v143 = v81;
      v33(v82, v81, v31);
      v85 = v32;
      v86 = v144[11];
      __swift_project_boxed_opaque_existential_1(v144 + 6, v144[9]);
      v87 = sub_224DAE3D8();
      v88 = v82;
      v89 = v33;
      v90 = v145;
      sub_224DAD4A8();
      v91 = v90;
      if (v90)
      {

        if (qword_281351538 != -1)
        {
          swift_once();
        }

        v92 = sub_224DAB258();
        __swift_project_value_buffer(v92, qword_281351540);
        v93 = v126;
        v82 = v130;
        v32 = v138;
        v33 = v136;
        v136(v126, v130, v31);
        v94 = v91;
        v95 = sub_224DAB228();
        v96 = sub_224DAF288();

        if (os_log_type_enabled(v95, v96))
        {
          v97 = v93;
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          v148[0] = v145;
          *v98 = v121;
          sub_224BB58D8(&qword_27D6F4AB0, 255, MEMORY[0x277CF9CA8]);
          v100 = sub_224DAFD28();
          v102 = v101;
          v103 = v139;
          v139(v97, v135);
          v104 = sub_224A33F74(v100, v102, v148);
          v31 = v135;

          *(v98 + 4) = v104;
          *(v98 + 12) = 2114;
          v105 = v91;
          v106 = _swift_stdlib_bridgeErrorToNSError();
          *(v98 + 14) = v106;
          *v99 = v106;
          _os_log_impl(&dword_224A2F000, v95, v96, "Failed to remove remote extension from store: %{public}s - %{public}@", v98, 0x16u);
          sub_224A3311C(v99, &unk_27D6F69F0, &unk_224DB3900);
          v107 = v99;
          v32 = v138;
          MEMORY[0x22AA5EED0](v107, -1, -1);
          v108 = v145;
          __swift_destroy_boxed_opaque_existential_1(v145);
          MEMORY[0x22AA5EED0](v108, -1, -1);
          MEMORY[0x22AA5EED0](v98, -1, -1);

          v82 = v130;
          (v103)(v82, v31);
          v33 = v136;
        }

        else
        {

          v83 = v139;
          v139(v93, v31);
          (v83)(v82, v31);
        }

        v145 = 0;
        v84 = v143;
      }

      else
      {

        v109 = v128;
        v89(v128, v88, v31);
        (*v132)(v109, v133, v129);
        v32 = v85;
        v33 = v89;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v137 = sub_224AD9448(0, v137[2] + 1, 1, v137);
        }

        v84 = v143;
        v111 = v137[2];
        v110 = v137[3];
        if (v111 >= v110 >> 1)
        {
          v137 = sub_224AD9448(v110 > 1, v111 + 1, 1, v137);
        }

        v145 = 0;
        v82 = v88;
        v139(v88, v31);
        v112 = v137;
        v137[2] = v111 + 1;
        (*(v120 + 32))(v112 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v111, v128, v129);
      }

      v81 = v84 + v141;
      --v146;
    }

    while (v146);

    v113 = v144[4];
    v148[0] = v137;
    sub_224DAB348();
  }

  v115 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_224BB46E8(uint64_t **a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v67 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4AC0, qword_224DB97D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v72 = &v65 - v7;
  v8 = sub_224DAD3A8();
  v77 = *(v8 - 8);
  v9 = *(v77 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v71 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v65 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v65 - v15;
  v66 = a1;
  v17 = *a1;
  if (!(a2 >> 62))
  {
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_32:
    v84 = MEMORY[0x277D84F90];
LABEL_33:
    *v66 = v17;
    *v67 = v84;
    return;
  }

  v18 = sub_224DAF838();
  if (!v18)
  {
    goto LABEL_32;
  }

LABEL_3:
  if (v18 >= 1)
  {
    v85 = v16;
    v19 = 0;
    v83 = a2 & 0xC000000000000001;
    v81 = v77 + 16;
    v73 = (v77 + 32);
    v69 = (v77 + 8);
    v70 = (v77 + 56);
    v84 = MEMORY[0x277D84F90];
    *&v14 = 138543362;
    v79 = v14;
    *&v14 = 136446210;
    v68 = v14;
    v76 = a2;
    v82 = v8;
    v78 = v18;
    do
    {
      if (v83)
      {
        v24 = MEMORY[0x22AA5DCC0](v19, a2);
      }

      else
      {
        v24 = *(a2 + 8 * v19 + 32);
      }

      v25 = v24;
      if (qword_281351538 != -1)
      {
        swift_once();
      }

      v26 = sub_224DAB258();
      __swift_project_value_buffer(v26, qword_281351540);
      v27 = v25;
      v28 = sub_224DAB228();
      v29 = sub_224DAF2A8();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = v79;
        *(v30 + 4) = v27;
        *v31 = v27;
        v32 = v27;
        _os_log_impl(&dword_224A2F000, v28, v29, "Removing extension: %{public}@", v30, 0xCu);
        sub_224A3311C(v31, &unk_27D6F69F0, &unk_224DB3900);
        v33 = v31;
        v8 = v82;
        MEMORY[0x22AA5EED0](v33, -1, -1);
        v34 = v30;
        v18 = v78;
        MEMORY[0x22AA5EED0](v34, -1, -1);
      }

      if (v17[2] && (v35 = sub_224A3E7EC(v27), (v36 & 1) != 0))
      {
        v37 = *(v77 + 72);
        v38 = *(v77 + 16);
        v38(v85, v17[7] + v37 * v35, v8);
        v80 = v27;
        v39 = sub_224A3E7EC(v80);
        if (v40)
        {
          v41 = v39;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v86 = v17;
          v43 = v72;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_224B277CC();
            v17 = v86;
          }

          (*v73)(v43, v17[7] + v41 * v37, v8);
          sub_224B1C95C(v41, v17);
          v44 = 0;
        }

        else
        {
          v44 = 1;
          v43 = v72;
        }

        (*v70)(v43, v44, 1, v8);

        sub_224A3311C(v43, &qword_27D6F4AC0, qword_224DB97D8);
        v38(v75, v85, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_224AD9780(0, v84[2] + 1, 1, v84);
        }

        v49 = v84[2];
        v48 = v84[3];
        v74 = v17;
        if (v49 >= v48 >> 1)
        {
          v84 = sub_224AD9780(v48 > 1, v49 + 1, 1, v84);
        }

        v50 = v84;
        v84[2] = v49 + 1;
        (*(v77 + 32))(v50 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + v49 * v37, v75, v8);
        v51 = v71;
        v52 = v85;
        v38(v71, v85, v8);
        v53 = sub_224DAB228();
        v54 = sub_224DAF2A8();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v86 = v56;
          *v55 = v68;
          sub_224BB58D8(&qword_27D6F4AB0, 255, MEMORY[0x277CF9CA8]);
          v57 = sub_224DAFD28();
          v59 = v58;
          v60 = *v69;
          (*v69)(v51, v82);
          v61 = sub_224A33F74(v57, v59, &v86);

          *(v55 + 4) = v61;
          _os_log_impl(&dword_224A2F000, v53, v54, "Removed extension: %{public}s", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v56);
          v62 = v56;
          v8 = v82;
          MEMORY[0x22AA5EED0](v62, -1, -1);
          MEMORY[0x22AA5EED0](v55, -1, -1);

          v60(v85, v8);
        }

        else
        {

          v63 = v51;
          v64 = *v69;
          (*v69)(v63, v8);
          v64(v52, v8);
        }

        a2 = v76;
        v17 = v74;
        v18 = v78;
      }

      else
      {
        v45 = v27;
        v46 = sub_224DAB228();
        v47 = sub_224DAF288();

        if (os_log_type_enabled(v46, v47))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = v79;
          *(v20 + 4) = v45;
          *v21 = v45;
          v22 = v45;
          _os_log_impl(&dword_224A2F000, v46, v47, "Unable to find extension: %{public}@", v20, 0xCu);
          sub_224A3311C(v21, &unk_27D6F69F0, &unk_224DB3900);
          v23 = v21;
          a2 = v76;
          MEMORY[0x22AA5EED0](v23, -1, -1);
          MEMORY[0x22AA5EED0](v20, -1, -1);
        }

        else
        {
        }
      }

      ++v19;
    }

    while (v18 != v19);
    goto LABEL_33;
  }

  __break(1u);
}

void sub_224BB4ED8(int64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v40 = a1;
  v7 = sub_224DAD3A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v36 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v35 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  if (qword_281351538 != -1)
  {
    swift_once();
  }

  v16 = sub_224DAB258();
  __swift_project_value_buffer(v16, qword_281351540);
  v17 = sub_224DAB228();
  v18 = sub_224DAF2A8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = a2;
    v20 = v19;
    *v19 = 0;
    _os_log_impl(&dword_224A2F000, v17, v18, "Updating descriptors", v19, 2u);
    v21 = v20;
    v4 = v3;
    a2 = v34;
    MEMORY[0x22AA5EED0](v21, -1, -1);
  }

  v22 = *v40;
  if (*(*v40 + 16) && (v23 = sub_224A3E7EC(a2), (v24 & 1) != 0))
  {
    v34 = v4;
    v25 = *(v22 + 56) + *(v8 + 72) * v23;
    v26 = *(v8 + 16);
    v27 = v35;
    v26(v35, v25, v7);
    (*(v8 + 32))(v15, v27, v7);
    sub_224DAD398();
    sub_224DADC08();

    v26(v36, v15, v7);
    v28 = sub_224A5C040(0, 1, 1, MEMORY[0x277D84F90]);
    v30 = v28[2];
    v29 = v28[3];
    v40 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      v28 = sub_224A5C040((v29 > 1), v40, 1, v28);
    }

    v31 = *(v8 + 8);
    v31(v15, v7);
    v38 = v7;
    v39 = sub_224BB58D8(&qword_27D6F4AA8, 255, MEMORY[0x277CF9CA8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
    v33 = v36;
    v26(boxed_opaque_existential_1, v36, v7);
    v28[2] = v40;
    sub_224A36F98(&v37, &v28[5 * v30 + 4]);
    v31(v33, v7);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  *a3 = v28;
}

uint64_t sub_224BB528C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  v5 = v0[12];

  sub_224A3311C((v0 + 13), &unk_27D6F5370, &qword_224DB97D0);

  return swift_deallocClassInstance();
}

uint64_t sub_224BB53B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_224BB58D8(qword_281353CC0, a2, type metadata accessor for RemoteWidgetExtensionService);
  result = sub_224BB58D8(&qword_281353CB8, v3, type metadata accessor for RemoteWidgetExtensionService);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_224BB543C(uint64_t a1, int64_t a2, void (*a3)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1;
  v36 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v32 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v30 = a2;
    v31 = v3;
    v29[1] = v29;
    MEMORY[0x28223BE20](a1);
    v33 = v29 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v33, v7);
    v34 = 0;
    v35 = v5;
    a2 = 0;
    v8 = v5 + 64;
    v9 = 1 << *(v5 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v5 = v13 | (a2 << 6);
      v16 = *(*(v35 + 48) + 8 * v5);
      v17 = *(*(v35 + 56) + 8 * v5);
      v18 = &v16[*MEMORY[0x277CFA128]];
      swift_beginAccess();
      v20 = *v18;
      v19 = *(v18 + 1);

      v21 = v16;

      LOBYTE(v20) = sub_224DAA048();

      if (v20)
      {
        *&v33[(v5 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v5;
        if (__OFADD__(v34++, 1))
        {
          __break(1u);
LABEL_16:
          result = v30(v33, v32, v34, v35);
          goto LABEL_17;
        }
      }
    }

    v14 = a2;
    while (1)
    {
      a2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (a2 >= v12)
      {
        goto LABEL_16;
      }

      v15 = *(v8 + 8 * a2);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v25 = a3;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  sub_224BB56F0(v26, v32, v5, v25);
  v28 = v27;
  MEMORY[0x22AA5EED0](v26, -1, -1);
  result = v28;
LABEL_17:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_224BB56F0(char *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t, uint64_t))
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v24 = 0;
    v22 = a2;
    v6 = 0;
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
LABEL_14:
      v14 = v11 | (v6 << 6);
      v15 = *(*(a3 + 48) + 8 * v14);
      v16 = *(*(a3 + 56) + 8 * v14);
      v17 = &v15[*MEMORY[0x277CFA128]];
      swift_beginAccess();
      v19 = *v17;
      v18 = *(v17 + 1);

      v20 = v15;

      LOBYTE(v19) = sub_224DAA048();

      if (v19)
      {
        *&a1[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
LABEL_18:
          a4(a1, v22, v24, a3);

          return;
        }
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_18;
      }

      v13 = *(a3 + 64 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_224BB58D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_224BB5920(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_224BB5990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5370, &qword_224DB97D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_224BB5AC4()
{
  result = qword_27D6F4AC8;
  if (!qword_27D6F4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4AC8);
  }

  return result;
}

uint64_t sub_224BB5B18()
{
  v1 = v0;
  v2 = v0[4];
  v3 = *(v2 + 16);

  os_unfair_lock_lock(v3);
  v4 = v1[8];
  v5 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v4);
  (*(v5 + 40))(v1, &off_28382DBB8, v4, v5);
  os_unfair_lock_unlock(*(v2 + 16));

  v6 = v1[3];

  v7 = v1[4];

  __swift_destroy_boxed_opaque_existential_1(v1 + 5);
  v8 = v1[10];

  return swift_deallocClassInstance();
}

uint64_t sub_224BB5C0C()
{
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A8CEE8(&qword_281350EE0);
  return sub_224DAB3A8();
}

uint64_t sub_224BB5CC0@<X0>(void *a1@<X8>)
{
  v3 = [*v1 widget];
  a1[3] = sub_224A3B79C(0, &qword_281350830, 0x277CFA358);
  result = sub_224A3B758(&unk_281350820, &qword_281350830, 0x277CFA358);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_224BB5D58(uint64_t a1)
{
  result = sub_224A3B758(&qword_2813508E0, &qword_2813508E8, 0x277D7BC20);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224BB5DAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v122 = a4;
  v120 = a3;
  v111 = a2;
  v110 = sub_224DAB7B8();
  v109 = *(v110 - 8);
  v7 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v107 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_224DAB848();
  v106 = *(v108 - 8);
  v9 = *(v106 + 64);
  MEMORY[0x28223BE20](v108);
  v105 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_224DAB878();
  v123 = *(v116 - 8);
  v11 = v123[8];
  v12 = MEMORY[0x28223BE20](v116);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v87 - v15;
  v118 = sub_224DA9878();
  v121 = *(v118 - 8);
  v17 = *(v121 + 64);
  v18 = MEMORY[0x28223BE20](v118);
  v117 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v19;
  MEMORY[0x28223BE20](v18);
  v125 = &v87 - v20;
  v115 = sub_224DAC268();
  v119 = *(v115 - 8);
  v21 = *(v119 + 64);
  v22 = MEMORY[0x28223BE20](v115);
  v124 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v87 - v23;
  if (qword_281351528 != -1)
  {
    swift_once();
  }

  v25 = sub_224DAB258();
  __swift_project_value_buffer(v25, qword_281364EB0);

  v26 = a1;
  v27 = sub_224DAB228();
  v28 = sub_224DAF2A8();
  v112 = v26;

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138543618;
    v31 = v24;
    v32 = *(v5 + 24);
    *(v29 + 4) = v32;
    *(v29 + 12) = 2114;
    v33 = v112;
    *(v29 + 14) = v112;
    *v30 = v32;
    v30[1] = v33;
    v34 = v33;
    v35 = v32;
    v24 = v31;
    _os_log_impl(&dword_224A2F000, v27, v28, "[%{public}@] Handle interaction: %{public}@", v29, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v30, -1, -1);
    MEMORY[0x22AA5EED0](v29, -1, -1);
  }

  v36 = *(v5 + 40);
  v37 = *(v5 + 32);
  v38 = v36;
  sub_224DAC238();
  if (!*(v5 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_contentType))
  {
    sub_224B44674(*(v5 + 16) + 280, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v127);
    sub_224DAC7B8();
    __swift_destroy_boxed_opaque_existential_1(aBlock);
  }

  v113 = swift_allocObject();
  *(v113 + 16) = 0;
  v39 = v125;
  sub_224DA9808();
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v90 = sub_224DAF3D8();
  sub_224DAB858();
  sub_224DAB8E8();
  v89 = v16;
  v40 = v123[1];
  ++v123;
  v91 = v40;
  v40(v14, v116);
  v41 = v121;
  v42 = *(v121 + 16);
  v103 = v121 + 16;
  v104 = v42;
  v43 = v118;
  v42(v117, v39, v118);
  v44 = v119;
  v45 = *(v119 + 16);
  v101 = v119 + 16;
  v102 = v45;
  v46 = v115;
  v45(v124, v24, v115);
  v94 = *(v41 + 80);
  v47 = (v94 + 32) & ~v94;
  v99 = *(v44 + 80);
  v100 = &v114[v99];
  v48 = &v114[v99 + v47] & ~v99;
  v96 = v94 | v99;
  v98 = v21 + 7;
  v49 = v5;
  v88 = v5;
  v50 = (v21 + 7 + v48) & 0xFFFFFFFFFFFFFFF8;
  v114 = v24;
  v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v49;
  *(v52 + 24) = v113;
  v53 = *(v41 + 32);
  v95 = v41 + 32;
  v97 = v53;
  v54 = v52 + v47;
  v55 = v117;
  v53(v54, v117, v43);
  v56 = *(v44 + 32);
  v92 = v44 + 32;
  v93 = v56;
  v57 = v124;
  v56((v52 + v48), v124, v46);
  v58 = (v52 + v50);
  v59 = v122;
  *v58 = v120;
  v58[1] = v59;
  v60 = v112;
  *(v52 + v51) = v112;
  v128 = sub_224BB9200;
  v129 = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  v127 = &block_descriptor_21;
  v61 = _Block_copy(aBlock);
  v62 = v88;

  v112 = v60;

  v63 = v105;
  sub_224DAB7E8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_224A80F48(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A4C290();
  v64 = v107;
  v65 = v110;
  sub_224DAF788();
  v66 = v89;
  v67 = v90;
  MEMORY[0x22AA5D6A0](v89, v63, v64, v61);
  _Block_release(v61);

  (*(v109 + 8))(v64, v65);
  (*(v106 + 8))(v63, v108);
  v91(v66, v116);
  sub_224A3317C(*(v62 + 16) + 328, aBlock);
  v123 = __swift_project_boxed_opaque_existential_1(aBlock, v127);
  v68 = swift_allocObject();
  swift_weakInit();
  v69 = v55;
  v70 = v118;
  v104(v55, v125, v118);
  v71 = v115;
  v102(v57, v114, v115);
  v72 = (v94 + 48) & ~v94;
  v73 = &v100[v72] & ~v99;
  v74 = (v98 + v73) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  v76 = v113;
  *(v75 + 2) = v68;
  *(v75 + 3) = v76;
  v77 = v122;
  *(v75 + 4) = v120;
  *(v75 + 5) = v77;
  v78 = v69;
  v79 = v70;
  v97(&v75[v72], v78, v70);
  v80 = &v75[v73];
  v81 = v71;
  v93(v80, v124, v71);
  v82 = v112;
  *&v75[v74] = v112;
  v83 = *v123;
  v84 = v82;

  v85 = v114;
  sub_224B91034(v114, v111, v84, 0, 0, sub_224BB930C, v75);

  (*(v121 + 8))(v125, v79);
  (*(v119 + 8))(v85, v81);

  __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_224BB68A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, void *a7)
{
  v43 = a6;
  v44 = a5;
  v42 = a4;
  v11 = sub_224DA9878();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v19 = a1[6];
  v20 = *(v19 + 16);

  os_unfair_lock_lock(v20);
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    if (qword_281351528 != -1)
    {
      swift_once();
    }

    v21 = sub_224DAB258();
    __swift_project_value_buffer(v21, qword_281364EB0);
    v22 = v12[2];
    v41 = a3;
    v22(v18, a3, v11);

    v23 = sub_224DAB228();
    v24 = sub_224DAF288();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v40 = a7;
      v26 = v25;
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 138543618;
      v28 = a1[3];
      *(v26 + 4) = v28;
      *v27 = v28;
      *(v26 + 12) = 2050;
      v29 = v28;
      sub_224DA9808();
      sub_224DA9758();
      v31 = v30;
      v32 = v12[1];
      v32(v16, v11);
      v32(v18, v11);
      *(v26 + 14) = v31;
      _os_log_impl(&dword_224A2F000, v23, v24, "[%{public}@] Interaction timed out after %{public}fs", v26, 0x16u);
      v33 = v39;
      sub_224A3311C(v39, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v33, -1, -1);
      v34 = v26;
      a7 = v40;
      MEMORY[0x22AA5EED0](v34, -1, -1);
    }

    else
    {

      (v12[1])(v18, v11);
    }

    v35 = v41;
    if (!*(a1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_contentType))
    {
      sub_224B44674(a1[2] + 280, v45);
      __swift_project_boxed_opaque_existential_1(v45, v45[3]);
      sub_224DAC7C8();
      __swift_destroy_boxed_opaque_existential_1(v45);
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v36 = sub_224CBC42C(0x15u, 0, 0);
    v44();

    sub_224BB6C60(v35, a7);
  }

  os_unfair_lock_unlock(*(v19 + 16));
}

uint64_t sub_224BB6C60(uint64_t a1, void *a2)
{
  v3 = v2;
  v42 = a1;
  v43 = a2;
  v4 = sub_224DA9878();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v41 = *(v7 - 8);
  v8 = *(v41 + 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B00, &unk_224DB9AB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = sub_224DAD7D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_224DAD828();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, *MEMORY[0x277CF9D30], v15);
  sub_224DAD838();
  if (sub_224DAD818())
  {
    v25 = [*(v3 + 32) extensionIdentity];
    v26 = [v25 isRemote];

    if ((v26 & 1) == 0)
    {
      v27 = [*(v3 + 32) extensionIdentity];
      sub_224DAF4E8();

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v14, 1, v28) == 1)
      {
        sub_224A3311C(v14, &qword_27D6F4B00, &unk_224DB9AB0);
        v30 = [*(v3 + 32) extensionIdentity];
        v31 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
        v32 = sub_224DA9FE8();
        v34 = v33;
        swift_endAccess();
      }

      else
      {
        sub_224DAA268();
        (*(v29 + 8))(v14, v28);
        v32 = sub_224DA9FE8();
        v34 = v35;
        (*(v41 + 1))(v10, v7);
      }

      v41 = "\n\nRenderer Session: ";
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_224DAF938();

      v47 = 0xD00000000000001FLL;
      v48 = 0x8000000224DC95D0;
      MEMORY[0x22AA5D210](v32, v34);

      v47 = 0;
      v48 = 0xE000000000000000;
      sub_224DAF938();
      MEMORY[0x22AA5D210](0xD000000000000086, 0x8000000224DC95F0);
      v36 = sub_224BB8A1C(v42, v43, 0);
      MEMORY[0x22AA5D210](v36);

      v37 = *(v3 + 32);
      v38 = v44;
      sub_224DA9808();
      sub_224DAD7F8();

      (*(v45 + 8))(v38, v46);
    }
  }

  return (*(v21 + 8))(v24, v20);
}

uint64_t sub_224BB71FC(void *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = *(result + 48);

    os_unfair_lock_lock(*(v17 + 16));
    sub_224BB7300((a4 + 16), a1, a2 & 1, a5, a3, a7, a8, &v18, a9);
    os_unfair_lock_unlock(*(v17 + 16));
  }

  return result;
}

uint64_t sub_224BB7300@<X0>(_BYTE *a1@<X0>, void *a2@<X1>, char a3@<W2>, void (*a4)(void *)@<X3>, uint64_t a5@<X5>, void *a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>, void *a9)
{
  v47 = a7;
  v48 = a6;
  v49 = a5;
  v50 = a8;
  v13 = sub_224DA9878();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  result = swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    if (a3)
    {
      a4(a2);
      swift_beginAccess();
      *a1 = 1;
      if (qword_281351528 != -1)
      {
        swift_once();
      }

      v22 = sub_224DAB258();
      __swift_project_value_buffer(v22, qword_281364EB0);

      sub_224BA7AC0(a2, 1);
      v23 = sub_224DAB228();
      v24 = sub_224DAF288();

      sub_224B92BE0(a2, 1);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138543618;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v28 = *(Strong + 24);

          v29 = v28;
        }

        else
        {
          v28 = 0;
          v29 = 0;
        }

        *(v25 + 4) = v28;
        *v26 = v29;
        *(v25 + 12) = 2114;
        v37 = a2;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 14) = v38;
        v26[1] = v38;
        _os_log_impl(&dword_224A2F000, v23, v24, "[%{public}@] Encountered error when handling interaction: %{public}@", v25, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v26, -1, -1);
        MEMORY[0x22AA5EED0](v25, -1, -1);
      }

      swift_beginAccess();
      v39 = swift_weakLoadStrong();
      if (v39)
      {
        if (*(v39 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_contentType))
        {
          v52 = 0u;
          v53 = 0u;
          v51 = 0u;
        }

        else
        {
          sub_224B44674(*(v39 + 16) + 280, &v51);
        }

        if (*(&v52 + 1))
        {
          __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
          sub_224DAC7C8();
          __swift_destroy_boxed_opaque_existential_1(&v51);
        }

        else
        {
          sub_224A3311C(&v51, &qword_27D6F4AF8, &unk_224DB9AA0);
        }
      }

      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        sub_224BB7AB4(v48, a9, a2);
      }
    }

    else
    {
      a4(0);
      swift_beginAccess();
      *a1 = 1;
      if (qword_281351528 != -1)
      {
        swift_once();
      }

      v30 = sub_224DAB258();
      __swift_project_value_buffer(v30, qword_281364EB0);
      (*(v14 + 16))(v20, v48, v13);

      v31 = sub_224DAB228();
      v32 = sub_224DAF2A8();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v33 = 138543618;
        swift_beginAccess();
        v34 = swift_weakLoadStrong();
        if (v34)
        {
          v35 = *(v34 + 24);

          v36 = v35;
        }

        else
        {
          v35 = 0;
          v36 = 0;
        }

        *(v33 + 4) = v35;
        v40 = v48;
        *v48 = v36;
        *(v33 + 12) = 2050;
        sub_224DA9808();
        sub_224DA9758();
        v42 = v41;
        v43 = *(v14 + 8);
        v43(v18, v13);
        v43(v20, v13);
        *(v33 + 14) = v42;
        _os_log_impl(&dword_224A2F000, v31, v32, "[%{public}@] Finished handling interaction. Elapsed: %{public}f", v33, 0x16u);
        sub_224A3311C(v40, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v40, -1, -1);
        MEMORY[0x22AA5EED0](v33, -1, -1);
      }

      else
      {

        (*(v14 + 8))(v20, v13);
      }

      swift_beginAccess();
      v44 = swift_weakLoadStrong();
      if (v44)
      {
        if (*(v44 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_contentType))
        {
          v52 = 0u;
          v53 = 0u;
          v51 = 0u;
        }

        else
        {
          sub_224B44674(*(v44 + 16) + 280, &v51);
        }

        if (*(&v52 + 1))
        {
          __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
          sub_224DAC7C8();
          __swift_destroy_boxed_opaque_existential_1(&v51);
        }

        else
        {
          sub_224A3311C(&v51, &qword_27D6F4AF8, &unk_224DB9AA0);
        }
      }

      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        if (*(result + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_contentType))
        {
          v52 = 0u;
          v53 = 0u;
          v51 = 0u;
        }

        else
        {
          sub_224B44674(*(result + 16) + 280, &v51);
        }

        v45 = *(&v52 + 1);
        if (*(&v52 + 1))
        {
          v46 = v53;
          __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
          (*(v46 + 24))(v47, 1, v45, v46);
          result = __swift_destroy_boxed_opaque_existential_1(&v51);
        }

        else
        {
          result = sub_224A3311C(&v51, &qword_27D6F4AF8, &unk_224DB9AA0);
        }
      }
    }
  }

  *v50 = 0;
  return result;
}

uint64_t sub_224BB7AB4(uint64_t a1, void *a2, void *a3)
{
  v40 = a2;
  v41 = a3;
  v39 = a1;
  v3 = sub_224DA9878();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v38 = *(v7 - 8);
  v8 = *(v38 + 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B00, &unk_224DB9AB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - v13;
  v15 = sub_224DAD7D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_224DAD828();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, *MEMORY[0x277CF9D28], v15);
  sub_224DAD838();
  if (sub_224DAD818())
  {
    v25 = [*(v44 + 32) extensionIdentity];
    sub_224DAF4E8();

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v14, 1, v26) == 1)
    {
      sub_224A3311C(v14, &qword_27D6F4B00, &unk_224DB9AB0);
      v28 = [*(v44 + 32) extensionIdentity];
      v29 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      v30 = sub_224DA9FE8();
      v32 = v31;
      swift_endAccess();
    }

    else
    {
      sub_224DAA268();
      (*(v27 + 8))(v14, v26);
      v30 = sub_224DA9FE8();
      v32 = v33;
      (*(v38 + 1))(v10, v7);
    }

    v38 = ", environmentModifiers=";
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_224DAF938();

    v45 = 0xD00000000000001CLL;
    v46 = 0x8000000224DC9400;
    MEMORY[0x22AA5D210](v30, v32);

    v45 = 0;
    v46 = 0xE000000000000000;
    sub_224DAF938();
    MEMORY[0x22AA5D210](0xD000000000000074, 0x8000000224DC9420);
    v34 = v44;
    v35 = sub_224BB8A1C(v39, v40, v41);
    MEMORY[0x22AA5D210](v35);

    v36 = *(v34 + 32);
    sub_224DA9808();
    sub_224DAD7F8();

    (*(v42 + 8))(v6, v43);
  }

  return (*(v21 + 8))(v24, v20);
}

uint64_t sub_224BB8028()
{
  v1 = v0;
  if (qword_281351528 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364EB0);

  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = *(v1 + 24);
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&dword_224A2F000, v3, v4, "[%{public}@] Invalidated", v5, 0xCu);
    sub_224A3311C(v6, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v6, -1, -1);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  v9 = *(v1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__visibilityAssertion);
  *(v1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__visibilityAssertion) = 0;

  v10 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__lifetimeAssertion;
  swift_beginAccess();
  sub_224A8FA54(v1 + v10, v22);
  if (v23)
  {
    sub_224A3317C(v22, v19);
    sub_224A3311C(v22, &qword_27D6F3AE8, &unk_224DB9600);
    __swift_project_boxed_opaque_existential_1(v19, v20);
    sub_224DAE1F8();
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_224A3311C(v22, &qword_27D6F3AE8, &unk_224DB9600);
  }

  if (*(v1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__environmentModifierAssertion))
  {
    v11 = *(v1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__environmentModifierAssertion);

    sub_224DADCC8();
  }

  sub_224A3317C(*(v1 + 16) + 16, v22);
  v12 = v23;
  v13 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v14 = *(v1 + 24);
  v20 = sub_224A3B79C(0, &qword_2813508E8, 0x277D7BC20);
  v21 = sub_224A3B758(&unk_2813508F0, &qword_2813508E8, 0x277D7BC20);
  v19[0] = v14;
  v15 = *(v13 + 8);
  v16 = *(v15 + 16);
  v17 = v14;
  v16(v19, v12, v15);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_224BB82F8()
{
  v1 = v0;
  v2 = sub_224DAD158();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_224DA9F08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_224DAF938();
  v30 = v28;
  v31 = v29;
  MEMORY[0x22AA5D210](0xD000000000000023, 0x8000000224DC9380);
  v12 = [*(v0 + 24) identifier];
  v13 = sub_224DAEE18();
  v15 = v14;

  MEMORY[0x22AA5D210](v13, v15);

  MEMORY[0x22AA5D210](0x746567646977202CLL, 0xE90000000000003DLL);
  v16 = [*(v1 + 32) _loggingIdentifierWithMetrics_];
  v17 = sub_224DAEE18();
  v19 = v18;

  MEMORY[0x22AA5D210](v17, v19);

  MEMORY[0x22AA5D210](0x6E65746E6F63202CLL, 0xEE003D6570795474);
  v28 = *(v1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_contentType);
  type metadata accessor for CHSWidgetContentType(0);
  sub_224DAFA48();
  MEMORY[0x22AA5D210](0x69726F697270202CLL, 0xEB000000003D7974);
  v20 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_taskPriority;
  swift_beginAccess();
  (*(v8 + 16))(v11, v1 + v20, v7);
  sub_224A80F48(&qword_27D6F3E78, MEMORY[0x277CF9F40]);
  v21 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v21);

  (*(v8 + 8))(v11, v7);
  MEMORY[0x22AA5D210](0xD000000000000011, 0x8000000224DC6160);
  if (*(v1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_visiblySettled))
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_visiblySettled))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x22AA5D210](v22, v23);

  MEMORY[0x22AA5D210](0xD000000000000017, 0x8000000224DC93B0);
  v24 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_environmentModifiers;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v24, v2);
  sub_224A80F48(&qword_27D6F3E80, MEMORY[0x277CF9C60]);
  v25 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v25);

  (*(v3 + 8))(v6, v2);
  MEMORY[0x22AA5D210](62, 0xE100000000000000);
  return v30;
}

uint64_t sub_224BB8778()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_taskPriority;
  v4 = sub_224DA9F08();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__lifetimeAssertion, &qword_27D6F3AE8, &unk_224DB9600);
  v5 = *(v0 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__visibilityAssertion);

  v6 = *(v0 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__environmentModifierAssertion);

  v7 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_environmentModifiers;
  v8 = sub_224DAD158();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_224BB8880()
{
  sub_224BB8778();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_224BB88E0()
{
  result = sub_224DA9F08();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_224DAD158();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void *sub_224BB8A1C(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v77 = a1;
  v78 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v65 = *(v66 - 8);
  v6 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v64 = &v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B00, &unk_224DB9AB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = &v63 - v10;
  v76 = sub_224DA96F8();
  v11 = *(v76 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v76);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_224DA9718();
  v15 = *(v74 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v74);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DA9878();
  v68 = *(v19 - 8);
  v69 = v19;
  v20 = *(v68 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v84 = 0;
    v85 = 0xE000000000000000;
    v23 = a3;
    MEMORY[0x22AA5D210](0x203A726F727245, 0xE700000000000000);
    v80 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
    sub_224DAFA48();
    MEMORY[0x22AA5D210](10, 0xE100000000000000);

    v24 = v85;
    v72 = v84;
  }

  else
  {
    v72 = 0;
    v24 = 0xE000000000000000;
  }

  v73 = v24;
  v25 = [*(v3 + 32) extensionIdentity];
  v26 = &v25[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v27 = *v26;
  v70 = *(v26 + 1);
  v71 = v27;

  v80 = 0;
  v81 = 0xE000000000000000;
  sub_224DAF938();
  v82 = v80;
  v83 = v81;
  MEMORY[0x22AA5D210](0xD00000000000004DLL, 0x8000000224DC94A0);
  sub_224DA9808();
  sub_224DA9708();
  sub_224DA96E8();
  v28 = v22;
  v29 = sub_224DA9848();
  v31 = v30;
  v75 = v4;
  v67 = *(v11 + 8);
  v32 = v76;
  v67(v14, v76);
  v33 = *(v15 + 8);
  v34 = v74;
  v33(v18, v74);
  (*(v68 + 8))(v28, v69);
  MEMORY[0x22AA5D210](v29, v31);

  MEMORY[0x22AA5D210](0xD000000000000016, 0x8000000224DC94F0);
  sub_224DA9708();
  sub_224DA96E8();
  v35 = sub_224DA9848();
  v37 = v36;
  v67(v14, v32);
  v38 = v75;
  v33(v18, v34);
  MEMORY[0x22AA5D210](v35, v37);

  MEMORY[0x22AA5D210](0xD000000000000014, 0x8000000224DC9510);
  v39 = [v78 identifier];
  v40 = sub_224DAEE18();
  v42 = v41;

  MEMORY[0x22AA5D210](v40, v42);

  MEMORY[0x22AA5D210](10, 0xE100000000000000);
  MEMORY[0x22AA5D210](v72, v73);

  MEMORY[0x22AA5D210](0xD00000000000001ALL, 0x8000000224DC9530);
  v43 = sub_224DAA038();
  v45 = v44;

  MEMORY[0x22AA5D210](v43, v45);

  MEMORY[0x22AA5D210](0x6E7562207070410ALL, 0xED0000203A656C64);
  v46 = [*(v38 + 32) extensionIdentity];
  v47 = v79;
  sub_224DAF4E8();

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v47, 1, v48) == 1)
  {
    sub_224A3311C(v47, &qword_27D6F4B00, &unk_224DB9AB0);
    v50 = 0;
    v51 = 0xE000000000000000;
  }

  else
  {
    v52 = v64;
    sub_224DAA268();
    (*(v49 + 8))(v47, v48);
    v53 = v66;
    v54 = sub_224DA9FE8();
    v51 = v55;
    (*(v65 + 8))(v52, v53);
    v50 = v54;
  }

  MEMORY[0x22AA5D210](v50, v51);

  MEMORY[0x22AA5D210](0xD000000000000013, 0x8000000224DC9550);
  v56 = [*(v38 + 32) extensionIdentity];
  v57 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v58 = sub_224DA9FE8();
  v60 = v59;
  swift_endAccess();

  MEMORY[0x22AA5D210](v58, v60);

  MEMORY[0x22AA5D210](0xD000000000000014, 0x8000000224DC9570);
  v61 = sub_224BB82F8();
  MEMORY[0x22AA5D210](v61);

  return v82;
}

uint64_t sub_224BB9200()
{
  v1 = *(sub_224DA9878() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_224DAC268() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = v0 + v6;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v0 + v7);

  return sub_224BB68A8(v8, v9, v0 + v2, v0 + v5, v11, v12, v13);
}

uint64_t sub_224BB930C(void *a1, char a2)
{
  v5 = *(sub_224DA9878() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_224DAC268() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  return sub_224BB71FC(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), (v2 + v6), v2 + v9, *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t getEnumTagSinglePayload for TaskPredicate(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for TaskPredicate(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_224BB9594()
{
  v1 = *v0;
  v2 = v0[1];
  sub_224DAFE68();
  sub_224DAFE88();
  sub_224DAFE88();
  return sub_224DAFEA8();
}

uint64_t sub_224BB95F4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_224DAFE88();
  return sub_224DAFE88();
}

uint64_t sub_224BB9634()
{
  v1 = *v0;
  v2 = v0[1];
  sub_224DAFE68();
  sub_224DAFE88();
  sub_224DAFE88();
  return sub_224DAFEA8();
}

unint64_t sub_224BB96BC()
{
  result = qword_28135B9E0;
  if (!qword_28135B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B9E0);
  }

  return result;
}

uint64_t sub_224BB9710()
{
  v0 = sub_224DAB0F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DAAB88();
  __swift_allocate_value_buffer(v5, qword_27D6F4B18);
  __swift_project_value_buffer(v5, qword_27D6F4B18);
  if (qword_2813592A8 != -1)
  {
    swift_once();
  }

  v6 = qword_2813652C8;
  if (*(qword_2813652C8 + 16))
  {

    v7 = sub_224B0B668(8);
    if (v8)
    {
      (*(v1 + 16))(v4, *(v6 + 56) + *(v1 + 72) * v7, v0);

      sub_224DAB0C8();
      return (*(v1 + 8))(v4, v0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224BB989C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_224BB9908()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v6 = sub_224DAB258();
  __swift_project_value_buffer(v6, qword_281365120);
  v7 = sub_224DAB228();
  v8 = sub_224DAF2A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_224A2F000, v7, v8, "Observing changes made to activity subscriptions for host device", v9, 2u);
    MEMORY[0x22AA5EED0](v9, -1, -1);
  }

  v10 = sub_224DAF128();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_224D8E744(0, 0, v5, &unk_224DB9C18, v11);

  sub_224BBB398();
  sub_224BBB7C4();
}

uint64_t sub_224BB9ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_224DA9908();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_224DAD9C8();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B60, &qword_224DBB460);
  v4[11] = v12;
  v13 = *(v12 - 8);
  v4[12] = v13;
  v14 = *(v13 + 64) + 15;
  v4[13] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B68, &unk_224DB9C40);
  v4[14] = v15;
  v16 = *(v15 - 8);
  v4[15] = v16;
  v17 = *(v16 + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224BB9D0C, 0, 0);
}

uint64_t sub_224BB9D0C()
{
  v2 = v0[12];
  v1 = v0[13];
  v16 = v0[11];
  v17 = v0[16];
  v3 = v0[2];
  v4 = *(v3 + 96);
  v5 = __swift_project_boxed_opaque_existential_1((v3 + 72), v4);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  (*(v6 + 16))(v8, v5, v4);
  v9 = off_283831820;
  type metadata accessor for RemoteActivitySubscriptionCache();
  v9();
  (*(v6 + 8))(v8, v4);
  sub_224DAF158();
  (*(v2 + 8))(v1, v16);

  v10 = *(MEMORY[0x277D85798] + 4);
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_224BB9EE4;
  v12 = v0[16];
  v13 = v0[14];
  v14 = v0[10];

  return MEMORY[0x2822003E8](v14, 0, 0, v13);
}

uint64_t sub_224BB9EE4()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224BB9FE0, 0, 0);
}

uint64_t sub_224BB9FE0()
{
  v43 = v0;
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[13];
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[5];
    (*(v0[15] + 8))(v0[16], v0[14]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v3 + 32))(v0[9], v1, v2);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v10 = v0[8];
    v11 = v0[9];
    v12 = v0[6];
    v13 = v0[7];
    v14 = sub_224DAB258();
    __swift_project_value_buffer(v14, qword_281365120);
    (*(v13 + 16))(v10, v11, v12);
    v15 = sub_224DAB228();
    v16 = sub_224DAF2A8();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];
    if (v17)
    {
      v21 = v0[4];
      v22 = v0[5];
      v23 = v0[3];
      v24 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = v41;
      *v24 = 136446210;
      v40 = v20;
      sub_224DAD988();
      sub_224BC03E8(&qword_281351A00, MEMORY[0x277CC95F0]);
      v25 = sub_224DAFD28();
      v39 = v16;
      v27 = v26;
      (*(v21 + 8))(v22, v23);
      v28 = *(v19 + 8);
      v28(v18, v40);
      v29 = sub_224A33F74(v25, v27, &v42);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_224A2F000, v15, v39, "Local subscription to remote activity has changed: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x22AA5EED0](v41, -1, -1);
      MEMORY[0x22AA5EED0](v24, -1, -1);
    }

    else
    {

      v28 = *(v19 + 8);
      v28(v18, v20);
    }

    v30 = v0[9];
    v31 = v0[6];
    v32 = v0[2];
    v33 = v0[7] + 8;
    sub_224BBA3A8(v30);
    v28(v30, v31);
    v34 = *(MEMORY[0x277D85798] + 4);
    v35 = swift_task_alloc();
    v0[17] = v35;
    *v35 = v0;
    v35[1] = sub_224BB9EE4;
    v36 = v0[16];
    v37 = v0[14];
    v38 = v0[10];

    return MEMORY[0x2822003E8](v38, 0, 0, v37);
  }
}

uint64_t sub_224BBA3A8(void (*a1)(char *, uint64_t *))
{
  v137 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v130 = *(v2 - 8);
  v131 = v2;
  v3 = *(v130 + 64);
  MEMORY[0x28223BE20](v2);
  v128 = &v120 - v4;
  v5 = sub_224DA9908();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v129 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v120 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v120 - v14;
  v16 = sub_224DAD9C8();
  v136 = *(v16 - 8);
  v17 = *(v136 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v125 = (&v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v132 = &v120 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v127 = &v120 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v126 = &v120 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v120 - v26;
  v133 = v1;
  sub_224BBF304(v1 + 72, v139);
  v29 = v140;
  v28 = v141;
  __swift_project_boxed_opaque_existential_1(v139, v140);
  sub_224DAD988();
  v30 = v28;
  v31 = v136;
  sub_224D2F410(v11, v29, v30, v15);
  v34 = *(v6 + 8);
  v32 = v6 + 8;
  v33 = v34;
  v134 = v11;
  v135 = v5;
  v34(v11, v5);
  if ((*(v31 + 48))(v15, 1, v16) == 1)
  {
    sub_224A3311C(v15, &qword_27D6F3BD8, &qword_224DB9C20);
    __swift_destroy_boxed_opaque_existential_1(v139);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v35 = sub_224DAB258();
    v36 = __swift_project_value_buffer(v35, qword_281365120);
    v37 = *(v31 + 16);
    v38 = v127;
    v128 = (v31 + 16);
    v126 = v37;
    (v37)(v127, v137, v16);
    v130 = v36;
    v39 = sub_224DAB228();
    v40 = sub_224DAF2A8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v122 = v41;
      v125 = swift_slowAlloc();
      v139[0] = v125;
      *v41 = 136446210;
      v42 = v134;
      LODWORD(v124) = v40;
      sub_224DAD988();
      sub_224BC03E8(&qword_281351A00, MEMORY[0x277CC95F0]);
      v43 = v135;
      v44 = sub_224DAFD28();
      v45 = v38;
      v47 = v46;
      v33(v42, v43);
      v131 = *(v31 + 8);
      v131(v45, v16);
      v48 = sub_224A33F74(v44, v47, v139);

      v49 = v122;
      *(v122 + 4) = v48;
      v50 = v49;
      _os_log_impl(&dword_224A2F000, v39, v124, "Replicating deletion of activity subscription with ID: %{public}s", v49, 0xCu);
      v51 = v125;
      __swift_destroy_boxed_opaque_existential_1(v125);
      MEMORY[0x22AA5EED0](v51, -1, -1);
      MEMORY[0x22AA5EED0](v50, -1, -1);
    }

    else
    {

      v131 = *(v31 + 8);
      v131(v38, v16);
    }

    v73 = v129;
    sub_224DAD988();
    v74 = *(v133 + 5);
    v75 = *(v133 + 8);
    v76 = __swift_project_boxed_opaque_existential_1(v133 + 2, v74);
    v140 = v74;
    v141 = v75;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v139);
    (*(*(v74 - 8) + 16))(boxed_opaque_existential_1, v76, v74);
    sub_224BBEDC0(v73, v139);
    v33(v73, v135);
    return __swift_destroy_boxed_opaque_existential_1(v139);
  }

  v137 = v33;
  (*(v31 + 32))(v27, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(v139);
  v52 = v16;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v53 = sub_224DAB258();
  v54 = __swift_project_value_buffer(v53, qword_281365120);
  v55 = *(v31 + 16);
  v56 = v126;
  v124 = v27;
  v129 = (v31 + 16);
  v127 = v55;
  (v55)(v126, v27, v16);
  v132 = v54;
  v57 = sub_224DAB228();
  v58 = sub_224DAF2A8();
  v59 = os_log_type_enabled(v57, v58);
  v123 = v32;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v121 = v60;
    v122 = swift_slowAlloc();
    v139[0] = v122;
    *v60 = 136446210;
    v61 = v134;
    sub_224DAD988();
    sub_224BC03E8(&qword_281351A00, MEMORY[0x277CC95F0]);
    v62 = v52;
    v63 = v31;
    v64 = v135;
    v65 = sub_224DAFD28();
    v66 = v56;
    v68 = v67;
    v137(v61, v64);
    v69 = *(v63 + 8);
    v52 = v62;
    v69(v66, v62);
    v70 = sub_224A33F74(v65, v68, v139);

    v71 = v121;
    *(v121 + 1) = v70;
    _os_log_impl(&dword_224A2F000, v57, v58, "Replicating activity subscription with ID: %{public}s", v71, 0xCu);
    v72 = v122;
    __swift_destroy_boxed_opaque_existential_1(v122);
    MEMORY[0x22AA5EED0](v72, -1, -1);
    MEMORY[0x22AA5EED0](v71, -1, -1);
  }

  else
  {

    v69 = *(v31 + 8);
    v69(v56, v52);
  }

  v78 = v128;
  v79 = v124;
  sub_224DAD958();
  v80 = v131;
  sub_224DAA1F8();
  (*(v130 + 8))(v78, v80);
  v81 = sub_224DAA048();

  if ((v81 & 1) == 0)
  {
    v88 = v133;
    v89 = *(v133 + 5);
    v90 = *(v133 + 8);
    v91 = __swift_project_boxed_opaque_existential_1(v133 + 2, v89);
    v140 = v89;
    v141 = v90;
    v92 = __swift_allocate_boxed_opaque_existential_1(v139);
    (*(*(v89 - 8) + 16))(v92, v91, v89);
    v93 = *(v88 + 5);
    v94 = *(v88 + 7);
    v95 = __swift_project_boxed_opaque_existential_1(v88 + 2, v93);
    v138[3] = v93;
    v138[4] = *(v94 + 16);
    v96 = __swift_allocate_boxed_opaque_existential_1(v138);
    (*(*(v93 - 8) + 16))(v96, v95, v93);
    sub_224BBF370(v79, v139, v138);
    v69(v79, v52);
    __swift_destroy_boxed_opaque_existential_1(v138);
    return __swift_destroy_boxed_opaque_existential_1(v139);
  }

  v82 = sub_224DAB228();
  v83 = sub_224DAF2A8();
  v84 = os_log_type_enabled(v82, v83);
  v85 = v135;
  if (v84)
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_224A2F000, v82, v83, "Can't send remotely-owned data to other devices", v86, 2u);
    MEMORY[0x22AA5EED0](v86, -1, -1);
  }

  type metadata accessor for RemoteActivitySubscriptionReplicator.RemoteActivitySubscriptionReplicatorError();
  sub_224BC03E8(&qword_27D6F4B40, type metadata accessor for RemoteActivitySubscriptionReplicator.RemoteActivitySubscriptionReplicatorError);
  v87 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v97 = v125;
  (v127)(v125, v79, v52);
  v98 = v87;
  v99 = sub_224DAB228();
  v100 = sub_224DAF288();

  if (os_log_type_enabled(v99, v100))
  {
    v102 = swift_slowAlloc();
    v133 = v69;
    v103 = v97;
    v104 = v102;
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v132 = v52;
    v135 = v106;
    v139[0] = v106;
    *v104 = 136446466;
    v107 = v85;
    v108 = v134;
    sub_224DAD988();
    sub_224BC03E8(&qword_281351A00, MEMORY[0x277CC95F0]);
    v109 = sub_224DAFD28();
    v111 = v110;
    v137(v108, v107);
    v112 = v103;
    v114 = v132;
    v113 = v133;
    v133(v112, v132);
    v115 = sub_224A33F74(v109, v111, v139);

    *(v104 + 4) = v115;
    *(v104 + 12) = 2114;
    v116 = v87;
    v117 = _swift_stdlib_bridgeErrorToNSError();
    *(v104 + 14) = v117;
    *v105 = v117;
    _os_log_impl(&dword_224A2F000, v99, v100, "Failed to replicate activity subscription with ID: %{public}s; error: %{public}@", v104, 0x16u);
    sub_224A3311C(v105, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v105, -1, -1);
    v118 = v135;
    __swift_destroy_boxed_opaque_existential_1(v135);
    MEMORY[0x22AA5EED0](v118, -1, -1);
    MEMORY[0x22AA5EED0](v104, -1, -1);

    return v113(v124, v114);
  }

  else
  {

    v69(v97, v52);
    return (v69)(v79, v52);
  }
}

uint64_t sub_224BBB398()
{
  v1 = v0;
  v2 = sub_224DA9AE8();
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DA9BF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  sub_224DA9BE8();
  v12 = sub_224DAD4C8();
  v37 = v5;
  v38 = v2;
  v13 = v36;
  (*(v7 + 8))(v10, v6);
  v14 = *(v12 + 16);
  if (v14)
  {
    v34 = v0;
    v39 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v14, 0);
    v15 = v38;
    v16 = v39;
    v17 = v13 + 16;
    v18 = *(v13 + 16);
    v19 = *(v13 + 80);
    v33 = v12;
    v20 = v12 + ((v19 + 32) & ~v19);
    v35 = *(v13 + 72);
    v36 = v18;
    v21 = (v13 + 8);
    do
    {
      v22 = v37;
      v23 = v17;
      (v36)(v37, v20, v15);
      v24 = sub_224DA9AD8();
      v15 = v38;
      v25 = v24;
      v27 = v26;
      (*v21)(v22, v38);
      v39 = v16;
      v29 = *(v16 + 16);
      v28 = *(v16 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_224A3DFD8((v28 > 1), v29 + 1, 1);
        v15 = v38;
        v16 = v39;
      }

      *(v16 + 16) = v29 + 1;
      v30 = v16 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      v20 += v35;
      --v14;
      v17 = v23;
    }

    while (v14);

    v1 = v34;
  }

  else
  {
  }

  v31 = *__swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  sub_224C9516C();
}

void sub_224BBB7C4()
{
  v1 = v0;
  v185 = sub_224DAB0B8();
  v218 = *(v185 - 8);
  isa = v218[8].isa;
  MEMORY[0x28223BE20](v185);
  v184 = &v172 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v183 = &v172 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v194 = &v172 - v9;
  v10 = sub_224DAAF28();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v200 = &v172 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v199 = &v172 - v14;
  v195 = sub_224DA9908();
  v204 = *(v195 - 8);
  v15 = *(v204 + 64);
  v16 = MEMORY[0x28223BE20](v195);
  v18 = &v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v172 - v20;
  MEMORY[0x28223BE20](v19);
  v202 = &v172 - v22;
  v216 = sub_224DAAF48();
  v23 = *(v216 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v216);
  v27 = &v172 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v172 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v213 = &v172 - v32;
  MEMORY[0x28223BE20](v31);
  v208 = &v172 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B58, &qword_224DB9C28);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v211 = &v172 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v212 = &v172 - v38;
  v39 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v40 = sub_224DAABB8();
  v41 = 0;
  v181 = v30;
  v176 = v27;
  v198 = 0;
  v188 = v21;
  v173 = v18;
  v50 = v40;
  v51 = __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  v52 = *v51;
  v53 = *(*v51 + 24);
  os_unfair_lock_lock(*(v53 + 16));
  swift_beginAccess();
  v54 = *(v53 + 16);
  v182 = *(v52 + 32);

  os_unfair_lock_unlock(v54);
  v56 = 0;
  v201 = v50;
  v57 = v50 + 64;
  v58 = 1 << *(v50 + 32);
  v59 = -1;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  v60 = v59 & *(v50 + 64);
  v193 = (v58 + 63) >> 6;
  v61 = (v23 + 16);
  v203 = (v204 + 16);
  v217 = (v23 + 32);
  v207 = (v204 + 32);
  v214 = 0x8000000224DC4450;
  v206 = v23;
  v209 = (v204 + 8);
  v210 = (v23 + 8);
  v197 = (v204 + 56);
  v192 = (v204 + 48);
  v180 = *MEMORY[0x277D46828];
  v179 = v218 + 13;
  v178 = v218 + 1;
  *&v55 = 136446210;
  v174 = v55;
  *(&v62 + 1) = 2;
  v177 = xmmword_224DB3100;
  *&v62 = 136446466;
  v175 = v62;
  v189 = v1;
  v63 = v195;
  v64 = v216;
  v66 = v212;
  v65 = v213;
  v67 = v208;
  v68 = v211;
  v205 = v57;
  v215 = v61;
  while (v60)
  {
    v69 = v56;
LABEL_21:
    v218 = ((v60 - 1) & v60);
    v72 = __clz(__rbit64(v60)) | (v69 << 6);
    v73 = v201;
    v74 = v206;
    (*(v206 + 16))(v67, *(v201 + 48) + *(v206 + 72) * v72, v64);
    v75 = *(v73 + 56);
    v76 = v64;
    v77 = v204;
    v78 = v202;
    (*(v204 + 16))(v202, v75 + *(v204 + 72) * v72, v63);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
    v80 = v67;
    v81 = *(v79 + 48);
    v82 = *(v74 + 32);
    v68 = v211;
    v82(v211, v80, v76);
    v83 = v78;
    v84 = v63;
    (*(v77 + 32))(v68 + v81, v83, v63);
    (*(*(v79 - 8) + 56))(v68, 0, 1, v79);
    v66 = v212;
    v65 = v213;
LABEL_22:
    sub_224A44E4C(v68, v66, &qword_27D6F4B58, &qword_224DB9C28);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
    if ((*(*(v85 - 8) + 48))(v66, 1, v85) == 1)
    {

      return;
    }

    v41 = *(v85 + 48);
    v64 = v216;
    (*v217)(v65, v66, v216);
    if (sub_224DAAF08() == 0xD000000000000016 && v214 == v86)
    {
    }

    else
    {
      v87 = sub_224DAFD88();

      if ((v87 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v88 = v199;
    sub_224DAAF38();
    v89 = v200;
    (*v197)(v200, 1, 1, v84);
    v90 = MEMORY[0x22AA59280](v88, v89);
    sub_224ACFD2C(v89);
    sub_224ACFD2C(v88);
    if ((v90 & 1) == 0)
    {
LABEL_9:
      (*v210)(v65, v64);
      v67 = v208;
      v63 = v84;
      goto LABEL_10;
    }

    sub_224DAAEF8();
    v91 = v194;
    sub_224DA9888();

    v92 = (*v192)(v91, 1, v84);
    v196 = v41;
    if (v92 == 1)
    {
      sub_224A3311C(v91, &unk_27D6F5630, &unk_224DB34C0);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v93 = sub_224DAB258();
      v94 = __swift_project_value_buffer(v93, qword_281365120);
      v95 = *v215;
      v96 = v181;
      (*v215)(v181, v65, v64);
      v187 = v94;
      v97 = sub_224DAB228();
      v98 = sub_224DAF288();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = v95;
        v100 = v96;
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v219[0] = v102;
        *v101 = v174;
        sub_224BC03E8(&qword_281351720, MEMORY[0x277D46790]);
        v103 = sub_224DAFD28();
        v105 = v104;
        v106 = v100;
        v95 = v99;
        v65 = v213;
        v191 = *v210;
        v191(v106, v64);
        v107 = sub_224A33F74(v103, v105, v219);

        *(v101 + 4) = v107;
        _os_log_impl(&dword_224A2F000, v97, v98, "Deleting replicator record with malformed ID: %{public}s", v101, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v102);
        v108 = v102;
        v109 = v189;
        MEMORY[0x22AA5EED0](v108, -1, -1);
        MEMORY[0x22AA5EED0](v101, -1, -1);

        v110 = v206;
      }

      else
      {

        v191 = *v210;
        v191(v96, v64);
        v110 = v206;
        v109 = v189;
      }

      v186 = v95;
      v148 = v109[5];
      v190 = v109[8];
      __swift_project_boxed_opaque_existential_1(v109 + 2, v148);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
      v149 = *(v110 + 72);
      v150 = (*(v110 + 80) + 32) & ~*(v110 + 80);
      v151 = swift_allocObject();
      *(v151 + 16) = v177;
      v95((v151 + v150), v65, v64);
      v152 = v184;
      v153 = v185;
      (v179->isa)(v184, v180, v185);
      v154 = v198;
      sub_224DAABF8();
      if (v154)
      {
        (v178->isa)(v152, v153);

        v155 = v176;
        v64 = v216;
        v186(v176, v65, v216);
        v156 = v154;
        v157 = sub_224DAB228();
        v158 = sub_224DAF288();

        if (os_log_type_enabled(v157, v158))
        {
          v159 = swift_slowAlloc();
          v190 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          v219[0] = v198;
          *v159 = v175;
          sub_224BC03E8(&qword_281351720, MEMORY[0x277D46790]);
          v160 = sub_224DAFD28();
          v161 = v155;
          v163 = v162;
          v164 = v191;
          v191(v161, v64);
          v165 = sub_224A33F74(v160, v163, v219);

          *(v159 + 4) = v165;
          *(v159 + 12) = 2114;
          v166 = v154;
          v167 = _swift_stdlib_bridgeErrorToNSError();
          *(v159 + 14) = v167;
          v168 = v190;
          *v190 = v167;
          _os_log_impl(&dword_224A2F000, v157, v158, "Failed to delete replicator record for unexpected record %{public}s: %{public}@", v159, 0x16u);
          sub_224A3311C(v168, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v168, -1, -1);
          v169 = v198;
          __swift_destroy_boxed_opaque_existential_1(v198);
          MEMORY[0x22AA5EED0](v169, -1, -1);
          MEMORY[0x22AA5EED0](v159, -1, -1);
        }

        else
        {

          v164 = v191;
          v191(v155, v64);
        }

        v170 = v213;
        (v164)(v213, v64);
        v198 = 0;
        v63 = v195;
        v65 = v170;
      }

      else
      {
        v198 = 0;

        (v178->isa)(v152, v153);
        v64 = v216;
        v191(v65, v216);
        v63 = v195;
      }

      v67 = v208;
      v68 = v211;
      v66 = v212;
    }

    else
    {
      v112 = v188;
      (*v207)(v188, v91, v84);
      v113 = v182;
      if (*(v182 + 16) && (v114 = sub_224A438E8(v112), (v115 & 1) != 0))
      {
        v116 = v114;
        v117 = *(v113 + 56);
        v118 = sub_224DAD9C8();
        v119 = *(v118 - 8);
        v120 = v119;
        v121 = v117 + *(v119 + 72) * v116;
        v122 = v183;
        (*(v119 + 16))(v183, v121, v118);
        v63 = v195;
        (*v209)(v112, v195);
        v64 = v216;
        (*v210)(v65, v216);
        (*(v120 + 56))(v122, 0, 1, v118);
        v66 = v212;
        sub_224A3311C(v122, &qword_27D6F3BD8, &qword_224DB9C20);
      }

      else
      {
        v123 = sub_224DAD9C8();
        v124 = v183;
        (*(*(v123 - 8) + 56))(v183, 1, 1, v123);
        sub_224A3311C(v124, &qword_27D6F3BD8, &qword_224DB9C20);
        v125 = v189[5];
        v126 = v189[8];
        v127 = __swift_project_boxed_opaque_existential_1(v189 + 2, v125);
        v219[3] = v125;
        v219[4] = v126;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v219);
        (*(*(v125 - 8) + 16))(boxed_opaque_existential_1, v127, v125);
        v129 = v198;
        sub_224BBEDC0(v112, v219);
        v198 = v129;
        if (v129)
        {
          __swift_destroy_boxed_opaque_existential_1(v219);
          v63 = v195;
          v130 = v173;
          if (qword_2813516C8 != -1)
          {
            swift_once();
          }

          v131 = sub_224DAB258();
          __swift_project_value_buffer(v131, qword_281365120);
          v132 = v188;
          (*v203)(v130, v188, v63);
          v133 = v198;
          v134 = v198;
          v135 = sub_224DAB228();
          v136 = sub_224DAF288();

          if (os_log_type_enabled(v135, v136))
          {
            v137 = v130;
            v138 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            v191 = swift_slowAlloc();
            v219[0] = v191;
            *v138 = v175;
            sub_224BC03E8(&qword_281351A00, MEMORY[0x277CC95F0]);
            LODWORD(v190) = v136;
            v140 = sub_224DAFD28();
            v142 = v141;
            v143 = *v209;
            (*v209)(v137, v195);
            v144 = sub_224A33F74(v140, v142, v219);
            v66 = v212;

            *(v138 + 4) = v144;
            *(v138 + 12) = 2114;
            v145 = v133;
            v146 = _swift_stdlib_bridgeErrorToNSError();
            *(v138 + 14) = v146;
            *v139 = v146;
            _os_log_impl(&dword_224A2F000, v135, v190, "Failed to delete replicator record for subscription %{public}s: %{public}@", v138, 0x16u);
            sub_224A3311C(v139, &unk_27D6F69F0, &unk_224DB3900);
            v63 = v195;
            MEMORY[0x22AA5EED0](v139, -1, -1);
            v147 = v191;
            __swift_destroy_boxed_opaque_existential_1(v191);
            MEMORY[0x22AA5EED0](v147, -1, -1);
            MEMORY[0x22AA5EED0](v138, -1, -1);

            v143(v188, v63);
          }

          else
          {

            v171 = *v209;
            (*v209)(v130, v63);
            v171(v132, v63);
          }

          v65 = v213;
          v64 = v216;
          (*v210)(v213, v216);
          v198 = 0;
          v67 = v208;
          v68 = v211;
          goto LABEL_54;
        }

        v63 = v195;
        (*v209)(v112, v195);
        v64 = v216;
        (*v210)(v65, v216);
        __swift_destroy_boxed_opaque_existential_1(v219);
      }

      v67 = v208;
    }

LABEL_54:
    v41 = v196;
LABEL_10:
    (*v209)(v41 + v66, v63);
    v57 = v205;
    v60 = v218;
  }

  if (v193 <= v56 + 1)
  {
    v70 = v56 + 1;
  }

  else
  {
    v70 = v193;
  }

  v71 = v70 - 1;
  while (1)
  {
    v69 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v69 >= v193)
    {
      v84 = v63;
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
      (*(*(v111 - 8) + 56))(v68, 1, 1, v111);
      v218 = 0;
      v56 = v71;
      goto LABEL_22;
    }

    v60 = *(v57 + 8 * v69);
    ++v56;
    if (v60)
    {
      v56 = v69;
      goto LABEL_21;
    }
  }

  __break(1u);
  swift_once();
  v42 = sub_224DAB258();
  __swift_project_value_buffer(v42, qword_281365120);
  v43 = v41;
  v218 = sub_224DAB228();
  v44 = sub_224DAF288();

  if (os_log_type_enabled(v218, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138543362;
    v47 = v41;
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 4) = v48;
    *v46 = v48;
    _os_log_impl(&dword_224A2F000, v218, v44, "Failed to fetch remote activity subscription records from replicator: %{public}@", v45, 0xCu);
    sub_224A3311C(v46, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v46, -1, -1);
    MEMORY[0x22AA5EED0](v45, -1, -1);

    v49 = v218;
  }

  else
  {

    v49 = v41;
  }
}

uint64_t sub_224BBCEA4()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v7 = sub_224DAB258();
  __swift_project_value_buffer(v7, qword_281365120);
  v8 = sub_224DAB228();
  v9 = sub_224DAF2A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_224A2F000, v8, v9, "Observing changes made to activity subcriptions for source device", v10, 2u);
    MEMORY[0x22AA5EED0](v10, -1, -1);
  }

  v11 = sub_224DAF128();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;
  v12[5] = v2;

  sub_224D8E744(0, 0, v6, &unk_224DB9BD8, v12);
}

uint64_t sub_224BBD094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_224DAAB18();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = sub_224DA9908();
  v4[9] = v9;
  v10 = *(v9 - 8);
  v4[10] = v10;
  v11 = *(v10 + 64) + 15;
  v4[11] = swift_task_alloc();
  v12 = sub_224DAAF48();
  v4[12] = v12;
  v13 = *(v12 - 8);
  v4[13] = v13;
  v14 = *(v13 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v15 = sub_224DAAA98();
  v4[17] = v15;
  v16 = *(v15 - 8);
  v4[18] = v16;
  v17 = *(v16 + 64) + 15;
  v4[19] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4220, &unk_224DB60D0);
  v4[20] = v18;
  v19 = *(v18 - 8);
  v4[21] = v19;
  v20 = *(v19 + 64) + 15;
  v4[22] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4228, &unk_224DB9BE0);
  v4[23] = v21;
  v22 = *(v21 - 8);
  v4[24] = v22;
  v23 = *(v22 + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224BBD394, 0, 0);
}

uint64_t sub_224BBD394()
{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[3];
  v6 = v5[8];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  sub_224DAAB98();
  sub_224DAF158();
  (*(v3 + 8))(v2, v4);
  v0[26] = 0;
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[27] = v8;
  *v8 = v0;
  v8[1] = sub_224BBD4D0;
  v9 = v0[25];
  v10 = v0[23];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v10);
}

uint64_t sub_224BBD4D0()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224BBD5CC, 0, 0);
}

uint64_t sub_224BBD5CC()
{
  v94 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = *(v1 + 16);
    v77 = v0[2];
    if (v2)
    {
      v3 = v0[18];
      v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v5 = *(v3 + 72);
      v6 = v0[26];
      v87 = v5;
      do
      {
        v7 = v0[17];
        sub_224B5533C(v4, v0[19]);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v9 = v0[19];
        if (EnumCaseMultiPayload == 1)
        {
          v10 = v0[9];
          v11 = v0[10];
          v12 = v0[8];
          (*(v0[13] + 32))(v0[16], v9, v0[12]);
          sub_224DAAEF8();
          sub_224DA9888();

          v13 = (*(v11 + 48))(v12, 1, v10);
          v14 = v0[8];
          if (v13 == 1)
          {
            (*(v0[13] + 8))(v0[16], v0[12]);
            sub_224A3311C(v14, &unk_27D6F5630, &unk_224DB34C0);
          }

          else
          {
            v90 = v6;
            (*(v0[10] + 32))(v0[11], v14, v0[9]);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v15 = v0[15];
            v16 = v0[16];
            v18 = v0[12];
            v17 = v0[13];
            v19 = sub_224DAB258();
            __swift_project_value_buffer(v19, qword_281365120);
            (*(v17 + 16))(v15, v16, v18);
            v20 = sub_224DAB228();
            v21 = sub_224DAF2A8();
            v22 = os_log_type_enabled(v20, v21);
            v23 = v0[15];
            v25 = v0[12];
            v24 = v0[13];
            if (v22)
            {
              v26 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              v93[0] = v85;
              *v26 = 136446210;
              sub_224BC03E8(&qword_281351720, MEMORY[0x277D46790]);
              v83 = v21;
              v27 = sub_224DAFD28();
              v29 = v28;
              v88 = *(v24 + 8);
              v88(v23, v25);
              v30 = sub_224A33F74(v27, v29, v93);

              *(v26 + 4) = v30;
              _os_log_impl(&dword_224A2F000, v20, v83, "Deleting activity subscription for record ID %{public}s", v26, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v85);
              MEMORY[0x22AA5EED0](v85, -1, -1);
              MEMORY[0x22AA5EED0](v26, -1, -1);
            }

            else
            {

              v88 = *(v24 + 8);
              v88(v23, v25);
            }

            v56 = v0[16];
            v57 = v0[12];
            v59 = v0[10];
            v58 = v0[11];
            v60 = v0[9];
            v61 = v0[13] + 8;
            v62 = *__swift_project_boxed_opaque_existential_1((v0[3] + 72), *(v0[3] + 96));
            sub_224C96790(v58);
            (*(v59 + 8))(v58, v60);
            v88(v56, v57);
            v5 = v87;
            v6 = v90;
          }
        }

        else
        {
          v31 = v0[7];
          v32 = v0[3];
          (*(v0[5] + 32))(v31, v9, v0[4]);
          sub_224BBDDFC(v31);
          if (v6)
          {
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v33 = v0[6];
            v34 = v0[7];
            v35 = v0[4];
            v36 = v0[5];
            v37 = sub_224DAB258();
            __swift_project_value_buffer(v37, qword_281365120);
            (*(v36 + 16))(v33, v34, v35);
            v38 = v6;
            v39 = sub_224DAB228();
            v40 = sub_224DAF288();

            if (os_log_type_enabled(v39, v40))
            {
              v41 = v0[14];
              v81 = v0[13];
              v42 = v0[12];
              v86 = v0[7];
              v78 = v0[6];
              v89 = v0[4];
              v91 = v0[5];
              v43 = swift_slowAlloc();
              v80 = swift_slowAlloc();
              v84 = swift_slowAlloc();
              v93[0] = v84;
              *v43 = 136446466;
              v79 = v40;
              sub_224DAAAF8();
              sub_224BC03E8(&qword_281351720, MEMORY[0x277D46790]);
              v44 = sub_224DAFD28();
              v46 = v45;
              v47 = v41;
              v5 = v87;
              (*(v81 + 8))(v47, v42);
              v82 = *(v91 + 8);
              v82(v78, v89);
              v48 = sub_224A33F74(v44, v46, v93);

              *(v43 + 4) = v48;
              *(v43 + 12) = 2114;
              v49 = v6;
              v50 = _swift_stdlib_bridgeErrorToNSError();
              *(v43 + 14) = v50;
              *v80 = v50;
              _os_log_impl(&dword_224A2F000, v39, v79, "Failed to handle subscription update for %{public}s: %{public}@", v43, 0x16u);
              sub_224A3311C(v80, &unk_27D6F69F0, &unk_224DB3900);
              MEMORY[0x22AA5EED0](v80, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v84);
              MEMORY[0x22AA5EED0](v84, -1, -1);
              MEMORY[0x22AA5EED0](v43, -1, -1);

              v82(v86, v89);
            }

            else
            {
              v51 = v0[6];
              v52 = v0[7];
              v53 = v0[4];
              v54 = v0[5];

              v55 = *(v54 + 8);
              v55(v51, v53);
              v55(v52, v53);
            }

            v6 = 0;
          }

          else
          {
            (*(v0[5] + 8))(v0[7], v0[4]);
          }
        }

        v4 += v5;
        --v2;
      }

      while (v2);
    }

    else
    {
      v6 = v0[26];
    }

    v0[26] = v6;
    v73 = *(MEMORY[0x277D85798] + 4);
    v74 = swift_task_alloc();
    v0[27] = v74;
    *v74 = v0;
    v74[1] = sub_224BBD4D0;
    v75 = v0[25];
    v76 = v0[23];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v76);
  }

  else
  {
    v63 = v0[22];
    v64 = v0[19];
    v66 = v0[15];
    v65 = v0[16];
    v67 = v0[14];
    v68 = v0[11];
    v70 = v0[7];
    v69 = v0[8];
    v92 = v0[6];
    (*(v0[24] + 8))(v0[25], v0[23]);

    v71 = v0[1];

    return v71();
  }
}

uint64_t sub_224BBDDFC(uint64_t *a1)
{
  v116 = sub_224DAAFC8();
  v108 = *(v116 - 8);
  v2 = *(v108 + 64);
  MEMORY[0x28223BE20](v116);
  v107 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_224DAD9C8();
  v104 = *(v106 - 8);
  v4 = *(v104 + 64);
  v5 = MEMORY[0x28223BE20](v106);
  v105 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v103 = &v101 - v7;
  v8 = sub_224DAAB18();
  v114 = *(v8 - 8);
  v115 = v8;
  v9 = *(v114 + 64);
  MEMORY[0x28223BE20](v8);
  v113 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B30, &unk_224DB9BF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v118 = &v101 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v121 = (&v101 - v16);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B38, &unk_224DB9C00);
  v117 = *(v120 - 8);
  v17 = *(v117 + 64);
  MEMORY[0x28223BE20](v120);
  v119 = &v101 - v18;
  v19 = sub_224DAAF28();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v101 - v28;
  v30 = sub_224DAAF48();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v111 = &v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v101 - v35;
  v37 = sub_224DA9908();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v124 = &v101 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a1;
  sub_224DAAAF8();
  sub_224DAAF38();
  v41 = *(v31 + 8);
  v112 = v30;
  v109 = v41;
  v110 = v31 + 8;
  v41(v36, v30);
  v42 = *(v38 + 48);
  v43 = 1;
  if (v42(v22, 1, v37) != 1)
  {
    (*(v38 + 32))(v27, v22, v37);
    v43 = 0;
  }

  (*(v38 + 56))(v27, v43, 1, v37);
  sub_224A44E4C(v27, v29, &unk_27D6F5630, &unk_224DB34C0);
  if (v42(v29, 1, v37) == 1)
  {
    return sub_224A3311C(v29, &unk_27D6F5630, &unk_224DB34C0);
  }

  (*(v38 + 32))(v124, v29, v37);
  v45 = v123[8];
  __swift_project_boxed_opaque_existential_1(v123 + 2, v123[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
  v46 = *(v31 + 72);
  v47 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  *(swift_allocObject() + 16) = xmmword_224DB3100;
  sub_224DAAAF8();
  v48 = sub_224DA9688();
  v49 = v121;
  (*(*(v48 - 8) + 56))(v121, 1, 1, v48);
  v50 = v125;
  v51 = sub_224DAAC08();
  if (v50)
  {

    sub_224A3311C(v49, &unk_27D6F4680, &unk_224DB4610);
    return (*(v38 + 8))(v124, v37);
  }

  v101 = v38;
  v102 = v37;
  v52 = v51;
  sub_224A3311C(v49, &unk_27D6F4680, &unk_224DB4610);

  v53 = v118;
  sub_224D5D3A0(v52, v118);

  if ((*(v117 + 48))(v53, 1, v120) == 1)
  {
    (*(v101 + 8))(v124, v102);
    return sub_224A3311C(v53, &qword_27D6F4B30, &unk_224DB9BF0);
  }

  v125 = 0;
  sub_224A44E4C(v53, v119, &qword_27D6F4B38, &unk_224DB9C00);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v54 = sub_224DAB258();
  __swift_project_value_buffer(v54, qword_281365120);
  v55 = v113;
  v56 = v114;
  v57 = v115;
  (*(v114 + 16))(v113, v122, v115);
  v58 = sub_224DAB228();
  v59 = sub_224DAF2A8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v121 = v60;
    v122 = swift_slowAlloc();
    v126 = v122;
    *v60 = 136446210;
    v61 = v111;
    sub_224DAAAF8();
    sub_224BC03E8(&qword_281351720, MEMORY[0x277D46790]);
    v62 = v112;
    v63 = sub_224DAFD28();
    v65 = v64;
    v109(v61, v62);
    (*(v56 + 8))(v55, v57);
    v66 = sub_224A33F74(v63, v65, &v126);

    v67 = v121;
    *(v121 + 1) = v66;
    v68 = v67;
    _os_log_impl(&dword_224A2F000, v58, v59, "Updating activity subscription for record ID %{public}s", v67, 0xCu);
    v69 = v122;
    __swift_destroy_boxed_opaque_existential_1(v122);
    MEMORY[0x22AA5EED0](v69, -1, -1);
    MEMORY[0x22AA5EED0](v68, -1, -1);
  }

  else
  {

    (*(v56 + 8))(v55, v57);
  }

  v70 = v119;
  v71 = v116;
  v72 = *(v120 + 48);
  v73 = v123[5];
  v74 = v123[7];
  v75 = __swift_project_boxed_opaque_existential_1(v123 + 2, v73);
  v122 = &v101;
  v76 = *(v73 - 8);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  v79 = &v101 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v76 + 16))(v79);
  if (qword_27D6F2CB0 != -1)
  {
    swift_once();
  }

  v80 = sub_224DAAB88();
  __swift_project_value_buffer(v80, qword_27D6F4B18);
  v81 = sub_224DAAEB8();
  if (v82)
  {
    goto LABEL_22;
  }

  v83 = v81;
  v84 = sub_224DAAFD8();
  if (!*(v84 + 16) || (v85 = sub_224B31510(v83), (v86 & 1) == 0))
  {

LABEL_22:
    type metadata accessor for RemoteActivitySubscriptionReplicator.RemoteActivitySubscriptionReplicatorError();
    sub_224BC03E8(&qword_27D6F4B40, type metadata accessor for RemoteActivitySubscriptionReplicator.RemoteActivitySubscriptionReplicatorError);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_23;
  }

  (*(v108 + 16))(v107, *(v84 + 56) + *(v108 + 72) * v85, v71);

  v87 = sub_224DAAFA8();
  v89 = v88;
  v90 = *(v74 + 8);
  v91 = MEMORY[0x277CF9D80];
  sub_224BC03E8(&qword_27D6F4B48, MEMORY[0x277CF9D80]);
  sub_224BC03E8(&qword_27D6F4B50, v91);
  v92 = v105;
  v120 = v87;
  v121 = v89;
  v93 = v106;
  v94 = v125;
  sub_224DAB098();
  if (v94)
  {
    sub_224A78024(v120, v121);
    (*(v108 + 8))(v107, v116);
    v70 = v119;
LABEL_23:
    v95 = v124;
    (*(v76 + 8))(v79, v73);
    sub_224A3311C(v70, &qword_27D6F4B38, &unk_224DB9C00);
    return (*(v101 + 8))(v95, v102);
  }

  sub_224A78024(v120, v121);
  v96 = v103;
  v97 = v124;
  v125 = 0;
  sub_224D2EE84(v103);
  v98 = *(v104 + 8);
  v98(v92, v93);
  v99 = v98;
  (*(v108 + 8))(v107, v116);
  (*(v76 + 8))(v79, v73);
  v100 = *__swift_project_boxed_opaque_existential_1(v123 + 9, v123[12]);
  sub_224C942D8(v96);
  v99(v96, v93);
  sub_224A3311C(v119, &qword_27D6F4B38, &unk_224DB9C00);
  return (*(v101 + 8))(v97, v102);
}

uint64_t sub_224BBEC00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_224ACED1C;

  return sub_224BBD094(a1, v4, v5, v7);
}

uint64_t type metadata accessor for RemoteActivitySubscriptionReplicator.RemoteActivitySubscriptionReplicatorError()
{
  result = qword_27D6F4B78;
  if (!qword_27D6F4B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224BBED0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224BB9ADC(a1, v4, v5, v6);
}

uint64_t sub_224BBEDC0(uint64_t a1, void *a2)
{
  v40 = a2;
  v46 = sub_224DAB0B8();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v46);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAAF28();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAAF48();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DA9908();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v41 = v12;
  v45 = v3;
  v18 = sub_224DAB258();
  __swift_project_value_buffer(v18, qword_281365120);
  (*(v14 + 16))(v17, a1, v13);
  v19 = sub_224DAB228();
  v20 = sub_224DAF2A8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v47 = v23;
    *v22 = 136446210;
    sub_224BC03E8(&qword_281351A00, MEMORY[0x277CC95F0]);
    v24 = sub_224DAFD28();
    v26 = v25;
    (*(v14 + 8))(v17, v13);
    v27 = sub_224A33F74(v24, v26, &v47);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_224A2F000, v19, v20, "Deleting subscription to remote activity: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x22AA5EED0](v23, -1, -1);
    MEMORY[0x22AA5EED0](v22, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  sub_224DA9898();
  (*(v14 + 56))(v39, 1, 1, v13);
  v28 = v41;
  sub_224DAAEE8();
  v29 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
  v30 = v42;
  v31 = *(v42 + 72);
  v32 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_224DB3100;
  v34 = v43;
  (*(v30 + 16))(v33 + v32, v28, v43);
  v36 = v44;
  v35 = v45;
  (*(v45 + 104))(v44, *MEMORY[0x277D46828], v46);
  sub_224DAABF8();

  (*(v35 + 8))(v36, v46);
  return (*(v30 + 8))(v28, v34);
}

uint64_t sub_224BBF304(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_224BBF370(uint64_t a1, void *a2, void *a3)
{
  v142 = a3;
  v126 = a2;
  v4 = sub_224DAB0B8();
  v131 = *(v4 - 8);
  v5 = *(v131 + 64);
  MEMORY[0x28223BE20](v4);
  v129 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_224DAAC58();
  v130 = *(v135 - 8);
  v7 = *(v130 + 64);
  MEMORY[0x28223BE20](v135);
  v128 = (&v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = sub_224DAD9C8();
  v9 = *(v146 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v146);
  v125 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v123 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v124 = &v117 - v16;
  v134 = sub_224DAB018();
  v127 = *(v134 - 8);
  v17 = *(v127 + 64);
  MEMORY[0x28223BE20](v134);
  v136 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  *&v137 = &v117 - v21;
  v22 = sub_224DAAFC8();
  v139 = *(v22 - 8);
  v140 = v22;
  v23 = *(v139 + 64);
  MEMORY[0x28223BE20](v22);
  v138 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_224DAAF28();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_224DAAF48();
  v144 = *(v29 - 8);
  v145 = v29;
  v30 = *(v144 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v133 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v147 = &v117 - v33;
  v34 = sub_224DAD918();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v117 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_224DA9908();
  v39 = *(v38 - 1);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v132 = &v117 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v141 = &v117 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v117 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v117 - v48;
  v148 = a1;
  sub_224DAD968();
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v50 = sub_224DAB258();
    __swift_project_value_buffer(v50, qword_281365120);
    v51 = sub_224DAB228();
    v52 = sub_224DAF2A8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_224A2F000, v51, v52, "Can't create a remote subscription to a locally-owned activity", v53, 2u);
      MEMORY[0x22AA5EED0](v53, -1, -1);
    }

    type metadata accessor for RemoteActivitySubscriptionReplicator.RemoteActivitySubscriptionReplicatorError();
    sub_224BC03E8(&qword_27D6F4B40, type metadata accessor for RemoteActivitySubscriptionReplicator.RemoteActivitySubscriptionReplicatorError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    v119 = v9;
    v120 = v4;
    (*(v39 + 32))(v49, v37, v38);
    sub_224DAD988();
    sub_224DA9898();
    v122 = *(v39 + 8);
    v122(v47, v38);
    v121 = v39;
    (*(v39 + 56))(v28, 1, 1, v38);
    sub_224DAAEE8();
    v55 = v142[4];
    v142 = __swift_project_boxed_opaque_existential_1(v142, v142[3]);
    sub_224DAAF08();
    v56 = MEMORY[0x277CF9D80];
    sub_224BC03E8(&qword_27D6F4B48, MEMORY[0x277CF9D80]);
    sub_224BC03E8(&qword_27D6F4B50, v56);
    v57 = v143;
    v58 = sub_224DAAB38();
    if (v57)
    {

      (*(v144 + 8))(v147, v145);
      return (v122)(v49, v38);
    }

    else
    {
      v61 = v60;
      v117 = v39 + 8;
      v118 = v49;
      v142 = v38;
      v62 = v58;
      v63 = v59;

      v64 = sub_224DA9688();
      (*(*(v64 - 8) + 56))(v137, 1, 1, v64);
      sub_224A77FD0(v62, v63);
      v65 = v138;
      sub_224DAAFB8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
      v66 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
      v67 = *(*v66 + 72);
      v68 = (*(*v66 + 80) + 32) & ~*(*v66 + 80);
      v69 = swift_allocObject();
      v137 = xmmword_224DB3100;
      *(v69 + 16) = xmmword_224DB3100;
      v143 = 0;
      v70 = (v69 + v68);
      v71 = v66[14];
      *v70 = v61;
      v73 = v139;
      v72 = v140;
      (*(v139 + 16))(&v70[v71], v65, v140);
      sub_224DA06F0(v69);
      swift_setDeallocating();
      sub_224A3311C(v70, &unk_27D6F6FE0, &unk_224DB9C50);
      v74 = v146;
      swift_deallocClassInstance();
      sub_224A78024(v62, v63);
      (*(v73 + 8))(v65, v72);
      v75 = v141;
      v76 = v143;
      sub_224DAAE48();
      if (v76)
      {

        (*(v144 + 8))(v147, v145);
        return (v122)(v118, v142);
      }

      else
      {
        v143 = 0;
        v77 = v74;
        (*(v144 + 16))(v133, v147, v145);
        v140 = *(v121 + 16);
        v140(v132, v75, v142);
        v78 = v123;
        sub_224DAD948();
        v79 = sub_224DA9878();
        v80 = *(v79 - 8);
        if ((*(v80 + 48))(v78, 1, v79) == 1)
        {
          sub_224A3311C(v78, &qword_27D6F32B0, &qword_224DB3EA0);
          v81 = 1;
          v82 = v136;
          v83 = v77;
          v84 = v119;
          v85 = v124;
        }

        else
        {
          v86 = v124;
          sub_224DA9768();
          v85 = v86;
          (*(v80 + 8))(v78, v79);
          v81 = 0;
          v82 = v136;
          v83 = v77;
          v84 = v119;
        }

        (*(v80 + 56))(v85, v81, 1, v79);
        sub_224DAAF68();
        v87 = v125;
        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        v88 = sub_224DAB258();
        __swift_project_value_buffer(v88, qword_281365120);
        (*(v84 + 16))(v87, v148, v83);
        v89 = sub_224DAB228();
        v90 = v84;
        v91 = sub_224DAF2A8();
        if (os_log_type_enabled(v89, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v149 = v93;
          *v92 = 136446210;
          sub_224BC03E8(&qword_27D6F4B70, MEMORY[0x277CF9D80]);
          v94 = sub_224DAFD28();
          v95 = v87;
          v97 = v96;
          (*(v90 + 8))(v95, v83);
          v98 = sub_224A33F74(v94, v97, &v149);

          *(v92 + 4) = v98;
          _os_log_impl(&dword_224A2F000, v89, v91, "Replicating subscription to remote activity: %{public}s", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v93);
          v99 = v93;
          v82 = v136;
          MEMORY[0x22AA5EED0](v99, -1, -1);
          MEMORY[0x22AA5EED0](v92, -1, -1);
        }

        else
        {

          (*(v90 + 8))(v87, v83);
        }

        v100 = v134;
        v101 = v127;
        v102 = v126[4];
        v146 = v126[3];
        v148 = v102;
        __swift_project_boxed_opaque_existential_1(v126, v146);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3550, &qword_224DB3B00);
        v103 = *(v101 + 72);
        v104 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v105 = swift_allocObject();
        *(v105 + 16) = v137;
        (*(v101 + 16))(v105 + v104, v82, v100);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC0, &unk_224DB9C60);
        v106 = *(v121 + 72);
        v107 = (*(v121 + 80) + 32) & ~*(v121 + 80);
        v108 = swift_allocObject();
        *(v108 + 16) = v137;
        v109 = v142;
        v140(v108 + v107, v118, v142);
        v110 = v128;
        *v128 = v108;
        v111 = v130;
        (*(v130 + 104))(v110, *MEMORY[0x277D46558], v135);
        v112 = v131;
        v113 = v129;
        v114 = v120;
        (*(v131 + 104))(v129, *MEMORY[0x277D46828], v120);
        v115 = v143;
        sub_224DAABD8();
        v143 = v115;

        (*(v112 + 8))(v113, v114);
        (*(v111 + 8))(v110, v135);
        (*(v101 + 8))(v136, v134);
        v116 = v122;
        v122(v141, v109);
        (*(v144 + 8))(v147, v145);
        return v116(v118, v109);
      }
    }
  }
}

uint64_t sub_224BC03E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224BC0430()
{
  result = sub_224DAAF48();
  if (v1 <= 0x3F)
  {
    result = sub_224DAAC58();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_224BC05D8()
{
  v0 = type metadata accessor for BootSessionChecker();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC10ChronoCore18BootSessionChecker__currentBootSessionUUID;
  v5 = sub_224DA9908();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = sub_224DAB4D8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  v9 = sub_224DAB4C8();

  v10 = sub_224BC1A94(v3, v9);

  qword_2813651B8 = v10;
  return result;
}

uint64_t sub_224BC06B0()
{
  v1 = v0;
  v2 = sub_224DAF3C8();
  v18 = *(v2 - 8);
  v19 = v2;
  v3 = *(v18 + 64);
  MEMORY[0x28223BE20](v2);
  v17 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DAF318();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_224DAB848();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  swift_beginAccess();
  sub_224A3796C(v0 + 32, &v20, &qword_27D6F4B88, &qword_224DB9E88);
  if (v21)
  {
    sub_224A36F98(&v20, v22);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = v23;
    v11 = v24;
    __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    (*(v11 + 16))(sub_224BC1D48, v9, v10, v11);
    sub_224AC319C();
    sub_224DAB818();
    *&v20 = MEMORY[0x277D84F90];
    sub_224BC1D50(&qword_281350A88, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
    sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
    sub_224DAF788();
    (*(v18 + 104))(v17, *MEMORY[0x277D85268], v19);
    v12 = sub_224DAF418();
    v13 = *(v1 + 24);
    *(v1 + 24) = v12;
    v14 = v12;

    v15 = *__swift_project_boxed_opaque_existential_1(v22, v23);
    sub_224DAB4A8();

    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    result = sub_224A3311C(&v20, &qword_27D6F4B88, &qword_224DB9E88);
    __break(1u);
  }

  return result;
}

uint64_t sub_224BC0A20()
{
  v0 = sub_224DAB4F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224DAB508();
    sub_224BC0C38(v4);

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

void sub_224BC0B2C()
{
  v1 = v0;
  swift_beginAccess();
  sub_224A3796C(v0 + 32, &v5, &qword_27D6F4B88, &qword_224DB9E88);
  if (*(&v6 + 1))
  {
    sub_224A3317C(&v5, v4);
    sub_224A3311C(&v5, &qword_27D6F4B88, &qword_224DB9E88);
    v2 = *__swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_224DAB4B8();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_224A3311C(&v5, &qword_27D6F4B88, &qword_224DB9E88);
  }

  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  swift_beginAccess();
  sub_224A838C0(&v5, v1 + 32, &qword_27D6F4B88, &qword_224DB9E88);
  swift_endAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
}

uint64_t sub_224BC0C38(uint64_t a1)
{
  v20[1] = a1;
  v2 = sub_224DAB4F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB8C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_224A3796C(v1 + 32, v21, &qword_27D6F4B88, &qword_224DB9E88);
  v12 = v22;
  result = sub_224A3311C(v21, &qword_27D6F4B88, &qword_224DB9E88);
  if (!v12)
  {
    return result;
  }

  result = sub_224BC1C84();
  if ((result & 1) == 0)
  {
    v14 = *(v1 + 24);
    if (v14)
    {
      *v11 = v14;
      (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
      v15 = v14;
      v16 = sub_224DAB8F8();
      result = (*(v8 + 8))(v11, v7);
      if (v16)
      {
        goto LABEL_5;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_5:
  if (*(v1 + 72) == 1)
  {
    *(v1 + 72) = 0;
    (*(v3 + 104))(v6, *MEMORY[0x277CD8F78], v2);
    v17 = sub_224DAB4E8();
    result = (*(v3 + 8))(v6, v2);
    if ((v17 & 1) == 0)
    {
      return result;
    }

    sub_224BC0B2C();
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277CD8F78], v2);
    v18 = sub_224DAB4E8();
    result = (*(v3 + 8))(v6, v2);
    if ((v18 & 1) == 0)
    {
      return result;
    }

    sub_224BC0B2C();
    sub_224BC0F0C();
  }

  v19 = *__swift_project_boxed_opaque_existential_1((v1 + 80), *(v1 + 104));
  return sub_224BC157C();
}

uint64_t sub_224BC0F0C()
{
  v1 = v0;
  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364DF0);
  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_224A2F000, v3, v4, "NetworkEnabledAfterBootNotification: detected network up, notifying", v5, 2u);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  v6 = *(v1 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A33088(&qword_281350EF0, &qword_27D6F4A10, &unk_224DB4000);
  sub_224DAB398();
}

uint64_t sub_224BC105C()
{
  v1 = *(v0 + 16);

  sub_224A3311C(v0 + 32, &qword_27D6F4B88, &qword_224DB9E88);
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_224BC10E0()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v33 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v33 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  sub_224DABCD8();
  v37 = *(v2 + 48);
  if (v37(v19, 1, v1) == 1)
  {
    sub_224A3311C(v19, &unk_27D6F5630, &unk_224DB34C0);
    v22 = 0;
  }

  else
  {
    v23 = *(v2 + 32);
    v35 = v2 + 32;
    v36 = v6;
    v34 = v23;
    v23(v8, v19, v1);
    (*(v2 + 16))(v16, v8, v1);
    v33 = *(v2 + 56);
    v33(v16, 0, 1, v1);
    v24 = OBJC_IVAR____TtC10ChronoCore18BootSessionChecker__currentBootSessionUUID;
    swift_beginAccess();
    sub_224A838C0(v16, v0 + v24, &unk_27D6F5630, &unk_224DB34C0);
    swift_endAccess();
    v25 = [objc_opt_self() standardUserDefaults];
    v26 = sub_224DAEDE8();
    v27 = [v25 stringForKey_];

    if (v27)
    {
      sub_224DAEE18();

      sub_224DA9888();
    }

    else
    {
      v33(v21, 1, 1, v1);
    }

    sub_224A3796C(v21, v13, &unk_27D6F5630, &unk_224DB34C0);
    v28 = v37(v13, 1, v1);
    v29 = v36;
    if (v28 == 1)
    {
      (*(v2 + 8))(v8, v1);
      sub_224A3311C(v21, &unk_27D6F5630, &unk_224DB34C0);
      sub_224A3311C(v13, &unk_27D6F5630, &unk_224DB34C0);
      v22 = 1;
    }

    else
    {
      v34(v36, v13, v1);
      sub_224BC1D50(&qword_281351A10, MEMORY[0x277CC95F0]);
      v30 = sub_224DAEDD8();
      v31 = *(v2 + 8);
      v31(v29, v1);
      v31(v8, v1);
      sub_224A3311C(v21, &unk_27D6F5630, &unk_224DB34C0);
      v22 = v30 ^ 1;
    }
  }

  return v22 & 1;
}

uint64_t sub_224BC157C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - v3;
  v5 = sub_224DA9908();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC10ChronoCore18BootSessionChecker__currentBootSessionUUID;
  swift_beginAccess();
  sub_224A3796C(v0 + v10, v4, &unk_27D6F5630, &unk_224DB34C0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_224A3311C(v4, &unk_27D6F5630, &unk_224DB34C0);
  }

  (*(v6 + 32))(v9, v4, v5);
  v12 = [objc_opt_self() standardUserDefaults];
  sub_224DA9898();
  v13 = sub_224DAEDE8();

  v14 = sub_224DAEDE8();
  [v12 setObject:v13 forKey:v14];

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_224BC17B4()
{
  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore18BootSessionChecker__currentBootSessionUUID, &unk_27D6F5630, &unk_224DB34C0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BootSessionChecker()
{
  result = qword_28135A1F8;
  if (!qword_28135A1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224BC187C()
{
  sub_224BC190C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_224BC190C()
{
  if (!qword_2813519F8)
  {
    sub_224DA9908();
    v0 = sub_224DAF728();
    if (!v1)
    {
      atomic_store(v0, &qword_2813519F8);
    }
  }
}

uint64_t sub_224BC1964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[3] = type metadata accessor for BootSessionChecker();
  v13[4] = &off_28382DE98;
  v13[0] = a1;
  v12[3] = sub_224DAB4D8();
  v12[4] = &off_28382DE68;
  v12[0] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(a3 + 16) = sub_224DAB358();
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 1;
  sub_224A3317C(v13, a3 + 80);
  sub_224A3317C(v12, v11);
  swift_beginAccess();
  sub_224A838C0(v11, a3 + 32, &qword_27D6F4B88, &qword_224DB9E88);
  swift_endAccess();
  v9 = *__swift_project_boxed_opaque_existential_1((a3 + 80), *(a3 + 104));
  if (sub_224BC10E0())
  {
    sub_224BC06B0();
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return a3;
}

uint64_t sub_224BC1A94(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = type metadata accessor for BootSessionChecker();
  v23[3] = v5;
  v23[4] = &off_28382DE98;
  v22 = &off_28382DE68;
  v23[0] = a1;
  v21 = v4;
  v20[0] = a2;
  type metadata accessor for NetworkEnabledAfterBootNotification();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v23, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = v21;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_224BC1964(*v10, *v16, v6);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

uint64_t sub_224BC1C84()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_224DAECE8();
  if (*(v2 + 16))
  {
    sub_224A3A40C(0xD000000000000011, 0x8000000224DC9810);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_224BC1D50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224BC1D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v26 = a3;
  v27 = a4;
  v24 = a1;
  v25 = a2;
  v23 = sub_224DAF3C8();
  v7 = *(v23 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v23);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAF318();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_224DAB848();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB7E8();
  v28 = MEMORY[0x277D84F90];
  sub_224BC4B28(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224AC3240();
  sub_224DAF788();
  (*(v7 + 104))(v10, *MEMORY[0x277D85260], v23);
  *(v5 + 24) = sub_224DAF418();
  v15 = sub_224DAA968();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_224DAA958();
  v19 = MEMORY[0x277D84F98];
  *(v5 + 64) = v18;
  *(v5 + 72) = v19;
  *(v5 + 80) = v19;
  *(v5 + 16) = a5;
  v20 = v25;
  *(v5 + 32) = v24;
  *(v5 + 40) = v20;
  v21 = v27;
  *(v5 + 48) = v26;
  *(v5 + 56) = v21;
  return v5;
}

uint64_t sub_224BC2038(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - v8;
  v10 = *(v2 + 24);
  (*(v6 + 16))(aBlock - v8, a1, v5);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  (*(v6 + 32))(v12 + v11, v9, v5);
  *(v12 + ((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_224BC2C20;
  *(v13 + 24) = v12;
  aBlock[4] = sub_224A8A838;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A9B6F8;
  aBlock[3] = &block_descriptor_22;
  v14 = _Block_copy(aBlock);

  v15 = a2;

  dispatch_sync(v10, v14);
  _Block_release(v14);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void sub_224BC2280(uint64_t a1, void *a2)
{
  v3 = v2;
  v29 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30[-1] - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30[-1] - v12;
  v14 = sub_224DAB8C8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v30[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v3 + 24);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14);
  v20 = v19;
  LOBYTE(v19) = sub_224DAB8F8();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    swift_beginAccess();
    v21 = *(v3 + 72);
    if (*(v21 + 16) && (v22 = sub_224A683FC(a1), (v23 & 1) != 0))
    {
      v24 = *(*(v21 + 56) + 8 * v22);
    }

    else
    {
      v24 = 0;
    }

    swift_endAccess();
    v25 = *(v10 + 16);
    v25(v13, a1, v9);
    swift_beginAccess();
    sub_224B080E8(0, v13);
    swift_endAccess();
    v25(v13, a1, v9);
    v26 = sub_224DA9878();
    (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
    swift_beginAccess();
    sub_224B08344(v8, v13);
    swift_endAccess();
    sub_224BC41F4(a1, v29);
    if (v24)
    {
      v27 = *(v24 + 16);
      if (v27)
      {
        v28 = v24 + 32;
        do
        {
          sub_224A3317C(v28, v30);
          __swift_project_boxed_opaque_existential_1(v30, v30[3]);
          sub_224DAE1F8();
          __swift_destroy_boxed_opaque_existential_1(v30);
          v28 += 40;
          --v27;
        }

        while (v27);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_224BC25F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - v6;
  v8 = *(v1 + 24);
  (*(v4 + 16))(aBlock - v6, a1, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  (*(v4 + 32))(v10 + v9, v7, v3);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_224BC4AB8;
  *(v11 + 24) = v10;
  aBlock[4] = sub_224BC4B74;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A9B6F8;
  aBlock[3] = &block_descriptor_14;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

void sub_224BC281C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = sub_224DAB8C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + 24);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v19 = v18;
  LOBYTE(v18) = sub_224DAB8F8();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    swift_beginAccess();
    v20 = *(v2 + 72);
    if (*(v20 + 16) && (v21 = sub_224A683FC(a1), (v22 & 1) != 0))
    {
      v23 = *(*(v20 + 56) + 8 * v21);
      swift_endAccess();
      v24 = *(v23 + 16);
      if (v24)
      {
        v30 = v7;
        v31 = a1;
        v25 = v23 + 32;

        do
        {
          sub_224A3317C(v25, v32);
          __swift_project_boxed_opaque_existential_1(v32, v32[3]);
          sub_224DAE1F8();
          __swift_destroy_boxed_opaque_existential_1(v32);
          v25 += 40;
          --v24;
        }

        while (v24);

        v7 = v30;
        a1 = v31;
      }

      v26 = *(v9 + 16);
      v26(v12, a1, v8);
      swift_beginAccess();
      sub_224B080E8(0, v12);
      swift_endAccess();
      v26(v12, a1, v8);
      v27 = sub_224DA9878();
      (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
      swift_beginAccess();
      sub_224B08344(v7, v12);
      swift_endAccess();
      v28 = *(v2 + 56);
      (*(v2 + 48))(a1);
      sub_224BC3248();
    }

    else
    {
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_224BC2B9C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  return swift_deallocClassInstance();
}

void sub_224BC2C20()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = v0 + v2;
  v5 = *(v0 + 16);
  sub_224BC2280(v4, v3);
}

uint64_t sub_224BC2CBC@<X0>(char *a1@<X8>)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B90, &qword_224DB9F00);
  v3 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v5 = &v56 - v4;
  v68 = sub_224DA9878();
  v6 = *(v68 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v68);
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v56 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v56 - v14;
  MEMORY[0x28223BE20](v13);
  v58 = &v56 - v16;
  v17 = sub_224DAB8C8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v1 + 24);
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v17);
  v23 = v22;
  LOBYTE(v22) = sub_224DAB8F8();
  result = (*(v18 + 8))(v21, v17);
  if (v22)
  {
    v56 = v12;
    v57 = a1;
    v63 = v5;
    swift_beginAccess();
    v25 = *(v1 + 80);

    sub_224DA9748();
    v26 = v25 + 64;
    v27 = 1 << *(v25 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v25 + 64);
    v30 = (v27 + 63) >> 6;
    v66 = (v6 + 32);
    v67 = v25;
    v59 = (v6 + 8);
    v60 = v6 + 16;

    v31 = 0;
    v32 = v15;
    v61 = v15;
    v62 = v6;
    while (v29)
    {
LABEL_12:
      v36 = __clz(__rbit64(v29)) | (v31 << 6);
      v37 = v67;
      v38 = *(v67 + 48);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      v40 = v63;
      (*(*(v39 - 8) + 16))(v63, v38 + *(*(v39 - 8) + 72) * v36, v39);
      v41 = *(v37 + 56) + *(v6 + 72) * v36;
      v42 = *(v65 + 48);
      v43 = *(v6 + 16);
      v44 = v68;
      v43(v40 + v42, v41, v68);
      sub_224BC4B28(&qword_281351A40, MEMORY[0x277CC9578]);
      v45 = v61;
      if (sub_224DAEDB8())
      {
        (*v59)(v45, v44);
        v46 = v40 + v42;
        v47 = v64;
        v43(v64, v46, v44);
        v34 = v47;
        sub_224A3311C(v40, &qword_27D6F4B90, &qword_224DB9F00);
        v33 = *v66;
      }

      else
      {
        sub_224A3311C(v40, &qword_27D6F4B90, &qword_224DB9F00);
        v33 = *v66;
        v34 = v64;
        (*v66)(v64, v45, v44);
      }

      v32 = v45;
      v29 &= v29 - 1;
      result = (v33)(v45, v34, v68);
      v6 = v62;
    }

    while (1)
    {
      v35 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v35 >= v30)
      {
        break;
      }

      v29 = *(v26 + 8 * v35);
      ++v31;
      if (v29)
      {
        v31 = v35;
        goto LABEL_12;
      }
    }

    v48 = *v66;
    v49 = v58;
    v50 = v68;
    (*v66)(v58, v32, v68);

    v51 = v56;
    sub_224DA9748();
    v52 = sub_224DA97E8();
    v53 = *v59;
    (*v59)(v51, v50);
    if (v52)
    {
      v53(v49, v68);
      v54 = 1;
      v55 = v57;
    }

    else
    {
      v55 = v57;
      v48(v57, v49, v68);
      v54 = 0;
    }

    return (*(v6 + 56))(v55, v54, 1, v68);
  }

  else
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_224BC3248()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42 - v4;
  v6 = sub_224DA9878();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = sub_224DAB8C8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v1 + 24);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v47 = v21;
  LOBYTE(v21) = sub_224DAB8F8();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = *(v1 + 64);
  sub_224DAA948();
  sub_224BC2CBC(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_224A3311C(v5, &qword_27D6F32B0, &qword_224DB3EA0);
    if (qword_2813516C8 == -1)
    {
LABEL_4:
      v23 = sub_224DAB258();
      __swift_project_value_buffer(v23, qword_281365120);
      v24 = sub_224DAB228();
      v25 = sub_224DAF2A8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_224A2F000, v24, v25, "Not starting snapshot assertion expiration timer", v26, 2u);
        MEMORY[0x22AA5EED0](v26, -1, -1);
      }

      return;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  (*(v7 + 32))(v15, v5, v6);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v27 = sub_224DAB258();
  __swift_project_value_buffer(v27, qword_281365120);
  v28 = *(v7 + 16);
  v46 = v15;
  v28(v13, v15, v6);
  v29 = sub_224DAB228();
  v30 = sub_224DAF2A8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v43 = v31;
    v44 = swift_slowAlloc();
    v49 = v44;
    *v31 = 136446210;
    sub_224BC4B28(&qword_27D6F32B8, MEMORY[0x277CC9578]);
    v32 = sub_224DAFD28();
    v45 = v22;
    v34 = v33;
    v35 = *(v7 + 8);
    v35(v13, v6);
    v36 = sub_224A33F74(v32, v34, &v49);

    v37 = v43;
    *(v43 + 1) = v36;
    v38 = v37;
    _os_log_impl(&dword_224A2F000, v29, v30, "Snapshot assertion expiration timer will fire at %{public}s", v37, 0xCu);
    v39 = v44;
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x22AA5EED0](v39, -1, -1);
    MEMORY[0x22AA5EED0](v38, -1, -1);
  }

  else
  {

    v35 = *(v7 + 8);
    v35(v13, v6);
  }

  v40 = v48;
  sub_224DA9808();
  v41 = v46;
  sub_224DA9758();
  v35(v40, v6);

  sub_224DAA938();

  v35(v41, v6);
}

uint64_t sub_224BC37F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v78 = &v74 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v89 = *(v5 - 1);
  v6 = *(v89 + 64);
  MEMORY[0x28223BE20](v5);
  v77 = &v74 - v7;
  v8 = sub_224DA9878();
  v81 = *(v8 - 8);
  v82 = v8;
  v9 = *(v81 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v83 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = &v74 - v12;
  v13 = sub_224DAB8C8();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v17 = (&v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v0 + 24);
  *v17 = v18;
  v19 = *MEMORY[0x277D85200];
  v20 = v14 + 13;
  v88 = v14[13];
  v88(v17, v19, v13);
  v21 = v18;
  LOBYTE(v18) = sub_224DAB8F8();
  v24 = v14[1];
  v23 = v14 + 1;
  v22 = v24;
  v24(v17, v13);
  if ((v18 & 1) == 0)
  {
    goto LABEL_28;
  }

  v86 = v21;
  *v17 = v21;
  v87 = v19;
  v88(v17, v19, v13);
  v25 = sub_224DAB8F8();
  v80 = v23;
  v85 = v22;
  v22(v17, v13);
  if ((v25 & 1) == 0)
  {
    goto LABEL_29;
  }

  v84 = v20;
  v79 = v13;
  v26 = v83;
  sub_224DA9808();
  v27 = v90;
  sub_224DA9768();
  v28 = v82;
  v29 = *(v81 + 8);
  v29(v26, v82);
  v30 = swift_beginAccess();
  v31 = *(v1 + 80);
  MEMORY[0x28223BE20](v30);
  *(&v74 - 2) = v27;

  v32 = sub_224BA066C(sub_224BC4A98, (&v74 - 4), v31);

  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = sub_224A6DE18(*(v32 + 16), 0);
    v35 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v75 = v34;
    v36 = sub_224B2F73C(v92, (v34 + v35), v33, v32);
    sub_224A3B7E4();
    if (v36 == v33)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v75 = MEMORY[0x277D84F90];
LABEL_7:
  v29(v90, v28);
  v13 = v79;
  if (qword_2813516C8 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v37 = sub_224DAB258();
    __swift_project_value_buffer(v37, qword_281365120);
    v38 = v75;

    v39 = sub_224DAB228();
    v40 = sub_224DAF2A8();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v77;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v92[0] = v90;
      *v43 = 136446210;
      v44 = MEMORY[0x22AA5D380](v38, v5);
      v46 = sub_224A33F74(v44, v45, v92);
      LODWORD(v83) = v40;
      v47 = v46;

      *(v43 + 4) = v47;
      _os_log_impl(&dword_224A2F000, v39, v83, "Invalidating expired snapshots from hosts: %{public}s", v43, 0xCu);
      v48 = v90;
      __swift_destroy_boxed_opaque_existential_1(v90);
      MEMORY[0x22AA5EED0](v48, -1, -1);
      MEMORY[0x22AA5EED0](v43, -1, -1);
    }

    v49 = v87;
    v83 = *(v38 + 16);
    if (!v83)
    {
      break;
    }

    v50 = v38;
    v51 = 0;
    v82 = *(v89 + 16);
    v81 = v50 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
    v52 = *(v89 + 72);
    v89 += 16;
    v90 = v52;
    v53 = (v89 - 8);
    v76 = v5;
    while (1)
    {
      v54 = v5;
      v82(v42, v81 + v90 * v51, v5);
      v5 = v86;
      *v17 = v86;
      v88(v17, v49, v13);
      v55 = v5;
      v56 = sub_224DAB8F8();
      v85(v17, v13);
      if ((v56 & 1) == 0)
      {
        break;
      }

      swift_beginAccess();
      v57 = *(v1 + 72);
      if (*(v57 + 16) && (v58 = sub_224A683FC(v42), (v59 & 1) != 0))
      {
        v60 = *(*(v57 + 56) + 8 * v58);
        swift_endAccess();
        v61 = *(v60 + 16);
        v5 = v54;
        if (v61)
        {
          v62 = v60 + 32;

          do
          {
            sub_224A3317C(v62, v92);
            __swift_project_boxed_opaque_existential_1(v92, v92[3]);
            sub_224DAE1F8();
            __swift_destroy_boxed_opaque_existential_1(v92);
            v62 += 40;
            --v61;
          }

          while (v61);

          v5 = v76;
          v42 = v77;
        }

        swift_beginAccess();
        v63 = *(v1 + 72);
        v64 = sub_224A683FC(v42);
        v13 = v79;
        if (v65)
        {
          v66 = v64;
          v67 = *(v1 + 72);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69 = *(v1 + 72);
          v91 = v69;
          *(v1 + 72) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_224B27B50();
            v69 = v91;
          }

          (*v53)(*(v69 + 48) + v66 * v90, v5);
          v70 = *(*(v69 + 56) + 8 * v66);

          sub_224AA3CE4(v66, v69);
          *(v1 + 72) = v69;
        }

        swift_endAccess();
        swift_beginAccess();
        v71 = v78;
        sub_224B0D688(v42, v78);
        sub_224A3311C(v71, &qword_27D6F32B0, &qword_224DB3EA0);
        swift_endAccess();
        v72 = *(v1 + 56);
        (*(v1 + 48))(v42);
        sub_224BC3248();
      }

      else
      {
        swift_endAccess();
        v5 = v54;
      }

      ++v51;
      (*v53)(v42, v5);
      v49 = v87;
      if (v51 == v83)
      {
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }
}

BOOL sub_224BC405C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B90, &qword_224DB9F00);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  v10 = *(v5 + 56);
  v11 = sub_224DA9878();
  (*(*(v11 - 8) + 16))(&v8[v10], a2, v11);
  sub_224BC4B28(&qword_281351A40, MEMORY[0x277CC9578]);
  v12 = sub_224DAEDB8();
  sub_224A3311C(v8, &qword_27D6F4B90, &qword_224DB9F00);
  return (v12 & 1) == 0;
}

void sub_224BC41F4(uint64_t a1, void *a2)
{
  v3 = v2;
  v73 = a1;
  v58 = sub_224DA9878();
  v57 = *(v58 - 8);
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = &v54 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v59 = *(v72 - 8);
  v10 = *(v59 + 64);
  MEMORY[0x28223BE20](v72);
  v54 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v54 - v14;
  v71 = sub_224DAC268();
  v16 = *(v71 - 8);
  v17 = v16[8];
  MEMORY[0x28223BE20](v71);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_224DAB8C8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v3 + 24);
  *v24 = v25;
  (*(v21 + 104))(v24, *MEMORY[0x277D85200], v20);
  v26 = v25;
  LOBYTE(v25) = sub_224DAB8F8();
  (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
  {
    goto LABEL_37;
  }

  swift_beginAccess();
  if (*(*(v3 + 72) + 16) && (sub_224A683FC(v73), (v27 & 1) != 0))
  {
    swift_endAccess();
    __break(1u);
  }

  else
  {
    swift_endAccess();
    v28 = [a2 containerDescriptors];
    sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
    v20 = sub_224DAF008();

    if (v20 >> 62)
    {
      goto LABEL_38;
    }

    v29 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
    v62 = v3;
    v63 = v20;
    if (v29)
    {
      v30 = 0;
      v65 = v20 & 0xC000000000000001;
      v61 = v20 & 0xFFFFFFFFFFFFFF8;
      v60 = v20 + 32;
      v68 = (v59 + 56);
      v69 = (v59 + 16);
      v70 = (v16 + 1);
      v16 = MEMORY[0x277D84F90];
      v64 = v29;
      while (1)
      {
        if (v65)
        {
          v31 = MEMORY[0x22AA5DCC0](v30, v63);
          v32 = __OFADD__(v30, 1);
          v33 = v30 + 1;
          if (v32)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v30 >= *(v61 + 16))
          {
            goto LABEL_36;
          }

          v31 = *(v60 + 8 * v30);
          v32 = __OFADD__(v30, 1);
          v33 = v30 + 1;
          if (v32)
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            v29 = sub_224DAF838();
            goto LABEL_6;
          }
        }

        v66 = v31;
        v20 = [v31 widgets];
        sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
        v34 = sub_224DAF008();

        v67 = v33;
        if (v34 >> 62)
        {
          v35 = sub_224DAF838();
          if (!v35)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v35)
          {
            goto LABEL_8;
          }
        }

        if (v35 < 1)
        {
          goto LABEL_35;
        }

        v36 = 0;
        v37 = *(v62 + 32);
        v20 = *(v62 + 40);
        v74 = v34 & 0xC000000000000001;
        v75 = v37;
        v76 = v34;
        do
        {
          if (v74)
          {
            v38 = MEMORY[0x22AA5DCC0](v36, v34);
          }

          else
          {
            v38 = *(v34 + 8 * v36 + 32);
          }

          v39 = v38;
          v40 = [v38 widget];
          v3 = [v39 metrics];
          v41 = v72;
          (*v69)(v15, v73, v72);
          (*v68)(v15, 0, 1, v41);
          sub_224DAC228();
          v75(&v77, v19);
          if (v78)
          {
            sub_224A39D14(&v77, v79);
            sub_224A3317C(v79, &v77);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_224AD97A8(0, v16[2] + 1, 1, v16);
            }

            v34 = v76;
            v3 = v16[2];
            v42 = v16[3];
            if (v3 >= v42 >> 1)
            {
              v16 = sub_224AD97A8((v42 > 1), v3 + 1, 1, v16);
            }

            __swift_destroy_boxed_opaque_existential_1(v79);
            (*v70)(v19, v71);
            v16[2] = v3 + 1;
            sub_224A39D14(&v77, &v16[5 * v3 + 4]);
          }

          else
          {
            (*v70)(v19, v71);

            sub_224A3311C(&v77, &qword_27D6F3AE8, &unk_224DB9600);
            v34 = v76;
          }

          ++v36;
        }

        while (v35 != v36);
LABEL_8:

        v30 = v67;
        if (v67 == v64)
        {
          goto LABEL_33;
        }
      }
    }

    v16 = MEMORY[0x277D84F90];
LABEL_33:

    v43 = v62;
    swift_beginAccess();
    v44 = *(v43 + 72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v77 = *(v43 + 72);
    *(v43 + 72) = 0x8000000000000000;
    v46 = v73;
    sub_224B21378(v16, v73, isUniquelyReferenced_nonNull_native);
    *(v43 + 72) = v77;
    swift_endAccess();
    v47 = v54;
    (*(v59 + 16))(v54, v46, v72);
    v48 = v55;
    sub_224DA9808();
    v49 = *(v43 + 16);
    v50 = v56;
    sub_224DA9768();
    v51 = v57;
    v52 = v48;
    v53 = v58;
    (*(v57 + 8))(v52, v58);
    (*(v51 + 56))(v50, 0, 1, v53);
    swift_beginAccess();
    sub_224B08344(v50, v47);
    swift_endAccess();
    sub_224BC3248();
  }
}

void sub_224BC4AB8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0) - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  sub_224BC281C(v2);
}

uint64_t sub_224BC4B28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_224BC4B7C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AA5DCC0](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = [isUniquelyReferenced_nonNull_bridgeObject widgets];
      sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
      v7 = sub_224DAF008();

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_224DAF838();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v33 = v9;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v10)
        {
          goto LABEL_21;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v31 = v3;
          goto LABEL_23;
        }
      }

      else
      {
        if (v10)
        {
LABEL_21:
          sub_224DAF838();
          goto LABEL_22;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = *(v12 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF968();
      v31 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v15 >> 1) - v14) < v33)
          {
            goto LABEL_44;
          }

          v17 = v12 + 8 * v14 + 32;
          if (v8)
          {
            if (v16 < 1)
            {
              goto LABEL_46;
            }

            sub_224BC6838();
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4040, &qword_224DB8D20);
              v19 = sub_224A6996C(v32, i, v7);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v31;
          if (v33 >= 1)
          {
            v22 = *(v12 + 16);
            v5 = __OFADD__(v22, v33);
            v23 = v22 + v33;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v12 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_27;
        }
      }

      v3 = v31;
      if (v33 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_224DAF838();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_224BC4EEC(uint64_t *a1)
{
  v2 = v1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
  v4 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v42 - v5;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 32))(v47, 768, v6, v7);
  if (!*(&v48 + 1))
  {
    sub_224A3311C(v47, &qword_27D6F50E0, &qword_224DB41A0);
    goto LABEL_27;
  }

  v49[0] = v47[0];
  v49[1] = v47[1];
  v49[2] = v48;
  v8 = sub_224A86CAC();
  if (!v8)
  {
    sub_224A699F0(v49);
LABEL_27:
    *(v1 + 16) = MEMORY[0x277D84F90];
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v2;
  }

  v9 = v8;
  v42 = a1;
  v43 = v1;
  v10 = v8 + 64;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  v44 = result;
  while (v13)
  {
LABEL_12:
    v19 = __clz(__rbit64(v13)) | (v16 << 6);
    v20 = *(v9 + 48);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v22 = v45;
    (*(*(v21 - 8) + 16))(v45, v20 + *(*(v21 - 8) + 72) * v19, v21);
    v23 = *(*(v9 + 56) + 8 * v19);
    *(v22 + *(v46 + 48)) = v23;
    v24 = [v23 containerDescriptors];
    sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
    v25 = sub_224DAF008();

    v26 = sub_224BC4B7C(v25);

    MEMORY[0x28223BE20](v27);
    *(&v42 - 2) = v22;
    sub_224D40D40(sub_224BC6818, &v42 - 4, v26);
    v29 = v28;

    result = sub_224A3311C(v22, &qword_27D6F38A8, &unk_224DB4650);
    v30 = *(v29 + 16);
    v31 = v17[2];
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      goto LABEL_30;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v32 > v17[3] >> 1)
    {
      if (v31 <= v32)
      {
        v34 = v31 + v30;
      }

      else
      {
        v34 = v31;
      }

      v17 = sub_224AD93E4(isUniquelyReferenced_nonNull_native, v34, 1, v17);
    }

    v13 &= v13 - 1;
    if (*(v29 + 16))
    {
      v35 = (v17[3] >> 1) - v17[2];
      result = sub_224DAC268();
      v36 = *(result - 8);
      if (v35 < v30)
      {
        goto LABEL_32;
      }

      v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v38 = *(v36 + 72);
      swift_arrayInitWithCopy();

      v9 = v44;
      if (v30)
      {
        v39 = v17[2];
        v40 = __OFADD__(v39, v30);
        v41 = v39 + v30;
        if (v40)
        {
          goto LABEL_33;
        }

        v17[2] = v41;
      }
    }

    else
    {

      v9 = v44;
      if (v30)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      sub_224A699F0(v49);

      a1 = v42;
      v2 = v43;
      *(v43 + 16) = v17;
      goto LABEL_28;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_224BC5300(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = *a1;
  v9 = [v8 widget];
  v10 = [v8 metrics];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v7, a2, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  return sub_224DAC228();
}

void sub_224BC5468(uint64_t a1)
{
  v19 = *(a1 + 16);
  if (v19)
  {
    v1 = *(a1 + 16);
    v2 = (a1 + 32);
    v3 = qword_27D6F7210;
    do
    {
      v20 = *v2;
      v11 = swift_unknownObjectRetain();
      sub_224BC5758(v11, *(&v20 + 1));
      if (qword_27D6F2D08 != -1)
      {
        swift_once();
      }

      v12 = sub_224DAB258();
      __swift_project_value_buffer(v12, v3);
      swift_unknownObjectRetain();
      v13 = sub_224DAB228();
      v14 = sub_224DAF2A8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v13, v14))
      {
        v4 = swift_slowAlloc();
        v5 = v3;
        v6 = swift_slowAlloc();
        v21 = v6;
        *v4 = 136315138;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B98, &unk_224DB9F70);
        v7 = sub_224DAEE28();
        v9 = sub_224A33F74(v7, v8, &v21);

        *(v4 + 4) = v9;
        _os_log_impl(&dword_224A2F000, v13, v14, "Timeline filename migration of %s completed.", v4, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v6);
        v10 = v6;
        v3 = v5;
        MEMORY[0x22AA5EED0](v10, -1, -1);
        MEMORY[0x22AA5EED0](v4, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v2;
      --v1;
    }

    while (v1);
  }

  if (qword_27D6F2D08 != -1)
  {
    swift_once();
  }

  v15 = sub_224DAB258();
  __swift_project_value_buffer(v15, qword_27D6F7210);

  v16 = sub_224DAB228();
  v17 = sub_224DAF2A8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v19;

    _os_log_impl(&dword_224A2F000, v16, v17, "Timeline filename migration of %ld cache manager(s) completed.", v18, 0xCu);
    MEMORY[0x22AA5EED0](v18, -1, -1);
  }

  else
  {
  }
}

void sub_224BC5758(uint64_t a1, uint64_t a2)
{
  v127 = a2;
  v3 = sub_224DA9688();
  v134 = *(v3 - 8);
  v4 = v134[8];
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v138 = &v120 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v120 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v120 - v13;
  v142 = type metadata accessor for TimelineFilenameMigrator.Action(0);
  v15 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v17 = (&v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = type metadata accessor for TimelineFilenameMigrator.Result(0);
  v129 = *(v141 - 8);
  v18 = v129[8];
  v19 = MEMORY[0x28223BE20](v141);
  v21 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v120 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v120 - v26;
  MEMORY[0x28223BE20](v25);
  v133 = &v120 - v28;
  if (qword_27D6F2D08 != -1)
  {
    swift_once();
  }

  v131 = v21;
  v135 = v14;
  v144 = v3;
  v29 = sub_224DAB258();
  v30 = __swift_project_value_buffer(v29, qword_27D6F7210);
  swift_unknownObjectRetain();
  v143 = v30;
  v31 = sub_224DAB228();
  v32 = sub_224DAF278();
  swift_unknownObjectRelease();
  v33 = os_log_type_enabled(v31, v32);
  v132 = v7;
  v136 = v24;
  v137 = v12;
  v140 = v17;
  v145 = v27;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 136315138;
    v146 = a1;
    v36 = v127;
    v147 = v127;
    v148 = v35;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B98, &unk_224DB9F70);
    v37 = sub_224DAEE28();
    v39 = sub_224A33F74(v37, v38, &v148);
    v40 = v136;

    *(v34 + 4) = v39;
    v27 = v145;
    _os_log_impl(&dword_224A2F000, v31, v32, "Timeline migration starting for %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v41 = v35;
    v12 = v137;
    MEMORY[0x22AA5EED0](v41, -1, -1);
    v42 = v34;
    v17 = v140;
    MEMORY[0x22AA5EED0](v42, -1, -1);
  }

  else
  {

    v36 = v127;
    v40 = v24;
  }

  v43 = *(v139 + 16);
  type metadata accessor for TimelineFilenameMigrator();
  inited = swift_initStackObject();
  inited[2] = v43;
  inited[3] = a1;
  inited[4] = v36;
  swift_unknownObjectRetain();

  v125 = inited;
  v45 = sub_224BA49EC();
  v121 = a1;
  v47 = *(v45 + 16);
  if (v47)
  {
    v48 = (*(v129 + 80) + 32) & ~*(v129 + 80);
    v120 = v45;
    v49 = v45 + v48;
    v130 = v134 + 4;
    v139 = v129[9];
    v129 = v134 + 2;
    v128 = v134 + 1;
    *&v46 = 136315650;
    v124 = v46;
    *&v46 = 136315394;
    v123 = v46;
    *&v46 = 136315138;
    v122 = v46;
    v50 = v133;
    do
    {
      sub_224BC670C(v49, v50, type metadata accessor for TimelineFilenameMigrator.Result);
      sub_224BC670C(v50 + *(v141 + 20), v17, type metadata accessor for TimelineFilenameMigrator.Action);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v52 = *v17;
          v53 = v131;
          sub_224BC670C(v50, v131, type metadata accessor for TimelineFilenameMigrator.Result);
          v54 = v52;
          v55 = sub_224DAB228();
          v56 = sub_224DAF288();

          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v134 = swift_slowAlloc();
            v146 = v134;
            *v57 = v123;
            sub_224DAC268();
            sub_224BC67D0(&qword_281350E40, MEMORY[0x277CF9978]);
            v59 = sub_224DAFD28();
            v61 = v60;
            sub_224BC6774(v53);
            v62 = sub_224A33F74(v59, v61, &v146);

            *(v57 + 4) = v62;
            *(v57 + 12) = 2112;
            if (v52)
            {
              v63 = v52;
              v64 = _swift_stdlib_bridgeErrorToNSError();
              v65 = v64;
            }

            else
            {
              v64 = 0;
              v65 = 0;
            }

            v40 = v136;
            *(v57 + 14) = v64;
            *v58 = v65;
            _os_log_impl(&dword_224A2F000, v55, v56, "Timeline migration failed to migrate %s - %@", v57, 0x16u);
            sub_224A3311C(v58, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v58, -1, -1);
            v109 = v134;
            __swift_destroy_boxed_opaque_existential_1(v134);
            MEMORY[0x22AA5EED0](v109, -1, -1);
            MEMORY[0x22AA5EED0](v57, -1, -1);

            v50 = v133;
            sub_224BC6774(v133);
            v12 = v137;
            v17 = v140;
          }

          else
          {

            sub_224BC6774(v53);
            sub_224BC6774(v50);
            v17 = v140;
            v40 = v136;
          }

          v27 = v145;
        }

        else
        {
          sub_224BC670C(v50, v27, type metadata accessor for TimelineFilenameMigrator.Result);
          v97 = v50;
          v98 = sub_224DAB228();
          v99 = sub_224DAF278();
          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            v101 = swift_slowAlloc();
            v146 = v101;
            *v100 = v122;
            sub_224DAC268();
            sub_224BC67D0(&qword_281350E40, MEMORY[0x277CF9978]);
            v102 = sub_224DAFD28();
            v104 = v103;
            sub_224BC6774(v145);
            v105 = sub_224A33F74(v102, v104, &v146);
            v27 = v145;

            *(v100 + 4) = v105;
            _os_log_impl(&dword_224A2F000, v98, v99, "Timeline migration skipped %s", v100, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v101);
            v106 = v101;
            v40 = v136;
            MEMORY[0x22AA5EED0](v106, -1, -1);
            v107 = v100;
            v17 = v140;
            MEMORY[0x22AA5EED0](v107, -1, -1);
          }

          else
          {

            sub_224BC6774(v27);
          }

          sub_224BC6774(v97);
          v12 = v137;
          v50 = v97;
        }
      }

      else
      {
        v134 = v47;
        v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A20, &qword_224DB9F80) + 48);
        v67 = *v130;
        v68 = v12;
        v69 = v40;
        v70 = v135;
        v71 = v144;
        (*v130)(v135, v17, v144);
        v72 = v17 + v66;
        v73 = v71;
        v67(v68, v72, v71);
        sub_224BC670C(v50, v69, type metadata accessor for TimelineFilenameMigrator.Result);
        v74 = *v129;
        (*v129)(v138, v70, v71);
        v75 = v69;
        v12 = v68;
        v76 = v132;
        v74(v132, v68, v73);
        v77 = sub_224DAB228();
        v78 = sub_224DAF278();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v146 = v126;
          *v79 = v124;
          sub_224DAC268();
          sub_224BC67D0(&qword_281350E40, MEMORY[0x277CF9978]);
          v80 = sub_224DAFD28();
          v82 = v81;
          sub_224BC6774(v75);
          v83 = sub_224A33F74(v80, v82, &v146);

          *(v79 + 4) = v83;
          *(v79 + 12) = 2080;
          sub_224BC67D0(&qword_281351A70, MEMORY[0x277CC9260]);
          v84 = sub_224DAFD28();
          v86 = v85;
          v87 = *v128;
          (*v128)(v138, v144);
          v88 = sub_224A33F74(v84, v86, &v146);
          v89 = v136;
          v90 = v132;

          *(v79 + 14) = v88;
          *(v79 + 22) = 2080;
          v91 = sub_224DAFD28();
          v93 = v92;
          v94 = v90;
          v40 = v89;
          v87(v94, v144);
          v95 = sub_224A33F74(v91, v93, &v146);
          v12 = v137;

          *(v79 + 24) = v95;
          _os_log_impl(&dword_224A2F000, v77, v78, "Timeline migration moved %s from %s to %s", v79, 0x20u);
          v96 = v126;
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v96, -1, -1);
          MEMORY[0x22AA5EED0](v79, -1, -1);

          v87(v12, v144);
          v87(v135, v144);
          v50 = v133;
          sub_224BC6774(v133);
          v17 = v140;
          v27 = v145;
        }

        else
        {

          v108 = *v128;
          (*v128)(v76, v73);
          v108(v138, v73);
          sub_224BC6774(v75);
          v108(v12, v73);
          v108(v135, v73);
          v50 = v133;
          sub_224BC6774(v133);
          v17 = v140;
          v27 = v145;
          v40 = v75;
        }

        v47 = v134;
      }

      v49 += v139;
      v47 = (v47 - 1);
    }

    while (v47);
  }

  v110 = v121;
  swift_unknownObjectRetain();
  v111 = sub_224DAB228();
  v112 = sub_224DAF278();
  swift_unknownObjectRelease();
  v113 = os_log_type_enabled(v111, v112);
  v114 = v127;
  if (v113)
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v147 = v114;
    v148 = v116;
    *v115 = 136315138;
    v146 = v110;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B98, &unk_224DB9F70);
    v117 = sub_224DAEE28();
    v119 = sub_224A33F74(v117, v118, &v148);

    *(v115 + 4) = v119;
    _os_log_impl(&dword_224A2F000, v111, v112, "Timeline migration finished for %s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v116);
    MEMORY[0x22AA5EED0](v116, -1, -1);
    MEMORY[0x22AA5EED0](v115, -1, -1);
  }

  else
  {
  }
}