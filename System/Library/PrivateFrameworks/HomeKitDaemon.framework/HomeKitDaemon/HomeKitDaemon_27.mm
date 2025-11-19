uint64_t sub_2297CECD4()
{
  v14 = v0[12];
  v15 = v0[13];
  v16 = *(v0 + 112);
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[11];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_2297CE1E0();
}

unint64_t sub_2297CED40(uint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814E0, &qword_22A583FB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A578C10;
  *(inited + 32) = 0xD00000000000001DLL;
  v5 = MEMORY[0x277D839B0];
  *(inited + 40) = 0x800000022A594410;
  *(inited + 72) = v5;
  *(inited + 80) = &off_283CE59B8;
  *(inited + 48) = a1 & 1;
  *(inited + 88) = 0xD000000000000022;
  *(inited + 96) = 0x800000022A594430;
  *(inited + 128) = v5;
  *(inited + 136) = &off_283CE59B8;
  *(inited + 104) = BYTE1(a1) & 1;
  strcpy((inited + 144), "fetchSucceeded");
  *(inited + 159) = -18;
  *(inited + 184) = v5;
  *(inited + 192) = &off_283CE59B8;
  *(inited + 160) = BYTE2(a1) & 1;
  *(inited + 200) = 0xD00000000000001ALL;
  *(inited + 208) = 0x800000022A594470;
  *(inited + 240) = v5;
  *(inited + 248) = &off_283CE59B8;
  *(inited + 216) = BYTE3(a1) & 1;
  *(inited + 256) = 0xD000000000000016;
  *(inited + 264) = 0x800000022A594490;
  *(inited + 296) = v5;
  *(inited + 304) = &off_283CE59B8;
  *(inited + 272) = BYTE4(a1) & 1;
  *(inited + 312) = 0xD000000000000026;
  *(inited + 320) = 0x800000022A5944B0;
  *(inited + 352) = v5;
  *(inited + 360) = &off_283CE59B8;
  *(inited + 328) = BYTE5(a1) & 1;
  *(inited + 368) = 0xD000000000000010;
  *(inited + 376) = 0x800000022A5944E0;
  *(inited + 408) = v5;
  *(inited + 416) = &off_283CE59B8;
  *(inited + 384) = BYTE6(a1) & 1;
  v6 = MEMORY[0x277D839F8];
  *(inited + 424) = 0xD000000000000011;
  *(inited + 432) = 0x800000022A594500;
  *(inited + 464) = v6;
  *(inited + 472) = &off_283CE59D8;
  *(inited + 440) = a2;
  v7 = sub_22956B634(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE70, &qword_22A583FC0);
  swift_arrayDestroy();
  return v7;
}

