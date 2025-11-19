uint64_t sub_1B9873C14()
{
  v7 = 0;
  v8 = 0;
  v6[0] = sub_1B9873D18();
  v6[1] = v0;
  v5 = sub_1B9874638(v6, &unk_1F3795310);

  v7 = v5;
  sub_1B9874700();
  v4 = sub_1B9874764();
  MEMORY[0x1E69E5928](v4, v1, v2);
  v8 = v4;
  sub_1B9874794(&v7);
  return v5;
}

id sub_1B9873D18()
{
  v9 = sub_1B987489C;
  v10 = sub_1B9879490;
  v11 = sub_1B987949C;
  v12 = sub_1B9879480;
  v13 = sub_1B9879488;
  v14 = sub_1B987962C;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v21 = 0;
  v15 = sub_1B98F5138();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v0);
  v19 = v6 - v18;
  sub_1B98747D4();
  v20 = sub_1B98744C8();
  MEMORY[0x1E69E5928](v20, v1, v2);
  v25 = v20;
  sub_1B9874838();
  v22 = sub_1B98744F8(1, 0);
  v23 = 0;
  v7 = v22;
  MEMORY[0x1E69E5928](v22, v3, v4);
  v26 = v7;
  v8 = v7;
  v6[28] = v7;
  sub_1B9879638(&v25);
  return v20;
}

id sub_1B98744F8(char a1, char a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_1B9878EB0(a1 & 1, a2 & 1);
  if (v6)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_1B9874638(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s();
  sub_1B98F5D58();
  v5 = sub_1B98F5D48();
  (*(*(a2 - 8) + 8))(a1);
  return v5;
}

unint64_t sub_1B9874700()
{
  v2 = qword_1EBBD5688;
  if (!qword_1EBBD5688)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5688);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *sub_1B9874794(uint64_t *a1)
{
  v1 = *a1;

  MEMORY[0x1E69E5920](a1[1]);
  return a1;
}

unint64_t sub_1B98747D4()
{
  v2 = qword_1EBBD5690;
  if (!qword_1EBBD5690)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5690);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B9874838()
{
  v2 = qword_1EBBD5698;
  if (!qword_1EBBD5698)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5698);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B98748A4(uint64_t a1, uint64_t a2, void *a3)
{
  v142 = &v164;
  v134 = a3;
  v137 = a2;
  v146 = a1;
  v136 = 0;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  v135 = 0;
  v165 = 0;
  v129 = 0;
  v157 = 0;
  v152 = 0;
  v151 = 0;
  v4 = type metadata accessor for BlockedHandle();
  v130 = *(v4 - 8);
  v145 = v4 - 8;
  v131 = v130;
  v132 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](0, v5);
  v133 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1B98F5138();
  v139 = *(v138 - 8);
  v140 = v139;
  v141 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v136, v137);
  v7 = v142;
  v143 = &v52 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v142 + 5) = a1;
  *(v7 + 3) = v8;
  *(v7 + 4) = v9;
  v165 = v10;
  v144 = sub_1B9879680();
  v147 = BlockedHandle.value.getter();
  v148 = v11;
  v149 = *(v146 + *(v145 + 40));
  sub_1B98F54D8();
  v163 = v149;
  if (*(&v149 + 1))
  {
    v164 = v163;
  }

  else
  {
    v128 = TUNetworkCountryCode();
    if (v128)
    {
      v127 = v128;
      v122 = v128;
      v123 = sub_1B98F5658();
      v124 = v12;

      v125 = v123;
      v126 = v124;
    }

    else
    {
      v125 = 0;
      v126 = 0;
    }

    *&v164 = v125;
    *(v142 + 1) = v126;
    if (*(&v163 + 1))
    {
      sub_1B985EE4C(&v163);
    }
  }

  v121 = sub_1B9875970(v147, v148, v164, *(v142 + 1));
  if (!v121)
  {
    v20 = v143;
    v21 = sub_1B98F1E6C();
    (*(v140 + 16))(v20, v21, v138);

    v22 = v134;
    v83 = 32;
    v88 = 32;
    v89 = 7;
    v23 = swift_allocObject();
    v24 = v134;
    v25 = v133;
    v26 = v23;
    v27 = v146;
    v80 = v26;
    *(v26 + 16) = v137;
    *(v26 + 24) = v24;
    sub_1B9833334(v27, v25);
    v75 = (*(v131 + 80) + 16) & ~*(v131 + 80);
    v90 = swift_allocObject();
    sub_1B9832680(v133, v90 + v75);
    v103 = sub_1B98F5118();
    v76 = v103;
    v102 = sub_1B98F5BB8();
    v77 = v102;
    v84 = 17;
    v93 = swift_allocObject();
    v78 = v93;
    *(v93 + 16) = v83;
    v94 = swift_allocObject();
    v79 = v94;
    v86 = 8;
    *(v94 + 16) = 8;
    v28 = swift_allocObject();
    v29 = v80;
    v81 = v28;
    *(v28 + 16) = sub_1B98796E4;
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    v31 = v81;
    v95 = v30;
    v82 = v30;
    *(v30 + 16) = sub_1B9879764;
    *(v30 + 24) = v31;
    v96 = swift_allocObject();
    v85 = v96;
    *(v96 + 16) = v83;
    v97 = swift_allocObject();
    v87 = v97;
    *(v97 + 16) = v86;
    v32 = swift_allocObject();
    v33 = v90;
    v91 = v32;
    *(v32 + 16) = sub_1B98796F0;
    *(v32 + 24) = v33;
    v34 = swift_allocObject();
    v35 = v91;
    v100 = v34;
    v92 = v34;
    *(v34 + 16) = sub_1B987978C;
    *(v34 + 24) = v35;
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v98 = sub_1B98F5F98();
    v99 = v36;

    v37 = v93;
    v38 = v99;
    *v99 = sub_1B9879754;
    v38[1] = v37;

    v39 = v94;
    v40 = v99;
    v99[2] = sub_1B987975C;
    v40[3] = v39;

    v41 = v95;
    v42 = v99;
    v99[4] = sub_1B9879770;
    v42[5] = v41;

    v43 = v96;
    v44 = v99;
    v99[6] = sub_1B987977C;
    v44[7] = v43;

    v45 = v97;
    v46 = v99;
    v99[8] = sub_1B9879784;
    v46[9] = v45;

    v47 = v99;
    v48 = v100;
    v99[10] = sub_1B9879798;
    v47[11] = v48;
    sub_1B9851B38();

    if (os_log_type_enabled(v103, v102))
    {
      v49 = v129;
      v68 = sub_1B98F5C28();
      v65 = v68;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v69 = sub_1B985263C(0);
      v67 = v69;
      v71 = 2;
      v70 = sub_1B985263C(2);
      v162 = v68;
      v161 = v69;
      v160 = v70;
      v72 = &v162;
      sub_1B9852690(v71, &v162);
      sub_1B9852690(v71, v72);
      v158 = sub_1B9879754;
      v159 = v78;
      sub_1B98526A4(&v158, v72, &v161, &v160);
      v73 = v49;
      v74 = v49;
      if (v49)
      {
        v63 = 0;

        __break(1u);
      }

      else
      {
        v158 = sub_1B987975C;
        v159 = v79;
        sub_1B98526A4(&v158, &v162, &v161, &v160);
        v61 = 0;
        v62 = 0;
        v158 = sub_1B9879770;
        v159 = v82;
        sub_1B98526A4(&v158, &v162, &v161, &v160);
        v59 = 0;
        v60 = 0;
        v158 = sub_1B987977C;
        v159 = v85;
        sub_1B98526A4(&v158, &v162, &v161, &v160);
        v57 = 0;
        v58 = 0;
        v158 = sub_1B9879784;
        v159 = v87;
        sub_1B98526A4(&v158, &v162, &v161, &v160);
        v55 = 0;
        v56 = 0;
        v158 = sub_1B9879798;
        v159 = v92;
        sub_1B98526A4(&v158, &v162, &v161, &v160);
        v53 = 0;
        v54 = 0;
        _os_log_impl(&dword_1B982F000, v76, v77, "%s Failed to create TUPhoneNumber from %s. Marking as unidentified", v65, 0x16u);
        sub_1B985281C(v67);
        sub_1B985281C(v70);
        sub_1B98F5C08();

        v64 = v53;
      }
    }

    else
    {
      v50 = v129;

      v64 = v50;
    }

    v52 = v64;

    (*(v140 + 8))(v143, v138);
    v105 = 0;
    v106 = v52;
    return v105 & 1;
  }

  v120 = v121;
  v118 = v121;
  v157 = v121;
  v13 = [v121 unformattedInternationalRepresentation];
  v119 = v13;
  if (v13)
  {
    v117 = v119;
    v112 = v119;
    v113 = sub_1B98F5658();
    v114 = v14;

    v115 = v113;
    v116 = v114;
  }

  else
  {
    v115 = 0;
    v116 = 0;
  }

  v153 = v115;
  v154 = v116;
  if (v116)
  {
    v155 = v153;
    v156 = v154;
  }

  else
  {
    v155 = BlockedHandle.value.getter();
    v156 = v15;
    if (v154)
    {
      sub_1B985EE4C(&v153);
    }
  }

  v16 = v129;
  v110 = v155;
  v108 = v156;
  v107 = v156;
  v151 = v155;
  v152 = v156;

  sub_1B98F54D8();
  v109 = &v52;
  MEMORY[0x1EEE9AC00](&v52, v17);
  *(&v52 - 2) = v110;
  *(&v52 - 1) = v18;
  sub_1B9875AE4(sub_1B98797A4, (&v52 - 4), v19, &unk_1F3795310, MEMORY[0x1E69E6370]);
  v111 = v16;
  if (!v16)
  {

    v104 = v150;
    v165 = v150;

    v105 = v104;
    v106 = v111;
    return v105 & 1;
  }

  __break(1u);
  return result;
}

void *sub_1B98759C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v9[3] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v7 = *a1;
  MEMORY[0x1E69E5928](*a1, a2, a3);
  sub_1B98F54D8();
  v6 = sub_1B98F5648();

  v8 = [v7 firstIdentificationEntryForEnabledExtensionSyncWithPhoneNumber:v6 cacheOnly:1];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  v9[0] = v8;
  result = v9;
  sub_1B987A298(v9);
  *a4 = v8 != 0;
  return result;
}

uint64_t sub_1B9875B48(uint64_t a1, uint64_t a2)
{

  MEMORY[0x1E69E5928](a2, v2, v3);
  v8[0] = a1;
  v8[1] = a2;
  v7 = sub_1B98F1B88(v8, &unk_1F3795390);
  sub_1B987A1FC(v8);
  return v7;
}

uint64_t sub_1B9875BE8(uint64_t a1, uint64_t a2, void *a3)
{
  v236 = a3;
  v238 = a2;
  v237 = a1;
  v231 = 0;
  v263 = 0;
  v262 = 0;
  v261 = 0;
  v260 = 0;
  v259 = 0;
  v230 = 0;
  v257 = 0;
  v232 = *(type metadata accessor for BlockedHandle() - 8);
  v233 = v232;
  v234 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](0, v3);
  v235 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_1B98F5138();
  v240 = *(v239 - 8);
  v241 = v240;
  v242 = *(v240 + 64);
  v5 = MEMORY[0x1EEE9AC00](v237, v238);
  v244 = (v242 + 15) & 0xFFFFFFFFFFFFFFF0;
  v243 = &v91 - v244;
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v245 = &v91 - v244;
  v263 = v7;
  v261 = v8;
  v262 = v9;
  v246 = TUNetworkCountryCode();
  if (v246)
  {
    v229 = v246;
    v224 = v246;
    v225 = sub_1B98F5658();
    v226 = v10;

    v227 = v225;
    v228 = v226;
  }

  else
  {
    v227 = 0;
    v228 = 0;
  }

  v11 = v245;
  v189 = v228;
  v193 = sub_1B9877918(v237, v227, v228, v238, v236);
  v190 = v193;

  v260 = v193;
  v259 = 0;
  v12 = sub_1B98F1E6C();
  v191 = *(v241 + 16);
  v192 = (v241 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v191(v11, v12, v239);

  v13 = v236;
  v202 = 32;
  v207 = 32;
  v208 = 7;
  v14 = swift_allocObject();
  v15 = v236;
  v199 = v14;
  *(v14 + 16) = v238;
  *(v14 + 24) = v15;
  sub_1B98F54D8();
  v194 = swift_allocObject();
  *(v194 + 16) = v193;

  v16 = swift_allocObject();
  v17 = v194;
  v209 = v16;
  *(v16 + 16) = sub_1B98797DC;
  *(v16 + 24) = v17;

  v223 = sub_1B98F5118();
  v195 = v223;
  v222 = sub_1B98F5BD8();
  v196 = v222;
  v203 = 17;
  v213 = swift_allocObject();
  v197 = v213;
  *(v213 + 16) = v202;
  v214 = swift_allocObject();
  v198 = v214;
  v205 = 8;
  *(v214 + 16) = 8;
  v18 = swift_allocObject();
  v19 = v199;
  v200 = v18;
  *(v18 + 16) = sub_1B98797D0;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v200;
  v215 = v20;
  v201 = v20;
  *(v20 + 16) = sub_1B98798E4;
  *(v20 + 24) = v21;
  v216 = swift_allocObject();
  v204 = v216;
  *(v216 + 16) = v202;
  v217 = swift_allocObject();
  v206 = v217;
  *(v217 + 16) = v205;
  v22 = swift_allocObject();
  v23 = v209;
  v210 = v22;
  *(v22 + 16) = sub_1B98797E4;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  v25 = v210;
  v220 = v24;
  v211 = v24;
  *(v24 + 16) = sub_1B987990C;
  *(v24 + 24) = v25;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v212 = v221;
  v218 = sub_1B98F5F98();
  v219 = v26;

  v27 = v213;
  v28 = v219;
  *v219 = sub_1B98798D4;
  v28[1] = v27;

  v29 = v214;
  v30 = v219;
  v219[2] = sub_1B98798DC;
  v30[3] = v29;

  v31 = v215;
  v32 = v219;
  v219[4] = sub_1B98798F0;
  v32[5] = v31;

  v33 = v216;
  v34 = v219;
  v219[6] = sub_1B98798FC;
  v34[7] = v33;

  v35 = v217;
  v36 = v219;
  v219[8] = sub_1B9879904;
  v36[9] = v35;

  v37 = v219;
  v38 = v220;
  v219[10] = sub_1B9879918;
  v37[11] = v38;
  sub_1B9851B38();

  if (os_log_type_enabled(v223, v222))
  {
    v39 = v230;
    v182 = sub_1B98F5C28();
    v179 = v182;
    v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v183 = sub_1B985263C(0);
    v181 = v183;
    v185 = 2;
    v184 = sub_1B985263C(2);
    v251 = v182;
    v250 = v183;
    v249 = v184;
    v186 = &v251;
    sub_1B9852690(v185, &v251);
    sub_1B9852690(v185, v186);
    v247 = sub_1B98798D4;
    v248 = v197;
    sub_1B98526A4(&v247, v186, &v250, &v249);
    v187 = v39;
    v188 = v39;
    if (v39)
    {
      v177 = 0;

      __break(1u);
    }

    else
    {
      v247 = sub_1B98798DC;
      v248 = v198;
      sub_1B98526A4(&v247, &v251, &v250, &v249);
      v175 = 0;
      v176 = 0;
      v247 = sub_1B98798F0;
      v248 = v201;
      sub_1B98526A4(&v247, &v251, &v250, &v249);
      v173 = 0;
      v174 = 0;
      v247 = sub_1B98798FC;
      v248 = v204;
      sub_1B98526A4(&v247, &v251, &v250, &v249);
      v171 = 0;
      v172 = 0;
      v247 = sub_1B9879904;
      v248 = v206;
      sub_1B98526A4(&v247, &v251, &v250, &v249);
      v169 = 0;
      v170 = 0;
      v247 = sub_1B9879918;
      v248 = v211;
      sub_1B98526A4(&v247, &v251, &v250, &v249);
      v167 = 0;
      v168 = 0;
      _os_log_impl(&dword_1B982F000, v195, v196, "%s Phone number variants %s", v179, 0x16u);
      sub_1B985281C(v181);
      sub_1B985281C(v184);
      sub_1B98F5C08();

      v178 = v167;
    }
  }

  else
  {
    v40 = v230;

    v178 = v40;
  }

  v41 = v178;

  v162 = *(v241 + 8);
  v163 = (v241 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v162(v245, v239);

  sub_1B98F54D8();
  v164 = &v91;
  MEMORY[0x1EEE9AC00](&v91, v42);
  *(&v91 - 2) = v43;
  sub_1B9875AE4(sub_1B9879924, (&v91 - 4), v44, &unk_1F3795310, MEMORY[0x1E69E6370]);
  v165 = v41;
  v166 = v41;
  if (v41)
  {
    v46 = v243;
    v122 = v166;
    v120 = 0;

    v47 = v122;
    v257 = v122;
    v48 = sub_1B98F1E6C();
    v191(v46, v48, v239);

    v49 = v236;
    v130 = 32;
    v141 = 32;
    v142 = 7;
    v50 = swift_allocObject();
    v51 = v236;
    v52 = v235;
    v53 = v50;
    v54 = v237;
    v127 = v53;
    *(v53 + 16) = v238;
    *(v53 + 24) = v51;
    sub_1B9833334(v54, v52);
    v121 = (*(v233 + 80) + 16) & ~*(v233 + 80);
    v133 = swift_allocObject();
    sub_1B9832680(v235, v133 + v121);
    v55 = v122;
    v140 = swift_allocObject();
    *(v140 + 16) = v122;
    sub_1B98745B0();

    v158 = sub_1B98F5118();
    v123 = v158;
    v157 = sub_1B98F5BB8();
    v124 = v157;
    v136 = 17;
    v146 = swift_allocObject();
    v125 = v146;
    *(v146 + 16) = v130;
    v147 = swift_allocObject();
    v126 = v147;
    v138 = 8;
    *(v147 + 16) = 8;
    v56 = swift_allocObject();
    v57 = v127;
    v128 = v56;
    *(v56 + 16) = sub_1B987994C;
    *(v56 + 24) = v57;
    v58 = swift_allocObject();
    v59 = v128;
    v148 = v58;
    v129 = v58;
    *(v58 + 16) = sub_1B98799D4;
    *(v58 + 24) = v59;
    v149 = swift_allocObject();
    v131 = v149;
    *(v149 + 16) = v130;
    v150 = swift_allocObject();
    v132 = v150;
    *(v150 + 16) = v138;
    v60 = swift_allocObject();
    v61 = v133;
    v134 = v60;
    *(v60 + 16) = sub_1B9879958;
    *(v60 + 24) = v61;
    v62 = swift_allocObject();
    v63 = v134;
    v151 = v62;
    v135 = v62;
    *(v62 + 16) = sub_1B98799FC;
    *(v62 + 24) = v63;
    v152 = swift_allocObject();
    v137 = v152;
    *(v152 + 16) = 64;
    v153 = swift_allocObject();
    v139 = v153;
    *(v153 + 16) = v138;
    v64 = swift_allocObject();
    v65 = v140;
    v143 = v64;
    *(v64 + 16) = sub_1B98799BC;
    *(v64 + 24) = v65;
    v66 = swift_allocObject();
    v67 = v143;
    v144 = v66;
    *(v66 + 16) = sub_1B9879A24;
    *(v66 + 24) = v67;
    v68 = swift_allocObject();
    v69 = v144;
    v156 = v68;
    v145 = v68;
    *(v68 + 16) = sub_1B9879A30;
    *(v68 + 24) = v69;
    v154 = sub_1B98F5F98();
    v155 = v70;

    v71 = v146;
    v72 = v155;
    *v155 = sub_1B98799C4;
    v72[1] = v71;

    v73 = v147;
    v74 = v155;
    v155[2] = sub_1B98799CC;
    v74[3] = v73;

    v75 = v148;
    v76 = v155;
    v155[4] = sub_1B98799E0;
    v76[5] = v75;

    v77 = v149;
    v78 = v155;
    v155[6] = sub_1B98799EC;
    v78[7] = v77;

    v79 = v150;
    v80 = v155;
    v155[8] = sub_1B98799F4;
    v80[9] = v79;

    v81 = v151;
    v82 = v155;
    v155[10] = sub_1B9879A08;
    v82[11] = v81;

    v83 = v152;
    v84 = v155;
    v155[12] = sub_1B9879A14;
    v84[13] = v83;

    v85 = v153;
    v86 = v155;
    v155[14] = sub_1B9879A1C;
    v86[15] = v85;

    v87 = v155;
    v88 = v156;
    v155[16] = sub_1B9879A3C;
    v87[17] = v88;
    sub_1B9851B38();

    if (os_log_type_enabled(v158, v157))
    {
      v89 = v120;
      v113 = sub_1B98F5C28();
      v110 = v113;
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v114 = sub_1B985263C(1);
      v112 = v114;
      v115 = 2;
      v116 = sub_1B985263C(2);
      v256 = v113;
      v255 = v114;
      v254 = v116;
      v117 = &v256;
      sub_1B9852690(v115, &v256);
      sub_1B9852690(3, v117);
      v252 = sub_1B98799C4;
      v253 = v125;
      sub_1B98526A4(&v252, v117, &v255, &v254);
      v118 = v89;
      v119 = v89;
      if (v89)
      {
        v108 = 0;

        __break(1u);
      }

      else
      {
        v252 = sub_1B98799CC;
        v253 = v126;
        sub_1B98526A4(&v252, &v256, &v255, &v254);
        v106 = 0;
        v107 = 0;
        v252 = sub_1B98799E0;
        v253 = v129;
        sub_1B98526A4(&v252, &v256, &v255, &v254);
        v104 = 0;
        v105 = 0;
        v252 = sub_1B98799EC;
        v253 = v131;
        sub_1B98526A4(&v252, &v256, &v255, &v254);
        v102 = 0;
        v103 = 0;
        v252 = sub_1B98799F4;
        v253 = v132;
        sub_1B98526A4(&v252, &v256, &v255, &v254);
        v100 = 0;
        v101 = 0;
        v252 = sub_1B9879A08;
        v253 = v135;
        sub_1B98526A4(&v252, &v256, &v255, &v254);
        v98 = 0;
        v99 = 0;
        v252 = sub_1B9879A14;
        v253 = v137;
        sub_1B98526A4(&v252, &v256, &v255, &v254);
        v96 = 0;
        v97 = 0;
        v252 = sub_1B9879A1C;
        v253 = v139;
        sub_1B98526A4(&v252, &v256, &v255, &v254);
        v94 = 0;
        v95 = 0;
        v252 = sub_1B9879A3C;
        v253 = v145;
        sub_1B98526A4(&v252, &v256, &v255, &v254);
        v92 = 0;
        v93 = 0;
        _os_log_impl(&dword_1B982F000, v123, v124, "%s Error checking if call directory database contains blocking entry for source address %s: %@", v110, 0x20u);
        sub_1B985281C(v112);
        sub_1B985281C(v116);
        sub_1B98F5C08();

        v109 = v92;
      }
    }

    else
    {
      v90 = v120;

      v109 = v90;
    }

    v91 = v109;

    v162(v243, v239);
    v160 = 0;
    v161 = v91;
  }

  else
  {

    v259 = v258;
    v160 = v258;
    v161 = v165;
  }

  v159 = v160;

  return v159 & 1;
}

uint64_t sub_1B9877918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v173 = a1;
  v201 = a2;
  v202 = a3;
  v190 = a4;
  v191 = a5;
  v174 = sub_1B9879A48;
  v175 = sub_1B9879AC8;
  v176 = sub_1B9879A54;
  v177 = sub_1B9879AF0;
  v178 = sub_1B9879AB8;
  v179 = sub_1B9879AC0;
  v180 = sub_1B9879AD4;
  v181 = sub_1B9879AE0;
  v182 = sub_1B9879AE8;
  v183 = sub_1B9879AFC;
  v233 = 0;
  v231 = 0;
  v232 = 0;
  v229 = 0;
  v230 = 0;
  v184 = 0;
  v223 = 0;
  v222 = 0;
  v218 = 0;
  v219 = 0;
  v216 = 0;
  v217 = 0;
  v215 = 0;
  v212 = 0;
  v213 = 0;
  v210 = 0;
  v211 = 0;
  v207 = 0;
  v208 = 0;
  v205 = 0;
  v206 = 0;
  v192 = 0;
  v185 = *(type metadata accessor for BlockedHandle() - 8);
  v186 = v185;
  v187 = *(v185 + 64);
  v188 = (v187 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v6);
  v189 = v61 - v188;
  v193 = sub_1B98F5138();
  v194 = *(v193 - 8);
  v195 = v193 - 8;
  v196 = (*(v194 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v192, v201);
  v197 = v61 - v196;
  v233 = a1;
  v231 = v7;
  v232 = v8;
  v229 = v9;
  v230 = v10;
  v198 = sub_1B9879680();
  v199 = BlockedHandle.value.getter();
  v200 = v11;
  sub_1B98F54D8();
  v203 = sub_1B9875970(v199, v200, v201, v202);
  if (v203)
  {
    v172 = v203;
    v170 = v203;
    v223 = v203;
    v222 = sub_1B98F5F98();
    v171 = [v170 digits];
    if (v171)
    {
      v169 = v171;
      v164 = v171;
      v165 = sub_1B98F5658();
      v166 = v14;
      MEMORY[0x1E69E5920](v164);
      v167 = v165;
      v168 = v166;
    }

    else
    {
      v167 = 0;
      v168 = 0;
    }

    v162 = v168;
    v163 = v167;
    if (v168)
    {
      v160 = v163;
      v161 = v162;
      v157 = v162;
      v156 = v163;
      v207 = v163;
      v208 = v162;
      MEMORY[0x1E69E5928](v191, v12, v13);
      sub_1B98F54D8();
      v158 = sub_1B98F5648();

      v159 = [v191 canonicalizedPhoneNumber_];
      MEMORY[0x1E69E5920](v158);
      MEMORY[0x1E69E5920](v191);
      if (v159)
      {
        v155 = v159;
        v150 = v159;
        v151 = sub_1B98F5658();
        v152 = v15;
        MEMORY[0x1E69E5920](v150);
        v153 = v151;
        v154 = v152;
      }

      else
      {
        v153 = 0;
        v154 = 0;
      }

      v148 = v154;
      v149 = v153;
      if (v154)
      {
        v146 = v149;
        v147 = v148;
        v145 = v148;
        v143 = v149;
        v205 = v149;
        v206 = v148;
        sub_1B98F54D8();
        v220 = v143;
        v221 = v145;
        sub_1B98F54D8();
        v144 = v204;
        v204[0] = v143;
        v204[1] = v145;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
        sub_1B98F5908();

        goto LABEL_15;
      }
    }

    v220 = 0;
    v221 = 0;
LABEL_15:
    v142 = [v170 unformattedInternationalRepresentation];
    if (v142)
    {
      v141 = v142;
      v136 = v142;
      v137 = sub_1B98F5658();
      v138 = v18;
      MEMORY[0x1E69E5920](v136);
      v139 = v137;
      v140 = v138;
    }

    else
    {
      v139 = 0;
      v140 = 0;
    }

    v134 = v140;
    v135 = v139;
    if (v140)
    {
      v132 = v135;
      v133 = v134;
      v129 = v134;
      v128 = v135;
      v212 = v135;
      v213 = v134;
      MEMORY[0x1E69E5928](v191, v16, v17);
      sub_1B98F54D8();
      v130 = sub_1B98F5648();

      v131 = [v191 canonicalizedPhoneNumber_];
      MEMORY[0x1E69E5920](v130);
      MEMORY[0x1E69E5920](v191);
      if (v131)
      {
        v127 = v131;
        v122 = v131;
        v123 = sub_1B98F5658();
        v124 = v19;
        MEMORY[0x1E69E5920](v122);
        v125 = v123;
        v126 = v124;
      }

      else
      {
        v125 = 0;
        v126 = 0;
      }

      v120 = v126;
      v121 = v125;
      if (v126)
      {
        v118 = v121;
        v119 = v120;
        v117 = v120;
        v115 = v121;
        v210 = v121;
        v211 = v120;
        sub_1B98F54D8();
        v116 = v209;
        v209[0] = v115;
        v209[1] = v117;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
        sub_1B98F5908();

LABEL_36:
        v91 = &v222;
        v92 = v222;
        sub_1B98F54D8();
        sub_1B985EE4C(&v220);
        sub_1B9879B08(v91);
        MEMORY[0x1E69E5920](v170);
        return v92;
      }
    }

    v113 = v220;
    v114 = v221;
    sub_1B98F54D8();
    if (v114)
    {
      v111 = v113;
      v112 = v114;
      v109 = v114;
      v110 = v113;
      v218 = v113;
      v219 = v114;
      sub_1B98F54D8();
      if (v202)
      {
        v107 = v201;
        v108 = v202;
        v103 = v202;
        v102 = v201;
        v216 = v201;
        v217 = v202;
        v104 = objc_opt_self();
        sub_1B98F54D8();
        v105 = sub_1B98F5648();

        v106 = [v104 ITUCountryCodeForISOCountryCode_];
        MEMORY[0x1E69E5920](v105);
        v215 = v106;
        if (v106 != sub_1B98F4ED8())
        {
          v97 = sub_1B98F55E8();
          v98 = v20;
          v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD56B0, &qword_1B98FAD48);
          v21 = sub_1B98F5F98();
          v22 = v106;
          v96 = v21;
          v94 = v23;
          v23[3] = MEMORY[0x1E69E6530];
          v23[4] = MEMORY[0x1E69E65A8];
          *v23 = v22;
          sub_1B98F54D8();
          v94[8] = MEMORY[0x1E69E6158];
          v24 = sub_1B9879B34();
          v25 = v110;
          v26 = v94;
          v27 = v109;
          v94[9] = v24;
          v26[5] = v25;
          v26[6] = v27;
          sub_1B9851B38();
          v99 = sub_1B98F5668();
          v100 = v28;

          v101 = v214;
          v214[0] = v99;
          v214[1] = v100;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
          sub_1B98F5908();
        }
      }

      else
      {
      }
    }

    goto LABEL_36;
  }

  v29 = v197;
  v30 = sub_1B98F1E6C();
  (*(v194 + 16))(v29, v30, v193);

  MEMORY[0x1E69E5928](v191, v31, v32);
  v76 = 32;
  v77 = 7;
  v33 = swift_allocObject();
  v34 = v191;
  v35 = v189;
  v36 = v33;
  v37 = v173;
  v71 = v36;
  *(v36 + 16) = v190;
  *(v36 + 24) = v34;
  sub_1B9833334(v37, v35);
  v70 = (*(v186 + 80) + 16) & ~*(v186 + 80);
  v78 = swift_allocObject();
  sub_1B9832680(v189, v78 + v70);
  v89 = sub_1B98F5118();
  v90 = sub_1B98F5BB8();
  v74 = 17;
  v80 = swift_allocObject();
  v73 = 32;
  *(v80 + 16) = 32;
  v81 = swift_allocObject();
  v75 = 8;
  *(v81 + 16) = 8;
  v38 = swift_allocObject();
  v39 = v71;
  v72 = v38;
  *(v38 + 16) = v174;
  *(v38 + 24) = v39;
  v40 = swift_allocObject();
  v41 = v72;
  v82 = v40;
  *(v40 + 16) = v175;
  *(v40 + 24) = v41;
  v83 = swift_allocObject();
  *(v83 + 16) = v73;
  v84 = swift_allocObject();
  *(v84 + 16) = v75;
  v42 = swift_allocObject();
  v43 = v78;
  v79 = v42;
  *(v42 + 16) = v176;
  *(v42 + 24) = v43;
  v44 = swift_allocObject();
  v45 = v79;
  v86 = v44;
  *(v44 + 16) = v177;
  *(v44 + 24) = v45;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v85 = sub_1B98F5F98();
  v87 = v46;

  v47 = v80;
  v48 = v87;
  *v87 = v178;
  v48[1] = v47;

  v49 = v81;
  v50 = v87;
  v87[2] = v179;
  v50[3] = v49;

  v51 = v82;
  v52 = v87;
  v87[4] = v180;
  v52[5] = v51;

  v53 = v83;
  v54 = v87;
  v87[6] = v181;
  v54[7] = v53;

  v55 = v84;
  v56 = v87;
  v87[8] = v182;
  v56[9] = v55;

  v57 = v86;
  v58 = v87;
  v87[10] = v183;
  v58[11] = v57;
  sub_1B9851B38();

  if (os_log_type_enabled(v89, v90))
  {
    v59 = v184;
    v62 = sub_1B98F5C28();
    v61[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v63 = sub_1B985263C(0);
    v64 = sub_1B985263C(2);
    v66 = &v228;
    v228 = v62;
    v67 = &v227;
    v227 = v63;
    v68 = &v226;
    v226 = v64;
    v65 = 2;
    sub_1B9852690(2, &v228);
    sub_1B9852690(v65, v66);
    v224 = v178;
    v225 = v80;
    sub_1B98526A4(&v224, v66, v67, v68);
    v69 = v59;
    if (v59)
    {

      __break(1u);
    }

    else
    {
      v224 = v179;
      v225 = v81;
      sub_1B98526A4(&v224, &v228, &v227, &v226);
      v61[4] = 0;
      v224 = v180;
      v225 = v82;
      sub_1B98526A4(&v224, &v228, &v227, &v226);
      v61[3] = 0;
      v224 = v181;
      v225 = v83;
      sub_1B98526A4(&v224, &v228, &v227, &v226);
      v61[2] = 0;
      v224 = v182;
      v225 = v84;
      sub_1B98526A4(&v224, &v228, &v227, &v226);
      v61[1] = 0;
      v224 = v183;
      v225 = v86;
      sub_1B98526A4(&v224, &v228, &v227, &v226);
      _os_log_impl(&dword_1B982F000, v89, v90, "%s Failed to create TUPhoneNumber from %s", v62, 0x16u);
      sub_1B985281C(v63);
      sub_1B985281C(v64);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v89);
  (*(v194 + 8))(v197, v193);
  return sub_1B98F5F98();
}

uint64_t sub_1B9878A30(uint64_t a1, uint64_t a2)
{

  MEMORY[0x1E69E5928](a2, v2, v3);
  v8[0] = a1;
  v8[1] = a2;
  v7 = sub_1B98F1B88(v8, &unk_1F3795390);
  sub_1B987A1FC(v8);
  return v7;
}

uint64_t sub_1B9878AAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B9878AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v17 = a1;
  v16 = a2;
  v13 = *(a1 + 8);
  result = MEMORY[0x1E69E5928](v13, a2, a3);
  if (!v13)
  {
    goto LABEL_9;
  }

  v15 = v13;
  v18 = 0;
  sub_1B98F54D8();
  v11 = sub_1B98F58A8();

  v14 = 0;
  v9 = [v13 containsBlockingEntryForEnabledExtensionWithPhoneNumberInArray:v11 error:&v14];
  v10 = v14;
  MEMORY[0x1E69E5928](v14, v5, v6);
  v7 = v18;
  v18 = v10;
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v11);
  if (v18)
  {
    swift_willThrow();
    result = MEMORY[0x1E69E5920](v13);
    *MEMORY[0x1E69E9840];
    return result;
  }

  if ((v9 & 1) == 0)
  {
    result = MEMORY[0x1E69E5920](v13);
LABEL_9:
    *a4 = 0;
    goto LABEL_10;
  }

  *a4 = 1;
  result = MEMORY[0x1E69E5920](v13);
LABEL_10:
  v8 = __OFSUB__(*MEMORY[0x1E69E9840], v19);
  return result;
}

