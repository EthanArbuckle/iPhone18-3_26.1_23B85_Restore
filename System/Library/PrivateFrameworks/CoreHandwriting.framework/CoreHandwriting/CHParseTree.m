@interface CHParseTree
- (CHParseTree)initWithGrammar:(id)a3;
- (_NSRange)inputRange;
- (id)_descriptionRecursive:(id)a3 level:(int64_t)a4;
- (id)_evaluationRecursive:(id)a3 withVariables:(id)a4;
- (id)_functionRepresentationRecursive:(id)a3;
- (id)_latexRepresentationRecursive:(id)a3;
- (id)description;
- (id)evaluateOpExpPriority:(id)a3;
- (id)evaluationWithVariables:(id)a3 caseSensitive:(BOOL)a4;
- (id)functionRepresentation;
- (id)latexRepresentation;
@end

@implementation CHParseTree

- (CHParseTree)initWithGrammar:(id)a3
{
  v5 = a3;
  v11 = objc_msgSend_init(self, v6, v7, v8, v9, v10);
  v12 = v11;
  if (v11)
  {
    objc_storeStrong((v11 + 16), a3);
    v13 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    formatter = v12->_formatter;
    v12->_formatter = v13;

    objc_msgSend_setMaximumFractionDigits_(v12->_formatter, v15, 9, v16, v17, v18);
    objc_msgSend_setRoundingMode_(v12->_formatter, v19, 6, v20, v21, v22);
  }

  return v12;
}

- (id)latexRepresentation
{
  v7 = objc_msgSend_root(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend__latexRepresentationRecursive_(self, v8, v7, v9, v10, v11);

  return v12;
}

- (id)_latexRepresentationRecursive:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5, v7, v8, v9))
  {
    v15 = objc_msgSend_name(v4, v10, v11, v12, v13, v14);
    goto LABEL_24;
  }

  v16 = v4;
  v22 = objc_msgSend_rightNode(v16, v17, v18, v19, v20, v21);

  v28 = objc_msgSend_leftNode(v16, v23, v24, v25, v26, v27);
  v15 = objc_msgSend__latexRepresentationRecursive_(self, v29, v28, v30, v31, v32);

  if (v22)
  {
    v38 = objc_msgSend_rightNode(v16, v33, v34, v35, v36, v37);
    v43 = objc_msgSend__latexRepresentationRecursive_(self, v39, v38, v40, v41, v42);

    v49 = objc_msgSend_rightNode(v16, v44, v45, v46, v47, v48);
    v55 = objc_msgSend_name(v49, v50, v51, v52, v53, v54);
    isEqualToString = objc_msgSend_isEqualToString_(v55, v56, @"FracExp", v57, v58, v59);

    if (isEqualToString)
    {
      v66 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v61, @"\\frac{%@}{%@}", v63, v64, v65, v15, v43);
    }

    else
    {
      v77 = objc_msgSend_leftNode(v16, v61, v62, v63, v64, v65);
      v83 = objc_msgSend_name(v77, v78, v79, v80, v81, v82);
      v88 = objc_msgSend_isEqualToString_(v83, v84, @"Frac", v85, v86, v87);

      if (!v88)
      {
        v94 = objc_msgSend_rightNode(v16, v89, v90, v91, v92, v93);
        v100 = objc_msgSend_name(v94, v95, v96, v97, v98, v99);
        v105 = objc_msgSend_isEqualToString_(v100, v101, @"ParArg", v102, v103, v104);

        v111 = objc_msgSend_leftNode(v16, v106, v107, v108, v109, v110);
        v117 = objc_msgSend_name(v111, v112, v113, v114, v115, v116);
        v122 = v117;
        if (v105)
        {
          v123 = objc_msgSend_isEqualToString_(v117, v118, @"Sqrt", v119, v120, v121);

          if (v123)
          {

            v133 = objc_msgSend_length(v43, v128, v129, v130, v131, v132);
            v137 = objc_msgSend_substringWithRange_(v43, v134, 1, v133 - 2, v135, v136);

            v15 = @"sqrt";
            v43 = v137;
          }

          v66 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v124, @"\\%@{%@}", v125, v126, v127, v15, v43);
          goto LABEL_21;
        }

        if (objc_msgSend_isEqualToString_(v117, v118, @"Pow", v119, v120, v121) && (objc_msgSend_isEqualToString_(v15, v138, @"^", v139, v140, v141) & 1) != 0)
        {
          v147 = objc_msgSend_rightNode(v16, v142, v143, v144, v145, v146);
          v153 = objc_msgSend_name(v147, v148, v149, v150, v151, v152);
          v158 = objc_msgSend_isEqualToString_(v153, v154, @"CurlyArg", v155, v156, v157);

          if ((v158 & 1) == 0)
          {
            v66 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v159, @"%@{%@}", v160, v161, v162, v15, v43);
            goto LABEL_21;
          }
        }

        else
        {
        }

        v66 = objc_msgSend_stringByAppendingString_(v15, v159, v43, v160, v161, v162);
        goto LABEL_21;
      }

      v66 = v43;
      v43 = v66;
    }

LABEL_21:
    v163 = v66;

    v67 = v15;
    v15 = v163;
    goto LABEL_22;
  }

  v67 = objc_msgSend_name(v16, v33, v34, v35, v36, v37);
  if (!objc_msgSend_isEqualToString_(v67, v68, @"Op", v69, v70, v71))
  {
LABEL_22:

    goto LABEL_23;
  }

  v76 = objc_msgSend_isEqualToString_(v15, v72, @"x", v73, v74, v75);

  if (v76)
  {
    v67 = v15;
    v15 = @"×";
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:

  return v15;
}

