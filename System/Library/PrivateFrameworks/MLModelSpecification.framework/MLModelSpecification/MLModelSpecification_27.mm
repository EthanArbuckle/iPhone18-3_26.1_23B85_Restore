uint64_t type metadata accessor for Package()
{
  result = qword_27F8816F0;
  if (!qword_27F8816F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2577082AC()
{
  result = qword_27F8816B0;
  if (!qword_27F8816B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8816A8, &qword_2577761B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8816B0);
  }

  return result;
}

unint64_t sub_257708310()
{
  result = qword_27F8816B8;
  if (!qword_27F8816B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8816B8);
  }

  return result;
}

uint64_t Package.rootModelURL.getter()
{
  v2 = sub_257742FE4();
  v3 = OUTLINED_FUNCTION_63(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = sub_257743094();
  v12 = OUTLINED_FUNCTION_63(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_14();
  v17 = type metadata accessor for Package();
  OUTLINED_FUNCTION_19_31(v17);
  if (v19 && (v20 = sub_25765368C(*(v18 + 16), *(v18 + 24)), (v21 & 1) != 0))
  {
    v22 = (*(v0 + 56) + (v20 << 6));
    v23 = v22[1];
    v28 = *v22;
    v27 = *(v5 + 104);
    v27(v10, *MEMORY[0x277CC91C0], v2);
    sub_2576E782C();

    sub_257743084();
    v24 = *(v5 + 8);
    v24(v10, v2);
    v27(v10, *MEMORY[0x277CC91D8], v2);
    sub_257743074();
    v24(v10, v2);

    return (*(v14 + 8))(v1, v11);
  }

  else
  {
    v26 = *(v17 + 20);
    (*(v5 + 104))(v10, *MEMORY[0x277CC91D8], v2);
    sub_2576E782C();
    sub_257743084();
    (*(v5 + 8))(v10, v2);
    sub_257743024();
    return (*(v14 + 8))(v1, v11);
  }
}

void Package.setRootModel(_:)()
{
  OUTLINED_FUNCTION_165_0();
  v214 = v1;
  isUniquelyReferenced_nonNull_native = v4;
  v203 = v6;
  v247 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_40_14();
  v209 = sub_257742F04();
  v7 = OUTLINED_FUNCTION_63(v209);
  v207 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v208 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v14 = OUTLINED_FUNCTION_13(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_38_0(&v202 - v17);
  v226 = sub_257742FE4();
  v18 = OUTLINED_FUNCTION_63(v226);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_38_0(v24 - v23);
  v230 = sub_257743094();
  v25 = OUTLINED_FUNCTION_63(v230);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v34);
  v36 = OUTLINED_FUNCTION_38_0(&v202 - v35);
  v219 = type metadata accessor for ModelKind(v36);
  v37 = OUTLINED_FUNCTION_4(v219);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_38_0(&v202 - v41);
  v42 = type metadata accessor for MLProgram();
  v43 = OUTLINED_FUNCTION_13(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  v48 = OUTLINED_FUNCTION_38_0(v47 - v46);
  v49 = type metadata accessor for Model(v48);
  v50 = OUTLINED_FUNCTION_13(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v53);
  v55 = &v202 - v54;
  v232 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_15_27();
  v222 = v55;
  sub_25770B9BC(isUniquelyReferenced_nonNull_native, v55, v56);
  v221 = type metadata accessor for Package();
  v57 = v221[6];
  v227 = v0;
  v210 = (v0 + v57);
  v58 = *(v0 + v57 + 32);
  v60 = *(v58 + 64);
  v59 = v58 + 64;
  v61 = *(v58 + 32);
  OUTLINED_FUNCTION_41_0();
  v64 = v63 & v62;
  v66 = (v65 + 63) >> 6;
  v234 = 0x8000000257781DE0;
  v217 = *MEMORY[0x277CC91D8];
  v216 = (v20 + 104);
  v224 = (v20 + 8);
  v213 = v27;
  v229 = (v27 + 8);

  v67 = 0;
  v235 = v58;
  v233 = v66;
LABEL_2:
  v68 = v67;
  if (!v64)
  {
    goto LABEL_4;
  }

  do
  {
    v67 = v68;
LABEL_7:
    v69 = (*(v235 + 48) + ((v67 << 10) | (16 * __clz(__rbit64(v64)))));
    v3 = *v69;
    isUniquelyReferenced_nonNull_native = v69[1];
    v70 = *(v58 + 16);

    if (!v70)
    {
      goto LABEL_49;
    }

    v71 = OUTLINED_FUNCTION_39_14();
    v73 = sub_25765368C(v71, v72);
    if ((v74 & 1) == 0)
    {
      goto LABEL_49;
    }

    v75 = (*(v58 + 56) + (v73 << 6));
    v76 = v75[2];
    v77 = v75[3];
    v78 = v75[1];
    v243 = *v75;
    v244 = v78;
    v245 = v76;
    v246 = v77;
    v238 = v78;
    v239 = v243;
    v237 = v77;
    v236 = v76;
    sub_25765DBE8(&v243, v241);
    v79 = *(&v239 + 1);
    if (!*(&v239 + 1))
    {
LABEL_49:
      __break(1u);
    }

    v64 &= v64 - 1;
    v243 = v239;
    v244 = v238;
    v245 = v236;
    v246 = v237;

    sub_25765DC20(&v243);
    v2 = v239;
    if (sub_2577436F4() & 1) != 0 || (OUTLINED_FUNCTION_32_14(), (sub_2577436F4()) || (sub_2577436F4())
    {
      *&v241[0] = 1635017028;
      *(&v241[0] + 1) = 0xE400000000000000;
      *&v239 = *v216;
      OUTLINED_FUNCTION_24_28();
      v81 = *(v80 - 256);
      (v239)();
      *&v237 = sub_2576E782C();
      sub_257743084();
      *&v238 = *v224;
      OUTLINED_FUNCTION_38_11();
      v82();
      *&v241[0] = v2;
      *(&v241[0] + 1) = v79;
      OUTLINED_FUNCTION_24_28();
      v84 = *(v83 - 256);
      (v239)();
      v85 = v215;
      sub_257743074();
      OUTLINED_FUNCTION_38_11();
      v86();
      *&v239 = *v229;
      (v239)(v85, v230);

      v87 = sub_257743004();
      *&v241[0] = 0;
      v88 = [v232 removeItemAtURL:v87 error:v241];

      if (!v88)
      {
        v189 = *&v241[0];

        sub_257742FD4();

        swift_willThrow();
        OUTLINED_FUNCTION_22_26();

        v191 = OUTLINED_FUNCTION_7_43();
        v192(v191);
        goto LABEL_47;
      }

      v89 = *&v241[0];
      v90 = OUTLINED_FUNCTION_39_14();
      v92 = sub_25765368C(v90, v91);
      v2 = v93;

      if (v2)
      {
        v2 = v210;
        v94 = *(v210 + 4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v240 = *(v2 + 4);
        v3 = *(v240 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880748, &unk_25776D470);
        sub_257743894();
        v58 = v240;
        v95 = *(*(v240 + 48) + 16 * v92 + 8);

        v96 = (*(v58 + 56) + (v92 << 6));
        v98 = v96[2];
        v97 = v96[3];
        v99 = v96[1];
        v241[0] = *v96;
        v241[1] = v99;
        v241[2] = v98;
        v241[3] = v97;
        sub_25765DC20(v241);
        sub_2577438B4();
        v100 = OUTLINED_FUNCTION_7_43();
        v101(v100);
        *(v2 + 4) = v58;
      }

      else
      {
        v102 = OUTLINED_FUNCTION_7_43();
        v103(v102);
      }

      OUTLINED_FUNCTION_40_14();
      v66 = v233;
      goto LABEL_2;
    }

    OUTLINED_FUNCTION_40_14();
    v66 = v233;
  }

  while (v64);
  while (1)
  {
LABEL_4:
    v67 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v67 >= v66)
    {
      break;
    }

    v64 = *(v59 + 8 * v67);
    ++v68;
    if (v64)
    {
      goto LABEL_7;
    }
  }

  v104 = v218;
  v105 = v222;
  Model.kind.getter();
  if (swift_getEnumCaseMultiPayload() == 31)
  {
    v106 = v104;
    v107 = v211;
    sub_25770BB54(v106, v211, type metadata accessor for MLProgram);
    v108 = v227;
    sub_257659818();
    v109 = v212;
    sub_25770B9BC(v107, v212, type metadata accessor for MLProgram);
    OUTLINED_FUNCTION_44_1();
    v110 = swift_storeEnumTagMultiPayload();
    v111 = v220;
    sub_25746EEC4(v110, v112, v113, v114, v115, v116, v117, v118, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213);
    v119 = type metadata accessor for Proto_Model.OneOf_Type(0);
    __swift_storeEnumTagSinglePayload(v111, 0, 1, v119);
    v120 = *(type metadata accessor for Proto_Model(0) + 20);
    v121 = *(v105 + v120);
    v122 = swift_isUniquelyReferenced_nonNull_native();
    v123 = v230;
    if (v122)
    {
      OUTLINED_FUNCTION_3_69();
      sub_25770BAFC(v109, v124);
      OUTLINED_FUNCTION_17_29();
      sub_25770BAFC(v107, v125);
      v126 = *(v105 + v120);
    }

    else
    {
      v3 = v107;
      v129 = *(v105 + v120);
      v130 = type metadata accessor for Proto_Model._StorageClass(0);
      OUTLINED_FUNCTION_448(v130);

      sub_257505F58();
      v126 = v131;
      OUTLINED_FUNCTION_3_69();
      sub_25770BAFC(v109, v132);
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_40_14();
      sub_25770BAFC(v133, v134);

      *(v105 + v120) = v126;
    }

    v128 = v232;
    v135 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
    swift_beginAccess();
    sub_25770BA18(v220, v126 + v135);
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_3_69();
    sub_25770BAFC(v104, v127);
    v108 = v227;
    v123 = v230;
    v128 = v232;
  }

  v136 = v231;
  v137 = (v108 + v221[5]);
  sub_257743044();
  sub_257743654();
  OUTLINED_FUNCTION_29_19();

  v138 = [v128 fileExistsAtPath_];

  if (v138)
  {
    goto LABEL_29;
  }

  v139 = sub_257743004();
  *&v243 = 0;
  v140 = [v128 createDirectoryAtURL:v139 withIntermediateDirectories:1 attributes:0 error:&v243];

  if (!v140)
  {
    v151 = v243;
    OUTLINED_FUNCTION_29_19();
    sub_257742FD4();

    swift_willThrow();
    goto LABEL_40;
  }

  v141 = v243;
LABEL_29:
  v142 = v228;
  Package.rootModelURL.getter();
  (*(v213 + 16))(v136, v142, v123);
  if (sub_257742FF4() == 0x6C65646F6D6C6DLL && v143 == 0xE700000000000000)
  {
  }

  else
  {
    v145 = sub_257743994();

    if ((v145 & 1) == 0)
    {
      sub_257743014();
    }
  }

  type metadata accessor for Proto_Model(0);
  sub_25770B8CC(&qword_281537FF0, type metadata accessor for Proto_Model);
  v146 = v214;
  sub_2577433F4();
  if (v146)
  {
    OUTLINED_FUNCTION_22_26();

    v150 = *v229;
    (*v229)(v231, v123);
    v150(v228, v123);
LABEL_40:
    OUTLINED_FUNCTION_0_98();
    v153 = v105;
    goto LABEL_41;
  }

  v148 = v231;
  sub_257743134();
  v67 = 0;
  OUTLINED_FUNCTION_22_26();
  v149 = v229;
  v155 = OUTLINED_FUNCTION_44_1();
  sub_257486798(v155, v156);
  v157 = *v149;
  v157(v148, v123);
  v157(v228, v123);
  v158 = v210;
  v159 = *(v210 + 2);
  v160 = *(v210 + 3);

  *&v238 = "MLModelCreatorDefinedKey";
  *&v239 = v3 - 8;
  sub_25765C928(0x6C6D2E6C65646F6DLL, 0xED00006C65646F6DLL, v3 - 8, 0x8000000257779720, v3 + 2, 0x8000000257781E00, v242);
  v161 = *(v158 + 4);
  swift_isUniquelyReferenced_nonNull_native();
  *&v243 = *(v158 + 4);
  sub_25765C03C(v242, v159, v160);

  *(v158 + 4) = v243;
  v162 = sub_257742F44();
  OUTLINED_FUNCTION_448(v162);
  v163 = sub_257742F34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881698, &qword_2577761B0);
  v164 = *(v207 + 72);
  v165 = (*(v207 + 80) + 32) & ~*(v207 + 80);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_2577442C0;
  sub_257742EE4();
  sub_257742ED4();
  sub_257742EF4();
  *&v243 = v166;
  OUTLINED_FUNCTION_16_28();
  sub_25770B8CC(v167, v168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8816A8, &qword_2577761B8);
  sub_2577082AC();
  sub_2577437E4();
  sub_257742F14();
  OUTLINED_FUNCTION_15_27();
  v169 = v206;
  sub_25770B9BC(v105, v206, v170);
  *&v243 = sub_25773648C(v169);
  *(&v243 + 1) = v171;
  *&v244 = v172;
  sub_25770B914();
  v173 = sub_257742F24();
  v235 = v163;
  *&v236 = v157;
  isUniquelyReferenced_nonNull_native = v173;
  *&v237 = v174;

  *&v243 = 0xD000000000000018;
  *(&v243 + 1) = v234;
  v64 = *v216;
  v175 = v225;
  v176 = v226;
  (*v216)(v225, v217, v226);
  v59 = sub_2576E782C();
  v3 = v227;
  sub_257743084();
  v2 = *v224;
  (*v224)(v175, v176);
  sub_257743134();
LABEL_43:
  v223 = v2;
  v228 = v59;
  v231 = v64;
  v233 = isUniquelyReferenced_nonNull_native;
  OUTLINED_FUNCTION_8_41(&v243);
  v177();
  v178 = v210;
  sub_25765C9C0(0xD000000000000018, v234, v239, v238 | 0x8000000000000000, 0xD000000000000023, 0x8000000257781E20);
  v179 = *(v3 + v221[7]);
  v180 = *(v178 + 1);
  v181 = *(v178 + 2);
  v182 = *(v178 + 3);
  v183 = *(v178 + 4);
  *&v243 = *v178;
  *(&v243 + 1) = v180;
  *&v244 = v181;
  *(&v244 + 1) = v182;
  *&v245 = v183;
  sub_25770B968();

  v184 = sub_257742F24();
  if (v67)
  {
    OUTLINED_FUNCTION_22_26();
  }

  else
  {
    v193 = v184;
    v194 = v185;

    OUTLINED_FUNCTION_12_44();
    *&v243 = v195;
    OUTLINED_FUNCTION_11_42();
    *(&v243 + 1) = v196;
    v197 = v225;
    OUTLINED_FUNCTION_24_28();
    v199 = *(v198 - 256);
    v231();
    sub_257743084();
    v223(v197, v199);
    sub_257743134();
    OUTLINED_FUNCTION_8_41(&v243);
    v200();
    sub_257486798(v193, v194);
    Package.rootModelURL.getter();
    OUTLINED_FUNCTION_22_26();
  }

  v187 = OUTLINED_FUNCTION_35_17();
  sub_257486798(v187, v188);

LABEL_47:
  OUTLINED_FUNCTION_0_98();
  v153 = v222;
LABEL_41:
  sub_25770BAFC(v153, v152);
  v154 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_166_0();
}

uint64_t Package.url.getter()
{
  v0 = sub_257743094();
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_205();

  return v4(v3);
}

uint64_t Package.url.setter()
{
  v0 = sub_257743094();
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_44_1();

  return v4(v3);
}

uint64_t Package.contents.getter()
{
  v1 = *(v0 + *(type metadata accessor for Package() + 24) + 32);
  v4 = v0;

  sub_2577075D8(sub_25770BA88, &v3, v1);
  OUTLINED_FUNCTION_29_19();

  return v0;
}

uint64_t sub_257709B7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_257742FE4();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257743094();
  v20 = *(v8 - 8);
  v21 = v8;
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v19 = v12;
  v14 = *MEMORY[0x277CC91C0];
  v18 = v4[13];
  v18(v7, v14, v3);
  sub_2576E782C();

  sub_257743064();
  v15 = v4[1];
  v15(v7, v3);
  v23 = v19;
  v24 = v13;
  v18(v7, *MEMORY[0x277CC91D8], v3);
  sub_257743074();
  v15(v7, v3);

  return (*(v20 + 8))(v11, v21);
}

uint64_t Package.hasRootModel.getter()
{
  v0 = type metadata accessor for Package();
  OUTLINED_FUNCTION_19_31(v0);
  if (v2)
  {
    sub_25765368C(*(v1 + 16), *(v1 + 24));
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t Package.rootModel.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_257743094();
  v5 = OUTLINED_FUNCTION_63(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_14();
  v10 = type metadata accessor for Package();
  OUTLINED_FUNCTION_19_31(v10);
  if (v12 && (sub_25765368C(*(v11 + 16), *(v11 + 24)), (v13 & 1) != 0))
  {
    Package.rootModelURL.getter();
    v14 = sub_2577430C4();
    if (v1)
    {
      return (*(v7 + 8))(v2, v4);
    }

    Model.init(serializedData:)(v14, v15, a1);
    (*(v7 + 8))(v2, v4);
    v17 = type metadata accessor for Model(0);
    v18 = a1;
    v19 = 0;
  }

  else
  {
    v17 = type metadata accessor for Model(0);
    v18 = a1;
    v19 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v18, v19, 1, v17);
}

void Package.readMetadata()()
{
  OUTLINED_FUNCTION_165_0();
  v1 = sub_257742FE4();
  v2 = OUTLINED_FUNCTION_63(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = sub_257743094();
  v11 = OUTLINED_FUNCTION_63(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = *(type metadata accessor for Package() + 20);
  OUTLINED_FUNCTION_18_40();
  OUTLINED_FUNCTION_21_29();
  (*(v4 + 104))(v9, *MEMORY[0x277CC91D8], v1);
  sub_2576E782C();
  sub_257743084();
  (*(v4 + 8))(v9, v1);
  v20 = sub_2577430C4();
  if (v0)
  {
    (*(v13 + 8))(v18, v10);
  }

  else
  {
    v22 = v20;
    v23 = v21;
    (*(v13 + 8))(v18, v10);
    v24 = sub_257742EC4();
    OUTLINED_FUNCTION_448(v24);
    sub_257742EB4();
    sub_25770BAA8();
    sub_257742EA4();

    sub_257486798(v22, v23);
  }

  OUTLINED_FUNCTION_166_0();
}

void Package.readCombinedMetadata()()
{
  OUTLINED_FUNCTION_165_0();
  v178 = v1;
  v174 = v2;
  v175 = sub_257742FE4();
  v3 = OUTLINED_FUNCTION_63(v175);
  v173 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_38_0(v8 - v7);
  v176 = sub_257743094();
  v9 = OUTLINED_FUNCTION_63(v176);
  v177 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v13);
  v171 = &v158 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD0, &unk_257744360);
  v16 = OUTLINED_FUNCTION_13(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = OUTLINED_FUNCTION_38_0(&v158 - v19);
  v170 = type metadata accessor for Proto_ModelDescription(v20);
  v21 = OUTLINED_FUNCTION_4(v170);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v26 = (v25 - v24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  v28 = OUTLINED_FUNCTION_13(v27);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v158 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v158 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8816D8, &qword_2577761C0);
  v37 = OUTLINED_FUNCTION_13(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v158 - v40;
  v42 = type metadata accessor for Model(0);
  v43 = OUTLINED_FUNCTION_4(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  v48 = v47 - v46;
  v49 = sub_2577435D4();
  v50 = v178;
  Package.rootModel.getter(v41);
  if (v50)
  {
    OUTLINED_FUNCTION_28_28();
    v180[8] = v49;
    sub_25749AD6C(v180);
LABEL_18:
    OUTLINED_FUNCTION_166_0();
    return;
  }

  v166 = v33;
  v167 = v26;
  v160 = v48;
  v161 = v0;
  v51 = v175;
  v178 = v49;
  v168 = 0;
  if (__swift_getEnumTagSinglePayload(v41, 1, v42) == 1)
  {
    sub_2574695E4(v41, &qword_27F8816D8, &qword_2577761C0);
    OUTLINED_FUNCTION_14_29();
    v52 = v51;
    v53 = v173;
  }

  else
  {
    v54 = v160;
    sub_25770BB54(v41, v160, type metadata accessor for Model);
    v55 = *(v54 + *(type metadata accessor for Proto_Model(0) + 20));
    v56 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p;
    swift_beginAccess();
    sub_2574AD5D8(v55 + v56, v35, &qword_27F879BD8, &qword_257750240);
    v57 = v170;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v170);
    sub_2574695E4(v35, &qword_27F879BD8, &qword_257750240);
    v52 = v51;
    v53 = v173;
    if (EnumTagSinglePayload == 1)
    {
      goto LABEL_11;
    }

    v59 = v166;
    sub_2574AD5D8(v55 + v56, v166, &qword_27F879BD8, &qword_257750240);
    if (__swift_getEnumTagSinglePayload(v59, 1, v57) == 1)
    {
      v60 = v167;
      v61 = MEMORY[0x277D84F90];
      *v167 = MEMORY[0x277D84F90];
      v60[1] = 0;
      v60[2] = 0xE000000000000000;
      v60[3] = v61;
      v60[4] = v61;
      v60[5] = v61;
      v60[6] = 0;
      v60[7] = 0xE000000000000000;
      v60[8] = 0;
      v60[9] = 0xE000000000000000;
      v60[10] = v61;
      v62 = v60 + *(v57 + 48);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v63 = *(v57 + 52);
      v64 = type metadata accessor for Proto_Metadata(0);
      __swift_storeEnumTagSinglePayload(v60 + v63, 1, 1, v64);
      v65 = __swift_getEnumTagSinglePayload(v59, 1, v57);
      v66 = v169;
      if (v65 != 1)
      {
        sub_2574695E4(v59, &qword_27F879BD8, &qword_257750240);
      }
    }

    else
    {
      v60 = v167;
      sub_25770BB54(v59, v167, type metadata accessor for Proto_ModelDescription);
      v66 = v169;
    }

    sub_2574AD5D8(v60 + *(v57 + 52), v66, &qword_27F879BD0, &unk_257744360);
    sub_25770BAFC(v60, type metadata accessor for Proto_ModelDescription);
    v67 = type metadata accessor for Proto_Metadata(0);
    v68 = __swift_getEnumTagSinglePayload(v66, 1, v67);
    sub_2574695E4(v66, &qword_27F879BD0, &unk_257744360);
    v54 = v160;
    if (v68 == 1)
    {
LABEL_11:
      OUTLINED_FUNCTION_0_98();
      sub_25770BAFC(v54, v69);
      OUTLINED_FUNCTION_14_29();
    }

    else
    {
      sub_2577435D4();
      Model.modelDescription.getter();
      v165 = v70;
      v170 = v71;
      Model.versionString.getter();
      v164 = v72;
      v169 = v73;
      Model.author.getter();
      v163 = v74;
      v167 = v75;
      Model.license.getter();
      v162 = v76;
      v166 = v77;
      Model.metadata.getter();
      v79 = v78;

      OUTLINED_FUNCTION_0_98();
      sub_25770BAFC(v54, v80);
      OUTLINED_FUNCTION_28_28();
      v180[8] = v178;
      sub_25749AD6C(v180);
      v178 = v79;
    }
  }

  v81 = [objc_opt_self() defaultManager];
  v82 = *(type metadata accessor for Package() + 20);
  strcpy(v180, "Metadata.json");
  HIWORD(v180[1]) = -4864;
  v83 = *(v53 + 104);
  v84 = v172;
  v159 = *MEMORY[0x277CC91D8];
  v158 = v83;
  v83(v172);
  v85 = sub_2576E782C();
  v173 = v82;
  v86 = v171;
  v160 = v85;
  sub_257743084();
  v87 = *(v53 + 8);
  v87(v84, v52);
  sub_257743054();
  v88 = *(v177 + 8);
  v89 = v86;
  v177 += 8;
  v90 = v88;
  (v88)(v89, v176);
  v91 = sub_257743654();

  v92 = [v81 fileExistsAtPath_];

  if (!v92)
  {
    v100 = v174;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_18_40();
  v179[0] = v93;
  OUTLINED_FUNCTION_11_42();
  v179[1] = v94;
  v95 = v175;
  v158(v84, v159, v175);
  sub_257743084();
  v87(v84, v95);
  v96 = v168;
  v97 = sub_2577430C4();
  if (v96)
  {
    MEMORY[0x259C65580](v96);
    v99 = OUTLINED_FUNCTION_25_27();
    v90(v99);
    v100 = v174;
LABEL_17:
    v101 = v170;
    *v100 = v165;
    v100[1] = v101;
    v102 = v169;
    v100[2] = v164;
    v100[3] = v102;
    v103 = v167;
    v100[4] = v163;
    v100[5] = v103;
    v104 = v166;
    v100[6] = v162;
    v100[7] = v104;
    v100[8] = v178;
    goto LABEL_18;
  }

  v105 = v97;
  v106 = v98;
  v107 = OUTLINED_FUNCTION_25_27();
  v90(v107);
  v108 = sub_257742EC4();
  OUTLINED_FUNCTION_448(v108);
  sub_257742EB4();
  sub_25770BAA8();
  sub_257742EA4();

  sub_257486798(v105, v106);
  memcpy(v179, v180, sizeof(v179));
  v110 = v179[0];
  v109 = v179[1];
  OUTLINED_FUNCTION_13_29();
  if (v111)
  {

    v165 = v110;
    v170 = v109;
  }

  v112 = v178;
  v114 = v179[2];
  v113 = v179[3];
  OUTLINED_FUNCTION_13_29();
  if (v115)
  {

    v164 = v114;
    v169 = v113;
  }

  v117 = v179[4];
  v116 = v179[5];
  OUTLINED_FUNCTION_13_29();
  if (v118)
  {

    v163 = v117;
    v167 = v116;
  }

  v120 = v179[6];
  v119 = v179[7];
  OUTLINED_FUNCTION_13_29();
  v168 = 0;
  if (v121)
  {

    v162 = v120;
    v166 = v119;
  }

  v122 = v179[8];

  sub_25749AD6C(v179);
  v123 = 0;
  v124 = *(v122 + 64);
  v176 = v122;
  v125 = *(v122 + 32);
  OUTLINED_FUNCTION_41_0();
  v129 = v128 & v127;
  v131 = (v130 + 63) >> 6;
  v175 = v126;
  v173 = v131;
  if ((v128 & v127) != 0)
  {
LABEL_32:
    while (1)
    {
      v133 = (v123 << 10) | (16 * __clz(__rbit64(v129)));
      v134 = (*(v176 + 48) + v133);
      v135 = *v134;
      v136 = v134[1];
      v137 = (*(v176 + 56) + v133);
      v138 = v137[1];
      v178 = *v137;

      swift_isUniquelyReferenced_nonNull_native();
      v177 = v135;
      v139 = sub_25765368C(v135, v136);
      if (__OFADD__(v112[2], (v140 & 1) == 0))
      {
        break;
      }

      v141 = v139;
      v142 = v140;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8816E0, &qword_2577761C8);
      if (sub_257743894())
      {
        v143 = sub_25765368C(v177, v136);
        if ((v142 & 1) != (v144 & 1))
        {
          goto LABEL_46;
        }

        v141 = v143;
      }

      v145 = v178;
      if (v142)
      {

        v146 = (v112[7] + 16 * v141);
        v147 = v146[1];
        *v146 = v145;
        v146[1] = v138;
      }

      else
      {
        v112[(v141 >> 6) + 8] |= 1 << v141;
        v148 = (v112[6] + 16 * v141);
        *v148 = v177;
        v148[1] = v136;
        v149 = (v112[7] + 16 * v141);
        *v149 = v145;
        v149[1] = v138;
        v150 = v112[2];
        v151 = __OFADD__(v150, 1);
        v152 = v150 + 1;
        if (v151)
        {
          goto LABEL_45;
        }

        v112[2] = v152;
      }

      v126 = v175;
      v131 = v173;
      v129 &= v129 - 1;
      if (!v129)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
LABEL_28:
    while (1)
    {
      v132 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        break;
      }

      if (v132 >= v131)
      {

        v153 = v174;
        v154 = v170;
        *v174 = v165;
        v153[1] = v154;
        v155 = v169;
        v153[2] = v164;
        v153[3] = v155;
        v156 = v167;
        v153[4] = v163;
        v153[5] = v156;
        v157 = v166;
        v153[6] = v162;
        v153[7] = v157;
        v153[8] = v112;
        goto LABEL_18;
      }

      v129 = *(v126 + 8 * v132);
      ++v123;
      if (v129)
      {
        v123 = v132;
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  sub_2577439B4();
  __break(1u);
}

void Package.writeMetadata(_:)()
{
  OUTLINED_FUNCTION_165_0();
  v3 = v2;
  v4 = sub_257742FE4();
  v5 = OUTLINED_FUNCTION_63(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = sub_257743094();
  v14 = OUTLINED_FUNCTION_63(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_14();
  v19 = sub_257742F44();
  OUTLINED_FUNCTION_448(v19);
  sub_257742F34();
  memcpy(v26, v3, sizeof(v26));
  sub_25770BBB0();
  v25 = sub_257742F24();
  v21 = v20;

  if (!v0)
  {
    v22 = *(type metadata accessor for Package() + 20);
    OUTLINED_FUNCTION_18_40();
    OUTLINED_FUNCTION_21_29();
    v26[0] = v23;
    v26[1] = v24;
    (*(v7 + 104))(v12, *MEMORY[0x277CC91D8], v4);
    sub_2576E782C();
    sub_257743084();
    (*(v7 + 8))(v12, v4);
    sub_257743134();
    (*(v16 + 8))(v1, v13);
    sub_257486798(v25, v21);
  }

  OUTLINED_FUNCTION_166_0();
}

uint64_t Package.hasWeights.getter()
{
  v1 = *(v0 + *(type metadata accessor for Package() + 24) + 32);
  v2 = *(v1 + 64);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_41_0();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  while (v6)
  {
LABEL_7:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (*(v1 + 56) + ((v10 << 12) | (v12 << 6)));
    v14 = v13[2];
    v15 = v13[3];
    if (v13[4] != 0xD000000000000010 || 0x8000000257779720 != v13[5])
    {
      result = sub_257743994();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    if (v14 != 0x73746867696577 || v15 != 0xE700000000000000)
    {
      result = sub_257743994();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    return 1;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return 0;
    }

    v6 = *(v1 + 64 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25770B284()
{
  v1 = sub_257742FE4();
  v2 = OUTLINED_FUNCTION_63(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_14();
  v7 = *(type metadata accessor for Package() + 20);
  (*(v4 + 104))(v0, *MEMORY[0x277CC91D8], v1);
  sub_2576E782C();
  sub_257743084();
  return (*(v4 + 8))(v0, v1);
}

void Package.addWeights()()
{
  OUTLINED_FUNCTION_165_0();
  v67 = v1;
  v2 = v0;
  v64 = v3;
  v73 = *MEMORY[0x277D85DE8];
  v4 = sub_257742FE4();
  v5 = OUTLINED_FUNCTION_63(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = sub_257743094();
  v14 = OUTLINED_FUNCTION_63(v13);
  v65 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_25_0();
  v62 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - v20;
  v22 = type metadata accessor for Package();
  v23 = v22[5];
  v68 = 0x73746867696577;
  v69 = 0xE700000000000000;
  v24 = *(v7 + 104);
  v61 = *MEMORY[0x277CC91D8];
  v60 = v24;
  v24(v12);
  v59 = sub_2576E782C();
  sub_257743084();
  v58 = *(v7 + 8);
  v58(v12, v4);
  v63 = v2;
  v25 = Package.hasWeights.getter();
  v66 = v21;
  if (v25)
  {
    v26 = v65;
  }

  else
  {
    v27 = [objc_opt_self() defaultManager];
    v28 = v21;
    sub_257743044();
    sub_257743654();
    OUTLINED_FUNCTION_29_19();

    v29 = [v27 fileExistsAtPath_];

    if ((v29 & 1) == 0)
    {
      v30 = sub_257743004();
      v68 = 0;
      v31 = [v27 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:0 error:&v68];

      if (!v31)
      {
        v52 = v68;
        OUTLINED_FUNCTION_29_19();
        v53 = sub_257742FD4();

        v67 = v53;
        swift_willThrow();

        (*(v65 + 8))(v66, v13);
        goto LABEL_12;
      }

      v32 = v68;
    }

    v56 = v27;
    v57 = v13;
    v33 = v63;
    v34 = (v63 + v22[6]);
    sub_25765C9C0(0x73746867696577, 0xE700000000000000, 0xD000000000000010, 0x8000000257779720, 0xD000000000000014, 0x8000000257781E50);
    v35 = *(v33 + v22[7]);
    v36 = v34[1];
    v37 = v34[2];
    v38 = v34[3];
    v39 = v34[4];
    v68 = *v34;
    v69 = v36;
    v70 = v37;
    v71 = v38;
    v72 = v39;
    sub_25770B968();

    v40 = v67;
    v41 = sub_257742F24();
    v67 = v40;
    if (v40)
    {

      (*(v65 + 8))(v66, v57);

      goto LABEL_12;
    }

    v43 = v41;
    v44 = v42;

    OUTLINED_FUNCTION_12_44();
    OUTLINED_FUNCTION_21_29();
    v68 = v45;
    v69 = v46;
    v60(v12, v61, v4);
    v47 = v62;
    sub_257743084();
    v58(v12, v4);
    v48 = v67;
    sub_257743134();
    v67 = v48;
    v49 = v56;
    if (v48)
    {
      sub_257486798(v43, v44);

      v50 = *(v65 + 8);
      v51 = v57;
      v50(v47, v57);
      v50(v66, v51);
      goto LABEL_12;
    }

    sub_257486798(v43, v44);

    v26 = v65;
    v55 = v47;
    v13 = v57;
    (*(v65 + 8))(v55, v57);
  }

  (*(v26 + 32))(v64, v66, v13);
LABEL_12:
  v54 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_166_0();
}

uint64_t sub_25770B8CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25770B914()
{
  result = qword_27F8816C0;
  if (!qword_27F8816C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8816C0);
  }

  return result;
}

unint64_t sub_25770B968()
{
  result = qword_27F8816C8;
  if (!qword_27F8816C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8816C8);
  }

  return result;
}

uint64_t sub_25770B9BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_205();
  v8(v7);
  return a2;
}

uint64_t sub_25770BA18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25770BAA8()
{
  result = qword_27F8816D0;
  if (!qword_27F8816D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8816D0);
  }

  return result;
}

uint64_t sub_25770BAFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_25770BB54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_205();
  v8(v7);
  return a2;
}

unint64_t sub_25770BBB0()
{
  result = qword_27F8816E8;
  if (!qword_27F8816E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8816E8);
  }

  return result;
}

uint64_t sub_25770BC2C()
{
  result = sub_257743094();
  if (v1 <= 0x3F)
  {
    result = sub_257742F44();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25770BCC0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_2577437F4();
  v4 = *(a1 + 36);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_43()
{
  result = *(v0 - 488);
  v2 = *(v0 - 432);
  v3 = *(v0 - 440);
  v4 = *(v0 - 336);
  return result;
}

void OUTLINED_FUNCTION_8_41(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 440);
  v4 = *(v1 - 384);
}

void OUTLINED_FUNCTION_14_29()
{
  *(v0 - 376) = 0;
  *(v0 - 384) = 0;
  *(v0 - 392) = 0;
  *(v0 - 400) = 0;
  *(v0 - 336) = 0xE000000000000000;
  *(v0 - 344) = 0xE000000000000000;
  *(v0 - 360) = 0xE000000000000000;
  *(v0 - 368) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_25_27()
{
  result = v0;
  v3 = *(v1 - 280);
  v4 = *(v1 - 272);
  return result;
}

void OUTLINED_FUNCTION_28_28()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0xE000000000000000;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0xE000000000000000;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0xE000000000000000;
  *(v0 - 112) = 0;
  *(v0 - 104) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_35_17()
{
  result = *(v0 - 408);
  v2 = *(v0 - 368);
  return result;
}

void sub_25770BF48()
{
  OUTLINED_FUNCTION_31();
  v0 = type metadata accessor for PrecisionRecallCurve();
  v1 = OUTLINED_FUNCTION_24(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x8000000257781E70;
  v10 = ClassConfidenceThresholding.precisionRecallCurves.getter();
  v11 = *(v10 + 16);
  if (v11)
  {
    v24 = inited;
    v26 = MEMORY[0x277D84F90];
    sub_257484040(0, v11, 0);
    v12 = v26;
    v13 = *(v3 + 80);
    OUTLINED_FUNCTION_193();
    v15 = v10 + v14;
    v25 = *(v3 + 72);
    do
    {
      OUTLINED_FUNCTION_1_79();
      sub_25770CCC4(v15, v8);
      v16 = sub_25770F838();
      v18 = v17;
      v20 = v19;
      sub_25770CBC0(v8);
      v22 = *(v26 + 16);
      v21 = *(v26 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_257484040((v21 > 1), v22 + 1, 1);
      }

      *(v26 + 16) = v22 + 1;
      v23 = v26 + 24 * v22;
      *(v23 + 32) = v16;
      *(v23 + 40) = v18;
      *(v23 + 48) = v20;
      v15 += v25;
      --v11;
    }

    while (v11);

    inited = v24;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  *(inited + 48) = v12;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  sub_2576A6964(inited);
  OUTLINED_FUNCTION_35();
}

uint64_t ClassConfidenceThresholding.precisionRecallCurves.getter()
{
  v1 = type metadata accessor for PrecisionRecallCurve();
  v2 = OUTLINED_FUNCTION_24(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = *v0;
  v11 = *(*v0 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v22 = MEMORY[0x277D84F90];
    sub_257484298();
    v12 = v22;
    v13 = type metadata accessor for Proto_PrecisionRecallCurve(0);
    OUTLINED_FUNCTION_24(v13);
    v15 = v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v17 = *(v16 + 72);
    do
    {
      OUTLINED_FUNCTION_0_99();
      sub_25770CCC4(v15, v9);
      v18 = *(v22 + 16);
      if (v18 >= *(v22 + 24) >> 1)
      {
        sub_257484298();
      }

      *(v22 + 16) = v18 + 1;
      v19 = *(v4 + 80);
      OUTLINED_FUNCTION_193();
      sub_25770CC1C(v9, v22 + v20 + *(v4 + 72) * v18);
      v15 += v17;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void sub_25770C2DC(uint64_t *a1)
{
  v1 = *a1;

  ClassConfidenceThresholding.precisionRecallCurves.setter();
}

void ClassConfidenceThresholding.precisionRecallCurves.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = type metadata accessor for PrecisionRecallCurve();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v21 = *(v2 + 16);
  if (v21)
  {
    OUTLINED_FUNCTION_9_40(MEMORY[0x277D84F90]);
    v22 = v31;
    v23 = *(v6 + 80);
    OUTLINED_FUNCTION_193();
    v25 = v2 + v24;
    v26 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_1_79();
      sub_25770CCC4(v25, v11);
      OUTLINED_FUNCTION_0_99();
      sub_25770CCC4(v11, v20);
      sub_25770CBC0(v11);
      v27 = *(v31 + 16);
      if (v27 >= *(v31 + 24) >> 1)
      {
        OUTLINED_FUNCTION_8_42();
      }

      *(v31 + 16) = v27 + 1;
      v28 = *(v15 + 80);
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_4_60(v31 + v29);
      v25 += v26;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v30 = *v0;

  *v0 = v22;
  OUTLINED_FUNCTION_35();
}

void (*ClassConfidenceThresholding.precisionRecallCurves.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ClassConfidenceThresholding.precisionRecallCurves.getter();
  return sub_25770C510;
}

void sub_25770C510(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    ClassConfidenceThresholding.precisionRecallCurves.setter();
  }

  else
  {
    v5 = *a1;
    ClassConfidenceThresholding.precisionRecallCurves.setter();
  }
}

uint64_t ClassConfidenceThresholding.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Proto_ClassConfidenceThresholding() + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void sub_25770C5AC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for PrecisionRecallCurve();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  v14 = OUTLINED_FUNCTION_24(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  v22 = v3 + *(type metadata accessor for Proto_ClassConfidenceThresholding() + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v23 = *(v1 + 16);
  if (v23)
  {
    v32 = v3;
    OUTLINED_FUNCTION_9_40(MEMORY[0x277D84F90]);
    v24 = v33;
    v25 = *(v7 + 80);
    OUTLINED_FUNCTION_193();
    v27 = v1 + v26;
    v28 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_1_79();
      sub_25770CCC4(v27, v12);
      OUTLINED_FUNCTION_0_99();
      sub_25770CCC4(v12, v21);
      sub_25770CBC0(v12);
      v29 = *(v33 + 16);
      if (v29 >= *(v33 + 24) >> 1)
      {
        OUTLINED_FUNCTION_8_42();
      }

      *(v33 + 16) = v29 + 1;
      v30 = *(v16 + 80);
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_4_60(v33 + v31);
      v27 += v28;
      --v23;
    }

    while (v23);

    v3 = v32;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  *v3 = v24;
  OUTLINED_FUNCTION_35();
}

uint64_t ClassConfidenceThresholding.hash(into:)()
{
  type metadata accessor for Proto_ClassConfidenceThresholding();
  OUTLINED_FUNCTION_5_54();
  sub_25770CDB0(v0, v1);

  return sub_2577435F4();
}

uint64_t ClassConfidenceThresholding.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_ClassConfidenceThresholding();
  OUTLINED_FUNCTION_5_54();
  sub_25770CDB0(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25770C91C()
{
  sub_257743A14();
  type metadata accessor for Proto_ClassConfidenceThresholding();
  sub_25770CDB0(&qword_27F87A570, type metadata accessor for Proto_ClassConfidenceThresholding);
  sub_2577435F4();
  return sub_257743A64();
}

void ClassConfidenceThresholding.customMirror.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v21;
  a20 = v22;
  v23 = sub_257743A84();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &a9 - v31;
  v33 = type metadata accessor for ClassConfidenceThresholding();
  v34 = OUTLINED_FUNCTION_4(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  sub_25770CCC4(v20, v38 - v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2577442B0;
  *(v39 + 32) = 0xD000000000000015;
  *(v39 + 40) = 0x800000025777A4A0;
  v40 = ClassConfidenceThresholding.precisionRecallCurves.getter();
  *(v39 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881700, &qword_2577761F0);
  *(v39 + 48) = v40;
  v41 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v41);
  (*(v24 + 104))(v28, *MEMORY[0x277D84C38], v23);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_25770CBC0(uint64_t a1)
{
  v2 = type metadata accessor for PrecisionRecallCurve();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25770CC1C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t type metadata accessor for ClassConfidenceThresholding()
{
  result = qword_281537930;
  if (!qword_281537930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25770CCC4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_25770CDB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25770CE20()
{
  result = type metadata accessor for Proto_ClassConfidenceThresholding();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_60@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 + *(v2 + 72) * v1;

  return sub_25770CC1C(v3, v5);
}

void OUTLINED_FUNCTION_8_42()
{

  sub_257485390();
}

void OUTLINED_FUNCTION_9_40(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  sub_257485390();
}

uint64_t sub_25770CF4C()
{
  CustomModelConfiguration.parameters.getter();
  sub_2576A8ACC(v3, v4, v5, v6, v7, v8, v9, v10, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
  v12 = v11;

  v61 = v12;
  sub_25770E0E4(&v61);
  v13 = v61;
  v14 = *(v61 + 16);
  if (v14)
  {
    v63 = MEMORY[0x277D84F90];
    sub_257484060();
    v15 = v63;
    v16 = (v13 + 64);
    while (2)
    {
      v17 = *(v16 - 4);
      v18 = *(v16 - 3);
      v20 = *(v16 - 2);
      v19 = *(v16 - 1);
      v21 = *v16;
      v16 += 40;

      v22 = OUTLINED_FUNCTION_194();
      sub_2576AAC1C(v22, v23, v21);

      v24 = OUTLINED_FUNCTION_194();
      sub_2576AAC1C(v24, v25, v21);
      v26 = OUTLINED_FUNCTION_194();
      sub_25770EEF8(v26, v27, v21);
      switch(v21)
      {
        case 1:
          v61 = 34;
          v62 = 0xE100000000000000;
          v35 = OUTLINED_FUNCTION_194();
          MEMORY[0x259C64E90](v35);
          MEMORY[0x259C64E90](34, 0xE100000000000000);

          v36 = OUTLINED_FUNCTION_194();
          sub_25770EEF8(v36, v37, 1);
          v1 = v61;
          v2 = v62;
          goto LABEL_9;
        case 2:
          v61 = v20;
          sub_257743674();
          OUTLINED_FUNCTION_6_55();
          v28 = OUTLINED_FUNCTION_194();
          v30 = 2;
          goto LABEL_8;
        case 3:
          LOBYTE(v61) = v20 & 1;
          sub_257743674();
          OUTLINED_FUNCTION_6_55();
          v28 = OUTLINED_FUNCTION_194();
          v30 = 3;
          goto LABEL_8;
        case 4:
          v61 = v20;
          v62 = v19;
          v31 = OUTLINED_FUNCTION_194();
          sub_257486740(v31, v32);
          sub_257743674();
          OUTLINED_FUNCTION_6_55();
          v28 = OUTLINED_FUNCTION_194();
          v30 = 4;
          goto LABEL_8;
        default:
          v61 = v20;
          sub_257743674();
          OUTLINED_FUNCTION_6_55();
          v28 = OUTLINED_FUNCTION_194();
          v30 = 0;
LABEL_8:
          sub_25770EEF8(v28, v29, v30);
LABEL_9:
          v63 = v15;
          v33 = *(v15 + 16);
          if (v33 >= *(v15 + 24) >> 1)
          {
            sub_257484060();
            v15 = v63;
          }

          *(v15 + 16) = v33 + 1;
          v34 = v15 + 40 * v33;
          *(v34 + 32) = v17;
          *(v34 + 40) = v18;
          *(v34 + 48) = v1;
          *(v34 + 56) = v2;
          *(v34 + 64) = 0;
          if (--v14)
          {
            continue;
          }

          break;
      }

      break;
    }
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257743FF0;
  *(inited + 32) = 0x614E207373616C43;
  *(inited + 40) = 0xEA0000000000656DLL;
  v39 = *v0;
  v40 = v0[1];
  v61 = 34;
  v62 = 0xE100000000000000;
  MEMORY[0x259C64E90](v39, v40);
  MEMORY[0x259C64E90](34, 0xE100000000000000);
  v41 = v62;
  *(inited + 48) = v61;
  *(inited + 56) = v41;
  *(inited + 64) = 0;
  *(inited + 72) = 0x6574656D61726150;
  *(inited + 80) = 0xEA00000000007372;
  *(inited + 88) = sub_2576AACFC(v15);
  *(inited + 96) = v42;
  *(inited + 104) = 2;
  return sub_2576A6964(inited);
}

uint64_t CustomModelConfiguration.className.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25770D2A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CustomModelConfiguration.className.setter(v1, v2);
}

uint64_t CustomModelConfiguration.className.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*CustomModelConfiguration.className.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25749BD04;
}

void CustomModelConfiguration.parameters.getter()
{
  v1 = type metadata accessor for Proto_CustomModel.CustomModelParamValue(0);
  v36 = *(v1 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881710, &qword_2577762D0);
  v7 = sub_2577438E4();
  v8 = 0;
  v10 = v6 + 64;
  v9 = *(v6 + 64);
  v34 = v7;
  v35 = v6;
  v11 = *(v6 + 32);
  OUTLINED_FUNCTION_41_0();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v33 = v17 + 64;
  if ((v13 & v12) != 0)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_8:
      v21 = v18 | (v8 << 6);
      v22 = (*(v35 + 48) + 16 * v21);
      v23 = v22[1];
      v37 = *v22;
      sub_25770EE90(*(v35 + 56) + *(v36 + 72) * v21, v5, type metadata accessor for Proto_CustomModel.CustomModelParamValue);
      v24 = *v5;
      v25 = *(v5 + 8);
      v26 = *(v5 + 16);

      sub_257487298(v24, v25, v26);
      sub_25770D5F8(v5);
      v27 = v34;
      switch(v26)
      {
        case 0:
          v25 = 0;
          break;
        case 1:
          break;
        case 2:
          v25 = 0;
          v24 = v24;
          goto LABEL_13;
        case 3:
          v25 = 0;
LABEL_13:
          LOBYTE(v26) = 2;
          break;
        case 4:
          v25 = 0;
          v24 &= 1u;
          LOBYTE(v26) = 3;
          break;
        case 5:
          LOBYTE(v26) = 4;
          break;
        default:
          v24 = 0;
          v25 = 0;
          LOBYTE(v26) = 0;
          v27 = v34;
          break;
      }

      *(v33 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v28 = (v27[6] + 16 * v21);
      *v28 = v37;
      v28[1] = v23;
      v29 = v27[7] + 24 * v21;
      *v29 = v24;
      *(v29 + 8) = v25;
      *(v29 + 16) = v26;
      v30 = v27[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v27[2] = v32;
      if (!v14)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v8 >= v16)
      {
        return;
      }

      v20 = *(v10 + 8 * v8);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25770D5F8(uint64_t a1)
{
  v2 = type metadata accessor for Proto_CustomModel.CustomModelParamValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25770D654(uint64_t *a1)
{
  v1 = *a1;

  return CustomModelConfiguration.parameters.setter(v2);
}

uint64_t CustomModelConfiguration.parameters.setter(uint64_t a1)
{
  sub_25770EBA0(a1);
  v3 = v2;

  v4 = *(v1 + 16);

  *(v1 + 16) = v3;
  return result;
}

uint64_t (*CustomModelConfiguration.parameters.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  CustomModelConfiguration.parameters.getter();
  *a1 = v3;
  return sub_25770D718;
}

uint64_t sub_25770D718(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    sub_25770EBA0(v4);
    v6 = v5;

    v7 = *(v2 + 16);

    *(v2 + 16) = v6;
  }

  else
  {
    sub_25770EBA0(v3);
    v10 = v9;

    v11 = *(v2 + 16);

    *(v2 + 16) = v10;
  }

  return result;
}

uint64_t CustomModelConfiguration.init(className:parameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for Proto_CustomModel.CustomModelParamValue(0);
  sub_2577435D4();
  a4[3] = 0;
  a4[4] = 0xE000000000000000;
  v8 = a4 + *(type metadata accessor for Proto_CustomModel(0) + 28);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a4 = a1;
  a4[1] = a2;
  sub_25770EBA0(a3);
  v10 = v9;

  a4[2] = v10;
  return result;
}

BOOL static CustomModelConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v4 || (sub_257743994() & 1) != 0)
  {
    v5 = a1[2];
    v6 = a2[2];
    sub_257477E10();
    if (v7)
    {
      v8 = a1[3] == a2[3] && a1[4] == a2[4];
      if (v8 || (sub_257743994() & 1) != 0)
      {
        v9 = *(type metadata accessor for Proto_CustomModel(0) + 28);
        sub_2577431B4();
        sub_25770EFAC(&qword_27F879B68, MEMORY[0x277D216C8]);
        if (sub_257743644())
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t CustomModelConfiguration.hash(into:)()
{
  type metadata accessor for Proto_CustomModel(0);
  OUTLINED_FUNCTION_2_67();
  sub_25770EFAC(v0, v1);

  return sub_2577435F4();
}

uint64_t CustomModelConfiguration.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_CustomModel(0);
  OUTLINED_FUNCTION_2_67();
  sub_25770EFAC(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25770DA58()
{
  sub_257743A14();
  type metadata accessor for Proto_CustomModel(0);
  sub_25770EFAC(&qword_27F87A5E0, type metadata accessor for Proto_CustomModel);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t CustomModelConfiguration.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = OUTLINED_FUNCTION_63(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  v14 = type metadata accessor for CustomModelConfiguration();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  sub_25770EE90(v0, v17 - v16, type metadata accessor for CustomModelConfiguration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_257743FF0;
  *(v18 + 32) = 0x6D614E7373616C63;
  *(v18 + 40) = 0xE900000000000065;
  v19 = v0[1];
  v20 = MEMORY[0x277D837D0];
  *(v18 + 48) = *v0;
  *(v18 + 56) = v19;
  *(v18 + 72) = v20;
  *(v18 + 80) = 0x6574656D61726170;
  *(v18 + 88) = 0xEA00000000007372;

  CustomModelConfiguration.parameters.getter();
  v22 = v21;
  *(v18 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881718, &qword_2577762D8);
  *(v18 + 96) = v22;
  v23 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v23);
  (*(v4 + 104))(v9, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t static CustomModelConfiguration.ParameterValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 16);
  switch(v3)
  {
    case 1:
      if (v5 != 1)
      {
        v44 = *(a1 + 8);

        goto LABEL_19;
      }

      if (*&v2 != *&v4 || *(a1 + 8) != *(a2 + 8))
      {
        OUTLINED_FUNCTION_98_2();
        v18 = sub_257743994();
        v33 = OUTLINED_FUNCTION_288();
        sub_2576AAC1C(v33, v34, 1);
        v35 = OUTLINED_FUNCTION_0_100();
        sub_2576AAC1C(v35, v36, v37);
        v38 = OUTLINED_FUNCTION_0_100();
        sub_25770EEF8(v38, v39, v40);
        v21 = OUTLINED_FUNCTION_288();
        v23 = 1;
        goto LABEL_16;
      }

      v12 = 1;
      v51 = OUTLINED_FUNCTION_0_100();
      sub_2576AAC1C(v51, v52, v53);
      v54 = OUTLINED_FUNCTION_0_100();
      sub_2576AAC1C(v54, v55, v56);
      v57 = OUTLINED_FUNCTION_0_100();
      sub_25770EEF8(v57, v58, v59);
      v60 = OUTLINED_FUNCTION_0_100();
      sub_25770EEF8(v60, v61, v62);
      return v12 & 1;
    case 2:
      if (v5 != 2)
      {
        goto LABEL_19;
      }

      v24 = OUTLINED_FUNCTION_98_2();
      sub_25770EEF8(v24, v25, 2);
      v26 = OUTLINED_FUNCTION_288();
      sub_25770EEF8(v26, v27, 2);
      v12 = *&v2 == *&v4;
      return v12 & 1;
    case 3:
      if (v5 != 3)
      {
        goto LABEL_19;
      }

      v28 = OUTLINED_FUNCTION_98_2();
      sub_25770EEF8(v28, v29, 3);
      v30 = OUTLINED_FUNCTION_288();
      sub_25770EEF8(v30, v31, 3);
      v12 = LOBYTE(v4) ^ LOBYTE(v2) ^ 1;
      return v12 & 1;
    case 4:
      if (v5 == 4)
      {
        v13 = OUTLINED_FUNCTION_288();
        sub_2576AAC1C(v13, v14, 4);
        v15 = OUTLINED_FUNCTION_98_2();
        sub_2576AAC1C(v15, v16, 4);
        v17 = OUTLINED_FUNCTION_98_2();
        v18 = MEMORY[0x259C648D0](v17);
        v19 = OUTLINED_FUNCTION_98_2();
        sub_25770EEF8(v19, v20, 4);
        v21 = OUTLINED_FUNCTION_288();
        v23 = 4;
LABEL_16:
        sub_25770EEF8(v21, v22, v23);
        return v18 & 1;
      }

      else
      {
        v42 = OUTLINED_FUNCTION_98_2();
        sub_257486740(v42, v43);
LABEL_19:
        v45 = OUTLINED_FUNCTION_288();
        sub_2576AAC1C(v45, v46, v5);
        v47 = OUTLINED_FUNCTION_98_2();
        sub_25770EEF8(v47, v48, v3);
        v49 = OUTLINED_FUNCTION_288();
        sub_25770EEF8(v49, v50, v5);
        v12 = 0;
        return v12 & 1;
      }

    default:
      if (*(a2 + 16))
      {
        goto LABEL_19;
      }

      v6 = *a1;
      v7 = *a2;
      v8 = OUTLINED_FUNCTION_98_2();
      sub_25770EEF8(v8, v9, 0);
      v10 = OUTLINED_FUNCTION_288();
      sub_25770EEF8(v10, v11, 0);
      v12 = v2 == v4;
      return v12 & 1;
  }
}

uint64_t CustomModelConfiguration.ParameterValue.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  switch(*(v0 + 16))
  {
    case 1:
      MEMORY[0x259C651F0](1);

      result = sub_257743694();
      break;
    case 2:
      MEMORY[0x259C651F0](2);
      result = MEMORY[0x259C651F0](v1);
      break;
    case 3:
      MEMORY[0x259C651F0](3);
      result = sub_257743A34();
      break;
    case 4:
      MEMORY[0x259C651F0](4);

      result = sub_257743114();
      break;
    default:
      MEMORY[0x259C651F0](0);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0;
      }

      result = MEMORY[0x259C65220](v3);
      break;
  }

  return result;
}

uint64_t CustomModelConfiguration.ParameterValue.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_257743A14();
  CustomModelConfiguration.ParameterValue.hash(into:)();
  return sub_257743A64();
}

uint64_t sub_25770E090()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_257743A14();
  CustomModelConfiguration.ParameterValue.hash(into:)();
  return sub_257743A64();
}

uint64_t sub_25770E0E4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC1FC(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_25770E150(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_25770E150(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_257743964();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FE8, &qword_257744920);
        v6 = sub_257743764();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_25770E33C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_25770E254(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25770E254(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        v11 = v10 + 40;
        result = *(v10 + 40);
        if (result == *v10 && *(v10 + 48) == *(v10 + 8))
        {
          break;
        }

        result = sub_257743994();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v10 + 40);
        v13 = *(v10 + 48);
        v15 = *(v10 + 72);
        v16 = *(v10 + 56);
        v17 = *(v10 + 16);
        v18 = *(v10 + 32);
        *v11 = *v10;
        *(v10 + 56) = v17;
        *v10 = v14;
        *(v10 + 8) = v13;
        *(v10 + 16) = v16;
        *(v10 + 32) = v15;
        v10 -= 40;
        *(v11 + 32) = v18;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 40;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_25770E33C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v101 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = *a3;
        v12 = (*a3 + 40 * v10);
        v13 = *v12;
        v14 = v12[1];
        v15 = (*a3 + 40 * v9);
        if (v13 == *v15 && v14 == v15[1])
        {
          v17 = 0;
        }

        else
        {
          v17 = sub_257743994();
        }

        v10 = v9 + 2;
        v18 = (v11 + 40 * v9 + 88);
        while (v10 < v6)
        {
          if (*(v18 - 1) == *(v18 - 6) && *v18 == *(v18 - 5))
          {
            if (v17)
            {
              goto LABEL_21;
            }
          }

          else if ((v17 ^ sub_257743994()))
          {
            break;
          }

          ++v10;
          v18 += 5;
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v10)
        {
          v20 = 40 * v10 - 8;
          v21 = 40 * v9 + 32;
          v22 = v10;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v21);
              v26 = (v24 + v20);
              v27 = *(v25 - 4);
              v28 = *(v25 - 3);
              v29 = *v25;
              v30 = *(v25 - 1);
              v31 = *v26;
              v32 = *(v26 - 1);
              *(v25 - 2) = *(v26 - 2);
              *(v25 - 1) = v32;
              *v25 = v31;
              *(v26 - 4) = v27;
              *(v26 - 3) = v28;
              *(v26 - 1) = v30;
              *v26 = v29;
            }

            ++v23;
            v20 -= 40;
            v21 += 40;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v33 = a3[1];
      if (v10 < v33)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_121;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          v98 = v5;
          if (v9 + a4 >= v33)
          {
            v34 = a3[1];
          }

          else
          {
            v34 = v9 + a4;
          }

          if (v34 < v9)
          {
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
            return;
          }

          if (v10 != v34)
          {
            v35 = *a3;
            v36 = *a3 + 40 * v10 - 40;
            v97 = v9;
            v37 = v9 - v10;
            do
            {
              v38 = v37;
              v39 = v36;
              do
              {
                v40 = v39 + 40;
                v41 = *(v39 + 40) == *v39 && *(v39 + 48) == *(v39 + 8);
                if (v41 || (sub_257743994() & 1) == 0)
                {
                  break;
                }

                if (!v35)
                {
                  goto LABEL_125;
                }

                v43 = *(v39 + 40);
                v42 = *(v39 + 48);
                v44 = *(v39 + 72);
                v45 = *(v39 + 56);
                v46 = *(v39 + 16);
                v47 = *(v39 + 32);
                *v40 = *v39;
                *(v39 + 56) = v46;
                *v39 = v43;
                *(v39 + 8) = v42;
                *(v39 + 16) = v45;
                *(v39 + 32) = v44;
                v39 -= 40;
                *(v40 + 32) = v47;
              }

              while (!__CFADD__(v38++, 1));
              ++v10;
              v36 += 40;
              --v37;
            }

            while (v10 != v34);
            v10 = v34;
            v9 = v97;
          }

          v5 = v98;
        }
      }

      if (v10 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v92 = v8[2];
        sub_257469A28();
        v8 = v93;
      }

      v49 = v8[2];
      v50 = v49 + 1;
      if (v49 >= v8[3] >> 1)
      {
        sub_257469A28();
        v8 = v94;
      }

      v8[2] = v50;
      v51 = v8 + 4;
      v52 = &v8[2 * v49 + 4];
      *v52 = v9;
      v52[1] = v10;
      v99 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v49)
      {
        while (1)
        {
          v53 = v50 - 1;
          v54 = &v51[2 * v50 - 2];
          v55 = &v8[2 * v50];
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v56 = v8[4];
            v57 = v8[5];
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
LABEL_70:
            if (v59)
            {
              goto LABEL_110;
            }

            v71 = *v55;
            v70 = v55[1];
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_113;
            }

            v75 = v54[1];
            v76 = v75 - *v54;
            if (__OFSUB__(v75, *v54))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v73, v76))
            {
              goto LABEL_118;
            }

            if (v73 + v76 >= v58)
            {
              if (v58 < v76)
              {
                v53 = v50 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v50 < 2)
          {
            goto LABEL_112;
          }

          v78 = *v55;
          v77 = v55[1];
          v66 = __OFSUB__(v77, v78);
          v73 = v77 - v78;
          v74 = v66;
LABEL_85:
          if (v74)
          {
            goto LABEL_115;
          }

          v80 = *v54;
          v79 = v54[1];
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_117;
          }

          if (v81 < v73)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v53 - 1 >= v50)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v85 = &v51[2 * v53 - 2];
          v86 = *v85;
          v87 = &v51[2 * v53];
          v88 = v87[1];
          sub_25770E9D4((*a3 + 40 * *v85), (*a3 + 40 * *v87), *a3 + 40 * v88, v99);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v88 < v86)
          {
            goto LABEL_105;
          }

          v89 = v8;
          v90 = v8[2];
          if (v53 > v90)
          {
            goto LABEL_106;
          }

          *v85 = v86;
          v85[1] = v88;
          if (v53 >= v90)
          {
            goto LABEL_107;
          }

          v50 = v90 - 1;
          memmove(&v51[2 * v53], v87 + 2, 16 * (v90 - 1 - v53));
          v89[2] = v90 - 1;
          v91 = v90 > 2;
          v8 = v89;
          v5 = 0;
          if (!v91)
          {
            goto LABEL_99;
          }
        }

        v60 = &v51[2 * v50];
        v61 = *(v60 - 8);
        v62 = *(v60 - 7);
        v66 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        if (v66)
        {
          goto LABEL_108;
        }

        v65 = *(v60 - 6);
        v64 = *(v60 - 5);
        v66 = __OFSUB__(v64, v65);
        v58 = v64 - v65;
        v59 = v66;
        if (v66)
        {
          goto LABEL_109;
        }

        v67 = v55[1];
        v68 = v67 - *v55;
        if (__OFSUB__(v67, *v55))
        {
          goto LABEL_111;
        }

        v66 = __OFADD__(v58, v68);
        v69 = v58 + v68;
        if (v66)
        {
          goto LABEL_114;
        }

        if (v69 >= v63)
        {
          v83 = *v54;
          v82 = v54[1];
          v66 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v66)
          {
            goto LABEL_119;
          }

          if (v58 < v84)
          {
            v53 = v50 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      v7 = v10;
      if (v10 >= v6)
      {
        v101 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_25770E89C(&v101, *a1, a3);
LABEL_103:
}

uint64_t sub_25770E89C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2576FB678(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_25770E9D4((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_25770E9D4(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_257487364(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_257743994() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 40;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 40;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 40;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    v15 = *(v13 + 1);
    *(v7 + 4) = *(v13 + 4);
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_17;
  }

  sub_257487364(a2, (a3 - a2) / 40, a4);
  v10 = &v4[40 * v9];
LABEL_19:
  v16 = v6 - 40;
  for (v5 -= 40; v10 > v4 && v6 > v7; v5 -= 40)
  {
    v18 = *(v10 - 5) == *(v6 - 5) && *(v10 - 4) == *(v6 - 4);
    if (!v18 && (sub_257743994() & 1) != 0)
    {
      v12 = v5 + 40 == v6;
      v6 -= 40;
      if (!v12)
      {
        v21 = *v16;
        v22 = *(v16 + 1);
        *(v5 + 32) = *(v16 + 4);
        *v5 = v21;
        *(v5 + 16) = v22;
        v6 = v16;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 40))
    {
      v19 = *(v10 - 40);
      v20 = *(v10 - 24);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v19;
      *(v5 + 16) = v20;
    }

    v10 -= 40;
  }

LABEL_36:
  v23 = 40 * ((v10 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23);
  }

  return 1;
}

void sub_25770EBA0(uint64_t a1)
{
  v2 = type metadata accessor for Proto_CustomModel.CustomModelParamValue(0);
  v3 = OUTLINED_FUNCTION_63(v2);
  v40 = v4;
  v41 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881730, &unk_257776550);
  sub_2577438E4();
  v10 = 0;
  v42 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v13 = *(v11 - 32);
  OUTLINED_FUNCTION_41_0();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  v38 = v19 + 8;
  v39 = v19;
  if (v16)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v16));
      v43 = (v16 - 1) & v16;
LABEL_8:
      v23 = v20 | (v10 << 6);
      v24 = (*(v42 + 48) + 16 * v23);
      v25 = v24[1];
      v44 = *v24;
      v26 = *(v42 + 56) + 24 * v23;
      v28 = *v26;
      v27 = *(v26 + 8);
      v29 = *(v26 + 16);
      v30 = *(v26 + 16);
      switch(v30)
      {
        case 1:
          v31 = *(v26 + 8);

          v30 = 1;
          goto LABEL_11;
        case 2:
          v29 = 0;
          if (v28 == v28)
          {
            v28 = v28;
            v30 = 2;
          }

          else
          {
            v30 = 3;
          }

          break;
        case 3:
          v29 = 0;
          v28 = *v26 & 1;
          v30 = 4;
          break;
        case 4:
          sub_257486740(*v26, *(v26 + 8));
          v30 = 5;
LABEL_11:
          v29 = v27;
          break;
        default:
          break;
      }

      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = -1;
      v32 = v28;
      v33 = *(v41 + 20);

      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      sub_2574872D0(*v9, *(v9 + 8), *(v9 + 16));
      *v9 = v32;
      *(v9 + 8) = v29;
      *(v9 + 16) = v30;
      *(v38 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v34 = (v39[6] + 16 * v23);
      *v34 = v44;
      v34[1] = v25;
      sub_25770F0FC(v9, v39[7] + *(v40 + 72) * v23);
      v35 = v39[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        break;
      }

      v39[2] = v37;
      v16 = v43;
      if (!v43)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v10 >= v18)
      {
        return;
      }

      v22 = *(v11 + 8 * v10);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v43 = (v22 - 1) & v22;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t type metadata accessor for CustomModelConfiguration()
{
  result = qword_281537A20;
  if (!qword_281537A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25770EE90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25770EEF8(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_257486798(result, a2);
  }

  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_25770EFAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25770EFF8()
{
  result = qword_27F881728;
  if (!qword_27F881728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881728);
  }

  return result;
}

uint64_t sub_25770F074()
{
  result = type metadata accessor for Proto_CustomModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25770F0FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CustomModel.CustomModelParamValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_55()
{
}

uint64_t static NeuralNetwork.Layer.broadcastableSubtract(name:inputNames:outputName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v28 = a5;
  v29 = a7;
  v30 = a1;
  v31 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - v16;
  v18 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v22 = v21 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_257743FF0;
  *(v23 + 32) = a3;
  *(v23 + 40) = a4;
  *(v23 + 48) = v28;
  *(v23 + 56) = a6;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2577442B0;
  *(v24 + 32) = v29;
  *(v24 + 40) = a8;

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v25 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a9 + v25) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v24);
  sub_2574897E0(v17);
  v26 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v26);
  sub_25752846C();
  return sub_257634BB4(v22);
}

uint64_t static NeuralNetwork.Layer.BroadcastableSubtractParameters.== infix(_:_:)()
{
  sub_2577431B4();
  sub_25770F758(&qword_27F879B68, MEMORY[0x277D216C8]);
  return sub_257743644() & 1;
}

uint64_t NeuralNetwork.Layer.BroadcastableSubtractParameters.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v18 - v10;
  v12 = type metadata accessor for NeuralNetwork.Layer.BroadcastableSubtractParameters();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  sub_25770F6AC(v1, v15 - v14);
  v18[1] = MEMORY[0x277D84F90];
  v16 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v16);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  return sub_257743A94();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.BroadcastableSubtractParameters()
{
  result = qword_27F881738;
  if (!qword_27F881738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25770F6AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.BroadcastableSubtractParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25770F758(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25770F7CC()
{
  result = type metadata accessor for Proto_SubtractBroadcastableLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25770F838()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257744E70;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000257781E90;
  v33 = inited;
  v1 = *(PrecisionRecallCurve.precisionScores.getter() + 16);
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_13_30();
    sub_257484040(v2, v1, 0);
    v3 = v35;
    do
    {
      OUTLINED_FUNCTION_14_30();
      OUTLINED_FUNCTION_4_61();
      if (v5)
      {
        OUTLINED_FUNCTION_7_44(v4);
        v3 = v35;
      }

      OUTLINED_FUNCTION_3_70();
    }

    while (!v6);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  *(v33 + 48) = v3;
  *(v33 + 56) = 0;
  *(v33 + 64) = 1;
  OUTLINED_FUNCTION_21_30();
  *(v9 + 72) = v7 + 15;
  *(v9 + 80) = v8;
  v10 = *(PrecisionRecallCurve.precisionConfidenceThresholds.getter() + 16);
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_13_30();
    sub_257484040(v11, v10, 0);
    v12 = v35;
    do
    {
      OUTLINED_FUNCTION_14_30();
      OUTLINED_FUNCTION_4_61();
      if (v5)
      {
        OUTLINED_FUNCTION_7_44(v13);
        v12 = v35;
      }

      OUTLINED_FUNCTION_3_70();
    }

    while (!v6);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  *(v33 + 88) = v12;
  *(v33 + 96) = 0;
  *(v33 + 104) = 1;
  strcpy((v33 + 112), "Recall Scores");
  *(v33 + 126) = -4864;
  v14 = *(PrecisionRecallCurve.recallScores.getter() + 16);
  if (v14)
  {
    v15 = OUTLINED_FUNCTION_13_30();
    sub_257484040(v15, v14, 0);
    v16 = v35;
    do
    {
      OUTLINED_FUNCTION_14_30();
      OUTLINED_FUNCTION_4_61();
      if (v5)
      {
        OUTLINED_FUNCTION_7_44(v17);
        v16 = v35;
      }

      OUTLINED_FUNCTION_3_70();
    }

    while (!v6);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  *(v33 + 128) = v16;
  *(v33 + 136) = 0;
  *(v33 + 144) = 1;
  OUTLINED_FUNCTION_21_30();
  *(v20 + 152) = v18 + 12;
  *(v20 + 160) = v19;
  v21 = PrecisionRecallCurve.recallConfidenceThresholds.getter();
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = OUTLINED_FUNCTION_13_30();
    sub_257484040(v23, v22, 0);
    v24 = 32;
    v25 = v35;
    do
    {
      v34 = *(v21 + v24);
      v26 = sub_257743674();
      v28 = v27;
      v30 = *(v35 + 16);
      v29 = *(v35 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_257484040((v29 > 1), v30 + 1, 1);
      }

      *(v35 + 16) = v30 + 1;
      v31 = v35 + 24 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      *(v31 + 48) = 0;
      v24 += 4;
      --v22;
    }

    while (v22);
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  *(v33 + 168) = v25;
  *(v33 + 176) = 0;
  *(v33 + 184) = 1;
  return sub_2576A6964(v33);
}

uint64_t PrecisionRecallCurve.precisionScores.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_9_41();
  v7 = OUTLINED_FUNCTION_32_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_24_0();
  v10 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  OUTLINED_FUNCTION_26_19(*(v10 + 20));
  OUTLINED_FUNCTION_2_68();
  if (v11)
  {
    OUTLINED_FUNCTION_15_28(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_2_68();
    if (!v11)
    {
      sub_25770FC84(v0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_28();
  }

  OUTLINED_FUNCTION_24_29();
  sub_2574B5C0C(v1);
  return OUTLINED_FUNCTION_18_27();
}

uint64_t sub_25770FC84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25770FCEC(uint64_t *a1)
{
  v1 = *a1;

  return PrecisionRecallCurve.precisionScores.setter();
}

uint64_t PrecisionRecallCurve.precisionScores.setter()
{
  v2 = OUTLINED_FUNCTION_376();
  v3 = type metadata accessor for Proto_FloatVector(v2);
  v4 = OUTLINED_FUNCTION_32_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_112_2(v7);
  v8 = OUTLINED_FUNCTION_32_15();
  sub_25770FC84(v0 + *(v8 + 20));
  OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v1);
}

uint64_t PrecisionRecallCurve.precisionScores.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_16_29(a1);
  v1[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v1[3] = __swift_coroFrameAllocStub(*(v3 + 64));
  *v1 = PrecisionRecallCurve.precisionScores.getter();
  return OUTLINED_FUNCTION_43();
}

void sub_25770FDF8(uint64_t *a1)
{
  OUTLINED_FUNCTION_10_47(a1);
  if (v3)
  {

    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v4 = *(OUTLINED_FUNCTION_17_30() + 20);
    sub_25770FC84(v2 + v4);
    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_5_55(v2 + v4);
  }

  else
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v5 = *(OUTLINED_FUNCTION_17_30() + 20);
    sub_25770FC84(v2 + v5);
    OUTLINED_FUNCTION_28_29();
    OUTLINED_FUNCTION_5_55(v2 + v5);
  }

  free(v1);
}

uint64_t PrecisionRecallCurve.precisionConfidenceThresholds.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_9_41();
  v7 = OUTLINED_FUNCTION_32_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_24_0();
  v10 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  OUTLINED_FUNCTION_26_19(*(v10 + 24));
  OUTLINED_FUNCTION_2_68();
  if (v11)
  {
    OUTLINED_FUNCTION_15_28(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_2_68();
    if (!v11)
    {
      sub_25770FC84(v0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_28();
  }

  OUTLINED_FUNCTION_24_29();
  sub_2574B5C0C(v1);
  return OUTLINED_FUNCTION_18_27();
}

uint64_t sub_25770FF70(uint64_t *a1)
{
  v1 = *a1;

  return PrecisionRecallCurve.precisionConfidenceThresholds.setter();
}

uint64_t PrecisionRecallCurve.precisionConfidenceThresholds.setter()
{
  v2 = OUTLINED_FUNCTION_376();
  v3 = type metadata accessor for Proto_FloatVector(v2);
  v4 = OUTLINED_FUNCTION_32_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_112_2(v7);
  v8 = OUTLINED_FUNCTION_32_15();
  sub_25770FC84(v0 + *(v8 + 24));
  OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v1);
}

uint64_t PrecisionRecallCurve.precisionConfidenceThresholds.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_16_29(a1);
  v1[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v1[3] = __swift_coroFrameAllocStub(*(v3 + 64));
  *v1 = PrecisionRecallCurve.precisionConfidenceThresholds.getter();
  return OUTLINED_FUNCTION_43();
}

void sub_25771007C(uint64_t *a1)
{
  OUTLINED_FUNCTION_10_47(a1);
  if (v3)
  {

    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v4 = *(OUTLINED_FUNCTION_17_30() + 24);
    sub_25770FC84(v2 + v4);
    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_5_55(v2 + v4);
  }

  else
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v5 = *(OUTLINED_FUNCTION_17_30() + 24);
    sub_25770FC84(v2 + v5);
    OUTLINED_FUNCTION_28_29();
    OUTLINED_FUNCTION_5_55(v2 + v5);
  }

  free(v1);
}

uint64_t PrecisionRecallCurve.recallScores.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_9_41();
  v7 = OUTLINED_FUNCTION_32_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_24_0();
  v10 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  OUTLINED_FUNCTION_26_19(*(v10 + 28));
  OUTLINED_FUNCTION_2_68();
  if (v11)
  {
    OUTLINED_FUNCTION_15_28(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_2_68();
    if (!v11)
    {
      sub_25770FC84(v0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_28();
  }

  OUTLINED_FUNCTION_24_29();
  sub_2574B5C0C(v1);
  return OUTLINED_FUNCTION_18_27();
}

uint64_t sub_2577101F4(uint64_t *a1)
{
  v1 = *a1;

  return PrecisionRecallCurve.recallScores.setter();
}

uint64_t PrecisionRecallCurve.recallScores.setter()
{
  v2 = OUTLINED_FUNCTION_376();
  v3 = type metadata accessor for Proto_FloatVector(v2);
  v4 = OUTLINED_FUNCTION_32_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_112_2(v7);
  v8 = OUTLINED_FUNCTION_32_15();
  sub_25770FC84(v0 + *(v8 + 28));
  OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v1);
}

uint64_t PrecisionRecallCurve.recallScores.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_16_29(a1);
  v1[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v1[3] = __swift_coroFrameAllocStub(*(v3 + 64));
  *v1 = PrecisionRecallCurve.recallScores.getter();
  return OUTLINED_FUNCTION_43();
}

void sub_257710300(uint64_t *a1)
{
  OUTLINED_FUNCTION_10_47(a1);
  if (v3)
  {

    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v4 = *(OUTLINED_FUNCTION_17_30() + 28);
    sub_25770FC84(v2 + v4);
    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_5_55(v2 + v4);
  }

  else
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v5 = *(OUTLINED_FUNCTION_17_30() + 28);
    sub_25770FC84(v2 + v5);
    OUTLINED_FUNCTION_28_29();
    OUTLINED_FUNCTION_5_55(v2 + v5);
  }

  free(v1);
}

uint64_t PrecisionRecallCurve.recallConfidenceThresholds.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_9_41();
  v7 = OUTLINED_FUNCTION_32_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_24_0();
  v10 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  OUTLINED_FUNCTION_26_19(*(v10 + 32));
  OUTLINED_FUNCTION_2_68();
  if (v11)
  {
    OUTLINED_FUNCTION_15_28(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_2_68();
    if (!v11)
    {
      sub_25770FC84(v0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_28();
  }

  OUTLINED_FUNCTION_24_29();
  sub_2574B5C0C(v1);
  return OUTLINED_FUNCTION_18_27();
}

uint64_t sub_257710478(uint64_t *a1)
{
  v1 = *a1;

  return PrecisionRecallCurve.recallConfidenceThresholds.setter();
}

uint64_t PrecisionRecallCurve.recallConfidenceThresholds.setter()
{
  v2 = OUTLINED_FUNCTION_376();
  v3 = type metadata accessor for Proto_FloatVector(v2);
  v4 = OUTLINED_FUNCTION_32_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_112_2(v7);
  v8 = OUTLINED_FUNCTION_32_15();
  sub_25770FC84(v0 + *(v8 + 32));
  OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v1);
}

uint64_t PrecisionRecallCurve.recallConfidenceThresholds.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_16_29(a1);
  v1[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v1[3] = __swift_coroFrameAllocStub(*(v3 + 64));
  *v1 = PrecisionRecallCurve.recallConfidenceThresholds.getter();
  return OUTLINED_FUNCTION_43();
}

void sub_257710584(uint64_t *a1)
{
  OUTLINED_FUNCTION_10_47(a1);
  if (v3)
  {

    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v4 = *(OUTLINED_FUNCTION_17_30() + 32);
    sub_25770FC84(v2 + v4);
    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_5_55(v2 + v4);
  }

  else
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v5 = *(OUTLINED_FUNCTION_17_30() + 32);
    sub_25770FC84(v2 + v5);
    OUTLINED_FUNCTION_28_29();
    OUTLINED_FUNCTION_5_55(v2 + v5);
  }

  free(v1);
}

uint64_t PrecisionRecallCurve.init()()
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v0 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  v1 = v0[5];
  v2 = type metadata accessor for Proto_FloatVector(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = v0[6];
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
  v10 = v0[7];
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v2);
  v14 = v0[8];
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v2);
}

uint64_t PrecisionRecallCurve.init(precisionScores:precisionConfidenceThresholds:recallScores:recallConfidenceThresholds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Proto_FloatVector(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_0();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v12 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  v13 = v12[5];
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
  v17 = v12[6];
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v10);
  v21 = v12[7];
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v10);
  v25 = v12[8];
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v10);
  OUTLINED_FUNCTION_31_18();
  *v5 = a1;
  sub_25770FC84(a5 + v13);
  sub_2574B5BA8(v5, a5 + v13);
  OUTLINED_FUNCTION_5_55(a5 + v13);
  OUTLINED_FUNCTION_31_18();
  *v5 = a2;
  sub_25770FC84(a5 + v17);
  sub_2574B5BA8(v5, a5 + v17);
  OUTLINED_FUNCTION_5_55(a5 + v17);
  OUTLINED_FUNCTION_31_18();
  *v5 = a3;
  sub_25770FC84(a5 + v21);
  sub_2574B5BA8(v5, a5 + v21);
  OUTLINED_FUNCTION_5_55(a5 + v21);
  OUTLINED_FUNCTION_31_18();
  *v5 = a4;
  sub_25770FC84(a5 + v25);
  sub_2574B5BA8(v5, a5 + v25);
  return OUTLINED_FUNCTION_5_55(a5 + v25);
}

uint64_t PrecisionRecallCurve.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_376();
  type metadata accessor for Proto_PrecisionRecallCurve(v0);
  OUTLINED_FUNCTION_8_43();
  sub_257710DAC(v1, v2);

  return sub_2577435F4();
}

uint64_t PrecisionRecallCurve.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_PrecisionRecallCurve(0);
  OUTLINED_FUNCTION_8_43();
  sub_257710DAC(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257710948()
{
  sub_257743A14();
  type metadata accessor for Proto_PrecisionRecallCurve(0);
  sub_257710DAC(&qword_27F87A688, type metadata accessor for Proto_PrecisionRecallCurve);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t PrecisionRecallCurve.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v3 = sub_257743A84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for PrecisionRecallCurve();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  sub_257710CB4(v1, v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_257744E70;
  *(v13 + 32) = 0x6F69736963657270;
  *(v13 + 40) = 0xEF7365726F63536ELL;
  v14 = PrecisionRecallCurve.precisionScores.getter();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D68, &qword_25776F940);
  *(v13 + 48) = v14;
  *(v13 + 72) = v15;
  *(v13 + 80) = 0xD00000000000001DLL;
  *(v13 + 88) = 0x800000025777A6E0;
  *(v13 + 96) = PrecisionRecallCurve.precisionConfidenceThresholds.getter();
  *(v13 + 120) = v15;
  strcpy((v13 + 128), "recallScores");
  *(v13 + 141) = 0;
  *(v13 + 142) = -5120;
  *(v13 + 144) = PrecisionRecallCurve.recallScores.getter();
  *(v13 + 168) = v15;
  *(v13 + 176) = 0xD00000000000001ALL;
  *(v13 + 184) = 0x800000025777A710;
  v16 = PrecisionRecallCurve.recallConfidenceThresholds.getter();
  *(v13 + 216) = v15;
  *(v13 + 192) = v16;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  (*(v4 + 104))(v2, *MEMORY[0x277D84C38], v3);
  return sub_257743AA4();
}

uint64_t type metadata accessor for PrecisionRecallCurve()
{
  result = qword_27F881750;
  if (!qword_27F881750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257710CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecisionRecallCurve();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257710DAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257710E1C()
{
  result = type metadata accessor for Proto_PrecisionRecallCurve(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_3_70()
{
  *(v2 + 16) = v5;
  v6 = v2 + v0 * v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = 0;
}

uint64_t OUTLINED_FUNCTION_5_55(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

char *OUTLINED_FUNCTION_7_44@<X0>(unint64_t a1@<X8>)
{

  return sub_257484040((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_9_41()
{

  return type metadata accessor for Proto_FloatVector(0);
}

uint64_t *OUTLINED_FUNCTION_10_47(uint64_t *result)
{
  v1 = result[3];
  v2 = *(result[2] + 20);
  v3 = *result;
  v4 = result[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_14_30()
{
  v4 = *(v0 + v1);

  return sub_257743674();
}

uint64_t OUTLINED_FUNCTION_15_28@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  v4 = v2 + *(v1 + 20);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_16_29(uint64_t a1)
{
  *(a1 + 8) = v1;

  return type metadata accessor for Proto_FloatVector(0);
}

uint64_t OUTLINED_FUNCTION_17_30()
{
  *v0 = v1;

  return type metadata accessor for Proto_PrecisionRecallCurve(0);
}

uint64_t OUTLINED_FUNCTION_24_29()
{
  v2 = *v0;
}

uint64_t OUTLINED_FUNCTION_25_28()
{

  return sub_2574B5BA8(v0, v1);
}

uint64_t OUTLINED_FUNCTION_26_19@<X0>(uint64_t a1@<X8>)
{

  return sub_2574B5B38(v2 + a1, v1);
}

uint64_t OUTLINED_FUNCTION_28_29()
{

  return sub_2574B5BA8(v0, v2 + v1);
}

uint64_t OUTLINED_FUNCTION_29_20()
{

  return sub_2574B5BA8(v2, v1 + v0);
}

uint64_t OUTLINED_FUNCTION_30_18()
{

  return sub_2574B5BA8(v0, v1 + v2);
}

uint64_t OUTLINED_FUNCTION_31_18()
{
  v3 = v1 + *(v0 + 20);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_32_15()
{
  *v1 = v0;

  return type metadata accessor for Proto_PrecisionRecallCurve(0);
}

uint64_t sub_2577110C4()
{
  v7 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  *(inited + 32) = 0x6D614E20656C6946;
  *(inited + 40) = 0xE900000000000065;
  v1 = LinkedModelConfiguration.fileName.getter();
  MEMORY[0x259C64E90](v1);
  MEMORY[0x259C64E90](34, 0xE100000000000000);

  *(inited + 48) = 34;
  *(inited + 56) = 0xE100000000000000;
  *(inited + 64) = 0;
  v2 = LinkedModelConfiguration.searchPath.getter();
  if (v3)
  {
    MEMORY[0x259C64E90](v2);
    MEMORY[0x259C64E90](34, 0xE100000000000000);

    sub_257469AE0();
    inited = v4;
    *(v4 + 16) = 2;
    *(v4 + 72) = 0x5020686372616553;
    *(v4 + 80) = 0xEB00000000687461;
    *(v4 + 88) = 34;
    *(v4 + 96) = 0xE100000000000000;
    *(v4 + 104) = 0;
  }

  result = sub_2576AACFC(inited);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t LinkedModelConfiguration.fileName.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB8, &unk_2577766E0);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_14_31();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v12 = (v11 - v10);
  v13 = type metadata accessor for Proto_LinkedModelFile(0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_11_43();
  sub_257711390(v1 + *(v14 + 28), v0);
  OUTLINED_FUNCTION_35_0(v0);
  if (v16)
  {
    OUTLINED_FUNCTION_16_30();
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_35_0(v0);
    if (!v16)
    {
      sub_2574695E4(v0, &qword_27F87AFB8, &unk_2577766E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_0_101();
    v17 = OUTLINED_FUNCTION_292();
    sub_257711660(v17, v18, v19);
  }

  v20 = *v12;
  v21 = v12[1];

  OUTLINED_FUNCTION_7_45();
  return v20;
}

uint64_t sub_257711390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB8, &unk_2577766E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257711400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_257711458(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return LinkedModelConfiguration.fileName.setter(v1, v2);
}

uint64_t LinkedModelConfiguration.fileName.setter(uint64_t a1, uint64_t a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB8, &unk_2577766E0);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_15_29();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v17 = (v16 - v15);
  v18 = type metadata accessor for Proto_LinkedModelFile(0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_11_43();
  v21 = *(v19 + 28);
  sub_257711390(v3 + v21, v4);
  OUTLINED_FUNCTION_35_0(v4);
  if (v22)
  {
    *v17 = 0;
    v17[1] = 0xE000000000000000;
    v23 = v17 + *(v11 + 20);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_35_0(v4);
    if (!v22)
    {
      sub_2574695E4(v4, &qword_27F87AFB8, &unk_2577766E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_101();
    sub_257711660(v4, v17, v24);
  }

  v25 = v17[1];

  *v17 = a1;
  v17[1] = a2;
  sub_2574695E4(v3 + v21, &qword_27F87AFB8, &unk_2577766E0);
  OUTLINED_FUNCTION_0_101();
  sub_257711660(v17, v3 + v21, v26);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v11);
  sub_2574695E4(v2, &qword_27F87AFB0, &unk_25774BD30);
  OUTLINED_FUNCTION_6_56();
  type metadata accessor for Proto_LinkedModel.OneOf_LinkType(0);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
}

uint64_t sub_257711660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t (*LinkedModelConfiguration.fileName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = LinkedModelConfiguration.fileName.getter();
  a1[1] = v3;
  return sub_257711708;
}

uint64_t sub_257711708(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    v6 = OUTLINED_FUNCTION_292();
    LinkedModelConfiguration.fileName.setter(v6, v7);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_292();
    return LinkedModelConfiguration.fileName.setter(v9, v10);
  }
}

uint64_t LinkedModelConfiguration.searchPath.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB8, &unk_2577766E0);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_14_31();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v12 = (v11 - v10);
  v13 = type metadata accessor for Proto_LinkedModelFile(0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_11_43();
  sub_257711390(v1 + *(v14 + 32), v0);
  OUTLINED_FUNCTION_35_0(v0);
  if (v16)
  {
    OUTLINED_FUNCTION_16_30();
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_35_0(v0);
    if (!v16)
    {
      sub_2574695E4(v0, &qword_27F87AFB8, &unk_2577766E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_0_101();
    v17 = OUTLINED_FUNCTION_292();
    sub_257711660(v17, v18, v19);
  }

  v20 = *v12;
  v21 = v12[1];

  OUTLINED_FUNCTION_7_45();
  return v20;
}

uint64_t sub_2577118C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return LinkedModelConfiguration.searchPath.setter(v1, v2);
}

uint64_t LinkedModelConfiguration.searchPath.setter(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB8, &unk_2577766E0);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_15_29();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = (v15 - v14);
  v17 = type metadata accessor for Proto_LinkedModelFile(0);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v40 - v24;
  if (a2)
  {
    sub_2574DAF10();
    v26 = *(v17 + 24);
    sub_257711390(&v25[v26], v3);
    if (__swift_getEnumTagSinglePayload(v3, 1, v10) == 1)
    {
      *v16 = 0;
      v16[1] = 0xE000000000000000;
      v27 = v16 + *(v10 + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      if (__swift_getEnumTagSinglePayload(v3, 1, v10) != 1)
      {
        sub_2574695E4(v3, &qword_27F87AFB8, &unk_2577766E0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_101();
      sub_257711660(v3, v16, v29);
    }

    v30 = v16[1];

    *v16 = a1;
    v16[1] = a2;
    sub_2574695E4(&v25[v26], &qword_27F87AFB8, &unk_2577766E0);
    OUTLINED_FUNCTION_0_101();
    sub_257711660(v16, &v25[v26], v31);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v10);
  }

  else
  {
    sub_2574DAF10();
    v28 = *(v17 + 24);
    sub_2574695E4(&v23[v28], &qword_27F87AFB8, &unk_2577766E0);
    __swift_storeEnumTagSinglePayload(&v23[v28], 1, 1, v10);
  }

  sub_2574695E4(v2, &qword_27F87AFB0, &unk_25774BD30);
  OUTLINED_FUNCTION_6_56();
  type metadata accessor for Proto_LinkedModel.OneOf_LinkType(0);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
}

uint64_t (*LinkedModelConfiguration.searchPath.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = LinkedModelConfiguration.searchPath.getter();
  a1[1] = v3;
  return sub_257711BA8;
}

uint64_t sub_257711BA8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    v6 = OUTLINED_FUNCTION_292();
    LinkedModelConfiguration.searchPath.setter(v6, v7);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_292();
    return LinkedModelConfiguration.searchPath.setter(v9, v10);
  }
}

uint64_t LinkedModelConfiguration.init(fileName:searchPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for Proto_LinkedModel.OneOf_LinkType(0);
  v6 = OUTLINED_FUNCTION_55_0();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = a3 + *(type metadata accessor for Proto_LinkedModel(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  LinkedModelConfiguration.fileName.setter(a1, a2);
  v9 = OUTLINED_FUNCTION_292();
  return LinkedModelConfiguration.searchPath.setter(v9, v10);
}

uint64_t LinkedModelConfiguration.hash(into:)()
{
  type metadata accessor for Proto_LinkedModel(0);
  OUTLINED_FUNCTION_5_56();
  sub_257712194(v0, v1);

  return sub_2577435F4();
}

uint64_t LinkedModelConfiguration.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_LinkedModel(0);
  OUTLINED_FUNCTION_5_56();
  sub_257712194(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257711D8C()
{
  sub_257743A14();
  type metadata accessor for Proto_LinkedModel(0);
  sub_257712194(&qword_27F87AFE8, type metadata accessor for Proto_LinkedModel);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t LinkedModelConfiguration.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = type metadata accessor for LinkedModelConfiguration();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  sub_25771209C(v0, v18 - v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_257743FF0;
  *(v19 + 32) = 0x656D614E656C6966;
  *(v19 + 40) = 0xE800000000000000;
  v20 = LinkedModelConfiguration.fileName.getter();
  v21 = MEMORY[0x277D837D0];
  *(v19 + 48) = v20;
  *(v19 + 56) = v22;
  *(v19 + 72) = v21;
  *(v19 + 80) = 0x6150686372616573;
  *(v19 + 88) = 0xEA00000000006874;
  v23 = LinkedModelConfiguration.searchPath.getter();
  v25 = v24;
  *(v19 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881760, &qword_2577766F0);
  *(v19 + 96) = v23;
  *(v19 + 104) = v25;
  v26 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v26);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for LinkedModelConfiguration()
{
  result = qword_281537A10;
  if (!qword_281537A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25771209C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkedModelConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257712194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257712204()
{
  result = type metadata accessor for Proto_LinkedModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_80()
{

  return sub_257711400(v0, type metadata accessor for Proto_LinkedModelFile);
}

uint64_t OUTLINED_FUNCTION_6_56()
{

  return sub_257711660(v1, v0, type metadata accessor for Proto_LinkedModelFile);
}

uint64_t OUTLINED_FUNCTION_7_45()
{

  return sub_257711400(v0, type metadata accessor for Proto_StringParameter);
}

uint64_t OUTLINED_FUNCTION_11_43()
{

  return sub_2574DAF10();
}

uint64_t OUTLINED_FUNCTION_14_31()
{

  return type metadata accessor for Proto_StringParameter(0);
}

uint64_t OUTLINED_FUNCTION_15_29()
{

  return type metadata accessor for Proto_StringParameter(0);
}

uint64_t OUTLINED_FUNCTION_16_30()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v3 = v0 + *(v1 + 20);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t NeuralNetwork.Layer.ConcatenateNDParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257743FF0;
  *(v1 + 32) = 1936291905;
  *(v1 + 40) = 0xE400000000000000;
  v6 = *v0;
  *(v1 + 48) = sub_257743974();
  *(v1 + 56) = v2;
  *(v1 + 64) = 0xD000000000000011;
  *(v1 + 72) = 0x8000000257781510;
  v3 = 1702195828;
  if (!*(v0 + 8))
  {
    v3 = 0x65736C6166;
  }

  v4 = 0xE500000000000000;
  if (*(v0 + 8))
  {
    v4 = 0xE400000000000000;
  }

  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  return v1;
}

uint64_t static NeuralNetwork.Layer.concatenateND(name:inputNames:outputName:axis:interleave:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v24[1] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v14 = OUTLINED_FUNCTION_42_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2577442B0;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  *v19 = 0;
  *(v19 + 8) = 0;
  LODWORD(a2) = *(type metadata accessor for Proto_ConcatNDLayerParams(0) + 24);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v19 = a4;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v21 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a5 + v21) = qword_27F87BEE8;

  sub_257528334();

  sub_2575283BC();
  sub_25752842C(v20);
  sub_2574897E0(v12);
  v22 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v22);
  sub_25752846C();
  return sub_257634BB4(v19);
}

uint64_t static NeuralNetwork.Layer.Kind.concatenateND(axis:interleave:)@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 + *(OUTLINED_FUNCTION_1_81(a1) + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v1;
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.ConcatenateNDParameters.init(axis:interleave:)@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 + *(OUTLINED_FUNCTION_1_81(a1) + 24);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v1;
  return result;
}

uint64_t (*NeuralNetwork.Layer.ConcatenateNDParameters.axis.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257636A44;
}

_BYTE *(*NeuralNetwork.Layer.ConcatenateNDParameters.interleaveInputs.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return sub_25766FBF8;
}

BOOL static NeuralNetwork.Layer.ConcatenateNDParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v2 = *(type metadata accessor for Proto_ConcatNDLayerParams(0) + 24);
    sub_2577431B4();
    sub_257712B60(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ConcatenateNDParameters.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for NeuralNetwork.Layer.ConcatenateNDParameters();
  v13 = OUTLINED_FUNCTION_42_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_257712AB4(v1, v17 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_257743FF0;
  *(v18 + 32) = 1936291937;
  *(v18 + 40) = 0xE400000000000000;
  v19 = MEMORY[0x277D83B88];
  *(v18 + 48) = *v1;
  *(v18 + 72) = v19;
  *(v18 + 80) = 0xD000000000000010;
  *(v18 + 88) = 0x8000000257781EF0;
  v20 = *(v1 + 8);
  *(v18 + 120) = MEMORY[0x277D839B0];
  *(v18 + 96) = v20;
  v21 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v21);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.ConcatenateNDParameters()
{
  result = qword_27F881770;
  if (!qword_27F881770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257712AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.ConcatenateNDParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257712B60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257712BD4()
{
  result = type metadata accessor for Proto_ConcatNDLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_81@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;

  return type metadata accessor for Proto_ConcatNDLayerParams(0);
}

uint64_t sub_257712C64(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_9_42();
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A068, &qword_2577449A0);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v16);
  sub_257714A18(a1, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2574695E4(v11, &qword_27F87A068, &qword_2577449A0);
    v17 = v1 + *(type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0) + 20);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v1 = 2;
    *(v1 + 8) = 1;
    OUTLINED_FUNCTION_1_82();
    sub_25771417C();
    type metadata accessor for VisionFeaturePrintKind(0);
    OUTLINED_FUNCTION_18_1();
    swift_storeEnumTagMultiPayload();
    return OUTLINED_FUNCTION_12_45();
  }

  else
  {
    OUTLINED_FUNCTION_12_45();
    sub_25771417C();
    sub_25771417C();
    return sub_257713320();
  }
}

void sub_257712E44()
{
  OUTLINED_FUNCTION_31();
  v1 = type metadata accessor for VisionFeaturePrintKind.ObjectParameters(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_6();
  v5 = OUTLINED_FUNCTION_9_42();
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = (v9 - v8);
  v11 = type metadata accessor for VisionFeaturePrintKind(0);
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_2_69();
  sub_2577143F4();
  OUTLINED_FUNCTION_211();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_1_82();
    sub_25771417C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257743FF0;
    *(inited + 32) = 1684957515;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = xmmword_257776870;
    *(inited + 64) = 0;
    *(inited + 72) = 0x6E6F6973726556;
    *(inited + 80) = 0xE700000000000000;
    v37 = *v10;
    *(inited + 88) = sub_257743674();
    *(inited + 96) = v30;
    *(inited + 104) = 0;
    sub_2576A6964(inited);
    OUTLINED_FUNCTION_0_102();
    v32 = v10;
LABEL_13:
    sub_2577141D8(v32, v31);
    OUTLINED_FUNCTION_35();
    return;
  }

  OUTLINED_FUNCTION_4_62();
  sub_25771417C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_2577442C0;
  *(v15 + 32) = 1684957515;
  *(v15 + 40) = 0xE400000000000000;
  *(v15 + 48) = xmmword_257776880;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0x6E6F6973726556;
  *(v15 + 80) = 0xE700000000000000;
  v16 = *v0;
  if (*(v0 + 8))
  {
    v17 = *v0 != 0;
  }

  *(v15 + 88) = sub_257743674();
  *(v15 + 96) = v18;
  *(v15 + 104) = 0;
  *(v15 + 112) = 0x7374757074754FLL;
  *(v15 + 120) = 0xE700000000000000;
  v19 = *(v0 + 16);
  v20 = *(v19 + 16);
  v21 = MEMORY[0x277D84F90];
  if (!v20)
  {
LABEL_12:
    *(v15 + 128) = v21;
    *(v15 + 136) = 0;
    *(v15 + 144) = 1;
    sub_2576A6964(v15);
    OUTLINED_FUNCTION_8_44();
    v32 = v0;
    goto LABEL_13;
  }

  v33 = v15;
  v34 = v0;
  v36 = MEMORY[0x277D84F90];
  sub_257484040(0, v20, 0);
  v22 = 0;
  v21 = v36;
  v23 = (v19 + 40);
  v35 = v20;
  while (v22 < *(v19 + 16))
  {
    v24 = *(v23 - 1);
    v25 = *v23;
    v26 = *(v36 + 16);
    v27 = *(v36 + 24);

    if (v26 >= v27 >> 1)
    {
      sub_257484040((v27 > 1), v26 + 1, 1);
    }

    ++v22;
    *(v36 + 16) = v26 + 1;
    v28 = v36 + 24 * v26;
    *(v28 + 32) = v24;
    *(v28 + 40) = v25;
    *(v28 + 48) = 0;
    v23 += 2;
    if (v35 == v22)
    {
      v15 = v33;
      v0 = v34;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t VisionFeaturePrintKind.ObjectParameters.version.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_2577131AC()
{
  v0 = OUTLINED_FUNCTION_16_1();
  v1 = type metadata accessor for VisionFeaturePrintKind.ObjectParameters(v0);
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_9_42();
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = type metadata accessor for VisionFeaturePrintKind(0);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_2_69();
  sub_2577143F4();
  OUTLINED_FUNCTION_211();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_4_62();
  }

  else
  {
    OUTLINED_FUNCTION_1_82();
  }

  sub_25771417C();
  sub_25771417C();
  type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  OUTLINED_FUNCTION_18_1();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_257713320()
{
  type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  OUTLINED_FUNCTION_18_1();
  swift_getEnumCaseMultiPayload();
  sub_25771417C();
  type metadata accessor for VisionFeaturePrintKind(0);

  return swift_storeEnumTagMultiPayload();
}

void static VisionFeaturePrintKind.scene(version:)()
{
  v0 = OUTLINED_FUNCTION_9_42();
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = v4 - v3 + *(type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  sub_2575332FC();
  if ((v8 & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    *v5 = v7;
    *(v5 + 8) = v8 & 1;
    OUTLINED_FUNCTION_1_82();
    sub_25771417C();
    type metadata accessor for VisionFeaturePrintKind(0);
    OUTLINED_FUNCTION_18_1();
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t VisionFeaturePrintKind.SceneParameters.init(version:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0) + 20);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a1;
  *(a2 + 8) = a1 < 3;
  return result;
}

void static VisionFeaturePrintKind.object(version:outputs:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_1();
  v5 = *(type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(v4) + 24);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  sub_25753095C();
  if ((v7 & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    *v2 = v6;
    *(v2 + 8) = v7 & 1;
    *(v2 + 16) = a2;
    type metadata accessor for VisionFeaturePrintKind(0);
    OUTLINED_FUNCTION_18_1();

    swift_storeEnumTagMultiPayload();
  }
}

void VisionFeaturePrintKind.ObjectParameters.init(version:outputs:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(0) + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  sub_25753095C();
  if ((v6 & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = v5;
    *(a2 + 8) = v6 & 1;
    *(a2 + 16) = a1;
  }
}

void static VisionFeaturePrintKind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = type metadata accessor for VisionFeaturePrintKind.ObjectParameters(0);
  v26 = OUTLINED_FUNCTION_13(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7_6();
  v29 = OUTLINED_FUNCTION_9_42();
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v34 = v33 - v32;
  v35 = type metadata accessor for VisionFeaturePrintKind(0);
  v36 = OUTLINED_FUNCTION_4(v35);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &a9 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = &a9 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881780, &unk_257776890);
  OUTLINED_FUNCTION_13(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_29();
  v48 = MEMORY[0x28223BE20](v47);
  v50 = &a9 - v49;
  v51 = *(v48 + 56);
  sub_2577143F4();
  sub_2577143F4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_69();
    sub_2577143F4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_4_62();
      sub_25771417C();
      v52 = *v41;
      v53 = *v20;
      if (v41[8])
      {
        v52 = *v41 != 0;
      }

      if (*(v20 + 8) == 1)
      {
        if (v53)
        {
          if (v52 != 1)
          {
            goto LABEL_22;
          }
        }

        else if (v52)
        {
LABEL_22:
          OUTLINED_FUNCTION_11_44();
          sub_2577141D8(v20, v66);
          v62 = v41;
          v61 = v24;
LABEL_23:
          sub_2577141D8(v62, v61);
          OUTLINED_FUNCTION_13_31();
          goto LABEL_24;
        }
      }

      else if (v52 != v53)
      {
        goto LABEL_22;
      }

      if (sub_257479C78(*(v41 + 2), *(v20 + 16)))
      {
        v63 = *(type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(0) + 24);
        v24 = sub_2577431B4();
        OUTLINED_FUNCTION_3_71();
        sub_2577143AC(v64, v65);
        sub_257743644();
      }

      goto LABEL_22;
    }

    OUTLINED_FUNCTION_8_44();
    v55 = v41;
  }

  else
  {
    OUTLINED_FUNCTION_2_69();
    sub_2577143F4();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_1_82();
      sub_25771417C();
      v56 = *(v34 + 8);
      if (sub_257487360(*v43, v43[8], *v34))
      {
        v57 = *(type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0) + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_3_71();
        sub_2577143AC(v58, v59);
        sub_257743644();
      }

      OUTLINED_FUNCTION_0_102();
      sub_2577141D8(v34, v60);
      OUTLINED_FUNCTION_0_102();
      v62 = v43;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_0_102();
    v55 = v43;
  }

  sub_2577141D8(v55, v54);
  sub_2574695E4(v50, &qword_27F881780, &unk_257776890);
LABEL_24:
  OUTLINED_FUNCTION_35();
}

uint64_t VisionFeaturePrintKind.hash(into:)()
{
  v1 = type metadata accessor for VisionFeaturePrintKind.ObjectParameters(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = OUTLINED_FUNCTION_9_42();
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_6();
  v11 = type metadata accessor for VisionFeaturePrintKind(0);
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_2_69();
  sub_2577143F4();
  OUTLINED_FUNCTION_211();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_4_62();
    sub_25771417C();
    MEMORY[0x259C651F0](1);
    type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(0);
    sub_2577143AC(&qword_27F880278, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects);
    OUTLINED_FUNCTION_72_0();
    sub_2577435F4();
    OUTLINED_FUNCTION_8_44();
    v16 = v7;
  }

  else
  {
    OUTLINED_FUNCTION_1_82();
    sub_25771417C();
    MEMORY[0x259C651F0](0);
    type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0);
    sub_2577143AC(&qword_27F880288, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene);
    OUTLINED_FUNCTION_72_0();
    sub_2577435F4();
    OUTLINED_FUNCTION_0_102();
    v16 = v0;
  }

  return sub_2577141D8(v16, v15);
}

uint64_t VisionFeaturePrintKind.hashValue.getter()
{
  sub_257743A14();
  VisionFeaturePrintKind.hash(into:)();
  return sub_257743A64();
}

uint64_t sub_257713BC4()
{
  sub_257743A14();
  VisionFeaturePrintKind.hash(into:)();
  return sub_257743A64();
}

void (*VisionFeaturePrintKind.SceneParameters.version.modify(void *a1))(uint64_t *a1)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257713C3C;
}

BOOL static VisionFeaturePrintKind.SceneParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  v1 = *v0;
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v1 != 1)
        {
          return 0;
        }
      }

      else if (v1 != 2)
      {
        return 0;
      }
    }

    else if (v1)
    {
      return 0;
    }
  }

  else if (v1 != v3)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0) + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_3_71();
  sub_2577143AC(v5, v6);
  return (OUTLINED_FUNCTION_4_2() & 1) != 0;
}

void VisionFeaturePrintKind.SceneParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v2 = sub_257743A84();
  v3 = OUTLINED_FUNCTION_21_31(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_6();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_6();
  v12 = type metadata accessor for VisionFeaturePrintKind.SceneParameters(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_2577143F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v16 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_15_30(v16, xmmword_2577442B0);
  v17[4].n128_u64[1] = MEMORY[0x277D83B88];
  v17[3].n128_u64[0] = v18;
  v19 = sub_257743A74();
  OUTLINED_FUNCTION_15_7(v19);
  (*(v5 + 104))(v1, *MEMORY[0x277D84C38], v0);
  OUTLINED_FUNCTION_19_32();
  OUTLINED_FUNCTION_35();
}

void (*VisionFeaturePrintKind.ObjectParameters.version.modify(void *a1))(uint64_t *a1)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
  a1[1] = v1;
  return sub_257713FD8;
}

uint64_t sub_257713FE4(uint64_t *a1)
{
  v1 = *a1;

  return VisionFeaturePrintKind.ObjectParameters.outputs.setter(v2);
}

uint64_t VisionFeaturePrintKind.ObjectParameters.outputs.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t (*VisionFeaturePrintKind.ObjectParameters.outputs.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25766B8DC;
}

uint64_t static VisionFeaturePrintKind.ObjectParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  v4 = *v2;
  v5 = *v3;
  if (*(v2 + 8))
  {
    v4 = *v2 != 0;
  }

  if (*(v3 + 8) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (sub_257479C78(*(v1 + 16), *(v0 + 16)))
  {
    v6 = *(type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(0) + 24);
    sub_2577431B4();
    OUTLINED_FUNCTION_3_71();
    sub_2577143AC(v7, v8);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_25771417C()
{
  OUTLINED_FUNCTION_267();
  v3 = v2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_2577141D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_257714278(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_24_30();
  OUTLINED_FUNCTION_211();

  return sub_2577435F4();
}

uint64_t sub_257714328(void (*a1)(void))
{
  sub_257743A14();
  a1(0);
  OUTLINED_FUNCTION_24_30();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2577143AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2577143F4()
{
  OUTLINED_FUNCTION_267();
  v3 = v2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_257714498(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_257743A14();
  a4(0);
  OUTLINED_FUNCTION_24_30();
  sub_2577435F4();
  return sub_257743A64();
}

void VisionFeaturePrintKind.ObjectParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v2 = sub_257743A84();
  v3 = OUTLINED_FUNCTION_21_31(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_6();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_6();
  v12 = type metadata accessor for VisionFeaturePrintKind.ObjectParameters(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_2577143F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v16 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_15_30(v16, xmmword_257743FF0);
  if (*(v0 + 8))
  {
    v18 = v18;
  }

  v20 = MEMORY[0x277D83B88];
  v17[3].n128_u64[0] = v18;
  v17[4].n128_u64[1] = v20;
  v17[5].n128_u64[0] = 0x7374757074756FLL;
  v17[5].n128_u64[1] = v19;
  v21 = *(v0 + 16);
  v16[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  v16[6].n128_u64[0] = v21;
  v22 = sub_257743A74();
  OUTLINED_FUNCTION_15_7(v22);
  (*(v5 + 104))(v1, *MEMORY[0x277D84C38], v0);

  OUTLINED_FUNCTION_19_32();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2577148B4()
{
  result = type metadata accessor for VisionFeaturePrintKind.SceneParameters(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for VisionFeaturePrintKind.ObjectParameters(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2577149A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257714A18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A068, &qword_2577449A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_9_42()
{
  v0 = type metadata accessor for VisionFeaturePrintKind.SceneParameters(0);
  v2 = *(v0 - 8);
  return v0 - 8;
}

uint64_t OUTLINED_FUNCTION_12_45()
{

  return sub_2577141D8(v0, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint);
}

uint64_t OUTLINED_FUNCTION_13_31()
{

  return sub_2577141D8(v0, type metadata accessor for VisionFeaturePrintKind);
}

__n128 *OUTLINED_FUNCTION_15_30(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6E6F6973726576;
  result[2].n128_u64[1] = 0xE700000000000000;
  v3 = *v2;
  return result;
}

void OUTLINED_FUNCTION_16_31(uint64_t a1@<X8>)
{
  if (v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_18_41(uint64_t result)
{
  if (v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  *v2 = result;
  *(v2 + 8) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_32()
{

  return sub_257743AA4();
}

uint64_t OUTLINED_FUNCTION_24_30()
{

  return sub_2577143AC(v1, v0);
}

uint64_t NeuralNetwork.Layer.GRUParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257744E70;
  *(v1 + 32) = 0x6953207475706E49;
  *(v1 + 40) = 0xEA0000000000657ALL;
  v2 = *(v0 + *(type metadata accessor for Proto_GRULayerParams(0) + 20));
  OUTLINED_FUNCTION_296();
  v12 = *(v2 + 16);
  *(v1 + 48) = sub_257743974();
  *(v1 + 56) = v3;
  *(v1 + 64) = 0x532074757074754FLL;
  *(v1 + 72) = 0xEB00000000657A69;
  OUTLINED_FUNCTION_296();
  v11 = *(v2 + 24);
  *(v1 + 80) = sub_257743974();
  *(v1 + 88) = v4;
  *(v1 + 96) = 0x65636E6575716553;
  *(v1 + 104) = 0xEF74757074754F20;
  OUTLINED_FUNCTION_296();
  if (*(v2 + 40))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v2 + 40))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  *(v1 + 112) = v5;
  *(v1 + 120) = v6;
  strcpy((v1 + 128), "Reverse Input");
  *(v1 + 142) = -4864;
  v7 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput;
  OUTLINED_FUNCTION_296();
  if (*(v2 + v7))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v2 + v7))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  *(v1 + 144) = v8;
  *(v1 + 152) = v9;
  return v1;
}

uint64_t NeuralNetwork.Layer.GRUParameters.namedWeights.getter()
{
  v1 = v0;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v273 = *(v272 - 8);
  v2 = *(v273 + 64);
  MEMORY[0x28223BE20](v272);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v10);
  v247 = (&v245 - v11);
  v12 = type metadata accessor for Proto_WeightParams(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v21);
  v23 = &v245 - v22;
  v24 = type metadata accessor for NeuralNetwork.WeightParameters();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v33);
  v35 = (&v245 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  v52 = MEMORY[0x28223BE20](v51);
  v54 = &v245 - v53;
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v245 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v60 = &v245 - v59;
  MEMORY[0x28223BE20](v58);
  v62 = &v245 - v61;
  v63 = *(v1 + *(type metadata accessor for Proto_GRULayerParams(0) + 20));
  v64 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateWeightMatrix;
  OUTLINED_FUNCTION_296();
  sub_25749E8D0(v63 + v64, v62);
  OUTLINED_FUNCTION_7_46(v62);
  sub_25749E940(v62);
  v65 = MEMORY[0x277D84F90];
  if (v1 != 1)
  {
    sub_25749E8D0(v63 + v64, v60);
    OUTLINED_FUNCTION_34_0(v60);
    if (v66)
    {
      *v23 = MEMORY[0x277D84F90];
      *(v23 + 8) = xmmword_257745740;
      *(v23 + 24) = xmmword_257745740;
      *(v23 + 40) = xmmword_257745740;
      v23[56] = 0;
      v67 = &v23[*(v12 + 36)];
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v68 = OUTLINED_FUNCTION_19_33();
      OUTLINED_FUNCTION_25_5(&v23[v1], v69, v70, v68);
      OUTLINED_FUNCTION_34_0(v60);
      if (!v66)
      {
        sub_25749E940(v60);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      sub_25749EA18(v60, v23, v71);
    }

    sub_2576FF45C(v23, v35);
    v72 = *(v272 + 48);
    v73 = v247;
    *v247 = 0x657461647055;
    *(v73 + 8) = 0xE600000000000000;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v35, v73 + v74, v75);
    sub_257469D34();
    v65 = v76;
    v1 = *(v76 + 16);
    if (v1 >= *(v76 + 24) >> 1)
    {
      sub_257469D34();
      v65 = v228;
    }

    v77 = v273;
    *(v65 + 16) = v1 + 1;
    sub_25749E9A8(v73, v65 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v1);
  }

  v78 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateWeightMatrix;
  OUTLINED_FUNCTION_296();
  sub_25749E8D0(v78 + v63, v57);
  OUTLINED_FUNCTION_7_46(v57);
  sub_25749E940(v57);
  if (v1 == 1)
  {
    v79 = v272;
    v80 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_25749E8D0(v78 + v63, v54);
    OUTLINED_FUNCTION_34_0(v54);
    v79 = v272;
    if (v66)
    {
      v80 = MEMORY[0x277D84F90];
      v81 = v248;
      *v248 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_11_45(xmmword_257745740);
      v82 = OUTLINED_FUNCTION_19_33();
      v83 = v81 + v1;
      v1 = v81;
      OUTLINED_FUNCTION_25_5(v83, v84, v85, v82);
      OUTLINED_FUNCTION_34_0(v54);
      v78 = v249;
      if (!v66)
      {
        sub_25749E940(v54);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_29_10(&v267);
      sub_25749EA18(v86, v87, v88);
      v80 = MEMORY[0x277D84F90];
      v78 = v249;
    }

    v89 = v246;
    sub_2576FF45C(v1, v246);
    OUTLINED_FUNCTION_18_42();
    *v78 = v90 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    v78[1] = 0xE500000000000000;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v89, v78 + v91, v92);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_57();
      v65 = v229;
    }

    OUTLINED_FUNCTION_12_46();
    if (v93)
    {
      OUTLINED_FUNCTION_6_57();
      v65 = v230;
    }

    OUTLINED_FUNCTION_2_70();
    sub_25749E9A8(v78, v94 + v95 * v89);
  }

  v96 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateWeightMatrix;
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_180(v287);
  sub_25749E8D0(v97, v98);
  OUTLINED_FUNCTION_7_46(v78);
  sub_25749E940(v78);
  if (v1 == 1)
  {
    v99 = v267;
  }

  else
  {
    OUTLINED_FUNCTION_29_10(v284);
    sub_25749E8D0(v100, v101);
    OUTLINED_FUNCTION_34_0(v1);
    v99 = v267;
    if (v66)
    {
      v96 = v250;
      *v250 = v80;
      OUTLINED_FUNCTION_6_3(xmmword_257745740);
      v102 = OUTLINED_FUNCTION_19_33();
      v103 = v96 + v1;
      v1 = v260;
      OUTLINED_FUNCTION_25_5(v103, v104, v105, v102);
      OUTLINED_FUNCTION_34_0(v1);
      if (!v66)
      {
        sub_25749E940(v1);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_38_6(&v270);
      sub_25749EA18(v106, v107, v108);
    }

    OUTLINED_FUNCTION_20_26(&v268);
    sub_2576FF45C(v96, v109);
    OUTLINED_FUNCTION_21_32();
    v110 = v263;
    *v263 = v111;
    v110[1] = 0xE600000000000000;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v1, v113 + v112, v114);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_57();
      v65 = v231;
    }

    OUTLINED_FUNCTION_12_46();
    if (v93)
    {
      OUTLINED_FUNCTION_6_57();
      v65 = v232;
    }

    OUTLINED_FUNCTION_2_70();
    sub_25749E9A8(v263, v115 + v116 * v96);
  }

  v117 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateRecursionMatrix;
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_38_6(v288);
  sub_25749E8D0(v118, v119);
  OUTLINED_FUNCTION_7_46(v96);
  sub_25749E940(v96);
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_180(&v271);
    sub_25749E8D0(v120, v121);
    OUTLINED_FUNCTION_34_0(v117);
    if (v66)
    {
      v96 = v252;
      *v252 = v80;
      OUTLINED_FUNCTION_6_3(xmmword_257745740);
      v122 = OUTLINED_FUNCTION_19_33();
      OUTLINED_FUNCTION_25_5(v96 + v1, v123, v124, v122);
      OUTLINED_FUNCTION_34_0(v117);
      if (!v66)
      {
        sub_25749E940(v117);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_38_6(&v273);
      sub_25749EA18(v125, v126, v127);
    }

    v1 = 0x8000000257781F30;
    v128 = v251;
    sub_2576FF45C(v96, v251);
    v129 = *(v79 + 48);
    v130 = v264;
    *v264 = 0xD000000000000010;
    v130[1] = 0x8000000257781F30;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v128, v132 + v131, v133);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_57();
      v65 = v233;
    }

    OUTLINED_FUNCTION_13_32();
    if (v93)
    {
      OUTLINED_FUNCTION_6_57();
      v65 = v234;
    }

    OUTLINED_FUNCTION_2_70();
    sub_25749E9A8(v264, v134 + v135 * v128);
  }

  v136 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateRecursionMatrix;
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_38_6(v289);
  sub_25749E8D0(v137, v138);
  OUTLINED_FUNCTION_7_46(v96);
  sub_25749E940(v96);
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_180(v274);
    sub_25749E8D0(v139, v140);
    OUTLINED_FUNCTION_34_0(v136);
    if (v66)
    {
      v96 = v253;
      *v253 = v80;
      OUTLINED_FUNCTION_6_3(xmmword_257745740);
      v141 = OUTLINED_FUNCTION_19_33();
      OUTLINED_FUNCTION_25_5(v96 + v1, v142, v143, v141);
      OUTLINED_FUNCTION_34_0(v136);
      if (!v66)
      {
        sub_25749E940(v136);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_38_6(v276);
      sub_25749EA18(v144, v145, v146);
    }

    OUTLINED_FUNCTION_20_26(v275);
    sub_2576FF45C(v96, v147);
    OUTLINED_FUNCTION_18_42();
    v149 = v266;
    *v266 = v148 | 0x6552207400000000;
    v149[1] = 0xEF6E6F6973727563;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v1, v151 + v150, v152);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_57();
      v65 = v235;
    }

    OUTLINED_FUNCTION_13_32();
    if (v93)
    {
      OUTLINED_FUNCTION_6_57();
      v65 = v236;
    }

    OUTLINED_FUNCTION_2_70();
    sub_25749E9A8(v266, v153 + v154 * v136);
  }

  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_38_6(v290);
  sub_25749E8D0(v155, v156);
  OUTLINED_FUNCTION_7_46(v96);
  sub_25749E940(v96);
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_38_6(v277);
    sub_25749E8D0(v157, v158);
    OUTLINED_FUNCTION_34_0(v96);
    if (v66)
    {
      *v99 = v80;
      *(v99 + 8) = xmmword_257745740;
      *(v99 + 24) = xmmword_257745740;
      *(v99 + 40) = xmmword_257745740;
      *(v99 + 56) = 0;
      v159 = v99 + *(v12 + 36);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v160 = OUTLINED_FUNCTION_19_33();
      OUTLINED_FUNCTION_25_5(v99 + v1, v161, v162, v160);
      OUTLINED_FUNCTION_34_0(v96);
      v164 = v255;
      if (!v66)
      {
        sub_25749E940(v96);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      sub_25749EA18(v96, v99, v163);
      v164 = v255;
    }

    v1 = 0x8000000257781F10;
    v165 = v254;
    sub_2576FF45C(v99, v254);
    v166 = *(v79 + 48);
    *v164 = 0xD000000000000010;
    v164[1] = 0x8000000257781F10;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v165, v164 + v167, v168);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_57();
      v65 = v237;
    }

    OUTLINED_FUNCTION_12_46();
    if (v93)
    {
      OUTLINED_FUNCTION_6_57();
      v65 = v238;
    }

    OUTLINED_FUNCTION_2_70();
    sub_25749E9A8(v164, v169 + v170 * v165);
  }

  v171 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateBiasVector;
  OUTLINED_FUNCTION_296();
  v172 = v265;
  sub_25749E8D0(v63 + v171, v265);
  OUTLINED_FUNCTION_7_46(v172);
  sub_25749E940(v172);
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_29_10(v285);
    sub_25749E8D0(v173, v174);
    OUTLINED_FUNCTION_34_0(v1);
    if (v66)
    {
      v171 = v256;
      *v256 = v80;
      OUTLINED_FUNCTION_11_45(xmmword_257745740);
      v175 = OUTLINED_FUNCTION_19_33();
      v176 = v171 + v1;
      v1 = v261;
      OUTLINED_FUNCTION_25_5(v176, v177, v178, v175);
      OUTLINED_FUNCTION_34_0(v1);
      if (!v66)
      {
        sub_25749E940(v1);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_180(v279);
      sub_25749EA18(v179, v180, v181);
    }

    OUTLINED_FUNCTION_20_26(v278);
    sub_2576FF45C(v171, v182);
    v183 = *(v79 + 48);
    v184 = v269;
    *v269 = 0x4220657461647055;
    v184[1] = 0xEB00000000736169;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v1, v186 + v185, v187);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_57();
      v65 = v239;
    }

    OUTLINED_FUNCTION_13_32();
    if (v93)
    {
      OUTLINED_FUNCTION_6_57();
      v65 = v240;
    }

    OUTLINED_FUNCTION_2_70();
    sub_25749E9A8(v269, v188 + v189 * v171);
  }

  v190 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateBiasVector;
  OUTLINED_FUNCTION_296();
  v191 = v268;
  sub_25749E8D0(v63 + v190, v268);
  OUTLINED_FUNCTION_7_46(v191);
  sub_25749E940(v191);
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_29_10(v286);
    sub_25749E8D0(v192, v193);
    OUTLINED_FUNCTION_34_0(v1);
    if (v66)
    {
      v190 = v257;
      *v257 = v80;
      OUTLINED_FUNCTION_11_45(xmmword_257745740);
      v194 = OUTLINED_FUNCTION_19_33();
      v195 = v190 + v1;
      v1 = v262;
      OUTLINED_FUNCTION_25_5(v195, v196, v197, v194);
      OUTLINED_FUNCTION_34_0(v1);
      if (!v66)
      {
        sub_25749E940(v1);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_180(v281);
      sub_25749EA18(v198, v199, v200);
    }

    OUTLINED_FUNCTION_20_26(v280);
    sub_2576FF45C(v190, v201);
    OUTLINED_FUNCTION_18_42();
    v203 = v271;
    *v271 = v202 | 0x6942207400000000;
    v203[1] = 0xEA00000000007361;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v1, v205 + v204, v206);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_57();
      v65 = v241;
    }

    OUTLINED_FUNCTION_13_32();
    if (v93)
    {
      OUTLINED_FUNCTION_6_57();
      v65 = v242;
    }

    OUTLINED_FUNCTION_2_70();
    sub_25749E9A8(v271, v207 + v208 * v190);
  }

  v209 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateBiasVector;
  OUTLINED_FUNCTION_296();
  v210 = v270;
  sub_25749E8D0(v63 + v209, v270);
  OUTLINED_FUNCTION_7_46(v210);
  sub_25749E940(v210);
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_180(v282);
    sub_25749E8D0(v211, v212);
    OUTLINED_FUNCTION_34_0(v209);
    if (v66)
    {
      v218 = v258;
      *v258 = v80;
      *(v218 + 1) = xmmword_257745740;
      *(v218 + 3) = xmmword_257745740;
      *(v218 + 5) = xmmword_257745740;
      *(v218 + 56) = 0;
      v213 = v218 + *(v12 + 36);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v214 = OUTLINED_FUNCTION_19_33();
      OUTLINED_FUNCTION_25_5(v218 + v1, v215, v216, v214);
      OUTLINED_FUNCTION_34_0(v209);
      v217 = v209;
      v220 = v259;
      if (!v66)
      {
        sub_25749E940(v217);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      v218 = v258;
      sub_25749EA18(v209, v258, v219);
      v220 = v259;
    }

    OUTLINED_FUNCTION_20_26(v283);
    sub_2576FF45C(v218, v221);
    OUTLINED_FUNCTION_21_32();
    *v220 = v222 & 0xFFFFFFFFFFFFLL | 0x4220000000000000;
    v220[1] = 0xEB00000000736169;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v1, v220 + v223, v224);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_57();
      v65 = v243;
    }

    OUTLINED_FUNCTION_12_46();
    if (v93)
    {
      OUTLINED_FUNCTION_6_57();
      v65 = v244;
    }

    OUTLINED_FUNCTION_2_70();
    sub_25749E9A8(v220, v225 - 0x14FFFFFFFF8C9E97 * v226);
  }

  return v65;
}

uint64_t NeuralNetwork.Layer.GRUParameters.init()@<X0>(uint64_t a1@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v2 = *(type metadata accessor for Proto_GRULayerParams(0) + 20);
  if (qword_27F879578 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27F87BF30;
}

unint64_t sub_25771605C()
{
  result = qword_27F87DF00;
  if (!qword_27F87DF00)
  {
    type metadata accessor for Proto_GRULayerParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87DF00);
  }

  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.GRUParameters()
{
  result = qword_27F8817C0;
  if (!qword_27F8817C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257716128()
{
  result = type metadata accessor for Proto_GRULayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_2_70()
{
  *(v2 + 16) = v0;
  v3 = v2 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v4 = *(v1 + 72);
}

void OUTLINED_FUNCTION_5_57()
{
  v2 = *(v0 + 16) + 1;

  sub_257469D34();
}

void OUTLINED_FUNCTION_6_57()
{

  sub_257469D34();
}

uint64_t OUTLINED_FUNCTION_11_45(__n128 a1)
{
  *(v1 + 8) = a1;
  *(v1 + 24) = a1;
  *(v1 + 40) = a1;
  *(v1 + 56) = 0;
  v4 = v1 + *(v2 + 36);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_19_33()
{
  v2 = *(v0 + 40);

  return type metadata accessor for Proto_QuantizationParams(0);
}

__n128 Diagnostic.init(severity:kind:property:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a2[1].n128_u8[0];
  *a5 = *a1;
  result = *a2;
  *(a5 + 8) = *a2;
  *(a5 + 24) = v5;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

uint64_t Diagnostic.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_257466F40(v2, v3, v4);
}

uint64_t Diagnostic.kind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_257467018(*(v1 + 8), *(v1 + 16), *(v1 + 24));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t Diagnostic.property.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_205();
}

uint64_t Diagnostic.property.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t static Diagnostic.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  v7 = *(a2 + 1);
  v6 = *(a2 + 2);
  v9 = *(a1 + 1);
  v8 = *(a1 + 2);
  v10 = a1[24];
  v11 = a2[24];
  v18[0] = v9;
  v18[1] = v8;
  v19 = v10;
  v15 = v2;
  v16[0] = v7;
  v16[1] = v6;
  v17 = v11;
  sub_257466F40(v9, v8, v10);
  sub_257466F40(v7, v6, v11);
  v12 = static Diagnostic.Kind.== infix(_:_:)(v18, v16);
  sub_257467018(v7, v6, v11);
  sub_257467018(v9, v8, v10);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (v15 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_257743994();
}

uint64_t Diagnostic.Severity.hashValue.getter()
{
  v1 = *v0;
  sub_257743A14();
  MEMORY[0x259C651F0](v1);
  return sub_257743A64();
}

uint64_t static Diagnostic.Kind.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v7 != 1)
      {
        goto LABEL_53;
      }

      v32 = OUTLINED_FUNCTION_205();
      sub_257467018(v32, v33, 1);
      v34 = OUTLINED_FUNCTION_263();
      sub_257467018(v34, v35, 1);
      return v2 == v5 && v3 == v6;
    case 2:
      if (v7 == 2)
      {
        v13 = *a1;
        if (v2 != v5 || v3 != v6)
        {
          v15 = sub_257743994();
          v16 = OUTLINED_FUNCTION_263();
          sub_257466F40(v16, v17, 2);
          v18 = OUTLINED_FUNCTION_0_103();
          sub_257466F40(v18, v19, v20);
          v21 = OUTLINED_FUNCTION_0_103();
          sub_257467018(v21, v22, v23);
          v24 = OUTLINED_FUNCTION_263();
          sub_257467018(v24, v25, 2);
          return v15 & 1;
        }

        sub_257466F40(v13, v3, 2);
        v38 = OUTLINED_FUNCTION_0_103();
        sub_257466F40(v38, v39, v40);
        v41 = OUTLINED_FUNCTION_0_103();
        sub_257467018(v41, v42, v43);
        v31 = OUTLINED_FUNCTION_0_103();
LABEL_45:
        sub_257467018(v31, v44, v45);
        return 1;
      }

      else
      {
        v37 = *(a1 + 8);

LABEL_53:
        v56 = OUTLINED_FUNCTION_263();
        sub_257466F40(v56, v57, v7);
        v58 = OUTLINED_FUNCTION_205();
        sub_257467018(v58, v59, v4);
        v60 = OUTLINED_FUNCTION_263();
        sub_257467018(v60, v61, v7);
        return 0;
      }

    case 3:
      v27 = *a1;
      switch(v2)
      {
        case 1:
          if (v7 != 3 || v5 != 1 || v6 != 0)
          {
            goto LABEL_53;
          }

          v62 = OUTLINED_FUNCTION_205();
          sub_257467018(v62, v63, 3);
          v36 = 1;
          sub_257467018(1, 0, 3);
          return v36;
        case 2:
          if (v7 != 3 || v5 != 2 || v6 != 0)
          {
            goto LABEL_53;
          }

          v48 = OUTLINED_FUNCTION_205();
          sub_257467018(v48, v49, 3);
          v31 = 2;
          goto LABEL_44;
        case 3:
          if (v7 != 3 || v5 != 3 || v6 != 0)
          {
            goto LABEL_53;
          }

          v52 = OUTLINED_FUNCTION_205();
          sub_257467018(v52, v53, 3);
          v31 = 3;
          goto LABEL_44;
        default:
          if (v7 != 3 || (v6 | v5) != 0)
          {
            goto LABEL_53;
          }

          v29 = OUTLINED_FUNCTION_205();
          sub_257467018(v29, v30, 3);
          v31 = 0;
LABEL_44:
          v44 = 0;
          v45 = 3;
          break;
      }

      goto LABEL_45;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_53;
      }

      v8 = OUTLINED_FUNCTION_205();
      sub_257467018(v8, v9, 0);
      v10 = OUTLINED_FUNCTION_263();
      sub_257467018(v10, v11, 0);
      return v2 == v5;
  }
}

uint64_t Diagnostic.description.getter()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = v0[24];
  v5 = *(v0 + 5);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *(v0 + 4) & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v13 = *(v0 + 4);
    v14 = *(v0 + 5);

    MEMORY[0x259C64E90](8250, 0xE200000000000000);
  }

  else
  {
    v13 = 0;
  }

  v7 = 0xE700000000000000;
  v8 = 0x676E696E726177;
  if (v1 != 1)
  {
    v8 = 1868983913;
    v7 = 0xE400000000000000;
  }

  if (v1)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x726F727265;
  }

  if (v1)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x259C64E90](v9, v10);

  MEMORY[0x259C64E90](8250, 0xE200000000000000);
  v11 = Diagnostic.Kind.description.getter();
  MEMORY[0x259C64E90](v11);

  return v13;
}

uint64_t Diagnostic.Severity.description.getter()
{
  v1 = 0x676E696E726177;
  if (*v0 != 1)
  {
    v1 = 1868983913;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F727265;
  }
}

unint64_t Diagnostic.Kind.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  switch(*(v0 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_9_39();
      sub_257743834();
      MEMORY[0x259C64E90](0xD000000000000022, 0x8000000257782000);
      OUTLINED_FUNCTION_263();
      v9 = sub_257743974();
      MEMORY[0x259C64E90](v9);

      MEMORY[0x259C64E90](0xD000000000000022, 0x8000000257782030);
      OUTLINED_FUNCTION_263();
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_9_39();
      sub_257743834();

      OUTLINED_FUNCTION_5_58();
      v11 = v4 + 15;
      v5 = v2;
      v6 = v1;
      goto LABEL_8;
    case 3:
      v7 = *v0;
      switch(v2)
      {
        case 1:
          result = 0xD000000000000019;
          break;
        case 2:
          result = 0xD000000000000019;
          break;
        case 3:
          result = 0xD000000000000019;
          break;
        default:
          result = 0xD000000000000018;
          break;
      }

      return result;
    default:
      OUTLINED_FUNCTION_9_39();
      sub_257743834();

      OUTLINED_FUNCTION_5_58();
      v11 = v3 + 7;
LABEL_7:
      v10 = sub_257743974();
      MEMORY[0x259C64E90](v10);

      v5 = 46;
      v6 = 0xE100000000000000;
LABEL_8:
      MEMORY[0x259C64E90](v5, v6);
      return v11;
  }
}

unint64_t sub_257716BA8()
{
  result = qword_27F8817D0;
  if (!qword_27F8817D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8817D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20MLModelSpecification10DiagnosticV4KindO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_257716C38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_257716C78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Diagnostic.Severity(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_257716DA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_257716DE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_257716E2C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void sub_257716E7C(void *a1@<X8>)
{
  if (*(v1 + 24) == 1)
  {
    goto LABEL_5;
  }

  v3 = *v1;
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  ++*v1;
  v5 = v1[1];
  v4 = v1[2];
  v6 = *(v5 + 16);
  if (v4 != v6)
  {
    if (v4 < v6)
    {
      v10 = *(type metadata accessor for FeatureDescription() - 8);
      v11 = v4 + 1;
      v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v4;
      v1[2] = v11;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8817D8, &qword_257776DC0);
      v14 = *(v13 + 48);
      *a1 = v3;
      sub_2577179F4(v12, a1 + v14);
      v8 = a1;
      v9 = 0;
      v7 = v13;
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return;
  }

  *(v1 + 24) = 1;
LABEL_5:
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8817D8, &qword_257776DC0);
  v8 = a1;
  v9 = 1;
LABEL_8:

  __swift_storeEnumTagSinglePayload(v8, v9, 1, v7);
}

MLModelSpecification::Analysis __swiftcall Model.analysis()()
{
  v1 = MEMORY[0x277D84F90];
  *v0 = MEMORY[0x277D84F90];
  sub_257717050(&v3);
  sub_25763D14C(v3);
  sub_257717150(v1, &v3);
  sub_25763D14C(v3);
  sub_257717654(v1, &v3);
  sub_25763D14C(v3);
  return result;
}

void sub_257717050(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Proto_Model(0) + 20));
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4 <= 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    v6 = sub_257743604();
    v8 = v7;
    *a1 = v5;
    sub_25767A064();
    v9 = *(*a1 + 16);
    sub_25767A0B0(v9);
    v5 = *a1;
    *(v5 + 16) = v9 + 1;
    v10 = v5 + 48 * v9;
    *(v10 + 32) = 0;
    *(v10 + 40) = v4;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = v6;
    *(v10 + 72) = v8;
  }

  *a1 = v5;
}

uint64_t sub_257717150@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v59 = a1;
  v55 = a2;
  v5 = type metadata accessor for FeatureType.ShapedArrayParameters();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_3();
  v56 = v8 - v7;
  v58 = type metadata accessor for FeatureType(0);
  v9 = OUTLINED_FUNCTION_4(v58);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = type metadata accessor for FeatureDescription();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_3();
  v19 = (v18 - v17);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8817E0, &qword_257776DC8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = (&v54 - v22);
  v66 = MEMORY[0x277D84F90];
  Model.inputs.getter();
  v25 = *(v24 + 16);

  if (!v25)
  {
    v62 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    sub_257743604();
    sub_25746996C();
    v27 = v26;
    v3 = *(v26 + 16);
    if (v3 >= *(v26 + 24) >> 1)
    {
      sub_25746996C();
      v27 = v53;
    }

    *(v27 + 16) = v3 + 1;
    v28 = v27 + 48 * v3;
    *(v28 + 32) = 0;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    OUTLINED_FUNCTION_7_47(v27, v28);
  }

  Model.inputs.getter();
  v62 = 0;
  v63 = v29;
  v64 = 0;
  v65 = 0;
  v60 = xmmword_2577442B0;
  v57 = v14;
  while (1)
  {
    sub_257716E7C(v23);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8817D8, &qword_257776DC0);
    if (__swift_getEnumTagSinglePayload(v23, 1, v30) == 1)
    {
      break;
    }

    v31 = *v23;
    v32 = *(v30 + 48);
    OUTLINED_FUNCTION_0_104();
    sub_257717A58(v23 + v33, v19, v34);
    v35 = *v19;
    v36 = v19[1];
    v37 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v37 = *v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {
      OUTLINED_FUNCTION_5_59();
      v38 = sub_257743974();
      v3 = v39;
      MEMORY[0x259C64E90](v38);

      MEMORY[0x259C64E90](10333, 0xE200000000000000);
      MEMORY[0x259C64E90](v35, v36);
      v40 = 41;
    }

    else
    {
      OUTLINED_FUNCTION_5_59();
      v41 = sub_257743974();
      MEMORY[0x259C64E90](v41);

      v40 = 93;
    }

    MEMORY[0x259C64E90](v40, 0xE100000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_6_58(inited);
    v43 = v59;
    v61 = v59;

    sub_25763D200(v3);
    v3 = v61;
    v44 = v4;
    v45 = *(v4 + *(type metadata accessor for Proto_Model(0) + 20));
    swift_beginAccess();
    sub_257670130(v3, *(v45 + 16), &v61);

    sub_25763D14C(v61);
    v46 = swift_initStackObject();
    OUTLINED_FUNCTION_6_58(v46);
    v61 = v43;

    sub_25763D200(v3);
    v47 = *(v45 + 16);
    v48 = v57;
    FeatureDescription.type.getter();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v49 = v56;
      sub_257717A58(v48, v56, type metadata accessor for FeatureType.ShapedArrayParameters);
      sub_257702808();

      sub_257717AB8(v49, type metadata accessor for FeatureType.ShapedArrayParameters);
      v50 = v61;
    }

    else
    {

      sub_257717AB8(v48, type metadata accessor for FeatureType);
      v50 = MEMORY[0x277D84F90];
    }

    sub_25763D14C(v50);
    OUTLINED_FUNCTION_1_83();
    sub_257717AB8(v19, v51);
    v4 = v44;
  }

  *v55 = v66;
  return result;
}

uint64_t sub_257717654@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v43 = a1;
  v40 = a2;
  v4 = type metadata accessor for FeatureDescription();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_3();
  v9 = (v8 - v7);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8817D8, &qword_257776DC0);
  v10 = OUTLINED_FUNCTION_4(v42);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v47 = MEMORY[0x277D84F90];
  Model.outputs.getter();
  v16 = *(v15 + 16);

  if (!v16)
  {
    v45 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    sub_257743604();
    sub_25746996C();
    v18 = v17;
    v19 = *(v17 + 16);
    v20 = v19 + 1;
    if (v19 >= *(v17 + 24) >> 1)
    {
LABEL_15:
      sub_25746996C();
      v18 = v38;
    }

    *(v18 + 16) = v20;
    v21 = v18 + 48 * v19;
    *(v21 + 32) = 0;
    *(v21 + 40) = xmmword_257776DB0;
    OUTLINED_FUNCTION_7_47(v18, v21);
  }

  Model.outputs.getter();
  v20 = v22;
  v19 = 0;
  v44 = *(v22 + 16);
  v41 = xmmword_2577442B0;
  while (v44 != v19)
  {
    if (v19 >= *(v20 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v23 = *(v42 + 48);
    sub_2577179F4(v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, &v14[v23]);
    OUTLINED_FUNCTION_0_104();
    sub_257717A58(&v14[v23], v9, v24);
    v26 = *v9;
    v25 = v9[1];
    v27 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v27 = *v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      OUTLINED_FUNCTION_4_64();
      v28 = sub_257743974();
      MEMORY[0x259C64E90](v28);

      MEMORY[0x259C64E90](10333, 0xE200000000000000);
      MEMORY[0x259C64E90](v26, v25);
      v29 = 41;
    }

    else
    {
      OUTLINED_FUNCTION_4_64();
      v30 = sub_257743974();
      MEMORY[0x259C64E90](v30);

      v29 = 93;
    }

    MEMORY[0x259C64E90](v29, 0xE100000000000000);
    v31 = v46[0];
    v32 = v46[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
    inited = swift_initStackObject();
    *(inited + 16) = v41;
    *(inited + 32) = v31;
    *(inited + 40) = v32;
    v46[0] = v43;

    sub_25763D200(inited);
    v34 = v46[0];
    v35 = *(v3 + *(type metadata accessor for Proto_Model(0) + 20));
    swift_beginAccess();
    sub_257670130(v34, *(v35 + 16), v46);

    sub_25763D14C(v46[0]);
    OUTLINED_FUNCTION_1_83();
    sub_257717AB8(v9, v36);
    ++v19;
  }

  *v40 = v47;
  return result;
}

uint64_t sub_2577179F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureDescription();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257717A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_257717AB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_4_64()
{
  *(v1 - 120) = v0;
  *(v1 - 112) = 0x5B74757074756FLL;
  *(v1 - 104) = 0xE700000000000000;
}

void OUTLINED_FUNCTION_5_59()
{
  *(v1 - 152) = v0;
  *(v1 - 144) = 0x5B7475706E69;
  *(v1 - 136) = 0xE600000000000000;
}

__n128 OUTLINED_FUNCTION_6_58(__n128 *a1)
{
  result = *(v3 - 288);
  a1[1] = result;
  a1[2].n128_u64[0] = v2;
  a1[2].n128_u64[1] = v1;
  return result;
}

void OUTLINED_FUNCTION_7_47(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(a2 + 56) = 3;
  *(a2 + 64) = v2;
  *(a2 + 72) = v3;
  *(v4 - 96) = a1;
}

void sub_257717BB0()
{
  OUTLINED_FUNCTION_31();
  v44[1] = v2;
  v3 = type metadata accessor for MLProgram.Value.Representation(0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v7 = type metadata accessor for MLProgram.Value.BlobFileValue(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v44[0] = v12 - v11;
  v13 = OUTLINED_FUNCTION_153();
  v14 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(v13);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v44 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  OUTLINED_FUNCTION_13(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  v29 = v44 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  v34 = OUTLINED_FUNCTION_64();
  v35 = *(type metadata accessor for Proto_MILSpec_Value(v34) + 20);
  sub_257487308();
  v36 = 1;
  OUTLINED_FUNCTION_155(v29, 1, v14);
  if (!v37)
  {
    sub_25771BA1C();
    OUTLINED_FUNCTION_9_43();
    sub_25771B9C4();
    sub_257661830(v20);
    OUTLINED_FUNCTION_8_45();
    sub_25771BA74(v23, v38);
    v36 = 0;
  }

  __swift_storeEnumTagSinglePayload(v1, v36, 1, v3);
  OUTLINED_FUNCTION_155(v1, 1, v3);
  if (v37)
  {
    sub_2574695E4(v1, &qword_27F880A30, &qword_25776ED00);
  }

  else
  {
    OUTLINED_FUNCTION_360();
    sub_25771B9C4();
    OUTLINED_FUNCTION_263();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v0 = v44[0];
      sub_25771BA1C();
      v40 = *v0;
      v41 = v0[1];

      sub_25771BACC(&v45, v40, v41);

      v42 = type metadata accessor for MLProgram.Value.BlobFileValue;
    }

    else
    {
      v42 = type metadata accessor for MLProgram.Value.Representation;
    }

    sub_25771BA74(v0, v42);
    OUTLINED_FUNCTION_0_105();
    sub_25771BA74(v1, v43);
  }

  OUTLINED_FUNCTION_35();
}

void sub_25771810C()
{
  OUTLINED_FUNCTION_31();
  v0 = type metadata accessor for MLProgram.Value.BlobFileValue(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = (v5 - v4);
  v7 = type metadata accessor for MLProgram.Value.Dictionary(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v168 = v12 - v11;
  v13 = OUTLINED_FUNCTION_153();
  v14 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v13);
  v15 = OUTLINED_FUNCTION_13(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v167 = v19 - v18;
  v20 = OUTLINED_FUNCTION_153();
  v21 = type metadata accessor for MLProgram.Value.List(v20);
  v22 = OUTLINED_FUNCTION_13(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v166 = v26 - v25;
  v27 = OUTLINED_FUNCTION_153();
  v28 = type metadata accessor for MLProgram.ValueType.ListParameters(v27);
  v29 = OUTLINED_FUNCTION_13(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v165 = v33 - v32;
  v34 = OUTLINED_FUNCTION_153();
  v35 = type metadata accessor for MLProgram.Value.Tuple(v34);
  v36 = OUTLINED_FUNCTION_13(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  v164 = v40 - v39;
  v41 = OUTLINED_FUNCTION_153();
  v42 = type metadata accessor for MLProgram.ValueType.TupleParameters(v41);
  v43 = OUTLINED_FUNCTION_13(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  v48 = v47 - v46;
  v49 = type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  v50 = OUTLINED_FUNCTION_13(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_3();
  v163 = v54 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881810, &qword_257776EF0);
  OUTLINED_FUNCTION_4(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v58);
  v60 = (&v162 - v59);
  v61 = OUTLINED_FUNCTION_153();
  v62 = type metadata accessor for MLProgram.Value.ImmediateValue(v61);
  v63 = OUTLINED_FUNCTION_4(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_3();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v66);
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_29();
  v70 = MEMORY[0x28223BE20](v69);
  v72 = &v162 - v71;
  MLProgram.Value.representation.getter(v70, v73, v74, v75, v76, v77, v78, v79, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171);
  v80 = type metadata accessor for MLProgram.Value.Representation(0);
  OUTLINED_FUNCTION_155(v72, 1, v80);
  if (v81)
  {
    MLProgram.Value.type.getter();
    v173 = v169;
    sub_2576F17A0();
    v83 = v82;
    sub_2576A66C8(0, v84, v85, v82);
    OUTLINED_FUNCTION_67_3();

    v86 = OUTLINED_FUNCTION_263();
    sub_257483A28(v86, v87, v83);
    goto LABEL_28;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_25771BA1C();
    MLProgram.Value.type.getter();
    v100 = *(v55 + 48);
    v101 = v60;
    v102 = v60 + v100;
    *v60 = v173;
    sub_25771B9C4();
    switch(*v60 >> 61)
    {
      case 1uLL:
        if (OUTLINED_FUNCTION_65_6() != 2)
        {
          goto LABEL_27;
        }

        swift_projectBox();
        OUTLINED_FUNCTION_23_29();
        v48 = v165;
        sub_25771B9C4();
        OUTLINED_FUNCTION_156();
        v120 = v166;
        sub_25771BA1C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_6_59(inited, xmmword_257743FF0);
        inited[3].n128_u64[0] = sub_2576F210C();
        inited[3].n128_u64[1] = v122;
        inited[4].n128_u8[0] = v123;
        OUTLINED_FUNCTION_16_32();
        inited[4].n128_u64[1] = v124;
        inited[5].n128_u64[0] = v125;
        sub_2576635D8();
        inited[5].n128_u64[1] = v126;
        inited[6].n128_u64[0] = v127;
        inited[6].n128_u8[8] = v128;
        sub_2576A6964(inited);
        OUTLINED_FUNCTION_67_3();
        sub_25771BA74(v120, type metadata accessor for MLProgram.Value.List);
        v119 = type metadata accessor for MLProgram.ValueType.ListParameters;
        goto LABEL_24;
      case 2uLL:
        if (OUTLINED_FUNCTION_65_6() != 1)
        {
          goto LABEL_27;
        }

        swift_projectBox();
        OUTLINED_FUNCTION_22_27();
        sub_25771B9C4();
        OUTLINED_FUNCTION_156();
        v129 = v164;
        sub_25771BA1C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
        v130 = swift_initStackObject();
        OUTLINED_FUNCTION_6_59(v130, xmmword_257743FF0);
        sub_2576F2344();
        v130[3].n128_u64[0] = v131;
        v130[3].n128_u64[1] = v132;
        v130[4].n128_u8[0] = v133;
        OUTLINED_FUNCTION_16_32();
        v130[4].n128_u64[1] = v134;
        v130[5].n128_u64[0] = v135;
        sub_2576635C0();
        v130[5].n128_u64[1] = v136;
        v130[6].n128_u64[0] = v137;
        v130[6].n128_u8[8] = v138;
        sub_2576A6964(v130);
        OUTLINED_FUNCTION_67_3();
        sub_25771BA74(v129, type metadata accessor for MLProgram.Value.Tuple);
        v119 = type metadata accessor for MLProgram.ValueType.TupleParameters;
        goto LABEL_24;
      case 3uLL:
        if (OUTLINED_FUNCTION_65_6() != 3)
        {
          goto LABEL_27;
        }

        swift_projectBox();
        OUTLINED_FUNCTION_26_20();
        v48 = v167;
        sub_25771B9C4();
        OUTLINED_FUNCTION_156();
        v110 = v168;
        sub_25771BA1C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
        v111 = swift_initStackObject();
        OUTLINED_FUNCTION_6_59(v111, xmmword_257743FF0);
        v111[3].n128_u64[0] = sub_2576F4D1C();
        v111[3].n128_u64[1] = v112;
        v111[4].n128_u8[0] = v113;
        OUTLINED_FUNCTION_16_32();
        v111[4].n128_u64[1] = v114;
        v111[5].n128_u64[0] = v115;
        sub_257663788();
        v111[5].n128_u64[1] = v116;
        v111[6].n128_u64[0] = v117;
        v111[6].n128_u8[8] = v118;
        sub_2576A6964(v111);
        OUTLINED_FUNCTION_67_3();
        sub_25771BA74(v110, type metadata accessor for MLProgram.Value.Dictionary);
        v119 = type metadata accessor for MLProgram.ValueType.DictionaryParameters;
LABEL_24:
        v139 = v119;
        v140 = v48;
        goto LABEL_25;
      case 4uLL:
        goto LABEL_27;
      default:
        if (OUTLINED_FUNCTION_65_6())
        {
LABEL_27:
          OUTLINED_FUNCTION_11_46();
          sub_2574695E4(v60, &qword_27F881810, &qword_257776EF0);
        }

        else
        {
          swift_projectBox();
          v104 = *v102;
          v103 = *(v102 + 1);
          v105 = v102[16];
          OUTLINED_FUNCTION_27_24();
          v106 = v163;
          sub_25771B9C4();
          MLProgram.ValueType.TensorParameters.shape.getter();
          v108 = *(v107 + 16);

          if (v108 || (v169 = v104, v170 = v103, LOBYTE(v171) = v105, sub_257662F00() != 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
            v142 = swift_initStackObject();
            OUTLINED_FUNCTION_6_59(v142, xmmword_257743FF0);
            sub_2576F1B84();
            v142[3].n128_u64[0] = v143;
            v142[3].n128_u64[1] = v144;
            v142[4].n128_u8[0] = v145;
            OUTLINED_FUNCTION_16_32();
            v142[4].n128_u64[1] = v146;
            v142[5].n128_u64[0] = v147;
            v169 = v104;
            v170 = v103;
            LOBYTE(v171) = v105;
            v142[5].n128_u64[1] = sub_257662FA0();
            v142[6].n128_u64[0] = v148;
            v142[6].n128_u8[8] = v149;
            sub_2576A6964(v142);
            OUTLINED_FUNCTION_67_3();
            v150 = OUTLINED_FUNCTION_222();
            sub_257664F74(v150, v151, v105);
            OUTLINED_FUNCTION_7_48();
            v140 = v106;
LABEL_25:
            sub_25771BA74(v140, v139);
            OUTLINED_FUNCTION_11_46();
            v141 = *v101;
          }

          else
          {
            if (v105)
            {
              v109 = 4;
            }

            else
            {
              v109 = 0;
            }

            switch((v103 >> 60) & 3 | v109)
            {
              case 1uLL:
                if (!*(v104 + 16))
                {
                  goto LABEL_48;
                }

                LODWORD(v169) = *(v104 + 32);
                goto LABEL_41;
              case 2uLL:
                if (!*(v104 + 16))
                {
                  goto LABEL_45;
                }

                LOBYTE(v169) = *(v104 + 32);
                goto LABEL_41;
              case 3uLL:
                if (!*(v104 + 16))
                {
                  goto LABEL_46;
                }

                v152 = *(v104 + 32);
                v153 = *(v104 + 40);
                v169 = 34;
                v170 = 0xE100000000000000;

                v154 = OUTLINED_FUNCTION_280();
                MEMORY[0x259C64E90](v154);
                MEMORY[0x259C64E90](34, 0xE100000000000000);
                v155 = OUTLINED_FUNCTION_222();
                sub_257664F74(v155, v156, v105);

                OUTLINED_FUNCTION_7_48();
                v158 = v163;
                goto LABEL_42;
              case 4uLL:
                if (!*(v104 + 16))
                {
                  goto LABEL_44;
                }

                v169 = *(v104 + 32);
                goto LABEL_41;
              case 5uLL:
                if (!*(v104 + 16))
                {
                  goto LABEL_49;
                }

                v169 = *(v104 + 32);
                goto LABEL_41;
              case 6uLL:
                LOBYTE(v169) = sub_2577430F4();
                goto LABEL_41;
              default:
                if (!*(v104 + 16))
                {
                  goto LABEL_47;
                }

                LODWORD(v169) = *(v104 + 32);
LABEL_41:
                sub_257743674();
                OUTLINED_FUNCTION_67_3();
                v159 = OUTLINED_FUNCTION_222();
                sub_257664F74(v159, v160, v105);
                OUTLINED_FUNCTION_7_48();
                v158 = v106;
LABEL_42:
                sub_25771BA74(v158, v157);
                OUTLINED_FUNCTION_11_46();
                v161 = *v101;

                break;
            }
          }
        }

        break;
    }

    goto LABEL_28;
  }

  sub_25771BA1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  v89 = swift_initStackObject();
  OUTLINED_FUNCTION_6_59(v89, xmmword_2577442C0);
  MLProgram.Value.type.getter();
  v172 = v173;
  sub_2576F17A0();
  v91 = v90;
  v93 = v92;
  v95 = v94;

  v89[3].n128_u64[0] = v91;
  v89[3].n128_u64[1] = v93;
  v89[4].n128_u8[0] = v95;
  v89[4].n128_u64[1] = 0x656D614E656C6966;
  v89[5].n128_u64[0] = 0xE800000000000000;
  v96 = *v6;
  v97 = v6[1];
  v169 = 34;
  v170 = 0xE100000000000000;
  MEMORY[0x259C64E90](v96, v97);
  MEMORY[0x259C64E90](34, 0xE100000000000000);
  v98 = v170;
  v89[5].n128_u64[1] = v169;
  v89[6].n128_u64[0] = v98;
  v89[6].n128_u8[8] = 0;
  v89[7].n128_u64[0] = 0x74657366666FLL;
  v89[7].n128_u64[1] = 0xE600000000000000;
  if ((v6[2] & 0x8000000000000000) == 0)
  {
    v169 = v6[2];
    sub_25771B970();
    v89[8].n128_u64[0] = sub_2577437D4();
    v89[8].n128_u64[1] = v99;
    v89[9].n128_u8[0] = 0;
    sub_2576A6964(v89);
    OUTLINED_FUNCTION_67_3();
    sub_25771BA74(v6, type metadata accessor for MLProgram.Value.BlobFileValue);
LABEL_28:
    OUTLINED_FUNCTION_35();
    return;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t MLProgram.Value.debugDescription.getter()
{
  sub_25771810C();
  v1 = v0;
  sub_2576A66C8(0, v2, v3, v0);
  v4 = OUTLINED_FUNCTION_205();
  sub_257483A28(v4, v5, v1);
  return OUTLINED_FUNCTION_277();
}

void MLProgram.Value.init(_:)()
{
  OUTLINED_FUNCTION_433();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_10_48();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8817E8, &qword_257776DD0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2577442B0;
  *(v11 + 32) = v2;
  type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  swift_allocBox();
  OUTLINED_FUNCTION_55_8();
  OUTLINED_FUNCTION_54_7(0x2000000000000000);
  OUTLINED_FUNCTION_42_16();
  OUTLINED_FUNCTION_263();
  swift_storeEnumTagMultiPayload();
  v12 = OUTLINED_FUNCTION_18_43();
  v13 = OUTLINED_FUNCTION_41_16(v12);
  OUTLINED_FUNCTION_13_33(v13);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v14 = OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_12_47(v14);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_292();
  sub_25771B9C4();
  v15 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_50_8(v15, v16, v17, v7);

  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v18);
  OUTLINED_FUNCTION_434();
}

{
  OUTLINED_FUNCTION_433();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_10_48();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2577442B0;
  *(v13 + 32) = v4;
  *(v13 + 40) = v2;
  type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  swift_allocBox();
  OUTLINED_FUNCTION_55_8();
  OUTLINED_FUNCTION_54_7(0x3000000000000000);
  OUTLINED_FUNCTION_42_16();
  OUTLINED_FUNCTION_263();
  swift_storeEnumTagMultiPayload();
  v14 = OUTLINED_FUNCTION_18_43();
  v15 = OUTLINED_FUNCTION_41_16(v14);
  OUTLINED_FUNCTION_13_33(v15);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v16 = OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_12_47(v16);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_292();
  sub_25771B9C4();
  v17 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_50_8(v17, v18, v19, v9);

  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v20);
  OUTLINED_FUNCTION_434();
}

{
  OUTLINED_FUNCTION_433();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_10_48();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F28, &qword_257744850);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2577442B0;
  *(v11 + 32) = v2;
  type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  swift_allocBox();
  OUTLINED_FUNCTION_55_8();
  OUTLINED_FUNCTION_54_7(0x1000000000000000);
  OUTLINED_FUNCTION_42_16();
  OUTLINED_FUNCTION_263();
  swift_storeEnumTagMultiPayload();
  v12 = OUTLINED_FUNCTION_18_43();
  v13 = OUTLINED_FUNCTION_41_16(v12);
  OUTLINED_FUNCTION_13_33(v13);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v14 = OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_12_47(v14);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_292();
  sub_25771B9C4();
  v15 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_50_8(v15, v16, v17, v7);

  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v18);
  OUTLINED_FUNCTION_434();
}

uint64_t MLProgram.Value.init(_:)(float a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_10_48();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8817F0, &qword_257776DD8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2577442B0;
  *(v11 + 32) = a1;
  type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  swift_allocBox();
  OUTLINED_FUNCTION_53_6();
  *v1 = v11;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_42_16();
  OUTLINED_FUNCTION_263();
  swift_storeEnumTagMultiPayload();
  v12 = OUTLINED_FUNCTION_18_43();
  v13 = OUTLINED_FUNCTION_41_16(v12);
  OUTLINED_FUNCTION_13_33(v13);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v14 = OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_12_47(v14);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_292();
  sub_25771B9C4();
  v15 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_50_8(v15, v16, v17, v7);

  OUTLINED_FUNCTION_0_105();
  return sub_25771BA74(v1, v18);
}

uint64_t MLProgram.Value.init(_:)(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_10_48();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B20, &unk_2577440E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2577442B0;
  *(v11 + 32) = a1;
  type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  swift_allocBox();
  OUTLINED_FUNCTION_53_6();
  *v1 = v11;
  *(v1 + 8) = 0x1000000000000000;
  *(v1 + 16) = 1;
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_42_16();
  OUTLINED_FUNCTION_263();
  swift_storeEnumTagMultiPayload();
  v12 = OUTLINED_FUNCTION_18_43();
  v13 = OUTLINED_FUNCTION_41_16(v12);
  OUTLINED_FUNCTION_13_33(v13);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v14 = OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_12_47(v14);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_292();
  sub_25771B9C4();
  v15 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_50_8(v15, v16, v17, v7);

  OUTLINED_FUNCTION_0_105();
  return sub_25771BA74(v1, v18);
}

void MLProgram.Value.init(_:shape:)()
{
  OUTLINED_FUNCTION_40_15();
}

{
  OUTLINED_FUNCTION_40_15();
}

{
  sub_257719338();
}

void sub_257719338()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v52 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  v17 = type metadata accessor for MLProgram.Value.Representation(0);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  v24 = *(v6 + 16);
  if (v24)
  {
    v48 = v3;
    v49 = v1;
    v50 = v17;
    v51 = v8;
    v53 = MEMORY[0x277D84F90];
    sub_257484540(0, v24, 0);
    v25 = v53;
    v26 = *(v53 + 16);
    v27 = 16 * v26;
    v28 = 32;
    do
    {
      v29 = *(v6 + v28);
      v53 = v25;
      v30 = *(v25 + 24);
      v31 = v26 + 1;
      if (v26 >= v30 >> 1)
      {
        sub_257484540((v30 > 1), v26 + 1, 1);
        v25 = v53;
      }

      *(v25 + 16) = v31;
      v32 = v25 + v27;
      *(v32 + 32) = v29;
      *(v32 + 40) = 0;
      v27 += 16;
      v28 += 8;
      v26 = v31;
      --v24;
    }

    while (v24);

    v17 = v50;
    v8 = v51;
    LOBYTE(v1) = v49;
    v3 = v48;
  }

  else
  {
  }

  type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  v33 = swift_allocBox();
  LOBYTE(v53) = v52;
  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
  *v23 = v8;
  *(v23 + 8) = v3;
  *(v23 + 16) = v1 & 1;
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v34 = type metadata accessor for Proto_MILSpec_Value(0);
  v35 = v34[5];
  v36 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  OUTLINED_FUNCTION_25_5(v10 + v35, v37, v38, v36);
  v39 = v34[6];

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v40 = v34[7];
  v41 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_25_5(v10 + v40, v42, v43, v41);
  v53 = v33;
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_222();
  sub_25771B9C4();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v17);
  MLProgram.Value.representation.setter(v16);

  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v23, v47);
  OUTLINED_FUNCTION_35();
}

void static MLProgram.Value.immediateTensor(dataType:shape:contents:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v34 = OUTLINED_FUNCTION_10_48();
  v11 = OUTLINED_FUNCTION_4(v34);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_24_0();
  v14 = *v4;
  v15 = *v2;
  v16 = v2[1];
  v17 = *(v2 + 16);
  type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  swift_allocBox();

  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
  *v0 = v15;
  *(v0 + 8) = v16;
  *(v0 + 16) = v17;
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_36_17();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v18 = OUTLINED_FUNCTION_18_43();
  v19 = v18[5];
  v20 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  OUTLINED_FUNCTION_25_5(v6 + v19, v21, v22, v20);
  v23 = v18[6];
  v24 = OUTLINED_FUNCTION_280();
  sub_257667B4C(v24, v25, v17);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v26 = v18[7];
  v27 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_25_5(v6 + v26, v28, v29, v27);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_51_7();
  v30 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_50_8(v30, v31, v32, v34);
  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v33);
  OUTLINED_FUNCTION_35();
}

void static MLProgram.Value.immediateList<A>(type:length:contents:)()
{
  OUTLINED_FUNCTION_31();
  v46 = v1;
  v47 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v48 = &v44 - v15;
  OUTLINED_FUNCTION_48_7();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  v45 = type metadata accessor for MLProgram.Value.Representation(0);
  v24 = OUTLINED_FUNCTION_4(v45);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_24_0();
  v27 = *v8;
  v28 = *v6;
  v29 = *(v6 + 8);
  type metadata accessor for MLProgram.ValueType.ListParameters(0);
  v30 = swift_allocBox();
  v51 = v27;
  v49 = v28;
  v50 = v29;

  MLProgram.ValueType.ListParameters.init(type:length:)();
  (*(v17 + 16))(v23, v46, v4);
  MLProgram.Value.List.init<A>(_:)(v23, v4, v47, v0);
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_36_17();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v31 = OUTLINED_FUNCTION_18_43();
  v32 = *(v31 + 20);
  v33 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  OUTLINED_FUNCTION_25_5(v10 + v32, v34, v35, v33);
  OUTLINED_FUNCTION_57_4();
  v36 = *(v31 + 28);
  v37 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_25_5(v10 + v36, v38, v39, v37);
  v49 = v30 | 0x2000000000000000;
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  sub_25771B9C4();
  v40 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_34_17(v40, v41, v42);
  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v43);
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Value.documentation.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_205();
}

uint64_t sub_2577199CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MLProgram.Value.documentation.setter(v1, v2);
}

uint64_t MLProgram.Value.documentation.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*MLProgram.Value.documentation.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25749BD04;
}

void MLProgram.Value.type.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = type metadata accessor for Proto_MILSpec_ValueType(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_280();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_13(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v27[-v19];
  v21 = *(type metadata accessor for Proto_MILSpec_Value(0) + 28);
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v2);
  sub_2574695E4(v20, &qword_27F879E10, &qword_257744730);
  if (EnumTagSinglePayload == 1)
  {
    type metadata accessor for MLProgram.ValueType.TensorParameters(0);
    v23 = swift_allocBox();
    v27[15] = 3;
    OUTLINED_FUNCTION_53_6();
    *v1 = v23;
  }

  else
  {
    sub_257487308();
    OUTLINED_FUNCTION_155(v17, 1, v2);
    if (v24)
    {
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v25 = *(v2 + 20);
      if (qword_27F878FF0 != -1)
      {
        OUTLINED_FUNCTION_3_4();
      }

      *(v8 + v25) = qword_27F87B038;
      v26 = __swift_getEnumTagSinglePayload(v17, 1, v2);

      if (v26 != 1)
      {
        sub_2574695E4(v17, &qword_27F879E10, &qword_257744730);
      }
    }

    else
    {
      OUTLINED_FUNCTION_28_30();
      OUTLINED_FUNCTION_277();
      sub_25771BA1C();
    }

    sub_2576F0F64();
  }

  OUTLINED_FUNCTION_35();
}

void sub_257719CE4(uint64_t *a1)
{
  v1 = *a1;

  MLProgram.Value.type.setter();
}

void MLProgram.Value.type.setter()
{
  OUTLINED_FUNCTION_433();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_64();
  v10 = type metadata accessor for Proto_MILSpec_ValueType(v9);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_24_0();
  v14 = *v4;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v15 = *(v10 + 20);
  if (qword_27F878FF0 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  *(v1 + v15) = qword_27F87B038;
  sub_2576F5020();
  type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);

  v20 = *(v1 + v15);
  if (swift_isUniquelyReferenced_nonNull_native())
  {

    v21 = *(v1 + v15);
  }

  else
  {
    v22 = *(v1 + v15);
    v23 = type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();

    v27 = sub_2574E503C(v26);

    *(v1 + v15) = v27;
  }

  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v28 = type metadata accessor for Proto_MILSpec_Value(0);
  sub_2574695E4(v2 + *(v28 + 28), &qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_28_30();
  sub_25771BA1C();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v10);
  OUTLINED_FUNCTION_434();
}

void (*MLProgram.Value.type.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  MLProgram.Value.type.getter();
  return sub_257719F60;
}

void sub_257719F60(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    MLProgram.Value.type.setter();
  }

  else
  {
    v5 = *a1;
    MLProgram.Value.type.setter();
  }
}

void MLProgram.Value.representation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_433();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  v23 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_11();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  OUTLINED_FUNCTION_13(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  v37 = OUTLINED_FUNCTION_64();
  v38 = *(type metadata accessor for Proto_MILSpec_Value(v37) + 20);
  sub_257487308();
  v39 = 1;
  OUTLINED_FUNCTION_155(v18, 1, v23);
  if (!v40)
  {
    OUTLINED_FUNCTION_24_31();
    OUTLINED_FUNCTION_360();
    sub_25771BA1C();
    OUTLINED_FUNCTION_9_43();
    sub_25771B9C4();
    sub_257661830(v29);
    OUTLINED_FUNCTION_8_45();
    sub_25771BA74(v32, v41);
    v39 = 0;
  }

  v42 = type metadata accessor for MLProgram.Value.Representation(0);
  __swift_storeEnumTagSinglePayload(v22, v39, 1, v42);
  OUTLINED_FUNCTION_434();
}

uint64_t sub_25771A12C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v5 - v2;
  sub_257487308();
  return MLProgram.Value.representation.setter(v3);
}

uint64_t MLProgram.Value.representation.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_271();
  sub_257487308();
  v13 = type metadata accessor for MLProgram.Value.Representation(0);
  OUTLINED_FUNCTION_155(v8, 1, v13);
  if (v14)
  {
    v15 = OUTLINED_FUNCTION_277();
    sub_2574695E4(v15, v16, &qword_25776ED00);
    sub_2574695E4(v8, &qword_27F880A30, &qword_25776ED00);
    v18 = 1;
  }

  else
  {
    sub_257661640();
    sub_2574695E4(a1, &qword_27F880A30, &qword_25776ED00);
    OUTLINED_FUNCTION_0_105();
    sub_25771BA74(v8, v17);
    v18 = 0;
  }

  v19 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(v1, v18, 1, v19);
  v20 = *(type metadata accessor for Proto_MILSpec_Value(0) + 20);
  return sub_25751BB28();
}

void MLProgram.Value.representation.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  v3[1] = v4;
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[2] = v7;
  v8 = __swift_coroFrameAllocStub(v6);
  v3[3] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  v3[4] = OUTLINED_FUNCTION_56_6();
  v12 = OUTLINED_FUNCTION_56_6();
  v3[5] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  v3[6] = OUTLINED_FUNCTION_56_6();
  v3[7] = OUTLINED_FUNCTION_56_6();
  v16 = OUTLINED_FUNCTION_56_6();
  v3[8] = v16;
  *(v3 + 18) = *(type metadata accessor for Proto_MILSpec_Value(0) + 20);
  sub_257487308();
  v17 = 1;
  OUTLINED_FUNCTION_155(v12, 1, v4);
  if (!v18)
  {
    OUTLINED_FUNCTION_24_31();
    sub_25771BA1C();
    OUTLINED_FUNCTION_9_43();
    OUTLINED_FUNCTION_263();
    sub_25771B9C4();
    sub_257661830(v7);
    OUTLINED_FUNCTION_8_45();
    sub_25771BA74(v8, v19);
    v17 = 0;
  }

  v20 = type metadata accessor for MLProgram.Value.Representation(0);
  __swift_storeEnumTagSinglePayload(v16, v17, 1, v20);
  OUTLINED_FUNCTION_35();
}

void sub_25771A51C()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = (*v0)[7];
  v3 = (*v0)[8];
  if (v4)
  {
    v6 = v1[5];
    v5 = v1[6];
    v8 = v1[3];
    v7 = v1[4];
    v9 = v1[2];
    v10 = *v1;
    OUTLINED_FUNCTION_277();
    sub_257487308();
    MLProgram.Value.representation.setter(v5);
    sub_2574695E4(v3, &qword_27F880A30, &qword_25776ED00);
  }

  else
  {
    v11 = (*v0)[8];
    sub_257487308();
    v12 = type metadata accessor for MLProgram.Value.Representation(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v12);
    v14 = v1[7];
    v15 = v1[8];
    if (EnumTagSinglePayload == 1)
    {
      v16 = OUTLINED_FUNCTION_263();
      sub_2574695E4(v16, v17, &qword_25776ED00);
      sub_2574695E4(v14, &qword_27F880A30, &qword_25776ED00);
      v18 = 1;
    }

    else
    {
      v19 = v1[4];
      sub_257661640();
      sub_2574695E4(v15, &qword_27F880A30, &qword_25776ED00);
      OUTLINED_FUNCTION_0_105();
      sub_25771BA74(v14, v20);
      v18 = 0;
    }

    v21 = *(v1 + 18);
    v2 = v1[7];
    v3 = v1[8];
    v6 = v1[5];
    v5 = v1[6];
    v8 = v1[3];
    v7 = v1[4];
    v9 = v1[2];
    v22 = *v1;
    __swift_storeEnumTagSinglePayload(v7, v18, 1, v1[1]);
    sub_25751BB28();
  }

  free(v3);
  free(v2);
  free(v5);
  free(v6);
  free(v7);
  free(v8);
  free(v9);
  OUTLINED_FUNCTION_35();

  free(v23);
}

uint64_t MLProgram.Value.init(type:representation:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_271();
  v11 = *a1;
  v12 = OUTLINED_FUNCTION_18_43();
  v13 = v12[5];
  v14 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  OUTLINED_FUNCTION_25_5(a3 + v13, v15, v16, v14);
  v17 = a3 + v12[6];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v18 = v12[7];
  v19 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_25_5(a3 + v18, v20, v21, v19);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  sub_25771B9C4();
  type metadata accessor for MLProgram.Value.Representation(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  MLProgram.Value.representation.setter(v3);
  OUTLINED_FUNCTION_0_105();
  return sub_25771BA74(a2, v26);
}

void static MLProgram.Value.blob(type:fileName:offset:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_10_48();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_0();
  v17 = *v8;
  v18 = *(type metadata accessor for Proto_MILSpec_Value.BlobFileValue(0) + 24);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v0 = v6;
  v0[1] = v4;
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v0[2] = v2;
    swift_storeEnumTagMultiPayload();
    v19 = OUTLINED_FUNCTION_18_43();
    v20 = v19[5];
    v21 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
    OUTLINED_FUNCTION_12_47(v21);
    v22 = v19[6];

    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v23 = v19[7];
    v24 = type metadata accessor for Proto_MILSpec_ValueType(0);
    OUTLINED_FUNCTION_20_27(v24);
    MLProgram.Value.type.setter();
    OUTLINED_FUNCTION_1_84();
    OUTLINED_FUNCTION_51_7();
    v25 = OUTLINED_FUNCTION_39_7();
    OUTLINED_FUNCTION_34_17(v25, v26, v27);
    OUTLINED_FUNCTION_0_105();
    sub_25771BA74(v0, v28);
    OUTLINED_FUNCTION_35();
  }
}

void static MLProgram.Value.immediateTensor(parameters:contents:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_10_48();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_0();
  v13 = *v2;
  v14 = v2[1];
  v15 = *(v2 + 16);
  type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  swift_allocBox();
  OUTLINED_FUNCTION_27_24();
  sub_25771B9C4();
  *v0 = v13;
  *(v0 + 8) = v14;
  *(v0 + 16) = v15;
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_36_17();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_32_16();
  v16 = OUTLINED_FUNCTION_18_43();
  v17 = v16[5];
  v18 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  OUTLINED_FUNCTION_25_5(v4 + v17, v19, v20, v18);
  v21 = v16[6];
  v22 = OUTLINED_FUNCTION_280();
  sub_257667B4C(v22, v23, v15);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v24 = v16[7];
  v25 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_25_5(v4 + v24, v26, v27, v25);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_51_7();
  v28 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_34_17(v28, v29, v30);
  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v31);
  OUTLINED_FUNCTION_35();
}

void static MLProgram.Value.immediateTuple(parameters:contents:)()
{
  OUTLINED_FUNCTION_433();
  OUTLINED_FUNCTION_49_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_10_48();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for MLProgram.ValueType.TupleParameters(0);
  swift_allocBox();
  OUTLINED_FUNCTION_22_27();
  sub_25771B9C4();
  OUTLINED_FUNCTION_222();
  sub_25771B9C4();
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_36_17();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_32_16();
  v9 = OUTLINED_FUNCTION_18_43();
  v10 = OUTLINED_FUNCTION_46_12(v9);
  OUTLINED_FUNCTION_12_47(v10);
  OUTLINED_FUNCTION_57_4();
  v11 = OUTLINED_FUNCTION_66_6();
  OUTLINED_FUNCTION_20_27(v11);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_51_7();
  v12 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_34_17(v12, v13, v14);
  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v15);
  OUTLINED_FUNCTION_434();
}

void static MLProgram.Value.immediateTuple<A>(_:)()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v48 = &v47 - v12;
  OUTLINED_FUNCTION_48_7();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v47 = type metadata accessor for MLProgram.Value.Representation(0);
  v21 = OUTLINED_FUNCTION_4(v47);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v26 = (v25 - v24);
  sub_257665DA0(sub_25771AE70, 0, v3, &type metadata for MLProgram.ValueType, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v27);
  type metadata accessor for MLProgram.ValueType.TupleParameters(0);
  v28 = swift_allocBox();
  *v29 = MEMORY[0x277D84F90];
  v30 = v29 + *(type metadata accessor for Proto_MILSpec_TupleType(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  MLProgram.ValueType.TupleParameters.types.setter();
  (*(v14 + 16))(v20, v5, v3);
  MLProgram.Value.Tuple.init<A>(_:)(v20, v3, v1, v26);
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  swift_storeEnumTagMultiPayload();
  v31 = v47;
  swift_storeEnumTagMultiPayload();
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v32 = type metadata accessor for Proto_MILSpec_Value(0);
  v33 = v32[5];
  v34 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  OUTLINED_FUNCTION_25_5(v7 + v33, v35, v36, v34);
  v37 = v7 + v32[6];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v38 = v32[7];
  v39 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_25_5(v7 + v38, v40, v41, v39);
  v49 = v28 | 0x4000000000000000;
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  v42 = v48;
  sub_25771B9C4();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v31);
  MLProgram.Value.representation.setter(v42);
  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v26, v46);
  OUTLINED_FUNCTION_35();
}

void static MLProgram.Value.immediateList(parameters:contents:)()
{
  OUTLINED_FUNCTION_433();
  OUTLINED_FUNCTION_49_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_10_48();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for MLProgram.ValueType.ListParameters(0);
  swift_allocBox();
  OUTLINED_FUNCTION_23_29();
  sub_25771B9C4();
  OUTLINED_FUNCTION_222();
  sub_25771B9C4();
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_36_17();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_32_16();
  v9 = OUTLINED_FUNCTION_18_43();
  v10 = OUTLINED_FUNCTION_46_12(v9);
  OUTLINED_FUNCTION_12_47(v10);
  OUTLINED_FUNCTION_57_4();
  v11 = OUTLINED_FUNCTION_66_6();
  OUTLINED_FUNCTION_20_27(v11);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_51_7();
  v12 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_34_17(v12, v13, v14);
  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v15);
  OUTLINED_FUNCTION_434();
}

void static MLProgram.Value.immediateDictionary(parameters:contents:)()
{
  OUTLINED_FUNCTION_433();
  OUTLINED_FUNCTION_49_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_10_48();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for MLProgram.ValueType.DictionaryParameters(0);
  swift_allocBox();
  OUTLINED_FUNCTION_26_20();
  sub_25771B9C4();
  OUTLINED_FUNCTION_29_21();
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_36_17();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_32_16();
  v9 = OUTLINED_FUNCTION_18_43();
  v10 = OUTLINED_FUNCTION_46_12(v9);
  OUTLINED_FUNCTION_12_47(v10);
  OUTLINED_FUNCTION_57_4();
  v11 = OUTLINED_FUNCTION_66_6();
  OUTLINED_FUNCTION_20_27(v11);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_51_7();
  v12 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_34_17(v12, v13, v14);
  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v15);
  OUTLINED_FUNCTION_434();
}