uint64_t sub_1B9878CDC(uint64_t a1, uint64_t a2)
{

  MEMORY[0x1E69E5928](a2, v2, v3);
  v8[0] = a1;
  v8[1] = a2;
  v7 = sub_1B98F1B88(v8, &unk_1F3795390);
  sub_1B987A1FC(v8);
  return v7;
}

uint64_t sub_1B9878DEC(uint64_t a1, uint64_t a2)
{

  MEMORY[0x1E69E5928](a2, v2, v3);
  v8[0] = a1;
  v8[1] = a2;
  v7 = sub_1B98F1B88(v8, &unk_1F3795390);
  sub_1B987A1FC(v8);
  return v7;
}

id sub_1B9878EB0(char a1, char a2)
{
  v12 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD56C0, qword_1B98FAE10);
  sub_1B987A2CC();
  sub_1B98F5FB8();
  v10 = [v7 initReadOnly:a1 & 1 temporary:a2 & 1 error:v11];
  MEMORY[0x1E69E5928](0, v2, v3);
  MEMORY[0x1E69E5920](0);
  if (v10)
  {
    *MEMORY[0x1E69E9840];
    return v10;
  }

  else
  {
    sub_1B98F4F38();
    MEMORY[0x1E69E5920](0);
    swift_willThrow();
    v5 = __OFSUB__(*MEMORY[0x1E69E9840], v12);
    return v6;
  }
}

id sub_1B987905C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v9 = sub_1B98F5648();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a4)
  {
    v8 = sub_1B98F5648();

    v4 = [v12 initWithDigits:v10 countryCode:v8];
  }

  else
  {
    v4 = [v12 initWithDigits:v10 countryCode:0];
  }

  v7 = v4;
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v10);
  return v7;
}

