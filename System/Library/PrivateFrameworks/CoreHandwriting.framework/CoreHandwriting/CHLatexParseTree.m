@interface CHLatexParseTree
- (id)_evaluationRecursive:(id)a3 withVariables:(id)a4;
- (id)_functionRepresentationRecursive:(id)a3;
- (id)_latexRepresentationRecursive:(id)a3;
- (id)evaluateOpExpPriority:(id)a3;
- (id)evaluateVerticalMath:(id)a3;
- (id)evaluationWithVariables:(id)a3 caseSensitive:(BOOL)a4;
- (id)functionRepresentation;
- (id)latexRepresentation;
@end

@implementation CHLatexParseTree

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
    goto LABEL_30;
  }

  v16 = v4;
  v22 = objc_msgSend_rightNode(v16, v17, v18, v19, v20, v21);

  v28 = objc_msgSend_leftNode(v16, v23, v24, v25, v26, v27);
  v15 = objc_msgSend__latexRepresentationRecursive_(self, v29, v28, v30, v31, v32);

  if (v22)
  {
    v38 = objc_msgSend_rightNode(v16, v33, v34, v35, v36, v37);
    v43 = objc_msgSend__latexRepresentationRecursive_(self, v39, v38, v40, v41, v42);

    if ((objc_msgSend_hasSuffix_(v15, v44, @"{", v45, v46, v47) & 1) != 0 || (objc_msgSend_hasPrefix_(v43, v48, @"}", v49, v50, v51) & 1) != 0 || (objc_msgSend_hasSuffix_(v15, v48, @"("), v49, v50, v51 & 1) != 0 || objc_msgSend_hasPrefix_(v43, v48, @""), v49, v50, v51))
    {
      v52 = &stru_1EF1C0318;
      if (objc_msgSend_hasPrefix_(v43, v48, @"{", v49, v50, v51))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v52 = @" ";
      if (objc_msgSend_hasPrefix_(v43, v48, @"{", v49, v50, v51))
      {
        goto LABEL_14;
      }
    }

    if ((objc_msgSend_hasSuffix_(v15, v53, @"}", v55, v56, v57) & 1) == 0 && (objc_msgSend_hasPrefix_(v43, v53, @"("), v55, v56, v57 & 1) == 0 && !objc_msgSend_hasSuffix_(v15, v53, @""), v55, v56, v57))
    {
      goto LABEL_21;
    }

LABEL_14:
    v58 = objc_msgSend_rightNode(v16, v53, v54, v55, v56, v57);
    v64 = objc_msgSend_name(v58, v59, v60, v61, v62, v63);
    if ((objc_msgSend_isEqualToString_(v64, v65, @"ScriptArgs", v66, v67, v68) & 1) == 0)
    {
      v74 = objc_msgSend_rightNode(v16, v69, v70, v71, v72, v73);
      v80 = objc_msgSend_name(v74, v75, v76, v77, v78, v79);
      if ((objc_msgSend_isEqualToString_(v80, v81, @"ScriptArg", v82, v83, v84) & 1) == 0)
      {
        v141 = objc_msgSend_rightNode(v16, v85, v86, v87, v88, v89);
        v95 = objc_msgSend_name(v141, v90, v91, v92, v93, v94);
        if ((objc_msgSend_isEqualToString_(v95, v96, @"TwoArgs", v97, v98, v99) & 1) == 0)
        {
          v139 = objc_msgSend_rightNode(v16, v100, v101, v102, v103, v104);
          v138 = objc_msgSend_name(v139, v129, v130, v131, v132, v133);
          isEqualToString = objc_msgSend_isEqualToString_(v138, v134, @"Arg", v135, v136, v137);

          if ((isEqualToString & 1) == 0)
          {
LABEL_21:
            if ((objc_msgSend_isEqualToString_(v15, v53, @"_", v55, v56, v57) & 1) != 0 || (objc_msgSend_isEqualToString_(v15, v105, @"^", v107, v108, v109) & 1) != 0 || (objc_msgSend_hasPrefix_(v43, v105, @"_", v107, v108, v109) & 1) != 0 || objc_msgSend_hasPrefix_(v43, v105, @"^", v107, v108, v109))
            {
              v52 = &stru_1EF1C0318;
            }

            v110 = objc_msgSend_rightNode(v16, v105, v106, v107, v108, v109);
            v116 = objc_msgSend_name(v110, v111, v112, v113, v114, v115);
            v121 = objc_msgSend_isEqualToString_(v116, v117, @"Fact", v118, v119, v120);

            v126 = &stru_1EF1C0318;
            if (!v121)
            {
              v126 = v52;
            }

            v127 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v122, @"%@%@%@", v123, v124, v125, v15, v126, v43);

            v15 = v127;
            goto LABEL_29;
          }

LABEL_20:
          v52 = &stru_1EF1C0318;
          goto LABEL_21;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_29:

LABEL_30:

  return v15;
}

- (id)functionRepresentation
{
  v11 = objc_msgSend_evaluationWithVariables_(self, a2, &unk_1EF1EBBD0, v2, v3, v4);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = objc_msgSend_evaluationWithVariables_(self, v6, &unk_1EF1EBBF8, v8, v9, v10);
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = objc_msgSend_evaluationWithVariables_(self, v6, &unk_1EF1EBC20, v8, v9, v10);
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
    goto LABEL_26;
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
    isEqualToString = objc_msgSend_isEqualToString_(v49, v50, @"Arg", v51, v52, v53);

    if (isEqualToString)
    {
      v60 = v43;
LABEL_22:
      v65 = v60;
LABEL_23:

      goto LABEL_24;
    }

    v66 = objc_msgSend_name(v16, v55, v56, v57, v58, v59);
    v71 = objc_msgSend_isEqualToString_(v66, v67, @"ExpRArgCurly", v68, v69, v70);

    if (v71)
    {
      v60 = v15;
      goto LABEL_22;
    }

    v77 = objc_msgSend_leftNode(v16, v72, v73, v74, v75, v76);
    v83 = objc_msgSend_name(v77, v78, v79, v80, v81, v82);
    isEqual = objc_msgSend_isEqual_(v83, v84, @"Sqrt", v85, v86, v87);

    if (isEqual)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v89, @"sqrt(%@)", v91, v92, v93, v43);
      v60 = LABEL_21:;
      goto LABEL_22;
    }

    v94 = objc_msgSend_leftNode(v16, v89, v90, v91, v92, v93);
    v100 = objc_msgSend_name(v94, v95, v96, v97, v98, v99);
    v105 = objc_msgSend_isEqual_(v100, v101, @"Sin", v102, v103, v104);

    if (v105)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v106, @"sin(%@)", v108, v109, v110, v43);
      goto LABEL_21;
    }

    v111 = objc_msgSend_leftNode(v16, v106, v107, v108, v109, v110);
    v117 = objc_msgSend_name(v111, v112, v113, v114, v115, v116);
    v122 = objc_msgSend_isEqual_(v117, v118, @"Cos", v119, v120, v121);

    if (v122)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v123, @"cos(%@)", v125, v126, v127, v43);
      goto LABEL_21;
    }

    v128 = objc_msgSend_leftNode(v16, v123, v124, v125, v126, v127);
    v134 = objc_msgSend_name(v128, v129, v130, v131, v132, v133);
    v139 = objc_msgSend_isEqual_(v134, v135, @"Tan", v136, v137, v138);

    if (v139)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v140, @"tan(%@)", v142, v143, v144, v43);
      goto LABEL_21;
    }

    v145 = objc_msgSend_leftNode(v16, v140, v141, v142, v143, v144);
    v151 = objc_msgSend_name(v145, v146, v147, v148, v149, v150);
    v156 = objc_msgSend_isEqual_(v151, v152, @"Arctan", v153, v154, v155);

    if (v156)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v157, @"atan(%@)", v159, v160, v161, v43);
      goto LABEL_21;
    }

    v163 = objc_msgSend_leftNode(v16, v157, v158, v159, v160, v161);
    v169 = objc_msgSend_name(v163, v164, v165, v166, v167, v168);
    v174 = objc_msgSend_isEqualToString_(v169, v170, @"Frac", v171, v172, v173);

    v180 = objc_msgSend_rightNode(v16, v175, v176, v177, v178, v179);
    v186 = v180;
    if (v174)
    {
      v187 = objc_msgSend_leftNode(v180, v181, v182, v183, v184, v185);
      v192 = objc_msgSend__functionRepresentationRecursive_(self, v188, v187, v189, v190, v191);

      v198 = objc_msgSend_rightNode(v186, v193, v194, v195, v196, v197);
      v203 = objc_msgSend__functionRepresentationRecursive_(self, v199, v198, v200, v201, v202);

      v65 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v204, @"(%@)/(%@)", v205, v206, v207, v192, v203);

      goto LABEL_23;
    }

    v208 = objc_msgSend_name(v180, v181, v182, v183, v184, v185);
    v213 = objc_msgSend_isEqualToString_(v208, v209, @"ScriptArg", v210, v211, v212);

    if (v213)
    {
      v219 = objc_msgSend_rightNode(v16, v214, v215, v216, v217, v218);
      v225 = objc_msgSend_leftNode(v219, v220, v221, v222, v223, v224);
      v231 = objc_msgSend_name(v225, v226, v227, v228, v229, v230);
      v236 = objc_msgSend_isEqualToString_(v231, v232, @"Sup", v233, v234, v235);

      if (v236)
      {
        v242 = objc_msgSend_rightNode(v219, v237, v238, v239, v240, v241);
        v247 = objc_msgSend__functionRepresentationRecursive_(self, v243, v242, v244, v245, v246);

        v65 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v248, @"pow(%@,%@)", v249, v250, v251, v15, v247);

        goto LABEL_23;
      }
    }

    v252 = MEMORY[0x1E696AEC0];
    v253 = objc_msgSend_leftNode(v16, v214, v215, v216, v217, v218);
    v259 = objc_msgSend_name(v253, v254, v255, v256, v257, v258);
    v265 = objc_msgSend_rightNode(v16, v260, v261, v262, v263, v264);
    v271 = objc_msgSend_name(v265, v266, v267, v268, v269, v270);
    v276 = objc_msgSend_stringWithFormat_(v252, v272, @"%@ %@", v273, v274, v275, v259, v271);

    v282 = objc_msgSend_leftNode(v16, v277, v278, v279, v280, v281);
    v288 = objc_msgSend_name(v282, v283, v284, v285, v286, v287);
    if ((objc_msgSend_isEqualToString_(v288, v289, @"ClosedExp", v290, v291, v292) & 1) == 0)
    {
      v298 = objc_msgSend_rightNode(v16, v293, v294, v295, v296, v297);
      v304 = objc_msgSend_name(v298, v299, v300, v301, v302, v303);
      if ((objc_msgSend_isEqualToString_(v304, v305, @"ClosedExp", v306, v307, v308) & 1) == 0 && (objc_msgSend_isEqualToString_(v276, v309, @"Number Variable", v310, v311, v312) & 1) == 0 && (objc_msgSend_isEqualToString_(v276, v313, @"Variable Number", v314, v315, v316) & 1) == 0)
      {
        v326 = objc_msgSend_isEqualToString_(v276, v317, @"Variable Variable", v318, v319, v320);

        if ((v326 & 1) == 0)
        {
          v325 = objc_msgSend_stringByAppendingString_(v15, v321, v43, v322, v323, v324);
          goto LABEL_42;
        }

LABEL_41:
        v325 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v321, @"(%@)*(%@)", v322, v323, v324, v15, v43);
LABEL_42:
        v65 = v325;

        goto LABEL_23;
      }
    }

    goto LABEL_41;
  }

  if ((objc_msgSend_isEqualToString_(v15, v33, @"\\cdot", v35, v36, v37) & 1) == 0 && (objc_msgSend_isEqualToString_(v15, v61, @"\\times", v62, v63, v64) & 1) == 0)
  {
    goto LABEL_25;
  }

  v65 = @"*";