- (id)functionRepresentation
{
  v11 = objc_msgSend_evaluationWithVariables_(self, a2, &unk_1EF1EB9F0, v2, v3, v4);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = objc_msgSend_evaluationWithVariables_(self, v6, &unk_1EF1EBA18, v8, v9, v10);
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = objc_msgSend_evaluationWithVariables_(self, v6, &unk_1EF1EBA40, v8, v9, v10);
      v14 = 0;
      v15 = 0;
      if (!v13)
      {
        goto LABEL_10;
      }
    }
  }

  v16 = objc_msgSend_evaluation(self, v6, v7, v8, v9, v10);

  if (v16)
  {
    v15 = 0;
  }

  else
  {
    v22 = objc_msgSend_root(self, v17, v18, v19, v20, v21);
    v27 = objc_msgSend__functionRepresentationRecursive_(self, v23, v22, v24, v25, v26);
    v15 = objc_msgSend_lowercaseString(v27, v28, v29, v30, v31, v32);
  }

  v14 = v13;
LABEL_10:
  v33 = v15;

  return v15;
}

- (id)_functionRepresentationRecursive:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5, v7, v8, v9))
  {
    v15 = objc_msgSend_name(v4, v10, v11, v12, v13, v14);
    goto LABEL_22;
  }

  v16 = v4;
  v22 = objc_msgSend_rightNode(v16, v17, v18, v19, v20, v21);

  v28 = objc_msgSend_leftNode(v16, v23, v24, v25, v26, v27);
  v15 = objc_msgSend__functionRepresentationRecursive_(self, v29, v28, v30, v31, v32);

  if (v22)
  {
    v38 = objc_msgSend_rightNode(v16, v33, v34, v35, v36, v37);
    v43 = objc_msgSend__functionRepresentationRecursive_(self, v39, v38, v40, v41, v42);

    v49 = objc_msgSend_name(v16, v44, v45, v46, v47, v48);
    isEqualToString = objc_msgSend_isEqualToString_(v49, v50, @"CurlyArg", v51, v52, v53);

    if (isEqualToString)
    {
      v60 = MEMORY[0x1E696AEC0];
      v61 = objc_msgSend_length(v43, v55, v56, v57, v58, v59);
      v66 = objc_msgSend_substringToIndex_(v43, v62, v61 - 1, v63, v64, v65);
      v71 = objc_msgSend_stringWithFormat_(v60, v67, @"%@"), v68, v69, v70, v66);

      v76 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v72, @"(%@"), v73, v74, v75, v71;
      v43 = v71;
LABEL_20:

      v15 = v76;
      goto LABEL_21;
    }

    v77 = objc_msgSend_leftNode(v16, v55, v56, v57, v58, v59);
    v83 = objc_msgSend_name(v77, v78, v79, v80, v81, v82);
    v88 = objc_msgSend_isEqualToString_(v83, v84, @"Backslash", v85, v86, v87);

    if (v88)
    {
      v94 = v43;
      v43 = v94;
LABEL_19:
      v76 = v94;
      goto LABEL_20;
    }

    v95 = objc_msgSend_leftNode(v16, v89, v90, v91, v92, v93);
    v101 = objc_msgSend_name(v95, v96, v97, v98, v99, v100);
    if (objc_msgSend_isEqualToString_(v101, v102, @"Pow", v103, v104, v105) && objc_msgSend_isEqualToString_(v15, v106, @"^", v107, v108, v109))
    {
      v115 = objc_msgSend_rightNode(v16, v110, v111, v112, v113, v114);
      v121 = objc_msgSend_name(v115, v116, v117, v118, v119, v120);
      if ((objc_msgSend_isEqualToString_(v121, v122, @"ParArg", v123, v124, v125) & 1) == 0)
      {
        v169 = objc_msgSend_rightNode(v16, v126, v127, v128, v129, v130);
        v175 = objc_msgSend_name(v169, v170, v171, v172, v173, v174);
        v180 = objc_msgSend_isEqualToString_(v175, v176, @"CurlyArg", v177, v178, v179);

        if ((v180 & 1) == 0)
        {
          objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v131, @"%@(%@)", v133, v134, v135, v15, v43);
          v94 = LABEL_17:;
          goto LABEL_19;
        }

LABEL_13:
        v136 = objc_msgSend_leftNode(v16, v131, v132, v133, v134, v135);
        v142 = objc_msgSend_name(v136, v137, v138, v139, v140, v141);
        if (objc_msgSend_isEqualToString_(v142, v143, @"UExp", v144, v145, v146))
        {
        }

        else
        {
          v156 = objc_msgSend_leftNode(v16, v147, v148, v149, v150, v151);
          v162 = objc_msgSend_name(v156, v157, v158, v159, v160, v161);
          v167 = objc_msgSend_isEqualToString_(v162, v163, @"UExp", v164, v165, v166);

          if (!v167)
          {
            v94 = objc_msgSend_stringByAppendingString_(v15, v152, v43, v153, v154, v155);
            goto LABEL_19;
          }
        }

        objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v152, @"%@*%@", v153, v154, v155, v15, v43);
        goto LABEL_17;
      }
    }

    goto LABEL_13;
  }

LABEL_21:

LABEL_22:

  return v15;
}

- (id)evaluationWithVariables:(id)a3 caseSensitive:(BOOL)a4
{
  self->__caseSensitive = a4;
  v5 = a3;
  v11 = objc_msgSend_root(self, v6, v7, v8, v9, v10);
  v15 = objc_msgSend__evaluationRecursive_withVariables_(self, v12, v11, v5, v13, v14);

  if (objc_msgSend_isEqualToString_(v15, v16, @"STOP", v17, v18, v19))
  {
    v24 = 0;
  }

  else
  {
    v25 = objc_msgSend_evaluateOpExpPriority_(self, v20, v15, v21, v22, v23);

    v24 = objc_msgSend_numberFromString_(self->_formatter, v26, v25, v27, v28, v29);
    v15 = v25;
  }

  return v24;
}