uint64_t sub_1B9879188@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a1 + ((*(*a1 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)) = 0;
  return (*(*(*(v3 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2);
}

uint64_t sub_1B9879264(void (*a1)(void))
{
  a1();
  v4 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x1E69E5928](v4, v1, v2);
  swift_unknownObjectRelease();
  return v4;
}

void sub_1B98792DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[1] = a5;
  sub_1B987A250(a3 + *(*a3 + *MEMORY[0x1E69E6B68] + 16), (a3 + ((*(*a3 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)), v5);
}

void sub_1B98793C4(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v10)
  {
    *a7 = v10;
  }
}

uint64_t sub_1B98794A8(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a4();
  v12 = *a1;
  MEMORY[0x1E69E5928](v13, v4, v5);
  sub_1B98F5C48();
  if (v13)
  {
    MEMORY[0x1E69E5920](v13);
  }

  *a1 = v12 + 8;
  v9 = *a2;
  if (*a2)
  {
    MEMORY[0x1E69E5928](v13, v6, v7);
    *v9 = v13;
    result = MEMORY[0x1E69E5920](v13);
    *a2 = v9 + 1;
  }

  else
  {
    result = MEMORY[0x1E69E5920](v13);
  }

  *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B9879638(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  MEMORY[0x1E69E5920](a1[1]);
  return a1;
}

unint64_t sub_1B9879680()
{
  v2 = qword_1EBBD56A0;
  if (!qword_1EBBD56A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD56A0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B98796F0()
{
  v1 = *(type metadata accessor for BlockedHandle() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B9875BC4();
}

uint64_t sub_1B98797E4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
  v1 = sub_1B987984C();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B987984C()
{
  v2 = qword_1EBBD56A8;
  if (!qword_1EBBD56A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5268, &qword_1B98FAC20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD56A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9879958()
{
  v1 = *(type metadata accessor for BlockedHandle() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B9878D58();
}

uint64_t sub_1B9879A54()
{
  v1 = *(type metadata accessor for BlockedHandle() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B9878E68();
}

uint64_t *sub_1B9879B08(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B9879B34()
{
  v2 = qword_1EBBD56B8;
  if (!qword_1EBBD56B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD56B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9879BAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B9879CF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B9879ED4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B987A018(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t *sub_1B987A1FC(uint64_t *a1)
{
  if (*a1)
  {
    v1 = *a1;

    MEMORY[0x1E69E5920](a1[1]);
  }

  return a1;
}

unint64_t sub_1B987A2CC()
{
  v2 = qword_1EBBD56C8;
  if (!qword_1EBBD56C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD56C0, qword_1B98FAE10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD56C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B987A3F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_1B987A4AC(uint64_t *a1)
{
  v6 = 0;
  v7 = a1;
  sub_1B987A3F4(a1, v5);
  sub_1B987A508(v5, (v1 + 16));
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_1B987A544(uint64_t a1)
{
  v10 = 0;
  v11 = a1;
  sub_1B987A3F4(v1 + 16, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v6 = (*(v4 + 8))(a1, v3);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v6;
}

id sub_1B987A6B8()
{
  v13 = 0;
  v14 = 0;
  sub_1B987DA78();
  v12 = sub_1B987A9F8();
  MEMORY[0x1E69E5928](v12, v0, v1);
  v13 = v12;
  v11 = sub_1B98F5F98();
  v10 = v2;
  *v2 = sub_1B98F55E8();
  v10[1] = v3;
  v10[2] = sub_1B98F55E8();
  v10[3] = v4;
  v10[4] = sub_1B98F55E8();
  v10[5] = v5;
  v10[6] = sub_1B98F55E8();
  v10[7] = v6;
  v10[8] = sub_1B98F55E8();
  v10[9] = v7;
  v10[10] = sub_1B98F55E8();
  v10[11] = v8;
  sub_1B9851B38();
  sub_1B98F54D8();
  v14 = v11;
  sub_1B987DADC(&v13);
  return v12;
}

uint64_t sub_1B987A860(uint64_t a1)
{
  v6 = a1;
  v8 = v1;
  v15 = 0;
  v14 = 0;
  v12 = sub_1B98F5018();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12, v2);
  v11 = &v4 - v7;
  v15 = v6;
  v14 = v1;
  BlockedHandle.type.getter(&v4 - v7);
  v13 = (*(v9 + 88))(v11, v12);
  if (v13 == *MEMORY[0x1E696EDA0])
  {
    return 1;
  }

  if (v13 == *MEMORY[0x1E696ED80])
  {
    return 2;
  }

  if (v13 == *MEMORY[0x1E696ED90])
  {
    return 3;
  }

  (*(v9 + 8))(v11, v12);
  return 0;
}

uint64_t sub_1B987AA84(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = a1;
  v22 = a2;
  v23 = a3;
  v39 = 0;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v31 = __b;
  v33 = 40;
  memset(__b, 0, sizeof(__b));
  v24 = 0;
  v29 = type metadata accessor for BlockedHandle();
  v14 = *(v29 - 8);
  v15 = v29 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29, v3);
  v17 = &v11 - v16;
  v18 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v16, v5);
  v19 = &v11 - v18;
  v20 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v18, v7);
  v21 = &v11 - v20;
  v39 = &v11 - v20;
  v25 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24, v29);
  v26 = &v11 - v25;
  v38 = v28;
  v36 = v8;
  v37 = v9;
  v27 = sub_1B98F5F98();
  v30 = sub_1B9853574();
  v35 = sub_1B98F5A38();
  sub_1B98F54D8();
  v32 = &v40;
  sub_1B98F5A58();
  memcpy(v31, v32, v33);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
    sub_1B98F5AB8();
    if ((*(v14 + 48))(v26, 1, v29) == 1)
    {
      break;
    }

    sub_1B9832680(v26, v21);
    if (sub_1B987ADCC(v21, v22, v23))
    {
      sub_1B9833334(v21, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
      sub_1B98F5A88();
      sub_1B983A3AC(v19);
    }

    sub_1B983A3AC(v21);
  }

  sub_1B9871430(__b);
  v12 = &v35;
  v13 = v35;
  sub_1B98F54D8();
  sub_1B9868D78(v12);
  return v13;
}

uint64_t sub_1B987ADCC(uint64_t a1, void *a2, uint64_t a3)
{
  v103 = a1;
  v102 = a2;
  v101 = a3;
  v90 = sub_1B987CE24;
  v91 = sub_1B987D1EC;
  v92 = sub_1B987CE9C;
  v93 = sub_1B987D214;
  v94 = sub_1B987D1DC;
  v95 = sub_1B987D1E4;
  v96 = sub_1B987D1F8;
  v97 = sub_1B987D204;
  v98 = sub_1B987D20C;
  v99 = sub_1B987D220;
  v123 = 0;
  v121 = 0;
  v122 = 0;
  v120 = 0;
  v119 = 0;
  v100 = 0;
  v104 = sub_1B98F5138();
  v105 = *(v104 - 8);
  v106 = v104 - 8;
  v107 = (*(v105 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v108 = v44 - v107;
  v123 = MEMORY[0x1EEE9AC00](v103, v102);
  v121 = v3;
  v122 = v4;
  v110 = sub_1B987BB10(v123, v3, v4);
  v120 = v110;
  v109 = [v110 value];
  v111 = sub_1B98F5658();
  v112 = v5;
  v113 = [v110 normalizedValue];
  if (v113)
  {
    v89 = v113;
    v84 = v113;
    v85 = sub_1B98F5658();
    v86 = v6;
    MEMORY[0x1E69E5920](v84);
    v87 = v85;
    v88 = v86;
  }

  else
  {
    v87 = 0;
    v88 = 0;
  }

  v7 = v108;
  v62 = v88;
  v63 = sub_1B987C82C(v111, v112, v87, v88, v102, v101);

  MEMORY[0x1E69E5920](v109);
  v119 = v63;
  v8 = sub_1B98F1E6C();
  (*(v105 + 16))(v7, v8, v104);
  MEMORY[0x1E69E5928](v102, v9, v10);
  sub_1B98F54D8();
  v69 = 32;
  v70 = 7;
  v11 = swift_allocObject();
  v12 = v101;
  v13 = v11;
  v14 = v63;
  v64 = v13;
  *(v13 + 16) = v102;
  *(v13 + 24) = v12;
  MEMORY[0x1E69E5928](v14, v15, v16);
  v71 = swift_allocObject();
  *(v71 + 16) = v63;
  v82 = sub_1B98F5118();
  v83 = sub_1B98F5BD8();
  v67 = 17;
  v73 = swift_allocObject();
  v66 = 32;
  *(v73 + 16) = 32;
  v74 = swift_allocObject();
  v68 = 8;
  *(v74 + 16) = 8;
  v17 = swift_allocObject();
  v18 = v64;
  v65 = v17;
  *(v17 + 16) = v90;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v65;
  v75 = v19;
  *(v19 + 16) = v91;
  *(v19 + 24) = v20;
  v76 = swift_allocObject();
  *(v76 + 16) = v66;
  v77 = swift_allocObject();
  *(v77 + 16) = v68;
  v21 = swift_allocObject();
  v22 = v71;
  v72 = v21;
  *(v21 + 16) = v92;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v72;
  v79 = v23;
  *(v23 + 16) = v93;
  *(v23 + 24) = v24;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v78 = sub_1B98F5F98();
  v80 = v25;

  v26 = v73;
  v27 = v80;
  *v80 = v94;
  v27[1] = v26;

  v28 = v74;
  v29 = v80;
  v80[2] = v95;
  v29[3] = v28;

  v30 = v75;
  v31 = v80;
  v80[4] = v96;
  v31[5] = v30;

  v32 = v76;
  v33 = v80;
  v80[6] = v97;
  v33[7] = v32;

  v34 = v77;
  v35 = v80;
  v80[8] = v98;
  v35[9] = v34;

  v36 = v79;
  v37 = v80;
  v80[10] = v99;
  v37[11] = v36;
  sub_1B9851B38();

  if (os_log_type_enabled(v82, v83))
  {
    v38 = v100;
    v54 = sub_1B98F5C28();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v55 = sub_1B985263C(0);
    v56 = sub_1B985263C(2);
    v58 = v118;
    v118[0] = v54;
    v59 = &v117;
    v117 = v55;
    v60 = &v116;
    v116 = v56;
    v57 = 2;
    sub_1B9852690(2, v118);
    sub_1B9852690(v57, v58);
    v114 = v94;
    v115 = v73;
    sub_1B98526A4(&v114, v58, v59, v60);
    v61 = v38;
    if (v38)
    {

      __break(1u);
    }

    else
    {
      v114 = v95;
      v115 = v74;
      sub_1B98526A4(&v114, v118, &v117, &v116);
      v52 = 0;
      v114 = v96;
      v115 = v75;
      sub_1B98526A4(&v114, v118, &v117, &v116);
      v51 = 0;
      v114 = v97;
      v115 = v76;
      sub_1B98526A4(&v114, v118, &v117, &v116);
      v50 = 0;
      v114 = v98;
      v115 = v77;
      sub_1B98526A4(&v114, v118, &v117, &v116);
      v49 = 0;
      v114 = v99;
      v115 = v79;
      sub_1B98526A4(&v114, v118, &v117, &v116);
      _os_log_impl(&dword_1B982F000, v82, v83, "%s Fetching call history calls matching predicate %s", v54, 0x16u);
      sub_1B985281C(v55);
      sub_1B985281C(v56);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v82);
  (*(v105 + 8))(v108, v104);
  MEMORY[0x1E69E5928](v102, v39, v40);
  MEMORY[0x1E69E5928](v63, v41, v42);
  v44[1] = 0;
  v47 = [v102 callsWithPredicate:v63 limit:1 offset:0 batchSize:?];
  MEMORY[0x1E69E5920](v63);
  MEMORY[0x1E69E5920](v102);
  sub_1B987D22C();
  v45 = sub_1B98F58B8();
  v118[1] = v45;
  v44[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD56D8, &qword_1B98FAF20);
  sub_1B987D290();
  v46 = sub_1B98F5B58();

  v48 = v46 ^ 1;
  MEMORY[0x1E69E5920](v47);
  MEMORY[0x1E69E5920](v63);
  MEMORY[0x1E69E5920](v110);
  return v48 & 1;
}

id sub_1B987BB10(uint64_t a1, void *a2, uint64_t a3)
{
  v100 = a3;
  v102 = a2;
  v111 = a1;
  v101 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v99 = 0;
  v103 = sub_1B98F5018();
  v104 = *(v103 - 8);
  v105 = v104;
  v107 = *(v104 + 64);
  v3 = MEMORY[0x1EEE9AC00](0, v102);
  v109 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v106 = &v36 - v109;
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v108 = &v36 - v109;
  MEMORY[0x1EEE9AC00](v5, v6);
  v110 = &v36 - v109;
  v137 = v7;
  v135 = v8;
  v136 = v9;
  v112 = type metadata accessor for BlockedHandle();
  v10 = (v111 + *(v112 + 32));
  v116 = *v10;
  v117 = v10[1];
  v113 = v117;
  sub_1B98F54D8();
  sub_1B98F54D8();
  v115 = sub_1B98F55E8();
  v118 = v11;
  v114 = v11;
  sub_1B98F54D8();
  v119 = v132;
  v120 = v133;
  v132[0] = v116;
  v132[1] = v117;
  v133[0] = v115;
  v133[1] = v118;
  if (v117)
  {
    sub_1B987D50C(v119, &v123);
    if (v120[1])
    {
      v122 = v123;
      v121 = *v120;
      v97 = MEMORY[0x1BFADD650](v123, *(&v123 + 1), v121, *(&v121 + 1));
      sub_1B9868BFC(&v121);
      sub_1B9868BFC(&v122);
      sub_1B985EE4C(v119);
      v98 = v97;
      goto LABEL_7;
    }

    sub_1B9868BFC(&v123);
    goto LABEL_9;
  }

  if (v120[1])
  {
LABEL_9:
    sub_1B987D318(v132);
    v98 = 0;
    goto LABEL_7;
  }

  sub_1B985EE4C(v119);
  v98 = 1;
LABEL_7:
  v96 = v98;

  if (v96)
  {
    BlockedHandle.type.getter(v110);
    (*(v105 + 104))(v108, *MEMORY[0x1E696ED80], v103);
    sub_1B987D48C();
    v94 = sub_1B98F5FA8();
    v93 = *(v105 + 8);
    v92 = v105 + 8;
    v93(v108, v103);
    v93(v110, v103);
    v95 = v94;
  }

  else
  {
    v95 = 0;
  }

  v91 = v95;
  v12 = v102;
  sub_1B98F54D8();
  if (v91)
  {
    v13 = v99;
    sub_1B98F54D8();
    v125[0] = v100;
    v87 = &v36;
    MEMORY[0x1EEE9AC00](&v36, v14);
    v88 = &v36 - 4;
    *(&v36 - 2) = v15;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
    sub_1B985DBF4();
    sub_1B98F57A8();
    v90 = v13;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      sub_1B9879B08(v125);
      v124[0] = v125[1];
      v124[1] = v126;
      if (!v126)
      {
        v86 = 0;
        goto LABEL_19;
      }
    }

    v86 = 1;
LABEL_19:
    v83 = v86;
    sub_1B985EE4C(v124);
    v84 = v83;
    v85 = v90;
    goto LABEL_21;
  }

  v84 = 0;
  v85 = v99;
LABEL_21:
  v82 = v84;

  if (v82)
  {
    v75 = sub_1B987D350();
    v77 = sub_1B987A860(v111);
    v127 = BlockedHandle.value.getter();
    v128 = v16;
    sub_1B987D3E8();
    sub_1B98F5B68();
    v74 = v129;
    v78 = sub_1B98F5768();
    v76 = v17;

    v18 = BlockedHandle.value.getter();
    v79 = sub_1B987CF64(v77, v78, v76, v18, v19);
    v80 = v79;
    v20 = v79;
    v134 = v79;
    v81 = v80;
  }

  else
  {
    BlockedHandle.type.getter(v106);
    v73 = (*(v105 + 88))(v106, v103);
    if (v73 == *MEMORY[0x1E696EDA0])
    {
      v49 = objc_opt_self();
      BlockedHandle.value.getter();
      v48 = v26;
      v50 = sub_1B98F5648();

      v51 = [v49 normalizedGenericHandleForValue_];
      v52 = v51;

      v27 = v51;
      v134 = v51;
      v61 = v52;
    }

    else if (v73 == *MEMORY[0x1E696ED80])
    {
      v67 = objc_opt_self();
      BlockedHandle.value.getter();
      v68 = v21;
      v69 = sub_1B98F5648();

      v22 = (v111 + *(v112 + 32));
      v70 = *v22;
      v72 = v22[1];
      v71 = v72;
      sub_1B98F54D8();
      if (v72)
      {
        v65 = v70;
        v66 = v71;
        v62 = v71;
        v63 = sub_1B98F5648();

        v64 = v63;
      }

      else
      {
        v64 = 0;
      }

      v58 = v64;
      v59 = [v67 normalizedPhoneNumberHandleForValue:v69 isoCountryCode:?];
      v60 = v59;

      v23 = v59;
      v134 = v59;
      v61 = v60;
    }

    else if (v73 == *MEMORY[0x1E696ED90])
    {
      v54 = objc_opt_self();
      BlockedHandle.value.getter();
      v53 = v24;
      v55 = sub_1B98F5648();

      v56 = [v54 normalizedEmailAddressHandleForValue_];
      v57 = v56;

      v25 = v56;
      v134 = v56;
      v61 = v57;
    }

    else
    {
      v42 = sub_1B987D350();
      v44 = sub_1B987A860(v111);
      v45 = BlockedHandle.value.getter();
      v43 = v28;
      v29 = BlockedHandle.value.getter();
      v46 = sub_1B987CF64(v44, v45, v43, v29, v30);
      v47 = v46;
      v31 = v46;
      v134 = v46;
      (*(v105 + 8))(v106, v103);
      v61 = v47;
    }

    v81 = v61;
  }

  v130 = v81;
  if (v81)
  {
    v131 = v130;
  }

  else
  {
    v38 = sub_1B987D350();
    v40 = sub_1B987A860(v111);
    v41 = BlockedHandle.value.getter();
    v39 = v32;
    v33 = BlockedHandle.value.getter();
    v131 = sub_1B987CF64(v40, v41, v39, v33, v34);
    if (v130)
    {
      sub_1B987D3B4(&v130);
    }
  }

  v37 = v131;
  sub_1B987D3B4(&v134);
  return v37;
}

id sub_1B987C82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37[0] = 0;
  v36 = 0;
  v37[5] = a1;
  v37[6] = a2;
  v37[3] = a3;
  v37[4] = a4;
  v37[1] = a5;
  v37[2] = a6;
  sub_1B987D54C();
  v28 = sub_1B98F5F98();
  v27 = v6;
  *v6 = [objc_opt_self() predicateForCallsWithStatusOriginated_];
  v24 = objc_opt_self();
  sub_1B98F5F98();
  v21 = v7;
  v23 = *MEMORY[0x1E69935E0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69935E0], v7, v8);
  *v21 = sub_1B98F5658();
  v21[1] = v9;
  v22 = *MEMORY[0x1E69935E8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69935E8], v9, v10);
  v21[2] = sub_1B98F5658();
  v21[3] = v11;
  sub_1B9851B38();
  MEMORY[0x1E69E5920](v22);
  MEMORY[0x1E69E5920](v23);
  v25 = sub_1B98F58A8();

  v26 = [v24 predicateForCallsWithAnyServiceProviders_];
  MEMORY[0x1E69E5920](v25);
  v27[1] = v26;
  v27[2] = [objc_opt_self() predicateForCallsWithRemoteParticipantCount_];
  sub_1B9851B38();
  v37[0] = v28;
  v33 = sub_1B98F5F98();
  v32 = v12;
  v29 = objc_opt_self();
  sub_1B98F54D8();
  v30 = sub_1B98F5648();

  v31 = [v29 predicateForCallsWithRemoteParticipantHandleValue_];
  MEMORY[0x1E69E5920](v30);
  *v32 = v31;
  sub_1B9851B38();
  v36 = v33;
  sub_1B98F54D8();
  if (a4)
  {
    v13 = sub_1B98F5708();
    if ((v13 & 1) == 0)
    {
      v19 = objc_opt_self();
      sub_1B98F54D8();
      v20 = sub_1B98F5648();

      [v19 predicateForCallsWithRemoteParticipantHandleNormalizedValue_];
      MEMORY[0x1E69E5920](v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5700, &qword_1B98FAF28);
      sub_1B98F5908();
    }
  }

  sub_1B98F54D8();
  v18 = sub_1B98F58E8();

  if (v18 <= 1)
  {
    sub_1B98F54D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5700, &qword_1B98FAF28);
    sub_1B987D5B0();
    sub_1B98F5B48();

    if (v35)
    {
      MEMORY[0x1E69E5928](v35, v14, v15);
      sub_1B98F5908();
      (MEMORY[0x1E69E5920])();
    }
  }

  else
  {
    sub_1B987D638();
    sub_1B98F54D8();
    sub_1B987CFC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5700, &qword_1B98FAF28);
    sub_1B98F5908();
  }

  sub_1B987D638();
  sub_1B98F54D8();
  v17 = sub_1B987D048();
  sub_1B987D69C(&v36);
  sub_1B987D69C(v37);
  return v17;
}

uint64_t sub_1B987CDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E69E5928](a1, a2, a3);
  sub_1B98F54D8();
  v7[0] = a1;
  v7[1] = a2;
  v6 = sub_1B98F1B88(v7, &unk_1F37955C8);
  sub_1B987DA24(v7);
  return v6;
}

uint64_t sub_1B987CE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E69E5928](a1, a2, a3);
  v7 = a1;
  v3 = sub_1B987D54C();
  v6 = sub_1B98F1B88(&v7, v3);
  sub_1B987D9F0(&v7);
  return v6;
}

uint64_t sub_1B987CEA4(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v4 = a1[1];
  v8 = *a1;
  v9 = v4;
  v7 = a2;
  v6[0] = BlockedHandle.value.getter();
  v6[1] = v2;
  v5 = sub_1B98F5808();
  sub_1B9868BFC(v6);
  return v5 & 1;
}

id sub_1B987CFC4()
{
  sub_1B987D54C();
  v1 = sub_1B98F58A8();
  v2 = [swift_getObjCClassFromMetadata() orPredicateWithSubpredicates_];
  MEMORY[0x1E69E5920](v1);

  return v2;
}

id sub_1B987D048()
{
  sub_1B987D54C();
  v1 = sub_1B98F58A8();
  v2 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates_];
  MEMORY[0x1E69E5920](v1);

  return v2;
}

id sub_1B987D0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = sub_1B98F5648();
  if (a5)
  {
    v7 = sub_1B98F5648();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v6 = [v10 initWithType:a1 value:v12 normalizedValue:?];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v12);

  return v6;
}

unint64_t sub_1B987D22C()
{
  v2 = qword_1EBBD56D0;
  if (!qword_1EBBD56D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD56D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B987D290()
{
  v2 = qword_1EBBD56E0;
  if (!qword_1EBBD56E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD56D8, &qword_1B98FAF20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD56E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B987D318(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 24);

  return a1;
}

unint64_t sub_1B987D350()
{
  v2 = qword_1EBBD56E8;
  if (!qword_1EBBD56E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD56E8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B987D3E8()
{
  v2 = qword_1EBBD56F0;
  if (!qword_1EBBD56F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD56F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B987D48C()
{
  v2 = qword_1EDBDB270;
  if (!qword_1EDBDB270)
  {
    sub_1B98F5018();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB270);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B987D50C(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_1B98F54D8();
  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t sub_1B987D54C()
{
  v2 = qword_1EBBD56F8;
  if (!qword_1EBBD56F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD56F8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B987D5B0()
{
  v2 = qword_1EBBD5708;
  if (!qword_1EBBD5708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5700, &qword_1B98FAF28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5708);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B987D638()
{
  v2 = qword_1EBBD5710;
  if (!qword_1EBBD5710)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5710);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *sub_1B987D69C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B987D6C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B987D80C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

void *sub_1B987DA24(void *a1)
{
  if (*a1)
  {
    MEMORY[0x1E69E5920](*a1);
    v1 = a1[1];
  }

  return a1;
}

unint64_t sub_1B987DA78()
{
  v2 = qword_1EBBD5718;
  if (!qword_1EBBD5718)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5718);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1B987DADC(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  v1 = a1[1];

  return a1;
}

uint64_t sub_1B987DB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E69E5928](a1, a2, a3);
  CMFBlockListAddItemForAllServices();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B987DB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E69E5928](a1, a2, a3);
  CMFBlockListRemoveItemFromAllServices();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B987DBCC()
{
  v112 = 0;
  v120 = 0;
  v105 = sub_1B98F5138();
  v106 = *(v105 - 8);
  v107 = v106;
  v108 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105 - 8, v105);
  v110 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  v109 = v30 - v110;
  MEMORY[0x1EEE9AC00](v30 - v110, v0);
  v111 = v30 - v110;
  v125 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5720, &unk_1B98FB000);
  sub_1B987E980(&v125, sub_1B987E950, v112, v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v3);
  v113 = 0;
  if (v125)
  {
    v103 = v125;
    v4 = v125;
    v5 = v103;

    v104 = v103;
  }

  else
  {
    v104 = 0;
  }

  v102 = v104;
  if (v104)
  {
    v101 = v102;
    v99 = v102;
    objc_opt_self();
    v100 = swift_dynamicCastObjCClass();
    if (v100)
    {
      v98 = v100;
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5730, &qword_1B98FB010);
      v6 = v98;
      sub_1B98804BC();
      sub_1B98F5FD8();

      if (v114)
      {
        v96 = v114;
LABEL_9:
        v95 = v96;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v96 = 0;
    goto LABEL_9;
  }

  v95 = 0;
LABEL_10:
  v94 = v95;
  if (v95)
  {
    v93 = v94;
    v7 = v111;
    v72 = v94;
    v120 = v94;
    v8 = sub_1B98F1E6C();
    (*(v107 + 16))(v7, v8, v105);
    sub_1B98F54D8();
    v81 = 7;
    v73 = swift_allocObject();
    *(v73 + 16) = v72;

    v76 = 32;
    v80 = 32;
    v9 = swift_allocObject();
    v10 = v73;
    v82 = v9;
    *(v9 + 16) = sub_1B988039C;
    *(v9 + 24) = v10;

    v92 = sub_1B98F5118();
    v74 = v92;
    v91 = sub_1B98F5BD8();
    v75 = v91;
    v77 = 17;
    v85 = swift_allocObject();
    v78 = v85;
    *(v85 + 16) = v76;
    v86 = swift_allocObject();
    v79 = v86;
    *(v86 + 16) = 8;
    v11 = swift_allocObject();
    v12 = v82;
    v83 = v11;
    *(v11 + 16) = sub_1B98803A4;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v83;
    v89 = v13;
    v84 = v13;
    *(v13 + 16) = sub_1B98804A4;
    *(v13 + 24) = v14;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v87 = sub_1B98F5F98();
    v88 = v15;

    v16 = v85;
    v17 = v88;
    *v88 = sub_1B9880494;
    v17[1] = v16;

    v18 = v86;
    v19 = v88;
    v88[2] = sub_1B988049C;
    v19[3] = v18;

    v20 = v88;
    v21 = v89;
    v88[4] = sub_1B98804B0;
    v20[5] = v21;
    sub_1B9851B38();

    if (os_log_type_enabled(v92, v91))
    {
      v22 = v113;
      v65 = sub_1B98F5C28();
      v62 = v65;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v66 = sub_1B985263C(0);
      v64 = v66;
      v68 = 1;
      v67 = sub_1B985263C(1);
      v119 = v65;
      v118 = v66;
      v117 = v67;
      v69 = &v119;
      sub_1B9852690(2, &v119);
      sub_1B9852690(v68, v69);
      v115 = sub_1B9880494;
      v116 = v78;
      sub_1B98526A4(&v115, v69, &v118, &v117);
      v70 = v22;
      v71 = v22;
      if (v22)
      {
        v60 = 0;

        __break(1u);
      }

      else
      {
        v115 = sub_1B988049C;
        v116 = v79;
        sub_1B98526A4(&v115, &v119, &v118, &v117);
        v58 = 0;
        v59 = 0;
        v115 = sub_1B98804B0;
        v116 = v84;
        sub_1B98526A4(&v115, &v119, &v118, &v117);
        v56 = 0;
        v57 = 0;
        _os_log_impl(&dword_1B982F000, v74, v75, "Got blocklist %s", v62, 0xCu);
        sub_1B985281C(v64);
        sub_1B985281C(v67);
        sub_1B98F5C08();

        v61 = v56;
      }
    }

    else
    {
      v23 = v113;

      v61 = v23;
    }

    v53 = v61;

    (*(v107 + 8))(v111, v105);
    v54 = v72;
    v55 = v53;
  }

  else
  {
    v24 = v109;
    v25 = sub_1B98F1E6C();
    (*(v107 + 16))(v24, v25, v105);
    v51 = sub_1B98F5118();
    v48 = v51;
    v50 = sub_1B98F5BB8();
    v49 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v52 = sub_1B98F5F98();
    if (os_log_type_enabled(v51, v50))
    {
      v26 = v113;
      v39 = sub_1B98F5C28();
      v35 = v39;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v37 = 0;
      v40 = sub_1B985263C(0);
      v38 = v40;
      v41 = sub_1B985263C(v37);
      v124 = v39;
      v123 = v40;
      v122 = v41;
      v42 = 0;
      v43 = &v124;
      sub_1B9852690(0, &v124);
      sub_1B9852690(v42, v43);
      v121 = v52;
      v44 = v30;
      MEMORY[0x1EEE9AC00](v30, v27);
      v45 = &v30[-6];
      v30[-4] = v28;
      v30[-3] = &v123;
      v30[-2] = &v122;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
      sub_1B9852720();
      sub_1B98F57D8();
      v47 = v26;
      if (v26)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B982F000, v48, v49, "Failed to get block list from CMF", v35, 2u);
        v33 = 0;
        sub_1B985281C(v38);
        sub_1B985281C(v41);
        sub_1B98F5C08();

        v34 = v47;
      }
    }

    else
    {

      v34 = v113;
    }

    v31 = v34;

    (*(v107 + 8))(v109, v105);
    v30[0] = 0;
    v30[1] = sub_1B987EA80();
    v32 = sub_1B98F5F98();
    v54 = v32;
    v55 = v31;
  }

  return v54;
}

uint64_t sub_1B987E980(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a2;
  v12 = a5;
  v13 = a8;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v14 = *(a5 - 8);
  v15 = a5 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00]();
  v18 = &v11 - v16;
  result = v17(v9);
  v19 = v8;
  if (v8)
  {
    return (*(v14 + 32))(v13, v18, v12);
  }

  return result;
}

unint64_t sub_1B987EA80()
{
  v2 = qword_1EBBD5728;
  if (!qword_1EBBD5728)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5728);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B987EAE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

BOOL sub_1B987EB18(uint64_t a1)
{
  v54 = a1;
  v55 = sub_1B9880544;
  v57 = sub_1B98809C0;
  v59 = sub_1B98809F4;
  v61 = sub_1B9880A3C;
  v64 = sub_1B9880550;
  v68 = sub_1B9880B6C;
  v70 = sub_1B9880558;
  v72 = sub_1B9880560;
  v74 = sub_1B9880A48;
  v76 = sub_1B9880B34;
  v78 = sub_1B9880B3C;
  v81 = sub_1B9880B78;
  v93 = 0;
  v92 = 0;
  v46 = 0;
  v52 = sub_1B98F5138();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v47 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = v37 - v47;
  v48 = v37 - v47;
  v93 = MEMORY[0x1EEE9AC00](v54, v1);
  MEMORY[0x1E69E5928](v93, v3, v4);
  IsItemBlocked = CMFBlockListIsItemBlocked();
  swift_unknownObjectRelease();
  v53 = IsItemBlocked != 0;
  v92 = IsItemBlocked != 0;
  v5 = sub_1B98F1E6C();
  (*(v50 + 16))(v2, v5, v52);
  v63 = 17;
  v66 = 7;
  v6 = swift_allocObject();
  v7 = v54;
  v56 = v6;
  *(v6 + 16) = v53;
  MEMORY[0x1E69E5928](v7, v8, v9);
  v67 = swift_allocObject();
  *(v67 + 16) = v54;
  v85 = sub_1B98F5118();
  v86 = sub_1B98F5BD8();
  v71 = swift_allocObject();
  *(v71 + 16) = 2;
  v73 = swift_allocObject();
  *(v73 + 16) = 4;
  v65 = 32;
  v10 = swift_allocObject();
  v11 = v56;
  v58 = v10;
  *(v10 + 16) = v55;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v58;
  v60 = v12;
  *(v12 + 16) = v57;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v60;
  v62 = v14;
  *(v14 + 16) = v59;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v62;
  v75 = v16;
  *(v16 + 16) = v61;
  *(v16 + 24) = v17;
  v77 = swift_allocObject();
  *(v77 + 16) = 64;
  v79 = swift_allocObject();
  *(v79 + 16) = 8;
  v18 = swift_allocObject();
  v19 = v67;
  v69 = v18;
  *(v18 + 16) = v64;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v69;
  v82 = v20;
  *(v20 + 16) = v68;
  *(v20 + 24) = v21;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v80 = sub_1B98F5F98();
  v83 = v22;

  v23 = v71;
  v24 = v83;
  *v83 = v70;
  v24[1] = v23;

  v25 = v73;
  v26 = v83;
  v83[2] = v72;
  v26[3] = v25;

  v27 = v75;
  v28 = v83;
  v83[4] = v74;
  v28[5] = v27;

  v29 = v77;
  v30 = v83;
  v83[6] = v76;
  v30[7] = v29;

  v31 = v79;
  v32 = v83;
  v83[8] = v78;
  v32[9] = v31;

  v33 = v82;
  v34 = v83;
  v83[10] = v81;
  v34[11] = v33;
  sub_1B9851B38();

  if (os_log_type_enabled(v85, v86))
  {
    v35 = v46;
    v38 = sub_1B98F5C28();
    v37[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v39 = sub_1B985263C(1);
    v40 = sub_1B985263C(0);
    v42 = &v91;
    v91 = v38;
    v43 = &v90;
    v90 = v39;
    v44 = &v89;
    v89 = v40;
    v41 = 2;
    sub_1B9852690(2, &v91);
    sub_1B9852690(v41, v42);
    v87 = v70;
    v88 = v71;
    sub_1B98526A4(&v87, v42, v43, v44);
    v45 = v35;
    if (v35)
    {

      __break(1u);
    }

    else
    {
      v87 = v72;
      v88 = v73;
      sub_1B98526A4(&v87, &v91, &v90, &v89);
      v37[3] = 0;
      v87 = v74;
      v88 = v75;
      sub_1B98526A4(&v87, &v91, &v90, &v89);
      v37[2] = 0;
      v87 = v76;
      v88 = v77;
      sub_1B98526A4(&v87, &v91, &v90, &v89);
      v37[1] = 0;
      v87 = v78;
      v88 = v79;
      sub_1B98526A4(&v87, &v91, &v90, &v89);
      v37[0] = 0;
      v87 = v81;
      v88 = v82;
      sub_1B98526A4(&v87, &v91, &v90, &v89);
      _os_log_impl(&dword_1B982F000, v85, v86, "Got result %{BOOL,public}d for %@", v38, 0x12u);
      sub_1B985281C(v39);
      sub_1B985281C(v40);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v85);
  (*(v50 + 8))(v48, v52);
  return v53;
}

uint64_t sub_1B987F55C(uint64_t a1)
{
  v115 = a1;
  v111 = 0;
  v128 = 0;
  v103 = 0;
  v123 = 0;
  v104 = sub_1B98F5138();
  v105 = *(v104 - 8);
  v106 = v105;
  v107 = *(v105 + 64);
  v1 = MEMORY[0x1EEE9AC00](v115, v104);
  v109 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v108 = &v28 - v109;
  v2 = MEMORY[0x1EEE9AC00](v1, &v28 - v109);
  v110 = &v28 - v109;
  v128 = v2;
  sub_1B98F54D8();
  v112 = sub_1B987EA80();
  v113 = sub_1B98F58A8();
  BlockedStatusForItems = CMFBlockListGetBlockedStatusForItems();
  v114 = BlockedStatusForItems;

  if (BlockedStatusForItems)
  {
    v102 = v114;
    v100 = v114;
    v3 = v114;
    v101 = v100;
  }

  else
  {
    v101 = 0;
  }

  v99 = v101;
  if (v101)
  {
    v98 = v99;
    v96 = v99;
    objc_opt_self();
    v97 = swift_dynamicCastObjCClass();
    if (v97)
    {
      v95 = v97;
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5750, qword_1B98FB018);
      v4 = v95;
      sub_1B9880CD4();
      sub_1B98F5FD8();

      if (v117)
      {
        v93 = v117;
LABEL_9:
        v92 = v93;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v93 = 0;
    goto LABEL_9;
  }

  v92 = 0;
LABEL_10:
  v91 = v92;
  if (v92)
  {
    v90 = v91;
    v5 = v110;
    v69 = v91;
    v123 = v91;
    v6 = sub_1B98F1E6C();
    (*(v106 + 16))(v5, v6, v104);
    sub_1B98F54D8();
    v78 = 7;
    v70 = swift_allocObject();
    *(v70 + 16) = v69;

    v73 = 32;
    v77 = 32;
    v7 = swift_allocObject();
    v8 = v70;
    v79 = v7;
    *(v7 + 16) = sub_1B9880BB4;
    *(v7 + 24) = v8;

    v89 = sub_1B98F5118();
    v71 = v89;
    v88 = sub_1B98F5BD8();
    v72 = v88;
    v74 = 17;
    v82 = swift_allocObject();
    v75 = v82;
    *(v82 + 16) = v73;
    v83 = swift_allocObject();
    v76 = v83;
    *(v83 + 16) = 8;
    v9 = swift_allocObject();
    v10 = v79;
    v80 = v9;
    *(v9 + 16) = sub_1B9880BBC;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v80;
    v86 = v11;
    v81 = v11;
    *(v11 + 16) = sub_1B9880CBC;
    *(v11 + 24) = v12;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v84 = sub_1B98F5F98();
    v85 = v13;

    v14 = v82;
    v15 = v85;
    *v85 = sub_1B9880CAC;
    v15[1] = v14;

    v16 = v83;
    v17 = v85;
    v85[2] = sub_1B9880CB4;
    v17[3] = v16;

    v18 = v85;
    v19 = v86;
    v85[4] = sub_1B9880CC8;
    v18[5] = v19;
    sub_1B9851B38();

    if (os_log_type_enabled(v89, v88))
    {
      v20 = v103;
      v62 = sub_1B98F5C28();
      v59 = v62;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v63 = sub_1B985263C(0);
      v61 = v63;
      v65 = 1;
      v64 = sub_1B985263C(1);
      v122 = v62;
      v121 = v63;
      v120 = v64;
      v66 = &v122;
      sub_1B9852690(2, &v122);
      sub_1B9852690(v65, v66);
      v118 = sub_1B9880CAC;
      v119 = v75;
      sub_1B98526A4(&v118, v66, &v121, &v120);
      v67 = v20;
      v68 = v20;
      if (v20)
      {
        v57 = 0;

        __break(1u);
      }

      else
      {
        v118 = sub_1B9880CB4;
        v119 = v76;
        sub_1B98526A4(&v118, &v122, &v121, &v120);
        v55 = 0;
        v56 = 0;
        v118 = sub_1B9880CC8;
        v119 = v81;
        sub_1B98526A4(&v118, &v122, &v121, &v120);
        v53 = 0;
        v54 = 0;
        _os_log_impl(&dword_1B982F000, v71, v72, "Got response %s", v59, 0xCu);
        sub_1B985281C(v61);
        sub_1B985281C(v64);
        sub_1B98F5C08();

        v58 = v53;
      }
    }

    else
    {
      v21 = v103;

      v58 = v21;
    }

    v50 = v58;

    (*(v106 + 8))(v110, v104);
    v51 = v69;
    v52 = v50;
  }

  else
  {
    v22 = v108;
    v23 = sub_1B98F1E6C();
    (*(v106 + 16))(v22, v23, v104);
    v48 = sub_1B98F5118();
    v45 = v48;
    v47 = sub_1B98F5BB8();
    v46 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v49 = sub_1B98F5F98();
    if (os_log_type_enabled(v48, v47))
    {
      v24 = v103;
      v36 = sub_1B98F5C28();
      v32 = v36;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v34 = 0;
      v37 = sub_1B985263C(0);
      v35 = v37;
      v38 = sub_1B985263C(v34);
      v127 = v36;
      v126 = v37;
      v125 = v38;
      v39 = 0;
      v40 = &v127;
      sub_1B9852690(0, &v127);
      sub_1B9852690(v39, v40);
      v124 = v49;
      v41 = &v28;
      MEMORY[0x1EEE9AC00](&v28, v25);
      v42 = &v28 - 6;
      *(&v28 - 4) = v26;
      *(&v28 - 3) = &v126;
      *(&v28 - 2) = &v125;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
      sub_1B9852720();
      sub_1B98F57D8();
      v44 = v24;
      if (v24)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B982F000, v45, v46, "Failed to get blocked status from CMF, returning nil", v32, 2u);
        v30 = 0;
        sub_1B985281C(v35);
        sub_1B985281C(v38);
        sub_1B98F5C08();

        v31 = v44;
      }
    }

    else
    {

      v31 = v103;
    }

    v29 = v31;

    (*(v106 + 8))(v108, v104);
    v51 = 0;
    v52 = v29;
  }

  return v51;
}

uint64_t sub_1B98802B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98803A4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5730, &qword_1B98FB010);
  v1 = sub_1B988040C();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B988040C()
{
  v2 = qword_1EBBD5738;
  if (!qword_1EBBD5738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5730, &qword_1B98FB010);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5738);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98804BC()
{
  v2 = qword_1EBBD5740;
  if (!qword_1EBBD5740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5730, &qword_1B98FB010);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5740);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9880550()
{
  result = *(v0 + 16);
  sub_1B987F52C();
  return result;
}

uint64_t sub_1B9880568(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](0, a2);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  v27 = sub_1B98F5DF8() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = sub_1B98F5E48();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    v10 = MEMORY[0x1EEE9AC00](v23, &v18);
    v16 = v29;
    v17 = v11;
    sub_1B98807A4(v10, sub_1B9880D70, v15, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v13, MEMORY[0x1E69E7CA8]);
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t sub_1B98807A4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1, a2);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_1B98F5E48();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_1B9880A00@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B9880A48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B9880ABC();
  v5 = MEMORY[0x1E69E72F0];

  return sub_1B9880568(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1B9880ABC()
{
  v2 = qword_1EBBD5748;
  if (!qword_1EBBD5748)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5748);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9880BBC()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5750, qword_1B98FB018);
  v1 = sub_1B9880C24();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B9880C24()
{
  v2 = qword_1EBBD5758;
  if (!qword_1EBBD5758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5750, qword_1B98FB018);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5758);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9880CD4()
{
  v2 = qword_1EBBD5760;
  if (!qword_1EBBD5760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5750, qword_1B98FB018);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5760);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9880D70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B988077C();
}

uint64_t sub_1B9880DC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t *sub_1B9880E2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v6 = a1;
  sub_1B9880DC0(a1, v5);
  sub_1B9880EAC(v5, __b);
  sub_1B9880EE8(__b, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = __b;
  sub_1B9880F54(__b);
  return result;
}

uint64_t sub_1B9880EE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t *sub_1B9880F7C(uint64_t a1)
{
  v205 = a1;
  v180 = 0;
  v206 = sub_1B9882D8C;
  v208 = sub_1B9882D28;
  v209 = sub_1B9889EE8;
  v213 = sub_1B9889E70;
  v217 = sub_1B9889F10;
  v219 = sub_1B9889ED8;
  v221 = sub_1B9889EE0;
  v223 = sub_1B9889EF4;
  v225 = sub_1B9889F00;
  v227 = sub_1B9889F08;
  v230 = sub_1B9889F1C;
  v170 = sub_1B9882D94;
  v171 = sub_1B9889F9C;
  v172 = sub_1B9889F28;
  v173 = sub_1B9889FC4;
  v174 = sub_1B9889F8C;
  v175 = sub_1B9889F94;
  v176 = sub_1B9889FA8;
  v177 = sub_1B9889FB4;
  v178 = sub_1B9889FBC;
  v179 = sub_1B9889FD0;
  v253 = 0;
  v252 = 0;
  v251 = 0;
  memset(__b, 0, sizeof(__b));
  v181 = 0;
  v244 = 0;
  v191 = 0;
  v182 = type metadata accessor for BlockedHandle();
  v184 = *(v182 - 8);
  v183 = v182 - 8;
  v185 = v184;
  v186 = *(v184 + 64);
  v187 = (v186 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v182, v1);
  v188 = &v60 - v187;
  v189 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v60 - v187, v3);
  v190 = &v60 - v189;
  v253 = &v60 - v189;
  v192 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v191, v4);
  v193 = &v60 - v192;
  v202 = sub_1B98F5138();
  v200 = *(v202 - 8);
  v201 = v202 - 8;
  v196 = v200[8];
  v195 = (v196 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v205, v5);
  v197 = &v60 - v195;
  v198 = (v196 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6, &v60 - v195);
  v8 = &v60 - v198;
  v199 = &v60 - v198;
  v252 = v7;
  v251 = v9;
  v10 = sub_1B98F1E6C();
  v203 = v200[2];
  v204 = v200 + 2;
  v203(v8, v10, v202);
  sub_1B98F54D8();
  v215 = 7;
  v207 = swift_allocObject();
  *(v207 + 16) = v205;

  v214 = 32;
  v11 = swift_allocObject();
  v12 = v207;
  v216 = v11;
  *(v11 + 16) = v206;
  *(v11 + 24) = v12;

  v234 = sub_1B98F5118();
  v235 = sub_1B98F5BD8();
  v211 = 17;
  v220 = swift_allocObject();
  *(v220 + 16) = 34;
  v222 = swift_allocObject();
  v212 = 8;
  *(v222 + 16) = 8;
  v13 = swift_allocObject();
  v210 = v13;
  *(v13 + 16) = v208;
  *(v13 + 24) = 0;
  v14 = swift_allocObject();
  v15 = v210;
  v224 = v14;
  *(v14 + 16) = v209;
  *(v14 + 24) = v15;
  v226 = swift_allocObject();
  *(v226 + 16) = 32;
  v228 = swift_allocObject();
  *(v228 + 16) = v212;
  v16 = swift_allocObject();
  v17 = v216;
  v218 = v16;
  *(v16 + 16) = v213;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v218;
  v231 = v18;
  *(v18 + 16) = v217;
  *(v18 + 24) = v19;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v229 = sub_1B98F5F98();
  v232 = v20;

  v21 = v220;
  v22 = v232;
  *v232 = v219;
  v22[1] = v21;

  v23 = v222;
  v24 = v232;
  v232[2] = v221;
  v24[3] = v23;

  v25 = v224;
  v26 = v232;
  v232[4] = v223;
  v26[5] = v25;

  v27 = v226;
  v28 = v232;
  v232[6] = v225;
  v28[7] = v27;

  v29 = v228;
  v30 = v232;
  v232[8] = v227;
  v30[9] = v29;

  v31 = v231;
  v32 = v232;
  v232[10] = v230;
  v32[11] = v31;
  sub_1B9851B38();

  if (os_log_type_enabled(v234, v235))
  {
    v33 = v181;
    v162 = sub_1B98F5C28();
    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v163 = sub_1B985263C(0);
    v164 = sub_1B985263C(2);
    v166 = &v240;
    v240 = v162;
    v167 = &v239;
    v239 = v163;
    v168 = &v238;
    v238 = v164;
    v165 = 2;
    sub_1B9852690(2, &v240);
    sub_1B9852690(v165, v166);
    v236 = v219;
    v237 = v220;
    sub_1B98526A4(&v236, v166, v167, v168);
    v169 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v236 = v221;
      v237 = v222;
      sub_1B98526A4(&v236, &v240, &v239, &v238);
      v159 = 0;
      v236 = v223;
      v237 = v224;
      sub_1B98526A4(&v236, &v240, &v239, &v238);
      v158 = 0;
      v236 = v225;
      v237 = v226;
      sub_1B98526A4(&v236, &v240, &v239, &v238);
      v157 = 0;
      v236 = v227;
      v237 = v228;
      sub_1B98526A4(&v236, &v240, &v239, &v238);
      v156 = 0;
      v236 = v230;
      v237 = v231;
      sub_1B98526A4(&v236, &v240, &v239, &v238);
      v155 = 0;
      _os_log_impl(&dword_1B982F000, v234, v235, "%{public}s handles: %s", v162, 0x16u);
      sub_1B985281C(v163);
      sub_1B985281C(v164);
      sub_1B98F5C08();

      v160 = v155;
    }
  }

  else
  {
    v34 = v181;

    v160 = v34;
  }

  v153 = v160;
  MEMORY[0x1E69E5920](v234);
  v150 = v200[1];
  v151 = v200 + 1;
  v150(v199, v202);
  sub_1B98F54D8();
  sub_1B9853574();
  v152 = &v254;
  sub_1B98F5A58();
  memcpy(__b, v152, sizeof(__b));
  for (i = v153; ; i = v146)
  {
    v149 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
    sub_1B98F5AB8();
    if ((*(v184 + 48))(v193, 1, v182) == 1)
    {
      break;
    }

    sub_1B9832680(v193, v190);
    v148 = sub_1B9882EBC(v190);
    if (v148)
    {
      v147 = v148;
      v145 = v148;
      v244 = v148;
      v144 = v241;
      sub_1B9880DC0(v194, v241);
      v142 = v242;
      v143 = v243;
      __swift_project_boxed_opaque_existential_1(v144, v242);
      (*(v143 + 8))(v145, v142);
      __swift_destroy_boxed_opaque_existential_1(v144);
      MEMORY[0x1E69E5920](v145);
      sub_1B983A3AC(v190);
      v146 = v149;
    }

    else
    {
      v35 = v197;
      v36 = sub_1B98F1E6C();
      v203(v35, v36, v202);
      sub_1B9833334(v190, v188);
      v124 = (*(v185 + 80) + 16) & ~*(v185 + 80);
      v129 = 7;
      v130 = swift_allocObject();
      sub_1B9832680(v188, v130 + v124);
      v140 = sub_1B98F5118();
      v141 = sub_1B98F5BB8();
      v126 = 17;
      v132 = swift_allocObject();
      *(v132 + 16) = 34;
      v133 = swift_allocObject();
      v127 = 8;
      *(v133 + 16) = 8;
      v128 = 32;
      v37 = swift_allocObject();
      v125 = v37;
      *(v37 + 16) = v170;
      *(v37 + 24) = 0;
      v38 = swift_allocObject();
      v39 = v125;
      v134 = v38;
      *(v38 + 16) = v171;
      *(v38 + 24) = v39;
      v135 = swift_allocObject();
      *(v135 + 16) = 32;
      v136 = swift_allocObject();
      *(v136 + 16) = v127;
      v40 = swift_allocObject();
      v41 = v130;
      v131 = v40;
      *(v40 + 16) = v172;
      *(v40 + 24) = v41;
      v42 = swift_allocObject();
      v43 = v131;
      v138 = v42;
      *(v42 + 16) = v173;
      *(v42 + 24) = v43;
      v137 = sub_1B98F5F98();
      v139 = v44;

      v45 = v132;
      v46 = v139;
      *v139 = v174;
      v46[1] = v45;

      v47 = v133;
      v48 = v139;
      v139[2] = v175;
      v48[3] = v47;

      v49 = v134;
      v50 = v139;
      v139[4] = v176;
      v50[5] = v49;

      v51 = v135;
      v52 = v139;
      v139[6] = v177;
      v52[7] = v51;

      v53 = v136;
      v54 = v139;
      v139[8] = v178;
      v54[9] = v53;

      v55 = v138;
      v56 = v139;
      v139[10] = v179;
      v56[11] = v55;
      sub_1B9851B38();

      if (os_log_type_enabled(v140, v141))
      {
        v57 = v149;
        v110 = sub_1B98F5C28();
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
        v111 = sub_1B985263C(0);
        v112 = sub_1B985263C(2);
        v114 = &v249;
        v249 = v110;
        v115 = &v248;
        v248 = v111;
        v116 = &v247;
        v247 = v112;
        v113 = 2;
        sub_1B9852690(2, &v249);
        sub_1B9852690(v113, v114);
        v245 = v174;
        v246 = v132;
        sub_1B98526A4(&v245, v114, v115, v116);
        v117 = v57;
        v118 = v132;
        v119 = v133;
        v120 = v134;
        v121 = v135;
        v122 = v136;
        v123 = v138;
        if (v57)
        {
          v102 = v118;
          v103 = v119;
          v104 = v120;
          v105 = v121;
          v106 = v122;
          v107 = v123;
          v66 = v123;
          v65 = v122;
          v64 = v121;
          v63 = v120;
          v62 = v119;

          __break(1u);
        }

        else
        {
          v245 = v175;
          v246 = v133;
          sub_1B98526A4(&v245, &v249, &v248, &v247);
          v95 = 0;
          v96 = v132;
          v97 = v133;
          v98 = v134;
          v99 = v135;
          v100 = v136;
          v101 = v138;
          v245 = v176;
          v246 = v134;
          sub_1B98526A4(&v245, &v249, &v248, &v247);
          v88 = 0;
          v89 = v132;
          v90 = v133;
          v91 = v134;
          v92 = v135;
          v93 = v136;
          v94 = v138;
          v245 = v177;
          v246 = v135;
          sub_1B98526A4(&v245, &v249, &v248, &v247);
          v81 = 0;
          v82 = v132;
          v83 = v133;
          v84 = v134;
          v85 = v135;
          v86 = v136;
          v87 = v138;
          v245 = v178;
          v246 = v136;
          sub_1B98526A4(&v245, &v249, &v248, &v247);
          v74 = 0;
          v75 = v132;
          v76 = v133;
          v77 = v134;
          v78 = v135;
          v79 = v136;
          v80 = v138;
          v245 = v179;
          v246 = v138;
          sub_1B98526A4(&v245, &v249, &v248, &v247);
          v67 = 0;
          v68 = v132;
          v69 = v133;
          v70 = v134;
          v71 = v135;
          v72 = v136;
          v73 = v138;
          _os_log_impl(&dword_1B982F000, v140, v141, "%{public}s Error creating CommunicationFilterItem from handle: %s. Not adding to blocklist", v110, 0x16u);
          sub_1B985281C(v111);
          sub_1B985281C(v112);
          sub_1B98F5C08();

          v108 = v67;
        }
      }

      else
      {
        v58 = v149;

        v108 = v58;
      }

      v61 = v108;
      MEMORY[0x1E69E5920](v140);
      v150(v197, v202);
      sub_1B983A3AC(v190);
      v146 = v61;
    }
  }

  return sub_1B9871430(__b);
}

uint64_t sub_1B9882D58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B9882DC4(uint64_t a1)
{
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v5, v1);
  v8 = &v5 - v6;
  sub_1B9833334(v2, &v5 - v6);
  v7 = type metadata accessor for BlockedHandle();
  (*(*(v7 - 8) + 56))(v8, 0, 1);
  v10 = sub_1B98F1B88(v8, v7);
  v9 = v3;
  sub_1B983AAEC(v8);
  return v10;
}

uint64_t sub_1B9882EBC(uint64_t a1)
{
  v79 = a1;
  v91 = 0;
  v88 = 0uLL;
  v87 = 0;
  v86 = 0;
  v84 = sub_1B98F5018();
  v81 = *(v84 - 8);
  v82 = v84 - 8;
  v80 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v84, v2);
  v83 = &v13 - v80;
  v91 = a1;
  BlockedHandle.type.getter(&v13 - v80);
  v85 = (*(v81 + 88))(v83, v84);
  if (v85 == *MEMORY[0x1E696EDA0])
  {
LABEL_48:
    BlockedHandle.value.getter();
    v23 = v11;
    v22 = sub_1B98F5648();
    CMFItemFromString = CreateCMFItemFromString();
    MEMORY[0x1E69E5920](v22);

    if (CMFItemFromString)
    {
      v21 = CMFItemFromString;
      v19 = CMFItemFromString;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v18 = v20;
    if (!v20)
    {
      return 0;
    }

    v17 = v18;
    v15 = v18;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      return v16;
    }

    swift_unknownObjectRelease();
    return 0;
  }

  if (v85 != *MEMORY[0x1E696ED80])
  {
    if (v85 == *MEMORY[0x1E696ED90])
    {
      BlockedHandle.value.getter();
      v77 = v3;
      v76 = sub_1B98F5648();
      v78 = CMFItemCreateWithEmailAddress();
      MEMORY[0x1E69E5920](v76);

      if (v78)
      {
        v75 = v78;
        v73 = v78;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v74 = v73;
      }

      else
      {
        v74 = 0;
      }

      v72 = v74;
      if (!v74)
      {
        return 0;
      }

      v71 = v72;
      v69 = v72;
      objc_opt_self();
      v70 = swift_dynamicCastObjCClass();
      if (v70)
      {
        return v70;
      }

      swift_unknownObjectRelease();
      return 0;
    }

    (*(v81 + 8))(v83, v84);
    goto LABEL_48;
  }

  v65 = *(v79 + *(type metadata accessor for BlockedHandle() + 32));
  sub_1B98F54D8();
  v89 = v65;
  if (*(&v65 + 1))
  {
    v90 = v89;
  }

  else
  {
    *&v90 = sub_1B98F2F58();
    *(&v90 + 1) = v4;
    if (*(&v89 + 1))
    {
      sub_1B985EE4C(&v89);
    }
  }

  v64 = *(&v90 + 1);
  v61 = v90;
  v88 = v90;
  BlockedHandle.value.getter();
  v62 = v5;
  v63 = sub_1B98F5648();
  sub_1B98F54D8();
  if (v64)
  {
    v59 = v61;
    v60 = v64;
    v56 = v64;
    v57 = sub_1B98F5648();

    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  v55 = v58;
  if (v58)
  {
    v54 = v55;
    v53 = v55;
  }

  else
  {
    v53 = 0;
  }

  v51 = v53;
  v52 = CFPhoneNumberCreate();
  MEMORY[0x1E69E5920](v51);
  MEMORY[0x1E69E5920](v63);

  v87 = v52;
  MEMORY[0x1E69E5928](v52, v6, v7);
  if (v52)
  {
    v50 = v52;
    v48 = v52;
    v86 = v52;
    MEMORY[0x1E69E5928](v52, v8, v9);
    v49 = CMFItemCreateWithPhoneNumber();
    MEMORY[0x1E69E5920](v48);
    if (v49)
    {
      v47 = v49;
      v45 = v49;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    v44 = v46;
    if (v46)
    {
      v43 = v44;
      v41 = v44;
      objc_opt_self();
      v42 = swift_dynamicCastObjCClass();
      if (v42)
      {
        v40 = v42;
      }

      else
      {
        swift_unknownObjectRelease();
        v40 = 0;
      }

      v39 = v40;
    }

    else
    {
      v39 = 0;
    }

    v38 = v39;
    MEMORY[0x1E69E5920](v48);
    MEMORY[0x1E69E5920](v52);

    return v38;
  }

  else
  {
    BlockedHandle.value.getter();
    v36 = v10;
    v35 = sub_1B98F5648();
    v37 = CreateCMFItemFromString();
    MEMORY[0x1E69E5920](v35);

    if (v37)
    {
      v34 = v37;
      v32 = v37;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v31 = v33;
    if (v33)
    {
      v30 = v31;
      v28 = v31;
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        v27 = v29;
      }

      else
      {
        swift_unknownObjectRelease();
        v27 = 0;
      }

      v26 = v27;
    }

    else
    {
      v26 = 0;
    }

    v25 = v26;
    MEMORY[0x1E69E5920](v52);

    return v25;
  }
}

uint64_t sub_1B98838D4()
{
  v47 = sub_1B9884068;
  v50 = sub_1B9889FEC;
  v52 = sub_1B9889FDC;
  v54 = sub_1B9889FE4;
  v57 = sub_1B9889FF8;
  v38 = sub_1B9884098;
  v73 = 0;
  v69 = 0;
  v39 = 0;
  v45 = sub_1B98F5138();
  v43 = *(v45 - 8);
  v44 = v45 - 8;
  v41 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45, v0);
  v1 = v18 - v41;
  v42 = v18 - v41;
  v73 = v2;
  v3 = sub_1B98F1E6C();
  (*(v43 + 16))(v1, v3, v45);
  v61 = sub_1B98F5118();
  v62 = sub_1B98F5BD8();
  v46 = 17;
  v49 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = 34;
  v55 = swift_allocObject();
  *(v55 + 16) = 8;
  v48 = 32;
  v4 = swift_allocObject();
  v51 = v4;
  *(v4 + 16) = v47;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  v6 = v51;
  v58 = v5;
  *(v5 + 16) = v50;
  *(v5 + 24) = v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v56 = sub_1B98F5F98();
  v59 = v7;

  v8 = v53;
  v9 = v59;
  *v59 = v52;
  v9[1] = v8;

  v10 = v55;
  v11 = v59;
  v59[2] = v54;
  v11[3] = v10;

  v12 = v58;
  v13 = v59;
  v59[4] = v57;
  v13[5] = v12;
  sub_1B9851B38();

  if (os_log_type_enabled(v61, v62))
  {
    v14 = v39;
    v31 = sub_1B98F5C28();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v32 = sub_1B985263C(0);
    v33 = sub_1B985263C(1);
    v34 = &v67;
    v67 = v31;
    v35 = &v66;
    v66 = v32;
    v36 = &v65;
    v65 = v33;
    sub_1B9852690(2, &v67);
    sub_1B9852690(1, v34);
    v63 = v52;
    v64 = v53;
    sub_1B98526A4(&v63, v34, v35, v36);
    v37 = v14;
    if (v14)
    {

      __break(1u);
    }

    else
    {
      v63 = v54;
      v64 = v55;
      sub_1B98526A4(&v63, &v67, &v66, &v65);
      v28 = 0;
      v63 = v57;
      v64 = v58;
      sub_1B98526A4(&v63, &v67, &v66, &v65);
      v27 = 0;
      _os_log_impl(&dword_1B982F000, v61, v62, "%{public}s", v31, 0xCu);
      sub_1B985281C(v32);
      sub_1B985281C(v33);
      sub_1B98F5C08();

      v29 = v27;
    }
  }

  else
  {
    v15 = v39;

    v29 = v15;
  }

  v16 = v29;
  MEMORY[0x1E69E5920](v61);
  (*(v43 + 8))(v42, v45);
  v22 = v70;
  sub_1B9880DC0(v40, v70);
  v21 = v71;
  v20 = v72;
  __swift_project_boxed_opaque_existential_1(v22, v71);
  v23 = (*(v20 + 24))(v21);
  v69 = v23;
  __swift_destroy_boxed_opaque_existential_1(v22);
  v68[1] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5730, &qword_1B98FB010);
  v25 = type metadata accessor for BlockedHandle();
  sub_1B988A004();
  result = sub_1B98F5788();
  v26 = result;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v18[2] = v68;
    v68[0] = v26;
    v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55C8, &qword_1B98FAAC0);
    v18[1] = sub_1B9853574();
    sub_1B9871820();
    v19 = sub_1B98F5AE8();

    return v19;
  }

  return result;
}

uint64_t sub_1B9884098@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  MEMORY[0x1E69E5928](*a1, a2, a3);
  return sub_1B983ABEC(v6, a4);
}

