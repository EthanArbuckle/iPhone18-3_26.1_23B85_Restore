uint64_t sub_1C4DC7D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DC6FE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DC7D68(uint64_t a1)
{
  v2 = sub_1C4DCEFD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DC7DA4(uint64_t a1)
{
  v2 = sub_1C4DCEFD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DC7E28()
{
  sub_1C43FE628();
  v280 = v0;
  v7 = v6;
  v271 = v8;
  v273 = v10;
  v275 = v9;
  v272 = sub_1C4EFF0C8();
  v11 = sub_1C43FCDF8(v272);
  v277 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  v252 = v15;
  v16 = sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
  sub_1C43FBD18(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBC74();
  v262 = v20;
  v21 = sub_1C43FBE44();
  v265 = type metadata accessor for INGroupStructs.Software(v21);
  v22 = sub_1C43FBCE0(v265);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD2D8();
  v261 = v25;
  v26 = sub_1C43FBE44();
  v263 = type metadata accessor for EntityTriple(v26);
  v27 = sub_1C43FCDF8(v263);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD230();
  sub_1C43FD2C8(v35);
  v269 = sub_1C4EFD548();
  v36 = sub_1C43FCDF8(v269);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBCC4();
  sub_1C4495DEC();
  v39 = sub_1C4EFF8A8();
  v40 = sub_1C43FCDF8(v39);
  v278 = v41;
  v279 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C441D15C();
  v45 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v46 = sub_1C43FBD18(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C440D100();
  v50 = sub_1C4EFEEF8();
  v51 = sub_1C43FCDF8(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C4402CA8();
  v276 = *v7;
  v58 = v57;
  sub_1C445FFA8(v0, v5, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v5, 1, v58);
  if (v59)
  {
    sub_1C4420C3C(v5, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v60 = sub_1C43FFB2C();
    sub_1C4414040(v60, v61);
LABEL_48:
    sub_1C44109F8();
    return;
  }

  v62 = *(v53 + 32);
  v267 = v2;
  v268 = v58;
  sub_1C445BE6C(v53 + 32);
  v63();
  v64 = type metadata accessor for INGroupStructs.AddressRelationshipType(0);
  sub_1C4425834(v64);
  v66(v3, v0 + v65, v269);
  v270 = v4;
  sub_1C4EFF838();
  v67 = MEMORY[0x1E69E7CC0];
  v281 = MEMORY[0x1E69E7CC0];
  v68 = (v0 + v64[8]);
  v69 = v68[1];
  v70 = v0;
  if (v69)
  {
    v71 = *v68;
    v72 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v72 = v71 & 0xFFFFFFFFFFFFLL;
    }

    v73 = v263;
    if (v72)
    {
      sub_1C442A800();
      v75 = v74;
      v76(v255, v271, v272);
      v77 = *(v53 + 16);
      v77(v255 + v263[5], v267, v58);
      (*(v278 + 16))(v255 + v263[6], v270, v279);
      v77(v255 + v263[7], v75 + v64[7], v58);
      v78 = v64[6];
      v79 = v263[9];
      sub_1C441AC88();
      sub_1C448D410(v75 + v80, v255 + v81, v82);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v83 = (v255 + v263[8]);
      *v83 = v71;
      v83[1] = v69;
      sub_1C443E23C(v273, (v255 + v263[10]), v84);
      *(v255 + v85) = v276;
      v86 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v86, v87, v88, MEMORY[0x1E69E7CC0]);
      v67 = v89;
      v91 = *(v89 + 16);
      v90 = *(v89 + 24);
      if (v91 >= v90 >> 1)
      {
        v209 = sub_1C43FCFE8(v90);
        sub_1C44C9240(v209, v91 + 1, 1, v67);
        v67 = v210;
      }

      *(v67 + 16) = v91 + 1;
      sub_1C43FFA54();
      sub_1C44083D4();
      sub_1C44DD9B4(v255, v92, v93);
      sub_1C441E100();
    }
  }

  else
  {
    v73 = v263;
  }

  v94 = (v70 + v64[10]);
  v95 = v94[1];
  if (v95)
  {
    v96 = *v94;
    v97 = HIBYTE(v95) & 0xF;
    if ((v95 & 0x2000000000000000) == 0)
    {
      v97 = v96 & 0xFFFFFFFFFFFFLL;
    }

    if (v97)
    {
      sub_1C442A800();
      v99 = v98;
      v100 = sub_1C4414454();
      v256 = v101;
      v102(v100);
      v103 = *(v53 + 16);
      v103(v64 + v73[5], v267, v58);
      v104 = sub_1C441B214();
      v105(v104);
      v103(v64 + v73[7], v99 + v64[9], v58);
      v106 = v64[6];
      v107 = v73[9];
      sub_1C441AC88();
      sub_1C448D410(v99 + v108, v64 + v109, v110);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v111 = (v64 + v73[8]);
      *v111 = v256;
      v111[1] = v95;
      v112 = (v64 + v73[10]);
      *v112 = v275;
      v112[1] = v273;
      sub_1C4402070(v113);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v211 = sub_1C4405674();
        sub_1C44C9240(v211, v212, v213, v214);
        v67 = v215;
      }

      v115 = *(v67 + 16);
      v114 = *(v67 + 24);
      sub_1C44019A4();
      if (v117)
      {
        v216 = sub_1C43FFD98(v116);
        sub_1C44C9240(v216, v217, v218, v67);
        v67 = v219;
      }

      *(v67 + 16) = v95;
      sub_1C43FFA54();
      sub_1C44083D4();
      sub_1C44DD9B4(v257, v118, v119);
      sub_1C441E100();
    }
  }

  v120 = (v70 + v64[12]);
  v121 = v120[1];
  if (v121)
  {
    sub_1C44588B0(v120);
    if (v122)
    {
      sub_1C442A800();
      v124 = v123;
      v125 = sub_1C4414454();
      v258 = v126;
      v127(v125);
      v128 = sub_1C44417F8();
      (v53)(v128, v267, v268);
      v129 = sub_1C441B214();
      v130(v129);
      (v53)(v64 + v73[7], v124 + v64[11], v268);
      v131 = v64[6];
      v132 = v73[9];
      sub_1C441AC88();
      sub_1C448D410(v124 + v133, v64 + v134, v135);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v136 = (v64 + v73[8]);
      *v136 = v258;
      v136[1] = v121;
      v137 = (v64 + v73[10]);
      *v137 = v275;
      v137[1] = v273;
      sub_1C4402070(v138);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v220 = sub_1C4405674();
        sub_1C44C9240(v220, v221, v222, v223);
        v67 = v224;
      }

      sub_1C4402054();
      if (v117)
      {
        v225 = sub_1C43FF640(v139);
        sub_1C44C9240(v225, v226, v227, v67);
        v67 = v228;
      }

      *(v67 + 16) = v121;
      sub_1C43FFA54();
      sub_1C44083D4();
      sub_1C44DD9B4(v259, v140, v141);
      sub_1C441E100();
    }
  }

  v142 = (v70 + v64[14]);
  v143 = v142[1];
  if (v143)
  {
    sub_1C44588B0(v142);
    if (v144)
    {
      sub_1C442A800();
      v146 = v145;
      v147 = sub_1C4414454();
      v264 = v148;
      v149(v147);
      v150 = sub_1C44417F8();
      (v53)(v150, v267, v268);
      v151 = sub_1C441B214();
      v152(v151);
      (v53)(v64 + v73[7], v146 + v64[13], v268);
      v153 = v64[6];
      v154 = v73[9];
      sub_1C441AC88();
      sub_1C448D410(v146 + v155, v64 + v156, v157);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v158 = (v64 + v73[8]);
      *v158 = v264;
      v158[1] = v143;
      v159 = (v64 + v73[10]);
      *v159 = v275;
      v159[1] = v273;
      sub_1C4402070(v160);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v229 = sub_1C4405674();
        sub_1C44C9240(v229, v230, v231, v232);
        v67 = v233;
      }

      sub_1C4402054();
      if (v117)
      {
        v234 = sub_1C43FF640(v161);
        sub_1C44C9240(v234, v235, v236, v67);
        v67 = v237;
      }

      *(v67 + 16) = v143;
      sub_1C43FFA54();
      sub_1C44083D4();
      sub_1C44DD9B4(v260, v162, v163);
      sub_1C441E100();
    }
  }

  sub_1C445FFA8(v70 + v64[15], v262, &qword_1EC0BFA48, &unk_1C4F74980);
  sub_1C440175C(v262, 1, v265);
  if (v59)
  {
    sub_1C4420C3C(v262, &qword_1EC0BFA48, &unk_1C4F74980);
LABEL_38:
    v164 = v254;
LABEL_39:
    if (*(v67 + 16))
    {
      (*(v277 + 16))(v164, v271, v272);
      (*(v53 + 16))(v164 + v73[5], v267, v268);
      (*(v278 + 16))(v164 + v73[6], v270, v279);
      v165 = v164 + v73[7];
      sub_1C4EFEBB8();
      v166 = sub_1C4EFD2F8();
      v168 = v167;
      v169 = v64[6];
      v170 = v73[9];
      sub_1C441AC88();
      sub_1C448D410(v280 + v171, v164 + v172, v173);
      sub_1C4EF9AE8();
      v174 = (v164 + v73[8]);
      *v174 = v166;
      v174[1] = v168;
      sub_1C442F9E0();
      *(v164 + v175) = v176;
      *(v164 + v73[12]) = v276;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v200 = sub_1C4405674();
        sub_1C44C9240(v200, v201, v202, v203);
        v67 = v204;
      }

      sub_1C4402054();
      if (v117)
      {
        v205 = sub_1C43FF640(v177);
        sub_1C44C9240(v205, v206, v207, v67);
        v67 = v208;
      }

      (*(v278 + 8))(v270, v279);
      (*(v53 + 8))(v267, v268);
      *(v67 + 16) = v166;
      sub_1C43FFA54();
      sub_1C44083D4();
      sub_1C44DD9B4(v164, v178, v179);
    }

    else
    {
      (*(v278 + 8))(v270, v279);
      (*(v53 + 8))(v267, v268);
    }

    goto LABEL_48;
  }

  sub_1C4450908();
  sub_1C44DD9B4(v262, v261, v180);
  sub_1C4DC5358();
  if (v1)
  {
    sub_1C440B944();
    sub_1C4DCDDF0(v261, v182);
    (*(v278 + 8))(v270, v279);
    (*(v53 + 8))(v267, v268);

    goto LABEL_48;
  }

  if (!*(v181 + 16))
  {
    sub_1C440B944();
    sub_1C4DCDDF0(v261, v199);

    goto LABEL_38;
  }

  v183 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v183);
  (*(v277 + 16))(v252, v271, v272);
  (*(v53 + 16))(v250, v267, v268);
  (*(v278 + 16))(v251, v270, v279);
  sub_1C445FFA8(v261 + *(v265 + 20), v249, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v249, 1, v268);
  if (!v59)
  {

    v274 = sub_1C4EFF048();
    v266 = v184;
    v185 = v64[6];
    v186 = v73[9];
    sub_1C441AC88();
    sub_1C448D410(v280 + v187, v253 + v188, v189);
    sub_1C4EF9AE8();
    v191 = v190;
    (*(v277 + 32))(v253, v252, v272);
    v247(v253 + v73[5], v250, v268);
    (*(v278 + 32))(v253 + v73[6], v251, v279);
    v247(v253 + v73[7], v249, v268);
    v192 = (v253 + v73[8]);
    *v192 = v274;
    v192[1] = v266;
    sub_1C442F9E0();
    *(v253 + v193) = v191;
    *(v253 + v73[12]) = v276;
    v67 = v281;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v238 = sub_1C4405674();
      sub_1C44C9240(v238, v239, v240, v241);
      v67 = v242;
    }

    v164 = v254;
    sub_1C4402054();
    if (v117)
    {
      v243 = sub_1C43FF640(v194);
      sub_1C44C9240(v243, v244, v245, v67);
      v67 = v246;
    }

    sub_1C440B944();
    sub_1C4DCDDF0(v195, v196);
    *(v67 + 16) = v248;
    sub_1C43FFA54();
    sub_1C44083D4();
    sub_1C44DD9B4(v253, v197, v198);
    goto LABEL_39;
  }

  __break(1u);
}

