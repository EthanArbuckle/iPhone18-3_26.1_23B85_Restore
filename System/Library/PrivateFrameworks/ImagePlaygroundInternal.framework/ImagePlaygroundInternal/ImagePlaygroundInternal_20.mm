__n128 sub_1D24C3DA8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D24C376C();
  v7 = *(a2 + 24);
  v8 = type metadata accessor for LoadingPageControlView.ViewModel();
  WitnessTable = swift_getWitnessTable();
  LOBYTE(a1) = sub_1D24B2370(a1, v8, WitnessTable, *(v7 + 16));

  v10 = 80;
  if (a1)
  {
    v10 = 88;
  }

  v11 = *(v3 + *(a2 + 52) + v10);
  sub_1D2870F78();
  sub_1D2877848();
  sub_1D28748C8();
  *&v13[6] = v14;
  *&v13[22] = v15;
  *&v13[38] = v16;
  *(a3 + 10) = *v13;
  *a3 = v11;
  *(a3 + 8) = 256;
  *(a3 + 26) = *&v13[16];
  result = *&v13[32];
  *(a3 + 42) = *&v13[32];
  *(a3 + 56) = *(&v16 + 1);
  return result;
}

__n128 sub_1D24C3ED8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LoadingPageControlIndicatorStyle();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - v11;
  (*(*(a2 + 24) + 24))(*(a2 + 16), v10);
  v13 = sub_1D28785F8();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = _s23ImagePlaygroundInternal32LoadingPageControlIndicatorStyleO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_1D24B4510(v8);
  sub_1D24B4510(v12);
  if (v14)
  {
    sub_1D24C3DA8(a1, a2, &v36);
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v33 = v39;
    sub_1D2874938();
    sub_1D2877AE8();
    sub_1D2874928();
    v15 = sub_1D2874948();

    v28 = v30;
    v29[0] = v31;
    v29[1] = v32;
    v29[2] = v33;
    *&v29[3] = v15;
    sub_1D24CA534(&v28);
  }

  else
  {
    *&v28 = 0;
    sub_1D28772F8();
    v16 = v36;
    type metadata accessor for HomeAnimationCoordinator();
    sub_1D24CA53C(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
    v17 = sub_1D28744B8();
    LOBYTE(v36) = v18 & 1;
    sub_1D24C9220(&v30);
    *&v27[39] = v32;
    *&v27[55] = v33;
    *&v27[71] = v34;
    *&v27[87] = v35;
    *&v27[7] = v30;
    *&v27[23] = v31;
    v19 = v36;
    v20 = sub_1D24C3A60();
    v28 = v16;
    *(&v29[3] + 9) = *&v27[48];
    *(&v29[4] + 9) = *&v27[64];
    *(&v29[5] + 9) = *&v27[80];
    *(v29 + 9) = *v27;
    *(&v29[1] + 9) = *&v27[16];
    *&v29[0] = v17;
    BYTE8(v29[0]) = v19;
    *(&v29[2] + 9) = *&v27[32];
    *(&v29[6] + 1) = *&v27[95];
    *&v29[7] = v20;
    sub_1D24CA528(&v28);
  }

  v25[6] = v29[5];
  v26[0] = v29[6];
  *(v26 + 9) = *(&v29[6] + 9);
  v25[2] = v29[1];
  v25[3] = v29[2];
  v25[4] = v29[3];
  v25[5] = v29[4];
  v25[0] = v28;
  v25[1] = v29[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC748);
  sub_1D24CA36C(&qword_1ED89DAD8, &qword_1EC6DC730, &unk_1D288DA00, sub_1D24CA41C);
  sub_1D24CA36C(&qword_1ED89DDF0, &qword_1EC6DC748, &unk_1D288DA20, sub_1D24CA4D4);
  sub_1D2875AF8();
  v21 = v43[0];
  *(a3 + 96) = v42;
  *(a3 + 112) = v21;
  *(a3 + 121) = *(v43 + 9);
  v22 = v39;
  *(a3 + 32) = v38;
  *(a3 + 48) = v22;
  v23 = v41;
  *(a3 + 64) = v40;
  *(a3 + 80) = v23;
  result = v37;
  *a3 = v36;
  *(a3 + 16) = result;
  return result;
}

uint64_t LoadingPageControlView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v232 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC5E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v231 = &v170 - v4;
  v5 = sub_1D2875788();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v230 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v243 = a1;
  v9 = *(v7 + 16);
  v248 = v7;
  v229 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v237 = sub_1D2878F18();
  v228 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v227 = &v170 - v11;
  v234 = sub_1D2878F18();
  v226 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v225 = &v170 - v12;
  v224 = sub_1D2877748();
  v223 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v222 = &v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = *(a1 - 8);
  v251 = *(v250 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v249 = &v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = v8;
  v16 = sub_1D28784C8();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC6F8);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v270 = v16;
  v271 = AssociatedTypeWitness;
  v272 = v17;
  v273 = WitnessTable;
  v274 = AssociatedConformanceWitness;
  sub_1D2877598();
  swift_getTupleTypeMetadata3();
  v245 = sub_1D2877A58();
  v244 = swift_getWitnessTable();
  v19 = sub_1D28773C8();
  v247 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v201 = &v170 - v20;
  v188 = v19;
  v21 = sub_1D2874F68();
  v246 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v200 = &v170 - v22;
  v187 = swift_getWitnessTable();
  v268 = v187;
  v269 = MEMORY[0x1E697EBF8];
  v240 = MEMORY[0x1E697E858];
  v23 = swift_getWitnessTable();
  v270 = v21;
  v271 = v23;
  v182 = v21;
  v24 = v23;
  v184 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v241 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v183 = &v170 - v26;
  v270 = v21;
  v271 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v270 = OpaqueTypeMetadata2;
  v271 = &type metadata for ComposingFocusState.Value;
  v28 = OpaqueTypeMetadata2;
  v180 = OpaqueTypeMetadata2;
  v272 = OpaqueTypeConformance2;
  v29 = OpaqueTypeConformance2;
  v178 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeMetadata2();
  v193 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v179 = &v170 - v31;
  v270 = v28;
  v271 = &type metadata for ComposingFocusState.Value;
  v272 = v29;
  v32 = swift_getOpaqueTypeConformance2();
  v176 = v30;
  v270 = v30;
  v271 = v32;
  v33 = v32;
  v177 = v32;
  v34 = swift_getOpaqueTypeMetadata2();
  v186 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v175 = &v170 - v35;
  v270 = v30;
  v271 = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v172 = v34;
  v270 = v34;
  v271 = v36;
  v37 = v36;
  v173 = v36;
  v38 = swift_getOpaqueTypeMetadata2();
  v210 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v235 = &v170 - v39;
  v270 = v34;
  v271 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v270 = v38;
  v271 = v40;
  v171 = v38;
  v170 = v40;
  v202 = swift_getOpaqueTypeMetadata2();
  v209 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v189 = &v170 - v41;
  v267 = *(v7 + 8);
  v42 = v267;
  v242 = swift_getWitnessTable();
  sub_1D2875878();
  v43 = sub_1D2874F68();
  v208 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v190 = &v170 - v44;
  v185 = v43;
  v45 = sub_1D2874F68();
  v213 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v203 = &v170 - v46;
  v192 = v45;
  v47 = sub_1D2874F68();
  v217 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v236 = &v170 - v48;
  v270 = v38;
  v271 = v40;
  v49 = swift_getOpaqueTypeConformance2();
  v174 = v49;
  v50 = swift_getWitnessTable();
  v265 = v49;
  v266 = v50;
  v181 = swift_getWitnessTable();
  v51 = MEMORY[0x1E69805D0];
  v263 = v181;
  v264 = MEMORY[0x1E69805D0];
  v191 = swift_getWitnessTable();
  v261 = v191;
  v262 = v51;
  v52 = swift_getWitnessTable();
  v270 = v47;
  v271 = v16;
  v53 = v47;
  v195 = v47;
  v54 = v16;
  v233 = v16;
  v55 = v52;
  v196 = v52;
  v56 = v242;
  v272 = v52;
  v273 = v242;
  v57 = MEMORY[0x1E6981440];
  v58 = swift_getOpaqueTypeMetadata2();
  v212 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v194 = &v170 - v59;
  v270 = v53;
  v271 = v54;
  v272 = v55;
  v273 = v56;
  v60 = swift_getOpaqueTypeConformance2();
  v260 = v42;
  v61 = v234;
  v62 = swift_getWitnessTable();
  v270 = v58;
  v271 = v61;
  v63 = v58;
  v197 = v58;
  v199 = v60;
  v272 = v60;
  v273 = v62;
  v64 = v62;
  v198 = v62;
  v65 = swift_getOpaqueTypeMetadata2();
  v204 = v65;
  v215 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v238 = &v170 - v66;
  v270 = v63;
  v271 = v61;
  v272 = v60;
  v273 = v64;
  v214 = v57;
  v67 = swift_getOpaqueTypeConformance2();
  v206 = v67;
  v259 = *(AssociatedConformanceWitness + 1);
  v68 = v237;
  v205 = swift_getWitnessTable();
  v270 = v65;
  v271 = v68;
  v272 = v67;
  v273 = v205;
  v211 = swift_getOpaqueTypeMetadata2();
  v216 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  AssociatedConformanceWitness = &v170 - v69;
  sub_1D2876248();
  v219 = sub_1D2874F68();
  v220 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v207 = &v170 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v218 = &v170 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v221 = &v170 - v74;
  v75 = v243;
  v76 = v252;
  v254 = v253;
  v77 = v248;
  v255 = v248;
  v256 = v252;
  sub_1D28756A8();
  v78 = v201;
  sub_1D28773B8();
  sub_1D2877848();
  v79 = v188;
  v80 = v200;
  sub_1D2876E38();
  (*(v247 + 1))(v78, v79);
  v81 = v183;
  v82 = v182;
  sub_1D2876F98();
  (*(v246 + 1))(v80, v82);
  swift_getKeyPath();
  LOBYTE(v270) = 1;
  v83 = v179;
  v84 = v180;
  sub_1D28768D8();

  (*(v241 + 8))(v81, v84);
  sub_1D24C392C();
  v85 = v175;
  v86 = v176;
  sub_1D2876EB8();

  (*(v193 + 8))(v83, v86);
  v87 = v172;
  sub_1D2876B78();
  (*(v186 + 8))(v85, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D30);
  sub_1D2874AE8();
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1D287F550;
  sub_1D2874AD8();
  sub_1D2874A68();
  v89 = sub_1D2402C24(v88);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v90 = v250;
  v91 = *(v250 + 16);
  v245 = v250 + 16;
  v247 = v91;
  v92 = v249;
  v91(v249, v76, v75);
  v244 = *(v90 + 80);
  v93 = (v244 + 32) & ~v244;
  v94 = swift_allocObject();
  *(v94 + 16) = v253;
  *(v94 + 24) = v77;
  v95 = *(v90 + 32);
  v250 = v90 + 32;
  v246 = v95;
  v95(v94 + v93, v92, v75);
  v96 = v222;
  v97 = v171;
  v98 = v170;
  sub_1D24C66D8();
  v99 = v189;
  v100 = v235;
  MEMORY[0x1D389F1F0](v89, v96, sub_1D24C9558, v94, v97, v98);

  (*(v223 + 8))(v96, v224);
  (*(v210 + 8))(v100, v97);
  sub_1D28778E8();
  v101 = v252;
  v270 = *(v252 + *(v75 + 36));
  v235 = v270;
  sub_1D2870F68();
  v102 = v190;
  v103 = v202;
  sub_1D2876F78();

  (*(v209 + 8))(v99, v103);
  v104 = v249;
  v247(v249, v101, v75);
  v241 = v93;
  v105 = swift_allocObject();
  v106 = v248;
  *(v105 + 16) = v253;
  *(v105 + 24) = v106;
  v246(v105 + v93, v104, v75);
  v107 = v203;
  v108 = v185;
  sub_1D2876F38();

  (*(v208 + 8))(v102, v108);
  v109 = v249;
  v110 = v75;
  v111 = v247;
  v247(v249, v252, v75);
  v112 = v241;
  v113 = swift_allocObject();
  v114 = v253;
  *(v113 + 16) = v253;
  *(v113 + 24) = v106;
  v115 = v246;
  v246(v113 + v112, v109, v110);
  v116 = v192;
  sub_1D2876828();

  (*(v213 + 8))(v107, v116);
  v270 = v235;
  v117 = v249;
  v118 = v243;
  v111(v249, v252, v243);
  v119 = swift_allocObject();
  *(v119 + 16) = v114;
  *(v119 + 24) = v106;
  v120 = v118;
  v115(v119 + v112, v117, v118);
  sub_1D2870F68();
  v121 = v194;
  v122 = v195;
  v123 = v236;
  sub_1D2876F48();

  (*(v217 + 8))(v123, v122);
  v124 = v225;
  v125 = v120;
  v126 = v252;
  sub_1D24C37AC();
  v127 = v249;
  v128 = v247;
  v247(v249, v126, v125);
  v129 = v241;
  v130 = swift_allocObject();
  v131 = v248;
  *(v130 + 16) = v253;
  *(v130 + 24) = v131;
  v246(v130 + v129, v127, v125);
  v132 = v197;
  v133 = v234;
  sub_1D2876F48();

  (*(v226 + 8))(v124, v133);
  (*(v212 + 8))(v121, v132);
  v134 = v125;
  v135 = v252;
  sub_1D24C376C();
  v136 = v227;
  sub_1D24C33A8(v227);

  v137 = v249;
  v128(v249, v135, v134);
  v138 = v241;
  v139 = swift_allocObject();
  v140 = v248;
  *(v139 + 16) = v253;
  *(v139 + 24) = v140;
  v141 = v138;
  v142 = v246;
  v246(v139 + v138, v137, v134);
  v143 = v204;
  v144 = v237;
  v145 = v206;
  v146 = v205;
  v147 = v238;
  sub_1D2876F48();

  (*(v228 + 8))(v136, v144);
  (*(v215 + 8))(v147, v143);
  v148 = v243;
  v247(v137, v252, v243);
  v149 = swift_allocObject();
  v150 = v248;
  *(v149 + 16) = v253;
  *(v149 + 24) = v150;
  v142(v149 + v141, v137, v148);
  v270 = v143;
  v271 = v144;
  v272 = v145;
  v273 = v146;
  v251 = swift_getOpaqueTypeConformance2();
  v151 = v207;
  v152 = v211;
  v153 = AssociatedConformanceWitness;
  sub_1D2876D68();

  (*(v216 + 8))(v153, v152);
  sub_1D2875778();
  sub_1D2875768();
  sub_1D24C376C();
  v154 = sub_1D2876298();
  v155 = v231;
  (*(*(v154 - 8) + 56))(v231, 1, 1, v154);
  v156 = type metadata accessor for LoadingPageControlView.ViewModel();
  v157 = swift_getWitnessTable();
  v158 = sub_1D24B3B08(v155, v156, v157, v229);

  sub_1D22BD238(v155, &qword_1EC6DC5E0);
  v270 = v158;
  sub_1D2875748();
  sub_1D2875768();
  sub_1D24C376C();
  sub_1D24C8EE8();
  sub_1D2870F68();

  v159 = sub_1D2878498();

  v270 = v159;
  sub_1D2875748();
  sub_1D2875768();
  sub_1D28757A8();
  v160 = sub_1D2876668();
  v162 = v161;
  LOBYTE(v137) = v163;
  v164 = v218;
  v165 = v219;
  sub_1D2874F28();
  sub_1D22ED6E0(v160, v162, v137 & 1);

  v166 = *(v220 + 8);
  v166(v151, v165);
  v167 = sub_1D24CA53C(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
  v257 = v251;
  v258 = v167;
  swift_getWitnessTable();
  v168 = v221;
  sub_1D245980C(v164);
  v166(v164, v165);
  sub_1D245980C(v168);
  return (v166)(v168, v165);
}

uint64_t sub_1D24C6218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a1;
  v40 = a4;
  v38 = a3;
  v6 = type metadata accessor for LoadingPageControlView();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v30 - v8;
  v9 = sub_1D28784C8();
  v37 = v9;
  v32 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = AssociatedTypeWitness;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC6F8);
  v35 = v11;
  WitnessTable = swift_getWitnessTable();
  v34 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v50 = v9;
  v51 = AssociatedTypeWitness;
  v52 = v11;
  v53 = WitnessTable;
  v54 = AssociatedConformanceWitness;
  v14 = sub_1D2877598();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v31 = &v30 - v20;
  v50 = *(v39 + *(v6 + 36));
  v21 = v33;
  (*(v7 + 16))(v33, v19);
  v22 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v23 = swift_allocObject();
  v24 = v38;
  *(v23 + 16) = a2;
  *(v23 + 24) = v24;
  (*(v7 + 32))(v23 + v22, v21, v6);
  v25 = sub_1D24CA288();
  sub_1D2870F68();
  sub_1D2877588();
  v49 = v25;
  v26 = swift_getWitnessTable();
  v27 = v31;
  sub_1D245980C(v17);
  v28 = *(v15 + 8);
  v28(v17, v14);
  v47 = 0;
  v48 = 1;
  v50 = &v47;
  (*(v15 + 16))(v17, v27, v14);
  v45 = 0;
  v46 = 1;
  v51 = v17;
  v52 = &v45;
  v44[0] = MEMORY[0x1E6981840];
  v44[1] = v14;
  v44[2] = MEMORY[0x1E6981840];
  v41 = MEMORY[0x1E6981838];
  v42 = v26;
  v43 = MEMORY[0x1E6981838];
  sub_1D24C289C(&v50, 3uLL, v44);
  v28(v27, v14);
  return (v28)(v17, v14);
}

uint64_t sub_1D24C6624@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  type metadata accessor for LoadingPageControlView();
  sub_1D24C376C();
  v4 = type metadata accessor for LoadingPageControlView.ViewModel();
  WitnessTable = swift_getWitnessTable();
  sub_1D24B38F0(v4, WitnessTable, *(a1 + 16), a2);
}

uint64_t sub_1D24C66D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC720);
  sub_1D2877748();
  *(swift_allocObject() + 16) = xmmword_1D287F550;
  sub_1D2877728();
  sub_1D2877738();
  sub_1D24CA53C(&qword_1ED89D040, MEMORY[0x1E697D760]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC728);
  sub_1D22BB9D8(&qword_1ED89CEC0, &qword_1EC6DC728);
  return sub_1D2879088();
}

uint64_t sub_1D24C6858()
{
  type metadata accessor for LoadingPageControlView();
  result = sub_1D24C3998();
  if (result)
  {
    return sub_1D24C37FC();
  }

  return result;
}

uint64_t sub_1D24C689C()
{
  type metadata accessor for LoadingPageControlView();
  result = sub_1D24C3998();
  if (result == 1)
  {
    return sub_1D24C37FC();
  }

  return result;
}

uint64_t sub_1D24C68E4()
{
  type metadata accessor for LoadingPageControlView();
  sub_1D24C376C();
  v0 = sub_1D2870F68();
  sub_1D24C3090(v0);
}

uint64_t sub_1D24C6940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v83 = a3;
  v84 = a2;
  v79 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v60 = &v58 - v7;
  v78 = v8;
  v9 = sub_1D2878F18();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v63 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v58 - v10;
  v12 = sub_1D2878F18();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - v16;
  v18 = *(v9 - 8);
  v71 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v62 = &v58 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v58 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v58 - v27;
  v70 = type metadata accessor for LoadingPageControlView();
  sub_1D24C376C();
  v80 = v28;
  sub_1D24C33A8(v28);

  v68 = *(v13 + 16);
  v69 = v13 + 16;
  v68(v17, v84, v12);
  v29 = *(a4 - 8);
  v30 = 1;
  v66 = *(v29 + 48);
  v67 = v29 + 48;
  v31 = v66(v17, 1, a4);
  v76 = a4;
  v73 = v12;
  v61 = v13;
  v74 = v29;
  if (v31 == 1)
  {
    v29 = v13;
    v32 = v12;
  }

  else
  {
    sub_1D2879178();
    v30 = 0;
    v32 = a4;
  }

  (*(v29 + 8))(v17, v32);
  v33 = v82;
  v34 = v78;
  v64 = *(v82 + 56);
  v65 = v82 + 56;
  v64(v25, v30, 1, v78);
  v35 = v80;
  v36 = *(TupleTypeMetadata2 + 48);
  v37 = *(v18 + 16);
  (v37)(v11, v80, v9);
  v77 = v36;
  (v37)(&v11[v36], v25, v9);
  v38 = v9;
  v39 = *(v33 + 48);
  if (v39(v11, 1, v34) == 1)
  {
    v40 = *(v18 + 8);
    v40(v25, v38);
    v40(v35, v38);
    if (v39(&v11[v77], 1, v34) == 1)
    {
      return (v40)(v11, v38);
    }

    v45 = v34;
    v46 = v38;
  }

  else
  {
    v59 = v25;
    v42 = v62;
    v43 = v38;
    v37();
    v44 = v77;
    v45 = v34;
    if (v39(&v11[v77], 1, v34) != 1)
    {
      v54 = v82;
      v55 = v60;
      (*(v82 + 32))(v60, &v11[v44], v34);
      v47 = v76;
      swift_getAssociatedConformanceWitness();
      v56 = sub_1D2877F98();
      v57 = *(v54 + 8);
      v57(v55, v34);
      v40 = *(v18 + 8);
      v40(v59, v43);
      v40(v80, v43);
      v57(v42, v34);
      v46 = v43;
      result = (v40)(v11, v43);
      v49 = v74;
      v48 = v75;
      if (v56)
      {
        return result;
      }

      goto LABEL_11;
    }

    v40 = *(v18 + 8);
    v40(v59, v43);
    v46 = v43;
    v40(v80, v43);
    (*(v82 + 8))(v42, v45);
  }

  v47 = v76;
  (*(v63 + 8))(v11, TupleTypeMetadata2);
  v49 = v74;
  v48 = v75;
