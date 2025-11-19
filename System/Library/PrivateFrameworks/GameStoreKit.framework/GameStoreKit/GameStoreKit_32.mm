id sub_24E93F128(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(sub_24F92A498() - 8);
  v10 = (*(v9 + 80) + 176) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_24EA26EE0(a1, a2, a3, a4, (v4 + 16), (v4 + 56), *(v4 + 96), *(v4 + 104), *(v4 + 112), (v4 + 120), *(v4 + 160), *(v4 + 168), (v4 + v10), *(v4 + v11), *(v4 + v12), *(v4 + v13), *(v4 + v14), *(v4 + v15), *(v4 + v16), *(v4 + v17), *(v4 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_24E93F27C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  return result;
}

uint64_t sub_24E93F2EC()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24E93F37C(uint64_t a1)
{
  v2 = sub_24F928AE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_isSensitive);
  result = [objc_opt_self() defaultWorkspace];
  v8 = result;
  if (v6 == 1)
  {
    if (result)
    {
      v9 = &selRef_openSensitiveURL_withOptions_;
LABEL_6:
      v10 = sub_24F91F3B8();
      [v8 *v9];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
      (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
      return sub_24F92A988();
    }

    __break(1u);
  }

  else if (result)
  {
    v9 = &selRef_openURL_withOptions_;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t sub_24E93F504()
{
  result = qword_27F222318[0];
  if (!qword_27F222318[0])
  {
    type metadata accessor for ExternalUrlAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F222318);
  }

  return result;
}

uint64_t sub_24E93F588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E93F614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for GamesArcadeFooterView()
{
  result = qword_27F2223A0;
  if (!qword_27F2223A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E93F6DC()
{
  sub_24E6CAF48();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24E93F7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v183 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223D0);
  v173 = *(v3 - 8);
  v174 = v3;
  MEMORY[0x28223BE20](v3);
  v172 = &v149 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223D8);
  v166 = *(v5 - 8);
  v167 = v5;
  MEMORY[0x28223BE20](v5);
  v164 = &v149 - v6;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223E0);
  MEMORY[0x28223BE20](v165);
  v168 = &v149 - v7;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223E8);
  MEMORY[0x28223BE20](v169);
  v171 = &v149 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223F0);
  v185 = *(v9 - 8);
  v186 = v9;
  MEMORY[0x28223BE20](v9);
  v170 = &v149 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223F8);
  MEMORY[0x28223BE20](v11 - 8);
  v187 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v189 = &v149 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222400);
  v162 = *(v15 - 8);
  v163 = v15;
  MEMORY[0x28223BE20](v15);
  v159 = &v149 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D0A8);
  MEMORY[0x28223BE20](v17);
  v19 = (&v149 - v18);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D158);
  MEMORY[0x28223BE20](v153);
  v21 = &v149 - v20;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222408);
  MEMORY[0x28223BE20](v155);
  v154 = &v149 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222410);
  v160 = *(v23 - 8);
  v161 = v23;
  MEMORY[0x28223BE20](v23);
  v158 = &v149 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222418);
  v175 = *(v25 - 8);
  v176 = v25;
  MEMORY[0x28223BE20](v25);
  v157 = &v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v156 = &v149 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222420);
  MEMORY[0x28223BE20](v29 - 8);
  v184 = &v149 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v193 = &v149 - v32;
  v33 = sub_24F923E98();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v149 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v149 - v38;
  v188 = *(a1 + 16);
  v192 = *(v188 + 32);
  if (v192)
  {
    v40 = *(a1 + 32);

    v191 = v40;

    LOBYTE(v40) = sub_24F925828();
    sub_24F923318();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    LOBYTE(v218) = 0;
    v182 = 0x4054000000000000;
    *&v190 = 1;
    *(&v190 + 1) = v40;
  }

  else
  {
    v182 = 0;
    v191 = 0;
    v190 = 0uLL;
    v42 = 0;
    v44 = 0;
    v46 = 0;
    v48 = 0;
  }

  sub_24F769788(v39);
  (*(v34 + 104))(v36, *MEMORY[0x277CDF988], v33);
  v177 = sub_24F923E88();
  v49 = *(v34 + 8);
  v49(v36, v33);
  v49(v39, v33);
  v50 = sub_24F927618();
  v180 = v51;
  v181 = v50;
  v179 = sub_24F925828();
  sub_24F923318();
  v55 = v52;
  v56 = v53;
  v57 = v54;
  v178 = v58;
  v210 = 0;
  v59 = v188;
  v60 = *(v188 + 16);
  if (!v60)
  {
    v112 = 1;
    v62 = v193;
LABEL_11:
    v108 = v176;
    goto LABEL_12;
  }

  v61 = *(v60 + 24);
  v62 = v193;
  if (!v61)
  {
    v112 = 1;
    goto LABEL_11;
  }

  v150 = v54;
  v151 = v53;
  v152 = v52;
  v63 = *(v60 + 16);
  v19[3] = type metadata accessor for Action();
  v19[4] = sub_24E941660(&qword_27F216DE8, type metadata accessor for Action);
  *v19 = v60;
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = v61;
  v65 = *(v17 + 44);
  *(v19 + v65) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
  swift_storeEnumTagMultiPayload();
  v19[5] = sub_24E941364;
  v19[6] = v64;
  v19[7] = sub_24E678F24;
  v19[8] = 0;
  *(&v219 + 1) = sub_24F9271D8();
  *&v220 = sub_24E941660(&qword_27F214E38, MEMORY[0x277CE1260]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v218);
  v67 = *MEMORY[0x277CE0118];
  v68 = sub_24F924B38();
  (*(*(v68 - 8) + 104))(boxed_opaque_existential_1, v67, v68);
  sub_24E60169C(&v218, v21, &qword_27F21D140);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D148);
  sub_24E60169C(v19, &v21[v69[9]], &qword_27F21D0A8);
  v70 = &v21[v69[10]];
  swift_retain_n();

  *v70 = sub_24F923398() & 1;
  *(v70 + 1) = v71;
  v70[16] = v72 & 1;
  v73 = &v21[v69[11]];
  *v73 = swift_getKeyPath();
  v73[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v74 = qword_27F24E488;
  v75 = sub_24F923398();
  v77 = v76;
  v79 = v78;
  v80 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D150) + 36)];
  *v80 = v74;
  v80[8] = v75 & 1;
  *(v80 + 2) = v77;
  v80[24] = v79 & 1;
  LOBYTE(v74) = sub_24F923398();
  v82 = v81;
  LOBYTE(v77) = v83;
  sub_24E601704(&v218, &qword_27F21D140);
  sub_24E601704(v19, &qword_27F21D0A8);
  v84 = &v21[*(v153 + 36)];
  *v84 = v74 & 1;
  *(v84 + 1) = v82;
  v84[16] = v77 & 1;
  sub_24F927618();
  sub_24F9242E8();
  v85 = v154;
  sub_24E6009C8(v21, v154, &qword_27F21D158);
  v86 = v155;
  v87 = (v85 + *(v155 + 36));
  v88 = v216;
  v87[4] = v215;
  v87[5] = v88;
  v87[6] = v217;
  v89 = v212;
  *v87 = v211;
  v87[1] = v89;
  v90 = v214;
  v87[2] = v213;
  v87[3] = v90;
  v91 = sub_24E94137C();
  v92 = v159;
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222488);
  *&v218 = v86;
  *(&v218 + 1) = v91;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v94 = sub_24E8F20E4();
  v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222490);
  v96 = sub_24E94154C();
  v97 = v163;
  *&v218 = v163;
  *(&v218 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v219 = v95;
  *(&v219 + 1) = OpaqueTypeConformance2;
  *&v220 = v94;
  *(&v220 + 1) = v96;
  swift_getOpaqueTypeConformance2();
  v98 = v158;
  sub_24F926B08();
  (*(v162 + 8))(v92, v97);
  sub_24E601704(v85, &qword_27F222408);
  LOBYTE(v74) = sub_24F925828();
  sub_24F923318();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;

  v107 = v157;
  (*(v160 + 32))(v157, v98, v161);
  v108 = v176;
  v109 = &v107[*(v176 + 36)];
  *v109 = v74;
  *(v109 + 1) = v100;
  *(v109 + 2) = v102;
  *(v109 + 3) = v104;
  *(v109 + 4) = v106;
  v109[40] = 0;
  v110 = v107;
  v111 = v156;
  sub_24E6009C8(v110, v156, &qword_27F222418);
  v62 = v193;
  sub_24E6009C8(v111, v193, &qword_27F222418);
  v112 = 0;
  v56 = v151;
  v55 = v152;
  v57 = v150;
  v59 = v188;
LABEL_12:
  v113 = 1;
  (*(v175 + 56))(v62, v112, 1, v108);
  if (*(v59 + 24))
  {
    *&v218 = *(v59 + 24);
    sub_24E66D28C();

    v114 = v164;
    sub_24F921D38();
    sub_24F927618();
    sub_24F9242E8();
    v115 = v168;
    (*(v166 + 32))(v168, v114, v167);
    v116 = (v115 + *(v165 + 36));
    v117 = v223;
    v116[4] = v222;
    v116[5] = v117;
    v116[6] = v224;
    v118 = v219;
    *v116 = v218;
    v116[1] = v118;
    v119 = v221;
    v116[2] = v220;
    v116[3] = v119;
    KeyPath = swift_getKeyPath();
    v121 = swift_getKeyPath();
    v122 = v169;
    v123 = v171;
    v124 = &v171[*(v169 + 36)];
    *v124 = 0;
    *(v124 + 1) = 0;
    v124[16] = 1;
    *(v124 + 3) = KeyPath;
    v124[32] = 0;
    *(v124 + 5) = v121;
    v125 = type metadata accessor for PageMarginsViewModifier();
    *(v124 + 7) = 0;
    *(v124 + 8) = 0;
    *(v124 + 6) = 0;
    v124[72] = 0;
    v126 = *(v125 + 36);
    *&v124[v126] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
    swift_storeEnumTagMultiPayload();
    sub_24E6009C8(v115, v123, &qword_27F2223E0);
    v127 = sub_24E9410C4();
    v128 = v172;
    sub_24F9262E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222450);
    v200 = v122;
    v201 = v127;
    v129 = swift_getOpaqueTypeConformance2();
    v130 = sub_24E8F20E4();
    v131 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222458);
    v132 = sub_24E941238();
    v133 = v174;
    v200 = v174;
    v201 = &type metadata for IsDebugFocusOverlayEnabled;
    v202 = v131;
    v203 = v129;
    *&v204 = v130;
    *(&v204 + 1) = v132;
    swift_getOpaqueTypeConformance2();
    v134 = v170;
    sub_24F926B08();

    (*(v173 + 8))(v128, v133);
    v62 = v193;
    sub_24E601704(v123, &qword_27F2223E8);
    v136 = v185;
    v135 = v186;
    (*(v185 + 32))(v189, v134, v186);
    v113 = 0;
  }

  else
  {
    v136 = v185;
    v135 = v186;
  }

  v137 = v189;
  (*(v136 + 56))(v189, v113, 1, v135);
  if (v177)
  {
    v138 = 14.0;
  }

  else
  {
    v138 = 24.0;
  }

  v139 = v184;
  sub_24E60169C(v62, v184, &qword_27F222420);
  v140 = v187;
  sub_24E60169C(v137, v187, &qword_27F2223F8);
  v142 = v182;
  v141 = v183;
  *&v194 = v182;
  *(&v194 + 1) = v182;
  *&v195 = v192;
  *(&v195 + 1) = v191;
  v196 = v190;
  *&v197 = v42;
  *(&v197 + 1) = v44;
  *&v198 = v46;
  *(&v198 + 1) = v48;
  v199 = 0;
  *(v183 + 80) = 0;
  v143 = v197;
  *(v141 + 32) = v196;
  *(v141 + 48) = v143;
  *(v141 + 64) = v198;
  v144 = v195;
  *v141 = v194;
  *(v141 + 16) = v144;
  *(v141 + 88) = v138;
  v145 = v180;
  *(v141 + 96) = v181;
  *(v141 + 104) = v145;
  *(v141 + 112) = v179;
  *(v141 + 120) = v55;
  *(v141 + 128) = v56;
  v146 = v178;
  *(v141 + 136) = v57;
  *(v141 + 144) = v146;
  *(v141 + 152) = 0;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222428);
  sub_24E60169C(v139, v141 + *(v147 + 64), &qword_27F222420);
  sub_24E60169C(v140, v141 + *(v147 + 80), &qword_27F2223F8);
  sub_24E940FD4(&v194, &v200);
  sub_24E601704(v137, &qword_27F2223F8);
  sub_24E601704(v193, &qword_27F222420);
  sub_24E601704(v140, &qword_27F2223F8);
  sub_24E601704(v139, &qword_27F222420);
  v200 = v142;
  v201 = v142;
  v202 = v192;
  v203 = v191;
  v204 = v190;
  v205 = v42;
  v206 = v44;
  v207 = v46;
  v208 = v48;
  v209 = 0;
  return sub_24E941044(&v200);
}

uint64_t sub_24E940A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v5 = sub_24F9248C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CapsuleButtonContent(0);
  MEMORY[0x28223BE20](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CapsuleButtonContent.Symbol(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  v13(&v11[v9[6]], 1, 1, v12);
  *&v11[v9[9]] = 0x4010000000000000;
  v14 = v9[10];
  *&v11[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
  swift_storeEnumTagMultiPayload();
  v15 = v9[11];
  *&v11[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v16 = v9[12];
  *&v11[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398);
  swift_storeEnumTagMultiPayload();
  v17 = &v11[v9[13]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v9[14];
  *&v11[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8);
  swift_storeEnumTagMultiPayload();
  v19 = &v11[v9[5]];
  *v19 = a1;
  *(v19 + 1) = a2;
  v11[v9[7]] = 5;
  v20 = &v11[v9[8]];
  *v20 = xmmword_24F943570;
  *(v20 + 2) = 0;

  sub_24F9248B8();
  sub_24E941660(&qword_27F21D160, type metadata accessor for CapsuleButtonContent);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v6 + 8))(v8, v5);
  return sub_24E9416A8(v11);
}

uint64_t sub_24E940D60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223C0);
  sub_24E93F7C8(v3, a2 + *(v4 + 44));
  v5 = sub_24F925818();
  sub_24F923318();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223C8);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_24E940E1C()
{
  MEMORY[0x28223BE20](v0);
  sub_24E941704(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24E941660(&qword_27F215CD8, type metadata accessor for GamesArcadeFooterView);
  return sub_24F9218E8();
}

uint64_t sub_24E940FD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E941044(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E9410C4()
{
  result = qword_27F222438;
  if (!qword_27F222438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2223E8);
    sub_24E941180();
    sub_24E941660(&qword_27F222448, type metadata accessor for PageMarginsViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222438);
  }

  return result;
}

unint64_t sub_24E941180()
{
  result = qword_27F222440;
  if (!qword_27F222440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2223E0);
    sub_24E66D28C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222440);
  }

  return result;
}

unint64_t sub_24E941238()
{
  result = qword_27F222460;
  if (!qword_27F222460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222458);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2223E8);
    sub_24E9410C4();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222460);
  }

  return result;
}

uint64_t sub_24E94132C()
{

  return swift_deallocObject();
}

unint64_t sub_24E94137C()
{
  result = qword_27F222468;
  if (!qword_27F222468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222408);
    sub_24E941408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222468);
  }

  return result;
}

unint64_t sub_24E941408()
{
  result = qword_27F222470;
  if (!qword_27F222470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D158);
    sub_24E941494();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222470);
  }

  return result;
}

unint64_t sub_24E941494()
{
  result = qword_27F222478;
  if (!qword_27F222478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D150);
    sub_24E602068(&qword_27F222480, &qword_27F21D148);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222478);
  }

  return result;
}

unint64_t sub_24E94154C()
{
  result = qword_27F222498;
  if (!qword_27F222498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222408);
    sub_24E94137C();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222498);
  }

  return result;
}

uint64_t sub_24E941660(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E9416A8(uint64_t a1)
{
  v2 = type metadata accessor for CapsuleButtonContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E941704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesArcadeFooterView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E94176C()
{
  result = qword_27F2224A0;
  if (!qword_27F2224A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2223C8);
    sub_24E602068(&qword_27F2224A8, &qword_27F2224B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2224A0);
  }

  return result;
}

uint64_t UniversalFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UniversalFieldsProvider.category.setter(uint64_t a1)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_24E941914()
{
  v0 = sub_24F92A538();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92A528();
  v5 = MEMORY[0x25304FE60](v4);
  v7 = v6;
  result = (*(v1 + 8))(v3, v0);
  qword_27F2224B8 = *&v5;
  qword_27F2224C0 = v7;
  return result;
}

uint64_t sub_24E9419F4()
{
  v0 = sub_24F92A538();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92A528();
  v5 = MEMORY[0x25304FE80](v4);
  result = (*(v1 + 8))(v3, v0);
  qword_27F2224C8 = *&v5;
  return result;
}

uint64_t UniversalFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - v4;
  v6 = [objc_allocWithZone(ASKCapacityData) init];
  v7 = [v6 totalSystemCapacity];
  v8 = sub_24E9421D0();
  v37 = v8;
  v35 = v7;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_24F929A28();
  if (!v1)
  {
    v38 = v5;
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v9 = [v6 totalSystemAvailable];
    v37 = v8;
    v35 = v9;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v10 = [v6 totalDataCapacity];
    v37 = v8;
    v35 = v10;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v11 = [v6 totalDataAvailable];
    v37 = v8;
    v35 = v11;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v13 = ASKMetricsGetNetworkConnectionTypeString();
    if (v13)
    {
      v14 = v13;
      v15 = sub_24F92B0D8();
      v17 = v16;

      v37 = MEMORY[0x277D837D0];
      v35 = v15;
      v36 = v17;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_24F929A28();
      __swift_destroy_boxed_opaque_existential_1(&v35);
    }

    v18 = [v6 totalDiskCapacity];
    v37 = v8;
    v35 = v18;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v19 = ASKMetricsGetCookieString();
    v20 = sub_24F92B0D8();
    v22 = v21;

    v23 = MEMORY[0x277D837D0];
    v37 = MEMORY[0x277D837D0];
    v35 = v20;
    v36 = v22;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    sub_24F92AB98();
    sub_24F92AB88();
    v24 = v38;
    MEMORY[0x2530504F0]();

    v25 = sub_24F92AB18();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      sub_24E94221C(v24);
    }

    else
    {
      v27 = sub_24F92AB08();
      (*(v26 + 8))(v24, v25);
      v28 = [v27 ams_DSID];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 stringValue];
        v31 = sub_24F92B0D8();
        v33 = v32;

        v37 = v23;
        v35 = v31;
        v36 = v33;
        __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
        sub_24F929A28();

        __swift_destroy_boxed_opaque_existential_1(&v35);
      }

      else
      {
      }
    }

    if (qword_27F20FFF8 != -1)
    {
      swift_once();
    }

    v34 = MEMORY[0x277D85048];
    v37 = MEMORY[0x277D85048];
    v35 = qword_27F2224C8;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    if (qword_27F20FFF0 != -1)
    {
      swift_once();
    }

    v37 = v34;
    v35 = qword_27F2224C0;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v37 = v34;
    v35 = qword_27F2224B8;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
  }

  return __swift_destroy_boxed_opaque_existential_1(&v35);
}