LABEL_24:

  v15 = v65;
LABEL_25:

LABEL_26:

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

    v31 = objc_msgSend_formatter(self, v26, v27, v28, v29, v30);
    v24 = objc_msgSend_numberFromString_(v31, v32, v25, v33, v34, v35);

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

  if (v14)
  {
    v20 = objc_msgSend_leftNode(v8, v15, v16, v17, v18, v19);
    v24 = objc_msgSend__evaluationRecursive_withVariables_(self, v21, v20, v7, v22, v23);

    if (objc_msgSend_isEqualToString_(v24, v25, @"STOP", v26, v27, v28))
    {
      v24 = v24;
      v34 = v24;
      goto LABEL_17;
    }

    v81 = objc_msgSend_rightNode(v8, v29, v30, v31, v32, v33);
    v70 = objc_msgSend__evaluationRecursive_withVariables_(self, v82, v81, v7, v83, v84);

    if (objc_msgSend_isEqualToString_(v70, v85, @"STOP", v86, v87, v88))
    {
      goto LABEL_14;
    }

    v94 = objc_msgSend_leftNode(v8, v89, v90, v91, v92, v93);
    v100 = objc_msgSend_name(v94, v95, v96, v97, v98, v99);
    if (objc_msgSend_isEqualToString_(v100, v101, @"LPar", v102, v103, v104))
    {
      goto LABEL_11;
    }

    v115 = objc_msgSend_leftNode(v8, v105, v106, v107, v108, v109);
    v121 = objc_msgSend_name(v115, v116, v117, v118, v119, v120);
    isEqualToString = objc_msgSend_isEqualToString_(v121, v122, @"LeftPar", v123, v124, v125);

    if (isEqualToString)
    {
      goto LABEL_14;
    }

    v151 = objc_msgSend_name(v8, v127, v128, v129, v130, v131);
    v156 = objc_msgSend_isEqualToString_(v151, v152, @"TwoArgs", v153, v154, v155);

    if (v156)
    {
LABEL_30:
      v132 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v157, @"%@ %@", v159, v160, v161, v24, v70);
      goto LABEL_15;
    }

    v162 = objc_msgSend_name(v8, v157, v158, v159, v160, v161);
    if (objc_msgSend_isEqualToString_(v162, v163, @"OpExp", v164, v165, v166))
    {
LABEL_24:

      goto LABEL_30;
    }

    v194 = objc_msgSend_rightNode(v8, v167, v168, v169, v170, v171);
    v200 = objc_msgSend_name(v194, v195, v196, v197, v198, v199);
    v205 = objc_msgSend_isEqualToString_(v200, v201, @"OpExp", v202, v203, v204);

    if (v205)
    {
      goto LABEL_30;
    }

    v207 = objc_msgSend_rightNode(v8, v157, v206, v159, v160, v161);
    v213 = objc_msgSend_name(v207, v208, v209, v210, v211, v212);
    v218 = objc_msgSend_isEqualToString_(v213, v214, @"ScriptArg", v215, v216, v217);

    if (v218)
    {
      v224 = objc_msgSend_rightNode(v8, v219, v220, v221, v222, v223);
      v230 = objc_msgSend_leftNode(v224, v225, v226, v227, v228, v229);
      v236 = objc_msgSend_name(v230, v231, v232, v233, v234, v235);
      v241 = objc_msgSend_isEqualToString_(v236, v237, @"Sup", v238, v239, v240);

      if (v241)
      {
        v247 = objc_msgSend_rightNode(v224, v242, v243, v244, v245, v246);
        v251 = objc_msgSend__evaluationRecursive_withVariables_(self, v248, v247, v7, v249, v250);

        v257 = objc_msgSend_formatter(self, v252, v253, v254, v255, v256);
        v262 = objc_msgSend_numberFromString_(v257, v258, v24, v259, v260, v261);
        objc_msgSend_doubleValue(v262, v263, v264, v265, v266, v267);
        v269 = v268;

        v275 = objc_msgSend_formatter(self, v270, v271, v272, v273, v274);
        v280 = objc_msgSend_numberFromString_(v275, v276, v251, v277, v278, v279);
        objc_msgSend_doubleValue(v280, v281, v282, v283, v284, v285);
        v287 = v286;

        v288 = pow(v269, v287);
        v294 = objc_msgSend_formatter(self, v289, v290, v291, v292, v293);
        v300 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v295, v296, v297, v298, v299, v288);
        v34 = objc_msgSend_stringFromNumber_(v294, v301, v300, v302, v303, v304);
      }

      else
      {
        v34 = @"STOP";
      }

      goto LABEL_16;
    }

    v94 = objc_msgSend_leftNode(v8, v219, v220, v221, v222, v223);
    v100 = objc_msgSend_name(v94, v305, v306, v307, v308, v309);
    if (objc_msgSend_isEqualToString_(v100, v310, @"LPar", v311, v312, v313))
    {
LABEL_11:

LABEL_14:
      v132 = v70;
LABEL_15:
      v34 = v132;
      goto LABEL_16;
    }

    v319 = objc_msgSend_leftNode(v8, v314, v315, v316, v317, v318);
    v325 = objc_msgSend_name(v319, v320, v321, v322, v323, v324);
    if (objc_msgSend_isEqualToString_(v325, v326, @"LeftPar", v327, v328, v329))
    {
LABEL_43:

      goto LABEL_11;
    }

    v1643 = objc_msgSend_leftNode(v8, v330, v331, v332, v333, v334);
    v340 = objc_msgSend_name(v1643, v335, v336, v337, v338, v339);
    if (objc_msgSend_isEqualToString_(v340, v341, @"LCurly", v342, v343, v344))
    {
LABEL_42:

      goto LABEL_43;
    }

    v1641 = objc_msgSend_leftNode(v8, v345, v346, v347, v348, v349);
    v1640 = objc_msgSend_name(v1641, v350, v351, v352, v353, v354);
    if (objc_msgSend_isEqualToString_(v1640, v355, @"LeftCurly", v356, v357, v358))
    {
LABEL_41:

      goto LABEL_42;
    }

    v1639 = objc_msgSend_leftNode(v8, v359, v360, v361, v362, v363);
    v1638 = objc_msgSend_name(v1639, v364, v365, v366, v367, v368);
    if (objc_msgSend_isEqualToString_(v1638, v369, @"LBrack", v370, v371, v372))
    {

      goto LABEL_41;
    }

    v1637 = objc_msgSend_leftNode(v8, v373, v374, v375, v376, v377);
    v1636 = objc_msgSend_name(v1637, v378, v379, v380, v381, v382);
    if (objc_msgSend_isEqualToString_(v1636, v383, @"LeftBrack", v384, v385, v386))
    {
      v1635 = 1;
    }

    else
    {
      v1634 = objc_msgSend_leftNode(v8, v387, v388, v389, v390, v391);
      v1633 = objc_msgSend_name(v1634, v392, v393, v394, v395, v396);
      if (objc_msgSend_isEqualToString_(v1633, v397, @"LAbs", v398, v399, v400))
      {
        v1635 = 1;
      }

      else
      {
        v1632 = objc_msgSend_leftNode(v8, v401, v402, v403, v404, v405);
        v1631 = objc_msgSend_name(v1632, v406, v407, v408, v409, v410);
        if (objc_msgSend_isEqualToString_(v1631, v411, @"LeftAbs", v412, v413, v414))
        {
          v1635 = 1;
        }

        else
        {
          v1630 = objc_msgSend_leftNode(v8, v415, v416, v417, v418, v419);
          v1629 = objc_msgSend_name(v1630, v420, v421, v422, v423, v424);
          if (objc_msgSend_isEqualToString_(v1629, v425, @"LAngle", v426, v427, v428))
          {
            v1635 = 1;
          }

          else
          {
            v1628 = objc_msgSend_leftNode(v8, v429, v430, v431, v432, v433);
            v1627 = objc_msgSend_name(v1628, v434, v435, v436, v437, v438);
            if (objc_msgSend_isEqualToString_(v1627, v439, @"LeftAngle", v440, v441, v442))
            {
              v1635 = 1;
            }

            else
            {
              v1626 = objc_msgSend_leftNode(v8, v443, v444, v445, v446, v447);
              v1625 = objc_msgSend_name(v1626, v448, v449, v450, v451, v452);
              if (objc_msgSend_isEqualToString_(v1625, v453, @"LFloor", v454, v455, v456))
              {
                v1635 = 1;
              }

              else
              {
                v1624 = objc_msgSend_leftNode(v8, v457, v458, v459, v460, v461);
                v1623 = objc_msgSend_name(v1624, v462, v463, v464, v465, v466);
                if (objc_msgSend_isEqualToString_(v1623, v467, @"LeftFloor", v468, v469, v470))
                {
                  v1635 = 1;
                }

                else
                {
                  v1622 = objc_msgSend_leftNode(v8, v471, v472, v473, v474, v475);
                  v1621 = objc_msgSend_name(v1622, v476, v477, v478, v479, v480);
                  if (objc_msgSend_isEqualToString_(v1621, v481, @"LCeil", v482, v483, v484))
                  {
                    v1635 = 1;
                  }

                  else
                  {
                    v1620 = objc_msgSend_leftNode(v8, v485, v486, v487, v488, v489);
                    v1619 = objc_msgSend_name(v1620, v490, v491, v492, v493, v494);
                    v1635 = objc_msgSend_isEqualToString_(v1619, v495, @"LeftCeil", v496, v497, v498);
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v1635)
    {
      goto LABEL_14;
    }

    v504 = objc_msgSend_name(v8, v499, v500, v501, v502, v503);
    if (objc_msgSend_isEqualToString_(v504, v505, @"ExpRPar", v506, v507, v508))
    {
      goto LABEL_79;
    }

    v514 = objc_msgSend_name(v8, v509, v510, v511, v512, v513);
    if (objc_msgSend_isEqualToString_(v514, v515, @"ExpRightPar", v516, v517, v518))
    {
LABEL_78:

LABEL_79:
      goto LABEL_80;
    }

    v524 = objc_msgSend_name(v8, v519, v520, v521, v522, v523);
    if (objc_msgSend_isEqualToString_(v524, v525, @"ExpRCurly", v526, v527, v528))
    {
LABEL_77:

      goto LABEL_78;
    }

    v534 = objc_msgSend_name(v8, v529, v530, v531, v532, v533);
    if (objc_msgSend_isEqualToString_(v534, v535, @"ExpRightCurly", v536, v537, v538))
    {
LABEL_76:

      goto LABEL_77;
    }

    v544 = objc_msgSend_name(v8, v539, v540, v541, v542, v543);
    if (objc_msgSend_isEqualToString_(v544, v545, @"ExpRAngle", v546, v547, v548))
    {

      goto LABEL_76;
    }

    v1642 = objc_msgSend_name(v8, v549, v550, v551, v552, v553);
    v1644 = objc_msgSend_isEqualToString_(v1642, v558, @"ExpRightAngle", v559, v560, v561);

    if (v1644)
    {
      goto LABEL_80;
    }

    v563 = objc_msgSend_name(v8, v554, v562, v555, v556, v557);
    if (objc_msgSend_isEqualToString_(v563, v564, @"ExpRAbs", v565, v566, v567))
    {

LABEL_85:
      v584 = objc_msgSend_formatter(self, v573, v574, v575, v576, v577);
      v589 = objc_msgSend_evaluateOpExpPriority_(self, v585, v24, v586, v587, v588);
      v594 = objc_msgSend_numberFromString_(v584, v590, v589, v591, v592, v593);
      objc_msgSend_doubleValue(v594, v595, v596, v597, v598, v599);
      v601 = v600;

      v607 = objc_msgSend_formatter(self, v602, v603, v604, v605, v606);
      objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v608, v609, v610, v611, v612, fabs(v601));
      v613 = LABEL_86:;
      v34 = objc_msgSend_stringFromNumber_(v607, v614, v613, v615, v616, v617);

      goto LABEL_16;
    }

    v578 = objc_msgSend_name(v8, v568, v569, v570, v571, v572);
    v583 = objc_msgSend_isEqualToString_(v578, v579, @"ExpRightAbs", v580, v581, v582);

    if (v583)
    {
      goto LABEL_85;
    }

    v618 = objc_msgSend_name(v8, v573, v574, v575, v576, v577);
    if (objc_msgSend_isEqualToString_(v618, v619, @"ExpRFloor", v620, v621, v622))
    {

LABEL_90:
      v639 = objc_msgSend_formatter(self, v628, v629, v630, v631, v632);
      v644 = objc_msgSend_evaluateOpExpPriority_(self, v640, v24, v641, v642, v643);
      v649 = objc_msgSend_numberFromString_(v639, v645, v644, v646, v647, v648);
      objc_msgSend_doubleValue(v649, v650, v651, v652, v653, v654);
      v656 = v655;

      v607 = objc_msgSend_formatter(self, v657, v658, v659, v660, v661);
      objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v662, v663, v664, v665, v666, floor(v656));
      goto LABEL_86;
    }

    v633 = objc_msgSend_name(v8, v623, v624, v625, v626, v627);
    v638 = objc_msgSend_isEqualToString_(v633, v634, @"ExpRightFloor", v635, v636, v637);

    if (v638)
    {
      goto LABEL_90;
    }

    v667 = objc_msgSend_name(v8, v628, v629, v630, v631, v632);
    if (objc_msgSend_isEqualToString_(v667, v668, @"ExpRCeil", v669, v670, v671))
    {

LABEL_94:
      v688 = objc_msgSend_formatter(self, v677, v678, v679, v680, v681);
      v693 = objc_msgSend_evaluateOpExpPriority_(self, v689, v24, v690, v691, v692);
      v698 = objc_msgSend_numberFromString_(v688, v694, v693, v695, v696, v697);
      objc_msgSend_doubleValue(v698, v699, v700, v701, v702, v703);
      v705 = v704;

      v607 = objc_msgSend_formatter(self, v706, v707, v708, v709, v710);
      objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v711, v712, v713, v714, v715, ceil(v705));
      goto LABEL_86;
    }

    v682 = objc_msgSend_name(v8, v672, v673, v674, v675, v676);
    v687 = objc_msgSend_isEqualToString_(v682, v683, @"ExpRightCeil", v684, v685, v686);

    if (v687)
    {
      goto LABEL_94;
    }

    v716 = objc_msgSend_name(v8, v677, v678, v679, v680, v681);
    v721 = objc_msgSend_isEqualToString_(v716, v717, @"Arg", v718, v719, v720);

    if (v721)
    {
      goto LABEL_14;
    }

    v727 = objc_msgSend_name(v8, v722, v723, v724, v725, v726);
    v732 = objc_msgSend_isEqualToString_(v727, v728, @"ExpRArgCurly", v729, v730, v731);

    if (v732)
    {
LABEL_80:
      v132 = objc_msgSend_evaluateOpExpPriority_(self, v554, v24, v555, v556, v557);
      goto LABEL_15;
    }

    v162 = objc_msgSend_name(v8, v554, v733, v555, v556, v557);
    if (objc_msgSend_isEqualToString_(v162, v734, @"TwoArgs", v735, v736, v737))
    {
      goto LABEL_24;
    }

    v743 = objc_msgSend_name(v8, v738, v739, v740, v741, v742);
    if (objc_msgSend_isEqualToString_(v743, v744, @"ScriptArg", v745, v746, v747))
    {

      goto LABEL_24;
    }

    v753 = objc_msgSend_name(v8, v748, v749, v750, v751, v752);
    v758 = objc_msgSend_isEqualToString_(v753, v754, @"ScriptArgs", v755, v756, v757);

    if (v758)
    {
      goto LABEL_30;
    }

    v760 = objc_msgSend_rightNode(v8, v157, v759, v159, v160, v161);
    v766 = objc_msgSend_name(v760, v761, v762, v763, v764, v765);
    v771 = objc_msgSend_isEqualToString_(v766, v767, @"Eq", v768, v769, v770);

    if (v771)
    {
      v132 = v24;
      goto LABEL_15;
    }

    v777 = objc_msgSend_leftNode(v8, v772, v773, v774, v775, v776);
    v783 = objc_msgSend_name(v777, v778, v779, v780, v781, v782);
    v788 = objc_msgSend_isEqualToString_(v783, v784, @"Frac", v785, v786, v787);

    if (v788)
    {
      v794 = objc_msgSend_rightNode(v8, v789, v790, v791, v792, v793);
      v800 = objc_msgSend_leftNode(v794, v795, v796, v797, v798, v799);
      v804 = objc_msgSend__evaluationRecursive_withVariables_(self, v801, v800, v7, v802, v803);

      v810 = objc_msgSend_rightNode(v794, v805, v806, v807, v808, v809);
      v814 = objc_msgSend__evaluationRecursive_withVariables_(self, v811, v810, v7, v812, v813);

      v34 = @"STOP";
      if ((objc_msgSend_isEqualToString_(v804, v815, @"STOP", v816, v817, v818) & 1) == 0 && (objc_msgSend_isEqualToString_(v814, v819, @"STOP", v820, v821, v822) & 1) == 0)
      {
        v828 = objc_msgSend_formatter(self, v823, v824, v825, v826, v827);
        v833 = objc_msgSend_numberFromString_(v828, v829, v804, v830, v831, v832);
        objc_msgSend_doubleValue(v833, v834, v835, v836, v837, v838);
        v840 = v839;

        v846 = objc_msgSend_formatter(self, v841, v842, v843, v844, v845);
        v851 = objc_msgSend_numberFromString_(v846, v847, v814, v848, v849, v850);
        objc_msgSend_doubleValue(v851, v852, v853, v854, v855, v856);
        v858 = v857;

        v864 = objc_msgSend_formatter(self, v859, v860, v861, v862, v863);
        v870 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v865, v866, v867, v868, v869, v840 / v858);
        v34 = objc_msgSend_stringFromNumber_(v864, v871, v870, v872, v873, v874);
      }

      goto LABEL_16;
    }

    v875 = objc_msgSend_leftNode(v8, v789, v790, v791, v792, v793);
    v881 = objc_msgSend_name(v875, v876, v877, v878, v879, v880);
    v886 = objc_msgSend_isEqualToString_(v881, v882, @"Sqrt", v883, v884, v885);

    if (v886)
    {
      v892 = objc_msgSend_formatter(self, v887, v888, v889, v890, v891);
      v897 = objc_msgSend_numberFromString_(v892, v893, v70, v894, v895, v896);
      objc_msgSend_doubleValue(v897, v898, v899, v900, v901, v902);
      v904 = v903;

      v607 = objc_msgSend_formatter(self, v905, v906, v907, v908, v909);
      objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v910, v911, v912, v913, v914, sqrt(v904));
      goto LABEL_86;
    }

    v915 = objc_msgSend_leftNode(v8, v887, v888, v889, v890, v891);
    v921 = objc_msgSend_name(v915, v916, v917, v918, v919, v920);
    v926 = objc_msgSend_isEqualToString_(v921, v922, @"Sin", v923, v924, v925);

    if (v926)
    {
      v932 = objc_msgSend_formatter(self, v927, v928, v929, v930, v931);
      v937 = objc_msgSend_numberFromString_(v932, v933, v70, v934, v935, v936);
      objc_msgSend_doubleValue(v937, v938, v939, v940, v941, v942);
      v944 = v943;

      v607 = objc_msgSend_formatter(self, v945, v946, v947, v948, v949);
      v950 = MEMORY[0x1E696AD98];
      v956 = sin(v944);
LABEL_119:
      objc_msgSend_numberWithDouble_(v950, v951, v952, v953, v954, v955, v956);
      goto LABEL_86;
    }

    v957 = objc_msgSend_leftNode(v8, v927, v928, v929, v930, v931);
    v963 = objc_msgSend_name(v957, v958, v959, v960, v961, v962);
    v968 = objc_msgSend_isEqualToString_(v963, v964, @"Cos", v965, v966, v967);

    if (v968)
    {
      v974 = objc_msgSend_formatter(self, v969, v970, v971, v972, v973);
      v979 = objc_msgSend_numberFromString_(v974, v975, v70, v976, v977, v978);
      objc_msgSend_doubleValue(v979, v980, v981, v982, v983, v984);
      v986 = v985;

      v607 = objc_msgSend_formatter(self, v987, v988, v989, v990, v991);
      v950 = MEMORY[0x1E696AD98];
      v956 = cos(v986);
      goto LABEL_119;
    }

    v992 = objc_msgSend_leftNode(v8, v969, v970, v971, v972, v973);
    v998 = objc_msgSend_name(v992, v993, v994, v995, v996, v997);
    v1003 = objc_msgSend_isEqualToString_(v998, v999, @"Tan", v1000, v1001, v1002);

    if (v1003)
    {
      v1009 = objc_msgSend_formatter(self, v1004, v1005, v1006, v1007, v1008);
      v1014 = objc_msgSend_numberFromString_(v1009, v1010, v70, v1011, v1012, v1013);
      objc_msgSend_doubleValue(v1014, v1015, v1016, v1017, v1018, v1019);
      v1021 = v1020;

      v607 = objc_msgSend_formatter(self, v1022, v1023, v1024, v1025, v1026);
      v950 = MEMORY[0x1E696AD98];
      v1027 = v1021;
LABEL_116:
      v956 = tan(v1027);
      goto LABEL_119;
    }

    v1028 = objc_msgSend_leftNode(v8, v1004, v1005, v1006, v1007, v1008);
    v1034 = objc_msgSend_name(v1028, v1029, v1030, v1031, v1032, v1033);
    v1039 = objc_msgSend_isEqualToString_(v1034, v1035, @"Arctan", v1036, v1037, v1038);

    if (v1039)
    {
      v1045 = objc_msgSend_formatter(self, v1040, v1041, v1042, v1043, v1044);
      v1050 = objc_msgSend_numberFromString_(v1045, v1046, v70, v1047, v1048, v1049);
      objc_msgSend_doubleValue(v1050, v1051, v1052, v1053, v1054, v1055);
      v1057 = v1056;

      v607 = objc_msgSend_formatter(self, v1058, v1059, v1060, v1061, v1062);
      v950 = MEMORY[0x1E696AD98];
      v956 = atan(v1057);
      goto LABEL_119;
    }

    if (objc_msgSend_isEqualToString_(v24, v1040, @"\\cot", v1042, v1043, v1044))
    {
      v1068 = objc_msgSend_formatter(self, v1063, v1064, v1065, v1066, v1067);
      v1073 = objc_msgSend_numberFromString_(v1068, v1069, v70, v1070, v1071, v1072);
      objc_msgSend_doubleValue(v1073, v1074, v1075, v1076, v1077, v1078);
      v1080 = v1079;

      v607 = objc_msgSend_formatter(self, v1081, v1082, v1083, v1084, v1085);
      v950 = MEMORY[0x1E696AD98];
      v1027 = 1.57079633 - v1080;
      goto LABEL_116;
    }

    if (objc_msgSend_isEqualToString_(v24, v1063, @"\\arcsin", v1065, v1066, v1067))
    {
      v1091 = objc_msgSend_formatter(self, v1086, v1087, v1088, v1089, v1090);
      v1096 = objc_msgSend_numberFromString_(v1091, v1092, v70, v1093, v1094, v1095);
      objc_msgSend_doubleValue(v1096, v1097, v1098, v1099, v1100, v1101);
      v1103 = v1102;

      v607 = objc_msgSend_formatter(self, v1104, v1105, v1106, v1107, v1108);
      v950 = MEMORY[0x1E696AD98];
      v956 = asin(v1103);
      goto LABEL_119;
    }

    if (objc_msgSend_isEqualToString_(v24, v1086, @"\\arccos", v1088, v1089, v1090))
    {
      v1114 = objc_msgSend_formatter(self, v1109, v1110, v1111, v1112, v1113);
      v1119 = objc_msgSend_numberFromString_(v1114, v1115, v70, v1116, v1117, v1118);
      objc_msgSend_doubleValue(v1119, v1120, v1121, v1122, v1123, v1124);
      v1126 = v1125;

      v607 = objc_msgSend_formatter(self, v1127, v1128, v1129, v1130, v1131);
      v950 = MEMORY[0x1E696AD98];
      v956 = acos(v1126);
      goto LABEL_119;
    }

    if (objc_msgSend_isEqualToString_(v24, v1109, @"\\sinh", v1111, v1112, v1113))
    {
      v1137 = objc_msgSend_formatter(self, v1132, v1133, v1134, v1135, v1136);
      v1142 = objc_msgSend_numberFromString_(v1137, v1138, v70, v1139, v1140, v1141);
      objc_msgSend_doubleValue(v1142, v1143, v1144, v1145, v1146, v1147);
      v1149 = v1148;

      v607 = objc_msgSend_formatter(self, v1150, v1151, v1152, v1153, v1154);
      v950 = MEMORY[0x1E696AD98];
      v956 = sinh(v1149);
      goto LABEL_119;
    }

    if (objc_msgSend_isEqualToString_(v24, v1132, @"\\cosh", v1134, v1135, v1136))
    {
      v1160 = objc_msgSend_formatter(self, v1155, v1156, v1157, v1158, v1159);
      v1165 = objc_msgSend_numberFromString_(v1160, v1161, v70, v1162, v1163, v1164);
      objc_msgSend_doubleValue(v1165, v1166, v1167, v1168, v1169, v1170);
      v1172 = v1171;

      v607 = objc_msgSend_formatter(self, v1173, v1174, v1175, v1176, v1177);
      v950 = MEMORY[0x1E696AD98];
      v956 = cosh(v1172);
      goto LABEL_119;
    }

    if (objc_msgSend_isEqualToString_(v24, v1155, @"\\tanh", v1157, v1158, v1159))
    {
      v1183 = objc_msgSend_formatter(self, v1178, v1179, v1180, v1181, v1182);
      v1188 = objc_msgSend_numberFromString_(v1183, v1184, v70, v1185, v1186, v1187);
      objc_msgSend_doubleValue(v1188, v1189, v1190, v1191, v1192, v1193);
      v1195 = v1194;

      v607 = objc_msgSend_formatter(self, v1196, v1197, v1198, v1199, v1200);
      v950 = MEMORY[0x1E696AD98];
      v956 = tanh(v1195);
      goto LABEL_119;
    }

    if (objc_msgSend_isEqualToString_(v24, v1178, @"\\coth", v1180, v1181, v1182))
    {
      v1206 = objc_msgSend_formatter(self, v1201, v1202, v1203, v1204, v1205);
      v1211 = objc_msgSend_numberFromString_(v1206, v1207, v70, v1208, v1209, v1210);
      objc_msgSend_doubleValue(v1211, v1212, v1213, v1214, v1215, v1216);
      v1218 = v1217;

      v607 = objc_msgSend_formatter(self, v1219, v1220, v1221, v1222, v1223);
      v950 = MEMORY[0x1E696AD98];
      v956 = 1.0 / tanh(v1218);
      goto LABEL_119;
    }

    if (objc_msgSend_isEqualToString_(v24, v1201, @"\\exp", v1203, v1204, v1205))
    {
      v1229 = objc_msgSend_formatter(self, v1224, v1225, v1226, v1227, v1228);
      v1234 = objc_msgSend_numberFromString_(v1229, v1230, v70, v1231, v1232, v1233);
      objc_msgSend_doubleValue(v1234, v1235, v1236, v1237, v1238, v1239);
      v1241 = v1240;

      v607 = objc_msgSend_formatter(self, v1242, v1243, v1244, v1245, v1246);
      v950 = MEMORY[0x1E696AD98];
      v956 = exp(v1241);
      goto LABEL_119;
    }

    if (objc_msgSend_isEqualToString_(v24, v1224, @"\\log", v1226, v1227, v1228))
    {
      v1252 = objc_msgSend_formatter(self, v1247, v1248, v1249, v1250, v1251);
      v1257 = objc_msgSend_numberFromString_(v1252, v1253, v70, v1254, v1255, v1256);
      objc_msgSend_doubleValue(v1257, v1258, v1259, v1260, v1261, v1262);
      v1264 = v1263;

      v607 = objc_msgSend_formatter(self, v1265, v1266, v1267, v1268, v1269);
      v950 = MEMORY[0x1E696AD98];
      v956 = log10(v1264);
      goto LABEL_119;
    }

    if (objc_msgSend_isEqualToString_(v24, v1247, @"\\ln", v1249, v1250, v1251))
    {
      v1275 = objc_msgSend_formatter(self, v1270, v1271, v1272, v1273, v1274);
      v1280 = objc_msgSend_numberFromString_(v1275, v1276, v70, v1277, v1278, v1279);
      objc_msgSend_doubleValue(v1280, v1281, v1282, v1283, v1284, v1285);
      v1287 = v1286;

      v607 = objc_msgSend_formatter(self, v1288, v1289, v1290, v1291, v1292);
      v950 = MEMORY[0x1E696AD98];
      v956 = log(v1287);
      goto LABEL_119;
    }

    if (objc_msgSend_isEqualToString_(v24, v1270, @"\\lg", v1272, v1273, v1274))
    {
      v1298 = objc_msgSend_formatter(self, v1293, v1294, v1295, v1296, v1297);
      v1303 = objc_msgSend_numberFromString_(v1298, v1299, v70, v1300, v1301, v1302);
      objc_msgSend_doubleValue(v1303, v1304, v1305, v1306, v1307, v1308);
      v1310 = v1309;

      v607 = objc_msgSend_formatter(self, v1311, v1312, v1313, v1314, v1315);
      v950 = MEMORY[0x1E696AD98];
      v956 = log2(v1310);
      goto LABEL_119;
    }

    v1316 = objc_msgSend_leftNode(v8, v1293, v1294, v1295, v1296, v1297);
    v1322 = objc_msgSend_name(v1316, v1317, v1318, v1319, v1320, v1321);
    if (objc_msgSend_isEqualToString_(v1322, v1323, @"UnOp", v1324, v1325, v1326))
    {
      v1331 = objc_msgSend_isEqualToString_(v24, v1327, @"-", v1328, v1329, v1330);

      if (v1331)
      {
        v1337 = objc_msgSend_formatter(self, v1332, v1333, v1334, v1335, v1336);
        v1342 = objc_msgSend_numberFromString_(v1337, v1338, v70, v1339, v1340, v1341);
        objc_msgSend_doubleValue(v1342, v1343, v1344, v1345, v1346, v1347);
        v1349 = v1348;

        v607 = objc_msgSend_formatter(self, v1350, v1351, v1352, v1353, v1354);
        objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v1355, v1356, v1357, v1358, v1359, -v1349);
        goto LABEL_86;
      }
    }

    else
    {
    }

    v1360 = objc_msgSend_rightNode(v8, v1332, v1333, v1334, v1335, v1336);
    v1366 = objc_msgSend_name(v1360, v1361, v1362, v1363, v1364, v1365);
    v1371 = objc_msgSend_isEqualToString_(v1366, v1367, @"Fact", v1368, v1369, v1370);

    if (v1371)
    {
      v1377 = objc_msgSend_formatter(self, v1372, v1373, v1374, v1375, v1376);
      v1382 = objc_msgSend_numberFromString_(v1377, v1378, v24, v1379, v1380, v1381);
      objc_msgSend_doubleValue(v1382, v1383, v1384, v1385, v1386, v1387);
      v1389 = v1388;

      v607 = objc_msgSend_formatter(self, v1390, v1391, v1392, v1393, v1394);
      v950 = MEMORY[0x1E696AD98];
      v956 = tgamma(v1389 + 1.0);
      goto LABEL_119;
    }

    v1395 = MEMORY[0x1E696AEC0];
    v1396 = objc_msgSend_leftNode(v8, v1372, v1373, v1374, v1375, v1376);
    v1402 = objc_msgSend_name(v1396, v1397, v1398, v1399, v1400, v1401);
    v1408 = objc_msgSend_rightNode(v8, v1403, v1404, v1405, v1406, v1407);
    v1414 = objc_msgSend_name(v1408, v1409, v1410, v1411, v1412, v1413);
    v1645 = objc_msgSend_stringWithFormat_(v1395, v1415, @"%@ %@", v1416, v1417, v1418, v1402, v1414);

    v1424 = objc_msgSend_leftNode(v8, v1419, v1420, v1421, v1422, v1423);
    v1430 = objc_msgSend_name(v1424, v1425, v1426, v1427, v1428, v1429);
    if (objc_msgSend_isEqualToString_(v1430, v1431, @"ClosedExp", v1432, v1433, v1434))
    {
      goto LABEL_154;
    }

    v1440 = objc_msgSend_rightNode(v8, v1435, v1436, v1437, v1438, v1439);
    v1446 = objc_msgSend_name(v1440, v1441, v1442, v1443, v1444, v1445);
    if (objc_msgSend_isEqualToString_(v1446, v1447, @"ClosedExp", v1448, v1449, v1450) & 1) != 0 || (objc_msgSend_isEqualToString_(v1645, v1451, @"Number Variable", v1452, v1453, v1454) & 1) != 0 || (objc_msgSend_isEqualToString_(v1645, v1455, @"Variable Number", v1456, v1457, v1458) & 1) != 0 || (objc_msgSend_isEqualToString_(v1645, v1459, @"Variable Variable", v1460, v1461, v1462))
    {

LABEL_154:
LABEL_155:
      v1472 = objc_msgSend_formatter(self, v1467, v1468, v1469, v1470, v1471);
      v1477 = objc_msgSend_numberFromString_(v1472, v1473, v24, v1474, v1475, v1476);
      objc_msgSend_doubleValue(v1477, v1478, v1479, v1480, v1481, v1482);
      v1484 = v1483;

      v1490 = objc_msgSend_formatter(self, v1485, v1486, v1487, v1488, v1489);
      v1495 = objc_msgSend_numberFromString_(v1490, v1491, v70, v1492, v1493, v1494);
      objc_msgSend_doubleValue(v1495, v1496, v1497, v1498, v1499, v1500);
      v1502 = v1501;

      v1508 = objc_msgSend_formatter(self, v1503, v1504, v1505, v1506, v1507);
      v1514 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v1509, v1510, v1511, v1512, v1513, v1484 * v1502);
      v34 = objc_msgSend_stringFromNumber_(v1508, v1515, v1514, v1516, v1517, v1518);

LABEL_156:
      goto LABEL_16;
    }

    v1519 = objc_msgSend_isEqualToString_(v1645, v1463, @"Variable VarVar", v1464, v1465, v1466);

    if (v1519)
    {
      goto LABEL_155;
    }

    v1520 = objc_msgSend_name(v8, v1467, v1468, v1469, v1470, v1471);
    if (objc_msgSend_isEqualToString_(v1520, v1521, @"EntriesHLine", v1522, v1523, v1524))
    {

      v1530 = v24;
    }

    else
    {
      v1531 = objc_msgSend_name(v8, v1525, v1526, v1527, v1528, v1529);
      v1536 = objc_msgSend_isEqualToString_(v1531, v1532, @"NumberLinebreak", v1533, v1534, v1535);

      if (!v1536)
      {
        v1542 = objc_msgSend_leftNode(v8, v1537, v1538, v1539, v1540, v1541);
        v1548 = objc_msgSend_name(v1542, v1543, v1544, v1545, v1546, v1547);
        if (objc_msgSend_isEqualToString_(v1548, v1549, @"OpenVerticalMath", v1550, v1551, v1552))
        {
        }

        else
        {
          v1558 = objc_msgSend_name(v8, v1553, v1554, v1555, v1556, v1557);
          v1563 = objc_msgSend_isEqualToString_(v1558, v1559, @"AndNumberLinebreak", v1560, v1561, v1562);

          if (!v1563)
          {
            v1569 = objc_msgSend_name(v8, v1564, v1565, v1566, v1567, v1568);
            v1574 = objc_msgSend_isEqualToString_(v1569, v1570, @"Entries", v1571, v1572, v1573);

            if (v1574)
            {
              goto LABEL_168;
            }

            v1580 = objc_msgSend_name(v8, v1575, v1576, v1577, v1578, v1579);
            v1585 = objc_msgSend_isEqualToString_(v1580, v1581, @"Entry", v1582, v1583, v1584);

            if (!v1585)
            {
              v1603 = objc_msgSend_rightNode(v8, v1586, v1587, v1588, v1589, v1590);
              v1609 = objc_msgSend_name(v1603, v1604, v1605, v1606, v1607, v1608);
              v1614 = objc_msgSend_isEqualToString_(v1609, v1610, @"CloseVerticalMath", v1611, v1612, v1613);

              if (!v1614)
              {
                v34 = @"STOP";
                goto LABEL_156;
              }

              v1530 = objc_msgSend_evaluateVerticalMath_(self, v1615, v24, v1616, v1617, v1618);
              goto LABEL_172;
            }

            v1591 = objc_msgSend_leftNode(v8, v1586, v1587, v1588, v1589, v1590);
            v1597 = objc_msgSend_name(v1591, v1592, v1593, v1594, v1595, v1596);
            v1602 = objc_msgSend_isEqualToString_(v1597, v1598, @"Op", v1599, v1600, v1601);

            if (v1602)
            {
LABEL_168:
              v1530 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v1575, @"%@ %@", v1577, v1578, v1579, v24, v70);
              goto LABEL_172;
            }
          }
        }

        v1530 = v70;
        goto LABEL_172;
      }

      v1530 = v24;
    }