LABEL_11:
  sub_1D24C376C();
  v51 = v72;
  v50 = v73;
  v68(v72, v84, v73);
  v52 = 1;
  if (v66(v51, 1, v47) == 1)
  {
    v53 = v61;
  }

  else
  {
    sub_1D2879178();
    v52 = 0;
    v53 = v49;
    v50 = v47;
  }

  (*(v53 + 8))(v51, v50);
  v64(v48, v52, 1, v45);
  sub_1D24C8F60(v48);
  v40(v48, v46);
}

uint64_t sub_1D24C70F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73 = a2;
  v59 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v72 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v55 = &v53 - v9;
  v68 = v10;
  v11 = sub_1D2878F18();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v57 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v66 = &v53 - v12;
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D2878F18();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v61 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  v70 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v56 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v53 - v26;
  v62 = a5;
  v60 = type metadata accessor for LoadingPageControlView();
  v63 = a3;
  sub_1D24C37AC();
  v28 = (*(v13 + 48))(v22, 1, a4);
  v64 = v17;
  v65 = a4;
  v69 = v18;
  v67 = v11;
  if (v28)
  {
    v58 = *(v18 + 8);
    v58(v22, v17);
    v29 = 1;
  }

  else
  {
    (*(v13 + 16))(v16, v22, a4);
    v58 = *(v18 + 8);
    v58(v22, v17);
    sub_1D2879178();
    (*(v13 + 8))(v16, a4);
    v29 = 0;
  }

  v30 = v27;
  v31 = v72;
  v32 = v68;
  (*(v72 + 56))(v27, v29, 1, v68);
  v33 = v70;
  v34 = *(TupleTypeMetadata2 + 48);
  v35 = *(v70 + 16);
  v36 = v66;
  v37 = v27;
  v38 = v67;
  v35(v66, v37, v67);
  v35(&v36[v34], v73, v38);
  v39 = *(v31 + 48);
  if (v39(v36, 1, v32) == 1)
  {
    v40 = *(v33 + 8);
    v40(v30, v38);
    if (v39(&v36[v34], 1, v32) == 1)
    {
      return (v40)(v36, v38);
    }

    goto LABEL_9;
  }

  v54 = v30;
  v42 = v56;
  v35(v56, v36, v38);
  if (v39(&v36[v34], 1, v32) == 1)
  {
    (*(v70 + 8))(v54, v38);
    (*(v72 + 8))(v42, v32);
LABEL_9:
    (*(v57 + 8))(v36, TupleTypeMetadata2);
    v43 = v64;
LABEL_10:
    sub_1D24C376C();
    v44 = sub_1D24C8EE8();
    sub_1D2870F68();

    v74 = v44;
    MEMORY[0x1EEE9AC00](v45);
    v46 = v62;
    *(&v53 - 4) = v65;
    *(&v53 - 3) = v46;
    *(&v53 - 2) = v73;
    sub_1D28784C8();
    swift_getWitnessTable();
    v47 = v61;
    sub_1D2878348();

    sub_1D24C946C(v47);
    return (v58)(v47, v43);
  }

  v48 = v72;
  v49 = v55;
  (*(v72 + 32))(v55, &v36[v34], v32);
  swift_getAssociatedConformanceWitness();
  v50 = sub_1D2877F98();
  v51 = *(v48 + 8);
  v51(v49, v32);
  v52 = *(v70 + 8);
  v52(v54, v38);
  v51(v42, v32);
  result = (v52)(v36, v38);
  v43 = v64;
  if ((v50 & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1D24C7854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v5 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = &v34 - v7;
  v8 = sub_1D2878F18();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v34 - v10;
  v12 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v36 = v5;
  v37 = a3;
  sub_1D2879178();
  v18 = v42;
  (*(v42 + 56))(v17, 0, 1, AssociatedTypeWitness);
  v39 = TupleTypeMetadata2;
  v19 = *(TupleTypeMetadata2 + 48);
  v20 = *(v12 + 16);
  v20(v11, v17, v8);
  v21 = v43;
  v43 = v8;
  v20(&v11[v19], v21, v8);
  v22 = *(v18 + 48);
  v41 = AssociatedTypeWitness;
  if (v22(v11, 1, AssociatedTypeWitness) != 1)
  {
    v20(v40, v11, v43);
    v25 = v41;
    if (v22(&v11[v19], 1, v41) != 1)
    {
      v26 = v42;
      v27 = v35;
      (*(v42 + 32))(v35, &v11[v19], v25);
      swift_getAssociatedConformanceWitness();
      v28 = v40;
      v24 = sub_1D2877F98();
      v29 = *(v26 + 8);
      v29(v27, v25);
      v30 = *(v12 + 8);
      v31 = v17;
      v32 = v43;
      v30(v31, v43);
      v29(v28, v25);
      v30(v11, v32);
      return v24 & 1;
    }

    (*(v12 + 8))(v17, v43);
    (*(v42 + 8))(v40, v25);
    goto LABEL_6;
  }

  v23 = *(v12 + 8);
  v23(v17, v43);
  if (v22(&v11[v19], 1, v41) != 1)
  {
LABEL_6:
    (*(v38 + 8))(v11, v39);
    v24 = 0;
    return v24 & 1;
  }

  v23(v11, v43);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_1D24C7CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC5E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1D2876298();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  v15 = v14;
  if (v14 != *MEMORY[0x1E697CC28] && v14 != *MEMORY[0x1E697CC20])
  {
    return (*(v10 + 8))(v13, v9);
  }

  type metadata accessor for LoadingPageControlView();
  sub_1D24C376C();
  (*(v10 + 104))(v8, v15, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v16 = type metadata accessor for LoadingPageControlView.ViewModel();
  WitnessTable = swift_getWitnessTable();
  sub_1D24B3B08(v8, v16, WitnessTable, *(a4 + 16));

  return sub_1D22BD238(v8, &qword_1EC6DC5E0);
}

uint64_t sub_1D24C7F00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC700);
  MEMORY[0x1EEE9AC00](v3);
  v69 = v57 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC708);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v6 = v57 - v5;
  v7 = *(v1 + 112);
  v8 = *(v1 + 48) * 0.0174532925;
  v9 = *(v1 + 56) * 0.0174532925;
  sub_1D28745B8();
  v10 = *&v72 * 0.5 + 0.0;
  v66 = v7;
  sub_1D2870F78();
  v64 = sub_1D2877848();
  v65 = v11;
  sub_1D2877848();
  sub_1D28748C8();
  v70[0] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBD30);
  sub_1D2877308();
  v12 = *&v71 * 0.0174532925;
  sub_1D2877AE8();
  v14 = v13;
  v16 = v15;
  sub_1D2878568();
  sub_1D24C9DE4(v1, v70);
  v17 = sub_1D2878558();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = v2[5];
  *(v18 + 96) = v2[4];
  *(v18 + 112) = v20;
  v21 = v2[7];
  *(v18 + 128) = v2[6];
  *(v18 + 144) = v21;
  v22 = v2[1];
  *(v18 + 32) = *v2;
  *(v18 + 48) = v22;
  v23 = v2[3];
  *(v18 + 64) = v2[2];
  *(v18 + 80) = v23;
  v63 = sub_1D28785F8();
  v24 = *(v63 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v57 - v26;
  sub_1D2878588();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v59 = sub_1D2874E28();
    v60 = v57;
    v58 = *(v59 - 8);
    MEMORY[0x1EEE9AC00](v59);
    v29 = v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v70[0] = 0;
    *(&v70[0] + 1) = 0xE000000000000000;
    sub_1D2879168();

    *&v70[0] = 0xD000000000000041;
    *(&v70[0] + 1) = 0x80000001D28B8C50;
    v71 = 247;
    v30 = sub_1D28795C8();
    v61 = v3;
    MEMORY[0x1D38A0C50](v30);

    v57[1] = v57;
    v32 = MEMORY[0x1EEE9AC00](v31);
    v33 = v57 - v26;
    v34 = v57 - v26;
    v35 = v63;
    (*(v24 + 16))(v33, v34, v63, v32);
    v3 = v61;
    sub_1D2874E18();
    (*(v24 + 8))(v27, v35);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D90D8);
    (*(v58 + 32))(&v6[*(v36 + 36)], v29, v59);
    *v6 = v8;
    *(v6 + 1) = v9;
    v6[16] = 1;
    *(v6 + 17) = v71;
    *(v6 + 5) = *(&v71 + 3);
    *(v6 + 3) = 0;
    *(v6 + 4) = v8;
    *(v6 + 5) = v9;
    v6[48] = 1;
    *(v6 + 49) = *v80;
    *(v6 + 13) = *&v80[3];
    *(v6 + 7) = v10;
    v37 = v73;
    v38 = v74;
    *(v6 + 4) = v72;
    *(v6 + 5) = v37;
    v39 = v66;
    *(v6 + 12) = v38;
    *(v6 + 13) = v39;
    *(v6 + 56) = 256;
    *(v6 + 114) = v78;
    *(v6 + 59) = v79;
    v40 = v65;
    *(v6 + 15) = v64;
    *(v6 + 16) = v40;
    v41 = v76;
    *(v6 + 136) = v75;
    *(v6 + 152) = v41;
    *(v6 + 168) = v77;
  }

  else
  {
    v42 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D90E8) + 36)];
    v43 = sub_1D2874BC8();
    (*(v24 + 32))(&v42[*(v43 + 20)], v57 - v26, v63);
    *v42 = &unk_1D288D978;
    *(v42 + 1) = v18;
    *v6 = v8;
    *(v6 + 1) = v9;
    v6[16] = 1;
    *(v6 + 5) = *(&v71 + 3);
    *(v6 + 17) = v71;
    *(v6 + 3) = 0;
    *(v6 + 4) = v8;
    *(v6 + 5) = v9;
    v6[48] = 1;
    *(v6 + 13) = *&v80[3];
    *(v6 + 49) = *v80;
    *(v6 + 7) = v10;
    v44 = v73;
    *(v6 + 4) = v72;
    *(v6 + 5) = v44;
    v45 = v66;
    *(v6 + 12) = v74;
    *(v6 + 13) = v45;
    *(v6 + 56) = 256;
    *(v6 + 114) = v78;
    *(v6 + 59) = v79;
    v46 = v65;
    *(v6 + 15) = v64;
    *(v6 + 16) = v46;
    v47 = v76;
    *(v6 + 168) = v77;
    v48 = v75;
    *(v6 + 152) = v47;
    *(v6 + 136) = v48;
  }

  *(v6 + 23) = v12;
  *(v6 + 24) = v14;
  *(v6 + 25) = v16;
  v49 = swift_allocObject();
  v50 = v2[5];
  v49[5] = v2[4];
  v49[6] = v50;
  v51 = v2[7];
  v49[7] = v2[6];
  v49[8] = v51;
  v52 = v2[1];
  v49[1] = *v2;
  v49[2] = v52;
  v53 = v2[3];
  v49[3] = v2[2];
  v49[4] = v53;
  v54 = v69;
  (*(v67 + 32))(v69, v6, v68);
  v55 = (v54 + *(v3 + 36));
  *v55 = 0;
  v55[1] = 0;
  v55[2] = sub_1D24C9EC0;
  v55[3] = v49;
  sub_1D2285D0C(v54, v62);
  return sub_1D24C9DE4(v2, v70);
}

uint64_t sub_1D24C86A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a3;
  v4 = sub_1D2879328();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_1D2875628();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  sub_1D2878568();
  v3[14] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v3[15] = v7;
  v3[16] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D24C87F0, v7, v6);
}

uint64_t sub_1D24C87F0()
{
  v1 = *(v0 + 56);
  *(v0 + 32) = 0;
  sub_1D28778F8();
  sub_1D28778C8();

  sub_1D2877878();

  sub_1D2874608();
  MEMORY[0x1D389D070](0x3FA1111111111111, 0);
  v2 = *(v1 + 24);
  *(v0 + 16) = *(v1 + 16);
  *(v0 + 24) = v2;
  v3 = *(v0 + 16);
  v4 = v2;
  sub_1D2870F78();
  if ((v4 & 1) == 0)
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 88);
    sub_1D2878A28();
    v8 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22BD238(v0 + 16, &qword_1EC6DC710);
    (*(v6 + 8))(v5, v7);
    v3 = *(v0 + 40);
  }

  if (v3 && (swift_getKeyPath(), *(v0 + 48) = v3, sub_1D24CA53C(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator), sub_1D28719E8(), , v9 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow), , v9 == 1))
  {
    v10 = sub_1D2879908();
    v12 = v11;
    sub_1D2879718();
    v13 = swift_task_alloc();
    *(v0 + 136) = v13;
    *v13 = v0;
    v13[1] = sub_1D24C8B3C;

    return sub_1D233BA38(v10, v12, 0, 0, 1);
  }

  else
  {

    v15 = *(v0 + 56);
    *(swift_task_alloc() + 16) = v15;
    sub_1D2875048();

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1D24C8B3C()
{
  v2 = *v1;
  v2[18] = v0;

  v3 = v2[10];
  v4 = v2[9];
  v5 = v2[8];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[15];
    v7 = v2[16];
    v8 = sub_1D24C8DBC;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[15];
    v7 = v2[16];
    v8 = sub_1D24C8CD4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1D24C8CD4()
{

  v1 = *(v0 + 56);
  *(swift_task_alloc() + 16) = v1;
  sub_1D2875048();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D24C8DBC()
{

  v1 = *(v0 + 56);
  *(swift_task_alloc() + 16) = v1;
  sub_1D2875048();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D24C8EE8()
{
  swift_getKeyPath();
  sub_1D24C3230();

  return *(v0 + 16);
}

uint64_t sub_1D24C8F60(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v17 = *(*v1 + 88);
  v5 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  v6 = sub_1D2878F18();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v10 = *(v4 + 104);
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  v18 = *(swift_getAssociatedConformanceWitness() + 8);
  swift_getWitnessTable();
  v11 = sub_1D2877F98();
  v12 = (*(v7 + 8))(v9, v6);
  if (v11)
  {
    swift_beginAccess();
    (*(v7 + 24))(v2 + v10, a1, v6);
    return swift_endAccess();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v12);
    v14 = v17;
    *(&v16 - 2) = v5;
    *(&v16 - 1) = v14;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v16 - 2) = v2;
    *(&v16 - 1) = a1;
    sub_1D24C32D0();
  }
}

double sub_1D24C9220@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() labelColor];
  v3 = sub_1D2877128();
  sub_1D2870F78();
  v4 = sub_1D28770C8();

  __asm { FMOV            V0.2D, #8.0 }

  *a1 = _Q0;
  *(a1 + 16) = xmmword_1D288D670;
  *(a1 + 32) = xmmword_1D288D680;
  *(a1 + 48) = xmmword_1D288D690;
  result = 0.7;
  *(a1 + 64) = xmmword_1D288D6A0;
  *(a1 + 80) = v4;
  *(a1 + 88) = v3;
  return result;
}

uint64_t sub_1D24C92C4@<X0>(char **a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  sub_1D2878F18();
  sub_1D2877538();
  v5 = v1[4];

  return sub_1D24C2D68(v5, v3, v4, a1);
}

char *sub_1D24C9380(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(&v2[v5], 1, 1, AssociatedTypeWitness);
  sub_1D2871A18();
  *(v2 + 2) = a1;
  sub_1D24C8F60(a2);
  return v2;
}

uint64_t sub_1D24C946C(uint64_t a1)
{
  v2 = sub_1D2878F18();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - v4, a1, v2, v3);
  sub_1D2877538();
  return sub_1D28774F8();
}

uint64_t sub_1D24C9558@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  type metadata accessor for LoadingPageControlView();

  return sub_1D24C6624(v3, a1);
}

uint64_t sub_1D24C9624(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for LoadingPageControlView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_1D24C96BC()
{
  type metadata accessor for LoadingPageControlView();

  return sub_1D24C68E4();
}

uint64_t sub_1D24C9788(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for LoadingPageControlView() - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a3(a1, a2, v9, v6, v7);
}

uint64_t sub_1D24C9838(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for LoadingPageControlView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1D24C7CB0(a1, v6, v3, v4);
}

void sub_1D24C9910()
{
  type metadata accessor for LoadingPageControlView.ViewModel();
  sub_1D2874368();
  if (v0 <= 0x3F)
  {
    sub_1D28784C8();
    if (v1 <= 0x3F)
    {
      sub_1D2878F18();
      sub_1D2877538();
      if (v2 <= 0x3F)
      {
        sub_1D24C9A34();
        if (v3 <= 0x3F)
        {
          sub_1D24C9A8C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D24C9A34()
{
  if (!qword_1ED89E0B0)
  {
    v0 = sub_1D28742F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89E0B0);
    }
  }
}

void sub_1D24C9A8C()
{
  if (!qword_1ED89DF40)
  {
    v0 = sub_1D28746C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89DF40);
    }
  }
}

uint64_t sub_1D24C9ADC()
{
  swift_getAssociatedTypeWitness();
  result = sub_1D2878F18();
  if (v1 <= 0x3F)
  {
    result = sub_1D2871A28();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D24C9BDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D24C9C24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1D24C9CBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D24C9D04(uint64_t result, int a2, int a3)
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
      *(result + 112) = (a2 - 1);
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

uint64_t sub_1D24C9E1C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D22BC8FC;

  return sub_1D24C86A0(v2, v3, v0 + 32);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LoadingPageControlView();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  type metadata accessor for LoadingPageControlView.ViewModel();
  v4 = sub_1D2877998();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1D28779A8();

  v5 = v3 + *(v2 + 40);

  sub_1D2878F18();
  v6 = *(sub_1D2877538() + 32);
  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v5 + v6, 1, v1))
  {
    (*(v7 + 8))(v5 + v6, v1);
  }

  v8 = *(v2 + 48);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0);
  (*(*(v9 - 8) + 8))(v3 + v8, v9);

  return swift_deallocObject();
}

__n128 sub_1D24CA1DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LoadingPageControlView();
  sub_1D24C3ED8(a1, v4, v9);
  v5 = v10[0];
  *(a2 + 96) = v9[6];
  *(a2 + 112) = v5;
  *(a2 + 121) = *(v10 + 9);
  v6 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v6;
  v7 = v9[5];
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v7;
  result = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_1D24CA288()
{
  result = qword_1ED89D600;
  if (!qword_1ED89D600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC6F8);
    sub_1D24CA36C(&qword_1ED89DAD8, &qword_1EC6DC730, &unk_1D288DA00, sub_1D24CA41C);
    sub_1D24CA36C(&qword_1ED89DDF0, &qword_1EC6DC748, &unk_1D288DA20, sub_1D24CA4D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D600);
  }

  return result;
}

uint64_t sub_1D24CA36C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D24CA41C()
{
  result = qword_1ED89DD48;
  if (!qword_1ED89DD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC738);
    sub_1D22BB9D8(&qword_1ED89E088, &qword_1EC6DC740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD48);
  }

  return result;
}

unint64_t sub_1D24CA4D4()
{
  result = qword_1ED8A1080;
  if (!qword_1ED8A1080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A1080);
  }

  return result;
}

uint64_t sub_1D24CA53C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D24CA584()
{
  result = qword_1EC6D7CB8;
  if (!qword_1EC6D7CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D90E0);
    sub_1D24CA64C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7CB8);
  }

  return result;
}

unint64_t sub_1D24CA64C()
{
  result = qword_1ED89DAB0;
  if (!qword_1ED89DAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D90E0);
    sub_1D24CA6D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DAB0);
  }

  return result;
}

unint64_t sub_1D24CA6D8()
{
  result = qword_1ED89DD18;
  if (!qword_1ED89DD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC760);
    sub_1D22BB9D8(&qword_1ED89D4B8, &qword_1EC6DC768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD18);
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D24CA7B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 89))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D24CA7D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 89) = v3;
  return result;
}

