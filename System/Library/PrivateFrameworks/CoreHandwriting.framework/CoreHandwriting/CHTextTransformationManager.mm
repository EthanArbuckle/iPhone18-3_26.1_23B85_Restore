@interface CHTextTransformationManager
+ (CGAffineTransform)adjustTransformForAnchorPoint:(SEL)point transform:(CGPoint)transform;
+ (CGAffineTransform)getInsertSpaceTransform:(SEL)transform spaceSize:(id)size;
+ (CGAffineTransform)getItalicsTransformForTextLine:(SEL)line skew:(id)skew;
+ (CGAffineTransform)getResizeTransformForTextLine:(SEL)line targetSize:(id)size;
+ (CGAffineTransform)getTranslateTransformForAnchorPoint:(SEL)point targetPoint:(CGPoint)targetPoint;
+ (CGAffineTransform)rotationTransformForTextLine:(SEL)line targetAngle:(id)angle;
+ (CGAffineTransform)transformForInsertingToken:(SEL)token inLineWithTokens:(id)tokens;
+ (id)applyMergeToTextLines:(id)lines alignmentBehavior:(unint64_t)behavior leftMargin:(unint64_t)margin rightMargin:(unint64_t)rightMargin insertionPoint:(CGPoint)point;
+ (id)applyWrapToTextLines:(id)lines lineSpaceBehavior:(unint64_t)behavior alignmentBehavior:(unint64_t)alignmentBehavior leftMargin:(unint64_t)margin rightMargin:(unint64_t)rightMargin insertionPoint:(CGPoint)point;
+ (id)mergeReflowableTokens:(id)tokens;
+ (id)splitTextLine:(id)line maxLength:(double)length;
+ (id)textStrokePointTransformationFromAffineTransformation:(CGAffineTransform *)transformation;
+ (void)adjustLineSpacingWithBaselines:(id)baselines lineSpace:(unint64_t)space;
+ (void)adjustLineSpacingWithBounds:(id)bounds lineSpace:(unint64_t)space;
+ (void)applyAlignmentToTextLines:(id)lines alignmentBehavior:(unint64_t)behavior leftMargin:(unint64_t)margin rightMargin:(unint64_t)rightMargin alignFirstLine:(BOOL)line;
+ (void)applyLineSpacingToTextLines:(id)lines lineSpaceBehavior:(unint64_t)behavior lineSpaceTarget:(unint64_t)target linesAreParallel:(BOOL)parallel;
+ (void)applyOrientationToTextLines:(id)lines orientationBehavior:(unint64_t)behavior orientationTarget:(double)target;
+ (void)applyResizeToTextLines:(id)lines resizeBehavior:(unint64_t)behavior resizeTarget:(unint64_t)target resizeModifier:(double)modifier;
+ (void)transformTextLines:(id)lines withParameters:(id)parameters;
- (CHTextTransformationManager)initWithContextStrokes:(id)strokes relatedNonTextStrokes:(id)textStrokes contextResults:(id)results strokeGroupingResult:(id)result strokeClassificationResult:(id)classificationResult strokeProvider:(id)provider excludedStrokeTypes:(id)types;
- (CHTextTransformationManager)initWithContextStrokes:(id)strokes relatedNonTextStrokes:(id)textStrokes parameters:(id)parameters contextResults:(id)results strokeGroupingResult:(id)result strokeClassificationResult:(id)classificationResult strokeProvider:(id)provider excludedStrokeTypes:(id)self0 initialStrokes:(id)self1;
- (CHTextTransformationResult)transformWithProgress:(SEL)progress shouldCancel:(id)cancel;
- (id)_transformedTextLinesWithCancel:(id)cancel skipLineOrientationEstimate:(BOOL)estimate useCache:(BOOL)cache progress:(id)progress;
- (id)createTelemetryDictionary:(double)dictionary nonTextRatio:(double)ratio;
- (id)meanRotationCorrectionAngle;
- (id)numCharacters;
@end

@implementation CHTextTransformationManager

- (CHTextTransformationManager)initWithContextStrokes:(id)strokes relatedNonTextStrokes:(id)textStrokes contextResults:(id)results strokeGroupingResult:(id)result strokeClassificationResult:(id)classificationResult strokeProvider:(id)provider excludedStrokeTypes:(id)types
{
  strokesCopy = strokes;
  textStrokesCopy = textStrokes;
  resultsCopy = results;
  resultCopy = result;
  classificationResultCopy = classificationResult;
  providerCopy = provider;
  typesCopy = types;
  v22 = objc_alloc_init(CHTransformationParameters);
  v24 = objc_msgSend_initWithContextStrokes_relatedNonTextStrokes_parameters_contextResults_strokeGroupingResult_strokeClassificationResult_strokeProvider_excludedStrokeTypes_initialStrokes_(self, v23, strokesCopy, textStrokesCopy, v22, resultsCopy, resultCopy, classificationResultCopy, providerCopy, typesCopy, 0);

  return v24;
}

- (CHTextTransformationManager)initWithContextStrokes:(id)strokes relatedNonTextStrokes:(id)textStrokes parameters:(id)parameters contextResults:(id)results strokeGroupingResult:(id)result strokeClassificationResult:(id)classificationResult strokeProvider:(id)provider excludedStrokeTypes:(id)self0 initialStrokes:(id)self1
{
  strokesCopy = strokes;
  textStrokesCopy = textStrokes;
  parametersCopy = parameters;
  resultsCopy = results;
  resultCopy = result;
  classificationResultCopy = classificationResult;
  providerCopy = provider;
  typesCopy = types;
  initialStrokesCopy = initialStrokes;
  v37.receiver = self;
  v37.super_class = CHTextTransformationManager;
  v18 = [(CHTextTransformationManager *)&v37 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_contextStrokes, strokes);
    objc_storeStrong(&v19->_transformationParameters, parameters);
    objc_storeStrong(&v19->_contextResults, results);
    objc_storeStrong(&v19->_strokeProvider, provider);
    objc_storeStrong(&v19->_strokeGroupingResult, result);
    objc_storeStrong(&v19->_strokeClassificationResult, classificationResult);
    v25 = objc_msgSend_array(MEMORY[0x1E695DF70], v20, v21, v22, v23, v24);
    correctionAngles = v19->_correctionAngles;
    v19->_correctionAngles = v25;

    v19->_usingInsertionPoint = 0;
    objc_storeStrong(&v19->_relatedNonTextStrokes, textStrokes);
    objc_storeStrong(&v19->_excludedStrokeTypes, types);
    objc_storeStrong(&v19->_initialStrokes, initialStrokes);
  }

  return v19;
}

- (id)numCharacters
{
  v6 = objc_msgSend_topTranscription(self->_contextResults, a2, v2, v3, v4, v5);
  v11 = objc_msgSend_countSubstringsWithOptions_(v6, v7, 2, v8, v9, v10);

  v16 = MEMORY[0x1E696AD98];

  return objc_msgSend_numberWithInteger_(v16, v12, v11, v13, v14, v15);
}

- (id)meanRotationCorrectionAngle
{
  v39 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = self->_correctionAngles;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v34, v38, 16, v5);
  if (v11)
  {
    v12 = *v35;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_floatValue(*(*(&v34 + 1) + 8 * i), v6, v7, v8, v9, v10, v34);
        v13 = v13 + v15;
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v34, v38, 16, v10);
    }

    while (v11);
  }

  else
  {
    v13 = 0.0;
  }

  if (objc_msgSend_count(self->_correctionAngles, v16, v17, v18, v19, v20))
  {
    v26 = v13 / objc_msgSend_count(self->_correctionAngles, v21, v22, v23, v24, v25);
    *&v26 = v26;
    objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v27, v28, v29, v30, v31, v26, v34);
  }

  else
  {
    objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v21, v22, v23, v24, v25, 0.0, v34);
  }
  v32 = ;

  return v32;
}

- (id)createTelemetryDictionary:(double)dictionary nonTextRatio:(double)ratio
{
  v77[7] = *MEMORY[0x1E69E9840];
  v76[0] = @"num_characters";
  v11 = objc_msgSend_numCharacters(self, a2, v4, v5, v6, v7);
  v77[0] = v11;
  v76[1] = @"num_strokes";
  v12 = MEMORY[0x1E696AD98];
  v18 = objc_msgSend_count(self->_contextStrokes, v13, v14, v15, v16, v17);
  v23 = objc_msgSend_numberWithUnsignedInteger_(v12, v19, v18, v20, v21, v22);
  v77[1] = v23;
  v76[2] = @"num_groups";
  v24 = MEMORY[0x1E696AD98];
  v30 = objc_msgSend_textResults(self->_contextResults, v25, v26, v27, v28, v29);
  v36 = objc_msgSend_count(v30, v31, v32, v33, v34, v35);
  v41 = objc_msgSend_numberWithUnsignedInteger_(v24, v37, v36, v38, v39, v40);
  v77[2] = v41;
  v76[3] = @"majority_script";
  v47 = objc_msgSend_majorityScriptId(self->_contextResults, v42, v43, v44, v45, v46);
  v77[3] = v47;
  v76[4] = @"nontext_ratio";
  v53 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v48, v49, v50, v51, v52, ratio);
  v77[4] = v53;
  v76[5] = @"rotation_angle";
  v59 = objc_msgSend_meanRotationCorrectionAngle(self, v54, v55, v56, v57, v58);
  v77[5] = v59;
  v76[6] = @"time_for_straightening_ms";
  v65 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v60, v61, v62, v63, v64, dictionary);
  v77[6] = v65;
  v68 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v66, v77, v76, 7, v67);
  v74 = objc_msgSend_mutableCopy(v68, v69, v70, v71, v72, v73);

  return v74;
}

