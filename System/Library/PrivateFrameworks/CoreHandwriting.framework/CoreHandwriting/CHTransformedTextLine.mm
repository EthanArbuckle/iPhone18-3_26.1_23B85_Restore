@interface CHTransformedTextLine
+ ($196E0A09E4C4E138EEBEC6372622051A)derivePrincipalLinesFromPoints:(SEL)points strokes:(id)strokes;
+ ($196E0A09E4C4E138EEBEC6372622051A)principalLinesFromSegments:(SEL)segments;
+ (BOOL)validateCountMatchTranscriptions:(id)transcriptions strokeIndexes:(id)indexes;
+ (id)addNonTextSegmentsAndLines:(id)lines nontextGroups:(id)groups outNonTextStrokes:(id *)strokes;
+ (id)createTextLineWithStrokes:(id)strokes tokens:(id)tokens locale:(id)locale classification:(int64_t)classification principalLines:(id *)lines principalPoints:(id)points shouldCancel:(id)cancel;
+ (id)createTokensFromTranscriptions:(id)transcriptions strokeIndexes:(id)indexes fullText:(id)text locale:(id)locale;
+ (id)drawingForTransformedTextLines:(id)lines;
+ (id)extractStrokesFromDrawing:(id)drawing classification:(int64_t)classification;
+ (id)textLineCandidate:(id)candidate tokens:(id)tokens locale:(id)locale strokeClassification:(int64_t)classification string:(id)string points:(const void *)points strokePoints:(const void *)strokePoints alphaShape:(const void *)self0 initialOrientationEstimate:(double)self1 useAltString:(BOOL)self2 outFitScore:(double *)self3 shouldCancel:(id)self4;
+ (id)textLineForDrawing:(id)drawing transcriptions:(id)transcriptions strokeIndexes:(id)indexes fullText:(id)text principalLines:(id *)lines locale:(id)locale strokeClassification:(int64_t)classification shouldCancel:(id)self0;
+ (id)textLineForDrawing:(id)drawing transcriptions:(id)transcriptions strokeIndexes:(id)indexes fullText:(id)text principalPoints:(id)points locale:(id)locale strokeClassification:(int64_t)classification shouldCancel:(id)self0;
+ (id)textLineForReflowableSynthesisResultToken:(id)token locale:(id)locale;
+ (id)textLineForStrokes:(id)strokes tokens:(id)tokens locale:(id)locale strokeClassification:(int64_t)classification initialOrientationEstimate:(double)estimate shouldCancel:(id)cancel;
+ (id)textLineForTokens:(id)tokens locale:(id)locale strokeGroup:(id)group strokes:(id)strokes strokeProvider:(id)provider skipLineOrientationEstimate:(BOOL)estimate useCache:(BOOL)cache shouldCancel:(id)self0;
+ (id)textLineForTokensWithPrincipalLines:(id)lines strokes:(id)strokes locale:(id)locale strokeClassification:(int64_t)classification;
+ (id)textLineFromCachedResults:(id)results tokens:(id)tokens strokes:(id)strokes estimatedOrientation:(double)orientation locale:(id)locale strokeClassification:(int64_t)classification;
+ (id)textLineFromTextResult:(id)result principalLineResult:(id)lineResult shouldUseRefinablePath:(BOOL)path strokeProvider:(id)provider shouldCancel:(id)cancel;
+ (id)textLinesFromContext:(id)context strokeGroupingResult:(id)result contextStrokes:(id)strokes initialStrokes:(id)initialStrokes strokeProvider:(id)provider relatedNonTextStrokes:(id)textStrokes excludedStrokeTypes:(id)types skipLineOrientationEstimate:(BOOL)self0 useCache:(BOOL)self1 progress:(id)self2 shouldCancel:(id)self3;
+ (unint64_t)determineTokenProperties:(id)properties fullText:(id)text tokenRange:(_NSRange)range;
+ (void)assignNontextGroups:(id)groups toTextLines:(id)lines;
- ($196E0A09E4C4E138EEBEC6372622051A)principalLines;
- (BoundingBox)boundingBox;
- (CHTransformedTextLine)initWithSegment:(id)segment;
- (CHTransformedTextLine)initWithSegments:(id)segments;
- (CHTransformedTextLine)initWithStrokes:(id)strokes tokens:(id)tokens locale:(id)locale strokeClassification:(int64_t)classification principalLines:(id *)lines principalPoints:(id)points transform:(CGAffineTransform *)transform;
- (CHTransformedTextLine)initWithStrokes:(id)strokes tokens:(id)tokens points:(const void *)points strokePoints:(const void *)strokePoints locale:(id)locale strokeClassification:(int64_t)classification principalLines:(id *)lines principalPoints:(id)self0 transform:(CGAffineTransform *)self1;
- (id).cxx_construct;
- (id)addRelatedNontextStrokes:(id)strokes tokenRangesForNonTextStrokes:(id)textStrokes strokeProvider:(id)provider groupIndex:(id)index;
- (id)locale;
- (id)principalPoints;
- (id)splitIntoTokens;
- (id)string;
- (id)textSize;
- (id)textStrokes;
- (id)tokenDistanceSizes:(BOOL)sizes;
- (id)tokens;
- (vector<CGPoint,)clippedPoints:(CHTransformedTextLine *)self min:(SEL)min max:(CGSize)max;
- (vector<CGPoint,)filteredPoints:(CHTransformedTextLine *)self;
- (vector<CGPoint,)points;
- (vector<std::vector<CGPoint>,)strokePoints;
- (void)_addTextLineSegment:(id)segment;
- (void)addSupportStroke:(id)stroke;
- (void)addSupportStroke:(id)stroke tokenRange:(_NSRange)range;
- (void)addTransform:(CGAffineTransform *)transform;
- (void)mergeTransformedText:(id)text;
@end

@implementation CHTransformedTextLine

- (CHTransformedTextLine)initWithStrokes:(id)strokes tokens:(id)tokens locale:(id)locale strokeClassification:(int64_t)classification principalLines:(id *)lines principalPoints:(id)points transform:(CGAffineTransform *)transform
{
  strokesCopy = strokes;
  tokensCopy = tokens;
  localeCopy = locale;
  pointsCopy = points;
  v24 = objc_msgSend_init(self, v19, v20, v21, v22, v23);
  if (v24)
  {
    v25 = [CHTransformedTextSegment alloc];
    var1 = lines->var2.var1;
    v40[4] = lines->var2.var0;
    v40[5] = var1;
    v27 = lines->var3.var1;
    v40[6] = lines->var3.var0;
    v40[7] = v27;
    v28 = lines->var0.var1;
    v40[0] = lines->var0.var0;
    v40[1] = v28;
    v29 = lines->var1.var1;
    v40[2] = lines->var1.var0;
    v40[3] = v29;
    v30 = *&transform->c;
    v39[0] = *&transform->a;
    v39[1] = v30;
    v39[2] = *&transform->tx;
    v32 = objc_msgSend_initWithStrokes_tokens_locale_strokeClassification_principalLines_principalPoints_transform_(v25, v31, strokesCopy, tokensCopy, localeCopy, classification, v40, pointsCopy, v39);
    v37 = objc_msgSend_initWithSegment_(v24, v33, v32, v34, v35, v36);
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (CHTransformedTextLine)initWithStrokes:(id)strokes tokens:(id)tokens points:(const void *)points strokePoints:(const void *)strokePoints locale:(id)locale strokeClassification:(int64_t)classification principalLines:(id *)lines principalPoints:(id)self0 transform:(CGAffineTransform *)self1
{
  strokesCopy = strokes;
  tokensCopy = tokens;
  localeCopy = locale;
  principalPointsCopy = principalPoints;
  v24 = objc_msgSend_init(self, v19, v20, v21, v22, v23);
  if (v24)
  {
    v25 = [CHTransformedTextSegment alloc];
    var1 = lines->var2.var1;
    v40[4] = lines->var2.var0;
    v40[5] = var1;
    v27 = lines->var3.var1;
    v40[6] = lines->var3.var0;
    v40[7] = v27;
    v28 = lines->var0.var1;
    v40[0] = lines->var0.var0;
    v40[1] = v28;
    v29 = lines->var1.var1;
    v40[2] = lines->var1.var0;
    v40[3] = v29;
    v30 = *&transform->c;
    v39[0] = *&transform->a;
    v39[1] = v30;
    v39[2] = *&transform->tx;
    v32 = objc_msgSend_initWithStrokes_tokens_locale_strokeClassification_principalLines_principalPoints_transform_(v25, v31, strokesCopy, tokensCopy, localeCopy, classification, v40, principalPointsCopy, v39);
    v37 = objc_msgSend_initWithSegment_(v24, v33, v32, v34, v35, v36);
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (CHTransformedTextLine)initWithSegment:(id)segment
{
  v40[1] = *MEMORY[0x1E69E9840];
  segmentCopy = segment;
  v13 = objc_msgSend_init(self, v5, v6, v7, v8, v9);
  if (v13)
  {
    v40[0] = segmentCopy;
    v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v40, 1, v11, v12);
    v15 = *(v13 + 496);
    *(v13 + 496) = v14;

    *(v13 + 480) = objc_msgSend_strokeClassification(segmentCopy, v16, v17, v18, v19, v20);
    if (segmentCopy)
    {
      objc_msgSend_principalLines(segmentCopy, v21, v22, v23, v24, v25);
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
    }

    *(v13 + 352) = v34;
    *(v13 + 368) = v35;
    *(v13 + 320) = v32;
    *(v13 + 336) = v33;
    *(v13 + 416) = v38;
    *(v13 + 432) = v39;
    *(v13 + 384) = v36;
    *(v13 + 400) = v37;
    v26 = MEMORY[0x1E695F058];
    MinX = CGRectGetMinX(*MEMORY[0x1E695F058]);
    MaxX = CGRectGetMaxX(*v26);
    MinY = CGRectGetMinY(*v26);
    MaxY = CGRectGetMaxY(*v26);
    *(v13 + 448) = MinX;
    *(v13 + 456) = MaxX;
    *(v13 + 464) = MinY;
    *(v13 + 472) = MaxY;
    *(v13 + 488) = 0;
  }

  return v13;
}

- (CHTransformedTextLine)initWithSegments:(id)segments
{
  v76 = *MEMORY[0x1E69E9840];
  segmentsCopy = segments;
  v11 = objc_msgSend_init(self, v6, v7, v8, v9, v10);
  v12 = v11;
  if (v11)
  {
    objc_storeStrong((v11 + 496), segments);
    v13 = objc_opt_class();
    if (v13)
    {
      objc_msgSend_principalLinesFromSegments_(v13, v14, segmentsCopy, v16, v17, v18);
    }

    else
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
    }

    v19 = v70;
    v21 = v67;
    v20 = v68;
    *(v12 + 352) = v69;
    *(v12 + 368) = v19;
    *(v12 + 320) = v21;
    *(v12 + 336) = v20;
    v22 = v74;
    v24 = v71;
    v23 = v72;
    *(v12 + 416) = v73;
    *(v12 + 432) = v22;
    *(v12 + 384) = v24;
    *(v12 + 400) = v23;
    v25 = objc_msgSend_set(MEMORY[0x1E696AB50], v14, v15, v16, v17, v18);
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v26 = segmentsCopy;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v63, v75, 16, v28);
    if (v34)
    {
      v35 = *v64;
      do
      {
        v36 = 0;
        do
        {
          if (*v64 != v35)
          {
            objc_enumerationMutation(v26);
          }

          v37 = MEMORY[0x1E696AD98];
          v38 = objc_msgSend_strokeClassification(*(*(&v63 + 1) + 8 * v36), v29, v30, v31, v32, v33, v63);
          v43 = objc_msgSend_numberWithInteger_(v37, v39, v38, v40, v41, v42);
          objc_msgSend_addObject_(v25, v44, v43, v45, v46, v47);

          ++v36;
        }

        while (v34 != v36);
        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v63, v75, 16, v33);
      }

      while (v34);
    }

    *(v12 + 480) = 1;
    v52 = objc_msgSend_countForObject_(v25, v48, &unk_1EF1ED8A0, v49, v50, v51);
    if (v52 < objc_msgSend_countForObject_(v25, v53, &unk_1EF1ED8B8, v54, v55, v56))
    {
      *(v12 + 480) = 2;
    }

    v57 = MEMORY[0x1E695F058];
    MinX = CGRectGetMinX(*MEMORY[0x1E695F058]);
    MaxX = CGRectGetMaxX(*v57);
    MinY = CGRectGetMinY(*v57);
    MaxY = CGRectGetMaxY(*v57);
    *(v12 + 448) = MinX;
    *(v12 + 456) = MaxX;
    *(v12 + 464) = MinY;
    *(v12 + 472) = MaxY;
    *(v12 + 488) = 0;
  }

  return v12;
}

+ (id)textLineForTokens:(id)tokens locale:(id)locale strokeGroup:(id)group strokes:(id)strokes strokeProvider:(id)provider skipLineOrientationEstimate:(BOOL)estimate useCache:(BOOL)cache shouldCancel:(id)self0
{
  tokensCopy = tokens;
  localeCopy = locale;
  groupCopy = group;
  strokesCopy = strokes;
  providerCopy = provider;
  cancelCopy = cancel;
  if (estimate)
  {
    v24 = 1.79769313e308;
LABEL_9:
    v44 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = 0.0;
    goto LABEL_9;
  }

  v25 = groupCopy;
  v31 = objc_msgSend_writingDirectionSortedSubstrokes(v25, v26, v27, v28, v29, v30);
  v37 = objc_msgSend_count(v31, v32, v33, v34, v35, v36);

  v24 = 0.0;
  v43 = v37 >= 7;
  v44 = v37 < 7;
  if (v43)
  {
    objc_msgSend_averageWritingOrientation(v25, v38, v39, v40, v41, v42);
    v46 = v45;
    objc_msgSend_averageWritingOrientation(v25, v47, v48, v49, v50, v51);
    v24 = -atan2(v46, v52);
  }

LABEL_10:
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 1;
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v102 = 0;
  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 3221225472;
  v98[2] = sub_183816328;
  v98[3] = &unk_1E6DDECA0;
  v98[4] = &v103;
  v98[5] = &v99;
  objc_msgSend_enumerateObjectsUsingBlock_(tokensCopy, v19, v98, v20, v21, v22);
  if (*(v100 + 24) == 1)
  {
    v53 = objc_opt_class();
    v58 = objc_msgSend_changeTokensToVisualOrder_(v53, v54, tokensCopy, v55, v56, v57);
    v64 = objc_msgSend_mutableCopy(v58, v59, v60, v61, v62, v63);

    tokensCopy = v64;
  }

  if (*(v104 + 24) == 1)
  {
    v65 = providerCopy;
    v66 = objc_opt_class();
    v72 = objc_msgSend_classification(groupCopy, v67, v68, v69, v70, v71);
    v74 = objc_msgSend_textLineForTokensWithPrincipalLines_strokes_locale_strokeClassification_(v66, v73, tokensCopy, strokesCopy, localeCopy, v72);
    if (v74)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v75 = qword_1EA84DCA0;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v76 = "Succesfully loaded principal lines from recognition result tokens.";
LABEL_39:
        _os_log_impl(&dword_18366B000, v75, OS_LOG_TYPE_DEFAULT, v76, buf, 2u);
        goto LABEL_45;
      }

      goto LABEL_45;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v85 = qword_1EA84DCA0;
    if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v86 = "Failed to load principal lines from recognition result tokens.";
    goto LABEL_32;
  }

  v65 = providerCopy;
  if (v44 || !cache)
  {
    goto LABEL_34;
  }

  v77 = objc_opt_class();
  v83 = objc_msgSend_classification(groupCopy, v78, v79, v80, v81, v82);
  v74 = objc_msgSend_textLineFromCachedResults_tokens_strokes_estimatedOrientation_locale_strokeClassification_(v77, v84, providerCopy, tokensCopy, strokesCopy, localeCopy, v83, v24);
  if (!v74)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v85 = qword_1EA84DCA0;
    if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v86 = "Failed to load principal lines from cached results.";
LABEL_32:
    _os_log_impl(&dword_18366B000, v85, OS_LOG_TYPE_DEFAULT, v86, buf, 2u);
LABEL_33:

LABEL_34:
    v87 = objc_opt_class();
    v93 = objc_msgSend_classification(groupCopy, v88, v89, v90, v91, v92);
    v74 = objc_msgSend_textLineForStrokes_tokens_locale_strokeClassification_initialOrientationEstimate_shouldCancel_(v87, v94, strokesCopy, tokensCopy, localeCopy, v93, cancelCopy, v24);
    if (v74)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v75 = qword_1EA84DCA0;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v76 = "Succesfully found principal lines from alpha shape matching.";
        goto LABEL_39;
      }
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v75 = qword_1EA84DCA0;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v75, OS_LOG_TYPE_DEFAULT, "Failed to find principal lines from alpha shape matching.", buf, 2u);
      }

      v74 = 0;
    }

    goto LABEL_45;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v75 = qword_1EA84DCA0;
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v76 = "Succesfully loaded principal lines from cached results.";
    goto LABEL_39;
  }

LABEL_45:

  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(&v103, 8);

  return v74;
}