void sub_1D24CA828()
{
  type metadata accessor for PresentationContentConfiguration();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1D24CB670(319, &qword_1ED89DFC8, MEMORY[0x1E697C250], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1D24CB620(319, &qword_1ED89DFF8, &type metadata for PresentationContentPopoverFrame, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D24CA934(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v52 = *(sub_1D28762C8() - 8);
  v4 = *(v52 + 84);
  v42 = sub_1D2875DE8();
  v50 = *(v42 - 8);
  v5 = *(v50 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v44 = v4;
  v43 = v6;
  if (v4 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  v41 = sub_1D2875E18();
  v49 = *(v41 - 8);
  v8 = *(v49 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v7 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  v45 = v10;
  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(*(a3 + 16) - 8);
  v46 = *(v12 + 84);
  v47 = v11;
  if (v46 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = *(v12 + 84);
  }

  v14 = *(sub_1D2875118() - 8);
  if (*(v14 + 64) <= 8uLL)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(v14 + 64);
  }

  v16 = *(v52 + 80);
  v17 = *(v52 + 64);
  v18 = *(v50 + 80);
  if (v5)
  {
    v19 = *(v50 + 64);
  }

  else
  {
    v19 = *(v50 + 64) + 1;
  }

  v20 = *(v49 + 80);
  v21 = *(v12 + 80);
  if (v8)
  {
    v22 = 7;
  }

  else
  {
    v22 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v19 + v20 + 2;
  v24 = ((((v22 + *(v49 + 64) + ((v23 + ((v17 + v18 + ((v16 + 24) & ~v16)) & ~v18)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v21 + 18;
  if (v13 < a2)
  {
    v25 = *(v14 + 80) & 0xF8 | 7;
    v26 = ((v15 + ((*(v12 + 64) + v25 + (v24 & ~v21)) & ~v25) + 8) & 0xFFFFFFFFFFFFFFF8) + 90;
    if (v26 <= 3)
    {
      v27 = ((a2 - v13 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v30 = *(a1 + v26);
        if (*(a1 + v26))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v30 = *(a1 + v26);
        if (v30)
        {
          goto LABEL_42;
        }
      }
    }

    else if (v29)
    {
      v30 = *(a1 + v26);
      if (*(a1 + v26))
      {
LABEL_42:
        v31 = v26 > 3;
        if (v26 <= 3)
        {
          v32 = (v30 - 1) << (8 * v26);
        }

        else
        {
          v32 = 0;
        }

        if (v31)
        {
          v38 = *a1;
        }

        else
        {
          v38 = *a1;
        }

        return v13 + (v38 | v32) + 1;
      }
    }
  }

  if (v47 < v46)
  {
    v33 = *(v12 + 48);
    v34 = (v24 + a1) & ~v21;
LABEL_54:

    return v33(v34);
  }

  v36 = a1 & 0xFFFFFFFFFFFFFFF8;
  if (v45 > 0x7FFFFFFE)
  {
    v34 = (v36 + v16 + 24) & ~v16;
    if (v44 == v47)
    {
      v33 = *(v52 + 48);
      goto LABEL_54;
    }

    v39 = (v34 + v17 + v18) & ~v18;
    if (v43 == v47)
    {
      if (v5 >= 2)
      {
        v40 = (*(v50 + 48))(v39, v5, v42);
        goto LABEL_72;
      }
    }

    else if (v8 >= 2)
    {
      v40 = (*(v49 + 48))((v23 + v39) & ~v20, v8, v41);
LABEL_72:
      if (v40 >= 2)
      {
        return v40 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v37 = *(v36 + 16);
  if (v37 >= 0xFFFFFFFF)
  {
    LODWORD(v37) = -1;
  }

  if ((v37 + 1) >= 2)
  {
    return v37;
  }

  else
  {
    return 0;
  }
}

void sub_1D24CADEC(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v51 = *(sub_1D28762C8() - 8);
  v5 = *(v51 + 84);
  v44 = sub_1D2875DE8();
  v6 = *(v44 - 8);
  v50 = v6;
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v46 = v5;
  v45 = v8;
  if (v5 <= v8)
  {
    v5 = v8;
  }

  v9 = *(sub_1D2875E18() - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v5 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v5;
  }

  v47 = v12;
  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a4 + 16) - 8);
  v48 = *(v14 + 84);
  v49 = v13;
  if (v48 <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = *(v14 + 84);
  }

  v16 = sub_1D2875118();
  v17 = v7;
  v18 = 0;
  v19 = *(v16 - 8);
  if (*(v19 + 64) <= 8uLL)
  {
    v20 = 8;
  }

  else
  {
    v20 = *(v19 + 64);
  }

  if (v17)
  {
    v21 = *(v6 + 64);
  }

  else
  {
    v21 = *(v6 + 64) + 1;
  }

  v22 = *(v51 + 80);
  v23 = *(v51 + 64);
  v24 = *(v6 + 80);
  v25 = *(v9 + 80);
  v26 = v21 + v25 + 2;
  v27 = *(v9 + 64);
  if (!v10)
  {
    ++v27;
  }

  v28 = ((v26 + ((v23 + v24 + ((v22 + 24) & ~v22)) & ~v24)) & ~v25) + v27;
  v29 = *(v14 + 80);
  v30 = ((((v28 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v29 + 18;
  v31 = *(v19 + 80) & 0xF8 | 7;
  v32 = ((v20 + ((*(v14 + 64) + v31 + (v30 & ~v29)) & ~v31) + 8) & 0xFFFFFFFFFFFFFFF8) + 90;
  if (v15 < a3)
  {
    if (v32 <= 3)
    {
      v33 = ((a3 - v15 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v33 = 2;
    }

    if (v33 >= 0x10000)
    {
      v34 = 4;
    }

    else
    {
      v34 = 2;
    }

    if (v33 < 0x100)
    {
      v34 = 1;
    }

    if (v33 >= 2)
    {
      v18 = v34;
    }

    else
    {
      v18 = 0;
    }
  }

  if (v15 >= a2)
  {
    if (v18 > 1)
    {
      if (v18 != 2)
      {
        *(a1 + v32) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_54;
      }

      *(a1 + v32) = 0;
    }

    else if (v18)
    {
      *(a1 + v32) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_54;
    }

    if (!a2)
    {
      return;
    }

LABEL_54:
    if (v49 >= v48)
    {
      if (v49 < a2)
      {
        v39 = ((((v28 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 18;
        v40 = ~v49 + a2;
        bzero(a1, v39);
        if (v39 <= 3)
        {
          *a1 = v40;
        }

        else
        {
          *a1 = v40;
        }

        return;
      }

      v41 = a1 & 0xFFFFFFFFFFFFFFF8;
      if (v47 <= 0x7FFFFFFE)
      {
        if (a2 > 0x7FFFFFFE)
        {
          *(v41 + 16) = 0;
          *(v41 + 16) = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v41 + 16) = a2;
        }

        return;
      }

      v38 = (v41 + v22 + 24) & ~v22;
      if (v46 == v49)
      {
        v37 = *(v51 + 56);
      }

      else
      {
        v42 = (v38 + v23 + v24) & ~v24;
        if (v45 == v49)
        {
          v43 = *(v50 + 56);

          v43(v42, a2 + 1, v17, v44);
          return;
        }

        v37 = *(v9 + 56);
        v38 = (v26 + v42) & ~v25;
      }
    }

    else
    {
      v37 = *(v14 + 56);
      v38 = (v30 + a1) & ~v29;
    }

    v37(v38);
    return;
  }

  v35 = ~v15 + a2;
  bzero(a1, v32);
  if (v32 <= 3)
  {
    v36 = HIWORD(v35) + 1;
  }

  else
  {
    v36 = 1;
  }

  if (v32 <= 3)
  {
    *a1 = v35;
    if (v18 > 1)
    {
LABEL_42:
      if (v18 == 2)
      {
        *(a1 + v32) = v36;
      }

      else
      {
        *(a1 + v32) = v36;
      }

      return;
    }
  }

  else
  {
    *a1 = v35;
    if (v18 > 1)
    {
      goto LABEL_42;
    }
  }

  if (v18)
  {
    *(a1 + v32) = v36;
  }
}

uint64_t type metadata accessor for PresentationContentConfiguration()
{
  result = qword_1ED89EBA8;
  if (!qword_1ED89EBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D24CB3D0()
{
  sub_1D24CB620(319, &qword_1ED8A6C30, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D24CB5BC();
    if (v1 <= 0x3F)
    {
      sub_1D28762C8();
      if (v2 <= 0x3F)
      {
        sub_1D24CB670(319, &qword_1ED89D3E0, MEMORY[0x1E697C828], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1D24CB670(319, &qword_1ED89D3C8, MEMORY[0x1E697FF50], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1D24CB620(319, &qword_1ED89DF18, MEMORY[0x1E697E0B8], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1D24CB670(319, &qword_1ED89CCC0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
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

void sub_1D24CB5BC()
{
  if (!qword_1ED89CE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB148);
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89CE08);
    }
  }
}

void sub_1D24CB620(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D24CB670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D24CB6D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2875AE8();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return sub_1D2875AF8();
}

uint64_t sub_1D24CB7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D2875AE8();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return sub_1D2875AF8();
}

uint64_t sub_1D24CB8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a2;
  v53 = a1;
  v4 = sub_1D28762C8();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D2875E18();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v54 = &v50[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v61 = &v50[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v56 = &v50[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v50[-v22];
  if (qword_1EC6D80A0 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for PresentationContentConfiguration();
  v24 = __swift_project_value_buffer(v62, qword_1EC6D80A8);
  v67 = a3;
  sub_1D24CFC8C(v24, a3);
  v25 = v7[13];
  v59 = *MEMORY[0x1E697FF38];
  v58 = v25;
  v25(v23);
  v57 = v7[7];
  v57(v23, 0, 1, v6);
  v60 = v9;
  v26 = *(v9 + 48);
  sub_1D22BD1D0(v68, v14, &qword_1EC6D99B8);
  sub_1D22BD1D0(v23, &v14[v26], &qword_1EC6D99B8);
  v66 = v7;
  v27 = v7[6];
  if (v27(v14, 1, v6) == 1)
  {
    sub_1D22BD238(v23, &qword_1EC6D99B8);
    v28 = v27(&v14[v26], 1, v6);
    v29 = v67;
    if (v28 == 1)
    {
      sub_1D22BD238(v14, &qword_1EC6D99B8);
      v30 = v68;
LABEL_10:
      v32 = v53;
      sub_1D2870F68();
      goto LABEL_12;
    }

LABEL_8:
    sub_1D22BD238(v14, &qword_1EC6E0DB0);
    v32 = 0;
    v30 = v68;
    goto LABEL_12;
  }

  v31 = v56;
  sub_1D22BD1D0(v14, v56, &qword_1EC6D99B8);
  if (v27(&v14[v26], 1, v6) == 1)
  {
    sub_1D22BD238(v23, &qword_1EC6D99B8);
    (v66[1])(v31, v6);
    v29 = v67;
    goto LABEL_8;
  }

  v33 = v66[4];
  v52 = v11;
  v34 = v55;
  v33(v55, &v14[v26], v6);
  sub_1D24CFD60();
  v51 = sub_1D2877F98();
  v35 = v66[1];
  v36 = v34;
  v11 = v52;
  v35(v36, v6);
  sub_1D22BD238(v23, &qword_1EC6D99B8);
  v35(v56, v6);
  sub_1D22BD238(v14, &qword_1EC6D99B8);
  v29 = v67;
  v30 = v68;
  if (v51)
  {
    goto LABEL_10;
  }

  v32 = 0;
LABEL_12:
  v37 = v61;

  v29[2] = v32;
  v58(v37, v59, v6);
  v57(v37, 0, 1, v6);
  v38 = *(v60 + 48);
  sub_1D22BD1D0(v30, v11, &qword_1EC6D99B8);
  sub_1D22BD1D0(v37, &v11[v38], &qword_1EC6D99B8);
  if (v27(v11, 1, v6) == 1)
  {
    sub_1D22BD238(v37, &qword_1EC6D99B8);
    if (v27(&v11[v38], 1, v6) == 1)
    {
      sub_1D22BD238(v11, &qword_1EC6D99B8);
LABEL_20:
      v41 = 0;
      v40 = 0x403E000000000000;
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v39 = v54;
  sub_1D22BD1D0(v11, v54, &qword_1EC6D99B8);
  if (v27(&v11[v38], 1, v6) == 1)
  {
    sub_1D22BD238(v37, &qword_1EC6D99B8);
    (v66[1])(v39, v6);
LABEL_17:
    sub_1D22BD238(v11, &qword_1EC6E0DB0);
    goto LABEL_18;
  }

  v42 = v66;
  v43 = v55;
  (v66[4])(v55, &v11[v38], v6);
  sub_1D24CFD60();
  v44 = sub_1D2877F98();
  v45 = v42[1];
  v45(v43, v6);
  sub_1D22BD238(v37, &qword_1EC6D99B8);
  v45(v39, v6);
  sub_1D22BD238(v11, &qword_1EC6D99B8);
  if (v44)
  {
    goto LABEL_20;
  }

LABEL_18:
  v40 = 0;
  v41 = 1;
LABEL_21:
  v46 = v67;
  *v67 = v40;
  *(v46 + 8) = v41;
  v47 = v63;
  sub_1D28762B8();
  v48 = v62;
  (*(v64 + 40))(v46 + *(v62 + 24), v47, v65);
  *(v46 + *(v48 + 52)) = 1;
  return sub_1D24CFCF0(v30, v46 + *(v48 + 40));
}

uint64_t sub_1D24CC110@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D2875628();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D22BD1D0(v2, v11, &qword_1EC6DAFC0);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_1D2878A28();
    v10 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1D24CC2AC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1D2875628();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_1D22BD1D0(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_1D2878A28();
    v17 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1D24CC4D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v17 = a3;
  v7 = sub_1D2875628();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1D22BD1D0(v6, &v16 - v12, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1D22EC9BC(v13, v17, a2);
  }

  sub_1D2878A28();
  v15 = sub_1D28762E8();
  sub_1D2873BE8();

  sub_1D2875618();
  swift_getAtKeyPath();

  return (*(v8 + 8))(v10, v7);
}

double sub_1D24CC74C@<D0>(_OWORD *a1@<X8>)
{
  sub_1D24016E8();
  sub_1D2875638();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = *v7;
  *(a1 + 73) = *&v7[9];
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D24CC7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a1;
  v180 = a2;
  v4 = sub_1D2875628();
  v183 = *(v4 - 8);
  v184 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v182 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1D2875118();
  v189 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v188 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v190 = &v146 - v8;
  v9 = *(a1 + 16);
  sub_1D2874CD8();
  v173 = v9;
  sub_1D2874F68();
  v10 = *(a1 + 24);
  v214 = v10;
  v215 = MEMORY[0x1E697EBF8];
  v170 = v10;
  swift_getWitnessTable();
  v11 = sub_1D2874398();
  WitnessTable = swift_getWitnessTable();
  *&v200 = v11;
  *(&v200 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v200 = v11;
  *(&v200 + 1) = WitnessTable;
  v181 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v200 = OpaqueTypeMetadata2;
  *(&v200 + 1) = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeMetadata2();
  *&v200 = OpaqueTypeMetadata2;
  *(&v200 + 1) = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  *&v200 = v15;
  *(&v200 + 1) = v16;
  swift_getOpaqueTypeMetadata2();
  *&v200 = v15;
  *(&v200 + 1) = v16;
  swift_getOpaqueTypeConformance2();
  sub_1D2874F88();
  v168 = sub_1D2875B08();
  v17 = sub_1D2877178();
  v191 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v155 = &v146 - v18;
  v19 = swift_getWitnessTable();
  v212 = v10;
  v213 = v19;
  v167 = swift_getWitnessTable();
  v211 = v167;
  v20 = swift_getWitnessTable();
  *&v200 = v17;
  v21 = v17;
  v164 = v17;
  v165 = v20;
  *(&v200 + 1) = v20;
  v22 = v20;
  v23 = swift_getOpaqueTypeMetadata2();
  v171 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v146 - v24;
  *&v200 = v21;
  *(&v200 + 1) = v22;
  v26 = swift_getOpaqueTypeConformance2();
  *&v200 = v23;
  v27 = v23;
  v160 = v23;
  v161 = v26;
  *(&v200 + 1) = v26;
  v28 = v26;
  v29 = swift_getOpaqueTypeMetadata2();
  v166 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v162 = &v146 - v30;
  *&v200 = v27;
  *(&v200 + 1) = v28;
  v31 = swift_getOpaqueTypeConformance2();
  *&v200 = v29;
  v32 = v29;
  v157 = v29;
  v158 = v31;
  *(&v200 + 1) = v31;
  v33 = v31;
  v34 = swift_getOpaqueTypeMetadata2();
  v163 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v156 = &v146 - v35;
  *&v200 = v32;
  *(&v200 + 1) = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v152 = v34;
  v153 = v36;
  *&v200 = v34;
  *(&v200 + 1) = v36;
  v37 = v36;
  v38 = swift_getOpaqueTypeMetadata2();
  v159 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v151 = &v146 - v39;
  *&v200 = v34;
  *(&v200 + 1) = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v148 = v38;
  v149 = v40;
  *&v200 = v38;
  *(&v200 + 1) = v40;
  v41 = v40;
  v42 = swift_getOpaqueTypeMetadata2();
  v154 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v146 - v43;
  *&v200 = v38;
  *(&v200 + 1) = v41;
  v45 = swift_getOpaqueTypeConformance2();
  *&v200 = v42;
  *(&v200 + 1) = v45;
  v46 = v45;
  swift_getOpaqueTypeMetadata2();
  v47 = v42;
  v147 = v42;
  v48 = sub_1D2875B08();
  v150 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v146 - v49;
  *&v200 = v47;
  v146 = v46;
  *(&v200 + 1) = v46;
  v209 = swift_getOpaqueTypeConformance2();
  v210 = v46;
  v186 = swift_getWitnessTable();
  *&v200 = v48;
  v187 = v48;
  *(&v200 + 1) = MEMORY[0x1E697E0B8];
  *&v201 = v186;
  *(&v201 + 1) = MEMORY[0x1E697E0A8];
  swift_getOpaqueTypeMetadata2();
  v51 = sub_1D2875B08();
  v176 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v185 = &v146 - v52;
  v177 = v53;
  v54 = sub_1D2874F68();
  v178 = *(v54 - 8);
  v179 = v54;
  MEMORY[0x1EEE9AC00](v54);
  v174 = &v146 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v175 = &v146 - v57;
  v192 = v173;
  v193 = v170;
  v194 = v2;
  v58 = v155;
  sub_1D2877168();
  sub_1D2870F68();
  v59 = v25;
  v60 = v164;
  sub_1D2876BB8();

  (*(v191 + 8))(v58, v60);
  v61 = type metadata accessor for PresentationContentConfiguration();
  v62 = v162;
  v63 = v160;
  sub_1D2876D98();
  (*(v171 + 8))(v59, v63);
  v65 = v156;
  v64 = v157;
  sub_1D2876D28();
  (*(v166 + 8))(v62, v64);
  v67 = v151;
  v66 = v152;
  sub_1D2876D08();
  (*(v163 + 8))(v65, v66);
  v68 = v148;
  sub_1D2876D18();
  v69 = v169;
  v70 = v68;
  v71 = v189;
  (*(v159 + 8))(v67, v70);
  v72 = v147;
  v73 = v188;
  sub_1D24CEE74(v2 + *(v61 + 28), v147, v146, v50);
  v74 = v44;
  v75 = v172;
  (*(v154 + 8))(v74, v72);
  v76 = v187;
  sub_1D24CF3E8(*(v2 + *(v61 + 44)), v187, v186, v185);
  (*(v150 + 8))(v50, v76);
  v191 = v2;
  v77 = v190;
  sub_1D24CC2AC(&qword_1EC6D9AB0, MEMORY[0x1E697C250], v190);
  sub_1D2875108();
  v78 = sub_1D28750F8();
  v79 = *(v71 + 8);
  v79(v73, v75);
  v79(v77, v75);
  v189 = v71 + 8;
  if (v78)
  {
    v80 = v69;
    v81 = (v191 + *(v69 + 44));
    *(v204 + 10) = *(v81 + 74);
    v82 = v81[3];
    v202 = v81[2];
    v203 = v82;
    v204[0] = v81[4];
    v83 = v81[1];
    v200 = *v81;
    v201 = v83;
    if (BYTE9(v204[1]))
    {
      v84 = v81[3];
      v197 = v81[2];
      v198 = v84;
      v199[0] = v81[4];
      *(v199 + 9) = *(v81 + 73);
      v85 = v81[1];
      v195 = *v81;
      v196 = v85;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v86 = sub_1D28762E8();
      sub_1D2873BE8();

      v73 = v188;
      v87 = v182;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22BD238(&v200, &qword_1EC6DC770);
      (*(v183 + 8))(v87, v184);
    }

    v173 = v195;
    v181 = BYTE8(v195);
  }

  else
  {
    v80 = v69;
    v173 = 0;
  }

  v88 = v190;
  sub_1D24CC2AC(&qword_1EC6D9AB0, MEMORY[0x1E697C250], v190);
  sub_1D2875108();
  v89 = sub_1D28750F8();
  v79(v73, v75);
  v79(v88, v75);
  if (v89)
  {
    v90 = (v191 + *(v80 + 44));
    *(v204 + 10) = *(v90 + 74);
    v91 = v90[3];
    v202 = v90[2];
    v203 = v91;
    v204[0] = v90[4];
    v92 = v90[1];
    v200 = *v90;
    v201 = v92;
    if (BYTE9(v204[1]))
    {
      v93 = v90[3];
      v197 = v90[2];
      v198 = v93;
      v199[0] = v90[4];
      *(v199 + 9) = *(v90 + 73);
      v94 = v90[1];
      v195 = *v90;
      v196 = v94;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v96 = sub_1D28762E8();
      sub_1D2873BE8();

      v73 = v188;
      v97 = v182;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22BD238(&v200, &qword_1EC6DC770);
      (*(v183 + 8))(v97, v184);
    }

    v171 = v196;
    v95 = BYTE8(v196);
  }

  else
  {
    v171 = 0;
    v95 = 1;
  }

  LODWORD(v170) = v95;
  v98 = v190;
  sub_1D24CC2AC(&qword_1EC6D9AB0, MEMORY[0x1E697C250], v190);
  sub_1D2875108();
  v99 = sub_1D28750F8();
  v79(v73, v75);
  v79(v98, v75);
  if (v99)
  {
    v100 = (v191 + *(v80 + 44));
    *(v204 + 10) = *(v100 + 74);
    v101 = v100[3];
    v202 = v100[2];
    v203 = v101;
    v204[0] = v100[4];
    v102 = v100[1];
    v200 = *v100;
    v201 = v102;
    if (BYTE9(v204[1]))
    {
      v103 = v100[3];
      v197 = v100[2];
      v198 = v103;
      v199[0] = v100[4];
      *(v199 + 9) = *(v100 + 73);
      v104 = v100[1];
      v195 = *v100;
      v196 = v104;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v106 = sub_1D28762E8();
      sub_1D2873BE8();

      v73 = v188;
      v107 = v182;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22BD238(&v200, &qword_1EC6DC770);
      (*(v183 + 8))(v107, v184);
    }

    v168 = v197;
    v105 = BYTE8(v197);
  }

  else
  {
    v168 = 0;
    v105 = 1;
  }

  LODWORD(v167) = v105;
  v108 = v190;
  sub_1D24CC2AC(&qword_1EC6D9AB0, MEMORY[0x1E697C250], v190);
  sub_1D2875108();
  v109 = sub_1D28750F8();
  v79(v73, v75);
  v79(v108, v75);
  if (v109)
  {
    v110 = (v191 + *(v80 + 44));
    *(v204 + 10) = *(v110 + 74);
    v111 = v110[3];
    v202 = v110[2];
    v203 = v111;
    v204[0] = v110[4];
    v112 = v110[1];
    v200 = *v110;
    v201 = v112;
    if (BYTE9(v204[1]))
    {
      v113 = v110[3];
      v197 = v110[2];
      v198 = v113;
      v199[0] = v110[4];
      *(v199 + 9) = *(v110 + 73);
      v114 = v110[1];
      v195 = *v110;
      v196 = v114;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v116 = sub_1D28762E8();
      sub_1D2873BE8();

      v73 = v188;
      v117 = v182;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22BD238(&v200, &qword_1EC6DC770);
      (*(v183 + 8))(v117, v184);
    }

    v166 = v198;
    v115 = BYTE8(v198);
  }

  else
  {
    v166 = 0;
    v115 = 1;
  }

  LODWORD(v165) = v115;
  v118 = v190;
  sub_1D24CC2AC(&qword_1EC6D9AB0, MEMORY[0x1E697C250], v190);
  sub_1D2875108();
  v119 = sub_1D28750F8();
  v79(v73, v75);
  v79(v118, v75);
  if (v119)
  {
    v120 = (v191 + *(v80 + 44));
    *(v204 + 10) = *(v120 + 74);
    v121 = v120[3];
    v202 = v120[2];
    v203 = v121;
    v204[0] = v120[4];
    v122 = v120[1];
    v200 = *v120;
    v201 = v122;
    if (BYTE9(v204[1]))
    {
      v123 = v120[3];
      v197 = v120[2];
      v198 = v123;
      v199[0] = v120[4];
      *(v199 + 9) = *(v120 + 73);
      v124 = v120[1];
      v195 = *v120;
      v196 = v124;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v125 = sub_1D28762E8();
      sub_1D2873BE8();

      v126 = v182;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22BD238(&v200, &qword_1EC6DC770);
      (*(v183 + 8))(v126, v184);
    }

    v164 = *&v199[0];
  }

  else
  {
    v164 = 0;
  }

  v127 = v190;
  sub_1D24CC2AC(&qword_1EC6D9AB0, MEMORY[0x1E697C250], v190);
  v128 = v188;
  sub_1D2875108();
  v129 = sub_1D28750F8();
  v79(v128, v75);
  v79(v127, v75);
  if (v129)
  {
    v130 = (v191 + *(v80 + 44));
    *(v204 + 10) = *(v130 + 74);
    v131 = v130[3];
    v202 = v130[2];
    v203 = v131;
    v204[0] = v130[4];
    v132 = v130[1];
    v200 = *v130;
    v201 = v132;
    if (BYTE9(v204[1]))
    {
      v133 = v130[3];
      v197 = v130[2];
      v198 = v133;
      v199[0] = v130[4];
      *(v199 + 9) = *(v130 + 73);
      v134 = v130[1];
      v195 = *v130;
      v196 = v134;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v135 = sub_1D28762E8();
      sub_1D2873BE8();

      v136 = v182;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22BD238(&v200, &qword_1EC6DC770);
      (*(v183 + 8))(v136, v184);
    }
  }

  sub_1D2877848();
  v137 = v186;
  *&v200 = v187;
  *(&v200 + 1) = MEMORY[0x1E697E0B8];
  *&v201 = v186;
  *(&v201 + 1) = MEMORY[0x1E697E0A8];
  v207 = swift_getOpaqueTypeConformance2();
  v208 = v137;
  v144 = v177;
  v145 = swift_getWitnessTable();
  v138 = v174;
  v139 = v185;
  sub_1D2876E38();
  (*(v176 + 8))(v139, v144);
  v205 = v145;
  v206 = MEMORY[0x1E697EBF8];
  v140 = v179;
  swift_getWitnessTable();
  v141 = v175;
  sub_1D245980C(v138);
  v142 = *(v178 + 8);
  v142(v138, v140);
  sub_1D245980C(v141);
  return (v142)(v141, v140);
}

uint64_t sub_1D24CDEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  sub_1D2874CD8();
  sub_1D2874F68();
  v37 = a3;
  v42 = a3;
  v43 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  sub_1D2874398();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v9 = swift_getOpaqueTypeMetadata2();
  v40 = OpaqueTypeMetadata2;
  v41 = OpaqueTypeConformance2;
  v33[0] = swift_getOpaqueTypeConformance2();
  v33[1] = v9;
  v10 = sub_1D2874F88();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v33 - v14;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v33 - v21;
  v23 = sub_1D2875B08();
  v35 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v33 - v24;
  v26 = type metadata accessor for PresentationContentConfiguration();
  if (*(a1 + *(v26 + 52)) == 1)
  {
    v27 = type metadata accessor for PresentationContentView();
    sub_1D245980C(a1 + *(v27 + 36));
    sub_1D245980C(v22);
    swift_getWitnessTable();
    sub_1D24CB6D4(v19, a2);
    v28 = *(v16 + 8);
    v28(v19, a2);
    v28(v22, a2);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v26);
    v29 = v37;
    v33[-4] = a2;
    v33[-3] = v29;
    v33[-2] = a1;
    sub_1D2874F78();
    swift_getWitnessTable();
    sub_1D245980C(v12);
    v30 = *(v34 + 8);
    v30(v12, v10);
    sub_1D245980C(v15);
    sub_1D24CB7CC(v12, a2, v10);
    v30(v12, v10);
    v30(v15, v10);
  }

  WitnessTable = swift_getWitnessTable();
  v38 = v37;
  v39 = WitnessTable;
  swift_getWitnessTable();
  sub_1D245980C(v25);
  return (*(v35 + 8))(v25, v23);
}

uint64_t sub_1D24CE484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37[0] = a3;
  v38 = a2;
  v40 = a1;
  v56 = a4;
  v5 = sub_1D2875F18();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v53 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1D2876038();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1D2875B78();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2874F68();
  v63 = a3;
  v64 = MEMORY[0x1E697EBF8];
  v37[1] = swift_getWitnessTable();
  v10 = sub_1D2874398();
  v39 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v37 - v11;
  WitnessTable = swift_getWitnessTable();
  v61 = v10;
  v62 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v57 = v37 - v15;
  v61 = v10;
  v62 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = OpaqueTypeMetadata2;
  v62 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeMetadata2();
  v48 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v45 = v37 - v18;
  v61 = OpaqueTypeMetadata2;
  v62 = OpaqueTypeConformance2;
  v42 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v61 = v17;
  v62 = v19;
  v43 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v47 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v41 = v37 - v24;
  v58 = v38;
  v59 = v37[0];
  v60 = v40;
  sub_1D2876318();
  sub_1D28743A8();
  sub_1D2875B68();
  v25 = sub_1D2876318();
  sub_1D2876308();
  sub_1D2876308();
  if (sub_1D2876308() != v25)
  {
    sub_1D2876308();
  }

  sub_1D2876C28();
  (*(v44 + 8))(v9, v46);
  (*(v39 + 8))(v12, v10);
  v26 = v50;
  sub_1D2876018();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBDD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F550;
  v28 = sub_1D2876318();
  *(inited + 32) = v28;
  v29 = sub_1D28762F8();
  *(inited + 33) = v29;
  sub_1D2876308();
  sub_1D2876308();
  if (sub_1D2876308() != v28)
  {
    sub_1D2876308();
  }

  sub_1D2876308();
  if (sub_1D2876308() != v29)
  {
    sub_1D2876308();
  }

  v30 = v45;
  v31 = v57;
  sub_1D2876A48();
  (*(v51 + 8))(v26, v52);
  (*(v49 + 8))(v31, OpaqueTypeMetadata2);
  v32 = v53;
  sub_1D2875F08();
  v33 = v43;
  sub_1D2876CF8();
  (*(v54 + 8))(v32, v55);
  (*(v48 + 8))(v30, v17);
  v61 = v17;
  v62 = v33;
  swift_getOpaqueTypeConformance2();
  v34 = v41;
  sub_1D245980C(v22);
  v35 = *(v47 + 8);
  v35(v22, v20);
  sub_1D245980C(v34);
  return (v35)(v34, v20);
}

uint64_t sub_1D24CEC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D2874F68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  type metadata accessor for PresentationContentView();
  sub_1D2877848();
  sub_1D2876E38();
  v13[0] = a3;
  v13[1] = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  sub_1D245980C(v7);
  v11 = *(v5 + 8);
  v11(v7, v4);
  sub_1D245980C(v10);
  return (v11)(v10, v4);
}

uint64_t sub_1D24CEE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a1;
  v43 = a4;
  v38 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v34 - v8;
  v46 = v9;
  v47 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAFA8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v34 - v18;
  v20 = sub_1D2875DE8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D2875B08();
  v41 = *(v24 - 8);
  v42 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v34 - v25;
  sub_1D22BD1D0(v39, v19, &qword_1EC6DAFA8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1D22BD238(v19, &qword_1EC6DAFA8);
    v27 = v36;
    sub_1D245980C(v40);
    v28 = v37;
    sub_1D245980C(v27);
    v46 = a2;
    v47 = a3;
    swift_getOpaqueTypeConformance2();
    sub_1D24CB7CC(v28, OpaqueTypeMetadata2, a2);
    v29 = *(v38 + 8);
    v29(v28, a2);
    v29(v27, a2);
  }

  else
  {
    v30 = *(v21 + 32);
    v34 = v23;
    v30(v23, v19, v20);
    sub_1D2876D88();
    v46 = a2;
    v47 = a3;
    swift_getOpaqueTypeConformance2();
    sub_1D245980C(v13);
    v40 = v20;
    v31 = *(v35 + 8);
    v31(v13, OpaqueTypeMetadata2);
    sub_1D245980C(v16);
    sub_1D24CB6D4(v13, OpaqueTypeMetadata2);
    v31(v13, OpaqueTypeMetadata2);
    v31(v16, OpaqueTypeMetadata2);
    (*(v21 + 8))(v34, v40);
  }

  v46 = a2;
  v47 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = a3;
  v32 = v42;
  swift_getWitnessTable();
  sub_1D245980C(v26);
  return (*(v41 + 8))(v26, v32);
}

uint64_t sub_1D24CF3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v29 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v37 = v12;
  v38 = MEMORY[0x1E697E0B8];
  v39 = v13;
  v40 = MEMORY[0x1E697E0A8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v31 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v30 = &v29 - v18;
  v19 = sub_1D2875B08();
  v32 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v29 - v20;
  if (a1)
  {
    v37 = a1;
    sub_1D2870F78();
    v22 = MEMORY[0x1E697E0B8];
    v29 = a1;
    v23 = v19;
    v24 = MEMORY[0x1E697E0A8];
    sub_1D2876CB8();
    v37 = a2;
    v38 = v22;
    v39 = a3;
    v40 = v24;
    v19 = v23;
    swift_getOpaqueTypeConformance2();
    v25 = v30;
    sub_1D245980C(v16);
    v26 = *(v31 + 8);
    v26(v16, OpaqueTypeMetadata2);
    sub_1D245980C(v25);
    sub_1D24CB6D4(v16, OpaqueTypeMetadata2);

    v26(v16, OpaqueTypeMetadata2);
    v26(v25, OpaqueTypeMetadata2);
  }

  else
  {
    sub_1D245980C(v33);
    sub_1D245980C(v11);
    v37 = a2;
    v38 = MEMORY[0x1E697E0B8];
    v39 = a3;
    v40 = MEMORY[0x1E697E0A8];
    swift_getOpaqueTypeConformance2();
    sub_1D24CB7CC(v8, OpaqueTypeMetadata2, a2);
    v27 = *(v29 + 8);
    v27(v8, a2);
    v27(v11, a2);
  }

  v37 = a2;
  v38 = MEMORY[0x1E697E0B8];
  v39 = a3;
  v40 = MEMORY[0x1E697E0A8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = a3;
  swift_getWitnessTable();
  sub_1D245980C(v21);
  return (*(v32 + 8))(v21, v19);
}

BOOL sub_1D24CF868(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 9) = *(a1 + 73);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10[0] = a2[4];
  *(v10 + 9) = *(a2 + 73);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1D24CFB2C(v7, v9);
}

uint64_t sub_1D24CF93C()
{
  v0 = type metadata accessor for PresentationContentConfiguration();
  __swift_allocate_value_buffer(v0, qword_1EC6D80A8);
  v1 = __swift_project_value_buffer(v0, qword_1EC6D80A8);
  *v1 = 0x403E000000000000;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  sub_1D28762A8();
  v2 = v0[7];
  sub_1D2875DC8();
  v3 = sub_1D2875DE8();
  (*(*(v3 - 8) + 56))(v1 + v2, 0, 1, v3);
  *(v1 + v0[8]) = 2;
  *(v1 + v0[9]) = 2;
  v4 = v0[10];
  v5 = sub_1D2875E18();
  result = (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + v0[11]) = 0;
  v7 = v1 + v0[12];
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  *(v1 + v0[13]) = 0;
  return result;
}

void sub_1D24CFA70(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
}

uint64_t sub_1D24CFAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D24CFC38();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

BOOL sub_1D24CFB2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v7 = *(a2 + 88);
  if ((*(a1 + 88) & 1) == 0)
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v7 = 1;
    }

    return (v7 & 1) == 0;
  }

  return (*(a2 + 88) & 1) != 0;
}

unint64_t sub_1D24CFC38()
{
  result = qword_1EC6D80C8;
  if (!qword_1EC6D80C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D80C8);
  }

  return result;
}

uint64_t sub_1D24CFC8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentationContentConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24CFCF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D24CFD60()
{
  result = qword_1ED89D3D0;
  if (!qword_1ED89D3D0)
  {
    sub_1D2875E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D3D0);
  }

  return result;
}

void sub_1D24CFDB8()
{
  sub_1D24D042C();
  if (v0 <= 0x3F)
  {
    sub_1D2878F18();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D24CFE50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1D2874518() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v9 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v9;
  }

  if (v14 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v6 + 64);
  if (v8)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  v18 = *(v7 + 80);
  v19 = *(v10 + 80);
  v20 = *(v10 + 64);
  if (!v12)
  {
    ++v20;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v15)
  {
    goto LABEL_40;
  }

  v21 = v20 + ((v17 + ((v18 + 1) & ~v18) + v19) & ~v19);
  v22 = 8 * v21;
  if (v21 > 3)
  {
    goto LABEL_20;
  }

  v24 = ((a2 - v15 + ~(-1 << v22)) >> v22) + 1;
  if (HIWORD(v24))
  {
    v23 = *(a1 + v21);
    if (v23)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v24 <= 0xFF)
    {
      if (v24 < 2)
      {
        goto LABEL_40;
      }

LABEL_20:
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_40;
      }

LABEL_27:
      v25 = (v23 - 1) << v22;
      if (v21 > 3)
      {
        v25 = 0;
      }

      if (v21)
      {
        if (v21 <= 3)
        {
          v26 = v21;
        }

        else
        {
          v26 = 4;
        }

        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v27 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v27 = *a1;
          }
        }

        else if (v26 == 1)
        {
          v27 = *a1;
        }

        else
        {
          v27 = *a1;
        }
      }

      else
      {
        v27 = 0;
      }

      return v15 + (v27 | v25) + 1;
    }

    v23 = *(a1 + v21);
    if (*(a1 + v21))
    {
      goto LABEL_27;
    }
  }

LABEL_40:
  if (v14 <= 0xFE)
  {
    v28 = *a1;
    v29 = v28 >= 2;
    v30 = (v28 + 2147483646) & 0x7FFFFFFF;
    if (v29)
    {
      return (v30 + 1);
    }

    else
    {
      return 0;
    }
  }

  v32 = (a1 + v18 + 1) & ~v18;
  if (v9 == v15)
  {
    if (v8 < 2)
    {
      return 0;
    }

    v33 = (*(v7 + 48))(v32);
  }

  else
  {
    v33 = (*(v11 + 48))((v32 + v17 + v19) & ~v19, v12);
  }

  if (v33 >= 2)
  {
    return v33 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1D24D00E4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_1D2874518() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = *(*(a4 + 16) - 8);
  if (v11)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v12 + 84);
  v16 = *(v9 + 64);
  v17 = *(v9 + 80);
  v18 = *(v12 + 80);
  v19 = *(v12 + 64);
  v20 = v15 - 1;
  if (!v15)
  {
    v20 = 0;
  }

  if (v13 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v13;
  }

  if (v21 <= 0xFE)
  {
    v22 = 254;
  }

  else
  {
    v22 = v21;
  }

  if (v11)
  {
    v23 = v16;
  }

  else
  {
    v23 = v16 + 1;
  }

  if (v15)
  {
    v24 = v19;
  }

  else
  {
    v24 = v19 + 1;
  }

  v25 = ((v23 + ((v17 + 1) & ~v17) + v18) & ~v18) + v24;
  if (a3 > v22)
  {
    v8 = 1;
    if (v25 <= 3)
    {
      v26 = ((a3 - v22 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
      v27 = HIWORD(v26);
      if (v26 < 0x100)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      if (v26 >= 2)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      if (v27)
      {
        v8 = 4;
      }

      else
      {
        v8 = v29;
      }
    }
  }

  if (v22 < a2)
  {
    v30 = ~v22 + a2;
    if (v25 < 4)
    {
      v31 = (v30 >> (8 * v25)) + 1;
      if (v25)
      {
        v32 = v30 & ~(-1 << (8 * v25));
        bzero(a1, v25);
        if (v25 != 3)
        {
          if (v25 == 2)
          {
            *a1 = v32;
            if (v8 > 1)
            {
LABEL_62:
              if (v8 == 2)
              {
                *&a1[v25] = v31;
              }

              else
              {
                *&a1[v25] = v31;
              }

              return;
            }
          }

          else
          {
            *a1 = v30;
            if (v8 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v32;
        a1[2] = BYTE2(v32);
      }

      if (v8 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v25);
      *a1 = v30;
      v31 = 1;
      if (v8 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v8)
    {
      a1[v25] = v31;
    }

    return;
  }

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *&a1[v25] = 0;
  }

  else if (v8)
  {
    a1[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  if (v21 > 0xFE)
  {
    v33 = &a1[v17 + 1] & ~v17;
    if (v13 == v22)
    {
      if (v11 >= 2)
      {
        v34 = *(v10 + 56);

        v34(v33, a2 + 1);
      }
    }

    else
    {
      v35 = *(v14 + 56);

      v35((v33 + v23 + v18) & ~v18, a2 + 1, v15);
    }
  }

  else
  {
    *a1 = a2 + 1;
  }
}

void sub_1D24D042C()
{
  if (!qword_1ED89DF98)
  {
    sub_1D2874518();
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89DF98);
    }
  }
}

uint64_t sub_1D24D04C8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a5;
  v22 = a6;
  v23 = a3;
  v9 = sub_1D2878F18();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC788);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for IOSHoverEffect();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - v17;
  v19 = sub_1D2874518();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  v20 = *(a4 - 8);
  (*(v20 + 16))(v11, a2, a4);
  (*(v20 + 56))(v11, 0, 1, a4);
  sub_1D24D12AC(a1, v14, v11, v18);
  MEMORY[0x1D389F9A0](v18, v23, v15, v24);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_1D24D0720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC788);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1D24D13BC(v2 + *(a1 + 36), &v12 - v6);
  v8 = sub_1D2874518();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  sub_1D2874508();
  result = (v10)(v7, 1, v8);
  if (result != 1)
  {
    return sub_1D22BD238(v7, &qword_1EC6DC788);
  }

  return result;
}

uint64_t sub_1D24D0870@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a1;
  v81 = a3;
  swift_getWitnessTable();
  v5 = sub_1D2875D08();
  v6 = sub_1D2874518();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1D24D1364();
  v93 = v5;
  v94 = v6;
  v95 = WitnessTable;
  v96 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v73 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v72 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = v63 - v11;
  v12 = swift_checkMetadataState();
  v76 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v75 = v63 - v13;
  v69 = sub_1D2875258();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v66 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  v63[1] = *(a2 + 24);
  sub_1D2876048();
  v87 = v5;
  v16 = sub_1D2874F68();
  v67 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v64 = v63 - v17;
  v18 = swift_getWitnessTable();
  v88 = WitnessTable;
  v91 = WitnessTable;
  v92 = v18;
  v83 = swift_getWitnessTable();
  v84 = v16;
  v93 = v16;
  v94 = v12;
  v19 = v3;
  v82 = v12;
  v95 = v83;
  v96 = v8;
  v86 = v8;
  v20 = swift_getOpaqueTypeMetadata2();
  v70 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v65 = v63 - v24;
  v25 = sub_1D2878F18();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v63 - v27;
  v29 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v20;
  v33 = sub_1D2875B08();
  v78 = *(v33 - 8);
  v79 = v33;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v77 = v63 - v35;
  (*(v26 + 16))(v28, v19 + *(a2 + 40), v25, v34);
  if ((*(v29 + 48))(v28, 1, v15) == 1)
  {
    (*(v26 + 8))(v28, v25);
    v36 = v75;
    sub_1D24D0720(a2, v75);
    v37 = v72;
    v39 = v87;
    v38 = v88;
    v40 = v82;
    v41 = v86;
    sub_1D2876818();
    (*(v76 + 8))(v36, v40);
    v93 = v39;
    v94 = v40;
    v95 = v38;
    v96 = v41;
    swift_getOpaqueTypeConformance2();
    v42 = v71;
    v43 = OpaqueTypeMetadata2;
    sub_1D245980C(v37);
    v44 = *(v73 + 8);
    v44(v37, v43);
    sub_1D245980C(v42);
    v93 = v84;
    v94 = v40;
    v95 = v83;
    v96 = v41;
    swift_getOpaqueTypeConformance2();
    v45 = v77;
    sub_1D24CB7CC(v37, v74, v43);
    v44(v37, v43);
    v44(v42, v43);
  }

  else
  {
    (*(v29 + 32))(v32, v28, v15);
    v46 = v66;
    sub_1D2875238();
    v73 = v29;
    v47 = v64;
    v48 = v87;
    sub_1D2876898();
    (*(v68 + 8))(v46, v69);
    v49 = v75;
    sub_1D24D0720(a2, v75);
    v51 = v83;
    v50 = v84;
    v80 = v32;
    v52 = v82;
    v53 = v86;
    sub_1D2876818();
    (*(v76 + 8))(v49, v52);
    (*(v67 + 8))(v47, v50);
    v93 = v50;
    v94 = v52;
    v95 = v51;
    v96 = v53;
    swift_getOpaqueTypeConformance2();
    v54 = v65;
    v76 = v15;
    v55 = v74;
    sub_1D245980C(v22);
    v56 = *(v70 + 8);
    v56(v22, v55);
    sub_1D245980C(v54);
    v93 = v48;
    v94 = v52;
    v95 = v88;
    v96 = v53;
    swift_getOpaqueTypeConformance2();
    v45 = v77;
    sub_1D24CB6D4(v22, v55);
    v56(v22, v55);
    v56(v54, v55);
    (*(v73 + 8))(v80, v76);
  }

  v57 = v82;
  v93 = v84;
  v94 = v82;
  v58 = v86;
  v95 = v83;
  v96 = v86;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = v87;
  v94 = v57;
  v95 = v88;
  v96 = v58;
  v60 = swift_getOpaqueTypeConformance2();
  v89 = OpaqueTypeConformance2;
  v90 = v60;
  v61 = v79;
  swift_getWitnessTable();
  sub_1D245980C(v45);
  return (*(v78 + 8))(v45, v61);
}

uint64_t sub_1D24D12AC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for IOSHoverEffect();
  sub_1D24D1550(a2, &a4[*(v7 + 36)]);
  v8 = *(v7 + 40);
  v9 = sub_1D2878F18();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a4[v8], a3, v9);
}

unint64_t sub_1D24D1364()
{
  result = qword_1ED89DFA0;
  if (!qword_1ED89DFA0)
  {
    sub_1D2874518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DFA0);
  }

  return result;
}

uint64_t sub_1D24D13BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24D142C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D90B0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v10 = *(v9 + 36);
  v11 = sub_1D2874518();
  (*(*(v11 - 8) + 56))(&v8[v10], 1, 1, v11);
  *&v8[*(v6 + 40)] = 0;
  *v8 = a1;
  MEMORY[0x1D389F9A0](v8, a2, v6, a3);
  return sub_1D22BD238(v8, &qword_1EC6D90B0);
}

uint64_t sub_1D24D1550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC788);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24D15C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  sub_1D24D2DFC();
  sub_1D28719E8();

  swift_beginAccess();
  v5 = *(a1 + 16);
  if (*(v5 + 16))
  {
    v6 = *(v5 + 32);
    swift_getErrorValue();
    v7 = v6;
    v8 = sub_1D2879748();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  sub_1D2878568();
  sub_1D2870F78();
  v11 = sub_1D2878558();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a1;
  sub_1D2870F78();
  v14 = sub_1D2878558();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v13;
  v15[4] = a1;
  sub_1D2877528();
  swift_getKeyPath();
  sub_1D28719E8();

  v16 = *(a1 + 16);
  if (*(v16 + 16))
  {
    v17 = *(v16 + 32);
    v18 = v17;
  }

  else
  {
    v17 = 0;
  }

  sub_1D24D18C4(v8, v10, v23, v24, v25, v17, a2, a3, a4);
}

uint64_t sub_1D24D1808@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  swift_getKeyPath();
  sub_1D24D2DFC();
  sub_1D28719E8();

  result = swift_beginAccess();
  *a2 = *(*(a1 + 16) + 16) != 0;
  return result;
}

uint64_t sub_1D24D18C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v29 = a9;
  v22 = a7;
  v23 = a1;
  v25 = a6;
  v26 = a3;
  v28 = a5;
  v27 = a4;
  v24 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE6C0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAAD0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D94B0);
  v14 = sub_1D22BD06C();
  v15 = sub_1D24D2D98();
  v16 = sub_1D23D4398();
  v31 = a7;
  v32 = MEMORY[0x1E69E6158];
  v33 = v11;
  v34 = v12;
  v35 = v13;
  v36 = a8;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v20 = &v22 - v19;
  v31 = v23;
  v32 = v24;
  v30 = v25;
  sub_1D2876DE8();
  (*(v18 + 16))(v29, v20, OpaqueTypeMetadata2);
  return (*(v18 + 8))(v20, OpaqueTypeMetadata2);
}

uint64_t sub_1D24D1AF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  sub_1D2874268();
  v3 = sub_1D2874288();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return sub_1D2877358();
}

uint64_t sub_1D24D1C0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D2875788();
  MEMORY[0x1EEE9AC00](v2 - 8);
  swift_getErrorValue();
  sub_1D24D1D44(v8);
  if (v3)
  {
    sub_1D2875778();
    sub_1D2875768();
    sub_1D2875758();

    sub_1D2875768();
    sub_1D28757A8();
    result = sub_1D2876668();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v7 = 0;
    v5 = 0;
  }

  *a1 = result;
  a1[1] = v3;
  a1[2] = v7;
  a1[3] = v5;
  return result;
}

uint64_t sub_1D24D1D44(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = *(v4 + 16);
  v9(&v26 - v10, v1, a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1A8);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
    v11 = sub_1D2871248();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_0(&v27);
    if (v13)
    {
      return v11;
    }
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_1D22BD238(&v27, &qword_1EC6DA108);
  }

  (v9)(v6, v2, a1);
  v15 = sub_1D28795F8();
  if (v15)
  {
    v16 = v15;
    (*(v4 + 8))(v6, a1);
  }

  else
  {
    v16 = swift_allocError();
    (*(v4 + 32))(v17, v6, a1);
  }

  v18 = sub_1D28714A8();

  v19 = [v18 userInfo];
  v20 = sub_1D2877E98();

  v21 = sub_1D28780A8();
  if (!*(v20 + 16))
  {

    goto LABEL_13;
  }

  v23 = sub_1D25D0410(v21, v22);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_13:

    return 0;
  }

  sub_1D23C3EE4(*(v20 + 56) + 32 * v23, &v27);

  if (swift_dynamicCast())
  {
    return v26;
  }

  return 0;
}

uint64_t sub_1D24D204C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1D2874258();
  v10 = sub_1D2874288();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_1D24D2E84(v9, v6);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_1D2870F78();
  sub_1D2877358();
  return sub_1D22BD238(v9, &qword_1EC6DB0C8);
}

uint64_t sub_1D24D21FC@<X0>(uint64_t a1@<X8>)
{
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  result = sub_1D2876668();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1D24D22D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v31 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  v35 = v32;
  v36 = v33;
  sub_1D2870F78();
  sub_1D2877368();
  sub_1D2874268();
  v24 = sub_1D2874288();
  (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  sub_1D2870F78();
  sub_1D2877358();
  v26 = *(v11 + 16);
  v26(v16, v22, v10);
  v26(v13, v19, v10);
  v27 = v34;
  v26(v34, v16, v10);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC790);
  v26(&v27[*(v28 + 48)], v13, v10);
  v29 = *(v11 + 8);
  v29(v19, v10);
  v29(v22, v10);
  v29(v13, v10);
  return (v29)(v16, v10);
}

uint64_t sub_1D24D265C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2875788();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D2875778();
  sub_1D2875768();
  sub_1D2875758();
  sub_1D2875768();
  sub_1D28757A8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED8B0058;
  result = sub_1D2876668();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1D24D27C4@<X0>(uint64_t a1@<X8>)
{
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  result = sub_1D2876668();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

__n128 sub_1D24D289C@<Q0>(uint64_t a1@<X1>, char a2@<W4>, uint64_t a3@<X8>)
{
  v6 = sub_1D2875788();
  MEMORY[0x1EEE9AC00](v6 - 8);
  if (a1)
  {
    sub_1D2875778();
    sub_1D2875768();
    sub_1D2875758();
    sub_1D2875768();
    sub_1D2875758();
    sub_1D2875768();
    sub_1D28757A8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (a2)
  {
    sub_1D2875778();
    sub_1D2875768();
    sub_1D2875758();
    sub_1D2875768();
    sub_1D28757A8();
    if (qword_1ED89E0E8 == -1)
    {
LABEL_6:
      v7 = qword_1ED8B0058;
      v8 = sub_1D2876668();
      v10 = v9;
      v12 = v11 & 1;
      sub_1D22BBFAC(v8, v9, v11 & 1);
      sub_1D2870F68();
      sub_1D2875AF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA10);
      sub_1D2459164();
      sub_1D2875AF8();
      sub_1D22ED6E0(v8, v10, v12);

      goto LABEL_7;
    }

LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  sub_1D2875778();
  sub_1D2875768();
  sub_1D2875758();
  sub_1D2875768();
  sub_1D28757A8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED8B0058;
  sub_1D2876668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA10);
  sub_1D2459164();
  sub_1D2875AF8();
LABEL_7:
  result = v16;
  *a3 = v15;
  *(a3 + 16) = v16;
  *(a3 + 32) = v17;
  *(a3 + 33) = v18;
  return result;
}

unint64_t sub_1D24D2D98()
{
  result = qword_1ED89D158;
  if (!qword_1ED89D158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D158);
  }

  return result;
}

unint64_t sub_1D24D2DFC()
{
  result = qword_1EC6D8960;
  if (!qword_1EC6D8960)
  {
    type metadata accessor for GPAlertStack();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8960);
  }

  return result;
}

uint64_t sub_1D24D2E84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24D2EF4(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = *(v4 + 16);
  v9(&v21 - v10, v2, a1, v8);
  if (!swift_dynamicCast())
  {
    (v9)(v6, v2, a1);
    v17 = sub_1D28795F8();
    if (v17)
    {
      v14 = v17;
      (*(v4 + 8))(v6, a1);
    }

    else
    {
      v14 = swift_allocError();
      (*(v4 + 32))(v18, v6, a1);
    }

    v16 = sub_1D28714A8();
    goto LABEL_12;
  }

  v11 = v22;
  v12 = v23;
  v13 = v23 >> 4;
  if (v13 > 5)
  {
    if (v13 - 7 >= 3 && v13 == 6)
    {
      sub_1D234AC28();
      v14 = swift_allocError();
      *v20 = v11;
      *(v20 + 16) = v12 & 0xF;
      sub_1D233E7B4(v11, *(&v11 + 1), v12 & 0xF);
      goto LABEL_5;
    }

LABEL_4:
    sub_1D22BCE64();
    v14 = swift_allocError();
    *v15 = v11;
    *(v15 + 16) = v12;
    sub_1D233E72C(v11, *(&v11 + 1), v12);
LABEL_5:
    v16 = sub_1D28714A8();
    sub_1D22BCDC4(v11, *(&v11 + 1), v12);
LABEL_12:

    return v16;
  }

  if (v13 >= 5)
  {
    goto LABEL_4;
  }

  sub_1D233E72C(v22, *(&v22 + 1), v23);
  v16 = sub_1D28714A8();
  sub_1D22BCDC4(v11, *(&v11 + 1), v12);
  sub_1D22BCDC4(v11, *(&v11 + 1), v12);
  return v16;
}

uint64_t sub_1D24D3350@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v61 = a1;
  v71 = a3;
  v69 = sub_1D2875E08();
  v52 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v51 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC808);
  v54 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v53 = &v49 - v4;
  v59 = sub_1D2875718();
  v50 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC810);
  v55 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v57 = &v49 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC818);
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v49 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC820);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v49 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC828);
  MEMORY[0x1EEE9AC00](v67);
  v60 = &v49 - v10;
  v11 = sub_1D28759B8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC830);
  v49 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v16 = &v49 - v15;
  v17 = sub_1D2875ED8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC838);
  v66 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v49 - v23;
  (*(v18 + 16))(v20, v61, v17, v22);
  sub_1D2877258();
  if (v62)
  {
    if (v62 == 1)
    {
      sub_1D2875708();
      v25 = sub_1D22BB9D8(&qword_1EC6D7748, &qword_1EC6DC838);
      v26 = sub_1D24D5590(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
      v27 = v57;
      v28 = v59;
      sub_1D2876768();
      (*(v50 + 8))(v6, v28);
      v29 = v55;
      (*(v55 + 16))(v58, v27, v65);
      swift_storeEnumTagMultiPayload();
      v30 = sub_1D24D5590(&qword_1ED89D668, MEMORY[0x1E697C5D0]);
      v72 = v21;
      v73 = v11;
      v74 = v25;
      v75 = v30;
      swift_getOpaqueTypeConformance2();
      v72 = v21;
      v73 = v28;
      v74 = v25;
      v75 = v26;
      swift_getOpaqueTypeConformance2();
      v31 = v60;
      v32 = v65;
      sub_1D2875AF8();
      sub_1D2286838(v31, v68);
      swift_storeEnumTagMultiPayload();
      sub_1D24D53EC();
      v33 = sub_1D24D5590(&qword_1ED89D3D8, MEMORY[0x1E697C848]);
      v72 = v21;
      v73 = v69;
      v74 = v25;
      v75 = v33;
      swift_getOpaqueTypeConformance2();
      sub_1D2875AF8();
      sub_1D22868A8(v31);
      (*(v29 + 8))(v57, v32);
    }

    else
    {
      v41 = v51;
      sub_1D2875DF8();
      v42 = sub_1D22BB9D8(&qword_1EC6D7748, &qword_1EC6DC838);
      v43 = sub_1D24D5590(&qword_1ED89D3D8, MEMORY[0x1E697C848]);
      v44 = v53;
      v45 = v69;
      sub_1D2876768();
      (*(v52 + 8))(v41, v45);
      v46 = v54;
      v47 = v70;
      (*(v54 + 16))(v68, v44, v70);
      swift_storeEnumTagMultiPayload();
      sub_1D24D53EC();
      v72 = v21;
      v73 = v45;
      v74 = v42;
      v75 = v43;
      swift_getOpaqueTypeConformance2();
      sub_1D2875AF8();
      (*(v46 + 8))(v44, v47);
    }
  }

  else
  {
    sub_1D28759A8();
    v34 = sub_1D22BB9D8(&qword_1EC6D7748, &qword_1EC6DC838);
    v35 = sub_1D24D5590(&qword_1ED89D668, MEMORY[0x1E697C5D0]);
    sub_1D2876768();
    (*(v12 + 8))(v14, v11);
    v36 = v49;
    (*(v49 + 16))(v58, v16, v63);
    swift_storeEnumTagMultiPayload();
    v72 = v21;
    v73 = v11;
    v74 = v34;
    v75 = v35;
    swift_getOpaqueTypeConformance2();
    v37 = sub_1D24D5590(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
    v72 = v21;
    v73 = v59;
    v74 = v34;
    v75 = v37;
    swift_getOpaqueTypeConformance2();
    v38 = v60;
    v39 = v63;
    sub_1D2875AF8();
    sub_1D2286838(v38, v68);
    swift_storeEnumTagMultiPayload();
    sub_1D24D53EC();
    v40 = sub_1D24D5590(&qword_1ED89D3D8, MEMORY[0x1E697C848]);
    v72 = v21;
    v73 = v69;
    v74 = v34;
    v75 = v40;
    swift_getOpaqueTypeConformance2();
    sub_1D2875AF8();
    sub_1D22868A8(v38);
    (*(v36 + 8))(v16, v39);
  }

  return (*(v66 + 8))(v24, v21);
}

uint64_t sub_1D24D3EE8()
{
  v0 = [objc_opt_self() labelColor];
  sub_1D2877128();
  result = sub_1D28748D8();
  qword_1EC6D7E60 = result;
  return result;
}

uint64_t sub_1D24D3F4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC798);
  sub_1D22BB9D8(&qword_1EC6DC7A0, &qword_1EC6DC798);
  result = sub_1D28748D8();
  qword_1EC6D7E78 = result;
  return result;
}