- (CHTextTransformationResult)transformWithProgress:(SEL)progress shouldCancel:(id)cancel
{
  v267 = *MEMORY[0x1E69E9840];
  cancelCopy = cancel;
  v230 = a5;
  v236 = cancelCopy;
  v227 = objc_msgSend_now(MEMORY[0x1E695DF00], v8, v9, v10, v11, v12);
  objc_msgSend_becomeCurrentWithPendingUnitCount_(cancelCopy, v13, 100, v14, v15, v16);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v17 = qword_1EA84DC88;
  spid = os_signpost_id_generate(v17);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v231 = retstr;
  v18 = qword_1EA84DC88;
  v19 = v18;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v19, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CHTextTransform", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v20 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_DEFAULT, "BEGIN CHTextTransform", buf, 2u);
  }

  v22 = objc_msgSend__transformedTextLinesWithCancel_skipLineOrientationEstimate_useCache_progress_(self, v21, v230, 0, 0, cancelCopy);
  v234 = objc_msgSend_mutableCopy(v22, v23, v24, v25, v26, v27);

  v28 = objc_opt_class();
  objc_msgSend_transformTextLines_withParameters_(v28, v29, v234, self->_transformationParameters, v30, v31);
  v37 = objc_msgSend_array(MEMORY[0x1E695DF70], v32, v33, v34, v35, v36);
  v231->var0 = v37;
  v43 = objc_msgSend_array(MEMORY[0x1E695DF70], v38, v39, v40, v41, v42);
  v231->var1 = v43;
  v232 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v44, v45, v46, v47, v48);
  v231->var2 = v232;
  v258 = 0u;
  v259 = 0u;
  v260 = 0u;
  v261 = 0u;
  obj = v234;
  v225 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v49, &v258, v266, 16, v50);
  if (v225)
  {
    v241 = 0;
    v226 = *v259;
    do
    {
      for (i = 0; i != v225; ++i)
      {
        if (*v259 != v226)
        {
          objc_enumerationMutation(obj);
        }

        v56 = *(*(&v258 + 1) + 8 * i);
        v254 = 0u;
        v255 = 0u;
        v256 = 0u;
        v257 = 0u;
        v237 = objc_msgSend_segments(v56, v51, v52, v53, v54, v55);
        v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v237, v57, &v254, v265, 16, v58);
        if (v59)
        {
          v238 = *v255;
          do
          {
            v242 = 0;
            v239 = v59;
            do
            {
              if (*v255 != v238)
              {
                objc_enumerationMutation(v237);
              }

              v60 = *(*(&v254 + 1) + 8 * v242);
              v66 = objc_opt_class();
              if (v60)
              {
                objc_msgSend_transform(v60, v61, v62, v63, v64, v65);
              }

              else
              {
                v252 = 0u;
                v253 = 0u;
                *buf = 0u;
              }

              v67 = objc_msgSend_textStrokePointTransformationFromAffineTransformation_(v66, v61, buf, v63, v64, v65);
              objc_msgSend_addObject_(v43, v68, v67, v69, v70, v71);

              v77 = objc_msgSend_array(MEMORY[0x1E695DF70], v72, v73, v74, v75, v76);
              v249 = 0u;
              v250 = 0u;
              v247 = 0u;
              v248 = 0u;
              v83 = objc_msgSend_textStrokes(v60, v78, v79, v80, v81, v82);
              v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v84, &v247, v264, 16, v85);
              if (v91)
              {
                v92 = *v248;
                do
                {
                  for (j = 0; j != v91; ++j)
                  {
                    if (*v248 != v92)
                    {
                      objc_enumerationMutation(v83);
                    }

                    v94 = objc_msgSend_strokeIdentifier(*(*(&v247 + 1) + 8 * j), v86, v87, v88, v89, v90);
                    objc_msgSend_addObject_(v77, v95, v94, v96, v97, v98);
                  }

                  v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v86, &v247, v264, 16, v90);
                }

                while (v91);
              }

              objc_msgSend_addObject_(v37, v99, v77, v100, v101, v102);
              v108 = objc_msgSend_supportStrokes(v60, v103, v104, v105, v106, v107);
              v240 = objc_msgSend_count(v108, v109, v110, v111, v112, v113);

              v245 = 0u;
              v246 = 0u;
              v243 = 0u;
              v244 = 0u;
              v119 = objc_msgSend_supportStrokes(v60, v114, v115, v116, v117, v118);
              v122 = objc_msgSend_countByEnumeratingWithState_objects_count_(v119, v120, &v243, v263, 16, v121);
              if (v122)
              {
                v123 = *v244;
                if (v60)
                {
                  do
                  {
                    for (k = 0; k != v122; ++k)
                    {
                      if (*v244 != v123)
                      {
                        objc_enumerationMutation(v119);
                      }

                      v125 = *(*(&v243 + 1) + 8 * k);
                      v126 = objc_opt_class();
                      objc_msgSend_transform(v60, v127, v128, v129, v130, v131);
                      v136 = objc_msgSend_textStrokePointTransformationFromAffineTransformation_(v126, v132, buf, v133, v134, v135);
                      objc_msgSend_addObject_(v43, v137, v136, v138, v139, v140);

                      v146 = objc_msgSend_strokeIdentifier(v125, v141, v142, v143, v144, v145);
                      v262 = v146;
                      v150 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v147, &v262, 1, v148, v149);
                      objc_msgSend_addObject_(v37, v151, v150, v152, v153, v154);
                    }

                    v122 = objc_msgSend_countByEnumeratingWithState_objects_count_(v119, v155, &v243, v263, 16, v156);
                  }

                  while (v122);
                }

                else
                {
                  do
                  {
                    for (m = 0; m != v122; ++m)
                    {
                      if (*v244 != v123)
                      {
                        objc_enumerationMutation(v119);
                      }

                      v158 = *(*(&v243 + 1) + 8 * m);
                      v159 = objc_opt_class();
                      v252 = 0u;
                      v253 = 0u;
                      *buf = 0u;
                      v164 = objc_msgSend_textStrokePointTransformationFromAffineTransformation_(v159, v160, buf, v161, v162, v163);
                      objc_msgSend_addObject_(v43, v165, v164, v166, v167, v168);

                      v174 = objc_msgSend_strokeIdentifier(v158, v169, v170, v171, v172, v173);
                      v262 = v174;
                      v178 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v175, &v262, 1, v176, v177);
                      objc_msgSend_addObject_(v37, v179, v178, v180, v181, v182);
                    }

                    v122 = objc_msgSend_countByEnumeratingWithState_objects_count_(v119, v183, &v243, v263, 16, v184);
                  }

                  while (v122);
                }
              }

              v241 += v240;
              ++v242;
            }

            while (v242 != v239);
            v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v237, v185, &v254, v265, 16, v186);
          }

          while (v59);
        }
      }

      v225 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v51, &v258, v266, 16, v55);
    }

    while (v225);
    v187 = v241;
  }

  else
  {
    v187 = 0.0;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v188 = qword_1EA84DC88;
  v189 = v188;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v188))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v189, OS_SIGNPOST_INTERVAL_END, spid, "CHTextTransform", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v190 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v190, OS_LOG_TYPE_DEFAULT, "END CHTextTransform", buf, 2u);
  }

  objc_msgSend_timeIntervalSinceNow(v227, v191, v192, v193, v194, v195);
  v197 = v196;
  v203 = objc_msgSend_count(self->_contextStrokes, v198, v199, v200, v201, v202);
  v231->var2 = objc_msgSend_createTelemetryDictionary_nonTextRatio_(self, v204, v205, v206, v207, v208, v197 * -1000.0, v187 / v203);

  v214 = objc_msgSend_totalUnitCount(v236, v209, v210, v211, v212, v213);
  objc_msgSend_setCompletedUnitCount_(v236, v215, v214, v216, v217, v218);
  objc_msgSend_resignCurrent(v236, v219, v220, v221, v222, v223);

  return result;
}

- (id)_transformedTextLinesWithCancel:(id)cancel skipLineOrientationEstimate:(BOOL)estimate useCache:(BOOL)cache progress:(id)progress
{
  v46 = *MEMORY[0x1E69E9840];
  cancelCopy = cancel;
  progressCopy = progress;
  v12 = objc_opt_class();
  HIBYTE(v40) = cache;
  LOBYTE(v40) = estimate;
  objc_msgSend_textLinesFromContext_strokeGroupingResult_contextStrokes_initialStrokes_strokeProvider_relatedNonTextStrokes_excludedStrokeTypes_skipLineOrientationEstimate_useCache_progress_shouldCancel_(v12, v13, self->_contextResults, self->_strokeGroupingResult, self->_contextStrokes, self->_initialStrokes, self->_strokeProvider, self->_relatedNonTextStrokes, self->_excludedStrokeTypes, v40, progressCopy, cancelCopy);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v14 = v42 = 0u;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v41, v45, 16, v16);
  if (v22)
  {
    v23 = *v42;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v42 != v23)
        {
          objc_enumerationMutation(v14);
        }

        v25 = *(*(&v41 + 1) + 8 * i);
        if (v25)
        {
          objc_msgSend_principalLines(v25, v17, v18, v19, v20, v21);
          v26 = vsubq_f64(0, 0);
        }

        else
        {
          v26 = 0uLL;
        }

        v27 = atan2(v26.f64[1], v26.f64[0]);
        correctionAngles = self->_correctionAngles;
        v34 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v29, v30, v31, v32, v33, (v27 * 57.2957795));
        objc_msgSend_addObject_(correctionAngles, v35, v34, v36, v37, v38);
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v41, v45, 16, v21);
    }

    while (v22);
  }

  return v14;
}

