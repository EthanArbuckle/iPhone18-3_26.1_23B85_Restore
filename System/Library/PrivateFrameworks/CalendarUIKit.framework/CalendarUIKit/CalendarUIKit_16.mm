uint64_t sub_1CAD1385C()
{

  return MEMORY[0x1EEE6DFA0](sub_1CAD1393C, 0, 0);
}

uint64_t sub_1CAD1393C()
{
  v410 = v0;
  v1 = v0[160];
  v2 = v0[150];
  v3 = v0[149];
  v4 = v0[134];
  v5 = v0[104];
  v382 = v0[105];
  v6 = [v1 title];
  v7 = sub_1CAD4DF94();
  v9 = v8;

  v10 = *(v4 + 32);
  v11 = v0;
  *(v2 + v10) = v1;
  v12 = type metadata accessor for LocationModelObject(0);
  swift_storeEnumTagMultiPayload();
  v380 = *(*(v12 - 8) + 56);
  v381 = v12;
  v380(v2 + v10, 0, 1, v12);
  *v2 = v7;
  v2[1] = v9;
  v2[2] = 0;
  v2[3] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = v5;
  sub_1CAD1B670(v2, v3, type metadata accessor for LocationSearchResult);
  v13 = v5;
  v14 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v11[159];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v357 = sub_1CAD353C4(v17 > 1, v18 + 1, 1, v16);
    }

    else
    {
      v357 = v16;
    }

    v19 = v11[158];
    v20 = v11[156];
    v21 = v11[150];
    v22 = v11[149];
    v23 = v11[135];

    v13 = (v19 + 1);
    sub_1CAD1AC00(v21, type metadata accessor for LocationSearchResult);
    *(v357 + 16) = v18 + 1;
    sub_1CAD1AB98(v22, v357 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v18, type metadata accessor for LocationSearchResult);
    if (v19 + 1 != v20)
    {
      v44 = v11[158] + 1;
      v11[159] = v357;
      v11[158] = v44;
      v45 = v11[155];
      if ((v45 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x1CCAA7940]();
      }

      else
      {
        v46 = *(v45 + 8 * v44 + 32);
      }

      v47 = v46;
      v11[160] = v46;
      v48 = v11[157];
      v11[10] = v11;
      v11[15] = v11 + 104;
      v11[11] = sub_1CAD1385C;
      v49 = swift_continuation_init();
      v11[101] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468188);
      v11[98] = v49;
      v11[94] = MEMORY[0x1E69E9820];
      v11[95] = 1107296256;
      v11[96] = sub_1CAD194D8;
      v11[97] = &block_descriptor_57;
      [v48 imageForRoomType:v47 completionHandler:v11 + 94];
      v32 = (v11 + 10);
      goto LABEL_27;
    }

    v24 = [v11[154] virtualConferenceCustomSearchResults];
    if (!v24)
    {
      break;
    }

    v25 = v24;
    sub_1CABD4070(0, &qword_1EC468178);
    v26 = sub_1CAD4E214();
    v11[161] = v26;

    if (v26 >> 62)
    {
      v50 = sub_1CAD4E604();
      v11[162] = v50;
      if (!v50)
      {
LABEL_35:

        break;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11[162] = v27;
      if (!v27)
      {
        goto LABEL_35;
      }
    }

    v28 = 0;
    v12 = &selRef_isNew;
    while (1)
    {
      v11[163] = v357;
      v29 = v11[161];
      if ((v29 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1CCAA7940](v28);
      }

      else
      {
        if (v28 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v30 = *(v29 + 8 * v28 + 32);
      }

      v13 = v30;
      v11[164] = v30;
      v11[165] = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v31 = [v30 joinMethods];
      v11[166] = sub_1CABD4070(0, &qword_1EC464E70);
      v18 = sub_1CAD4E214();

      if (v18 >> 62)
      {
        v32 = sub_1CAD4E604();
        if (v32)
        {
LABEL_19:
          if ((v18 & 0xC000000000000001) == 0)
          {
            if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v33 = *(v18 + 32);
              goto LABEL_22;
            }

            __break(1u);
            return MEMORY[0x1EEE6DEC8](v32);
          }

          v33 = MEMORY[0x1CCAA7940](0, v18);
LABEL_22:
          v34 = v33;
          v35 = v11[133];
          v36 = v11[132];
          v37 = v11[131];
          v38 = v11[130];
          v39 = v11[128];

          v40 = [v34 URL];

          sub_1CAD4BFC4();
          (*(v37 + 32))(v35, v36, v38);
          v41 = objc_opt_self();
          v42 = sub_1CAD4BFB4();
          v11[167] = v42;
          v11[2] = v11;
          v11[7] = v39;
          v11[3] = sub_1CAD1636C;
          v43 = swift_continuation_init();
          v11[93] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468180);
          v11[90] = v43;
          v11[86] = MEMORY[0x1E69E9820];
          v11[87] = 1107296256;
          v11[88] = sub_1CAD1954C;
          v11[89] = &block_descriptor_7;
          [v41 displayDetailsForURL:v42 completionHandler:v11 + 86];
          v32 = (v11 + 2);
LABEL_27:

          return MEMORY[0x1EEE6DEC8](v32);
        }
      }

      else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v28 = v11[165];
      if (v28 == v11[162])
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v16 = sub_1CAD353C4(0, v16[2] + 1, 1, v16);
  }

  if (!*(v357 + 16))
  {
    v328 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

  if (qword_1EC462BF8 != -1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v12 = qword_1EC47DA28;
    v51 = unk_1EC47DA30;

    v52 = sub_1CAD355C8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v54 = *(v52 + 2);
    v53 = *(v52 + 3);
    if (v54 >= v53 >> 1)
    {
      v52 = sub_1CAD355C8((v53 > 1), v54 + 1, 1, v52);
    }

    *(v52 + 2) = v54 + 1;
    v328 = v52;
    v55 = &v52[24 * v54];
    *(v55 + 4) = v12;
    *(v55 + 5) = v51;
    *(v55 + 6) = v357;
LABEL_42:
    v56 = [v11[154] recentsSearchResults];
    v383 = v11;
    if (!v56)
    {
      break;
    }

    v57 = v56;
    sub_1CABD4070(0, &qword_1EC468170);
    v12 = sub_1CAD4E214();

    if (v12 >> 62)
    {
      v58 = sub_1CAD4E604();
      if (!v58)
      {
LABEL_64:
        v60 = MEMORY[0x1E69E7CC0];
LABEL_65:

        if (v60[2])
        {
          if (qword_1EC462BD0 != -1)
          {
            swift_once();
          }

          v12 = qword_1EC47D9D8;
          v75 = unk_1EC47D9E0;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v76 = v328;
          }

          else
          {
            v76 = sub_1CAD355C8(0, *(v328 + 2) + 1, 1, v328);
          }

          v78 = *(v76 + 2);
          v77 = *(v76 + 3);
          if (v78 >= v77 >> 1)
          {
            v76 = sub_1CAD355C8((v77 > 1), v78 + 1, 1, v76);
          }

          *(v76 + 2) = v78 + 1;
          v328 = v76;
          v79 = &v76[24 * v78];
          *(v79 + 4) = v12;
          *(v79 + 5) = v75;
          *(v79 + 6) = v60;
        }

        else
        {
        }

        break;
      }
    }

    else
    {
      v58 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v58)
      {
        goto LABEL_64;
      }
    }

    v59 = 0;
    v363 = v11[135];
    v18 = v363 + 48;
    v60 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x1CCAA7940](v59, v12);
      }

      else
      {
        if (v59 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v61 = *(v12 + 8 * v59 + 32);
      }

      v62 = v61;
      v63 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      v64 = v383[151];
      v65 = v383[134];
      v66 = v383[107];
      *&v396 = v61;
      sub_1CAD19750(&v396, v66, v64);

      v67 = v64;
      v11 = v383;
      v68 = (*v18)(v67, 1, v65);
      v69 = v383[151];
      if (v68 == 1)
      {
        sub_1CAB21B68(v69, &qword_1EC467E38);
      }

      else
      {
        v70 = v383[146];
        v71 = v383[145];
        sub_1CAD1AB98(v69, v70, type metadata accessor for LocationSearchResult);
        sub_1CAD1AB98(v70, v71, type metadata accessor for LocationSearchResult);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_1CAD353C4(0, v60[2] + 1, 1, v60);
        }

        v73 = v60[2];
        v72 = v60[3];
        if (v73 >= v72 >> 1)
        {
          v60 = sub_1CAD353C4(v72 > 1, v73 + 1, 1, v60);
        }

        v74 = v383[145];
        v60[2] = v73 + 1;
        sub_1CAD1AB98(v74, v60 + ((*(v363 + 80) + 32) & ~*(v363 + 80)) + *(v363 + 72) * v73, type metadata accessor for LocationSearchResult);
      }

      ++v59;
      if (v63 == v58)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
  }

  v80 = [v11[154] conferenceRoomSearchResults];
  if (!v80)
  {
    goto LABEL_114;
  }

  v81 = v80;
  sub_1CABD4070(0, &qword_1EC468168);
  v82 = sub_1CAD4E214();

  if (v82 >> 62)
  {
    goto LABEL_104;
  }

  for (i = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CAD4E604())
  {
    v84 = 0;
    v340 = v11[143];
    v336 = v11[135];
    v85 = v82 & 0xC000000000000001;
    v86 = v82 & 0xFFFFFFFFFFFFFF8;
    v18 = MEMORY[0x1E69E7CC0];
    v326 = v11[134];
    v329 = v82 & 0xFFFFFFFFFFFFFF8;
    v332 = v82 & 0xC000000000000001;
    v344 = i;
    v348 = v82;
    while (1)
    {
      if (v85)
      {
        v87 = MEMORY[0x1CCAA7940](v84, v82);
      }

      else
      {
        if (v84 >= *(v86 + 16))
        {
          goto LABEL_103;
        }

        v87 = *(v82 + 8 * v84 + 32);
      }

      v88 = v87;
      v89 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        break;
      }

      v90 = [v87 location];
      if (v90)
      {
        v91 = v90;
        v92 = [v91 preferredAddress];
        if (v92)
        {
          v93 = v92;
          v94 = sub_1CAD4DF94();
          v96 = v95;

          v97 = [v91 displayName];
          if (v97)
          {
            v98 = v97;
            v99 = sub_1CAD4DF94();
            v358 = v100;
            v364 = v99;
          }

          else
          {
            v358 = 0;
            v364 = 0;
          }

          v101 = [v91 firstName];
          if (v101)
          {
            v102 = v101;
            v103 = sub_1CAD4DF94();
            v105 = v104;
          }

          else
          {
            v103 = 0;
            v105 = 0;
          }

          v374 = v18;
          v106 = [v91 lastName];
          if (v106)
          {
            v107 = v106;
            v108 = sub_1CAD4DF94();
            v110 = v109;
          }

          else
          {

            v108 = 0;
            v110 = 0;
          }

          v352 = v383[144];
          v111 = v383[143];
          v383[70] = v364;
          v383[71] = v358;
          v383[72] = v103;
          v383[73] = v105;
          v383[74] = v108;
          v383[75] = v110;
          v383[76] = v94;
          v383[77] = v96;
          v383[62] = v364;
          v383[63] = v358;
          v383[64] = v103;
          v383[65] = v105;
          v383[66] = v108;
          v383[67] = v110;
          v383[68] = v94;
          v383[69] = v96;
          sub_1CABC1A50((v383 + 70), (v383 + 78));
          sub_1CABC1AFC((v383 + 62));
          v112 = v383[70];
          v113 = v383[71];
          v114 = *(v383 + 37);
          v396 = *(v383 + 36);
          v397 = v114;
          v398 = *(v383 + 38);
          v115 = [v88 supportsAvailability];
          v116 = [v88 availabilityRequestInProgress];
          v117 = [v88 availability];

          v118 = v111 + v326[8];
          *v118 = v112;
          *(v118 + 1) = v113;
          v119 = v397;
          *(v118 + 1) = v396;
          *(v118 + 2) = v119;
          *(v118 + 3) = v398;
          v118[64] = v115;
          v118[65] = v116;
          *(v118 + 9) = v117;
          swift_storeEnumTagMultiPayload();
          v380(v118, 0, 1, v381);
          *v111 = v112;
          v340[1] = v113;
          *(v340 + 1) = 0u;
          *(v340 + 2) = 0u;
          v340[6] = 0;
          sub_1CAD1AB98(v111, v352, type metadata accessor for LocationSearchResult);

          v18 = v374;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1CAD353C4(0, v374[2] + 1, 1, v374);
          }

          i = v344;
          v82 = v348;
          v86 = v329;
          v85 = v332;
          v12 = *(v18 + 16);
          v120 = *(v18 + 24);
          v11 = v383;
          if (v12 >= v120 >> 1)
          {
            v18 = sub_1CAD353C4(v120 > 1, v12 + 1, 1, v18);
          }

          v121 = v383[144];
          *(v18 + 16) = v12 + 1;
          sub_1CAD1AB98(v121, v18 + ((*(v336 + 80) + 32) & ~*(v336 + 80)) + *(v336 + 72) * v12, type metadata accessor for LocationSearchResult);
          v89 = v84 + 1;
        }

        else
        {

          v11 = v383;
        }
      }

      else
      {
      }

      ++v84;
      if (v89 == i)
      {
        goto LABEL_106;
      }
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    ;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_106:

  if (*(v18 + 16))
  {
    if (qword_1EC462BD8 == -1)
    {
      goto LABEL_108;
    }

    goto LABEL_250;
  }

LABEL_114:
  v127 = [v11[154] contactsSearchResults];
  if (v127)
  {
    v128 = v127;
    sub_1CABD4070(0, &qword_1EC468158);
    v12 = sub_1CAD4E214();

    if (!(v12 >> 62))
    {
      v129 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_117;
    }

    goto LABEL_202;
  }

  while (1)
  {
    while (1)
    {
      v384 = MEMORY[0x1E69E7CC0];
      v152 = [v11[154] locationFromMapsURL];
      if (v152)
      {
        v153 = v152;
        v154 = v11[141];
        v155 = v11[134];
        v156 = [v152 location];
        *&v387 = &protocol witness table for EKLocationModelWrapper;
        *(&v386 + 1) = &type metadata for EKLocationModelWrapper;
        *&v385 = v156;
        EventLocationModelObject.init(_:)(&v385, &v396);
        v157 = v405;
        *(v11 + 17) = v404;
        *(v11 + 18) = v157;
        *(v11 + 19) = v406;
        v158 = v401;
        *(v11 + 13) = v400;
        *(v11 + 14) = v158;
        v159 = v403;
        *(v11 + 15) = v402;
        *(v11 + 16) = v159;
        v160 = v397;
        *(v11 + 9) = v396;
        *(v11 + 10) = v160;
        v161 = v399;
        *(v11 + 11) = v398;
        *(v11 + 12) = v161;
        v162 = v11[19];
        v163 = v11[23];
        v375 = v11[22];
        v370 = v11[18];

        v164 = sub_1CABC17B0();
        v165 = (v154 + *(v155 + 32));
        v167 = *(v11 + 18);
        v166 = *(v11 + 19);
        v168 = *(v11 + 17);
        *(v165 + 7) = *(v11 + 16);
        *(v165 + 8) = v168;
        *(v165 + 9) = v167;
        *(v165 + 10) = v166;
        v170 = *(v11 + 14);
        v169 = *(v11 + 15);
        v171 = *(v11 + 13);
        *(v165 + 3) = *(v11 + 12);
        *(v165 + 4) = v171;
        *(v165 + 5) = v170;
        *(v165 + 6) = v169;
        v173 = *(v11 + 10);
        v172 = *(v11 + 11);
        *v165 = *(v11 + 9);
        *(v165 + 1) = v173;
        *(v165 + 2) = v172;
        swift_storeEnumTagMultiPayload();
        v380(v165, 0, 1, v381);
        *&v175 = v370;
        *&v174 = v375;
        *(&v175 + 1) = v162;
        *(&v174 + 1) = v163;
        *v154 = v175;
        *(v154 + 16) = v174;
        *(v154 + 40) = 0;
        *(v154 + 48) = 0;
        *(v154 + 32) = v164;
        sub_1CABD3C1C((v11 + 18), (v11 + 40));
        v176 = sub_1CAD353C4(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v12 = v176[2];
        v177 = v176[3];
        if (v12 >= v177 >> 1)
        {
          v176 = sub_1CAD353C4(v177 > 1, v12 + 1, 1, v176);
        }

        v178 = v11[141];
        v18 = v11[135];

        sub_1CABD3C78((v11 + 18));
        v176[2] = v12 + 1;
        sub_1CAD1AB98(v178, v176 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v12, type metadata accessor for LocationSearchResult);
        v384 = v176;
      }

      v179 = [v11[154] eventsSearchResults];
      if (!v179)
      {
        break;
      }

      v180 = v179;
      sub_1CABD4070(0, &qword_1EC468160);
      v181 = sub_1CAD4E214();

      if (v181 >> 62)
      {
        v182 = sub_1CAD4E604();
      }

      else
      {
        v182 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v182)
      {

        v184 = MEMORY[0x1E69E7CC0];
LABEL_164:
        sub_1CAD0F4F8(v184, sub_1CAD353C4, type metadata accessor for LocationSearchResult);
        break;
      }

      v393 = MEMORY[0x1E69E7CC0];
      v131 = &v393;
      sub_1CACBA39C(0, v182 & ~(v182 >> 63), 0);
      if ((v182 & 0x8000000000000000) == 0)
      {
        v183 = 0;
        v337 = v11[140];
        v349 = (v181 & 0xC000000000000001);
        v354 = v11[135];
        v341 = v11[134];
        v345 = (v182 - 1);
        v184 = v393;
        v185 = &selRef_isNew;
        v330 = v181;
        while (1)
        {
          v376 = v183;
          if (v349)
          {
            v186 = MEMORY[0x1CCAA7940]();
          }

          else
          {
            v186 = *(v181 + 8 * v183 + 32);
          }

          v187 = v186;
          v188 = [v186 location];
          v409 = &protocol witness table for EKLocationModelWrapper;
          v408 = &type metadata for EKLocationModelWrapper;
          v407[0] = v188;
          EventLocationModelObject.init(_:)(v407, &v396);
          v189 = *(&v396 + 1);
          v394 = v397;
          v190 = *(&v398 + 1);
          v365 = v398;
          v371 = v396;
          v389 = v403;
          v390 = v404;
          v391 = v405;
          v392 = v406;
          v385 = v399;
          v386 = v400;
          v387 = v401;
          v388 = v402;

          v191 = [v187 location];
          v192 = [v191 mapKitHandle];

          if (v192)
          {
            v193 = sub_1CAD4C024();
            v195 = v194;

            v196 = objc_opt_self();
            v197 = sub_1CAD4C014();
            v198 = [v196 mapItemForMapKitHandle_];

            if (v198)
            {
              v333 = v193;
              v199 = objc_opt_self();
              v200 = objc_opt_self();
              v201 = [v200 v185[115]];
              v202 = [v201 traitCollection];

              [v202 displayScale];
              v204 = v203;

              v327 = v199;
              v205 = [v199 imageForMapItem:v198 forScale:0 fallbackToBundleIcon:v204];
              if (v205)
              {
                v192 = v205;
              }

              else
              {
                v206 = [objc_opt_self() markerStyleAttributes];
                v207 = [v200 mainScreen];
                v208 = [v207 traitCollection];

                [v208 displayScale];
                v210 = v209;

                v192 = [v327 imageForStyle:v206 size:4 forScale:0 format:v210];
              }

              sub_1CABB8C1C(v333, v195);
            }

            else
            {

              sub_1CABB8C1C(v193, v195);
              v192 = 0;
            }

            v181 = v330;
          }

          else
          {
          }

          v211 = v383[140];
          v212 = v211 + v341[8];
          *v212 = v371;
          *(v212 + 1) = v189;
          *(v212 + 1) = v394;
          *(v212 + 4) = v365;
          *(v212 + 5) = v190;
          v213 = v390;
          *(v212 + 7) = v389;
          *(v212 + 8) = v213;
          v214 = v392;
          *(v212 + 9) = v391;
          *(v212 + 10) = v214;
          v215 = v386;
          *(v212 + 3) = v385;
          *(v212 + 4) = v215;
          v216 = v388;
          *(v212 + 5) = v387;
          *(v212 + 6) = v216;
          v18 = v381;
          swift_storeEnumTagMultiPayload();
          v380(v212, 0, 1, v381);
          *v211 = v371;
          v337[1] = v189;
          v337[2] = v365;
          v337[3] = v190;
          v337[4] = v192;
          v337[5] = 0;
          v337[6] = 0;
          v393 = v184;
          v12 = *(v184 + 16);
          v217 = *(v184 + 24);
          if (v12 >= v217 >> 1)
          {
            sub_1CACBA39C(v217 > 1, v12 + 1, 1);
            v184 = v393;
          }

          v218 = v383[140];
          *(v184 + 16) = v12 + 1;
          sub_1CAD1AB98(v218, v184 + ((*(v354 + 80) + 32) & ~*(v354 + 80)) + *(v354 + 72) * v12, type metadata accessor for LocationSearchResult);
          if (v345 == v376)
          {
            break;
          }

          v183 = v376 + 1;
          v185 = &selRef_isNew;
        }

        v11 = v383;

        goto LABEL_164;
      }

LABEL_246:
      __break(1u);
LABEL_247:
      swift_once();
LABEL_129:
      v12 = qword_1EC47D9F8;
      v147 = unk_1EC47DA00;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v148 = v328;
      }

      else
      {
        v148 = sub_1CAD355C8(0, *(v328 + 2) + 1, 1, v328);
      }

      v150 = *(v148 + 2);
      v149 = *(v148 + 3);
      if (v150 >= v149 >> 1)
      {
        v148 = sub_1CAD355C8((v149 > 1), v150 + 1, 1, v148);
      }

      *(v148 + 2) = v150 + 1;
      v328 = v148;
      v151 = &v148[24 * v150];
      *(v151 + 4) = v12;
      *(v151 + 5) = v147;
      *(v151 + 6) = v131;
    }

    v219 = [v11[154] frequentsSearchResults];
    if (v219)
    {
      v220 = v219;
      sub_1CABD4070(0, &qword_1EC468158);
      v12 = sub_1CAD4E214();

      if (v12 >> 62)
      {
        v221 = sub_1CAD4E604();
      }

      else
      {
        v221 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v221)
      {
        v393 = MEMORY[0x1E69E7CC0];
        sub_1CACBA39C(0, v221 & ~(v221 >> 63), 0);
        if (v221 < 0)
        {
          __break(1u);
LABEL_250:
          swift_once();
LABEL_108:
          v12 = qword_1EC47D9E8;
          v122 = unk_1EC47D9F0;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v123 = v328;
          }

          else
          {
            v123 = sub_1CAD355C8(0, *(v328 + 2) + 1, 1, v328);
          }

          v125 = *(v123 + 2);
          v124 = *(v123 + 3);
          if (v125 >= v124 >> 1)
          {
            v123 = sub_1CAD355C8((v124 > 1), v125 + 1, 1, v123);
          }

          *(v123 + 2) = v125 + 1;
          v328 = v123;
          v126 = &v123[24 * v125];
          *(v126 + 4) = v12;
          *(v126 + 5) = v122;
          *(v126 + 6) = v18;
          goto LABEL_114;
        }

        v222 = v11;
        v223 = v11[139];
        v360 = v222[135];
        v355 = v222[134];
        v224 = v393;
        v350 = objc_opt_self();
        v346 = objc_opt_self();
        v342 = objc_opt_self();
        v225 = 0;
        v226 = v12;
        v334 = v221 - 1;
        v338 = v12 & 0xC000000000000001;
        for (j = v12; ; v226 = j)
        {
          v377 = v224;
          v372 = v225;
          if (v338)
          {
            v227 = MEMORY[0x1CCAA7940]();
          }

          else
          {
            v227 = *(v226 + 8 * v225 + 32);
          }

          v228 = v383[139];
          v409 = &protocol witness table for EKLocationModelWrapper;
          v408 = &type metadata for EKLocationModelWrapper;
          v407[0] = v227;
          v229 = v227;
          EventLocationModelObject.init(_:)(v407, &v396);
          v230 = v396;
          v394 = v397;
          v231 = *(&v398 + 1);
          v232 = v398;
          v389 = v403;
          v390 = v404;
          v391 = v405;
          v392 = v406;
          v385 = v399;
          v386 = v400;
          v387 = v401;
          v388 = v402;

          v233 = [v350 markerStyleAttributes];
          v234 = [v342 mainScreen];
          v235 = [v234 traitCollection];

          [v235 displayScale];
          v237 = v236;

          v18 = [v346 imageForStyle:v233 size:4 forScale:0 format:v237];
          v238 = v228 + *(v355 + 32);
          *v238 = v230;
          *(v238 + 1) = v394;
          *(v238 + 2) = __PAIR128__(v231, v232);
          v239 = v390;
          *(v238 + 7) = v389;
          *(v238 + 8) = v239;
          v240 = v392;
          *(v238 + 9) = v391;
          *(v238 + 10) = v240;
          v241 = v386;
          *(v238 + 3) = v385;
          *(v238 + 4) = v241;
          v242 = v388;
          *(v238 + 5) = v387;
          *(v238 + 6) = v242;
          swift_storeEnumTagMultiPayload();
          v380(v238, 0, 1, v381);
          *v228 = v230;
          *(v223 + 8) = *(&v230 + 1);
          *(v223 + 16) = __PAIR128__(v231, v232);
          *(v223 + 32) = v18;
          *(v223 + 40) = 0;
          *(v223 + 48) = 0;
          v224 = v377;
          v393 = v377;
          v12 = *(v377 + 16);
          v243 = *(v377 + 24);
          if (v12 >= v243 >> 1)
          {
            sub_1CACBA39C(v243 > 1, v12 + 1, 1);
            v224 = v393;
          }

          v244 = v383[139];
          *(v224 + 16) = v12 + 1;
          sub_1CAD1AB98(v244, v224 + ((*(v360 + 80) + 32) & ~*(v360 + 80)) + *(v360 + 72) * v12, type metadata accessor for LocationSearchResult);
          if (v334 == v372)
          {
            break;
          }

          v225 = v372 + 1;
        }

        v11 = v383;
      }

      else
      {

        v224 = MEMORY[0x1E69E7CC0];
      }

      sub_1CAD0F4F8(v224, sub_1CAD353C4, type metadata accessor for LocationSearchResult);
    }

    v245 = [v11[154] mapCompletionSearchResults];
    if (!v245)
    {
      goto LABEL_208;
    }

    v246 = v245;
    sub_1CABD4070(0, &qword_1EC468118);
    v247 = sub_1CAD4E214();

    if (!(v247 >> 62))
    {
      v248 = *((v247 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v248)
      {
        break;
      }

      goto LABEL_184;
    }

    v248 = sub_1CAD4E604();
    if (!v248)
    {
      break;
    }

LABEL_184:
    v249 = 0;
    v250 = v11[137];
    v347 = (v247 & 0xFFFFFFFFFFFFFF8);
    v351 = (v247 & 0xC000000000000001);
    v378 = MEMORY[0x1E69E7CC0];
    v331 = v11[134];
    v335 = v11[135];
    v343 = v247;
    v339 = v248;
    while (1)
    {
      if (v351)
      {
        v251 = MEMORY[0x1CCAA7940](v249, v247);
      }

      else
      {
        if (v249 >= v347[2])
        {
          goto LABEL_201;
        }

        v251 = *(v247 + 8 * v249 + 32);
      }

      v252 = v251;
      v253 = v249 + 1;
      if (__OFADD__(v249, 1))
      {
        break;
      }

      v254 = [v251 mapItem];
      if (v254)
      {
        v18 = v254;
        v255 = [v252 title];
        v256 = sub_1CAD4DF94();
        v367 = v257;
        v373 = v256;

        v258 = [v252 subtitle];
        v361 = sub_1CAD4DF94();
        v356 = v259;

        v260 = objc_opt_self();
        v261 = objc_opt_self();
        v262 = [v261 mainScreen];
        v263 = [v262 traitCollection];

        [v263 displayScale];
        v265 = v264;

        v266 = [v260 imageForMapItem:v18 forScale:0 fallbackToBundleIcon:v265];
        if (!v266)
        {
          v267 = [objc_opt_self() markerStyleAttributes];
          v268 = [v261 mainScreen];
          v269 = [v268 traitCollection];

          [v269 displayScale];
          v271 = v270;

          v266 = [v260 imageForStyle:v267 size:4 forScale:0 format:v271];
        }

        v11 = v383;
        v272 = v383[138];
        v273 = v383[137];

        v274 = *(v331 + 32);
        *(v273 + v274) = v252;
        swift_storeEnumTagMultiPayload();
        v380(v273 + v274, 0, 1, v381);
        *v273 = v373;
        v250[1] = v367;
        v250[2] = v361;
        v250[3] = v356;
        v250[4] = v266;
        v250[5] = 0;
        v250[6] = 0;
        sub_1CAD1AB98(v273, v272, type metadata accessor for LocationSearchResult);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v378 = sub_1CAD353C4(0, v378[2] + 1, 1, v378);
        }

        v247 = v343;
        v248 = v339;
        v12 = v378[2];
        v275 = v378[3];
        if (v12 >= v275 >> 1)
        {
          v378 = sub_1CAD353C4(v275 > 1, v12 + 1, 1, v378);
        }

        v276 = v383[138];
        v378[2] = v12 + 1;
        sub_1CAD1AB98(v276, v378 + ((*(v335 + 80) + 32) & ~*(v335 + 80)) + *(v335 + 72) * v12, type metadata accessor for LocationSearchResult);
      }

      else
      {
      }

      ++v249;
      if (v253 == v248)
      {
        goto LABEL_207;
      }
    }

    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    v129 = sub_1CAD4E604();