+ (id)textLineForTokensWithPrincipalLines:(id)lines strokes:(id)strokes locale:(id)locale strokeClassification:(int64_t)classification
{
  v191 = *MEMORY[0x1E69E9840];
  linesCopy = lines;
  strokesCopy = strokes;
  localeCopy = locale;
  v152 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11, v12, v13);
  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  obj = linesCopy;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v185, v190, 16, v15);
  if (v21)
  {
    v149 = *v186;
    do
    {
      v22 = 0;
      do
      {
        if (*v186 != v149)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v185 + 1) + 8 * v22);
        v24 = objc_msgSend_strokeIndexes(v23, v16, v17, v18, v19, v20);
        v29 = objc_msgSend_objectsAtIndexes_(strokesCopy, v25, v24, v26, v27, v28);

        objc_msgSend_originalBounds(v23, v30, v31, v32, v33, v34);
        x = v193.origin.x;
        y = v193.origin.y;
        width = v193.size.width;
        height = v193.size.height;
        if (CGRectIsNull(v193))
        {
          v44 = objc_msgSend_strokeIndexes(v23, v39, v40, v41, v42, v43);
          v49 = objc_msgSend_objectsAtIndexes_(strokesCopy, v45, v44, v46, v47, v48);

          objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v50, v49, v51, v52, v53);
          x = v54;
          y = v55;
          width = v56;
          height = v57;
        }

        if (v23)
        {
          objc_msgSend_principalLines(v23, v39, v40, v41, v42, v43);
          v58 = v169;
          v59 = v170;
          v154 = v171;
          v155 = v172;
          v156 = v173;
          v157 = v174;
          v158 = v175;
          v159 = v176;
          v160 = v177;
          v161 = v178;
          v162 = v179;
          v163 = v180;
          v164 = v181;
          v165 = v182;
          v166 = v183;
          v167 = v184;
        }

        else
        {
          v166 = 0.0;
          v167 = 0.0;
          v164 = 0.0;
          v165 = 0.0;
          v162 = 0.0;
          v163 = 0.0;
          v160 = 0.0;
          v161 = 0.0;
          v158 = 0.0;
          v159 = 0.0;
          v156 = 0.0;
          v157 = 0.0;
          v154 = 0.0;
          v155 = 0.0;
          v59 = 0.0;
          v58 = 0.0;
        }

        if (width == 0.0)
        {
          v60 = 1.0;
        }

        else
        {
          v60 = width;
        }

        if (height == 0.0)
        {
          v61 = 1.0;
        }

        else
        {
          v61 = height;
        }

        v62 = objc_msgSend_mutableCopy(v23, v39, v40, v41, v42, v43);
        v63 = MEMORY[0x1E696AC90];
        v69 = objc_msgSend_count(v29, v64, v65, v66, v67, v68);
        v73 = objc_msgSend_indexSetWithIndexesInRange_(v63, v70, 0, v69, v71, v72);
        objc_msgSend_setStrokeIndexes_(v62, v74, v73, v75, v76, v77);

        if (objc_msgSend_hasValidPrincipalPoints(v23, v78, v79, v80, v81, v82))
        {
          v88 = objc_msgSend_principalPoints(v23, v83, v84, v85, v86, v87);
          v89 = sub_183816AA0(v88, x, y, width, height);
        }

        else
        {
          v102 = MEMORY[0x1E695DF70];
          v103 = objc_msgSend_strokeIndexes(v23, v83, v84, v85, v86, v87);
          v109 = objc_msgSend_count(v103, v104, v105, v106, v107, v108);
          v89 = objc_msgSend_arrayWithCapacity_(v102, v110, v109, v111, v112, v113);

          for (i = 0; ; ++i)
          {
            v120 = objc_msgSend_strokeIndexes(v23, v114, v115, v116, v117, v118);
            v126 = i < objc_msgSend_count(v120, v121, v122, v123, v124, v125);

            if (!v126)
            {
              break;
            }

            objc_msgSend_addObject_(v89, v127, &unk_1EF1EC598, v128, v129, v130);
          }
        }

        v90 = [CHTransformedTextSegment alloc];
        v189 = v62;
        v94 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v91, &v189, 1, v92, v93);
        v169 = x + v58 * v60;
        v170 = y + v59 * v61;
        v171 = x + v154 * v60;
        v172 = y + v155 * v61;
        v173 = x + v156 * v60;
        v174 = y + v157 * v61;
        v175 = x + v158 * v60;
        v176 = y + v159 * v61;
        v177 = x + v160 * v60;
        v178 = y + v161 * v61;
        v179 = x + v162 * v60;
        v180 = y + v163 * v61;
        v181 = x + v164 * v60;
        v182 = y + v165 * v61;
        v183 = x + v166 * v60;
        v184 = y + v167 * v61;
        v95 = *(MEMORY[0x1E695EFD0] + 16);
        v168[0] = *MEMORY[0x1E695EFD0];
        v168[1] = v95;
        v168[2] = *(MEMORY[0x1E695EFD0] + 32);
        v97 = objc_msgSend_initWithStrokes_tokens_locale_strokeClassification_principalLines_principalPoints_transform_(v90, v96, v29, v94, localeCopy, classification, &v169, v89, v168);

        objc_msgSend_addObject_(v152, v98, v97, v99, v100, v101);
        ++v22;
      }

      while (v22 != v21);
      v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v185, v190, 16, v20);
      v21 = v131;
    }

    while (v131);
  }

  if (objc_msgSend_count(v152, v132, v133, v134, v135, v136))
  {
    v137 = [CHTransformedTextLine alloc];
    v142 = objc_msgSend_initWithSegments_(v137, v138, v152, v139, v140, v141);
    objc_msgSend_setFromCachedTokens_(v142, v143, 1, v144, v145, v146);
  }

  else
  {
    v142 = 0;
  }

  return v142;
}

+ (id)textLineFromCachedResults:(id)results tokens:(id)tokens strokes:(id)strokes estimatedOrientation:(double)orientation locale:(id)locale strokeClassification:(int64_t)classification
{
  v247 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  tokensCopy = tokens;
  strokesCopy = strokes;
  localeCopy = locale;
  v200 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13, v14, v15, v16);
  v242 = 0u;
  v243 = 0u;
  v240 = 0u;
  v241 = 0u;
  obj = tokensCopy;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v240, v246, 16, v18);
  if (v24)
  {
    v197 = *v241;
    do
    {
      v25 = 0;
      v193 = v24;
      do
      {
        if (*v241 != v197)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v240 + 1) + 8 * v25);
        v27 = objc_msgSend_strokeIndexes(v26, v19, v20, v21, v22, v23);
        v217 = objc_msgSend_objectsAtIndexes_(strokesCopy, v28, v27, v29, v30, v31);

        v32 = MEMORY[0x1E695DF70];
        v38 = objc_msgSend_count(v217, v33, v34, v35, v36, v37);
        v43 = objc_msgSend_arrayWithCapacity_(v32, v39, v38, v40, v41, v42);
        v238 = 0u;
        v239 = 0u;
        v236 = 0u;
        v237 = 0u;
        v44 = v217;
        v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v236, v245, 16, v46);
        if (v52)
        {
          v53 = *v237;
          do
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v237 != v53)
              {
                objc_enumerationMutation(v44);
              }

              v55 = objc_msgSend_strokeIdentifier(*(*(&v236 + 1) + 8 * i), v47, v48, v49, v50, v51);
              objc_msgSend_addObject_(v43, v56, v55, v57, v58, v59);
            }

            v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v47, &v236, v245, 16, v51);
          }

          while (v52);
        }

        v64 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v60, v43, v61, v62, v63);
        v218 = objc_msgSend_cachedTranscriptionForStrokeGroup_(resultsCopy, v65, v64, v66, v67, v68);

        if (!v218)
        {
          goto LABEL_34;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_34;
        }

        v69 = v218;
        v75 = objc_msgSend_topModelTranscriptionPath(v69, v70, v71, v72, v73, v74);
        v79 = objc_msgSend_tokensInTranscriptionPath_atColumnIndex_(v69, v76, v75, 0, v77, v78);
        v216 = objc_msgSend_firstObject(v79, v80, v81, v82, v83, v84);

        if (!v216)
        {
          goto LABEL_34;
        }

        objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v85, v44, v86, v87, v88);
        v90 = v89;
        v92 = v91;
        v94 = v93;
        v96 = v95;
        objc_msgSend_principalLines(v216, v97, v98, v99, v100, v101);
        v211 = v221;
        v212 = v220;
        v209 = v223;
        v210 = v222;
        if (v94 == 0.0)
        {
          v102 = 1.0;
        }

        else
        {
          v102 = v94;
        }

        if (v96 == 0.0)
        {
          v103 = 1.0;
        }

        else
        {
          v103 = v96;
        }

        v104 = v90 + v224 * v102;
        v105 = v90 + v226 * v102;
        v207 = v229;
        v208 = v228;
        v205 = v231;
        v206 = v230;
        v203 = v233;
        v204 = v232;
        v202 = v234;
        v213 = v235;
        v214 = v92 + v227 * v103;
        v215 = v92 + v225 * v103;
        if (vabdd_f64(-atan2(v214 - v215, v105 - v104), orientation) > 0.04)
        {

LABEL_34:
          goto LABEL_35;
        }

        v111 = objc_msgSend_mutableCopy(v26, v106, v107, v108, v109, v110);
        v112 = MEMORY[0x1E696AC90];
        v118 = objc_msgSend_count(v44, v113, v114, v115, v116, v117);
        v122 = objc_msgSend_indexSetWithIndexesInRange_(v112, v119, 0, v118, v120, v121);
        objc_msgSend_setStrokeIndexes_(v111, v123, v122, v124, v125, v126);

        if (objc_msgSend_hasValidPrincipalPoints(v26, v127, v128, v129, v130, v131))
        {
          v137 = objc_msgSend_principalPoints(v26, v132, v133, v134, v135, v136);
          v138 = sub_183816AA0(v137, v90, v92, v94, v96);
        }

        else
        {
          v151 = MEMORY[0x1E695DF70];
          v152 = objc_msgSend_strokeIndexes(v26, v132, v133, v134, v135, v136);
          v158 = objc_msgSend_count(v152, v153, v154, v155, v156, v157);
          v138 = objc_msgSend_arrayWithCapacity_(v151, v159, v158, v160, v161, v162);

          for (j = 0; ; ++j)
          {
            v169 = objc_msgSend_strokeIndexes(v26, v163, v164, v165, v166, v167);
            v175 = j < objc_msgSend_count(v169, v170, v171, v172, v173, v174);

            if (!v175)
            {
              break;
            }

            objc_msgSend_addObject_(v138, v176, &unk_1EF1EC5B0, v177, v178, v179);
          }
        }

        v139 = [CHTransformedTextSegment alloc];
        v244 = v111;
        v143 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v140, &v244, 1, v141, v142);
        v220 = v90 + v212 * v102;
        v221 = v92 + v211 * v103;
        v222 = v90 + v210 * v102;
        v223 = v92 + v209 * v103;
        v224 = v104;
        v225 = v215;
        v226 = v105;
        v227 = v214;
        v228 = v90 + v208 * v102;
        v229 = v92 + v207 * v103;
        v230 = v90 + v206 * v102;
        v231 = v92 + v205 * v103;
        v232 = v90 + v204 * v102;
        v233 = v92 + v203 * v103;
        v234 = v90 + v202 * v102;
        v235 = v92 + v213 * v103;
        v144 = *(MEMORY[0x1E695EFD0] + 16);
        v219[0] = *MEMORY[0x1E695EFD0];
        v219[1] = v144;
        v219[2] = *(MEMORY[0x1E695EFD0] + 32);
        v146 = objc_msgSend_initWithStrokes_tokens_locale_strokeClassification_principalLines_principalPoints_transform_(v139, v145, v44, v143, localeCopy, classification, &v220, v138, v219);

        objc_msgSend_addObject_(v200, v147, v146, v148, v149, v150);
        ++v25;
      }

      while (v25 != v193);
      v180 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v240, v246, 16, v23);
      v24 = v180;
    }

    while (v180);
  }

  if (objc_msgSend_count(v200, v181, v182, v183, v184, v185))
  {
    v186 = [CHTransformedTextLine alloc];
    v191 = objc_msgSend_initWithSegments_(v186, v187, v200, v188, v189, v190);
  }

  else
  {
LABEL_35:
    v191 = 0;
  }

  return v191;
}

+ (id)textLineCandidate:(id)candidate tokens:(id)tokens locale:(id)locale strokeClassification:(int64_t)classification string:(id)string points:(const void *)points strokePoints:(const void *)strokePoints alphaShape:(const void *)self0 initialOrientationEstimate:(double)self1 useAltString:(BOOL)self2 outFitScore:(double *)self3 shouldCancel:(id)self4
{
  v394 = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
  tokensCopy = tokens;
  localeCopy = locale;
  stringCopy = string;
  cancelCopy = cancel;
  v19 = objc_autoreleasePoolPush();
  v338 = tokensCopy;
  v334 = objc_msgSend_count(tokensCopy, v20, v21, v22, v23, v24);
  if (estimate == 1.79769313e308)
  {
    v335 = &unk_1EF1EC5C8;
  }

  else
  {
    v29 = objc_opt_class();
    v335 = objc_msgSend_checkAvailableInterceptsForString_skipAmbiguousCharacters_(v29, v30, stringCopy, v334 > 4, v31, v32);
  }

  v33 = MEMORY[0x1E695EFF8];
  context = v19;
  if (*(shape + 1) == *shape)
  {
    goto LABEL_18;
  }

  if (estimate == 1.79769313e308)
  {
    goto LABEL_6;
  }

  v67 = objc_msgSend_objectAtIndexedSubscript_(v335, v25, 1, v26, v27, v28);
  if (objc_msgSend_unsignedIntegerValue(v67, v68, v69, v70, v71, v72))
  {
    v77 = objc_msgSend_objectAtIndexedSubscript_(v335, v73, 2, v74, v75, v76);
    v83 = objc_msgSend_unsignedIntegerValue(v77, v78, v79, v80, v81, v82);

    if (v83)
    {
LABEL_18:
      if (estimate == 1.79769313e308)
      {
        estimate = 0.0;
      }

      *__p = 0u;
      memset(v374, 0, 112);
      v84 = objc_opt_class();
      if (v84)
      {
        objc_msgSend_principalLinesFromTokens_strokes_strokePoints_orientation_useAltString_(v84, v85, v338, candidateCopy, strokePoints, altString, estimate);
      }

      else
      {
        *__p = 0u;
        memset(v374, 0, 112);
      }

      v100 = MEMORY[0x1E695DF70];
      v101 = objc_msgSend_count(candidateCopy, v85, v86, v87, v88, v89);
      v106 = objc_msgSend_arrayWithCapacity_(v100, v102, v101, v103, v104, v105);
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v107 = v338;
      v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v108, &v357, v384, 16, v109);
      if (v115)
      {
        v116 = *v358;
        do
        {
          for (i = 0; i != v115; ++i)
          {
            if (*v358 != v116)
            {
              objc_enumerationMutation(v107);
            }

            v118 = *(*(&v357 + 1) + 8 * i);
            objc_msgSend_originalBounds(v118, v110, v111, v112, v113, v114);
            x = v396.origin.x;
            y = v396.origin.y;
            width = v396.size.width;
            height = v396.size.height;
            if (CGRectIsNull(v396))
            {
              v128 = objc_msgSend_strokeIndexes(v118, v123, v124, v125, v126, v127);
              v133 = objc_msgSend_objectsAtIndexes_(candidateCopy, v129, v128, v130, v131, v132);

              objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v134, v133, v135, v136, v137);
              x = v138;
              y = v139;
              width = v140;
              height = v141;
            }

            if (objc_msgSend_hasValidPrincipalPoints(v118, v123, v124, v125, v126, v127))
            {
              v147 = objc_msgSend_principalPoints(v118, v142, v143, v144, v145, v146);
              v148 = sub_183816AA0(v147, x, y, width, height);

              objc_msgSend_addObjectsFromArray_(v106, v149, v148, v150, v151, v152);
            }

            else
            {
              for (j = 0; ; ++j)
              {
                v154 = objc_msgSend_strokeIndexes(v118, v142, v143, v144, v145, v146);
                v160 = j < objc_msgSend_count(v154, v155, v156, v157, v158, v159);

                if (!v160)
                {
                  break;
                }

                objc_msgSend_addObject_(v106, v110, &unk_1EF1EC5F8, v112, v113, v114);
              }
            }
          }

          v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v110, &v357, v384, 16, v114);
        }

        while (v115);
      }

      v161.n128_u64[0] = __p[0];
      v162.n128_u64[0] = __p[1];
      v163.n128_u64[0] = *&v374[16];
      v164.n128_u64[0] = *MEMORY[0x1E695EFF8];
      v165.n128_u64[0] = *(MEMORY[0x1E695EFF8] + 8);
      v166 = *__p == *MEMORY[0x1E695EFF8] && *&__p[1] == v165.n128_f64[0];
      if (v166 && ((v161.n128_u64[0] = *&v374[24], v162.n128_u64[0] = *&v374[32], *v374 == v164.n128_f64[0]) ? (v167 = *&v374[8] == v165.n128_f64[0]) : (v167 = 0), v167 ? (v168 = *&v374[16] == v164.n128_f64[0]) : (v168 = 0), v168 ? (v169 = *&v374[24] == v165.n128_f64[0]) : (v169 = 0), v169 ? (v170 = *&v374[32] == v164.n128_f64[0]) : (v170 = 0), v170 ? (v171 = *&v374[40] == v165.n128_f64[0]) : (v171 = 0), v171 ? (v172 = *&v374[48] == v164.n128_f64[0]) : (v172 = 0), v172 ? (v173 = *&v374[56] == v165.n128_f64[0]) : (v173 = 0), v173 ? (v174 = *&v374[64] == v164.n128_f64[0]) : (v174 = 0), v174 ? (v175 = *&v374[72] == v165.n128_f64[0]) : (v175 = 0), v175 ? (v176 = *&v374[80] == v164.n128_f64[0]) : (v176 = 0), v176 ? (v177 = *&v374[88] == v165.n128_f64[0]) : (v177 = 0), v177 && ((v162.n128_u64[0] = *&v374[104], v161.n128_u64[0] = *&v374[96], *&v374[104] == v165.n128_f64[0]) ? (v331 = *&v374[96] == v164.n128_f64[0]) : (v331 = 0), !v331 ? (v332 = 0) : (v332 = 1), v332)) || cancelCopy && (cancelCopy[2](v163, v164, v165, v161, v162) & 1) != 0)
      {

        v92 = 0;
        v178 = 0;
        goto LABEL_185;
      }

      v179 = [CHTransformedTextLine alloc];
      *&buf[64] = *&v374[48];
      *&buf[80] = *&v374[64];
      *&buf[96] = *&v374[80];
      *&buf[112] = *&v374[96];
      *buf = *__p;
      *&buf[16] = *v374;
      *&buf[32] = *&v374[16];
      *&buf[48] = *&v374[32];
      v180 = *(MEMORY[0x1E695EFD0] + 16);
      v365 = *MEMORY[0x1E695EFD0];
      v366 = v180;
      v367 = *(MEMORY[0x1E695EFD0] + 32);
      v92 = objc_msgSend_initWithStrokes_tokens_points_strokePoints_locale_strokeClassification_principalLines_principalPoints_transform_(v179, v181, candidateCopy, v107, points, strokePoints, localeCopy, classification, buf, v106, &v365);
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v182 = qword_1EA84DCA0;
      if (os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG))
      {
        v188 = objc_msgSend_length(stringCopy, v183, v184, v185, v186, v187);
        *buf = 134218240;
        *&buf[4] = v188;
        *&buf[12] = 2048;
        *&buf[14] = estimate;
        _os_log_impl(&dword_18366B000, v182, OS_LOG_TYPE_DEBUG, "Created initial transformed text line of length %lu and orientation %4.2f using initial orientation estimate.", buf, 0x16u);
      }

      v35 = 0;
      v34 = 0;
      goto LABEL_124;
    }
  }

  else
  {
  }