uint64_t *sub_1B98840E8(uint64_t a1)
{
  v205 = a1;
  v180 = 0;
  v206 = sub_1B988A08C;
  v208 = sub_1B9885E94;
  v209 = sub_1B988A10C;
  v213 = sub_1B988A094;
  v217 = sub_1B988A134;
  v219 = sub_1B988A0FC;
  v221 = sub_1B988A104;
  v223 = sub_1B988A118;
  v225 = sub_1B988A124;
  v227 = sub_1B988A12C;
  v230 = sub_1B988A140;
  v170 = sub_1B9885EF8;
  v171 = sub_1B988A1C0;
  v172 = sub_1B988A14C;
  v173 = sub_1B988A1E8;
  v174 = sub_1B988A1B0;
  v175 = sub_1B988A1B8;
  v176 = sub_1B988A1CC;
  v177 = sub_1B988A1D8;
  v178 = sub_1B988A1E0;
  v179 = sub_1B988A1F4;
  v253 = 0;
  v252 = 0;
  v251 = 0;
  memset(__b, 0, sizeof(__b));
  v181 = 0;
  v244 = 0;
  v191 = 0;
  v182 = type metadata accessor for BlockedHandle();
  v184 = *(v182 - 8);
  v183 = v182 - 8;
  v185 = v184;
  v186 = *(v184 + 64);
  v187 = (v186 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v182, v1);
  v188 = &v60 - v187;
  v189 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v60 - v187, v3);
  v190 = &v60 - v189;
  v253 = &v60 - v189;
  v192 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v191, v4);
  v193 = &v60 - v192;
  v202 = sub_1B98F5138();
  v200 = *(v202 - 8);
  v201 = v202 - 8;
  v196 = v200[8];
  v195 = (v196 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v205, v5);
  v197 = &v60 - v195;
  v198 = (v196 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6, &v60 - v195);
  v8 = &v60 - v198;
  v199 = &v60 - v198;
  v252 = v7;
  v251 = v9;
  v10 = sub_1B98F1E6C();
  v203 = v200[2];
  v204 = v200 + 2;
  v203(v8, v10, v202);
  sub_1B98F54D8();
  v215 = 7;
  v207 = swift_allocObject();
  *(v207 + 16) = v205;

  v214 = 32;
  v11 = swift_allocObject();
  v12 = v207;
  v216 = v11;
  *(v11 + 16) = v206;
  *(v11 + 24) = v12;

  v234 = sub_1B98F5118();
  v235 = sub_1B98F5BD8();
  v211 = 17;
  v220 = swift_allocObject();
  *(v220 + 16) = 34;
  v222 = swift_allocObject();
  v212 = 8;
  *(v222 + 16) = 8;
  v13 = swift_allocObject();
  v210 = v13;
  *(v13 + 16) = v208;
  *(v13 + 24) = 0;
  v14 = swift_allocObject();
  v15 = v210;
  v224 = v14;
  *(v14 + 16) = v209;
  *(v14 + 24) = v15;
  v226 = swift_allocObject();
  *(v226 + 16) = 32;
  v228 = swift_allocObject();
  *(v228 + 16) = v212;
  v16 = swift_allocObject();
  v17 = v216;
  v218 = v16;
  *(v16 + 16) = v213;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v218;
  v231 = v18;
  *(v18 + 16) = v217;
  *(v18 + 24) = v19;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v229 = sub_1B98F5F98();
  v232 = v20;

  v21 = v220;
  v22 = v232;
  *v232 = v219;
  v22[1] = v21;

  v23 = v222;
  v24 = v232;
  v232[2] = v221;
  v24[3] = v23;

  v25 = v224;
  v26 = v232;
  v232[4] = v223;
  v26[5] = v25;

  v27 = v226;
  v28 = v232;
  v232[6] = v225;
  v28[7] = v27;

  v29 = v228;
  v30 = v232;
  v232[8] = v227;
  v30[9] = v29;

  v31 = v231;
  v32 = v232;
  v232[10] = v230;
  v32[11] = v31;
  sub_1B9851B38();

  if (os_log_type_enabled(v234, v235))
  {
    v33 = v181;
    v162 = sub_1B98F5C28();
    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v163 = sub_1B985263C(0);
    v164 = sub_1B985263C(2);
    v166 = &v240;
    v240 = v162;
    v167 = &v239;
    v239 = v163;
    v168 = &v238;
    v238 = v164;
    v165 = 2;
    sub_1B9852690(2, &v240);
    sub_1B9852690(v165, v166);
    v236 = v219;
    v237 = v220;
    sub_1B98526A4(&v236, v166, v167, v168);
    v169 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v236 = v221;
      v237 = v222;
      sub_1B98526A4(&v236, &v240, &v239, &v238);
      v159 = 0;
      v236 = v223;
      v237 = v224;
      sub_1B98526A4(&v236, &v240, &v239, &v238);
      v158 = 0;
      v236 = v225;
      v237 = v226;
      sub_1B98526A4(&v236, &v240, &v239, &v238);
      v157 = 0;
      v236 = v227;
      v237 = v228;
      sub_1B98526A4(&v236, &v240, &v239, &v238);
      v156 = 0;
      v236 = v230;
      v237 = v231;
      sub_1B98526A4(&v236, &v240, &v239, &v238);
      v155 = 0;
      _os_log_impl(&dword_1B982F000, v234, v235, "%{public}s handles: %s", v162, 0x16u);
      sub_1B985281C(v163);
      sub_1B985281C(v164);
      sub_1B98F5C08();

      v160 = v155;
    }
  }

  else
  {
    v34 = v181;

    v160 = v34;
  }

  v153 = v160;
  MEMORY[0x1E69E5920](v234);
  v150 = v200[1];
  v151 = v200 + 1;
  v150(v199, v202);
  sub_1B98F54D8();
  sub_1B9853574();
  v152 = &v254;
  sub_1B98F5A58();
  memcpy(__b, v152, sizeof(__b));
  for (i = v153; ; i = v146)
  {
    v149 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
    sub_1B98F5AB8();
    if ((*(v184 + 48))(v193, 1, v182) == 1)
    {
      break;
    }

    sub_1B9832680(v193, v190);
    v148 = sub_1B9882EBC(v190);
    if (v148)
    {
      v147 = v148;
      v145 = v148;
      v244 = v148;
      v144 = v241;
      sub_1B9880DC0(v194, v241);
      v142 = v242;
      v143 = v243;
      __swift_project_boxed_opaque_existential_1(v144, v242);
      (*(v143 + 16))(v145, v142);
      __swift_destroy_boxed_opaque_existential_1(v144);
      MEMORY[0x1E69E5920](v145);
      sub_1B983A3AC(v190);
      v146 = v149;
    }

    else
    {
      v35 = v197;
      v36 = sub_1B98F1E6C();
      v203(v35, v36, v202);
      sub_1B9833334(v190, v188);
      v124 = (*(v185 + 80) + 16) & ~*(v185 + 80);
      v129 = 7;
      v130 = swift_allocObject();
      sub_1B9832680(v188, v130 + v124);
      v140 = sub_1B98F5118();
      v141 = sub_1B98F5BB8();
      v126 = 17;
      v132 = swift_allocObject();
      *(v132 + 16) = 34;
      v133 = swift_allocObject();
      v127 = 8;
      *(v133 + 16) = 8;
      v128 = 32;
      v37 = swift_allocObject();
      v125 = v37;
      *(v37 + 16) = v170;
      *(v37 + 24) = 0;
      v38 = swift_allocObject();
      v39 = v125;
      v134 = v38;
      *(v38 + 16) = v171;
      *(v38 + 24) = v39;
      v135 = swift_allocObject();
      *(v135 + 16) = 32;
      v136 = swift_allocObject();
      *(v136 + 16) = v127;
      v40 = swift_allocObject();
      v41 = v130;
      v131 = v40;
      *(v40 + 16) = v172;
      *(v40 + 24) = v41;
      v42 = swift_allocObject();
      v43 = v131;
      v138 = v42;
      *(v42 + 16) = v173;
      *(v42 + 24) = v43;
      v137 = sub_1B98F5F98();
      v139 = v44;

      v45 = v132;
      v46 = v139;
      *v139 = v174;
      v46[1] = v45;

      v47 = v133;
      v48 = v139;
      v139[2] = v175;
      v48[3] = v47;

      v49 = v134;
      v50 = v139;
      v139[4] = v176;
      v50[5] = v49;

      v51 = v135;
      v52 = v139;
      v139[6] = v177;
      v52[7] = v51;

      v53 = v136;
      v54 = v139;
      v139[8] = v178;
      v54[9] = v53;

      v55 = v138;
      v56 = v139;
      v139[10] = v179;
      v56[11] = v55;
      sub_1B9851B38();

      if (os_log_type_enabled(v140, v141))
      {
        v57 = v149;
        v110 = sub_1B98F5C28();
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
        v111 = sub_1B985263C(0);
        v112 = sub_1B985263C(2);
        v114 = &v249;
        v249 = v110;
        v115 = &v248;
        v248 = v111;
        v116 = &v247;
        v247 = v112;
        v113 = 2;
        sub_1B9852690(2, &v249);
        sub_1B9852690(v113, v114);
        v245 = v174;
        v246 = v132;
        sub_1B98526A4(&v245, v114, v115, v116);
        v117 = v57;
        v118 = v132;
        v119 = v133;
        v120 = v134;
        v121 = v135;
        v122 = v136;
        v123 = v138;
        if (v57)
        {
          v102 = v118;
          v103 = v119;
          v104 = v120;
          v105 = v121;
          v106 = v122;
          v107 = v123;
          v66 = v123;
          v65 = v122;
          v64 = v121;
          v63 = v120;
          v62 = v119;

          __break(1u);
        }

        else
        {
          v245 = v175;
          v246 = v133;
          sub_1B98526A4(&v245, &v249, &v248, &v247);
          v95 = 0;
          v96 = v132;
          v97 = v133;
          v98 = v134;
          v99 = v135;
          v100 = v136;
          v101 = v138;
          v245 = v176;
          v246 = v134;
          sub_1B98526A4(&v245, &v249, &v248, &v247);
          v88 = 0;
          v89 = v132;
          v90 = v133;
          v91 = v134;
          v92 = v135;
          v93 = v136;
          v94 = v138;
          v245 = v177;
          v246 = v135;
          sub_1B98526A4(&v245, &v249, &v248, &v247);
          v81 = 0;
          v82 = v132;
          v83 = v133;
          v84 = v134;
          v85 = v135;
          v86 = v136;
          v87 = v138;
          v245 = v178;
          v246 = v136;
          sub_1B98526A4(&v245, &v249, &v248, &v247);
          v74 = 0;
          v75 = v132;
          v76 = v133;
          v77 = v134;
          v78 = v135;
          v79 = v136;
          v80 = v138;
          v245 = v179;
          v246 = v138;
          sub_1B98526A4(&v245, &v249, &v248, &v247);
          v67 = 0;
          v68 = v132;
          v69 = v133;
          v70 = v134;
          v71 = v135;
          v72 = v136;
          v73 = v138;
          _os_log_impl(&dword_1B982F000, v140, v141, "%{public}s Error creating CommunicationFilterItem from handle: %s. Not removing from blocklist", v110, 0x16u);
          sub_1B985281C(v111);
          sub_1B985281C(v112);
          sub_1B98F5C08();

          v108 = v67;
        }
      }

      else
      {
        v58 = v149;

        v108 = v58;
      }

      v61 = v108;
      MEMORY[0x1E69E5920](v140);
      v150(v197, v202);
      sub_1B983A3AC(v190);
      v146 = v61;
    }
  }

  return sub_1B9871430(__b);
}

