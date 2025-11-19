uint64_t static GenerativeFunctionsInstrumentationError.ModelManagerSessionError.== infix(_:_:)(void *a1, unint64_t *a2)
{
  v3 = *a2;
  switch(*a1 >> 61)
  {
    case 1:
      if (v3 >> 61 != 1)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_65_5();

      v53 = OUTLINED_FUNCTION_87_2(v45, v46, v47, v48, v49, v50, v51, v52, v55, v56, v57);
      static GenerativeFunctionsInstrumentationError.ModelManagerSessionError.UnrecognizedInferenceProviderError.== infix(_:_:)(v53);
      goto LABEL_12;
    case 2:
      if (v3 >> 61 != 2)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_36_8();
      OUTLINED_FUNCTION_20_6();

      v34 = OUTLINED_FUNCTION_87_2(v26, v27, v28, v29, v30, v31, v32, v33, v55, v56, v57);
      static GenerativeFunctionsInstrumentationError.ModelManagerInferenceError.== infix(_:_:)(v34, v35);
      goto LABEL_12;
    case 3:
      if (v3 >> 61 != 3)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_65_5();

      v44 = OUTLINED_FUNCTION_87_2(v36, v37, v38, v39, v40, v41, v42, v43, v55, v56, v57);
      static GenerativeFunctionsInstrumentationError.ModelManagerSessionError.MissingEntitlementError.== infix(_:_:)(v44);
      goto LABEL_12;
    case 4:
      if (v3 >> 61 != 4)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_65_5();

      v25 = OUTLINED_FUNCTION_87_2(v17, v18, v19, v20, v21, v22, v23, v24, v55, v56, v57);
      static GenerativeFunctionsInstrumentationError.ModelManagerSessionError.UseCaseDisabledError.== infix(_:_:)(v25);
LABEL_12:
      OUTLINED_FUNCTION_121();
      goto LABEL_13;
    default:
      if (v3 >> 61)
      {
LABEL_14:
        v2 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_44_6();
        v4 = *(v3 + 16);
        v5 = *(v3 + 24);
        v6 = *(v3 + 25);
        OUTLINED_FUNCTION_20_6();

        v15 = OUTLINED_FUNCTION_87_2(v7, v8, v9, v10, v11, v12, v13, v14, v55, v56, v57);
        static GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError.== infix(_:_:)(v15, v16);
        OUTLINED_FUNCTION_121();
LABEL_13:
      }

      return v2 & 1;
  }
}

uint64_t static GenerativeFunctionsInstrumentationError.GenerativeFunctionError.== infix(_:_:)(void *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 62 == 1)
      {
        OUTLINED_FUNCTION_44_6();
        v5 = v3 & 0x3FFFFFFFFFFFFFFFLL;
        v6 = *(v5 + 16);
        v7 = *(v5 + 24);
        v8 = *(v5 + 25);
        OUTLINED_FUNCTION_20_6();

        v17 = OUTLINED_FUNCTION_87_2(v9, v10, v11, v12, v13, v14, v15, v16, v47, v48, v49);
        static GenerativeFunctionsInstrumentationError.GenerativeFunctionError.SanitizerError.== infix(_:_:)(v17, v18);
LABEL_9:
        OUTLINED_FUNCTION_143();

        goto LABEL_10;
      }
    }

    else if (v3 >> 62 == 2)
    {
      OUTLINED_FUNCTION_44_6();
      v32 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      v33 = *(v32 + 16);
      v34 = *(v32 + 24);
      v35 = *(v32 + 25);
      OUTLINED_FUNCTION_20_6();

      v44 = OUTLINED_FUNCTION_87_2(v36, v37, v38, v39, v40, v41, v42, v43, v47, v48, v49);
      static GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError.== infix(_:_:)(v44, v45);
      goto LABEL_9;
    }

LABEL_11:
    v2 = 0;
    return v2 & 1;
  }

  if (v3 >> 62)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_44_6();
  v19 = *(v3 + 16);
  v20 = *(v3 + 24);
  v21 = *(v3 + 25);
  OUTLINED_FUNCTION_20_6();

  v30 = OUTLINED_FUNCTION_87_2(v22, v23, v24, v25, v26, v27, v28, v29, v47, v48, v49);
  static GenerativeFunctionsInstrumentationError.GenerativeFunctionError.ModelError.== infix(_:_:)(v30, v31);
  OUTLINED_FUNCTION_143();

LABEL_10:

  return v2 & 1;
}

uint64_t static GenerativeFunctionsInstrumentationError.SummarizationError.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  switch(*a1 >> 61)
  {
    case 1uLL:
      if (v4 >> 61 != 1)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_70_3();

      v37 = OUTLINED_FUNCTION_66_2(v29, v30, v31, v32, v33, v34, v35, v36, v41, v42, v43, v44, v45);
      v19 = static GenerativeFunctionsInstrumentationError.SummarizationError.InputTooShort.== infix(_:_:)(v37, v38);
      goto LABEL_14;
    case 2uLL:
      if (v4 >> 61 != 2)
      {
        goto LABEL_21;
      }

      v6 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v8 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x19);
      v46 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v47 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v48 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x19);
      OUTLINED_FUNCTION_35_7();

      v17 = OUTLINED_FUNCTION_66_2(v9, v10, v11, v12, v13, v14, v15, v16, v41, v42, v43, v44, v46);
      v19 = static GenerativeFunctionsInstrumentationError.SummarizationError.MissingRequiredData.== infix(_:_:)(v17, v18);
      goto LABEL_14;
    case 3uLL:
      if (v4 >> 61 != 3)
      {
        goto LABEL_21;
      }

      v5 = static GenerativeFunctionsInstrumentationError.SummarizationError.UseCaseDisabled.== infix(_:_:)();
      goto LABEL_19;
    case 4uLL:
      if (v4 >> 61 != 4)
      {
        goto LABEL_21;
      }

      v5 = static GenerativeFunctionsInstrumentationError.SummarizationError.MissingResponseData.== infix(_:_:)();
      goto LABEL_19;
    case 5uLL:
      if (v4 >> 61 != 5)
      {
        goto LABEL_21;
      }

      v5 = static GenerativeFunctionsInstrumentationError.SummarizationError.UnknownSummarizationStyle.== infix(_:_:)();
      goto LABEL_19;
    case 6uLL:
      if (v4 >> 61 != 6)
      {
        goto LABEL_21;
      }

      v5 = static GenerativeFunctionsInstrumentationError.SummarizationError.UnknownVisualPromptUseCase.== infix(_:_:)();
LABEL_19:
      v2 = v5;
      goto LABEL_20;
    case 7uLL:
      if (v4 >> 61 != 7)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_130_0();

      v28 = OUTLINED_FUNCTION_66_2(v20, v21, v22, v23, v24, v25, v26, v27, v41, v42, v43, v44, v45);
      v19 = static GenerativeFunctionsInstrumentationError.SummarizationError.InvalidModelBundleIdentifier.== infix(_:_:)(v28);
LABEL_14:
      v39 = v19;

      return v39 & 1;
    default:
      if (v4 >> 61)
      {
LABEL_21:
        v39 = 0;
        return v39 & 1;
      }

      else
      {

        static GenerativeFunctionsInstrumentationError.SummarizationError.UnknownError.== infix(_:_:)();
        OUTLINED_FUNCTION_143();
LABEL_20:

        return v2 & 1;
      }
  }
}

uint64_t static GenerativeFunctionsInstrumentationError.ClassificationError.== infix(_:_:)(void *a1, unint64_t *a2)
{
  v3 = *a2;
  switch(*a1 >> 62)
  {
    case 1:
      if (v3 >> 62 != 1)
      {
        goto LABEL_12;
      }

      v2 = static GenerativeFunctionsInstrumentationError.ClassificationError.UseCaseDisabled.== infix(_:_:)();
      goto LABEL_11;
    case 2:
      if (v3 >> 62 != 2)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_130_0();

      v12 = OUTLINED_FUNCTION_66_2(v4, v5, v6, v7, v8, v9, v10, v11, v25, v26, v27, v28, v29);
      v13 = static GenerativeFunctionsInstrumentationError.ClassificationError.InvalidModelBundleIdentifier.== infix(_:_:)(v12);
      goto LABEL_8;
    case 3:
      if (v3 >> 62 != 3)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_70_3();

      v22 = OUTLINED_FUNCTION_66_2(v14, v15, v16, v17, v18, v19, v20, v21, v25, v26, v27, v28, v29);
      v13 = static GenerativeFunctionsInstrumentationError.ClassificationError.InvalidEmbeddingDimension.== infix(_:_:)(v22);
LABEL_8:
      v23 = v13;

      return v23 & 1;
    default:
      if (v3 >> 62)
      {
LABEL_12:
        v23 = 0;
        return v23 & 1;
      }

      else
      {

        static GenerativeFunctionsInstrumentationError.ClassificationError.UnknownError.== infix(_:_:)();
        OUTLINED_FUNCTION_143();
LABEL_11:

        return v2 & 1;
      }
  }
}

uint64_t GenerativeFunctionsInstrumentationError.hash(into:)()
{
  v1 = *v0;
  switch(*v0 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_71_4(v1);
      sub_1934B1820();
      break;
    case 2uLL:
      OUTLINED_FUNCTION_4_6(v1 & 0x1FFFFFFFFFFFFFFFLL);
      sub_1934B17CC();
      break;
    case 3uLL:
      OUTLINED_FUNCTION_71_4(v1);
      sub_1934B1778();
      break;
    case 4uLL:
      OUTLINED_FUNCTION_4_6(v1 & 0x1FFFFFFFFFFFFFFFLL);
      sub_1934B1724();
      break;
    case 5uLL:
      OUTLINED_FUNCTION_71_4(v1);
      sub_1934B16D0();
      break;
    case 6uLL:
      OUTLINED_FUNCTION_71_4(v1);
      sub_1934B167C();
      break;
    default:
      v3 = *(v1 + 16);
      v4 = *(v1 + 32);
      v5 = *(v1 + 40);
      sub_1934B1874();
      break;
  }

  return sub_19393C540();
}

uint64_t GenerativeFunctionsInstrumentationError.ModelManagerSessionError.hash(into:)()
{
  v1 = *v0;
  switch(*v0 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_72_3(v1);
      sub_1934B1970();
      break;
    case 2uLL:
      OUTLINED_FUNCTION_4_6(v1 & 0x1FFFFFFFFFFFFFFFLL);
      sub_1934B17CC();
      break;
    case 3uLL:
      OUTLINED_FUNCTION_72_3(v1);
      sub_1934B191C();
      break;
    case 4uLL:
      OUTLINED_FUNCTION_72_3(v1);
      sub_1934B18C8();
      break;
    default:
      OUTLINED_FUNCTION_4_6(v1);
      sub_1934B19C4();
      break;
  }

  return sub_19393C540();
}

uint64_t GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError.ErrorCase.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    case 23:
      v3 = 23;
      break;
    case 24:
      v3 = 24;
      break;
    case 25:
      v3 = 25;
      break;
    case 26:
      v3 = 26;
      break;
    case 27:
      v3 = 27;
      break;
    case 28:
      v3 = 28;
      break;
    case 29:
      v3 = 29;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError.ErrorCase.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  v7 = sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_16_0(v7);
  if (!(!v14 & v13))
  {
    v212 = OUTLINED_FUNCTION_39(v12);
    v216 = OUTLINED_FUNCTION_84_2(v212, v213, v214, v215, &qword_1EAE3B058, &qword_1939525B8);
    v8 = OUTLINED_FUNCTION_17_2(v216);
  }

  OUTLINED_FUNCTION_13_6(v8, v9, v10, v11);
  if (v20 != v21)
  {
    v217 = OUTLINED_FUNCTION_39(v19);
    v221 = OUTLINED_FUNCTION_85(v217, v218, v219, v220, &qword_1EAE3B058, &qword_1939525B8);
    v15 = OUTLINED_FUNCTION_17_2(v221);
  }

  OUTLINED_FUNCTION_8_5(v15, v16, v17, v18);
  if (v20 != v21)
  {
    OUTLINED_FUNCTION_39(v26);
    OUTLINED_FUNCTION_57();
    v22 = sub_1934B0FCC(v222, v223, v224, v225, v226, v227);
    v25 = v22;
  }

  OUTLINED_FUNCTION_9_7(v22, v23, v24, v25);
  if (!(v20 ^ v21 | v14))
  {
    v228 = OUTLINED_FUNCTION_39(v31);
    v27 = OUTLINED_FUNCTION_84_2(v228, v229, v230, v231, &qword_1EAE3B058, &qword_1939525B8);
    v30 = v27;
  }

  OUTLINED_FUNCTION_3_7(v27, v28, v29, v30);
  if (!(v20 ^ v21 | v14))
  {
    v232 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_85(v232, v233, v234, v235, &qword_1EAE3B058, &qword_1939525B8);
    v35 = v32;
  }

  OUTLINED_FUNCTION_5_11(v32, v33, v34, v35);
  if (!(v20 ^ v21 | v14))
  {
    v236 = OUTLINED_FUNCTION_39(v41);
    v37 = OUTLINED_FUNCTION_84_2(v236, v237, v238, v239, &qword_1EAE3B058, &qword_1939525B8);
    v40 = v37;
  }

  OUTLINED_FUNCTION_7_3(v37, v38, v39, v40);
  if (!(v20 ^ v21 | v14))
  {
    v240 = OUTLINED_FUNCTION_39(v46);
    v42 = OUTLINED_FUNCTION_85(v240, v241, v242, v243, &qword_1EAE3B058, &qword_1939525B8);
    v45 = v42;
  }

  OUTLINED_FUNCTION_4_8(v42, v43, v44, v45);
  if (!(v20 ^ v21 | v14))
  {
    v244 = OUTLINED_FUNCTION_39(v51);
    v47 = OUTLINED_FUNCTION_84_2(v244, v245, v246, v247, &qword_1EAE3B058, &qword_1939525B8);
    v50 = v47;
  }

  OUTLINED_FUNCTION_6_14(v47, v48, v49, v50);
  if (!(v20 ^ v21 | v14))
  {
    v248 = OUTLINED_FUNCTION_39(v56);
    v52 = OUTLINED_FUNCTION_85(v248, v249, v250, v251, &qword_1EAE3B058, &qword_1939525B8);
    v55 = v52;
  }

  OUTLINED_FUNCTION_11_7(v52, v53, v54, v55);
  if (!(v20 ^ v21 | v14))
  {
    v252 = OUTLINED_FUNCTION_39(v61);
    v57 = OUTLINED_FUNCTION_84_2(v252, v253, v254, v255, &qword_1EAE3B058, &qword_1939525B8);
    v60 = v57;
  }

  OUTLINED_FUNCTION_50(v57, v58, v59, v60);
  OUTLINED_FUNCTION_4(v62, v63);
  OUTLINED_FUNCTION_99_3();
  if (!(v20 ^ v21 | v14))
  {
    v256 = OUTLINED_FUNCTION_39(v68);
    v64 = OUTLINED_FUNCTION_85(v256, v257, v258, v259, &qword_1EAE3B058, &qword_1939525B8);
    v67 = v64;
  }

  OUTLINED_FUNCTION_47_5(v64, v65, v66, v67);
  OUTLINED_FUNCTION_4(v69, v70);
  OUTLINED_FUNCTION_149_1();
  if (!(v20 ^ v21 | v14))
  {
    v260 = OUTLINED_FUNCTION_39(v75);
    v71 = OUTLINED_FUNCTION_84_2(v260, v261, v262, v263, &qword_1EAE3B058, &qword_1939525B8);
    v74 = v71;
  }

  OUTLINED_FUNCTION_50(v71, v72, v73, v74);
  OUTLINED_FUNCTION_4(v76, v77);
  OUTLINED_FUNCTION_148_0();
  if (!(v20 ^ v21 | v14))
  {
    v264 = OUTLINED_FUNCTION_39(v82);
    v78 = OUTLINED_FUNCTION_85(v264, v265, v266, v267, &qword_1EAE3B058, &qword_1939525B8);
    v81 = v78;
  }

  OUTLINED_FUNCTION_47_5(v78, v79, v80, v81);
  OUTLINED_FUNCTION_4(v83, v84);
  OUTLINED_FUNCTION_147_1();
  if (!(v20 ^ v21 | v14))
  {
    v268 = OUTLINED_FUNCTION_39(v89);
    v85 = OUTLINED_FUNCTION_84_2(v268, v269, v270, v271, &qword_1EAE3B058, &qword_1939525B8);
    v88 = v85;
  }

  OUTLINED_FUNCTION_50(v85, v86, v87, v88);
  OUTLINED_FUNCTION_4(v90, v91);
  OUTLINED_FUNCTION_146_1();
  if (!(v20 ^ v21 | v14))
  {
    v272 = OUTLINED_FUNCTION_39(v96);
    v92 = OUTLINED_FUNCTION_85(v272, v273, v274, v275, &qword_1EAE3B058, &qword_1939525B8);
    v95 = v92;
  }

  OUTLINED_FUNCTION_47_5(v92, v93, v94, v95);
  OUTLINED_FUNCTION_4(v97, v98);
  OUTLINED_FUNCTION_145();
  if (!(v20 ^ v21 | v14))
  {
    v276 = OUTLINED_FUNCTION_39(v103);
    v99 = OUTLINED_FUNCTION_84_2(v276, v277, v278, v279, &qword_1EAE3B058, &qword_1939525B8);
    v102 = v99;
  }

  OUTLINED_FUNCTION_50(v99, v100, v101, v102);
  OUTLINED_FUNCTION_4(v104, v105);
  if (v0 + 17 > (v110 >> 1))
  {
    v280 = OUTLINED_FUNCTION_39(v110);
    v106 = OUTLINED_FUNCTION_85(v280, v281, v282, v283, &qword_1EAE3B058, &qword_1939525B8);
    v109 = v106;
  }

  OUTLINED_FUNCTION_47_5(v106, v107, v108, v109);
  OUTLINED_FUNCTION_4(v111, v112);
  if (v0 + 18 > (v117 >> 1))
  {
    v284 = OUTLINED_FUNCTION_39(v117);
    v113 = OUTLINED_FUNCTION_84_2(v284, v285, v286, v287, &qword_1EAE3B058, &qword_1939525B8);
    v116 = v113;
  }

  OUTLINED_FUNCTION_50(v113, v114, v115, v116);
  OUTLINED_FUNCTION_4(v118, v119);
  if (v0 + 19 > (v124 >> 1))
  {
    v288 = OUTLINED_FUNCTION_39(v124);
    v120 = OUTLINED_FUNCTION_85(v288, v289, v290, v291, &qword_1EAE3B058, &qword_1939525B8);
    v123 = v120;
  }

  OUTLINED_FUNCTION_47_5(v120, v121, v122, v123);
  OUTLINED_FUNCTION_4(v125, v126);
  if (v0 + 20 > (v131 >> 1))
  {
    v292 = OUTLINED_FUNCTION_39(v131);
    v127 = OUTLINED_FUNCTION_84_2(v292, v293, v294, v295, &qword_1EAE3B058, &qword_1939525B8);
    v130 = v127;
  }

  OUTLINED_FUNCTION_50(v127, v128, v129, v130);
  OUTLINED_FUNCTION_4(v132, v133);
  if (v0 + 21 > (v138 >> 1))
  {
    v296 = OUTLINED_FUNCTION_39(v138);
    v134 = OUTLINED_FUNCTION_85(v296, v297, v298, v299, &qword_1EAE3B058, &qword_1939525B8);
    v137 = v134;
  }

  OUTLINED_FUNCTION_47_5(v134, v135, v136, v137);
  OUTLINED_FUNCTION_4(v139, v140);
  if (v0 + 22 > (v145 >> 1))
  {
    v300 = OUTLINED_FUNCTION_39(v145);
    v141 = OUTLINED_FUNCTION_84_2(v300, v301, v302, v303, &qword_1EAE3B058, &qword_1939525B8);
    v144 = v141;
  }

  OUTLINED_FUNCTION_50(v141, v142, v143, v144);
  OUTLINED_FUNCTION_4(v146, v147);
  if (v0 + 23 > (v152 >> 1))
  {
    v304 = OUTLINED_FUNCTION_39(v152);
    v148 = OUTLINED_FUNCTION_85(v304, v305, v306, v307, &qword_1EAE3B058, &qword_1939525B8);
    v151 = v148;
  }

  OUTLINED_FUNCTION_47_5(v148, v149, v150, v151);
  OUTLINED_FUNCTION_4(v153, v154);
  if (v0 + 24 > (v159 >> 1))
  {
    v308 = OUTLINED_FUNCTION_39(v159);
    v155 = OUTLINED_FUNCTION_84_2(v308, v309, v310, v311, &qword_1EAE3B058, &qword_1939525B8);
    v158 = v155;
  }

  OUTLINED_FUNCTION_50(v155, v156, v157, v158);
  OUTLINED_FUNCTION_4(v160, v161);
  if (v0 + 25 > (v166 >> 1))
  {
    v312 = OUTLINED_FUNCTION_39(v166);
    v162 = OUTLINED_FUNCTION_85(v312, v313, v314, v315, &qword_1EAE3B058, &qword_1939525B8);
    v165 = v162;
  }

  OUTLINED_FUNCTION_47_5(v162, v163, v164, v165);
  OUTLINED_FUNCTION_4(v167, v168);
  if (v0 + 26 > (v173 >> 1))
  {
    v316 = OUTLINED_FUNCTION_39(v173);
    v169 = OUTLINED_FUNCTION_84_2(v316, v317, v318, v319, &qword_1EAE3B058, &qword_1939525B8);
    v172 = v169;
  }

  OUTLINED_FUNCTION_50(v169, v170, v171, v172);
  OUTLINED_FUNCTION_4(v174, v175);
  if (v0 + 27 > (v180 >> 1))
  {
    v320 = OUTLINED_FUNCTION_39(v180);
    v176 = OUTLINED_FUNCTION_85(v320, v321, v322, v323, &qword_1EAE3B058, &qword_1939525B8);
    v179 = v176;
  }

  OUTLINED_FUNCTION_47_5(v176, v177, v178, v179);
  OUTLINED_FUNCTION_4(v181, v182);
  if (v0 + 28 > (v187 >> 1))
  {
    v324 = OUTLINED_FUNCTION_39(v187);
    v183 = OUTLINED_FUNCTION_84_2(v324, v325, v326, v327, &qword_1EAE3B058, &qword_1939525B8);
    v186 = v183;
  }

  OUTLINED_FUNCTION_50(v183, v184, v185, v186);
  OUTLINED_FUNCTION_4(v188, v189);
  if (v0 + 29 > (v194 >> 1))
  {
    v328 = OUTLINED_FUNCTION_39(v194);
    v190 = OUTLINED_FUNCTION_85(v328, v329, v330, v331, &qword_1EAE3B058, &qword_1939525B8);
    v193 = v190;
  }

  OUTLINED_FUNCTION_47_5(v190, v191, v192, v193);
  OUTLINED_FUNCTION_4(v195, v196);
  if (v0 + 30 > (v201 >> 1))
  {
    v332 = OUTLINED_FUNCTION_39(v201);
    v197 = OUTLINED_FUNCTION_84_2(v332, v333, v334, v335, &qword_1EAE3B058, &qword_1939525B8);
    v200 = v197;
  }

  OUTLINED_FUNCTION_50(v197, v198, v199, v200);
  OUTLINED_FUNCTION_4(v202, v203);
  if (v0 + 31 > (v208 >> 1))
  {
    v336 = OUTLINED_FUNCTION_39(v208);
    v204 = OUTLINED_FUNCTION_85(v336, v337, v338, v339, &qword_1EAE3B058, &qword_1939525B8);
    v207 = v204;
  }

  OUTLINED_FUNCTION_47_5(v204, v205, v206, v207);
  OUTLINED_FUNCTION_42_12(v209);
  return v210;
}

void GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError.ErrorCase.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 2:
      case 0x1ALL:
        OUTLINED_FUNCTION_76_3(27);
        break;
      case 3:
        OUTLINED_FUNCTION_122_1(27);
        break;
      case 4:
        OUTLINED_FUNCTION_49_4();
        break;
      case 5:
      case 7:
      case 8:
      case 0xALL:
      case 0x13:
        OUTLINED_FUNCTION_38();
        break;
      case 9:
        OUTLINED_FUNCTION_128(27);
        break;
      case 0xBLL:
        OUTLINED_FUNCTION_127_0(27);
        break;
      case 0xELL:
        OUTLINED_FUNCTION_123_0(27);
        break;
      case 0xFLL:
        OUTLINED_FUNCTION_116_2();
        break;
      case 0x10:
        OUTLINED_FUNCTION_125_0(27);
        break;
      case 0x14:
      case 0x15:
        OUTLINED_FUNCTION_77_6(27);
        break;
      case 0x17:
        OUTLINED_FUNCTION_74_3(27);
        break;
      case 0x19:
        OUTLINED_FUNCTION_124_1(27);
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError.ErrorCase.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0xD000000000000012 && 0x8000000193A15CB0 == v0;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x6F4E6E6F6D656144 && v0 == 0xEE00646E756F4674;
      if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 0xD00000000000001FLL && 0x8000000193A15C90 == v0;
        if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v8 = v1 == 0xD000000000000019 && 0x8000000193A15C70 == v0;
          if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v10 = v1 == OUTLINED_FUNCTION_49_4() && v0 == v9;
            if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_96_2();
              v12 = v3 && v11 == v0;
              if (v12 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_104_4();
                v13 = v3 && v0 == 0xE800000000000000;
                if (v13 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_43_6();
                  v15 = v3 && v14 == v0;
                  if (v15 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_43_6();
                    v17 = v3 && v16 == v0;
                    if (v17 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v18 = v1 == 0xD000000000000016 && 0x8000000193A15BF0 == v0;
                      if (v18 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_43_6();
                        v20 = v3 && v19 == v0;
                        if (v20 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          OUTLINED_FUNCTION_139_1();
                          v22 = v3 && v21 == v0;
                          if (v22 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v23 = v1 == 0xD000000000000015 && 0x8000000193A15B90 == v0;
                            if (v23 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              OUTLINED_FUNCTION_60();
                              v25 = v3 && v24 == v0;
                              if (v25 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v26 = v1 == 0xD000000000000013 && 0x8000000193A15B50 == v0;
                                if (v26 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v28 = v1 == OUTLINED_FUNCTION_116_2() && v0 == v27;
                                  if (v28 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                  {

                                    v4 = 15;
                                  }

                                  else
                                  {
                                    v29 = v1 == 0xD000000000000020 && 0x8000000193A15B20 == v0;
                                    if (v29 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                    {

                                      v4 = 16;
                                    }

                                    else
                                    {
                                      v30 = v1 == 0xD000000000000022 && 0x8000000193A15AF0 == v0;
                                      if (v30 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                      {

                                        v4 = 17;
                                      }

                                      else
                                      {
                                        v31 = v1 == 0x4E6E6F6973736553 && v0 == 0xEF646E756F46746FLL;
                                        if (v31 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                        {

                                          v4 = 18;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_43_6();
                                          v33 = v3 && v32 == v0;
                                          if (v33 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                                          {

                                            v4 = 19;
                                          }

                                          else
                                          {
                                            v34 = v1 == 0xD00000000000001ELL && 0x8000000193A15AB0 == v0;
                                            if (v34 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                            {

                                              v4 = 20;
                                            }

                                            else
                                            {
                                              v35 = v1 == 0xD00000000000001ELL && 0x8000000193A15A90 == v0;
                                              if (v35 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                              {

                                                v4 = 21;
                                              }

                                              else
                                              {
                                                v36 = v1 == 0xD000000000000011 && 0x8000000193A15A70 == v0;
                                                if (v36 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                {

                                                  v4 = 22;
                                                }

                                                else
                                                {
                                                  v37 = v1 == 0xD000000000000017 && 0x8000000193A15A50 == v0;
                                                  if (v37 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                  {

                                                    v4 = 23;
                                                  }

                                                  else
                                                  {
                                                    v38 = v1 == 0x4E74736575716552 && v0 == 0xEF646E756F46746FLL;
                                                    if (v38 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                    {

                                                      v4 = 24;
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_141_2();
                                                      v40 = v3 && v39 == v0;
                                                      if (v40 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                      {

                                                        v4 = 25;
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_79_0();
                                                        v42 = v3 && v41 == v0;
                                                        if (v42 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                        {

                                                          v4 = 26;
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_60();
                                                          v44 = v3 && v43 == v0;
                                                          if (v44 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                          {

                                                            v4 = 27;
                                                          }

                                                          else
                                                          {
                                                            v45 = v1 == 0xD000000000000011 && 0x8000000193A159D0 == v0;
                                                            if (v45 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                            {

                                                              v4 = 28;
                                                            }

                                                            else if (v1 == 0x6F4E7963696C6F50 && v0 == 0xEE00646E756F4674)
                                                            {

                                                              v4 = 29;
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_0_9();
                                                              OUTLINED_FUNCTION_89();
                                                              v4 = 29;
                                                              if ((v1 & 1) == 0)
                                                              {
                                                                v4 = 0;
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

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t GenerativeFunctionsInstrumentationError.ModelManagerInferenceError.ErrorCase.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static GenerativeFunctionsInstrumentationError.ModelManagerInferenceError.ErrorCase.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_16_0(v6);
  if (!(!v13 & v12))
  {
    v106 = OUTLINED_FUNCTION_39(v11);
    v110 = OUTLINED_FUNCTION_84_2(v106, v107, v108, v109, &qword_1EAE3B050, &qword_1939525B0);
    v7 = OUTLINED_FUNCTION_17_2(v110);
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v111 = OUTLINED_FUNCTION_39(v18);
    v115 = OUTLINED_FUNCTION_85(v111, v112, v113, v114, &qword_1EAE3B050, &qword_1939525B0);
    v14 = OUTLINED_FUNCTION_17_2(v115);
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v116, v117, v118, v119, v120, v121);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v122 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v122, v123, v124, v125, &qword_1EAE3B050, &qword_1939525B0);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v126 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v126, v127, v128, v129, &qword_1EAE3B050, &qword_1939525B0);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v130 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v130, v131, v132, v133, &qword_1EAE3B050, &qword_1939525B0);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v134 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v134, v135, v136, v137, &qword_1EAE3B050, &qword_1939525B0);
    v44 = v41;
  }

  OUTLINED_FUNCTION_4_8(v41, v42, v43, v44);
  if (!(v19 ^ v20 | v13))
  {
    v138 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v138, v139, v140, v141, &qword_1EAE3B050, &qword_1939525B0);
    v49 = v46;
  }

  OUTLINED_FUNCTION_6_14(v46, v47, v48, v49);
  if (!(v19 ^ v20 | v13))
  {
    v142 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_85(v142, v143, v144, v145, &qword_1EAE3B050, &qword_1939525B0);
    v54 = v51;
  }

  OUTLINED_FUNCTION_11_7(v51, v52, v53, v54);
  if (!(v19 ^ v20 | v13))
  {
    v146 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_84_2(v146, v147, v148, v149, &qword_1EAE3B050, &qword_1939525B0);
    v59 = v56;
  }

  OUTLINED_FUNCTION_50(v56, v57, v58, v59);
  OUTLINED_FUNCTION_4(v61, v62);
  OUTLINED_FUNCTION_99_3();
  if (!(v19 ^ v20 | v13))
  {
    v150 = OUTLINED_FUNCTION_39(v67);
    v63 = OUTLINED_FUNCTION_85(v150, v151, v152, v153, &qword_1EAE3B050, &qword_1939525B0);
    v66 = v63;
  }

  OUTLINED_FUNCTION_47_5(v63, v64, v65, v66);
  OUTLINED_FUNCTION_4(v68, v69);
  OUTLINED_FUNCTION_149_1();
  if (!(v19 ^ v20 | v13))
  {
    v154 = OUTLINED_FUNCTION_39(v74);
    v70 = OUTLINED_FUNCTION_84_2(v154, v155, v156, v157, &qword_1EAE3B050, &qword_1939525B0);
    v73 = v70;
  }

  OUTLINED_FUNCTION_50(v70, v71, v72, v73);
  OUTLINED_FUNCTION_4(v75, v76);
  OUTLINED_FUNCTION_148_0();
  if (!(v19 ^ v20 | v13))
  {
    v158 = OUTLINED_FUNCTION_39(v81);
    v77 = OUTLINED_FUNCTION_85(v158, v159, v160, v161, &qword_1EAE3B050, &qword_1939525B0);
    v80 = v77;
  }

  OUTLINED_FUNCTION_47_5(v77, v78, v79, v80);
  OUTLINED_FUNCTION_4(v82, v83);
  OUTLINED_FUNCTION_147_1();
  if (!(v19 ^ v20 | v13))
  {
    v162 = OUTLINED_FUNCTION_39(v88);
    v84 = OUTLINED_FUNCTION_84_2(v162, v163, v164, v165, &qword_1EAE3B050, &qword_1939525B0);
    v87 = v84;
  }

  OUTLINED_FUNCTION_50(v84, v85, v86, v87);
  OUTLINED_FUNCTION_4(v89, v90);
  OUTLINED_FUNCTION_146_1();
  if (!(v19 ^ v20 | v13))
  {
    v166 = OUTLINED_FUNCTION_39(v95);
    v91 = OUTLINED_FUNCTION_85(v166, v167, v168, v169, &qword_1EAE3B050, &qword_1939525B0);
    v94 = v91;
  }

  OUTLINED_FUNCTION_47_5(v91, v92, v93, v94);
  OUTLINED_FUNCTION_4(v96, v97);
  OUTLINED_FUNCTION_145();
  if (!(v19 ^ v20 | v13))
  {
    v170 = OUTLINED_FUNCTION_39(v102);
    v98 = OUTLINED_FUNCTION_84_2(v170, v171, v172, v173, &qword_1EAE3B050, &qword_1939525B0);
    v101 = v98;
  }

  OUTLINED_FUNCTION_50(v98, v99, v100, v101);
  return OUTLINED_FUNCTION_38_1(v103, v104);
}

void GenerativeFunctionsInstrumentationError.ModelManagerInferenceError.ErrorCase.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_128(22);
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_38();
        break;
      case 4:
        OUTLINED_FUNCTION_58_4();
        break;
      case 7:
        OUTLINED_FUNCTION_112_3();
        break;
      case 9:
        OUTLINED_FUNCTION_119_2();
        break;
      case 0xALL:
        OUTLINED_FUNCTION_125_0(22);
        break;
      case 0xBLL:
        OUTLINED_FUNCTION_74_3(22);
        break;
      case 0xCLL:
        OUTLINED_FUNCTION_49_4();
        break;
      case 0xDLL:
        OUTLINED_FUNCTION_27_3();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void GenerativeFunctionsInstrumentationError.ModelManagerInferenceError.ErrorCase.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x656C706D49746F4ELL && v0 == 0xEE006465746E656DLL;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_52_5();
      v7 = v1 == 17 && v6 == v0;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_26_4();
        v9 = v3 && v8 == v0;
        if (v9 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_26_4();
          v11 = v3 && v10 == v0;
          if (v11 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v13 = v1 == OUTLINED_FUNCTION_58_4() && v0 == v12;
            if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v14 = v1 == 0x6564616F4C746F4ELL && v0 == 0xE900000000000064;
              if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_106_4();
                v16 = v3 && v0 == v15;
                if (v16 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v18 = v1 == OUTLINED_FUNCTION_112_3() && v0 == v17;
                  if (v18 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v19 = v1 == 19 && 0x8000000193A15CD0 == v0;
                    if (v19 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v21 = v1 == OUTLINED_FUNCTION_119_2() && v0 == v20;
                      if (v21 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_54_3();
                        v23 = v3 && v22 == v0;
                        if (v23 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          OUTLINED_FUNCTION_137();
                          v25 = v3 && v24 == v0;
                          if (v25 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v27 = v1 == OUTLINED_FUNCTION_49_4() && v0 == v26;
                            if (v27 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v29 = v1 == OUTLINED_FUNCTION_27_3() && v0 == v28;
                              if (v29 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                OUTLINED_FUNCTION_104_4();
                                if (v3 && v0 == 0xE800000000000000)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_29_2();
                                  OUTLINED_FUNCTION_89();
                                  v4 = 14;
                                  if ((v1 & 1) == 0)
                                  {
                                    v4 = 0;
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
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t GenerativeFunctionsInstrumentationError.GenerativeFunctionError.hash(into:)()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    v3 = v1 & 0x3FFFFFFFFFFFFFFFLL;
    if (v2 == 1)
    {
      OUTLINED_FUNCTION_4_6(v3);
      sub_1934B1A6C();
    }

    else
    {
      OUTLINED_FUNCTION_4_6(v3);
      sub_1934B1A18();
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_6(v1);
    sub_1934B1AC0();
  }

  return sub_19393C540();
}

uint64_t sub_1934AFAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t sub_1934AFB68()
{
  OUTLINED_FUNCTION_91_0();
  v2 = OUTLINED_FUNCTION_95_0();
  v6 = OUTLINED_FUNCTION_88_0(v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_63_2(v6);
  if (!(!v13 & v12))
  {
    v44 = OUTLINED_FUNCTION_33_5((v11 > 1), v8, v9, v10);
    v7 = OUTLINED_FUNCTION_17_2(v44);
  }

  OUTLINED_FUNCTION_53_3(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v45 = OUTLINED_FUNCTION_39_2((v18 > 1), v15, v16, v17);
    v14 = OUTLINED_FUNCTION_17_2(v45);
  }

  OUTLINED_FUNCTION_46_2(v14, v15, v16, v17);
  if (v19 != v20)
  {
    v21 = OUTLINED_FUNCTION_51((v25 > 1), v0, v23, v24);
    v24 = v21;
  }

  OUTLINED_FUNCTION_45_0(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v26 = OUTLINED_FUNCTION_33_5((v30 > 1), v27, v28, v29);
    v29 = v26;
  }

  OUTLINED_FUNCTION_32(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v31 = OUTLINED_FUNCTION_39_2((v35 > 1), v32, v33, v34);
    v34 = v31;
  }

  OUTLINED_FUNCTION_62_8(v31, v32, v33, v34);
  v40 = *(v39 + 24);
  if (v1 + 6 > (v40 >> 1))
  {
    v36 = OUTLINED_FUNCTION_33_5((v40 > 1), v37, v38, v39);
    v39 = v36;
  }

  OUTLINED_FUNCTION_160_1(v36, v37, v38, v39);
  return OUTLINED_FUNCTION_38_1(v41, v42);
}

unint64_t GenerativeFunctionsInstrumentationError.GenerativeFunctionError.ModelError.ErrorCase.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x74756F656D6954;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = OUTLINED_FUNCTION_27_3();
      break;
    case 3:
      result = OUTLINED_FUNCTION_81_2();
      break;
    case 4:
      result = OUTLINED_FUNCTION_48_5();
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

void GenerativeFunctionsInstrumentationError.GenerativeFunctionError.ModelError.ErrorCase.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0xD000000000000014 && 0x8000000193A15D50 == v0;
    if (v5 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_97_2();
      v6 = v3 && v0 == 0xE700000000000000;
      if (v6 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v8 = v1 == OUTLINED_FUNCTION_27_3() && v0 == v7;
        if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_93_2(0x6C65636E6143);
          v9 = v3 && v0 == 0xE800000000000000;
          if (v9 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else if (v1 == OUTLINED_FUNCTION_48_5() && v0 == v10)
          {

            OUTLINED_FUNCTION_69_2();
          }

          else
          {
            OUTLINED_FUNCTION_0_9();
            OUTLINED_FUNCTION_89();
            v4 = 4;
            if ((v1 & 1) == 0)
            {
              v4 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

void GenerativeFunctionsInstrumentationError.GenerativeFunctionError.SanitizerError.ErrorCase.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t GenerativeFunctionsInstrumentationError.GenerativeFunctionError.SanitizerError.ErrorCase.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

void GenerativeFunctionsInstrumentationError.GenerativeFunctionError.SanitizerError.ErrorCase.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_52_5();
    v6 = v1 == 26 && v5 == v0;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_26_4();
      if (v3 && v7 == v0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_25_7();
        OUTLINED_FUNCTION_89();
        v4 = v1 & 1;
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v4);
}

void GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError.ErrorCase.init(rawValue:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError.ErrorCase.rawValue.getter()
{
  if (v0[8])
  {
    return 1;
  }

  else
  {
    return *v0;
  }
}

uint64_t static GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError.ErrorCase.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v9 = v6;
  v11 = *(v6 + 16);
  v10 = *(v6 + 24);
  v12 = v10 >> 1;
  if (v10 >> 1 <= v11)
  {
    v17 = OUTLINED_FUNCTION_39(v10);
    v21 = OUTLINED_FUNCTION_84_2(v17, v18, v19, v20, &qword_1EAE3B038, &qword_193952598);
    v6 = OUTLINED_FUNCTION_17_2(v21);
  }

  *(v9 + 16) = v11 + 1;
  v13 = v9 + 16 * v11;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  if (v12 < (v11 + 2))
  {
    v22 = OUTLINED_FUNCTION_39(v10);
    v6 = OUTLINED_FUNCTION_85(v22, v23, v24, v25, &qword_1EAE3B038, &qword_193952598);
    v9 = v6;
  }

  OUTLINED_FUNCTION_47_5(v6, v7, v8, v9);
  *(v14 + 32) = 0;
  *(v14 + 40) = 1;
  return v15;
}

uint64_t GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError.ErrorCase.description.getter()
{
  if (*(v0 + 8))
  {
    result = 0x4465736143657355;
  }

  else
  {
    result = 0x6E776F6E6B6E55;
  }

  *(v0 + 8);
  return result;
}

uint64_t GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError.ErrorCase.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    LOBYTE(v2) = 0;
  }

  else if (v2 == 0x4465736143657355 && v1 == 0xEF64656C62617369)
  {

    LOBYTE(v2) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_9();
    result = OUTLINED_FUNCTION_89();
  }

  *v0 = 0;
  *(v0 + 8) = v2 & 1;
  *(v0 + 9) = 0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationError.TokenGenerationError.ErrorCase.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static GenerativeFunctionsInstrumentationError.TokenGenerationError.ErrorCase.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_16_0(v6);
  if (!(!v13 & v12))
  {
    v59 = OUTLINED_FUNCTION_39(v11);
    v63 = OUTLINED_FUNCTION_84_2(v59, v60, v61, v62, &qword_1EAE3B030, &qword_193952590);
    v7 = OUTLINED_FUNCTION_17_2(v63);
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v64 = OUTLINED_FUNCTION_39(v18);
    v68 = OUTLINED_FUNCTION_85(v64, v65, v66, v67, &qword_1EAE3B030, &qword_193952590);
    v14 = OUTLINED_FUNCTION_17_2(v68);
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v69, v70, v71, v72, v73, v74);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v75 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v75, v76, v77, v78, &qword_1EAE3B030, &qword_193952590);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v79 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v79, v80, v81, v82, &qword_1EAE3B030, &qword_193952590);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v83 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v83, v84, v85, v86, &qword_1EAE3B030, &qword_193952590);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v87 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v87, v88, v89, v90, &qword_1EAE3B030, &qword_193952590);
    v44 = v41;
  }

  OUTLINED_FUNCTION_4_8(v41, v42, v43, v44);
  if (!(v19 ^ v20 | v13))
  {
    v91 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v91, v92, v93, v94, &qword_1EAE3B030, &qword_193952590);
    v49 = v46;
  }

  OUTLINED_FUNCTION_6_14(v46, v47, v48, v49);
  if (!(v19 ^ v20 | v13))
  {
    v95 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_85(v95, v96, v97, v98, &qword_1EAE3B030, &qword_193952590);
    v54 = v51;
  }

  OUTLINED_FUNCTION_47_5(v51, v52, v53, v54);
  OUTLINED_FUNCTION_42_12(v56);
  return v57;
}

void GenerativeFunctionsInstrumentationError.TokenGenerationError.ErrorCase.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_27_3();
        break;
      case 2:
        OUTLINED_FUNCTION_48_5();
        break;
      case 3:
        OUTLINED_FUNCTION_81_2();
        break;
      case 4:
        OUTLINED_FUNCTION_126_0(19);
        break;
      case 5:
        OUTLINED_FUNCTION_77_6(19);
        break;
      case 6:
        OUTLINED_FUNCTION_38();
        break;
      case 7:
        OUTLINED_FUNCTION_110_2();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void GenerativeFunctionsInstrumentationError.TokenGenerationError.ErrorCase.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_97_2();
    v5 = v3 && v0 == 0xE700000000000000;
    if (v5 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_27_3() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v9 = v1 == OUTLINED_FUNCTION_48_5() && v0 == v8;
        if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_93_2(0x6C65636E6143);
          v10 = v3 && v0 == 0xE800000000000000;
          if (v10 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_52_5();
            v12 = v1 == 25 && v11 == v0;
            if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_78_5();
              v14 = v3 && v13 == v0;
              if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_26_4();
                v16 = v3 && v15 == v0;
                if (v16 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else if (v1 == OUTLINED_FUNCTION_110_2() && v0 == v17)
                {

                  OUTLINED_FUNCTION_91_3();
                }

                else
                {
                  OUTLINED_FUNCTION_0_9();
                  OUTLINED_FUNCTION_89();
                  v4 = 7;
                  if ((v1 & 1) == 0)
                  {
                    v4 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t GenerativeFunctionsInstrumentationError.SummarizationError.hash(into:)()
{
  v1 = *v0;
  switch(*v0 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_51_3(v1 & 0x1FFFFFFFFFFFFFFFLL);
      sub_1934B1D0C();
      break;
    case 2uLL:
      OUTLINED_FUNCTION_4_6(v1 & 0x1FFFFFFFFFFFFFFFLL);
      sub_1934B1CB8();
      break;
    case 3uLL:
      sub_1934B1C64();
      break;
    case 4uLL:
      sub_1934B1C10();
      break;
    case 5uLL:
      sub_1934B1BBC();
      break;
    case 6uLL:
      sub_1934B1B68();
      break;
    case 7uLL:
      OUTLINED_FUNCTION_72_3(v1);
      sub_1934B1B14();
      break;
    default:
      sub_1934B1D60();
      break;
  }

  return sub_19393C540();
}

uint64_t sub_1934B0750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

char *sub_1934B07C8()
{
  OUTLINED_FUNCTION_91_0();
  v2 = OUTLINED_FUNCTION_95_0();
  v6 = OUTLINED_FUNCTION_88_0(v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_63_2(v6);
  if (!(!v13 & v12))
  {
    v48 = OUTLINED_FUNCTION_33_5((v11 > 1), v8, v9, v10);
    v7 = OUTLINED_FUNCTION_17_2(v48);
  }

  OUTLINED_FUNCTION_53_3(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v49 = OUTLINED_FUNCTION_39_2((v18 > 1), v15, v16, v17);
    v14 = OUTLINED_FUNCTION_17_2(v49);
  }

  OUTLINED_FUNCTION_46_2(v14, v15, v16, v17);
  if (v19 != v20)
  {
    v21 = OUTLINED_FUNCTION_51((v25 > 1), v0, v23, v24);
    v24 = v21;
  }

  OUTLINED_FUNCTION_45_0(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v26 = OUTLINED_FUNCTION_33_5((v30 > 1), v27, v28, v29);
    v29 = v26;
  }

  OUTLINED_FUNCTION_32(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v31 = OUTLINED_FUNCTION_39_2((v35 > 1), v32, v33, v34);
    v34 = v31;
  }

  OUTLINED_FUNCTION_62_8(v31, v32, v33, v34);
  v40 = *(v39 + 24);
  if (v1 + 6 > (v40 >> 1))
  {
    v36 = OUTLINED_FUNCTION_33_5((v40 > 1), v37, v38, v39);
    v39 = v36;
  }

  OUTLINED_FUNCTION_160_1(v36, v37, v38, v39);
  *(v44 + 32) = 4;
  *(v44 + 40) = v0;
  v45 = *(v43 + 3);
  if (v1 + 7 > (v45 >> 1))
  {
    v43 = OUTLINED_FUNCTION_39_2((v45 > 1), v41, v42, v43);
  }

  *(v43 + 2) = v1 + 7;
  v46 = &v43[16 * v1 + 96];
  *(v46 + 4) = 5;
  v46[40] = v0;
  return v43;
}

uint64_t GenerativeFunctionsInstrumentationError.SummarizationError.MissingRequiredData.Property.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 2036625218;
  switch(*v0)
  {
    case 1:
      result = 0x73746E656D656C45;
      break;
    case 2:
      result = 0x6E65697069636552;
      break;
    case 3:
      result = 0x7265646E6553;
      break;
    case 4:
      result = 0x7463656A627553;
      break;
    case 5:
      result = 0x656C746954;
      break;
    default:
      return result;
  }

  return result;
}

void GenerativeFunctionsInstrumentationError.SummarizationError.MissingRequiredData.Property.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 2036625218 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x73746E656D656C45 && v0 == 0xE800000000000000;
      if (v6 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 0x6E65697069636552 && v0 == 0xEA00000000007374;
        if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v8 = v1 == 0x7265646E6553 && v0 == 0xE600000000000000;
          if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v9 = v1 == 0x7463656A627553 && v0 == 0xE700000000000000;
            if (v9 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else if (v1 == 0x656C746954 && v0 == 0xE500000000000000)
            {

              OUTLINED_FUNCTION_83();
            }

            else
            {
              OUTLINED_FUNCTION_0_9();
              OUTLINED_FUNCTION_89();
              v4 = 5;
              if ((v1 & 1) == 0)
              {
                v4 = 0;
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t GenerativeFunctionsInstrumentationError.ClassificationError.hash(into:)()
{
  v1 = *v0;
  switch(*v0 >> 62)
  {
    case 1uLL:
      sub_1934B1E5C();
      break;
    case 2uLL:
      v3 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1934B1E08();
      break;
    case 3uLL:
      OUTLINED_FUNCTION_51_3(v1 & 0x3FFFFFFFFFFFFFFFLL);
      sub_1934B1DB4();
      break;
    default:
      sub_1934B1EB0();
      break;
  }

  return sub_19393C540();
}

uint64_t sub_1934B0C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    for (i = (a2 + 32); ; i = (i + 56))
    {
      v5 = *(v3 + 16);
      v20[0] = *v3;
      v20[1] = v5;
      v21 = *(v3 + 32);
      v22 = *(v3 + 48);
      v16 = v20[0];
      v17 = v5;
      v18 = v21;
      v19 = v22;
      v6 = *i;
      v7 = i[1];
      v8 = i[2];
      v24 = *(i + 6);
      v23[1] = v7;
      v23[2] = v8;
      v23[0] = v6;
      v12 = v6;
      v13 = v7;
      v14 = v8;
      v15 = v24;
      sub_1934A82B0(v20, v11);
      sub_1934A82B0(v23, v11);
      sub_1934B289C();
      v9 = sub_19393C550();
      v25[0] = v12;
      v25[1] = v13;
      v25[2] = v14;
      v26 = v15;
      sub_1934B2848(v25);
      v27[0] = v16;
      v27[1] = v17;
      v27[2] = v18;
      v28 = v19;
      sub_1934B2848(v27);
      if ((v9 & 1) == 0)
      {
        break;
      }

      v3 += 56;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1934B0D8C()
{
  result = qword_1EAE3ADD8;
  if (!qword_1EAE3ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ADD8);
  }

  return result;
}

unint64_t sub_1934B0DE0()
{
  result = qword_1EAE3ADE0;
  if (!qword_1EAE3ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ADE0);
  }

  return result;
}

unint64_t sub_1934B0E34()
{
  result = qword_1EAE3A718;
  if (!qword_1EAE3A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A718);
  }

  return result;
}

unint64_t sub_1934B0E88()
{
  result = qword_1EAE3ADF0;
  if (!qword_1EAE3ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ADF0);
  }

  return result;
}

uint64_t sub_1934B0EDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1934B0F24()
{
  result = qword_1EAE3AE00;
  if (!qword_1EAE3AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE00);
  }

  return result;
}

unint64_t sub_1934B0F78()
{
  result = qword_1EAE3AE08;
  if (!qword_1EAE3AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE08);
  }

  return result;
}

char *sub_1934B0FCC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 3) = 2 * ((v13 - 32) / 16);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || &v15[v16] <= v14)
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

uint64_t sub_1934B10C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v6 = *(v5 + 16);
      v7[0] = *v5;
      v7[1] = v6;
      v8 = *(v5 + 32);
      v9 = *(v5 + 48);
      v12 = v7[0];
      v13 = v6;
      v14 = v8;
      v15 = v9;
      sub_1934A82B0(v7, v10);
      sub_1934B27F4();
      sub_19393C540();
      v10[0] = v12;
      v10[1] = v13;
      v10[2] = v14;
      v11 = v15;
      result = sub_1934B2848(v10);
      v5 += 56;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1934B1190()
{
  result = qword_1EAE3AE10;
  if (!qword_1EAE3AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE10);
  }

  return result;
}

unint64_t sub_1934B11E4()
{
  result = qword_1EAE3AE18;
  if (!qword_1EAE3AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE18);
  }

  return result;
}

unint64_t sub_1934B1238()
{
  result = qword_1EAE3AE20;
  if (!qword_1EAE3AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE20);
  }

  return result;
}

unint64_t sub_1934B128C()
{
  result = qword_1EAE3AE28;
  if (!qword_1EAE3AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE28);
  }

  return result;
}

unint64_t sub_1934B12E0()
{
  result = qword_1EAE3AE30;
  if (!qword_1EAE3AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE30);
  }

  return result;
}

unint64_t sub_1934B1334()
{
  result = qword_1EAE3AE38;
  if (!qword_1EAE3AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE38);
  }

  return result;
}

unint64_t sub_1934B1388()
{
  result = qword_1EAE3AE40;
  if (!qword_1EAE3AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE40);
  }

  return result;
}

unint64_t sub_1934B13DC()
{
  result = qword_1EAE3AE48;
  if (!qword_1EAE3AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE48);
  }

  return result;
}

unint64_t sub_1934B1430()
{
  result = qword_1EAE3AE50;
  if (!qword_1EAE3AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE50);
  }

  return result;
}

unint64_t sub_1934B1484()
{
  result = qword_1EAE3AE58;
  if (!qword_1EAE3AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE58);
  }

  return result;
}

unint64_t sub_1934B14D8()
{
  result = qword_1EAE3AE60;
  if (!qword_1EAE3AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE60);
  }

  return result;
}

unint64_t sub_1934B152C()
{
  result = qword_1EAE3AE68;
  if (!qword_1EAE3AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE68);
  }

  return result;
}

unint64_t sub_1934B1580()
{
  result = qword_1EAE3AE70;
  if (!qword_1EAE3AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE70);
  }

  return result;
}

unint64_t sub_1934B15D4()
{
  result = qword_1EAE3AE78;
  if (!qword_1EAE3AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE78);
  }

  return result;
}

unint64_t sub_1934B1628()
{
  result = qword_1EAE3AE80;
  if (!qword_1EAE3AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE80);
  }

  return result;
}

unint64_t sub_1934B167C()
{
  result = qword_1EAE3AE88;
  if (!qword_1EAE3AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE88);
  }

  return result;
}

unint64_t sub_1934B16D0()
{
  result = qword_1EAE3AE90;
  if (!qword_1EAE3AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE90);
  }

  return result;
}

unint64_t sub_1934B1724()
{
  result = qword_1EAE3AE98;
  if (!qword_1EAE3AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AE98);
  }

  return result;
}

unint64_t sub_1934B1778()
{
  result = qword_1EAE3AEA0;
  if (!qword_1EAE3AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEA0);
  }

  return result;
}

unint64_t sub_1934B17CC()
{
  result = qword_1EAE3AEA8;
  if (!qword_1EAE3AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEA8);
  }

  return result;
}

unint64_t sub_1934B1820()
{
  result = qword_1EAE3AEB0;
  if (!qword_1EAE3AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEB0);
  }

  return result;
}

unint64_t sub_1934B1874()
{
  result = qword_1EAE3AEB8;
  if (!qword_1EAE3AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEB8);
  }

  return result;
}

unint64_t sub_1934B18C8()
{
  result = qword_1EAE3AEC0;
  if (!qword_1EAE3AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEC0);
  }

  return result;
}

unint64_t sub_1934B191C()
{
  result = qword_1EAE3AEC8;
  if (!qword_1EAE3AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEC8);
  }

  return result;
}

unint64_t sub_1934B1970()
{
  result = qword_1EAE3AED0;
  if (!qword_1EAE3AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AED0);
  }

  return result;
}

unint64_t sub_1934B19C4()
{
  result = qword_1EAE3AED8;
  if (!qword_1EAE3AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AED8);
  }

  return result;
}

unint64_t sub_1934B1A18()
{
  result = qword_1EAE3AEE0;
  if (!qword_1EAE3AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEE0);
  }

  return result;
}

unint64_t sub_1934B1A6C()
{
  result = qword_1EAE3AEE8;
  if (!qword_1EAE3AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEE8);
  }

  return result;
}

unint64_t sub_1934B1AC0()
{
  result = qword_1EAE3AEF0;
  if (!qword_1EAE3AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEF0);
  }

  return result;
}

unint64_t sub_1934B1B14()
{
  result = qword_1EAE3AEF8;
  if (!qword_1EAE3AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AEF8);
  }

  return result;
}

unint64_t sub_1934B1B68()
{
  result = qword_1EAE3AF00;
  if (!qword_1EAE3AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF00);
  }

  return result;
}

unint64_t sub_1934B1BBC()
{
  result = qword_1EAE3AF08;
  if (!qword_1EAE3AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF08);
  }

  return result;
}

unint64_t sub_1934B1C10()
{
  result = qword_1EAE3AF10;
  if (!qword_1EAE3AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF10);
  }

  return result;
}

unint64_t sub_1934B1C64()
{
  result = qword_1EAE3AF18;
  if (!qword_1EAE3AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF18);
  }

  return result;
}

unint64_t sub_1934B1CB8()
{
  result = qword_1EAE3AF20;
  if (!qword_1EAE3AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF20);
  }

  return result;
}

unint64_t sub_1934B1D0C()
{
  result = qword_1EAE3AF28;
  if (!qword_1EAE3AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF28);
  }

  return result;
}

unint64_t sub_1934B1D60()
{
  result = qword_1EAE3AF30;
  if (!qword_1EAE3AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF30);
  }

  return result;
}

unint64_t sub_1934B1DB4()
{
  result = qword_1EAE3AF38;
  if (!qword_1EAE3AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF38);
  }

  return result;
}

unint64_t sub_1934B1E08()
{
  result = qword_1EAE3AF40;
  if (!qword_1EAE3AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF40);
  }

  return result;
}

unint64_t sub_1934B1E5C()
{
  result = qword_1EAE3AF48;
  if (!qword_1EAE3AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF48);
  }

  return result;
}

unint64_t sub_1934B1EB0()
{
  result = qword_1EAE3AF50;
  if (!qword_1EAE3AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF50);
  }

  return result;
}

