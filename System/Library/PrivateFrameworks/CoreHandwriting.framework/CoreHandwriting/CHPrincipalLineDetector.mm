@interface CHPrincipalLineDetector
+ ($196E0A09E4C4E138EEBEC6372622051A)fixPrincipalLinesOrientation:(SEL)orientation useAltString:(id)string skipAmbiguousCharacters:(BOOL)characters;
+ ($196E0A09E4C4E138EEBEC6372622051A)fixPrincipalLinesPosition:(SEL)position useAltString:(id)string skipAmbiguousCharacters:(BOOL)characters;
+ ($196E0A09E4C4E138EEBEC6372622051A)flipPrincipalLine:(SEL)line points:(id *)points string:(const void *)string outWasFlipped:(id)flipped;
+ ($196E0A09E4C4E138EEBEC6372622051A)principalLinesForPoints:(SEL)points writtenAlphaShape:(const void *)shape imgPointsAndPrincipalLines:(const void *)lines shouldCancel:(const void *)cancel;
+ ($196E0A09E4C4E138EEBEC6372622051A)principalLinesFromPrincipalLinePoints:(SEL)points points:(id)a4;
+ ($196E0A09E4C4E138EEBEC6372622051A)principalLinesFromTokens:(SEL)tokens strokes:(id)strokes strokePoints:(id)points orientation:(const void *)orientation useAltString:(double)string;
+ ($196E0A09E4C4E138EEBEC6372622051A)refinedPrincipalLinesForTextLine:(SEL)line points:(id)points alphaShape:(const void *)shape renderedTextPointsAndLines:(const void *)lines useAltString:(PointsAndPrincipalLines *)string shouldCancel:(BOOL)cancel;
+ (CGSize)estimatedRenderedTextSize:(id)size fullDeformValue:(double)value ascenderDeformValue:(double)deformValue descenderDeformValue:(double)descenderDeformValue;
+ (double)estimatedLeadingForPrincipalLines:(id *)lines transcription:(id)transcription;
+ (double)principalLinesFitScore:(id *)score points:(const void *)points transcription:(id)transcription;
+ (double)textLineFitScore:(id)score useAltString:(BOOL)string;
+ (id)charactersForRendering;
+ (id)checkAvailableInterceptsForString:(id)string skipAmbiguousCharacters:(BOOL)characters;
+ (id)principalLineInterceptsForPrincipalPoints:(id)points orientation:(double)orientation;
+ (id)principalLineInterceptsForString:(id)string skipAmbiguousCharacters:(BOOL)characters strokes:(id)strokes strokePoints:(const void *)points orientation:(double)orientation medianFallbackThreshold:(double)threshold;
+ (id)principalLinePointsForString:(id)string skipAmbiguousCharacters:(BOOL)characters strokes:(id)strokes strokePoints:(const void *)points orientation:(double)orientation medianFallbackThreshold:(double)threshold;
+ (id)stringForRendering:(id)rendering useAltChars:(BOOL)chars;
+ (void)getDeformValuesForTextLine:(id)line useAltString:(BOOL)string outfullDeform:(double *)deform outAscenderDeform:(double *)ascenderDeform outDescenderDeform:(double *)descenderDeform;
@end

@implementation CHPrincipalLineDetector

+ (double)estimatedLeadingForPrincipalLines:(id *)lines transcription:(id)transcription
{
  transcriptionCopy = transcription;
  hasDescender = objc_msgSend_hasDescender(transcriptionCopy, v6, v7, v8, v9, v10);
  hasAscender = objc_msgSend_hasAscender(transcriptionCopy, v12, v13, v14, v15, v16);
  if ((hasDescender & hasAscender) != 1)
  {
    if (hasAscender)
    {
      x = lines->var1.var0.x;
      y = lines->var1.var0.y;
      v29 = lines->var3.var0.x;
      v30 = lines->var3.var0.y;
      if (x == v29 && y == v30)
      {
        v32 = lines->var1.var1.x;
        v33 = lines->var1.var1.y;
        v34 = lines->var3.var1.x;
        v35 = lines->var3.var1.y;
        v36 = 0.0;
        if (v32 == v34 && v33 == v35)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v32 = lines->var1.var1.x;
        v33 = lines->var1.var1.y;
        v34 = lines->var3.var1.x;
        v35 = lines->var3.var1.y;
      }
    }

    else
    {
      if (!hasDescender)
      {
        v50 = lines->var1.var0.x;
        v51 = lines->var1.var0.y;
        v52 = lines->var2.var0.x;
        v53 = lines->var2.var0.y;
        if (v50 == v52 && v51 == v53)
        {
          v55 = lines->var1.var1.x;
          v56 = lines->var1.var1.y;
          v57 = lines->var2.var1.x;
          v58 = lines->var2.var1.y;
          if (v55 == v57)
          {
            v36 = 0.0;
            if (v56 == v58)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          v55 = lines->var1.var1.x;
          v56 = lines->var1.var1.y;
          v57 = lines->var2.var1.x;
          v58 = lines->var2.var1.y;
        }

        v59 = (v56 - v51) / (v55 - v50);
        v60 = (v58 - v53) / (v57 - v52);
        v61 = v53 - v60 * v52;
        v62 = lines->var1.var0.x;
        if (v59 != 0.0)
        {
          v62 = (v51 - -1.0 / v59 * v50 - v61) / (v60 - -1.0 / v59);
        }

        v48 = sqrt((v51 - (v61 + v60 * v62)) * (v51 - (v61 + v60 * v62)) + (v50 - v62) * (v50 - v62));
        v49 = 3.0;
LABEL_41:
        v36 = v48 * v49;
        goto LABEL_42;
      }

      x = lines->var0.var0.x;
      y = lines->var0.var0.y;
      v29 = lines->var2.var0.x;
      v30 = lines->var2.var0.y;
      if (lines->var0.var0.x == v29 && y == v30)
      {
        v32 = lines->var0.var1.x;
        v33 = lines->var0.var1.y;
        v34 = lines->var2.var1.x;
        v35 = lines->var2.var1.y;
        if (v32 == v34)
        {
          v36 = 0.0;
          if (v33 == v35)
          {
            goto LABEL_42;
          }
        }
      }

      else
      {
        v32 = lines->var0.var1.x;
        v33 = lines->var0.var1.y;
        v34 = lines->var2.var1.x;
        v35 = lines->var2.var1.y;
      }
    }

    v44 = (v33 - y) / (v32 - x);
    v45 = (v35 - v30) / (v34 - v29);
    v46 = v30 - v45 * v29;
    v47 = x;
    if (v44 != 0.0)
    {
      v47 = (y - -1.0 / v44 * x - v46) / (v45 - -1.0 / v44);
    }

    v48 = sqrt((y - (v46 + v45 * v47)) * (y - (v46 + v45 * v47)) + (x - v47) * (x - v47));
    v49 = 1.5;
    goto LABEL_41;
  }

  v18 = lines->var0.var0.x;
  v19 = lines->var0.var0.y;
  v20 = lines->var3.var0.x;
  v21 = lines->var3.var0.y;
  if (lines->var0.var0.x == v20 && v19 == v21)
  {
    v23 = lines->var0.var1.x;
    v24 = lines->var0.var1.y;
    v25 = lines->var3.var1.x;
    v26 = lines->var3.var1.y;
    v36 = 0.0;
    if (v23 == v25 && v24 == v26)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v23 = lines->var0.var1.x;
    v24 = lines->var0.var1.y;
    v25 = lines->var3.var1.x;
    v26 = lines->var3.var1.y;
  }

  v38 = (v24 - v19) / (v23 - v18);
  v39 = (v26 - v21) / (v25 - v20);
  v40 = v21 - v39 * v20;
  v41 = lines->var0.var0.x;
  if (v38 != 0.0)
  {
    v41 = (v19 - -1.0 / v38 * v18 - v40) / (v39 - -1.0 / v38);
  }

  v36 = sqrt((v19 - (v40 + v39 * v41)) * (v19 - (v40 + v39 * v41)) + (v18 - v41) * (v18 - v41));
LABEL_42:
  v63 = v36 * 1.25;

  return v63;
}

+ ($196E0A09E4C4E138EEBEC6372622051A)principalLinesFromPrincipalLinePoints:(SEL)points points:(id)a4
{
  v262 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v12 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, 3, v9, v10, v11);
  v18 = objc_msgSend_count(v12, v13, v14, v15, v16, v17);

  v23 = objc_msgSend_objectAtIndexedSubscript_(v7, v19, 2, v20, v21, v22);
  v29 = objc_msgSend_count(v23, v24, v25, v26, v27, v28);

  v34 = objc_msgSend_objectAtIndexedSubscript_(v7, v30, 1, v31, v32, v33);
  v40 = objc_msgSend_count(v34, v35, v36, v37, v38, v39);

  v45 = objc_msgSend_objectAtIndexedSubscript_(v7, v41, 4, v42, v43, v44);
  v51 = objc_msgSend_count(v45, v46, v47, v48, v49, v50);

  if (v18 < 3)
  {
    v57 = 0;
    if (v29 < 3)
    {
LABEL_3:
      v58 = 0;
      if (v40 < 3)
      {
        goto LABEL_4;
      }

LABEL_8:
      v59 = v40 / (v51 + v40) >= 0.4;
      if (v51 < 3)
      {
        goto LABEL_5;
      }

LABEL_9:
      v60 = v51 / (v51 + v40) >= 0.4;
      goto LABEL_10;
    }
  }

  else
  {
    v57 = v18 / (v29 + v18) >= 0.4;
    if (v29 < 3)
    {
      goto LABEL_3;
    }
  }

  v58 = v29 / (v29 + v18) >= 0.4;
  if (v40 >= 3)
  {
    goto LABEL_8;
  }

LABEL_4:
  v59 = 0;
  if (v51 >= 3)
  {
    goto LABEL_9;
  }

LABEL_5:
  v60 = 0;
LABEL_10:
  v61 = MEMORY[0x1E695DF70];
  v62 = objc_msgSend_count(v7, v52, v53, v54, v55, v56);
  v71 = objc_msgSend_arrayWithCapacity_(v61, v63, v62, v64, v65, v66);
  v245 = v71;
  if (v57)
  {
    v72 = objc_msgSend_objectAtIndexedSubscript_(v7, v67, 3, v68, v69, v70, v71);
    objc_msgSend_addObject_(v71, v73, v72, v74, v75, v76);
  }

  if (v58)
  {
    v77 = objc_msgSend_objectAtIndexedSubscript_(v7, v67, 2, v68, v69, v70);
    objc_msgSend_addObject_(v71, v78, v77, v79, v80, v81);
  }

  if (v59)
  {
    v82 = objc_msgSend_objectAtIndexedSubscript_(v7, v67, 1, v68, v69, v70);
    objc_msgSend_addObject_(v71, v83, v82, v84, v85, v86);
  }

  if (v60)
  {
    v87 = objc_msgSend_objectAtIndexedSubscript_(v7, v67, 4, v68, v69, v70);
    objc_msgSend_addObject_(v71, v88, v87, v89, v90, v91);
  }

  begin = a5->__begin_;
  end = a5->__end_;
  if (a5->__begin_ == end)
  {
    v94 = 1.79769313e308;
    v95 = -1.79769313e308;
  }

  else
  {
    v94 = 1.79769313e308;
    v95 = -1.79769313e308;
    v96 = -1.79769313e308;
    v97 = 1.79769313e308;
    do
    {
      x = begin->x;
      ++begin;
      v99 = x;
      if (v97 > x)
      {
        v94 = v99;
        v97 = v99;
      }

      if (v96 < v99)
      {
        v95 = v99;
        v96 = v99;
      }
    }

    while (begin != end);
  }

  v259 = 0u;
  v260 = 0u;
  v257 = 0u;
  v258 = 0u;
  v100 = v71;
  v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v101, &v257, v261, 16, v102);
  if (!v103)
  {

    *&v247 = 0;
    goto LABEL_48;
  }

  v246 = a5;
  v105 = 0;
  v106 = *v258;
  *&v104 = 0;
  v247 = v104;
  do
  {
    for (i = 0; i != v103; ++i)
    {
      if (*v258 != v106)
      {
        objc_enumerationMutation(v100);
      }

      v108 = *(*(&v257 + 1) + 8 * i);
      sub_1838C340C(v108, __p);
      v114 = __p[0];
      v115 = (__p[1] - __p[0]) >> 4;
      v116 = 0.0;
      if (v115 >= 2)
      {
        if (__p[0] == __p[1])
        {
          goto LABEL_42;
        }

        v117 = 0uLL;
        v118 = __p[0];
        do
        {
          v119 = *v118++;
          v117 = vaddq_f64(v117, v119);
        }

        while (v118 != __p[1]);
        v120 = vdivq_f64(v117, vdupq_lane_s64(COERCE__INT64(v115), 0));
        v121 = 0uLL;
        v122 = __p[0];
        do
        {
          v123 = *v122++;
          v124 = vsubq_f64(v123, v120);
          v121 = vmlaq_n_f64(v121, v124, v124.f64[0]);
        }

        while (v122 != __p[1]);
        *&v116 = *&vdivq_f64(vdupq_laneq_s64(v121, 1), v121);
      }

      v248 = v116;
      if (v116 != 1.79769313e308)
      {
        v125 = objc_msgSend_count(v108, v109, v110, v111, v112, v113);
        v131 = objc_msgSend_count(v108, v126, v127, v128, v129, v130);
        *(&v132 + 1) = *(&v247 + 1);
        *&v132 = *&v247 + v248 * v125;
        v247 = v132;
        v105 += v131;
        v114 = __p[0];
      }

LABEL_42:
      if (v114)
      {
        __p[1] = v114;
        operator delete(v114);
      }
    }

    v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v109, &v257, v261, 16, v113);
  }

  while (v103);

  a5 = v246;
  if (v105)
  {
    *&v247 = *&v247 / v105;
  }

LABEL_48:
  v137 = objc_msgSend_objectAtIndexedSubscript_(v7, v133, 3, v134, v135, v136, v245);
  v143 = objc_msgSend_count(v137, v138, v139, v140, v141, v142) == 0;

  if (v143)
  {
    v155 = 1.79769313e308;
  }

  else
  {
    v148 = objc_msgSend_objectAtIndexedSubscript_(v7, v144, 3, v145, v146, v147);
    sub_1838C340C(v148, __p);
    v149 = (__p[1] - __p[0]) >> 4;
    v150 = v149;
    if (__p[1] == __p[0])
    {
      v155 = 0.0 / v150;
      if (__p[1])
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v149 <= 1)
      {
        v151 = 1;
      }

      else
      {
        v151 = (__p[1] - __p[0]) >> 4;
      }

      if (v149 < 4)
      {
        v152 = 0;
        v153 = 0.0;
        v154 = *&v247;
        goto LABEL_61;
      }

      v152 = v151 & 0xFFFFFFFFFFFFFFFCLL;
      v156 = vdupq_lane_s64(v247, 0);
      v157 = (__p[0] + 32);
      v153 = 0.0;
      v158 = v151 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v159 = v157 - 4;
        v265 = vld2q_f64(v159);
        v269 = vld2q_f64(v157);
        v265.val[1] = vmlsq_f64(v265.val[1], v156, v265.val[0]);
        v269.val[1] = vmlsq_f64(v269.val[1], v156, v269.val[0]);
        v153 = v153 + v265.val[1].f64[0] + v265.val[1].f64[1] + v269.val[1].f64[0] + v269.val[1].f64[1];
        v157 += 8;
        v158 -= 4;
      }

      while (v158);
      v154 = *&v247;
      if (v149 != v152)
      {
LABEL_61:
        v160 = v151 - v152;
        v161 = (__p[0] + 16 * v152 + 8);
        do
        {
          v153 = v153 + *v161 - *(v161 - 1) * v154;
          v161 += 2;
          --v160;
        }

        while (v160);
      }

      v155 = v153 / v150;