uint64_t sub_1D24D3FE0@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC7A8);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC7B0) - 8;
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v39 - v6;
  sub_1D2875F38();
  v7 = *v1;
  sub_1D2870F78();
  v45 = sub_1D2877098();
  v8 = sub_1D28748D8();
  KeyPath = swift_getKeyPath();
  v46 = 0;
  v10 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC7B8) + 36)];
  *v10 = v7;
  *(v10 + 1) = v8;
  *(v10 + 1) = xmmword_1D288DCA0;
  *(v10 + 2) = xmmword_1D288DCB0;
  *(v10 + 6) = 0x3FC999999999999ALL;
  *(v10 + 7) = KeyPath;
  v10[64] = v46;
  v11 = sub_1D2877848();
  v40 = v12;
  v41 = v11;
  v13 = &v5[*(v3 + 44)];
  v14 = *MEMORY[0x1E697F468];
  v15 = sub_1D2875868();
  v16 = *(*(v15 - 8) + 104);
  v16(v13, v14, v15);
  v17 = *(v1 + 1);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC7C0);
  *&v13[*(v18 + 52)] = v17;
  *&v13[*(v18 + 56)] = 256;
  v19 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC7C8) + 36)];
  v16(v19, v14, v15);
  sub_1D2870F78();
  LOBYTE(v15) = sub_1D2875F48();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC7D0);
  v19[*(v20 + 36)] = v15 & 1;
  *&v19[*(v20 + 40)] = 0;
  v21 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC7D8) + 36)];
  v22 = v40;
  *v21 = v41;
  v21[1] = v22;
  v23 = sub_1D2875F48();
  v24 = 3;
  if (v23)
  {
    v24 = 2;
  }

  v25 = v1[v24];
  sub_1D2877AE8();
  v27 = v26;
  v29 = v28;
  v30 = v43;
  v31 = sub_1D22EC9BC(v5, v43, &qword_1EC6DC7A8);
  v32 = (v30 + *(v42 + 44));
  *v32 = v25;
  v32[1] = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  v33 = MEMORY[0x1D38A0390](v31, v1[4], 1.0, 0.0);
  v34 = sub_1D2875F48();
  v35 = v30;
  v36 = v44;
  sub_1D22EC9BC(v35, v44, &qword_1EC6DC7B0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC7E0);
  v38 = v36 + *(result + 36);
  *v38 = v33;
  *(v38 + 8) = v34 & 1;
  return result;
}