unint64_t sub_1934B1F08()
{
  result = qword_1EAE3AF58;
  if (!qword_1EAE3AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF58);
  }

  return result;
}

unint64_t sub_1934B1F60()
{
  result = qword_1EAE3AF60;
  if (!qword_1EAE3AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF60);
  }

  return result;
}

unint64_t sub_1934B1FB8()
{
  result = qword_1EAE3AF68;
  if (!qword_1EAE3AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF68);
  }

  return result;
}

unint64_t sub_1934B2010()
{
  result = qword_1EAE3AF70;
  if (!qword_1EAE3AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF70);
  }

  return result;
}

unint64_t sub_1934B2068()
{
  result = qword_1EAE3AF78;
  if (!qword_1EAE3AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF78);
  }

  return result;
}

unint64_t sub_1934B20C0()
{
  result = qword_1EAE3AF80;
  if (!qword_1EAE3AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF80);
  }

  return result;
}

unint64_t sub_1934B2118()
{
  result = qword_1EAE3AF88;
  if (!qword_1EAE3AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF88);
  }

  return result;
}

unint64_t sub_1934B2170()
{
  result = qword_1EAE3AF90;
  if (!qword_1EAE3AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF90);
  }

  return result;
}

unint64_t sub_1934B21C8()
{
  result = qword_1EAE3AF98;
  if (!qword_1EAE3AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AF98);
  }

  return result;
}

unint64_t sub_1934B2220()
{
  result = qword_1EAE3AFA0;
  if (!qword_1EAE3AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFA0);
  }

  return result;
}

unint64_t sub_1934B2278()
{
  result = qword_1EAE3AFA8;
  if (!qword_1EAE3AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFA8);
  }

  return result;
}

unint64_t sub_1934B22D0()
{
  result = qword_1EAE3AFB0;
  if (!qword_1EAE3AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFB0);
  }

  return result;
}

unint64_t sub_1934B2328()
{
  result = qword_1EAE3AFB8;
  if (!qword_1EAE3AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFB8);
  }

  return result;
}

unint64_t sub_1934B2380()
{
  result = qword_1EAE3AFC0;
  if (!qword_1EAE3AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFC0);
  }

  return result;
}

unint64_t sub_1934B23D8()
{
  result = qword_1EAE3AFC8;
  if (!qword_1EAE3AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFC8);
  }

  return result;
}

unint64_t sub_1934B2430()
{
  result = qword_1EAE3AFD0;
  if (!qword_1EAE3AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFD0);
  }

  return result;
}

unint64_t sub_1934B2488()
{
  result = qword_1EAE3AFD8;
  if (!qword_1EAE3AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFD8);
  }

  return result;
}

unint64_t sub_1934B24E0()
{
  result = qword_1EAE3AFE0;
  if (!qword_1EAE3AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFE0);
  }

  return result;
}

unint64_t sub_1934B2538()
{
  result = qword_1EAE3AFE8;
  if (!qword_1EAE3AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFE8);
  }

  return result;
}

unint64_t sub_1934B2590()
{
  result = qword_1EAE3AFF0;
  if (!qword_1EAE3AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFF0);
  }

  return result;
}

unint64_t sub_1934B25E8()
{
  result = qword_1EAE3AFF8;
  if (!qword_1EAE3AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AFF8);
  }

  return result;
}

unint64_t sub_1934B2640()
{
  result = qword_1EAE3B000;
  if (!qword_1EAE3B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B000);
  }

  return result;
}

unint64_t sub_1934B2698()
{
  result = qword_1EAE3B008;
  if (!qword_1EAE3B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B008);
  }

  return result;
}

unint64_t sub_1934B26F0()
{
  result = qword_1EAE3B010;
  if (!qword_1EAE3B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B010);
  }

  return result;
}

unint64_t sub_1934B2748()
{
  result = qword_1EAE3B018;
  if (!qword_1EAE3B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B018);
  }

  return result;
}

unint64_t sub_1934B27A0()
{
  result = qword_1EAE3B020;
  if (!qword_1EAE3B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B020);
  }

  return result;
}

unint64_t sub_1934B27F4()
{
  result = qword_1EAE3B0F8;
  if (!qword_1EAE3B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B0F8);
  }

  return result;
}

unint64_t sub_1934B289C()
{
  result = qword_1EAE3B100;
  if (!qword_1EAE3B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B100);
  }

  return result;
}

void OUTLINED_FUNCTION_36_8()
{
  v2 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  v3 = *(v2 + 25);
  v4 = *(v2 + 24);
  v5 = *(v2 + 16);
  v6 = v0 & 0x1FFFFFFFFFFFFFFFLL;
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  v9 = *(v6 + 25);
}

void OUTLINED_FUNCTION_62_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v7 = a4 + 16 * v4;
  *(v7 + 32) = 3;
  *(v7 + 40) = v6;
}

uint64_t OUTLINED_FUNCTION_65_5()
{
  v4 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
}

__n128 OUTLINED_FUNCTION_101_4()
{
  v2 = v1[2].n128_u8[8];
  v3 = v1[2].n128_u64[0];
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  return v1[1];
}

uint64_t OUTLINED_FUNCTION_129()
{

  return sub_19393C550();
}

uint64_t OUTLINED_FUNCTION_130_0()
{
  v5 = *(v0 + 16);
  v4 = *(v1 + 16);
}

__n128 OUTLINED_FUNCTION_150_0()
{
  v1 = v0 & 0xFFFFFFFFFFFFFFFLL;
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  return result;
}

void sub_1934B2D64()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEA8798);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v35 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v35, xmmword_193952660);
  *v1 = 10;
  *v0 = "identifiers";
  *(v0 + 8) = 11;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  v9(v0, v6, v7);
  v10 = OUTLINED_FUNCTION_9_4((v1 + v5));
  *v10 = "eventType";
  *(v10 + 1) = 9;
  v11 = OUTLINED_FUNCTION_91_4(v10);
  (v9)(v11);
  v12 = OUTLINED_FUNCTION_59_5();
  *v13 = 9;
  *v12 = "subtype";
  v12[1] = 7;
  v14 = OUTLINED_FUNCTION_91_4(v12);
  (v9)(v14);
  v15 = OUTLINED_FUNCTION_26_5();
  *v16 = 6;
  *v15 = "timestamp";
  v15[1] = 9;
  v17 = OUTLINED_FUNCTION_91_4(v15);
  (v9)(v17);
  v18 = OUTLINED_FUNCTION_66_6();
  *v19 = 7;
  *v18 = "threadQualityOfService";
  v18[1] = 22;
  v20 = OUTLINED_FUNCTION_91_4(v18);
  (v9)(v20);
  v21 = OUTLINED_FUNCTION_38_2();
  *v22 = 8;
  *v21 = "unixEpochTime";
  v21[1] = 13;
  v23 = OUTLINED_FUNCTION_91_4(v21);
  (v9)(v23);
  v24 = OUTLINED_FUNCTION_13((v1 + 6 * v5));
  *v24 = "metadata";
  *(v24 + 1) = 8;
  v25 = OUTLINED_FUNCTION_91_4(v24);
  (v9)(v25);
  v26 = OUTLINED_FUNCTION_33_0(8 * v5);
  *v27 = 11;
  *v26 = "error";
  v26[1] = 5;
  v28 = OUTLINED_FUNCTION_91_4(v26);
  (v9)(v28);
  OUTLINED_FUNCTION_3_1(&v1[v5]);
  OUTLINED_FUNCTION_187_0(v29);
  *v30 = "trialExperimentInfos";
  v30[1] = 20;
  v31 = OUTLINED_FUNCTION_91_4(v30);
  (v9)(v31);
  v32 = OUTLINED_FUNCTION_44(9 * v5);
  *v33 = 5;
  *v32 = "_identifierSet";
  *(v32 + 8) = 14;
  *(v32 + 16) = 2;
  *(v32 + 24) = "IdentifierSet";
  *(v32 + 32) = 13;
  *(v32 + 40) = 2;
  v34 = *MEMORY[0x1E69AADD8];
  (v9)();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934B3038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65[30] = a2;
  v63 = a1;
  v60 = type metadata accessor for MonotonicTimestamp();
  v5 = OUTLINED_FUNCTION_4_1(v60);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_289();
  v56 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  v10 = OUTLINED_FUNCTION_47(v9);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v58 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v55 - v15;
  v57 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  v17 = OUTLINED_FUNCTION_4_1(v57);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_289();
  v55[1] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4A0, &qword_193952760);
  v22 = OUTLINED_FUNCTION_47(v21);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v55 - v28;
  v59 = v16;
  v61 = v55 - v28;
  while (1)
  {
    OUTLINED_FUNCTION_159_2();
    v30 = sub_19393C0E0();
    if (v3 || (v31 & 1) != 0)
    {
      break;
    }

    switch(v30)
    {
      case 3:
        *&v65[13] = 0uLL;
        OUTLINED_FUNCTION_117_5();
        sub_19393C200();
        if (v65[14])
        {
          v32 = v65[13];
        }

        else
        {
          v32 = 0;
        }

        v55[0] = a3;
        v33 = v27;
        if (v65[14])
        {
          v34 = v65[14];
        }

        else
        {
          v34 = 0xE000000000000000;
        }

        v35 = (v62 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 32));
        v36 = v35[1];

        *v35 = v32;
        v35[1] = v34;
        v29 = v61;
        v27 = v33;
        v16 = v59;
        a3 = v55[0];
        break;
      case 4:
        v47 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
        OUTLINED_FUNCTION_288(*(v47 + 52));
        OUTLINED_FUNCTION_284();
        goto LABEL_32;
      case 5:
        memset(&v65[13], 0, 104);
        OUTLINED_FUNCTION_159_2();
        sub_193498018();
        v41 = v16;
        if (v65[13])
        {
          memcpy(&v64[1], &v65[14], 0x60uLL);
          v64[0] = v65[13];
        }

        else
        {
          GenerativeFunctionsInstrumentationEvent.IdentifierSet.init()(v64);
        }

        v53 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 64);
        v54 = v62;
        memcpy(v65, (v62 + v53), 0x68uLL);
        sub_1934500D8(v65);
        memcpy((v54 + v53), v64, 0x68uLL);
        v16 = v41;
        break;
      case 6:
        __swift_storeEnumTagSinglePayload(v16, 1, 1, v60);
        OUTLINED_FUNCTION_159_2();
        sub_193498018();
        v42 = v27;
        v43 = v58;
        sub_19344F184();
        if (__swift_getEnumTagSinglePayload(v43, 1, v60) == 1)
        {
          MonotonicTimestamp.init()(v56);
          sub_19344E6DC(v16, &qword_1EAE3B498, &unk_193959120);
          if (__swift_getEnumTagSinglePayload(v43, 1, v60) != 1)
          {
            sub_19344E6DC(v58, &qword_1EAE3B498, &unk_193959120);
          }
        }

        else
        {
          sub_19344E6DC(v16, &qword_1EAE3B498, &unk_193959120);
          OUTLINED_FUNCTION_128_0();
          sub_1934B3808();
        }

        v51 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 40);
        OUTLINED_FUNCTION_128_0();
        sub_1934B37B0();
        v16 = v59;
        v27 = v42;
        v29 = v61;
        break;
      case 7:
        v65[13] = 0;
        LOBYTE(v65[14]) = 1;
        OUTLINED_FUNCTION_117_5();
        sub_19393C190();
        v37 = v16;
        if (LOBYTE(v65[14]))
        {
          v38 = 0;
        }

        else
        {
          v38 = v65[13];
        }

        *(v62 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 44)) = v38;
        v16 = v37;
        break;
      case 8:
        v65[13] = 0;
        LOBYTE(v65[14]) = 1;
        OUTLINED_FUNCTION_117_5();
        sub_19393C1E0();
        if (LOBYTE(v65[14]))
        {
          v48 = 0.0;
        }

        else
        {
          v48 = *&v65[13];
        }

        *(v62 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 48)) = v48;
        break;
      case 9:
        v49 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
        OUTLINED_FUNCTION_288(*(v49 + 36));
        sub_1934982A8();
        break;
      case 10:
        v44 = v16;
        v45 = v57;
        __swift_storeEnumTagSinglePayload(v29, 1, 1, v57);
        OUTLINED_FUNCTION_159_2();
        sub_193498018();
        sub_19344F184();
        if (__swift_getEnumTagSinglePayload(v27, 1, v45) == 1)
        {
          GenerativeFunctionsInstrumentationEvent.Identifiers.init()();
          sub_19344E6DC(v29, &qword_1EAE3B4A0, &qword_193952760);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v45);
          v16 = v44;
          if (EnumTagSinglePayload != 1)
          {
            sub_19344E6DC(v27, &qword_1EAE3B4A0, &qword_193952760);
          }
        }

        else
        {
          sub_19344E6DC(v29, &qword_1EAE3B4A0, &qword_193952760);
          OUTLINED_FUNCTION_127_1();
          sub_1934B3808();
          v16 = v44;
        }

        v52 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 28);
        OUTLINED_FUNCTION_127_1();
        sub_1934B37B0();
        v29 = v61;
        break;
      case 11:
        v50 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
        OUTLINED_FUNCTION_288(*(v50 + 56));
LABEL_32:
        OUTLINED_FUNCTION_159_2();
        sub_193498018();
        break;
      case 12:
        v39 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
        v40 = OUTLINED_FUNCTION_288(*(v39 + 60));
        sub_193498238(v40);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1934B37B0()
{
  OUTLINED_FUNCTION_91_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_13_0();
  v6(v5);
  return v0;
}

uint64_t sub_1934B3808()
{
  OUTLINED_FUNCTION_91_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_13_0();
  v6(v5);
  return v0;
}

void sub_1934B38AC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, &qword_1EAEA87B0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_20(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("SubtypeUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_0_0(v11, "Start");
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_16_6(v13, "End");
  v9(v14);
  v15 = OUTLINED_FUNCTION_22_3();
  *v16 = 3;
  v17 = OUTLINED_FUNCTION_16_6(v15, "Fail");
  v9(v17);
  v18 = OUTLINED_FUNCTION_60_1((v0 + 4 * v4));
  *v18 = "Info";
  *(v18 + 1) = 4;
  v19 = OUTLINED_FUNCTION_1_3(v18);
  v9(v19);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B3A70()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA87C8);
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
  v11 = OUTLINED_FUNCTION_48(v10, "version");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934B3BA0()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C200();
      v5 = v1[3];

      v1[2] = 0;
      v1[3] = 0xE000000000000000;
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C200();
      v4 = v1[1];

      *v1 = 0;
      v1[1] = 0xE000000000000000;
    }
  }

  return result;
}