LABEL_64:
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  v162 = objc_msgSend_objectAtIndexedSubscript_(v7, v144, 2, v145, v146, v147);
  v168 = objc_msgSend_count(v162, v163, v164, v165, v166, v167) == 0;

  if (v168)
  {
    v179 = 1.79769313e308;
  }

  else
  {
    v173 = objc_msgSend_objectAtIndexedSubscript_(v7, v169, 2, v170, v171, v172);
    sub_1838C340C(v173, __p);
    v174 = (__p[1] - __p[0]) >> 4;
    if (__p[1] == __p[0])
    {
      v179 = 0.0 / v174;
      if (__p[1])
      {
        goto LABEL_82;
      }
    }

    else
    {
      if (v174 <= 1)
      {
        v175 = 1;
      }

      else
      {
        v175 = (__p[1] - __p[0]) >> 4;
      }

      if (v174 < 4)
      {
        v176 = 0;
        v177 = 0.0;
        v178 = *&v247;
        goto LABEL_79;
      }

      v176 = v175 & 0xFFFFFFFFFFFFFFFCLL;
      v180 = vdupq_lane_s64(v247, 0);
      v181 = (__p[0] + 32);
      v177 = 0.0;
      v182 = v175 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v183 = v181 - 4;
        v263 = vld2q_f64(v183);
        v267 = vld2q_f64(v181);
        v263.val[1] = vmlsq_f64(v263.val[1], v180, v263.val[0]);
        v267.val[1] = vmlsq_f64(v267.val[1], v180, v267.val[0]);
        v177 = v177 + v263.val[1].f64[0] + v263.val[1].f64[1] + v267.val[1].f64[0] + v267.val[1].f64[1];
        v181 += 8;
        v182 -= 4;
      }

      while (v182);
      v178 = *&v247;
      if (v174 != v176)
      {
LABEL_79:
        v184 = v175 - v176;
        v185 = (__p[0] + 16 * v176 + 8);
        do
        {
          v177 = v177 + *v185 - *(v185 - 1) * v178;
          v185 += 2;
          --v184;
        }

        while (v184);
      }

      v179 = v177 / v174;
LABEL_82:
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  v186 = objc_msgSend_objectAtIndexedSubscript_(v7, v169, 1, v170, v171, v172);
  v192 = objc_msgSend_count(v186, v187, v188, v189, v190, v191) == 0;

  if (v192)
  {
    v204 = 1.79769313e308;
  }

  else
  {
    v197 = objc_msgSend_objectAtIndexedSubscript_(v7, v193, 1, v194, v195, v196);
    sub_1838C340C(v197, __p);
    v198 = (__p[1] - __p[0]) >> 4;
    v199 = v198;
    if (__p[1] == __p[0])
    {
      v204 = 0.0 / v199;
      if (__p[1])
      {
        goto LABEL_100;
      }
    }

    else
    {
      if (v198 <= 1)
      {
        v200 = 1;
      }

      else
      {
        v200 = (__p[1] - __p[0]) >> 4;
      }

      if (v198 < 4)
      {
        v201 = 0;
        v202 = 0.0;
        v203 = *&v247;
        goto LABEL_97;
      }

      v201 = v200 & 0xFFFFFFFFFFFFFFFCLL;
      v205 = vdupq_lane_s64(v247, 0);
      v206 = (__p[0] + 32);
      v202 = 0.0;
      v207 = v200 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v208 = v206 - 4;
        v266 = vld2q_f64(v208);
        v270 = vld2q_f64(v206);
        v266.val[1] = vmlsq_f64(v266.val[1], v205, v266.val[0]);
        v270.val[1] = vmlsq_f64(v270.val[1], v205, v270.val[0]);
        v202 = v202 + v266.val[1].f64[0] + v266.val[1].f64[1] + v270.val[1].f64[0] + v270.val[1].f64[1];
        v206 += 8;
        v207 -= 4;
      }

      while (v207);
      v203 = *&v247;
      if (v198 != v201)
      {
LABEL_97:
        v209 = v200 - v201;
        v210 = (__p[0] + 16 * v201 + 8);
        do
        {
          v202 = v202 + *v210 - *(v210 - 1) * v203;
          v210 += 2;
          --v209;
        }

        while (v209);
      }

      v204 = v202 / v199;
LABEL_100:
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  v211 = objc_msgSend_objectAtIndexedSubscript_(v7, v193, 4, v194, v195, v196);
  v217 = objc_msgSend_count(v211, v212, v213, v214, v215, v216) == 0;

  if (v217)
  {
    v228 = 1.79769313e308;
  }

  else
  {
    v222 = objc_msgSend_objectAtIndexedSubscript_(v7, v218, 4, v219, v220, v221);
    sub_1838C340C(v222, __p);
    v223 = (__p[1] - __p[0]) >> 4;
    if (__p[1] == __p[0])
    {
      v228 = 0.0 / v223;
      if (__p[1])
      {
        goto LABEL_118;
      }
    }

    else
    {
      if (v223 <= 1)
      {
        v224 = 1;
      }

      else
      {
        v224 = (__p[1] - __p[0]) >> 4;
      }

      if (v223 < 4)
      {
        v225 = 0;
        v226 = 0.0;
        v227 = *&v247;
        goto LABEL_115;
      }

      v225 = v224 & 0xFFFFFFFFFFFFFFFCLL;
      v229 = vdupq_lane_s64(v247, 0);
      v230 = (__p[0] + 32);
      v226 = 0.0;
      v231 = v224 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v232 = v230 - 4;
        v264 = vld2q_f64(v232);
        v268 = vld2q_f64(v230);
        v264.val[1] = vmlsq_f64(v264.val[1], v229, v264.val[0]);
        v268.val[1] = vmlsq_f64(v268.val[1], v229, v268.val[0]);
        v226 = v226 + v264.val[1].f64[0] + v264.val[1].f64[1] + v268.val[1].f64[0] + v268.val[1].f64[1];
        v230 += 8;
        v231 -= 4;
      }

      while (v231);
      v227 = *&v247;
      if (v223 != v225)
      {
LABEL_115:
        v233 = v224 - v225;
        v234 = (__p[0] + 16 * v225 + 8);
        do
        {
          v226 = v226 + *v234 - *(v234 - 1) * v227;
          v234 += 2;
          --v233;
        }

        while (v233);
      }

      v228 = v226 / v223;
LABEL_118:
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  if (v204 == 1.79769313e308 || v155 == 1.79769313e308 && v179 == 1.79769313e308)
  {
    v235 = *MEMORY[0x1E695EFF8];
    retstr->var0.var0 = *MEMORY[0x1E695EFF8];
    retstr->var0.var1 = v235;
    retstr->var1.var0 = v235;
    retstr->var1.var1 = v235;
    retstr->var2.var0 = v235;
    retstr->var2.var1 = v235;
    retstr->var3.var0 = v235;
    retstr->var3.var1 = v235;
  }

  else
  {
    v237 = v204 + (v204 - v155) * -0.5;
    if (v179 != 1.79769313e308)
    {
      v237 = v179;
    }

    if (v155 == 1.79769313e308)
    {
      v238 = v179 - (v204 - v179);
    }

    else
    {
      v238 = v155;
    }

    if (v155 == 1.79769313e308)
    {
      v237 = v179;
    }

    v239 = v204 + v204 - v237;
    if (v228 != 1.79769313e308)
    {
      v239 = v228;
    }

    v240 = v95 + 0.01;
    if (v94 != v95)
    {
      v240 = v95;
    }

    retstr->var3.var0.x = v94;
    retstr->var3.var0.y = v238 + v94 * *&v247;
    retstr->var3.var1.x = v240;
    retstr->var3.var1.y = v238 + v240 * *&v247;
    retstr->var2.var0.x = v94;
    retstr->var2.var0.y = v237 + v94 * *&v247;
    retstr->var2.var1.x = v240;
    retstr->var2.var1.y = v237 + v240 * *&v247;
    retstr->var1.var0.x = v94;
    retstr->var1.var0.y = v204 + v94 * *&v247;
    retstr->var1.var1.x = v240;
    retstr->var1.var1.y = v204 + v240 * *&v247;
    retstr->var0.var0.x = v94;
    retstr->var0.var0.y = v239 + v94 * *&v247;
    retstr->var0.var1.x = v240;
    retstr->var0.var1.y = v239 + v240 * *&v247;
    sub_1838CD8C4(&retstr->var0.var0.x, a5, __p);
    v241 = v254;
    retstr->var2.var0 = v253;
    retstr->var2.var1 = v241;
    v242 = v256;
    retstr->var3.var0 = v255;
    retstr->var3.var1 = v242;
    v243 = v250;
    retstr->var0.var0 = *__p;
    retstr->var0.var1 = v243;
    v244 = v252;
    retstr->var1.var0 = v251;
    retstr->var1.var1 = v244;
  }

  return result;
}

+ ($196E0A09E4C4E138EEBEC6372622051A)principalLinesForPoints:(SEL)points writtenAlphaShape:(const void *)shape imgPointsAndPrincipalLines:(const void *)lines shouldCancel:(const void *)cancel
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a7;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v11 = *(shape + 1) - *shape;
  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  v17 = xmmword_1839CE920;
  v18 = xmmword_1839CE920;
  sub_1838CD6B0(&v19, v16);
  v12 = *(lines + 1);
  if (v12 != *lines)
  {
    if (((v12 - *lines) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v13 = qword_1EA84DCA0;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = (v20 - v19) >> 4;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "Empty alphashape from ink with %lu points.", buf, 0xCu);
  }

  v14 = *MEMORY[0x1E695EFF8];
  retstr->var0.var0 = *MEMORY[0x1E695EFF8];
  retstr->var0.var1 = v14;
  retstr->var1.var0 = v14;
  retstr->var1.var1 = v14;
  retstr->var2.var0 = v14;
  retstr->var2.var1 = v14;
  retstr->var3.var0 = v14;
  retstr->var3.var1 = v14;
  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  return result;
}

+ ($196E0A09E4C4E138EEBEC6372622051A)principalLinesFromTokens:(SEL)tokens strokes:(id)strokes strokePoints:(id)points orientation:(const void *)orientation useAltString:(double)string
{
  v8 = a8;
  v283 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  pointsCopy = points;
  v18 = tan(-string);
  v279 = 0;
  __dst = 0;
  v281 = 0;
  v19 = *orientation;
  orientationCopy = orientation;
  if (*(orientation + 1) == *orientation)
  {
    goto LABEL_20;
  }

  v20 = 0;
  v21 = 0;
  do
  {
    sub_18374A63C(&v279, __dst, *(v19 + v20), *(v19 + v20 + 8), (*(v19 + v20 + 8) - *(v19 + v20)) >> 4);
    ++v21;
    v19 = *orientationCopy;
    v20 += 24;
  }

  while (v21 < 0xAAAAAAAAAAAAAAABLL * ((orientationCopy[1] - *orientationCopy) >> 3));
  if (v279 == __dst)
  {
LABEL_20:
    v23 = -1.79769313e308;
    v22 = 1.79769313e308;
    v31 = 1.79769313e308;
    v32 = -1.79769313e308;
  }

  else
  {
    v22 = 1.79769313e308;
    v23 = -1.79769313e308;
    v24 = -1.79769313e308;
    v25 = 1.79769313e308;
    v26 = v279;
    do
    {
      v27 = *v26;
      v26 += 2;
      v28 = v27;
      if (v25 > v27)
      {
        v22 = v28;
        v25 = v28;
      }

      if (v24 < v28)
      {
        v23 = v28;
        v24 = v28;
      }
    }

    while (v26 != __dst);
    v29 = (__dst - v279) >> 4;
    if (v29 <= 1)
    {
      v29 = 1;
    }

    v30 = (v279 + 8);
    v31 = 1.79769313e308;
    v32 = -1.79769313e308;
    do
    {
      v33 = *v30 - *(v30 - 1) * v18;
      if (v33 <= v31)
      {
        v31 = *v30 - *(v30 - 1) * v18;
      }

      if (v33 >= v32)
      {
        v32 = *v30 - *(v30 - 1) * v18;
      }

      v30 += 2;
      --v29;
    }

    while (v29);
  }

  v258 = objc_msgSend_array(MEMORY[0x1E695DF70], v13, v14, v15, v16, v17, strokesCopy);
  v256 = objc_msgSend_array(MEMORY[0x1E695DF70], v34, v35, v36, v37, v38);
  v255 = objc_msgSend_array(MEMORY[0x1E695DF70], v39, v40, v41, v42, v43);
  v257 = objc_msgSend_array(MEMORY[0x1E695DF70], v44, v45, v46, v47, v48);
  v277 = 0u;
  v278 = 0u;
  v275 = 0u;
  v276 = 0u;
  obj = strokesCopy;
  v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v49, &v275, v282, 16, v50);
  if (v51)
  {
    v52 = *v276;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v276 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v54 = *(*(&v275 + 1) + 8 * i);
        v55 = objc_opt_class();
        v61 = objc_msgSend_string(v54, v56, v57, v58, v59, v60);
        v65 = objc_msgSend_stringForRendering_useAltChars_(v55, v62, v61, v8, v63, v64);

        v71 = objc_msgSend_ch_smallCharacterSet(MEMORY[0x1E696AB08], v66, v67, v68, v69, v70);
        v76 = objc_msgSend_indexesOfCharacters_(v65, v72, v71, v73, v74, v75);
        v82 = objc_msgSend_count(v76, v77, v78, v79, v80, v81);
        LOBYTE(v82) = v82 == objc_msgSend_length(v65, v83, v84, v85, v86, v87);

        if ((v82 & 1) == 0)
        {
          v93 = objc_msgSend_strokeIndexes(v54, v88, v89, v90, v91, v92);
          v98 = objc_msgSend_objectsAtIndexes_(pointsCopy, v94, v93, v95, v96, v97);

          v262.x = 0.0;
          *&v262.y = &v262;
          *&v263.x = 0x4812000000;
          *&v263.y = sub_1837448F0;
          *&v264.x = sub_183744914;
          *&v264.y = &unk_183A5AC72;
          __p[1] = 0;
          v266.x = 0.0;
          __p[0] = 0;
          v271 = 0;
          v272 = &v271;
          v273 = 0x2020000000;
          v274 = 0;
          v104 = objc_msgSend_strokeIndexes(v54, v99, v100, v101, v102, v103);
          v270[0] = MEMORY[0x1E69E9820];
          v270[1] = 3221225472;
          v270[2] = sub_1837449A4;
          v270[3] = &unk_1E6DDD348;
          v270[5] = &v271;
          v270[6] = orientationCopy;
          v270[4] = &v262;
          objc_msgSend_enumerateIndexesUsingBlock_(v104, v105, v270, v106, v107, v108);

          if (v272[3])
          {
            v109 = objc_opt_class();
            v111 = objc_msgSend_principalLineInterceptsForString_skipAmbiguousCharacters_strokes_strokePoints_orientation_medianFallbackThreshold_(v109, v110, v65, 1, v98, *&v262.y + 48, string, 0.0);
            v116 = objc_msgSend_objectAtIndexedSubscript_(v111, v112, 0, v113, v114, v115);
            objc_msgSend_addObjectsFromArray_(v258, v117, v116, v118, v119, v120);

            v125 = objc_msgSend_objectAtIndexedSubscript_(v111, v121, 1, v122, v123, v124);
            objc_msgSend_addObjectsFromArray_(v256, v126, v125, v127, v128, v129);

            v134 = objc_msgSend_objectAtIndexedSubscript_(v111, v130, 2, v131, v132, v133);
            objc_msgSend_addObjectsFromArray_(v255, v135, v134, v136, v137, v138);

            v143 = objc_msgSend_objectAtIndexedSubscript_(v111, v139, 3, v140, v141, v142);
            objc_msgSend_addObjectsFromArray_(v257, v144, v143, v145, v146, v147);
          }

          _Block_object_dispose(&v271, 8);
          _Block_object_dispose(&v262, 8);
          v148 = __p[0];
          if (__p[0])
          {
            v149 = __p[1];
            v150 = __p[0];
            if (__p[1] != __p[0])
            {
              v151 = __p[1];
              do
              {
                v153 = *(v151 - 3);
                v151 -= 24;
                v152 = v153;
                if (v153)
                {
                  *(v149 - 2) = v152;
                  operator delete(v152);
                }

                v149 = v151;
              }

              while (v151 != v148);
              v150 = __p[0];
            }

            __p[1] = v148;
            operator delete(v150);
          }
        }
      }

      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v154, &v275, v282, 16, v155);
    }

    while (v51);
  }

  if (!objc_msgSend_count(v258, v156, v157, v158, v159, v160))
  {
    v166 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v161, v162, v163, v164, v165, v31);
    objc_msgSend_addObject_(v258, v167, v166, v168, v169, v170);
  }

  if (!objc_msgSend_count(v256, v161, v162, v163, v164, v165))
  {
    v176 = objc_msgSend_valueForKeyPath_(v258, v171, @"@max.floatValue", v173, v174, v175);
    objc_msgSend_addObject_(v256, v177, v176, v178, v179, v180);
  }

  if (!objc_msgSend_count(v257, v171, v172, v173, v174, v175))
  {
    v186 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v181, v182, v183, v184, v185, v32);
    objc_msgSend_addObject_(v257, v187, v186, v188, v189, v190);
  }

  if (!objc_msgSend_count(v255, v181, v182, v183, v184, v185))
  {
    v195 = objc_msgSend_valueForKeyPath_(v257, v191, @"@min.floatValue", v192, v193, v194);
    objc_msgSend_addObject_(v255, v196, v195, v197, v198, v199);
  }

  v200 = objc_msgSend_valueForKeyPath_(v258, v191, @"@avg.floatValue", v192, v193, v194);
  objc_msgSend_floatValue(v200, v201, v202, v203, v204, v205);
  v207 = v206;

  v212 = objc_msgSend_valueForKeyPath_(v256, v208, @"@avg.floatValue", v209, v210, v211);
  objc_msgSend_floatValue(v212, v213, v214, v215, v216, v217);
  v219 = v218;

  v224 = objc_msgSend_valueForKeyPath_(v255, v220, @"@avg.floatValue", v221, v222, v223);
  objc_msgSend_floatValue(v224, v225, v226, v227, v228, v229);
  v231 = v230;

  v236 = objc_msgSend_valueForKeyPath_(v257, v232, @"@avg.floatValue", v233, v234, v235);
  objc_msgSend_floatValue(v236, v237, v238, v239, v240, v241);
  v243 = v242;

  v244 = v207;
  v245 = v219;
  v246 = v231;
  v247 = v243;
  if (v207 > v219)
  {
    v244 = v219;
  }

  if (v243 < v231)
  {
    v247 = v231;
  }

  v248 = v23 + 0.01;
  if (v22 != v23)
  {
    v248 = v23;
  }

  retstr->var3.var0.x = v22;
  retstr->var3.var0.y = v244 + v22 * v18;
  retstr->var3.var1.x = v248;
  retstr->var3.var1.y = v244 + v248 * v18;
  retstr->var2.var0.x = v22;
  retstr->var2.var0.y = v245 + v22 * v18;
  retstr->var2.var1.x = v248;
  retstr->var2.var1.y = v245 + v248 * v18;
  retstr->var1.var0.x = v22;
  retstr->var1.var0.y = v246 + v22 * v18;
  retstr->var1.var1.x = v248;
  retstr->var1.var1.y = v246 + v248 * v18;
  retstr->var0.var0.x = v22;
  retstr->var0.var0.y = v247 + v22 * v18;
  retstr->var0.var1.x = v248;
  retstr->var0.var1.y = v247 + v248 * v18;
  sub_1838CD8C4(&retstr->var0.var0.x, &v279, &v262.x);
  v249 = v267;
  retstr->var2.var0 = v266;
  retstr->var2.var1 = v249;
  v250 = v269;
  retstr->var3.var0 = v268;
  retstr->var3.var1 = v250;
  v251 = v263;
  retstr->var0.var0 = v262;
  retstr->var0.var1 = v251;
  v252 = *__p;
  retstr->var1.var0 = v264;
  retstr->var1.var1 = v252;

  if (v279)
  {
    __dst = v279;
    operator delete(v279);
  }

  return result;
}

