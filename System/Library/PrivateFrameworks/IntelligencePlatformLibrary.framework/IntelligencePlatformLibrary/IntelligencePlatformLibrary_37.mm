void sub_1936F7E1C()
{
  OUTLINED_FUNCTION_146_5();
  OUTLINED_FUNCTION_22_0();
  memcpy(__dst, v2, sizeof(__dst));
  v3 = *(v2 + 216);
  if (sub_1936C8078(__dst) == 1)
  {
    if (v0)
    {
      return;
    }
  }

  else
  {
    v4 = memcpy(v12, __dst, sizeof(v12));
    OUTLINED_FUNCTION_134(v4, v5, v6, &type metadata for ToolKitToolRestrictionContext.InSet.ValueSet, v7, &off_1F07E3778, v8, v9, v12[0]);
    OUTLINED_FUNCTION_78_1();
    sub_193447600();
    if (v1)
    {
      return;
    }
  }

  if (v3)
  {
    v10 = *(v2 + 240);
    *&__dst[1] = *(v2 + 224);
    *&__dst[3] = v10;
    v11 = *(v2 + 272);
    *&__dst[5] = *(v2 + 256);
    *&__dst[7] = v11;
    __dst[0] = v3;
    OUTLINED_FUNCTION_78_1();
    sub_193447600();
  }
}

void sub_1936F7F70()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC920);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_202_2();
  OUTLINED_FUNCTION_11_3(v6, xmmword_193952700);
  OUTLINED_FUNCTION_63("bundleIdentifier");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  v10(v11);
  v12 = OUTLINED_FUNCTION_29_1();
  v13 = OUTLINED_FUNCTION_0_0(v12, "dynamicEnumeration");
  v10(v13);
  v14 = OUTLINED_FUNCTION_13_12();
  v15 = OUTLINED_FUNCTION_0_0(v14, "contentPropertyPossibleValues");
  v10(v15);
  v16 = OUTLINED_FUNCTION_14_6();
  v17 = OUTLINED_FUNCTION_0_0(v16, "linkQuery");
  v10(v17);
  v18 = OUTLINED_FUNCTION_19_2((v1 + 4 * v5));
  v19 = OUTLINED_FUNCTION_0_0(v18, "standaloneLinkQuery");
  v10(v19);
  v20 = OUTLINED_FUNCTION_66_22();
  v21 = OUTLINED_FUNCTION_0_0(v20, "linkQueryOnParameter");
  v10(v21);
  v22 = OUTLINED_FUNCTION_30_0((v1 + v5 * v0));
  v23 = OUTLINED_FUNCTION_0_0(v22, "dynamicEnumerationOnTrigger");
  v10(v23);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936F814C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  v130 = xmmword_1939526A0;
  v157 = a3;
  while (1)
  {
    result = sub_19393C0E0();
    if (v7 || (v9 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_206_1();
        sub_19393C200();
        v7 = 0;
        break;
      case 2:
        OUTLINED_FUNCTION_279_1(result, v9, v10, v11, v12, v13, v14, v15, v104, *(&v104 + 1), v117, *(&v117 + 1), v130);
        *(v45 + 16) = 0;
        *(v45 + 24) = 0;
        OUTLINED_FUNCTION_100_1(v46, v47, v48, v49, v50, v51, v52, v53, v107, v113, v120, v126, v133, v139, v143, v146, v149, v150, v151, v152, v153);
        sub_193498018();
        v54 = v154;
        if (v154 == 1)
        {
          OUTLINED_FUNCTION_644();
          ToolKitToolRestrictionContext.InSet.ValueSet.DynamicEnumeration.init()();
          v54 = v146;
          v55 = v149;
          v6 = v150;
        }

        else
        {
          v5 = &v153;
          v55 = v155;
          v6 = *&v156;
        }

        v97 = *v5;
        v98 = v3[3];
        v5 = v3[5];

        v3[2] = v97;
        v3[3] = v54;
        v3[4] = v55;
        v3[5] = v6;
        break;
      case 3:
        v154 = 0;
        v155 = 1;
        OUTLINED_FUNCTION_100_1(result, v9, v10, v11, v12, v13, v14, v15, v104, *(&v104 + 1), v117, *(&v117 + 1), v130, *(&v130 + 1), v143, v146, v149, v150, v151, v152, 0);
        sub_193498018();
        v6 = v155;
        if (v155 == 1)
        {
          ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.init()();
          sub_193710148(v153, v154, v155);
          v5 = v143;
          v18 = v146;
          v6 = v149;
        }

        else
        {
          v5 = v153;
          v18 = v154;
          sub_193438388(v153);

          sub_193710148(v5, v18, v6);
        }

        v93 = v3[8];
        sub_1934354B4(v3[6]);

        v3[6] = v5;
        v3[7] = v18;
        v3[8] = v6;
        break;
      case 4:
        OUTLINED_FUNCTION_279_1(result, v9, v10, v11, v12, v13, v14, v15, v104, *(&v104 + 1), v117, *(&v117 + 1), v130);
        OUTLINED_FUNCTION_619(v19);
        OUTLINED_FUNCTION_100_1(v20, v21, v22, v23, v24, v25, v26, v27, v105, v111, v118, v124, v131, v137, v143, v146, v149, v150, v151, v152, v153);
        sub_193498018();
        if (v154 == 1)
        {
          OUTLINED_FUNCTION_644();
          ToolKitToolRestrictionContext.InSet.ValueSet.LinkQuery.init()(v36);
          OUTLINED_FUNCTION_643(v37, v38, v39, v40, v41, v42, v43, v44, v106, v112, v119, v125, v132, v138, v144, v147);
        }

        else
        {
          OUTLINED_FUNCTION_336(v28, v29, v30, v31, v32, v33, v34, v35, *&v106, *&v112, *&v119, *&v125, *&v132, *&v138, *&v144, *&v147, *(&v147 + 1), *&v150, *&v151, *&v152, *&v153, *&v154, *&v155, v156);
        }

        v94 = *v5;
        v95 = v3[10];
        v5 = v3[12];
        v96 = v3[14];

        v3[9] = v94;
        *(v3 + 5) = v117;
        *(v3 + 6) = v104;
        v3[14] = v6;
        break;
      case 5:
        v153 = 0;
        v154 = 0;
        OUTLINED_FUNCTION_206_1();
        sub_19393C200();
        v7 = 0;
        if (v154)
        {
          v16 = v153;
        }

        else
        {
          v16 = 0;
        }

        if (v154)
        {
          v5 = v154;
        }

        else
        {
          v5 = 0xE000000000000000;
        }

        v17 = v3[16];

        v3[15] = v16;
        v3[16] = v5;
        break;
      case 6:
        OUTLINED_FUNCTION_279_1(result, v9, v10, v11, v12, v13, v14, v15, v104, *(&v104 + 1), v117, *(&v117 + 1), v130);
        OUTLINED_FUNCTION_619(v56);
        OUTLINED_FUNCTION_100_1(v57, v58, v59, v60, v61, v62, v63, v64, v108, v114, v121, v127, v134, v140, v143, v146, v149, v150, v151, v152, v153);
        sub_193498018();
        if (v154 == 1)
        {
          OUTLINED_FUNCTION_644();
          ToolKitToolRestrictionContext.InSet.ValueSet.LinkQuery.init()(v73);
          OUTLINED_FUNCTION_643(v74, v75, v76, v77, v78, v79, v80, v81, v109, v115, v122, v128, v135, v141, v145, v148);
        }

        else
        {
          OUTLINED_FUNCTION_336(v65, v66, v67, v68, v69, v70, v71, v72, *&v109, *&v115, *&v122, *&v128, *&v135, *&v141, *&v145, *&v148, *(&v148 + 1), *&v150, *&v151, *&v152, *&v153, *&v154, *&v155, v156);
        }

        v99 = *v5;
        v100 = v3[18];
        v5 = v3[20];
        v101 = v3[22];

        v3[17] = v99;
        *(v3 + 9) = v117;
        *(v3 + 10) = v104;
        v3[22] = v6;
        break;
      case 7:
        OUTLINED_FUNCTION_279_1(result, v9, v10, v11, v12, v13, v14, v15, v104, *(&v104 + 1), v117, *(&v117 + 1), v130);
        *(v82 + 16) = 0;
        *(v82 + 24) = 0;
        OUTLINED_FUNCTION_100_1(v83, v84, v85, v86, v87, v88, v89, v90, v110, v116, v123, v129, v136, v142, v143, v146, v149, v150, v151, v152, v153);
        sub_193498018();
        v91 = v154;
        if (v154 == 1)
        {
          OUTLINED_FUNCTION_644();
          ToolKitToolRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration.init()();
          v91 = v146;
          v92 = v149;
          v6 = v150;
        }

        else
        {
          v5 = &v153;
          v92 = v155;
          v6 = *&v156;
        }

        v102 = *v5;
        v103 = v3[24];
        v5 = v3[26];

        v3[23] = v102;
        v3[24] = v91;
        v3[25] = v92;
        v3[26] = v6;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1936F8548()
{
  v2 = v1;
  OUTLINED_FUNCTION_184_6();
  result = *v0;
  v157 = *(v0 + 72);
  v171 = *(v0 + 88);
  v185 = *(v0 + 104);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v115 = *(v0 + 136);
  v129 = *(v0 + 152);
  v143 = *(v0 + 168);
  v6 = *(v0 + 184);
  v87 = v6;
  v101 = *(v0 + 200);
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_32_20();
    OUTLINED_FUNCTION_66_17();
    result = sub_19393C3C0();
    v2 = v1;
  }

  if (!v2)
  {
    v7 = *(v0 + 32);
    v232 = *(v0 + 16);
    v233 = v7;
    v8 = *(v0 + 32);
    v229 = *(v0 + 16);
    v230 = v8;
    v9 = OUTLINED_FUNCTION_269_1();
    sub_193710DFC(v9, v10);
    v11 = OUTLINED_FUNCTION_269_1();
    sub_193710DFC(v11, v12);
    v236 = ToolKitToolRestrictionContext.InSet.ValueSet.DynamicEnumeration.init()();
    OUTLINED_FUNCTION_639(v236.toolIdentifier.value._countAndFlagsBits, v236.toolIdentifier.value._object, v236.parameterKey.value._countAndFlagsBits, v236.parameterKey.value._object, v13, v14, v15, v16, v87, *(&v87 + 1), v101, *(&v101 + 1), v115, *(&v115 + 1), v129, *(&v129 + 1), v143, *(&v143 + 1), v157, *(&v157 + 1), v171, *(&v171 + 1), v185, *(&v185 + 1), v199, v207, v214, v218, v222, v226, *&v228.parameterKey);
    sub_193710E58();
    OUTLINED_FUNCTION_223_2();
    v17 = sub_19393C550();
    OUTLINED_FUNCTION_614(v17, v18, v19, v20, v21, v22, v23, v24, v88, v95, v102, v109, v116, v123, v130, v137, v144, v151, v158, v165, v172, v179, v186, v193, v200, v208);

    if (v0)
    {
      sub_193710EAC(&v232);
    }

    else
    {
      OUTLINED_FUNCTION_637();
      OUTLINED_FUNCTION_87_3();
      sub_193447600();
      OUTLINED_FUNCTION_300_0();
    }

    v232 = *(v0 + 48);
    *&v233 = *(v0 + 64);
    v229 = *(v0 + 48);
    *&v230 = *(v0 + 64);
    v25 = OUTLINED_FUNCTION_269_1();
    sub_193710CF8(v25, v26);
    v27 = OUTLINED_FUNCTION_269_1();
    sub_193710CF8(v27, v28);
    ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.init()();
    parameterKey = v228.parameterKey;
    countAndFlagsBits = v228.queryIdentifier.value._countAndFlagsBits;
    sub_193710D54();
    OUTLINED_FUNCTION_223_2();
    v29 = sub_19393C550();
    sub_1934354B4(v228.parameterKey.value._countAndFlagsBits);

    sub_1934354B4(v229);

    if (v29)
    {
      sub_193710DA8(&v232);
    }

    else
    {
      v229 = v232;
      *&v230 = v233;
      OUTLINED_FUNCTION_87_3();
      sub_193447600();
      v2 = v1;
      v29 = v230;
      sub_1934354B4(v229);

      if (v1)
      {
        return result;
      }
    }

    v232 = v159;
    v233 = v173;
    v234 = v187;
    v229 = v159;
    v230 = v173;
    v231 = v187;
    v30 = OUTLINED_FUNCTION_269_1();
    sub_193710BF4(v30, v31);
    v32 = OUTLINED_FUNCTION_269_1();
    sub_193710BF4(v32, v33);
    ToolKitToolRestrictionContext.InSet.ValueSet.LinkQuery.init()(&v228);
    OUTLINED_FUNCTION_639(v34, v35, v36, v37, v38, v39, v40, v41, v89, v96, v103, v110, v117, v124, v131, v138, v145, v152, v159, *(&v159 + 1), v173, *(&v173 + 1), v187, *(&v187 + 1), parameterKey.value._countAndFlagsBits, parameterKey.value._object, countAndFlagsBits, v219, v223, v227, *&v228.parameterKey);
    actionIdentifier = v228.actionIdentifier;
    sub_193710C50();
    OUTLINED_FUNCTION_223_2();
    v235 = v42;
    v43 = sub_19393C550();
    OUTLINED_FUNCTION_614(v43, v44, v45, v46, v47, v48, v49, v50, v90, v97, v104, v111, v118, v125, v132, v139, v146, v153, v160, v166, v174, v180, v188, v194, v202, v209);

    if (v29)
    {
      sub_193710CA4(&v232);
    }

    else
    {
      OUTLINED_FUNCTION_637();
      v231 = v234;
      OUTLINED_FUNCTION_87_3();
      sub_193447600();
      OUTLINED_FUNCTION_300_0();

      if (v2)
      {
        return result;
      }
    }

    if (!v5 && v4 == 0xE000000000000000 || (OUTLINED_FUNCTION_82(), (OUTLINED_FUNCTION_272() & 1) != 0) || (OUTLINED_FUNCTION_82(), OUTLINED_FUNCTION_32_20(), OUTLINED_FUNCTION_66_17(), result = sub_19393C3C0(), (v2 = v1) == 0))
    {
      v232 = v119;
      v233 = v133;
      v234 = v147;
      v229 = v119;
      v230 = v133;
      v231 = v147;
      v51 = OUTLINED_FUNCTION_269_1();
      sub_193710BF4(v51, v52);
      v53 = OUTLINED_FUNCTION_269_1();
      sub_193710BF4(v53, v54);
      ToolKitToolRestrictionContext.InSet.ValueSet.LinkQuery.init()(&v228);
      OUTLINED_FUNCTION_639(v55, v56, v57, v58, v59, v60, v61, v62, v91, v98, v105, v112, v119, *(&v119 + 1), v133, *(&v133 + 1), v147, *(&v147 + 1), v161, v167, v175, v181, v189, v195, v203, v210, v216, v220, actionIdentifier.value._countAndFlagsBits, actionIdentifier.value._object, *&v228.parameterKey);
      v225 = v228.actionIdentifier;
      OUTLINED_FUNCTION_223_2();
      v63 = sub_19393C550();
      OUTLINED_FUNCTION_614(v63, v64, v65, v66, v67, v68, v69, v70, v92, v99, v106, v113, v120, v126, v134, v140, v148, v154, v162, v168, v176, v182, v190, v196, v204, v211);

      if (v29)
      {
        sub_193710CA4(&v232);
      }

      else
      {
        OUTLINED_FUNCTION_637();
        v231 = v234;
        OUTLINED_FUNCTION_87_3();
        sub_193447600();
        OUTLINED_FUNCTION_300_0();

        if (v2)
        {
          return result;
        }
      }

      v232 = v93;
      v233 = v107;
      v229 = v93;
      v230 = v107;
      v71 = OUTLINED_FUNCTION_269_1();
      sub_193710AF0(v71, v72);
      v73 = OUTLINED_FUNCTION_269_1();
      sub_193710AF0(v73, v74);
      v237 = ToolKitToolRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration.init()();
      OUTLINED_FUNCTION_639(v237.triggerIdentifier.value._countAndFlagsBits, v237.triggerIdentifier.value._object, v237.parameterKey.value._countAndFlagsBits, v237.parameterKey.value._object, v75, v76, v77, v78, v93, *(&v93 + 1), v107, *(&v107 + 1), v121, v127, v135, v141, v149, v155, v163, v169, v177, v183, v191, v197, v205, v212, v217, v221, v225.value._countAndFlagsBits, v225.value._object, *&v228.parameterKey);
      sub_193710B4C();
      OUTLINED_FUNCTION_223_2();
      v79 = sub_19393C550();
      OUTLINED_FUNCTION_614(v79, v80, v81, v82, v83, v84, v85, v86, v94, v100, v108, v114, v122, v128, v136, v142, v150, v156, v164, v170, v178, v184, v192, v198, v206, v213);

      if (v29)
      {
        return sub_193710BA0(&v232);
      }

      else
      {
        OUTLINED_FUNCTION_637();
        OUTLINED_FUNCTION_87_3();
        sub_193447600();
        OUTLINED_FUNCTION_300_0();
      }
    }
  }

  return result;
}

void sub_1936F8AC0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC938);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("toolIdentifier");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "parameterKey");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F8C24()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC950);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("triggerIdentifier");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "parameterKey");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F8D88()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC968);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("contentItemClass");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "propertyName");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F8EB8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }
  }
}

void sub_1936F8F3C()
{
  OUTLINED_FUNCTION_110();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  OUTLINED_FUNCTION_66_21();
  if (!v5)
  {
    OUTLINED_FUNCTION_108_1();
    sub_193447600();
  }

  if (!v1)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_181();
    }
  }
}

void sub_1936F9028()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC980);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 4;
  OUTLINED_FUNCTION_69_0("parameterKey");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_19_2((v0 + v4));
  v12 = OUTLINED_FUNCTION_48(v11, "queryIdentifier");
  v9(v12);
  OUTLINED_FUNCTION_46_10();
  OUTLINED_FUNCTION_270_1(v13);
  v15 = OUTLINED_FUNCTION_48(v14, "actionIdentifier");
  v9(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936F9188()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 6 || result == 5 || result == 4)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

void sub_1936F91F8()
{
  OUTLINED_FUNCTION_134_7();
  OUTLINED_FUNCTION_75_3();
  v2 = v1[2];
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  if (v1[1])
  {
    v6 = *v1;
    OUTLINED_FUNCTION_181();
  }

  if (!v0)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_181();
    }

    if (v5)
    {
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_181();
    }
  }

  OUTLINED_FUNCTION_135_4();
}

void sub_1936F92D8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC998);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBE0);
  OUTLINED_FUNCTION_141_1("lowerBound");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_52();
  *v12 = v0;
  *v11 = "upperBound";
  v11[1] = 10;
  v13 = OUTLINED_FUNCTION_143_6(v11);
  v9(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936F9410(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_39_26();
  while (1)
  {
    result = sub_19393C0E0();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_9_30();
      a4();
    }
  }

  return result;
}

void sub_1936F9484()
{
  OUTLINED_FUNCTION_129_10();
  v2 = v0[2];
  v3 = *(v0 + 24);
  if ((v0[1] & 1) == 0)
  {
    v4 = *v0;
    OUTLINED_FUNCTION_667();
  }

  if (!v1 && (v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_667();
  }
}

uint64_t sub_1936F9578()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_77_9();
    return sub_19393C380();
  }

  return result;
}

void sub_1936F9610()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC9C8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_56_18("unit");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "unitAdjustForLocale");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "supportsNegativeNumbers");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936F975C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C0F0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_84_9();
      sub_19393C200();
    }
  }

  return result;
}

void sub_1936F97D4()
{
  OUTLINED_FUNCTION_129_10();
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  if (v0[1])
  {
    v4 = *v0;
    OUTLINED_FUNCTION_225_2();
  }

  if (!v1)
  {
    if (v2 != 2)
    {
      OUTLINED_FUNCTION_144_7();
      sub_19393C2E0();
    }

    if (v3 != 2)
    {
      OUTLINED_FUNCTION_144_7();
      sub_19393C2E0();
    }
  }
}

void sub_1936F98BC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC9E0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v5, xmmword_1939526E0);
  OUTLINED_FUNCTION_83_0("multilineAllowed");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_58_18();
  v12 = OUTLINED_FUNCTION_23_7(v11, "smartQuotesEnabled");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_23_7(v13, "smartDashesEnabled");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_64();
  v16 = OUTLINED_FUNCTION_5_4(v15, "keyboardType");
  v9(v16);
  v17 = OUTLINED_FUNCTION_21_39();
  v18 = OUTLINED_FUNCTION_23_7(v17, "autocorrectionType");
  v9(v18);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_270_1(v19);
  *v20 = "capitalizationType";
  v20[1] = 18;
  v21 = OUTLINED_FUNCTION_41(v20);
  v9(v21);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F9A74()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        continue;
      case 4:
        OUTLINED_FUNCTION_242_2();
        OUTLINED_FUNCTION_180_6();
        goto LABEL_9;
      case 5:
        OUTLINED_FUNCTION_89_2();
        goto LABEL_9;
      case 6:
        OUTLINED_FUNCTION_147_0();