unint64_t sub_24E9421D0()
{
  result = qword_27F22BD50;
  if (!qword_27F22BD50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F22BD50);
  }

  return result;
}

uint64_t sub_24E94221C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s12GameStoreKit29MetricsActivityFieldsProviderV8category9JetEngine0dfG8CategoryOvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24E942318(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E942398(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for UniversalFieldsProvider()
{
  result = qword_27F2224D0;
  if (!qword_27F2224D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E942454()
{
  result = sub_24F92A2D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = a1;
  *(a3 + 9) = a2;
  result = 4.0;
  *(a3 + 16) = xmmword_24F969540;
  return result;
}

double InAppPurchaseIconLayout.Metrics.overallSize.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (*v0 >= 30.0)
  {
    v5 = floor(v1 / 30.0) * v3;
    v6 = v1 + v2 * v5 + v2 * v5;
    result = v6;
    if ((*(v0 + 8) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v6 = v1 + v2 * v3 + v2 * v3;
  result = v6;
  if (*(v0 + 8))
  {
LABEL_5:
    sub_24F92C238();
    return v6;
  }

  return result;
}

__n128 InAppPurchaseIconLayout.init(metrics:artworkView:artworkContainingView:backgroundView:plusView:tileArtworkView:tileArtworkBackgroundView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *(a1 + 8);
  v15 = *(a1 + 9);
  *(a8 + 240) = *a1;
  *(a8 + 248) = v14;
  *(a8 + 249) = v15;
  *(a8 + 256) = *(a1 + 16);
  sub_24E612E28(a2, a8);
  sub_24E612E28(a3, a8 + 40);
  sub_24E612E28(a4, a8 + 80);
  sub_24E612E28(a5, a8 + 120);
  sub_24E612E28(a6, a8 + 160);
  result = *a7;
  v17 = *(a7 + 16);
  *(a8 + 200) = *a7;
  *(a8 + 216) = v17;
  *(a8 + 232) = *(a7 + 32);
  return result;
}

double InAppPurchaseIconLayout.Metrics.mainIconBorderWidth.getter()
{
  v1 = v0[3];
  if (*v0 >= 30.0)
  {
    v1 = v1 * floor(*v0 / 30.0);
  }

  return v0[2] * v1;
}

double InAppPurchaseIconLayout.Metrics.tileOffset.getter()
{
  v1 = v0[3];
  if (*v0 >= 30.0)
  {
    v1 = v1 * floor(*v0 / 30.0);
  }

  return v1 + v1;
}

uint64_t sub_24E94275C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double InAppPurchaseIconLayout.Metrics.tileIconWidth.getter()
{
  v1 = v0[3];
  if (*v0 >= 30.0)
  {
    v1 = v1 * floor(*v0 / 30.0);
  }

  return v1 * 12.0;
}

BOOL InAppPurchaseIconLayout.Metrics.displaysPlus.getter()
{
  v1 = v0[3];
  if (*v0 >= 30.0)
  {
    v1 = v1 * floor(*v0 / 30.0);
  }

  return v1 > 1.0;
}

double InAppPurchaseIconLayout.Metrics.plusLineWidth.getter()
{
  result = v0[3];
  if (*v0 >= 30.0)
  {
    result = result * floor(*v0 / 30.0);
  }

  if (result <= 1.0)
  {
    return 1.0;
  }

  return result;
}

double InAppPurchaseIconLayout.Metrics.plusOverallWidth.getter()
{
  v1 = v0[3];
  if (*v0 >= 30.0)
  {
    v1 = v1 * floor(*v0 / 30.0);
  }

  if (v1 <= 1.0)
  {
    v1 = 1.0;
  }

  return v1 * 4.0;
}

__n128 InAppPurchaseIconLayout.metrics.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[15].n128_u8[8];
  v3 = v1[15].n128_u8[9];
  a1->n128_u64[0] = v1[15].n128_u64[0];
  a1->n128_u8[8] = v2;
  a1->n128_u8[9] = v3;
  result = v1[16];
  a1[1] = result;
  return result;
}

uint64_t InAppPurchaseIconLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = *(v4 + 248);
  MinX = CGRectGetMinX(*&a1);
  if (v10 == 1)
  {
    v12 = *(v5 + 240);
    v13 = v12 < 30.0;
    v14 = *(v5 + 264) * floor(v12 / 30.0);
    if (v13)
    {
      v14 = *(v5 + 264);
    }

    MinX = MinX + v14 + v14;
  }

  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  Width = CGRectGetWidth(v37);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  Height = CGRectGetHeight(v38);
  if (Height >= Width)
  {
    v17 = Width;
  }

  else
  {
    v17 = Height;
  }

  v18 = *(v5 + 249);
  v33 = v17;
  if ((v18 & 1) == 0)
  {
    v19 = *(v5 + 240);
    v20 = *(v5 + 264);
    if (v19 >= 30.0)
    {
      v20 = v20 * floor(v19 / 30.0);
    }

    v17 = v19 + *(v5 + 256) * v20 + *(v5 + 256) * v20;
  }

  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  MinY = CGRectGetMinY(v39);
  __swift_project_boxed_opaque_existential_1((v5 + 80), *(v5 + 104));
  v34 = MinY;
  sub_24F922228();
  if (v18)
  {
    v22 = *(v5 + 264);
    v23 = *(v5 + 256) * (floor(v33 / 30.0) * v22);
  }

  else
  {
    v24 = *(v5 + 240);
    v22 = *(v5 + 264);
    v25 = v22;
    if (v24 >= 30.0)
    {
      v25 = v22 * floor(v24 / 30.0);
    }

    v23 = *(v5 + 256) * v25;
  }

  v26 = v17 - (v23 + v23);
  v40.origin.x = MinX;
  v40.origin.y = v34;
  v40.size.width = v17;
  v40.size.height = v17;
  v27 = v23 + CGRectGetMinX(v40);
  v41.origin.x = MinX;
  v41.origin.y = v34;
  v41.size.width = v17;
  v41.size.height = v17;
  v28 = v23 + CGRectGetMinY(v41);
  __swift_project_boxed_opaque_existential_1((v5 + 40), *(v5 + 64));
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v5, *(v5 + 24));
  v42.origin.x = v27;
  v42.origin.y = v28;
  v42.size.width = v26;
  v42.size.height = v26;
  CGRectGetWidth(v42);
  v43.origin.x = v27;
  v43.origin.y = v28;
  v43.size.width = v26;
  v43.size.height = v26;
  CGRectGetHeight(v43);
  sub_24F922228();
  v29 = *(v5 + 240);
  v30 = v22 * floor(v29 / 30.0);
  if (v29 >= 30.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = v22;
  }

  if (v31 > 1.0)
  {
    v44.origin.x = MinX;
    v44.origin.y = v34;
    v44.size.width = v17;
    v44.size.height = v17;
    CGRectGetMaxX(v44);
    v45.origin.x = MinX;
    v45.origin.y = v34;
    v45.size.width = v17;
    v45.size.height = v17;
    CGRectGetMinY(v45);
  }

  __swift_project_boxed_opaque_existential_1((v5 + 120), *(v5 + 144));
  sub_24F922248();
  __swift_project_boxed_opaque_existential_1((v5 + 120), *(v5 + 144));
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1((v5 + 160), *(v5 + 184));
  if ((sub_24F922238() & 1) == 0)
  {
    v46.origin.x = MinX;
    v46.origin.y = v34;
    v46.size.width = v17;
    v46.size.height = v17;
    CGRectGetMinX(v46);
    v47.origin.x = MinX;
    v47.origin.y = v34;
    v47.size.width = v17;
    v47.size.height = v17;
    CGRectGetMaxY(v47);
    sub_24E94275C(v5 + 200, v35);
    sub_24E942EA8(v35);
  }

  __swift_project_boxed_opaque_existential_1((v5 + 160), *(v5 + 184));
  sub_24F922228();
  sub_24E94275C(v5 + 200, v35);
  if (v36)
  {
    __swift_project_boxed_opaque_existential_1(v35, v36);
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    sub_24E942EA8(v35);
  }

  return sub_24F922128();
}

__n128 sub_24E942DE4@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[15].n128_u8[8];
  v3 = v1[15].n128_u8[9];
  a1->n128_u64[0] = v1[15].n128_u64[0];
  a1->n128_u8[8] = v2;
  a1->n128_u8[9] = v3;
  result = v1[16];
  a1[1] = result;
  return result;
}

double _s12GameStoreKit23InAppPurchaseIconLayoutV12measurements7fitting2inSo14JUMeasurementsVSo6CGSizeV_So18UITraitEnvironment_ptF_0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  if (v1 >= 30.0)
  {
    v5 = floor(v1 / 30.0) * v3;
    v6 = v1 + v2 * v5 + v2 * v5;
    result = v6;
    if ((*(v0 + 248) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v6 = v1 + v2 * v3 + v2 * v3;
  result = v6;
  if (*(v0 + 248))
  {
LABEL_5:
    sub_24F92C238();
    return v6;
  }

  return result;
}

uint64_t sub_24E942EA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_5JetUI10LayoutView_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24E942F30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E942F78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E94300C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24E943060(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t ArcadeSubscriptionRepresentation.product.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArcadeSubscriptionRepresentation.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

void *ArcadeSubscriptionRepresentation.__allocating_init(product:adamId:buyParams:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  result = swift_allocObject();
  v9 = *a3;
  v10 = a3[1];
  result[2] = a1;
  result[3] = a2;
  result[4] = v9;
  result[5] = v10;
  result[6] = a4;
  return result;
}

void *ArcadeSubscriptionRepresentation.init(product:adamId:buyParams:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = a3[1];
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = a4;
  return v4;
}

uint64_t ArcadeSubscriptionRepresentation.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArcadeSubscriptionRepresentation.init(deserializing:using:)(a1, a2);
  return v4;
}

void *ArcadeSubscriptionRepresentation.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v46 = a2;
  v5 = *v2;
  v44 = v3;
  v45 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v41 - v7;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  sub_24F928398();
  v18 = sub_24F928348();
  v20 = v19;
  v21 = *(v9 + 8);
  v21(v17, v8);
  if (!v20)
  {
    v33 = 0x746375646F7270;
    v25 = v47;
    v34 = 0xE700000000000000;
LABEL_7:
    v35 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v36 = v33;
    v36[1] = v34;
    v36[2] = v45;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    v37 = sub_24F9285B8();
    (*(*(v37 - 8) + 8))(v46, v37);
    v21(a1, v8);
    swift_deallocPartialClassInstance();
    return v25;
  }

  v42 = v18;
  sub_24F928398();
  v22 = sub_24F928348();
  v24 = v23;
  v21(v14, v8);
  if (!v24)
  {
    v33 = 0x64496D616461;

    v34 = 0xE600000000000000;
    v25 = v47;
    goto LABEL_7;
  }

  v25 = v47;
  v47[2] = v42;
  v25[3] = v20;
  v25[4] = v22;
  v25[5] = v24;
  sub_24F928398();
  v26 = v43;
  sub_24F9281F8();
  v21(v11, v8);
  v27 = sub_24F928E68();
  v28 = a1;
  v29 = v8;
  v30 = v26;
  v31 = *(v27 - 8);
  if ((*(v31 + 48))(v30, 1, v27) == 1)
  {
    v32 = sub_24F9285B8();
    (*(*(v32 - 8) + 8))(v46, v32);
    v21(v28, v29);
    sub_24E9182E0(v30);
    v25[6] = 0;
  }

  else
  {
    v38 = sub_24F928E48();
    v39 = sub_24F9285B8();
    (*(*(v39 - 8) + 8))(v46, v39);
    v21(v28, v29);
    (*(v31 + 8))(v30, v27);
    v25[6] = v38;
  }

  return v25;
}

uint64_t ArcadeSubscriptionRepresentation.deinit()
{

  return v0;
}

uint64_t ArcadeSubscriptionRepresentation.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24E943728@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = ArcadeSubscriptionRepresentation.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t PageTab.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PageTab.id.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t PageTab.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PageTab.init(deserializing:using:)(a1, a2);
  return v4;
}

void *PageTab.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v42 = a2;
  v38 = *v2;
  v43 = sub_24F9285B8();
  v40 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = 25705;
  v14 = 0xE200000000000000;
  sub_24F928398();
  v35 = sub_24F928348();
  v16 = v15;
  v17 = v12;
  v18 = v5;
  v19 = *(v6 + 8);
  v19(v17, v18);
  v39 = v18;
  if (!v16)
  {
    v29 = v19;
LABEL_7:
    v23 = v40;
LABEL_8:
    v30 = sub_24F92AC38();
    sub_24E9449A4(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v31 = v13;
    v31[1] = v14;
    v31[2] = v38;
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D22530], v30);
    swift_willThrow();
    (*(v23 + 8))(v42, v43);
    v29(a1, v39);
    v26 = v41;
    swift_deallocPartialClassInstance();
    return v26;
  }

  v36 = v16;
  v13 = 0x656C746974;
  sub_24F928398();
  v20 = sub_24F928348();
  v22 = v21;
  v19(v9, v18);
  if (!v22)
  {
    v29 = v19;

    v14 = 0xE500000000000000;
    goto LABEL_7;
  }

  v33 = v20;
  v34 = v22;
  v13 = 0x6E6F69746361;
  type metadata accessor for PageTabChangeAction();
  sub_24F928398();
  v23 = v40;
  v24 = v42;
  (*(v40 + 16))(v37, v42, v43);
  sub_24E9449A4(&qword_27F2224E0, 255, type metadata accessor for PageTabChangeAction);
  sub_24F929548();
  v25 = v44;
  if (!v44)
  {
    v29 = v19;

    v14 = 0xE600000000000000;
    goto LABEL_8;
  }

  (*(v23 + 8))(v24, v43);
  v19(a1, v39);
  v26 = v41;
  v27 = v36;
  v28 = v34;
  v41[5] = v35;
  v26[6] = v27;
  v26[3] = v33;
  v26[4] = v28;
  v26[2] = v25;
  return v26;
}

uint64_t PageTab.hash(into:)()
{
  sub_24F92B218();
  sub_24F92B218();
  sub_24E65864C(*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit6Action_id, v2);
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24E6585F8(v2);
}

uint64_t PageTab.deinit()
{

  return v0;
}

uint64_t PageTab.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PageTab.hashValue.getter()
{
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  sub_24E65864C(*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit6Action_id, v2);
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_24E6585F8(v2);
  return sub_24F92D0B8();
}

double sub_24E943EE4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_24E943F24@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 48);
  *a1 = *(*v1 + 40);
  a1[1] = v2;
}

uint64_t sub_24E943F58()
{
  v1 = *v0;
  sub_24F92B218();
  sub_24F92B218();
  sub_24E65864C(*(v1 + 16) + OBJC_IVAR____TtC12GameStoreKit6Action_id, v3);
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24E6585F8(v3);
}

uint64_t sub_24E943FC8()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  sub_24E65864C(*(v1 + 16) + OBJC_IVAR____TtC12GameStoreKit6Action_id, v3);
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_24E6585F8(v3);
  return sub_24F92D0B8();
}

uint64_t PageTabs.selectedTabId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PageTabs.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PageTabs.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t PageTabs.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v40 = *v2;
  v43 = sub_24F9285B8();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v18 = *(v6 + 8);
  v16 = v6 + 8;
  v17 = v18;
  v18(v12, v5);
  if (!v15)
  {
    v22 = v41;
    v29 = 0xE200000000000000;
    v30 = 25705;
LABEL_8:
    v31 = sub_24F92AC38();
    sub_24E9449A4(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v32 = v30;
    v32[1] = v29;
    v32[2] = v40;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    (*(v22 + 8))(v49, v43);
    v17(a1, v5);
    v27 = v42;
    swift_deallocPartialClassInstance();
    return v27;
  }

  v38 = v13;
  sub_24F928398();
  v19 = sub_24F928348();
  v21 = v20;
  v17(v9, v5);
  if (!v21)
  {

    v29 = 0xE200000000000000;
    v30 = 25705;
    v22 = v41;
    goto LABEL_8;
  }

  v34 = v19;
  v35 = v21;
  v36 = v17;
  v37 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2224E8);
  sub_24F928398();
  v22 = v41;
  v23 = v49;
  v24 = v43;
  (*(v41 + 16))(v39, v49, v43);
  sub_24E9447F4();
  sub_24F929548();
  v25 = v46;
  if (!v46)
  {

    v29 = 0xE500000000000000;
    v30 = 0x656C746974;
    v17 = v36;
    goto LABEL_8;
  }

  v44 = v38;
  v45 = v15;
  sub_24F92C7F8();
  (*(v22 + 8))(v23, v24);
  v36(a1, v5);
  v26 = v47;
  v27 = v42;
  *(v42 + 40) = v46;
  *(v27 + 56) = v26;
  *(v27 + 72) = v48;
  v28 = v35;
  *(v27 + 16) = v34;
  *(v27 + 24) = v28;
  *(v27 + 32) = v25;
  return v27;
}

uint64_t PageTabs.deinit()
{

  sub_24E6585F8(v0 + 40);
  return v0;
}

uint64_t PageTabs.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_24E94464C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  v9 = swift_allocObject();
  result = a3(a1, a2);
  if (!v4)
  {
    *a4 = v9;
  }

  return result;
}

uint64_t sub_24E9446BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F929608();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t _s12GameStoreKit7PageTabC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[5] == a2[5] && a1[6] == a2[6];
  if (v4 || (sub_24F92CE08()) && (a1[3] == a2[3] ? (v5 = a1[4] == a2[4]) : (v5 = 0), v5 || (sub_24F92CE08()))
  {
    sub_24E65864C(a1[2] + OBJC_IVAR____TtC12GameStoreKit6Action_id, v9);
    sub_24E65864C(a2[2] + OBJC_IVAR____TtC12GameStoreKit6Action_id, v8);
    v6 = MEMORY[0x253052150](v9, v8);
    sub_24E6585F8(v8);
    sub_24E6585F8(v9);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_24E9447F4()
{
  result = qword_27F2224F0;
  if (!qword_27F2224F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2224E8);
    sub_24E9449A4(&qword_27F2224F8, v1, type metadata accessor for PageTab);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2224F0);
  }

  return result;
}

uint64_t sub_24E9449A4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