+ ($196E0A09E4C4E138EEBEC6372622051A)refinedPrincipalLinesForTextLine:(SEL)line points:(id)points alphaShape:(const void *)shape renderedTextPointsAndLines:(const void *)lines useAltString:(PointsAndPrincipalLines *)string shouldCancel:(BOOL)cancel
{
  cancelCopy = cancel;
  shapeCopy = shape;
  linesCopy = lines;
  v201 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  v167 = a9;
  v172 = pointsCopy;
  v11 = objc_opt_class();
  v17 = objc_msgSend_string(pointsCopy, v12, v13, v14, v15, v16);
  v166 = objc_msgSend_stringForRendering_useAltChars_(v11, v18, v17, cancelCopy, v19, v20);

  v197 = 0.0;
  v198 = 0.0;
  v196 = 0.0;
  v21 = objc_opt_class();
  objc_msgSend_getDeformValuesForTextLine_useAltString_outfullDeform_outAscenderDeform_outDescenderDeform_(v21, v22, pointsCopy, cancelCopy, &v198, &v197, &v196);
  v168 = objc_msgSend_tokenDistanceSizes_(pointsCopy, v23, 0, v24, v25, v26);
  v171 = v166;
  v176 = v171;
  if (!objc_msgSend_count(v168, v27, v28, v29, v30, v31))
  {
    goto LABEL_37;
  }

  v36 = objc_opt_class();
  objc_msgSend_estimatedRenderedTextSize_fullDeformValue_ascenderDeformValue_descenderDeformValue_(v36, v37, v171, v38, v39, v40, v198, v197, v196);
  v42 = v41;
  objc_msgSend_orientation(pointsCopy, v43, v44, v45, v46, v47);
  v54 = tan(v48);
  if (!pointsCopy)
  {
    goto LABEL_16;
  }

  objc_msgSend_points(pointsCopy, v49, v50, v51, v52, v53);
  v55 = __p[1] - __p[0];
  if (__p[1] != __p[0])
  {
    v56 = v55 >> 4;
    if ((v55 >> 4) <= 1)
    {
      v56 = 1;
    }

    v57 = (__p[0] + 8);
    v58 = 1.79769313e308;
    v59 = -1.79769313e308;
    do
    {
      v60 = *v57 + *(v57 - 1) * v54;
      if (v60 <= v58)
      {
        v58 = *v57 + *(v57 - 1) * v54;
      }

      if (v60 >= v59)
      {
        v59 = *v57 + *(v57 - 1) * v54;
      }

      v57 += 2;
      --v56;
    }

    while (v56);
    goto LABEL_15;
  }

  if (!__p[1])
  {
LABEL_16:
    v61 = -INFINITY;
    goto LABEL_17;
  }

  v58 = 1.79769313e308;
  v59 = -1.79769313e308;
LABEL_15:
  __p[1] = __p[0];
  operator delete(__p[0]);
  v61 = v59 - v58;
LABEL_17:
  v177 = objc_msgSend_array(MEMORY[0x1E695DF70], v49, v50, v51, v52, v53, shapeCopy, linesCopy);
  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  v62 = v168;
  v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v63, &v192, v200, 16, v64);
  if (v70)
  {
    v71 = fabs(v61) / sqrt(v54 * v54 + 1.0) + 1.0e-10;
    v72 = *v193;
    do
    {
      for (i = 0; i != v70; ++i)
      {
        if (*v193 != v72)
        {
          objc_enumerationMutation(v62);
        }

        objc_msgSend_floatValue(*(*(&v192 + 1) + 8 * i), v65, v66, v67, v68, v69);
        v79 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v75, fmax(fmin(round(v42 * (v74 / v71) / 10.0), 24.0), 0.0), v76, v77, v78);
        objc_msgSend_addObject_(v177, v80, v79, v81, v82, v83);
      }

      v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v65, &v192, v200, 16, v69);
    }

    while (v70);
  }

  v176 = objc_msgSend_string(MEMORY[0x1E696AD60], v84, v85, v86, v87, v88);
  v94 = objc_msgSend_splitIntoTokens(v172, v89, v90, v91, v92, v93);
  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  obj = v94;
  v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v95, &v188, v199, 16, v96);
  if (v102)
  {
    v103 = 0;
    v174 = *v189;
    do
    {
      for (j = 0; j != v102; ++j)
      {
        if (*v189 != v174)
        {
          objc_enumerationMutation(obj);
        }

        v105 = objc_msgSend_string(*(*(&v188 + 1) + 8 * j), v97, v98, v99, v100, v101);
        v111 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v106, v107, v108, v109, v110);
        v116 = objc_msgSend_stringByTrimmingCharactersInSet_(v105, v112, v111, v113, v114, v115);

        v117 = objc_opt_class();
        v121 = objc_msgSend_stringForRendering_useAltChars_(v117, v118, v116, cancelCopy, v119, v120);
        objc_msgSend_appendString_(v176, v122, v121, v123, v124, v125);
        if (v103 < objc_msgSend_count(v177, v126, v127, v128, v129, v130))
        {
          v135 = objc_msgSend_objectAtIndexedSubscript_(v177, v131, v103, v132, v133, v134);
          v141 = objc_msgSend_unsignedIntegerValue(v135, v136, v137, v138, v139, v140);

          v144 = objc_msgSend_stringByPaddingToLength_withString_startingAtIndex_(&stru_1EF1C0318, v142, v141, @" ", 0, v143);
          v150 = objc_msgSend_rangeOfString_(v144, v145, @"    ", v146, v147, v148);
          while (v150 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v154 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v144, v149, v150, v149, @" : ", v153);

            v150 = objc_msgSend_rangeOfString_(v154, v155, @"    ", v156, v157, v158);
            v144 = v154;
          }

          objc_msgSend_appendString_(v176, v149, v144, v151, v152, v153);
        }

        ++v103;
      }

      v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v97, &v188, v199, 16, v101);
    }

    while (v102);
  }

LABEL_37:
  if (string->var0.__end_ == string->var0.__begin_ || (objc_msgSend_isEqualToString_(v176, v32, v171, v33, v34, v35) & 1) == 0)
  {
    sub_1838CCD64(v176, 100, __p);
    begin = string->var0.__begin_;
    if (string->var0.__begin_)
    {
      string->var0.__end_ = begin;
      operator delete(begin);
      string->var0.__begin_ = 0;
      string->var0.__end_ = 0;
      string->var0.__cap_ = 0;
    }

    *&string->var0.__begin_ = *__p;
    string->var0.__cap_ = v179;
    string->var1.var2.var0 = v184;
    string->var1.var2.var1 = v185;
    string->var1.var3.var0 = v186;
    string->var1.var3.var1 = v187;
    string->var1.var0.var0 = v180;
    string->var1.var0.var1 = v181;
    string->var1.var1.var0 = v182;
    string->var1.var1.var1 = v183;
  }

  sub_1838C3F04(string, __p);
  retstr->var3.var0 = 0u;
  retstr->var3.var1 = 0u;
  retstr->var2.var0 = 0u;
  retstr->var2.var1 = 0u;
  retstr->var1.var0 = 0u;
  retstr->var1.var1 = 0u;
  retstr->var0.var0 = 0u;
  retstr->var0.var1 = 0u;
  v160 = objc_opt_class();
  if (!v160)
  {
    retstr->var3.var0 = 0u;
    retstr->var3.var1 = 0u;
    retstr->var2.var0 = 0u;
    retstr->var2.var1 = 0u;
    retstr->var1.var0 = 0u;
    retstr->var1.var1 = 0u;
    retstr->var0.var0 = 0u;
    retstr->var0.var1 = 0u;
    v162 = __p[0];
    if (!__p[0])
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  objc_msgSend_principalLinesForPoints_writtenAlphaShape_imgPointsAndPrincipalLines_shouldCancel_(v160, v161, shapeCopy, linesCopy, __p, v167);
  v162 = __p[0];
  if (__p[0])
  {
LABEL_44:
    __p[1] = v162;
    operator delete(v162);
  }

LABEL_45:

  return result;
}

+ (id)checkAvailableInterceptsForString:(id)string skipAmbiguousCharacters:(BOOL)characters
{
  v203 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v10 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v5, v6, v7, v8, v9);
  v15 = objc_msgSend_componentsSeparatedByCharactersInSet_(stringCopy, v11, v10, v12, v13, v14);

  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  obj = v15;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v197, v202, 16, v17);
  if (!v23)
  {
    v25 = 0;
    v196 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_47;
  }

  v24 = *v198;
  v183 = *v198;
  v25 = 0;
  if (!characters)
  {
    v196 = 0;
    v26 = 0;
    v27 = 0;
    while (1)
    {
      v99 = 0;
      v189 = v23;
      do
      {
        if (*v198 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v100 = *(*(&v197 + 1) + 8 * v99);
        v101 = objc_msgSend_countCharacters(v100, v18, v19, v20, v21, v22);
        hasAscender = objc_msgSend_hasAscender(v100, v102, v103, v104, v105, v106);
        hasDescender = objc_msgSend_hasDescender(v100, v108, v109, v110, v111, v112);
        hasMaxHeightOfXHeight = objc_msgSend_hasMaxHeightOfXHeight(v100, v114, v115, v116, v117, v118);
        if (hasAscender)
        {
          ++v27;
          if (hasDescender)
          {
            goto LABEL_40;
          }
        }

        else
        {
          if (v101 <= 2)
          {
            v26 += hasMaxHeightOfXHeight;
          }

          if (hasDescender)
          {
LABEL_40:
            ++v25;
            if (v101 < 3)
            {
              goto LABEL_30;
            }

            goto LABEL_41;
          }
        }

        if (v101 <= 2)
        {
          ++v196;
          goto LABEL_30;
        }

LABEL_41:
        v191 = v99;
        v120 = v27;
        v121 = v26;
        v187 = v25;
        v122 = 0;
        v193 = v101 - 1;
        v195 = v100;
        v123 = (v101 - 1);
        v124 = 1;
        do
        {
          v125 = objc_msgSend_substringWithComposedCharacterRange_(v195, v18, v122 - (v122 != 0), fmin(v123, (v122 + 2)) + (v122 != 0) + v124, v21, v22);
          v131 = objc_msgSend_countCharacters(v125, v126, v127, v128, v129, v130);
          v137 = objc_msgSend_ascendersCount(v125, v132, v133, v134, v135, v136);
          v143 = objc_msgSend_hasAscender(v125, v138, v139, v140, v141, v142);
          v149 = objc_msgSend_hasDescender(v125, v144, v145, v146, v147, v148);
          v155 = objc_msgSend_hasMaxHeightOfXHeight(v125, v150, v151, v152, v153, v154);
          if (v137 / v131 >= 0.66)
          {
            ++v120;
          }

          v121 += (v143 ^ 1) & v155;
          v196 += v149 ^ 1u;
          ++v122;
          --v124;
        }

        while (v193 != v122);
        v25 = v187;
        v26 = v121;
        v27 = v120;
        v24 = v183;
        v99 = v191;
LABEL_30:
        ++v99;
      }

      while (v99 != v189);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v197, v202, 16, v22);
      if (!v23)
      {
        goto LABEL_47;
      }
    }
  }

  v196 = 0;
  v26 = 0;
  v27 = 0;
  do
  {
    v28 = 0;
    v188 = v23;
    do
    {
      if (*v198 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v185 = v28;
      v29 = *(*(&v197 + 1) + 8 * v28);
      v30 = objc_msgSend_countCharacters(v29, v18, v19, v20, v21, v22);
      v36 = objc_msgSend_hasAscender(v29, v31, v32, v33, v34, v35);
      v42 = objc_msgSend_hasDescender(v29, v37, v38, v39, v40, v41);
      v48 = objc_msgSend_hasMaxHeightOfXHeight(v29, v43, v44, v45, v46, v47);
      v192 = v29;
      hasAmbiguousCharacter = objc_msgSend_hasAmbiguousCharacter(v29, v49, v50, v51, v52, v53);
      v55 = v26 + v48;
      if (v30 > 2)
      {
        v55 = v26;
      }

      if (v36)
      {
        ++v27;
      }

      else
      {
        v26 = v55;
      }

      if (v42)
      {
        ++v25;
        v56 = v29;
        if (v30 < 3)
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (v30 <= 2)
        {
          v196 += hasAmbiguousCharacter ^ 1u;
          goto LABEL_6;
        }

        v56 = v29;
      }

      v194 = v27;
      v57 = v26;
      v186 = v25;
      v58 = 0;
      v190 = v30 - 1;
      v59 = (v30 - 1);
      v60 = 1;
      do
      {
        v61 = objc_msgSend_substringWithComposedCharacterRange_(v56, v18, v58 - (v58 != 0), fmin(v59, (v58 + 2)) + (v58 != 0) + v60, v21, v22);
        v67 = objc_msgSend_countCharacters(v61, v62, v63, v64, v65, v66);
        v73 = objc_msgSend_ascendersCount(v61, v68, v69, v70, v71, v72);
        v79 = objc_msgSend_hasAscender(v61, v74, v75, v76, v77, v78);
        v85 = objc_msgSend_hasDescender(v61, v80, v81, v82, v83, v84);
        v91 = objc_msgSend_hasMaxHeightOfXHeight(v61, v86, v87, v88, v89, v90);
        v97 = objc_msgSend_hasAmbiguousCharacter(v61, v92, v93, v94, v95, v96);
        v98 = v194;
        if (v73 / v67 >= 0.66)
        {
          v98 = v194 + 1;
        }

        v194 = v98;

        v57 += (v79 ^ 1) & v91;
        v196 += ((v85 | v97) & 1) == 0;
        ++v58;
        --v60;
        v56 = v192;
      }

      while (v190 != v58);
      v25 = v186;
      v26 = v57;
      v27 = v194;
      v24 = v183;
LABEL_6:
      v28 = v185 + 1;
    }

    while (v185 + 1 != v188);
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v197, v202, 16, v22);
  }

  while (v23);
LABEL_47:
  v156 = v25;

  v161 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v157, v27, v158, v159, v160);
  v201[0] = v161;
  v166 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v162, v26, v163, v164, v165);
  v201[1] = v166;
  v171 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v167, v196, v168, v169, v170);
  v201[2] = v171;
  v176 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v172, v156, v173, v174, v175);
  v201[3] = v176;
  v180 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v177, v201, 4, v178, v179);

  return v180;
}

