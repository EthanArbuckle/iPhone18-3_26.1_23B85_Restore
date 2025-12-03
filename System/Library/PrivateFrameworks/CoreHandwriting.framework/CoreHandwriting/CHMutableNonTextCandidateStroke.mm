@interface CHMutableNonTextCandidateStroke
- (BOOL)adjustSupportByAddingStroke:(id)stroke consistingOfSubstrokes:(id)substrokes strokeClassification:(int64_t)classification;
- (BOOL)canBeSupportedByStrokeAtYPosition:(double)position;
- (id)description;
- (void)setSupportByStrokeIdentifier:(id)identifier;
@end

@implementation CHMutableNonTextCandidateStroke

- (void)setSupportByStrokeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->super._supportByStrokeIdentifier != identifierCopy)
  {
    v12 = identifierCopy;
    v10 = objc_msgSend_mutableCopy(identifierCopy, v5, v6, v7, v8, v9);
    supportByStrokeIdentifier = self->super._supportByStrokeIdentifier;
    self->super._supportByStrokeIdentifier = v10;

    identifierCopy = v12;
  }
}

- (BOOL)canBeSupportedByStrokeAtYPosition:(double)position
{
  if (self)
  {
    x = self->super._enlargedBounds.origin.x;
    y = self->super._enlargedBounds.origin.y;
    width = self->super._enlargedBounds.size.width;
    height = self->super._enlargedBounds.size.height;
  }

  else
  {
    y = 0.0;
    width = 0.0;
    height = 0.0;
    x = 0.0;
  }

  if (CGRectGetMinY(*&x) + -300.0 > position)
  {
    return 0;
  }

  if (self)
  {
    v10 = self->super._enlargedBounds.origin.x;
    v11 = self->super._enlargedBounds.origin.y;
    v12 = self->super._enlargedBounds.size.width;
    v13 = self->super._enlargedBounds.size.height;
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v10 = 0.0;
  }

  return CGRectGetMaxY(*&v10) + 300.0 >= position;
}