GameStoreKit::AlertActionStyle_optional __swiftcall AlertActionStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t AlertActionStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x7473616F74;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_24E944B40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7473616F74;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7473616F74;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24E944BE4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E944C64()
{
  sub_24F92B218();
}

uint64_t sub_24E944CD0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E944D4C@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_24E944DAC(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x7473616F74;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

char *AlertAction.__allocating_init(title:message:isCancelable:cancelTitle:cancelAction:buttonActions:destructiveActionIndex:style:artwork:toastDuration:presentationStyle:imageName:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, char a19, char *a20, uint64_t a21, double a22, unsigned __int8 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v53 = a7;
  v60 = a1;
  v61 = a2;
  v59 = a24;
  v55 = a8;
  v56 = a25;
  v54 = a23;
  v57 = a26;
  v58 = a21;
  v52 = sub_24F91F6B8();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  v25 = v24;
  v26 = *a20;
  v27 = (v24 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_message);
  *v27 = a3;
  v27[1] = a4;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_isCancelable) = a5;
  v28 = (v24 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelTitle);
  v29 = v53;
  *v28 = a6;
  v28[1] = v29;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelAction) = v55;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_buttonActions) = a17;
  v30 = v24 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_destructiveActionIndex;
  *v30 = a18;
  *(v30 + 8) = a19 & 1;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_style) = v26;
  if (v54)
  {
    a22 = 1.5;
  }

  *(v24 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_toastDuration) = a22;
  v32 = (v24 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_imageName);
  v33 = v57;
  *v32 = v56;
  v32[1] = v33;
  v68 = 0;
  memset(v67, 0, sizeof(v67));
  v34 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v35 = sub_24F928AD8();
  v36 = *(v35 - 8);
  (*(v36 + 16))(&v25[v34], a27, v35);
  v37 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v38 = sub_24F929608();
  (*(*(v38 - 8) + 56))(&v25[v37], 1, 1, v38);
  v39 = &v25[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v39 = 0u;
  *(v39 + 1) = 0u;
  v40 = &v25[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v67, &v64);
  if (*(&v65 + 1))
  {
    v41 = v65;
    *v40 = v64;
    *(v40 + 1) = v41;
    *(v40 + 4) = v66;
  }

  else
  {
    v42 = v50;
    sub_24F91F6A8();
    v43 = sub_24F91F668();
    v45 = v44;
    (*(v51 + 8))(v42, v52);
    v62 = v43;
    v63 = v45;
    sub_24F92C7F8();
    sub_24E601704(&v64, &qword_27F235830);
  }

  (*(v36 + 8))(a27, v35);
  sub_24E601704(v67, &qword_27F235830);
  v46 = v61;
  *(v25 + 2) = v60;
  *(v25 + 3) = v46;
  v47 = v59;
  *(v25 + 4) = v58;
  *(v25 + 5) = v47;
  return v25;
}

void *AlertAction.init(title:message:isCancelable:cancelTitle:cancelAction:buttonActions:destructiveActionIndex:style:artwork:toastDuration:presentationStyle:imageName:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, _BYTE *a20, uint64_t a21, double a22, unsigned __int8 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v20 = v19;
  v59 = a8;
  v57 = a7;
  v56 = a6;
  v53 = a5;
  v64 = a1;
  v65 = a2;
  v61 = a26;
  v63 = a24;
  v60 = a25;
  v58 = a23;
  v55 = a19;
  v54 = a18;
  v52 = a17;
  v62 = a21;
  v51 = sub_24F91F6B8();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v49 - v26;
  v28 = sub_24F928AD8();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v30) = *a20;
  v32 = (v20 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_message);
  *v32 = a3;
  v32[1] = a4;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_isCancelable) = v53;
  v33 = (v20 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelTitle);
  v34 = v57;
  *v33 = v56;
  v33[1] = v34;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelAction) = v59;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_buttonActions) = v52;
  v35 = v20 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_destructiveActionIndex;
  *v35 = v54;
  v35[8] = v55 & 1;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_style) = v30;
  if (v58)
  {
    a22 = 1.5;
  }

  *(v20 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_toastDuration) = a22;
  v37 = (v20 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_imageName);
  v38 = v61;
  *v37 = v60;
  v37[1] = v38;
  v75 = 0;
  memset(v74, 0, sizeof(v74));
  (*(v29 + 16))(v31, a27, v28);
  v39 = sub_24F929608();
  (*(*(v39 - 8) + 56))(v27, 1, 1, v39);
  v40 = (v20 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v40 = 0u;
  v40[1] = 0u;
  sub_24E65E064(v74, &v68);
  if (*(&v69 + 1))
  {
    v71 = v68;
    v72 = v69;
    v73 = v70;
  }

  else
  {
    sub_24F91F6A8();
    v41 = sub_24F91F668();
    v43 = v42;
    (*(v50 + 8))(v24, v51);
    v66 = v41;
    v67 = v43;
    sub_24F92C7F8();
    sub_24E601704(&v68, &qword_27F235830);
  }

  (*(v29 + 8))(a27, v28);
  sub_24E601704(v74, &qword_27F235830);
  v44 = v20 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v44 + 4) = v73;
  v45 = v72;
  *v44 = v71;
  *(v44 + 1) = v45;
  sub_24E65E0D4(v27, v20 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v46 = v65;
  v20[2] = v64;
  v20[3] = v46;
  v47 = v63;
  v20[4] = v62;
  v20[5] = v47;
  (*(v29 + 32))(v20 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v31, v28);
  return v20;
}

uint64_t AlertAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v127 = v2;
  v128 = a2;
  v132 = *v3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  v125 = v5;
  v126 = v6;
  MEMORY[0x28223BE20](v5);
  v118 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v131 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v129 = &v113 - v11;
  v12 = sub_24F92AC28();
  v13 = *(v12 - 8);
  v122 = v12;
  v123 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v115 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v114 = &v113 - v16;
  v17 = sub_24F928388();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v117 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v130 = &v113 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v121 = &v113 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v120 = &v113 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v119 = &v113 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v113 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v113 - v32;
  v133 = 0xE500000000000000;
  v34 = 0x656C746974;
  v35 = a1;
  sub_24F928398();
  LOBYTE(a1) = sub_24F928328();
  v116 = v18;
  v38 = *(v18 + 8);
  v36 = (v18 + 8);
  v37 = v38;
  v39 = v17;
  (v38)(v33, v17);
  if (a1)
  {
    goto LABEL_8;
  }

  v34 = 0x6567617373656DLL;
  sub_24F928398();
  v40 = sub_24F928348();
  v42 = v41;
  (v37)(v31, v39);
  v43 = v37;
  if (!v42)
  {
    v133 = 0xE700000000000000;
LABEL_8:
    v74 = v39;
    v75 = v35;
    v76 = v125;
    v77 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v79 = v132;
    v78 = v133;
    *v80 = v34;
    v80[1] = v78;
    v80[2] = v79;
    (*(*(v77 - 8) + 104))(v80, *MEMORY[0x277D22530], v77);
    swift_willThrow();
    (v37)(v75, v74);
    (*(v126 + 8))(v128, v76);
    swift_deallocPartialClassInstance();
    return v77;
  }

  v44 = v127;
  v45 = (v127 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_message);
  *v45 = v40;
  v45[1] = v42;
  v46 = v35;
  sub_24F928398();
  v47 = sub_24F928258();
  v49 = v48;
  (v37)(v33, v39);
  v50 = v44 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_destructiveActionIndex;
  *v50 = v47;
  *(v50 + 8) = v49 & 1;
  sub_24F928398();
  sub_24E946360();
  sub_24F928208();
  (v37)(v33, v39);
  *(v44 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_style) = v134;
  v51 = v119;
  sub_24F928398();
  LOBYTE(v47) = sub_24F928278();
  v43(v51, v39);
  *(v44 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_isCancelable) = (v47 == 2) | v47 & 1;
  sub_24F928398();
  v52 = sub_24F928348();
  v54 = v53;
  v43(v33, v39);
  v55 = (v44 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelTitle);
  *v55 = v52;
  v55[1] = v54;
  v56 = v36;
  v57 = type metadata accessor for Action();
  sub_24F928398();
  v132 = v57;
  v58 = static Action.tryToMakeInstance(byDeserializing:using:)(v33, v128);
  v43(v33, v39);
  *(v44 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelAction) = v58;
  v59 = v120;
  sub_24F928398();
  v60 = sub_24F928308();
  LOBYTE(v57) = v61;
  v43(v59, v39);
  v62 = *&v60;
  if (v57)
  {
    v62 = 1.5;
  }

  *(v44 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_toastDuration) = v62;
  sub_24F928398();
  v63 = v43;
  v64 = sub_24F928348();
  v66 = v65;
  v63(v33, v39);
  v67 = (v44 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_imageName);
  *v67 = v64;
  v67[1] = v66;
  v68 = v121;
  sub_24F928398();
  v69 = v129;
  sub_24F9282B8();
  v120 = v63;
  v121 = v56;
  v63(v68, v39);
  v71 = v122;
  v70 = v123;
  v72 = *(v123 + 48);
  v73 = v46;
  if (v72(v69, 1, v122) == 1)
  {
    sub_24E601704(v69, &qword_27F2213B0);
    v133 = MEMORY[0x277D84F90];
  }

  else
  {
    v81 = v114;
    (*(v70 + 32))(v114, v69, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
    v82 = v124;
    v133 = sub_24F92ABD8();
    v124 = v82;
    (*(v70 + 8))(v81, v71);
  }

  v83 = v130;
  v84 = v131;
  v119 = v73;
  sub_24F928398();
  sub_24F9282B8();
  v114 = v39;
  (v120)(v83, v39);
  v85 = v72(v84, 1, v71);
  v86 = v126;
  if (v85 != 1)
  {
    v89 = (*(v123 + 32))(v115, v84, v71);
    MEMORY[0x28223BE20](v89);
    v90 = v128;
    *(&v113 - 2) = v132;
    *(&v113 - 1) = v90;
    v91 = v124;
    v92 = sub_24F92ABB8();
    v93 = v92;
    v124 = v91;
    if (v92 >> 62)
    {
      goto LABEL_32;
    }

    v94 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v94)
    {
LABEL_33:
      v87 = MEMORY[0x277D84F90];
LABEL_34:

      (*(v123 + 8))(v115, v122);
      v44 = v127;
      v88 = v128;
      v86 = v126;
      goto LABEL_35;
    }

LABEL_14:
    v95 = 0;
    v131 = (v93 & 0xFFFFFFFFFFFFFF8);
    v132 = v93 & 0xC000000000000001;
    v96 = (v133 + 40);
    v87 = MEMORY[0x277D84F90];
    v129 = v94;
    v130 = v93;
    while (1)
    {
      if (v132)
      {
        v97 = MEMORY[0x253052270](v95, v93);
        v98 = (v95 + 1);
        if (__OFADD__(v95, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v95 >= *(v131 + 2))
        {
          goto LABEL_31;
        }

        v97 = *(v93 + 8 * v95 + 32);

        v98 = (v95 + 1);
        if (__OFADD__(v95, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v94 = sub_24F92C738();
          if (!v94)
          {
            goto LABEL_33;
          }

          goto LABEL_14;
        }
      }

      if (v95 < *(v133 + 16) && (v99 = *v96) != 0)
      {
        v100 = *(v96 - 1);
      }

      else
      {
        v100 = *(v97 + 16);
        v99 = *(v97 + 24);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_24E616378(0, v87[2] + 1, 1, v87);
      }

      v102 = v87[2];
      v101 = v87[3];
      if (v102 >= v101 >> 1)
      {
        v87 = sub_24E616378((v101 > 1), v102 + 1, 1, v87);
      }

      v87[2] = v102 + 1;
      v103 = &v87[5 * v102];
      v103[4] = v100;
      v103[5] = v99;
      v103[7] = 0;
      v103[8] = 0;
      v103[6] = v97;
      ++v95;
      v96 += 2;
      v93 = v130;
      if (v98 == v129)
      {
        goto LABEL_34;
      }
    }
  }

  sub_24E601704(v84, &qword_27F2213B0);
  v87 = MEMORY[0x277D84F90];
  v88 = v128;
LABEL_35:
  *(v44 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_buttonActions) = v87;
  v104 = v117;
  v105 = v119;
  v106 = v114;
  (*(v116 + 16))(v117, v119, v114);
  v107 = v118;
  v108 = v125;
  (*(v86 + 16))(v118, v88, v125);
  v109 = v104;
  v77 = v44;
  v110 = v124;
  v111 = Action.init(deserializing:using:)(v109, v107);
  if (!v110)
  {
    v77 = v111;
  }

  (v120)(v105, v106);
  (*(v86 + 8))(v88, v108);
  return v77;
}

unint64_t sub_24E946360()
{
  result = qword_27F222518;
  if (!qword_27F222518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222518);
  }

  return result;
}

uint64_t AlertAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_message);

  return v1;
}

uint64_t AlertAction.cancelTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelTitle);

  return v1;
}

uint64_t AlertAction.imageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_imageName);

  return v1;
}

uint64_t sub_24E946504()
{
}

uint64_t AlertAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t AlertAction.__deallocating_deinit()
{
  AlertAction.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24E946724()
{
  result = qword_27F222520;
  if (!qword_27F222520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222520);
  }

  return result;
}

uint64_t type metadata accessor for AlertAction()
{
  result = qword_27F222528;
  if (!qword_27F222528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NewToMajorOSVersionCardTrigger.__allocating_init(adamId:)(uint64_t *a1)
{
  result = swift_allocObject();
  v3 = *a1;
  v4 = a1[1];
  *(result + 16) = 3;
  *(result + 40) = 1;
  *(result + 24) = v3;
  *(result + 32) = v4;
  return result;
}

uint64_t NewToMajorOSVersionCardTrigger.init(adamId:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  *(v1 + 16) = 3;
  *(v1 + 40) = 1;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return v1;
}

id sub_24E946954()
{
  v1 = sub_24F92B098();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_24E9421D0();
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_24E857CC8(v8);
  }

  return 0;
}

uint64_t NewToMajorOSVersionCardTrigger.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

void sub_24E946A74(void (*a1)(uint64_t))
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24E946954();
  v5 = v4;

  if (v5)
  {
    v6 = 1;
LABEL_5:
    a1(v6);
    return;
  }

  v7 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    v8 = [objc_opt_self() processInfo];
    v10[1] = 0;
    v10[2] = 0;
    v10[0] = v7;
    v9 = [v8 isOperatingSystemAtLeastVersion_];

    v6 = v9;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_24E946B54()
{
  v0 = [objc_opt_self() processInfo];
  [v0 operatingSystemVersion];

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_24F92B098();
  [v1 setInteger:v3 forKey:v2];
}

void sub_24E946C28()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_24F92B098();
  [v0 removeObjectForKey_];
}

uint64_t sub_24E946CBC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

void sub_24E946D4C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_24E946954();
  v3 = v2;

  if ((v3 & 1) == 0)
  {
    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
    }

    else
    {
      v5 = [objc_opt_self() processInfo];
      v6[1] = 0;
      v6[2] = 0;
      v6[0] = v4;
      [v5 isOperatingSystemAtLeastVersion_];
    }
  }
}

uint64_t NewToMajorOSVersionCardTrigger.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24E946E74@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 32);
  *a1 = *(*v1 + 24);
  a1[1] = v2;
}

uint64_t sub_24E946E84()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t sub_24E946EC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_24E946F0C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t Copyable.copyWithOverrides(in:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v4);
  (*(a3 + 8))(v10, a2, a3);
  return a1(a4);
}

void *OfferAlertAction.__allocating_init(title:message:footerMessage:isCancelable:checkRestrictionsForContentRating:shouldCheckForAvailableDiskSpace:remoteControllerRequirement:spatialControllerRequirement:shouldIncludeActiveAccountInFooterMessage:shouldPromptForConfirmation:completionAction:artwork:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, char a10, char *a11, char *a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v49 = a8;
  v54 = a1;
  v55 = a2;
  v52 = a16;
  v53 = a17;
  v51 = a15;
  v50 = a14;
  v47 = a7;
  v48 = a13;
  v46 = sub_24F91F6B8();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v24 = *a11;
  v25 = *a12;
  v26 = (v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_message);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_footerMessage);
  *v27 = a5;
  v27[1] = a6;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_isCancelable) = v47;
  v28 = v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_checkRestrictionsForContentRating;
  *v28 = v49;
  v28[8] = a9 & 1;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_shouldCheckForAvailableDiskSpace) = a10;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_remoteControllerRequirement) = v24;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_spatialControllerRequirement) = v25;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_shouldIncludeActiveAccountInFooterMessage) = v48;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_shouldPromptForConfirmation) = v50;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_completionAction) = v51;
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  v29 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v30 = sub_24F928AD8();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v23 + v29, a18, v30);
  v32 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v33 = sub_24F929608();
  (*(*(v33 - 8) + 56))(v23 + v32, 1, 1, v33);
  v34 = (v23 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v34 = 0u;
  v34[1] = 0u;
  v35 = v23 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v61, &v58);
  if (*(&v59 + 1))
  {
    v36 = v59;
    *v35 = v58;
    *(v35 + 1) = v36;
    *(v35 + 4) = v60;
  }

  else
  {
    v37 = v44;
    sub_24F91F6A8();
    v38 = sub_24F91F668();
    v40 = v39;
    (*(v45 + 8))(v37, v46);
    v56 = v38;
    v57 = v40;
    sub_24F92C7F8();
    sub_24E601704(&v58, &qword_27F235830);
  }

  (*(v31 + 8))(a18, v30);
  sub_24E601704(v61, &qword_27F235830);
  v41 = v55;
  v23[2] = v54;
  v23[3] = v41;
  v42 = v53;
  v23[4] = v52;
  v23[5] = v42;
  return v23;
}