LABEL_117:
    if (!v129)
    {

      v131 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_128;
      }

      goto LABEL_135;
    }

    v130 = v12;
    v393 = MEMORY[0x1E69E7CC0];
    v131 = &v393;
    sub_1CACBA39C(0, v129 & ~(v129 >> 63), 0);
    if (v129 < 0)
    {
      __break(1u);
      goto LABEL_246;
    }

    v132 = 0;
    v12 = v11[142];
    v359 = v11[135];
    v131 = v393;
    v133 = v130;
    v353 = v11[134];
    while (1)
    {
      v369 = v132;
      if ((v130 & 0xC000000000000001) != 0)
      {
        v134 = MEMORY[0x1CCAA7940]();
      }

      else
      {
        v134 = *(v133 + 8 * v132 + 32);
      }

      v135 = v11[142];
      v409 = &protocol witness table for EKLocationModelWrapper;
      v408 = &type metadata for EKLocationModelWrapper;
      v407[0] = v134;
      v136 = v134;
      EventLocationModelObject.init(_:)(v407, &v396);
      v137 = v396;
      v394 = v397;
      v395 = v398;
      v18 = *(&v399 + 1);
      v138 = v399;
      v389 = v404;
      v390 = v405;
      v391 = v406;
      v385 = v400;
      v386 = v401;
      v387 = v402;
      v388 = v403;

      v139 = v135 + *(v353 + 32);
      *v139 = v137;
      v140 = v395;
      *(v139 + 1) = v394;
      *(v139 + 2) = v140;
      *(v139 + 3) = __PAIR128__(v18, v138);
      v141 = v390;
      *(v139 + 8) = v389;
      *(v139 + 9) = v141;
      *(v139 + 10) = v391;
      v142 = v386;
      *(v139 + 4) = v385;
      *(v139 + 5) = v142;
      v143 = v388;
      *(v139 + 6) = v387;
      *(v139 + 7) = v143;
      swift_storeEnumTagMultiPayload();
      v380(v139, 0, 1, v381);
      *v135 = v138;
      *(v12 + 8) = v18;
      *(v12 + 16) = v137;
      *(v12 + 32) = xmmword_1CAD68FB0;
      *(v12 + 48) = 0x80000001CAD777A0;
      v393 = v131;
      v145 = v131[2];
      v144 = v131[3];
      if (v145 >= v144 >> 1)
      {
        sub_1CACBA39C(v144 > 1, v145 + 1, 1);
        v131 = v393;
      }

      v146 = v11[142];
      v131[2] = v145 + 1;
      sub_1CAD1AB98(v146, v131 + ((*(v359 + 80) + 32) & ~*(v359 + 80)) + *(v359 + 72) * v145, type metadata accessor for LocationSearchResult);
      if (v129 - 1 == v369)
      {
        break;
      }

      v132 = v369 + 1;
      v133 = v130;
    }

    if (v131[2])
    {
LABEL_128:
      if (qword_1EC462BE0 == -1)
      {
        goto LABEL_129;
      }

      goto LABEL_247;
    }

LABEL_135:
  }

  v378 = MEMORY[0x1E69E7CC0];
LABEL_207:

  sub_1CAD0F4F8(v378, sub_1CAD353C4, type metadata accessor for LocationSearchResult);
LABEL_208:
  if (v384[2])
  {
    if (qword_1EC462BE8 != -1)
    {
      swift_once();
    }

    v278 = qword_1EC47DA08;
    v277 = unk_1EC47DA10;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v279 = v328;
    }

    else
    {
      v279 = sub_1CAD355C8(0, *(v328 + 2) + 1, 1, v328);
    }

    v281 = *(v279 + 2);
    v280 = *(v279 + 3);
    if (v281 >= v280 >> 1)
    {
      v279 = sub_1CAD355C8((v280 > 1), v281 + 1, 1, v279);
    }

    *(v279 + 2) = v281 + 1;
    v328 = v279;
    v282 = &v279[24 * v281];
    *(v282 + 4) = v278;
    *(v282 + 5) = v277;
    *(v282 + 6) = v384;
  }

  v283 = [v11[154] textualSearchResults];
  if (!v283)
  {

    goto LABEL_238;
  }

  v284 = v283;
  sub_1CABD4070(0, &qword_1EC468158);
  v285 = sub_1CAD4E214();

  if (v285 >> 62)
  {
    v286 = sub_1CAD4E604();
  }

  else
  {
    v286 = *((v285 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v286)
  {

    v288 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_230;
    }

    goto LABEL_238;
  }

  v287 = v285;
  v393 = MEMORY[0x1E69E7CC0];
  v288 = &v393;
  sub_1CACBA39C(0, v286 & ~(v286 >> 63), 0);
  if (v286 < 0)
  {
    __break(1u);
LABEL_253:
    swift_once();
LABEL_231:
    v305 = qword_1EC47DA18;
    v304 = qword_1EC47DA20;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v306 = v328;
    }

    else
    {
      v306 = sub_1CAD355C8(0, *(v328 + 2) + 1, 1, v328);
    }

    v308 = *(v306 + 2);
    v307 = *(v306 + 3);
    if (v308 >= v307 >> 1)
    {
      v306 = sub_1CAD355C8((v307 > 1), v308 + 1, 1, v306);
    }

    *(v306 + 2) = v308 + 1;
    v309 = &v306[24 * v308];
    *(v309 + 4) = v305;
    *(v309 + 5) = v304;
    *(v309 + 6) = v288;
    v310 = v306;
  }

  else
  {
    v289 = 0;
    v290 = v11[136];
    v362 = v11[134];
    v368 = v11[135];
    v291 = v287;
    v288 = v393;
    while (1)
    {
      v379 = v289;
      if ((v287 & 0xC000000000000001) != 0)
      {
        v292 = MEMORY[0x1CCAA7940]();
      }

      else
      {
        v292 = *(v291 + 8 * v289 + 32);
      }

      v293 = v11[136];
      v409 = &protocol witness table for EKLocationModelWrapper;
      v408 = &type metadata for EKLocationModelWrapper;
      v407[0] = v292;
      EventLocationModelObject.init(_:)(v407, &v396);
      v294 = v396;
      v394 = v397;
      v295 = v398;
      v389 = v403;
      v390 = v404;
      v391 = v405;
      v392 = v406;
      v385 = v399;
      v386 = v400;
      v387 = v401;
      v388 = v402;
      v296 = v293 + *(v362 + 32);
      *v296 = v396;
      *(v296 + 1) = v394;
      *(v296 + 2) = v295;
      v297 = v390;
      *(v296 + 7) = v389;
      *(v296 + 8) = v297;
      v298 = v392;
      *(v296 + 9) = v391;
      *(v296 + 10) = v298;
      v299 = v386;
      *(v296 + 3) = v385;
      *(v296 + 4) = v299;
      v300 = v388;
      *(v296 + 5) = v387;
      *(v296 + 6) = v300;
      swift_storeEnumTagMultiPayload();
      v380(v296, 0, 1, v381);
      *v293 = v294;
      *(v290 + 8) = *(&v294 + 1);
      *(v290 + 16) = v295;
      *(v290 + 32) = 0;
      *(v290 + 40) = 0;
      *(v290 + 48) = 0;
      v393 = v288;
      v301 = v288[2];
      v302 = v288[3];

      if (v301 >= v302 >> 1)
      {
        sub_1CACBA39C(v302 > 1, v301 + 1, 1);
        v288 = v393;
      }

      v303 = v11[136];
      v288[2] = v301 + 1;
      sub_1CAD1AB98(v303, v288 + ((*(v368 + 80) + 32) & ~*(v368 + 80)) + *(v368 + 72) * v301, type metadata accessor for LocationSearchResult);
      if (v286 - 1 == v379)
      {
        break;
      }

      v289 = v379 + 1;
      v291 = v287;
    }

    if (v288[2])
    {
LABEL_230:
      if (qword_1EC462BF0 == -1)
      {
        goto LABEL_231;
      }

      goto LABEL_253;
    }

LABEL_238:

    v310 = v328;
  }

  v311 = v11[153];
  v312 = v11[113];
  v313 = v11[112];
  v314 = v11[110];
  v315 = v11[109];
  v316 = v11[108];
  v317 = v11;
  v318 = v11[107];
  sub_1CAB23A9C(v311, v312, &qword_1EC467E38);
  *(v312 + *(v315 + 20)) = v310;
  v319 = sub_1CAD4E304();
  (*(*(v319 - 8) + 56))(v316, 1, 1, v319);
  sub_1CAD1B670(v312, v313, type metadata accessor for LocationSearchResults);
  sub_1CAD4E2C4();

  v320 = sub_1CAD4E2B4();
  v321 = (*(v314 + 80) + 40) & ~*(v314 + 80);
  v322 = swift_allocObject();
  v323 = MEMORY[0x1E69E85E0];
  v322[2] = v320;
  v322[3] = v323;
  v322[4] = v318;
  sub_1CAD1AB98(v313, v322 + v321, type metadata accessor for LocationSearchResults);
  sub_1CACA6D34(0, 0, v316, &unk_1CAD69258, v322);

  sub_1CAD1AC00(v312, type metadata accessor for LocationSearchResults);
  sub_1CAB21B68(v311, &qword_1EC467E38);

  v324 = v317[1];

  return v324();
}

uint64_t sub_1CAD1636C()
{

  return MEMORY[0x1EEE6DFA0](sub_1CAD1644C, 0, 0);
}

uint64_t sub_1CAD1644C()
{
  v500 = v0;
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1048);
  v472 = *(v0 + 1040);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 1016);
  v5 = *(v0 + 1008);
  v6 = *(v0 + 992);
  v7 = *(v0 + 984);
  sub_1CABA62E4(*(v0 + 1024), v4, &qword_1EC468150);
  v8 = *(v6 + 80);
  v9 = v4[1];
  *v3 = *v4;
  v3[1] = v9;
  sub_1CABA62E4(v4 + v8, v3 + v8, &qword_1EC465450);

  sub_1CAB23A9C(v3, v5, &qword_1EC468150);

  sub_1CABA62E4(v5 + *(v6 + 80), v7, &qword_1EC465450);
  if ((*(v2 + 48))(v7, 1, v472) == 1)
  {
    sub_1CAB21B68(*(v0 + 984), &qword_1EC465450);
    v431 = 0;
    v432 = 0;
  }

  else
  {
    v10 = *(v0 + 1048);
    v11 = *(v0 + 1040);
    v12 = *(v0 + 984);
    v13 = sub_1CAD4BFA4();
    v15 = v14;
    v16 = *(v10 + 8);
    v7 = v10 + 8;
    v16(v12, v11);
    *(v0 + 816) = 34;
    *(v0 + 824) = 0xE100000000000000;
    MEMORY[0x1CCAA7330](v13, v15);

    MEMORY[0x1CCAA7330](34, 0xE100000000000000);
    v431 = *(v0 + 824);
    v432 = *(v0 + 816);
  }

  v17 = v0;
  v18 = [*(v0 + 1312) title];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1CAD4DF94();
    v418 = v21;
    v424 = v20;
  }

  else
  {
    v22 = *(v0 + 1032);
    v23 = *(v0 + 1016);
    v24 = *(v0 + 992);
    sub_1CAB23A9C(v22, v17[127], &qword_1EC468150);

    v418 = *(v23 + 16);
    v424 = *(v23 + 8);
    sub_1CAB21B68(v23 + *(v24 + 80), &qword_1EC465450);
  }

  v25 = [v17[164] joinMethods];
  v26 = sub_1CAD4E214();

  if (v26 >> 62)
  {
    v27 = sub_1CAD4E604();
    v473 = v17;
    if (v27)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v473 = v17;
    if (v27)
    {
LABEL_9:
      v28 = v26;
      v17[106] = MEMORY[0x1E69E7CC0];
      v413 = v17 + 106;
      sub_1CACB9FD8(0, v27 & ~(v27 >> 63), 0);
      if (v27 < 0)
      {
        __break(1u);
        goto LABEL_84;
      }

      v29 = 0;
      v30 = v17[106];
      v31 = v28;
      v439 = v28 & 0xC000000000000001;
      v448 = v27;
      v454 = v28;
      do
      {
        if (v439)
        {
          v32 = MEMORY[0x1CCAA7940](v29, v31);
        }

        else
        {
          v32 = *(v31 + 8 * v29 + 32);
        }

        v33 = v32;
        v34 = *(v17[131] + 56);
        v465 = *(v17[114] + 20);
        v468 = v17[116];
        v34(v468 + v465, 1, 1, v17[130]);
        v35 = [v33 title];
        if (v35)
        {
          v36 = v35;
          v37 = sub_1CAD4DF94();
          v39 = v38;
        }

        else
        {
          v37 = 0;
          v39 = 0;
        }

        v40 = v473[130];
        v41 = v473[122];
        v462 = v473[117];
        v42 = v473[116];
        v43 = v473[114];
        *v42 = v37;
        v42[1] = v39;
        v44 = [v33 URL];
        sub_1CAD4BFC4();

        v45 = v40;
        v17 = v473;
        v34(v41, 0, 1, v45);
        sub_1CABD4E34(v41, v468 + v465);
        *(v42 + *(v43 + 24)) = [v33 isBroadcast];
        sub_1CAD1B670(v42, v462, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);

        sub_1CAD1AC00(v42, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
        v473[106] = v30;
        v47 = *(v30 + 16);
        v46 = *(v30 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1CACB9FD8(v46 > 1, v47 + 1, 1);
          v30 = *v413;
        }

        v48 = v473[117];
        v49 = v473[115];
        ++v29;
        *(v30 + 16) = v47 + 1;
        sub_1CAD1AB98(v48, v30 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v47, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
        v31 = v454;
      }

      while (v448 != v29);

      goto LABEL_23;
    }
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v50 = [v17[164] conferenceDetails];
  if (v50)
  {
    v51 = v50;
    v52 = sub_1CAD4DF94();
    v466 = v53;
    v469 = v52;
  }

  else
  {
    v466 = 0;
    v469 = 0;
  }

  v54 = [v17[164] serializationBlockTitle];
  if (v54)
  {
    v55 = v54;
    v463 = sub_1CAD4DF94();
    v455 = v56;
  }

  else
  {
    v463 = 0;
    v455 = 0;
  }

  v57 = v17[164];
  v58 = [v57 isWritable];
  v59 = [v57 source];
  v60 = [v57 firstPhoneNumber];
  v471 = v30;
  if (v60)
  {
    v61 = v60;
    sub_1CAD4BFC4();

    v62 = 0;
  }

  else
  {
    v62 = 1;
  }

  v63 = v17[164];
  v64 = *(v17[131] + 56);
  v65 = 1;
  v64(v17[121], v62, 1, v17[130]);
  v66 = [v63 urlWithAllowedScheme];
  v408 = v59;
  if (v66)
  {
    v67 = v66;
    sub_1CAD4BFC4();

    v65 = 0;
  }

  v68 = v17[148];
  v440 = v17[147];
  v69 = v17[134];
  v70 = v473[130];
  v71 = v473[127];
  v72 = v473[125];
  v398 = v473[124];
  v403 = v69;
  v391 = v473[121];
  v394 = v473[129];
  v73 = v473[120];
  v74 = v473[119];
  v75 = v473[118];
  v64(v73, v65, 1, v70);
  v76 = *(v75 + 40);
  v64(v74 + v76, 1, 1, v70);
  v77 = *(v75 + 44);
  v64(v74 + v77, 1, 1, v70);
  *v74 = v424;
  *(v74 + 8) = v418;
  *(v74 + 16) = v471;
  *(v74 + 24) = v469;
  *(v74 + 32) = v466;
  *(v74 + 40) = v463;
  *(v74 + 48) = v455;
  *(v74 + 56) = v58;
  *(v74 + 64) = v408;
  sub_1CABD4E34(v391, v74 + v76);
  sub_1CABD4E34(v73, v74 + v77);
  sub_1CAB23A9C(v394, v71, &qword_1EC468150);

  v78 = *(v71 + 8);
  v79 = *(v71 + 16);
  v464 = *(v398 + 80);
  sub_1CAB23A9C(v394, v72, &qword_1EC468150);
  v80 = *v72;

  v81 = *(v398 + 80);
  v82 = *(v403 + 32);
  sub_1CAD1B670(v74, &v68[v82], type metadata accessor for EventVirtualConferenceModelObject);
  v83 = type metadata accessor for LocationModelObject(0);
  swift_storeEnumTagMultiPayload();
  v467 = *(*(v83 - 8) + 56);
  v470 = v83;
  v467(&v68[v82], 0, 1, v83);
  *v68 = v78;
  *(v68 + 1) = v79;
  *(v68 + 2) = v432;
  *(v68 + 3) = v431;
  *(v68 + 5) = 0;
  *(v68 + 6) = 0;
  *(v68 + 4) = v80;
  v84 = v72 + v81;
  i = v473;
  sub_1CAB21B68(v84, &qword_1EC465450);
  sub_1CAB21B68(v71 + v464, &qword_1EC465450);
  sub_1CAD1B670(v68, v440, type metadata accessor for LocationSearchResult);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v431 = v473[163];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_82;
  }

  while (1)
  {
    v88 = v431[2];
    v87 = v431[3];
    if (v88 >= v87 >> 1)
    {
      v431 = sub_1CAD353C4(v87 > 1, v88 + 1, 1, v431);
    }

    v89 = *(i + 1312);
    v90 = *(i + 1184);
    v91 = *(i + 1176);
    v92 = *(i + 1080);
    v93 = *(i + 1064);
    v94 = v473[131];
    v7 = v473[130];
    v95 = v473[129];
    v96 = v473[119];

    sub_1CAD1AC00(v90, type metadata accessor for LocationSearchResult);
    sub_1CAB21B68(v95, &qword_1EC468150);
    (*(v94 + 8))(v93, v7);
    v17 = v473;
    v431[2] = v88 + 1;
    sub_1CAD1AB98(v91, v431 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v88, type metadata accessor for LocationSearchResult);
    sub_1CAD1AC00(v96, type metadata accessor for EventVirtualConferenceModelObject);
    for (i = v473[165]; i != v473[162]; i = v473[165])
    {
      v473[163] = v431;
      v102 = v473[161];
      if ((v102 & 0xC000000000000001) != 0)
      {
        v103 = MEMORY[0x1CCAA7940](i);
      }

      else
      {
        if (i >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_81;
        }

        v103 = *(v102 + 8 * i + 32);
      }

      v104 = v103;
      v473[164] = v103;
      v473[165] = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_80;
      }

      v105 = [v103 joinMethods];
      v473[166] = sub_1CABD4070(0, &qword_1EC464E70);
      v7 = sub_1CAD4E214();

      if (v7 >> 62)
      {
        v106 = sub_1CAD4E604();
        if (v106)
        {
LABEL_53:
          if ((v7 & 0xC000000000000001) == 0)
          {
            if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v107 = *(v7 + 32);
LABEL_56:
              v108 = v107;
              v109 = v473[133];
              v110 = v473[132];
              v111 = v473[131];
              v112 = v473[130];
              v113 = v473[128];

              v114 = [v108 URL];

              sub_1CAD4BFC4();
              (*(v111 + 32))(v109, v110, v112);
              v115 = objc_opt_self();
              v116 = sub_1CAD4BFB4();
              v473[167] = v116;
              v473[2] = v473;
              v473[7] = v113;
              v473[3] = sub_1CAD1636C;
              v117 = swift_continuation_init();
              v473[93] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468180);
              v473[90] = v117;
              v473[86] = MEMORY[0x1E69E9820];
              v473[87] = 1107296256;
              v473[88] = sub_1CAD1954C;
              v473[89] = &block_descriptor_7;
              [v115 displayDetailsForURL:v116 completionHandler:?];
              v106 = (v473 + 2);
            }

            else
            {
              __break(1u);
            }

            return MEMORY[0x1EEE6DEC8](v106);
          }

          v107 = MEMORY[0x1CCAA7940](0, v7);
          goto LABEL_56;
        }
      }

      else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }
    }

    if (v431[2])
    {
      if (qword_1EC462BF8 != -1)
      {
LABEL_84:
        swift_once();
      }

      v88 = qword_1EC47DA28;
      v97 = unk_1EC47DA30;

      v98 = sub_1CAD355C8(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v100 = *(v98 + 2);
      v99 = *(v98 + 3);
      if (v100 >= v99 >> 1)
      {
        v98 = sub_1CAD355C8((v99 > 1), v100 + 1, 1, v98);
      }

      *(v98 + 2) = v100 + 1;
      v390 = v98;
      v101 = &v98[24 * v100];
      *(v101 + 4) = v88;
      *(v101 + 5) = v97;
      *(v101 + 6) = v431;
    }

    else
    {
      v390 = MEMORY[0x1E69E7CC0];
    }

    v118 = [v17[154] recentsSearchResults];
    if (!v118)
    {
      break;
    }

    v119 = v118;
    sub_1CABD4070(0, &qword_1EC468170);
    v120 = sub_1CAD4E214();

    if (v120 >> 62)
    {
      i = sub_1CAD4E604();
      if (!i)
      {
LABEL_86:
        v122 = MEMORY[0x1E69E7CC0];
LABEL_87:

        if (v122[2])
        {
          if (qword_1EC462BD0 != -1)
          {
            swift_once();
          }

          v88 = qword_1EC47D9D8;
          v136 = unk_1EC47D9E0;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v137 = v390;
          }

          else
          {
            v137 = sub_1CAD355C8(0, *(v390 + 2) + 1, 1, v390);
          }

          v139 = *(v137 + 2);
          v138 = *(v137 + 3);
          if (v139 >= v138 >> 1)
          {
            v137 = sub_1CAD355C8((v138 > 1), v139 + 1, 1, v137);
          }

          *(v137 + 2) = v139 + 1;
          v390 = v137;
          v140 = &v137[24 * v139];
          *(v140 + 4) = v88;
          *(v140 + 5) = v136;
          *(v140 + 6) = v122;
        }

        else
        {
        }

        break;
      }
    }

    else
    {
      i = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!i)
      {
        goto LABEL_86;
      }
    }

    v121 = 0;
    v441 = v17[135];
    v7 = v441 + 48;
    v122 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v120 & 0xC000000000000001) != 0)
      {
        v123 = MEMORY[0x1CCAA7940](v121, v120);
      }

      else
      {
        if (v121 >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_79;
        }

        v123 = *(v120 + 8 * v121 + 32);
      }

      v124 = v123;
      v88 = v121 + 1;
      if (__OFADD__(v121, 1))
      {
        break;
      }

      v125 = v473[151];
      v126 = v473[134];
      v127 = v473[107];
      *&v486 = v123;
      sub_1CAD19750(&v486, v127, v125);

      v128 = v125;
      v17 = v473;
      v129 = (*v7)(v128, 1, v126);
      v130 = v473[151];
      if (v129 == 1)
      {
        sub_1CAB21B68(v130, &qword_1EC467E38);
      }

      else
      {
        v131 = v473[146];
        v132 = v473[145];
        sub_1CAD1AB98(v130, v131, type metadata accessor for LocationSearchResult);
        sub_1CAD1AB98(v131, v132, type metadata accessor for LocationSearchResult);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = sub_1CAD353C4(0, v122[2] + 1, 1, v122);
        }

        v134 = v122[2];
        v133 = v122[3];
        if (v134 >= v133 >> 1)
        {
          v122 = sub_1CAD353C4(v133 > 1, v134 + 1, 1, v122);
        }

        v135 = v473[145];
        v122[2] = v134 + 1;
        sub_1CAD1AB98(v135, v122 + ((*(v441 + 80) + 32) & ~*(v441 + 80)) + *(v441 + 72) * v134, type metadata accessor for LocationSearchResult);
      }

      ++v121;
      if (v88 == i)
      {
        goto LABEL_87;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    v431 = sub_1CAD353C4(0, v431[2] + 1, 1, v431);
  }

  v141 = [v17[154] conferenceRoomSearchResults];
  v142 = &selRef_isNew;
  if (!v141)
  {
    goto LABEL_136;
  }

  v143 = v141;
  sub_1CABD4070(0, &qword_1EC468168);
  v88 = sub_1CAD4E214();

  if (v88 >> 62)
  {
    goto LABEL_126;
  }

  for (j = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1CAD4E604())
  {
    v145 = 0;
    v409 = v17[143];
    v404 = v17[135];
    v146 = v88 & 0xC000000000000001;
    v147 = v88 & 0xFFFFFFFFFFFFFF8;
    v7 = MEMORY[0x1E69E7CC0];
    v392 = v17[134];
    v395 = v88 & 0xFFFFFFFFFFFFFF8;
    v414 = j;
    v419 = v88;
    v399 = v88 & 0xC000000000000001;
    while (1)
    {
      if (v146)
      {
        v148 = MEMORY[0x1CCAA7940](v145, v88);
      }

      else
      {
        if (v145 >= *(v147 + 16))
        {
          goto LABEL_125;
        }

        v148 = *(v88 + 8 * v145 + 32);
      }

      v149 = v148;
      v150 = v145 + 1;
      if (__OFADD__(v145, 1))
      {
        break;
      }

      v151 = [v148 v142[93]];
      if (v151)
      {
        v152 = v151;
        v153 = [v152 preferredAddress];
        if (v153)
        {
          v154 = v153;
          v155 = sub_1CAD4DF94();
          v157 = v156;

          v158 = [v152 displayName];
          if (v158)
          {
            v159 = v158;
            v160 = sub_1CAD4DF94();
            v433 = v161;
            v442 = v160;
          }

          else
          {
            v433 = 0;
            v442 = 0;
          }

          v162 = [v152 firstName];
          if (v162)
          {
            v163 = v162;
            v164 = sub_1CAD4DF94();
            v166 = v165;
          }

          else
          {
            v164 = 0;
            v166 = 0;
          }

          v456 = v7;
          v167 = [v152 lastName];
          if (v167)
          {
            v168 = v167;
            v169 = sub_1CAD4DF94();
            v171 = v170;
          }

          else
          {

            v169 = 0;
            v171 = 0;
          }

          v425 = v473[144];
          v172 = v473[143];
          v473[70] = v442;
          v473[71] = v433;
          v473[72] = v164;
          v473[73] = v166;
          v473[74] = v169;
          v473[75] = v171;
          v473[76] = v155;
          v473[77] = v157;
          v473[62] = v442;
          v473[63] = v433;
          v473[64] = v164;
          v473[65] = v166;
          v473[66] = v169;
          v473[67] = v171;
          v473[68] = v155;
          v473[69] = v157;
          sub_1CABC1A50((v473 + 70), (v473 + 78));
          sub_1CABC1AFC((v473 + 62));
          v173 = v473[70];
          v174 = v473[71];
          v175 = *(v473 + 37);
          v486 = *(v473 + 36);
          v487 = v175;
          v488 = *(v473 + 38);
          v176 = [v149 supportsAvailability];
          v177 = [v149 availabilityRequestInProgress];
          v178 = [v149 availability];

          v179 = v172 + *(v392 + 32);
          *v179 = v173;
          *(v179 + 1) = v174;
          v180 = v487;
          *(v179 + 1) = v486;
          *(v179 + 2) = v180;
          *(v179 + 3) = v488;
          v179[64] = v176;
          v179[65] = v177;
          *(v179 + 9) = v178;
          swift_storeEnumTagMultiPayload();
          v467(v179, 0, 1, v470);
          *v172 = v173;
          v409[1] = v174;
          *(v409 + 1) = 0u;
          *(v409 + 2) = 0u;
          v409[6] = 0;
          sub_1CAD1AB98(v172, v425, type metadata accessor for LocationSearchResult);

          v7 = v456;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1CAD353C4(0, v456[2] + 1, 1, v456);
          }

          v142 = &selRef_isNew;
          v147 = v395;
          v146 = v399;
          v150 = v145 + 1;
          v182 = *(v7 + 16);
          v181 = *(v7 + 24);
          v17 = v473;
          if (v182 >= v181 >> 1)
          {
            v7 = sub_1CAD353C4(v181 > 1, v182 + 1, 1, v7);
          }

          v183 = v473[144];
          *(v7 + 16) = v182 + 1;
          sub_1CAD1AB98(v183, v7 + ((*(v404 + 80) + 32) & ~*(v404 + 80)) + *(v404 + 72) * v182, type metadata accessor for LocationSearchResult);
          j = v414;
          v88 = v419;
        }

        else
        {

          v17 = v473;
        }
      }

      else
      {
      }

      ++v145;
      if (v150 == j)
      {
        goto LABEL_128;
      }
    }

    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    ;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_128:

  if (*(v7 + 16))
  {
    if (qword_1EC462BD8 == -1)
    {
      goto LABEL_130;
    }

    goto LABEL_272;
  }

