@interface CHSynthesisRequestOptions
+ (id)synthesisOptionsWithDictionary:(id)dictionary;
+ (id)synthesisOptionsWithDrawings:(id)drawings contents:(id)contents;
+ (id)synthesisOptionsWithDrawings:(id)drawings contents:(id)contents stylePredictions:(id)predictions isFastPath:(BOOL)path fitWidth:(id)width fitHeight:(id)height synthesizeCharacterInventoryBehavior:(int64_t)behavior xZeroDrawing:(id)self0 fastPathAsXZero:(BOOL)self1 fastPathUseDefaultStyle:(BOOL)self2 styleInventoryQuery:(BOOL)self3 skipStyleInventoryLookup:(BOOL)self4 saveStyleSample:(BOOL)self5 forwardProcessRatio:(id)self6 backwardProcessRatio:(id)self7 seed:(id)self8 synthesisSuggestion:(int64_t)self9 forceInventoryDefaultStyle:(BOOL)defaultStyle;
+ (id)synthesisOptionsWithFastPath:(BOOL)path;
+ (id)synthesisOptionsWithStyleStrength:(id)strength;
+ (id)synthesisOptionsWithSynthesizeCharacterInventoryBehavior:(int64_t)behavior;
- (CHSynthesisRequestOptions)initWithCoder:(id)coder;
- (CHSynthesisRequestOptions)initWithStyleDrawings:(id)drawings styleContents:(id)contents stylePredictions:(id)predictions isFastPath:(BOOL)path fitWidth:(id)width fitHeight:(id)height synthesizeCharacterInventoryBehavior:(int64_t)behavior xZeroDrawing:(id)self0 fastPathAsXZero:(BOOL)self1 fastPathUseDefaultStyle:(BOOL)self2 styleInventoryQuery:(BOOL)self3 skipStyleInventoryLookup:(BOOL)self4 saveStyleSample:(BOOL)self5 distanceBetweenDigits:(id)self6 forwardProcessRatio:(id)self7 backwardProcessRatio:(id)self8 seed:(id)self9 synthesisSuggestion:(int64_t)suggestion forceInventoryDefaultStyle:(BOOL)defaultStyle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSynthesisRequestOptions

- (CHSynthesisRequestOptions)initWithStyleDrawings:(id)drawings styleContents:(id)contents stylePredictions:(id)predictions isFastPath:(BOOL)path fitWidth:(id)width fitHeight:(id)height synthesizeCharacterInventoryBehavior:(int64_t)behavior xZeroDrawing:(id)self0 fastPathAsXZero:(BOOL)self1 fastPathUseDefaultStyle:(BOOL)self2 styleInventoryQuery:(BOOL)self3 skipStyleInventoryLookup:(BOOL)self4 saveStyleSample:(BOOL)self5 distanceBetweenDigits:(id)self6 forwardProcessRatio:(id)self7 backwardProcessRatio:(id)self8 seed:(id)self9 synthesisSuggestion:(int64_t)suggestion forceInventoryDefaultStyle:(BOOL)defaultStyle
{
  drawingsCopy = drawings;
  contentsCopy = contents;
  contentsCopy2 = contents;
  predictionsCopy = predictions;
  predictionsCopy2 = predictions;
  widthCopy = width;
  widthCopy2 = width;
  heightCopy = height;
  heightCopy2 = height;
  drawingCopy = drawing;
  digitsCopy = digits;
  ratioCopy = ratio;
  processRatioCopy = processRatio;
  seedCopy = seed;
  v45.receiver = self;
  v45.super_class = CHSynthesisRequestOptions;
  v33 = [(CHSynthesisRequestOptions *)&v45 init];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_styleDrawings, drawings);
    objc_storeStrong(&v34->_styleContents, contentsCopy);
    objc_storeStrong(&v34->_stylePredictions, predictionsCopy);
    v34->_isFastPath = path;
    objc_storeStrong(&v34->_fitWidth, widthCopy);
    objc_storeStrong(&v34->_fitHeight, heightCopy);
    v34->_synthesizeCharacterInventoryBehavior = behavior;
    objc_storeStrong(&v34->_xZeroDrawing, drawing);
    v34->_fastPathAsXZero = zero;
    v34->_fastPathUseDefaultStyle = style;
    v34->_styleInventoryQuery = query;
    v34->_skipStyleInventoryLookup = lookup;
    v34->_saveStyleSample = sample;
    objc_storeStrong(&v34->_distanceBetweenDigits, digits);
    objc_storeStrong(&v34->_forwardProcessRatio, ratio);
    objc_storeStrong(&v34->_backwardProcessRatio, processRatio);
    objc_storeStrong(&v34->_seed, seed);
    v34->_chunkSynthesisSuggestion = suggestion;
    v34->_forceInventoryDefaultStyle = defaultStyle;
  }

  return v34;
}