LABEL_6:
  sub_1838CCD64(stringCopy, 100, __p);
  v34 = __p[0];
  v35 = __p[1];
  v380 = *&v374[72];
  v381 = *&v374[88];
  v382 = *&v374[104];
  v383 = v375;
  v376 = *&v374[8];
  v377 = *&v374[24];
  v378 = *&v374[40];
  v379 = *&v374[56];
  __p[1] = 0;
  __p[0] = 0;
  *v374 = 0;
  if (v35 != v34)
  {
    if (((v35 - v34) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  *&v374[72] = v380;
  *&v374[88] = v381;
  *&v374[104] = v382;
  v375 = v383;
  *&v374[8] = v376;
  *&v374[24] = v377;
  *&v374[40] = v378;
  *&v374[56] = v379;
  v36 = objc_opt_class();
  if (objc_msgSend_shouldDeformRenderedAscendersDescenders_(v36, v37, localeCopy, v38, v39, v40))
  {
    v41 = objc_opt_class();
    objc_msgSend_blindAscenderDeformValue_(v41, v42, localeCopy, v43, v44, v45);
    v46 = objc_opt_class();
    objc_msgSend_blindDescenderDeformValue_(v46, v47, localeCopy, v48, v49, v50);
    sub_1838C3F04(__p, buf);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *buf;
    *v374 = *&buf[16];
    *&v374[72] = *&buf[88];
    *&v374[88] = *&buf[104];
    *&v374[104] = *&buf[120];
    v375 = v393;
    *&v374[8] = *&buf[24];
    *&v374[24] = *&buf[40];
    *&v374[40] = *&buf[56];
    *&v374[56] = *&buf[72];
  }

  memset(buf, 0, 128);
  v51 = objc_opt_class();
  if (v51)
  {
    objc_msgSend_principalLinesForPoints_writtenAlphaShape_imgPointsAndPrincipalLines_shouldCancel_(v51, v52, points, shape, __p, cancelCopy);
    v61 = *&buf[8];
    v62 = *&buf[40];
    v63 = *&buf[32];
    v64 = *&buf[56];
    v65 = *&buf[48];
    v59.n128_u64[0] = *&buf[72];
    v60.n128_u64[0] = *&buf[64];
    v57.n128_u64[0] = *&buf[88];
    v58.n128_u64[0] = *&buf[80];
    v55.n128_u64[0] = *&buf[104];
    v56.n128_u64[0] = *&buf[96];
    v53.n128_u64[0] = *&buf[120];
    v54.n128_u64[0] = *&buf[112];
    v66 = *v33;
    if (*buf != *v33)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v53.n128_u64[0] = 0;
    v54.n128_u64[0] = 0;
    v55.n128_u64[0] = 0;
    v56.n128_u64[0] = 0;
    v57.n128_u64[0] = 0;
    v58.n128_u64[0] = 0;
    v59.n128_u64[0] = 0;
    v60.n128_u64[0] = 0;
    v64 = 0.0;
    v65 = 0.0;
    v62 = 0.0;
    memset(buf, 0, 128);
    v63 = 0.0;
    v61 = 0.0;
    v66 = *v33;
    if (*v33 != 0.0)
    {
      goto LABEL_38;
    }
  }

  v90 = v33[1];
  if (v61 == v90 && *&buf[16] == v66 && *&buf[24] == v90 && v63 == v66 && v62 == v90 && v65 == v66 && v64 == v90 && v60.n128_f64[0] == v66 && v59.n128_f64[0] == v90 && v58.n128_f64[0] == v66 && v57.n128_f64[0] == v90 && v56.n128_f64[0] == v66 && v55.n128_f64[0] == v90 && v54.n128_f64[0] == v66 && v53.n128_f64[0] == v90)
  {
LABEL_40:
    v91 = 0;
    v92 = 0;
    v93 = __p[0];
    if (!__p[0])
    {
      goto LABEL_123;
    }

LABEL_122:
    __p[1] = v93;
    operator delete(v93);
    goto LABEL_123;
  }

LABEL_38:
  if (cancelCopy && ((cancelCopy[2])(v53, v54, v55, v56, v57, v58, v59, v60) & 1) != 0)
  {
    goto LABEL_40;
  }

  v94 = objc_opt_class();
  v364[4] = *&buf[64];
  v364[5] = *&buf[80];
  v364[6] = *&buf[96];
  v364[7] = *&buf[112];
  v364[0] = *buf;
  v364[1] = *&buf[16];
  v364[2] = *&buf[32];
  v364[3] = *&buf[48];
  if (v94)
  {
    objc_msgSend_flipPrincipalLine_points_string_outWasFlipped_(v94, v95, v364, points, stringCopy, 0);
  }

  else
  {
    v371 = 0u;
    v372 = 0u;
    v369 = 0u;
    v370 = 0u;
    v367 = 0u;
    v368 = 0u;
    v365 = 0u;
    v366 = 0u;
  }

  *&buf[64] = v369;
  *&buf[80] = v370;
  *&buf[96] = v371;
  *&buf[112] = v372;
  *buf = v365;
  *&buf[16] = v366;
  *&buf[32] = v367;
  *&buf[48] = v368;
  v189 = MEMORY[0x1E695DF70];
  v190 = objc_msgSend_count(candidateCopy, v95, v96, v97, v98, v99);
  v200 = objc_msgSend_arrayWithCapacity_(v189, v191, v190, v192, v193, v194);
  for (k = 0; k < objc_msgSend_count(candidateCopy, v195, v196, v197, v198, v199); ++k)
  {
    objc_msgSend_addObject_(v200, v202, &unk_1EF1EC5E0, v203, v204, v205);
  }

  v206 = [CHTransformedTextLine alloc];
  v369 = *&buf[64];
  v370 = *&buf[80];
  v371 = *&buf[96];
  v372 = *&buf[112];
  v365 = *buf;
  v366 = *&buf[16];
  v367 = *&buf[32];
  v368 = *&buf[48];
  v207 = MEMORY[0x1E695EFD0];
  v208 = *(MEMORY[0x1E695EFD0] + 16);
  *v385 = *MEMORY[0x1E695EFD0];
  *&v385[16] = v208;
  v386 = *(MEMORY[0x1E695EFD0] + 32);
  v210 = objc_msgSend_initWithStrokes_tokens_points_strokePoints_locale_strokeClassification_principalLines_principalPoints_transform_(v206, v209, candidateCopy, v338, points, strokePoints, localeCopy, classification, &v365, v200, v385);
  v371 = 0u;
  v372 = 0u;
  v369 = 0u;
  v370 = 0u;
  v367 = 0u;
  v368 = 0u;
  v365 = 0u;
  v366 = 0u;
  v211 = objc_opt_class();
  if (v211)
  {
    objc_msgSend_fixPrincipalLinesOrientation_useAltString_skipAmbiguousCharacters_(v211, v212, v210, altString, v334 > 4, v213);
  }

  else
  {
    v371 = 0u;
    v372 = 0u;
    v369 = 0u;
    v370 = 0u;
    v367 = 0u;
    v368 = 0u;
    v365 = 0u;
    v366 = 0u;
  }

  v214 = [CHTransformedTextLine alloc];
  v388 = v369;
  v389 = v370;
  v390 = v371;
  v391 = v372;
  *v385 = v365;
  *&v385[16] = v366;
  v386 = v367;
  v387 = v368;
  v215 = v207[1];
  *v361 = *v207;
  v362 = v215;
  v363 = v207[2];
  v92 = objc_msgSend_initWithStrokes_tokens_points_strokePoints_locale_strokeClassification_principalLines_principalPoints_transform_(v214, v216, candidateCopy, v338, points, strokePoints, localeCopy, classification, v385, v200, v361);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v217 = qword_1EA84DCA0;
  if (os_log_type_enabled(v217, OS_LOG_TYPE_DEBUG))
  {
    v228 = objc_msgSend_length(stringCopy, v218, v219, v220, v221, v222);
    if (v92)
    {
      objc_msgSend_orientation(v92, v223, v224, v225, v226, v227);
    }

    else
    {
      v229 = 0x7FEFFFFFFFFFFFFFLL;
    }

    *v385 = 134218240;
    *&v385[4] = v228;
    *&v385[12] = 2048;
    *&v385[14] = v229;
    _os_log_impl(&dword_18366B000, v217, OS_LOG_TYPE_DEBUG, "Created initial transformed text line of length %lu and orientation %4.2f using alpha shape matching.", v385, 0x16u);
  }

  v91 = 1;
  v93 = __p[0];
  if (__p[0])
  {
    goto LABEL_122;
  }

LABEL_123:
  if ((v91 & 1) == 0)
  {
    goto LABEL_183;
  }

LABEL_124:
  v230 = objc_opt_class();
  objc_msgSend_textLineFitScore_useAltString_(v230, v231, v92, altString, v232, v233);
  v235 = v234;
  *__p = 0u;
  memset(v374, 0, 112);
  v237 = objc_opt_class();
  v346 = 0;
  v347 = 0;
  v348 = 0;
  v238 = v35 - v34;
  v166 = v35 == v34;
  v239 = MEMORY[0x1E695EFF8];
  if (!v166)
  {
    if ((v238 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  v353 = v380;
  v354 = v381;
  v355 = v382;
  v356 = v383;
  v349 = v376;
  v350 = v377;
  v351 = v378;
  v352 = v379;
  if (v237)
  {
    objc_msgSend_refinedPrincipalLinesForTextLine_points_alphaShape_renderedTextPointsAndLines_useAltString_shouldCancel_(v237, v236, v92, points, shape, &v346, altString, cancelCopy);
    if (v346)
    {
      v347 = v346;
      operator delete(v346);
    }
  }

  else
  {
    v240.n128_u64[1] = 0;
    *__p = 0u;
    memset(v374, 0, 112);
  }

  v241 = *v239;
  if (*__p != *v239 || (v242 = v239[1], *&__p[1] != v242) || *v374 != v241 || *&v374[8] != v242 || *&v374[16] != v241 || *&v374[24] != v242 || *&v374[32] != v241 || *&v374[40] != v242 || *&v374[48] != v241 || *&v374[56] != v242 || *&v374[64] != v241 || *&v374[72] != v242 || *&v374[80] != v241 || *&v374[88] != v242 || *&v374[96] != v241 || (v240.n128_u64[0] = *&v374[104], *&v374[104] != v242))
  {
    v243 = objc_opt_class();
    v249 = v243;
    v369 = *&v374[48];
    v370 = *&v374[64];
    v371 = *&v374[80];
    v372 = *&v374[96];
    v365 = *__p;
    v366 = *v374;
    v367 = *&v374[16];
    v368 = *&v374[32];
    if (v92)
    {
      objc_msgSend_points(v92, v244, v245, v246, v247, v248);
      if (v249)
      {
LABEL_148:
        objc_msgSend_flipPrincipalLine_points_string_outWasFlipped_(v249, v244, &v365, v385, stringCopy, 0);
LABEL_152:
        *&v374[48] = *&buf[64];
        *&v374[64] = *&buf[80];
        *&v374[80] = *&buf[96];
        *&v374[96] = *&buf[112];
        *__p = *buf;
        *v374 = *&buf[16];
        *&v374[16] = *&buf[32];
        *&v374[32] = *&buf[48];
        if (*v385)
        {
          *&v385[8] = *v385;
          operator delete(*v385);
        }

        v250 = [CHTransformedTextLine alloc];
        v256 = objc_msgSend_textStrokes(v92, v251, v252, v253, v254, v255);
        v267 = objc_msgSend_tokens(v92, v257, v258, v259, v260, v261);
        if (v92)
        {
          objc_msgSend_points(v92, v262, v263, v264, v265, v266);
          objc_msgSend_strokePoints(v92, v268, v269, v270, v271, v272);
        }

        else
        {
          v361[0] = 0;
          v361[1] = 0;
          *&v362 = 0;
          v343 = 0;
          v344 = 0;
          v345 = 0;
        }

        v273 = objc_msgSend_locale(v92, v262, v263, v264, v265, v266);
        v279 = objc_msgSend_strokeClassification(v92, v274, v275, v276, v277, v278);
        *&buf[64] = *&v374[48];
        *&buf[80] = *&v374[64];
        *&buf[96] = *&v374[80];
        *&buf[112] = *&v374[96];
        *buf = *__p;
        *&buf[16] = *v374;
        *&buf[32] = *&v374[16];
        *&buf[48] = *&v374[32];
        v285 = objc_msgSend_principalPoints(v92, v280, v281, v282, v283, v284);
        v286 = MEMORY[0x1E695EFD0];
        v287 = *(MEMORY[0x1E695EFD0] + 16);
        *v385 = *MEMORY[0x1E695EFD0];
        *&v385[16] = v287;
        v386 = *(MEMORY[0x1E695EFD0] + 32);
        v289 = objc_msgSend_initWithStrokes_tokens_points_strokePoints_locale_strokeClassification_principalLines_principalPoints_transform_(v250, v288, v256, v267, v361, &v343, v273, v279, buf, v285, v385);

        v290 = v343;
        if (v343)
        {
          v291 = v344;
          v292 = v343;
          if (v344 != v343)
          {
            v293 = v344;
            do
            {
              v295 = *(v293 - 3);
              v293 -= 24;
              v294 = v295;
              if (v295)
              {
                *(v291 - 2) = v294;
                operator delete(v294);
              }

              v291 = v293;
            }

            while (v293 != v290);
            v292 = v343;
          }

          v344 = v290;
          operator delete(v292);
        }

        if (v361[0])
        {
          v361[1] = v361[0];
          operator delete(v361[0]);
        }

        memset(buf, 0, 128);
        v296 = objc_opt_class();
        if (v296)
        {
          objc_msgSend_fixPrincipalLinesOrientation_useAltString_skipAmbiguousCharacters_(v296, v297, v289, altString, v334 > 4, v298);
        }

        else
        {
          memset(buf, 0, 128);
        }

        v299 = [CHTransformedTextLine alloc];
        v388 = *&buf[64];
        v389 = *&buf[80];
        v390 = *&buf[96];
        v391 = *&buf[112];
        *v385 = *buf;
        *&v385[16] = *&buf[16];
        v386 = *&buf[32];
        v387 = *&buf[48];
        v305 = objc_msgSend_principalPoints(v289, v300, v301, v302, v303, v304);
        v306 = v286[1];
        *v361 = *v286;
        v362 = v306;
        v363 = v286[2];
        v308 = objc_msgSend_initWithStrokes_tokens_points_strokePoints_locale_strokeClassification_principalLines_principalPoints_transform_(v299, v307, candidateCopy, v338, points, strokePoints, localeCopy, classification, v385, v305, v361);

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v309 = qword_1EA84DCA0;
        if (os_log_type_enabled(v309, OS_LOG_TYPE_DEBUG))
        {
          v320 = objc_msgSend_length(stringCopy, v310, v311, v312, v313, v314);
          if (v92)
          {
            objc_msgSend_orientation(v92, v315, v316, v317, v318, v319);
          }

          else
          {
            v321 = 0x7FEFFFFFFFFFFFFFLL;
          }

          *v385 = 134218240;
          *&v385[4] = v320;
          *&v385[12] = 2048;
          *&v385[14] = v321;
          _os_log_impl(&dword_18366B000, v309, OS_LOG_TYPE_DEBUG, "Created refined transformed text line of length %lu and orientation %4.2f.", v385, 0x16u);
        }

        v322 = objc_opt_class();
        objc_msgSend_textLineFitScore_useAltString_(v322, v323, v308, altString, v324, v325);
        v327 = v326;
        if (v326 < v235)
        {
          v328 = v308;

          v235 = v327;
          v92 = v328;
        }

        goto LABEL_180;
      }
    }

    else
    {
      memset(v385, 0, 24);
      if (v243)
      {
        goto LABEL_148;
      }
    }

    memset(buf, 0, 128);
    goto LABEL_152;
  }

LABEL_180:
  if (!v92 || cancelCopy && ((cancelCopy[2])(v240) & 1) != 0)
  {
LABEL_183:
    v178 = 0;
    if (!v34)
    {
      goto LABEL_185;
    }

    goto LABEL_184;
  }

  if (score)
  {
    *score = v235;
  }

  v178 = 1;
  if (v34)
  {
LABEL_184:
    operator delete(v34);
  }

LABEL_185:

  objc_autoreleasePoolPop(context);
  if (v178)
  {
    v329 = v92;
  }

  else
  {
    v329 = 0;
  }

  return v329;
}

+ (id)textLineForStrokes:(id)strokes tokens:(id)tokens locale:(id)locale strokeClassification:(int64_t)classification initialOrientationEstimate:(double)estimate shouldCancel:(id)cancel
{
  v175 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  tokensCopy = tokens;
  localeCopy = locale;
  cancelCopy = cancel;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v13 = qword_1EA84DC88;
  spid = os_signpost_id_generate(v13);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v14 = qword_1EA84DC88;
  v15 = v14;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v15, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CHPrincipalLines", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v16 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN CHPrincipalLines", buf, 2u);
  }

  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  obj = tokensCopy;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v164, v172, 16, v18);
  if (v24)
  {
    v25 = *v165;
    v26 = &stru_1EF1C0318;
    do
    {
      v27 = 0;
      v28 = v26;
      do
      {
        if (*v165 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v164 + 1) + 8 * v27);
        if ((objc_msgSend_properties(v29, v19, v20, v21, v22, v23) & 0x20) != 0)
        {
          v35 = objc_msgSend_stringByAppendingString_(v28, v30, @" ", v32, v33, v34);

          v28 = v35;
        }

        v36 = objc_msgSend_string(v29, v30, v31, v32, v33, v34);
        v26 = objc_msgSend_stringByAppendingString_(v28, v37, v36, v38, v39, v40);

        ++v27;
        v28 = v26;
      }

      while (v24 != v27);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v164, v172, 16, v23);
    }

    while (v24);
  }

  else
  {
    v26 = &stru_1EF1C0318;
  }

  v41 = v26;
  v42 = objc_opt_class();
  v52 = v41;
  if (objc_msgSend_shouldTryAlternativeStringRender_(v42, v43, localeCopy, v44, v45, v46))
  {
    v53 = objc_opt_class();
    v52 = objc_msgSend_stringForRendering_useAltChars_(v53, v54, v41, 0, v55, v56);
  }

  v134 = v52;
  if (!cancelCopy || (cancelCopy[2]() & 1) == 0)
  {
    v161 = 0;
    v162 = 0;
    v163 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v57 = objc_msgSend_count(strokesCopy, v47, v48, v49, v50, v51);
    if (v57)
    {
      if (v57 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_18368964C();
    }

    __src = 0;
    v156 = 0;
    v157 = 0;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v58 = strokesCopy;
    v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v151, v171, 16, v60);
    v142 = v41;
    if (v64)
    {
      v65 = *v152;
      do
      {
        for (i = 0; i != v64; ++i)
        {
          if (*v152 != v65)
          {
            objc_enumerationMutation(v58);
          }

          v170 = *(*(&v151 + 1) + 8 * i);
          v67 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v61, &v170, 1, v62, v63);
          sub_1838C3014(v67, buf);

          v68 = *buf;
          v69 = *&buf[8] - *buf;
          v70 = (*&buf[8] - *buf) >> 4;
          if (v70 >= 1)
          {
            v71 = v156;
            if (v157 - v156 >= v69)
            {
              if (*buf != *&buf[8])
              {
                memmove(v156, *buf, *&buf[8] - *buf);
              }

              v156 = &v71[v69];
              v41 = v142;
            }

            else
            {
              v72 = (v156 - __src) >> 4;
              v73 = v72 + v70;
              if (v73 >> 60)
              {
                sub_18369761C();
              }

              v74 = v157 - __src;
              if ((v157 - __src) >> 3 > v73)
              {
                v73 = v74 >> 3;
              }

              if (v74 >= 0x7FFFFFFFFFFFFFF0)
              {
                v75 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v75 = v73;
              }

              if (v75)
              {
                if (!(v75 >> 60))
                {
                  operator new();
                }

                sub_183688F00();
              }

              v76 = 16 * v72;
              v77 = (16 * v72 + v69);
              v78 = v76;
              do
              {
                v79 = *v68++;
                *v78++ = v79;
                v69 -= 16;
              }

              while (v69);
              v80 = (v156 - v71);
              memcpy(v77, v71, v156 - v71);
              v81 = &v80[v77];
              v156 = v71;
              v82 = __src;
              v83 = (v76 - (v71 - __src));
              memcpy(v83, __src, v71 - __src);
              __src = v83;
              v156 = v81;
              v157 = 0;
              v41 = v142;
              if (v82)
              {
                operator delete(v82);
              }
            }
          }

          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }
        }

        v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v61, &v151, v171, 16, v63);
      }

      while (v64);
    }

    v150[3] = 0;
    objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v84, v58, v85, v86, v87);
    v88 = -estimate;
    if (estimate == 1.79769313e308)
    {
      v88 = 1.79769313e308;
    }

    sub_1838C46BC(&__src, v41, v150, v88);
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v138 = v58;
    v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v138, v89, &v146, v169, 16, v90);
    if (v94)
    {
      v95 = 0;
      v140 = *v147;
      do
      {
        v96 = 0;
        v141 = v94;
        do
        {
          if (*v147 != v140)
          {
            objc_enumerationMutation(v138);
          }

          v168 = *(*(&v146 + 1) + 8 * v96);
          v97 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v91, &v168, 1, v92, v93);
          sub_1838C3014(v97, &__p);

          v143 = v96;
          v99 = __p;
          v98 = v145;
          if (__p != v145)
          {
            v100 = 0;
            while (1)
            {
              *buf = *v99;
              if ((*(v150[0] + ((v95 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v95))
              {
                v102 = v100;
                v103 = v100 >> 4;
                if (((v100 >> 4) + 1) >> 60)
                {
                  goto LABEL_147;
                }

                if (v100 >> 4 != -1)
                {
                  if (!(((v100 >> 4) + 1) >> 60))
                  {
                    operator new();
                  }

                  goto LABEL_148;
                }

                *(16 * v103) = *buf;
                v100 = 16 * v103 + 16;
                memcpy(0, 0, v102);
                v104 = v162;
                if (v162 < v163)
                {
                  *v162 = *buf;
                  v101 = (v104 + 16);
                }

                else
                {
                  v105 = v161;
                  v106 = v162 - v161;
                  v107 = (v162 - v161) >> 4;
                  v108 = v107 + 1;
                  if ((v107 + 1) >> 60)
                  {
LABEL_147:
                    sub_18369761C();
                  }

                  v109 = v163 - v161;
                  if ((v163 - v161) >> 3 > v108)
                  {
                    v108 = v109 >> 3;
                  }

                  if (v109 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v110 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v110 = v108;
                  }

                  if (v110)
                  {
                    if (!(v110 >> 60))
                    {
                      operator new();
                    }

LABEL_148:
                    sub_183688F00();
                  }

                  *(16 * v107) = *buf;
                  v101 = 16 * v107 + 16;
                  memcpy(0, v105, v106);
                  v161 = 0;
                  v162 = v101;
                  v163 = 0;
                  if (v105)
                  {
                    operator delete(v105);
                  }
                }

                v162 = v101;
              }

              ++v95;
              if (++v99 == v98)
              {
                goto LABEL_89;
              }
            }
          }

          v100 = 0;
LABEL_89:
          v111 = v159;
          if (v159 >= v160)
          {
            v113 = 0xAAAAAAAAAAAAAAABLL * ((v159 - v158) >> 3) + 1;
            v41 = v142;
            if (v113 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_18368964C();
            }

            if (0x5555555555555556 * ((v160 - v158) >> 3) > v113)
            {
              v113 = 0x5555555555555556 * ((v160 - v158) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v160 - v158) >> 3) >= 0x555555555555555)
            {
              v114 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v114 = v113;
            }

            v174 = &v158;
            if (v114)
            {
              if (v114 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_183688F00();
            }

            v115 = (8 * ((v159 - v158) >> 3));
            *buf = 0;
            *&buf[8] = v115;
            *&buf[16] = v115;
            v115[1] = 0;
            v115[2] = 0;
            *v115 = 0;
            if (v100)
            {
              if ((v100 & 0x8000000000000000) == 0)
              {
                operator new();
              }

              sub_18369761C();
            }

            v112 = (v115 + 3);
            v116 = v158;
            v117 = v115 - (v159 - v158);
            memcpy(v117, v158, v159 - v158);
            v158 = v117;
            v159 = (v115 + 3);
            v160 = 0;
            if (v116)
            {
              operator delete(v116);
            }
          }

          else
          {
            *v159 = 0;
            *(v111 + 1) = 0;
            *(v111 + 2) = 0;
            v41 = v142;
            if (v100)
            {
              if ((v100 & 0x8000000000000000) == 0)
              {
                operator new();
              }

              sub_18369761C();
            }

            v112 = v111 + 24;
          }

          v159 = v112;
          if (__p)
          {
            v145 = __p;
            operator delete(__p);
          }

          v96 = v143 + 1;
        }

        while (v143 + 1 != v141);
        v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v138, v91, &v146, v169, 16, v93);
      }

      while (v94);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v118 = qword_1EA84DCA0;
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v150[1];
      *&buf[12] = 2048;
      *&buf[14] = (v162 - v161) >> 4;
      _os_log_impl(&dword_18366B000, v118, OS_LOG_TYPE_DEFAULT, "Clipping: initial point count = %ld, final count = %ld", buf, 0x16u);
    }

    *buf = xmmword_1839CE920;
    *&buf[16] = xmmword_1839CE920;
    v119 = v161;
    if (v161 != v162)
    {
      v120 = 1.79769313e308;
      v121 = -1.79769313e308;
      v122 = -1.79769313e308;
      v123 = 1.79769313e308;
      while (1)
      {
        v124 = *v119;
        if (v123 <= *v119)
        {
          if (v122 >= v124)
          {
LABEL_120:
            v125 = v119[1];
            if (v120 > v125)
            {
              goto LABEL_121;
            }

            goto LABEL_125;
          }
        }

        else
        {
          *buf = *v119;
          v123 = v124;
          if (v122 >= v124)
          {
            goto LABEL_120;
          }
        }

        *&buf[8] = v124;
        v122 = v124;
        v125 = v119[1];
        if (v120 > v125)
        {
LABEL_121:
          *&buf[16] = v125;
          v120 = v125;
          if (v121 < v125)
          {
            goto LABEL_126;
          }

          goto LABEL_117;
        }

LABEL_125:
        if (v121 < v125)
        {
LABEL_126:
          *&buf[24] = v125;
          v121 = v125;
        }

LABEL_117:
        v119 += 2;
        if (v119 == v162)
        {
          if (v121 - v120 != 0.0)
          {
            sub_1838CD6B0(&v161, &__p);
            sub_1838C505C(&__p);
          }

          break;
        }
      }
    }

    if (v150[0])
    {
      operator delete(v150[0]);
    }

    if (__src)
    {
      v156 = __src;
      operator delete(__src);
    }

    v126 = v158;
    if (v158)
    {
      v127 = v159;
      v128 = v158;
      if (v159 != v158)
      {
        v129 = v159;
        do
        {
          v131 = *(v129 - 3);
          v129 -= 24;
          v130 = v131;
          if (v131)
          {
            *(v127 - 2) = v130;
            operator delete(v130);
          }

          v127 = v129;
        }

        while (v129 != v126);
        v128 = v158;
      }

      v159 = v126;
      operator delete(v128);
    }

    if (v161)
    {
      v162 = v161;
      operator delete(v161);
    }
  }

  return 0;
}