+ ($196E0A09E4C4E138EEBEC6372622051A)flipPrincipalLine:(SEL)line points:(id *)points string:(const void *)string outWasFlipped:(id)flipped
{
  flippedCopy = flipped;
  y = points->var1.var0.y;
  v18 = atan2(points->var1.var1.y - y, points->var1.var1.x - points->var1.var0.x);
  if (v18 <= 2.2 && y >= points->var2.var0.y)
  {
    v52 = 0;
    if (!a7)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  hasAscender = objc_msgSend_hasAscender(flippedCopy, v13, v14, v15, v16, v17);
  hasDescender = objc_msgSend_hasDescender(flippedCopy, v20, v21, v22, v23, v24);
  v26 = v18 + -3.1415;
  if (v18 <= 2.2)
  {
    v26 = v18;
  }

  v27 = tan(v26);
  v28 = *(string + 1);
  v29 = *string;
  if (v28 == *string)
  {
    v33 = -1.79769313e308;
    v32 = 1.79769313e308;
  }

  else
  {
    v30 = (v28 - *string) >> 4;
    if (v30 <= 1)
    {
      v30 = 1;
    }

    v31 = v29 + 1;
    v32 = 1.79769313e308;
    v33 = -1.79769313e308;
    do
    {
      v34 = *v31 - *(v31 - 1) * v27;
      if (v34 <= v32)
      {
        v32 = *v31 - *(v31 - 1) * v27;
      }

      if (v34 >= v33)
      {
        v33 = *v31 - *(v31 - 1) * v27;
      }

      v31 += 2;
      --v30;
    }

    while (v30);
  }

  if (v28 == v29)
  {
    v35 = 1.79769313e308;
    v36 = -1.79769313e308;
  }

  else
  {
    v35 = 1.79769313e308;
    v36 = -1.79769313e308;
    v37 = -1.79769313e308;
    v38 = 1.79769313e308;
    do
    {
      v39 = *v29;
      v29 += 2;
      v40 = v39;
      if (v38 > v39)
      {
        v35 = v40;
        v38 = v40;
      }

      if (v37 < v40)
      {
        v36 = v40;
        v37 = v40;
      }
    }

    while (v29 != v28);
  }

  v41 = vabdd_f64(points->var3.var0.y - points->var3.var0.x * v27, points->var2.var0.y - points->var2.var0.x * v27);
  v42 = v32 + v41;
  v43 = v32 - v41;
  if (hasAscender)
  {
    v43 = v32;
    v32 = v42;
  }

  v44 = vabdd_f64(points->var0.var0.y - points->var0.var0.x * v27, points->var1.var0.y - points->var1.var0.x * v27);
  v45 = v33 - v44;
  v46 = v33 + v44;
  if (!hasDescender)
  {
    v45 = v33;
    v33 = v46;
  }

  v47 = v36 + 0.01;
  if (v35 != v36)
  {
    v47 = v36;
  }

  points->var0.var0.x = v35;
  points->var0.var0.y = v33 + v35 * v27;
  points->var0.var1.x = v47;
  points->var0.var1.y = v33 + v47 * v27;
  points->var1.var0.x = v35;
  points->var1.var0.y = v45 + v35 * v27;
  points->var1.var1.x = v47;
  points->var1.var1.y = v45 + v47 * v27;
  points->var2.var0.x = v35;
  points->var2.var0.y = v32 + v35 * v27;
  points->var2.var1.x = v47;
  points->var2.var1.y = v32 + v47 * v27;
  points->var3.var0.x = v35;
  points->var3.var0.y = v43 + v35 * v27;
  points->var3.var1.x = v47;
  points->var3.var1.y = v43 + v47 * v27;
  sub_1838CD8C4(&points->var0.var0.x, string, v58);
  v48 = v58[5];
  points->var2.var0 = v58[4];
  points->var2.var1 = v48;
  v49 = v58[7];
  points->var3.var0 = v58[6];
  points->var3.var1 = v49;
  v50 = v58[1];
  points->var0.var0 = v58[0];
  points->var0.var1 = v50;
  v51 = v58[3];
  v52 = 1;
  points->var1.var0 = v58[2];
  points->var1.var1 = v51;
  if (a7)
  {
LABEL_32:
    *a7 = v52;
  }

LABEL_33:
  var1 = points->var2.var1;
  retstr->var2.var0 = points->var2.var0;
  retstr->var2.var1 = var1;
  v54 = points->var3.var1;
  retstr->var3.var0 = points->var3.var0;
  retstr->var3.var1 = v54;
  v55 = points->var0.var1;
  retstr->var0.var0 = points->var0.var0;
  retstr->var0.var1 = v55;
  v56 = points->var1.var1;
  retstr->var1.var0 = points->var1.var0;
  retstr->var1.var1 = v56;

  return result;
}

+ ($196E0A09E4C4E138EEBEC6372622051A)fixPrincipalLinesOrientation:(SEL)orientation useAltString:(id)string skipAmbiguousCharacters:(BOOL)characters
{
  v388 = a6;
  charactersCopy = characters;
  v415 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v6 = objc_opt_class();
  v12 = objc_msgSend_string(stringCopy, v7, v8, v9, v10, v11);
  v383 = objc_msgSend_stringForRendering_useAltChars_(v6, v13, v12, charactersCopy, v14, v15);

  v21 = objc_msgSend_ch_smallCharacterSet(MEMORY[0x1E696AB08], v16, v17, v18, v19, v20);
  LOBYTE(v6) = sub_1837A4F0C(v383, v21);

  if ((v6 & 1) == 0 && objc_msgSend_length(v383, v22, v23, v24, v25, v26))
  {
    objc_msgSend_orientation(stringCopy, v22, v23, v24, v25, v26);
    v28 = v27;
    objc_msgSend_orientation(stringCopy, v29, v30, v31, v32, v33);
    v40 = tan(v34);
    retstr->var3.var0 = 0u;
    retstr->var3.var1 = 0u;
    retstr->var2.var0 = 0u;
    retstr->var2.var1 = 0u;
    retstr->var1.var0 = 0u;
    retstr->var1.var1 = 0u;
    retstr->var0.var0 = 0u;
    retstr->var0.var1 = 0u;
    if (stringCopy)
    {
      objc_msgSend_principalLines(stringCopy, v35, v36, v37, v38, v39);
    }

    v386 = objc_msgSend_array(MEMORY[0x1E695DF70], v35, v36, v37, v38, v39);
    v390 = objc_msgSend_array(MEMORY[0x1E695DF70], v41, v42, v43, v44, v45);
    v387 = objc_msgSend_array(MEMORY[0x1E695DF70], v46, v47, v48, v49, v50);
    if (!stringCopy)
    {
      v59 = 0.0;
      v63 = 0.0;
      goto LABEL_20;
    }

    objc_msgSend_points(stringCopy, v51, v52, v53, v54, v55);
    v56 = __p[1] - __p[0];
    if (__p[1] == __p[0])
    {
      v59 = 0.0;
      v61 = 0.0;
      v63 = 0.0;
      if (!__p[1])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v57 = v56 >> 4;
      if ((v56 >> 4) <= 1)
      {
        v57 = 1;
      }

      v58 = (__p[0] + 8);
      v59 = 0.0;
      v60 = 1.79769313e308;
      v61 = 0.0;
      do
      {
        v62 = *(v58 - 1);
        if (*v58 + v62 * v40 <= v60)
        {
          v61 = *(v58 - 1);
          v59 = *v58;
          v60 = *v58 + v62 * v40;
        }

        v58 += 2;
        --v57;
      }

      while (v57);
    }

    __p[1] = __p[0];
    operator delete(__p[0]);
    v63 = v61;
LABEL_20:
    x = retstr->var2.var0.x;
    y = retstr->var2.var0.y;
    v66 = objc_msgSend_splitIntoTokens(stringCopy, v51, v52, v53, v54, v55);
    v412 = 0u;
    v413 = 0u;
    v410 = 0u;
    v411 = 0u;
    obj = v66;
    v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v67, &v410, v414, 16, v68);
    if (v69)
    {
      v70 = 0;
      v71 = 0;
      v72 = -v40;
      v73 = fmax(v59 + v63 * v40, y + x * v40);
      v74 = *v411;
      while (1)
      {
        for (i = 0; i != v69; ++i)
        {
          if (*v411 != v74)
          {
            objc_enumerationMutation(obj);
          }

          v76 = *(*(&v410 + 1) + 8 * i);
          v77 = objc_opt_class();
          v83 = objc_msgSend_string(v76, v78, v79, v80, v81, v82);
          v87 = objc_msgSend_stringForRendering_useAltChars_(v77, v84, v83, charactersCopy, v85, v86);

          v93 = objc_msgSend_ch_smallCharacterSet(MEMORY[0x1E696AB08], v88, v89, v90, v91, v92);
          v98 = objc_msgSend_indexesOfCharacters_(v87, v94, v93, v95, v96, v97);
          v104 = objc_msgSend_count(v98, v99, v100, v101, v102, v103);
          LOBYTE(v104) = v104 == objc_msgSend_length(v87, v105, v106, v107, v108, v109);

          if ((v104 & 1) == 0)
          {
            v110 = objc_opt_class();
            v121 = objc_msgSend_textStrokes(v76, v111, v112, v113, v114, v115);
            if (v76)
            {
              objc_msgSend_strokePoints(v76, v116, v117, v118, v119, v120);
            }

            else
            {
              __p[0] = 0;
              __p[1] = 0;
              v401.x = 0.0;
            }

            objc_msgSend_orientation(v76, v116, v117, v118, v119, v120);
            v123 = objc_msgSend_principalLinePointsForString_skipAmbiguousCharacters_strokes_strokePoints_orientation_medianFallbackThreshold_(v110, v122, v87, v388, v121, __p);
            v124 = __p[0];
            if (__p[0])
            {
              v125 = __p[1];
              v126 = __p[0];
              if (__p[1] != __p[0])
              {
                v127 = __p[1];
                do
                {
                  v129 = *(v127 - 3);
                  v127 -= 24;
                  v128 = v129;
                  if (v129)
                  {
                    *(v125 - 2) = v128;
                    operator delete(v128);
                  }

                  v125 = v127;
                }

                while (v127 != v124);
                v126 = __p[0];
              }

              __p[1] = v124;
              operator delete(v126);
            }

            v134 = objc_msgSend_objectAtIndexedSubscript_(v123, v130, 0, v131, v132, v133);
            objc_msgSend_addObjectsFromArray_(v386, v135, v134, v136, v137, v138);

            v143 = objc_msgSend_objectAtIndexedSubscript_(v123, v139, 1, v140, v141, v142);
            objc_msgSend_addObjectsFromArray_(v390, v144, v143, v145, v146, v147);

            v152 = objc_msgSend_objectAtIndexedSubscript_(v123, v148, 2, v149, v150, v151);
            objc_msgSend_addObjectsFromArray_(v387, v153, v152, v154, v155, v156);

            v161 = objc_msgSend_objectAtIndexedSubscript_(v123, v157, 0, v158, v159, v160);
            v409[0] = MEMORY[0x1E69E9820];
            v409[1] = 3221225472;
            v409[2] = sub_183746B38;
            v409[3] = &unk_1E6DDD368;
            *&v409[4] = v72;
            *&v409[5] = v73;
            v166 = objc_msgSend_indexesOfObjectsPassingTest_(v161, v162, v409, v163, v164, v165);

            v171 = objc_msgSend_objectAtIndexedSubscript_(v123, v167, 0, v168, v169, v170);
            v176 = objc_msgSend_objectsAtIndexes_(v171, v172, v166, v173, v174, v175);
            objc_msgSend_addObjectsFromArray_(v390, v177, v176, v178, v179, v180);

            v185 = objc_msgSend_objectAtIndexedSubscript_(v123, v181, 0, v182, v183, v184);
            objc_msgSend_count(v185, v186, v187, v188, v189, v190);

            v195 = objc_msgSend_objectAtIndexedSubscript_(v123, v191, 1, v192, v193, v194);
            if (objc_msgSend_count(v195, v196, v197, v198, v199, v200))
            {

              goto LABEL_40;
            }

            v210 = objc_msgSend_count(v166, v201, v202, v203, v204, v205) == 0;

            if (!v210)
            {
LABEL_40:
              ++v71;
            }

            v211 = objc_msgSend_objectAtIndexedSubscript_(v123, v206, 2, v207, v208, v209);
            v217 = objc_msgSend_count(v211, v212, v213, v214, v215, v216) != 0;

            v70 += v217;
          }
        }

        v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v218, &v410, v414, 16, v219);
        if (!v69)
        {
          v220 = v70;
          v221 = v71;
          goto LABEL_46;
        }
      }
    }

    v220 = 0.0;
    v221 = 0.0;
LABEL_46:

    if (objc_msgSend_count(obj, v222, v223, v224, v225, v226) == 1 && objc_msgSend_count(v387, v227, v228, v229, v230, v231) > 2 || objc_msgSend_count(obj, v227, v228, v229, v230, v231) >= 2 && (v220 / objc_msgSend_count(obj, v232, v233, v234, v235, v236)) >= 0.75)
    {
      sub_1838C340C(v387, __p);
      v237 = __p[1] - __p[0];
      v238 = (__p[1] - __p[0]) >> 4;
      v385 = 0.0;
      if (v238 >= 2)
      {
        if (__p[0] == __p[1])
        {
          *&v257 = NAN;
        }

        else
        {
          v239 = v237 - 16;
          v240 = (v237 - 16) >> 4;
          v241 = 0uLL;
          v242 = __p[0];
          if (v239 <= 0xF)
          {
            goto LABEL_127;
          }

          v243 = (v240 + 1) & 0x1FFFFFFFFFFFFFFELL;
          v242 = (__p[0] + 16 * v243);
          v244 = (__p[0] + 16);
          v245 = v243;
          do
          {
            v241 = vaddq_f64(vaddq_f64(v241, v244[-1]), *v244);
            v244 += 2;
            v245 -= 2;
          }

          while (v245);
          if (v240 + 1 != v243)
          {
LABEL_127:
            do
            {
              v246 = *v242++;
              v241 = vaddq_f64(v241, v246);
            }

            while (v242 != __p[1]);
          }

          v247 = vdivq_f64(v241, vdupq_lane_s64(COERCE__INT64(v238), 0));
          v248 = 0uLL;
          v249 = __p[0];
          if (v239 <= 0xF)
          {
            goto LABEL_128;
          }

          v250 = v240 + 1;
          v249 = (__p[0] + 16 * (v250 & 0x1FFFFFFFFFFFFFFELL));
          v251 = (__p[0] + 16);
          v252 = v250 & 0x1FFFFFFFFFFFFFFELL;
          do
          {
            v253 = vsubq_f64(v251[-1], v247);
            v254 = vsubq_f64(*v251, v247);
            v248 = vaddq_f64(vaddq_f64(v248, vmulq_n_f64(v253, v253.f64[0])), vmulq_n_f64(v254, v254.f64[0]));
            v251 += 2;
            v252 -= 2;
          }

          while (v252);
          if (v250 != (v250 & 0x1FFFFFFFFFFFFFFELL))
          {
LABEL_128:
            do
            {
              v255 = *v249++;
              v256 = vsubq_f64(v255, v247);
              v248 = vmlaq_n_f64(v248, v256, v256.f64[0]);
            }

            while (v249 != __p[1]);
          }

          v257 = *&vdivq_f64(vdupq_laneq_s64(v248, 1), v248);
        }

        v385 = *&v257;
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      v385 = 1.79769313e308;
    }

    if (objc_msgSend_count(obj, v232, v233, v234, v235, v236) == 1 && objc_msgSend_count(v390, v258, v259, v260, v261, v262) > 2 || objc_msgSend_count(obj, v258, v259, v260, v261, v262) >= 2 && (v221 / objc_msgSend_count(obj, v263, v264, v265, v266, v267)) >= 0.75)
    {
      sub_1838C340C(v390, __p);
      v270 = __p[1] - __p[0];
      v271 = (__p[1] - __p[0]) >> 4;
      __x = 0.0;
      if (v271 >= 2)
      {
        if (__p[0] == __p[1])
        {
          *&v290 = NAN;
        }

        else
        {
          v272 = v270 - 16;
          v273 = (v270 - 16) >> 4;
          v274 = 0uLL;
          v275 = __p[0];
          if (v272 <= 0xF)
          {
            goto LABEL_129;
          }

          v276 = (v273 + 1) & 0x1FFFFFFFFFFFFFFELL;
          v275 = (__p[0] + 16 * v276);
          v277 = (__p[0] + 16);
          v278 = v276;
          do
          {
            v274 = vaddq_f64(vaddq_f64(v274, v277[-1]), *v277);
            v277 += 2;
            v278 -= 2;
          }

          while (v278);
          if (v273 + 1 != v276)
          {
LABEL_129:
            do
            {
              v279 = *v275++;
              v274 = vaddq_f64(v274, v279);
            }

            while (v275 != __p[1]);
          }

          v280 = vdivq_f64(v274, vdupq_lane_s64(COERCE__INT64(v271), 0));
          v281 = 0uLL;
          v282 = __p[0];
          if (v272 <= 0xF)
          {
            goto LABEL_130;
          }

          v283 = v273 + 1;
          v282 = (__p[0] + 16 * (v283 & 0x1FFFFFFFFFFFFFFELL));
          v284 = (__p[0] + 16);
          v285 = v283 & 0x1FFFFFFFFFFFFFFELL;
          do
          {
            v286 = vsubq_f64(v284[-1], v280);
            v287 = vsubq_f64(*v284, v280);
            v281 = vaddq_f64(vaddq_f64(v281, vmulq_n_f64(v286, v286.f64[0])), vmulq_n_f64(v287, v287.f64[0]));
            v284 += 2;
            v285 -= 2;
          }

          while (v285);
          if (v283 != (v283 & 0x1FFFFFFFFFFFFFFELL))
          {
LABEL_130:
            do
            {
              v288 = *v282++;
              v289 = vsubq_f64(v288, v280);
              v281 = vmlaq_n_f64(v281, v289, v289.f64[0]);
            }

            while (v282 != __p[1]);
          }

          v290 = *&vdivq_f64(vdupq_laneq_s64(v281, 1), v281);
        }

        __x = *&v290;
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v385 != 1.79769313e308 && __x != 1.79769313e308)
      {
        v292 = atan((v385 + __x) * 0.5);
        v298 = objc_msgSend_count(v387, v293, v294, v295, v296, v297);
        v304 = objc_msgSend_count(v390, v299, v300, v301, v302, v303);
        v291 = -v292;
        v268 = fmax(v298, v304);
        if (vabdd_f64(-v292, v28) <= 0.1)
        {
          goto LABEL_102;
        }

        goto LABEL_100;
      }

      if (__x != 1.79769313e308)
      {
        v268 = objc_msgSend_count(v390, v263, v264, v265, v266, v267, 1.79769313e308, __x);
        v269 = __x;
LABEL_99:
        v291 = -atan(v269);
        if (vabdd_f64(v291, v28) <= 0.1)
        {
          goto LABEL_102;
        }

        goto LABEL_100;
      }
    }

    if (v385 != 1.79769313e308)
    {
      v268 = objc_msgSend_count(v387, v263, v264, v265, v266, v267, 1.79769313e308, v385);
      v269 = v385;
      goto LABEL_99;
    }

    v268 = 0;
    v291 = v28;
    if (vabdd_f64(v28, v28) <= 0.1)
    {
      goto LABEL_102;
    }

LABEL_100:
    if (fabs(v291) < fabs(v28) || v268 >= 4)
    {
      v312 = v291 - v28;
      v314 = retstr->var1.var0.x;
      v313 = retstr->var1.var0.y;
      memset(&v408, 0, sizeof(v408));
      CGAffineTransformMakeRotation(&v408, -v312);
      sub_1838CA7E4(&retstr->var0.var0.x, &v408.a, __p);
      v315 = v405;
      retstr->var2.var0 = var0;
      retstr->var2.var1 = v315;
      v316 = v407;
      retstr->var3.var0 = v406;
      retstr->var3.var1 = v316;
      v317 = v401;
      retstr->var0.var0 = *__p;
      retstr->var0.var1 = v317;
      v318 = v403;
      retstr->var1.var0 = v402;
      retstr->var1.var1 = v318;
      v318.x = retstr->var1.var0.y;
      v319 = v314 - retstr->var1.var0.x;
      memset(&v399, 0, sizeof(v399));
      CGAffineTransformMakeTranslation(&v399, v319, v313 - v318.x);
      sub_1838CA7E4(&retstr->var0.var0.x, &v399.a, __p);
      v320 = v405;
      retstr->var2.var0 = var0;
      retstr->var2.var1 = v320;
      v321 = v407;
      retstr->var3.var0 = v406;
      retstr->var3.var1 = v321;
      v322 = v401;
      retstr->var0.var0 = *__p;
      retstr->var0.var1 = v322;
      v323 = v403;
      retstr->var1.var0 = v402;
      retstr->var1.var1 = v323;
      v324 = [CHTransformedTextLine alloc];
      v330 = objc_msgSend_textStrokes(stringCopy, v325, v326, v327, v328, v329);
      v341 = objc_msgSend_tokens(stringCopy, v331, v332, v333, v334, v335);
      if (stringCopy)
      {
        objc_msgSend_points(stringCopy, v336, v337, v338, v339, v340);
        objc_msgSend_strokePoints(stringCopy, v342, v343, v344, v345, v346);
      }

      else
      {
        v396 = 0;
        v397 = 0;
        v398 = 0;
        v393 = 0;
        v394 = 0;
        v395 = 0;
      }

      v347 = objc_msgSend_locale(stringCopy, v336, v337, v338, v339, v340);
      v353 = objc_msgSend_strokeClassification(stringCopy, v348, v349, v350, v351, v352);
      var1 = retstr->var2.var1;
      var0 = retstr->var2.var0;
      v405 = var1;
      v355 = retstr->var3.var1;
      v406 = retstr->var3.var0;
      v407 = v355;
      v356 = retstr->var0.var1;
      *__p = retstr->var0.var0;
      v401 = v356;
      v357 = retstr->var1.var1;
      v402 = retstr->var1.var0;
      v403 = v357;
      v363 = objc_msgSend_principalPoints(stringCopy, v358, v359, v360, v361, v362);
      v364 = *(MEMORY[0x1E695EFD0] + 16);
      v392[0] = *MEMORY[0x1E695EFD0];
      v392[1] = v364;
      v392[2] = *(MEMORY[0x1E695EFD0] + 32);
      v366 = objc_msgSend_initWithStrokes_tokens_points_strokePoints_locale_strokeClassification_principalLines_principalPoints_transform_(v324, v365, v330, v341, &v396, &v393, v347, v353, __p, v363, v392);

      v367 = v393;
      if (v393)
      {
        v368 = v394;
        v369 = v393;
        if (v394 != v393)
        {
          v370 = v394;
          do
          {
            v372 = *(v370 - 3);
            v370 -= 24;
            v371 = v372;
            if (v372)
            {
              *(v368 - 2) = v371;
              operator delete(v371);
            }

            v368 = v370;
          }

          while (v370 != v367);
          v369 = v393;
        }

        v394 = v367;
        operator delete(v369);
      }

      if (v396)
      {
        v397 = v396;
        operator delete(v396);
      }

      v373 = objc_opt_class();
      if (v373)
      {
        objc_msgSend_fixPrincipalLinesPosition_useAltString_skipAmbiguousCharacters_(v373, v374, v366, charactersCopy, v388, v375);
      }

      else
      {
        v406 = 0;
        v407 = 0;
        var0 = 0;
        v405 = 0;
        v402 = 0;
        v403 = 0;
        *__p = 0u;
        v401 = 0;
      }

      v376 = v405;
      retstr->var2.var0 = var0;
      retstr->var2.var1 = v376;
      v377 = v407;
      retstr->var3.var0 = v406;
      retstr->var3.var1 = v377;
      v378 = v401;
      retstr->var0.var0 = *__p;
      retstr->var0.var1 = v378;
      v379 = v403;
      retstr->var1.var0 = v402;
      retstr->var1.var1 = v379;

      goto LABEL_123;
    }

LABEL_102:
    v305 = objc_opt_class();
    if (v305)
    {
      objc_msgSend_fixPrincipalLinesPosition_useAltString_skipAmbiguousCharacters_(v305, v306, stringCopy, charactersCopy, v388, v307);
    }

    else
    {
      v406 = 0;
      v407 = 0;
      var0 = 0;
      v405 = 0;
      v402 = 0;
      v403 = 0;
      *__p = 0u;
      v401 = 0;
    }

    v308 = v405;
    retstr->var2.var0 = var0;
    retstr->var2.var1 = v308;
    v309 = v407;
    retstr->var3.var0 = v406;
    retstr->var3.var1 = v309;
    v310 = v401;
    retstr->var0.var0 = *__p;
    retstr->var0.var1 = v310;
    v311 = v403;
    retstr->var1.var0 = v402;
    retstr->var1.var1 = v311;
LABEL_123:

    goto LABEL_124;
  }

  if (stringCopy)
  {
    objc_msgSend_principalLines(stringCopy, v22, v23, v24, v25, v26);
  }

  else
  {
    retstr->var3.var0 = 0u;
    retstr->var3.var1 = 0u;
    retstr->var2.var0 = 0u;
    retstr->var2.var1 = 0u;
    retstr->var1.var0 = 0u;
    retstr->var1.var1 = 0u;
    retstr->var0.var0 = 0u;
    retstr->var0.var1 = 0u;
  }

LABEL_124:

  return result;
}