- (id)_evaluationRecursive:(id)a3 withVariables:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v14 = objc_msgSend_rightNode(v8, v9, v10, v11, v12, v13);

  if (!v14)
  {
    v35 = objc_msgSend_name(v8, v15, v16, v17, v18, v19);
    isEqualToString = objc_msgSend_isEqualToString_(v35, v36, @"Variable", v37, v38, v39);

    if (!isEqualToString)
    {
      v88 = objc_msgSend_name(v8, v41, v42, v43, v44, v45);
      v93 = objc_msgSend_isEqualToString_(v88, v89, @"Variable", v90, v91, v92);

      if (v93)
      {
        v99 = objc_msgSend_leftNode(v8, v94, v95, v96, v97, v98);
        v105 = objc_msgSend_name(v99, v100, v101, v102, v103, v104);
        v111 = objc_msgSend_lowercaseString(v105, v106, v107, v108, v109, v110);
        v116 = objc_msgSend_isEqualToString_(v111, v112, @"e", v113, v114, v115);

        if (v116)
        {
          v122 = @"2.7182818";
          goto LABEL_37;
        }

        v203 = objc_msgSend_leftNode(v8, v117, v118, v119, v120, v121);
        v209 = objc_msgSend_name(v203, v204, v205, v206, v207, v208);
        v215 = objc_msgSend_lowercaseString(v209, v210, v211, v212, v213, v214);
        v220 = objc_msgSend_isEqualToString_(v215, v216, @"π", v217, v218, v219);

        if (v220)
        {
          v122 = @"3.1415926";
          goto LABEL_37;
        }
      }

      v24 = objc_msgSend_leftNode(v8, v94, v95, v96, v97, v98);
      v34 = objc_msgSend_getStringValue(v24, v221, v222, v223, v224, v225);
      goto LABEL_35;
    }

    caseSensitive = self->__caseSensitive;
    v47 = objc_msgSend_leftNode(v8, v41, v42, v43, v44, v45);
    v53 = objc_msgSend_name(v47, v48, v49, v50, v51, v52);
    v24 = v53;
    if (!caseSensitive)
    {
      v59 = objc_msgSend_lowercaseString(v53, v54, v55, v56, v57, v58);

      v24 = v59;
    }

    v64 = objc_msgSend_objectForKeyedSubscript_(v7, v60, v24, v61, v62, v63);

    if (!v64)
    {
      v122 = @"STOP";
      goto LABEL_36;
    }

    v69 = objc_msgSend_objectForKeyedSubscript_(v7, v65, v24, v66, v67, v68);
    v74 = objc_msgSend_stringFromNumber_(self->_formatter, v70, v69, v71, v72, v73);
    goto LABEL_29;
  }

  v20 = objc_msgSend_leftNode(v8, v15, v16, v17, v18, v19);
  v24 = objc_msgSend__evaluationRecursive_withVariables_(self, v21, v20, v7, v22, v23);

  if (objc_msgSend_isEqualToString_(v24, v25, @"STOP", v26, v27, v28))
  {
    v34 = v24;
    v24 = v34;
LABEL_35:
    v122 = v34;
    goto LABEL_36;
  }

  v75 = objc_msgSend_rightNode(v8, v29, v30, v31, v32, v33);
  v69 = objc_msgSend__evaluationRecursive_withVariables_(self, v76, v75, v7, v77, v78);

  if (objc_msgSend_isEqualToString_(v69, v79, @"STOP", v80, v81, v82))
  {
    goto LABEL_10;
  }

  v123 = objc_msgSend_name(v8, v83, v84, v85, v86, v87);
  if (objc_msgSend_isEqualToString_(v123, v124, @"Number", v125, v126, v127))
  {
    goto LABEL_25;
  }

  v133 = objc_msgSend_name(v8, v128, v129, v130, v131, v132);
  if (objc_msgSend_isEqualToString_(v133, v134, @"DecPointDigitBlock", v135, v136, v137))
  {
LABEL_24:

LABEL_25:
    goto LABEL_26;
  }

  v143 = objc_msgSend_name(v8, v138, v139, v140, v141, v142);
  if (objc_msgSend_isEqualToString_(v143, v144, @"DigitBlock", v145, v146, v147))
  {
LABEL_23:

    goto LABEL_24;
  }

  v153 = objc_msgSend_name(v8, v148, v149, v150, v151, v152);
  if (objc_msgSend_isEqualToString_(v153, v154, @"IntDigitBlock", v155, v156, v157))
  {
LABEL_22:

    goto LABEL_23;
  }

  v163 = objc_msgSend_name(v8, v158, v159, v160, v161, v162);
  if (objc_msgSend_isEqualToString_(v163, v164, @"TSepDigitTriplet", v165, v166, v167))
  {
LABEL_21:

    goto LABEL_22;
  }

  v1034 = objc_msgSend_name(v8, v168, v169, v170, v171, v172);
  if (objc_msgSend_isEqualToString_(v1034, v173, @"DigitTriplet", v174, v175, v176))
  {

    goto LABEL_21;
  }

  v1028 = objc_msgSend_name(v8, v177, v178, v179, v180, v181);
  v1031 = objc_msgSend_isEqualToString_(v1028, v227, @"DigitPair", v228, v229, v230);

  if (v1031)
  {
    goto LABEL_26;
  }

  v231 = objc_msgSend_leftNode(v8, v182, v183, v184, v185, v186);
  v237 = objc_msgSend_name(v231, v232, v233, v234, v235, v236);
  if (objc_msgSend_isEqualToString_(v237, v238, @"DecPointDigitBlock", v239, v240, v241))
  {
LABEL_50:

LABEL_28:
    v74 = objc_msgSend_stringByAppendingString_(v24, v199, v69, v200, v201, v202);
    goto LABEL_29;
  }

  v247 = objc_msgSend_leftNode(v8, v242, v243, v244, v245, v246);
  v253 = objc_msgSend_name(v247, v248, v249, v250, v251, v252);
  if (objc_msgSend_isEqualToString_(v253, v254, @"DigitBlock", v255, v256, v257))
  {
LABEL_49:

    goto LABEL_50;
  }

  v1035 = objc_msgSend_leftNode(v8, v258, v259, v260, v261, v262);
  v268 = objc_msgSend_name(v1035, v263, v264, v265, v266, v267);
  if (objc_msgSend_isEqualToString_(v268, v269, @"IntDigitBlock", v270, v271, v272))
  {
LABEL_48:

    goto LABEL_49;
  }

  v1032 = objc_msgSend_leftNode(v8, v273, v274, v275, v276, v277);
  v1029 = objc_msgSend_name(v1032, v278, v279, v280, v281, v282);
  if (objc_msgSend_isEqualToString_(v1029, v283, @"TSepDigitTriplet", v284, v285, v286))
  {
LABEL_47:

    goto LABEL_48;
  }

  v1026 = objc_msgSend_leftNode(v8, v287, v288, v289, v290, v291);
  v1024 = objc_msgSend_name(v1026, v292, v293, v294, v295, v296);
  if (objc_msgSend_isEqualToString_(v1024, v297, @"DigitTriplet", v298, v299, v300))
  {

    goto LABEL_47;
  }

  v1020 = objc_msgSend_leftNode(v8, v301, v302, v303, v304, v305);
  v1018 = objc_msgSend_name(v1020, v306, v307, v308, v309, v310);
  v1022 = objc_msgSend_isEqualToString_(v1018, v311, @"DigitPair", v312, v313, v314);

  if (v1022)
  {
    goto LABEL_28;
  }

  v123 = objc_msgSend_rightNode(v8, v199, v315, v200, v201, v202);
  v133 = objc_msgSend_name(v123, v316, v317, v318, v319, v320);
  if (objc_msgSend_isEqualToString_(v133, v321, @"DecPointDigitBlock", v322, v323, v324))
  {
    goto LABEL_24;
  }

  v143 = objc_msgSend_rightNode(v8, v325, v326, v327, v328, v329);
  v153 = objc_msgSend_name(v143, v330, v331, v332, v333, v334);
  if (objc_msgSend_isEqualToString_(v153, v335, @"DigitBlock", v336, v337, v338))
  {
    goto LABEL_22;
  }

  v1036 = objc_msgSend_rightNode(v8, v339, v340, v341, v342, v343);
  v349 = objc_msgSend_name(v1036, v344, v345, v346, v347, v348);
  if (objc_msgSend_isEqualToString_(v349, v350, @"IntDigitBlock", v351, v352, v353))
  {
LABEL_59:

    goto LABEL_22;
  }

  v1033 = objc_msgSend_rightNode(v8, v354, v355, v356, v357, v358);
  v1030 = objc_msgSend_name(v1033, v359, v360, v361, v362, v363);
  if (objc_msgSend_isEqualToString_(v1030, v364, @"TSepDigitTriplet", v365, v366, v367))
  {
LABEL_58:

    goto LABEL_59;
  }

  v1027 = objc_msgSend_rightNode(v8, v368, v369, v370, v371, v372);
  v1025 = objc_msgSend_name(v1027, v373, v374, v375, v376, v377);
  if (objc_msgSend_isEqualToString_(v1025, v378, @"DigitTriplet", v379, v380, v381))
  {

    goto LABEL_58;
  }

  v1021 = objc_msgSend_rightNode(v8, v382, v383, v384, v385, v386);
  v1019 = objc_msgSend_name(v1021, v387, v388, v389, v390, v391);
  v1023 = objc_msgSend_isEqualToString_(v1019, v392, @"DigitPair", v393, v394, v395);

  if (v1023)
  {
LABEL_26:
    v187 = objc_msgSend_leftNode(v8, v182, v183, v184, v185, v186);
    v193 = objc_msgSend_name(v187, v188, v189, v190, v191, v192);
    v198 = objc_msgSend_isEqualToString_(v193, v194, @"TSep", v195, v196, v197);

    if (v198)
    {

      v24 = &stru_1EF1C0318;
    }

    goto LABEL_28;
  }

  v396 = objc_msgSend_leftNode(v8, v182, v183, v184, v185, v186);
  v402 = objc_msgSend_name(v396, v397, v398, v399, v400, v401);
  if (objc_msgSend_isEqualToString_(v402, v403, @"Digit", v404, v405, v406))
  {
    v412 = objc_msgSend_rightNode(v8, v407, v408, v409, v410, v411);
    v418 = objc_msgSend_name(v412, v413, v414, v415, v416, v417);
    v423 = objc_msgSend_isEqualToString_(v418, v419, @"Digit", v420, v421, v422);

    if (v423)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v425 = objc_msgSend_name(v8, v199, v424, v200, v201, v202);
  v430 = objc_msgSend_isEqualToString_(v425, v426, @"Const", v427, v428, v429);

  if (v430)
  {
    v436 = objc_msgSend_rightNode(v8, v431, v432, v433, v434, v435);
    v442 = objc_msgSend_name(v436, v437, v438, v439, v440, v441);
    v447 = objc_msgSend_isEqualToString_(v442, v443, @"Pi", v444, v445, v446);

    if (v447)
    {
      v122 = @"3.1415926";
      goto LABEL_30;
    }
  }

  v448 = objc_msgSend_leftNode(v8, v431, v432, v433, v434, v435);
  v454 = objc_msgSend_name(v448, v449, v450, v451, v452, v453);
  if (objc_msgSend_isEqualToString_(v454, v455, @"Op", v456, v457, v458))
  {

LABEL_72:
    v74 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v464, @"%@ %@", v465, v466, v467, v24, v69);
    goto LABEL_29;
  }

  v468 = objc_msgSend_leftNode(v8, v459, v460, v461, v462, v463);
  v474 = objc_msgSend_name(v468, v469, v470, v471, v472, v473);
  v479 = objc_msgSend_isEqualToString_(v474, v475, @"Frac", v476, v477, v478);

  if (v479)
  {
    goto LABEL_72;
  }

  v481 = objc_msgSend_rightNode(v8, v464, v480, v465, v466, v467);
  v487 = objc_msgSend_name(v481, v482, v483, v484, v485, v486);
  v492 = objc_msgSend_isEqualToString_(v487, v488, @"OpExp", v489, v490, v491);

  if (v492)
  {
    goto LABEL_72;
  }

  v494 = objc_msgSend_rightNode(v8, v464, v493, v465, v466, v467);
  v500 = objc_msgSend_name(v494, v495, v496, v497, v498, v499);
  v505 = objc_msgSend_isEqualToString_(v500, v501, @"PowExp", v502, v503, v504);

  if (v505)
  {
    v511 = objc_msgSend_numberFromString_(self->_formatter, v506, v24, v508, v509, v510);
    objc_msgSend_doubleValue(v511, v512, v513, v514, v515, v516);
    v518 = v517;

    v523 = objc_msgSend_numberFromString_(self->_formatter, v519, v69, v520, v521, v522);
    objc_msgSend_doubleValue(v523, v524, v525, v526, v527, v528);
    v530 = v529;

    v531 = pow(v518, v530);
    formatter = self->_formatter;
    objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v533, v534, v535, v536, v537, v531);
    v538 = LABEL_75:;
    v543 = objc_msgSend_stringFromNumber_(formatter, v539, v538, v540, v541, v542);