LABEL_9:
        sub_1934982A8();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936F9CF8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC9F8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("AutocorrectionTypeUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_48(v11, "AutocorrectionTypeOn");
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_48(v13, "AutocorrectionTypeOff");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F9E78()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEACA10);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_9_8(v5, xmmword_1939526C0);
  *v0 = 0;
  OUTLINED_FUNCTION_63("KeyboardTypeUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_16_6(v11, "KeyboardTypeAsciiCapable");
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_0_0(v13, "KeyboardTypeNumbersAndPunctuation");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "KeyboardTypeUrl");
  v9(v16);
  v17 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_0_0(v17, "KeyboardTypeNumberPad");
  v9(v18);
  v19 = OUTLINED_FUNCTION_19_2((v0 + 5 * v4));
  v20 = OUTLINED_FUNCTION_0_0(v19, "KeyboardTypePhonePad");
  v9(v20);
  v21 = OUTLINED_FUNCTION_14_4(6);
  v22 = OUTLINED_FUNCTION_16_6(v21, "KeyboardTypeNamePhonePad");
  v9(v22);
  OUTLINED_FUNCTION_120();
  v24 = OUTLINED_FUNCTION_30_0((v0 + v23));
  v25 = OUTLINED_FUNCTION_16_6(v24, "KeyboardTypeEmailAddress");
  v9(v25);
  v26 = OUTLINED_FUNCTION_39_3(&v0[v4]);
  v27 = OUTLINED_FUNCTION_0_0(v26, "KeyboardTypeDecimalPad");
  v9(v27);
  v28 = OUTLINED_FUNCTION_55_2((v0 + 9 * v4));
  v29 = OUTLINED_FUNCTION_28_4(v28, 19);
  v9(v29);
  v30 = OUTLINED_FUNCTION_14_4(10);
  v31 = OUTLINED_FUNCTION_28_4(v30, 21);
  v9(v31);
  v32 = OUTLINED_FUNCTION_14_4(11);
  *v32 = "KeyboardTypeAsciiCapableNumberPad";
  *(v32 + 1) = 33;
  v33 = OUTLINED_FUNCTION_1_3(v32);
  v9(v33);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936FA150()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEACA28);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v5, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("CapitalizationTypeUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v12 = OUTLINED_FUNCTION_25(v11, "CapitalizationTypeWords");
  v9(v12);
  v13 = OUTLINED_FUNCTION_69();
  v14 = OUTLINED_FUNCTION_25(v13, "CapitalizationTypeSentences");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_25(v15, "CapitalizationTypeAllCharacters");
  v9(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936FA2FC@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_123_1();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  *a1 = result;
  return result;
}

void sub_1936FA338()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACA40);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("regularContentItemClass");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_0_0(v10, "linkEntityContentItemClass");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_0_0(v12, "linkEnumContentItemClass");
  v8(v13);
  v14 = OUTLINED_FUNCTION_14_6();
  v15 = OUTLINED_FUNCTION_0_0(v14, "linkCodableContentItemClass");
  v8(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936FA4AC()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v39 = 0uLL;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        OUTLINED_FUNCTION_188();
        if (*(&v39 + 1))
        {
          v2 = v39;
        }

        else
        {
          v2 = 0;
        }

        if (*(&v39 + 1))
        {
          v12 = *(&v39 + 1);
        }

        else
        {
          v12 = 0xE000000000000000;
        }

        OUTLINED_FUNCTION_123_1();
        v13 = swift_allocObject();
        *(v13 + 16) = v2;
        *(v13 + 24) = v12;
        *v1 = v13;
        break;
      case 2:
        OUTLINED_FUNCTION_383(result, v4, v5, v6, v7, v8, v9, v10, v36, v37, v11);
        sub_193498018();
        OUTLINED_FUNCTION_188();
        if (*(&v39 + 1) == 1)
        {
          OUTLINED_FUNCTION_378_0();
          ToolKitToolContentItemClassDescriptor.LinkEntityContentItemClass.init()();
        }

        else
        {
          v2 = &v39;
        }

        OUTLINED_FUNCTION_386();
        OUTLINED_FUNCTION_95();
        v26 = swift_allocObject();
        OUTLINED_FUNCTION_292_0(v26, v27, v28, v29, v30, v31, v32, v33, v34);
        OUTLINED_FUNCTION_277(v35);
        break;
      case 3:
        OUTLINED_FUNCTION_383(result, v4, v5, v6, v7, v8, v9, v10, v36, v37, v11);
        sub_193498018();
        OUTLINED_FUNCTION_188();
        if (*(&v39 + 1) == 1)
        {
          OUTLINED_FUNCTION_378_0();
          ToolKitToolContentItemClassDescriptor.LinkEnumContentItemClass.init()();
        }

        else
        {
          v2 = &v39;
        }

        OUTLINED_FUNCTION_386();
        OUTLINED_FUNCTION_95();
        v15 = swift_allocObject();
        OUTLINED_FUNCTION_292_0(v15, v16, v17, v18, v19, v20, v21, v22, v23);
        OUTLINED_FUNCTION_285(v24);
        break;
      case 4:
        v39 = xmmword_1939526A0;
        OUTLINED_FUNCTION_150_9();
        sub_193498018();
        OUTLINED_FUNCTION_188();
        v14 = *(&v39 + 1);
        if (*(&v39 + 1) == 1)
        {
          OUTLINED_FUNCTION_378_0();
          ToolKitToolContentItemClassDescriptor.LinkCodableContentItemClass.init()();
          v14 = v38;
        }

        else
        {
          v2 = &v39;
        }

        v2 = *v2;
        OUTLINED_FUNCTION_123_1();
        v25 = swift_allocObject();
        *(v25 + 16) = v2;
        *(v25 + 24) = v14;
        OUTLINED_FUNCTION_331(v25);
        break;
      default:
        continue;
    }
  }
}

void sub_1936FA710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  switch(*v8 >> 62)
  {
    case 1uLL:
      v11 = v9 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = *(v11 + 32);
      OUTLINED_FUNCTION_182_0(a1, a2, a3, &type metadata for ToolKitToolContentItemClassDescriptor.LinkEntityContentItemClass, a5, &off_1F07E39D0, a7, a8, *(v11 + 16));
      goto LABEL_6;
    case 2uLL:
      v10 = v9 & 0x3FFFFFFFFFFFFFFFLL;
      v12 = *(v10 + 32);
      OUTLINED_FUNCTION_135_1(a1, a2, a3, &type metadata for ToolKitToolContentItemClassDescriptor.LinkEnumContentItemClass, a5, &off_1F07E3A00, a7, a8, *(v10 + 16));
      goto LABEL_6;
    case 3uLL:
      OUTLINED_FUNCTION_174(a1, a2, a3, &type metadata for ToolKitToolContentItemClassDescriptor.LinkCodableContentItemClass, a5, &off_1F07E3A30, a7, a8, *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10));
LABEL_6:
      OUTLINED_FUNCTION_130_10();
      sub_193447600();
      break;
    default:
      OUTLINED_FUNCTION_604(v9);
      OUTLINED_FUNCTION_37_17();
      OUTLINED_FUNCTION_225_2();
      OUTLINED_FUNCTION_258_1();

      break;
  }
}

void sub_1936FA86C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEACA58);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBE0);
  *v1 = 2;
  *v0 = "bundleIdentifier";
  *(v0 + 8) = 16;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_65();
  v10(v11);
  v12 = OUTLINED_FUNCTION_9_4((v1 + v5));
  v13 = OUTLINED_FUNCTION_48(v12, "identifier");
  v10(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936FAA18()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEACA70);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBE0);
  *v1 = 2;
  *v0 = "bundleIdentifier";
  *(v0 + 8) = 16;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_65();
  v10(v11);
  v12 = OUTLINED_FUNCTION_9_4((v1 + v5));
  v13 = OUTLINED_FUNCTION_48(v12, "identifier");
  v10(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936FAB58()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

void sub_1936FAC50()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACAA0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("property");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_16_6(v10, "comparison");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_16_6(v12, "rawGroupId");
  v8(v13);
  v14 = OUTLINED_FUNCTION_14_6();
  v15 = OUTLINED_FUNCTION_0_0(v14, "contentItemClass");
  v8(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936FAE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_108_0();
  v12 = sub_19393C420();
  __swift_allocate_value_buffer(v12, qword_1EAEACAB8);
  OUTLINED_FUNCTION_136_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v13);
  v15 = *(v14 + 72);
  OUTLINED_FUNCTION_49_0();
  v59 = OUTLINED_FUNCTION_293_2();
  OUTLINED_FUNCTION_8_18(v59, xmmword_193952750);
  *v10 = "notEqualTo";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v16 = *MEMORY[0x1E69AADC8];
  v17 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v17);
  v19 = *(v18 + 104);
  v20 = OUTLINED_FUNCTION_50_1();
  v19(v20);
  v21 = OUTLINED_FUNCTION_58_18();
  v22 = OUTLINED_FUNCTION_5_4(v21, "equalTo");
  v19(v22);
  v23 = OUTLINED_FUNCTION_9_4((v11 + 2 * v15));
  v24 = OUTLINED_FUNCTION_5_4(v23, "hasValue");
  v19(v24);
  v25 = OUTLINED_FUNCTION_9_64();
  v26 = OUTLINED_FUNCTION_36_0(v25, "hasNoValue");
  v19(v26);
  v27 = OUTLINED_FUNCTION_21_39();
  v28 = OUTLINED_FUNCTION_23_7(v27, "greaterThan");
  v19(v28);
  v29 = OUTLINED_FUNCTION_38_2();
  *v30 = 6;
  v31 = OUTLINED_FUNCTION_5_4(v29, "greaterThanOrEqualTo");
  v19(v31);
  v32 = OUTLINED_FUNCTION_30_0((v11 + 6 * v15));
  v33 = OUTLINED_FUNCTION_36_0(v32, "lessThan");
  v19(v33);
  v34 = OUTLINED_FUNCTION_33_0(8 * v15);
  *v35 = 8;
  v36 = OUTLINED_FUNCTION_5_4(v34, "lessThanOrEqualTo");
  v19(v36);
  v37 = OUTLINED_FUNCTION_55_2((v11 + 8 * v15));
  *v37 = "contains";
  *(v37 + 1) = 8;
  v38 = OUTLINED_FUNCTION_41(v37);
  v19(v38);
  OUTLINED_FUNCTION_44(9 * v15);
  OUTLINED_FUNCTION_384(v39);
  v41 = OUTLINED_FUNCTION_23_7(v40, "notContains");
  v19(v41);
  v42 = OUTLINED_FUNCTION_60_1((v11 + 10 * v15));
  *v42 = "beginsWith";
  *(v42 + 1) = v43;
  v44 = OUTLINED_FUNCTION_41(v42);
  v19(v44);
  v45 = OUTLINED_FUNCTION_72();
  *v46 = 12;
  v47 = OUTLINED_FUNCTION_36_0(v45, "endsWith");
  v19(v47);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_625(v48);
  v50 = OUTLINED_FUNCTION_36_0(v49, "inTheNext");
  v19(v50);
  v51 = OUTLINED_FUNCTION_72();
  *v52 = 14;
  *v51 = "inTheLast";
  v51[1] = 9;
  v53 = OUTLINED_FUNCTION_41(v51);
  v19(v53);
  v54 = OUTLINED_FUNCTION_105_14((v11 + 14 * v15));
  v55 = OUTLINED_FUNCTION_15(v54, 7);
  v19(v55);
  OUTLINED_FUNCTION_33_0(a10);
  OUTLINED_FUNCTION_256_1(v56);
  *v57 = "isBetween";
  v57[1] = 9;
  v58 = OUTLINED_FUNCTION_41(v57);
  v19(v58);
  sub_19393C410();
  OUTLINED_FUNCTION_107();
}

void sub_1936FB8F4()
{
  switch(*v0 >> 60)
  {
    case 1:
      OUTLINED_FUNCTION_128_10();
      OUTLINED_FUNCTION_182_0(v38, v39, v40, &type metadata for ToolKitToolTypedValue, v41, &off_1F07E2DB0, v42, v43, v62);
      goto LABEL_15;
    case 2:
      OUTLINED_FUNCTION_128_10();
      v11 = OUTLINED_FUNCTION_135_1(v19, v20, v21, &type metadata for ToolKitToolNullValue, v22, &off_1F07E4EA0, v23, v24, v62);
      goto LABEL_8;
    case 3:
      OUTLINED_FUNCTION_128_10();
      v11 = OUTLINED_FUNCTION_174(v26, v27, v28, &type metadata for ToolKitToolNullValue, v29, &off_1F07E4EA0, v30, v31, v62);
      goto LABEL_8;
    case 4:
      OUTLINED_FUNCTION_128_10();
      OUTLINED_FUNCTION_302_1(v13, v14, v15, &type metadata for ToolKitToolTypedValue, v16, &off_1F07E2DB0, v17, v18, v62);
      goto LABEL_15;
    case 5:
      OUTLINED_FUNCTION_128_10();
      OUTLINED_FUNCTION_303_0(v44, v45, v46, &type metadata for ToolKitToolTypedValue, v47, &off_1F07E2DB0, v48, v49, v62);
      goto LABEL_15;
    case 6:
      OUTLINED_FUNCTION_128_10();
      OUTLINED_FUNCTION_653(v56, v57, v58, &type metadata for ToolKitToolTypedValue, v59, &off_1F07E2DB0, v60, v61, v62);
      goto LABEL_15;
    case 7:
      OUTLINED_FUNCTION_128_10();
      OUTLINED_FUNCTION_654(v32, v33, v34, &type metadata for ToolKitToolTypedValue, v35, &off_1F07E2DB0, v36, v37, v62);
      goto LABEL_15;
    case 8:
    case 9:
    case 0xALL:
    case 0xBLL:
    case 0xCLL:
      OUTLINED_FUNCTION_128_10();
      goto LABEL_15;
    case 0xDLL:
      OUTLINED_FUNCTION_128_10();
      OUTLINED_FUNCTION_655(v50, v51, v52, &type metadata for ToolKitToolTypedValue, v53, &off_1F07E2DB0, v54, v55, v62);
      goto LABEL_15;
    case 0xELL:
      OUTLINED_FUNCTION_128_10();
      v9 = &type metadata for ToolKitToolNullValue;
      v10 = &off_1F07E4EA0;
      v11 = &v62;
      v12 = 15;
LABEL_8:
      sub_193447324(v11, v12, v7, v9, v8, v10);
      return;
    case 0xFLL:
      v25 = *v0 & 0xFFFFFFFFFFFFFFFLL;
      OUTLINED_FUNCTION_357();
      goto LABEL_15;
    default:
      OUTLINED_FUNCTION_190_2();
      OUTLINED_FUNCTION_134(v1, v2, v3, &type metadata for ToolKitToolTypedValue, v4, &off_1F07E2DB0, v5, v6, v62);
LABEL_15:
      sub_193447600();
      return;
  }
}

void sub_1936FBBC0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACAD0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("first");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "second");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936FBCF0()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_121_9();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_607();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_372_0();
LABEL_8:
      sub_193498018();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_155_6();
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1936FBD64()
{
  OUTLINED_FUNCTION_129_10();
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_66_21();
  if (!v4)
  {
    OUTLINED_FUNCTION_108_1();
    sub_193447600();
  }

  if (!v1)
  {
    OUTLINED_FUNCTION_380();
    if (!v4)
    {
      OUTLINED_FUNCTION_129_4();
      sub_193447600();
    }
  }
}

uint64_t sub_1936FBE6C@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_173_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_173_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_173_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_173_0();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v4 + 16) = result;
  *(v3 + 16) = v4;
  *(v2 + 16) = v3;
  *a1 = v2;
  return result;
}

void sub_1936FBEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_108_0();
  v12 = sub_19393C420();
  __swift_allocate_value_buffer(v12, qword_1EAEACAE8);
  OUTLINED_FUNCTION_136_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v13);
  v15 = *(v14 + 72);
  OUTLINED_FUNCTION_49_0();
  v60 = OUTLINED_FUNCTION_293_2();
  OUTLINED_FUNCTION_8_18(v60, xmmword_193952750);
  OUTLINED_FUNCTION_83_0("equalTo");
  v16 = *MEMORY[0x1E69AADC8];
  v17 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v17);
  v19 = *(v18 + 104);
  v20 = OUTLINED_FUNCTION_50_1();
  v19(v20);
  v21 = OUTLINED_FUNCTION_58_18();
  *v21 = "notEqualTo";
  v21[1] = 10;
  v22 = OUTLINED_FUNCTION_41(v21);
  v19(v22);
  v23 = OUTLINED_FUNCTION_9_4((v11 + 2 * v15));
  v24 = OUTLINED_FUNCTION_5_4(v23, "hasValue");
  v19(v24);
  v25 = OUTLINED_FUNCTION_9_64();
  v26 = OUTLINED_FUNCTION_36_0(v25, "hasNoValue");
  v19(v26);
  v27 = OUTLINED_FUNCTION_21_39();
  v28 = OUTLINED_FUNCTION_36_0(v27, "greaterThan");
  v19(v28);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_140_0(v29);
  v31 = OUTLINED_FUNCTION_5_4(v30, "greaterThanOrEqualTo");
  v19(v31);
  v32 = OUTLINED_FUNCTION_30_0((v11 + v15 * v10));
  v33 = OUTLINED_FUNCTION_23_7(v32, "lessThan");
  v19(v33);
  v34 = OUTLINED_FUNCTION_33_0(8 * v15);
  *v35 = 8;
  v36 = OUTLINED_FUNCTION_5_4(v34, "lessThanOrEqualTo");
  v19(v36);
  v37 = OUTLINED_FUNCTION_55_2((v11 + 8 * v15));
  *v37 = "contains";
  *(v37 + 1) = 8;
  v38 = OUTLINED_FUNCTION_41(v37);
  v19(v38);
  OUTLINED_FUNCTION_44(9 * v15);
  OUTLINED_FUNCTION_384(v39);
  v41 = OUTLINED_FUNCTION_36_0(v40, "notContains");
  v19(v41);
  v42 = OUTLINED_FUNCTION_67_1((v11 + 10 * v15));
  *v42 = "beginsWith";
  *(v42 + 1) = v43;
  v44 = OUTLINED_FUNCTION_41(v42);
  v19(v44);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_632(v45);
  v47 = OUTLINED_FUNCTION_23_7(v46, "endsWith");
  v19(v47);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_631(v48);
  v50 = OUTLINED_FUNCTION_23_7(v49, "inTheNext");
  v19(v50);
  v51 = OUTLINED_FUNCTION_52_0();
  *v52 = 14;
  *v51 = "inTheLast";
  v51[1] = 9;
  v53 = OUTLINED_FUNCTION_41(v51);
  v19(v53);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_180_0(v54);
  v56 = OUTLINED_FUNCTION_15(v55, 7);
  v19(v56);
  OUTLINED_FUNCTION_33_0(a10);
  OUTLINED_FUNCTION_256_1(v57);
  *v58 = "isBetween";
  v58[1] = 9;
  v59 = OUTLINED_FUNCTION_41(v58);
  v19(v59);
  sub_19393C410();
  OUTLINED_FUNCTION_107();
}

void sub_1936FC238()
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v3 = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        OUTLINED_FUNCTION_7_43();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        OUTLINED_FUNCTION_235_2();
        if (v5)
        {
          OUTLINED_FUNCTION_173_0();
          v2 = swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          v6 = swift_allocObject();
          OUTLINED_FUNCTION_132_9(v6);
        }

        OUTLINED_FUNCTION_173_0();
        v7 = swift_allocObject();
        *(v7 + 16) = v2;
        *v1 = v7;
        continue;
      case 2:
        OUTLINED_FUNCTION_7_43();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        OUTLINED_FUNCTION_235_2();
        if (v5)
        {
          OUTLINED_FUNCTION_173_0();
          v2 = swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          v26 = swift_allocObject();
          OUTLINED_FUNCTION_132_9(v26);
        }

        OUTLINED_FUNCTION_173_0();
        v27 = swift_allocObject();
        *(v27 + 16) = v2;
        OUTLINED_FUNCTION_347(v27);
        continue;
      case 3:
        OUTLINED_FUNCTION_13_46();
        sub_1934982A8();
        OUTLINED_FUNCTION_321_0();
        OUTLINED_FUNCTION_92_11();
        if (v5)
        {
          v2 = v18;
        }

        else
        {
          v2 = 0;
        }

        OUTLINED_FUNCTION_173_0();
        v19 = swift_allocObject();
        *(v19 + 16) = v2;
        OUTLINED_FUNCTION_257_0(v19);
        continue;
      case 4:
        OUTLINED_FUNCTION_13_46();
        sub_1934982A8();
        OUTLINED_FUNCTION_321_0();
        OUTLINED_FUNCTION_92_11();
        if (v5)
        {
          v2 = v22;
        }

        else
        {
          v2 = 0;
        }

        OUTLINED_FUNCTION_173_0();
        v23 = swift_allocObject();
        *(v23 + 16) = v2;
        OUTLINED_FUNCTION_330(v23);
        continue;
      case 5:
        OUTLINED_FUNCTION_7_43();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        OUTLINED_FUNCTION_235_2();
        if (v5)
        {
          OUTLINED_FUNCTION_173_0();
          v2 = swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          v13 = swift_allocObject();
          OUTLINED_FUNCTION_132_9(v13);
        }

        OUTLINED_FUNCTION_173_0();
        v14 = swift_allocObject();
        *(v14 + 16) = v2;
        OUTLINED_FUNCTION_277(v14);
        continue;
      case 6:
        OUTLINED_FUNCTION_7_43();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        OUTLINED_FUNCTION_235_2();
        if (v5)
        {
          OUTLINED_FUNCTION_173_0();
          v2 = swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          v28 = swift_allocObject();
          OUTLINED_FUNCTION_132_9(v28);
        }

        OUTLINED_FUNCTION_173_0();
        v11 = swift_allocObject();
        *(v11 + 16) = v2;
        v12 = 0x5000000000000000;
        goto LABEL_65;
      case 7:
        OUTLINED_FUNCTION_7_43();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        OUTLINED_FUNCTION_235_2();
        if (v5)
        {
          OUTLINED_FUNCTION_173_0();
          v2 = swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          v30 = swift_allocObject();
          OUTLINED_FUNCTION_132_9(v30);
        }

        OUTLINED_FUNCTION_173_0();
        v31 = swift_allocObject();
        *(v31 + 16) = v2;
        OUTLINED_FUNCTION_285_1(v31);
        continue;
      case 8:
        OUTLINED_FUNCTION_7_43();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        OUTLINED_FUNCTION_235_2();
        if (v5)
        {
          OUTLINED_FUNCTION_173_0();
          v2 = swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          v24 = swift_allocObject();
          OUTLINED_FUNCTION_132_9(v24);
        }

        OUTLINED_FUNCTION_173_0();
        v25 = swift_allocObject();
        *(v25 + 16) = v2;
        OUTLINED_FUNCTION_332(v25);
        continue;
      case 9:
        OUTLINED_FUNCTION_7_43();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        OUTLINED_FUNCTION_235_2();
        if (v5)
        {
          OUTLINED_FUNCTION_173_0();
          v2 = swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          v33 = swift_allocObject();
          OUTLINED_FUNCTION_132_9(v33);
        }

        OUTLINED_FUNCTION_173_0();
        v34 = swift_allocObject();
        *(v34 + 16) = v2;
        OUTLINED_FUNCTION_285(v34);
        continue;
      case 10:
        OUTLINED_FUNCTION_7_43();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        OUTLINED_FUNCTION_235_2();
        if (v5)
        {
          OUTLINED_FUNCTION_173_0();
          v2 = swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          v17 = swift_allocObject();
          OUTLINED_FUNCTION_132_9(v17);
        }

        OUTLINED_FUNCTION_173_0();
        v11 = swift_allocObject();
        *(v11 + 16) = v2;
        v12 = 0x9000000000000000;
        goto LABEL_65;
      case 11:
        OUTLINED_FUNCTION_7_43();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        OUTLINED_FUNCTION_235_2();
        if (v5)
        {
          OUTLINED_FUNCTION_173_0();
          v2 = swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          v32 = swift_allocObject();
          OUTLINED_FUNCTION_132_9(v32);
        }

        OUTLINED_FUNCTION_173_0();
        v11 = swift_allocObject();
        *(v11 + 16) = v2;
        v12 = 0xA000000000000000;
        goto LABEL_65;
      case 12:
        OUTLINED_FUNCTION_7_43();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        OUTLINED_FUNCTION_235_2();
        if (v5)
        {
          OUTLINED_FUNCTION_173_0();
          v2 = swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          v10 = swift_allocObject();
          OUTLINED_FUNCTION_132_9(v10);
        }

        OUTLINED_FUNCTION_173_0();
        v11 = swift_allocObject();
        *(v11 + 16) = v2;
        v12 = 0xB000000000000000;
        goto LABEL_65;
      case 13:
        OUTLINED_FUNCTION_7_43();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        OUTLINED_FUNCTION_235_2();
        if (v5)
        {
          OUTLINED_FUNCTION_173_0();
          v2 = swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          v15 = swift_allocObject();
          OUTLINED_FUNCTION_132_9(v15);
        }

        OUTLINED_FUNCTION_173_0();
        v16 = swift_allocObject();
        *(v16 + 16) = v2;
        OUTLINED_FUNCTION_331(v16);
        continue;
      case 14:
        OUTLINED_FUNCTION_7_43();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        OUTLINED_FUNCTION_235_2();
        if (v5)
        {
          OUTLINED_FUNCTION_173_0();
          v2 = swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          v29 = swift_allocObject();
          OUTLINED_FUNCTION_132_9(v29);
        }

        OUTLINED_FUNCTION_173_0();
        v11 = swift_allocObject();
        *(v11 + 16) = v2;
        v12 = 0xD000000000000000;