void *OfferAlertAction.init(title:message:footerMessage:isCancelable:checkRestrictionsForContentRating:shouldCheckForAvailableDiskSpace:remoteControllerRequirement:spatialControllerRequirement:shouldIncludeActiveAccountInFooterMessage:shouldPromptForConfirmation:completionAction:artwork:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, _BYTE *a11, char *a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  v54 = a8;
  v52 = a7;
  v51 = a6;
  v49 = a5;
  v47 = a4;
  v59 = a1;
  v60 = a2;
  v58 = a17;
  v57 = a16;
  v56 = a15;
  v55 = a14;
  v53 = a13;
  v50 = a10;
  v48 = a9;
  v46 = sub_24F91F6B8();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v45 - v24;
  v26 = sub_24F928AD8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v28) = *a11;
  v30 = *a12;
  v31 = (v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_message);
  v32 = v47;
  *v31 = a3;
  v31[1] = v32;
  v33 = (v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_footerMessage);
  *v33 = v49;
  v33[1] = v51;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_isCancelable) = v52;
  v34 = v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_checkRestrictionsForContentRating;
  *v34 = v54;
  v34[8] = v48 & 1;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_shouldCheckForAvailableDiskSpace) = v50;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_remoteControllerRequirement) = v28;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_spatialControllerRequirement) = v30;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_shouldIncludeActiveAccountInFooterMessage) = v53;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_shouldPromptForConfirmation) = v55;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_completionAction) = v56;
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  (*(v27 + 16))(v29, a18, v26);
  v35 = sub_24F929608();
  (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
  v36 = (v19 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v36 = 0u;
  v36[1] = 0u;
  sub_24E65E064(v69, &v63);
  if (*(&v64 + 1))
  {
    v66 = v63;
    v67 = v64;
    v68 = v65;
  }

  else
  {
    sub_24F91F6A8();
    v37 = sub_24F91F668();
    v39 = v38;
    (*(v45 + 8))(v22, v46);
    v61 = v37;
    v62 = v39;
    sub_24F92C7F8();
    sub_24E601704(&v63, &qword_27F235830);
  }

  (*(v27 + 8))(a18, v26);
  sub_24E601704(v69, &qword_27F235830);
  v40 = v19 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v40 + 4) = v68;
  v41 = v67;
  *v40 = v66;
  *(v40 + 1) = v41;
  sub_24E65E0D4(v25, v19 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v42 = v60;
  v19[2] = v59;
  v19[3] = v42;
  v43 = v58;
  v19[4] = v57;
  v19[5] = v43;
  (*(v27 + 32))(v19 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v29, v26);
  return v19;
}

char *OfferAlertAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v57 = sub_24F9285B8();
  v61 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v62 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v64 = *(v6 - 8);
  v7 = v64;
  v8 = MEMORY[0x28223BE20](v6);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v59 = &v55 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v58 = &v55 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v56 = &v55 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v55 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - v19;
  sub_24F928398();
  v21 = sub_24F928348();
  v23 = v22;
  v24 = *(v7 + 8);
  v65 = v6;
  v24(v20, v6);
  v25 = (v3 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_message);
  *v25 = v21;
  v25[1] = v23;
  sub_24F928398();
  v26 = sub_24F928348();
  v28 = v27;
  v24(v20, v6);
  v29 = v3;
  v30 = (v3 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_footerMessage);
  *v30 = v26;
  v30[1] = v28;
  sub_24F928398();
  LOBYTE(v26) = sub_24F928278();
  v31 = v65;
  v24(v18, v65);
  *(v29 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_isCancelable) = (v26 == 2) | v26 & 1;
  sub_24F928398();
  v32 = sub_24F928258();
  LOBYTE(v28) = v33;
  v24(v20, v31);
  v34 = v29 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_checkRestrictionsForContentRating;
  *v34 = v32;
  *(v34 + 8) = v28 & 1;
  v35 = v56;
  sub_24F928398();
  LOBYTE(v32) = sub_24F928278();
  v36 = v35;
  v37 = v31;
  v24(v36, v31);
  v38 = v29;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_shouldCheckForAvailableDiskSpace) = v32 & 1;
  sub_24F928398();
  sub_24E9480E0();
  sub_24F928248();
  v24(v20, v37);
  *(v29 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_remoteControllerRequirement) = v67;
  v39 = a1;
  sub_24F928398();
  sub_24E948134();
  sub_24F928248();
  v40 = v37;
  v24(v20, v37);
  *(v38 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_spatialControllerRequirement) = v66;
  v41 = v58;
  sub_24F928398();
  LOBYTE(v32) = sub_24F928278();
  v24(v41, v40);
  *(v38 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_shouldIncludeActiveAccountInFooterMessage) = v32 & 1;
  v42 = v59;
  sub_24F928398();
  LOBYTE(v32) = sub_24F928278();
  v24(v42, v40);
  *(v38 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_shouldPromptForConfirmation) = v32 & 1;
  type metadata accessor for Action();
  v43 = v61;
  sub_24F928398();
  v44 = v63;
  v45 = static Action.tryToMakeInstance(byDeserializing:using:)(v20, v63);
  v46 = v20;
  v47 = v65;
  v59 = v24;
  v24(v46, v65);
  *(v38 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_completionAction) = v45;
  v48 = *(v64 + 16);
  v49 = v60;
  v50 = v47;
  v64 = v39;
  v48(v60, v39, v47);
  v51 = v62;
  v52 = v57;
  (*(v43 + 16))(v62, v44);
  v53 = Action.init(deserializing:using:)(v49, v51);
  (*(v43 + 8))(v44, v52);
  (v59)(v64, v50);
  return v53;
}

unint64_t sub_24E9480E0()
{
  result = qword_27F222538;
  if (!qword_27F222538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222538);
  }

  return result;
}

unint64_t sub_24E948134()
{
  result = qword_27F222540;
  if (!qword_27F222540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222540);
  }

  return result;
}

uint64_t OfferAlertAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_message);

  return v1;
}

uint64_t OfferAlertAction.footerMessage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_footerMessage);

  return v1;
}

uint64_t sub_24E9482C0()
{
}

uint64_t OfferAlertAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t OfferAlertAction.__deallocating_deinit()
{
  OfferAlertAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OfferAlertAction()
{
  result = qword_27F222548;
  if (!qword_27F222548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SocialProviderContainer.preferredAudioProvider.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SocialProviderContainer.preferredVideoProvider.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SocialProviderContainer.providerIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

unint64_t SocialProviderContainer.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v15 = v1[1];
  v3 = v1[2];
  v4 = v1[4];
  v16 = v1[3];
  v17 = v1[5];
  v5 = v1[6];
  v18 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  strcpy((inited + 32), "callProviders");
  *(inited + 46) = -4864;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  *(inited + 72) = v7;
  v8 = sub_24E61B71C(&qword_27F213798);
  *(inited + 48) = v2;
  *(inited + 80) = v8;
  *(inited + 88) = 0xD000000000000016;
  *(inited + 96) = 0x800000024FA4A540;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 128) = v9;
  v10 = sub_24E605DB4();
  *(inited + 104) = v15;
  *(inited + 112) = v3;
  *(inited + 136) = v10;
  *(inited + 144) = 0xD000000000000016;
  *(inited + 184) = v9;
  *(inited + 192) = v10;
  *(inited + 152) = 0x800000024FA4A560;
  *(inited + 160) = v16;
  *(inited + 168) = v4;
  *(inited + 200) = 0xD000000000000012;
  *(inited + 208) = 0x800000024FA4A580;
  *(inited + 240) = MEMORY[0x277D837D0];
  v11 = MEMORY[0x277D22580];
  *(inited + 216) = v17;
  *(inited + 224) = v5;
  *(inited + 248) = v11;
  *(inited + 256) = 0xD00000000000001BLL;
  *(inited + 296) = v7;
  *(inited + 304) = v8;
  *(inited + 264) = 0x800000024FA4A5A0;
  *(inited + 272) = v18;

  v12 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v13 = sub_24E80FFAC(v12);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v13;
  return result;
}

unint64_t sub_24E9488E8()
{
  v1 = *v0;
  v2 = 0x766F72506C6C6163;
  v3 = 0xD000000000000016;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24E948998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E94C154(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E9489C0(uint64_t a1)
{
  v2 = sub_24E94B18C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9489FC(uint64_t a1)
{
  v2 = sub_24E94B18C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SocialProviderContainer.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222558);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v15[5] = v1[2];
  v15[6] = v8;
  v11 = v1[5];
  v15[3] = v1[4];
  v15[4] = v10;
  v13 = v1[6];
  v12 = v1[7];
  v15[1] = v11;
  v15[2] = v13;
  v15[0] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E94B18C();

  sub_24F92D128();
  v17 = v9;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  sub_24E61B71C(&qword_27F2137A0);
  sub_24F92CD48();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v17) = 1;
    sub_24F92CCA8();
    LOBYTE(v17) = 2;
    sub_24F92CCA8();
    LOBYTE(v17) = 3;
    sub_24F92CD08();
    v17 = v15[0];
    v16 = 4;
    sub_24F92CD48();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SocialProviderContainer.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222568);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E94B18C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  LOBYTE(v30) = 0;
  sub_24E61B71C(&qword_27F216420);
  sub_24F92CC68();
  v29 = v34[0];
  LOBYTE(v34[0]) = 1;
  v9 = sub_24F92CBC8();
  v28 = v10;
  v24 = v9;
  LOBYTE(v34[0]) = 2;
  v27 = 0;
  v23 = sub_24F92CBC8();
  v26 = v11;
  LOBYTE(v34[0]) = 3;
  v22 = sub_24F92CC28();
  v25 = v12;
  v35 = 4;
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v27 = v36;
  v14 = v28;
  v13 = v29;
  v15 = v24;
  *&v30 = v29;
  *(&v30 + 1) = v24;
  v16 = v23;
  *&v31 = v28;
  *(&v31 + 1) = v23;
  v17 = v26;
  *&v32 = v26;
  *(&v32 + 1) = v22;
  v18 = v25;
  *&v33 = v25;
  *(&v33 + 1) = v36;
  v19 = v31;
  *a2 = v30;
  a2[1] = v19;
  v20 = v33;
  a2[2] = v32;
  a2[3] = v20;
  sub_24E94B1E0(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v13;
  v34[1] = v15;
  v34[2] = v14;
  v34[3] = v16;
  v34[4] = v17;
  v34[5] = v22;
  v34[6] = v18;
  v34[7] = v27;
  return sub_24E94B218(v34);
}

unint64_t SocialIntegrationIdentifier.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  if (v3)
  {
    v4 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x646E696B24;
    v6 = MEMORY[0x277D22580];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v6;
    *(inited + 40) = 0xE500000000000000;
    strcpy((inited + 48), "socialProvider");
    *(inited + 63) = -18;
    strcpy((inited + 88), "socialProvider");
    *(inited + 103) = -18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_24F93DE60;
    *(v7 + 32) = 0xD000000000000012;
    *(v7 + 40) = 0x800000024FA4A580;
    *(v7 + 48) = v4;
    *(v7 + 56) = v3;

    v8 = sub_24E6086DC(v7);
    swift_setDeallocating();
    v9 = (v7 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x646E696B24;
    v10 = MEMORY[0x277D22580];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v10;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 0x73746361746E6F63;
    *(inited + 56) = 0xE800000000000000;
    *(inited + 88) = 0x73746361746E6F63;
    *(inited + 96) = 0xE800000000000000;
    v8 = sub_24E6086DC(&unk_2861C01F8);
    v9 = &unk_2861C0218;
  }

  sub_24E601704(v9, &qword_27F219F90);
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
  *(inited + 136) = sub_24E776F6C();
  *(inited + 104) = v8;
  v11 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v12 = sub_24E80FFAC(v11);

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[3] = v13;
  a1[4] = result;
  *a1 = v12;
  return result;
}

uint64_t sub_24E94939C()
{
  if (*v0)
  {
    return 0x72506C6169636F73;
  }

  else
  {
    return 0x73746361746E6F63;
  }
}

uint64_t sub_24E9493E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73746361746E6F63 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72506C6169636F73 && a2 == 0xEE0072656469766FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24E9494C8(uint64_t a1)
{
  v2 = sub_24E94B248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E949504(uint64_t a1)
{
  v2 = sub_24E94B248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E949540(uint64_t a1)
{
  v2 = sub_24E94B2F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E94957C(uint64_t a1)
{
  v2 = sub_24E94B2F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E9495D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024FA4A580 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24E949668(uint64_t a1)
{
  v2 = sub_24E94B29C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9496A4(uint64_t a1)
{
  v2 = sub_24E94B29C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SocialIntegrationIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222570);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222578);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v17 = &v16 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222580);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = v1[1];
  v20 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E94B248();
  sub_24F92D128();
  if (v12)
  {
    v24 = 1;
    sub_24E94B29C();
    sub_24F92CC98();
    v13 = v22;
    sub_24F92CD08();
    (*(v21 + 8))(v5, v13);
  }

  else
  {
    v23 = 0;
    sub_24E94B2F0();
    v15 = v17;
    sub_24F92CC98();
    (*(v18 + 8))(v15, v19);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t SocialIntegrationIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2225A0);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2225A8);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2225B0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24E94B248();
  v13 = v35;
  sub_24F92D108();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v30 = v5;
  v14 = v34;
  v35 = v9;
  v15 = sub_24F92CC78();
  v16 = (2 * *(v15 + 16)) | 1;
  v37 = v15;
  v38 = v15 + 32;
  v39 = 0;
  v40 = v16;
  v17 = sub_24E643430();
  if (v17 == 2 || v39 != v40 >> 1)
  {
    v22 = sub_24F92C918();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v24 = &type metadata for SocialIntegrationIdentifier;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v35 + 8))(v11, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  if (v17)
  {
    v41 = 1;
    sub_24E94B29C();
    sub_24F92CBA8();
    v18 = v35;
    v19 = v33;
    v20 = sub_24F92CC28();
    v21 = v4;
    v28 = v27;
    (*(v32 + 8))(v21, v14);
    (*(v18 + 8))(v11, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0;
    sub_24E94B2F0();
    sub_24F92CBA8();
    v20 = 0;
    v26 = v35;
    v19 = v33;
    (*(v31 + 8))(v7, v30);
    (*(v26 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v28 = 0;
  }

  *v19 = v20;
  v19[1] = v28;
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

void SocialIntegrationClassification.jsRepresentation(in:)(uint64_t *a1@<X8>)
{
  v2 = 0x7261507473726966;
  if (*v1)
  {
    v2 = 0x7261506472696874;
  }

  v3 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v3;
  *a1 = v2;
  a1[1] = 0xEA00000000007974;
}

uint64_t SocialIntegrationClassification.rawValue.getter()
{
  if (*v0)
  {
    return 0x7261506472696874;
  }

  else
  {
    return 0x7261507473726966;
  }
}

GameStoreKit::SocialIntegrationClassification_optional __swiftcall SocialIntegrationClassification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24E94A010(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7261506472696874;
  }

  else
  {
    v2 = 0x7261507473726966;
  }

  if (*a2)
  {
    v3 = 0x7261506472696874;
  }

  else
  {
    v3 = 0x7261507473726966;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24F92CE08();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_24E94A0A4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E94A124()
{
  sub_24F92B218();
}

uint64_t sub_24E94A188()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E94A204@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_24E94A264(uint64_t *a1@<X8>)
{
  v2 = 0x7261507473726966;
  if (*v1)
  {
    v2 = 0x7261506472696874;
  }

  *a1 = v2;
  a1[1] = 0xEA00000000007974;
}

void sub_24E94A350(uint64_t *a1@<X8>)
{
  v2 = 0x7261507473726966;
  if (*v1)
  {
    v2 = 0x7261506472696874;
  }

  v3 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v3;
  *a1 = v2;
  a1[1] = 0xEA00000000007974;
}

uint64_t SocialIntegration.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SocialIntegration.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SocialIntegration.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SocialIntegration() + 24);

  return sub_24E6F66C4(v3, a1);
}

uint64_t SocialIntegration.identifier.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SocialIntegration() + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SocialIntegration.classification.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SocialIntegration();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t SocialIntegration.rootContainer.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SocialIntegration() + 36));
  v5 = v3[3];
  v10 = v3[2];
  v4 = v10;
  v11 = v5;
  v6 = v3[1];
  v9[0] = *v3;
  v9[1] = v6;
  *a1 = v9[0];
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v5;
  return sub_24E94B1E0(v9, &v8);
}

unint64_t SocialIntegration.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x656C746974627573;
  *(inited + 96) = 0xE800000000000000;
  v8 = v1[2];
  v7 = v1[3];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  v9 = sub_24E605DB4();
  *(inited + 104) = v8;
  *(inited + 112) = v7;
  *(inited + 136) = v9;
  *(inited + 144) = 1852793705;
  *(inited + 152) = 0xE400000000000000;
  v10 = type metadata accessor for SocialIntegration();
  v11 = v10[6];
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  *(inited + 192) = sub_24E7F1D38();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E6F66C4(v1 + v11, boxed_opaque_existential_1);
  *(inited + 200) = 0x696669746E656469;
  *(inited + 208) = 0xEA00000000007265;
  v13 = (v1 + v10[7]);
  v14 = *v13;
  v15 = v13[1];
  *(inited + 240) = &type metadata for SocialIntegrationIdentifier;
  v16 = sub_24E94B390();
  *(inited + 216) = v14;
  *(inited + 224) = v15;
  *(inited + 248) = v16;
  strcpy((inited + 256), "classification");
  *(inited + 271) = -18;
  LOBYTE(v14) = *(v1 + v10[8]);
  *(inited + 296) = &type metadata for SocialIntegrationClassification;
  v17 = sub_24E94B3E4();
  *(inited + 272) = v14;
  *(inited + 304) = v17;
  strcpy((inited + 312), "rootContainer");
  *(inited + 326) = -4864;
  v18 = (v1 + v10[9]);
  v19 = v18[3];
  v30 = v18[2];
  v31 = v19;
  v20 = v18[1];
  v28 = *v18;
  v29 = v20;
  *(inited + 352) = &type metadata for SocialProviderContainer;
  *(inited + 360) = sub_24E94B438();
  v21 = swift_allocObject();
  *(inited + 328) = v21;
  v22 = v31;
  v21[3] = v30;
  v21[4] = v22;
  v23 = v29;
  v21[1] = v28;
  v21[2] = v23;

  sub_24E94B1E0(&v28, &v27);
  v24 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v25 = sub_24E80FFAC(v24);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v25;
  return result;
}

uint64_t sub_24E94A7EC()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x696669746E656469;
  v4 = 0x6966697373616C63;
  if (v1 != 4)
  {
    v4 = 0x746E6F43746F6F72;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974627573;
  if (v1 != 1)
  {
    v5 = 1852793705;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24E94A8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E94C314(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E94A8DC(uint64_t a1)
{
  v2 = sub_24E94B4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E94A918(uint64_t a1)
{
  v2 = sub_24E94B4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SocialIntegration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2225D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E94B4E4();
  sub_24F92D128();
  LOBYTE(v24[0]) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    LOBYTE(v24[0]) = 1;
    sub_24F92CCA8();
    v9 = type metadata accessor for SocialIntegration();
    LOBYTE(v24[0]) = 2;
    sub_24F9289E8();
    sub_24E94B634(&qword_27F214060);
    sub_24F92CCF8();
    v10 = (v3 + v9[7]);
    v11 = v10[1];
    *&v24[0] = *v10;
    *(&v24[0] + 1) = v11;
    LOBYTE(v20) = 3;
    sub_24E94B538();

    sub_24F92CD48();

    v27 = *(v3 + v9[8]);
    v26 = 4;
    sub_24E94B58C();
    sub_24F92CD48();
    v12 = (v3 + v9[9]);
    v13 = v12[1];
    v24[0] = *v12;
    v24[1] = v13;
    v14 = v12[3];
    v16 = *v12;
    v15 = v12[1];
    v24[2] = v12[2];
    v24[3] = v14;
    v20 = v16;
    v21 = v15;
    v17 = v12[3];
    v22 = v12[2];
    v23 = v17;
    v25 = 5;
    sub_24E94B1E0(v24, v19);
    sub_24E94B5E0();
    sub_24F92CD48();
    v19[0] = v20;
    v19[1] = v21;
    v19[2] = v22;
    v19[3] = v23;
    sub_24E94B218(v19);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SocialIntegration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2225F8);
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = &v20 - v8;
  v10 = type metadata accessor for SocialIntegration();
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24E94B4E4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  LOBYTE(v24) = 0;
  *v12 = sub_24F92CC28();
  v12[1] = v14;
  LOBYTE(v24) = 1;
  v12[2] = sub_24F92CBC8();
  v12[3] = v15;
  sub_24F9289E8();
  LOBYTE(v24) = 2;
  sub_24E94B634(&qword_27F214018);
  sub_24F92CC18();
  sub_24E94B678(v6, v12 + v10[6]);
  v28 = 3;
  sub_24E94B6E8();
  sub_24F92CC68();
  *(v12 + v10[7]) = v24;
  v28 = 4;
  sub_24E94B73C();
  sub_24F92CC68();
  *(v12 + v10[8]) = v24;
  v28 = 5;
  sub_24E94B790();
  sub_24F92CC68();
  (*(v7 + 8))(v9, v22);
  v16 = (v12 + v10[9]);
  v17 = v25;
  *v16 = v24;
  v16[1] = v17;
  v18 = v27;
  v16[2] = v26;
  v16[3] = v18;
  sub_24E94B7E4(v12, v21);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_24E94B848(v12);
}

unint64_t sub_24E94B18C()
{
  result = qword_27F222560;
  if (!qword_27F222560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222560);
  }

  return result;
}

unint64_t sub_24E94B248()
{
  result = qword_27F222588;
  if (!qword_27F222588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222588);
  }

  return result;
}

unint64_t sub_24E94B29C()
{
  result = qword_27F222590;
  if (!qword_27F222590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222590);
  }

  return result;
}

unint64_t sub_24E94B2F0()
{
  result = qword_27F222598;
  if (!qword_27F222598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222598);
  }

  return result;
}

uint64_t type metadata accessor for SocialIntegration()
{
  result = qword_27F222620;
  if (!qword_27F222620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24E94B390()
{
  result = qword_27F2225B8;
  if (!qword_27F2225B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2225B8);
  }

  return result;
}

unint64_t sub_24E94B3E4()
{
  result = qword_27F2225C0;
  if (!qword_27F2225C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2225C0);
  }

  return result;
}

unint64_t sub_24E94B438()
{
  result = qword_27F2225C8;
  if (!qword_27F2225C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2225C8);
  }

  return result;
}

