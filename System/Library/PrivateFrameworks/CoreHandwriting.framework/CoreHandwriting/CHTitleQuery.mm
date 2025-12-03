@interface CHTitleQuery
- (CHTitleQuery)initWithRecognitionSession:(id)session;
- (void)q_updateQueryResult;
@end

@implementation CHTitleQuery

- (CHTitleQuery)initWithRecognitionSession:(id)session
{
  sessionCopy = session;
  v13.receiver = self;
  v13.super_class = CHTitleQuery;
  v5 = [(CHQuery *)&v13 initWithRecognitionSession:sessionCopy];
  v11 = v5;
  if (v5)
  {
    objc_msgSend_setPreferredUpdatesInterval_(v5, v6, v7, v8, v9, v10, 0.5);
  }

  return v11;
}

- (void)q_updateQueryResult
{
  v380 = *MEMORY[0x1E69E9840];
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v2 = qword_1EA84DC88;
  spid = os_signpost_id_generate(v2);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC88;
  v4 = v3;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v4, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CHTitleQuery", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v5 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_DEFAULT, "BEGIN CHTitleQuery", buf, 2u);
  }

  v370.receiver = self;
  v370.super_class = CHTitleQuery;
  [(CHQuery *)&v370 q_updateQueryResult];
  v357 = objc_msgSend_q_sessionResult(self, v6, v7, v8, v9, v10);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v11 = qword_1EA84DC60;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v17 = objc_msgSend_debugName(self, v12, v13, v14, v15, v16);
    v23 = objc_msgSend_strokeProviderVersion(v357, v18, v19, v20, v21, v22);
    *buf = 138412546;
    *&buf[4] = v17;
    v372 = 2112;
    v373 = v23;
    _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_DEBUG, "%@: beginning update for result version %@.", buf, 0x16u);
  }

  v29 = objc_msgSend_strokeGroupingResult(v357, v24, v25, v26, v27, v28);
  v35 = objc_msgSend_recognitionSession(self, v30, v31, v32, v33, v34);
  v41 = objc_msgSend_strokeGroupOrdering(v35, v36, v37, v38, v39, v40);
  v349 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v29, v42, v41, 1, v43, v44);

  v359 = objc_msgSend_array(MEMORY[0x1E695DF70], v45, v46, v47, v48, v49);
  v368 = 0u;
  v369 = 0u;
  v366 = 0u;
  v367 = 0u;
  v55 = objc_msgSend_strokeGroupingResult(v357, v50, v51, v52, v53, v54);
  v61 = objc_msgSend_nontextStrokeGroups(v55, v56, v57, v58, v59, v60);

  v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, &v366, v379, 16, v63);
  if (v69)
  {
    v70 = *v367;
    do
    {
      for (i = 0; i != v69; ++i)
      {
        if (*v367 != v70)
        {
          objc_enumerationMutation(v61);
        }

        v72 = *(*(&v366 + 1) + 8 * i);
        v73 = objc_msgSend_classification(v72, v64, v65, v66, v67, v68);
        if ((objc_msgSend_isStrokeClassificationTextOrMath_(CHStrokeUtilities, v74, v73, v75, v76, v77) & 1) == 0 && objc_msgSend_classification(v72, v64, v65, v66, v67, v68) != 6)
        {
          v78 = objc_msgSend_strokeIdentifiers(v72, v64, v65, v66, v67, v68);
          v84 = objc_msgSend_allObjects(v78, v79, v80, v81, v82, v83);
          v90 = objc_msgSend_recognitionSession(self, v85, v86, v87, v88, v89);
          v96 = objc_msgSend_latestStrokeProvider(v90, v91, v92, v93, v94, v95);
          v100 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v97, v84, v96, v98, v99);

          v105 = objc_msgSend_polygonForStrokes_(CHStrokeUtilities, v101, v100, v102, v103, v104);
          objc_msgSend_addObject_(v359, v106, v105, v107, v108, v109);
        }
      }

      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v64, &v366, v379, 16, v68);
    }

    while (v69);
  }

  v364 = 0u;
  v365 = 0u;
  v362 = 0u;
  v363 = 0u;
  obj = v349;
  v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v110, &v362, v378, 16, v111);
  if (!v112)
  {
    v351 = 0;
    v356 = 0;
    v352 = 0;
    goto LABEL_70;
  }

  v351 = 0;
  v356 = 0;
  v352 = 0;
  v354 = *v363;
  while (2)
  {
    v355 = v112;
    for (j = 0; j != v355; ++j)
    {
      while (1)
      {
        if (*v363 != v354)
        {
          objc_enumerationMutation(obj);
        }

        v119 = *(*(&v362 + 1) + 8 * j);
        if (objc_msgSend_count(v359, v113, v114, v115, v116, v117))
        {
          v125 = objc_msgSend_strokeIdentifiers(v119, v120, v121, v122, v123, v124);
          v131 = objc_msgSend_allObjects(v125, v126, v127, v128, v129, v130);
          v137 = objc_msgSend_recognitionSession(self, v132, v133, v134, v135, v136);
          v143 = objc_msgSend_latestStrokeProvider(v137, v138, v139, v140, v141, v142);
          v147 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v144, v131, v143, v145, v146);

          v150 = objc_msgSend_strokesIntersectingPolygons_fromStrokes_intersectedPolygons_(CHStrokeUtilities, v148, v359, v147, 0, v149);
          v156 = objc_msgSend_count(v150, v151, v152, v153, v154, v155);

          v162 = objc_msgSend_count(v147, v157, v158, v159, v160, v161);
          v166 = objc_msgSend_minRectangleDistanceFromStrokes_toPolygons_(CHStrokeUtilities, v163, v147, v359, v164, v165);
          if (v156 / v162 >= 0.2)
          {
            v174 = 1;
          }

          else
          {
            v172 = v166;
            objc_msgSend_bounds(v119, v167, v168, v169, v170, v171);
            v174 = v173 * 0.35 > v172;
          }
        }

        else
        {
          v174 = 0;
        }

        v175 = objc_msgSend_uniqueIdentifier(v119, v120, v121, v122, v123, v124);
        v180 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v357, v176, v175, v177, v178, v179);
        v191 = objc_msgSend_mathResult(v180, v181, v182, v183, v184, v185);
        if (!v191)
        {
          goto LABEL_40;
        }

        if ((objc_msgSend_hasTextResult(v180, v186, v187, v188, v189, v190) & 1) == 0)
        {

          break;
        }

        v197 = objc_msgSend_mathResult(v180, v192, v193, v194, v195, v196);
        isEvaluationExpected = objc_msgSend_isEvaluationExpected(v197, v198, v199, v200, v201, v202);

        if (isEvaluationExpected)
        {
          break;
        }

LABEL_40:
        *buf = 0;
        v360 = 0;
        v204 = objc_msgSend_recognitionResultsByLocale(v180, v186, v187, v188, v189, v190);
        v210 = objc_msgSend_preferredLocale(v180, v205, v206, v207, v208, v209);
        v215 = objc_msgSend_objectForKeyedSubscript_(v204, v211, v210, v212, v213, v214);

        v222 = objc_msgSend_highConfidenceTextForSessionResult_averageTokenScore_rejectionRate_doesContainUnfilteredMultiLocaleResults_isNonTextCandidateResult_(v180, v216, v357, 0, buf, &v360 + 1, &v360);
        if (v174 && (v360 & 1) != 0 || (objc_msgSend_shouldFilterSingleCharacterResult(v215, v217, v218, v219, v220, v221) & 1) != 0 || (objc_msgSend_shouldFilterSingleTokenResult(v215, v223, v224, v225, v226, v227) & 1) != 0)
        {
          v228 = 5;
LABEL_45:

          goto LABEL_51;
        }

        if (v222)
        {
          if (*buf <= 0.45)
          {
            v348 = v222;

            v275 = objc_msgSend_strokeIdentifiers(v119, v270, v271, v272, v273, v274);
            v281 = objc_msgSend_allObjects(v275, v276, v277, v278, v279, v280);
            v287 = objc_msgSend_recognitionSession(self, v282, v283, v284, v285, v286);
            v293 = objc_msgSend_latestStrokeProvider(v287, v288, v289, v290, v291, v292);
            v297 = objc_msgSend_strokeIdentifiersForData_withStrokeProvider_(CHStrokeUtilities, v294, v281, v293, v295, v296);

            v228 = 4;
            v356 = v297;
            v352 = v348;
          }

          else
          {
            v351 = 1;
            v228 = 4;
          }

          goto LABEL_45;
        }

        v268 = HIBYTE(v360);

        if (v268)
        {

          goto LABEL_70;
        }

        v233 = v356;
LABEL_63:

        v356 = v233;
        if (v355 == ++j)
        {
          goto LABEL_67;
        }
      }

      v229 = objc_msgSend_recognitionSession(self, v186, v187, v188, v189, v190);
      v361 = v356;
      v232 = objc_msgSend_mathTranscriptionWithEvaluationResultForStrokeGroup_outStrokeIdentifiers_outStrokes_(v229, v230, v119, &v361, 0, v231);
      v233 = v361;

      v238 = objc_msgSend_textTranscriptionForLatex_(CHTokenizedMathResult, v234, v232, v235, v236, v237);
      if (objc_msgSend_isNonTextCandidateTextTranscription_(CHTokenizedMathResult, v239, v238, v240, v241, v242) & 1) != 0 || (objc_msgSend_mathResult(v180, v243, v244, v245, v246, v247), v248 = objc_claimAutoreleasedReturnValue(), hasLowConfidence = objc_msgSend_hasLowConfidence(v248, v249, v250, v251, v252, v253), v248, (hasLowConfidence))
      {
        v228 = 5;
      }

      else
      {
        if (!v232)
        {

          goto LABEL_63;
        }

        v260 = objc_msgSend_mathResult(v180, v255, v256, v257, v258, v259);
        objc_msgSend_score(v260, v261, v262, v263, v264, v265);
        v267 = v266 < 0.5;

        if (v267)
        {
          v351 = 1;
          v228 = 4;
        }

        else
        {
          v269 = v238;

          v228 = 4;
          v352 = v269;
        }
      }

      v356 = v233;