LABEL_65:
        OUTLINED_FUNCTION_266_1(v11, v12);
        break;
      case 15:
        OUTLINED_FUNCTION_13_46();
        sub_1934982A8();
        OUTLINED_FUNCTION_321_0();
        OUTLINED_FUNCTION_92_11();
        if (v5)
        {
          v2 = v8;
        }

        else
        {
          v2 = 0;
        }

        OUTLINED_FUNCTION_173_0();
        v9 = swift_allocObject();
        OUTLINED_FUNCTION_361_0(v9);
        break;
      case 16:
        OUTLINED_FUNCTION_7_43();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        OUTLINED_FUNCTION_235_2();
        if (v5)
        {
          OUTLINED_FUNCTION_173_0();
          v2 = swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          swift_allocObject();
          OUTLINED_FUNCTION_173_0();
          v20 = swift_allocObject();
          OUTLINED_FUNCTION_132_9(v20);
        }

        OUTLINED_FUNCTION_173_0();
        v21 = swift_allocObject();
        *(v21 + 16) = v2;
        *v1 = v21 | 0xF000000000000000;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1936FCA6C()
{
  switch(*v0 >> 60)
  {
    case 1:
      OUTLINED_FUNCTION_127_8();
      OUTLINED_FUNCTION_165_4(v10, v11, v12, &type metadata for ToolKitToolTypeInstance, v13, &off_1F07E35A8, v14, v15, v16, v17[0]);
      goto LABEL_9;
    case 2:
      OUTLINED_FUNCTION_127_8();
      v9 = 3;
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_127_8();
      v9 = 4;
      goto LABEL_6;
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xALL:
    case 0xBLL:
    case 0xCLL:
    case 0xDLL:
    case 0xFLL:
      OUTLINED_FUNCTION_127_8();
      goto LABEL_9;
    case 0xELL:
      OUTLINED_FUNCTION_127_8();
      v9 = 15;
LABEL_6:
      sub_193447324(v17, v9, v7, &type metadata for ToolKitToolNullValue, v8, &off_1F07E4EA0);
      break;
    default:
      OUTLINED_FUNCTION_185_5();
      OUTLINED_FUNCTION_153(v1, v2, v3, &type metadata for ToolKitToolTypeInstance, v4, &off_1F07E35A8, v5, v6, v16, v17[0]);
LABEL_9:
      sub_193447600();
      break;
  }
}

void sub_1936FCD24()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACB00);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("property");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_0_0(v10, "comparisonTemplate");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_0_0(v12, "rawGroupId");
  v8(v13);
  v14 = OUTLINED_FUNCTION_14_6();
  v15 = OUTLINED_FUNCTION_0_0(v14, "contentItemClass");
  v8(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936FCE98()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_121_9();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_607();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        goto LABEL_8;
      case 2:
        OUTLINED_FUNCTION_155_6();
        goto LABEL_8;
      case 3:
        sub_19393C200();
        continue;
      case 4:
        OUTLINED_FUNCTION_640();
LABEL_8:
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936FD0F8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACB18);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("operatorType");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "operands");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936FD228()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_62();
      sub_193498238(v3);
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_89_2();
      sub_1934982A8();
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1936FD2BC()
{
  OUTLINED_FUNCTION_96_3();
  v2 = *(v0 + 16);
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_221_1();
    v9 = OUTLINED_FUNCTION_85_3(v3, v4, v5, &type metadata for ToolKitToolCompoundPredicate.OperatorType, v6, &off_1F07E3B80, v7, v8, v21);
    sub_193447324(v9, v10, v11, v12, v13, v14);
  }

  if (!v1)
  {
    if (*(v2 + 16))
    {
      OUTLINED_FUNCTION_129_4();
      sub_193451CFC(v15, v16, v17, v18, v19, v20);
    }
  }
}

void sub_1936FD3B0()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEACB30);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("OperatorTypeUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_48(v11, "OperatorTypeAnd");
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_48(v13, "OperatorTypeOr");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936FD5B8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACB78);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("identifier");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "identifiers");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936FD7A0()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_77_9();
    return sub_193451CFC(v2, v3, v4, v5, v6, v7);
  }

  return result;
}

void sub_1936FD868()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }
  }
}

void sub_1936FD8D0()
{
  if ((~*v0 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_89_0();
    OUTLINED_FUNCTION_153(v1, v2, v3, &type metadata for ToolKitToolTypeInstance, v4, &off_1F07E35A8, v5, v6, v8, v7);
    sub_193447600();
  }
}

void sub_1936FDA9C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACC50);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("predicate");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "sort");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "limit");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936FDBEC()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      case 2:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      case 1:
        OUTLINED_FUNCTION_89_2();
        sub_193498018();
        break;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1936FDC9C()
{
  OUTLINED_FUNCTION_75_3();
  v2 = *v0;
  v3 = *(v0 + 17);
  v4 = v0[3];
  v5 = *(v0 + 32);
  OUTLINED_FUNCTION_66_21();
  if (!v13)
  {
    OUTLINED_FUNCTION_85_3(v6, v7, v8, &type metadata for ToolKitToolQuery.AnyPredicate, v9, &off_1F07E3E10, v10, v11, v12);
    sub_193447600();
  }

  if (!v1)
  {
    if ((v3 & 1) == 0)
    {
      v20 = *(v0 + 16);
      v14 = OUTLINED_FUNCTION_104_11(v6, v7, v8, &type metadata for ToolKitToolQuery.SortOrder, v9, &off_1F07E3DE8, v10, v11, v0[1]);
      sub_193447324(v14, v15, v16, v17, v18, v19);
    }

    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_388();
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }
  }
}

void sub_1936FDDC0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEACC68);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_141_1("SortOrderUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_65();
  v10(v11);
  v12 = OUTLINED_FUNCTION_4_9();
  *v12 = "SortOrderForward";
  v12[1] = 16;
  v13 = OUTLINED_FUNCTION_143_6(v12);
  v10(v13);
  v14 = OUTLINED_FUNCTION_46_10();
  *v15 = v1;
  *v14 = "SortOrderReverse";
  v14[1] = 16;
  v16 = OUTLINED_FUNCTION_143_6(v14);
  v10(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936FDF48@<X0>(void *a1@<X8>)
{
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result = ToolKitToolComparisonPredicate.init()(v3);
  *a1 = v1;
  return result;
}

void sub_1936FDF88()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEACC80);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v28 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_11_3(v28, xmmword_193951270);
  OUTLINED_FUNCTION_63("comparison");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  *v10 = "compound";
  v10[1] = 8;
  v11 = OUTLINED_FUNCTION_1_3(v10);
  v8(v11);
  v12 = OUTLINED_FUNCTION_46_10();
  *v13 = 3;
  v14 = OUTLINED_FUNCTION_0_0(v12, "stringSearch");
  v8(v14);
  v15 = OUTLINED_FUNCTION_14_6();
  v16 = OUTLINED_FUNCTION_18_1(v15, "idSearch");
  v8(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_16_6(v17, "all");
  v8(v18);
  v19 = OUTLINED_FUNCTION_66_22();
  v20 = OUTLINED_FUNCTION_18_1(v19, "suggested");
  v8(v20);
  v21 = OUTLINED_FUNCTION_30_0((v0 + 3 * v4));
  v22 = OUTLINED_FUNCTION_0_0(v21, "searchableItem");
  v8(v22);
  OUTLINED_FUNCTION_120();
  v24 = OUTLINED_FUNCTION_39_3((v0 + v23));
  v25 = OUTLINED_FUNCTION_28_4(v24, 5);
  v8(v25);
  v26 = OUTLINED_FUNCTION_67_1((v0 + 8 * v4));
  v27 = OUTLINED_FUNCTION_0_0(v26, "valueSearch");
  v8(v27);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936FE1C0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        memset(v44, 0, 56);
        *(&v44[3] + 8) = xmmword_193961910;
        OUTLINED_FUNCTION_284_1();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        v39 = v44[0];
        v40 = v44[1];
        v41 = v44[2];
        v4 = *(&v44[3] + 1);
        v42 = *&v44[3];
        if (*(&v44[3] + 1) == 1)
        {
          ToolKitToolComparisonPredicate.init()(__src);
          memcpy(v43, v44, 0x48uLL);
          sub_19344E6DC(v43, &qword_1EAE419F0, &qword_19397F9F8);
        }

        else
        {
          v24 = *&v44[4];
          memcpy(__dst, v44, sizeof(__dst));
          v43[0] = v44[0];
          v43[1] = v44[1];
          v43[2] = v44[2];
          v43[3] = v44[3];
          *&v43[4] = *&v44[4];
          sub_1936C964C(v43, v36);
          sub_19344E6DC(__dst, &qword_1EAE419F0, &qword_19397F9F8);
          __src[0] = v39;
          __src[1] = v40;
          __src[2] = v41;
          *&__src[3] = v42;
          *(&__src[3] + 1) = v4;
          *&__src[4] = v24;
        }

        v25 = swift_allocObject();
        memcpy((v25 + 16), __src, 0x48uLL);
        *v1 = v25;
        break;
      case 2:
        memset(v44, 0, 24);
        OUTLINED_FUNCTION_284_1();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        v12 = *&v44[1];
        if (*&v44[1])
        {
          v13 = BYTE8(v44[0]);
          v14 = (*(&v44[0] + 1) >> 8) & 1;
          v15 = v44;
        }

        else
        {
          v15 = v43;
          ToolKitToolCompoundPredicate.init()(v43);
          v13 = BYTE8(v43[0]);
          LOBYTE(v14) = BYTE9(v43[0]);
          v12 = *&v43[1];
        }

        v34 = *v15;
        OUTLINED_FUNCTION_97_6();
        v35 = swift_allocObject();
        *(v35 + 16) = v34;
        *(v35 + 24) = v13;
        *(v35 + 25) = v14;
        *(v35 + 32) = v12;
        v31 = v35 | 0x1000000000000000;
        goto LABEL_37;
      case 3:
        v44[0] = xmmword_1939526A0;
        OUTLINED_FUNCTION_284_1();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        v6 = *(&v44[0] + 1);
        if (*(&v44[0] + 1) == 1)
        {
          v7 = v43;
          ToolKitToolStringSearchPredicate.init()();
          v6 = *(&v43[0] + 1);
        }

        else
        {
          v7 = v44;
        }

        v22 = *v7;
        OUTLINED_FUNCTION_123_1();
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        *(v23 + 24) = v6;
        OUTLINED_FUNCTION_257_0(v23);
        break;
      case 4:
        memset(v44, 0, 24);
        OUTLINED_FUNCTION_284_1();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        v8 = *&v44[1];
        if (*&v44[1])
        {
          v9 = *(&v44[0] + 1);
          v10 = v44;
        }

        else
        {
          v10 = v43;
          ToolKitToolIdSearchPredicate.init()();
          v9 = *(&v43[0] + 1);
          v8 = *&v43[1];
        }

        v32 = *v10;
        OUTLINED_FUNCTION_97_6();
        v33 = swift_allocObject();
        v33[2] = v32;
        v33[3] = v9;
        v33[4] = v8;
        OUTLINED_FUNCTION_330(v33);
        break;
      case 5:
        LOBYTE(v44[0]) = 1;
        OUTLINED_FUNCTION_284_1();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        if (LOBYTE(v44[0]) == 1)
        {
          ToolKitToolAllPredicate.init()();
        }

        v5 = swift_allocEmptyBox();
        OUTLINED_FUNCTION_277(v5);
        break;
      case 6:
        LOBYTE(v44[0]) = 1;
        OUTLINED_FUNCTION_284_1();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        if (LOBYTE(v44[0]) == 1)
        {
          ToolKitToolSuggestedPredicate.init()();
        }

        v16 = swift_allocEmptyBox();
        OUTLINED_FUNCTION_266_1(v16, 0x5000000000000000);
        break;
      case 7:
        v44[0] = xmmword_19397F920;
        OUTLINED_FUNCTION_284_1();
        sub_193498018();
        v17 = OUTLINED_FUNCTION_321_0();
        v18 = *(&v44[0] + 1);
        if (*(&v44[0] + 1) >> 60 == 11)
        {
          ToolKitToolSearchableItemPredicate.init()(v43, v17);
          sub_19346DAA8(*&v44[0], *(&v44[0] + 1));
          v18 = *(&v43[0] + 1);
          v19 = *&v43[0];
        }

        else
        {
          v19 = *&v44[0];
          v26 = OUTLINED_FUNCTION_125_3();
          sub_193450268(v26, v27);
          v28 = OUTLINED_FUNCTION_125_3();
          sub_19346DAA8(v28, v29);
        }

        OUTLINED_FUNCTION_123_1();
        v30 = swift_allocObject();
        *(v30 + 16) = v19;
        *(v30 + 24) = v18;
        v31 = v30 | 0x6000000000000000;
LABEL_37:
        *v1 = v31;
        break;
      case 8:
        LOBYTE(v44[0]) = 1;
        OUTLINED_FUNCTION_284_1();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        if (LOBYTE(v44[0]) == 1)
        {
          ToolKitToolValidPredicate.init()();
        }

        v11 = swift_allocEmptyBox();
        OUTLINED_FUNCTION_332(v11);
        break;
      case 9:
        *&v44[0] = 0;
        OUTLINED_FUNCTION_284_1();
        sub_193498018();
        OUTLINED_FUNCTION_321_0();
        v20 = *&v44[0];
        if (!*&v44[0])
        {
          ToolKitToolValueSearchPredicate.init()();
          v20 = *&v43[0];
        }

        OUTLINED_FUNCTION_173_0();
        v21 = swift_allocObject();
        *(v21 + 16) = v20;
        OUTLINED_FUNCTION_285(v21);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936FE75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  switch(*v8 >> 60)
  {
    case 1uLL:
      v25 = v9 & 0xFFFFFFFFFFFFFFFLL;
      v26 = *(v25 + 16);
      v27 = *(v25 + 24);
      v28 = *(v25 + 25);
      v29 = *(v25 + 32);
      LOBYTE(__dst[1]) = v27;
      BYTE1(__dst[1]) = v28;
      __dst[2] = v29;
      OUTLINED_FUNCTION_617(a1, a2, a3, &type metadata for ToolKitToolCompoundPredicate, a5, &off_1F07E3B50, a7, a8, v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v26);
      break;
    case 2uLL:
    case 6uLL:
      OUTLINED_FUNCTION_93_10((v9 & 0xFFFFFFFFFFFFFFFLL));
      break;
    case 3uLL:
      v16 = (v9 & 0xFFFFFFFFFFFFFFFLL);
      v17 = v16[2].n128_u64[0];
      OUTLINED_FUNCTION_93_10(v16);
      __dst[2] = v18;
      OUTLINED_FUNCTION_618(v19, v20, v21, &type metadata for ToolKitToolIdSearchPredicate, v22, &off_1F07E3C08, v23, v24, v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], __dst[0]);
      break;
    case 4uLL:
    case 5uLL:
    case 7uLL:
      break;
    case 8uLL:
      __dst[0] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      break;
    default:
      memcpy(__dst, (v9 + 16), sizeof(__dst));
      v10 = memcpy(v31, __dst, sizeof(v31));
      OUTLINED_FUNCTION_153(v10, v11, v12, &type metadata for ToolKitToolComparisonPredicate, v13, &off_1F07E3A60, v14, v15, v30, v31[0]);
      break;
  }

  OUTLINED_FUNCTION_23_3();
  sub_193447600();
}

void sub_1936FE984()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACC98);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("major");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_16_6(v10, "minor");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_16_6(v12, "patch");
  v8(v13);
  v14 = OUTLINED_FUNCTION_14_6();
  v15 = OUTLINED_FUNCTION_0_0(v14, "isWildcard");
  v8(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936FEAF4()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C170();
        break;
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      default:
        continue;
    }
  }
}

void sub_1936FEB8C()
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_110();
  v2 = v0[2];
  v3 = *(v0 + 12);
  v4 = v0[4];
  v5 = *(v0 + 20);
  v6 = *(v0 + 21);
  if ((v0[1] & 1) == 0)
  {
    v7 = *v0;
    OUTLINED_FUNCTION_158_3();
    sub_19393C350();
  }

  if (!v1)
  {
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_158_3();
      sub_19393C350();
    }

    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_158_3();
      sub_19393C350();
    }

    if (v6 != 2)
    {
      OUTLINED_FUNCTION_158_3();
      sub_19393C2E0();
    }
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1936FECA0(void *a1@<X8>)
{
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  ToolKitToolRuntimeRequirement.AvailabilityAnnotation.init()(v3);
  *a1 = v1;
}

void sub_1936FECE0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACCB0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("platform");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_0_0(v10, "deviceCapability");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_16_6(v12, "featureFlag");
  v8(v13);
  v14 = OUTLINED_FUNCTION_14_6();
  *v14 = "deviceState";
  *(v14 + 1) = 11;
  v15 = OUTLINED_FUNCTION_1_3(v14);
  v8(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

unint64_t sub_1936FF15C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_621();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result = ToolKitToolRuntimeRequirement.DeviceCapability.MobileGestalt.init()();
  *a1 = v1;
  return result;
}

void sub_1936FF198()
{
  v1 = *v0;
  switch(*v0 >> 62)
  {
    case 1uLL:
      *&__dst[0] = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      goto LABEL_6;
    case 2uLL:
      v8 = v1 & 0x3FFFFFFFFFFFFFFFLL;
      v9 = *(v8 + 48);
      v10 = *(v8 + 32);
      __dst[0] = *(v8 + 16);
      __dst[1] = v10;
      LOBYTE(__dst[2]) = v9;
      goto LABEL_6;
    case 3uLL:
      v11 = v1 & 0x3FFFFFFFFFFFFFFFLL;
      v12 = *(v11 + 16);
      LOBYTE(v11) = *(v11 + 24);
      *&__dst[0] = v12;
      BYTE8(__dst[0]) = v11;
      OUTLINED_FUNCTION_23_3();
      sub_193447324(v13, v14, v15, v16, v17, v18);
      return;
    default:
      memcpy(__dst, (v1 + 16), 0x52uLL);
      v2 = memcpy(v20, __dst, sizeof(v20));
      OUTLINED_FUNCTION_153(v2, v3, v4, &type metadata for ToolKitToolRuntimeRequirement.AvailabilityAnnotation, v5, &off_1F07E3EC8, v6, v7, v19, v20[0]);
LABEL_6:
      OUTLINED_FUNCTION_23_3();
      sub_193447600();
      return;
  }
}

void sub_1936FF334()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEACCC8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBE0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("DeviceStateUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_48(v11, "DeviceStateUnlocked");
  v9(v12);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936FF494()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACCE0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("platform");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_16_6(v10, "introducingVersion");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_16_6(v12, "deprecatingVersion");
  v8(v13);
  v14 = OUTLINED_FUNCTION_14_6();
  v15 = OUTLINED_FUNCTION_0_0(v14, "obsoletingVersion");
  v8(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936FF604()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_89_2();
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1936FF84C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACCF8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("mobileGestalt");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "capability");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936FF97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, __int128 a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_296();
  a28 = v31;
  a29 = v32;
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v33 = OUTLINED_FUNCTION_124();
    if (v29 || (v34 & 1) != 0)
    {
      break;
    }

    if (v33 == 2)
    {
      *&a15 = 0;
      WORD4(a15) = 256;
      sub_1934982A8();
      OUTLINED_FUNCTION_341();
      OUTLINED_FUNCTION_123_1();
      v37 = swift_allocObject();
      v38 = OUTLINED_FUNCTION_359_0(v37);
      OUTLINED_FUNCTION_285(v38);
    }

    else if (v33 == 1)
    {
      a15 = xmmword_1939526A0;
      a16 = 0;
      OUTLINED_FUNCTION_150_9();
      sub_193498018();
      OUTLINED_FUNCTION_341();
      v35 = *(&a15 + 1);
      if (*(&a15 + 1) == 1)
      {
        v36 = &a12;
        ToolKitToolRuntimeRequirement.DeviceCapability.MobileGestalt.init()();
        v35 = a13;
      }

      else
      {
        v36 = &a15;
      }

      v39 = *(v36 + 16);
      v40 = *v36;
      OUTLINED_FUNCTION_621();
      v41 = swift_allocObject();
      *(v41 + 16) = v40;
      *(v41 + 24) = v35;
      *(v41 + 32) = v39;
      *v30 = v41;
    }
  }

  OUTLINED_FUNCTION_295();
}

void sub_1936FFADC()
{
  OUTLINED_FUNCTION_279();
  if (v0 < 0)
  {
    OUTLINED_FUNCTION_280_0();
    v14 = OUTLINED_FUNCTION_182_0(v8, v9, v10, &type metadata for ToolKitToolRuntimeRequirement.DeviceCapability.DeviceCapabilityType, v11, &off_1F07E3F28, v12, v13, v20);
    sub_193447324(v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v1 = *(v0 + 32);
    OUTLINED_FUNCTION_357();
    OUTLINED_FUNCTION_134(v2, v3, v4, &type metadata for ToolKitToolRuntimeRequirement.DeviceCapability.MobileGestalt, v5, &off_1F07E3F50, v6, v7, v20);
    sub_193447600();
  }
}

void sub_1936FFBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_108_0();
  v13 = sub_19393C420();
  __swift_allocate_value_buffer(v13, qword_1EAEACD10);
  OUTLINED_FUNCTION_136_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v14);
  v16 = *(v15 + 72);
  OUTLINED_FUNCTION_49_0();
  v38 = OUTLINED_FUNCTION_152_10();
  OUTLINED_FUNCTION_304_0(v38, xmmword_1939526B0);
  *v12 = 0;
  *v10 = "DeviceCapabilityTypeUnknown";
  v10[1] = 27;
  OUTLINED_FUNCTION_107_3();
  v17 = *MEMORY[0x1E69AADC8];
  v18 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v18);
  v20 = *(v19 + 104);
  v21 = OUTLINED_FUNCTION_50_1();
  v20(v21);
  v22 = OUTLINED_FUNCTION_17_8((v12 + v16));
  v23 = OUTLINED_FUNCTION_18_1(v22, "DeviceCapabilityTypePosters");
  v20(v23);
  v24 = OUTLINED_FUNCTION_3_1(v12 + 2 * v16);
  *v25 = v11;
  v26 = OUTLINED_FUNCTION_0_0(v24, "DeviceCapabilityTypeCellularTelephony");
  v20(v26);
  v27 = OUTLINED_FUNCTION_9_4((v12 + 3 * v16));
  v28 = OUTLINED_FUNCTION_18_1(v27, "DeviceCapabilityTypeCellularData");
  v20(v28);
  v29 = OUTLINED_FUNCTION_13((v12 + 4 * v16));
  v30 = OUTLINED_FUNCTION_18_1(v29, "DeviceCapabilityTypeStageManager");
  v20(v30);
  v31 = OUTLINED_FUNCTION_19_2((v12 + 5 * v16));
  v32 = OUTLINED_FUNCTION_0_0(v31, "DeviceCapabilityTypeRemovingBackgrounds");
  v20(v32);
  v33 = (v12 + 6 * v16);
  v34 = v33 + dword_1EAEACD48;
  *v33 = 6;
  v35 = OUTLINED_FUNCTION_0_0(v34, "DeviceCapabilityTypeAlwaysOnDisplay");
  v20(v35);
  v36 = OUTLINED_FUNCTION_30_0((v12 + a10 - v16));
  v37 = OUTLINED_FUNCTION_0_0(v36, "DeviceCapabilityTypeVibration");
  v20(v37);
  sub_19393C410();
  OUTLINED_FUNCTION_107();
}