uint64_t sub_1D24D4354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a1;
  v95 = a2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC848);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v92 = &v90 - v5;
  v6 = sub_1D2874E88();
  v106 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v105 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v104 = &v90 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC850);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v90 - v10;
  v103 = sub_1D2875628();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1D2874518();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v90 - v14;
  v16 = sub_1D28764E8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC858);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v90 - v22;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC860);
  MEMORY[0x1EEE9AC00](v100);
  v109 = &v90 - v24;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC868);
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v90 - v25;
  v26 = sub_1D2876328();
  v28 = *(v2 + 40);
  v27 = *(v2 + 48);
  sub_1D2874298();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC870);
  (*(*(v37 - 8) + 16))(v23, v96, v37);
  v38 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC878) + 36)];
  *v38 = v26;
  *(v38 + 1) = v30;
  *(v38 + 2) = v32;
  *(v38 + 3) = v34;
  *(v38 + 4) = v36;
  v38[40] = 0;
  v39 = sub_1D2876398();
  sub_1D2874298();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC880) + 36)];
  *v48 = v39;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  sub_1D2877848();
  sub_1D28748C8();
  v49 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC888) + 36)];
  v50 = v112;
  *v49 = v111;
  *(v49 + 1) = v50;
  *(v49 + 2) = v113;
  (*(v17 + 104))(v19, *MEMORY[0x1E6980F38], v16);
  v51 = sub_1D28763F8();
  (*(*(v51 - 8) + 56))(v15, 1, 1, v51);
  sub_1D2876438();
  v52 = sub_1D2876458();
  sub_1D22BD238(v15, &qword_1EC6D9D40);
  (*(v17 + 8))(v19, v16);
  KeyPath = swift_getKeyPath();
  v54 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC890) + 36)];
  *v54 = KeyPath;
  v54[1] = v52;
  v55 = *(v2 + 8);
  v56 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC898) + 36)];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC8A0);
  v58 = *(v57 + 52);
  v59 = *MEMORY[0x1E697F468];
  v60 = sub_1D2875868();
  (*(*(v60 - 8) + 104))(&v56[v58], v59, v60);
  *v56 = v55;
  *&v56[*(v57 + 56)] = 256;
  sub_1D2870F78();
  v61 = v97;
  sub_1D28744F8();
  (*(v98 + 8))(v61, v99);
  v23[*(v21 + 44)] = 0;
  v115 = *(v2 + 64);
  v62 = *(v2 + 56);
  v114 = v62;
  v63 = v115;
  if (v115 == 1)
  {
    v64 = v62;
    v65 = v103;
    v66 = v102;
    v67 = v101;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v68 = sub_1D28762E8();
    sub_1D2873BE8();

    v67 = v101;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22BD238(&v114, &qword_1EC6DC8A8);
    v66 = v102;
    v65 = v103;
    (*(v102 + 8))(v67, v103);
    v64 = v110;
  }

  if (v64)
  {
    v69 = 1.0;
  }

  else
  {
    v69 = v28;
  }

  v70 = v109;
  v71 = sub_1D22EC9BC(v23, v109, &qword_1EC6DC858);
  *(v70 + *(v100 + 36)) = v69;
  v72 = MEMORY[0x1D38A0390](v71, v27, 1.0, 0.0);
  v74 = v107;
  v73 = v108;
  if (!v63)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v75 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22BD238(&v114, &qword_1EC6DC8A8);
    (*(v66 + 8))(v67, v65);
    LOBYTE(v62) = v110;
  }

  v76 = v106;
  v77 = v104;
  sub_1D22EC9BC(v109, v73, &qword_1EC6DC860);
  v78 = v73 + *(v74 + 36);
  *v78 = v72;
  *(v78 + 8) = v62 & 1;
  v79 = v76[13];
  v79(v77, *MEMORY[0x1E697E6E8], v6);
  v80 = v105;
  v79(v105, *MEMORY[0x1E697E708], v6);
  sub_1D24D5590(&qword_1ED89DE78, MEMORY[0x1E697E730]);
  result = sub_1D2877F88();
  if (result)
  {
    v82 = v76[4];
    v83 = v92;
    v82(v92, v77, v6);
    v84 = v94;
    v82((v83 + *(v94 + 48)), v80, v6);
    v85 = v93;
    sub_1D24D55D8(v83, v93);
    v86 = *(v84 + 48);
    v87 = v90;
    v82(v90, v85, v6);
    v88 = v76[1];
    v88(v85 + v86, v6);
    sub_1D22EC9BC(v83, v85, &qword_1EC6DC848);
    v82((v87 + *(v91 + 36)), (v85 + *(v84 + 48)), v6);
    v88(v85, v6);
    sub_1D24D5648();
    sub_1D22BB9D8(&qword_1EC6D75B0, &qword_1EC6DC850);
    v89 = v108;
    sub_1D28769B8();
    sub_1D22BD238(v87, &qword_1EC6DC850);
    return sub_1D22BD238(v89, &qword_1EC6DC868);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D24D4FA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D24D4FF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D24D5064()
{
  result = qword_1EC6DC7E8;
  if (!qword_1EC6DC7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC7E0);
    sub_1D24D511C();
    sub_1D22BB9D8(&qword_1ED89D680, &qword_1EC6DA080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC7E8);
  }

  return result;
}