unint64_t sub_2297CEF3C()
{
  v1 = 256;
  if ((*(v0 + 1) & 1) == 0)
  {
    v1 = 0;
  }

  v2 = v1 & 0xFFFFFFFFFFFFFFFELL | *v0 & 1;
  v3 = 0x10000;
  if ((*(v0 + 2) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((*(v0 + 3) & 1) == 0)
  {
    v4 = 0;
  }

  v5 = v2 | v3 | v4;
  v6 = 0x100000000;
  if ((*(v0 + 4) & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 0x10000000000;
  if ((*(v0 + 5) & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x1000000000000;
  if ((*(v0 + 6) & 1) == 0)
  {
    v8 = 0;
  }

  return sub_2297CED40(v5 | v6 | v7 | v8, *(v0 + 8));
}

id sub_2297CEFC0@<X0>(void (**a1)(char *, uint64_t, unint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v182 = a3;
  v177 = a2;
  v159 = a4;
  v193 = sub_22A4DBC5C();
  v164 = *(v193 - 8);
  v5 = *(v164 + 64);
  v6 = MEMORY[0x28223BE20](v193);
  v168 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v148 - v9;
  MEMORY[0x28223BE20](v8);
  v191 = &v148 - v11;
  v192 = sub_22A4DBAEC();
  v190 = *(v192 - 8);
  v12 = *(v190 + 64);
  v13 = MEMORY[0x28223BE20](v192);
  v160 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v174 = &v148 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v148 - v17;
  v184 = sub_22A4DBC3C();
  v169 = *(v184 - 8);
  v19 = *(v169 + 8);
  v20 = MEMORY[0x28223BE20](v184);
  v171 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v166 = &v148 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8814C0, &unk_22A583F10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v148 - v25;
  v27 = sub_22A4DBB4C();
  v186 = *(v27 - 8);
  v28 = *(v186 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v167 = &v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v149 = &v148 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v178 = &v148 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v185 = &v148 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v179 = (&v148 - v38);
  MEMORY[0x28223BE20](v37);
  v40 = &v148 - v39;
  v170 = a1;
  result = [a1 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v42 = result;
  v43 = [result nearbyVisibleDeviceInfos];

  if (!v43 || (v194 = 0, sub_229562F68(0, &qword_27D87D790, 0x277CD16D8), sub_22A4DD82C(), v43, (v44 = v194) == 0))
  {

    v44 = MEMORY[0x277D84F90];
  }

  if (v44 >> 62)
  {
    goto LABEL_152;
  }

  for (i = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
  {
    v150 = v18;
    v187 = v27;
    v188 = v10;
    v181 = v26;
    if (i)
    {
      v10 = 0;
      v183 = (v44 & 0xC000000000000001);
      v180 = v44 & 0xFFFFFFFFFFFFFF8;
      v189 = (v186 + 32);
      v46 = MEMORY[0x277D84F90];
      v175 = i;
      v176 = v44;
      while (1)
      {
        if (v183)
        {
          v47 = MEMORY[0x22AAD13F0](v10, v44);
        }

        else
        {
          if (v10 >= *(v180 + 16))
          {
            goto LABEL_144;
          }

          v47 = *(v44 + 8 * v10 + 32);
        }

        v48 = v47;
        v49 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v50 = [v47 idsIdentifierString];
        if (v50)
        {
          v26 = v40;
          v51 = v50;
          sub_22A4DD5EC();

          v52 = [v48 mediaRouteIdString];
          if (v52)
          {
            v53 = v52;
            sub_22A4DD5EC();
          }

          v54 = v179;
          sub_22A4DBB1C();

          v55 = *v189;
          v56 = v54;
          v27 = v187;
          (*v189)(v40, v56, v187);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_22958AD88(0, *(v46 + 2) + 1, 1, v46);
          }

          i = v175;
          v18 = *(v46 + 2);
          v57 = *(v46 + 3);
          if (v18 >= v57 >> 1)
          {
            v46 = sub_22958AD88(v57 > 1, v18 + 1, 1, v46);
          }

          *(v46 + 2) = v18 + 1;
          v55(&v46[((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v18], v40, v27);
          v44 = v176;
        }

        else
        {
        }

        ++v10;
        if (v49 == i)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    v46 = MEMORY[0x277D84F90];
LABEL_25:

    result = [v170 appleMediaAccessoryDiagnosticInfo];
    if (!result)
    {
      goto LABEL_155;
    }

    v58 = result;
    v59 = [result networkVisibleDeviceInfos];

    v26 = MEMORY[0x277D84F90];
    if (v59)
    {
      v194 = 0;
      sub_229562F68(0, &qword_27D87D790, 0x277CD16D8);
      sub_22A4DD82C();

      if (v194)
      {
        v26 = v194;
      }
    }

    v44 = v26 >> 62 ? sub_22A4DE0EC() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v173 = v46;
    if (!v44)
    {
      break;
    }

    v10 = 0;
    v183 = (v26 & 0xC000000000000001);
    v180 = v26 & 0xFFFFFFFFFFFFFF8;
    v189 = (v186 + 32);
    v60 = MEMORY[0x277D84F90];
    v176 = v26;
    v179 = v44;
    while (1)
    {
      if (v183)
      {
        v61 = MEMORY[0x22AAD13F0](v10, v26);
      }

      else
      {
        if (v10 >= *(v180 + 16))
        {
          goto LABEL_146;
        }

        v61 = *(v26 + 8 * v10 + 32);
      }

      v40 = v61;
      v62 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v63 = [v61 idsIdentifierString];
      if (v63)
      {
        v64 = v63;
        sub_22A4DD5EC();

        v65 = [v40 mediaRouteIdString];
        if (v65)
        {
          v66 = v65;
          sub_22A4DD5EC();

          v67 = v187;
        }

        else
        {
          v67 = v27;
        }

        v68 = v178;
        sub_22A4DBB1C();

        v69 = *v189;
        (*v189)(v185, v68, v67);
        v27 = v67;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_22958AD88(0, *(v60 + 2) + 1, 1, v60);
        }

        v26 = v176;
        v71 = *(v60 + 2);
        v70 = *(v60 + 3);
        v18 = v71 + 1;
        if (v71 >= v70 >> 1)
        {
          v60 = sub_22958AD88(v70 > 1, v71 + 1, 1, v60);
        }

        *(v60 + 2) = v18;
        v69(&v60[((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v71], v185, v67);
        v44 = v179;
      }

      else
      {
      }

      ++v10;
      if (v62 == v44)
      {
        goto LABEL_50;
      }
    }

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
    ;
  }

  v60 = MEMORY[0x277D84F90];
LABEL_50:
  v72 = v60;

  v73 = v170;
  v74 = sub_2296B6AF0(v170);
  v76 = v75;
  v26 = v77;
  result = [v73 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    goto LABEL_156;
  }

  v78 = result;
  v79 = [result cloudInfo];

  v80 = v184;
  if (!v79)
  {
LABEL_57:
    v82 = 0;
    goto LABEL_58;
  }

  if (![v79 hasCloudState])
  {

    goto LABEL_57;
  }

  v81 = [v79 firstCloudImportComplete];

  if (v81)
  {
    v82 = 1;
  }

  else
  {
    v82 = 2;
  }

LABEL_58:
  result = [v73 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    goto LABEL_157;
  }

  v83 = result;
  v84 = [result wifiInfo];

  v158 = v84;
  if (v84)
  {
    v85 = [v84 networkRSSI];

    if (v85 >= -80)
    {
      if (v85 >= -60)
      {
        LODWORD(v84) = (v85 >> 31) & 3;
      }

      else
      {
        LODWORD(v84) = 2;
      }
    }

    else
    {
      LODWORD(v84) = 1;
    }
  }

  result = [v73 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    goto LABEL_158;
  }

  v86 = result;
  v185 = v74;
  v18 = [result numResidents];

  result = [v73 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v87 = result;
  v154 = v18;
  v155 = v84;
  v156 = v82;
  v157 = v26;
  v172 = v72;
  v153 = [result numAppleMediaAccessories];

  result = [v73 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
LABEL_160:
    __break(1u);
    return result;
  }

  v88 = result;
  v152 = [result primaryResidentStatus];

  v89 = *(v169 + 7);
  v189 = (v169 + 56);
  v183 = v89;
  v89(v181, 1, 1, v80);
  v163 = v76;
  v90 = *(v76 + 16);
  v44 = v166;
  if (v90)
  {
    v91 = *(v169 + 2);
    v92 = v163 + ((v169[80] + 32) & ~v169[80]);
    v93 = *(v169 + 9);
    v94 = (v169 + 8);
    v18 = (v169 + 32);
    v95 = v184;
    v91(v166, v92, v184);
    while (1)
    {
      if (sub_22A4DBC2C())
      {
        v26 = v181;
        sub_22953EAE4(v181, &qword_27D8814C0, &unk_22A583F10);
        (*v18)(v26, v44, v95);
        v183(v26, 0, 1, v95);
      }

      else
      {
        (*v94)(v44, v95);
      }

      v92 += v93;
      if (!--v90)
      {
        break;
      }

      v91(v44, v92, v95);
    }
  }

  v40 = v185;
  v10 = *(v185 + 2);
  LODWORD(v183) = *MEMORY[0x277D0EFC8];
  v189 = v10;
  if (v10)
  {
    v96 = 0;
    LODWORD(v166) = 0;
    v161 = 0;
    v162 = 0;
    v179 = &v185[(*(v190 + 80) + 32) & ~*(v190 + 80)];
    v178 = (v190 + 16);
    v176 = (v169 + 48);
    v170 = (v169 + 16);
    v169 += 8;
    v165 = (v164 + 88);
    LODWORD(v180) = *MEMORY[0x277D0EFC0];
    v97 = (v164 + 8);
    v98 = (v164 + 104);
    v175 = (v190 + 8);
    v151 = v10 - 1;
    v99 = v150;
    v27 = v184;
LABEL_77:
    v26 = v96;
    while (1)
    {
      if (v26 >= *(v40 + 16))
      {
        goto LABEL_147;
      }

      (*(v190 + 16))(v99, v179 + *(v190 + 72) * v26, v192);
      v18 = sub_22A4DBACC();
      v101 = v100;
      v102 = v181;
      if ((*v176)(v181, 1, v27))
      {

        v103 = v188;
      }

      else
      {
        v104 = v171;
        (*v170)(v171, v102, v27);
        v105 = sub_22A4DBBBC();
        v107 = v106;
        (*v169)(v104, v27);
        if (v18 == v105 && v101 == v107)
        {

          v103 = v188;
          v40 = v185;
        }

        else
        {
          v18 = sub_22A4DE60C();

          v103 = v188;
          v40 = v185;
          if ((v18 & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        v18 = v168;
        sub_22A4DBADC();
        v108 = (*v165)(v18, v193);
        if (v108 == v180)
        {
          v109 = 2;
        }

        else if (v108 == v183)
        {
          v109 = 1;
        }

        else
        {
          (*v97)(v168, v193);
          v109 = 3;
        }

        LODWORD(v166) = v109;
      }

LABEL_91:
      v110 = *(sub_22A4DBA9C() + 16);

      if (v110 || (v44 = *(sub_22A4DBAAC() + 16), , v44))
      {
        v111 = v191;
        v44 = v99;
        sub_22A4DBADC();
        v18 = *v98;
        v112 = v193;
        (*v98)(v103, v183, v193);
        v113 = sub_22A4DBC4C();
        v114 = *v97;
        (*v97)(v103, v112);
        v114(v111, v112);
        if (v113)
        {
          (*v175)(v44, v192);
          v96 = v26 + 1;
          v162 = 1;
          v115 = v151 == v26;
          v99 = v44;
          v27 = v184;
          v40 = v185;
          goto LABEL_100;
        }

        sub_22A4DBADC();
        (v18)(v103, v180, v112);
        v18 = sub_22A4DBC4C();
        v114(v103, v112);
        v114(v111, v112);
        (*v175)(v44, v192);
        v99 = v44;
        v27 = v184;
        v40 = v185;
        if (v18)
        {
          v96 = v26 + 1;
          v161 = 1;
          v115 = v151 == v26;
LABEL_100:
          v10 = v189;
          if (v115)
          {
            goto LABEL_104;
          }

          goto LABEL_77;
        }
      }

      else
      {
        (*v175)(v99, v192);
      }

      ++v26;
      v10 = v189;
      if (v189 == v26)
      {
        goto LABEL_104;
      }
    }
  }

  LODWORD(v166) = 0;
  v161 = 0;
  v162 = 0;
LABEL_104:
  v116 = 0;
  v184 = v190 + 16;
  v179 = (v164 + 8);
  v180 = v164 + 104;
  v178 = (v190 + 8);
  v27 = v192;
  v117 = v193;
  v118 = v188;
  do
  {
    v176 = v116;
    if (v10 == v116)
    {
      break;
    }

    v26 = v116;
    if (v116 >= *(v185 + 2))
    {
      goto LABEL_148;
    }

    v119 = v190;
    v44 = v174;
    (*(v190 + 16))(v174, &v185[((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v116++], v27);
    v26 = v191;
    sub_22A4DBADC();
    (*v180)(v118, v183, v117);
    v40 = sub_22A4DBC4C();
    v18 = *v179;
    (*v179)(v118, v117);
    (v18)(v26, v117);
    v120 = *(v119 + 8);
    v10 = v189;
    v120(v44, v27);
  }

  while ((v40 & 1) == 0);
  v121 = 0;
  LODWORD(v183) = *MEMORY[0x277D0EFC0];
  v27 = v160;
  v40 = v185;
  do
  {
    v18 = v121;
    if (v10 == v121)
    {
      break;
    }

    if (v121 >= *(v40 + 16))
    {
      goto LABEL_149;
    }

    v122 = v190;
    v26 = v192;
    (*(v190 + 16))(v27, v40 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v121++, v192);
    sub_22A4DBADC();
    v123 = v188;
    (*v180)(v188, v183, v117);
    v44 = sub_22A4DBC4C();
    v124 = *v179;
    v125 = v123;
    v126 = v191;
    (*v179)(v125, v193);
    v124(v126, v193);
    v117 = v193;
    v127 = *(v122 + 8);
    v10 = v189;
    v127(v27, v26);
  }

  while ((v44 & 1) == 0);
  v128 = *(v173 + 2);
  if (v128)
  {
    v129 = 0;
    v130 = v187;
    v27 = &v173[(*(v186 + 80) + 32) & ~*(v186 + 80)];
    v40 = v186 + 8;
    v10 = v149;
    while (1)
    {
      if (v129 >= *(v173 + 2))
      {
        goto LABEL_150;
      }

      (*(v186 + 16))(v10, v27 + *(v186 + 72) * v129, v130);
      v44 = v10;
      v131 = sub_22A4DBB2C();
      v26 = v132;
      if (v182)
      {
        if (v131 == v177 && v132 == v182)
        {

          (*v40)(v10, v187);
LABEL_125:
          v133 = 1;
LABEL_126:
          v10 = v189;
          goto LABEL_127;
        }

        v44 = sub_22A4DE60C();

        (*v40)(v10, v187);
        if (v44)
        {
          goto LABEL_125;
        }
      }

      else
      {
        (*v40)(v10, v130);
      }

      if (v128 == ++v129)
      {
        v133 = 0;
        goto LABEL_126;
      }
    }
  }

  v133 = 0;
LABEL_127:

  v40 = *(v172 + 2);
  v26 = v167;
  if (v40)
  {
    LODWORD(v193) = v133;
    v27 = 0;
    v134 = &v172[(*(v186 + 80) + 32) & ~*(v186 + 80)];
    v135 = (v186 + 8);
    while (1)
    {
      if (v27 >= *(v172 + 2))
      {
        goto LABEL_151;
      }

      v136 = v187;
      v44 = v26;
      (*(v186 + 16))(v26, v134 + *(v186 + 72) * v27, v187);
      v137 = sub_22A4DBB2C();
      if (v182)
      {
        if (v137 == v177 && v138 == v182)
        {

          (*v135)(v167, v187);
LABEL_140:
          v139 = 1;
LABEL_141:
          LOBYTE(v133) = v193;
          goto LABEL_142;
        }

        v44 = sub_22A4DE60C();

        v26 = v167;
        (*v135)(v167, v187);
        if (v44)
        {
          goto LABEL_140;
        }
      }

      else
      {
        (*v135)(v26, v136);
      }

      if (v40 == ++v27)
      {
        v139 = 0;
        goto LABEL_141;
      }
    }
  }

  v139 = 0;
LABEL_142:
  v140 = v10 != v18;
  v141 = v10 != v176;
  v142 = v158 != 0;

  v143 = v161 & 1;
  v144 = v162 & 1;
  v145 = v152 == 2;
  result = sub_22953EAE4(v181, &qword_27D8814C0, &unk_22A583F10);
  v146 = v159;
  *v159 = v141;
  v146[1] = v140;
  v146[2] = v166;
  v146[3] = v156;
  v146[4] = v144;
  v146[5] = v143;
  v146[6] = v133;
  v146[7] = v139;
  v146[8] = v145;
  v147 = v154;
  *(v146 + 2) = v153;
  *(v146 + 3) = v147;
  v146[32] = v155;
  v146[33] = v142;
  return result;
}

void sub_2297D06C8(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (**a8)(char *, uint64_t)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (**a15)(char *, uint64_t, uint64_t), char *a16, char *a17, uint64_t a18, uint64_t a19, char *a20, unsigned __int8 a21)
{
  v411 = a8;
  v365 = a4;
  v366 = a7;
  v395 = a6;
  v367 = a5;
  v364 = a3;
  v362 = a1;
  v363 = a2;
  v396 = a19;
  v390 = a18;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8814C0, &unk_22A583F10);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v398 = &v346 - v24;
  v415 = sub_22A4DBC5C();
  v374 = *(v415 - 8);
  v25 = *(v374 + 64);
  v26 = MEMORY[0x28223BE20](v415);
  v378 = &v346 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v413 = &v346 - v29;
  MEMORY[0x28223BE20](v28);
  v414 = &v346 - v30;
  v417 = sub_22A4DBAEC();
  v419 = *(v417 - 8);
  v31 = *(v419 + 64);
  v32 = MEMORY[0x28223BE20](v417);
  v386 = &v346 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v385 = &v346 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v349 = &v346 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v416 = &v346 - v39;
  MEMORY[0x28223BE20](v38);
  v418 = &v346 - v40;
  v399 = sub_22A4DBC3C();
  v394 = *(v399 - 8);
  v41 = *(v394 + 64);
  v42 = MEMORY[0x28223BE20](v399);
  v379 = &v346 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v387 = &v346 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v405 = &v346 - v47;
  MEMORY[0x28223BE20](v46);
  v408 = &v346 - v48;
  v49 = sub_22A4DBB4C();
  v50 = *(v49 - 8);
  v51 = *(v50 + 8);
  v52 = MEMORY[0x28223BE20](v49);
  v377 = &v346 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v348 = &v346 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v389 = &v346 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v388 = &v346 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v391 = &v346 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v392 = &v346 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v406 = &v346 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v407 = &v346 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v401 = &v346 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v409 = &v346 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v402 = &v346 - v73;
  MEMORY[0x28223BE20](v72);
  v75 = &v346 - v74;
  v373 = a17;
  if (!a17)
  {
    goto LABEL_9;
  }

  v76 = [v373 appleMediaAccessoryDiagnosticInfo];
  if (!v76)
  {
    goto LABEL_271;
  }

  v77 = v76;
  v78 = [v76 idsInfo];

  if (!v78)
  {
LABEL_272:
    __break(1u);
    goto LABEL_273;
  }

  v79 = [v78 idsIdentifierString];

  if (!v79)
  {
LABEL_9:
    v83 = v396 == 0;
    goto LABEL_10;
  }

  v80 = sub_22A4DD5EC();
  v82 = v81;

  if (v396)
  {
    if (v80 == v390 && v82 == v396)
    {

      v83 = 1;
LABEL_10:
      v361 = v83;
      goto LABEL_11;
    }

    v361 = sub_22A4DE60C();
  }

  else
  {

    v361 = 0;
  }

LABEL_11:
  v376 = a20;
  if (a20)
  {
    v84 = [v376 appleMediaAccessoryDiagnosticInfo];
    if (v84)
    {
      v85 = v84;
      v86 = [v84 nearbyVisibleDeviceInfos];

      if (v86)
      {
        *&v435[0] = 0;
        sub_229562F68(0, &qword_27D87D790, 0x277CD16D8);
        sub_22A4DD82C();

        v87 = *&v435[0];
        if (*&v435[0])
        {
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }

LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
    return;
  }

LABEL_15:

  v87 = MEMORY[0x277D84F90];
LABEL_16:
  if (v87 >> 62)
  {
    goto LABEL_67;
  }

  for (i = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
  {
    v360 = a9;
    v400 = v49;
    v397 = v50;
    if (i)
    {
      v89 = 0;
      v403 = v87 & 0xFFFFFFFFFFFFFF8;
      v404 = (v87 & 0xC000000000000001);
      v410 = v50 + 32;
      v90 = MEMORY[0x277D84F90];
      v393 = v87;
      v384 = i;
      while (1)
      {
        if (v404)
        {
          v91 = MEMORY[0x22AAD13F0](v89, v87);
        }

        else
        {
          if (v89 >= *(v403 + 16))
          {
            goto LABEL_64;
          }

          v91 = *(v87 + 8 * v89 + 32);
        }

        v50 = v91;
        v92 = v89 + 1;
        if (__OFADD__(v89, 1))
        {
          break;
        }

        v93 = [v91 idsIdentifierString];
        if (v93)
        {
          a9 = v75;
          v412 = v90;
          v94 = v93;
          sub_22A4DD5EC();

          v95 = [v50 mediaRouteIdString];
          if (v95)
          {
            v96 = v95;
            sub_22A4DD5EC();
          }

          v97 = v402;
          sub_22A4DBB1C();

          v98 = *v410;
          v49 = v400;
          (*v410)(v75, v97, v400);
          v99 = v412;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v99 = sub_22958AD88(0, v99[2] + 1, 1, v99);
          }

          v50 = v397;
          v101 = v99[2];
          v100 = v99[3];
          v102 = v99;
          if (v101 >= v100 >> 1)
          {
            v102 = sub_22958AD88(v100 > 1, v101 + 1, 1, v99);
          }

          *(v102 + 16) = v101 + 1;
          v90 = v102;
          v98(v102 + ((v50[80] + 32) & ~v50[80]) + *(v50 + 9) * v101, v75, v49);
          v87 = v393;
          i = v384;
        }

        else
        {

          v49 = v400;
          v50 = v397;
        }

        ++v89;
        if (v92 == i)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v90 = MEMORY[0x277D84F90];
LABEL_36:
    v412 = v90;

    if (v376)
    {
      v103 = [v376 appleMediaAccessoryDiagnosticInfo];
      if (!v103)
      {
        goto LABEL_274;
      }

      v104 = v103;
      v105 = [v103 networkVisibleDeviceInfos];

      v87 = MEMORY[0x277D84F90];
      if (v105)
      {
        *&v435[0] = 0;
        sub_229562F68(0, &qword_27D87D790, 0x277CD16D8);
        sub_22A4DD82C();

        if (*&v435[0])
        {
          v87 = *&v435[0];
        }
      }
    }

    else
    {
      v87 = MEMORY[0x277D84F90];
    }

    if (!(v87 >> 62))
    {
      a9 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a9)
      {
        break;
      }

      goto LABEL_45;
    }

    a9 = sub_22A4DE0EC();
    if (!a9)
    {
      break;
    }

LABEL_45:
    v106 = 0;
    v403 = v87 & 0xFFFFFFFFFFFFFF8;
    v404 = (v87 & 0xC000000000000001);
    v410 = v50 + 32;
    v107 = MEMORY[0x277D84F90];
    v402 = v87;
    v393 = a9;
    while (1)
    {
      if (v404)
      {
        v108 = MEMORY[0x22AAD13F0](v106, v87);
      }

      else
      {
        if (v106 >= *(v403 + 16))
        {
          goto LABEL_66;
        }

        v108 = *(v87 + 8 * v106 + 32);
      }

      v75 = v108;
      v109 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        break;
      }

      v110 = [v108 idsIdentifierString];
      if (v110)
      {
        v111 = v110;
        sub_22A4DD5EC();

        v112 = [v75 mediaRouteIdString];
        if (v112)
        {
          v113 = v112;
          sub_22A4DD5EC();
        }

        v114 = v401;
        sub_22A4DBB1C();

        v115 = *v410;
        v49 = v400;
        (*v410)(v409, v114, v400);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v397;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v107 = sub_22958AD88(0, v107[2] + 1, 1, v107);
        }

        a9 = v393;
        v118 = v107[2];
        v117 = v107[3];
        v119 = v107;
        if (v118 >= v117 >> 1)
        {
          v119 = sub_22958AD88(v117 > 1, v118 + 1, 1, v107);
        }

        *(v119 + 16) = v118 + 1;
        v107 = v119;
        v115(v119 + ((v50[80] + 32) & ~v50[80]) + *(v50 + 9) * v118, v409, v49);
        v87 = v402;
      }

      else
      {
      }

      ++v106;
      if (v109 == a9)
      {
        goto LABEL_70;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    ;
  }

  v107 = MEMORY[0x277D84F90];
LABEL_70:
  v401 = a16;
  v375 = a11;
  v357 = a21;
  v404 = a15;
  v359 = a14;
  v370 = a12;
  v358 = a13;

  v120 = 0;
  v121 = v107;
  v122 = v107[2];
  v402 = v50 + 16;
  v403 = (v50 + 8);
  do
  {
    v124 = v120;
    if (v122 == v120)
    {
      break;
    }

    if (v120 >= v121[2])
    {
      goto LABEL_263;
    }

    (*(v50 + 2))(v407, v121 + ((v50[80] + 32) & ~v50[80]) + *(v50 + 9) * v120, v49);
    if (sub_22A4DBB2C() == v411 && v125 == a10)
    {

      (*v403)(v407, v49);
      break;
    }

    ++v120;
    v123 = sub_22A4DE60C();

    (*v403)(v407, v49);
  }

  while ((v123 & 1) == 0);
  v356 = v124;
  v126 = 0;
  v393 = v412[2];
  do
  {
    v128 = v126;
    if (v393 == v126)
    {
      break;
    }

    if (v126 >= v412[2])
    {
      goto LABEL_264;
    }

    (*(v50 + 2))(v406, v412 + ((v50[80] + 32) & ~v50[80]) + *(v50 + 9) * v126, v49);
    if (sub_22A4DBB2C() == v411 && v129 == a10)
    {

      (*v403)(v406, v49);
      break;
    }

    ++v126;
    v127 = sub_22A4DE60C();

    (*v403)(v406, v49);
  }

  while ((v127 & 1) == 0);
  v355 = v128;
  v130 = 0;
  v131 = v375;
  do
  {
    if (v122 == v130)
    {
      v354 = v130;
      goto LABEL_93;
    }

    if (v130 >= v121[2])
    {
      goto LABEL_265;
    }

    (*(v50 + 2))(v392, v121 + ((v50[80] + 32) & ~v50[80]) + *(v50 + 9) * v130, v49);
    if (sub_22A4DBB2C() == v404 && v134 == v401)
    {
      v354 = v130;

      (*v403)(v392, v49);
      goto LABEL_93;
    }

    v132 = v130++;
    v133 = sub_22A4DE60C();

    (*v403)(v392, v49);
  }

  while ((v133 & 1) == 0);
  v354 = v132;
LABEL_93:

  v135 = 0;
  v136 = v399;
  do
  {
    v392 = v135;
    if (v393 == v135)
    {
      break;
    }

    if (v135 >= v412[2])
    {
      goto LABEL_266;
    }

    (*(v50 + 2))(v391, v412 + ((v50[80] + 32) & ~v50[80]) + *(v50 + 9) * v135, v49);
    if (sub_22A4DBB2C() == v404 && v138 == v401)
    {

      (*v403)(v391, v49);
      break;
    }

    v135 = v392 + 1;
    v137 = sub_22A4DE60C();

    (*v403)(v391, v49);
  }

  while ((v137 & 1) == 0);

  v431 = MEMORY[0x277D84FA0];
  v432 = MEMORY[0x277D84FA0];
  v429 = MEMORY[0x277D84FA0];
  v430 = MEMORY[0x277D84FA0];
  v427 = MEMORY[0x277D84FA0];
  v428 = MEMORY[0x277D84FA0];
  v371 = xmmword_22A57B4D0;
  v372 = 0u;
  v353 = v122;
  if (v376)
  {
    v139 = v376;
    sub_2297CEFC0(v139, v390, v396, v433);
    v350 = v433[0];
    v351 = v433[1];
    v352 = v434;
    v412 = sub_2296B6AF0(v139);
    v384 = v141;
    v347 = v140;
    if (v140)
    {
      v142 = v140;
      v143 = [v140 SSID];
      if (v143)
      {
        v144 = v142;
        v145 = v143;
        v146 = sub_22A4DD5EC();
        v148 = v147;

        sub_229570788(v435, v146, v148);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22A576180;
        *(inited + 32) = v146;
        *(inited + 40) = v148;
        v369 = sub_229760F9C(inited, MEMORY[0x277D84FA0]);
        swift_setDeallocating();
        v150 = *(inited + 16);
        v142 = v144;
        swift_arrayDestroy();
      }

      else
      {
        v369 = MEMORY[0x277D84FA0];
      }

      v152 = [v142 networkBSSID];
      if (v152)
      {
        v153 = v152;
        v154 = sub_22A4DD5EC();
        v156 = v155;

        sub_229570788(v435, v154, v156);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
        v157 = swift_initStackObject();
        *(v157 + 16) = xmmword_22A576180;
        *(v157 + 32) = v154;
        *(v157 + 40) = v156;
        v368 = sub_229760F9C(v157, MEMORY[0x277D84FA0]);
        swift_setDeallocating();
        v158 = *(v157 + 16);
        swift_arrayDestroy();
      }

      else
      {
        v368 = MEMORY[0x277D84FA0];
      }

      v136 = v399;
      v131 = v375;
    }

    else
    {
      v368 = MEMORY[0x277D84FA0];
      v369 = MEMORY[0x277D84FA0];
    }

    v159 = v384;
    v383 = *(v384 + 16);
    if (v383)
    {
      v346 = v139;
      v411 = v412[2];
      v382 = (v384 + ((*(v394 + 80) + 32) & ~*(v394 + 80)));
      v381 = v394 + 16;
      v409 = v419 + 16;
      v410 = (v419 + 8);
      LODWORD(v407) = *MEMORY[0x277D0EFB8];
      v406 = (v374 + 104);
      v160 = (v374 + 8);
      v380 = (v394 + 8);

      v161 = 0;
      v162 = v417;
      v163 = v408;
      v164 = v418;
      while (1)
      {
        if (v161 >= *(v159 + 16))
        {
          goto LABEL_267;
        }

        v166 = *(v394 + 72);
        v391 = v161;
        (*(v394 + 16))(v163, v382 + v166 * v161, v136);
        if (!v411)
        {
LABEL_114:
          v136 = v399;
          (*v380)(v163, v399);
          v159 = v384;
          v165 = v391;
          goto LABEL_115;
        }

        v167 = 0;
        v168 = v412 + ((*(v419 + 80) + 32) & ~*(v419 + 80));
        while (1)
        {
          if (v167 >= v412[2])
          {
            __break(1u);
LABEL_261:
            __break(1u);
LABEL_262:
            __break(1u);
LABEL_263:
            __break(1u);
LABEL_264:
            __break(1u);
LABEL_265:
            __break(1u);
LABEL_266:
            __break(1u);
LABEL_267:
            __break(1u);
LABEL_268:
            __break(1u);
LABEL_269:
            __break(1u);
LABEL_270:
            __break(1u);
LABEL_271:
            __break(1u);
            goto LABEL_272;
          }

          (*(v419 + 16))(v418, &v168[*(v419 + 72) * v167], v162);
          v169 = sub_22A4DBACC();
          v171 = v170;
          if (v169 == sub_22A4DBBBC() && v171 == v172)
          {
            break;
          }

          v173 = sub_22A4DE60C();

          if (v173)
          {
            goto LABEL_126;
          }

          (*v410)(v418, v162);
LABEL_120:
          if (v411 == ++v167)
          {
            goto LABEL_114;
          }
        }

LABEL_126:
        v174 = v414;
        sub_22A4DBADC();
        v175 = v413;
        v176 = v415;
        (*v406)(v413, v407, v415);
        sub_2297D3180();
        v177 = sub_22A4DD58C();
        v178 = *v160;
        (*v160)(v175, v176);
        v179 = v174;
        v163 = v408;
        v162 = v417;
        v178(v179, v176);
        (*v410)(v164, v162);
        if (v177)
        {
          goto LABEL_120;
        }

        v180 = sub_22A4DBBEC();
        if (v181)
        {
          v182 = v180;
          v183 = v181;

          sub_229570788(v435, v182, v183);

          sub_229570788(v435, v182, v183);
        }

        v184 = sub_22A4DBBFC();
        v136 = v399;
        v159 = v384;
        v165 = v391;
        if (v185)
        {
          sub_229570788(v435, v184, v185);
        }

        (*v380)(v163, v136);
LABEL_115:
        v161 = v165 + 1;
        if (v161 == v383)
        {

          v49 = v400;
          v50 = v397;
          v131 = v375;
          v139 = v346;
          break;
        }
      }
    }

    v151 = v373;
    if (v373)
    {
      goto LABEL_134;
    }

LABEL_105:
    LODWORD(v381) = 0;
    goto LABEL_162;
  }

  v352 = 0;
  v368 = MEMORY[0x277D84FA0];
  v369 = MEMORY[0x277D84FA0];
  v350 = xmmword_22A57B4D0;
  v351 = 0uLL;
  v151 = v373;
  if (!v373)
  {
    goto LABEL_105;
  }

LABEL_134:
  v186 = v151;
  sub_2297CEFC0(v186, v390, v396, v435);
  v371 = v435[0];
  v372 = v435[1];
  LODWORD(v381) = v436;
  v347 = v186;
  v418 = sub_2296B6AF0(v186);
  v189 = v188;
  v380 = v187;
  if (v187)
  {
    v190 = [v187 SSID];
    if (v190)
    {
      v191 = v190;
      v192 = sub_22A4DD5EC();
      v194 = v193;

      sub_229570788(&v420, v192, v194);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
      v195 = swift_initStackObject();
      *(v195 + 16) = xmmword_22A576180;
      *(v195 + 32) = v192;
      *(v195 + 40) = v194;
      v369 = sub_229760F9C(v195, v369);
      swift_setDeallocating();
      v196 = *(v195 + 16);
      swift_arrayDestroy();
    }

    v197 = [v380 networkBSSID];
    if (v197)
    {
      v198 = v197;
      v199 = sub_22A4DD5EC();
      v201 = v200;

      sub_229570788(&v420, v199, v201);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
      v202 = swift_initStackObject();
      *(v202 + 16) = xmmword_22A576180;
      *(v202 + 32) = v199;
      *(v202 + 40) = v201;
      v368 = sub_229760F9C(v202, v368);
      swift_setDeallocating();
      v203 = *(v202 + 16);
      swift_arrayDestroy();
    }

    v131 = v375;
  }

  v406 = *(v189 + 16);
  if (v406)
  {
    v412 = *(v418 + 2);
    v391 = (v189 + ((*(v394 + 80) + 32) & ~*(v394 + 80)));
    v384 = v394 + 16;
    v410 = (v419 + 16);
    v411 = (v419 + 8);
    LODWORD(v409) = *MEMORY[0x277D0EFB8];
    v408 = (v374 + 104);
    v204 = (v374 + 8);
    v382 = (v394 + 8);

    v205 = 0;
    v206 = v417;
    v207 = v405;
    v383 = v189;
    v208 = v413;
    while (1)
    {
      if (v205 >= *(v189 + 16))
      {
        goto LABEL_268;
      }

      v209 = *(v394 + 72);
      v407 = v205;
      (*(v394 + 16))(v207, &v391[v209 * v205], v136);
      if (!v412)
      {
LABEL_142:
        v136 = v399;
        (*v382)(v207, v399);
        v189 = v383;
        goto LABEL_143;
      }

      v210 = 0;
      v211 = &v418[(*(v419 + 80) + 32) & ~*(v419 + 80)];
      while (1)
      {
        if (v210 >= *(v418 + 2))
        {
          goto LABEL_261;
        }

        (*(v419 + 16))(v416, &v211[*(v419 + 72) * v210], v206);
        v212 = sub_22A4DBACC();
        v214 = v213;
        if (v212 == sub_22A4DBBBC() && v214 == v215)
        {
          break;
        }

        v216 = sub_22A4DE60C();

        if (v216)
        {
          goto LABEL_154;
        }

        (*v411)(v416, v206);
LABEL_148:
        if (v412 == ++v210)
        {
          goto LABEL_142;
        }
      }

LABEL_154:
      v217 = v414;
      v218 = v416;
      sub_22A4DBADC();
      v219 = v415;
      (*v408)(v208, v409, v415);
      sub_2297D3180();
      v220 = sub_22A4DD58C();
      v221 = *v204;
      (*v204)(v208, v219);
      v222 = v217;
      v206 = v417;
      v221(v222, v219);
      v223 = v218;
      v207 = v405;
      (*v411)(v223, v206);
      if (v220)
      {
        goto LABEL_148;
      }

      v224 = sub_22A4DBBEC();
      if (v225)
      {
        v226 = v224;
        v227 = v225;

        sub_229570788(&v420, v226, v227);

        sub_229570788(&v420, v226, v227);
      }

      v228 = sub_22A4DBBFC();
      v136 = v399;
      v189 = v383;
      if (v229)
      {
        sub_229570788(&v420, v228, v229);
      }

      (*v382)(v207, v136);
LABEL_143:
      v205 = v407 + 1;
      if (v407 + 1 == v406)
      {

        v49 = v400;
        v50 = v397;
        v131 = v375;
        break;
      }
    }
  }

  v151 = v373;
LABEL_162:
  if (v367 <= -61)
  {
    v230 = 2;
  }

  else
  {
    v230 = (v367 >> 31) & 3;
  }

  if (v367 >= -80)
  {
    v231 = v230;
  }

  else
  {
    v231 = 1;
  }

  if (v151)
  {
    v232 = [v151 version];
    if ((v232 & 0x8000000000000000) != 0)
    {
      goto LABEL_269;
    }

    v233 = v376;
    if (!v376)
    {
      goto LABEL_174;
    }

LABEL_173:
    v233 = [v233 version];
    if ((v233 & 0x8000000000000000) != 0)
    {
      goto LABEL_270;
    }

    goto LABEL_174;
  }

  v232 = 0;
  v233 = v376;
  if (v376)
  {
    goto LABEL_173;
  }

LABEL_174:
  v382 = v233;
  v383 = v232;
  LODWORD(v380) = v231;
  v234 = 0;
  v235 = *(v131 + 16);
  do
  {
    v237 = v234;
    if (v235 == v234)
    {
      break;
    }

    (*(v50 + 2))(v388, v131 + ((v50[80] + 32) & ~v50[80]) + *(v50 + 9) * v234, v49);
    if (sub_22A4DBB2C() == v404 && v238 == v401)
    {

      (*v403)(v388, v49);
      break;
    }

    ++v234;
    v236 = sub_22A4DE60C();

    (*v403)(v388, v49);
  }

  while ((v236 & 1) == 0);
  v376 = v237;
  v388 = v235;
  v239 = 0;
  v240 = v370;
  v241 = *(v370 + 16);
  do
  {
    v243 = v239;
    if (v241 == v239)
    {
      break;
    }

    (*(v50 + 2))(v389, v240 + ((v50[80] + 32) & ~v50[80]) + *(v50 + 9) * v239, v49);
    if (sub_22A4DBB2C() == v404 && v244 == v401)
    {

      (*v403)(v389, v49);
      break;
    }

    ++v239;
    v242 = sub_22A4DE60C();

    (*v403)(v389, v49);
  }

  while ((v242 & 1) == 0);
  v245 = v365;
  v246 = [v365 SSID];
  v389 = v241;
  v373 = v243;
  if (v246)
  {

    v247 = [v245 networkBSSID];
    v248 = v366;
    v249 = v387;
    if (v247)
    {

      v367 = 1;
    }

    else
    {
      v367 = 0;
    }
  }

  else
  {
    v367 = 0;
    v248 = v366;
    v249 = v387;
  }

  v250 = *(v394 + 56);
  v418 = (v394 + 56);
  v416 = v250;
  (v250)(v398, 1, 1, v136);
  v251 = *(v248 + 16);
  if (v251)
  {
    v252 = *(v394 + 16);
    v253 = v248 + ((*(v394 + 80) + 32) & ~*(v394 + 80));
    v254 = *(v394 + 72);
    v412 = (v394 + 8);
    v255 = (v394 + 32);
    do
    {
      v256 = v249;
      v257 = v249;
      v258 = v399;
      v252(v256, v253, v399);
      if (sub_22A4DBC2C())
      {
        v259 = v252;
        v260 = v398;
        sub_22953EAE4(v398, &qword_27D8814C0, &unk_22A583F10);
        (*v255)(v260, v257, v258);
        v261 = v260;
        v252 = v259;
        (v416)(v261, 0, 1, v258);
      }

      else
      {
        (*v412)(v257, v258);
      }

      v253 += v254;
      --v251;
      v249 = v387;
    }

    while (v251);
  }

  v262 = *(v395 + 16);
  v418 = v262;
  if (!v262)
  {
    goto LABEL_224;
  }

  LODWORD(v391) = 0;
  LODWORD(v384) = 0;
  LODWORD(v387) = 0;
  v410 = (v395 + ((*(v419 + 80) + 32) & ~*(v419 + 80)));
  v409 = v419 + 16;
  v408 = (v394 + 48);
  v404 = (v394 + 16);
  v401 = (v394 + 8);
  v394 = v374 + 88;
  LODWORD(v411) = *MEMORY[0x277D0EFC0];
  LODWORD(v407) = *MEMORY[0x277D0EFC8];
  v263 = (v374 + 8);
  v406 = (v419 + 8);
  v264 = v413;
  v265 = v349;
  v405 = (v374 + 104);
  v266 = 0;
  do
  {
    while (1)
    {
      (*(v419 + 16))(v265, &v410[*(v419 + 72) * v266], v417);
      if (__OFADD__(v266, 1))
      {
        goto LABEL_262;
      }

      v412 = v266;
      v416 = (v266 + 1);
      v267 = sub_22A4DBACC();
      v269 = v268;
      v270 = v398;
      v271 = v399;
      if ((*v408)(v398, 1, v399))
      {
      }

      else
      {
        v272 = v379;
        (*v404)(v379, v270, v271);
        v273 = sub_22A4DBBBC();
        v275 = v274;
        (*v401)(v272, v271);
        if (v267 == v273 && v269 == v275)
        {

          v264 = v413;
        }

        else
        {
          v276 = sub_22A4DE60C();

          v264 = v413;
          if ((v276 & 1) == 0)
          {
            goto LABEL_215;
          }
        }

        v277 = v378;
        sub_22A4DBADC();
        v278 = v415;
        v279 = (*v394)(v277, v415);
        if (v279 == v411)
        {
          v280 = 2;
        }

        else if (v279 == v407)
        {
          v280 = 1;
        }

        else
        {
          (*v263)(v378, v278);
          v280 = 3;
        }

        LODWORD(v391) = v280;
      }

LABEL_215:
      v281 = *(sub_22A4DBA9C() + 16);

      if (!v281)
      {
        v282 = *(sub_22A4DBAAC() + 16);

        if (!v282)
        {
          (*v406)(v265, v417);
          break;
        }
      }

      v283 = v414;
      v284 = v265;
      sub_22A4DBADC();
      v285 = *v405;
      v286 = v415;
      (*v405)(v264, v407, v415);
      v287 = sub_22A4DBC4C();
      v288 = *v263;
      (*v263)(v264, v286);
      v288(v283, v286);
      if (v287)
      {
        (*v406)(v284, v417);
        LODWORD(v387) = 1;
        v262 = v418;
        v290 = v416;
        v265 = v284;
        if (v416 == v418)
        {
          goto LABEL_225;
        }

        goto LABEL_222;
      }

      sub_22A4DBADC();
      v285(v264, v411, v286);
      v289 = sub_22A4DBC4C();
      v288(v264, v286);
      v288(v283, v286);
      (*v406)(v284, v417);
      v265 = v284;
      if ((v289 & 1) == 0)
      {
        break;
      }

      LODWORD(v384) = 1;
      v262 = v418;
      v290 = v416;
      if (v416 == v418)
      {
        goto LABEL_225;
      }

LABEL_222:
      v266 = v290;
      if (v290 >= v262)
      {
        goto LABEL_223;
      }
    }

    v266 = v412 + 1;
    v262 = v418;
    if (v416 == v418)
    {
      goto LABEL_225;
    }
  }

  while (v266 < v418);
LABEL_223:
  __break(1u);
LABEL_224:
  LODWORD(v391) = 0;
  LODWORD(v384) = 0;
  LODWORD(v387) = 0;
LABEL_225:
  v291 = 0;
  v416 = (v419 + 16);
  LODWORD(v407) = *MEMORY[0x277D0EFC8];
  v412 = (v374 + 104);
  v411 = (v374 + 8);
  v410 = (v419 + 8);
  v292 = v414;
  v293 = v417;
  do
  {
    v408 = v291;
    if (v262 == v291)
    {
      break;
    }

    v294 = v419;
    v295 = v385;
    (*(v419 + 16))(v385, v395 + ((*(v294 + 80) + 32) & ~*(v294 + 80)) + *(v294 + 72) * v291++, v293);
    sub_22A4DBADC();
    v296 = v413;
    v297 = v415;
    (*v412)(v413, v407, v415);
    LODWORD(v409) = sub_22A4DBC4C();
    v298 = *v411;
    (*v411)(v296, v297);
    v298(v292, v297);
    v262 = v418;
    (*(v294 + 8))(v295, v293);
  }

  while ((v409 & 1) == 0);
  v299 = 0;
  LODWORD(v407) = *MEMORY[0x277D0EFC0];
  v300 = v417;
  do
  {
    v301 = v299;
    if (v262 == v299)
    {
      break;
    }

    v302 = v419;
    v303 = v386;
    (*(v419 + 16))(v386, v395 + ((*(v302 + 80) + 32) & ~*(v302 + 80)) + *(v302 + 72) * v299++, v300);
    sub_22A4DBADC();
    v304 = v413;
    v305 = v415;
    (*v412)(v413, v407, v415);
    LODWORD(v409) = sub_22A4DBC4C();
    v306 = *v411;
    v307 = v304;
    v308 = v414;
    (*v411)(v307, v305);
    v306(v308, v305);
    v262 = v418;
    (*(v302 + 8))(v303, v300);
  }

  while ((v409 & 1) == 0);
  v309 = v389;
  if (!v389)
  {
    LODWORD(v419) = 0;
    v311 = v398;
    goto LABEL_245;
  }

  v310 = v301;
  v311 = v398;
  v312 = v370 + ((v397[80] + 32) & ~v397[80]);
  v313 = *(v397 + 9);
  v314 = v389;
  v315 = *(v397 + 2);
  v316 = v348;
  v317 = v400;
  v315(v348, v312, v400);
  while (2)
  {
    v318 = sub_22A4DBB2C();
    if (!v396)
    {
      (*v403)(v316, v317);

LABEL_234:
      v312 += v313;
      --v314;
      v311 = v398;
      if (!v314)
      {
        LODWORD(v419) = 0;
        goto LABEL_244;
      }

      v315(v316, v312, v317);
      continue;
    }

    break;
  }

  if (v318 != v390 || v319 != v396)
  {
    v320 = sub_22A4DE60C();

    (*v403)(v316, v400);
    if (v320)
    {
      LODWORD(v419) = 1;
      v311 = v398;
      goto LABEL_244;
    }

    goto LABEL_234;
  }

  (*v403)(v316, v400);
  LODWORD(v419) = 1;
LABEL_244:
  v309 = v389;
  v301 = v310;
LABEL_245:
  v321 = v377;
  v322 = v388;
  if (!v388)
  {
    LODWORD(v412) = 0;
    goto LABEL_259;
  }

  v323 = v301;
  v324 = v375 + ((v397[80] + 32) & ~v397[80]);
  v325 = *(v397 + 9);
  v326 = *(v397 + 2);
  while (2)
  {
    v327 = v400;
    v326(v321, v324, v400);
    v328 = sub_22A4DBB2C();
    if (!v396)
    {
      (*v403)(v321, v327);

LABEL_248:
      v324 += v325;
      if (!--v322)
      {
        LODWORD(v412) = 0;
        goto LABEL_258;
      }

      continue;
    }

    break;
  }

  if (v328 != v390 || v329 != v396)
  {
    v330 = sub_22A4DE60C();

    v321 = v377;
    (*v403)(v377, v400);
    if (v330)
    {
      goto LABEL_257;
    }

    goto LABEL_248;
  }

  (*v403)(v377, v400);
LABEL_257:
  LODWORD(v412) = 1;
LABEL_258:
  v311 = v398;
  v309 = v389;
  v301 = v323;
LABEL_259:
  v331 = v418 != v301;
  v332 = v418 != v408;
  LODWORD(v411) = v396 != 0;
  LODWORD(v418) = v309 != v373;
  LODWORD(v416) = v388 != v376;
  LODWORD(v417) = v393 != v392;
  LODWORD(v414) = v353 != v354;
  LODWORD(v415) = v393 != v355;
  LODWORD(v413) = v353 != v356;
  LODWORD(v407) = v384 & 1;
  v333 = v387 & 1;
  sub_22953EAE4(v311, &qword_27D8814C0, &unk_22A583F10);
  v410 = *(v432 + 16);
  v334 = v363;

  v409 = *(v431 + 16);

  v408 = *(v369 + 16);

  v335 = *(v368 + 16);

  v336 = *(v430 + 16);

  v337 = *(v427 + 16);

  v338 = sub_22966FDBC(v429, v428);

  v339 = v338[2];

  v340 = v360;
  *v360 = v362;
  v340[1] = v334;
  *(v340 + 16) = v364;
  *(v340 + 24) = v332;
  *(v340 + 25) = v331;
  *(v340 + 17) = v420;
  *(v340 + 5) = *(&v420 + 3);
  v341 = v361 & 1;
  v342 = v357 & 1;
  *(v340 + 26) = v391;
  *(v340 + 27) = 1;
  *(v340 + 28) = v333;
  *(v340 + 29) = v407;
  *(v340 + 30) = v419;
  *(v340 + 31) = v412;
  *(v340 + 32) = v411;
  v340[5] = v359;
  v340[6] = v358;
  *(v340 + 56) = v380;
  *(v340 + 57) = v367;
  *(v340 + 58) = v425;
  *(v340 + 31) = v426;
  v343 = v372;
  *(v340 + 4) = v371;
  *(v340 + 5) = v343;
  *(v340 + 48) = v381;
  *(v340 + 98) = v423;
  *(v340 + 51) = v424;
  v344 = v351;
  *(v340 + 13) = v350;
  *(v340 + 15) = v344;
  *(v340 + 68) = v352;
  *(v340 + 71) = v422;
  *(v340 + 138) = v421;
  v340[18] = v410;
  v340[19] = v409;
  v340[20] = v408;
  v340[21] = v335;
  v340[22] = v336;
  v340[23] = v337;
  *(v340 + 192) = v416;
  *(v340 + 193) = v418;
  *(v340 + 194) = v414;
  *(v340 + 195) = v417;
  *(v340 + 196) = v413;
  *(v340 + 197) = v415;
  v345 = v383;
  v340[25] = v339;
  v340[26] = v345;
  v340[27] = v382;
  *(v340 + 224) = v341;
  *(v340 + 225) = v342;
}

unint64_t sub_2297D3180()
{
  result = qword_27D8814C8;
  if (!qword_27D8814C8)
  {
    sub_22A4DBC5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8814C8);
  }

  return result;
}

__n128 __swift_memcpy226_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 112);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_2297D3224(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 226))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2297D326C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *(result + 224) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 226) = 1;
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

    *(result + 226) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Metric.Setup.PrimaryResidentWiFiInfosFetch(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Metric.Setup.PrimaryResidentWiFiInfosFetch(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2297D33B0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[34])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2297D3404(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2297D3480()
{
  result = qword_27D8814F0;
  if (!qword_27D8814F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8814F0);
  }

  return result;
}

unint64_t sub_2297D3508()
{
  result = qword_27D8814F8;
  if (!qword_27D8814F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8814F8);
  }

  return result;
}

unint64_t sub_2297D3560()
{
  result = qword_27D881500;
  if (!qword_27D881500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881500);
  }

  return result;
}

unint64_t sub_2297D35B8()
{
  result = qword_27D881508;
  if (!qword_27D881508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881508);
  }

  return result;
}

uint64_t sub_2297D361C()
{
  *(v1 + 56) = v0;
  *(v1 + 64) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_2297D368C, 0, 0);
}

uint64_t sub_2297D368C()
{
  v1 = v0[7];
  v2 = [v1 swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v3 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_climateStorage);
  os_unfair_lock_lock(v3);
  sub_22978620C(&v3[2], v1, v0 + 2);
  os_unfair_lock_unlock(v3);
  swift_unknownObjectRelease();
  v4 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_2297D37D4;

  return sub_2296C31A8();
}

uint64_t sub_2297D37D4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 72);
  v8 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v9 = sub_2297D3970;
  }

  else
  {
    *(v6 + 88) = a2;
    *(v6 + 96) = a1;
    v9 = sub_2297D3908;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2297D3908()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v3 = v0[11];
  v2 = v0[12];

  return v1(v2, v3);
}

uint64_t sub_2297D3970()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t sub_2297D39D4()
{
  *(v1 + 56) = v0;
  *(v1 + 64) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_2297D3A44, 0, 0);
}

uint64_t sub_2297D3A44()
{
  v1 = v0[7];
  v2 = [v1 swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v3 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_climateStorage);
  os_unfair_lock_lock(v3);
  sub_22978620C(&v3[2], v1, v0 + 2);
  os_unfair_lock_unlock(v3);
  swift_unknownObjectRelease();
  v4 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_2297D3B8C;

  return sub_2296C50B4();
}

uint64_t sub_2297D3B8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_2297D3970;
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = sub_2297D3CB4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2297D3CB4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_2297D3D1C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  return sub_22A4DD8FC();
}

id sub_2297D3DA8()
{
  v1 = sub_22A4DB7DC();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  MEMORY[0x28223BE20](v1);
  v43 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22A4DD07C();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = v0;
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 services];
  sub_229562F68(0, &unk_27D87D360, off_278666310);
  v8 = sub_22A4DD83C();

  if (v8 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v10 = 0;
    v51 = v8 & 0xC000000000000001;
    v11 = *MEMORY[0x277CD0F30];
    v50 = *MEMORY[0x277CD0E60];
    while (1)
    {
      if (v51)
      {
        v12 = MEMORY[0x22AAD13F0](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = [v12 serviceType];
      v16 = sub_22A4DD5EC();
      v18 = v17;

      if (v16 == sub_22A4DD5EC() && v18 == v19)
      {
        goto LABEL_19;
      }

      v21 = sub_22A4DE60C();

      if (v21)
      {
        goto LABEL_20;
      }

      v22 = [v13 serviceType];
      v23 = sub_22A4DD5EC();
      v25 = v24;

      if (v23 == sub_22A4DD5EC() && v25 == v26)
      {
LABEL_19:

LABEL_20:

        v28 = [v13 matterEndpointID];

        return v28;
      }

      v27 = sub_22A4DE60C();

      if (v27)
      {
        goto LABEL_20;
      }

      ++v10;
      if (v14 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:

  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  v30 = v49;
  sub_22A4DD08C();
  v31 = v48;
  v32 = sub_22A4DD05C();
  v33 = sub_22A4DDCEC();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v52 = v35;
    *v34 = 136315394;
    v36 = [v31 uuid];
    v37 = v43;
    sub_22A4DB79C();

    sub_2297E3070(&qword_281403860, MEMORY[0x277CC95F0]);
    v38 = v45;
    v39 = sub_22A4DE5CC();
    v41 = v40;
    (*(v44 + 8))(v37, v38);
    v42 = sub_2295A3E30(v39, v41, &v52);

    *(v34 + 4) = v42;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_2295A3E30(0xD000000000000018, 0x800000022A597160, &v52);
    _os_log_impl(&dword_229538000, v32, v33, "[%s] %s Unable to find thermostat service", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v35, -1, -1);
    MEMORY[0x22AAD4E50](v34, -1, -1);
  }

  (*(v46 + 8))(v30, v47);
  return 0;
}

id sub_2297D42FC(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v80 - v10;
  v12 = [v2 home];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_msgSend(v12 featuresDataSource)];
    swift_unknownObjectRelease();
    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_22A584290;
      *(v15 + 32) = [objc_opt_self() policyWithOperationTypes_];
      v16 = objc_opt_self();
      *(v15 + 40) = [v16 policyWithEntitlements_];
      *(v15 + 48) = [objc_opt_self() defaultSecurePolicy];
      *(v15 + 56) = [objc_allocWithZone(HMDHomeAdministratorHandlerMessagePolicy) init];
      v17 = [a1 name];
      v18 = *MEMORY[0x277CCECF8];
      v19 = sub_22A4DD5EC();
      v21 = v20;
      if (v19 == sub_22A4DD5EC() && v21 == v22)
      {
        goto LABEL_5;
      }

      v43 = sub_22A4DE60C();

      if (v43)
      {
        goto LABEL_12;
      }

      v17 = [a1 name];
      v48 = *MEMORY[0x277CCED00];
      v49 = sub_22A4DD5EC();
      v51 = v50;
      if (v49 == sub_22A4DD5EC() && v51 == v52)
      {
        goto LABEL_5;
      }

      v53 = sub_22A4DE60C();

      if (v53)
      {
        goto LABEL_12;
      }

      v17 = [a1 name];
      v54 = *MEMORY[0x277CCF098];
      v55 = sub_22A4DD5EC();
      v57 = v56;
      if (v55 == sub_22A4DD5EC() && v57 == v58)
      {
        goto LABEL_5;
      }

      v59 = sub_22A4DE60C();

      if (v59)
      {
        goto LABEL_12;
      }

      v17 = [a1 name];
      v60 = *MEMORY[0x277CD0F68];
      v61 = sub_22A4DD5EC();
      v63 = v62;
      if (v61 == sub_22A4DD5EC() && v63 == v64)
      {
LABEL_5:

LABEL_12:
        v44 = [a1 name];
        sub_229562F68(0, qword_281401B40, 0x277D0F838);
        v45 = sub_22A4DD81C();

        v46 = HMFCreateMessageBindingWithReceiver();

        return v46;
      }

      v65 = sub_22A4DE60C();

      if (v65)
      {
        goto LABEL_12;
      }

      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_22A576190;
      *(v66 + 32) = [v16 policyWithEntitlements_];
      v67 = [a1 name];
      v68 = *MEMORY[0x277CCFD40];
      v69 = sub_22A4DD5EC();
      v71 = v70;
      if (v69 == sub_22A4DD5EC() && v71 == v72)
      {
        goto LABEL_33;
      }

      v73 = sub_22A4DE60C();

      if (v73)
      {
        goto LABEL_12;
      }

      v67 = [a1 name];
      v74 = *MEMORY[0x277CCF090];
      v75 = sub_22A4DD5EC();
      v77 = v76;
      if (v75 == sub_22A4DD5EC() && v77 == v78)
      {
LABEL_33:

        goto LABEL_12;
      }

      v79 = sub_22A4DE60C();

      if (v79)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v33 = v2;
      v34 = sub_22A4DD05C();
      v35 = sub_22A4DDCEC();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 136315394;
        v81 = 91;
        v82 = 0xE100000000000000;
        v83 = v37;
        v38 = [v33 logIdentifier];
        v39 = sub_22A4DD5EC();
        v80 = v4;
        v41 = v40;

        MEMORY[0x22AAD08C0](v39, v41);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v42 = sub_2295A3E30(v81, v82, &v83);

        *(v36 + 4) = v42;
        *(v36 + 12) = 2080;
        *(v36 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A597480, &v83);
        _os_log_impl(&dword_229538000, v34, v35, "%s %s Home Activity State feature is not enabled, unable to register for messages", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v37, -1, -1);
        MEMORY[0x22AAD4E50](v36, -1, -1);

        (*(v5 + 8))(v11, v80);
      }

      else
      {

        (*(v5 + 8))(v11, v4);
      }
    }
  }

  else
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v23 = v2;
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCEC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 136315394;
      v81 = 91;
      v82 = 0xE100000000000000;
      v83 = v27;
      v28 = [v23 logIdentifier];
      v29 = sub_22A4DD5EC();
      v31 = v30;

      MEMORY[0x22AAD08C0](v29, v31);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v32 = sub_2295A3E30(v81, v82, &v83);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A597480, &v83);
      _os_log_impl(&dword_229538000, v24, v25, "%s %s Missing home or administratorHandlers or msgDispatcher, unable to register for messages", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v26, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
  }

  return 0;
}

void sub_2297D4F60()
{
  v1 = v0;
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v52 - v8;
  v10 = [v0 home];
  if (v10)
  {
    v11 = v10;
    v12 = [v0 msgDispatcher];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_msgSend(v11 featuresDataSource)];
      swift_unknownObjectRelease();
      if (v14)
      {
        v15 = [v11 administratorHandler];
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_22A5842A0;
        *(v16 + 32) = [objc_opt_self() policyWithOperationTypes_];
        v17 = objc_opt_self();
        *(v16 + 40) = [v17 policyWithEntitlements_];
        *(v16 + 48) = [objc_opt_self() defaultSecurePolicy];
        v18 = *MEMORY[0x277CCECF8];
        sub_229562F68(0, qword_281401B40, 0x277D0F838);
        v19 = sub_22A4DD81C();
        [v15 registerForMessage:v18 receiver:v1 policies:v19 selector:sel_handleAccessoryHasOnboardedForAdaptiveTemperatureAutomationsMessage_];

        v20 = *MEMORY[0x277CCED00];
        v21 = sub_22A4DD81C();
        [v15 registerForMessage:v20 receiver:v1 policies:v21 selector:sel_handleAccessoryHasOnboardedForCleanEnergyAutomationMessage_];

        v22 = *MEMORY[0x277CCF098];
        v23 = sub_22A4DD81C();
        [v15 registerForMessage:v22 receiver:v1 policies:v23 selector:sel_handleSetThermostatSleepScheduleMessage_];

        v24 = *MEMORY[0x277CD0F68];
        v25 = sub_22A4DD81C();

        [v15 registerForMessage:v24 receiver:v1 policies:v25 selector:sel_handleSetAdaptiveThermostatDriverMessage_];

        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_22A576190;
        *(v26 + 32) = [v17 policyWithEntitlements_];
        v27 = *MEMORY[0x277CCFD40];
        v28 = sub_22A4DD81C();
        [v13 registerForMessage:v27 receiver:v1 policies:v28 selector:sel_handleFetchAdaptiveThermostatDriverSettingsMessage_];

        v29 = *MEMORY[0x277CCF090];
        v54 = sub_22A4DD81C();

        [v13 registerForMessage:v29 receiver:v1 policies:v54 selector:sel_handleFetchThermostatSleepScheduleMessage_];

        v30 = v54;
      }

      else
      {
        v54 = v2;
        sub_229562F68(0, &qword_281401B70, off_278666148);
        sub_22A4DDC0C();
        sub_22A4DD08C();
        v41 = v0;
        v42 = sub_22A4DD05C();
        v43 = sub_22A4DDCEC();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v53 = v45;
          *v44 = 136315394;
          v55 = 91;
          v56 = 0xE100000000000000;
          v57 = v45;
          v46 = [v41 logIdentifier];
          v47 = sub_22A4DD5EC();
          v49 = v48;

          MEMORY[0x22AAD08C0](v47, v49);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v50 = sub_2295A3E30(v55, v56, &v57);

          *(v44 + 4) = v50;
          *(v44 + 12) = 2080;
          *(v44 + 14) = sub_2295A3E30(0xD00000000000001CLL, 0x800000022A597460, &v57);
          _os_log_impl(&dword_229538000, v42, v43, "%s %s Home Activity State feature is not enabled, unable to register for messages", v44, 0x16u);
          v51 = v53;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v51, -1, -1);
          MEMORY[0x22AAD4E50](v44, -1, -1);
        }

        (*(v3 + 8))(v9, v54);
      }

      return;
    }
  }

  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v31 = v0;
  v32 = sub_22A4DD05C();
  v33 = sub_22A4DDCEC();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 136315394;
    v55 = 91;
    v56 = 0xE100000000000000;
    v57 = v35;
    v36 = [v31 logIdentifier];
    v37 = sub_22A4DD5EC();
    v39 = v38;

    MEMORY[0x22AAD08C0](v37, v39);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v40 = sub_2295A3E30(v55, v56, &v57);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_2295A3E30(0xD00000000000001CLL, 0x800000022A597460, &v57);
    _os_log_impl(&dword_229538000, v32, v33, "%s %s Missing home or administratorHandler or msgDispatcher, unable to register for messages", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v35, -1, -1);
    MEMORY[0x22AAD4E50](v34, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
}

void sub_2297D5754()
{
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v65 = &v61[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v61[-v7];
  MEMORY[0x28223BE20](v6);
  v10 = &v61[-v9];
  [v0 stopObservingClimateNotifications];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v11 = v0;
  v12 = sub_22A4DD05C();
  v13 = sub_22A4DDCCC();

  v14 = os_log_type_enabled(v12, v13);
  v64 = v8;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v63 = v16;
    *v15 = 136315394;
    v66 = 91;
    v67 = 0xE100000000000000;
    v68 = v16;
    v17 = [v11 logIdentifier];
    v62 = v13;
    v18 = v17;
    v19 = sub_22A4DD5EC();
    v20 = v11;
    v21 = v2;
    v22 = v1;
    v24 = v23;

    MEMORY[0x22AAD08C0](v19, v24);
    v1 = v22;
    v2 = v21;
    v11 = v20;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v25 = sub_2295A3E30(v66, v67, &v68);

    *(v15 + 4) = v25;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2295A3E30(0xD000000000000024, 0x800000022A597430, &v68);
    _os_log_impl(&dword_229538000, v12, v62, "%s %s Starting", v15, 0x16u);
    v26 = v63;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

  v27 = *(v2 + 8);
  v27(v10, v1);
  v28 = [v11 home];
  if (!v28)
  {
    goto LABEL_8;
  }

  v29 = v28;
  v30 = [objc_msgSend(v28 featuresDataSource)];
  swift_unknownObjectRelease();
  if (!v30)
  {

LABEL_8:
    sub_22A4DDC0C();
    v34 = v65;
    sub_22A4DD08C();
    v35 = v11;
    v36 = sub_22A4DD05C();
    v37 = sub_22A4DDCEC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v63 = v2;
      v39 = v38;
      v40 = swift_slowAlloc();
      *v39 = 136315394;
      v66 = 91;
      v67 = 0xE100000000000000;
      v68 = v40;
      v41 = [v35 logIdentifier];
      v42 = v1;
      v43 = sub_22A4DD5EC();
      v45 = v44;

      MEMORY[0x22AAD08C0](v43, v45);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v46 = sub_2295A3E30(v66, v67, &v68);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_2295A3E30(0xD000000000000024, 0x800000022A597430, &v68);
      _os_log_impl(&dword_229538000, v36, v37, "%s %s Not observing - home is missing or the feature is not enabled", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v40, -1, -1);
      MEMORY[0x22AAD4E50](v39, -1, -1);

      v47 = v65;
      v48 = v42;
    }

    else
    {

      v47 = v34;
      v48 = v1;
    }

    goto LABEL_11;
  }

  if ([v29 isCurrentDeviceConfirmedPrimaryResident])
  {
    v31 = [v29 notificationCenter];
    [v31 addObserver:v11 selector:sel_handleChipAccessoryServerConfiguredNotification_ name:@"HMDCHIPAccessoryServerConfiguredNotification" object:v11];

    v32 = [v29 notificationCenter];
    [v32 addObserver:v11 selector:sel_handleMobileAssetsUpdatedNotification_ name:@"HMDMobileAssetManagerFoundUpdateNotification" object:0];

    v33 = [v29 notificationCenter];
    [v33 addObserver:v11 selector:sel_handleAccessoryFirmwareVersionChangedNotification_ name:@"HMDAccessoryFirmwareVersionUpdatedNotification" object:v11];

    return;
  }

  v65 = v1;
  sub_22A4DDC0C();
  v49 = v64;
  sub_22A4DD08C();
  v50 = v11;
  v51 = sub_22A4DD05C();
  v52 = sub_22A4DDCCC();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v63 = v2;
    v54 = v53;
    v55 = swift_slowAlloc();
    *v54 = 136315394;
    v66 = 91;
    v67 = 0xE100000000000000;
    v68 = v55;
    v56 = [v50 logIdentifier];
    v57 = sub_22A4DD5EC();
    v59 = v58;

    MEMORY[0x22AAD08C0](v57, v59);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v60 = sub_2295A3E30(v66, v67, &v68);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2080;
    *(v54 + 14) = sub_2295A3E30(0xD000000000000024, 0x800000022A597430, &v68);
    _os_log_impl(&dword_229538000, v51, v52, "%s %s Not observing - device is not the primary resident", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v55, -1, -1);
    MEMORY[0x22AAD4E50](v54, -1, -1);

    v47 = v64;
  }

  else
  {

    v47 = v49;
  }

  v48 = v65;
LABEL_11:
  v27(v47, v48);
}

void sub_2297D5F30()
{
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  v9 = [v0 home];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_msgSend(v9 featuresDataSource)];
    swift_unknownObjectRelease();
    if (v11)
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v12 = v0;
      v13 = sub_22A4DD05C();
      v14 = sub_22A4DDCCC();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v39 = v16;
        *v15 = 136315394;
        v40 = 91;
        v41 = 0xE100000000000000;
        v42 = v16;
        v17 = [v12 logIdentifier];
        v18 = sub_22A4DD5EC();
        v38 = v1;
        v19 = v18;
        v21 = v20;

        MEMORY[0x22AAD08C0](v19, v21);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v22 = sub_2295A3E30(v40, v41, &v42);

        *(v15 + 4) = v22;
        *(v15 + 12) = 2080;
        *(v15 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A597400, &v42);
        _os_log_impl(&dword_229538000, v13, v14, "%s %s Stopping", v15, 0x16u);
        v23 = v39;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v23, -1, -1);
        MEMORY[0x22AAD4E50](v15, -1, -1);

        (*(v2 + 8))(v8, v38);
      }

      else
      {

        (*(v2 + 8))(v8, v1);
      }

      v34 = [v10 notificationCenter];
      [v34 removeObserver:v12 name:@"HMDCHIPAccessoryServerConfiguredNotification" object:v12];

      v35 = [v10 notificationCenter];
      [v35 removeObserver:v12 name:@"HMDMobileAssetManagerFoundUpdateNotification" object:0];

      v36 = [v10 notificationCenter];
      [v36 removeObserver:v12 name:@"HMDAccessoryFirmwareVersionUpdatedNotification" object:v12];

      return;
    }
  }

  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v24 = v0;
  v25 = sub_22A4DD05C();
  v26 = sub_22A4DDCEC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 136315394;
    v40 = 91;
    v41 = 0xE100000000000000;
    v42 = v28;
    v29 = [v24 logIdentifier];
    v30 = sub_22A4DD5EC();
    v32 = v31;

    MEMORY[0x22AAD08C0](v30, v32);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v33 = sub_2295A3E30(v40, v41, &v42);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A597400, &v42);
    _os_log_impl(&dword_229538000, v25, v26, "%s %s Home is missing or the feature is not enabled", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v28, -1, -1);
    MEMORY[0x22AAD4E50](v27, -1, -1);
  }

  (*(v2 + 8))(v6, v1);
}