LABEL_136:
  v189 = [v17[154] contactsSearchResults];
  if (v189)
  {
    v190 = v189;
    sub_1CABD4070(0, &qword_1EC468158);
    v88 = sub_1CAD4E214();

    if (!(v88 >> 62))
    {
      v191 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_139;
    }

    goto LABEL_224;
  }

  while (1)
  {
    while (1)
    {
      v474 = MEMORY[0x1E69E7CC0];
      v213 = [v17[154] locationFromMapsURL];
      if (v213)
      {
        v214 = v213;
        v215 = v17[141];
        v216 = v17[134];
        v217 = [v213 v142[93]];
        *&v477 = &protocol witness table for EKLocationModelWrapper;
        *(&v476 + 1) = &type metadata for EKLocationModelWrapper;
        *&v475 = v217;
        EventLocationModelObject.init(_:)(&v475, &v486);
        v218 = v495;
        *(v17 + 17) = v494;
        *(v17 + 18) = v218;
        *(v17 + 19) = v496;
        v219 = v491;
        *(v17 + 13) = v490;
        *(v17 + 14) = v219;
        v220 = v493;
        *(v17 + 15) = v492;
        *(v17 + 16) = v220;
        v221 = v487;
        *(v17 + 9) = v486;
        *(v17 + 10) = v221;
        v222 = v489;
        *(v17 + 11) = v488;
        *(v17 + 12) = v222;
        v223 = v17[19];
        v224 = v17[23];
        v457 = v17[22];
        v450 = v17[18];

        v225 = sub_1CABC17B0();
        v226 = (v215 + *(v216 + 32));
        v228 = *(v17 + 18);
        v227 = *(v17 + 19);
        v229 = *(v17 + 17);
        *(v226 + 7) = *(v17 + 16);
        *(v226 + 8) = v229;
        *(v226 + 9) = v228;
        *(v226 + 10) = v227;
        v231 = *(v17 + 14);
        v230 = *(v17 + 15);
        v232 = *(v17 + 13);
        *(v226 + 3) = *(v17 + 12);
        *(v226 + 4) = v232;
        *(v226 + 5) = v231;
        *(v226 + 6) = v230;
        v234 = *(v17 + 10);
        v233 = *(v17 + 11);
        *v226 = *(v17 + 9);
        *(v226 + 1) = v234;
        *(v226 + 2) = v233;
        swift_storeEnumTagMultiPayload();
        v467(v226, 0, 1, v470);
        *&v236 = v450;
        *&v235 = v457;
        *(&v236 + 1) = v223;
        *(&v235 + 1) = v224;
        *v215 = v236;
        *(v215 + 16) = v235;
        *(v215 + 40) = 0;
        *(v215 + 48) = 0;
        *(v215 + 32) = v225;
        sub_1CABD3C1C((v17 + 18), (v17 + 40));
        v237 = sub_1CAD353C4(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v88 = v237[2];
        v238 = v237[3];
        if (v88 >= v238 >> 1)
        {
          v237 = sub_1CAD353C4(v238 > 1, v88 + 1, 1, v237);
        }

        v239 = v17[141];
        v7 = v17[135];

        sub_1CABD3C78((v17 + 18));
        v237[2] = v88 + 1;
        sub_1CAD1AB98(v239, v237 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v88, type metadata accessor for LocationSearchResult);
        v474 = v237;
      }

      v240 = [v17[154] eventsSearchResults];
      if (!v240)
      {
        break;
      }

      v241 = v240;
      sub_1CABD4070(0, &qword_1EC468160);
      v88 = sub_1CAD4E214();

      if (v88 >> 62)
      {
        v242 = sub_1CAD4E604();
      }

      else
      {
        v242 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v242)
      {

        v245 = MEMORY[0x1E69E7CC0];
LABEL_186:
        sub_1CAD0F4F8(v245, sub_1CAD353C4, type metadata accessor for LocationSearchResult);
        break;
      }

      v483 = MEMORY[0x1E69E7CC0];
      v192 = &v483;
      sub_1CACBA39C(0, v242 & ~(v242 >> 63), 0);
      if ((v242 & 0x8000000000000000) == 0)
      {
        v243 = 0;
        v244 = v88;
        v415 = (v88 & 0xC000000000000001);
        v421 = v17[135];
        v410 = (v242 - 1);
        v400 = v17[140];
        v405 = v17[134];
        v245 = v483;
        v246 = &selRef_setDateStyle_;
        v427 = v88;
        while (1)
        {
          v458 = v243;
          v444 = v245;
          if (v415)
          {
            v247 = MEMORY[0x1CCAA7940]();
          }

          else
          {
            v247 = *(v244 + 8 * v243 + 32);
          }

          v248 = v247;
          v249 = [v247 v142[93]];
          v499 = &protocol witness table for EKLocationModelWrapper;
          v498 = &type metadata for EKLocationModelWrapper;
          v497[0] = v249;
          EventLocationModelObject.init(_:)(v497, &v486);
          v250 = v486;
          v484 = v487;
          v252 = *(&v488 + 1);
          v251 = v488;
          v479 = v493;
          v480 = v494;
          v481 = v495;
          v482 = v496;
          v475 = v489;
          v476 = v490;
          v477 = v491;
          v478 = v492;

          v253 = v142[93];

          v254 = [v248 v253];
          v255 = [v254 mapKitHandle];

          v435 = v251;
          if (v255)
          {
            v256 = sub_1CAD4C024();
            v258 = v257;

            v259 = objc_opt_self();
            v260 = sub_1CAD4C014();
            v261 = [v259 mapItemForMapKitHandle_];

            if (v261)
            {
              v393 = v256;
              v396 = v258;
              v262 = objc_opt_self();
              v263 = objc_opt_self();
              v264 = [v263 mainScreen];
              v265 = v246;
              v266 = [v264 v246[422]];

              [v266 displayScale];
              v268 = v267;

              v269 = [v262 imageForMapItem:v261 forScale:0 fallbackToBundleIcon:v268];
              if (v269)
              {
                v255 = v269;
                v270 = v252;
              }

              else
              {
                v270 = v252;
                v272 = [objc_opt_self() markerStyleAttributes];
                v273 = [v263 mainScreen];
                v274 = [v273 v265 + 1016];

                [v274 displayScale];
                v276 = v275;

                v255 = [v262 imageForStyle:v272 size:4 forScale:0 format:v276];
              }

              sub_1CABB8C1C(v393, v396);
            }

            else
            {
              v270 = v252;

              sub_1CABB8C1C(v256, v258);
              v255 = 0;
            }

            v271 = 0x1E839F000;
          }

          else
          {
            v270 = v252;
            v271 = v142;
          }

          v277 = v473[140];
          v278 = v277 + *(v405 + 32);
          v142 = v250;
          *v278 = v250;
          *(v278 + 1) = v484;
          *(v278 + 4) = v435;
          *(v278 + 5) = v270;
          v279 = v480;
          *(v278 + 7) = v479;
          *(v278 + 8) = v279;
          v280 = v482;
          *(v278 + 9) = v481;
          *(v278 + 10) = v280;
          v281 = v476;
          *(v278 + 3) = v475;
          *(v278 + 4) = v281;
          v282 = v478;
          *(v278 + 5) = v477;
          *(v278 + 6) = v282;
          v7 = v470;
          swift_storeEnumTagMultiPayload();
          v467(v278, 0, 1, v470);
          *v277 = v250;
          v400[1] = *(&v250 + 1);
          v400[2] = v435;
          v400[3] = v270;
          v400[4] = v255;
          v400[5] = 0;
          v400[6] = 0;
          v245 = v444;
          v483 = v444;
          v88 = *(v444 + 16);
          v283 = *(v444 + 24);
          if (v88 >= v283 >> 1)
          {
            sub_1CACBA39C(v283 > 1, v88 + 1, 1);
            v245 = v483;
          }

          v284 = v473[140];
          *(v245 + 16) = v88 + 1;
          sub_1CAD1AB98(v284, v245 + ((*(v421 + 80) + 32) & ~*(v421 + 80)) + v421[9] * v88, type metadata accessor for LocationSearchResult);
          if (v410 == v458)
          {
            break;
          }

          v243 = v458 + 1;
          v244 = v427;
          v246 = &selRef_setDateStyle_;
          v142 = v271;
        }

        v17 = v473;

        goto LABEL_186;
      }

LABEL_268:
      __break(1u);
LABEL_269:
      swift_once();
LABEL_151:
      v88 = qword_1EC47D9F8;
      v208 = unk_1EC47DA00;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v209 = v390;
      }

      else
      {
        v209 = sub_1CAD355C8(0, *(v390 + 2) + 1, 1, v390);
      }

      v211 = *(v209 + 2);
      v210 = *(v209 + 3);
      if (v211 >= v210 >> 1)
      {
        v209 = sub_1CAD355C8((v210 > 1), v211 + 1, 1, v209);
      }

      *(v209 + 2) = v211 + 1;
      v390 = v209;
      v212 = &v209[24 * v211];
      *(v212 + 4) = v88;
      *(v212 + 5) = v208;
      *(v212 + 6) = v192;
    }

    v285 = [v17[154] frequentsSearchResults];
    if (v285)
    {
      v286 = v285;
      sub_1CABD4070(0, &qword_1EC468158);
      v88 = sub_1CAD4E214();

      if (v88 >> 62)
      {
        v287 = sub_1CAD4E604();
      }

      else
      {
        v287 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v287)
      {
        v483 = MEMORY[0x1E69E7CC0];
        sub_1CACBA39C(0, v287 & ~(v287 >> 63), 0);
        if (v287 < 0)
        {
          __break(1u);
LABEL_272:
          swift_once();
LABEL_130:
          v88 = qword_1EC47D9E8;
          v184 = unk_1EC47D9F0;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v185 = v390;
          }

          else
          {
            v185 = sub_1CAD355C8(0, *(v390 + 2) + 1, 1, v390);
          }

          v187 = *(v185 + 2);
          v186 = *(v185 + 3);
          if (v187 >= v186 >> 1)
          {
            v185 = sub_1CAD355C8((v186 > 1), v187 + 1, 1, v185);
          }

          *(v185 + 2) = v187 + 1;
          v390 = v185;
          v188 = &v185[24 * v187];
          *(v188 + 4) = v88;
          *(v188 + 5) = v184;
          *(v188 + 6) = v7;
          goto LABEL_136;
        }

        v288 = v17;
        v289 = v17[139];
        v436 = v288[135];
        v428 = v288[134];
        v290 = v483;
        v422 = objc_opt_self();
        v416 = objc_opt_self();
        v411 = objc_opt_self();
        v291 = 0;
        v292 = v88;
        v401 = v287 - 1;
        v406 = v88 & 0xC000000000000001;
        for (k = v88; ; v292 = k)
        {
          v459 = v290;
          v451 = v291;
          if (v406)
          {
            v293 = MEMORY[0x1CCAA7940]();
          }

          else
          {
            v293 = *(v292 + 8 * v291 + 32);
          }

          v142 = v473[139];
          v499 = &protocol witness table for EKLocationModelWrapper;
          v498 = &type metadata for EKLocationModelWrapper;
          v497[0] = v293;
          v294 = v293;
          EventLocationModelObject.init(_:)(v497, &v486);
          v295 = *(&v486 + 1);
          v296 = v486;
          v484 = v487;
          v297 = *(&v488 + 1);
          v298 = v488;
          v479 = v493;
          v480 = v494;
          v481 = v495;
          v482 = v496;
          v475 = v489;
          v476 = v490;
          v477 = v491;
          v478 = v492;

          v299 = [v422 markerStyleAttributes];
          v300 = [v411 mainScreen];
          v301 = [v300 traitCollection];

          [v301 displayScale];
          v303 = v302;

          v7 = [v416 imageForStyle:v299 size:4 forScale:0 format:v303];
          v304 = v142 + *(v428 + 32);
          *v304 = __PAIR128__(v295, v296);
          *(v304 + 1) = v484;
          *(v304 + 2) = __PAIR128__(v297, v298);
          v305 = v480;
          *(v304 + 7) = v479;
          *(v304 + 8) = v305;
          v306 = v482;
          *(v304 + 9) = v481;
          *(v304 + 10) = v306;
          v307 = v476;
          *(v304 + 3) = v475;
          *(v304 + 4) = v307;
          v308 = v478;
          *(v304 + 5) = v477;
          *(v304 + 6) = v308;
          swift_storeEnumTagMultiPayload();
          v467(v304, 0, 1, v470);
          *v142 = v296;
          *(v289 + 8) = v295;
          *(v289 + 16) = __PAIR128__(v297, v298);
          *(v289 + 32) = v7;
          *(v289 + 40) = 0;
          *(v289 + 48) = 0;
          v290 = v459;
          v483 = v459;
          v88 = *(v459 + 16);
          v309 = *(v459 + 24);
          if (v88 >= v309 >> 1)
          {
            sub_1CACBA39C(v309 > 1, v88 + 1, 1);
            v290 = v483;
          }

          v310 = v473[139];
          *(v290 + 16) = v88 + 1;
          sub_1CAD1AB98(v310, v290 + ((*(v436 + 80) + 32) & ~*(v436 + 80)) + *(v436 + 72) * v88, type metadata accessor for LocationSearchResult);
          if (v401 == v451)
          {
            break;
          }

          v291 = v451 + 1;
        }

        v17 = v473;
      }

      else
      {

        v290 = MEMORY[0x1E69E7CC0];
      }

      sub_1CAD0F4F8(v290, sub_1CAD353C4, type metadata accessor for LocationSearchResult);
    }

    v311 = [v17[154] mapCompletionSearchResults];
    if (!v311)
    {
      goto LABEL_230;
    }

    v312 = v311;
    sub_1CABD4070(0, &qword_1EC468118);
    v313 = sub_1CAD4E214();

    if (!(v313 >> 62))
    {
      v314 = *((v313 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v314)
      {
        break;
      }

      goto LABEL_206;
    }

    v314 = sub_1CAD4E604();
    if (!v314)
    {
      break;
    }

LABEL_206:
    v315 = 0;
    v316 = v17[137];
    v417 = (v313 & 0xFFFFFFFFFFFFFF8);
    v423 = (v313 & 0xC000000000000001);
    v460 = MEMORY[0x1E69E7CC0];
    v397 = v17[134];
    v402 = v17[135];
    v412 = v313;
    v407 = v314;
    while (1)
    {
      if (v423)
      {
        v317 = MEMORY[0x1CCAA7940](v315, v313);
      }

      else
      {
        if (v315 >= v417[2])
        {
          goto LABEL_223;
        }

        v317 = *(v313 + 8 * v315 + 32);
      }

      v318 = v317;
      v142 = (v315 + 1);
      if (__OFADD__(v315, 1))
      {
        break;
      }

      v319 = [v317 mapItem];
      if (v319)
      {
        v7 = v319;
        v320 = [v318 title];
        v321 = sub_1CAD4DF94();
        v446 = v322;
        v452 = v321;

        v323 = [v318 subtitle];
        v437 = sub_1CAD4DF94();
        v429 = v324;

        v325 = objc_opt_self();
        v326 = objc_opt_self();
        v327 = [v326 mainScreen];
        v328 = [v327 traitCollection];

        [v328 displayScale];
        v330 = v329;

        v331 = [v325 imageForMapItem:v7 forScale:0 fallbackToBundleIcon:v330];
        if (!v331)
        {
          v332 = [objc_opt_self() markerStyleAttributes];
          v333 = [v326 mainScreen];
          v334 = [v333 traitCollection];

          [v334 displayScale];
          v336 = v335;

          v331 = [v325 imageForStyle:v332 size:4 forScale:0 format:v336];
        }

        v17 = v473;
        v337 = v473[138];
        v338 = v473[137];

        v339 = *(v397 + 32);
        *(v338 + v339) = v318;
        swift_storeEnumTagMultiPayload();
        v467(v338 + v339, 0, 1, v470);
        *v338 = v452;
        v316[1] = v446;
        v316[2] = v437;
        v316[3] = v429;
        v316[4] = v331;
        v316[5] = 0;
        v316[6] = 0;
        sub_1CAD1AB98(v338, v337, type metadata accessor for LocationSearchResult);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v460 = sub_1CAD353C4(0, v460[2] + 1, 1, v460);
        }

        v313 = v412;
        v314 = v407;
        v88 = v460[2];
        v340 = v460[3];
        if (v88 >= v340 >> 1)
        {
          v460 = sub_1CAD353C4(v340 > 1, v88 + 1, 1, v460);
        }

        v341 = v473[138];
        v460[2] = v88 + 1;
        sub_1CAD1AB98(v341, v460 + ((*(v402 + 80) + 32) & ~*(v402 + 80)) + *(v402 + 72) * v88, type metadata accessor for LocationSearchResult);
      }

      else
      {
      }

      ++v315;
      if (v142 == v314)
      {
        goto LABEL_229;
      }
    }

    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    v191 = sub_1CAD4E604();
LABEL_139:
    if (!v191)
    {

      v192 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_150;
      }

      goto LABEL_157;
    }

    v483 = MEMORY[0x1E69E7CC0];
    v192 = &v483;
    sub_1CACBA39C(0, v191 & ~(v191 >> 63), 0);
    if (v191 < 0)
    {
      __break(1u);
      goto LABEL_268;
    }

    v193 = 0;
    v194 = v17[142];
    v434 = v17[135];
    v192 = v483;
    v195 = v88;
    v420 = (v88 & 0xC000000000000001);
    v426 = v17[134];
    for (m = v88; ; v195 = m)
    {
      v449 = v193;
      if (v420)
      {
        v196 = MEMORY[0x1CCAA7940]();
      }

      else
      {
        v196 = *(v195 + 8 * v193 + 32);
      }

      v197 = v17[142];
      v499 = &protocol witness table for EKLocationModelWrapper;
      v498 = &type metadata for EKLocationModelWrapper;
      v497[0] = v196;
      v198 = v196;
      EventLocationModelObject.init(_:)(v497, &v486);
      v199 = v486;
      v484 = v487;
      v485 = v488;
      v7 = *(&v489 + 1);
      v200 = v489;
      v479 = v494;
      v480 = v495;
      v481 = v496;
      v475 = v490;
      v476 = v491;
      v477 = v492;
      v478 = v493;

      v201 = v197 + *(v426 + 32);
      *v201 = v199;
      v202 = v485;
      *(v201 + 1) = v484;
      *(v201 + 2) = v202;
      *(v201 + 3) = __PAIR128__(v7, v200);
      v203 = v480;
      *(v201 + 8) = v479;
      *(v201 + 9) = v203;
      *(v201 + 10) = v481;
      v204 = v476;
      *(v201 + 4) = v475;
      *(v201 + 5) = v204;
      v205 = v478;
      *(v201 + 6) = v477;
      *(v201 + 7) = v205;
      swift_storeEnumTagMultiPayload();
      v467(v201, 0, 1, v470);
      *v197 = v200;
      *(v194 + 8) = v7;
      *(v194 + 16) = v199;
      *(v194 + 32) = xmmword_1CAD68FB0;
      *(v194 + 48) = 0x80000001CAD777A0;
      v483 = v192;
      v88 = v192[2];
      v206 = v192[3];
      if (v88 >= v206 >> 1)
      {
        sub_1CACBA39C(v206 > 1, v88 + 1, 1);
        v192 = v483;
      }

      v207 = v17[142];
      v192[2] = v88 + 1;
      sub_1CAD1AB98(v207, v192 + ((*(v434 + 80) + 32) & ~*(v434 + 80)) + *(v434 + 72) * v88, type metadata accessor for LocationSearchResult);
      if (v191 - 1 == v449)
      {
        break;
      }

      v193 = v449 + 1;
    }

    v142 = &selRef_isNew;
    if (v192[2])
    {
LABEL_150:
      if (qword_1EC462BE0 == -1)
      {
        goto LABEL_151;
      }

      goto LABEL_269;
    }

LABEL_157:
  }

  v460 = MEMORY[0x1E69E7CC0];
LABEL_229:

  sub_1CAD0F4F8(v460, sub_1CAD353C4, type metadata accessor for LocationSearchResult);
LABEL_230:
  if (v474[2])
  {
    if (qword_1EC462BE8 != -1)
    {
      swift_once();
    }

    v343 = qword_1EC47DA08;
    v342 = unk_1EC47DA10;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v344 = v390;
    }

    else
    {
      v344 = sub_1CAD355C8(0, *(v390 + 2) + 1, 1, v390);
    }

    v346 = *(v344 + 2);
    v345 = *(v344 + 3);
    if (v346 >= v345 >> 1)
    {
      v344 = sub_1CAD355C8((v345 > 1), v346 + 1, 1, v344);
    }

    *(v344 + 2) = v346 + 1;
    v390 = v344;
    v347 = &v344[24 * v346];
    *(v347 + 4) = v343;
    *(v347 + 5) = v342;
    *(v347 + 6) = v474;
  }

  v348 = [v17[154] textualSearchResults];
  if (!v348)
  {

    goto LABEL_260;
  }

  v349 = v348;
  sub_1CABD4070(0, &qword_1EC468158);
  v350 = sub_1CAD4E214();

  if (v350 >> 62)
  {
    v351 = sub_1CAD4E604();
  }

  else
  {
    v351 = *((v350 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v351)
  {

    v352 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_252;
    }

    goto LABEL_260;
  }

  v483 = MEMORY[0x1E69E7CC0];
  v352 = &v483;
  sub_1CACBA39C(0, v351 & ~(v351 >> 63), 0);
  if (v351 < 0)
  {
    __break(1u);
LABEL_275:
    swift_once();
LABEL_253:
    v369 = qword_1EC47DA18;
    v368 = qword_1EC47DA20;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v370 = v390;
    }

    else
    {
      v370 = sub_1CAD355C8(0, *(v390 + 2) + 1, 1, v390);
    }

    v372 = *(v370 + 2);
    v371 = *(v370 + 3);
    if (v372 >= v371 >> 1)
    {
      v370 = sub_1CAD355C8((v371 > 1), v372 + 1, 1, v370);
    }

    *(v370 + 2) = v372 + 1;
    v373 = &v370[24 * v372];
    *(v373 + 4) = v369;
    *(v373 + 5) = v368;
    *(v373 + 6) = v352;
    v374 = v370;
  }

  else
  {
    v353 = 0;
    v354 = v17[136];
    v438 = v17[134];
    v447 = v17[135];
    v355 = v350;
    v430 = v350 & 0xC000000000000001;
    v352 = v483;
    for (n = v350; ; v355 = n)
    {
      v461 = v353;
      if (v430)
      {
        v356 = MEMORY[0x1CCAA7940]();
      }

      else
      {
        v356 = *(v355 + 8 * v353 + 32);
      }

      v357 = v17[136];
      v499 = &protocol witness table for EKLocationModelWrapper;
      v498 = &type metadata for EKLocationModelWrapper;
      v497[0] = v356;
      EventLocationModelObject.init(_:)(v497, &v486);
      v358 = v486;
      v484 = v487;
      v359 = v488;
      v479 = v493;
      v480 = v494;
      v481 = v495;
      v482 = v496;
      v475 = v489;
      v476 = v490;
      v477 = v491;
      v478 = v492;
      v360 = v357 + *(v438 + 32);
      *v360 = v486;
      *(v360 + 1) = v484;
      *(v360 + 2) = v359;
      v361 = v480;
      *(v360 + 7) = v479;
      *(v360 + 8) = v361;
      v362 = v482;
      *(v360 + 9) = v481;
      *(v360 + 10) = v362;
      v363 = v476;
      *(v360 + 3) = v475;
      *(v360 + 4) = v363;
      v364 = v478;
      *(v360 + 5) = v477;
      *(v360 + 6) = v364;
      swift_storeEnumTagMultiPayload();
      v467(v360, 0, 1, v470);
      *v357 = v358;
      *(v354 + 8) = *(&v358 + 1);
      *(v354 + 16) = v359;
      *(v354 + 32) = 0;
      *(v354 + 40) = 0;
      *(v354 + 48) = 0;
      v483 = v352;
      v365 = v352[2];
      v366 = v352[3];

      if (v365 >= v366 >> 1)
      {
        sub_1CACBA39C(v366 > 1, v365 + 1, 1);
        v352 = v483;
      }

      v367 = v17[136];
      v352[2] = v365 + 1;
      sub_1CAD1AB98(v367, v352 + ((*(v447 + 80) + 32) & ~*(v447 + 80)) + *(v447 + 72) * v365, type metadata accessor for LocationSearchResult);
      if (v351 - 1 == v461)
      {
        break;
      }

      v353 = v461 + 1;
    }

    if (v352[2])
    {
LABEL_252:
      if (qword_1EC462BF0 == -1)
      {
        goto LABEL_253;
      }

      goto LABEL_275;
    }

LABEL_260:

    v374 = v390;
  }

  v375 = v17[153];
  v376 = v17[113];
  v377 = v17[112];
  v378 = v17[110];
  v379 = v17[109];
  v380 = v17[108];
  v381 = v17;
  v382 = v17[107];
  sub_1CAB23A9C(v375, v376, &qword_1EC467E38);
  *(v376 + *(v379 + 20)) = v374;
  v383 = sub_1CAD4E304();
  (*(*(v383 - 8) + 56))(v380, 1, 1, v383);
  sub_1CAD1B670(v376, v377, type metadata accessor for LocationSearchResults);
  sub_1CAD4E2C4();

  v384 = sub_1CAD4E2B4();
  v385 = (*(v378 + 80) + 40) & ~*(v378 + 80);
  v386 = swift_allocObject();
  v387 = MEMORY[0x1E69E85E0];
  v386[2] = v384;
  v386[3] = v387;
  v386[4] = v382;
  sub_1CAD1AB98(v377, v386 + v385, type metadata accessor for LocationSearchResults);
  sub_1CACA6D34(0, 0, v380, &unk_1CAD69258, v386);

  sub_1CAD1AC00(v376, type metadata accessor for LocationSearchResults);
  sub_1CAB21B68(v375, &qword_1EC467E38);

  v388 = v381[1];

  return v388();
}

uint64_t sub_1CAD194D8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v5 = a2;
  v5[1] = a3;
  v6 = a2;
  v7 = a3;

  return swift_continuation_resume();
}

uint64_t sub_1CAD1954C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468150);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v24 - v14);
  v16 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  *v15 = a2;
  if (a3)
  {
    v17 = sub_1CAD4DF94();
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v15[1] = v17;
  v15[2] = v18;
  v15[3] = a4;
  if (a5)
  {
    sub_1CAD4BFC4();
    v19 = sub_1CAD4BFF4();
    (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  }

  else
  {
    v20 = sub_1CAD4BFF4();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  }

  sub_1CABA62E4(v12, v15 + *(v13 + 80), &qword_1EC465450);
  v21 = *(*(v16 + 64) + 40);
  v22 = a2;
  sub_1CABA62E4(v15, v21, &qword_1EC468150);
  return swift_continuation_resume();
}

uint64_t sub_1CAD19750@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 location];
  if (v6)
  {
    *(&v61 + 1) = &type metadata for EKLocationModelWrapper;
    *&v62 = &protocol witness table for EKLocationModelWrapper;
    *&v60 = v6;
    v7 = v6;
    EventLocationModelObject.init(_:)(&v60, &v49);
    v8 = *(&v49 + 1);
    v47 = v49;
    v68 = v50;
    v9 = v51;
    v64 = v56;
    v65 = v57;
    v66 = v58;
    v67 = v59;
    v60 = v52;
    v61 = v53;
    v62 = v54;
    v63 = v55;

    v10 = [v5 attributes];
    if (v10)
    {
      v11 = v10;
      v12 = objc_opt_self();
      v13 = [objc_opt_self() mainScreen];
      v14 = [v13 traitCollection];

      [v14 displayScale];
      v16 = v15;

      v17 = [v12 imageForStyle:v11 size:3 forScale:0 format:v16];
    }

    else
    {

      v17 = 0;
    }

    v33 = type metadata accessor for LocationSearchResult(0);
    v34 = a3 + *(v33 + 32);
    *v34 = v47;
    *(v34 + 8) = v8;
    *(v34 + 16) = v68;
    *(v34 + 32) = v9;
    v35 = v65;
    *(v34 + 112) = v64;
    *(v34 + 128) = v35;
    v36 = v67;
    *(v34 + 144) = v66;
    *(v34 + 160) = v36;
    v37 = v61;
    *(v34 + 48) = v60;
    *(v34 + 64) = v37;
    v38 = v63;
    *(v34 + 80) = v62;
    *(v34 + 96) = v38;
    v39 = type metadata accessor for LocationModelObject(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v39 - 8) + 56))(v34, 0, 1, v39);
    *&v40 = v47;
    *(&v40 + 1) = v8;
    *a3 = v40;
    *(a3 + 16) = v9;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = v17;
    return (*(*(v33 - 8) + 56))(a3, 0, 1, v33);
  }

  v18 = *(a2 + OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel_source);
  if (!v18)
  {
LABEL_13:
    v42 = type metadata accessor for LocationSearchResult(0);
    return (*(*(v42 - 8) + 56))(a3, 1, 1, v42);
  }

  v19 = v18;
  v20 = [v5 conferenceRoomForSource_];
  if (!v20)
  {

    goto LABEL_13;
  }

  v21 = v20;
  EventConferenceRoomModelObject.init(_:)(v21, &v49);
  v22 = *(&v49 + 1);
  v23 = v49;
  v60 = v50;
  v61 = v51;
  v24 = *(&v52 + 1);
  *&v62 = v52;
  v68 = v53;
  if (!*(&v52 + 1))
  {

    goto LABEL_13;
  }

  v25 = [v5 attributes];
  if (v25)
  {
    v26 = v25;
    v48 = objc_opt_self();
    v27 = v23;
    v28 = [objc_opt_self() mainScreen];
    v29 = [v28 traitCollection];

    v23 = v27;
    [v29 displayScale];
    v31 = v30;

    v32 = [v48 imageForStyle:v26 size:3 forScale:0 format:v31];
  }

  else
  {

    v32 = 0;
  }

  v43 = type metadata accessor for LocationSearchResult(0);
  v44 = a3 + *(v43 + 32);
  *v44 = v23;
  *(v44 + 8) = v22;
  v45 = v61;
  *(v44 + 16) = v60;
  *(v44 + 32) = v45;
  *(v44 + 48) = v62;
  *(v44 + 56) = v24;
  *(v44 + 64) = v68;
  v46 = type metadata accessor for LocationModelObject(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v46 - 8) + 56))(v44, 0, 1, v46);
  *a3 = v23;
  *(a3 + 8) = v22;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = v32;
  return (*(*(v43 - 8) + 56))(a3, 0, 1, v43);
}

uint64_t sub_1CAD19C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E58);
  v5[5] = swift_task_alloc();
  sub_1CAD4E2C4();
  v5[6] = sub_1CAD4E2B4();
  v7 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CAD19D1C, v7, v6);
}

uint64_t sub_1CAD19D1C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  sub_1CAD1B670(v2, v1, type metadata accessor for LocationSearchResults);
  v4 = type metadata accessor for LocationSearchResults(0);
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v0[2] = v3;
  sub_1CAD1AB50(&qword_1EC465790, type metadata accessor for LocationDataModel);
  sub_1CAD4C414();

  sub_1CAB21B68(v1, &qword_1EC467E58);

  v6 = v0[1];

  return v6();
}

id sub_1CAD19EC8(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468060);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v38 - v6;
  v8 = type metadata accessor for LocationModelObject(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v38 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v38 - v16;
  if ((a2 & 1) == 0)
  {
    v20 = type metadata accessor for LocationSearchResult(0);
    sub_1CAB23A9C(a1 + *(v20 + 32), v7, &qword_1EC468060);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      return sub_1CAB21B68(v7, &qword_1EC468060);
    }

    sub_1CAD1AB98(v7, v17, type metadata accessor for LocationModelObject);
    sub_1CAD1B670(v17, v15, type metadata accessor for LocationModelObject);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1CAD1B670(v17, v12, type metadata accessor for LocationModelObject);
        sub_1CAD10154(v12);
        sub_1CAD1AC00(v17, type metadata accessor for LocationModelObject);
        v23 = type metadata accessor for EventVirtualConferenceModelObject;
        v22 = v15;
        return sub_1CAD1AC00(v22, v23);
      }

      if (EnumCaseMultiPayload != 4)
      {
        swift_storeEnumTagMultiPayload();
        sub_1CAD10154(v12);
        goto LABEL_19;
      }

      v24 = *v15;
      [*(v2 + 16) selectVirtualConferenceRoomType_];
      sub_1CAD1B670(v17, v12, type metadata accessor for LocationModelObject);
      sub_1CAD10154(v12);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v25 = *(v15 + 7);
        v26 = *(v15 + 9);
        v46 = *(v15 + 8);
        v47 = v26;
        v27 = *(v15 + 9);
        v48 = *(v15 + 10);
        v28 = *(v15 + 3);
        v29 = *(v15 + 5);
        v42 = *(v15 + 4);
        v43 = v29;
        v30 = *(v15 + 5);
        v31 = *(v15 + 7);
        v44 = *(v15 + 6);
        v45 = v31;
        v32 = *(v15 + 1);
        v39[0] = *v15;
        v39[1] = v32;
        v33 = *(v15 + 3);
        v35 = *v15;
        v34 = *(v15 + 1);
        v40 = *(v15 + 2);
        v41 = v33;
        v38[8] = v46;
        v38[9] = v27;
        v38[10] = *(v15 + 10);
        v38[4] = v42;
        v38[5] = v30;
        v38[6] = v44;
        v38[7] = v25;
        v38[0] = v35;
        v38[1] = v34;
        v36 = *(v2 + 16);
        v38[2] = v40;
        v38[3] = v28;
        v37 = sub_1CAD0F1FC();
        [v36 selectLocation_];

        sub_1CABD3C78(v39);
LABEL_19:
        v23 = type metadata accessor for LocationModelObject;
        v22 = v17;
        return sub_1CAD1AC00(v22, v23);
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_1CAD1AC00(v15, type metadata accessor for LocationModelObject);
        sub_1CAD1B670(v17, v12, type metadata accessor for LocationModelObject);
        sub_1CAD10154(v12);
        v22 = v17;
        v23 = type metadata accessor for LocationModelObject;
        return sub_1CAD1AC00(v22, v23);
      }

      v24 = *v15;
      [*(v2 + 16) selectMapSearchCompletion_];
    }

    goto LABEL_19;
  }

  v18 = *(v2 + 16);

  return [v18 selectCurrentLocation];
}

uint64_t sub_1CAD1A314()
{
  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel__result, &qword_1EC467E58);
  sub_1CAD1AC00(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel__selectedLocationResult, type metadata accessor for LocationModelObject);

  v1 = OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel___observationRegistrar;
  v2 = sub_1CAD4C464();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1CAD1A404()
{
  sub_1CAD1A314();

  return swift_deallocClassInstance();
}