LABEL_76:
    v122 = v543;
LABEL_77:

    goto LABEL_30;
  }

  v544 = objc_msgSend_leftNode(v8, v506, v507, v508, v509, v510);
  v550 = objc_msgSend_name(v544, v545, v546, v547, v548, v549);
  v555 = objc_msgSend_isEqualToString_(v550, v551, @"Pow", v552, v553, v554);

  if (!v555)
  {
    v561 = objc_msgSend_leftNode(v8, v556, v557, v558, v559, v560);
    v567 = objc_msgSend_name(v561, v562, v563, v564, v565, v566);
    if (objc_msgSend_isEqualToString_(v567, v568, @"LPar", v569, v570, v571))
    {

      goto LABEL_10;
    }

    v577 = objc_msgSend_leftNode(v8, v572, v573, v574, v575, v576);
    v583 = objc_msgSend_name(v577, v578, v579, v580, v581, v582);
    v588 = objc_msgSend_isEqualToString_(v583, v584, @"LCurly", v585, v586, v587);

    if (v588)
    {
      goto LABEL_10;
    }

    v594 = objc_msgSend_rightNode(v8, v589, v590, v591, v592, v593);
    v600 = objc_msgSend_name(v594, v595, v596, v597, v598, v599);
    if (objc_msgSend_isEqualToString_(v600, v601, @"RPar", v602, v603, v604))
    {

LABEL_85:
      v74 = objc_msgSend_evaluateOpExpPriority_(self, v610, v24, v611, v612, v613);
      goto LABEL_29;
    }

    v614 = objc_msgSend_rightNode(v8, v605, v606, v607, v608, v609);
    v620 = objc_msgSend_name(v614, v615, v616, v617, v618, v619);
    v625 = objc_msgSend_isEqualToString_(v620, v621, @"RCurly", v622, v623, v624);

    if (v625)
    {
      goto LABEL_85;
    }

    v627 = objc_msgSend_rightNode(v8, v610, v626, v611, v612, v613);
    v633 = objc_msgSend_name(v627, v628, v629, v630, v631, v632);
    v638 = objc_msgSend_isEqualToString_(v633, v634, @"Eq", v635, v636, v637);

    if (v638)
    {
      v74 = v24;
      v24 = v74;
      goto LABEL_29;
    }

    v644 = objc_msgSend_rightNode(v8, v639, v640, v641, v642, v643);
    v650 = objc_msgSend_name(v644, v645, v646, v647, v648, v649);
    v655 = objc_msgSend_isEqualToString_(v650, v651, @"FracExp", v652, v653, v654);

    if (v655)
    {
      v538 = objc_msgSend_evaluateOpExpPriority_(self, v656, v24, v658, v659, v660);
      v666 = objc_msgSend_rightNode(v8, v661, v662, v663, v664, v665);
      v672 = objc_msgSend_rightNode(v666, v667, v668, v669, v670, v671);
      v676 = objc_msgSend__evaluationRecursive_withVariables_(self, v673, v672, v7, v674, v675);

      v681 = objc_msgSend_evaluateOpExpPriority_(self, v677, v676, v678, v679, v680);
      v122 = @"STOP";
      if ((objc_msgSend_isEqualToString_(v538, v682, @"STOP", v683, v684, v685) & 1) == 0)
      {
        v122 = @"STOP";
        if ((objc_msgSend_isEqualToString_(v681, v686, @"STOP", v687, v688, v689) & 1) == 0)
        {
          v694 = objc_msgSend_numberFromString_(self->_formatter, v690, v538, v691, v692, v693);
          objc_msgSend_doubleValue(v694, v695, v696, v697, v698, v699);
          v701 = v700;

          v706 = objc_msgSend_numberFromString_(self->_formatter, v702, v681, v703, v704, v705);
          objc_msgSend_doubleValue(v706, v707, v708, v709, v710, v711);
          v713 = v712;

          v714 = self->_formatter;
          v720 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v715, v716, v717, v718, v719, v701 / v713);
          v122 = objc_msgSend_stringFromNumber_(v714, v721, v720, v722, v723, v724);
        }
      }

      goto LABEL_77;
    }

    v725 = objc_msgSend_leftNode(v8, v656, v657, v658, v659, v660);
    v731 = objc_msgSend_name(v725, v726, v727, v728, v729, v730);
    v736 = objc_msgSend_isEqualToString_(v731, v732, @"Mod", v733, v734, v735);

    if (v736)
    {
      v742 = objc_msgSend_numberFromString_(self->_formatter, v737, v69, v739, v740, v741);
      objc_msgSend_doubleValue(v742, v743, v744, v745, v746, v747);
      v749 = v748;

      if ((objc_msgSend_isEqualToString_(v24, v750, @"+", v751, v752, v753) & 1) == 0)
      {
        if (!objc_msgSend_isEqualToString_(v24, v754, @"-", v756, v757, v758))
        {
          v122 = @"STOP";
          goto LABEL_30;
        }

        v749 = -v749;
      }

      formatter = self->_formatter;
      objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v754, v755, v756, v757, v758, v749);
      goto LABEL_75;
    }

    v759 = objc_msgSend_leftNode(v8, v737, v738, v739, v740, v741);
    v765 = objc_msgSend_name(v759, v760, v761, v762, v763, v764);
    isEqual = objc_msgSend_isEqual_(v765, v766, @"Sqrt", v767, v768, v769);

    if (isEqual)
    {
      v776 = objc_msgSend_numberFromString_(self->_formatter, v771, v69, v773, v774, v775);
      objc_msgSend_doubleValue(v776, v777, v778, v779, v780, v781);
      v783 = v782;

      formatter = self->_formatter;
      objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v784, v785, v786, v787, v788, sqrt(v783));
      goto LABEL_75;
    }

    v789 = objc_msgSend_leftNode(v8, v771, v772, v773, v774, v775);
    v795 = objc_msgSend_name(v789, v790, v791, v792, v793, v794);
    v800 = objc_msgSend_isEqual_(v795, v796, @"Sin", v797, v798, v799);

    if (v800)
    {
      v806 = objc_msgSend_numberFromString_(self->_formatter, v801, v69, v803, v804, v805);
      objc_msgSend_doubleValue(v806, v807, v808, v809, v810, v811);
      v813 = v812;

      formatter = self->_formatter;
      v814 = MEMORY[0x1E696AD98];
      v820 = sin(v813);
LABEL_107:
      objc_msgSend_numberWithDouble_(v814, v815, v816, v817, v818, v819, v820);
      goto LABEL_75;
    }

    v821 = objc_msgSend_leftNode(v8, v801, v802, v803, v804, v805);
    v827 = objc_msgSend_name(v821, v822, v823, v824, v825, v826);
    v832 = objc_msgSend_isEqual_(v827, v828, @"Cos", v829, v830, v831);

    if (v832)
    {
      v838 = objc_msgSend_numberFromString_(self->_formatter, v833, v69, v835, v836, v837);
      objc_msgSend_doubleValue(v838, v839, v840, v841, v842, v843);
      v845 = v844;

      formatter = self->_formatter;
      v814 = MEMORY[0x1E696AD98];
      v820 = cos(v845);
      goto LABEL_107;
    }

    v846 = objc_msgSend_leftNode(v8, v833, v834, v835, v836, v837);
    v852 = objc_msgSend_name(v846, v847, v848, v849, v850, v851);
    v857 = objc_msgSend_isEqual_(v852, v853, @"Tan", v854, v855, v856);

    if (v857)
    {
      v863 = objc_msgSend_numberFromString_(self->_formatter, v858, v69, v860, v861, v862);
      objc_msgSend_doubleValue(v863, v864, v865, v866, v867, v868);
      v870 = v869;

      formatter = self->_formatter;
      v814 = MEMORY[0x1E696AD98];
      v820 = tan(v870);
      goto LABEL_107;
    }

    v871 = MEMORY[0x1E696AEC0];
    v872 = objc_msgSend_leftNode(v8, v858, v859, v860, v861, v862);
    v878 = objc_msgSend_name(v872, v873, v874, v875, v876, v877);
    v884 = objc_msgSend_rightNode(v8, v879, v880, v881, v882, v883);
    v890 = objc_msgSend_name(v884, v885, v886, v887, v888, v889);
    v538 = objc_msgSend_stringWithFormat_(v871, v891, @"%@ %@", v892, v893, v894, v878, v890);

    v900 = objc_msgSend_leftNode(v8, v895, v896, v897, v898, v899);
    v906 = objc_msgSend_name(v900, v901, v902, v903, v904, v905);
    if ((objc_msgSend_isEqualToString_(v906, v907, @"UExp", v908, v909, v910) & 1) == 0)
    {
      v916 = objc_msgSend_rightNode(v8, v911, v912, v913, v914, v915);
      v922 = objc_msgSend_name(v916, v917, v918, v919, v920, v921);
      if ((objc_msgSend_isEqualToString_(v922, v923, @"UExp", v924, v925, v926) & 1) == 0 && (objc_msgSend_isEqualToString_(v538, v927, @"Number Const", v928, v929, v930) & 1) == 0 && (objc_msgSend_isEqualToString_(v538, v931, @"Digit Const", v932, v933, v934) & 1) == 0 && (objc_msgSend_isEqualToString_(v538, v935, @"Number Variable", v936, v937, v938) & 1) == 0 && (objc_msgSend_isEqualToString_(v538, v939, @"Digit Variable", v940, v941, v942) & 1) == 0 && (objc_msgSend_isEqualToString_(v538, v943, @"Const Number", v944, v945, v946) & 1) == 0 && (objc_msgSend_isEqualToString_(v538, v947, @"Const Digit", v948, v949, v950) & 1) == 0)
      {
        v1037 = objc_msgSend_isEqualToString_(v538, v951, @"Const Const", v952, v953, v954);

        if ((v1037 & 1) == 0)
        {
          v991 = objc_msgSend_leftNode(v8, v955, v990, v956, v957, v958);
          v997 = objc_msgSend_name(v991, v992, v993, v994, v995, v996);
          v1002 = objc_msgSend_isEqualToString_(v997, v998, @"Backslash", v999, v1000, v1001);

          if (v1002)
          {
            v543 = v69;
          }

          else
          {
            if (qword_1EA84CDF0 != -1)
            {
              dispatch_once(&qword_1EA84CDF0, &unk_1EF1BC538);
            }

            v1008 = qword_1EA84CDE8;
            v1009 = objc_msgSend_name(v8, v1003, v1004, v1005, v1006, v1007);
            LODWORD(v1008) = objc_msgSend_containsObject_(v1008, v1010, v1009, v1011, v1012, v1013);

            if (!v1008)
            {
              v122 = @"STOP";
              goto LABEL_77;
            }

            v543 = objc_msgSend_stringByAppendingString_(v24, v1014, v69, v1015, v1016, v1017);
          }

          goto LABEL_76;
        }

LABEL_118:
        v959 = objc_msgSend_numberFromString_(self->_formatter, v955, v24, v956, v957, v958);
        objc_msgSend_doubleValue(v959, v960, v961, v962, v963, v964);
        v966 = v965;

        v971 = objc_msgSend_numberFromString_(self->_formatter, v967, v69, v968, v969, v970);
        objc_msgSend_doubleValue(v971, v972, v973, v974, v975, v976);
        v978 = v977;

        v979 = self->_formatter;
        v985 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v980, v981, v982, v983, v984, v966 * v978);
        v122 = objc_msgSend_stringFromNumber_(v979, v986, v985, v987, v988, v989);

        goto LABEL_77;
      }
    }

    goto LABEL_118;
  }