uint64_t sub_24E94B48C()
{

  return swift_deallocObject();
}

unint64_t sub_24E94B4E4()
{
  result = qword_27F2225D8;
  if (!qword_27F2225D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2225D8);
  }

  return result;
}

unint64_t sub_24E94B538()
{
  result = qword_27F2225E0;
  if (!qword_27F2225E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2225E0);
  }

  return result;
}

unint64_t sub_24E94B58C()
{
  result = qword_27F2225E8;
  if (!qword_27F2225E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2225E8);
  }

  return result;
}

unint64_t sub_24E94B5E0()
{
  result = qword_27F2225F0;
  if (!qword_27F2225F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2225F0);
  }

  return result;
}

uint64_t sub_24E94B634(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24F9289E8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E94B678(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E94B6E8()
{
  result = qword_27F222600;
  if (!qword_27F222600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222600);
  }

  return result;
}

unint64_t sub_24E94B73C()
{
  result = qword_27F222608;
  if (!qword_27F222608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222608);
  }

  return result;
}

unint64_t sub_24E94B790()
{
  result = qword_27F222610;
  if (!qword_27F222610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222610);
  }

  return result;
}

uint64_t sub_24E94B7E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialIntegration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E94B848(uint64_t a1)
{
  v2 = type metadata accessor for SocialIntegration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E94B8A8()
{
  result = qword_27F222618;
  if (!qword_27F222618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222618);
  }

  return result;
}

uint64_t sub_24E94B90C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E94B95C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_24E94B9B0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_24E94BA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E94BAD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E94BB84()
{
  sub_24E6BCB04();
  if (v0 <= 0x3F)
  {
    sub_24E6A7820();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24E94BC88()
{
  result = qword_27F222630;
  if (!qword_27F222630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222630);
  }

  return result;
}

unint64_t sub_24E94BCE0()
{
  result = qword_27F222638;
  if (!qword_27F222638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222638);
  }

  return result;
}

unint64_t sub_24E94BD38()
{
  result = qword_27F222640;
  if (!qword_27F222640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222640);
  }

  return result;
}

unint64_t sub_24E94BD90()
{
  result = qword_27F222648;
  if (!qword_27F222648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222648);
  }

  return result;
}

unint64_t sub_24E94BDE8()
{
  result = qword_27F222650;
  if (!qword_27F222650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222650);
  }

  return result;
}

unint64_t sub_24E94BE40()
{
  result = qword_27F222658;
  if (!qword_27F222658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222658);
  }

  return result;
}

unint64_t sub_24E94BE98()
{
  result = qword_27F222660;
  if (!qword_27F222660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222660);
  }

  return result;
}

unint64_t sub_24E94BEF0()
{
  result = qword_27F222668;
  if (!qword_27F222668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222668);
  }

  return result;
}

unint64_t sub_24E94BF48()
{
  result = qword_27F222670;
  if (!qword_27F222670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222670);
  }

  return result;
}

unint64_t sub_24E94BFA0()
{
  result = qword_27F222678;
  if (!qword_27F222678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222678);
  }

  return result;
}

unint64_t sub_24E94BFF8()
{
  result = qword_27F222680;
  if (!qword_27F222680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222680);
  }

  return result;
}

unint64_t sub_24E94C050()
{
  result = qword_27F222688;
  if (!qword_27F222688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222688);
  }

  return result;
}

unint64_t sub_24E94C0A8()
{
  result = qword_27F222690;
  if (!qword_27F222690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222690);
  }

  return result;
}

unint64_t sub_24E94C100()
{
  result = qword_27F222698;
  if (!qword_27F222698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222698);
  }

  return result;
}

uint64_t sub_24E94C154(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x766F72506C6C6163 && a2 == 0xED00007372656469;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA4A540 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA4A560 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA4A580 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024FA4A5A0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24E94C314(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6966697373616C63 && a2 == 0xEE006E6F69746163 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E6F43746F6F72 && a2 == 0xED000072656E6961)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_24E94C528()
{
  result = qword_27F2226A0;
  if (!qword_27F2226A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2226A0);
  }

  return result;
}

uint64_t ReviewsDiffablePageContentPresenter.__allocating_init(objectGraph:sidePackedPage:pendingPageRender:pageRenderMetrics:sortOption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ReviewsDiffablePageContentPresenter.init(objectGraph:sidePackedPage:pendingPageRender:pageRenderMetrics:sortOption:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t ReviewsDiffablePageContentPresenter.init(objectGraph:sidePackedPage:pendingPageRender:pageRenderMetrics:sortOption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v78 = a5;
  v74 = a1;
  v75 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v72 - v10;
  v73 = v72 - v10;
  *(v6 + qword_27F2226A8) = 0;
  v12 = sub_24F91F4A8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *(v6 + qword_27F22F198) = 0;
  v13 = MEMORY[0x277D84F90];
  *(v6 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v14 = qword_27F39C780;
  v77 = a4;

  v76 = a3;

  *(v6 + v14) = sub_24E60986C(v13);
  v15 = (v6 + qword_27F22F1A8);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v6 + qword_27F22F1B0);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v6 + qword_27F22F1B8);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v6 + qword_27F22F1C0);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v6 + qword_27F22F1C8);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v6 + qword_27F39C788);
  *v20 = 0u;
  v20[1] = 0u;
  *(v20 + 25) = 0u;
  *(v6 + qword_27F39C790) = 0;
  *(v6 + qword_27F22F1D0) = 0;
  *(v6 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v6 + qword_27F39C798) = 0;
  v21 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B0);
  swift_allocObject();
  *(v6 + v21) = sub_24F92ADA8();
  v22 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v6 + v22) = sub_24F92ADA8();
  v23 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C0);
  swift_allocObject();
  *(v6 + v23) = sub_24F92ADA8();
  v24 = qword_27F39C7B8;
  swift_allocObject();
  *(v6 + v24) = sub_24F92ADA8();
  v25 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v6 + v25) = sub_24F92ADA8();
  v26 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  *(v6 + v26) = sub_24F92ADA8();
  v27 = qword_27F22F1E0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v29 = *(*(v28 - 8) + 56);
  v29(v6 + v27, 1, 1, v28);
  v29(v6 + qword_27F22F1E8, 1, 1, v28);
  v30 = v73;
  v31 = v74;
  *(v6 + 16) = v74;
  sub_24E911D90(v30, v6 + qword_27F39C7D0);
  v32 = *v15;
  *v15 = 0;
  v15[1] = 0;
  sub_24E824448(v32);
  v33 = *v17;
  *v17 = 0;
  v17[1] = 0;
  v34 = v75;
  sub_24E824448(v33);
  if (v34)
  {
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    v36 = sub_24E94E064;
  }

  else
  {
    v36 = 0;
    v35 = 0;
  }

  v37 = *v16;
  *v16 = v36;
  v16[1] = v35;
  sub_24E824448(v37);
  v38 = *v18;
  *v18 = 0;
  v18[1] = 0;
  sub_24E824448(v38);
  v39 = *v19;
  *v19 = 0;
  v19[1] = 0;
  sub_24E824448(v39);
  v40 = v77;
  *(v6 + qword_27F22F1F0) = v76;
  *(v6 + qword_27F39C7D8) = v40;
  v41 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
  sub_24F928FD8();
  swift_retain_n();
  v42 = v31;
  sub_24F92A758();
  v43 = v79;
  v44 = v80;
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = swift_allocObject();
  v72[0] = v46;
  v72[1] = v43;
  v46[2] = v45;
  v46[3] = v34;
  v46[4] = v43;
  v46[5] = v44;
  v47 = swift_allocObject();
  v47[2] = v78;
  v47[3] = v34;
  v47[4] = v42;
  v47[5] = v6;
  v47[6] = v43;
  v47[7] = v44;
  v48 = swift_allocObject();
  swift_weakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = v42;
  *(v49 + 24) = v41;
  v50 = swift_allocObject();
  v73 = v50;
  *(v50 + 16) = sub_24E94DE4C;
  *(v50 + 24) = v42;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_24E94DDEC;
  *(v51 + 24) = v47;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_24E94DEE8;
  *(v52 + 24) = v51;
  v53 = (v6 + qword_27F22F1A8);
  v54 = *(v6 + qword_27F22F1A8);
  *v53 = sub_24E94DF18;
  v53[1] = v52;

  v55 = v72[0];

  swift_retain_n();
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();

  sub_24E824448(v54);
  v56 = swift_allocObject();
  *(v56 + 16) = sub_24E94DD64;
  *(v56 + 24) = v55;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_24E94DF50;
  *(v57 + 24) = v56;
  v58 = (v6 + qword_27F22F1B0);
  v59 = *(v6 + qword_27F22F1B0);
  *v58 = sub_24E94DF80;
  v58[1] = v57;

  sub_24E824448(v59);
  v60 = swift_allocObject();
  *(v60 + 16) = sub_24E94DDFC;
  *(v60 + 24) = v48;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_24E94DFB8;
  *(v61 + 24) = v60;
  v62 = (v6 + qword_27F22F1B8);
  v63 = *(v6 + qword_27F22F1B8);
  *v62 = sub_24E94DFEC;
  v62[1] = v61;

  sub_24E824448(v63);
  v64 = (v6 + qword_27F22F1C0);
  v65 = *(v6 + qword_27F22F1C0);
  *v64 = sub_24E94DE44;
  v64[1] = v49;

  sub_24E824448(v65);
  v66 = swift_allocObject();
  v67 = v73;
  *(v66 + 16) = sub_24E94DE8C;
  *(v66 + 24) = v67;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_24E94DEE8;
  *(v68 + 24) = v66;
  v69 = (v6 + qword_27F22F1C8);
  v70 = *(v6 + qword_27F22F1C8);
  *v69 = sub_24E94DF18;
  v69[1] = v68;

  sub_24E824448(v70);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_24E94CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222720);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23[-1] - v13;
  if (a2)
  {
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();

    sub_24F92A758();
    v15 = OBJC_IVAR____TtCC12GameStoreKit11ReviewsPage10SortOption_url;
    v16 = sub_24F91F4A8();
    (*(*(v16 - 8) + 16))(v14, a2 + v15, v16);
    sub_24EB45FC8(v14, a4, "GameStoreKit/ReviewsDiffablePageContentPresenter.swift", 54, 2);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a6;
    v18[4] = a7;
    v23[3] = sub_24F929638();
    v23[4] = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(v23);
    swift_unknownObjectRetain();
    sub_24F929628();
    type metadata accessor for ReviewsPage(0);
    v19 = sub_24F92A938();

    sub_24E601704(v14, &qword_27F222720);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v19;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226F8);
    if (a3)
    {
      v23[0] = a3;

      return sub_24F92A988();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222700);
      sub_24E94E1EC();
      swift_allocError();
      *v21 = 0;
      return sub_24F92A978();
    }
  }
}

uint64_t sub_24E94D188@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    ObjectType = swift_getObjectType();
    v9 = *(v5 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId + 8);
    *&v20 = *(v5 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId);
    *(&v20 + 1) = v9;
    v10 = *(a2 + 56);

    v10(&v20, ObjectType, a2);
    v12 = v11;

    v13 = swift_getObjectType();
    (*(v12 + 16))(v18, v13, v12);
    swift_unknownObjectRelease();
    v20 = v18[0];
    v21 = v18[1];
    v22 = v18[2];
    v23 = v19;
    if (v19 >> 60)
    {
      if (v19 >> 60 != 8)
      {
LABEL_9:
        sub_24E88D2AC(&v20);
LABEL_12:
        LOBYTE(v16) = 1;
        goto LABEL_13;
      }

      v14 = *(&v22 + 1) | *(&v23 + 1);
      v15 = *(&v21 + 1) | v21 | *(&v20 + 1);
      if (v19 != 0x8000000000000000 || v14 | *&v18[0] | v22 | v15)
      {
        if (v19 == 0x8000000000000000 && *&v18[0] == 4)
        {
          v16 = v14 | v22 | v15;
          if (!v16)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_9;
      }
    }

    else if (LOBYTE(v18[0]) != 1)
    {
      goto LABEL_12;
    }

    LOBYTE(v16) = 0;
LABEL_13:
    *(v7 + qword_27F2226A8) = v16;
  }

  *a3 = v5;
}

uint64_t sub_24E94D348(uint64_t a1)
{
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24F929C28();

  sub_24F928FE8();
  sub_24F929BF8();

  v2 = sub_24F929C18();

  v3 = sub_24EB46264(a1, v2, "GameStoreKit/ReviewsDiffablePageContentPresenter.swift", 54, 2);

  return v3;
}

uint64_t sub_24E94D438(uint64_t a1, uint64_t a2)
{
  sub_24E94E17C(a1, &v6);
  if (v7)
  {
    sub_24E612B0C(&v6, v8);
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    sub_24E643A9C(v8, &v6);
    v3 = sub_24EB462B0(&v6, a2, "GameStoreKit/ReviewsDiffablePageContentPresenter.swift", 54, 2);

    sub_24E601704(&v6, &qword_27F222710);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    sub_24E601704(&v6, &qword_27F2129B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222700);
    sub_24E94E1EC();
    swift_allocError();
    *v5 = 2;
    return sub_24F92A978();
  }
}

uint64_t sub_24E94D660(void (*a1)(void, void), void (*a2)(void, void), void (*a3)(void, void), void (*a4)(void, void))
{

  sub_24E601704(v4 + qword_27F39C7D0, &qword_27F228530);

  a1(*(v4 + qword_27F22F1A8), *(v4 + qword_27F22F1A8 + 8));
  a2(*(v4 + qword_27F22F1B0), *(v4 + qword_27F22F1B0 + 8));
  a3(*(v4 + qword_27F22F1B8), *(v4 + qword_27F22F1B8 + 8));
  sub_24E824448(*(v4 + qword_27F22F1C0));
  a4(*(v4 + qword_27F22F1C8), *(v4 + qword_27F22F1C8 + 8));

  sub_24E94E128(v4 + qword_27F39C788);

  sub_24E601704(v4 + qword_27F22F1E0, &qword_27F2226F0);
  sub_24E601704(v4 + qword_27F22F1E8, &qword_27F2226F0);
  return v4;
}

uint64_t ReviewsDiffablePageContentPresenter.__deallocating_deinit()
{
  sub_24E94D660(sub_24E94E5C8, sub_24E94E5C8, sub_24E94E5C8, sub_24E94E5C8);

  return swift_deallocClassInstance();
}

void sub_24E94D92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_24E824448(a10);
  sub_24E824448(a6);
  sub_24E824448(a4);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_24E94D994(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v32 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v9 << 6);
      sub_24E65864C(*(a1 + 48) + 40 * v12, &v29);
      *(&v31 + 1) = *(*(a1 + 56) + 8 * v12);
      v28[1] = v30;
      v28[2] = v31;
      v28[0] = v29;
      v13 = *(&v31 + 1);
      if ((*(*(&v31 + 1) + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints + 1) & 0x40) == 0)
      {
        break;
      }

      result = sub_24E601704(v28, &qword_27F222718);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v26 = v30;
    v27 = v31;
    v25 = v29;
    v14 = *(v2 + 16);
    if (*(v2 + 24) <= v14)
    {

      sub_24E899884(v14 + 1, 1);
      v2 = v32;
    }

    else
    {
    }

    result = sub_24F92C7B8();
    v15 = v2 + 64;
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v2 + 64 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v15 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v2 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    *(*(v2 + 56) + 8 * v19) = v13;
    ++*(v2 + 16);
  }

  while (v6);
LABEL_7:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_24E94DCA4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

uint64_t sub_24E94DCE4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24E94DD1C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E94DD64()
{
  sub_24E94E250(v0[2], v0[3], v0[4], v0[5]);
}

uint64_t sub_24E94DD94()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E94DDFC(uint64_t a1)
{
  sub_24E94E41C(a1);
}

uint64_t sub_24E94DE54()
{

  return swift_deallocObject();
}

uint64_t sub_24E94DE8C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24E643A9C(a1, v5);
  v3 = v2(v5);
  sub_24E601704(v5, &qword_27F2129B0);
  return v3;
}