void sub_1CAD1A484()
{
  sub_1CAD1A71C(319, &qword_1EC468038, type metadata accessor for LocationSearchResults, type metadata accessor for LocationSearchState);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LocationModelObject(319);
    if (v1 <= 0x3F)
    {
      sub_1CAD4C464();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1CAD1A668()
{
  sub_1CAD1A71C(319, &qword_1EC468050, type metadata accessor for LocationSearchResult, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1CAD1A7A0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CAD1A71C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1CAD1A7A0()
{
  if (!qword_1EC468058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467EA0);
    v0 = sub_1CAD4E4D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC468058);
    }
  }
}

void sub_1CAD1A83C()
{
  sub_1CABDB2B0();
  if (v0 <= 0x3F)
  {
    sub_1CAD1A90C();
    if (v1 <= 0x3F)
    {
      sub_1CAD1A71C(319, qword_1EC468080, type metadata accessor for LocationModelObject, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CAD1A90C()
{
  if (!qword_1EC468078)
  {
    sub_1CABD4070(255, &qword_1EC4667E8);
    v0 = sub_1CAD4E4D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC468078);
    }
  }
}

void sub_1CAD1A974()
{
  sub_1CABD4070(319, &qword_1EC468118);
  if (v0 <= 0x3F)
  {
    sub_1CAD1AA20();
    if (v1 <= 0x3F)
    {
      sub_1CAD1AA68();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1CAD1AA20()
{
  if (!qword_1EC468120)
  {
    v0 = type metadata accessor for EventVirtualConferenceModelObject(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EC468120);
    }
  }
}

void sub_1CAD1AA68()
{
  if (!qword_1EC468128)
  {
    v0 = sub_1CABD4070(0, &qword_1EC468130);
    if (!v1)
    {
      atomic_store(v0, &qword_1EC468128);
    }
  }
}

uint64_t sub_1CAD1AB50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CAD1AB98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAD1AC00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1CAD1AC60(void *a1, void *a2)
{
  v4 = type metadata accessor for LocationModelObject(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468060);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468140);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_1CAD4E9E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (sub_1CAD4E9E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v31 = v5;
  v18 = a1[4];
  v19 = a2[4];
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    sub_1CABD4070(0, &qword_1EC4667E8);
    v20 = v19;
    v21 = v18;
    v22 = sub_1CAD4E494();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v23 = a1[6];
  v24 = a2[6];
  if (v23)
  {
    if (!v24 || (a1[5] != a2[5] || v23 != v24) && (sub_1CAD4E9E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = *(type metadata accessor for LocationSearchResult(0) + 32);
  v26 = *(v11 + 48);
  sub_1CAB23A9C(a1 + v25, v13, &qword_1EC468060);
  sub_1CAB23A9C(a2 + v25, &v13[v26], &qword_1EC468060);
  v27 = *(v31 + 48);
  if (v27(v13, 1, v4) == 1)
  {
    if (v27(&v13[v26], 1, v4) == 1)
    {
      sub_1CAB21B68(v13, &qword_1EC468060);
      return 1;
    }

    goto LABEL_32;
  }

  sub_1CAB23A9C(v13, v10, &qword_1EC468060);
  if (v27(&v13[v26], 1, v4) == 1)
  {
    sub_1CAD1AC00(v10, type metadata accessor for LocationModelObject);
LABEL_32:
    sub_1CAB21B68(v13, &qword_1EC468140);
    return 0;
  }

  sub_1CAD1AB98(&v13[v26], v7, type metadata accessor for LocationModelObject);
  v29 = sub_1CAD1B078(v10, v7);
  sub_1CAD1AC00(v7, type metadata accessor for LocationModelObject);
  sub_1CAD1AC00(v10, type metadata accessor for LocationModelObject);
  sub_1CAB21B68(v13, &qword_1EC468060);
  return (v29 & 1) != 0;
}

uint64_t sub_1CAD1B078(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v3 = type metadata accessor for EventVirtualConferenceModelObject(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v62 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocationModelObject(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v63 = &v61 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v61 - v12);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v61 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v61 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468148);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v61 - v21;
  v23 = (&v61 + *(v20 + 56) - v21);
  sub_1CAD1B670(a1, &v61 - v21, type metadata accessor for LocationModelObject);
  sub_1CAD1B670(v64, v23, type metadata accessor for LocationModelObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1CAD1B670(v22, v18, type metadata accessor for LocationModelObject);
      v36 = v18[9];
      v106 = v18[8];
      v107 = v36;
      v108 = v18[10];
      v37 = v18[5];
      v102 = v18[4];
      v103 = v37;
      v38 = v18[7];
      v104 = v18[6];
      v105 = v38;
      v39 = v18[1];
      v98 = *v18;
      v99 = v39;
      v40 = v18[3];
      v100 = v18[2];
      v101 = v40;
      if (!swift_getEnumCaseMultiPayload())
      {
        v44 = v23[7];
        v45 = v23[9];
        v95 = v23[8];
        v96 = v45;
        v46 = v23[9];
        v97 = v23[10];
        v47 = v23[3];
        v48 = v23[5];
        v91 = v23[4];
        v92 = v48;
        v49 = v23[5];
        v50 = v23[7];
        v93 = v23[6];
        v94 = v50;
        v51 = v23[1];
        v87 = *v23;
        v88 = v51;
        v52 = v23[3];
        v54 = *v23;
        v53 = v23[1];
        v89 = v23[2];
        v90 = v52;
        v55 = v18[9];
        v84 = v18[8];
        v85 = v55;
        v86 = v18[10];
        v56 = v18[5];
        v80 = v18[4];
        v81 = v56;
        v57 = v18[7];
        v82 = v18[6];
        v83 = v57;
        v58 = v18[1];
        v76 = *v18;
        v77 = v58;
        v59 = v18[3];
        v78 = v18[2];
        v79 = v59;
        v73 = v95;
        v74 = v46;
        v75 = v23[10];
        v69 = v91;
        v70 = v49;
        v71 = v93;
        v72 = v44;
        v65 = v54;
        v66 = v53;
        v67 = v89;
        v68 = v47;
        v34 = _s13CalendarUIKit24EventLocationModelObjectV2eeoiySbAC_ACtFZ_0(&v76, &v65);
        sub_1CABD3C78(&v87);
        sub_1CABD3C78(&v98);
        goto LABEL_22;
      }

      sub_1CABD3C78(&v98);
      goto LABEL_20;
    }

    v25 = v23;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1CAD1B670(v22, v16, type metadata accessor for LocationModelObject);
      v26 = v16[3];
      v100 = v16[2];
      v101 = v26;
      v102 = v16[4];
      v27 = v16[1];
      v98 = *v16;
      v99 = v27;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = v23[1];
        v29 = v23[3];
        v89 = v23[2];
        v90 = v29;
        v30 = v23[3];
        v91 = v23[4];
        v31 = v23[1];
        v87 = *v23;
        v88 = v31;
        v32 = v16[3];
        v78 = v16[2];
        v79 = v32;
        v80 = v16[4];
        v33 = v16[1];
        v76 = *v16;
        v77 = v33;
        v67 = v89;
        v68 = v30;
        v69 = v23[4];
        v65 = v87;
        v66 = v28;
        v34 = _s13CalendarUIKit30EventConferenceRoomModelObjectV2eeoiySbAC_ACtFZ_0(&v76, &v65);
        sub_1CABC2D10(&v87);
        sub_1CABC2D10(&v98);
LABEL_22:
        sub_1CAD1AC00(v22, type metadata accessor for LocationModelObject);
        return v34 & 1;
      }

      sub_1CABC2D10(&v98);
      goto LABEL_20;
    }

    sub_1CAD1B670(v22, v13, type metadata accessor for LocationModelObject);
    v35 = *v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
LABEL_15:
      v43 = *v25;
      sub_1CABD4070(0, &qword_1EC4667E0);
      v34 = sub_1CAD4E494();

      goto LABEL_22;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v41 = v63;
    sub_1CAD1B670(v22, v63, type metadata accessor for LocationModelObject);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v42 = v62;
      sub_1CAD1AB98(v23, v62, type metadata accessor for EventVirtualConferenceModelObject);
      v34 = _s13CalendarUIKit33EventVirtualConferenceModelObjectV2eeoiySbAC_ACtFZ_0(v41, v42);
      sub_1CAD1AC00(v42, type metadata accessor for EventVirtualConferenceModelObject);
      sub_1CAD1AC00(v41, type metadata accessor for EventVirtualConferenceModelObject);
      goto LABEL_22;
    }

    sub_1CAD1AC00(v41, type metadata accessor for EventVirtualConferenceModelObject);
    goto LABEL_20;
  }

  v25 = v23;
  if (EnumCaseMultiPayload == 4)
  {
    sub_1CAD1B670(v22, v8, type metadata accessor for LocationModelObject);
    v35 = *v8;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_15;
    }

LABEL_9:

LABEL_20:
    sub_1CAB21B68(v22, &qword_1EC468148);
    v34 = 0;
    return v34 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_20;
  }

  sub_1CAD1AC00(v22, type metadata accessor for LocationModelObject);
  v34 = 1;
  return v34 & 1;
}

uint64_t sub_1CAD1B670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAD1B6D8(uint64_t a1)
{
  v4 = *(type metadata accessor for LocationSearchResults(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CABCD46C;

  return sub_1CAD19C4C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1CAD1B820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E58);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAD1B8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationModelObject(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAD1B92C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CABCCCB0;

  return sub_1CAD1046C();
}

uint64_t sub_1CAD1B9E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 40);
  v26 = *(a2 + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E58);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25[-v9];
  v11 = OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel__result;
  v12 = type metadata accessor for LocationSearchResults(0);
  v27 = *(*(v12 - 8) + 56);
  v27(v3 + v11, 1, 1, v12);
  type metadata accessor for LocationModelObject(0);
  swift_storeEnumTagMultiPayload();
  sub_1CAD4C454();
  v13 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  v14 = [objc_allocWithZone(MEMORY[0x1E6966A40]) initWithEventStore_];
  v28 = a1;
  [v14 setSupportedSearchTypes_];
  v15 = *(a2 + 8);
  if (v15 == 1)
  {
    v16 = (v3 + OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel_eventID);
    *v16 = 0;
    v16[1] = 0;
    *(v3 + OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel_dateRange) = 0;
    *(v3 + OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel_conferenceRoomNamesToExclude) = 0;
    *(v3 + OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel_requestAvailability) = 0;
    *(v3 + 16) = v14;
LABEL_8:
    *(v3 + OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel_source) = 0;
    v21 = v14;
    goto LABEL_9;
  }

  *&v30 = *a2;
  *(&v30 + 1) = v15;
  *(v3 + OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel_eventID) = v30;
  *(v3 + OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel_dateRange) = v6;
  if (v7)
  {
    *(v3 + OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel_conferenceRoomNamesToExclude) = v7;
    sub_1CAB23A9C(&v30, &v31, &qword_1EC4643D0);
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel_conferenceRoomNamesToExclude) = 0;
    sub_1CAB23A9C(&v30, &v31, &qword_1EC4643D0);
  }

  v17 = v6;
  *(v3 + OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel_requestAvailability) = v26 & 1;
  *(v3 + 16) = v14;
  v31 = *(a2 + 24);
  if (!*(&v31 + 1))
  {
    goto LABEL_8;
  }

  v18 = v14;
  sub_1CAB23A9C(&v31, v29, &qword_1EC4643D0);
  v19 = sub_1CAD4DF54();
  sub_1CAB21B68(&v31, &qword_1EC4643D0);
  v20 = [v13 sourceWithIdentifier_];

  *(v3 + OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel_source) = v20;
LABEL_9:
  [*(v3 + 16) setDelegate_];
  v27(v10, 1, 1, v12);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *&v25[-16] = v3;
  *&v25[-8] = v10;
  v29[0] = v3;
  sub_1CAD1AB50(&qword_1EC465790, type metadata accessor for LocationDataModel);
  sub_1CAD4C414();

  sub_1CAB21B68(v10, &qword_1EC467E58);
  v23 = v28;
  if (*(a2 + 8) == 1 || (*(a2 + 49) & 1) != 0)
  {
    if (v28)
    {
      [v14 getCurrentLocation];
    }

    if ((v23 & 0x10) != 0)
    {
      [v14 updateRecents_];
    }
  }

  if ((v23 & 0x200) != 0)
  {
    [v14 updateVirtualConferenceRoomOptions_];
  }

  return v3;
}

uint64_t sub_1CAD1BE54(void *a1)
{
  v2 = type metadata accessor for LocationModelObject(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v13[3] = &type metadata for EKLocationModelWrapper;
    v13[4] = &protocol witness table for EKLocationModelWrapper;
    v13[0] = a1;
    v5 = a1;
    EventLocationModelObject.init(_:)(v13, v14);
    v6 = v14[9];
    v4[8] = v14[8];
    v4[9] = v6;
    v4[10] = v14[10];
    v7 = v14[5];
    v4[4] = v14[4];
    v4[5] = v7;
    v8 = v14[7];
    v4[6] = v14[6];
    v4[7] = v8;
    v9 = v14[1];
    *v4 = v14[0];
    v4[1] = v9;
    v10 = v14[3];
    v4[2] = v14[2];
    v4[3] = v10;
  }

  swift_storeEnumTagMultiPayload();
  return sub_1CAD10154(v4);
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CAD1BF80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 50))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1CAD1BFDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t EventModelObject.singleRecurrenceRule.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for EventModelObject() + 132));
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = type metadata accessor for EventRecurrenceRuleModelObject(0);
    v6 = *(v5 - 8);
    if (v4)
    {
      v13 = *(v5 - 8);
      sub_1CAD2E710(v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), a1, type metadata accessor for EventRecurrenceRuleModelObject);
      v7 = *(v13 + 56);
      v8 = a1;
      v9 = 0;
    }

    else
    {
      v7 = *(v6 + 56);
      v8 = a1;
      v9 = 1;
    }

    v11 = v5;
  }

  else
  {
    v10 = type metadata accessor for EventRecurrenceRuleModelObject(0);
    v7 = *(*(v10 - 8) + 56);
    v11 = v10;
    v8 = a1;
    v9 = 1;
  }

  return v7(v8, v9, 1, v11);
}

uint64_t type metadata accessor for EventModelObject()
{
  result = qword_1EDA5F810;
  if (!qword_1EDA5F810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CAD1C1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for EventModelObject() + 132));
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = type metadata accessor for EventRecurrenceRuleModelObject(0);
    v6 = *(v5 - 8);
    if (v4)
    {
      v13 = *(v5 - 8);
      sub_1CAD2E710(v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), a2, type metadata accessor for EventRecurrenceRuleModelObject);
      v7 = *(v13 + 56);
      v8 = a2;
      v9 = 0;
    }

    else
    {
      v7 = *(v6 + 56);
      v8 = a2;
      v9 = 1;
    }

    v11 = v5;
  }

  else
  {
    v10 = type metadata accessor for EventRecurrenceRuleModelObject(0);
    v7 = *(*(v10 - 8) + 56);
    v11 = v10;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v11);
}

uint64_t sub_1CAD1C310(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1CAB23A9C(a1, &v6 - v3, &qword_1EC463170);
  return EventModelObject.singleRecurrenceRule.setter(v4);
}

uint64_t EventModelObject.singleRecurrenceRule.setter(uint64_t a1)
{
  v3 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  sub_1CAB23A9C(a1, &v14 - v8, &qword_1EC463170);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1CAB21B68(a1, &qword_1EC463170);
    v10 = 0;
  }

  else
  {
    sub_1CAD2E6A8(v9, v6, type metadata accessor for EventRecurrenceRuleModelObject);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465D50);
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1CAD58380;
    sub_1CAD2E710(v6, v10 + v11, type metadata accessor for EventRecurrenceRuleModelObject);
    sub_1CAB21B68(a1, &qword_1EC463170);
    sub_1CAD2DF04(v6, type metadata accessor for EventRecurrenceRuleModelObject);
  }

  v12 = *(type metadata accessor for EventModelObject() + 132);

  *(v1 + v12) = v10;
  return result;
}

uint64_t EventModelObject.constraints.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v19 - v4;
  v6 = type metadata accessor for EventModelObject();
  sub_1CAB23A9C(v1 + *(v6 + 104), v5, &qword_1EC464020);
  v7 = type metadata accessor for EventCalendarModelObject();
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    result = sub_1CAB21B68(v5, &qword_1EC464020);
    *a1 = xmmword_1CAD5D940;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    v9 = *(v5 + 184);
    v10 = *(v5 + 216);
    v19[6] = *(v5 + 200);
    *v20 = v10;
    *&v20[10] = *(v5 + 226);
    v11 = *(v5 + 120);
    v12 = *(v5 + 152);
    v19[2] = *(v5 + 136);
    v19[3] = v12;
    v19[4] = *(v5 + 168);
    v19[5] = v9;
    v19[0] = *(v5 + 104);
    v19[1] = v11;
    v13 = sub_1CABED4EC(v19);
    v14.i32[0] = 1;
    v15.i32[0] = v13;
    v16 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v15, v14), 0), xmmword_1CAD5D940, *v20);
    v17 = *&v20[16];
    v18 = *&v20[24];
    if (v13 == 1)
    {
      v17 = 0;
      v18 = 0;
    }

    *a1 = v16;
    *(a1 + 16) = v17;
    *(a1 + 24) = v18;
    return sub_1CAD2DF04(v5, type metadata accessor for EventCalendarModelObject);
  }

  return result;
}

double EventModelObject.init(id:uniqueID:title:startDate:endDate:isAllDay:isProposedTime:startTimeZone:endTimeZone:isFloating:floatingTimeZone:virtualConference:location:locationWithoutPrediction:locationsWithoutPrediction:structuredLocation:structuredLocationWithoutPrediction:preferredLocation:travelTime:travelRoutingMode:calendar:privacyLevel:status:alarms:notes:availability:recurrenceDate:recurrenceRules:organizer:attendees:selfAttendee:url:hasAttachment:conferenceURLForDisplayCached:conferenceURLForDisplay:integration:isEditable:isNew:isSuggestedEvent:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void, void)@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, unsigned __int8 a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 *a23, __int128 *a24, __int128 *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unsigned __int8 a40, unsigned __int8 a41, uint64_t a42, __int128 *a43, unsigned __int8 a44, unsigned __int8 a45, unsigned __int8 a46)
{
  v271 = a8;
  v272 = a7;
  v233 = a5;
  v234 = a6;
  v232 = a4;
  v229 = a2;
  v230 = a3;
  v227 = a1;
  v264 = a46;
  v263 = a45;
  v262 = a44;
  v261 = a41;
  v256 = a40;
  v257 = a39;
  v258 = a38;
  v255 = a37;
  v259 = a36;
  v254 = a35;
  v266 = a34;
  v267 = a17;
  v268 = a16;
  v269 = a14;
  v270 = a13;
  v248 = a33;
  v246 = a32;
  v245 = a31;
  v244 = a30;
  v243 = a29;
  v242 = a28;
  v265 = a27;
  v241 = a26;
  v239 = a21;
  v238 = a20;
  v237 = a19;
  v236 = a18;
  v228 = a15;
  v225 = a12;
  v224 = a11;
  v260 = a42;
  v235 = a22;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  v49 = MEMORY[0x1EEE9AC00](v48 - 8);
  v240 = &v207 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v247 = &v207 - v51;
  v52 = a23[9];
  v283 = a23[8];
  v284 = v52;
  v285 = a23[10];
  v53 = a23[5];
  v279 = a23[4];
  v280 = v53;
  v54 = a23[7];
  v281 = a23[6];
  v282 = v54;
  v55 = a23[1];
  v275 = *a23;
  v276 = v55;
  v56 = a23[3];
  v277 = a23[2];
  v278 = v56;
  v57 = a24[9];
  v294 = a24[8];
  v295 = v57;
  v296 = a24[10];
  v58 = a24[5];
  v290 = a24[4];
  v291 = v58;
  v59 = a24[7];
  v292 = a24[6];
  v293 = v59;
  v60 = a24[1];
  v286 = *a24;
  v287 = v60;
  v61 = a24[3];
  v288 = a24[2];
  v289 = v61;
  v62 = a25[8];
  v306 = a25[9];
  v307 = a25[10];
  v63 = a25[5];
  v301 = a25[4];
  v302 = v63;
  v64 = a25[6];
  v304 = a25[7];
  v305 = v62;
  v303 = v64;
  v65 = a25[1];
  v297 = *a25;
  v298 = v65;
  v66 = a25[3];
  v299 = a25[2];
  v300 = v66;
  v67 = *a43;
  v252 = a43[1];
  v253 = v67;
  v68 = *(a43 + 4);
  v250 = *(a43 + 5);
  v251 = v68;
  v249 = *(a43 + 6);
  v69 = type metadata accessor for EventModelObject();
  v70 = v69[11];
  v214 = v70;
  v71 = sub_1CAD4C404();
  v72 = *(*(v71 - 8) + 56);
  v72(&a9[v70], 1, 1, v71);
  v213 = v69[12];
  v72(&a9[v213], 1, 1, v71);
  v215 = v69[14];
  v72(&a9[v215], 1, 1, v71);
  v73 = v69[15];
  v212 = v73;
  v74 = type metadata accessor for EventVirtualConferenceModelObject(0);
  (*(*(v74 - 8) + 56))(&a9[v73], 1, 1, v74);
  v75 = v69[17];
  v209 = &a9[v69[16]];
  v210 = &a9[v75];
  v76 = v69[19];
  v211 = v69[18];
  v77 = &a9[v76];
  v78 = a9;
  sub_1CABED564(&v308);
  v79 = v313;
  v80 = v313;
  v81 = v312;
  *(v77 + 4) = v312;
  *(v77 + 5) = v79;
  v82 = v318;
  v83 = v318;
  v84 = v317;
  v85 = v316;
  v86 = v316;
  *(v77 + 9) = v317;
  *(v77 + 10) = v82;
  *(v77 + 8) = v85;
  v87 = v314;
  v88 = v315;
  v89 = v315;
  *(v77 + 6) = v314;
  *(v77 + 7) = v88;
  v90 = v308;
  v91 = v309;
  v92 = v309;
  *v77 = v308;
  *(v77 + 1) = v91;
  v93 = v310;
  v94 = v311;
  v95 = v311;
  *(v77 + 2) = v310;
  *(v77 + 3) = v94;
  v96 = &a9[v69[20]];
  *v96 = v90;
  *(v96 + 1) = v92;
  *(v96 + 4) = v81;
  *(v96 + 5) = v80;
  *(v96 + 2) = v93;
  *(v96 + 3) = v95;
  *(v96 + 9) = v84;
  *(v96 + 10) = v83;
  *(v96 + 7) = v89;
  *(v96 + 8) = v86;
  *(v96 + 6) = v87;
  v97 = &a9[v69[21]];
  v98 = v308;
  v99 = v309;
  v100 = v309;
  *v97 = v308;
  *(v97 + 1) = v99;
  v101 = v312;
  v102 = v313;
  v103 = v313;
  *(v97 + 4) = v312;
  *(v97 + 5) = v102;
  v104 = v311;
  v105 = v311;
  v106 = v310;
  *(v97 + 2) = v310;
  *(v97 + 3) = v104;
  v107 = v318;
  *(v97 + 10) = v318;
  v108 = v316;
  v109 = v317;
  v110 = v317;
  *(v97 + 8) = v316;
  *(v97 + 9) = v109;
  v111 = v315;
  v112 = v315;
  v113 = v314;
  *(v97 + 6) = v314;
  *(v97 + 7) = v111;
  v114 = &v78[v69[23]];
  *(v114 + 8) = v108;
  *(v114 + 9) = v110;
  *(v114 + 10) = v107;
  *(v114 + 4) = v101;
  *(v114 + 5) = v103;
  *(v114 + 6) = v113;
  *(v114 + 7) = v112;
  *v114 = v98;
  *(v114 + 1) = v100;
  *(v114 + 2) = v106;
  *(v114 + 3) = v105;
  v115 = v69[26];
  v216 = v115;
  v116 = type metadata accessor for EventCalendarModelObject();
  (*(*(v116 - 8) + 56))(&v78[v115], 1, 1, v116);
  v117 = v69[29];
  v217 = &v78[v69[30]];
  v218 = v117;
  v118 = &v78[v69[32]];
  v273 = sub_1CAD4C0F4();
  v274 = *(v273 - 8);
  v119 = v274[7];
  v226 = v118;
  v221 = v119;
  v222 = v274 + 7;
  v119(v118, 1, 1, v273);
  v120 = &v78[v69[34]];
  v121 = type metadata accessor for EventOrganizerModelObject(0);
  v122 = *(*(v121 - 8) + 56);
  v223 = v120;
  v122(v120, 1, 1, v121);
  v123 = &v78[v69[36]];
  v207 = v78;
  v124 = type metadata accessor for EventAttendeeModelObject(0);
  v125 = *(*(v124 - 8) + 56);
  v220 = v123;
  v125(v123, 1, 1, v124);
  v126 = &v78[v69[37]];
  v127 = sub_1CAD4BFF4();
  v128 = *(*(v127 - 8) + 56);
  v219 = v126;
  v129 = v126;
  v130 = v207;
  (v128)(v129, 1, 1, v127);
  v231 = v130 + v69[41];
  v128();
  v131 = v130 + v69[42];
  *v131 = 0;
  *(v131 + 1) = 0;
  *(v131 + 2) = 1;
  *(v131 + 24) = 0u;
  v208 = v131;
  *(v131 + 40) = 0u;
  v132 = v229;
  v133 = v230;
  *v130 = v227;
  v130[1] = v132;
  v134 = v232;
  v135 = v233;
  v130[2] = v133;
  v130[3] = v134;
  v136 = v234;
  v130[4] = v135;
  v130[5] = v136;
  v138 = v274 + 2;
  v137 = v274[2];
  v139 = v273;
  v137(v130 + v69[7], v272, v273);
  v140 = v130 + v69[8];
  v233 = v137;
  v234 = v138;
  v137(v140, v271, v139);
  v141 = v225;
  *(v130 + v69[9]) = v224;
  *(v130 + v69[10]) = v141;
  sub_1CAC809BC(v270, v130 + v214, &qword_1EC4635D0);
  sub_1CAC809BC(v269, v130 + v213, &qword_1EC4635D0);
  *(v130 + v69[13]) = v228;
  sub_1CAC809BC(v268, v130 + v215, &qword_1EC4635D0);
  sub_1CAC809BC(v267, v130 + v212, &qword_1EC467A40);
  v142 = v237;
  v144 = v209;
  v143 = v210;
  *v209 = v236;
  *(v144 + 1) = v142;
  v145 = v239;
  *v143 = v238;
  *(v143 + 1) = v145;
  *(v130 + v211) = v235;
  v146 = *(v77 + 9);
  v319[8] = *(v77 + 8);
  v319[9] = v146;
  v319[10] = *(v77 + 10);
  v147 = *(v77 + 5);
  v319[4] = *(v77 + 4);
  v319[5] = v147;
  v148 = *(v77 + 6);
  v319[7] = *(v77 + 7);
  v319[6] = v148;
  v149 = *(v77 + 1);
  v319[0] = *v77;
  v319[1] = v149;
  v150 = *(v77 + 2);
  v319[3] = *(v77 + 3);
  v319[2] = v150;
  sub_1CAB21B68(v319, &qword_1EC463C00);
  v151 = v280;
  *(v77 + 4) = v279;
  *(v77 + 5) = v151;
  v152 = v285;
  *(v77 + 9) = v284;
  *(v77 + 10) = v152;
  v153 = v283;
  *(v77 + 7) = v282;
  *(v77 + 8) = v153;
  *(v77 + 6) = v281;
  v154 = v276;
  *v77 = v275;
  *(v77 + 1) = v154;
  v155 = v278;
  *(v77 + 2) = v277;
  *(v77 + 3) = v155;
  v156 = *(v96 + 9);
  v320[8] = *(v96 + 8);
  v320[9] = v156;
  v320[10] = *(v96 + 10);
  v157 = *(v96 + 5);
  v320[4] = *(v96 + 4);
  v320[5] = v157;
  v158 = *(v96 + 6);
  v320[7] = *(v96 + 7);
  v320[6] = v158;
  v159 = *(v96 + 1);
  v320[0] = *v96;
  v320[1] = v159;
  v160 = *(v96 + 2);
  v320[3] = *(v96 + 3);
  v320[2] = v160;
  sub_1CAB21B68(v320, &qword_1EC463C00);
  v161 = v291;
  *(v96 + 4) = v290;
  *(v96 + 5) = v161;
  v162 = v296;
  *(v96 + 9) = v295;
  *(v96 + 10) = v162;
  v163 = v294;
  *(v96 + 7) = v293;
  *(v96 + 8) = v163;
  *(v96 + 6) = v292;
  v164 = v287;
  *v96 = v286;
  *(v96 + 1) = v164;
  v165 = v289;
  *(v96 + 2) = v288;
  *(v96 + 3) = v165;
  v166 = *(v97 + 9);
  v321[8] = *(v97 + 8);
  v321[9] = v166;
  v321[10] = *(v97 + 10);
  v167 = *(v97 + 5);
  v321[4] = *(v97 + 4);
  v321[5] = v167;
  v168 = *(v97 + 6);
  v321[7] = *(v97 + 7);
  v321[6] = v168;
  v169 = *(v97 + 1);
  v321[0] = *v97;
  v321[1] = v169;
  v170 = *(v97 + 2);
  v321[3] = *(v97 + 3);
  v321[2] = v170;
  sub_1CAB21B68(v321, &qword_1EC463C00);
  v171 = v302;
  *(v97 + 4) = v301;
  *(v97 + 5) = v171;
  v172 = v307;
  v173 = v304;
  v174 = v305;
  *(v97 + 9) = v306;
  *(v97 + 10) = v172;
  *(v97 + 7) = v173;
  *(v97 + 8) = v174;
  *(v97 + 6) = v303;
  v175 = v298;
  *v97 = v297;
  *(v97 + 1) = v175;
  v176 = v300;
  *(v97 + 2) = v299;
  *(v97 + 3) = v176;
  v177 = v240;
  *(v130 + v69[22]) = a10;
  v178 = *(v114 + 9);
  v322[8] = *(v114 + 8);
  v322[9] = v178;
  v322[10] = *(v114 + 10);
  v179 = *(v114 + 5);
  v322[4] = *(v114 + 4);
  v322[5] = v179;
  v180 = *(v114 + 6);
  v322[7] = *(v114 + 7);
  v322[6] = v180;
  v181 = *(v114 + 1);
  v322[0] = *v114;
  v322[1] = v181;
  v182 = *(v114 + 2);
  v322[3] = *(v114 + 3);
  v322[2] = v182;
  v183 = v273;
  sub_1CAB21B68(v322, &qword_1EC463C00);
  v184 = v317;
  *(v114 + 8) = v316;
  *(v114 + 9) = v184;
  *(v114 + 10) = v318;
  v185 = v313;
  *(v114 + 4) = v312;
  *(v114 + 5) = v185;
  v186 = v315;
  *(v114 + 6) = v314;
  *(v114 + 7) = v186;
  v187 = v309;
  *v114 = v308;
  *(v114 + 1) = v187;
  v188 = v311;
  *(v114 + 2) = v310;
  *(v114 + 3) = v188;
  v189 = v274;
  *(v130 + v69[24]) = v241;
  *(v130 + v69[25]) = 0;
  sub_1CAC809BC(v265, v130 + v216, &qword_1EC464020);
  v190 = v243;
  *(v130 + v69[27]) = v242;
  *(v130 + v69[28]) = v190;
  v191 = v245;
  *(v130 + v218) = v244;
  v192 = v217;
  *v217 = v191;
  *(v192 + 1) = v246;
  *(v130 + v69[31]) = v248;
  sub_1CAB23A9C(v266, v177, &unk_1EC465A70);
  v193 = v189[6];
  if (v193(v177, 1, v183) == 1)
  {
    v194 = v247;
    v233(v247, v272, v183);
    if (v193(v177, 1, v183) != 1)
    {
      sub_1CAB21B68(v177, &unk_1EC465A70);
    }
  }

  else
  {
    v195 = v189[4];
    v194 = v247;
    v195(v247, v177, v183);
  }

  v196 = v69[33];
  v197 = v69[35];
  v221(v194, 0, 1, v183);
  sub_1CABC6AC8(v194, v226, &unk_1EC465A70);
  *(v130 + v196) = v254;
  v198 = v259;
  sub_1CAC809BC(v259, v223, &qword_1EC465AC0);
  *(v130 + v197) = v255;
  v199 = v258;
  sub_1CAC809BC(v258, v220, &qword_1EC464E38);
  v200 = v257;
  sub_1CAC809BC(v257, v219, &qword_1EC465450);
  *(v130 + v69[38]) = v256 & 1;
  sub_1CAB21B68(v200, &qword_1EC465450);
  sub_1CAB21B68(v199, &qword_1EC464E38);
  sub_1CAB21B68(v198, &qword_1EC465AC0);
  sub_1CAB21B68(v266, &unk_1EC465A70);
  sub_1CAB21B68(v265, &qword_1EC464020);
  sub_1CAB21B68(v267, &qword_1EC467A40);
  sub_1CAB21B68(v268, &qword_1EC4635D0);
  sub_1CAB21B68(v269, &qword_1EC4635D0);
  sub_1CAB21B68(v270, &qword_1EC4635D0);
  v201 = v274[1];
  v202 = v273;
  v201(v271, v273);
  v201(v272, v202);
  *(v130 + v69[39]) = MEMORY[0x1E69E7CC0];
  *(v130 + v69[40]) = v261 & 1;
  sub_1CABC6AC8(v260, v231, &qword_1EC465450);
  v203 = v208;
  sub_1CAC80A24(*v208, *(v208 + 1), *(v208 + 2), *(v208 + 3), *(v208 + 4), *(v208 + 5), *(v208 + 6));
  v205 = v252;
  result = *&v253;
  *v203 = v253;
  *(v203 + 1) = v205;
  v206 = v250;
  *(v203 + 4) = v251;
  *(v203 + 5) = v206;
  *(v203 + 6) = v249;
  *(v130 + v69[43]) = v262 & 1;
  *(v130 + v69[44]) = v263 & 1;
  *(v130 + v69[45]) = v264 & 1;
  return result;
}