uint64_t sub_2297D656C()
{
  swift_getObjectType();
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v128 = v1;
  v129 = v2;
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v123 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v123 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v127 = &v123 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v126 = &v123 - v16;
  MEMORY[0x28223BE20](v15);
  v125 = &v123 - v17;
  v18 = type metadata accessor for ClimateBulletinBuilder.ValenciaOnboardingContent(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v124 = (&v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_22A4DD2FC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = (&v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v25 = [v0 workQueue];
  (*(v22 + 104))(v25, *MEMORY[0x277D85200], v21);
  v26 = sub_22A4DD31C();
  result = (*(v22 + 8))(v25, v21);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v28 = [v0 home];
  if (!v28)
  {
LABEL_17:
    sub_229785E38();
    v52 = v0;
    v53 = sub_22A4DD05C();
    v54 = sub_22A4DDCEC();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 136315394;
      v130 = 91;
      v131 = 0xE100000000000000;
      v132 = v56;
      v57 = [v52 logIdentifier];
      v58 = sub_22A4DD5EC();
      v60 = v59;

      MEMORY[0x22AAD08C0](v58, v60);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v61 = sub_2295A3E30(v130, v131, &v132);

      *(v55 + 4) = v61;
      *(v55 + 12) = 2080;
      *(v55 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A597340, &v132);
      _os_log_impl(&dword_229538000, v53, v54, "[%s %s] Onboarding is not allowed, unqualified home", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v56, -1, -1);
      MEMORY[0x22AAD4E50](v55, -1, -1);
    }

    return v129[1](v6, v128);
  }

  v29 = v28;
  if (![v28 isAllowedToEnableAdaptiveTemperatureAutomations])
  {

    goto LABEL_17;
  }

  if (([v29 isOwnerUser] & 1) == 0 && !objc_msgSend(v29, sel_isAdminUser))
  {
    sub_229785E38();
    v62 = v0;
    v63 = sub_22A4DD05C();
    v64 = sub_22A4DDCCC();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 136315394;
      v130 = 91;
      v131 = 0xE100000000000000;
      v132 = v66;
      v67 = [v62 logIdentifier];
      v68 = sub_22A4DD5EC();
      v70 = v69;

      MEMORY[0x22AAD08C0](v68, v70);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v71 = sub_2295A3E30(v130, v131, &v132);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2080;
      *(v65 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A597340, &v132);
      _os_log_impl(&dword_229538000, v63, v64, "[%s %s] Onboarding is only handled by owner or admin user", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v66, -1, -1);
      MEMORY[0x22AAD4E50](v65, -1, -1);
    }

    else
    {
    }

    return v129[1](v9, v128);
  }

  v30 = [v29 homeManager];
  if (!v30)
  {
    goto LABEL_24;
  }

  v31 = v30;
  if (![v30 hasLoadedData])
  {

LABEL_24:
    sub_229785E38();
    v72 = v0;
    v73 = sub_22A4DD05C();
    v74 = sub_22A4DDCCC();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 136315394;
      v130 = 91;
      v131 = 0xE100000000000000;
      v132 = v76;
      v77 = [v72 logIdentifier];
      v78 = sub_22A4DD5EC();
      v80 = v79;

      MEMORY[0x22AAD08C0](v78, v80);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v81 = sub_2295A3E30(v130, v131, &v132);

      *(v75 + 4) = v81;
      *(v75 + 12) = 2080;
      *(v75 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A597340, &v132);
      _os_log_impl(&dword_229538000, v73, v74, "[%s %s] Onboarding is only handled after home graph has loaded", v75, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v76, -1, -1);
      MEMORY[0x22AAD4E50](v75, -1, -1);

      return v129[1](v12, v128);
    }

LABEL_34:
    return v129[1](v12, v128);
  }

  v32 = [v29 currentDevice];
  if (!v32)
  {
LABEL_30:
    v12 = v127;
    sub_229785E38();
    v82 = v0;
    v83 = sub_22A4DD05C();
    v84 = sub_22A4DDCCC();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v44 = v12;
      v86 = swift_slowAlloc();
      *v85 = 136315394;
      v130 = 91;
      v131 = 0xE100000000000000;
      v132 = v86;
      v87 = [v82 logIdentifier];
      v88 = sub_22A4DD5EC();
      v90 = v89;

      MEMORY[0x22AAD08C0](v88, v90);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v91 = sub_2295A3E30(v130, v131, &v132);

      *(v85 + 4) = v91;
      *(v85 + 12) = 2080;
      *(v85 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A597340, &v132);
      _os_log_impl(&dword_229538000, v83, v84, "[%s %s] Onboarding is not handled on this device", v85, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v86, -1, -1);
      MEMORY[0x22AAD4E50](v85, -1, -1);

      return v129[1](v44, v128);
    }

    goto LABEL_34;
  }

  v33 = v32;
  v34 = [v32 productInfo];
  if (!v34 || (v35 = v34, v36 = [v34 productPlatform], v35, v36 > 5) || ((1 << v36) & 0x26) == 0)
  {

    goto LABEL_30;
  }

  v37 = [v0 supportsAdaptiveTemperatureAutomations];
  v38 = [v37 BOOLValue];

  if (v38)
  {
    v127 = v31;
    v39 = [v0 hasOnboardedForAdaptiveTemperatureAutomations];
    v40 = [v39 BOOLValue];

    if (v40)
    {
      v6 = v125;
      sub_229785E38();
      v41 = v0;
      v42 = sub_22A4DD05C();
      v43 = sub_22A4DDCEC();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = v6;
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 136315394;
        v130 = 91;
        v131 = 0xE100000000000000;
        v132 = v46;
        v47 = [v41 logIdentifier];
        v48 = sub_22A4DD5EC();
        v50 = v49;

        MEMORY[0x22AAD08C0](v48, v50);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v51 = sub_2295A3E30(v130, v131, &v132);

        *(v45 + 4) = v51;
        *(v45 + 12) = 2080;
        *(v45 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A597340, &v132);
        _os_log_impl(&dword_229538000, v42, v43, "[%s %s] Feature was already onboarded by this accessory", v45, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v46, -1, -1);
        MEMORY[0x22AAD4E50](v45, -1, -1);

        return v129[1](v44, v128);
      }

      goto LABEL_42;
    }

    v129 = v29;
    v103 = [v0 name];
    v128 = sub_22A4DD5EC();
    v126 = v104;

    v105 = v0;
    v106 = sub_22A4DD5AC();
    v107 = HMDLocalizedStringForKey(v106);

    sub_22A4DD5EC();
    v108 = sub_22A4DD5BC();
    v110 = v109;

    v111 = v124;
    *v124 = v108;
    v111[1] = v110;
    v112 = sub_22A4DD5AC();
    v113 = HMDLocalizedStringForKey(v112);

    sub_22A4DD5EC();
    v114 = sub_22A4DD5BC();
    v116 = v115;

    v111[2] = v114;
    v111[3] = v116;
    v117 = *(v18 + 24);
    v118 = v129;
    sub_229559964(v128, v126, v105, v129);

    v119 = [v105 bulletinBoard];
    v120 = sub_22A4DD5AC();
    v121 = sub_22A4DD5AC();
    v122 = sub_22A4DB4EC();
    [v119 insertClimateBulletinForAccessory:v105 title:v120 body:v121 actionURL:v122];

    return sub_2297E3238(v111);
  }

  else
  {
    v6 = v126;
    sub_229785E38();
    v92 = v0;
    v93 = sub_22A4DD05C();
    v94 = sub_22A4DDCEC();

    if (!os_log_type_enabled(v93, v94))
    {

LABEL_42:
      return v129[1](v6, v128);
    }

    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v95 = 136315394;
    v130 = 91;
    v131 = 0xE100000000000000;
    v132 = v96;
    v97 = [v92 logIdentifier];
    v98 = sub_22A4DD5EC();
    v99 = v31;
    v101 = v100;

    MEMORY[0x22AAD08C0](v98, v101);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v102 = sub_2295A3E30(v130, v131, &v132);

    *(v95 + 4) = v102;
    *(v95 + 12) = 2080;
    *(v95 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A597340, &v132);
    _os_log_impl(&dword_229538000, v93, v94, "[%s %s] Feature is not supported by this accessory", v95, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v96, -1, -1);
    MEMORY[0x22AAD4E50](v95, -1, -1);

    return v129[1](v126, v128);
  }
}