LABEL_172:
    v34 = v1530;
    goto LABEL_156;
  }

  v35 = objc_msgSend_name(v8, v15, v16, v17, v18, v19);
  v40 = objc_msgSend_isEqualToString_(v35, v36, @"Variable", v37, v38, v39);

  if (!v40)
  {
    v24 = objc_msgSend_leftNode(v8, v41, v42, v43, v44, v45);
    v34 = objc_msgSend_getStringValue(v24, v110, v111, v112, v113, v114);
    goto LABEL_17;
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

  if (v64)
  {
    v70 = objc_msgSend_objectForKeyedSubscript_(v7, v65, v24, v67, v68, v69);
    v76 = objc_msgSend_formatter(self, v71, v72, v73, v74, v75);
    v34 = objc_msgSend_stringFromNumber_(v76, v77, v70, v78, v79, v80);

LABEL_16:
    goto LABEL_17;
  }

  v134 = objc_msgSend_leftNode(v8, v65, v66, v67, v68, v69);
  v140 = objc_msgSend_name(v134, v135, v136, v137, v138, v139);
  v145 = objc_msgSend_isEqualToString_(v140, v141, @"e", v142, v143, v144);

  if (v145)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v146, @"%0.9f", v148, v149, v150, 0x4005BF0A8B145769);
    v34 = LABEL_27:;
    goto LABEL_17;
  }

  v172 = objc_msgSend_leftNode(v8, v146, v147, v148, v149, v150);
  v178 = objc_msgSend_name(v172, v173, v174, v175, v176, v177);
  v184 = objc_msgSend_lowercaseString(v178, v179, v180, v181, v182, v183);
  v189 = objc_msgSend_isEqualToString_(v184, v185, @"\\pi", v186, v187, v188);

  if (v189)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v190, @"%0.9f", v191, v192, v193, 0x400921FB54442D18);
    goto LABEL_27;
  }

  v34 = @"STOP";