void sub_1936FFE1C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACD28);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("key");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "value");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936FFF4C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C0F0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_84_9();
      sub_19393C200();
    }
  }

  return result;
}

void sub_1936FFFB4()
{
  OUTLINED_FUNCTION_129_10();
  v2 = *(v0 + 16);
  if (v0[1])
  {
    v3 = *v0;
    OUTLINED_FUNCTION_225_2();
  }

  if (!v1 && v2 != 2)
  {
    OUTLINED_FUNCTION_144_7();
    sub_19393C2E0();
  }
}

void sub_193700078()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEACD40);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("domain");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "feature");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "value");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1937001C8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C0F0();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

void sub_193700244()
{
  OUTLINED_FUNCTION_134_7();
  OUTLINED_FUNCTION_110();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_318_0();
    OUTLINED_FUNCTION_181();
  }

  if (!v1)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_181();
    }

    if (v4 != 2)
    {
      OUTLINED_FUNCTION_158_3();
      sub_19393C2E0();
    }
  }

  OUTLINED_FUNCTION_135_4();
}

uint64_t sub_193700348()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_77_9();
    return sub_193451CFC(v2, v3, v4, v5, v6, v7);
  }

  return result;
}

void sub_1937003FC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACD70);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_56_18("text");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "parameter");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193700610()
{
  OUTLINED_FUNCTION_129_10();
  v1 = *v0;
  if (*v0 < 0)
  {
    OUTLINED_FUNCTION_604(v1 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    OUTLINED_FUNCTION_604(v1);
  }

  OUTLINED_FUNCTION_37_17();
  OUTLINED_FUNCTION_233_2();
  OUTLINED_FUNCTION_258_1();
}

void sub_1937006D8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACD88);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("visibleParameterKeys");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "invisibleParameterKeys");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "valueConstraints");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193700828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_296();
  v22 = v21;
  v23 = v20;
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    while (1)
    {
      OUTLINED_FUNCTION_55();
      v24 = sub_19393C0E0();
      if (v22 || (v25 & 1) != 0)
      {
        OUTLINED_FUNCTION_295();
        return;
      }

      if (v24 == 3)
      {
        break;
      }

      if (v24 == 2 || v24 == 1)
      {
        OUTLINED_FUNCTION_98();
        sub_19393C1B0();
      }
    }

    v26 = OUTLINED_FUNCTION_658(MEMORY[0x1E69E7CC0]);
    sub_193498238(v26);
    v27 = a20;
    v50 = *(a20 + 16);
    if (v50)
    {
      break;
    }

LABEL_20:

    v22 = 0;
  }

  v28 = 0;
  v29 = (a20 + 48);
  while (v28 < *(v27 + 16))
  {
    v30 = *(v29 - 2);
    v31 = *(v29 - 1);
    v32 = *v29;

    swift_bridgeObjectRetain_n();
    v33 = *(v23 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v51 = *(v23 + 16);
    v34 = OUTLINED_FUNCTION_125();
    sub_193485250(v34, v35);
    OUTLINED_FUNCTION_275_2();
    if (__OFADD__(v38, v39))
    {
      goto LABEL_23;
    }

    v40 = v36;
    v41 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE419F8, &qword_19397FA00);
    OUTLINED_FUNCTION_623();
    if (sub_19393C980())
    {
      v42 = sub_193485250(v30, v31);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_25;
      }

      v40 = v42;
    }

    if (v41)
    {
      v44 = v51[7];
      v45 = *(v44 + 8 * v40);
      *(v44 + 8 * v40) = v32;
    }

    else
    {
      v51[(v40 >> 6) + 8] |= 1 << v40;
      v46 = (v51[6] + 16 * v40);
      *v46 = v30;
      v46[1] = v31;
      *(v51[7] + 8 * v40) = v32;

      v47 = v51[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_24;
      }

      v51[2] = v49;
    }

    ++v28;
    v23 = v20;
    v27 = a20;
    *(v20 + 16) = v51;
    v29 += 3;
    if (v50 == v28)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_19393CA50();
  __break(1u);
}

uint64_t sub_193700A80()
{
  v2 = v0;
  OUTLINED_FUNCTION_22_0();
  result = *v3;
  v5 = v3[1];
  v6 = v3[2];
  if (*(*v3 + 16))
  {
    OUTLINED_FUNCTION_15_11();
    result = sub_19393C380();
    v2 = v0;
  }

  if (!v2)
  {
    if (!*(v5 + 16) || (OUTLINED_FUNCTION_15_11(), result = sub_19393C380(), !v0))
    {
      if (*(v6 + 16))
      {
        sub_1936F3F78(v6);
        OUTLINED_FUNCTION_314_0();
        sub_193451CFC(v7, v8, v9, v10, v1, v11);
        OUTLINED_FUNCTION_258_1();
      }
    }
  }

  return result;
}

uint64_t sub_193700BC0()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_77_9();
    return sub_193451CFC(v2, v3, v4, v5, v6, v7);
  }

  return result;
}

void sub_193700C74()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACDB8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("key");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "value");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193700E88()
{
  v2 = v1;
  OUTLINED_FUNCTION_184_6();
  v3 = v0[2];
  if (*v0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v0[1] == 0xE000000000000000;
  }

  if (!v4)
  {
    OUTLINED_FUNCTION_19_3();
    if ((OUTLINED_FUNCTION_272() & 1) == 0)
    {
      OUTLINED_FUNCTION_19_3();
      OUTLINED_FUNCTION_32_20();
      OUTLINED_FUNCTION_66_17();
      sub_19393C3C0();
      v2 = v1;
    }
  }

  if (!v2)
  {
    swift_bridgeObjectRetain_n();
    ToolKitToolToolInvocationSignature.ListOfRelations.init()();
    sub_193710A44();
    OUTLINED_FUNCTION_616();
    v5 = sub_19393C550();

    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_165_4(v6, v7, v8, &type metadata for ToolKitToolToolInvocationSignature.ListOfRelations, v9, &off_1F07E4040, v10, v11, v20, v3);
      OUTLINED_FUNCTION_87_3();
      sub_193447600();
      OUTLINED_FUNCTION_50_2(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22);
    }
  }
}

void sub_193700FF4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACDD0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("phrases");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "expectedResult");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "negativePhrases");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193701144()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_98();
        sub_19393C1B0();
        break;
    }
  }
}

uint64_t sub_1937011C0()
{
  OUTLINED_FUNCTION_75_3();
  result = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  if (*(*v1 + 16))
  {
    OUTLINED_FUNCTION_95_3();
    result = sub_19393C380();
  }

  if (!v0)
  {
    if (v5)
    {
      OUTLINED_FUNCTION_193_1();
      result = OUTLINED_FUNCTION_181();
    }

    if (*(v4 + 16))
    {
      OUTLINED_FUNCTION_388();
      OUTLINED_FUNCTION_95_3();
      return sub_19393C380();
    }
  }

  return result;
}

void sub_1937012A0()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEACDE8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_141_1("major");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_52();
  *v12 = v0;
  *v11 = "minor";
  v11[1] = 5;
  v13 = OUTLINED_FUNCTION_143_6(v11);
  v9(v13);
  v14 = OUTLINED_FUNCTION_13_12();
  *v14 = "patch";
  *(v14 + 1) = 5;
  v15 = OUTLINED_FUNCTION_143_6(v14);
  v9(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1937013F8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C230();
    }
  }

  return result;
}

void sub_193701468()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_110();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  if ((*(v0 + 8) & 1) == 0)
  {
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_158_3();
    sub_19393C3E0();
  }

  if (!v1)
  {
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_158_3();
      sub_19393C3E0();
    }

    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_388();
      OUTLINED_FUNCTION_158_3();
      sub_19393C3E0();
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_193701554()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACE00);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_56_18("kind");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "version");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "domain");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937016A0()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
    }
  }
}

void sub_193701734()
{
  OUTLINED_FUNCTION_75_3();
  v7 = v0[1];
  v8 = *(v0 + 57);
  v9 = v0[8];
  v10 = v0[9];
  if (v7)
  {
    v11 = *v0;
    v2 = OUTLINED_FUNCTION_224_0();
  }

  if (!v1)
  {
    if ((v8 & 1) == 0)
    {
      *v12 = *(v0 + 2);
      *&v12[9] = *(v0 + 41);
      OUTLINED_FUNCTION_104_11(v2, v7, v3, &type metadata for ToolKitToolAssistantSchemaVersion, v4, &off_1F07E40D0, v5, v6, v0[2]);
      sub_193447600();
    }

    if (v10)
    {
      OUTLINED_FUNCTION_228_3();
      OUTLINED_FUNCTION_181();
    }
  }
}

void sub_193701834()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEACE18);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v6, xmmword_1939526E0);
  OUTLINED_FUNCTION_102("identifier");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  (v10)(v11);
  v12 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v13 = v0;
  v14 = OUTLINED_FUNCTION_63_1(v12, "name");
  (v10)(v14);
  v15 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  v16 = OUTLINED_FUNCTION_25(v15, "description");
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_26_5();
  *v18 = 4;
  v19 = OUTLINED_FUNCTION_63_1(v17, "parameters");
  (v10)(v19);
  v20 = OUTLINED_FUNCTION_21_39();
  v21 = OUTLINED_FUNCTION_25(v20, "sampleInvocations");
  (v10)(v21);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_270_1(v22);
  *v23 = "outputType";
  *(v23 + 8) = 10;
  *(v23 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193701A04()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v2 = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        OUTLINED_FUNCTION_125();
        goto LABEL_11;
      case 2:
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        continue;
      case 4:
        v4 = v0 + 112;
        goto LABEL_8;
      case 5:
        OUTLINED_FUNCTION_147_0();
LABEL_8:
        sub_193498238(v4);
        break;
      case 6:
        OUTLINED_FUNCTION_146_0();
LABEL_11:
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_193701CA4@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_609();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result = ToolKitToolAssistantTypeSchemaDefinition.Entity.init()();
  *a1 = v1;
  return result;
}

void sub_193701CE0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACE30);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("entity");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "enumeration");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193701E10()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 2)
    {
      sub_19346D9FC(v28);
      memcpy(__dst, v28, sizeof(__dst));
      sub_193498018();
      OUTLINED_FUNCTION_341();
      v12 = memcpy(__src, __dst, sizeof(__src));
      OUTLINED_FUNCTION_356_0(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12], v23[13], v23[14], v23[15], v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14], v24[15], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], v26[0]);
      if (sub_1934754E0(v26) == 1)
      {
        ToolKitToolAssistantTypeSchemaDefinition.Enumeration.init()(v24);
      }

      else
      {
        memcpy(v24, __src, sizeof(v24));
      }

      OUTLINED_FUNCTION_609();
      v21 = swift_allocObject();
      memcpy((v21 + 16), v24, 0x80uLL);
      *v1 = v21 | 0x8000000000000000;
    }

    else if (v2 == 1)
    {
      sub_19346D9FC(v28);
      memcpy(__dst, v28, sizeof(__dst));
      OUTLINED_FUNCTION_96_15();
      sub_193498018();
      OUTLINED_FUNCTION_341();
      v4 = memcpy(__src, __dst, sizeof(__src));
      OUTLINED_FUNCTION_356_0(v4, v5, v6, v7, v8, v9, v10, v11, v22, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12], v23[13], v23[14], v23[15], v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14], v24[15], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], v26[0]);
      if (sub_1934754E0(v26) == 1)
      {
        ToolKitToolAssistantTypeSchemaDefinition.Entity.init()(v23);
      }

      else
      {
        memcpy(v23, __src, sizeof(v23));
      }

      OUTLINED_FUNCTION_609();
      v20 = swift_allocObject();
      memcpy((v20 + 16), v23, 0x80uLL);
      *v1 = v20;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193702010()
{
  OUTLINED_FUNCTION_103();
  v1 = *v0;
  if (*v0 < 0)
  {
    memcpy(__dst, ((v1 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
    v8 = memcpy(v14, __dst, sizeof(v14));
    OUTLINED_FUNCTION_182_0(v8, v9, v10, &type metadata for ToolKitToolAssistantTypeSchemaDefinition.Enumeration, v11, &off_1F07E41C0, v12, v13, v14[0]);
  }

  else
  {
    memcpy(__dst, (v1 + 16), sizeof(__dst));
    v2 = memcpy(v14, __dst, sizeof(v14));
    OUTLINED_FUNCTION_134(v2, v3, v4, &type metadata for ToolKitToolAssistantTypeSchemaDefinition.Entity, v5, &off_1F07E4190, v6, v7, v14[0]);
  }

  OUTLINED_FUNCTION_23_3();
  sub_193447600();
}

void sub_193702134()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEACE48);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_141_1("identifier");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_52();
  *v12 = v0;
  *v11 = "properties";
  v11[1] = 10;
  v13 = OUTLINED_FUNCTION_143_6(v11);
  v9(v13);
  v14 = OUTLINED_FUNCTION_13_12();
  *v14 = "displayRepresentation";
  *(v14 + 1) = 21;
  v15 = OUTLINED_FUNCTION_143_6(v14);
  v9(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193702314()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACE60);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("identifier");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "cases");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "displayRepresentation");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193702464()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_121_9();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_607();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_155_6();
        sub_193498238(v3);
        break;
      case 1:
        OUTLINED_FUNCTION_640();
LABEL_9:
        sub_193498018();
        break;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193702510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_50_13();
  v11 = v8[10];
  v12 = v8[15];
  if (v8[1] != 1)
  {
    v13 = *v8;
    OUTLINED_FUNCTION_651();
    OUTLINED_FUNCTION_85_3(v14, v15, v16, &type metadata for ToolKitToolAssistantSchemaIdentifier, v17, &off_1F07E4100, v18, v19, v20);
    sub_193447600();
  }

  if (!v6)
  {
    if (*(v11 + 16))
    {
      sub_193451CFC(v11, 2, v7, a4, v5, a5);
    }

    if (v12)
    {
      v21 = *(v8 + 11);
      v22 = *(v8 + 13);
      OUTLINED_FUNCTION_134_11();
      sub_193447600();
    }
  }
}

void sub_193702674()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEACE78);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v199 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v199, xmmword_19397F930);
  OUTLINED_FUNCTION_171_5("unk");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_58_18();
  v11 = OUTLINED_FUNCTION_5_4(v10, "undoable");
  v8(v11);
  v12 = OUTLINED_FUNCTION_59_5();
  *v13 = 3;
  v14 = OUTLINED_FUNCTION_5_4(v12, "sessionStarting");
  v8(v14);
  v15 = OUTLINED_FUNCTION_9_64();
  v16 = OUTLINED_FUNCTION_5_4(v15, "urlRepresentable");
  v8(v16);
  v17 = OUTLINED_FUNCTION_21_39();
  v18 = OUTLINED_FUNCTION_5_4(v17, "conditionallyEnabled");
  v8(v18);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_270_1(v19);
  v21 = OUTLINED_FUNCTION_5_4(v20, "foregroundContinuable");
  v8(v21);
  v22 = OUTLINED_FUNCTION_30_0((v0 + 6 * v4));
  v23 = OUTLINED_FUNCTION_5_4(v22, "changeBinarySetting");
  v8(v23);
  OUTLINED_FUNCTION_33_0(8 * v4);
  OUTLINED_FUNCTION_121_1(v24);
  v26 = OUTLINED_FUNCTION_5_4(v25, "requiresMdmChecks");
  v8(v26);
  v27 = OUTLINED_FUNCTION_55_2((v0 + 8 * v4));
  v28 = OUTLINED_FUNCTION_36_0(v27, "cut");
  v8(v28);
  OUTLINED_FUNCTION_44(9 * v4);
  OUTLINED_FUNCTION_384(v29);
  *v30 = "copyProtocol";
  v30[1] = 12;
  v31 = OUTLINED_FUNCTION_41(v30);
  v8(v31);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_377_0(v32);
  v34 = OUTLINED_FUNCTION_15(v33, 5);
  v8(v34);
  v35 = OUTLINED_FUNCTION_52_0();
  *v36 = 12;
  v37 = OUTLINED_FUNCTION_23_7(v35, "cancel");
  v8(v37);
  v38 = OUTLINED_FUNCTION_52_0();
  *v39 = 13;
  *v38 = "resize";
  v38[1] = 6;
  v40 = OUTLINED_FUNCTION_41(v38);
  v8(v40);
  v41 = OUTLINED_FUNCTION_52_0();
  *v42 = 14;
  v43 = OUTLINED_FUNCTION_23_7(v41, "scroll");
  v8(v43);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_180_0(v44);
  v46 = OUTLINED_FUNCTION_36_0(v45, "undo");
  v8(v46);
  OUTLINED_FUNCTION_33_0(16 * v4);
  OUTLINED_FUNCTION_256_1(v47);
  v49 = OUTLINED_FUNCTION_36_0(v48, "zoom");
  v8(v49);
  v50 = OUTLINED_FUNCTION_131_1((v0 + 16 * v4));
  v51 = OUTLINED_FUNCTION_15(v50, 11);
  v8(v51);
  v52 = OUTLINED_FUNCTION_44(17 * v4);
  *v53 = 18;
  v54 = OUTLINED_FUNCTION_23_7(v52, "createEntity");
  v8(v54);
  v55 = OUTLINED_FUNCTION_52_0();
  *v56 = 19;
  v57 = OUTLINED_FUNCTION_15(v55, 9);
  v8(v57);
  v58 = OUTLINED_FUNCTION_52_0();
  *v59 = 20;
  v60 = OUTLINED_FUNCTION_23_7(v58, "deleteEntity");
  v8(v60);
  v61 = OUTLINED_FUNCTION_52_0();
  *v62 = 21;
  v63 = OUTLINED_FUNCTION_15(v61, 15);
  v8(v63);
  v64 = OUTLINED_FUNCTION_52_0();
  *v65 = 22;
  v66 = OUTLINED_FUNCTION_15(v64, 14);
  v8(v66);
  v67 = OUTLINED_FUNCTION_52_0();
  *v68 = 23;
  v69 = OUTLINED_FUNCTION_36_0(v67, "openEntity");
  v8(v69);
  v70 = OUTLINED_FUNCTION_72();
  *v71 = 24;
  v72 = OUTLINED_FUNCTION_15(v70, 13);
  v8(v72);
  v73 = OUTLINED_FUNCTION_72();
  *v74 = 25;
  v75 = OUTLINED_FUNCTION_36_0(v73, "saveEntity");
  v8(v75);
  v76 = OUTLINED_FUNCTION_72();
  *v77 = 26;
  v78 = OUTLINED_FUNCTION_15(v76, 20);
  v8(v78);
  v79 = OUTLINED_FUNCTION_72();
  *v80 = 27;
  v81 = OUTLINED_FUNCTION_15(v79, 9);
  v8(v81);
  v82 = OUTLINED_FUNCTION_72();
  *v83 = 28;
  *v82 = "audioStarting";
  v82[1] = 13;
  v84 = OUTLINED_FUNCTION_41(v82);
  v8(v84);
  v85 = OUTLINED_FUNCTION_52_0();
  *v86 = 29;
  v87 = OUTLINED_FUNCTION_15(v85, 14);
  v8(v87);
  v88 = OUTLINED_FUNCTION_52_0();
  *v89 = 30;
  v90 = OUTLINED_FUNCTION_15(v88, 22);
  v8(v90);
  v91 = OUTLINED_FUNCTION_52_0();
  *v92 = 31;
  v93 = OUTLINED_FUNCTION_15(v91, 9);
  v8(v93);
  v94 = OUTLINED_FUNCTION_33_0(32 * v4);
  *v95 = 32;
  v96 = OUTLINED_FUNCTION_36_0(v94, "startWorkout");
  v8(v96);
  v97 = OUTLINED_FUNCTION_3_1(v0 + 32 * v4);
  *v98 = 33;
  v99 = OUTLINED_FUNCTION_36_0(v97, "pauseWorkout");
  v8(v99);
  v100 = OUTLINED_FUNCTION_44(33 * v4);
  *v101 = 34;
  v102 = OUTLINED_FUNCTION_23_7(v100, "resumeWorkout");
  v8(v102);
  v103 = OUTLINED_FUNCTION_52_0();
  *v104 = 35;
  v105 = OUTLINED_FUNCTION_15(v103, 11);
  v8(v105);
  v106 = OUTLINED_FUNCTION_52_0();
  *v107 = 36;
  v108 = OUTLINED_FUNCTION_15(v106, 10);
  v8(v108);
  v109 = OUTLINED_FUNCTION_52_0();
  *v110 = 37;
  v111 = OUTLINED_FUNCTION_15(v109, 18);
  v8(v111);
  v112 = OUTLINED_FUNCTION_52_0();
  *v113 = 38;
  v114 = OUTLINED_FUNCTION_15(v112, 19);
  v8(v114);
  v115 = OUTLINED_FUNCTION_52_0();
  *v116 = 39;
  v117 = OUTLINED_FUNCTION_15(v115, 6);
  v8(v117);
  v118 = OUTLINED_FUNCTION_52_0();
  *v119 = 40;
  v120 = OUTLINED_FUNCTION_23_7(v118, "showSearchResultsInApp");
  v8(v120);
  v121 = OUTLINED_FUNCTION_52_0();
  *v122 = 41;
  v123 = OUTLINED_FUNCTION_15(v121, 28);
  v8(v123);
  v124 = OUTLINED_FUNCTION_52_0();
  *v125 = 42;
  v126 = OUTLINED_FUNCTION_23_7(v124, "showInAppSearchResults");
  v8(v126);
  v127 = OUTLINED_FUNCTION_52_0();
  *v128 = 43;
  v129 = OUTLINED_FUNCTION_15(v127, 28);
  v8(v129);
  v130 = OUTLINED_FUNCTION_52_0();
  *v131 = 44;
  v132 = OUTLINED_FUNCTION_15(v130, 11);
  v8(v132);
  v133 = OUTLINED_FUNCTION_52_0();
  *v134 = 45;
  v135 = OUTLINED_FUNCTION_15(v133, 20);
  v8(v135);
  v136 = OUTLINED_FUNCTION_52_0();
  *v137 = 46;
  v138 = OUTLINED_FUNCTION_15(v136, 5);
  v8(v138);
  v139 = OUTLINED_FUNCTION_52_0();
  *v140 = 47;
  v141 = OUTLINED_FUNCTION_15(v139, 6);
  v8(v141);
  v142 = OUTLINED_FUNCTION_52_0();
  *v143 = 48;
  v144 = OUTLINED_FUNCTION_15(v142, 13);
  v8(v144);
  v145 = OUTLINED_FUNCTION_52_0();
  *v146 = 49;
  v147 = OUTLINED_FUNCTION_15(v145, 17);
  v8(v147);
  v148 = OUTLINED_FUNCTION_52_0();
  *v149 = 50;
  v150 = OUTLINED_FUNCTION_15(v148, 14);
  v8(v150);
  v151 = OUTLINED_FUNCTION_52_0();
  *v152 = 51;
  v153 = OUTLINED_FUNCTION_23_7(v151, "propertyUpdater");
  v8(v153);
  v154 = OUTLINED_FUNCTION_52_0();
  *v155 = 52;
  v156 = OUTLINED_FUNCTION_15(v154, 8);
  v8(v156);
  v157 = OUTLINED_FUNCTION_52_0();
  *v158 = 53;
  v159 = OUTLINED_FUNCTION_15(v157, 20);
  v8(v159);
  v160 = OUTLINED_FUNCTION_52_0();
  *v161 = 54;
  v162 = OUTLINED_FUNCTION_15(v160, 13);
  v8(v162);
  v163 = OUTLINED_FUNCTION_52_0();
  *v164 = 55;
  v165 = OUTLINED_FUNCTION_15(v163, 16);
  v8(v165);
  v166 = OUTLINED_FUNCTION_52_0();
  *v167 = 56;
  v168 = OUTLINED_FUNCTION_23_7(v166, "assistantSchema");
  v8(v168);
  v169 = OUTLINED_FUNCTION_52_0();
  *v170 = 57;
  v171 = OUTLINED_FUNCTION_23_7(v169, "rewriteWritingTool");
  v8(v171);
  v172 = OUTLINED_FUNCTION_52_0();
  *v173 = 58;
  v174 = OUTLINED_FUNCTION_15(v172, 20);
  v8(v174);
  v175 = OUTLINED_FUNCTION_52_0();
  *v176 = 59;
  v177 = OUTLINED_FUNCTION_23_7(v175, "assistantInvocable");
  v8(v177);
  v178 = OUTLINED_FUNCTION_52_0();
  *v179 = 60;
  v180 = OUTLINED_FUNCTION_15(v178, 9);
  v8(v180);
  v181 = OUTLINED_FUNCTION_52_0();
  *v182 = 61;
  v183 = OUTLINED_FUNCTION_15(v181, 21);
  v8(v183);
  v184 = OUTLINED_FUNCTION_52_0();
  *v185 = 62;
  v186 = OUTLINED_FUNCTION_15(v184, 15);
  v8(v186);
  v187 = OUTLINED_FUNCTION_52_0();
  *v188 = 63;
  v189 = OUTLINED_FUNCTION_15(v187, 17);
  v8(v189);
  v190 = OUTLINED_FUNCTION_33_0(v4 << 6);
  *v191 = 64;
  v192 = OUTLINED_FUNCTION_15(v190, 20);
  v8(v192);
  v193 = OUTLINED_FUNCTION_3_1(v0 + (v4 << 6));
  *v194 = 65;
  v195 = OUTLINED_FUNCTION_36_0(v193, "valueSetting");
  v8(v195);
  v196 = OUTLINED_FUNCTION_44(65 * v4);
  *v197 = 66;
  *v196 = "entityGetter";
  v196[1] = 12;
  v198 = OUTLINED_FUNCTION_41(v196);
  v8(v198);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193704688()
{
  v1 = *v0;
  switch((*v0 >> 57) & 0x78 | *v0 & 7)
  {
    case 1uLL:
      OUTLINED_FUNCTION_76_14(v1);
      OUTLINED_FUNCTION_617(v10, v11, v12, &type metadata for ToolKitToolNullValue, v13, &off_1F07E4EA0, v14, v15, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], __dst[0]);
      goto LABEL_12;
    case 2uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2BuLL:
    case 0x2CuLL:
    case 0x2DuLL:
    case 0x2EuLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x33uLL:
    case 0x34uLL:
    case 0x38uLL:
    case 0x39uLL:
    case 0x3AuLL:
    case 0x3CuLL:
    case 0x3EuLL:
    case 0x3FuLL:
    case 0x40uLL:
    case 0x41uLL:
      OUTLINED_FUNCTION_76_14(v1);
      goto LABEL_12;
    case 3uLL:
      OUTLINED_FUNCTION_76_14(v1);
      OUTLINED_FUNCTION_618(v4, v5, v6, &type metadata for ToolKitToolNullValue, v7, &off_1F07E4EA0, v8, v9, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], __dst[0]);
      goto LABEL_12;
    case 4uLL:
      LOBYTE(__dst[0]) = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_10;
    case 0x1AuLL:
    case 0x2AuLL:
    case 0x36uLL:
    case 0x3DuLL:
      OUTLINED_FUNCTION_76_14(v1);
      goto LABEL_10;
    case 0x31uLL:
    case 0x35uLL:
    case 0x3BuLL:
      OUTLINED_FUNCTION_93_10((v1 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_10;
    case 0x32uLL:
      v2 = v1 & 0xFFFFFFFFFFFFFF8;
      v3 = *(v2 + 32);
      __dst[0] = *(v2 + 16);
      __dst[1] = v3;
      goto LABEL_10;
    case 0x37uLL:
      memcpy(__dst, ((v1 & 0xFFFFFFFFFFFFFF8) + 16), sizeof(__dst));
      memcpy(v22, __dst, sizeof(v22));
LABEL_10:
      OUTLINED_FUNCTION_23_3();
      sub_193447600();
      break;
    default:
      *&__dst[0] = *(v1 + 16);
LABEL_12:
      OUTLINED_FUNCTION_23_3();
      sub_193447324(v16, v17, v18, v19, v20, v21);
      break;
  }
}