+ ($196E0A09E4C4E138EEBEC6372622051A)fixPrincipalLinesPosition:(SEL)position useAltString:(id)string skipAmbiguousCharacters:(BOOL)characters
{
  v568 = a6;
  charactersCopy = characters;
  v610 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v6 = objc_opt_class();
  v12 = objc_msgSend_string(stringCopy, v7, v8, v9, v10, v11);
  v576 = objc_msgSend_stringForRendering_useAltChars_(v6, v13, v12, charactersCopy, v14, v15);

  v21 = objc_msgSend_ch_smallCharacterSet(MEMORY[0x1E696AB08], v16, v17, v18, v19, v20);
  LOBYTE(v6) = sub_1837A4F0C(v576, v21);

  if ((v6 & 1) != 0 || !objc_msgSend_length(v576, v22, v23, v24, v25, v26))
  {
    if (!stringCopy)
    {
LABEL_24:
      retstr->var3.var0 = 0u;
      retstr->var3.var1 = 0u;
      retstr->var2.var0 = 0u;
      retstr->var2.var1 = 0u;
      retstr->var1.var0 = 0u;
      retstr->var1.var1 = 0u;
      retstr->var0.var0 = 0u;
      retstr->var0.var1 = 0u;
      goto LABEL_25;
    }

LABEL_15:
    objc_msgSend_principalLines(stringCopy, v22, v23, v24, v25, v26);
    goto LABEL_25;
  }

  objc_msgSend_orientation(stringCopy, v22, v23, v24, v25, v26);
  v28 = tan(v27);
  v589 = 0u;
  v590 = 0u;
  v587 = 0u;
  v588 = 0u;
  v585 = 0u;
  v586 = 0u;
  v583 = 0u;
  v584 = 0u;
  if (!stringCopy)
  {
    goto LABEL_23;
  }

  objc_msgSend_principalLines(stringCopy, v22, v23, v24, v25, v26);
  objc_msgSend_points(stringCopy, v29, v30, v31, v32, v33);
  v34 = *&__p.y - *&__p.x;
  if (*&__p.y == *&__p.x)
  {
    if (!*&__p.y)
    {
      goto LABEL_23;
    }

    v37 = 1.79769313e308;
    v38 = -1.79769313e308;
  }

  else
  {
    v35 = v34 >> 4;
    if ((v34 >> 4) <= 1)
    {
      v35 = 1;
    }

    v36 = (*&__p.x + 8);
    v37 = 1.79769313e308;
    v38 = -1.79769313e308;
    do
    {
      v39 = *v36 + *(v36 - 1) * v28;
      if (v39 <= v37)
      {
        v37 = *v36 + *(v36 - 1) * v28;
      }

      if (v39 >= v38)
      {
        v38 = *v36 + *(v36 - 1) * v28;
      }

      v36 += 2;
      --v35;
    }

    while (v35);
  }

  __p.y = __p.x;
  operator delete(*&__p.x);
  if (v37 == 1.79769313e308 || v38 == -1.79769313e308)
  {
LABEL_23:
    if (!stringCopy)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v559 = objc_msgSend_array(MEMORY[0x1E695DF70], v22, v23, v24, v25, v26);
  v558 = objc_msgSend_array(MEMORY[0x1E695DF70], v42, v43, v44, v45, v46);
  v557 = objc_msgSend_array(MEMORY[0x1E695DF70], v47, v48, v49, v50, v51);
  v560 = objc_msgSend_array(MEMORY[0x1E695DF70], v52, v53, v54, v55, v56);
  v62 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v57, v58, v59, v60, v61, *(&v589 + 1) + *&v589 * v28);
  objc_msgSend_addObject_(v559, v63, v62, v64, v65, v66);

  v72 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v67, v68, v69, v70, v71, fmax(v37, *(&v587 + 1) + *&v587 * v28));
  objc_msgSend_addObject_(v558, v73, v72, v74, v75, v76);

  v82 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v77, v78, v79, v80, v81, fmin(v38, *(&v585 + 1) + *&v585 * v28));
  objc_msgSend_addObject_(v557, v83, v82, v84, v85, v86);

  v92 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v87, v88, v89, v90, v91, *(&v583 + 1) + *&v583 * v28);
  objc_msgSend_addObject_(v560, v93, v92, v94, v95, v96);

  objc_msgSend_splitIntoTokens(stringCopy, v97, v98, v99, v100, v101);
  v581 = 0u;
  v582 = 0u;
  v579 = 0u;
  obj = v580 = 0u;
  v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v102, &v579, &v600, 16, v103);
  v562 = v104;
  if (v104)
  {
    v563 = *v580;
    do
    {
      v569 = 0;
      do
      {
        if (*v580 != v563)
        {
          objc_enumerationMutation(obj);
        }

        v105 = *(*(&v579 + 1) + 8 * v569);
        v106 = objc_opt_class();
        v112 = objc_msgSend_string(v105, v107, v108, v109, v110, v111);
        v565 = v105;
        v571 = objc_msgSend_stringForRendering_useAltChars_(v106, v113, v112, charactersCopy, v114, v115);

        v121 = objc_msgSend_ch_smallCharacterSet(MEMORY[0x1E696AB08], v116, v117, v118, v119, v120);
        v126 = objc_msgSend_indexesOfCharacters_(v571, v122, v121, v123, v124, v125);
        v132 = objc_msgSend_count(v126, v127, v128, v129, v130, v131);
        LOBYTE(v132) = v132 == objc_msgSend_length(v571, v133, v134, v135, v136, v137);

        if ((v132 & 1) == 0 && v105)
        {
          objc_msgSend_points(v105, v138, v139, v140, v141, v142);
          v148 = __p;
          if (*&__p.x)
          {
            __p.y = __p.x;
            operator delete(*&__p.x);
          }

          if (*&v148.y != *&v148.x)
          {
            v556 = objc_msgSend_principalPoints(v105, v143, v144, v145, v146, v147);
            v153 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v149, 5, v150, v151, v152);
            v159 = objc_msgSend_array(MEMORY[0x1E695DF70], v154, v155, v156, v157, v158);
            objc_msgSend_addObject_(v153, v160, v159, v161, v162, v163);

            v169 = objc_msgSend_array(MEMORY[0x1E695DF70], v164, v165, v166, v167, v168);
            objc_msgSend_addObject_(v153, v170, v169, v171, v172, v173);

            v179 = objc_msgSend_array(MEMORY[0x1E695DF70], v174, v175, v176, v177, v178);
            objc_msgSend_addObject_(v153, v180, v179, v181, v182, v183);

            v189 = objc_msgSend_array(MEMORY[0x1E695DF70], v184, v185, v186, v187, v188);
            objc_msgSend_addObject_(v153, v190, v189, v191, v192, v193);

            v199 = objc_msgSend_array(MEMORY[0x1E695DF70], v194, v195, v196, v197, v198);
            objc_msgSend_addObject_(v153, v200, v199, v201, v202, v203);

            v597 = 0u;
            v598 = 0u;
            v595 = 0u;
            v596 = 0u;
            v564 = v556;
            v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(v564, v204, &v595, &__p, 16, v205);
            if (v206)
            {
              v567 = *v596;
              do
              {
                v566 = v206;
                for (i = 0; i != v566; ++i)
                {
                  if (*v596 != v567)
                  {
                    objc_enumerationMutation(v564);
                  }

                  v213 = 0;
                  v214 = *(*(&v595 + 1) + 8 * i);
                  while (v213 < objc_msgSend_count(v214, v207, v208, v209, v210, v211))
                  {
                    v215 = objc_msgSend_objectAtIndexedSubscript_(v214, v207, v213, v209, v210, v211);
                    v593 = 0u;
                    v594 = 0u;
                    v591 = 0u;
                    v592 = 0u;
                    v216 = v215;
                    v223 = objc_msgSend_countByEnumeratingWithState_objects_count_(v216, v217, &v591, v601, 16, v218);
                    if (v223)
                    {
                      v224 = *v592;
                      do
                      {
                        for (j = 0; j != v223; ++j)
                        {
                          if (*v592 != v224)
                          {
                            objc_enumerationMutation(v216);
                          }

                          v226 = *(*(&v591 + 1) + 8 * j);
                          v227 = objc_msgSend_objectAtIndexedSubscript_(v153, v219, v213, v220, v221, v222);
                          objc_msgSend_addObject_(v227, v228, v226, v229, v230, v231);
                        }

                        v223 = objc_msgSend_countByEnumeratingWithState_objects_count_(v216, v219, &v591, v601, 16, v222);
                      }

                      while (v223);
                    }

                    ++v213;
                  }
                }

                v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(v564, v207, &v595, &__p, 16, v211);
              }

              while (v206);
            }

            v241 = v565;
            if (objc_msgSend_count(v153, v232, v233, v234, v235, v236) == 5)
            {
              v242 = objc_msgSend_objectAtIndexedSubscript_(v153, v237, 1, v238, v239, v240);
              v252 = objc_msgSend_count(v242, v243, v244, v245, v246, v247);
              if (v252 || (objc_msgSend_objectAtIndexedSubscript_(v153, v248, 4, v249, v250, v251), v555 = objc_claimAutoreleasedReturnValue(), objc_msgSend_count(v555, v253, v254, v255, v256, v257)))
              {
                v258 = objc_msgSend_objectAtIndexedSubscript_(v153, v248, 2, v249, v250, v251);
                if (objc_msgSend_count(v258, v259, v260, v261, v262, v263))
                {

                  if (!v252)
                  {
                  }

                  goto LABEL_65;
                }

                v272 = objc_msgSend_objectAtIndexedSubscript_(v153, v264, 3, v265, v266, v267);
                v278 = objc_msgSend_count(v272, v273, v274, v275, v276, v277);

                if (!v252)
                {
                }

                if (v278)
                {
LABEL_65:
                  v279 = objc_msgSend_objectAtIndexedSubscript_(v153, v268, 3, v269, v270, v271);
                  v599[0] = v279;
                  v284 = objc_msgSend_objectAtIndexedSubscript_(v153, v280, 2, v281, v282, v283);
                  v599[1] = v284;
                  v289 = objc_msgSend_objectAtIndexedSubscript_(v153, v285, 1, v286, v287, v288);
                  v599[2] = v289;
                  v294 = objc_msgSend_objectAtIndexedSubscript_(v153, v290, 4, v291, v292, v293);
                  v599[3] = v294;
                  v298 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v295, v599, 4, v296, v297);

LABEL_75:
                  v336 = objc_opt_class();
                  objc_msgSend_orientation(v565, v337, v338, v339, v340, v341);
                  v346 = objc_msgSend_principalLineInterceptsForPrincipalPoints_orientation_(v336, v342, v298, v343, v344, v345);
                  v351 = objc_msgSend_objectAtIndexedSubscript_(v346, v347, 0, v348, v349, v350);
                  objc_msgSend_addObjectsFromArray_(v559, v352, v351, v353, v354, v355);

                  v360 = objc_msgSend_objectAtIndexedSubscript_(v346, v356, 1, v357, v358, v359);
                  objc_msgSend_addObjectsFromArray_(v558, v361, v360, v362, v363, v364);

                  v369 = objc_msgSend_objectAtIndexedSubscript_(v346, v365, 2, v366, v367, v368);
                  objc_msgSend_addObjectsFromArray_(v557, v370, v369, v371, v372, v373);

                  v378 = objc_msgSend_objectAtIndexedSubscript_(v346, v374, 3, v375, v376, v377);
                  objc_msgSend_addObjectsFromArray_(v560, v379, v378, v380, v381, v382);

                  v387 = objc_msgSend_objectAtIndexedSubscript_(v346, v383, 0, v384, v385, v386);
                  v577[0] = MEMORY[0x1E69E9820];
                  v577[1] = 3221225472;
                  v577[2] = sub_183747E30;
                  v577[3] = &unk_1E6DDD390;
                  v388 = v558;
                  v578 = v388;
                  v393 = objc_msgSend_indexesOfObjectsPassingTest_(v387, v389, v577, v390, v391, v392);

                  v398 = objc_msgSend_objectAtIndexedSubscript_(v346, v394, 0, v395, v396, v397);
                  v403 = objc_msgSend_objectsAtIndexes_(v398, v399, v393, v400, v401, v402);
                  objc_msgSend_addObjectsFromArray_(v388, v404, v403, v405, v406, v407);

                  goto LABEL_76;
                }
              }

              else
              {
              }

              v241 = v565;
            }

            v299 = objc_opt_class();
            v279 = objc_msgSend_textStrokes(v241, v300, v301, v302, v303, v304);
            objc_msgSend_strokePoints(v241, v305, v306, v307, v308, v309);
            objc_msgSend_orientation(v241, v310, v311, v312, v313, v314);
            v316 = v315;
            v322 = objc_msgSend_firstObject(v558, v317, v318, v319, v320, v321);
            objc_msgSend_floatValue(v322, v323, v324, v325, v326, v327);
            v298 = objc_msgSend_principalLinePointsForString_skipAmbiguousCharacters_strokes_strokePoints_orientation_medianFallbackThreshold_(v299, v329, v571, v568, v279, &__p, v316, v328);

            x = __p.x;
            if (*&__p.x)
            {
              y = __p.y;
              v332 = __p.x;
              if (*&__p.y != *&__p.x)
              {
                v333 = __p.y;
                do
                {
                  v335 = *(*&v333 - 24);
                  *&v333 -= 24;
                  v334 = v335;
                  if (v335)
                  {
                    *(*&y - 16) = v334;
                    operator delete(v334);
                  }

                  y = v333;
                }

                while (*&v333 != *&x);
                v332 = __p.x;
              }

              __p.y = x;
              operator delete(*&v332);
            }

            goto LABEL_75;
          }
        }

LABEL_76:

        ++v569;
      }

      while (v569 != v562);
      v562 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v408, &v579, &v600, 16, v409);
    }

    while (v562);
  }

  if (objc_msgSend_count(v559, v410, v411, v412, v413, v414) >= 2)
  {
    objc_msgSend_removeObjectAtIndex_(v559, v415, 0, v417, v418, v419);
  }

  if (objc_msgSend_count(v560, v415, v416, v417, v418, v419) >= 2)
  {
    objc_msgSend_removeObjectAtIndex_(v560, v420, 0, v421, v422, v423);
  }

  v424 = objc_msgSend_valueForKeyPath_(v559, v420, @"@avg.floatValue", v421, v422, v423);
  objc_msgSend_floatValue(v424, v425, v426, v427, v428, v429);
  v431 = v430;

  v436 = objc_msgSend_valueForKeyPath_(v558, v432, @"@avg.floatValue", v433, v434, v435);
  objc_msgSend_floatValue(v436, v437, v438, v439, v440, v441);
  v443 = v442;

  v448 = objc_msgSend_valueForKeyPath_(v557, v444, @"@avg.floatValue", v445, v446, v447);
  objc_msgSend_floatValue(v448, v449, v450, v451, v452, v453);
  v455 = v454;

  v460 = objc_msgSend_valueForKeyPath_(v560, v456, @"@avg.floatValue", v457, v458, v459);
  objc_msgSend_floatValue(v460, v461, v462, v463, v464, v465);
  v467 = v466;

  v478 = v431;
  v479 = v443;
  if (objc_msgSend_count(v559, v468, v469, v470, v471, v472) == 1 && objc_msgSend_count(v558, v473, v474, v475, v476, v477) >= 2)
  {
    v480 = objc_msgSend_firstObject(v558, v473, v474, v475, v476, v477);
    objc_msgSend_floatValue(v480, v481, v482, v483, v484, v485);
    v487 = v486;
    v493 = objc_msgSend_firstObject(v559, v488, v489, v490, v491, v492);
    objc_msgSend_floatValue(v493, v494, v495, v496, v497, v498);
    v500 = v499;

    v501 = (v487 - v500);
    v479 = v443;
    v478 = v443 - v501;
  }

  v507 = v455;
  v508 = v467;
  if (objc_msgSend_count(v560, v473, v474, v475, v476, v477) == 1 && objc_msgSend_count(v557, v502, v503, v504, v505, v506) >= 2)
  {
    v509 = objc_msgSend_firstObject(v560, v502, v503, v504, v505, v506);
    objc_msgSend_floatValue(v509, v510, v511, v512, v513, v514);
    v516 = v515;
    v522 = objc_msgSend_firstObject(v557, v517, v518, v519, v520, v521);
    objc_msgSend_floatValue(v522, v523, v524, v525, v526, v527);
    v529 = v528;

    v508 = v507 + (v516 - v529);
  }

  v530 = (v507 - v479) * 0.5;
  if (v478 <= v479)
  {
    v531 = v478;
  }

  else
  {
    v531 = v479 - v530;
  }

  v532 = v530 + v507;
  if (v508 >= v507)
  {
    v533 = v508;
  }

  else
  {
    v533 = v532;
  }

  v534 = vabdd_f64(v533, v531);
  v535 = vabdd_f64(v507, v479);
  v570 = v533;
  if (v535 / v534 >= 0.15)
  {
    v574 = v455;
  }

  else
  {
    v536 = -(v535 - v534 * 0.15) * 0.5;
    if (v455 > v443 || v28 == 0.0)
    {
      v574 = v536 + v507;
      v479 = v479 - v536;
    }

    else
    {
      v574 = v507 - v536;
      v479 = v536 + v479;
    }
  }

  v542 = vabdd_f64(v574, v531);
  v543 = sqrt(v28 * v28 + 1.0);
  v544 = sqrt((*(&v585 + 1) - *(&v586 + 1)) * (*(&v585 + 1) - *(&v586 + 1)) + (*&v585 - *&v586) * (*&v585 - *&v586));
  if (v544 / (v542 / v543 * objc_msgSend_countCharacters(v576, v502, v503, v504, v505, v506)) <= 4.0)
  {
    v546 = v570;
    v547 = v479;
  }

  else
  {
    v545 = (v543 * (v544 / objc_msgSend_countCharacters(v576, v537, v538, v539, v540, v541) * 0.5) - v542) * 0.5;
    v546 = v570 + v545;
    v547 = v479 - v545;
    v531 = v531 + v545 * -2.0;
  }

  v548 = -v28;
  v549 = *&v589;
  v550 = *&v590;
  if (*&v589 == *&v590)
  {
    v550 = *&v590 + 0.01;
  }

  *&retstr->var3.var0.x = v589;
  retstr->var3.var0.y = v531 + v549 * v548;
  retstr->var3.var1.x = v550;
  retstr->var3.var1.y = v531 + v550 * v548;
  retstr->var2.var0.x = v549;
  retstr->var2.var0.y = v547 + v549 * v548;
  retstr->var2.var1.x = v550;
  retstr->var2.var1.y = v547 + v550 * v548;
  retstr->var1.var0.x = v549;
  retstr->var1.var0.y = v574 + v549 * v548;
  retstr->var1.var1.x = v550;
  retstr->var1.var1.y = v574 + v550 * v548;
  retstr->var0.var0.x = v549;
  retstr->var0.var0.y = v546 + v549 * v548;
  retstr->var0.var1.x = v550;
  retstr->var0.var1.y = v546 + v550 * v548;
  objc_msgSend_points(stringCopy, v537, v538, v539, v540, v541);
  sub_1838CD8C4(&retstr->var0.var0.x, v601, &__p.x);
  v551 = v607;
  retstr->var2.var0 = v606;
  retstr->var2.var1 = v551;
  v552 = v609;
  retstr->var3.var0 = v608;
  retstr->var3.var1 = v552;
  v553 = v603;
  retstr->var0.var0 = __p;
  retstr->var0.var1 = v553;
  v554 = v605;
  retstr->var1.var0 = v604;
  retstr->var1.var1 = v554;
  if (v601[0])
  {
    v601[1] = v601[0];
    operator delete(v601[0]);
  }