void sub_1934B3CCC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA87E0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v43 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_11_3(v43, xmmword_193952670);
  *v0 = "clientSessionIdentifier";
  v0[1] = 23;
  OUTLINED_FUNCTION_107_3();
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_18_1(v11, "clientRequestIdentifier");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  v14 = OUTLINED_FUNCTION_0_0(v13, "clientApplicationIdentifier");
  v9(v14);
  v15 = OUTLINED_FUNCTION_13((v1 + 3 * v5));
  v16 = OUTLINED_FUNCTION_0_0(v15, "clientBundleIdentifier");
  v9(v16);
  v17 = OUTLINED_FUNCTION_19_2((v1 + 4 * v5));
  v18 = OUTLINED_FUNCTION_0_0(v17, "intelligenceFlowGroupIdentifier");
  v9(v18);
  v19 = OUTLINED_FUNCTION_45_2(5 * v5);
  *v20 = 6;
  v21 = OUTLINED_FUNCTION_0_0(v19, "intelligenceFlowSessionIdentifier");
  v9(v21);
  v22 = OUTLINED_FUNCTION_30_0((v1 + 6 * v5));
  v23 = OUTLINED_FUNCTION_0_0(v22, "intelligenceFlowSpanIdentifier");
  v9(v23);
  OUTLINED_FUNCTION_120();
  v25 = OUTLINED_FUNCTION_39_3((v1 + v24));
  v26 = OUTLINED_FUNCTION_0_0(v25, "useCaseIdentifier");
  v9(v26);
  v27 = OUTLINED_FUNCTION_55_2((v1 + 8 * v5));
  v28 = OUTLINED_FUNCTION_0_0(v27, "generativeFunctionIdentifier");
  v9(v28);
  v29 = OUTLINED_FUNCTION_45_2(9 * v5);
  *v30 = 14;
  v31 = OUTLINED_FUNCTION_0_0(v29, "generativeFunctionInvocationIdentifier");
  v9(v31);
  v32 = OUTLINED_FUNCTION_14_4(10);
  v33 = OUTLINED_FUNCTION_0_0(v32, "catalogResourceIdentifier");
  v9(v33);
  v34 = OUTLINED_FUNCTION_14_4(11);
  v35 = OUTLINED_FUNCTION_18_1(v34, "modelManagerRequestIdentifier");
  v9(v35);
  v36 = OUTLINED_FUNCTION_14_4(12);
  v37 = OUTLINED_FUNCTION_18_1(v36, "modelManagerSessionIdentifier");
  v9(v37);
  OUTLINED_FUNCTION_3_1(v1 + 13 * v5);
  OUTLINED_FUNCTION_180_0(v38);
  v40 = OUTLINED_FUNCTION_0_0(v39, "modelManagerAssetTransitionIdentifier");
  v9(v40);
  v41 = OUTLINED_FUNCTION_67_1((v1 + 14 * v5));
  *v41 = "inferenceProviderIdentifier";
  *(v41 + 1) = 27;
  v42 = OUTLINED_FUNCTION_1_3(v41);
  v9(v42);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934B4000()
{
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
      case 2:
      case 3:
      case 4:
      case 5:
        goto LABEL_16;
      case 6:
        v4 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 36);
        goto LABEL_14;
      case 7:
        v8 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 40);
        OUTLINED_FUNCTION_113();
        sub_19393C230();
        continue;
      case 8:
        v7 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 44);
        goto LABEL_16;
      case 9:
        v9 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 48);
        goto LABEL_16;
      case 10:
        v6 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 56);
        sub_193498018();
        continue;
      case 11:
        v4 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 60);
        goto LABEL_14;
      case 12:
        v4 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 64);
        goto LABEL_14;
      case 13:
        v5 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 72);
LABEL_16:
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        continue;
      case 14:
        v4 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 52);
        goto LABEL_14;
      case 15:
        v4 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 68);
LABEL_14:
        sub_193497890(v1 + v4);
        break;
      default:
        continue;
    }
  }
}

void sub_1934B41E4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA87F8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("namespaceName");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_16_6(v11, "deploymentId");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_16_6(v13, "experimentId");
  v9(v14);
  v15 = OUTLINED_FUNCTION_13((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "treatmentId");
  v9(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934B4360()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C170();
        break;
      default:
        continue;
    }
  }
}

void sub_1934B43F4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_75_3();
  v2 = *(v1 + 4);
  v3 = *(v1 + 20);
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  if (v1[1])
  {
    v8 = *v1;
    OUTLINED_FUNCTION_181();
  }

  if (!v0)
  {
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_90_4();
      sub_19393C350();
    }

    if (v5)
    {
      OUTLINED_FUNCTION_181();
    }

    if (v7)
    {
      OUTLINED_FUNCTION_181();
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934B44F8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8810);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v38 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_11_3(v38, xmmword_193952680);
  *v0 = "clientSessionIdentifiers";
  v0[1] = 24;
  OUTLINED_FUNCTION_107_3();
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_18_1(v11, "clientRequestIdentifiers");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  v14 = OUTLINED_FUNCTION_16_6(v13, "clientApplicationIdentifiers");
  v9(v14);
  v15 = OUTLINED_FUNCTION_22_3();
  *v16 = 13;
  v17 = OUTLINED_FUNCTION_0_0(v15, "clientBundleIdentifiers");
  v9(v17);
  v18 = OUTLINED_FUNCTION_13((v1 + 4 * v5));
  v19 = OUTLINED_FUNCTION_0_0(v18, "intelligenceFlowGroupIdentifiers");
  v9(v19);
  v20 = OUTLINED_FUNCTION_19_2((v1 + 5 * v5));
  v21 = OUTLINED_FUNCTION_0_0(v20, "intelligenceFlowSessionIdentifiers");
  v9(v21);
  v22 = OUTLINED_FUNCTION_14_4(6);
  v23 = OUTLINED_FUNCTION_0_0(v22, "intelligenceFlowSpanIdentifiers");
  v9(v23);
  OUTLINED_FUNCTION_120();
  v25 = OUTLINED_FUNCTION_30_0((v1 + v24));
  v26 = OUTLINED_FUNCTION_0_0(v25, "useCaseIdentifiers");
  v9(v26);
  v27 = OUTLINED_FUNCTION_39_3((v1 + 8 * v5));
  v28 = OUTLINED_FUNCTION_0_0(v27, "generativeFunctionIdentifiers");
  v9(v28);
  OUTLINED_FUNCTION_45_2(9 * v5);
  OUTLINED_FUNCTION_131_3(v29);
  v31 = OUTLINED_FUNCTION_0_0(v30, "catalogResourceIdentifiers");
  v9(v31);
  v32 = OUTLINED_FUNCTION_14_4(10);
  v33 = OUTLINED_FUNCTION_18_1(v32, "modelManagerRequestIdentifiers");
  v9(v33);
  v34 = OUTLINED_FUNCTION_14_4(11);
  v35 = OUTLINED_FUNCTION_18_1(v34, "modelManagerSessionIdentifiers");
  v9(v35);
  v36 = OUTLINED_FUNCTION_14_4(12);
  *v36 = "inferenceProviderIdentifiers";
  *(v36 + 1) = 28;
  v37 = OUTLINED_FUNCTION_1_3(v36);
  v9(v37);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934B47CC()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 7:
      case 8:
      case 10:
      case 11:
      case 12:
      case 13:
        OUTLINED_FUNCTION_98();
        sub_19393C1B0();
        break;
      case 5:
        OUTLINED_FUNCTION_98();
        sub_193497D68();
        break;
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C1D0();
        break;
      case 9:
        OUTLINED_FUNCTION_62();
        sub_193498238(v3);
        break;
      default:
        continue;
    }
  }
}