uint64_t EventModelObject.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v441 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v440 = &v402 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E38);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v439 = &v402 - v6;
  v7 = type metadata accessor for EventAttendeeModelObject(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v435 = &v402 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v433 = &v402 - v11;
  v12 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v428 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v442 = &v402 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v422 = &v402 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v426 = &v402 - v17;
  v403 = type metadata accessor for EventAlarmModelObject();
  v448 = *(v403 - 8);
  MEMORY[0x1EEE9AC00](v403);
  v449 = &v402 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v418 = &v402 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A40);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v410 = &v402 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v404 = &v402 - v24;
  v25 = type metadata accessor for EventModelObject();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v402 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v26 + 44);
  v445 = v29;
  v30 = sub_1CAD4C404();
  v31 = *(*(v30 - 8) + 56);
  v31(v29 + v28, 1, 1, v30);
  v447 = v25[12];
  v31(&v28[v447], 1, 1, v30);
  v446 = v25[14];
  v31(&v446[v28], 1, 1, v30);
  v32 = v25[15];
  v33 = type metadata accessor for EventVirtualConferenceModelObject(0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v408 = v33;
  v409 = v32;
  v406 = v34 + 56;
  v407 = v35;
  (v35)(&v28[v32], 1, 1);
  v36 = &v28[v25[19]];
  sub_1CABED564(&v577);
  v37 = v582;
  v38 = v582;
  v39 = v581;
  v36[4] = v581;
  v36[5] = v37;
  v40 = v587;
  v41 = v587;
  v42 = v586;
  v43 = v585;
  v44 = v585;
  v36[9] = v586;
  v36[10] = v40;
  v36[8] = v43;
  v45 = v583;
  v46 = v584;
  v47 = v584;
  v36[6] = v583;
  v36[7] = v46;
  v48 = v577;
  v49 = v578;
  v50 = v578;
  *v36 = v577;
  v36[1] = v49;
  v51 = v579;
  v52 = v580;
  v53 = v580;
  v36[2] = v579;
  v36[3] = v52;
  v405 = v36;
  v54 = &v28[v25[20]];
  *v54 = v48;
  v54[1] = v50;
  v54[4] = v39;
  v54[5] = v38;
  v54[2] = v51;
  v54[3] = v53;
  v54[9] = v42;
  v54[10] = v41;
  v54[7] = v47;
  v54[8] = v44;
  v54[6] = v45;
  v411 = v54;
  v55 = &v28[v25[21]];
  v56 = v577;
  v57 = v578;
  v58 = v578;
  *v55 = v577;
  v55[1] = v57;
  v59 = v581;
  v60 = v582;
  v61 = v582;
  v55[4] = v581;
  v55[5] = v60;
  v62 = v580;
  v63 = v580;
  v64 = v579;
  v55[2] = v579;
  v55[3] = v62;
  v65 = v587;
  v55[10] = v587;
  v66 = v585;
  v67 = v586;
  v68 = v586;
  v55[8] = v585;
  v55[9] = v67;
  v69 = v584;
  v70 = v584;
  v71 = v583;
  v55[6] = v583;
  v55[7] = v69;
  v412 = v55;
  v72 = &v28[v25[23]];
  v72[8] = v66;
  v72[9] = v68;
  v72[10] = v65;
  v72[4] = v59;
  v72[5] = v61;
  v72[6] = v71;
  v72[7] = v70;
  *v72 = v56;
  v72[1] = v58;
  v72[2] = v64;
  v72[3] = v63;
  v413 = v72;
  v73 = v25[26];
  v74 = type metadata accessor for EventCalendarModelObject();
  v75 = *(v74 - 8);
  v76 = *(v75 + 56);
  v416 = v74;
  v417 = v73;
  v414 = v75 + 56;
  v415 = v76;
  (v76)(&v28[v73], 1, 1);
  v77 = v25[32];
  v78 = sub_1CAD4C0F4();
  v79 = *(v78 - 8);
  v80 = *(v79 + 56);
  v443 = v78;
  v444 = v77;
  v421 = v79 + 56;
  v419 = v79;
  v420 = v80;
  (v80)(&v28[v77], 1, 1);
  v81 = v25[34];
  v82 = type metadata accessor for EventOrganizerModelObject(0);
  v83 = *(v82 - 8);
  v84 = *(v83 + 56);
  v427 = v81;
  v424 = v84;
  v425 = v82;
  v423 = v83 + 56;
  (v84)(&v28[v81], 1, 1);
  v85 = v25[36];
  v436 = v8;
  v86 = *(v8 + 56);
  v430 = v8 + 56;
  v431 = v85;
  v438 = v7;
  v429 = v86;
  v86(&v28[v85], 1, 1, v7);
  v87 = v25[37];
  v88 = sub_1CAD4BFF4();
  v89 = *(*(v88 - 8) + 56);
  v432 = v87;
  v89(&v28[v87], 1, 1, v88);
  v434 = v25[41];
  v89(&v28[v434], 1, 1, v88);
  v90 = &v28[v25[42]];
  *v90 = 0;
  *(v90 + 1) = 0;
  *(v90 + 2) = 1;
  *(v90 + 24) = 0u;
  v437 = v90;
  *(v90 + 40) = 0u;
  v91 = a1[3];
  v92 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v91);
  *v28 = (*(v92 + 152))(v91, v92);
  *(v28 + 1) = v93;
  v94 = a1[3];
  v95 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v94);
  *(v28 + 2) = (*(v95 + 168))(v94, v95);
  *(v28 + 3) = v96;
  v97 = a1[3];
  v98 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v97);
  *(v28 + 4) = (*(v98 + 160))(v97, v98);
  *(v28 + 5) = v99;
  v100 = a1[3];
  v101 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v100);
  (*(v101 + 176))(v100, v101);
  v102 = a1[3];
  v103 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v102);
  (*(v103 + 184))(v102, v103);
  v104 = a1[3];
  v105 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v104);
  v28[v25[9]] = (*(v105 + 200))(v104, v105) & 1;
  v106 = a1[3];
  v107 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v106);
  v28[v25[10]] = (*(v107 + 208))(v106, v107) & 1;
  v108 = a1[3];
  v109 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v108);
  v110 = v404;
  (*(v109 + 216))(v108, v109);
  sub_1CABC6AC8(v110, v445 + v28, &qword_1EC4635D0);
  v111 = a1[3];
  v112 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v111);
  (*(v112 + 224))(v111, v112);
  sub_1CABC6AC8(v110, &v28[v447], &qword_1EC4635D0);
  v113 = a1[3];
  v114 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v113);
  v115 = (*(v114 + 232))(v113, v114);
  v445 = v25;
  v28[v25[13]] = v115 & 1;
  v116 = a1[3];
  v117 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v116);
  (*(v117 + 240))(v116, v117);
  v447 = v28;
  sub_1CABC6AC8(v110, &v446[v28], &qword_1EC4635D0);
  v119 = a1[3];
  v118 = a1[4];
  v446 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v119);
  v120 = *(v118 + 248);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v122 = sub_1CAD4E4D4();
  v123 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v125 = &v402 - v124;
  v120(v119, v118);
  v126 = *(AssociatedTypeWitness - 8);
  if ((*(v126 + 48))(v125, 1, AssociatedTypeWitness) == 1)
  {
    (*(v123 + 8))(v125, v122);
    *&v565 = 0;
    v564 = 0u;
    v563 = 0u;
  }

  else
  {
    *(&v564 + 1) = AssociatedTypeWitness;
    *&v565 = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v563);
    (*(v126 + 32))(boxed_opaque_existential_1, v125, AssociatedTypeWitness);
  }

  sub_1CAB23A9C(&v563, &v550, &qword_1EC468190);
  v128 = v446;
  v129 = v410;
  if (*(&v551 + 1))
  {
    sub_1CAB284E0(&v550, &v536);
    sub_1CAB299C0(&v536, &v523);
    EventVirtualConferenceModelObject.init(_:)(&v523, v129);
    __swift_destroy_boxed_opaque_existential_1(&v536);
    v130 = v129;
    v131 = 0;
  }

  else
  {
    v130 = v410;
    v131 = 1;
  }

  v407(v130, v131, 1, v408);
  v132 = v447;
  v133 = (v447 + v445[16]);
  v134 = (v447 + v445[17]);
  v135 = v445[18];
  sub_1CAB21B68(&v563, &qword_1EC468190);
  sub_1CABC6AC8(v129, v132 + v409, &qword_1EC467A40);
  v136 = v128[3];
  v137 = v128[4];
  __swift_project_boxed_opaque_existential_1(v128, v136);
  *v133 = (*(v137 + 256))(v136, v137);
  v133[1] = v138;
  v139 = v128[3];
  v140 = v128[4];
  __swift_project_boxed_opaque_existential_1(v128, v139);
  *v134 = (*(v140 + 264))(v139, v140);
  v134[1] = v141;
  v142 = v128[3];
  v143 = v128[4];
  __swift_project_boxed_opaque_existential_1(v128, v142);
  *(v132 + v135) = (*(v143 + 272))(v142, v143);
  v144 = v128[3];
  v145 = v128[4];
  __swift_project_boxed_opaque_existential_1(v128, v144);
  v410 = (v145 + 280);
  v146 = *(v145 + 280);
  v147 = swift_getAssociatedTypeWitness();
  v148 = sub_1CAD4E4D4();
  v149 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v151 = &v402 - v150;
  v146(v144, v145);
  v152 = *(v147 - 8);
  if ((*(v152 + 48))(v151, 1, v147) == 1)
  {
    (*(v149 + 8))(v151, v148);
    AssociatedConformanceWitness = 0;
    v575 = 0u;
    v574 = 0u;
  }

  else
  {
    *(&v575 + 1) = v147;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v153 = __swift_allocate_boxed_opaque_existential_1(&v574);
    (*(v152 + 32))(v153, v151, v147);
  }

  sub_1CAB23A9C(&v574, &v561, &qword_1EC464C38);
  v154 = v446;
  if (v562)
  {
    sub_1CAB284E0(&v561, &v563);
    sub_1CAB299C0(&v563, &v523);
    EventLocationModelObject.init(_:)(&v523, &v536);
    __swift_destroy_boxed_opaque_existential_1(&v563);
    v558 = v544;
    v559 = v545;
    v560 = v546;
    v554 = v540;
    v555 = v541;
    v557 = v543;
    v556 = v542;
    v550 = v536;
    v551 = v537;
    v553 = v539;
    v552 = v538;
    nullsub_1(&v550);
    v571 = v558;
    v572 = v559;
    v573 = v560;
    v567 = v554;
    v568 = v555;
    v570 = v557;
    v569 = v556;
    v563 = v550;
    v564 = v551;
    v155 = v553;
    v156 = v552;
  }

  else
  {
    v571 = v585;
    v572 = v586;
    v573 = v587;
    v567 = v581;
    v568 = v582;
    v570 = v584;
    v569 = v583;
    v563 = v577;
    v564 = v578;
    v155 = v580;
    v156 = v579;
  }

  v566 = v155;
  v565 = v156;
  sub_1CAB21B68(&v574, &qword_1EC464C38);
  v157 = v405;
  v158 = v405[9];
  v558 = v405[8];
  v559 = v158;
  v560 = v405[10];
  v159 = v405[5];
  v554 = v405[4];
  v555 = v159;
  v160 = v405[6];
  v557 = v405[7];
  v556 = v160;
  v161 = v405[1];
  v550 = *v405;
  v551 = v161;
  v162 = v405[2];
  v553 = v405[3];
  v552 = v162;
  sub_1CAB21B68(&v550, &qword_1EC463C00);
  v163 = v572;
  v157[8] = v571;
  v157[9] = v163;
  v157[10] = v573;
  v164 = v568;
  v157[4] = v567;
  v157[5] = v164;
  v165 = v570;
  v157[6] = v569;
  v157[7] = v165;
  v166 = v564;
  *v157 = v563;
  v157[1] = v166;
  v167 = v566;
  v157[2] = v565;
  v157[3] = v167;
  v168 = v154[3];
  v169 = v154[4];
  __swift_project_boxed_opaque_existential_1(v154, v168);
  v170 = *(v169 + 288);
  v171 = swift_getAssociatedTypeWitness();
  v172 = sub_1CAD4E4D4();
  v410 = &v402;
  v173 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v175 = &v402 - v174;
  v170(v168, v169);
  v176 = *(v171 - 8);
  if ((*(v176 + 48))(v175, 1, v171) == 1)
  {
    (*(v173 + 8))(v175, v172);
    v549 = 0;
    v548 = 0u;
    v547 = 0u;
  }

  else
  {
    *(&v548 + 1) = v171;
    v549 = swift_getAssociatedConformanceWitness();
    v177 = __swift_allocate_boxed_opaque_existential_1(&v547);
    (*(v176 + 32))(v177, v175, v171);
  }

  sub_1CAB23A9C(&v547, &v534, &qword_1EC464C38);
  v178 = v446;
  if (v535)
  {
    sub_1CAB284E0(&v534, &v536);
    sub_1CAB299C0(&v536, &v496);
    EventLocationModelObject.init(_:)(&v496, &v509);
    __swift_destroy_boxed_opaque_existential_1(&v536);
    v531 = v517;
    v532 = v518;
    v533 = v519;
    v527 = v513;
    v528 = v514;
    v530 = v516;
    v529 = v515;
    v523 = v509;
    v524 = v510;
    v526 = v512;
    v525 = v511;
    nullsub_1(&v523);
    v544 = v531;
    v545 = v532;
    v546 = v533;
    v540 = v527;
    v541 = v528;
    v543 = v530;
    v542 = v529;
    v536 = v523;
    v537 = v524;
    v179 = v526;
    v180 = v525;
  }

  else
  {
    v544 = v585;
    v545 = v586;
    v546 = v587;
    v540 = v581;
    v541 = v582;
    v543 = v584;
    v542 = v583;
    v536 = v577;
    v537 = v578;
    v179 = v580;
    v180 = v579;
  }

  v539 = v179;
  v538 = v180;
  sub_1CAB21B68(&v547, &qword_1EC464C38);
  v181 = v411;
  v182 = v411[9];
  v531 = v411[8];
  v532 = v182;
  v533 = v411[10];
  v183 = v411[5];
  v527 = v411[4];
  v528 = v183;
  v184 = v411[6];
  v530 = v411[7];
  v529 = v184;
  v185 = v411[1];
  v523 = *v411;
  v524 = v185;
  v186 = v411[2];
  v526 = v411[3];
  v525 = v186;
  sub_1CAB21B68(&v523, &qword_1EC463C00);
  v187 = v545;
  v181[8] = v544;
  v181[9] = v187;
  v181[10] = v546;
  v188 = v541;
  v181[4] = v540;
  v181[5] = v188;
  v189 = v543;
  v181[6] = v542;
  v181[7] = v189;
  v190 = v537;
  *v181 = v536;
  v181[1] = v190;
  v191 = v539;
  v181[2] = v538;
  v181[3] = v191;
  v192 = v178[3];
  v193 = v178[4];
  __swift_project_boxed_opaque_existential_1(v178, v192);
  v194 = *(v193 + 296);
  v195 = swift_getAssociatedTypeWitness();
  v196 = sub_1CAD4E4D4();
  v411 = &v402;
  v197 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v199 = &v402 - v198;
  v194(v192, v193);
  v200 = *(v195 - 8);
  if ((*(v200 + 48))(v199, 1, v195) == 1)
  {
    (*(v197 + 8))(v199, v196);
    v522 = 0;
    v521 = 0u;
    v520 = 0u;
  }

  else
  {
    *(&v521 + 1) = v195;
    v522 = swift_getAssociatedConformanceWitness();
    v201 = __swift_allocate_boxed_opaque_existential_1(&v520);
    (*(v200 + 32))(v201, v199, v195);
  }

  sub_1CAB23A9C(&v520, &v507, &qword_1EC464C38);
  v202 = v446;
  if (v508)
  {
    sub_1CAB284E0(&v507, &v509);
    sub_1CAB299C0(&v509, &v469);
    EventLocationModelObject.init(_:)(&v469, &v482);
    __swift_destroy_boxed_opaque_existential_1(&v509);
    v504 = v490;
    v505 = v491;
    v506 = v492;
    v500 = v486;
    v501 = v487;
    v503 = v489;
    v502 = v488;
    v496 = v482;
    v497 = v483;
    v499 = v485;
    v498 = v484;
    nullsub_1(&v496);
    v517 = v504;
    v518 = v505;
    v519 = v506;
    v513 = v500;
    v514 = v501;
    v516 = v503;
    v515 = v502;
    v509 = v496;
    v510 = v497;
    v203 = v499;
    v204 = v498;
  }

  else
  {
    v517 = v585;
    v518 = v586;
    v519 = v587;
    v513 = v581;
    v514 = v582;
    v516 = v584;
    v515 = v583;
    v509 = v577;
    v510 = v578;
    v203 = v580;
    v204 = v579;
  }

  v512 = v203;
  v511 = v204;
  sub_1CAB21B68(&v520, &qword_1EC464C38);
  v205 = v412;
  v206 = v412[9];
  v504 = v412[8];
  v505 = v206;
  v506 = v412[10];
  v207 = v412[5];
  v500 = v412[4];
  v501 = v207;
  v208 = v412[6];
  v503 = v412[7];
  v502 = v208;
  v209 = v412[1];
  v496 = *v412;
  v497 = v209;
  v210 = v412[2];
  v499 = v412[3];
  v498 = v210;
  sub_1CAB21B68(&v496, &qword_1EC463C00);
  v211 = v518;
  v205[8] = v517;
  v205[9] = v211;
  v205[10] = v519;
  v212 = v514;
  v205[4] = v513;
  v205[5] = v212;
  v213 = v516;
  v205[6] = v515;
  v205[7] = v213;
  v214 = v510;
  *v205 = v509;
  v205[1] = v214;
  v215 = v512;
  v205[2] = v511;
  v205[3] = v215;
  v216 = v202[3];
  v217 = v202[4];
  __swift_project_boxed_opaque_existential_1(v202, v216);
  v218 = (*(v217 + 304))(v216, v217);
  *(v447 + v445[22]) = v218;
  v219 = v202[3];
  v220 = v202[4];
  __swift_project_boxed_opaque_existential_1(v202, v219);
  v221 = *(v220 + 312);
  v222 = swift_getAssociatedTypeWitness();
  v223 = sub_1CAD4E4D4();
  v412 = &v402;
  v224 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v226 = &v402 - v225;
  v221(v219, v220);
  v227 = *(v222 - 8);
  if ((*(v227 + 48))(v226, 1, v222) == 1)
  {
    (*(v224 + 8))(v226, v223);
    v495 = 0;
    v494 = 0u;
    v493 = 0u;
  }

  else
  {
    *(&v494 + 1) = v222;
    v495 = swift_getAssociatedConformanceWitness();
    v228 = __swift_allocate_boxed_opaque_existential_1(&v493);
    (*(v227 + 32))(v228, v226, v222);
  }

  sub_1CAB23A9C(&v493, &v480, &qword_1EC464C38);
  v229 = v446;
  if (v481)
  {
    sub_1CAB284E0(&v480, &v482);
    sub_1CAB299C0(&v482, &v466);
    EventLocationModelObject.init(_:)(&v466, &v450);
    __swift_destroy_boxed_opaque_existential_1(&v482);
    v477 = v458;
    v478 = v459;
    v479 = v460;
    v473 = v454;
    v474 = v455;
    v475 = v456;
    v476 = v457;
    v469 = v450;
    v470 = v451;
    v471 = v452;
    v472 = v453;
    nullsub_1(&v469);
    v490 = v477;
    v491 = v478;
    v492 = v479;
    v486 = v473;
    v487 = v474;
    v489 = v476;
    v488 = v475;
    v482 = v469;
    v483 = v470;
    v231 = v471;
    v230 = v472;
  }

  else
  {
    v490 = v585;
    v491 = v586;
    v492 = v587;
    v486 = v581;
    v487 = v582;
    v489 = v584;
    v488 = v583;
    v482 = v577;
    v483 = v578;
    v230 = v580;
    v231 = v579;
  }

  v484 = v231;
  v485 = v230;
  sub_1CAB21B68(&v493, &qword_1EC464C38);
  v232 = v413;
  v233 = v413[9];
  v477 = v413[8];
  v478 = v233;
  v479 = v413[10];
  v234 = v413[5];
  v473 = v413[4];
  v474 = v234;
  v235 = v413[7];
  v475 = v413[6];
  v476 = v235;
  v236 = v413[1];
  v469 = *v413;
  v470 = v236;
  v237 = v413[3];
  v471 = v413[2];
  v472 = v237;
  sub_1CAB21B68(&v469, &qword_1EC463C00);
  v238 = v491;
  v232[8] = v490;
  v232[9] = v238;
  v232[10] = v492;
  v239 = v487;
  v232[4] = v486;
  v232[5] = v239;
  v240 = v489;
  v232[6] = v488;
  v232[7] = v240;
  v241 = v483;
  *v232 = v482;
  v232[1] = v241;
  v242 = v485;
  v232[2] = v484;
  v232[3] = v242;
  v243 = v229[3];
  v244 = v229[4];
  __swift_project_boxed_opaque_existential_1(v229, v243);
  v245 = (*(v244 + 320))(v243, v244);
  v246 = v445;
  v247 = v447;
  *(v447 + v445[24]) = v245;
  v248 = v229[3];
  v249 = v229[4];
  __swift_project_boxed_opaque_existential_1(v229, v248);
  *(v247 + v246[25]) = (*(v249 + 328))(v248, v249);
  v250 = v229[3];
  v251 = v229[4];
  __swift_project_boxed_opaque_existential_1(v229, v250);
  v252 = *(v251 + 336);
  v253 = swift_getAssociatedTypeWitness();
  v254 = sub_1CAD4E4D4();
  v413 = &v402;
  v255 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254);
  v257 = &v402 - v256;
  v252(v250, v251);
  v258 = *(v253 - 8);
  if ((*(v258 + 48))(v257, 1, v253) == 1)
  {
    (*(v255 + 8))(v257, v254);
    *&v452 = 0;
    v450 = 0u;
    v451 = 0u;
  }

  else
  {
    *(&v451 + 1) = v253;
    *&v452 = swift_getAssociatedConformanceWitness();
    v259 = __swift_allocate_boxed_opaque_existential_1(&v450);
    (*(v258 + 32))(v259, v257, v253);
  }

  v260 = v418;
  sub_1CAB23A9C(&v450, &v466, &qword_1EC468198);
  v261 = v446;
  v262 = v442;
  if (v467)
  {
    sub_1CAB284E0(&v466, v465);
    sub_1CAB299C0(v465, v462);
    EventCalendarModelObject.init(_:)(v462, v260);
    __swift_destroy_boxed_opaque_existential_1(v465);
    v263 = v260;
    v264 = 0;
  }

  else
  {
    v263 = v260;
    v264 = 1;
  }

  v415(v263, v264, 1, v416);
  sub_1CAB21B68(&v450, &qword_1EC468198);
  v265 = v447;
  sub_1CABC6AC8(v260, v447 + v417, &qword_1EC464020);
  v266 = v261[3];
  v267 = v261[4];
  __swift_project_boxed_opaque_existential_1(v261, v266);
  v268 = (*(v267 + 344))(v266, v267);
  v269 = v445;
  *(v265 + v445[27]) = v268;
  v270 = v261[3];
  v271 = v261[4];
  __swift_project_boxed_opaque_existential_1(v261, v270);
  *(v265 + v269[28]) = (*(v271 + 352))(v270, v271);
  v272 = v261[3];
  v273 = v261[4];
  __swift_project_boxed_opaque_existential_1(v261, v272);
  if ((*(v273 + 360))(v272, v273))
  {
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E0);
    v274 = sub_1CAD4E784();

    v275 = *(v274 + 16);
    if (v275)
    {
      v465[0] = MEMORY[0x1E69E7CC0];
      sub_1CACBA314(0, v275, 0);
      v276 = v465[0];
      v277 = v274 + 32;
      v278 = v403;
      do
      {
        sub_1CAB299C0(v277, &v450);
        sub_1CAB299C0(&v450, &v466);
        v279 = v467;
        v280 = v468;
        __swift_project_boxed_opaque_existential_1(&v466, v467);
        (*(v280 + 8))(v279, v280);
        v281 = v467;
        v282 = v468;
        __swift_project_boxed_opaque_existential_1(&v466, v467);
        v283 = (*(v282 + 16))(v281, v282);
        __swift_destroy_boxed_opaque_existential_1(&v450);
        v284 = v283 & 1;
        v285 = v449;
        v449[*(v278 + 20)] = v284;
        __swift_destroy_boxed_opaque_existential_1(&v466);
        v465[0] = v276;
        v287 = *(v276 + 16);
        v286 = *(v276 + 24);
        if (v287 >= v286 >> 1)
        {
          sub_1CACBA314(v286 > 1, v287 + 1, 1);
          v285 = v449;
          v276 = v465[0];
        }

        *(v276 + 16) = v287 + 1;
        sub_1CAD2E6A8(v285, v276 + ((*(v448 + 80) + 32) & ~*(v448 + 80)) + *(v448 + 72) * v287, type metadata accessor for EventAlarmModelObject);
        v277 += 40;
        --v275;
      }

      while (v275);

      v262 = v442;
    }

    else
    {

      v276 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v276 = 0;
  }

  v288 = v445;
  v289 = v447;
  v290 = (v447 + v445[30]);
  *(v447 + v445[29]) = v276;
  v291 = v261[3];
  v292 = v261[4];
  __swift_project_boxed_opaque_existential_1(v261, v291);
  *v290 = (*(v292 + 368))(v291, v292);
  v290[1] = v293;
  v294 = v261[3];
  v295 = v261[4];
  __swift_project_boxed_opaque_existential_1(v261, v294);
  *(v289 + v288[31]) = (*(v295 + 376))(v294, v295);
  v296 = v422;
  sub_1CAB23A9C(v289 + v444, v422, &unk_1EC465A70);
  v297 = v419;
  v298 = *(v419 + 48);
  v299 = v443;
  if (v298(v296, 1, v443) == 1)
  {
    v300 = v261[3];
    v301 = v261[4];
    __swift_project_boxed_opaque_existential_1(v261, v300);
    v302 = v426;
    (*(v301 + 176))(v300, v301);
    v299 = v443;
    v303 = v298(v296, 1, v443) == 1;
    v304 = v296;
    v305 = v428;
    if (!v303)
    {
      sub_1CAB21B68(v304, &unk_1EC465A70);
    }
  }

  else
  {
    v302 = v426;
    (*(v297 + 32))(v426, v296, v299);
    v305 = v428;
  }

  v420(v302, 0, 1, v299);
  sub_1CABC6AC8(v302, v447 + v444, &unk_1EC465A70);
  v306 = v261[3];
  v307 = v261[4];
  __swift_project_boxed_opaque_existential_1(v261, v306);
  v308 = (*(v307 + 392))(v306, v307);
  if (v308)
  {
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4681B8);
    v309 = sub_1CAD4E784();

    v310 = *(v309 + 16);
    if (v310)
    {
      v465[0] = MEMORY[0x1E69E7CC0];
      sub_1CACBA358(0, v310, 0);
      v308 = v465[0];
      v311 = v309 + 32;
      do
      {
        sub_1CAB299C0(v311, &v450);
        sub_1CAB299C0(&v450, &v466);
        EventRecurrenceRuleModelObject.init(_:)(&v466, v262);
        __swift_destroy_boxed_opaque_existential_1(&v450);
        v465[0] = v308;
        v313 = *(v308 + 16);
        v312 = *(v308 + 24);
        if (v313 >= v312 >> 1)
        {
          sub_1CACBA358(v312 > 1, v313 + 1, 1);
          v308 = v465[0];
        }

        *(v308 + 16) = v313 + 1;
        sub_1CAD2E6A8(v262, v308 + ((*(v305 + 80) + 32) & ~*(v305 + 80)) + *(v305 + 72) * v313, type metadata accessor for EventRecurrenceRuleModelObject);
        v311 += 40;
        --v310;
      }

      while (v310);
    }

    else
    {

      v308 = MEMORY[0x1E69E7CC0];
    }
  }

  *(v447 + v445[33]) = v308;
  v314 = v261[3];
  v315 = v261[4];
  __swift_project_boxed_opaque_existential_1(v261, v314);
  v316 = *(v315 + 408);
  v317 = swift_getAssociatedTypeWitness();
  v318 = sub_1CAD4E4D4();
  v449 = &v402;
  v319 = *(v318 - 8);
  MEMORY[0x1EEE9AC00](v318);
  v321 = &v402 - v320;
  v316(v314, v315);
  v322 = *(v317 - 8);
  if ((*(v322 + 48))(v321, 1, v317) == 1)
  {
    (*(v319 + 8))(v321, v318);
    *&v452 = 0;
    v450 = 0u;
    v451 = 0u;
  }

  else
  {
    *(&v451 + 1) = v317;
    *&v452 = swift_getAssociatedConformanceWitness();
    v323 = __swift_allocate_boxed_opaque_existential_1(&v450);
    (*(v322 + 32))(v323, v321, v317);
  }

  v325 = v435;
  v324 = v436;
  v326 = v433;
  sub_1CAB23A9C(&v450, &v466, &qword_1EC4681A0);
  v327 = v446;
  if (v467)
  {
    sub_1CAB284E0(&v466, v465);
    sub_1CAB299C0(v465, v462);
    EventOrganizerModelObject.init(_:)(v462, v326);
    __swift_destroy_boxed_opaque_existential_1(v465);
    v328 = v326;
    v329 = 0;
  }

  else
  {
    v328 = v326;
    v329 = 1;
  }

  v424(v328, v329, 1, v425);
  sub_1CAB21B68(&v450, &qword_1EC4681A0);
  sub_1CABC6AC8(v326, v447 + v427, &qword_1EC465AC0);
  v330 = v327[3];
  v331 = v327[4];
  __swift_project_boxed_opaque_existential_1(v327, v330);
  v332 = (*(v331 + 416))(v330, v331);
  if (v332)
  {
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C40);
    v333 = sub_1CAD4E784();

    v334 = *(v333 + 16);
    if (v334)
    {
      v465[0] = MEMORY[0x1E69E7CC0];
      sub_1CACB9E14(0, v334, 0);
      v332 = v465[0];
      v335 = v333 + 32;
      do
      {
        sub_1CAB299C0(v335, &v450);
        sub_1CAB299C0(&v450, &v466);
        EventAttendeeModelObject.init(_:)(&v466, v325);
        __swift_destroy_boxed_opaque_existential_1(&v450);
        v465[0] = v332;
        v337 = *(v332 + 16);
        v336 = *(v332 + 24);
        if (v337 >= v336 >> 1)
        {
          sub_1CACB9E14(v336 > 1, v337 + 1, 1);
          v332 = v465[0];
        }

        *(v332 + 16) = v337 + 1;
        sub_1CAD2E6A8(v325, v332 + ((*(v324 + 80) + 32) & ~*(v324 + 80)) + *(v324 + 72) * v337, type metadata accessor for EventAttendeeModelObject);
        v335 += 40;
        --v334;
      }

      while (v334);
    }

    else
    {

      v332 = MEMORY[0x1E69E7CC0];
    }
  }

  *(v447 + v445[35]) = v332;
  v338 = v327[3];
  v339 = v327[4];
  __swift_project_boxed_opaque_existential_1(v327, v338);
  v340 = *(v339 + 424);
  v341 = swift_getAssociatedTypeWitness();
  v342 = sub_1CAD4E4D4();
  v449 = &v402;
  v343 = *(v342 - 8);
  MEMORY[0x1EEE9AC00](v342);
  v345 = &v402 - v344;
  v340(v338, v339);
  v346 = *(v341 - 8);
  if ((*(v346 + 48))(v345, 1, v341) == 1)
  {
    (*(v343 + 8))(v345, v342);
    *&v452 = 0;
    v450 = 0u;
    v451 = 0u;
  }

  else
  {
    *(&v451 + 1) = v341;
    *&v452 = swift_getAssociatedConformanceWitness();
    v347 = __swift_allocate_boxed_opaque_existential_1(&v450);
    (*(v346 + 32))(v347, v345, v341);
  }

  v348 = v439;
  sub_1CAB23A9C(&v450, &v466, &qword_1EC4681A8);
  v349 = v446;
  if (v467)
  {
    sub_1CAB284E0(&v466, v465);
    sub_1CAB299C0(v465, v462);
    EventAttendeeModelObject.init(_:)(v462, v348);
    __swift_destroy_boxed_opaque_existential_1(v465);
    v350 = v348;
    v351 = 0;
  }

  else
  {
    v350 = v348;
    v351 = 1;
  }

  v429(v350, v351, 1, v438);
  sub_1CAB21B68(&v450, &qword_1EC4681A8);
  v352 = v447;
  sub_1CABC6AC8(v348, v447 + v431, &qword_1EC464E38);
  v353 = v349[3];
  v354 = v349[4];
  __swift_project_boxed_opaque_existential_1(v349, v353);
  v355 = v440;
  (*(v354 + 432))(v353, v354);
  sub_1CABC6AC8(v355, v352 + v432, &qword_1EC465450);
  v356 = v349[3];
  v357 = v349[4];
  __swift_project_boxed_opaque_existential_1(v349, v356);
  v358 = (*(v357 + 440))(v356, v357);
  v359 = v445;
  *(v352 + v445[38]) = v358 & 1;
  v360 = v349[3];
  v361 = v349[4];
  __swift_project_boxed_opaque_existential_1(v349, v360);
  *(v352 + v359[39]) = (*(v361 + 448))(v360, v361);
  v362 = v349[3];
  v363 = v349[4];
  __swift_project_boxed_opaque_existential_1(v349, v362);
  *(v352 + v359[40]) = (*(v363 + 456))(v362, v363) & 1;
  v364 = v349[3];
  v365 = v349[4];
  __swift_project_boxed_opaque_existential_1(v349, v364);
  (*(v365 + 464))(v364, v365);
  sub_1CABC6AC8(v355, v352 + v434, &qword_1EC465450);
  v366 = v349[3];
  v367 = v349[4];
  __swift_project_boxed_opaque_existential_1(v349, v366);
  v368 = *(v367 + 472);
  v369 = swift_getAssociatedTypeWitness();
  v370 = sub_1CAD4E4D4();
  v449 = &v402;
  v371 = *(v370 - 8);
  MEMORY[0x1EEE9AC00](v370);
  v373 = &v402 - v372;
  v368(v366, v367);
  v374 = *(v369 - 8);
  if ((*(v374 + 48))(v373, 1, v369) == 1)
  {
    (*(v371 + 8))(v373, v370);
    *&v452 = 0;
    v450 = 0u;
    v451 = 0u;
  }

  else
  {
    *(&v451 + 1) = v369;
    *&v452 = swift_getAssociatedConformanceWitness();
    v375 = __swift_allocate_boxed_opaque_existential_1(&v450);
    (*(v374 + 32))(v375, v373, v369);
  }

  sub_1CAB23A9C(&v450, &v466, &qword_1EC4681B0);
  if (v467)
  {
    sub_1CAB284E0(&v466, v465);
    sub_1CAB299C0(v465, v462);
    v376 = v463;
    v377 = v464;
    __swift_project_boxed_opaque_existential_1(v462, v463);
    LOBYTE(v377) = (*(v377 + 8))(v376, v377);
    v378 = v463;
    v379 = v464;
    __swift_project_boxed_opaque_existential_1(v462, v463);
    v380 = (*(v379 + 16))(v378, v379);
    v382 = v381;
    v383 = v463;
    v384 = v464;
    __swift_project_boxed_opaque_existential_1(v462, v463);
    (*(v384 + 24))(v461, v383, v384);
    __swift_destroy_boxed_opaque_existential_1(v465);
    v385 = v461[0];
    v386 = v461[1];
    v387 = v461[2];
    v388 = v461[3];
    sub_1CAC3C300(0, 0, 0, 0);

    sub_1CAC3C27C(v385, v386, v387, v388);
    __swift_destroy_boxed_opaque_existential_1(v462);

    sub_1CAC3C300(v385, v386, v387, v388);
    v389 = v377 & 1;
  }

  else
  {
    v389 = 0;
    v380 = 0;
    v385 = 0;
    v386 = 0;
    v387 = 0;
    v388 = 0;
    v382 = 1;
  }

  sub_1CAB21B68(&v450, &qword_1EC4681B0);
  v390 = v437;
  sub_1CAC80A24(*v437, v437[1], v437[2], v437[3], v437[4], v437[5], v437[6]);
  *v390 = v389;
  v390[1] = v380;
  v390[2] = v382;
  v390[3] = v385;
  v390[4] = v386;
  v390[5] = v387;
  v390[6] = v388;
  v391 = v446;
  v392 = *(v446 + 3);
  v393 = *(v446 + 4);
  __swift_project_boxed_opaque_existential_1(v446, v392);
  v394 = (*(v393 + 480))(v392, v393);
  v395 = v445;
  v396 = v447;
  *(v447 + v445[43]) = v394 & 1;
  v397 = v391[3];
  v398 = v391[4];
  __swift_project_boxed_opaque_existential_1(v391, v397);
  *(v396 + v395[44]) = (*(v398 + 488))(v397, v398) & 1;
  v399 = v391[3];
  v400 = v391[4];
  __swift_project_boxed_opaque_existential_1(v391, v399);
  *(v396 + v395[45]) = (*(v400 + 496))(v399, v400) & 1;
  sub_1CAD2E710(v396, v441, type metadata accessor for EventModelObject);
  __swift_destroy_boxed_opaque_existential_1(v391);
  return sub_1CAD2DF04(v396, type metadata accessor for EventModelObject);
}