- (BOOL)adjustSupportByAddingStroke:(id)stroke consistingOfSubstrokes:(id)substrokes strokeClassification:(int64_t)classification
{
  v331 = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  substrokesCopy = substrokes;
  v10 = strokeCopy;
  v318 = substrokesCopy;
  supportByStrokeIdentifier = self->super._supportByStrokeIdentifier;
  v17 = objc_msgSend_encodedStrokeIdentifier(strokeCopy, v12, v13, v14, v15, v16);
  v22 = objc_msgSend_objectForKey_(supportByStrokeIdentifier, v18, v17, v19, v20, v21);

  if (v22)
  {
    v28 = self->super._supportByStrokeIdentifier;
    v29 = objc_msgSend_encodedStrokeIdentifier(strokeCopy, v23, v24, v25, v26, v27);
    v34 = objc_msgSend_objectForKey_(v28, v30, v29, v31, v32, v33);
    objc_msgSend_doubleValue(v34, v35, v36, v37, v38, v39);
    v319 = v40;

    v41 = classification == 5;
    if (classification == 5 && v319 > 0.0)
    {
      v41 = 1;
    }

    else if ((v319 >= 0.0 || (objc_msgSend_isStrokeClassificationText_(CHStrokeUtilities, v23, classification, v25, v26, v27, v319) & 1) == 0) && (v319 <= 0.0 || self->super._classificationAsNonText != 6 || (objc_msgSend_isStrokeClassificationMath_(CHStrokeUtilities, v23, classification, v25, v26, v27, v319) & 1) == 0) && (v319 == 0.0 || self->super._classificationAsNonText != 7 || (objc_msgSend_isStrokeClassificationMath_(CHStrokeUtilities, v23, classification, v25, v26, v27, v319) & 1) == 0))
    {
LABEL_13:
      v42 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v41 = classification == 5;
    v319 = 0.0;
  }

  v42 = 0;
  classificationAsNonText = self->super._classificationAsNonText;
  if (classificationAsNonText <= 5)
  {
    if (classificationAsNonText >= 6)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (classificationAsNonText == 8)
  {
LABEL_8:
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v44 = qword_1EA84DC68;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v44, OS_LOG_TYPE_ERROR, "Trying to get support for unsupported non-text candidate class.", buf, 2u);
    }

    goto LABEL_13;
  }

  if (classificationAsNonText == 7)
  {
    v317 = strokeCopy;
    v165 = strokeCopy;
    v166 = v318;
    x = self->super._bounds.origin.x;
    y = self->super._bounds.origin.y;
    width = self->super._bounds.size.width;
    height = self->super._bounds.size.height;
    objc_msgSend_bounds(v165, v171, v172, v173, v174, v175);
    v348.origin.x = v176;
    v348.origin.y = v177;
    v348.size.width = v178;
    v348.size.height = v179;
    v342.origin.x = x;
    v342.origin.y = y;
    v342.size.width = width;
    v342.size.height = height;
    if (CGRectIntersectsRect(v342, v348))
    {
      v324 = 0u;
      v325 = 0u;
      v322 = 0u;
      v323 = 0u;
      v185 = v166;
      v193 = objc_msgSend_countByEnumeratingWithState_objects_count_(v185, v186, &v322, buf, 16, v187);
      v313 = v41;
      v194 = 0;
      if (v193)
      {
        v195 = *v323;
        v196 = 0.0;
        v197 = 0.0;
        do
        {
          for (i = 0; i != v193; ++i)
          {
            if (*v323 != v195)
            {
              objc_enumerationMutation(v185);
            }

            v206 = *(*(&v322 + 1) + 8 * i);
            v207 = self->super._bounds.origin.x;
            v208 = self->super._bounds.origin.y;
            v209 = self->super._bounds.size.width;
            v210 = self->super._bounds.size.height;
            objc_msgSend_bounds(v206, v188, v189, v190, v191, v192);
            v349.origin.x = v211;
            v349.origin.y = v212;
            v349.size.width = v213;
            v349.size.height = v214;
            v343.origin.x = v207;
            v343.origin.y = v208;
            v343.size.width = v209;
            v343.size.height = v210;
            if (CGRectIntersectsRect(v343, v349))
            {
              v215 = self->super._bounds.origin.x;
              v216 = self->super._bounds.origin.y;
              v217 = self->super._bounds.size.width;
              v218 = self->super._bounds.size.height;
              objc_msgSend_bounds(v206, v188, v189, v190, v191, v192);
              v350.origin.x = v219;
              v350.origin.y = v220;
              v350.size.width = v221;
              v350.size.height = v222;
              v344.origin.x = v215;
              v344.origin.y = v216;
              v344.size.width = v217;
              v344.size.height = v218;
              v345 = CGRectIntersection(v344, v350);
              v223 = v345.size.width;
              v224 = v345.size.height;
              objc_msgSend_bounds(v206, v225, v226, v227, v228, v229, v345.origin.x, v345.origin.y);
              v231 = v230;
              objc_msgSend_bounds(v206, v232, v233, v234, v235, v236);
              if (v231 * v242 <= 0.0)
              {
                v243 = 1.0;
              }

              else
              {
                v243 = v223 * v224 / (v231 * v242);
              }

              objc_msgSend_bounds(v206, v237, v238, v239, v240, v241);
              v245 = v244;
              objc_msgSend_bounds(v206, v246, v247, v248, v249, v250);
              v252 = v251;
              objc_msgSend_bounds(v206, v253, v254, v255, v256, v257);
              v259 = v258;
              objc_msgSend_bounds(v206, v260, v261, v262, v263, v264);
              v271 = 21.0;
              if (sqrt(v259 * v270 + v245 * v252) >= 21.0)
              {
                objc_msgSend_bounds(v206, v265, v266, v267, v268, v269);
                v273 = v272;
                objc_msgSend_bounds(v206, v274, v275, v276, v277, v278);
                v280 = v279;
                objc_msgSend_bounds(v206, v281, v282, v283, v284, v285);
                v287 = v286;
                objc_msgSend_bounds(v206, v288, v289, v290, v291, v292);
                v271 = sqrt(v287 * v199 + v273 * v280);
              }

              ++v194;
              v200 = self->super._boundsDiagonal / v271 * 0.1;
              v201 = sqrt(v200 * v200 + 1.0);
              v202 = v200 / v201 * (v200 / v201);
              v196 = v196 + v202;
              v203 = fmax(self->super._containerScore * 0.015625, 0.1);
              substrokesCount = self->super._substrokesCount;
              v205 = (substrokesCount - 2);
              if (substrokesCount < 2)
              {
                v205 = 0.0;
              }

              v197 = v197 + v202 * (v243 * pow(v203, v205 * 0.4 + 1.0));
            }
          }

          v193 = objc_msgSend_countByEnumeratingWithState_objects_count_(v185, v188, &v322, buf, 16, v192);
        }

        while (v193);
      }

      else
      {
        v196 = 0.0;
        v197 = 0.0;
      }

      v41 = v313;
    }

    else
    {
      v194 = 0;
      v196 = 0.0;
      v197 = 0.0;
    }

    v326 = @"support";
    v308 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v180, v181, v182, v183, v184, v197);
    v327 = @"sizeRatio";
    v328 = v308;
    if (v194)
    {
      v196 = v196 / v194;
    }

    v10 = v317;
    v309 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v303, v304, v305, v306, v307, v196);
    v329 = v309;
    v42 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v310, &v328, &v326, 2, v311);

    goto LABEL_14;
  }

  if (classificationAsNonText != 6)
  {
    goto LABEL_14;
  }

  v315 = strokeCopy;
  v316 = v318;
  v76 = self->super._enlargedBounds.origin.x;
  v77 = self->super._enlargedBounds.origin.y;
  v78 = self->super._enlargedBounds.size.width;
  v79 = self->super._enlargedBounds.size.height;
  objc_msgSend_bounds(v315, v80, v81, v82, v83, v84);
  v346.origin.x = v85;
  v346.origin.y = v86;
  v346.size.width = v87;
  v346.size.height = v88;
  v332.origin.x = v76;
  v332.origin.y = v77;
  v332.size.width = v78;
  v332.size.height = v79;
  if (!CGRectIntersectsRect(v332, v346))
  {
    v103 = 0;
    v106 = 0.0;
    v107 = 0.0;
    goto LABEL_88;
  }

  v324 = 0u;
  v325 = 0u;
  v322 = 0u;
  v323 = 0u;
  v94 = v316;
  v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v94, v95, &v322, buf, 16, v96);
  v312 = v41;
  classificationCopy = classification;
  v103 = 0;
  if (!v102)
  {
    v106 = 0.0;
    v107 = 0.0;
    goto LABEL_87;
  }

  v104 = *v323;
  v105 = MEMORY[0x1E695EFF8];
  v106 = 0.0;
  v107 = 0.0;
  do
  {
    for (j = 0; j != v102; ++j)
    {
      if (*v323 != v104)
      {
        objc_enumerationMutation(v94);
      }

      v119 = *(*(&v322 + 1) + 8 * j);
      v120 = self->super._enlargedBounds.origin.x;
      v121 = self->super._enlargedBounds.origin.y;
      v122 = self->super._enlargedBounds.size.width;
      v123 = self->super._enlargedBounds.size.height;
      objc_msgSend_bounds(v119, v97, v98, v99, v100, v101);
      v347.origin.x = v124;
      v347.origin.y = v125;
      v347.size.width = v126;
      v347.size.height = v127;
      v333.origin.x = v120;
      v333.origin.y = v121;
      v333.size.width = v122;
      v333.size.height = v123;
      if (CGRectIntersectsRect(v333, v347))
      {
        v128 = objc_opt_class();
        v134 = objc_msgSend_convexHull(v119, v129, v130, v131, v132, v133);
        objc_msgSend_boundingBoxOfPoints_rotatedAroundPoint_byAngle_(v128, v135, v134, v136, v137, v138, *v105, v105[1], -self->super._lineOrientationAngle);
        v139 = v334.origin.x;
        v140 = v334.origin.y;
        v141 = v334.size.width;
        v142 = v334.size.height;
        MinX = CGRectGetMinX(v334);
        v144 = MinX <= CGRectGetMinX(self->super._rotatedBounds);
        v145 = v139;
        v146 = v140;
        v147 = v141;
        v148 = v142;
        if (v144)
        {
          v145 = self->super._rotatedBounds.origin.x;
          v146 = self->super._rotatedBounds.origin.y;
          v147 = self->super._rotatedBounds.size.width;
          v148 = self->super._rotatedBounds.size.height;
        }

        v149 = CGRectGetMinX(*&v145);
        v335.origin.x = v139;
        v335.origin.y = v140;
        v335.size.width = v141;
        v335.size.height = v142;
        MaxX = CGRectGetMaxX(v335);
        v151 = MaxX < CGRectGetMaxX(self->super._rotatedBounds);
        v152 = v139;
        v153 = v140;
        v154 = v141;
        v155 = v142;
        if (!v151)
        {
          v152 = self->super._rotatedBounds.origin.x;
          v153 = self->super._rotatedBounds.origin.y;
          v154 = self->super._rotatedBounds.size.width;
          v155 = self->super._rotatedBounds.size.height;
        }

        v320 = v107;
        v321 = v106;
        v156 = CGRectGetMaxX(*&v152) - v149 + 1.0;
        if (v156 >= 0.0)
        {
          v157 = v156;
        }

        else
        {
          v157 = 0.0;
        }

        v336.origin.x = v139;
        v336.origin.y = v140;
        v336.size.width = v141;
        v336.size.height = v142;
        v158 = CGRectGetMaxX(v336);
        v337.origin.x = v139;
        v337.origin.y = v140;
        v337.size.width = v141;
        v337.size.height = v142;
        v159 = CGRectGetMinX(v337);
        v338.origin.x = v139;
        v338.origin.y = v140;
        v338.size.width = v141;
        v338.size.height = v142;
        MaxY = CGRectGetMaxY(v338);
        if (MaxY < CGRectGetMinY(self->super._rotatedBounds))
        {
          v339.origin.x = v139;
          v339.origin.y = v140;
          v339.size.width = v141;
          v339.size.height = v142;
          v161 = CGRectGetMaxY(v339);
          MinY = CGRectGetMinY(self->super._rotatedBounds);
          goto LABEL_35;
        }

        v340.origin.x = v139;
        v340.origin.y = v140;
        v340.size.width = v141;
        v340.size.height = v142;
        v163 = CGRectGetMinY(v340);
        v164 = CGRectGetMaxY(self->super._rotatedBounds);
        v109 = 0.0;
        if (v163 > v164)
        {
          v341.origin.x = v139;
          v341.origin.y = v140;
          v341.size.width = v141;
          v341.size.height = v142;
          v161 = CGRectGetMinY(v341);
          MinY = CGRectGetMaxY(self->super._rotatedBounds);
LABEL_35:
          v109 = vabdd_f64(v161, MinY);
        }

        ++v103;
        v110 = v157 / (v158 - v159 + 1.0);
        v111 = v109 / 63.0 / sqrt(v109 / 63.0 * (v109 / 63.0) + 1.0);
        v112 = sqrt(v142 * v142 + v141 * v141);
        if (v112 < 21.0)
        {
          v112 = 21.0;
        }

        v113 = self->super._boundsDiagonal / v112 * 0.1;
        v114 = sqrt(v113 * v113 + 1.0);
        v115 = (1.0 - v111) * (1.0 - v111);
        v116 = v113 / v114 * (v113 / v114);
        v106 = v321 + v116;
        v117 = self->super._substrokesCount;
        v118 = (v117 - 2);
        if (v117 < 2)
        {
          v118 = 0.0;
        }

        v107 = v320 + pow(1.0 - self->super._lineError, v118 * 0.4 + 1.0) * (v110 * v115 * v116);
        continue;
      }
    }

    v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v94, v97, &v322, buf, 16, v101);
  }

  while (v102);