void sub_2297D753C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v61 - v6;
  v8 = sub_22A4DD07C();
  v63 = *(v8 - 8);
  v9 = *(v63 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v61 - v13;
  v15 = [a1 name];
  v16 = *MEMORY[0x277CCECF8];
  v17 = sub_22A4DD5EC();
  v19 = v18;
  if (v17 == sub_22A4DD5EC() && v19 == v20)
  {
  }

  else
  {
    v22 = sub_22A4DE60C();

    if ((v22 & 1) == 0)
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v23 = v2;
      v24 = a1;
      v25 = sub_22A4DD05C();
      v26 = sub_22A4DDCEC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v62 = v29;
        *v27 = 136315650;
        v64 = 91;
        v65 = 0xE100000000000000;
        v66 = v29;
        v30 = [v23 logIdentifier];
        v31 = sub_22A4DD5EC();
        v33 = v32;

        MEMORY[0x22AAD08C0](v31, v33);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v34 = sub_2295A3E30(v64, v65, &v66);

        *(v27 + 4) = v34;
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_2295A3E30(0xD000000000000047, 0x800000022A5972F0, &v66);
        *(v27 + 22) = 2112;
        *(v27 + 24) = v24;
        *v28 = v24;
        v35 = v24;
        _os_log_impl(&dword_229538000, v25, v26, "%s %s Unexpected message, unable to handle message: %@", v27, 0x20u);
        sub_22953EAE4(v28, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v28, -1, -1);
        v36 = v62;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v36, -1, -1);
        MEMORY[0x22AAD4E50](v27, -1, -1);
      }

      (*(v63 + 8))(v14, v8);
      v37 = [objc_opt_self() hmErrorWithCode_];
      v38 = sub_22A4DB3DC();

      [v24 respondWithError_];
LABEL_20:

      return;
    }
  }

  v39 = [v2 supportsAdaptiveTemperatureAutomations];
  v40 = [v39 BOOLValue];

  if ((v40 & 1) == 0)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v45 = v2;
    v46 = a1;
    v47 = sub_22A4DD05C();
    v48 = sub_22A4DDCEC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v49 = 136315650;
      v64 = 91;
      v65 = 0xE100000000000000;
      v66 = v51;
      v52 = [v45 logIdentifier];
      v53 = sub_22A4DD5EC();
      v62 = v8;
      v55 = v54;

      MEMORY[0x22AAD08C0](v53, v55);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v56 = sub_2295A3E30(v64, v65, &v66);

      *(v49 + 4) = v56;
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_2295A3E30(0xD000000000000047, 0x800000022A5972F0, &v66);
      *(v49 + 22) = 2112;
      *(v49 + 24) = v46;
      *v50 = v46;
      v57 = v46;
      _os_log_impl(&dword_229538000, v47, v48, "%s %s Accessory does not support adaptive temperature, unable to handle message: %@", v49, 0x20u);
      sub_22953EAE4(v50, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v50, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v51, -1, -1);
      MEMORY[0x22AAD4E50](v49, -1, -1);

      (*(v63 + 8))(v12, v62);
    }

    else
    {

      (*(v63 + 8))(v12, v8);
    }

    v60 = [objc_opt_self() hmErrorWithCode_];
    v38 = sub_22A4DB3DC();

    [v46 respondWithError_];
    goto LABEL_20;
  }

  if (sub_2297D7D0C(a1))
  {
    v41 = sub_22A4DD9DC();
    (*(*(v41 - 8) + 56))(v7, 1, 1, v41);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = v2;
    v42[5] = a1;
    v43 = v2;
    v44 = a1;
    sub_22957F3C0(0, 0, v7, &unk_22A584378, v42);
  }

  else
  {
    v58 = [objc_opt_self() hmErrorWithCode_];
    v63 = sub_22A4DB3DC();

    [a1 respondWithError_];
    v59 = v63;
  }
}

uint64_t sub_2297D7D0C(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v64 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v64 - v13;
  v15 = [v1 home];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_msgSend(v15 featuresDataSource)];
    swift_unknownObjectRelease();
    if (v17)
    {
      if ([v16 isCurrentDeviceConfirmedPrimaryResident])
      {

        return 1;
      }

      v68 = v5;
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v50 = v2;
      v51 = a1;
      v52 = sub_22A4DD05C();
      v53 = sub_22A4DDCEC();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v66 = v55;
        *v54 = 136315650;
        v69 = 91;
        v70 = 0xE100000000000000;
        v71 = v55;
        v56 = [v50 logIdentifier];
        v57 = sub_22A4DD5EC();
        v67 = v4;
        v59 = v58;

        MEMORY[0x22AAD08C0](v57, v59);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v60 = sub_2295A3E30(v69, v70, &v71);

        *(v54 + 4) = v60;
        *(v54 + 12) = 2080;
        *(v54 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A597280, &v71);
        *(v54 + 22) = 2112;
        *(v54 + 24) = v51;
        v61 = v65;
        *v65 = v51;
        v62 = v51;
        _os_log_impl(&dword_229538000, v52, v53, "%s %s Device is not primary resident, unable to handle message: %@", v54, 0x20u);
        sub_22953EAE4(v61, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v61, -1, -1);
        v63 = v66;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v63, -1, -1);
        MEMORY[0x22AAD4E50](v54, -1, -1);

        (*(v68 + 8))(v14, v67);
      }

      else
      {

        (*(v68 + 8))(v14, v4);
      }
    }

    else
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v35 = v2;
      v36 = a1;
      v37 = sub_22A4DD05C();
      v38 = sub_22A4DDCEC();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v66 = v40;
        *v39 = 136315650;
        v69 = 91;
        v70 = 0xE100000000000000;
        v71 = v40;
        v41 = [v35 logIdentifier];
        v42 = sub_22A4DD5EC();
        v67 = v4;
        v68 = v5;
        v43 = v42;
        v45 = v44;

        MEMORY[0x22AAD08C0](v43, v45);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v46 = sub_2295A3E30(v69, v70, &v71);

        *(v39 + 4) = v46;
        *(v39 + 12) = 2080;
        *(v39 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A597280, &v71);
        *(v39 + 22) = 2112;
        *(v39 + 24) = v36;
        v47 = v65;
        *v65 = v36;
        v48 = v36;
        _os_log_impl(&dword_229538000, v37, v38, "%s %s Home Activity State feature is not enabled, unable to handle message: %@", v39, 0x20u);
        sub_22953EAE4(v47, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v47, -1, -1);
        v49 = v66;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v49, -1, -1);
        MEMORY[0x22AAD4E50](v39, -1, -1);

        (*(v68 + 8))(v12, v67);
      }

      else
      {

        (*(v5 + 8))(v12, v4);
      }
    }
  }

  else
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v19 = v1;
    v20 = a1;
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCEC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v68 = v5;
      v25 = v24;
      v26 = swift_slowAlloc();
      v66 = v26;
      *v23 = 136315650;
      v69 = 91;
      v70 = 0xE100000000000000;
      v71 = v26;
      v27 = [v19 logIdentifier];
      v28 = sub_22A4DD5EC();
      v67 = v4;
      v29 = v28;
      v31 = v30;

      MEMORY[0x22AAD08C0](v29, v31);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v32 = sub_2295A3E30(v69, v70, &v71);

      *(v23 + 4) = v32;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A597280, &v71);
      *(v23 + 22) = 2112;
      *(v23 + 24) = v20;
      *v25 = v20;
      v33 = v20;
      _os_log_impl(&dword_229538000, v21, v22, "%s %s Missing home, unable to handle message: %@", v23, 0x20u);
      sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      v34 = v66;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);

      (*(v68 + 8))(v9, v67);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }

  return 0;
}

uint64_t sub_2297D8504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_22A4DD07C();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297D85C4, 0, 0);
}

uint64_t sub_2297D85C4()
{
  v1 = v0[7];
  sub_229785F6C(v0 + 2);
  v2 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_2297D866C;

  return sub_2296C1028();
}

uint64_t sub_2297D866C()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2297D8780;
  }

  else
  {
    v3 = sub_2297E32AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2297D8780()
{
  v37 = v0;
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[8];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v5 = v3;
  v6 = v4;
  v7 = v1;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCEC();

  if (os_log_type_enabled(v8, v9))
  {
    v32 = v0[13];
    v33 = v0[10];
    v10 = v0[8];
    v34 = v0[9];
    v35 = v0[11];
    v11 = v0[7];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v12 = 136315906;
    v36[0] = v14;
    v36[1] = 91;
    v36[2] = 0xE100000000000000;
    v15 = [v11 logIdentifier];
    v16 = sub_22A4DD5EC();
    v18 = v17;

    MEMORY[0x22AAD08C0](v16, v18);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v19 = sub_2295A3E30(91, 0xE100000000000000, v36);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2295A3E30(0xD000000000000047, 0x800000022A5972F0, v36);
    *(v12 + 22) = 2112;
    *(v12 + 24) = v10;
    *v13 = v10;
    *(v12 + 32) = 2112;
    v20 = v10;
    v21 = v32;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 34) = v22;
    v13[1] = v22;
    _os_log_impl(&dword_229538000, v8, v9, "%s %s Failed to save, unable to handle message %@ with error: %@", v12, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v14, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v33 + 8))(v35, v34);
  }

  else
  {
    v24 = v0[10];
    v23 = v0[11];
    v25 = v0[9];

    (*(v24 + 8))(v23, v25);
  }

  v26 = v0[13];
  v27 = v0[8];
  v28 = sub_22A4DB3DC();
  [v27 respondWithError_];

  v29 = v0[11];

  v30 = v0[1];

  return v30();
}

void sub_2297D8B30(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v61 - v6;
  v8 = sub_22A4DD07C();
  v63 = *(v8 - 8);
  v9 = *(v63 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v61 - v13;
  v15 = [a1 name];
  v16 = *MEMORY[0x277CCED00];
  v17 = sub_22A4DD5EC();
  v19 = v18;
  if (v17 == sub_22A4DD5EC() && v19 == v20)
  {
  }

  else
  {
    v22 = sub_22A4DE60C();

    if ((v22 & 1) == 0)
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v23 = v2;
      v24 = a1;
      v25 = sub_22A4DD05C();
      v26 = sub_22A4DDCEC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v62 = v29;
        *v27 = 136315650;
        v64 = 91;
        v65 = 0xE100000000000000;
        v66 = v29;
        v30 = [v23 logIdentifier];
        v31 = sub_22A4DD5EC();
        v33 = v32;

        MEMORY[0x22AAD08C0](v31, v33);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v34 = sub_2295A3E30(v64, v65, &v66);

        *(v27 + 4) = v34;
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_2295A3E30(0xD00000000000003ELL, 0x800000022A5972B0, &v66);
        *(v27 + 22) = 2112;
        *(v27 + 24) = v24;
        *v28 = v24;
        v35 = v24;
        _os_log_impl(&dword_229538000, v25, v26, "%s %s Unexpected message, unable to handle message: %@", v27, 0x20u);
        sub_22953EAE4(v28, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v28, -1, -1);
        v36 = v62;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v36, -1, -1);
        MEMORY[0x22AAD4E50](v27, -1, -1);
      }

      (*(v63 + 8))(v14, v8);
      v37 = [objc_opt_self() hmErrorWithCode_];
      v38 = sub_22A4DB3DC();

      [v24 respondWithError_];
LABEL_20:

      return;
    }
  }

  v39 = [v2 supportsCleanEnergyAutomation];
  v40 = [v39 BOOLValue];

  if ((v40 & 1) == 0)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v45 = v2;
    v46 = a1;
    v47 = sub_22A4DD05C();
    v48 = sub_22A4DDCEC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v49 = 136315650;
      v64 = 91;
      v65 = 0xE100000000000000;
      v66 = v51;
      v52 = [v45 logIdentifier];
      v53 = sub_22A4DD5EC();
      v62 = v8;
      v55 = v54;

      MEMORY[0x22AAD08C0](v53, v55);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v56 = sub_2295A3E30(v64, v65, &v66);

      *(v49 + 4) = v56;
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_2295A3E30(0xD00000000000003ELL, 0x800000022A5972B0, &v66);
      *(v49 + 22) = 2112;
      *(v49 + 24) = v46;
      *v50 = v46;
      v57 = v46;
      _os_log_impl(&dword_229538000, v47, v48, "%s %s Accessory does not support clean energy, unable to handle message: %@", v49, 0x20u);
      sub_22953EAE4(v50, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v50, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v51, -1, -1);
      MEMORY[0x22AAD4E50](v49, -1, -1);

      (*(v63 + 8))(v12, v62);
    }

    else
    {

      (*(v63 + 8))(v12, v8);
    }

    v60 = [objc_opt_self() hmErrorWithCode_];
    v38 = sub_22A4DB3DC();

    [v46 respondWithError_];
    goto LABEL_20;
  }

  if (sub_2297D7D0C(a1))
  {
    v41 = sub_22A4DD9DC();
    (*(*(v41 - 8) + 56))(v7, 1, 1, v41);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = v2;
    v42[5] = a1;
    v43 = v2;
    v44 = a1;
    sub_22957F3C0(0, 0, v7, &unk_22A584368, v42);
  }

  else
  {
    v58 = [objc_opt_self() hmErrorWithCode_];
    v63 = sub_22A4DB3DC();

    [a1 respondWithError_];
    v59 = v63;
  }
}

uint64_t sub_2297D9300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_22A4DD07C();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297D93C0, 0, 0);
}

uint64_t sub_2297D93C0()
{
  v1 = v0[7];
  sub_229785F6C(v0 + 2);
  v2 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_2297D9468;

  return sub_2296C189C();
}

uint64_t sub_2297D9468()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2297D95F8;
  }

  else
  {
    v3 = sub_2297D957C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2297D957C()
{
  v1 = v0[8];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  [v1 respondWithSuccess];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2297D95F8()
{
  v37 = v0;
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[8];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v5 = v3;
  v6 = v4;
  v7 = v1;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCEC();

  if (os_log_type_enabled(v8, v9))
  {
    v32 = v0[13];
    v33 = v0[10];
    v10 = v0[8];
    v34 = v0[9];
    v35 = v0[11];
    v11 = v0[7];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v12 = 136315906;
    v36[0] = v14;
    v36[1] = 91;
    v36[2] = 0xE100000000000000;
    v15 = [v11 logIdentifier];
    v16 = sub_22A4DD5EC();
    v18 = v17;

    MEMORY[0x22AAD08C0](v16, v18);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v19 = sub_2295A3E30(91, 0xE100000000000000, v36);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2295A3E30(0xD00000000000003ELL, 0x800000022A5972B0, v36);
    *(v12 + 22) = 2112;
    *(v12 + 24) = v10;
    *v13 = v10;
    *(v12 + 32) = 2112;
    v20 = v10;
    v21 = v32;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 34) = v22;
    v13[1] = v22;
    _os_log_impl(&dword_229538000, v8, v9, "%s %s Failed to save, unable to handle message %@ with error: %@", v12, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v14, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v33 + 8))(v35, v34);
  }

  else
  {
    v24 = v0[10];
    v23 = v0[11];
    v25 = v0[9];

    (*(v24 + 8))(v23, v25);
  }

  v26 = v0[13];
  v27 = v0[8];
  v28 = sub_22A4DB3DC();
  [v27 respondWithError_];

  v29 = v0[11];

  v30 = v0[1];

  return v30();
}

void sub_2297D99A8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v139 = &v138 - v6;
  v7 = sub_22A4DB7DC();
  v142 = *(v7 - 8);
  v8 = *(v142 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22A4DD07C();
  v12 = *(v11 - 8);
  v143 = v11;
  v144 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v141 = &v138 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v140 = &v138 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v138 = &v138 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v138 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v138 - v26;
  v145 = a1;
  v28 = [a1 name];
  v29 = *MEMORY[0x277CD0F68];
  v30 = sub_22A4DD5EC();
  v32 = v31;
  if (v30 == sub_22A4DD5EC() && v32 == v33)
  {
  }

  else
  {
    v34 = sub_22A4DE60C();

    if ((v34 & 1) == 0)
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v75 = v2;
      v47 = v145;
      v76 = sub_22A4DD05C();
      v77 = sub_22A4DDCEC();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v78 = 136315650;
        v146 = 91;
        v147 = 0xE100000000000000;
        v148 = v80;
        v81 = [v75 logIdentifier];
        v82 = sub_22A4DD5EC();
        v84 = v83;

        MEMORY[0x22AAD08C0](v82, v84);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v85 = sub_2295A3E30(v146, v147, &v148);

        *(v78 + 4) = v85;
        *(v78 + 12) = 2080;
        *(v78 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A597220, &v148);
        *(v78 + 22) = 2112;
        *(v78 + 24) = v47;
        *v79 = v47;
        v86 = v47;
        _os_log_impl(&dword_229538000, v76, v77, "%s %s Unexpected message, unable to handle message: %@", v78, 0x20u);
        sub_22953EAE4(v79, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v79, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v80, -1, -1);
        MEMORY[0x22AAD4E50](v78, -1, -1);
      }

      v144[1](v27, v143);
      v59 = [objc_opt_self() hmErrorWithCode_];
      goto LABEL_25;
    }
  }

  v35 = [v2 supportsAdaptiveTemperatureAutomations];
  v36 = [v35 BOOLValue];

  v37 = v145;
  if ((v36 & 1) == 0)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v60 = v2;
    v61 = v37;
    v62 = sub_22A4DD05C();
    v63 = sub_22A4DDCEC();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v64 = 136315650;
      v146 = 91;
      v147 = 0xE100000000000000;
      v148 = v66;
      v67 = [v60 logIdentifier];
      v68 = sub_22A4DD5EC();
      v70 = v69;

      MEMORY[0x22AAD08C0](v68, v70);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v71 = sub_2295A3E30(v146, v147, &v148);

      *(v64 + 4) = v71;
      *(v64 + 12) = 2080;
      *(v64 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A597220, &v148);
      *(v64 + 22) = 2112;
      *(v64 + 24) = v61;
      *v65 = v61;
      v72 = v61;
      _os_log_impl(&dword_229538000, v62, v63, "%s %s Accessory does not support adaptive temperature, unable to handle message: %@", v64, 0x20u);
      sub_22953EAE4(v65, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v65, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v66, -1, -1);
      MEMORY[0x22AAD4E50](v64, -1, -1);
    }

    v144[1](v25, v143);
    v73 = [objc_opt_self() hmErrorWithCode_];
    v74 = sub_22A4DB3DC();

    [v61 respondWithError_];
    goto LABEL_15;
  }

  if ((sub_2297D7D0C(v145) & 1) == 0)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v87 = v2;
    v47 = v37;
    v88 = sub_22A4DD05C();
    v89 = sub_22A4DDCEC();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v90 = 136315650;
      v146 = 91;
      v147 = 0xE100000000000000;
      v148 = v92;
      v93 = [v87 logIdentifier];
      v94 = sub_22A4DD5EC();
      v96 = v95;

      MEMORY[0x22AAD08C0](v94, v96);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v97 = sub_2295A3E30(v146, v147, &v148);

      *(v90 + 4) = v97;
      *(v90 + 12) = 2080;
      *(v90 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A597220, &v148);
      *(v90 + 22) = 2112;
      *(v90 + 24) = v47;
      *v91 = v47;
      v98 = v47;
      _os_log_impl(&dword_229538000, v88, v89, "%s %s Device does not support climate settings, unable to handle message: %@", v90, 0x20u);
      sub_22953EAE4(v91, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v91, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v92, -1, -1);
      MEMORY[0x22AAD4E50](v90, -1, -1);
    }

    v144[1](v16, v143);
    v59 = [objc_opt_self() hmErrorWithCode_];
    goto LABEL_25;
  }

  v38 = [v37 messagePayload];
  if (!v38)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    v99 = v141;
    sub_22A4DD08C();
    v100 = v2;
    v47 = v37;
    v101 = sub_22A4DD05C();
    v102 = sub_22A4DDCEC();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *v103 = 136315650;
      v146 = 91;
      v147 = 0xE100000000000000;
      v148 = v105;
      v106 = [v100 logIdentifier];
      v107 = sub_22A4DD5EC();
      v109 = v108;

      MEMORY[0x22AAD08C0](v107, v109);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v110 = sub_2295A3E30(v146, v147, &v148);

      *(v103 + 4) = v110;
      *(v103 + 12) = 2080;
      *(v103 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A597220, &v148);
      *(v103 + 22) = 2112;
      *(v103 + 24) = v47;
      *v104 = v47;
      v111 = v47;
      _os_log_impl(&dword_229538000, v101, v102, "%s %s Payload should not be nil: %@", v103, 0x20u);
      sub_22953EAE4(v104, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v104, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v105, -1, -1);
      MEMORY[0x22AAD4E50](v103, -1, -1);
    }

    v144[1](v99, v143);
    v59 = [objc_opt_self() hmErrorWithCode_];
    goto LABEL_25;
  }

  v39 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v40 = sub_22A4DD49C();

  v41 = sub_2296F7AE8(v40);

  v42 = sub_2297DACD4(v41);
  v44 = v43;

  if (v44 == 1)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    v45 = v140;
    sub_22A4DD08C();
    v46 = v2;
    v47 = v37;
    v48 = sub_22A4DD05C();
    v49 = sub_22A4DDCEC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v50 = 136315650;
      v146 = 91;
      v147 = 0xE100000000000000;
      v148 = v52;
      v53 = [v46 logIdentifier];
      v54 = sub_22A4DD5EC();
      v56 = v55;

      MEMORY[0x22AAD08C0](v54, v56);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v57 = sub_2295A3E30(v146, v147, &v148);

      *(v50 + 4) = v57;
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A597220, &v148);
      *(v50 + 22) = 2112;
      *(v50 + 24) = v47;
      *v51 = v47;
      v58 = v47;
      _os_log_impl(&dword_229538000, v48, v49, "%s %s Unable to get settings from payload: %@", v50, 0x20u);
      sub_22953EAE4(v51, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v51, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v52, -1, -1);
      MEMORY[0x22AAD4E50](v50, -1, -1);
    }

    v144[1](v45, v143);
    v59 = [objc_opt_self() hmErrorWithCode_];