uint64_t EventModelObject.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EventModelObject.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EventModelObject.uniqueID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EventModelObject.uniqueID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t EventModelObject.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t EventModelObject.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t EventModelObject.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventModelObject() + 28);
  v4 = sub_1CAD4C0F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventModelObject.startDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EventModelObject() + 28);
  v4 = sub_1CAD4C0F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EventModelObject.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventModelObject() + 32);
  v4 = sub_1CAD4C0F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventModelObject.endDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EventModelObject() + 32);
  v4 = sub_1CAD4C0F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EventModelObject.isAllDay.setter(char a1)
{
  result = type metadata accessor for EventModelObject();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t EventModelObject.isProposedTime.setter(char a1)
{
  result = type metadata accessor for EventModelObject();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t EventModelObject.isFloating.setter(char a1)
{
  result = type metadata accessor for EventModelObject();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t EventModelObject.location.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventModelObject() + 64));

  return v1;
}

uint64_t EventModelObject.location.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EventModelObject() + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t EventModelObject.locationWithoutPrediction.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventModelObject() + 68));

  return v1;
}

uint64_t EventModelObject.locationWithoutPrediction.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EventModelObject() + 68));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t EventModelObject.locationsWithoutPrediction.getter()
{
  type metadata accessor for EventModelObject();
}

uint64_t EventModelObject.locationsWithoutPrediction.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EventModelObject() + 72);

  *(v1 + v3) = a1;
  return result;
}

uint64_t EventModelObject.structuredLocation.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EventModelObject() + 76));
  v4 = v3[7];
  v5 = v3[9];
  v27 = v3[8];
  v28 = v5;
  v6 = v3[9];
  v29 = v3[10];
  v7 = v3[3];
  v8 = v3[5];
  v23 = v3[4];
  v9 = v23;
  v24 = v8;
  v10 = v3[5];
  v11 = v3[7];
  v25 = v3[6];
  v12 = v25;
  v26 = v11;
  v13 = v3[1];
  v20[0] = *v3;
  v20[1] = v13;
  v14 = v3[3];
  v16 = *v3;
  v15 = v3[1];
  v21 = v3[2];
  v17 = v21;
  v22 = v14;
  a1[8] = v27;
  a1[9] = v6;
  a1[10] = v3[10];
  a1[4] = v9;
  a1[5] = v10;
  a1[6] = v12;
  a1[7] = v4;
  *a1 = v16;
  a1[1] = v15;
  a1[2] = v17;
  a1[3] = v7;
  return sub_1CAB23A9C(v20, &v19, &qword_1EC463C00);
}

__n128 EventModelObject.structuredLocation.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for EventModelObject() + 76));
  v4 = v3[9];
  v14[8] = v3[8];
  v14[9] = v4;
  v14[10] = v3[10];
  v5 = v3[5];
  v14[4] = v3[4];
  v14[5] = v5;
  v6 = v3[7];
  v14[6] = v3[6];
  v14[7] = v6;
  v7 = v3[1];
  v14[0] = *v3;
  v14[1] = v7;
  v8 = v3[3];
  v14[2] = v3[2];
  v14[3] = v8;
  sub_1CAB21B68(v14, &qword_1EC463C00);
  v9 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v9;
  v3[10] = *(a1 + 160);
  v10 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v10;
  v11 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v11;
  v12 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v12;
  result = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = result;
  return result;
}

uint64_t EventModelObject.structuredLocationWithoutPrediction.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EventModelObject() + 80));
  v4 = v3[7];
  v5 = v3[9];
  v27 = v3[8];
  v28 = v5;
  v6 = v3[9];
  v29 = v3[10];
  v7 = v3[5];
  v8 = v3[7];
  v25 = v3[6];
  v9 = v25;
  v26 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v23 = v3[4];
  v12 = v23;
  v24 = v11;
  v13 = v3[1];
  v20[0] = *v3;
  v20[1] = v13;
  v14 = v3[3];
  v16 = *v3;
  v15 = v3[1];
  v21 = v3[2];
  v17 = v21;
  v22 = v14;
  a1[8] = v27;
  a1[9] = v6;
  a1[10] = v3[10];
  a1[4] = v12;
  a1[5] = v7;
  a1[6] = v9;
  a1[7] = v4;
  *a1 = v16;
  a1[1] = v15;
  a1[2] = v17;
  a1[3] = v10;
  return sub_1CAB23A9C(v20, &v19, &qword_1EC463C00);
}

__n128 EventModelObject.structuredLocationWithoutPrediction.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for EventModelObject() + 80));
  v4 = v3[9];
  v14[8] = v3[8];
  v14[9] = v4;
  v14[10] = v3[10];
  v5 = v3[7];
  v14[6] = v3[6];
  v14[7] = v5;
  v6 = v3[5];
  v14[4] = v3[4];
  v14[5] = v6;
  v7 = v3[1];
  v14[0] = *v3;
  v14[1] = v7;
  v8 = v3[3];
  v14[2] = v3[2];
  v14[3] = v8;
  sub_1CAB21B68(v14, &qword_1EC463C00);
  v9 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v9;
  v3[10] = *(a1 + 160);
  v10 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v10;
  v11 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v11;
  v12 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v12;
  result = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = result;
  return result;
}

uint64_t EventModelObject.preferredLocation.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EventModelObject() + 84));
  v4 = v3[7];
  v5 = v3[9];
  v27 = v3[8];
  v28 = v5;
  v6 = v3[9];
  v29 = v3[10];
  v7 = v3[5];
  v8 = v3[7];
  v25 = v3[6];
  v9 = v25;
  v26 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v23 = v3[4];
  v12 = v23;
  v24 = v11;
  v13 = v3[1];
  v20[0] = *v3;
  v20[1] = v13;
  v14 = v3[3];
  v16 = *v3;
  v15 = v3[1];
  v21 = v3[2];
  v17 = v21;
  v22 = v14;
  a1[8] = v27;
  a1[9] = v6;
  a1[10] = v3[10];
  a1[4] = v12;
  a1[5] = v7;
  a1[6] = v9;
  a1[7] = v4;
  *a1 = v16;
  a1[1] = v15;
  a1[2] = v17;
  a1[3] = v10;
  return sub_1CAB23A9C(v20, &v19, &qword_1EC463C00);
}

__n128 EventModelObject.preferredLocation.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for EventModelObject() + 84));
  v4 = v3[9];
  v14[8] = v3[8];
  v14[9] = v4;
  v14[10] = v3[10];
  v5 = v3[7];
  v14[6] = v3[6];
  v14[7] = v5;
  v6 = v3[5];
  v14[4] = v3[4];
  v14[5] = v6;
  v7 = v3[1];
  v14[0] = *v3;
  v14[1] = v7;
  v8 = v3[3];
  v14[2] = v3[2];
  v14[3] = v8;
  sub_1CAB21B68(v14, &qword_1EC463C00);
  v9 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v9;
  v3[10] = *(a1 + 160);
  v10 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v10;
  v11 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v11;
  v12 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v12;
  result = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = result;
  return result;
}

uint64_t EventModelObject.travelTime.setter(double a1)
{
  result = type metadata accessor for EventModelObject();
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t EventModelObject.travelStartLocation.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EventModelObject() + 92));
  v4 = v3[7];
  v5 = v3[9];
  v27 = v3[8];
  v28 = v5;
  v6 = v3[9];
  v29 = v3[10];
  v7 = v3[5];
  v8 = v3[7];
  v25 = v3[6];
  v9 = v25;
  v26 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v23 = v3[4];
  v12 = v23;
  v24 = v11;
  v13 = v3[1];
  v20[0] = *v3;
  v20[1] = v13;
  v14 = v3[3];
  v16 = *v3;
  v15 = v3[1];
  v21 = v3[2];
  v17 = v21;
  v22 = v14;
  a1[8] = v27;
  a1[9] = v6;
  a1[10] = v3[10];
  a1[4] = v12;
  a1[5] = v7;
  a1[6] = v9;
  a1[7] = v4;
  *a1 = v16;
  a1[1] = v15;
  a1[2] = v17;
  a1[3] = v10;
  return sub_1CAB23A9C(v20, &v19, &qword_1EC463C00);
}

__n128 EventModelObject.travelStartLocation.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for EventModelObject() + 92));
  v4 = v3[9];
  v14[8] = v3[8];
  v14[9] = v4;
  v14[10] = v3[10];
  v5 = v3[7];
  v14[6] = v3[6];
  v14[7] = v5;
  v6 = v3[5];
  v14[4] = v3[4];
  v14[5] = v6;
  v7 = v3[1];
  v14[0] = *v3;
  v14[1] = v7;
  v8 = v3[3];
  v14[2] = v3[2];
  v14[3] = v8;
  sub_1CAB21B68(v14, &qword_1EC463C00);
  v9 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v9;
  v3[10] = *(a1 + 160);
  v10 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v10;
  v11 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v11;
  v12 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v12;
  result = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = result;
  return result;
}

uint64_t EventModelObject.travelRoutingMode.setter(uint64_t a1)
{
  result = type metadata accessor for EventModelObject();
  *(v1 + *(result + 96)) = a1;
  return result;
}

uint64_t EventModelObject.travelAdvisoryBehavior.setter(uint64_t a1)
{
  result = type metadata accessor for EventModelObject();
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t EventModelObject.privacyLevel.setter(uint64_t a1)
{
  result = type metadata accessor for EventModelObject();
  *(v1 + *(result + 108)) = a1;
  return result;
}

uint64_t sub_1CAD21EA4(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for EventModelObject();
  v5 = result;
  v6 = 0;
  if (v3 == 1)
  {
    v7 = a2 + *(result + 104);
    v8 = type metadata accessor for EventCalendarModelObject();
    result = (*(*(v8 - 8) + 48))(v7, 1, v8);
    if (result || (v9 = *(v7 + 184), v10 = *(v7 + 216), v13[6] = *(v7 + 200), v14[0] = v10, *(v14 + 10) = *(v7 + 226), v11 = *(v7 + 120), v12 = *(v7 + 152), v13[2] = *(v7 + 136), v13[3] = v12, v13[4] = *(v7 + 168), v13[5] = v9, v13[0] = *(v7 + 104), v13[1] = v11, result = sub_1CABED4EC(v13), result == 1))
    {
      v6 = 2;
    }

    else
    {
      v6 = *(v7 + 176);
    }
  }

  *(a2 + *(v5 + 108)) = v6;
  return result;
}

uint64_t EventModelObject.isPrivate.setter(char a1)
{
  result = type metadata accessor for EventModelObject();
  v4 = result;
  v5 = 0;
  if (a1)
  {
    v6 = v1 + *(result + 104);
    v7 = type metadata accessor for EventCalendarModelObject();
    result = (*(*(v7 - 8) + 48))(v6, 1, v7);
    if (result || (v8 = *(v6 + 184), v9 = *(v6 + 216), v12[6] = *(v6 + 200), v13[0] = v9, *(v13 + 10) = *(v6 + 226), v10 = *(v6 + 120), v11 = *(v6 + 152), v12[2] = *(v6 + 136), v12[3] = v11, v12[4] = *(v6 + 168), v12[5] = v8, v12[0] = *(v6 + 104), v12[1] = v10, result = sub_1CABED4EC(v12), result == 1))
    {
      v5 = 2;
    }

    else
    {
      v5 = *(v6 + 176);
    }
  }

  *(v1 + *(v4 + 108)) = v5;
  return result;
}

void (*EventModelObject.isPrivate.modify(uint64_t *a1))(char **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 144) = v1;
  v5 = type metadata accessor for EventModelObject();
  *(v4 + 152) = v5;
  v6 = *(v5 + 108);
  *(v4 + 140) = v6;
  *(v4 + 138) = *(v1 + v6) != 0;
  return sub_1CAD22110;
}

void sub_1CAD22110(char **a1)
{
  v1 = *a1;
  if ((*a1)[138])
  {
    v2 = *(v1 + 18) + *(*(v1 + 19) + 104);
    v3 = type metadata accessor for EventCalendarModelObject();
    if ((*(*(v3 - 8) + 48))(v2, 1, v3) || (*v1 = *(v2 + 104), v4 = *(v2 + 120), v5 = *(v2 + 136), v6 = *(v2 + 168), *(v1 + 3) = *(v2 + 152), *(v1 + 4) = v6, *(v1 + 1) = v4, *(v1 + 2) = v5, v7 = *(v2 + 184), v8 = *(v2 + 200), v9 = *(v2 + 216), *(v1 + 122) = *(v2 + 226), *(v1 + 6) = v8, *(v1 + 7) = v9, *(v1 + 5) = v7, sub_1CABED4EC(v1) == 1))
    {
      v10 = 2;
    }

    else
    {
      v10 = *(v2 + 176);
    }
  }

  else
  {
    v10 = 0;
  }

  *(*(v1 + 18) + *(v1 + 35)) = v10;

  free(v1);
}

uint64_t EventModelObject.status.setter(uint64_t a1)
{
  result = type metadata accessor for EventModelObject();
  *(v1 + *(result + 112)) = a1;
  return result;
}

uint64_t EventModelObject.alarms.getter()
{
  type metadata accessor for EventModelObject();
}

uint64_t EventModelObject.alarms.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EventModelObject() + 116);

  *(v1 + v3) = a1;
  return result;
}

uint64_t EventModelObject.notes.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventModelObject() + 120));

  return v1;
}

uint64_t EventModelObject.notes.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EventModelObject() + 120));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t EventModelObject.availability.setter(uint64_t a1)
{
  result = type metadata accessor for EventModelObject();
  *(v1 + *(result + 124)) = a1;
  return result;
}

uint64_t EventModelObject.recurrenceRules.getter()
{
  type metadata accessor for EventModelObject();
}

uint64_t EventModelObject.recurrenceRules.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EventModelObject() + 132);

  *(v1 + v3) = a1;
  return result;
}

void (*EventModelObject.singleRecurrenceRule.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v5[3] = v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v10);
    v5[5] = malloc(v10);
    v5[6] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[7] = v11;
  v13 = *(type metadata accessor for EventModelObject() + 132);
  *(v5 + 18) = v13;
  v14 = *(v1 + v13);
  v5[8] = v14;
  if (v14 && *(v14 + 16))
  {
    sub_1CAD2E710(v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v12, type metadata accessor for EventRecurrenceRuleModelObject);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v8 + 56))(v12, v15, 1, v6);
  return sub_1CAD22860;
}

void sub_1CAD22860(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v4 = v2[5];
    v6 = v2[1];
    v7 = v2[2];
    sub_1CAB23A9C(v3, v4, &qword_1EC463170);
    sub_1CAB23A9C(v4, v5, &qword_1EC463170);
    v8 = (*(v7 + 48))(v5, 1, v6);
    v9 = v2[5];
    if (v8 == 1)
    {
      sub_1CAB21B68(v2[5], &qword_1EC463170);

      v10 = 0;
    }

    else
    {
      v17 = v2[3];
      v18 = v2[2];
      sub_1CAD2E6A8(v2[4], v17, type metadata accessor for EventRecurrenceRuleModelObject);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465D50);
      v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1CAD58380;
      sub_1CAD2E6A8(v17, v10 + v19, type metadata accessor for EventRecurrenceRuleModelObject);
      sub_1CAB21B68(v9, &qword_1EC463170);
    }

    v21 = v2[6];
    v20 = v2[7];
    v23 = v2[4];
    v22 = v2[5];
    v24 = v2[3];
    *(*v2 + *(v2 + 18)) = v10;
    sub_1CAB21B68(v20, &qword_1EC463170);
  }

  else
  {
    v11 = v2[6];
    v12 = v2[1];
    v13 = v2[2];
    sub_1CAB23A9C(v3, v11, &qword_1EC463170);
    v14 = (*(v13 + 48))(v11, 1, v12);
    v15 = v2[7];
    if (v14 == 1)
    {
      sub_1CAB21B68(v2[7], &qword_1EC463170);

      v16 = 0;
    }

    else
    {
      v26 = v2[2];
      v25 = v2[3];
      sub_1CAD2E6A8(v2[6], v25, type metadata accessor for EventRecurrenceRuleModelObject);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465D50);
      v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1CAD58380;
      sub_1CAD2E6A8(v25, v16 + v27, type metadata accessor for EventRecurrenceRuleModelObject);
      sub_1CAB21B68(v15, &qword_1EC463170);
    }

    v21 = v2[6];
    v20 = v2[7];
    v23 = v2[4];
    v22 = v2[5];
    v24 = v2[3];
    *(*v2 + *(v2 + 18)) = v16;
  }

  free(v20);
  free(v21);
  free(v22);
  free(v23);
  free(v24);

  free(v2);
}

uint64_t EventModelObject.attendees.getter()
{
  type metadata accessor for EventModelObject();
}

uint64_t EventModelObject.attendees.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EventModelObject() + 140);

  *(v1 + v3) = a1;
  return result;
}

uint64_t EventModelObject.hasAttachment.setter(char a1)
{
  result = type metadata accessor for EventModelObject();
  *(v1 + *(result + 152)) = a1;
  return result;
}

uint64_t EventModelObject.attachments.getter()
{
  type metadata accessor for EventModelObject();
}

uint64_t EventModelObject.attachments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EventModelObject() + 156);

  *(v1 + v3) = a1;
  return result;
}

uint64_t EventModelObject.conferenceURLForDisplayCached.setter(char a1)
{
  result = type metadata accessor for EventModelObject();
  *(v1 + *(result + 160)) = a1;
  return result;
}

void EventModelObject.integration.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EventModelObject() + 168));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;

  sub_1CAD2A458(v4, v5, v6, v7, v8, v9, v10);
}

__n128 EventModelObject.integration.setter(uint64_t a1)
{
  v7 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1 + *(type metadata accessor for EventModelObject() + 168);
  sub_1CAC80A24(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48));
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v5;
  result = v7;
  *(v4 + 32) = v7;
  *(v4 + 48) = v3;
  return result;
}

uint64_t EventModelObject.isEditable.setter(char a1)
{
  result = type metadata accessor for EventModelObject();
  *(v1 + *(result + 172)) = a1;
  return result;
}

uint64_t EventModelObject.isNew.setter(char a1)
{
  result = type metadata accessor for EventModelObject();
  *(v1 + *(result + 176)) = a1;
  return result;
}

uint64_t EventModelObject.isSuggestedEvent.setter(char a1)
{
  result = type metadata accessor for EventModelObject();
  *(v1 + *(result + 180)) = a1;
  return result;
}