uint64_t sub_24E94DEE8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_24E94DF50@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_24E94DFB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_24E94DFEC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_24E94E02C()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for ReviewsDiffablePageContentPresenter()
{
  result = qword_27F2226E0;
  if (!qword_27F2226E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E94E17C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E94E1EC()
{
  result = qword_27F222708;
  if (!qword_27F222708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222708);
  }

  return result;
}

uint64_t sub_24E94E250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (!a2)
    {
LABEL_15:

      return a2;
    }

    v7 = Strong;
    ObjectType = swift_getObjectType();
    v9 = *(a2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId + 8);
    *&v21 = *(a2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId);
    *(&v21 + 1) = v9;
    v10 = *(a4 + 56);

    v10(&v21, ObjectType, a4);
    v12 = v11;

    v13 = swift_getObjectType();
    (*(v12 + 16))(v19, v13, v12);

    swift_unknownObjectRelease();
    v21 = v19[0];
    v22 = v19[1];
    v23 = v19[2];
    v24 = v20;
    if (v20 >> 60)
    {
      if (v20 >> 60 != 8)
      {
LABEL_10:
        sub_24E88D2AC(&v21);
        v14 = v7;
LABEL_13:
        LOBYTE(v17) = 1;
        goto LABEL_14;
      }

      v14 = v7;
      v15 = *(&v23 + 1) | *(&v24 + 1);
      v16 = *(&v22 + 1) | v22 | *(&v21 + 1);
      if (v20 != 0x8000000000000000 || v15 | *&v19[0] | v23 | v16)
      {
        if (v20 == 0x8000000000000000 && *&v19[0] == 4)
        {
          v17 = v15 | v23 | v16;
          if (!v17)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_10;
      }
    }

    else
    {
      v14 = v7;
      if (LOBYTE(v19[0]) != 1)
      {
        goto LABEL_13;
      }
    }

    LOBYTE(v17) = 0;
LABEL_14:
    *(v14 + qword_27F2226A8) = v17;
    goto LABEL_15;
  }

  return a2;
}

uint64_t sub_24E94E41C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + qword_27F2226A8) == 1 || *(a1 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_alwaysAllowReviews) == 1)
    {
    }

    else
    {
      v3 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;
      swift_beginAccess();

      v5 = sub_24E94D994(v4);

      *(a1 + v3) = v5;
    }
  }

  return a1;
}

uint64_t objectdestroy_9Tm_0(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

unint64_t SearchOrigin.rawValue.getter()
{
  result = 0x676E69646E657274;
  switch(*v0)
  {
    case 1:
      result = 0x6574736567677573;
      break;
    case 2:
      result = 0x73746E65636572;
      break;
    case 3:
      result = 0x73746E6968;
      break;
    case 4:
      result = 0x6C616E7265747865;
      break;
    case 5:
      result = 0x7463416B63697571;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 7630960;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 0xA:
      result = 0x7478655472657375;
      break;
    case 0xB:
      result = 0x6570795472657375;
      break;
    case 0xC:
      result = 0x6E694874736F6867;
      break;
    case 0xD:
      result = 0x6F54646564697567;
      break;
    case 0xE:
      result = 0x726142626174;
      break;
    default:
      return result;
  }

  return result;
}

void SearchOrigin.jsRepresentation(in:)(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x676E69646E657274;
  switch(*v1)
  {
    case 1:
      v3 = 0x6574736567677573;
      v2 = 0xE900000000000064;
      break;
    case 2:
      v2 = 0xE700000000000000;
      v3 = 0x73746E65636572;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x73746E6968;
      break;
    case 4:
      v2 = 0xEB000000006C7255;
      v3 = 0x6C616E7265747865;
      break;
    case 5:
      v2 = 0xEB000000006E6F69;
      v3 = 0x7463416B63697571;
      break;
    case 6:
      v3 = 0xD000000000000010;
      v2 = 0x800000024FA40380;
      break;
    case 7:
      v2 = 0xE300000000000000;
      v3 = 7630960;
      break;
    case 8:
      v2 = 0x800000024FA403A0;
      v3 = 0xD000000000000013;
      break;
    case 9:
      v2 = 0x800000024FA403C0;
      v3 = 0xD000000000000014;
      break;
    case 0xA:
      v3 = 0x7478655472657375;
      break;
    case 0xB:
      v2 = 0xED0000746E694864;
      v3 = 0x6570795472657375;
      break;
    case 0xC:
      v2 = 0xE900000000000074;
      v3 = 0x6E694874736F6867;
      break;
    case 0xD:
      v3 = 0x6F54646564697567;
      v2 = 0xEB000000006E656BLL;
      break;
    case 0xE:
      v2 = 0xE600000000000000;
      v3 = 0x726142626174;
      break;
    default:
      break;
  }

  v4 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v4;
  *a1 = v3;
  a1[1] = v2;
}

GameStoreKit::SearchOrigin_optional __swiftcall SearchOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24E94EA5C()
{
  v0 = SearchOrigin.rawValue.getter();
  v2 = v1;
  if (v0 == SearchOrigin.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

unint64_t sub_24E94EAFC()
{
  result = qword_27F222728;
  if (!qword_27F222728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222728);
  }

  return result;
}

uint64_t sub_24E94EB50()
{
  sub_24F92D068();
  SearchOrigin.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E94EBB8()
{
  SearchOrigin.rawValue.getter();
  sub_24F92B218();
}

uint64_t sub_24E94EC1C()
{
  sub_24F92D068();
  SearchOrigin.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24E94EC8C@<X0>(unint64_t *a1@<X8>)
{
  result = SearchOrigin.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SearchOrigin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchOrigin(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Brick.artwork.getter()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
    result = sub_24F92C738();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x253052270](0, v1);
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  __break(1u);
  return result;
}

uint64_t Brick.__allocating_init(id:isMediaDark:isRTLMediaDark:artworks:rtlArtwork:accessibilityLabel:shortEditorialDescription:caption:title:subtitle:collectionIcons:editorialDisplayOptions:clickAction:shelfBackground:personalizationStyle:originalModel:flowPreviewActionsConfiguration:impressionMetrics:artworkSafeArea:textSafeArea:backgroundColor:placementStyle:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 *a17, uint64_t a18, __int128 *a19, char *a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 *a24, __int128 *a25, uint64_t a26, char *a27)
{
  v81 = a8;
  v80 = a7;
  v79 = a6;
  v73 = a5;
  v78 = a4;
  v77 = a2;
  v63 = a1;
  v85 = a22;
  v84 = a21;
  v74 = a9;
  v64 = a27;
  v86 = a26;
  v72 = a23;
  v83 = a18;
  v82 = a16;
  v62 = sub_24F91F6B8();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);

  v29 = swift_allocObject();
  v71 = *a17;
  v70 = a17[1];
  v69 = a17[2];
  v68 = a17[3];
  v67 = a17[4];
  v66 = a17[5];
  v65 = a17[6];
  v30 = *a19;
  v75 = a19[1];
  v76 = v30;
  v31 = *(a19 + 16);
  v32 = v63;
  v33 = *a20;
  v34 = a24[1];
  v92 = *a24;
  v93 = v34;
  *v94 = a24[2];
  *&v94[10] = *(a24 + 42);
  v35 = a25[1];
  v95 = *a25;
  v36 = a25[2];
  v96 = v35;
  *v97 = v36;
  *&v97[10] = *(a25 + 42);
  v37 = *v64;
  v38 = v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_originalModel;
  *v38 = 0u;
  *(v38 + 16) = 0u;
  v39 = v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_id;
  *(v38 + 32) = 0;
  sub_24E60169C(v32, &v89, &qword_27F235830);
  if (*(&v90 + 1))
  {
    v40 = v90;
    *v39 = v89;
    *(v39 + 16) = v40;
    *(v39 + 32) = v91;
  }

  else
  {
    sub_24F91F6A8();
    v41 = v31;
    v42 = sub_24F91F668();
    v43 = v33;
    v45 = v44;
    (*(v61 + 8))(v28, v62);
    v87 = v42;
    v31 = v41;
    v88 = v45;
    v33 = v43;
    sub_24F92C7F8();
    sub_24E601704(&v89, &qword_27F235830);
  }

  sub_24E601704(v32, &qword_27F235830);
  sub_24E6009C8(v72, v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_impressionMetrics, &qword_27F213E68);
  *(v29 + 16) = v78;
  *(v29 + 24) = v77;
  v46 = v80;
  *(v29 + 32) = v79;
  *(v29 + 40) = v46;
  v47 = v74;
  *(v29 + 48) = v81;
  *(v29 + 56) = v47;
  *(v29 + 64) = 0;
  *(v29 + 72) = 0;
  v48 = OBJC_IVAR____TtC12GameStoreKit5Brick_caption;
  v49 = sub_24F91F008();
  v50 = *(*(v49 - 8) + 56);
  v50(v29 + v48, 1, 1, v49);
  v50(v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_title, 1, 1, v49);
  v50(v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_subtitle, 1, 1, v49);
  *(v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_collectionIcons) = v82;
  v51 = (v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions);
  *v51 = v71;
  v51[1] = v70;
  v51[2] = v69;
  v51[3] = v68;
  v51[4] = v67;
  v51[5] = v66;
  v51[6] = v65;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_clickAction) = v83;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_personalizationStyle) = v33;
  swift_beginAccess();
  sub_24E951B7C(v84, v38);
  swift_endAccess();
  v52 = v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground;
  v53 = v75;
  *v52 = v76;
  *(v52 + 16) = v53;
  *(v52 + 32) = v31;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_flowPreviewActionsConfiguration) = v85;
  v54 = (v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_artworkSafeArea);
  v55 = v93;
  *v54 = v92;
  v54[1] = v55;
  v54[2] = *v94;
  *(v54 + 42) = *&v94[10];
  v56 = (v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_textSafeArea);
  v57 = v96;
  v58 = *v97;
  *v56 = v95;
  v56[1] = v57;
  v56[2] = v58;
  *(v56 + 42) = *&v97[10];
  *(v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_backgroundColor) = v86;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit5Brick_placementStyle) = v37;
  return v29;
}

uint64_t Brick.init(id:isMediaDark:isRTLMediaDark:artworks:rtlArtwork:accessibilityLabel:shortEditorialDescription:caption:title:subtitle:collectionIcons:editorialDisplayOptions:clickAction:shelfBackground:personalizationStyle:originalModel:flowPreviewActionsConfiguration:impressionMetrics:artworkSafeArea:textSafeArea:backgroundColor:placementStyle:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 *a17, uint64_t a18, __int128 *a19, char *a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 *a24, __int128 *a25, uint64_t a26, char *a27)
{
  v28 = v27;
  v77 = a8;
  v76 = a7;
  v75 = a6;
  v63 = a5;
  v74 = a4;
  v73 = a2;
  v62 = a1;
  v83 = a22;
  v82 = a21;
  v72 = a9;
  v61 = a27;
  v84 = a26;
  v64 = a23;
  v81 = a18;
  v80 = a16;
  v60 = sub_24F91F6B8();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);

  v71 = *a17;
  v70 = a17[1];
  v69 = a17[2];
  v68 = a17[3];
  v67 = a17[4];
  v66 = a17[5];
  v65 = a17[6];
  v31 = *a19;
  v78 = a19[1];
  v79 = v31;
  v32 = *(a19 + 16);
  v33 = *a20;
  v34 = v62;
  v35 = a24[1];
  v93 = *a24;
  v94 = v35;
  *v95 = a24[2];
  *&v95[10] = *(a24 + 42);
  v36 = a25[1];
  v96 = *a25;
  v97 = v36;
  *v98 = a25[2];
  *&v98[10] = *(a25 + 42);
  v37 = *v61;
  v38 = v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_originalModel;
  *v38 = 0u;
  *(v38 + 16) = 0u;
  *(v38 + 32) = 0;
  sub_24E60169C(v34, &v87, &qword_27F235830);
  if (*(&v88 + 1))
  {
    v90 = v87;
    v91 = v88;
    v92 = v89;
  }

  else
  {
    sub_24F91F6A8();
    v39 = v32;
    v40 = sub_24F91F668();
    v41 = v33;
    v43 = v42;
    (*(v59 + 8))(v30, v60);
    v85 = v40;
    v32 = v39;
    v86 = v43;
    v33 = v41;
    sub_24F92C7F8();
    sub_24E601704(&v87, &qword_27F235830);
  }

  sub_24E601704(v34, &qword_27F235830);
  v44 = v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_id;
  v45 = v91;
  *v44 = v90;
  *(v44 + 16) = v45;
  *(v44 + 32) = v92;
  sub_24E6009C8(v64, v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_impressionMetrics, &qword_27F213E68);
  *(v28 + 16) = v74;
  *(v28 + 24) = v73;
  v46 = v76;
  *(v28 + 32) = v75;
  *(v28 + 40) = v46;
  v47 = v72;
  *(v28 + 48) = v77;
  *(v28 + 56) = v47;
  *(v28 + 64) = 0;
  *(v28 + 72) = 0;
  v48 = OBJC_IVAR____TtC12GameStoreKit5Brick_caption;
  v49 = sub_24F91F008();
  v50 = *(*(v49 - 8) + 56);
  v50(v28 + v48, 1, 1, v49);
  v50(v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_title, 1, 1, v49);
  v50(v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_subtitle, 1, 1, v49);
  *(v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_collectionIcons) = v80;
  v51 = (v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions);
  *v51 = v71;
  v51[1] = v70;
  v51[2] = v69;
  v51[3] = v68;
  v51[4] = v67;
  v51[5] = v66;
  v51[6] = v65;
  *(v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_clickAction) = v81;
  *(v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_personalizationStyle) = v33;
  swift_beginAccess();
  sub_24E951B7C(v82, v38);
  swift_endAccess();
  v52 = v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground;
  v53 = v78;
  *v52 = v79;
  *(v52 + 16) = v53;
  *(v52 + 32) = v32;
  *(v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_flowPreviewActionsConfiguration) = v83;
  v54 = (v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_artworkSafeArea);
  v55 = v94;
  *v54 = v93;
  v54[1] = v55;
  v54[2] = *v95;
  *(v54 + 42) = *&v95[10];
  v56 = (v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_textSafeArea);
  v57 = v97;
  *v56 = v96;
  v56[1] = v57;
  v56[2] = *v98;
  *(v56 + 42) = *&v98[10];
  *(v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_backgroundColor) = v84;
  *(v28 + OBJC_IVAR____TtC12GameStoreKit5Brick_placementStyle) = v37;
  return v28;
}