LABEL_25:
    v112 = v59;
    v113 = sub_22A4DB3DC();

    [v47 respondWithError_];
    return;
  }

  v114 = [v2 home];
  if (!v114)
  {
    sub_2295A70F8(v42, v44);
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    v126 = v138;
    sub_22A4DD08C();
    v127 = v2;
    v128 = sub_22A4DD05C();
    v129 = sub_22A4DDCEC();

    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *v130 = 136315394;
      v146 = 91;
      v147 = 0xE100000000000000;
      v148 = v131;
      v132 = [v127 logIdentifier];
      v133 = sub_22A4DD5EC();
      v135 = v134;

      MEMORY[0x22AAD08C0](v133, v135);
      v37 = v145;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v136 = sub_2295A3E30(v146, v147, &v148);

      *(v130 + 4) = v136;
      *(v130 + 12) = 2080;
      *(v130 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A597220, &v148);
      _os_log_impl(&dword_229538000, v128, v129, "%s %s Unable to get home", v130, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v131, -1, -1);
      MEMORY[0x22AAD4E50](v130, -1, -1);
    }

    v144[1](v126, v143);
    v137 = [objc_opt_self() hmErrorWithCode_];
    v74 = sub_22A4DB3DC();

    [v37 respondWithError_];
LABEL_15:

    return;
  }

  v115 = v114;
  if (!v44)
  {
LABEL_34:
    v121 = sub_22A4DD9DC();
    v122 = v139;
    (*(*(v121 - 8) + 56))(v139, 1, 1, v121);
    v123 = swift_allocObject();
    v123[2] = 0;
    v123[3] = 0;
    v123[4] = v2;
    v123[5] = v42;
    v123[6] = v44;
    v123[7] = v37;
    v124 = v2;
    v125 = v37;
    sub_22957F3C0(0, 0, v122, &unk_22A584358, v123);

    return;
  }

  v143 = v42;

  v144 = v115;
  v116 = [v115 roomUUIDsSupportingLocalPresence];
  sub_2297E3070(&qword_281403880, MEMORY[0x277CC95F0]);
  v117 = sub_22A4DDB6C();

  v118 = *(v44 + 16);
  if (!v118)
  {
LABEL_33:

    v42 = v143;
    sub_2295A70F8(v143, v44);
    v115 = v144;
    v37 = v145;
    goto LABEL_34;
  }

  v119 = 0;
  v120 = (v142 + 8);
  while (v119 < *(v44 + 16))
  {
    (*(v142 + 16))(v10, v44 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v119, v7);
    sub_2297DB7AC(v10, v117, v2);
    ++v119;
    (*v120)(v10, v7);
    if (v118 == v119)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
}

uint64_t sub_2297DACD4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v89 - v6;
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22A4DD07C();
  v93 = *(v13 - 8);
  v14 = *(v93 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v89 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v89 - v21;
  v23 = [v2 home];
  if (!v23)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v42 = v2;

    v43 = sub_22A4DD05C();
    v44 = sub_22A4DDCEC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v96 = v46;
      *v45 = 136315650;
      v94 = 91;
      v95 = 0xE100000000000000;
      v47 = [v42 logIdentifier];
      v92 = v13;
      v48 = v47;
      v49 = sub_22A4DD5EC();
      v51 = v50;

      MEMORY[0x22AAD08C0](v49, v51);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v52 = sub_2295A3E30(v94, v95, &v96);

      *(v45 + 4) = v52;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_2295A3E30(0xD000000000000028, 0x800000022A597250, &v96);
      *(v45 + 22) = 2080;
      v53 = sub_22A4DD4AC();
      v55 = sub_2295A3E30(v53, v54, &v96);

      *(v45 + 24) = v55;
      _os_log_impl(&dword_229538000, v43, v44, "%s %s Missing home, unable to handle message: %s", v45, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v46, -1, -1);
      MEMORY[0x22AAD4E50](v45, -1, -1);

      (*(v93 + 8))(v17, v92);
    }

    else
    {

      (*(v93 + 8))(v17, v13);
    }

    return 0;
  }

  v91 = v23;
  v92 = v13;
  v24 = *MEMORY[0x277CCF1E0];
  v25 = sub_22A4DD5EC();
  if (!*(a1 + 16))
  {

LABEL_15:
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v56 = v2;

    v57 = sub_22A4DD05C();
    v58 = sub_22A4DDCEC();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v96 = v60;
      *v59 = 136315650;
      v94 = 91;
      v95 = 0xE100000000000000;
      v61 = [v56 logIdentifier];
      v62 = sub_22A4DD5EC();
      v64 = v63;

      MEMORY[0x22AAD08C0](v62, v64);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v65 = sub_2295A3E30(v94, v95, &v96);

      *(v59 + 4) = v65;
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_2295A3E30(0xD000000000000028, 0x800000022A597250, &v96);
      *(v59 + 22) = 2080;
      v66 = sub_22A4DD4AC();
      v68 = sub_2295A3E30(v66, v67, &v96);

      *(v59 + 24) = v68;
      _os_log_impl(&dword_229538000, v57, v58, "%s %s Failed to get adaptive temperature driver from: %s", v59, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v60, -1, -1);
      MEMORY[0x22AAD4E50](v59, -1, -1);
    }

    (*(v93 + 8))(v20, v92);
    return 0;
  }

  v90 = v9;
  v27 = sub_229543DBC(v25, v26);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v27, &v94);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v89 = v96;
  if (v96 == 2)
  {
    v30 = [objc_msgSend(v91 featuresDataSource)];
    swift_unknownObjectRelease();
    if ((v30 & 1) == 0)
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v76 = v2;

      v77 = sub_22A4DD05C();
      v78 = sub_22A4DDCEC();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v96 = v90;
        *v79 = 136315650;
        v94 = 91;
        v95 = 0xE100000000000000;
        v80 = [v76 logIdentifier];
        v81 = sub_22A4DD5EC();
        v83 = v82;

        MEMORY[0x22AAD08C0](v81, v83);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v84 = sub_2295A3E30(v94, v95, &v96);

        *(v79 + 4) = v84;
        *(v79 + 12) = 2080;
        *(v79 + 14) = sub_2295A3E30(0xD000000000000028, 0x800000022A597250, &v96);
        *(v79 + 22) = 2080;
        v85 = sub_22A4DD4AC();
        v87 = sub_2295A3E30(v85, v86, &v96);

        *(v79 + 24) = v87;
        _os_log_impl(&dword_229538000, v77, v78, "%s %s Device does not support local presence, unable to handle message: %s", v79, 0x20u);
        v88 = v90;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v88, -1, -1);
        MEMORY[0x22AAD4E50](v79, -1, -1);
      }

      (*(v93 + 8))(v22, v92);
      return 0;
    }
  }

  v31 = *MEMORY[0x277CCF1D8];
  v32 = sub_22A4DD5EC();
  if (!*(a1 + 16))
  {

LABEL_30:

    return v89;
  }

  v34 = sub_229543DBC(v32, v33);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v34, &v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  result = v96;
  v93 = *(v96 + 16);
  if (v93)
  {
    v38 = 0;
    v39 = (v90 + 48);
    v92 = (v90 + 32);
    v40 = (v96 + 40);
    v41 = MEMORY[0x277D84F90];
    while (v38 < *(result + 16))
    {
      v69 = result;
      v71 = *(v40 - 1);
      v70 = *v40;

      sub_22A4DB75C();

      if ((*v39)(v7, 1, v8) == 1)
      {
        sub_22953EAE4(v7, &unk_27D87D2A0, &unk_22A578BD0);
      }

      else
      {
        v72 = *v92;
        (*v92)(v12, v7, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_22958B1F0(0, v41[2] + 1, 1, v41);
        }

        v73 = v41;
        v75 = v41[2];
        v74 = v41[3];
        if (v75 >= v74 >> 1)
        {
          v73 = sub_22958B1F0(v74 > 1, v75 + 1, 1, v41);
        }

        *(v73 + 16) = v75 + 1;
        v41 = v73;
        v72((v73 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v75), v12, v8);
      }

      ++v38;
      v40 += 2;
      result = v69;
      if (v93 == v38)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_34:

    return v89;
  }

  return result;
}

uint64_t sub_2297DB7AC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_22A4DD07C();
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_22956F33C(a1, a2);
  if ((result & 1) == 0)
  {
    v34 = v11;
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    (*(v7 + 16))(v10, a1, v6);
    v16 = a3;
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38 = v33;
      *v19 = 136315650;
      v36 = 91;
      v37 = 0xE100000000000000;
      v20 = [v16 logIdentifier];
      v32 = v18;
      v21 = v20;
      v22 = sub_22A4DD5EC();
      v24 = v23;

      MEMORY[0x22AAD08C0](v22, v24);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v25 = sub_2295A3E30(v36, v37, &v38);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A597220, &v38);
      *(v19 + 22) = 2080;
      sub_2297E3070(&qword_281403860, MEMORY[0x277CC95F0]);
      v26 = sub_22A4DE5CC();
      v28 = v27;
      (*(v7 + 8))(v10, v6);
      v29 = sub_2295A3E30(v26, v28, &v38);

      *(v19 + 24) = v29;
      _os_log_impl(&dword_229538000, v17, v32, "%s %s roomUUID: %s does not support local presence", v19, 0x20u);
      v30 = v33;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v19, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    (*(v35 + 8))(v14, v34);
    type metadata accessor for HMError(0);
    v38 = 48;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2297E3070(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2297DBC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_22A4DD07C();
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v10 = *(v9 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297DBCD0, 0, 0);
}

uint64_t sub_2297DBCD0()
{
  v1 = v0[7];
  sub_229785F6C(v0 + 2);
  v2 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_2297DBD80;
  v5 = v0[8];
  v4 = v0[9];

  return sub_2296C21E0(v5, v4);
}

uint64_t sub_2297DBD80()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_2297DBFE4;
  }

  else
  {
    v3 = sub_2297DBE94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2297DBE94()
{
  v1 = v0[14];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Successfully updated adaptive thermostat driver settings", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[10];

  (*(v7 + 8))(v5, v6);
  [v8 respondWithSuccess];
  v10 = v0[13];
  v9 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2297DBFE4()
{
  v34 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[7];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v4 = v3;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[16];
    v30 = v0[12];
    v31 = v0[11];
    v32 = v0[13];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v10 = 136315650;
    v33[0] = v12;
    v33[1] = 91;
    v33[2] = 0xE100000000000000;
    v13 = [v9 logIdentifier];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v17 = sub_2295A3E30(91, 0xE100000000000000, v33);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A597220, v33);
    *(v10 + 22) = 2112;
    v18 = v8;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v19;
    *v11 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "%s %s Failed to update settings with error: %@", v10, 0x20u);
    sub_22953EAE4(v11, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[11];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[16];
  v24 = v0[10];
  v25 = sub_22A4DB3DC();
  [v24 respondWithError_];

  v27 = v0[13];
  v26 = v0[14];

  v28 = v0[1];

  return v28();
}

void sub_2297DC370(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v97 - v6;
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v100 = v8;
  v101 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v99 = &v97 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v97 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v97 - v19;
  v21 = [a1 name];
  v22 = *MEMORY[0x277CCFD40];
  v23 = sub_22A4DD5EC();
  v25 = v24;
  if (v23 == sub_22A4DD5EC() && v25 == v26)
  {
  }

  else
  {
    v28 = sub_22A4DE60C();

    if ((v28 & 1) == 0)
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v29 = v2;
      v30 = a1;
      v31 = sub_22A4DD05C();
      v32 = sub_22A4DDCEC();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v99 = v35;
        *v33 = 136315650;
        v102 = 91;
        v103 = 0xE100000000000000;
        v104 = v35;
        v36 = [v29 logIdentifier];
        v37 = sub_22A4DD5EC();
        v39 = v38;

        MEMORY[0x22AAD08C0](v37, v39);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v40 = sub_2295A3E30(v102, v103, &v104);

        *(v33 + 4) = v40;
        *(v33 + 12) = 2080;
        *(v33 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A5971E0, &v104);
        *(v33 + 22) = 2112;
        *(v33 + 24) = v30;
        *v34 = v30;
        v41 = v30;
        _os_log_impl(&dword_229538000, v31, v32, "%s %s Unexpected message, unable to handle message: %@", v33, 0x20u);
        sub_22953EAE4(v34, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v34, -1, -1);
        v42 = v99;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v42, -1, -1);
        MEMORY[0x22AAD4E50](v33, -1, -1);
      }

      (*(v101 + 8))(v20, v100);
      v43 = [objc_opt_self() hmErrorWithCode_];
LABEL_20:
      v79 = v43;
      v80 = sub_22A4DB3DC();

      [v30 respondWithError_];
      goto LABEL_21;
    }
  }

  v44 = [v2 supportsAdaptiveTemperatureAutomations];
  v45 = [v44 BOOLValue];

  if ((v45 & 1) == 0)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v53 = v2;
    v30 = a1;
    v54 = sub_22A4DD05C();
    v55 = sub_22A4DDCEC();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v99 = v58;
      *v56 = 136315650;
      v102 = 91;
      v103 = 0xE100000000000000;
      v104 = v58;
      v59 = [v53 logIdentifier];
      v60 = sub_22A4DD5EC();
      v62 = v61;

      MEMORY[0x22AAD08C0](v60, v62);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v63 = sub_2295A3E30(v102, v103, &v104);

      *(v56 + 4) = v63;
      *(v56 + 12) = 2080;
      *(v56 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A5971E0, &v104);
      *(v56 + 22) = 2112;
      *(v56 + 24) = v30;
      *v57 = v30;
      v64 = v30;
      _os_log_impl(&dword_229538000, v54, v55, "%s %s Accessory does not support adaptive temperature, unable to handle message: %@", v56, 0x20u);
      sub_22953EAE4(v57, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v57, -1, -1);
      v65 = v99;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v65, -1, -1);
      MEMORY[0x22AAD4E50](v56, -1, -1);
    }

    (*(v101 + 8))(v18, v100);
    v43 = [objc_opt_self() hmErrorWithCode_];
    goto LABEL_20;
  }

  v46 = [v2 home];
  if (!v46)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v66 = v2;
    v30 = a1;
    v67 = sub_22A4DD05C();
    v68 = sub_22A4DDCEC();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v99 = v71;
      *v69 = 136315650;
      v102 = 91;
      v103 = 0xE100000000000000;
      v104 = v71;
      v72 = [v66 logIdentifier];
      v73 = sub_22A4DD5EC();
      v75 = v74;

      MEMORY[0x22AAD08C0](v73, v75);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v76 = sub_2295A3E30(v102, v103, &v104);

      *(v69 + 4) = v76;
      *(v69 + 12) = 2080;
      *(v69 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A5971E0, &v104);
      *(v69 + 22) = 2112;
      *(v69 + 24) = v30;
      *v70 = v30;
      v77 = v30;
      _os_log_impl(&dword_229538000, v67, v68, "%s %s Missing home, unable to handle message: %@", v69, 0x20u);
      sub_22953EAE4(v70, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v70, -1, -1);
      v78 = v99;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v78, -1, -1);
      MEMORY[0x22AAD4E50](v69, -1, -1);
    }

    (*(v101 + 8))(v13, v100);
    v43 = [objc_opt_self() hmErrorWithCode_];
    goto LABEL_20;
  }

  v47 = v46;
  v48 = [objc_msgSend(v46 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v48)
  {
    v49 = sub_22A4DD9DC();
    (*(*(v49 - 8) + 56))(v7, 1, 1, v49);
    v50 = swift_allocObject();
    v50[2] = 0;
    v50[3] = 0;
    v50[4] = v2;
    v50[5] = a1;
    v51 = v2;
    v52 = a1;
    sub_22957F3C0(0, 0, v7, &unk_22A584348, v50);

    return;
  }

  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  v81 = v99;
  sub_22A4DD08C();
  v82 = v2;
  v83 = a1;
  v84 = sub_22A4DD05C();
  v85 = sub_22A4DDCEC();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v98 = v88;
    *v86 = 136315650;
    v102 = 91;
    v103 = 0xE100000000000000;
    v104 = v88;
    v89 = [v82 logIdentifier];
    v90 = sub_22A4DD5EC();
    v92 = v91;

    MEMORY[0x22AAD08C0](v90, v92);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v93 = sub_2295A3E30(v102, v103, &v104);

    *(v86 + 4) = v93;
    *(v86 + 12) = 2080;
    *(v86 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A5971E0, &v104);
    *(v86 + 22) = 2112;
    *(v86 + 24) = v83;
    *v87 = v83;
    v94 = v83;
    _os_log_impl(&dword_229538000, v84, v85, "%s %s Home Activity State feature is not enabled, unable to handle message: %@", v86, 0x20u);
    sub_22953EAE4(v87, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v87, -1, -1);
    v95 = v98;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v95, -1, -1);
    MEMORY[0x22AAD4E50](v86, -1, -1);

    (*(v101 + 8))(v99, v100);
  }

  else
  {

    (*(v101 + 8))(v81, v100);
  }

  v96 = [objc_opt_self() hmErrorWithCode_];
  v80 = sub_22A4DB3DC();

  [v83 respondWithError_];
LABEL_21:
}

uint64_t sub_2297DCFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_22A4DD07C();
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v8 = *(v7 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v9 = sub_22A4DB7DC();
  v5[24] = v9;
  v10 = *(v9 - 8);
  v5[25] = v10;
  v11 = *(v10 + 64) + 15;
  v5[26] = swift_task_alloc();
  v12 = swift_task_alloc();
  v5[27] = v12;
  *v12 = v5;
  v12[1] = sub_2297DD100;

  return sub_2297D361C();
}

uint64_t sub_2297DD100(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 216);
  v8 = *v3;
  v4[28] = a1;
  v4[29] = a2;
  v4[30] = v2;

  if (v2)
  {
    v6 = sub_2297DD794;
  }

  else
  {
    v6 = sub_2297DD218;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2297DD218()
{
  v65 = v0;
  v1 = v0[29];
  v2 = MEMORY[0x277D84F98];
  if (v1)
  {
    v3 = *MEMORY[0x277CCF1D8];
    v59 = sub_22A4DD5EC();
    v60 = v4;
    v5 = *(v1 + 16);
    if (v5)
    {
      v6 = v0[25];
      v8 = *(v6 + 16);
      v7 = v6 + 16;
      v9 = v1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
      v61 = *(v7 + 56);
      v62 = v8;
      v10 = MEMORY[0x277D84F90];
      do
      {
        v11 = v0[26];
        v12 = v0[24];
        v62(v11, v9, v12);
        v13 = sub_22A4DB76C();
        v15 = v14;
        (*(v7 - 8))(v11, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_22958A53C(0, *(v10 + 2) + 1, 1, v10);
        }

        v17 = *(v10 + 2);
        v16 = *(v10 + 3);
        if (v17 >= v16 >> 1)
        {
          v10 = sub_22958A53C((v16 > 1), v17 + 1, 1, v10);
        }

        *(v10 + 2) = v17 + 1;
        v18 = &v10[16 * v17];
        *(v18 + 4) = v13;
        *(v18 + 5) = v15;
        v9 += v61;
        --v5;
        v0 = v63;
      }

      while (v5);
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    v0[13] = v19;
    v0[10] = v10;
    sub_229543C58(v0 + 10, v0 + 14);
    v20 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v20;
    v22 = v0[17];
    v23 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 14), v22);
    v24 = *(v22 - 8);
    v25 = *(v24 + 64) + 15;
    v26 = swift_task_alloc();
    (*(v24 + 16))(v26, v23, v22);
    sub_2297FF768(v26, v59, v60, isUniquelyReferenced_nonNull_native, &v64, v19);
    __swift_destroy_boxed_opaque_existential_0(v0 + 14);

    v2 = v64;
  }

  v27 = v0[28];
  v28 = v0;
  v29 = v0[23];
  v30 = v0[19];
  v31 = *MEMORY[0x277CCF1E0];
  v32 = sub_22A4DD5EC();
  v34 = v33;
  v0[5] = MEMORY[0x277D83E88];
  v0[2] = v27;
  sub_229543C58(v0 + 2, v0 + 6);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v64 = v2;
  v36 = v0[9];
  v37 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 6), v36);
  v38 = *(v36 - 8);
  v39 = *(v38 + 64) + 15;
  v40 = swift_task_alloc();
  (*(v38 + 16))(v40, v37, v36);
  sub_2297FF580(*v40, v32, v34, v35, &v64);
  __swift_destroy_boxed_opaque_existential_0(v28 + 6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v41 = sub_22A4DD47C();

  [v30 respondWithPayload_];

  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v42 = sub_22A4DD05C();
  v43 = sub_22A4DDCCC();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v28[23];
  v47 = v28[20];
  v46 = v28[21];
  if (v44)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v64 = v49;
    *v48 = 136315138;

    v50 = sub_22A4DD4AC();
    v52 = v51;

    v53 = sub_2295A3E30(v50, v52, &v64);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_229538000, v42, v43, "Successfully fetched adaptive temperature driver settings: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x22AAD4E50](v49, -1, -1);
    MEMORY[0x22AAD4E50](v48, -1, -1);
  }

  (*(v46 + 8))(v45, v47);

  v54 = v63[26];
  v55 = v63[22];
  v56 = v63[23];

  v57 = v63[1];

  return v57();
}

uint64_t sub_2297DD794()
{
  v35 = v0;
  v1 = v0[30];
  v2 = v0[22];
  v3 = v0[18];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v4 = v3;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[30];
    v31 = v0[21];
    v32 = v0[20];
    v33 = v0[22];
    v9 = v0[18];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v10 = 136315650;
    v34[0] = v12;
    v34[1] = 91;
    v34[2] = 0xE100000000000000;
    v13 = [v9 logIdentifier];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v17 = sub_2295A3E30(91, 0xE100000000000000, v34);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A5971E0, v34);
    *(v10 + 22) = 2112;
    v18 = v8;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v19;
    *v11 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "%s %s Failed to update settings with error: %@", v10, 0x20u);
    sub_22953EAE4(v11, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);

    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v21 = v0[21];
    v20 = v0[22];
    v22 = v0[20];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[30];
  v24 = v0[19];
  v25 = sub_22A4DB3DC();
  [v24 respondWithError_];

  v26 = v0[26];
  v27 = v0[22];
  v28 = v0[23];

  v29 = v0[1];

  return v29();
}

void sub_2297DDB24(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v97 - v6;
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v100 = v8;
  v101 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v99 = &v97 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v97 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v97 - v19;
  v21 = [a1 name];
  v22 = *MEMORY[0x277CCF090];
  v23 = sub_22A4DD5EC();
  v25 = v24;
  if (v23 == sub_22A4DD5EC() && v25 == v26)
  {
  }

  else
  {
    v28 = sub_22A4DE60C();

    if ((v28 & 1) == 0)
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v29 = v2;
      v30 = a1;
      v31 = sub_22A4DD05C();
      v32 = sub_22A4DDCEC();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v99 = v35;
        *v33 = 136315650;
        v102 = 91;
        v103 = 0xE100000000000000;
        v104 = v35;
        v36 = [v29 logIdentifier];
        v37 = sub_22A4DD5EC();
        v39 = v38;

        MEMORY[0x22AAD08C0](v37, v39);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v40 = sub_2295A3E30(v102, v103, &v104);

        *(v33 + 4) = v40;
        *(v33 + 12) = 2080;
        *(v33 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A5971B0, &v104);
        *(v33 + 22) = 2112;
        *(v33 + 24) = v30;
        *v34 = v30;
        v41 = v30;
        _os_log_impl(&dword_229538000, v31, v32, "%s %s Unexpected message, unable to handle message: %@", v33, 0x20u);
        sub_22953EAE4(v34, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v34, -1, -1);
        v42 = v99;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v42, -1, -1);
        MEMORY[0x22AAD4E50](v33, -1, -1);
      }

      (*(v101 + 8))(v20, v100);
      v43 = [objc_opt_self() hmErrorWithCode_];