LABEL_25:
  return result;
}

+ (double)textLineFitScore:(id)score useAltString:(BOOL)string
{
  stringCopy = string;
  v62 = *MEMORY[0x1E69E9840];
  scoreCopy = score;
  objc_msgSend_splitIntoTokens(scoreCopy, v5, v6, v7, v8, v9);
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v10 = v58 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v57, v61, 16, v12);
  if (v13)
  {
    v14 = *v58;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v58 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v57 + 1) + 8 * i);
        v18 = objc_opt_class();
        v24 = objc_msgSend_string(v17, v19, v20, v21, v22, v23);
        v28 = objc_msgSend_stringForRendering_useAltChars_(v18, v25, v24, stringCopy, v26, v27);

        v34 = objc_opt_class();
        if (v17)
        {
          objc_msgSend_principalLines(v17, v29, v30, v31, v32, v33);
          objc_msgSend_points(v17, v35, v36, v37, v38, v39);
        }

        else
        {
          memset(v56, 0, sizeof(v56));
          __p = 0;
          v54 = 0;
          v55 = 0;
        }

        objc_msgSend_principalLinesFitScore_points_transcription_(v34, v29, v56, &__p, v28, v33);
        v41 = v40;
        if (__p)
        {
          v54 = __p;
          operator delete(__p);
        }

        v15 = v15 + v41;
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v42, &v57, v61, 16, v43);
    }

    while (v13);
  }

  else
  {
    v15 = 0.0;
  }

  objc_msgSend_lineHeight(scoreCopy, v44, v45, v46, v47, v48);
  v50 = v49;

  return v15 / v50;
}

+ (double)principalLinesFitScore:(id *)score points:(const void *)points transcription:(id)transcription
{
  transcriptionCopy = transcription;
  x = score->var0.var0.x;
  y = score->var0.var0.y;
  v15 = score->var1.var0.x;
  v16 = score->var2.var0.x;
  v17 = score->var3.var0.x;
  v18 = *MEMORY[0x1E695EFF8];
  v19 = *(MEMORY[0x1E695EFF8] + 8);
  if (score->var0.var0.x == *MEMORY[0x1E695EFF8] && y == v19)
  {
    x = score->var1.var0.y;
    y = score->var1.var1.x;
    v21 = score->var0.var1.x == v18 && score->var0.var1.y == v19;
    v22 = v21 && v15 == v18;
    v23 = v22 && x == v19;
    v24 = v23 && y == v18;
    v25 = v24 && score->var1.var1.y == v19;
    v26 = v25 && v16 == v18;
    v27 = v26 && score->var2.var0.y == v19;
    v28 = v27 && score->var2.var1.x == v18;
    v29 = v28 && score->var2.var1.y == v19;
    v30 = v29 && v17 == v18;
    v31 = v30 && score->var3.var0.y == v19;
    v32 = v31 && score->var3.var1.x == v18;
    if (v32 && score->var3.var1.y == v19)
    {
      v57 = 1.79769313e308;
      goto LABEL_82;
    }
  }

  v34 = objc_msgSend_ch_smallCharacterSet(MEMORY[0x1E696AB08], v7, v8, v9, v10, v11, v17, v18, v19, v16, v15, x, y);
  v39 = objc_msgSend_indexesOfCharacters_(transcriptionCopy, v35, v34, v36, v37, v38);
  v45 = objc_msgSend_count(v39, v40, v41, v42, v43, v44);
  v51 = objc_msgSend_length(transcriptionCopy, v46, v47, v48, v49, v50);

  v57 = 0.0;
  if (v45 != v51)
  {
    var1 = score->var2.var1;
    var0 = score->var2.var0;
    v125 = var1;
    v59 = score->var1.var1;
    v122 = score->var1.var0;
    v123 = v59;
    v60 = objc_msgSend_ascendersCount(transcriptionCopy, v52, v53, v54, v55, v56);
    if (objc_msgSend_countCharacters(transcriptionCopy, v61, v62, v63, v64, v65) <= v60)
    {
      v66 = score->var3.var1;
      var0 = score->var3.var0;
      v125 = v66;
    }

    v67 = atan2(score->var1.var1.y - score->var1.var0.y, score->var1.var1.x - score->var1.var0.x);
    v68 = tan(v67);
    v74 = objc_msgSend_countCharacters(transcriptionCopy, v69, v70, v71, v72, v73);
    v80 = v74;
    if (v74)
    {
      v81 = 0;
      v82 = v122.y - v122.x * v68;
      v83 = (v123.x - v122.x) / v74;
      do
      {
        v84 = v122.x + v81++ * v83;
        sub_1838C3B48(points, &v120, v68, v84, v82 + v84 * v68, v122.x + v81 * v83, v82 + (v122.x + v81 * v83) * v68);
        v85 = v120;
        if (v121 != v120)
        {
          sub_1838C455C(&v120, &var0.x);
          v87 = v86;
          sub_1838C455C(&v120, &v122.x);
          v57 = v57 + v87 * v87 + v88 * v88;
          v85 = v120;
          if (!v120)
          {
            continue;
          }

LABEL_68:
          v121 = v85;
          operator delete(v85);
          continue;
        }

        v89 = score->var0.var0.x;
        v90 = score->var0.var0.y;
        v91 = score->var3.var0.x;
        v92 = score->var3.var0.y;
        if (score->var0.var0.x == v91 && v90 == v92)
        {
          v94 = score->var0.var1.x;
          v95 = score->var0.var1.y;
          v96 = score->var3.var1.x;
          v97 = score->var3.var1.y;
          v98 = 0.0;
          if (v94 == v96 && v95 == v97)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v94 = score->var0.var1.x;
          v95 = score->var0.var1.y;
          v96 = score->var3.var1.x;
          v97 = score->var3.var1.y;
        }

        v100 = (v95 - v90) / (v94 - v89);
        v101 = (v97 - v92) / (v96 - v91);
        v102 = v92 - v101 * v91;
        v103 = score->var0.var0.x;
        if (v100 != 0.0)
        {
          v103 = (v90 - -1.0 / v100 * v89 - v102) / (v101 - -1.0 / v100);
        }

        v98 = sqrt((v90 - (v102 + v101 * v103)) * (v90 - (v102 + v101 * v103)) + (v89 - v103) * (v89 - v103));
LABEL_67:
        v57 = v57 + v98 * v98 * 2.0;
        if (v120)
        {
          goto LABEL_68;
        }
      }

      while (v80 != v81);
    }

    hasAscender = objc_msgSend_hasAscender(transcriptionCopy, v75, v76, v77, v78, v79);
    hasDescender = objc_msgSend_hasDescender(transcriptionCopy, v105, v106, v107, v108, v109);
    v111 = *(points + 1) - *points;
    if (v111)
    {
      v112 = v111 >> 4;
      if (v112 <= 1)
      {
        v112 = 1;
      }

      v113 = (*points + 8);
      v114 = 1.79769313e308;
      v115 = -1.79769313e308;
      do
      {
        v116 = *v113 - *(v113 - 1) * v68;
        if (v116 <= v114)
        {
          v114 = *v113 - *(v113 - 1) * v68;
        }

        if (v116 >= v115)
        {
          v115 = *v113 - *(v113 - 1) * v68;
        }

        v113 += 2;
        --v112;
      }

      while (v112);
      if (hasAscender)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v115 = -1.79769313e308;
      v114 = 1.79769313e308;
      if (hasAscender)
      {
LABEL_80:
        if ((hasDescender & 1) == 0)
        {
          v118 = score->var1.var0.y - score->var1.var0.x * v68 - v115;
          v57 = v57 + v118 * v118;
        }

        goto LABEL_82;
      }
    }

    v117 = score->var2.var0.y - score->var2.var0.x * v68 - v114;
    v57 = v57 + v117 * v117;
    goto LABEL_80;
  }

LABEL_82:

  return v57;
}