void sub_193705100()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEACEF0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("entityIdentifier");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "entityProperty");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19370527C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_84_9();
      sub_19393C200();
    }
  }

  return result;
}

void sub_1937052FC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEACF20);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_141_1("unk");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_52();
  *v12 = v0;
  *v11 = "noSideEffect";
  v11[1] = 12;
  v13 = OUTLINED_FUNCTION_143_6(v11);
  v9(v13);
  v14 = OUTLINED_FUNCTION_13_12();
  *v14 = "stateChange";
  *(v14 + 1) = 11;
  v15 = OUTLINED_FUNCTION_143_6(v14);
  v9(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19370559C()
{
  OUTLINED_FUNCTION_279();
  v1 = v0 >> 62;
  if (!(v0 >> 62))
  {
    OUTLINED_FUNCTION_185_5();
    v9 = OUTLINED_FUNCTION_153(v15, v16, v17, &type metadata for ToolKitToolNullValue, v18, &off_1F07E4EA0, v19, v20, v23, v24);
    return sub_193447324(v9, v10, v11, v12, v13, v14);
  }

  v2 = v0 & 0x3FFFFFFFFFFFFFFFLL;
  if (v1 == 1)
  {
    OUTLINED_FUNCTION_185_5();
    v9 = OUTLINED_FUNCTION_165_4(v3, v4, v5, &type metadata for ToolKitToolNullValue, v6, &off_1F07E4EA0, v7, v8, v23, v24);
    return sub_193447324(v9, v10, v11, v12, v13, v14);
  }

  v22 = *(v2 + 16);
  return sub_19393C350();
}

void sub_19370569C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }
  }
}

void sub_193705704()
{
  if (*(v0 + 8) != 1)
  {
    OUTLINED_FUNCTION_89_0();
    v7 = *(v0 + 16);
    v8 = *(v0 + 32);
    v9 = *(v0 + 48);
    v10 = *(v0 + 64);
    OUTLINED_FUNCTION_134(v1, v2, v3, &type metadata for ToolKitToolAssistantSchemaIdentifier, v4, &off_1F07E4100, v5, v6, *v0);
    sub_193447600();
  }
}

uint64_t sub_193705804()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_84_9();
      sub_19393C1B0();
    }
  }

  return result;
}

void sub_1937058C4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEACF98);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v79 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_304_0(v79, xmmword_19397F940);
  *v1 = 1;
  *v0 = "id";
  *(v0 + 8) = 2;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 2;
  v13 = OUTLINED_FUNCTION_16_6(v11, "name");
  v9(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  v15 = OUTLINED_FUNCTION_18_1(v14, "toolType");
  v9(v15);
  v16 = OUTLINED_FUNCTION_60_1((v1 + 3 * v5));
  *v16 = "parameters";
  *(v16 + 1) = 10;
  v17 = OUTLINED_FUNCTION_1_3(v16);
  v9(v17);
  v18 = OUTLINED_FUNCTION_19_2((v1 + 4 * v5));
  v19 = OUTLINED_FUNCTION_16_6(v18, "outputType");
  v9(v19);
  v20 = OUTLINED_FUNCTION_75_16((v1 + 5 * v5));
  v21 = OUTLINED_FUNCTION_0_0(v20, "outputResultName");
  v9(v21);
  v22 = OUTLINED_FUNCTION_30_0((v1 + 10 * v5));
  v23 = OUTLINED_FUNCTION_0_0(v22, "sourceApplication");
  v9(v23);
  OUTLINED_FUNCTION_120();
  v25 = OUTLINED_FUNCTION_67_1((v1 + v24));
  v26 = OUTLINED_FUNCTION_0_0(v25, "descriptionSummary");
  v9(v26);
  v27 = OUTLINED_FUNCTION_55_2(&v1[v5]);
  v28 = OUTLINED_FUNCTION_18_1(v27, "categories");
  v9(v28);
  v29 = OUTLINED_FUNCTION_67_1((v1 + 9 * v5));
  v30 = OUTLINED_FUNCTION_16_6(v29, "searchKeywords");
  v9(v30);
  v31 = OUTLINED_FUNCTION_135_8();
  *v32 = 11;
  v33 = OUTLINED_FUNCTION_0_0(v31, "deprecationDefinition");
  v9(v33);
  OUTLINED_FUNCTION_135_8();
  OUTLINED_FUNCTION_632(v34);
  v36 = OUTLINED_FUNCTION_18_1(v35, "requirements");
  v9(v36);
  OUTLINED_FUNCTION_135_8();
  OUTLINED_FUNCTION_631(v37);
  v39 = OUTLINED_FUNCTION_28_4(v38, 5);
  v9(v39);
  v40 = OUTLINED_FUNCTION_60_1((v1 + 11 * v5));
  v41 = OUTLINED_FUNCTION_0_0(v40, "authenticationPolicy");
  v9(v41);
  v42 = OUTLINED_FUNCTION_105_14((v1 + 14 * v5));
  v43 = OUTLINED_FUNCTION_16_6(v42, "sampleInvocations");
  v9(v43);
  v44 = OUTLINED_FUNCTION_3_1(v1 + 15 * v5);
  *v45 = 16;
  v46 = OUTLINED_FUNCTION_28_4(v44, 15);
  v9(v46);
  v47 = OUTLINED_FUNCTION_60_1(&v1[2 * v5]);
  v48 = OUTLINED_FUNCTION_28_4(v47, 10);
  v9(v48);
  v49 = OUTLINED_FUNCTION_3_1(v1 + 17 * v5);
  *v50 = 18;
  v51 = OUTLINED_FUNCTION_18_1(v49, "hiddenParameters");
  v9(v51);
  v52 = OUTLINED_FUNCTION_3_1(v1 + 18 * v5);
  *v53 = 19;
  v54 = OUTLINED_FUNCTION_16_6(v52, "sourceContainer");
  v9(v54);
  v55 = OUTLINED_FUNCTION_135_8();
  *v56 = 20;
  *v55 = "attributionContainer";
  v55[1] = 20;
  v57 = OUTLINED_FUNCTION_1_3(v55);
  v9(v57);
  v58 = OUTLINED_FUNCTION_135_8();
  *v59 = 21;
  *v58 = "visibilityFlags";
  v58[1] = 15;
  v60 = OUTLINED_FUNCTION_1_3(v58);
  v9(v60);
  v61 = OUTLINED_FUNCTION_135_8();
  *v62 = 22;
  v63 = OUTLINED_FUNCTION_18_1(v61, "descriptionAttribution");
  v9(v63);
  v64 = OUTLINED_FUNCTION_135_8();
  *v65 = 23;
  v66 = OUTLINED_FUNCTION_28_4(v64, 17);
  v9(v66);
  v67 = OUTLINED_FUNCTION_135_8();
  *v68 = 24;
  v69 = OUTLINED_FUNCTION_16_6(v67, "descriptionNote");
  v9(v69);
  v70 = OUTLINED_FUNCTION_135_8();
  *v71 = 25;
  v72 = OUTLINED_FUNCTION_28_4(v70, 19);
  v9(v72);
  v73 = OUTLINED_FUNCTION_135_8();
  *v74 = 26;
  v75 = OUTLINED_FUNCTION_0_0(v73, "backingLinkActionIdentifiers");
  v9(v75);
  v76 = OUTLINED_FUNCTION_135_8();
  *v77 = 27;
  v78 = OUTLINED_FUNCTION_0_0(v76, "additionalAttributionContainers");
  v9(v78);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193705DF4()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 6:
      case 8:
      case 22:
      case 23:
      case 24:
      case 25:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 3:
      case 14:
        OUTLINED_FUNCTION_652();
        sub_1934982A8();
        break;
      case 4:
      case 9:
      case 12:
      case 15:
      case 16:
      case 18:
      case 27:
        OUTLINED_FUNCTION_652();
        sub_193498238(v8);
        break;
      case 5:
      case 7:
      case 11:
      case 17:
      case 19:
      case 20:
        OUTLINED_FUNCTION_652();
        sub_193498018();
        break;
      case 10:
      case 26:
        OUTLINED_FUNCTION_98();
        sub_19393C1B0();
        break;
      case 13:
      case 21:
        OUTLINED_FUNCTION_652();
        sub_1934984D4(v3, v4, v5, v6, v7);
        break;
      default:
        continue;
    }
  }
}