uint64_t sub_1B9885EC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B9885F28(uint64_t a1)
{
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v5, v1);
  v8 = &v5 - v6;
  sub_1B9833334(v2, &v5 - v6);
  v7 = type metadata accessor for BlockedHandle();
  (*(*(v7 - 8) + 56))(v8, 0, 1);
  v10 = sub_1B98F1B88(v8, v7);
  v9 = v3;
  sub_1B983AAEC(v8);
  return v10;
}

uint64_t sub_1B9886020(uint64_t a1)
{
  v132 = a1;
  v138 = sub_1B98875C8;
  v139 = sub_1B988A274;
  v143 = sub_1B988A200;
  v147 = sub_1B988A29C;
  v149 = sub_1B988A264;
  v151 = sub_1B988A26C;
  v153 = sub_1B988A280;
  v155 = sub_1B988A28C;
  v157 = sub_1B988A294;
  v160 = sub_1B988A2A8;
  v107 = sub_1B98876F0;
  v108 = sub_1B988A328;
  v109 = sub_1B988A2B4;
  v110 = sub_1B988A350;
  v111 = sub_1B988A318;
  v112 = sub_1B988A320;
  v113 = sub_1B988A334;
  v114 = sub_1B988A340;
  v115 = sub_1B988A348;
  v116 = sub_1B988A35C;
  v181 = 0;
  v180 = 0;
  v117 = 0;
  v174 = 0;
  v118 = 0;
  v119 = *(type metadata accessor for BlockedHandle() - 8);
  v133 = v119;
  v134 = *(v119 + 64);
  v120 = (v134 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v1);
  v137 = v54 - v120;
  v129 = sub_1B98F5138();
  v127 = *(v129 - 8);
  v128 = v129 - 8;
  v123 = v127[8];
  v122 = (v123 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v132, v2);
  v124 = v54 - v122;
  v125 = (v123 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3, v54 - v122);
  v5 = v54 - v125;
  v126 = v54 - v125;
  v181 = v4;
  v180 = v6;
  v7 = sub_1B98F1E6C();
  v130 = v127[2];
  v131 = v127 + 2;
  v130(v5, v7, v129);
  sub_1B9833334(v132, v137);
  v135 = *(v133 + 80);
  v136 = (v135 + 16) & ~v135;
  v145 = 7;
  v146 = swift_allocObject();
  sub_1B9832680(v137, v146 + v136);
  v164 = sub_1B98F5118();
  v165 = sub_1B98F5BD8();
  v141 = 17;
  v150 = swift_allocObject();
  *(v150 + 16) = 34;
  v152 = swift_allocObject();
  v142 = 8;
  *(v152 + 16) = 8;
  v144 = 32;
  v8 = swift_allocObject();
  v140 = v8;
  *(v8 + 16) = v138;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v140;
  v154 = v9;
  *(v9 + 16) = v139;
  *(v9 + 24) = v10;
  v156 = swift_allocObject();
  *(v156 + 16) = 32;
  v158 = swift_allocObject();
  *(v158 + 16) = v142;
  v11 = swift_allocObject();
  v12 = v146;
  v148 = v11;
  *(v11 + 16) = v143;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v148;
  v161 = v13;
  *(v13 + 16) = v147;
  *(v13 + 24) = v14;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v159 = sub_1B98F5F98();
  v162 = v15;

  v16 = v150;
  v17 = v162;
  *v162 = v149;
  v17[1] = v16;

  v18 = v152;
  v19 = v162;
  v162[2] = v151;
  v19[3] = v18;

  v20 = v154;
  v21 = v162;
  v162[4] = v153;
  v21[5] = v20;

  v22 = v156;
  v23 = v162;
  v162[6] = v155;
  v23[7] = v22;

  v24 = v158;
  v25 = v162;
  v162[8] = v157;
  v25[9] = v24;

  v26 = v161;
  v27 = v162;
  v162[10] = v160;
  v27[11] = v26;
  sub_1B9851B38();

  if (os_log_type_enabled(v164, v165))
  {
    v28 = v117;
    v99 = sub_1B98F5C28();
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v100 = sub_1B985263C(0);
    v101 = sub_1B985263C(2);
    v103 = &v170;
    v170 = v99;
    v104 = &v169;
    v169 = v100;
    v105 = &v168;
    v168 = v101;
    v102 = 2;
    sub_1B9852690(2, &v170);
    sub_1B9852690(v102, v103);
    v166 = v149;
    v167 = v150;
    sub_1B98526A4(&v166, v103, v104, v105);
    v106 = v28;
    if (v28)
    {

      __break(1u);
    }

    else
    {
      v166 = v151;
      v167 = v152;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v96 = 0;
      v166 = v153;
      v167 = v154;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v95 = 0;
      v166 = v155;
      v167 = v156;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v94 = 0;
      v166 = v157;
      v167 = v158;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v93 = 0;
      v166 = v160;
      v167 = v161;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v92 = 0;
      _os_log_impl(&dword_1B982F000, v164, v165, "%{public}s handle: %s", v99, 0x16u);
      sub_1B985281C(v100);
      sub_1B985281C(v101);
      sub_1B98F5C08();

      v97 = v92;
    }
  }

  else
  {
    v29 = v117;

    v97 = v29;
  }

  v88 = v97;
  MEMORY[0x1E69E5920](v164);
  v89 = v127[1];
  v90 = v127 + 1;
  v89(v126, v129);
  v91 = sub_1B9882EBC(v132);
  if (v91)
  {
    v87 = v91;
    v84 = v91;
    v174 = v91;
    v83 = v171;
    sub_1B9880DC0(v121, v171);
    v81 = v172;
    v82 = v173;
    __swift_project_boxed_opaque_existential_1(v83, v172);
    v85 = (*(v82 + 32))(v84, v81);
    __swift_destroy_boxed_opaque_existential_1(v83);
    MEMORY[0x1E69E5920](v84);
    v86 = v85;
  }

  else
  {
    v30 = v124;
    v31 = sub_1B98F1E6C();
    v130(v30, v31, v129);
    sub_1B9833334(v132, v137);
    v63 = (v135 + 16) & ~v135;
    v68 = 7;
    v69 = swift_allocObject();
    sub_1B9832680(v137, v69 + v63);
    v79 = sub_1B98F5118();
    v80 = sub_1B98F5BB8();
    v65 = 17;
    v71 = swift_allocObject();
    *(v71 + 16) = 34;
    v72 = swift_allocObject();
    v66 = 8;
    *(v72 + 16) = 8;
    v67 = 32;
    v32 = swift_allocObject();
    v64 = v32;
    *(v32 + 16) = v107;
    *(v32 + 24) = 0;
    v33 = swift_allocObject();
    v34 = v64;
    v73 = v33;
    *(v33 + 16) = v108;
    *(v33 + 24) = v34;
    v74 = swift_allocObject();
    *(v74 + 16) = 32;
    v75 = swift_allocObject();
    *(v75 + 16) = v66;
    v35 = swift_allocObject();
    v36 = v69;
    v70 = v35;
    *(v35 + 16) = v109;
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v70;
    v77 = v37;
    *(v37 + 16) = v110;
    *(v37 + 24) = v38;
    v76 = sub_1B98F5F98();
    v78 = v39;

    v40 = v71;
    v41 = v78;
    *v78 = v111;
    v41[1] = v40;

    v42 = v72;
    v43 = v78;
    v78[2] = v112;
    v43[3] = v42;

    v44 = v73;
    v45 = v78;
    v78[4] = v113;
    v45[5] = v44;

    v46 = v74;
    v47 = v78;
    v78[6] = v114;
    v47[7] = v46;

    v48 = v75;
    v49 = v78;
    v78[8] = v115;
    v49[9] = v48;

    v50 = v77;
    v51 = v78;
    v78[10] = v116;
    v51[11] = v50;
    sub_1B9851B38();

    if (os_log_type_enabled(v79, v80))
    {
      v52 = v88;
      v55 = sub_1B98F5C28();
      v54[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v56 = sub_1B985263C(0);
      v57 = sub_1B985263C(2);
      v59 = &v179;
      v179 = v55;
      v60 = &v178;
      v178 = v56;
      v61 = &v177;
      v177 = v57;
      v58 = 2;
      sub_1B9852690(2, &v179);
      sub_1B9852690(v58, v59);
      v175 = v111;
      v176 = v71;
      sub_1B98526A4(&v175, v59, v60, v61);
      v62 = v52;
      if (v52)
      {

        __break(1u);
      }

      else
      {
        v175 = v112;
        v176 = v72;
        sub_1B98526A4(&v175, &v179, &v178, &v177);
        v54[3] = 0;
        v175 = v113;
        v176 = v73;
        sub_1B98526A4(&v175, &v179, &v178, &v177);
        v54[2] = 0;
        v175 = v114;
        v176 = v74;
        sub_1B98526A4(&v175, &v179, &v178, &v177);
        v54[1] = 0;
        v175 = v115;
        v176 = v75;
        sub_1B98526A4(&v175, &v179, &v178, &v177);
        v54[0] = 0;
        v175 = v116;
        v176 = v77;
        sub_1B98526A4(&v175, &v179, &v178, &v177);
        _os_log_impl(&dword_1B982F000, v79, v80, "%{public}s Error creating CommunicationFilterItem from handle: %s. Returning false", v55, 0x16u);
        sub_1B985281C(v56);
        sub_1B985281C(v57);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v79);
    v89(v124, v129);
    v86 = 0;
  }

  return v86 & 1;
}

uint64_t sub_1B98875F8(uint64_t a1)
{
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v5, v1);
  v8 = &v5 - v6;
  sub_1B9833334(v2, &v5 - v6);
  v7 = type metadata accessor for BlockedHandle();
  (*(*(v7 - 8) + 56))(v8, 0, 1);
  v10 = sub_1B98F1B88(v8, v7);
  v9 = v3;
  sub_1B983AAEC(v8);
  return v10;
}

uint64_t sub_1B9887720(uint64_t a1)
{
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v5, v1);
  v8 = &v5 - v6;
  sub_1B9833334(v2, &v5 - v6);
  v7 = type metadata accessor for BlockedHandle();
  (*(*(v7 - 8) + 56))(v8, 0, 1);
  v10 = sub_1B98F1B88(v8, v7);
  v9 = v3;
  sub_1B983AAEC(v8);
  return v10;
}

uint64_t sub_1B9887818(_BYTE *a1)
{
  v87 = a1;
  v92 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v121 = 0;
  v78 = 0;
  v86 = sub_1B98F5138();
  v80 = v86;
  v81 = *(v86 - 8);
  v85 = v81;
  v82 = v81;
  v83 = *(v81 + 64);
  v1 = &v31 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v1;
  v129 = MEMORY[0x1EEE9AC00](v87, v86);
  v128 = v2;
  v3 = sub_1B98F1E6C();
  (*(v85 + 16))(v1, v3, v86);
  sub_1B98F54D8();
  v101 = 7;
  v102 = swift_allocObject();
  *(v102 + 16) = v87;
  v115 = sub_1B98F5118();
  v88 = v115;
  v114 = sub_1B98F5BD8();
  v89 = v114;
  v96 = 17;
  v105 = swift_allocObject();
  v90 = v105;
  *(v105 + 16) = 34;
  v106 = swift_allocObject();
  v91 = v106;
  v98 = 8;
  *(v106 + 16) = 8;
  v95 = 32;
  v100 = 32;
  v4 = swift_allocObject();
  v5 = v92;
  v93 = v4;
  *(v4 + 16) = sub_1B9888740;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v93;
  v107 = v6;
  v94 = v6;
  *(v6 + 16) = sub_1B988A380;
  *(v6 + 24) = v7;
  v108 = swift_allocObject();
  v97 = v108;
  *(v108 + 16) = v95;
  v109 = swift_allocObject();
  v99 = v109;
  *(v109 + 16) = v98;
  v8 = swift_allocObject();
  v9 = v102;
  v103 = v8;
  *(v8 + 16) = sub_1B988A368;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v103;
  v112 = v10;
  v104 = v10;
  *(v10 + 16) = sub_1B988A3A8;
  *(v10 + 24) = v11;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v110 = sub_1B98F5F98();
  v111 = v12;

  v13 = v105;
  v14 = v111;
  *v111 = sub_1B988A370;
  v14[1] = v13;

  v15 = v106;
  v16 = v111;
  v111[2] = sub_1B988A378;
  v16[3] = v15;

  v17 = v107;
  v18 = v111;
  v111[4] = sub_1B988A38C;
  v18[5] = v17;

  v19 = v108;
  v20 = v111;
  v111[6] = sub_1B988A398;
  v20[7] = v19;

  v21 = v109;
  v22 = v111;
  v111[8] = sub_1B988A3A0;
  v22[9] = v21;

  v23 = v111;
  v24 = v112;
  v111[10] = sub_1B988A3B4;
  v23[11] = v24;
  sub_1B9851B38();

  if (os_log_type_enabled(v115, v114))
  {
    v25 = v78;
    v71 = sub_1B98F5C28();
    v68 = v71;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v72 = sub_1B985263C(0);
    v70 = v72;
    v74 = 2;
    v73 = sub_1B985263C(2);
    v120[0] = v71;
    v119 = v72;
    v118 = v73;
    v75 = v120;
    sub_1B9852690(v74, v120);
    sub_1B9852690(v74, v75);
    v116 = sub_1B988A370;
    v117 = v90;
    sub_1B98526A4(&v116, v75, &v119, &v118);
    v76 = v25;
    v77 = v25;
    if (v25)
    {
      v66 = 0;

      __break(1u);
    }

    else
    {
      v116 = sub_1B988A378;
      v117 = v91;
      sub_1B98526A4(&v116, v120, &v119, &v118);
      v64 = 0;
      v65 = 0;
      v116 = sub_1B988A38C;
      v117 = v94;
      sub_1B98526A4(&v116, v120, &v119, &v118);
      v62 = 0;
      v63 = 0;
      v116 = sub_1B988A398;
      v117 = v97;
      sub_1B98526A4(&v116, v120, &v119, &v118);
      v60 = 0;
      v61 = 0;
      v116 = sub_1B988A3A0;
      v117 = v99;
      sub_1B98526A4(&v116, v120, &v119, &v118);
      v58 = 0;
      v59 = 0;
      v116 = sub_1B988A3B4;
      v117 = v104;
      sub_1B98526A4(&v116, v120, &v119, &v118);
      v56 = 0;
      v57 = 0;
      _os_log_impl(&dword_1B982F000, v88, v89, "%{public}s handles: %s", v68, 0x16u);
      sub_1B985281C(v70);
      sub_1B985281C(v73);
      sub_1B98F5C08();

      v67 = v56;
    }
  }

  else
  {
    v26 = v78;

    v67 = v26;
  }

  v52 = v67;

  (*(v82 + 8))(v84, v80);
  v54 = type metadata accessor for BlockedHandle();
  v53 = v54;
  v55 = sub_1B9853574();
  if (sub_1B98F5AA8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5770, &qword_1B98FB058);
    sub_1B98F5F98();
    v32 = sub_1B98F54A8();
    v33 = v52;
    return v32;
  }

  v44 = sub_1B98887E0();
  v42 = v44;
  v127 = v44;
  v43 = &v123;
  sub_1B9880DC0(v79, &v123);
  v48 = v124;
  v49 = v125;
  __swift_project_boxed_opaque_existential_1(v43, v124);
  v46 = sub_1B987EA80();
  v45 = v46;
  v122[1] = sub_1B98F5538();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5778, &qword_1B98FB060);
  sub_1B988A3C0();
  v50 = sub_1B98F5938();
  v51 = (*(v49 + 40))(v50, v48);

  v122[0] = v51;
  if (v51)
  {
    v126 = v122[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5788, &qword_1B98FB068);
    v41 = sub_1B98F5F98();
    sub_1B988A448();
    v126 = sub_1B98F54A8();
    if (v122[0])
    {
      sub_1B988A4C8(v122);
    }
  }

  v27 = v52;
  __swift_destroy_boxed_opaque_existential_1(&v123);
  v35 = v126;
  v34 = v126;
  v121 = v126;
  v120[3] = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5770, &qword_1B98FB058);
  sub_1B98F5F98();
  v120[2] = sub_1B98F54A8();
  sub_1B98F54D8();
  sub_1B98F54D8();
  v36 = &v31;
  MEMORY[0x1EEE9AC00](&v31, v28);
  v37 = &v31 - 4;
  *(&v31 - 2) = v42;
  *(&v31 - 1) = v29;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5458, &qword_1B98FB070);
  sub_1B988A520();
  sub_1B98F57B8();
  v40 = v27;
  if (!v27)
  {

    v31 = v120[4];

    v32 = v31;
    v33 = v40;
    return v32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9888770(uint64_t a1)
{
  sub_1B98F54D8();
  v5 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v4 = sub_1B98F1B88(&v5, v1);
  sub_1B9855ACC(&v5);
  return v4;
}

uint64_t sub_1B98887E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57A0, &qword_1B98FB078);
  sub_1B98F5F98();
  type metadata accessor for BlockedHandle();
  sub_1B987EA80();
  sub_1B9853574();
  sub_1B98F54A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57A8, &qword_1B98FB080);
  sub_1B988A520();
  sub_1B98F57B8();
  return v1;
}