+ (id)synthesisOptionsWithDrawings:(id)drawings contents:(id)contents
{
  drawingsCopy = drawings;
  contentsCopy = contents;
  v7 = [CHSynthesisRequestOptions alloc];
  v12 = 0;
  BYTE4(v11) = 0;
  LODWORD(v11) = 0;
  isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle = objc_msgSend_initWithStyleDrawings_styleContents_stylePredictions_isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle_(v7, v8, drawingsCopy, contentsCopy, 0, 0, 0, 0, 0, 0, v11, 0, 0, 0, 0, 0, v12);

  return isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle;
}

+ (id)synthesisOptionsWithFastPath:(BOOL)path
{
  pathCopy = path;
  v4 = [CHSynthesisRequestOptions alloc];
  v9 = 0;
  BYTE4(v8) = 0;
  LODWORD(v8) = 0;
  isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle = objc_msgSend_initWithStyleDrawings_styleContents_stylePredictions_isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle_(v4, v5, 0, 0, 0, pathCopy, 0, 0, 0, 0, v8, 0, 0, 0, 0, 0, v9);

  return isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle;
}

+ (id)synthesisOptionsWithSynthesizeCharacterInventoryBehavior:(int64_t)behavior
{
  v4 = [CHSynthesisRequestOptions alloc];
  v9 = 0;
  BYTE4(v8) = 0;
  LODWORD(v8) = 0;
  isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle = objc_msgSend_initWithStyleDrawings_styleContents_stylePredictions_isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle_(v4, v5, 0, 0, 0, 0, 0, 0, behavior, 0, v8, 0, 0, 0, 0, 0, v9);

  return isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle;
}

+ (id)synthesisOptionsWithStyleStrength:(id)strength
{
  strengthCopy = strength;
  v4 = [CHSynthesisRequestOptions alloc];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_floatValue(strengthCopy, v6, v7, v8, v9, v10);
  v17 = objc_msgSend_numberWithDouble_(v5, v12, v13, v14, v15, v16, 1.0 - v11);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_floatValue(strengthCopy, v19, v20, v21, v22, v23);
  v30 = objc_msgSend_numberWithDouble_(v18, v25, v26, v27, v28, v29, 1.0 - v24);
  v35 = 0;
  BYTE4(v34) = 0;
  LODWORD(v34) = 0;
  isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle = objc_msgSend_initWithStyleDrawings_styleContents_stylePredictions_isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle_(v4, v31, 0, 0, 0, 0, 0, 0, 0, 0, v34, 0, v17, v30, 0, 0, v35);

  return isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle;
}