LABEL_17:

  return v34;
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
        if ((objc_msgSend_count(v15, v256, v257, v258, v259, v260) & 1) == 0)
        {
          goto LABEL_4;
        }

        if (objc_msgSend_count(v15, v262, v263, v264, v265, v266) >= 2)
        {
          v32 = @"STOP";
          do
          {
            v294 = objc_msgSend_formatter(self, v256, v267, v258, v259, v260);
            v299 = objc_msgSend_objectAtIndexedSubscript_(v15, v295, 0, v296, v297, v298);
            v304 = objc_msgSend_numberFromString_(v294, v300, v299, v301, v302, v303);
            objc_msgSend_doubleValue(v304, v305, v306, v307, v308, v309);
            v311 = v310;

            v317 = objc_msgSend_formatter(self, v312, v313, v314, v315, v316);
            v322 = objc_msgSend_objectAtIndexedSubscript_(v15, v318, 2, v319, v320, v321);
            v327 = objc_msgSend_numberFromString_(v317, v323, v322, v324, v325, v326);
            objc_msgSend_doubleValue(v327, v328, v329, v330, v331, v332);
            v334 = v333;

            v339 = objc_msgSend_objectAtIndexedSubscript_(v15, v335, 1, v336, v337, v338);
            LODWORD(v322) = objc_msgSend_isEqualToString_(v339, v340, @"+", v341, v342, v343);

            if (v322)
            {
              v268 = v311 + v334;
            }

            else
            {
              v348 = objc_msgSend_objectAtIndexedSubscript_(v15, v344, 1, v345, v346, v347);
              isEqualToString = objc_msgSend_isEqualToString_(v348, v349, @"-", v350, v351, v352);

              if (!isEqualToString)
              {
                goto LABEL_27;
              }

              v268 = v311 - v334;
            }

            objc_msgSend_removeObjectsInRange_(v15, v344, 0, 3, v346, v347);
            v274 = objc_msgSend_formatter(self, v269, v270, v271, v272, v273);
            v280 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v275, v276, v277, v278, v279, v268);
            v285 = objc_msgSend_stringFromNumber_(v274, v281, v280, v282, v283, v284);

            objc_msgSend_insertObject_atIndex_(v15, v286, v285, 0, v287, v288);
          }

          while (objc_msgSend_count(v15, v289, v290, v291, v292, v293) > 1);
        }
      }

      v26 = objc_msgSend_objectAtIndexedSubscript_(v15, v256, 0, v258, v259, v260);
      goto LABEL_26;
    }

    v38 = 1;
    while (1)
    {
      v39 = objc_msgSend_objectAtIndexedSubscript_(v15, v33, v38, v35, v36, v37);
      if (objc_msgSend_isEqualToString_(v39, v40, @"\\times", v41, v42, v43))
      {
        goto LABEL_10;
      }

      v48 = objc_msgSend_objectAtIndexedSubscript_(v15, v44, v38, v45, v46, v47);
      if (objc_msgSend_isEqualToString_(v48, v49, @"\\cdot", v50, v51, v52))
      {
        break;
      }

      v133 = objc_msgSend_objectAtIndexedSubscript_(v15, v53, v38, v54, v55, v56);
      v138 = objc_msgSend_isEqualToString_(v133, v134, @"\\ast", v135, v136, v137);

      if (v138)
      {
        goto LABEL_11;
      }

      v139 = objc_msgSend_objectAtIndexedSubscript_(v15, v57, v38, v59, v60, v61);
      if (objc_msgSend_isEqualToString_(v139, v140, @"/", v141, v142, v143))
      {
        goto LABEL_19;
      }

      v148 = objc_msgSend_objectAtIndexedSubscript_(v15, v144, v38, v145, v146, v147);
      if (objc_msgSend_isEqualToString_(v148, v149, @"\\div", v150, v151, v152))
      {

LABEL_19:
LABEL_20:
        v162 = objc_msgSend_formatter(self, v157, v158, v159, v160, v161);
        v63 = v38 - 1;
        v167 = objc_msgSend_objectAtIndexedSubscript_(v15, v163, v38 - 1, v164, v165, v166);
        v172 = objc_msgSend_numberFromString_(v162, v168, v167, v169, v170, v171);
        objc_msgSend_doubleValue(v172, v173, v174, v175, v176, v177);
        v179 = v178;

        v185 = objc_msgSend_formatter(self, v180, v181, v182, v183, v184);
        v190 = objc_msgSend_objectAtIndexedSubscript_(v15, v186, v38 + 1, v187, v188, v189);
        v195 = objc_msgSend_numberFromString_(v185, v191, v190, v192, v193, v194);
        objc_msgSend_doubleValue(v195, v196, v197, v198, v199, v200);
        v202 = v201;

        v107 = v179 / v202;
        goto LABEL_12;
      }

      v203 = objc_msgSend_objectAtIndexedSubscript_(v15, v153, v38, v154, v155, v156);
      v208 = objc_msgSend_isEqualToString_(v203, v204, @":", v205, v206, v207);

      if (v208)
      {
        goto LABEL_20;
      }

      v209 = objc_msgSend_objectAtIndexedSubscript_(v15, v157, v38, v159, v160, v161);
      v214 = objc_msgSend_isEqualToString_(v209, v210, @"^", v211, v212, v213);

      if (!v214)
      {
        goto LABEL_13;
      }

      v215 = objc_msgSend_formatter(self, v128, v129, v130, v131, v132);
      v63 = v38 - 1;
      v220 = objc_msgSend_objectAtIndexedSubscript_(v15, v216, v38 - 1, v217, v218, v219);
      v225 = objc_msgSend_numberFromString_(v215, v221, v220, v222, v223, v224);
      objc_msgSend_doubleValue(v225, v226, v227, v228, v229, v230);
      v232 = v231;

      v238 = objc_msgSend_formatter(self, v233, v234, v235, v236, v237);
      v243 = objc_msgSend_objectAtIndexedSubscript_(v15, v239, v38 + 1, v240, v241, v242);
      v248 = objc_msgSend_numberFromString_(v238, v244, v243, v245, v246, v247);
      objc_msgSend_doubleValue(v248, v249, v250, v251, v252, v253);
      v255 = v254;

      v107 = pow(v232, v255);
LABEL_12:
      objc_msgSend_removeObjectsInRange_(v15, v104, v63, 3, v105, v106);
      v113 = objc_msgSend_formatter(self, v108, v109, v110, v111, v112);
      v119 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v114, v115, v116, v117, v118, v107);
      v124 = objc_msgSend_stringFromNumber_(v113, v120, v119, v121, v122, v123);

      objc_msgSend_insertObject_atIndex_(v15, v125, v124, v63, v126, v127);
      v38 -= 2;