unint64_t sub_1D24D511C()
{
  result = qword_1EC6DC7F0;
  if (!qword_1EC6DC7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC7B0);
    sub_1D24D51A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC7F0);
  }

  return result;
}

unint64_t sub_1D24D51A8()
{
  result = qword_1EC6DC7F8;
  if (!qword_1EC6DC7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC7A8);
    sub_1D24D5260();
    sub_1D22BB9D8(&qword_1EC6DC800, &qword_1EC6DC7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC7F8);
  }

  return result;
}

unint64_t sub_1D24D5260()
{
  result = qword_1EC6D7D68;
  if (!qword_1EC6D7D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC7B8);
    sub_1D24D5590(&qword_1ED89D398, MEMORY[0x1E697C8D0]);
    sub_1D24D531C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D68);
  }

  return result;
}

unint64_t sub_1D24D531C()
{
  result = qword_1EC6D8510;
  if (!qword_1EC6D8510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8510);
  }

  return result;
}

unint64_t sub_1D24D53EC()
{
  result = qword_1EC6DC840;
  if (!qword_1EC6DC840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC828);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC838);
    sub_1D28759B8();
    sub_1D22BB9D8(&qword_1EC6D7748, &qword_1EC6DC838);
    sub_1D24D5590(&qword_1ED89D668, MEMORY[0x1E697C5D0]);
    swift_getOpaqueTypeConformance2();
    sub_1D2875718();
    sub_1D24D5590(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC840);
  }

  return result;
}

uint64_t sub_1D24D5590(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D24D55D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D24D5648()
{
  result = qword_1EC6DC8B0;
  if (!qword_1EC6DC8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC868);
    sub_1D24D5700();
    sub_1D22BB9D8(&qword_1ED89D680, &qword_1EC6DA080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC8B0);
  }

  return result;
}

unint64_t sub_1D24D5700()
{
  result = qword_1EC6DC8B8;
  if (!qword_1EC6DC8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC860);
    sub_1D24D578C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC8B8);
  }

  return result;
}

unint64_t sub_1D24D578C()
{
  result = qword_1EC6DC8C0;
  if (!qword_1EC6DC8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC858);
    sub_1D24D5844();
    sub_1D22BB9D8(&qword_1ED89D4A8, &qword_1EC6DA6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC8C0);
  }

  return result;
}

unint64_t sub_1D24D5844()
{
  result = qword_1EC6DC8C8;
  if (!qword_1EC6DC8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC898);
    sub_1D24D58FC();
    sub_1D22BB9D8(&qword_1EC6DC8E0, &qword_1EC6DC8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC8C8);
  }

  return result;
}

unint64_t sub_1D24D58FC()
{
  result = qword_1EC6DC8D0;
  if (!qword_1EC6DC8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC890);
    sub_1D24D59B4();
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC8D0);
  }

  return result;
}

unint64_t sub_1D24D59B4()
{
  result = qword_1EC6DC8D8;
  if (!qword_1EC6DC8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC888);
    sub_1D24D5A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC8D8);
  }

  return result;
}

unint64_t sub_1D24D5A40()
{
  result = qword_1EC6D7BD8;
  if (!qword_1EC6D7BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC880);
    sub_1D24D5ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7BD8);
  }

  return result;
}

unint64_t sub_1D24D5ACC()
{
  result = qword_1EC6D7DA8;
  if (!qword_1EC6D7DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC878);
    sub_1D22BB9D8(&qword_1EC6D7800, &qword_1EC6DC870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7DA8);
  }

  return result;
}

uint64_t sub_1D24D5B84(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D24D5BA4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1D24D5BF8()
{
  result = qword_1EC6DC8E8;
  if (!qword_1EC6DC8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC8F0);
    sub_1D24D53EC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC838);
    sub_1D2875E08();
    sub_1D22BB9D8(&qword_1EC6D7748, &qword_1EC6DC838);
    sub_1D24D5590(&qword_1ED89D3D8, MEMORY[0x1E697C848]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC8E8);
  }

  return result;
}

unint64_t sub_1D24D5D48()
{
  result = qword_1EC6DC8F8;
  if (!qword_1EC6DC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC8F8);
  }

  return result;
}

uint64_t sub_1D24D5D9C()
{
  v1 = type metadata accessor for PlaygroundImage();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2877F38();
  if (*(v0 + 24))
  {
    sub_1D28797F8();
    sub_1D2877F38();
  }

  else
  {
    sub_1D28797F8();
  }

  sub_1D2877F38();
  v5 = *(v0 + 48);
  v6 = *(v5 + 16);
  result = MEMORY[0x1D38A2260](v6);
  if (v6)
  {
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_1D239A330(v8, v4);
      sub_1D2871818();
      sub_1D24D7CF8(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
      sub_1D2877F08();
      result = sub_1D23D4DFC(v4);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1D24D5F54()
{
  sub_1D28797D8();
  sub_1D24D5D9C();
  return sub_1D2879828();
}

uint64_t sub_1D24D5F98()
{
  sub_1D28797D8();
  sub_1D24D5D9C();
  return sub_1D2879828();
}

uint64_t sub_1D24D5FD4(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D2879618() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_1D2879618() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((v3 != v9 || v6 != v10) && (sub_1D2879618() & 1) == 0)
  {
    return 0;
  }

  return sub_1D2337B2C(v5, v11);
}

uint64_t sub_1D24D60F4()
{
  v0 = sub_1D2877CC8();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D4638], v1);
  sub_1D2877CE8();
  swift_allocObject();
  result = sub_1D2877CB8();
  qword_1EC6DC900 = result;
  return result;
}

uint64_t sub_1D24D61D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_1D24D6324(a3, sub_1D24D6D50, v11);
}

uint64_t sub_1D24D6324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = sub_1D2877B48();
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D2877B68();
  v12 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 64) = *(a1 + 48);
  *(v15 + 72) = a2;
  *(v15 + 80) = a3;
  *(v15 + 88) = v8;
  aBlock[4] = sub_1D24D6DBC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_18;
  v17 = _Block_copy(aBlock);
  sub_1D24D6DE4(a1, v22);
  sub_1D22A58B8(a2);
  sub_1D2877B58();
  v22[0] = MEMORY[0x1E69E7CC0];
  sub_1D24D7CF8(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
  sub_1D249AF34(&qword_1ED89CEB0, &unk_1EC6DAE80);
  sub_1D2879088();
  MEMORY[0x1D38A1540](0, v14, v11, v17);
  _Block_release(v17);
  (*(v21 + 8))(v11, v9);
  (*(v12 + 8))(v14, v20);
}

void sub_1D24D663C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7 + 56;
  v9 = sub_1D24D78FC(a1);
  if (v9)
  {
    v10 = v9;
    if (qword_1EC6D8C98 != -1)
    {
      swift_once();
    }

    if (a2)
    {
      a2(v15);
    }
  }

  else
  {
    sub_1D2872538();
    sub_1D24D6DE4(a1, v17);
    v11 = sub_1D2873CA8();
    v12 = sub_1D2878A18();
    sub_1D233E658(a1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1D23D7C84(*a1, *(a1 + 8), v17);
      _os_log_impl(&dword_1D226E000, v11, v12, "Could not save sticker because its creation failed from gpSticker: %s.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1D38A3520](v14, -1, -1);
      MEMORY[0x1D38A3520](v13, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1D24D69E0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D24D6A50()
{
  result = qword_1EC6DC908;
  if (!qword_1EC6DC908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC908);
  }

  return result;
}

uint64_t sub_1D24D6AA4@<X0>(uint64_t *a1@<X8>)
{
  swift_allocObject();
  v2 = sub_1D24D6AF8();

  *a1 = v2;
  return result;
}

uint64_t sub_1D24D6AF8()
{
  v0 = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D2878AA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D24614C4();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v2);
  sub_1D2877B58();
  v9[1] = MEMORY[0x1E69E7CC0];
  sub_1D24D7CF8(&qword_1ED89CD60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50);
  sub_1D249AF34(&qword_1ED89CE80, &unk_1EC6DAE50);
  sub_1D2879088();
  v6 = sub_1D2878AD8();
  v7 = v9[0];
  *(v9[0] + 16) = v6;
  return v7;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

unint64_t sub_1D24D6E1C(double a1)
{
  if (a1 == 40.0)
  {
    return 0xD000000000000027;
  }

  if (a1 == 64.0)
  {
    return 0xD000000000000027;
  }

  if (a1 == 320.0)
  {
    v2 = 0xD000000000000028;
  }

  else
  {
    v2 = 0;
  }

  if (a1 == 160.0)
  {
    v3 = 0xD000000000000028;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 96.0)
  {
    return 0xD000000000000027;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D24D6EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a2;
  v44 = a4;
  v8 = sub_1D2873CB8();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2873AA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v42 - v15;
  (*(v12 + 56))(&v42 - v15, 1, 1, v11, v14);
  v17 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v16);
  v19 = v18;
  sub_1D22BD238(v16, &qword_1EC6DAE70);
  if (v19 >> 60 != 15)
  {
    if (a5)
    {
      sub_1D22D6CF8(v17, v19);
      goto LABEL_17;
    }

    v28 = *a1;
    v29 = *(a1 + 8);
    sub_1D22D6CF8(v17, v19);
    if (v29 > 1)
    {
      if (v29 == 2)
      {
        [(__CVBuffer *)v28 size];
        goto LABEL_15;
      }

      Width = CVPixelBufferGetWidth(v28);
      Height = CVPixelBufferGetHeight(v28);
    }

    else
    {
      if (v29)
      {
        [(__CVBuffer *)v28 extent];
        v32 = v33;
        goto LABEL_15;
      }

      Width = CGImageGetWidth(v28);
      Height = CGImageGetHeight(v28);
    }

    v32 = CGRectMake(Width, Height);
LABEL_15:
    sub_1D24D6E1C(v32);
    if (!v34)
    {
      sub_1D2877D78();
    }

LABEL_17:
    sub_1D2870F68();
    sub_1D2873A28();
    v35 = *a1;
    if (*(a1 + 8) > 1u)
    {
      if (*(a1 + 8) != 2)
      {
        v39 = *a1;
        v37 = CVPixelBufferGetWidth(v35);
        v38 = CVPixelBufferGetHeight(v39);
        goto LABEL_24;
      }

      [(__CVBuffer *)v35 size];
    }

    else
    {
      if (!*(a1 + 8))
      {
        v36 = *a1;
        v37 = CGImageGetWidth(v35);
        v38 = CGImageGetHeight(v36);
LABEL_24:
        CGRectMake(v37, v38);
        goto LABEL_25;
      }

      [(__CVBuffer *)v35 extent];
    }

LABEL_25:
    v40 = objc_allocWithZone(sub_1D2877DC8());
    v41 = sub_1D2877DA8();
    sub_1D22D6D4C(v17, v19);
    return v41;
  }

  sub_1D2872538();
  sub_1D2870F68();
  v20 = sub_1D2873CA8();
  v21 = sub_1D2878A18();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v48 = a3;
    v49 = v23;
    *v22 = 136315138;
    v47 = v43;
    sub_1D2870F68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F48);
    v24 = sub_1D2878118();
    v26 = sub_1D23D7C84(v24, v25, &v49);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1D226E000, v20, v21, "Could not create sticker representation because its image data creation failed from gpSticker: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1D38A3520](v23, -1, -1);
    MEMORY[0x1D38A3520](v22, -1, -1);
  }

  (*(v45 + 8))(v10, v46);
  return 0;
}

unint64_t sub_1D24D739C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - v6;
  v8 = type metadata accessor for PlaygroundImage();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - v17;
  v19 = a1[6];
  v20 = MEMORY[0x1E69E7CC0];
  v58 = MEMORY[0x1E69E7CC0];
  v21 = *(v19 + 16);
  if (v21)
  {
    v51 = v4;
    v52 = v8;
    v53 = v7;
    v54 = a1;
    v22 = *a1;
    v23 = a1[1];
    v24 = v19 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v50 = v15;
    v25 = *(v15 + 72);
    v55 = v13;
    v56 = v24;
    v57 = v21;
    v26 = v21;
    do
    {
      sub_1D239A330(v24, v18);
      v27 = sub_1D24D6EEC(v18, v22, v23, 0, 0);
      v28 = sub_1D23D4DFC(v18);
      if (v27)
      {
        MEMORY[0x1D38A0E30](v28);
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D2878428();
        }

        sub_1D2878488();
        v20 = v58;
      }

      v24 += v25;
      --v26;
    }

    while (v26);
    v58 = v20;
    v29 = v56;
    v30 = v57;
    v13 = v55;
    v4 = v51;
    while (1)
    {
      sub_1D239A330(v29, v10);
      v31 = *v10;
      if (v10[8] > 1u)
      {
        if (v10[8] == 2)
        {
          [*v10 size];
          goto LABEL_17;
        }

        Width = CVPixelBufferGetWidth(*v10);
        Height = CVPixelBufferGetHeight(v31);
      }

      else
      {
        if (v10[8])
        {
          [*v10 extent];
          v34 = v35;
          goto LABEL_17;
        }

        Width = CGImageGetWidth(*v10);
        Height = CGImageGetHeight(v31);
      }

      v34 = CGRectMake(Width, Height);
LABEL_17:
      if (v34 == 96.0)
      {
        sub_1D23EEBD4(v10, v4);
        v41 = v50;
        v42 = *(v50 + 56);
        v8 = v52;
        v42(v4, 0, 1, v52);
        v7 = v53;
        sub_1D23EEBD4(v4, v53);
        v42(v7, 0, 1, v8);
        v40 = *(v41 + 48);
        a1 = v54;
        goto LABEL_24;
      }

      sub_1D23D4DFC(v10);
      v29 += v25;
      if (!--v30)
      {
        v36 = v50;
        v37 = *(v50 + 56);
        v8 = v52;
        v37(v4, 1, 1, v52);
        v38 = v56 + v25 * (v57 - 1);
        v7 = v53;
        sub_1D239A330(v38, v53);
        v37(v7, 0, 1, v8);
        a1 = v54;
        goto LABEL_21;
      }
    }
  }

  v58 = MEMORY[0x1E69E7CC0];
  v39 = *(v15 + 56);
  v36 = v15;
  v39(v4, 1, 1, v8, v16);
  (v39)(v7, 1, 1, v8);
LABEL_21:
  v40 = *(v36 + 48);
  if (v40(v4, 1, v8) != 1)
  {
    sub_1D22BD238(v4, &unk_1EC6DE5A0);
  }

LABEL_24:
  if (v40(v7, 1, v8) != 1)
  {
    sub_1D23EEBD4(v7, v13);
    v43 = *a1;
    v44 = a1[1];
    v45 = sub_1D2877D88();
    v47 = sub_1D24D6EEC(v13, v43, v44, v45, v46);

    if (!v47)
    {
LABEL_30:
      sub_1D23D4DFC(v13);
      return v58;
    }

    if (v20 >> 62)
    {
      if (sub_1D2879368() >= 1)
      {
        if (sub_1D2879368() >= 1)
        {
          goto LABEL_29;
        }

        __break(1u);
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_29:
      sub_1D278DE94(1, 1, v47);

      goto LABEL_30;
    }

    sub_1D23D4DFC(v13);

    return v58;
  }

  sub_1D22BD238(v7, &unk_1EC6DE5A0);
  return v58;
}