uint64_t sub_1B988890C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v80 = a4;
  v91 = a3;
  v81 = a2;
  v79 = a1;
  v89 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v99 = 0;
  v75 = sub_1B98F5138();
  v76 = *(v75 - 8);
  v77 = v76;
  v4 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](0, v75);
  v78 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for BlockedHandle();
  v82 = *(v92 - 8);
  v83 = v82;
  v85 = *(v82 + 64);
  v84 = v85;
  v7 = MEMORY[0x1EEE9AC00](v81, v6);
  v87 = (v85 + 15) & 0xFFFFFFFFFFFFFFF0;
  v86 = &v31 - v87;
  v8 = MEMORY[0x1EEE9AC00](v7, &v31 - v87);
  v94 = &v31 - v87;
  v88 = &v31 - v87;
  v110 = v9;
  v109 = v8;
  v108 = v10;
  v107 = v11;
  sub_1B9833334(v8, &v31 - v87);
  v93 = sub_1B987EA80();
  v90 = v93;
  sub_1B9853574();
  sub_1B98F55B8();
  v95 = v106;
  if (v106)
  {
    v73 = v95;
    v51 = v95;
    v99 = v95;
    sub_1B983A3AC(v88);
    sub_1B9833334(v81, v86);
    v27 = v51;
    v97 = v51;
    v50 = &v31;
    MEMORY[0x1EEE9AC00](&v31, v28);
    v49 = &v31 - 4;
    *(&v31 - 2) = sub_1B988937C;
    *(&v31 - 1) = 0;
    sub_1B988A448();
    sub_1B98F55A8();

    v96 = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5458, &qword_1B98FB070);
    sub_1B98F55C8();

    result = v74;
    v52 = v74;
  }

  else
  {
    v12 = v78;
    sub_1B983A3AC(v88);
    v13 = sub_1B98F1E6C();
    (*(v77 + 16))(v12, v13, v75);
    sub_1B9833334(v81, v86);
    v53 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v62 = swift_allocObject();
    sub_1B9832680(v86, v62 + v53);
    v72 = sub_1B98F5118();
    v54 = v72;
    v71 = sub_1B98F5BB8();
    v55 = v71;
    v56 = 17;
    v61 = 7;
    v65 = swift_allocObject();
    v57 = v65;
    v58 = 32;
    *(v65 + 16) = 32;
    v14 = swift_allocObject();
    v15 = v58;
    v66 = v14;
    v59 = v14;
    *(v14 + 16) = 8;
    v60 = v15;
    v16 = swift_allocObject();
    v17 = v62;
    v63 = v16;
    *(v16 + 16) = sub_1B988A964;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v63;
    v69 = v18;
    v64 = v18;
    *(v18 + 16) = sub_1B988A9D8;
    *(v18 + 24) = v19;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v67 = sub_1B98F5F98();
    v68 = v20;

    v21 = v65;
    v22 = v68;
    *v68 = sub_1B988A9C8;
    v22[1] = v21;

    v23 = v66;
    v24 = v68;
    v68[2] = sub_1B988A9D0;
    v24[3] = v23;

    v25 = v68;
    v26 = v69;
    v68[4] = sub_1B988A9E4;
    v25[5] = v26;
    sub_1B9851B38();

    if (os_log_type_enabled(v72, v71))
    {
      v46 = v74;
      v41 = sub_1B98F5C28();
      v38 = v41;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v42 = sub_1B985263C(0);
      v40 = v42;
      v44 = 1;
      v43 = sub_1B985263C(1);
      v104 = v41;
      v103 = v42;
      v102 = v43;
      v45 = &v104;
      sub_1B9852690(2, &v104);
      sub_1B9852690(v44, v45);
      v30 = v46;
      v100 = sub_1B988A9C8;
      v101 = v57;
      sub_1B98526A4(&v100, v45, &v103, &v102);
      v47 = v30;
      v48 = v30;
      if (v30)
      {
        v36 = 0;

        __break(1u);
      }

      else
      {
        v100 = sub_1B988A9D0;
        v101 = v59;
        sub_1B98526A4(&v100, &v104, &v103, &v102);
        v34 = 0;
        v35 = 0;
        v100 = sub_1B988A9E4;
        v101 = v64;
        sub_1B98526A4(&v100, &v104, &v103, &v102);
        v32 = 0;
        v33 = 0;
        _os_log_impl(&dword_1B982F000, v54, v55, "No item found for %s", v38, 0xCu);
        sub_1B985281C(v40);
        sub_1B985281C(v43);
        sub_1B98F5C08();

        v37 = v32;
      }
    }

    else
    {

      v37 = v74;
    }

    v31 = v37;

    (*(v77 + 8))(v78, v75);
    sub_1B9833334(v81, v86);
    v105 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5458, &qword_1B98FB070);
    sub_1B98F55C8();
    return v31;
  }

  return result;
}

uint64_t sub_1B9889388@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1B98893C8(uint64_t a1)
{
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v5, v1);
  v8 = &v5 - v6;
  sub_1B9833334(v2, &v5 - v6);
  v7 = type metadata accessor for BlockedHandle();
  (*(*(v7 - 8) + 56))(v8, 0, 1);
  v10 = sub_1B98F1B88(v8, v7);
  v9 = v3;
  sub_1B983AAEC(v8);
  return v10;
}

uint64_t sub_1B988953C(uint64_t a1, uint64_t a2)
{
  v65 = a1;
  v66 = a2;
  v54 = sub_1B988A8D8;
  v55 = sub_1B988A94C;
  v56 = sub_1B988A93C;
  v57 = sub_1B988A944;
  v58 = sub_1B988A958;
  v81 = 0;
  v80 = 0;
  v74 = 0;
  v59 = 0;
  v60 = *(type metadata accessor for BlockedHandle() - 8);
  v61 = v60;
  v62 = *(v60 + 64);
  v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2);
  v64 = &v23 - v63;
  v67 = sub_1B98F5138();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v66, v3);
  v71 = &v23 - v70;
  v81 = v5;
  v80 = v4;
  v72 = sub_1B9882EBC(v4);
  if (v72)
  {
    v52 = v72;
    v36 = v72;
    v74 = v72;
    sub_1B9833334(v66, v64);
    MEMORY[0x1E69E5928](v36, v19, v20);
    v35 = &v73;
    v73 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57A8, &qword_1B98FB080);
    sub_1B98F55C8();
    MEMORY[0x1E69E5920](v36);
    result = v53;
    v37 = v53;
  }

  else
  {
    v6 = v71;
    v7 = sub_1B98F1E6C();
    (*(v68 + 16))(v6, v7, v67);
    sub_1B9833334(v66, v64);
    v38 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v41 = 7;
    v42 = swift_allocObject();
    sub_1B9832680(v64, v42 + v38);
    v50 = sub_1B98F5118();
    v51 = sub_1B98F5BB8();
    v39 = 17;
    v44 = swift_allocObject();
    *(v44 + 16) = 32;
    v45 = swift_allocObject();
    *(v45 + 16) = 8;
    v40 = 32;
    v8 = swift_allocObject();
    v9 = v42;
    v43 = v8;
    *(v8 + 16) = v54;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v43;
    v47 = v10;
    *(v10 + 16) = v55;
    *(v10 + 24) = v11;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v46 = sub_1B98F5F98();
    v48 = v12;

    v13 = v44;
    v14 = v48;
    *v48 = v56;
    v14[1] = v13;

    v15 = v45;
    v16 = v48;
    v48[2] = v57;
    v16[3] = v15;

    v17 = v47;
    v18 = v48;
    v48[4] = v58;
    v18[5] = v17;
    sub_1B9851B38();

    if (os_log_type_enabled(v50, v51))
    {
      v28 = sub_1B98F5C28();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v29 = sub_1B985263C(0);
      v30 = sub_1B985263C(1);
      v31 = &v79;
      v79 = v28;
      v32 = &v78;
      v78 = v29;
      v33 = &v77;
      v77 = v30;
      sub_1B9852690(2, &v79);
      sub_1B9852690(1, v31);
      v22 = v53;
      v75 = v56;
      v76 = v44;
      sub_1B98526A4(&v75, v31, v32, v33);
      v34 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v75 = v57;
        v76 = v45;
        sub_1B98526A4(&v75, &v79, &v78, &v77);
        v25 = 0;
        v75 = v58;
        v76 = v47;
        sub_1B98526A4(&v75, &v79, &v78, &v77);
        v24 = 0;
        sub_1B985281C(v29);
        sub_1B985281C(v30);
        sub_1B98F5C08();

        v26 = v24;
      }
    }

    else
    {

      v26 = v53;
    }

    v23 = v26;
    MEMORY[0x1E69E5920](v50);
    (*(v68 + 8))(v71, v67);
    return v23;
  }

  return result;
}

uint64_t sub_1B9889D78(uint64_t a1)
{
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v5, v1);
  v8 = &v5 - v6;
  sub_1B9833334(v2, &v5 - v6);
  v7 = type metadata accessor for BlockedHandle();
  (*(*(v7 - 8) + 56))(v8, 0, 1);
  v10 = sub_1B98F1B88(v8, v7);
  v9 = v3;
  sub_1B983AAEC(v8);
  return v10;
}