void sub_193706084()
{
  OUTLINED_FUNCTION_351_0();
  OUTLINED_FUNCTION_364_1();
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(v2 + 41);
  v9 = v2[6];
  v138 = v2[7];
  v134 = v2[8];
  v135 = v2[9];
  v132 = v2[25];
  v133 = v2[23];
  v130 = v2[26];
  v131 = v2[24];
  v129 = v2[27];
  v123 = v2[28];
  v124 = v2[32];
  v125 = v2[33];
  v126 = v2[29];
  HIDWORD(v122) = *(v2 + 281);
  v120 = v2[38];
  v121 = v2[36];
  v127 = v2[37];
  v128 = v2[39];
  v118 = v2[67];
  v119 = v2[53];
  v116 = v2[70];
  v117 = v2[68];
  v114 = v2[69];
  v115 = v2[72];
  v112 = v2[71];
  v113 = v2[74];
  v110 = v2[73];
  v111 = v2[76];
  v108 = v2[75];
  v109 = v2[77];
  v107 = v2[78];
  if (v5)
  {
    v10 = *v2;
    v1 = v0;
    v11 = v3;
    v12 = v4;
    sub_19393C3C0();
    if (v0)
    {
      return;
    }
  }

  else
  {
    v11 = v3;
    v12 = v4;
    if (v0)
    {
      return;
    }
  }

  if (v7)
  {
    OUTLINED_FUNCTION_216();
    v1 = v0;
    sub_19393C3C0();
  }

  if ((v8 & 1) == 0)
  {
    *__dst = v2[4];
    __dst[8] = *(v2 + 40);
    OUTLINED_FUNCTION_314_0();
    v1 = v0;
    sub_193447324(v13, v14, v15, v16, v12, v17);
  }

  if (*(v9 + 16))
  {
    v1 = v0;
    sub_193451CFC(v9, 4, v11, &type metadata for ToolKitToolToolDefinition.Version1.Parameter, v12, &off_1F07E4500);
  }

  if ((~v138 & 0xF000000000000007) != 0)
  {
    *__dst = v138;
    v1 = v0;
    sub_193447600();
  }

  if (v135)
  {
    v1 = v0;
    sub_19393C3C0();
  }

  if (!v133 || (memcpy(__dst, v2 + 10, sizeof(__dst)), v137 = v133, OUTLINED_FUNCTION_78_1(), sub_193447600(), (v0 = v1) == 0))
  {
    if (!v132 || (v1 = v0, sub_19393C3C0(), !v0))
    {
      if (!*(v130 + 16) || (OUTLINED_FUNCTION_111_12(), sub_193451CFC(v18, v19, v20, v21, v22, v23), (v0 = v1) == 0))
      {
        if (!*(v129 + 16) || (v1 = v0, sub_19393C380(), !v0))
        {
          if (v126 == 1 || (*&__dst[16] = *(v2 + 15), *__dst = v123, *&__dst[8] = v126, OUTLINED_FUNCTION_111_12(), sub_193447600(), (v0 = v1) == 0))
          {
            v25 = v127;
            v24 = v128;
            v26 = v125;
            if (*(v124 + 16))
            {
              OUTLINED_FUNCTION_111_12();
              v33 = sub_193451CFC(v27, v28, v29, v30, v31, v32);
              v0 = v1;
              if (v1)
              {
                return;
              }

              v24 = OUTLINED_FUNCTION_636(v33, v34, v35, v36, v37, v38, v39, v40, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
              v26 = v125;
            }

            if (*(v26 + 16))
            {
              OUTLINED_FUNCTION_111_12();
              v47 = sub_193498B44(v41, v42, v43, v44, v45, v46);
              v0 = v1;
              if (v1)
              {
                return;
              }

              v24 = OUTLINED_FUNCTION_636(v47, v48, v49, v50, v51, v52, v53, v54, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
            }

            if ((v122 & 0x100000000) == 0)
            {
              *__dst = v2[34];
              __dst[8] = *(v2 + 280);
              OUTLINED_FUNCTION_111_12();
              v61 = sub_193447324(v55, v56, v57, v58, v59, v60);
              v0 = v1;
              if (v1)
              {
                return;
              }

              v24 = OUTLINED_FUNCTION_636(v61, v62, v63, v64, v65, v66, v67, v68, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
            }

            if (*(v121 + 16))
            {
              OUTLINED_FUNCTION_111_12();
              v75 = sub_193451CFC(v69, v70, v71, v72, v73, v74);
              v0 = v1;
              if (v1)
              {
                return;
              }

              v24 = OUTLINED_FUNCTION_636(v75, v76, v77, v78, v79, v80, v81, v82, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
            }

            if (*(v25 + 16))
            {
              OUTLINED_FUNCTION_111_12();
              sub_193451CFC(v83, v84, v85, v86, v87, v88);
              v0 = v1;
              if (v1)
              {
                return;
              }

              v24 = v128;
            }

            if ((~v120 & 0xF000000000000007) != 0)
            {
              *__dst = v120;
              OUTLINED_FUNCTION_111_12();
              sub_193447600();
              v0 = v1;
              if (v1)
              {
                return;
              }

              v24 = v128;
            }

            if (!*(v24 + 16) || (OUTLINED_FUNCTION_111_12(), sub_193451CFC(v89, v90, v91, v92, v93, v94), (v0 = v1) == 0))
            {
              if (!v119 || (memcpy(__dst, v2 + 40, sizeof(__dst)), v137 = v119, OUTLINED_FUNCTION_78_1(), sub_193447600(), (v0 = v1) == 0))
              {
                if (!v118 || (memcpy(__dst, v2 + 54, sizeof(__dst)), v137 = v118, OUTLINED_FUNCTION_203_2(), sub_193447600(), (v0 = v1) == 0))
                {
                  if (!*(v117 + 16) || (OUTLINED_FUNCTION_203_2(), sub_193498B44(v95, v96, v97, v98, v99, v100), (v0 = v1) == 0))
                  {
                    if (!v116 || (OUTLINED_FUNCTION_52_16(), sub_19393C3C0(), (v0 = v1) == 0))
                    {
                      if (!v115 || (OUTLINED_FUNCTION_52_16(), sub_19393C3C0(), (v0 = v1) == 0))
                      {
                        if (!v113 || (OUTLINED_FUNCTION_52_16(), sub_19393C3C0(), (v0 = v1) == 0))
                        {
                          if (!v111 || (OUTLINED_FUNCTION_52_16(), sub_19393C3C0(), (v0 = v1) == 0))
                          {
                            if (!*(v109 + 16) || (sub_19393C380(), !v0))
                            {
                              if (*(v107 + 16))
                              {
                                OUTLINED_FUNCTION_203_2();
                                sub_193451CFC(v101, v102, v103, v104, v105, v106);
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
    }
  }
}

void sub_1937067C8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEACFB0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_43_2(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_102("ToolTypeUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v12 = OUTLINED_FUNCTION_25(v11, "ToolTypeAppIntent");
  v9(v12);
  v13 = OUTLINED_FUNCTION_69();
  v14 = OUTLINED_FUNCTION_25(v13, "ToolTypeSiriIntent");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_25(v15, "ToolTypeAction");
  v9(v16);
  v17 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_25(v17, "ToolTypeFlowTool");
  v9(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193706994()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEACFC8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_43_2(v5, xmmword_193951270);
  OUTLINED_FUNCTION_102("FlagUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v12 = OUTLINED_FUNCTION_25(v11, "FlagOpensAppWhenRun");
  v9(v12);
  v13 = OUTLINED_FUNCTION_69();
  v14 = OUTLINED_FUNCTION_25(v13, "FlagIsDiscontinued");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_64();
  v16 = OUTLINED_FUNCTION_63_1(v15, "FlagIsUndiscoverable");
  v9(v16);
  v17 = OUTLINED_FUNCTION_39_3((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_25(v17, "FlagDoesNotImplementPerform");
  v9(v18);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_256_1(v19);
  v21 = OUTLINED_FUNCTION_63_1(v20, "FlagShowsOpenWhenRun");
  v9(v21);
  v22 = OUTLINED_FUNCTION_3_1(v0 + 6 * v4);
  *v23 = 32;
  v24 = OUTLINED_FUNCTION_63_1(v22, "FlagOutputHasSnippet");
  v9(v24);
  v25 = OUTLINED_FUNCTION_33_0(8 * v4);
  *v26 = 64;
  v27 = OUTLINED_FUNCTION_25(v25, "FlagOutputProvidesDialog");
  v9(v27);
  v28 = OUTLINED_FUNCTION_3_1(v0 + 8 * v4);
  *v29 = 128;
  v30 = OUTLINED_FUNCTION_25(v28, "FlagIsHomeResidentCompatible");
  v9(v30);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193706C04()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEACFE0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v5, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("VisibilityFlagUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v12 = OUTLINED_FUNCTION_63_1(v11, "VisibilityFlagVisibleForShortcuts");
  v9(v12);
  v13 = OUTLINED_FUNCTION_69();
  v14 = OUTLINED_FUNCTION_63_1(v13, "VisibilityFlagVisibleForAssistant");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_64();
  v16 = OUTLINED_FUNCTION_25(v15, "VisibilityFlagApproved");
  v9(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193706DA4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEACFF8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v5, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("AuthenticationPolicyUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v12 = OUTLINED_FUNCTION_25(v11, "AuthenticationPolicyNone");
  v9(v12);
  v13 = OUTLINED_FUNCTION_69();
  v14 = OUTLINED_FUNCTION_25(v13, "AuthenticationPolicyRequiresAuthenticationOnOrigin");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_25(v15, "AuthenticationPolicyRequiresAuthenticationOnOriginAndRemote");
  v9(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193706F50()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD010);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v31 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_11_3(v31, xmmword_193951270);
  *v0 = "key";
  v0[1] = 3;
  OUTLINED_FUNCTION_107_3();
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_16_6(v11, "name");
  v9(v12);
  v13 = OUTLINED_FUNCTION_46_10();
  *v14 = 3;
  v15 = OUTLINED_FUNCTION_0_0(v13, "description");
  v9(v15);
  v16 = OUTLINED_FUNCTION_22_3();
  *v17 = 4;
  v18 = OUTLINED_FUNCTION_0_0(v16, "valueType");
  v9(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v20 = 5;
  v21 = OUTLINED_FUNCTION_0_0(v19, "relationships");
  v9(v21);
  v22 = OUTLINED_FUNCTION_66_22();
  v23 = OUTLINED_FUNCTION_0_0(v22, "sampleInvocations");
  v9(v23);
  v24 = OUTLINED_FUNCTION_30_0((v1 + 4 * v5));
  v25 = OUTLINED_FUNCTION_18_1(v24, "flags");
  v9(v25);
  OUTLINED_FUNCTION_120();
  v27 = OUTLINED_FUNCTION_39_3((v1 + v26));
  v28 = OUTLINED_FUNCTION_0_0(v27, "parentToolMetadata");
  v9(v28);
  v29 = OUTLINED_FUNCTION_55_2((v1 + 8 * v5));
  v30 = OUTLINED_FUNCTION_0_0(v29, "BOOLeanMetadata");
  v9(v30);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193707190()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v4 = sub_19393C0E0();
    if (v1 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        continue;
      case 4:
        goto LABEL_12;
      case 5:
        v6 = v0 + 56;
        goto LABEL_9;
      case 6:
        v6 = v0 + 64;
LABEL_9:
        sub_193498238(v6);
        continue;
      case 7:
        sub_1934984D4(v0 + 72, v3, &type metadata for ToolKitToolToolDefinition.Version1.Parameter.ParameterFlags, v2, &off_1F07E4530);
        continue;
      case 8:
        OUTLINED_FUNCTION_301_0();
        goto LABEL_12;
      case 9:
        OUTLINED_FUNCTION_62();
LABEL_12:
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1937072F0()
{
  OUTLINED_FUNCTION_296();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v6 = v0[5];
  v5 = v0[6];
  v28 = v0[7];
  v29 = v0[8];
  v32 = v0[9];
  v26 = *(v0 + 13);
  v27 = v0[12];
  if (v0[1])
  {
    v7 = *v0;
    sub_19393C3C0();
    if (v1)
    {
      goto LABEL_21;
    }
  }

  else if (v1)
  {
    goto LABEL_21;
  }

  if (v3)
  {
    sub_19393C3C0();
  }

  if (v6)
  {
    OUTLINED_FUNCTION_125_3();
    sub_19393C3C0();
  }

  if ((~v5 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_345();
    sub_193447600();
  }

  if (*(v28 + 16))
  {
    OUTLINED_FUNCTION_345();
    sub_193451CFC(v8, v9, v10, v11, v12, v13);
  }

  if (*(v29 + 16))
  {
    OUTLINED_FUNCTION_345();
    sub_193451CFC(v14, v15, v16, v17, v18, v19);
  }

  if (*(v32 + 16))
  {
    OUTLINED_FUNCTION_345();
    sub_193498B44(v20, v21, v22, v23, v24, v25);
  }

  if (v27)
  {
    v30 = *(v0 + 5);
    OUTLINED_FUNCTION_345();
    sub_193447600();
  }

  if (*(&v26 + 1) != 1)
  {
    v31 = *(v0 + 15);
    OUTLINED_FUNCTION_345();
    sub_193447600();
  }

LABEL_21:
  OUTLINED_FUNCTION_295();
}

void sub_193707560()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD028);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("ParameterFlagsUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_48(v11, "ParameterFlagsHidden");
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_48(v13, "ParameterFlagsSynthesized");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937076E0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD040);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("key");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "relation");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193707810()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_84_9();
      sub_19393C200();
    }
  }
}

void sub_193707890()
{
  OUTLINED_FUNCTION_129_10();
  v2 = v0[2];
  if (v0[1])
  {
    v3 = *v0;
    OUTLINED_FUNCTION_225_2();
  }

  if (!v1)
  {
    OUTLINED_FUNCTION_380();
    if (!v4)
    {
      OUTLINED_FUNCTION_129_4();
      sub_193447600();
    }
  }
}

void sub_193707964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_108_0();
  v11 = sub_19393C420();
  __swift_allocate_value_buffer(v11, qword_1EAEAD058);
  OUTLINED_FUNCTION_136_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v12);
  v14 = *(v13 + 72);
  OUTLINED_FUNCTION_49_0();
  v36 = OUTLINED_FUNCTION_152_10();
  OUTLINED_FUNCTION_8_18(v36, xmmword_1939526B0);
  OUTLINED_FUNCTION_171_5("isSome");
  v15 = *MEMORY[0x1E69AADC8];
  v16 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v16);
  v18 = *(v17 + 104);
  v19 = OUTLINED_FUNCTION_50_1();
  v18(v19);
  v20 = OUTLINED_FUNCTION_58_18();
  v21 = OUTLINED_FUNCTION_36_0(v20, "isNone");
  v18(v21);
  v22 = OUTLINED_FUNCTION_9_4((v10 + 2 * v14));
  v23 = OUTLINED_FUNCTION_36_0(v22, "equals");
  v18(v23);
  v24 = OUTLINED_FUNCTION_9_64();
  v25 = OUTLINED_FUNCTION_5_4(v24, "notEquals");
  v18(v25);
  v26 = OUTLINED_FUNCTION_21_39();
  v27 = OUTLINED_FUNCTION_5_4(v26, "greaterThan");
  v18(v27);
  v28 = OUTLINED_FUNCTION_38_2();
  *v29 = 6;
  v30 = OUTLINED_FUNCTION_23_7(v28, "lessThan");
  v18(v30);
  v31 = OUTLINED_FUNCTION_30_0((v10 + 6 * v14));
  v32 = OUTLINED_FUNCTION_23_7(v31, "contains");
  v18(v32);
  v33 = OUTLINED_FUNCTION_33_0(a10);
  *v34 = 8;
  *v33 = "doesNotContain";
  v33[1] = 14;
  v35 = OUTLINED_FUNCTION_41(v33);
  v18(v35);
  sub_19393C410();
  OUTLINED_FUNCTION_107();
}

void sub_193707EE0()
{
  switch(*v0 >> 61)
  {
    case 1:
      OUTLINED_FUNCTION_139_2();
      v7 = OUTLINED_FUNCTION_182_0(v37, v38, v39, &type metadata for ToolKitToolNullValue, v40, &off_1F07E4EA0, v41, v42, v55);
      goto LABEL_8;
    case 2:
      OUTLINED_FUNCTION_139_2();
      OUTLINED_FUNCTION_135_1(v19, v20, v21, &type metadata for ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.Equals, v22, &off_1F07E45B8, v23, v24, v55);
      goto LABEL_11;
    case 3:
      OUTLINED_FUNCTION_139_2();
      OUTLINED_FUNCTION_174(v25, v26, v27, &type metadata for ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, v28, &off_1F07E45E8, v29, v30, v55);
      goto LABEL_11;
    case 4:
      OUTLINED_FUNCTION_280_0();
      OUTLINED_FUNCTION_302_1(v13, v14, v15, &type metadata for ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, v16, &off_1F07E4618, v17, v18, v55);
      goto LABEL_11;
    case 5:
      OUTLINED_FUNCTION_280_0();
      OUTLINED_FUNCTION_303_0(v43, v44, v45, &type metadata for ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, v46, &off_1F07E4648, v47, v48, v55);
      goto LABEL_11;
    case 6:
      OUTLINED_FUNCTION_139_2();
      OUTLINED_FUNCTION_653(v49, v50, v51, &type metadata for ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.Contains, v52, &off_1F07E4678, v53, v54, v55);
      goto LABEL_11;
    case 7:
      OUTLINED_FUNCTION_139_2();
      OUTLINED_FUNCTION_654(v31, v32, v33, &type metadata for ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, v34, &off_1F07E46A8, v35, v36, v55);
LABEL_11:
      sub_193447600();
      break;
    default:
      OUTLINED_FUNCTION_190_2();
      v7 = OUTLINED_FUNCTION_134(v1, v2, v3, &type metadata for ToolKitToolNullValue, v4, &off_1F07E4EA0, v5, v6, v55);
LABEL_8:
      sub_193447324(v7, v8, v9, v10, v11, v12);
      break;
  }
}

void sub_19370811C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD0A0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("values");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "orEqual");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937082B0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD0B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("values");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "orEqual");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1937083E0()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C0F0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_62();
      sub_193498238(v3);
    }
  }

  return result;
}

uint64_t sub_193708464()
{
  OUTLINED_FUNCTION_129_10();
  result = *v0;
  v3 = v0[8];
  if (*(*v0 + 16))
  {
    OUTLINED_FUNCTION_108_1();
    result = sub_193451CFC(v4, v5, v6, v7, v8, v9);
  }

  if (!v1 && v3 != 2)
  {
    OUTLINED_FUNCTION_144_7();
    return sub_19393C2E0();
  }

  return result;
}

uint64_t sub_19370856C()
{
  OUTLINED_FUNCTION_121_9();
  while (1)
  {
    result = OUTLINED_FUNCTION_607();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_155_6();
      sub_193498238(v3);
    }
  }

  return result;
}

void sub_1937085F4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD100);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("sourceContainerId");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "backingLinkActionIdentifiers");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193708724()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C1B0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_84_9();
      sub_19393C200();
    }
  }

  return result;
}

void sub_19370878C()
{
  OUTLINED_FUNCTION_96_3();
  v2 = *(v0 + 16);
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_318_0();
    OUTLINED_FUNCTION_181();
  }

  if (!v1)
  {
    if (*(v2 + 16))
    {
      OUTLINED_FUNCTION_62_6();
      sub_19393C380();
    }
  }
}

void sub_193708820()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD118);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v6, xmmword_19394FBE0);
  OUTLINED_FUNCTION_141_1("true_string");
  *(v0 + 24) = "trueString";
  *(v0 + 32) = 10;
  *(v0 + 40) = v1;
  v7 = *MEMORY[0x1E69AADD8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_65();
  (v10)(v11);
  v12 = OUTLINED_FUNCTION_52();
  *v13 = v1;
  *v12 = "false_string";
  *(v12 + 8) = 12;
  *(v12 + 16) = v1;
  *(v12 + 24) = "falseString";
  *(v12 + 32) = 11;
  *(v12 + 40) = v1;
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193708A04()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD148);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_141_1("workflowAsset");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_52();
  *v12 = v0;
  *v11 = "symbol";
  v11[1] = 6;
  v13 = OUTLINED_FUNCTION_143_6(v11);
  v9(v13);
  v14 = OUTLINED_FUNCTION_13_12();
  *v14 = "externalAsset";
  *(v14 + 1) = 13;
  v15 = OUTLINED_FUNCTION_143_6(v14);
  v9(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193708B60()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v18 = xmmword_1939526A0;
        v19 = 0uLL;
        sub_193498018();
        OUTLINED_FUNCTION_188();
        v7 = *(&v18 + 1);
        if (*(&v18 + 1) == 1)
        {
          OUTLINED_FUNCTION_387();
          ToolKitToolToolDefinition.Version1.ToolIcon.ToolExternalAsset.init()();
          v7 = v17;
        }

        else
        {
          v2 = &v18;
        }

        OUTLINED_FUNCTION_386();
        OUTLINED_FUNCTION_95();
        v11 = swift_allocObject();
        *(v11 + 16) = v2;
        *(v11 + 24) = v7;
        *(v11 + 32) = v12;
        OUTLINED_FUNCTION_285(v11);
        break;
      case 2:
        v18 = xmmword_1939526A0;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        sub_193498018();
        OUTLINED_FUNCTION_188();
        if (*(&v18 + 1) == 1)
        {
          ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon.init()(&v13);
        }

        else
        {
          v14 = v19;
          v15 = v20;
          v16 = v21;
          v13 = v18;
        }

        v8 = swift_allocObject();
        v9 = v14;
        v8[1] = v13;
        v8[2] = v9;
        v10 = v16;
        v8[3] = v15;
        v8[4] = v10;
        OUTLINED_FUNCTION_277(v8);
        break;
      case 1:
        v18 = 0uLL;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        OUTLINED_FUNCTION_188();
        if (*(&v18 + 1))
        {
          v2 = v18;
        }

        else
        {
          v2 = 0;
        }

        if (*(&v18 + 1))
        {
          v5 = *(&v18 + 1);
        }

        else
        {
          v5 = 0xE000000000000000;
        }

        OUTLINED_FUNCTION_123_1();
        v6 = swift_allocObject();
        *(v6 + 16) = v2;
        *(v6 + 24) = v5;
        *v1 = v6;
        break;
    }
  }

  return result;
}

void sub_193708DA4()
{
  OUTLINED_FUNCTION_129_10();
  v7 = *v0;
  v8 = *v0 >> 62;
  if (v8)
  {
    v9 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    if (v8 == 1)
    {
      v10 = *(v9 + 24);
      v11 = *(v9 + 32);
      v12 = *(v9 + 48);
      v13 = *(v9 + 64);
      OUTLINED_FUNCTION_182_0(v1, v2, v3, &type metadata for ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon, v4, &off_1F07E47C0, v5, v6, *(v9 + 16));
    }

    else
    {
      v14 = *(v9 + 16);
      v15 = *(v9 + 32);
    }

    OUTLINED_FUNCTION_130_10();
    sub_193447600();
  }

  else
  {
    OUTLINED_FUNCTION_604(v7);
    OUTLINED_FUNCTION_37_17();
    OUTLINED_FUNCTION_225_2();
    OUTLINED_FUNCTION_258_1();
  }
}

void sub_193708ECC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD160);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBE0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("ToolSymbolIconStyleUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_48(v11, "ToolSymbolIconStyleTinted");
  v9(v12);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370902C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD178);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBC0);
  OUTLINED_FUNCTION_83_0("name");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_52();
  *v12 = v0;
  v13 = OUTLINED_FUNCTION_5_4(v11, "style");
  v9(v13);
  v14 = OUTLINED_FUNCTION_13_12();
  v15 = OUTLINED_FUNCTION_23_7(v14, "foreground");
  v9(v15);
  v16 = OUTLINED_FUNCTION_14_6();
  *v16 = "background";
  *(v16 + 1) = 10;
  v17 = OUTLINED_FUNCTION_41(v16);
  v9(v17);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937091A4()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 2:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      default:
        continue;
    }
  }
}

void sub_193709360()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD190);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_56_18("name");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "bundlePath");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937094C0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD1A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("deprecationMessage");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "replacedByToolId");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937095F0()
{
  OUTLINED_FUNCTION_134_7();
  v2 = v0[2];
  v3 = v0[3];
  if (v0[1])
  {
    v4 = *v0;
    OUTLINED_FUNCTION_665();
  }

  if (!v1 && v3)
  {
    OUTLINED_FUNCTION_25_2();
    OUTLINED_FUNCTION_665();
  }

  OUTLINED_FUNCTION_135_4();
}

void sub_193709694()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD1C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8_18(v6, xmmword_1939526B0);
  *v0 = "id";
  *(v0 + 8) = 2;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  v10(v11);
  v12 = OUTLINED_FUNCTION_58_18();
  v13 = OUTLINED_FUNCTION_23_7(v12, "name");
  v10(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  v15 = OUTLINED_FUNCTION_5_4(v14, "bundleId");
  v10(v15);
  v16 = OUTLINED_FUNCTION_26_5();
  *v17 = 4;
  v18 = OUTLINED_FUNCTION_5_4(v16, "bundleVersion");
  v10(v18);
  v19 = OUTLINED_FUNCTION_21_39();
  v20 = OUTLINED_FUNCTION_23_7(v19, "teamId");
  v10(v20);
  v21 = OUTLINED_FUNCTION_38_2();
  *v22 = 6;
  v23 = OUTLINED_FUNCTION_23_7(v21, "device");
  v10(v23);
  v24 = OUTLINED_FUNCTION_30_0((v1 + 6 * v5));
  v25 = OUTLINED_FUNCTION_23_7(v24, "origin");
  v10(v25);
  OUTLINED_FUNCTION_33_0(8 * v5);
  OUTLINED_FUNCTION_121_1(v26);
  *v27 = "synonyms";
  v27[1] = v28;
  v29 = OUTLINED_FUNCTION_41(v27);
  v10(v29);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937098A8()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 6:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      case 7:
        OUTLINED_FUNCTION_89_2();
        sub_1934982A8();
        break;
      case 8:
        OUTLINED_FUNCTION_98();
        sub_19393C1B0();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1937099A0()
{
  OUTLINED_FUNCTION_364_1();
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v23 = v2;
  v24 = v9;
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  v20 = *(v0 + 72);
  v19 = *(v0 + 80);
  v18 = *(v0 + 97);
  v17 = *(v0 + 104);
  if (v5)
  {
    OUTLINED_FUNCTION_645();
    v14 = v13;
    v16 = v15;
    sub_19393C3C0();
    if (v1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v14 = v3;
    v16 = v4;
    if (v1)
    {
      goto LABEL_19;
    }
  }

  if (v7)
  {
    OUTLINED_FUNCTION_666();
  }

  if (v10)
  {
    OUTLINED_FUNCTION_334();
    OUTLINED_FUNCTION_666();
  }

  if (v12)
  {
    OUTLINED_FUNCTION_666();
  }

  if (v20)
  {
    OUTLINED_FUNCTION_666();
  }

  if ((~v19 & 0xF000000000000007) != 0)
  {
    v21 = v19;
    sub_193447600();
  }

  if ((v18 & 1) == 0)
  {
    v21 = *(v0 + 88);
    v22 = *(v0 + 96);
    sub_193447324(&v21, 7, v14, &type metadata for ToolKitToolAppDefinition.Origin, v16, &off_1F07E4880);
  }

  if (*(v17 + 16))
  {
    sub_19393C380();
  }

LABEL_19:
  OUTLINED_FUNCTION_17_0();
}

void sub_193709B90()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD1D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("OriginUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  *v11 = "OriginFirstParty";
  v11[1] = 16;
  v12 = OUTLINED_FUNCTION_70(v11);
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_627(v13, "OriginThirdParty");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193709D10()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD1F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("local");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "remote");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193709EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_108_0();
  v12 = sub_19393C420();
  __swift_allocate_value_buffer(v12, qword_1EAEAD208);
  OUTLINED_FUNCTION_136_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v13);
  v15 = *(v14 + 72);
  OUTLINED_FUNCTION_49_0();
  v36 = OUTLINED_FUNCTION_152_10();
  OUTLINED_FUNCTION_304_0(v36, xmmword_1939526B0);
  *v11 = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v16 = *MEMORY[0x1E69AADC8];
  v17 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v17);
  v19 = *(v18 + 104);
  v20 = OUTLINED_FUNCTION_50_1();
  v19(v20);
  v21 = OUTLINED_FUNCTION_9_4((v11 + v15));
  v22 = OUTLINED_FUNCTION_0_0(v21, "containerId");
  v19(v22);
  v23 = OUTLINED_FUNCTION_67_1((v11 + 2 * v15));
  v24 = OUTLINED_FUNCTION_16_6(v23, "bundleVersion");
  v19(v24);
  v25 = OUTLINED_FUNCTION_19_2((v11 + 3 * v15));
  v26 = OUTLINED_FUNCTION_16_6(v25, "containerType");
  v19(v26);
  v27 = OUTLINED_FUNCTION_75_16((v11 + 4 * v15));
  v28 = OUTLINED_FUNCTION_16_6(v27, "teamId");
  v19(v28);
  v29 = OUTLINED_FUNCTION_30_0((v11 + 5 * v15));
  v30 = OUTLINED_FUNCTION_16_6(v29, "device");
  v19(v30);
  v31 = OUTLINED_FUNCTION_3_1(v11 + 13 * v15);
  *v32 = 8;
  v33 = OUTLINED_FUNCTION_16_6(v31, "origin");
  v19(v33);
  v34 = OUTLINED_FUNCTION_55_2((v11 + a10 - v15));
  *v34 = "synonyms";
  *(v34 + 1) = 8;
  v35 = OUTLINED_FUNCTION_1_3(v34);
  v19(v35);
  sub_19393C410();
  OUTLINED_FUNCTION_107();
}

void sub_19370A0C8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 2:
      case 3:
      case 4:
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 5:
        OUTLINED_FUNCTION_180_6();
        goto LABEL_10;
      case 7:
        OUTLINED_FUNCTION_89_2();
        sub_193498018();
        break;
      case 8:
        OUTLINED_FUNCTION_147_0();