uint64_t sub_1C4DC8D00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C4FC7F20 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x80000001C4FC7F40 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4C746361746E6F63 && a2 == 0xEC0000006C656261;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000015 && 0x80000001C4FC7F60 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000017 && 0x80000001C4FC8D20 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x486E776F6E6B6E75 && a2 == 0xED0000656C646E61;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD000000000000012 && 0x80000001C4FC8D40 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1C4F02938();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4DC90B8(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6464416C69616D65;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x4C746361746E6F63;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x6D754E656E6F6870;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0x486E776F6E6B6E75;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DC9240()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v1 = sub_1C456902C(&qword_1EC0C7898, &qword_1C4F74D68);
  sub_1C43FCDF8(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4DCED04();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB6C();
  sub_1C44CD430(v5, v6);
  sub_1C4411620();
  sub_1C4F02778();
  if (!v0)
  {
    v20 = type metadata accessor for INGroupStructs.AddressRelationshipType(0);
    v7 = v20[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420B00();
    sub_1C44CD430(v8, v9);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v10 = v20[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C440152C();
    sub_1C44CD430(v11, v12);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4401958(v20);
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C4401774(v20[8]);
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C44169F0(v20);
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C4401774(v20[10]);
    sub_1C4475B68();
    sub_1C43FBF44();
    sub_1C4F02738();
    v13 = v20[11];
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C4401774(v20[12]);
    sub_1C43FBF44();
    sub_1C4F02738();
    v14 = v20[13];
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C4401774(v20[14]);
    sub_1C43FBF44();
    sub_1C4F02738();
    v15 = v20[15];
    type metadata accessor for INGroupStructs.Software(0);
    sub_1C43FCD20();
    sub_1C44CD430(v16, v17);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F02778();
  }

  v18 = sub_1C440231C();
  v19(v18);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4DC9590()
{
  sub_1C43FE96C();
  v3 = v2;
  v73 = v4;
  v5 = sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  v74 = v9;
  sub_1C43FBE44();
  v10 = sub_1C4EFEEF8();
  v11 = sub_1C43FCDF8(v10);
  v79 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  v80 = v18;
  v19 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v19);
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBC74();
  v81 = v23;
  v83 = sub_1C456902C(&qword_1EC0C7888, &qword_1C4F74D60);
  sub_1C43FCDF8(v83);
  v25 = *(v24 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBC74();
  v27 = sub_1C43FBE44();
  v28 = type metadata accessor for INGroupStructs.AddressRelationshipType(v27);
  v29 = sub_1C43FBCE0(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  sub_1C43FCF64();
  v82 = v10;
  sub_1C440BAA8(v32, v33, v34, v10);
  v35 = v1 + v28[5];
  sub_1C4EFD1D8();
  v36 = v28[6];
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8();
  }

  v37 = type metadata accessor for Source();
  sub_1C442B738(v37, qword_1EDDFD138);
  sub_1C441AC88();
  sub_1C448D410(v38, v1 + v36, v39);
  v78 = v28[7];
  sub_1C4EFE518();
  v40 = (v1 + v28[8]);
  *v40 = 0;
  v40[1] = 0;
  v77 = v40;
  v76 = v28[9];
  sub_1C4EFE4E8();
  v41 = (v1 + v28[10]);
  *v41 = 0;
  v41[1] = 0;
  v42 = v1;
  v75 = v28[11];
  sub_1C4EFE478();
  v43 = (v1 + v28[12]);
  *v43 = 0;
  v43[1] = 0;
  v44 = v28[13];
  sub_1C4EFE618();
  v45 = (v42 + v28[14]);
  *v45 = 0;
  v45[1] = 0;
  v46 = v28[15];
  v47 = type metadata accessor for INGroupStructs.Software(0);
  v84 = v42;
  sub_1C43FCF64();
  sub_1C440BAA8(v48, v49, v50, v47);
  v51 = v3[4];
  sub_1C4417F50(v3, v3[3]);
  sub_1C4DCED04();
  sub_1C4F02BC8();
  if (v0)
  {
    v52 = v3;
    v55 = v84;
  }

  else
  {
    v85 = v41;
    v72 = v43;
    sub_1C442DB6C();
    sub_1C44CD430(v53, v54);
    sub_1C4F02658();
    v52 = v3;
    v55 = v84;
    sub_1C444088C(v81, v84, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C4F026C8();
    v57 = *(v79 + 40);
    v57(v84 + v78, v80, v82);
    sub_1C4428F20();
    v58 = sub_1C4F02618();
    sub_1C44147E8(v58, v59, v77);
    sub_1C4F026C8();
    v60 = sub_1C440F118(v76);
    (v57)(v60);
    sub_1C4402044();
    v61 = sub_1C4F02618();
    sub_1C440EEEC(v61, v62, v85);
    sub_1C447CEFC();
    v63 = sub_1C440F118(v75);
    (v57)(v63);
    sub_1C4424A6C();
    *v72 = sub_1C4F02618();
    v72[1] = v64;
    sub_1C447CEFC();
    v65 = sub_1C440F118(v44);
    (v57)(v65);
    *v45 = sub_1C4F02618();
    v45[1] = v66;
    sub_1C43FCD20();
    sub_1C44CD430(v67, v68);
    sub_1C4F02658();
    v69 = sub_1C443F47C();
    v70(v69);
    sub_1C444088C(v74, v84 + v46, &qword_1EC0BFA48, &unk_1C4F74980);
    sub_1C4423954();
    sub_1C448D410(v84, v73, v71);
  }

  sub_1C440962C(v52);
  sub_1C44356F8();
  sub_1C4DCDDF0(v55, v56);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

uint64_t sub_1C4DC9C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DC8D00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DC9C74(uint64_t a1)
{
  v2 = sub_1C4DCED04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DC9CB0(uint64_t a1)
{
  v2 = sub_1C4DCED04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DC9D34()
{
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C44042B0();
  v8 = type metadata accessor for INGroupStructs.AddressRelationshipType(v7);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C43FBD08();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4402CA8();
  v15 = *(type metadata accessor for INGroupStructs.Person(0) + 56);
  result = *(v1 + v15);
  if (result)
  {
    v17 = *(result + 16);
    if (v17)
    {
      v33 = v15;
      v34 = v1;
      v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v19 = result + v18;
      v20 = *(v9 + 72);
      v21 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C448D410(v19, v2, type metadata accessor for INGroupStructs.AddressRelationshipType);
        sub_1C4EFEA18();
        v22 = sub_1C4EFEEF8();
        sub_1C440CBF4(v22);
        sub_1C444088C(v0, v2, &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C448D410(v2, v13, type metadata accessor for INGroupStructs.AddressRelationshipType);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1C4405674();
          sub_1C458DEE8(v26, v27, v28, v29);
          v21 = v30;
        }

        v24 = *(v21 + 16);
        v23 = *(v21 + 24);
        if (v24 >= v23 >> 1)
        {
          v31 = sub_1C43FCFE8(v23);
          sub_1C458DEE8(v31, v24 + 1, 1, v21);
          v21 = v32;
        }

        *(v21 + 16) = v24 + 1;
        sub_1C44DD9B4(v13, v21 + v18 + v24 * v20, type metadata accessor for INGroupStructs.AddressRelationshipType);
        sub_1C44356F8();
        sub_1C4DCDDF0(v2, v25);
        v19 += v20;
        --v17;
      }

      while (v17);

      v15 = v33;
      v1 = v34;
    }

    else
    {

      v21 = MEMORY[0x1E69E7CC0];
    }

    *(v1 + v15) = v21;
  }

  return result;
}

void sub_1C4DC9F80()
{
  sub_1C43FE628();
  v2 = v0;
  v4 = v3;
  v203 = v5;
  v7 = v6;
  v8 = type metadata accessor for INGroupStructs.AddressRelationshipType(0);
  v201 = *(v8 - 8);
  v9 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = sub_1C456902C(&qword_1EC0BFA40, &unk_1C4F74970);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBC74();
  v193 = v17;
  v18 = sub_1C43FBE44();
  v192 = type metadata accessor for INGroupStructs.SoftwareRelationshipType(v18);
  v19 = sub_1C43FBCE0(v192);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD2D8();
  v194 = v22;
  v23 = sub_1C456902C(&qword_1EC0BFA58, &unk_1C4F3BA68);
  sub_1C43FBD18(v23);
  v25 = *(v24 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBC74();
  v199 = v27;
  v28 = sub_1C43FBE44();
  v198 = type metadata accessor for INGroupStructs.IdentifierRelationshipType(v28);
  v29 = sub_1C43FBCE0(v198);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD2D8();
  v200 = v32;
  v33 = sub_1C43FBE44();
  v34 = type metadata accessor for EntityTriple(v33);
  v196 = sub_1C43FCDF8(v34);
  v197 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v196);
  sub_1C43FBFDC();
  v190 = v38;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  v195 = v40;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v188 - v42);
  v44 = *v4;
  v45 = MEMORY[0x1E69E7CC0];
  v207 = MEMORY[0x1E69E7CC0];
  v46 = type metadata accessor for INGroupStructs.Person(0);
  v47 = (v2 + v46[9]);
  v48 = v47[1];
  v202 = v7;
  if (!v48)
  {
    goto LABEL_7;
  }

  v49 = *v47;
  v50 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v50 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (!v50)
  {
    goto LABEL_7;
  }

  v189 = v49;
  v51 = sub_1C4EFF0C8();
  sub_1C43FCE50(v51);
  (*(v52 + 16))(v43, v2);
  v53 = v46[8];
  v191 = v44;
  v54 = v196;
  v55 = v46;
  v56 = *(v196 + 20);
  v57 = sub_1C4EFEEF8();
  sub_1C43FCE50(v57);
  v59 = v43 + v56;
  v46 = v55;
  v60 = v203;
  (*(v58 + 16))(v59, v2 + v53);
  v61 = v46[7];
  v62 = v54[9];
  sub_1C441AC88();
  sub_1C448D410(v2 + v63, v43 + v64, v65);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v67 = v66;
  v68 = v43 + v54[6];
  sub_1C4EFF888();
  v69 = v43 + v54[7];
  sub_1C4EFEC38();
  v70 = v43 + v54[8];
  *v70 = v189;
  *(v70 + 1) = v48;
  v71 = v43 + v54[10];
  *v71 = v202;
  *(v71 + 1) = v60;
  *(v43 + v54[11]) = v67;
  v72 = v54[12];
  v44 = v191;
  *(v43 + v72) = v191;
  v73 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v73, v74, v75, MEMORY[0x1E69E7CC0]);
  v45 = v76;
  v78 = *(v76 + 16);
  v77 = *(v76 + 24);
  v79 = v78 + 1;
  if (v78 >= v77 >> 1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    *(v45 + 16) = v79;
    sub_1C43FBF6C();
    v81 = *(v80 + 72);
    sub_1C44083D4();
    sub_1C44DD9B4(v43, v82, v83);
    v207 = v45;
    v7 = v202;
LABEL_7:
    v84 = (v2 + v46[11]);
    v85 = v84[1];
    v86 = v200;
    if (v85)
    {
      sub_1C43FF988(v84);
      if (v88)
      {
        v188 = v87;
        v89 = sub_1C4EFF0C8();
        sub_1C43FCE50(v89);
        v91 = v2;
        v92 = v195;
        (*(v90 + 16))(v195, v91);
        v189 = v46[10];
        v191 = v44;
        v93 = v196;
        v94 = v46;
        v95 = *(v196 + 20);
        v96 = sub_1C4EFEEF8();
        sub_1C43FCE50(v96);
        v98 = v92 + v95;
        v46 = v94;
        v99 = v203;
        (*(v97 + 16))(v98, v91 + v189);
        v100 = v46[7];
        v101 = v93[9];
        sub_1C441AC88();
        v189 = v91;
        sub_1C448D410(v91 + v102, v92 + v103, v104);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v106 = v105;
        v107 = v92 + v93[6];
        sub_1C4EFF888();
        v108 = v92 + v93[7];
        sub_1C4EFEC38();
        v109 = (v92 + v93[8]);
        *v109 = v188;
        v109[1] = v85;
        v110 = (v92 + v93[10]);
        *v110 = v202;
        v110[1] = v99;
        *(v92 + v93[11]) = v106;
        v111 = v93[12];
        v44 = v191;
        *(v92 + v111) = v191;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v170 = *(v45 + 16);
          v171 = sub_1C43FCEC0();
          sub_1C44C9240(v171, v172, v173, v45);
          v45 = v174;
        }

        v113 = *(v45 + 16);
        v112 = *(v45 + 24);
        v86 = v200;
        v2 = v189;
        if (v113 >= v112 >> 1)
        {
          v175 = sub_1C43FFD98(v112);
          sub_1C44C9240(v175, v176, v177, v45);
          v45 = v178;
        }

        *(v45 + 16) = v113 + 1;
        sub_1C43FBF6C();
        v115 = *(v114 + 72);
        sub_1C44083D4();
        sub_1C44DD9B4(v195, v116, v117);
        v207 = v45;
        v7 = v202;
      }
    }

    v118 = v199;
    sub_1C445FFA8(v2 + v46[12], v199, &qword_1EC0BFA58, &unk_1C4F3BA68);
    v119 = sub_1C440EF74();
    sub_1C440175C(v119, v120, v198);
    if (v121)
    {
      sub_1C4420C3C(v118, &qword_1EC0BFA58, &unk_1C4F3BA68);
    }

    else
    {
      sub_1C44DD9B4(v118, v86, type metadata accessor for INGroupStructs.IdentifierRelationshipType);
      v204 = v44;
      sub_1C4DC425C();
      if (v1)
      {
        sub_1C4416638();
        sub_1C4DCDDF0(v86, v123);
LABEL_41:

        goto LABEL_42;
      }

      sub_1C49D3614(v122);
      sub_1C4416638();
      sub_1C4DCDDF0(v86, v124);
    }

    v43 = v193;
    sub_1C445FFA8(v2 + v46[13], v193, &qword_1EC0BFA40, &unk_1C4F74970);
    v125 = sub_1C440EF74();
    sub_1C440175C(v125, v126, v192);
    v45 = v194;
    if (v121)
    {
      v200 = v46;
      v46 = v44;
      sub_1C4420C3C(v43, &qword_1EC0BFA40, &unk_1C4F74970);
    }

    else
    {
      sub_1C4430800();
      sub_1C44DD9B4(v43, v45, v127);
      v205 = v44;
      sub_1C4DC6244();
      if (v1)
      {
        sub_1C4432FA8();
        v130 = v45;
LABEL_40:
        sub_1C4DCDDF0(v130, v129);
        goto LABEL_41;
      }

      v200 = v46;
      v46 = v44;
      v43 = &v207;
      sub_1C49D3614(v128);
      sub_1C4432FA8();
      sub_1C4DCDDF0(v45, v131);
    }

    v44 = *(v2 + v200[14]);
    if (!v44)
    {
      break;
    }

    v79 = 0;
    v132 = *(v44 + 16);
    while (1)
    {
      if (v132 == v79)
      {
        v7 = v202;
        goto LABEL_33;
      }

      v77 = *(v44 + 16);
      if (v79 >= v77)
      {
        break;
      }

      sub_1C43FBF6C();
      v134 = *(v133 + 72);
      sub_1C4423954();
      sub_1C448D410(v135, v12, v136);
      v206 = v46;
      sub_1C4DC7E28();
      if (v1)
      {
        sub_1C44356F8();
        v130 = v12;
        goto LABEL_40;
      }

      v45 = v137;
      ++v79;
      sub_1C44356F8();
      sub_1C4DCDDF0(v12, v138);
      v43 = &v207;
      sub_1C49D3614(v45);
    }

    __break(1u);
LABEL_44:
    v168 = sub_1C43FCFE8(v77);
    sub_1C44C9240(v168, v79, 1, v45);
    v45 = v169;
  }

LABEL_33:
  v139 = v207;
  v140 = v190;
  if (*(v207 + 16))
  {
    v141 = sub_1C4EFF0C8();
    sub_1C43FCE50(v141);
    (*(v142 + 16))(v140, v2);
    v143 = v196;
    v144 = v140 + *(v196 + 20);
    sub_1C4EFEBB8();
    v145 = v200;
    v146 = v2 + v200[6];
    v147 = sub_1C4EFD2F8();
    v201 = v148;
    v149 = v145[7];
    v150 = v143[9];
    sub_1C441AC88();
    sub_1C448D410(v2 + v151, v140 + v152, v153);
    sub_1C4EF9AE8();
    v155 = v154;
    v156 = v140 + v143[6];
    sub_1C4EFF888();
    v157 = v140 + v143[7];
    sub_1C4EFEC38();
    v158 = (v140 + v143[8]);
    v159 = v201;
    *v158 = v147;
    v158[1] = v159;
    v160 = (v140 + v143[10]);
    v161 = v203;
    *v160 = v7;
    v160[1] = v161;
    *(v140 + v143[11]) = v155;
    *(v140 + v143[12]) = v46;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v179 = *(v139 + 16);
      v180 = sub_1C43FCEC0();
      sub_1C44C9240(v180, v181, v182, v139);
      v139 = v183;
    }

    v163 = *(v139 + 16);
    v162 = *(v139 + 24);
    if (v163 >= v162 >> 1)
    {
      v184 = sub_1C43FFD98(v162);
      sub_1C44C9240(v184, v185, v186, v139);
      v139 = v187;
    }

    *(v139 + 16) = v163 + 1;
    sub_1C43FBF6C();
    v165 = *(v164 + 72);
    sub_1C44083D4();
    sub_1C44DD9B4(v140, v166, v167);
  }

LABEL_42:
  sub_1C44109F8();
}

uint64_t sub_1C4DCA888(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x80000001C4FC8480 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1701667182 && a2 == 0xE400000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7774666F53736168 && a2 == 0xEB00000000657261;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000015 && 0x80000001C4FC85C0 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C4F02938();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4DCAC00(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x6E6F6974616C6572;
      break;
    case 6:
      result = 0x6572705F656D616ELL;
      break;
    case 7:
      result = 1701667182;
      break;
    case 8:
      result = 0x696669746E656469;
      break;
    case 9:
      result = 0x7774666F53736168;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4DCAD64()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v2 = sub_1C456902C(&qword_1EC0C78F8, &qword_1C4F74D98);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4DCEE98();
  sub_1C440F61C();
  sub_1C4EFF0C8();
  sub_1C4403C18();
  sub_1C44CD430(v6, v7);
  sub_1C4449458();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    v8 = type metadata accessor for INGroupStructs.Person(0);
    v9 = *(v8 + 20);
    sub_1C443E4C4(1);
    sub_1C4EFEEF8();
    sub_1C442DB6C();
    sub_1C44CD430(v10, v11);
    sub_1C440A3DC();
    sub_1C4F02778();
    v28 = v8;
    v12 = *(v8 + 24);
    sub_1C443E4C4(2);
    sub_1C4EFD548();
    sub_1C4420B00();
    sub_1C44CD430(v13, v14);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v15 = v28[7];
    sub_1C443E4C4(3);
    type metadata accessor for Source();
    sub_1C440152C();
    sub_1C44CD430(v16, v17);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4427014(v28[8]);
    sub_1C440A3DC();
    sub_1C4F027E8();
    sub_1C4401774(v28[9]);
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4427014(v28[10]);
    sub_1C440A3DC();
    sub_1C4F027E8();
    sub_1C4401774(v28[11]);
    sub_1C43FBF44();
    sub_1C4F02738();
    v18 = v28[12];
    v19 = sub_1C443E4C4(8);
    type metadata accessor for INGroupStructs.IdentifierRelationshipType(v19);
    sub_1C4423E0C();
    sub_1C44CD430(v20, v21);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F02778();
    v22 = v28[13];
    v23 = sub_1C443E4C4(9);
    type metadata accessor for INGroupStructs.SoftwareRelationshipType(v23);
    sub_1C441D0C0();
    sub_1C44CD430(v24, v25);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F02778();
    v29 = *(v1 + v28[14]);
    sub_1C456902C(&qword_1EC0C77F8, "X$\a");
    sub_1C4DCEEEC(&qword_1EC0C7900, &qword_1EC0C7858);
    sub_1C43FEF68();
    sub_1C4F02778();
  }

  v26 = sub_1C440231C();
  v27(v26);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4DCB148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v14 = v13;
  v97 = v15;
  v16 = sub_1C456902C(&qword_1EC0BFA40, &unk_1C4F74970);
  sub_1C43FBD18(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBC74();
  v98 = v20;
  v21 = sub_1C456902C(&qword_1EC0BFA58, &unk_1C4F3BA68);
  sub_1C43FBD18(v21);
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBC74();
  v99 = v25;
  sub_1C43FBE44();
  v26 = sub_1C4EFEEF8();
  v27 = sub_1C43FCDF8(v26);
  v112 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBFDC();
  v100 = v31;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD230();
  v101 = v33;
  v34 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v34);
  v36 = *(v35 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBC74();
  v102 = v38;
  sub_1C43FBE44();
  v39 = sub_1C4EFF0C8();
  v40 = sub_1C43FCDF8(v39);
  v104 = v41;
  v105 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v44 = sub_1C456902C(&qword_1EC0C78E0, &qword_1C4F74D90);
  v103 = sub_1C43FCDF8(v44);
  v46 = *(v45 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v47);
  v48 = sub_1C4460930();
  v49 = type metadata accessor for INGroupStructs.Person(v48);
  v50 = sub_1C43FBCE0(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v113 = *(v53 + 20);
  v114 = v26;
  sub_1C43FCF64();
  sub_1C440BAA8(v54, v55, v56, v26);
  v106 = v49[6];
  sub_1C4EFD4C8();
  v57 = v49[7];
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8();
  }

  v58 = type metadata accessor for Source();
  sub_1C442B738(v58, qword_1EDDFD138);
  sub_1C441AC88();
  v107 = v57;
  sub_1C448D410(v59, v12 + v57, v60);
  v111 = v49[8];
  sub_1C4EFE588();
  v110 = v49[10];
  sub_1C4EFEBF8();
  v61 = v49[12];
  v62 = type metadata accessor for INGroupStructs.IdentifierRelationshipType(0);
  v108 = v61;
  sub_1C43FCF64();
  sub_1C440BAA8(v63, v64, v65, v62);
  v66 = v49[13];
  v67 = type metadata accessor for INGroupStructs.SoftwareRelationshipType(0);
  v109 = v66;
  sub_1C43FCF64();
  sub_1C440BAA8(v68, v69, v70, v67);
  v71 = v14[4];
  sub_1C4417F50(v14, v14[3]);
  sub_1C4DCEE98();
  sub_1C4F02BC8();
  if (v10)
  {
    sub_1C440962C(v14);
    sub_1C4420C3C(v12 + v113, &qword_1EC0B9A08, &unk_1C4F107B0);
    v74 = sub_1C4EFD548();
    sub_1C43FBCE0(v74);
    (*(v75 + 8))(v12 + v106);
    sub_1C43FE2E8();
    sub_1C4DCDDF0(v12 + v107, v76);
    v77 = *(v112 + 8);
    v77(v12 + v111, v114);

    v77(v12 + v110, v114);

    sub_1C4420C3C(v12 + v108, &qword_1EC0BFA58, &unk_1C4F3BA68);
    sub_1C4420C3C(v12 + v109, &qword_1EC0BFA40, &unk_1C4F74970);
  }

  else
  {
    sub_1C4403C18();
    sub_1C44CD430(v72, v73);
    sub_1C4449458();
    sub_1C4F026C8();
    (*(v104 + 32))(v12, v11, v105);
    sub_1C442DB6C();
    sub_1C44CD430(v78, v79);
    sub_1C4434418();
    sub_1C4F02658();
    sub_1C444088C(v102, v12 + v113, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4434418();
    sub_1C4F026C8();
    v80 = *(v112 + 40);
    v80(v12 + v111, v101, v114);
    v81 = sub_1C4DCFD68(5);
    v82 = (v12 + v49[9]);
    *v82 = v81;
    v82[1] = v83;
    sub_1C4434418();
    sub_1C4F026C8();
    v80(v12 + v110, v100, v114);
    v84 = sub_1C4DCFD68(7);
    v85 = (v12 + v49[11]);
    *v85 = v84;
    v85[1] = v86;
    sub_1C4423E0C();
    sub_1C44CD430(v87, v88);
    sub_1C4449458();
    sub_1C44B9074();
    sub_1C4F02658();
    sub_1C444088C(v99, v12 + v108, &qword_1EC0BFA58, &unk_1C4F3BA68);
    LOBYTE(a10) = 9;
    sub_1C441D0C0();
    sub_1C44CD430(v89, v90);
    sub_1C4449458();
    sub_1C4F02658();
    sub_1C444088C(v98, v12 + v66, &qword_1EC0BFA40, &unk_1C4F74970);
    sub_1C456902C(&qword_1EC0C77F8, "X$\a");
    sub_1C4DCEEEC(&qword_1EC0C78F0, &qword_1EC0C7850);
    sub_1C4F02658();
    v91 = v49[14];
    v92 = sub_1C440C1F4();
    v93(v92, v103);
    *(v12 + v91) = a10;
    sub_1C4441698();
    sub_1C448D410(v12, v97, v94);
    sub_1C440962C(v14);
    v95 = sub_1C441001C();
    sub_1C4DCDDF0(v95, v96);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DCBA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DCA888(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DCBA6C(uint64_t a1)
{
  v2 = sub_1C4DCEE98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DCBAA8(uint64_t a1)
{
  v2 = sub_1C4DCEE98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DCBB2C()
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v40 = type metadata accessor for INGroupStructs.Person(v6);
  v7 = sub_1C43FCDF8(v40);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = *(type metadata accessor for INGroupStructs.GroupRelationshipType(0) + 28);
  result = *(v1 + v18);
  if (result)
  {
    v20 = *(result + 16);
    if (v20)
    {
      v38 = v18;
      v39 = v1;
      v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v37 = result;
      v22 = result + v21;
      v23 = *(v9 + 72);
      v24 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C448D410(v22, v17, type metadata accessor for INGroupStructs.Person);
        sub_1C4EFE548();
        v25 = sub_1C4EFEEF8();
        sub_1C440CBF4(v25);
        sub_1C444088C(v0, &v17[*(v40 + 20)], &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C448D410(v17, v14, type metadata accessor for INGroupStructs.Person);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = *(v24 + 16);
          v31 = sub_1C43FCEC0();
          sub_1C458DEA8(v31, v32, v33, v24);
          v24 = v34;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          v35 = sub_1C43FCFE8(v26);
          sub_1C458DEA8(v35, v27 + 1, 1, v24);
          v24 = v36;
        }

        *(v24 + 16) = v27 + 1;
        sub_1C44DD9B4(v14, v24 + v21 + v27 * v23, type metadata accessor for INGroupStructs.Person);
        v28 = sub_1C441001C();
        sub_1C4DCDDF0(v28, v29);
        v22 += v23;
        --v20;
      }

      while (v20);

      v18 = v38;
      v1 = v39;
    }

    else
    {

      v24 = MEMORY[0x1E69E7CC0];
    }

    *(v1 + v18) = v24;
  }

  return result;
}

void sub_1C4DCBD88()
{
  sub_1C43FE628();
  v5 = v1;
  v186 = v0;
  v7 = v6;
  v176 = v8;
  v181 = v9;
  v188 = v10;
  v11 = sub_1C4EFF0C8();
  v12 = sub_1C43FCDF8(v11);
  v179 = v13;
  v180 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD2D8();
  v170 = v16;
  v17 = sub_1C43FBE44();
  v18 = type metadata accessor for EntityTriple(v17);
  v174 = sub_1C43FCDF8(v18);
  v175 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v174);
  sub_1C43FBFDC();
  v171 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD230();
  v25 = sub_1C43FD2C8(v24);
  v164 = type metadata accessor for INGroupStructs.Person(v25);
  v26 = sub_1C43FCDF8(v164);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  sub_1C441B2EC();
  v183 = sub_1C4EFD548();
  v31 = sub_1C43FCDF8(v183);
  v178 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD2D8();
  v177 = v35;
  sub_1C43FBE44();
  v36 = sub_1C4EFF8A8();
  v184 = sub_1C43FCDF8(v36);
  v185 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v184);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v154 - v41;
  v43 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v44 = sub_1C43FBD18(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C441D15C();
  v48 = sub_1C4EFEEF8();
  v49 = sub_1C43FCDF8(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C440D100();
  v187 = *v7;
  v55 = v186;
  v57 = v56;
  sub_1C445FFA8(v186, v3, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v3, 1, v57);
  if (v58)
  {
    sub_1C4420C3C(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v59 = sub_1C43FFB2C();
    sub_1C4414040(v59, v60);
LABEL_26:
    sub_1C44109F8();
    return;
  }

  v61 = *(v51 + 32);
  v172 = v4;
  v182 = v57;
  v161 = v51 + 32;
  v163 = v61;
  v61(v4, v3, v57);
  v62 = type metadata accessor for INGroupStructs.GroupRelationshipType(0);
  v63 = *(v178 + 16);
  v162 = *(v62 + 20);
  v63(v177, v55 + v162, v183);
  v173 = v42;
  sub_1C4EFF838();
  v190 = MEMORY[0x1E69E7CC0];
  v178 = v62;
  v64 = *(v55 + *(v62 + 28));
  v165 = v51;
  if (!v64)
  {
    v183 = MEMORY[0x1E69E7CC0];
    v67 = v181;
LABEL_20:
    v109 = v183;
    v110 = v184;
    v2 = v171;
    v111 = v172;
    v112 = v173;
    v113 = v165;
    if (*(v183 + 16))
    {
      (*(v179 + 16))(v171, v176, v180);
      v183 = v109;
      v114 = v110;
      v115 = v174;
      (*(v113 + 16))(v2 + *(v174 + 20), v111, v182);
      v185[2](v2 + v115[6], v112, v114);
      v116 = v2 + v115[7];
      sub_1C4EFEBB8();
      v62 = sub_1C4EFD2F8();
      v118 = v117;
      v119 = *(v178 + 24);
      v120 = v115[9];
      sub_1C441AC88();
      sub_1C448D410(v55 + v121, v2 + v122, v123);
      sub_1C4EF9AE8();
      v124 = (v2 + v115[8]);
      *v124 = v62;
      v124[1] = v118;
      v125 = (v2 + v115[10]);
      *v125 = v188;
      v125[1] = v67;
      *(v2 + v115[11]) = v126;
      *(v2 + v115[12]) = v187;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v66 = v183;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_29:
        v145 = *(v66 + 16);
        v146 = sub_1C43FCEC0();
        sub_1C44C9240(v146, v147, v148, v66);
        v66 = v149;
      }

      v128 = *(v66 + 16);
      v127 = *(v66 + 24);
      sub_1C44019A4();
      v130 = v182;
      v131 = v184;
      if (v132)
      {
        v150 = sub_1C43FFD98(v129);
        sub_1C44C9240(v150, v151, v152, v66);
        v66 = v153;
      }

      v133 = sub_1C4416968();
      v134(v133, v131);
      v135 = sub_1C4440EC4();
      v136(v135, v130);
      *(v66 + 16) = v62;
      sub_1C43FBF6C();
      v138 = *(v137 + 72);
      sub_1C44083D4();
      sub_1C44DD9B4(v2, v139, v140);
    }

    else
    {
      (v185)[1](v173, v184, v180);
      (*(v113 + 8))(v111, v182);
    }

    goto LABEL_26;
  }

  v65 = 0;
  v66 = *(v64 + 16);
  v177 = (v179 + 16);
  v160 = (v51 + 16);
  v159 = (v185 + 2);
  v158 = (v179 + 32);
  v157 = v185 + 4;
  v183 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v67 = v181;
    while (1)
    {
      if (v66 == v65)
      {
        v55 = v186;
        goto LABEL_20;
      }

      if (v65 >= *(v64 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      v68 = v64 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
      v69 = *(v28 + 72);
      sub_1C4441698();
      sub_1C448D410(v70, v2, v71);
      v189 = v187;
      v62 = v2;
      sub_1C4DC9F80();
      if (v5)
      {
        v141 = sub_1C441001C();
        sub_1C4DCDDF0(v141, v142);
        (v185[1])(v173, v184);
        v143 = sub_1C4440EC4();
        v144(v143, v182);

        goto LABEL_26;
      }

      if (*(v72 + 16))
      {
        break;
      }

      v73 = sub_1C441001C();
      sub_1C4DCDDF0(v73, v74);

      ++v65;
    }

    v156 = v66;
    v75 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C49D3614(v75);
    (*v177)(v170, v176, v180);
    (*v160)(v167, v172, v182);
    (*v159)(v169, v173, v184);
    sub_1C445FFA8(v2 + *(v164 + 20), v168, &qword_1EC0B9A08, &unk_1C4F107B0);
    v76 = sub_1C440EF74();
    sub_1C440175C(v76, v77, v182);
    if (v58)
    {
      break;
    }

    v183 = sub_1C4EFF048();
    v155 = v78;
    v79 = *(v178 + 24);
    v80 = v174;
    v81 = *(v174 + 36);
    sub_1C441AC88();
    v83 = v166;
    sub_1C448D410(v186 + v82, v166 + v84, v85);
    sub_1C4EF9AE8();
    v87 = v86;
    (*v158)(v83, v170, v180);
    v163(v83 + v80[5], v167, v182);
    (*v157)(v83 + v80[6], v169, v184);
    v163(v83 + v80[7], v168, v182);
    v88 = (v83 + v80[8]);
    v89 = v155;
    *v88 = v183;
    v88[1] = v89;
    v90 = (v83 + v80[10]);
    *v90 = v188;
    v90[1] = v67;
    *(v83 + v80[11]) = v87;
    *(v83 + v80[12]) = v187;
    v91 = v190;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v183 = v91;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v99 = *(v183 + 16);
      v100 = sub_1C43FCEC0();
      sub_1C44C9240(v100, v101, v102, v103);
      v183 = v104;
    }

    v93 = *(v183 + 16);
    v92 = *(v183 + 24);
    v62 = v93 + 1;
    v66 = v156;
    if (v93 >= v92 >> 1)
    {
      v105 = sub_1C43FFD98(v92);
      sub_1C44C9240(v105, v106, v107, v183);
      v183 = v108;
    }

    ++v65;
    v94 = sub_1C441001C();
    sub_1C4DCDDF0(v94, v95);
    v96 = v183;
    *(v183 + 16) = v62;
    sub_1C43FBF6C();
    sub_1C445C2FC();
    sub_1C44083D4();
    sub_1C44DD9B4(v166, v97, v98);
    v190 = v96;
  }

  __break(1u);
}

uint64_t sub_1C4DCC790(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0x73614870756F7267;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4DCC824()
{
  sub_1C440EDD4();
  v3 = sub_1C456902C(&qword_1EC0C78D0, &qword_1C4F74D88);
  sub_1C43FCDF8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4DCEDAC();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB6C();
  sub_1C44CD430(v9, v10);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F02778();
  if (!v0)
  {
    v11 = type metadata accessor for INGroupStructs.GroupRelationshipType(0);
    v12 = v11[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420B00();
    sub_1C44CD430(v13, v14);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v15 = v11[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C440152C();
    sub_1C44CD430(v16, v17);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v19 = *(v2 + v11[7]);
    sub_1C456902C(&qword_1EC0C77F0, "^$\a");
    sub_1C4DCEE00(&qword_1EC0C78D8, &qword_1EC0C7828);
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  return (*(v5 + 8))(v1, v3);
}

void sub_1C4DCCA70()
{
  sub_1C43FE96C();
  v3 = v2;
  v39 = v4;
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  v40 = v9;
  v10 = sub_1C456902C(&qword_1EC0C78B8, &qword_1C4F74D80);
  sub_1C43FCDF8(v10);
  v41 = v11;
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4495DEC();
  v16 = type metadata accessor for INGroupStructs.GroupRelationshipType(v15);
  v17 = sub_1C43FBCE0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  sub_1C441B2EC();
  v20 = sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v21, v22, v23, v20);
  v24 = v1 + v16[5];
  sub_1C4EFD188();
  v25 = v16[6];
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8();
  }

  v26 = type metadata accessor for Source();
  sub_1C442B738(v26, qword_1EDDFD138);
  sub_1C441AC88();
  sub_1C448D410(v27, v1 + v25, v28);
  v29 = v16[7];
  *(v1 + v29) = 0;
  v30 = v3[4];
  sub_1C4417F50(v3, v3[3]);
  sub_1C4DCEDAC();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C442DB6C();
    sub_1C44CD430(v31, v32);
    sub_1C43FE6CC();
    sub_1C440194C();
    sub_1C4F02658();
    sub_1C444088C(v40, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C456902C(&qword_1EC0C77F0, "^$\a");
    sub_1C4DCEE00(&qword_1EC0C78C8, &qword_1EC0C7820);
    sub_1C440194C();
    sub_1C4F02658();
    v33 = *(v41 + 8);
    v34 = sub_1C44158DC();
    v35(v34);
    *(v1 + v29) = v42;
    v36 = sub_1C442A548();
    sub_1C448D410(v36, v39, v37);
  }

  sub_1C440962C(v3);
  sub_1C44401EC();
  sub_1C4DCDDF0(v1, v38);
  sub_1C43FBC80();
}

uint64_t sub_1C4DCCDAC(uint64_t a1)
{
  v2 = sub_1C4DCEDAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DCCDE8(uint64_t a1)
{
  v2 = sub_1C4DCEDAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DCCE6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x80000001C4FC8A70 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x7774666F53736168 && a2 == 0xEB00000000657261)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C4F02938();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4DCD104(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x7774666F53736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4DCD208()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  v1 = sub_1C456902C(&qword_1EC0C78B0, &qword_1C4F74D78);
  sub_1C43FCDF8(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4DCED58();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C4403C18();
  sub_1C44CD430(v5, v6);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F027E8();
  if (!v0)
  {
    v7 = type metadata accessor for INGroupStructs.GroupOfHumans(0);
    v8 = *(v7 + 20);
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C442DB6C();
    sub_1C44CD430(v9, v10);
    sub_1C44032B0();
    sub_1C4F02778();
    v27 = v7;
    v11 = *(v7 + 24);
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C4420B00();
    sub_1C44CD430(v12, v13);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v14 = v27[7];
    type metadata accessor for Source();
    sub_1C440152C();
    sub_1C44CD430(v15, v16);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v17 = v27[8];
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4404338(v27[9]);
    sub_1C4402150();
    sub_1C4F02738();
    v18 = v27[10];
    sub_1C4475B68();
    type metadata accessor for INGroupStructs.GroupRelationshipType(0);
    sub_1C447FB7C();
    sub_1C44CD430(v19, v20);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F02778();
    v21 = v27[11];
    v22 = sub_1C443E4C4(7);
    type metadata accessor for INGroupStructs.SoftwareRelationshipType(v22);
    sub_1C441D0C0();
    sub_1C44CD430(v23, v24);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  v25 = sub_1C440231C();
  v26(v25);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DCD518()
{
  sub_1C43FE96C();
  v3 = v2;
  v81 = v4;
  v5 = sub_1C456902C(&qword_1EC0BFA40, &unk_1C4F74970);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  v82 = v9;
  v10 = sub_1C456902C(&qword_1EC0BFA50, &qword_1C4F3BA60);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v83 = v14;
  sub_1C43FBE44();
  v15 = sub_1C4EFEEF8();
  v16 = sub_1C43FCDF8(v15);
  v92 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v84 = v20;
  v21 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v21);
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBC74();
  v85 = v25;
  sub_1C43FBE44();
  v87 = sub_1C4EFF0C8();
  v26 = sub_1C43FCDF8(v87);
  v86 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v32 = v31 - v30;
  v33 = sub_1C456902C(&qword_1EC0C78A0, &qword_1C4F74D70);
  sub_1C43FCDF8(v33);
  v35 = *(v34 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  v37 = sub_1C4495DEC();
  v38 = type metadata accessor for INGroupStructs.GroupOfHumans(v37);
  v39 = sub_1C43FBCE0(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v94 = *(v42 + 20);
  v95 = v15;
  sub_1C43FCF64();
  sub_1C440BAA8(v43, v44, v45, v15);
  v88 = v38[6];
  sub_1C4EFCF48();
  v46 = v38[7];
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8();
  }

  v47 = type metadata accessor for Source();
  sub_1C442B738(v47, qword_1EDDFD138);
  sub_1C441AC88();
  v89 = v46;
  sub_1C448D410(v48, v1 + v46, v49);
  v93 = v38[8];
  sub_1C4EFEBF8();
  v50 = v38[10];
  v51 = type metadata accessor for INGroupStructs.GroupRelationshipType(0);
  v91 = v50;
  sub_1C43FCF64();
  sub_1C440BAA8(v52, v53, v54, v51);
  v55 = v38[11];
  v56 = type metadata accessor for INGroupStructs.SoftwareRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v57, v58, v59, v56);
  v60 = v3;
  v62 = v3[3];
  v61 = v3[4];
  v90 = v60;
  sub_1C4417F50(v60, v62);
  sub_1C4DCED58();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v90);
    sub_1C4420C3C(v1 + v94, &qword_1EC0B9A08, &unk_1C4F107B0);
    v65 = sub_1C4EFD548();
    sub_1C43FBCE0(v65);
    (*(v66 + 8))(v1 + v88);
    sub_1C43FE2E8();
    sub_1C4DCDDF0(v1 + v89, v67);
    (*(v92 + 8))(v1 + v93, v95);

    sub_1C4420C3C(v1 + v91, &qword_1EC0BFA50, &qword_1C4F3BA60);
    sub_1C4420C3C(v1 + v55, &qword_1EC0BFA40, &unk_1C4F74970);
  }

  else
  {
    sub_1C4403C18();
    sub_1C44CD430(v63, v64);
    sub_1C43FE6CC();
    sub_1C440194C();
    sub_1C4F026C8();
    (*(v86 + 32))(v1, v32, v87);
    sub_1C442DB6C();
    sub_1C44CD430(v68, v69);
    sub_1C440194C();
    sub_1C4F02658();
    sub_1C444088C(v85, v1 + v94, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C440194C();
    sub_1C4F026C8();
    (*(v92 + 40))(v1 + v93, v84, v95);
    sub_1C440194C();
    v70 = sub_1C4F02618();
    v71 = (v1 + v38[9]);
    *v71 = v70;
    v71[1] = v72;
    sub_1C447FB7C();
    sub_1C44CD430(v73, v74);
    sub_1C440194C();
    sub_1C4F02658();
    sub_1C444088C(v83, v1 + v91, &qword_1EC0BFA50, &qword_1C4F3BA60);
    sub_1C441D0C0();
    sub_1C44CD430(v75, v76);
    sub_1C440194C();
    sub_1C4F02658();
    v77 = sub_1C44151B0();
    v78(v77);
    sub_1C444088C(v82, v1 + v55, &qword_1EC0BFA40, &unk_1C4F74970);
    v79 = sub_1C442A548();
    sub_1C448D410(v79, v81, v80);
    sub_1C440962C(v90);
    sub_1C4DCDDF0(v1, type metadata accessor for INGroupStructs.GroupOfHumans);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DCDCB4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4DCDD08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DCCE6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DCDD30(uint64_t a1)
{
  v2 = sub_1C4DCED58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DCDD6C(uint64_t a1)
{
  v2 = sub_1C4DCED58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DCDDF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4DCDEF0()
{
  sub_1C4DCE17C(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for Source();
      if (v4 <= 0x3F)
      {
        v1 = sub_1C4EFEEF8();
        if (v5 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C4DCE028()
{
  sub_1C4DCE17C(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for Source();
      if (v4 <= 0x3F)
      {
        v1 = sub_1C4EFEEF8();
        if (v5 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
          {
            sub_1C4DCE17C(319, qword_1EDDE9810, type metadata accessor for INGroupStructs.Software);
            v1 = v8;
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_1C4DCE17C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C4DCE1F8()
{
  sub_1C4EFF0C8();
  if (v0 <= 0x3F)
  {
    sub_1C4DCE17C(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    if (v1 <= 0x3F)
    {
      sub_1C4EFD548();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Source();
        if (v3 <= 0x3F)
        {
          sub_1C4EFEEF8();
          if (v4 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v5 <= 0x3F)
            {
              sub_1C4DCE17C(319, qword_1EDDE9B90, type metadata accessor for INGroupStructs.GroupRelationshipType);
              if (v6 <= 0x3F)
              {
                sub_1C4DCE17C(319, qword_1EDDE9A20, type metadata accessor for INGroupStructs.SoftwareRelationshipType);
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

void sub_1C4DCE388()
{
  sub_1C4DCE17C(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  if (v0 <= 0x3F)
  {
    sub_1C4EFD548();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Source();
      if (v2 <= 0x3F)
      {
        sub_1C487B8D4(319, &qword_1EDDDBCB8, &qword_1EC0C77F0, "^$\a");
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C4DCE498()
{
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    sub_1C4DCE17C(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      v0 = sub_1C4EFD548();
      if (v4 <= 0x3F)
      {
        v0 = type metadata accessor for Source();
        if (v5 <= 0x3F)
        {
          v0 = sub_1C4EFEEF8();
          if (v6 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v8 > 0x3F)
            {
              return v7;
            }

            else
            {
              sub_1C4DCE17C(319, qword_1EDDE9970, type metadata accessor for INGroupStructs.IdentifierRelationshipType);
              v0 = v9;
              if (v10 <= 0x3F)
              {
                sub_1C4DCE17C(319, qword_1EDDE9A20, type metadata accessor for INGroupStructs.SoftwareRelationshipType);
                v0 = v11;
                if (v12 <= 0x3F)
                {
                  sub_1C487B8D4(319, &qword_1EDDDBCC0, &qword_1EC0C77F8, "X$\a");
                  v0 = v13;
                  if (v14 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_1C4DCE690()
{
  sub_1C4EFF0C8();
  if (v0 <= 0x3F)
  {
    sub_1C4DCE17C(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    if (v1 <= 0x3F)
    {
      sub_1C4EFD548();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Source();
        if (v3 <= 0x3F)
        {
          sub_1C4EFEEF8();
          if (v4 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4DCE7C8()
{
  sub_1C4DCE17C(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for Source();
      if (v4 <= 0x3F)
      {
        v1 = sub_1C4EFEEF8();
        if (v5 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
          {
            sub_1C4DCE17C(319, qword_1EDDE9810, type metadata accessor for INGroupStructs.Software);
            v1 = v8;
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C4DCE914(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD430(&qword_1EC0C7800, type metadata accessor for INGroupStructs.SoftwareRelationshipType);
  result = sub_1C44CD430(&qword_1EC0C7808, type metadata accessor for INGroupStructs.SoftwareRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DCE998(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD430(&qword_1EC0C7810, type metadata accessor for INGroupStructs.Software);
  result = sub_1C44CD430(&qword_1EC0C7818, type metadata accessor for INGroupStructs.Software);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DCEA1C(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD430(&qword_1EC0C7820, type metadata accessor for INGroupStructs.Person);
  result = sub_1C44CD430(&qword_1EC0C7828, type metadata accessor for INGroupStructs.Person);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DCEAA0(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD430(&qword_1EC0C7830, type metadata accessor for INGroupStructs.GroupRelationshipType);
  result = sub_1C44CD430(&qword_1EC0C7838, type metadata accessor for INGroupStructs.GroupRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DCEB24(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD430(&qword_1EC0C7840, type metadata accessor for INGroupStructs.GroupOfHumans);
  result = sub_1C44CD430(&qword_1EC0C7848, type metadata accessor for INGroupStructs.GroupOfHumans);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DCEBA8(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD430(&qword_1EC0C7850, type metadata accessor for INGroupStructs.AddressRelationshipType);
  result = sub_1C44CD430(&qword_1EC0C7858, type metadata accessor for INGroupStructs.AddressRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DCEC2C(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD430(&qword_1EC0C7860, type metadata accessor for INGroupStructs.IdentifierRelationshipType);
  result = sub_1C44CD430(&qword_1EC0C7868, type metadata accessor for INGroupStructs.IdentifierRelationshipType);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4DCECB0()
{
  result = qword_1EC0C7878;
  if (!qword_1EC0C7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7878);
  }

  return result;
}

unint64_t sub_1C4DCED04()
{
  result = qword_1EC0C7890;
  if (!qword_1EC0C7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7890);
  }

  return result;
}

unint64_t sub_1C4DCED58()
{
  result = qword_1EC0C78A8;
  if (!qword_1EC0C78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C78A8);
  }

  return result;
}

unint64_t sub_1C4DCEDAC()
{
  result = qword_1EC0C78C0;
  if (!qword_1EC0C78C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C78C0);
  }

  return result;
}

uint64_t sub_1C4DCEE00(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C77F0, "^$\a");
    sub_1C44CD430(a2, type metadata accessor for INGroupStructs.Person);
    sub_1C440A9B8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4DCEE98()
{
  result = qword_1EC0C78E8;
  if (!qword_1EC0C78E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C78E8);
  }

  return result;
}

uint64_t sub_1C4DCEEEC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C77F8, "X$\a");
    sub_1C44CD430(a2, type metadata accessor for INGroupStructs.AddressRelationshipType);
    sub_1C440A9B8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4DCEF84()
{
  result = qword_1EC0C7910;
  if (!qword_1EC0C7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7910);
  }

  return result;
}

unint64_t sub_1C4DCEFD8()
{
  result = qword_1EC0C7928;
  if (!qword_1EC0C7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7928);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for INGroupStructs.SoftwareRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for INGroupStructs.Software.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for INGroupStructs.Person.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for INGroupStructs.GroupRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for INGroupStructs.GroupOfHumans.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for INGroupStructs.AddressRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for INGroupStructs.IdentifierRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4DCF634()
{
  result = qword_1EC0C7938;
  if (!qword_1EC0C7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7938);
  }

  return result;
}

unint64_t sub_1C4DCF68C()
{
  result = qword_1EC0C7940;
  if (!qword_1EC0C7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7940);
  }

  return result;
}

unint64_t sub_1C4DCF6E4()
{
  result = qword_1EC0C7948;
  if (!qword_1EC0C7948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7948);
  }

  return result;
}

unint64_t sub_1C4DCF73C()
{
  result = qword_1EC0C7950;
  if (!qword_1EC0C7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7950);
  }

  return result;
}

unint64_t sub_1C4DCF794()
{
  result = qword_1EC0C7958;
  if (!qword_1EC0C7958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7958);
  }

  return result;
}

unint64_t sub_1C4DCF7EC()
{
  result = qword_1EC0C7960;
  if (!qword_1EC0C7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7960);
  }

  return result;
}

unint64_t sub_1C4DCF844()
{
  result = qword_1EC0C7968;
  if (!qword_1EC0C7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7968);
  }

  return result;
}

unint64_t sub_1C4DCF89C()
{
  result = qword_1EC0C7970;
  if (!qword_1EC0C7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7970);
  }

  return result;
}

unint64_t sub_1C4DCF8F4()
{
  result = qword_1EC0C7978;
  if (!qword_1EC0C7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7978);
  }

  return result;
}

unint64_t sub_1C4DCF94C()
{
  result = qword_1EC0C7980;
  if (!qword_1EC0C7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7980);
  }

  return result;
}

unint64_t sub_1C4DCF9A4()
{
  result = qword_1EC0C7988;
  if (!qword_1EC0C7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7988);
  }

  return result;
}

unint64_t sub_1C4DCF9FC()
{
  result = qword_1EC0C7990;
  if (!qword_1EC0C7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7990);
  }

  return result;
}

unint64_t sub_1C4DCFA54()
{
  result = qword_1EC0C7998;
  if (!qword_1EC0C7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7998);
  }

  return result;
}

unint64_t sub_1C4DCFAAC()
{
  result = qword_1EC0C79A0;
  if (!qword_1EC0C79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C79A0);
  }

  return result;
}

unint64_t sub_1C4DCFB04()
{
  result = qword_1EC0C79A8;
  if (!qword_1EC0C79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C79A8);
  }

  return result;
}

unint64_t sub_1C4DCFB5C()
{
  result = qword_1EC0C79B0;
  if (!qword_1EC0C79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C79B0);
  }

  return result;
}

unint64_t sub_1C4DCFBB4()
{
  result = qword_1EC0C79B8;
  if (!qword_1EC0C79B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C79B8);
  }

  return result;
}

unint64_t sub_1C4DCFC0C()
{
  result = qword_1EC0C79C0;
  if (!qword_1EC0C79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C79C0);
  }

  return result;
}

unint64_t sub_1C4DCFC64()
{
  result = qword_1EC0C79C8;
  if (!qword_1EC0C79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C79C8);
  }

  return result;
}

unint64_t sub_1C4DCFCBC()
{
  result = qword_1EC0C79D0;
  if (!qword_1EC0C79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C79D0);
  }

  return result;
}

unint64_t sub_1C4DCFD14()
{
  result = qword_1EC0C79D8;
  if (!qword_1EC0C79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C79D8);
  }

  return result;
}

uint64_t sub_1C4DCFD68@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_1C4F02618();
}

void sub_1C4DCFD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v164 = v25;
  v27 = v26;
  v28 = sub_1C4F00DD8();
  v29 = sub_1C43FCDF8(v28);
  v156 = v30;
  v157 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD2D8();
  v154 = v33;
  sub_1C43FBE44();
  v34 = sub_1C4F00DC8();
  v35 = sub_1C43FCDF8(v34);
  v158 = v36;
  v159 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBFDC();
  v153 = v39;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD230();
  v155 = v41;
  sub_1C43FBE44();
  v42 = sub_1C4F01188();
  v43 = sub_1C43FCDF8(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v46 = sub_1C4EFD548();
  v47 = sub_1C43FCDF8(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBFDC();
  v149 = v52;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C440D100();
  v54 = sub_1C4EFF0C8();
  v55 = sub_1C43FCDF8(v54);
  v150 = v56;
  v151 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FD230();
  v146 = v60;
  v61 = sub_1C43FBE44();
  v62 = type metadata accessor for INPersonStructs.Person(v61);
  v63 = v62[5];
  sub_1C4EFEEF8();
  v148 = v63;
  sub_1C43FCF64();
  v152 = v64;
  sub_1C440BAA8(v65, v66, v67, v64);
  v68 = v62[6];
  sub_1C4EFD4C8();
  v69 = (v27 + v62[7]);
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520();
  }

  v70 = type metadata accessor for Source();
  sub_1C442B738(v70, qword_1EDDFD0D8);
  sub_1C441ACA0();
  sub_1C448D468(v71, v69, v72);
  v145 = v62[8];
  sub_1C4EFE588();
  v73 = (v27 + v62[9]);
  *v73 = 0;
  v73[1] = 0;
  sub_1C449AF80(v62[10]);
  sub_1C4EFEBF8();
  v74 = (v27 + v62[11]);
  *v74 = 0;
  v74[1] = 0;
  v75 = v62[12];
  type metadata accessor for INPersonStructs.SoftwareRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v76, v77, v78, v79);
  v80 = v62[13];
  type metadata accessor for INPersonStructs.IdentifierRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v81, v82, v83, v84);
  *(v27 + v62[14]) = 0;
  v85 = v62[15];
  type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v86, v87, v88, v89);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v90 = sub_1C4F00978();
  sub_1C442B738(v90, qword_1EDE2DE10);
  v144 = *(v49 + 16);
  v144(v20, v27 + v68, v46);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v91 = sub_1C4F00968();
  v92 = sub_1C4F01CB8();

  v160 = v68;
  v161 = v46;
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    *v93 = 136381187;
    *(v93 + 4) = sub_1C441D828(v164, v24, &v162);
    *(v93 + 12) = 2080;
    sub_1C4420B18();
    sub_1C44CD478(v94, v95);
    v143 = v92;
    sub_1C4F02858();
    v96 = sub_1C4466E54();
    (v49)(v96);
    v97 = sub_1C440A9B8();
    v100 = sub_1C441D828(v97, v98, v99);

    *(v93 + 14) = v100;
    v101 = v164;
    *(v93 + 22) = 1024;
    *(v93 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v91, v143, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v93, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v102 = sub_1C4466E54();
    (v49)(v102);
    v101 = v164;
  }

  v103 = *v69;
  v104 = v69[1];
  v162 = v101;
  v163 = v24;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v103, v104);

  v105 = v162;
  v106 = v163;
  sub_1C4F01178();
  sub_1C4F01148();
  v108 = v107;
  v109 = sub_1C44018C0();
  v110(v109);
  if (v108 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v111 = sub_1C4F00968();
    v112 = sub_1C4F01CD8();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = v69;
      v114 = swift_slowAlloc();
      v115 = v49;
      v116 = swift_slowAlloc();
      v162 = v116;
      *v114 = 136380675;
      v117 = sub_1C441D828(v105, v106, &v162);

      *(v114 + 4) = v117;
      _os_log_impl(&dword_1C43F8000, v111, v112, "Source: failed to encode identifier as UTF8 data: %{private}s", v114, 0xCu);
      sub_1C440962C(v116);
      v49 = v115;
      sub_1C43FBE2C();
      v69 = v113;
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C45CF650();
    sub_1C43FFB2C();
    *v129 = 5;
    swift_willThrow();
    sub_1C4420C3C(v27 + v148, &qword_1EC0B9A08, &unk_1C4F107B0);
    (v49)(v27 + v160, v161);
    sub_1C4430514();
    sub_1C4DD9A2C(v69, v130);
    v131 = *(*(v152 - 8) + 8);
    v132 = sub_1C4429108(&a16);
    v131(v132, v152);
    v133 = sub_1C4429108(&a15);
    v131(v133, v152);
    v134 = sub_1C4429108(&a14);
    sub_1C4420C3C(v134, v135, v136);
    v137 = sub_1C4429108(&a13);
    sub_1C4420C3C(v137, v138, v139);
    v140 = sub_1C4429108(&a12);
    sub_1C4420C3C(v140, v141, v142);
  }

  else
  {

    sub_1C441B22C();
    sub_1C44CD478(v118, v119);
    sub_1C44158DC();
    sub_1C4F00DB8();
    v120 = sub_1C4404DC8();
    sub_1C44344B8(v120, v121);
    v122 = sub_1C4404DC8();
    sub_1C4498FD8(v122, v123);
    v124 = sub_1C4404DC8();
    sub_1C441DFEC(v124, v125);
    sub_1C44158DC();
    sub_1C4F00DA8();
    (*(v156 + 8))(v154, v157);
    v144(v149, v27 + v160, v46);
    (*(v158 + 16))(v153, v155, v159);
    sub_1C4EFF028();
    v126 = sub_1C4404DC8();
    sub_1C441DFEC(v126, v127);
    (*(v158 + 8))(v155, v159);
    v128 = *(v150 + 32);
    v128(v146, v147, v151);
    v128(v27, v146, v151);
  }

  sub_1C43FBC80();
}

void sub_1C4DD0708()
{
  sub_1C43FE96C();
  v130 = v0;
  v140 = v1;
  v138 = v2;
  v4 = v3;
  v5 = sub_1C4F00DD8();
  v6 = sub_1C43FCDF8(v5);
  v131 = v7;
  v132 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  v127 = v10;
  sub_1C43FBE44();
  v11 = sub_1C4F00DC8();
  v12 = sub_1C43FCDF8(v11);
  v133 = v13;
  v134 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v126 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  v128 = v18;
  sub_1C43FBE44();
  v19 = sub_1C4F01188();
  v20 = sub_1C43FCDF8(v19);
  v136 = v21;
  v137 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD2D8();
  v135 = v24;
  sub_1C43FBE44();
  v144 = sub_1C4EFD548();
  v25 = sub_1C43FCDF8(v144);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBFDC();
  v123 = v30;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v113 - v32;
  v34 = sub_1C4EFF0C8();
  v35 = sub_1C43FCDF8(v34);
  v124 = v36;
  v125 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD230();
  v120 = v40;
  v41 = sub_1C43FBE44();
  v42 = type metadata accessor for INPersonStructs.Software(v41);
  v43 = v42[5];
  v44 = sub_1C4EFEEF8();
  v122 = v43;
  sub_1C43FCF64();
  sub_1C440BAA8(v45, v46, v47, v44);
  v48 = v42[6];
  sub_1C4EFD538();
  v49 = v42[7];
  v141 = v4;
  v50 = (v4 + v49);
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520();
  }

  v51 = type metadata accessor for Source();
  sub_1C442B738(v51, qword_1EDDFD0D8);
  sub_1C441ACA0();
  sub_1C448D468(v52, v50, v53);
  v54 = v141;
  sub_1C449AF80(v42[8]);
  sub_1C4EFE778();
  v55 = (v54 + v42[9]);
  *v55 = 0;
  v55[1] = 0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v56 = sub_1C4F00978();
  v57 = sub_1C442B738(v56, qword_1EDE2DE10);
  v58 = *(v27 + 16);
  v118 = v27 + 16;
  v117 = v58;
  v58(v33, v141 + v48, v144);
  v59 = v140;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v115 = v57;
  v60 = sub_1C4F00968();
  v61 = sub_1C4F01CB8();

  v62 = os_log_type_enabled(v60, v61);
  v139 = v48;
  v129 = v27;
  if (v62)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v114 = v50;
    v113 = v64;
    v142 = v64;
    *v63 = 136381187;
    v65 = v33;
    v66 = v27;
    v67 = v138;
    *(v63 + 4) = sub_1C441D828(v138, v59, &v142);
    *(v63 + 12) = 2080;
    sub_1C4420B18();
    sub_1C44CD478(v68, v69);
    v70 = sub_1C4F02858();
    v71 = v66;
    v73 = v72;
    v116 = *(v71 + 8);
    v116(v65, v144);
    v74 = sub_1C441D828(v70, v73, &v142);
    v59 = v140;

    *(v63 + 14) = v74;
    *(v63 + 22) = 1024;
    *(v63 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v60, v61, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v63, 0x1Cu);
    swift_arrayDestroy();
    v50 = v114;
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v116 = *(v27 + 8);
    v116(v33, v144);
    v67 = v138;
  }

  v75 = *v50;
  v76 = v50[1];
  v142 = v67;
  v143 = v59;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v75, v76);

  v77 = v142;
  v78 = v143;
  sub_1C4F01178();
  sub_1C4F01148();
  v80 = v79;
  v81 = sub_1C44018C0();
  v82(v81);
  if (v80 >> 60 == 15)
  {
    v83 = v50;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v84 = sub_1C4F00968();
    v85 = sub_1C4F01CD8();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v142 = v87;
      *v86 = 136380675;
      v88 = sub_1C441D828(v77, v78, &v142);

      *(v86 + 4) = v88;
      _os_log_impl(&dword_1C43F8000, v84, v85, "Source: failed to encode identifier as UTF8 data: %{private}s", v86, 0xCu);
      sub_1C440962C(v87);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C45CF650();
    sub_1C43FFB2C();
    *v110 = 5;
    swift_willThrow();
    v111 = v141;
    sub_1C4420C3C(v141 + v122, &qword_1EC0B9A08, &unk_1C4F107B0);
    v116((v111 + v139), v144);
    sub_1C4430514();
    sub_1C4DD9A2C(v83, v112);
    (*(*(v44 - 8) + 8))(v111 + v119, v44);
  }

  else
  {

    sub_1C441B22C();
    sub_1C44CD478(v89, v90);
    v91 = v127;
    v92 = v132;
    sub_1C44158DC();
    sub_1C4F00DB8();
    v93 = sub_1C440DE18();
    sub_1C44344B8(v93, v94);
    v95 = sub_1C440DE18();
    v96 = v130;
    sub_1C4498FD8(v95, v97);
    v140 = v96;
    v98 = sub_1C440DE18();
    sub_1C441DFEC(v98, v99);
    v100 = v128;
    sub_1C44158DC();
    sub_1C4F00DA8();
    (*(v131 + 8))(v91, v92);
    v101 = v141;
    v117(v123, v141 + v139, v144);
    v102 = v133;
    v103 = v134;
    (*(v133 + 16))(v126, v100, v134);
    v104 = v121;
    sub_1C44158DC();
    sub_1C4EFF028();
    v105 = sub_1C440DE18();
    sub_1C441DFEC(v105, v106);
    (*(v102 + 8))(v100, v103);
    v107 = v125;
    v108 = *(v124 + 32);
    v109 = v120;
    v108(v120, v104, v125);
    v108(v101, v109, v107);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DD0FE4(uint64_t a1)
{
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C44042B0();
  v10 = v2 + *(type metadata accessor for INPersonStructs.AddressRelationshipType(v9) + 60);
  sub_1C44D7768(a1, v10, &qword_1EC0BFA70, &unk_1C4F75520);
  v11 = type metadata accessor for INPersonStructs.Software(0);
  if (sub_1C4457A10(v11))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BFA70, &unk_1C4F75520);
  }

  sub_1C4EFE958();
  sub_1C4420C3C(a1, &qword_1EC0BFA70, &unk_1C4F75520);
  v13 = sub_1C4EFEEF8();
  sub_1C440CBF4(v13);
  return sub_1C444088C(v1, v10 + *(v3 + 20), &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t *(*sub_1C4DD10F4(void *a1))(uint64_t *result, char a2)
{
  *a1 = v1;
  v2 = *(type metadata accessor for INPersonStructs.Person(0) + 56);
  return sub_1C4DD1140;
}

uint64_t *sub_1C4DD1140(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    return sub_1C4DD8234();
  }

  return result;
}

uint64_t sub_1C4DD118C(uint64_t a1)
{
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C44042B0();
  v10 = v2 + *(type metadata accessor for INPersonStructs.SoftwareRelationshipType(v9) + 52);
  sub_1C44D7768(a1, v10, &qword_1EC0BFA70, &unk_1C4F75520);
  v11 = type metadata accessor for INPersonStructs.Software(0);
  if (sub_1C4457A10(v11))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BFA70, &unk_1C4F75520);
  }

  sub_1C4EFE958();
  sub_1C4420C3C(a1, &qword_1EC0BFA70, &unk_1C4F75520);
  v13 = sub_1C4EFEEF8();
  sub_1C440CBF4(v13);
  return sub_1C444088C(v1, v10 + *(v3 + 20), &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4DD129C(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C44042B0();
  v9 = *(type metadata accessor for INPersonStructs.Person(v8) + 52);
  sub_1C44D7768(a1, v2 + v9, &qword_1EC0BFA68, &qword_1C4F3BB38);
  v10 = type metadata accessor for INPersonStructs.IdentifierRelationshipType(0);
  if (sub_1C44157D4(v2 + v9, 1, v10))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BFA68, &qword_1C4F3BB38);
  }

  sub_1C4EFE308();
  sub_1C4420C3C(a1, &qword_1EC0BFA68, &qword_1C4F3BB38);
  v12 = sub_1C4EFEEF8();
  sub_1C440CBF4(v12);
  return sub_1C444088C(v1, v2 + v9, &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4DD13A8(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C44042B0();
  v9 = *(type metadata accessor for INPersonStructs.Person(v8) + 48);
  sub_1C44D7768(a1, v2 + v9, &qword_1EC0BFA60, &qword_1C4F3BB30);
  v10 = type metadata accessor for INPersonStructs.SoftwareRelationshipType(0);
  if (sub_1C44157D4(v2 + v9, 1, v10))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BFA60, &qword_1C4F3BB30);
  }

  sub_1C4EFE438();
  sub_1C4420C3C(a1, &qword_1EC0BFA60, &qword_1C4F3BB30);
  v12 = sub_1C4EFEEF8();
  sub_1C440CBF4(v12);
  return sub_1C444088C(v1, v2 + v9, &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C4DD14B4()
{
  sub_1C43FE628();
  v2 = v0;
  v4 = v3;
  v223 = v6;
  v224 = v5;
  v7 = sub_1C456902C(&qword_1EC0C79E0, &unk_1C4F75510);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBC74();
  v209 = v11;
  v12 = sub_1C43FBE44();
  v208 = type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType(v12);
  v13 = sub_1C43FBCE0(v208);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  v210 = v16;
  v17 = sub_1C43FBE44();
  v18 = type metadata accessor for INPersonStructs.AddressRelationshipType(v17);
  v222 = *(v18 - 8);
  v19 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = sub_1C456902C(&qword_1EC0BFA68, &qword_1C4F3BB38);
  sub_1C43FBD18(v23);
  v25 = *(v24 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBC74();
  v214 = v27;
  v28 = sub_1C43FBE44();
  v213 = type metadata accessor for INPersonStructs.IdentifierRelationshipType(v28);
  v29 = sub_1C43FBCE0(v213);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v32 = sub_1C456902C(&qword_1EC0BFA60, &qword_1C4F3BB30);
  sub_1C43FBD18(v32);
  v34 = *(v33 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBC74();
  v220 = v36;
  v37 = sub_1C43FBE44();
  v219 = type metadata accessor for INPersonStructs.SoftwareRelationshipType(v37);
  v38 = sub_1C43FBCE0(v219);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD2D8();
  v221 = v41;
  v42 = sub_1C43FBE44();
  v43 = type metadata accessor for EntityTriple(v42);
  v216 = sub_1C43FCDF8(v43);
  v217 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v216);
  sub_1C43FBFDC();
  v207 = v47;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  v215 = v49;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v206 - v51;
  LODWORD(v53) = *v4;
  v54 = MEMORY[0x1E69E7CC0];
  v229[0] = MEMORY[0x1E69E7CC0];
  v55 = type metadata accessor for INPersonStructs.Person(0);
  v56 = (v0 + v55[9]);
  v57 = v56[1];
  v218 = v55;
  if (!v57)
  {
    goto LABEL_5;
  }

  sub_1C43FF988(v56);
  if (!v58)
  {
    goto LABEL_5;
  }

  v59 = sub_1C44434E0();
  sub_1C43FCE50(v59);
  (*(v60 + 16))(v52, v2);
  v211 = v53;
  v53 = v2;
  v61 = v55[8];
  v62 = v216;
  v63 = *(v216 + 20);
  v64 = sub_1C4EFEEF8();
  sub_1C43FCE50(v64);
  v66 = &v52[v63];
  v67 = v223;
  (*(v65 + 16))(v66, v53 + v61);
  v68 = v55[7];
  v69 = v62[9];
  sub_1C441ACA0();
  v212 = v53;
  v71 = v53 + v70;
  LODWORD(v53) = v211;
  sub_1C448D468(v71, &v52[v72], v73);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v75 = v74;
  v76 = &v52[v62[6]];
  sub_1C4EFF888();
  v77 = &v52[v62[7]];
  sub_1C4EFEC38();
  sub_1C4425848(&v52[v62[8]]);
  v79 = &v52[v78];
  *v79 = v224;
  *(v79 + 1) = v67;
  *&v52[v62[11]] = v75;
  v52[v62[12]] = v53;
  v80 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v80, v81, v82, MEMORY[0x1E69E7CC0]);
  v54 = v83;
  v85 = *(v83 + 16);
  v84 = *(v83 + 24);
  v86 = (v85 + 1);
  if (v85 >= v84 >> 1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    *(v54 + 16) = v86;
    sub_1C43FBF6C();
    v88 = *(v87 + 72);
    sub_1C44083EC();
    sub_1C44DDA0C(v52, v89, v90);
    v229[0] = v54;
    v2 = v212;
    v55 = v218;
LABEL_5:
    v91 = (v2 + v55[11]);
    v92 = v221;
    if (v91[1])
    {
      sub_1C43FF988(v91);
      if (v93)
      {
        v94 = sub_1C44434E0();
        sub_1C43FCE50(v94);
        v96 = v53;
        v53 = v215;
        (*(v95 + 16))(v215, v2);
        v211 = v96;
        v212 = v55[10];
        v97 = v2;
        v98 = v216;
        v99 = *(v216 + 20);
        v100 = sub_1C4EFEEF8();
        sub_1C43FCE50(v100);
        v102 = v53 + v99;
        v103 = v223;
        (*(v101 + 16))(v102, v97 + v212);
        v104 = v55[7];
        v105 = v98[9];
        sub_1C441ACA0();
        v212 = v97;
        sub_1C448D468(v97 + v106, v53 + v107, v108);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v110 = v109;
        v111 = v53 + v98[6];
        sub_1C4EFF888();
        v112 = v53 + v98[7];
        sub_1C4EFEC38();
        sub_1C4425848((v53 + v98[8]));
        v114 = (v53 + v113);
        *v114 = v224;
        v114[1] = v103;
        v115 = v211;
        *(v53 + v98[11]) = v110;
        *(v53 + v98[12]) = v115;
        LOBYTE(v53) = v115;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v188 = *(v54 + 16);
          v189 = sub_1C43FCEC0();
          sub_1C44C9240(v189, v190, v191, v54);
          v54 = v192;
        }

        v117 = *(v54 + 16);
        v116 = *(v54 + 24);
        v55 = v218;
        v2 = v212;
        if (v117 >= v116 >> 1)
        {
          v193 = sub_1C43FFD98(v116);
          sub_1C44C9240(v193, v194, v195, v54);
          v54 = v196;
        }

        *(v54 + 16) = v117 + 1;
        sub_1C43FBF6C();
        v119 = *(v118 + 72);
        sub_1C44083EC();
        sub_1C44DDA0C(v215, v120, v121);
        v229[0] = v54;
        v92 = v221;
      }
    }

    v122 = v220;
    sub_1C445FFA8(v2 + v55[12], v220, &qword_1EC0BFA60, &qword_1C4F3BB30);
    v123 = sub_1C440EF74();
    sub_1C440175C(v123, v124, v219);
    if (v125)
    {
      sub_1C4420C3C(v122, &qword_1EC0BFA60, &qword_1C4F3BB30);
    }

    else
    {
      sub_1C44DDA0C(v122, v92, type metadata accessor for INPersonStructs.SoftwareRelationshipType);
      v225 = v53;
      sub_1C4DD2BE0();
      if (v1)
      {
        sub_1C4433B00();
        sub_1C4DD9A2C(v92, v127);
LABEL_38:

        goto LABEL_39;
      }

      sub_1C49D3614(v126);
      sub_1C4433B00();
      sub_1C4DD9A2C(v92, v128);
    }

    v86 = v214;
    sub_1C445FFA8(v2 + v55[13], v214, &qword_1EC0BFA68, &qword_1C4F3BB38);
    v129 = sub_1C440EF74();
    sub_1C440175C(v129, v130, v213);
    if (v125)
    {
      sub_1C4420C3C(v86, &qword_1EC0BFA68, &qword_1C4F3BB38);
    }

    else
    {
      v131 = sub_1C440A9B8();
      sub_1C44DDA0C(v131, v132, v133);
      v226 = v53;
      sub_1C4DD441C();
      if (v1)
      {
        v135 = sub_1C441523C();
LABEL_37:
        sub_1C4DD9A2C(v135, v136);
        goto LABEL_38;
      }

      v86 = v229;
      sub_1C49D3614(v134);
      v137 = sub_1C441523C();
      sub_1C4DD9A2C(v137, v138);
    }

    v139 = *(v2 + v55[14]);
    if (!v139)
    {
      break;
    }

    v140 = v53;
    v53 = v2;
    v52 = 0;
    v141 = *(v139 + 16);
    while (1)
    {
      if (v141 == v52)
      {
        v2 = v53;
        LOBYTE(v53) = v140;
        v55 = v218;
        goto LABEL_31;
      }

      v84 = *(v139 + 16);
      if (v52 >= v84)
      {
        break;
      }

      sub_1C43FBF6C();
      v143 = *(v142 + 72);
      sub_1C445FF78();
      sub_1C448D468(v144, v22, v145);
      v227 = v140;
      sub_1C4DD54EC();
      if (v1)
      {
        sub_1C440DC44();
        v135 = v22;
        goto LABEL_37;
      }

      v54 = v146;
      ++v52;
      sub_1C440DC44();
      sub_1C4DD9A2C(v22, v147);
      v86 = v229;
      sub_1C49D3614(v54);
    }

    __break(1u);
LABEL_48:
    v184 = sub_1C43FFD98(v84);
    sub_1C44C9240(v184, v185, v186, v54);
    v54 = v187;
  }

LABEL_31:
  v148 = v209;
  sub_1C445FFA8(v2 + v55[15], v209, &qword_1EC0C79E0, &unk_1C4F75510);
  v149 = sub_1C440EF74();
  sub_1C440175C(v149, v150, v208);
  v151 = v210;
  if (v125)
  {
    sub_1C4420C3C(v148, &qword_1EC0C79E0, &unk_1C4F75510);
  }

  else
  {
    sub_1C44DDA0C(v148, v210, type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType);
    v228 = v53;
    sub_1C4DD6FC8();
    if (v1)
    {
      sub_1C4411638();
      v135 = v151;
      goto LABEL_37;
    }

    sub_1C49D3614(v152);
    sub_1C4411638();
    sub_1C4DD9A2C(v151, v153);
  }

  v154 = v229[0];
  if (*(v229[0] + 16))
  {
    v155 = sub_1C4EFF0C8();
    sub_1C43FCE50(v155);
    v157 = v55;
    v158 = v53;
    v159 = v207;
    (*(v156 + 16))(v207, v2);
    v160 = v216;
    v161 = v159 + *(v216 + 20);
    sub_1C4EFEBB8();
    v162 = v2 + v157[6];
    v163 = sub_1C4EFD2F8();
    v165 = v164;
    v166 = v157[7];
    v167 = v160[9];
    sub_1C441ACA0();
    sub_1C448D468(v2 + v168, v159 + v169, v170);
    sub_1C4EF9AE8();
    v172 = v171;
    v173 = v159 + v160[6];
    sub_1C4EFF888();
    v174 = v159 + v160[7];
    sub_1C4EFEC38();
    v175 = (v159 + v160[8]);
    *v175 = v163;
    v175[1] = v165;
    v176 = (v159 + v160[10]);
    v177 = v223;
    *v176 = v224;
    v176[1] = v177;
    *(v159 + v160[11]) = v172;
    *(v159 + v160[12]) = v158;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v197 = *(v154 + 16);
      v198 = sub_1C43FCEC0();
      sub_1C44C9240(v198, v199, v200, v154);
      v154 = v201;
    }

    v179 = *(v154 + 16);
    v178 = *(v154 + 24);
    if (v179 >= v178 >> 1)
    {
      v202 = sub_1C43FFD98(v178);
      sub_1C44C9240(v202, v203, v204, v154);
      v154 = v205;
    }

    *(v154 + 16) = v179 + 1;
    sub_1C43FBF6C();
    v181 = *(v180 + 72);
    sub_1C44083EC();
    sub_1C44DDA0C(v207, v182, v183);
  }

LABEL_39:
  sub_1C44109F8();
}

void sub_1C4DD1EAC()
{
  sub_1C43FE628();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v93 = v7;
  v8 = type metadata accessor for EntityTriple(0);
  v9 = sub_1C43FCDF8(v8);
  v94 = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v89 - v16;
  v92 = *v4;
  v18 = type metadata accessor for INPersonStructs.Software(0);
  v19 = (v2 + v18[9]);
  v20 = v19[1];
  if (!v20)
  {
    goto LABEL_8;
  }

  v21 = *v19;
  v22 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v90 = v21;
    v91 = v1;
    v23 = sub_1C4EFF0C8();
    sub_1C43FCE50(v23);
    (*(v24 + 16))(v17, v2);
    v25 = v6;
    v26 = v18[8];
    v27 = v8[5];
    v28 = sub_1C4EFEEF8();
    sub_1C43FCE50(v28);
    (*(v29 + 16))(&v17[v27], v2 + v26);
    v30 = v18[7];
    v31 = v8[9];
    sub_1C441ACA0();
    sub_1C448D468(v2 + v32, &v17[v33], v34);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    v36 = v35;
    v37 = &v17[v8[6]];
    sub_1C4EFF888();
    v38 = &v17[v8[7]];
    sub_1C4EFEC38();
    v39 = &v17[v8[8]];
    *v39 = v90;
    *(v39 + 1) = v20;
    v40 = &v17[v8[10]];
    *v40 = v93;
    *(v40 + 1) = v25;
    *&v17[v8[11]] = v36;
    v17[v8[12]] = v92;
    v90 = v25;
    v41 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4401EC4(v41, v42, v43, MEMORY[0x1E69E7CC0]);
    v45 = v44;
    v47 = *(v44 + 16);
    v46 = *(v44 + 24);
    if (v47 >= v46 >> 1)
    {
      v87 = sub_1C43FCFE8(v46);
      sub_1C44C9240(v87, v47 + 1, 1, v45);
      v45 = v88;
    }

    *(v45 + 16) = v47 + 1;
    sub_1C43FBF6C();
    v49 = *(v48 + 72);
    sub_1C44083EC();
    sub_1C44DDA0C(v17, v50, v51);
    v6 = v90;
  }

  else
  {
LABEL_8:
    v45 = MEMORY[0x1E69E7CC0];
  }

  if (*(v45 + 16))
  {
    v52 = sub_1C4EFF0C8();
    sub_1C43FCE50(v52);
    (*(v53 + 16))(v15, v2);
    v54 = &v15[v8[5]];
    sub_1C4EFEBB8();
    v55 = v2 + v18[6];
    v56 = sub_1C4EFD2F8();
    v58 = v57;
    v59 = v18[7];
    v60 = v8[9];
    sub_1C441ACA0();
    sub_1C448D468(v2 + v61, &v15[v62], v63);
    sub_1C4EF9AE8();
    v65 = v64;
    v66 = &v15[v8[6]];
    sub_1C4EFF888();
    v67 = &v15[v8[7]];
    sub_1C4EFEC38();
    v68 = &v15[v8[8]];
    *v68 = v56;
    v68[1] = v58;
    v69 = &v15[v8[10]];
    *v69 = v93;
    *(v69 + 1) = v6;
    *&v15[v8[11]] = v65;
    v15[v8[12]] = v92;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = *(v45 + 16);
      v79 = sub_1C43FCEC0();
      sub_1C44C9240(v79, v80, v81, v45);
      v45 = v82;
    }

    v71 = *(v45 + 16);
    v70 = *(v45 + 24);
    sub_1C44019A4();
    if (v73)
    {
      v83 = sub_1C43FFD98(v72);
      sub_1C44C9240(v83, v84, v85, v45);
      v45 = v86;
    }

    *(v45 + 16) = v56;
    sub_1C43FBF6C();
    v75 = *(v74 + 72);
    sub_1C44083EC();
    sub_1C44DDA0C(v15, v76, v77);
  }

  sub_1C440EE0C();
  sub_1C44109F8();
}

unint64_t sub_1C4DD2250(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4DD2318()
{
  sub_1C43FE96C();
  v2 = v0;
  v3 = sub_1C456902C(&qword_1EC0C7AB8, &qword_1C4F758B0);
  sub_1C43FCDF8(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4DDA8BC();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C43FCD38();
  sub_1C44CD478(v7, v8);
  sub_1C43FC428();
  sub_1C4F027E8();
  if (!v1)
  {
    v9 = type metadata accessor for INPersonStructs.Software(0);
    v10 = v9[5];
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C442DB84();
    sub_1C44CD478(v11, v12);
    sub_1C4F02778();
    v13 = v9[6];
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C4420B18();
    sub_1C44CD478(v14, v15);
    sub_1C43FC428();
    sub_1C4F027E8();
    v16 = v9[7];
    type metadata accessor for Source();
    sub_1C440B95C();
    sub_1C44CD478(v17, v18);
    sub_1C43FC428();
    sub_1C4F027E8();
    v19 = v9[8];
    sub_1C4F027E8();
    v20 = (v2 + v9[9]);
    v21 = *v20;
    v22 = v20[1];
    sub_1C4F02738();
  }

  v23 = sub_1C440231C();
  v24(v23);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DD25B8()
{
  sub_1C43FE96C();
  v3 = v2;
  v54 = v4;
  v5 = sub_1C4EFEEF8();
  v6 = sub_1C43FCDF8(v5);
  v63 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  v55 = v10;
  v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBC74();
  v56 = v15;
  sub_1C43FBE44();
  v58 = sub_1C4EFF0C8();
  v16 = sub_1C43FCDF8(v58);
  v57 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v59 = sub_1C456902C(&qword_1EC0C7AA8, &qword_1C4F758A8);
  sub_1C43FCDF8(v59);
  v24 = *(v23 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  v26 = type metadata accessor for INPersonStructs.Software(0);
  v27 = sub_1C43FBCE0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v64 = *(v30 + 20);
  sub_1C43FCF64();
  v62 = v5;
  sub_1C440BAA8(v31, v32, v33, v5);
  v60 = v26[6];
  sub_1C4EFD538();
  v34 = v26[7];
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520();
  }

  v35 = type metadata accessor for Source();
  sub_1C442B738(v35, qword_1EDDFD0D8);
  sub_1C441ACA0();
  v61 = v34;
  sub_1C448D468(v36, v1 + v34, v37);
  v38 = v26[8];
  sub_1C4EFE778();
  v39 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4DDA8BC();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v3);
    sub_1C4420C3C(v1 + v64, &qword_1EC0B9A08, &unk_1C4F107B0);
    v42 = sub_1C4EFD548();
    sub_1C43FBCE0(v42);
    (*(v43 + 8))(v1 + v60);
    sub_1C4430514();
    sub_1C4DD9A2C(v1 + v61, v44);
    (*(v63 + 8))(v1 + v38, v62);
  }

  else
  {
    sub_1C43FCD38();
    sub_1C44CD478(v40, v41);
    sub_1C441B0B4();
    sub_1C4F026C8();
    (*(v57 + 32))(v1, v22, v58);
    sub_1C442DB84();
    sub_1C44CD478(v45, v46);
    sub_1C441B0B4();
    sub_1C4F02658();
    sub_1C444088C(v56, v1 + v64, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441B0B4();
    sub_1C4F026C8();
    (*(v63 + 40))(v1 + v38, v55, v62);
    sub_1C441B0B4();
    v47 = sub_1C4F02618();
    v49 = v48;
    v50 = (v1 + v26[9]);
    v51 = sub_1C4424864();
    v52(v51);
    *v50 = v47;
    v50[1] = v49;
    sub_1C448D468(v1, v54, type metadata accessor for INPersonStructs.Software);
    sub_1C440962C(v3);
    sub_1C4401544();
    sub_1C4DD9A2C(v1, v53);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DD2B20(uint64_t a1)
{
  v2 = sub_1C4DDA8BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DD2B5C(uint64_t a1)
{
  v2 = sub_1C4DDA8BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DD2BE0()
{
  sub_1C43FE628();
  v264 = v0;
  v6 = v5;
  v256 = v7;
  v260 = v8;
  v261 = v9;
  v254 = sub_1C4EFF0C8();
  v10 = sub_1C43FCDF8(v254);
  v257 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD2D8();
  sub_1C43FCE30(v14);
  v15 = sub_1C456902C(&qword_1EC0BFA70, &unk_1C4F75520);
  sub_1C43FBD18(v15);
  v17 = *(v16 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBC74();
  v246 = v19;
  v20 = sub_1C43FBE44();
  v249 = type metadata accessor for INPersonStructs.Software(v20);
  v21 = sub_1C43FBCE0(v249);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD2D8();
  v244 = v24;
  v25 = sub_1C43FBE44();
  v247 = type metadata accessor for EntityTriple(v25);
  v26 = sub_1C43FCDF8(v247);
  v255 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD230();
  v241 = v34;
  sub_1C43FBE44();
  v263 = sub_1C4EFD548();
  v35 = sub_1C43FCDF8(v263);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v262 = sub_1C4EFF8A8();
  v38 = sub_1C43FCDF8(v262);
  v258 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v234 - v43;
  v45 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v46 = sub_1C43FBD18(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C4402CA8();
  v50 = sub_1C4EFEEF8();
  v51 = sub_1C43FCDF8(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C440D100();
  v259 = *v6;
  v57 = v264;
  v59 = v58;
  sub_1C445FFA8(v264, v2, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v2, 1, v59);
  if (v60)
  {
    sub_1C4420C3C(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v61 = sub_1C43FFB2C();
    sub_1C4414040(v61, v62);
LABEL_36:
    sub_1C44103B4();
    sub_1C44109F8();
    return;
  }

  v63 = *(v53 + 32);
  v251 = v4;
  v252 = v59;
  sub_1C445BE6C(v53 + 32);
  v64();
  v65 = type metadata accessor for INPersonStructs.SoftwareRelationshipType(0);
  sub_1C4425834(v65);
  v66 = v57;
  v68(v3, v57 + v67, v263);
  v253 = v44;
  sub_1C4EFF838();
  v69 = MEMORY[0x1E69E7CC0];
  v266 = MEMORY[0x1E69E7CC0];
  v263 = v65;
  v70 = (v66 + v65[8]);
  v71 = v70[1];
  v72 = v66;
  v250 = v53;
  if (v71)
  {
    sub_1C44026DC(v70);
    v73 = v258;
    v74 = v247;
    if (v75)
    {
      v4 = v241;
      (*(v257 + 16))(v241, v256, v254);
      v76 = *(v53 + 16);
      (v76)(v4 + v74[5], v251, v252);
      v77 = sub_1C44417E0();
      v78(v77);
      v79 = v263;
      v80 = v74[7];
      sub_1C443E094(v263[7]);
      v76();
      v72 = v264;
      v81 = v79[6];
      v82 = v74[9];
      sub_1C441ACA0();
      sub_1C448D468(v72 + v83, v4 + v84, v85);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v86 = (v4 + v74[8]);
      *v86 = v66;
      v86[1] = v71;
      v87 = (v4 + v74[10]);
      v88 = v261;
      *v87 = v260;
      v87[1] = v88;
      sub_1C4471D74(v89);
      v90 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v90, v91, v92, MEMORY[0x1E69E7CC0]);
      v69 = v93;
      v66 = *(v93 + 16);
      v94 = *(v93 + 24);
      sub_1C44019A4();
      if (v96)
      {
        v203 = sub_1C43FFD98(v95);
        sub_1C44C9240(v203, v204, v205, v69);
        v69 = v206;
      }

      *(v69 + 16) = v71;
      sub_1C43FBF6C();
      sub_1C445C2FC();
      sub_1C44083EC();
      sub_1C44DDA0C(v4, v97, v98);
      v266 = v69;
      v53 = v250;
    }
  }

  else
  {
    v73 = v258;
    v74 = v247;
  }

  sub_1C441406C(v263[10]);
  if (v71)
  {
    sub_1C44026DC(v99);
    if (v100)
    {
      v101 = v73;
      v102 = v242;
      (*(v257 + 16))(v242, v256, v254);
      v103 = sub_1C44181C8();
      (v4)(v103);
      (*(v101 + 16))(v102 + v74[6], v253, v262);
      v104 = v263;
      v105 = v74[7];
      sub_1C443E094(v263[9]);
      v4();
      v72 = v264;
      v106 = v104[6];
      v107 = v74[9];
      sub_1C441ACA0();
      sub_1C4475B74(v108, v109);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v110 = (v102 + v74[8]);
      *v110 = v66;
      v110[1] = v71;
      sub_1C444AECC(v111);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v207 = *(v69 + 16);
        v208 = sub_1C43FCEC0();
        sub_1C44C9240(v208, v209, v210, v69);
        v69 = v211;
      }

      sub_1C4414F38();
      v53 = v250;
      v73 = v258;
      if (v96)
      {
        v212 = sub_1C43FFD98(v112);
        sub_1C44C9240(v212, v213, v214, v69);
        v69 = v215;
      }

      *(v69 + 16) = v71;
      sub_1C43FBF6C();
      sub_1C445C2FC();
      sub_1C44083EC();
      sub_1C44DDA0C(v242, v113, v114);
      v266 = v69;
    }
  }

  sub_1C441406C(v263[12]);
  if (v71)
  {
    sub_1C43FF988(v115);
    if (v117)
    {
      v118 = *(v257 + 16);
      v119 = v73;
      v120 = v243;
      v247 = v116;
      v118(v243, v256, v254);
      v121 = sub_1C44181C8();
      (v4)(v121);
      v122 = v263;
      (*(v119 + 16))(v120 + v74[6], v253, v262);
      v123 = v74[7];
      sub_1C443E094(v122[11]);
      v4();
      v72 = v264;
      v124 = v122[6];
      v125 = v74[9];
      sub_1C441ACA0();
      sub_1C4475B74(v126, v127);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v128 = (v120 + v74[8]);
      *v128 = v247;
      v128[1] = v71;
      sub_1C444AECC(v129);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v216 = *(v69 + 16);
        v217 = sub_1C43FCEC0();
        sub_1C44C9240(v217, v218, v219, v69);
        v69 = v220;
      }

      sub_1C4414F38();
      v53 = v250;
      v73 = v258;
      if (v96)
      {
        v221 = sub_1C43FFD98(v130);
        sub_1C44C9240(v221, v222, v223, v69);
        v69 = v224;
      }

      *(v69 + 16) = v71;
      sub_1C43FBF6C();
      sub_1C445C2FC();
      sub_1C44083EC();
      sub_1C44DDA0C(v243, v131, v132);
      v266 = v69;
    }
  }

  v133 = v246;
  sub_1C445FFA8(v72 + v263[13], v246, &qword_1EC0BFA70, &unk_1C4F75520);
  v134 = sub_1C440EF74();
  sub_1C440175C(v134, v135, v249);
  v136 = v251;
  if (v60)
  {
    sub_1C4420C3C(v133, &qword_1EC0BFA70, &unk_1C4F75520);
LABEL_27:
    v138 = v260;
    v137 = v261;
    v139 = v262;
LABEL_28:
    if (*(v69 + 16))
    {
      v140 = v245;
      (*(v257 + 16))(v245, v256, v254);
      (*(v250 + 16))(v140 + v74[5], v136, v252);
      v141 = sub_1C44417E0();
      v142(v141);
      v143 = v140 + v74[7];
      sub_1C4EFEBB8();
      v144 = v264;
      v145 = sub_1C4EFD2F8();
      v147 = v146;
      v148 = v263[6];
      v149 = v74[9];
      sub_1C441ACA0();
      sub_1C448D468(v144 + v150, v140 + v151, v152);
      sub_1C4EF9AE8();
      v153 = (v140 + v74[8]);
      *v153 = v145;
      v153[1] = v147;
      v154 = (v140 + v74[10]);
      *v154 = v138;
      v154[1] = v137;
      sub_1C4471D74(v155);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = *(v69 + 16);
        v195 = sub_1C43FCEC0();
        sub_1C44C9240(v195, v196, v197, v69);
        v69 = v198;
      }

      v157 = *(v69 + 16);
      v156 = *(v69 + 24);
      v159 = v252;
      v158 = v253;
      v160 = v250;
      if (v157 >= v156 >> 1)
      {
        v199 = sub_1C43FF640(v156);
        sub_1C44C9240(v199, v200, v201, v69);
        v69 = v202;
      }

      (*(v258 + 8))(v158, v262);
      (*(v160 + 8))(v251, v159);
      *(v69 + 16) = v157 + 1;
      sub_1C43FBF6C();
      sub_1C445C2FC();
      sub_1C44083EC();
      sub_1C44DDA0C(v245, v161, v162);
    }

    else
    {
      (*(v73 + 8))(v253, v139);
      (*(v250 + 8))(v136, v252);
    }

    goto LABEL_36;
  }

  sub_1C44416B0();
  v163 = v133;
  v164 = v244;
  sub_1C44DDA0C(v163, v244, v165);
  v265 = v259;
  sub_1C4DD1EAC();
  if (v1)
  {
    sub_1C4401544();
    sub_1C4DD9A2C(v164, v167);
    (*(v73 + 8))(v253, v262);
    (*(v53 + 8))(v136, v252);

    goto LABEL_36;
  }

  if (!*(v166 + 16))
  {
    sub_1C4401544();
    sub_1C4DD9A2C(v244, v193);

    goto LABEL_27;
  }

  v168 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v168);
  v169 = v73;
  v170 = v254;
  (*(v257 + 16))(v239, v256, v254);
  v171 = v252;
  (*(v53 + 16))(v237, v136, v252);
  v172 = v262;
  (*(v169 + 16))(v238, v253, v262);
  v173 = v236;
  sub_1C445FFA8(v244 + *(v249 + 20), v236, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v173, 1, v171);
  if (!v60)
  {

    v174 = sub_1C4EFF048();
    v248 = v175;
    v249 = v174;
    v176 = v263[6];
    v177 = v74[9];
    sub_1C441ACA0();
    v180 = v240;
    sub_1C448D468(v179 + v178, v240 + v181, v182);
    sub_1C4EF9AE8();
    v184 = v183;
    (*(v257 + 32))(v180, v239, v170);
    v185 = v235;
    v235(v180 + v74[5], v237, v171);
    (*(v169 + 32))(v180 + v74[6], v238, v172);
    v185(v180 + v74[7], v173, v171);
    v186 = (v180 + v74[8]);
    v187 = v248;
    *v186 = v249;
    v186[1] = v187;
    v188 = (v180 + v74[10]);
    v73 = v169;
    v138 = v260;
    v137 = v261;
    *v188 = v260;
    v188[1] = v137;
    *(v180 + v74[11]) = v184;
    *(v180 + v74[12]) = v259;
    v69 = v266;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v225 = *(v69 + 16);
      v226 = sub_1C43FCEC0();
      sub_1C44C9240(v226, v227, v228, v69);
      v69 = v229;
    }

    sub_1C4414F38();
    if (v96)
    {
      v230 = sub_1C43FFD98(v189);
      sub_1C44C9240(v230, v231, v232, v69);
      v69 = v233;
    }

    sub_1C4401544();
    sub_1C4DD9A2C(v244, v190);
    *(v69 + 16) = v180;
    sub_1C43FBF6C();
    sub_1C445C2FC();
    sub_1C44083EC();
    sub_1C44DDA0C(v240, v191, v192);
    v139 = v262;
    v136 = v251;
    goto LABEL_28;
  }

  __break(1u);
}

unint64_t sub_1C4DD3964(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 6:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0x6550746E65746E69;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DD3AA0()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v2 = sub_1C456902C(&qword_1EC0C7AE8, &qword_1C4F758D0);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4DDA964();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB84();
  sub_1C44CD478(v6, v7);
  sub_1C4411620();
  sub_1C4F02778();
  if (!v0)
  {
    v21 = type metadata accessor for INPersonStructs.SoftwareRelationshipType(0);
    v8 = v21[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420B18();
    sub_1C44CD478(v9, v10);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v11 = v21[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C440B95C();
    sub_1C44CD478(v12, v13);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4401958(v21);
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C440C15C((v1 + v21[8]));
    sub_1C4F02738();
    sub_1C44169F0(v21);
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C447555C();
    sub_1C441BFB8((v1 + v14));
    sub_1C4F02738();
    v15 = v21[11];
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C440C204();
    v16 = v21[13];
    type metadata accessor for INPersonStructs.Software(0);
    sub_1C4426374();
    sub_1C44CD478(v17, v18);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F02778();
  }

  v19 = sub_1C440231C();
  v20(v19);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4DD3D60()
{
  sub_1C43FE96C();
  v2 = v1;
  v68 = v3;
  v4 = sub_1C456902C(&qword_1EC0BFA70, &unk_1C4F75520);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBC74();
  v69 = v8;
  sub_1C43FBE44();
  v9 = sub_1C4EFEEF8();
  v10 = sub_1C43FCDF8(v9);
  v72 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD230();
  v73 = v16;
  v17 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBC74();
  v74 = v21;
  v22 = sub_1C456902C(&qword_1EC0C7AD8, &qword_1C4F758C8);
  v76 = sub_1C43FCDF8(v22);
  v24 = *(v23 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBC74();
  v26 = sub_1C43FBE44();
  v27 = type metadata accessor for INPersonStructs.SoftwareRelationshipType(v26);
  v28 = sub_1C43FBCE0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v33 = v32 - v31;
  sub_1C43FCF64();
  v75 = v9;
  sub_1C44AE128(v34, v35, v36);
  sub_1C4EFD228();
  v37 = v27[6];
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520();
  }

  v38 = type metadata accessor for Source();
  sub_1C442B738(v38, qword_1EDDFD0D8);
  sub_1C441ACA0();
  sub_1C448D468(v39, v33 + v37, v40);
  v71 = v27[7];
  sub_1C4EFE558();
  v41 = (v33 + v27[8]);
  *v41 = 0;
  v41[1] = 0;
  v70 = v27[9];
  sub_1C4EFE658();
  v42 = (v33 + v27[10]);
  *v42 = 0;
  v42[1] = 0;
  v43 = v27[11];
  sub_1C4EFE678();
  v44 = (v33 + v27[12]);
  *v44 = 0;
  v44[1] = 0;
  v45 = v27[13];
  v46 = type metadata accessor for INPersonStructs.Software(0);
  v79 = v33;
  sub_1C43FCF64();
  sub_1C440BAA8(v47, v48, v49, v46);
  v50 = v2;
  v52 = v2[3];
  v51 = v2[4];
  v77 = v50;
  sub_1C4409678(v50, v52);
  sub_1C4DDA964();
  sub_1C4F02BC8();
  if (!v0)
  {
    v78 = v41;
    sub_1C442DB84();
    sub_1C44CD478(v53, v54);
    sub_1C4F02658();
    sub_1C444088C(v74, v79, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C4F026C8();
    v56 = *(v72 + 40);
    v56(v79 + v71, v73, v75);
    sub_1C4428F20();
    v57 = sub_1C4F02618();
    sub_1C44147E8(v57, v58, v78);
    sub_1C4471D8C();
    sub_1C4F026C8();
    v59 = sub_1C442F9F8(v70);
    (v56)(v59);
    sub_1C4402044();
    v60 = sub_1C4F02618();
    sub_1C440EEEC(v60, v61, v42);
    sub_1C4471D8C();
    sub_1C4F026C8();
    v62 = sub_1C442F9F8(v43);
    (v56)(v62);
    sub_1C4414078();
    *v44 = sub_1C4F02618();
    v44[1] = v63;
    sub_1C4426374();
    sub_1C44CD478(v64, v65);
    sub_1C4449458();
    sub_1C4F02658();
    v66 = sub_1C44018C0();
    v67(v66, v76);
    sub_1C444088C(v69, v79 + v45, &qword_1EC0BFA70, &unk_1C4F75520);
    sub_1C448D468(v79, v68, type metadata accessor for INPersonStructs.SoftwareRelationshipType);
  }

  sub_1C440962C(v77);
  sub_1C4433B00();
  sub_1C4DD9A2C(v79, v55);
  sub_1C43FBC80();
}

uint64_t sub_1C4DD435C(uint64_t a1)
{
  v2 = sub_1C4DDA964();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DD4398(uint64_t a1)
{
  v2 = sub_1C4DDA964();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DD441C()
{
  sub_1C43FE96C();
  v2 = v0;
  v160 = v3;
  v156 = v4;
  v158 = v5;
  v159 = v6;
  v157 = type metadata accessor for EntityTriple(0);
  v7 = sub_1C43FCDF8(v157);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v152 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v151 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD230();
  v150 = v14;
  sub_1C43FBE44();
  v154 = sub_1C4EFD548();
  v15 = sub_1C43FCDF8(v154);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v163 = sub_1C4EFF8A8();
  v23 = sub_1C43FCDF8(v163);
  v162 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v29 = v28 - v27;
  v30 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v30);
  v32 = *(v31 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C44058BC();
  v34 = sub_1C4EFEEF8();
  v35 = sub_1C43FCDF8(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  v42 = v41 - v40;
  v161 = *v160;
  sub_1C4440ED8();
  v44 = v43;
  sub_1C445FFA8(v45, v46, v47, v48);
  sub_1C440175C(v1, 1, v44);
  if (v49)
  {
    sub_1C4420C3C(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v50 = sub_1C43FFB2C();
    sub_1C4414040(v50, v51);
  }

  else
  {
    v52 = *(v37 + 32);
    v53 = sub_1C440A9B8();
    v54(v53);
    v55 = type metadata accessor for INPersonStructs.IdentifierRelationshipType(0);
    (*(v17 + 16))(v22, v2 + *(v55 + 20), v154);
    sub_1C4EFF838();
    v153 = v2;
    v155 = v55;
    v56 = (v2 + *(v55 + 32));
    v57 = v56[1];
    v58 = v29;
    v149 = v29;
    v59 = v37;
    if (!v57)
    {
      goto LABEL_11;
    }

    v60 = *v56;
    v61 = HIBYTE(v57) & 0xF;
    if ((v57 & 0x2000000000000000) == 0)
    {
      v61 = v60 & 0xFFFFFFFFFFFFLL;
    }

    if (v61)
    {
      v62 = sub_1C4EFF0C8();
      sub_1C43FCE50(v62);
      (*(v63 + 16))(v150, v156);
      v64 = *(v37 + 16);
      v64(v150 + v157[5], v42, v44);
      (*(v162 + 16))(v150 + v157[6], v58, v163);
      v64(v150 + v157[7], v2 + v155[7], v44);
      v65 = v155[6];
      v66 = v157[9];
      sub_1C441ACA0();
      sub_1C448D468(v2 + v67, v150 + v68, v69);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v70 = (v150 + v157[8]);
      *v70 = v60;
      v70[1] = v57;
      sub_1C443E23C(v159, (v150 + v157[10]), v71);
      *(v150 + v72) = v161;
      v73 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v73, v74, v75, MEMORY[0x1E69E7CC0]);
      v77 = v76;
      v79 = *(v76 + 16);
      v78 = *(v76 + 24);
      if (v79 >= v78 >> 1)
      {
        v140 = sub_1C43FCFE8(v78);
        sub_1C44C9240(v140, v79 + 1, 1, v77);
        v77 = v141;
      }

      *(v77 + 16) = v79 + 1;
      sub_1C43FBF6C();
      v81 = *(v80 + 72);
      sub_1C44083EC();
      sub_1C44DDA0C(v150, v82, v83);
      v58 = v149;
    }

    else
    {
LABEL_11:
      v77 = MEMORY[0x1E69E7CC0];
    }

    v84 = (v2 + v155[10]);
    v85 = v84[1];
    if (!v85)
    {
      goto LABEL_21;
    }

    v86 = *v84;
    v87 = HIBYTE(v85) & 0xF;
    if ((v85 & 0x2000000000000000) == 0)
    {
      v87 = v86 & 0xFFFFFFFFFFFFLL;
    }

    if (v87)
    {
      v88 = sub_1C4EFF0C8();
      sub_1C43FCE50(v88);
      (*(v89 + 16))(v151, v156);
      v90 = *(v59 + 16);
      v90(v151 + v157[5]);
      (*(v162 + 16))(v151 + v157[6], v58, v163);
      (v90)(v151 + v157[7], v153 + v155[9], v44);
      v2 = v153;
      v91 = v155[6];
      v92 = v157[9];
      sub_1C441ACA0();
      sub_1C448D468(v153 + v93, v151 + v94, v95);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v96 = (v151 + v157[8]);
      *v96 = v86;
      v96[1] = v85;
      v97 = (v151 + v157[10]);
      *v97 = v158;
      v97[1] = v159;
      *(v151 + v157[11]) = v98;
      *(v151 + v157[12]) = v161;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v142 = *(v77 + 16);
        v143 = sub_1C43FCEC0();
        sub_1C44C9240(v143, v144, v145, v77);
        v77 = v146;
      }

      v100 = *(v77 + 16);
      v99 = *(v77 + 24);
      v101 = v152;
      if (v100 >= v99 >> 1)
      {
        v147 = sub_1C43FCFE8(v99);
        sub_1C44C9240(v147, v100 + 1, 1, v77);
        v77 = v148;
      }

      *(v77 + 16) = v100 + 1;
      sub_1C43FBF6C();
      v103 = *(v102 + 72);
      sub_1C44083EC();
      sub_1C44DDA0C(v151, v104, v105);
      v58 = v149;
    }

    else
    {
LABEL_21:
      v101 = v152;
    }

    if (*(v77 + 16))
    {
      v106 = sub_1C4EFF0C8();
      sub_1C43FCE50(v106);
      (*(v107 + 16))(v101, v156);
      v108 = v42;
      (*(v59 + 16))(v101 + v157[5], v42, v44);
      (*(v162 + 16))(v101 + v157[6], v58, v163);
      v109 = v101 + v157[7];
      sub_1C4EFEBB8();
      v110 = sub_1C4EFD2F8();
      v112 = v111;
      v113 = v155[6];
      v114 = v157[9];
      sub_1C441ACA0();
      sub_1C448D468(v2 + v115, v101 + v116, v117);
      sub_1C4EF9AE8();
      v118 = (v101 + v157[8]);
      *v118 = v110;
      v118[1] = v112;
      v119 = (v101 + v157[10]);
      *v119 = v158;
      v119[1] = v159;
      *(v101 + v157[11]) = v120;
      *(v101 + v157[12]) = v161;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v131 = *(v77 + 16);
        v132 = sub_1C43FCEC0();
        sub_1C44C9240(v132, v133, v134, v77);
        v77 = v135;
      }

      v122 = *(v77 + 16);
      v121 = *(v77 + 24);
      sub_1C44019A4();
      if (v124)
      {
        v136 = sub_1C43FFD98(v123);
        sub_1C44C9240(v136, v137, v138, v77);
        v77 = v139;
      }

      sub_1C4449474();
      v125(v149, v163);
      (*(v59 + 8))(v108, v44);
      *(v77 + 16) = v110;
      sub_1C43FBF6C();
      v127 = *(v126 + 72);
      sub_1C44083EC();
      sub_1C44DDA0C(v101, v128, v129);
    }

    else
    {
      sub_1C4449474();
      v130(v58, v163);
      (*(v59 + 8))(v42, v44);
    }
  }

  sub_1C43FBC80();
}

unint64_t sub_1C4DD4C88(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 6:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DD4D6C()
{
  sub_1C43FE96C();
  v2 = sub_1C456902C(&qword_1EC0C7AD0, &qword_1C4F758C0);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4DDA910();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB84();
  sub_1C44CD478(v6, v7);
  sub_1C4405570();
  sub_1C4F02778();
  if (!v1)
  {
    v16 = type metadata accessor for INPersonStructs.IdentifierRelationshipType(0);
    v8 = v16[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420B18();
    sub_1C44CD478(v9, v10);
    sub_1C43FC428();
    sub_1C4F027E8();
    v11 = v16[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C440B95C();
    sub_1C44CD478(v12, v13);
    sub_1C43FC428();
    sub_1C4F027E8();
    sub_1C4401958(v16);
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C440C15C((v0 + v16[8]));
    sub_1C4F02738();
    sub_1C44169F0(v16);
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C441BFB8((v0 + v16[10]));
    sub_1C4F02738();
  }

  v14 = sub_1C440231C();
  v15(v14);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DD4FC8()
{
  sub_1C43FE96C();
  v3 = v2;
  v53 = v4;
  v5 = sub_1C4EFEEF8();
  v6 = sub_1C43FCDF8(v5);
  v55 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  v54 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v56 = v12;
  v13 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBC74();
  v57 = v17;
  v18 = sub_1C456902C(&qword_1EC0C7AC0, &qword_1C4F758B8);
  v19 = sub_1C43FCDF8(v18);
  v59 = v20;
  v60 = v19;
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBC74();
  v61 = v24;
  v25 = sub_1C43FBE44();
  v26 = type metadata accessor for INPersonStructs.IdentifierRelationshipType(v25);
  v27 = sub_1C43FBCE0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C43FCF64();
  v58 = v5;
  sub_1C44AE128(v30, v31, v32);
  sub_1C4EFD258();
  v33 = v26[6];
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520();
  }

  v34 = type metadata accessor for Source();
  sub_1C442B738(v34, qword_1EDDFD0D8);
  sub_1C441ACA0();
  sub_1C448D468(v35, v1 + v33, v36);
  v37 = v26[7];
  sub_1C4EFE558();
  v38 = (v1 + v26[8]);
  *v38 = 0;
  v38[1] = 0;
  v39 = v26[9];
  sub_1C4EFE658();
  v40 = (v1 + v26[10]);
  *v40 = 0;
  v40[1] = 0;
  v41 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4DDA910();
  sub_1C4F02BC8();
  if (!v0)
  {
    v52 = v38;
    sub_1C442DB84();
    sub_1C44CD478(v42, v43);
    sub_1C44147D8();
    sub_1C4F02658();
    sub_1C444088C(v57, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C44147D8();
    sub_1C4F026C8();
    v44 = *(v55 + 40);
    v44(v1 + v37, v56, v58);
    sub_1C4428F20();
    v45 = sub_1C4F02618();
    sub_1C44147E8(v45, v46, v52);
    sub_1C44147D8();
    sub_1C4F026C8();
    v44(v1 + v39, v54, v58);
    sub_1C4402044();
    v49 = sub_1C4F02618();
    v51 = v50;
    (*(v59 + 8))(v61, v60);
    *v40 = v49;
    v40[1] = v51;
    sub_1C448D468(v1, v53, type metadata accessor for INPersonStructs.IdentifierRelationshipType);
  }

  sub_1C440962C(v3);
  v47 = sub_1C441523C();
  sub_1C4DD9A2C(v47, v48);
  sub_1C43FBC80();
}

uint64_t sub_1C4DD542C(uint64_t a1)
{
  v2 = sub_1C4DDA910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DD5468(uint64_t a1)
{
  v2 = sub_1C4DDA910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DD54EC()
{
  sub_1C43FE628();
  v299 = v1;
  v312 = v0;
  v5 = v4;
  v303 = v6;
  v306 = v8;
  v307 = v7;
  v305 = sub_1C4EFF0C8();
  v9 = sub_1C43FCDF8(v305);
  v309 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD2D8();
  sub_1C43FCE30(v13);
  v14 = sub_1C456902C(&qword_1EC0BFA70, &unk_1C4F75520);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  v295 = v18;
  v19 = sub_1C43FBE44();
  v298 = type metadata accessor for INPersonStructs.Software(v19);
  v20 = sub_1C43FBCE0(v298);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD2D8();
  v294 = v23;
  v24 = sub_1C43FBE44();
  v296 = type metadata accessor for EntityTriple(v24);
  v25 = sub_1C43FCDF8(v296);
  v304 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD230();
  sub_1C449AF80(v34);
  sub_1C43FBE44();
  v302 = sub_1C4EFD548();
  v35 = sub_1C43FCDF8(v302);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  v40 = v39 - v38;
  v41 = sub_1C4EFF8A8();
  v42 = sub_1C43FCDF8(v41);
  v310 = v43;
  v311 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v281 - v47;
  v49 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v50 = sub_1C43FBD18(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C440D100();
  v54 = sub_1C4EFEEF8();
  v55 = sub_1C43FCDF8(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C4402CA8();
  v308 = *v5;
  v61 = v312;
  v63 = v62;
  sub_1C445FFA8(v312, v3, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v3, 1, v63);
  if (v64)
  {
    sub_1C4420C3C(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v65 = sub_1C43FFB2C();
    sub_1C4414040(v65, v66);
LABEL_49:
    sub_1C44109F8();
    return;
  }

  v67 = *(v57 + 32);
  v300 = v2;
  v301 = v63;
  sub_1C445BE6C(v57 + 32);
  v68();
  v69 = type metadata accessor for INPersonStructs.AddressRelationshipType(0);
  sub_1C4425834(v69);
  v71(v40, v61 + v70, v302);
  v302 = v48;
  sub_1C4EFF838();
  v72 = MEMORY[0x1E69E7CC0];
  v314 = MEMORY[0x1E69E7CC0];
  v73 = (v61 + v69[8]);
  v74 = v73[1];
  v75 = v61;
  v297 = v57;
  if (!v74)
  {
    v78 = v296;
LABEL_12:
    v92 = v308;
    goto LABEL_13;
  }

  v76 = *v73;
  v77 = HIBYTE(v74) & 0xF;
  if ((v74 & 0x2000000000000000) == 0)
  {
    v77 = v76 & 0xFFFFFFFFFFFFLL;
  }

  v78 = v296;
  if (!v77)
  {
    goto LABEL_12;
  }

  sub_1C442A800();
  v80 = v79;
  v81 = v290;
  v82(v290, v303, v305);
  v83 = *(v57 + 16);
  v84 = v301;
  v83(v81 + v78[5], v300, v301);
  (*(v310 + 16))(v81 + v78[6], v302, v311);
  v83(v81 + v78[7], v80 + v69[7], v84);
  v85 = v69[6];
  v86 = v78[9];
  sub_1C441ACA0();
  sub_1C448D468(v80 + v87, v81 + v88, v89);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v90 = (v81 + v78[8]);
  *v90 = v76;
  v90[1] = v74;
  sub_1C443E23C(v306, (v81 + v78[10]), v91);
  v92 = v308;
  *(v81 + v93) = v308;
  v94 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v94, v95, v96, MEMORY[0x1E69E7CC0]);
  v72 = v97;
  v99 = *(v97 + 16);
  v98 = *(v97 + 24);
  if (v99 >= v98 >> 1)
  {
    v243 = sub_1C43FCFE8(v98);
    sub_1C44C9240(v243, v99 + 1, 1, v72);
    v72 = v244;
  }

  *(v72 + 16) = v99 + 1;
  sub_1C43FFA54();
  sub_1C44083EC();
  sub_1C44DDA0C(v290, v100, v101);
  sub_1C441E100();
  v57 = v297;
LABEL_13:
  v102 = (v75 + v69[10]);
  v103 = v102[1];
  if (v103)
  {
    v104 = *v102;
    v105 = HIBYTE(v103) & 0xF;
    if ((v103 & 0x2000000000000000) == 0)
    {
      v105 = v104 & 0xFFFFFFFFFFFFLL;
    }

    if (v105)
    {
      sub_1C442A800();
      v107 = v106;
      v108 = sub_1C4414454();
      v290 = v109;
      v110(v108);
      v111 = *(v57 + 16);
      v112 = v301;
      v111(v69 + v78[5], v300, v301);
      v113 = sub_1C441B214();
      v114(v113);
      v115 = v112;
      v92 = v308;
      v111(v69 + v78[7], v107 + v69[9], v115);
      v296 = v69;
      v116 = v69[6];
      v117 = v78[9];
      sub_1C441ACA0();
      sub_1C448D468(v107 + v118, v69 + v119, v120);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v121 = (v69 + v78[8]);
      *v121 = v290;
      v121[1] = v103;
      v122 = (v69 + v78[10]);
      v123 = v306;
      *v122 = v307;
      v122[1] = v123;
      sub_1C4402070(v124);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v245 = sub_1C4405674();
        sub_1C44C9240(v245, v246, v247, v248);
        v72 = v249;
      }

      v126 = *(v72 + 16);
      v125 = *(v72 + 24);
      sub_1C44019A4();
      v69 = v296;
      v57 = v297;
      if (v128)
      {
        v250 = sub_1C43FFD98(v127);
        sub_1C44C9240(v250, v251, v252, v72);
        v72 = v253;
      }

      *(v72 + 16) = v103;
      sub_1C43FFA54();
      sub_1C44083EC();
      sub_1C44DDA0C(v291, v129, v130);
      sub_1C441E100();
    }
  }

  v131 = (v75 + v69[12]);
  v132 = v131[1];
  if (v132)
  {
    sub_1C44588B0(v131);
    if (v133)
    {
      sub_1C442A800();
      v135 = v134;
      v136 = sub_1C4414454();
      v291 = v137;
      v138(v136);
      v139 = sub_1C44417F8();
      v140 = v301;
      (v57)(v139, v300, v301);
      v141 = sub_1C441B214();
      v142(v141);
      (v57)(v69 + v78[7], v135 + v69[11], v140);
      v143 = v306;
      v296 = v69;
      v144 = v69[6];
      v145 = v78[9];
      sub_1C441ACA0();
      v147 = v135 + v146;
      v92 = v308;
      sub_1C448D468(v147, v69 + v148, v149);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v150 = (v69 + v78[8]);
      *v150 = v291;
      v150[1] = v132;
      v151 = (v69 + v78[10]);
      *v151 = v307;
      v151[1] = v143;
      sub_1C4402070(v152);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v254 = sub_1C4405674();
        sub_1C44C9240(v254, v255, v256, v257);
        v72 = v258;
      }

      sub_1C4402054();
      v69 = v296;
      v57 = v297;
      if (v128)
      {
        v259 = sub_1C43FF640(v153);
        sub_1C44C9240(v259, v260, v261, v72);
        v72 = v262;
      }

      *(v72 + 16) = v132;
      sub_1C43FFA54();
      sub_1C44083EC();
      sub_1C44DDA0C(v292, v154, v155);
      sub_1C441E100();
    }
  }

  v156 = (v75 + v69[14]);
  v157 = v156[1];
  if (v157)
  {
    sub_1C44588B0(v156);
    if (v158)
    {
      sub_1C442A800();
      v160 = v159;
      v161 = sub_1C4414454();
      v296 = v162;
      v163(v161);
      v164 = sub_1C44417F8();
      v165 = v301;
      (v57)(v164, v300, v301);
      v166 = sub_1C441B214();
      v167(v166);
      (v57)(v69 + v78[7], v160 + v69[13], v165);
      v168 = v306;
      v169 = v307;
      v170 = v69[6];
      v171 = v78[9];
      sub_1C441ACA0();
      v173 = v160 + v172;
      v92 = v308;
      sub_1C448D468(v173, v69 + v174, v175);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v176 = (v69 + v78[8]);
      *v176 = v296;
      v176[1] = v157;
      v177 = (v69 + v78[10]);
      *v177 = v169;
      v177[1] = v168;
      sub_1C4402070(v178);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v263 = sub_1C4405674();
        sub_1C44C9240(v263, v264, v265, v266);
        v72 = v267;
      }

      sub_1C4402054();
      v57 = v297;
      if (v128)
      {
        v268 = sub_1C43FF640(v179);
        sub_1C44C9240(v268, v269, v270, v72);
        v72 = v271;
      }

      *(v72 + 16) = v157;
      sub_1C43FFA54();
      sub_1C44083EC();
      sub_1C44DDA0C(v293, v180, v181);
      sub_1C441E100();
    }
  }

  v182 = v295;
  sub_1C445FFA8(v75 + v69[15], v295, &qword_1EC0BFA70, &unk_1C4F75520);
  sub_1C440175C(v182, 1, v298);
  if (v64)
  {
    sub_1C4420C3C(v182, &qword_1EC0BFA70, &unk_1C4F75520);
LABEL_39:
    v183 = v289;
LABEL_40:
    v184 = v310;
    v185 = v302;
    if (*(v72 + 16))
    {
      (*(v309 + 16))(v183, v303, v305);
      (*(v57 + 16))(v183 + v78[5], v300, v301);
      (*(v184 + 16))(v183 + v78[6], v185, v311);
      v186 = v183 + v78[7];
      sub_1C4EFEBB8();
      v187 = v312;
      v188 = sub_1C4EFD2F8();
      v190 = v189;
      v191 = v69[6];
      v192 = v78[9];
      sub_1C441ACA0();
      sub_1C448D468(v187 + v193, v183 + v194, v195);
      sub_1C4EF9AE8();
      v196 = (v183 + v78[8]);
      *v196 = v188;
      v196[1] = v190;
      sub_1C442F9E0();
      *(v183 + v197) = v198;
      *(v183 + v78[12]) = v308;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v234 = sub_1C4405674();
        sub_1C44C9240(v234, v235, v236, v237);
        v72 = v238;
      }

      sub_1C4402054();
      v200 = v297;
      if (v128)
      {
        v239 = sub_1C43FF640(v199);
        sub_1C44C9240(v239, v240, v241, v72);
        v72 = v242;
      }

      (*(v310 + 8))(v302, v311);
      (*(v200 + 8))(v300, v301);
      *(v72 + 16) = v188;
      sub_1C43FFA54();
      sub_1C44083EC();
      sub_1C44DDA0C(v183, v201, v202);
    }

    else
    {
      (*(v310 + 8))(v302, v311);
      (*(v57 + 8))(v300, v301);
    }

    goto LABEL_49;
  }

  sub_1C44416B0();
  v203 = v294;
  sub_1C44DDA0C(v182, v294, v204);
  v313 = v92;
  v205 = v299;
  sub_1C4DD1EAC();
  if (v205)
  {
    sub_1C4401544();
    sub_1C4DD9A2C(v203, v207);
    (*(v310 + 8))(v302, v311);
    (*(v57 + 8))(v300, v301);

    goto LABEL_49;
  }

  v208 = *(v206 + 16);
  v299 = 0;
  if (!v208)
  {
    sub_1C4401544();
    sub_1C4DD9A2C(v294, v233);

    goto LABEL_39;
  }

  v209 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v209);
  v210 = v309;
  (*(v309 + 16))(v287, v303, v305);
  v211 = *(v57 + 16);
  v212 = v301;
  v211(v285, v300, v301);
  (*(v310 + 16))(v286, v302, v311);
  v213 = v284;
  sub_1C445FFA8(v294 + *(v298 + 20), v284, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v213, 1, v212);
  if (!v64)
  {

    v306 = sub_1C4EFF048();
    v298 = v214;
    v215 = v69[6];
    v216 = v78[9];
    sub_1C441ACA0();
    v218 = v288;
    sub_1C448D468(v312 + v217, v288 + v219, v220);
    sub_1C4EF9AE8();
    v222 = v221;
    (*(v210 + 32))(v218, v287, v305);
    v223 = v283;
    v224 = v282;
    v282(v218 + v78[5], v285, v212);
    (*(v310 + 32))(v218 + v78[6], v286, v311);
    v224(v218 + v78[7], v213, v212);
    v225 = (v218 + v78[8]);
    v226 = v298;
    *v225 = v306;
    v225[1] = v226;
    sub_1C442F9E0();
    *(v218 + v227) = v222;
    *(v218 + v78[12]) = v308;
    v72 = v314;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v272 = sub_1C4405674();
      sub_1C44C9240(v272, v273, v274, v275);
      v72 = v276;
    }

    v183 = v289;
    v57 = v297;
    sub_1C4402054();
    if (v128)
    {
      v277 = sub_1C43FF640(v228);
      sub_1C44C9240(v277, v278, v279, v72);
      v72 = v280;
    }

    sub_1C4401544();
    sub_1C4DD9A2C(v229, v230);
    *(v72 + 16) = v223;
    sub_1C43FFA54();
    sub_1C44083EC();
    sub_1C44DDA0C(v288, v231, v232);
    goto LABEL_40;
  }

  __break(1u);
}

unint64_t sub_1C4DD63D0(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6464416C69616D65;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x4C746361746E6F63;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x6D754E656E6F6870;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0x486E776F6E6B6E75;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DD6558()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v2 = sub_1C456902C(&qword_1EC0C7AA0, &qword_1C4F758A0);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4DDA868();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB84();
  sub_1C44CD478(v6, v7);
  sub_1C4411620();
  sub_1C4F02778();
  if (!v0)
  {
    v25 = type metadata accessor for INPersonStructs.AddressRelationshipType(0);
    v8 = v25[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420B18();
    sub_1C44CD478(v9, v10);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v11 = v25[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C440B95C();
    sub_1C44CD478(v12, v13);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4401958(v25);
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C440C15C((v1 + v25[8]));
    sub_1C4F02738();
    sub_1C44169F0(v25);
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C447555C();
    sub_1C441BFB8((v1 + v14));
    sub_1C4F02738();
    v15 = v25[11];
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C440C204();
    v16 = v25[13];
    sub_1C4411620();
    sub_1C4F027E8();
    v17 = (v1 + v25[14]);
    v18 = *v17;
    v19 = v17[1];
    sub_1C442F54C();
    v20 = v25[15];
    type metadata accessor for INPersonStructs.Software(0);
    sub_1C4426374();
    sub_1C44CD478(v21, v22);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F02778();
  }

  v23 = sub_1C440231C();
  v24(v23);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4DD6868()
{
  sub_1C43FE96C();
  v2 = v1;
  v74 = v3;
  v4 = sub_1C456902C(&qword_1EC0BFA70, &unk_1C4F75520);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBC74();
  v75 = v8;
  sub_1C43FBE44();
  v9 = sub_1C4EFEEF8();
  v10 = sub_1C43FCDF8(v9);
  v80 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  v81 = v17;
  v18 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v18);
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBC74();
  v82 = v22;
  v84 = sub_1C456902C(&qword_1EC0C7A90, &qword_1C4F75898);
  sub_1C43FCDF8(v84);
  v24 = *(v23 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBC74();
  v26 = sub_1C43FBE44();
  v27 = type metadata accessor for INPersonStructs.AddressRelationshipType(v26);
  v28 = sub_1C43FBCE0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v33 = v32 - v31;
  sub_1C43FCF64();
  v83 = v9;
  sub_1C44AE128(v34, v35, v36);
  sub_1C4EFD1D8();
  v37 = v27[6];
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520();
  }

  v38 = type metadata accessor for Source();
  sub_1C442B738(v38, qword_1EDDFD0D8);
  sub_1C441ACA0();
  sub_1C448D468(v39, v33 + v37, v40);
  v79 = v27[7];
  sub_1C4EFE518();
  v41 = (v33 + v27[8]);
  *v41 = 0;
  v41[1] = 0;
  v78 = v41;
  v77 = v27[9];
  sub_1C4EFE4E8();
  v42 = (v33 + v27[10]);
  *v42 = 0;
  v42[1] = 0;
  v43 = v33;
  v76 = v27[11];
  sub_1C4EFE478();
  v44 = (v33 + v27[12]);
  *v44 = 0;
  v44[1] = 0;
  v45 = v27[13];
  sub_1C4EFE618();
  v46 = (v43 + v27[14]);
  *v46 = 0;
  v46[1] = 0;
  v47 = v27[15];
  v48 = type metadata accessor for INPersonStructs.Software(0);
  v85 = v43;
  sub_1C43FCF64();
  sub_1C440BAA8(v49, v50, v51, v48);
  v52 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4DDA868();
  sub_1C4F02BC8();
  if (v0)
  {
    v53 = v2;
    v56 = v85;
  }

  else
  {
    v86 = v42;
    v73 = v44;
    sub_1C442DB84();
    sub_1C44CD478(v54, v55);
    sub_1C4440ED8();
    sub_1C4F02658();
    v53 = v2;
    v56 = v85;
    sub_1C444088C(v82, v85, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C4440ED8();
    sub_1C4F026C8();
    v58 = *(v80 + 40);
    v58(v85 + v79, v81, v83);
    sub_1C4428F20();
    v59 = sub_1C4428A74();
    sub_1C44147E8(v59, v60, v78);
    sub_1C4F026C8();
    v61 = sub_1C440F118(v77);
    (v58)(v61);
    sub_1C4402044();
    v62 = sub_1C4428A74();
    sub_1C440EEEC(v62, v63, v86);
    sub_1C447CEFC();
    v64 = sub_1C440F118(v76);
    (v58)(v64);
    sub_1C4414078();
    *v73 = sub_1C4428A74();
    v73[1] = v65;
    sub_1C447CEFC();
    v66 = sub_1C440F118(v45);
    (v58)(v66);
    *v46 = sub_1C4428A74();
    v46[1] = v67;
    sub_1C4426374();
    sub_1C44CD478(v68, v69);
    sub_1C4F02658();
    v70 = sub_1C44018C0();
    v71(v70, v84);
    sub_1C444088C(v75, v85 + v47, &qword_1EC0BFA70, &unk_1C4F75520);
    sub_1C445FF78();
    sub_1C448D468(v85, v74, v72);
  }

  sub_1C440962C(v53);
  sub_1C440DC44();
  sub_1C4DD9A2C(v56, v57);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

uint64_t sub_1C4DD6F08(uint64_t a1)
{
  v2 = sub_1C4DDA868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DD6F44(uint64_t a1)
{
  v2 = sub_1C4DDA868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DD6FC8()
{
  sub_1C43FE96C();
  v2 = v0;
  v183 = v3;
  v181 = v4;
  v179 = type metadata accessor for EntityTriple(0);
  v5 = sub_1C43FCDF8(v179);
  v182 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v175 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v174 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  v173 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v172 = v15;
  sub_1C43FBE44();
  v177 = sub_1C4EFD548();
  v16 = sub_1C43FCDF8(v177);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  v185 = sub_1C4EFF8A8();
  v24 = sub_1C43FCDF8(v185);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v29 = (v28 - v27);
  v30 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v30);
  v32 = *(v31 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C44058BC();
  v34 = sub_1C4EFEEF8();
  v35 = sub_1C43FCDF8(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  v42 = v41 - v40;
  v180 = *v183;
  sub_1C4440ED8();
  v44 = v43;
  sub_1C445FFA8(v45, v46, v47, v48);
  sub_1C440175C(v1, 1, v44);
  if (v49)
  {
    sub_1C4420C3C(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v50 = sub_1C43FFB2C();
    sub_1C4414040(v50, v51);
  }

  else
  {
    v176 = v37;
    (*(v37 + 32))(v42, v1, v44);
    v52 = type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType(0);
    (*(v18 + 16))(v23, v2 + v52[5], v177);
    sub_1C4EFF838();
    v184 = v52;
    v53 = (v2 + v52[8]);
    v54 = v53[1];
    v178 = v2;
    if (v54)
    {
      sub_1C43FF988(v53);
      v56 = v179;
      if (v57)
      {
        v171 = v55;
        v58 = sub_1C4EFF0C8();
        sub_1C43FCE50(v58);
        (*(v59 + 16))(v172, v181);
        v60 = v44;
        v44 = v29;
        v61 = *(v37 + 16);
        v61(v172 + v179[5], v42, v60);
        sub_1C441B66C();
        sub_1C449DBBC();
        v62();
        v61(v172 + v179[7], v178 + v52[7], v29);
        v63 = v52[6];
        v64 = v179[9];
        sub_1C441ACA0();
        v56 = v179;
        sub_1C448D468(v178 + v65, v172 + v66, v67);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v68 = (v172 + v179[8]);
        *v68 = v171;
        v68[1] = v54;
        v70 = sub_1C44625AC(v69);
        sub_1C4401EC4(v70, v71, v72, MEMORY[0x1E69E7CC0]);
        v74 = v73;
        v76 = *(v73 + 16);
        v75 = *(v73 + 24);
        v54 = v76 + 1;
        if (v76 >= v75 >> 1)
        {
          v149 = sub_1C43FFD98(v75);
          sub_1C44C9240(v149, v150, v151, v74);
          v74 = v152;
        }

        *(v74 + 16) = v54;
        v77 = *(v182 + 80);
        sub_1C4425634();
        v78 = *(v182 + 72);
        sub_1C44083EC();
        sub_1C44DDA0C(v172, v79, v80);
        v81 = v178;
      }

      else
      {
        v74 = MEMORY[0x1E69E7CC0];
        v81 = v178;
      }
    }

    else
    {
      v81 = v2;
      v74 = MEMORY[0x1E69E7CC0];
      v56 = v179;
    }

    v82 = v176;
    sub_1C447555C();
    sub_1C441406C(v83);
    if (v54)
    {
      sub_1C44026DC(v84);
      if (v85)
      {
        v86 = sub_1C4EFF0C8();
        sub_1C43FCE50(v86);
        (*(v87 + 16))(v173, v181);
        v88 = sub_1C447F750();
        v29(v88);
        sub_1C441B66C();
        sub_1C449DBBC();
        v89();
        v90 = sub_1C447CE9C(v52[9]);
        v29(v90);
        v81 = v178;
        v91 = v52[6];
        v92 = v56[9];
        sub_1C441ACA0();
        sub_1C4475B74(v93, v94);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C447FB94(v95);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v153 = *(v74 + 16);
          v154 = sub_1C43FCEC0();
          sub_1C44C9240(v154, v155, v156, v74);
          v74 = v157;
        }

        sub_1C4414F38();
        v82 = v176;
        if (v97)
        {
          v158 = sub_1C43FFD98(v96);
          sub_1C44C9240(v158, v159, v160, v74);
          v74 = v161;
        }

        *(v74 + 16) = v54;
        v98 = *(v182 + 80);
        sub_1C4425634();
        v99 = *(v182 + 72);
        sub_1C44083EC();
        sub_1C44DDA0C(v173, v100, v101);
      }
    }

    sub_1C441406C(v52[12]);
    if (v54)
    {
      sub_1C44026DC(v102);
      if (v103)
      {
        v104 = sub_1C4EFF0C8();
        sub_1C43FCE50(v104);
        (*(v105 + 16))(v174, v181);
        v106 = sub_1C447F750();
        v29(v106);
        sub_1C441B66C();
        sub_1C449DBBC();
        v107();
        v108 = sub_1C447CE9C(v52[11]);
        v29(v108);
        v81 = v178;
        v109 = v52[6];
        v110 = v56[9];
        sub_1C441ACA0();
        sub_1C4475B74(v111, v112);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C447FB94(v113);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v162 = *(v74 + 16);
          v163 = sub_1C43FCEC0();
          sub_1C44C9240(v163, v164, v165, v74);
          v74 = v166;
        }

        sub_1C4414F38();
        v82 = v176;
        if (v97)
        {
          v167 = sub_1C43FFD98(v114);
          sub_1C44C9240(v167, v168, v169, v74);
          v74 = v170;
        }

        *(v74 + 16) = v54;
        v115 = *(v182 + 80);
        sub_1C4425634();
        v116 = *(v182 + 72);
        sub_1C44083EC();
        sub_1C44DDA0C(v174, v117, v118);
      }
    }

    if (*(v74 + 16))
    {
      v119 = sub_1C4EFF0C8();
      sub_1C43FCE50(v119);
      (*(v120 + 16))(v175, v181);
      (*(v82 + 16))(v175 + v56[5], v42, v44);
      sub_1C441B66C();
      v122(v175 + v121, v29, v185);
      v123 = v175 + v56[7];
      sub_1C4EFEBB8();
      v124 = sub_1C4EFD2F8();
      v126 = v125;
      v127 = v184[6];
      v128 = v56[9];
      sub_1C441ACA0();
      sub_1C448D468(v81 + v129, v175 + v130, v131);
      sub_1C4EF9AE8();
      v132 = (v175 + v56[8]);
      *v132 = v124;
      v132[1] = v126;
      sub_1C44625AC(v133);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v140 = *(v74 + 16);
        v141 = sub_1C43FCEC0();
        sub_1C44C9240(v141, v142, v143, v74);
        v74 = v144;
      }

      v135 = *(v74 + 16);
      v134 = *(v74 + 24);
      if (v135 >= v134 >> 1)
      {
        v145 = sub_1C43FFD98(v134);
        sub_1C44C9240(v145, v146, v147, v74);
        v74 = v148;
      }

      sub_1C4449474();
      v136(v29, v185);
      (*(v82 + 8))(v42, v44);
      *(v74 + 16) = v135 + 1;
      sub_1C43FBF6C();
      sub_1C445C2FC();
      sub_1C44083EC();
      sub_1C44DDA0C(v175, v137, v138);
    }

    else
    {
      sub_1C4449474();
      v139(v29, v185);
      (*(v82 + 8))(v42, v44);
    }
  }

  sub_1C43FBC80();
}

unint64_t sub_1C4DD7870(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      v3 = 10;
      goto LABEL_8;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      v3 = 11;
LABEL_8:
      result = v3 | 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0x6574736567677573;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DD79A0()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v2 = sub_1C456902C(&qword_1EC0C7A60, &qword_1C4F75880);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4DDA728();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB84();
  sub_1C44CD478(v6, v7);
  sub_1C4405570();
  sub_1C4F02778();
  if (!v0)
  {
    v18 = type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType(0);
    v8 = v18[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420B18();
    sub_1C44CD478(v9, v10);
    sub_1C43FEF68();
    sub_1C4F027E8();
    v11 = v18[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C440B95C();
    sub_1C44CD478(v12, v13);
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4401958(v18);
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C440C15C((v1 + v18[8]));
    sub_1C4F02738();
    sub_1C44169F0(v18);
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C447555C();
    sub_1C441BFB8((v1 + v14));
    sub_1C4F02738();
    v15 = v18[11];
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C440C204();
  }

  v16 = sub_1C440231C();
  v17(v16);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4DD7C20()
{
  sub_1C43FE96C();
  v2 = v1;
  v60 = v3;
  v4 = sub_1C4EFEEF8();
  v5 = sub_1C43FCDF8(v4);
  v63 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v61 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v62 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  v64 = v13;
  v14 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  v65 = v18;
  v19 = sub_1C456902C(&qword_1EC0C7A50, &qword_1C4F75878);
  v67 = sub_1C43FCDF8(v19);
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBC74();
  v23 = sub_1C43FBE44();
  v24 = type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType(v23);
  v25 = sub_1C43FBCE0(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v30 = v29 - v28;
  sub_1C43FCF64();
  v66 = v4;
  sub_1C44AE128(v31, v32, v33);
  sub_1C4EFD338();
  v34 = v24[6];
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520();
  }

  v35 = type metadata accessor for Source();
  sub_1C442B738(v35, qword_1EDDFD0D8);
  sub_1C441ACA0();
  sub_1C448D468(v36, v30 + v34, v37);
  v38 = v24[7];
  sub_1C4EFE828();
  v39 = (v30 + v24[8]);
  *v39 = 0;
  v39[1] = 0;
  v40 = v24[9];
  sub_1C4EFE838();
  v41 = (v30 + v24[10]);
  *v41 = 0;
  v41[1] = 0;
  v42 = v24[11];
  sub_1C4EFE5F8();
  v70 = v30;
  v43 = (v30 + v24[12]);
  *v43 = 0;
  v43[1] = 0;
  v44 = v2;
  v45 = v2[3];
  v46 = v2[4];
  v69 = v44;
  sub_1C4409678(v44, v45);
  sub_1C4DDA728();
  sub_1C4F02BC8();
  if (!v0)
  {
    v68 = v38;
    sub_1C442DB84();
    sub_1C44CD478(v47, v48);
    sub_1C4F02658();
    sub_1C444088C(v65, v70, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C4F026C8();
    v50 = *(v63 + 40);
    v50(v70 + v68, v64, v66);
    sub_1C4428F20();
    v51 = sub_1C4F02618();
    sub_1C44147E8(v51, v52, v39);
    sub_1C4440ED8();
    sub_1C4F026C8();
    v50(v70 + v40, v62, v66);
    sub_1C4402044();
    v53 = sub_1C4F02618();
    sub_1C440EEEC(v53, v54, v41);
    sub_1C4440ED8();
    sub_1C4F026C8();
    v50(v70 + v42, v61, v66);
    sub_1C4414078();
    v55 = sub_1C4F02618();
    v57 = v56;
    v58 = sub_1C44018C0();
    v59(v58, v67);
    *v43 = v55;
    v43[1] = v57;
    sub_1C448D468(v70, v60, type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType);
  }

  sub_1C440962C(v69);
  sub_1C4411638();
  sub_1C4DD9A2C(v70, v49);
  sub_1C43FBC80();
}

uint64_t sub_1C4DD8174(uint64_t a1)
{
  v2 = sub_1C4DDA728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DD81B0(uint64_t a1)
{
  v2 = sub_1C4DDA728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DD8234()
{
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C44042B0();
  v8 = type metadata accessor for INPersonStructs.AddressRelationshipType(v7);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402CA8();
  v14 = *(type metadata accessor for INPersonStructs.Person(0) + 56);
  result = *(v1 + v14);
  if (result)
  {
    v16 = *(result + 16);
    if (v16)
    {
      v33 = v14;
      v34 = v1;
      v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v32[1] = result;
      v18 = result + v17;
      v19 = *(v9 + 72);
      v20 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C448D468(v18, v2, type metadata accessor for INPersonStructs.AddressRelationshipType);
        sub_1C4EFEA18();
        v21 = sub_1C4EFEEF8();
        sub_1C440CBF4(v21);
        sub_1C444088C(v0, v2, &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C448D468(v2, v13, type metadata accessor for INPersonStructs.AddressRelationshipType);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1C4405674();
          sub_1C458DF28(v25, v26, v27, v28);
          v20 = v29;
        }

        v23 = *(v20 + 16);
        v22 = *(v20 + 24);
        if (v23 >= v22 >> 1)
        {
          v30 = sub_1C43FCFE8(v22);
          sub_1C458DF28(v30, v23 + 1, 1, v20);
          v20 = v31;
        }

        *(v20 + 16) = v23 + 1;
        sub_1C44DDA0C(v13, v20 + v17 + v23 * v19, type metadata accessor for INPersonStructs.AddressRelationshipType);
        sub_1C440DC44();
        sub_1C4DD9A2C(v2, v24);
        v18 += v19;
        --v16;
      }

      while (v16);

      v14 = v33;
      v1 = v34;
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    *(v1 + v14) = v20;
  }

  return result;
}

uint64_t sub_1C4DD8508(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x80000001C4FC8480 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1701667182 && a2 == 0xE400000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7774666F53736168 && a2 == 0xEB00000000657261;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000015 && 0x80000001C4FC85C0 == a2;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD000000000000013 && 0x80000001C4FC8560 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1C4F02938();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4DD88C4(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x6E6F6974616C6572;
      break;
    case 6:
      result = 0x6572705F656D616ELL;
      break;
    case 7:
      result = 1701667182;
      break;
    case 8:
      result = 0x7774666F53736168;
      break;
    case 9:
      result = 0x696669746E656469;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4DD8A48()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v2 = sub_1C456902C(&qword_1EC0C7A80, &qword_1C4F75890);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4DDA77C();
  sub_1C440F61C();
  sub_1C4EFF0C8();
  sub_1C43FCD38();
  sub_1C44CD478(v6, v7);
  sub_1C4449458();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    v8 = type metadata accessor for INPersonStructs.Person(0);
    v9 = *(v8 + 20);
    sub_1C443E4C4(1);
    sub_1C4EFEEF8();
    sub_1C442DB84();
    sub_1C44CD478(v10, v11);
    sub_1C440A3DC();
    sub_1C4F02778();
    v38 = v8;
    v12 = *(v8 + 24);
    sub_1C443E4C4(2);
    sub_1C4EFD548();
    sub_1C4420B18();
    sub_1C44CD478(v13, v14);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v15 = v38[7];
    sub_1C443E4C4(3);
    type metadata accessor for Source();
    sub_1C440B95C();
    sub_1C44CD478(v16, v17);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4427014(v38[8]);
    sub_1C440A3DC();
    sub_1C4F027E8();
    v18 = (v1 + v38[9]);
    v19 = *v18;
    v20 = v18[1];
    sub_1C442F54C();
    sub_1C4427014(v38[10]);
    sub_1C440A3DC();
    sub_1C4F027E8();
    v21 = (v1 + v38[11]);
    v22 = *v21;
    v23 = v21[1];
    sub_1C442F54C();
    v24 = v38[12];
    v25 = sub_1C443E4C4(8);
    type metadata accessor for INPersonStructs.SoftwareRelationshipType(v25);
    sub_1C4450920();
    sub_1C44CD478(v26, v27);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F02778();
    v28 = v38[13];
    v29 = sub_1C443E4C4(9);
    type metadata accessor for INPersonStructs.IdentifierRelationshipType(v29);
    sub_1C442396C();
    sub_1C44CD478(v30, v31);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F02778();
    v39 = *(v1 + v38[14]);
    sub_1C456902C(&qword_1EC0C79E8, &qword_1C4F75558);
    sub_1C4DDA7D0(&qword_1EC0C7A88, &qword_1EC0C7A28);
    sub_1C43FEF68();
    sub_1C4F02778();
    v32 = v38[15];
    v33 = sub_1C443E4C4(11);
    type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType(v33);
    sub_1C441DF68();
    sub_1C44CD478(v34, v35);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F02778();
  }

  v36 = sub_1C440231C();
  v37(v36);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4DD8E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v13 = v12;
  sub_1C449AF80(v14);
  v15 = sub_1C456902C(&qword_1EC0C79E0, &unk_1C4F75510);
  sub_1C43FBD18(v15);
  v17 = *(v16 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBC74();
  sub_1C43FCE30(v19);
  v20 = sub_1C456902C(&qword_1EC0BFA68, &qword_1C4F3BB38);
  sub_1C43FBD18(v20);
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBC74();
  sub_1C43FCE30(v24);
  v25 = sub_1C456902C(&qword_1EC0BFA60, &qword_1C4F3BB30);
  sub_1C43FBD18(v25);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBC74();
  v106 = v29;
  sub_1C43FBE44();
  v30 = sub_1C4EFEEF8();
  v31 = sub_1C43FCDF8(v30);
  v121 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  v107 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  v108 = v37;
  v38 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v38);
  v40 = *(v39 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBC74();
  v109 = v42;
  sub_1C43FBE44();
  v43 = sub_1C4EFF0C8();
  v44 = sub_1C43FCDF8(v43);
  v112 = v45;
  v113 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD2D8();
  v110 = v48;
  v111 = sub_1C456902C(&qword_1EC0C7A68, &qword_1C4F75888);
  sub_1C43FCDF8(v111);
  v50 = *(v49 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C4402A68();
  v52 = type metadata accessor for INPersonStructs.Person(0);
  v53 = sub_1C43FBCE0(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v122 = *(v56 + 20);
  v123 = v30;
  sub_1C43FCF64();
  sub_1C440BAA8(v57, v58, v59, v30);
  v114 = v52[6];
  sub_1C4EFD4C8();
  v60 = v52[7];
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520();
  }

  v61 = type metadata accessor for Source();
  sub_1C442B738(v61, qword_1EDDFD0D8);
  sub_1C441ACA0();
  v115 = v60;
  sub_1C448D468(v62, v11 + v60, v63);
  v120 = v52[8];
  sub_1C4EFE588();
  v119 = v52[10];
  sub_1C4EFEBF8();
  v64 = v52[12];
  v65 = type metadata accessor for INPersonStructs.SoftwareRelationshipType(0);
  v117 = v64;
  sub_1C43FCF64();
  sub_1C440BAA8(v66, v67, v68, v65);
  v69 = v52[13];
  v70 = type metadata accessor for INPersonStructs.IdentifierRelationshipType(0);
  v118 = v69;
  sub_1C43FCF64();
  sub_1C440BAA8(v71, v72, v73, v70);
  v74 = v52[15];
  v75 = type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType(0);
  v116 = v74;
  sub_1C43FCF64();
  sub_1C440BAA8(v76, v77, v78, v75);
  v79 = v13[4];
  sub_1C4409678(v13, v13[3]);
  sub_1C4DDA77C();
  sub_1C4F02BC8();
  if (v10)
  {
    sub_1C4475E50();
    sub_1C4420C3C(v11 + v122, &qword_1EC0B9A08, &unk_1C4F107B0);
    v82 = sub_1C4EFD548();
    sub_1C43FBCE0(v82);
    (*(v83 + 8))(v11 + v114);
    sub_1C4430514();
    sub_1C4DD9A2C(v11 + v115, v84);
    v85 = *(v121 + 8);
    v85(v11 + v120, v123);

    v85(v11 + v119, v123);

    sub_1C4420C3C(v11 + v117, &qword_1EC0BFA60, &qword_1C4F3BB30);
    sub_1C4420C3C(v11 + v118, &qword_1EC0BFA68, &qword_1C4F3BB38);

    sub_1C4420C3C(v11 + v116, &qword_1EC0C79E0, &unk_1C4F75510);
  }

  else
  {
    sub_1C43FCD38();
    sub_1C44CD478(v80, v81);
    sub_1C4449458();
    sub_1C4F026C8();
    (*(v112 + 32))(v11, v110, v113);
    sub_1C442DB84();
    sub_1C44CD478(v86, v87);
    sub_1C4441A98();
    sub_1C4F02658();
    sub_1C444088C(v109, v11 + v122, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4441A98();
    sub_1C4F026C8();
    v88 = *(v121 + 40);
    v88(v11 + v120, v108, v123);
    v89 = sub_1C4F02618();
    v90 = (v11 + v52[9]);
    *v90 = v89;
    v90[1] = v91;
    sub_1C4441A98();
    sub_1C4F026C8();
    v88(v11 + v119, v107, v123);
    v92 = sub_1C4F02618();
    v93 = (v11 + v52[11]);
    *v93 = v92;
    v93[1] = v94;
    sub_1C4450920();
    sub_1C44CD478(v95, v96);
    sub_1C4449458();
    sub_1C4F02658();
    sub_1C444088C(v106, v11 + v117, &qword_1EC0BFA60, &qword_1C4F3BB30);
    LOBYTE(a10) = 9;
    sub_1C442396C();
    sub_1C44CD478(v97, v98);
    sub_1C4449458();
    sub_1C4F02658();
    sub_1C444088C(v105, v11 + v118, &qword_1EC0BFA68, &qword_1C4F3BB38);
    sub_1C456902C(&qword_1EC0C79E8, &qword_1C4F75558);
    sub_1C4DDA7D0(&qword_1EC0C7A78, &qword_1EC0C7A20);
    sub_1C4F02658();
    *(v11 + v52[14]) = a10;
    sub_1C441DF68();
    sub_1C44CD478(v99, v100);
    sub_1C4449458();
    sub_1C4F02658();
    v101 = sub_1C441E10C();
    v102(v101);
    sub_1C444088C(v104, v11 + v74, &qword_1EC0C79E0, &unk_1C4F75510);
    sub_1C448D468(v11, v103, type metadata accessor for INPersonStructs.Person);
    sub_1C440962C(v13);
    sub_1C4DD9A2C(v11, type metadata accessor for INPersonStructs.Person);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DD98F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4DD9944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DD8508(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DD996C(uint64_t a1)
{
  v2 = sub_1C4DDA77C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DD99A8(uint64_t a1)
{
  v2 = sub_1C4DDA77C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DD9A2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4DD9ACC()
{
  sub_1C4DD9DF8(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for Source();
      if (v4 <= 0x3F)
      {
        v1 = sub_1C4EFEEF8();
        if (v5 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C4DD9C08()
{
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    sub_1C4DD9DF8(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      v0 = sub_1C4EFD548();
      if (v4 <= 0x3F)
      {
        v0 = type metadata accessor for Source();
        if (v5 <= 0x3F)
        {
          v0 = sub_1C4EFEEF8();
          if (v6 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v8 > 0x3F)
            {
              return v7;
            }

            else
            {
              sub_1C4DD9DF8(319, qword_1EDDE7C88, type metadata accessor for INPersonStructs.SoftwareRelationshipType);
              v0 = v9;
              if (v10 <= 0x3F)
              {
                sub_1C4DD9DF8(319, qword_1EDDE7BD8, type metadata accessor for INPersonStructs.IdentifierRelationshipType);
                v0 = v11;
                if (v12 <= 0x3F)
                {
                  sub_1C4DD9E4C();
                  v0 = v13;
                  if (v14 <= 0x3F)
                  {
                    sub_1C4DD9DF8(319, qword_1EDDE7B20, type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType);
                    v0 = v15;
                    if (v16 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_1C4DD9DF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C4DD9E4C()
{
  if (!qword_1EDDDBCA0)
  {
    sub_1C4572308(&qword_1EC0C79E8, &qword_1C4F75558);
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDDBCA0);
    }
  }
}

uint64_t sub_1C4DD9ED8()
{
  sub_1C4DD9DF8(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for Source();
      if (v4 <= 0x3F)
      {
        v1 = sub_1C4EFEEF8();
        if (v5 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
          {
            sub_1C4DD9DF8(319, qword_1EDDE79C0, type metadata accessor for INPersonStructs.Software);
            v1 = v8;
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_1C4DDA054()
{
  sub_1C4EFF0C8();
  if (v0 <= 0x3F)
  {
    sub_1C4DD9DF8(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    if (v1 <= 0x3F)
    {
      sub_1C4EFD548();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Source();
        if (v3 <= 0x3F)
        {
          sub_1C4EFEEF8();
          if (v4 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4DDA17C()
{
  sub_1C4DD9DF8(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for Source();
      if (v4 <= 0x3F)
      {
        v1 = sub_1C4EFEEF8();
        if (v5 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C4DDA2C4()
{
  sub_1C4DD9DF8(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for Source();
      if (v4 <= 0x3F)
      {
        v1 = sub_1C4EFEEF8();
        if (v5 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
          {
            sub_1C4DD9DF8(319, qword_1EDDE79C0, type metadata accessor for INPersonStructs.Software);
            v1 = v8;
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C4DDA410(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD478(&qword_1EC0C79F0, type metadata accessor for INPersonStructs.SoftwareRelationshipType);
  result = sub_1C44CD478(&qword_1EC0C79F8, type metadata accessor for INPersonStructs.SoftwareRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DDA494(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD478(&qword_1EC0C7A00, type metadata accessor for INPersonStructs.IdentifierRelationshipType);
  result = sub_1C44CD478(&qword_1EC0C7A08, type metadata accessor for INPersonStructs.IdentifierRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DDA518(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD478(&qword_1EC0C7A10, type metadata accessor for INPersonStructs.Software);
  result = sub_1C44CD478(&qword_1EC0C7A18, type metadata accessor for INPersonStructs.Software);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DDA59C(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD478(&qword_1EC0C7A20, type metadata accessor for INPersonStructs.AddressRelationshipType);
  result = sub_1C44CD478(&qword_1EC0C7A28, type metadata accessor for INPersonStructs.AddressRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DDA620(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD478(&qword_1EC0C7A30, type metadata accessor for INPersonStructs.Person);
  result = sub_1C44CD478(&qword_1EC0C7A38, type metadata accessor for INPersonStructs.Person);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DDA6A4(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD478(&qword_1EC0C7A40, type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType);
  result = sub_1C44CD478(&qword_1EC0C7A48, type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4DDA728()
{
  result = qword_1EC0C7A58;
  if (!qword_1EC0C7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7A58);
  }

  return result;
}

unint64_t sub_1C4DDA77C()
{
  result = qword_1EC0C7A70;
  if (!qword_1EC0C7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7A70);
  }

  return result;
}

uint64_t sub_1C4DDA7D0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C79E8, &qword_1C4F75558);
    sub_1C44CD478(a2, type metadata accessor for INPersonStructs.AddressRelationshipType);
    sub_1C440A9B8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4DDA868()
{
  result = qword_1EC0C7A98;
  if (!qword_1EC0C7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7A98);
  }

  return result;
}

unint64_t sub_1C4DDA8BC()
{
  result = qword_1EC0C7AB0;
  if (!qword_1EC0C7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7AB0);
  }

  return result;
}

unint64_t sub_1C4DDA910()
{
  result = qword_1EC0C7AC8;
  if (!qword_1EC0C7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7AC8);
  }

  return result;
}

unint64_t sub_1C4DDA964()
{
  result = qword_1EC0C7AE0;
  if (!qword_1EC0C7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7AE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for INPersonStructs.SoftwareRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for INPersonStructs.IdentifierRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for INPersonStructs.Software.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C4DDAC5C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for INPersonStructs.VisualIdentifierRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4DDAE18()
{
  result = qword_1EC0C7AF0;
  if (!qword_1EC0C7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7AF0);
  }

  return result;
}

unint64_t sub_1C4DDAE70()
{
  result = qword_1EC0C7AF8;
  if (!qword_1EC0C7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7AF8);
  }

  return result;
}

unint64_t sub_1C4DDAEC8()
{
  result = qword_1EC0C7B00;
  if (!qword_1EC0C7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7B00);
  }

  return result;
}

unint64_t sub_1C4DDAF20()
{
  result = qword_1EC0C7B08;
  if (!qword_1EC0C7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7B08);
  }

  return result;
}

unint64_t sub_1C4DDAF78()
{
  result = qword_1EC0C7B10;
  if (!qword_1EC0C7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7B10);
  }

  return result;
}

unint64_t sub_1C4DDAFD0()
{
  result = qword_1EC0C7B18;
  if (!qword_1EC0C7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7B18);
  }

  return result;
}

unint64_t sub_1C4DDB028()
{
  result = qword_1EC0C7B20;
  if (!qword_1EC0C7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7B20);
  }

  return result;
}

unint64_t sub_1C4DDB080()
{
  result = qword_1EC0C7B28;
  if (!qword_1EC0C7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7B28);
  }

  return result;
}

unint64_t sub_1C4DDB0D8()
{
  result = qword_1EC0C7B30;
  if (!qword_1EC0C7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7B30);
  }

  return result;
}

unint64_t sub_1C4DDB130()
{
  result = qword_1EC0C7B38;
  if (!qword_1EC0C7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7B38);
  }

  return result;
}

unint64_t sub_1C4DDB188()
{
  result = qword_1EC0C7B40;
  if (!qword_1EC0C7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7B40);
  }

  return result;
}

unint64_t sub_1C4DDB1E0()
{
  result = qword_1EC0C7B48;
  if (!qword_1EC0C7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7B48);
  }

  return result;
}

unint64_t sub_1C4DDB238()
{
  result = qword_1EC0C7B50;
  if (!qword_1EC0C7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7B50);
  }

  return result;
}

unint64_t sub_1C4DDB290()
{
  result = qword_1EC0C7B58;
  if (!qword_1EC0C7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7B58);
  }

  return result;
}

unint64_t sub_1C4DDB2E8()
{
  result = qword_1EC0C7B60;
  if (!qword_1EC0C7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7B60);
  }

  return result;
}

unint64_t sub_1C4DDB340()
{
  result = qword_1EC0C7B68;
  if (!qword_1EC0C7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7B68);
  }

  return result;
}

unint64_t sub_1C4DDB398()
{
  result = qword_1EC0C7B70;
  if (!qword_1EC0C7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7B70);
  }

  return result;
}

unint64_t sub_1C4DDB3F0()
{
  result = qword_1EC0C7B78;
  if (!qword_1EC0C7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7B78);
  }

  return result;
}

void sub_1C4DDB44C()
{
  sub_1C43FE96C();
  v133 = v0;
  v2 = v1;
  v141 = v3;
  v5 = v4;
  v6 = sub_1C4F00DD8();
  v7 = sub_1C43FCDF8(v6);
  v134 = v8;
  v135 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v130 = v12 - v11;
  sub_1C43FBE44();
  v13 = sub_1C4F00DC8();
  v14 = sub_1C43FCDF8(v13);
  v136 = v15;
  v137 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  v129 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD230();
  v131 = v20;
  sub_1C43FBE44();
  v21 = sub_1C4F01188();
  v22 = sub_1C43FCDF8(v21);
  v139 = v23;
  v140 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v138 = v27 - v26;
  sub_1C43FBE44();
  v146 = sub_1C4EFD548();
  v28 = sub_1C43FCDF8(v146);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBFDC();
  v126 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v113 - v35;
  v37 = sub_1C4EFF0C8();
  v38 = sub_1C43FCDF8(v37);
  v127 = v39;
  v128 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBFDC();
  v124 = v42;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD230();
  v123 = v44;
  v45 = sub_1C43FBE44();
  v46 = type metadata accessor for IPEntityTaggingPersonInferenceStructs.Person(v45);
  v47 = v46[5];
  v48 = sub_1C4EFEEF8();
  v125 = v47;
  sub_1C43FCF64();
  sub_1C440BAA8(v49, v50, v51, v48);
  v52 = v46[6];
  sub_1C4EFD4C8();
  v53 = (v5 + v46[7]);
  if (qword_1EDDFD178 != -1)
  {
    sub_1C4410038();
  }

  v54 = type metadata accessor for Source();
  sub_1C442B738(v54, &qword_1EDDFD180);
  sub_1C441ACB8();
  sub_1C448D4C0();
  v122 = v46[8];
  sub_1C4EFE5D8();
  v55 = (v5 + v46[9]);
  *v55 = 0;
  v55[1] = 0;
  v56 = v46[10];
  type metadata accessor for IPEntityTaggingPersonInferenceStructs.AgentAffiliationRelationshipType(0);
  v121 = v56;
  sub_1C43FCF64();
  sub_1C440BAA8(v57, v58, v59, v60);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v61 = sub_1C4F00978();
  v62 = sub_1C442B738(v61, qword_1EDE2DE10);
  v63 = *(v30 + 16);
  v120 = v30 + 16;
  v119 = v63;
  v63(v36, v5 + v52, v146);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v117 = v62;
  v64 = sub_1C4F00968();
  v65 = sub_1C4F01CB8();

  v66 = os_log_type_enabled(v64, v65);
  v142 = v5;
  v143 = v52;
  v132 = v30;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v116 = v53;
    v115 = v68;
    v144 = v68;
    *v67 = 136381187;
    v69 = v30;
    v70 = v141;
    *(v67 + 4) = sub_1C441D828(v141, v2, &v144);
    *(v67 + 12) = 2080;
    sub_1C43FE300();
    sub_1C44CD4C0(v71, v72);
    v114 = v65;
    v73 = v48;
    v74 = sub_1C4F02858();
    v76 = v75;
    v118 = *(v69 + 8);
    v118(v36, v146);
    v77 = sub_1C441D828(v74, v76, &v144);
    v48 = v73;

    *(v67 + 14) = v77;
    *(v67 + 22) = 1024;
    *(v67 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v64, v114, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v67, 0x1Cu);
    swift_arrayDestroy();
    v53 = v116;
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v118 = *(v30 + 8);
    v118(v36, v146);
    v70 = v141;
  }

  v78 = *v53;
  v79 = v53[1];
  v144 = v70;
  v145 = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v78, v79);

  v80 = v144;
  v81 = v145;
  v82 = v138;
  sub_1C4F01178();
  sub_1C4F01148();
  v84 = v83;
  (*(v139 + 8))(v82, v140);
  if (v84 >> 60 == 15)
  {
    v85 = v53;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v86 = sub_1C4F00968();
    v87 = sub_1C4F01CD8();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v144 = v89;
      *v88 = 136380675;
      v90 = sub_1C441D828(v80, v81, &v144);

      *(v88 + 4) = v90;
      _os_log_impl(&dword_1C43F8000, v86, v87, "Source: failed to encode identifier as UTF8 data: %{private}s", v88, 0xCu);
      sub_1C440962C(v89);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C45CF650();
    swift_allocError();
    *v110 = 5;
    swift_willThrow();
    v111 = v142;
    sub_1C4420C3C(v142 + v125, &qword_1EC0B9A08, &unk_1C4F107B0);
    v118((v111 + v143), v146);
    sub_1C441F244();
    sub_1C4DDEF24(v85, v112);
    (*(*(v48 - 8) + 8))(v111 + v122, v48);
    sub_1C4420C3C(v111 + v121, &qword_1EC0C0890, &qword_1C4F3F420);
  }

  else
  {

    sub_1C44CD4C0(&qword_1EDDFEAD0, MEMORY[0x1E6966620]);
    v91 = v130;
    v92 = v135;
    sub_1C4F00DB8();
    v93 = sub_1C440DE18();
    sub_1C44344B8(v93, v94);
    v95 = sub_1C440DE18();
    v96 = v133;
    sub_1C4498FD8(v95, v97);
    v141 = v96;
    v98 = sub_1C440DE18();
    sub_1C441DFEC(v98, v99);
    v100 = v131;
    sub_1C4F00DA8();
    (*(v134 + 8))(v91, v92);
    v101 = v142;
    v119(v126, v142 + v143, v146);
    v102 = v136;
    v103 = v137;
    (*(v136 + 16))(v129, v100, v137);
    v104 = v124;
    sub_1C4EFF028();
    v105 = sub_1C440DE18();
    sub_1C441DFEC(v105, v106);
    (*(v102 + 8))(v100, v103);
    v107 = v128;
    v108 = *(v127 + 32);
    v109 = v123;
    v108(v123, v104, v128);
    v108(v101, v109, v107);
  }

  sub_1C43FBC80();
}