+ (BOOL)validateCountMatchTranscriptions:(id)transcriptions strokeIndexes:(id)indexes
{
  v35 = *MEMORY[0x1E69E9840];
  transcriptionsCopy = transcriptions;
  indexesCopy = indexes;
  v12 = objc_msgSend_count(transcriptionsCopy, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_count(indexesCopy, v13, v14, v15, v16, v17);
  if (v12 != v18)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v19 = qword_1EA84DCA0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v31 = 134218240;
      v32 = objc_msgSend_count(transcriptionsCopy, v20, v21, v22, v23, v24);
      v33 = 2048;
      v34 = objc_msgSend_count(indexesCopy, v25, v26, v27, v28, v29);
      _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_ERROR, "Unable to build textLineForDrawing because the number of transcriptions (%lu) does not equal the number of index sets (%lu)", &v31, 0x16u);
    }
  }

  return v12 == v18;
}

+ (id)extractStrokesFromDrawing:(id)drawing classification:(int64_t)classification
{
  v26 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  v6 = objc_opt_class();
  v10 = objc_msgSend_strokesFromDrawing_classification_(v6, v7, drawingCopy, classification, v8, v9);
  if (objc_msgSend_count(v10, v11, v12, v13, v14, v15))
  {
    v16 = v10;
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v17 = qword_1EA84DCA0;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v24 = 134217984;
      v25 = objc_msgSend_strokeCount(drawingCopy, v18, v19, v20, v21, v22);
      _os_log_impl(&dword_18366B000, v17, OS_LOG_TYPE_ERROR, "Unable to create reflowable text line from drawing, drawing has %ld strokes, no extracted strokes.", &v24, 0xCu);
    }

    v16 = 0;
  }

  return v16;
}

+ (id)createTokensFromTranscriptions:(id)transcriptions strokeIndexes:(id)indexes fullText:(id)text locale:(id)locale
{
  transcriptionsCopy = transcriptions;
  indexesCopy = indexes;
  textCopy = text;
  localeCopy = locale;
  v80 = objc_msgSend_array(MEMORY[0x1E695DF70], v10, v11, v12, v13, v14);
  v20 = 0;
  v21 = 0;
  while (v20 < objc_msgSend_count(transcriptionsCopy, v15, v16, v17, v18, v19))
  {
    v27 = objc_msgSend_objectAtIndexedSubscript_(transcriptionsCopy, v22, v20, v24, v25, v26);
    v32 = objc_msgSend_objectAtIndexedSubscript_(indexesCopy, v28, v20, v29, v30, v31);
    v38 = objc_msgSend_length(textCopy, v33, v34, v35, v36, v37);
    v40 = objc_msgSend_rangeOfString_options_range_(textCopy, v39, v27, 0, v21, v38 - v21);
    v42 = v41;
    v43 = objc_msgSend_determineTokenProperties_fullText_tokenRange_(self, v41, v27, textCopy, v40, v41);
    if (objc_msgSend_hasPrefix_(v27, v44, @" ", v45, v46, v47))
    {
      v53 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v48, v49, v50, v51, v52);
      v58 = objc_msgSend_stringByTrimmingCharactersInSet_(v27, v54, v53, v55, v56, v57);

      v27 = v58;
    }

    if (objc_msgSend_count(v32, v48, v49, v50, v51, v52))
    {
      v59 = [CHTokenizedTextResultToken alloc];
      v65 = objc_msgSend_count(v32, v60, v61, v62, v63, v64);
      v67 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_(v59, v66, v27, v32, 0, v43, localeCopy, 1, 1.0, 1.0, 1.0, 1.0, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), v65);
      objc_msgSend_addObject_(v80, v68, v67, v69, v70, v71);
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v67 = qword_1EA84DCA0;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v67, OS_LOG_TYPE_ERROR, "Empty stroke indexes for segment of drawing.", buf, 2u);
      }
    }

    if (v40 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = &v42[v40];
    }

    ++v20;
  }

  if (objc_msgSend_count(v80, v22, v23, v24, v25, v26))
  {
    v77 = objc_msgSend_copy(v80, v72, v73, v74, v75, v76);
  }

  else
  {
    v77 = 0;
  }

  return v77;
}

+ (unint64_t)determineTokenProperties:(id)properties fullText:(id)text tokenRange:(_NSRange)range
{
  location = range.location;
  textCopy = text;
  if (objc_msgSend_hasPrefix_(properties, v8, @" ", v9, v10, v11))
  {
    v16 = 33;
LABEL_3:

    return v16;
  }

  v16 = 1;
  if (!location || location == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_3;
  }

  v18 = objc_msgSend_composedCharacterAtIndex_(textCopy, v12, location - 1, v13, v14, v15);
  v24 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v19, v20, v21, v22, v23);
  v25 = sub_1837A4F0C(v18, v24);

  if (v25)
  {
    v26 = 33;
  }

  else
  {
    v26 = 1;
  }

  return v26;
}

+ ($196E0A09E4C4E138EEBEC6372622051A)derivePrincipalLinesFromPoints:(SEL)points strokes:(id)strokes
{
  strokesCopy = strokes;
  v13 = a5;
  if (strokesCopy && (v14 = objc_msgSend_count(strokesCopy, v8, v9, v10, v11, v12), v14 == objc_msgSend_count(v13, v15, v16, v17, v18, v19)))
  {
    sub_1838C3014(v13, &v30);
    v20 = sub_18381A760(strokesCopy);
    v21 = objc_opt_class();
    __p = 0;
    v28 = 0;
    v29 = 0;
    if (v31 != v30)
    {
      if (((v31 - v30) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_18369761C();
    }

    if (v21)
    {
      objc_msgSend_principalLinesFromPrincipalLinePoints_points_(v21, v22, v20, &__p, v23, v24);
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }
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

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }
  }

  else
  {
    v25 = *MEMORY[0x1E695EFF8];
    retstr->var0.var0 = *MEMORY[0x1E695EFF8];
    retstr->var0.var1 = v25;
    retstr->var1.var0 = v25;
    retstr->var1.var1 = v25;
    retstr->var2.var0 = v25;
    retstr->var2.var1 = v25;
    retstr->var3.var0 = v25;
    retstr->var3.var1 = v25;
  }

  return result;
}

+ (id)createTextLineWithStrokes:(id)strokes tokens:(id)tokens locale:(id)locale classification:(int64_t)classification principalLines:(id *)lines principalPoints:(id)points shouldCancel:(id)cancel
{
  strokesCopy = strokes;
  tokensCopy = tokens;
  localeCopy = locale;
  pointsCopy = points;
  cancelCopy = cancel;
  if (tokensCopy && objc_msgSend_count(tokensCopy, v18, v19, v20, v21, v22))
  {
    v24 = *MEMORY[0x1E695EFF8];
    v25 = *(MEMORY[0x1E695EFF8] + 8);
    v26 = lines->var0.var0.x == *MEMORY[0x1E695EFF8] && lines->var0.var0.y == v25;
    if (v26 && (lines->var0.var1.x == v24 ? (v27 = lines->var0.var1.y == v25) : (v27 = 0), v27 ? (v28 = lines->var1.var0.x == v24) : (v28 = 0), v28 ? (v29 = lines->var1.var0.y == v25) : (v29 = 0), v29 ? (v30 = lines->var1.var1.x == v24) : (v30 = 0), v30 ? (v31 = lines->var1.var1.y == v25) : (v31 = 0), v31 ? (v32 = lines->var2.var0.x == v24) : (v32 = 0), v32 ? (v33 = lines->var2.var0.y == v25) : (v33 = 0), v33 ? (v34 = lines->var2.var1.x == v24) : (v34 = 0), v34 ? (v35 = lines->var2.var1.y == v25) : (v35 = 0), v35 ? (v36 = lines->var3.var0.x == v24) : (v36 = 0), v36 ? (v37 = lines->var3.var0.y == v25) : (v37 = 0), v37 ? (v38 = lines->var3.var1.x == v24) : (v38 = 0), v38 ? (v39 = lines->var3.var1.y == v25) : (v39 = 0), v39))
    {
      v52 = objc_opt_class();
      v48 = objc_msgSend_textLineForStrokes_tokens_locale_strokeClassification_initialOrientationEstimate_shouldCancel_(v52, v53, strokesCopy, tokensCopy, localeCopy, classification, cancelCopy, 1.79769313e308);
    }

    else
    {
      v40 = [CHTransformedTextLine alloc];
      var1 = lines->var2.var1;
      var0 = lines->var2.var0;
      v60 = var1;
      v43 = lines->var3.var1;
      v61 = lines->var3.var0;
      v62 = v43;
      v44 = lines->var0.var1;
      *buf = lines->var0.var0;
      v56 = v44;
      v45 = lines->var1.var1;
      v57 = lines->var1.var0;
      v58 = v45;
      if (pointsCopy)
      {
        v46 = pointsCopy;
      }

      else
      {
        v46 = MEMORY[0x1E695E0F0];
      }

      v47 = *(MEMORY[0x1E695EFD0] + 16);
      v54[0] = *MEMORY[0x1E695EFD0];
      v54[1] = v47;
      v54[2] = *(MEMORY[0x1E695EFD0] + 32);
      v48 = objc_msgSend_initWithStrokes_tokens_locale_strokeClassification_principalLines_principalPoints_transform_(v40, v41, strokesCopy, tokensCopy, localeCopy, classification, buf, v46, v54);
    }

    v49 = v48;
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v50 = qword_1EA84DCA0;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v50, OS_LOG_TYPE_ERROR, "There are no valid tokens from the drawing to create a transformed text line.", buf, 2u);
    }

    v49 = 0;
  }

  return v49;
}

+ (id)textLineForDrawing:(id)drawing transcriptions:(id)transcriptions strokeIndexes:(id)indexes fullText:(id)text principalPoints:(id)points locale:(id)locale strokeClassification:(int64_t)classification shouldCancel:(id)self0
{
  drawingCopy = drawing;
  transcriptionsCopy = transcriptions;
  indexesCopy = indexes;
  textCopy = text;
  pointsCopy = points;
  localeCopy = locale;
  cancelCopy = cancel;
  if (objc_msgSend_validateCountMatchTranscriptions_strokeIndexes_(self, v23, transcriptionsCopy, indexesCopy, v24, v25))
  {
    v38 = drawingCopy;
    v30 = objc_msgSend_extractStrokesFromDrawing_classification_(self, v26, drawingCopy, classification, v27, v28);
    if (v30)
    {
      v31 = objc_msgSend_createTokensFromTranscriptions_strokeIndexes_fullText_locale_(self, v29, transcriptionsCopy, indexesCopy, textCopy, localeCopy);
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      objc_msgSend_derivePrincipalLinesFromPoints_strokes_(self, v32, pointsCopy, v30, v33, v34);
      v39[4] = v44;
      v39[5] = v45;
      v39[6] = v46;
      v39[7] = v47;
      v39[0] = v40;
      v39[1] = v41;
      v39[2] = v42;
      v39[3] = v43;
      v36 = objc_msgSend_createTextLineWithStrokes_tokens_locale_classification_principalLines_principalPoints_shouldCancel_(self, v35, v30, v31, localeCopy, classification, v39, pointsCopy, cancelCopy);
    }

    else
    {
      v36 = 0;
    }

    drawingCopy = v38;
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

+ (id)textLineForDrawing:(id)drawing transcriptions:(id)transcriptions strokeIndexes:(id)indexes fullText:(id)text principalLines:(id *)lines locale:(id)locale strokeClassification:(int64_t)classification shouldCancel:(id)self0
{
  drawingCopy = drawing;
  transcriptionsCopy = transcriptions;
  indexesCopy = indexes;
  textCopy = text;
  localeCopy = locale;
  cancelCopy = cancel;
  if (objc_msgSend_validateCountMatchTranscriptions_strokeIndexes_(self, v22, transcriptionsCopy, indexesCopy, v23, v24))
  {
    v38 = drawingCopy;
    v29 = objc_msgSend_extractStrokesFromDrawing_classification_(self, v25, drawingCopy, classification, v26, v27);
    if (v29)
    {
      v30 = objc_msgSend_createTokensFromTranscriptions_strokeIndexes_fullText_locale_(self, v28, transcriptionsCopy, indexesCopy, textCopy, localeCopy);
      var1 = lines->var2.var1;
      v39[4] = lines->var2.var0;
      v39[5] = var1;
      v32 = lines->var3.var1;
      v39[6] = lines->var3.var0;
      v39[7] = v32;
      v33 = lines->var0.var1;
      v39[0] = lines->var0.var0;
      v39[1] = v33;
      v34 = lines->var1.var1;
      v39[2] = lines->var1.var0;
      v39[3] = v34;
      v36 = objc_msgSend_createTextLineWithStrokes_tokens_locale_classification_principalLines_principalPoints_shouldCancel_(self, v35, v29, v30, localeCopy, classification, v39, 0, cancelCopy);
    }

    else
    {
      v36 = 0;
    }

    drawingCopy = v38;
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

+ (id)textLineForReflowableSynthesisResultToken:(id)token locale:(id)locale
{
  v117 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  localeCopy = locale;
  v7 = objc_opt_class();
  v13 = objc_msgSend_drawing(tokenCopy, v8, v9, v10, v11, v12);
  v17 = objc_msgSend_strokesFromDrawing_classification_(v7, v14, v13, 1, v15, v16);

  if (objc_msgSend_count(v17, v18, v19, v20, v21, v22))
  {
    if (objc_msgSend_hasPrecedingSpace(tokenCopy, v23, v24, v25, v26, v27))
    {
      v28 = 32;
    }

    else
    {
      v28 = 0;
    }

    v29 = [CHTokenizedTextResultToken alloc];
    v35 = objc_msgSend_string(tokenCopy, v30, v31, v32, v33, v34);
    v36 = MEMORY[0x1E696AC90];
    v42 = objc_msgSend_count(v17, v37, v38, v39, v40, v41);
    v46 = objc_msgSend_indexSetWithIndexesInRange_(v36, v43, 0, v42, v44, v45);
    v52 = objc_msgSend_count(v17, v47, v48, v49, v50, v51);
    v54 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_(v29, v53, v35, v46, 0, v28, localeCopy, 1, 1.0, 1.0, 1.0, 1.0, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), v52);

    if (tokenCopy)
    {
      objc_msgSend_principalLines(tokenCopy, v55, v56, v57, v58, v59);
    }

    else
    {
      v115 = 0u;
      *v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      *buf = 0u;
      v110 = 0u;
    }

    v72 = objc_msgSend_drawing(tokenCopy, v55, v56, v57, v58, v59);
    objc_msgSend_bounds(v72, v73, v74, v75, v76, v77);
    v81 = v80;
    v83 = v82;
    v105 = *&buf[8];
    v106 = *buf;
    v84 = v110;
    v104 = *&v110;
    if (v78 == 0.0)
    {
      v85 = 1.0;
    }

    else
    {
      v85 = v78;
    }

    if (v79 == 0.0)
    {
      v86 = 1.0;
    }

    else
    {
      v86 = v79;
    }

    v87 = v111;
    v88 = v112;
    v102 = *(&v113 + 1);
    v103 = *&v113;
    v100 = *(&v114 + 1);
    v101 = *&v114;
    v98 = *(&v115 + 1);
    v99 = *&v115;
    v89 = *v116;

    v90 = [CHTransformedTextLine alloc];
    v108 = v54;
    v94 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v91, &v108, 1, v92, v93);
    *buf = v81 + v106 * v85;
    *&buf[8] = v83 + v105 * v86;
    *&v110 = v81 + v104 * v85;
    *(&v110 + 1) = v83 + *(&v84 + 1) * v86;
    *&v111 = v81 + *&v87 * v85;
    *(&v111 + 1) = v83 + *(&v87 + 1) * v86;
    *&v112 = v81 + *&v88 * v85;
    *(&v112 + 1) = v83 + *(&v88 + 1) * v86;
    *&v113 = v81 + v103 * v85;
    *(&v113 + 1) = v83 + v102 * v86;
    *&v114 = v81 + v101 * v85;
    *(&v114 + 1) = v83 + v100 * v86;
    *&v115 = v81 + v99 * v85;
    *(&v115 + 1) = v83 + v98 * v86;
    v116[0] = v81 + *&v89 * v85;
    v116[1] = v83 + *(&v89 + 1) * v86;
    v95 = *(MEMORY[0x1E695EFD0] + 16);
    v107[0] = *MEMORY[0x1E695EFD0];
    v107[1] = v95;
    v107[2] = *(MEMORY[0x1E695EFD0] + 32);
    v71 = objc_msgSend_initWithStrokes_tokens_locale_strokeClassification_principalLines_principalPoints_transform_(v90, v96, v17, v94, localeCopy, 1, buf, MEMORY[0x1E695E0F0], v107);
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v54 = qword_1EA84DCA0;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v65 = objc_msgSend_drawing(tokenCopy, v60, v61, v62, v63, v64);
      *buf = 134217984;
      *&buf[4] = objc_msgSend_strokeCount(v65, v66, v67, v68, v69, v70);
      _os_log_impl(&dword_18366B000, v54, OS_LOG_TYPE_ERROR, "Unable to create reflowable text line from drawing, drawing has %ld strokes, no extracted strokes.", buf, 0xCu);
    }

    v71 = 0;
  }

  return v71;
}

- (id)string
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = self->_segments;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v21, v25, 16, v4);
  if (v10)
  {
    v11 = *v22;
    v12 = &stru_1EF1C0318;
    do
    {
      v13 = 0;
      v14 = v12;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v2);
        }

        v15 = objc_msgSend_string(*(*(&v21 + 1) + 8 * v13), v5, v6, v7, v8, v9, v21);
        v12 = objc_msgSend_stringByAppendingString_(v14, v16, v15, v17, v18, v19);

        ++v13;
        v14 = v12;
      }

      while (v10 != v13);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v21, v25, 16, v9);
    }

    while (v10);
  }

  else
  {
    v12 = &stru_1EF1C0318;
  }

  return v12;
}