LABEL_20:
      v79 = v43;
      v80 = sub_22A4DB3DC();

      [v30 respondWithError_];
      goto LABEL_21;
    }
  }

  v44 = [v2 supportsAdaptiveTemperatureAutomations];
  v45 = [v44 BOOLValue];

  if ((v45 & 1) == 0)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v53 = v2;
    v30 = a1;
    v54 = sub_22A4DD05C();
    v55 = sub_22A4DDCEC();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v99 = v58;
      *v56 = 136315650;
      v102 = 91;
      v103 = 0xE100000000000000;
      v104 = v58;
      v59 = [v53 logIdentifier];
      v60 = sub_22A4DD5EC();
      v62 = v61;

      MEMORY[0x22AAD08C0](v60, v62);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v63 = sub_2295A3E30(v102, v103, &v104);

      *(v56 + 4) = v63;
      *(v56 + 12) = 2080;
      *(v56 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A5971B0, &v104);
      *(v56 + 22) = 2112;
      *(v56 + 24) = v30;
      *v57 = v30;
      v64 = v30;
      _os_log_impl(&dword_229538000, v54, v55, "%s %s Accessory does not support adaptive temperature, unable to handle message: %@", v56, 0x20u);
      sub_22953EAE4(v57, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v57, -1, -1);
      v65 = v99;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v65, -1, -1);
      MEMORY[0x22AAD4E50](v56, -1, -1);
    }

    (*(v101 + 8))(v18, v100);
    v43 = [objc_opt_self() hmErrorWithCode_];
    goto LABEL_20;
  }

  v46 = [v2 home];
  if (!v46)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v66 = v2;
    v30 = a1;
    v67 = sub_22A4DD05C();
    v68 = sub_22A4DDCEC();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v99 = v71;
      *v69 = 136315650;
      v102 = 91;
      v103 = 0xE100000000000000;
      v104 = v71;
      v72 = [v66 logIdentifier];
      v73 = sub_22A4DD5EC();
      v75 = v74;

      MEMORY[0x22AAD08C0](v73, v75);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v76 = sub_2295A3E30(v102, v103, &v104);

      *(v69 + 4) = v76;
      *(v69 + 12) = 2080;
      *(v69 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A5971B0, &v104);
      *(v69 + 22) = 2112;
      *(v69 + 24) = v30;
      *v70 = v30;
      v77 = v30;
      _os_log_impl(&dword_229538000, v67, v68, "%s %s Missing home, unable to handle message: %@", v69, 0x20u);
      sub_22953EAE4(v70, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v70, -1, -1);
      v78 = v99;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v78, -1, -1);
      MEMORY[0x22AAD4E50](v69, -1, -1);
    }

    (*(v101 + 8))(v13, v100);
    v43 = [objc_opt_self() hmErrorWithCode_];
    goto LABEL_20;
  }

  v47 = v46;
  v48 = [objc_msgSend(v46 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v48)
  {
    v49 = sub_22A4DD9DC();
    (*(*(v49 - 8) + 56))(v7, 1, 1, v49);
    v50 = swift_allocObject();
    v50[2] = 0;
    v50[3] = 0;
    v50[4] = v2;
    v50[5] = a1;
    v51 = v2;
    v52 = a1;
    sub_22957F3C0(0, 0, v7, &unk_22A584338, v50);

    return;
  }

  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  v81 = v99;
  sub_22A4DD08C();
  v82 = v2;
  v83 = a1;
  v84 = sub_22A4DD05C();
  v85 = sub_22A4DDCEC();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v98 = v88;
    *v86 = 136315650;
    v102 = 91;
    v103 = 0xE100000000000000;
    v104 = v88;
    v89 = [v82 logIdentifier];
    v90 = sub_22A4DD5EC();
    v92 = v91;

    MEMORY[0x22AAD08C0](v90, v92);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v93 = sub_2295A3E30(v102, v103, &v104);

    *(v86 + 4) = v93;
    *(v86 + 12) = 2080;
    *(v86 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A5971B0, &v104);
    *(v86 + 22) = 2112;
    *(v86 + 24) = v83;
    *v87 = v83;
    v94 = v83;
    _os_log_impl(&dword_229538000, v84, v85, "%s %s Home Activity State feature is not enabled, unable to handle message: %@", v86, 0x20u);
    sub_22953EAE4(v87, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v87, -1, -1);
    v95 = v98;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v95, -1, -1);
    MEMORY[0x22AAD4E50](v86, -1, -1);

    (*(v101 + 8))(v99, v100);
  }

  else
  {

    (*(v101 + 8))(v81, v100);
  }

  v96 = [objc_opt_self() hmErrorWithCode_];
  v80 = sub_22A4DB3DC();

  [v83 respondWithError_];
LABEL_21:
}

uint64_t sub_2297DE75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_22A4DD07C();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[16] = v9;
  *v9 = v5;
  v9[1] = sub_2297DE858;

  return sub_2297D39D4();
}

uint64_t sub_2297DE858(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_2297DED34;
  }

  else
  {
    *(v4 + 144) = a1;
    v7 = sub_2297DE980;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2297DE980()
{
  v38 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v35 = v0[11];
  v3 = *MEMORY[0x277CCF0A0];
  v4 = sub_22A4DD5EC();
  v6 = v5;
  sub_229562F68(0, &qword_27D87CD80, 0x277CD1F20);
  v7 = sub_22A4DD81C();

  v8 = encodeRootObject();

  v9 = sub_22A4DB62C();
  v11 = v10;

  v0[2] = v9;
  v0[5] = MEMORY[0x277CC9318];
  v0[3] = v11;
  sub_229543C58(v0 + 2, v0 + 6);
  v12 = MEMORY[0x277D84F98];
  LOBYTE(v11) = swift_isUniquelyReferenced_nonNull_native();
  v37 = v12;
  v13 = v0[9];
  v14 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 6), v13);
  v15 = *(v13 - 8);
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  (*(v15 + 16))(v17, v14, v13);
  sub_2297FF398(*v17, v17[1], v4, v6, v11, &v37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v18 = sub_22A4DD47C();

  [v35 respondWithPayload_];

  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v19 = sub_22A4DD05C();
  v20 = sub_22A4DDCCC();
  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[15];
  v24 = v0[12];
  v23 = v0[13];
  if (v21)
  {
    v36 = v0[15];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v37 = v26;
    *v25 = 136315138;

    v27 = sub_22A4DD4AC();
    v29 = v28;

    v30 = sub_2295A3E30(v27, v29, &v37);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_229538000, v19, v20, "Successfully fetched thermostat sleep schedule: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v25, -1, -1);

    (*(v23 + 8))(v36, v24);
  }

  else
  {

    (*(v23 + 8))(v22, v24);
  }

  v32 = v0[14];
  v31 = v0[15];

  v33 = v0[1];

  return v33();
}

uint64_t sub_2297DED34()
{
  v34 = v0;
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[10];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v4 = v3;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[17];
    v30 = v0[13];
    v31 = v0[12];
    v32 = v0[14];
    v9 = v0[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v10 = 136315650;
    v33[0] = v12;
    v33[1] = 91;
    v33[2] = 0xE100000000000000;
    v13 = [v9 logIdentifier];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v17 = sub_2295A3E30(91, 0xE100000000000000, v33);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A5971B0, v33);
    *(v10 + 22) = 2112;
    v18 = v8;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v19;
    *v11 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "%s %s Failed to fetch thermostat sleep schedule with error: %@", v10, 0x20u);
    sub_22953EAE4(v11, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v21 = v0[13];
    v20 = v0[14];
    v22 = v0[12];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[17];
  v24 = v0[11];
  v25 = sub_22A4DB3DC();
  [v24 respondWithError_];

  v27 = v0[14];
  v26 = v0[15];

  v28 = v0[1];

  return v28();
}

void sub_2297DF0B8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v126 = &v125 - v6;
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v128 = v7;
  v129 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v127 = &v125 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v125 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v125 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v125 - v21;
  v23 = a1;
  v24 = [a1 name];
  v25 = *MEMORY[0x277CCF098];
  v26 = sub_22A4DD5EC();
  v28 = v27;
  if (v26 == sub_22A4DD5EC() && v28 == v29)
  {
  }

  else
  {
    v31 = sub_22A4DE60C();

    if ((v31 & 1) == 0)
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v32 = v2;
      v33 = v23;
      v34 = sub_22A4DD05C();
      v35 = sub_22A4DDCEC();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        *&v131 = v127;
        *v36 = 136315650;
        *&v133[0] = 91;
        *(&v133[0] + 1) = 0xE100000000000000;
        v38 = [v32 logIdentifier];
        v39 = sub_22A4DD5EC();
        v41 = v40;

        MEMORY[0x22AAD08C0](v39, v41);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v42 = sub_2295A3E30(*&v133[0], *(&v133[0] + 1), &v131);

        *(v36 + 4) = v42;
        *(v36 + 12) = 2080;
        *(v36 + 14) = sub_2295A3E30(0xD00000000000002BLL, 0x800000022A597180, &v131);
        *(v36 + 22) = 2112;
        *(v36 + 24) = v33;
        *v37 = v33;
        v43 = v33;
        _os_log_impl(&dword_229538000, v34, v35, "%s %s Unexpected message, unable to handle message: %@", v36, 0x20u);
        sub_22953EAE4(v37, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v37, -1, -1);
        v44 = v127;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v44, -1, -1);
        MEMORY[0x22AAD4E50](v36, -1, -1);
      }

      (*(v129 + 8))(v22, v128);
      v45 = [objc_opt_self() hmErrorWithCode_];
LABEL_22:
      v85 = v45;
      v72 = sub_22A4DB3DC();

      [v33 respondWithError_];
      goto LABEL_38;
    }
  }

  v46 = [v2 supportsAdaptiveTemperatureAutomations];
  v47 = [v46 BOOLValue];

  if ((v47 & 1) == 0)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v58 = v2;
    v59 = v23;
    v60 = sub_22A4DD05C();
    v61 = sub_22A4DDCEC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *&v131 = v127;
      *v62 = 136315650;
      *&v133[0] = 91;
      *(&v133[0] + 1) = 0xE100000000000000;
      v64 = [v58 logIdentifier];
      v65 = sub_22A4DD5EC();
      v67 = v66;

      MEMORY[0x22AAD08C0](v65, v67);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v68 = sub_2295A3E30(*&v133[0], *(&v133[0] + 1), &v131);

      *(v62 + 4) = v68;
      *(v62 + 12) = 2080;
      *(v62 + 14) = sub_2295A3E30(0xD00000000000002BLL, 0x800000022A597180, &v131);
      *(v62 + 22) = 2112;
      *(v62 + 24) = v59;
      *v63 = v59;
      v69 = v59;
      _os_log_impl(&dword_229538000, v60, v61, "%s %s Accessory does not support adaptive temperature, unable to handle message: %@", v62, 0x20u);
      sub_22953EAE4(v63, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v63, -1, -1);
      v70 = v127;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v70, -1, -1);
      MEMORY[0x22AAD4E50](v62, -1, -1);
    }

    (*(v129 + 8))(v20, v128);
    v71 = [objc_opt_self() hmErrorWithCode_];
    v72 = sub_22A4DB3DC();

    [v59 respondWithError_];
    goto LABEL_38;
  }

  v48 = [v2 home];
  if (!v48)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v73 = v2;
    v33 = v23;
    v74 = sub_22A4DD05C();
    v75 = sub_22A4DDCEC();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *&v131 = v127;
      *v76 = 136315650;
      *&v133[0] = 91;
      *(&v133[0] + 1) = 0xE100000000000000;
      v78 = [v73 logIdentifier];
      v79 = sub_22A4DD5EC();
      v81 = v80;

      MEMORY[0x22AAD08C0](v79, v81);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v82 = sub_2295A3E30(*&v133[0], *(&v133[0] + 1), &v131);

      *(v76 + 4) = v82;
      *(v76 + 12) = 2080;
      *(v76 + 14) = sub_2295A3E30(0xD00000000000002BLL, 0x800000022A597180, &v131);
      *(v76 + 22) = 2112;
      *(v76 + 24) = v33;
      *v77 = v33;
      v83 = v33;
      _os_log_impl(&dword_229538000, v74, v75, "%s %s Missing home, unable to handle message: %@", v76, 0x20u);
      sub_22953EAE4(v77, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v77, -1, -1);
      v84 = v127;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v84, -1, -1);
      MEMORY[0x22AAD4E50](v76, -1, -1);
    }

    (*(v129 + 8))(v12, v128);
    v45 = [objc_opt_self() hmErrorWithCode_];
    goto LABEL_22;
  }

  v49 = v48;
  v50 = [objc_msgSend(v48 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v50)
  {
    v51 = [v23 messagePayload];
    v52 = v17;
    if (v51)
    {

      v53 = *MEMORY[0x277CCF0A0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F060, &qword_22A578050);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_22A5761A0;
      *(v54 + 32) = sub_229562F68(0, &unk_27D880900, 0x277CBEA60);
      *(v54 + 40) = sub_229562F68(0, &qword_27D87CD80, 0x277CD1F20);
      v55 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F058, &unk_22A582DE0);
      v56 = sub_22A4DD81C();

      v57 = [v23 unarchivedObjectForKey:v55 ofClasses:v56];

      if (v57)
      {
        sub_22A4DE01C();
        swift_unknownObjectRelease();
      }

      else
      {
        v131 = 0u;
        v132 = 0u;
      }

      v133[0] = v131;
      v133[1] = v132;
      if (*(&v132 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1E0, &unk_22A57E360);
        if (swift_dynamicCast())
        {
          v103 = v130;
          v104 = sub_22A4DD9DC();
          v105 = v126;
          (*(*(v104 - 8) + 56))(v126, 1, 1, v104);
          v106 = swift_allocObject();
          v106[2] = 0;
          v106[3] = 0;
          v106[4] = v2;
          v106[5] = v103;
          v106[6] = v23;
          v107 = v2;
          v108 = v23;
          sub_22957F3C0(0, 0, v105, &unk_22A584328, v106);

          return;
        }
      }

      else
      {
        sub_22953EAE4(v133, &unk_27D87DE60, &unk_22A57A960);
      }
    }

    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v109 = v2;
    v88 = v23;
    v110 = sub_22A4DD05C();
    v111 = sub_22A4DDCEC();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v126 = v49;
      v114 = v113;
      v127 = swift_slowAlloc();
      *&v131 = v127;
      *v112 = 136315650;
      *&v133[0] = 91;
      *(&v133[0] + 1) = 0xE100000000000000;
      v115 = [v109 logIdentifier];
      v116 = sub_22A4DD5EC();
      v117 = v52;
      v119 = v118;

      MEMORY[0x22AAD08C0](v116, v119);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v120 = sub_2295A3E30(*&v133[0], *(&v133[0] + 1), &v131);

      *(v112 + 4) = v120;
      *(v112 + 12) = 2080;
      *(v112 + 14) = sub_2295A3E30(0xD00000000000002BLL, 0x800000022A597180, &v131);
      *(v112 + 22) = 2112;
      *(v112 + 24) = v88;
      *v114 = v88;
      v121 = v88;
      _os_log_impl(&dword_229538000, v110, v111, "%s %s Missing payload, unable to handle message: %@", v112, 0x20u);
      sub_22953EAE4(v114, &qword_27D87D7D0, &unk_22A578D90);
      v122 = v114;
      v49 = v126;
      MEMORY[0x22AAD4E50](v122, -1, -1);
      v123 = v127;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v123, -1, -1);
      MEMORY[0x22AAD4E50](v112, -1, -1);

      (*(v129 + 8))(v117, v128);
    }

    else
    {

      (*(v129 + 8))(v52, v128);
    }

    v102 = [objc_opt_self() hmErrorWithCode_];
  }

  else
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    v86 = v127;
    sub_22A4DD08C();
    v87 = v2;
    v88 = v23;
    v89 = sub_22A4DD05C();
    v90 = sub_22A4DDCEC();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v126 = v49;
      v93 = v92;
      v94 = swift_slowAlloc();
      *&v131 = v94;
      *v91 = 136315650;
      *&v133[0] = 91;
      *(&v133[0] + 1) = 0xE100000000000000;
      v95 = [v87 logIdentifier];
      v96 = sub_22A4DD5EC();
      v98 = v97;

      MEMORY[0x22AAD08C0](v96, v98);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v99 = sub_2295A3E30(*&v133[0], *(&v133[0] + 1), &v131);

      *(v91 + 4) = v99;
      *(v91 + 12) = 2080;
      *(v91 + 14) = sub_2295A3E30(0xD00000000000002BLL, 0x800000022A597180, &v131);
      *(v91 + 22) = 2112;
      *(v91 + 24) = v88;
      *v93 = v88;
      v100 = v88;
      _os_log_impl(&dword_229538000, v89, v90, "%s %s Home Activity State feature is not enabled, unable to handle message: %@", v91, 0x20u);
      sub_22953EAE4(v93, &qword_27D87D7D0, &unk_22A578D90);
      v101 = v93;
      v49 = v126;
      MEMORY[0x22AAD4E50](v101, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v94, -1, -1);
      MEMORY[0x22AAD4E50](v91, -1, -1);

      (*(v129 + 8))(v127, v128);
    }

    else
    {

      (*(v129 + 8))(v86, v128);
    }

    v102 = [objc_opt_self() hmErrorWithCode_];
  }

  v124 = v102;
  v72 = sub_22A4DB3DC();

  [v88 respondWithError_];
LABEL_38:
}

uint64_t sub_2297E0114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_22A4DD07C();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297E01E4, 0, 0);
}

uint64_t sub_2297E01E4()
{
  v1 = v0[7];
  sub_229785F6C(v0 + 2);
  v2 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_2297E0294;
  v4 = v0[8];

  return sub_2296C4238(v4);
}

uint64_t sub_2297E0294()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_2297E0590;
  }

  else
  {
    v3 = sub_2297E03A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2297E03A8()
{
  v21 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  if (v5)
  {
    v9 = *(v0 + 64);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    v12 = sub_229562F68(0, &qword_27D87CD80, 0x277CD1F20);
    v13 = MEMORY[0x22AAD0A20](v9, v12);
    v15 = sub_2295A3E30(v13, v14, &v20);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_229538000, v3, v4, "Successfully set thermostat sleep schedule: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  (*(v8 + 8))(v6, v7);
  [*(v0 + 72) respondWithSuccess];
  v17 = *(v0 + 96);
  v16 = *(v0 + 104);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2297E0590()
{
  v34 = v0;
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[7];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v4 = v3;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[15];
    v30 = v0[11];
    v31 = v0[10];
    v32 = v0[12];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v10 = 136315650;
    v33[0] = v12;
    v33[1] = 91;
    v33[2] = 0xE100000000000000;
    v13 = [v9 logIdentifier];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v17 = sub_2295A3E30(91, 0xE100000000000000, v33);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD00000000000002BLL, 0x800000022A597180, v33);
    *(v10 + 22) = 2112;
    v18 = v8;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v19;
    *v11 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "%s %s Failed to set thermostat sleep schedule with error: %@", v10, 0x20u);
    sub_22953EAE4(v11, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v21 = v0[11];
    v20 = v0[12];
    v22 = v0[10];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[15];
  v24 = v0[9];
  v25 = sub_22A4DB3DC();
  [v24 respondWithError_];

  v27 = v0[12];
  v26 = v0[13];

  v28 = v0[1];

  return v28();
}

uint64_t sub_2297E091C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229586D38;

  return sub_2297E09F0(a1);
}

uint64_t sub_2297E09F0(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v2[41] = v3;
  v4 = *(v3 - 8);
  v2[42] = v4;
  v5 = *(v4 + 64) + 15;
  v2[43] = swift_task_alloc();
  v6 = sub_22A4DB21C();
  v2[44] = v6;
  v7 = *(v6 - 8);
  v2[45] = v7;
  v8 = *(v7 + 64) + 15;
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  v2[48] = v9;
  v10 = *(v9 - 8);
  v2[49] = v10;
  v11 = *(v10 + 64) + 15;
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v12 = sub_22A4DD07C();
  v2[52] = v12;
  v13 = *(v12 - 8);
  v2[53] = v13;
  v14 = *(v13 + 64) + 15;
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297E0C00, 0, 0);
}

uint64_t sub_2297E0C00()
{
  v98 = v0;
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[48];
  v4 = v0[49];
  v6 = v0[39];
  v5 = v0[40];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v94 = *(v4 + 16);
  v94(v2, v6, v3);
  v7 = v5;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();

  v89 = v9;
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[55];
  v13 = v0[52];
  v12 = v0[53];
  v14 = v0[51];
  v15 = v0[48];
  v16 = v0[49];
  if (v10)
  {
    v92 = v0[45];
    v81 = v0[47];
    v82 = v0[44];
    v87 = v0[55];
    v17 = v0[40];
    log = v8;
    v18 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v97 = v85;
    *v18 = 136315394;
    v19 = [v17 logIdentifier];
    v20 = sub_22A4DD5EC();
    v22 = v21;

    v23 = sub_2295A3E30(v20, v22, &v97);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    sub_22A4DBA4C();
    sub_2297E3070(&unk_2814038C0, MEMORY[0x277CC8900]);
    v24 = sub_22A4DE5CC();
    v26 = v25;
    (*(v92 + 8))(v81, v82);
    v93 = *(v16 + 8);
    v93(v14, v15);
    v27 = sub_2295A3E30(v24, v26, &v97);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_229538000, log, v89, "%s handling %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v85, -1, -1);
    MEMORY[0x22AAD4E50](v18, -1, -1);

    v28 = *(v12 + 8);
    v28(v87, v13);
  }

  else
  {

    v93 = *(v16 + 8);
    v93(v14, v15);
    v28 = *(v12 + 8);
    v28(v11, v13);
  }

  v29 = v0[48];
  v30 = v0[45];
  v31 = v0[46];
  v32 = v0[44];
  v33 = v0[39];
  sub_22A4DBA4C();
  sub_22A4DB1FC();
  v34 = *(v30 + 8);
  v34(v31, v32);
  if (v0[37])
  {
    if (swift_dynamicCast())
    {
      v35 = v0[40];
      v36 = v0[38];
      v0[56] = v36;
      sub_229562F68(0, &qword_281401760, 0x277D82BB8);
      if (sub_22A4DDEDC())
      {
        v38 = v0[42];
        v37 = v0[43];
        v39 = v0[41];
        v0[2] = v0;
        v0[3] = sub_2297E1448;
        swift_continuation_init();
        v0[25] = v39;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
        sub_22A4DD8DC();
        v41 = *(v38 + 32);
        v0[57] = v41;
        v0[58] = (v38 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v41(boxed_opaque_existential_1, v37, v39);
        v0[18] = MEMORY[0x277D85DD0];
        v0[19] = 1107296256;
        v0[20] = sub_2297D3D1C;
        v0[21] = &block_descriptor_39;
        [v36 evaluateSupportsAdaptiveTemperatureAutomations_];
        v42 = *(v38 + 8);
        v0[59] = v42;
        v0[60] = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v42(boxed_opaque_existential_1, v39);

        return MEMORY[0x282200938](v0 + 2);
      }
    }
  }

  else
  {
    sub_22953EAE4((v0 + 34), &unk_27D87DE60, &unk_22A57A960);
  }

  v88 = v34;
  v90 = v28;
  v43 = v0[54];
  v44 = v0[50];
  v45 = v0[48];
  v46 = v0[39];
  v47 = v0[40];
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v94(v44, v46, v45);
  v48 = v47;
  v49 = sub_22A4DD05C();
  v50 = sub_22A4DDCEC();

  v51 = os_log_type_enabled(v49, v50);
  v53 = v0[53];
  v52 = v0[54];
  v54 = v0[52];
  v55 = v0[49];
  v56 = v0[50];
  v57 = v0[48];
  if (v51)
  {
    v95 = v0[54];
    v96 = v0[52];
    v58 = v0[47];
    loga = v0[44];
    v59 = v0[40];
    v86 = v50;
    v60 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v97 = v91;
    *v60 = 136315394;
    v61 = [v59 logIdentifier];
    v62 = sub_22A4DD5EC();
    v64 = v63;

    v65 = sub_2295A3E30(v62, v64, &v97);

    *(v60 + 4) = v65;
    *(v60 + 12) = 2080;
    sub_22A4DBA4C();
    sub_2297E3070(&unk_2814038C0, MEMORY[0x277CC8900]);
    v66 = sub_22A4DE5CC();
    v68 = v67;
    v88(v58, loga);
    v93(v56, v57);
    v69 = sub_2295A3E30(v66, v68, &v97);

    *(v60 + 14) = v69;
    _os_log_impl(&dword_229538000, v49, v86, "%s found unexpected object from notification: %s", v60, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v91, -1, -1);
    MEMORY[0x22AAD4E50](v60, -1, -1);

    v70 = v95;
    v71 = v96;
  }

  else
  {

    v93(v56, v57);
    v70 = v52;
    v71 = v54;
  }

  v90(v70, v71);
  v73 = v0[54];
  v72 = v0[55];
  v75 = v0[50];
  v74 = v0[51];
  v77 = v0[46];
  v76 = v0[47];
  v78 = v0[43];

  v79 = v0[1];

  return v79();
}

uint64_t sub_2297E1448()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2297E1528, 0, 0);
}

uint64_t sub_2297E1528()
{
  v8 = v0[59];
  v9 = v0[60];
  v2 = v0[57];
  v1 = v0[58];
  v7 = v0[56];
  v3 = v0[43];
  v4 = v0[41];
  v0[10] = v0;
  v0[11] = sub_2297E16C0;
  swift_continuation_init();
  v0[33] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 30);
  sub_22A4DD8DC();
  v2(boxed_opaque_existential_1, v3, v4);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_2297D3D1C;
  v0[29] = &block_descriptor_14_0;
  [v7 evaluateSupportsCleanEnergyAutomation_];
  v8(boxed_opaque_existential_1, v4);

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_2297E16C0()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2297E17A0, 0, 0);
}

