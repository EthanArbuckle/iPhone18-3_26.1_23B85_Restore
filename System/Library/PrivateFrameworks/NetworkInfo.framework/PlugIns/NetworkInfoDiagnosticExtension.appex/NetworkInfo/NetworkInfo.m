char *sub_100001370(void *a1)
{
  v2 = v1;
  v248 = sub_10000CF7C();
  v4 = *(v248 - 8);
  v5 = v4[8];
  __chkstk_darwin(v248 - 8);
  v247 = v232 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = sub_10000D02C();
  v253 = *(v258 - 8);
  v7 = *(v253 + 64);
  v8 = __chkstk_darwin(v258);
  v233 = v232 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v234 = v232 - v11;
  v12 = __chkstk_darwin(v10);
  v236 = v232 - v13;
  v14 = __chkstk_darwin(v12);
  v235 = v232 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = v232 - v17;
  v19 = __chkstk_darwin(v16);
  v250 = (v232 - v20);
  v21 = __chkstk_darwin(v19);
  v249 = v232 - v22;
  v23 = __chkstk_darwin(v21);
  v255 = v232 - v24;
  __chkstk_darwin(v23);
  v26 = v232 - v25;
  v259 = &_swiftEmptyArrayStorage;
  v27 = OBJC_IVAR___NetworkInfoDiagnosticExtension_logger;

  v257 = v27;
  v28 = sub_10000D1AC();
  v29 = sub_10000D3CC();

  v30 = os_log_type_enabled(v28, v29);
  v256 = v2;
  v244 = v18;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v270 = v32;
    *v31 = 136315138;
    v272 = a1;

    sub_100009340(&qword_100018868, &qword_10000DF20);
    v33 = sub_10000D26C();
    v35 = sub_100008CF0(v33, v34, &v270);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "incoming parameters: %s", v31, 0xCu);
    sub_100009298(v32);
  }

  if (!a1)
  {
    __break(1u);
  }

  v272 = sub_10000D23C();
  v273 = v36;
  sub_10000D46C();
  if (a1[2] && (v37 = sub_100009420(&v270), (v38 & 1) != 0))
  {
    sub_1000092E4(a1[7] + 32 * v37, &v272);
    sub_10000C6C8(&v270);
    if (swift_dynamicCast())
    {
      v39 = v260 ^ 1;
      goto LABEL_10;
    }
  }

  else
  {
    sub_10000C6C8(&v270);
  }

  v39 = 1;
LABEL_10:
  v40 = sub_10000D1AC();
  v41 = sub_10000D3BC();
  v42 = os_log_type_enabled(v40, v41);
  v237 = v39;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v270 = v44;
    *v43 = 136315138;
    if (v39)
    {
      v45 = 28494;
    }

    else
    {
      v45 = 7562585;
    }

    if (v39)
    {
      v46 = 0xE200000000000000;
    }

    else
    {
      v46 = 0xE300000000000000;
    }

    v47 = sub_100008CF0(v45, v46, &v270);

    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v40, v41, "User provided consent: %s", v43, 0xCu);
    sub_100009298(v44);
  }

  v48 = objc_opt_self();
  v49 = [v48 defaultManager];
  v50 = [v49 temporaryDirectory];

  sub_10000CFEC();
  v242 = v48;
  v51 = [v48 defaultManager];
  v52 = [v51 temporaryDirectory];

  sub_10000CFEC();
  v53 = sub_10000B8D0();
  v55 = v54;
  v272 = 0xD00000000000001ALL;
  v273 = 0x800000010000E530;
  sub_10000D46C();
  if (!a1[2] || (v56 = sub_100009420(&v270), (v57 & 1) == 0))
  {
    sub_10000C6C8(&v270);
    goto LABEL_23;
  }

  sub_1000092E4(a1[7] + 32 * v56, &v272);
  sub_10000C6C8(&v270);
  if (!swift_dynamicCast())
  {
LABEL_23:
    LODWORD(v251) = 0;
    goto LABEL_24;
  }

  LODWORD(v251) = v260;
LABEL_24:
  v272 = 0xD00000000000001ALL;
  v273 = 0x800000010000E550;
  sub_10000D46C();
  if (!a1[2] || (v58 = sub_100009420(&v270), (v59 & 1) == 0))
  {
    sub_10000C6C8(&v270);
    goto LABEL_29;
  }

  sub_1000092E4(a1[7] + 32 * v58, &v272);
  sub_10000C6C8(&v270);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v238 = 0;
    goto LABEL_30;
  }

  v238 = v260;
LABEL_30:
  v260 = 0x6E656E6F706D6F63;
  v261 = 0xEB00000000444974;
  sub_10000D46C();
  v60 = a1[2];
  v254 = v26;
  v232[1] = v4;
  v243 = v53;
  if (!v60 || (v61 = sub_100009420(&v270), (v62 & 1) == 0))
  {
    v75 = v53;
    v76 = v258;
    sub_10000C6C8(&v270);
LABEL_36:
    v241 = OBJC_IVAR___NetworkInfoDiagnosticExtension_basePath;
    v270 = v75;
    v271 = v55;
    v246 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v252 = v55;
    v245 = v4[13];
    v78 = v247;
    v77 = v248;
    v245(v247);
    v240 = sub_10000C614();
    v79 = v249;
    sub_10000D01C();
    v250 = v4[1];
    v250(v78, v77);
    v239 = *(v253 + 40);
    v239(v255, v79, v76);
    v270 = v243;
    v271 = v252;
    (v245)(v78, v246, v77);
    sub_10000D01C();
    v80 = v78;
    v73 = v250;
    v250(v80, v77);

    v239(v254, v79, v76);
    v81 = 0;
    v82 = 0;
    goto LABEL_37;
  }

  sub_1000092E4(a1[7] + 32 * v61, &v272);
  sub_10000C6C8(&v270);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v75 = v53;
    v76 = v258;
    goto LABEL_36;
  }

  v63 = (v4 + 13);
  v64 = (v4 + 1);
  v239 = (v4 + 13);
  v240 = (v4 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v252 = v261;
  v241 = v260;
  if (v251)
  {
    v270 = v260;
    v271 = v261;
    v246 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v65 = *v63;
    v66 = v247;
    v67 = v248;
    (*v63)(v247);
    v232[0] = sub_10000C614();

    v68 = v250;
    sub_10000D01C();
    v69 = *v64;
    (*v64)(v66, v67);
    v270 = v243;
    v271 = v55;
    v70 = v246;
    v245 = v65;
    (v65)(v66, v246, v67);
    v71 = v70;
    v72 = v249;
    sub_10000D01C();
    v69(v66, v67);
    v73 = v69;
    v74 = v253;
    (*(v253 + 8))(v68, v258);
  }

  else
  {
    v270 = v53;
    v271 = v55;
    v71 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v66 = v247;
    v67 = v248;
    v245 = *v63;
    (v245)(v247, enum case for URL.DirectoryHint.inferFromPath(_:), v248);
    sub_10000C614();

    v72 = v249;
    sub_10000D01C();
    v153 = *v64;
    (*v64)(v66, v67);
    v73 = v153;

    v74 = v253;
  }

  v250 = *(v74 + 40);
  v154 = v258;
  (v250)(v255, v72, v258);
  v155 = v72;
  v82 = v252;
  v270 = v241;
  v271 = v252;
  v246 = v71;
  (v245)(v66, v71, v67);
  sub_10000C614();
  sub_10000D01C();
  (v73)(v66, v67);

  (v250)(v254, v155, v154);
  v81 = v241;
LABEL_37:
  v83 = sub_10000D1AC();
  v84 = sub_10000D3BC();
  v85 = os_log_type_enabled(v83, v84);
  v241 = v81;
  v250 = v73;
  if (v85)
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v270 = v87;
    *v86 = 136315394;
    if (v82)
    {
      v88 = v82;
    }

    else
    {
      v81 = 0x6E776F6E6B6E55;
      v88 = 0xE700000000000000;
    }

    v89 = sub_100008CF0(v81, v88, &v270);

    *(v86 + 4) = v89;
    *(v86 + 12) = 1024;
    *(v86 + 14) = v251;
    _os_log_impl(&_mh_execute_header, v83, v84, "Component %s requested snapshot: %{BOOL}d", v86, 0x12u);
    sub_100009298(v87);
  }

  v90 = v255;
  v91 = sub_10000D1AC();
  v92 = sub_10000D3CC();
  v93 = os_log_type_enabled(v91, v92);
  v252 = v82;
  if (v93)
  {
    v94 = swift_slowAlloc();
    v270 = swift_slowAlloc();
    *v94 = 136315394;
    swift_beginAccess();
    sub_10000C18C(&qword_1000187C0, &type metadata accessor for URL);
    v95 = sub_10000D4FC();
    v97 = sub_100008CF0(v95, v96, &v270);

    *(v94 + 4) = v97;
    v82 = v252;
    *(v94 + 12) = 2080;
    swift_beginAccess();
    v98 = sub_10000D4FC();
    v100 = sub_100008CF0(v98, v99, &v270);

    *(v94 + 14) = v100;
    _os_log_impl(&_mh_execute_header, v91, v92, "working dir: %s bundleWorkingDir: %s", v94, 0x16u);
    swift_arrayDestroy();
  }

  v101 = v253;
  v102 = v244;
  v103 = v251;
  if (!v82)
  {
    v103 = 0;
  }

  if (v103 == 1)
  {
    v104 = v254;
    swift_beginAccess();
    (*(v101 + 16))(v102, v104, v258);
    v105 = sub_10000613C(v102, v238);
    (*(v101 + 8))(v102, v258);
  }

  else
  {
    v105 = &_swiftEmptyArrayStorage;
  }

  v106 = sub_10000D1AC();
  v107 = sub_10000D3CC();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v270 = v109;
    *v108 = 136315138;
    swift_beginAccess();
    sub_10000C18C(&qword_1000187C0, &type metadata accessor for URL);
    v110 = sub_10000D4FC();
    v112 = sub_100008CF0(v110, v111, &v270);

    *(v108 + 4) = v112;
    _os_log_impl(&_mh_execute_header, v106, v107, "Creating working dir %s", v108, 0xCu);
    sub_100009298(v109);
  }

  v113 = [v242 defaultManager];
  swift_beginAccess();
  sub_10000CF8C();
  v114 = sub_10000D20C();

  v272 = 0;
  v115 = [v113 createDirectoryAtPath:v114 withIntermediateDirectories:1 attributes:0 error:&v272];

  v116 = v272;
  v117 = v252;
  if (!v115)
  {
    v128 = v272;

    sub_10000CF4C();

    swift_willThrow();
    swift_errorRetain();
    v129 = sub_10000D1AC();
    v130 = sub_10000D3DC();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = v90;
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v272 = v134;
      *v131 = 136315394;
      v135 = sub_10000CF8C();
      v137 = sub_100008CF0(v135, v136, &v272);

      *(v131 + 4) = v137;
      *(v131 + 12) = 2112;
      swift_errorRetain();
      v138 = _swift_stdlib_bridgeErrorToNSError();
      *(v131 + 14) = v138;
      *v133 = v138;
      _os_log_impl(&_mh_execute_header, v129, v130, "Failed to create temporary directory %s: %@", v131, 0x16u);
      sub_10000C4A0(v133, &qword_1000187D0, &qword_10000DE70);

      sub_100009298(v134);

      v139 = *(v253 + 8);
      v139(v132, v258);
    }

    else
    {

      v139 = *(v253 + 8);
      v139(v90, v258);
    }