LABEL_51:

      if (v228 != 5)
      {
        goto LABEL_70;
      }
    }

LABEL_67:
    v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v113, &v362, v378, 16, v117);
    if (v112)
    {
      continue;
    }

    break;
  }

LABEL_70:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v298 = qword_1EA84DC60;
  if (os_log_type_enabled(v298, OS_LOG_TYPE_DEFAULT))
  {
    v304 = objc_msgSend_debugName(self, v299, v300, v301, v302, v303);
    v310 = objc_msgSend_recognitionSession(self, v305, v306, v307, v308, v309);
    v316 = objc_msgSend_length(v352, v311, v312, v313, v314, v315);
    v317 = "";
    *buf = 138413058;
    *&buf[4] = v304;
    v372 = 2048;
    if (v351)
    {
      v317 = " Low confidence, reporting nil.";
    }

    v373 = v310;
    v374 = 2048;
    v375 = v316;
    v376 = 2080;
    v377 = v317;
    _os_log_impl(&dword_18366B000, v298, OS_LOG_TYPE_DEFAULT, "%@: finished update for session %p. Length: %ld.%s", buf, 0x2Au);
  }

  if (v352 && v356)
  {
    v322 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v318, v356, v319, v320, v321);
    v323 = v352;
    v324 = v322;
    v330 = v324;
    if (self && (self->_transcribedTitle != v323 || self->_titleStrokeIdentifiers != v324))
    {
      v331 = objc_msgSend_copy(v323, v325, v326, v327, v328, v329);
      transcribedTitle = self->_transcribedTitle;
      self->_transcribedTitle = v331;

      v338 = objc_msgSend_copy(v330, v333, v334, v335, v336, v337);
      titleStrokeIdentifiers = self->_titleStrokeIdentifiers;
      self->_titleStrokeIdentifiers = v338;

      objc_msgSend_q_queryResultDidChange(self, v340, v341, v342, v343, v344);
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v345 = qword_1EA84DC88;
  v346 = v345;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v345))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v346, OS_SIGNPOST_INTERVAL_END, spid, "CHTitleQuery", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v347 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v347, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v347, OS_LOG_TYPE_DEFAULT, "END CHTitleQuery", buf, 2u);
  }
}

@end