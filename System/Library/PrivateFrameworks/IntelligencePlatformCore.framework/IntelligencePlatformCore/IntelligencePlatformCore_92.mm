uint64_t Array<A>.jsonString()(unint64_t a1)
{
  v3 = sub_1C4F01188();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = sub_1C4EF93D8();
  sub_1C44099C4(v10);
  sub_1C4EF93C8();
  v20.n128_u64[0] = a1;
  sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
  sub_1C496CBBC();
  v11 = sub_1C4EF93B8();
  if (!v1)
  {
    v13 = v11;
    v14 = v12;
    sub_1C4F01178();
    v9 = sub_1C4F01158();
    v16 = v15;
    sub_1C4434000(v13, v14);
    if (!v16)
    {
      v9 = 0x80000001C4FBABD0;
      sub_1C450B034();
      v18 = sub_1C43FFB2C();
      v19->n128_u64[0] = 0;
      v19->n128_u64[1] = 0xE000000000000000;
      v19[1].n128_u64[0] = 0xD000000000000018;
      v19[1].n128_u64[1] = 0x80000001C4FBABD0;
      sub_1C4411340(v20, v21, v18, v19);
    }
  }

  return v9;
}

uint64_t sub_1C4C34EC4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v191 = a5;
  v207 = a3;
  v208 = a4;
  sub_1C43FBE94();
  v190 = sub_1C4EF9CD8();
  v10 = sub_1C43FCDF8(v190);
  *&v202 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v15 - v14);
  v193 = _s6ConfigVMa();
  v16 = sub_1C43FBCE0(v193);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD230();
  v21 = sub_1C43FD2C8(v20);
  v22 = _s10ViewConfigVMa(v21);
  v23 = sub_1C44016B0(v22);
  v24 = sub_1C43FBCE0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBD08();
  sub_1C44146B8();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v181 - v29;
  v31 = _s14ViewConfigInfoVMa(0);
  v32 = sub_1C43FCDF8(v31);
  v210 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBD08();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  sub_1C4402CA8();
  v40 = v213;
  result = sub_1C4BB49EC();
  if (!v40)
  {
    v203 = 0;
    v201 = v31;
    v183 = v7;
    v196 = v8;
    v204 = v6;
    v197 = v30;
    v194 = v5;
    v195 = a2;
    v42 = v208;
    v43 = sub_1C4428DA0(v208);
    v44 = 0;
    v212 = v42 & 0xC000000000000001;
    v213 = v43;
    v211 = v42 & 0xFFFFFFFFFFFFFF8;
    v45 = MEMORY[0x1E69E7CC8];
    v206 = v42 + 32;
    v46 = v210;
    v209 = v38;
    while (v213 != v44)
    {
      if (v212)
      {
        v64 = sub_1C43FBC98();
        v47 = MEMORY[0x1C6940F90](v64);
      }

      else
      {
        if (v44 >= *(v211 + 16))
        {
          goto LABEL_84;
        }

        v47 = *(v42 + 8 * v44 + 32);
      }

      if (__OFADD__(v44, 1))
      {
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
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v38 = *(v47 + 16);
      v48 = *(v47 + 24);
      swift_isUniquelyReferenced_nonNull_native();
      v214 = v45;
      v49 = sub_1C443DF7C();
      v42 = v45;
      v51 = sub_1C445FAA8(v49, v50);
      v53 = v45[2];
      v54 = (v52 & 1) == 0;
      v45 = (v53 + v54);
      if (__OFADD__(v53, v54))
      {
        goto LABEL_85;
      }

      v46 = v51;
      v55 = v52;
      sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
      v42 = &v214;
      if (sub_1C4F02458())
      {
        v42 = v214;
        v56 = sub_1C443DF7C();
        v58 = sub_1C445FAA8(v56, v57);
        if ((v55 & 1) != (v59 & 1))
        {
          result = sub_1C4F029F8();
          __break(1u);
          return result;
        }

        v46 = v58;
      }

      v45 = v214;
      if (v55)
      {
        *(v214[7] + 8 * v46) = v44;
      }

      else
      {
        sub_1C4401D38(&v214[v46 >> 6]);
        v60 = (v45[6] + 16 * v46);
        *v60 = v38;
        v60[1] = v48;
        *(v45[7] + 8 * v46) = v44;
        v61 = v45[2];
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          goto LABEL_88;
        }

        v45[2] = v63;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      ++v44;
      v42 = v208;
      v38 = v209;
      v46 = v210;
    }

    if (qword_1EDDFD018 == -1)
    {
      goto LABEL_19;
    }

LABEL_89:
    sub_1C441A86C();
    swift_once();
LABEL_19:
    v65 = sub_1C4F00978();
    sub_1C43FCEE8(v65, qword_1EDE2DDF8);
    v66 = v208;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v205 = v42;
    v67 = sub_1C4F00968();
    v68 = sub_1C4F01CF8();
    if (sub_1C43FCEA4(v68))
    {
      v69 = sub_1C43FD084();
      *v69 = 134217984;
      *(v69 + 4) = sub_1C4428DA0(v66);

      sub_1C441253C();
      _os_log_impl(v70, v71, v72, v73, v69, 0xCu);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    v42 = v207;
    v75 = 0;
    v182 = v202 + 8;
    *&v74 = 136315138;
    v202 = v74;
LABEL_23:
    while (v75 != v213)
    {
      if (v212)
      {
        v76 = MEMORY[0x1C6940F90](v75, v208);
      }

      else
      {
        if (v75 >= *(v211 + 16))
        {
          goto LABEL_87;
        }

        v76 = *(v206 + 8 * v75);
      }

      v77 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_86;
      }

      v79 = *(v76 + 16);
      v78 = *(v76 + 24);
      v80 = *(v42 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v80)
      {
        v81 = sub_1C43FE99C();
        v83 = sub_1C445FAA8(v81, v82);
        if (v84)
        {
          sub_1C4509798(*(v42 + 56) + *(v46 + 72) * v83, v38);
          sub_1C4425510();
          v85 = v204;
          sub_1C4C41AB8(v38, v204);
          v86 = v85 + *(v201 + 24);
          sub_1C4C907BC();
          if (v88 >> 60 != 15)
          {
            v89 = v88;
            v200 = v76;
            v90 = v87;
            sub_1C44344B8(v87, v88);
            sub_1C44BBEEC(objc_autoreleasePoolPush());
            v91 = sub_1C4EF9348();
            sub_1C44099C4(v91);
            sub_1C4EF9338();
            sub_1C441E7D4();
            sub_1C44902AC(&qword_1EDDFF5F0, v92);
            v93 = v196;
            v94 = v203;
            sub_1C4EF9328();
            if (!v94)
            {
              v187 = 0;
              v184 = v75 + 1;

              objc_autoreleasePoolPop(sub_1C4458588());
              v185 = v90;
              v186 = v89;
              sub_1C44415B4(v90, v89);
              v42 = v107;
              v108 = v183;
              sub_1C4C41AB8(v93, v183);
              sub_1C4C41AB8(v108, v197);
              v109 = v200;
              sub_1C440D164();
              v110 = *(v109 + 40);
              v111 = *(v110 + 56);
              v38 = v110 + 56;
              v112 = *(*(v109 + 40) + 32);
              sub_1C44410A0();
              sub_1C440FDCC();
              v115 = v114 & v113;
              v46 = (v116 + 63) >> 6;
              v203 = v117;
              swift_bridgeObjectRetain_n();
              v118 = 0;
              v198 = MEMORY[0x1E69E7CC0];
              while (v115)
              {
                v119 = v115;
LABEL_45:
                v115 = (v119 - 1) & v119;
                if (v45[2])
                {
                  sub_1C442AB14();
                  v121 = v203[6];
                  sub_1C4416844();
                  v123 = *v122;
                  v124 = v122[1];
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v42 = v45;
                  v125 = sub_1C445FAA8(v123, v124);
                  if (v126)
                  {
                    v127 = *(v45[7] + 8 * v125);

                    sub_1C4458588();
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v188 = v127;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v132 = *(v198 + 16);
                      sub_1C43FCEC0();
                      sub_1C445C3F8();
                      sub_1C44BBEEC(v133);
                    }

                    v130 = *(v198 + 16);
                    v129 = *(v198 + 24);
                    v42 = v130 + 1;
                    if (v130 >= v129 >> 1)
                    {
                      sub_1C43FFD98(v129);
                      sub_1C445C3F8();
                      sub_1C44BBEEC(v134);
                    }

                    v131 = v198;
                    *(v198 + 16) = v42;
                    *(v131 + 8 * v130 + 32) = v188;
                  }

                  else
                  {
                  }
                }
              }

              while (1)
              {
                v120 = v118 + 1;
                if (__OFADD__(v118, 1))
                {
                  break;
                }

                if (v120 >= v46)
                {
                  v42 = v203;

                  sub_1C440D164();
                  v135 = *(v109 + 32);
                  v137 = *(v135 + 56);
                  v136 = v135 + 56;
                  v138 = *(*(v109 + 32) + 32);
                  sub_1C44410A0();
                  sub_1C440FDCC();
                  v141 = v140 & v139;
                  v46 = (v142 + 63) >> 6;
                  v144 = v143;
                  swift_bridgeObjectRetain_n();
                  v145 = 0;
                  v188 = MEMORY[0x1E69E7CC0];
                  while (v141)
                  {
                    v146 = v141;
LABEL_60:
                    v141 = (v146 - 1) & v146;
                    if (v45[2])
                    {
                      sub_1C442AB14();
                      v148 = *(v144 + 48);
                      sub_1C4416844();
                      v150 = *v149;
                      v38 = v149[1];
                      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                      v42 = v45;
                      v151 = sub_1C445FAA8(v150, v38);
                      if (v152)
                      {
                        v203 = *(v45[7] + 8 * v151);

                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v155 = *(v188 + 16);
                          sub_1C43FCEC0();
                          sub_1C445C3F8();
                          v188 = v156;
                        }

                        v38 = *(v188 + 16);
                        v153 = *(v188 + 24);
                        v42 = v38 + 1;
                        if (v38 >= v153 >> 1)
                        {
                          sub_1C43FFD98(v153);
                          sub_1C445C3F8();
                          v188 = v157;
                        }

                        v154 = v188;
                        *(v188 + 16) = v42;
                        *(v154 + 8 * v38 + 32) = v203;
                      }

                      else
                      {
                      }
                    }
                  }

                  while (1)
                  {
                    v147 = v145 + 1;
                    if (__OFADD__(v145, 1))
                    {
                      goto LABEL_82;
                    }

                    if (v147 >= v46)
                    {
                      break;
                    }

                    v146 = *(v136 + 8 * v147);
                    ++v145;
                    if (v146)
                    {
                      v145 = v147;
                      goto LABEL_60;
                    }
                  }

                  v158 = (v204 + *(v201 + 32));
                  v159 = *v158;
                  v160 = v158[1];
                  v161 = v197;
                  v162 = v187;
                  sub_1C4BAE7E8();
                  if (v162)
                  {
                    v203 = v162;

                    sub_1C4458588();
                  }

                  else
                  {

                    v163 = *(v161 + 33);
                    sub_1C441BB28(&v218);
                    sub_1C4438D00(v164);
                    v165 = *(v145 + *(v193 + 48));
                    sub_1C440B678();
                    sub_1C4C41B10();
                    v166 = *(v161 + *(v199 + 96));
                    sub_1C4BBA67C();
                    sub_1C441BB28(v217);
                    sub_1C4438D00(v167);
                    sub_1C4C35C78();
                    v203 = 0;
                    sub_1C440B678();
                    sub_1C4C41B10();
                    v168 = *(sub_1C4458588() + 16);

                    if (v168)
                    {
                      v169 = *v197;
                      v170 = v197[1];
                      sub_1C445140C(v215);
                      sub_1C4EF9C88();
                      sub_1C4EF9AD8();
                      sub_1C4402C08(&v211);
                      v171(v168, v190);
                      v168 = v195;
                      v172 = v203;
                      sub_1C4BB8B20();
                      v38 = v209;
                      v46 = v210;
                      v203 = v172;
                      v173 = v184;
                      if (v172)
                      {
                        goto LABEL_78;
                      }
                    }

                    else
                    {
                      v38 = v209;
                      v46 = v210;
                      v173 = v184;
                    }

                    sub_1C4422A7C(&v219);

                    v174 = v194;

                    v175 = v191;
                    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                    v176 = v175;
                    v177 = v203;
                    sub_1C4C90FD0(v197, v168, v174, v75, v176, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192);
                    v42 = v207;
                    v203 = v177;
                    if (!v177)
                    {

                      sub_1C441DFEC(v185, v186);
                      sub_1C4407F44();
                      sub_1C4C41B10();
                      sub_1C440E934();
                      sub_1C4C41B10();
                      v75 = v173;
                      goto LABEL_23;
                    }

LABEL_78:
                  }

                  sub_1C441DFEC(v185, v186);

                  sub_1C4407F44();
                  sub_1C4C41B10();
                  sub_1C440E934();
                  return sub_1C4C41B10();
                }

                v119 = *(v38 + 8 * v120);
                ++v118;
                if (v119)
                {
                  v118 = v120;
                  goto LABEL_45;
                }
              }

              __break(1u);
LABEL_82:
              __break(1u);
              goto LABEL_83;
            }

            v95 = sub_1C4409F48();
            sub_1C441DFEC(v95, v96);

            objc_autoreleasePoolPop(sub_1C4458588());
            v97 = sub_1C4409F48();
            sub_1C441DFEC(v97, v98);
            v203 = 0;
            v38 = v209;
            v46 = v210;
          }

          sub_1C440E934();
          sub_1C4C41B10();
        }
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v99 = sub_1C4F00968();
      v100 = sub_1C4F01CD8();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = sub_1C43FD084();
        sub_1C43FEC60();
        v102 = swift_slowAlloc();
        v216 = v102;
        *v101 = v202;
        v103 = sub_1C43FE99C();
        v106 = sub_1C441D828(v103, v104, v105);

        *(v101 + 4) = v106;
        _os_log_impl(&dword_1C43F8000, v99, v100, "ViewMigration: Failed to retrieve contents of config for %s", v101, 0xCu);
        sub_1C440962C(v102);
        v38 = v209;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        v46 = v210;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }

      v75 = v77;
      v42 = v207;
    }
  }

  return result;
}

void sub_1C4C35C78()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v42 = v5;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402A68();
  v41 = sub_1C4EFB768();
  v10 = sub_1C43FCDF8(v41);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v40 = v16 - v15;
  v44 = MEMORY[0x1E69E7CD0];
  v17 = sub_1C4C895B8(v4);
  if (v18)
  {
    sub_1C44869B4(v43, v17, v18);
  }

  v19 = (v4 + *(_s6ConfigVMa() + 52));
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;
    v22 = v19[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44869B4(v43, v21, v20);
  }

  sub_1C43FE984();
  sub_1C4EFBE98();
  if (v2)
  {

LABEL_17:
    sub_1C43FBC80();
  }

  else
  {
    v23 = 0;
    v24 = 1 << *(v44 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v44 + 56);
    v27 = (v24 + 63) >> 6;
    v38 = (v12 + 8);
    for (i = v1; v26; v23 = v28)
    {
      v28 = v23;
LABEL_14:
      sub_1C44168C0();
      v30 = *(v29 + 48);
      sub_1C4416844();
      v32 = *v31;
      v33 = v31[1];
      sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1C4F0CE60;
      *(v34 + 56) = MEMORY[0x1E69E6530];
      *(v34 + 64) = MEMORY[0x1E69A0180];
      *(v34 + 32) = v42;
      *(v34 + 96) = MEMORY[0x1E69E6158];
      *(v34 + 104) = MEMORY[0x1E69A0138];
      *(v34 + 72) = v32;
      *(v34 + 80) = v33;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB728();
      sub_1C4EFC088();
      (*v38)(v40, v41);
      v35 = sub_1C44179F4();
      sub_1C440BAA8(v35, v36, v37, v41);
      sub_1C4EFC0A8();
      v26 &= v26 - 1;
      sub_1C4420C3C(i, &unk_1EC0C06C0, &unk_1C4F10DB0);
    }

    while (1)
    {
      v28 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v28 >= v27)
      {

        goto LABEL_17;
      }

      v26 = *(v44 + 56 + 8 * v28);
      ++v23;
      if (v26)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

void sub_1C4C35FD8()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4EF9C88();
  sub_1C4EF9AD8();
  (*(v3 + 8))(v8, v0);
  sub_1C4BB8B20();
  if (!v9)
  {
    sub_1C4BB6B24();
    sub_1C43FD024();
    sub_1C4BB6B24();
  }
}