LABEL_60:
    v151 = 0;
    goto LABEL_61;
  }

  v118 = objc_allocWithZone(sub_10000D14C());
  v119 = v116;
  v120 = [v118 init];
  sub_10000D13C();
  sub_10000CFFC();
  sub_10000D12C();
  v121 = sub_10000CFFC();
  v272 = 0xD000000000000011;
  v273 = 0x800000010000E570;
  v268 = v121;
  v269 = v122;
  v268 = sub_10000D2FC();
  v269 = v123;
  sub_10000D29C();
  v125 = v268;
  v124 = v269;
  v126 = v256;
  v127 = sub_100005328(v120, v268, v269);
  v244 = v125;
  v140 = v253;
  if (v251)
  {
    v251 = v127;

    swift_beginAccess();
    v141 = *&v126[OBJC_IVAR___NetworkInfoDiagnosticExtension_lockFileName];
    v142 = *&v126[OBJC_IVAR___NetworkInfoDiagnosticExtension_lockFileName + 8];
    v143 = v235;
    sub_10000CFCC();
    v144 = sub_1000037E8(v143);
    v145 = v241;
    if (v144)
    {
      v146 = sub_10000CFFC();
      v147 = v126;
      v149 = v148;
      v150 = swift_allocObject();
      v150[2] = v146;
      v150[3] = v149;
      v150[4] = v147;
      v147;
      sub_10000C810(v150);
      v224 = v223;

      v225 = v253;
      if (v224)
      {
        sub_100007314(v254, v105);
      }

      v226 = v235;
      sub_100004464(v235);

      v139 = *(v225 + 8);
      v227 = v258;
      v139(v226, v258);

      v139(v90, v227);
    }

    else
    {

      v178 = sub_10000D1AC();
      v179 = sub_10000D3BC();
      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        v268 = v181;
        *v180 = 136315138;
        v182 = v253;
        if (v252)
        {
          v183 = v252;
        }

        else
        {
          v145 = 0x6E776F6E6B6E55;
          v183 = 0xE700000000000000;
        }

        v184 = sub_100008CF0(v145, v183, &v268);

        *(v180 + 4) = v184;
        _os_log_impl(&_mh_execute_header, v178, v179, "Snapshot already in progress for component %s. Skipping this request.", v180, 0xCu);
        sub_100009298(v181);

        v139 = *(v182 + 8);
        v185 = v258;
        v139(v235, v258);

        v139(v90, v185);
      }

      else
      {

        v139 = *(v253 + 8);
        v191 = v258;
        v139(v235, v258);

        v139(v90, v191);
      }
    }

    goto LABEL_60;
  }

  v156 = v127;
  v243 = v120;

  v157 = *(v140 + 16);
  v158 = v236;
  v157(v236, &v126[OBJC_IVAR___NetworkInfoDiagnosticExtension_basePath], v258);
  if (v117)
  {
    v251 = v156;
    v272 = v241;
    v273 = v117;
    v242 = v157;
    v160 = v247;
    v159 = v248;
    (v245)(v247, v246, v248);
    sub_10000C614();

    sub_10000D01C();
    v250(v160, v159);
    v161 = v253;
    v162 = *(v253 + 8);
    v163 = v258;
    v162(v158, v258);

    (*(v161 + 32))(v158, v249, v163);
    sub_10000CFFC();
    v164 = v234;
    sub_10000CFAC();

    v165 = v233;
    v242(v233, v164, v163);
    v166 = sub_10000D1AC();
    v167 = sub_10000D3CC();
    if (os_log_type_enabled(v166, v167))
    {
      v168 = swift_slowAlloc();
      v256 = v162;
      v169 = v168;
      v257 = swift_slowAlloc();
      v272 = v257;
      *v169 = 136315138;
      sub_10000C18C(&qword_1000187C0, &type metadata accessor for URL);
      v170 = v258;
      v171 = sub_10000D4FC();
      v173 = v172;
      v174 = v165;
      v175 = v256;
      (v256)(v174, v170);
      v176 = sub_100008CF0(v171, v173, &v272);
      v90 = v255;

      *(v169 + 4) = v176;
      _os_log_impl(&_mh_execute_header, v166, v167, "bundle root URL: %s", v169, 0xCu);
      sub_100009298(v257);

      v177 = v243;
    }

    else
    {

      v162(v165, v258);
      v177 = v243;
      v175 = v162;
    }

    sub_10000CFFC();
    v187 = objc_allocWithZone(DEAttachmentItem);
    v188 = sub_10000D20C();

    v189 = [v187 initWithPath:v188];

    v140 = v253;
    if (v189)
    {
      sub_10000CB24(0, &qword_100018860, NSNumber_ptr);
      isa = sub_10000D40C(0).super.super.isa;
      [v189 setDeleteOnAttach:isa];

      sub_10000D30C();
      if (*((v259 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v259 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v228 = *((v259 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10000D33C();
      }

      sub_10000D35C();
      v175(v234, v258);
      v186 = v259;
    }

    else
    {
      v175(v234, v258);
      v186 = &_swiftEmptyArrayStorage;
    }

    v156 = v251;
  }

  else
  {
    v186 = &_swiftEmptyArrayStorage;
    v177 = v243;
  }

  if (v156)
  {
    v192 = v177;
    v193 = v244;
    v262 = v244;
    v263 = v124;
    v194 = v156;
    v195 = sub_10000D16C();
    v197 = v196;
    v256 = v195;
    v264 = v195;
    v265 = v196;
    v198 = v194;
    v199 = sub_10000D15C();
    v201 = v200;
    v257 = v199;
    v266 = v199;
    v267 = v200;
    if (!v124)
    {
      goto LABEL_90;
    }

    v202 = HIBYTE(v124) & 0xF;
    if ((v124 & 0x2000000000000000) == 0)
    {
      v202 = v193 & 0xFFFFFFFFFFFFLL;
    }

    if (v202)
    {
      v203 = objc_allocWithZone(DEAttachmentItem);

      v204 = sub_10000D20C();

      v205 = [v203 initWithPath:v204];

      v206 = v243;
      v140 = v253;
      v207 = v198;
      if (v205)
      {
        sub_10000CB24(0, &qword_100018860, NSNumber_ptr);
        v208 = sub_10000D40C(1).super.super.isa;
        [v205 setDeleteOnAttach:v208];

        v209 = v205;
        sub_10000D30C();
        if (*((v259 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v259 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v229 = *((v259 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10000D33C();
        }

        sub_10000D35C();

        v186 = v259;
      }
    }

    else
    {
LABEL_90:
      v206 = v192;
      v207 = v194;
    }

    if (!v197)
    {
      goto LABEL_99;
    }

    v210 = HIBYTE(v197) & 0xF;
    if ((v197 & 0x2000000000000000) == 0)
    {
      v210 = v256 & 0xFFFFFFFFFFFFLL;
    }

    if (v210)
    {
      v211 = objc_allocWithZone(DEAttachmentItem);

      v212 = sub_10000D20C();

      v213 = [v211 initWithPath:v212];

      v177 = v206;
      if (v213)
      {
        sub_10000CB24(0, &qword_100018860, NSNumber_ptr);
        v214 = sub_10000D40C(1).super.super.isa;
        [v213 setDeleteOnAttach:v214];

        v215 = v213;
        sub_10000D30C();
        if (*((v259 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v259 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v230 = *((v259 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10000D33C();
        }

        sub_10000D35C();

        v186 = v259;
      }
    }

    else
    {
LABEL_99:
      v177 = v206;
    }

    if (v201)
    {
      v216 = HIBYTE(v201) & 0xF;
      if ((v201 & 0x2000000000000000) == 0)
      {
        v216 = v257 & 0xFFFFFFFFFFFFLL;
      }

      if (v216)
      {
        v217 = objc_allocWithZone(DEAttachmentItem);

        v218 = sub_10000D20C();

        v219 = [v217 initWithPath:v218];

        v140 = v253;
        if (v219)
        {
          sub_10000CB24(0, &qword_100018860, NSNumber_ptr);
          v220 = sub_10000D40C(1).super.super.isa;
          [v219 setDeleteOnAttach:v220];

          v221 = v219;
          sub_10000D30C();
          if (*((v259 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v259 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v231 = *((v259 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_10000D33C();
          }

          sub_10000D35C();

          v186 = v259;
        }
      }
    }

    sub_100009340(&qword_100018858, &qword_10000DF08);
    swift_arrayDestroy();
    v90 = v255;
  }

  else
  {

    v207 = 0;
  }

  v151 = sub_100003534(v186);

  v139 = *(v140 + 8);
  v222 = v258;
  v139(v236, v258);

  v139(v90, v222);
LABEL_61:
  v139(v254, v258);
  return v151;
}

char *sub_100003534(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_10000D4CC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_100009604(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_10000D4AC();
        sub_10000CB24(0, &qword_100018878, DEAttachmentItem_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100009604((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10000CB6C(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10000CB24(0, &qword_100018878, DEAttachmentItem_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100009604((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10000CB6C(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000037E8(uint64_t a1)
{
  v2 = sub_10000D25C();
  v100 = *(v2 - 8);
  v101 = v2;
  v3 = *(v100 + 64);
  (__chkstk_darwin)();
  v99 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000D02C();
  v103 = *(v5 - 8);
  v104 = v5;
  v6 = *(v103 + 64);
  v7 = (__chkstk_darwin)();
  v98 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v96 - v9;
  v11 = sub_100009340(&qword_1000187D8, &qword_10000DE78);
  v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11 - 8);
  v14 = &v96 - v13;
  v15 = sub_10000D0AC();
  v16 = *(v15 - 8);
  v105 = v15;
  v106 = v16;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v102 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v96 - v20;
  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  sub_10000CFFC();
  v24 = sub_10000D20C();

  v25 = [v23 fileExistsAtPath:v24];

  if (!v25)
  {
    goto LABEL_14;
  }

  v26 = [v22 defaultManager];
  v97 = a1;
  sub_10000CFFC();
  v27 = sub_10000D20C();

  v109[0] = 0;
  v28 = [v26 attributesOfItemAtPath:v27 error:v109];

  v29 = v109[0];
  if (!v28)
  {
    v87 = v109[0];
    sub_10000CF4C();

    swift_willThrow();
    goto LABEL_21;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_10000C18C(&qword_100018850, type metadata accessor for FileAttributeKey);
  v30 = sub_10000D1FC();
  v31 = v29;

  if (*(v30 + 16) && (v32 = sub_10000938C(NSFileCreationDate), (v33 & 1) != 0))
  {
    sub_1000092E4(*(v30 + 56) + 32 * v32, v109);

    v34 = v105;
    v35 = swift_dynamicCast();
    v36 = v106;
    (*(v106 + 56))(v14, v35 ^ 1u, 1, v34);
    if ((*(v36 + 48))(v14, 1, v34) != 1)
    {
      v37 = v106;
      (*(v106 + 32))(v21, v14, v34);
      v38 = v102;
      sub_10000D09C();
      sub_10000D04C();
      v40 = v39;
      v41 = *(v37 + 8);
      v41(v38, v34);
      if (v40 <= 120.0)
      {
        v41(v21, v34);
        return 0;
      }

      v42 = sub_10000D1AC();
      v43 = sub_10000D3DC();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Removing stale lock file older than 2 minutes", v44, 2u);
      }

      v45 = [v22 defaultManager];
      sub_10000CFFC();
      v46 = sub_10000D20C();

      v109[0] = 0;
      v47 = [v45 removeItemAtPath:v46 error:v109];

      if ((v47 & 1) == 0)
      {
        v95 = v109[0];
        sub_10000CF4C();

        swift_willThrow();
        v41(v21, v105);
        goto LABEL_21;
      }

      v48 = v109[0];
      v41(v21, v105);
      goto LABEL_13;
    }
  }

  else
  {

    (*(v106 + 56))(v14, 1, 1, v105);
  }

  sub_10000C4A0(v14, &qword_1000187D8, &qword_10000DE78);
LABEL_13:
  a1 = v97;
LABEL_14:
  sub_10000CFDC();
  v49 = [v22 defaultManager];
  sub_10000CFFC();
  v50 = sub_10000D20C();

  v51 = [v49 fileExistsAtPath:v50];

  v52 = v103;
  if (v51)
  {
LABEL_17:
    v109[0] = 0;
    v109[1] = 0xE000000000000000;
    sub_10000D49C(57);
    v110._object = 0x800000010000E4C0;
    v110._countAndFlagsBits = 0xD000000000000011;
    sub_10000D2AC(v110);
    v59 = [objc_allocWithZone(NSISO8601DateFormatter) init];
    v60 = v102;
    sub_10000D09C();
    isa = sub_10000D06C().super.isa;
    (*(v106 + 8))(v60, v105);
    v62 = [v59 stringFromDate:isa];

    v63 = sub_10000D23C();
    v65 = v64;

    v111._countAndFlagsBits = v63;
    v111._object = v65;
    sub_10000D2AC(v111);

    v112._countAndFlagsBits = 0x64697022090A2C22;
    v112._object = 0xEB00000000203A22;
    sub_10000D2AC(v112);
    v66 = objc_opt_self();
    v67 = [v66 processInfo];
    LODWORD(isa) = [v67 processIdentifier];

    v108 = isa;
    v113._countAndFlagsBits = sub_10000D4FC();
    sub_10000D2AC(v113);

    v114._countAndFlagsBits = 0xD000000000000014;
    v114._object = 0x800000010000E4E0;
    sub_10000D2AC(v114);
    v68 = [v66 processInfo];
    v69 = [v68 processName];

    v70 = sub_10000D23C();
    v72 = v71;

    v115._countAndFlagsBits = v70;
    v115._object = v72;
    sub_10000D2AC(v115);

    v116._countAndFlagsBits = 8194594;
    v116._object = 0xE300000000000000;
    sub_10000D2AC(v116);
    v73 = v99;
    sub_10000D24C();
    sub_10000C614();
    sub_10000D42C();
    (*(v100 + 8))(v73, v101);

    v74 = v98;
    v75 = a1;
    v76 = v104;
    (*(v52 + 16))(v98, v75, v104);
    v77 = sub_10000D1AC();
    v78 = sub_10000D3CC();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v109[0] = v80;
      *v79 = 136315138;
      v81 = sub_10000CFFC();
      v83 = v82;
      v107 = v10;
      v84 = *(v52 + 8);
      v84(v74, v76);
      v85 = sub_100008CF0(v81, v83, v109);

      *(v79 + 4) = v85;
      _os_log_impl(&_mh_execute_header, v77, v78, "Successfully acquired snapshot lock at %s", v79, 0xCu);
      sub_100009298(v80);

      v84(v107, v76);
    }

    else
    {

      v94 = *(v52 + 8);
      v94(v74, v76);
      v94(v10, v76);
    }

    return 1;
  }

  v53 = [v22 defaultManager];
  sub_10000CFBC(v54);
  v56 = v55;
  v109[0] = 0;
  v57 = [v53 createDirectoryAtURL:v55 withIntermediateDirectories:1 attributes:0 error:v109];

  if (v57)
  {
    v58 = v109[0];
    goto LABEL_17;
  }

  v86 = v109[0];
  sub_10000CF4C();

  swift_willThrow();
  (*(v52 + 8))(v10, v104);
LABEL_21:
  swift_errorRetain();
  v88 = sub_10000D1AC();
  v89 = sub_10000D3DC();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v90 = 138412290;
    swift_errorRetain();
    v92 = _swift_stdlib_bridgeErrorToNSError();
    *(v90 + 4) = v92;
    *v91 = v92;
    _os_log_impl(&_mh_execute_header, v88, v89, "Failed to acquire snapshot lock: %@", v90, 0xCu);
    sub_10000C4A0(v91, &qword_1000187D0, &qword_10000DE70);
  }

  else
  {
  }

  return 0;
}

void sub_100004464(uint64_t a1)
{
  v2 = sub_10000D02C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v37 - v8;
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  sub_10000CFFC();
  v12 = sub_10000D20C();

  v13 = [v11 fileExistsAtPath:v12];

  if (v13)
  {
    v14 = [v10 defaultManager];
    sub_10000CFFC();
    v15 = sub_10000D20C();

    v38 = 0;
    v16 = [v14 removeItemAtPath:v15 error:&v38];

    v17 = v38;
    if (v16)
    {
      (*(v3 + 16))(v9, a1, v2);
      v18 = v17;
      v19 = sub_10000D1AC();
      v20 = sub_10000D3DC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v38 = v22;
        *v21 = 136315138;
        v23 = sub_10000CFFC();
        v25 = v24;
        (*(v3 + 8))(v9, v2);
        v26 = sub_100008CF0(v23, v25, &v38);

        *(v21 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v19, v20, "Successfully released snapshot lock at %s", v21, 0xCu);
        sub_100009298(v22);
      }

      else
      {

        (*(v3 + 8))(v9, v2);
      }
    }

    else
    {
      v27 = v38;
      sub_10000CF4C();

      swift_willThrow();
      (*(v3 + 16))(v7, a1, v2);
      swift_errorRetain();
      v28 = sub_10000D1AC();
      v29 = sub_10000D3DC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v37[0] = swift_slowAlloc();
        v38 = v37[0];
        *v30 = 136315394;
        v32 = sub_10000CFFC();
        v34 = v33;
        (*(v3 + 8))(v7, v2);
        v35 = sub_100008CF0(v32, v34, &v38);

        *(v30 + 4) = v35;
        *(v30 + 12) = 2112;
        swift_errorRetain();
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 14) = v36;
        *v31 = v36;
        _os_log_impl(&_mh_execute_header, v28, v29, "Failed to release snapshot lock at %s: %@", v30, 0x16u);
        sub_10000C4A0(v31, &qword_1000187D0, &qword_10000DE70);

        sub_100009298(v37[0]);
      }

      else
      {

        (*(v3 + 8))(v7, v2);
      }
    }
  }
}

uint64_t sub_10000493C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  sub_100008288(&qword_100018728, qword_10000DE18);
  sub_10000D58C();
  v3 = sub_10000D41C();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t sub_100004A34(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  v7[5] = v9;
  *v9 = v7;
  v9[1] = sub_100004B28;

  return v11(v7 + 2);
}

uint64_t sub_100004B28()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_100004CB4;
  }

  else
  {
    v3 = sub_100004C3C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100004C3C()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[2];
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  sub_10000C5F0(v2, v3);
  v4 = v0[4];
  sub_10000D3FC();
  v5 = v0[1];

  return v5();
}

uint64_t sub_100004CB4()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[6];
  v3 = *(v1 + 24);
  *(v1 + 24) = 1;
  sub_10000C5F0(v2, v3);
  v4 = v0[4];
  sub_10000D3FC();
  v5 = v0[1];

  return v5();
}

uint64_t sub_100004D34(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_100004E28;

  return v11(v7 + 6);
}

uint64_t sub_100004E28()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_100004FB8;
  }

  else
  {
    v3 = sub_100004F3C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100004F3C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 48);
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  sub_10000CB00(v2, v3);
  v4 = *(v0 + 24);
  sub_10000D3FC();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100004FB8()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[5];
  v3 = *(v1 + 24);
  *(v1 + 24) = 1;
  sub_10000CB00(v2, v3);
  v4 = v0[3];
  sub_10000D3FC();
  v5 = v0[1];

  return v5();
}

uint64_t sub_100005038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100009340(&qword_100018838, &qword_10000DED0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000C430(a3, v27 - v11);
  v13 = sub_10000D38C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000C4A0(v12, &qword_100018838, &qword_10000DED0);
  }

  else
  {
    sub_10000D37C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10000D36C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10000D27C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000C4A0(a3, &qword_100018838, &qword_10000DED0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000C4A0(a3, &qword_100018838, &qword_10000DED0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100005328(void *a1, uint64_t a2, unint64_t a3)
{
  v55 = a3;
  v53 = a2;
  v6 = sub_10000D02C();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v47 - v11;
  v13 = sub_10000CEBC();
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  *(v17 + 24) = a1;
  v18 = v3;
  v19 = a1;
  sub_10000BF94(v17);
  v21 = v20;

  if (!v4)
  {
    v51 = v12;
    v52 = v16;
    v50 = v10;
    if (v21)
    {
      v48 = v6;
      v49 = v18;
      v22 = sub_10000D1AC();
      v23 = sub_10000D3BC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Completed Assessment", v24, 2u);
      }

      v25 = sub_10000CEFC();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v28 = sub_10000CEEC();
      sub_100009340(&qword_100018810, &qword_10000DEC0);
      v29 = *(v56 + 72);
      v30 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_10000DDA0;
      sub_10000CE8C();
      sub_10000CE9C();
      sub_10000CEAC();
      v57 = v31;
      sub_10000C18C(&qword_100018818, &type metadata accessor for JSONEncoder.OutputFormatting);
      sub_100009340(&qword_100018820, &qword_10000DEC8);
      sub_10000C1D4();
      sub_10000D43C();
      sub_10000CECC();
      v57 = v21;
      sub_10000D17C();
      sub_10000C18C(&qword_100018830, &type metadata accessor for NetworkInfoResults);
      v35 = sub_10000CEDC();
      v56 = v36;
      v52 = v28;

      v37 = sub_10000D1AC();
      v38 = sub_10000D3CC();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v57 = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_100008CF0(v53, v55, &v57);
        _os_log_impl(&_mh_execute_header, v37, v38, "Writing assessment to %s", v39, 0xCu);
        sub_100009298(v40);
      }

      v41 = v48;
      v42 = v54;
      v43 = v51;
      sub_10000CFAC();
      sub_10000D03C();
      v44 = *(v42 + 8);
      v44(v43, v41);
      v45 = v50;
      sub_10000CFAC();
      sub_1000078FC(v45);
      v44(v45, v41);
      sub_10000C238(v35, v56);
    }

    else
    {
      v32 = sub_10000D1AC();
      v33 = sub_10000D3DC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "No results from NetworkInfoAssessment", v34, 2u);
      }
    }
  }

  return v21;
}

uint64_t sub_100005940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100005964, 0, 0);
}

uint64_t sub_100005964()
{
  v1 = v0[3] + OBJC_IVAR___NetworkInfoDiagnosticExtension_logger;
  v2 = sub_10000D1AC();
  v3 = sub_10000D3BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting Assessment", v4, 2u);
  }

  v5 = v0[4];

  v6 = objc_allocWithZone(sub_10000D10C());
  v7 = v5;
  v0[5] = sub_10000D0FC();
  v8 = *(&async function pointer to dispatch thunk of NetworkInfoAssessment.run() + 1);
  v11 = (&async function pointer to dispatch thunk of NetworkInfoAssessment.run() + async function pointer to dispatch thunk of NetworkInfoAssessment.run());
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_100005AAC;

  return v11();
}

uint64_t sub_100005AAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_100005C44;
  }

  else
  {
    *(v4 + 64) = a1;
    v7 = sub_100005BD4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100005BD4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100005C44()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1();
}

uint64_t sub_100005CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100005CCC, 0, 0);
}

uint64_t sub_100005CCC()
{
  v0[6] = [objc_allocWithZone(sub_10000D11C()) init];
  v1 = *(&async function pointer to dispatch thunk of NetworkInfoSnapshotter.run(workingDir:) + 1);
  v6 = (&async function pointer to dispatch thunk of NetworkInfoSnapshotter.run(workingDir:) + async function pointer to dispatch thunk of NetworkInfoSnapshotter.run(workingDir:));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_100005D94;
  v4 = v0[3];
  v3 = v0[4];

  return v6(v4, v3);
}

uint64_t sub_100005D94(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = sub_1000060D8;
  }

  else
  {
    v5 = sub_100005EA8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100005EA8()
{
  v22 = v0;
  v1 = *(v0 + 40);
  if (*(v0 + 64))
  {
    v2 = *(v0 + 64);

    v3 = sub_10000D1AC();
    v4 = sub_10000D3CC();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 48);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;
      v9 = sub_10000D32C();
      v11 = v10;

      v12 = sub_100008CF0(v9, v11, &v21);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "snapshot results: %s", v7, 0xCu);
      sub_100009298(v8);
    }

    else
    {
    }

    v18 = 1;
  }

  else
  {
    v13 = sub_10000D1AC();
    v14 = sub_10000D3DC();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 48);
    if (v15)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "No results from Snapshotter", v17, 2u);
    }

    v18 = 0;
  }

  **(v0 + 16) = v18;
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1000060D8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

void *sub_10000613C(uint64_t a1, int a2)
{
  v110 = a2;
  v3 = sub_100009340(&qword_1000187D8, &qword_10000DE78);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v118 = &v105 - v5;
  v119 = sub_10000D0AC();
  v120 = *(v119 - 8);
  v6 = *(v120 + 64);
  v7 = __chkstk_darwin(v119);
  v116 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v117 = &v105 - v10;
  __chkstk_darwin(v9);
  v125 = &v105 - v11;
  v12 = sub_100009340(&qword_1000187E0, &qword_10000DE80);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v126 = &v105 - v14;
  v141 = sub_10000CF3C();
  v127 = *(v141 - 8);
  v15 = *(v127 + 64);
  v16 = __chkstk_darwin(v141);
  v121 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v109 = &v105 - v19;
  __chkstk_darwin(v18);
  v124 = &v105 - v20;
  v21 = sub_100009340(&qword_1000187E8, &qword_10000DE88);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v105 - v23;
  v113 = sub_10000CF6C();
  v112 = *(v113 - 8);
  v25 = *(v112 + 64);
  __chkstk_darwin(v113);
  v143 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000D02C();
  v132 = *(v27 - 8);
  v142 = v132;
  v28 = *(v132 + 64);
  v29 = __chkstk_darwin(v27);
  v31 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v135 = &v105 - v33;
  __chkstk_darwin(v32);
  v35 = &v105 - v34;
  v144 = 0;
  v36 = objc_opt_self();
  v37 = [v36 defaultManager];
  sub_10000CF8C();
  v38 = sub_10000D20C();

  v39 = [v37 fileExistsAtPath:v38 isDirectory:&v144];

  if ((v39 & 1) == 0)
  {
    v76 = v142;
    (*(v142 + 16))(v35, a1, v27);
    v77 = sub_10000D1AC();
    v78 = sub_10000D3CC();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v145 = v80;
      *v79 = 136315138;
      sub_10000C18C(&qword_1000187C0, &type metadata accessor for URL);
      v81 = sub_10000D4FC();
      v83 = v82;
      (*(v76 + 8))(v35, v27);
      v84 = sub_100008CF0(v81, v83, &v145);

      *(v79 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v77, v78, "Directory %s does not exist, no previous snapshots", v79, 0xCu);
      sub_100009298(v80);
    }

    else
    {

      (*(v76 + 8))(v35, v27);
    }

    return &_swiftEmptyArrayStorage;
  }

  v40 = v127;
  v111 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v133 = [v36 defaultManager];
  sub_10000CF8C();
  v41 = v135;
  sub_10000CFAC();

  v140 = sub_100009340(&qword_1000187F0, &qword_10000DE90);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_10000DDB0;
  *(v42 + 32) = NSURLIsDirectoryKey;
  *(v42 + 40) = NSURLIsReadableKey;
  *(v42 + 48) = NSURLCreationDateKey;
  *(v42 + 56) = NSURLCanonicalPathKey;
  v139 = NSURLIsDirectoryKey;
  v138 = NSURLIsReadableKey;
  v137 = NSURLCreationDateKey;
  v136 = NSURLCanonicalPathKey;
  v43 = v133;
  v44 = sub_10000D3AC();

  v45 = *(v142 + 8);
  v142 += 8;
  v135 = v45;
  (v45)(v41, v27);
  if (!v44)
  {
    v49 = &_swiftEmptyArrayStorage;
    v50 = v123;
    v46 = v141;
    goto LABEL_32;
  }

  v42 = v40;
  v108 = v44;
  sub_10000D39C();
  sub_10000CF5C();
  v46 = v141;
  if (!v146)
  {
    v49 = &_swiftEmptyArrayStorage;
    v50 = v123;
    goto LABEL_31;
  }

  v47 = v132;
  v48 = (v132 + 56);
  v132 += 32;
  v131 = NSURLNameKey;
  v130 = (v40 + 56);
  v115 = (v40 + 32);
  v114 = (v40 + 8);
  v106 = (v40 + 16);
  v49 = &_swiftEmptyArrayStorage;
  v42 = &type metadata for Any;
  v129 = xmmword_10000DDC0;
  v50 = v123;
  v51 = v126;
  v134 = v24;
  v133 = (v47 + 56);
  v128 = v27;
  do
  {
    v107 = v49;
    while (1)
    {
      v52 = swift_dynamicCast();
      v53 = *v48;
      if (v52)
      {
        break;
      }

      v53(v24, 1, 1, v27);
      sub_10000C4A0(v24, &qword_1000187E8, &qword_10000DE88);
LABEL_7:
      sub_10000CF5C();
      if (!v146)
      {
        v49 = v107;
        goto LABEL_31;
      }
    }

    v53(v24, 0, 1, v27);
    (*v132)(v31, v24, v27);
    inited = swift_initStackObject();
    *(inited + 16) = v129;
    v56 = v138;
    v55 = v139;
    *(inited + 32) = v139;
    v57 = v31;
    v58 = v137;
    *(inited + 40) = v56;
    *(inited + 48) = v58;
    v59 = v131;
    v60 = v136;
    *(inited + 56) = v131;
    *(inited + 64) = v60;
    v61 = v55;
    v62 = v56;
    v63 = v58;
    v31 = v57;
    v64 = v60;
    v65 = v59;
    sub_10000BCA0(inited);
    swift_setDeallocating();
    type metadata accessor for URLResourceKey(0);
    swift_arrayDestroy();
    sub_10000CF9C();
    if (v50)
    {

      v66 = v57;
      v27 = v128;
      (v135)(v66, v128);
      v46 = v141;
      (*v130)(v51, 1, 1, v141);
      sub_10000C4A0(v51, &qword_1000187E0, &qword_10000DE80);
      v50 = 0;
LABEL_13:
      v24 = v134;
      v48 = v133;
      v42 = &type metadata for Any;
      goto LABEL_7;
    }

    v27 = v128;

    v46 = v141;
    (*v130)(v51, 0, 1, v141);
    v67 = *v115;
    v68 = v124;
    (*v115)();
    v69 = sub_10000CF0C();
    if (v69 == 2)
    {
      (*v114)(v68, v46);
      (v135)(v31, v27);
      v51 = v126;
      goto LABEL_13;
    }

    v48 = v133;
    if (v69)
    {
      (*v106)(v109, v68, v46);
      v70 = v107;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v134;
      v123 = 0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v70 = sub_100008B18(0, v70[2] + 1, 1, v70);
      }

      v73 = v70[2];
      v72 = v70[3];
      v105 = v73 + 1;
      if (v73 >= v72 >> 1)
      {
        v107 = sub_100008B18(v72 > 1, v73 + 1, 1, v70);
      }

      else
      {
        v107 = v70;
      }

      v74 = v127;
      v46 = v141;
      (*(v127 + 8))(v68, v141);
      (v135)(v31, v27);
      v75 = v107;
      *(v107 + 16) = v105;
      (v67)(v75 + v111 + *(v74 + 72) * v73, v109, v46);
      v50 = v123;
    }

    else
    {
      (*v114)(v68, v46);
      (v135)(v31, v27);
      v24 = v134;
    }

    sub_10000CF5C();
    v51 = v126;
    v49 = v107;
    v42 = &type metadata for Any;
  }

  while (v146);
LABEL_31:
  (*(v112 + 8))(v143, v113);

LABEL_32:
  v145 = v49;

  sub_100009AD8(&v145);
  v86 = v119;
  v87 = v120;
  v88 = v122;
  v89 = v118;
  if (v50)
  {

    __break(1u);
    return result;
  }

  v90 = v145;
  sub_10000D09C();
  if (!*(v90 + 2))
  {
    __break(1u);
    goto LABEL_54;
  }

  v91 = v46;
  v46 = &v90[v111];
  (*(v127 + 16))(v121, &v90[v111], v91);
  sub_10000CF1C();
  if ((*(v87 + 48))(v89, 1, v86) == 1)
  {
    sub_10000C4A0(v89, &qword_1000187D8, &qword_10000DE78);
    goto LABEL_42;
  }

  (*(v87 + 32))(v117, v89, v86);
  sub_10000D05C();
  if (sub_10000D08C() & 1) == 0 || (v110)
  {
    v98 = *(v87 + 8);
    v98(v116, v86);
    v98(v117, v86);
LABEL_42:
    v99 = *(v90 + 2);
    if (v99 >= 0xA)
    {
      v87 = (2 * v99) | 1;

      v42 = 9;
      v49 = v90;
    }

    else
    {
      v42 = 0;
      v46 = &_swiftEmptyArrayStorage + v111;
      v49 = &_swiftEmptyArrayStorage;
      v87 = 1;
    }

    sub_10000D51C();
    swift_unknownObjectRetain_n();
    v100 = swift_dynamicCastClass();
    if (!v100)
    {
      swift_unknownObjectRelease();
      v100 = &_swiftEmptyArrayStorage;
    }

    v101 = v100[2];

    if (v101 == (v87 >> 1) - v42)
    {
      v85 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      v102 = v120;
      if (v85)
      {
LABEL_51:
        (*(v127 + 8))(v121, v141);
        (*(v102 + 8))(v125, v86);

        return v85;
      }

      v85 = &_swiftEmptyArrayStorage;
LABEL_50:
      swift_unknownObjectRelease();
      goto LABEL_51;
    }

LABEL_54:
    swift_unknownObjectRelease();
    sub_100009464(v49, v46, v42, v87);
    v85 = v104;
    swift_unknownObjectRelease();
    v102 = v120;
    goto LABEL_50;
  }

  v92 = v88;
  v93 = sub_10000D1AC();
  v94 = sub_10000D3DC();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 134217984;
    *(v95 + 4) = 0x404E000000000000;
    _os_log_impl(&_mh_execute_header, v93, v94, "Last snapshot occurred more recent than the minimumSnapshotInterval: %f. Skipping this invocation.", v95, 0xCu);
  }

  sub_1000082F4();
  v85 = swift_allocError();
  *v96 = 0xD000000000000013;
  v96[1] = 0x800000010000E4A0;
  swift_willThrow();
  v97 = *(v87 + 8);
  v97(v116, v86);
  v97(v117, v86);
  (*(v127 + 8))(v121, v141);
  v97(v125, v86);

  return v85;
}

void sub_100007314(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(NSFileManager) init];
  v4 = sub_10000CFFC();
  v6 = v5;
  v7 = type metadata accessor for NetworkInfoDiagnosticExtension.RMDashRFDelegate();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCC30NetworkInfoDiagnosticExtension30NetworkInfoDiagnosticExtensionP33_A8013760F8D41FC9CE2006DC6E22100C16RMDashRFDelegate_basePath];
  *v9 = v4;
  v9[1] = v6;
  v35.receiver = v8;
  v35.super_class = v7;
  v32 = objc_msgSendSuper2(&v35, "init");
  [v3 setDelegate:?];
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(sub_10000CF3C() - 8);
    v12 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v34 = *(v11 + 72);
    v33 = v3;
    do
    {
      v14 = sub_10000CF2C();
      if (v15)
      {
        v16 = v14;
        v17 = v15;

        v18 = sub_10000D1AC();
        v19 = sub_10000D3CC();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v36 = v21;
          *v20 = 136315138;
          *(v20 + 4) = sub_100008CF0(v16, v17, &v36);
          _os_log_impl(&_mh_execute_header, v18, v19, "removing old snapshot %s", v20, 0xCu);
          sub_100009298(v21);
        }

        v22 = sub_10000D20C();
        v36 = 0;
        v23 = [v3 removeItemAtPath:v22 error:&v36];

        if (v23)
        {
          v13 = v36;
        }

        else
        {
          v24 = v36;
          sub_10000CF4C();

          swift_willThrow();

          swift_errorRetain();
          v25 = sub_10000D1AC();
          v26 = sub_10000D3DC();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v36 = v29;
            *v27 = 136315394;
            v30 = sub_100008CF0(v16, v17, &v36);

            *(v27 + 4) = v30;
            *(v27 + 12) = 2112;
            swift_errorRetain();
            v31 = _swift_stdlib_bridgeErrorToNSError();
            *(v27 + 14) = v31;
            *v28 = v31;
            _os_log_impl(&_mh_execute_header, v25, v26, "Failed to remove snapshot %s: %@", v27, 0x16u);
            sub_10000C4A0(v28, &qword_1000187D0, &qword_10000DE70);
            v3 = v33;

            sub_100009298(v29);
          }

          else
          {
          }
        }
      }

      v12 += v34;
      --v10;
    }

    while (v10);
  }
}