LABEL_10:
  v74 = v69;
LABEL_29:
  v122 = v74;
LABEL_30:

LABEL_36:
LABEL_37:

  return v122;
}

- (id)evaluateOpExpPriority:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_componentsSeparatedByString_(v4, v5, @" ", v6, v7, v8);
  v15 = objc_msgSend_mutableCopy(v9, v10, v11, v12, v13, v14);

  if (objc_msgSend_count(v15, v16, v17, v18, v19, v20) != 1)
  {
    if ((objc_msgSend_count(v15, v21, v22, v23, v24, v25) & 1) == 0)
    {
LABEL_4:
      v32 = @"STOP";
      goto LABEL_27;
    }

    if (objc_msgSend_count(v15, v27, v28, v29, v30, v31) < 2)
    {
LABEL_24:
      if (objc_msgSend_count(v15, v33, v34, v35, v36, v37) != 1)
      {
        if ((objc_msgSend_count(v15, v223, v224, v225, v226, v227) & 1) == 0)
        {
          goto LABEL_4;
        }

        if (objc_msgSend_count(v15, v229, v230, v231, v232, v233) >= 2)
        {
          v32 = @"STOP";
          do
          {
            formatter = self->_formatter;
            v256 = objc_msgSend_objectAtIndexedSubscript_(v15, v223, 0, v225, v226, v227);
            v261 = objc_msgSend_numberFromString_(formatter, v257, v256, v258, v259, v260);
            objc_msgSend_doubleValue(v261, v262, v263, v264, v265, v266);
            v268 = v267;

            v269 = self->_formatter;
            v274 = objc_msgSend_objectAtIndexedSubscript_(v15, v270, 2, v271, v272, v273);
            v279 = objc_msgSend_numberFromString_(v269, v275, v274, v276, v277, v278);
            objc_msgSend_doubleValue(v279, v280, v281, v282, v283, v284);
            v286 = v285;

            v291 = objc_msgSend_objectAtIndexedSubscript_(v15, v287, 1, v288, v289, v290);
            LODWORD(v274) = objc_msgSend_isEqualToString_(v291, v292, @"+", v293, v294, v295);

            if (v274)
            {
              v234 = v268 + v286;
            }

            else
            {
              v300 = objc_msgSend_objectAtIndexedSubscript_(v15, v296, 1, v297, v298, v299);
              isEqualToString = objc_msgSend_isEqualToString_(v300, v301, @"-", v302, v303, v304);

              if (!isEqualToString)
              {
                goto LABEL_27;
              }

              v234 = v268 - v286;
            }

            objc_msgSend_removeObjectsInRange_(v15, v296, 0, 3, v298, v299);
            v235 = self->_formatter;
            v241 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v236, v237, v238, v239, v240, v234);
            v246 = objc_msgSend_stringFromNumber_(v235, v242, v241, v243, v244, v245);

            objc_msgSend_insertObject_atIndex_(v15, v247, v246, 0, v248, v249);
          }

          while (objc_msgSend_count(v15, v250, v251, v252, v253, v254) > 1);
        }
      }

      v26 = objc_msgSend_objectAtIndexedSubscript_(v15, v223, 0, v225, v226, v227);
      goto LABEL_26;
    }

    v38 = 1;
    v39 = 1;
    while (1)
    {
      v40 = objc_msgSend_objectAtIndexedSubscript_(v15, v33, v38, v35, v36, v37);
      if (objc_msgSend_isEqualToString_(v40, v41, @"*", v42, v43, v44))
      {
        goto LABEL_10;
      }

      v49 = objc_msgSend_objectAtIndexedSubscript_(v15, v45, v38, v46, v47, v48);
      if (objc_msgSend_isEqualToString_(v49, v50, @"x", v51, v52, v53))
      {
        break;
      }

      v119 = objc_msgSend_objectAtIndexedSubscript_(v15, v54, v38, v55, v56, v57);
      v124 = objc_msgSend_isEqualToString_(v119, v120, @"⋅", v121, v122, v123);

      if (v124)
      {
        goto LABEL_11;
      }

      v125 = objc_msgSend_objectAtIndexedSubscript_(v15, v58, v38, v59, v60, v61);
      if (objc_msgSend_isEqualToString_(v125, v126, @"/", v127, v128, v129))
      {
        goto LABEL_19;
      }

      v134 = objc_msgSend_objectAtIndexedSubscript_(v15, v130, v38, v131, v132, v133);
      if (objc_msgSend_isEqualToString_(v134, v135, @"÷", v136, v137, v138))
      {

LABEL_19:
LABEL_20:
        v147 = self->_formatter;
        v63 = v39 - 1;
        v148 = objc_msgSend_objectAtIndexedSubscript_(v15, v143, v63, v144, v145, v146);
        v153 = objc_msgSend_numberFromString_(v147, v149, v148, v150, v151, v152);
        objc_msgSend_doubleValue(v153, v154, v155, v156, v157, v158);
        v160 = v159;

        v161 = self->_formatter;
        v166 = objc_msgSend_objectAtIndexedSubscript_(v15, v162, v39 + 1, v163, v164, v165);
        v171 = objc_msgSend_numberFromString_(v161, v167, v166, v168, v169, v170);
        objc_msgSend_doubleValue(v171, v172, v173, v174, v175, v176);
        v178 = v177;

        v98 = v160 / v178;
        goto LABEL_12;
      }

      v179 = objc_msgSend_objectAtIndexedSubscript_(v15, v139, v38, v140, v141, v142);
      v184 = objc_msgSend_isEqualToString_(v179, v180, @":", v181, v182, v183);

      if (v184)
      {
        goto LABEL_20;
      }

      v185 = objc_msgSend_objectAtIndexedSubscript_(v15, v143, v38, v144, v145, v146);
      v190 = objc_msgSend_isEqualToString_(v185, v186, @"^", v187, v188, v189);

      if (!v190)
      {
        goto LABEL_13;
      }

      v191 = self->_formatter;
      v63 = v39 - 1;
      v192 = objc_msgSend_objectAtIndexedSubscript_(v15, v114, v63, v116, v117, v118);
      v197 = objc_msgSend_numberFromString_(v191, v193, v192, v194, v195, v196);
      objc_msgSend_doubleValue(v197, v198, v199, v200, v201, v202);
      v204 = v203;

      v205 = self->_formatter;
      v210 = objc_msgSend_objectAtIndexedSubscript_(v15, v206, v39 + 1, v207, v208, v209);
      v215 = objc_msgSend_numberFromString_(v205, v211, v210, v212, v213, v214);
      objc_msgSend_doubleValue(v215, v216, v217, v218, v219, v220);
      v222 = v221;

      v98 = pow(v204, v222);
LABEL_12:
      objc_msgSend_removeObjectsInRange_(v15, v95, v63, 3, v96, v97);
      v99 = self->_formatter;
      v105 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v100, v101, v102, v103, v104, v98);
      v110 = objc_msgSend_stringFromNumber_(v99, v106, v105, v107, v108, v109);

      objc_msgSend_insertObject_atIndex_(v15, v111, v110, v63, v112, v113);
      v39 -= 2;