- (void)addSupportStroke:(id)stroke tokenRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v167 = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  v159 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v157 = length;
  v160 = location;
  v15 = location + length;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    if (v12 >= objc_msgSend_count(self->_segments, v7, v8, v9, v10, v11, v157))
    {
      break;
    }

    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = objc_msgSend_objectAtIndexedSubscript_(self->_segments, v7, v12, v9, v10, v11);
      v23 = objc_msgSend_tokens(v17, v18, v19, v20, v21, v22);
      v29 = objc_msgSend_count(v23, v24, v25, v26, v27, v28) + v14;

      if (v29 <= v160)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v159 = v14;
        v13 = 1;
        v16 = v12;
      }
    }

    else
    {
      ++v13;
    }

    v30 = objc_msgSend_objectAtIndexedSubscript_(self->_segments, v7, v12, v9, v10, v11);
    v36 = objc_msgSend_tokens(v30, v31, v32, v33, v34, v35);
    v14 += objc_msgSend_count(v36, v37, v38, v39, v40, v41);

    ++v12;
  }

  while (v14 <= v15);
  if (v16 != 0x7FFFFFFFFFFFFFFFLL && v13 >= 2)
  {
    v42 = MEMORY[0x1E695DF70];
    v43 = objc_msgSend_count(self->_segments, v7, v8, v9, v10, v11);
    v48 = objc_msgSend_arrayWithCapacity_(v42, v44, v43 - v13 + 1, v45, v46, v47);
    segments = self->_segments;
    v53 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v50, 0, v16, v51, v52);
    v58 = objc_msgSend_objectsAtIndexes_(segments, v54, v53, v55, v56, v57);
    objc_msgSend_addObjectsFromArray_(v48, v59, v58, v60, v61, v62);

    v71 = objc_msgSend_objectAtIndex_(self->_segments, v63, v16, v64, v65, v66);
    v72 = v16 + v13;
    v73 = v16 + 1;
    if (v73 < v72)
    {
      v74 = v13 - 1;
      do
      {
        v75 = objc_msgSend_objectAtIndexedSubscript_(self->_segments, v67, v73, v68, v69, v70);
        objc_msgSend_mergeTransformedText_(v71, v76, v75, v77, v78, v79);

        ++v73;
        --v74;
      }

      while (v74);
    }

    objc_msgSend_addObject_(v48, v67, v71, v68, v69, v70);
    v80 = v71;
    v81 = self->_segments;
    v82 = MEMORY[0x1E696AC90];
    v88 = objc_msgSend_count(v81, v83, v84, v85, v86, v87);
    v92 = objc_msgSend_indexSetWithIndexesInRange_(v82, v89, v72, v88 - v72, v90, v91);
    v97 = objc_msgSend_objectsAtIndexes_(v81, v93, v92, v94, v95, v96);
    objc_msgSend_addObjectsFromArray_(v48, v98, v97, v99, v100, v101);

    v102 = self->_segments;
    self->_segments = v48;

    v109 = v157;
    v108 = strokeCopy;
    if (!v80)
    {
      goto LABEL_32;
    }

LABEL_18:
    v110 = objc_msgSend_tokens(v80, v103, v104, v105, v106, v107);
    v116 = objc_msgSend_count(v110, v111, v112, v113, v114, v115);
    v117 = v160 - v159 + v109;

    if (v117 > v116)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v123 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        v129 = objc_msgSend_tokens(v80, v124, v125, v126, v127, v128);
        *buf = 134218496;
        v162 = v160 - v159;
        v163 = 2048;
        v164 = v109;
        v165 = 2048;
        v166 = objc_msgSend_count(v129, v130, v131, v132, v133, v134);
        _os_log_impl(&dword_18366B000, v123, OS_LOG_TYPE_ERROR, "Token range in segment defined as (%ld, %ld), incompatible with segment containing %ld tokens.", buf, 0x20u);
      }
    }

    v135 = objc_msgSend_tokens(v80, v118, v119, v120, v121, v122);
    v141 = v117 > objc_msgSend_count(v135, v136, v137, v138, v139, v140);

    if (v141)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v144 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v144, OS_LOG_TYPE_FAULT))
      {
        v150 = objc_msgSend_tokens(v80, v145, v146, v147, v148, v149);
        v156 = objc_msgSend_count(v150, v151, v152, v153, v154, v155);
        *buf = 134218496;
        v162 = v160 - v159;
        v163 = 2048;
        v164 = v109;
        v165 = 2048;
        v166 = v156;
        _os_log_impl(&dword_18366B000, v144, OS_LOG_TYPE_FAULT, "Token range in segment defined as (%ld, %ld), incompatible with segment containing %ld tokens.", buf, 0x20u);
      }
    }

    objc_msgSend_addSupportStroke_tokenRange_(v80, v142, v108, v160 - v159, v109, v143);
    goto LABEL_32;
  }

  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v80 = 0;
    v108 = strokeCopy;
    goto LABEL_32;
  }

  v108 = strokeCopy;
  v80 = objc_msgSend_objectAtIndexedSubscript_(self->_segments, v7, v16, v9, v10, v11);
  v109 = v157;
  if (v80)
  {
    goto LABEL_18;
  }

LABEL_32:
}

- (void)addSupportStroke:(id)stroke
{
  strokeCopy = stroke;
  if (objc_msgSend_count(self->_segments, v4, v5, v6, v7, v8) == 1)
  {
    v14 = objc_msgSend_objectAtIndexedSubscript_(self->_segments, v9, 0, v11, v12, v13);
    objc_msgSend_addSupportStroke_(v14, v15, strokeCopy, v16, v17, v18);
    goto LABEL_22;
  }

  objc_msgSend_bounds(strokeCopy, v9, v10, v11, v12, v13);
  v141 = v19;
  v142 = v20;
  rect = v21;
  v23 = v22;
  v14 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v24, v25, v26, v27, v28);
  for (i = 0; i < objc_msgSend_count(self->_segments, v29, v30, v31, v32, v33); ++i)
  {
    v40 = objc_msgSend_objectAtIndexedSubscript_(self->_segments, v35, i, v37, v38, v39);
    v46 = objc_msgSend_textStrokes(v40, v41, v42, v43, v44, v45);
    objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v47, v46, v48, v49, v50);
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;

    v144.origin.x = v23;
    v144.origin.y = v141;
    v144.size.width = v142;
    v144.size.height = rect;
    MaxX = CGRectGetMaxX(v144);
    v145.origin.x = v52;
    v145.origin.y = v54;
    v145.size.width = v56;
    v145.size.height = v58;
    v64 = fmin(MaxX, CGRectGetMaxX(v145)) - fmax(v23, v52);
    if (v64 / (v56 + 1.0e-10) > 0.1 || v64 / (v142 + 1.0e-10) > 0.1)
    {
      objc_msgSend_addIndex_(v14, v60, i, v61, v62, v63);
    }
  }

  if (objc_msgSend_count(v14, v35, v36, v37, v38, v39) == 1)
  {
    segments = self->_segments;
    Index = objc_msgSend_firstIndex(v14, v65, v66, v67, v68, v69);
    v76 = objc_msgSend_objectAtIndexedSubscript_(segments, v72, Index, v73, v74, v75);
    objc_msgSend_addSupportStroke_(v76, v77, strokeCopy, v78, v79, v80);
  }

  else
  {
    if (objc_msgSend_count(v14, v65, v66, v67, v68, v69) < 2)
    {
      goto LABEL_22;
    }

    v86 = MEMORY[0x1E695DF70];
    v87 = objc_msgSend_count(self->_segments, v81, v82, v83, v84, v85);
    v97 = objc_msgSend_arrayWithCapacity_(v86, v88, v87, v89, v90, v91);
    for (j = 0; j < objc_msgSend_count(self->_segments, v92, v93, v94, v95, v96); ++j)
    {
      if (objc_msgSend_containsIndex_(v14, v99, j, v101, v102, v103) && j != objc_msgSend_firstIndex(v14, v104, v105, v106, v107, v108))
      {
        v115 = objc_msgSend_firstIndex(v14, v104, v109, v106, v107, v108);
        v110 = objc_msgSend_objectAtIndexedSubscript_(v97, v116, v115, v117, v118, v119);
        v124 = objc_msgSend_objectAtIndexedSubscript_(self->_segments, v120, j, v121, v122, v123);
        objc_msgSend_mergeTransformedText_(v110, v125, v124, v126, v127, v128);
      }

      else
      {
        v110 = objc_msgSend_objectAtIndexedSubscript_(self->_segments, v104, j, v106, v107, v108);
        objc_msgSend_addObject_(v97, v111, v110, v112, v113, v114);
      }
    }

    v129 = objc_msgSend_firstIndex(v14, v99, v100, v101, v102, v103);
    v134 = objc_msgSend_objectAtIndexedSubscript_(v97, v130, v129, v131, v132, v133);
    objc_msgSend_addSupportStroke_(v134, v135, strokeCopy, v136, v137, v138);

    v76 = self->_segments;
    self->_segments = v97;
  }

LABEL_22:
}

- (id)splitIntoTokens
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3, v4, v5);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = self->_segments;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v44, v49, 16, v9);
  if (v15)
  {
    v16 = *v45;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = objc_msgSend_splitIntoTokens(*(*(&v44 + 1) + 8 * i), v10, v11, v12, v13, v14);
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v19 = v18;
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v40, v48, 16, v21);
        if (v22)
        {
          v23 = *v41;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v41 != v23)
              {
                objc_enumerationMutation(v19);
              }

              v25 = *(*(&v40 + 1) + 8 * j);
              v26 = [CHTransformedTextLine alloc];
              v31 = objc_msgSend_initWithSegment_(v26, v27, v25, v28, v29, v30);
              objc_msgSend_addObject_(v7, v32, v31, v33, v34, v35);
            }

            v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v36, &v40, v48, 16, v37);
          }

          while (v22);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v44, v49, 16, v14);
    }

    while (v15);
  }

  return v7;
}

- (void)mergeTransformedText:(id)text
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = objc_msgSend_segments(text, a2, text, v3, v4, v5, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v21, 16, v9);
  if (v14)
  {
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend__addTextLineSegment_(self, v10, *(*(&v17 + 1) + 8 * v16++), v11, v12, v13);
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v17, v21, 16, v13);
    }

    while (v14);
  }
}

- (void)_addTextLineSegment:(id)segment
{
  segmentCopy = segment;
  v10 = segmentCopy;
  if (segmentCopy)
  {
    objc_msgSend_transform(segmentCopy, v5, v6, v7, v8, v9);
  }

  else
  {
    memset(&v47, 0, sizeof(v47));
  }

  v11 = objc_msgSend_lastObject(self->_segments, v5, v6, v7, v8, v9, *&v47.a, *&v47.c, *&v47.tx);
  v17 = v11;
  if (v11)
  {
    objc_msgSend_transform(v11, v12, v13, v14, v15, v16);
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  v18 = CGAffineTransformEqualToTransform(&v47, &t2);

  segments = self->_segments;
  if (v18)
  {
    v25 = objc_msgSend_lastObject(segments, v19, v20, v21, v22, v23);
    objc_msgSend_mergeTransformedText_(v25, v26, v10, v27, v28, v29);
  }

  else
  {
    v30 = objc_msgSend_arrayByAddingObject_(segments, v19, v10, v21, v22, v23);
    v25 = self->_segments;
    self->_segments = v30;
  }

  v31 = objc_opt_class();
  if (v31)
  {
    objc_msgSend_principalLinesFromSegments_(v31, v32, self->_segments, v33, v34, v35);
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
    v48 = 0;
    memset(&v47, 0, sizeof(v47));
  }

  v36 = v52;
  self->_principalLines.top.start = v51;
  self->_principalLines.top.end = v36;
  v37 = v50;
  self->_principalLines.median.start = v49;
  self->_principalLines.median.end = v37;
  v38 = *&v47.c;
  self->_principalLines.descender.start = *&v47.a;
  self->_principalLines.descender.end = v38;
  v39 = v48;
  self->_principalLines.base.start = *&v47.tx;
  self->_principalLines.base.end = v39;
  v40 = MEMORY[0x1E695F058];
  v37.x = *MEMORY[0x1E695F058];
  v39.x = *(MEMORY[0x1E695F058] + 8);
  v41 = *(MEMORY[0x1E695F058] + 16);
  v42 = *(MEMORY[0x1E695F058] + 24);
  MinX = CGRectGetMinX(*&v37.x);
  MaxX = CGRectGetMaxX(*v40);
  MinY = CGRectGetMinY(*v40);
  MaxY = CGRectGetMaxY(*v40);
  self->_boundingBox.x_min = MinX;
  self->_boundingBox.x_max = MaxX;
  self->_boundingBox.y_min = MinY;
  self->_boundingBox.y_max = MaxY;
}

+ ($196E0A09E4C4E138EEBEC6372622051A)principalLinesFromSegments:(SEL)segments
{
  v66 = *MEMORY[0x1E69E9840];
  memset(v64, 0, sizeof(v64));
  v5 = a4;
  v63 = retstr;
  if (objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, v64, v65, 16, v7))
  {
    v13 = **(&v64[0] + 1);
    objc_msgSend_orientation(**(&v64[0] + 1), v8, v9, v10, v11, v12, retstr);
    if (v13)
    {
      objc_msgSend_principalLines(v13, v14, v15, v16, v17, v18);
    }

    operator new();
  }

  v24 = objc_msgSend_count(v5, v19, v20, v21, v22, v23);
  v30 = tan(-0.0 / v24);
  v31 = 0;
  v32 = 0.0;
  v33 = 8;
  v34 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
  while (v31 < 2 * objc_msgSend_count(v5, v25, v26, v27, v28, v29, v63))
  {
    v32 = v32 + *v33 - *(v33 - 8) * v30;
    v34 = v34 + *v33 - *(v33 - 8) * v30;
    v35 = v35 + *v33 - *(v33 - 8) * v30;
    v36 = v36 + *v33 - *(v33 - 8) * v30;
    ++v31;
    v33 += 16;
  }

  v37 = objc_msgSend_count(v5, v25, v26, v27, v28, v29);
  v43 = objc_msgSend_count(v5, v38, v39, v40, v41, v42);
  v49 = objc_msgSend_count(v5, v44, v45, v46, v47, v48);
  v55 = objc_msgSend_count(v5, v50, v51, v52, v53, v54);
  v56 = v35 / (2 * v49);
  v57 = v34 / (2 * v43);
  v58 = v32 / (2 * v37);
  v59 = v36 / (2 * v55);
  v63->var3.var0 = 0u;
  v63->var3.var1 = 0u;
  v63->var2.var0 = 0u;
  v63->var2.var1 = 0u;
  v63->var1.var0 = 0u;
  v63->var1.var1 = 0u;
  v63->var0.var0 = 0u;
  v63->var0.var1 = 0u;
  v60 = MEMORY[0];
  v61 = MEMORY[0xFFFFFFFFFFFFFFF0];
  if (MEMORY[0] == MEMORY[0xFFFFFFFFFFFFFFF0])
  {
    v61 = MEMORY[0xFFFFFFFFFFFFFFF0] + 0.01;
  }

  *&v63->var3.var0.x = MEMORY[0];
  v63->var3.var0.y = v58 + v60 * v30;
  v63->var3.var1.x = v61;
  v63->var3.var1.y = v58 + v61 * v30;
  v63->var2.var0.x = v60;
  v63->var2.var0.y = v57 + v60 * v30;
  v63->var2.var1.x = v61;
  v63->var2.var1.y = v57 + v61 * v30;
  v63->var1.var0.x = v60;
  v63->var1.var0.y = v56 + v60 * v30;
  v63->var1.var1.x = v61;
  v63->var1.var1.y = v56 + v61 * v30;
  v63->var0.var0.x = v60;
  v63->var0.var0.y = v59 + v60 * v30;
  v63->var0.var1.x = v61;
  v63->var0.var1.y = v59 + v61 * v30;
  operator delete(0);

  return result;
}