+ (void)transformTextLines:(id)lines withParameters:(id)parameters
{
  v265 = *MEMORY[0x1E69E9840];
  linesCopy = lines;
  parametersCopy = parameters;
  if (objc_msgSend_orientationBehavior(parametersCopy, v7, v8, v9, v10, v11))
  {
    v17 = objc_opt_class();
    v23 = objc_msgSend_orientationBehavior(parametersCopy, v18, v19, v20, v21, v22);
    objc_msgSend_orientationTarget(parametersCopy, v24, v25, v26, v27, v28);
    objc_msgSend_applyOrientationToTextLines_orientationBehavior_orientationTarget_(v17, v29, linesCopy, v23, v30, v31);
  }

  if (objc_msgSend_resizeBehavior(parametersCopy, v12, v13, v14, v15, v16))
  {
    v37 = objc_opt_class();
    v43 = objc_msgSend_resizeBehavior(parametersCopy, v38, v39, v40, v41, v42);
    v49 = objc_msgSend_textSizeTarget(parametersCopy, v44, v45, v46, v47, v48);
    objc_msgSend_textSizeModifier(parametersCopy, v50, v51, v52, v53, v54);
    objc_msgSend_applyResizeToTextLines_resizeBehavior_resizeTarget_resizeModifier_(v37, v55, linesCopy, v43, v49, v56);
  }

  objc_msgSend_italicsModifier(parametersCopy, v32, v33, v34, v35, v36);
  if (v62 > 0.0)
  {
    v262 = 0u;
    v263 = 0u;
    v260 = 0u;
    v261 = 0u;
    v63 = linesCopy;
    v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v260, v264, 16, v65);
    if (v66)
    {
      v67 = *v261;
      do
      {
        v68 = 0;
        do
        {
          if (*v261 != v67)
          {
            objc_enumerationMutation(v63);
          }

          v69 = *(*(&v260 + 1) + 8 * v68);
          v258 = 0u;
          v259 = 0u;
          v257 = 0u;
          v70 = objc_opt_class();
          objc_msgSend_italicsModifier(parametersCopy, v71, v72, v73, v74, v75);
          if (v70)
          {
            objc_msgSend_getItalicsTransformForTextLine_skew_(v70, v76, v69, v77, v78, v79, -v80);
          }

          else
          {
            v258 = 0u;
            v259 = 0u;
            v257 = 0u;
          }

          v254 = v257;
          v255 = v258;
          v256 = v259;
          objc_msgSend_addTransform_(v69, v76, &v254, v77, v78, v79);
          ++v68;
        }

        while (v66 != v68);
        v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v81, &v260, v264, 16, v82);
      }

      while (v66);
    }
  }

  objc_msgSend_insertionPoint(parametersCopy, v57, v58, v59, v60, v61);
  if (v88 != -1.0)
  {
    objc_msgSend_insertionPoint(parametersCopy, v83, v84, v85, v86, v87);
    if (v89 != -1.0)
    {
      v258 = 0u;
      v259 = 0u;
      v257 = 0u;
      v90 = objc_opt_class();
      v96 = objc_msgSend_firstObject(linesCopy, v91, v92, v93, v94, v95);
      objc_msgSend_anchorPoint(v96, v97, v98, v99, v100, v101);
      v103 = v102;
      v105 = v104;
      objc_msgSend_insertionPoint(parametersCopy, v106, v107, v108, v109, v110);
      if (v90)
      {
        objc_msgSend_getTranslateTransformForAnchorPoint_targetPoint_(v90, v111, v112, v113, v114, v115, v103, v105, v116, v117);
      }

      else
      {
        v258 = 0u;
        v259 = 0u;
        v257 = 0u;
      }

      v123 = objc_msgSend_firstObject(linesCopy, v118, v119, v120, v121, v122);
      v254 = v257;
      v255 = v258;
      v256 = v259;
      objc_msgSend_addTransform_(v123, v124, &v254, v125, v126, v127);
    }
  }

  if (objc_msgSend_wrapLines(parametersCopy, v83, v84, v85, v86, v87))
  {
    v133 = objc_opt_class();
    v139 = objc_msgSend_lineSpaceBehavior(parametersCopy, v134, v135, v136, v137, v138);
    v145 = objc_msgSend_alignmentBehavior(parametersCopy, v140, v141, v142, v143, v144);
    v151 = objc_msgSend_leftMargin(parametersCopy, v146, v147, v148, v149, v150);
    v157 = objc_msgSend_rightMargin(parametersCopy, v152, v153, v154, v155, v156);
    objc_msgSend_insertionPoint(parametersCopy, v158, v159, v160, v161, v162);
    v164 = objc_msgSend_applyWrapToTextLines_lineSpaceBehavior_alignmentBehavior_leftMargin_rightMargin_insertionPoint_(v133, v163, linesCopy, v139, v145, v151, v157);

    linesCopy = v164;
  }

  if (objc_msgSend_count(linesCopy, v128, v129, v130, v131, v132) >= 2 && objc_msgSend_mergeLines(parametersCopy, v165, v166, v167, v168, v169))
  {
    v170 = objc_opt_class();
    v176 = objc_msgSend_alignmentBehavior(parametersCopy, v171, v172, v173, v174, v175);
    v182 = objc_msgSend_leftMargin(parametersCopy, v177, v178, v179, v180, v181);
    v188 = objc_msgSend_rightMargin(parametersCopy, v183, v184, v185, v186, v187);
    objc_msgSend_insertionPoint(parametersCopy, v189, v190, v191, v192, v193);
    v195 = objc_msgSend_applyMergeToTextLines_alignmentBehavior_leftMargin_rightMargin_insertionPoint_(v170, v194, linesCopy, v176, v182, v188);

    linesCopy = v195;
  }

  if (objc_msgSend_alignmentBehavior(parametersCopy, v165, v166, v167, v168, v169))
  {
    objc_msgSend_insertionPoint(parametersCopy, v196, v197, v198, v199, v200);
    if (v206 == -1.0)
    {
      v208 = 1;
    }

    else
    {
      objc_msgSend_insertionPoint(parametersCopy, v201, v202, v203, v204, v205);
      v208 = v207 == -1.0;
    }

    v209 = objc_opt_class();
    v215 = objc_msgSend_alignmentBehavior(parametersCopy, v210, v211, v212, v213, v214);
    v221 = objc_msgSend_leftMargin(parametersCopy, v216, v217, v218, v219, v220);
    v227 = objc_msgSend_rightMargin(parametersCopy, v222, v223, v224, v225, v226);
    objc_msgSend_applyAlignmentToTextLines_alignmentBehavior_leftMargin_rightMargin_alignFirstLine_(v209, v228, linesCopy, v215, v221, v227, v208);
  }

  if (objc_msgSend_count(linesCopy, v196, v197, v198, v199, v200) >= 2 && objc_msgSend_lineSpaceBehavior(parametersCopy, v229, v230, v231, v232, v233))
  {
    v239 = objc_msgSend_orientationBehavior(parametersCopy, v234, v235, v236, v237, v238);
    v240 = objc_opt_class();
    v246 = objc_msgSend_lineSpaceBehavior(parametersCopy, v241, v242, v243, v244, v245);
    v252 = objc_msgSend_lineSpaceTarget(parametersCopy, v247, v248, v249, v250, v251);
    objc_msgSend_applyLineSpacingToTextLines_lineSpaceBehavior_lineSpaceTarget_linesAreParallel_(v240, v253, linesCopy, v246, v252, v239 != 0);
  }
}

+ (void)applyOrientationToTextLines:(id)lines orientationBehavior:(unint64_t)behavior orientationTarget:(double)target
{
  v43 = *MEMORY[0x1E69E9840];
  linesCopy = lines;
  v12 = linesCopy;
  if (behavior)
  {
    if (behavior != 3)
    {
      if (behavior == 1)
      {
        v13 = objc_msgSend_objectAtIndexedSubscript_(linesCopy, v8, 0, v9, v10, v11);
        objc_msgSend_orientation(v13, v14, v15, v16, v17, v18);
        target = v19;
      }

      else
      {
        target = 0.0;
      }
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v20 = v12;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v38, v42, 16, v22);
    if (v23)
    {
      v24 = *v39;
      do
      {
        v25 = 0;
        do
        {
          if (*v39 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v38 + 1) + 8 * v25);
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v27 = objc_opt_class();
          if (v27)
          {
            objc_msgSend_rotationTransformForTextLine_targetAngle_(v27, v28, v26, v29, v30, v31, target);
          }

          else
          {
            v36 = 0u;
            v37 = 0u;
            v35 = 0u;
          }

          v34[0] = v35;
          v34[1] = v36;
          v34[2] = v37;
          objc_msgSend_addTransform_(v26, v28, v34, v29, v30, v31);
          ++v25;
        }

        while (v23 != v25);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v32, &v38, v42, 16, v33);
      }

      while (v23);
    }
  }
}

+ (void)applyResizeToTextLines:(id)lines resizeBehavior:(unint64_t)behavior resizeTarget:(unint64_t)target resizeModifier:(double)modifier
{
  v113 = *MEMORY[0x1E69E9840];
  linesCopy = lines;
  v9 = [CHTextSize alloc];
  active = objc_msgSend_initWithXHeight_ascenderHeight_descenderHeight_activeLines_(v9, v10, 7, v11, v12, v13, 18.0, 32.4, 27.0);
  switch(behavior)
  {
    case 1uLL:
      v55 = objc_msgSend_firstObject(linesCopy, v14, v15, v16, v17, v18);
      v49 = objc_msgSend_textSize(v55, v56, v57, v58, v59, v60);

      goto LABEL_16;
    case 3uLL:
      v50 = [CHTextSize alloc];
      v49 = objc_msgSend_initWithXHeight_ascenderHeight_descenderHeight_activeLines_(v50, v51, 7, v52, v53, v54, target, target * 1.8, target * 1.5);
      v55 = active;
LABEL_16:

LABEL_17:
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v61 = linesCopy;
      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, &v103, v111, 16, v63);
      if (v64)
      {
        v65 = *v104;
        if (behavior == 2)
        {
          do
          {
            v66 = 0;
            v67 = v49;
            do
            {
              if (*v104 != v65)
              {
                objc_enumerationMutation(v61);
              }

              v68 = *(*(&v103 + 1) + 8 * v66);
              v69 = objc_opt_class();
              v75 = objc_msgSend_textSize(v68, v70, v71, v72, v73, v74);
              v49 = objc_msgSend_scaledSize_scale_(v69, v76, v75, v77, v78, v79, modifier);

              v101 = 0u;
              v102 = 0u;
              v100 = 0u;
              v80 = objc_opt_class();
              if (v80)
              {
                objc_msgSend_getResizeTransformForTextLine_targetSize_(v80, v81, v68, v49, v83, v84);
              }

              else
              {
                v101 = 0u;
                v102 = 0u;
                v100 = 0u;
              }

              v97 = v100;
              v98 = v101;
              v99 = v102;
              objc_msgSend_addTransform_(v68, v81, &v97, v82, v83, v84);
              ++v66;
              v67 = v49;
            }

            while (v64 != v66);
            v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v85, &v103, v111, 16, v86);
          }

          while (v64);
        }

        else
        {
          do
          {
            for (i = 0; i != v64; ++i)
            {
              if (*v104 != v65)
              {
                objc_enumerationMutation(v61);
              }

              v88 = *(*(&v103 + 1) + 8 * i);
              v101 = 0u;
              v102 = 0u;
              v100 = 0u;
              v89 = objc_opt_class();
              if (v89)
              {
                objc_msgSend_getResizeTransformForTextLine_targetSize_(v89, v90, v88, v49, v92, v93);
              }

              else
              {
                v101 = 0u;
                v102 = 0u;
                v100 = 0u;
              }

              v97 = v100;
              v98 = v101;
              v99 = v102;
              objc_msgSend_addTransform_(v88, v90, &v97, v91, v92, v93);
            }

            v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v94, &v103, v111, 16, v95);
          }

          while (v64);
        }
      }

      goto LABEL_37;
    case 4uLL:
      v20 = MEMORY[0x1E695DF70];
      v21 = objc_msgSend_count(linesCopy, v14, v15, v16, v17, v18);
      v26 = objc_msgSend_arrayWithCapacity_(v20, v22, v21, v23, v24, v25);
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v27 = linesCopy;
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v107, v112, 16, v29);
      if (v35)
      {
        v36 = *v108;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v108 != v36)
            {
              objc_enumerationMutation(v27);
            }

            v38 = objc_msgSend_textSize(*(*(&v107 + 1) + 8 * j), v30, v31, v32, v33, v34);
            objc_msgSend_addObject_(v26, v39, v38, v40, v41, v42);
          }

          v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v107, v112, 16, v34);
        }

        while (v35);
      }

      v43 = objc_opt_class();
      v48 = objc_msgSend_averageTextSize_(v43, v44, v26, v45, v46, v47);

      active = v48;
      break;
  }

  v49 = active;
  if (behavior)
  {
    goto LABEL_17;
  }

LABEL_37:
}