LABEL_13:
      v39 += 2;
      v38 = v39;
      if (objc_msgSend_count(v15, v114, v115, v116, v117, v118) <= v39)
      {
        goto LABEL_24;
      }
    }

LABEL_10:
LABEL_11:
    v62 = self->_formatter;
    v63 = v39 - 1;
    v64 = objc_msgSend_objectAtIndexedSubscript_(v15, v58, v63, v59, v60, v61);
    v69 = objc_msgSend_numberFromString_(v62, v65, v64, v66, v67, v68);
    objc_msgSend_doubleValue(v69, v70, v71, v72, v73, v74);
    v76 = v75;

    v77 = self->_formatter;
    v82 = objc_msgSend_objectAtIndexedSubscript_(v15, v78, v39 + 1, v79, v80, v81);
    v87 = objc_msgSend_numberFromString_(v77, v83, v82, v84, v85, v86);
    objc_msgSend_doubleValue(v87, v88, v89, v90, v91, v92);
    v94 = v93;

    v98 = v76 * v94;
    goto LABEL_12;
  }

  v26 = v4;
LABEL_26:
  v32 = v26;
LABEL_27:

  return v32;
}

- (id)description
{
  v7 = objc_msgSend_root(self, a2, v2, v3, v4, v5);
  v11 = objc_msgSend__descriptionRecursive_level_(self, v8, v7, 0, v9, v10);

  return v11;
}