- (id)tokenDistanceSizes:(BOOL)sizes
{
  sizesCopy = sizes;
  v111 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_firstObject(self->_segments, a2, sizes, v3, v4, v5);
  v13 = objc_msgSend_tokenDistanceSizes_(v8, v9, sizesCopy, v10, v11, v12);
  v19 = objc_msgSend_mutableCopy(v13, v14, v15, v16, v17, v18);

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v25 = objc_msgSend_firstObject(self->_segments, v20, v21, v22, v23, v24);
  v31 = v25;
  if (v25)
  {
    objc_msgSend_principalLines(v25, v26, v27, v28, v29, v30);
  }

  else
  {
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  segments = self->_segments;
  v38 = objc_msgSend_count(segments, v33, v34, v35, v36, v37);
  v42 = objc_msgSend_subarrayWithRange_(segments, v39, 1, v38 - 1, v40, v41);
  v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v98, v110, 16, v44);
  if (v50)
  {
    v51 = *v99;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v99 != v51)
        {
          objc_enumerationMutation(v42);
        }

        v53 = *(*(&v98 + 1) + 8 * i);
        v54 = objc_msgSend_tokens(v53, v45, v46, v47, v48, v49, v90, v91);
        v60 = objc_msgSend_firstObject(v54, v55, v56, v57, v58, v59);
        v66 = objc_msgSend_properties(v60, v61, v62, v63, v64, v65);

        if (!sizesCopy || (v66 & 0x20) != 0)
        {
          if (v53)
          {
            objc_msgSend_principalLines(v53, v67, v68, v69, v70, v71);
            v72 = *(&v92 + 1);
            v73 = *&v92;
          }

          else
          {
            v72 = 0.0;
            v73 = 0.0;
          }

          v74 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v67, v68, v69, v70, v71, sqrt((*(&v105 + 1) - v72) * (*(&v105 + 1) - v72) + (*&v105 - v73) * (*&v105 - v73)));
          objc_msgSend_addObject_(v19, v75, v74, v76, v77, v78);
        }

        v79 = objc_msgSend_tokenDistanceSizes_(v53, v67, sizesCopy, v69, v70, v71);
        objc_msgSend_addObjectsFromArray_(v19, v80, v79, v81, v82, v83);
        if (v53)
        {
          objc_msgSend_principalLines(v53, v84, v85, v86, v87, v88);
        }

        else
        {
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
        }

        v106 = v94;
        v107 = v95;
        v108 = v96;
        v109 = v97;
        v102 = v90;
        v103 = v91;
        v104 = v92;
        v105 = v93;
      }

      v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v98, v110, 16, v49);
    }

    while (v50);
  }

  return v19;
}

- (id)textSize
{
  v58 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DF70];
  v8 = objc_msgSend_count(self->_segments, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_arrayWithCapacity_(v7, v9, v8, v10, v11, v12);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v14 = self->_segments;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v53, v57, 16, v16);
  if (v17)
  {
    v18 = *v54;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v54 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v53 + 1) + 8 * i);
        v26 = objc_opt_class();
        if (v20)
        {
          objc_msgSend_principalLines(v20, v21, v22, v23, v24, v25);
        }

        else
        {
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
        }

        v27 = objc_msgSend_string(v20, v21, v22, v23, v24, v25, v45, v46, v47, v48, v49, v50, v51, v52, v53);
        v31 = objc_msgSend_textSizeFromPrincipalLines_string_(v26, v28, &v45, v27, v29, v30);

        objc_msgSend_addObject_(v13, v32, v31, v33, v34, v35);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v36, &v53, v57, 16, v37);
    }

    while (v17);
  }

  v38 = objc_opt_class();
  v43 = objc_msgSend_averageTextSize_(v38, v39, v13, v40, v41, v42);

  return v43;
}

- (void)addTransform:(CGAffineTransform *)transform
{
  v56 = *MEMORY[0x1E69E9840];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v5 = self->_segments;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v51, v55, 16, v7);
  if (v12)
  {
    v13 = *v52;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(v5);
        }

        v15 = *(*(&v51 + 1) + 8 * i);
        v16 = *&transform->c;
        v43 = *&transform->a;
        v44 = v16;
        v45 = *&transform->tx;
        objc_msgSend_addTransform_(v15, v8, &v43, v9, v10, v11);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v51, v55, 16, v11);
    }

    while (v12);
  }

  v50 = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  sub_1838CA7E4(&self->_principalLines.descender.start.x, &transform->a, &v43.x);
  v17 = v48;
  self->_principalLines.median.start = v47;
  self->_principalLines.median.end = v17;
  v18 = v50;
  self->_principalLines.top.start = v49;
  self->_principalLines.top.end = v18;
  v19 = v44;
  self->_principalLines.descender.start = v43;
  self->_principalLines.descender.end = v19;
  v20 = v46;
  self->_principalLines.base.start = v45;
  self->_principalLines.base.end = v20;
  objc_msgSend_points(self, v21, v22, v23, v24, v25);
  if (v41 == v42)
  {
    v29 = xmmword_1839CE920;
    v30 = xmmword_1839CE920;
    if (!v41)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v26 = xmmword_1839CE920;
  v27 = v41;
  v28 = xmmword_1839CE920;
  v29 = xmmword_1839CE920;
  v30 = xmmword_1839CE920;
  do
  {
    v31 = *v27++;
    v32 = vdupq_lane_s64(v31.i64[0], 0);
    v33 = vdupq_laneq_s64(v31, 1);
    v34 = vmovn_s32(vuzp1q_s32(vcgtq_f64(v26, v32), vcgtq_f64(v28, v33)));
    v35 = vmovn_s32(vuzp1q_s32(vcgtq_f64(v32, v26), vcgtq_f64(v33, v28)));
    v36.i64[0] = v34.u16[2];
    v36.i64[1] = v35.u16[3];
    v37 = vcltzq_s64(vshlq_n_s64(v36, 0x3FuLL));
    v30 = vbslq_s8(v37, v33, v30);
    v36.i64[0] = v34.u16[0];
    v36.i64[1] = v35.u16[1];
    v38 = vcltzq_s64(vshlq_n_s64(v36, 0x3FuLL));
    v29 = vbslq_s8(v38, v32, v29);
    v28 = vbslq_s8(v37, v33, v28);
    v26 = vbslq_s8(v38, v32, v26);
  }

  while (v27 != v42);
  if (v41)
  {
LABEL_12:
    v39 = v30;
    v40 = v29;
    operator delete(v41);
    v30 = v39;
    v29 = v40;
  }

LABEL_13:
  *&self->_boundingBox.x_min = v29;
  *&self->_boundingBox.y_min = v30;
}

- (vector<CGPoint,)points
{
  v41 = *MEMORY[0x1E69E9840];
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = self->_segments;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v36, v40, 16, v6);
  if (v12)
  {
    v13 = 0;
    v14 = *v37;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v4);
        }

        v16 = *(*(&v36 + 1) + 8 * i);
        if (!v16)
        {
          __p = 0;
          v35 = 0;
          goto LABEL_24;
        }

        objc_msgSend_points(v16, v7, v8, v9, v10, v11);
        v17 = __p;
        v18 = v35 - __p;
        v19 = v35 - __p;
        if (v19 < 1)
        {
          goto LABEL_24;
        }

        cap = retstr->__cap_;
        if (cap - v13 >= v18)
        {
          if (__p != v35)
          {
            memmove(v13, __p, v35 - __p);
          }

          v13 = (v13 + v18);
LABEL_24:
          v25 = __p;
          if (__p)
          {
            goto LABEL_31;
          }

          continue;
        }

        v21 = v13 - retstr->__begin_;
        v22 = v21 + v19;
        if (v22 >> 60)
        {
          retstr->__end_ = v13;
          sub_18369761C();
        }

        v23 = cap - retstr->__begin_;
        if (v23 >> 3 > v22)
        {
          v22 = v23 >> 3;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF0)
        {
          v24 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          if (!(v24 >> 60))
          {
            operator new();
          }

          retstr->__end_ = v13;
          sub_183688F00();
        }

        v26 = 16 * v21;
        v27 = (16 * v21 + v18);
        v28 = v26;
        do
        {
          v29 = *v17++;
          *v28++ = v29;
          v18 -= 16;
        }

        while (v18);
        begin = retstr->__begin_;
        v31 = v13 - retstr->__begin_;
        v32 = (v26 - v31);
        memcpy((v26 - v31), retstr->__begin_, v31);
        retstr->__begin_ = v32;
        retstr->__cap_ = 0;
        if (begin)
        {
          operator delete(begin);
        }

        v13 = v27;
        v25 = __p;
        if (__p)
        {
LABEL_31:
          v35 = v25;
          operator delete(v25);
          continue;
        }
      }

      retstr->__end_ = v13;
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v36, v40, 16, v11);
    }

    while (v12);
  }

  return result;
}

- (vector<std::vector<CGPoint>,)strokePoints
{
  v31 = *MEMORY[0x1E69E9840];
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = self->_segments;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v26, v30, 16, v6);
  if (v12)
  {
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v4);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        if (v16)
        {
          objc_msgSend_strokePoints(v16, v7, v8, v9, v10, v11);
          v17 = __p;
          v18 = v25;
        }

        else
        {
          v18 = 0;
          v17 = 0;
          __p = 0;
          v25 = 0;
        }

        sub_1838224B4(retstr, retstr->__end_, v17, v18, 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3));
        if (__p)
        {
          v19 = v25;
          v15 = __p;
          if (v25 != __p)
          {
            v20 = v25;
            do
            {
              v22 = *(v20 - 3);
              v20 -= 3;
              v21 = v22;
              if (v22)
              {
                *(v19 - 2) = v21;
                operator delete(v21);
              }

              v19 = v20;
            }

            while (v20 != __p);
            v15 = __p;
          }

          v25 = __p;
          operator delete(v15);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v26, v30, 16, v11);
    }

    while (v12);
  }

  return result;
}

- (vector<CGPoint,)filteredPoints:(CHTransformedTextLine *)self
{
  height = a4.height;
  width = a4.width;
  v37 = *MEMORY[0x1E69E9840];
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_segments;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v32, v36, 16, v8);
  if (v14)
  {
    v29 = *v33;
    do
    {
      v15 = 0;
      v28 = v14;
      do
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v32 + 1) + 8 * v15);
        if (v16)
        {
          objc_msgSend_filteredPoints_(v16, v9, v10, v11, v12, v13, width, height);
          v17 = v30;
          if (v31 != v30)
          {
            v18 = 0;
            v19 = 0;
            end = retstr->__end_;
            do
            {
              cap = retstr->__cap_;
              if (end < cap)
              {
                *end = *&v17[v18];
                end += 16;
              }

              else
              {
                v22 = end;
                v23 = end >> 4;
                v24 = v23 + 1;
                if ((v23 + 1) >> 60)
                {
                  retstr->__begin_ = 0;
                  sub_18369761C();
                }

                if (cap >> 3 > v24)
                {
                  v24 = cap >> 3;
                }

                if (cap >= 0x7FFFFFFFFFFFFFF0)
                {
                  v25 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v25 = v24;
                }

                if (v25)
                {
                  if (!(v25 >> 60))
                  {
                    operator new();
                  }

                  retstr->__begin_ = 0;
                  sub_183688F00();
                }

                *(16 * v23) = *&v17[v18];
                end = 16 * v23 + 16;
                memcpy(0, 0, v22);
                retstr->__end_ = end;
                retstr->__cap_ = 0;
              }

              retstr->__end_ = end;
              ++v19;
              v17 = v30;
              v18 += 16;
            }

            while (v19 < (v31 - v30) >> 4);
          }

          retstr->__begin_ = 0;
          if (v17)
          {
            v31 = v17;
            operator delete(v17);
          }

          v14 = v28;
        }

        ++v15;
      }

      while (v15 != v14);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v32, v36, 16, v13);
    }

    while (v14);
  }

  return result;
}

- (vector<CGPoint,)clippedPoints:(CHTransformedTextLine *)self min:(SEL)min max:(CGSize)max
{
  y = a6.y;
  x = a6.x;
  v8 = a5.y;
  v9 = a5.x;
  height = max.height;
  width = max.width;
  v43 = *MEMORY[0x1E69E9840];
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = self->_segments;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v38, v42, 16, v14);
  if (v20)
  {
    v35 = *v39;
    do
    {
      v21 = 0;
      v34 = v20;
      do
      {
        if (*v39 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v38 + 1) + 8 * v21);
        if (v22)
        {
          objc_msgSend_clippedPoints_min_max_(v22, v15, v16, v17, v18, v19, width, height, v9, v8, x, y);
          v23 = v36;
          if (v37 != v36)
          {
            v24 = 0;
            v25 = 0;
            end = retstr->__end_;
            do
            {
              cap = retstr->__cap_;
              if (end < cap)
              {
                *end = *&v23[v24];
                end += 16;
              }

              else
              {
                v28 = end;
                v29 = end >> 4;
                v30 = v29 + 1;
                if ((v29 + 1) >> 60)
                {
                  retstr->__begin_ = 0;
                  sub_18369761C();
                }

                if (cap >> 3 > v30)
                {
                  v30 = cap >> 3;
                }

                if (cap >= 0x7FFFFFFFFFFFFFF0)
                {
                  v31 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v31 = v30;
                }

                if (v31)
                {
                  if (!(v31 >> 60))
                  {
                    operator new();
                  }

                  retstr->__begin_ = 0;
                  sub_183688F00();
                }

                *(16 * v29) = *&v23[v24];
                end = 16 * v29 + 16;
                memcpy(0, 0, v28);
                retstr->__end_ = end;
                retstr->__cap_ = 0;
              }

              retstr->__end_ = end;
              ++v25;
              v23 = v36;
              v24 += 16;
            }

            while (v25 < (v37 - v36) >> 4);
          }

          retstr->__begin_ = 0;
          if (v23)
          {
            v37 = v23;
            operator delete(v23);
          }

          v20 = v34;
        }

        ++v21;
      }

      while (v21 != v20);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v38, v42, 16, v19);
    }

    while (v20);
  }

  return result;
}

- (BoundingBox)boundingBox
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_boundingBox = &selfCopy->_boundingBox;
  if (selfCopy->_boundingBox.x_max - selfCopy->_boundingBox.x_min == 0.0)
  {
    objc_msgSend_points(selfCopy, v3, v4, v5, v6, v7);
    if (v28 == v29)
    {
      v12 = xmmword_1839CE920;
      v13 = xmmword_1839CE920;
      if (!v28)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = xmmword_1839CE920;
      v10 = v28;
      v11 = xmmword_1839CE920;
      v12 = xmmword_1839CE920;
      v13 = xmmword_1839CE920;
      do
      {
        v14 = *v10++;
        v15 = vdupq_lane_s64(v14.i64[0], 0);
        v16 = vdupq_laneq_s64(v14, 1);
        v17 = vmovn_s32(vuzp1q_s32(vcgtq_f64(v9, v15), vcgtq_f64(v11, v16)));
        v18 = vmovn_s32(vuzp1q_s32(vcgtq_f64(v15, v9), vcgtq_f64(v16, v11)));
        v19.i64[0] = v17.u16[2];
        v19.i64[1] = v18.u16[3];
        v20 = vcltzq_s64(vshlq_n_s64(v19, 0x3FuLL));
        v13 = vbslq_s8(v20, v16, v13);
        v19.i64[0] = v17.u16[0];
        v19.i64[1] = v18.u16[1];
        v21 = vcltzq_s64(vshlq_n_s64(v19, 0x3FuLL));
        v12 = vbslq_s8(v21, v15, v12);
        v11 = vbslq_s8(v20, v16, v11);
        v9 = vbslq_s8(v21, v15, v9);
      }

      while (v10 != v29);
      if (!v28)
      {
        goto LABEL_7;
      }
    }

    v26 = v13;
    v27 = v12;
    operator delete(v28);
    v13 = v26;
    v12 = v27;
LABEL_7:
    *p_boundingBox = v12;
    *&selfCopy->_boundingBox.y_min = v13;
  }

  objc_sync_exit(selfCopy);

  v22 = *p_boundingBox->i64;
  x_max = selfCopy->_boundingBox.x_max;
  y_min = selfCopy->_boundingBox.y_min;
  y_max = selfCopy->_boundingBox.y_max;
  result.y_max = y_max;
  result.y_min = y_min;
  result.x_max = x_max;
  result.x_min = v22;
  return result;
}

- ($196E0A09E4C4E138EEBEC6372622051A)principalLines
{
  var1 = self[3].var0.var1;
  retstr->var2.var0 = self[3].var0.var0;
  retstr->var2.var1 = var1;
  v4 = self[3].var1.var1;
  retstr->var3.var0 = self[3].var1.var0;
  retstr->var3.var1 = v4;
  v5 = self[2].var2.var1;
  retstr->var0.var0 = self[2].var2.var0;
  retstr->var0.var1 = v5;
  v6 = self[2].var3.var1;
  retstr->var1.var0 = self[2].var3.var0;
  retstr->var1.var1 = v6;
  return self;
}

- (id)textStrokes
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3, v4, v5);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_segments;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v25, v29, 16, v10);
  if (v16)
  {
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v8);
        }

        v19 = objc_msgSend_textStrokes(*(*(&v25 + 1) + 8 * i), v11, v12, v13, v14, v15, v25);
        objc_msgSend_addObjectsFromArray_(v7, v20, v19, v21, v22, v23);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v25, v29, 16, v15);
    }

    while (v16);
  }

  return v7;
}

- (id)tokens
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3, v4, v5);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_segments;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v25, v29, 16, v10);
  if (v16)
  {
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v8);
        }

        v19 = objc_msgSend_tokens(*(*(&v25 + 1) + 8 * i), v11, v12, v13, v14, v15, v25);
        objc_msgSend_addObjectsFromArray_(v7, v20, v19, v21, v22, v23);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v25, v29, 16, v15);
    }

    while (v16);
  }

  return v7;
}

- (id)principalPoints
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3, v4, v5);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_segments;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v25, v29, 16, v10);
  if (v16)
  {
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v8);
        }

        v19 = objc_msgSend_principalPoints(*(*(&v25 + 1) + 8 * i), v11, v12, v13, v14, v15, v25);
        objc_msgSend_addObjectsFromArray_(v7, v20, v19, v21, v22, v23);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v25, v29, 16, v15);
    }

    while (v16);
  }

  return v7;
}