+ (id)synthesisOptionsWithDrawings:(id)drawings contents:(id)contents stylePredictions:(id)predictions isFastPath:(BOOL)path fitWidth:(id)width fitHeight:(id)height synthesizeCharacterInventoryBehavior:(int64_t)behavior xZeroDrawing:(id)self0 fastPathAsXZero:(BOOL)self1 fastPathUseDefaultStyle:(BOOL)self2 styleInventoryQuery:(BOOL)self3 skipStyleInventoryLookup:(BOOL)self4 saveStyleSample:(BOOL)self5 forwardProcessRatio:(id)self6 backwardProcessRatio:(id)self7 seed:(id)self8 synthesisSuggestion:(int64_t)self9 forceInventoryDefaultStyle:(BOOL)defaultStyle
{
  pathCopy = path;
  drawingsCopy = drawings;
  contentsCopy = contents;
  predictionsCopy = predictions;
  widthCopy = width;
  heightCopy = height;
  drawingCopy = drawing;
  ratioCopy = ratio;
  processRatioCopy = processRatio;
  seedCopy = seed;
  v32 = [CHSynthesisRequestOptions alloc];
  *(&v36 + 3) = __PAIR16__(sample, lookup);
  *(&v36 + 1) = __PAIR16__(query, style);
  LOBYTE(v36) = zero;
  isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle = objc_msgSend_initWithStyleDrawings_styleContents_stylePredictions_isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle_(v32, v33, drawingsCopy, contentsCopy, predictionsCopy, pathCopy, widthCopy, heightCopy, behavior, drawingCopy, v36, 0, ratioCopy, processRatioCopy, seedCopy, suggestion, defaultStyle);

  return isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle;
}

+ (id)synthesisOptionsWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v191 = objc_msgSend_valueForKey_(dictionaryCopy, v4, CHTextSynthesisOptionStyleDrawings[0], v5, v6, v7);
  v190 = objc_msgSend_valueForKey_(dictionaryCopy, v8, CHTextSynthesisOptionStyleContents[0], v9, v10, v11);
  v189 = objc_msgSend_valueForKey_(dictionaryCopy, v12, CHTextSynthesisOptionStylePredictions[0], v13, v14, v15);
  v20 = objc_msgSend_valueForKey_(dictionaryCopy, v16, CHTextSynthesisOptionForwardProcessRatio[0], v17, v18, v19);
  v25 = objc_msgSend_valueForKey_(dictionaryCopy, v21, CHTextSynthesisOptionBackwardProcessRatio[0], v22, v23, v24);
  v30 = objc_msgSend_valueForKey_(dictionaryCopy, v26, CHTextSynthesisOptionStyleStrength[0], v27, v28, v29);
  v36 = v30;
  v186 = v30;
  if (v30)
  {
    v37 = MEMORY[0x1E696AD98];
    objc_msgSend_floatValue(v30, v31, v32, v33, v34, v35);
    v44 = objc_msgSend_numberWithDouble_(v37, v39, v40, v41, v42, v43, 1.0 - v38);

    v45 = MEMORY[0x1E696AD98];
    objc_msgSend_floatValue(v36, v46, v47, v48, v49, v50);
    v57 = objc_msgSend_numberWithDouble_(v45, v52, v53, v54, v55, v56, 1.0 - v51);

    v20 = v57;
  }

  else
  {
    v44 = v25;
  }

  v187 = v44;
  v188 = v20;
  v185 = objc_msgSend_valueForKey_(dictionaryCopy, v31, CHTextSynthesisOptionFitWidth[0], v33, v34, v35);
  v184 = objc_msgSend_valueForKey_(dictionaryCopy, v58, CHTextSynthesisOptionFitHeight[0], v59, v60, v61);
  v183 = objc_msgSend_valueForKey_(dictionaryCopy, v62, CHTextSynthesisOptionDistanceBetweenDigitCenters[0], v63, v64, v65);
  v182 = objc_msgSend_valueForKey_(dictionaryCopy, v66, CHTextSynthesisOptionFixedSeed[0], v67, v68, v69);
  v181 = objc_msgSend_valueForKey_(dictionaryCopy, v70, CHTextSynthesisOptionXZeroDrawing[0], v71, v72, v73);
  v78 = objc_msgSend_valueForKey_(dictionaryCopy, v74, CHTextSynthesisOptionFastPath[0], v75, v76, v77);
  v84 = objc_msgSend_BOOLValue(v78, v79, v80, v81, v82, v83);

  v89 = objc_msgSend_valueForKey_(dictionaryCopy, v85, CHTextSynthesisOptionFastPathAsXZero[0], v86, v87, v88);
  v95 = objc_msgSend_BOOLValue(v89, v90, v91, v92, v93, v94);

  v100 = objc_msgSend_valueForKey_(dictionaryCopy, v96, CHTextSynthesisOptionFastPathUseDefaultStyle[0], v97, v98, v99);
  v106 = objc_msgSend_BOOLValue(v100, v101, v102, v103, v104, v105);

  v111 = objc_msgSend_valueForKey_(dictionaryCopy, v107, CHTextSynthesisStyleInventoryDebugView[0], v108, v109, v110);
  v117 = objc_msgSend_BOOLValue(v111, v112, v113, v114, v115, v116);

  v122 = objc_msgSend_valueForKey_(dictionaryCopy, v118, CHTextSynthesisOptionSkipStyleInventoryLookup[0], v119, v120, v121);
  v128 = objc_msgSend_BOOLValue(v122, v123, v124, v125, v126, v127);

  v133 = objc_msgSend_valueForKey_(dictionaryCopy, v129, CHTextSynthesisOptionSaveStyleSample[0], v130, v131, v132);
  v139 = objc_msgSend_BOOLValue(v133, v134, v135, v136, v137, v138);

  v144 = objc_msgSend_valueForKey_(dictionaryCopy, v140, CHTextSynthesisOptionForceInventoryDefaultStyle[0], v141, v142, v143);
  v150 = objc_msgSend_BOOLValue(v144, v145, v146, v147, v148, v149);

  v155 = objc_msgSend_valueForKey_(dictionaryCopy, v151, CHTextSynthesisOptionSynthesizeCharacterInventory[0], v152, v153, v154);
  v180 = v139;
  v161 = objc_msgSend_integerValue(v155, v156, v157, v158, v159, v160);
  v162 = 2;
  if (v161 < 2)
  {
    v162 = v161;
  }

  if (v161 < 0)
  {
    v162 = 0;
  }

  v179 = v162;

  v167 = objc_msgSend_valueForKey_(dictionaryCopy, v163, CHTextSynthesisOptionSynthesisSuggestion[0], v164, v165, v166);
  v173 = objc_msgSend_integerValue(v167, v168, v169, v170, v171, v172);

  v174 = [CHSynthesisRequestOptions alloc];
  BYTE4(v178) = v180;
  BYTE3(v178) = v128;
  BYTE2(v178) = v117;
  BYTE1(v178) = v106;
  LOBYTE(v178) = v95;
  isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle = objc_msgSend_initWithStyleDrawings_styleContents_stylePredictions_isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle_(v174, v175, v191, v190, v189, v84, v185, v184, v179, v181, v178, v183, v188, v187, v182, v173, v150);

  return isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle;
}