uint64_t Brick.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Brick.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t Brick.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v173 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v4 - 8);
  v166 = v156 - v5;
  v6 = sub_24F92AC28();
  v167 = *(v6 - 8);
  v168 = v6;
  MEMORY[0x28223BE20](v6);
  v157 = v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v158 = v156 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v163 = v156 - v14;
  MEMORY[0x28223BE20](v15);
  v170 = (v156 - v16);
  v181 = sub_24F9285B8();
  v172 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v180 = v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v174 = v156 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v20 - 8);
  v171 = v156 - v21;
  v22 = sub_24F91F6B8();
  v178 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_24F928388();
  v25 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v164 = v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v162 = v156 - v28;
  MEMORY[0x28223BE20](v29);
  v161 = v156 - v30;
  MEMORY[0x28223BE20](v31);
  v169 = v156 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = v156 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = v156 - v37;
  v182 = v2;
  v39 = v2 + OBJC_IVAR____TtC12GameStoreKit5Brick_originalModel;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  *(v39 + 32) = 0;
  v211 = a1;
  sub_24F928398();
  v40 = sub_24F928348();
  v165 = v12;
  if (v41)
  {
    *&v203 = v40;
    *(&v203 + 1) = v41;
  }

  else
  {
    sub_24F91F6A8();
    v43 = sub_24F91F668();
    v45 = v44;
    v178[1](v24, v22);
    *&v203 = v43;
    *(&v203 + 1) = v45;
  }

  sub_24F92C7F8();
  v42 = *(v25 + 8);
  v177 = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v178 = v42;
  (v42)(v38, v179);
  v46 = v182 + OBJC_IVAR____TtC12GameStoreKit5Brick_id;
  v47 = v182;
  v48 = v209;
  *v46 = v208;
  *(v46 + 16) = v48;
  *(v46 + 32) = v210;
  sub_24F929608();
  sub_24F928398();
  v49 = v173;
  v50 = v172 + 16;
  v176 = *(v172 + 16);
  v51 = v174;
  v176(v174, v173, v181);
  v52 = v171;
  sub_24F929548();
  sub_24E6009C8(v52, v47 + OBJC_IVAR____TtC12GameStoreKit5Brick_impressionMetrics, &qword_27F213E68);
  v53 = v180;
  v54 = v181;
  v55 = v49;
  v56 = v176;
  v175 = v50;
  v176(v180, v55, v181);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219650);
  sub_24F928398();
  v56(v51, v53, v54);
  sub_24E705AFC();
  sub_24F929548();
  v57 = v182;
  *(v182 + 16) = v203;
  sub_24F928398();
  v58 = sub_24F928278();
  v59 = v179;
  (v178)(v35, v179);
  *(v57 + 24) = v58;
  sub_24F928398();
  v60 = sub_24F928348();
  v62 = v61;
  v63 = v178;
  (v178)(v35, v59);
  *(v57 + 32) = v60;
  *(v57 + 40) = v62;
  sub_24F928398();
  v64 = sub_24F928348();
  v66 = v65;
  (v63)(v35, v59);
  *(v57 + 48) = v64;
  *(v57 + 56) = v66;
  v67 = type metadata accessor for Artwork();
  sub_24F928398();
  v176(v174, v180, v181);
  v156[1] = sub_24E952434(&qword_27F219660, type metadata accessor for Artwork);
  v156[2] = v67;
  sub_24F929548();
  *(v57 + 64) = v203;
  sub_24F928398();
  LOBYTE(v64) = sub_24F928278();
  v171 = v35;
  v68 = v178;
  (v178)(v35, v59);
  *(v57 + 72) = v64;
  v69 = v169;
  sub_24F928398();
  v70 = sub_24F928348();
  v72 = v71;
  (v68)(v69, v59);
  v73 = v68;
  v160 = objc_opt_self();
  v74 = [v160 systemFontOfSize_];
  v75 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
  v76 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
  v77 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

  *&v203 = 10;
  *(&v203 + 1) = 0xE100000000000000;
  *&v204 = v74;
  *(&v204 + 1) = v75;
  *&v205 = 161644770;
  *(&v205 + 1) = 0xA400000000000000;
  *&v206 = v76;
  *(&v206 + 1) = 606245;
  *&v207 = 0xE300000000000000;
  *(&v207 + 1) = v77;
  if (v72)
  {
    v200 = v205;
    v201 = v206;
    v202 = v207;
    v198 = v203;
    v199 = v204;
    v78 = objc_allocWithZone(type metadata accessor for NqmlAttributedStringGenerator());
    v79 = sub_24ECB3C7C(v70, v72, &v198);
    v80 = v170;
    sub_24ECB3F40(v170);

    v81 = 0;
  }

  else
  {
    sub_24E951D6C(&v203);
    v81 = 1;
    v80 = v170;
  }

  v82 = sub_24F91F008();
  v83 = *(v82 - 8);
  v84 = *(v83 + 56);
  v169 = (v83 + 56);
  v170 = v84;
  (v84)(v80, v81, 1, v82);
  sub_24E6009C8(v80, v182 + OBJC_IVAR____TtC12GameStoreKit5Brick_caption, &qword_27F215340);
  v85 = v161;
  sub_24F928398();
  v159 = sub_24F928348();
  v87 = v86;
  (v73)(v85, v179);
  v88 = v160;
  v89 = [v160 systemFontOfSize_];
  v90 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
  v91 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
  v92 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

  *&v198 = 10;
  *(&v198 + 1) = 0xE100000000000000;
  *&v199 = v89;
  *(&v199 + 1) = v90;
  *&v200 = 161644770;
  *(&v200 + 1) = 0xA400000000000000;
  *&v201 = v91;
  *(&v201 + 1) = 606245;
  *&v202 = 0xE300000000000000;
  *(&v202 + 1) = v92;
  if (v87)
  {
    v195 = v200;
    v196 = v201;
    v197 = v202;
    v193 = v198;
    v194 = v199;
    v93 = objc_allocWithZone(type metadata accessor for NqmlAttributedStringGenerator());
    v94 = sub_24ECB3C7C(v159, v87, &v193);
    v95 = v163;
    sub_24ECB3F40(v163);

    v96 = 0;
  }

  else
  {
    sub_24E951D6C(&v198);
    v96 = 1;
    v95 = v163;
  }

  (v170)(v95, v96, 1, v82);
  sub_24E6009C8(v95, v182 + OBJC_IVAR____TtC12GameStoreKit5Brick_title, &qword_27F215340);
  v97 = v162;
  sub_24F928398();
  v163 = sub_24F928348();
  v99 = v98;
  (v73)(v97, v179);
  v100 = [v88 systemFontOfSize_];
  v101 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
  v102 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
  v103 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

  *&v193 = 10;
  *(&v193 + 1) = 0xE100000000000000;
  *&v194 = v100;
  *(&v194 + 1) = v101;
  *&v195 = 161644770;
  *(&v195 + 1) = 0xA400000000000000;
  *&v196 = v102;
  *(&v196 + 1) = 606245;
  *&v197 = 0xE300000000000000;
  *(&v197 + 1) = v103;
  if (v99)
  {
    v185[0] = v195;
    v185[1] = v196;
    v185[2] = v197;
    v183 = v193;
    v184 = v194;
    v104 = objc_allocWithZone(type metadata accessor for NqmlAttributedStringGenerator());
    v105 = sub_24ECB3C7C(v163, v99, &v183);
    v106 = v165;
    sub_24ECB3F40(v165);

    v107 = 0;
    v108 = v181;
    v109 = v174;
    v110 = v167;
  }

  else
  {
    sub_24E951D6C(&v193);
    v107 = 1;
    v108 = v181;
    v109 = v174;
    v110 = v167;
    v106 = v165;
  }

  (v170)(v106, v107, 1, v82);
  sub_24E6009C8(v106, v182 + OBJC_IVAR____TtC12GameStoreKit5Brick_subtitle, &qword_27F215340);
  v111 = v164;
  sub_24F928398();
  v112 = v166;
  sub_24F9282B8();
  v113 = v112;
  (v178)(v111, v179);
  v114 = v168;
  v115 = (*(v110 + 48))(v112, 1, v168);
  v116 = v176;
  if (v115 == 1)
  {
    sub_24E601704(v113, &qword_27F2213B0);
    v117 = 0;
    v118 = v180;
  }

  else
  {
    v119 = v158;
    (*(v110 + 32))(v158, v113, v114);
    (*(v110 + 16))(v157, v119, v114);
    v118 = v180;
    v176(v109, v180, v108);
    v117 = sub_24F92B6A8();
    v116 = v176;
    (*(v110 + 8))(v119, v114);
  }

  *(v182 + OBJC_IVAR____TtC12GameStoreKit5Brick_collectionIcons) = v117;
  sub_24F928398();
  v116(v109, v118, v108);
  sub_24E951DC0();
  sub_24F929548();
  v120 = v190 | ((v191 | (v192 << 16)) << 32);
  if (v190 == 2)
  {
    if (qword_27F2110F8 != -1)
    {
      swift_once();
    }

    LOBYTE(v120) = dword_27F23E728;
    LOBYTE(v121) = BYTE1(dword_27F23E728);
    LOBYTE(v122) = BYTE2(dword_27F23E728);
    LOBYTE(v123) = HIBYTE(dword_27F23E728);
    LOBYTE(v124) = byte_27F23E72C;
    LOBYTE(v125) = byte_27F23E72D;
    LOBYTE(v126) = byte_27F23E72E;
  }

  else
  {
    v121 = (v120 >> 8) & 1;
    v122 = (v120 >> 16) & 1;
    v123 = (v120 >> 24) & 1;
    v124 = HIDWORD(v120) & 1;
    v125 = (v120 >> 40) & 1;
    v126 = HIWORD(v120) & 1;
  }

  v127 = v182;
  v128 = (v182 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions);
  *v128 = v120 & 1;
  v128[1] = v121;
  v128[2] = v122;
  v128[3] = v123;
  v128[4] = v124;
  v128[5] = v125;
  v128[6] = v126;
  type metadata accessor for Action();
  v129 = v171;
  sub_24F928398();
  v130 = static Action.tryToMakeInstance(byDeserializing:using:)(v129, v180);
  v131 = v178;
  v132 = v179;
  v133 = v177;
  (v178)(v129, v179);
  v177 = v133;
  v178 = v131;
  *(v127 + OBJC_IVAR____TtC12GameStoreKit5Brick_clickAction) = v130;
  sub_24F928398();
  sub_24E951E14();
  sub_24F928208();
  (v131)(v129, v132);
  *(v127 + OBJC_IVAR____TtC12GameStoreKit5Brick_personalizationStyle) = v183;
  sub_24F928398();
  v134 = v180;
  v135 = v176;
  v176(v109, v180, v181);
  sub_24EAFF164(v129, v109, &v183);
  v136 = v185[0];
  v137 = v127 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground;
  v138 = v184;
  *v137 = v183;
  *(v137 + 16) = v138;
  *(v137 + 32) = v136;
  type metadata accessor for FlowPreviewActionsConfiguration();
  sub_24F928398();
  v139 = v134;
  v140 = v181;
  v135(v109, v139, v181);
  sub_24E952434(&qword_27F222748, type metadata accessor for FlowPreviewActionsConfiguration);
  sub_24F929548();
  v141 = v182;
  *(v182 + OBJC_IVAR____TtC12GameStoreKit5Brick_flowPreviewActionsConfiguration) = v183;
  v142 = v211;
  sub_24F928398();
  v143 = v180;
  v176(v109, v180, v140);
  sub_24E951E68();
  sub_24F929548();
  v144 = (v141 + OBJC_IVAR____TtC12GameStoreKit5Brick_artworkSafeArea);
  v145 = v188;
  *v144 = v187;
  v144[1] = v145;
  v144[2] = v189[0];
  *(v144 + 42) = *(v189 + 10);
  sub_24F928398();
  v146 = v143;
  v147 = v181;
  v176(v109, v146, v181);
  sub_24F929548();
  v148 = v141;
  v149 = (v141 + OBJC_IVAR____TtC12GameStoreKit5Brick_textSafeArea);
  v150 = v184;
  *v149 = v183;
  v149[1] = v150;
  v149[2] = v185[0];
  *(v149 + 42) = *(v185 + 10);
  sub_24F928398();
  v151 = JSONObject.appStoreColor.getter();
  v152 = v178;
  v153 = v179;
  (v178)(v129, v179);
  *(v148 + OBJC_IVAR____TtC12GameStoreKit5Brick_backgroundColor) = v151;
  sub_24F928398();
  sub_24E951EBC();
  sub_24F928208();
  v154 = *(v172 + 8);
  v154(v173, v147);
  (v152)(v142, v153);
  (v152)(v129, v153);
  v154(v180, v147);
  result = v182;
  *(v182 + OBJC_IVAR____TtC12GameStoreKit5Brick_placementStyle) = v186;
  return result;
}

uint64_t Brick.accessibilityLabel.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Brick.shortEditorialDescription.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void Brick.editorialDisplayOptions.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions + 1);
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions + 2);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions + 3);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions + 4);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions + 5);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions + 6);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

uint64_t Brick.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t Brick.originalModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit5Brick_originalModel;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F222730);
}

uint64_t Brick.originalModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit5Brick_originalModel;
  swift_beginAccess();
  sub_24E951B7C(a1, v1 + v3);
  return swift_endAccess();
}

id Brick.shelfBackground.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 32);
  *(a1 + 32) = v8;
  return sub_24E951F10(v4, v5, v6, v7, v8);
}

__n128 Brick.shelfBackground.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v9;
  v10 = *(v4 + 32);
  *(v4 + 32) = v3;
  sub_24E951FEC(v5, v6, v7, v8, v10);
  return result;
}

uint64_t Brick.brickTitle.getter()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

__n128 Brick.artworkSafeArea.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_artworkSafeArea;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_artworkSafeArea + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_artworkSafeArea);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

__n128 Brick.textSafeArea.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_textSafeArea;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_textSafeArea + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_textSafeArea);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

void *Brick.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_backgroundColor);
  v2 = v1;
  return v1;
}

uint64_t Brick.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_caption, &qword_27F215340);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_title, &qword_27F215340);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_subtitle, &qword_27F215340);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_originalModel, &qword_27F222730);
  sub_24E951FEC(*(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground), *(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground + 32));

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_id);

  return v0;
}

uint64_t Brick.__deallocating_deinit()
{
  Brick.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24E951620()
{
  if (*(*v0 + 56))
  {
    v1 = *(*v0 + 48);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

__n128 sub_24E951668@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_artworkSafeArea;
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

__n128 sub_24E951694@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_textSafeArea;
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_24E9516D8@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_clickAction);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_24E952434(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t sub_24E951780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = Brick.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24E9517E8()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
    result = sub_24F92C738();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x253052270](0, v1);
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_24E951880@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  a2[3] = a1;
  *a2 = v3;
}

uint64_t sub_24E9518AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit5Brick_originalModel;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a1, &qword_27F222730);
}

id sub_24E951918@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 32);
  *(a1 + 32) = v8;
  return sub_24E951F10(v4, v5, v6, v7, v8);
}

void sub_24E951994(_BYTE *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  LOBYTE(v2) = v2[6];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v2;
}

void *sub_24E9519F4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_backgroundColor);
  v2 = v1;
  return v1;
}

uint64_t (*sub_24E951A7C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x253052270](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_24E95247C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_24E951AFC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x253052270](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_24E952480;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E951B7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222730);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_24E951BEC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x253052270](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_24E951C6C;
  }

  __break(1u);
  return result;
}

void (*sub_24E951C74(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x253052270](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_24E951CF4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_24E951CFC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    *result = *(a3 + 8 * a2 + 32);

    return sub_24E951D64;
  }

  __break(1u);
  return result;
}

unint64_t sub_24E951DC0()
{
  result = qword_27F222738;
  if (!qword_27F222738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222738);
  }

  return result;
}

unint64_t sub_24E951E14()
{
  result = qword_27F222740;
  if (!qword_27F222740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222740);
  }

  return result;
}

unint64_t sub_24E951E68()
{
  result = qword_27F222750;
  if (!qword_27F222750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222750);
  }

  return result;
}

unint64_t sub_24E951EBC()
{
  result = qword_27F222758;
  if (!qword_27F222758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222758);
  }

  return result;
}

id sub_24E951F10(id result, void *a2, void *a3, void *a4, unsigned __int16 a5)
{
  v5 = a5 >> 13;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
    }

    else if (v5 == 3)
    {
      return sub_24E951F4C(result, a2, a3, a4, a5);
    }
  }

  else if (a5 >> 13)
  {
    if (v5 == 1)
    {
      return result;
    }
  }

  else
  {
  }

  return result;
}

id sub_24E951F4C(id result, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 3)
    {
      v8 = result;
      result = a2;
      a2 = a3;
      a3 = a4;
    }

    else if (a5 != 2)
    {
      return result;
    }

    v9 = result;
    result = a2;
    a2 = a3;
    goto LABEL_10;
  }

  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }

LABEL_10:
    v10 = result;
    result = a2;
  }

  return result;
}

void sub_24E951FEC(id a1, void *a2, void *a3, void *a4, unsigned __int16 a5)
{
  v5 = a5 >> 13;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
    }

    else if (v5 == 3)
    {
      sub_24E952028(a1, a2, a3, a4, a5);
    }
  }

  else if (a5 >> 13)
  {
    if (v5 == 1)
    {
    }
  }

  else
  {
  }
}

void sub_24E952028(void *a1, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      a4 = a3;
    }

    else
    {
      if (a5 != 3)
      {
        return;
      }

      a1 = a2;
      a2 = a3;
    }

    a1 = a2;
    a2 = a4;
    goto LABEL_11;
  }

  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

LABEL_11:

    a1 = a2;
  }
}