uint64_t EventModelObject.hash(into:)(uint64_t a1)
{
  v3 = sub_1CAD4BFF4();
  v185 = *(v3 - 8);
  v186 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v184 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v183 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v182 = &v157 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E38);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v181 = &v157 - v10;
  v11 = type metadata accessor for EventAttendeeModelObject(0);
  v179 = *(v11 - 8);
  v180 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v163 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v169 = &v157 - v14;
  v15 = type metadata accessor for EventOrganizerModelObject(0);
  v177 = *(v15 - 8);
  v178 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v162 = &v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v176 = &v157 - v18;
  v19 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v157 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CAD4C0F4();
  v174 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v161 = &v157 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v173 = &v157 - v25;
  v26 = type metadata accessor for EventCalendarModelObject();
  v171 = *(v26 - 8);
  v172 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v160 = &v157 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v170 = &v157 - v29;
  v30 = type metadata accessor for EventVirtualConferenceModelObject(0);
  v167 = *(v30 - 8);
  v168 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v158 = &v157 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A40);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v166 = &v157 - v33;
  v34 = sub_1CAD4C404();
  v188 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v187 = &v157 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v165 = &v157 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v164 = &v157 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v157 - v41;
  sub_1CAD4E054();
  sub_1CAD4E054();
  sub_1CAD4E054();
  v43 = type metadata accessor for EventModelObject();
  v44 = sub_1CAD2FEA4(&qword_1EC4623F8, MEMORY[0x1E6969530]);
  sub_1CAD4DEB4();
  v175 = v22;
  v159 = v44;
  v45 = v188;
  sub_1CAD4DEB4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  v189 = v1;
  v190 = v43;
  sub_1CAB23A9C(v1 + *(v43 + 44), v42, &qword_1EC4635D0);
  v46 = *(v45 + 48);
  if (v46(v42, 1, v34) == 1)
  {
    sub_1CAD4EAA4();
    v47 = v187;
  }

  else
  {
    v48 = v187;
    (*(v45 + 32))(v187, v42, v34);
    sub_1CAD4EAA4();
    sub_1CAD2FEA4(&qword_1EC4681C0, MEMORY[0x1E6969BC0]);
    v47 = v48;
    sub_1CAD4DEB4();
    (*(v45 + 8))(v48, v34);
  }

  v49 = v164;
  sub_1CAB23A9C(v189 + v190[12], v164, &qword_1EC4635D0);
  v50 = v46(v49, 1, v34);
  v51 = v169;
  if (v50 == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    v52 = v188;
    (*(v188 + 32))(v47, v49, v34);
    sub_1CAD4EAA4();
    sub_1CAD2FEA4(&qword_1EC4681C0, MEMORY[0x1E6969BC0]);
    sub_1CAD4DEB4();
    (*(v52 + 8))(v47, v34);
  }

  v54 = v189;
  v53 = v190;
  sub_1CAD4EAA4();
  v55 = v165;
  sub_1CAB23A9C(v54 + v53[14], v165, &qword_1EC4635D0);
  if (v46(v55, 1, v34) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    v57 = v187;
    v56 = v188;
    (*(v188 + 32))(v187, v55, v34);
    sub_1CAD4EAA4();
    sub_1CAD2FEA4(&qword_1EC4681C0, MEMORY[0x1E6969BC0]);
    sub_1CAD4DEB4();
    (*(v56 + 8))(v57, v34);
  }

  v58 = v190;
  v59 = v166;
  sub_1CAB23A9C(v54 + v190[15], v166, &qword_1EC467A40);
  if ((*(v167 + 48))(v59, 1, v168) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    v60 = v158;
    sub_1CAD2E6A8(v59, v158, type metadata accessor for EventVirtualConferenceModelObject);
    sub_1CAD4EAA4();
    EventVirtualConferenceModelObject.hash(into:)(a1);
    sub_1CAD2DF04(v60, type metadata accessor for EventVirtualConferenceModelObject);
  }

  if (*(v54 + v58[16] + 8))
  {
    sub_1CAD4EAA4();
    sub_1CAD4E054();
  }

  else
  {
    sub_1CAD4EAA4();
  }

  if (*(v54 + v58[17] + 8))
  {
    sub_1CAD4EAA4();
    sub_1CAD4E054();
  }

  else
  {
    sub_1CAD4EAA4();
  }

  v61 = *(v54 + v58[18]);
  if (v61)
  {
    sub_1CAD4EAA4();
    MEMORY[0x1CCAA7D10](*(v61 + 16));
    v62 = *(v61 + 16);
    if (v62)
    {
      v63 = v61 + 40;
      do
      {

        sub_1CAD4E054();

        v63 += 16;
        --v62;
      }

      while (v62);
    }
  }

  else
  {
    sub_1CAD4EAA4();
  }

  v64 = (v54 + v58[19]);
  v65 = v64[7];
  v66 = v64[9];
  v288 = v64[8];
  v289 = v66;
  v67 = v64[9];
  v290 = v64[10];
  v68 = v64[3];
  v69 = v64[5];
  v284 = v64[4];
  v285 = v69;
  v71 = v64[5];
  v70 = v64[6];
  v72 = v70;
  v287 = v64[7];
  v286 = v70;
  v73 = v64[1];
  v280 = *v64;
  v281 = v73;
  v74 = v64[2];
  v76 = *v64;
  v75 = v64[1];
  v283 = v64[3];
  v282 = v74;
  v291[8] = v288;
  v291[9] = v67;
  v291[10] = v64[10];
  v291[4] = v284;
  v291[5] = v71;
  v291[7] = v65;
  v291[6] = v72;
  v291[0] = v76;
  v291[1] = v75;
  v291[3] = v68;
  v291[2] = v74;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v291) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    v255 = v288;
    v256 = v289;
    v257 = v290;
    v251 = v284;
    v252 = v285;
    v254 = v287;
    v253 = v286;
    v247 = v280;
    v248 = v281;
    v250 = v283;
    v249 = v282;
    sub_1CAD4EAA4();
    v266 = v288;
    v267 = v289;
    v268 = v290;
    v262 = v284;
    v263 = v285;
    v265 = v287;
    v264 = v286;
    v258 = v280;
    v259 = v281;
    v261 = v283;
    v260 = v282;
    sub_1CABD3C1C(&v258, &v269);
    EventLocationModelObject.hash(into:)();
    v277 = v255;
    v278 = v256;
    v279 = v257;
    v273 = v251;
    v274 = v252;
    v276 = v254;
    v275 = v253;
    v269 = v247;
    v270 = v248;
    v272 = v250;
    v271 = v249;
    sub_1CABD3C78(&v269);
  }

  v77 = (v54 + v58[20]);
  v78 = v77[7];
  v79 = v77[9];
  v266 = v77[8];
  v267 = v79;
  v80 = v77[9];
  v268 = v77[10];
  v81 = v77[3];
  v82 = v77[5];
  v262 = v77[4];
  v263 = v82;
  v84 = v77[5];
  v83 = v77[6];
  v85 = v83;
  v265 = v77[7];
  v264 = v83;
  v86 = v77[1];
  v258 = *v77;
  v259 = v86;
  v87 = v77[2];
  v89 = *v77;
  v88 = v77[1];
  v261 = v77[3];
  v260 = v87;
  v277 = v266;
  v278 = v80;
  v279 = v77[10];
  v273 = v262;
  v274 = v84;
  v276 = v78;
  v275 = v85;
  v269 = v89;
  v270 = v88;
  v272 = v81;
  v271 = v87;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(&v269) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    v233 = v266;
    v234 = v267;
    v235 = v268;
    v229 = v262;
    v230 = v263;
    v232 = v265;
    v231 = v264;
    v225 = v258;
    v226 = v259;
    v227 = v260;
    v228 = v261;
    sub_1CAD4EAA4();
    v244 = v266;
    v245 = v267;
    v246 = v268;
    v240 = v262;
    v241 = v263;
    v243 = v265;
    v242 = v264;
    v236 = v258;
    v237 = v259;
    v239 = v261;
    v238 = v260;
    sub_1CABD3C1C(&v236, &v247);
    EventLocationModelObject.hash(into:)();
    v255 = v233;
    v256 = v234;
    v257 = v235;
    v251 = v229;
    v252 = v230;
    v254 = v232;
    v253 = v231;
    v247 = v225;
    v248 = v226;
    v250 = v228;
    v249 = v227;
    sub_1CABD3C78(&v247);
  }

  v90 = (v54 + v58[21]);
  v91 = v90[7];
  v92 = v90[9];
  v244 = v90[8];
  v245 = v92;
  v93 = v90[9];
  v246 = v90[10];
  v94 = v90[3];
  v95 = v90[5];
  v240 = v90[4];
  v241 = v95;
  v97 = v90[5];
  v96 = v90[6];
  v98 = v96;
  v243 = v90[7];
  v242 = v96;
  v99 = v90[1];
  v236 = *v90;
  v237 = v99;
  v100 = v90[2];
  v102 = *v90;
  v101 = v90[1];
  v239 = v90[3];
  v238 = v100;
  v255 = v244;
  v256 = v93;
  v257 = v90[10];
  v251 = v240;
  v252 = v97;
  v254 = v91;
  v253 = v98;
  v247 = v102;
  v248 = v101;
  v250 = v94;
  v249 = v100;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(&v247) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    v211 = v244;
    v212 = v245;
    v213 = v246;
    v207 = v240;
    v208 = v241;
    v209 = v242;
    v210 = v243;
    v203 = v236;
    v204 = v237;
    v205 = v238;
    v206 = v239;
    sub_1CAD4EAA4();
    v222 = v244;
    v223 = v245;
    v224 = v246;
    v218 = v240;
    v219 = v241;
    v220 = v242;
    v221 = v243;
    v214 = v236;
    v215 = v237;
    v216 = v238;
    v217 = v239;
    sub_1CABD3C1C(&v214, &v225);
    EventLocationModelObject.hash(into:)();
    v233 = v211;
    v234 = v212;
    v235 = v213;
    v229 = v207;
    v230 = v208;
    v232 = v210;
    v231 = v209;
    v225 = v203;
    v226 = v204;
    v227 = v205;
    v228 = v206;
    sub_1CABD3C78(&v225);
  }

  v103 = *(v54 + v58[22]);
  if (v103 == 0.0)
  {
    v103 = 0.0;
  }

  MEMORY[0x1CCAA7D30](*&v103);
  v104 = (v54 + v58[23]);
  v105 = v104[7];
  v106 = v104[9];
  v222 = v104[8];
  v223 = v106;
  v107 = v104[9];
  v224 = v104[10];
  v108 = v104[3];
  v109 = v104[5];
  v218 = v104[4];
  v219 = v109;
  v110 = v104[5];
  v111 = v104[7];
  v220 = v104[6];
  v221 = v111;
  v112 = v104[1];
  v214 = *v104;
  v215 = v112;
  v113 = v104[3];
  v115 = *v104;
  v114 = v104[1];
  v216 = v104[2];
  v217 = v113;
  v233 = v222;
  v234 = v107;
  v235 = v104[10];
  v229 = v218;
  v230 = v110;
  v232 = v105;
  v231 = v220;
  v225 = v115;
  v226 = v114;
  v227 = v216;
  v228 = v108;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(&v225) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    v199 = v222;
    v200 = v223;
    v201 = v224;
    v195 = v218;
    v196 = v219;
    v197 = v220;
    v198 = v221;
    v191 = v214;
    v192 = v215;
    v193 = v216;
    v194 = v217;
    sub_1CAD4EAA4();
    v202[8] = v222;
    v202[9] = v223;
    v202[10] = v224;
    v202[4] = v218;
    v202[5] = v219;
    v202[6] = v220;
    v202[7] = v221;
    v202[0] = v214;
    v202[1] = v215;
    v202[2] = v216;
    v202[3] = v217;
    sub_1CABD3C1C(v202, &v203);
    EventLocationModelObject.hash(into:)();
    v211 = v199;
    v212 = v200;
    v213 = v201;
    v207 = v195;
    v208 = v196;
    v209 = v197;
    v210 = v198;
    v203 = v191;
    v204 = v192;
    v205 = v193;
    v206 = v194;
    sub_1CABD3C78(&v203);
  }

  MEMORY[0x1CCAA7D10](*(v54 + v58[24]));
  MEMORY[0x1CCAA7D10](*(v54 + v58[25]));
  v116 = v170;
  sub_1CAB23A9C(v54 + v58[26], v170, &qword_1EC464020);
  if ((*(v171 + 48))(v116, 1, v172) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    v117 = v160;
    sub_1CAD2E6A8(v116, v160, type metadata accessor for EventCalendarModelObject);
    sub_1CAD4EAA4();
    EventCalendarModelObject.hash(into:)(a1);
    sub_1CAD2DF04(v117, type metadata accessor for EventCalendarModelObject);
  }

  MEMORY[0x1CCAA7D10](*(v54 + v58[27]));
  MEMORY[0x1CCAA7D10](*(v54 + v58[28]));
  v118 = *(v54 + v58[29]);
  sub_1CAD4EAA4();
  if (v118)
  {
    sub_1CACBC4DC(a1, v118);
  }

  if (*(v54 + v58[30] + 8))
  {
    sub_1CAD4EAA4();
    sub_1CAD4E054();
  }

  else
  {
    sub_1CAD4EAA4();
  }

  MEMORY[0x1CCAA7D10](*(v54 + v58[31]));
  v119 = v173;
  sub_1CAB23A9C(v54 + v58[32], v173, &unk_1EC465A70);
  v121 = v174;
  v120 = v175;
  if ((*(v174 + 48))(v119, 1, v175) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    v122 = v161;
    (*(v121 + 32))(v161, v119, v120);
    sub_1CAD4EAA4();
    sub_1CAD4DEB4();
    (*(v121 + 8))(v122, v120);
  }

  v123 = *(v54 + v58[33]);
  if (v123)
  {
    sub_1CAD4EAA4();
    MEMORY[0x1CCAA7D10](*(v123 + 16));
    v124 = *(v123 + 16);
    if (v124)
    {
      v125 = v123 + ((*(v157 + 80) + 32) & ~*(v157 + 80));
      v126 = *(v157 + 72);
      do
      {
        sub_1CAD2E710(v125, v21, type metadata accessor for EventRecurrenceRuleModelObject);
        EventRecurrenceRuleModelObject.hash(into:)();
        sub_1CAD2DF04(v21, type metadata accessor for EventRecurrenceRuleModelObject);
        v125 += v126;
        --v124;
      }

      while (v124);
    }
  }

  else
  {
    sub_1CAD4EAA4();
  }

  v127 = v176;
  sub_1CAB23A9C(v54 + v58[34], v176, &qword_1EC465AC0);
  if ((*(v177 + 48))(v127, 1, v178) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    v128 = v162;
    sub_1CAD2E6A8(v127, v162, type metadata accessor for EventOrganizerModelObject);
    sub_1CAD4EAA4();
    EventOrganizerModelObject.hash(into:)();
    sub_1CAD2DF04(v128, type metadata accessor for EventOrganizerModelObject);
  }

  v129 = v179;
  v130 = *(v54 + v58[35]);
  if (v130)
  {
    sub_1CAD4EAA4();
    MEMORY[0x1CCAA7D10](*(v130 + 16));
    v131 = *(v130 + 16);
    if (v131)
    {
      v132 = v130 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
      v133 = *(v129 + 72);
      do
      {
        sub_1CAD2E710(v132, v51, type metadata accessor for EventAttendeeModelObject);
        EventAttendeeModelObject.hash(into:)();
        sub_1CAD2DF04(v51, type metadata accessor for EventAttendeeModelObject);
        v132 += v133;
        --v131;
      }

      while (v131);
    }
  }

  else
  {
    sub_1CAD4EAA4();
  }

  v134 = v181;
  sub_1CAB23A9C(v54 + v58[36], v181, &qword_1EC464E38);
  if ((*(v129 + 48))(v134, 1, v180) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    v135 = v163;
    sub_1CAD2E6A8(v134, v163, type metadata accessor for EventAttendeeModelObject);
    sub_1CAD4EAA4();
    EventAttendeeModelObject.hash(into:)();
    sub_1CAD2DF04(v135, type metadata accessor for EventAttendeeModelObject);
  }

  v137 = v185;
  v136 = v186;
  v138 = v182;
  sub_1CAB23A9C(v54 + v58[37], v182, &qword_1EC465450);
  v139 = *(v137 + 48);
  if (v139(v138, 1, v136) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    v140 = v184;
    (*(v137 + 32))(v184, v138, v136);
    sub_1CAD4EAA4();
    sub_1CAD2FEA4(&qword_1EC463C50, MEMORY[0x1E6968FB0]);
    sub_1CAD4DEB4();
    (*(v137 + 8))(v140, v136);
  }

  sub_1CAD4EAA4();
  sub_1CACBC1D8(a1, *(v54 + v58[39]));
  sub_1CAD4EAA4();
  v141 = v183;
  sub_1CAB23A9C(v54 + v58[41], v183, &qword_1EC465450);
  if (v139(v141, 1, v136) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    v142 = v184;
    (*(v137 + 32))(v184, v141, v136);
    sub_1CAD4EAA4();
    sub_1CAD2FEA4(&qword_1EC463C50, MEMORY[0x1E6968FB0]);
    sub_1CAD4DEB4();
    (*(v137 + 8))(v142, v136);
  }

  v143 = (v54 + v58[42]);
  v144 = v143[2];
  if (v144 != 1)
  {
    v145 = *v143;
    v146 = v143[1];
    v147 = v143[3];
    v148 = v143[4];
    v149 = v143[5];
    v150 = v143[6];
    sub_1CAD4EAA4();
    v188 = v145;
    sub_1CAD4EAA4();
    if (v144)
    {
      sub_1CAD4EAA4();

      sub_1CAC3C27C(v147, v148, v149, v150);
      sub_1CAD4E054();
      if (v148)
      {
LABEL_78:
        sub_1CAD4EAA4();
        sub_1CAD4E054();
        sub_1CAD4C034();
        v151 = v188;
        v152 = v146;
        v153 = v144;
        v154 = v147;
        v155 = v148;
LABEL_81:
        sub_1CAC80A24(v151, v152, v153, v154, v155, v149, v150);
        goto LABEL_82;
      }
    }

    else
    {
      sub_1CAD4EAA4();
      sub_1CAC3C27C(v147, v148, v149, v150);
      if (v148)
      {
        goto LABEL_78;
      }
    }

    sub_1CAD4EAA4();
    v151 = v188;
    v152 = v146;
    v153 = v144;
    v154 = v147;
    v155 = 0;
    goto LABEL_81;
  }

  sub_1CAD4EAA4();
LABEL_82:
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  return sub_1CAD4EAA4();
}

uint64_t EventModelObject.hashValue.getter()
{
  sub_1CAD4EA84();
  EventModelObject.hash(into:)(v1);
  return sub_1CAD4EAC4();
}

unint64_t sub_1CAD24F94(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x4449657571696E75;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x7461447472617473;
      break;
    case 4:
      result = 0x65746144646E65;
      break;
    case 5:
      result = 0x7961446C6C417369;
      break;
    case 6:
      result = 0x736F706F72507369;
      break;
    case 7:
      result = 0x6D69547472617473;
      break;
    case 8:
      result = 0x5A656D6954646E65;
      break;
    case 9:
      result = 0x6974616F6C467369;
      break;
    case 10:
    case 42:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6E6F697461636F6CLL;
      break;
    case 13:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0xD000000000000023;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x69546C6576617274;
      break;
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0xD000000000000016;
      break;
    case 22:
    case 23:
      result = 0x7261646E656C6163;
      break;
    case 24:
      result = 0x4C79636176697270;
      break;
    case 25:
      result = 0x737574617473;
      break;
    case 26:
      result = 0x736D72616C61;
      break;
    case 27:
      result = 0x7365746F6ELL;
      break;
    case 28:
      result = 0x6962616C69617661;
      break;
    case 29:
    case 30:
      result = 0x6E65727275636572;
      break;
    case 31:
      result = 0x657A696E6167726FLL;
      break;
    case 32:
      result = 0x6565646E65747461;
      break;
    case 33:
      result = 0x65747441666C6573;
      break;
    case 34:
      result = 7107189;
      break;
    case 35:
      result = 0x6361747441736168;
      break;
    case 36:
      result = 0x656D686361747461;
      break;
    case 37:
      result = 0xD00000000000001DLL;
      break;
    case 38:
      result = 0xD000000000000017;
      break;
    case 39:
      result = 0x7461726765746E69;
      break;
    case 40:
      result = 0x6261746964457369;
      break;
    case 41:
      result = 0x77654E7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CAD2544C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1CAD4C0F4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1CAD254C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1CAD4C0F4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1CAD25648(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));

  return v2;
}

uint64_t sub_1CAD25680(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 68));

  return v2;
}

uint64_t sub_1CAD256C4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 76));
  v4 = v3[7];
  v5 = v3[9];
  v27 = v3[8];
  v28 = v5;
  v6 = v3[9];
  v29 = v3[10];
  v7 = v3[3];
  v8 = v3[5];
  v23 = v3[4];
  v9 = v23;
  v24 = v8;
  v10 = v3[5];
  v11 = v3[7];
  v25 = v3[6];
  v12 = v25;
  v26 = v11;
  v13 = v3[1];
  v20[0] = *v3;
  v20[1] = v13;
  v14 = v3[3];
  v16 = *v3;
  v15 = v3[1];
  v21 = v3[2];
  v17 = v21;
  v22 = v14;
  a2[8] = v27;
  a2[9] = v6;
  a2[10] = v3[10];
  a2[4] = v9;
  a2[5] = v10;
  a2[6] = v12;
  a2[7] = v4;
  *a2 = v16;
  a2[1] = v15;
  a2[2] = v17;
  a2[3] = v7;
  return sub_1CAB23A9C(v20, &v19, &qword_1EC463C00);
}

uint64_t sub_1CAD2576C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 80));
  v4 = v3[7];
  v5 = v3[9];
  v27 = v3[8];
  v28 = v5;
  v6 = v3[9];
  v29 = v3[10];
  v7 = v3[3];
  v8 = v3[5];
  v23 = v3[4];
  v9 = v23;
  v24 = v8;
  v10 = v3[5];
  v11 = v3[7];
  v25 = v3[6];
  v12 = v25;
  v26 = v11;
  v13 = v3[1];
  v20[0] = *v3;
  v20[1] = v13;
  v14 = v3[3];
  v16 = *v3;
  v15 = v3[1];
  v21 = v3[2];
  v17 = v21;
  v22 = v14;
  a2[8] = v27;
  a2[9] = v6;
  a2[10] = v3[10];
  a2[4] = v9;
  a2[5] = v10;
  a2[6] = v12;
  a2[7] = v4;
  *a2 = v16;
  a2[1] = v15;
  a2[2] = v17;
  a2[3] = v7;
  return sub_1CAB23A9C(v20, &v19, &qword_1EC463C00);
}

uint64_t sub_1CAD25814@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 84));
  v4 = v3[7];
  v5 = v3[9];
  v27 = v3[8];
  v28 = v5;
  v6 = v3[9];
  v29 = v3[10];
  v7 = v3[3];
  v8 = v3[5];
  v23 = v3[4];
  v9 = v23;
  v24 = v8;
  v10 = v3[5];
  v11 = v3[7];
  v25 = v3[6];
  v12 = v25;
  v26 = v11;
  v13 = v3[1];
  v20[0] = *v3;
  v20[1] = v13;
  v14 = v3[3];
  v16 = *v3;
  v15 = v3[1];
  v21 = v3[2];
  v17 = v21;
  v22 = v14;
  a2[8] = v27;
  a2[9] = v6;
  a2[10] = v3[10];
  a2[4] = v9;
  a2[5] = v10;
  a2[6] = v12;
  a2[7] = v4;
  *a2 = v16;
  a2[1] = v15;
  a2[2] = v17;
  a2[3] = v7;
  return sub_1CAB23A9C(v20, &v19, &qword_1EC463C00);
}

uint64_t sub_1CAD258C8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 92));
  v4 = v3[7];
  v5 = v3[9];
  v27 = v3[8];
  v28 = v5;
  v6 = v3[9];
  v29 = v3[10];
  v7 = v3[3];
  v8 = v3[5];
  v23 = v3[4];
  v9 = v23;
  v24 = v8;
  v10 = v3[5];
  v11 = v3[7];
  v25 = v3[6];
  v12 = v25;
  v26 = v11;
  v13 = v3[1];
  v20[0] = *v3;
  v20[1] = v13;
  v14 = v3[3];
  v16 = *v3;
  v15 = v3[1];
  v21 = v3[2];
  v17 = v21;
  v22 = v14;
  a2[8] = v27;
  a2[9] = v6;
  a2[10] = v3[10];
  a2[4] = v9;
  a2[5] = v10;
  a2[6] = v12;
  a2[7] = v4;
  *a2 = v16;
  a2[1] = v15;
  a2[2] = v17;
  a2[3] = v7;
  return sub_1CAB23A9C(v20, &v19, &qword_1EC463C00);
}

uint64_t sub_1CAD259E0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 120));

  return v2;
}

uint64_t sub_1CAD25A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 132));
  if (v4)
  {
    v5 = *(v4 + 16);
    v6 = type metadata accessor for EventRecurrenceRuleModelObject(0);
    v7 = *(v6 - 8);
    if (v5)
    {
      v14 = *(v6 - 8);
      sub_1CAD2E710(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), a2, type metadata accessor for EventRecurrenceRuleModelObject);
      v8 = *(v14 + 56);
      v9 = a2;
      v10 = 0;
    }

    else
    {
      v8 = *(v7 + 56);
      v9 = a2;
      v10 = 1;
    }

    v12 = v6;
  }

  else
  {
    v11 = type metadata accessor for EventRecurrenceRuleModelObject(0);
    v8 = *(*(v11 - 8) + 56);
    v12 = v11;
    v9 = a2;
    v10 = 1;
  }

  return v8(v9, v10, 1, v12);
}