- (id)dictionary
{
  v7 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2, v3, v4, v5);
  v12 = v7;
  styleDrawings = self->_styleDrawings;
  if (styleDrawings)
  {
    objc_msgSend_setValue_forKey_(v7, v8, styleDrawings, CHTextSynthesisOptionStyleDrawings[0], v10, v11);
  }

  styleContents = self->_styleContents;
  if (styleContents)
  {
    objc_msgSend_setValue_forKey_(v12, v8, styleContents, CHTextSynthesisOptionStyleContents[0], v10, v11);
  }

  stylePredictions = self->_stylePredictions;
  if (stylePredictions)
  {
    objc_msgSend_setValue_forKey_(v12, v8, stylePredictions, CHTextSynthesisOptionStylePredictions[0], v10, v11);
  }

  forwardProcessRatio = self->_forwardProcessRatio;
  if (forwardProcessRatio)
  {
    objc_msgSend_setValue_forKey_(v12, v8, forwardProcessRatio, CHTextSynthesisOptionForwardProcessRatio[0], v10, v11);
  }

  backwardProcessRatio = self->_backwardProcessRatio;
  if (backwardProcessRatio)
  {
    objc_msgSend_setValue_forKey_(v12, v8, backwardProcessRatio, CHTextSynthesisOptionBackwardProcessRatio[0], v10, v11);
  }

  fitWidth = self->_fitWidth;
  if (fitWidth)
  {
    objc_msgSend_setValue_forKey_(v12, v8, fitWidth, CHTextSynthesisOptionFitWidth[0], v10, v11);
  }

  fitHeight = self->_fitHeight;
  if (fitHeight)
  {
    objc_msgSend_setValue_forKey_(v12, v8, fitHeight, CHTextSynthesisOptionFitHeight[0], v10, v11);
  }

  distanceBetweenDigits = self->_distanceBetweenDigits;
  if (distanceBetweenDigits)
  {
    objc_msgSend_setValue_forKey_(v12, v8, distanceBetweenDigits, CHTextSynthesisOptionDistanceBetweenDigitCenters[0], v10, v11);
  }

  xZeroDrawing = self->_xZeroDrawing;
  if (xZeroDrawing)
  {
    objc_msgSend_setValue_forKey_(v12, v8, xZeroDrawing, CHTextSynthesisOptionXZeroDrawing[0], v10, v11);
  }

  seed = self->_seed;
  if (seed)
  {
    objc_msgSend_setValue_forKey_(v12, v8, seed, CHTextSynthesisOptionFixedSeed[0], v10, v11);
  }

  v23 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v8, self->_isFastPath, v9, v10, v11);
  objc_msgSend_setValue_forKey_(v12, v24, v23, CHTextSynthesisOptionFastPath[0], v25, v26);

  v31 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v27, self->_synthesizeCharacterInventoryBehavior, v28, v29, v30);
  objc_msgSend_setValue_forKey_(v12, v32, v31, CHTextSynthesisOptionSynthesizeCharacterInventory[0], v33, v34);

  v39 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v35, self->_fastPathAsXZero, v36, v37, v38);
  objc_msgSend_setValue_forKey_(v12, v40, v39, CHTextSynthesisOptionFastPathAsXZero[0], v41, v42);

  v47 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v43, self->_fastPathUseDefaultStyle, v44, v45, v46);
  objc_msgSend_setValue_forKey_(v12, v48, v47, CHTextSynthesisOptionFastPathUseDefaultStyle[0], v49, v50);

  v55 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v51, self->_styleInventoryQuery, v52, v53, v54);
  objc_msgSend_setValue_forKey_(v12, v56, v55, CHTextSynthesisStyleInventoryDebugView[0], v57, v58);

  v63 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v59, self->_skipStyleInventoryLookup, v60, v61, v62);
  objc_msgSend_setValue_forKey_(v12, v64, v63, CHTextSynthesisOptionSkipStyleInventoryLookup[0], v65, v66);

  v71 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v67, self->_saveStyleSample, v68, v69, v70);
  objc_msgSend_setValue_forKey_(v12, v72, v71, CHTextSynthesisOptionSaveStyleSample[0], v73, v74);

  v79 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v75, self->_chunkSynthesisSuggestion, v76, v77, v78);
  objc_msgSend_setValue_forKey_(v12, v80, v79, CHTextSynthesisOptionSynthesisSuggestion[0], v81, v82);

  v87 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v83, self->_forceInventoryDefaultStyle, v84, v85, v86);
  objc_msgSend_setValue_forKey_(v12, v88, v87, CHTextSynthesisOptionForceInventoryDefaultStyle[0], v89, v90);

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v121 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8, v9);
  v127 = objc_msgSend_styleDrawings(self, v10, v11, v12, v13, v14);
  v126 = objc_msgSend_styleContents(self, v15, v16, v17, v18, v19);
  v125 = objc_msgSend_stylePredictions(self, v20, v21, v22, v23, v24);
  isFastPath = objc_msgSend_isFastPath(self, v25, v26, v27, v28, v29);
  v124 = objc_msgSend_fitWidth(self, v30, v31, v32, v33, v34);
  v123 = objc_msgSend_fitHeight(self, v35, v36, v37, v38, v39);
  v119 = objc_msgSend_synthesizeCharacterInventoryBehavior(self, v40, v41, v42, v43, v44);
  v122 = objc_msgSend_xZeroDrawing(self, v45, v46, v47, v48, v49);
  v118 = objc_msgSend_fastPathAsXZero(self, v50, v51, v52, v53, v54);
  v60 = objc_msgSend_fastPathUseDefaultStyle(self, v55, v56, v57, v58, v59);
  v66 = objc_msgSend_styleInventoryQuery(self, v61, v62, v63, v64, v65);
  v72 = objc_msgSend_skipStyleInventoryLookup(self, v67, v68, v69, v70, v71);
  LOBYTE(zone) = objc_msgSend_saveStyleSample(self, v73, v74, v75, v76, v77);
  v83 = objc_msgSend_distanceBetweenDigits(self, v78, v79, v80, v81, v82);
  v89 = objc_msgSend_forwardProcessRatio(self, v84, v85, v86, v87, v88);
  v95 = objc_msgSend_backwardProcessRatio(self, v90, v91, v92, v93, v94);
  v101 = objc_msgSend_seed(self, v96, v97, v98, v99, v100);
  v107 = objc_msgSend_chunkSynthesisSuggestion(self, v102, v103, v104, v105, v106);
  v117 = objc_msgSend_forceInventoryDefaultStyle(self, v108, v109, v110, v111, v112);
  BYTE4(v116) = zone;
  BYTE3(v116) = v72;
  BYTE2(v116) = v66;
  BYTE1(v116) = v60;
  LOBYTE(v116) = v118;
  isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle = objc_msgSend_initWithStyleDrawings_styleContents_stylePredictions_isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle_(v121, v113, v127, v126, v125, isFastPath, v124, v123, v119, v122, v116, v83, v89, v95, v101, v107, v117);

  return isFastPath_fitWidth_fitHeight_synthesizeCharacterInventoryBehavior_xZeroDrawing_fastPathAsXZero_fastPathUseDefaultStyle_styleInventoryQuery_skipStyleInventoryLookup_saveStyleSample_distanceBetweenDigits_forwardProcessRatio_backwardProcessRatio_seed_synthesisSuggestion_forceInventoryDefaultStyle;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v4, self->_styleDrawings, @"styleDrawings", v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_styleContents, @"styleContents", v8, v9);
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, self->_stylePredictions, @"stylePredictions", v11, v12);
  objc_msgSend_encodeBool_forKey_(coderCopy, v13, self->_isFastPath, @"isFastPath", v14, v15);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, self->_forwardProcessRatio, @"forwardProcessRatio", v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v19, self->_backwardProcessRatio, @"backwardProcessRatio", v20, v21);
  objc_msgSend_encodeObject_forKey_(coderCopy, v22, self->_fitWidth, @"fitWidth", v23, v24);
  objc_msgSend_encodeObject_forKey_(coderCopy, v25, self->_fitHeight, @"fitHeight", v26, v27);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v28, self->_synthesizeCharacterInventoryBehavior, @"synthesizeCharacterInventory", v29, v30);
  objc_msgSend_encodeObject_forKey_(coderCopy, v31, self->_xZeroDrawing, @"xZeroDrawing", v32, v33);
  objc_msgSend_encodeBool_forKey_(coderCopy, v34, self->_fastPathAsXZero, @"fastPathAsXZero", v35, v36);
  objc_msgSend_encodeBool_forKey_(coderCopy, v37, self->_fastPathUseDefaultStyle, @"fastPathUseDefaultStyle", v38, v39);
  objc_msgSend_encodeBool_forKey_(coderCopy, v40, self->_styleInventoryQuery, @"styleInventoryQuery", v41, v42);
  objc_msgSend_encodeBool_forKey_(coderCopy, v43, self->_skipStyleInventoryLookup, @"skipStyleInventoryLookup", v44, v45);
  objc_msgSend_encodeBool_forKey_(coderCopy, v46, self->_saveStyleSample, @"saveStyleSampleLookup", v47, v48);
  objc_msgSend_encodeObject_forKey_(coderCopy, v49, self->_distanceBetweenDigits, @"distanceBetweenDigits", v50, v51);
  objc_msgSend_encodeObject_forKey_(coderCopy, v52, self->_seed, @"fixedSeed", v53, v54);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v55, self->_chunkSynthesisSuggestion, @"chunkSynthesisSuggestion", v56, v57);
  objc_msgSend_encodeBool_forKey_(coderCopy, v58, self->_forceInventoryDefaultStyle, @"forceInventoryDefaultStyle", v59, v60);
}