uint64_t sub_2297E17A0()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v6 = *(v0 + 368);
  v5 = *(v0 + 376);
  v7 = *(v0 + 344);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2297E1854(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229586D38;

  return sub_2297E18EC(a1);
}

uint64_t sub_2297E18EC(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v2[36] = v3;
  v4 = *(v3 - 8);
  v2[37] = v4;
  v5 = *(v4 + 64) + 15;
  v2[38] = swift_task_alloc();
  v6 = sub_22A4DB21C();
  v2[39] = v6;
  v7 = *(v6 - 8);
  v2[40] = v7;
  v8 = *(v7 + 64) + 15;
  v2[41] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  v2[42] = v9;
  v10 = *(v9 - 8);
  v2[43] = v10;
  v11 = *(v10 + 64) + 15;
  v2[44] = swift_task_alloc();
  v12 = sub_22A4DD07C();
  v2[45] = v12;
  v13 = *(v12 - 8);
  v2[46] = v13;
  v14 = *(v13 + 64) + 15;
  v2[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297E1AD8, 0, 0);
}

uint64_t sub_2297E1AD8()
{
  v45 = v0;
  v1 = v0[47];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  v5 = v0[34];
  v6 = v0[35];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  (*(v3 + 16))(v2, v5, v4);
  v7 = v6;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[46];
  v11 = v0[47];
  v14 = v0[44];
  v13 = v0[45];
  v16 = v0[42];
  v15 = v0[43];
  if (v10)
  {
    log = v8;
    v43 = v0[47];
    v17 = v0[41];
    v37 = v0[39];
    v38 = v0[40];
    v18 = v0[35];
    v39 = v9;
    v19 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44 = v40;
    *v19 = 136315394;
    v20 = [v18 logIdentifier];
    v41 = v13;
    v21 = sub_22A4DD5EC();
    v23 = v22;

    v24 = sub_2295A3E30(v21, v23, &v44);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    sub_22A4DBA4C();
    sub_2297E3070(&unk_2814038C0, MEMORY[0x277CC8900]);
    v25 = sub_22A4DE5CC();
    v27 = v26;
    (*(v38 + 8))(v17, v37);
    (*(v15 + 8))(v14, v16);
    v28 = sub_2295A3E30(v25, v27, &v44);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_229538000, log, v39, "%s handling %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v40, -1, -1);
    MEMORY[0x22AAD4E50](v19, -1, -1);

    (*(v12 + 8))(v43, v41);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v30 = v0[37];
  v29 = v0[38];
  v32 = v0[35];
  v31 = v0[36];
  v0[2] = v0;
  v0[3] = sub_2297E1F1C;
  swift_continuation_init();
  v0[25] = v31;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
  sub_22A4DD8DC();
  v34 = *(v30 + 32);
  v0[48] = v34;
  v0[49] = (v30 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v34(boxed_opaque_existential_1, v29, v31);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_2297D3D1C;
  v0[21] = &block_descriptor_27;
  [v32 evaluateSupportsAdaptiveTemperatureAutomations_];
  v35 = *(v30 + 8);
  v0[50] = v35;
  v0[51] = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(boxed_opaque_existential_1, v31);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2297E1F1C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2297E1FFC, 0, 0);
}

uint64_t sub_2297E1FFC()
{
  v8 = v0[50];
  v9 = v0[51];
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[38];
  v4 = v0[36];
  v7 = v0[35];
  v0[10] = v0;
  v0[11] = sub_2297E2190;
  swift_continuation_init();
  v0[33] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 30);
  sub_22A4DD8DC();
  v2(boxed_opaque_existential_1, v3, v4);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_2297D3D1C;
  v0[29] = &block_descriptor_30;
  [v7 evaluateSupportsCleanEnergyAutomation_];
  v8(boxed_opaque_existential_1, v4);

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_2297E2190()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2297E2270, 0, 0);
}

uint64_t sub_2297E2270()
{
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[41];
  v4 = v0[38];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2297E2338(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_22A4DB21C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB1DC();
  v17 = a1;
  sub_2297E2450(v16, a4, a5, a6, a7);

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_2297E2450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a4;
  v33 = a5;
  v31 = a3;
  v29 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = &v28 - v8;
  v9 = sub_22A4DB21C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v28 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v5;
  (*(v10 + 16))(v13, v29, v9);
  v22 = v5;
  MEMORY[0x22AACEC10](v13, v9);
  v23 = sub_22A4DD9DC();
  v24 = v30;
  (*(*(v23 - 8) + 56))(v30, 1, 1, v23);
  (*(v15 + 16))(v18, v20, v14);
  v25 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = v32;
  *(v26 + 5) = v21;
  (*(v15 + 32))(&v26[v25], v18, v14);

  sub_22957F3C0(0, 0, v24, v33, v26);

  return (*(v15 + 8))(v20, v14);
}

uint64_t sub_2297E2790(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_2297E091C(a1);
}

uint64_t sub_2297E282C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_229569B30;

  return v11(a6);
}

uint64_t sub_2297E2924(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_2297E282C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_2297E2A34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_2297E1854(a1);
}

uint64_t sub_2297E2AD0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229569B30;

  return sub_2297E282C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_2297E2BE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_2297E091C(a1);
}

uint64_t objectdestroy_7Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2297E2D54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_2297E0114(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2297E2E1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297DE75C(a1, v4, v5, v7, v6);
}

uint64_t sub_2297E2EDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297DCFA8(a1, v4, v5, v7, v6);
}

uint64_t sub_2297E2F9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_2297DBC00(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2297E3070(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2297E30B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297D9300(a1, v4, v5, v7, v6);
}

uint64_t sub_2297E3178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297D8504(a1, v4, v5, v7, v6);
}

uint64_t sub_2297E3238(uint64_t a1)
{
  v2 = type metadata accessor for ClimateBulletinBuilder.ValenciaOnboardingContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s20ControlBlockInternalVMa()
{
  result = qword_27D881510;
  if (!qword_27D881510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2297E3324()
{
  result = sub_22A4DB7DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2297E3398(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22A4DB7DC();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DD07C();
  v51 = *(v9 - 8);
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s20ControlBlockInternalVMa();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 40);
  v17(a1, a2);
  v50 = v13;
  v18 = v16[*(v13 + 20)];
  result = sub_2297E3C30(v16);
  if ((v18 & 1) == 0)
  {
    (*(*(a2 + 8) + 8))(a1);
    swift_unknownObjectRetain_n();
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCDC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v44 = v21;
      v23 = v22;
      v46 = swift_slowAlloc();
      v52 = v3;
      v53[0] = v46;
      *v23 = 136315394;
      v24 = *(a2 + 16);
      v43 = v20;
      v25 = sub_22A4DE5CC();
      v27 = sub_2295A3E30(v25, v26, v53);
      v45 = v9;
      v28 = v27;

      v42 = v23;
      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v17(a1, a2);
      v30 = v47;
      v29 = v48;
      v31 = v49;
      (*(v48 + 32))(v47, v16, v49);
      swift_unknownObjectRelease();
      sub_229586A3C();
      v32 = sub_22A4DE5CC();
      v34 = v33;
      swift_unknownObjectRelease();
      (*(v29 + 8))(v30, v31);
      v35 = sub_2295A3E30(v32, v34, v53);

      v37 = v42;
      v36 = v43;
      *(v42 + 14) = v35;
      _os_log_impl(&dword_229538000, v36, v44, "Scheduling %s with uuid: %s", v37, 0x16u);
      v38 = v46;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v38, -1, -1);
      MEMORY[0x22AAD4E50](v37, -1, -1);

      (*(v51 + 8))(v12, v45);
    }

    else
    {

      swift_unknownObjectRelease_n();
      (*(v51 + 8))(v12, v9);
    }

    v39 = (*(a2 + 56))(v53, a1, a2);
    *(v40 + *(v50 + 20)) = 1;
    v39(v53, 0);
    return (*(a2 + 64))(a1, a2);
  }

  return result;
}

uint64_t sub_2297E37E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22A4DB7DC();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DD07C();
  v51 = *(v9 - 8);
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s20ControlBlockInternalVMa();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 40);
  v17(a1, a2);
  v50 = v13;
  v18 = v16[*(v13 + 20)];
  result = sub_2297E3C30(v16);
  if (v18 == 1)
  {
    (*(*(a2 + 8) + 8))(a1);
    swift_unknownObjectRetain_n();
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCDC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v44 = v21;
      v23 = v22;
      v46 = swift_slowAlloc();
      v52 = v3;
      v53[0] = v46;
      *v23 = 136315394;
      v24 = *(a2 + 16);
      v43 = v20;
      v25 = sub_22A4DE5CC();
      v27 = sub_2295A3E30(v25, v26, v53);
      v45 = v9;
      v28 = v27;

      v42 = v23;
      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v17(a1, a2);
      v30 = v47;
      v29 = v48;
      v31 = v49;
      (*(v48 + 32))(v47, v16, v49);
      swift_unknownObjectRelease();
      sub_229586A3C();
      v32 = sub_22A4DE5CC();
      v34 = v33;
      swift_unknownObjectRelease();
      (*(v29 + 8))(v30, v31);
      v35 = sub_2295A3E30(v32, v34, v53);

      v37 = v42;
      v36 = v43;
      *(v42 + 14) = v35;
      _os_log_impl(&dword_229538000, v36, v44, "Descheduling %s with uuid: %s", v37, 0x16u);
      v38 = v46;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v38, -1, -1);
      MEMORY[0x22AAD4E50](v37, -1, -1);

      (*(v51 + 8))(v12, v45);
    }

    else
    {

      swift_unknownObjectRelease_n();
      (*(v51 + 8))(v12, v9);
    }

    v39 = (*(a2 + 56))(v53, a1, a2);
    *(v40 + *(v50 + 20)) = 0;
    v39(v53, 0);
    return (*(a2 + 72))(a1, a2);
  }

  return result;
}

uint64_t sub_2297E3C30(uint64_t a1)
{
  v2 = _s20ControlBlockInternalVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_2297E3C8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2297E3D30(a1, v5);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *&result = sub_229678AD8(a1, a2).n128_u64[0];
  return result;
}

void sub_2297E3E40()
{
  v1 = [objc_msgSend(objc_opt_self() featuresDataSource)];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = [v0 msgDispatcher];
    if (v2)
    {
      v54 = v2;
      v3 = [v0 accessory];
      if (v3 && (v4 = v3, v5 = [v3 home], v4, v5))
      {
        v6 = [objc_opt_self() defaultSecurePolicy];
        v7 = objc_opt_self();
        v8 = [v7 userMessagePolicyWithHome:v5 userPrivilege:4 remoteAccessRequired:0];
        v50 = [v7 userMessagePolicyWithHome:v5 userPrivilege:4 remoteAccessRequired:1];
        v9 = [objc_opt_self() policyWithEntitlements_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_22A582080;
        *(v10 + 32) = v6;
        *(v10 + 40) = v8;
        sub_229562F68(0, qword_281401B40, 0x277D0F838);
        v11 = v6;
        v12 = v8;
        v13 = v11;
        v14 = v12;
        v15 = sub_22A4DD81C();

        [v54 registerForMessage:@"HMDAccessoryMatterEventMessageName" receiver:v0 policies:v15 selector:sel_handleMatterEventMessage_];

        v16 = [v0 accessory];
        if (v16)
        {
          v17 = v16;
          v49 = v5;
          objc_opt_self();
          v18 = swift_dynamicCastObjCClass();
          if (v18)
          {
            v19 = v13;
            if ([v18 isNativeMatter])
            {
              v20 = swift_allocObject();
              *(v20 + 16) = xmmword_22A582080;
              *(v20 + 32) = v13;
              *(v20 + 40) = v14;
              v21 = v13;
              v22 = v14;
              v23 = sub_22A4DD81C();

              [v54 registerForMessage:@"HMDAccessoryMatterAttributeMessageName" receiver:v0 policies:v23 selector:sel_handleMatterAttributeMessage_];

              v47 = *MEMORY[0x277CCEAB0];
              v24 = swift_allocObject();
              *(v24 + 16) = xmmword_22A5842A0;
              *(v24 + 32) = v21;
              *(v24 + 40) = v22;
              *(v24 + 48) = v9;
              v25 = v9;
              v26 = v21;
              v19 = v22;
              v27 = v25;
              v28 = sub_22A4DD81C();

              [v54 registerForMessage:v47 receiver:v0 policies:v28 selector:sel_handleFetchMatterPairingsMessage_];

              v48 = *MEMORY[0x277CCECB0];
              v29 = swift_allocObject();
              *(v29 + 16) = xmmword_22A5842A0;
              *(v29 + 32) = v26;
              *(v29 + 40) = v50;
              *(v29 + 48) = v27;
              v30 = v50;
              v31 = v26;
              v32 = v30;
              v33 = sub_22A4DD81C();

              [v54 registerForMessage:v48 receiver:v0 policies:v33 selector:sel_handleRemoveCorrespondingSystemCommissionerMessage_];

              v51 = *MEMORY[0x277CCECA0];
              v34 = swift_allocObject();
              *(v34 + 16) = xmmword_22A5842A0;
              *(v34 + 32) = v31;
              *(v34 + 40) = v32;
              *(v34 + 48) = v27;
              v35 = v31;
              v36 = sub_22A4DD81C();

              [v54 registerForMessage:v51 receiver:v0 policies:v36 selector:sel_handleRemoveMatterPairingsMessage_];

              v52 = *MEMORY[0x277CCE7B8];
              v37 = swift_allocObject();
              *(v37 + 16) = xmmword_22A5842A0;
              *(v37 + 32) = v35;
              *(v37 + 40) = v32;
              *(v37 + 48) = v27;
              v38 = v35;
              v39 = sub_22A4DD81C();

              [v54 registerForMessage:v52 receiver:v0 policies:v39 selector:sel_handleActivateMatterPairingModeMessage_];

              v53 = *MEMORY[0x277CCE7B0];
              v40 = swift_allocObject();
              *(v40 + 16) = xmmword_22A5842A0;
              *(v40 + 32) = v38;
              *(v40 + 40) = v32;
              *(v40 + 48) = v27;
              v41 = v38;
              v42 = sub_22A4DD81C();

              [v54 registerForMessage:v53 receiver:v0 policies:v42 selector:sel_handleActivateMatterPairingModeAndCreateSetupPayloadStringMessage_];

              v43 = swift_allocObject();
              *(v43 + 16) = xmmword_22A582080;
              *(v43 + 32) = v41;
              *(v43 + 40) = v19;
              v9 = sub_22A4DD81C();

              v44 = v0;
              v45 = v27;
              [v54 registerForMessage:@"HMDRVCServiceAreaMessageName" receiver:v44 policies:v9 selector:sel_submitServiceAreaChangesToCascadeFromMessage_];
              v5 = v17;
              v14 = v49;
              v17 = v54;
            }

            else
            {

              v5 = v50;
              v32 = v49;
              v45 = v54;
              v41 = v13;
              v17 = v14;
            }
          }

          else
          {

            v5 = v9;
            v9 = v50;
            v32 = v54;
            v19 = v13;
            v45 = v13;
            v41 = v14;
          }
        }

        else
        {
          v32 = v50;
          v45 = v54;
          v41 = v13;
          v17 = v14;
          v19 = v13;
        }

        v46 = v17;
      }

      else
      {
        v46 = v54;
      }
    }
  }
}

void sub_2297E4584(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v4 accessory];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 primaryResidentMessageRouter];
    if (v15)
    {
      v16 = v15;
      v41 = a2;
      v42 = a3;
      aBlock = MEMORY[0x277D85DD0];
      v38 = 1107296256;
      v39 = sub_229566C20;
      v40 = &block_descriptor_46_0;
      v17 = _Block_copy(&aBlock);

      [v16 routeMessage:a1 localHandler:v17];
      _Block_release(v17);

      swift_unknownObjectRelease();
      return;
    }
  }

  sub_2296F8604();
  v18 = v4;
  v19 = a1;
  v20 = sub_22A4DD05C();
  v21 = sub_22A4DDCEC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v43 = v23;
    *v22 = 136315394;
    aBlock = 91;
    v38 = 0xE100000000000000;
    v24 = [v18 logIdentifier];
    v25 = sub_22A4DD5EC();
    v36 = v8;
    v27 = v26;

    MEMORY[0x22AAD08C0](v25, v27);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v28 = sub_2295A3E30(aBlock, v38, &v43);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 shortDescription];
    v30 = sub_22A4DD5EC();
    v32 = v31;

    v33 = sub_2295A3E30(v30, v32, &v43);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_229538000, v20, v21, "%s Could not find primary resident message router to handle message: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v23, -1, -1);
    MEMORY[0x22AAD4E50](v22, -1, -1);

    (*(v9 + 8))(v12, v36);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v34 = [objc_opt_self() hmErrorWithCode_];
  v35 = sub_22A4DB3DC();

  [v19 respondWithError_];
}

void sub_2297E49F8(void *a1)
{
  swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v47[-v9];
  v11 = [v1 accessory];
  if (!v11)
  {
LABEL_6:
    sub_2296F8604();
    v21 = v1;
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v58 = v25;
      *v24 = 136315138;
      aBlock = 91;
      v53 = 0xE100000000000000;
      v26 = [v21 logIdentifier];
      v27 = sub_22A4DD5EC();
      v51 = v3;
      v29 = v28;

      MEMORY[0x22AAD08C0](v27, v29);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v30 = sub_2295A3E30(aBlock, v53, &v58);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_229538000, v22, v23, "%s Unable to find accessory server", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);

      (*(v4 + 8))(v8, v51);
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }

    v31 = [objc_opt_self() hmErrorWithCode_];
    v17 = sub_22A4DB3DC();

    [a1 respondWithError_];
    goto LABEL_14;
  }

  v12 = v11;
  v13 = [v11 accessoryServer];
  if (!v13)
  {

    goto LABEL_6;
  }

  v14 = v13;
  v15 = [a1 dictionaryForKey_];
  if (v15)
  {
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    sub_22A4DD49C();

    v17 = sub_22A4DD47C();

    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    v56 = sub_2297EC944;
    v57 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v53 = 1107296256;
    v54 = sub_2297E5178;
    v55 = &block_descriptor_40_1;
    v19 = _Block_copy(&aBlock);
    v20 = a1;

    [v14 handleCHIPRemoteRequest:v17 completion:v19];
    _Block_release(v19);
  }

  else
  {
    v51 = v3;
    sub_2296F8604();
    v32 = a1;
    v33 = v1;
    v34 = sub_22A4DD05C();
    v35 = sub_22A4DDCEC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v58 = v50;
      *v36 = 136315394;
      aBlock = 91;
      v53 = 0xE100000000000000;
      v37 = [v33 logIdentifier];
      v48 = v35;
      v38 = v37;
      v39 = sub_22A4DD5EC();
      v41 = v40;

      MEMORY[0x22AAD08C0](v39, v41);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v42 = sub_2295A3E30(aBlock, v53, &v58);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2112;
      *(v36 + 14) = v32;
      v43 = v49;
      *v49 = v32;
      v44 = v32;
      _os_log_impl(&dword_229538000, v34, v48, "%s Invalid remote request message payload: %@", v36, 0x16u);
      sub_22953EAE4(v43, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v43, -1, -1);
      v45 = v50;
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AAD4E50](v45, -1, -1);
      MEMORY[0x22AAD4E50](v36, -1, -1);
    }

    (*(v4 + 8))(v10, v51);
    v46 = [objc_opt_self() hmErrorWithCode_];
    v17 = sub_22A4DB3DC();

    [v32 respondWithError_];
  }

LABEL_14:
}

void sub_2297E5024(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_22A4DB3DC();
  }

  else
  {
    if (a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      *(inited + 32) = sub_22A4DD5EC();
      *(inited + 40) = v8;
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      *(inited + 48) = a1;

      sub_22956AC5C(inited);
      swift_setDeallocating();
      sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v5 = sub_22A4DD47C();

      v4 = 0;
      goto LABEL_6;
    }

    v4 = 0;
  }

  v5 = 0;
LABEL_6:
  [a3 respondWithPayload:v5 error:v4];
}

uint64_t sub_2297E5178(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v4 = sub_22A4DD49C();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_2297E5290(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 accessory];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 home];
    if (v11)
    {
      v12 = v11;
      v13 = swift_allocObject();
      *(v13 + 16) = v2;
      v34 = sub_2297EC920;
      v35 = v13;
      aBlock = MEMORY[0x277D85DD0];
      v31 = 1107296256;
      v32 = sub_229566C20;
      v33 = &block_descriptor_34_1;
      v14 = _Block_copy(&aBlock);
      v15 = v2;

      [v15 routeMessage:a1 localHandler:v14];
      _Block_release(v14);

      goto LABEL_8;
    }
  }

  sub_2296F8604();
  v16 = v1;
  v17 = sub_22A4DD05C();
  v18 = sub_22A4DDCEC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = a1;
    v21 = v20;
    v36 = v20;
    *v19 = 136315138;
    aBlock = 91;
    v31 = 0xE100000000000000;
    v22 = [v16 logIdentifier];
    v23 = sub_22A4DD5EC();
    v25 = v24;

    MEMORY[0x22AAD08C0](v23, v25);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v26 = sub_2295A3E30(aBlock, v31, &v36);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_229538000, v17, v18, "%s Unable to find accessory or home", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v27 = v21;
    a1 = v29;
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v19, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v28 = [objc_opt_self() hmErrorWithCode_];
  v12 = sub_22A4DB3DC();

  [a1 respondWithError_];
LABEL_8:
}

uint64_t sub_2297E5664(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [v1 accessory];
  if (v4 && (v5 = v4, v6 = [v4 chipStorage], v5, v7 = objc_msgSend(v6, sel_pairings), v6, v7))
  {
    sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
    sub_229707F80();
    v8 = sub_22A4DDB6C();
  }

  else
  {
    v8 = MEMORY[0x277D84FA0];
  }

  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = a1;
  v9[4] = ObjectType;
  v10 = v1;
  v11 = a1;
  sub_22979B218(v8, sub_2297EC914, v9);
}

id sub_2297E57AC(void *a1, void *a2, void *a3)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2296F8604();
  v11 = a2;
  v12 = a1;
  v13 = sub_22A4DD05C();
  v14 = sub_22A4DDCCC();

  if (os_log_type_enabled(v13, v14))
  {
    v31 = v6;
    v32 = a3;
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315394;
    v33 = 91;
    v34 = 0xE100000000000000;
    v35 = v16;
    v17 = [v11 logIdentifier];
    v18 = sub_22A4DD5EC();
    v20 = v19;

    MEMORY[0x22AAD08C0](v18, v20);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v21 = sub_2295A3E30(v33, v34, &v35);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2112;
    if (a1)
    {
      v22 = a1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      v24 = v23;
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    *(v15 + 14) = v23;
    v25 = v29;
    *v29 = v24;
    _os_log_impl(&dword_229538000, v13, v14, "%s Removed pairings with error: %@", v15, 0x16u);
    sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    v26 = v30;
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);

    (*(v7 + 8))(v10, v31);
    a3 = v32;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  return [a3 respondWithSuccess];
}

