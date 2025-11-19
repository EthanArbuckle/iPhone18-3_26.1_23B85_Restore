id sub_1000012A0()
{
  result = [objc_allocWithZone(type metadata accessor for ToolKitDiagnosticWrapper()) init];
  static ToolKitDiagnosticWrapper.shared = result;
  return result;
}

uint64_t *ToolKitDiagnosticWrapper.shared.unsafeMutableAddressor()
{
  if (qword_100014410 != -1)
  {
    sub_100009AC0(&qword_100014410);
  }

  return &static ToolKitDiagnosticWrapper.shared;
}

id static ToolKitDiagnosticWrapper.shared.getter()
{
  if (qword_100014410 != -1)
  {
    sub_100009AC0(&qword_100014410);
  }

  v1 = static ToolKitDiagnosticWrapper.shared;

  return v1;
}

id sub_100001384()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

void ToolKitDiagnosticWrapper.getToolKitDatabaseURL()()
{
  sub_100009DBC();
  v1 = v0;
  v2 = sub_10000A910();
  v3 = sub_100009840(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_1000098E0();
  v6 = sub_1000016A4(&qword_1000142D8, &qword_10000B2F0);
  sub_100009970(v6);
  v8 = *(v7 + 64);
  sub_100009A20();
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_10000A960();
  sub_10000A950();
  sub_10000A940();
  v12 = sub_10000A930();
  v13 = sub_100009C14();
  sub_1000099F0(v13, v14, v12);
  if (v15)
  {

    sub_1000086B0(v11, &qword_1000142D8, &qword_10000B2F0);
    v17 = 1;
  }

  else
  {
    sub_10000A920();

    (*(*(v12 - 8) + 8))(v11, v12);
    v17 = 0;
  }

  v16 = sub_10000A820();
  sub_1000016EC(v1, v17, 1, v16);
  sub_100009DD4();
}

uint64_t sub_1000016A4(uint64_t *a1, uint64_t *a2)
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

void ToolKitDiagnosticWrapper.exportIndexingLogToFile(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100009DBC();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v529 = sub_10000A910();
  v24 = sub_100009840(v529);
  v528 = v25;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_100009854();
  sub_100009894();
  __chkstk_darwin(v28);
  sub_100009B48();
  sub_10000998C(v29);
  v546 = sub_1000016A4(&qword_1000142E8, &qword_10000B300);
  sub_10000997C(v546);
  v31 = *(v30 + 64);
  sub_100009A20();
  __chkstk_darwin(v32);
  sub_100009B3C();
  sub_10000998C(v33);
  v34 = sub_1000016A4(&qword_1000142F0, &qword_10000B308);
  v35 = sub_100009970(v34);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  sub_100009854();
  sub_100009894();
  __chkstk_darwin(v38);
  sub_100009B48();
  sub_10000998C(v39);
  v547 = sub_1000016A4(&qword_1000142F8, &qword_10000B310);
  sub_10000997C(v547);
  v41 = *(v40 + 64);
  sub_100009A20();
  __chkstk_darwin(v42);
  sub_100009B3C();
  sub_10000998C(v43);
  v44 = sub_1000016A4(&qword_100014300, &qword_10000B318);
  v45 = sub_100009970(v44);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  sub_100009854();
  sub_100009894();
  __chkstk_darwin(v48);
  sub_100009B48();
  sub_10000998C(v49);
  v50 = sub_1000016A4(&qword_100014308, &qword_10000B320);
  v51 = sub_100009970(v50);
  v53 = *(v52 + 64);
  __chkstk_darwin(v51);
  sub_100009854();
  sub_100009894();
  __chkstk_darwin(v54);
  sub_100009B48();
  sub_10000998C(v55);
  v56 = sub_1000016A4(&qword_100014310, &qword_10000B328);
  sub_100009970(v56);
  v58 = *(v57 + 64);
  sub_100009A20();
  __chkstk_darwin(v59);
  sub_100009B3C();
  sub_10000998C(v60);
  v559 = sub_10000AA80();
  v61 = sub_100009840(v559);
  v537 = v62;
  v64 = *(v63 + 64);
  __chkstk_darwin(v61);
  sub_100009854();
  sub_100009894();
  __chkstk_darwin(v65);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v66);
  sub_100009B48();
  sub_10000998C(v67);
  v68 = sub_1000016A4(&qword_100014318, &qword_10000B330);
  sub_100009970(v68);
  v70 = *(v69 + 64);
  sub_100009A20();
  __chkstk_darwin(v71);
  sub_100009B3C();
  sub_10000998C(v72);
  v561 = sub_10000AB30();
  v73 = sub_100009840(v561);
  v538 = v74;
  v76 = *(v75 + 64);
  __chkstk_darwin(v73);
  sub_100009854();
  sub_100009894();
  __chkstk_darwin(v77);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v78);
  sub_100009B48();
  sub_10000998C(v79);
  v80 = sub_1000016A4(&qword_100014320, &qword_10000B338);
  sub_100009970(v80);
  v82 = *(v81 + 64);
  sub_100009A20();
  __chkstk_darwin(v83);
  sub_100009B3C();
  sub_10000998C(v84);
  *&v565 = sub_10000AA40();
  v85 = sub_100009840(v565);
  v557 = v86;
  v88 = *(v87 + 64);
  __chkstk_darwin(v85);
  sub_100009854();
  sub_100009894();
  __chkstk_darwin(v89);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v90);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v91);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v92);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v93);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v94);
  sub_100009B48();
  sub_10000998C(v95);
  v96 = sub_1000016A4(&qword_100014328, &qword_10000B340);
  sub_100009970(v96);
  v98 = *(v97 + 64);
  sub_100009A20();
  __chkstk_darwin(v99);
  v101 = &v510 - v100;
  v567 = sub_10000ABB0();
  v102 = sub_100009840(v567);
  v569 = v103;
  v105 = *(v104 + 64);
  __chkstk_darwin(v102);
  sub_1000098E0();
  sub_10000998C(v107 - v106);
  v526 = sub_10000A890();
  v108 = sub_100009840(v526);
  v530 = v109;
  v111 = *(v110 + 64);
  __chkstk_darwin(v108);
  sub_1000098E0();
  v114 = v113 - v112;
  v115 = sub_10000A820();
  v116 = sub_100009840(v115);
  v118 = v117;
  v120 = *(v119 + 64);
  v121 = __chkstk_darwin(v116);
  v123 = &v510 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v121);
  sub_10000AB40();
  sub_10000AAB0();
  v124 = sub_10000AAA0();
  v125 = [objc_opt_self() defaultManager];
  sub_10000A810();
  v126 = sub_10000AB70();

  [v125 createFileAtPath:v126 contents:0 attributes:0];

  sub_100008310();
  (*(v118 + 16))(v123, v23, v115);
  v562 = sub_100004478(v123);
  v524 = v124;
  v520 = 0;
  v127 = [objc_allocWithZone(NSDateFormatter) init];
  [v127 setDateStyle:2];
  v564 = v127;
  [v127 setTimeStyle:2];
  sub_100009D0C();
  sub_10000AC50(136);
  v581._countAndFlagsBits = 0xD000000000000027;
  v581._object = 0x800000010000BA90;
  sub_10000ABE0(v581);
  sub_10000A880();
  sub_1000097CC(&qword_100014338);
  sub_100009F50(v553);
  v515 = v128;
  v582._countAndFlagsBits = sub_10000AC90();
  sub_100009E34(v582);

  sub_100009C2C(&v555);
  v530 = v129;
  v130 = sub_100009F68();
  v514 = v131;
  v131(v130);
  v583._countAndFlagsBits = 0xD00000000000005FLL;
  v583._object = 0x800000010000BAC0;
  sub_10000ABE0(v583);
  v132 = *(&v577 + 1);
  sub_100009BB4();
  sub_100009B24();
  v519 = v132;
  sub_10000AB90();
  sub_100009C98();
  sub_100009C2C(&a17);
  v569 = v133;
  v566 = v134;
  v134(0xD000000000000012, v567);
  sub_100009D3C();
  v135 = v126;
  v516 = v114;
  if (!(!v137 & v136))
  {
    sub_100009998();
    isa = sub_10000A830().super.isa;
    v139 = sub_100009964();
    [v139 v140];

    v141 = sub_100009998();
    sub_1000085C4(v141, v142);
  }

  v518 = sub_10000AA90();
  v143 = *(v518 + 16);
  sub_100009D48();
  v144 = v565;
  if (v143)
  {
    sub_100009D0C();
    sub_10000AC50(113);
    v584._object = 0x800000010000BD00;
    v584._countAndFlagsBits = 0xD00000000000001ALL;
    sub_10000ABE0(v584);
    *&v575[0] = v143;
    v585._countAndFlagsBits = sub_10000AC90();
    sub_10000ABE0(v585);

    v586._countAndFlagsBits = 0xD000000000000052;
    v586._object = 0x800000010000BD20;
    sub_10000ABE0(v586);
    v145._countAndFlagsBits = v143 == 1 ? 0xD000000000000034 : 0xD00000000000001ALL;
    v146 = v143 == 1 ? "Indexer might be crashing." : "ssful full index.\n";
    v145._object = (v146 | 0x8000000000000000);
    sub_10000ABE0(v145);

    v587._countAndFlagsBits = sub_100009C20();
    sub_10000ABE0(v587);
    sub_100009BB4();
    sub_100009B24();
    sub_10000AB90();
    sub_100009C98();

    sub_100009810();
    v147();
    sub_100009D3C();
    if (!(!v137 & v136))
    {
      sub_100009998();
      v148 = sub_10000A830().super.isa;
      v149 = sub_100009964();
      [v149 v150];

      v151 = sub_100009998();
      sub_1000085C4(v151, v152);
    }
  }

  v512 = v143;
  sub_100009C08();
  sub_1000016EC(v153, v154, v155, v135);
  v156 = sub_10000AAC0();
  sub_1000086B0(v101, &qword_100014328, &qword_10000B340);
  sub_100009B54();
  sub_100009D78();
  *&v577 = v158 + 2;
  *(&v577 + 1) = v157;
  v511 = *(v156 + 16);
  *&v575[0] = v511;
  v588._countAndFlagsBits = sub_10000AC90();
  sub_100009E34(v588);

  sub_10000A04C();
  v159 = *(&v577 + 1);
  sub_100009BB4();
  sub_100009B24();
  v517 = v159;
  sub_10000AB90();
  sub_100009C98();
  sub_100009810();
  v160();
  sub_100009D3C();
  if (!(!v137 & v136))
  {
    sub_100009998();
    v161 = sub_10000A830().super.isa;
    v162 = sub_100009964();
    [v162 v163];

    v164 = sub_100009998();
    sub_1000085C4(v164, v165);
  }

  v166 = *(v156 + 16);
  v513 = v156;
  if (v166)
  {
    v167 = v156 + 32;
    v533 = (v537 + 32);
    v523 = v537 + 16;
    v522 = v537 + 8;
    v542 = (v538 + 32);
    v532 = v538 + 16;
    v531 = v538 + 8;
    v168 = (v557 + 32);
    v541 = v557 + 16;
    v540 = v557 + 8;
    v169 = _swiftEmptyArrayStorage;
    sub_100009C60();
    sub_100009EE4();
    v170 = v554[0];
    v521 = v168;
    do
    {
      sub_100008354(v167, &v577);
      sub_10000A034();
      sub_1000016A4(&qword_100014340, &qword_10000B348);
      if (swift_dynamicCast())
      {
        sub_1000016EC(v170, 0, 1, v144);
        v171 = *v168;
        v156 = v549;
        v172 = sub_100009F68();
        v171(v172);
        sub_100009C38(&v567);
        v173(v550, v156, v144);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v223 = v169[2];
          sub_1000098A4();
          v224 = sub_1000098D0();
          v169 = sub_100007F94(v224, v225, v226, v169, &qword_100014400, &qword_10000B410, v227, v228);
        }

        v175 = v169[2];
        v174 = v169[3];
        v176 = v169;
        if (v175 >= v174 >> 1)
        {
          sub_100009900(v174);
          sub_100009BD0();
          v176 = sub_100007F94(v229, v230, v231, v232, &qword_100014400, &qword_10000B410, v233, v234);
        }

        sub_100009D54();
        (*(v156 + 8))(v549, v144);
        sub_1000083B8(&v577);
        v176[2] = v175 + 1;
        v169 = v176;
        v177 = *(v156 + 80);
        sub_1000099E4();
        (v171)(v176 + v178 + *(v156 + 72) * v175, v550, v144);
        sub_100009EE4();
      }

      else
      {
        sub_100009C08();
        sub_1000016EC(v179, v180, v181, v144);
        sub_1000086B0(v170, &qword_100014320, &qword_10000B338);
        sub_10000A034();
        if (swift_dynamicCast())
        {
          v182 = sub_100009F5C();
          sub_1000016EC(v182, v183, 1, v124);
          v184 = *v542;
          v185 = v534;
          (*v542)(v534, v156, v124);
          sub_100009C38(&v557);
          v186(v543, v185, v124);
          sub_100009EF0();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v187 = v556;
          }

          else
          {
            v235 = v556[2];
            v236 = sub_1000098D0();
            v187 = sub_100007F94(v236, v237, v238, v239, &qword_100014388, &qword_10000B3B8, v240, v241);
          }

          v189 = v187[2];
          v188 = v187[3];
          v190 = v538;
          if (v189 >= v188 >> 1)
          {
            sub_100009900(v188);
            sub_100009E90();
            v248 = sub_100007F94(v242, v243, v244, v245, &qword_100014388, &qword_10000B3B8, v246, v247);
            v190 = v538;
            v556 = v248;
          }

          else
          {
            v556 = v187;
          }

          v191 = v185;
          v192 = v190;
          (*(v190 + 8))(v191, v124);
          sub_1000083B8(&v577);
          v556[2] = v189 + 1;
          v193 = *(v192 + 80);
          sub_1000099E4();
          v184(v195 + v194 + *(v192 + 72) * v189, v543, v124);
          v144 = v565;
        }

        else
        {
          sub_100009C08();
          sub_1000016EC(v196, v197, v198, v124);
          sub_1000086B0(v156, &qword_100014318, &qword_10000B330);
          sub_10000A034();
          v156 = v536;
          v199 = v559;
          if (swift_dynamicCast())
          {
            sub_100009F5C();
            sub_100009BD0();
            sub_1000016EC(v200, v201, v202, v203);
            v204 = *v533;
            v205 = v527;
            (*v533)(v527, v156, v199);
            sub_100009C38(&v550);
            v206(v535, v205, v199);
            sub_100009EFC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v249 = v552[2];
              v250 = sub_1000098D0();
              sub_100007F94(v250, v251, v252, v253, &qword_100014390, &qword_10000B3C0, v254, v255);
            }

            sub_100009EE4();
            v209 = v207[2];
            v208 = v207[3];
            v210 = v537;
            if (v209 >= v208 >> 1)
            {
              sub_100009900(v208);
              sub_100009E90();
              v262 = sub_100007F94(v256, v257, v258, v259, &qword_100014390, &qword_10000B3C0, v260, v261);
              v210 = v537;
              v552 = v262;
            }

            else
            {
              v552 = v207;
            }

            v211 = v205;
            v212 = v559;
            v124 = v210;
            (*(v210 + 8))(v211, v559);
            sub_1000083B8(&v577);
            v552[2] = v209 + 1;
            v213 = *(v124 + 80);
            sub_1000099E4();
            v204(v215 + v214 + *(v124 + 72) * v209, v535, v212);
            sub_100009D48();
            v168 = v521;
          }

          else
          {
            sub_100009BD0();
            sub_1000016EC(v216, v217, v218, v219);
            sub_1000086B0(v156, &qword_100014310, &qword_10000B328);
            sub_10000A034();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v263 = v539[2];
              v264 = sub_1000098D0();
              v539 = sub_100007E5C(v264, v265, v266, v267);
            }

            sub_100009EE4();
            v221 = v539[2];
            v220 = v539[3];
            if (v221 >= v220 >> 1)
            {
              sub_100009900(v220);
              sub_100009E90();
              v539 = sub_100007E5C(v268, v269, v270, v539);
            }

            sub_1000083B8(&v577);
            v222 = v539;
            v539[2] = v221 + 1;
            sub_100008404(v575, &v222[5 * v221 + 4]);
          }
        }
      }

      v167 += 40;
      --v166;
      v170 = v554[0];
    }

    while (v166);
  }

  else
  {
    v169 = _swiftEmptyArrayStorage;
    sub_100009C60();
  }

  v271 = &_swiftEmptyDictionarySingleton;
  v580 = &_swiftEmptyDictionarySingleton;
  v549 = v169[2];
  v550 = v169;
  v272 = 0;
  if (v549)
  {
    v273 = 0;
    sub_100009D54();
    v274 = *(v156 + 80);
    sub_1000099E4();
    v543 = v275;
    v544 = v169 + v275;
    v541 = v156 + 8;
    v540 = v156 + 32;
    v277 = v276;
    v542 = (v156 + 16);
    while (v273 < v550[2])
    {
      v278 = v277;
      v554[0] = *(v156 + 72);
      v279 = *(v156 + 16);
      v280 = v558;
      (v279)(v558, &v544[v554[0] * v273], v144);
      v281 = sub_10000AA30();
      v156 = v144;
      if (v282)
      {
        v283 = v281;
        v284 = v282;
        sub_100009E58();
        v279();
        sub_100008630(v272);
        v285 = v580;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v577 = v285;
        v287 = sub_100009E4C();
        v289 = sub_10000841C(v287, v288);
        v291 = *(v285 + 2);
        v292 = (v290 & 1) == 0;
        v293 = v291 + v292;
        if (__OFADD__(v291, v292))
        {
          goto LABEL_154;
        }

        v294 = v289;
        v295 = v290;
        sub_1000016A4(&qword_100014350, &qword_10000B358);
        v280 = &v577;
        v296 = sub_10000AC70(isUniquelyReferenced_nonNull_native, v293);
        v271 = v577;
        if (v296)
        {
          v297 = sub_100009E4C();
          v280 = v271;
          v299 = sub_10000841C(v297, v298);
          v156 = v557;
          if ((v295 & 1) != (v300 & 1))
          {
            goto LABEL_159;
          }

          v294 = v299;
        }

        else
        {
          sub_100009D54();
        }

        v580 = v271;
        if (v295)
        {
        }

        else
        {
          *(v271 + (v294 >> 6) + 8) |= 1 << v294;
          v306 = (*(v271 + 6) + 16 * v294);
          *v306 = v283;
          v306[1] = v284;
          *(*(v271 + 7) + 8 * v294) = _swiftEmptyArrayStorage;
          v307 = *(v271 + 2);
          v308 = __OFADD__(v307, 1);
          v309 = v307 + 1;
          if (v308)
          {
            goto LABEL_158;
          }

          *(v271 + 2) = v309;
        }

        v310 = *(v271 + 7);
        v311 = *(v310 + 8 * v294);
        v312 = swift_isUniquelyReferenced_nonNull_native();
        *(v310 + 8 * v294) = v311;
        v144 = v565;
        if ((v312 & 1) == 0)
        {
          v318 = v311[2];
          sub_1000098A4();
          v319 = sub_1000098D0();
          v311 = sub_100007F94(v319, v320, v321, v311, &qword_100014400, &qword_10000B410, v322, v323);
          *(v310 + 8 * v294) = v311;
        }

        v314 = v311[2];
        v313 = v311[3];
        sub_100009E70();
        if (v136)
        {
          sub_100009900(v315);
          sub_100009BD0();
          *(v310 + 8 * v294) = sub_100007F94(v324, v325, v326, v327, &qword_100014400, &qword_10000B410, v328, v329);
        }

        sub_100009C38(&v567);
        v316(v558, v144);
        v305 = *(v310 + 8 * v294);
        v272 = sub_1000045D0;
        v277 = v278;
      }

      else
      {
        sub_100009E58();
        v279();
        v277 = v278;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v330 = *(v278 + 16);
          sub_1000098A4();
          v331 = sub_1000098D0();
          v277 = sub_100007F94(v331, v332, v333, v278, &qword_100014400, &qword_10000B410, v334, v335);
        }

        sub_100009D54();
        sub_100009D48();
        v302 = v277[2];
        v301 = v277[3];
        sub_100009E70();
        if (v136)
        {
          v336 = sub_100009900(v303);
          v277 = sub_100007F94(v336, v280, 1, v277, &qword_100014400, &qword_10000B410, &type metadata accessor for IndexingLog.IndexingEvent, &type metadata accessor for IndexingLog.IndexingEvent);
        }

        sub_100009C38(&v567);
        v304(v558, v144);
        v305 = v277;
      }

      ++v273;
      v305[2] = v280;
      sub_100009C38(&v566);
      v317();
      if (v549 == v273)
      {
        goto LABEL_71;
      }
    }

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
    sub_10000ACB0();
    __break(1u);
    goto LABEL_160;
  }

  v277 = _swiftEmptyArrayStorage;
  sub_100009D54();