- (id)locale
{
  if (objc_msgSend_count(self->_segments, a2, v2, v3, v4, v5))
  {
    v11 = objc_msgSend_objectAtIndexedSubscript_(self->_segments, v7, 0, v8, v9, v10);
    v17 = objc_msgSend_locale(v11, v12, v13, v14, v15, v16);

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)addRelatedNontextStrokes:(id)strokes tokenRangesForNonTextStrokes:(id)textStrokes strokeProvider:(id)provider groupIndex:(id)index
{
  v182 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  textStrokesCopy = textStrokes;
  providerCopy = provider;
  indexCopy = index;
  v174 = strokesCopy;
  v11 = MEMORY[0x1E695DFA8];
  v17 = objc_msgSend_count(strokesCopy, v12, v13, v14, v15, v16);
  v165 = objc_msgSend_setWithCapacity_(v11, v18, v17, v19, v20, v21);
  for (i = 0; i < objc_msgSend_count(v174, v22, v23, v24, v25, v26, v165); ++i)
  {
    v175 = objc_msgSend_objectAtIndexedSubscript_(textStrokesCopy, v27, i, v28, v29, v30);
    v36 = objc_msgSend_firstObject(v175, v31, v32, v33, v34, v35);
    if (objc_msgSend_isEqualToNumber_(v36, v37, indexCopy, v38, v39, v40))
    {
      v46 = objc_msgSend_count(v175, v41, v42, v43, v44, v45) == 3;

      if (!v46)
      {
        goto LABEL_25;
      }

      v51 = objc_msgSend_objectAtIndexedSubscript_(v174, v47, i, v48, v49, v50);
      v52 = v51;
      if (v51)
      {
        v53 = *(v51 + 88);
      }

      else
      {
        v53 = 0;
      }

      v54 = v53;
      v36 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(CHStrokeUtilities, v55, v54, providerCopy, v56, v57);

      objc_msgSend_bounds(v36, v58, v59, v60, v61, v62);
      v170 = v64;
      v171 = v63;
      v66 = v65;
      v68 = v67;
      objc_msgSend_lineHeight(self, v69, v70, v71, v72, v73);
      v75 = v74;
      v80 = objc_msgSend_objectAtIndexedSubscript_(v175, v76, 1, v77, v78, v79);
      v86 = objc_msgSend_intValue(v80, v81, v82, v83, v84, v85);
      v91 = objc_msgSend_objectAtIndexedSubscript_(v175, v87, 2, v88, v89, v90);
      v97 = objc_msgSend_intValue(v91, v92, v93, v94, v95, v96);

      v103 = objc_msgSend_tokens(self, v98, v99, v100, v101, v102);
      v166 = v97;
      v167 = v86;
      v107 = objc_msgSend_subarrayWithRange_(v103, v104, v86, v97, v105, v106);

      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
      v177 = 0u;
      v178 = 0u;
      v179 = 0u;
      v180 = 0u;
      v112 = v107;
      v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v112, v113, &v177, v181, 16, v114);
      if (v120)
      {
        v121 = *v178;
        do
        {
          for (j = 0; j != v120; ++j)
          {
            if (*v178 != v121)
            {
              objc_enumerationMutation(v112);
            }

            v123 = *(*(&v177 + 1) + 8 * j);
            v124 = objc_msgSend_textStrokes(self, v115, v116, v117, v118, v119);
            v130 = objc_msgSend_strokeIndexes(v123, v125, v126, v127, v128, v129);
            v135 = objc_msgSend_objectsAtIndexes_(v124, v131, v130, v132, v133, v134);

            objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v136, v135, v137, v138, v139);
            v190.origin.x = v140;
            v190.origin.y = v141;
            v190.size.width = v142;
            v190.size.height = v143;
            v184.origin.x = x;
            v184.origin.y = y;
            v184.size.width = width;
            v184.size.height = height;
            v185 = CGRectUnion(v184, v190);
            x = v185.origin.x;
            y = v185.origin.y;
            width = v185.size.width;
            height = v185.size.height;
          }

          v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v112, v115, &v177, v181, 16, v119);
        }

        while (v120);
      }

      v169 = v75;
      v186.origin.x = x;
      v186.origin.y = y;
      v186.size.width = width;
      v186.size.height = height;
      MinY = CGRectGetMinY(v186);
      v145 = v66;
      v187.origin.x = v66;
      v187.origin.y = v68;
      v187.size.height = v170;
      v187.size.width = v171;
      MaxY = CGRectGetMaxY(v187);
      v188.origin.x = v145;
      v188.origin.y = v68;
      v188.size.height = v170;
      v188.size.width = v171;
      v147 = CGRectGetMinY(v188);
      v189.origin.x = x;
      v189.origin.y = y;
      v189.size.width = width;
      v189.size.height = height;
      v150 = CGRectGetMaxY(v189);
      v151 = v170 / height < 2.5 && v171 / width < 1.75;
      v152 = fmax(MinY - MaxY, v147 - v150) / v169;
      if (v151 && v152 < 1.25)
      {
        objc_msgSend_addSupportStroke_tokenRange_(self, v148, v36, v167, v166, v149, v152);
        v159 = objc_msgSend_encodedStrokeIdentifier(v36, v154, v155, v156, v157, v158);
        objc_msgSend_addObject_(v165, v160, v159, v161, v162, v163);
      }
    }

LABEL_25:
  }

  return v165;
}

+ (id)drawingForTransformedTextLines:(id)lines
{
  v64 = *MEMORY[0x1E69E9840];
  linesCopy = lines;
  v3 = objc_alloc_init(CHDrawing);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = linesCopy;
  v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v58, v63, 16, v5);
  if (v51)
  {
    v50 = *v59;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v59 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v58 + 1) + 8 * i);
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v12 = objc_msgSend_segments(v11, v6, v7, v8, v9, v10);
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v54, v62, 16, v14);
        if (v20)
        {
          v21 = *v55;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v55 != v21)
              {
                objc_enumerationMutation(v12);
              }

              v23 = *(*(&v54 + 1) + 8 * j);
              v24 = objc_msgSend_textStrokes(v23, v15, v16, v17, v18, v19);
              v30 = objc_msgSend_supportStrokes(v23, v25, v26, v27, v28, v29);
              v35 = objc_msgSend_arrayByAddingObjectsFromArray_(v24, v31, v30, v32, v33, v34);
              v36 = sub_1838CBBBC(v35);

              if (v23)
              {
                objc_msgSend_transform(v23, v37, v38, v39, v40, v41);
              }

              else
              {
                memset(v53, 0, sizeof(v53));
              }

              v42 = objc_msgSend_newDrawingWithAffineTransform_(v36, v37, v53, v39, v40, v41);

              objc_msgSend_appendDrawing_(v3, v43, v42, v44, v45, v46);
            }

            v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v54, v62, 16, v19);
          }

          while (v20);
        }
      }

      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v58, v63, 16, v10);
    }

    while (v51);
  }

  return v3;
}

+ (id)addNonTextSegmentsAndLines:(id)lines nontextGroups:(id)groups outNonTextStrokes:(id *)strokes
{
  v358 = *MEMORY[0x1E69E9840];
  linesCopy = lines;
  groupsCopy = groups;
  v324 = objc_msgSend_mutableCopy(linesCopy, v6, v7, v8, v9, v10);
  v318 = objc_msgSend_set(MEMORY[0x1E695DFA8], v11, v12, v13, v14, v15);
  v353 = 0u;
  v354 = 0u;
  v351 = 0u;
  v352 = 0u;
  obj = groupsCopy;
  v313 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v351, v357, 16, v17);
  if (v313)
  {
    v312 = *v352;
    do
    {
      for (i = 0; i != v313; ++i)
      {
        if (*v352 != v312)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v351 + 1) + 8 * i);
        objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v18, v22, v19, v20, v21);
        v326 = v24;
        v327 = v23;
        rect = v25;
        v27 = v26;
        sub_1838C3014(v22, &__p);
        v33 = 0;
        v315 = 0x7FFFFFFFFFFFFFFFLL;
        v319 = -1.79769313e308;
        v316 = v27;
        while (v33 < objc_msgSend_count(v324, v28, v29, v30, v31, v32))
        {
          v34 = objc_msgSend_objectAtIndexedSubscript_(v324, v18, v33, v19, v20, v21);
          v40 = objc_msgSend_textStrokes(v34, v35, v36, v37, v38, v39);
          objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v41, v40, v42, v43, v44);
          v46 = v45;
          v48 = v47;
          v50 = v49;
          v52 = v51;

          if (v34)
          {
            objc_msgSend_principalLines(v34, v53, v54, v55, v56, v57);
            objc_msgSend_principalLines(v34, v58, v59, v60, v61, v62);
            v63 = atan2(*(&v336 + 1) - *(&v343 + 1), *&v336 - *&v343);
            v64 = tan(v63);
            objc_msgSend_principalLines(v34, v65, v66, v67, v68, v69);
            v70 = *(&v347 + 1);
            objc_msgSend_principalLines(v34, v71, v72, v73, v74, v75);
            v76 = *&v339;
            objc_msgSend_principalLines(v34, v77, v78, v79, v80, v81);
            v82 = *(&v341 + 1);
            objc_msgSend_principalLines(v34, v83, v84, v85, v86, v87);
            v320 = *&v333;
            v322 = v70 - v76 * v64;
            v88 = __p;
            v89 = v350 - __p;
            if (v350 == __p)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v82 = 0.0;
            v95 = atan2(0.0, 0.0);
            v64 = tan(v95);
            v320 = 0.0;
            v322 = v64 * -0.0 + 0.0;
            v88 = __p;
            v89 = v350 - __p;
            if (v350 == __p)
            {
LABEL_21:
              v93 = -1.79769313e308;
              v92 = 1.79769313e308;
              goto LABEL_22;
            }
          }

          v90 = v89 >> 4;
          if (v90 <= 1)
          {
            v90 = 1;
          }

          v91 = (v88 + 8);
          v92 = 1.79769313e308;
          v93 = -1.79769313e308;
          do
          {
            v94 = *v91 - *(v91 - 1) * v64;
            if (v94 <= v92)
            {
              v92 = *v91 - *(v91 - 1) * v64;
            }

            if (v94 >= v93)
            {
              v93 = *v91 - *(v91 - 1) * v64;
            }

            v91 += 2;
            --v90;
          }

          while (v90);
LABEL_22:
          v360.origin.x = v46;
          v360.origin.y = v48;
          v360.size.width = v50;
          v360.size.height = v52;
          MaxX = CGRectGetMaxX(v360);
          v361.origin.x = v316;
          v361.size.width = v326;
          v361.origin.y = v327;
          v361.size.height = rect;
          v97 = CGRectGetMaxX(v361);
          v98 = v82 - v320 * v64;
          v99 = fmin(v98, v93) - fmax(v322, v92);
          v100 = v99 / (v93 - v92);
          v101 = fmin(MaxX, v97) - fmax(v46, v316);
          v27 = v316;
          if (v100 <= 0.6)
          {
            if (v100 >= 0.4 && v99 / (v98 - v322) > 0.66 && v101 > v319)
            {
LABEL_30:
              v319 = v101;
              v315 = v33;
            }
          }

          else if (v101 > v319)
          {
            goto LABEL_30;
          }

          ++v33;
        }

        if (v315 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v103 = objc_msgSend_objectAtIndexedSubscript_(v324, v18, v315, v19, v20, v21);
          v109 = v103;
          v347 = 0u;
          v348 = 0u;
          v345 = 0u;
          v346 = 0u;
          v343 = 0u;
          v344 = 0u;
          v341 = 0u;
          v342 = 0u;
          if (v103)
          {
            objc_msgSend_principalLines(v103, v104, v105, v106, v107, v108);
          }

          else
          {
            v339 = 0uLL;
            v340 = 0uLL;
            v337 = 0uLL;
            v338 = 0uLL;
            v335 = 0uLL;
            v336 = 0uLL;
            v333 = 0uLL;
            v334 = 0uLL;
          }

          sub_1838CD8C4(&v333, &__p, &v341);
          v110 = MEMORY[0x1E695DF70];
          v116 = objc_msgSend_count(v22, v111, v112, v113, v114, v115);
          v323 = objc_msgSend_arrayWithCapacity_(v110, v117, v116, v118, v119, v120);
          v126 = 0;
          v321 = v109;
          while (v126 < objc_msgSend_count(v22, v121, v122, v123, v124, v125))
          {
            objc_msgSend_addObject_(v323, v127, &unk_1EF1EC610, v128, v129, v130);
            ++v126;
          }

          v131 = [CHTokenizedTextResultToken alloc];
          v132 = MEMORY[0x1E696AC90];
          v138 = objc_msgSend_count(v22, v133, v134, v135, v136, v137);
          v142 = objc_msgSend_indexSetWithIndexesInRange_(v132, v139, 0, v138, v140, v141);
          v148 = objc_msgSend_locale(v109, v143, v144, v145, v146, v147);
          v154 = objc_msgSend_count(v22, v149, v150, v151, v152, v153);
          v155 = *MEMORY[0x1E695F050];
          v156 = *(MEMORY[0x1E695F050] + 8);
          v157 = *(MEMORY[0x1E695F050] + 16);
          v158 = *(MEMORY[0x1E695F050] + 24);
          v333 = *MEMORY[0x1E695EFF8];
          v334 = v333;
          v335 = v333;
          v336 = v333;
          v337 = v333;
          v338 = v333;
          v339 = v333;
          v340 = v333;
          v317 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v131, v159, &stru_1EF1C0318, v142, 0, 1, v148, 1, 0.0, 0.0, 0.0, 0.0, v155, v156, v157, v158, v154, *&v27, *&v327, *&v326, *&rect, &v333, MEMORY[0x1E695E0F0]);

          v160 = [CHTransformedTextSegment alloc];
          v356 = v317;
          v164 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v161, &v356, 1, v162, v163);
          v170 = objc_msgSend_locale(v109, v165, v166, v167, v168, v169);
          v176 = objc_msgSend_strokeClassification(v109, v171, v172, v173, v174, v175);
          v337 = v345;
          v338 = v346;
          v339 = v347;
          v340 = v348;
          v333 = v341;
          v334 = v342;
          v335 = v343;
          v336 = v344;
          v177 = *(MEMORY[0x1E695EFD0] + 16);
          v332[0] = *MEMORY[0x1E695EFD0];
          v332[1] = v177;
          v332[2] = *(MEMORY[0x1E695EFD0] + 32);
          v179 = objc_msgSend_initWithStrokes_tokens_locale_strokeClassification_principalLines_principalPoints_transform_(v160, v178, v22, v164, v170, v176, &v333, v323, v332);

          v180 = MEMORY[0x1E695DF70];
          v186 = objc_msgSend_tokens(v109, v181, v182, v183, v184, v185);
          v192 = objc_msgSend_count(v186, v187, v188, v189, v190, v191);
          v197 = objc_msgSend_arrayWithCapacity_(v180, v193, v192 + 1, v194, v195, v196);

          if (v319 > 0.0)
          {
            v330 = 0u;
            v331 = 0u;
            v328 = 0u;
            v329 = 0u;
            v203 = objc_msgSend_splitIntoTokens(v109, v198, v199, v200, v201, v202);
            v211 = objc_msgSend_countByEnumeratingWithState_objects_count_(v203, v204, &v328, v355, 16, v205);
            if (!v211)
            {

              goto LABEL_61;
            }

            v212 = 0;
            v213 = *v329;
            while (2)
            {
              v214 = 0;
LABEL_43:
              if (*v329 != v213)
              {
                objc_enumerationMutation(v203);
              }

              v215 = *(*(&v328 + 1) + 8 * v214);
              if (v212)
              {
                goto LABEL_51;
              }

              v216 = objc_msgSend_textStrokes(*(*(&v328 + 1) + 8 * v214), v206, v207, v208, v209, v210);
              objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v217, v216, v218, v219, v220);
              v222 = v221;
              v224 = v223;
              v226 = v225;
              v228 = v227;

              v362.origin.x = v222;
              v362.origin.y = v224;
              v362.size.width = v226;
              v362.size.height = v228;
              v229 = CGRectGetMaxX(v362);
              v363.origin.x = v27;
              v363.size.width = v326;
              v363.origin.y = v327;
              v363.size.height = rect;
              v230 = (fmin(v229, CGRectGetMaxX(v363)) - fmax(v222, v27)) / v226;
              if (v27 < v222 && v230 <= 0.1)
              {
                objc_msgSend_addObject_(v197, v206, v179, v208, v209, v210);
                objc_msgSend_addObjectsFromArray_(v318, v231, v22, v232, v233, v234);
                goto LABEL_51;
              }

              if (v230 >= 0.1)
              {
LABEL_51:
                v212 = 1;
              }

              else
              {
                v212 = 0;
              }

              v235 = objc_msgSend_segments(v215, v206, v207, v208, v209, v210);
              objc_msgSend_addObjectsFromArray_(v197, v236, v235, v237, v238, v239);

              if (v211 == ++v214)
              {
                v211 = objc_msgSend_countByEnumeratingWithState_objects_count_(v203, v206, &v328, v355, 16, v210);
                if (!v211)
                {

                  if (v212)
                  {
                    goto LABEL_62;
                  }

LABEL_61:
                  objc_msgSend_addObject_(v197, v240, v179, v242, v243, v244);
                  objc_msgSend_addObjectsFromArray_(v318, v280, v22, v281, v282, v283);
                  goto LABEL_62;
                }

                continue;
              }

              goto LABEL_43;
            }
          }

          v245 = objc_msgSend_textStrokes(v109, v198, v199, v200, v201, v202, v319);
          objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v246, v245, v247, v248, v249);
          v251 = v250;

          v364.origin.x = v27;
          v364.size.width = v326;
          v364.origin.y = v327;
          v364.size.height = rect;
          if (CGRectGetMaxX(v364) >= v251)
          {
            v271 = objc_msgSend_segments(v109, v252, v253, v254, v255, v256);
            objc_msgSend_addObjectsFromArray_(v197, v272, v271, v273, v274, v275);

            objc_msgSend_addObject_(v197, v276, v179, v277, v278, v279);
          }

          else
          {
            objc_msgSend_addObject_(v197, v252, v179, v254, v255, v256);
            v262 = objc_msgSend_segments(v109, v257, v258, v259, v260, v261);
            objc_msgSend_addObjectsFromArray_(v197, v263, v262, v264, v265, v266);
          }

          objc_msgSend_addObjectsFromArray_(v318, v267, v22, v268, v269, v270);
LABEL_62:
          v284 = objc_msgSend_count(v197, v240, v241, v242, v243, v244);
          v290 = objc_msgSend_segments(v321, v285, v286, v287, v288, v289);
          LODWORD(v284) = v284 > objc_msgSend_count(v290, v291, v292, v293, v294, v295);

          if (v284)
          {
            v296 = [CHTransformedTextLine alloc];
            v301 = objc_msgSend_initWithSegments_(v296, v297, v197, v298, v299, v300);
            objc_msgSend_setObject_atIndexedSubscript_(v324, v302, v301, v315, v303, v304);
          }
        }

        if (__p)
        {
          v350 = __p;
          operator delete(__p);
        }
      }

      v313 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v351, v357, 16, v21);
    }

    while (v313);
  }

  v305 = v318;
  if (strokes)
  {
    v306 = v318;
    v305 = v318;
    *strokes = v318;
  }

  return v324;
}

+ (void)assignNontextGroups:(id)groups toTextLines:(id)lines
{
  v81 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  linesCopy = lines;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = groupsCopy;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v75, v80, 16, v8);
  if (v9)
  {
    v67 = *v76;
    do
    {
      v68 = v9;
      for (i = 0; i != v68; ++i)
      {
        if (*v76 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v75 + 1) + 8 * i);
        objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v10, v15, v11, v12, v13);
        v69 = v22;
        v70 = v21;
        v24 = v23;
        v26 = v25;
        v27 = 0;
        v28 = v23 * v25 + 1.0e-10;
        v29 = 0.0;
        v30 = 0x7FFFFFFFFFFFFFFFLL;
        while (v27 < objc_msgSend_count(linesCopy, v16, v17, v18, v19, v20))
        {
          v31 = objc_msgSend_objectAtIndexedSubscript_(linesCopy, v10, v27, v11, v12, v13);
          v37 = objc_msgSend_textStrokes(v31, v32, v33, v34, v35, v36);
          objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v38, v37, v39, v40, v41);
          v43 = v42;
          v45 = v44;
          v47 = v46;
          v49 = v48;

          v82.origin.x = v43;
          v82.origin.y = v45;
          v82.size.width = v47;
          v82.size.height = v49;
          v84.origin.y = v69;
          v84.origin.x = v70;
          v84.size.width = v24;
          v84.size.height = v26;
          v83 = CGRectIntersection(v82, v84);
          if (v83.size.width * v83.size.height / v28 > v29 && v26 / (v49 + 1.0e-10) < 2.0)
          {
            v30 = v27;
            v29 = v83.size.width * v83.size.height / v28;
          }

          ++v27;
        }

        if (v30 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v50 = v15;
          v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v71, v79, 16, v52);
          if (v57)
          {
            v58 = *v72;
            do
            {
              for (j = 0; j != v57; ++j)
              {
                if (*v72 != v58)
                {
                  objc_enumerationMutation(v50);
                }

                v60 = *(*(&v71 + 1) + 8 * j);
                v61 = objc_msgSend_objectAtIndexedSubscript_(linesCopy, v53, v30, v54, v55, v56);
                objc_msgSend_addSupportStroke_(v61, v62, v60, v63, v64, v65);
              }

              v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v53, &v71, v79, 16, v56);
            }

            while (v57);
          }
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v75, v80, 16, v13);
    }

    while (v9);
  }
}