void sub_2297E5AE8(uint64_t *a1)
{
  v2 = v1;
  v90 = a1;
  ObjectType = swift_getObjectType();
  v89 = sub_22A4DD07C();
  v4 = *(v89 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v89);
  v8 = &v83[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v83[-v10];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v83[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v83[-v15];
  v17 = [v1 accessory];
  if (!v17)
  {
LABEL_6:
    sub_2296F8604();
    v26 = v1;
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCEC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v4;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v96 = v31;
      *v30 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v32 = [v26 logIdentifier];
      v33 = sub_22A4DD5EC();
      v35 = v34;

      MEMORY[0x22AAD08C0](v33, v35);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v36 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v96);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_229538000, v27, v28, "%s Unable to find accessory or home", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AAD4E50](v31, -1, -1);
      MEMORY[0x22AAD4E50](v30, -1, -1);

      (*(v29 + 8))(v8, v89);
    }

    else
    {

      (*(v4 + 8))(v8, v89);
    }

    v37 = [objc_opt_self() hmErrorWithCode_];
    v20 = sub_22A4DB3DC();

    [v90 respondWithError_];
    goto LABEL_28;
  }

  v18 = v17;
  v19 = [v17 home];
  if (!v19)
  {

    goto LABEL_6;
  }

  v20 = v19;
  v88 = v18;
  v21 = *MEMORY[0x277CCE830];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F060, &qword_22A578050);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22A5761A0;
  *(v22 + 32) = sub_229562F68(0, &qword_27D87DA30, 0x277CBEB98);
  *(v22 + 40) = sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
  v23 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F058, &unk_22A582DE0);
  v24 = sub_22A4DD81C();

  v25 = [v90 unarchivedObjectForKey:v23 ofClasses:v24];

  if (v25)
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
  }

  aBlock = v96;
  v92 = v97;
  if (*(&v97 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880D80, &unk_22A582DF0);
    if (swift_dynamicCast())
    {
      v38 = v95;
      if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
      {
        if ([v20 hasAnyResident])
        {
          v87 = v4;
          sub_2296F8604();
          v39 = v2;
          v40 = sub_22A4DD05C();
          v41 = sub_22A4DDCDC();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            *&v96 = v86;
            *v42 = 136315138;
            *&aBlock = 91;
            *(&aBlock + 1) = 0xE100000000000000;
            v43 = [v39 logIdentifier];
            v44 = sub_22A4DD5EC();
            v46 = v45;

            MEMORY[0x22AAD08C0](v44, v46);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v47 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v96);

            *(v42 + 4) = v47;
            _os_log_impl(&dword_229538000, v40, v41, "%s Resident available in home, routing request to primaryResident", v42, 0xCu);
            v48 = v86;
            __swift_destroy_boxed_opaque_existential_0(v86);
            MEMORY[0x22AAD4E50](v48, -1, -1);
            MEMORY[0x22AAD4E50](v42, -1, -1);
          }

          (*(v87 + 8))(v14, v89);
        }

        else
        {
          sub_2296F8604();
          v64 = v2;
          v65 = sub_22A4DD05C();
          v66 = sub_22A4DDCCC();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v85 = v67;
            v86 = swift_slowAlloc();
            *&v96 = v86;
            *v67 = 136315138;
            *&aBlock = 91;
            *(&aBlock + 1) = 0xE100000000000000;
            v68 = [v64 logIdentifier];
            v69 = sub_22A4DD5EC();
            v87 = v4;
            v70 = v69;
            v84 = v66;
            v72 = v71;

            MEMORY[0x22AAD08C0](v70, v72);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v73 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v96);

            v74 = v85;
            *(v85 + 1) = v73;
            _os_log_impl(&dword_229538000, v65, v84, "%s No residents in home, handling request locally", v74, 0xCu);
            v75 = v86;
            __swift_destroy_boxed_opaque_existential_0(v86);
            MEMORY[0x22AAD4E50](v75, -1, -1);
            MEMORY[0x22AAD4E50](v74, -1, -1);

            (*(v87 + 8))(v16, v89);
          }

          else
          {

            (*(v4 + 8))(v16, v89);
          }

          v76 = swift_allocObject();
          v77 = v90;
          v76[2] = v64;
          v76[3] = v77;
          v76[4] = ObjectType;
          v78 = v64;
          v79 = v77;
          sub_22979B218(v38, sub_2297EC908, v76);
        }
      }

      sub_22979B218(v38, 0, 0);

      v80 = swift_allocObject();
      *(v80 + 16) = v2;
      v93 = sub_2297EC8E4;
      v94 = v80;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v92 = sub_229566C20;
      *(&v92 + 1) = &block_descriptor_22_0;
      v81 = _Block_copy(&aBlock);
      v82 = v2;

      [v82 routeMessage:v90 localHandler:v81];
      _Block_release(v81);

      goto LABEL_28;
    }

    v87 = v4;
  }

  else
  {
    v87 = v4;
    sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
  }

  sub_2296F8604();
  v49 = v2;
  v50 = v90;
  v51 = sub_22A4DD05C();
  v52 = sub_22A4DDCEC();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *&v96 = v90;
    *v53 = 136315394;
    *&aBlock = 91;
    *(&aBlock + 1) = 0xE100000000000000;
    v55 = [v49 logIdentifier];
    v56 = sub_22A4DD5EC();
    v58 = v57;

    MEMORY[0x22AAD08C0](v56, v58);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v59 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v96);

    *(v53 + 4) = v59;
    *(v53 + 12) = 2112;
    *(v53 + 14) = v50;
    *v54 = v50;
    v60 = v50;
    _os_log_impl(&dword_229538000, v51, v52, "%s Could not find pairings in CHIP pairings message: %@", v53, 0x16u);
    sub_22953EAE4(v54, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v54, -1, -1);
    v61 = v90;
    __swift_destroy_boxed_opaque_existential_0(v90);
    MEMORY[0x22AAD4E50](v61, -1, -1);
    MEMORY[0x22AAD4E50](v53, -1, -1);
  }

  (*(v87 + 8))(v11, v89);
  v62 = [objc_opt_self() hmErrorWithCode_];
  v63 = sub_22A4DB3DC();

  [v50 respondWithError_];
  v20 = v63;
LABEL_28:
}

void sub_2297E65CC(void *a1, void *a2, uint64_t *a3)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = a1;
    sub_2296F8604();
    v12 = a1;
    v13 = a2;
    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCEC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v31 = a2;
      v17 = v16;
      v29 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136315394;
      v33 = 91;
      v34 = 0xE100000000000000;
      v35 = v18;
      v19 = [v13 logIdentifier];
      v20 = sub_22A4DD5EC();
      v32 = a3;
      v22 = v21;

      MEMORY[0x22AAD08C0](v20, v22);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v23 = sub_2295A3E30(v33, v34, &v35);
      a3 = v32;

      *(v17 + 4) = v23;
      *(v17 + 12) = 2112;
      v24 = a1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v25;
      v26 = v29;
      *v29 = v25;
      _os_log_impl(&dword_229538000, v14, v15, "%s Could not remove system commissioner pairings with error: %@", v17, 0x16u);
      sub_22953EAE4(v26, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      v27 = v30;
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v10, v6);
  }

  sub_229799610(a3);
}

uint64_t sub_2297E68FC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v336 = &v331 - v7;
  v8 = sub_22A4DD07C();
  v348 = *(v8 - 8);
  v349 = v8;
  v9 = *(v348 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v331 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v331 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v331 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v346 = &v331 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v345 = &v331 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v342 = &v331 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v341 = &v331 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v340 = &v331 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v338 = &v331 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v337 = &v331 - v32;
  MEMORY[0x28223BE20](v31);
  v339 = &v331 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v331 - v36;
  v344 = sub_22A4DB7DC();
  v38 = *(v344 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v344);
  v42 = &v331 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v343 = &v331 - v43;
  v44 = [a1 messagePayload];
  if (!v44)
  {
    sub_2296F8604();
    v61 = v1;
    v62 = a1;
    v63 = sub_22A4DD05C();
    v64 = sub_22A4DDCEC();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v350 = v66;
      *v65 = 136315394;
      v351 = 91;
      v352 = 0xE100000000000000;
      v67 = [v61 logIdentifier];
      v68 = sub_22A4DD5EC();
      v70 = v69;

      MEMORY[0x22AAD08C0](v68, v70);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v71 = sub_2295A3E30(v351, v352, &v350);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2080;
      v72 = [v62 shortDescription];
      v73 = sub_22A4DD5EC();
      v75 = v74;

      v76 = sub_2295A3E30(v73, v75, &v350);

      *(v65 + 14) = v76;
      _os_log_impl(&dword_229538000, v63, v64, "%s Ignoring %s, missing payload", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v66, -1, -1);
      MEMORY[0x22AAD4E50](v65, -1, -1);
    }

    v77 = *(v348 + 8);
    v78 = v12;
    return v77(v78, v349);
  }

  v45 = v44;
  v347 = ObjectType;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v47 = sub_22A4DD49C();

  v48 = [v2 accessory];
  if (!v48)
  {

    sub_2296F8604();
    v79 = v2;
    v80 = a1;
    v81 = sub_22A4DD05C();
    v82 = sub_22A4DDCEC();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v350 = v84;
      *v83 = 136315394;
      v351 = 91;
      v352 = 0xE100000000000000;
      v85 = [v79 logIdentifier];
      v86 = sub_22A4DD5EC();
      v88 = v87;

      MEMORY[0x22AAD08C0](v86, v88);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v89 = sub_2295A3E30(v351, v352, &v350);

      *(v83 + 4) = v89;
      *(v83 + 12) = 2080;
      v90 = [v80 shortDescription];
      v91 = sub_22A4DD5EC();
      v93 = v92;

      v94 = sub_2295A3E30(v91, v93, &v350);

      *(v83 + 14) = v94;
      _os_log_impl(&dword_229538000, v81, v82, "%s Ignoring %s, nil accessory", v83, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v84, -1, -1);
      MEMORY[0x22AAD4E50](v83, -1, -1);
    }

    v77 = *(v348 + 8);
    v78 = v15;
    return v77(v78, v349);
  }

  v335 = v47;
  v334 = v48;
  v49 = [v48 home];
  if (!v49)
  {

    sub_2296F8604();
    v95 = v2;
    v96 = a1;
    v97 = sub_22A4DD05C();
    v98 = sub_22A4DDCEC();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v350 = v100;
      *v99 = 136315394;
      v351 = 91;
      v352 = 0xE100000000000000;
      v101 = [v95 logIdentifier];
      v102 = sub_22A4DD5EC();
      v104 = v103;

      MEMORY[0x22AAD08C0](v102, v104);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v105 = sub_2295A3E30(v351, v352, &v350);

      *(v99 + 4) = v105;
      *(v99 + 12) = 2080;
      v106 = [v96 shortDescription];
      v107 = sub_22A4DD5EC();
      v109 = v108;

      v110 = sub_2295A3E30(v107, v109, &v350);

      *(v99 + 14) = v110;
      _os_log_impl(&dword_229538000, v97, v98, "%s Ignoring %s, nil home", v99, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v100, -1, -1);
      MEMORY[0x22AAD4E50](v99, -1, -1);

LABEL_20:
      v77 = *(v348 + 8);
      v78 = v18;
      return v77(v78, v349);
    }

LABEL_19:
    goto LABEL_20;
  }

  v50 = v49;
  v333 = v46;
  v51 = sub_22A4DD5EC();
  v53 = v335;
  if (!*(v335 + 16))
  {

    goto LABEL_21;
  }

  v54 = sub_229543DBC(v51, v52);
  v56 = v55;

  if ((v56 & 1) == 0 || (sub_2295404B0(*(v53 + 56) + 32 * v54, &v351), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:
    v111 = v346;
    sub_2296F8604();
    v112 = v2;
    v113 = a1;
    v114 = v111;
    v115 = v113;

    v116 = sub_22A4DD05C();
    v117 = sub_22A4DDCEC();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v345 = v50;
      v119 = v118;
      v120 = swift_slowAlloc();
      v350 = v120;
      *v119 = 136315650;
      v351 = 91;
      v352 = 0xE100000000000000;
      v121 = [v112 logIdentifier];
      v122 = sub_22A4DD5EC();
      v124 = v123;

      MEMORY[0x22AAD08C0](v122, v124);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v125 = sub_2295A3E30(v351, v352, &v350);

      *(v119 + 4) = v125;
      *(v119 + 12) = 2080;
      v126 = [v115 shortDescription];
      v127 = sub_22A4DD5EC();
      v129 = v128;

      v130 = sub_2295A3E30(v127, v129, &v350);

      *(v119 + 14) = v130;
      *(v119 + 22) = 2080;
      v131 = sub_22A4DD4AC();
      v133 = v132;

      v134 = sub_2295A3E30(v131, v133, &v350);

      *(v119 + 24) = v134;
      _os_log_impl(&dword_229538000, v116, v117, "%s Ignoring %s, payload missing accessory UUID: %s", v119, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v120, -1, -1);
      MEMORY[0x22AAD4E50](v119, -1, -1);
    }

    else
    {
    }

    v77 = *(v348 + 8);
    v78 = v114;
    return v77(v78, v349);
  }

  sub_22A4DB75C();

  v57 = v38;
  v58 = *(v38 + 48);
  v59 = v344;
  if (v58(v37, 1, v344) == 1)
  {
    sub_22953EAE4(v37, &unk_27D87D2A0, &unk_22A578BD0);
    v60 = a1;
LABEL_46:
    v18 = v345;
    sub_2296F8604();
    v203 = v2;
    v204 = v60;

    v205 = sub_22A4DD05C();
    v206 = sub_22A4DDCEC();

    if (os_log_type_enabled(v205, v206))
    {
      v207 = swift_slowAlloc();
      v208 = v50;
      v209 = swift_slowAlloc();
      v350 = v209;
      *v207 = 136315650;
      v351 = 91;
      v352 = 0xE100000000000000;
      v210 = [v203 logIdentifier];
      v211 = sub_22A4DD5EC();
      v213 = v212;

      MEMORY[0x22AAD08C0](v211, v213);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v214 = sub_2295A3E30(v351, v352, &v350);

      *(v207 + 4) = v214;
      *(v207 + 12) = 2080;
      v215 = [v204 shortDescription];
      v216 = sub_22A4DD5EC();
      v218 = v217;

      v219 = sub_2295A3E30(v216, v218, &v350);

      *(v207 + 14) = v219;
      *(v207 + 22) = 2080;
      v220 = sub_22A4DD4AC();
      v222 = v221;

      v223 = sub_2295A3E30(v220, v222, &v350);

      *(v207 + 24) = v223;
      _os_log_impl(&dword_229538000, v205, v206, "%s Ignoring %s, payload has invalid accessory UUID: %s", v207, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v209, -1, -1);
      MEMORY[0x22AAD4E50](v207, -1, -1);

      v77 = *(v348 + 8);
      v78 = v345;
      return v77(v78, v349);
    }

    goto LABEL_19;
  }

  v136 = v343;
  (*(v57 + 32))(v343, v37, v59);
  v137 = [v334 uuid];
  sub_22A4DB79C();

  LOBYTE(v137) = sub_22A4DB78C();
  v140 = *(v57 + 8);
  v138 = v57 + 8;
  v139 = v140;
  (v140)(v42, v59);
  v60 = a1;
  if ((v137 & 1) == 0)
  {
    (v139)(v136, v59);
    goto LABEL_46;
  }

  v346 = v139;
  v141 = sub_22A4DD5EC();
  v143 = v335;
  if (*(v335 + 16))
  {
    v144 = sub_229543DBC(v141, v142);
    v146 = v145;
    v60 = a1;

    if (v146)
    {
      sub_2295404B0(*(v143 + 56) + 32 * v144, &v351);
      sub_229562F68(0, &qword_281401770, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v332 = v138;
        v342 = v350;
        v147 = sub_22A4DD5EC();
        if (*(v143 + 16))
        {
          v149 = sub_229543DBC(v147, v148);
          v151 = v150;
          v60 = a1;

          if (v151)
          {
            sub_2295404B0(*(v143 + 56) + 32 * v149, &v351);
            if (swift_dynamicCast())
            {
              v341 = v350;
              v152 = sub_22A4DD5EC();
              if (*(v143 + 16))
              {
                v154 = sub_229543DBC(v152, v153);
                v156 = v155;
                v157 = v143;

                v158 = v346;
                if (v156)
                {
                  v345 = v50;
                  sub_2295404B0(*(v157 + 56) + 32 * v154, &v351);
                  if (swift_dynamicCast())
                  {
                    v340 = v350;
                    sub_2296F8604();
                    v159 = v2;
                    v160 = a1;

                    v161 = sub_22A4DD05C();
                    v162 = sub_22A4DDCCC();

                    if (os_log_type_enabled(v161, v162))
                    {
                      v163 = swift_slowAlloc();
                      v164 = swift_slowAlloc();
                      v350 = v164;
                      *v163 = 136315650;
                      v351 = 91;
                      v352 = 0xE100000000000000;
                      v165 = [v159 logIdentifier];
                      v166 = sub_22A4DD5EC();
                      v168 = v167;

                      MEMORY[0x22AAD08C0](v166, v168);

                      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                      v169 = sub_2295A3E30(v351, v352, &v350);

                      *(v163 + 4) = v169;
                      *(v163 + 12) = 2080;
                      v170 = [v160 shortDescription];
                      v171 = sub_22A4DD5EC();
                      v173 = v172;

                      v174 = sub_2295A3E30(v171, v173, &v350);

                      *(v163 + 14) = v174;
                      *(v163 + 22) = 2080;
                      v175 = sub_22A4DD4AC();
                      v177 = sub_2295A3E30(v175, v176, &v350);

                      *(v163 + 24) = v177;
                      _os_log_impl(&dword_229538000, v161, v162, "%s Received %s with payload=%s", v163, 0x20u);
                      swift_arrayDestroy();
                      MEMORY[0x22AAD4E50](v164, -1, -1);
                      MEMORY[0x22AAD4E50](v163, -1, -1);
                    }

                    v178 = v339;
                    v339 = *(v348 + 8);
                    (v339)(v178, v349);
                    v179 = objc_opt_self();
                    v180 = v334;
                    v181 = [v179 PathWithEventID:v340 endpointID:v342 clusterID:v341 accessory:v334];
                    if ([objc_opt_self() isBulletinSupportedForMatterPath:v181 accessory:v180])
                    {
                      objc_opt_self();
                      v182 = swift_dynamicCastObjCClass();
                      if (v182)
                      {
                        v183 = v182;
                        v184 = v334;
                        if (sub_229768668(v340, v341))
                        {
                          v185 = sub_22A4DD9DC();
                          v186 = v336;
                          (*(*(v185 - 8) + 56))(v336, 1, 1, v185);
                          v187 = swift_allocObject();
                          v187[2] = 0;
                          v187[3] = 0;
                          v187[4] = v335;
                          v187[5] = v183;
                          v188 = v345;
                          v187[6] = v345;
                          v187[7] = v184;
                          v189 = v347;
                          v187[8] = v159;
                          v187[9] = v189;
                          v190 = v184;
                          v191 = v159;

                          v192 = v190;
                          v193 = v188;
                          sub_22957F3C0(0, 0, v186, &unk_22A584450, v187);
                        }

                        if ((sub_22976869C(v340, v341) & 1) == 0)
                        {
                          (v346)(v343, v344);
                        }

                        v194 = sub_22A4DD9DC();
                        v195 = v336;
                        (*(*(v194 - 8) + 56))(v336, 1, 1, v194);
                        v196 = swift_allocObject();
                        v196[2] = 0;
                        v196[3] = 0;
                        v196[4] = v335;
                        v196[5] = v183;
                        v197 = v345;
                        v196[6] = v345;
                        v196[7] = v184;
                        v198 = v347;
                        v196[8] = v159;
                        v196[9] = v198;
                        v199 = v184;
                        v200 = v159;
                        v201 = v199;
                        v202 = v197;
                        sub_22957F3C0(0, 0, v195, &unk_22A584440, v196);

                        goto LABEL_72;
                      }

                      sub_2296F8604();
                      v315 = v159;
                      v316 = v160;
                      v317 = sub_22A4DD05C();
                      v318 = sub_22A4DDCEC();

                      if (os_log_type_enabled(v317, v318))
                      {
                        v319 = swift_slowAlloc();
                        v320 = swift_slowAlloc();
                        v350 = v320;
                        *v319 = 136315394;
                        v351 = 91;
                        v352 = 0xE100000000000000;
                        v321 = [v315 logIdentifier];
                        v322 = sub_22A4DD5EC();
                        v324 = v323;

                        MEMORY[0x22AAD08C0](v322, v324);

                        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                        v325 = sub_2295A3E30(v351, v352, &v350);

                        *(v319 + 4) = v325;
                        *(v319 + 12) = 2080;
                        v326 = [v316 shortDescription];
                        v327 = sub_22A4DD5EC();
                        v329 = v328;

                        v330 = sub_2295A3E30(v327, v329, &v350);

                        *(v319 + 14) = v330;
                        _os_log_impl(&dword_229538000, v317, v318, "%s Ignoring %s, expected hapAccessory", v319, 0x16u);
                        swift_arrayDestroy();
                        MEMORY[0x22AAD4E50](v320, -1, -1);
                        MEMORY[0x22AAD4E50](v319, -1, -1);
                      }

                      v314 = v337;
                    }

                    else
                    {

                      sub_2296F8604();
                      v295 = v159;
                      v296 = v160;
                      v297 = v181;
                      v298 = sub_22A4DD05C();
                      v299 = sub_22A4DDCDC();

                      if (os_log_type_enabled(v298, v299))
                      {
                        v300 = swift_slowAlloc();
                        v301 = swift_slowAlloc();
                        v302 = swift_slowAlloc();
                        v350 = v302;
                        *v300 = 136315650;
                        v351 = 91;
                        v352 = 0xE100000000000000;
                        v303 = [v295 logIdentifier];
                        v304 = sub_22A4DD5EC();
                        v306 = v305;

                        MEMORY[0x22AAD08C0](v304, v306);

                        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                        v307 = sub_2295A3E30(v351, v352, &v350);

                        *(v300 + 4) = v307;
                        *(v300 + 12) = 2080;
                        v308 = [v296 shortDescription];
                        v309 = sub_22A4DD5EC();
                        v311 = v310;

                        v312 = sub_2295A3E30(v309, v311, &v350);

                        *(v300 + 14) = v312;
                        *(v300 + 22) = 2112;
                        *(v300 + 24) = v297;
                        *v301 = v297;
                        v313 = v297;
                        _os_log_impl(&dword_229538000, v298, v299, "%s Ignoring message %s, unsupported matterPath: %@", v300, 0x20u);
                        sub_22953EAE4(v301, &qword_27D87D7D0, &unk_22A578D90);
                        MEMORY[0x22AAD4E50](v301, -1, -1);
                        swift_arrayDestroy();
                        MEMORY[0x22AAD4E50](v302, -1, -1);
                        MEMORY[0x22AAD4E50](v300, -1, -1);
                      }

                      else
                      {
                      }

                      v314 = v338;
                    }

                    (v339)(v314, v349);
LABEL_72:
                    v271 = v343;
                    v272 = v344;
                    return (v346)(v271, v272);
                  }

                  v59 = v344;
                  v50 = v345;
                  v158 = v346;
                }
              }

              else
              {

                v158 = v346;
              }

              v273 = v340;
              sub_2296F8604();
              v274 = v2;
              v275 = a1;

              v276 = sub_22A4DD05C();
              v277 = sub_22A4DDCEC();

              if (!os_log_type_enabled(v276, v277))
              {

                (*(v348 + 8))(v273, v349);
                return v158(v343, v59);
              }

              v278 = swift_slowAlloc();
              v279 = swift_slowAlloc();
              v345 = v50;
              v280 = v279;
              v350 = v279;
              *v278 = 136315650;
              v351 = 91;
              v352 = 0xE100000000000000;
              v281 = [v274 logIdentifier];
              v282 = sub_22A4DD5EC();
              v258 = v59;
              v284 = v283;

              MEMORY[0x22AAD08C0](v282, v284);

              MEMORY[0x22AAD08C0](93, 0xE100000000000000);
              v285 = sub_2295A3E30(v351, v352, &v350);

              *(v278 + 4) = v285;
              *(v278 + 12) = 2080;
              v286 = [v275 shortDescription];
              v287 = sub_22A4DD5EC();
              v289 = v288;

              v290 = sub_2295A3E30(v287, v289, &v350);

              *(v278 + 14) = v290;
              *(v278 + 22) = 2080;
              v291 = sub_22A4DD4AC();
              v293 = v292;

              v294 = sub_2295A3E30(v291, v293, &v350);

              *(v278 + 24) = v294;
              _os_log_impl(&dword_229538000, v276, v277, "%s Ignoring %s, payload missing Matter eventID: %s", v278, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x22AAD4E50](v280, -1, -1);
              MEMORY[0x22AAD4E50](v278, -1, -1);

              (*(v348 + 8))(v340, v349);
              goto LABEL_56;
            }
          }
        }

        else
        {
        }

        v248 = v341;
        sub_2296F8604();
        v249 = v2;
        v250 = v60;

        v251 = sub_22A4DD05C();
        v252 = sub_22A4DDCEC();

        if (!os_log_type_enabled(v251, v252))
        {

          (*(v348 + 8))(v248, v349);
          v271 = v343;
          v272 = v59;
          return (v346)(v271, v272);
        }

        v253 = swift_slowAlloc();
        v254 = swift_slowAlloc();
        v345 = v50;
        v255 = v254;
        v350 = v254;
        *v253 = 136315650;
        v351 = 91;
        v352 = 0xE100000000000000;
        v256 = [v249 logIdentifier];
        v257 = sub_22A4DD5EC();
        v258 = v59;
        v260 = v259;

        MEMORY[0x22AAD08C0](v257, v260);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v261 = sub_2295A3E30(v351, v352, &v350);

        *(v253 + 4) = v261;
        *(v253 + 12) = 2080;
        v262 = [v250 shortDescription];
        v263 = sub_22A4DD5EC();
        v265 = v264;

        v266 = sub_2295A3E30(v263, v265, &v350);

        *(v253 + 14) = v266;
        *(v253 + 22) = 2080;
        v267 = sub_22A4DD4AC();
        v269 = v268;

        v270 = sub_2295A3E30(v267, v269, &v350);

        *(v253 + 24) = v270;
        _os_log_impl(&dword_229538000, v251, v252, "%s Ignoring %s, payload missing Matter clusterID: %s", v253, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v255, -1, -1);
        MEMORY[0x22AAD4E50](v253, -1, -1);

        (*(v348 + 8))(v341, v349);
LABEL_56:
        v271 = v343;
        v272 = v258;
        return (v346)(v271, v272);
      }
    }
  }

  else
  {
  }

  v224 = v342;
  sub_2296F8604();
  v225 = v2;
  v226 = v60;

  v227 = sub_22A4DD05C();
  v228 = sub_22A4DDCEC();

  if (os_log_type_enabled(v227, v228))
  {
    v229 = swift_slowAlloc();
    v332 = v138;
    v230 = v229;
    v231 = swift_slowAlloc();
    v345 = v50;
    v232 = v231;
    v350 = v231;
    *v230 = 136315650;
    v351 = 91;
    v352 = 0xE100000000000000;
    v233 = v228;
    v234 = [v225 logIdentifier];
    v235 = sub_22A4DD5EC();
    v237 = v236;

    MEMORY[0x22AAD08C0](v235, v237);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v238 = sub_2295A3E30(v351, v352, &v350);

    *(v230 + 4) = v238;
    *(v230 + 12) = 2080;
    v239 = [v226 shortDescription];
    v240 = sub_22A4DD5EC();
    v242 = v241;

    v243 = sub_2295A3E30(v240, v242, &v350);

    *(v230 + 14) = v243;
    *(v230 + 22) = 2080;
    v244 = sub_22A4DD4AC();
    v246 = v245;

    v247 = sub_2295A3E30(v244, v246, &v350);

    *(v230 + 24) = v247;
    _os_log_impl(&dword_229538000, v227, v233, "%s Ignoring %s, payload missing Matter endpointID: %s", v230, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v232, -1, -1);
    MEMORY[0x22AAD4E50](v230, -1, -1);

    (*(v348 + 8))(v224, v349);
    return (v346)(v343, v344);
  }

  else
  {

    (*(v348 + 8))(v224, v349);
    return (v346)(v343, v59);
  }
}