LABEL_71:
  v544 = v277;
  v543 = v272;
  *&v577 = 8254;
  *(&v577 + 1) = 0xE200000000000000;
  *&v575[0] = *(v271 + 2);
  v589._countAndFlagsBits = sub_10000AC90();
  sub_100009E34(v589);

  sub_100009D78();
  v590._countAndFlagsBits = v337 - 2;
  v590._object = (v338 | 0x8000000000000000);
  v542 = (v337 - 2);
  sub_10000ABE0(v590);
  sub_100009BB4();
  v339 = sub_10000AB90();
  v341 = v340;
  sub_100009810();
  v342();
  sub_100009BDC();
  if (!(!v137 & v136))
  {
    v343 = sub_10000A830().super.isa;
    v344 = sub_100009964();
    [v344 v345];

    sub_1000085C4(v339, v341);
  }

  *&v577 = sub_100008508(v346);
  v347 = v520;
  sub_100008494(&v577);
  v348 = &v567;
  v541 = v347;
  if (v347)
  {
LABEL_160:
    v509 = *(v348 - 32);

    __break(1u);
    return;
  }

  v349 = 0;
  v350 = v577;
  v554[0] = *(v577 + 16);
  v550 = (v577 + 32);
  v351 = (v156 + 8);
  v352 = v553[0];
  v549 = v577;
  while (v349 != v554[0])
  {
    v353 = v349;
    if (v349 >= *(v350 + 16))
    {
      __break(1u);
      goto LABEL_149;
    }

    v349 = (v349 + 1);
    v354 = v580;
    if (*(v580 + 2))
    {
      v558 = v349;
      v355 = &v550[2 * v353];
      v356 = *v355;
      v357 = v355[1];

      v358 = sub_100009E4C();
      v360 = sub_10000841C(v358, v359);
      if (v361)
      {
        v362 = *(*(v354 + 7) + 8 * v360);
        *&v577 = 544109906;
        *(&v577 + 1) = 0xE400000000000000;
        *&v575[0] = v558;
        v551 = v362;

        v591._countAndFlagsBits = sub_10000AC90();
        sub_10000ABE0(v591);

        v592._countAndFlagsBits = 0x203A44492820;
        v592._object = 0xE600000000000000;
        sub_10000ABE0(v592);
        v593._countAndFlagsBits = sub_100009E4C();
        sub_10000ABE0(v593);

        v594._countAndFlagsBits = 2601;
        v594._object = 0xE200000000000000;
        sub_10000ABE0(v594);
        sub_10000ABA0();
        sub_100009B24();
        sub_10000AB90();
        sub_100009C7C();
        sub_100009810();
        v363();
        sub_100009BDC();
        if (!(!v137 & v136))
        {
          sub_100009BA8();
          v364 = sub_10000A830().super.isa;
          v365 = sub_100009964();
          [v365 v366];

          v367 = sub_100009BA8();
          sub_1000085C4(v367, v368);
        }

        v369 = *(v551 + 16);
        v370 = v563;
        if (v369)
        {
          v371 = *(v156 + 80);
          sub_1000099E4();
          v374 = v372 + v373;
          v375 = *(v156 + 72);
          v376 = *(v156 + 16);
          do
          {
            v377 = v565;
            v376(v370, v374, v565);
            sub_1000051CC(v370, v564);
            (*v351)(v370, v377);
            sub_10000ABA0();
            sub_100009F5C();
            v378 = sub_10000AB90();
            v380 = v379;

            sub_100009810();
            v381();
            if (v380 >> 60 != 15)
            {
              v382 = sub_10000A830().super.isa;
              v383 = sub_100009964();
              [v383 v384];
              sub_1000085C4(v378, v380);
            }

            v374 += v375;
            --v369;
            v370 = v563;
          }

          while (v369);

          sub_100009D48();
        }

        else
        {
        }

        sub_10000ABA0();
        sub_100009F5C();
        sub_10000AB90();
        sub_100009C98();
        sub_100009810();
        v385();
        sub_100009D3C();
        v352 = v553[0];
        v156 = v557;
        v350 = v549;
        v349 = v558;
        if (!(!v137 & v136))
        {
          sub_100009998();
          v386 = sub_10000A830().super.isa;
          v387 = sub_100009964();
          [v387 v388];

          v352 = v553[0];
          v389 = sub_100009998();
          sub_1000085C4(v389, v390);
        }
      }

      else
      {

        v349 = v558;
      }
    }
  }

  v391 = *(v544 + 2);
  if (v391)
  {
    *&v577 = 8254;
    *(&v577 + 1) = 0xE200000000000000;
    *&v575[0] = v391;

    v595._countAndFlagsBits = sub_10000AC90();
    sub_100009E1C(v595);

    sub_100009D78();
    v596._countAndFlagsBits = v392 + 12;
    v596._object = (v393 | 0x8000000000000000);
    sub_10000ABE0(v596);
    sub_100009BB4();
    sub_10000AB90();
    sub_100009CA4();
    sub_100009810();
    v394();
    sub_100009E9C();
    if (!(!v137 & v136))
    {
      sub_1000099A4();
      v395 = sub_10000A830().super.isa;
      v396 = sub_100009964();
      [v396 v397];

      v398 = sub_1000099A4();
      sub_1000085C4(v398, v399);
    }

    v400 = (v557 + 32);
    *&v578 = 0;
    v577 = v544;
    while (1)
    {
      sub_100005050(v352);
      v401 = v352;
      v402 = v548;
      sub_100009770(v401, v548, &qword_100014308, &qword_10000B320);
      v403 = sub_1000016A4(&qword_100014348, &qword_10000B350);
      v404 = sub_100009C14();
      sub_1000099F0(v404, v405, v403);
      if (v137)
      {
        break;
      }

      v406 = v402;
      v407 = *v402;
      (*v400)(v560, &v406[*(v403 + 48)], v565);
      *&v575[0] = 0xD000000000000012;
      *(&v575[0] + 1) = 0x800000010000BCE0;
      if (__OFADD__(v407, 1))
      {
        goto LABEL_150;
      }

      v570 = v407 + 1;
      v597._countAndFlagsBits = sub_10000AC90();
      sub_10000ABE0(v597);

      v598._countAndFlagsBits = sub_100009C20();
      sub_10000ABE0(v598);
      sub_100009D84();
      sub_100009B24();
      sub_10000AB90();
      sub_100009C7C();
      sub_100009810();
      v408();
      sub_100009BDC();
      if (!(!v137 & v136))
      {
        sub_100009BA8();
        v409 = sub_10000A830().super.isa;
        v410 = sub_100009964();
        [v410 v411];

        v412 = sub_100009BA8();
        sub_1000085C4(v412, v413);
      }

      sub_1000051CC(v560, v564);
      sub_100009D84();
      sub_100009B24();
      sub_10000AB90();
      sub_100009C7C();
      sub_100009810();
      v414();
      sub_100009BDC();
      if (!(!v137 & v136))
      {
        sub_100009BA8();
        v415 = sub_10000A830().super.isa;
        v416 = sub_100009964();
        [v416 v417];
        v418 = sub_100009BA8();
        sub_1000085C4(v418, v419);
      }

      (*v351)(v560, v565);
      sub_100009D48();
      v352 = v553[0];
    }
  }

  v420 = *(sub_100009EF0() + 16);
  i = v568;
  v422 = v555;
  if (v420)
  {
    sub_100009CCC(v420);

    v599._countAndFlagsBits = sub_10000AC90();
    sub_100009E1C(v599);

    v600._countAndFlagsBits = 0x657665204C415720;
    v600._object = 0xED00000A0A73746ELL;
    sub_10000ABE0(v600);
    v423 = *(&v577 + 1);
    sub_10000ABA0();
    sub_100009BE8();
    sub_100009CA4();
    sub_100009810();
    v424();
    sub_100009E9C();
    if (!(!v137 & v136))
    {
      sub_1000099A4();
      v423 = sub_10000A830().super.isa;
      v425 = sub_100009964();
      [v425 v426];

      v427 = sub_1000099A4();
      sub_1000085C4(v427, v428);
    }

    v429 = 0;
    sub_100009F80(&v565 + 8);
    i = v547;
    while (1)
    {
      v430 = v556[2];
      if (v429 != v430)
      {
        if (v429 >= v430)
        {
          goto LABEL_155;
        }

        v431 = sub_1000099B0(&v565 + 8);
        v432(v431);
        sub_100009770(v429++, v555, &qword_1000142F8, &qword_10000B310);
        v422 = v555;
      }

      sub_100009BD0();
      sub_1000016EC(v433, v434, v435, v436);
      sub_100009F94(v422, &v572);
      sub_1000099F0(v422, 1, i);
      if (v137)
      {
        break;
      }

      sub_100009D60();
      v437 = sub_100009F50(&v577 + 8);
      v438(v437);
      if (__OFADD__(v422, 1))
      {
        goto LABEL_151;
      }

      sub_100006684();
      sub_100009D84();
      sub_10000A014();

      sub_100009810();
      v439();
      sub_100009BDC();
      if (!(!v137 & v136))
      {
        sub_100009F74();
        v440 = sub_10000A830().super.isa;
        v441 = sub_100009964();
        [v441 v442];
        v443 = sub_100009F74();
        sub_1000085C4(v443, v444);
      }

      (*v423)(v554[1], v561);
      i = v547;
      v422 = v555;
    }

    sub_100009EF0();

    sub_100009E7C();
  }

  v445 = *(sub_100009EFC() + 16);
  if (v445)
  {
    sub_100009CCC(v445);

    v601._countAndFlagsBits = sub_10000AC90();
    sub_100009E1C(v601);

    v602._object = 0x800000010000BB80;
    v602._countAndFlagsBits = v542;
    sub_10000ABE0(v602);
    v446 = *(&v577 + 1);
    sub_10000ABA0();
    sub_100009BE8();
    sub_100009CA4();
    sub_100009810();
    v447();
    sub_100009E9C();
    if (!(!v137 & v136))
    {
      sub_1000099A4();
      v446 = sub_10000A830().super.isa;
      v448 = sub_100009964();
      [v448 v449];

      v450 = sub_1000099A4();
      sub_1000085C4(v450, v451);
    }

    v452 = 0;
    sub_100009F80(&v564);
    for (i = v546; ; i = v546)
    {
      v453 = v552[2];
      if (v452 != v453)
      {
        if (v452 >= v453)
        {
          goto LABEL_156;
        }

        v454 = sub_1000099B0(&v564);
        v455(v454);
        sub_100009770(v452++, v545, &qword_1000142E8, &qword_10000B300);
      }

      sub_100009BD0();
      v457 = v456;
      sub_1000016EC(v456, v458, v459, v460);
      sub_100009F94(v457, &v571);
      sub_1000099F0(v457, 1, i);
      if (v137)
      {
        break;
      }

      sub_100009D60();
      v461 = sub_100009F50(&v576 + 8);
      v462(v461);
      if (__OFADD__(v457, 1))
      {
        goto LABEL_152;
      }

      sub_100006F98();
      sub_10000ABA0();
      sub_10000A014();

      sub_100009810();
      v463();
      sub_100009BDC();
      if (!(!v137 & v136))
      {
        sub_100009F74();
        v464 = sub_10000A830().super.isa;
        v465 = sub_100009964();
        [v465 v466];
        v467 = sub_100009F74();
        sub_1000085C4(v467, v468);
      }

      (*v446)(v553[1], v559);
    }

    sub_100009EFC();

    sub_100009E7C();
  }

  v469 = v539[2];
  if (v469)
  {
    sub_100009CCC(v469);
    v603._countAndFlagsBits = sub_10000AC90();
    sub_100009E1C(v603);

    v604._countAndFlagsBits = 0x6520726568746F20;
    v604._object = 0xEF0A0A73746E6576;
    sub_10000ABE0(v604);
    sub_10000ABA0();
    sub_100009BE8();
    sub_100009CA4();
    sub_100009810();
    v470();
    sub_100009E9C();
    if (!(!v137 & v136))
    {
      sub_1000099A4();
      v471 = sub_10000A830().super.isa;
      v472 = sub_100009964();
      [v472 v473];

      v474 = sub_1000099A4();
      sub_1000085C4(v474, v475);
    }

    v476 = 0;
    v477 = v539[2];
    v478 = v539 + 4;
    while (1)
    {
      v479 = 0uLL;
      v480 = v477;
      v481 = 0uLL;
      v482 = 0uLL;
      if (v476 != v477)
      {
        if (v476 >= v539[2])
        {
          goto LABEL_157;
        }

        v480 = v476 + 1;
        *&v575[0] = v476;
        sub_100008354(&v478[5 * v476], v575 + 8);
        v479 = v575[0];
        v481 = v575[1];
        v482 = v576;
      }

      v577 = v479;
      v578 = v481;
      v579 = v482;
      if (!v482)
      {
        break;
      }

      v565 = v479;
      sub_100008404((&v577 + 8), v575);
      strcpy(v573, "Other Event ");
      v573[13] = 0;
      v574 = -5120;
      if (__OFADD__(v565, 1))
      {
        goto LABEL_153;
      }

      v570 = v565 + 1;
      v605._countAndFlagsBits = sub_10000AC90();
      sub_10000ABE0(v605);

      v606._countAndFlagsBits = 8250;
      v606._object = 0xE200000000000000;
      sub_10000ABE0(v606);
      sub_100008354(v575, &v570);
      sub_1000016A4(&qword_100014340, &qword_10000B348);
      v607._countAndFlagsBits = sub_10000ABC0();
      sub_10000ABE0(v607);

      sub_10000A04C();
      sub_10000ABA0();
      sub_100009B24();
      sub_10000AB90();
      sub_100009C7C();
      sub_100009810();
      v483();
      sub_100009BDC();
      if (!(!v137 & v136))
      {
        sub_100009BA8();
        v484 = sub_10000A830().super.isa;
        v485 = sub_100009964();
        [v485 v486];
        v487 = sub_100009BA8();
        sub_1000085C4(v487, v488);
      }

      sub_1000083B8(v575);
      v476 = v480;
    }

    i = v568;
  }

  sub_100009D0C();
  sub_10000AC50(263);
  v608._countAndFlagsBits = 0xD000000000000068;
  v608._object = 0x800000010000BBA0;
  sub_10000ABE0(v608);
  *&v575[0] = v511;
  v609._countAndFlagsBits = sub_100009A2C();
  sub_100009E1C(v609);

  sub_100009FB4("\n- Indexing runs: ");
  *&v575[0] = *(v580 + 2);
  v610._countAndFlagsBits = sub_100009A2C();
  sub_100009DEC(v610);

  v611._countAndFlagsBits = 0xD000000000000020;
  v611._object = 0x800000010000BC30;
  sub_10000ABE0(v611);
  v489 = *(v544 + 2);

  *&v575[0] = v489;
  v612._countAndFlagsBits = sub_100009A2C();
  sub_100009DEC(v612);

  v613._countAndFlagsBits = 0x65204C4157202D0ALL;
  v613._object = 0xEF203A73746E6576;
  sub_10000ABE0(v613);
  v490 = *(sub_100009EF0() + 16);

  *&v575[0] = v490;
  v614._countAndFlagsBits = sub_100009A2C();
  sub_100009DEC(v614);

  sub_100009FB4("\n- Vacuum events: ");
  v491 = *(sub_100009EFC() + 16);

  *&v575[0] = v491;
  v615._countAndFlagsBits = sub_100009A2C();
  sub_100009DEC(v615);

  v616._countAndFlagsBits = 0xD000000000000011;
  v616._object = 0x800000010000BC80;
  sub_10000ABE0(v616);
  v492 = v539[2];

  *&v575[0] = v492;
  v617._countAndFlagsBits = sub_100009A2C();
  sub_100009DEC(v617);

  v618._countAndFlagsBits = 0xD000000000000017;
  v618._object = 0x800000010000BCA0;
  sub_10000ABE0(v618);
  *&v575[0] = v512;
  v619._countAndFlagsBits = sub_100009A2C();
  sub_100009E34(v619);

  v620._countAndFlagsBits = 0xD000000000000014;
  v620._object = 0x800000010000BCC0;
  sub_10000ABE0(v620);
  v493 = v516;
  sub_10000A880();
  v494 = v526;
  v621._countAndFlagsBits = sub_10000AC90();
  sub_100009E34(v621);

  v514(v493, v494);
  sub_10000ABA0();
  sub_100009B24();
  sub_10000AB90();
  sub_100009C98();

  sub_100009810();
  v495();
  sub_100009D3C();
  if (!(!v137 & v136))
  {
    sub_100009998();
    v496 = sub_10000A830().super.isa;
    v497 = sub_100009964();
    [v497 v498];

    v499 = sub_100009998();
    sub_1000085C4(v499, v500);
  }

  v501 = v525;
  sub_10000A8F0();
  sub_100009F50(&v542);

  v502 = sub_10000A900();
  v503 = sub_10000AC20();
  if (os_log_type_enabled(v502, v503))
  {
    v504 = swift_slowAlloc();
    *v504 = 134217984;
    v505 = *(i + 16);

    *(v504 + 4) = v505;

    _os_log_impl(&_mh_execute_header, v502, v503, "ToolKitDiagnosticExtension - Successfully exported ALL %ld ToolKit indexing log events (unlimited)", v504, 0xCu);
    v506 = v504;
    v501 = v525;
    sub_100009E04(v506);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  sub_100009C2C(v554);
  v507(v501, v529);

  v508 = v562;
  [v562 closeFile];

  sub_100008630(v543);
  sub_100009DD4();
}