LABEL_13:
      v38 += 2;
      if (v38 >= objc_msgSend_count(v15, v128, v129, v130, v131, v132))
      {
        goto LABEL_24;
      }
    }

LABEL_10:
LABEL_11:
    v62 = objc_msgSend_formatter(self, v57, v58, v59, v60, v61);
    v63 = v38 - 1;
    v68 = objc_msgSend_objectAtIndexedSubscript_(v15, v64, v38 - 1, v65, v66, v67);
    v73 = objc_msgSend_numberFromString_(v62, v69, v68, v70, v71, v72);
    objc_msgSend_doubleValue(v73, v74, v75, v76, v77, v78);
    v80 = v79;

    v86 = objc_msgSend_formatter(self, v81, v82, v83, v84, v85);
    v91 = objc_msgSend_objectAtIndexedSubscript_(v15, v87, v38 + 1, v88, v89, v90);
    v96 = objc_msgSend_numberFromString_(v86, v92, v91, v93, v94, v95);
    objc_msgSend_doubleValue(v96, v97, v98, v99, v100, v101);
    v103 = v102;

    v107 = v80 * v103;
    goto LABEL_12;
  }

  v26 = v4;
LABEL_26:
  v32 = v26;
LABEL_27:

  return v32;
}

- (id)evaluateVerticalMath:(id)a3
{
  v155 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (qword_1EA84D058 != -1)
  {
    v147 = v4;
    dispatch_once(&qword_1EA84D058, &unk_1EF1BEA90);
    v4 = v147;
  }

  v149 = v4;
  v9 = objc_msgSend_componentsSeparatedByString_(v4, v5, @" ", v6, v7, v8);
  v15 = objc_msgSend_mutableCopy(v9, v10, v11, v12, v13, v14);

  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v16 = v15;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v150, v154, 16, v18);
  if (!v19)
  {

    v25 = 0;
    goto LABEL_17;
  }

  v24 = v19;
  v25 = 0;
  v26 = 0;
  v27 = *v151;
  while (2)
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v151 == v27)
      {
        v29 = *(*(&v150 + 1) + 8 * i);
        if (!objc_msgSend_containsObject_(qword_1EA84D060, v20, v29, v21, v22, v23))
        {
          continue;
        }
      }

      else
      {
        objc_enumerationMutation(v16);
        v29 = *(*(&v150 + 1) + 8 * i);
        if (!objc_msgSend_containsObject_(qword_1EA84D060, v30, v29, v31, v32, v33))
        {
          continue;
        }
      }

      ++v26;
      v34 = v29;

      v25 = v34;
    }

    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v20, &v150, v154, 16, v23);
    if (v24)
    {
      continue;
    }

    break;
  }

  if (!v26)
  {
LABEL_17:
    v40 = @"+";
    goto LABEL_18;
  }

  if (v26 == 1)
  {
    v25 = v25;
    v40 = v25;
  }

  else
  {
    if (v26 != (objc_msgSend_count(v16, v35, v36, v37, v38, v39) - 1) >> 1)
    {
      v145 = @"STOP";
      goto LABEL_39;
    }

    v40 = 0;
  }