+ (id)applyWrapToTextLines:(id)lines lineSpaceBehavior:(unint64_t)behavior alignmentBehavior:(unint64_t)alignmentBehavior leftMargin:(unint64_t)margin rightMargin:(unint64_t)rightMargin insertionPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v127 = *MEMORY[0x1E69E9840];
  linesCopy = lines;
  v121 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15, v16, v17, v18);
  marginCopy = margin;
  rightMarginCopy = rightMargin;
  rightMarginCopy3 = rightMargin;
  marginCopy3 = margin;
  if (alignmentBehavior == 1)
  {
    v27 = objc_msgSend_objectAtIndexedSubscript_(linesCopy, v19, 0, v20, v21, v22);
    v33 = objc_msgSend_strokeClassification(v27, v28, v29, v30, v31, v32);

    v38 = objc_msgSend_objectAtIndexedSubscript_(linesCopy, v34, 0, v35, v36, v37);
    objc_msgSend_anchorPoint(v38, v39, v40, v41, v42, v43);
    if (v33 == 2)
    {
      rightMarginCopy3 = v44;
      marginCopy3 = margin;
    }

    else
    {
      marginCopy3 = v44;
      rightMarginCopy3 = rightMargin;
    }
  }

  marginCopy4 = margin;
  rightMarginCopy4 = rightMargin;
  v124 = 0u;
  v125 = 0u;
  v45 = y != -1.0 && x != -1.0;
  v122 = 0uLL;
  v123 = 0uLL;
  v46 = linesCopy;
  v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v122, v126, 16, v48);
  if (v54)
  {
    v55 = *v123;
    do
    {
      if (*v123 != v55)
      {
        objc_enumerationMutation(v46);
      }

      v56 = **(&v122 + 1);
      if (alignmentBehavior)
      {
        if (v45)
        {
          if (objc_msgSend_strokeClassification(**(&v122 + 1), v49, v50, v51, v52, v53) == 2)
          {
            rightMarginCopy3 = x;
          }

          else
          {
            marginCopy3 = x;
          }
        }
      }

      else
      {
        v57 = objc_msgSend_objectAtIndexedSubscript_(v46, v49, 0, v51, v52, v53);
        v63 = objc_msgSend_strokeClassification(v57, v58, v59, v60, v61, v62) == 2;

        objc_msgSend_anchorPoint(v56, v64, v65, v66, v67, v68);
        if (v63)
        {
          rightMarginCopy3 = v69;
          marginCopy3 = marginCopy;
        }

        else
        {
          marginCopy3 = v69;
          rightMarginCopy3 = rightMarginCopy;
        }
      }

      v70 = objc_opt_class();
      v79 = objc_msgSend_splitTextLine_maxLength_(v70, v71, v56, v72, v73, v74, rightMarginCopy3 - marginCopy3);
      if (!alignmentBehavior)
      {
        v80 = objc_opt_class();
        objc_msgSend_applyAlignmentToTextLines_alignmentBehavior_leftMargin_rightMargin_alignFirstLine_(v80, v81, v79, 1, marginCopy4, rightMarginCopy4, !v45);
      }

      if (!behavior)
      {
        v82 = objc_opt_class();
        objc_msgSend_applyLineSpacingToTextLines_lineSpaceBehavior_lineSpaceTarget_linesAreParallel_(v82, v83, v79, 1, 0, 1);
      }

      objc_msgSend_addObjectsFromArray_(v121, v75, v79, v76, v77, v78);

      if (v54 >= 2)
      {
        for (i = 1; i != v54; ++i)
        {
          if (*v123 != v55)
          {
            objc_enumerationMutation(v46);
          }

          v89 = *(*(&v122 + 1) + 8 * i);
          if (!alignmentBehavior)
          {
            v90 = objc_msgSend_objectAtIndexedSubscript_(v46, v84, 0, v85, v86, v87);
            v96 = objc_msgSend_strokeClassification(v90, v91, v92, v93, v94, v95) == 2;

            objc_msgSend_anchorPoint(v89, v97, v98, v99, v100, v101);
            if (v96)
            {
              rightMarginCopy3 = v102;
              marginCopy3 = marginCopy;
            }

            else
            {
              marginCopy3 = v102;
              rightMarginCopy3 = rightMarginCopy;
            }
          }

          v103 = objc_opt_class();
          v112 = objc_msgSend_splitTextLine_maxLength_(v103, v104, v89, v105, v106, v107, rightMarginCopy3 - marginCopy3);
          if (!alignmentBehavior)
          {
            v113 = objc_opt_class();
            objc_msgSend_applyAlignmentToTextLines_alignmentBehavior_leftMargin_rightMargin_alignFirstLine_(v113, v114, v112, 1, marginCopy4, rightMarginCopy4, 1);
          }

          if (!behavior)
          {
            v115 = objc_opt_class();
            objc_msgSend_applyLineSpacingToTextLines_lineSpaceBehavior_lineSpaceTarget_linesAreParallel_(v115, v116, v112, 1, 0, 1);
          }

          objc_msgSend_addObjectsFromArray_(v121, v108, v112, v109, v110, v111);
        }
      }

      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v84, &v122, v126, 16, v87);
      v45 = 0;
    }

    while (v54);
  }

  return v121;
}

+ (id)applyMergeToTextLines:(id)lines alignmentBehavior:(unint64_t)behavior leftMargin:(unint64_t)margin rightMargin:(unint64_t)rightMargin insertionPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v230 = *MEMORY[0x1E69E9840];
  linesCopy = lines;
  if (objc_msgSend_count(linesCopy, v11, v12, v13, v14, v15) <= 1)
  {
    v21 = linesCopy;
    v214 = linesCopy;
    goto LABEL_45;
  }

  v214 = objc_msgSend_array(MEMORY[0x1E695DF70], v16, v17, v18, v19, v20);
  marginCopy = margin;
  rightMarginCopy = rightMargin;
  rightMarginCopy2 = rightMargin;
  marginCopy2 = margin;
  if (behavior <= 1)
  {
    v29 = objc_msgSend_objectAtIndexedSubscript_(linesCopy, v22, 0, v24, v25, v26);
    v35 = objc_msgSend_strokeClassification(v29, v30, v31, v32, v33, v34);

    v40 = objc_msgSend_objectAtIndexedSubscript_(linesCopy, v36, 0, v37, v38, v39);
    objc_msgSend_anchorPoint(v40, v41, v42, v43, v44, v45);
    if (v35 == 2)
    {
      rightMarginCopy = v46;
      marginCopy = marginCopy2;
    }

    else
    {
      marginCopy = v46;
      rightMarginCopy = rightMarginCopy2;
    }
  }

  v47 = rightMarginCopy - marginCopy;
  v212 = rightMarginCopy - marginCopy;
  if (x != -1.0)
  {
    v47 = rightMarginCopy - marginCopy;
    if (y != -1.0)
    {
      v48 = objc_msgSend_firstObject(linesCopy, v22, v23, v24, v25, v26);
      v54 = objc_msgSend_strokeClassification(v48, v49, v50, v51, v52, v53);

      v47 = x - marginCopy;
      if (v54 != 2)
      {
        v47 = rightMarginCopy - x;
      }
    }
  }

  v220 = v47;
  v55 = objc_msgSend_objectAtIndexedSubscript_(linesCopy, v22, 0, v24, v25, v26);
  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  v61 = objc_msgSend_count(linesCopy, v56, v57, v58, v59, v60);
  obj = objc_msgSend_subarrayWithRange_(linesCopy, v62, 1, v61 - 1, v63, v64);
  v217 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v65, &v225, v229, 16, v66);
  if (v217)
  {
    v216 = *v226;
    do
    {
      for (i = 0; i != v217; ++i)
      {
        if (*v226 != v216)
        {
          objc_enumerationMutation(obj);
        }

        v218 = *(*(&v225 + 1) + 8 * i);
        v77 = objc_msgSend_splitIntoTokens(v218, v67, v68, v69, v70, v71);
        v78 = 0;
        v79 = 1;
        while (v78 < objc_msgSend_count(v77, v72, v73, v74, v75, v76))
        {
          v84 = objc_msgSend_objectAtIndexedSubscript_(v77, v80, v78, v81, v82, v83);
          v90 = objc_msgSend_tokens(v84, v85, v86, v87, v88, v89);
          v96 = objc_msgSend_lastObject(v90, v91, v92, v93, v94, v95);
          v102 = (objc_msgSend_properties(v96, v97, v98, v99, v100, v101) & 0x20) == 0;

          if (v102 && (v78 || (objc_msgSend_segments(v55, v103, v104, v105, v106, v107), v108 = objc_claimAutoreleasedReturnValue(), objc_msgSend_lastObject(v108, v109, v110, v111, v112, v113), v114 = objc_claimAutoreleasedReturnValue(), objc_msgSend_locale(v114, v115, v116, v117, v118, v119), v120 = objc_claimAutoreleasedReturnValue(), objc_msgSend_defaultWordTerminationCharacterForLocale_(CHContextualTextResult, v121, v120, v122, v123, v124), v125 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v125, v126, @" ", v127, v128, v129), v125, v120, v114, v108, !isEqualToString)))
          {
            v142 = objc_opt_class();
            objc_msgSend_lineHeight(v55, v143, v144, v145, v146, v147);
            if (v142)
            {
              objc_msgSend_getInsertSpaceTransform_spaceSize_(v142, v137, v55, v139, v140, v141, v148 * 0.5);
              goto LABEL_26;
            }
          }

          else
          {
            v131 = objc_opt_class();
            objc_msgSend_lineHeight(v55, v132, v133, v134, v135, v136);
            if (v131)
            {
              objc_msgSend_getInsertSpaceTransform_spaceSize_(v131, v137, v55, v139, v140, v141);
LABEL_26:
              v149 = *(&v224 + 1);
              goto LABEL_28;
            }
          }

          v149 = 0.0;
LABEL_28:
          objc_msgSend_boundingBox(v55, v137, v138, v139, v140, v141);
          v151 = v150;
          v153 = v152;
          objc_msgSend_boundingBox(v84, v154, v155, v156, v157, v158);
          if (v149 + v153 - v151 + v165 - v164 >= v220)
          {
            objc_msgSend_addObject_(v214, v159, v55, v161, v162, v163);
            for (j = v84; ; objc_msgSend_mergeTransformedText_(j, v192, v55, v193, v194, v195))
            {

              if (v79 >= objc_msgSend_count(v77, v182, v183, v184, v185, v186))
              {
                break;
              }

              v55 = objc_msgSend_objectAtIndexedSubscript_(v77, v187, v79, v189, v190, v191);
              ++v79;
            }

            v220 = v212;
            if (!behavior)
            {
              if (objc_msgSend_strokeClassification(v218, v187, v188, v189, v190, v191) == 2)
              {
                objc_msgSend_anchorPoint(v218, v196, v197, v198, v199, v200);
                v202 = v201 - marginCopy2;
              }

              else
              {
                objc_msgSend_anchorPoint(j, v196, v197, v198, v199, v200);
                v202 = rightMarginCopy2 - v203;
              }

              v220 = v202;
            }

            v55 = j;
            break;
          }

          objc_msgSend_insertionPoint(v55, v159, v160, v161, v162, v163);
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v166 = objc_opt_class();
          objc_msgSend_anchorPoint(v84, v167, v168, v169, v170, v171);
          if (v166)
          {
            objc_msgSend_getTranslateTransformForAnchorPoint_targetPoint_(v166, v172, v173, v174, v175, v176);
          }

          else
          {
            v223 = 0u;
            v224 = 0u;
            v222 = 0u;
          }

          v221[0] = v222;
          v221[1] = v223;
          v221[2] = v224;
          objc_msgSend_addTransform_(v84, v172, v221, v174, v175, v176);
          objc_msgSend_mergeTransformedText_(v55, v177, v84, v178, v179, v180);

          ++v78;
          ++v79;
        }
      }

      v217 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v67, &v225, v229, 16, v71);
    }

    while (v217);
  }

  objc_msgSend_addObject_(v214, v204, v55, v205, v206, v207);
  v21 = linesCopy;
LABEL_45:

  return v214;
}