uint64_t sub_1D24D78FC(uint64_t a1)
{
  v2 = sub_1D2877D48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = sub_1D24D739C(a1);
  v14 = v13;
  v15 = v13 >> 62;
  if (v13 >> 62)
  {
    if (sub_1D2879368() >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:
    v27 = v2;
    sub_1D2872538();
    sub_1D2870F68();
    v16 = sub_1D2873CA8();
    v17 = sub_1D2878A08();
    if (os_log_type_enabled(v16, v17))
    {
      v26 = v6;
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      if (v15)
      {
        v19 = sub_1D2879368();
      }

      else
      {
        v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v18 + 4) = v19;

      _os_log_impl(&dword_1D226E000, v16, v17, "Will make sticker with %ld reps", v18, 0xCu);
      MEMORY[0x1D38A3520](v18, -1, -1);

      v6 = v26;
    }

    else
    {
    }

    (*(v7 + 8))(v12, v6);
    sub_1D2877E28();
    (*(v3 + 104))(v5, *MEMORY[0x1E69D46E8], v27);
    sub_1D2870F68();
    sub_1D2870F68();
    sub_1D2870F68();
    return sub_1D2877E18();
  }

  sub_1D2872538();
  sub_1D24D6DE4(a1, v28);
  v21 = sub_1D2873CA8();
  v22 = sub_1D2878A18();
  sub_1D233E658(a1);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1D23D7C84(*a1, *(a1 + 8), v28);
    _os_log_impl(&dword_1D226E000, v21, v22, "Could not create sticker because its representation creation failed from gpSticker: %s.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x1D38A3520](v24, -1, -1);
    MEMORY[0x1D38A3520](v23, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  return 0;
}

uint64_t sub_1D24D7CF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D24D7D40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D24D7D88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D24D7E04()
{
  v1 = sub_1D2875628();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (v6)
    {
      v13 = v5;
      sub_1D2870F78();
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v8 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
    }

    swift_getKeyPath();
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    v13 = off_1ED8A4930;
    sub_1D24DA294(&qword_1ED8A4920, type metadata accessor for DebugSettings);
    sub_1D28719E8();
    sub_1D23B7BB8();
    sub_1D2870F78();
    v9 = sub_1D2878A58();
    v10 = sub_1D2878068();
    v11 = [v9 BOOLForKey_];

    return v11 ^ 1;
  }

  return result;
}

uint64_t sub_1D24D8074@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  MEMORY[0x1EEE9AC00](v85);
  v94 = &v82 - v2;
  v93 = sub_1D2874FC8();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v89 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v90 = &v82 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC910);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v82 - v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC918);
  MEMORY[0x1EEE9AC00](v91);
  v11 = &v82 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC920);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v82 - v12;
  v13 = v1[1];
  v99 = *v1;
  v100 = v13;
  *v101 = v1[2];
  *&v101[9] = *(v1 + 41);
  *v11 = sub_1D2875918();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC928);
  sub_1D24D8A90(&v99, &v11[*(v14 + 44)]);
  v15 = sub_1D2876338();
  v16 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC930) + 36)];
  *v16 = v15;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  v17 = sub_1D2877848();
  v19 = v18;
  v20 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC938) + 36)];
  v21 = *(sub_1D2875188() + 20);
  v22 = *MEMORY[0x1E697F468];
  v23 = sub_1D2875868();
  (*(*(v23 - 8) + 104))(&v9[v21], v22, v23);
  __asm { FMOV            V0.2D, #20.0 }

  *v9 = _Q0;
  sub_1D28777B8();
  *&v9[*(v7 + 64)] = 256;
  v29 = sub_1D2877058();
  sub_1D28745B8();
  sub_1D24D9AAC(v9, v20);
  v30 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC940) + 36);
  v31 = v96;
  *v30 = v95;
  *(v30 + 16) = v31;
  *(v30 + 32) = v97;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC948);
  *(v20 + *(v32 + 52)) = v29;
  *(v20 + *(v32 + 56)) = 256;
  v33 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC950) + 36);
  sub_1D22BD1D0(v9, v33, &qword_1EC6DC910);
  v34 = sub_1D2877848();
  v36 = v35;
  sub_1D22BD238(v9, &qword_1EC6DC910);
  v37 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC958) + 36));
  *v37 = v34;
  v37[1] = v36;
  v38 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC960) + 36));
  *v38 = v17;
  v38[1] = v19;
  v88 = sub_1D28777F8();
  v87 = v39;
  v40 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC968) + 36)];
  v41 = sub_1D2875798();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v48 = qword_1ED8B0058;
  v49 = swift_allocObject();
  v50 = v100;
  v49[1] = v99;
  v49[2] = v50;
  v49[3] = *v101;
  *(v49 + 57) = *&v101[9];
  MEMORY[0x1EEE9AC00](v49);
  *(&v82 - 8) = v41;
  *(&v82 - 7) = v43;
  LOBYTE(v78) = v45 & 1;
  v79 = v47;
  v80 = v48;
  strcpy(v81, "xmark.circle");
  BYTE5(v81[1]) = 0;
  HIWORD(v81[1]) = -5120;
  sub_1D24D9B1C(&v99, v98);
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  sub_1D2877368();

  v51 = sub_1D2876338();
  sub_1D2874298();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = &v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC970) + 36)];
  *v60 = v51;
  *(v60 + 1) = v53;
  *(v60 + 2) = v55;
  *(v60 + 3) = v57;
  *(v60 + 4) = v59;
  v60[40] = 0;
  v61 = &v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC978) + 36)];
  v62 = v87;
  *v61 = v88;
  v61[1] = v62;
  sub_1D2877AE8();
  v63 = v90;
  sub_1D2874FD8();
  v64 = v92;
  v65 = v93;
  (*(v92 + 16))(v89, v63, v93);
  sub_1D24DA294(&qword_1EC6D7960, MEMORY[0x1E697E898]);
  v66 = sub_1D2874988();
  (*(v64 + 8))(v63, v65);
  *&v11[*(v91 + 36)] = v66;
  v67 = *MEMORY[0x1E697E728];
  v68 = sub_1D2874E88();
  v69 = v94;
  (*(*(v68 - 8) + 104))(v94, v67, v68);
  sub_1D24DA294(&qword_1ED89DE70, MEMORY[0x1E697E730]);
  result = sub_1D2877F98();
  if (result)
  {
    sub_1D24D9B54();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    v71 = v82;
    sub_1D28769B8();
    sub_1D22BD238(v69, &unk_1EC6DE860);
    sub_1D22BD238(v11, &qword_1EC6DC918);
    v81[1] = sub_1D2877848();
    v81[2] = v72;
    LOBYTE(v81[0]) = 1;
    v80 = 0;
    LOBYTE(v79) = 1;
    v78 = 0;
    sub_1D2875208();
    v73 = v86;
    (*(v83 + 32))(v86, v71, v84);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC988);
    v74 = (v73 + *(result + 36));
    v75 = v98[5];
    v74[4] = v98[4];
    v74[5] = v75;
    v74[6] = v98[6];
    v76 = v98[1];
    *v74 = v98[0];
    v74[1] = v76;
    v77 = v98[3];
    v74[2] = v98[2];
    v74[3] = v77;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D24D8A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC998);
  v97 = *(v3 - 8);
  v98 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v91 = &v84 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE810);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v100 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v99 = &v84 - v8;
  v9 = sub_1D2875628();
  v89 = *(v9 - 8);
  v90 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9A0);
  v93 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v84 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9A8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v96 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v84 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC050);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v95 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v84 - v21;
  sub_1D28764A8();
  v23 = sub_1D2876658();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  *&v110 = v23;
  *(&v110 + 1) = v25;
  v27 &= 1u;
  LOBYTE(v111) = v27;
  *(&v111 + 1) = v29;
  v94 = v22;
  sub_1D2876CC8();
  sub_1D22ED6E0(v23, v25, v27);

  v110 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC990);
  sub_1D2877308();
  v30 = v103;
  swift_getKeyPath();
  *&v110 = v30;
  sub_1D24DA294(&qword_1ED8A4480, type metadata accessor for ErrorViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D22BD1D0(v30 + 32, v115, &qword_1EC6DA108);

  v31 = v116;
  v102 = v17;
  if (v116)
  {
    v87 = v11;
    v32 = __swift_project_boxed_opaque_existential_1(v115, v116);
    v33 = *(v31 - 8);
    v34 = MEMORY[0x1EEE9AC00](v32);
    v36 = &v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v36, v34);
    sub_1D22BD238(v115, &qword_1EC6DA108);
    v37 = sub_1D2879748();
    v39 = v38;
    (*(v33 + 8))(v36, v31);
    *&v110 = v37;
    *(&v110 + 1) = v39;
    sub_1D22BD06C();
    v40 = sub_1D2876698();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    KeyPath = swift_getKeyPath();
    v48 = swift_getKeyPath();
    LOBYTE(v110) = v44 & 1;
    *(&v86 + 1) = sub_1D28764A8();
    *&v86 = swift_getKeyPath();
    v49 = sub_1D2876338();
    v118 = *(a1 + 24);
    v117 = *(a1 + 16);
    if (v118 != 1)
    {
      sub_1D22BD1D0(&v117, &v110, &qword_1EC6DC9B8);
      sub_1D2878A28();
      v84 = v46;
      v85 = KeyPath;
      v50 = v42;
      v51 = v40;
      v52 = v48;
      v53 = sub_1D28762E8();
      sub_1D2873BE8();

      v48 = v52;
      v54 = v88;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22BD238(&v117, &qword_1EC6DC9B8);
      v55 = v54;
      v40 = v51;
      v42 = v50;
      v46 = v84;
      KeyPath = v85;
      (*(v89 + 8))(v55, v90);
    }

    sub_1D2874298();
    v114 = 0;
    *&v103 = v40;
    *(&v103 + 1) = v42;
    LOBYTE(v104) = v44 & 1;
    *(&v104 + 1) = v46;
    *&v105 = KeyPath;
    BYTE8(v105) = 1;
    *&v106 = v48;
    *(&v106 + 1) = 0x3FD3333333333333;
    v107 = v86;
    LOBYTE(v108) = v49;
    *(&v108 + 1) = v56;
    *&v109[0] = v57;
    *(&v109[0] + 1) = v58;
    *&v109[1] = v59;
    BYTE8(v109[1]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9C0);
    sub_1D24D9EB0();
    v60 = v92;
    sub_1D2876CC8();
    v112[2] = v107;
    v112[3] = v108;
    v113[0] = v109[0];
    *(v113 + 9) = *(v109 + 9);
    v110 = v103;
    v111 = v104;
    v112[0] = v105;
    v112[1] = v106;
    sub_1D22BD238(&v110, &qword_1EC6DC9C0);
    v17 = v102;
    sub_1D24DA164(v60, v102);
    (*(v93 + 56))(v17, 0, 1, v87);
  }

  else
  {
    sub_1D22BD238(v115, &qword_1EC6DA108);
    (*(v93 + 56))(v17, 1, 1, v11);
  }

  v61 = *(a1 + 16);
  v110 = *a1;
  v111 = v61;
  v112[0] = *(a1 + 32);
  *(v112 + 9) = *(a1 + 41);
  if (sub_1D24D7E04())
  {
    v62 = sub_1D2875798();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v69 = qword_1ED8B0058;
    v70 = swift_allocObject();
    v71 = *(a1 + 16);
    v70[1] = *a1;
    v70[2] = v71;
    v70[3] = *(a1 + 32);
    *(v70 + 57) = *(a1 + 41);
    MEMORY[0x1EEE9AC00](v70);
    *(&v84 - 8) = v62;
    *(&v84 - 7) = v64;
    *(&v84 - 48) = v66 & 1;
    *(&v84 - 5) = v68;
    *(&v84 - 4) = v69;
    *(&v84 - 3) = 7630433;
    *(&v84 - 2) = 0xE300000000000000;
    sub_1D24D9B1C(a1, &v110);
    sub_1D2870F78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
    sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
    v72 = v91;
    sub_1D2877368();

    v74 = v97;
    v73 = v98;
    v75 = v99;
    (*(v97 + 32))(v99, v72, v98);
    v76 = 0;
    v17 = v102;
  }

  else
  {
    v76 = 1;
    v73 = v98;
    v75 = v99;
    v74 = v97;
  }

  (*(v74 + 56))(v75, v76, 1, v73);
  v78 = v94;
  v77 = v95;
  sub_1D22BD1D0(v94, v95, &qword_1EC6DC050);
  v79 = v96;
  sub_1D22BD1D0(v17, v96, &qword_1EC6DC9A8);
  v80 = v100;
  sub_1D22BD1D0(v75, v100, &qword_1EC6DE810);
  v81 = v101;
  sub_1D22BD1D0(v77, v101, &qword_1EC6DC050);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9B0);
  sub_1D22BD1D0(v79, v81 + *(v82 + 48), &qword_1EC6DC9A8);
  sub_1D22BD1D0(v80, v81 + *(v82 + 64), &qword_1EC6DE810);
  sub_1D22BD238(v75, &qword_1EC6DE810);
  sub_1D22BD238(v102, &qword_1EC6DC9A8);
  sub_1D22BD238(v78, &qword_1EC6DC050);
  sub_1D22BD238(v80, &qword_1EC6DE810);
  sub_1D22BD238(v79, &qword_1EC6DC9A8);
  return sub_1D22BD238(v77, &qword_1EC6DC050);
}

uint64_t sub_1D24D9668(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v21 - v3;
  v5 = sub_1D2875628();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 56);
  v9 = *(a1 + 6);
  v23 = v9;
  if (v24 != 1)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v10 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22BD238(&v23, &qword_1EC6DC8A8);
    (*(v6 + 8))(v8, v5);
    LOBYTE(v9) = v22;
  }

  v11 = (v9 & 1) == 0;
  if (v9)
  {
    v12 = 1819678;
  }

  else
  {
    v12 = 1556318;
  }

  if (v9)
  {
    v13 = 0x696A6F6D6E6547;
  }

  else
  {
    v13 = 5459817;
  }

  if (v11)
  {
    v14 = 0xE300000000000000;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  v22 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC990);
  sub_1D2877308();
  v15 = v21[1];
  v16 = sub_1D28785F8();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  sub_1D2878568();
  sub_1D2870F78();
  v17 = sub_1D2878558();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v12;
  v18[5] = 0xD000000000000010;
  v18[6] = 0x80000001D28AFBF0;
  v18[7] = v13;
  v18[8] = v14;
  v18[9] = v15;
  sub_1D22AE01C(0, 0, v4, &unk_1D288E510, v18);
}

uint64_t sub_1D24D995C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC990);
  sub_1D2877308();
  if (*(v2 + 24) == 1)
  {
    *(v2 + 24) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D24DA294(&qword_1ED8A4480, type metadata accessor for ErrorViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D24D9AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2875188();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D24D9B54()
{
  result = qword_1EC6D79E0;
  if (!qword_1EC6D79E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC918);
    sub_1D24D9C0C();
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D79E0);
  }

  return result;
}

unint64_t sub_1D24D9C0C()
{
  result = qword_1EC6D7A60;
  if (!qword_1EC6D7A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC968);
    sub_1D24D9CC4();
    sub_1D22BB9D8(&qword_1EC6D7940, &qword_1EC6DC978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7A60);
  }

  return result;
}

unint64_t sub_1D24D9CC4()
{
  result = qword_1EC6D7B08;
  if (!qword_1EC6D7B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC938);
    sub_1D24D9D7C();
    sub_1D22BB9D8(&qword_1EC6D78A8, &qword_1EC6DC960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7B08);
  }

  return result;
}

unint64_t sub_1D24D9D7C()
{
  result = qword_1EC6D7C30;
  if (!qword_1EC6D7C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC930);
    sub_1D22BB9D8(&qword_1EC6D7668, &qword_1EC6DC980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7C30);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{

  sub_1D2273818(*(v0 + 32), *(v0 + 40));

  sub_1D2273818(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

unint64_t sub_1D24D9EB0()
{
  result = qword_1EC6D7A38;
  if (!qword_1EC6D7A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC9C0);
    sub_1D24D9F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7A38);
  }

  return result;
}

unint64_t sub_1D24D9F3C()
{
  result = qword_1EC6D7AC8;
  if (!qword_1EC6D7AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC9C8);
    sub_1D24D9FF4();
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7AC8);
  }

  return result;
}

unint64_t sub_1D24D9FF4()
{
  result = qword_1EC6D7BB0;
  if (!qword_1EC6D7BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC9D0);
    sub_1D24DA0AC();
    sub_1D22BB9D8(&qword_1ED89D358, &qword_1EC6DC9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7BB0);
  }

  return result;
}

unint64_t sub_1D24DA0AC()
{
  result = qword_1ED89DCF0;
  if (!qword_1ED89DCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC9D8);
    sub_1D22BB9D8(&qword_1ED89D310, &qword_1EC6DA0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DCF0);
  }

  return result;
}

uint64_t sub_1D24DA164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24DA1D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D24DBF04(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1D24DA294(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D24DA2DC()
{
  result = qword_1EC6D7CF0;
  if (!qword_1EC6D7CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC988);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC918);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860);
    sub_1D24D9B54();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7CF0);
  }

  return result;
}

unint64_t sub_1D24DA420()
{
  result = qword_1ED89D670;
  if (!qword_1ED89D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D670);
  }

  return result;
}

double sub_1D24DA484(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_1D24DA56C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1D2874228();
  return sub_1D24DA5F4;
}

void sub_1D24DA5F4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_1D24DA644()
{
  result = qword_1ED8A4D08[0];
  if (!qword_1ED8A4D08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8A4D08);
  }

  return result;
}