char *sub_1000078FC(uint64_t a1)
{
  v3 = sub_10000D02C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = sub_10000D1AC();
  v9 = sub_10000D3CC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v31[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v31[0] = a1;
    v13 = v12;
    v34[0] = v12;
    *v11 = 136315138;
    sub_10000C18C(&qword_1000187C0, &type metadata accessor for URL);
    v14 = sub_10000D4FC();
    v16 = v15;
    (*(v4 + 8))(v7, v3);
    v17 = sub_100008CF0(v14, v16, v34);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Marking %s purgeable", v11, 0xCu);
    sub_100009298(v13);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  sub_10000CFFC();
  sub_10000D27C();

  v18 = sub_10000D1DC();

  if (v18 < 0)
  {
    strcpy(v34, "cannot open: ");
    HIWORD(v34[1]) = -4864;
    v27 = sub_10000D1EC();
    result = strerror(v27);
    if (result)
    {
      v36._countAndFlagsBits = sub_10000D2BC();
      sub_10000D2AC(v36);

      v28 = v34[0];
      v29 = v34[1];
      sub_1000082F4();
      swift_allocError();
      *v30 = v28;
      v30[1] = v29;
      return swift_willThrow();
    }
  }

  else
  {
    v33 = 66565;
    v32 = 0;
    v19 = [objc_opt_self() defaultManager];
    sub_10000CFFC();
    v20 = sub_10000D20C();

    v21 = [v19 fileExistsAtPath:v20 isDirectory:&v32];

    if (v21)
    {
      if (v32 == 1)
      {
        v33 |= 0x2000u;
      }
    }

    if (!ffsctl(v18, 0xC0084A44uLL, &v33, 0))
    {
      return close(v18);
    }

    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_10000D49C(18);

    v34[0] = 0xD000000000000010;
    v34[1] = 0x800000010000E480;
    v22 = sub_10000D1EC();
    result = strerror(v22);
    if (result)
    {
      v35._countAndFlagsBits = sub_10000D2BC();
      sub_10000D2AC(v35);

      v24 = v34[0];
      v25 = v34[1];
      sub_1000082F4();
      swift_allocError();
      *v26 = v24;
      v26[1] = v25;
      swift_willThrow();
      return close(v18);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100007D68()
{
  v1 = v0;
  v2 = sub_100009340(&qword_1000187E8, &qword_10000DE88);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  sub_10000D1BC();
  sub_10000D19C();
  sub_10000D18C();
  sub_10000D00C();

  v6 = sub_10000D02C();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(&v1[OBJC_IVAR___NetworkInfoDiagnosticExtension_basePath], v5, v6);
    *&v1[OBJC_IVAR___NetworkInfoDiagnosticExtension_maxSnapshotsPerBundle] = 10;
    *&v1[OBJC_IVAR___NetworkInfoDiagnosticExtension_minimumSnapshotInterval] = 0x404E000000000000;
    v9 = &v1[OBJC_IVAR___NetworkInfoDiagnosticExtension_lockFileName];
    strcpy(&v1[OBJC_IVAR___NetworkInfoDiagnosticExtension_lockFileName], ".snapshot_lock");
    v9[15] = -18;
    v10 = type metadata accessor for NetworkInfoDiagnosticExtension();
    v11.receiver = v1;
    v11.super_class = v10;
    return objc_msgSendSuper2(&v11, "init");
  }

  return result;
}

id sub_100007F78(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for NetworkInfoDiagnosticExtension()
{
  result = qword_100018978;
  if (!qword_100018978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000080C4()
{
  result = sub_10000D1CC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_10000D02C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000081AC(uint64_t a1)
{
  v1 = *(a1 + 80);
  sub_100008288(&qword_100018728, qword_10000DE18);
  sub_10000D58C();
  result = sub_10000D41C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100008288(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000082F4()
{
  result = qword_100018A08[0];
  if (!qword_100018A08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100018A08);
  }

  return result;
}

uint64_t sub_100008354(uint64_t a1, id *a2)
{
  result = sub_10000D21C();
  *a2 = 0;
  return result;
}

uint64_t sub_1000083D0(uint64_t a1, id *a2)
{
  v3 = sub_10000D22C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100008454@<X0>(void *a1@<X8>)
{
  sub_10000D23C();
  v2 = sub_10000D20C();

  *a1 = v2;
  return result;
}

uint64_t sub_10000849C()
{
  v1 = *v0;
  sub_10000D23C();
  v2 = sub_10000D2EC();

  return v2;
}

uint64_t sub_1000084DC()
{
  v1 = *v0;
  sub_10000D23C();
  sub_10000D28C();
}

Swift::Int sub_100008534()
{
  v1 = *v0;
  sub_10000D23C();
  sub_10000D56C();
  sub_10000D28C();
  v2 = sub_10000D57C();

  return v2;
}

uint64_t sub_1000085AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_10000D23C();
  v6 = v5;
  if (v4 == sub_10000D23C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10000D50C();
  }

  return v9 & 1;
}

uint64_t sub_100008634(uint64_t a1)
{
  v2 = sub_10000C18C(&qword_100018850, type metadata accessor for FileAttributeKey);
  v3 = sub_10000C18C(&qword_1000188D0, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000086F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_10000D20C();

  *a2 = v5;
  return result;
}

uint64_t sub_10000873C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10000D23C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100008768(uint64_t a1)
{
  v2 = sub_10000C18C(&qword_1000188D8, type metadata accessor for URLResourceKey);
  v3 = sub_10000C18C(&unk_1000188E0, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100008824(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000891C;

  return v7(a1);
}

uint64_t sub_10000891C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_100008A14(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009340(&qword_100018808, &qword_10000DEA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_100008B18(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009340(&qword_1000187F8, &qword_10000DE98);
  v10 = *(sub_10000CF3C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_10000CF3C() - 8);
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

uint64_t sub_100008CF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008DBC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000092E4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009298(v11);
  return v7;
}

unint64_t sub_100008DBC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100008EC8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10000D4BC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100008EC8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100008F14(a1, a2);
  sub_100009044(&off_1000148F8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100008F14(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100009130(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000D4BC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10000D2CC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100009130(v10, 0);
        result = sub_10000D48C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100009044(uint64_t result)
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

  result = sub_1000091A4(result, v12, 1, v3);
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

void *sub_100009130(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100009340(&qword_1000187C8, &qword_10000DE68);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000091A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009340(&qword_1000187C8, &qword_10000DE68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100009298(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000092E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100009340(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000938C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_10000D23C();
  sub_10000D56C();
  sub_10000D28C();
  v4 = sub_10000D57C();

  return sub_10000990C(a1, v4);
}

unint64_t sub_100009420(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000D44C(*(v2 + 40));

  return sub_100009A10(a1, v4);
}

void sub_100009464(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100009340(&qword_1000187F8, &qword_10000DE98);
      v7 = *(sub_10000CF3C() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_10000CF3C() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

char *sub_100009604(char *a1, int64_t a2, char a3)
{
  result = sub_1000097FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100009624(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009340(&qword_1000187F8, &qword_10000DE98);
  v10 = *(sub_10000CF3C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_10000CF3C() - 8);
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

char *sub_1000097FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009340(&qword_100018880, &qword_10000DF40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_10000990C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10000D23C();
      v9 = v8;
      if (v7 == sub_10000D23C() && v9 == v10)
      {
        break;
      }

      v12 = sub_10000D50C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100009A10(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000CB7C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10000D45C();
      sub_10000C6C8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

Swift::Int sub_100009AD8(void **a1)
{
  v2 = *(sub_10000CF3C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10000B8BC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100009B80(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100009B80(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10000D4EC(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000CF3C();
        v6 = sub_10000D34C();
        v6[2] = v5;
      }

      v7 = *(sub_10000CF3C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10000A088(v8, v9, a1, v4);
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
    return sub_100009CAC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100009CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100009340(&qword_1000187D8, &qword_10000DE78);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v62 = &v44 - v13;
  v14 = sub_10000CF3C();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v54 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v60 = &v44 - v19;
  result = __chkstk_darwin(v18);
  v23 = &v44 - v21;
  v46 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v58 = *(v22 + 16);
    v59 = v22 + 16;
    v25 = *(v22 + 72);
    v55 = (v22 + 8);
    v56 = &v44 - v21;
    v26 = v24 + v25 * (a3 - 1);
    v51 = -v25;
    v52 = (v22 + 32);
    v27 = a1 - a3;
    v53 = v24;
    v45 = v25;
    v28 = v24 + v25 * a3;
    v57 = v14;
LABEL_5:
    v49 = v26;
    v50 = a3;
    v47 = v28;
    v48 = v27;
    while (1)
    {
      v61 = v27;
      v29 = v58;
      v58(v23, v28, v14);
      v30 = v60;
      v29(v60, v26, v14);
      v31 = v62;
      sub_10000CF1C();
      v32 = v30;
      v33 = sub_10000D0AC();
      v34 = *(v33 - 8);
      v35 = *(v34 + 48);
      result = v35(v31, 1, v33);
      if (result == 1)
      {
        break;
      }

      sub_10000CF1C();
      result = v35(v12, 1, v33);
      if (result == 1)
      {
        goto LABEL_14;
      }

      v36 = v62;
      v37 = sub_10000D07C();
      v38 = *(v34 + 8);
      v38(v12, v33);
      v38(v36, v33);
      v39 = *v55;
      v14 = v57;
      (*v55)(v32, v57);
      v23 = v56;
      result = v39(v56, v14);
      v40 = v61;
      if (v37)
      {
        if (!v53)
        {
          goto LABEL_15;
        }

        v41 = *v52;
        v42 = v54;
        (*v52)(v54, v28, v14);
        swift_arrayInitWithTakeFrontToBack();
        result = (v41)(v26, v42, v14);
        v26 += v51;
        v28 += v51;
        v43 = __CFADD__(v40, 1);
        v27 = v40 + 1;
        if (!v43)
        {
          continue;
        }
      }

      a3 = v50 + 1;
      v26 = v49 + v45;
      v27 = v48 - 1;
      v28 = v47 + v45;
      if (v50 + 1 == v46)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_10000A088(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v164 = a1;
  v8 = sub_100009340(&qword_1000187D8, &qword_10000DE78);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v182 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v189 = &v155 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v155 - v15;
  v17 = __chkstk_darwin(v14);
  v176 = &v155 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v155 - v20;
  __chkstk_darwin(v19);
  v23 = &v155 - v22;
  v186 = sub_10000CF3C();
  v24 = *(v186 - 8);
  v25 = v24[8];
  v26 = __chkstk_darwin(v186);
  v169 = &v155 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v180 = &v155 - v29;
  v30 = __chkstk_darwin(v28);
  v31 = __chkstk_darwin(v30);
  v188 = &v155 - v32;
  v33 = __chkstk_darwin(v31);
  v159 = &v155 - v34;
  v35 = __chkstk_darwin(v33);
  v175 = &v155 - v36;
  v37 = __chkstk_darwin(v35);
  result = __chkstk_darwin(v37);
  v163 = &v155 - v41;
  v42 = a3[1];
  if (v42 >= 1)
  {
    v161 = a4;
    v157 = v40;
    v155 = v39;
    v158 = v23;
    v156 = v21;
    v43 = 0;
    v184 = (v24 + 1);
    v185 = v24 + 2;
    v183 = (v24 + 4);
    v44 = &_swiftEmptyArrayStorage;
    v166 = a3;
    v170 = v16;
    v160 = v24;
    while (1)
    {
      v45 = v43;
      v167 = v44;
      if (v43 + 1 >= v42)
      {
        v72 = v43 + 1;
      }

      else
      {
        v177 = v42;
        v162 = v5;
        v46 = *a3;
        v47 = v24[9];
        v16 = &v46[v47 * (v43 + 1)];
        v48 = v24[2];
        v49 = v186;
        v48(v163, v16, v186);
        v165 = v43;
        v187 = v47;
        v168 = v46;
        v50 = &v46[v47 * v43];
        v51 = v157;
        v179 = v48;
        v48(v157, v50, v49);
        v52 = v158;
        sub_10000CF1C();
        v53 = sub_10000D0AC();
        v54 = *(v53 - 8);
        v55 = *(v54 + 48);
        result = v55(v52, 1, v53);
        if (result == 1)
        {
          goto LABEL_145;
        }

        v56 = v156;
        sub_10000CF1C();
        v178 = v54 + 48;
        v174 = v55;
        result = v55(v56, 1, v53);
        v57 = v159;
        if (result == 1)
        {
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        LODWORD(v181) = sub_10000D07C();
        v58 = *(v54 + 8);
        v58(v56, v53);
        v172 = v58;
        v173 = v54 + 8;
        v58(v52, v53);
        v59 = *v184;
        v60 = v186;
        (*v184)(v51, v186);
        v171 = v59;
        result = (v59)(v163, v60);
        v61 = (v165 + 2);
        v62 = v168 + v187 * (v165 + 2);
        while (v177 != v61)
        {
          v63 = v179;
          v179(v175, v62, v60);
          v63(v57, v16, v60);
          v64 = v174;
          v65 = v176;
          sub_10000CF1C();
          result = v64(v65, 1, v53);
          if (result == 1)
          {
            goto LABEL_140;
          }

          v66 = v170;
          sub_10000CF1C();
          result = v64(v66, 1, v53);
          if (result == 1)
          {
            goto LABEL_139;
          }

          v67 = v57;
          v68 = v176;
          v69 = sub_10000D07C() & 1;
          v70 = v172;
          (v172)(v66, v53);
          v70(v68, v53);
          v60 = v186;
          v71 = v171;
          (v171)(v67, v186);
          result = (v71)(v175, v60);
          ++v61;
          v62 += v187;
          v16 += v187;
          v57 = v67;
          if ((v181 & 1) != v69)
          {
            v72 = (v61 - 1);
            goto LABEL_15;
          }
        }

        v72 = v177;
LABEL_15:
        v5 = v162;
        a3 = v166;
        v24 = v160;
        v44 = v167;
        v45 = v165;
        if (v181)
        {
          if (v72 < v165)
          {
            goto LABEL_132;
          }

          if (v165 < v72)
          {
            v73 = v187 * (v72 - 1);
            v74 = v72 * v187;
            v177 = v72;
            v75 = v165;
            v76 = v165 * v187;
            do
            {
              if (v75 != --v72)
              {
                v77 = *a3;
                if (!v77)
                {
                  goto LABEL_142;
                }

                v16 = &v77[v76];
                v78 = *v183;
                (*v183)(v169, &v77[v76], v60);
                if (v76 < v73 || v16 >= &v77[v74])
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v76 != v73)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = (v78)(&v77[v73], v169, v60);
                a3 = v166;
                v44 = v167;
              }

              ++v75;
              v73 -= v187;
              v74 -= v187;
              v76 += v187;
            }

            while (v75 < v72);
            v5 = v162;
            v24 = v160;
            v79 = v161;
            v45 = v165;
            v72 = v177;
            goto LABEL_29;
          }
        }
      }

      v79 = v161;
LABEL_29:
      v80 = a3[1];
      if (v72 >= v80)
      {
        goto LABEL_38;
      }

      if (__OFSUB__(v72, v45))
      {
        goto LABEL_131;
      }

      if (v72 - v45 >= v79)
      {
        goto LABEL_38;
      }

      if (__OFADD__(v45, v79))
      {
        goto LABEL_133;
      }

      if (v45 + v79 >= v80)
      {
        v16 = a3[1];
      }

      else
      {
        v16 = v45 + v79;
      }

      if (v16 < v45)
      {
LABEL_134:
        __break(1u);
LABEL_135:
        result = sub_10000B7C4(v44);
        v44 = result;
LABEL_105:
        v190 = v44;
        v151 = *(v44 + 2);
        if (v151 >= 2)
        {
          while (*a3)
          {
            v152 = *&v44[16 * v151];
            v153 = *&v44[16 * v151 + 24];
            sub_10000AEF0(*a3 + v24[9] * v152, *a3 + v24[9] * *&v44[16 * v151 + 16], *a3 + v24[9] * v153, v16);
            if (v5)
            {
            }

            if (v153 < v152)
            {
              goto LABEL_128;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_10000B7C4(v44);
            }

            if (v151 - 2 >= *(v44 + 2))
            {
              goto LABEL_129;
            }

            v154 = &v44[16 * v151];
            *v154 = v152;
            *(v154 + 1) = v153;
            v190 = v44;
            result = sub_10000B738(v151 - 1);
            v44 = v190;
            v151 = *(v190 + 2);
            if (v151 <= 1)
            {
            }
          }

          goto LABEL_143;
        }
      }

      if (v72 == v16)
      {
LABEL_38:
        v16 = v72;
        if (v72 < v45)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v162 = v5;
        v127 = *a3;
        v128 = v24[9];
        v181 = v24[2];
        v129 = &v127[v128 * (v72 - 1)];
        v178 = -v128;
        v165 = v45;
        v130 = v45 - v72;
        v177 = v72;
        v179 = v127;
        v168 = v128;
        v131 = &v127[v72 * v128];
        v132 = v186;
        v133 = v155;
        v171 = v16;
        do
        {
          v172 = v131;
          v173 = v130;
          v134 = v131;
          v135 = v130;
          v174 = v129;
          do
          {
            v187 = v135;
            v136 = v181;
            v181(v188, v134, v132);
            v136(v133, v129, v132);
            v137 = v133;
            v138 = v189;
            sub_10000CF1C();
            v139 = sub_10000D0AC();
            v140 = *(v139 - 8);
            v141 = *(v140 + 48);
            result = v141(v138, 1, v139);
            if (result == 1)
            {
              goto LABEL_137;
            }

            v142 = v182;
            sub_10000CF1C();
            result = v141(v142, 1, v139);
            if (result == 1)
            {
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
LABEL_142:
              __break(1u);
LABEL_143:
              __break(1u);
LABEL_144:
              __break(1u);
LABEL_145:
              __break(1u);
              goto LABEL_146;
            }

            v143 = v189;
            v144 = sub_10000D07C();
            v145 = *(v140 + 8);
            v145(v142, v139);
            v145(v143, v139);
            v146 = *v184;
            v132 = v186;
            (*v184)(v137, v186);
            result = (v146)(v188, v132);
            v133 = v137;
            if ((v144 & 1) == 0)
            {
              break;
            }

            v147 = v187;
            if (!v179)
            {
              goto LABEL_138;
            }

            v148 = *v183;
            v149 = v180;
            (*v183)(v180, v134, v132);
            swift_arrayInitWithTakeFrontToBack();
            v148(v129, v149, v132);
            v129 += v178;
            v134 += v178;
            v150 = __CFADD__(v147, 1);
            v135 = v147 + 1;
          }

          while (!v150);
          v129 = &v174[v168];
          v130 = v173 - 1;
          v16 = v171;
          v131 = &v172[v168];
          ++v177;
        }

        while (v177 != v171);
        v5 = v162;
        a3 = v166;
        v24 = v160;
        v44 = v167;
        v45 = v165;
        if (v171 < v165)
        {
          goto LABEL_130;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v171 = v16;
      if ((result & 1) == 0)
      {
        result = sub_100008A14(0, *(v44 + 2) + 1, 1, v44);
        v44 = result;
      }

      v16 = *(v44 + 2);
      v81 = *(v44 + 3);
      v82 = v16 + 1;
      if (v16 >= v81 >> 1)
      {
        result = sub_100008A14((v81 > 1), v16 + 1, 1, v44);
        v44 = result;
      }

      *(v44 + 2) = v82;
      v83 = &v44[16 * v16];
      v84 = v171;
      *(v83 + 4) = v45;
      *(v83 + 5) = v84;
      if (!*v164)
      {
        goto LABEL_144;
      }

      if (v16)
      {
        v85 = *v164;
        while (1)
        {
          v16 = v82 - 1;
          if (v82 >= 4)
          {
            break;
          }

          if (v82 == 3)
          {
            v86 = *(v44 + 4);
            v87 = *(v44 + 5);
            v96 = __OFSUB__(v87, v86);
            v88 = v87 - v86;
            v89 = v96;
LABEL_59:
            if (v89)
            {
              goto LABEL_119;
            }

            v102 = &v44[16 * v82];
            v104 = *v102;
            v103 = *(v102 + 1);
            v105 = __OFSUB__(v103, v104);
            v106 = v103 - v104;
            v107 = v105;
            if (v105)
            {
              goto LABEL_122;
            }

            v108 = &v44[16 * v16 + 32];
            v110 = *v108;
            v109 = *(v108 + 1);
            v96 = __OFSUB__(v109, v110);
            v111 = v109 - v110;
            if (v96)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v106, v111))
            {
              goto LABEL_126;
            }

            if (v106 + v111 >= v88)
            {
              if (v88 < v111)
              {
                v16 = v82 - 2;
              }

              goto LABEL_80;
            }

            goto LABEL_73;
          }

          v112 = &v44[16 * v82];
          v114 = *v112;
          v113 = *(v112 + 1);
          v96 = __OFSUB__(v113, v114);
          v106 = v113 - v114;
          v107 = v96;
LABEL_73:
          if (v107)
          {
            goto LABEL_121;
          }

          v115 = &v44[16 * v16];
          v117 = *(v115 + 4);
          v116 = *(v115 + 5);
          v96 = __OFSUB__(v116, v117);
          v118 = v116 - v117;
          if (v96)
          {
            goto LABEL_124;
          }

          if (v118 < v106)
          {
            goto LABEL_3;
          }

LABEL_80:
          v123 = v16 - 1;
          if (v16 - 1 >= v82)
          {
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
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            goto LABEL_134;
          }

          if (!*a3)
          {
            goto LABEL_141;
          }

          v124 = *&v44[16 * v123 + 32];
          v125 = *&v44[16 * v16 + 40];
          sub_10000AEF0(*a3 + v24[9] * v124, *a3 + v24[9] * *&v44[16 * v16 + 32], *a3 + v24[9] * v125, v85);
          if (v5)
          {
          }

          if (v125 < v124)
          {
            goto LABEL_115;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_10000B7C4(v44);
          }

          if (v123 >= *(v44 + 2))
          {
            goto LABEL_116;
          }

          v126 = &v44[16 * v123];
          *(v126 + 4) = v124;
          *(v126 + 5) = v125;
          v190 = v44;
          result = sub_10000B738(v16);
          v44 = v190;
          v82 = *(v190 + 2);
          if (v82 <= 1)
          {
            goto LABEL_3;
          }
        }

        v90 = &v44[16 * v82 + 32];
        v91 = *(v90 - 64);
        v92 = *(v90 - 56);
        v96 = __OFSUB__(v92, v91);
        v93 = v92 - v91;
        if (v96)
        {
          goto LABEL_117;
        }

        v95 = *(v90 - 48);
        v94 = *(v90 - 40);
        v96 = __OFSUB__(v94, v95);
        v88 = v94 - v95;
        v89 = v96;
        if (v96)
        {
          goto LABEL_118;
        }

        v97 = &v44[16 * v82];
        v99 = *v97;
        v98 = *(v97 + 1);
        v96 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v96)
        {
          goto LABEL_120;
        }

        v96 = __OFADD__(v88, v100);
        v101 = v88 + v100;
        if (v96)
        {
          goto LABEL_123;
        }

        if (v101 >= v93)
        {
          v119 = &v44[16 * v16 + 32];
          v121 = *v119;
          v120 = *(v119 + 1);
          v96 = __OFSUB__(v120, v121);
          v122 = v120 - v121;
          if (v96)
          {
            goto LABEL_127;
          }

          if (v88 < v122)
          {
            v16 = v82 - 2;
          }

          goto LABEL_80;
        }

        goto LABEL_59;
      }

LABEL_3:
      v42 = a3[1];
      v43 = v171;
      if (v171 >= v42)
      {
        goto LABEL_103;
      }
    }
  }

  v44 = &_swiftEmptyArrayStorage;
LABEL_103:
  v16 = *v164;
  if (*v164)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_105;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_10000AEF0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_100009340(&qword_1000187D8, &qword_10000DE78);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v89 = &v79 - v14;
  v15 = __chkstk_darwin(v13);
  v87 = &v79 - v16;
  __chkstk_darwin(v15);
  v91 = &v79 - v17;
  v93 = sub_10000CF3C();
  v18 = *(v93 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v93);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v88 = &v79 - v24;
  v25 = __chkstk_darwin(v23);
  result = __chkstk_darwin(v25);
  v90 = &v79 - v28;
  v30 = *(v29 + 72);
  if (!v30)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (a2 - a1 == 0x8000000000000000 && v30 == -1)
  {
    goto LABEL_66;
  }

  v31 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v30 != -1)
  {
    v32 = (a2 - a1) / v30;
    v96 = a1;
    v95 = a4;
    if (v32 >= v31 / v30)
    {
      v87 = v12;
      v34 = v31 / v30 * v30;
      if (a4 < a2 || a2 + v34 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      if (v34 < 1)
      {
        v60 = a4 + v34;
      }

      else
      {
        v82 = (v18 + 8);
        v83 = (v18 + 16);
        v58 = -v30;
        v59 = (a4 + v34);
        v60 = a4 + v34;
        v92 = a1;
        v80 = -v30;
        v81 = a4;
        do
        {
          v79 = v60;
          v61 = a2;
          a2 += v58;
          v85 = v61;
          v86 = a2;
          while (1)
          {
            if (v61 <= a1)
            {
              v96 = v61;
              v94 = v79;
              goto LABEL_64;
            }

            v62 = a3;
            v84 = v60;
            v63 = *v83;
            v90 = &v59[v58];
            v91 = v59;
            v64 = v93;
            v63(v88);
            (v63)(v22, a2, v64);
            v65 = v89;
            sub_10000CF1C();
            v66 = v22;
            v67 = sub_10000D0AC();
            v68 = *(v67 - 8);
            v69 = *(v68 + 48);
            result = v69(v65, 1, v67);
            if (result == 1)
            {
              goto LABEL_70;
            }

            v70 = v87;
            sub_10000CF1C();
            result = v69(v70, 1, v67);
            if (result == 1)
            {
              goto LABEL_71;
            }

            v71 = &v62[v58];
            v72 = v89;
            v73 = sub_10000D07C();
            v74 = *(v68 + 8);
            v74(v70, v67);
            v74(v72, v67);
            v75 = *v82;
            v76 = v93;
            (*v82)(v66, v93);
            v75(v88, v76);
            a2 = v86;
            v77 = v81;
            v22 = v66;
            if (v73)
            {
              break;
            }

            v78 = v90;
            v60 = v90;
            a1 = v92;
            a3 = v71;
            if (v62 < v91 || v71 >= v91)
            {
              swift_arrayInitWithTakeFrontToBack();
              v58 = v80;
            }

            else
            {
              v58 = v80;
              if (v62 != v91)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v59 = v60;
            v61 = v85;
            if (v78 <= v77)
            {
              a2 = v85;
              goto LABEL_63;
            }
          }

          a1 = v92;
          a3 = v71;
          if (v62 < v85 || v71 >= v85)
          {
            swift_arrayInitWithTakeFrontToBack();
            v60 = v84;
            v58 = v80;
          }

          else
          {
            v60 = v84;
            v58 = v80;
            if (v62 != v85)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = v91;
        }

        while (v91 > v77);
      }

LABEL_63:
      v96 = a2;
      v94 = v60;
    }

    else
    {
      v33 = v32 * v30;
      v86 = v27;
      if (a4 < a1 || a1 + v33 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v89 = (a4 + v33);
      v94 = a4 + v33;
      if (v33 >= 1 && a2 < a3)
      {
        v36 = *(v18 + 16);
        v84 = a3;
        v85 = v36;
        v88 = (v18 + 16);
        v82 = (v18 + 8);
        v83 = v30;
        do
        {
          v92 = a1;
          v37 = a2;
          v38 = v93;
          v39 = v85;
          (v85)(v90, a2, v93);
          v40 = v86;
          (v39)(v86, a4, v38);
          v41 = v91;
          sub_10000CF1C();
          v42 = sub_10000D0AC();
          v43 = *(v42 - 8);
          v44 = *(v43 + 48);
          result = v44(v41, 1, v42);
          if (result == 1)
          {
            goto LABEL_68;
          }

          v45 = v87;
          sub_10000CF1C();
          v46 = v45;
          result = v44(v45, 1, v42);
          if (result == 1)
          {
            goto LABEL_69;
          }

          v47 = v91;
          v48 = sub_10000D07C();
          v49 = v46;
          v50 = v48;
          v51 = *(v43 + 8);
          v51(v49, v42);
          v51(v47, v42);
          v52 = *v82;
          v53 = v93;
          (*v82)(v40, v93);
          v52(v90, v53);
          a2 = v37;
          v54 = v92;
          if (v50)
          {
            v56 = v83;
            v55 = v84;
            if (v92 < a2 || v92 >= v83 + a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v92 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v56;
          }

          else
          {
            v56 = v83;
            v55 = v84;
            v57 = v83 + a4;
            if (v92 < a4 || v92 >= v57)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v92 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v95 = v57;
            a4 += v56;
          }

          a1 = v56 + v54;
          v96 = a1;
        }

        while (a4 < v89 && a2 < v55);
      }
    }

LABEL_64:
    sub_10000B7D8(&v96, &v95, &v94);
    return 1;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_10000B738(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10000B7C4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10000B7D8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10000CF3C();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10000B8D0()
{
  v0 = sub_10000D0EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10000D0AC();
  v32 = *(v34 - 8);
  v4 = *(v32 + 64);
  __chkstk_darwin(v34);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009340(&qword_100018888, &qword_10000DF48);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = [objc_allocWithZone(NSDateFormatter) init];
  v15 = sub_10000D20C();
  [v14 setDateFormat:v15];

  sub_10000D0CC();
  v16 = *(v1 + 48);
  isa = 0;
  if (v16(v13, 1, v0) != 1)
  {
    isa = sub_10000D0DC().super.isa;
    (*(v1 + 8))(v13, v0);
  }

  v35 = v1;
  [v14 setTimeZone:isa];

  sub_10000D09C();
  v18 = sub_10000D06C().super.isa;
  v19 = [v14 stringFromDate:v18];
  v31 = v14;
  v20 = v6;
  v21 = v19;

  v22 = sub_10000D23C();
  v24 = v23;

  sub_10000D0CC();
  result = (v16)(v11, 1, v0);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v26 = v35;
    v27 = v33;
    (*(v35 + 32))(v33, v11, v0);
    if (sub_10000D0BC())
    {
      v28 = 5522512;
    }

    else
    {
      v28 = 5526352;
    }

    v36 = v22;
    v37 = v24;
    v38._countAndFlagsBits = 95;
    v38._object = 0xE100000000000000;
    sub_10000D2AC(v38);
    v39._countAndFlagsBits = v28;
    v39._object = 0xE300000000000000;
    sub_10000D2AC(v39);

    v29 = v36;
    (*(v26 + 8))(v27, v0);
    (*(v32 + 8))(v20, v34);
    return v29;
  }

  return result;
}

void *sub_10000BCA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009340(&qword_100018800, &qword_10000DEA0);
    v3 = sub_10000D47C();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_10000D23C();
      sub_10000D56C();
      v29 = v7;
      sub_10000D28C();
      v9 = sub_10000D57C();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_10000D23C();
        v20 = v19;
        if (v18 == sub_10000D23C() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_10000D50C();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10000BEA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BEE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000CE80;

  return sub_100005940(a1, v5, v4);
}

void sub_10000BF94(uint64_t a1)
{
  v2 = sub_100009340(&qword_100018838, &qword_10000DED0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v13 - v4;
  sub_100009340(&qword_100018840, &qword_10000DED8);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = -1;
  v7 = dispatch_semaphore_create(0);
  v8 = sub_10000D38C();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_10000DEB8;
  v9[5] = a1;
  v9[6] = v6;
  v9[7] = v7;

  v10 = v7;
  sub_100005038(0, 0, v5, &unk_10000DEE8, v9);

  sub_10000D3EC();
  v11 = *(v6 + 24);
  if (v11 == 255)
  {
    __break(1u);
  }

  else
  {
    if (v11)
    {
      v13[1] = *(v6 + 16);
      swift_errorRetain();
      sub_100009340(&qword_100018728, qword_10000DE18);
      swift_willThrowTypedImpl();
    }

    else
    {
      v12 = *(v6 + 16);
    }
  }
}

uint64_t sub_10000C18C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000C1D4()
{
  result = qword_100018828;
  if (!qword_100018828)
  {
    sub_100008288(&qword_100018820, &qword_10000DEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018828);
  }

  return result;
}

uint64_t sub_10000C238(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000C290()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000C33C;

  return sub_100004A34(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_10000C33C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000C430(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009340(&qword_100018838, &qword_10000DED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C4A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100009340(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000C500()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C538(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000CE80;

  return sub_100008824(a1, v5);
}

void sub_10000C5F0(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_10000C608(a1, a2 & 1);
  }
}

void sub_10000C608(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_10000C614()
{
  result = qword_100018848;
  if (!qword_100018848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018848);
  }

  return result;
}

void sub_10000C67C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000C71C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C75C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000C33C;

  return sub_100005CA8(a1, v4, v5, v6);
}

void sub_10000C810(uint64_t a1)
{
  v2 = sub_100009340(&qword_100018838, &qword_10000DED0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v13 - v4;
  sub_100009340(&qword_100018870, &qword_10000DF28);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = -1;
  v7 = dispatch_semaphore_create(0);
  v8 = sub_10000D38C();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_10000DF18;
  v9[5] = a1;
  v9[6] = v6;
  v9[7] = v7;

  v10 = v7;
  sub_100005038(0, 0, v5, &unk_10000DF38, v9);

  sub_10000D3EC();
  v11 = *(v6 + 24);
  if (v11 == 255)
  {
    __break(1u);
  }

  else
  {
    v12 = *(v6 + 16);
    if (v11)
    {
      v13[1] = *(v6 + 16);
      swift_errorRetain();
      sub_100009340(&qword_100018728, qword_10000DE18);
      swift_willThrowTypedImpl();
    }
  }
}

uint64_t sub_10000CA04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000CA54()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000CE80;

  return sub_100004D34(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_10000CB00(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10000CB18(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10000CB18(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10000CB24(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_OWORD *sub_10000CB6C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 sub_10000CC08(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000CC14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10000CC5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}