+ (void)applyAlignmentToTextLines:(id)lines alignmentBehavior:(unint64_t)behavior leftMargin:(unint64_t)margin rightMargin:(unint64_t)rightMargin alignFirstLine:(BOOL)line
{
  v89 = *MEMORY[0x1E69E9840];
  linesCopy = lines;
  if (objc_msgSend_count(linesCopy, v14, v15, v16, v17, v18))
  {
    v23 = 0;
    rightMarginCopy = 0.0;
    if (behavior <= 1)
    {
      if (!behavior)
      {
        goto LABEL_66;
      }

      if (behavior == 1)
      {
        v25 = objc_msgSend_objectAtIndexedSubscript_(linesCopy, v19, 0, v20, v21, v22);
        objc_msgSend_anchorPoint(v25, v26, v27, v28, v29, v30);
        rightMarginCopy = v31;

        v36 = objc_msgSend_objectAtIndexedSubscript_(linesCopy, v32, 0, v33, v34, v35);
        v23 = objc_msgSend_strokeClassification(v36, v37, v38, v39, v40, v41) == 2;
      }
    }

    else
    {
      switch(behavior)
      {
        case 2uLL:
          v23 = 0;
          rightMarginCopy = margin;
          break;
        case 3uLL:
          v23 = 0;
          rightMarginCopy = ((rightMargin + margin) >> 1);
          break;
        case 4uLL:
          v23 = 0;
          rightMarginCopy = rightMargin;
          break;
      }
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v42 = linesCopy;
    v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v84, v88, 16, v44);
    if (v50)
    {
      v51 = !line;
      v52 = *v85;
      do
      {
        if (*v85 != v52)
        {
          objc_enumerationMutation(v42);
        }

        v53 = **(&v84 + 1);
        if (**(&v84 + 1))
        {
          objc_msgSend_principalLines(**(&v84 + 1), v45, v46, v47, v48, v49);
          v54 = *(&v81 + 1);
          v55 = *&v81;
          v57 = v82;
          v56 = v83;
          if (behavior > 2)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v56 = 0.0;
          v57 = 0.0;
          v54 = 0.0;
          v55 = 0.0;
          if (behavior > 2)
          {
LABEL_23:
            if (behavior == 3)
            {
              v57 = v57 + v55;
              v8 = v57 * 0.5;
              v56 = v56 + v54;
              v7 = v56 * 0.5;
              if (v51)
              {
                goto LABEL_40;
              }

              goto LABEL_34;
            }

            if (behavior == 4)
            {
              v7 = v56;
              v8 = v57;
              if (v51)
              {
                goto LABEL_40;
              }

              goto LABEL_34;
            }

            goto LABEL_33;
          }
        }

        if (behavior == 1)
        {
          if (v23)
          {
            v7 = v56;
          }

          else
          {
            v7 = v54;
          }

          if (v23)
          {
            v8 = v57;
          }

          else
          {
            v8 = v55;
          }
        }

        else if (behavior == 2)
        {
          v7 = v54;
          v8 = v55;
          if (v51)
          {
            goto LABEL_40;
          }

          goto LABEL_34;
        }

LABEL_33:
        if (v51)
        {
          goto LABEL_40;
        }

LABEL_34:
        v80 = 0u;
        v81 = 0u;
        v79 = 0u;
        v58 = objc_opt_class();
        if (v58)
        {
          objc_msgSend_getTranslateTransformForAnchorPoint_targetPoint_(v58, v59, v60, v61, v62, v63, v8, v7, rightMarginCopy, v7);
        }

        else
        {
          v80 = 0u;
          v81 = 0u;
          v79 = 0u;
        }

        v76 = v79;
        v77 = v80;
        v78 = v81;
        objc_msgSend_addTransform_(v53, v59, &v76, v61, v62, v63);
LABEL_40:
        if (v50 >= 2)
        {
          for (i = 1; v50 != i; ++i)
          {
            if (*v85 != v52)
            {
              objc_enumerationMutation(v42);
            }

            v65 = *(*(&v84 + 1) + 8 * i);
            if (v65)
            {
              objc_msgSend_principalLines(*(*(&v84 + 1) + 8 * i), v45, v46, v47, v48, v49);
              v66 = *(&v81 + 1);
              v67 = *&v81;
              v69 = v82;
              v68 = v83;
              if (behavior > 2)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v68 = 0.0;
              v69 = 0.0;
              v66 = 0.0;
              v67 = 0.0;
              if (behavior > 2)
              {
LABEL_50:
                if (behavior == 3)
                {
                  v8 = (v69 + v67) * 0.5;
                  v7 = (v68 + v66) * 0.5;
                }

                else if (behavior == 4)
                {
                  v7 = v68;
                  v8 = v69;
                }

                goto LABEL_60;
              }
            }

            if (behavior == 1)
            {
              if (v23)
              {
                v7 = v68;
              }

              else
              {
                v7 = v66;
              }

              if (v23)
              {
                v8 = v69;
              }

              else
              {
                v8 = v67;
              }
            }

            else if (behavior == 2)
            {
              v7 = v66;
              v8 = v67;
            }

LABEL_60:
            v80 = 0u;
            v81 = 0u;
            v79 = 0u;
            v70 = objc_opt_class();
            if (v70)
            {
              objc_msgSend_getTranslateTransformForAnchorPoint_targetPoint_(v70, v71, v72, v73, v74, v75, v8, v7, rightMarginCopy, v7);
            }

            else
            {
              v80 = 0u;
              v81 = 0u;
              v79 = 0u;
            }

            v76 = v79;
            v77 = v80;
            v78 = v81;
            objc_msgSend_addTransform_(v65, v71, &v76, v73, v74, v75);
          }
        }

        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v84, v88, 16, v49, v56, v57);
        v51 = 0;
      }

      while (v50);
    }
  }

LABEL_66:
}

+ (void)applyLineSpacingToTextLines:(id)lines lineSpaceBehavior:(unint64_t)behavior lineSpaceTarget:(unint64_t)target linesAreParallel:(BOOL)parallel
{
  v67 = *MEMORY[0x1E69E9840];
  linesCopy = lines;
  v15 = objc_msgSend_count(linesCopy, v10, v11, v12, v13, v14);
  if (behavior && v15 >= 2)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v16 = linesCopy;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v61, v66, 16, v18);
    if (v24)
    {
      v25 = *v62;
      v26 = 0.0;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v62 != v25)
          {
            objc_enumerationMutation(v16);
          }

          objc_msgSend_lineHeight(*(*(&v61 + 1) + 8 * i), v19, v20, v21, v22, v23);
          v26 = v26 + v28;
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v61, v66, 16, v23);
      }

      while (v24);
    }

    else
    {
      v26 = 0.0;
    }

    v34 = v26 / objc_msgSend_count(v16, v29, v30, v31, v32, v33);
    if (behavior == 2)
    {
      target = (v34 * 1.5);
      if (!parallel)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (behavior != 3)
      {
        if (behavior != 4)
        {
          target = 0;
        }

        if (parallel)
        {
          goto LABEL_35;
        }

LABEL_21:
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v35 = v16;
        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v57, v65, 16, v37);
        if (v43)
        {
          v44 = *v58;
          v45 = -1.79769313e308;
          v46 = 1.79769313e308;
          do
          {
            for (j = 0; j != v43; ++j)
            {
              if (*v58 != v44)
              {
                objc_enumerationMutation(v35);
              }

              objc_msgSend_orientation(*(*(&v57 + 1) + 8 * j), v38, v39, v40, v41, v42, v57);
              if (v48 < v46)
              {
                v46 = v48;
              }

              if (v48 > v45)
              {
                v45 = v48;
              }
            }

            v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v57, v65, 16, v42);
          }

          while (v43);
        }

        else
        {
          v45 = -1.79769313e308;
          v46 = 1.79769313e308;
        }

        if (v45 - v46 >= 0.05)
        {
          v53 = objc_opt_class();
          objc_msgSend_adjustLineSpacingWithBounds_lineSpace_(v53, v54, v35, target, v55, v56);
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      target = (v34 * 2.5);
      if (!parallel)
      {
        goto LABEL_21;
      }
    }

LABEL_35:
    v49 = objc_opt_class();
    objc_msgSend_adjustLineSpacingWithBaselines_lineSpace_(v49, v50, v16, target, v51, v52);
  }

LABEL_37:
}

+ (void)adjustLineSpacingWithBaselines:(id)baselines lineSpace:(unint64_t)space
{
  baselinesCopy = baselines;
  spaceCopy = space;
  for (i = 1; i < objc_msgSend_count(baselinesCopy, v5, v6, v7, v8, v9); i = v19 + 1)
  {
    v17 = i - 1;
    v18 = objc_msgSend_objectAtIndexedSubscript_(baselinesCopy, v13, i - 1, v14, v15, v16);
    v19 = v17 + 1;
    v29 = objc_msgSend_objectAtIndexedSubscript_(baselinesCopy, v20, v17 + 1, v21, v22, v23);
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    if (v18)
    {
      objc_msgSend_principalLines(v18, v24, v25, v26, v27, v28);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    if (v29)
    {
      objc_msgSend_principalLines(v29, v24, v25, v26, v27, v28);
    }

    objc_msgSend_orientation(v18, v24, v25, v26, v27, v28);
    v31 = tan(v30);
    v32 = v52;
    v33 = v50;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v34 = objc_opt_class();
    if (v34)
    {
      objc_msgSend_getTranslateTransformForAnchorPoint_targetPoint_(v34, v35, v36, v37, v38, v39, v33, *&v33, *(&v32 + 1) + *&v32 * v31 - *&v33 * v31 + spaceCopy);
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
    }

    v40[0] = v41;
    v40[1] = v42;
    v40[2] = v43;
    objc_msgSend_addTransform_(v29, v35, v40, v37, v38, v39);
  }
}

+ (void)adjustLineSpacingWithBounds:(id)bounds lineSpace:(unint64_t)space
{
  boundsCopy = bounds;
  spaceCopy = space;
  for (i = 1; i < objc_msgSend_count(boundsCopy, v5, v6, v7, v8, v9); i = v19 + 1)
  {
    v17 = i - 1;
    v18 = objc_msgSend_objectAtIndexedSubscript_(boundsCopy, v13, i - 1, v14, v15, v16);
    v19 = v17 + 1;
    v24 = objc_msgSend_objectAtIndexedSubscript_(boundsCopy, v20, v17 + 1, v21, v22, v23);
    objc_msgSend_boundingBox(v24, v25, v26, v27, v28, v29);
    v31 = v30;
    objc_msgSend_boundingBox(v18, v32, v33, v34, v35, v36);
    v38 = v37;
    objc_msgSend_boundingBox(v24, v39, v40, v41, v42, v43);
    v45 = v44;
    objc_msgSend_boundingBox(v24, v46, v47, v48, v49, v50);
    v52 = v51;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    v53 = objc_opt_class();
    if (v53)
    {
      objc_msgSend_getTranslateTransformForAnchorPoint_targetPoint_(v53, v54, v55, v56, v57, v58, v45, v52, v31, v38 + spaceCopy);
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
    }

    v59[0] = v60;
    v59[1] = v61;
    v59[2] = v62;
    objc_msgSend_addTransform_(v24, v54, v59, v56, v57, v58);
  }
}

+ (id)splitTextLine:(id)line maxLength:(double)length
{
  v56 = *MEMORY[0x1E69E9840];
  lineCopy = line;
  v11 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8, v9, v10);
  objc_msgSend_splitIntoTokens(lineCopy, v12, v13, v14, v15, v16);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v17 = v52 = 0u;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v51, v55, 16, v19);
  if (v25)
  {
    v26 = 0;
    v27 = *v52;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v52 != v27)
        {
          objc_enumerationMutation(v17);
        }

        v29 = *(*(&v51 + 1) + 8 * i);
        if (v26)
        {
          objc_msgSend_boundingBox(v26, v20, v21, v22, v23, v24, v51);
          v31 = v30;
          v33 = v32;
          objc_msgSend_boundingBox(v29, v34, v35, v36, v37, v38);
          if (v31 <= v43)
          {
            v43 = v31;
          }

          if (v33 >= v44)
          {
            v44 = v33;
          }

          if (v44 - v43 >= length)
          {
            objc_msgSend_addObject_(v11, v39, v26, v40, v41, v42);
            v45 = v29;

            v26 = v45;
          }

          else
          {
            objc_msgSend_mergeTransformedText_(v26, v39, v29, v40, v41, v42);
          }
        }

        else
        {
          v26 = v29;
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v51, v55, 16, v24);
    }

    while (v25);

    if (v26)
    {
      objc_msgSend_addObject_(v11, v46, v26, v47, v48, v49);
    }
  }

  else
  {

    v26 = 0;
  }

  return v11;
}