LABEL_18:
  v41 = objc_msgSend_formatter(self, v35, v36, v37, v38, v39);
  v46 = objc_msgSend_objectAtIndexedSubscript_(v16, v42, 0, v43, v44, v45);
  v51 = objc_msgSend_numberFromString_(v41, v47, v46, v48, v49, v50);
  objc_msgSend_doubleValue(v51, v52, v53, v54, v55, v56);
  v58 = v57;

  v59 = v40;
  v148 = v59;
  if (objc_msgSend_count(v16, v60, v61, v62, v63, v64) < 2)
  {
LABEL_37:
    v77 = objc_msgSend_formatter(self, v65, v66, v67, v68, v69, v148);
    v71 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v136, v137, v138, v139, v140, v58);
    v145 = objc_msgSend_stringFromNumber_(v77, v141, v71, v142, v143, v144);
    goto LABEL_38;
  }

  v70 = 1;
  objc_msgSend_objectAtIndexedSubscript_(v16, v65, 1, v67, v68, v69, v59);
  while (2)
    v77 = {;
    if (objc_msgSend_containsObject_(qword_1EA84D060, v78, v77, v79, v80, v81))
    {
      v71 = v59;
      v59 = v77;
LABEL_21:

      if (++v70 >= objc_msgSend_count(v16, v72, v73, v74, v75, v76))
      {
        goto LABEL_37;
      }

      objc_msgSend_objectAtIndexedSubscript_(v16, v65, v70, v67, v68, v69, v148);
      continue;
    }

    break;
  }

  v87 = objc_msgSend_formatter(self, v82, v83, v84, v85, v86);
  v92 = objc_msgSend_objectAtIndexedSubscript_(v16, v88, v70, v89, v90, v91);
  v71 = objc_msgSend_numberFromString_(v87, v93, v92, v94, v95, v96);

  if (!v71)
  {
    goto LABEL_44;
  }

  objc_msgSend_doubleValue(v71, v97, v98, v99, v100, v101);
  v103 = v102;
  if (objc_msgSend_isEqualToString_(v59, v104, @"+", v105, v106, v107))
  {
    v58 = v58 + v103;
    goto LABEL_21;
  }

  if (objc_msgSend_isEqualToString_(v59, v108, @"-", v109, v110, v111))
  {
    v58 = v58 - v103;
    goto LABEL_21;
  }

  if ((objc_msgSend_isEqualToString_(v59, v112, @"\\times", v113, v114, v115) & 1) != 0 || (objc_msgSend_isEqualToString_(v59, v116, @"\\cdot", v117, v118, v119) & 1) != 0 || objc_msgSend_isEqualToString_(v59, v120, @"\\ast", v121, v122, v123))
  {
    v58 = v58 * v103;
    goto LABEL_21;
  }

  if ((objc_msgSend_isEqualToString_(v59, v124, @"/", v125, v126, v127) & 1) != 0 || (objc_msgSend_isEqualToString_(v59, v128, @"\\div", v129, v130, v131) & 1) != 0 || objc_msgSend_isEqualToString_(v59, v132, @":", v133, v134, v135))
  {
    v58 = v58 / v103;
    goto LABEL_21;
  }

LABEL_44:
  v145 = @"STOP";
LABEL_38:

LABEL_39:

  return v145;
}

@end