void sub_1934B48D8()
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_75_3();
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v19 = v1[7];
  v17 = v1[9];
  v18 = v1[8];
  v15 = v1[11];
  v16 = v1[10];
  v14 = v1[12];
  if (*(*v1 + 16))
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393C380();
  }

  if (!v0)
  {
    if (*(v2 + 16))
    {
      OUTLINED_FUNCTION_90_4();
      sub_19393C380();
    }

    if (*(v4 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C380();
    }

    if (*(v3 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C380();
    }

    if (*(v6 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C380();
    }

    if (*(v5 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_193498848();
    }

    if (*(v7 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3A0();
    }

    if (*(v19 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C380();
    }

    if (*(v18 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C380();
    }

    if (*(v17 + 16))
    {
      OUTLINED_FUNCTION_106();
      sub_193451CFC(v8, v9, v10, v11, v12, v13);
    }

    if (*(v16 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C380();
    }

    if (*(v15 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C380();
    }

    if (*(v14 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C380();
    }
  }

  OUTLINED_FUNCTION_143_0();
}

uint64_t sub_1934B4B10@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_184();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result = GenerativeFunctionsInstrumentationMetadata.GenericError.init()();
  *a1 = v1;
  return result;
}

void sub_1934B4B4C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8828);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v45 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v45, xmmword_193952690);
  OUTLINED_FUNCTION_290("genericError");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_9_4((v1 + v5));
  v12 = OUTLINED_FUNCTION_5_4(v11, "mmExecuteRequest");
  v9(v12);
  v13 = OUTLINED_FUNCTION_13((v1 + 2 * v5));
  v14 = OUTLINED_FUNCTION_5_4(v13, "tgiExecuteRequest");
  v9(v14);
  v15 = OUTLINED_FUNCTION_19_2((v1 + 3 * v5));
  v16 = OUTLINED_FUNCTION_36_0(v15, "assetAcquire");
  v9(v16);
  OUTLINED_FUNCTION_66_6();
  OUTLINED_FUNCTION_140_0(v17);
  v19 = OUTLINED_FUNCTION_36_0(v18, "assetRelease");
  v9(v19);
  v20 = OUTLINED_FUNCTION_30_0((v1 + 5 * v5));
  v21 = OUTLINED_FUNCTION_5_4(v20, "privateCloudMetrics");
  v9(v21);
  v22 = OUTLINED_FUNCTION_39_3((v1 + v5 * v0));
  v23 = OUTLINED_FUNCTION_5_4(v22, "validatorApplication");
  v9(v23);
  OUTLINED_FUNCTION_33_0(8 * v5);
  OUTLINED_FUNCTION_131_3(v24);
  v26 = OUTLINED_FUNCTION_5_4(v25, "modelManagerSessionEvent");
  v9(v26);
  v27 = OUTLINED_FUNCTION_3_1(v1 + 8 * v5);
  *v28 = 10;
  v29 = OUTLINED_FUNCTION_5_4(v27, "summarizationEvent");
  v9(v29);
  v30 = OUTLINED_FUNCTION_44(9 * v5);
  *v31 = 11;
  v32 = OUTLINED_FUNCTION_15(v30, 19);
  v9(v32);
  v33 = OUTLINED_FUNCTION_72();
  *v34 = 12;
  v35 = OUTLINED_FUNCTION_5_4(v33, "assetTransition");
  v9(v35);
  v36 = OUTLINED_FUNCTION_52_0();
  *v37 = 13;
  v38 = OUTLINED_FUNCTION_15(v36, 18);
  v9(v38);
  v39 = OUTLINED_FUNCTION_72();
  *v40 = 14;
  v41 = OUTLINED_FUNCTION_5_4(v39, "availabilityStatusTransition");
  v9(v41);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_180_0(v42);
  v44 = OUTLINED_FUNCTION_15(v43, 19);
  v9(v44);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934B4E5C()
{
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v3);
  v4 = v0;
  while (1)
  {
    v5 = OUTLINED_FUNCTION_124();
    if (v1 || (v6 & 1) != 0)
    {
      break;
    }

    switch(v5)
    {
      case 1:
        *__src = xmmword_1939526A0;
        *&__src[16] = 0;
        __src[24] = 0;
        OUTLINED_FUNCTION_129_0();
        sub_193498018();
        v2 = v4;
        v7 = OUTLINED_FUNCTION_172_1();
        v8 = *&__src[8];
        if (*&__src[8] == 1)
        {
          v9 = &v79;
          GenerativeFunctionsInstrumentationMetadata.GenericError.init()(&v79, v7);
          v8 = v80;
          v10 = v81;
          v11 = v82;
        }

        else
        {
          v10 = *&__src[16];
          v9 = __src;
          v11 = __src[24];
        }

        v58 = *v9;
        OUTLINED_FUNCTION_184();
        v59 = swift_allocObject();
        *(v59 + 16) = v58;
        *(v59 + 24) = v8;
        *(v59 + 32) = v10;
        *(v59 + 40) = v11 & 1;
        v4 = v2;
        *v2 = v59;
        continue;
      case 3:
        memset(&__src[48], 0, 41);
        OUTLINED_FUNCTION_112_4(0);
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        if (*&__src[80])
        {
          memcpy(__dst, __src, 0x50uLL);
          __dst[10] = *&__src[80];
          LOBYTE(__dst[11]) = __src[88];
        }

        else
        {
          GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.init()(__dst);
        }

        v70 = swift_allocObject();
        v71 = OUTLINED_FUNCTION_151_1(v70);
        memcpy(v71, __dst, 0x59uLL);
        *v4 = v2 | 0x1000000000000000;
        continue;
      case 4:
        sub_1934B5A30(__src);
        v23 = OUTLINED_FUNCTION_168_0();
        memcpy(v23, v24, 0x299uLL);
        OUTLINED_FUNCTION_281();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        v25 = OUTLINED_FUNCTION_280();
        memcpy(v25, v26, 0x299uLL);
        v27 = OUTLINED_FUNCTION_157_0();
        memcpy(v27, v28, 0x299uLL);
        if (sub_1934B5A38(v78) == 1)
        {
          GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.init()(v76);
        }

        else
        {
          memcpy(v76, v77, 0x299uLL);
        }

        v54 = swift_allocObject();
        v55 = OUTLINED_FUNCTION_151_1(v54);
        memcpy(v55, v76, 0x299uLL);
        *v4 = v2 | 0x2000000000000000;
        continue;
      case 5:
        *&v29 = OUTLINED_FUNCTION_166_0();
        *&__src[58] = v29;
        __src[74] = v30;
        OUTLINED_FUNCTION_129_0();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        if (__src[74])
        {
          GenerativeFunctionsInstrumentationMetadata.AssetAcquire.init()(v87);
        }

        else
        {
          memcpy(v87, __src, 0x4AuLL);
        }

        v56 = swift_allocObject();
        v57 = OUTLINED_FUNCTION_151_1(v56);
        memcpy(v57, v87, 0x4AuLL);
        *v4 = v2 | 0x3000000000000000;
        continue;
      case 6:
        memset(__src, 0, 42);
        __src[42] = 1;
        OUTLINED_FUNCTION_129_0();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        if (__src[42])
        {
          GenerativeFunctionsInstrumentationMetadata.AssetRelease.init()(&v88);
        }

        else
        {
          v88 = *__src;
          *v89 = *&__src[16];
          *&v89[16] = *&__src[32];
          *&v89[24] = *&__src[40];
        }

        v47 = swift_allocObject();
        v48 = *v89;
        *(v47 + 16) = v88;
        *(v47 + 32) = v48;
        *(v47 + 42) = *&v89[10];
        *v4 = v47 | 0x4000000000000000;
        continue;
      case 7:
        sub_1934B59EC(__src);
        v31 = OUTLINED_FUNCTION_168_0();
        memcpy(v31, v32, 0x142uLL);
        OUTLINED_FUNCTION_281();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        v33 = OUTLINED_FUNCTION_280();
        memcpy(v33, v34, 0x142uLL);
        v35 = OUTLINED_FUNCTION_157_0();
        memcpy(v35, v36, 0x142uLL);
        if (sub_1934A83E0(v78) == 1)
        {
          GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.init()(v90);
        }

        else
        {
          memcpy(v90, v77, 0x142uLL);
        }

        v60 = swift_allocObject();
        v61 = OUTLINED_FUNCTION_151_1(v60);
        memcpy(v61, v90, 0x142uLL);
        v53 = 0x5000000000000000;
        goto LABEL_53;
      case 8:
        *&__src[48] = 0;
        OUTLINED_FUNCTION_112_4(0);
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        if (*&__src[48])
        {
          v91 = *__src;
          v92 = *&__src[16];
          v93 = *&__src[32];
          v94 = *&__src[48];
        }

        else
        {
          GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.init()(&v91);
        }

        v72 = swift_allocObject();
        v73 = v92;
        *(v72 + 16) = v91;
        *(v72 + 32) = v73;
        *(v72 + 48) = v93;
        *(v72 + 64) = v94;
        *v4 = v72 | 0x6000000000000000;
        continue;
      case 9:
        memset(&__src[48], 0, 58);
        OUTLINED_FUNCTION_112_4(0);
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        if (*&__src[16])
        {
          v95[0] = *__src;
          memcpy(&v95[1] + 8, &__src[24], 0x52uLL);
          *&v95[1] = *&__src[16];
        }

        else
        {
          GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.init()(v95);
        }

        v68 = swift_allocObject();
        v69 = OUTLINED_FUNCTION_151_1(v68);
        memcpy(v69, v95, 0x6AuLL);
        *v4 = v2 | 0x7000000000000000;
        continue;
      case 10:
        sub_1934B59CC(__src);
        v39 = OUTLINED_FUNCTION_168_0();
        memcpy(v39, v40, 0x189uLL);
        OUTLINED_FUNCTION_281();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        v41 = OUTLINED_FUNCTION_280();
        memcpy(v41, v42, 0x189uLL);
        v43 = OUTLINED_FUNCTION_157_0();
        memcpy(v43, v44, 0x189uLL);
        if (sub_1934B59D4(v78) == 1)
        {
          GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.init()(v96);
        }

        else
        {
          memcpy(v96, v77, 0x189uLL);
        }

        v66 = swift_allocObject();
        v67 = OUTLINED_FUNCTION_151_1(v66);
        memcpy(v67, v96, 0x189uLL);
        *v4 = v2 | 0x8000000000000000;
        continue;
      case 11:
        sub_1934B5988(__src);
        v17 = OUTLINED_FUNCTION_168_0();
        memcpy(v17, v18, 0x119uLL);
        OUTLINED_FUNCTION_281();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        v19 = OUTLINED_FUNCTION_280();
        memcpy(v19, v20, 0x119uLL);
        v21 = OUTLINED_FUNCTION_157_0();
        memcpy(v21, v22, 0x119uLL);
        if (sub_1934B59A8(v78) == 1)
        {
          GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.init()(v97);
        }

        else
        {
          memcpy(v97, v77, 0x119uLL);
        }

        v51 = swift_allocObject();
        v52 = OUTLINED_FUNCTION_151_1(v51);
        memcpy(v52, v97, 0x119uLL);
        v53 = 0x9000000000000000;
        goto LABEL_53;
      case 12:
        *&v37 = OUTLINED_FUNCTION_166_0();
        *&__src[64] = v37;
        *&__src[80] = v37;
        *&__src[96] = v37;
        *&__src[112] = 0;
        v86 = v38;
        OUTLINED_FUNCTION_129_0();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        if (v86)
        {
          GenerativeFunctionsInstrumentationMetadata.AssetTransition.init()(v98);
        }

        else
        {
          memcpy(v98, __src, 0x72uLL);
        }

        v64 = swift_allocObject();
        v65 = OUTLINED_FUNCTION_151_1(v64);
        memcpy(v65, v98, 0x72uLL);
        v53 = 0xA000000000000000;
        goto LABEL_53;
      case 13:
        *__src = 0;
        *&__src[8] = 256;
        OUTLINED_FUNCTION_129_0();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        if (__src[9])
        {
          v12 = &v79;
          GenerativeFunctionsInstrumentationMetadata.AvailabilityStatus.init()(&v79);
          v13 = v80;
        }

        else
        {
          v12 = __src;
          v13 = __src[8];
        }

        v45 = *v12;
        OUTLINED_FUNCTION_123_1();
        v46 = swift_allocObject();
        *(v46 + 16) = v45;
        *(v46 + 24) = v13 & 1;
        *v4 = v46 | 0xB000000000000000;
        continue;
      case 14:
        memset(__src, 0, 41);
        __src[41] = 1;
        OUTLINED_FUNCTION_129_0();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        if (__src[41])
        {
          v14 = &v79;
          GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition.init()(&v79);
          v15 = v80;
          v74 = v83;
          v16 = v84;
        }

        else
        {
          v74 = *&__src[32];
          v15 = __src[8];
          v14 = __src;
          v16 = __src[40];
        }

        v2 = *v14;
        v49 = swift_allocObject();
        *(v49 + 16) = v2;
        v50 = OUTLINED_FUNCTION_278(v49, v15 & 1);
        *(v50 + 48) = v74;
        *(v50 + 56) = v16 & 1;
        *v4 = v50 | 0xC000000000000000;
        continue;
      case 15:
        memset(__src, 0, 40);
        *&__src[40] = 1;
        memset(&__src[48], 0, 18);
        OUTLINED_FUNCTION_129_0();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        if (*&__src[40] == 1)
        {
          GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.init()(v99);
        }

        else
        {
          v99[0] = *__src;
          v99[1] = *&__src[16];
          v99[3] = *&__src[48];
          LOWORD(v99[4]) = *&__src[64];
          v99[2] = *&__src[32];
        }

        v62 = swift_allocObject();
        v63 = OUTLINED_FUNCTION_151_1(v62);
        memcpy(v63, v99, 0x42uLL);
        v53 = 0xD000000000000000;
LABEL_53:
        *v4 = v2 | v53;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934B5988(uint64_t a1)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  bzero((a1 + 72), 0xD1uLL);
}

uint64_t sub_1934B59A8(uint64_t a1)
{
  v1 = *(a1 + 64);
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

uint64_t sub_1934B59D4(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1934B59EC(uint64_t a1)
{
  bzero(a1, 0xE8uLL);
  *(a1 + 232) = 2;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  return result;
}

uint64_t sub_1934B5A38(uint64_t a1)
{
  v1 = *(a1 + 616);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1934B5A9C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8840);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("domain");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "code");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B5C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_115();
  v12 = sub_19393C420();
  __swift_allocate_value_buffer(v12, qword_1EAEA8858);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v13);
  v15 = *(v14 + 72);
  OUTLINED_FUNCTION_49_0();
  v16 = OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_8_18(v16, xmmword_1939526B0);
  OUTLINED_FUNCTION_83_0("onBehalfOfPID");
  v17 = *MEMORY[0x1E69AADC8];
  v18 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v18);
  v20 = *(v19 + 104);
  v21 = OUTLINED_FUNCTION_50_1();
  v20(v21);
  v22 = OUTLINED_FUNCTION_13((v10 + v15));
  v23 = OUTLINED_FUNCTION_5_4(v22, "onBehalfOfBundleIdentifier");
  v20(v23);
  v24 = OUTLINED_FUNCTION_59_5();
  *v25 = v11;
  v26 = OUTLINED_FUNCTION_5_4(v24, "createdByPID");
  v20(v26);
  v27 = OUTLINED_FUNCTION_19_2((v10 + 3 * v15));
  v28 = OUTLINED_FUNCTION_5_4(v27, "createdByBundleIdentifier");
  v20(v28);
  v29 = OUTLINED_FUNCTION_9_4((v10 + 4 * v15));
  v30 = OUTLINED_FUNCTION_5_4(v29, "requestType");
  v20(v30);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_140_0(v31);
  v33 = OUTLINED_FUNCTION_5_4(v32, "isFallbackRequest");
  v20(v33);
  v34 = OUTLINED_FUNCTION_30_0((v10 + v15 * v9));
  v35 = OUTLINED_FUNCTION_23_7(v34, "assets");
  v20(v35);
  OUTLINED_FUNCTION_33_0(a9);
  OUTLINED_FUNCTION_121_1(v36);
  *v37 = "isInference";
  v37[1] = 11;
  v38 = OUTLINED_FUNCTION_41(v37);
  v20(v38);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B5E18()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      case 3:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 6:
      case 8:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 7:
        OUTLINED_FUNCTION_89_2();
        sub_193498238(v3);
        break;
      default:
        continue;
    }
  }
}

void sub_1934B5F20()
{
  OUTLINED_FUNCTION_145_0();
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[7];
  v23 = v0[6];
  v26 = *(v0 + 73);
  v27[0] = *(v0 + 40);
  v5 = *(v0 + 74);
  v6 = v0[10];
  v7 = *(v0 + 88);
  if ((v0[1] & 1) == 0)
  {
    v21 = v0[3];
    v22 = v0[2];
    v8 = *v0;
    OUTLINED_FUNCTION_293_0();
    sub_19393C360();
    v2 = v21;
  }

  if (!v1)
  {
    if (v2)
    {
      sub_19393C3C0();
    }

    if ((v27[0] & 1) == 0)
    {
      OUTLINED_FUNCTION_293_0();
      sub_19393C360();
    }

    if (v4)
    {
      OUTLINED_FUNCTION_185_0();
      sub_19393C3C0();
    }

    if ((v26 & 1) == 0)
    {
      v24 = v0[8];
      v25 = *(v0 + 72);
      OUTLINED_FUNCTION_185_0();
      sub_193447324(v9, v10, v11, v12, v13, v14);
    }

    if (v5 != 2)
    {
      OUTLINED_FUNCTION_293_0();
      sub_19393C2E0();
    }

    if (*(v6 + 16))
    {
      OUTLINED_FUNCTION_185_0();
      sub_193451CFC(v15, v16, v17, v18, v19, v20);
    }

    if (v7 != 2)
    {
      OUTLINED_FUNCTION_293_0();
      sub_19393C2E0();
    }
  }

  OUTLINED_FUNCTION_143_0();
}

void sub_1934B616C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8870);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v1 = 0;
  *v0 = "Unknown";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_65();
  (v10)(v11);
  v12 = OUTLINED_FUNCTION_4_9();
  *v12 = "OneShot";
  *(v12 + 8) = 7;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v14 = 2;
  *v13 = "Streaming";
  *(v13 + 8) = 9;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B630C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8888);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v39 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v39, xmmword_1939526C0);
  *v0 = "requestType";
  *(v0 + 8) = 11;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_61();
  *v12 = 2;
  v13 = OUTLINED_FUNCTION_23_7(v11, "inputTokensCount");
  v9(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  v15 = OUTLINED_FUNCTION_5_4(v14, "outputTokensCount");
  v9(v15);
  v16 = OUTLINED_FUNCTION_13((v1 + 3 * v5));
  v17 = OUTLINED_FUNCTION_36_0(v16, "errorString");
  v9(v17);
  v18 = OUTLINED_FUNCTION_19_2((v1 + 4 * v5));
  v19 = OUTLINED_FUNCTION_23_7(v18, "instructionCount");
  v9(v19);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_140_0(v20);
  v22 = OUTLINED_FUNCTION_36_0(v21, "errorType");
  v9(v22);
  v23 = OUTLINED_FUNCTION_30_0((v1 + 16 * v5));
  v24 = OUTLINED_FUNCTION_5_4(v23, "privateCloudMetrics");
  v9(v24);
  OUTLINED_FUNCTION_33_0(8 * v5);
  OUTLINED_FUNCTION_121_1(v25);
  v27 = OUTLINED_FUNCTION_5_4(v26, "speculativeDecodingMetrics");
  v9(v27);
  v28 = OUTLINED_FUNCTION_67_1((v1 + 8 * v5));
  v29 = OUTLINED_FUNCTION_23_7(v28, "fileResidentInfos");
  v9(v29);
  v30 = OUTLINED_FUNCTION_44(9 * v5);
  *v31 = 10;
  v32 = OUTLINED_FUNCTION_5_4(v30, "prefixKVCacheTokensMatchCount");
  v9(v32);
  v33 = OUTLINED_FUNCTION_52_0();
  *v34 = 11;
  v35 = OUTLINED_FUNCTION_5_4(v33, "promptModulesKVCacheTokensMatchCount");
  v9(v35);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_187_0(v36);
  *v37 = "outputImagesCount";
  v37[1] = 17;
  v38 = OUTLINED_FUNCTION_41(v37);
  v9(v38);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934B65CC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_165_0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        OUTLINED_FUNCTION_125();
        goto LABEL_8;
      case 2:
      case 3:
      case 5:
      case 10:
      case 11:
      case 12:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        continue;
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        continue;
      case 6:
LABEL_8:
        sub_1934982A8();
        continue;
      case 7:
        goto LABEL_9;
      case 8:
        OUTLINED_FUNCTION_146_0();
LABEL_9:
        sub_193498018();
        break;
      case 9:
        sub_193498238(v0 + 616);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934B673C()
{
  OUTLINED_FUNCTION_26();
  v5 = v4;
  v6 = v3;
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v24 = *(v0 + 40);
  v22 = *(v0 + 48);
  v23 = *(v0 + 32);
  v27 = *(v0 + 56);
  v20 = *(v0 + 64);
  v21 = *(v0 + 72);
  v9 = *(v0 + 89);
  v16 = *(v0 + 624);
  v18 = *(v0 + 632);
  v10 = *(v0 + 640);
  v17 = *(v0 + 648);
  v11 = *(v0 + 656);
  v12 = *(v0 + 664);
  v19 = *(v0 + 616);
  if ((*(v0 + 9) & 1) == 0)
  {
    __dst[0] = *v0;
    LOBYTE(__dst[1]) = *(v0 + 8);
    v2 = v9;
    v13 = v3;
    v14 = v4;
    sub_193447324(__dst, 1, v3, &type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType, v4, &off_1F07BE9A8);
    v5 = v14;
    v6 = v13;
  }

  if (!v1)
  {
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_274();
      v5 = v2;
    }

    if ((v24 & 1) == 0)
    {
      OUTLINED_FUNCTION_274();
      v5 = v2;
    }

    if (v27)
    {
      v2 = v5;
      sub_19393C3C0();
      v5 = v2;
    }

    if ((v21 & 1) == 0)
    {
      OUTLINED_FUNCTION_274();
      v5 = v2;
    }

    if (v9)
    {
      v15 = v5;
    }

    else
    {
      __dst[0] = *(v0 + 80);
      LOBYTE(__dst[1]) = *(v0 + 88);
      v15 = v5;
      sub_193447324(__dst, 6, v6, &type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType, v5, &off_1F07BE9D0);
    }

    memcpy(__dst, (v0 + 96), 0x142uLL);
    if (sub_1934A83E0(__dst) != 1)
    {
      memcpy(v25, __dst, sizeof(v25));
      sub_193447600();
    }

    memcpy(__dst, (v0 + 424), 0xBAuLL);
    if (sub_1934A83C4(__dst) != 1)
    {
      memcpy(v25, __dst, 0xB9uLL);
      sub_193447600();
    }

    if (*(v19 + 16))
    {
      sub_193451CFC(v19, 9, v6, &type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo, v15, &off_1F07BEA28);
    }

    if ((v18 & 1) == 0)
    {
      sub_19393C360();
    }

    if ((v17 & 1) == 0)
    {
      sub_19393C360();
    }

    if ((v12 & 1) == 0)
    {
      sub_19393C360();
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934B6AD4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA88A0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("RequestTypeUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  *v11 = "OneShot";
  v11[1] = 7;
  v12 = OUTLINED_FUNCTION_70(v11);
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_48(v13, "Streaming");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B6C58()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA88B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v69 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_20(v69, xmmword_1939526D0);
  OUTLINED_FUNCTION_63("ErrorTypeUnknown");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_4_9();
  v11 = OUTLINED_FUNCTION_16_6(v10, "GeneralRequestFailure");
  v8(v11);
  v12 = OUTLINED_FUNCTION_35_4();
  v13 = OUTLINED_FUNCTION_0_0(v12, "CreateInferenceContextFailure");
  v8(v13);
  v14 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v15 = OUTLINED_FUNCTION_18_1(v14, "ProcessPromptGeneralFailure");
  v8(v15);
  v16 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v17 = OUTLINED_FUNCTION_0_0(v16, "ProcessPromptUnknownSpecialToken");
  v8(v17);
  v18 = OUTLINED_FUNCTION_19_2((v0 + 5 * v4));
  v19 = OUTLINED_FUNCTION_0_0(v18, "ProcessPromptTokenizationFailed");
  v8(v19);
  v20 = OUTLINED_FUNCTION_14_4(6);
  v21 = OUTLINED_FUNCTION_18_1(v20, "InvalidMaxOutputTokensValue");
  v8(v21);
  OUTLINED_FUNCTION_120();
  v23 = OUTLINED_FUNCTION_30_0((v0 + v22));
  v24 = OUTLINED_FUNCTION_0_0(v23, "ExtendInferenceFailure");
  v8(v24);
  v25 = OUTLINED_FUNCTION_39_3((v0 + 8 * v4));
  v26 = OUTLINED_FUNCTION_16_6(v25, "EncodeResponseFailure");
  v8(v26);
  v27 = OUTLINED_FUNCTION_45_2(9 * v4);
  *v28 = 9;
  v29 = OUTLINED_FUNCTION_16_6(v27, "StreamCanceled");
  v8(v29);
  v30 = OUTLINED_FUNCTION_14_4(10);
  v31 = OUTLINED_FUNCTION_0_0(v30, "DataStreamNotFound");
  v8(v31);
  v32 = OUTLINED_FUNCTION_14_4(11);
  v33 = OUTLINED_FUNCTION_28_4(v32, 28);
  v8(v33);
  v34 = OUTLINED_FUNCTION_14_4(12);
  v35 = OUTLINED_FUNCTION_18_1(v34, "NoCatalog");
  v8(v35);
  v36 = OUTLINED_FUNCTION_14_4(13);
  v37 = OUTLINED_FUNCTION_0_0(v36, "UnknownRequestPayloadCase");
  v8(v37);
  v38 = OUTLINED_FUNCTION_60_1((v0 + 14 * v4));
  v39 = OUTLINED_FUNCTION_0_0(v38, "WordsToStringConversionFailure");
  v8(v39);
  OUTLINED_FUNCTION_45_2(15 * v4);
  OUTLINED_FUNCTION_180_0(v40);
  v42 = OUTLINED_FUNCTION_18_1(v41, "AsyncStreamFailed");
  v8(v42);
  v43 = OUTLINED_FUNCTION_3_1(v0 + 16 * v4);
  *v44 = 16;
  v45 = OUTLINED_FUNCTION_18_1(v43, "PromptRenderError");
  v8(v45);
  v46 = OUTLINED_FUNCTION_45_2(17 * v4);
  *v47 = 17;
  v48 = OUTLINED_FUNCTION_28_4(v46, 25);
  v8(v48);
  v49 = OUTLINED_FUNCTION_32_10();
  v50 = OUTLINED_FUNCTION_0_0(v49, "OneShotServerResponseMissingCompletion");
  v8(v50);
  v51 = OUTLINED_FUNCTION_14_4(19);
  v52 = OUTLINED_FUNCTION_0_0(v51, "StreamServerResponseMissingCompletion");
  v8(v52);
  v53 = OUTLINED_FUNCTION_14_4(20);
  v54 = OUTLINED_FUNCTION_18_1(v53, "VisualGenerationUnknownGenerator");
  v8(v54);
  v55 = OUTLINED_FUNCTION_32_10();
  v56 = OUTLINED_FUNCTION_18_1(v55, "VisualGenerationUnspecifiedGoals");
  v8(v56);
  v57 = OUTLINED_FUNCTION_32_10();
  v58 = OUTLINED_FUNCTION_16_6(v57, "VisualGenerationUnexpectedCondition");
  v8(v58);
  v59 = OUTLINED_FUNCTION_14_4(23);
  v60 = OUTLINED_FUNCTION_28_4(v59, 31);
  v8(v60);
  v61 = OUTLINED_FUNCTION_14_4(24);
  v62 = OUTLINED_FUNCTION_18_1(v61, "VisualGenerationAnalysisError");
  v8(v62);
  v63 = OUTLINED_FUNCTION_32_10();
  v64 = OUTLINED_FUNCTION_16_6(v63, "VisualGenerationInitializationError");
  v8(v64);
  v65 = OUTLINED_FUNCTION_14_4(26);
  v66 = OUTLINED_FUNCTION_18_1(v65, "VisualGenerationImageRejected");
  v8(v66);
  v67 = OUTLINED_FUNCTION_32_10();
  *v67 = "VisualGenerationImageTypeNotSupported";
  *(v67 + 1) = 37;
  v68 = OUTLINED_FUNCTION_1_3(v67);
  v8(v68);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934B7174()
{
  OUTLINED_FUNCTION_115();
  v3 = sub_19393C420();
  __swift_allocate_value_buffer(v3, qword_1EAEA88D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v4);
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_49_0();
  v40 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v40, xmmword_1939526C0);
  OUTLINED_FUNCTION_83_0("tinyModelInferenceCallCount");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  v10(v11);
  v12 = OUTLINED_FUNCTION_61();
  *v13 = v2;
  v14 = OUTLINED_FUNCTION_5_4(v12, "draftModelInferenceCallCount");
  v10(v14);
  v15 = OUTLINED_FUNCTION_9_4((v1 + 2 * v6));
  v16 = OUTLINED_FUNCTION_5_4(v15, "targetModelInferenceCallCount");
  v10(v16);
  v17 = OUTLINED_FUNCTION_13((v1 + 3 * v6));
  v18 = OUTLINED_FUNCTION_5_4(v17, "draftTokenAcceptanceRate");
  v10(v18);
  v19 = OUTLINED_FUNCTION_19_2((v1 + 4 * v6));
  v20 = OUTLINED_FUNCTION_5_4(v19, "tinyTokenAcceptanceRate");
  v10(v20);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_140_0(v21);
  v23 = OUTLINED_FUNCTION_36_0(v22, "speculationSuccessRate");
  v10(v23);
  v24 = OUTLINED_FUNCTION_30_0((v1 + v6 * v0));
  v25 = OUTLINED_FUNCTION_36_0(v24, "draftOutputTokensCount");
  v10(v25);
  OUTLINED_FUNCTION_33_0(8 * v6);
  OUTLINED_FUNCTION_121_1(v26);
  v28 = OUTLINED_FUNCTION_36_0(v27, "totalOutputTokensCount");
  v10(v28);
  v29 = OUTLINED_FUNCTION_55_2((v1 + 8 * v6));
  v30 = OUTLINED_FUNCTION_15(v29, 27);
  v10(v30);
  v31 = OUTLINED_FUNCTION_44(9 * v6);
  *v32 = 10;
  v33 = OUTLINED_FUNCTION_15(v31, 28);
  v10(v33);
  v34 = OUTLINED_FUNCTION_52_0();
  *v35 = 11;
  v36 = OUTLINED_FUNCTION_15(v34, 29);
  v10(v36);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_187_0(v37);
  *v38 = "draftSteps";
  v38[1] = 10;
  v39 = OUTLINED_FUNCTION_41(v38);
  v10(v39);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934B7428()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 7:
      case 8:
      case 12:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      case 4:
      case 5:
      case 6:
      case 9:
      case 10:
      case 11:
        OUTLINED_FUNCTION_98();
        sub_19393C1E0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1934B74FC()
{
  OUTLINED_FUNCTION_75_3();
  result = v1[2];
  v3 = *(v1 + 24);
  v28 = v1[4];
  v30 = *(v1 + 40);
  v4 = v1[6];
  v29 = *(v1 + 56);
  v5 = v1[8];
  v27 = *(v1 + 72);
  v6 = v1[10];
  v26 = *(v1 + 88);
  v23 = v1[12];
  v25 = *(v1 + 104);
  v24 = *(v1 + 120);
  v7 = v1[16];
  v8 = *(v1 + 136);
  v9 = v1[18];
  v10 = *(v1 + 152);
  v11 = v1[20];
  v12 = *(v1 + 168);
  v13 = *(v1 + 184);
  if ((v1[1] & 1) == 0)
  {
    v21 = v1[14];
    v22 = v1[2];
    v14 = *v1;
    v15 = *(v1 + 136);
    v16 = *(v1 + 152);
    v17 = *(v1 + 168);
    v18 = *(v1 + 184);
    v19 = v1[22];
    v20 = *(v1 + 24);
    sub_19393C360();
    v3 = v20;
    v13 = v18;
    v12 = v17;
    v10 = v16;
    v8 = v15;
    result = v22;
  }

  if (!v0)
  {
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_90_4();
      result = sub_19393C360();
    }

    if ((v30 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      result = sub_19393C360();
    }

    if ((v29 & 1) == 0)
    {
      OUTLINED_FUNCTION_126_1();
      result = sub_19393C3B0();
    }

    if ((v27 & 1) == 0)
    {
      OUTLINED_FUNCTION_126_1();
      result = sub_19393C3B0();
    }

    if ((v26 & 1) == 0)
    {
      OUTLINED_FUNCTION_126_1();
      result = sub_19393C3B0();
    }

    if ((v25 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      result = sub_19393C360();
    }

    if ((v24 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      result = sub_19393C360();
    }

    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_126_1();
      result = sub_19393C3B0();
    }

    if ((v10 & 1) == 0)
    {
      OUTLINED_FUNCTION_126_1();
      result = sub_19393C3B0();
    }

    if ((v12 & 1) == 0)
    {
      OUTLINED_FUNCTION_126_1();
      result = sub_19393C3B0();
    }

    if ((v13 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      return sub_19393C360();
    }
  }

  return result;
}

void sub_1934B77BC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA88E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("asset");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "totalPages");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_16_6(v13, "residentPages");
  v9(v14);
  v15 = OUTLINED_FUNCTION_13((v0 + 3 * v4));
  *v15 = "residentRatio";
  *(v15 + 1) = 13;
  v16 = OUTLINED_FUNCTION_1_3(v15);
  v9(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B793C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C230();
        break;
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C160();
        break;
      default:
        continue;
    }
  }
}

void sub_1934B79F4()
{
  OUTLINED_FUNCTION_75_3();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  v10 = *(v7 + 48);
  v11 = *(v7 + 56);
  v12 = *(v7 + 60);
  v13 = *(v7 + 64);
  if (*(v7 + 8))
  {
    v15 = *(v7 + 16);
    v14 = *(v7 + 8);
    OUTLINED_FUNCTION_85_3(v1, v2, v3, &type metadata for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion, v4, &off_1F07BE800, v5, v6, *v7);
    sub_193447600();
  }

  if (!v0)
  {
    if ((v9 & 1) == 0)
    {
      OUTLINED_FUNCTION_90_4();
      sub_19393C3E0();
    }

    if ((v11 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3E0();
    }

    if ((v13 & 1) == 0)
    {
      OUTLINED_FUNCTION_126_1();
      sub_19393C340();
    }
  }
}

void sub_1934B7B34()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8900);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("result");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "memoryCostKB");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_28_4(v13, 6);
  v9(v14);
  v15 = OUTLINED_FUNCTION_13((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "aneHintClientMetric");
  v9(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B7CB4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_125();
        goto LABEL_7;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C230();
        break;
      case 3:
        OUTLINED_FUNCTION_89_2();
LABEL_7:
        sub_1934982A8();
        break;
      case 4:
        OUTLINED_FUNCTION_147_0();
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934B7D94()
{
  OUTLINED_FUNCTION_75_3();
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 41);
  v11 = *(v0 + 73);
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_133_0();
    v18 = OUTLINED_FUNCTION_85_3(v12, v13, v14, &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Result, v15, &off_1F07BEA88, v16, v17, v36);
    v2 = sub_193447324(v18, v19, v20, v21, v22, v23);
  }

  if (!v1)
  {
    if ((v9 & 1) == 0)
    {
      OUTLINED_FUNCTION_90_4();
      v2 = sub_19393C3E0();
    }

    if ((v10 & 1) == 0)
    {
      OUTLINED_FUNCTION_153_1();
      v30 = OUTLINED_FUNCTION_105_4(v24, v25, v26, &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Reason, v27, &off_1F07BEAB0, v28, v29, v36);
      v2 = sub_193447324(v30, v31, v32, v33, v34, v35);
    }

    if ((v11 & 1) == 0)
    {
      *v37 = *(v0 + 48);
      *&v37[9] = *(v0 + 57);
      OUTLINED_FUNCTION_174(v2, v3, v4, &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetAcquire.ANEHintClientMetric, v5, &off_1F07BEAD8, v6, v7, *v37);
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }
  }
}

void sub_1934B7EE0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8918);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_27_2(v6, xmmword_19394FBC0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("Unknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  v10(v11);
  v12 = OUTLINED_FUNCTION_17_8((v1 + v5));
  v13 = OUTLINED_FUNCTION_25(v12, "Loaded");
  v10(v13);
  v14 = OUTLINED_FUNCTION_59_5();
  *v15 = v0;
  v16 = OUTLINED_FUNCTION_25(v14, "AlreadyLoaded");
  v10(v16);
  v17 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  v18 = OUTLINED_FUNCTION_25(v17, "LoadFailure");
  v10(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B8094()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8930);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_27_2(v6, xmmword_19394FBC0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("ReasonUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  v10(v11);
  v12 = OUTLINED_FUNCTION_17_8((v1 + v5));
  *v12 = "UserInitiated";
  *(v12 + 1) = 13;
  v13 = OUTLINED_FUNCTION_56_0(v12);
  v10(v13);
  v14 = OUTLINED_FUNCTION_59_5();
  *v15 = v0;
  v16 = OUTLINED_FUNCTION_25(v14, "PolicyChange");
  v10(v16);
  v17 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  v18 = OUTLINED_FUNCTION_25(v17, "Prewarm");
  v10(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B824C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8948);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("totalPages");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "residentPages");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B83E0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8960);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v6, xmmword_19394FBB0);
  *v0 = "result";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_65();
  (v10)(v11);
  v12 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v13 = 2;
  *v12 = "memoryCostKB";
  *(v12 + 8) = 12;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  v14 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  *v14 = "reason";
  *(v14 + 1) = 6;
  v14[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B8554()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_62();
LABEL_10:
        sub_1934982A8();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C230();
        break;
      case 1:
        OUTLINED_FUNCTION_89_2();
        goto LABEL_10;
    }
  }
}

void sub_1934B8600()
{
  OUTLINED_FUNCTION_75_3();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 41);
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_133_0();
    v11 = OUTLINED_FUNCTION_85_3(v5, v6, v7, &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetRelease.Result, v8, &off_1F07BEB38, v9, v10, v29);
    sub_193447324(v11, v12, v13, v14, v15, v16);
  }

  if (!v1)
  {
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_90_4();
      sub_19393C3E0();
    }

    if ((v4 & 1) == 0)
    {
      OUTLINED_FUNCTION_153_1();
      v23 = OUTLINED_FUNCTION_105_4(v17, v18, v19, &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason, v20, &off_1F07BEB60, v21, v22, v29);
      sub_193447324(v23, v24, v25, v26, v27, v28);
    }
  }
}