void sub_1D24DA698(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9)
{
  v144 = a9;
  v138 = a5;
  v137 = a4;
  v155 = a2;
  v166 = sub_1D2874DE8();
  v164 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v165 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v161 = &v135 - v16;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9E8);
  v168 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v18 = (&v135 - v17);
  v167 = sub_1D2874B38();
  v162 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167 - 8);
  v142 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v160 = &v135 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v141 = &v135 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9F0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v152 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v135 - v27);
  v29 = sub_1D2874C68();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9F8);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v135 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA00);
  v37 = v36 - 8;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v135 - v39;
  v159 = a6;
  v158 = a7;
  v41 = *(v30 + 16);
  v143 = a1;
  v41(v35, a1, v29, v38);
  (*(v30 + 32))(v32, v35, v29);
  v42 = v29;
  sub_1D24DB6A0(&qword_1ED89DEA8);
  sub_1D2878318();
  v139 = *(v37 + 44);
  *&v40[v139] = 0;
  v153 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA08) + 36);
  v163 = sub_1D24DB6A0(&qword_1ED89DEA0);
  v151 = 0;
  v140 = v162 + 16;
  v156 = (v162 + 32);
  v150 = v168 + 56;
  v149 = v168 + 48;
  v146 = v164 + 32;
  v157 = v162 + 8;
  v43 = MEMORY[0x1E69E7CC0];
  v44.f64[0] = NAN;
  v44.f64[1] = NAN;
  v145 = vnegq_f64(v44);
  v162 = MEMORY[0x1E69E7CC0];
  v168 = MEMORY[0x1E69E7CC0];
  v147 = v42;
  for (i = v18; ; v18 = i)
  {
    sub_1D2878868();
    if (*&v40[v153] == v170)
    {
      v46 = 1;
      v47 = v154;
      v48 = v152;
    }

    else
    {
      v49 = v28;
      v50 = sub_1D28788B8();
      v51 = v141;
      v52 = v167;
      (*v140)(v141);
      v50(&v170, 0);
      sub_1D2878878();
      v47 = v154;
      v53 = *(v154 + 48);
      v54 = v151;
      *v18 = v151;
      (*v156)(v18 + v53, v51, v52);
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_61;
      }

      v151 = v56;
      *&v40[v139] = v56;
      v48 = v152;
      sub_1D22EC9BC(v18, v152, &qword_1EC6DC9E8);
      v46 = 0;
      v28 = v49;
    }

    (*v150)(v48, v46, 1, v47);
    sub_1D22EC9BC(v48, v28, &qword_1EC6DC9F0);
    if ((*v149)(v28, 1, v47) == 1)
    {
      break;
    }

    v57 = *v28;
    (*v156)(v160, v28 + *(v47 + 48), v167);
    LOBYTE(v170) = 0;
    v169 = 0;
    sub_1D2874AF8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1D27CD2C0(0, v43[2] + 1, 1, v43);
    }

    v59 = v43[2];
    v58 = v43[3];
    if (v59 >= v58 >> 1)
    {
      v43 = sub_1D27CD2C0(v58 > 1, v59 + 1, 1, v43);
    }

    v43[2] = v59 + 1;
    v60 = (*(v164 + 32))(v43 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v59, v161, v166);
    *v60.i64 = v57;
    *v61.i64 = v57 + trunc(vcvtd_n_f64_s64(v57, 1uLL)) * -2.0;
    if (*vbslq_s8(v145, v61, v60).i64 == 0.0)
    {
      v62 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v162 = sub_1D27CCD74(0, *(v162 + 2) + 1, 1, v162);
      }

      v63 = v168;
      v65 = *(v162 + 2);
      v64 = *(v162 + 3);
      v66 = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        v45 = sub_1D27CCD74((v64 > 1), v65 + 1, 1, v162);
        v162 = v45;
      }

      else
      {
        v45 = v162;
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v168 = sub_1D27CCD74(0, *(v168 + 2) + 1, 1, v168);
      }

      v62 = v43;
      v65 = *(v168 + 2);
      v67 = *(v168 + 3);
      v66 = v65 + 1;
      if (v65 >= v67 >> 1)
      {
        v45 = sub_1D27CCD74((v67 > 1), v65 + 1, 1, v168);
        v63 = v45;
      }

      else
      {
        v45 = v168;
        v63 = v168;
      }
    }

    v168 = v63;
    (*v157)(v160, v167);
    *(v45 + 2) = v66;
    *&v45[8 * v65 + 32] = v57;
    v43 = v62;
  }

  sub_1D24DB6E4(v40);
  v68 = *(v162 + 2);
  v69 = *(v168 + 2);
  v163 = v43;
  v136 = a8;
  if (!v68)
  {
    v97 = v69;
    v73 = v165;
    if (!v69)
    {
LABEL_54:

LABEL_55:

      return;
    }

    goto LABEL_38;
  }

  v151 = v69;
  v70 = v68;
  v71 = v162 + 32;
  v161 = (v164 + 16);
  v160 = (v164 + 8);
  v72 = 0.0;
  v156 = (v162 + 32);
  v73 = v165;
  v74 = v166;
  do
  {
    v76 = *v71;
    v71 += 8;
    v75 = v76;
    if ((v76 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v75 >= v43[2])
    {
      goto LABEL_57;
    }

    v77 = v164;
    v78 = v43 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
    v79 = *(v164 + 72);
    v80 = *(v164 + 16);
    v80(v73, v78 + v79 * v75, v74);
    sub_1D2874DD8();
    v73 = v165;
    v82 = v81;
    v83 = *(v77 + 8);
    v83(v165, v74);
    v72 = v72 + v82;
    --v68;
  }

  while (v68);
  v153 = v79;
  v171.origin.x = v155;
  v171.origin.y = a3;
  v171.size.width = v137;
  v171.size.height = v138;
  Height = CGRectGetHeight(v171);
  v85 = *(v162 + 2);
  v86 = (Height - v72) / (v85 + 1);
  if (v86 > a8)
  {
    v87 = v86;
  }

  else
  {
    v87 = a8;
  }

  if (!v85)
  {
LABEL_37:
    v97 = *(v168 + 2);
    v69 = v151;
    if (!v97)
    {
      goto LABEL_54;
    }

LABEL_38:
    v98 = v69;
    v161 = v168 + 32;
    v160 = (v164 + 16);
    v99 = v164 + 8;
    sub_1D2870F68();
    v100 = 0;
    v101 = 0.0;
    v102 = v136;
    while (1)
    {
      v103 = v100 + 1;
      if (__OFADD__(v100, 1))
      {
        break;
      }

      v104 = *&v168[8 * v100 + 32];
      if ((v104 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      if (v104 >= *(v163 + 16))
      {
        goto LABEL_60;
      }

      v105 = v164;
      v106 = v163 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
      v107 = *(v164 + 72);
      v108 = *(v164 + 16);
      v109 = v99;
      v110 = v166;
      v108(v73, v106 + v107 * v104, v166);
      sub_1D2874DD8();
      v73 = v165;
      v112 = v111;
      v113 = *(v105 + 8);
      v114 = v110;
      v99 = v109;
      v113(v165, v114);
      v101 = v101 + v112;
      ++v100;
      if (v103 == v97)
      {
        v115 = v113;
        v156 = v107;
        v164 = v106;

        v172.origin.x = v155;
        v172.origin.y = a3;
        v172.size.width = v137;
        v172.size.height = v138;
        v116 = CGRectGetHeight(v172);
        v117 = v168;
        v118 = *(v168 + 2);

        v119 = *(v117 + 2);
        if (!v119)
        {
LABEL_52:
          v162 = v163;
          goto LABEL_55;
        }

        v120 = (v116 - v101) / (v118 + 1);
        if (v120 + a3 > v102)
        {
          v121 = v120 + a3;
        }

        else
        {
          v121 = v102;
        }

        v122 = v108;
        v123 = v115;
        v124 = v161;
        v154 = v115;
        while (1)
        {
          v127 = *v124;
          v126 = (v124 + 1);
          v125 = v127;
          v173.origin.x = v155;
          v173.origin.y = a3;
          v173.size.width = v137;
          v173.size.height = v138;
          CGRectGetWidth(v173);
          sin((floor(vcvtd_n_f64_s64(v127, 1uLL)) + 0.5) / v98 * 3.14159265);
          if ((v127 & 0x8000000000000000) != 0)
          {
            goto LABEL_65;
          }

          v161 = v126;
          v128 = v163;
          if (v125 >= *(v163 + 16))
          {
            goto LABEL_66;
          }

          v165 = v119;
          v129 = v164 + v156 * v125;
          v130 = v99;
          v131 = v166;
          v122(v73, v129, v166);
          sub_1D2874DC8();
          v123(v73, v131);
          v132 = v142;
          sub_1D2874C78();
          sub_1D2877A98();
          LOBYTE(v170) = 0;
          v169 = 0;
          sub_1D2874B18();
          (*v157)(v132, v167);
          if (v125 >= *(v128 + 16))
          {
            goto LABEL_67;
          }

          v122(v73, v129, v131);
          sub_1D2874DD8();
          v134 = v133;
          v123 = v154;
          (v154)(v73, v131);
          v121 = v121 + v120 + v134;
          v119 = v165 - 1;
          v124 = v161;
          v99 = v130;
          if (v165 == 1)
          {
            goto LABEL_52;
          }
        }
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v88 = v87 + a3;
  v152 = v78;
  while (1)
  {
    v90 = v156 + 1;
    v89 = *v156;
    sin((floor(vcvtd_n_f64_s64(*v156, 1uLL)) + 0.5) / v70 * -3.14159265);
    if ((v89 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v89 >= v43[2])
    {
      goto LABEL_63;
    }

    v154 = v85;
    v156 = v90;
    v91 = v78 + v153 * v89;
    v92 = v166;
    v80(v73, v91, v166);
    sub_1D2874DC8();
    v83(v73, v92);
    v93 = v142;
    sub_1D2874C78();
    sub_1D2877AA8();
    LOBYTE(v170) = 0;
    v169 = 0;
    sub_1D2874B18();
    v94 = v93;
    v43 = v163;
    (*v157)(v94, v167);
    if (v89 >= v43[2])
    {
      goto LABEL_64;
    }

    v80(v73, v91, v92);
    sub_1D2874DD8();
    v96 = v95;
    v83(v73, v92);
    v88 = v88 + v87 + v96;
    v85 = v154 - 1;
    v78 = v152;
    if (v154 == 1)
    {
      goto LABEL_37;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}

uint64_t sub_1D24DB6A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D2874C68();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D24DB6E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D24DB74C()
{
  swift_getKeyPath();
  sub_1D24DC750();
  sub_1D28719E8();

  return *(v0 + 24);
}

uint64_t sub_1D24DB7BC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1D24DC750();
  sub_1D28719E8();

  swift_beginAccess();
  return sub_1D24DC7A8(v1 + 32, a1);
}

uint64_t sub_1D24DB84C(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D24DC750();
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D24DB92C(uint64_t a1, uint64_t a2)
{
  sub_1D24DC7A8(a2, v5);
  swift_beginAccess();
  sub_1D24DC818(v5, a1 + 32);
  swift_endAccess();
  if (*(a1 + 24) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D24DC750();
    sub_1D28719D8();

    return sub_1D24DC888(v5);
  }

  else
  {
    result = sub_1D24DC888(v5);
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t sub_1D24DBA60()
{
  swift_getKeyPath();
  sub_1D24DC750();
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

id sub_1D24DBB0C()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal14ErrorViewModel____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14ErrorViewModel____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14ErrorViewModel____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v4 setDateStyle_];
    [v4 setTimeStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1D24DBBA8()
{
  swift_getKeyPath();
  v11 = v0;
  sub_1D24DC750();
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D24DC7A8(v0 + 32, v12);
  v1 = v13;
  if (v13)
  {
    v2 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v3 = *(v1 - 8);
    v4 = MEMORY[0x1EEE9AC00](v2);
    v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
    (*(v3 + 16))(v6, v4);
    sub_1D24DC888(v12);
    v7 = sub_1D2871258();
    v9 = v8;
    (*(v3 + 8))(v6, v1);
    if (v9)
    {
      return v7;
    }
  }

  else
  {
    sub_1D24DC888(v12);
  }

  return 0x4E574F4E4B4E55;
}

uint64_t sub_1D24DBD54()
{
  v0 = sub_1D24DBB0C();
  v1 = sub_1D2871728();
  v2 = [v0 stringFromDate_];

  v3 = sub_1D28780A8();
  v5 = v4;

  v6 = [objc_opt_self() processInfo];
  v7 = [v6 processName];

  v8 = sub_1D28780A8();
  v10 = v9;

  sub_1D2879168();
  MEMORY[0x1D38A0C50](0xD000000000000027, 0x80000001D28B8FD0);
  MEMORY[0x1D38A0C50](v8, v10);

  MEMORY[0x1D38A0C50](0x203A656D69540A2ELL, 0xE800000000000000);
  MEMORY[0x1D38A0C50](v3, v5);

  MEMORY[0x1D38A0C50](0x203A726F7272450ALL, 0xE800000000000000);
  v11 = sub_1D24DBBA8();
  MEMORY[0x1D38A0C50](v11);

  return 0;
}

uint64_t sub_1D24DBF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v6 = sub_1D2873CB8();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  sub_1D2878568();
  v5[30] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v5[31] = v8;
  v5[32] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D24DBFF8, v8, v7);
}

uint64_t sub_1D24DBFF8()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  sub_1D2879168();

  v3 = sub_1D24DBBA8();
  MEMORY[0x1D38A0C50](v3);

  v4 = sub_1D24DBD54();
  v6 = v5;
  type metadata accessor for TapToRadarManager.LogReason();
  inited = swift_initStackObject();
  *(v0 + 264) = inited;
  *(v0 + 128) = *(v2 + 8);
  *(v0 + 144) = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 16);
  *(inited + 40) = *v2;
  *(inited + 56) = v9;
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000001D28B8FB0;
  *(inited + 96) = v4;
  *(inited + 104) = v6;
  *(inited + 16) = 0xD000000000000011;
  *(inited + 24) = 0x80000001D28B8F90;
  *(inited + 32) = 0;
  swift_getKeyPath();
  *(v0 + 192) = v1;
  sub_1D23967C8(v0 + 128, v0 + 160);
  sub_1D23967C8(v0 + 144, v0 + 176);
  sub_1D24DC750();
  sub_1D28719E8();

  v10 = v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14ErrorViewModel__feedbackInputProvider;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v13 = (*(v11 + 8))(ObjectType, v11);
    *(v0 + 272) = v13;
    swift_unknownObjectRelease();
    *(v0 + 280) = sub_1D23C8560();
    v14 = swift_task_alloc();
    *(v0 + 288) = v14;
    *v14 = v0;
    v14[1] = sub_1D24DC330;

    return sub_1D242ECF0(inited, v13);
  }

  else
  {

    sub_1D2872658();
    v16 = sub_1D2873CA8();
    v17 = sub_1D2878A18();
    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 224);
    v19 = *(v0 + 232);
    v21 = *(v0 + 216);
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1D226E000, v16, v17, "feedbackInput is nil", v22, 2u);
      MEMORY[0x1D38A3520](v22, -1, -1);
    }

    (*(v20 + 8))(v19, v21);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1D24DC330()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1D24DC474, v3, v2);
}

uint64_t sub_1D24DC474()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D24DC4F0()
{

  sub_1D24DC888(v0 + 32);
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal14ErrorViewModel_timestamp;
  v2 = sub_1D2871798();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D22729C0(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14ErrorViewModel__feedbackInputProvider);

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal14ErrorViewModel___observationRegistrar;
  v4 = sub_1D2871A28();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ErrorViewModel()
{
  result = qword_1ED8A4470;
  if (!qword_1ED8A4470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D24DC650()
{
  result = sub_1D2871798();
  if (v1 <= 0x3F)
  {
    result = sub_1D2871A28();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_1D24DC750()
{
  result = qword_1ED8A4480;
  if (!qword_1ED8A4480)
  {
    type metadata accessor for ErrorViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A4480);
  }

  return result;
}

uint64_t sub_1D24DC7A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA108);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24DC818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA108);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24DC888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA108);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D24DC8F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v13 - v1;
  v3 = sub_1D2871F38();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D2871F78() & 1) == 0)
  {
    return sub_1D24DCFF0();
  }

  v13[0] = sub_1D24DCFF0();
  v13[1] = v7;
  MEMORY[0x1D38A0C50](10, 0xE100000000000000);
  sub_1D2871F58();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1D22BD238(v2, &qword_1EC6D9D58);
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v11 = sub_1D2871ED8();
    v9 = v12;
    (*(v4 + 8))(v6, v3);
    v8 = v11;
  }

  MEMORY[0x1D38A0C50](v8, v9);

  return v13[0];
}

unint64_t sub_1D24DCB20(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v5 = sub_1D28793F8();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  result = sub_1D2870F68();
  v11 = 0;
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return v5;
    }

    v8 = *(a1 + 64 + 8 * v13);
    ++v11;
    if (v8)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v8)) | (v13 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_1D23C3EE4(*(a1 + 56) + 32 * v14, v28);
        *&v27 = v16;
        *(&v27 + 1) = v17;
        v25[2] = v27;
        v26[0] = v28[0];
        v26[1] = v28[1];
        v18 = v27;
        sub_1D23C3FAC(v26, v25);
        sub_1D2870F68();
        __swift_instantiateConcreteTypeFromMangledNameV2(a4);
        if (!swift_dynamicCast())
        {
          break;
        }

        v8 &= v8 - 1;
        result = sub_1D25D0410(v18, *(&v18 + 1));
        if (v19)
        {
          *(v5[6] + 16 * result) = v18;
          v12 = result;

          *(v5[7] + 8 * v12) = v24;

          v11 = v13;
          if (!v8)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v5[2] >= v5[3])
          {
            goto LABEL_23;
          }

          *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v5[6] + 16 * result) = v18;
          *(v5[7] + 8 * result) = v24;
          v20 = v5[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_24;
          }

          v5[2] = v22;
          v11 = v13;
          if (!v8)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v11;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1D24DCD78(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA10);
    v2 = sub_1D28793F8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  result = sub_1D2870F68();
  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v13);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v6)) | (v13 << 6);
        v15 = (*(v1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_1D23C3EE4(*(v1 + 56) + 32 * v14, v29);
        *&v28 = v16;
        *(&v28 + 1) = v17;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v18 = v28;
        sub_1D23C3FAC(v27, v26);
        sub_1D2870F68();
        if (!swift_dynamicCast())
        {
          break;
        }

        v6 &= v6 - 1;
        result = sub_1D25D0410(v18, *(&v18 + 1));
        if (v19)
        {
          v10 = v1;
          v11 = 16 * result;
          *(v2[6] + 16 * result) = v18;

          v12 = (v2[7] + v11);
          v1 = v10;
          *v12 = v24;
          v12[1] = v25;

          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v18;
          v20 = (v2[7] + 16 * result);
          *v20 = v24;
          v20[1] = v25;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v9;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D24DCFF0()
{
  v1 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v27[2] = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v27[1] = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2872008();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v27 - v9;
  v11 = sub_1D2872978();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v27 - v16;
  v18 = sub_1D2871F38();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2871F58();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1D22BD238(v17, &qword_1EC6D9D58);
    sub_1D2871F98();
    sub_1D2872958();
    v22 = v12;
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1D22BD238(v10, &qword_1EC6DA1E0);
      return 0;
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      sub_1D2871FC8();
      v24 = MEMORY[0x1D389AA00](v0, v7);
      (*(v28 + 8))(v7, v29);
      if (v24)
      {
        sub_1D2877FE8();
        sub_1D28718C8();
        v25 = sub_1D28780E8();
      }

      else
      {
        v25 = sub_1D2872938();
      }

      v23 = v25;
      (*(v22 + 8))(v14, v11);
    }
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    v23 = sub_1D2871EF8();
    (*(v19 + 8))(v21, v18);
  }

  return v23;
}

uint64_t sub_1D24DD48C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29[-v3];
  v5 = sub_1D2872978();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29[-v10];
  v12 = sub_1D2871F38();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D2871F58();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D22BD238(v11, &qword_1EC6D9D58);
    sub_1D2871F98();
    sub_1D2872958();
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v8, v4, v5);
      v23 = sub_1D2872918();
      v24 = type metadata accessor for PlaygroundImage();
      v25 = (a1 + v24[9]);
      *v25 = 0u;
      v25[1] = 0u;
      *(a1 + v24[10]) = xmmword_1D28809A0;
      v26 = v24[11];
      v27 = sub_1D2873AA8();
      (*(*(v27 - 8) + 56))(a1 + v26, 1, 1, v27);
      *a1 = v23;
      *(a1 + 8) = 0;
      *(a1 + 24) = 1;
      *(a1 + 16) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + v24[12]) = 0;
      sub_1D2871808();
      (*(v6 + 8))(v8, v5);
      return (*(*(v24 - 1) + 56))(a1, 0, 1, v24);
    }

    sub_1D22BD238(v4, &qword_1EC6DA1E0);
    v19 = type metadata accessor for PlaygroundImage();
    v20 = *(*(v19 - 8) + 56);
    v21 = a1;
    v22 = 1;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v16 = sub_1D2871F08();
    v18 = v17;
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    sub_1D262D084(v16, v18, qword_1ED8B0058, a1);
    (*(v13 + 8))(v15, v12);
    v19 = type metadata accessor for PlaygroundImage();
    v20 = *(*(v19 - 8) + 56);
    v21 = a1;
    v22 = 0;
  }

  return v20(v21, v22, 1, v19);
}

uint64_t sub_1D24DD938(uint64_t a1)
{
  v2 = sub_1D2871F38();
  v46 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB60);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v41 - v15;
  v17 = sub_1D2872008();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22D7044(a1, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
  v21 = swift_dynamicCast();
  v22 = *(v18 + 56);
  if (!v21)
  {
    v22(v16, 1, 1, v17);
    v27 = &qword_1EC6D9A30;
    v28 = v16;
LABEL_13:
    sub_1D22BD238(v28, v27);
LABEL_14:
    v35 = 0;
    return v35 & 1;
  }

  v42 = v4;
  v43 = v2;
  v22(v16, 0, 1, v17);
  (*(v18 + 32))(v20, v16, v17);
  v23 = sub_1D2871F98();
  v25 = v24;
  if (v23 == sub_1D2871F98() && v25 == v26)
  {
  }

  else
  {
    v29 = sub_1D2879618();

    if ((v29 & 1) == 0)
    {
      (*(v18 + 8))(v20, v17);
      goto LABEL_14;
    }
  }

  v30 = v47;
  sub_1D2871F58();
  sub_1D2871F58();
  v31 = *(v42 + 48);
  sub_1D22BD1D0(v30, v6, &qword_1EC6D9D58);
  v42 = v31;
  sub_1D22BD1D0(v11, &v6[v31], &qword_1EC6D9D58);
  v32 = v46;
  v33 = *(v46 + 48);
  v34 = v43;
  if (v33(v6, 1, v43) != 1)
  {
    v36 = v45;
    sub_1D22BD1D0(v6, v45, &qword_1EC6D9D58);
    if (v33(&v6[v42], 1, v34) != 1)
    {
      v38 = v44;
      (*(v32 + 32))(v44, &v6[v42], v34);
      sub_1D24F0A90(&qword_1EC6DCB68, MEMORY[0x1E696E300]);
      v39 = v32 + 32;
      v35 = sub_1D2877F98();
      v40 = *(v39 - 24);
      v40(v38, v34);
      sub_1D22BD238(v11, &qword_1EC6D9D58);
      sub_1D22BD238(v47, &qword_1EC6D9D58);
      (*(v18 + 8))(v20, v17);
      v40(v45, v34);
      sub_1D22BD238(v6, &qword_1EC6D9D58);
      return v35 & 1;
    }

    sub_1D22BD238(v11, &qword_1EC6D9D58);
    sub_1D22BD238(v47, &qword_1EC6D9D58);
    (*(v18 + 8))(v20, v17);
    (*(v32 + 8))(v36, v34);
    goto LABEL_12;
  }

  sub_1D22BD238(v11, &qword_1EC6D9D58);
  sub_1D22BD238(v30, &qword_1EC6D9D58);
  (*(v18 + 8))(v20, v17);
  if (v33(&v6[v42], 1, v43) != 1)
  {
LABEL_12:
    v27 = &qword_1EC6DCB60;
    v28 = v6;
    goto LABEL_13;
  }

  sub_1D22BD238(v6, &qword_1EC6D9D58);
  v35 = 1;
  return v35 & 1;
}

uint64_t sub_1D24DDFE4(uint64_t a1)
{
  v2 = MEMORY[0x1E696E310];
  *(a1 + 8) = sub_1D24F0A90(&qword_1ED8A6C18, MEMORY[0x1E696E310]);
  result = sub_1D24F0A90(&qword_1ED8A6C10, v2);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D24DE06C(uint64_t a1)
{
  result = sub_1D24F0A90(&unk_1ED8A6BF8, MEMORY[0x1E696E310]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D24DE0C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA428);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_1D28729E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8A3548 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA430);
  v8 = __swift_project_value_buffer(v7, qword_1ED8A3550);
  os_unfair_lock_lock(v8);
  sub_1D22BD1D0(v8 + *(v7 + 28), v2, &qword_1EC6DA428);
  os_unfair_lock_unlock(v8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v9 = sub_1D22BD238(v2, &qword_1EC6DA428);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v10 = sub_1D28729C8();
    v12 = v11;
    v9 = (*(v4 + 8))(v6, v3);
    if (v12)
    {
      if (*(sub_1D24F05B0() + 16))
      {
        sub_1D25D0410(v10, v12);
        v14 = v13;

        if (v14)
        {
          sub_1D2870F68();

          return sub_1D2871EA8();
        }
      }

      else
      {
      }
    }
  }

  return MEMORY[0x1D389A8D0](v9);
}

uint64_t sub_1D24DE350(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB90);
  result = sub_1D28793D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (a2)
      {
        sub_1D227268C(v21, v31);
      }

      else
      {
        sub_1D22D7044(v21, v31);
      }

      result = sub_1D28797C8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1D227268C(v31, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D24DE5D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAB0);
  v34 = a2;
  result = sub_1D28793D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      if ((v34 & 1) == 0)
      {
        sub_1D245C6AC(v23, v24);
      }

      sub_1D28797D8();
      MEMORY[0x1D38A2260](v21);
      result = sub_1D2879828();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D24DE878(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA818);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v33 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA98);
  v36 = a2;
  result = sub_1D28793D8();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_1D22EC9BC(v24, v37, &qword_1EC6DA818);
      }

      else
      {
        sub_1D22BD1D0(v24, v37, &qword_1EC6DA818);
      }

      sub_1D28797D8();
      MEMORY[0x1D38A2260](v22);
      result = sub_1D2879828();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = sub_1D22EC9BC(v37, *(v9 + 56) + v23 * v17, &qword_1EC6DA818);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1D24DEBD8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBBE0);
  v34 = a2;
  result = sub_1D28793D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        sub_1D2870F68();
        sub_1D2870F68();
      }

      sub_1D28797D8();
      sub_1D2877F38();
      result = sub_1D2879828();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D24DEE80(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for PhotosPersonImage();
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA70);
  v38 = a2;
  result = sub_1D28793D8();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        sub_1D24F0B40(v25, v7, type metadata accessor for PhotosPersonImage);
      }

      else
      {
        sub_1D24F0AD8(v25, v7, type metadata accessor for PhotosPersonImage);
        v26 = v23;
      }

      result = sub_1D2878D68();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_1D24F0B40(v7, *(v10 + 56) + v24 * v18, type metadata accessor for PhotosPersonImage);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}