+ (id)principalLinePointsForString:(id)string skipAmbiguousCharacters:(BOOL)characters strokes:(id)strokes strokePoints:(const void *)points orientation:(double)orientation medianFallbackThreshold:(double)threshold
{
  charactersCopy = characters;
  v311[4] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  strokesCopy = strokes;
  v15 = objc_msgSend_array(MEMORY[0x1E695DF70], v10, v11, v12, v13, v14);
  v311[0] = v15;
  v21 = objc_msgSend_array(MEMORY[0x1E695DF70], v16, v17, v18, v19, v20);
  v311[1] = v21;
  v27 = objc_msgSend_array(MEMORY[0x1E695DF70], v22, v23, v24, v25, v26);
  v311[2] = v27;
  v33 = objc_msgSend_array(MEMORY[0x1E695DF70], v28, v29, v30, v31, v32);
  v311[3] = v33;
  v297 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v34, v311, 4, v35, v36);

  v292 = objc_msgSend_array(MEMORY[0x1E695DF70], v37, v38, v39, v40, v41);
  v42 = tan(orientation);
  v48 = objc_msgSend_countCharacters(stringCopy, v43, v44, v45, v46, v47);
  v308 = 0;
  __dst = 0;
  v310 = 0;
  v49 = *points;
  if (*(points + 1) == *points)
  {
    v52 = 0;
    v53 = 0;
LABEL_26:
    v56 = 1.79769313e308;
    v57 = -1.79769313e308;
    v54 = -1.79769313e308;
    v55 = 1.79769313e308;
    v58 = -1.79769313e308;
    v59 = 1.79769313e308;
    goto LABEL_27;
  }

  v50 = 0;
  v51 = 0;
  do
  {
    sub_18374A63C(&v308, __dst, *(v49 + v50), *(v49 + v50 + 8), (*(v49 + v50 + 8) - *(v49 + v50)) >> 4);
    ++v51;
    v49 = *points;
    v50 += 24;
  }

  while (v51 < 0xAAAAAAAAAAAAAAABLL * ((*(points + 1) - *points) >> 3));
  v52 = v308;
  v53 = __dst;
  if (v308 == __dst)
  {
    goto LABEL_26;
  }

  v54 = -1.79769313e308;
  v55 = 1.79769313e308;
  v56 = 1.79769313e308;
  v57 = -1.79769313e308;
  v58 = -1.79769313e308;
  v59 = 1.79769313e308;
  v60 = -1.79769313e308;
  v61 = 1.79769313e308;
  v62 = v308;
  do
  {
    v63 = *v62;
    v64 = v62[1];
    v62 += 2;
    if (v61 > v63)
    {
      v55 = v63;
      v61 = v63;
    }

    if (v60 < v63)
    {
      v54 = v63;
      v60 = v63;
    }

    if (v59 > v64)
    {
      v56 = v64;
      v59 = v64;
    }

    if (v58 < v64)
    {
      v57 = v64;
      v58 = v64;
    }
  }

  while (v62 != __dst);
  if (v42 != 0.0)
  {
    v65 = (__dst - v308) >> 4;
    if (v65 <= 1)
    {
      v65 = 1;
    }

    v66 = v308 + 1;
    v59 = 1.79769313e308;
    v58 = -1.79769313e308;
    v67 = 1.0 / v42;
    do
    {
      v68 = *v66 - *(v66 - 1) * v67;
      if (v68 <= v59)
      {
        v59 = *v66 - *(v66 - 1) * v67;
      }

      if (v68 >= v58)
      {
        v58 = *v66 - *(v66 - 1) * v67;
      }

      v66 += 2;
      --v65;
    }

    while (v65);
    v52 = v308;
  }

LABEL_27:
  v299 = -v42;
  v69 = v54;
  v70 = v57;
  v71 = v56;
  if (v42 != 0.0)
  {
    v72 = 1.0 / v42;
    v73 = v42 + 1.0 / v42;
    if (v59 * v299 >= v58 * v299)
    {
      v71 = v58 + v55 * v72;
      v75 = v71 + v42 * v55;
      v69 = (v75 - v59) / v73;
      v70 = v75 + v69 * v299;
    }

    else
    {
      v71 = v59 + v55 * v72;
      v74 = v71 + v42 * v55;
      v69 = (v74 - v58) / v73;
      v70 = v74 + v69 * v299;
    }
  }

  v286 = v52;
  v298 = fmin(v54 - v55, v57 - v56) / 5.0;
  sub_1838C36D8(strokesCopy, points, &v306, orientation, v298, v298, v55, v71, v69, v70);
  v83 = v306;
  if (v307 == v306)
  {
    sub_18374AA38(&v306, v286, v53, (v53 - v286) >> 4);
    v83 = v306;
    v84 = v307 - v306;
    if (v307 != v306)
    {
      goto LABEL_33;
    }

LABEL_43:
    v90 = 0.0;
    v89 = 0.0;
    v88 = 0.0;
    v87 = 0.0;
    goto LABEL_44;
  }

  v84 = v307 - v306;
  if (v307 == v306)
  {
    goto LABEL_43;
  }

LABEL_33:
  v85 = v84 >> 4;
  if (v85 <= 1)
  {
    v85 = 1;
  }

  v86 = (v83 + 8);
  v87 = 0.0;
  v81 = 1.79769313e308;
  v82 = -1.79769313e308;
  v88 = 0.0;
  v89 = 0.0;
  v90 = 0.0;
  do
  {
    v91 = *(v86 - 1);
    v92 = *v86 + v91 * v42;
    if (v92 <= v81)
    {
      v90 = *(v86 - 1);
      v89 = *v86;
      v81 = *v86 + v91 * v42;
    }

    if (v92 >= v82)
    {
      v82 = *v86 + v91 * v42;
      v88 = *v86;
      v87 = *(v86 - 1);
    }

    v86 += 2;
    --v85;
  }

  while (v85);
LABEL_44:
  hasAscender = objc_msgSend_hasAscender(stringCopy, v76, v77, v78, v79, v80, v81, v82, v286);
  hasDescender = objc_msgSend_hasDescender(stringCopy, v94, v95, v96, v97, v98);
  hasMaxHeightOfXHeight = objc_msgSend_hasMaxHeightOfXHeight(stringCopy, v100, v101, v102, v103, v104);
  if (charactersCopy)
  {
    hasAmbiguousCharacter = objc_msgSend_hasAmbiguousCharacter(stringCopy, v105, v106, v107, v108, v109);
    v112 = v88 + v87 * v42;
    v113 = v89 + v90 * v42;
    if ((hasDescender & hasAscender) != 1)
    {
      goto LABEL_46;
    }

LABEL_51:
    v115 = v113;
    v129 = ceil((v112 - v113) * 0.125);
    v114 = (v113 + v129 + 1.0);
    v116 = (v112 - v129);
    v117 = (v112 + 1.0);
    if (!hasAscender)
    {
LABEL_48:
      if (((v48 < 3) & hasMaxHeightOfXHeight) != 1)
      {
        goto LABEL_57;
      }

      goto LABEL_49;
    }

LABEL_55:
    v118 = objc_msgSend_objectAtIndexedSubscript_(v297, v105, 0, v107, v108, v109);
    v124 = sub_1837A9A94(v90, v89, v118, v130, v131, v132, v133, v134);
    objc_msgSend_addObject_(v118, v135, v124, v136, v137, v138);
    goto LABEL_56;
  }

  hasAmbiguousCharacter = 0;
  v112 = v88 + v87 * v42;
  v113 = v89 + v90 * v42;
  if ((hasDescender & hasAscender) == 1)
  {
    goto LABEL_51;
  }

LABEL_46:
  if (hasDescender)
  {
    v114 = 0;
    v115 = 0;
    v116 = (v112 - ceil((v112 - v113) * 0.25));
    v117 = (v112 + 1.0);
    if (!hasAscender)
    {
      goto LABEL_48;
    }

    goto LABEL_55;
  }

  v116 = 0;
  v117 = 0;
  if (hasAscender)
  {
    v115 = v113;
    v114 = (v113 + ceil((v112 - v113) * 0.25) + 1.0);
    goto LABEL_55;
  }

  v115 = 0;
  v114 = 0;
  if (((v48 < 3) & hasMaxHeightOfXHeight) == 1)
  {
LABEL_49:
    v118 = objc_msgSend_objectAtIndexedSubscript_(v297, v105, 1, v107, v108, v109);
    v124 = sub_1837A9A94(v90, v89, v118, v119, v120, v121, v122, v123);
    objc_msgSend_addObject_(v118, v125, v124, v126, v127, v128);
LABEL_56:
  }

LABEL_57:
  if (hasDescender)
  {
    v139 = objc_msgSend_objectAtIndexedSubscript_(v297, v105, 3, v107, v108, v109);
    v145 = sub_1837A9A94(v87, v88, v139, v140, v141, v142, v143, v144);
    objc_msgSend_addObject_(v139, v146, v145, v147, v148, v149);
  }

  else if (!((v48 > 2) | hasAmbiguousCharacter & 1))
  {
    v257 = objc_msgSend_objectAtIndexedSubscript_(v297, v105, 2, v107, v108, v109);
    v263 = sub_1837A9A94(v87, v88, v257, v258, v259, v260, v261, v262);
    objc_msgSend_addObject_(v257, v264, v263, v265, v266, v267);

    goto LABEL_108;
  }

  if (v48 >= 3)
  {
    v150 = v115;
    v151 = 0;
    v152 = v71 + v55 * v42;
    v153 = (v69 - v55) / v48;
    v294 = v48 - 1;
    v296 = (v48 - 1);
    v290 = v114;
    v291 = v150;
    v295 = v48 - 2;
    v288 = v117;
    v289 = v116;
    while (1)
    {
      v157 = objc_autoreleasePoolPush();
      if (v151)
      {
        v158 = v151 - 1;
      }

      else
      {
        v158 = 0;
      }

      v159 = objc_msgSend_substringWithComposedCharacterRange_(stringCopy, v154, v158, fmin(v296, (v151 + 2)) - v158 + 1, v155, v156);
      v165 = objc_msgSend_countCharacters(v159, v160, v161, v162, v163, v164);
      v171 = objc_msgSend_ascendersCount(v159, v166, v167, v168, v169, v170);
      v177 = objc_msgSend_hasAscender(v159, v172, v173, v174, v175, v176);
      v183 = objc_msgSend_hasDescender(v159, v178, v179, v180, v181, v182);
      v194 = objc_msgSend_hasMaxHeightOfXHeight(v159, v184, v185, v186, v187, v188);
      if (charactersCopy)
      {
        v195 = objc_msgSend_hasAmbiguousCharacter(v159, v189, v190, v191, v192, v193);
      }

      else
      {
        v195 = 0;
      }

      v196 = v151 + 0.05;
      if (!v151)
      {
        v196 = 0.0;
      }

      v197 = v151 == v295 || v151 == 0;
      v198 = v55 + v196 * v153;
      v199 = 1.9;
      if (v197)
      {
        v199 = 1.95;
      }

      sub_1838C36D8(strokesCopy, points, &__p, orientation, v298, v298, v198, v152 + v198 * v299, v198 + v153 * v199, v152 + (v198 + v153 * v199) * v299);
      v205 = __p;
      if (v305 == __p)
      {
        goto LABEL_103;
      }

      v206 = (v305 - __p) >> 4;
      if (v206 <= 1)
      {
        v206 = 1;
      }

      v207 = (__p + 8);
      v208 = 0.0;
      v209 = 1.79769313e308;
      v210 = -1.79769313e308;
      v211 = 0.0;
      v212 = 0.0;
      v213 = 0.0;
      do
      {
        v214 = *(v207 - 1);
        v215 = *v207 + v214 * v42;
        if (v215 <= v209)
        {
          v213 = *(v207 - 1);
          v212 = *v207;
          v209 = *v207 + v214 * v42;
        }

        if (v215 >= v210)
        {
          v210 = *v207 + v214 * v42;
          v211 = *v207;
          v208 = *(v207 - 1);
        }

        v207 += 2;
        --v206;
      }

      while (v206);
      if (v171 / v165 >= 0.66)
      {
        v216 = objc_msgSend_objectAtIndexedSubscript_(v297, v200, 0, v202, v203, v204);
        v222 = sub_1837A9A94(v213, v212, v216, v217, v218, v219, v220, v221);
        objc_msgSend_addObject_(v216, v223, v222, v224, v225, v226);
      }

      v227 = v212 + v213 * v42;
      if (!(v177 & 1 | ((v194 & 1) == 0)) && (v227 < v291 || v227 >= v290))
      {
        break;
      }

      if (threshold != 0.0 && v227 > threshold)
      {
        v229 = sub_1837A9A94(v213, v212, v205, v200, v201, v202, v203, v204);
        objc_msgSend_addObject_(v292, v240, v229, v241, v242, v243);
        goto LABEL_95;
      }

LABEL_96:
      if (((v183 | v195) & 1) == 0)
      {
        v244 = v211 + v208 * v42;
        if (v244 < v289 || v244 >= v288)
        {
          v246 = objc_msgSend_objectAtIndexedSubscript_(v297, v200, 2, v202, v203, v204);
          v252 = sub_1837A9A94(v208, v211, v246, v247, v248, v249, v250, v251);
          objc_msgSend_addObject_(v246, v253, v252, v254, v255, v256);
        }
      }

      v205 = __p;
LABEL_103:
      if (v205)
      {
        v305 = v205;
        operator delete(v205);
      }

      objc_autoreleasePoolPop(v157);
      if (++v151 == v294)
      {
        goto LABEL_108;
      }
    }

    v229 = objc_msgSend_objectAtIndexedSubscript_(v297, v200, 1, v202, v203, v204);
    v235 = sub_1837A9A94(v213, v212, v229, v230, v231, v232, v233, v234);
    objc_msgSend_addObject_(v229, v236, v235, v237, v238, v239);

LABEL_95:
    goto LABEL_96;
  }

LABEL_108:
  v268 = objc_msgSend_objectAtIndexedSubscript_(v297, v105, 1, v107, v108, v109);
  v274 = objc_msgSend_count(v268, v269, v270, v271, v272, v273) == 0;

  if (v274)
  {
    v279 = objc_msgSend_objectAtIndexedSubscript_(v297, v275, 1, v276, v277, v278);
    objc_msgSend_addObjectsFromArray_(v279, v280, v292, v281, v282, v283);
  }

  v284 = v297;
  if (v306)
  {
    v307 = v306;
    operator delete(v306);
  }

  if (v287)
  {
    __dst = v287;
    operator delete(v287);
  }

  return v284;
}

+ (id)principalLineInterceptsForString:(id)string skipAmbiguousCharacters:(BOOL)characters strokes:(id)strokes strokePoints:(const void *)points orientation:(double)orientation medianFallbackThreshold:(double)threshold
{
  charactersCopy = characters;
  v90[4] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  strokesCopy = strokes;
  v18 = objc_msgSend_array(MEMORY[0x1E695DF70], v13, v14, v15, v16, v17);
  v90[0] = v18;
  v24 = objc_msgSend_array(MEMORY[0x1E695DF70], v19, v20, v21, v22, v23);
  v90[1] = v24;
  v30 = objc_msgSend_array(MEMORY[0x1E695DF70], v25, v26, v27, v28, v29);
  v90[2] = v30;
  v36 = objc_msgSend_array(MEMORY[0x1E695DF70], v31, v32, v33, v34, v35);
  v90[3] = v36;
  v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v37, v90, 4, v38, v39);

  v41 = tan(orientation);
  v42 = objc_opt_class();
  v83 = objc_msgSend_principalLinePointsForString_skipAmbiguousCharacters_strokes_strokePoints_orientation_medianFallbackThreshold_(v42, v43, stringCopy, charactersCopy, strokesCopy, points, orientation, threshold);
  v49 = 0;
  v50 = MEMORY[0x1E695EFF8];