- (id)_descriptionRecursive:(id)a3 level:(int64_t)a4
{
  v6 = a3;
  v16 = objc_msgSend_string(MEMORY[0x1E696AD60], v7, v8, v9, v10, v11);
  if (a4 >= 1)
  {
    v17 = a4;
    do
    {
      objc_msgSend_appendString_(v16, v12, @"  ", v13, v14, v15);
      --v17;
    }

    while (v17);
  }

  v18 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v6, v19, v18, v20, v21, v22))
  {
    v23 = v6;
    v29 = objc_msgSend_leftNode(v23, v24, v25, v26, v27, v28);
    v33 = objc_msgSend__descriptionRecursive_level_(self, v30, v29, a4 + 1, v31, v32);

    v39 = objc_msgSend_rightNode(v23, v34, v35, v36, v37, v38);

    if (v39)
    {
      v45 = objc_msgSend_rightNode(v23, v40, v41, v42, v43, v44);
      v49 = objc_msgSend__descriptionRecursive_level_(self, v46, v45, a4 + 1, v47, v48);

      v55 = objc_msgSend_description(v23, v50, v51, v52, v53, v54);
      v60 = objc_msgSend_stringByAppendingFormat_(v16, v56, @"%@\n%@\n%@", v57, v58, v59, v55, v33, v49);
    }

    else
    {
      v49 = objc_msgSend_description(v23, v40, v41, v42, v43, v44);
      v60 = objc_msgSend_stringByAppendingFormat_(v16, v61, @"%@\n%@", v62, v63, v64, v49, v33);
    }
  }

  else
  {
    v60 = 0;
  }

  v65 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v6, v66, v65, v67, v68, v69))
  {
    v75 = objc_msgSend_description(v6, v70, v71, v72, v73, v74);
    v80 = objc_msgSend_stringByAppendingString_(v16, v76, v75, v77, v78, v79);

    v60 = v80;
  }

  return v60;
}

- (_NSRange)inputRange
{
  length = self->_inputRange.length;
  location = self->_inputRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end