uint64_t type metadata accessor for Brick()
{
  result = qword_27F222770;
  if (!qword_27F222770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E952160(uint64_t a1)
{
  result = sub_24E952434(&qword_27F222768, type metadata accessor for Brick);
  *(a1 + 8) = result;
  return result;
}

void sub_24E9521C0()
{
  sub_24E9523E0(319, &qword_27F215338, MEMORY[0x277CC8C40]);
  if (v0 <= 0x3F)
  {
    sub_24E9523E0(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24E9523E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24E952434(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_12GameStoreKit35AMSEngagementRequestPerformingErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E9524A8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E952504(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_24E952560(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t ExternalLinkLayout.init(metrics:descriptionTextView:summaryTextView:disclosureIndicatorView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_24E952688(a1, (a5 + 15));
  sub_24E615E00(a2, a5);
  sub_24E615E00(a3, (a5 + 5));
  sub_24E615E00(a4, (a5 + 10));
  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(a5 + 5, a5[8]);
  sub_24F922478();
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);

  return sub_24E9526C0(a1);
}

uint64_t ExternalLinkLayout.Metrics.init(horizontalMargin:descriptionTopSpace:descriptionMaxLines:summaryBottomSpace:summaryMaxLines:disclosureIndicatorMargin:disclosureIndicatorSize:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  sub_24E612E28(a1, a7);
  sub_24E612E28(a2, a7 + 40);
  *(a7 + 80) = a3;
  sub_24E612E28(a4, a7 + 88);
  *(a7 + 128) = a5;
  result = sub_24E612E28(a6, a7 + 136);
  *(a7 + 176) = a8;
  *(a7 + 184) = a9;
  return result;
}

double ExternalLinkLayout.measurements(fitting:in:)(double a1)
{
  v2 = v1;
  v10 = a1;
  v3 = sub_24F92CDB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v1 + 15, v1[18]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v7 = *(v4 + 8);
  v7(v6, v3);
  __swift_project_boxed_opaque_existential_1(v2 + 15, v2[18]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v7(v6, v3);
  __swift_project_boxed_opaque_existential_1(v2 + 32, v2[35]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v7(v6, v3);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v2 + 20, v2[23]);
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v2 + 26, v2[29]);
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v2 + 26, v2[29]);
  sub_24F922398();
  return v10;
}

uint64_t ExternalLinkLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_24F92CDB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57.origin.x = a1;
  v57.origin.y = a2;
  v57.size.width = a3;
  v47 = a3;
  v57.size.height = a4;
  CGRectGetWidth(v57);
  __swift_project_boxed_opaque_existential_1(v4 + 15, v4[18]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v14 = *(v11 + 8);
  v14(v13, v10);
  __swift_project_boxed_opaque_existential_1(v5 + 15, v5[18]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v14(v13, v10);
  v55 = v4[37];
  __swift_project_boxed_opaque_existential_1(v5 + 32, v5[35]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v14(v13, v10);
  v58.origin.x = a1;
  v56 = a2;
  v58.origin.y = a2;
  v58.size.width = a3;
  v58.size.height = a4;
  CGRectGetHeight(v58);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24F922288();
  v16 = v15;
  v18 = v17;
  v48 = v19;
  v46 = v20;
  __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
  sub_24F922288();
  v51 = v22;
  v52 = v21;
  v53 = v24;
  v54 = v23;
  v59.origin.x = a1;
  v49 = a1;
  v59.origin.y = a2;
  v25 = v47;
  v59.size.width = v47;
  v59.size.height = a4;
  v26 = a4;
  MinY = CGRectGetMinY(v59);
  __swift_project_boxed_opaque_existential_1(v5 + 20, v5[23]);
  v28 = v46;
  sub_24F9223C8();
  v30 = MinY + v29;
  __swift_project_boxed_opaque_existential_1(v5 + 15, v5[18]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v32 = v31;
  v14(v13, v10);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v50 = v26;
  sub_24F92C1D8();
  sub_24F922228();
  v60.origin.x = v32;
  v60.origin.y = v30;
  v60.size.width = v16;
  v60.size.height = v18;
  MaxY = CGRectGetMaxY(v60);
  __swift_project_boxed_opaque_existential_1(v5 + 26, v5[29]);
  sub_24F9223C8();
  v35 = MaxY + v34 - v28;
  __swift_project_boxed_opaque_existential_1(v5 + 15, v5[18]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v37 = v36;
  v14(v13, v10);
  __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
  v38 = v49;
  v39 = v56;
  v41 = v51;
  v40 = v52;
  sub_24F92C1D8();
  sub_24F922228();
  v61.origin.x = v37;
  v61.origin.y = v35;
  v61.size.width = v40;
  v61.size.height = v41;
  v42 = CGRectGetMaxY(v61);
  __swift_project_boxed_opaque_existential_1(v5 + 26, v5[29]);
  sub_24F922398();
  v44 = v42 + v43;
  v62.origin.x = v38;
  v62.origin.y = v39;
  v62.size.width = v25;
  v62.size.height = v44;
  CGRectGetMaxX(v62);
  __swift_project_boxed_opaque_existential_1(v5 + 15, v5[18]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v14(v13, v10);
  v63.origin.x = v38;
  v63.origin.y = v39;
  v63.size.width = v25;
  v63.size.height = v44;
  CGRectGetMidY(v63);
  __swift_project_boxed_opaque_existential_1(v5 + 10, v5[13]);
  sub_24F92C1D8();
  sub_24F922228();
  return sub_24F922128();
}

uint64_t sub_24E953228(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E953270(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_24E953344(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E95338C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24E95340C()
{
  word_27F222780 = 5;
  qword_27F222788 = 0;
  unk_27F222790 = 0;
}

int8x16_t OfferButtonPresenterViewTheme.init(style:environment:tint:)@<Q0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, int8x16_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  if (v5 == 16)
  {
    LOBYTE(v5) = 0;
  }

  *a4 = v4;
  v6 = *a3;
  v7 = vdup_n_s32(a3->i64[0] == 3);
  *(a4 + 1) = v5;
  v8.i64[0] = v7.u32[0];
  v8.i64[1] = v7.u32[1];
  result = vandq_s8(v6, vcgezq_s64(vshlq_n_s64(v8, 0x3FuLL)));
  *(a4 + 8) = result;
  return result;
}

id static OfferButtonPresenterViewTheme.disabled.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210000 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_27F222788;
  v3 = unk_27F222790;
  *a1 = word_27F222780;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return sub_24E9534EC(v2, v3);
}

id sub_24E9534EC(id result, void *a2)
{
  if (result >= 3)
  {
    v3 = result;

    return a2;
  }

  return result;
}

void sub_24E953530()
{
  word_27F222798 = 2;
  qword_27F2227A0 = 0;
  unk_27F2227A8 = 0;
}

id static OfferButtonPresenterViewTheme.blueColored.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210008 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_27F2227A0;
  v3 = unk_27F2227A8;
  *a1 = word_27F222798;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return sub_24E9534EC(v2, v3);
}

id OfferButtonPresenterViewTheme.tint.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_24E9534EC(v2, v3);
}

id OfferButtonPresenterViewTheme.replacing(style:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 1);
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  *a2 = v3;
  *(a2 + 1) = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return sub_24E9534EC(v5, v6);
}

uint64_t static OfferButtonSubtitlePosition.positionWithLayoutDirection(_:whenUsing:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  if (v3 == 3)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 == 2)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  if (result == 1)
  {
    LOBYTE(v3) = v5;
  }

  *a3 = v3;
  return result;
}

uint64_t static OfferButtonSubtitlePosition.alignment(whenUsing:in:)(char *a1, id a2)
{
  v2 = *a1;
  v3 = [a2 traitCollection];
  v4 = [v3 layoutDirection];

  v5 = &unk_24F96AF08;
  if (v4 == 1)
  {
    v5 = &unk_24F96AEE8;
  }

  return v5[v2];
}

GameStoreKit::OfferButtonSubtitlePosition_optional __swiftcall OfferButtonSubtitlePosition.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24E9536D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, uint8x8_t a3@<D0>)
{
  v3 = *(result + 4);
  v4 = *(result + 5);
  if (v3 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v3 == 3;
  }

  a3.i32[0] = *result;
  v6 = vmovl_u8(a3).u64[0];
  v7 = vceq_s16(v6, 0x3000300030003);
  v8 = vceq_s16(v6, 0x2000200020002);
  v9 = vsub_s16(vand_s8(v8, 0x2000200020002), vbic_s8(v7, v8));
  *a2 = vuzp1_s8(v9, v9).u32[0];
  if (v4 == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v4 == 3;
  }

  *(a2 + 4) = v5;
  *(a2 + 5) = v10;
  return result;
}

GameStoreKit::OfferButtonPresenterViewAlignment_optional __swiftcall OfferButtonPresenterViewAlignment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_24E953758()
{
  result = qword_27F2227B0;
  if (!qword_27F2227B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2227B0);
  }

  return result;
}

unint64_t sub_24E9537B0()
{
  result = qword_27F2227B8;
  if (!qword_27F2227B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2227B8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit9OfferTintO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24E95381C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24E95387C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_24E953AD0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135D8);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_24E643A9C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_24E612B0C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_24E612B0C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_24E612B0C(v31, v32);
    result = sub_24F92C7B8();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_24E612B0C(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24E953D98(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135D8);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_24E612B0C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_24E612B0C(v29, v30);
    result = sub_24F92C7B8();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_24E612B0C(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24E954078(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135D8);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F24E870);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_24E612B0C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_24E612B0C(v29, v30);
    result = sub_24F92C7B8();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_24E612B0C(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24E954344(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C8);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = *(*(a1 + 56) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));

    swift_dynamicCast();
    result = sub_24F92C7B8();
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v16);
        if (v20 != -1)
        {
          v10 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v21;
    *(v11 + 16) = v22;
    *(v11 + 32) = v23;
    *(*(v2 + 56) + 8 * v10) = v13;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24E9545A4(uint64_t a1)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2227D0);
  MEMORY[0x28223BE20](v61);
  v60 = &v50 - v2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213100);
  MEMORY[0x28223BE20](v59);
  v58 = (&v50 - v3);
  v4 = sub_24F91F4A8();
  v62 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2227D8);
  MEMORY[0x28223BE20](v56);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = &v50 - v9;
  v63 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213108);
    v10 = sub_24F92CB58();
  }

  else
  {
    v10 = MEMORY[0x277D84F98];
  }

  v11 = v63 + 64;
  v12 = 1 << *(v63 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v63 + 64);
  v15 = (v12 + 63) >> 6;
  v52 = v62 + 16;
  v65 = v62 + 32;
  v16 = v10 + 64;

  v18 = 0;
  v53 = v10;
  v50 = v15;
  v51 = v11;
  v57 = v6;
  while (v14)
  {
LABEL_15:
    v22 = __clz(__rbit64(v14)) | (v18 << 6);
    v23 = v62;
    v24 = *(v63 + 56);
    v25 = (*(v63 + 48) + 16 * v22);
    v27 = *v25;
    v26 = v25[1];
    v64 = *(v62 + 72);
    v28 = v56;
    v29 = v54;
    (*(v62 + 16))(&v54[*(v56 + 48)], v24 + v64 * v22, v4);
    *v29 = v27;
    v29[1] = v26;
    v30 = v55;
    sub_24E955E44(v29, v55);
    v31 = v4;
    v32 = *(v28 + 48);
    v33 = *(v61 + 48);
    v34 = *(v30 + 1);
    *&v66 = *v30;
    *(&v66 + 1) = v34;

    v35 = v60;
    swift_dynamicCast();
    v36 = *(v23 + 32);
    v36(&v35[v33], &v30[v32], v31);
    v37 = v58;
    v38 = *(v59 + 48);
    v39 = *(v35 + 1);
    *v58 = *v35;
    v37[1] = v39;
    *(v37 + 4) = *(v35 + 4);
    v36(v37 + v38, &v35[v33], v31);
    v40 = v37[1];
    v66 = *v37;
    v67 = v40;
    v68 = *(v37 + 4);
    v41 = v37 + v38;
    v4 = v31;
    v42 = v57;
    v36(v57, v41, v31);
    v10 = v53;
    result = sub_24F92C7B8();
    v43 = -1 << *(v10 + 32);
    v44 = result & ~v43;
    v45 = v44 >> 6;
    if (((-1 << v44) & ~*(v16 + 8 * (v44 >> 6))) == 0)
    {
      v46 = 0;
      v47 = (63 - v43) >> 6;
      while (++v45 != v47 || (v46 & 1) == 0)
      {
        v48 = v45 == v47;
        if (v45 == v47)
        {
          v45 = 0;
        }

        v46 |= v48;
        v49 = *(v16 + 8 * v45);
        if (v49 != -1)
        {
          v19 = __clz(__rbit64(~v49)) + (v45 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v19 = __clz(__rbit64((-1 << v44) & ~*(v16 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v14 &= v14 - 1;
    *(v16 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v20 = *(v10 + 48) + 40 * v19;
    *v20 = v66;
    *(v20 + 16) = v67;
    *(v20 + 32) = v68;
    result = (v36)(*(v10 + 56) + v19 * v64, v42, v4);
    ++*(v10 + 16);
    v15 = v50;
    v11 = v51;
  }

  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v15)
    {

      return v10;
    }

    v14 = *(v11 + 8 * v21);
    ++v18;
    if (v14)
    {
      v18 = v21;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24E954AC4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135D8);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_24E612B0C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_24E612B0C(v29, v30);
    result = sub_24F92C7B8();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_24E612B0C(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_24E954D7C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135B8);
    v3 = sub_24F92CB58();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

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

      return v3;
    }

    v6 = *(a1 + 64 + 8 * v13);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v15 = (*(a1 + 48) + ((v13 << 10) | (16 * v14)));
        v17 = *v15;
        v16 = v15[1];

        swift_dynamicCast();
        sub_24E612B0C(&v24, v26);
        sub_24E612B0C(v26, v27);
        sub_24E612B0C(v27, &v25);
        result = a2(v17, v16);
        if (v18)
        {
          v10 = (v3[6] + 16 * result);
          *v10 = v17;
          v10[1] = v16;
          v11 = result;

          v12 = (v3[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_24E612B0C(&v25, v12);
          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v3[2] >= v3[3])
          {
            goto LABEL_20;
          }

          *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v3[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          result = sub_24E612B0C(&v25, (v3[7] + 32 * result));
          v20 = v3[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v3[2] = v22;
          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v9;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_24E954FE0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213558);
    v1 = sub_24F92CB58();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v25 = *(*(a1 + 56) + v11);
    v13 = v25;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F2227E0);
    swift_dynamicCast();
    sub_24E612B0C((v26 + 8), v24);
    sub_24E612B0C(v24, v26);
    sub_24F92B0D8();
    sub_24F92D068();
    sub_24F92B218();
    v15 = sub_24F92D0B8();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v6 + 8 * v18);
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_24E612B0C(v26, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_24E955290(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2227C8);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = sub_24E9421D0();
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x277D837D0])
  {
    v23 = v8 >> 6;

    v24 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v28 >= v23)
      {
LABEL_36:

        return v2;
      }

      v7 = *(v4 + 8 * v28);
      ++v24;
      if (v7)
      {
        while (1)
        {
          v29 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v30 = *(*(a1 + 48) + ((v28 << 9) | (8 * v29)));

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
          swift_dynamicCast();
          result = sub_24E76E100(v30);
          if (v31)
          {
            v25 = *(v2 + 48);
            v26 = *(v25 + 8 * result);
            *(v25 + 8 * result) = v30;
            v27 = result;

            *(*(v2 + 56) + 8 * v27) = v33;

            v24 = v28;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v32 = *(v2 + 16);
            if (v32 >= *(v2 + 24))
            {
              goto LABEL_40;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v30;
            *(*(v2 + 56) + 8 * result) = v33;
            *(v2 + 16) = v32 + 1;
            v24 = v28;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v28 = v24;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v15 = *(*(a1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v7)))));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
      swift_dynamicCast();
      result = sub_24F92C3F8();
      v16 = -1 << *(v2 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v13 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v13 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v2 + 48) + 8 * v13) = v15;
      *(*(v2 + 56) + 8 * v13) = v33;
      ++*(v2 + 16);
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v14);
      ++v12;
      if (v7)
      {
        v12 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_24E955658()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CEE498]) init];
  type metadata accessor for UserEngagementManager();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24F96AF30;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *(v1 + 16) = xmmword_24F96AF30;
  result = sub_24E955DF8(v2, v3);
  *(v1 + 32) = v0;
  qword_27F2227C0 = v1;
  return result;
}

uint64_t static UserEngagementManager.shared.getter()
{
  if (qword_27F210010 != -1)
  {
    swift_once();
  }
}

uint64_t UserEngagementManager.defaultTabIdentifier.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  a1[1] = v4;
  return sub_24E9557A0(v3, v4);
}

uint64_t sub_24E9557A0(uint64_t a1, unint64_t a2)
{
  if (a2 != 11)
  {
    return sub_24E8E2880(a1, a2);
  }

  return a1;
}

Swift::Void __swiftcall UserEngagementManager.startDefaultTabRequest()()
{
  v1 = sub_24E6086DC(&unk_2861C0238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90);
  swift_arrayDestroy();
  v2 = *(v0 + 32);
  sub_24E953D98(v1);

  v3 = sub_24F92AE28();

  v4 = [v2 enqueueData_];

  v5 = swift_allocObject();
  swift_weakInit();
  v12 = sub_24E955DD8;
  v13 = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_24E955B00;
  v11 = &block_descriptor_28;
  v6 = _Block_copy(&v8);

  [v4 addSuccessBlock_];
  _Block_release(v6);
  v12 = sub_24E955B08;
  v13 = 0;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_24E955CC4;
  v11 = &block_descriptor_3_0;
  v7 = _Block_copy(&v8);
  [v4 addErrorBlock_];
  _Block_release(v7);
}

id sub_24E9559A8(void *a1)
{
  result = [a1 data];
  if (result)
  {
    v2 = result;
    v3 = sub_24F92AE38();

    v4 = sub_24E9E19FC(v3);

    if (v4)
    {
      if (*(v4 + 16) && (v5 = sub_24E76D644(6447476, 0xE300000000000000), (v6 & 1) != 0))
      {
        v7 = (*(v4 + 56) + 16 * v5);
        v9 = *v7;
        v8 = v7[1];

        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v11 = Strong;
          StoreTab.Identifier.init(rawValue:)(v9, v8, v16);
          v12 = v16[0];
          v13 = v16[1];
          swift_beginAccess();
          v14 = *(v11 + 16);
          v15 = *(v11 + 24);
          *(v11 + 16) = v12;
          *(v11 + 24) = v13;
          sub_24E955DF8(v14, v15);
        }
      }
    }
  }

  return result;
}

uint64_t sub_24E955B08()
{
  if (qword_27F210568 != -1)
  {
    swift_once();
  }

  v0 = sub_24F92AAE8();
  __swift_project_value_buffer(v0, qword_27F39C398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v4[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928458();
  sub_24E857CC8(v4);
  sub_24F92A5A8();
}

void sub_24E955CCC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t UserEngagementManager.deinit()
{
  sub_24E955DF8(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t UserEngagementManager.__deallocating_deinit()
{
  sub_24E955DF8(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_24E955DA0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E955DF8(uint64_t a1, unint64_t a2)
{
  if (a2 != 11)
  {
    return sub_24E8E29C4(a1, a2);
  }

  return a1;
}

uint64_t sub_24E955E44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2227D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E955F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v63 = a2;
  v4 = sub_24F928AE8();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v57 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v56 - v7;
  v9 = sub_24F927E88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  v16 = (a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  v61 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  v62 = a1;
  v17 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
  v18 = qword_27F210FF8;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v9, qword_27F23C300);
  v20 = *(v10 + 16);
  v20(v15, v19, v9);
  v21 = sub_24F92B858();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  v20(v12, v15, v9);
  v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v10 + 32))(v24 + v22, v12, v9);
  v25 = (v24 + v23);
  *v25 = v61;
  v25[1] = v17;
  sub_24F1F2908(0, 0, v8, &unk_24FA0A150, v24);

  sub_24E601704(v8, &unk_27F21B570);
  (*(v10 + 8))(v15, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v26 = sub_24F92A9E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
  sub_24F928FD8();
  v27 = v63;
  sub_24F92A758();
  v28 = v69;
  ObjectType = swift_getObjectType();
  v30 = v16[1];
  v68 = *v16;
  v69 = v30;
  v31 = *(v28 + 56);

  v32 = v31(&v68, ObjectType, v28);
  v34 = v33;

  v35 = swift_getObjectType();
  v36 = v62;
  (*(v34 + 40))(&v68, *(v62 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_includeBetaApps), v35, v34);
  v37 = v74 >> 60;
  if ((v74 >> 60) > 3)
  {
    if (v37 <= 6)
    {
      if (v37 == 4)
      {
        sub_24E959568(v36);
        sub_24E88D2AC(&v68);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v26;
      }

      if (v37 != 5)
      {
        goto LABEL_23;
      }

      sub_24E9591E4(v36, v60);
      v43 = sub_24E69A5C4(0, &qword_27F222300);
      swift_retain_n();
      v44 = sub_24F92BEF8();
      v66 = v43;
      v67 = MEMORY[0x277D225C0];
      v64 = v44;
      goto LABEL_21;
    }

    if (v37 == 7)
    {
      if (*(v36 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest) != 1)
      {
        LOBYTE(v64) = v68 & 1;
        sub_24E959840(v36, &v64, v27, v60);
        v54 = sub_24E69A5C4(0, &qword_27F222300);
        swift_retain_n();
        v55 = sub_24F92BEF8();
        v66 = v54;
        v67 = MEMORY[0x277D225C0];
        v64 = v55;
        goto LABEL_21;
      }
    }

    else
    {
      if (v37 != 8)
      {
        goto LABEL_23;
      }

      v45 = (*(&v68 + 1) << 8) | ((*(&v68 + 5) | (HIBYTE(v68) << 16)) << 40) | v68;
      v46 = v73 | v75 | v72;
      if ((v74 != 0x8000000000000000 || v46 | v71 | v70 | v69 | v45) && (v74 != 0x8000000000000000 || v45 != 4 || v46 | v71 | v70 | v69))
      {
        goto LABEL_23;
      }
    }

LABEL_20:
    sub_24E956850(v36, v32, v34, v27, v60);
    v47 = sub_24E69A5C4(0, &qword_27F222300);
    swift_retain_n();
    v48 = sub_24F92BEF8();
    v66 = v47;
    v67 = MEMORY[0x277D225C0];
    v64 = v48;
LABEL_21:
    sub_24F92A958();

    sub_24E88D2AC(&v68);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  if ((v37 - 2) < 2)
  {
    goto LABEL_20;
  }

  if (v37)
  {
    if (v37 == 1 && (v68 & 1) != 0)
    {
      v38 = v16[1];
      v64 = *v16;
      v65 = v38;
      v39 = *(v28 + 40);

      v39(&v64, ObjectType, v28);

      v41 = v57;
      v40 = v58;
      v42 = v59;
      (*(v58 + 104))(v57, *MEMORY[0x277D21CA8], v59);
      sub_24F92A9C8();
LABEL_24:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v40 + 8))(v41, v42);
      return v26;
    }

LABEL_23:
    v49 = v16[1];
    v64 = *v16;
    v65 = v49;
    v50 = *(v28 + 40);

    v50(&v64, ObjectType, v28);

    v41 = v57;
    v40 = v58;
    v42 = v59;
    (*(v58 + 104))(v57, *MEMORY[0x277D21CA8], v59);
    sub_24F92A9C8();
    sub_24E88D2AC(&v68);
    goto LABEL_24;
  }

  sub_24E9574AC(v36, 1, v32, v34, v60);
  v52 = sub_24E69A5C4(0, &qword_27F222300);
  swift_retain_n();
  v53 = sub_24F92BEF8();
  v66 = v52;
  v67 = MEMORY[0x277D225C0];
  v64 = v53;
  sub_24F92A958();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_22:
  __swift_destroy_boxed_opaque_existential_1(&v64);
  return v26;
}