uint64_t sub_1B9889E70()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B9889F28()
{
  v1 = *(type metadata accessor for BlockedHandle() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B9882DC4(v2);
}

unint64_t sub_1B988A004()
{
  v2 = qword_1EBBD5768;
  if (!qword_1EBBD5768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5730, &qword_1B98FB010);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5768);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B988A094()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B988A14C()
{
  v1 = *(type metadata accessor for BlockedHandle() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B9885F28(v2);
}

uint64_t sub_1B988A200()
{
  v1 = *(type metadata accessor for BlockedHandle() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B98875F8(v2);
}

uint64_t sub_1B988A2B4()
{
  v1 = *(type metadata accessor for BlockedHandle() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B9887720(v2);
}

unint64_t sub_1B988A3C0()
{
  v2 = qword_1EBBD5780;
  if (!qword_1EBBD5780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5778, &qword_1B98FB060);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5780);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B988A448()
{
  v2 = qword_1EBBD5790;
  if (!qword_1EBBD5790)
  {
    sub_1B987EA80();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5790);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B988A4C8(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B988A520()
{
  v2 = qword_1EBBD5798;
  if (!qword_1EBBD5798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5090, &qword_1B98FA940);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5798);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B988A5D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 24)))
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B988A6F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B988A8D8()
{
  v1 = *(type metadata accessor for BlockedHandle() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B9889D78(v2);
}

uint64_t sub_1B988A964()
{
  v1 = *(type metadata accessor for BlockedHandle() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B98893C8(v2);
}

unint64_t sub_1B988AB94()
{
  v2 = qword_1EBBD57F0;
  if (!qword_1EBBD57F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD57E8, &qword_1B98FB190);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD57F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B988AC1C(uint64_t a1)
{
  v11 = a1;
  v10 = v1;
  v9 = sub_1B98F5468();
  BlockedHandle.value.getter();
  if ((sub_1B98F5708() & 1) == 0)
  {
    sub_1B98F54D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5838, &qword_1B98FB1B0);
    sub_1B98F5A88();
  }

  v2 = (a1 + *(type metadata accessor for BlockedHandle() + 20));
  v6 = *v2;
  v7 = v2[1];
  sub_1B98F54D8();
  if (v7)
  {
    v3 = sub_1B98F5708();
    if ((v3 & 1) == 0)
    {
      sub_1B98F54D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5838, &qword_1B98FB1B0);
      sub_1B98F5A88();
    }
  }

  sub_1B98F54D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5838, &qword_1B98FB1B0);
  sub_1B988B0C0();
  v5 = sub_1B98F5938();

  sub_1B988B148(&v9);
  return v5;
}

uint64_t *sub_1B988AE50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_1B988AE90();
  return a1;
}

uint64_t *sub_1B988AED4(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t *sub_1B988AF00(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B988AF2C()
{
  v2 = qword_1EBBD5800;
  if (!qword_1EBBD5800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD55C8, &qword_1B98FAAC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5800);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B988AFB4(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B988AFE0()
{
  v2 = qword_1EBBD5820;
  if (!qword_1EBBD5820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5268, &qword_1B98FAC20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5820);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B988B068(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t *sub_1B988B094(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B988B0C0()
{
  v2 = qword_1EBBD5840;
  if (!qword_1EBBD5840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5838, &qword_1B98FB1B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5840);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B988B148(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B988B174()
{
  v2 = qword_1EBBD5850;
  if (!qword_1EBBD5850)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5850);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B988B248()
{
  result = *(v0 + 16);
  sub_1B988B218();
  return result;
}

uint64_t sub_1B988B280()
{
  result = *(v0 + 16);
  sub_1B988B250();
  return result;
}

BOOL sub_1B988B2B0(uint64_t *a1, void *a2)
{
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v5 = a1[1];
  v9 = *a1;
  v10 = v5;
  v8 = a2;
  v3 = *a2;
  sub_1B98F54D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
  v4 = sub_1B98F54D8();

  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD58A8, &unk_1B98FB1F8);
  sub_1B988BD30();
  v6 = sub_1B98F5818();
  sub_1B988BDB8(&v7);
  return (v6 & 1) == 0;
}

uint64_t sub_1B988B3D8(id *a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v27 = a2;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v23 = *a1;
  v40 = v23;
  v38 = a2;
  v39 = a3;
  v25 = [v23 phoneNumbers];
  v24 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5D00, &qword_1B98FB1F0);
  v37 = sub_1B98F58B8();
  sub_1B98F54D8();
  v34 = v27;
  v35 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5890, &qword_1B98FC1A0);
  v29 = v30;
  sub_1B988BB98();
  v32 = v31;
  v33 = sub_1B98F57E8();
  if (v31)
  {

    __break(1u);
  }

  else
  {
    v22 = v33;

    sub_1B988BC20(&v37);

    v3 = v23;
    sub_1B98F54D8();
    if (v33)
    {
      v20 = 1;
      v21 = v32;
    }

    else
    {
      v17 = v32;
      v14 = [v23 emailAddresses];
      v36 = sub_1B98F58B8();
      sub_1B98F54D8();
      v15 = v10;
      MEMORY[0x1EEE9AC00](v10, v4);
      v16 = v9;
      v9[2] = v27;
      v9[3] = v5;
      sub_1B988BC7C();
      v6 = v17;
      v7 = sub_1B98F57E8();
      v18 = v6;
      v19 = v7;
      if (v6)
      {

        __break(1u);
      }

      else
      {
        v13 = v19;

        sub_1B988BD04(&v36);

        v20 = v13;
        v21 = v18;
      }
    }

    v12 = v21;
    v11 = v20;

    return v11 & 1;
  }

  return result;
}

uint64_t sub_1B988B69C(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 value];
  v10 = [v5 stringValue];
  v6 = sub_1B98F5658();
  v9 = v3;
  MEMORY[0x1E69E5920](v5);
  v11 = MEMORY[0x1BFADD650](v6, v9, a2, a3);

  MEMORY[0x1E69E5920](v10);
  return v11 & 1;
}

uint64_t sub_1B988B770(id *a1)
{
  v3 = [*a1 value];
  v1 = sub_1B98F5658();
  v4 = MEMORY[0x1BFADD650](v1);

  MEMORY[0x1E69E5920](v3);
  return v4 & 1;
}

id sub_1B988B80C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5CF0, &unk_1B98FB210);
  v2 = sub_1B98F58A8();
  v3 = [v1 initWithKeysToFetch_];
  MEMORY[0x1E69E5920](v2);

  return v3;
}

unint64_t sub_1B988B944()
{
  v2 = qword_1EBBD5860;
  if (!qword_1EBBD5860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5268, &qword_1B98FAC20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5860);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B988B9CC(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B988BA28()
{
  v2 = qword_1EBBD5870;
  if (!qword_1EBBD5870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5920, &qword_1B98FB180);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5870);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B988BAE0()
{
  v2 = qword_1EBBD5878;
  if (!qword_1EBBD5878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5920, &qword_1B98FB180);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5878);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B988BB98()
{
  v2 = qword_1EBBD5898;
  if (!qword_1EBBD5898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5890, &qword_1B98FC1A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5898);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B988BC20(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B988BC4C(id *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B988B770(a1) & 1;
}

unint64_t sub_1B988BC7C()
{
  v2 = qword_1EBBD58A0;
  if (!qword_1EBBD58A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5890, &qword_1B98FC1A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD58A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B988BD04(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B988BD30()
{
  v2 = qword_1EBBD58B0;
  if (!qword_1EBBD58B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD58A8, &unk_1B98FB1F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD58B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B988BDB8(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B988BE04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_1B988BEBC(uint64_t *a1)
{
  __dst[5] = 0;
  v10 = 0;
  __dst[6] = a1;
  sub_1B988C034(a1, v11);
  if (v11[3])
  {
    sub_1B988C23C(v11, __dst);
    sub_1B988BE04(__dst, v8);
    sub_1B988C23C(v8, (v7 + 16));
    __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    sub_1B988C0C8(v11);
    sub_1B988C104();
    v5 = sub_1B988C168();
    v10 = v5;
    [v5 setIncludeLocalContacts_];
    [v5 setIncludeAcceptedIntroductions_];
    v4 = sub_1B988C198();
    MEMORY[0x1E69E5928](v5, v1, v2);
    v9[3] = v4;
    v9[4] = &off_1F3796988;
    v9[0] = sub_1B988C1FC(v5);
    sub_1B988C23C(v9, (v7 + 16));
    MEMORY[0x1E69E5920](v5);
  }

  sub_1B988C0C8(a1);
  return v7;
}

void *sub_1B988C034(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

uint64_t *sub_1B988C0C8(uint64_t *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

unint64_t sub_1B988C104()
{
  v2 = qword_1EBBD58C0;
  if (!qword_1EBBD58C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD58C0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B988C198()
{
  v2 = qword_1EDBDAC18;
  if (!qword_1EDBDAC18)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EDBDAC18);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B988C278(uint64_t a1)
{
  v107 = a1;
  v90 = 0;
  v85 = sub_1B988D1A0;
  v86 = sub_1B988D5BC;
  v87 = sub_1B988D5AC;
  v88 = sub_1B988D5B4;
  v89 = sub_1B988D5C8;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v111 = __b;
  v113 = 40;
  memset(__b, 0, sizeof(__b));
  v123 = 0;
  v124 = 0;
  v122 = 0;
  v114 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10);
  v91 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3);
  v92 = &v30 - v91;
  v93 = 0;
  v94 = sub_1B98F5138();
  v95 = *(v94 - 8);
  v96 = v94 - 8;
  v97 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v93, v4);
  v98 = &v30 - v97;
  v108 = type metadata accessor for BlockedHandle();
  v99 = (*(*(v108 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v108, v5);
  v100 = &v30 - v99;
  v130 = &v30 - v99;
  v101 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5678, &unk_1B98FAC90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v107, v6);
  v102 = &v30 - v101;
  v103 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7, &v30 - v101);
  v104 = &v30 - v103;
  v129 = v9;
  v128 = v1;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v110 = sub_1B9853574();
  v10 = sub_1B98F54D8();
  v106 = &v126;
  v126 = v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD58E0, &qword_1B98FB208);
  sub_1B988D0B8();
  v127 = sub_1B98F5AE8();
  sub_1B98F54D8();
  v112 = &v131;
  sub_1B98F5498();
  memcpy(v111, v112, v113);
  for (i = v114; ; i = v38)
  {
    v82 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58F0, &qword_1B98FACA0);
    sub_1B98F5558();
    sub_1B98732E4(v102, v104);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
    if ((*(*(v83 - 8) + 48))(v104, 1) == 1)
    {
      break;
    }

    v11 = &v104[*(v83 + 48)];
    v80 = *v11;
    v81 = v11[8];
    sub_1B9832680(v104, v100);
    v123 = v80;
    v124 = v81 & 1;
    if (v81)
    {
      v78 = v82;
    }

    else
    {
      v79 = v80;
      v122 = v80;
      v121[1] = v80;
      v12 = *sub_1B98E7034();
      v77 = v121;
      v121[0] = v12;
      sub_1B9873520();
      v13 = sub_1B98F60E8();
      if (v13)
      {
        v14 = v98;
        v15 = sub_1B98F1E6C();
        (*(v95 + 16))(v14, v15, v94);

        v75 = sub_1B98F5118();
        v76 = sub_1B98F5BD8();
        v65 = 17;
        v67 = 7;
        v69 = swift_allocObject();
        *(v69 + 16) = 32;
        v70 = swift_allocObject();
        *(v70 + 16) = 8;
        v66 = 32;
        v16 = swift_allocObject();
        v17 = v84;
        v68 = v16;
        *(v16 + 16) = v85;
        *(v16 + 24) = v17;
        v18 = swift_allocObject();
        v19 = v68;
        v72 = v18;
        *(v18 + 16) = v86;
        *(v18 + 24) = v19;
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
        v71 = sub_1B98F5F98();
        v73 = v20;

        v21 = v69;
        v22 = v73;
        *v73 = v87;
        v22[1] = v21;

        v23 = v70;
        v24 = v73;
        v73[2] = v88;
        v24[3] = v23;

        v25 = v72;
        v26 = v73;
        v73[4] = v89;
        v26[5] = v25;
        sub_1B9851B38();

        if (os_log_type_enabled(v75, v76))
        {
          v27 = v82;
          v55 = sub_1B98F5C28();
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
          v56 = sub_1B985263C(0);
          v57 = sub_1B985263C(1);
          v58 = &v120;
          v120 = v55;
          v59 = &v119;
          v119 = v56;
          v60 = &v118;
          v118 = v57;
          sub_1B9852690(2, &v120);
          sub_1B9852690(1, v58);
          v116 = v87;
          v117 = v69;
          sub_1B98526A4(&v116, v58, v59, v60);
          v61 = v27;
          v62 = v69;
          v63 = v70;
          v64 = v72;
          if (v27)
          {
            v50 = v62;
            v51 = v63;
            v52 = v64;
            v41 = v64;
            v40 = v63;

            __break(1u);
          }

          else
          {
            v116 = v88;
            v117 = v70;
            sub_1B98526A4(&v116, &v120, &v119, &v118);
            v46 = 0;
            v47 = v69;
            v48 = v70;
            v49 = v72;
            v116 = v89;
            v117 = v72;
            sub_1B98526A4(&v116, &v120, &v119, &v118);
            v42 = 0;
            v43 = v69;
            v44 = v70;
            v45 = v72;
            _os_log_impl(&dword_1B982F000, v75, v76, "%s: Removing handle from set", v55, 0xCu);
            sub_1B985281C(v56);
            sub_1B985281C(v57);
            sub_1B98F5C08();

            v53 = v42;
          }
        }

        else
        {
          v28 = v82;

          v53 = v28;
        }

        v39 = v53;
        MEMORY[0x1E69E5920](v75);
        (*(v95 + 8))(v98, v94);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
        sub_1B98F5A98();
        sub_1B983AAEC(v92);
        v78 = v39;
      }

      else
      {
        v78 = v82;
      }
    }

    v38 = v78;
    sub_1B983A3AC(v100);
  }

  sub_1B987349C(__b);
  v36 = v127;
  sub_1B98F54D8();
  v37 = sub_1B98F5AA8();

  if (v37)
  {
    sub_1B98F5F98();
    v31 = sub_1B98F5A38();
    sub_1B9868D78(&v127);
    return v31;
  }

  else
  {
    v33 = &v127;
    v32 = v127;
    sub_1B98F54D8();
    v34 = sub_1B9834ABC(v32);

    sub_1B9868D78(v33);
    return v34;
  }
}

unint64_t sub_1B988D0B8()
{
  v2 = qword_1EBBD58E8;
  if (!qword_1EBBD58E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD58E0, &qword_1B98FB208);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD58E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B988D140(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B988D1A8(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B988D208@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B988D23C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
  sub_1B988BA28();
  return (sub_1B98F5B58() ^ 1) & 1;
}

uint64_t sub_1B988D2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a2;
  v4 = a1;
  v10 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5958, qword_1B98FB288);
  v5 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v4 - v5;
  v10 = MEMORY[0x1EEE9AC00](v4, v2);
  sub_1B988D88C(v10, &v4 - v5);
  v9 = *(v8 + *(v6 + 48));
  sub_1B9832680(v8, v7);
}

uint64_t sub_1B988D3B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v11 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5958, qword_1B98FB288);
  v7 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v5 - v7;
  v11 = MEMORY[0x1EEE9AC00](v6, v2);
  sub_1B988D88C(v11, &v5 - v7);
  v3 = v10;
  *v9 = *&v10[*(v8 + 48)];
  return sub_1B983A3AC(v3);
}

id sub_1B988D55C(uint64_t a1)
{
  v4 = [v1 initWithConfiguration_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1B988D5E4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B988D6CC()
{
  v2 = qword_1EBBD5930;
  if (!qword_1EBBD5930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5810, &unk_1B98FB220);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5930);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B988D754()
{
  v2 = qword_1EBBD5948;
  if (!qword_1EBBD5948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5810, &unk_1B98FB220);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5948);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B988D7DC()
{
  v2 = qword_1EBBD5950;
  if (!qword_1EBBD5950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5920, &qword_1B98FB180);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5950);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B988D88C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 16))(a2, a1);
  v12 = type metadata accessor for BlockedHandle();
  v3 = (a1 + v12[5]);
  v6 = (a2 + v12[5]);
  *v6 = *v3;
  v7 = v3[1];
  sub_1B98F54D8();
  v6[1] = v7;
  v8 = v12[6];
  v9 = *(a1 + v8);
  sub_1B98F54D8();
  *(a2 + v8) = v9;
  v10 = v12[7];
  v11 = *(a1 + v10);
  sub_1B98F54D8();
  *(a2 + v10) = v11;
  v4 = v12[8];
  v13 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v14 = *(a1 + v4 + 8);
  sub_1B98F54D8();
  *(v13 + 8) = v14;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5958, qword_1B98FB288) + 48);
  v18 = *(a1 + v17);
  sub_1B98F54D8();
  result = a2;
  *(a2 + v17) = v18;
  return result;
}

uint64_t sub_1B988DAEC()
{
  v2 = *(v0 + 16);
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t sub_1B988DB20(uint64_t a1)
{
  v171 = a1;
  v151 = 0;
  v141 = sub_1B988F1A0;
  v142 = sub_1B988F458;
  v143 = sub_1B988F2A0;
  v144 = sub_1B988F480;
  v145 = sub_1B988F448;
  v146 = sub_1B988F450;
  v147 = sub_1B988F464;
  v148 = sub_1B988F470;
  v149 = sub_1B988F478;
  v150 = sub_1B988F48C;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  v174 = __b;
  v176 = 40;
  memset(__b, 0, sizeof(__b));
  v187 = 0;
  v184 = 0;
  v177 = 0;
  v167 = 0;
  v152 = sub_1B98F5138();
  v153 = *(v152 - 8);
  v154 = v152 - 8;
  v155 = (*(v153 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2);
  v156 = &v40 - v155;
  v172 = type metadata accessor for BlockedHandle();
  v158 = *(v172 - 8);
  v157 = v172 - 8;
  v159 = v158;
  v160 = *(v158 + 64);
  v161 = (v160 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v172, v3);
  v162 = &v40 - v161;
  v163 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v40 - v161, v5);
  v164 = &v40 - v163;
  v165 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v40 - v163, v7);
  v166 = &v40 - v165;
  v192 = &v40 - v165;
  v168 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v167, v172);
  v169 = &v40 - v168;
  v191 = v8;
  v190 = v1;
  v170 = sub_1B98F5F98();
  v173 = sub_1B9853574();
  v189 = sub_1B98F5A38();
  sub_1B98F54D8();
  v175 = &v193;
  sub_1B98F5A58();
  memcpy(v174, v175, v176);
  for (i = v177; ; i = v42)
  {
    v139 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
    sub_1B98F5AB8();
    if ((*(v158 + 48))(v169, 1, v172) == 1)
    {
      break;
    }

    sub_1B9832680(v169, v166);
    v131 = *(v140 + 16);
    MEMORY[0x1E69E5928](v131, v9, v10);
    BlockedHandle.value.getter();
    v129 = v11;
    v130 = sub_1B98F5648();

    v132 = [v131 interactionFeaturesForHandle_];
    MEMORY[0x1E69E5920](v130);
    MEMORY[0x1E69E5920](v131);
    v134 = sub_1B988F0DC();
    v133 = MEMORY[0x1E69E6158];
    v135 = MEMORY[0x1E69E6168];
    v136 = sub_1B98F5478();
    v187 = v136;
    MEMORY[0x1E69E5920](v132);
    v12 = sub_1B98F55E8();
    v137 = v185;
    v185[0] = v12;
    v185[1] = v13;
    sub_1B98F55B8();
    sub_1B9868BFC(v137);
    v138 = v186;
    if (v186)
    {
      v128 = v138;
      v126 = v138;
      v184 = v138;
      if ([v138 integerValue] <= 0)
      {
        MEMORY[0x1E69E5920](v126);
        v127 = v139;
      }

      else
      {
        v14 = v156;
        v15 = sub_1B98F1E6C();
        (*(v153 + 16))(v14, v15, v152);

        sub_1B9833334(v166, v164);
        v106 = (*(v159 + 80) + 16) & ~*(v159 + 80);
        v112 = 7;
        v113 = swift_allocObject();
        sub_1B9832680(v164, v113 + v106);
        v124 = sub_1B98F5118();
        v125 = sub_1B98F5BD8();
        v109 = 17;
        v115 = swift_allocObject();
        v108 = 32;
        *(v115 + 16) = 32;
        v116 = swift_allocObject();
        v110 = 8;
        *(v116 + 16) = 8;
        v111 = 32;
        v16 = swift_allocObject();
        v17 = v140;
        v107 = v16;
        *(v16 + 16) = v141;
        *(v16 + 24) = v17;
        v18 = swift_allocObject();
        v19 = v107;
        v117 = v18;
        *(v18 + 16) = v142;
        *(v18 + 24) = v19;
        v118 = swift_allocObject();
        *(v118 + 16) = v108;
        v119 = swift_allocObject();
        *(v119 + 16) = v110;
        v20 = swift_allocObject();
        v21 = v113;
        v114 = v20;
        *(v20 + 16) = v143;
        *(v20 + 24) = v21;
        v22 = swift_allocObject();
        v23 = v114;
        v121 = v22;
        *(v22 + 16) = v144;
        *(v22 + 24) = v23;
        v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
        v120 = sub_1B98F5F98();
        v122 = v24;

        v25 = v115;
        v26 = v122;
        *v122 = v145;
        v26[1] = v25;

        v27 = v116;
        v28 = v122;
        v122[2] = v146;
        v28[3] = v27;

        v29 = v117;
        v30 = v122;
        v122[4] = v147;
        v30[5] = v29;

        v31 = v118;
        v32 = v122;
        v122[6] = v148;
        v32[7] = v31;

        v33 = v119;
        v34 = v122;
        v122[8] = v149;
        v34[9] = v33;

        v35 = v121;
        v36 = v122;
        v122[10] = v150;
        v36[11] = v35;
        sub_1B9851B38();

        if (os_log_type_enabled(v124, v125))
        {
          v37 = v139;
          v92 = sub_1B98F5C28();
          v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
          v93 = sub_1B985263C(0);
          v94 = sub_1B985263C(2);
          v96 = &v183;
          v183 = v92;
          v97 = &v182;
          v182 = v93;
          v98 = &v181;
          v181 = v94;
          v95 = 2;
          sub_1B9852690(2, &v183);
          sub_1B9852690(v95, v96);
          v179 = v145;
          v180 = v115;
          sub_1B98526A4(&v179, v96, v97, v98);
          v99 = v37;
          v100 = v115;
          v101 = v116;
          v102 = v117;
          v103 = v118;
          v104 = v119;
          v105 = v121;
          if (v37)
          {
            v84 = v100;
            v85 = v101;
            v86 = v102;
            v87 = v103;
            v88 = v104;
            v89 = v105;
            v48 = v105;
            v47 = v104;
            v46 = v103;
            v45 = v102;
            v44 = v101;

            __break(1u);
          }

          else
          {
            v179 = v146;
            v180 = v116;
            sub_1B98526A4(&v179, &v183, &v182, &v181);
            v77 = 0;
            v78 = v115;
            v79 = v116;
            v80 = v117;
            v81 = v118;
            v82 = v119;
            v83 = v121;
            v179 = v147;
            v180 = v117;
            sub_1B98526A4(&v179, &v183, &v182, &v181);
            v70 = 0;
            v71 = v115;
            v72 = v116;
            v73 = v117;
            v74 = v118;
            v75 = v119;
            v76 = v121;
            v179 = v148;
            v180 = v118;
            sub_1B98526A4(&v179, &v183, &v182, &v181);
            v63 = 0;
            v64 = v115;
            v65 = v116;
            v66 = v117;
            v67 = v118;
            v68 = v119;
            v69 = v121;
            v179 = v149;
            v180 = v119;
            sub_1B98526A4(&v179, &v183, &v182, &v181);
            v56 = 0;
            v57 = v115;
            v58 = v116;
            v59 = v117;
            v60 = v118;
            v61 = v119;
            v62 = v121;
            v179 = v150;
            v180 = v121;
            sub_1B98526A4(&v179, &v183, &v182, &v181);
            v49 = 0;
            v50 = v115;
            v51 = v116;
            v52 = v117;
            v53 = v118;
            v54 = v119;
            v55 = v121;
            _os_log_impl(&dword_1B982F000, v124, v125, "%s: Outgoing interactions found with %s", v92, 0x16u);
            sub_1B985281C(v93);
            sub_1B985281C(v94);
            sub_1B98F5C08();

            v90 = v49;
          }
        }

        else
        {
          v38 = v139;

          v90 = v38;
        }

        v43 = v90;
        MEMORY[0x1E69E5920](v124);
        (*(v153 + 8))(v156, v152);
        sub_1B9833334(v166, v162);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
        sub_1B98F5A88();
        sub_1B983A3AC(v164);
        MEMORY[0x1E69E5920](v126);
        v127 = v43;
      }
    }

    else
    {
      v127 = v139;
    }

    v42 = v127;

    sub_1B983A3AC(v166);
  }

  sub_1B9871430(__b);
  v40 = &v189;
  v41 = v189;
  sub_1B98F54D8();
  sub_1B9868D78(v40);
  return v41;
}

unint64_t sub_1B988F0DC()
{
  v2 = qword_1EBBD5960;
  if (!qword_1EBBD5960)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5960);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B988F140(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B988F1A8(uint64_t a1)
{
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v5, v1);
  v8 = &v5 - v6;
  sub_1B9833334(v2, &v5 - v6);
  v7 = type metadata accessor for BlockedHandle();
  (*(*(v7 - 8) + 56))(v8, 0, 1);
  v10 = sub_1B98F1B88(v8, v7);
  v9 = v3;
  sub_1B983AAEC(v8);
  return v10;
}

uint64_t sub_1B988F2A0()
{
  v1 = *(type metadata accessor for BlockedHandle() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B988F1A8(v2);
}

uint64_t sub_1B988F3C0()
{
  sub_1B988F4C0();
  v0 = sub_1B988DABC();
  result = v2;
  *(v2 + 16) = v0;
  return result;
}

unint64_t sub_1B988F4C0()
{
  v2 = qword_1EBBD5968;
  if (!qword_1EBBD5968)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5968);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B988F54C()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_1B988F5B4()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5598, &qword_1B98FB3C0);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v2);
  v9 = &v5 - v7;
  v11 = v0;
  v8 = 0;
  sub_1B98F50E8();
  v3 = sub_1B98F4F88();
  (*(*(v3 - 8) + 56))(v9, 1);
  v10 = sub_1B98F50D8();
  result = v6;
  *(v6 + 16) = v10;
  return result;
}

uint64_t *sub_1B988F784(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B988F7B0()
{
  sub_1B98F5F98();
  v5 = v0;
  *v0 = sub_1B98F55E8();
  v5[1] = v1;
  v5[2] = sub_1B98F55E8();
  v5[3] = v2;
  v5[4] = sub_1B98F55E8();
  v5[5] = v3;
  sub_1B9851B38();
  result = sub_1B98F5A38();
  qword_1EBBDA928 = result;
  return result;
}

uint64_t *sub_1B988F898()
{
  if (qword_1EBBD4E58 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA928;
}

uint64_t sub_1B988F8F8()
{
  sub_1B98F5F98();
  v3 = v0;
  *v0 = sub_1B98F55E8();
  v3[1] = v1;
  sub_1B9851B38();
  result = sub_1B98F5A38();
  qword_1EBBDA930 = result;
  return result;
}

uint64_t *sub_1B988F988()
{
  if (qword_1EBBD4E60 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA930;
}

uint64_t sub_1B988F9E8()
{
  result = sub_1B98F55E8();
  qword_1EBBDA938 = result;
  qword_1EBBDA940 = v1;
  return result;
}

uint64_t *sub_1B988FA2C()
{
  if (qword_1EBBD4E68 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA938;
}

uint64_t sub_1B988FA8C@<X0>(char *a1@<X8>)
{
  v5 = *sub_1B988F898();
  sub_1B98F54D8();
  v6 = sub_1B98F5AC8();

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v2 = *sub_1B988F988();
    sub_1B98F54D8();
    v3 = sub_1B98F5AC8();

    if ((v3 & 1) == 0)
    {

      *a1 = 2;
      return result;
    }

    v7 = 0;
  }

  *a1 = v7;
}

uint64_t sub_1B988FC48()
{
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v14 = 0;
  v1 = *v0;
  v21 = *v0 & 1;
  v20 = v1;
  v11 = sub_1B988FBB8();
  if (!v2)
  {
    goto LABEL_16;
  }

  v18 = v11;
  v19 = v2;
  v9 = [objc_opt_self() sharedInstanceForBagType_];
  sub_1B98F54D8();
  v8 = sub_1B98F5648();

  v10 = [v9 objectForKey_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  if (v10)
  {
    sub_1B98F5C68();
    sub_1B98334F8(v12, &v15);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    sub_1B988F0DC();
    if (swift_dynamicCast())
    {
      v7 = v13;
    }

    else
    {
      v7 = 0;
    }

    v6 = v7;
  }

  else
  {
    sub_1B985DAC0(v17);
    v6 = 0;
  }

  if (!v6)
  {

LABEL_16:
    v5 = 1;
    return v5 & 1;
  }

  v14 = v6;
  v4 = [v6 BOOLValue];
  MEMORY[0x1E69E5920](v6);

  v5 = v4;
  return v5 & 1;
}

uint64_t sub_1B988FED0()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B988FF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = *a3;
  sub_1B98F54D8();
  v9 = a1;
  v10 = a2;
  v11 = v6;
  sub_1B988FFC0(&v9, a4);

  return sub_1B9890010(&v9);
}

uint64_t sub_1B988FFC0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);
  sub_1B98F54D8();
  result = a2;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  return result;
}

uint64_t sub_1B9890010(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_1B989003C(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v7 = v1;
  sub_1B98F54D8();
  v6[0] = v3;
  v6[1] = v4;
  sub_1B98F6058();
  sub_1B9868BFC(v6);
  sub_1B98900FC();
  return sub_1B98F6058();
}

unint64_t sub_1B98900FC()
{
  v2 = qword_1EBBD5970;
  if (!qword_1EBBD5970)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5970);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_1B9890174(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  v6 = sub_1B9890234();
  return v6 == sub_1B9890234();
}

uint64_t sub_1B9890234()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  sub_1B98902A4();
  return sub_1B98F5D08();
}

unint64_t sub_1B98902A4()
{
  v2 = qword_1EBBD5978;
  if (!qword_1EBBD5978)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5978);
    return WitnessTable;
  }

  return v2;
}

double sub_1B9890384()
{
  v18 = 0;
  v14 = 0;
  v10 = [objc_opt_self() sharedInstanceForBagType_];
  v0 = sub_1B988FA2C();
  v7 = *v0;
  v8 = v0[1];
  sub_1B98F54D8();
  v9 = sub_1B98F5648();

  v11 = [v10 objectForKey_];
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v10);
  if (v11)
  {
    sub_1B98F5C68();
    sub_1B98334F8(v12, &v15);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    sub_1B988F0DC();
    if (swift_dynamicCast())
    {
      v6 = v13;
    }

    else
    {
      v6 = 0;
    }

    v5 = v6;
  }

  else
  {
    sub_1B985DAC0(v17);
    v5 = 0;
  }

  if (!v5)
  {
    return 3600.0;
  }

  v14 = v5;
  sub_1B98F5A18();
  v3 = v1;
  MEMORY[0x1E69E5920](v5);
  return v3;
}

uint64_t sub_1B989059C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v203 = a1;
  v204 = a2;
  v207 = a3;
  v208 = a4;
  v162 = sub_1B989249C;
  v163 = sub_1B9897338;
  v164 = sub_1B989731C;
  v165 = sub_1B9897360;
  v166 = sub_1B9897328;
  v167 = sub_1B9897330;
  v168 = sub_1B9897344;
  v169 = sub_1B9897350;
  v170 = sub_1B9897358;
  v171 = sub_1B989736C;
  v172 = &unk_1B98FB428;
  v173 = sub_1B9892298;
  v174 = sub_1B98972B4;
  v175 = sub_1B98923C0;
  v176 = sub_1B98972DC;
  v177 = sub_1B9892490;
  v178 = sub_1B9897304;
  v179 = sub_1B98972A4;
  v180 = sub_1B98972AC;
  v181 = sub_1B98972C0;
  v182 = sub_1B98972CC;
  v183 = sub_1B98972D4;
  v184 = sub_1B98972E8;
  v185 = sub_1B98972F4;
  v186 = sub_1B98972FC;
  v187 = sub_1B9897310;
  v188 = *v4;
  v234 = 0;
  v233 = 0;
  v231 = 0;
  v232 = 0;
  v230 = 0;
  v189 = 0;
  v223 = 0;
  v210 = 0;
  v211 = 0;
  v212 = 0;
  v190 = 0;
  v191 = *(type metadata accessor for BlockedHandle() - 8);
  v192 = v191;
  v193 = *(v191 + 64);
  v194 = (v193 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v5);
  v195 = v83 - v194;
  v196 = sub_1B98F5138();
  v197 = *(v196 - 8);
  v198 = v196 - 8;
  v199 = (*(v197 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v196, v6);
  v200 = v83 - v199;
  v201 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v83 - v199, v8);
  v202 = v83 - v201;
  v205 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5980, &qword_1B98FB410) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v208, v204);
  v206 = v83 - v205;
  v234 = v10;
  v233 = v11 & 1;
  v231 = v12;
  v232 = v9;
  v230 = v4;
  sub_1B98F54D8();
  sub_1B988FA8C(&v229);
  v209 = v229;
  if (v229 == 2)
  {
    v48 = v200;
    v49 = sub_1B98F1E6C();
    (*(v197 + 16))(v48, v49, v196);
    sub_1B9833334(v203, v195);
    v91 = (*(v192 + 80) + 16) & ~*(v192 + 80);
    v99 = 7;
    v93 = swift_allocObject();
    sub_1B9832680(v195, v93 + v91);
    sub_1B98F54D8();
    v98 = 32;
    v50 = swift_allocObject();
    v51 = v208;
    v100 = v50;
    *(v50 + 16) = v207;
    *(v50 + 24) = v51;
    v114 = sub_1B98F5118();
    v115 = sub_1B98F5BB8();
    v96 = 17;
    v102 = swift_allocObject();
    *(v102 + 16) = 34;
    v103 = swift_allocObject();
    v97 = 8;
    *(v103 + 16) = 8;
    v52 = swift_allocObject();
    v92 = v52;
    *(v52 + 16) = v173;
    *(v52 + 24) = 0;
    v53 = swift_allocObject();
    v54 = v92;
    v104 = v53;
    *(v53 + 16) = v174;
    *(v53 + 24) = v54;
    v105 = swift_allocObject();
    v95 = 32;
    *(v105 + 16) = 32;
    v106 = swift_allocObject();
    *(v106 + 16) = v97;
    v55 = swift_allocObject();
    v56 = v93;
    v94 = v55;
    *(v55 + 16) = v175;
    *(v55 + 24) = v56;
    v57 = swift_allocObject();
    v58 = v94;
    v107 = v57;
    *(v57 + 16) = v176;
    *(v57 + 24) = v58;
    v108 = swift_allocObject();
    *(v108 + 16) = v95;
    v109 = swift_allocObject();
    *(v109 + 16) = v97;
    v59 = swift_allocObject();
    v60 = v100;
    v101 = v59;
    *(v59 + 16) = v177;
    *(v59 + 24) = v60;
    v61 = swift_allocObject();
    v62 = v101;
    v111 = v61;
    *(v61 + 16) = v178;
    *(v61 + 24) = v62;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v110 = sub_1B98F5F98();
    v112 = v63;

    v64 = v102;
    v65 = v112;
    *v112 = v179;
    v65[1] = v64;

    v66 = v103;
    v67 = v112;
    v112[2] = v180;
    v67[3] = v66;

    v68 = v104;
    v69 = v112;
    v112[4] = v181;
    v69[5] = v68;

    v70 = v105;
    v71 = v112;
    v112[6] = v182;
    v71[7] = v70;

    v72 = v106;
    v73 = v112;
    v112[8] = v183;
    v73[9] = v72;

    v74 = v107;
    v75 = v112;
    v112[10] = v184;
    v75[11] = v74;

    v76 = v108;
    v77 = v112;
    v112[12] = v185;
    v77[13] = v76;

    v78 = v109;
    v79 = v112;
    v112[14] = v186;
    v79[15] = v78;

    v80 = v111;
    v81 = v112;
    v112[16] = v187;
    v81[17] = v80;
    sub_1B9851B38();

    if (os_log_type_enabled(v114, v115))
    {
      v82 = v189;
      v84 = sub_1B98F5C28();
      v83[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v85 = sub_1B985263C(0);
      v86 = sub_1B985263C(3);
      v87 = &v228;
      v228 = v84;
      v88 = &v227;
      v227 = v85;
      v89 = &v226;
      v226 = v86;
      sub_1B9852690(2, &v228);
      sub_1B9852690(3, v87);
      v224 = v179;
      v225 = v102;
      sub_1B98526A4(&v224, v87, v88, v89);
      v90 = v82;
      if (v82)
      {

        __break(1u);
      }

      else
      {
        v224 = v180;
        v225 = v103;
        sub_1B98526A4(&v224, &v228, &v227, &v226);
        v83[6] = 0;
        v224 = v181;
        v225 = v104;
        sub_1B98526A4(&v224, &v228, &v227, &v226);
        v83[5] = 0;
        v224 = v182;
        v225 = v105;
        sub_1B98526A4(&v224, &v228, &v227, &v226);
        v83[4] = 0;
        v224 = v183;
        v225 = v106;
        sub_1B98526A4(&v224, &v228, &v227, &v226);
        v83[3] = 0;
        v224 = v184;
        v225 = v107;
        sub_1B98526A4(&v224, &v228, &v227, &v226);
        v83[2] = 0;
        v224 = v185;
        v225 = v108;
        sub_1B98526A4(&v224, &v228, &v227, &v226);
        v83[1] = 0;
        v224 = v186;
        v225 = v109;
        sub_1B98526A4(&v224, &v228, &v227, &v226);
        v83[0] = 0;
        v224 = v187;
        v225 = v111;
        sub_1B98526A4(&v224, &v228, &v227, &v226);
        _os_log_impl(&dword_1B982F000, v114, v115, "%{public}s Unable to add handle %s, invalid service: %s", v84, 0x20u);
        sub_1B985281C(v85);
        sub_1B985281C(v86);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v114);
    return (*(v197 + 8))(v200, v196);
  }

  else
  {
    v160 = v209;
    v159 = v209;
    v223 = v209 & 1;
    v222 = v209 & 1;
    if (sub_1B988FC48())
    {
      v13 = v189;
      v14 = BlockedHandle.value.getter();
      v213 = v159 & 1;
      sub_1B988FF18(v14, v15, &v213, &v214);
      v156 = v214;
      v157 = v215;
      v158 = v216;
      v210 = v214;
      v211 = v215;
      v212 = v216;
      sub_1B98F54D8();
      v155 = v161 + 4;
      os_unfair_lock_lock(v161 + 4);
      sub_1B9892500(&v161[6], v204 & 1, v156, v157, v158 & 1);
      if (!v13)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5988, &qword_1B98FB418);
        v153 = MEMORY[0x1E69E7CA8] + 8;
        sub_1B9870E78(v155);

        v151 = 0;
        v16 = sub_1B98F5988();
        (*(*(v16 - 8) + 56))(v206, 1);
        v149 = 7;
        v150 = swift_allocObject();
        v147 = v150 + 16;

        v148 = v161;
        swift_weakInit();

        sub_1B98F54D8();
        v17 = swift_allocObject();
        v18 = v156;
        v19 = v158;
        v20 = v188;
        v21 = v157;
        v22 = v17;
        v23 = v150;
        v152 = v22;
        *(v22 + 16) = 0;
        *(v22 + 24) = 0;
        *(v22 + 32) = v23;
        *(v22 + 40) = v18;
        *(v22 + 48) = v21;
        *(v22 + 56) = v19;
        *(v22 + 64) = v20;

        v154 = sub_1B98944E8(v151, v151, v206, v172, v152, v153);
        sub_1B98975AC(v206);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5988, &qword_1B98FB418);
      sub_1B9870E78(v155);

      __break(1u);
    }

    v25 = v202;
    v26 = sub_1B98F1E6C();
    (*(v197 + 16))(v25, v26, v196);
    v130 = 17;
    v133 = 7;
    v134 = swift_allocObject();
    *(v134 + 16) = v159 & 1;
    v145 = sub_1B98F5118();
    v146 = sub_1B98F5BD8();
    v136 = swift_allocObject();
    *(v136 + 16) = 34;
    v137 = swift_allocObject();
    v131 = 8;
    *(v137 + 16) = 8;
    v132 = 32;
    v27 = swift_allocObject();
    v129 = v27;
    *(v27 + 16) = v162;
    *(v27 + 24) = 0;
    v28 = swift_allocObject();
    v29 = v129;
    v138 = v28;
    *(v28 + 16) = v163;
    *(v28 + 24) = v29;
    v139 = swift_allocObject();
    *(v139 + 16) = 32;
    v140 = swift_allocObject();
    *(v140 + 16) = v131;
    v30 = swift_allocObject();
    v31 = v134;
    v135 = v30;
    *(v30 + 16) = v164;
    *(v30 + 24) = v31;
    v32 = swift_allocObject();
    v33 = v135;
    v142 = v32;
    *(v32 + 16) = v165;
    *(v32 + 24) = v33;
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v141 = sub_1B98F5F98();
    v143 = v34;

    v35 = v136;
    v36 = v143;
    *v143 = v166;
    v36[1] = v35;

    v37 = v137;
    v38 = v143;
    v143[2] = v167;
    v38[3] = v37;

    v39 = v138;
    v40 = v143;
    v143[4] = v168;
    v40[5] = v39;

    v41 = v139;
    v42 = v143;
    v143[6] = v169;
    v42[7] = v41;

    v43 = v140;
    v44 = v143;
    v143[8] = v170;
    v44[9] = v43;

    v45 = v142;
    v46 = v143;
    v143[10] = v171;
    v46[11] = v45;
    sub_1B9851B38();

    if (os_log_type_enabled(v145, v146))
    {
      v47 = v189;
      v121 = sub_1B98F5C28();
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v122 = sub_1B985263C(0);
      v123 = sub_1B985263C(2);
      v125 = &v221;
      v221 = v121;
      v126 = &v220;
      v220 = v122;
      v127 = &v219;
      v219 = v123;
      v124 = 2;
      sub_1B9852690(2, &v221);
      sub_1B9852690(v124, v125);
      v217 = v166;
      v218 = v136;
      sub_1B98526A4(&v217, v125, v126, v127);
      v128 = v47;
      if (v47)
      {

        __break(1u);
      }

      else
      {
        v217 = v167;
        v218 = v137;
        sub_1B98526A4(&v217, &v221, &v220, &v219);
        v119 = 0;
        v217 = v168;
        v218 = v138;
        sub_1B98526A4(&v217, &v221, &v220, &v219);
        v118 = 0;
        v217 = v169;
        v218 = v139;
        sub_1B98526A4(&v217, &v221, &v220, &v219);
        v117 = 0;
        v217 = v170;
        v218 = v140;
        sub_1B98526A4(&v217, &v221, &v220, &v219);
        v116 = 0;
        v217 = v171;
        v218 = v142;
        sub_1B98526A4(&v217, &v221, &v220, &v219);
        _os_log_impl(&dword_1B982F000, v145, v146, "%{public}s Service: %s is disabled by server bag, ignoring request to add trust score to cache", v121, 0x16u);
        sub_1B985281C(v122);
        sub_1B985281C(v123);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v145);
    return (*(v197 + 8))(v202, v196);
  }
}

uint64_t sub_1B98922C8(uint64_t a1)
{
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v5, v1);
  v8 = &v5 - v6;
  sub_1B9833334(v2, &v5 - v6);
  v7 = type metadata accessor for BlockedHandle();
  (*(*(v7 - 8) + 56))(v8, 0, 1);
  v10 = sub_1B98F1B88(v8, v7);
  v9 = v3;
  sub_1B983AAEC(v8);
  return v10;
}

uint64_t sub_1B98923C0()
{
  v1 = *(type metadata accessor for BlockedHandle() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B98922C8(v2);
}

uint64_t sub_1B9892424(uint64_t a1, uint64_t a2)
{
  sub_1B98F54D8();
  v6[0] = a1;
  v6[1] = a2;
  v5 = sub_1B98F1B88(v6, MEMORY[0x1E69E6158]);
  sub_1B985EE4C(v6);
  return v5;
}

uint64_t sub_1B9892500(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  v87 = a1;
  v86 = a2;
  v83 = a3;
  v84 = a4;
  v85 = a5;
  v73 = sub_1B9892FE8;
  v74 = sub_1B9897E30;
  v75 = sub_1B9897E0C;
  v76 = sub_1B9897E58;
  v77 = sub_1B9897E20;
  v78 = sub_1B9897E28;
  v79 = sub_1B9897E3C;
  v80 = sub_1B9897E48;
  v81 = sub_1B9897E50;
  v82 = sub_1B9897E64;
  v104 = 0;
  v103 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v88 = sub_1B98F5138();
  v89 = *(v88 - 8);
  v90 = v88 - 8;
  v91 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v92 = v36 - v91;
  v104 = MEMORY[0x1EEE9AC00](v87, v86);
  v103 = v5 & 1;
  v100 = v6;
  v101 = v7;
  v102 = v8 & 1;
  if (v5)
  {
    return v72;
  }

  v9 = v92;
  v10 = sub_1B98F1E6C();
  (*(v89 + 16))(v9, v10, v88);
  sub_1B98F54D8();
  v58 = 7;
  v11 = swift_allocObject();
  v12 = v84;
  v13 = v85;
  v59 = v11;
  *(v11 + 16) = v83;
  *(v11 + 24) = v12;
  *(v11 + 32) = v13 & 1;
  v70 = sub_1B98F5118();
  v71 = sub_1B98F5BD8();
  v55 = 17;
  v61 = swift_allocObject();
  *(v61 + 16) = 34;
  v62 = swift_allocObject();
  v56 = 8;
  *(v62 + 16) = 8;
  v57 = 32;
  v14 = swift_allocObject();
  v54 = v14;
  *(v14 + 16) = v73;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v54;
  v63 = v15;
  *(v15 + 16) = v74;
  *(v15 + 24) = v16;
  v64 = swift_allocObject();
  *(v64 + 16) = 32;
  v65 = swift_allocObject();
  *(v65 + 16) = v56;
  v17 = swift_allocObject();
  v18 = v59;
  v60 = v17;
  *(v17 + 16) = v75;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v60;
  v67 = v19;
  *(v19 + 16) = v76;
  *(v19 + 24) = v20;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v66 = sub_1B98F5F98();
  v68 = v21;

  v22 = v61;
  v23 = v68;
  *v68 = v77;
  v23[1] = v22;

  v24 = v62;
  v25 = v68;
  v68[2] = v78;
  v25[3] = v24;

  v26 = v63;
  v27 = v68;
  v68[4] = v79;
  v27[5] = v26;

  v28 = v64;
  v29 = v68;
  v68[6] = v80;
  v29[7] = v28;

  v30 = v65;
  v31 = v68;
  v68[8] = v81;
  v31[9] = v30;

  v32 = v67;
  v33 = v68;
  v68[10] = v82;
  v33[11] = v32;
  sub_1B9851B38();

  if (os_log_type_enabled(v70, v71))
  {
    v46 = sub_1B98F5C28();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v47 = sub_1B985263C(0);
    v48 = sub_1B985263C(2);
    v50 = &v97;
    v97 = v46;
    v51 = &v96;
    v96 = v47;
    v52 = &v95;
    v95 = v48;
    v49 = 2;
    sub_1B9852690(2, &v97);
    sub_1B9852690(v49, v50);
    v34 = v72;
    v93 = v77;
    v94 = v61;
    sub_1B98526A4(&v93, v50, v51, v52);
    v53 = v34;
    if (v34)
    {

      __break(1u);
    }

    else
    {
      v93 = v78;
      v94 = v62;
      sub_1B98526A4(&v93, &v97, &v96, &v95);
      v43 = 0;
      v93 = v79;
      v94 = v63;
      sub_1B98526A4(&v93, &v97, &v96, &v95);
      v42 = 0;
      v93 = v80;
      v94 = v64;
      sub_1B98526A4(&v93, &v97, &v96, &v95);
      v41 = 0;
      v93 = v81;
      v94 = v65;
      sub_1B98526A4(&v93, &v97, &v96, &v95);
      v40 = 0;
      v93 = v82;
      v94 = v67;
      sub_1B98526A4(&v93, &v97, &v96, &v95);
      v39 = 0;
      _os_log_impl(&dword_1B982F000, v70, v71, "%{public}s Adding trust score %s to untrustedCache", v46, 0x16u);
      sub_1B985281C(v47);
      sub_1B985281C(v48);
      sub_1B98F5C08();

      v44 = v39;
    }
  }

  else
  {

    v44 = v72;
  }

  v37 = v44;
  MEMORY[0x1E69E5920](v70);
  (*(v89 + 8))(v92, v88);
  sub_1B98F54D8();
  v36[1] = v98;
  v98[0] = v83;
  v98[1] = v84;
  v99 = v85 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5988, &qword_1B98FB418);
  sub_1B98F5A88();

  result = v37;
  v38 = v37;
  return result;
}

uint64_t sub_1B9893018(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B98F54D8();
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3 & 1;
  v7 = sub_1B98F1B88(v8, &unk_1F3797548);
  sub_1B9897BA8(v8);
  return v7;
}

uint64_t sub_1B9893098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 152) = a8;
  *(v8 + 57) = a7;
  *(v8 + 144) = a6;
  *(v8 + 136) = a5;
  *(v8 + 128) = a4;
  *(v8 + 104) = v8;
  *(v8 + 112) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  v9 = sub_1B98F5138();
  *(v8 + 160) = v9;
  v15 = *(v9 - 8);
  *(v8 + 168) = v15;
  v10 = *(v15 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v11 = sub_1B98F5DC8();
  *(v8 + 184) = v11;
  v16 = *(v11 - 8);
  *(v8 + 192) = v16;
  v12 = *(v16 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 112) = a4 + 16;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7 & 1;
  v13 = *(v8 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1B9893250, 0);
}