void sub_1934B8714()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8978);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_20(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("Unknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_0_0(v11, "Unloaded");
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_0_0(v13, "AlreadyUnloaded");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_16_6(v15, "Busy");
  v9(v16);
  v17 = OUTLINED_FUNCTION_60_1((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_0_0(v17, "UnloadFailure");
  v9(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B88E0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8990);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v32 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_27_2(v32, xmmword_193952660);
  *v1 = 0;
  *v0 = "ReasonUnknown";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_17_8((v1 + v5));
  *v11 = "UserInitiated";
  *(v11 + 1) = 13;
  v12 = OUTLINED_FUNCTION_56_0(v11);
  v9(v12);
  v13 = OUTLINED_FUNCTION_59_5();
  *v14 = 2;
  v15 = OUTLINED_FUNCTION_25(v13, "PolicyChange");
  v9(v15);
  v16 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  v17 = OUTLINED_FUNCTION_25(v16, "MemoryBudgetPressure");
  v9(v17);
  v18 = OUTLINED_FUNCTION_13((v1 + 4 * v5));
  v19 = OUTLINED_FUNCTION_25(v18, "AcquisitionError");
  v9(v19);
  v20 = OUTLINED_FUNCTION_19_2((v1 + 5 * v5));
  v21 = OUTLINED_FUNCTION_25(v20, "PurgeInactiveAssets");
  v9(v21);
  v22 = OUTLINED_FUNCTION_54_1(6);
  v23 = OUTLINED_FUNCTION_25(v22, "AssetVersionChange");
  v9(v23);
  OUTLINED_FUNCTION_120();
  v25 = OUTLINED_FUNCTION_30_0((v1 + v24));
  v26 = OUTLINED_FUNCTION_25(v25, "PolicyChangeCriticalMemory");
  v9(v26);
  v27 = OUTLINED_FUNCTION_39_3(&v1[v5]);
  v28 = OUTLINED_FUNCTION_25(v27, "PolicyChangeBackgroundSession");
  v9(v28);
  OUTLINED_FUNCTION_44(9 * v5);
  OUTLINED_FUNCTION_131_3(v29);
  v31 = OUTLINED_FUNCTION_25(v30, "ConnectionTermination");
  v9(v31);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934B8B8C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA89A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  *(v5 + 16) = xmmword_1939526E0;
  v6 = v5 + v1;
  v7 = (v5 + v1 + dword_1EAEA89E0);
  *(v5 + v1) = 1;
  *v7 = "reason";
  v7[1] = 6;
  OUTLINED_FUNCTION_107_3();
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v9);
  v11 = *(v10 + 104);
  v12 = OUTLINED_FUNCTION_50_1();
  v11(v12);
  v13 = OUTLINED_FUNCTION_3_1(v6 + v4);
  *v14 = v0;
  v15 = OUTLINED_FUNCTION_16_6(v13, "result");
  v11(v15);
  v16 = OUTLINED_FUNCTION_9_4((v6 + 2 * v4));
  v17 = OUTLINED_FUNCTION_0_0(v16, "fromState");
  v11(v17);
  v18 = OUTLINED_FUNCTION_13((v6 + 3 * v4));
  v19 = OUTLINED_FUNCTION_0_0(v18, "toState");
  v11(v19);
  v20 = OUTLINED_FUNCTION_19_2((v6 + 4 * v4));
  v21 = OUTLINED_FUNCTION_0_0(v20, "memoryCostKB");
  v11(v21);
  v22 = OUTLINED_FUNCTION_60_1((v6 + 5 * v4));
  v23 = OUTLINED_FUNCTION_0_0(v22, "fileResidentInfo");
  v11(v23);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B8D80()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_125();
        goto LABEL_8;
      case 2:
        goto LABEL_8;
      case 3:
      case 4:
        OUTLINED_FUNCTION_147_0();
LABEL_8:
        sub_1934982A8();
        break;
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C230();
        break;
      case 6:
        OUTLINED_FUNCTION_146_0();
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934B8ED4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA89C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v34 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_20(v34, xmmword_1939526F0);
  *v0 = "ReasonUnknown";
  v0[1] = 13;
  OUTLINED_FUNCTION_107_3();
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_18_1(v11, "UserInitiated");
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_0_0(v13, "PolicyChange");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  v16 = OUTLINED_FUNCTION_0_0(v15, "MemoryBudgetPressure");
  v9(v16);
  v17 = OUTLINED_FUNCTION_13((v1 + 4 * v5));
  v18 = OUTLINED_FUNCTION_0_0(v17, "AcquisitionError");
  v9(v18);
  v19 = OUTLINED_FUNCTION_19_2((v1 + 5 * v5));
  v20 = OUTLINED_FUNCTION_18_1(v19, "Prewarm");
  v9(v20);
  v21 = OUTLINED_FUNCTION_14_4(6);
  v22 = OUTLINED_FUNCTION_0_0(v21, "PurgeInactiveAssets");
  v9(v22);
  OUTLINED_FUNCTION_120();
  v24 = OUTLINED_FUNCTION_45_2(v23);
  *v25 = 7;
  v26 = OUTLINED_FUNCTION_0_0(v24, "AssetVersionChange");
  v9(v26);
  v27 = OUTLINED_FUNCTION_39_3((v1 + 8 * v5));
  v28 = OUTLINED_FUNCTION_0_0(v27, "PolicyChangeBackgroundSession");
  v9(v28);
  OUTLINED_FUNCTION_45_2(9 * v5);
  OUTLINED_FUNCTION_131_3(v29);
  v31 = OUTLINED_FUNCTION_0_0(v30, "ConnectionTermination");
  v9(v31);
  v32 = OUTLINED_FUNCTION_14_4(10);
  v33 = OUTLINED_FUNCTION_0_0(v32, "PolicyChangeCriticalMemory");
  v9(v33);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934B9188()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, &qword_1EAEA89D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("ResultUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  *v11 = "Success";
  v11[1] = 7;
  v12 = OUTLINED_FUNCTION_70(v11);
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  *v13 = "Failure";
  *(v13 + 1) = 7;
  v14 = OUTLINED_FUNCTION_70(v13);
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B9308()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA89F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_27_2(v6, xmmword_19394FBC0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("LoadStateUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  v10(v11);
  v12 = OUTLINED_FUNCTION_17_8((v1 + v5));
  v13 = OUTLINED_FUNCTION_25(v12, "Unloaded");
  v10(v13);
  v14 = OUTLINED_FUNCTION_59_5();
  *v15 = v0;
  v16 = OUTLINED_FUNCTION_25(v14, "DynamicMode");
  v10(v16);
  v17 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  v18 = OUTLINED_FUNCTION_25(v17, "Loaded");
  v10(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B94B8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8A08);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("totalPages");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  *v11 = "residentPages";
  v11[1] = 13;
  v12 = OUTLINED_FUNCTION_70(v11);
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  *v13 = "residentRatio";
  *(v13 + 1) = 13;
  v14 = OUTLINED_FUNCTION_70(v13);
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934B9610()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C160();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C230();
    }
  }

  return result;
}

void sub_1934B96D4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8A20);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("validator");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "outcome");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_0_0(v13, "rejectionReason");
  v9(v14);
  v15 = OUTLINED_FUNCTION_13((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "safetyAssets");
  v9(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B9854()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_125();
        goto LABEL_8;
      case 2:
        goto LABEL_8;
      case 3:
        OUTLINED_FUNCTION_147_0();
LABEL_8:
        sub_193498018();
        break;
      case 4:
        OUTLINED_FUNCTION_146_0();
        sub_193498238(v3);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934B9A00()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8A50);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_20(v5, xmmword_193952700);
  OUTLINED_FUNCTION_63("Unknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_0_0(v11, "DenyList");
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_16_6(v13, "OVS");
  v9(v14);
  v15 = OUTLINED_FUNCTION_22_3();
  *v16 = 3;
  v17 = OUTLINED_FUNCTION_0_0(v15, "AdapterModel");
  v9(v17);
  v18 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v19 = OUTLINED_FUNCTION_0_0(v18, "SensitiveContentAnalysisModel");
  v9(v19);
  v20 = OUTLINED_FUNCTION_19_2((v0 + 5 * v4));
  v21 = OUTLINED_FUNCTION_0_0(v20, "LanguageRecognizer");
  v9(v21);
  v22 = OUTLINED_FUNCTION_14_4(6);
  v23 = OUTLINED_FUNCTION_0_0(v22, "LanguageScriptValidator");
  v9(v23);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B9C88()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8A80);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_20(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("Unknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_0_0(v11, "NotApplied");
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_16_6(v13, "Rejected");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_28_4(v15, 7);
  v9(v16);
  v17 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  *v17 = "Replaced";
  *(v17 + 1) = 8;
  v18 = OUTLINED_FUNCTION_1_3(v17);
  v9(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B9EE8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8AB0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v56 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_20(v56, xmmword_193952710);
  OUTLINED_FUNCTION_63("Unknown");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_4_9();
  v11 = OUTLINED_FUNCTION_0_0(v10, "Unspecified");
  v8(v11);
  v12 = OUTLINED_FUNCTION_35_4();
  v13 = OUTLINED_FUNCTION_0_0(v12, "Safe");
  v8(v13);
  v14 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  *v14 = "Drugs";
  *(v14 + 1) = 5;
  v15 = OUTLINED_FUNCTION_1_3(v14);
  v8(v15);
  v16 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v17 = OUTLINED_FUNCTION_0_0(v16, "Hate");
  v8(v17);
  v18 = OUTLINED_FUNCTION_45_2(5 * v4);
  *v19 = 5;
  v20 = OUTLINED_FUNCTION_16_6(v18, "Conspiracies");
  v8(v20);
  v21 = OUTLINED_FUNCTION_14_4(6);
  *v21 = "Violence";
  *(v21 + 1) = 8;
  v22 = OUTLINED_FUNCTION_1_3(v21);
  v8(v22);
  OUTLINED_FUNCTION_120();
  v24 = OUTLINED_FUNCTION_30_0((v0 + v23));
  v25 = OUTLINED_FUNCTION_0_0(v24, "PropertyCrime");
  v8(v25);
  v26 = OUTLINED_FUNCTION_67_1((v0 + 8 * v4));
  v27 = OUTLINED_FUNCTION_0_0(v26, "TerrorismOrExtremism");
  v8(v27);
  OUTLINED_FUNCTION_45_2(9 * v4);
  OUTLINED_FUNCTION_131_3(v28);
  v30 = OUTLINED_FUNCTION_28_4(v29, 4);
  v8(v30);
  v31 = OUTLINED_FUNCTION_32_10();
  v32 = OUTLINED_FUNCTION_16_6(v31, "BodilyFluids");
  v8(v32);
  v33 = OUTLINED_FUNCTION_32_10();
  v34 = OUTLINED_FUNCTION_18_1(v33, "ObsceneGestures");
  v8(v34);
  v35 = OUTLINED_FUNCTION_60_1((v0 + 12 * v4));
  v36 = OUTLINED_FUNCTION_16_6(v35, "NudityOrSexual");
  v8(v36);
  v37 = OUTLINED_FUNCTION_32_10();
  v38 = OUTLINED_FUNCTION_28_4(v37, 7);
  v8(v38);
  v39 = OUTLINED_FUNCTION_60_1((v0 + 14 * v4));
  v40 = OUTLINED_FUNCTION_16_6(v39, "MassLossOfLife");
  v8(v40);
  v41 = OUTLINED_FUNCTION_45_2(15 * v4);
  *v42 = 15;
  v43 = OUTLINED_FUNCTION_16_6(v41, "OffensiveWords");
  v8(v43);
  v44 = OUTLINED_FUNCTION_3_1(v0 + 16 * v4);
  *v45 = 16;
  v46 = OUTLINED_FUNCTION_0_0(v44, "ChildSexualExploitationAndAbuseImagery");
  v8(v46);
  v47 = OUTLINED_FUNCTION_45_2(17 * v4);
  *v48 = 17;
  v49 = OUTLINED_FUNCTION_28_4(v47, 8);
  v8(v49);
  v50 = OUTLINED_FUNCTION_14_4(18);
  v51 = OUTLINED_FUNCTION_28_4(v50, 5);
  v8(v51);
  v52 = OUTLINED_FUNCTION_14_4(19);
  v53 = OUTLINED_FUNCTION_18_1(v52, "Harassment");
  v8(v53);
  v54 = OUTLINED_FUNCTION_32_10();
  *v54 = "Suggestive";
  *(v54 + 1) = 10;
  v55 = OUTLINED_FUNCTION_1_3(v54);
  v8(v55);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934BA320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_115();
  v12 = sub_19393C420();
  __swift_allocate_value_buffer(v12, qword_1EAEA8AC8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v13);
  v15 = *(v14 + 72);
  OUTLINED_FUNCTION_49_0();
  v16 = OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_8_18(v16, xmmword_1939526B0);
  OUTLINED_FUNCTION_83_0("totalInferenceTime");
  v17 = *MEMORY[0x1E69AADC8];
  v18 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v18);
  v20 = *(v19 + 104);
  v21 = OUTLINED_FUNCTION_50_1();
  v20(v21);
  v22 = OUTLINED_FUNCTION_61();
  *v23 = v11;
  v24 = OUTLINED_FUNCTION_5_4(v22, "tokenRate");
  v20(v24);
  v25 = OUTLINED_FUNCTION_19_2((v10 + 2 * v15));
  v26 = OUTLINED_FUNCTION_5_4(v25, "timeToFirstTokenMillis");
  v20(v26);
  OUTLINED_FUNCTION_26_5();
  OUTLINED_FUNCTION_140_0(v27);
  v29 = OUTLINED_FUNCTION_5_4(v28, "extendLatencyMillis");
  v20(v29);
  v30 = OUTLINED_FUNCTION_30_0((v10 + 4 * v15));
  v31 = OUTLINED_FUNCTION_5_4(v30, "outputTokensCount");
  v20(v31);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_121_1(v32);
  v34 = OUTLINED_FUNCTION_5_4(v33, "inputTokensCount");
  v20(v34);
  v35 = OUTLINED_FUNCTION_9_4((v10 + v15 * v9));
  v36 = OUTLINED_FUNCTION_5_4(v35, "inferenceEnvironmentInfo");
  v20(v36);
  v37 = OUTLINED_FUNCTION_13((v10 + a9 - v15));
  *v37 = "speculativeDecodingMetrics";
  *(v37 + 1) = 26;
  v38 = OUTLINED_FUNCTION_41(v37);
  v20(v38);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934BA53C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 5:
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C1E0();
        break;
      case 3:
        OUTLINED_FUNCTION_62();
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_89_2();
LABEL_7:
        sub_193498018();
        break;
      case 7:
      case 8:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      default:
        continue;
    }
  }
}

void sub_1934BA630()
{
  OUTLINED_FUNCTION_103();
  v2 = v0[2];
  v3 = *(v0 + 24);
  v4 = v0[4];
  v5 = *(v0 + 40);
  v6 = v0[6];
  v7 = *(v0 + 56);
  v8 = *(v0 + 72);
  v11 = v0[10];
  v12 = v0[8];
  v13 = *(v0 + 88);
  v10 = *(v0 + 321);
  if ((v0[1] & 1) == 0)
  {
    v9 = *v0;
    OUTLINED_FUNCTION_98();
    sub_19393C3B0();
  }

  if (!v1)
  {
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C3B0();
    }

    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C3B0();
    }

    if ((v7 & 1) == 0)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C3B0();
    }

    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_130();
      sub_19393C360();
    }

    if ((v13 & 1) == 0)
    {
      OUTLINED_FUNCTION_130();
      sub_19393C360();
    }

    memcpy(__dst, v0 + 12, 0x90uLL);
    if (sub_1934A8518(__dst) != 1)
    {
      memcpy(v14, __dst, sizeof(v14));
      OUTLINED_FUNCTION_179();
    }

    if ((v10 & 1) == 0)
    {
      memcpy(__dst, v0 + 30, 0x51uLL);
      OUTLINED_FUNCTION_179();
    }
  }
}

void sub_1934BA88C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8AE0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("baseModel");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "adapter");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_0_0(v13, "draftModel");
  v9(v14);
  v15 = OUTLINED_FUNCTION_13((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_28_4(v15, 9);
  v9(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_0_0(v17, "cloudosVersion");
  v9(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934BAA30()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
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
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_1934BAAE4()
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_75_3();
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[13];
  v7 = v0[16];
  v8 = v0[12];
  v15 = v0[17];
  if (v0[1] != 1)
  {
    v11 = *(v0 + 1);
    v9 = *v0;
    v10 = v0[1];
    OUTLINED_FUNCTION_106();
    sub_193447600();
  }

  if (!v1)
  {
    if (v3 != 1)
    {
      v12 = *(v0 + 3);
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if (v4 != 1)
    {
      v13 = *(v0 + 5);
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if (v6 != 1)
    {
      v14 = *(v0 + 7);
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if (v15)
    {
      OUTLINED_FUNCTION_181();
    }
  }

  OUTLINED_FUNCTION_143_0();
}

void sub_1934BAC98()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8AF8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("name");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "version");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934BADC8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

void sub_1934BAE24()
{
  OUTLINED_FUNCTION_110();
  v2 = v0[2];
  v3 = v0[3];
  if (v0[1])
  {
    v4 = *v0;
    OUTLINED_FUNCTION_181();
  }

  if (!v1)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_181();
    }
  }
}

void sub_1934BAEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_115();
  v12 = sub_19393C420();
  __swift_allocate_value_buffer(v12, qword_1EAEA8B10);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v13);
  v15 = *(v14 + 72);
  OUTLINED_FUNCTION_49_0();
  v16 = OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_8_18(v16, xmmword_1939526B0);
  OUTLINED_FUNCTION_83_0("speculativeDecodingAcceptanceRate");
  v17 = *MEMORY[0x1E69AADC8];
  v18 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v18);
  v20 = *(v19 + 104);
  v21 = OUTLINED_FUNCTION_50_1();
  v20(v21);
  v22 = OUTLINED_FUNCTION_61();
  *v23 = v11;
  v24 = OUTLINED_FUNCTION_5_4(v22, "draftModelInferenceCallCount");
  v20(v24);
  v25 = OUTLINED_FUNCTION_9_4((v10 + 2 * v15));
  v26 = OUTLINED_FUNCTION_5_4(v25, "targetModelInferenceCallCount");
  v20(v26);
  v27 = OUTLINED_FUNCTION_13((v10 + 3 * v15));
  v28 = OUTLINED_FUNCTION_5_4(v27, "draftOutputTokenCount");
  v20(v28);
  v29 = OUTLINED_FUNCTION_19_2((v10 + 4 * v15));
  v30 = OUTLINED_FUNCTION_5_4(v29, "targetOutputTokenCount");
  v20(v30);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_140_0(v31);
  v33 = OUTLINED_FUNCTION_5_4(v32, "draftModelTotalInferenceLatencyMillis");
  v20(v33);
  v34 = OUTLINED_FUNCTION_30_0((v10 + v15 * v9));
  v35 = OUTLINED_FUNCTION_5_4(v34, "targetModelTotalInferenceLatencyMillis");
  v20(v35);
  OUTLINED_FUNCTION_33_0(a9);
  OUTLINED_FUNCTION_121_1(v36);
  *v37 = "draftSteps";
  v37[1] = 10;
  v38 = OUTLINED_FUNCTION_41(v37);
  v20(v38);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934BB110()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_98();
        sub_19393C160();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      case 6:
      case 7:
      case 8:
        OUTLINED_FUNCTION_98();
        sub_19393C230();
        break;
      default:
        continue;
    }
  }
}

void sub_1934BB1D0()
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_75_3();
  v2 = v1[2];
  v3 = *(v1 + 12);
  v4 = v1[4];
  v5 = *(v1 + 20);
  v6 = v1[6];
  v7 = *(v1 + 28);
  v16[0] = *(v1 + 36);
  v12 = *(v1 + 5);
  v15 = *(v1 + 48);
  v10 = *(v1 + 7);
  v13 = *(v1 + 64);
  v14 = v1[8];
  v9 = *(v1 + 9);
  v11 = *(v1 + 80);
  if ((v1[1] & 1) == 0)
  {
    v8 = *v1;
    OUTLINED_FUNCTION_126_1();
    sub_19393C340();
  }

  if (!v0)
  {
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_90_4();
      sub_19393C3D0();
    }

    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v7 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v16[0] & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v15 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3E0();
    }

    if ((v13 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3E0();
    }

    if ((v11 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3E0();
    }
  }

  OUTLINED_FUNCTION_143_0();
}

void sub_1934BB38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_115();
  v12 = sub_19393C420();
  __swift_allocate_value_buffer(v12, qword_1EAEA8B28);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v13);
  v15 = *(v14 + 72);
  OUTLINED_FUNCTION_49_0();
  v16 = OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_8_18(v16, xmmword_1939526B0);
  OUTLINED_FUNCTION_83_0("sessionEventType");
  v17 = *MEMORY[0x1E69AADC8];
  v18 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v18);
  v20 = *(v19 + 104);
  v21 = OUTLINED_FUNCTION_50_1();
  v20(v21);
  v22 = OUTLINED_FUNCTION_61();
  *v23 = v11;
  v24 = OUTLINED_FUNCTION_5_4(v22, "supportedAssetBundleIdentifiers");
  v20(v24);
  v25 = OUTLINED_FUNCTION_9_4((v10 + 2 * v15));
  v26 = OUTLINED_FUNCTION_5_4(v25, "onBehalfOfPID");
  v20(v26);
  v27 = OUTLINED_FUNCTION_13((v10 + 3 * v15));
  v28 = OUTLINED_FUNCTION_5_4(v27, "onBehalfOfBundleIdentifier");
  v20(v28);
  v29 = OUTLINED_FUNCTION_19_2((v10 + 4 * v15));
  v30 = OUTLINED_FUNCTION_5_4(v29, "createdByPID");
  v20(v30);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_140_0(v31);
  v33 = OUTLINED_FUNCTION_5_4(v32, "createdByBundleIdentifier");
  v20(v33);
  v34 = OUTLINED_FUNCTION_30_0((v10 + v15 * v9));
  v35 = OUTLINED_FUNCTION_5_4(v34, "containsSensitiveData");
  v20(v35);
  OUTLINED_FUNCTION_33_0(a9);
  OUTLINED_FUNCTION_121_1(v36);
  *v37 = "sessionEventResult";
  v37[1] = 18;
  v38 = OUTLINED_FUNCTION_41(v37);
  v20(v38);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934BB5A8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
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
        OUTLINED_FUNCTION_98();
        sub_19393C1B0();
        break;
      case 3:
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      case 4:
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 7:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 8:
        OUTLINED_FUNCTION_89_2();
LABEL_8:
        sub_1934982A8();
        break;
      default:
        continue;
    }
  }
}