void sub_1CAD25C84(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 168));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  sub_1CAD2A458(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1CAD25CD4()
{
  sub_1CAD4EA84();
  EventModelObject.hash(into:)(v1);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAD25D18()
{
  sub_1CAD4EA84();
  EventModelObject.hash(into:)(v1);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAD25D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CAD2F184(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CAD25D98(uint64_t a1)
{
  v2 = sub_1CAD2DF64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAD25DD4(uint64_t a1)
{
  v2 = sub_1CAD2DF64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EventModelObject.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v305 = a1;
  v274 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  *&v273 = &v261 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v272 = &v261 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E38);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v271 = &v261 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v270 = &v261 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v269 = &v261 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v267 = &v261 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A40);
  MEMORY[0x1EEE9AC00](v14 - 8);
  *&v276 = &v261 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v277 = &v261 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v278 = &v261 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v279 = &v261 - v21;
  v22 = sub_1CAD4C0F4();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v286 = &v261 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v287 = &v261 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4681C8);
  v282 = *(v27 - 8);
  v283 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v304 = &v261 - v28;
  v29 = type metadata accessor for EventModelObject();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = (&v261 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *(v30 + 44);
  v34 = sub_1CAD4C404();
  v35 = *(*(v34 - 8) + 56);
  v301 = v33;
  v35(v32 + v33, 1, 1, v34);
  v300 = v29[12];
  v35(v32 + v300, 1, 1, v34);
  v299 = v29[14];
  v285 = v34;
  v35(v32 + v299, 1, 1, v34);
  v36 = v29[15];
  v37 = type metadata accessor for EventVirtualConferenceModelObject(0);
  v38 = *(*(v37 - 8) + 56);
  v298 = v36;
  *&v275 = v37;
  v38(v32 + v36, 1, 1);
  v39 = (v32 + v29[19]);
  sub_1CABED564(&v401);
  v40 = v406;
  v41 = v406;
  v42 = v405;
  v39[4] = v405;
  v39[5] = v40;
  v43 = v411;
  v44 = v411;
  v45 = v410;
  v46 = v409;
  v47 = v409;
  v39[9] = v410;
  v39[10] = v43;
  v39[8] = v46;
  v48 = v407;
  v49 = v408;
  v50 = v408;
  v39[6] = v407;
  v39[7] = v49;
  v51 = v401;
  v52 = v402;
  v53 = v402;
  *v39 = v401;
  v39[1] = v52;
  v54 = v403;
  v55 = v404;
  v56 = v404;
  v39[2] = v403;
  v39[3] = v55;
  v297 = v39;
  v57 = (v32 + v29[20]);
  *v57 = v51;
  v57[1] = v53;
  v57[4] = v42;
  v57[5] = v41;
  v57[2] = v54;
  v57[3] = v56;
  v57[9] = v45;
  v57[10] = v44;
  v57[7] = v50;
  v57[8] = v47;
  v57[6] = v48;
  v295 = v57;
  v58 = (v32 + v29[21]);
  v59 = v401;
  v60 = v402;
  v61 = v402;
  *v58 = v401;
  v58[1] = v60;
  v62 = v405;
  v63 = v406;
  v64 = v406;
  v58[4] = v405;
  v58[5] = v63;
  v65 = v404;
  v66 = v404;
  v67 = v403;
  v58[2] = v403;
  v58[3] = v65;
  v68 = v411;
  v58[10] = v411;
  v69 = v409;
  v70 = v410;
  v71 = v410;
  v58[8] = v409;
  v58[9] = v70;
  v72 = v408;
  v73 = v408;
  v74 = v407;
  v58[6] = v407;
  v58[7] = v72;
  v296 = v58;
  v75 = (v32 + v29[23]);
  v75[8] = v69;
  v75[9] = v71;
  v75[10] = v68;
  v75[4] = v62;
  v75[5] = v64;
  v75[6] = v74;
  v75[7] = v73;
  *v75 = v59;
  v75[1] = v61;
  v75[2] = v67;
  v75[3] = v66;
  v288 = v75;
  v76 = v29[26];
  v77 = type metadata accessor for EventCalendarModelObject();
  v78 = *(*(v77 - 8) + 56);
  v294 = v76;
  v268 = v77;
  v78(v32 + v76, 1, 1);
  v79 = v29[32];
  v280 = v23;
  v281 = v22;
  v80 = *(v23 + 56);
  v292 = v79;
  v80(v32 + v79, 1, 1, v22);
  v81 = v29[34];
  v82 = type metadata accessor for EventOrganizerModelObject(0);
  v83 = *(*(v82 - 8) + 56);
  v293 = v81;
  v83(v32 + v81, 1, 1, v82);
  v84 = v29[36];
  v85 = type metadata accessor for EventAttendeeModelObject(0);
  v86 = *(*(v85 - 8) + 56);
  v291 = v84;
  v86(v32 + v84, 1, 1, v85);
  v87 = v29[37];
  v88 = sub_1CAD4BFF4();
  v89 = *(*(v88 - 8) + 56);
  v289 = v87;
  v89(v32 + v87, 1, 1, v88);
  v90 = v29[41];
  v89(v32 + v90, 1, 1, v88);
  v284 = v29;
  v91 = v32 + v29[42];
  *v91 = 0;
  *(v91 + 1) = 0;
  *(v91 + 2) = 1;
  *(v91 + 24) = 0u;
  v290 = v91;
  *(v91 + 40) = 0u;
  __swift_project_boxed_opaque_existential_1(v305, v305[3]);
  sub_1CAD2DF64();
  v92 = v303;
  sub_1CAD4EAE4();
  v303 = v32;
  if (!v92)
  {
    v93 = v287;
    v264 = v82;
    v265 = v85;
    v266 = v88;
    v95 = v282;
    v94 = v283;
    LOBYTE(v390) = 0;
    v96 = sub_1CAD4E884();
    v263 = v90;
    *v32 = v96;
    v32[1] = v118;
    LOBYTE(v390) = 1;
    v32[2] = sub_1CAD4E884();
    v32[3] = v119;
    LOBYTE(v390) = 2;
    v262 = 0;
    v120 = sub_1CAD4E884();
    v302 = 0;
    v32[4] = v120;
    v32[5] = v121;
    LOBYTE(v390) = 3;
    v122 = sub_1CAD2FEA4(&qword_1EC465020, MEMORY[0x1E6969530]);
    v123 = v93;
    v124 = v281;
    v125 = v302;
    sub_1CAD4E8C4();
    v302 = v125;
    if (v125)
    {
      (*(v95 + 8))(v304, v94);
      v126 = 0;
      v127 = 0;
      v285 = 0;
      v286 = 0;
      v128 = 0;
      v277 = 0;
      v278 = 0;
      v279 = 0;
LABEL_15:
      v137 = v280;
LABEL_16:
      v138 = v262;
      goto LABEL_17;
    }

    v129 = v284;
    v130 = v32 + v284[7];
    v287 = *(v280 + 32);
    (v287)(v130, v123, v124);
    LOBYTE(v390) = 4;
    v131 = v286;
    v132 = v302;
    sub_1CAD4E8C4();
    v302 = v132;
    if (v132)
    {
      (*(v95 + 8))(v304, v283);
      v127 = 0;
      v285 = 0;
      v286 = 0;
      v128 = 0;
      v277 = 0;
      v278 = 0;
      v279 = 0;
      v126 = 1;
      goto LABEL_15;
    }

    v261 = v122;
    (v287)(v32 + v129[8], v131, v124);
    LOBYTE(v390) = 5;
    v133 = v283;
    v134 = v304;
    v135 = v302;
    v136 = sub_1CAD4E894();
    if (v135)
    {
      v302 = v135;
      (*(v95 + 8))(v134, v133);
    }

    else
    {
      *(v32 + v129[9]) = v136 & 1;
      LOBYTE(v390) = 6;
      v142 = sub_1CAD4E834();
      v302 = 0;
      v137 = v280;
      *(v32 + v129[10]) = v142 & 1;
      LOBYTE(v390) = 7;
      sub_1CAD2FEA4(&qword_1EC4681D8, MEMORY[0x1E6969BC0]);
      v143 = v279;
      v144 = v302;
      sub_1CAD4E874();
      v302 = v144;
      if (v144 || (sub_1CABC6AC8(v143, v32 + v301, &qword_1EC4635D0), LOBYTE(v390) = 8, v145 = v278, v146 = v302, sub_1CAD4E874(), (v302 = v146) != 0))
      {
        (*(v95 + 8))(v134, v283);
        v285 = 0;
        v286 = 0;
        v128 = 0;
        v277 = 0;
        v278 = 0;
        v279 = 0;
        v126 = 1;
        v127 = 1;
        goto LABEL_16;
      }

      sub_1CABC6AC8(v145, v303 + v300, &qword_1EC4635D0);
      LOBYTE(v390) = 9;
      v147 = v134;
      v148 = v302;
      v149 = sub_1CAD4E834();
      v302 = v148;
      if (!v148)
      {
        *(v303 + v284[13]) = v149 & 1;
        LOBYTE(v390) = 10;
        sub_1CAD4E874();
        v302 = 0;
        sub_1CABC6AC8(v277, v303 + v299, &qword_1EC4635D0);
        LOBYTE(v390) = 11;
        sub_1CAD2FEA4(&qword_1EC4681E0, type metadata accessor for EventVirtualConferenceModelObject);
        v150 = v302;
        sub_1CAD4E874();
        v302 = v150;
        if (!v150)
        {
          sub_1CABC6AC8(v276, v303 + v298, &qword_1EC467A40);
          LOBYTE(v390) = 12;
          v151 = v302;
          v152 = sub_1CAD4E824();
          v279 = v153;
          v302 = v151;
          if (!v151)
          {
            v154 = (v303 + v284[16]);
            v155 = v279;
            *v154 = v152;
            v154[1] = v155;
            LOBYTE(v390) = 13;
            v156 = sub_1CAD4E824();
            v278 = v157;
            v302 = 0;
            v158 = (v303 + v284[17]);
            *v158 = v156;
            v158[1] = v157;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464730);
            LOBYTE(v379) = 14;
            sub_1CAC17494(&qword_1EC464CB8);
            v159 = v302;
            sub_1CAD4E874();
            v302 = v159;
            if (!v159)
            {
              *(v303 + v284[18]) = v390;
              v416 = 15;
              sub_1CAD2DFB8();
              v160 = v302;
              sub_1CAD4E874();
              v302 = v160;
              if (v160)
              {
                goto LABEL_57;
              }

              v376 = v398;
              v377 = v399;
              v378 = v400;
              v372 = v394;
              v373 = v395;
              v375 = v397;
              v374 = v396;
              v368 = v390;
              v369 = v391;
              v371 = v393;
              v370 = v392;
              v161 = v297;
              v162 = v297[9];
              v387 = v297[8];
              v388 = v162;
              v389 = v297[10];
              v163 = v297[5];
              v383 = v297[4];
              v384 = v163;
              v164 = v297[6];
              v386 = v297[7];
              v385 = v164;
              v165 = v297[1];
              v379 = *v297;
              v380 = v165;
              v166 = v297[2];
              v382 = v297[3];
              v381 = v166;
              sub_1CAB21B68(&v379, &qword_1EC463C00);
              v167 = v377;
              v161[8] = v376;
              v161[9] = v167;
              v161[10] = v378;
              v168 = v373;
              v161[4] = v372;
              v161[5] = v168;
              v169 = v375;
              v161[6] = v374;
              v161[7] = v169;
              v170 = v369;
              *v161 = v368;
              v161[1] = v170;
              v171 = v371;
              v161[2] = v370;
              v161[3] = v171;
              v415 = 16;
              v172 = v302;
              sub_1CAD4E874();
              v302 = v172;
              if (v172)
              {
                goto LABEL_57;
              }

              v353 = v365;
              v354 = v366;
              v355 = v367;
              v349 = v361;
              v350 = v362;
              v352 = v364;
              v351 = v363;
              v345 = v357;
              v346 = v358;
              v348 = v360;
              v347 = v359;
              v173 = v295;
              v174 = v295[9];
              v356[8] = v295[8];
              v356[9] = v174;
              v356[10] = v295[10];
              v175 = v295[5];
              v356[4] = v295[4];
              v356[5] = v175;
              v176 = v295[6];
              v356[7] = v295[7];
              v356[6] = v176;
              v177 = v295[1];
              v356[0] = *v295;
              v356[1] = v177;
              v178 = v295[2];
              v356[3] = v295[3];
              v356[2] = v178;
              sub_1CAB21B68(v356, &qword_1EC463C00);
              v179 = v354;
              v173[8] = v353;
              v173[9] = v179;
              v173[10] = v355;
              v180 = v350;
              v173[4] = v349;
              v173[5] = v180;
              v181 = v352;
              v173[6] = v351;
              v173[7] = v181;
              v182 = v346;
              *v173 = v345;
              v173[1] = v182;
              v183 = v348;
              v173[2] = v347;
              v173[3] = v183;
              v414 = 17;
              v184 = v302;
              sub_1CAD4E874();
              v302 = v184;
              if (v184)
              {
                goto LABEL_57;
              }

              v341 = v344[19];
              v342 = v344[20];
              v343 = v344[21];
              v337 = v344[15];
              v338 = v344[16];
              v340 = v344[18];
              v339 = v344[17];
              v333 = v344[11];
              v334 = v344[12];
              v335 = v344[13];
              v336 = v344[14];
              v185 = v296;
              v186 = v296[9];
              v344[8] = v296[8];
              v344[9] = v186;
              v344[10] = v296[10];
              v187 = v296[5];
              v344[4] = v296[4];
              v344[5] = v187;
              v188 = v296[6];
              v344[7] = v296[7];
              v344[6] = v188;
              v189 = v296[1];
              v344[0] = *v296;
              v344[1] = v189;
              v190 = v296[2];
              v344[3] = v296[3];
              v344[2] = v190;
              sub_1CAB21B68(v344, &qword_1EC463C00);
              v191 = v342;
              v185[8] = v341;
              v185[9] = v191;
              v185[10] = v343;
              v192 = v338;
              v185[4] = v337;
              v185[5] = v192;
              v193 = v340;
              v185[6] = v339;
              v185[7] = v193;
              v194 = v334;
              *v185 = v333;
              v185[1] = v194;
              v195 = v336;
              v185[2] = v335;
              v185[3] = v195;
              LOBYTE(v322) = 18;
              v196 = v302;
              v197 = sub_1CAD4E844();
              v302 = v196;
              if (v196)
              {
                goto LABEL_57;
              }

              v199 = *&v197;
              if (v198)
              {
                v199 = 0.0;
              }

              v200 = v302;
              *(v303 + v284[22]) = v199;
              v413 = 19;
              sub_1CAD4E874();
              v302 = v200;
              v318 = v330;
              v319 = v331;
              v320 = v332;
              v314 = v326;
              v315 = v327;
              v316 = v328;
              v317 = v329;
              v310 = v322;
              v311 = v323;
              v312 = v324;
              v313 = v325;
              v201 = v288;
              v202 = v288[9];
              v321[8] = v288[8];
              v321[9] = v202;
              v321[10] = v288[10];
              v203 = v288[5];
              v321[4] = v288[4];
              v321[5] = v203;
              v204 = v288[7];
              v321[6] = v288[6];
              v321[7] = v204;
              v205 = v288[1];
              v321[0] = *v288;
              v321[1] = v205;
              v206 = v288[3];
              v321[2] = v288[2];
              v321[3] = v206;
              sub_1CAB21B68(v321, &qword_1EC463C00);
              v207 = v319;
              v201[8] = v318;
              v201[9] = v207;
              v201[10] = v320;
              v208 = v315;
              v201[4] = v314;
              v201[5] = v208;
              v209 = v317;
              v201[6] = v316;
              v201[7] = v209;
              v210 = v311;
              *v201 = v310;
              v201[1] = v210;
              v211 = v313;
              v201[2] = v312;
              v201[3] = v211;
              type metadata accessor for EKLocationRoutingMode(0);
              v412 = 20;
              sub_1CAD2FEA4(&qword_1EC4681F0, type metadata accessor for EKLocationRoutingMode);
              v212 = v302;
              sub_1CAD4E874();
              v302 = v212;
              if (v212)
              {
                goto LABEL_57;
              }

              v213 = v306;
              if (BYTE8(v306))
              {
                v213 = 0;
              }

              *(v303 + v284[24]) = v213;
              type metadata accessor for EKEventTravelAdvisoryBehavior(0);
              v412 = 21;
              sub_1CAD2FEA4(&qword_1EC4681F8, type metadata accessor for EKEventTravelAdvisoryBehavior);
              v214 = v302;
              sub_1CAD4E874();
              v302 = v214;
              if (v214)
              {
                goto LABEL_57;
              }

              v215 = v306;
              if (BYTE8(v306))
              {
                v215 = 0;
              }

              *(v303 + v284[25]) = v215;
              LOBYTE(v306) = 22;
              sub_1CAD2FEA4(&qword_1EC468200, type metadata accessor for EventCalendarModelObject);
              v216 = v302;
              sub_1CAD4E874();
              v302 = v216;
              if (v216)
              {
                goto LABEL_57;
              }

              sub_1CABC6AC8(v267, v303 + v294, &qword_1EC464020);
              type metadata accessor for EKPrivacyLevel(0);
              v412 = 24;
              sub_1CAD2FEA4(&qword_1EC467010, type metadata accessor for EKPrivacyLevel);
              v217 = v302;
              sub_1CAD4E874();
              v302 = v217;
              if (v217)
              {
                goto LABEL_57;
              }

              v218 = v306;
              if (BYTE8(v306))
              {
                v218 = 0;
              }

              *(v303 + v284[27]) = v218;
              type metadata accessor for EKEventStatus(0);
              v412 = 25;
              sub_1CAD2FEA4(&qword_1EC468208, type metadata accessor for EKEventStatus);
              v219 = v302;
              sub_1CAD4E874();
              v302 = v219;
              if (v219)
              {
                goto LABEL_57;
              }

              v220 = v306;
              if (BYTE8(v306))
              {
                v220 = 0;
              }

              *(v303 + v284[28]) = v220;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468210);
              v412 = 26;
              sub_1CAD2E00C();
              v221 = v302;
              sub_1CAD4E874();
              v302 = v221;
              if (v221)
              {
LABEL_57:
                (*(v95 + 8))(v147, v283);
                v285 = 0;
                v286 = 0;
                v277 = 0;
                v126 = 1;
                v127 = 1;
                v137 = v280;
                v138 = v262;
                v128 = 0;
              }

              else
              {
                v222 = v284[29];
                v277 = v306;
                *(v303 + v222) = v306;
                LOBYTE(v306) = 27;
                v223 = sub_1CAD4E824();
                v287 = v224;
                v302 = 0;
                v225 = (v303 + v284[30]);
                *v225 = v223;
                v225[1] = v224;
                type metadata accessor for EKEventAvailability(0);
                v412 = 28;
                sub_1CAD2FEA4(&qword_1EC468228, type metadata accessor for EKEventAvailability);
                v226 = v302;
                sub_1CAD4E874();
                v302 = v226;
                if (v226)
                {
                  goto LABEL_62;
                }

                v227 = v306;
                if (BYTE8(v306))
                {
                  v227 = 0;
                }

                v228 = v302;
                *(v303 + v284[31]) = v227;
                LOBYTE(v306) = 29;
                sub_1CAD4E874();
                v302 = v228;
                sub_1CABC6AC8(v269, v303 + v292, &unk_1EC465A70);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468230);
                v412 = 30;
                sub_1CAD2E0C0();
                v229 = v302;
                sub_1CAD4E874();
                v302 = v229;
                if (v229)
                {
LABEL_62:
                  (*(v95 + 8))(v147, v283);
                  v285 = 0;
                  v286 = 0;
                }

                else
                {
                  v230 = v284[33];
                  v286 = v306;
                  *(v303 + v230) = v306;
                  LOBYTE(v306) = 31;
                  sub_1CAD2FEA4(&qword_1EC468248, type metadata accessor for EventOrganizerModelObject);
                  v231 = v302;
                  sub_1CAD4E874();
                  v302 = v231;
                  if (v231 || (sub_1CABC6AC8(v270, v303 + v293, &qword_1EC465AC0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468250), v412 = 32, sub_1CAD2E174(), v232 = v302, sub_1CAD4E874(), (v302 = v232) != 0))
                  {
                    (*(v95 + 8))(v147, v283);
                    v285 = 0;
                  }

                  else
                  {
                    v233 = v284[35];
                    v285 = v306;
                    *(v303 + v233) = v306;
                    LOBYTE(v306) = 33;
                    sub_1CAD2FEA4(&qword_1EC468260, type metadata accessor for EventAttendeeModelObject);
                    v234 = v302;
                    sub_1CAD4E874();
                    v302 = v234;
                    if (!v234)
                    {
                      sub_1CABC6AC8(v271, v303 + v291, &qword_1EC464E38);
                      LOBYTE(v306) = 34;
                      sub_1CAD2FEA4(&qword_1EC463C68, MEMORY[0x1E6968FB0]);
                      v235 = v302;
                      sub_1CAD4E874();
                      v302 = v235;
                      if (!v235)
                      {
                        sub_1CABC6AC8(v272, v303 + v289, &qword_1EC465450);
                        LOBYTE(v306) = 35;
                        v236 = v302;
                        v237 = sub_1CAD4E834();
                        v302 = v236;
                        if (!v236)
                        {
                          *(v303 + v284[38]) = v237 & 1;
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466828);
                          v412 = 36;
                          sub_1CAD2E228();
                          v238 = v302;
                          sub_1CAD4E874();
                          v302 = v238;
                          if (!v238)
                          {
                            v239 = v306;
                            if (!v306)
                            {
                              v239 = MEMORY[0x1E69E7CC0];
                            }

                            v240 = v302;
                            *(v303 + v284[39]) = v239;
                            LOBYTE(v306) = 37;
                            v241 = sub_1CAD4E834();
                            v302 = v240;
                            *(v303 + v284[40]) = v241 & 1;
                            LOBYTE(v306) = 38;
                            sub_1CAD4E874();
                            v302 = 0;
                            sub_1CABC6AC8(v273, v303 + v263, &qword_1EC465450);
                            v412 = 39;
                            sub_1CAD2E2DC();
                            v242 = v302;
                            sub_1CAD4E874();
                            v302 = v242;
                            if (!v242)
                            {
                              v243 = v309;
                              v244 = v290;
                              v245 = *v290;
                              v246 = *(v290 + 1);
                              v247 = *(v290 + 2);
                              v248 = *(v290 + 3);
                              v249 = *(v290 + 4);
                              v250 = *(v290 + 5);
                              v251 = *(v290 + 6);
                              v275 = v306;
                              v276 = v308;
                              v273 = v307;
                              sub_1CAC80A24(v245, v246, v247, v248, v249, v250, v251);
                              v252 = v273;
                              v253 = v276;
                              *v244 = v275;
                              *(v244 + 1) = v252;
                              *(v244 + 2) = v253;
                              *(v244 + 6) = v243;
                              LOBYTE(v306) = 40;
                              v254 = v302;
                              v255 = sub_1CAD4E894();
                              v302 = v254;
                              if (!v254)
                              {
                                *(v303 + v284[43]) = v255 & 1;
                                LOBYTE(v306) = 41;
                                v256 = sub_1CAD4E834();
                                v302 = 0;
                                *(v303 + v284[44]) = v256 & 1;
                                LOBYTE(v306) = 42;
                                v257 = sub_1CAD4E834();
                                v302 = 0;
                                v258 = v257;
                                (*(v95 + 8))(v147, v283);
                                v259 = v258 & 1;
                                v260 = v303;
                                *(v303 + v284[45]) = v259;
                                sub_1CAD2E710(v260, v274, type metadata accessor for EventModelObject);
                                __swift_destroy_boxed_opaque_existential_1(v305);
                                sub_1CAD2DF04(v260, type metadata accessor for EventModelObject);
                                return;
                              }
                            }

                            (*(v95 + 8))(v147, v283);
                            __swift_destroy_boxed_opaque_existential_1(v305);

                            v140 = 1;
                            LOBYTE(v127) = 1;
                            v137 = v280;
                            v139 = v281;
                            v128 = v287;
                            goto LABEL_23;
                          }
                        }
                      }
                    }

                    (*(v95 + 8))(v147, v283);
                  }
                }

                v126 = 1;
                v127 = 1;
                v137 = v280;
                v138 = v262;
                v128 = v287;
              }

LABEL_17:
              __swift_destroy_boxed_opaque_existential_1(v305);

              if (!v138)
              {
              }

              v139 = v281;
              if ((v126 & 1) == 0)
              {
                if (!v127)
                {
                  LODWORD(v305) = 0;
                  v90 = v263;
                  v287 = v128;
                  goto LABEL_4;
                }

                v140 = 0;
                v141 = *(v137 + 8);
LABEL_25:
                v287 = v128;
                LODWORD(v305) = v140;
                v141(v303 + v284[8], v139);
                v90 = v263;
                goto LABEL_4;
              }

              v140 = 0;
LABEL_23:
              v141 = *(v137 + 8);
              v141(v303 + v284[7], v139);
              if ((v127 & 1) == 0)
              {
                v90 = v263;
                v287 = v128;
                LODWORD(v305) = v140;
                goto LABEL_4;
              }

              v139 = v281;
              goto LABEL_25;
            }

            (*(v95 + 8))(v134, v283);
            v285 = 0;
            v286 = 0;
            v128 = 0;
            v277 = 0;
            goto LABEL_14;
          }
        }
      }

      (*(v95 + 8))(v134, v283);
    }

    v285 = 0;
    v286 = 0;
    v128 = 0;
    v277 = 0;
    v278 = 0;
    v279 = 0;
LABEL_14:
    v126 = 1;
    v127 = 1;
    goto LABEL_15;
  }

  v302 = v92;
  __swift_destroy_boxed_opaque_existential_1(v305);
  LODWORD(v305) = 0;
  v285 = 0;
  v286 = 0;
  v287 = 0;
LABEL_4:
  v97 = v303;
  sub_1CAB21B68(v303 + v301, &qword_1EC4635D0);
  sub_1CAB21B68(v97 + v300, &qword_1EC4635D0);
  sub_1CAB21B68(v97 + v299, &qword_1EC4635D0);
  sub_1CAB21B68(v97 + v298, &qword_1EC467A40);

  v98 = v297[9];
  v365 = v297[8];
  v366 = v98;
  v367 = v297[10];
  v99 = v297[5];
  v361 = v297[4];
  v362 = v99;
  v100 = v297[6];
  v364 = v297[7];
  v363 = v100;
  v101 = v297[1];
  v357 = *v297;
  v358 = v101;
  v102 = v297[2];
  v360 = v297[3];
  v359 = v102;
  sub_1CAB21B68(&v357, &qword_1EC463C00);
  v103 = v295[9];
  v376 = v295[8];
  v377 = v103;
  v378 = v295[10];
  v104 = v295[5];
  v372 = v295[4];
  v373 = v104;
  v105 = v295[6];
  v375 = v295[7];
  v374 = v105;
  v106 = v295[1];
  v368 = *v295;
  v369 = v106;
  v107 = v295[2];
  v371 = v295[3];
  v370 = v107;
  sub_1CAB21B68(&v368, &qword_1EC463C00);
  v108 = v296[9];
  v387 = v296[8];
  v388 = v108;
  v389 = v296[10];
  v109 = v296[5];
  v383 = v296[4];
  v384 = v109;
  v110 = v296[6];
  v386 = v296[7];
  v385 = v110;
  v111 = v296[1];
  v379 = *v296;
  v380 = v111;
  v112 = v296[2];
  v382 = v296[3];
  v381 = v112;
  sub_1CAB21B68(&v379, &qword_1EC463C00);
  v113 = v288[9];
  v398 = v288[8];
  v399 = v113;
  v400 = v288[10];
  v114 = v288[5];
  v394 = v288[4];
  v395 = v114;
  v115 = v288[6];
  v397 = v288[7];
  v396 = v115;
  v116 = v288[1];
  v390 = *v288;
  v391 = v116;
  v117 = v288[2];
  v393 = v288[3];
  v392 = v117;
  sub_1CAB21B68(&v390, &qword_1EC463C00);
  sub_1CAB21B68(v97 + v294, &qword_1EC464020);

  sub_1CAB21B68(v97 + v292, &unk_1EC465A70);

  sub_1CAB21B68(v97 + v293, &qword_1EC465AC0);

  sub_1CAB21B68(v97 + v291, &qword_1EC464E38);
  sub_1CAB21B68(v97 + v289, &qword_1EC465450);
  if (v305)
  {
  }

  sub_1CAB21B68(v97 + v90, &qword_1EC465450);
  sub_1CAC80A24(*v290, *(v290 + 1), *(v290 + 2), *(v290 + 3), *(v290 + 4), *(v290 + 5), *(v290 + 6));
}

uint64_t EventModelObject.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468280);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v71 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAD2DF64();
  sub_1CAD4EB04();
  LOBYTE(v153[0]) = 0;
  sub_1CAD4E934();
  if (!v2)
  {
    LOBYTE(v153[0]) = 1;
    sub_1CAD4E934();
    LOBYTE(v153[0]) = 2;
    sub_1CAD4E934();
    v73 = type metadata accessor for EventModelObject();
    LOBYTE(v153[0]) = 3;
    sub_1CAD4C0F4();
    sub_1CAD2FEA4(&qword_1EC462400, MEMORY[0x1E6969530]);
    sub_1CAD4E984();
    LOBYTE(v153[0]) = 4;
    sub_1CAD4E984();
    LOBYTE(v153[0]) = 5;
    sub_1CAD4E944();
    LOBYTE(v153[0]) = 6;
    sub_1CAD4E944();
    v72 = v73[11];
    LOBYTE(v153[0]) = 7;
    v10 = sub_1CAD4C404();
    v71[1] = sub_1CAD2FEA4(&qword_1EC468288, MEMORY[0x1E6969BC0]);
    v72 = v10;
    sub_1CAD4E924();
    LOBYTE(v153[0]) = 8;
    sub_1CAD4E924();
    LOBYTE(v153[0]) = 9;
    sub_1CAD4E944();
    LOBYTE(v153[0]) = 10;
    sub_1CAD4E924();
    v72 = v73[15];
    LOBYTE(v153[0]) = 11;
    type metadata accessor for EventVirtualConferenceModelObject(0);
    sub_1CAD2FEA4(&qword_1EC468290, type metadata accessor for EventVirtualConferenceModelObject);
    sub_1CAD4E924();
    LOBYTE(v153[0]) = 12;
    sub_1CAD4E904();
    LOBYTE(v153[0]) = 13;
    sub_1CAD4E904();
    v162 = *(v3 + v73[18]);
    v161 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464730);
    sub_1CAC17494(&qword_1EC464CE8);
    sub_1CAD4E924();
    v11 = (v3 + v73[19]);
    v12 = v11[7];
    v13 = v11[9];
    v158 = v11[8];
    v159 = v13;
    v14 = v11[9];
    v160 = v11[10];
    v15 = v11[3];
    v16 = v11[5];
    v154 = v11[4];
    v155 = v16;
    v18 = v11[5];
    v17 = v11[6];
    v19 = v17;
    v157 = v11[7];
    v156 = v17;
    v20 = v11[1];
    v153[0] = *v11;
    v153[1] = v20;
    v21 = v11[2];
    v23 = *v11;
    v22 = v11[1];
    v153[3] = v11[3];
    v153[2] = v21;
    v150 = v158;
    v151 = v14;
    v152 = v11[10];
    v146 = v154;
    v147 = v18;
    v149 = v12;
    v148 = v19;
    v142 = v23;
    v143 = v22;
    v145 = v15;
    v144 = v21;
    v141 = 15;
    sub_1CAB23A9C(v153, v137, &qword_1EC463C00);
    v72 = sub_1CAD2E330();
    sub_1CAD4E924();
    v136[8] = v150;
    v136[9] = v151;
    v136[10] = v152;
    v136[4] = v146;
    v136[5] = v147;
    v136[7] = v149;
    v136[6] = v148;
    v136[0] = v142;
    v136[1] = v143;
    v136[3] = v145;
    v136[2] = v144;
    sub_1CAB21B68(v136, &qword_1EC463C00);
    v24 = (v3 + v73[20]);
    v25 = v24[7];
    v26 = v24[9];
    v138 = v24[8];
    v139 = v26;
    v27 = v24[9];
    v140 = v24[10];
    v29 = v24[5];
    v28 = v24[6];
    v30 = v28;
    v137[7] = v24[7];
    v137[6] = v28;
    v32 = v24[3];
    v31 = v24[4];
    v33 = v31;
    v137[5] = v24[5];
    v137[4] = v31;
    v34 = v24[1];
    v137[0] = *v24;
    v137[1] = v34;
    v35 = v24[2];
    v37 = *v24;
    v36 = v24[1];
    v137[3] = v24[3];
    v137[2] = v35;
    v133 = v138;
    v134 = v27;
    v135 = v24[10];
    v129 = v33;
    v130 = v29;
    v132 = v25;
    v131 = v30;
    v125 = v37;
    v126 = v36;
    v128 = v32;
    v127 = v35;
    v124 = 16;
    sub_1CAB23A9C(v137, v120, &qword_1EC463C00);
    sub_1CAD4E924();
    v119[8] = v133;
    v119[9] = v134;
    v119[10] = v135;
    v119[4] = v129;
    v119[5] = v130;
    v119[7] = v132;
    v119[6] = v131;
    v119[0] = v125;
    v119[1] = v126;
    v119[3] = v128;
    v119[2] = v127;
    sub_1CAB21B68(v119, &qword_1EC463C00);
    v38 = (v3 + v73[21]);
    v39 = v38[7];
    v40 = v38[9];
    v121 = v38[8];
    v122 = v40;
    v41 = v38[9];
    v123 = v38[10];
    v43 = v38[5];
    v42 = v38[6];
    v44 = v42;
    v120[7] = v38[7];
    v120[6] = v42;
    v46 = v38[3];
    v45 = v38[4];
    v47 = v45;
    v120[5] = v38[5];
    v120[4] = v45;
    v48 = v38[1];
    v120[0] = *v38;
    v120[1] = v48;
    v49 = v38[2];
    v51 = *v38;
    v50 = v38[1];
    v120[3] = v38[3];
    v120[2] = v49;
    v116 = v121;
    v117 = v41;
    v118 = v38[10];
    v112 = v47;
    v113 = v43;
    v114 = v44;
    v115 = v39;
    v108 = v51;
    v109 = v50;
    v110 = v49;
    v111 = v46;
    v107 = 17;
    sub_1CAB23A9C(v120, v106, &qword_1EC463C00);
    sub_1CAD4E924();
    v106[8] = v116;
    v106[9] = v117;
    v106[10] = v118;
    v106[4] = v112;
    v106[5] = v113;
    v106[6] = v114;
    v106[7] = v115;
    v106[0] = v108;
    v106[1] = v109;
    v106[2] = v110;
    v106[3] = v111;
    sub_1CAB21B68(v106, &qword_1EC463C00);
    v105 = 18;
    sub_1CAD4E954();
    v52 = (v3 + v73[23]);
    v53 = v52[7];
    v54 = v52[9];
    v102 = v52[8];
    v103 = v54;
    v55 = v52[9];
    v104 = v52[10];
    v56 = v52[3];
    v57 = v52[5];
    v98 = v52[4];
    v99 = v57;
    v58 = v52[5];
    v59 = v52[7];
    v100 = v52[6];
    v101 = v59;
    v60 = v52[1];
    v95[0] = *v52;
    v95[1] = v60;
    v61 = v52[3];
    v63 = *v52;
    v62 = v52[1];
    v96 = v52[2];
    v97 = v61;
    v92 = v102;
    v93 = v55;
    v94 = v52[10];
    v88 = v98;
    v89 = v58;
    v90 = v100;
    v91 = v53;
    v84 = v63;
    v85 = v62;
    v86 = v96;
    v87 = v56;
    v83 = 19;
    sub_1CAB23A9C(v95, v82, &qword_1EC463C00);
    sub_1CAD4E924();
    v82[8] = v92;
    v82[9] = v93;
    v82[10] = v94;
    v82[4] = v88;
    v82[5] = v89;
    v82[6] = v90;
    v82[7] = v91;
    v82[0] = v84;
    v82[1] = v85;
    v82[2] = v86;
    v82[3] = v87;
    sub_1CAB21B68(v82, &qword_1EC463C00);
    v74 = *(v3 + v73[24]);
    v81 = 20;
    type metadata accessor for EKLocationRoutingMode(0);
    sub_1CAD2FEA4(&qword_1EC4682A0, type metadata accessor for EKLocationRoutingMode);
    sub_1CAD4E984();
    v74 = *(v3 + v73[25]);
    v81 = 21;
    type metadata accessor for EKEventTravelAdvisoryBehavior(0);
    sub_1CAD2FEA4(&qword_1EC4682A8, type metadata accessor for EKEventTravelAdvisoryBehavior);
    sub_1CAD4E984();
    v72 = v73[26];
    LOBYTE(v74) = 22;
    type metadata accessor for EventCalendarModelObject();
    sub_1CAD2FEA4(&qword_1EC4682B0, type metadata accessor for EventCalendarModelObject);
    sub_1CAD4E924();
    v74 = *(v3 + v73[27]);
    v81 = 24;
    type metadata accessor for EKPrivacyLevel(0);
    sub_1CAD2FEA4(&qword_1EC467048, type metadata accessor for EKPrivacyLevel);
    sub_1CAD4E984();
    v74 = *(v3 + v73[28]);
    v81 = 25;
    type metadata accessor for EKEventStatus(0);
    sub_1CAD2FEA4(&qword_1EC4682B8, type metadata accessor for EKEventStatus);
    sub_1CAD4E984();
    v74 = *(v3 + v73[29]);
    v81 = 26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468210);
    sub_1CAD2E384();
    sub_1CAD4E924();
    LOBYTE(v74) = 27;
    sub_1CAD4E904();
    v74 = *(v3 + v73[31]);
    v81 = 28;
    type metadata accessor for EKEventAvailability(0);
    sub_1CAD2FEA4(&qword_1EC4682D0, type metadata accessor for EKEventAvailability);
    sub_1CAD4E984();
    LOBYTE(v74) = 29;
    sub_1CAD4E924();
    v74 = *(v3 + v73[33]);
    v81 = 30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468230);
    sub_1CAD2E438();
    sub_1CAD4E924();
    LOBYTE(v74) = 31;
    type metadata accessor for EventOrganizerModelObject(0);
    sub_1CAD2FEA4(&qword_1EC4682E8, type metadata accessor for EventOrganizerModelObject);
    sub_1CAD4E924();
    v74 = *(v3 + v73[35]);
    v81 = 32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468250);
    sub_1CAD2E4EC();
    sub_1CAD4E924();
    LOBYTE(v74) = 33;
    type metadata accessor for EventAttendeeModelObject(0);
    sub_1CAD2FEA4(&qword_1EC4682F8, type metadata accessor for EventAttendeeModelObject);
    sub_1CAD4E924();
    LOBYTE(v74) = 34;
    sub_1CAD4BFF4();
    sub_1CAD2FEA4(&qword_1EC463C78, MEMORY[0x1E6968FB0]);
    sub_1CAD4E924();
    LOBYTE(v74) = 35;
    sub_1CAD4E944();
    v74 = *(v3 + v73[39]);
    v81 = 36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466828);
    sub_1CAD2E5A0();
    sub_1CAD4E984();
    LOBYTE(v74) = 37;
    sub_1CAD4E944();
    LOBYTE(v74) = 38;
    sub_1CAD4E924();
    v64 = (v3 + v73[42]);
    v65 = v64[1];
    v66 = v64[2];
    v67 = v64[3];
    v68 = v64[4];
    v69 = v64[5];
    v70 = v64[6];
    v74 = *v64;
    v75 = v65;
    v76 = v66;
    v77 = v67;
    v78 = v68;
    v79 = v69;
    v80 = v70;
    v81 = 39;
    sub_1CAD2A458(v74, v65, v66, v67, v68, v69, v70);
    sub_1CAD2E654();
    sub_1CAD4E924();
    sub_1CAC80A24(v74, v75, v76, v77, v78, v79, v80);
    LOBYTE(v74) = 40;
    sub_1CAD4E944();
    LOBYTE(v74) = 41;
    sub_1CAD4E944();
    LOBYTE(v74) = 42;
    sub_1CAD4E944();
  }

  return (*(v6 + 8))(v8, v5);
}