+ (id)textLineFromTextResult:(id)result principalLineResult:(id)lineResult shouldUseRefinablePath:(BOOL)path strokeProvider:(id)provider shouldCancel:(id)cancel
{
  pathCopy = path;
  v158 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  lineResultCopy = lineResult;
  providerCopy = provider;
  cancelCopy = cancel;
  v127 = objc_msgSend_inputStrokeIdentifiers(resultCopy, v12, v13, v14, v15, v16);
  v20 = 0;
  if (resultCopy && providerCopy && v127)
  {
    if (cancelCopy && (cancelCopy[2]() & 1) != 0)
    {
      v20 = 0;
    }

    else
    {
      v21 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v17, v127, providerCopy, v18, v19);
      v22 = v21;
      v28 = objc_msgSend_count(v21, v23, v24, v25, v26, v27);
      if (v28 == objc_msgSend_count(v127, v29, v30, v31, v32, v33))
      {
        v123 = objc_msgSend_array(MEMORY[0x1E695DF70], v34, v35, v36, v37, v38);
        v145 = 0;
        v146 = &v145;
        v147 = 0x2020000000;
        v148 = 0;
        if (pathCopy)
        {
          objc_msgSend_refinableTranscriptionPath(resultCopy, v39, v40, v41, v42, v43);
        }

        else
        {
          objc_msgSend_topModelTranscriptionPath(resultCopy, v39, v40, v41, v42, v43);
        }
        v121 = ;
        v59 = objc_msgSend_tokensFromTranscriptionPath_(resultCopy, v55, v121, v56, v57, v58);
        v142[0] = MEMORY[0x1E69E9820];
        v142[1] = 3221225472;
        v142[2] = sub_183820C90;
        v142[3] = &unk_1E6DDECC8;
        v60 = v123;
        v143 = v60;
        v144 = &v145;
        v122 = v59;
        objc_msgSend_enumerateObjectsUsingBlock_(v59, v61, v142, v62, v63, v64);
        if (*(v146 + 24) == 1)
        {
          v65 = objc_opt_class();
          v70 = objc_msgSend_changeTokensToVisualOrder_(v65, v66, v60, v67, v68, v69);
          v76 = objc_msgSend_mutableCopy(v70, v71, v72, v73, v74, v75);

          v77 = 2;
          v60 = v76;
        }

        else
        {
          v77 = 1;
        }

        sub_1838C3014(v21, &v140);
        v137 = 0;
        v138 = 0;
        v139 = 0;
        v83 = objc_msgSend_count(v21, v78, v79, v80, v81, v82);
        if (v83)
        {
          if (v83 < 0xAAAAAAAAAAAAAABLL)
          {
            operator new();
          }

          sub_18368964C();
        }

        v120 = v77;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v84 = v21;
        v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v85, &v133, v157, 16, v86);
        if (v90)
        {
          v91 = *v134;
          do
          {
            for (i = 0; i != v90; ++i)
            {
              if (*v134 != v91)
              {
                objc_enumerationMutation(v84);
              }

              v156 = *(*(&v133 + 1) + 8 * i);
              v93 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v87, &v156, 1, v88, v89);
              sub_1838C3014(v93, buf);

              v94 = v138;
              if (v138 >= v139)
              {
                v95 = sub_183822084(&v137, buf);
              }

              else
              {
                *v138 = 0;
                v94[1] = 0;
                v94[2] = 0;
                if (*&buf[8] != *buf)
                {
                  if (((*&buf[8] - *buf) & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  sub_18369761C();
                }

                v95 = v94 + 3;
              }

              v21 = v22;
              v138 = v95;
              if (*buf)
              {
                *&buf[8] = *buf;
                operator delete(*buf);
              }
            }

            v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v87, &v133, v157, 16, v89);
          }

          while (v90);
        }

        v96 = sub_18381A760(lineResultCopy);
        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        memset(buf, 0, sizeof(buf));
        v97 = objc_opt_class();
        __p = 0;
        v131 = 0;
        v132 = 0;
        if (v141 != v140)
        {
          if (((v141 - v140) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_18369761C();
        }

        if (v97)
        {
          objc_msgSend_principalLinesFromPrincipalLinePoints_points_(v97, v98, v96, &__p, v99, v100);
          if (__p)
          {
            v131 = __p;
            operator delete(__p);
          }
        }

        else
        {
          v154 = 0u;
          v155 = 0u;
          v152 = 0u;
          v153 = 0u;
          v150 = 0u;
          v151 = 0u;
          memset(buf, 0, sizeof(buf));
        }

        v101 = *MEMORY[0x1E695EFF8];
        if (*buf == *MEMORY[0x1E695EFF8] && (v102 = *(MEMORY[0x1E695EFF8] + 8), *&buf[8] == v102) && *&buf[16] == v101 && *&buf[24] == v102 && *&v150 == v101 && *(&v150 + 1) == v102 && *&v151 == v101 && *(&v151 + 1) == v102 && *&v152 == v101 && *(&v152 + 1) == v102 && *&v153 == v101 && *(&v153 + 1) == v102 && *&v154 == v101 && *(&v154 + 1) == v102 && *&v155 == v101 && *(&v155 + 1) == v102)
        {
          v44 = 0;
        }

        else
        {
          v103 = [CHTransformedTextLine alloc];
          v109 = objc_msgSend_locale(resultCopy, v104, v105, v106, v107, v108);
          v129[4] = v152;
          v129[5] = v153;
          v129[6] = v154;
          v129[7] = v155;
          v129[0] = *buf;
          v129[1] = *&buf[16];
          v129[2] = v150;
          v129[3] = v151;
          v110 = *(MEMORY[0x1E695EFD0] + 16);
          v128[0] = *MEMORY[0x1E695EFD0];
          v128[1] = v110;
          v128[2] = *(MEMORY[0x1E695EFD0] + 32);
          v112 = objc_msgSend_initWithStrokes_tokens_points_strokePoints_locale_strokeClassification_principalLines_principalPoints_transform_(v103, v111, v84, v60, &v140, &v137, v109, v120, v129, lineResultCopy, v128);

          v44 = v112;
        }

        v113 = v137;
        if (v137)
        {
          v114 = v138;
          v115 = v137;
          if (v138 != v137)
          {
            v116 = v138;
            do
            {
              v118 = *(v116 - 3);
              v116 -= 3;
              v117 = v118;
              if (v118)
              {
                *(v114 - 2) = v117;
                operator delete(v117);
              }

              v114 = v116;
            }

            while (v116 != v113);
            v115 = v137;
          }

          v138 = v113;
          operator delete(v115);
        }

        if (v140)
        {
          v141 = v140;
          operator delete(v140);
        }

        _Block_object_dispose(&v145, 8);
        v20 = v44;
      }

      else
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v44 = qword_1EA84DCA0;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = objc_msgSend_count(v127, v45, v46, v47, v48, v49);
          *&buf[12] = 2048;
          *&buf[14] = objc_msgSend_count(v21, v50, v51, v52, v53, v54);
          _os_log_impl(&dword_18366B000, v44, OS_LOG_TYPE_ERROR, "Incorrect number of strokes in text line: %ld strokes expected, %ld strokes retrieved from the provider.", buf, 0x16u);
        }

        v20 = 0;
      }
    }
  }

  return v20;
}

+ (id)textLinesFromContext:(id)context strokeGroupingResult:(id)result contextStrokes:(id)strokes initialStrokes:(id)initialStrokes strokeProvider:(id)provider relatedNonTextStrokes:(id)textStrokes excludedStrokeTypes:(id)types skipLineOrientationEstimate:(BOOL)self0 useCache:(BOOL)self1 progress:(id)self2 shouldCancel:(id)self3
{
  v358 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  resultCopy = result;
  strokesCopy = strokes;
  initialStrokesCopy = initialStrokes;
  providerCopy = provider;
  textStrokesCopy = textStrokes;
  typesCopy = types;
  progressCopy = progress;
  cancelCopy = cancel;
  v331 = contextCopy;
  v321 = objc_msgSend_array(MEMORY[0x1E695DF70], v19, v20, v21, v22, v23);
  v29 = MEMORY[0x1E695E0F0];
  if (contextCopy && providerCopy && (!cancelCopy || ((cancelCopy[2])() & 1) == 0))
  {
    if (progressCopy)
    {
      v31 = MEMORY[0x1E696AE38];
      v32 = objc_msgSend_textResults(contextCopy, v24, v25, v26, v27, v28);
      v38 = objc_msgSend_count(v32, v33, v34, v35, v36, v37);
      v319 = objc_msgSend_progressWithTotalUnitCount_parent_pendingUnitCount_(v31, v39, v38, progressCopy, 50, v40);
    }

    else
    {
      v319 = 0;
    }

    v313 = objc_msgSend_tokenSupportRangesForNonTextStrokes_initialStrokes_strokeProvider_(contextCopy, v24, textStrokesCopy, initialStrokesCopy, providerCopy, v28);
    v41 = objc_alloc(MEMORY[0x1E695DFA8]);
    v46 = objc_msgSend_initWithArray_(v41, v42, strokesCopy, v43, v44, v45);
    v350 = 0u;
    v351 = 0u;
    v348 = 0u;
    v349 = 0u;
    v47 = textStrokesCopy;
    v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v348, v357, 16, v49);
    if (v50)
    {
      v51 = *v349;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v349 != v51)
          {
            objc_enumerationMutation(v47);
          }

          v53 = *(*(&v348 + 1) + 8 * i);
          if (v53)
          {
            v53 = v53[11];
          }

          v54 = v53;
          objc_msgSend_addObject_(v46, v55, v54, v56, v57, v58);
        }

        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v59, &v348, v357, 16, v60);
      }

      while (v50);
    }

    v66 = 0;
    v67 = 0x1E6DDB000uLL;
    while (1)
    {
      v68 = objc_msgSend_textResults(v331, v61, v62, v63, v64, v65);
      v74 = v66 < objc_msgSend_count(v68, v69, v70, v71, v72, v73);

      if (!v74)
      {
        break;
      }

      if (cancelCopy && cancelCopy[2]())
      {
        objc_msgSend_removeAllObjects(v321, v75, v76, v77, v78, v79);
        goto LABEL_59;
      }

      v80 = objc_msgSend_textResults(v331, v75, v76, v77, v78, v79);
      v85 = objc_msgSend_objectAtIndexedSubscript_(v80, v81, v66, v82, v83, v84);
      v332 = objc_msgSend_strokeGroup(v85, v86, v87, v88, v89, v90);

      v96 = objc_msgSend_textResults(v331, v91, v92, v93, v94, v95);
      v101 = objc_msgSend_objectAtIndexedSubscript_(v96, v97, v66, v98, v99, v100);
      v107 = objc_msgSend_textResult(v101, v102, v103, v104, v105, v106);

      v113 = objc_msgSend_inputStrokeIdentifiers(v107, v108, v109, v110, v111, v112);
      v119 = v113;
      if (v107)
      {
        if (v113)
        {
          if (v332)
          {
            v120 = MEMORY[0x1E696AD98];
            v121 = objc_msgSend_classification(v332, v114, v115, v116, v117, v118);
            v126 = objc_msgSend_numberWithInteger_(v120, v122, v121, v123, v124, v125);
            v131 = objc_msgSend_containsObject_(typesCopy, v127, v126, v128, v129, v130);

            if ((v131 & 1) == 0)
            {
              v324 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v132, v119, providerCopy, v133, v134);
              v140 = objc_msgSend_count(v324, v135, v136, v137, v138, v139);
              if (v140 != objc_msgSend_count(v119, v141, v142, v143, v144, v145))
              {
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v243 = qword_1EA84DCA0;
                if (os_log_type_enabled(v243, OS_LOG_TYPE_ERROR))
                {
                  v249 = objc_msgSend_count(v119, v244, v245, v246, v247, v248);
                  v255 = objc_msgSend_count(v324, v250, v251, v252, v253, v254);
                  *v355 = 134218240;
                  *&v355[4] = v249;
                  *&v355[12] = 2048;
                  *&v355[14] = v255;
                  _os_log_impl(&dword_18366B000, v243, OS_LOG_TYPE_ERROR, "Incorrect number of strokes in text line: %ld strokes expected, %ld strokes retrieved from the provider.", v355, 0x16u);
                }

                objc_msgSend_removeAllObjects(v321, v256, v257, v258, v259, v260);
                break;
              }

              v328 = objc_msgSend_array(MEMORY[0x1E695DF70], v146, v147, v148, v149, v150);
              *v355 = 0;
              *&v355[8] = v355;
              *&v355[16] = 0x2020000000;
              v356 = 1;
              v344 = 0;
              v345 = &v344;
              v346 = 0x2020000000;
              v347 = 0;
              v156 = objc_msgSend_locale(v107, v151, v152, v153, v154, v155);
              if (objc_msgSend_shouldUseOriginalTokensForLocale_(CHRecognizerConfiguration, v157, v156, v158, v159, v160))
              {
                objc_msgSend_refinableTranscriptionPath(v107, v161, v162, v163, v164, v165);
              }

              else
              {
                objc_msgSend_topModelTranscriptionPath(v107, v161, v162, v163, v164, v165);
              }
              v323 = ;

              v168 = objc_msgSend_tokensAlignedWithStrokes_transcriptionPath_strokeProvider_(v107, v166, initialStrokesCopy, v323, providerCopy, v167);
              v340[0] = MEMORY[0x1E69E9820];
              v340[1] = 3221225472;
              v340[2] = sub_183821AE4;
              v340[3] = &unk_1E6DDECF0;
              v329 = v328;
              v341 = v329;
              v342 = v355;
              v343 = &v344;
              v318 = v168;
              objc_msgSend_enumerateObjectsUsingBlock_(v168, v169, v340, v170, v171, v172);
              if (*(v345 + 24) == 1)
              {
                v178 = objc_opt_class();
                v183 = objc_msgSend_changeTokensToVisualOrder_(v178, v179, v329, v180, v181, v182);
                v189 = objc_msgSend_mutableCopy(v183, v184, v185, v186, v187, v188);

                v329 = v189;
              }

              if (cache)
              {
                v190 = objc_msgSend_locale(v107, v173, v174, v175, v176, v177);
                shouldUseOriginalTokensForLocale = objc_msgSend_shouldUseOriginalTokensForLocale_(CHRecognizerConfiguration, v191, v190, v192, v193, v194);

                v196 = shouldUseOriginalTokensForLocale ^ 1;
              }

              else
              {
                v196 = 0;
              }

              v197 = objc_opt_class();
              v203 = objc_msgSend_locale(v107, v198, v199, v200, v201, v202);
              LOBYTE(v312) = v196;
              v326 = objc_msgSend_textLineForTokens_locale_strokeGroup_strokes_strokeProvider_skipLineOrientationEstimate_useCache_shouldCancel_(v197, v204, v329, v203, v332, v324, providerCopy, estimate, v312, cancelCopy);

              if (v326)
              {
                v210 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v205, v66, v207, v208, v209);
                v316 = objc_msgSend_addRelatedNontextStrokes_tokenRangesForNonTextStrokes_strokeProvider_groupIndex_(v326, v211, v47, v313, providerCopy, v210);

                objc_msgSend_minusSet_(v46, v212, v316, v213, v214, v215);
                objc_msgSend_addObject_(v321, v216, v326, v217, v218, v219);
                v220 = v67;
                v338 = 0u;
                v339 = 0u;
                v336 = 0u;
                v337 = 0u;
                v221 = v119;
                v228 = objc_msgSend_countByEnumeratingWithState_objects_count_(v221, v222, &v336, v354, 16, v223);
                if (v228)
                {
                  v229 = *v337;
                  do
                  {
                    for (j = 0; j != v228; ++j)
                    {
                      if (*v337 != v229)
                      {
                        objc_enumerationMutation(v221);
                      }

                      objc_msgSend_removeObject_(v46, v224, *(*(&v336 + 1) + 8 * j), v225, v226, v227);
                    }

                    v228 = objc_msgSend_countByEnumeratingWithState_objects_count_(v221, v224, &v336, v354, 16, v227);
                  }

                  while (v228);
                }

                v67 = v220;
              }

              if (progressCopy)
              {
                v231 = objc_msgSend_completedUnitCount(v319, v205, v206, v207, v208, v209);
                objc_msgSend_setCompletedUnitCount_(v319, v232, v231 + 1, v233, v234, v235);
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v236 = qword_1EA84DCA0;
                if (os_log_type_enabled(v236, OS_LOG_TYPE_DEBUG))
                {
                  v242 = objc_msgSend_localizedDescription(v319, v237, v238, v239, v240, v241);
                  *buf = 138412290;
                  v353 = v242;
                  _os_log_impl(&dword_18366B000, v236, OS_LOG_TYPE_DEBUG, "Reflow Task Progress (transform): %@", buf, 0xCu);
                }
              }

              _Block_object_dispose(&v344, 8);
              _Block_object_dispose(v355, 8);
            }
          }
        }
      }

      ++v66;
    }

    if (!cancelCopy)
    {
      goto LABEL_61;
    }

LABEL_59:
    if (cancelCopy[2]())
    {
      objc_msgSend_removeAllObjects(v321, v75, v76, v77, v78, v79);
    }

LABEL_61:
    if (objc_msgSend_count(v321, v75, v76, v77, v78, v79) && objc_msgSend_count(v46, v261, v262, v263, v264, v265))
    {
      v266 = objc_opt_class();
      v272 = objc_msgSend_nontextStrokeGroups(resultCopy, v267, v268, v269, v270, v271);
      v275 = objc_msgSend_remainingGroupStrokes_remainingStrokes_strokeProvider_(v266, v273, v272, v46, providerCopy, v274);

      v276 = *(v67 + 1912);
      v335 = 0;
      v279 = objc_msgSend_addNonTextSegmentsAndLines_nontextGroups_outNonTextStrokes_(v276, v277, v321, v275, &v335, v278);
      v280 = v335;
      v286 = objc_msgSend_mutableCopy(v279, v281, v282, v283, v284, v285);

      v333[0] = MEMORY[0x1E69E9820];
      v333[1] = 3221225472;
      v333[2] = sub_183821C40;
      v333[3] = &unk_1E6DDED18;
      v287 = v46;
      v334 = v287;
      objc_msgSend_enumerateObjectsUsingBlock_(v280, v288, v333, v289, v290, v291);
      v292 = objc_opt_class();
      v298 = objc_msgSend_nontextStrokeGroups(resultCopy, v293, v294, v295, v296, v297);
      v301 = objc_msgSend_remainingGroupStrokes_remainingStrokes_strokeProvider_(v292, v299, v298, v287, providerCopy, v300);

      v302 = objc_opt_class();
      objc_msgSend_assignNontextGroups_toTextLines_(v302, v303, v301, v286, v304, v305);

      v321 = v286;
    }

    if (v319)
    {
      v306 = objc_msgSend_totalUnitCount(v319, v261, v262, v263, v264, v265);
      objc_msgSend_setCompletedUnitCount_(v319, v307, v306, v308, v309, v310);
    }

    v29 = v321;

    v30 = v29;
  }

  else
  {
    v30 = v321;
  }

  return v29;
}

- (id).cxx_construct
{
  *(self + 28) = xmmword_1839CE920;
  *(self + 29) = xmmword_1839CE920;
  return self;
}

@end