id sub_100004478(uint64_t a1)
{
  sub_10000A7F0(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = sub_10000A820();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    sub_10000A7E0();

    swift_willThrow();
    v10 = sub_10000A820();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

void sub_1000045E0()
{
  sub_100009DBC();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v131 = sub_10000AA40();
  v9 = sub_100009840(v131);
  v128 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100009854();
  v126 = v13;
  sub_10000990C();
  __chkstk_darwin(v14);
  v16 = &v111 - v15;
  v17 = sub_1000016A4(&qword_100014328, &qword_10000B340);
  v18 = sub_100009970(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_100009854();
  v125 = v21;
  sub_10000990C();
  v23 = __chkstk_darwin(v22);
  v25 = &v111 - v24;
  __chkstk_darwin(v23);
  sub_100009918();
  v130 = v26;
  sub_10000990C();
  __chkstk_darwin(v27);
  sub_100009EBC();
  __chkstk_darwin(v28);
  v30 = &v111 - v29;
  v31 = sub_10000A890();
  v32 = sub_100009840(v31);
  v129 = v33;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  sub_100009854();
  v124 = v36;
  sub_10000990C();
  __chkstk_darwin(v37);
  sub_100009EA8();
  __chkstk_darwin(v38);
  sub_100009918();
  v123 = v39;
  sub_10000990C();
  __chkstk_darwin(v40);
  sub_100009CFC();
  v41 = *v8;
  v42 = v8[1];
  v44 = *v6;
  v43 = v6[1];
  v45 = sub_100004DA8(v41, v42, *v4);
  v127 = v31;
  v117 = v0;
  v118 = v25;
  v116 = v2;
  if (v45)
  {
    v114 = v44;
    v115 = v30;
    v46 = *(v45 + 16);
    if (v46)
    {
      v112 = v43;
      v113 = v4;
      v121 = *(v128 + 16);
      v47 = *(v128 + 80);
      sub_1000099E4();
      v111 = v48;
      v50 = v48 + v49;
      v52 = (v51 - 8);
      v119 = (v129 + 32);
      v53 = _swiftEmptyArrayStorage;
      v122 = v51;
      v120 = *(v51 + 56);
      do
      {
        (v121)(v16, v50, v131);
        v54 = v130;
        sub_10000A9F0();
        sub_100009770(v54, v1, &qword_100014328, &qword_10000B340);
        v55 = *v52;
        v56 = sub_100009998();
        v57(v56);
        sub_100009924(v1);
        if (v58)
        {
          sub_1000086B0(v1, &qword_100014328, &qword_10000B340);
        }

        else
        {
          v59 = *v119;
          (*v119)(v123, v1, v31);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v67 = v53[2];
            sub_100009A08();
            v68 = sub_1000098D0();
            v53 = sub_100007F94(v68, v69, v70, v53, &qword_1000143F0, &qword_10000B408, v71, v72);
          }

          v62 = v53[2];
          v61 = v53[3];
          if (v62 >= v61 >> 1)
          {
            v53 = sub_100007F94((v61 > 1), v62 + 1, 1, v53, &qword_1000143F0, &qword_10000B408, &type metadata accessor for Date, &type metadata accessor for Date);
          }

          v53[2] = v62 + 1;
          v63 = *(v129 + 80);
          sub_1000099E4();
          v66 = v53 + v64 + *(v65 + 72) * v62;
          v31 = v127;
          v59(v66, v123, v127);
        }

        v50 += v120;
        --v46;
      }

      while (v46);

      v0 = v117;
      v25 = v118;
      v2 = v116;
      v43 = v112;
      v4 = v113;
    }

    else
    {

      v53 = _swiftEmptyArrayStorage;
    }

    v30 = v115;
    sub_100004DF8(v53, v115);

    sub_100009924(v30);
    v44 = v114;
    if (!v58)
    {
      (*(v129 + 32))(v2, v30, v31);
      goto LABEL_20;
    }
  }

  else
  {
    sub_100009C08();
    sub_1000016EC(v73, v74, v75, v31);
  }

  sub_10000A840();
  sub_100009924(v30);
  if (!v58)
  {
    sub_1000086B0(v30, &qword_100014328, &qword_10000B340);
  }

LABEL_20:
  v76 = sub_100004DA8(v44, v43, *v4);
  if (v76)
  {
    v77 = *(v76 + 16);
    v120 = v76;
    if (v77)
    {
      v123 = *(v128 + 16);
      v78 = *(v128 + 80);
      sub_1000099E4();
      v81 = v79 + v80;
      v83 = (v82 - 8);
      v121 = (v129 + 32);
      v84 = _swiftEmptyArrayStorage;
      v128 = v82;
      v122 = *(v82 + 56);
      do
      {
        v123(v126, v81, v131);
        v85 = v130;
        sub_10000A9F0();
        v86 = v125;
        sub_100009770(v85, v125, &qword_100014328, &qword_10000B340);
        v87 = *v83;
        v88 = sub_100009F44();
        v89(v88);
        sub_100009924(v86);
        if (v58)
        {
          sub_1000086B0(v86, &qword_100014328, &qword_10000B340);
        }

        else
        {
          v90 = *v121;
          (*v121)(v124, v86, v31);
          v91 = swift_isUniquelyReferenced_nonNull_native();
          if ((v91 & 1) == 0)
          {
            v98 = v84[2];
            sub_100009A08();
            v99 = sub_1000098D0();
            v84 = sub_100007F94(v99, v100, v101, v84, &qword_1000143F0, &qword_10000B408, v102, v103);
          }

          v93 = v84[2];
          v92 = v84[3];
          if (v93 >= v92 >> 1)
          {
            v84 = sub_100007F94((v92 > 1), v93 + 1, 1, v84, &qword_1000143F0, &qword_10000B408, &type metadata accessor for Date, &type metadata accessor for Date);
          }

          v84[2] = v93 + 1;
          v94 = *(v129 + 80);
          sub_1000099E4();
          v97 = v84 + v95 + *(v96 + 72) * v93;
          v31 = v127;
          v90(v97, v124, v127);
        }

        v81 += v122;
        --v77;
      }

      while (v77);
    }

    else
    {
      v84 = _swiftEmptyArrayStorage;
    }

    v25 = v118;
    sub_100004DF8(v84, v118);

    sub_100009924(v25);
    v2 = v116;
    v0 = v117;
    if (!v58)
    {
      v107 = *(v129 + 32);
      v108 = sub_100009F44();
      v109(v108);
      goto LABEL_39;
    }
  }

  else
  {
    sub_100009C08();
    sub_1000016EC(v104, v105, v106, v31);
  }

  sub_10000A840();
  sub_100009924(v25);
  if (!v58)
  {
    sub_1000086B0(v25, &qword_100014328, &qword_10000B340);
  }

LABEL_39:
  sub_10000A870();
  v110 = *(v129 + 8);
  v110(v0, v31);
  v110(v2, v31);
  sub_100009DD4();
}

uint64_t sub_100004DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10000841C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_100004DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000A890();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v21 = *(a1 + 16);
  if (v21)
  {
    v20 = a2;
    v12 = *(v5 + 16);
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12(&v20 - v10, v13, v4);
    v14 = (v5 + 32);
    for (i = 1; v21 != i; ++i)
    {
      v12(v9, v13 + *(v5 + 72) * i, v4);
      sub_1000097CC(&qword_1000143F8);
      v16 = sub_10000AB60();
      v17 = *(v5 + 8);
      if (v16)
      {
        v17(v11, v4);
        (*v14)(v11, v9, v4);
      }

      else
      {
        v17(v9, v4);
      }
    }

    v18 = v20;
    (*v14)(v20, v11, v4);
    return sub_1000016EC(v18, 0, 1, v4);
  }

  else
  {

    return sub_1000016EC(a2, 1, 1, v4);
  }
}

uint64_t sub_100005050@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000016A4(&qword_100014348, &qword_10000B350);
  v4 = *(*(v3 - 8) + 64);
  result = __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(*v1 + 16);
  if (v9 == v10)
  {

    return sub_1000016EC(a1, 1, 1, v3);
  }

  else
  {
    if (v9 >= v10)
    {
      __break(1u);
    }

    else
    {
      v11 = sub_10000AA40();
      v12 = *(v11 - 8);
      v13 = *(v12 + 16);
      v14 = v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v9;
      v1[1] = v9 + 1;
      v15 = *(v3 + 48);
      v16 = v1[2];
      *v7 = v16;
      result = v13(&v7[v15], v14, v11);
      if (!__OFADD__(v16, 1))
      {
        v1[2] = v16 + 1;
        sub_100009770(v7, a1, &qword_100014348, &qword_10000B350);
        return sub_1000016EC(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000051CC(void *a1, void *a2)
{
  v291 = a2;
  v295 = a1;
  v4 = sub_1000016A4(&qword_1000143B0, &qword_10000B3D8);
  sub_100009970(v4);
  v6 = *(v5 + 64);
  sub_100009A20();
  __chkstk_darwin(v7);
  sub_100009B3C();
  v289 = v8;
  v293 = sub_10000A8D0();
  v9 = sub_100009840(v293);
  v287 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_1000098E0();
  v286 = v14 - v13;
  v272 = sub_10000A8B0();
  v15 = sub_100009840(v272);
  v271[1] = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_1000098E0();
  sub_10000998C(v20 - v19);
  v279 = sub_10000A8E0();
  v21 = sub_100009840(v279);
  v278 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_1000098E0();
  sub_10000998C(v26 - v25);
  v27 = sub_1000016A4(&qword_1000143B8, &qword_10000B3E0);
  sub_100009970(v27);
  v29 = *(v28 + 64);
  sub_100009A20();
  __chkstk_darwin(v30);
  sub_100009B3C();
  v294 = v31;
  v292 = sub_1000016A4(&qword_1000143C0, &qword_10000B3E8);
  v32 = sub_100009840(v292);
  v285 = v33;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  sub_100009854();
  v288 = v36;
  sub_10000990C();
  __chkstk_darwin(v37);
  sub_100009B48();
  v284 = v38;
  v39 = sub_1000016A4(&qword_100014328, &qword_10000B340);
  v40 = sub_100009970(v39);
  v42 = *(v41 + 64);
  v43 = __chkstk_darwin(v40);
  v45 = v271 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  sub_100009918();
  v283 = v46;
  sub_10000990C();
  __chkstk_darwin(v47);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v48);
  sub_100009918();
  v282 = v49;
  sub_10000990C();
  v51 = __chkstk_darwin(v50);
  v53 = v271 - v52;
  __chkstk_darwin(v51);
  sub_100009ED0();
  __chkstk_darwin(v54);
  sub_100009CFC();
  v55 = sub_10000A890();
  v56 = sub_100009840(v55);
  v296 = v57;
  v59 = *(v58 + 64);
  __chkstk_darwin(v56);
  sub_100009854();
  sub_100009894();
  __chkstk_darwin(v60);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v61);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v62);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v63);
  sub_100009918();
  v290 = v64;
  sub_10000990C();
  v66 = __chkstk_darwin(v65);
  v68 = v271 - v67;
  v69 = __chkstk_darwin(v66);
  v71 = v271 - v70;
  v74 = sub_100009DA0(v69, v72, v73, _swiftEmptyArrayStorage);
  v76 = *(v74 + 2);
  v75 = *(v74 + 3);
  v275 = v45;
  if (v76 >= v75 >> 1)
  {
    v222 = sub_10000982C(v75);
    v74 = sub_100007C54(v222, v223, v224, v74);
  }

  *(v74 + 2) = v76 + 1;
  v77 = &v74[16 * v76];
  *(v77 + 4) = 0x3A746E6576452020;
  *(v77 + 5) = 0xE800000000000000;
  sub_10000A9F0();
  v78 = &ToolKitDiagnosticWrapper;
  if (sub_1000082E8(v2, 1, v55) == 1)
  {
    sub_1000086B0(v2, &qword_100014328, &qword_10000B340);
  }

  else
  {
    (*(v296 + 32))(v71, v2, v55);
    strcpy(v298, "    Queued: ");
    BYTE5(v298[1]) = 0;
    HIWORD(v298[1]) = -5120;
    isa = sub_10000A860().super.isa;
    v80 = [v291 stringFromDate:isa];

    v81 = sub_10000AB80();
    v83 = v82;

    v305._countAndFlagsBits = v81;
    v305._object = v83;
    sub_10000ABE0(v305);

    v78 = v298[0];
    v84 = v298[1];
    v86 = *(v74 + 2);
    v85 = *(v74 + 3);
    sub_100009E70();
    if (v92)
    {
      v235 = sub_10000982C(v87);
      v74 = sub_100007C54(v235, v236, v237, v74);
    }

    (*(v296 + 8))(v71, v55);
    *(v74 + 2) = v298;
    v88 = &v74[16 * v86];
    *(v88 + 4) = v78;
    *(v88 + 5) = v84;
  }

  v89 = v295;
  sub_10000AA10();
  sub_100009944(v3);
  if (v121)
  {
    sub_1000086B0(v3, &qword_100014328, &qword_10000B340);
  }

  else
  {
    (*(v296 + 32))(v68, v3, v55);
    strcpy(v298, "    Started: ");
    HIWORD(v298[1]) = -4864;
    v90 = sub_10000A860().super.isa;
    v91 = [v291 stringFromDate:v90];

    sub_10000AB80();
    sub_100009CC0();

    sub_100009C44();

    v78 = v298[0];
    sub_100009A84();
    if (v92)
    {
      v238 = sub_10000982C(v93);
      v74 = sub_100007C54(v238, v239, v240, v74);
    }

    v94 = sub_100009CEC(v296);
    v95(v94);
    sub_100009D2C();
  }

  v96 = v89;
  sub_10000AA20();
  sub_100009944(v53);
  v97 = v294;
  if (v121)
  {
    sub_1000086B0(v53, &qword_100014328, &qword_10000B340);
    sub_100009A74();
    if (v92)
    {
      v241 = sub_10000982C(v98);
      v74 = sub_100007C54(v241, v242, v243, v74);
    }

    v99 = v293;
    v100 = v97;
    v101 = 0x800000010000BF00;
    sub_100009B18();
    v102 = v97 + 32;
  }

  else
  {
    (*(v296 + 32))(v290, v53, v55);
    v103 = sub_10000A970();
    if (v104)
    {
      v105 = v103;
      v106 = v104;
      strcpy(v298, "    Failed: ");
      BYTE5(v298[1]) = 0;
      HIWORD(v298[1]) = -5120;
      v107 = sub_10000A860().super.isa;
      v108 = [v291 stringFromDate:v107];

      sub_10000AB80();
      sub_100009CC0();

      sub_100009C44();

      v78 = v298[0];
      v109 = v298[1];
      v111 = *(v74 + 2);
      v110 = *(v74 + 3);
      v99 = v293;
      if (v111 >= v110 >> 1)
      {
        v247 = sub_10000982C(v110);
        v74 = sub_100007C54(v247, v248, v249, v74);
      }

      sub_100009B18();
      *(v74 + 2) = v111 + 1;
      v112 = &v74[16 * v111];
      *(v112 + 4) = v78;
      *(v112 + 5) = v109;
      strcpy(v298, "    Error: ");
      HIDWORD(v298[1]) = -352321536;
      v96 = v298;
      v306._countAndFlagsBits = v105;
      v306._object = v106;
      sub_10000ABE0(v306);

      v102 = v298[0];
      v101 = v298[1];
      sub_100009A74();
      if (v92)
      {
        v250 = sub_10000982C(v113);
        v74 = sub_100007C54(v250, v251, v252, v74);
      }

      v100 = v294;
      (*(v296 + 8))(v290, v55);
    }

    else
    {
      sub_1000098F0();
      sub_10000AC50(16);

      strcpy(v298, "    Finished: ");
      HIBYTE(v298[1]) = -18;
      v78 = sub_10000A860().super.isa;
      v96 = [v291 stringFromDate:v78];

      sub_10000AB80();
      sub_100009CC0();

      sub_100009C44();

      v102 = v298[0];
      v101 = v298[1];
      sub_100009A74();
      v99 = v293;
      if (v92)
      {
        v262 = sub_10000982C(v114);
        v74 = sub_100007C54(v262, v263, v264, v74);
      }

      v115 = sub_100009CEC(v296);
      v116(v115);
      v100 = v97;
      sub_100009B18();
    }
  }

  *(v74 + 2) = v96;
  v117 = &v74[16 * v78];
  *(v117 + 4) = v102;
  *(v117 + 5) = v101;
  v118 = v282;
  sub_10000AA10();
  sub_100009944(v118);
  if (v121)
  {
    sub_1000086B0(v118, &qword_100014328, &qword_10000B340);
  }

  else
  {
    v119 = v296;
    v120 = *(v296 + 32);
    v120(v280, v118, v55);
    v97 = v273;
    sub_10000AA20();
    sub_100009944(v97);
    if (v121)
    {
      v122 = sub_100009CEC(v119);
      v123(v122);
      sub_1000086B0(v97, &qword_100014328, &qword_10000B340);
      v124 = v289;
      sub_100009B18();
      v99 = v293;
      goto LABEL_38;
    }

    v120(v274, v97, v55);
    sub_10000A850();
    v126 = v125;
    sub_1000098F0();
    sub_10000AC50(16);

    strcpy(v298, "    Duration: ");
    HIBYTE(v298[1]) = -18;
    v307._countAndFlagsBits = sub_100007794(v126);
    sub_10000ABE0(v307);

    sub_100009A84();
    if (v127)
    {
      v253 = sub_10000982C(v128);
      v74 = sub_100007C54(v253, v254, v255, v74);
    }

    sub_100009B18();
    v99 = v293;
    v129 = *(v296 + 8);
    v130 = sub_100009E64(&v300);
    v129(v130);
    v131 = sub_100009E64(&v303);
    v129(v131);
    sub_100009D2C();
    v100 = v294;
  }

  v124 = v289;
LABEL_38:
  v132 = v283;
  sub_10000A9F0();
  sub_100009944(v132);
  if (v121)
  {
    sub_1000086B0(v132, &qword_100014328, &qword_10000B340);
    v133 = v292;
  }

  else
  {
    v134 = v296;
    v135 = *(v296 + 32);
    v136 = v281;
    v135(v281, v132, v55);
    v137 = v275;
    sub_10000AA10();
    sub_100009944(v137);
    if (v138)
    {
      v139 = *(v134 + 8);
      v97 = v134 + 8;
      v139(v136, v55);
      sub_1000086B0(v137, &qword_100014328, &qword_10000B340);
      v133 = v292;
      v99 = v293;
      sub_100009B18();
      v100 = v294;
    }

    else
    {
      v135(v276, v137, v55);
      sub_10000A850();
      v141 = v140;
      sub_1000098F0();
      sub_10000AC50(18);

      sub_100009B54();
      sub_100009D78();
      v298[0] = v143 - 2;
      v298[1] = v142;
      v308._countAndFlagsBits = sub_100007794(v141);
      sub_10000ABE0(v308);

      sub_100009A84();
      if (v144)
      {
        v256 = sub_10000982C(v145);
        v74 = sub_100007C54(v256, v257, v258, v74);
      }

      v99 = v293;
      v100 = v294;
      v97 = v296 + 8;
      v146 = *(v296 + 8);
      v147 = sub_100009E64(&v301);
      v146(v147);
      v148 = sub_100009E64(&v304);
      v146(v148);
      sub_100009D2C();
      v124 = v289;
      v133 = v292;
      sub_100009B18();
    }
  }

  sub_10000AA00();
  sub_1000099F0(v100, 1, v133);
  v149 = v288;
  if (v121)
  {
    sub_1000086B0(v100, &qword_1000143B8, &qword_10000B3E0);
    goto LABEL_61;
  }

  v151 = v284;
  v150 = v285;
  (*(v285 + 32))(v284, v100, v133);
  (*(v150 + 16))(v149, v151, v133);
  v152 = (*(v150 + 88))(v149, v133);
  if (v152 == enum case for IndexingLog.IndexingEvent.Either.left<A, B>(_:))
  {
    v153 = sub_100009F08();
    v154(v153);
    (*(v278 + 32))(v277, v149, v279);
    strcpy(v298, "    Reason: ");
    BYTE5(v298[1]) = 0;
    HIWORD(v298[1]) = -5120;
    v155 = v271[0];
    sub_10000A8C0();
    sub_10000A8A0();
    sub_100009CC0();
    sub_100009C2C(&v299);
    v156(v155, v272);
    sub_100009C44();

    sub_1000098BC();
    if (v92)
    {
      v259 = sub_10000982C(v157);
      v74 = sub_100007C54(v259, v260, v261, v74);
    }

    sub_100009C2C(&v302);
    v158(v277, v279);
LABEL_57:
    (*(v285 + 8))(v284, v292);
    sub_100009AB0();
    goto LABEL_61;
  }

  if (v152 == enum case for IndexingLog.IndexingEvent.Either.right<A, B>(_:))
  {
    v159 = sub_100009F08();
    v160(v159);
    v161 = *v149;
    v162 = v149[1];
    sub_1000098F0();
    sub_10000AC50(33);

    strcpy(v298, "    Reason: ");
    BYTE5(v298[1]) = 0;
    HIWORD(v298[1]) = -5120;
    v309._countAndFlagsBits = v161;
    v309._object = v162;
    sub_10000ABE0(v309);

    v310._countAndFlagsBits = v97 + 1;
    v310._object = 0x800000010000C000;
    sub_10000ABE0(v310);
    sub_1000098BC();
    if (v92)
    {
      v265 = sub_10000982C(v163);
      v74 = sub_100007C54(v265, v266, v267, v74);
    }

    goto LABEL_57;
  }

  sub_100009A74();
  if (v92)
  {
    v268 = sub_10000982C(v164);
    v74 = sub_100007C54(v268, v269, v270, v74);
  }

  v97 = v285 + 8;
  v165 = *(v285 + 8);
  v166 = v292;
  v165(v284, v292);
  *(v74 + 2) = v150;
  sub_100009D78();
  *(v168 + 32) = v167 + 1;
  *(v168 + 40) = 0x800000010000BFE0;
  v165(v288, v166);
  sub_100009B18();
LABEL_61:
  sub_10000A9E0();
  v169 = sub_100009C14();
  sub_1000099F0(v169, v170, v99);
  if (v121)
  {
    sub_1000086B0(v124, &qword_1000143B0, &qword_10000B3D8);
  }

  else
  {
    v171 = *(v287 + 32);
    v172 = sub_100009F68();
    v173(v172);
    sub_1000098F0();
    sub_10000AC50(19);
    v311._countAndFlagsBits = v97 - 1;
    v311._object = 0x800000010000BFC0;
    sub_10000ABE0(v311);
    sub_10000AC60();
    sub_1000098BC();
    if (v174)
    {
      v244 = sub_10000982C(v175);
      v74 = sub_100007C54(v244, v245, v246, v74);
    }

    (*(v287 + 8))(v286, v99);
    sub_100009AB0();
  }

  v176 = *(sub_10000A9A0() + 16);

  if (v176)
  {
    sub_1000098F0();
    sub_10000AC50(24);

    sub_100009B54();
    v298[0] = v97 + 4;
    v298[1] = v177;
    v297 = sub_10000A9A0();
    v178 = sub_100009998();
    sub_1000016A4(v178, v179);
    sub_100009A48(&qword_1000143D0);
    sub_100008750();
    sub_100009CDC();
    v180 = sub_10000ABF0();
    v182 = v181;

    v312._countAndFlagsBits = v180;
    v312._object = v182;
    sub_10000ABE0(v312);

    sub_1000098BC();
    if (v92)
    {
      v225 = sub_10000982C(v183);
      v74 = sub_100007C54(v225, v226, v227, v74);
    }

    sub_100009AB0();
  }

  v184 = *(sub_10000A9B0() + 16);

  if (v184)
  {
    sub_1000098F0();
    sub_10000AC50(24);

    sub_100009B54();
    v298[0] = v97 + 4;
    v298[1] = v185;
    v297 = sub_10000A9B0();
    v186 = sub_100009998();
    sub_1000016A4(v186, v187);
    sub_100009A48(&qword_1000143D0);
    sub_100008750();
    sub_100009CDC();
    v188 = sub_10000ABF0();
    v190 = v189;

    v313._countAndFlagsBits = v188;
    v313._object = v190;
    sub_10000ABE0(v313);

    sub_1000098BC();
    if (v92)
    {
      v228 = sub_10000982C(v191);
      v74 = sub_100007C54(v228, v229, v230, v74);
    }

    sub_100009AB0();
  }

  v192 = *(sub_10000A980() + 16);

  if (v192)
  {
    v193 = sub_10000A980();
    v194 = sub_100007870(v193);

    v298[0] = v194;
    v195 = sub_1000099A4();
    sub_1000016A4(v195, v196);
    sub_100009868(&qword_1000143A0);
    sub_10000AB50();
    v198 = v197;

    v298[0] = 0;
    v298[1] = 0xE000000000000000;
    sub_10000AC50(20);

    sub_100009B54();
    v298[0] = v97;
    v298[1] = v199;
    v314._countAndFlagsBits = sub_100009F68();
    sub_10000ABE0(v314);

    v200 = v298[0];
    v201 = v298[1];
    sub_100009A84();
    if (v92)
    {
      v231 = sub_10000982C(v202);
      v74 = sub_100007C54(v231, v232, v233, v74);
    }

    *(v74 + 2) = v298;
    v203 = &v74[16 * v198];
    *(v203 + 4) = v200;
    *(v203 + 5) = v201;
  }

  v204 = *(sub_10000A990() + 16);

  if (v204)
  {
    v205 = sub_10000A990();
    v206 = sub_100007870(v205);

    v298[0] = v206;
    v207 = sub_1000099A4();
    sub_1000016A4(v207, v208);
    sub_100009868(&qword_1000143A0);
    sub_100009CDC();
    v209 = sub_10000AB50();
    v211 = v210;

    v298[0] = 0;
    v298[1] = 0xE000000000000000;
    sub_10000AC50(20);

    sub_100009B54();
    v298[0] = v97;
    v298[1] = v212;
    v315._countAndFlagsBits = v209;
    v315._object = v211;
    sub_10000ABE0(v315);

    v213 = v298[0];
    v214 = v298[1];
    v216 = *(v74 + 2);
    v215 = *(v74 + 3);
    if (v216 >= v215 >> 1)
    {
      v234 = sub_100009900(v215);
      v74 = sub_100007C54(v234, v216 + 1, 1, v74);
    }

    *(v74 + 2) = v216 + 1;
    v217 = &v74[16 * v216];
    *(v217 + 4) = v213;
    *(v217 + 5) = v214;
  }

  v298[0] = v74;
  v218 = sub_1000099A4();
  v220 = sub_1000016A4(v218, v219);
  sub_100009868(&qword_1000143A0);
  sub_100009C20();
  sub_10000AB50();
  sub_100009CC0();

  v298[0] = &unk_100014398;
  v298[1] = v220;

  v316._countAndFlagsBits = sub_100009C20();
  sub_10000ABE0(v316);

  return v298[0];
}

void sub_100006684()
{
  sub_100009DBC();
  v163 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_1000016A4(&qword_100014328, &qword_10000B340);
  v8 = sub_100009970(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100009854();
  v165 = v11;
  sub_10000990C();
  __chkstk_darwin(v12);
  sub_100009918();
  v164 = v13;
  sub_10000990C();
  __chkstk_darwin(v14);
  sub_100009EBC();
  __chkstk_darwin(v15);
  sub_100009CFC();
  v16 = sub_10000A890();
  v17 = sub_100009840(v16);
  v166 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_100009854();
  v161 = v21;
  sub_10000990C();
  __chkstk_darwin(v22);
  sub_100009918();
  v162 = v23;
  sub_10000990C();
  __chkstk_darwin(v24);
  sub_100009918();
  v167 = v25;
  sub_10000990C();
  __chkstk_darwin(v26);
  v28 = &v160 - v27;
  v170 = 0x6E657645204C4157;
  v171 = 0xEA00000000002074;
  v169 = v4;
  v172._countAndFlagsBits = sub_10000AC90();
  sub_10000ABE0(v172);

  v173._countAndFlagsBits = 58;
  v173._object = 0xE100000000000000;
  sub_10000ABE0(v173);
  v29 = v170;
  v30 = v171;
  v34 = sub_100009DA0(v31, v32, v33, _swiftEmptyArrayStorage);
  v36 = *(v34 + 2);
  v35 = *(v34 + 3);
  if (v36 >= v35 >> 1)
  {
    v132 = sub_10000982C(v35);
    v34 = sub_100007C54(v132, v133, v134, v34);
  }

  *(v34 + 2) = v36 + 1;
  v37 = &v34[16 * v36];
  *(v37 + 4) = v29;
  *(v37 + 5) = v30;
  v168 = v6;
  sub_10000AB10();
  if (sub_1000082E8(v1, 1, v16) == 1)
  {
    sub_1000086B0(v1, &qword_100014328, &qword_10000B340);
    v38 = v166;
  }

  else
  {
    v38 = v166;
    (*(v166 + 32))(v28, v1, v16);
    sub_100009B84();
    isa = sub_10000A860().super.isa;
    v40 = [v163 stringFromDate:isa];

    v41 = sub_10000AB80();
    v43 = v42;

    v174._countAndFlagsBits = v41;
    v174._object = v43;
    sub_10000ABE0(v174);

    v44 = v170;
    v45 = v171;
    v47 = *(v34 + 2);
    v46 = *(v34 + 3);
    if (v47 >= v46 >> 1)
    {
      v135 = sub_10000982C(v46);
      v34 = sub_100007C54(v135, v136, v137, v34);
    }

    (*(v38 + 8))(v28, v16);
    *(v34 + 2) = v47 + 1;
    v48 = &v34[16 * v47];
    *(v48 + 4) = v44;
    *(v48 + 5) = v45;
  }

  v49 = v168;
  sub_10000AB20();
  v50 = sub_100009C14();
  sub_1000099F0(v50, v51, v16);
  v52 = v165;
  v53 = v167;
  if (v90)
  {
    sub_1000086B0(v0, &qword_100014328, &qword_10000B340);
    v55 = *(v34 + 2);
    v54 = *(v34 + 3);
    sub_100009A94();
    if (v96)
    {
      v138 = sub_10000982C(v56);
      v34 = sub_100007C54(v138, v139, v140, v34);
    }

    v57 = 0x800000010000BE90;
    v58 = 0xD00000000000002ELL;
  }

  else
  {
    (*(v38 + 32))(v167, v0, v16);
    v59 = sub_10000AB00();
    if (v60)
    {
      v61 = v59;
      v62 = v60;
      sub_100009F30();
      v170 = v63;
      v171 = 0xEA0000000000203ALL;
      v64 = v53;
      v65.super.isa = sub_10000A860().super.isa;
      v66 = sub_100009FF4(v65.super.isa);

      v67 = sub_10000AB80();
      v69 = v68;

      v175._countAndFlagsBits = v67;
      v175._object = v69;
      sub_10000ABE0(v175);

      v70 = v170;
      v71 = v171;
      v73 = *(v34 + 2);
      v72 = *(v34 + 3);
      v49 = (v73 + 1);
      if (v73 >= v72 >> 1)
      {
        v148 = sub_10000982C(v72);
        v34 = sub_100007C54(v148, v149, v150, v34);
      }

      *(v34 + 2) = v49;
      v74 = &v34[16 * v73];
      *(v74 + 4) = v70;
      *(v74 + 5) = v71;
      sub_100009B60();
      v176._countAndFlagsBits = v61;
      v176._object = v62;
      sub_10000ABE0(v176);

      v58 = v170;
      v57 = v171;
      v55 = *(v34 + 2);
      v75 = *(v34 + 3);
      sub_100009A94();
      if (v96)
      {
        v151 = sub_10000982C(v76);
        v34 = sub_100007C54(v151, v152, v153, v34);
      }

      v52 = v165;
      v38 = v166;
    }

    else
    {
      sub_100009F1C();
      v170 = v77;
      v171 = 0xEC000000203A6465;
      v78.super.isa = sub_10000A860().super.isa;
      v79 = sub_100009FF4(v78.super.isa);

      v80 = sub_10000AB80();
      v82 = v81;

      v49 = &v170;
      v177._countAndFlagsBits = v80;
      v177._object = v82;
      sub_10000ABE0(v177);

      v58 = v170;
      v57 = v171;
      v55 = *(v34 + 2);
      v83 = *(v34 + 3);
      sub_100009A94();
      if (v96)
      {
        v157 = sub_10000982C(v84);
        v34 = sub_100007C54(v157, v158, v159, v34);
      }
    }

    (*(v38 + 8))(v167, v16);
  }

  *(v34 + 2) = v49;
  v85 = &v34[16 * v55];
  *(v85 + 4) = v58;
  *(v85 + 5) = v57;
  v86 = v164;
  sub_10000AB10();
  sub_1000099F0(v86, 1, v16);
  if (v90)
  {
    v87 = v86;
LABEL_28:
    sub_1000086B0(v87, &qword_100014328, &qword_10000B340);
    goto LABEL_32;
  }

  v88 = *(v38 + 32);
  v89 = v162;
  v88(v162, v86, v16);
  sub_10000AB20();
  sub_1000099F0(v52, 1, v16);
  if (v90)
  {
    (*(v38 + 8))(v89, v16);
    v87 = v52;
    goto LABEL_28;
  }

  v88(v161, v52, v16);
  sub_10000A850();
  v178._countAndFlagsBits = sub_100009AE0(v91);
  sub_10000ABE0(v178);

  v92 = v170;
  v93 = v171;
  v95 = *(v34 + 2);
  v94 = *(v34 + 3);
  sub_100009E70();
  if (v96)
  {
    v154 = sub_10000982C(v97);
    v34 = sub_100007C54(v154, v155, v156, v34);
  }

  v98 = *(v38 + 8);
  v98(v161, v16);
  v98(v162, v16);
  *(v34 + 2) = &v170;
  v99 = &v34[16 * v95];
  *(v99 + 4) = v92;
  *(v99 + 5) = v93;
LABEL_32:
  v100 = sub_10000AAF0();
  if (v100 != 2)
  {
    v170 = 0x203A797375422020;
    v171 = 0xE800000000000000;
    v101 = (v100 & 1) == 0;
    if (v100)
    {
      v102._countAndFlagsBits = 1702195828;
    }

    else
    {
      v102._countAndFlagsBits = 0x65736C6166;
    }

    if (v101)
    {
      v103 = 0xE500000000000000;
    }

    else
    {
      v103 = 0xE400000000000000;
    }

    v102._object = v103;
    sub_10000ABE0(v102);

    v104 = v170;
    v105 = v171;
    v107 = *(v34 + 2);
    v106 = *(v34 + 3);
    sub_100009B30();
    if (v96)
    {
      v141 = sub_10000982C(v108);
      v34 = sub_100007C54(v141, v142, v143, v34);
    }

    *(v34 + 2) = &v170;
    v109 = &v34[16 * v107];
    *(v109 + 4) = v104;
    *(v109 + 5) = v105;
  }

  v110 = sub_10000AAD0();
  if ((v110 & 0x100000000) == 0)
  {
    v111 = v110;
    sub_100009AA0();
    sub_10000AC50(18);

    sub_100009B54();
    v170 = 0xD000000000000010;
    v171 = v112;
    LODWORD(v169) = v111;
    v179._countAndFlagsBits = sub_10000AC90();
    sub_10000ABE0(v179);

    v113 = v170;
    v114 = v171;
    v116 = *(v34 + 2);
    v115 = *(v34 + 3);
    sub_100009B30();
    if (v96)
    {
      v144 = sub_10000982C(v117);
      v34 = sub_100007C54(v144, v145, v146, v34);
    }

    *(v34 + 2) = &v170;
    v118 = &v34[16 * v116];
    *(v118 + 4) = v113;
    *(v118 + 5) = v114;
  }

  v119 = sub_10000AAE0();
  if ((v119 & 0x100000000) == 0)
  {
    v120 = v119;
    sub_100009AA0();
    sub_10000AC50(25);

    sub_100009B54();
    v170 = 0xD000000000000017;
    v171 = v121;
    LODWORD(v169) = v120;
    v180._countAndFlagsBits = sub_10000AC90();
    sub_10000ABE0(v180);

    v122 = v170;
    v123 = v171;
    v125 = *(v34 + 2);
    v124 = *(v34 + 3);
    if (v125 >= v124 >> 1)
    {
      v147 = sub_100009900(v124);
      v34 = sub_100007C54(v147, v125 + 1, 1, v34);
    }

    *(v34 + 2) = v125 + 1;
    v126 = &v34[16 * v125];
    *(v126 + 4) = v122;
    *(v126 + 5) = v123;
  }

  v170 = v34;
  v127 = sub_1000099A4();
  sub_1000016A4(v127, v128);
  sub_100009868(&qword_1000143A0);
  sub_100009C20();
  v129 = sub_10000AB50();
  v131 = v130;

  v170 = v129;
  v171 = v131;

  sub_10000A04C();

  sub_100009DD4();
}

void sub_100006F98()
{
  sub_100009DBC();
  v112 = v2;
  v4 = v3;
  v115 = v5;
  v6 = sub_1000016A4(&qword_100014328, &qword_10000B340);
  v7 = sub_100009970(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100009854();
  v108 = v10;
  sub_10000990C();
  __chkstk_darwin(v11);
  sub_100009ED0();
  __chkstk_darwin(v12);
  sub_100009EA8();
  __chkstk_darwin(v13);
  v15 = &v107 - v14;
  v16 = sub_10000A890();
  v17 = sub_100009840(v16);
  v114 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_100009854();
  v109 = v21;
  sub_10000990C();
  __chkstk_darwin(v22);
  sub_100009918();
  v110 = v23;
  sub_10000990C();
  __chkstk_darwin(v24);
  sub_100009918();
  v113 = v25;
  sub_10000990C();
  __chkstk_darwin(v26);
  v28 = &v107 - v27;
  sub_100009AA0();
  sub_10000AC50(16);

  strcpy(&v117, "Vacuum Event ");
  HIWORD(v117) = -4864;
  v116 = v4;
  v118._countAndFlagsBits = sub_10000AC90();
  sub_10000ABE0(v118);

  v119._countAndFlagsBits = 58;
  v119._object = 0xE100000000000000;
  sub_10000ABE0(v119);
  v29 = v117;
  v33 = sub_100009DA0(v30, v31, v32, _swiftEmptyArrayStorage);
  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  sub_100009B30();
  if (v80)
  {
    v86 = sub_10000982C(v36);
    v33 = sub_100007C54(v86, v87, v88, v33);
  }

  v111 = v1;
  *(v33 + 2) = &v117;
  *&v33[16 * v35 + 32] = v29;
  v37 = v115;
  sub_10000AA60();
  if (sub_1000082E8(v15, 1, v16) == 1)
  {
    sub_1000086B0(v15, &qword_100014328, &qword_10000B340);
    v38 = v114;
  }

  else
  {
    v38 = v114;
    (*(v114 + 32))(v28, v15, v16);
    sub_100009B84();
    isa = sub_10000A860().super.isa;
    v40 = [v112 stringFromDate:isa];

    v41 = sub_10000AB80();
    v43 = v42;

    v120._countAndFlagsBits = v41;
    v120._object = v43;
    sub_10000ABE0(v120);

    v44 = v117;
    v46 = *(v33 + 2);
    v45 = *(v33 + 3);
    if (v46 >= v45 >> 1)
    {
      v89 = sub_10000982C(v45);
      v33 = sub_100007C54(v89, v90, v91, v33);
    }

    (*(v38 + 8))(v28, v16);
    *(v33 + 2) = v46 + 1;
    *&v33[16 * v46 + 32] = v44;
    v37 = v115;
  }

  v47 = v37;
  sub_10000AA70();
  v48 = sub_1000082E8(v0, 1, v16);
  v49 = v113;
  if (v48 == 1)
  {
    sub_1000086B0(v0, &qword_100014328, &qword_10000B340);
    sub_100009D1C();
    if (v80)
    {
      v92 = sub_10000982C(v50);
      v33 = sub_100007C54(v92, v93, v94, v33);
    }

    v51 = v111;
    v52 = 0x800000010000BE90;
    v53 = 0xD00000000000002ELL;
  }

  else
  {
    (*(v38 + 32))(v113, v0, v16);
    sub_10000AA50();
    if (v54)
    {
      v28 = v54;
      sub_100009F30();
      *&v117 = v55;
      *(&v117 + 1) = 0xEA0000000000203ALL;
      v56.super.isa = sub_10000A860().super.isa;
      v57 = sub_100009FD4(v56.super.isa);

      v58 = sub_10000AB80();
      v60 = v59;

      v47 = &v117;
      v121._countAndFlagsBits = v58;
      v121._object = v60;
      sub_10000ABE0(v121);

      v61 = v117;
      v63 = *(v33 + 2);
      v62 = *(v33 + 3);
      sub_100009B30();
      if (v80)
      {
        v95 = sub_10000982C(v64);
        v33 = sub_100007C54(v95, v96, v97, v33);
      }

      v51 = v111;
      *(v33 + 2) = &v117;
      *&v33[16 * v63 + 32] = v61;
      sub_100009B60();
      v122._countAndFlagsBits = sub_100009F44();
      sub_10000ABE0(v122);

      v52 = *(&v117 + 1);
      v53 = v117;
      sub_100009D1C();
      v49 = v113;
      if (v80)
      {
        v98 = sub_10000982C(v65);
        v33 = sub_100007C54(v98, v99, v100, v33);
      }

      v38 = v114;
    }

    else
    {
      sub_100009F1C();
      *&v117 = v66;
      *(&v117 + 1) = 0xEC000000203A6465;
      v67.super.isa = sub_10000A860().super.isa;
      v28 = sub_100009FD4(v67.super.isa);

      v68 = sub_10000AB80();
      v70 = v69;

      v47 = &v117;
      v123._countAndFlagsBits = v68;
      v123._object = v70;
      sub_10000ABE0(v123);

      v52 = *(&v117 + 1);
      v53 = v117;
      sub_100009D1C();
      if (v80)
      {
        v104 = sub_10000982C(v71);
        v33 = sub_100007C54(v104, v105, v106, v33);
      }

      v51 = v111;
    }

    (*(v38 + 8))(v49, v16);
  }

  *(v33 + 2) = v47;
  v72 = &v33[16 * v28];
  *(v72 + 4) = v53;
  *(v72 + 5) = v52;
  sub_10000AA60();
  sub_1000099F0(v51, 1, v16);
  if (v73)
  {
    goto LABEL_26;
  }

  v74 = *(v38 + 32);
  v75 = v110;
  v74(v110, v51, v16);
  v51 = v108;
  sub_10000AA70();
  sub_1000099F0(v51, 1, v16);
  if (v73)
  {
    (*(v38 + 8))(v75, v16);
LABEL_26:
    sub_1000086B0(v51, &qword_100014328, &qword_10000B340);
    goto LABEL_30;
  }

  v74(v109, v51, v16);
  sub_10000A850();
  v124._countAndFlagsBits = sub_100009AE0(v76);
  sub_10000ABE0(v124);

  v77 = v117;
  v79 = *(v33 + 2);
  v78 = *(v33 + 3);
  sub_100009A94();
  if (v80)
  {
    v101 = sub_10000982C(v81);
    v33 = sub_100007C54(v101, v102, v103, v33);
  }

  v82 = *(v38 + 8);
  v82(v109, v16);
  v82(v110, v16);
  *(v33 + 2) = &v117;
  *&v33[16 * v79 + 32] = v77;
LABEL_30:
  *&v117 = v33;
  v83 = sub_1000099A4();
  v85 = sub_1000016A4(v83, v84);
  sub_100009868(&qword_1000143A0);
  sub_100009C20();
  sub_10000AB50();
  sub_100009CC0();

  *&v117 = &unk_100014398;
  *(&v117 + 1) = v85;

  sub_10000A04C();

  sub_100009DD4();
}

uint64_t sub_100007794(double a1)
{
  v2 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v2 setUnitsStyle:1];
  v3 = [v2 stringFromTimeInterval:a1];
  if (v3)
  {
    v4 = v3;
    sub_10000AB80();
    sub_100009C98();
  }

  else
  {
    sub_10000AC10();
    v6._countAndFlagsBits = 115;
    v6._object = 0xE100000000000000;
    sub_10000ABE0(v6);
  }

  return sub_100009998();
}

uint64_t sub_100007870(uint64_t a1)
{
  v38 = sub_1000016A4(&qword_1000143E0, &qword_10000B3F8);
  sub_100009840(v38);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_100009A20();
  __chkstk_darwin(v6);
  sub_100009B3C();
  v37 = v7;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100009484(0, v8, 0);
  result = sub_1000095AC(a1);
  v12 = result;
  v13 = 0;
  v14 = a1 + 56;
  v36 = v3;
  v35 = a1;
  v32 = a1 + 64;
  v33 = v8;
  v34 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v14 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_27;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_28;
      }

      v40 = v10;
      v41 = v11;
      v39 = v13;
      (*(v36 + 16))(v37, *(a1 + 48) + *(v36 + 72) * v12, v38);
      sub_100009AA0();
      sub_10000AC50(16);
      sub_10000A9C0();

      v44._countAndFlagsBits = 0x72756C6961662820;
      v44._object = 0xEB00000000203A65;
      sub_10000ABE0(v44);
      v16._countAndFlagsBits = sub_10000A9D0();
      if (v16._object)
      {
        object = v16._object;
      }

      else
      {
        v16._countAndFlagsBits = 0x6E776F6E6B6E75;
        object = 0xE700000000000000;
      }

      v16._object = object;
      sub_10000ABE0(v16);

      v45._countAndFlagsBits = 41;
      v45._object = 0xE100000000000000;
      sub_10000ABE0(v45);
      result = (*(v36 + 8))(v37, v38);
      v18 = _swiftEmptyArrayStorage[2];
      if (v18 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        sub_100009E90();
        result = sub_100009484(v29, v30, v31);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[2 * v18];
      *(v19 + 4) = v42;
      *(v19 + 5) = v43;
      if (v41)
      {
        goto LABEL_32;
      }

      v14 = v34;
      a1 = v35;
      v20 = 1 << *(v35 + 32);
      if (v12 >= v20)
      {
        goto LABEL_29;
      }

      v21 = *(v34 + 8 * v15);
      if ((v21 & (1 << v12)) == 0)
      {
        goto LABEL_30;
      }

      if (*(v35 + 36) != v40)
      {
        goto LABEL_31;
      }

      v22 = v21 & (-2 << (v12 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v23 = v33;
      }

      else
      {
        v24 = v15 << 6;
        v25 = v15 + 1;
        v26 = (v32 + 8 * v15);
        v23 = v33;
        while (v25 < (v20 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1000095EC(v12, v40, 0);
            v20 = __clz(__rbit64(v27)) + v24;
            goto LABEL_22;
          }
        }

        result = sub_1000095EC(v12, v40, 0);
      }

LABEL_22:
      v13 = v39 + 1;
      if (v39 + 1 == v23)
      {
        return _swiftEmptyArrayStorage;
      }

      v11 = 0;
      v10 = *(v35 + 36);
      v12 = v20;
      if (v20 < 0)
      {
        break;
      }
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
  __break(1u);
  return result;
}

id ToolKitDiagnosticWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100007C54(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000016A4(&qword_1000143A8, &qword_10000B3D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100007D5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000016A4(&qword_1000143E8, &qword_10000B400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_100007E5C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000016A4(&qword_100014408, &unk_10000B418);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000016A4(&qword_100014340, &qword_10000B348);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100007F94(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
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

  v14 = *(a4 + 16);
  v15 = sub_10000811C(v14, v13, a5, a6, a7);
  v16 = *(*(a8(0) - 8) + 80);
  sub_1000099E4();
  if (v11)
  {
    sub_100008218(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_1000080A0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000016A4(&qword_1000143A8, &qword_10000B3D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_10000811C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000016A4(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100008218(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = sub_10000997C(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    sub_100009E58();

    return _swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_100009E58();

    return _swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_100008310()
{
  result = qword_100014330;
  if (!qword_100014330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014330);
  }

  return result;
}

uint64_t sub_100008354(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000083B8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100008404(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_10000841C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000ACC0();
  sub_10000ABD0();
  v6 = sub_10000ACD0();

  return sub_1000087A4(a1, a2, v6);
}

Swift::Int sub_100008494(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10000975C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100008858(v5);
  *a1 = v2;
  return result;
}

void *sub_100008508(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_1000080A0(*(a1 + 16), 0);
  v4 = sub_1000095F8(&v6, v3 + 4, v1, a1);

  sub_100009754();
  if (v4 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_1000085C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000085D8(a1, a2);
  }

  return a1;
}

uint64_t sub_1000085D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100008630(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100008668(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000086B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000016A4(a2, a3);
  sub_10000997C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100008708(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008668(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100008750()
{
  result = qword_1000143D8;
  if (!qword_1000143D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143D8);
  }

  return result;
}

unint64_t sub_1000087A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_10000ACA0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

Swift::Int sub_100008858(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10000AC80(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = sub_10000AC00();
        v6[2] = v5;
      }

      v7[0] = v6 + 4;
      v7[1] = v5;
      sub_100008A64(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100008958(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100008958(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = (*a4 + 16 * a3);
    v7 = result - a3;
LABEL_4:
    v21 = a3;
    v8 = (v5 + 16 * a3);
    v9 = *v8;
    v10 = v8[1];
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v19 = *(v6 - 2);
      v20 = *(v6 - 1);

      sub_1000045E0();
      v12 = v11;

      if (v4)
      {
        break;
      }

      if (v12)
      {
        if (!v5)
        {
          __break(1u);
          return result;
        }

        v13 = *v6;
        v14 = v6[1];
        *v6 = *(v6 - 1);
        *(v6 - 1) = v14;
        *(v6 - 2) = v13;
        v6 -= 2;
        if (!__CFADD__(v7++, 1))
        {
          continue;
        }
      }

      a3 = v21 + 1;
      v6 = v18 + 2;
      v7 = v17 - 1;
      if (v21 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_100008A64(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v105 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_94:
    v109 = *v105;
    if (*v105)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_96;
    }

    goto LABEL_140;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_23;
    }

    v109 = v6;
    v11 = (*a3 + 16 * v10);
    v117 = *v11;
    v119 = v11[1];
    v12 = (*a3 + 16 * v7);
    v111 = *v12;
    v114 = v12[1];

    sub_1000045E0();
    if (v5)
    {
LABEL_107:
    }

    v14 = v13;
    v106 = v8;

    v15 = 16 * v9;
    v16 = v12 + 3;
    v103 = v9;
    v17 = v9 + 2;
    v18 = v109;
    do
    {
      v19 = v17;
      v20 = v10 + 1;
      if (v20 >= v18)
      {
        v10 = v18;
        if ((v14 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_9:
        v9 = v103;
        if (v10 >= v103)
        {
          if (v103 >= v10)
          {
            v8 = v106;
          }

          else
          {
            if (v18 >= v19)
            {
              v27 = v19;
            }

            else
            {
              v27 = v18;
            }

            v28 = 16 * v27;
            v29 = v10;
            v30 = v103;
            v8 = v106;
            do
            {
              if (v30 != --v29)
              {
                v31 = *a3;
                if (!*a3)
                {
                  goto LABEL_138;
                }

                v32 = (v31 + v15);
                v33 = v31 + v28;
                v34 = *v32;
                v35 = v32[1];
                *v32 = *(v33 - 16);
                *(v33 - 16) = v34;
                *(v33 - 8) = v35;
              }

              ++v30;
              v28 -= 16;
              v15 += 16;
            }

            while (v30 < v29);
          }

          goto LABEL_23;
        }

        goto LABEL_134;
      }

      v21 = v16 + 2;
      v118 = v16[1];
      v120 = v16[2];
      v112 = *(v16 - 1);
      v115 = *v16;

      sub_1000045E0();
      v22 = v20;
      v23 = v5;
      v25 = v24 & 1;

      v17 = v19 + 1;
      v16 = v21;
      v26 = (v14 & 1) == v25;
      v18 = v109;
      v5 = v23;
      v10 = v22;
    }

    while (v26);
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_21:
    v8 = v106;
    v9 = v103;
LABEL_23:
    v36 = a3[1];
    if (v10 < v36)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_130;
      }

      if (v10 - v9 < a4)
      {
        v37 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          __break(1u);
        }

        else
        {
          if (v37 >= v36)
          {
            v37 = a3[1];
          }

          if (v37 >= v9)
          {
            if (v10 != v37)
            {
              v80 = *a3;
              v81 = (*a3 + 16 * v10);
              v104 = v9;
              v82 = v9 - v10;
              v100 = v37;
              do
              {
                v108 = v10;
                v109 = v81;
                v83 = (v80 + 16 * v10);
                v84 = *v83;
                v85 = v83[1];
                v101 = v82;
                v86 = v82;
                while (1)
                {
                  v87 = v80;
                  v113 = *(v81 - 2);
                  v116 = *(v81 - 1);

                  sub_1000045E0();
                  if (v5)
                  {
                    goto LABEL_107;
                  }

                  v89 = v88;

                  if ((v89 & 1) == 0)
                  {
                    break;
                  }

                  if (!v87)
                  {
                    goto LABEL_137;
                  }

                  v80 = v87;
                  v90 = *v81;
                  v91 = *(v81 + 1);
                  *v81 = *(v81 - 1);
                  *(v81 - 1) = v91;
                  *(v81 - 2) = v90;
                  v81 -= 16;
                  if (__CFADD__(v86++, 1))
                  {
                    goto LABEL_91;
                  }
                }

                v80 = v87;
LABEL_91:
                v10 = v108 + 1;
                v81 = v109 + 16;
                v82 = v101 - 1;
              }

              while (v108 + 1 != v100);
              v10 = v100;
              v9 = v104;
            }

            goto LABEL_31;
          }
        }

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
        goto LABEL_139;
      }
    }

LABEL_31:
    if (v10 < v9)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100007D5C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v39 = *(v8 + 16);
    v38 = *(v8 + 24);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      result = sub_100007D5C((v38 > 1), v39 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v40;
    v41 = v8 + 32;
    v42 = (v8 + 32 + 16 * v39);
    *v42 = v9;
    v42[1] = v10;
    v109 = *v105;
    if (!*v105)
    {
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      return result;
    }

    v107 = v10;
    if (v39)
    {
      break;
    }

LABEL_80:
    v6 = a3[1];
    v7 = v107;
    if (v107 >= v6)
    {
      goto LABEL_94;
    }
  }

  while (1)
  {
    v43 = v40 - 1;
    v44 = (v41 + 16 * (v40 - 1));
    v45 = (v8 + 16 * v40);
    if (v40 >= 4)
    {
      v50 = v41 + 16 * v40;
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_117;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_118;
      }

      v57 = v45[1];
      v58 = v57 - *v45;
      if (__OFSUB__(v57, *v45))
      {
        goto LABEL_120;
      }

      v56 = __OFADD__(v48, v58);
      v59 = v48 + v58;
      if (v56)
      {
        goto LABEL_123;
      }

      if (v59 >= v53)
      {
        v73 = *v44;
        v72 = v44[1];
        v56 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v56)
        {
          goto LABEL_128;
        }

        if (v48 < v74)
        {
          v43 = v40 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_51;
    }

    if (v40 == 3)
    {
      v46 = *(v8 + 32);
      v47 = *(v8 + 40);
      v56 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      v49 = v56;
LABEL_51:
      if (v49)
      {
        goto LABEL_119;
      }

      v61 = *v45;
      v60 = v45[1];
      v62 = __OFSUB__(v60, v61);
      v63 = v60 - v61;
      v64 = v62;
      if (v62)
      {
        goto LABEL_122;
      }

      v65 = v44[1];
      v66 = v65 - *v44;
      if (__OFSUB__(v65, *v44))
      {
        goto LABEL_125;
      }

      if (__OFADD__(v63, v66))
      {
        goto LABEL_127;
      }

      if (v63 + v66 >= v48)
      {
        if (v48 < v66)
        {
          v43 = v40 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_66;
    }

    if (v40 < 2)
    {
      goto LABEL_121;
    }

    v68 = *v45;
    v67 = v45[1];
    v56 = __OFSUB__(v67, v68);
    v63 = v67 - v68;
    v64 = v56;
LABEL_66:
    if (v64)
    {
      goto LABEL_124;
    }

    v70 = *v44;
    v69 = v44[1];
    v56 = __OFSUB__(v69, v70);
    v71 = v69 - v70;
    if (v56)
    {
      goto LABEL_126;
    }

    if (v71 < v63)
    {
      goto LABEL_80;
    }

LABEL_73:
    if (v43 - 1 >= v40)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_135;
    }

    v75 = v8;
    v76 = (v41 + 16 * (v43 - 1));
    v77 = *v76;
    v78 = (v41 + 16 * v43);
    v8 = v78[1];
    sub_100009130((*a3 + 16 * *v76), (*a3 + 16 * *v78), *a3 + 16 * v8, v109);
    if (v5)
    {
    }

    if (v8 < v77)
    {
      goto LABEL_111;
    }

    v79 = *(v75 + 16);
    if (v43 > v79)
    {
      goto LABEL_112;
    }

    *v76 = v77;
    v76[1] = v8;
    if (v43 >= v79)
    {
      goto LABEL_113;
    }

    v40 = v79 - 1;
    result = memmove((v41 + 16 * v43), v78 + 2, 16 * (v79 - 1 - v43));
    v8 = v75;
    *(v75 + 16) = v79 - 1;
    if (v79 <= 2)
    {
      goto LABEL_80;
    }
  }

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
  result = sub_100009470(v8);
  v8 = result;
LABEL_96:
  v94 = (v8 + 16);
  v93 = *(v8 + 16);
  while (v93 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_136;
    }

    v95 = v8;
    v96 = (v8 + 16 * v93);
    v97 = *v96;
    v98 = &v94[2 * v93];
    v8 = v98[1];
    sub_100009130((*a3 + 16 * *v96), (*a3 + 16 * *v98), *a3 + 16 * v8, v109);
    if (v5)
    {
      break;
    }

    if (v8 < v97)
    {
      goto LABEL_114;
    }

    if (v93 - 2 >= *v94)
    {
      goto LABEL_115;
    }

    *v96 = v97;
    v96[1] = v8;
    v99 = *v94 - v93;
    if (*v94 < v93)
    {
      goto LABEL_116;
    }

    v93 = *v94 - 1;
    result = memmove(v98, v98 + 2, 16 * v99);
    *v94 = v93;
    v8 = v95;
  }
}

uint64_t sub_100009130(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = (a2 - __src) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_39;
      }

      v13 = v6;
      v47 = *v6;
      v48 = *(v6 + 1);
      v43 = *v4;
      v45 = *(v4 + 1);

      sub_1000045E0();
      if (v42)
      {

        v33 = (v11 - v4) / 16;
        v34 = v7 < v4 || v7 >= &v4[16 * v33];
        if (v34 || v7 != v4)
        {
          v31 = 16 * v33;
          v32 = v7;
LABEL_51:
          v35 = v4;
LABEL_52:
          memmove(v32, v35, v31);
        }

        return 1;
      }

      v15 = v14;

      if ((v15 & 1) == 0)
      {
        break;
      }

      v16 = v13;
      v6 = v13 + 16;
      if (v7 != v13)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 16;
    }

    v16 = v4;
    v17 = v7 == v4;
    v4 += 16;
    v6 = v13;
    if (v17)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v7 = *v16;
    goto LABEL_18;
  }

  if (a4 != a2 || &a2[16 * v9] <= a4)
  {
    memmove(a4, a2, 16 * v9);
  }

  v40 = v4;
  v41 = &v4[16 * v9];
LABEL_25:
  v19 = 0;
  v39 = v6 - 16;
  while (1)
  {
    v11 = &v41[v19];
    if (&v41[v19] <= v4 || v6 <= v7)
    {
LABEL_39:
      v29 = (v11 - v4) / 16;
      v30 = v6 < v4 || v6 >= &v4[16 * v29];
      if (v30 || v6 != v4)
      {
        v31 = 16 * v29;
        v32 = v6;
        goto LABEL_51;
      }

      return 1;
    }

    v21 = *(v11 - 2);
    v23 = *(v11 - 1);
    v22 = v11 - 16;
    v24 = v6;
    v44 = *(v6 - 2);
    v46 = *(v6 - 1);

    sub_1000045E0();
    if (v42)
    {
      break;
    }

    v26 = v25;

    v27 = (v5 + v19);
    v28 = (v5 + v19 - 16);
    if (v26)
    {
      v41 += v19;
      v5 = v5 + v19 - 16;
      v6 = v39;
      v4 = v40;
      if (v27 != v24)
      {
        *v28 = *v39;
        v6 = v39;
        v5 = v28;
      }

      goto LABEL_25;
    }

    if (&v41[v19] != (v5 + v19))
    {
      *v28 = *v22;
    }

    v19 -= 16;
    v4 = v40;
    v6 = v24;
  }

  v35 = v40;
  v37 = (v41 - v40 + v19) / 16;
  if (v6 < v40 || v6 >= &v40[16 * v37])
  {
    memmove(v6, v40, 16 * v37);
  }

  else if (v6 != v40)
  {
    v31 = 16 * v37;
    v32 = v6;
    goto LABEL_52;
  }

  return 1;
}

char *sub_100009484(char *a1, int64_t a2, char a3)
{
  result = sub_1000094A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000094A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000016A4(&qword_1000143A8, &qword_10000B3D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000095AC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_10000AC40();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1000095EC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000095F8(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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

uint64_t sub_100009770(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1000016A4(a3, a4);
  sub_10000997C(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000099A4();
  v9(v8);
  return a2;
}

uint64_t sub_1000097CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000A890();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100009810()
{
  v1 = *(v0 - 288);
  v2 = *(v0 - 272);
  v3 = *(v0 - 296);
}

uint64_t sub_100009868(unint64_t *a1)
{

  return sub_100008708(a1, v1, v2);
}

void sub_1000098BC()
{
  v2 = *(v1 - 120);
  v3 = *(v1 - 112);
  v4 = *(v0 + 24);
  v5 = *(v0 + 16) + 1;
}

char *sub_1000099B0@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 - 256);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3;
  v7 = *(v4 + 48);
  *v1 = v3;
  v8 = *(v5 + 16);
  return v1 + v7;
}

uint64_t sub_100009A2C()
{

  return sub_10000AC90();
}

uint64_t sub_100009A48(unint64_t *a1)
{

  return sub_100008708(a1, v1, v2);
}

void sub_100009AB0()
{
  *(v3 + 16) = v1;
  v5 = v3 + 16 * v4;
  *(v5 + 32) = v0;
  *(v5 + 40) = v2;
}

uint64_t sub_100009AC0(uint64_t a1)
{

  return _swift_once(a1, sub_1000012A0);
}

uint64_t sub_100009AE0(double a1)
{
  strcpy((v1 - 96), "  Duration: ");
  *(v1 - 83) = 0;
  *(v1 - 82) = -5120;

  return sub_100007794(a1);
}

uint64_t sub_100009BB4()
{
  v2 = *(v0 - 280);

  return sub_10000ABA0();
}

uint64_t sub_100009BE8()
{

  return sub_10000AB90();
}

void sub_100009C44()
{
  v3._countAndFlagsBits = v0;
  v3._object = v1;

  sub_10000ABE0(v3);
}

void sub_100009C60()
{
  *(v1 - 440) = v0;
  *(v1 - 392) = v0;
  *(v1 - 560) = v0;
}

uint64_t sub_100009C7C()
{
}

uint64_t sub_100009CA4()
{
}

void sub_100009CCC(uint64_t a1@<X8>)
{
  *(v2 - 160) = v1;
  *(v2 - 152) = 0xE300000000000000;
  *(v2 - 208) = a1;
}

void sub_100009D2C()
{
  *(v3 + 16) = v1;
  v5 = v3 + 16 * v4;
  *(v5 + 32) = v0;
  *(v5 + 40) = v2;
}

void sub_100009D60()
{
  v3 = v0;
  v4 = *v0;
  v5 = *v2;
  v6 = v3 + *(v1 + 48);
}

uint64_t sub_100009D84()
{
  v2 = *(v0 - 280);

  return sub_10000ABA0();
}

char *sub_100009DA0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{

  return sub_100007C54(0, 1, 1, a4);
}

void sub_100009DEC(Swift::String a1)
{

  sub_10000ABE0(a1);
}

uint64_t sub_100009E04(uint64_t a1)
{

  return _swift_slowDealloc(a1, -1, -1);
}

void sub_100009E1C(Swift::String a1)
{

  sub_10000ABE0(a1);
}

void sub_100009E34(Swift::String a1)
{

  sub_10000ABE0(a1);
}

uint64_t sub_100009F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);

  return sub_100009770(a1, v5, v2, v3);
}

void sub_100009FB4(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000012;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_10000ABE0(v2);
}

id sub_100009FD4(uint64_t a1)
{
  v5 = *(v1 + 296);
  v6 = *(v2 - 136);

  return [v6 v5];
}

id sub_100009FF4(uint64_t a1)
{
  v5 = *(v1 + 296);
  v6 = *(v2 - 152);

  return [v6 v5];
}

uint64_t sub_10000A014()
{

  return sub_10000AB90();
}

uint64_t sub_10000A034()
{

  return sub_100008354(v0 - 160, v0 - 208);
}

void sub_10000A04C()
{
  v1._countAndFlagsBits = 2570;
  v1._object = 0xE200000000000000;

  sub_10000ABE0(v1);
}

id sub_10000A3A4()
{
  if (qword_100014418 != -1)
  {
    dispatch_once(&qword_100014418, &stru_100010658);
  }

  v1 = qword_100014420;

  return v1;
}

void sub_10000A3F8(id a1)
{
  qword_100014420 = os_log_create(WFLogSubsystem, "DiagnosticExtension");

  _objc_release_x1();
}