- (CHSynthesisRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v14 = objc_msgSend_setWithObjects_(v5, v10, v6, v11, v12, v13, v7, v8, v9, 0);
  v18 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v15, v14, @"styleDrawings", v16, v17);
  styleDrawings = self->_styleDrawings;
  self->_styleDrawings = v18;

  v23 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v20, v14, @"styleContents", v21, v22);
  styleContents = self->_styleContents;
  self->_styleContents = v23;

  v28 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v25, v14, @"stylePredictions", v26, v27);
  stylePredictions = self->_stylePredictions;
  self->_stylePredictions = v28;

  self->_isFastPath = objc_msgSend_decodeBoolForKey_(coderCopy, v30, @"isFastPath", v31, v32, v33);
  v34 = objc_opt_class();
  v38 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v35, v34, @"forwardProcessRatio", v36, v37);
  forwardProcessRatio = self->_forwardProcessRatio;
  self->_forwardProcessRatio = v38;

  v40 = objc_opt_class();
  v44 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v41, v40, @"backwardProcessRatio", v42, v43);
  backwardProcessRatio = self->_backwardProcessRatio;
  self->_backwardProcessRatio = v44;

  v46 = objc_opt_class();
  v50 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v47, v46, @"fitWidth", v48, v49);
  fitWidth = self->_fitWidth;
  self->_fitWidth = v50;

  v52 = objc_opt_class();
  v56 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v53, v52, @"fitHeight", v54, v55);
  fitHeight = self->_fitHeight;
  self->_fitHeight = v56;

  v62 = objc_msgSend_decodeIntegerForKey_(coderCopy, v58, @"synthesizeCharacterInventory", v59, v60, v61);
  v63 = 2;
  if (v62 < 2)
  {
    v63 = v62;
  }

  if (v62 < 0)
  {
    v63 = 0;
  }

  self->_synthesizeCharacterInventoryBehavior = v63;
  v64 = objc_opt_class();
  v68 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v65, v64, @"xZeroDrawing", v66, v67);
  xZeroDrawing = self->_xZeroDrawing;
  self->_xZeroDrawing = v68;

  self->_fastPathAsXZero = objc_msgSend_decodeBoolForKey_(coderCopy, v70, @"fastPathAsXZero", v71, v72, v73);
  self->_fastPathUseDefaultStyle = objc_msgSend_decodeBoolForKey_(coderCopy, v74, @"fastPathUseDefaultStyle", v75, v76, v77);
  self->_styleInventoryQuery = objc_msgSend_decodeBoolForKey_(coderCopy, v78, @"styleInventoryQuery", v79, v80, v81);
  self->_skipStyleInventoryLookup = objc_msgSend_decodeBoolForKey_(coderCopy, v82, @"skipStyleInventoryLookup", v83, v84, v85);
  self->_saveStyleSample = objc_msgSend_decodeBoolForKey_(coderCopy, v86, @"saveStyleSampleLookup", v87, v88, v89);
  v90 = objc_opt_class();
  v94 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v91, v90, @"distanceBetweenDigits", v92, v93);
  distanceBetweenDigits = self->_distanceBetweenDigits;
  self->_distanceBetweenDigits = v94;

  v96 = objc_opt_class();
  v100 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v97, v96, @"fixedSeed", v98, v99);
  seed = self->_seed;
  self->_seed = v100;

  self->_chunkSynthesisSuggestion = objc_msgSend_decodeIntegerForKey_(coderCopy, v102, @"chunkSynthesisSuggestion", v103, v104, v105);
  self->_forceInventoryDefaultStyle = objc_msgSend_decodeBoolForKey_(coderCopy, v106, @"forceInventoryDefaultStyle", v107, v108, v109);

  return self;
}

@end