void sub_1934BB700()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8B40);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_20(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("SessionEventTypeUnknown");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_4_9();
  v11 = OUTLINED_FUNCTION_16_6(v10, "Add");
  v8(v11);
  v12 = OUTLINED_FUNCTION_35_4();
  v13 = OUTLINED_FUNCTION_0_0(v12, "Remove");
  v8(v13);
  v14 = OUTLINED_FUNCTION_22_3();
  *v15 = 3;
  v16 = OUTLINED_FUNCTION_0_0(v14, "Prewarm");
  v8(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934BB8A0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8B58);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_27_2(v6, xmmword_19394FBD0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("SessionEventResultUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  v10(v11);
  v12 = OUTLINED_FUNCTION_17_8((v1 + v5));
  v13 = OUTLINED_FUNCTION_25(v12, "Success");
  v10(v13);
  v14 = OUTLINED_FUNCTION_59_5();
  *v15 = v0;
  *v14 = "FailedDueToUseCaseDisabled";
  v14[1] = 26;
  v16 = OUTLINED_FUNCTION_56_0(v14);
  v10(v16);
  v17 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  *v17 = "FailedDueToSessionNotFound";
  *(v17 + 1) = 26;
  v18 = OUTLINED_FUNCTION_56_0(v17);
  v10(v18);
  v19 = OUTLINED_FUNCTION_13((v1 + 4 * v5));
  v20 = OUTLINED_FUNCTION_25(v19, "FailedForUnknownReason");
  v10(v20);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934BBA78()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8B70);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v121 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v121, xmmword_193952720);
  OUTLINED_FUNCTION_83_0("inputLength");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_61();
  *v12 = v1;
  v13 = OUTLINED_FUNCTION_5_4(v11, "maxTokenLength");
  v9(v13);
  v14 = OUTLINED_FUNCTION_9_4((v0 + 2 * v5));
  v15 = OUTLINED_FUNCTION_5_4(v14, "compressedInputLength");
  v9(v15);
  v16 = OUTLINED_FUNCTION_13((v0 + 3 * v5));
  v17 = OUTLINED_FUNCTION_5_4(v16, "outputLength");
  v9(v17);
  v18 = OUTLINED_FUNCTION_55_2((v0 + 4 * v5));
  *v18 = "inputTokensCount";
  *(v18 + 1) = 16;
  v19 = OUTLINED_FUNCTION_41(v18);
  v9(v19);
  v20 = OUTLINED_FUNCTION_38_2();
  *v21 = 10;
  v22 = OUTLINED_FUNCTION_5_4(v20, "overestimatedInputTokensCount");
  v9(v22);
  v23 = OUTLINED_FUNCTION_52_0();
  *v24 = 11;
  *v23 = "isInputTruncated";
  v23[1] = 16;
  v25 = OUTLINED_FUNCTION_41(v23);
  v9(v25);
  OUTLINED_FUNCTION_33_0(8 * v5);
  OUTLINED_FUNCTION_187_0(v26);
  v28 = OUTLINED_FUNCTION_5_4(v27, "outputTokensCount");
  v9(v28);
  v29 = OUTLINED_FUNCTION_19_2((v0 + 8 * v5));
  v30 = OUTLINED_FUNCTION_36_0(v29, "styles");
  v9(v30);
  v31 = OUTLINED_FUNCTION_44(9 * v5);
  *v32 = 6;
  *v31 = "contextAugmented";
  v31[1] = 16;
  v33 = OUTLINED_FUNCTION_41(v31);
  v9(v33);
  v34 = OUTLINED_FUNCTION_3_1(v0 + 10 * v5);
  *v35 = 13;
  v36 = OUTLINED_FUNCTION_5_4(v34, "isContextAugmented");
  v9(v36);
  v37 = OUTLINED_FUNCTION_30_0((v0 + 11 * v5));
  *v37 = "isInputSafe";
  *(v37 + 1) = v38;
  v39 = OUTLINED_FUNCTION_41(v37);
  v9(v39);
  v40 = OUTLINED_FUNCTION_39_3((v0 + 12 * v5));
  v41 = OUTLINED_FUNCTION_36_0(v40, "isSummarySafe");
  v9(v41);
  v42 = OUTLINED_FUNCTION_52_0();
  *v43 = 14;
  v44 = OUTLINED_FUNCTION_23_7(v42, "isInputSanitized");
  v9(v44);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_180_0(v45);
  v47 = OUTLINED_FUNCTION_5_4(v46, "isOutputFactuallyConsistent");
  v9(v47);
  v48 = OUTLINED_FUNCTION_33_0(16 * v5);
  *v49 = 16;
  v50 = OUTLINED_FUNCTION_36_0(v48, "isOutputSanitized");
  v9(v50);
  v51 = OUTLINED_FUNCTION_67_1((v0 + 16 * v5));
  v52 = OUTLINED_FUNCTION_36_0(v51, "latencyPreprocessing");
  v9(v52);
  v53 = OUTLINED_FUNCTION_44(17 * v5);
  *v54 = 18;
  v55 = OUTLINED_FUNCTION_5_4(v53, "latencyInputSanitization");
  v9(v55);
  v56 = OUTLINED_FUNCTION_72();
  *v57 = 19;
  v58 = OUTLINED_FUNCTION_15(v56, 16);
  v9(v58);
  v59 = OUTLINED_FUNCTION_67_1((v0 + 19 * v5));
  v60 = OUTLINED_FUNCTION_23_7(v59, "latencyPostprocessing");
  v9(v60);
  v61 = OUTLINED_FUNCTION_52_0();
  *v62 = 21;
  v63 = OUTLINED_FUNCTION_5_4(v61, "latencyFactualConsistencyClassification");
  v9(v63);
  v64 = OUTLINED_FUNCTION_52_0();
  *v65 = 22;
  v66 = OUTLINED_FUNCTION_23_7(v64, "inputHasUnsupportedEmoji");
  v9(v66);
  v67 = OUTLINED_FUNCTION_52_0();
  *v68 = 23;
  v69 = OUTLINED_FUNCTION_15(v67, 18);
  v9(v69);
  v70 = OUTLINED_FUNCTION_52_0();
  *v71 = 24;
  v72 = OUTLINED_FUNCTION_23_7(v70, "inputHasTapback");
  v9(v72);
  v73 = OUTLINED_FUNCTION_52_0();
  *v74 = 25;
  v75 = OUTLINED_FUNCTION_15(v73, 11);
  v9(v75);
  v76 = OUTLINED_FUNCTION_52_0();
  *v77 = 26;
  v78 = OUTLINED_FUNCTION_23_7(v76, "inputHasCaption");
  v9(v78);
  v79 = OUTLINED_FUNCTION_52_0();
  *v80 = 27;
  v81 = OUTLINED_FUNCTION_15(v79, 10);
  v9(v81);
  v82 = OUTLINED_FUNCTION_52_0();
  *v83 = 28;
  v84 = OUTLINED_FUNCTION_15(v82, 11);
  v9(v84);
  v85 = OUTLINED_FUNCTION_52_0();
  *v86 = 29;
  v87 = OUTLINED_FUNCTION_15(v85, 14);
  v9(v87);
  v88 = OUTLINED_FUNCTION_52_0();
  *v89 = 30;
  v90 = OUTLINED_FUNCTION_15(v88, 13);
  v9(v90);
  v91 = OUTLINED_FUNCTION_52_0();
  *v92 = 31;
  v93 = OUTLINED_FUNCTION_15(v91, 12);
  v9(v93);
  v94 = OUTLINED_FUNCTION_33_0(32 * v5);
  *v95 = 32;
  v96 = OUTLINED_FUNCTION_23_7(v94, "recipientsLength");
  v9(v96);
  v97 = OUTLINED_FUNCTION_3_1(v0 + 32 * v5);
  *v98 = 33;
  v99 = OUTLINED_FUNCTION_15(v97, 17);
  v9(v99);
  v100 = OUTLINED_FUNCTION_44(33 * v5);
  *v101 = 34;
  v102 = OUTLINED_FUNCTION_23_7(v100, "languageDetected");
  v9(v102);
  v103 = OUTLINED_FUNCTION_52_0();
  *v104 = 35;
  v105 = OUTLINED_FUNCTION_23_7(v103, "numChunks");
  v9(v105);
  v106 = OUTLINED_FUNCTION_52_0();
  *v107 = 36;
  v108 = OUTLINED_FUNCTION_15(v106, 10);
  v9(v108);
  v109 = OUTLINED_FUNCTION_52_0();
  *v110 = 37;
  v111 = OUTLINED_FUNCTION_15(v109, 11);
  v9(v111);
  v112 = OUTLINED_FUNCTION_52_0();
  *v113 = 38;
  v114 = OUTLINED_FUNCTION_15(v112, 12);
  v9(v114);
  v115 = OUTLINED_FUNCTION_52_0();
  *v116 = 39;
  v117 = OUTLINED_FUNCTION_15(v115, 25);
  v9(v117);
  v118 = OUTLINED_FUNCTION_52_0();
  *v119 = 40;
  *v118 = "modelType";
  v118[1] = 9;
  v120 = OUTLINED_FUNCTION_41(v118);
  v9(v120);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934BC1B0()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v1 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 9:
      case 10:
      case 12:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 35:
      case 36:
      case 37:
      case 40:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      case 5:
        sub_1934984D4(v0 + 112, v3, &type metadata for GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.SummarizationStyle, v2, &off_1F07BEF08);
        break;
      case 6:
      case 7:
      case 8:
      case 11:
      case 13:
      case 14:
      case 15:
      case 16:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 38:
      case 39:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
        OUTLINED_FUNCTION_98();
        sub_19393C1E0();
        break;
      case 34:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_1934BC39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v7 = a2;
  v8 = v3[2];
  v9 = *(v3 + 24);
  v79 = v3[4];
  v81 = *(v3 + 40);
  v77 = v3[6];
  v80 = *(v3 + 56);
  v75 = v3[8];
  v78 = *(v3 + 72);
  v73 = v3[10];
  v76 = *(v3 + 88);
  v10 = v3[12];
  v72 = *(v3 + 104);
  v11 = v3[14];
  v70 = *(v3 + 120);
  v12 = *(v3 + 121);
  v13 = *(v3 + 122);
  v14 = *(v3 + 123);
  v15 = *(v3 + 124);
  v69 = *(v3 + 125);
  v71 = *(v3 + 126);
  v16 = v3[16];
  v68 = *(v3 + 136);
  v17 = v3[18];
  v67 = *(v3 + 152);
  v18 = v3[20];
  v66 = *(v3 + 168);
  v19 = v3[22];
  v65 = *(v3 + 184);
  v20 = v3[24];
  v63 = *(v3 + 200);
  v64 = *(v3 + 201);
  v62 = *(v3 + 202);
  v60 = *(v3 + 203);
  v61 = *(v3 + 204);
  v59 = *(v3 + 205);
  v56 = v3[26];
  v58 = *(v3 + 216);
  v54 = v3[28];
  v57 = *(v3 + 232);
  v52 = v3[30];
  v55 = *(v3 + 248);
  v50 = v3[32];
  v53 = *(v3 + 264);
  v47 = v3[34];
  v51 = *(v3 + 280);
  v45 = v3[36];
  v49 = *(v3 + 296);
  v44 = v3[38];
  v46 = *(v3 + 312);
  v42 = v3[40];
  v48 = v3[41];
  v38 = v3[42];
  v43 = *(v3 + 344);
  v37 = v3[44];
  v41 = *(v3 + 360);
  v34 = v3[46];
  v39 = *(v3 + 376);
  v40 = *(v3 + 377);
  v36 = *(v3 + 378);
  v33 = v3[48];
  v35 = *(v3 + 392);
  v74 = *(v3 + 89);
  if ((v3[1] & 1) == 0)
  {
    v32 = v3[14];
    v21 = *v3;
    v31 = *(v3 + 122);
    v5 = *(v3 + 121);
    v24 = *(v3 + 123);
    v25 = *(v3 + 124);
    v26 = *(v3 + 24);
    sub_19393C360();
    v9 = v26;
    v11 = v32;
    v15 = v25;
    v14 = v24;
    v12 = v5;
    v6 = a3;
    v7 = a2;
    v13 = v31;
  }

  if (!v4)
  {
    if ((v9 & 1) == 0)
    {
      OUTLINED_FUNCTION_71_5();
      OUTLINED_FUNCTION_73_3();
      sub_19393C360();
      v11 = OUTLINED_FUNCTION_46_3();
    }

    if ((v81 & 1) == 0)
    {
      OUTLINED_FUNCTION_71_5();
      OUTLINED_FUNCTION_73_3();
      sub_19393C360();
      v11 = OUTLINED_FUNCTION_46_3();
    }

    if ((v80 & 1) == 0)
    {
      OUTLINED_FUNCTION_71_5();
      OUTLINED_FUNCTION_73_3();
      sub_19393C360();
      v11 = OUTLINED_FUNCTION_46_3();
    }

    if ((v78 & 1) == 0)
    {
      OUTLINED_FUNCTION_71_5();
      OUTLINED_FUNCTION_73_3();
      sub_19393C360();
      v11 = OUTLINED_FUNCTION_46_3();
    }

    if ((v76 & 1) == 0)
    {
      OUTLINED_FUNCTION_71_5();
      OUTLINED_FUNCTION_73_3();
      sub_19393C360();
      v11 = OUTLINED_FUNCTION_46_3();
    }

    if (v74 != 2)
    {
      OUTLINED_FUNCTION_71_5();
      OUTLINED_FUNCTION_73_3();
      sub_19393C2E0();
      v11 = OUTLINED_FUNCTION_46_3();
    }

    if ((v72 & 1) == 0)
    {
      OUTLINED_FUNCTION_71_5();
      OUTLINED_FUNCTION_73_3();
      sub_19393C360();
      OUTLINED_FUNCTION_81_3();
      v11 = v5;
    }

    if (*(v11 + 16))
    {
      v82 = v15;
      sub_193498B44(v11, 5, v7, &type metadata for GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.SummarizationStyle, v6, &off_1F07BEF08);
      v15 = v82;
    }

    if (v70 == 2)
    {
      v27 = v71;
    }

    else
    {
      v13 = v14;
      v14 = v15;
      OUTLINED_FUNCTION_73_3();
      sub_19393C2E0();
      OUTLINED_FUNCTION_175_2();
      OUTLINED_FUNCTION_81_3();
    }

    if (v12 != 2)
    {
      v13 = v14;
      v14 = v15;
      OUTLINED_FUNCTION_73_3();
      sub_19393C2E0();
      OUTLINED_FUNCTION_175_2();
      OUTLINED_FUNCTION_81_3();
    }

    if (v13 != 2)
    {
      v28 = v14;
      v29 = v15;
      OUTLINED_FUNCTION_73_3();
      sub_19393C2E0();
      OUTLINED_FUNCTION_175_2();
      v15 = v29;
      v14 = v28;
    }

    if (v14 != 2)
    {
      v30 = v15;
      OUTLINED_FUNCTION_73_3();
      sub_19393C2E0();
      OUTLINED_FUNCTION_175_2();
      v15 = v30;
    }

    if (v15 != 2)
    {
      OUTLINED_FUNCTION_73_3();
      sub_19393C2E0();
      OUTLINED_FUNCTION_175_2();
    }

    if (v69 != 2)
    {
      OUTLINED_FUNCTION_73_3();
      sub_19393C2E0();
      OUTLINED_FUNCTION_175_2();
    }

    if (v27 != 2)
    {
      OUTLINED_FUNCTION_73_3();
      sub_19393C2E0();
    }

    if ((v68 & 1) == 0)
    {
      sub_19393C3B0();
    }

    if ((v67 & 1) == 0)
    {
      OUTLINED_FUNCTION_178();
    }

    if ((v66 & 1) == 0)
    {
      OUTLINED_FUNCTION_178();
    }

    if ((v65 & 1) == 0)
    {
      OUTLINED_FUNCTION_178();
    }

    if ((v63 & 1) == 0)
    {
      OUTLINED_FUNCTION_178();
    }

    if (v64 != 2)
    {
      sub_19393C2E0();
    }

    if (v62 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v60 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v61 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v59 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if ((v58 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v57 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v55 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v53 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v51 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v49 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v46 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if (v48)
    {
      OUTLINED_FUNCTION_181();
    }

    if ((v43 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v41 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v39 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if (v40 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v36 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if ((v35 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }
  }
}

void sub_1934BCBF8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8B88);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_20(v5, xmmword_1939526E0);
  OUTLINED_FUNCTION_63("Unknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_0_0(v11, "Topic");
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_28_4(v13, 7);
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "Synopsis");
  v9(v16);
  v17 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_16_6(v17, "VisualConcept");
  v9(v18);
  v19 = OUTLINED_FUNCTION_19_2((v0 + 5 * v4));
  *v19 = "VisualTopLine";
  *(v19 + 1) = 13;
  v20 = OUTLINED_FUNCTION_1_3(v19);
  v9(v20);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934BCDF0()
{
  OUTLINED_FUNCTION_115();
  v3 = sub_19393C420();
  __swift_allocate_value_buffer(v3, qword_1EAEA8BA0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v4);
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_49_0();
  v82 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v82, xmmword_193952730);
  OUTLINED_FUNCTION_83_0("urgencyModelInferenceEnabled");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  v10(v11);
  v12 = OUTLINED_FUNCTION_61();
  *v13 = v2;
  v14 = OUTLINED_FUNCTION_5_4(v12, "fallbackToLLMUrgencyClassifier");
  v10(v14);
  v15 = OUTLINED_FUNCTION_9_4((v1 + 2 * v6));
  v16 = OUTLINED_FUNCTION_5_4(v15, "inputLength");
  v10(v16);
  v17 = OUTLINED_FUNCTION_13((v1 + 3 * v6));
  v18 = OUTLINED_FUNCTION_5_4(v17, "inputTokensCount");
  v10(v18);
  v19 = OUTLINED_FUNCTION_19_2((v1 + 4 * v6));
  v20 = OUTLINED_FUNCTION_36_0(v19, "overestimatedInputTokensCount");
  v10(v20);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_140_0(v21);
  v23 = OUTLINED_FUNCTION_5_4(v22, "isLLMClassifierTriggered");
  v10(v23);
  v24 = OUTLINED_FUNCTION_30_0((v1 + v6 * v0));
  v25 = OUTLINED_FUNCTION_23_7(v24, "languageDetected");
  v10(v25);
  OUTLINED_FUNCTION_33_0(8 * v6);
  OUTLINED_FUNCTION_121_1(v26);
  v28 = OUTLINED_FUNCTION_5_4(v27, "responseUrgency");
  v10(v28);
  v29 = OUTLINED_FUNCTION_55_2((v1 + 8 * v6));
  v30 = OUTLINED_FUNCTION_36_0(v29, "responseUrgencyFastClassifier");
  v10(v30);
  v31 = OUTLINED_FUNCTION_44(9 * v6);
  *v32 = 10;
  v33 = OUTLINED_FUNCTION_15(v31, 28);
  v10(v33);
  v34 = OUTLINED_FUNCTION_52_0();
  *v35 = 11;
  v36 = OUTLINED_FUNCTION_23_7(v34, "confidenceBucket");
  v10(v36);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_187_0(v37);
  v39 = OUTLINED_FUNCTION_15(v38, 26);
  v10(v39);
  v40 = OUTLINED_FUNCTION_52_0();
  *v41 = 13;
  v42 = OUTLINED_FUNCTION_5_4(v40, "latencyFastClassifier");
  v10(v42);
  v43 = OUTLINED_FUNCTION_52_0();
  *v44 = 14;
  v45 = OUTLINED_FUNCTION_5_4(v43, "latencyLLMClassifier");
  v10(v45);
  v46 = OUTLINED_FUNCTION_52_0();
  *v47 = 15;
  v48 = OUTLINED_FUNCTION_15(v46, 24);
  v10(v48);
  v49 = OUTLINED_FUNCTION_33_0(16 * v6);
  *v50 = 16;
  v51 = OUTLINED_FUNCTION_36_0(v49, "inputHasAttachment");
  v10(v51);
  v52 = OUTLINED_FUNCTION_3_1(v1 + 16 * v6);
  *v53 = 17;
  v54 = OUTLINED_FUNCTION_23_7(v52, "inputHasTapback");
  v10(v54);
  v55 = OUTLINED_FUNCTION_44(17 * v6);
  *v56 = 18;
  v57 = OUTLINED_FUNCTION_23_7(v55, "inputHasURL");
  v10(v57);
  v58 = OUTLINED_FUNCTION_52_0();
  *v59 = 19;
  v60 = OUTLINED_FUNCTION_15(v58, 15);
  v10(v60);
  v61 = OUTLINED_FUNCTION_52_0();
  *v62 = 20;
  v63 = OUTLINED_FUNCTION_15(v61, 10);
  v10(v63);
  v64 = OUTLINED_FUNCTION_52_0();
  *v65 = 21;
  v66 = OUTLINED_FUNCTION_23_7(v64, "titleLength");
  v10(v66);
  v67 = OUTLINED_FUNCTION_52_0();
  *v68 = 22;
  v69 = OUTLINED_FUNCTION_15(v67, 14);
  v10(v69);
  v70 = OUTLINED_FUNCTION_52_0();
  *v71 = 23;
  v72 = OUTLINED_FUNCTION_15(v70, 13);
  v10(v72);
  v73 = OUTLINED_FUNCTION_52_0();
  *v74 = 24;
  v75 = OUTLINED_FUNCTION_15(v73, 12);
  v10(v75);
  v76 = OUTLINED_FUNCTION_52_0();
  *v77 = 25;
  v78 = OUTLINED_FUNCTION_15(v76, 16);
  v10(v78);
  v79 = OUTLINED_FUNCTION_52_0();
  *v80 = 26;
  *v79 = "attachmentsLength";
  v79[1] = 17;
  v81 = OUTLINED_FUNCTION_41(v79);
  v10(v81);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934BD2E8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 6:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 3:
      case 4:
      case 5:
      case 8:
      case 10:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      case 7:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 9:
        OUTLINED_FUNCTION_98();
        sub_19393C160();
        break;
      case 11:
        sub_1934982A8();
        break;
      case 12:
      case 13:
      case 14:
        OUTLINED_FUNCTION_98();
        sub_19393C1E0();
        break;
      default:
        continue;
    }
  }
}

void sub_1934BD470()
{
  v2 = *(v0 + 1);
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v47 = *(v0 + 24);
  v54 = *(v0 + 32);
  v46 = *(v0 + 40);
  v48 = *(v0 + 48);
  v5 = *(v0 + 49);
  v45 = *(v0 + 56);
  v51 = *(v0 + 64);
  v42 = *(v0 + 72);
  v6 = *(v0 + 84);
  v43 = *(v0 + 88);
  v44 = *(v0 + 80);
  v39 = *(v0 + 96);
  v40 = *(v0 + 121);
  v41 = *(v0 + 104);
  v7 = *(v0 + 128);
  v8 = *(v0 + 144);
  v35 = *(v0 + 152);
  v36 = *(v0 + 136);
  v9 = *(v0 + 160);
  v34 = *(v0 + 168);
  v55 = *(v0 + 169);
  v49 = *(v0 + 170);
  v50 = *(v0 + 171);
  v37 = *(v0 + 172);
  v38 = *(v0 + 173);
  v33 = *(v0 + 184);
  v30 = *(v0 + 192);
  v31 = *(v0 + 176);
  v32 = *(v0 + 200);
  v28 = *(v0 + 208);
  v10 = *(v0 + 216);
  v26 = *(v0 + 224);
  v29 = *(v0 + 232);
  v24 = *(v0 + 240);
  v27 = *(v0 + 248);
  v25 = *(v0 + 264);
  v21 = *(v0 + 272);
  v22 = *(v0 + 256);
  v23 = *(v0 + 280);
  if (*v0 != 2)
  {
    v11 = *(v0 + 49);
    sub_19393C2E0();
  }

  if (!v1)
  {
    if (v2 != 2)
    {
      sub_19393C2E0();
    }

    if ((v4 & 1) == 0)
    {
      sub_19393C360();
    }

    v12 = v55;
    if ((v54 & 1) == 0)
    {
      OUTLINED_FUNCTION_88_3();
      sub_19393C360();
    }

    v14 = v49;
    v13 = v50;
    if ((v48 & 1) == 0)
    {
      OUTLINED_FUNCTION_88_3();
      sub_19393C360();
      v13 = v50;
      v14 = v49;
      v12 = v55;
    }

    if (v5 != 2)
    {
      OUTLINED_FUNCTION_88_3();
      sub_19393C2E0();
    }

    if (v51)
    {
      OUTLINED_FUNCTION_185_0();
      sub_19393C3C0();
    }

    if ((v44 & 1) == 0)
    {
      OUTLINED_FUNCTION_88_3();
      sub_19393C360();
    }

    if ((v43 & 1) == 0)
    {
      OUTLINED_FUNCTION_148_1();
      sub_19393C340();
    }

    if ((v41 & 1) == 0)
    {
      OUTLINED_FUNCTION_88_3();
      sub_19393C360();
    }

    if ((v40 & 1) == 0)
    {
      v52 = *(v0 + 112);
      v53 = *(v0 + 120);
      OUTLINED_FUNCTION_185_0();
      sub_193447324(v15, v16, v17, v18, v19, v20);
    }

    if ((v36 & 1) == 0)
    {
      OUTLINED_FUNCTION_148_1();
      sub_19393C3B0();
    }

    if ((v35 & 1) == 0)
    {
      OUTLINED_FUNCTION_148_1();
      sub_19393C3B0();
    }

    if ((v34 & 1) == 0)
    {
      OUTLINED_FUNCTION_148_1();
      sub_19393C3B0();
    }

    if (v12 != 2)
    {
      OUTLINED_FUNCTION_88_3();
      sub_19393C2E0();
    }

    if (v14 != 2)
    {
      OUTLINED_FUNCTION_88_3();
      sub_19393C2E0();
    }

    if (v13 != 2)
    {
      OUTLINED_FUNCTION_88_3();
      sub_19393C2E0();
    }

    if (v37 != 2)
    {
      OUTLINED_FUNCTION_115_3();
      sub_19393C2E0();
    }

    if (v38 != 2)
    {
      OUTLINED_FUNCTION_115_3();
      sub_19393C2E0();
    }

    if ((v33 & 1) == 0)
    {
      OUTLINED_FUNCTION_115_3();
      sub_19393C360();
    }

    if ((v32 & 1) == 0)
    {
      OUTLINED_FUNCTION_115_3();
      sub_19393C360();
    }

    if ((v10 & 1) == 0)
    {
      OUTLINED_FUNCTION_115_3();
      sub_19393C360();
    }

    if ((v29 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v27 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v25 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v23 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }
  }
}

void sub_1934BDA04()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8BB8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_27_2(v6, xmmword_19394FBD0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("Unknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  v10(v11);
  v12 = OUTLINED_FUNCTION_17_8((v1 + v5));
  v13 = OUTLINED_FUNCTION_25(v12, "Today");
  v10(v13);
  v14 = OUTLINED_FUNCTION_59_5();
  *v15 = v0;
  v16 = OUTLINED_FUNCTION_25(v14, "Within24Hours");
  v10(v16);
  v17 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  v18 = OUTLINED_FUNCTION_25(v17, "After24Hours");
  v10(v18);
  v19 = OUTLINED_FUNCTION_13((v1 + 4 * v5));
  v20 = OUTLINED_FUNCTION_25(v19, "NoEventTime");
  v10(v20);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934BDBF4()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C190();
    }
  }

  return result;
}

uint64_t sub_1934BDC40()
{
  if ((*(v0 + 8) & 1) == 0)
  {
    OUTLINED_FUNCTION_292();
    return sub_19393C360();
  }

  return result;
}

void sub_1934BDCE0()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8BE8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("fromStatus");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  *v11 = "toStatus";
  v11[1] = 8;
  v12 = OUTLINED_FUNCTION_70(v11);
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  *v13 = "duration";
  *(v13 + 1) = 8;
  v14 = OUTLINED_FUNCTION_70(v13);
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934BDE38()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C1E0();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C190();
    }
  }

  return result;
}

void sub_1934BDEB0()
{
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_276();
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_95_3();
    sub_19393C360();
  }

  if (!v1)
  {
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v4 & 1) == 0)
    {
      OUTLINED_FUNCTION_126_1();
      sub_19393C3B0();
    }
  }
}