LABEL_2:
  if (v49 < objc_msgSend_count(v83, v44, v45, v46, v47, v48))
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v55 = objc_msgSend_objectAtIndexedSubscript_(v83, v51, v49, v52, v53, v54);
    v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v84, v89, 16, v57);
    if (!v58)
    {
      goto LABEL_14;
    }

    v59 = *v85;
    while (1)
    {
      for (i = 0; i != v58; ++i)
      {
        if (*v85 != v59)
        {
          objc_enumerationMutation(v55);
        }

        sub_1837A97C4(*(*(&v84 + 1) + 8 * i), v88);
        if ((v88[1] - v88[0]) == 8)
        {
          v65 = *v88[0];
          v66 = *(v88[0] + 1);
        }

        else
        {
          v65 = *v50;
          v66 = v50[1];
          if (!v88[0])
          {
            goto LABEL_12;
          }
        }

        operator delete(v88[0]);
LABEL_12:
        v67 = objc_msgSend_objectAtIndexedSubscript_(v40, v61, v49, v62, v63, v64);
        v73 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v68, v69, v70, v71, v72, v66 + v65 * v41);
        objc_msgSend_addObject_(v67, v74, v73, v75, v76, v77);
      }

      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v78, &v84, v89, 16, v79);
      if (!v58)
      {
LABEL_14:

        ++v49;
        goto LABEL_2;
      }
    }
  }

  return v40;
}

+ (id)principalLineInterceptsForPrincipalPoints:(id)points orientation:(double)orientation
{
  v78[4] = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  v10 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
  v78[0] = v10;
  v16 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13, v14, v15);
  v78[1] = v16;
  v22 = objc_msgSend_array(MEMORY[0x1E695DF70], v17, v18, v19, v20, v21);
  v78[2] = v22;
  v28 = objc_msgSend_array(MEMORY[0x1E695DF70], v23, v24, v25, v26, v27);
  v78[3] = v28;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v29, v78, 4, v30, v31);

  v38 = tan(orientation);
  v39 = 0;
  v40 = MEMORY[0x1E695EFF8];
LABEL_2:
  if (v39 < objc_msgSend_count(pointsCopy, v33, v34, v35, v36, v37))
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v45 = objc_msgSend_objectAtIndexedSubscript_(pointsCopy, v41, v39, v42, v43, v44);
    v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v72, v77, 16, v47);
    if (!v48)
    {
      goto LABEL_14;
    }

    v49 = *v73;
    while (1)
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v73 != v49)
        {
          objc_enumerationMutation(v45);
        }

        sub_1837A97C4(*(*(&v72 + 1) + 8 * i), v76);
        if ((v76[1] - v76[0]) == 8)
        {
          v55 = *v76[0];
          v56 = *(v76[0] + 1);
        }

        else
        {
          v55 = *v40;
          v56 = v40[1];
          if (!v76[0])
          {
            goto LABEL_12;
          }
        }

        operator delete(v76[0]);
LABEL_12:
        v57 = objc_msgSend_objectAtIndexedSubscript_(v32, v51, v39, v52, v53, v54);
        v63 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v58, v59, v60, v61, v62, v56 + v55 * v38);
        objc_msgSend_addObject_(v57, v64, v63, v65, v66, v67);
      }

      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v68, &v72, v77, 16, v69);
      if (!v48)
      {
LABEL_14:

        ++v39;
        goto LABEL_2;
      }
    }
  }

  return v32;
}

+ (id)charactersForRendering
{
  if (qword_1EA84CE58 == -1)
  {
    v3 = qword_1EA84CE60;
  }

  else
  {
    dispatch_once(&qword_1EA84CE58, &unk_1EF1BC7B0);
    v3 = qword_1EA84CE60;
  }

  return v3;
}

+ (id)stringForRendering:(id)rendering useAltChars:(BOOL)chars
{
  charsCopy = chars;
  v67 = *MEMORY[0x1E69E9840];
  renderingCopy = rendering;
  v6 = objc_opt_class();
  objc_msgSend_charactersForRendering(v6, v7, v8, v9, v10, v11);
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v12 = v62 = 0u;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v61, v66, 16, v14);
  v20 = renderingCopy;
  if (v19)
  {
    v21 = *v62;
    v20 = renderingCopy;
    do
    {
      v22 = 0;
      v23 = v20;
      do
      {
        if (*v62 != v21)
        {
          objc_enumerationMutation(v12);
        }

        v24 = *(*(&v61 + 1) + 8 * v22);
        v25 = objc_msgSend_objectForKeyedSubscript_(v12, v15, v24, v16, v17, v18);
        v20 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v23, v26, v24, v25, v27, v28);

        ++v22;
        v23 = v20;
      }

      while (v19 != v22);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v61, v66, 16, v18);
    }

    while (v19);
  }

  if (charsCopy)
  {
    objc_msgSend_alternativeCharacterForms(MEMORY[0x1E696AEC0], v29, v30, v31, v32, v33);
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v34 = v58 = 0u;
    v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v57, v65, 16, v36);
    if (v41)
    {
      v42 = *v58;
      do
      {
        v43 = 0;
        v44 = v20;
        do
        {
          if (*v58 != v42)
          {
            objc_enumerationMutation(v34);
          }

          v45 = *(*(&v57 + 1) + 8 * v43);
          v46 = objc_msgSend_objectForKeyedSubscript_(v34, v37, v45, v38, v39, v40, v57);
          v20 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v44, v47, v45, v46, v48, v49);

          ++v43;
          v44 = v20;
        }

        while (v41 != v43);
        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v57, v65, 16, v40);
      }

      while (v41);
    }
  }

  v50 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v29, v30, v31, v32, v33, v57);
  v55 = objc_msgSend_stringByTrimmingCharactersInSet_(v20, v51, v50, v52, v53, v54);

  return v55;
}

+ (CGSize)estimatedRenderedTextSize:(id)size fullDeformValue:(double)value ascenderDeformValue:(double)deformValue descenderDeformValue:(double)descenderDeformValue
{
  sizeCopy = size;
  hasDescender = objc_msgSend_hasDescender(sizeCopy, v10, v11, v12, v13, v14);
  hasAscender = objc_msgSend_hasAscender(sizeCopy, v16, v17, v18, v19, v20);
  v22 = sub_1838CBE4C(sizeCopy, 100);
  v23 = value * 52.5;
  if (hasAscender)
  {
    v23 = value * 52.5 + value * 18.5 * deformValue + value * 18.5;
  }

  if (hasDescender)
  {
    v24 = value * 17.0 * descenderDeformValue + value * 17.0 + v23;
  }

  else
  {
    v24 = v23;
  }

  v25 = v22 + -15.0;

  v26 = v25;
  v27 = v24;
  result.height = v27;
  result.width = v26;
  return result;
}

+ (void)getDeformValuesForTextLine:(id)line useAltString:(BOOL)string outfullDeform:(double *)deform outAscenderDeform:(double *)ascenderDeform outDescenderDeform:(double *)descenderDeform
{
  stringCopy = string;
  v341 = *MEMORY[0x1E69E9840];
  lineCopy = line;
  v319 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10, v11, v12);
  v318 = objc_msgSend_array(MEMORY[0x1E695DF70], v13, v14, v15, v16, v17);
  v320 = objc_msgSend_array(MEMORY[0x1E695DF70], v18, v19, v20, v21, v22);
  v28 = objc_msgSend_string(lineCopy, v23, v24, v25, v26, v27);
  v34 = objc_msgSend_string(lineCopy, v29, v30, v31, v32, v33);
  v40 = objc_msgSend_uppercaseString(v34, v35, v36, v37, v38, v39);
  if (objc_msgSend_isEqualToString_(v28, v41, v40, v42, v43, v44))
  {
    v50 = objc_msgSend_string(lineCopy, v45, v46, v47, v48, v49);
    v56 = objc_msgSend_string(lineCopy, v51, v52, v53, v54, v55);
    v62 = objc_msgSend_lowercaseString(v56, v57, v58, v59, v60, v61);
    isEqualToString = objc_msgSend_isEqualToString_(v50, v63, v62, v64, v65, v66);
  }

  else
  {
    isEqualToString = 1;
  }

  v68 = objc_opt_class();
  v74 = objc_msgSend_locale(lineCopy, v69, v70, v71, v72, v73);
  shouldDeformRenderedAscendersDescenders = objc_msgSend_shouldDeformRenderedAscendersDescenders_(v68, v75, v74, v76, v77, v78);

  objc_msgSend_splitIntoTokens(lineCopy, v80, v81, v82, v83, v84);
  v338 = 0u;
  v339 = 0u;
  v336 = 0u;
  obj = v337 = 0u;
  v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v85, &v336, v340, 16, v86);
  if (!v87)
  {
    goto LABEL_48;
  }

  v321 = shouldDeformRenderedAscendersDescenders & isEqualToString;
  v88 = *v337;
  do
  {
    v89 = 0;
    do
    {
      if (*v337 != v88)
      {
        objc_enumerationMutation(obj);
      }

      v90 = *(*(&v336 + 1) + 8 * v89);
      v91 = objc_opt_class();
      v97 = objc_msgSend_string(v90, v92, v93, v94, v95, v96);
      v101 = objc_msgSend_stringForRendering_useAltChars_(v91, v98, v97, stringCopy, v99, v100);

      v107 = objc_msgSend_ch_smallCharacterSet(MEMORY[0x1E696AB08], v102, v103, v104, v105, v106);
      v112 = objc_msgSend_indexesOfCharacters_(v101, v108, v107, v109, v110, v111);
      v118 = objc_msgSend_count(v112, v113, v114, v115, v116, v117);
      LOBYTE(v118) = v118 == objc_msgSend_length(v101, v119, v120, v121, v122, v123);

      if ((v118 & 1) != 0 || !v90)
      {
        goto LABEL_41;
      }

      objc_msgSend_points(v90, v124, v125, v126, v127, v128);
      v134 = v330 - v329;
      if (*&v329 != 0.0)
      {
        v330 = v329;
        operator delete(v329);
      }

      if (v134 < 0x11)
      {
        goto LABEL_41;
      }

      objc_msgSend_orientation(v90, v129, v130, v131, v132, v133);
      v136 = tan(v135);
      objc_msgSend_points(v90, v137, v138, v139, v140, v141);
      v147 = (v330 - v329) >> 4;
      v148 = v147;
      if (v330 != v329)
      {
        if (v147 <= 1)
        {
          v149 = 1;
        }

        else
        {
          v149 = (v330 - v329) >> 4;
        }

        v150 = v329 + 1;
        v151 = 0.0;
        v152 = 1.79769313e308;
        v153 = -1.79769313e308;
        do
        {
          v154 = *v150 + *(v150 - 1) * v136;
          if (v154 <= v152)
          {
            v152 = *v150 + *(v150 - 1) * v136;
          }

          if (v154 >= v153)
          {
            v153 = *v150 + *(v150 - 1) * v136;
          }

          v151 = v151 + v154;
          v150 += 2;
          --v149;
        }

        while (v149);
        v155 = v151 / v148;
LABEL_26:
        v330 = v329;
        operator delete(v329);
        goto LABEL_27;
      }

      v152 = 1.79769313e308;
      v153 = -1.79769313e308;
      v155 = 0.0 / v148;
      if (v330)
      {
        goto LABEL_26;
      }

LABEL_27:
      objc_msgSend_principalLines(v90, v142, v143, v144, v145, v146);
      objc_msgSend_principalLines(v90, v156, v157, v158, v159, v160);
      objc_msgSend_principalLines(v90, v161, v162, v163, v164, v165);
      objc_msgSend_principalLines(v90, v166, v167, v168, v169, v170);
      objc_msgSend_principalLines(v90, v171, v172, v173, v174, v175);
      objc_msgSend_principalLines(v90, v176, v177, v178, v179, v180);
      objc_msgSend_principalLines(v90, v181, v182, v183, v184, v185);
      objc_msgSend_principalLines(v90, v186, v187, v188, v189, v190);
      v196 = v152 + v327 * -v136;
      v197 = v152 + v328 * -v136;
      v198 = v153 + v323 * -v136;
      v199 = v153 + v324 * -v136;
      if (v334 != *&v329 || v196 != v198 || v335 != v331 || (v200 = 1.0e-10, v197 != v199))
      {
        v201 = (v197 - v196) / (v335 - v334);
        v202 = (v199 - v198) / (v331 - *&v329);
        v203 = v198 - v202 * *&v329;
        v204 = v334;
        if (v201 != 0.0)
        {
          v204 = (v196 - -1.0 / v201 * v334 - v203) / (v202 - -1.0 / v201);
        }

        v200 = sqrt((v196 - (v203 + v202 * v204)) * (v196 - (v203 + v202 * v204)) + (v334 - v204) * (v334 - v204)) + 1.0e-10;
      }

      objc_msgSend_principalLines(v90, v191, v192, v193, v194, v195);
      objc_msgSend_principalLines(v90, v205, v206, v207, v208, v209);
      hasDescender = objc_msgSend_hasDescender(v101, v210, v211, v212, v213, v214);
      hasAscender = objc_msgSend_hasAscender(v101, v216, v217, v218, v219, v220);
      v222 = objc_opt_class();
      objc_msgSend_estimatedRenderedTextSize_fullDeformValue_ascenderDeformValue_descenderDeformValue_(v222, v223, v101, v224, v225, v226, 1.0, 0.0, 0.0);
      if (v233 >= 12.0 && v232 >= 12.0)
      {
        v234 = v232 / v233 / (sqrt((v333 - v326) * (v333 - v326) + (v332 - v325) * (v332 - v325)) / v200 + 1.0e-10);
        if ((v321 & 1) == 0)
        {
          v247 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v227, v228, v229, v230, v231, v234);
          objc_msgSend_addObject_(v320, v252, v247, v253, v254, v255);
          goto LABEL_40;
        }

        if ((hasAscender & hasDescender) == 1)
        {
          v235 = v233 * v234 + -52.5;
          v236 = v153 - v155 + v155 - v152;
          v237 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v227, v228, v229, v230, v231, (v155 - v152) / v236 * v235 / 18.5 + -1.0);
          objc_msgSend_addObject_(v319, v238, v237, v239, v240, v241);

          v247 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v242, v243, v244, v245, v246, (v153 - v155) / v236 * v235 / 17.0 + -1.0);
          objc_msgSend_addObject_(v318, v248, v247, v249, v250, v251);
LABEL_40:

          goto LABEL_41;
        }

        if (hasAscender)
        {
          v247 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v227, v228, v229, v230, v231, -(v233 + -18.5 - v233 * v234) / 18.5 + -1.0);
          objc_msgSend_addObject_(v319, v258, v247, v259, v260, v261);
          goto LABEL_40;
        }

        if (hasDescender)
        {
          v247 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v227, v228, v229, v230, v231, -(v233 + -17.0 - v233 * v234) / 17.0 + -1.0);
          objc_msgSend_addObject_(v318, v262, v247, v263, v264, v265);
          goto LABEL_40;
        }
      }

LABEL_41:

      ++v89;
    }

    while (v89 != v87);
    v266 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v256, &v336, v340, 16, v257);
    v87 = v266;
  }

  while (v266);
LABEL_48:

  if (objc_msgSend_count(v319, v267, v268, v269, v270, v271))
  {
    v277 = objc_msgSend_valueForKeyPath_(v319, v272, @"@avg.floatValue", v274, v275, v276);
    objc_msgSend_floatValue(v277, v278, v279, v280, v281, v282);
    v284 = v283;

    v285 = v284;
  }

  else
  {
    v285 = 0.0;
  }

  if (objc_msgSend_count(v318, v272, v273, v274, v275, v276))
  {
    v291 = objc_msgSend_valueForKeyPath_(v318, v286, @"@avg.floatValue", v288, v289, v290);
    objc_msgSend_floatValue(v291, v292, v293, v294, v295, v296);
    v298 = v297;

    v299 = v298;
  }

  else
  {
    v299 = 0.0;
  }

  if (objc_msgSend_count(v320, v286, v287, v288, v289, v290))
  {
    v304 = objc_msgSend_valueForKeyPath_(v320, v300, @"@avg.floatValue", v301, v302, v303);
    objc_msgSend_floatValue(v304, v305, v306, v307, v308, v309);
    v311 = v310;

    v312 = v311;
    deformCopy2 = deform;
    if (deform)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v312 = 1.0;
    deformCopy2 = deform;
    if (deform)
    {
LABEL_56:
      *deformCopy2 = v312;
    }
  }

  if (ascenderDeform)
  {
    *ascenderDeform = fmax(v285, -0.5);
  }

  if (descenderDeform)
  {
    *descenderDeform = fmax(v299, -0.5);
  }
}

@end