LABEL_10:
        sub_1934982A8();
        break;
      case 9:
        OUTLINED_FUNCTION_98();
        sub_19393C1B0();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19370A1D8()
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_75_3();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = *(v0 + 57);
  v28 = v0[9];
  v22 = v0[10];
  v23 = v0[8];
  v21 = *(v0 + 97);
  v20 = v0[13];
  if (v0[1])
  {
    v7 = *v0;
    OUTLINED_FUNCTION_234_2();
  }

  if (!v1)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_246_1();
    }

    if (v5)
    {
      OUTLINED_FUNCTION_125_3();
      OUTLINED_FUNCTION_181();
    }

    if ((v6 & 1) == 0)
    {
      v24 = v0[6];
      v26 = *(v0 + 56);
      OUTLINED_FUNCTION_106();
      sub_193447324(v8, v9, v10, v11, v12, v13);
    }

    if (v28)
    {
      OUTLINED_FUNCTION_181();
    }

    if ((~v22 & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if ((v21 & 1) == 0)
    {
      v25 = v0[11];
      v27 = *(v0 + 96);
      OUTLINED_FUNCTION_106();
      sub_193447324(v14, v15, v16, v17, v18, v19);
    }

    if (*(v20 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C380();
    }
  }

  OUTLINED_FUNCTION_143_0();
}

void sub_19370A3B8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD220);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("OriginUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  *v11 = "OriginFirstParty";
  v11[1] = 16;
  v12 = OUTLINED_FUNCTION_70(v11);
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_627(v13, "OriginThirdParty");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370A538()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD238);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_43_2(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_102("TypeUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v12 = OUTLINED_FUNCTION_25(v11, "TypeDaemon");
  v9(v12);
  v13 = OUTLINED_FUNCTION_69();
  v14 = OUTLINED_FUNCTION_63_1(v13, "TypeExtension");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_63_1(v15, "TypeFramework");
  v9(v16);
  v17 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_25(v17, "TypeUnknownInShortcuts");
  v9(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370A700()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD250);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("local");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "remote");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19370A924()
{
  OUTLINED_FUNCTION_129_10();
  v1 = *v0;
  if (*v0 < 0)
  {
    OUTLINED_FUNCTION_604(v1 & 0x7FFFFFFFFFFFFFFFLL);
    OUTLINED_FUNCTION_37_17();
    OUTLINED_FUNCTION_233_2();
    OUTLINED_FUNCTION_258_1();
  }

  else
  {
    v9 = *(v1 + 16);
    OUTLINED_FUNCTION_108_1();
    return sub_193447324(v2, v3, v4, v5, v6, v7);
  }
}

void sub_19370A9DC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD268);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_56_18("name");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "numericFormat");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "synonyms");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19370AB28()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C1B0();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

void sub_19370ABA4()
{
  OUTLINED_FUNCTION_75_3();
  v2 = v1[2];
  v4 = v1[3];
  v3 = v1[4];
  if (v1[1])
  {
    v5 = *v1;
    OUTLINED_FUNCTION_224_0();
  }

  if (!v0)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_193_1();
      OUTLINED_FUNCTION_181();
    }

    if (*(v3 + 16))
    {
      OUTLINED_FUNCTION_388();
      OUTLINED_FUNCTION_95_3();
      sub_19393C380();
    }
  }
}

void sub_19370AC7C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD280);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("value");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "bundleIdentifier");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19370ADAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_39_26();
  while (1)
  {
    result = sub_19393C0E0();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9_30();
      sub_19393C200();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9_30();
      a4();
    }
  }

  return result;
}

void sub_19370AE2C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  OUTLINED_FUNCTION_103();
  v4 = v0[1];
  v3 = v0[2];
  v5 = v0[3];
  OUTLINED_FUNCTION_634();
  if (!(!v7 & v6))
  {
    v8 = *v0;
    v9 = OUTLINED_FUNCTION_216();
    sub_193450688(v9, v10);
    OUTLINED_FUNCTION_216();
    OUTLINED_FUNCTION_24_2();
    sub_19393C330();
    v2 = v1;
    v11 = OUTLINED_FUNCTION_216();
    sub_19345012C(v11, v12);
  }

  if (!v2 && v5)
  {
    OUTLINED_FUNCTION_193_1();
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
  }

  OUTLINED_FUNCTION_27();
}

void sub_19370AEF4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD298);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v5, xmmword_1939526E0);
  OUTLINED_FUNCTION_83_0("title");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_58_18();
  v12 = OUTLINED_FUNCTION_5_4(v11, "subtitle");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_5_4(v13, "altText");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_64();
  v16 = OUTLINED_FUNCTION_23_7(v15, "image");
  v9(v16);
  v17 = OUTLINED_FUNCTION_60_1((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_15(v17, 8);
  v9(v18);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_270_1(v19);
  *v20 = "snippetPluginModel";
  v20[1] = 18;
  v21 = OUTLINED_FUNCTION_41(v20);
  v9(v21);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370B0BC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_84_9();
        sub_19393C200();
        continue;
      case 2:
        OUTLINED_FUNCTION_196_3();
        goto LABEL_11;
      case 3:
        OUTLINED_FUNCTION_319_0();
        goto LABEL_11;
      case 4:
        OUTLINED_FUNCTION_147_0();
        goto LABEL_11;
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C1B0();
        continue;
      case 6:
        OUTLINED_FUNCTION_146_0();
LABEL_11:
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19370B36C()
{
  OUTLINED_FUNCTION_134_7();
  v1 = v0[1];
  if (v1 >> 60 != 15)
  {
    OUTLINED_FUNCTION_184_6();
    v2 = *v0;
    sub_193450268(*v0, v1);
    OUTLINED_FUNCTION_66_17();
    sub_19393C330();
    sub_19345012C(v2, v1);
  }

  OUTLINED_FUNCTION_135_4();
}

void sub_19370B460()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD2C8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_141_1("type");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_52();
  *v12 = v0;
  *v11 = "lazy";
  v11[1] = 4;
  v13 = OUTLINED_FUNCTION_143_6(v11);
  v9(v13);
  v14 = OUTLINED_FUNCTION_13_12();
  *v14 = "staticType";
  *(v14 + 1) = 10;
  v15 = OUTLINED_FUNCTION_143_6(v14);
  v9(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370B5BC()
{
  OUTLINED_FUNCTION_53_4();
  v39 = xmmword_1939526A0;
  v38 = xmmword_19397F920;
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 3:
        v49 = *(&v39 + 1);
        v50 = 0;
        v51 = 0;
        OUTLINED_FUNCTION_100_1(3, v3, v4, v5, v6, v7, v8, v9, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), v43, *(&v43 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1), v39);
        sub_193498018();
        v12 = v49;
        if (v49 == 1)
        {
          ToolKitToolDisplayRepresentation.DisplayValue.Static.init()(&v46);
          v21 = OUTLINED_FUNCTION_646(v13, v14, v15, v16, v17, v18, v19, v20, v38, *(&v38 + 1), v39, *(&v39 + 1), v41, v42, v44, v45, v46, *(&v46 + 1), v47, *(&v47 + 1), v48);
          sub_193710334(v21, v22, v23, v24);
          v25 = v46;
          v43 = v47;
        }

        else
        {
          v30 = v50;
          v31 = v51;
          v32 = v48;
          v33 = OUTLINED_FUNCTION_286();
          sub_1936D1084(v33, v34, v30, v31);
          v35 = OUTLINED_FUNCTION_286();
          sub_193710334(v35, v36, v30, v31);
          *&v37 = v30;
          *(&v37 + 1) = v31;
          v43 = v37;
          *&v25 = v32;
          *(&v25 + 1) = v12;
        }

        v40 = v25;
        sub_1936D10D0(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
        *(v1 + 32) = v40;
        *(v1 + 48) = v43;
        break;
      case 2:
        v49 = *(&v38 + 1);
        OUTLINED_FUNCTION_100_1(2, v3, v4, v5, v6, v7, v8, v9, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), v43, *(&v43 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1), v38);
        sub_193498018();
        v10 = v49;
        if (v49 >> 60 == 11)
        {
          ToolKitToolDisplayRepresentation.Storage.init()();
          sub_19346DAA8(v48, v49);
          v10 = *(&v46 + 1);
          v11 = v46;
        }

        else
        {
          v11 = v48;
          v26 = OUTLINED_FUNCTION_33_7();
          sub_193450268(v26, v27);
          v28 = OUTLINED_FUNCTION_33_7();
          sub_19346DAA8(v28, v29);
        }

        sub_19345012C(*(v1 + 16), *(v1 + 24));
        *(v1 + 16) = v11;
        *(v1 + 24) = v10;
        break;
      case 1:
        sub_1934982A8();
        break;
    }
  }
}

void sub_19370B7D0()
{
  OUTLINED_FUNCTION_351_0();
  OUTLINED_FUNCTION_184_6();
  if ((*(v1 + 9) & 1) == 0)
  {
    *&v27 = *v3;
    BYTE8(v27) = *(v3 + 8);
    OUTLINED_FUNCTION_87_3();
    sub_193447324(v4, v5, v6, v7, v8, v9);
    v0 = v2;
  }

  if (!v0)
  {
    v27 = *(v3 + 16);
    v25 = *(v3 + 16);
    v10 = OUTLINED_FUNCTION_622();
    sub_193710940(v10, v11);
    v12 = OUTLINED_FUNCTION_622();
    sub_193710940(v12, v13);
    ToolKitToolDisplayRepresentation.Storage.init()();
    sub_19371099C();
    OUTLINED_FUNCTION_616();
    v14 = sub_19393C550();
    sub_19345012C(*&v24[0], *(&v24[0] + 1));
    sub_19345012C(v25, *(&v25 + 1));
    if (v14)
    {
      sub_1937109F0(&v27);
    }

    else
    {
      v25 = v27;
      OUTLINED_FUNCTION_87_3();
      sub_193447600();
      sub_19345012C(v27, *(&v27 + 1));
      if (v2)
      {
        return;
      }
    }

    v15 = *(v3 + 48);
    v27 = *(v3 + 32);
    v28 = v15;
    v16 = *(v3 + 48);
    v25 = *(v3 + 32);
    v26 = v16;
    v17 = OUTLINED_FUNCTION_622();
    sub_19371083C(v17, v18);
    v19 = OUTLINED_FUNCTION_622();
    sub_19371083C(v19, v20);
    ToolKitToolDisplayRepresentation.DisplayValue.Static.init()(v24);
    v22 = v24[0];
    v23 = v24[1];
    sub_193710898();
    OUTLINED_FUNCTION_616();
    v21 = sub_19393C550();
    sub_1936D10D0(v22, *(&v22 + 1), v23, *(&v23 + 1));
    sub_1936D10D0(v25, *(&v25 + 1), v26, *(&v26 + 1));
    if (v21)
    {
      sub_1937108EC(&v27);
    }

    else
    {
      v25 = v27;
      v26 = v28;
      OUTLINED_FUNCTION_87_3();
      sub_193447600();
      sub_1936D10D0(v25, *(&v25 + 1), v26, *(&v26 + 1));
    }
  }
}

void sub_19370BA14()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD2E0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_141_1("DisplayValueEnumUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_65();
  v10(v11);
  v12 = OUTLINED_FUNCTION_4_9();
  *v12 = "DisplayValueEnumSubtitle";
  v12[1] = 24;
  v13 = OUTLINED_FUNCTION_143_6(v12);
  v10(v13);
  v14 = OUTLINED_FUNCTION_46_10();
  *v15 = v1;
  *v14 = "DisplayValueEnumAltText";
  v14[1] = 23;
  v16 = OUTLINED_FUNCTION_143_6(v14);
  v10(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370BBB4()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }
  }
}

void sub_19370BC1C()
{
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_89_0();
    v7 = *(v0 + 16);
    OUTLINED_FUNCTION_134(v1, v2, v3, &type metadata for ToolKitToolAny, v4, &off_1F07E2948, v5, v6, *v0);
    sub_193447600();
  }
}

void sub_19370BCDC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD310);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_56_18("lazy");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "staticType");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370BE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 *a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_307();
  a26 = v30;
  a27 = v31;
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v32 = OUTLINED_FUNCTION_124();
    if (v27 || (v33 & 1) != 0)
    {
      break;
    }

    if (v32 == 2)
    {
      OUTLINED_FUNCTION_227_2();
      sub_193498018();
      OUTLINED_FUNCTION_341();
      v35 = *(&a15 + 1);
      if (*(&a15 + 1) == 1)
      {
        OUTLINED_FUNCTION_378_0();
        ToolKitToolDisplayRepresentation.Subtitle.Static.init()();
        v35 = a14;
      }

      else
      {
        v29 = &a15;
      }

      v29 = *v29;
      OUTLINED_FUNCTION_123_1();
      v41 = swift_allocObject();
      *(v41 + 16) = v29;
      *(v41 + 24) = v35;
      OUTLINED_FUNCTION_285(v41);
    }

    else if (v32 == 1)
    {
      a15 = xmmword_19397F920;
      OUTLINED_FUNCTION_96_15();
      sub_193498018();
      OUTLINED_FUNCTION_341();
      v29 = *(&a15 + 1);
      if (*(&a15 + 1) >> 60 == 11)
      {
        ToolKitToolDisplayRepresentation.Storage.init()();
        sub_19346DAA8(a15, *(&a15 + 1));
        v34 = a13;
        v29 = a14;
      }

      else
      {
        v34 = a15;
        v36 = OUTLINED_FUNCTION_165_1();
        sub_193450268(v36, v37);
        v38 = OUTLINED_FUNCTION_165_1();
        sub_19346DAA8(v38, v39);
      }

      OUTLINED_FUNCTION_123_1();
      v40 = swift_allocObject();
      *(v40 + 16) = v34;
      *(v40 + 24) = v29;
      *v28 = v40;
    }
  }

  OUTLINED_FUNCTION_17_0();
}

void sub_19370C040()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD340);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_56_18("lazy");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "staticType");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370C16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 *a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_307();
  a26 = v30;
  a27 = v31;
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v32 = OUTLINED_FUNCTION_124();
    if (v27 || (v33 & 1) != 0)
    {
      break;
    }

    if (v32 == 2)
    {
      OUTLINED_FUNCTION_227_2();
      sub_193498018();
      OUTLINED_FUNCTION_341();
      v35 = *(&a15 + 1);
      if (*(&a15 + 1) == 1)
      {
        OUTLINED_FUNCTION_378_0();
        ToolKitToolDisplayRepresentation.AltText.Static.init()();
        v35 = a14;
      }

      else
      {
        v29 = &a15;
      }

      v29 = *v29;
      OUTLINED_FUNCTION_123_1();
      v41 = swift_allocObject();
      *(v41 + 16) = v29;
      *(v41 + 24) = v35;
      OUTLINED_FUNCTION_285(v41);
    }

    else if (v32 == 1)
    {
      a15 = xmmword_19397F920;
      OUTLINED_FUNCTION_96_15();
      sub_193498018();
      OUTLINED_FUNCTION_341();
      v29 = *(&a15 + 1);
      if (*(&a15 + 1) >> 60 == 11)
      {
        ToolKitToolDisplayRepresentation.Storage.init()();
        sub_19346DAA8(a15, *(&a15 + 1));
        v34 = a13;
        v29 = a14;
      }

      else
      {
        v34 = a15;
        v36 = OUTLINED_FUNCTION_165_1();
        sub_193450268(v36, v37);
        v38 = OUTLINED_FUNCTION_165_1();
        sub_19346DAA8(v38, v39);
      }

      OUTLINED_FUNCTION_123_1();
      v40 = swift_allocObject();
      *(v40 + 16) = v34;
      *(v40 + 24) = v29;
      *v28 = v40;
    }
  }

  OUTLINED_FUNCTION_17_0();
}

void sub_19370C2EC()
{
  OUTLINED_FUNCTION_279();
  if (v0 < 0)
  {
    OUTLINED_FUNCTION_357();
    OUTLINED_FUNCTION_182_0(v7, v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_357();
    OUTLINED_FUNCTION_134(v1, v2, v3, &type metadata for ToolKitToolDisplayRepresentation.Storage, v4, &off_1F07E4A18, v5, v6, v15);
  }

  sub_193447600();
}

uint64_t sub_19370C3D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_39_26();
  while (1)
  {
    result = sub_19393C0E0();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_9_30();
      a4();
    }
  }

  return result;
}

void sub_19370C468(void *a1@<X8>)
{
  OUTLINED_FUNCTION_123_1();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  ToolKitToolDisplayRepresentation.Storage.init()();
  *a1 = v1;
}

void sub_19370C4A4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD370);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_56_18("lazy");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "staticType");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370C5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16)
{
  OUTLINED_FUNCTION_307();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v18 = OUTLINED_FUNCTION_124();
    if (v16 || (v19 & 1) != 0)
    {
      break;
    }

    if (v18 == 2)
    {
      a15 = 0xF000000000000007;
      sub_193498018();
      OUTLINED_FUNCTION_341();
      OUTLINED_FUNCTION_123_1();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_193950F80;
      OUTLINED_FUNCTION_173_0();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      OUTLINED_FUNCTION_285(v23);
    }

    else if (v18 == 1)
    {
      OUTLINED_FUNCTION_227_2();
      sub_193498018();
      OUTLINED_FUNCTION_341();
      v20 = a16;
      if (a16 >> 60 == 11)
      {
        ToolKitToolDisplayRepresentation.Storage.init()();
        sub_19346DAA8(a15, a16);
        v21 = a13;
        v20 = a14;
      }

      else
      {
        v21 = a15;
        sub_193450268(a15, a16);
        sub_19346DAA8(a15, a16);
      }

      OUTLINED_FUNCTION_123_1();
      v24 = swift_allocObject();
      *(v24 + 16) = v21;
      *(v24 + 24) = v20;
      *v17 = v24;
    }
  }

  OUTLINED_FUNCTION_17_0();
}

double sub_19370C760@<D0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_123_1();
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 16) = xmmword_193950F80;
  *a1 = v2;
  return result;
}

void sub_19370C7A0()
{
  OUTLINED_FUNCTION_279();
  if (v0 < 0)
  {
    OUTLINED_FUNCTION_190_2();
    OUTLINED_FUNCTION_182_0(v7, v8, v9, &type metadata for ToolKitToolDisplayRepresentation.Image.Static, v10, &off_1F07E4BC0, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_357();
    OUTLINED_FUNCTION_134(v1, v2, v3, &type metadata for ToolKitToolDisplayRepresentation.Storage, v4, &off_1F07E4A18, v5, v6, v13);
  }

  sub_193447600();
}

void sub_19370C870()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD388);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_141_1("data");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_52();
  *v12 = v0;
  *v11 = "symbol";
  v11[1] = 6;
  v13 = OUTLINED_FUNCTION_143_6(v11);
  v9(v13);
  v14 = OUTLINED_FUNCTION_13_12();
  *v14 = "file";
  *(v14 + 1) = 4;
  v15 = OUTLINED_FUNCTION_143_6(v14);
  v9(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370C9CC()
{
  OUTLINED_FUNCTION_351_0();
  v33 = xmmword_1939526A0;
  v32 = xmmword_193950B20;
  v31 = v1;
  v45 = v2;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 3:
        v40 = 0uLL;
        OUTLINED_FUNCTION_206_1();
        sub_19393C200();
        v0 = 0;
        v21 = *v1;

        if (*(&v40 + 1))
        {
          v22 = v40;
        }

        else
        {
          v22 = 0;
        }

        if (*(&v40 + 1))
        {
          v23 = *(&v40 + 1);
        }

        else
        {
          v23 = 0xE000000000000000;
        }

        OUTLINED_FUNCTION_123_1();
        v24 = swift_allocObject();
        *(v24 + 16) = v22;
        *(v24 + 24) = v23;
        *v1 = v24 | 0x8000000000000000;
        break;
      case 2:
        v40 = v33;
        OUTLINED_FUNCTION_619(&v40);
        OUTLINED_FUNCTION_373_0(v9, v10, v11, v12, v13, v14, v15, v16, v30, v31, v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, *(&v37 + 1), v38, v39, v40);
        sub_193498018();
        v17 = *v1;

        v18 = *(&v40 + 1);
        if (*(&v40 + 1) == 1)
        {
          ToolKitToolDisplayRepresentation.Image.Static.Symbol.init()(&v36);
          sub_193710380(v40, *(&v40 + 1), v41, v42, v43, v44);
          v34 = v36;
          v35 = v37;
          v19 = v38;
          v20 = v39;
        }

        else
        {
          v19 = v43;
          v20 = v44;
          v25 = v41;
          v26 = v42;
          v27 = v40;

          sub_193450268(v25, v26);
          sub_193450268(v19, v20);
          sub_193710380(v27, v18, v25, v26, v19, v20);
          *&v28 = v25;
          *(&v28 + 1) = v26;
          v35 = v28;
          v1 = v31;
          *&v28 = v27;
          *(&v28 + 1) = v18;
          v34 = v28;
        }

        v29 = swift_allocObject();
        *(v29 + 16) = v34;
        *(v29 + 32) = v35;
        *(v29 + 48) = v19;
        *(v29 + 56) = v20;
        *v1 = v29 | 0x4000000000000000;
        break;
      case 1:
        v40 = v32;
        OUTLINED_FUNCTION_206_1();
        sub_19393C140();
        v0 = 0;
        v5 = *v1;

        if (*(&v40 + 1) >> 60 == 15)
        {
          v6 = 0;
        }

        else
        {
          v6 = v40;
        }

        if (*(&v40 + 1) >> 60 == 15)
        {
          v7 = 0xC000000000000000;
        }

        else
        {
          v7 = *(&v40 + 1);
        }

        OUTLINED_FUNCTION_123_1();
        v8 = swift_allocObject();
        *(v8 + 16) = v6;
        *(v8 + 24) = v7;
        *v1 = v8;
        break;
    }
  }
}

void sub_19370CC68()
{
  OUTLINED_FUNCTION_103();
  v7 = *v0;
  v8 = *v0 >> 62;
  if (v8)
  {
    v9 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    if (v8 == 1)
    {
      v18 = *(v9 + 32);
      v19 = *(v9 + 48);
      OUTLINED_FUNCTION_182_0(v1, v2, v3, &type metadata for ToolKitToolDisplayRepresentation.Image.Static.Symbol, v4, &off_1F07E4BF0, v5, v6, *(v9 + 16));
      OUTLINED_FUNCTION_23_3();
      sub_193447600();
    }

    else
    {
      v16 = *(v9 + 16);
      v17 = *(v9 + 24);

      OUTLINED_FUNCTION_334();
      OUTLINED_FUNCTION_24_2();
      sub_19393C3C0();
    }
  }

  else
  {
    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
    v12 = OUTLINED_FUNCTION_165_1();
    sub_193450688(v12, v13);
    OUTLINED_FUNCTION_165_1();
    OUTLINED_FUNCTION_24_2();
    sub_19393C330();
    v14 = OUTLINED_FUNCTION_165_1();
    sub_193446A6C(v14, v15);
  }
}

void sub_19370CDC0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD3A0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_56_18("name");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "tintColorData");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "configurationData");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19370CF0C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C140();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_84_9();
      sub_19393C200();
    }
  }

  return result;
}

void sub_19370CF84()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = v0[2];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[5];
  if (v0[1])
  {
    OUTLINED_FUNCTION_318_0();
    OUTLINED_FUNCTION_294_2();
    sub_19393C3C0();
    v2 = v1;
  }

  if (!v2)
  {
    if (v5 >> 60 == 15 || (v7 = OUTLINED_FUNCTION_286(), sub_193450688(v7, v8), OUTLINED_FUNCTION_286(), OUTLINED_FUNCTION_294_2(), sub_19393C330(), v9 = OUTLINED_FUNCTION_286(), sub_19345012C(v9, v10), !v1))
    {
      if (v6 >> 60 != 15)
      {
        v11 = OUTLINED_FUNCTION_32_4();
        sub_193450688(v11, v12);
        OUTLINED_FUNCTION_228_3();
        OUTLINED_FUNCTION_294_2();
        sub_19393C330();
        v13 = OUTLINED_FUNCTION_32_4();
        sub_19345012C(v13, v14);
      }
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19370D0B0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD3B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("direction");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "typeInstance");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370D1E0()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_89_2();
      sub_1934982A8();
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_19370D274()
{
  OUTLINED_FUNCTION_129_10();
  v2 = *(v0 + 16);
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_221_1();
    v9 = OUTLINED_FUNCTION_85_3(v3, v4, v5, &type metadata for ToolKitToolCoercionDefinition.CoercionDirection, v6, &off_1F07E4C50, v7, v8, v22);
    sub_193447324(v9, v10, v11, v12, v13, v14);
  }

  if (!v1)
  {
    OUTLINED_FUNCTION_380();
    if (!v21)
    {
      OUTLINED_FUNCTION_104_11(v15, v16, v17, &type metadata for ToolKitToolTypeInstance, v18, &off_1F07E35A8, v19, v20, v2);
      sub_193447600();
    }
  }
}