LABEL_87:

  v10 = strokeCopy;
  classification = classificationCopy;
  v41 = v312;
LABEL_88:
  v326 = @"support";
  v299 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v89, v90, v91, v92, v93, v107);
  v327 = @"sizeRatio";
  v328 = v299;
  if (v103)
  {
    v106 = v106 / v103;
  }

  v300 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v294, v295, v296, v297, v298, v106);
  v329 = v300;
  v42 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v301, &v328, &v326, 2, v302);

LABEL_14:
  v45 = objc_msgSend_objectForKey_(v42, v23, @"support", v25, v26, v27);
  objc_msgSend_floatValue(v45, v46, v47, v48, v49, v50);
  v52 = v51;

  v57 = objc_msgSend_objectForKey_(v42, v53, @"sizeRatio", v54, v55, v56);
  objc_msgSend_floatValue(v57, v58, v59, v60, v61, v62);
  v64 = v63;

  v69 = v52;
  if (v52 != 0.0)
  {
    if (objc_msgSend_isStrokeClassificationText_(CHStrokeUtilities, v65, classification, v66, v67, v68))
    {
      v75 = objc_msgSend_encodedStrokeIdentifier(v10, v70, v71, v72, v73, v74);
      sub_1837321E0(self, v75, v69, v64);
    }

    else if (v41 || objc_msgSend_isStrokeClassificationMath_(CHStrokeUtilities, v70, classification, v72, v73, v74) && self->super._classificationAsNonText == 6)
    {
      v75 = objc_msgSend_encodedStrokeIdentifier(v10, v70, v71, v72, v73, v74);
      v69 = -v69;
      sub_1837321E0(self, v75, v69, v64);
    }

    else
    {
      v75 = objc_msgSend_encodedStrokeIdentifier(v10, v70, v71, v72, v73, v74);
      v69 = 0.0;
      sub_1837322E4(self, v75);
    }
  }

  return v69 != v319;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    strokeIdentifier = self->super._strokeIdentifier;
  }

  else
  {
    strokeIdentifier = 0;
  }

  v7 = strokeIdentifier;
  objc_msgSend_support(self, v8, v9, v10, v11, v12);
  v19 = v18;
  if (self)
  {
    classificationAsNonText = self->super._classificationAsNonText;
  }

  else
  {
    classificationAsNonText = 0;
  }

  v21 = objc_msgSend_fallbackClassification(self, v13, v14, v15, v16, v17);
  v26 = objc_msgSend_stringWithFormat_(v3, v22, @"<%@: %p strokeIdentifier=(%@) support=%.3f class=%ld fallbackClass=%ld>", v23, v24, v25, v5, self, v7, v19, classificationAsNonText, v21);

  return v26;
}

@end