+ (CGAffineTransform)rotationTransformForTextLine:(SEL)line targetAngle:(id)angle
{
  angleCopy = angle;
  v8 = MEMORY[0x1E695EFD0];
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v9;
  *&retstr->tx = *(v8 + 32);
  memset(v37, 0, sizeof(v37));
  sub_1838CA8F4(angleCopy, v37[0].f64, a5);
  memset(&v36, 0, sizeof(v36));
  if (angleCopy)
  {
    objc_msgSend_principalLines(angleCopy, v10, v11, v12, v13, v14);
  }

  else
  {
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v31 = 0uLL;
    memset(&t1, 0, sizeof(t1));
  }

  sub_1838CABC0(&t1, v37, &v36);
  v15 = *&retstr->c;
  *&t1.a = *&retstr->a;
  *&t1.c = v15;
  *&t1.tx = *&retstr->tx;
  v29 = v36;
  CGAffineTransformConcat(retstr, &t1, &v29);
  v16 = objc_opt_class();
  objc_msgSend_anchorPoint(angleCopy, v17, v18, v19, v20, v21);
  v26 = *&retstr->c;
  *&v29.a = *&retstr->a;
  *&v29.c = v26;
  *&v29.tx = *&retstr->tx;
  if (v16)
  {
    objc_msgSend_adjustTransformForAnchorPoint_transform_(v16, v22, &v29, v23, v24, v25);
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v27 = *&t1.c;
  *&retstr->a = *&t1.a;
  *&retstr->c = v27;
  *&retstr->tx = *&t1.tx;

  return result;
}

+ (CGAffineTransform)getResizeTransformForTextLine:(SEL)line targetSize:(id)size
{
  sizeCopy = size;
  v8 = a5;
  v9 = MEMORY[0x1E695EFD0];
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v10;
  *&retstr->tx = *(v9 + 32);
  v16 = objc_msgSend_textSize(sizeCopy, v11, v12, v13, v14, v15);
  objc_msgSend_scaleToMatchSize_(v16, v17, v8, v18, v19, v20);
  v22 = v21;

  v23 = *&retstr->c;
  *&v38.a = *&retstr->a;
  *&v38.c = v23;
  *&v38.tx = *&retstr->tx;
  CGAffineTransformScale(retstr, &v38, v22, v22);
  v24 = objc_opt_class();
  objc_msgSend_anchorPoint(sizeCopy, v25, v26, v27, v28, v29);
  v34 = *&retstr->c;
  v37[0] = *&retstr->a;
  v37[1] = v34;
  v37[2] = *&retstr->tx;
  if (v24)
  {
    objc_msgSend_adjustTransformForAnchorPoint_transform_(v24, v30, v37, v31, v32, v33);
  }

  else
  {
    memset(&v38, 0, sizeof(v38));
  }

  v35 = *&v38.c;
  *&retstr->a = *&v38.a;
  *&retstr->c = v35;
  *&retstr->tx = *&v38.tx;

  return result;
}

+ (CGAffineTransform)getItalicsTransformForTextLine:(SEL)line skew:(id)skew
{
  skewCopy = skew;
  v8 = MEMORY[0x1E695EFD0];
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v9;
  *&retstr->tx = *(v8 + 32);
  retstr->c = a5;
  v10 = objc_opt_class();
  objc_msgSend_anchorPoint(skewCopy, v11, v12, v13, v14, v15);
  v20 = *&retstr->c;
  v23[0] = *&retstr->a;
  v23[1] = v20;
  v23[2] = *&retstr->tx;
  if (v10)
  {
    objc_msgSend_adjustTransformForAnchorPoint_transform_(v10, v16, v23, v17, v18, v19);
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
  }

  v21 = v25;
  *&retstr->a = v24;
  *&retstr->c = v21;
  *&retstr->tx = v26;

  return result;
}

+ (CGAffineTransform)getTranslateTransformForAnchorPoint:(SEL)point targetPoint:(CGPoint)targetPoint
{
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v5;
  retstr->tx = a5.x - targetPoint.x;
  retstr->ty = a5.y - targetPoint.y;
  return result;
}

+ (CGAffineTransform)adjustTransformForAnchorPoint:(SEL)point transform:(CGPoint)transform
{
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *&v10.a = *MEMORY[0x1E695EFD0];
  *&v10.c = v5;
  v6 = *&a5->c;
  y = transform.y;
  v8 = vsubq_f64(transform, vaddq_f64(*&a5->tx, vmlaq_n_f64(vmulq_n_f64(v6, transform.y), *&a5->a, transform.x)));
  *&t1.a = *&a5->a;
  *&t1.c = v6;
  *&t1.tx = *&a5->tx;
  *&v10.tx = v8;
  return CGAffineTransformConcat(retstr, &t1, &v10);
}

+ (CGAffineTransform)getInsertSpaceTransform:(SEL)transform spaceSize:(id)size
{
  sizeCopy = size;
  objc_msgSend_orientation(sizeCopy, v7, v8, v9, v10, v11);
  v13 = v12;
  v19 = objc_msgSend_strokeClassification(sizeCopy, v14, v15, v16, v17, v18);
  v20 = -v13;
  if (v19 != 2)
  {
    v20 = v13;
  }

  v21 = __sincos_stret(v20);
  v22 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v22;
  retstr->tx = v21.__cosval * a5;
  retstr->ty = -(v21.__sinval * a5);

  return result;
}

+ (id)textStrokePointTransformationFromAffineTransformation:(CGAffineTransform *)transformation
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_183867A98;
  v7[3] = &unk_1E6DDF0E0;
  v3 = *&transformation->c;
  v8 = *&transformation->a;
  v9 = v3;
  v10 = *&transformation->tx;
  v4 = MEMORY[0x1865E6810](v7, a2);
  v5 = MEMORY[0x1865E6810]();

  return v5;
}

+ (CGAffineTransform)transformForInsertingToken:(SEL)token inLineWithTokens:(id)tokens
{
  v171[1] = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  v7 = a5;
  if (objc_msgSend_count(v7, v8, v9, v10, v11, v12))
  {
    v156 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v13, @"en_US", v14, v15, v16);
    if (objc_msgSend_hasPrecedingSpace(tokensCopy, v17, v18, v19, v20, v21))
    {
      v22 = 32;
    }

    else
    {
      v22 = 0;
    }

    v23 = [CHTokenizedTextResultToken alloc];
    v29 = objc_msgSend_string(tokensCopy, v24, v25, v26, v27, v28);
    v35 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v30, v31, v32, v33, v34);
    v36 = MEMORY[0x1E695F058];
    v38 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_(v23, v37, v29, v35, 0, v22, v156, 1, 1.0, 1.0, 1.0, 1.0, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), 0);

    v39 = [CHTransformedTextLine alloc];
    v171[0] = v38;
    v48 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v40, v171, 1, v41, v42);
    memset(&__p, 0, 24);
    v166 = 0;
    v167 = 0;
    v168 = 0;
    if (tokensCopy)
    {
      objc_msgSend_principalLines(tokensCopy, v43, v44, v45, v46, v47);
    }

    else
    {
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v161 = 0u;
      memset(&v160, 0, sizeof(v160));
    }

    v51 = MEMORY[0x1E695EFD0];
    v52 = *(MEMORY[0x1E695EFD0] + 16);
    *&t1.a = *MEMORY[0x1E695EFD0];
    *&t1.c = v52;
    *&t1.tx = *(MEMORY[0x1E695EFD0] + 32);
    v53 = MEMORY[0x1E695E0F0];
    v155 = objc_msgSend_initWithStrokes_tokens_points_strokePoints_locale_strokeClassification_principalLines_principalPoints_transform_(v39, v43, MEMORY[0x1E695E0F0], v48, &__p, &v166, v156, 1, &v160, MEMORY[0x1E695E0F0], &t1);
    v54 = v166;
    if (v166)
    {
      v55 = v167;
      v56 = v166;
      if (v167 != v166)
      {
        v57 = v167;
        do
        {
          v59 = *(v57 - 3);
          v57 -= 24;
          v58 = v59;
          if (v59)
          {
            *(v55 - 2) = v58;
            operator delete(v58);
          }

          v55 = v57;
        }

        while (v57 != v54);
        v56 = v166;
      }

      v167 = v54;
      operator delete(v56);
    }

    if (*&__p.a)
    {
      __p.b = __p.a;
      operator delete(*&__p.a);
    }

    v65 = objc_msgSend_lastObject(v7, v60, v61, v62, v63, v64);
    if (objc_msgSend_hasPrecedingSpace(v65, v66, v67, v68, v69, v70))
    {
      v71 = 32;
    }

    else
    {
      v71 = 0;
    }

    v72 = [CHTokenizedTextResultToken alloc];
    v78 = objc_msgSend_string(v65, v73, v74, v75, v76, v77);
    v84 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v79, v80, v81, v82, v83);
    v86 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_(v72, v85, v78, v84, 0, v71, v156, 1, 1.0, 1.0, 1.0, 1.0, *v36, v36[1], v36[2], v36[3], 0);

    v87 = [CHTransformedTextLine alloc];
    v170 = v86;
    v91 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v88, &v170, 1, v89, v90);
    memset(&__p, 0, 24);
    v166 = 0;
    v167 = 0;
    v168 = 0;
    v97 = objc_msgSend_lastObject(v7, v92, v93, v94, v95, v96);
    v103 = v97;
    if (v97)
    {
      objc_msgSend_principalLines(v97, v98, v99, v100, v101, v102);
    }

    else
    {
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v161 = 0u;
      memset(&v160, 0, sizeof(v160));
    }

    v104 = v51[1];
    *&t1.a = *v51;
    *&t1.c = v104;
    *&t1.tx = v51[2];
    v105 = objc_msgSend_initWithStrokes_tokens_points_strokePoints_locale_strokeClassification_principalLines_principalPoints_transform_(v87, v98, v53, v91, &__p, &v166, v156, 1, &v160, v53, &t1);

    v106 = v166;
    if (v166)
    {
      v107 = v167;
      v108 = v166;
      if (v167 != v166)
      {
        v109 = v167;
        do
        {
          v111 = *(v109 - 3);
          v109 -= 24;
          v110 = v111;
          if (v111)
          {
            *(v107 - 2) = v110;
            operator delete(v110);
          }

          v107 = v109;
        }

        while (v109 != v106);
        v108 = v166;
      }

      v167 = v106;
      operator delete(v108);
    }

    if (*&__p.a)
    {
      __p.b = __p.a;
      operator delete(*&__p.a);
    }

    v112 = objc_alloc_init(CHTransformationParameters);
    objc_msgSend_setOrientationBehavior_(v112, v113, 1, v114, v115, v116);
    objc_msgSend_setResizeBehavior_(v112, v117, 1, v118, v119, v120);
    objc_msgSend_setMergeLines_(v112, v121, 1, v122, v123, v124);
    v125 = objc_opt_class();
    v169[0] = v105;
    v169[1] = v155;
    v129 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v126, v169, 2, v127, v128);
    objc_msgSend_transformTextLines_withParameters_(v125, v130, v129, v112, v131, v132);

    memset(&v160, 0, sizeof(v160));
    v138 = objc_msgSend_segments(v155, v133, v134, v135, v136, v137);
    v144 = objc_msgSend_firstObject(v138, v139, v140, v141, v142, v143);
    v150 = v144;
    if (v144)
    {
      objc_msgSend_transform(v144, v145, v146, v147, v148, v149);
    }

    else
    {
      memset(&v160, 0, sizeof(v160));
    }

    t1 = v160;
    memset(&__p, 0, sizeof(__p));
    if (CGAffineTransformEqualToTransform(&t1, &__p))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v151 = qword_1EA84DCA0;
      if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
      {
        LOWORD(t1.a) = 0;
        _os_log_impl(&dword_18366B000, v151, OS_LOG_TYPE_ERROR, "transformForInsertingToken resulted in an invalid transform, retuning identity transform instead.", &t1, 2u);
      }

      v152 = MEMORY[0x1E695EFD0];
    }

    else
    {
      v152 = &v160;
    }

    v153 = *&v152->c;
    *&retstr->a = *&v152->a;
    *&retstr->c = v153;
    *&retstr->tx = *&v152->tx;
  }

  else
  {
    v49 = MEMORY[0x1E695EFD0];
    v50 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v50;
    *&retstr->tx = *(v49 + 32);
  }

  return result;
}