uint64_t sub_1C4C36128()
{
  v2 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FE984();
  result = sub_1C4EFBE98();
  if (!v0)
  {
    sub_1C43FBE94();
    sub_1C4EFB768();
    v7 = sub_1C44179F4();
    sub_1C440BAA8(v7, v8, v9, v10);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v1, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

uint64_t sub_1C4C36200()
{
  v2 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FE984();
  result = sub_1C4EFBE98();
  if (!v0)
  {
    sub_1C43FBE94();
    sub_1C4EFB768();
    v7 = sub_1C44179F4();
    sub_1C440BAA8(v7, v8, v9, v10);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v1, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

void sub_1C4C362D8()
{
  sub_1C43FE96C();
  v2 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v3 = sub_1C43FBD18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C447F150();
  v10 = sub_1C4EFBC98();
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FE984();
  MEMORY[0x1C693A960](0xD00000000000054ALL);
  sub_1C4EFBEA8();
  if (v0)
  {
    v17 = *(v13 + 8);
    v18 = sub_1C443DF7C();
    v19(v18);
  }

  else
  {
    v30 = v8;
    v20 = *(v13 + 8);
    v21 = sub_1C443DF7C();
    v20(v21);
    v22 = sub_1C4EFB768();
    sub_1C43FCF64();
    sub_1C440BAA8(v23, v24, v25, v22);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v1, &unk_1EC0C06C0, &unk_1C4F10DB0);

    MEMORY[0x1C693A960](0xD000000000000576, 0x80000001C4FBB1B0);
    sub_1C4EFBEA8();
    v26 = sub_1C43FEF2C();
    (v20)(v26, v10);
    sub_1C43FCF64();
    sub_1C440BAA8(v27, v28, v29, v22);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v30, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C43FBC80();
}

void sub_1C4C36558()
{
  sub_1C43FE96C();
  v20 = sub_1C4EFB768();
  v1 = sub_1C43FCDF8(v20);
  v19 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBFDC();
  v16 = v5;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBF38();
  v17 = v7;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD230();
  v18 = v9;
  v10 = off_1EC0C4FC8;
  v11 = *(off_1EC0C4FC8 + 2);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = 0;
  for (i = v10 + 5; ; i += 2)
  {
    if (v11 == v12)
    {

      sub_1C4EFB758();
      sub_1C44178D8();
      sub_1C4EFBFF8();
      if (v0)
      {
        (*(v19 + 8))(v18, v20);
      }

      else
      {
        v15 = *(v19 + 8);
        v15(v18, v20);
        sub_1C4EFB758();
        sub_1C44178D8();
        sub_1C4EFBFF8();
        v15(v17, v20);
        sub_1C4EFB758();
        sub_1C44178D8();
        sub_1C4EFBFF8();
        v15(v16, v20);
      }

      goto LABEL_12;
    }

    if (v12 >= v10[2])
    {
      break;
    }

    v0 = *(i - 1);
    v14 = *i;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v0, v14);

    sub_1C44178D8();
    sub_1C4EFBF68();

    if (v0)
    {

LABEL_12:
      sub_1C43FBC80();
      return;
    }

    ++v12;
  }

  __break(1u);
}

void sub_1C4C367F0(uint64_t a1, uint64_t a2)
{
  swift_unownedRetain();

  sub_1C4BABFC8();
  if (v2)
  {

LABEL_8:
    swift_unownedRelease();
  }

  else
  {
    v6 = v5;
    v7 = 0;
    v15 = *(v5 + 16);
    for (i = (v5 + 48); ; i += 3)
    {
      if (v15 == v7)
      {

        goto LABEL_8;
      }

      if (v7 >= *(v6 + 16))
      {
        break;
      }

      v9 = *(i - 1);
      v10 = *i;
      v11 = a1;
      v12 = a2;
      v13 = *(i - 2);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C456902C(&unk_1EC0C6380, &qword_1C4F37698);
      sub_1C4C41B64();
      sub_1C4F00F28();
      v14 = v13;
      a2 = v12;
      a1 = v11;
      sub_1C4CEC38C(v14);

      ++v7;
    }

    __break(1u);
  }
}

void sub_1C4C369A0()
{
  sub_1C43FE96C();
  v1 = v0;
  v2 = sub_1C4EFB768();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v96 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v96 - v12;
  v13 = *(off_1EC0C4FC8 + 2);
  v14 = off_1EC0C4FC8 + 32;
  v110 = v15 + 8;
  v16 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = 0;
  v111 = v2;
  v109 = v1;
  v106 = v11;
  v100 = v16;
  v103 = v8;
  v98 = v13;
  v97 = v14;
LABEL_2:
  if (v17 == v13)
  {
    goto LABEL_52;
  }

  if (v17 < *(v16 + 16))
  {
    v18 = &v14[16 * v17];
    v20 = *v18;
    v19 = *(v18 + 1);
    v21 = aRebuilding[1];
    v117 = aRebuilding[0];
    v118 = aRebuilding[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v112 = v20;
    v104 = v19;
    MEMORY[0x1C6940010](v20, v19);
    v22 = v117;
    v102 = v118;
    sub_1C441D424();
    v23 = sub_1C4EFBE58();
    if (!v21)
    {
      v101 = v22;
      if (v23)
      {
        sub_1C441D424();
        sub_1C4EFBF68();
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440BB4C();
      sub_1C441D424();
      v107 = sub_1C46A9F90(v24, v25, v26, v27);
      sub_1C440BB4C();
      sub_1C441D424();
      v32 = sub_1C46A9F90(v28, v29, v30, v31);
      v99 = v17 + 1;

      v34 = v32 + 64;
      v33 = *(v32 + 64);
      v35 = *(v32 + 32);
      sub_1C44410A0();
      sub_1C440FDCC();
      v38 = v37 & v36;
      v40 = (v39 + 63) >> 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v41 = 0;
      v42 = v32;
      v119 = v32;
      while (v38)
      {
        v43 = v41;
LABEL_13:
        v44 = *(v42 + 48);
        sub_1C4416844();
        v46 = *v45;
        v47 = v45[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C441D424();
        sub_1C4EFBF58();
        if (v46)
        {
LABEL_50:

          goto LABEL_52;
        }

        v38 &= v38 - 1;

        v41 = v43;
        v42 = v32;
      }

      while (1)
      {
        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v43 >= v40)
        {
          break;
        }

        v38 = *(v34 + 8 * v43);
        ++v41;
        if (v38)
        {
          goto LABEL_13;
        }
      }

      v48 = 1 << *(v42 + 32);
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      else
      {
        v49 = -1;
      }

      v50 = v49 & *(v42 + 64);
      v51 = (v48 + 63) >> 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v52 = 0;
      if (v50)
      {
        while (1)
        {
          v108 = 0;
          v53 = v52;
LABEL_24:
          v54 = (v53 << 10) | (16 * __clz(__rbit64(v50)));
          v55 = *(v42 + 56);
          v56 = (*(v42 + 48) + v54);
          v57 = *v56;
          v58 = v56[1];
          v59 = (v55 + v54);
          v60 = v59[1];
          v117 = *v59;
          v118 = v60;
          v115 = 25180;
          v116 = 0xE200000000000000;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v61 = sub_1C445852C();
          MEMORY[0x1C6940010](v61);
          MEMORY[0x1C6940010](25180, 0xE200000000000000);
          v113 = 0x69646C6975626572;
          v114 = 0xEB000000005F676ELL;
          v62 = sub_1C445852C();
          MEMORY[0x1C6940010](v62);

          sub_1C4415EA8();
          sub_1C4F02008();

          sub_1C4EFB758();
          sub_1C4430758();
          v63 = v108;
          sub_1C4EFBFF8();
          if (v63)
          {
            break;
          }

          v50 &= v50 - 1;
          v64 = sub_1C43FCA84();
          v65(v64);

          v52 = v53;
          v42 = v32;
          if (!v50)
          {
            goto LABEL_20;
          }
        }

        v94 = sub_1C43FCA84();
        v95(v94);
        goto LABEL_50;
      }

LABEL_20:
      while (1)
      {
        v53 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v53 >= v51)
        {

          sub_1C441D424();
          sub_1C4EFBFE8();

          v66 = 0;
          v67 = v107 + 64;
          v68 = 1 << *(v107 + 32);
          if (v68 < 64)
          {
            v69 = ~(-1 << v68);
          }

          else
          {
            v69 = -1;
          }

          v70 = v69 & *(v107 + 64);
          for (i = (v68 + 63) >> 6; v70; v66 = v72)
          {
            v72 = v66;
LABEL_36:
            v74 = *(v107 + 56);
            sub_1C4416844();
            v76 = *v75;
            v77 = v75[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4EFB758();
            sub_1C4430758();
            sub_1C4EFBFF8();
            v70 &= v70 - 1;
            v78 = sub_1C43FCA84();
            v79(v78);
          }

          v73 = v119;
          while (1)
          {
            v72 = v66 + 1;
            if (__OFADD__(v66, 1))
            {
              goto LABEL_55;
            }

            if (v72 >= i)
            {

              v80 = *(v119 + 32);
              sub_1C44410A0();
              v83 = *(v119 + 64);
              if (v82 < 64)
              {
                v84 = ~(-1 << v82);
              }

              else
              {
                v84 = -1;
              }

              v85 = v84 & v83;
              v86 = (v82 + 63) >> 6;
              if ((v84 & v83) != 0)
              {
                do
                {
                  v87 = v81;
LABEL_46:
                  v88 = *(v73 + 56);
                  sub_1C4416844();
                  v90 = *v89;
                  v91 = v89[1];
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C4EFB758();
                  sub_1C4430758();
                  sub_1C441D424();
                  sub_1C4EFBFF8();
                  v85 &= v85 - 1;
                  v92 = sub_1C43FCA84();
                  v93(v92);

                  v81 = v87;
                  v73 = v119;
                }

                while (v85);
              }

              while (1)
              {
                v87 = v81 + 1;
                if (__OFADD__(v81, 1))
                {
                  goto LABEL_56;
                }

                if (v87 >= v86)
                {

                  v17 = v99;
                  v16 = v100;
                  v13 = v98;
                  v14 = v97;
                  goto LABEL_2;
                }

                v85 = *(v34 + 8 * v87);
                ++v81;
                if (v85)
                {
                  goto LABEL_46;
                }
              }
            }

            v70 = *(v67 + 8 * v72);
            ++v66;
            if (v70)
            {
              goto LABEL_36;
            }
          }
        }

        v50 = *(v34 + 8 * v53);
        ++v52;
        if (v50)
        {
          v108 = 0;
          goto LABEL_24;
        }
      }

LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_52:

    sub_1C43FBC80();
    return;
  }

LABEL_57:
  __break(1u);
}

void sub_1C4C37198(uint64_t a1, void *a2)
{
  v18 = MEMORY[0x1E69E7CD0];
  sub_1C4CCEF34(0, 1);
  if (!v2)
  {
    v5 = v4;
    v17 = MEMORY[0x1E69E7CC0];
    v6 = sub_1C4428DA0(v4);
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v15 = v5;
    while (1)
    {
      if (v6 == v7)
      {

        return;
      }

      if (v8)
      {
        v10 = MEMORY[0x1C6940F90](v7, v5);
      }

      else
      {
        if (v7 >= *(v9 + 16))
        {
          goto LABEL_16;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      if (__OFADD__(v7, 1))
      {
        break;
      }

      v16 = v10;
      if (sub_1C4C37340(&v16, a2, &v18))
      {
        sub_1C4F02318();
        v11 = v9;
        v12 = v8;
        v13 = a2;
        v14 = *(v17 + 16);
        sub_1C4F02358();
        a2 = v13;
        v8 = v12;
        v9 = v11;
        sub_1C4F02368();
        sub_1C4F02328();
        v5 = v15;
      }

      else
      {
      }

      ++v7;
    }

    __break(1u);
LABEL_16:
    __break(1u);

    __break(1u);
  }
}

uint64_t sub_1C4C37340(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  if (sub_1C4499AD0(*(*a1 + 16), *(*a1 + 24), a2))
  {
    swift_beginAccess();
    v5 = *a3;
    swift_beginAccess();
    v6 = v4[4];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v7 = sub_1C4C34B9C(v5, v6);

    if (v7)
    {
      v8 = v4[2];
      v9 = v4[3];
      swift_beginAccess();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44869B4(&v23, v8, v9);
      swift_endAccess();

      return 1;
    }

    if (qword_1EDDFD018 != -1)
    {
      swift_once();
    }

    v11 = sub_1C4F00978();
    sub_1C442B738(v11, qword_1EDE2DDF8);

    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CD8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_1C441D828(v4[2], v4[3], &v23);
      *(v14 + 12) = 2080;
      v16 = v4[4];
      swift_beginAccess();
      v17 = *a3;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v18 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4A7C858(v18, v16);

      v19 = sub_1C4F01AC8();
      v21 = v20;

      v22 = sub_1C441D828(v19, v21, &v23);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_1C43F8000, v12, v13, "ViewMigration: skipping %s due to missing dependency %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v15, -1, -1);
      MEMORY[0x1C6942830](v14, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_1C4C375F8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  result = sub_1C4C38504(a1, a2);
  if (v2)
  {
    return result;
  }

  v152 = v4;
  v161 = v3;
  v163 = sub_1C4428DA0(v4);
  if (v163)
  {
    v6 = 0;
    v7 = 0;
    v162 = v4 & 0xC000000000000001;
    v8 = MEMORY[0x1E69E7CC8];
    buf = (v4 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v162)
      {
        v9 = sub_1C445852C();
        v10 = MEMORY[0x1C6940F90](v9);
      }

      else
      {
        if (v6 >= *(buf + 2))
        {
          goto LABEL_137;
        }

        v10 = *(v4 + 8 * v6 + 32);
      }

      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
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
        sub_1C441A86C();
        swift_once();
LABEL_101:
        v99 = sub_1C4F00978();
        sub_1C43FCEE8(v99, qword_1EDE2DDF8);
        swift_bridgeObjectRetain_n();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v100 = sub_1C4F00968();
        v101 = sub_1C4F01CE8();
        if (os_log_type_enabled(v100, v101))
        {
          sub_1C441024C();
          v102 = swift_slowAlloc();
          *v102 = 134218240;
          *(v102 + 4) = sub_1C4428DA0(v4);

          *(v102 + 12) = 2048;
          *(v102 + 14) = sub_1C4428DA0(v164);

          _os_log_impl(&dword_1C43F8000, v100, v101, "ViewMigration: Failed to sort nodes [before: %ld, after: %ld]", v102, 0x16u);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v108 = sub_1C4F00968();
        v109 = sub_1C4F01CE8();

        if (!os_log_type_enabled(v108, v109))
        {
          goto LABEL_118;
        }

        v155 = v109;
        logb = v108;
        v110 = sub_1C43FD084();
        sub_1C43FEC60();
        v148 = swift_slowAlloc();
        *&v165 = v148;
        bufa = v110;
        *v110 = 136315138;
        v111 = MEMORY[0x1E69E7CC0];
        if (!v161)
        {
          goto LABEL_117;
        }

        v168 = MEMORY[0x1E69E7CC0];
        sub_1C44CD9C0();
        v112 = v161;
        if (v161 < 0)
        {
          __break(1u);
        }

        else
        {
          v113 = 0;
          v111 = v168;
          v114 = v4 & 0xC000000000000001;
          do
          {
            if (v114)
            {
              v115 = sub_1C4409F48();
              v116 = MEMORY[0x1C6940F90](v115);
            }

            else
            {
              v116 = *(v4 + 8 * v113 + 32);
            }

            v117 = *(v116 + 16);
            v118 = *(v116 + 24);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

            v168 = v111;
            v120 = *(v111 + 2);
            v119 = *(v111 + 3);
            if (v120 >= v119 >> 1)
            {
              sub_1C43FCFE8(v119);
              sub_1C44CD9C0();
              v112 = v161;
              v111 = v168;
            }

            ++v113;
            *(v111 + 2) = v120 + 1;
            v121 = &v111[v120];
            *(v121 + 4) = v117;
            *(v121 + 5) = v118;
            v7 = v162;
            v4 = v152;
          }

          while (v112 != v113);
LABEL_117:
          v122 = MEMORY[0x1C6940380](v111, MEMORY[0x1E69E6158]);
          v124 = v123;

          v125 = sub_1C441D828(v122, v124, &v165);

          *(bufa + 4) = v125;
          v108 = logb;
          _os_log_impl(&dword_1C43F8000, logb, v155, "ViewMigration: Before: %s", bufa, 0xCu);
          sub_1C440962C(v148);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
LABEL_118:

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v126 = sub_1C4F00968();
          v127 = sub_1C4F01CE8();

          if (!os_log_type_enabled(v126, v127))
          {
            goto LABEL_130;
          }

          v128 = sub_1C43FD084();
          sub_1C43FEC60();
          logc = swift_slowAlloc();
          *&v165 = logc;
          *v128 = 136315138;
          v129 = sub_1C4428DA0(v164);
          v130 = MEMORY[0x1E69E7CC0];
          if (!v129)
          {
            goto LABEL_129;
          }

          v131 = v129;
          bufb = v128;
          v153 = v127;
          v156 = v126;
          v168 = MEMORY[0x1E69E7CC0];
          sub_1C44CD9C0();
          if ((v131 & 0x8000000000000000) == 0)
          {
            v132 = 0;
            v130 = v168;
            do
            {
              if ((v164 & 0xC000000000000001) != 0)
              {
                v133 = MEMORY[0x1C6940F90](v132, v164);
              }

              else
              {
                v133 = *(v164 + 8 * v132 + 32);
              }

              v134 = *(v133 + 16);
              v135 = *(v133 + 24);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

              v168 = v130;
              v137 = *(v130 + 2);
              v136 = *(v130 + 3);
              if (v137 >= v136 >> 1)
              {
                sub_1C43FCFE8(v136);
                sub_1C44CD9C0();
                v130 = v168;
              }

              ++v132;
              *(v130 + 2) = v137 + 1;
              v138 = &v130[v137];
              *(v138 + 4) = v134;
              *(v138 + 5) = v135;
            }

            while (v131 != v132);
            v7 = v162;
            v126 = v156;
            v127 = v153;
            v128 = bufb;
LABEL_129:
            v139 = MEMORY[0x1C6940380](v130, MEMORY[0x1E69E6158]);
            v141 = v140;

            v142 = sub_1C441D828(v139, v141, &v165);

            *(v128 + 4) = v142;
            _os_log_impl(&dword_1C43F8000, v126, v127, "ViewMigration: After: %s", v128, 0xCu);
            sub_1C440962C(logc);
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
LABEL_130:

            *&v165 = 0;
            *(&v165 + 1) = 0xE000000000000000;
            sub_1C4F02248();
            MEMORY[0x1C6940010](0xD000000000000036, 0x80000001C4FBBEE0);
            v168 = v161;
            sub_1C4402CD0();
            v143 = sub_1C4F02858();
            MEMORY[0x1C6940010](v143);

            sub_1C43FE984();
            MEMORY[0x1C6940010](0xD000000000000013);

            sub_1C4428DA0(v164);
            sub_1C4404CE0();

            v168 = &v165;
            sub_1C4402CD0();
            v144 = sub_1C4F02858();
            MEMORY[0x1C6940010](v144);

            v145 = v165;
            sub_1C450B034();
            sub_1C43FFB2C();
            *v146 = 0;
            *(v146 + 8) = 0xE000000000000000;
            *(v146 + 16) = v145;
            v147 = v166;
            *(v146 + 32) = v165;
            *(v146 + 48) = v147;
            *(v146 + 64) = 9;
            swift_willThrow();

            v107 = v7;
            return sub_1C44239FC(v107);
          }
        }

        __break(1u);
LABEL_143:
        result = sub_1C4F029F8();
        __break(1u);
        return result;
      }

      if (*(v3 + 16))
      {
        break;
      }

LABEL_28:
      ++v6;
      if (v11 == v163)
      {
        goto LABEL_31;
      }
    }

    v164 = v6 + 1;
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C445FAA8(v12, v13);
    v16 = v15;

    if ((v16 & 1) == 0)
    {

LABEL_27:
      v11 = v6 + 1;
      goto LABEL_28;
    }

    v17 = (*(v3 + 56) + 16 * v14);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v10 + 24);
    log = *(v10 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44239FC(v7);
    swift_isUniquelyReferenced_nonNull_native();
    *&v165 = v8;
    v21 = sub_1C445FAA8(v18, v19);
    v23 = v8[2];
    v24 = (v22 & 1) == 0;
    v7 = (v23 + v24);
    if (__OFADD__(v23, v24))
    {
      goto LABEL_138;
    }

    v4 = v21;
    v25 = v22;
    sub_1C456902C(&qword_1EC0BDDB8, &unk_1C4F32060);
    if (sub_1C4F02458())
    {
      v26 = v165;
      sub_1C445FAA8(v18, v19);
      sub_1C4404D54();
      if (!v55)
      {
        goto LABEL_143;
      }

      v4 = v27;
      if ((v25 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v26 = v165;
      if ((v25 & 1) == 0)
      {
LABEL_16:
        sub_1C4401D38(&v26[v4 >> 6]);
        v28 = (v26[6] + 16 * v4);
        *v28 = v18;
        v28[1] = v19;
        *(v26[7] + 8 * v4) = MEMORY[0x1E69E7CC0];
        v29 = v26[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_139;
        }

        v8 = v26;
        v26[2] = v31;
        goto LABEL_22;
      }
    }

    v8 = v26;
LABEL_22:
    v32 = v8[7];
    v33 = *(v32 + 8 * v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v32 + 8 * v4) = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = *(v33 + 16);
      sub_1C43FCEC0();
      sub_1C443D664();
      v33 = v40;
      *(v32 + 8 * v4) = v40;
    }

    v36 = *(v33 + 16);
    v35 = *(v33 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_1C43FFD98(v35);
      sub_1C443D664();
      *(v32 + 8 * v4) = v41;
    }

    v37 = *(v32 + 8 * v4);
    *(v37 + 16) = v36 + 1;
    v38 = v37 + 16 * v36;
    *(v38 + 32) = log;
    *(v38 + 40) = v20;
    v7 = sub_1C48362FC;
    v4 = v152;
    v3 = v161;
    goto LABEL_27;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
LABEL_31:
  v42 = MEMORY[0x1E69E7CC0];
  v172 = MEMORY[0x1E69E7CC0];
  v170 = MEMORY[0x1E69E7CC0];
  v171 = MEMORY[0x1E69E7CC0];
  v169 = MEMORY[0x1E69E7CC0];
  v162 = v7;
  if (!v163)
  {
LABEL_98:
    v98 = sub_1C4428DA0(v4);
    v164 = v42;
    if (v98 == sub_1C4428DA0(v42))
    {

      sub_1C44239FC(v7);
      return v42;
    }

    v161 = v98;
    if (qword_1EDDFD018 != -1)
    {
      goto LABEL_140;
    }

    goto LABEL_101;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v164 = 0;
  v7 = 0;
  v43 = 0;
  v154 = v42;
  loga = v42;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v97 = sub_1C43FD574();
      v44 = MEMORY[0x1C6940F90](v97);
    }

    else
    {
      if ((v43 & 0x8000000000000000) != 0)
      {
        goto LABEL_134;
      }

      if (v43 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_136;
      }

      v44 = *(v4 + 8 * v43 + 32);
    }

    v30 = __OFADD__(v43++, 1);
    if (v30)
    {
      goto LABEL_135;
    }

    if (!v7)
    {
      if (*(v3 + 16))
      {
        v57 = v44[2];
        v58 = v44[3];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v59 = sub_1C445FAA8(v57, v58);
        v61 = v60;

        if (v61)
        {
          v62 = (*(v3 + 56) + 16 * v59);
          v63 = *v62;
          v7 = v62[1];
          v64 = v8[2];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (!v64 || (v65 = sub_1C445FAA8(v63, v7), (v66 & 1) == 0) || (v67 = *(v8[7] + 8 * v65), v70 = *(v67 + 16), v68 = v67 + 16, (v69 = v70) == 0) || ((v71 = (v68 + 16 * v69), *v71 == v44[2]) ? (v72 = v71[1] == v44[3]) : (v72 = 0), !v72 && (sub_1C4F02938() & 1) == 0))
          {

            MEMORY[0x1C6940330](v84);
            sub_1C4405468(v171);
            if (v75)
            {
              sub_1C43FCFE8(v85);
              sub_1C444C3BC();
            }

            sub_1C4451438();

            v164 = v63;
            goto LABEL_90;
          }
        }
      }

      MEMORY[0x1C6940330](v73);
      sub_1C4405468(v172);
      if (v75)
      {
        sub_1C43FCFE8(v74);
        sub_1C444C3BC();
      }

      sub_1C4451438();

      v7 = 0;
      goto LABEL_90;
    }

    if (!v8[2])
    {

      goto LABEL_105;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v45 = sub_1C445FAA8(v164, v7);
    if ((v46 & 1) == 0)
    {
      break;
    }

    v47 = *(v8[7] + 8 * v45);
    if (!*(v3 + 16))
    {
      v76 = *(v8[7] + 8 * v45);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_64:

LABEL_65:
      sub_1C440D164();
      v77 = v44[5];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v78 = sub_1C43FD024();
      v80 = sub_1C4C418FC(v78, v79);

      if (v80)
      {
        MEMORY[0x1C6940330](v81);
        sub_1C4405468(v169);
        if (v75)
        {
          sub_1C43FCFE8(v82);
          sub_1C444C3BC();
        }

        sub_1C4451438();

        v154 = v169;
      }

      else
      {
        MEMORY[0x1C6940330](v81);
        sub_1C4405468(v170);
        if (v75)
        {
          sub_1C43FCFE8(v83);
          sub_1C444C3BC();
        }

        sub_1C4451438();

        loga = v170;
      }

      goto LABEL_90;
    }

    v48 = v44[2];
    v49 = v44[3];
    v50 = *(v8[7] + 8 * v45);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v51 = sub_1C445FAA8(v48, v49);
    v53 = v52;
    v3 = v161;

    if ((v53 & 1) == 0)
    {
      goto LABEL_64;
    }

    v54 = (*(v161 + 56) + 16 * v51);
    v55 = *v54 == v164 && v7 == v54[1];
    if (v55)
    {
    }

    else
    {
      v56 = sub_1C4F02938();

      if ((v56 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    MEMORY[0x1C6940330](v86);
    sub_1C4405468(v171);
    if (v75)
    {
      sub_1C43FCFE8(v87);
      sub_1C444C3BC();
    }

    sub_1C4451438();
    v88 = *(v47 + 16);
    if (!v88)
    {

      goto LABEL_90;
    }

    v89 = (v47 + 16 + 16 * v88);
    v91 = *v89;
    v90 = v89[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    if (v91 != v44[2] || v90 != v44[3])
    {
      sub_1C4402120();
      v93 = sub_1C4F02938();

      if (v93)
      {
        goto LABEL_87;
      }

LABEL_90:
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }

      goto LABEL_91;
    }

LABEL_87:

    sub_1C49D4C70(loga);
    sub_1C49D4C70(v171);
    sub_1C45FB124(v4, v43);
    v95 = v94;

    *&v165 = v154;
    sub_1C49D4C70(v95);

    v43 = 0;
    v4 = v154;
    v170 = MEMORY[0x1E69E7CC0];
    v171 = MEMORY[0x1E69E7CC0];
    v169 = MEMORY[0x1E69E7CC0];
    v164 = 0;
    v7 = 0;
    if (v154 < 0)
    {
      v154 = MEMORY[0x1E69E7CC0];
      loga = MEMORY[0x1E69E7CC0];
LABEL_97:
      v96 = sub_1C4F02128();
      goto LABEL_93;
    }

    v154 = MEMORY[0x1E69E7CC0];
    loga = MEMORY[0x1E69E7CC0];
LABEL_91:
    if ((v4 & 0x4000000000000000) != 0)
    {
      goto LABEL_97;
    }

    v96 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_93:
    if (v43 == v96)
    {

      v42 = v172;
      v7 = v162;
      v4 = v152;
      goto LABEL_98;
    }
  }

LABEL_105:

  *&v165 = 0;
  *(&v165 + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(&v165, "Found group ");
  BYTE13(v165) = 0;
  HIWORD(v165) = -5120;
  MEMORY[0x1C6940010](v164, v7);

  MEMORY[0x1C6940010](0xD00000000000001ALL, 0x80000001C4FBBF40);
  v103 = v165;
  sub_1C450B034();
  sub_1C43FFB2C();
  *v104 = v103;
  v105 = v167;
  v106 = v166;
  *(v104 + 16) = v165;
  *(v104 + 32) = v106;
  *(v104 + 48) = v105;
  *(v104 + 64) = 12;
  swift_willThrow();

  v107 = v162;
  return sub_1C44239FC(v107);
}

uint64_t sub_1C4C38504(uint64_t a1, uint64_t a2)
{
  sub_1C4403FC0();
  _s17ViewDependencyDAGCMa();
  inited = swift_initStackObject();
  _s7DAGNodeCMa();
  v202 = sub_1C4F00F28();
  *(inited + 16) = v202;
  v213 = inited;
  v204 = sub_1C4428DA0(v2);
  if (!v204)
  {
    v211 = 0;
    v8 = MEMORY[0x1E69E7CC8];
    goto LABEL_111;
  }

  v211 = 0;
  v6 = 0;
  v7 = v2 & 0xC000000000000001;
  v194 = v2 + 32;
  v8 = MEMORY[0x1E69E7CC8];
  v243 = a2;
  v196 = v2 & 0xC000000000000001;
  v198 = v2;
LABEL_3:
  v9 = v7;
  sub_1C4431590(v6, v7 == 0);
  if (v9)
  {
    v10 = sub_1C4402120();
    v219 = MEMORY[0x1C6940F90](v10);
  }

  else
  {
    v219 = *(v194 + 8 * v6);
  }

  v11 = __OFADD__(v6, 1);
  v12 = v6 + 1;
  if (v11)
  {
    goto LABEL_144;
  }

  v206 = v12;
  v215 = v8;
  sub_1C440D164();
  v20 = *(v219 + 32);
  v21 = *(v20 + 16);
  if (v21)
  {
    v245.n128_u64[0] = MEMORY[0x1E69E7CC0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44CD9C0();
    v22 = v245.n128_u64[0];
    v25 = sub_1C486C288(v20);
    v26 = 0;
    v238 = v20 + 56;
    v224 = v20 + 64;
    v226 = v21;
    v228 = v20;
    if (v25 < 0)
    {
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
      goto LABEL_142;
    }

    while (1)
    {
      if (v25 >= 1 << *(v20 + 32))
      {
        goto LABEL_129;
      }

      v3 = v25 >> 6;
      if ((*(v238 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
      {
        goto LABEL_130;
      }

      if (*(v20 + 36) != v23)
      {
        goto LABEL_131;
      }

      v231 = v24;
      v234 = v23;
      v27 = (*(v20 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(a2 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v30)
      {
        v31 = v22;
        v32 = sub_1C445FAA8(v28, v29);
        if (v33)
        {
          v34 = (*(a2 + 56) + 16 * v32);
          v28 = *v34;
          v35 = v34[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          v29 = v35;
        }

        v22 = v31;
      }

      v36 = v234;
      v245.n128_u64[0] = v22;
      v38 = *(v22 + 16);
      v37 = *(v22 + 24);
      v39 = v231;
      if (v38 >= v37 >> 1)
      {
        sub_1C43FCFE8(v37);
        sub_1C44CD9C0();
        v39 = v231;
        v36 = v234;
        v22 = v245.n128_u64[0];
      }

      *(v22 + 16) = v38 + 1;
      v40 = v22 + 16 * v38;
      *(v40 + 32) = v28;
      *(v40 + 40) = v29;
      if (v39)
      {
        goto LABEL_147;
      }

      v20 = v228;
      v41 = 1 << *(v228 + 32);
      a2 = v243;
      if (v25 >= v41)
      {
        goto LABEL_132;
      }

      v42 = *(v238 + 8 * v3);
      if ((v42 & (1 << v25)) == 0)
      {
        goto LABEL_133;
      }

      if (*(v228 + 36) != v36)
      {
        goto LABEL_134;
      }

      if ((v42 & (-2 << (v25 & 0x3F))) != 0)
      {
        sub_1C442AB14();
        v41 = v43 | v25 & 0x7FFFFFFFFFFFFFC0;
        v44 = v226;
      }

      else
      {
        v235 = v22;
        v45 = v3 << 6;
        v46 = v3 + 1;
        v44 = v226;
        v47 = (v224 + 8 * v3);
        while (v46 < (v41 + 63) >> 6)
        {
          v49 = *v47++;
          v48 = v49;
          v45 += 64;
          ++v46;
          if (v49)
          {
            sub_1C45E8E98(v25);
            v41 = __clz(__rbit64(v48)) + v45;
            goto LABEL_29;
          }
        }

        sub_1C45E8E98(v25);
LABEL_29:
        a2 = v243;
        v22 = v235;
      }

      if (++v26 == v44)
      {
        break;
      }

      v24 = 0;
      v23 = *(v228 + 36);
      v25 = v41;
      if (v41 < 0)
      {
        goto LABEL_129;
      }
    }
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4499940(v22, v13, v14, v15, v16, v17, v18, v19, v192, v194, v196, v198, v200, v202, v204, v206, v209, v211, v213, v215, v219, v222);
  v51 = v50;
  v248 = v50;
  sub_1C440D164();
  v59 = *(v220 + 40);
  v60 = *(v59 + 16);
  v210 = v51;
  if (v60)
  {
    v245.n128_u64[0] = MEMORY[0x1E69E7CC0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44CD9C0();
    v239 = v245.n128_u64[0];
    v63 = sub_1C486C288(v59);
    v64 = 0;
    v236 = v59 + 56;
    v223 = v59 + 64;
    v225 = v60;
    v227 = v59;
    if (v63 < 0)
    {
      goto LABEL_135;
    }

    while (1)
    {
      if (v63 >= 1 << *(v59 + 32))
      {
        goto LABEL_135;
      }

      v65 = v63 >> 6;
      v3 = 1 << v63;
      if ((*(v236 + 8 * (v63 >> 6)) & (1 << v63)) == 0)
      {
        goto LABEL_136;
      }

      if (*(v59 + 36) != v61)
      {
        goto LABEL_137;
      }

      v229 = v62;
      v232 = v61;
      v66 = (*(v59 + 48) + 16 * v63);
      v67 = *v66;
      v68 = v66[1];
      v69 = *(a2 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v69)
      {
        v70 = sub_1C445852C();
        v72 = sub_1C445FAA8(v70, v71);
        if (v73)
        {
          v74 = (*(a2 + 56) + 16 * v72);
          v67 = *v74;
          v75 = v74[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          v68 = v75;
        }
      }

      v76 = v232;
      v77 = v239;
      v245.n128_u64[0] = v239;
      v79 = *(v239 + 16);
      v78 = *(v239 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_1C43FCFE8(v78);
        sub_1C44CD9C0();
        v76 = v232;
        v77 = v245.n128_u64[0];
      }

      *(v77 + 16) = v79 + 1;
      v80 = v77 + 16 * v79;
      *(v80 + 32) = v67;
      *(v80 + 40) = v68;
      if (v229)
      {
        goto LABEL_148;
      }

      v59 = v227;
      v81 = 1 << *(v227 + 32);
      a2 = v243;
      if (v63 >= v81)
      {
        goto LABEL_138;
      }

      v82 = *(v236 + 8 * v65);
      if ((v82 & v3) == 0)
      {
        goto LABEL_139;
      }

      if (*(v227 + 36) != v76)
      {
        goto LABEL_140;
      }

      v239 = v77;
      if ((v82 & (-2 << (v63 & 0x3F))) != 0)
      {
        sub_1C442AB14();
        v81 = v83 | v63 & 0x7FFFFFFFFFFFFFC0;
        v84 = v225;
      }

      else
      {
        v85 = v65 << 6;
        v86 = v65 + 1;
        v87 = (v223 + 8 * v65);
        v84 = v225;
        while (v86 < (v81 + 63) >> 6)
        {
          v89 = *v87++;
          v88 = v89;
          v85 += 64;
          ++v86;
          if (v89)
          {
            sub_1C45E8E98(v63);
            v81 = __clz(__rbit64(v88)) + v85;
            goto LABEL_56;
          }
        }

        sub_1C45E8E98(v63);
LABEL_56:
        a2 = v243;
      }

      if (++v64 == v84)
      {
        break;
      }

      v62 = 0;
      v61 = *(v227 + 36);
      v63 = v81;
      if (v81 < 0)
      {
        goto LABEL_135;
      }
    }

    v51 = v210;
    v90 = v239;
  }

  else
  {
    v90 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4499940(v90, v52, v53, v54, v55, v56, v57, v58, v193, v195, v197, v199, v201, v203, v205, v207, v210, v212, v214, v216, v220, v223);
  v92 = v91;
  v94 = *(v221 + 16);
  v93 = *(v221 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v240 = sub_1C44735D4(v94, v93, a2);
  v96 = v95;

  v237 = v96;
  if (v96)
  {
    v98 = v51 + 56;
    v97 = *(v51 + 56);
    v99 = 1 << *(v51 + 32);
    sub_1C440FDCC();
    v102 = v101 & v100;
    v104 = (v103 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v3 = 0;
LABEL_64:
    while (v102)
    {
LABEL_69:
      v102 &= v102 - 1;
      v106 = *(v51 + 48);
      sub_1C4416844();
      v109 = *v107;
      v108 = v107[1];
      if ((v240 != *v107 || v237 != v108) && (sub_1C4F02938() & 1) == 0 && v92[2])
      {
        v110 = v92[5];
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        sub_1C4F02B68();
        sub_1C44180D4();
        do
        {
          v112 = v111 & &v245;
          if (((*(v92 + (((v111 & &v245) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v111 & &v245)) & 1) == 0)
          {

            v51 = v209;
            goto LABEL_64;
          }

          v113 = (v92[6] + 16 * v112);
          if (*v113 == v109 && v113[1] == v108)
          {
            break;
          }

          v115 = sub_1C4F02938();
          v111 = v112 + 1;
        }

        while ((v115 & 1) == 0);

        v179 = v209;

        v180 = sub_1C44A1870();
        sub_1C4455478(v180, v181, v182, v183, v184, v185, v186, v187, v192, v194, v196, v198, v200, v202, v204, v208, v209, v211, v213, v217, v221);
        MEMORY[0x1C6940010](v94, v179);

        MEMORY[0x1C6940010](0x67206E6920736920, 0xED00002070756F72);
        MEMORY[0x1C6940010](v240, v237);

        sub_1C43FE984();
        v177 = 0xD00000000000004ELL;
        goto LABEL_127;
      }
    }

    while (1)
    {
      v105 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_141;
      }

      if (v105 >= v104)
      {
        break;
      }

      v102 = *(v98 + 8 * v105);
      ++v3;
      if (v102)
      {
        v3 = v105;
        goto LABEL_69;
      }
    }

    v116 = sub_1C43FE99C();
    sub_1C4A7E078(v116, v117);

    v118 = v248;
    sub_1C44239FC(v211);
    swift_isUniquelyReferenced_nonNull_native();
    v245.n128_u64[0] = v217;
    v119 = sub_1C43FE99C();
    sub_1C445FAA8(v119, v120);
    sub_1C43FC438();
    if (__OFADD__(v123, v124))
    {
      goto LABEL_146;
    }

    v125 = v121;
    v126 = v122;
    sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
    v127 = sub_1C4F02458();
    v8 = v245.n128_u64[0];
    if (v127)
    {
      v128 = sub_1C445FAA8(v240, v237);
      inited = v213;
      a2 = v243;
      if ((v126 & 1) != (v129 & 1))
      {
        goto LABEL_149;
      }

      v125 = v128;
      if ((v126 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      inited = v213;
      a2 = v243;
      if ((v126 & 1) == 0)
      {
LABEL_86:
        sub_1C44686DC(v125, v240, v237, MEMORY[0x1E69E7CD0], v8);
LABEL_106:
        v149 = *(v8 + 56) + 8 * v125;
        sub_1C4D400DC(v118);

        v211 = sub_1C455B6CC;
        goto LABEL_108;
      }
    }

    goto LABEL_106;
  }

  v131 = *(v51 + 56);
  v130 = v51 + 56;
  v132 = 1 << *(v51 + 32);
  sub_1C440FDCC();
  v135 = v134 & v133;
  v137 = (v136 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v138 = 0;
  do
  {
LABEL_88:
    if (v135)
    {
      v139 = v135;
      goto LABEL_94;
    }

    do
    {
      v140 = v138 + 1;
      if (__OFADD__(v138, 1))
      {
        goto LABEL_143;
      }

      if (v140 >= v137)
      {

        v150 = *(v221 + 16);
        v151 = *(v221 + 24);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        swift_isUniquelyReferenced_nonNull_native();
        v245.n128_u64[0] = v217;
        sub_1C4486BA8();

        a2 = v243;

        v8 = v245.n128_u64[0];
        inited = v213;
LABEL_108:
        v6 = v208;
        v7 = v196;
        if (v208 == v204)
        {
LABEL_111:
          v152 = 0;
          v154 = v8 + 64;
          v153 = *(v8 + 64);
          v155 = *(v8 + 32);
          sub_1C43FF7C8();
          v218 = v8;
          if (v3)
          {
            goto LABEL_116;
          }

          while (1)
          {
            v156 = v152 + 1;
            if (__OFADD__(v152, 1))
            {
              break;
            }

            if (v156 >= a2)
            {

              sub_1C4CCEF34(0, 1);
              if (!v200)
              {
              }

              swift_setDeallocating();
              v167 = *(inited + 16);
              goto LABEL_128;
            }

            v3 = *(v154 + 8 * v156);
            ++v152;
            if (v3)
            {
              v152 = v156;
              do
              {
LABEL_116:
                sub_1C44168C0();
                v158 = v157 | (v152 << 6);
                v159 = (*(v8 + 48) + 16 * v158);
                v160 = v159[1];
                v244 = *v159;
                v161 = *(*(*(v8 + 56) + 8 * v158) + 16);
                if (v161)
                {
                  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
                  v162 = swift_allocObject();
                  v163 = j__malloc_size(v162);
                  v162[2] = v161;
                  v162[3] = 2 * ((v163 - 32) / 16);
                  sub_1C44ECA38();
                  v165 = v245;
                  v242 = v164;
                  v230 = v246.n128_u64[1];
                  v233 = v246.n128_u64[0];
                  v166 = v247;
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C449BB08(v165.n128_u64[0], v165.n128_u64[1], v233, v230, v166);
                  if (v242 != v161)
                  {
                    goto LABEL_145;
                  }
                }

                else
                {
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v162 = MEMORY[0x1E69E7CC0];
                }

                v3 &= v3 - 1;
                inited = v213;
                sub_1C4CCF200(v244, v160, v162);

                v8 = v218;
              }

              while (v3);
            }
          }

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
          result = sub_1C4F029F8();
          __break(1u);
          return result;
        }

        goto LABEL_3;
      }

      v139 = *(v130 + 8 * v140);
      ++v138;
    }

    while (!v139);
    v138 = v140;
LABEL_94:
    v135 = (v139 - 1) & v139;
  }

  while (!v92[2]);
  v241 = (v139 - 1) & v139;
  sub_1C442AB14();
  v141 = *(v51 + 48);
  sub_1C4416844();
  v102 = *v142;
  v143 = v142[1];
  v144 = v92[5];
  sub_1C4F02AF8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F01298();
  sub_1C4F02B68();
  sub_1C44180D4();
  do
  {
    v3 = v145 & &v245;
    if (((*(v92 + (((v145 & &v245) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v145 & &v245)) & 1) == 0)
    {

      v51 = v209;
      v135 = v241;
      goto LABEL_88;
    }

    v146 = (v92[6] + 16 * v3);
    if (*v146 == v102 && v146[1] == v143)
    {
      break;
    }

    v148 = sub_1C4F02938();
    v145 = v3 + 1;
  }

  while ((v148 & 1) == 0);

  v168 = v209;

  v169 = sub_1C44A1870();
  sub_1C4455478(v169, v170, v171, v172, v173, v174, v175, v176, v192, v194, v196, v198, v200, v202, v204, v208, v209, v211, v213, v217, v221);
  MEMORY[0x1C6940010](v135, v168);

  v177 = 0xD00000000000005DLL;
  v178 = 0x80000001C4FBBF60;
LABEL_127:
  MEMORY[0x1C6940010](v177, v178);
  v188 = v245;
  sub_1C450B034();
  v189 = sub_1C43FFB2C();
  v190->n128_u64[0] = 0;
  v190->n128_u64[1] = v102;
  v190[1] = v188;
  sub_1C4411340(v245, v246, v189, v190);

LABEL_128:

  return sub_1C44239FC(v211);
}

uint64_t sub_1C4C3925C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v125 = a4;
  v121 = sub_1C4F00DD8();
  v8 = sub_1C43FCDF8(v121);
  v120 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v13 - v12);
  v123 = sub_1C4F00DC8();
  v14 = sub_1C43FCDF8(v123);
  v122 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD230();
  sub_1C43FD2C8(v19);
  v20 = _s6ConfigVMa();
  v21 = sub_1C43FBD18(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C447F150();
  v25 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  v26 = sub_1C43FBD18(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v112 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v112 - v34;
  v128 = a1;
  v129 = a2;
  v124 = *(a3 + 32);
  sub_1C445EDE8(v124);
  if (v37 == 0x51536D6F74737563 && v36 == 0xE90000000000004CLL)
  {
    v46 = sub_1C43FD574();
    sub_1C44344B8(v46, v47);
LABEL_13:

    goto LABEL_14;
  }

  v39 = sub_1C44624A0();
  v40 = sub_1C43FD574();
  sub_1C44344B8(v40, v41);

  if ((v39 & 1) == 0)
  {
    sub_1C445EDE8(v124);
    if (v43 != 0x51537463656A626FLL || v42 != 0xE90000000000004CLL)
    {
      v45 = sub_1C44624A0();

      if ((v45 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:
  v49 = *(a3 + 208);
  v48 = *(a3 + 216);
  v50 = *(a3 + 224);
  v113 = v4;
  if (v49)
  {
    v51 = *(a3 + 200);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  v52 = *(_s10ViewConfigVMa(0) + 76);
  v114 = a3;
  v53 = a3 + v52;
  v54 = *(v53 + 8);
  v55 = sub_1C4EF98F8();
  sub_1C43FCF64();
  sub_1C440BAA8(v56, v57, v58, v55);
  sub_1C440DA7C();
  sub_1C4C67D64();
  v60 = v59;
  v62 = v61;
  sub_1C4420C3C(v35, &unk_1EC0BABB0, &qword_1C4F16ED0);

  if (v49)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  v63 = *(v53 + 8);
  sub_1C43FCF64();
  sub_1C440BAA8(v64, v65, v66, v55);
  sub_1C4409F48();
  sub_1C440DA7C();
  sub_1C4C67D64();
  sub_1C4420C3C(v33, &unk_1EC0BABB0, &qword_1C4F16ED0);

  a3 = v114;
  v4 = v113;
  __dst[0] = 538976288;
  __dst[1] = 0xE400000000000000;
  MEMORY[0x1C6940010](v60, v62);

  MEMORY[0x1C6940010](0x202020200ALL, 0xE500000000000000);
  v67 = sub_1C43FE5F8();
  MEMORY[0x1C6940010](v67);

  sub_1C4B3C50C();
  v69 = v68;
  v71 = v70;
  sub_1C44F9684(v68, v70);
  sub_1C4434000(v69, v71);
LABEL_19:
  v72 = 0x6F526D6F74737563;
  sub_1C4438D00(v4);
  v73 = *v4;
  sub_1C440B678();
  sub_1C4C41B10();
  sub_1C4C6EC08(v73);
  if (v75 == 0x6F526D6F74737563 && v74 == 0xE900000000000077)
  {
  }

  else
  {
    v72 = sub_1C4F02938();

    if ((v72 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  sub_1C441BB28(&__dst[5]);
  sub_1C4438D00(v77);
  memcpy(__dst, (v72 + 64), sizeof(__dst));
  sub_1C446C964(__dst, v126, &qword_1EC0C4680, &qword_1C4F5E660);
  sub_1C440B678();
  sub_1C4C41B10();
  if (__dst[1])
  {
    v78 = a3 + *(_s10ViewConfigVMa(0) + 76);
    v79 = *(v78 + 8);
    v80 = sub_1C4EF98F8();
    sub_1C43FCF64();
    sub_1C440BAA8(v81, v82, v83, v80);
    sub_1C440DA7C();
    sub_1C4C67D64();
    sub_1C4420C3C(v115, &unk_1EC0BABB0, &qword_1C4F16ED0);
    v84 = *(v78 + 8);
    sub_1C43FCF64();
    sub_1C440BAA8(v85, v86, v87, v80);
    sub_1C440DA7C();
    sub_1C4C67D64();
    sub_1C4420C3C(__dst, &qword_1EC0C4680, &qword_1C4F5E660);
    sub_1C4420C3C(v116, &unk_1EC0BABB0, &qword_1C4F16ED0);
    v126[0] = 538976288;
    v126[1] = 0xE400000000000000;
    v88 = sub_1C43FD024();
    MEMORY[0x1C6940010](v88);

    MEMORY[0x1C6940010](0x202020200ALL, 0xE500000000000000);
    v89 = sub_1C43FE5F8();
    MEMORY[0x1C6940010](v89);

    sub_1C4B3C50C();
    sub_1C44F9684(v90, v91);
    v92 = sub_1C4402CD0();
    sub_1C4434000(v92, v93);
  }

LABEL_28:
  sub_1C445EDE8(v124);

  sub_1C44902AC(&qword_1EDDFEAD0, MEMORY[0x1E6966620]);
  v94 = v118;
  v95 = v121;
  sub_1C43FE5F8();
  sub_1C4F00DB8();
  v96 = sub_1C4402CD0();
  sub_1C44344B8(v96, v97);
  v98 = sub_1C4402CD0();
  sub_1C4498FD8(v98, v99);
  v100 = sub_1C4402CD0();
  sub_1C4434000(v100, v101);
  v102 = v119;
  sub_1C43FE5F8();
  sub_1C4F00DA8();
  (*(v120 + 8))(v94, v95);
  sub_1C4415B50(&v129);
  v104 = v117;
  (*(v103 + 16))(v117, v102, v123);
  sub_1C44D5F88(v104);
  v105 = sub_1C4EF9A48();
  v106 = sub_1C43FBC98();
  sub_1C4434000(v106, v107);
  v108 = *(v95 + 8);
  v109 = sub_1C44089C8();
  v110(v109);
  sub_1C4434000(v128, v129);
  return v105;
}

void sub_1C4C39B18(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = *(a1 + 32);
  sub_1C43FF7C8();
  v9 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = 0;
  v83 = MEMORY[0x1E69E7CC0];
  v84 = MEMORY[0x1E69E7CC0];
  v85 = a2;
  v91 = v9;
  v86 = v7;
  v87 = v2;
LABEL_2:
  v11 = v10;
  if (!v3)
  {
    goto LABEL_4;
  }

  do
  {
    v10 = v11;
LABEL_7:
    sub_1C44168C0();
    v3 &= v3 - 1;
    v13 = (v10 << 10) | (16 * v12);
    v14 = (v5[6] + v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (v5[7] + v13);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(a2 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!v20 || (v21 = sub_1C445FAA8(v16, v15), (v22 & 1) == 0))
    {
      if (qword_1EDDFD018 != -1)
      {
        sub_1C441A86C();
        swift_once();
      }

      v36 = sub_1C4F00978();
      sub_1C442B738(v36, qword_1EDE2DDF8);
      sub_1C4404CE0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v37 = sub_1C4F00968();
      v38 = sub_1C4F01CF8();

      if (os_log_type_enabled(v37, v38))
      {
        sub_1C441024C();
        logb = v37;
        v39 = swift_slowAlloc();
        sub_1C443FD74();
        v92 = swift_slowAlloc();
        *(v39 + 4) = sub_1C4434780(4.8151e-34);
        *(v39 + 12) = 2080;
        v40 = v7;
        v41 = sub_1C441B080();

        *(v39 + 14) = v41;
        v7 = v40;
        _os_log_impl(&dword_1C43F8000, logb, v38, "ViewMigration: old view no longer exists for %s: %s", v39, 0x16u);
        swift_arrayDestroy();
        v2 = v87;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = *(v84 + 16);
        sub_1C43FCEC0();
        sub_1C443D664();
        v84 = v58;
      }

      v43 = *(v84 + 16);
      v42 = *(v84 + 24);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        sub_1C43FFD98(v42);
        sub_1C443D664();
        v84 = v59;
      }

      v45 = v84;
      goto LABEL_31;
    }

    v23 = (*(a2 + 56) + 16 * v21);
    v24 = v23[1];
    v25 = *v23 == v18 && v24 == v19;
    log = *v23;
    if (!v25 && (sub_1C4F02938() & 1) == 0)
    {
      v47 = qword_1EDDFD018;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v47 != -1)
      {
        sub_1C441A86C();
        swift_once();
      }

      v48 = sub_1C4F00978();
      sub_1C442B738(v48, qword_1EDE2DDF8);
      sub_1C4404CE0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v49 = sub_1C4F00968();
      v50 = sub_1C4F01CF8();

      v51 = sub_1C4C41FB4();
      if (os_log_type_enabled(v51, v52))
      {
        sub_1C43FEC60();
        v53 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        *(v53 + 4) = sub_1C4434780(4.8152e-34);
        *(v53 + 12) = 2080;
        v54 = sub_1C441B080();

        *(v53 + 14) = v54;
        *(v53 + 22) = 2080;
        v55 = sub_1C441D828(log, v24, &v92);

        *(v53 + 24) = v55;
        _os_log_impl(&dword_1C43F8000, v49, v50, "ViewMigration: hash value changed for %s: %s -> %s", v53, 0x20u);
        sub_1C4488484();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }

      v7 = v86;
      v2 = v87;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = *(v83 + 16);
        sub_1C43FCEC0();
        sub_1C443D664();
        v83 = v61;
      }

      v43 = *(v83 + 16);
      v56 = *(v83 + 24);
      v44 = v43 + 1;
      if (v43 >= v56 >> 1)
      {
        sub_1C43FFD98(v56);
        sub_1C443D664();
        v83 = v62;
      }

      v45 = v83;
LABEL_31:
      *(v45 + 16) = v44;
      v46 = v45 + 16 * v43;
      *(v46 + 32) = v16;
      *(v46 + 40) = v15;
      a2 = v85;
      v5 = v91;
      goto LABEL_2;
    }

    v26 = qword_1EDDFD018;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v26 != -1)
    {
      sub_1C441A86C();
      swift_once();
    }

    v27 = sub_1C4F00978();
    sub_1C442B738(v27, qword_1EDE2DDF8);
    sub_1C4404CE0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CC8();

    v30 = sub_1C4C41FB4();
    if (os_log_type_enabled(v30, v31))
    {
      sub_1C43FEC60();
      v32 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v33 = sub_1C4434780(4.8152e-34);

      *(v32 + 4) = v33;
      *(v32 + 12) = 2080;
      v34 = sub_1C441B080();

      *(v32 + 14) = v34;
      *(v32 + 22) = 2080;
      v35 = sub_1C441D828(log, v24, &v92);

      *(v32 + 24) = v35;
      _os_log_impl(&dword_1C43F8000, v28, v29, "ViewMigration: hash value matches for %s: %s == %s", v32, 0x20u);
      sub_1C4488484();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      a2 = v85;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    v11 = v10;
    v5 = v91;
    v7 = v86;
    v2 = v87;
  }

  while (v3);
  while (1)
  {
LABEL_4:
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    if (v10 >= v2)
    {
      break;
    }

    v3 = *(v7 + 8 * v10);
    ++v11;
    if (v3)
    {
      goto LABEL_7;
    }
  }

  v64 = a2 + 64;
  v63 = *(a2 + 64);
  v65 = *(a2 + 32);
  sub_1C43FF7C8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v66 = 0;
  while (v3)
  {
    v67 = v66;
LABEL_48:
    sub_1C44168C0();
    v3 &= v3 - 1;
    v69 = (v67 << 10) | (16 * v68);
    v70 = (*(a2 + 48) + v69);
    v71 = *v70;
    v72 = v70[1];
    v73 = *(a2 + 56) + v69;
    v74 = *(v73 + 8);
    loga = *v73;
    v75 = v5[2];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v75 && (sub_1C445FAA8(v71, v72), v5 = v91, (v76 & 1) != 0))
    {

      v66 = v67;
    }

    else
    {
      if (qword_1EDDFD018 != -1)
      {
        sub_1C441A86C();
        swift_once();
      }

      v77 = sub_1C4F00978();
      sub_1C442B738(v77, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v78 = sub_1C4F00968();
      v79 = sub_1C4F01CF8();

      if (os_log_type_enabled(v78, v79))
      {
        sub_1C441024C();
        v80 = swift_slowAlloc();
        sub_1C443FD74();
        v92 = swift_slowAlloc();
        *v80 = 136315394;
        v81 = sub_1C441B080();

        *(v80 + 4) = v81;
        *(v80 + 12) = 2080;
        v82 = sub_1C441D828(loga, v74, &v92);

        *(v80 + 14) = v82;
        _os_log_impl(&dword_1C43F8000, v78, v79, "ViewMigration: new view did not previously exist for: %s:%s", v80, 0x16u);
        swift_arrayDestroy();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        a2 = v85;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }

      v66 = v67;
      v5 = v91;
    }
  }

  while (1)
  {
    v67 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      break;
    }

    if (v67 >= v2)
    {

      return;
    }

    v3 = *(v64 + 8 * v67);
    ++v66;
    if (v3)
    {
      goto LABEL_48;
    }
  }

LABEL_59:
  __break(1u);
}

void sub_1C4C3A37C()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = sub_1C4EFA608();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  if (sub_1C4F013F8())
  {
    v12 = sub_1C44179F4();
    sub_1C440BAA8(v12, v13, v14, v3);
    v15 = _s10WrappedURLVMa(0);
    v16 = v2 + *(v15 + 20);
    sub_1C43FE5F8();
    sub_1C4EF9888();
    v17 = sub_1C4423D20();
    v20 = v15;
LABEL_12:
    sub_1C440BAA8(v17, v18, v19, v20);
    goto LABEL_13;
  }

  sub_1C4EFA598();
  sub_1C43FE5F8();
  if (!sub_1C4EFA528())
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C441A86C();
      swift_once();
    }

    v22 = sub_1C4F00978();
    sub_1C442B738(v22, qword_1EDE2DDF8);
    sub_1C4404CE0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v23 = sub_1C4F00968();
    v24 = sub_1C4F01CF8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = sub_1C43FD084();
      sub_1C43FEC60();
      v37 = swift_slowAlloc();
      *v25 = 136315138;
      v26 = sub_1C43FE5F8();
      *(v25 + 4) = sub_1C441D828(v26, v27, v28);
      _os_log_impl(&dword_1C43F8000, v23, v24, "No path found for %s", v25, 0xCu);
      sub_1C440962C(v37);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    _s10WrappedURLVMa(0);
    v17 = sub_1C44179F4();
    goto LABEL_12;
  }

  v21 = *MEMORY[0x1E698E928];
  sub_1C4F01138();
  sub_1C4EFA5E8();
  if (!v0)
  {

    (*(v6 + 16))(v2, v11, v3);
    v29 = sub_1C4423D20();
    sub_1C440BAA8(v29, v30, v31, v3);
    v32 = _s10WrappedURLVMa(0);
    v33 = v2 + *(v32 + 20);
    sub_1C4EFA5F8();
    v34 = *(v6 + 8);
    v35 = sub_1C43FD018();
    v36(v35);
    v17 = sub_1C4423D20();
    v20 = v32;
    goto LABEL_12;
  }

LABEL_13:
  sub_1C43FBC80();
}

void sub_1C4C3A640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v122 = v24;
  v123 = v21;
  v126 = v25;
  v124 = v26;
  v121 = v27;
  *&v120 = v28;
  v29 = sub_1C4EF98F8();
  v30 = sub_1C43FCDF8(v29);
  v116 = v31;
  v117 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v115[1] = v35 - v34;
  v36 = sub_1C456902C(&qword_1EC0C4FE0, &unk_1C4F5E668);
  sub_1C43FBD18(v36);
  v38 = *(v37 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v115 - v40;
  v119 = _s10WrappedURLVMa(0);
  v42 = sub_1C43FBCE0(v119);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBCC4();
  v118 = v46 - v45;
  sub_1C43FBE44();
  v47 = sub_1C4EFC018();
  v48 = sub_1C43FCDF8(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBCC4();
  v55 = (v54 - v53);
  v56 = sub_1C4F00D88();
  v57 = sub_1C43FBD18(v56);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBCC4();
  v60 = sub_1C4EFB148();
  v61 = sub_1C43FCDF8(v60);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBD08();
  v68 = v66 - v67;
  MEMORY[0x1EEE9AC00](v69);
  sub_1C4400B4C();
  sub_1C4EFB138();
  sub_1C43FE984();
  sub_1C4EFB108();
  sub_1C4F00D68();
  sub_1C4EFB0E8();
  *v55 = 0x404E000000000000;
  (*(v50 + 104))(v55, *MEMORY[0x1E69A00D8], v47);
  sub_1C4EFB118();
  v70 = v123;
  sub_1C4C3A37C();
  if (v70)
  {
    v71 = *(v63 + 8);
    v72 = sub_1C4402120();
    v73(v72);
    goto LABEL_20;
  }

  v122 = v20;
  v123 = v60;
  v121 = v68;
  v115[0] = v63;
  v74 = v119;
  if (sub_1C44157D4(v41, 1, v119) != 1)
  {
    sub_1C4410694();
    sub_1C4C41AB8(v41, v118);
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    v120 = xmmword_1C4F0CE60;
    *(inited + 16) = xmmword_1C4F0CE60;
    sub_1C4418C58(inited);
    v86 = *(v74 + 20);
    v125[0] = sub_1C4EF9808();
    v125[1] = v87;
    MEMORY[0x1EEE9AC00](v125[0]);
    v115[-2] = v125;
    v88 = sub_1C44CE068(sub_1C44CE790, &v115[-4], inited);
    swift_setDeallocating();
    sub_1C44DEE40();

    if (v88)
    {
      v89 = swift_allocObject();
      *(v89 + 16) = v120;
      *(v89 + 32) = sub_1C4EF98D8();
      *(v89 + 40) = v90;
      sub_1C4415B50(&a18);
      sub_1C4EF9878();
      sub_1C4EF98D8();
      (*(v116 + 8))(inited, v117);
      sub_1C4C3AED4();

      v91 = v89;
      sub_1C4EF9808();
      v92 = sub_1C4C3AED4();
      v94 = v93;

      *(v89 + 48) = v92;
      *(v89 + 56) = v94;
    }

    else
    {
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_1C4F0D130;
      v91 = v95;
      *(v95 + 32) = sub_1C4EF98D8();
      *(v91 + 40) = v96;
    }

    v76 = v126;
    v97 = v115[0];
    v98 = v121;
    if (qword_1EDDFD018 != -1)
    {
      sub_1C441A86C();
      swift_once();
    }

    v99 = sub_1C4F00978();
    sub_1C442B738(v99, qword_1EDE2DDF8);
    sub_1C43FEF2C();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v100 = sub_1C4F00968();
    v101 = sub_1C4F01CF8();

    if (os_log_type_enabled(v100, v101))
    {
      sub_1C441024C();
      v102 = swift_slowAlloc();
      sub_1C443FD74();
      v125[0] = swift_slowAlloc();
      *v102 = 136315394;
      v103 = sub_1C43FD018();
      *(v102 + 4) = sub_1C441D828(v103, v104, v105);
      *(v102 + 12) = 2080;
      v106 = MEMORY[0x1C6940380](v91, MEMORY[0x1E69E6158]);
      v76 = sub_1C441D828(v106, v107, v125);

      *(v102 + 14) = v76;
      _os_log_impl(&dword_1C43F8000, v100, v101, "ViewMigration: Dropping table %s from paths %s", v102, 0x16u);
      swift_arrayDestroy();
      v97 = v115[0];
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v108 = 0;
    v109 = *(v91 + 16);
    v110 = v91;
    v111 = (v97 + 16);
    v119 = v109;
    *&v120 = v110;
    for (i = (v110 + 40); ; i += 2)
    {
      if (v119 == v108)
      {

        sub_1C4401180();
        sub_1C4C41B10();
        (*(v115[0] + 8))(v122, v123);
        goto LABEL_20;
      }

      if (v108 >= *(v120 + 16))
      {
        break;
      }

      v76 = *(i - 1);
      v112 = *i;
      (*v111)(v98, v122, v123);
      v113 = sub_1C4EFB218();
      sub_1C44099C4(v113);
      swift_bridgeObjectRetain_n();
      v114 = sub_1C4EFB1F8();
      MEMORY[0x1EEE9AC00](v114);
      v115[-4] = v124;
      v115[-3] = v126;
      v115[-2] = v76;
      v115[-1] = v112;
      sub_1C4EFB2C8();

      ++v108;
      v98 = v121;
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_1C4420C3C(v41, &qword_1EC0C4FE0, &unk_1C4F5E668);
  i = v115[0];
  v76 = v123;
  if (qword_1EDDFD018 != -1)
  {
LABEL_22:
    sub_1C441A86C();
    swift_once();
  }

  v77 = sub_1C4F00978();
  sub_1C43FCEE8(v77, qword_1EDE2DDF8);
  v78 = sub_1C4F00968();
  v79 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v79))
  {
    v80 = sub_1C43FCED0();
    *v80 = 0;
    sub_1C441253C();
    _os_log_impl(v81, v82, v83, v84, v80, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  (i[1])(v122, v76);
LABEL_20:
  sub_1C43FBC80();
}

uint64_t sub_1C4C3AED4()
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v1 = sub_1C4F01438();
  sub_1C4F01308();
  return v1;
}

uint64_t sub_1C4C3AF54(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v27 = a4;
  v8 = sub_1C4EFB768();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFD018 != -1)
  {
    swift_once();
  }

  v13 = sub_1C4F00978();
  sub_1C442B738(v13, qword_1EDE2DDF8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = sub_1C4F00968();
  v15 = sub_1C4F01CF8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = v9;
    v17 = a2;
    v18 = v16;
    v19 = swift_slowAlloc();
    v26 = v8;
    v20 = v19;
    v28 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_1C441D828(v17, a3, &v28);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1C441D828(v27, a5, &v28);
    _os_log_impl(&dword_1C43F8000, v14, v15, "ViewMigration: Deleting table %s from %s", v18, 0x16u);
    swift_arrayDestroy();
    v8 = v26;
    MEMORY[0x1C6942830](v20, -1, -1);
    v21 = v18;
    a2 = v17;
    v9 = v25;
    MEMORY[0x1C6942830](v21, -1, -1);
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1C4F02248();

  v28 = 0xD000000000000015;
  v29 = 0x80000001C4FB3220;
  MEMORY[0x1C6940010](a2, a3);
  sub_1C4EFB758();
  v22 = v30;
  sub_1C4EFBFF8();
  if (v22)
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    (*(v9 + 8))(v12, v8);

    result = sub_1C4EFBE58();
    if (result)
    {
      sub_1C4C41C74();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

void sub_1C4C3B2A8()
{
  sub_1C43FE96C();
  *&v146 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v153[3] = *MEMORY[0x1E69E9840];
  v147 = sub_1C4EF98F8();
  v8 = sub_1C43FCDF8(v147);
  v145 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v143 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C447F150();
  v14 = sub_1C456902C(&qword_1EC0C4FE0, &unk_1C4F5E668);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v131 - v18;
  v20 = _s10WrappedURLVMa(0);
  v21 = sub_1C43FBCE0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v26 = v25 - v24;
  v27 = v146;
  sub_1C4C3A37C();
  if (!v27)
  {
    *&v146 = v7;
    v144 = v5;
    v136 = 0;
    v133 = v3;
    v134 = v26;
    v141 = v1;
    if (sub_1C44157D4(v19, 1, v20) == 1)
    {
      sub_1C4420C3C(v19, &qword_1EC0C4FE0, &unk_1C4F5E668);
      if (qword_1EDDFD018 != -1)
      {
        sub_1C441A86C();
        swift_once();
      }

      v28 = sub_1C4F00978();
      sub_1C43FCEE8(v28, qword_1EDE2DDF8);
      v29 = v144;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v30 = sub_1C4F00968();
      v31 = sub_1C4F01CF8();

      v32 = sub_1C4C41FB4();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v146;
      if (v34)
      {
        v36 = sub_1C43FD084();
        sub_1C43FEC60();
        v37 = swift_slowAlloc();
        v153[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_1C441D828(v35, v29, v153);
        _os_log_impl(&dword_1C43F8000, v30, v31, "ViewMigration: could not retrieve token for %s", v36, 0xCu);
        sub_1C440962C(v37);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }
    }

    else
    {
      sub_1C4410694();
      v38 = v134;
      sub_1C4C41AB8(v19, v134);
      v39 = v141;
      (*(v145 + 16))(v141, v38 + *(v20 + 20), v147);
      if (qword_1EDDFD018 != -1)
      {
        sub_1C441A86C();
        swift_once();
      }

      v40 = sub_1C4F00978();
      v142 = sub_1C442B738(v40, qword_1EDE2DDF8);
      v41 = sub_1C4F00968();
      v42 = sub_1C4F01CF8();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v143;
      if (v43)
      {
        v45 = sub_1C43FD084();
        sub_1C43FEC60();
        v46 = swift_slowAlloc();
        v153[0] = v46;
        *v45 = 136315138;
        sub_1C440D164();
        sub_1C4413A70();
        sub_1C44902AC(v47, v48);
        v49 = sub_1C4F02858();
        v51 = sub_1C441D828(v49, v50, v153);

        *(v45 + 4) = v51;
        sub_1C4480820(&dword_1C43F8000, v41, v42, "ViewMigration: Deleting database file: %s");
        sub_1C440962C(v46);
        v39 = v141;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      v144 = objc_opt_self();
      v52 = [v144 defaultManager];
      sub_1C440D164();
      v53 = sub_1C4EF9868();
      v151 = 0;
      v54 = [v52 removeItemAtURL:v53 error:&v151];

      v55 = (v145 + 8);
      if (v54)
      {
        v56 = v151;
        v57 = sub_1C4EF9808();
        v59 = v58;
        sub_1C4EF9878();
        v139 = sub_1C4EF98D8();
        v61 = v60;
        v131[0] = *v55;
        v131[1] = v55;
        (v131[0])(v44, v147);
        sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
        inited = swift_initStackObject();
        v63 = sub_1C4418C58(inited);
        *(v63 + 1) = v64;
        *&v146 = v57;
        v151 = v57;
        v152 = v59;
        v65 = v59;
        MEMORY[0x1EEE9AC00](v63);
        v131[-2] = &v151;
        v66 = v136;
        v67 = sub_1C44CE068(sub_1C4579E44, &v131[-4], inited);
        swift_setDeallocating();
        sub_1C44DEE40();
        v136 = v66;
        if (v67)
        {
          v140 = v61;
          v68 = swift_initStackObject();
          *(v68 + 16) = xmmword_1C4F13950;
          v151 = 46;
          v152 = 0xE100000000000000;
          MEMORY[0x1C6940010](v146, v65);
          MEMORY[0x1C6940010](1818326829, 0xE400000000000000);
          v69 = v152;
          *(v68 + 32) = v151;
          *(v68 + 40) = v69;
          sub_1C443F7E4();
          MEMORY[0x1C6940010](1835561773, 0xE400000000000000);
          v70 = v152;
          *(v68 + 48) = v151;
          *(v68 + 56) = v70;
          sub_1C443F7E4();
          v71 = v152;
          *(v68 + 64) = v151;
          *(v68 + 72) = v71;
          v151 = 0;
          v152 = 0xE000000000000000;
          sub_1C4F02248();

          sub_1C443F7E4();
          MEMORY[0x1C6940010](1818326829, 0xE400000000000000);
          v72 = v152;
          *(v68 + 80) = v151;
          *(v68 + 88) = v72;
          v151 = 0;
          v152 = 0xE000000000000000;
          sub_1C4F02248();

          sub_1C443F7E4();

          v73 = MEMORY[0x1C6940010](1835561773, 0xE400000000000000);
          v74 = 0;
          v75 = v152;
          *(v68 + 96) = v151;
          *(v68 + 104) = v75;
          v137 = v68;
          v73.n128_u64[0] = 136315138;
          v132 = v73;
          while (1)
          {
            v76 = *(v137 + v74 + 40);
            *&v146 = *(v137 + v74 + 32);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v77 = v140;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v78 = sub_1C4F00968();
            v79 = sub_1C4F01CF8();

            if (os_log_type_enabled(v78, v79))
            {
              v80 = sub_1C43FD084();
              v138 = v76;
              v81 = v80;
              sub_1C43FEC60();
              v82 = swift_slowAlloc();
              v135 = v82;
              *v81 = v132.n128_u32[0];
              v151 = v146;
              v152 = v138;
              v148 = v82;
              v149 = v139;
              v150 = v77;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v83 = sub_1C4F01438();
              sub_1C442A4F0(v83, v84);
              v85 = sub_1C441D828(v149, v150, &v148);

              *(v81 + 4) = v85;
              v77 = v140;
              _os_log_impl(&dword_1C43F8000, v78, v79, "ViewMigration: Deleting database file: %s", v81, 0xCu);
              sub_1C440962C(v135);
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
              v76 = v138;
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
            }

            v86 = v139;
            v87 = [v144 defaultManager];
            v151 = v146;
            v152 = v76;
            v149 = v86;
            v150 = v77;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v88 = sub_1C4F01438();
            sub_1C442A4F0(v88, v89);

            v90 = sub_1C4F01108();

            v151 = 0;
            v91 = [v87 removeItemAtPath:v90 error:&v151];

            v67 = v151;
            v92 = v147;
            if (!v91)
            {
              break;
            }

            v93 = v151;
            v74 += 16;
            if (v74 == 80)
            {

              swift_setDeallocating();
              sub_1C44DEE40();
              v94 = v141;
              goto LABEL_22;
            }
          }

          swift_setDeallocating();
          v126 = v67;
          sub_1C44DEE40();

          sub_1C4EF97A8();

          swift_willThrow();
          sub_1C4401180();
          sub_1C4C41B10();
          v127 = v141;
          v128 = v92;
        }

        else
        {

          v94 = v141;
LABEL_22:
          sub_1C4EF98A8();
          swift_beginAccess();
          v97 = *(v145 + 40);
          v98 = sub_1C4409F48();
          v145 = v99;
          v97(v98);
          swift_beginAccess();
          *&v100 = 136315138;
          v146 = v100;
          while (1)
          {
            if ((sub_1C4EF9848() & 1) == 0)
            {
LABEL_33:
              sub_1C4401180();
              sub_1C4C41B10();
              (v131[0])(v94, v147);
              goto LABEL_34;
            }

            v101 = [v144 defaultManager];
            sub_1C4EF98E8();
            sub_1C4F01108();
            sub_1C44419F4();

            v148 = 0;
            v102 = [v101 contentsOfDirectoryAtPath:v67 error:&v148];

            v103 = v148;
            if (!v102)
            {
              v129 = v148;
              sub_1C4EF97A8();

              goto LABEL_38;
            }

            v104 = sub_1C4F01678();
            v105 = v103;

            v106 = *(v104 + 16);

            if (v106)
            {
              goto LABEL_33;
            }

            v107 = sub_1C4EF9828();
            v108 = sub_1C4EF9828();
            v109 = sub_1C4C3BFB0(v108, v107);

            if ((v109 & 1) == 0)
            {
              goto LABEL_33;
            }

            v110 = sub_1C4EF9828();
            v111 = sub_1C4EF9828();
            v112 = sub_1C47E7154(v110, v111);

            if (v112)
            {
              goto LABEL_33;
            }

            v113 = sub_1C4F00968();
            v114 = sub_1C4F01CF8();
            if (os_log_type_enabled(v113, v114))
            {
              v115 = sub_1C43FD084();
              sub_1C43FEC60();
              v116 = swift_slowAlloc();
              v148 = v116;
              *v115 = v146;
              sub_1C4413A70();
              sub_1C44902AC(&qword_1EDDFF9E8, v117);
              v94 = v141;
              v118 = sub_1C4F02858();
              v120 = sub_1C441D828(v118, v119, &v148);

              *(v115 + 4) = v120;
              sub_1C4480820(&dword_1C43F8000, v113, v114, "ViewMigration: Deleting empty parent directory: %s");
              sub_1C440962C(v116);
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
            }

            else
            {

              v94 = v141;
            }

            v121 = [v144 defaultManager];
            v122 = sub_1C4EF9868();
            v148 = 0;
            v67 = [v121 removeItemAtURL:v122 error:&v148];

            if (!v67)
            {
              break;
            }

            v123 = v148;
            sub_1C4EF98A8();
            v124 = sub_1C4409F48();
            v97(v124);
          }

          v130 = v148;
          sub_1C44419F4();
          sub_1C4EF97A8();

LABEL_38:
          swift_willThrow();
          sub_1C4401180();
          sub_1C4C41B10();
          v127 = v94;
          v128 = v147;
        }

        (v131[0])(v127, v128);
      }

      else
      {
        v95 = (v145 + 8);
        v96 = v151;
        sub_1C4EF97A8();

        swift_willThrow();
        sub_1C4401180();
        sub_1C4C41B10();
        (*v95)(v39, v147);
      }
    }
  }

LABEL_34:
  v125 = *MEMORY[0x1E69E9840];
  sub_1C43FBC80();
}

uint64_t sub_1C4C3BFB0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = (result + 40);
  v6 = (a2 + 40);
  while (v4 != v3)
  {
    v7 = *(v2 + 16);
    v8 = v3 == v7;
    if (v3 == v7)
    {
      return v8;
    }

    if (v3 >= v7)
    {
      __break(1u);
      goto LABEL_17;
    }

    result = *(v6 - 1);
    if (result != *(v5 - 1) || *v6 != *v5)
    {
      result = sub_1C4F02938();
      if ((result & 1) == 0)
      {
        return v8;
      }
    }

    v5 += 2;
    v6 += 2;
    ++v3;
  }

  v10 = *(v2 + 16);
  if (v4 == v10)
  {
    return 1;
  }

  if (v4 < v10)
  {
    return 0;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1C4C3C064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  *&v250 = v23;
  v25 = v24;
  v245 = v26;
  v27 = sub_1C4EF98F8();
  v28 = sub_1C44016B0(v27);
  v29 = sub_1C43FCDF8(v28);
  v248 = v30;
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v29);
  v254 = &v244 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD230();
  v253 = v35;
  v247 = v36;
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD230();
  v246 = v38;
  sub_1C43FBDBC();
  v39 = swift_allocObject();
  v40 = MEMORY[0x1E69E7CC8];
  v265 = v39;
  *(v39 + 16) = MEMORY[0x1E69E7CC8];
  v270 = v40;
  v41 = *(v25 + 16);
  v259 = v20;
  if (v41)
  {
    v261 = 0;
    v257 = 0;
    v258 = 0;
    v255 = v40;
    v256 = 0;
    v42 = (v25 + 72);
    v43 = v40;
    v263 = v40;
    while (1)
    {
      v260 = v41;
      v44 = *(v42 - 5);
      v45 = *(v42 - 4);
      v47 = *(v42 - 3);
      v46 = *(v42 - 2);
      v48 = *v42;
      v264 = *(v42 - 1);
      v267 = v48;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44174AC();
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_isUniquelyReferenced_nonNull_native();
      *&v268 = v43;
      v266 = v44;
      v49 = sub_1C445FAA8(v44, v45);
      if (__OFADD__(*(v43 + 16), (v50 & 1) == 0))
      {
        break;
      }

      v51 = v49;
      v52 = v50;
      sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
      sub_1C440C7C8();
      if (sub_1C4F02458())
      {
        v53 = v266;
        sub_1C445FAA8(v266, v45);
        sub_1C4404D54();
        if (!v55)
        {
          goto LABEL_102;
        }

        v51 = v54;
      }

      else
      {
        v53 = v266;
      }

      i = v268;
      if (v52)
      {
        v56 = (*(v268 + 56) + 16 * v51);
        v57 = v56[1];
        *v56 = v47;
        v56[1] = v46;
      }

      else
      {
        sub_1C4401D38(v268 + 8 * (v51 >> 6));
        v59 = (v58[6] + 16 * v51);
        *v59 = v53;
        v59[1] = v45;
        v60 = (v58[7] + 16 * v51);
        *v60 = v47;
        v60[1] = v46;
        v61 = v58[2];
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          goto LABEL_99;
        }

        v58[2] = v63;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      sub_1C44239FC(v261);
      v64 = v265;
      v65 = *(v265 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      *&v268 = *(v64 + 16);
      v66 = sub_1C43FFE3C();
      sub_1C445FAA8(v66, v67);
      sub_1C43FC438();
      if (__OFADD__(v70, v71))
      {
        goto LABEL_94;
      }

      v72 = v68;
      v73 = v69;
      sub_1C456902C(&qword_1EC0BDDB8, &unk_1C4F32060);
      sub_1C440C7C8();
      v261 = v74;
      v75 = sub_1C4F02458();
      v76 = v268;
      if (v75)
      {
        v77 = sub_1C43FFE3C();
        sub_1C445FAA8(v77, v78);
        sub_1C4404D54();
        if (!v55)
        {
          goto LABEL_102;
        }

        v72 = v79;
      }

      *(v265 + 16) = v76;
      if ((v73 & 1) == 0)
      {
        sub_1C4401D38(&v76[v72 >> 6]);
        v80 = (v76[6] + 16 * v72);
        *v80 = v47;
        v80[1] = v46;
        *(v76[7] + 8 * v72) = MEMORY[0x1E69E7CC0];
        v81 = v76[2];
        v62 = __OFADD__(v81, 1);
        v82 = v81 + 1;
        if (v62)
        {
          goto LABEL_100;
        }

        v76[2] = v82;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v83 = v76[7];
      v84 = *(v83 + 8 * v72);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v83 + 8 * v72) = v84;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v144 = *(v84 + 16);
        sub_1C43FCEC0();
        sub_1C443D664();
        sub_1C44608E0(v145);
      }

      v87 = *(v84 + 16);
      v86 = *(v84 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_1C43FCFE8(v86);
        sub_1C443D664();
        sub_1C44608E0(v146);
      }

      *(v84 + 16) = v87 + 1;
      v88 = v84 + 16 * v87;
      v89 = v266;
      *(v88 + 32) = v266;
      *(v88 + 40) = v45;
      if (v267)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44239FC(v258);
        v90 = v263;
        swift_isUniquelyReferenced_nonNull_native();
        *&v268 = v90;
        sub_1C445FAA8(v89, v45);
        v92 = v91;
        sub_1C43FC438();
        if (__OFADD__(v94, v95))
        {
          goto LABEL_96;
        }

        v96 = v93;
        v97 = sub_1C4F02458();
        v98 = v268;
        v263 = v268;
        if (v97)
        {
          sub_1C445FAA8(v89, v45);
          sub_1C4404D54();
          if (!v55)
          {
            goto LABEL_102;
          }

          v96 = v99;
          v98 = v263;
        }

        if ((v92 & 1) == 0)
        {
          v100 = sub_1C4409F48();
          sub_1C44686DC(v100, v101, v45, MEMORY[0x1E69E7CC0], v263);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v98 = v263;
        }

        v102 = *(v98 + 56);
        v103 = *(v102 + 8 * v96);
        v104 = swift_isUniquelyReferenced_nonNull_native();
        *(v102 + 8 * v96) = v103;
        if ((v104 & 1) == 0)
        {
          v147 = *(v103 + 16);
          sub_1C43FCEC0();
          sub_1C443D664();
          sub_1C44608E0(v148);
        }

        v106 = *(v103 + 16);
        v105 = *(v103 + 24);
        if (v106 >= v105 >> 1)
        {
          sub_1C43FCFE8(v105);
          sub_1C443D664();
          sub_1C44608E0(v149);
        }

        *(v103 + 16) = v106 + 1;
        v107 = v103 + 16 * v106;
        v108 = v267;
        *(v107 + 32) = v264;
        *(v107 + 40) = v108;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44239FC(v257);
        swift_isUniquelyReferenced_nonNull_native();
        *&v268 = v270;
        v109 = sub_1C43FFE3C();
        sub_1C445FAA8(v109, v110);
        sub_1C43FC438();
        if (__OFADD__(v113, v114))
        {
          goto LABEL_97;
        }

        v115 = v111;
        v116 = v112;
        sub_1C456902C(&qword_1EC0C4380, &unk_1C4F58BB0);
        sub_1C440C7C8();
        v117 = sub_1C4F02458();
        v118 = v268;
        if (v117)
        {
          v119 = sub_1C43FFE3C();
          sub_1C445FAA8(v119, v120);
          sub_1C4404D54();
          if (!v55)
          {
            goto LABEL_102;
          }

          v115 = v121;
        }

        v270 = v118;
        if ((v116 & 1) == 0)
        {
          sub_1C4C3CFB4(&v268);
          v122 = sub_1C43FE5F8();
          sub_1C44686DC(v122, v123, v46, v124, v118);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        v255 = v118;
        v125 = *(v118 + 56);
        sub_1C44239FC(v256);
        v126 = *(v125 + 8 * v115);
        swift_isUniquelyReferenced_nonNull_native();
        *&v268 = *(v125 + 8 * v115);
        *(v125 + 8 * v115) = 0x8000000000000000;
        sub_1C445FAA8(v264, v267);
        v128 = v127;
        sub_1C43FC438();
        if (__OFADD__(v130, v131))
        {
          goto LABEL_98;
        }

        v132 = v129;
        if (sub_1C4F02458())
        {
          v133 = v268;
          sub_1C445FAA8(v264, v267);
          sub_1C4404D54();
          if (!v55)
          {
            goto LABEL_102;
          }

          v132 = v134;
        }

        else
        {

          v133 = v268;
        }

        v136 = *(v125 + 8 * v115);
        *(v125 + 8 * v115) = v133;

        v137 = *(v125 + 8 * v115);
        if (v128)
        {
        }

        else
        {
          sub_1C44686DC(v132, v264, v267, MEMORY[0x1E69E7CC0], *(v125 + 8 * v115));
        }

        v43 = i;
        v138 = *(v137 + 56);
        v139 = *(v138 + 8 * v132);
        v140 = swift_isUniquelyReferenced_nonNull_native();
        *(v138 + 8 * v132) = v139;
        if ((v140 & 1) == 0)
        {
          v150 = *(v139 + 16);
          sub_1C43FCEC0();
          sub_1C443D664();
          v139 = v151;
          *(v138 + 8 * v132) = v151;
        }

        v142 = *(v139 + 16);
        v141 = *(v139 + 24);
        if (v142 >= v141 >> 1)
        {
          sub_1C43FFD98(v141);
          sub_1C443D664();
          v139 = v152;
          *(v138 + 8 * v132) = v152;
        }

        v135 = v260;
        *(v139 + 16) = v142 + 1;
        v143 = v139 + 16 * v142;
        *(v143 + 32) = v266;
        *(v143 + 40) = v45;
        v256 = sub_1C48362FC;
        v257 = sub_1C4C3CFB4;
        v258 = sub_1C48362FC;
      }

      else
      {

        v43 = i;
        v135 = v260;
      }

      v42 += 6;
      v261 = sub_1C48362FC;
      v41 = (v135 - 1);
      if (!v41)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
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
    sub_1C4F029F8();
    __break(1u);
  }

  else
  {
    v261 = 0;
    v257 = 0;
    v258 = 0;
    v255 = v40;
    v256 = 0;
    v43 = v40;
    v263 = v40;
LABEL_62:
    v269 = MEMORY[0x1E69E7CC8];
    sub_1C43FBDBC();
    v153 = swift_allocObject();
    *(v153 + 16) = MEMORY[0x1E69E7CD0];
    v154 = v153;
    sub_1C43FBDBC();
    v155 = swift_allocObject();
    v266 = v155;
    v156 = v245;
    *(v155 + 16) = v245;
    v252 = v155 + 16;
    sub_1C43FBDBC();
    v157 = swift_allocObject();
    swift_bridgeObjectRetain_n();
    sub_1C4499940(v156, v158, v159, v160, v161, v162, v163, v164, v244, v245, v246, v247, v248, v249, v250, *(&v250 + 1), v251, v252, v253, v254, v255, v256);
    v267 = v157;
    *(v157 + 16) = v165;
    v245 = v157 + 16;
    v166 = v248;
    v167 = *(v248 + 16);
    v168 = v246;
    v169 = v249;
    v167(v246, v250, v249);
    v167(v253, v168, v169);
    v170 = (*(v166 + 80) + 48) & ~*(v166 + 80);
    v171 = swift_allocObject();
    v171[2] = v154;
    v171[3] = v265;
    v171[4] = v157;
    v171[5] = v266;
    v172 = *(v166 + 32);
    v260 = v171;
    v172(v171 + v170, v168, v169);
    v167(v254, v250, v169);
    swift_retain_n();

    v173 = v252;

    v264 = v154;

    *&v174 = 136315138;
    v250 = v174;
    for (i = v43; ; v43 = i)
    {
LABEL_63:
      swift_beginAccess();
      v175 = *v173;
      if (!*(*v173 + 16))
      {
        swift_endAccess();

        v237 = *(v248 + 8);
        v238 = sub_1C440F03C();
        v237(v238);
        (v237)(v253, v175);
        sub_1C44174AC();

        sub_1C440D164();
        v239 = *(v267 + 16);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C442385C();
        goto LABEL_92;
      }

      v176 = *v173;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C48348F0(v175);
        v175 = v231;
      }

      v177 = *(v175 + 16);
      if (!v177)
      {
        goto LABEL_101;
      }

      v178 = v177 - 1;
      v179 = v175 + 16 * v178;
      v181 = *(v179 + 32);
      v180 = *(v179 + 40);
      *(v175 + 16) = v178;
      *v173 = v175;
      swift_endAccess();
      if (qword_1EDDFD018 != -1)
      {
        sub_1C441A86C();
        swift_once();
      }

      v182 = sub_1C4F00978();
      sub_1C442B738(v182, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v183 = sub_1C4F00968();
      v184 = sub_1C4F01CF8();

      if (os_log_type_enabled(v183, v184))
      {
        v185 = sub_1C43FD084();
        sub_1C43FEC60();
        v186 = swift_slowAlloc();
        *&v268 = v186;
        *v185 = v250;
        v187 = sub_1C43FE99C();
        *(v185 + 4) = sub_1C441D828(v187, v188, v189);
        _os_log_impl(&dword_1C43F8000, v183, v184, "ViewMigration: Cleaning state for view %s", v185, 0xCu);
        sub_1C440962C(v186);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        v43 = i;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      if (!*(v43 + 16) || (v190 = sub_1C43FE99C(), v192 = sub_1C445FAA8(v190, v191), (v193 & 1) == 0))
      {
        v234 = *(v248 + 8);
        v235 = v249;
        v234(v254, v249);
        v234(v253, v235);
        sub_1C44174AC();

        sub_1C450B034();
        sub_1C43FFB2C();
        *v236 = v181;
        *(v236 + 8) = v180;
        *(v236 + 16) = xmmword_1C4F5E640;
        *(v236 + 32) = 0xD00000000000003ALL;
        *(v236 + 40) = 0x80000001C4FBBD50;
        *(v236 + 48) = v268;
        *(v236 + 64) = 0;
        swift_willThrow();

        goto LABEL_91;
      }

      v194 = (*(v43 + 56) + 16 * v192);
      v196 = *v194;
      v195 = v194[1];
      v197 = v263;
      v198 = *(v263 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v198)
      {
        v199 = sub_1C43FE99C();
        v201 = sub_1C445FAA8(v199, v200);
        if (v202)
        {
          v203 = *(v197 + 56);
          v204 = *(v203 + 8 * v201);
          v205 = *(v204 + 16);
          if (v205)
          {
            break;
          }
        }
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v218 = sub_1C4F00968();
      v219 = sub_1C4F01CF8();

      v220 = sub_1C4C41FB4();
      if (os_log_type_enabled(v220, v221))
      {
        v222 = sub_1C43FD084();
        sub_1C43FEC60();
        v223 = swift_slowAlloc();
        *&v268 = v223;
        *v222 = v250;
        v224 = sub_1C43FE99C();
        v227 = sub_1C441D828(v224, v225, v226);

        *(v222 + 4) = v227;
        _os_log_impl(&dword_1C43F8000, v218, v219, "ViewMigration: View %s has no tables so deleting path", v222, 0xCu);
        sub_1C440962C(v223);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }

      v228 = sub_1C43FD574();
      v229 = v259;
      sub_1C4C3D00C(v228, v230, v264, v265, v267, v266);
      v173 = v252;
      if (v229)
      {

        v240 = *(v248 + 8);
        sub_1C44A1F58(&a16);
        v240();
        (v240)(v253, v180);

        sub_1C44174AC();

        goto LABEL_91;
      }

      v259 = 0;
    }

    v206 = *(v203 + 8 * v201);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v207 = 0;
    v208 = (v204 + 40);
    v209 = v254;
    while (1)
    {
      if (v205 == v207)
      {

        v43 = i;
        v173 = v252;
        goto LABEL_63;
      }

      if (v207 >= *(v204 + 16))
      {
        goto LABEL_95;
      }

      v210 = *(v208 - 1);
      v211 = *v208;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v243 = v266;
      v242 = v260;
      v241 = v267;
      v212 = sub_1C43FD574();
      v213 = v210;
      v214 = v259;
      sub_1C4C3D484(v212, v215, v213, v211, v264, v216, v265, v217, v241, sub_1C4C41BB8, v242, v243, v209);
      v259 = v214;
      if (v214)
      {
        break;
      }

      ++v207;
      v208 += 2;
    }

    v232 = *(v248 + 8);
    v233 = sub_1C440F03C();
    v232(v233);
    (v232)(v253, v204);

LABEL_91:

    sub_1C442385C();
LABEL_92:
    sub_1C43FBC80();
  }
}

uint64_t sub_1C4C3CFB4@<X0>(uint64_t *a1@<X8>)
{
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  result = sub_1C4F00F28();
  *a1 = result;
  return result;
}

void sub_1C4C3D00C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C44869B4(v35, a1, a2);
  swift_endAccess();

  if (v11)
  {
    swift_beginAccess();
    v12 = sub_1C4663244(a1, a2, *(a4 + 16));
    if (v12)
    {
      v13 = v12;
      v33 = a1;
      swift_endAccess();
      v36 = v13;
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = (v36 + 40);
        do
        {
          v16 = *(v15 - 1);
          v17 = *v15;
          swift_beginAccess();
          swift_bridgeObjectRetain_n();
          v18 = sub_1C44869B4(v35, v16, v17);
          swift_endAccess();

          if (v18)
          {
            swift_beginAccess();
            sub_1C4588BAC();
            v19 = *(*(a6 + 16) + 16);
            sub_1C45897E8();
            v20 = *(a6 + 16);
            *(v20 + 16) = v19 + 1;
            v21 = v20 + 16 * v19;
            *(v21 + 32) = v16;
            *(v21 + 40) = v17;
            *(a6 + 16) = v20;
            swift_endAccess();
          }

          else
          {
          }

          v15 += 2;
          --v14;
        }

        while (v14);
      }

      sub_1C4C3B2A8();
      if (v6)
      {
        if (qword_1EDDFD018 != -1)
        {
          swift_once();
        }

        v22 = sub_1C4F00978();
        sub_1C442B738(v22, qword_1EDE2DDF8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v23 = sub_1C4F00968();
        v24 = sub_1C4F01CE8();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          *&v34 = v26;
          *v25 = 136315138;
          *(v25 + 4) = sub_1C441D828(v33, a2, &v34);
          _os_log_impl(&dword_1C43F8000, v23, v24, "ViewMigration: Could not remove path %s", v25, 0xCu);
          sub_1C440962C(v26);
          MEMORY[0x1C6942830](v26, -1, -1);
          MEMORY[0x1C6942830](v25, -1, -1);
        }
      }
    }

    else
    {
      swift_endAccess();
      sub_1C450B034();
      swift_allocError();
      *v32 = a1;
      *(v32 + 8) = a2;
      *(v32 + 16) = xmmword_1C4F5E650;
      *(v32 + 32) = 0xD00000000000001CLL;
      *(v32 + 40) = 0x80000001C4FBBE00;
      *(v32 + 48) = v34;
      *(v32 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  else
  {
    if (qword_1EDDFD018 != -1)
    {
      swift_once();
    }

    v27 = sub_1C4F00978();
    sub_1C442B738(v27, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CF8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v34 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_1C441D828(a1, a2, &v34);
      _os_log_impl(&dword_1C43F8000, v28, v29, "ViewMigration: %s has already been removed", v30, 0xCu);
      sub_1C440962C(v31);
      MEMORY[0x1C6942830](v31, -1, -1);
      MEMORY[0x1C6942830](v30, -1, -1);
    }
  }
}

void sub_1C4C3D484(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, void *a8, uint64_t a9, void (*a10)(uint64_t, unint64_t), uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (qword_1EDDFD018 != -1)
  {
    swift_once();
  }

  v18 = sub_1C4F00978();
  v19 = sub_1C442B738(v18, qword_1EDE2DDF8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v96 = v19;
  v20 = sub_1C4F00968();
  v21 = sub_1C4F01CF8();

  v95 = a4;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = a3;
    v24 = swift_slowAlloc();
    v100[0] = v24;
    *v22 = 136315394;
    *(v22 + 4) = sub_1C441D828(a1, a2, v100);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_1C441D828(v23, a4, v100);
    _os_log_impl(&dword_1C43F8000, v20, v21, "ViewMigration: Cleaning state for %s -> %s", v22, 0x16u);
    swift_arrayDestroy();
    v25 = v24;
    a3 = v23;
    MEMORY[0x1C6942830](v25, -1, -1);
    MEMORY[0x1C6942830](v22, -1, -1);
  }

  swift_beginAccess();
  v26 = *(a5 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v27 = sub_1C4499AD0(a1, a2, v26);

  v28 = a1;
  if (v27)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v29 = sub_1C4F00968();
    v30 = sub_1C4F01CF8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v28;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v97 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1C441D828(v31, a2, &v97);
      _os_log_impl(&dword_1C43F8000, v29, v30, "ViewMigration: %s has already been removed", v32, 0xCu);
      sub_1C440962C(v33);
      MEMORY[0x1C6942830](v33, -1, -1);
      v34 = v32;
LABEL_34:
      MEMORY[0x1C6942830](v34, -1, -1);
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  swift_beginAccess();
  v35 = *a6;
  swift_isUniquelyReferenced_nonNull_native();
  v99 = *a6;
  v36 = v99;
  *a6 = 0x8000000000000000;
  v37 = sub_1C445FAA8(a1, a2);
  if (__OFADD__(*(v36 + 16), (v38 & 1) == 0))
  {
    __break(1u);
    goto LABEL_43;
  }

  v39 = v37;
  v40 = v38;
  sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
  v41 = v99;
  if (sub_1C4F02458())
  {
    v42 = sub_1C445FAA8(a1, a2);
    v44 = a4;
    if ((v40 & 1) == (v43 & 1))
    {
      v39 = v42;
      goto LABEL_13;
    }

LABEL_43:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  v44 = a4;
LABEL_13:
  *a6 = v99;
  if ((v40 & 1) == 0)
  {
    sub_1C44686DC(v39, a1, a2, MEMORY[0x1E69E7CD0], v41);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  v45 = *(v41 + 56) + 8 * v39;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v46 = sub_1C44869B4(&v99, a3, v44);
  swift_endAccess();

  if ((v46 & 1) == 0)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v29 = sub_1C4F00968();
    v78 = sub_1C4F01CF8();

    if (os_log_type_enabled(v29, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v81 = a3;
      v82 = v80;
      *&v97 = v80;
      *v79 = 136315138;
      *(v79 + 4) = sub_1C441D828(v81, v44, &v97);
      _os_log_impl(&dword_1C43F8000, v29, v78, "ViewMigration: %s has already been dropped", v79, 0xCu);
      sub_1C440962C(v82);
      MEMORY[0x1C6942830](v82, -1, -1);
      v34 = v79;
      goto LABEL_34;
    }

LABEL_35:

    return;
  }

  swift_beginAccess();
  v47 = sub_1C4663244(v28, a2, *(a7 + 16));
  if (!v47)
  {
    swift_endAccess();
    sub_1C450B034();
    v83 = swift_allocError();
    *v84 = v28;
    *(v84 + 8) = a2;
    *(v84 + 16) = xmmword_1C4F5E650;
    *(v84 + 32) = 0xD00000000000001DLL;
    *(v84 + 40) = 0x80000001C4FBBD90;
    *(v84 + 48) = v97;
    *(v84 + 64) = 0;
    v101 = v83;
    swift_willThrow();
LABEL_39:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return;
  }

  v48 = v47;
  swift_endAccess();
  swift_beginAccess();
  v49 = sub_1C4663244(v28, a2, *a8);
  if (!v49)
  {
    swift_endAccess();
    goto LABEL_38;
  }

  v50 = sub_1C4663244(a3, v44, v49);
  swift_endAccess();

  v94 = v50;
  if (!v50)
  {
LABEL_38:

    sub_1C450B034();
    v85 = swift_allocError();
    *v86 = a3;
    *(v86 + 8) = v44;
    *(v86 + 16) = xmmword_1C4F5E650;
    *(v86 + 32) = 0xD000000000000026;
    *(v86 + 40) = 0x80000001C4FBBDB0;
    *(v86 + 48) = v97;
    *(v86 + 64) = 0;
    v101 = v85;
    swift_willThrow();
    goto LABEL_39;
  }

  v51 = v101;
  v52 = sub_1C4C33FC4(v48, (a9 + 16));

  if (v52)
  {
    v101 = v51;
    v88 = v28;
    v53 = *(v50 + 16);
    if (v53)
    {
      v54 = (v94 + 40);
      do
      {
        v56 = *(v54 - 1);
        v55 = *v54;
        swift_beginAccess();
        swift_bridgeObjectRetain_n();
        v57 = sub_1C44869B4(&v99, v56, v55);
        swift_endAccess();

        if (v57)
        {
          swift_beginAccess();
          sub_1C4588BAC();
          v58 = *(*(a12 + 16) + 16);
          sub_1C45897E8();
          v59 = *(a12 + 16);
          *(v59 + 16) = v58 + 1;
          v60 = v59 + 16 * v58;
          *(v60 + 32) = v56;
          *(v60 + 40) = v55;
          *(a12 + 16) = v59;
          swift_endAccess();
        }

        else
        {
        }

        v54 += 2;
        --v53;
      }

      while (v53);
    }

    v61 = v88;
    v62 = v95;
    v63 = v101;
    sub_1C4C3A640(v88, a2, a3, v95, a13, v64, v65, v66, v87, a11, a13, v88, a3, a10, v94, v95, v96, v97, *(&v97 + 1), v98);
    v101 = v63;
    if (v63)
    {
      *&v97 = v101;
      v67 = v101;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v68 = v101;
        v69 = v101;
        v70 = sub_1C4F00968();
        v71 = sub_1C4F01CE8();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = v62;
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          *&v97 = v75;
          *v72 = 136315650;
          *(v72 + 4) = sub_1C441D828(v61, a2, &v97);
          *(v72 + 12) = 2080;
          *(v72 + 14) = sub_1C441D828(v90, v73, &v97);
          *(v72 + 22) = 2112;
          v76 = v101;
          v77 = _swift_stdlib_bridgeErrorToNSError();
          *(v72 + 24) = v77;
          *v74 = v77;
          _os_log_impl(&dword_1C43F8000, v70, v71, "ViewMigration: Could not remove path %s %s: %@", v72, 0x20u);
          sub_1C4420C3C(v74, &qword_1EC0BDA00, &qword_1C4F10D30);
          MEMORY[0x1C6942830](v74, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x1C6942830](v75, -1, -1);
          MEMORY[0x1C6942830](v72, -1, -1);
        }
      }

      v92(v61, a2);

      v101 = 0;
    }
  }

  else
  {

    a10(v28, a2);
    v101 = v51;
  }
}

void sub_1C4C3E024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v369 = v20;
  v24 = v23;
  v332 = v25;
  v324 = v26;
  v335 = v27;
  v330 = v28;
  v338 = v29;
  v31 = v30;
  v373 = *MEMORY[0x1E69E9840];
  v337 = _s14ViewConfigInfoVMa(0);
  v32 = sub_1C43FBCE0(v337);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD230();
  v336 = v36;
  v37 = sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
  sub_1C43FBD18(v37);
  v39 = *(v38 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD2C8(&v323 - v41);
  v355 = sub_1C4F001E8();
  v42 = sub_1C43FCDF8(v355);
  v364 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FD230();
  v49 = sub_1C43FD2C8(v48);
  v360 = _s10ViewConfigVMa(v49);
  v50 = sub_1C43FBCE0(v360);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBD08();
  v55 = v53 - v54;
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBF38();
  v358 = v57;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FD230();
  v359 = v60;
  v61 = sub_1C43FBE44();
  v356 = _s15ConfigReferenceOMa(v61);
  v62 = sub_1C43FCDF8(v356);
  v363 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v67);
  sub_1C43FBF38();
  v365 = v68;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FBF38();
  v357 = v71;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v72);
  sub_1C43FD230();
  v362 = v73;
  sub_1C43FBE44();
  v366 = sub_1C4EFA608();
  v74 = sub_1C43FCDF8(v366);
  v361 = v75;
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v74);
  sub_1C43FBCC4();
  v368 = v79 - v78;
  sub_1C43FBE44();
  v351 = sub_1C4EF98F8();
  v80 = sub_1C43FCDF8(v351);
  v82 = v81;
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v80);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v85);
  sub_1C43FBF38();
  sub_1C43FBF28();
  v87 = MEMORY[0x1EEE9AC00](v86);
  v89 = &v323 - v88;
  MEMORY[0x1EEE9AC00](v87);
  v91 = &v323 - v90;
  v326 = v24;
  v93 = sub_1C4C85A88(v24) == 0x7261656C63 && v92 == 0xE500000000000000;
  v94 = &xmmword_1EDDFD000;
  v367 = v82;
  if (v93)
  {
  }

  else
  {
    v95 = sub_1C4F02938();

    if ((v95 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v97 = sub_1C4F00978();
  sub_1C43FCEE8(v97, qword_1EDE2DDF8);
  v98 = sub_1C4F00968();
  v99 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v99))
  {
    v100 = sub_1C43FCED0();
    *v100 = 0;
    sub_1C441253C();
    _os_log_impl(v101, v102, v103, v104, v100, 2u);
    v94 = &xmmword_1EDDFD000;
    v82 = v367;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v96 = sub_1C4BC0594();
LABEL_13:
  v105 = *(v335 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  MEMORY[0x1EEE9AC00](v96);
  *(&v323 - 4) = sub_1C4C3FDD8;
  *(&v323 - 3) = 0;
  *(&v323 - 2) = v106;
  v323 = v105;
  v107 = sub_1C49A583C(sub_1C4C41A60, (&v323 - 6));
  v329 = v108;
  v328 = v107;
  v109 = *(v107 + 16);
  v110 = &unk_1C4F0C000;
  v325 = v55;
  if (v109)
  {
    v111 = v365;
    v112 = v362;
    v113 = v31;
    goto LABEL_15;
  }

  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v350 = v31;
  v234 = sub_1C4F00978();
  sub_1C43FCEE8(v234, qword_1EDE2DDF8);
  v235 = v351;
  (*(v82 + 16))(v91, v330, v351);
  v236 = sub_1C4F00968();
  v237 = sub_1C4F01CF8();
  v238 = os_log_type_enabled(v236, v237);
  *&v349 = v89;
  if (v238)
  {
    v94 = sub_1C43FD084();
    sub_1C43FEC60();
    v239 = swift_slowAlloc();
    v371 = v239;
    *v94 = 136315138;
    v240 = sub_1C4EF98D8();
    v242 = v241;
    v352 = *(v82 + 8);
    v352(v91, v235);
    v243 = sub_1C441D828(v240, v242, &v371);

    *(v94 + 4) = v243;
    sub_1C4480820(&dword_1C43F8000, v236, v237, "ViewMigration: No stored view config hashes. Deleting artifacts directory: %s");
    sub_1C440962C(v239);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v352 = *(v82 + 8);
    v352(v91, v235);
  }

  v258 = objc_opt_self();
  v259 = [v258 defaultManager];
  sub_1C4EF98D8();
  sub_1C4F01108();
  sub_1C44419F4();

  v260 = [v259 fileExistsAtPath_];

  v112 = v362;
  v110 = &unk_1C4F0C000;
  if (v260)
  {
    v261 = [v258 defaultManager];
    v262 = sub_1C4EF9868();
    v371 = 0;
    v263 = [v261 removeItemAtURL:v262 error:&v371];

    if (!v263)
    {
      v279 = v371;
      sub_1C44620AC();

      sub_1C4EF97A8();

      swift_willThrow();
      goto LABEL_70;
    }

    v264 = v371;
  }

  sub_1C4EFA598();
  v265 = sub_1C4EFA518();
  if (v265[2])
  {
    v266 = v265[4];
    v267 = v265[5];

    v268 = *MEMORY[0x1E698E938];
    sub_1C4F01138();
    v269 = v369;
    sub_1C4EFA5B8();
    v369 = v269;
    if (v269)
    {

      sub_1C44620AC();

      goto LABEL_70;
    }

    v289 = v353;
    sub_1C4EFA5F8();
    sub_1C441BB28(&v374);
    sub_1C4EF98A8();
    v290 = (v367 + 8);
    v291 = v352;
    v352(v289, v351);
    sub_1C4415B50(&a11);
    sub_1C4EF98A8();
    v292 = sub_1C43FD024();
    v353 = v290;
    v291(v292);
    v293 = [v258 defaultManager];
    sub_1C4EF98D8();
    sub_1C4F01108();
    sub_1C44419F4();

    LODWORD(v290) = [v293 fileExistsAtPath_];

    v111 = v365;
    if (v290)
    {
      v294 = [v258 defaultManager];
      v295 = sub_1C4EF9868();
      v371 = 0;
      v296 = [v294 removeItemAtURL:v295 error:&v371];

      v297 = v371;
      if (!v296)
      {
        goto LABEL_93;
      }

      v298 = v371;
    }

    v299 = [v258 defaultManager];
    v300 = sub_1C4EF9868();
    v371 = 0;
    v301 = [v299 createDirectoryAtURL:v300 withIntermediateDirectories:1 attributes:0 error:&v371];

    v297 = v371;
    if (v301)
    {
      v302 = v371;
      v303 = sub_1C4469300();
      v304(v303);
      v305 = sub_1C4416B78();
      v306(v305);
      v112 = v362;
      v113 = v350;
      v110 = &unk_1C4F0C000;
      goto LABEL_83;
    }

LABEL_93:
    v307 = v297;
    sub_1C44620AC();

    sub_1C4EF97A8();

    swift_willThrow();
    v308 = sub_1C4469300();
    v309(v308);
    v310 = sub_1C4416B78();
    v311(v310);
    goto LABEL_70;
  }

  v111 = v365;
  v113 = v350;
LABEL_83:
  v94 = &xmmword_1EDDFD000;
LABEL_15:
  v114 = *(v94 + 3);
  v115 = v369;
  if (v114 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v116 = sub_1C4F00978();
  v366 = sub_1C442B738(v116, qword_1EDE2DDF8);
  v117 = sub_1C4F00968();
  v118 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v118))
  {
    v119 = sub_1C43FCED0();
    *v119 = 0;
    sub_1C441253C();
    _os_log_impl(v120, v121, v122, v123, v119, 2u);
    v112 = v362;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v124 = MEMORY[0x1E69E7CC8];
  v370 = MEMORY[0x1E69E7CC8];
  _s17ViewDependencyDAGCMa();
  swift_initStackObject();
  sub_1C4403FC0();
  _s7DAGNodeCMa();
  v125 = sub_1C4F00F28();
  v350 = v117;
  *(v117 + 2) = v125;
  v127 = *(v113 + 2);
  if (v127)
  {
    v128 = 0;
    v368 = v113 + ((*(v363 + 80) + 32) & ~*(v363 + 80));
    v343 = v367 + 32;
    v342 = v367 + 8;
    v327 = v364 + 32;
    v333 = (v364 + 16);
    v340 = (v364 + 8);
    v367 = *(v363 + 72);
    v348 = MEMORY[0x1E69E7CC8];
    *&v126 = v110[458];
    v349 = v126;
    *&v126 = 136315394;
    v339 = v126;
    v361 = v127;
    while (1)
    {
      sub_1C442D720();
      sub_1C4509798(v129, v112);
      sub_1C4C907BC();
      if (v131 >> 60 == 15)
      {
        v369 = v115;
        sub_1C442D720();
        sub_1C4509798(v112, v111);
        v132 = v112;
        v133 = sub_1C4F00968();
        v134 = sub_1C4F01CD8();
        if (os_log_type_enabled(v133, v134))
        {
          v117 = sub_1C43FD084();
          sub_1C43FEC60();
          v135 = swift_slowAlloc();
          v371 = v135;
          *v117 = v349;
          sub_1C442D720();
          v136 = v354;
          sub_1C4509798(v111, v354);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v138 = *v136;
            v137 = v136[1];
          }

          else
          {
            sub_1C4402C08(&v371);
            v161 = v346;
            v162 = v351;
            v163(v346, v136, v351);
            sub_1C4413A70();
            sub_1C44902AC(&qword_1EDDFF9E8, v164);
            v138 = sub_1C4F02858();
            v137 = v165;
            sub_1C4402C08(&v370);
            v166(v161, v162);
          }

          v111 = v365;
          sub_1C4C41B10();
          v167 = sub_1C441D828(v138, v137, &v371);

          *(v117 + 1) = v167;
          _os_log_impl(&dword_1C43F8000, v133, v134, "ViewMigration: Failed to retrieve contents of config for %s", v117, 0xCu);
          sub_1C440962C(v135);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();

          v112 = v362;
          sub_1C4C41B10();
          v127 = v361;
        }

        else
        {

          sub_1C44164D4();
          sub_1C4C41B10();
          sub_1C4402120();
          sub_1C4C41B10();
          v112 = v132;
        }

        v115 = v369;
        goto LABEL_51;
      }

      v139 = v130;
      v140 = v131;
      sub_1C44344B8(v130, v131);
      v141 = objc_autoreleasePoolPush();
      sub_1C4403FC0();
      v142 = sub_1C4EF9348();
      sub_1C44099C4(v142);
      sub_1C4EF9338();
      sub_1C441E7D4();
      sub_1C44902AC(&qword_1EDDFF5F0, v143);
      v144 = v358;
      v145 = v360;
      sub_1C4EF9328();
      if (v115)
      {

        objc_autoreleasePoolPop(v117);
        sub_1C441DFEC(v139, v140);
        sub_1C442D720();
        v146 = v357;
        sub_1C4509798(v112, v357);
        v147 = v115;
        v117 = sub_1C4F00968();
        v148 = sub_1C4F01CD8();

        if (os_log_type_enabled(v117, v148))
        {
          v363 = v139;
          v364 = v140;
          v369 = v115;
          sub_1C441024C();
          v149 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          sub_1C44BBEEC(v150);
          sub_1C43FEC60();
          v151 = swift_slowAlloc();
          v371 = sub_1C44016B0(v151);
          *v149 = v339;
          sub_1C442D720();
          v152 = v341;
          sub_1C4509798(v146, v341);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v154 = *v152;
            v153 = v152[1];
            v127 = v361;
          }

          else
          {
            sub_1C4402C08(&v371);
            v186 = v346;
            v187 = sub_1C44149C8();
            v188 = v351;
            v189(v187);
            sub_1C4413A70();
            sub_1C44902AC(&qword_1EDDFF9E8, v190);
            sub_1C4F02858();
            sub_1C4402C08(&v370);
            v191 = v186;
            v192 = v188;
            v127 = v361;
            v112 = v362;
            v193(v191, v192);
          }

          sub_1C4C41B10();
          v194 = sub_1C43FD018();
          v197 = sub_1C441D828(v194, v195, v196);

          *(v149 + 4) = v197;
          *(v149 + 12) = 2112;
          v198 = v369;
          v199 = v369;
          v200 = _swift_stdlib_bridgeErrorToNSError();
          *(v149 + 14) = v200;
          v201 = v352;
          *v352 = v200;
          _os_log_impl(&dword_1C43F8000, v117, v148, "ViewMigration: Failed to decode contents of data for %s: %@", v149, 0x16u);
          sub_1C4420C3C(v201, &qword_1EC0BDA00, &qword_1C4F10D30);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C440962C(v353);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();

          sub_1C441DFEC(v363, v364);
          sub_1C4C41B10();
          v115 = 0;
          v111 = v365;
          goto LABEL_51;
        }

        sub_1C441DFEC(v139, v140);
        sub_1C44164D4();
        sub_1C4C41B10();
        sub_1C43FD024();
        sub_1C4C41B10();
        v115 = 0;
      }

      else
      {
        v369 = 0;

        objc_autoreleasePoolPop(v117);
        v363 = v139;
        v364 = v140;
        sub_1C44415B4(v139, v140);
        v155 = v344;
        sub_1C4C41AB8(v144, v344);
        v156 = v155;
        v157 = v359;
        sub_1C4C41AB8(v156, v359);
        v158 = v345;
        sub_1C446C964(v157 + *(v145 + 80), v345, &qword_1EC0BDCB0, &unk_1C4F54830);
        if (sub_1C44157D4(v158, 1, v355) == 1)
        {
          v159 = sub_1C4402CD0();
          sub_1C4420C3C(v159, v160, &unk_1C4F54830);
        }

        else
        {
          sub_1C4402C08(&v354);
          v168 = sub_1C43FD024();
          v169(v168);
          v170 = *v333;
          v171 = v331;
          v172 = sub_1C440BB4C();
          v170(v172);
          v173 = (v332 + *(type metadata accessor for Configuration() + 20));
          v175 = *v173;
          v174 = v173[1];
          Features.FeatureFlag.asOption()();
          v176 = v355;
          v177 = *v340;
          (*v340)(v171, v355);
          if ((v371 & ~v175) != 0 || (v372 & v174) != v372)
          {
            (v170)(v334, v347, v176);
            sub_1C44A1F58(&v352);
            sub_1C4509798(v218, v219);
            v117 = sub_1C4F00968();
            v220 = sub_1C4F01CF8();
            if (os_log_type_enabled(v117, v220))
            {
              sub_1C441024C();
              v221 = swift_slowAlloc();
              sub_1C443FD74();
              v222 = swift_slowAlloc();
              v371 = sub_1C44016B0(v222);
              *v221 = v339;
              v223 = sub_1C4F001C8();
              v225 = v224;
              v226 = sub_1C4440E18();
              v228 = *(v227 - 256);
              v177(v226);
              sub_1C441D828(v223, v225, &v371);
              sub_1C43FEF2C();

              *(v221 + 4) = v223;
              *(v221 + 12) = 2080;
              v229 = *v174;
              v230 = *(v174 + 8);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4407F44();
              sub_1C4C41B10();
              sub_1C441D828(v229, v230, &v371);
              sub_1C43FEF2C();

              *(v221 + 14) = v229;
              _os_log_impl(&dword_1C43F8000, v117, v220, "ViewMigration: Feature flag %s not enabled for view %s", v221, 0x16u);
              sub_1C4422A7C(&a16);
              swift_arrayDestroy();
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();

              sub_1C441DFEC(v363, v364);
              (v177)(v347, v355);
            }

            else
            {

              sub_1C441DFEC(v363, v364);
              sub_1C4407F44();
              sub_1C4C41B10();
              v231 = sub_1C4440E18();
              v117 = *(v232 - 256);
              v177(v231);
              v233 = sub_1C44089C8();
              v177(v233);
            }

            sub_1C4440094();
            v112 = v362;
            sub_1C4C41B10();
            v111 = v365;
            v115 = v369;
            v127 = v361;
            sub_1C4407F44();
            sub_1C4C41B10();
            goto LABEL_51;
          }

          (v177)(v347, v176);
          v145 = v360;
        }

        v178 = v359[33];
        if (v178 && (v179 = *(v178 + 16)) != 0)
        {
          v371 = MEMORY[0x1E69E7CC0];
          sub_1C44CD9C0();
          v180 = v371;
          v181 = (v178 + 48);
          do
          {
            v178 = *(v181 - 1);
            v182 = *v181;
            v371 = v180;
            v184 = v180[2];
            v183 = v180[3];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            if (v184 >= v183 >> 1)
            {
              sub_1C44CD9C0();
              v180 = v371;
            }

            v180[2] = v184 + 1;
            v185 = &v180[2 * v184];
            v185[4] = v178;
            v185[5] = v182;
            v181 += 7;
            --v179;
          }

          while (v179);
          v145 = v360;
        }

        else
        {
          v180 = MEMORY[0x1E69E7CC0];
        }

        v202 = v359;
        v203 = v359[1];
        v204 = sub_1C44016B0(*v359);
        sub_1C4CCF200(v204, v203, v180);
        v205 = v202[37];
        v352 = v202[36];
        sub_1C442D720();
        sub_1C44A1F58(&v363);
        sub_1C4509798(v206, v207);
        v208 = *(v202 + *(v145 + 96));
        LODWORD(v348) = (v208 != 2) & (v208 ^ 1);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v209 = sub_1C4C3925C(v363, v364, v202, v338);
        v211 = v210;
        v212 = v336;
        v213 = v352;
        *v336 = v180;
        v212[1] = v213;
        v212[2] = v205;
        v214 = v337;
        sub_1C4C41AB8(v178, v212 + *(v337 + 24));
        *(v212 + *(v214 + 28)) = v348;
        v215 = (v212 + *(v214 + 32));
        *v215 = v209;
        v215[1] = v211;
        sub_1C4425510();
        sub_1C44A1F58(&v365);
        sub_1C4C41AB8(v216, v217);
        v117 = v370;
        swift_isUniquelyReferenced_nonNull_native();
        v371 = v117;
        v112 = v362;
        sub_1C4662C0C();

        sub_1C441DFEC(v363, v364);
        v348 = v371;
        v370 = v371;
        sub_1C4440094();
        sub_1C4C41B10();
        sub_1C4407F44();
        sub_1C4C41B10();
        v115 = v369;
      }

      v111 = v365;
      v127 = v361;
LABEL_51:
      if (++v128 == v127)
      {
        goto LABEL_62;
      }
    }
  }

  v348 = v124;
LABEL_62:
  v244 = v115;
  v245 = v348;
  v246 = sub_1C4C3412C(v348);
  v247 = v326;
  v248 = v330;
  v249 = v328;
  v250 = v350;
  if (v326 - 2 >= 3)
  {
    if (!v326)
    {

      swift_setDeallocating();
      v253 = *(v250 + 16);

      sub_1C44620AC();
LABEL_67:

      goto LABEL_69;
    }

    sub_1C47C81C0();
    v245 = v348;
    if ((v270 & 1) != 0 && !*(v329 + 16))
    {

      sub_1C44620AC();
      v271 = sub_1C4F00968();
      v272 = sub_1C4F01CF8();
      if (!sub_1C43FCEA4(v272))
      {
        swift_setDeallocating();
        v318 = *(v250 + 16);

        goto LABEL_69;
      }

      v273 = sub_1C43FCED0();
      *v273 = 0;
      sub_1C441253C();
      _os_log_impl(v274, v275, v276, v277, v273, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      swift_setDeallocating();
      v278 = *(v250 + 16);

      goto LABEL_67;
    }
  }

  v251 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v252 = sub_1C45A322C(v251);
  sub_1C4C37198(v250, v252);
  if (!v244)
  {

    sub_1C4C344B8(v245);
    v254 = sub_1C43FBC98();
    sub_1C4C375F8(v254, v255);
    sub_1C44419F4();

    v280 = v324;
    if (v324)
    {
      v281 = v324;
    }

    else
    {
      if (qword_1EDDFE3A8 != -1)
      {
        swift_once();
      }

      v322 = *(sub_1C4ABFA6C() + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19SyncDeviceRetriever_lockedBox);
      os_unfair_lock_lock((v322 + 24));
      v281 = *(*(v322 + 16) + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      os_unfair_lock_unlock((v322 + 24));

      v280 = v324;
    }

    MEMORY[0x1EEE9AC00](v280);
    *(&v323 - 80) = v247;
    *(&v323 - 9) = v249;
    *(&v323 - 8) = v246;
    *(&v323 - 7) = &v370;
    v282 = v335;
    *(&v323 - 6) = v329;
    *(&v323 - 5) = v282;
    *(&v323 - 4) = v248;
    *(&v323 - 3) = v245;
    *(&v323 - 2) = v281;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4418704(sub_1C4C41A80, (&v323 - 12), v283, v284, v285, v286, v287, v288, v323, v324);

    v312 = [objc_opt_self() defaultManager];
    v313 = sub_1C4EF9868();
    v371 = 0;
    v314 = [v312 createDirectoryAtURL:v313 withIntermediateDirectories:1 attributes:0 error:&v371];

    v315 = v371;
    if (v314)
    {
      sub_1C4422A7C(&a13);
      swift_setDeallocating();
      v316 = v313[2];
      v317 = v315;
    }

    else
    {
      v319 = v371;
      sub_1C4EF97A8();

      swift_willThrow();
      v320 = v350;
      swift_setDeallocating();
      v321 = *(v320 + 2);
    }

    goto LABEL_67;
  }

  sub_1C44620AC();

  swift_setDeallocating();
  v256 = *(v250 + 16);

LABEL_69:

LABEL_70:
  v257 = *MEMORY[0x1E69E9840];
  sub_1C43FBC80();
}

void sub_1C4C3FDD8(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C4BAEEAC();
  if (!v2)
  {
    v6 = v5;
    v7 = sub_1C4BB9AC8(a1);
    *a2 = v6;
    a2[1] = v7;
  }
}

void sub_1C4C3FE4C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v11 = v10;
  v103 = a4;
  v104 = a6;
  if (sub_1C4C85A88(a2) == 0x654465746F6D6572 && v17 == 0xED00007365636976)
  {
  }

  else
  {
    v19 = sub_1C4F02938();

    if ((v19 & 1) == 0)
    {
      v91 = a8;
      sub_1C4C39B18(a3, v103);
      v21 = v20;
      sub_1C4C33D60(v22, a5);
      v24 = *(v21 + 16);
      v25 = *(v23 + 16);
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_43;
      }

      v28 = *(v104 + 16);
      v95 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        goto LABEL_44;
      }

      v92 = *(v104 + 16);
      v100 = v23;
      if (qword_1EDDFD018 != -1)
      {
        goto LABEL_45;
      }

      while (1)
      {
        v29 = sub_1C4F00978();
        v101 = sub_1C442B738(v29, qword_1EDE2DDF8);
        v30 = sub_1C4F00968();
        v31 = sub_1C4F01CF8();
        v96 = a5;
        v98 = a1;
        v93 = a7;
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v105 = v33;
          *v32 = 134218242;
          *(v32 + 4) = *(v21 + 16);
          *(v32 + 12) = 2080;
          v34 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v35 = MEMORY[0x1C6940380](v34, MEMORY[0x1E69E6158]);
          v37 = v36;

          v38 = sub_1C441D828(v35, v37, &v105);

          *(v32 + 14) = v38;
          _os_log_impl(&dword_1C43F8000, v30, v31, "ViewMigration: Found %ld removed views: %s", v32, 0x16u);
          sub_1C440962C(v33);
          MEMORY[0x1C6942830](v33, -1, -1);
          MEMORY[0x1C6942830](v32, -1, -1);
        }

        v39 = sub_1C4F00968();
        v40 = sub_1C4F01CF8();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v105 = v42;
          *v41 = 134218242;
          *(v41 + 4) = *(v100 + 16);
          *(v41 + 12) = 2080;
          v43 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v44 = MEMORY[0x1C6940380](v43, MEMORY[0x1E69E6158]);
          v46 = v45;

          v47 = sub_1C441D828(v44, v46, &v105);

          *(v41 + 14) = v47;
          _os_log_impl(&dword_1C43F8000, v39, v40, "ViewMigration: Found %ld modified views: %s", v41, 0x16u);
          sub_1C440962C(v42);
          MEMORY[0x1C6942830](v42, -1, -1);
          MEMORY[0x1C6942830](v41, -1, -1);
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v48 = sub_1C4F00968();
        v49 = sub_1C4F01CF8();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v105 = v51;
          *v50 = 134218242;
          *(v50 + 4) = v92;

          *(v50 + 12) = 2080;
          v52 = MEMORY[0x1C6940380](v104, MEMORY[0x1E69E6158]);
          v54 = sub_1C441D828(v52, v53, &v105);

          *(v50 + 14) = v54;
          _os_log_impl(&dword_1C43F8000, v48, v49, "ViewMigration: Found %ld disabled views: %s", v50, 0x16u);
          sub_1C440962C(v51);
          MEMORY[0x1C6942830](v51, -1, -1);
          MEMORY[0x1C6942830](v50, -1, -1);
        }

        else
        {
        }

        a1 = v98;
        if (!*(v103 + 16))
        {
          v55 = sub_1C4F00968();
          v56 = sub_1C4F01CF8();
          if (!os_log_type_enabled(v55, v56))
          {
            goto LABEL_28;
          }

          v60 = swift_slowAlloc();
          *v60 = 0;
          v61 = "ViewMigration: No view cleanup data exists. Skipping cleanup step";
          goto LABEL_27;
        }

        v55 = sub_1C4F00968();
        v56 = sub_1C4F01CF8();
        v57 = os_log_type_enabled(v55, v56);
        if (!v95)
        {
          break;
        }

        if (v57)
        {
          v58 = swift_slowAlloc();
          *v58 = 134217984;
          *(v58 + 4) = v95;
          _os_log_impl(&dword_1C43F8000, v55, v56, "ViewMigration: View cleanup data exists and have %ld views to clean up. Proceeding to cleanup step", v58, 0xCu);
          MEMORY[0x1C6942830](v58, -1, -1);
        }

        sub_1C4C4069C();
        if (v11)
        {

          goto LABEL_31;
        }

        v63 = v59;
        v106 = v21;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v64 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C449ADBC(v64);
        v65 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C449ADBC(v65);
        sub_1C4C3C064(v106, v63, v91, v66, v67, v68, v69, v70, v90, v91, v92, v93, v95, v96, v98, v100, v101, v103, v104, v105);
        v72 = v71;

        v73 = 0;
        a7 = v72 + 56;
        v74 = 1 << *(v72 + 32);
        v75 = -1;
        if (v74 < 64)
        {
          v75 = ~(-1 << v74);
        }

        v76 = v75 & *(v72 + 56);
        v77 = (v74 + 63) >> 6;
        while (1)
        {
          a5 = v97;
          if (!v76)
          {
            break;
          }

          v78 = v73;
LABEL_40:
          v79 = (*(v72 + 48) + ((v78 << 10) | (16 * __clz(__rbit64(v76)))));
          v80 = *v79;
          v81 = v79[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4C40CD0(a1, v80, v81, v82, v83, v84, v85, v86, v90, v91, v92, v94, v95, v97, v99, v100, v102, v103, v104, v105);
          v76 &= v76 - 1;

          v73 = v78;
        }

        while (1)
        {
          v78 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            break;
          }

          if (v78 >= v77)
          {

            a7 = v94;
            goto LABEL_29;
          }

          v76 = *(a7 + 8 * v78);
          ++v73;
          if (v76)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        swift_once();
      }

      if (!v57)
      {
        goto LABEL_28;
      }

      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = "ViewMigration: View cleanup data exists but don't need to clean any views. Skipping cleanup step";
LABEL_27:
      _os_log_impl(&dword_1C43F8000, v55, v56, v61, v60, 2u);
      MEMORY[0x1C6942830](v60, -1, -1);
LABEL_28:

      a7 = v93;
      a5 = v96;
    }
  }

LABEL_29:
  v62 = *a5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C369A0();
  if (v11)
  {
LABEL_31:
  }

  else
  {
    sub_1C4C34EC4(a1, a7, v62, a9, a10);
    sub_1C4C36128();
    sub_1C4C36200();
    sub_1C4C362D8();
    sub_1C4C36558();
    v87 = a7;
    v88 = *(a7 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_configCache);
    os_unfair_lock_lock((v88 + 24));
    v89 = *(v88 + 16);
    sub_1C4F00238();
    os_unfair_lock_unlock((v88 + 24));

    sub_1C4C367F0(a1, v87);
  }
}

void sub_1C4C4069C()
{
  sub_1C43FE96C();
  v2 = v0;
  v3 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4402A68();
  v7 = sub_1C4EFBC98();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  sub_1C43FE984();
  MEMORY[0x1C693A960](0xD0000000000000BALL);
  sub_1C4EFBEE8();
  if (!v0)
  {
    sub_1C4EFBC58();
    v16 = *(v10 + 8);
    v17 = sub_1C44089C8();
    v18(v17);
    sub_1C4EFB768();
    v19 = sub_1C44179F4();
    sub_1C440BAA8(v19, v20, v21, v22);
    memset(v60, 0, 40);
    sub_1C440BB4C();
    v23 = sub_1C4EFBC28();

    sub_1C4420C3C(v60, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v1, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v24 = sub_1C4428DA0(v23);
    if (!v24)
    {

      goto LABEL_4;
    }

    v25 = v24;
    v61 = MEMORY[0x1E69E7CC0];
    sub_1C459F0B0(0, v24 & ~(v24 >> 63), 0);
    if ((v25 & 0x8000000000000000) == 0)
    {
      v26 = 0;
      v27 = v61;
      v54 = v23;
      v55 = v23 & 0xC000000000000001;
      v52 = v23 & 0xFFFFFFFFFFFFFF8;
      v53 = v25;
      while (!__OFADD__(v26, 1))
      {
        v59 = v27;
        if (v55)
        {
          v28 = sub_1C44089C8();
          v29 = MEMORY[0x1C6940F90](v28);
        }

        else
        {
          if (v26 >= *(v52 + 16))
          {
            goto LABEL_32;
          }

          v29 = *(v23 + 8 * v26 + 32);
        }

        sub_1C447FA7C();
        sub_1C4EFBBA8();
        v30 = sub_1C4EFBBE8();
        if (v30)
        {
          v31 = MEMORY[0x1EEE9AC00](v30);
          *(&v52 - 2) = v29;
          *(&v52 - 1) = 0;
          v32 = sqlite3_column_type(v31, 0);
          if (v32 == 5)
          {
            MEMORY[0x1EEE9AC00](v32);
            *(&v52 - 2) = sub_1C487BF24;
            *(&v52 - 1) = (&v52 - 4);
            goto LABEL_36;
          }

          v33 = sub_1C4F011E8();
          v57 = v34;
        }

        else
        {
          sub_1C4EFBB98();
          v57 = v60[1];
          v33 = v60[0];
        }

        sub_1C447FA7C();
        sub_1C4EFBBA8();
        v35 = sub_1C4EFBBE8();
        if (v35)
        {
          v36 = MEMORY[0x1EEE9AC00](v35);
          *(&v52 - 2) = v29;
          *(&v52 - 1) = 1;
          v37 = sqlite3_column_type(v36, 1);
          if (v37 == 5)
          {
            MEMORY[0x1EEE9AC00](v37);
            *(&v52 - 2) = sub_1C487BDA4;
            *(&v52 - 1) = (&v52 - 4);
LABEL_36:
            sub_1C4EFB968();
            while (1)
            {
LABEL_37:
              swift_unexpectedError();
              __break(1u);
            }
          }

          v38 = sub_1C4F011E8();
          v56 = v39;
          v60[0] = v38;
        }

        else
        {
          sub_1C4EFBB98();
          v56 = v60[1];
          v38 = v60[0];
        }

        v58 = v33;
        sub_1C447FA7C();
        sub_1C4EFBBA8();
        v40 = sub_1C4EFBBE8();
        if (v40)
        {
          v41 = v26 + 1;
          v42 = v2;
          if (sqlite3_column_type(v40, 2) == 5)
          {

            v43 = 0;
            v44 = 0;
          }

          else
          {
            v44 = sub_1C4F011E8();
            v43 = v45;
          }
        }

        else
        {
          v41 = v26 + 1;
          sub_1C4EFBBF8();
          v42 = 0;

          v43 = v60[1];
          v44 = v60[0];
        }

        v27 = v59;
        v62 = v59;
        v47 = *(v59 + 16);
        v46 = *(v59 + 24);
        if (v47 >= v46 >> 1)
        {
          v51 = sub_1C43FCFE8(v46);
          sub_1C459F0B0(v51, v47 + 1, 1);
          v27 = v62;
        }

        *(v27 + 16) = v47 + 1;
        v48 = (v27 + 48 * v47);
        v49 = v57;
        v48[4] = v58;
        v48[5] = v49;
        v50 = v56;
        v48[6] = v38;
        v48[7] = v50;
        v48[8] = v44;
        v48[9] = v43;
        ++v26;
        v23 = v54;
        v2 = v42;
        if (v41 == v53)
        {

          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  v13 = *(v10 + 8);
  v14 = sub_1C44089C8();
  v15(v14);
LABEL_4:
  sub_1C43FBC80();
}

void sub_1C4C40CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v139 = v20;
  v140 = v24;
  v26 = v25;
  v141 = v27;
  v28 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v29 = sub_1C43FBD18(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  v132 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  v135 = v36;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD230();
  v138 = v38;
  sub_1C43FBE44();
  v142 = sub_1C4EFBC98();
  v39 = sub_1C43FCDF8(v142);
  a10 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  v131 = v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  v134 = v46;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  v136 = v48;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v49);
  v51 = v124 - v50;
  v52 = sub_1C4EFB678();
  v53 = sub_1C43FCDF8(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBF38();
  v130 = v60;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBF38();
  v129 = v62;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBF38();
  v133 = v64;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v65);
  sub_1C44146B8();
  v67 = MEMORY[0x1EEE9AC00](v66);
  v69 = v124 - v68;
  v70 = MEMORY[0x1EEE9AC00](v67);
  v72 = v124 - v71;
  v73 = MEMORY[0x1EEE9AC00](v70);
  MEMORY[0x1EEE9AC00](v73);
  sub_1C4400B4C();
  sub_1C4EFB648();
  sub_1C4EFB638();
  v137 = v26;
  *&v143 = v26;
  *(&v143 + 1) = v140;
  sub_1C4415EA8();
  sub_1C4EFB668();
  sub_1C44587CC();
  v76 = *(v55 + 32);
  v75 = v55 + 32;
  v74 = v76;
  v77 = sub_1C44149C8();
  v76(v77);
  sub_1C4EFBC88();
  v78 = v139;
  sub_1C4EFBEE8();
  if (v78)
  {
    (*(a10 + 8))(v51, v142);
  }

  else
  {
    v124[2] = v72;
    v125 = v69;
    v124[1] = v21;
    v139 = v74;
    v124[3] = v75;
    v80 = a10 + 8;
    v79 = *(a10 + 8);
    v79(v51, v142);
    v81 = sub_1C4EFB768();
    sub_1C43FCF64();
    sub_1C440BAA8(v82, v83, v84, v81);
    v145 = 0;
    v143 = 0u;
    v144 = 0u;
    v85 = MEMORY[0x1E69E6530];
    sub_1C44149C8();
    sub_1C4EFB9A8();

    sub_1C4420C3C(&v143, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v138, &unk_1EC0C06C0, &unk_1C4F10DB0);
    if (v147)
    {
      if (qword_1EDDFD018 != -1)
      {
        sub_1C441A86C();
        swift_once();
      }

      v86 = sub_1C4F00978();
      sub_1C43FCEE8(v86, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v87 = sub_1C4F00968();
      v88 = sub_1C4F01CD8();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = sub_1C43FD084();
        sub_1C43FEC60();
        v90 = swift_slowAlloc();
        *&v143 = v90;
        *v89 = 136315138;
        v91 = sub_1C43FD018();
        *(v89 + 4) = sub_1C441D828(v91, v92, v93);
        sub_1C441253C();
        sub_1C4480820(v94, v95, v96, v97);
        sub_1C440962C(v90);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }
    }

    else
    {
      v138 = v81;
      v140 = v79;
      a10 = v80;
      v98 = v146;
      sub_1C445140C(&a11);
      sub_1C4EFB648();
      sub_1C4EFB638();
      *(&v144 + 1) = v85;
      v145 = MEMORY[0x1E69A0178];
      *&v143 = v98;
      sub_1C4EFB658();
      sub_1C4420C3C(&v143, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C44587CC();
      v99 = v85;
      v100 = v139;
      (v139)(v125, v99, v52);
      sub_1C4EFBC88();
      sub_1C4EFBEE8();
      sub_1C441F064();
      v101();
      v102 = v135;
      sub_1C43FCF64();
      sub_1C440BAA8(v103, v104, v105, v138);
      sub_1C4EFC0A8();
      sub_1C4420C3C(v102, &unk_1EC0C06C0, &unk_1C4F10DB0);

      sub_1C445140C(&a10);
      sub_1C4EFB648();
      sub_1C4EFB638();
      v145 = MEMORY[0x1E69A0178];
      sub_1C448F20C(MEMORY[0x1E69E6530]);
      sub_1C4420C3C(&v143, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C4EFB638();
      v106 = sub_1C44149C8();
      v100(v106);
      sub_1C4EFBC88();
      sub_1C4EFBEE8();
      sub_1C441F064();
      v107();
      v108 = v132;
      sub_1C43FCF64();
      sub_1C440BAA8(v109, v110, v111, v138);
      sub_1C4EFC0A8();
      sub_1C4420C3C(v108, &unk_1EC0C06C0, &unk_1C4F10DB0);

      v112 = v129;
      sub_1C4EFB648();
      sub_1C4EFB638();
      v113 = MEMORY[0x1E69A0178];
      v145 = MEMORY[0x1E69A0178];
      sub_1C448F20C(MEMORY[0x1E69E6530]);
      sub_1C4420C3C(&v143, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C44587CC();
      (v139)(v130, v112, v52);
      sub_1C4EFBC88();
      sub_1C4EFBEE8();
      sub_1C43FEF2C();
      sub_1C441F064();
      v114();
      v115 = v128;
      sub_1C43FCF64();
      sub_1C440BAA8(v116, v117, v118, v138);
      sub_1C4EFC0A8();
      sub_1C4420C3C(v115, &unk_1EC0C06C0, &unk_1C4F10DB0);

      sub_1C445140C(&a15);
      sub_1C4EFB648();
      sub_1C43FE984();
      sub_1C4EFB638();
      v145 = v113;
      sub_1C448F20C(MEMORY[0x1E69E6530]);
      sub_1C4420C3C(&v143, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C44587CC();
      (v139)(v127, 0, v52);
      sub_1C4415B50(&a17);
      sub_1C4EFBC88();
      sub_1C4EFBEE8();
      sub_1C441F064();
      v119();
      v120 = v126;
      sub_1C43FCF64();
      sub_1C440BAA8(v121, v122, v123, v138);
      sub_1C4EFC0A8();
      sub_1C4420C3C(v120, &unk_1EC0C06C0, &unk_1C4F10DB0);
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4C41788(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v20 = v4;
  v21 = a1 + 32;
  v5 = a2 + 56;
  while (1)
  {
    do
    {
      if (v3 == v4)
      {
        return 1;
      }

      v6 = v3++;
    }

    while (!*(a2 + 16));
    v7 = (v21 + 24 * v6);
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = *(a2 + 40);
    sub_1C4F02AF8();
    MEMORY[0x1C69417F0](v8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();
    v12 = sub_1C4F02B68();
    v13 = -1 << *(a2 + 32);
    v14 = v12 & ~v13;
    if ((*(v5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
    {
      break;
    }

LABEL_14:

    v4 = v20;
  }

  v15 = ~v13;
  v16 = *(a2 + 48);
  while (1)
  {
    v17 = (v16 + 24 * v14);
    if (*v17 == v8)
    {
      v18 = v17[1] == v9 && v17[2] == v10;
      if (v18 || (sub_1C4F02938() & 1) != 0)
      {
        break;
      }
    }

    v14 = (v14 + 1) & v15;
    if (((*(v5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  return 0;
}

uint64_t sub_1C4C418FC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  v11 = *(a2 + 40);
  sub_1C4F02AF8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F01298();
  v12 = sub_1C4F02B68();
  v13 = ~(-1 << *(a2 + 32));
  do
  {
    v14 = v12 & v13;
    if (((*(v6 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v15 = (*(a2 + 48) + 16 * v14);
    if (*v15 == v10 && v15[1] == v9)
    {
      break;
    }

    v17 = sub_1C4F02938();
    v12 = v14 + 1;
  }

  while ((v17 & 1) == 0);

  return 0;
}

uint64_t sub_1C4C41A34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4D117E4();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_1C4C41A60@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1C4C41A34(a1);
}

uint64_t sub_1C4C41AB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C4C41B10()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1C4C41B64()
{
  result = qword_1EDDF95D0;
  if (!qword_1EDDF95D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF95D0);
  }

  return result;
}

void sub_1C4C41BB8()
{
  v1 = sub_1C4EF98F8();
  sub_1C43FBD18(v1);
  v3 = *(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = sub_1C43FE99C();
  sub_1C4C3D00C(v8, v9, v10, v11, v12, v13);
}

unint64_t sub_1C4C41C74()
{
  result = qword_1EC0C4FE8;
  if (!qword_1EC0C4FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4FE8);
  }

  return result;
}

uint64_t sub_1C4C41CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4FF0, &qword_1C4F5E678);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C4C41D60()
{
  sub_1C4C41DE4();
  if (v0 <= 0x3F)
  {
    sub_1C4EF98F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4C41DE4()
{
  if (!qword_1EDDF01D8)
  {
    sub_1C4EFA608();
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDF01D8);
    }
  }
}

void sub_1C4C41E74()
{
  sub_1C4C41F60(319, &qword_1EDDDBC20, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C4C41F60(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      _s15ConfigReferenceOMa(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4C41F60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C4C41FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();

  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s30MUIDIdentifierMapViewGeneratorCMa();
      a4 = swift_allocObject();
      *(a4 + 16) = a5;
      memcpy((a4 + 24), __src, 0x48uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v10 = a1;
      *(v10 + 8) = a2;
      *(v10 + 16) = xmmword_1C4F5B670;
      *(v10 + 32) = 0xD000000000000025;
      *(v10 + 40) = 0x80000001C4FB83A0;
      *(v10 + 48) = v12;
      *(v10 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C42114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C41FC0(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

unint64_t sub_1C4C421C0()
{
  v174 = sub_1C456902C(&qword_1EC0BDCE0, &unk_1C4F31990);
  v1 = *(*(v174 - 8) + 64);
  MEMORY[0x1EEE9AC00](v174);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v4);
  v170 = v147 - v5;
  v6 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v167 = v147 - v8;
  sub_1C43FBE44();
  v9 = sub_1C4EFDE68();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1C43FD2D8();
  v166 = v11;
  v12 = sub_1C43FBE44();
  v184 = type metadata accessor for GraphTriple(v12);
  v13 = sub_1C43FCDF8(v184);
  v150 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  v183 = v17;
  sub_1C43FBE44();
  v152 = sub_1C4EFF8A8();
  v18 = sub_1C43FCDF8(v152);
  v149 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD2D8();
  v151 = v22;
  v23 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v182 = v147 - v25;
  sub_1C43FBE44();
  v26 = sub_1C4EFDE88();
  v27 = sub_1C43FCDF8(v26);
  v29 = v28;
  v179 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBFDC();
  v177 = v32;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  v176 = v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v147 - v36;
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = v147 - v42;
  v178 = sub_1C4EFDE98();
  v44 = sub_1C43FCDF8(v178);
  v181 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD2D8();
  v180 = v48;
  sub_1C43FBE44();
  v175 = sub_1C4EFF0C8();
  v185 = sub_1C4F00F28();
  v153 = v0;
  v169 = *(v0 + 16);
  v49 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v50 = *(sub_1C4EFEEF8() - 8);
  v51 = *(v50 + 72);
  v52 = *(v50 + 80);
  v53 = swift_allocObject();
  v168 = xmmword_1C4F0D130;
  *(v53 + 16) = xmmword_1C4F0D130;
  sub_1C4EFE308();
  sub_1C4D504A4();
  v165 = v54;
  sub_1C448DE08(&unk_1F43D6A00);
  v164 = v55;
  v160 = v51;
  v159 = v52;
  v162 = v49;
  v56 = swift_allocObject();
  sub_1C442C690(v56);
  v161 = (v52 + 32) & ~v52;
  sub_1C4EFE658();
  sub_1C4D504A4();
  v58 = v57;
  v59 = *MEMORY[0x1E69A95C0];
  v60 = v29 + 104;
  v61 = *(v29 + 104);
  v62 = v43;
  sub_1C4412864();
  v61();
  v63 = v40;
  sub_1C4412864();
  v61();
  v64 = v37;
  sub_1C4412864();
  v61();
  v65 = v176;
  sub_1C4412864();
  v61();
  v66 = v177;
  v158 = v59;
  sub_1C4412864();
  v157 = v60;
  v156 = v61;
  v61();
  v145 = v66;
  v146 = v58;
  v67 = v65;
  sub_1C4EFDCD8();

  v69 = v179 + 8;
  v68 = *(v179 + 8);
  v68(v66, v26);
  v70 = v69;
  v68(v67, v26);
  v165 = v64;
  v68(v64, v26);
  v164 = v63;
  v68(v63, v26);
  v163 = v62;
  v155 = v68;
  v68(v62, v26);
  v71 = sub_1C4EFF8F8();
  v72 = v182;
  sub_1C440BAA8(v182, 1, 1, v71);
  v73 = v180;
  v74 = sub_1C498DB80();
  v75 = v178;
  v76 = v74;
  sub_1C4423A0C(v72, &qword_1EC0BAA00, &unk_1C4F17400);
  v77 = *(v181 + 8);
  v181 += 8;
  v154 = v77;
  v77(v73, v75);
  v78 = *(v76 + 16);
  if (v78)
  {
    v179 = v70;
    v148 = v26;
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C459D120();
    v79 = __dst[0];
    v80 = (*(v150 + 80) + 32) & ~*(v150 + 80);
    v147[1] = v76;
    v81 = v76 + v80;
    v182 = *(v150 + 72);
    v82 = v149;
    v83 = (v149 + 16);
    v84 = v152;
    v85 = v151;
    do
    {
      v86 = v183;
      sub_1C4709E74(v81, v183);
      (*v83)(v85, v86 + *(v184 + 24), v84);
      sub_1C4709ED8(v86);
      __dst[0] = v79;
      v88 = *(v79 + 16);
      v87 = *(v79 + 24);
      if (v88 >= v87 >> 1)
      {
        sub_1C4413A88(v87);
        sub_1C459D120();
        v79 = __dst[0];
      }

      *(v79 + 16) = v88 + 1;
      (*(v82 + 32))(v79 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v88, v85, v84);
      v81 += v182;
      --v78;
    }

    while (v78);

    v26 = v148;
  }

  else
  {
  }

  sub_1C459740C();
  v184 = v89;
  v90 = swift_allocObject();
  sub_1C442C690(v90);
  sub_1C4EFE558();
  sub_1C4D504A4();
  v183 = v91;
  v92 = v163;
  sub_1C440109C();
  v93 = v156;
  v156();
  v94 = v164;
  sub_1C440109C();
  v93();
  v95 = v165;
  sub_1C440109C();
  v93();
  v96 = v176;
  sub_1C440109C();
  v93();
  v97 = v177;
  sub_1C440109C();
  v93();
  v144[1] = v97;
  v144[0] = v184;
  sub_1C4EFDE58();

  v98 = v155;
  v155(v97, v26);
  v98(v96, v26);
  v98(v95, v26);
  v98(v94, v26);
  v98(v92, v26);
  v99 = v180;
  sub_1C4EFDEA8();
  v100 = sub_1C4EFD678();
  v101 = v167;
  v102 = sub_1C440BAA8(v167, 1, 1, v100);
  MEMORY[0x1EEE9AC00](v102);
  v145 = &v185;
  sub_1C48687D0(v99, v101, sub_1C4C43214, v144);
  sub_1C4423A0C(v101, &unk_1EC0C07E0, &unk_1C4F168F0);
  v154(v99, v178);
  v103 = v185;
  v104 = *(v185 + 16);
  if (v104)
  {
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C459DB58();
    v105 = __dst[0];
    result = sub_1C4703354(v103);
    v109 = 0;
    v110 = v103 + 64;
    v169 = v175 - 8;
    v164 = v107;
    v163 = v103 + 72;
    v168 = xmmword_1C4F0CE60;
    v165 = v104;
    v166 = v103 + 64;
    v167 = v103;
    v111 = v174;
    v112 = v171;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v103 + 32))
    {
      if ((*(v110 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v103 + 36) != v107)
      {
        goto LABEL_30;
      }

      v179 = 1 << result;
      v180 = result >> 6;
      v177 = v109;
      v178 = v107;
      LODWORD(v176) = v108;
      v113 = *(v111 + 48);
      v114 = *(v103 + 56);
      v115 = (*(v103 + 48) + 16 * result);
      v117 = *v115;
      v116 = v115[1];
      v118 = v175;
      v119 = *(v175 - 8);
      v120 = v119;
      v121 = v114 + *(v119 + 72) * result;
      v122 = *(v119 + 16);
      v184 = v105;
      v123 = v170;
      v183 = result;
      v122(&v170[v113], v121, v175);
      *v112 = v117;
      v112[1] = v116;
      v124 = *(v111 + 48);
      v182 = *(v120 + 32);
      (v182)(v112 + v124, &v123[v113], v118);
      sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
      v125 = swift_allocObject();
      sub_1C442C690(v125);
      v126 = v172;
      sub_1C4C4321C(v112, v172);
      v127 = *v126;
      v128 = v126[1];
      v181 = *(v111 + 48);
      v125[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v125[4].n128_u64[0] = MEMORY[0x1E69A0138];
      v125[2].n128_u64[0] = v127;
      v125[2].n128_u64[1] = v128;
      v129 = v173;
      sub_1C4C4321C(v112, v173);
      v130 = *(v129 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v131 = *(v111 + 48);
      v125[6].n128_u64[0] = v118;
      v125[6].n128_u64[1] = sub_1C4C4328C();
      v132 = sub_1C4422F90(&v125[4].n128_i64[1]);
      v133 = v129 + v131;
      v105 = v184;
      (v182)(v132, v133, v118);
      sub_1C4423A0C(v112, &qword_1EC0BDCE0, &unk_1C4F31990);
      (*(v120 + 8))(v126 + v181, v118);
      __dst[0] = v105;
      v135 = *(v105 + 16);
      v134 = *(v105 + 24);
      if (v135 >= v134 >> 1)
      {
        sub_1C4413A88(v134);
        sub_1C459DB58();
        v105 = __dst[0];
      }

      *(v105 + 16) = v135 + 1;
      *(v105 + 8 * v135 + 32) = v125;
      v103 = v167;
      v136 = 1 << *(v167 + 32);
      result = v183;
      if (v183 >= v136)
      {
        goto LABEL_31;
      }

      v110 = v166;
      v137 = *(v166 + 8 * v180);
      if ((v137 & v179) == 0)
      {
        goto LABEL_32;
      }

      if (*(v167 + 36) != v178)
      {
        goto LABEL_33;
      }

      v138 = v137 & (-2 << (v183 & 0x3F));
      if (v138)
      {
        v136 = __clz(__rbit64(v138)) | v183 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v139 = v180 << 6;
        v140 = v180 + 1;
        v141 = (v163 + 8 * v180);
        while (v140 < (v136 + 63) >> 6)
        {
          v143 = *v141++;
          v142 = v143;
          v139 += 64;
          ++v140;
          if (v143)
          {
            sub_1C440951C(v183, v178, v176 & 1);
            v136 = __clz(__rbit64(v142)) + v139;
            goto LABEL_26;
          }
        }

        sub_1C440951C(v183, v178, v176 & 1);
      }

LABEL_26:
      v108 = 0;
      v109 = (v177 + 1);
      result = v136;
      v107 = v164;
      if (v177 + 1 == v165)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
LABEL_27:
    memcpy(__dst, (v153 + 24), sizeof(__dst));
    sub_1C4BC7458();
  }

  return result;
}

uint64_t sub_1C4C430E8(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  v6 = (a1 + *(type metadata accessor for GraphTriple(0) + 32));
  v7 = *v6;
  v8 = v6[1];
  v9 = sub_1C4EFF0C8();
  (*(*(v9 - 8) + 16))(v5, a1, v9);
  sub_1C440BAA8(v5, 0, 1, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C80730();
  return 1;
}

uint64_t sub_1C4C4321C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BDCE0, &unk_1C4F31990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4C4328C()
{
  result = qword_1EDDFA1C8;
  if (!qword_1EDDFA1C8)
  {
    sub_1C4EFF0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA1C8);
  }

  return result;
}

uint64_t sub_1C4C432F4@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  a1[3] = &type metadata for ObjectRowDatabaseTable;
  a1[4] = &off_1F43F54B8;
  v3 = swift_allocObject();
  *a1 = v3;
  memcpy((v3 + 16), v1, 0x48uLL);
  return sub_1C4A4CA50(__dst, &v5);
}

uint64_t sub_1C4C4337C()
{
  v1 = *(*(v0 + 112) + 16);

  sub_1C446C37C(sub_1C4C449DC, v0);
}

void sub_1C4C433DC(uint64_t a1, void *a2)
{
  memcpy(__dst, a2 + 12, sizeof(__dst));
  sub_1C4D03DB4();
  if (!v2)
  {
    v4 = a2[22];
    if (v4)
    {
      v5 = a2[21];
      v6 = a2[22];
      v7 = a2[23];
      v8 = a2[24];
      v9 = a2[25];
      v10 = a2[26];
      v11 = a2[27];
      _s23UpdatedObjectDiffWriterCMa();
      v13 = swift_allocObject();
      sub_1C4BC3C1C(v5, v4);

      sub_1C4B8B458();
      sub_1C4B8B8EC();
    }
  }
}

uint64_t sub_1C4C43508()
{
  v1 = v0;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  sub_1C4C674A0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v1[10];
  v12 = v1[11];
  sub_1C4409678(v1 + 7, v11);
  (*(v12 + 24))(v6, v8, v10, v11, v12);

  v13 = *(v1[14] + 16);

  sub_1C49A56B8();
  v15 = v14;

  return v15;
}

void sub_1C4C43644(void *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, void (*a4)(char *, uint64_t, uint64_t)@<X5>, int a5@<W6>, void *a6@<X8>)
{
  LODWORD(v45) = a5;
  v47 = a4;
  v46 = a3;
  v44 = a6;
  v9 = sub_1C4EFF0C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1 + 12, sizeof(__dst));
  sub_1C4BDFB60();
  if (!v6)
  {
    v42 = a2;
    v50 = v13;
    v14 = a1[22];
    if (v14)
    {
      v49 = v10;
      v48 = v9;
      v15 = a1[26];
      v16 = a1[27];
      v17 = a1[24];
      v18 = a1[25];
      v19 = a1[23];
      v20 = a1[21];
      v52[5] = v20;
      v52[6] = v14;
      v52[7] = v19;
      v52[8] = v17;
      v52[9] = v18;
      v52[10] = v15;
      v52[11] = v16;
      _s23UpdatedObjectDiffWriterCMa();
      v43 = swift_allocObject();
      sub_1C4BC3C1C(v20, v14);

      sub_1C4B8B458();
      v22 = 0;
      v23 = v42;
      v24 = *(v42 + 16);
      v25 = v48;
      if (v24)
      {
        v45 = 0;
        v54 = MEMORY[0x1E69E7CC0];
        v43 = v21;

        sub_1C44CD9C0();
        v26 = v54;
        v47 = *(v49 + 16);
        v27 = v23 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v46 = *(v49 + 72);
        v49 += 16;
        v28 = (v49 - 8);
        v29 = v50;
        do
        {
          v47(v29, v27, v25);
          v51 = sub_1C4EFF0A8();
          v30 = sub_1C4F02858();
          v29 = v50;
          v31 = v30;
          v33 = v32;
          (*v28)(v50, v25);
          v54 = v26;
          v34 = *(v26 + 16);
          if (v34 >= *(v26 + 24) >> 1)
          {
            sub_1C44CD9C0();
            v29 = v50;
            v26 = v54;
          }

          *(v26 + 16) = v34 + 1;
          v35 = v26 + 16 * v34;
          *(v35 + 32) = v31;
          *(v35 + 40) = v33;
          v27 += v46;
          --v24;
          v25 = v48;
        }

        while (v24);
        v37 = v44;
        v22 = v45;
      }

      else
      {

        v26 = MEMORY[0x1E69E7CC0];
        v37 = v44;
      }

      v52[3] = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      v52[4] = sub_1C4401CBC(&qword_1EDDFCEC0, &unk_1EC0B9620, &unk_1C4F0E870);
      v52[0] = v26;
      sub_1C4B8C0BC();

      if (v22)
      {

        sub_1C440962C(v52);
      }

      else
      {
        sub_1C440962C(v52);

        sub_1C4B8BB5C();
        v39 = v38;
        v41 = v40;

        *v37 = v39;
        v37[1] = v41;
        *(v37 + 16) = 0;
      }
    }

    else
    {
      v36 = v44;
      *v44 = 0;
      v36[1] = 0;
      *(v36 + 16) = 1;
    }
  }
}

void *sub_1C4C43AE0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  sub_1C440962C(v0 + 7);
  memcpy(v5, v0 + 12, sizeof(v5));
  sub_1C4C449F8(v5);
  return v0;
}

uint64_t sub_1C4C43B38()
{
  sub_1C4C43AE0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C43B90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C4C43BD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C4C43C68(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v21.n128_u64[0] = 0;
  sub_1C44E9220();
  if (!v4)
  {
    v10 = v9;
    v11 = a3[22];
    if (v11)
    {
      v12 = a3[27];
      v13 = a3[25];
      v22 = a3[24];
      v14 = a3[23];
      v15 = a3[21];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440E8AC();
      if (!v12)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      a4[3] = &type metadata for ObjectRowDatabaseTable;
      a4[4] = &off_1F43F54B8;
      v16 = swift_allocObject();
      *a4 = v16;
      v16[2] = v15;
      v16[3] = v11;
      v16[4] = v10;
      v16[5] = v14;
      v16[6] = v22;
      v16[7] = v13;
      v16[8] = v15;
      v16[9] = v11;
      v16[10] = v12;
    }

    else
    {
      sub_1C440B538();
      v17 = sub_1C43FFB2C();
      *v18 = a1;
      v18[1] = a2;
      sub_1C441A880(v17, v18);
      sub_1C44010A8(v21, v19, v20);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C43DD0(uint64_t a1, uint64_t a2, void *a3)
{
  v41[0] = 0uLL;
  sub_1C44E9220();
  if (!v3)
  {
    v8 = a3[22];
    if (v8)
    {
      v9 = a3[27];
      v10 = a3[25];
      v44 = a3[24];
      v11 = a3[23];
      v41[0].n128_u64[0] = a3[21];
      v41[0].n128_u64[1] = v8;
      v38 = v7;
      v35 = v41[0].n128_u64[0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_bridgeObjectRetain_n();
      v34 = v11;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v33 = v10;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440E8AC();
      v12 = MEMORY[0x1E69E7CC0];
      v36 = v9;
      if (v9)
      {
        v12 = v9;
      }

      v40[0] = v41[0].n128_u64[0];
      v40[1] = v8;
      v40[2] = v38;
      v40[3] = v11;
      v40[4] = v44;
      v40[5] = v10;
      v40[6] = v41[0].n128_u64[0];
      v40[7] = v8;
      v40[8] = v12;
      v13 = (a3 + *(_s6ConfigVMa() + 52));
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[3];
      v28 = v13[2];
      v29 = v15;
      v31 = v16;
      v32 = v14;
      v17 = v13[5];
      v30 = v13[4];
      v27 = v17;
      v18 = v13[6];
      memcpy(v41, v40, 0x48uLL);
      v41[4].n128_u64[1] = v14;
      v41[5].n128_u64[0] = v15;
      v41[5].n128_u64[1] = v28;
      v41[6].n128_u64[0] = v16;
      v41[6].n128_u64[1] = v30;
      v41[7].n128_u64[0] = v27;
      v41[7].n128_u64[1] = v18;
      v19 = memcpy(v42, v41, sizeof(v42));
      v37 = &v27;
      v20 = a3[26];
      v43[0] = v35;
      v43[1] = v8;
      v43[2] = v34;
      v43[3] = v44;
      v43[4] = v33;
      v43[5] = v20;
      v43[6] = v36;
      v21 = *(v38 + 16);
      MEMORY[0x1EEE9AC00](v19);
      v26[2] = v42;
      v26[3] = v43;
      sub_1C4BC3C1C(v32, v29);
      sub_1C4A4CA50(v40, &v39);

      sub_1C446C37C(sub_1C4C44B78, v26);
      sub_1C4C449F8(v41);

      sub_1C4AF9888(v40);
    }

    else
    {
      sub_1C440B538();
      v22 = sub_1C43FFB2C();
      *v23 = a1;
      v23[1] = a2;
      sub_1C441A880(v22, v23);
      sub_1C44010A8(v41[0], v24, v25);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C44054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 40))
  {
    v6 = *(a3 + 40);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  memcpy(v10, a2, sizeof(v10));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4A4B56C(a1, v6);

  if (!v3)
  {
    v7 = *(a2 + 80);
    if (v7)
    {
      v8 = *(a2 + 72);
      v9 = *(a2 + 104);
      v13 = *(a2 + 88);
      v14 = v9;
      v15 = *(a2 + 120);
      v11 = v8;
      v12 = v7;
      sub_1C4B8C8BC();
    }
  }
}

void sub_1C4C44120(uint64_t a1, uint64_t a2, void *a3)
{
  v33[0] = 0uLL;
  sub_1C44E9220();
  if (!v3)
  {
    v8 = a3[22];
    if (v8)
    {
      v9 = a3[27];
      v10 = a3[25];
      v30 = a3[24];
      v11 = a3[23];
      v35 = v7;
      v12 = a3[21];
      v33[0].n128_u64[0] = v12;
      v33[0].n128_u64[1] = v8;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440E8AC();
      v13 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        v13 = v9;
      }

      v32[0] = v12;
      v32[1] = v8;
      v32[2] = v35;
      v32[3] = v11;
      v32[4] = v30;
      v32[5] = v10;
      v32[6] = v33[0].n128_u64[0];
      v32[7] = v8;
      v32[8] = v13;
      v14 = (a3 + *(_s6ConfigVMa() + 52));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      v19 = v14[4];
      v20 = v14[5];
      v28 = v14[6];
      v29 = v15;
      memcpy(v33, v32, 0x48uLL);
      v33[4].n128_u64[1] = v15;
      v33[5].n128_u64[0] = v16;
      v33[5].n128_u64[1] = v17;
      v33[6].n128_u64[0] = v18;
      v33[6].n128_u64[1] = v19;
      v33[7].n128_u64[0] = v20;
      v33[7].n128_u64[1] = v28;
      v21 = memcpy(__dst, v33, 0x80uLL);
      v30 = &v28;
      v22 = *(v35 + 16);
      MEMORY[0x1EEE9AC00](v21);
      v27[2] = __dst;
      sub_1C4BC3C1C(v29, v16);
      sub_1C4A4CA50(v32, &v31);

      sub_1C446C37C(sub_1C4C44B5C, v27);
      sub_1C4C449F8(v33);

      sub_1C4AF9888(v32);
    }

    else
    {
      sub_1C440B538();
      v23 = sub_1C43FFB2C();
      *v24 = a1;
      v24[1] = a2;
      sub_1C441A880(v23, v24);
      sub_1C44010A8(v33[0], v25, v26);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C44354(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_1C4D03DB4();
  if (!v2)
  {
    v4 = *(a2 + 88);
    v7[0] = *(a2 + 72);
    v7[1] = v4;
    v7[2] = *(a2 + 104);
    v8 = *(a2 + 120);
    if (*(&v7[0] + 1))
    {
      v5 = *(a2 + 104);
      v11 = *(a2 + 88);
      v12 = v5;
      v13 = *(a2 + 120);
      v10 = v7[0];
      _s23UpdatedObjectDiffWriterCMa();
      swift_allocObject();
      sub_1C4BE2FBC(v7, v6);

      sub_1C4B8B458();
      sub_1C4B8B8EC();
    }
  }
}

void *sub_1C4C444B8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = _s10ViewConfigVMa(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v40[-2] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *v2;
  swift_unownedRetainStrong();
  v12 = v11;
  sub_1C4C81AA0();
  if (v3)
  {
  }

  else
  {

    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      memcpy(v42, v40, sizeof(v42));
      swift_unownedRetainStrong();
      v13 = v11[2];

      sub_1C443A738(a1, a2, v14, v15, v16, v17, v18, v19);

      if (v10[26])
      {
        v21 = v10[25];
        v22 = v10[26];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v23 = *(v10 + *(v7 + 76) + 8);
      v24 = _s31ObjectSQLViewGenerationProviderVMa();
      v25 = v24[5];
      v26 = v24[6];
      sub_1C4C67D64();
      v28 = v27;
      v30 = v29;

      swift_unownedRetainStrong();
      sub_1C4C68220();
      v33 = v32;
      v40[3] = sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
      v40[4] = sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50);
      v40[0] = v33;
      v34 = sub_1C4C81ADC(v40);

      sub_1C440962C(v40);
      if (*(v34 + 16))
      {
        sub_1C4C687F0(v34, v40);
      }

      else
      {
        v35 = *(*(v4 + v24[7]) + 16);
        v40[3] = type metadata accessor for GraphDatabase();
        v40[4] = &off_1F4405C68;
        v40[0] = v35;
      }

      v37 = *v10;
      v36 = v10[1];
      sub_1C442E860(v40, v41);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v38 = sub_1C4C68B88(v34);

      _s23ObjectSQLViewGenerationCMa();
      v12 = swift_allocObject();
      v12[2] = v37;
      v12[3] = v36;
      sub_1C441D670(v41, (v12 + 7));
      memcpy(v12 + 12, v42, 0x80uLL);
      v12[5] = v28;
      v12[6] = v30;
      v12[4] = v38;
      sub_1C445F57C(v10);
      sub_1C440962C(v40);
    }

    else
    {
      sub_1C440B538();
      sub_1C43FFB2C();
      *v20 = a1;
      *(v20 + 8) = a2;
      *(v20 + 16) = xmmword_1C4F5B670;
      *(v20 + 32) = 0xD000000000000025;
      *(v20 + 40) = v11;
      *(v20 + 48) = v39;
      *(v20 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return v12;
}

uint64_t sub_1C4C44934(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4C444B8(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t _s31ObjectSQLViewGenerationProviderVMa()
{
  result = qword_1EDDF76B8;
  if (!qword_1EDDF76B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4C44AAC()
{
  sub_1C4EF98F8();
  if (v0 <= 0x3F)
  {
    sub_1C4BE30F8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GraphStore();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C4C44BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = sub_1C4EFF658();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  sub_1C4EFF648();
  a9(a1, v20, a3, a4, a5, a6);
  return (*(v15 + 8))(v20, v12);
}

uint64_t sub_1C4C44CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C442C068(a1, a2, a3, a4, a5, a6);
  v10 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C441EDD0();
  v15 = type metadata accessor for GraphTriple(v14);
  v16 = sub_1C43FBCE0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v22 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v22);
  v24 = *(v23 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  v100 = sub_1C442E620(v26, v94[0]);
  v27 = sub_1C43FCDF8(v100);
  v95 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v94[3] = v32 - v31;
  v33 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  sub_1C43FBD18(v33);
  v35 = *(v34 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C4418964();
  v37 = sub_1C4EFDE98();
  v38 = sub_1C43FCDF8(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBCC4();
  v94[1] = v44 - v43;
  v45 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v46 = sub_1C43FCDF8(v45);
  v96 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C44113BC();
  MEMORY[0x1EEE9AC00](v50);
  v52 = v94 - v51;
  sub_1C4412870();
  sub_1C45023B8(v53, v54);
  sub_1C441E7F0();
  sub_1C445FFF0(v97, v6, &qword_1EC0BE4F0, &qword_1C4F37248);
  v55 = sub_1C44033D8();
  v57 = sub_1C44157D4(v55, v56, v37);
  v102 = v45;
  v99 = v52;
  if (v57 == 1)
  {
    sub_1C4420C3C(v6, &qword_1EC0BE4F0, &qword_1C4F37248);
    v58 = v96;
  }

  else
  {
    v59 = sub_1C440927C();
    v60(v59);
    v103[3] = sub_1C4EFB298();
    v103[4] = MEMORY[0x1E699FE60];
    sub_1C4422F90(v103);
    sub_1C4EFDCA8();
    sub_1C43FD7B0(&qword_1EDDFCD10, &unk_1EC0C0800, &qword_1C4F0F948);
    sub_1C4404828();
    v61 = *(v40 + 8);
    v62 = sub_1C440D314();
    v63(v62);
    v64 = sub_1C441CEDC();
    v65(v64);
    sub_1C440962C(v103);
    v66 = sub_1C443551C();
    v67(v66);
    v58 = v6;
  }

  v68 = v9;
  v69 = v98;
  sub_1C445FFF0(v101, v98, &unk_1EC0C07E0, &unk_1C4F168F0);
  v70 = sub_1C44033D8();
  v71 = v100;
  if (sub_1C44157D4(v70, v72, v100) == 1)
  {
    v71 = v58;
    sub_1C4420C3C(v69, &unk_1EC0C07E0, &unk_1C4F168F0);
    v68 = v102;
    v73 = v99;
  }

  else
  {
    v73 = v95;
    v74 = *(v95 + 4);
    v75 = sub_1C440D314();
    v76(v75);
    v94[0] = v68;
    sub_1C4EFD658();
    sub_1C4417A04(&qword_1EDDF0108, &unk_1EC0C0800, &qword_1C4F0F948);
    sub_1C44302B4();

    v77 = sub_1C4415058();
    v78(v77);
    v79 = sub_1C4406204();
    v80(v79);
    v81 = sub_1C43FF7F0();
    v82(v81);
  }

  sub_1C4403190(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C4412870();
  sub_1C45023B8(v83, v84);
  sub_1C43FCA94();
  if (v7)
  {
    return (*(v71 + 8))(v73, v68);
  }

  while (1)
  {
    sub_1C44F1798();
    if (sub_1C44157D4(v8, 1, v103[7]) == 1)
    {
      v90 = sub_1C44206EC();
      v91(v90);

      return sub_1C4420C3C(v8, &unk_1EC0BC900, &unk_1C4F142D0);
    }

    sub_1C4C47124(v8, v21, type metadata accessor for GraphTriple);
    v86 = objc_autoreleasePoolPush();
    v87 = sub_1C4405478();
    v89 = v88(v87);
    objc_autoreleasePoolPop(v68);
    if ((v89 & 1) == 0)
    {
      break;
    }

    sub_1C4432D08();
  }

  v92 = sub_1C44206EC();
  v93(v92);

  return sub_1C4432D08();
}

uint64_t sub_1C4C452D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C442C068(a1, a2, a3, a4, a5, a6);
  v10 = sub_1C456902C(&unk_1EC0BC8E0, &qword_1C4F29AC0);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C441EDD0();
  v15 = type metadata accessor for EventTriple(v14);
  v16 = sub_1C43FBCE0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v22 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v22);
  v24 = *(v23 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  v100 = sub_1C442E620(v26, v94[0]);
  v27 = sub_1C43FCDF8(v100);
  v95 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v94[3] = v32 - v31;
  v33 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  sub_1C43FBD18(v33);
  v35 = *(v34 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C4418964();
  v37 = sub_1C4EFDE98();
  v38 = sub_1C43FCDF8(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBCC4();
  v94[1] = v44 - v43;
  v45 = sub_1C456902C(&qword_1EC0BDFD0, &qword_1C4F324F8);
  v46 = sub_1C43FCDF8(v45);
  v96 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C44113BC();
  MEMORY[0x1EEE9AC00](v50);
  v52 = v94 - v51;
  sub_1C4401198();
  sub_1C45023B8(v53, v54);
  sub_1C441E7F0();
  sub_1C445FFF0(v97, v6, &qword_1EC0BE4F0, &qword_1C4F37248);
  v55 = sub_1C44033D8();
  v57 = sub_1C44157D4(v55, v56, v37);
  v102 = v45;
  v99 = v52;
  if (v57 == 1)
  {
    sub_1C4420C3C(v6, &qword_1EC0BE4F0, &qword_1C4F37248);
    v58 = v96;
  }

  else
  {
    v59 = sub_1C440927C();
    v60(v59);
    v103[3] = sub_1C4EFB298();
    v103[4] = MEMORY[0x1E699FE60];
    sub_1C4422F90(v103);
    sub_1C4EFDCA8();
    sub_1C43FD7B0(&qword_1EDDFE878, &qword_1EC0BDFD0, &qword_1C4F324F8);
    sub_1C4404828();
    v61 = *(v40 + 8);
    v62 = sub_1C440D314();
    v63(v62);
    v64 = sub_1C441CEDC();
    v65(v64);
    sub_1C440962C(v103);
    v66 = sub_1C443551C();
    v67(v66);
    v58 = v6;
  }

  v68 = v9;
  v69 = v98;
  sub_1C445FFF0(v101, v98, &unk_1EC0C07E0, &unk_1C4F168F0);
  v70 = sub_1C44033D8();
  v71 = v100;
  if (sub_1C44157D4(v70, v72, v100) == 1)
  {
    v71 = v58;
    sub_1C4420C3C(v69, &unk_1EC0C07E0, &unk_1C4F168F0);
    v68 = v102;
    v73 = v99;
  }

  else
  {
    v73 = v95;
    v74 = *(v95 + 4);
    v75 = sub_1C440D314();
    v76(v75);
    v94[0] = v68;
    sub_1C4EFD658();
    sub_1C4417A04(&qword_1EC0C07F8, &qword_1EC0BDFD0, &qword_1C4F324F8);
    sub_1C44302B4();

    v77 = sub_1C4415058();
    v78(v77);
    v79 = sub_1C4406204();
    v80(v79);
    v81 = sub_1C43FF7F0();
    v82(v81);
  }

  sub_1C4403190(&unk_1EDDFF9D0, &qword_1EC0BDFD0, &qword_1C4F324F8);
  sub_1C4401198();
  sub_1C45023B8(v83, v84);
  sub_1C43FCA94();
  if (v7)
  {
    return (*(v71 + 8))(v73, v68);
  }

  while (1)
  {
    sub_1C478813C();
    if (sub_1C44157D4(v8, 1, v103[7]) == 1)
    {
      v90 = sub_1C44206EC();
      v91(v90);

      return sub_1C4420C3C(v8, &unk_1EC0BC8E0, &qword_1C4F29AC0);
    }

    sub_1C4C47124(v8, v21, type metadata accessor for EventTriple);
    v86 = objc_autoreleasePoolPush();
    v87 = sub_1C4405478();
    v89 = v88(v87);
    objc_autoreleasePoolPop(v68);
    if ((v89 & 1) == 0)
    {
      break;
    }

    sub_1C4413AA0();
  }

  v92 = sub_1C44206EC();
  v93(v92);

  return sub_1C4413AA0();
}

uint64_t sub_1C4C458C4()
{
  v2 = v1;
  v87 = sub_1C456902C(&qword_1EC0C5000, &qword_1C4F5E9F8);
  v3 = sub_1C43FBCE0(v87);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v86 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v85 = v74 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v84 = v74 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v83 = v74 - v12;
  v13 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4418964();
  v17 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v74 - v21;
  if (qword_1EDDFECD0 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v23 = sub_1C4F00978();
    v74[1] = sub_1C442B738(v23, qword_1EDE2DF70);
    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CF8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1C43F8000, v24, v25, "Beginning running of PageRank", v26, 2u);
      MEMORY[0x1C6942830](v26, -1, -1);
    }

    v27 = sub_1C4EFF0C8();
    sub_1C456902C(&qword_1EC0B8A78, &qword_1C4F5EA00);
    sub_1C440B690();
    sub_1C45023B8(v28, v29);
    v92 = v27;
    v93 = sub_1C4F00F28();
    v75 = v2;
    v30 = *(v2 + 16);
    sub_1C4EFDE98();
    sub_1C440A1C4();
    v31 = sub_1C4EFD678();
    v32 = sub_1C44033D8();
    v34 = sub_1C440BAA8(v32, v33, 1, v31);
    MEMORY[0x1EEE9AC00](v34);
    v74[-2] = &v93;
    sub_1C4868800(v22, v0, sub_1C4C46FE8, &v74[-4], sub_1C4C470CC);
    sub_1C4420C3C(v0, &unk_1EC0C07E0, &unk_1C4F168F0);
    sub_1C4420C3C(v22, &qword_1EC0BE4F0, &qword_1C4F37248);
    sub_1C440A1C4();
    v35 = sub_1C44033D8();
    v37 = sub_1C440BAA8(v35, v36, 1, v31);
    MEMORY[0x1EEE9AC00](v37);
    v74[-2] = &v93;
    sub_1C4868800(v22, v0, sub_1C4C46FF0, &v74[-4], sub_1C4C4704C);
    sub_1C4420C3C(v0, &unk_1EC0C07E0, &unk_1C4F168F0);
    sub_1C4420C3C(v22, &qword_1EC0BE4F0, &qword_1C4F37248);
    v38 = v93;
    v39 = sub_1C4A7AEDC(v93, 50, 0.85, 0.01);
    v0 = *(v39 + 16);
    if (!v0)
    {
      break;
    }

    v74[0] = v38;
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C459DB58();
    v2 = __dst[0];
    v42 = sub_1C4703354(v39);
    v43 = 0;
    v44 = v39 + 64;
    v45 = v92;
    v82 = v92 - 8;
    v77 = v40;
    v76 = v39 + 72;
    v81 = xmmword_1C4F0CE60;
    v78 = v0;
    v79 = v39 + 64;
    v80 = v39;
    while ((v42 & 0x8000000000000000) == 0 && v42 < 1 << *(v39 + 32))
    {
      v46 = v42 >> 6;
      if ((*(v44 + 8 * (v42 >> 6)) & (1 << v42)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v39 + 36) != v40)
      {
        goto LABEL_28;
      }

      v90 = v40;
      v91 = 1 << v42;
      v88 = v41;
      v89 = v43;
      v47 = *(v45 - 8);
      v48 = v83;
      (*(v47 + 16))(v83, *(v39 + 48) + *(v47 + 72) * v42, v45);
      v49 = *(*(v39 + 56) + 8 * v42);
      v50 = *(v47 + 32);
      v92 = v2;
      v51 = v84;
      v50(v84, v48, v45);
      v52 = v87;
      *(v51 + *(v87 + 48)) = v49;
      sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
      v22 = swift_allocObject();
      *(v22 + 1) = v81;
      v53 = v45;
      v54 = v85;
      sub_1C445FFF0(v51, v85, &qword_1EC0C5000, &qword_1C4F5E9F8);
      *(v22 + 7) = v53;
      sub_1C440B690();
      *(v22 + 8) = sub_1C45023B8(&qword_1EDDFA1C8, v55);
      v56 = sub_1C4422F90(v22 + 4);
      v57 = v54;
      v45 = v53;
      v50(v56, v57, v53);
      v58 = v86;
      sub_1C445FFF0(v51, v86, &qword_1EC0C5000, &qword_1C4F5E9F8);
      v59 = *(v58 + *(v52 + 48));
      *(v22 + 12) = MEMORY[0x1E69E63B0];
      *(v22 + 13) = MEMORY[0x1E69A0168];
      *(v22 + 9) = v59;
      v60 = v51;
      v2 = v92;
      sub_1C4420C3C(v60, &qword_1EC0C5000, &qword_1C4F5E9F8);
      (*(v47 + 8))(v58, v53);
      __dst[0] = v2;
      v0 = *(v2 + 16);
      if (v0 >= *(v2 + 24) >> 1)
      {
        sub_1C459DB58();
        v2 = __dst[0];
      }

      *(v2 + 16) = v0 + 1;
      *(v2 + 8 * v0 + 32) = v22;
      v39 = v80;
      v61 = 1 << *(v80 + 32);
      if (v42 >= v61)
      {
        goto LABEL_29;
      }

      v44 = v79;
      v62 = *(v79 + 8 * v46);
      if ((v62 & v91) == 0)
      {
        goto LABEL_30;
      }

      if (*(v80 + 36) != v90)
      {
        goto LABEL_31;
      }

      v63 = v62 & (-2 << (v42 & 0x3F));
      if (v63)
      {
        v61 = __clz(__rbit64(v63)) | v42 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v64 = v46 << 6;
        v65 = v46 + 1;
        v66 = (v76 + 8 * v46);
        while (v65 < (v61 + 63) >> 6)
        {
          v67 = *v66++;
          v22 = v67;
          v64 += 64;
          ++v65;
          if (v67)
          {
            sub_1C440951C(v42, v90, v88 & 1);
            v61 = __clz(__rbit64(v22)) + v64;
            goto LABEL_22;
          }
        }

        sub_1C440951C(v42, v90, v88 & 1);
      }

LABEL_22:
      v41 = 0;
      v43 = v89 + 1;
      v42 = v61;
      v40 = v77;
      v0 = v78;
      if (v89 + 1 == v78)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

LABEL_23:

  v68 = sub_1C4F00968();
  v69 = sub_1C4F01CF8();
  v70 = os_log_type_enabled(v68, v69);
  v71 = v75;
  if (v70)
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_1C43F8000, v68, v69, "Writing page rank to database", v72, 2u);
    MEMORY[0x1C6942830](v72, -1, -1);
  }

  memcpy(__dst, (v71 + 24), sizeof(__dst));
  sub_1C4BC74D0();
}

uint64_t sub_1C4C461E4(char *a1, uint64_t *a2)
{
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v65 - v6;
  v8 = sub_1C4EFF0C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v65 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v65 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v65 - v25;
  v27 = &a1[*(type metadata accessor for GraphTriple(0) + 32)];
  v29 = *v27;
  v28 = v27[1];
  v73[3] = MEMORY[0x1E69E6158];
  v73[0] = v29;
  v73[1] = v28;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C82A1C(v73);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    sub_1C4420C3C(v7, &unk_1EC0BA0E0, &qword_1C4F105A0);
    return 1;
  }

  v69 = v12;
  v70 = v17;
  v71 = a2;
  (*(v9 + 32))(v26, v7, v8);
  sub_1C4EFF098();
  sub_1C45023B8(&qword_1EDDFCC98, MEMORY[0x1E69A9810]);
  v30 = sub_1C4F010B8();
  v31 = v9;
  v32 = *(v9 + 8);
  v32(v23, v8);
  if (v30 & 1) != 0 || (sub_1C4EFF098(), v33 = sub_1C4F010B8(), v32(v23, v8), (v33))
  {
    v32(v26, v8);
    return 1;
  }

  v66 = v32;
  v67 = *(v31 + 16);
  v67(v70, v26, v8);
  v34 = v71;
  v35 = *v71;
  LODWORD(v65) = swift_isUniquelyReferenced_nonNull_native();
  v73[0] = *v34;
  v36 = v73[0];
  *v34 = 0x8000000000000000;
  sub_1C44E3664();
  v68 = v38;
  if (__OFADD__(*(v36 + 16), (v37 & 1) == 0))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v39 = v37;
  v65 = sub_1C456902C(&qword_1EC0C5008, qword_1C4F5EA08);
  v40 = sub_1C4F02458();
  v41 = v73[0];
  if (v40)
  {
    sub_1C44E3664();
    v68 = v42;
    v44 = v71;
    if ((v39 & 1) != (v43 & 1))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v44 = v71;
  }

  v45 = *v44;
  *v44 = v41;

  v46 = *v44;
  if ((v39 & 1) == 0)
  {
    v67(v23, a1, v8);
    sub_1C457EB2C(v68);
  }

  v47 = *(v46 + 56) + 8 * v68;
  sub_1C44D56D0();
  v66(v20, v8);
  v67(v69, a1, v8);
  v48 = *v44;
  swift_isUniquelyReferenced_nonNull_native();
  v73[0] = *v44;
  v49 = v73[0];
  *v44 = 0x8000000000000000;
  sub_1C44E3664();
  v52 = v51;
  if (__OFADD__(*(v49 + 16), (v51 & 1) == 0))
  {
    goto LABEL_23;
  }

  v53 = v50;
  v54 = sub_1C4F02458();
  v55 = v73[0];
  if ((v54 & 1) == 0)
  {
    v58 = v71;
    goto LABEL_18;
  }

  sub_1C44E3664();
  v58 = v71;
  if ((v52 & 1) == (v57 & 1))
  {
    v53 = v56;
LABEL_18:
    v59 = *v58;
    *v58 = v55;

    v60 = *v58;
    if ((v52 & 1) == 0)
    {
      v67(v23, v26, v8);
      sub_1C457EB2C(v53);
    }

    v61 = *(v60 + 56) + 8 * v53;
    v62 = v72;
    sub_1C44D56D0();
    v63 = v66;
    v66(v62, v8);
    v63(v26, v8);
    return 1;
  }

LABEL_24:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4C46780(char *a1, uint64_t *a2)
{
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v65 - v6;
  v8 = sub_1C4EFF0C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v65 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v65 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v65 - v25;
  v27 = &a1[*(type metadata accessor for EventTriple(0) + 32)];
  v29 = *v27;
  v28 = v27[1];
  v73[3] = MEMORY[0x1E69E6158];
  v73[0] = v29;
  v73[1] = v28;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C82A1C(v73);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    sub_1C4420C3C(v7, &unk_1EC0BA0E0, &qword_1C4F105A0);
    return 1;
  }

  v69 = v12;
  v70 = v17;
  v71 = a2;
  (*(v9 + 32))(v26, v7, v8);
  sub_1C4EFF098();
  sub_1C45023B8(&qword_1EDDFCC98, MEMORY[0x1E69A9810]);
  v30 = sub_1C4F010B8();
  v31 = v9;
  v32 = *(v9 + 8);
  v32(v23, v8);
  if (v30 & 1) != 0 || (sub_1C4EFF098(), v33 = sub_1C4F010B8(), v32(v23, v8), (v33))
  {
    v32(v26, v8);
    return 1;
  }

  v66 = v32;
  v67 = *(v31 + 16);
  v67(v70, v26, v8);
  v34 = v71;
  v35 = *v71;
  LODWORD(v65) = swift_isUniquelyReferenced_nonNull_native();
  v73[0] = *v34;
  v36 = v73[0];
  *v34 = 0x8000000000000000;
  sub_1C44E3664();
  v68 = v38;
  if (__OFADD__(*(v36 + 16), (v37 & 1) == 0))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v39 = v37;
  v65 = sub_1C456902C(&qword_1EC0C5008, qword_1C4F5EA08);
  v40 = sub_1C4F02458();
  v41 = v73[0];
  if (v40)
  {
    sub_1C44E3664();
    v68 = v42;
    v44 = v71;
    if ((v39 & 1) != (v43 & 1))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v44 = v71;
  }

  v45 = *v44;
  *v44 = v41;

  v46 = *v44;
  if ((v39 & 1) == 0)
  {
    v67(v23, a1, v8);
    sub_1C457EB2C(v68);
  }

  v47 = *(v46 + 56) + 8 * v68;
  sub_1C44D56D0();
  v66(v20, v8);
  v67(v69, a1, v8);
  v48 = *v44;
  swift_isUniquelyReferenced_nonNull_native();
  v73[0] = *v44;
  v49 = v73[0];
  *v44 = 0x8000000000000000;
  sub_1C44E3664();
  v52 = v51;
  if (__OFADD__(*(v49 + 16), (v51 & 1) == 0))
  {
    goto LABEL_23;
  }

  v53 = v50;
  v54 = sub_1C4F02458();
  v55 = v73[0];
  if ((v54 & 1) == 0)
  {
    v58 = v71;
    goto LABEL_18;
  }

  sub_1C44E3664();
  v58 = v71;
  if ((v52 & 1) == (v57 & 1))
  {
    v53 = v56;
LABEL_18:
    v59 = *v58;
    *v58 = v55;

    v60 = *v58;
    if ((v52 & 1) == 0)
    {
      v67(v23, v26, v8);
      sub_1C457EB2C(v53);
    }

    v61 = *(v60 + 56) + 8 * v53;
    v62 = v72;
    sub_1C44D56D0();
    v63 = v66;
    v66(v62, v8);
    v63(v26, v8);
    return 1;
  }

LABEL_24:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void *sub_1C4C46D1C()
{
  v1 = v0[2];

  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[8];
  v7 = v0[10];
  v6 = v0[11];

  return v0;
}

uint64_t sub_1C4C46D90()
{
  sub_1C4C46D1C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C46DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();

  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s22PageRankViewGenerationCMa();
      a4 = swift_allocObject();
      *(a4 + 16) = a5;
      memcpy((a4 + 24), __src, 0x48uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v10 = a1;
      *(v10 + 8) = a2;
      *(v10 + 16) = xmmword_1C4F5B670;
      *(v10 + 32) = 0xD000000000000025;
      *(v10 + 40) = 0x80000001C4FB83A0;
      *(v10 + 48) = v12;
      *(v10 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C46F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C46DE8(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C47124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4C47184(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4C471EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();

  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s40PeopleRelationshipAliasViewViewGeneratorCMa();
      v5 = swift_allocObject();
      *(v5 + 16) = a5;
      *(v5 + 24) = v13;
      *(v5 + 32) = v14;
      *(v5 + 56) = 0xD000000000000539;
      *(v5 + 64) = 0x80000001C4FBC190;
      *(v5 + 48) = v15;
    }

    else
    {
      sub_1C450B034();
      v9 = swift_allocError();
      *v10 = a1;
      *(v10 + 8) = a2;
      *(v10 + 16) = xmmword_1C4F5B670;
      *(v10 + 32) = 0xD000000000000025;
      *(v10 + 40) = 0x80000001C4FB83A0;
      *(v10 + 48) = v12;
      *(v10 + 64) = 0;
      v5 = v9;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return v5;
}

uint64_t sub_1C4C47368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C471EC(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C47414()
{
  v1 = MEMORY[0x1E69E7CC0];
  v51 = MEMORY[0x1E69E7CC0];
  v2 = *(*(*(v0 + 16) + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_pool);
  v48 = &v51;

  sub_1C4465390(sub_1C4C47CB4, v47);

  v3 = v51;
  v44 = sub_1C4428DA0();
  if (!v44)
  {
LABEL_25:
    if (qword_1EDDFECD0 != -1)
    {
LABEL_32:
      swift_once();
    }

    v29 = sub_1C4F00978();
    sub_1C442B738(v29, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v30 = sub_1C4F00968();
    v31 = sub_1C4F01CB8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = *(v1 + 16);

      _os_log_impl(&dword_1C43F8000, v30, v31, "Writing %ld rows to PeopleRelationShipView", v32, 0xCu);
      MEMORY[0x1C6942830](v32, -1, -1);
    }

    else
    {
    }

    sub_1C4BC7440(v1, v39[3], v39[4], v39[5], v39[6]);
  }

  v4 = 0;
  v43 = v3 & 0xC000000000000001;
  v40 = v3 & 0xFFFFFFFFFFFFFF8;
  v41 = xmmword_1C4F0C890;
  v42 = v3;
  while (1)
  {
    if (v43)
    {
      v5 = MEMORY[0x1C6940F90](v4, v3);
    }

    else
    {
      if (v4 >= *(v40 + 16))
      {
        goto LABEL_31;
      }

      v5 = *(v3 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    sub_1C441A898();
    v6 = sub_1C4EFBBE8();
    if (v6)
    {
      MEMORY[0x1EEE9AC00](v6);
      v37 = v5;
      v38 = 0;
      v8 = sqlite3_column_type(v7, 0);
      if (v8 == 5)
      {
        goto LABEL_33;
      }

      v45 = sub_1C4F02AA8();
    }

    else
    {
      sub_1C4EFBB98();
      v45 = v49;
    }

    sub_1C441A898();
    v9 = sub_1C4EFBBE8();
    v46 = v4 + 1;
    if (v9)
    {
      MEMORY[0x1EEE9AC00](v9);
      v37 = v5;
      v38 = 1;
      v8 = sqlite3_column_type(v10, 1);
      if (v8 == 5)
      {
LABEL_33:
        MEMORY[0x1EEE9AC00](v8);
        sub_1C43FD954();
        *(v34 - 16) = sub_1C487BF24;
        *(v34 - 8) = v36;
        sub_1C4EFB968();
        goto LABEL_35;
      }

      v11 = sub_1C4F011E8();
      v13 = v12;
      v49 = v11;
    }

    else
    {
      sub_1C4EFBB98();
      v11 = v49;
      v13 = v50;
    }

    sub_1C441A898();
    v14 = sub_1C4EFBBE8();
    if (!v14)
    {
      v15 = v1;
      sub_1C4EFBB98();
      v18 = v49;
      v20 = v50;
      goto LABEL_20;
    }

    v15 = v1;
    MEMORY[0x1EEE9AC00](v14);
    v37 = v5;
    v38 = 2;
    v17 = sqlite3_column_type(v16, 2);
    if (v17 == 5)
    {
      break;
    }

    v18 = sub_1C4F011E8();
    v20 = v19;
    v49 = v18;
LABEL_20:
    sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
    v21 = swift_allocObject();
    *(v21 + 16) = v41;
    *(v21 + 56) = MEMORY[0x1E69E7360];
    *(v21 + 64) = MEMORY[0x1E69A01D0];
    *(v21 + 32) = v45;
    v22 = MEMORY[0x1E69E6158];
    *(v21 + 96) = MEMORY[0x1E69E6158];
    v23 = MEMORY[0x1E69A0138];
    *(v21 + 104) = MEMORY[0x1E69A0138];
    *(v21 + 112) = v18;
    *(v21 + 72) = v11;
    *(v21 + 80) = v13;
    *(v21 + 136) = v22;
    *(v21 + 144) = v23;
    *(v21 + 120) = v20;
    v1 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = *(v15 + 16);
      sub_1C458B824();
      v1 = v27;
    }

    v3 = v42;
    v24 = v46;
    v25 = *(v1 + 16);
    if (v25 >= *(v1 + 24) >> 1)
    {
      sub_1C458B824();
      v1 = v28;
    }

    *(v1 + 16) = v25 + 1;
    *(v1 + 8 * v25 + 32) = v21;
    ++v4;
    if (v24 == v44)
    {
      goto LABEL_25;
    }
  }

  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD954();
  *(v35 - 16) = sub_1C487BDA4;
  *(v35 - 8) = v36;
  sub_1C4EFB968();
LABEL_35:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}