uint64_t sub_1B9893250()
{
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  v1 = *(v0 + 152);
  *(v0 + 104) = v0;
  sub_1B9890384();
  *(v0 + 88) = sub_1B98F6088();
  *(v0 + 96) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  v10 = sub_1B9897CFC();
  sub_1B98940FC();
  v3 = swift_task_alloc();
  v9[26] = v3;
  *v3 = v9[13];
  v3[1] = sub_1B98933A0;
  v4 = v9[25];
  v5 = v9[23];

  return sub_1B9894120(v0 + 88, v0 + 64, v4, v5, v10);
}

uint64_t sub_1B98933A0()
{
  v7 = *v1;
  v2 = *(*v1 + 208);
  v7[13] = *v1;
  v8 = v7 + 13;
  v7[27] = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_1B9894028;
  }

  else
  {
    (*(v7[24] + 8))(v7[25], v7[23]);
    v3 = *v8;
    v4 = sub_1B9893538;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0);
}

uint64_t sub_1B9893538()
{
  v47 = v0;
  v41 = v0[16];
  v0[13] = v0;
  swift_beginAccess();
  v0[15] = swift_weakLoadStrong();
  if (v0[15])
  {
    v1 = *(v40 + 216);
    v38 = *(v40 + 57);
    v37 = *(v40 + 144);
    v36 = *(v40 + 136);
    v35 = *(v40 + 120);

    sub_1B9897D7C((v40 + 120));
    swift_endAccess();
    sub_1B98F54D8();
    v34 = v35 + 4;
    os_unfair_lock_lock(v35 + 4);
    sub_1B9894398();
    if (v1)
    {
      v32 = *(v40 + 144);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5988, &qword_1B98FB418);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59B0, &qword_1B98FB560);
      sub_1B9870E78(v34);
    }

    v33 = *(v40 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5988, &qword_1B98FB418);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59B0, &qword_1B98FB560);
    sub_1B9870E78(v34);

    v39 = 0;
  }

  else
  {
    sub_1B9897D7C((v40 + 120));
    swift_endAccess();
    v39 = *(v40 + 216);
  }

  v3 = *(v40 + 176);
  v16 = *(v40 + 160);
  v19 = *(v40 + 57);
  v18 = *(v40 + 144);
  v17 = *(v40 + 136);
  v15 = *(v40 + 168);

  v4 = sub_1B98F1E6C();
  (*(v15 + 16))(v3, v4, v16);
  sub_1B98F54D8();
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  *(v21 + 24) = v18;
  *(v21 + 32) = v19 & 1;
  oslog = sub_1B98F5118();
  v31 = sub_1B98F5BD8();
  v23 = swift_allocObject();
  *(v23 + 16) = 34;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B9894438;
  *(v20 + 24) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B9897DCC;
  *(v25 + 24) = v20;
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B9897DA8;
  *(v22 + 24) = v21;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1B9897DF4;
  *(v28 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v29 = v5;

  *v29 = sub_1B9897DBC;
  v29[1] = v23;

  v29[2] = sub_1B9897DC4;
  v29[3] = v24;

  v29[4] = sub_1B9897DD8;
  v29[5] = v25;

  v29[6] = sub_1B9897DE4;
  v29[7] = v26;

  v29[8] = sub_1B9897DEC;
  v29[9] = v27;

  v29[10] = sub_1B9897E00;
  v29[11] = v28;
  sub_1B9851B38();

  if (os_log_type_enabled(oslog, v31))
  {
    buf = sub_1B98F5C28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v13 = sub_1B985263C(0);
    v14 = sub_1B985263C(2);
    v42 = buf;
    v43 = v13;
    v44 = v14;
    sub_1B9852690(2, &v42);
    sub_1B9852690(2, &v42);
    v45 = sub_1B9897DBC;
    v46 = v23;
    sub_1B98526A4(&v45, &v42, &v43, &v44);
    if (v39)
    {
    }

    v45 = sub_1B9897DC4;
    v46 = v24;
    sub_1B98526A4(&v45, &v42, &v43, &v44);
    v45 = sub_1B9897DD8;
    v46 = v25;
    sub_1B98526A4(&v45, &v42, &v43, &v44);
    v45 = sub_1B9897DE4;
    v46 = v26;
    sub_1B98526A4(&v45, &v42, &v43, &v44);
    v45 = sub_1B9897DEC;
    v46 = v27;
    sub_1B98526A4(&v45, &v42, &v43, &v44);
    v45 = sub_1B9897E00;
    v46 = v28;
    sub_1B98526A4(&v45, &v42, &v43, &v44);
    _os_log_impl(&dword_1B982F000, oslog, v31, "%{public}s Removing trust score %s from untrustedCache", buf, 0x16u);
    sub_1B985281C(v13);
    sub_1B985281C(v14);
    sub_1B98F5C08();
  }

  else
  {
  }

  v10 = *(v40 + 200);
  v11 = *(v40 + 176);
  v9 = *(v40 + 160);
  v8 = *(v40 + 168);
  MEMORY[0x1E69E5920](oslog);
  (*(v8 + 8))(v11, v9);

  v6 = *(*(v40 + 104) + 8);
  v7 = *(v40 + 104);

  return v6();
}

uint64_t sub_1B9894028()
{
  v8 = v0[25];
  v1 = v0[24];
  v2 = v0[23];
  v9 = v0[22];
  v0[13] = v0;
  (*(v1 + 8))();

  v3 = v0;
  v4 = *(v0[13] + 8);
  v5 = v0[13];
  v6 = v3[27];

  return v4();
}

uint64_t sub_1B9894120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_1B989420C;

  return sub_1B9896D98(a1, a2, a4, a5);
}

uint64_t sub_1B989420C()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(v2 + 16) = *v1;
  v6 = v2 + 16;

  if (v0)
  {
    v4 = *(*v6 + 8);
  }

  else
  {
    v4 = *(*v6 + 8);
  }

  return v4();
}

uint64_t sub_1B9894468(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B98F54D8();
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3 & 1;
  v7 = sub_1B98F1B88(v8, &unk_1F3797548);
  sub_1B9897BA8(v8);
  return v7;
}

uint64_t sub_1B98944E8(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a1;
  v41 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v42 = a6;
  v43 = "Fatal error";
  v44 = "Unexpectedly found nil while unwrapping an Optional value";
  v45 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v46 = 0;
  v59 = a6;
  v47 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5980, &qword_1B98FB410) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50, v6);
  v51 = &v12 - v47;

  v57 = v49;
  v58 = v50;
  sub_1B9897BD4(v48, v51);
  v52 = sub_1B98F5988();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  if ((*(v53 + 48))(v51, 1) == 1)
  {
    sub_1B98975AC(v51);
    v39 = 0;
  }

  else
  {
    v38 = sub_1B98F5978();
    (*(v53 + 8))(v51, v52);
    v39 = v38;
  }

  v35 = v39 | 0x1000;
  v37 = *(v50 + 16);
  v36 = *(v50 + 24);
  swift_unknownObjectRetain();

  if (v37)
  {
    v33 = v37;
    v34 = v36;
    v27 = v36;
    v28 = v37;
    swift_getObjectType();
    v29 = sub_1B98F5958();
    v30 = v7;
    swift_unknownObjectRelease();
    v31 = v29;
    v32 = v30;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v25 = v32;
  v26 = v31;
  if (v41)
  {
    v23 = v40;
    v24 = v41;
    v8 = v46;
    v21 = sub_1B98F5698();
    v9 = *(v21 + 16);
    sub_1B9896C28(v21 + 32, &v57, &v55);
    if (v8)
    {
      __break(1u);
    }

    v20 = v55;

    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  v19 = v22;
  if (v22)
  {
    v14 = v19;
    v15 = v19;
  }

  else
  {

    v16 = v57;
    v17 = v58;

    v18 = 0;
    if (v26 != 0 || v25 != 0)
    {
      v56[0] = 0;
      v56[1] = 0;
      v56[2] = v26;
      v56[3] = v25;
      v18 = v56;
    }

    v15 = swift_task_create();
  }

  v12 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD52A8, &qword_1B98F9020);
  sub_1B98D0BE0();
  v13 = v10;

  return v13;
}

uint64_t sub_1B9894A34(uint64_t a1, uint64_t a2)
{
  v173 = a1;
  v172 = a2;
  v146 = sub_1B9896368;
  v147 = sub_1B9897670;
  v148 = sub_1B9897654;
  v149 = sub_1B9897698;
  v150 = sub_1B9897660;
  v151 = sub_1B9897668;
  v152 = sub_1B989767C;
  v153 = sub_1B9897688;
  v154 = sub_1B9897690;
  v155 = sub_1B98976A4;
  v156 = sub_1B98964A4;
  v157 = sub_1B98976E0;
  v158 = sub_1B98976B0;
  v159 = sub_1B9897708;
  v160 = sub_1B98976C4;
  v161 = sub_1B9897730;
  v162 = sub_1B98976D0;
  v163 = sub_1B98976D8;
  v164 = sub_1B98976EC;
  v165 = sub_1B98976F8;
  v166 = sub_1B9897700;
  v167 = sub_1B9897714;
  v168 = sub_1B9897720;
  v169 = sub_1B9897728;
  v170 = sub_1B989773C;
  v204 = 0;
  v203 = 0;
  v202 = 0;
  v171 = 0;
  v189 = 0;
  v190 = 0;
  v191 = 0;
  v187 = 0;
  v174 = sub_1B98F5138();
  v175 = *(v174 - 8);
  v176 = v174 - 8;
  v177 = (*(v175 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v173, v172);
  v178 = v71 - v177;
  v179 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v180 = v71 - v179;
  v204 = v6;
  v181 = *v7;
  v203 = v181 & 1;
  v202 = v2;
  v201 = v181;
  if (sub_1B988FC48())
  {
    v8 = v171;
    v9 = BlockedHandle.value.getter();
    v192 = v181;
    sub_1B988FF18(v9, v10, &v192, &v193);
    v141 = v193;
    v142 = v194;
    v143 = v195;
    v189 = v193;
    v190 = v194;
    v191 = v195;
    sub_1B98F54D8();
    v140 = (v145 + 16);
    os_unfair_lock_lock((v145 + 16));
    sub_1B98963CC((v145 + 24), &v188);
    v144 = v8;
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5988, &qword_1B98FB418);
      sub_1B9870E78(v140);

      __break(1u);
    }

    v11 = v180;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5988, &qword_1B98FB418);
    sub_1B9870E78(v140);

    v115 = v188;
    v187 = v188 & 1;
    v12 = sub_1B98F1E6C();
    (*(v175 + 16))(v11, v12, v174);
    sub_1B98F54D8();
    v123 = 7;
    v13 = swift_allocObject();
    v14 = v142;
    v15 = v143;
    v117 = v13;
    *(v13 + 16) = v141;
    *(v13 + 24) = v14;
    *(v13 + 32) = v15;
    v120 = 17;
    v124 = swift_allocObject();
    *(v124 + 16) = v115;
    v138 = sub_1B98F5118();
    v139 = sub_1B98F5BD8();
    v126 = swift_allocObject();
    *(v126 + 16) = 34;
    v127 = swift_allocObject();
    v121 = 8;
    *(v127 + 16) = 8;
    v122 = 32;
    v16 = swift_allocObject();
    v116 = v16;
    *(v16 + 16) = v156;
    *(v16 + 24) = 0;
    v17 = swift_allocObject();
    v18 = v116;
    v128 = v17;
    *(v17 + 16) = v157;
    *(v17 + 24) = v18;
    v129 = swift_allocObject();
    v119 = 32;
    *(v129 + 16) = 32;
    v130 = swift_allocObject();
    *(v130 + 16) = v121;
    v19 = swift_allocObject();
    v20 = v117;
    v118 = v19;
    *(v19 + 16) = v158;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v118;
    v131 = v21;
    *(v21 + 16) = v159;
    *(v21 + 24) = v22;
    v132 = swift_allocObject();
    *(v132 + 16) = v119;
    v133 = swift_allocObject();
    *(v133 + 16) = v121;
    v23 = swift_allocObject();
    v24 = v124;
    v125 = v23;
    *(v23 + 16) = v160;
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v125;
    v135 = v25;
    *(v25 + 16) = v161;
    *(v25 + 24) = v26;
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v134 = sub_1B98F5F98();
    v136 = v27;

    v28 = v126;
    v29 = v136;
    *v136 = v162;
    v29[1] = v28;

    v30 = v127;
    v31 = v136;
    v136[2] = v163;
    v31[3] = v30;

    v32 = v128;
    v33 = v136;
    v136[4] = v164;
    v33[5] = v32;

    v34 = v129;
    v35 = v136;
    v136[6] = v165;
    v35[7] = v34;

    v36 = v130;
    v37 = v136;
    v136[8] = v166;
    v37[9] = v36;

    v38 = v131;
    v39 = v136;
    v136[10] = v167;
    v39[11] = v38;

    v40 = v132;
    v41 = v136;
    v136[12] = v168;
    v41[13] = v40;

    v42 = v133;
    v43 = v136;
    v136[14] = v169;
    v43[15] = v42;

    v44 = v135;
    v45 = v136;
    v136[16] = v170;
    v45[17] = v44;
    sub_1B9851B38();

    if (os_log_type_enabled(v138, v139))
    {
      v46 = v144;
      v108 = sub_1B98F5C28();
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v109 = sub_1B985263C(0);
      v110 = sub_1B985263C(3);
      v111 = &v186;
      v186 = v108;
      v112 = &v185;
      v185 = v109;
      v113 = &v184;
      v184 = v110;
      sub_1B9852690(2, &v186);
      sub_1B9852690(3, v111);
      v182 = v162;
      v183 = v126;
      sub_1B98526A4(&v182, v111, v112, v113);
      v114 = v46;
      if (v46)
      {

        __break(1u);
      }

      else
      {
        v182 = v163;
        v183 = v127;
        sub_1B98526A4(&v182, &v186, &v185, &v184);
        v106 = 0;
        v182 = v164;
        v183 = v128;
        sub_1B98526A4(&v182, &v186, &v185, &v184);
        v105 = 0;
        v182 = v165;
        v183 = v129;
        sub_1B98526A4(&v182, &v186, &v185, &v184);
        v104 = 0;
        v182 = v166;
        v183 = v130;
        sub_1B98526A4(&v182, &v186, &v185, &v184);
        v103 = 0;
        v182 = v167;
        v183 = v131;
        sub_1B98526A4(&v182, &v186, &v185, &v184);
        v102 = 0;
        v182 = v168;
        v183 = v132;
        sub_1B98526A4(&v182, &v186, &v185, &v184);
        v101 = 0;
        v182 = v169;
        v183 = v133;
        sub_1B98526A4(&v182, &v186, &v185, &v184);
        v100 = 0;
        v182 = v170;
        v183 = v135;
        sub_1B98526A4(&v182, &v186, &v185, &v184);
        _os_log_impl(&dword_1B982F000, v138, v139, "%{public}s Is %s located in cache? %s", v108, 0x20u);
        sub_1B985281C(v109);
        sub_1B985281C(v110);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v138);
    (*(v175 + 8))(v180, v174);
    v98 = v115 ^ 1;

    v99 = v98;
  }

  else
  {
    v47 = v178;
    v48 = sub_1B98F1E6C();
    (*(v175 + 16))(v47, v48, v174);
    v81 = 17;
    v84 = 7;
    v85 = swift_allocObject();
    *(v85 + 16) = v181;
    v96 = sub_1B98F5118();
    v97 = sub_1B98F5BD8();
    v87 = swift_allocObject();
    *(v87 + 16) = 34;
    v88 = swift_allocObject();
    v82 = 8;
    *(v88 + 16) = 8;
    v83 = 32;
    v49 = swift_allocObject();
    v80 = v49;
    *(v49 + 16) = v146;
    *(v49 + 24) = 0;
    v50 = swift_allocObject();
    v51 = v80;
    v89 = v50;
    *(v50 + 16) = v147;
    *(v50 + 24) = v51;
    v90 = swift_allocObject();
    *(v90 + 16) = 32;
    v91 = swift_allocObject();
    *(v91 + 16) = v82;
    v52 = swift_allocObject();
    v53 = v85;
    v86 = v52;
    *(v52 + 16) = v148;
    *(v52 + 24) = v53;
    v54 = swift_allocObject();
    v55 = v86;
    v93 = v54;
    *(v54 + 16) = v149;
    *(v54 + 24) = v55;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v92 = sub_1B98F5F98();
    v94 = v56;

    v57 = v87;
    v58 = v94;
    *v94 = v150;
    v58[1] = v57;

    v59 = v88;
    v60 = v94;
    v94[2] = v151;
    v60[3] = v59;

    v61 = v89;
    v62 = v94;
    v94[4] = v152;
    v62[5] = v61;

    v63 = v90;
    v64 = v94;
    v94[6] = v153;
    v64[7] = v63;

    v65 = v91;
    v66 = v94;
    v94[8] = v154;
    v66[9] = v65;

    v67 = v93;
    v68 = v94;
    v94[10] = v155;
    v68[11] = v67;
    sub_1B9851B38();

    if (os_log_type_enabled(v96, v97))
    {
      v69 = v171;
      v72 = sub_1B98F5C28();
      v71[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v73 = sub_1B985263C(0);
      v74 = sub_1B985263C(2);
      v76 = &v200;
      v200 = v72;
      v77 = &v199;
      v199 = v73;
      v78 = &v198;
      v198 = v74;
      v75 = 2;
      sub_1B9852690(2, &v200);
      sub_1B9852690(v75, v76);
      v196 = v150;
      v197 = v87;
      sub_1B98526A4(&v196, v76, v77, v78);
      v79 = v69;
      if (v69)
      {

        __break(1u);
      }

      else
      {
        v196 = v151;
        v197 = v88;
        sub_1B98526A4(&v196, &v200, &v199, &v198);
        v71[3] = 0;
        v196 = v152;
        v197 = v89;
        sub_1B98526A4(&v196, &v200, &v199, &v198);
        v71[2] = 0;
        v196 = v153;
        v197 = v90;
        sub_1B98526A4(&v196, &v200, &v199, &v198);
        v71[1] = 0;
        v196 = v154;
        v197 = v91;
        sub_1B98526A4(&v196, &v200, &v199, &v198);
        v71[0] = 0;
        v196 = v155;
        v197 = v93;
        sub_1B98526A4(&v196, &v200, &v199, &v198);
        _os_log_impl(&dword_1B982F000, v96, v97, "%{public}s Service: %s is disabled by server bag, considering handle has trusted", v72, 0x16u);
        sub_1B985281C(v73);
        sub_1B985281C(v74);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v96);
    (*(v175 + 8))(v178, v174);
    v99 = 1;
  }

  return v99 & 1;
}

uint64_t sub_1B98963CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_1B98F54D8();
  sub_1B98902A4();
  v4 = sub_1B98F5AC8();

  result = v4;
  *a2 = v4 & 1;
  return result;
}

uint64_t sub_1B98964D4(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B98F54D8();
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3 & 1;
  v7 = sub_1B98F1B88(v8, &unk_1F3797548);
  sub_1B9897BA8(v8);
  return v7;
}

uint64_t sub_1B9896588(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v28 = a2;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v40 = __b;
  v42 = 40;
  memset(__b, 0, sizeof(__b));
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v29 = 0;
  v37 = type metadata accessor for BlockedHandle();
  v22 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37, v3);
  v23 = &v15 - v22;
  v24 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v15 - v22, v5);
  v25 = &v15 - v24;
  v26 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v15 - v24, v7);
  v27 = &v15 - v26;
  v53 = &v15 - v26;
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5678, &unk_1B98FAC90) - 8) + 64);
  v30 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v29, v37);
  v32 = &v15 - v30;
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8, v9);
  v34 = &v15 - v33;
  v52 = v39;
  v35 = *v10;
  v51 = v35 & 1;
  v50 = v2;
  v36 = sub_1B98F5F98();
  v38 = sub_1B9853574();
  v49 = sub_1B98F5A38();
  sub_1B98F54D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v41 = &v54;
  sub_1B98F5498();
  memcpy(v40, v41, v42);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58F0, &qword_1B98FACA0);
    sub_1B98F5558();
    sub_1B98732E4(v32, v34);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
    if ((*(*(v21 - 8) + 48))(v34, 1) == 1)
    {
      break;
    }

    v11 = &v34[*(v21 + 48)];
    v19 = *v11;
    v20 = v11[8];
    sub_1B9832680(v34, v27);
    v46 = v19;
    v47 = v20 & 1;
    if (v20)
    {
      goto LABEL_8;
    }

    v18 = v19;
    v44 = v19;
    v43[1] = v19;
    v12 = *sub_1B98E7094();
    v17 = v43;
    v43[0] = v12;
    sub_1B9873520();
    v13 = sub_1B98F60E8();
    if ((v13 & 1) == 0)
    {
LABEL_8:
      v45 = v35;
      if ((sub_1B9894A34(v27, &v45) & 1) == 0)
      {
        sub_1B9833334(v27, v23);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
        sub_1B98F5A88();
        sub_1B983A3AC(v25);
      }
    }

    sub_1B983A3AC(v27);
  }

  sub_1B987349C(__b);
  v15 = &v49;
  v16 = v49;
  sub_1B98F54D8();
  sub_1B9868D78(v15);
  return v16;
}

uint64_t sub_1B9896B38()
{
  v5 = v0;
  sub_1B98F5F98();
  sub_1B98902A4();
  v4 = sub_1B98F5A38();
  *(v0 + 16) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5988, &qword_1B98FB418);
  sub_1B985253C(&v4, v0 + 24, v1);
  return v3;
}

uint64_t sub_1B9896C28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    sub_1B98F5E08();
    __break(1u);
  }

  v4 = *a2;
  v5 = a2[1];

  result = swift_task_create();
  *a3 = result;
  return result;
}