+ (id)mergeReflowableTokens:(id)tokens
{
  v583 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  v530 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v3, @"zh-Hans", v4, v5, v6);
  v7 = MEMORY[0x1E695DF70];
  v13 = objc_msgSend_count(tokensCopy, v8, v9, v10, v11, v12);
  v529 = objc_msgSend_arrayWithCapacity_(v7, v14, v13, v15, v16, v17);
  v18 = MEMORY[0x1E695DF70];
  v24 = objc_msgSend_count(tokensCopy, v19, v20, v21, v22, v23);
  v528 = objc_msgSend_arrayWithCapacity_(v18, v25, v24, v26, v27, v28);
  v553 = 0u;
  v554 = 0u;
  v551 = 0u;
  v552 = 0u;
  obj = tokensCopy;
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v551, v572, 16, v30);
  if (v31)
  {
    v32 = *v552;
    do
    {
      v33 = 0;
      do
      {
        if (*v552 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v551 + 1) + 8 * v33);
        v35 = objc_opt_class();
        v43 = objc_msgSend_textLineForReflowableSynthesisResultToken_locale_(v35, v36, v34, v530, v37, v38);
        if (v43)
        {
          objc_msgSend_addObject_(v529, v39, v43, v40, v41, v42);
          objc_msgSend_addObject_(v528, v44, v34, v45, v46, v47);
          goto LABEL_12;
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v48 = qword_1EA84DCA0;
          if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_11;
          }

LABEL_10:
          v54 = objc_msgSend_string(v34, v49, v50, v51, v52, v53);
          *buf = 138739971;
          *&buf[4] = v54;
          _os_log_impl(&dword_18366B000, v48, OS_LOG_TYPE_ERROR, "Failed to create transformed text line from reflowable token with string: %{sensitive}@", buf, 0xCu);

          goto LABEL_11;
        }

        v48 = qword_1EA84DCA0;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_10;
        }

LABEL_11:

LABEL_12:
        ++v33;
      }

      while (v31 != v33);
      v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v55, &v551, v572, 16, v56);
      v31 = v57;
    }

    while (v57);
  }

  v481 = objc_alloc_init(CHTransformationParameters);
  objc_msgSend_setOrientationBehavior_(v481, v58, 1, v59, v60, v61);
  objc_msgSend_setResizeBehavior_(v481, v62, 1, v63, v64, v65);
  objc_msgSend_setMergeLines_(v481, v66, 1, v67, v68, v69);
  objc_msgSend_setRightMargin_(v481, v70, -1, v71, v72, v73);
  v74 = objc_opt_class();
  objc_msgSend_transformTextLines_withParameters_(v74, v75, v529, v481, v76, v77);
  v83 = objc_msgSend_firstObject(v529, v78, v79, v80, v81, v82);
  v89 = objc_msgSend_string(v83, v84, v85, v86, v87, v88);
  v95 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v90, v91, v92, v93, v94);
  v482 = objc_msgSend_stringByTrimmingCharactersInSet_(v89, v96, v95, v97, v98, v99);

  v549 = 0u;
  v550 = 0u;
  v547 = 0u;
  v548 = 0u;
  v545 = 0u;
  v546 = 0u;
  v543 = 0u;
  v544 = 0u;
  v105 = objc_msgSend_firstObject(v529, v100, v101, v102, v103, v104);
  v111 = v105;
  if (v105)
  {
    objc_msgSend_principalLines(v105, v106, v107, v108, v109, v110);
  }

  else
  {
    v549 = 0u;
    v550 = 0u;
    v547 = 0u;
    v548 = 0u;
    v545 = 0u;
    v546 = 0u;
    v543 = 0u;
    v544 = 0u;
  }

  v493 = objc_alloc_init(CHDrawing);
  v485 = objc_msgSend_array(MEMORY[0x1E695DF70], v112, v113, v114, v115, v116);
  v122 = objc_msgSend_firstObject(v529, v117, v118, v119, v120, v121);
  v489 = objc_msgSend_splitIntoTokens(v122, v123, v124, v125, v126, v127);

  v502 = 0;
  v133 = MEMORY[0x1E695EFF8];