void sub_19370D368()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD3D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBE0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("CoercionDirectionUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_48(v11, "CoercionDirectionExport");
  v9(v12);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19370D4D4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_19393C420();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_13_5();
  __swift_project_value_buffer(v4, v5);
  return sub_19393C410();
}

void sub_19370D558()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD400);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_202_2();
  OUTLINED_FUNCTION_8_18(v6, xmmword_193952700);
  *v0 = "id";
  *(v0 + 8) = 2;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  (v10)(v11);
  v12 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v13 = 2;
  v14 = OUTLINED_FUNCTION_63_1(v12, "name");
  (v10)(v14);
  v15 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  v16 = OUTLINED_FUNCTION_25(v15, "description");
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_26_5();
  *v18 = 4;
  v19 = OUTLINED_FUNCTION_63_1(v17, "parameters");
  (v10)(v19);
  v20 = OUTLINED_FUNCTION_21_39();
  v21 = OUTLINED_FUNCTION_63_1(v20, "outputType");
  (v10)(v21);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_140_0(v22);
  v24 = OUTLINED_FUNCTION_25(v23, "requirements");
  (v10)(v24);
  v25 = OUTLINED_FUNCTION_30_0((v1 + 10 * v5));
  *v25 = "flags";
  *(v25 + 1) = 5;
  v25[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370D74C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v2 = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 4:
        v4 = v0 + 48;
        goto LABEL_9;
      case 5:
        sub_193498018();
        break;
      case 6:
        OUTLINED_FUNCTION_147_0();
LABEL_9:
        sub_193498238(v4);
        break;
      case 7:
        OUTLINED_FUNCTION_146_0();
        sub_1934984D4(v5, v6, v7, v8, v9);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19370D86C()
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_75_3();
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v6 = v1[5];
  v5 = v1[6];
  v7 = v1[8];
  v28 = v7;
  v29 = v1[9];
  if (v1[1])
  {
    v8 = *v1;
    OUTLINED_FUNCTION_224_0();
  }

  if (!v0)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_234_2();
    }

    if (v6)
    {
      OUTLINED_FUNCTION_286();
      OUTLINED_FUNCTION_246_1();
    }

    if (*(v5 + 16))
    {
      OUTLINED_FUNCTION_145_8();
      sub_193451CFC(v9, v10, v11, v12, v13, v14);
    }

    OUTLINED_FUNCTION_380();
    if (!v15)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if (*(v28 + 16))
    {
      OUTLINED_FUNCTION_154_8();
      sub_193451CFC(v16, v17, v18, v19, v20, v21);
    }

    if (*(v29 + 16))
    {
      OUTLINED_FUNCTION_106();
      sub_193498B44(v22, v23, v24, v25, v26, v27);
    }
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_19370D9FC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD418);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v5, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("FlagUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v12 = OUTLINED_FUNCTION_25(v11, "FlagIsAllowedToRunAutomatically");
  v9(v12);
  v13 = OUTLINED_FUNCTION_69();
  v14 = OUTLINED_FUNCTION_25(v13, "FlagRequiresNotification");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_64();
  v16 = OUTLINED_FUNCTION_25(v15, "FlagIsUserInitiated");
  v9(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370DBA0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD430);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("value");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "reference");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370DD30()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD448);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("identifier");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "toolIdentifier");
  v9(v12);
  v13 = OUTLINED_FUNCTION_13_12();
  v14 = OUTLINED_FUNCTION_0_0(v13, "target");
  v9(v14);
  v15 = OUTLINED_FUNCTION_14_6();
  v16 = OUTLINED_FUNCTION_0_0(v15, "parameterValues");
  v9(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_0_0(v17, "options");
  v9(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370E324()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD460);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("key");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "value");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370E4D8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD478);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("interactionMode");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "locale");
  v9(v12);
  v13 = OUTLINED_FUNCTION_13_12();
  v14 = OUTLINED_FUNCTION_0_0(v13, "requestIdentifier");
  v9(v14);
  v15 = OUTLINED_FUNCTION_14_6();
  v16 = OUTLINED_FUNCTION_16_6(v15, "interfaceIdiom");
  v9(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  *v17 = "shortcutOutput";
  *(v17 + 1) = 14;
  v18 = OUTLINED_FUNCTION_1_3(v17);
  v9(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370E66C()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_62();
        goto LABEL_8;
      case 2:
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 4:
        OUTLINED_FUNCTION_89_2();
LABEL_8:
        sub_1934982A8();
        break;
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_19370E888()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD490);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_43_2(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_102("InteractionModeUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v12 = OUTLINED_FUNCTION_25(v11, "InteractionModeDisplayForward");
  v9(v12);
  v13 = OUTLINED_FUNCTION_69();
  v14 = OUTLINED_FUNCTION_25(v13, "InteractionModeDisplayOnly");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_25(v15, "InteractionModeVoiceOnly");
  v9(v16);
  v17 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_25(v17, "InteractionModeVoiceForward");
  v9(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370EA54()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD4A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v32 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_9_8(v32, xmmword_1939526F0);
  *v1 = 0;
  *v0 = "InterfaceIdiomUnknown";
  v0[1] = 21;
  OUTLINED_FUNCTION_107_3();
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_18_1(v11, "InterfaceIdiomCarPlay");
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_0_0(v13, "InterfaceIdiomEyesFree");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  v16 = OUTLINED_FUNCTION_18_1(v15, "InterfaceIdiomHomePod");
  v9(v16);
  v17 = OUTLINED_FUNCTION_13((v1 + 4 * v5));
  v18 = OUTLINED_FUNCTION_16_6(v17, "InterfaceIdiomMac");
  v9(v18);
  v19 = OUTLINED_FUNCTION_19_2((v1 + 5 * v5));
  v20 = OUTLINED_FUNCTION_18_1(v19, "InterfaceIdiomAirPods");
  v9(v20);
  v21 = OUTLINED_FUNCTION_14_4(6);
  v22 = OUTLINED_FUNCTION_18_1(v21, "InterfaceIdiomPhone");
  v9(v22);
  OUTLINED_FUNCTION_120();
  v24 = OUTLINED_FUNCTION_30_0((v1 + v23));
  v25 = OUTLINED_FUNCTION_16_6(v24, "InterfaceIdiomPad");
  v9(v25);
  v26 = OUTLINED_FUNCTION_39_3(&v1[v5]);
  v27 = OUTLINED_FUNCTION_18_1(v26, "InterfaceIdiomWatch");
  v9(v27);
  v28 = OUTLINED_FUNCTION_55_2((v1 + 9 * v5));
  v29 = OUTLINED_FUNCTION_0_0(v28, "InterfaceIdiomTv");
  v9(v29);
  v30 = OUTLINED_FUNCTION_14_4(10);
  v31 = OUTLINED_FUNCTION_0_0(v30, "InterfaceIdiomVision");
  v9(v31);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19370ED00()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD4C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_56_18("uuid");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "toolDefinition");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "parameterValues");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370EE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_351_0();
  OUTLINED_FUNCTION_22_0();
  v50 = v21;
  while (1)
  {
    while (1)
    {
      OUTLINED_FUNCTION_55();
      v22 = sub_19393C0E0();
      if (v20 || (v23 & 1) != 0)
      {
        OUTLINED_FUNCTION_295();
        return;
      }

      if (v22 == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        v26 = *(type metadata accessor for ToolKitTranscript() + 32);
        sub_193498018();
LABEL_9:
        v20 = 0;
      }

      else if (v22 == 1)
      {
        v24 = *(type metadata accessor for ToolKitTranscript() + 28);
        OUTLINED_FUNCTION_98();
        sub_193497890(v25);
        goto LABEL_9;
      }
    }

    v27 = OUTLINED_FUNCTION_658(MEMORY[0x1E69E7CC0]);
    sub_193498238(v27);
    v28 = a20;
    v52 = *(a20 + 16);
    if (v52)
    {
      break;
    }

LABEL_22:

    v20 = 0;
  }

  v29 = 0;
  v30 = *(type metadata accessor for ToolKitTranscript() + 36);
  v31 = (a20 + 48);
  v51 = v30;
  while (v29 < *(v28 + 16))
  {
    v33 = *(v31 - 2);
    v32 = *(v31 - 1);
    v34 = *v31;
    swift_retain_n();
    v35 = *(v21 + v30);

    swift_isUniquelyReferenced_nonNull_native();
    v53 = v33;
    v54 = *(v21 + v30);
    sub_193485250(v33, v32);
    OUTLINED_FUNCTION_275_2();
    if (__OFADD__(v38, v39))
    {
      goto LABEL_25;
    }

    v40 = v36;
    v41 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE41A28, &qword_19397FA30);
    OUTLINED_FUNCTION_623();
    if (sub_19393C980())
    {
      v42 = sub_193485250(v53, v32);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_27;
      }

      v40 = v42;
    }

    if (v41)
    {
      v44 = v54[7];
      v45 = *(v44 + 8 * v40);
      *(v44 + 8 * v40) = v34;
    }

    else
    {
      v54[(v40 >> 6) + 8] |= 1 << v40;
      v46 = (v54[6] + 16 * v40);
      *v46 = v53;
      v46[1] = v32;
      *(v54[7] + 8 * v40) = v34;

      v47 = v54[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_26;
      }

      v54[2] = v49;
    }

    ++v29;
    v21 = v50;
    *(v50 + v51) = v54;
    v30 = v51;
    v31 += 3;
    v28 = a20;
    if (v52 == v29)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_19393CA50();
  __break(1u);
}

void sub_19370F0F8()
{
  OUTLINED_FUNCTION_660();
  sub_19370F234(v4, v1, v3, v0, v5, v6, v7, v8, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], v20[9], v20[10], v20[11]);
  if (!v2)
  {
    v9 = type metadata accessor for ToolKitTranscript();
    memcpy(__dst, (v4 + *(v9 + 32)), sizeof(__dst));
    if (sub_1936D3298(__dst) != 1)
    {
      v10 = memcpy(v20, __dst, sizeof(v20));
      OUTLINED_FUNCTION_182_0(v10, v11, v12, &type metadata for ToolKitToolToolDefinition.Version1, v13, &off_1F07E4430, v14, v15, v20[0]);
      OUTLINED_FUNCTION_602();
    }

    if (*(*(v4 + *(v9 + 36)) + 16))
    {
      sub_1936F425C();
      OUTLINED_FUNCTION_314_0();
      sub_193451CFC(v16, v17, v18, &type metadata for ToolKitTranscript.ParameterValuesEntry, v0, v19);
    }
  }
}

void sub_19370F234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &a9 - v26;
  v28 = sub_19393BE60();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ToolKitTranscript();
  sub_193458F7C(v23 + *(v33 + 28), v27);
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {
    sub_19344E6DC(v27, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v34 = *(v29 + 32);
    v35 = OUTLINED_FUNCTION_82();
    v36(v35);
    OUTLINED_FUNCTION_32_20();
    sub_19344652C();
    (*(v29 + 8))(v32, v28);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_19370F440@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_173_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_173_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_173_0();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v3 + 16) = result;
  *(v2 + 16) = v3;
  *a1 = v2;
  return result;
}

void sub_19370F4A8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD4D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("value");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "reference");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19370F5D8()
{
  OUTLINED_FUNCTION_351_0();
  OUTLINED_FUNCTION_184_6();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_150_9();
      sub_193498018();
      v8 = *v1;

      v9 = ToolKitToolTypedValue.ID.init()();
      v17 = OUTLINED_FUNCTION_215_0(v9, v10, v11, v12, v13, v14, v15, v16, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, *(&v25 + 1), v26, *(&v26 + 1), v27, 0);
      sub_1937103EC(v17, v18, v19, v20, 1);
      v22 = v25;
      v23 = v26;
      v21 = swift_allocObject();
      *(v21 + 16) = v25;
      *(v21 + 32) = v26;
      *(v21 + 48) = v27;
      *v1 = v21 | 0x8000000000000000;
    }

    else if (result == 1)
    {
      sub_193498018();
      v4 = *v1;

      OUTLINED_FUNCTION_173_0();
      v5 = swift_allocObject();
      OUTLINED_FUNCTION_173_0();
      v6 = swift_allocObject();
      *(v6 + 16) = 0;
      *(v5 + 16) = v6;
      OUTLINED_FUNCTION_173_0();
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *v1 = v7;
    }
  }

  return result;
}

void sub_19370F828()
{
  OUTLINED_FUNCTION_279();
  if (v6 < 0)
  {
    v13 = v6 & 0x7FFFFFFFFFFFFFFFLL;
    v15 = *(v13 + 32);
    v16 = *(v13 + 48);
    OUTLINED_FUNCTION_182_0(v0, v1, v2, &type metadata for ToolKitToolTypedValue.ID, v3, &off_1F07E2DE0, v4, v5, *(v13 + 16));
  }

  else
  {
    OUTLINED_FUNCTION_190_2();
    OUTLINED_FUNCTION_134(v7, v8, v9, &type metadata for ToolKitToolTypedValue, v10, &off_1F07E2DB0, v11, v12, v14);
  }

  sub_193447600();
}

void sub_19370F8D0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD4F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("key");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "value");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370FA00()
{
  OUTLINED_FUNCTION_351_0();
  while (1)
  {
    OUTLINED_FUNCTION_19_3();
    v2 = sub_19393C0E0();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 2)
    {
      sub_193498018();
      OUTLINED_FUNCTION_173_0();
      v4 = swift_allocObject();
      OUTLINED_FUNCTION_173_0();
      v5 = swift_allocObject();
      OUTLINED_FUNCTION_173_0();
      v6 = swift_allocObject();
      *(v6 + 16) = 0;
      *(v5 + 16) = v6;
      *(v4 + 16) = v5;
      v7 = v1[2];

      v1[2] = v4;
    }

    else if (v2 == 1)
    {
      v8 = sub_19393C200();
      v16 = OUTLINED_FUNCTION_50_2(v8, v9, v10, v11, v12, v13, v14, v15, 0, 0);
      if (v16)
      {
        v17 = v20;
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

      v19 = v1[1];

      *v1 = v17;
      v1[1] = v18;
    }
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_19370FB70()
{
  OUTLINED_FUNCTION_241_1();
  v3 = v2;
  v4 = v0[2];
  if (*v0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[1] == 0xE000000000000000;
  }

  if (!v5)
  {
    v6 = *v0;
    v7 = v0[1];
    if ((OUTLINED_FUNCTION_272() & 1) == 0)
    {
      sub_19393C3C0();
    }
  }

  if (!v1)
  {
    OUTLINED_FUNCTION_173_0();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_173_0();
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_173_0();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v9 + 16) = v10;
    *(v8 + 16) = v9;
    v3();
    swift_retain_n();
    LOBYTE(v8) = sub_19393C550();

    if ((v8 & 1) == 0)
    {
      sub_193447600();
    }
  }

  OUTLINED_FUNCTION_71_17();
}

void sub_19370FDA8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD520);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_9_8(v5, xmmword_193951270);
  *v0 = 0;
  OUTLINED_FUNCTION_63("ToolKitToolRuntimePlatformUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_16_6(v11, "ToolKitToolRuntimePlatformPhone");
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_0_0(v13, "ToolKitToolRuntimePlatformPad");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "ToolKitToolRuntimePlatformMacintosh");
  v9(v16);
  v17 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_16_6(v17, "ToolKitToolRuntimePlatformWatch");
  v9(v18);
  v19 = OUTLINED_FUNCTION_19_2((v0 + 5 * v4));
  v20 = OUTLINED_FUNCTION_0_0(v19, "ToolKitToolRuntimePlatformTv");
  v9(v20);
  v21 = OUTLINED_FUNCTION_14_4(6);
  v22 = OUTLINED_FUNCTION_0_0(v21, "ToolKitToolRuntimePlatformVision");
  v9(v22);
  OUTLINED_FUNCTION_120();
  v24 = OUTLINED_FUNCTION_30_0((v0 + v23));
  v25 = OUTLINED_FUNCTION_0_0(v24, "ToolKitToolRuntimePlatformaudioAccessory");
  v9(v25);
  v26 = OUTLINED_FUNCTION_39_3(&v0[v4]);
  *v26 = "ToolKitToolRuntimePlatformother";
  *(v26 + 1) = 31;
  v27 = OUTLINED_FUNCTION_1_3(v26);
  v9(v27);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193710010(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_19345012C(result, a2);
  }

  return result;
}

uint64_t sub_193710054(uint64_t result)
{
  if ((result & 0xF000000000000007) != 0xD000000000000007)
  {
    return sub_193444060(result);
  }

  return result;
}

uint64_t sub_193710070(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a2)
  {
    a3();
  }

  return result;
}

uint64_t objectdestroy_209Tm()
{
  OUTLINED_FUNCTION_60_18();
  if (!v1)
  {
  }

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_123_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

void sub_1937100F8(uint64_t a1)
{
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  bzero((a1 + 136), 0x98uLL);
}

uint64_t sub_193710124(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_193710148(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    sub_1934354B4(result);
  }

  return result;
}

uint64_t sub_19371018C(uint64_t result, uint64_t a2, void (*a3)(void))
{
  if ((result & 0xF000000000000007) != 0xD000000000000007)
  {
    a3();

    return sub_193444060(a2);
  }

  return result;
}

uint64_t objectdestroy_221Tm()
{
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_130_9();
  if (!v3)
  {
  }

  if ((v0 & ~*(v1 + 24)) != 0)
  {
  }

  OUTLINED_FUNCTION_123_1();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t objectdestroy_405Tm()
{
  if (v0[3] != 1)
  {

    v1 = v0[11];
  }

  v2 = v0[12];

  if (v0[17])
  {
    v3 = v0[14];

    v4 = v0[16];

    v5 = v0[17];
  }

  OUTLINED_FUNCTION_609();

  return MEMORY[0x1EEE6BDD0](v6, v7, v8);
}

uint64_t objectdestroy_77Tm()
{
  if (*(v0 + 24) != 1)
  {

    v1 = *(v0 + 88);
  }

  OUTLINED_FUNCTION_137_7();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x1EEE6BDD0](v3, v4, 7);
}

void sub_193710334(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 != 1)
  {
    sub_1936D10D0(a1, a2, a3, a4);
  }
}

uint64_t objectdestroy_372Tm()
{
  OUTLINED_FUNCTION_189_1();
  if (!(!v3 & v2))
  {
    sub_193446A6C(*(v0 + 16), v1);
  }

  OUTLINED_FUNCTION_123_1();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

void sub_193710380(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 != 1)
  {

    sub_19345012C(a3, a4);

    sub_19345012C(a5, a6);
  }
}

uint64_t sub_1937103EC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_19345012C(result, a2);
    sub_193444060(a3);
  }

  return result;
}

char *sub_19371043C(char *a1, int64_t a2, char a3)
{
  result = sub_19371061C(a1, a2, a3, *v3, &qword_1EAE41A90, &unk_193980750);
  *v3 = result;
  return result;
}

char *sub_193710474(char *a1, int64_t a2, char a3)
{
  result = sub_193710504(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_193710494(char *a1, int64_t a2, char a3)
{
  result = sub_19371061C(a1, a2, a3, *v3, &qword_1EAE41A40, &qword_193980740);
  *v3 = result;
  return result;
}

char *sub_1937104CC(char *a1, int64_t a2, char a3)
{
  result = sub_19371061C(a1, a2, a3, *v3, &qword_1EAE41A30, &qword_193980738);
  *v3 = result;
  return result;
}

char *sub_193710504(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE41A60, &qword_193980748);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19371061C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || &v15[24 * v10] <= v14)
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_19371072C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_19393C8B0();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_19371076C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_193710778()
{
  result = qword_1EAE41A38;
  if (!qword_1EAE41A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41A38);
  }

  return result;
}

uint64_t sub_1937107E4(uint64_t a1)
{
  OUTLINED_FUNCTION_245_2(a1);

  *v2 = v4;
  v2[1] = v3;
  v5 = v2[2];

  v2[2] = v1;
  return result;
}

unint64_t sub_193710898()
{
  result = qword_1EAE41A48;
  if (!qword_1EAE41A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41A48);
  }

  return result;
}

unint64_t sub_19371099C()
{
  result = qword_1EAE41A50;
  if (!qword_1EAE41A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41A50);
  }

  return result;
}

unint64_t sub_193710A44()
{
  result = qword_1EAE41A58;
  if (!qword_1EAE41A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41A58);
  }

  return result;
}

uint64_t sub_193710A98(uint64_t a1)
{
  OUTLINED_FUNCTION_245_2(a1);

  *v2 = v4;
  v2[1] = v3;
  v5 = v2[2];

  v2[2] = v1;
  return result;
}

unint64_t sub_193710B4C()
{
  result = qword_1EAE41A68;
  if (!qword_1EAE41A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41A68);
  }

  return result;
}

unint64_t sub_193710C50()
{
  result = qword_1EAE41A70;
  if (!qword_1EAE41A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41A70);
  }

  return result;
}

unint64_t sub_193710D54()
{
  result = qword_1EAE41A78;
  if (!qword_1EAE41A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41A78);
  }

  return result;
}

unint64_t sub_193710E58()
{
  result = qword_1EAE41A80;
  if (!qword_1EAE41A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41A80);
  }

  return result;
}

unint64_t sub_193710F00()
{
  result = qword_1EAE41A88;
  if (!qword_1EAE41A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41A88);
  }

  return result;
}

uint64_t sub_193710F54(uint64_t a1)
{
  OUTLINED_FUNCTION_245_2(a1);

  *v2 = v4;
  v2[1] = v3;
  v5 = v2[2];

  v2[2] = v1;
  return result;
}

char *OUTLINED_FUNCTION_21_39()
{
  v3 = (v2 + 4 * v1);
  result = v3 + *(v0 + 56);
  *v3 = 5;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_17()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_58_18()
{
  result = v2 + v1 + *(v0 + 56);
  *(v2 + v1) = v3;
  return result;
}

char *OUTLINED_FUNCTION_66_22()
{
  v3 = (v2 + 5 * v1);
  result = v3 + *(v0 + 56);
  *v3 = 6;
  return result;
}

char *OUTLINED_FUNCTION_75_16@<X0>(void *a1@<X8>)
{
  result = a1 + *(v1 + 56);
  *a1 = 6;
  return result;
}