void sub_1934BDFB0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8C00);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v6, xmmword_1939526E0);
  OUTLINED_FUNCTION_83_0("outputTokensCount");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  v10(v11);
  v12 = OUTLINED_FUNCTION_61();
  *v13 = v1;
  v14 = OUTLINED_FUNCTION_5_4(v12, "tokensPerSecond");
  v10(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 2 * v5));
  v16 = OUTLINED_FUNCTION_5_4(v15, "isSignedIn");
  v10(v16);
  v17 = OUTLINED_FUNCTION_13((v0 + 3 * v5));
  v18 = OUTLINED_FUNCTION_5_4(v17, "modelUsed");
  v10(v18);
  v19 = OUTLINED_FUNCTION_19_2((v0 + 4 * v5));
  v20 = OUTLINED_FUNCTION_5_4(v19, "webSearchUsed");
  v10(v20);
  v21 = OUTLINED_FUNCTION_38_2();
  *v22 = 6;
  *v21 = "accountType";
  v21[1] = 11;
  v23 = OUTLINED_FUNCTION_41(v21);
  v10(v23);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934BE188()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C1E0();
        break;
      case 3:
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 6:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      default:
        continue;
    }
  }
}

void sub_1934BE268()
{
  OUTLINED_FUNCTION_75_3();
  v2 = v0[2];
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  v15 = *(v0 + 65);
  if ((v0[1] & 1) == 0)
  {
    v8 = *v0;
    OUTLINED_FUNCTION_95_3();
    sub_19393C360();
  }

  if (!v1)
  {
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_126_1();
      sub_19393C3B0();
    }

    if (v4 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v6)
    {
      OUTLINED_FUNCTION_181();
    }

    if (v7 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if ((v15 & 1) == 0)
    {
      v16 = v0[7];
      v17 = *(v0 + 64);
      OUTLINED_FUNCTION_106();
      sub_193447324(v9, v10, v11, v12, v13, v14);
    }
  }
}

void sub_1934BE3FC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8C18);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("PartnerCloudAccountTypeUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  *v11 = "Free";
  v11[1] = 4;
  v12 = OUTLINED_FUNCTION_70(v11);
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_48(v13, "Premium");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934BE580(void *a1@<X8>)
{
  OUTLINED_FUNCTION_184();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  GenerativeFunctionsInstrumentationError.GenericError.init()(v3);
  *a1 = v1;
}

void sub_1934BE5BC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8C30);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_11_3(v6, xmmword_193952700);
  OUTLINED_FUNCTION_63("genericError");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  v10(v11);
  v12 = OUTLINED_FUNCTION_29_1();
  v13 = OUTLINED_FUNCTION_0_0(v12, "modelManagerSessionError");
  v10(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  v15 = OUTLINED_FUNCTION_0_0(v14, "modelManagerInferenceError");
  v10(v15);
  v16 = OUTLINED_FUNCTION_13((v1 + 3 * v5));
  v17 = OUTLINED_FUNCTION_0_0(v16, "generativeFunctionError");
  v10(v17);
  v18 = OUTLINED_FUNCTION_19_2((v1 + 4 * v5));
  v19 = OUTLINED_FUNCTION_0_0(v18, "tokenGenerationError");
  v10(v19);
  OUTLINED_FUNCTION_45_2(5 * v5);
  OUTLINED_FUNCTION_140_0(v20);
  v22 = OUTLINED_FUNCTION_0_0(v21, "summarizationError");
  v10(v22);
  v23 = OUTLINED_FUNCTION_30_0((v1 + v5 * v0));
  v24 = OUTLINED_FUNCTION_0_0(v23, "classificationError");
  v10(v24);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934BEC08@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_123_1();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result = GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError.init()();
  *a1 = v1;
  return result;
}

uint64_t sub_1934BEC44@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_123_1();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result = GenerativeFunctionsInstrumentationError.GenerativeFunctionError.ModelError.init()();
  *a1 = v1;
  return result;
}

void sub_1934BEC80(uint64_t *a1@<X8>)
{
  v2 = swift_allocEmptyBox();
  GenerativeFunctionsInstrumentationError.SummarizationError.UnknownError.init()();
  *a1 = v2;
}

void sub_1934BECB0(uint64_t *a1@<X8>)
{
  v2 = swift_allocEmptyBox();
  GenerativeFunctionsInstrumentationError.ClassificationError.UnknownError.init()();
  *a1 = v2;
}

uint64_t objectdestroy_43Tm()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_173_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t objectdestroy_46Tm()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_173_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

void sub_1934BED50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  switch(*v8 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_139_2();
      OUTLINED_FUNCTION_182_0(v22, v23, v24, &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError, v25, &off_1F07BF0A0, v26, v27, v28);
      break;
    case 2uLL:
      OUTLINED_FUNCTION_24_9();
      OUTLINED_FUNCTION_135_1(v10, v11, v12, &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerInferenceError, v13, &off_1F07BF1B8, v14, v15, v28);
      break;
    case 3uLL:
      OUTLINED_FUNCTION_139_2();
      OUTLINED_FUNCTION_174(v16, v17, v18, &type metadata for GenerativeFunctionsInstrumentationError.GenerativeFunctionError, v19, &off_1F07BF210, v20, v21, v28);
      break;
    case 4uLL:
      OUTLINED_FUNCTION_24_9();
      break;
    case 5uLL:
    case 6uLL:
      OUTLINED_FUNCTION_139_2();
      break;
    default:
      v29 = *(v9 + 32);
      v30 = *(v9 + 40);
      OUTLINED_FUNCTION_134(a1, a2, a2, &type metadata for GenerativeFunctionsInstrumentationError.GenericError, a3, &off_1F07BF070, a7, a8, *(v9 + 16));
      break;
  }

  sub_193447600();
}

void sub_1934BEEFC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8C48);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("domain");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "code");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934BF02C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C190();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

void sub_1934BF094()
{
  OUTLINED_FUNCTION_110();
  v2 = v0[2];
  v3 = *(v0 + 24);
  if (v0[1])
  {
    v4 = *v0;
    OUTLINED_FUNCTION_181();
  }

  if (!v1 && (v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393C360();
  }
}

void sub_1934BF164()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8C60);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("simpleError");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "unrecognizedInferenceProviderError");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_0_0(v13, "inferenceError");
  v9(v14);
  v15 = OUTLINED_FUNCTION_13((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "missingEntitlementError");
  v9(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_0_0(v17, "useCaseDisabledError");
  v9(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934BF5C4()
{
  switch(*v0 >> 61)
  {
    case 1:
      OUTLINED_FUNCTION_138_0();
      OUTLINED_FUNCTION_182_0(v20, v21, v22, &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.UnrecognizedInferenceProviderError, v23, &off_1F07BF128, v24, v25, v26);
      break;
    case 2:
      v7 = *v0 & 0x1FFFFFFFFFFFFFFFLL;
      OUTLINED_FUNCTION_24_9();
      OUTLINED_FUNCTION_135_1(v8, v9, v10, &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerInferenceError, v11, &off_1F07BF1B8, v12, v13, v26);
      break;
    case 3:
      OUTLINED_FUNCTION_138_0();
      OUTLINED_FUNCTION_174(v14, v15, v16, &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.MissingEntitlementError, v17, &off_1F07BF158, v18, v19, v26);
      break;
    case 4:
      OUTLINED_FUNCTION_138_0();
      break;
    default:
      OUTLINED_FUNCTION_24_9();
      OUTLINED_FUNCTION_134(v1, v2, v3, &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError, v4, &off_1F07BF0D0, v5, v6, v26);
      break;
  }

  sub_193447600();
}

void sub_1934BF7B0()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8C90);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v74 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_20(v74, xmmword_193952740);
  OUTLINED_FUNCTION_63("ErrorCaseUnknown");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_4_9();
  v11 = OUTLINED_FUNCTION_0_0(v10, "MissingFeatureFlag");
  v8(v11);
  v12 = OUTLINED_FUNCTION_35_4();
  v13 = OUTLINED_FUNCTION_0_0(v12, "DaemonNotFound");
  v8(v13);
  v14 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v15 = OUTLINED_FUNCTION_0_0(v14, "UnsupportedNumberOfAssetBundles");
  v8(v15);
  v16 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v17 = OUTLINED_FUNCTION_0_0(v16, "CancelledDueToLowPriority");
  v8(v17);
  v18 = OUTLINED_FUNCTION_19_2((v0 + 5 * v4));
  v19 = OUTLINED_FUNCTION_0_0(v18, "InternalError");
  v8(v19);
  v20 = OUTLINED_FUNCTION_14_4(6);
  *v20 = "UnrecognizedUnderlyingError";
  *(v20 + 1) = 27;
  v21 = OUTLINED_FUNCTION_1_3(v20);
  v8(v21);
  OUTLINED_FUNCTION_120();
  v23 = OUTLINED_FUNCTION_30_0((v0 + v22));
  v24 = OUTLINED_FUNCTION_18_1(v23, "XpcError");
  v8(v24);
  v25 = OUTLINED_FUNCTION_67_1((v0 + 8 * v4));
  v26 = OUTLINED_FUNCTION_16_6(v25, "NotSupportedOnExternalBuild");
  v8(v26);
  OUTLINED_FUNCTION_45_2(9 * v4);
  OUTLINED_FUNCTION_131_3(v27);
  *v28 = "InsufficientSystemResources";
  v28[1] = 27;
  v29 = OUTLINED_FUNCTION_1_3(v28);
  v8(v29);
  v30 = OUTLINED_FUNCTION_14_4(10);
  v31 = OUTLINED_FUNCTION_0_0(v30, "DeniedDueToSystemState");
  v8(v31);
  v32 = OUTLINED_FUNCTION_14_4(11);
  v33 = OUTLINED_FUNCTION_18_1(v32, "OnBehalfOfProcessNotRunning");
  v8(v33);
  v34 = OUTLINED_FUNCTION_14_4(12);
  v35 = OUTLINED_FUNCTION_18_1(v34, "ResourceNotFound");
  v8(v35);
  v36 = OUTLINED_FUNCTION_32_10();
  v37 = OUTLINED_FUNCTION_0_0(v36, "ResourceInCancelState");
  v8(v37);
  v38 = OUTLINED_FUNCTION_32_10();
  v39 = OUTLINED_FUNCTION_28_4(v38, 18);
  v8(v39);
  OUTLINED_FUNCTION_45_2(15 * v4);
  OUTLINED_FUNCTION_180_0(v40);
  v42 = OUTLINED_FUNCTION_16_6(v41, "AssetBundleNotFound");
  v8(v42);
  v43 = OUTLINED_FUNCTION_67_1((v0 + 16 * v4));
  v44 = OUTLINED_FUNCTION_28_4(v43, 13);
  v8(v44);
  v45 = OUTLINED_FUNCTION_45_2(17 * v4);
  *v46 = 17;
  v47 = OUTLINED_FUNCTION_0_0(v45, "UnrecognizedModelCatalogResource");
  v8(v47);
  v48 = OUTLINED_FUNCTION_32_10();
  v49 = OUTLINED_FUNCTION_0_0(v48, "NoCommonInferenceProviderForAssets");
  v8(v49);
  v50 = OUTLINED_FUNCTION_60_1((v0 + 19 * v4));
  v51 = OUTLINED_FUNCTION_28_4(v50, 15);
  v8(v51);
  v52 = OUTLINED_FUNCTION_60_1((v0 + 20 * v4));
  v53 = OUTLINED_FUNCTION_28_4(v52, 27);
  v8(v53);
  v54 = OUTLINED_FUNCTION_32_10();
  v55 = OUTLINED_FUNCTION_18_1(v54, "InvalidRequestRequiredAssetIDs");
  v8(v55);
  v56 = OUTLINED_FUNCTION_32_10();
  v57 = OUTLINED_FUNCTION_18_1(v56, "AssetDoesNotSupportDynamicMode");
  v8(v57);
  v58 = OUTLINED_FUNCTION_67_1((v0 + 23 * v4));
  v59 = OUTLINED_FUNCTION_28_4(v58, 17);
  v8(v59);
  v60 = OUTLINED_FUNCTION_14_4(24);
  v61 = OUTLINED_FUNCTION_18_1(v60, "DeniedAssertionBySystem");
  v8(v61);
  v62 = OUTLINED_FUNCTION_32_10();
  v63 = OUTLINED_FUNCTION_28_4(v62, 15);
  v8(v63);
  v64 = OUTLINED_FUNCTION_14_4(26);
  v65 = OUTLINED_FUNCTION_16_6(v64, "SessionInCancelState");
  v8(v65);
  v66 = OUTLINED_FUNCTION_32_10();
  v67 = OUTLINED_FUNCTION_28_4(v66, 31);
  v8(v67);
  v68 = OUTLINED_FUNCTION_14_4(28);
  v69 = OUTLINED_FUNCTION_28_4(v68, 18);
  v8(v69);
  v70 = OUTLINED_FUNCTION_14_4(29);
  v71 = OUTLINED_FUNCTION_28_4(v70, 17);
  v8(v71);
  v72 = OUTLINED_FUNCTION_32_10();
  *v72 = "PolicyNotFound";
  *(v72 + 1) = 14;
  v73 = OUTLINED_FUNCTION_1_3(v72);
  v8(v73);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934BFEC4()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8D08);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_49_0();
  v53 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v53, xmmword_193952750);
  *v0 = 0;
  OUTLINED_FUNCTION_83_0("ErrorCaseUnknown");
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v9);
  v11 = *(v10 + 104);
  v12 = OUTLINED_FUNCTION_50_1();
  v11(v12);
  v13 = OUTLINED_FUNCTION_17_8((v0 + v7));
  v14 = OUTLINED_FUNCTION_5_4(v13, "NotImplemented");
  v11(v14);
  v15 = OUTLINED_FUNCTION_59_5();
  *v16 = v1;
  v17 = OUTLINED_FUNCTION_5_4(v15, "InvalidClientData");
  v11(v17);
  v18 = OUTLINED_FUNCTION_9_4((v0 + 3 * v7));
  v19 = OUTLINED_FUNCTION_23_7(v18, "UnsupportedRequestType");
  v11(v19);
  v20 = OUTLINED_FUNCTION_13((v0 + 4 * v7));
  v21 = OUTLINED_FUNCTION_23_7(v20, "ResponseEncodingFailed");
  v11(v21);
  v22 = OUTLINED_FUNCTION_19_2((v0 + 5 * v7));
  v23 = OUTLINED_FUNCTION_5_4(v22, "AlreadyLoaded");
  v11(v23);
  v24 = OUTLINED_FUNCTION_54_1(6);
  v25 = OUTLINED_FUNCTION_36_0(v24, "NotLoaded");
  v11(v25);
  OUTLINED_FUNCTION_120();
  v27 = OUTLINED_FUNCTION_30_0((v0 + v26));
  v28 = OUTLINED_FUNCTION_23_7(v27, "LoadFailed");
  v11(v28);
  v29 = OUTLINED_FUNCTION_39_3(&v0[v7]);
  v30 = OUTLINED_FUNCTION_5_4(v29, "InferenceFailed");
  v11(v30);
  v31 = OUTLINED_FUNCTION_44(9 * v7);
  *v32 = 9;
  v33 = OUTLINED_FUNCTION_5_4(v31, "OperationNotAllowed");
  v11(v33);
  v34 = OUTLINED_FUNCTION_60_1((v0 + 10 * v7));
  v35 = OUTLINED_FUNCTION_15(v34, 14);
  v11(v35);
  v36 = OUTLINED_FUNCTION_52_0();
  *v37 = 11;
  v38 = OUTLINED_FUNCTION_5_4(v36, "UnrecognizedUnderlyingError");
  v11(v38);
  v39 = OUTLINED_FUNCTION_54_1(12);
  v40 = OUTLINED_FUNCTION_5_4(v39, "OperationCancelled");
  v11(v40);
  v41 = OUTLINED_FUNCTION_3_1(v0 + 13 * v7);
  *v42 = v43;
  v44 = OUTLINED_FUNCTION_5_4(v41, "InternalError");
  v11(v44);
  v45 = OUTLINED_FUNCTION_3_1(v0 + 14 * v7);
  *v46 = v47;
  v48 = OUTLINED_FUNCTION_36_0(v45, "RateLimited");
  v11(v48);
  OUTLINED_FUNCTION_33_0(16 * v7);
  OUTLINED_FUNCTION_180_0(v49);
  *v50 = "XpcError";
  v50[1] = 8;
  v51 = OUTLINED_FUNCTION_41(v50);
  v11(v51);
  return sub_19393C410();
}

void sub_1934C0280()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8D20);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("modelError");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  *v11 = "sanitizerError";
  v11[1] = 14;
  v12 = OUTLINED_FUNCTION_70(v11);
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_48(v13, "useCaseDisablementError");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934C03D8()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v4 = OUTLINED_FUNCTION_124();
    if (v0 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 3:
        OUTLINED_FUNCTION_111_5();
        sub_193498018();
        v8 = OUTLINED_FUNCTION_188();
        if (v17)
        {
          v2 = &v15;
          GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError.init()(&v15, v8);
          v3 = v16;
        }

        else
        {
          OUTLINED_FUNCTION_137_0();
        }

        v2 = *v2;
        OUTLINED_FUNCTION_123_1();
        v11 = swift_allocObject();
        v12 = OUTLINED_FUNCTION_177_0(v11);
        *(v12 + 25) = v3;
        OUTLINED_FUNCTION_285(v12);
        break;
      case 2:
        OUTLINED_FUNCTION_111_5();
        sub_193498018();
        v7 = OUTLINED_FUNCTION_188();
        if (v17)
        {
          v2 = &v15;
          GenerativeFunctionsInstrumentationError.GenerativeFunctionError.SanitizerError.init()(&v15, v7);
          v3 = v16;
        }

        else
        {
          OUTLINED_FUNCTION_137_0();
        }

        v2 = *v2;
        OUTLINED_FUNCTION_123_1();
        v9 = swift_allocObject();
        v10 = OUTLINED_FUNCTION_177_0(v9);
        *(v10 + 25) = v3;
        OUTLINED_FUNCTION_277(v10);
        break;
      case 1:
        OUTLINED_FUNCTION_111_5();
        sub_193498018();
        v6 = OUTLINED_FUNCTION_188();
        if (v17)
        {
          v2 = &v15;
          GenerativeFunctionsInstrumentationError.GenerativeFunctionError.ModelError.init()(&v15, v6);
          v3 = v16;
        }

        else
        {
          OUTLINED_FUNCTION_137_0();
        }

        v2 = *v2;
        OUTLINED_FUNCTION_123_1();
        v13 = swift_allocObject();
        v14 = OUTLINED_FUNCTION_177_0(v13);
        *(v14 + 25) = v3;
        *v1 = v14;
        break;
    }
  }
}

void sub_1934C05AC()
{
  OUTLINED_FUNCTION_279();
  if (v0 >> 62)
  {
    if (v0 >> 62 == 1)
    {
      OUTLINED_FUNCTION_24_9();
      OUTLINED_FUNCTION_182_0(v1, v2, v3, &type metadata for GenerativeFunctionsInstrumentationError.GenerativeFunctionError.SanitizerError, v4, &off_1F07BF298, v5, v6, v19);
    }

    else
    {
      OUTLINED_FUNCTION_24_9();
      OUTLINED_FUNCTION_135_1(v13, v14, v15, &type metadata for GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError, v16, &off_1F07BF2F0, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_9();
    OUTLINED_FUNCTION_134(v7, v8, v9, &type metadata for GenerativeFunctionsInstrumentationError.GenerativeFunctionError.ModelError, v10, &off_1F07BF240, v11, v12, v19);
  }

  sub_193447600();
}

void sub_1934C073C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8D50);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_27_2(v6, xmmword_1939526E0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("ErrorCaseUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  v10(v11);
  v12 = OUTLINED_FUNCTION_17_8((v1 + v5));
  v13 = OUTLINED_FUNCTION_25(v12, "ResourcesUnavailable");
  v10(v13);
  v14 = OUTLINED_FUNCTION_59_5();
  *v15 = v0;
  v16 = OUTLINED_FUNCTION_25(v14, "Timeout");
  v10(v16);
  v17 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  v18 = OUTLINED_FUNCTION_25(v17, "RateLimited");
  v10(v18);
  v19 = OUTLINED_FUNCTION_13((v1 + 4 * v5));
  v20 = OUTLINED_FUNCTION_25(v19, "Canceled");
  v10(v20);
  v21 = OUTLINED_FUNCTION_19_2((v1 + 5 * v5));
  v22 = OUTLINED_FUNCTION_25(v21, "TooManyTokens");
  v10(v22);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934C09D8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8D80);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("ErrorCaseUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  *v11 = "SanitizerAssetNotAvailable";
  v11[1] = 26;
  v12 = OUTLINED_FUNCTION_70(v11);
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_48(v13, "SanitizerRejected");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934C0BF4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8DB0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBE0);
  *v1 = 0;
  *v0 = "ErrorCaseUnknown";
  *(v0 + 8) = 16;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_65();
  v10(v11);
  v12 = OUTLINED_FUNCTION_4_9();
  *v12 = "UseCaseDisabled";
  v12[1] = 15;
  v13 = OUTLINED_FUNCTION_70(v12);
  v10(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934C0DF8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8DE0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_20(v5, xmmword_193951270);
  OUTLINED_FUNCTION_63("ErrorCaseUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_0_0(v11, "Timeout");
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_0_0(v13, "RateLimited");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "TooManyTokens");
  v9(v16);
  v17 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_16_6(v17, "Canceled");
  v9(v18);
  v19 = OUTLINED_FUNCTION_19_2((v0 + 5 * v4));
  v20 = OUTLINED_FUNCTION_0_0(v19, "UnservicableConfiguration");
  v9(v20);
  v21 = OUTLINED_FUNCTION_14_4(6);
  v22 = OUTLINED_FUNCTION_0_0(v21, "EmbeddingSpaceMismatch");
  v9(v22);
  OUTLINED_FUNCTION_120();
  v24 = OUTLINED_FUNCTION_30_0((v0 + v23));
  v25 = OUTLINED_FUNCTION_0_0(v24, "UnknownSpecialToken");
  v9(v25);
  v26 = OUTLINED_FUNCTION_60_1((v0 + 8 * v4));
  v27 = OUTLINED_FUNCTION_0_0(v26, "InvalidGrammar");
  v9(v27);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934C1064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_115();
  v10 = sub_19393C420();
  __swift_allocate_value_buffer(v10, qword_1EAEA8DF8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v11);
  v13 = *(v12 + 72);
  OUTLINED_FUNCTION_49_0();
  v14 = OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_8_18(v14, xmmword_1939526B0);
  OUTLINED_FUNCTION_290("unknownError");
  v15 = *MEMORY[0x1E69AADC8];
  v16 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v16);
  v18 = *(v17 + 104);
  v19 = OUTLINED_FUNCTION_50_1();
  v18(v19);
  v20 = OUTLINED_FUNCTION_9_4((v9 + v13));
  v21 = OUTLINED_FUNCTION_5_4(v20, "inputTooShort");
  v18(v21);
  v22 = OUTLINED_FUNCTION_13((v9 + 2 * v13));
  v23 = OUTLINED_FUNCTION_23_7(v22, "missingRequiredData");
  v18(v23);
  v24 = OUTLINED_FUNCTION_26_5();
  *v25 = 1000;
  v26 = OUTLINED_FUNCTION_5_4(v24, "useCaseDisabled");
  v18(v26);
  v27 = OUTLINED_FUNCTION_66_6();
  *v28 = 2000;
  v29 = OUTLINED_FUNCTION_23_7(v27, "missingResponseData");
  v18(v29);
  v30 = OUTLINED_FUNCTION_38_2();
  *v31 = 2001;
  v32 = OUTLINED_FUNCTION_5_4(v30, "unknownSummarizationStyle");
  v18(v32);
  v33 = OUTLINED_FUNCTION_3_1(v9 + 6 * v13);
  *v34 = 2002;
  v35 = OUTLINED_FUNCTION_5_4(v33, "unknownVisualPromptUseCase");
  v18(v35);
  v36 = OUTLINED_FUNCTION_33_0(a9);
  *v37 = 2003;
  v38 = OUTLINED_FUNCTION_5_4(v36, "invalidModelBundleIdentifier");
  v18(v38);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934C1654()
{
  switch(*v0 >> 61)
  {
    case 1:
      OUTLINED_FUNCTION_158_0();
      OUTLINED_FUNCTION_135_1(v7, v8, v9, &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.InputTooShort, v10, &off_1F07BF400, v11, v12, v13);
      break;
    case 2:
      OUTLINED_FUNCTION_24_9();
      OUTLINED_FUNCTION_174(v1, v2, v3, &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.MissingRequiredData, v4, &off_1F07BF430, v5, v6, v13);
      break;
    case 7:
      OUTLINED_FUNCTION_138_0();
      break;
    default:
      break;
  }

  sub_193447600();
}

uint64_t sub_1934C17F8()
{
  OUTLINED_FUNCTION_75_3();
  do
  {
    result = sub_19393C0E0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

void sub_1934C1880()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8E28);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("minumumWordCount");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "inputWordCount");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934C1A2C()
{
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_1934982A8();
    }
  }
}