LABEL_21:
  if (v502 < objc_msgSend_count(v528, v128, v129, v130, v131, v132))
  {
    v508 = objc_msgSend_objectAtIndexedSubscript_(v528, v134, v502, v136, v137, v138);
    v143 = objc_msgSend_objectAtIndexedSubscript_(v489, v139, v502, v140, v141, v142);
    v149 = objc_msgSend_drawing(v508, v144, v145, v146, v147, v148);
    v155 = objc_msgSend_segments(v143, v150, v151, v152, v153, v154);
    v161 = objc_msgSend_firstObject(v155, v156, v157, v158, v159, v160);
    v167 = v161;
    if (v161)
    {
      objc_msgSend_transform(v161, v162, v163, v164, v165, v166);
    }

    else
    {
      v577 = 0u;
      v576 = 0u;
      *buf = 0u;
    }

    v499 = objc_msgSend_newDrawingWithAffineTransform_(v149, v162, buf, v164, v165, v166);

    objc_msgSend_appendDrawing_(v493, v168, v499, v169, v170, v171);
    v483 = objc_msgSend_principalPoints(v508, v172, v173, v174, v175, v176);
    objc_msgSend_bounds(v508, v177, v178, v179, v180, v181);
    v183 = v182;
    v185 = v184;
    v187 = v186;
    v189 = v188;
    v190 = v483;
    v191 = MEMORY[0x1E695DF70];
    v494 = v190;
    v197 = objc_msgSend_count(v190, v192, v193, v194, v195, v196);
    v497 = objc_msgSend_arrayWithCapacity_(v191, v198, v197, v199, v200, v201);
    v557 = 0u;
    v558 = 0u;
    v555 = 0u;
    v556 = 0u;
    v505 = v494;
    v487 = objc_msgSend_countByEnumeratingWithState_objects_count_(v505, v202, &v555, v573, 16, v203);
    if (v487)
    {
      v490 = *v556;
      if (v187 == 0.0)
      {
        v187 = 1.0;
      }

      if (v189 == 0.0)
      {
        v189 = 1.0;
      }

      do
      {
        for (i = 0; i != v487; ++i)
        {
          if (*v556 != v490)
          {
            objc_enumerationMutation(v505);
          }

          v204 = *(*(&v555 + 1) + 8 * i);
          v205 = MEMORY[0x1E695DF70];
          v211 = objc_msgSend_count(v204, v206, v207, v208, v209, v210);
          v216 = objc_msgSend_arrayWithCapacity_(v205, v212, v211, v213, v214, v215);
          v565 = 0u;
          v566 = 0u;
          v563 = 0u;
          v564 = 0u;
          v515 = v204;
          v523 = v216;
          v224 = objc_msgSend_countByEnumeratingWithState_objects_count_(v515, v217, &v563, buf, 16, v218);
          if (v224)
          {
            v519 = *v564;
            do
            {
              for (j = 0; j != v224; ++j)
              {
                if (*v564 != v519)
                {
                  objc_enumerationMutation(v515);
                }

                v226 = *(*(&v563 + 1) + 8 * j);
                v227 = MEMORY[0x1E695DF70];
                v228 = objc_msgSend_count(v226, v219, v220, v221, v222, v223);
                v233 = objc_msgSend_arrayWithCapacity_(v227, v229, v228, v230, v231, v232);
                v561 = 0u;
                v562 = 0u;
                v559 = 0u;
                v560 = 0u;
                v234 = v226;
                v237 = objc_msgSend_countByEnumeratingWithState_objects_count_(v234, v235, &v559, v574, 16, v236);
                if (v237)
                {
                  v238 = *v560;
                  do
                  {
                    for (k = 0; k != v237; ++k)
                    {
                      if (*v560 != v238)
                      {
                        objc_enumerationMutation(v234);
                      }

                      sub_1837A97C4(*(*(&v559 + 1) + 8 * k), &__p);
                      v245 = __p;
                      if (v568 - __p == 8)
                      {
                        v246 = *__p;
                        v247 = *(__p + 1);
                      }

                      else
                      {
                        v246 = *v133;
                        v247 = v133[1];
                        if (!__p)
                        {
                          goto LABEL_47;
                        }
                      }

                      operator delete(__p);
LABEL_47:
                      v248 = sub_1837A9A94(v183 + v246 * v187, v185 + v247 * v189, v245, v240, v241, v242, v243, v244);
                      objc_msgSend_addObject_(v233, v249, v248, v250, v251, v252);
                    }

                    v237 = objc_msgSend_countByEnumeratingWithState_objects_count_(v234, v253, &v559, v574, 16, v254);
                  }

                  while (v237);
                }

                objc_msgSend_addObject_(v523, v255, v233, v256, v257, v258);
              }

              v224 = objc_msgSend_countByEnumeratingWithState_objects_count_(v515, v219, &v563, buf, 16, v223);
            }

            while (v224);
          }

          objc_msgSend_addObject_(v497, v259, v523, v260, v261, v262);
        }

        v487 = objc_msgSend_countByEnumeratingWithState_objects_count_(v505, v263, &v555, v573, 16, v264);
      }

      while (v487);
    }

    v541 = 0u;
    v542 = 0u;
    v539 = 0u;
    v540 = 0u;
    v498 = v497;
    v491 = objc_msgSend_countByEnumeratingWithState_objects_count_(v498, v265, &v539, v571, 16, v266);
    if (!v491)
    {
      goto LABEL_81;
    }

    v495 = *v540;
LABEL_55:
    v506 = 0;
    while (1)
    {
      if (*v540 != v495)
      {
        objc_enumerationMutation(v498);
      }

      v272 = *(*(&v539 + 1) + 8 * v506);
      v273 = MEMORY[0x1E695DF70];
      v274 = objc_msgSend_count(v272, v267, v268, v269, v270, v271);
      v279 = objc_msgSend_arrayWithCapacity_(v273, v275, v274, v276, v277, v278);
      v537 = 0u;
      v538 = 0u;
      v535 = 0u;
      v536 = 0u;
      v512 = v272;
      v520 = v279;
      v282 = objc_msgSend_countByEnumeratingWithState_objects_count_(v512, v280, &v535, v570, 16, v281);
      if (v282)
      {
        break;
      }

LABEL_79:

      objc_msgSend_addObject_(v485, v340, v520, v341, v342, v343);
      if (++v506 == v491)
      {
        v491 = objc_msgSend_countByEnumeratingWithState_objects_count_(v498, v267, &v539, v571, 16, v271);
        if (!v491)
        {
LABEL_81:

          ++v502;
          goto LABEL_21;
        }

        goto LABEL_55;
      }
    }

    v516 = *v536;
LABEL_60:
    v524 = v282;
    v288 = 0;
    while (1)
    {
      if (*v536 != v516)
      {
        objc_enumerationMutation(v512);
      }

      v289 = *(*(&v535 + 1) + 8 * v288);
      v290 = MEMORY[0x1E695DF70];
      v291 = objc_msgSend_count(v289, v283, v284, v285, v286, v287);
      v296 = objc_msgSend_arrayWithCapacity_(v290, v292, v291, v293, v294, v295);
      v533 = 0u;
      v534 = 0u;
      v531 = 0u;
      v532 = 0u;
      v297 = v289;
      v300 = objc_msgSend_countByEnumeratingWithState_objects_count_(v297, v298, &v531, v569, 16, v299);
      if (v300)
      {
        break;
      }

LABEL_77:

      objc_msgSend_addObject_(v520, v336, v296, v337, v338, v339);
      if (++v288 == v524)
      {
        v282 = objc_msgSend_countByEnumeratingWithState_objects_count_(v512, v283, &v535, v570, 16, v287);
        if (!v282)
        {
          goto LABEL_79;
        }

        goto LABEL_60;
      }
    }

    v301 = *v532;
LABEL_65:
    v302 = 0;
    while (1)
    {
      if (*v532 != v301)
      {
        objc_enumerationMutation(v297);
      }

      sub_1837A97C4(*(*(&v531 + 1) + 8 * v302), buf);
      if (*&buf[8] - *buf == 8)
      {
        break;
      }

      v308 = *v133;
      v309 = v133[1];
      if (*buf)
      {
        goto LABEL_71;
      }

LABEL_72:
      v310 = objc_msgSend_segments(v143, v303, v304, v305, v306, v307);
      v316 = objc_msgSend_firstObject(v310, v311, v312, v313, v314, v315);
      v322 = v316;
      if (v316)
      {
        objc_msgSend_transform(v316, v317, v318, v319, v320, v321);
        v323 = *buf;
        v324 = *&buf[8];
        v326 = v576.f64[1];
        v325 = v576.f64[0];
        v327 = v577.f64[1];
        v328 = v577.f64[0];
      }

      else
      {
        v327 = 0.0;
        v326 = 0.0;
        v324 = 0.0;
        v328 = 0.0;
        v325 = 0.0;
        v323 = 0.0;
      }

      v585.x = v328 + v309 * v325 + v323 * v308;
      v585.y = v327 + v309 * v326 + v324 * v308;
      v329 = NSStringFromPoint(v585);
      objc_msgSend_addObject_(v296, v330, v329, v331, v332, v333);

      if (v300 == ++v302)
      {
        v300 = objc_msgSend_countByEnumeratingWithState_objects_count_(v297, v334, &v531, v569, 16, v335);
        if (!v300)
        {
          goto LABEL_77;
        }

        goto LABEL_65;
      }
    }

    v308 = **buf;
    v309 = *(*buf + 4);
LABEL_71:
    operator delete(*buf);
    goto LABEL_72;
  }

  v500 = v543;
  v503 = v545;
  *v507 = v544;
  v509 = v547;
  *v513 = v546;
  *v521 = v548;
  v525 = v550;
  *v517 = v549;
  objc_msgSend_bounds(v493, v134, v135, v136, v137, v138);
  v345.f64[1] = v344;
  __asm { FMOV            V4.2D, #1.0 }

  v351 = vbslq_s8(vceqzq_f64(v345), _Q4, v345);
  v353.f64[1] = v352;
  v492 = vdivq_f64(vsubq_f64(v500, v353), v351);
  *buf = v492;
  v496 = vdivq_f64(vsubq_f64(*v507, v353), v351);
  v576 = v496;
  v486 = vdivq_f64(vsubq_f64(v503, v353), v351);
  v488 = vdivq_f64(vsubq_f64(*v513, v353), v351);
  v577 = v486;
  v578 = v488;
  v478 = vdivq_f64(vsubq_f64(v525, v353), v351);
  v479 = vdivq_f64(vsubq_f64(v509, v353), v351);
  v579 = v479;
  v484 = vdivq_f64(vsubq_f64(*v521, v353), v351);
  v580 = v484;
  v477 = vdivq_f64(vsubq_f64(*v517, v353), v351);
  v581 = v477;
  v582 = v478;
  v501 = objc_msgSend_textSizeFromPrincipalLines_string_(CHTextSize, v354, buf, v482, v355, v356);
  objc_msgSend_bounds(v493, v357, v358, v359, v360, v361);
  v363 = v362;
  v365 = v364;
  v367 = v366;
  v369 = v368;
  v370 = v485;
  v371 = MEMORY[0x1E695DF70];
  v507[0] = v370;
  v377 = objc_msgSend_count(v370, v372, v373, v374, v375, v376);
  v514 = objc_msgSend_arrayWithCapacity_(v371, v378, v377, v379, v380, v381);
  v557 = 0u;
  v558 = 0u;
  v555 = 0u;
  v556 = 0u;
  v518 = v507[0];
  v384 = objc_msgSend_countByEnumeratingWithState_objects_count_(v518, v382, &v555, v573, 16, v383);
  if (!v384)
  {
    goto LABEL_110;
  }

  v504 = *v556;
  if (v367 == 0.0)
  {
    v367 = 1.0;
  }

  if (v369 == 0.0)
  {
    v369 = 1.0;
  }

  do
  {
    v385 = 0;
    v476 = v384;
    do
    {
      if (*v556 != v504)
      {
        objc_enumerationMutation(v518);
      }

      v386 = *(*(&v555 + 1) + 8 * v385);
      v387 = MEMORY[0x1E695DF70];
      v393 = objc_msgSend_count(v386, v388, v389, v390, v391, v392);
      objc_msgSend_arrayWithCapacity_(v387, v394, v393, v395, v396, v397);
      v526 = v510 = v385;
      v565 = 0u;
      v566 = 0u;
      v563 = 0u;
      v564 = 0u;
      v522 = v386;
      v405 = objc_msgSend_countByEnumeratingWithState_objects_count_(v522, v398, &v563, buf, 16, v399);
      if (v405)
      {
        v406 = *v564;
        do
        {
          for (m = 0; m != v405; ++m)
          {
            if (*v564 != v406)
            {
              objc_enumerationMutation(v522);
            }

            v408 = *(*(&v563 + 1) + 8 * m);
            v409 = MEMORY[0x1E695DF70];
            v410 = objc_msgSend_count(v408, v400, v401, v402, v403, v404);
            v415 = objc_msgSend_arrayWithCapacity_(v409, v411, v410, v412, v413, v414);
            v561 = 0u;
            v562 = 0u;
            v559 = 0u;
            v560 = 0u;
            v416 = v408;
            v419 = objc_msgSend_countByEnumeratingWithState_objects_count_(v416, v417, &v559, v574, 16, v418);
            if (v419)
            {
              v420 = *v560;
              do
              {
                for (n = 0; n != v419; ++n)
                {
                  if (*v560 != v420)
                  {
                    objc_enumerationMutation(v416);
                  }

                  sub_1837A97C4(*(*(&v559 + 1) + 8 * n), &__p);
                  v427 = __p;
                  if (v568 - __p == 8)
                  {
                    v428 = *__p;
                    v429 = *(__p + 1);
                  }

                  else
                  {
                    v428 = *v133;
                    v429 = v133[1];
                    if (!__p)
                    {
                      goto LABEL_104;
                    }
                  }

                  operator delete(__p);
LABEL_104:
                  v430 = sub_1837A9A94((v428 - v363) / v367, (v429 - v365) / v369, v427, v422, v423, v424, v425, v426);
                  objc_msgSend_addObject_(v415, v431, v430, v432, v433, v434);
                }

                v419 = objc_msgSend_countByEnumeratingWithState_objects_count_(v416, v435, &v559, v574, 16, v436);
              }

              while (v419);
            }

            objc_msgSend_addObject_(v526, v437, v415, v438, v439, v440);
          }

          v405 = objc_msgSend_countByEnumeratingWithState_objects_count_(v522, v400, &v563, buf, 16, v404);
        }

        while (v405);
      }

      objc_msgSend_addObject_(v514, v441, v526, v442, v443, v444);
      v385 = v510 + 1;
    }

    while (v510 + 1 != v476);
    v384 = objc_msgSend_countByEnumeratingWithState_objects_count_(v518, v445, &v555, v573, 16, v446);
  }

  while (v384);
LABEL_110:

  v447 = [CHReflowableSynthesisResultToken alloc];
  *buf = v492;
  v576 = v496;
  v577 = v486;
  v578 = v488;
  v579 = v479;
  v580 = v484;
  v581 = v477;
  v582 = v478;
  objc_msgSend_bounds(v493, v448, v449, v450, v451, v452);
  v454 = v453;
  v456 = v455;
  v458 = v457;
  v460 = v459;
  v466 = objc_msgSend_firstObject(obj, v461, v462, v463, v464, v465);
  hasPrecedingSpace = objc_msgSend_hasPrecedingSpace(v466, v467, v468, v469, v470, v471);
  v474 = objc_msgSend_initWithDrawing_string_principalLines_principalPoints_textSize_bounds_hasPrecedingSpace_(v447, v473, v493, v482, buf, v514, v501, hasPrecedingSpace, v454, v456, v458, v460);

  return v474;
}

@end