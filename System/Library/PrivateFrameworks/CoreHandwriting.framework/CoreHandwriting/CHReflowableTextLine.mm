@interface CHReflowableTextLine
+ (BOOL)useRightToLeftReflow:(id)a3;
+ (id)_changePrincipalLinesToHorizontalForLine:(id)a3;
+ (id)_changePrincipalLinesToMatchPreviousLine:(id)a3 previousLine:(id)a4 withCorrectionThreshold:(double)a5;
+ (id)_normalizedLocaleForCRLineWrapper:(id)a3;
+ (id)adjustLeadingForReflowableLines:(id)a3;
+ (id)alignShortReflowableLines:(id)a3;
+ (id)reflowableLines:(id)a3 withLineWrapper:(id)a4;
+ (id)reflowableTextLinesFromTransformedTextLines:(id)a3 mergeUnacceptableLines:(BOOL)a4 progress:(id)a5;
+ (id)reflowableTextLinesWithProgress:(id)a3 contextResults:(id)a4 strokeGroupingResult:(id)a5 contextStrokes:(id)a6 initialStrokes:(id)a7 strokeProvider:(id)a8 relatedNonTextStrokes:(id)a9 shouldCancel:(id)a10;
+ (id)reflowableTextTokensFromTransformedTextLines:(id)a3;
- ($196E0A09E4C4E138EEBEC6372622051A)principalLines;
- (CGRect)bounds;
- (CHReflowableTextLine)initWithTokens:(id)a3 principalLines:(id *)a4 bounds:(CGRect)a5 headIndent:(double)a6 leading:(double)a7 hasStartingLineBreak:(BOOL)a8 hasEndingLineBreak:(BOOL)a9 alignmentType:(unint64_t)a10 writingDirection:(int64_t)a11 locale:(id)a12;
- (CRNormalizedQuad)boundingQuad;
- (NSString)description;
- (double)orientation;
- (id)_string;
- (id)string;
- (unint64_t)layoutDirection;
@end

@implementation CHReflowableTextLine

- (CHReflowableTextLine)initWithTokens:(id)a3 principalLines:(id *)a4 bounds:(CGRect)a5 headIndent:(double)a6 leading:(double)a7 hasStartingLineBreak:(BOOL)a8 hasEndingLineBreak:(BOOL)a9 alignmentType:(unint64_t)a10 writingDirection:(int64_t)a11 locale:(id)a12
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v24 = a3;
  v25 = a12;
  v48.receiver = self;
  v48.super_class = CHReflowableTextLine;
  v31 = [(CHReflowableTextLine *)&v48 init];
  if (v31)
  {
    v32 = objc_msgSend_copy(v24, v26, v27, v28, v29, v30);
    tokens = v31->_tokens;
    v31->_tokens = v32;

    var0 = a4->var0.var0;
    var1 = a4->var0.var1;
    v36 = a4->var1.var1;
    v31->_principalLines.base.start = a4->var1.var0;
    v31->_principalLines.base.end = v36;
    v31->_principalLines.descender.start = var0;
    v31->_principalLines.descender.end = var1;
    v37 = a4->var2.var0;
    v38 = a4->var2.var1;
    v39 = a4->var3.var1;
    v31->_principalLines.top.start = a4->var3.var0;
    v31->_principalLines.top.end = v39;
    v31->_principalLines.median.start = v37;
    v31->_principalLines.median.end = v38;
    v31->_bounds.origin.x = x;
    v31->_bounds.origin.y = y;
    v31->_bounds.size.width = width;
    v31->_bounds.size.height = height;
    v31->_headIndent = a6;
    v31->_leading = a7;
    v31->_hasStartingLineBreak = a8;
    v31->_hasEndingLineBreak = a9;
    v31->_alignmentType = a10;
    v31->_writingDirection = a11;
    v45 = objc_msgSend_copy(v25, v40, v41, v42, v43, v44);
    locale = v31->_locale;
    v31->_locale = v45;
  }

  return v31;
}

- (id)string
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3, v4, v5);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = objc_msgSend_tokens(self, v8, v9, v10, v11, v12, 0);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v36, v40, 16, v15);
  if (v21)
  {
    v22 = *v37;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v13);
        }

        v24 = *(*(&v36 + 1) + 8 * i);
        if (objc_msgSend_hasPrecedingSpace(v24, v16, v17, v18, v19, v20))
        {
          objc_msgSend_appendString_(v7, v25, @" ", v27, v28, v29);
        }

        v30 = objc_msgSend_string(v24, v25, v26, v27, v28, v29);
        objc_msgSend_appendString_(v7, v31, v30, v32, v33, v34);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v36, v40, 16, v20);
    }

    while (v21);
  }

  return v7;
}

- (double)orientation
{
  objc_msgSend_principalLines(self, a2, v2, v3, v4, v5);
  objc_msgSend_principalLines(self, v7, v8, v9, v10, v11);
  objc_msgSend_bounds(self, v12, v13, v14, v15, v16);
  v18 = (v40 - v38) * v17;
  objc_msgSend_principalLines(self, v19, v20, v21, v22, v23);
  objc_msgSend_principalLines(self, v24, v25, v26, v27, v28);
  objc_msgSend_bounds(self, v29, v30, v31, v32, v33);
  if (fabs(v18) >= 1.17549435e-38)
  {
    v35 = v18;
  }

  else
  {
    v35 = 1.17549435e-38;
  }

  v36 = (v41 - v39) * v34 / v35;

  return atan(v36);
}

- (NSString)description
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3, v4, v5);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v13 = objc_msgSend_tokens(self, v8, v9, v10, v11, v12);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v67, v71, 16, v15);
  if (v21)
  {
    v22 = *v68;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v68 != v22)
        {
          objc_enumerationMutation(v13);
        }

        v24 = *(*(&v67 + 1) + 8 * i);
        v25 = objc_msgSend_strokeIdentifiers(v24, v16, v17, v18, v19, v20);
        v31 = objc_msgSend_count(v25, v26, v27, v28, v29, v30);
        v37 = objc_msgSend_nonTextStrokeIdentifiers(v24, v32, v33, v34, v35, v36);
        v43 = objc_msgSend_count(v37, v38, v39, v40, v41, v42);
        objc_msgSend_appendFormat_(v7, v44, @"(T: %lu, NT%lu), ", v45, v46, v47, v31, v43);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v67, v71, 16, v20);
    }

    while (v21);
  }

  v48 = MEMORY[0x1E696AEC0];
  v54 = objc_msgSend_tokens(self, v49, v50, v51, v52, v53);
  v60 = objc_msgSend_count(v54, v55, v56, v57, v58, v59);
  v65 = objc_msgSend_stringWithFormat_(v48, v61, @"ReflowableLine %lu tokens, stroke counts per token = %@", v62, v63, v64, v60, v7);

  return v65;
}

+ (BOOL)useRightToLeftReflow:(id)a3
{
  v6 = objc_msgSend_languageCode(a3, a2, a3, v3, v4, v5);
  v12 = objc_msgSend_lowercaseString(v6, v7, v8, v9, v10, v11);

  if (v12)
  {
    v17 = objc_msgSend_containsObject_(&unk_1EF1EC688, v13, v12, v14, v15, v16);

    return v17;
  }

  else
  {

    return 0;
  }
}

- (id)_string
{
  v37 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = objc_msgSend_tokens(self, a2, v2, v3, v4, v5, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v32, v36, 16, v8);
  if (v14)
  {
    v15 = *v33;
    v16 = &stru_1EF1C0318;
    do
    {
      v17 = 0;
      v18 = v16;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v6);
        }

        v19 = *(*(&v32 + 1) + 8 * v17);
        if (objc_msgSend_hasPrecedingSpace(v19, v9, v10, v11, v12, v13))
        {
          v25 = objc_msgSend_stringByAppendingString_(v18, v20, @" ", v22, v23, v24);

          v18 = v25;
        }

        v26 = objc_msgSend_string(v19, v20, v21, v22, v23, v24);
        v16 = objc_msgSend_stringByAppendingString_(v18, v27, v26, v28, v29, v30);

        ++v17;
        v18 = v16;
      }

      while (v14 != v17);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v32, v36, 16, v13);
    }

    while (v14);
  }

  else
  {
    v16 = &stru_1EF1C0318;
  }

  return v16;
}

- (CRNormalizedQuad)boundingQuad
{
  objc_msgSend_principalLines(self, a2, v2, v3, v4, v5);
  objc_msgSend_bounds(self, v7, v8, v9, v10, v11);
  if (v14 == 0.0)
  {
    v14 = 1.0;
  }

  if (v15 == 0.0)
  {
    v15 = 1.0;
  }

  v16 = v12 + v32 * v14;
  v17 = v13 + v33 * v15;
  v18 = v12 + v34 * v14;
  v19 = v13 + v35 * v15;
  v20 = v12 + v36 * v14;
  v21 = v13 + v37 * v15;
  v22 = v12 + v38 * v14;
  v23 = v13 + v39 * v15;
  v24 = objc_alloc(MEMORY[0x1E69D9DD8]);
  v30 = objc_msgSend_initWithNormalizedTopLeft_topRight_bottomRight_bottomLeft_size_(v24, v25, v26, v27, v28, v29, v20, v21, v22, v23, v18, v19, v16, v17, 0x3FF0000000000000, 0x3FF0000000000000);

  return v30;
}

- (unint64_t)layoutDirection
{
  v6 = objc_msgSend_writingDirection(self, a2, v2, v3, v4, v5);
  if ((v6 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1839D92A8[v6 - 1];
  }
}

+ (id)reflowableTextLinesWithProgress:(id)a3 contextResults:(id)a4 strokeGroupingResult:(id)a5 contextStrokes:(id)a6 initialStrokes:(id)a7 strokeProvider:(id)a8 relatedNonTextStrokes:(id)a9 shouldCancel:(id)a10
{
  v79 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v65 = a9;
  v60 = v17;
  v61 = v18;
  v62 = v19;
  v63 = v20;
  v64 = a10;
  v21 = objc_opt_class();
  v67 = objc_msgSend_textLinesFromContext_strokeGroupingResult_contextStrokes_initialStrokes_strokeProvider_relatedNonTextStrokes_excludedStrokeTypes_skipLineOrientationEstimate_useCache_progress_shouldCancel_(v21, v22, v16, v17, v18, v19, v20, v65, 0, 256, v15, v64);
  v23 = objc_opt_class();
  v66 = objc_msgSend_reflowableTextLinesFromTransformedTextLines_mergeUnacceptableLines_progress_(v23, v24, v67, 1, v15, v25);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v26 = qword_1EA84DCA0;
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);

  if (v27)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v28 = qword_1EA84DCA0;
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    if (v16)
    {
      v18 = objc_msgSend_textResults(v16, v29, v30, v31, v32, v33);
      v39 = objc_msgSend_count(v18, v34, v35, v36, v37, v38);
      v40 = v65;
      if (v65)
      {
LABEL_9:
        v41 = objc_msgSend_count(v40, v29, v30, v31, v32, v33);
        goto LABEL_12;
      }
    }

    else
    {
      v39 = 0;
      v40 = v65;
      if (v65)
      {
        goto LABEL_9;
      }
    }

    v41 = 0;
LABEL_12:
    *buf = 134218496;
    v74 = v39;
    v75 = 2048;
    v76 = v41;
    v77 = 2048;
    v78 = objc_msgSend_count(v66, v29, v30, v31, v32, v33);
    _os_log_impl(&dword_18366B000, v28, OS_LOG_TYPE_DEBUG, "Computed reflowable results from %ld context results, and %ld related non-text strokes: created %ld reflowable lines", buf, 0x20u);
    if (v16)
    {
    }

LABEL_14:

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v42 = v66;
    v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v68, v72, 16, v44);
    if (!v45)
    {
      goto LABEL_27;
    }

    v46 = *v69;
    while (1)
    {
      v47 = 0;
      do
      {
        if (*v69 != v46)
        {
          objc_enumerationMutation(v42);
        }

        v48 = *(*(&v68 + 1) + 8 * v47);
        if (qword_1EA84DC48 == -1)
        {
          v49 = qword_1EA84DCA0;
          if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_22;
          }

LABEL_21:
          v55 = objc_msgSend_description(v48, v50, v51, v52, v53, v54);
          *buf = 138412290;
          v74 = v55;
          _os_log_impl(&dword_18366B000, v49, OS_LOG_TYPE_DEBUG, "%@\n", buf, 0xCu);

          goto LABEL_22;
        }

        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v49 = qword_1EA84DCA0;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_21;
        }

LABEL_22:

        ++v47;
      }

      while (v45 != v47);
      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v56, &v68, v72, 16, v57);
      v45 = v58;
      if (!v58)
      {
LABEL_27:

        break;
      }
    }
  }

  return v66;
}

+ (id)reflowableLines:(id)a3 withLineWrapper:(id)a4
{
  v581 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v521 = a4;
  v523 = v5;
  if (objc_msgSend_count(v5, v6, v7, v8, v9, v10) > 1)
  {
    v520 = objc_alloc_init(CHCTLD);
    v15 = objc_msgSend_reflowableLineRegions_(v520, v11, v5, v12, v13, v14);
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v568 = 0u;
    v569 = 0u;
    v570 = 0u;
    v571 = 0u;
    obj = v15;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v568, v580, 16, v21);
    if (v22)
    {
      v23 = *v569;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v569 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v568 + 1) + 8 * i);
          v564 = 0u;
          v565 = 0u;
          v566 = 0u;
          v567 = 0u;
          v26 = v25;
          v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v564, v579, 16, v28);
          if (v34)
          {
            v35 = *v565;
            do
            {
              for (j = 0; j != v34; ++j)
              {
                if (*v565 != v35)
                {
                  objc_enumerationMutation(v26);
                }

                objc_msgSend_bounds(*(*(&v564 + 1) + 8 * j), v29, v30, v31, v32, v33);
                v585.origin.x = v37;
                v585.origin.y = v38;
                v585.size.width = v39;
                v585.size.height = v40;
                v583.origin.x = x;
                v583.origin.y = y;
                v583.size.width = width;
                v583.size.height = height;
                v584 = CGRectUnion(v583, v585);
                x = v584.origin.x;
                y = v584.origin.y;
                width = v584.size.width;
                height = v584.size.height;
              }

              v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v564, v579, 16, v33);
            }

            while (v34);
          }
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v568, v580, 16, v42);
      }

      while (v22);
    }

    v524 = objc_msgSend_array(MEMORY[0x1E695DF70], v43, v44, v45, v46, v47);
    v562 = 0u;
    v563 = 0u;
    v560 = 0u;
    v561 = 0u;
    v525 = obj;
    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v525, v48, &v560, v578, 16, v49);
    if (v55)
    {
      v529 = *v561;
      while (2)
      {
        v532 = 0;
        v526 = v55;
        do
        {
          if (*v561 != v529)
          {
            objc_enumerationMutation(v525);
          }

          v56 = *(*(&v560 + 1) + 8 * v532);
          v57 = objc_msgSend_array(MEMORY[0x1E695DF70], v50, v51, v52, v53, v54);
          v558 = 0u;
          v559 = 0u;
          v556 = 0u;
          v557 = 0u;
          v533 = v56;
          v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v533, v58, &v556, v577, 16, v59);
          if (v65)
          {
            v66 = *v557;
            while (2)
            {
              for (k = 0; k != v65; ++k)
              {
                if (*v557 != v66)
                {
                  objc_enumerationMutation(v533);
                }

                v68 = *(*(&v556 + 1) + 8 * k);
                v69 = objc_msgSend_boundingQuad(v68, v60, v61, v62, v63, v64);
                objc_msgSend_topLeft(v69, v70, v71, v72, v73, v74);
                v544 = v75;
                objc_msgSend_topLeft(v69, v76, v77, v78, v79, v80);
                v541 = v81;
                objc_msgSend_topRight(v69, v82, v83, v84, v85, v86);
                v538 = v87;
                objc_msgSend_topRight(v69, v88, v89, v90, v91, v92);
                v535 = v93;
                objc_msgSend_bottomRight(v69, v94, v95, v96, v97, v98);
                v100 = v99;
                objc_msgSend_bottomRight(v69, v101, v102, v103, v104, v105);
                v107 = v106;
                objc_msgSend_bottomLeft(v69, v108, v109, v110, v111, v112);
                v114 = v113;
                objc_msgSend_bottomLeft(v69, v115, v116, v117, v118, v119);
                v121 = v120;
                v122 = objc_alloc(MEMORY[0x1E69D9DD8]);
                v128 = objc_msgSend_initWithNormalizedTopLeft_topRight_bottomRight_bottomLeft_size_(v122, v123, v124, v125, v126, v127, (v544 - x) / width, (v541 - y) / height, (v538 - x) / width, (v535 - y) / height, (v100 - x) / width, (v107 - y) / height, (v114 - x) / width, (v121 - y) / height, *&width, *&height);
                v134 = objc_msgSend_locale(v68, v129, v130, v131, v132, v133);
                v135 = objc_opt_class();
                v140 = objc_msgSend__normalizedLocaleForCRLineWrapper_(v135, v136, v134, v137, v138, v139);

                if (!v140)
                {

                  v155 = 0;
                  goto LABEL_32;
                }

                v141 = [CHLineWrappableLine alloc];
                v147 = objc_msgSend__string(v68, v142, v143, v144, v145, v146);
                v150 = objc_msgSend_initWithQuad_text_locale_(v141, v148, v128, v147, v140, v149);

                objc_msgSend_addObject_(v57, v151, v150, v152, v153, v154);
              }

              v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v533, v60, &v556, v577, 16, v64);
              if (v65)
              {
                continue;
              }

              break;
            }
          }

          v155 = 1;
LABEL_32:

          v156 = [CHLineWrappableGroup alloc];
          v161 = objc_msgSend_initWithLines_(v156, v157, v57, v158, v159, v160);
          objc_msgSend_addObject_(v524, v162, v161, v163, v164, v165);

          if ((v155 & 1) == 0)
          {

            v531 = v523;
            goto LABEL_97;
          }

          v532 = v532 + 1;
        }

        while (v532 != v526);
        v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v525, v50, &v560, v578, 16, v54);
        if (v55)
        {
          continue;
        }

        break;
      }
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v166 = qword_1EA84DCA8;
    if (os_log_type_enabled(v166, OS_LOG_TYPE_DEBUG))
    {
      v172 = objc_msgSend_count(v523, v167, v168, v169, v170, v171);
      v178 = objc_msgSend_count(v525, v173, v174, v175, v176, v177);
      *buf = 134218240;
      *&buf[4] = v172;
      *&buf[12] = 2048;
      *&buf[14] = v178;
      _os_log_impl(&dword_18366B000, v166, OS_LOG_TYPE_DEBUG, "Running line wrapper for %lu lines in %lu groups.", buf, 0x16u);
    }

    v522 = objc_msgSend_lineWrappingResultForGroups_options_error_(v521, v179, v524, 0, 0, v180);
    v181 = objc_opt_new();
    v554 = 0u;
    v555 = 0u;
    v552 = 0u;
    v553 = 0u;
    v187 = objc_msgSend_lineWrappableGroups(v522, v182, v183, v184, v185, v186);
    v190 = 0;
    v196 = objc_msgSend_countByEnumeratingWithState_objects_count_(v187, v188, &v552, v576, 16, v189);
    if (v196)
    {
      v197 = *v553;
      do
      {
        for (m = 0; m != v196; ++m)
        {
          if (*v553 != v197)
          {
            objc_enumerationMutation(v187);
          }

          v199 = *(*(&v552 + 1) + 8 * m);
          v548 = 0u;
          v549 = 0u;
          v550 = 0u;
          v551 = 0u;
          v200 = objc_msgSend_subregions(v199, v191, v192, v193, v194, v195);
          v208 = objc_msgSend_countByEnumeratingWithState_objects_count_(v200, v201, &v548, v575, 16, v202);
          if (v208)
          {
            v209 = *v549;
            do
            {
              for (n = 0; n != v208; ++n)
              {
                if (*v549 != v209)
                {
                  objc_enumerationMutation(v200);
                }

                if (objc_msgSend_lineWrappingType(*(*(&v548 + 1) + 8 * n), v203, v204, v205, v206, v207) != 1)
                {
                  objc_msgSend_addIndex_(v181, v203, v190, v205, v206, v207);
                }

                ++v190;
              }

              v208 = objc_msgSend_countByEnumeratingWithState_objects_count_(v200, v203, &v548, v575, 16, v207);
            }

            while (v208);
          }
        }

        v196 = objc_msgSend_countByEnumeratingWithState_objects_count_(v187, v191, &v552, v576, 16, v195);
      }

      while (v196);
    }

    if (v190 != objc_msgSend_count(v523, v211, v212, v213, v214, v215))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v221 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
      {
        v227 = objc_msgSend_count(v523, v222, v223, v224, v225, v226);
        *buf = 134218240;
        *&buf[4] = v190;
        *&buf[12] = 2048;
        *&buf[14] = v227;
        _os_log_impl(&dword_18366B000, v221, OS_LOG_TYPE_ERROR, "Number of wrapping result lines should match that of reflowable lines: %lu != %lu", buf, 0x16u);
      }
    }

    if (v190 != objc_msgSend_count(v523, v216, v217, v218, v219, v220))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v228 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v228, OS_LOG_TYPE_FAULT))
      {
        v234 = objc_msgSend_count(v523, v229, v230, v231, v232, v233);
        *buf = 134218240;
        *&buf[4] = v190;
        *&buf[12] = 2048;
        *&buf[14] = v234;
        _os_log_impl(&dword_18366B000, v228, OS_LOG_TYPE_FAULT, "Number of wrapping result lines should match that of reflowable lines: %lu != %lu", buf, 0x16u);
      }
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v235 = qword_1EA84DCA8;
    v236 = os_log_type_enabled(v235, OS_LOG_TYPE_DEBUG);

    if (v236)
    {
      v536 = 0;
      while (1)
      {
        v242 = objc_msgSend_lineWrappableGroups(v522, v237, v238, v239, v240, v241);
        v248 = v536 < objc_msgSend_count(v242, v243, v244, v245, v246, v247);

        if (!v248)
        {
          break;
        }

        v249 = objc_msgSend_lineWrappableGroups(v522, v237, v238, v239, v240, v241);
        v545 = objc_msgSend_objectAtIndexedSubscript_(v249, v250, v536, v251, v252, v253);

        v259 = 0;
        ++v536;
        while (1)
        {
          v260 = objc_msgSend_subregions(v545, v254, v255, v256, v257, v258);
          v266 = v259 < objc_msgSend_count(v260, v261, v262, v263, v264, v265);

          if (!v266)
          {
            break;
          }

          v272 = objc_msgSend_subregions(v545, v267, v268, v269, v270, v271);
          v277 = objc_msgSend_objectAtIndexedSubscript_(v272, v273, v259, v274, v275, v276);

          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v278 = qword_1EA84DCA8;
          if (os_log_type_enabled(v278, OS_LOG_TYPE_DEBUG))
          {
            v284 = objc_msgSend_lineWrappingType(v277, v279, v280, v281, v282, v283);
            v542 = objc_msgSend_text(v277, v285, v286, v287, v288, v289);
            v539 = objc_msgSend_locale(v277, v290, v291, v292, v293, v294);
            v300 = objc_msgSend_localeIdentifier(v539, v295, v296, v297, v298, v299);
            v306 = objc_msgSend_boundingQuad(v277, v301, v302, v303, v304, v305);
            objc_msgSend_topLeft(v306, v307, v308, v309, v310, v311);
            v313 = v312;
            v319 = objc_msgSend_boundingQuad(v277, v314, v315, v316, v317, v318);
            objc_msgSend_topLeft(v319, v320, v321, v322, v323, v324);
            v326 = v325;
            v332 = objc_msgSend_boundingQuad(v277, v327, v328, v329, v330, v331);
            objc_msgSend_size(v332, v333, v334, v335, v336, v337);
            v339 = v338;
            v345 = objc_msgSend_boundingQuad(v277, v340, v341, v342, v343, v344);
            objc_msgSend_size(v345, v346, v347, v348, v349, v350);
            ++v259;
            *buf = 134220035;
            *&buf[4] = v536;
            *&buf[12] = 2048;
            *&buf[14] = v259;
            *&buf[22] = 2048;
            *&buf[24] = v284;
            *&buf[32] = 2117;
            *&buf[34] = v542;
            *&buf[42] = 2112;
            *&buf[44] = v300;
            *&buf[52] = 2048;
            *&buf[54] = v313;
            *&buf[62] = 2048;
            *&buf[64] = v326;
            *&buf[72] = 2048;
            *&buf[74] = v339;
            *&buf[82] = 2048;
            *&buf[84] = v351;
            _os_log_impl(&dword_18366B000, v278, OS_LOG_TYPE_DEBUG, "Line Wrapping Line:%lu-%lu result:%lu text:'%{sensitive}@' (%@) (x:%lf y:%lf w:%lf h:%lf)", buf, 0x5Cu);
          }

          else
          {
            ++v259;
          }
        }
      }
    }

    v352 = MEMORY[0x1E695DF70];
    v353 = objc_msgSend_count(v523, v237, v238, v239, v240, v241);
    v531 = objc_msgSend_arrayWithCapacity_(v352, v354, v353, v355, v356, v357);
    v540 = 0;
    v363 = 0;
    v364 = 1;
    while (v363 < objc_msgSend_count(v525, v358, v359, v360, v361, v362))
    {
      v537 = objc_msgSend_objectAtIndexedSubscript_(v525, v365, v363, v366, v367, v368);
      v374 = 0;
      v527 = v363 + 1;
      while (v374 < objc_msgSend_count(v537, v369, v370, v371, v372, v373))
      {
        v546 = v374;
        v379 = objc_msgSend_objectAtIndexedSubscript_(v537, v375, v374, v376, v377, v378);
        v543 = objc_msgSend_containsIndex_(v181, v380, v540, v381, v382, v383);
        hasStartingLineBreak = objc_msgSend_hasStartingLineBreak(v379, v384, v385, v386, v387, v388);
        hasEndingLineBreak = objc_msgSend_hasEndingLineBreak(v379, v390, v391, v392, v393, v394);
        v396 = [CHReflowableTextLine alloc];
        v407 = objc_msgSend_tokens(v379, v397, v398, v399, v400, v401);
        if (v379)
        {
          objc_msgSend_principalLines(v379, v402, v403, v404, v405, v406);
        }

        else
        {
          v573 = 0u;
          v574 = 0u;
          memset(buf, 0, sizeof(buf));
        }

        objc_msgSend_bounds(v379, v402, v403, v404, v405, v406);
        v409 = v408;
        v411 = v410;
        v413 = v412;
        v415 = v414;
        objc_msgSend_headIndent(v379, v416, v417, v418, v419, v420);
        v422 = v421;
        objc_msgSend_leading(v379, v423, v424, v425, v426, v427);
        v429 = v428;
        v435 = objc_msgSend_alignmentType(v379, v430, v431, v432, v433, v434);
        v441 = objc_msgSend_writingDirection(v379, v436, v437, v438, v439, v440);
        v447 = objc_msgSend_locale(v379, v442, v443, v444, v445, v446);
        v448 = hasStartingLineBreak | v364 ^ 1;
        v449 = hasEndingLineBreak | v543 ^ 1;
        hasEndingLineBreak_alignmentType_writingDirection_locale = objc_msgSend_initWithTokens_principalLines_bounds_headIndent_leading_hasStartingLineBreak_hasEndingLineBreak_alignmentType_writingDirection_locale_(v396, v450, v407, buf, v448 & 1, v449 & 1, v435, v441, v409, v411, v413, v415, v422, v429, v447);

        objc_msgSend_addObject_(v531, v452, hasEndingLineBreak_alignmentType_writingDirection_locale, v453, v454, v455);
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v534 = qword_1EA84DCA8;
        if (os_log_type_enabled(v534, OS_LOG_TYPE_DEBUG))
        {
          v461 = objc_msgSend_hasStartingLineBreak(v379, v456, v457, v458, v459, v460);
          v467 = objc_msgSend_hasEndingLineBreak(v379, v462, v463, v464, v465, v466);
          v530 = objc_msgSend_boundingQuad(v379, v468, v469, v470, v471, v472);
          objc_msgSend_topLeft(v530, v473, v474, v475, v476, v477);
          v479 = v478;
          v485 = objc_msgSend_boundingQuad(v379, v480, v481, v482, v483, v484);
          objc_msgSend_topLeft(v485, v486, v487, v488, v489, v490);
          v492 = v491;
          v498 = objc_msgSend_boundingQuad(v379, v493, v494, v495, v496, v497);
          objc_msgSend_size(v498, v499, v500, v501, v502, v503);
          v505 = v504;
          v511 = objc_msgSend_boundingQuad(v379, v506, v507, v508, v509, v510);
          objc_msgSend_size(v511, v512, v513, v514, v515, v516);
          *buf = 134220544;
          *&buf[4] = v527;
          *&buf[12] = 2048;
          v547 = v546 + 1;
          *&buf[14] = v547;
          *&buf[22] = 1024;
          *&buf[24] = v543;
          *&buf[28] = 1024;
          *&buf[30] = v461;
          *&buf[34] = 1024;
          *&buf[36] = v448 & 1;
          *&buf[40] = 1024;
          *&buf[42] = v467;
          *&buf[46] = 1024;
          *&buf[48] = v449 & 1;
          *&buf[52] = 2048;
          *&buf[54] = v479;
          *&buf[62] = 2048;
          *&buf[64] = v492;
          *&buf[72] = 2048;
          *&buf[74] = v505;
          *&buf[82] = 2048;
          *&buf[84] = v517;
          v518 = v534;
          _os_log_impl(&dword_18366B000, v534, OS_LOG_TYPE_DEBUG, "Reflow Line:%lu-%lu canWrap:%d startingLineBreak:%d=>%d endingLineBreak:%d=>%d (x:%lf y:%lf w:%lf h:%lf)", buf, 0x5Cu);
        }

        else
        {
          v547 = v546 + 1;
          v518 = v534;
        }

        ++v540;
        v364 = v543;
        v374 = v547;
      }

      v363 = v527;
    }

LABEL_97:
  }

  else
  {
    v531 = v5;
  }

  return v531;
}

+ (id)alignShortReflowableLines:(id)a3
{
  v260 = *MEMORY[0x1E69E9840];
  v243 = a3;
  if (!objc_msgSend_count(v243, v3, v4, v5, v6, v7))
  {
    v239 = v243;
    v242 = v243;
    goto LABEL_42;
  }

  v242 = objc_msgSend_mutableCopy(v243, v8, v9, v10, v11, v12);
  v244 = 0;
  *&v18 = 138740483;
  v241 = v18;
  while (1)
  {
    v23 = v244;
    if (v244 >= objc_msgSend_count(v243, v13, v14, v15, v16, v17, v241))
    {
      break;
    }

    if (!v244)
    {
      goto LABEL_11;
    }

    v245 = objc_msgSend_objectAtIndexedSubscript_(v242, v19, v244 - 1, v20, v21, v22);
    v28 = objc_msgSend_objectAtIndexedSubscript_(v242, v24, v244, v25, v26, v27);
    objc_msgSend_bounds(v245, v29, v30, v31, v32, v33);
    MaxY = CGRectGetMaxY(v262);
    objc_msgSend_bounds(v28, v35, v36, v37, v38, v39);
    MinY = CGRectGetMinY(v263);
    objc_msgSend_bounds(v245, v41, v42, v43, v44, v45);
    Height = CGRectGetHeight(v264);
    if (objc_msgSend_hasEndingLineBreak(v245, v47, v48, v49, v50, v51))
    {
      v57 = 0;
      v58 = MaxY - MinY;
      if (MaxY - MinY < Height * 0.800000012)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v57 = objc_msgSend_hasStartingLineBreak(v28, v52, v53, v54, v55, v56) ^ 1;
      v58 = MaxY - MinY;
      if (MaxY - MinY < Height * 0.800000012)
      {
        goto LABEL_30;
      }
    }

    if (!v57)
    {

      v23 = v244;
LABEL_11:
      v245 = objc_msgSend_objectAtIndexedSubscript_(v243, v19, v23, v20, v21, v22);
      v28 = objc_msgSend_mutableCopy(&unk_1EF1EC6A0, v59, v60, v61, v62, v63);
      v251 = 0u;
      v252 = 0u;
      v249 = 0u;
      v250 = 0u;
      obj = objc_msgSend_tokens(v245, v64, v65, v66, v67, v68);
      v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v69, &v249, v253, 16, v70);
      v77 = 0;
      if (v71)
      {
        v247 = *v250;
        do
        {
          v248 = v71;
          for (i = 0; i != v248; ++i)
          {
            if (*v250 != v247)
            {
              objc_enumerationMutation(obj);
            }

            v79 = *(*(&v249 + 1) + 8 * i);
            v80 = objc_msgSend_string(v79, v72, v73, v74, v75, v76);
            v86 = objc_msgSend_countCharacters(v80, v81, v82, v83, v84, v85);

            v92 = objc_msgSend_principalPoints(v79, v87, v88, v89, v90, v91);
            LOBYTE(v80) = v92 == 0;

            if ((v80 & 1) == 0)
            {
              v93 = objc_msgSend_principalPoints(v79, v72, v73, v74, v75, v76);
              v94 = sub_1838903F0(v93);

              for (j = 0; j < objc_msgSend_count(v94, v95, v96, v97, v98, v99); ++j)
              {
                v105 = MEMORY[0x1E696AD98];
                v106 = objc_msgSend_objectAtIndexedSubscript_(v28, v101, j, v102, v103, v104);
                v112 = objc_msgSend_integerValue(v106, v107, v108, v109, v110, v111);
                v117 = objc_msgSend_objectAtIndexedSubscript_(v94, v113, j, v114, v115, v116);
                v123 = objc_msgSend_count(v117, v118, v119, v120, v121, v122);
                v128 = objc_msgSend_numberWithUnsignedInteger_(v105, v124, v123 + v112, v125, v126, v127);
                objc_msgSend_setObject_atIndexedSubscript_(v28, v129, v128, j, v130, v131);
              }
            }

            v77 += v86;
          }

          v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v72, &v249, v253, 16, v76);
        }

        while (v71);
      }

      v136 = objc_msgSend_valueForKeyPath_(v28, v132, @"@max.floatValue", v133, v134, v135);
      v142 = v136;
      if (v77 < 6 || v77 <= 0xB && objc_msgSend_integerValue(v136, v137, v138, v139, v140, v141) <= 5)
      {
        v143 = objc_opt_class();
        v148 = objc_msgSend__changePrincipalLinesToHorizontalForLine_(v143, v144, v245, v145, v146, v147);
        objc_msgSend_setObject_atIndexedSubscript_(v242, v149, v148, v244, v150, v151);
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v152 = qword_1EA84DCA0;
        if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
        {
          v158 = objc_msgSend_string(v245, v153, v154, v155, v156, v157);
          objc_msgSend_orientation(v245, v159, v160, v161, v162, v163);
          v165 = v164;
          objc_msgSend_orientation(v148, v166, v167, v168, v169, v170);
          *buf = v241;
          v255 = v158;
          v256 = 2048;
          v257 = v165;
          v258 = 2048;
          v259 = v171;
          _os_log_impl(&dword_18366B000, v152, OS_LOG_TYPE_DEBUG, "Reflowable line orientation changed to horizontal, line text:'%{sensitive}@' starting orientation: %lf new orientation: %lf", buf, 0x20u);
        }

LABEL_29:
      }

      goto LABEL_39;
    }

LABEL_30:
    objc_msgSend_bounds(v28, v52, v53, v54, v55, v56, v58);
    v173 = v172;
    objc_msgSend_bounds(v245, v174, v175, v176, v177, v178);
    v180 = v179;
    objc_msgSend_bounds(v245, v181, v182, v183, v184, v185);
    MaxX = CGRectGetMaxX(v265);
    objc_msgSend_bounds(v28, v187, v188, v189, v190, v191);
    v192 = CGRectGetMaxX(v266);
    objc_msgSend_bounds(v245, v193, v194, v195, v196, v197);
    v199 = v198;
    objc_msgSend_bounds(v28, v200, v201, v202, v203, v204);
    v206 = v205;
    objc_msgSend_bounds(v28, v207, v208, v209, v210, v211);
    if (v173 < v180 / 3.0 && fmin(MaxX, v192) - fmax(v199, v206) > v212 * 0.600000024)
    {
      v213 = objc_opt_class();
      v142 = objc_msgSend__changePrincipalLinesToMatchPreviousLine_previousLine_withCorrectionThreshold_(v213, v214, v28, v245, v215, v216, 0.209439516);
      objc_msgSend_setObject_atIndexedSubscript_(v242, v217, v142, v244, v218, v219);
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v148 = qword_1EA84DCA0;
      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
      {
        v225 = objc_msgSend_string(v28, v220, v221, v222, v223, v224);
        objc_msgSend_orientation(v28, v226, v227, v228, v229, v230);
        v232 = v231;
        objc_msgSend_orientation(v142, v233, v234, v235, v236, v237);
        *buf = v241;
        v255 = v225;
        v256 = 2048;
        v257 = v232;
        v258 = 2048;
        v259 = v238;
        _os_log_impl(&dword_18366B000, v148, OS_LOG_TYPE_DEBUG, "Reflowable line orientation changed to match previous line, line text:'%{sensitive}@' starting orientation: %lf new orientation: %lf", buf, 0x20u);
      }

      goto LABEL_29;
    }

LABEL_39:

    ++v244;
  }

  v239 = v243;
LABEL_42:

  return v242;
}

+ (id)_changePrincipalLinesToMatchPreviousLine:(id)a3 previousLine:(id)a4 withCorrectionThreshold:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v7;
  objc_msgSend_orientation(v8, v10, v11, v12, v13, v14);
  v16 = v15;
  objc_msgSend_orientation(v9, v17, v18, v19, v20, v21);
  hasEndingLineBreak_alignmentType_writingDirection_locale = v9;
  if (vabdd_f64(v16, v27) > a5)
  {
    if (v8)
    {
      objc_msgSend_principalLines(v8, v22, v23, v24, v25, v26);
    }

    else
    {
      v220 = 0u;
      v221 = 0u;
      v218 = 0u;
      v219 = 0u;
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
    }

    objc_msgSend_bounds(v8, v22, v23, v24, v25, v26);
    v37 = v36;
    v39 = v38;
    if (v34 == 0.0)
    {
      v40 = 1.0;
    }

    else
    {
      v40 = v34;
    }

    if (v35 == 0.0)
    {
      v41 = 1.0;
    }

    else
    {
      v41 = v35;
    }

    v42 = v221;
    v210 = *(&v218 + 1);
    v212 = *(&v220 + 1);
    v206 = *&v220;
    v208 = *(&v219 + 1);
    v202 = *&v214;
    v204 = *&v221;
    v198 = *&v215;
    v200 = *(&v214 + 1);
    v194 = *&v216;
    v196 = *(&v215 + 1);
    v190 = *&v217;
    v192 = *(&v216 + 1);
    v188 = *&v218;
    v189 = *(&v217 + 1);
    v187 = *&v219;
    if (v9)
    {
      objc_msgSend_principalLines(v9, v29, v30, v31, v32, v33);
    }

    else
    {
      v220 = 0u;
      v221 = 0u;
      v218 = 0u;
      v219 = 0u;
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
    }

    objc_msgSend_bounds(v9, v29, v30, v31, v32, v33);
    v185 = v51;
    v186 = v50;
    v52 = 1.0;
    if (v48 == 0.0)
    {
      v53 = 1.0;
    }

    else
    {
      v53 = v48;
    }

    if (v49 != 0.0)
    {
      v52 = v49;
    }

    v183 = v52;
    v184 = v53;
    objc_msgSend_bounds(v9, v43, v44, v45, v46, v47);
    MinX = CGRectGetMinX(v223);
    objc_msgSend_bounds(v9, v55, v56, v57, v58, v59);
    MaxX = CGRectGetMaxX(v224);
    v66 = v37 + v194 * v40;
    v67 = v39 + v192 * v41;
    v68 = v186 + *&v216 * v184 - v66;
    v69 = v185 + *(&v216 + 1) * v183 - v67;
    v70 = v37 + v202 * v40 + v68;
    v71 = v39 + v200 * v41 + v69;
    v72 = v37 + v198 * v40 + v68;
    v73 = v39 + v196 * v41 + v69;
    v74 = v66 + v68;
    v75 = v37 + v190 * v40 + v68;
    if (vabdd_f64(v72, v70) >= 1.17549435e-38)
    {
      v82 = (v73 - v73) / (v72 - v70);
      v83 = v71 - v82 * v70;
      if (v70 < MinX)
      {
        v70 = MinX;
        v71 = v83 + v82 * MinX;
      }

      v76 = MaxX;
      v84 = v72 <= MaxX;
      v78 = v210;
      v77 = v212;
      v80 = v206;
      v79 = v208;
      v81 = v204;
      if (!v84)
      {
        v73 = v83 + v82 * v76;
        v72 = v76;
      }
    }

    else
    {
      v76 = MaxX;
      v78 = v210;
      v77 = v212;
      v80 = v206;
      v79 = v208;
      v81 = v204;
    }

    v85 = v39 + v78 * v41;
    v86 = v39 + v79 * v41;
    v87 = v37 + v80 * v40;
    v88 = v37 + v81 * v40;
    v89 = v67 + v69;
    v90 = v39 + v189 * v41 + v69;
    v91 = v37 + v188 * v40 + v68;
    v92 = v37 + v187 * v40 + v68;
    if (vabdd_f64(v75, v74) >= 1.17549435e-38)
    {
      v93 = (v90 - v90) / (v75 - v74);
      v94 = v89 - v93 * v74;
      if (v74 < MinX)
      {
        v74 = MinX;
        v89 = v94 + v93 * MinX;
      }

      if (v75 > v76)
      {
        v90 = v94 + v93 * v76;
        v75 = v76;
      }
    }

    v95 = v39 + v77 * v41;
    v96 = v39 + *(&v42 + 1) * v41;
    v97 = v85 + v69;
    v98 = v87 + v68;
    v99 = v88 + v68;
    if (vabdd_f64(v92, v91) < 1.17549435e-38)
    {
      goto LABEL_36;
    }

    v100 = (v86 + v69 - (v86 + v69)) / (v92 - v91);
    v101 = v97 - v100 * v91;
    if (v91 < MinX)
    {
      v91 = MinX;
      v97 = v101 + v100 * MinX;
    }

    if (v92 <= v76)
    {
LABEL_36:
      v197 = v86 + v69;
      v102 = v95 + v69;
      v103 = v96 + v69;
      if (vabdd_f64(v99, v98) < 1.17549435e-38)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v197 = v101 + v100 * v76;
      v92 = v76;
      v102 = v95 + v69;
      v103 = v96 + v69;
      if (vabdd_f64(v99, v98) < 1.17549435e-38)
      {
        goto LABEL_41;
      }
    }

    v104 = (v103 - v103) / (v99 - v98);
    v105 = v102 - v104 * v98;
    if (v98 < MinX)
    {
      v98 = MinX;
      v102 = v105 + v104 * MinX;
    }

    if (v99 > v76)
    {
      v103 = v105 + v104 * v76;
LABEL_42:
      v191 = v102;
      v193 = v103;
      v195 = v97;
      v199 = v89;
      v201 = v90;
      v203 = v92;
      v205 = v91;
      v106 = v72;
      v107 = v70;
      v108 = v71;
      v207 = v73;
      v209 = v74;
      v211 = v75;
      v213 = v76;
      objc_msgSend_bounds(v9, v60, v61, v62, v63, v64);
      v112 = v111;
      v114 = v113;
      if (v109 == 0.0)
      {
        v115 = 1.0;
      }

      else
      {
        v115 = v109;
      }

      if (v110 == 0.0)
      {
        v116 = 1.0;
      }

      else
      {
        v116 = v110;
      }

      v117 = [CHReflowableTextLine alloc];
      v123 = objc_msgSend_tokens(v9, v118, v119, v120, v121, v122);
      *&v214 = (v107 - v112) / v115;
      *(&v214 + 1) = (v108 - v114) / v116;
      *&v215 = (v106 - v112) / v115;
      *(&v215 + 1) = (v207 - v114) / v116;
      *&v216 = (v209 - v112) / v115;
      *(&v216 + 1) = (v199 - v114) / v116;
      *&v217 = (v211 - v112) / v115;
      *(&v217 + 1) = (v201 - v114) / v116;
      *&v218 = (v205 - v112) / v115;
      *(&v218 + 1) = (v195 - v114) / v116;
      *&v219 = (v203 - v112) / v115;
      *(&v219 + 1) = (v197 - v114) / v116;
      *&v220 = (v98 - v112) / v115;
      *(&v220 + 1) = (v191 - v114) / v116;
      *&v221 = (v213 - v112) / v115;
      *(&v221 + 1) = (v193 - v114) / v116;
      objc_msgSend_bounds(v9, v124, v125, v126, v127, v128);
      v130 = v129;
      v132 = v131;
      v134 = v133;
      v136 = v135;
      objc_msgSend_headIndent(v9, v137, v138, v139, v140, v141);
      v143 = v142;
      objc_msgSend_leading(v9, v144, v145, v146, v147, v148);
      v150 = v149;
      hasStartingLineBreak = objc_msgSend_hasStartingLineBreak(v9, v151, v152, v153, v154, v155);
      hasEndingLineBreak = objc_msgSend_hasEndingLineBreak(v9, v157, v158, v159, v160, v161);
      v168 = objc_msgSend_alignmentType(v9, v163, v164, v165, v166, v167);
      v174 = objc_msgSend_writingDirection(v9, v169, v170, v171, v172, v173);
      v180 = objc_msgSend_locale(v9, v175, v176, v177, v178, v179);
      hasEndingLineBreak_alignmentType_writingDirection_locale = objc_msgSend_initWithTokens_principalLines_bounds_headIndent_leading_hasStartingLineBreak_hasEndingLineBreak_alignmentType_writingDirection_locale_(v117, v181, v123, &v214, hasStartingLineBreak, hasEndingLineBreak, v168, v174, v130, v132, v134, v136, v143, v150, v180);

      goto LABEL_49;
    }

LABEL_41:
    v76 = v99;
    goto LABEL_42;
  }

LABEL_49:

  return hasEndingLineBreak_alignmentType_writingDirection_locale;
}

+ (id)_changePrincipalLinesToHorizontalForLine:(id)a3
{
  v465 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DF70];
  v425 = v3;
  v10 = objc_msgSend_tokens(v3, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_count(v10, v11, v12, v13, v14, v15);
  v411 = objc_msgSend_arrayWithCapacity_(v4, v17, v16, v18, v19, v20);

  v432 = 0u;
  v433 = 0u;
  v430 = 0u;
  v431 = 0u;
  obj = objc_msgSend_tokens(v3, v21, v22, v23, v24, v25);
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v430, v447, 16, v27);
  if (!v28)
  {
    v414 = 0.0;
    v415 = 0.0;
    v412 = 0.0;
    v413 = 0.0;
    goto LABEL_41;
  }

  v400 = v28;
  v401 = *v431;
  v415 = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  v399 = _Q0;
  v39 = MEMORY[0x1E695EFF8];
  v413 = 0.0;
  v414 = 0.0;
  v412 = 0.0;
  do
  {
    for (i = 0; i != v400; ++i)
    {
      if (*v431 != v401)
      {
        objc_enumerationMutation(obj);
      }

      v40 = *(*(&v430 + 1) + 8 * i);
      v407 = objc_msgSend_principalPoints(v40, v29, v30, v31, v32, v33);
      v420 = v40;
      objc_msgSend_bounds(v40, v41, v42, v43, v44, v45);
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v54 = v407;
      v55 = MEMORY[0x1E695DF70];
      v409 = v54;
      v61 = objc_msgSend_count(v54, v56, v57, v58, v59, v60);
      v417 = objc_msgSend_arrayWithCapacity_(v55, v62, v61, v63, v64, v65);
      v436 = 0u;
      v437 = 0u;
      v434 = 0u;
      v435 = 0u;
      v421 = v409;
      v402 = objc_msgSend_countByEnumeratingWithState_objects_count_(v421, v66, &v434, v448, 16, v67);
      if (v402)
      {
        v405 = *v435;
        if (v51 == 0.0)
        {
          v51 = 1.0;
        }

        if (v53 == 0.0)
        {
          v53 = 1.0;
        }

        do
        {
          for (j = 0; j != v402; ++j)
          {
            if (*v435 != v405)
            {
              objc_enumerationMutation(v421);
            }

            v68 = *(*(&v434 + 1) + 8 * j);
            v69 = MEMORY[0x1E695DF70];
            v418 = v68;
            v75 = objc_msgSend_count(v68, v70, v71, v72, v73, v74);
            v428 = objc_msgSend_arrayWithCapacity_(v69, v76, v75, v77, v78, v79);
            v444 = 0u;
            v445 = 0u;
            v442 = 0u;
            v443 = 0u;
            v426 = v418;
            v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v426, v80, &v442, &v457, 16, v81);
            if (v87)
            {
              v88 = *v443;
              do
              {
                for (k = 0; k != v87; ++k)
                {
                  if (*v443 != v88)
                  {
                    objc_enumerationMutation(v426);
                  }

                  v90 = *(*(&v442 + 1) + 8 * k);
                  v91 = MEMORY[0x1E695DF70];
                  v92 = objc_msgSend_count(v90, v82, v83, v84, v85, v86);
                  v97 = objc_msgSend_arrayWithCapacity_(v91, v93, v92, v94, v95, v96);
                  v440 = 0u;
                  v441 = 0u;
                  v438 = 0u;
                  v439 = 0u;
                  v98 = v90;
                  v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v99, &v438, &v449, 16, v100);
                  if (v101)
                  {
                    v102 = *v439;
                    do
                    {
                      for (m = 0; m != v101; ++m)
                      {
                        if (*v439 != v102)
                        {
                          objc_enumerationMutation(v98);
                        }

                        sub_1837A97C4(*(*(&v438 + 1) + 8 * m), __p);
                        v109 = __p[0];
                        if ((__p[1] - __p[0]) == 8)
                        {
                          v110 = *__p[0];
                          v111 = *(__p[0] + 1);
                        }

                        else
                        {
                          v110 = *v39;
                          v111 = v39[1];
                          if (!__p[0])
                          {
                            goto LABEL_28;
                          }
                        }

                        operator delete(__p[0]);
LABEL_28:
                        v112 = sub_1837A9A94(v47 + v110 * v51, v49 + v111 * v53, v109, v104, v105, v106, v107, v108);
                        objc_msgSend_addObject_(v97, v113, v112, v114, v115, v116);
                      }

                      v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v117, &v438, &v449, 16, v118);
                    }

                    while (v101);
                  }

                  objc_msgSend_addObject_(v428, v119, v97, v120, v121, v122);
                }

                v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v426, v82, &v442, &v457, 16, v86);
              }

              while (v87);
            }

            objc_msgSend_addObject_(v417, v123, v428, v124, v125, v126);
          }

          v402 = objc_msgSend_countByEnumeratingWithState_objects_count_(v421, v127, &v434, v448, 16, v128);
        }

        while (v402);
      }

      v464 = 0u;
      v463 = 0u;
      v462 = 0u;
      v461 = 0u;
      v460 = 0u;
      v459 = 0u;
      v458 = 0u;
      v457 = 0u;
      v134 = objc_msgSend_string(v420, v129, v130, v131, v132, v133);
      objc_msgSend_bounds(v420, v135, v136, v137, v138, v139);
      objc_msgSend_horizontalPrincipalLinesForPrincipalPoints_string_bounds_(CHReflowableTextToken, v140, v417, v134, v141, v142);

      v143 = atan2(v460.f64[1] - v459.f64[1], v460.f64[0] - v459.f64[0]);
      v144 = tan(v143);
      v145 = objc_opt_class();
      v453 = v461;
      v454 = v462;
      v455 = v463;
      v456 = v464;
      v449 = v457;
      v450 = v458;
      v451 = v459;
      v452 = v460;
      v151 = objc_msgSend_string(v420, v146, v147, v148, v149, v150);
      v395 = v144;
      v155 = objc_msgSend_textSizeFromPrincipalLines_string_(v145, v152, &v449, v151, v153, v154);

      v403 = v457;
      v419 = v460;
      v406 = v459;
      v408 = v458;
      v410 = v461;
      v429 = v464;
      *v422 = v463;
      v424 = v462;
      objc_msgSend_bounds(v420, v156, v157, v158, v159, v160);
      v427 = v161;
      v397 = v163;
      v398 = v162;
      v396 = v164;
      objc_msgSend_bounds(v420, v165, v166, v167, v168, v169);
      if (v175 == 0.0)
      {
        v177 = 1.0;
      }

      else
      {
        objc_msgSend_bounds(v420, v170, v171, v172, v173, v174);
        v177 = 1.0 / v176;
      }

      v178 = objc_opt_class();
      v183 = objc_msgSend_scaledSize_scale_(v178, v179, v155, v180, v181, v182, v177);

      v184 = [CHReflowableTextResultToken alloc];
      v190 = objc_msgSend_string(v420, v185, v186, v187, v188, v189);
      v196 = objc_msgSend_strokeIdentifiers(v420, v191, v192, v193, v194, v195);
      v202 = objc_msgSend_nonTextStrokeIdentifiers(v420, v197, v198, v199, v200, v201);
      v203.f64[0] = v397;
      v203.f64[1] = v396;
      v204 = vbslq_s8(vceqzq_f64(v203), v399, v203);
      v205.f64[0] = v427;
      v205.f64[1] = v398;
      v449 = vdivq_f64(vsubq_f64(v403, v205), v204);
      v450 = vdivq_f64(vsubq_f64(v408, v205), v204);
      v451 = vdivq_f64(vsubq_f64(v406, v205), v204);
      v452 = vdivq_f64(vsubq_f64(v419, v205), v204);
      v453 = vdivq_f64(vsubq_f64(v410, v205), v204);
      v454 = vdivq_f64(vsubq_f64(v424, v205), v204);
      v455 = vdivq_f64(vsubq_f64(*v422, v205), v204);
      v456 = vdivq_f64(vsubq_f64(v429, v205), v204);
      v211 = objc_msgSend_principalPoints(v420, v206, v207, v208, v209, v210);
      objc_msgSend_bounds(v420, v212, v213, v214, v215, v216);
      v218 = v217;
      v220 = v219;
      v222 = v221;
      v224 = v223;
      LOBYTE(v394) = objc_msgSend_hasPrecedingSpace(v420, v225, v226, v227, v228, v229);
      hasPrecedingSpace = objc_msgSend_initWithString_strokeIdentifiers_nonTextStrokeIdentifiers_principalLines_principalPoints_textSize_bounds_hasPrecedingSpace_(v184, v230, v190, v196, v202, &v449, v211, v183, v218, v220, v222, v224, v394);

      objc_msgSend_addObject_(v411, v232, hasPrecedingSpace, v233, v234, v235);
      v236 = v463.f64[1];
      v237 = v463.f64[0];
      v238 = v461.f64[1];
      v239 = v461.f64[0];
      v240 = v459.f64[1];
      v241 = v459.f64[0];
      v242 = v457.f64[1];
      v243 = v457.f64[0];

      v412 = v412 + v236 - v237 * v395;
      v413 = v413 + v238 - v239 * v395;
      v414 = v414 + v240 - v241 * v395;
      v415 = v415 + v242 - v243 * v395;
    }

    v400 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v430, v447, 16, v33);
  }

  while (v400);
LABEL_41:

  v249 = objc_msgSend_tokens(v425, v244, v245, v246, v247, v248);
  v255 = objc_msgSend_count(v249, v250, v251, v252, v253, v254);

  v261 = objc_msgSend_tokens(v425, v256, v257, v258, v259, v260);
  v267 = objc_msgSend_count(v261, v262, v263, v264, v265, v266);

  v273 = objc_msgSend_tokens(v425, v268, v269, v270, v271, v272);
  v279 = objc_msgSend_count(v273, v274, v275, v276, v277, v278);

  v285 = objc_msgSend_tokens(v425, v280, v281, v282, v283, v284);
  v291 = objc_msgSend_count(v285, v286, v287, v288, v289, v290);

  objc_msgSend_bounds(v425, v292, v293, v294, v295, v296);
  v298 = v297;
  objc_msgSend_bounds(v425, v299, v300, v301, v302, v303);
  MaxX = CGRectGetMaxX(v467);
  objc_msgSend_bounds(v425, v305, v306, v307, v308, v309);
  v311 = v310;
  v313 = v312;
  v315 = v314;
  v317 = v316;
  v323 = [CHReflowableTextLine alloc];
  v324 = v412 / v255;
  v325 = v413 / v267;
  v326 = v414 / v279;
  v327 = v415 / v291;
  v328 = MaxX + 0.01;
  if (v298 != MaxX)
  {
    v328 = MaxX;
  }

  v329 = v324 + v328 * 0.0 - v313;
  v330 = 1.0;
  if (v317 == 0.0)
  {
    v331 = 1.0;
  }

  else
  {
    v331 = v317;
  }

  v332 = (v324 + v298 * 0.0 - v313) / v331;
  v333 = (v325 + v328 * 0.0 - v313) / v331;
  v334 = (v325 + v298 * 0.0 - v313) / v331;
  v335 = (v326 + v328 * 0.0 - v313) / v331;
  v336 = (v326 + v298 * 0.0 - v313) / v331;
  v337 = (v327 + v328 * 0.0 - v313) / v331;
  v338 = v328 - v311;
  if (v315 != 0.0)
  {
    v330 = v315;
  }

  v457.f64[0] = (v298 - v311) / v330;
  v457.f64[1] = (v327 + v298 * 0.0 - v313) / v331;
  v458.f64[0] = v338 / v330;
  v458.f64[1] = v337;
  v459.f64[0] = v457.f64[0];
  v459.f64[1] = v336;
  v460.f64[0] = v338 / v330;
  v460.f64[1] = v335;
  v461.f64[0] = v457.f64[0];
  v461.f64[1] = v334;
  v462.f64[0] = v338 / v330;
  v462.f64[1] = v333;
  v463.f64[0] = v457.f64[0];
  v463.f64[1] = v332;
  v464.f64[0] = v338 / v330;
  v464.f64[1] = v329 / v331;
  objc_msgSend_bounds(v425, v318, v319, v320, v321, v322);
  v340 = v339;
  v342 = v341;
  v344 = v343;
  v346 = v345;
  objc_msgSend_headIndent(v425, v347, v348, v349, v350, v351);
  v353 = v352;
  objc_msgSend_leading(v425, v354, v355, v356, v357, v358);
  v360 = v359;
  hasStartingLineBreak = objc_msgSend_hasStartingLineBreak(v425, v361, v362, v363, v364, v365);
  hasEndingLineBreak = objc_msgSend_hasEndingLineBreak(v425, v367, v368, v369, v370, v371);
  v378 = objc_msgSend_alignmentType(v425, v373, v374, v375, v376, v377);
  v384 = objc_msgSend_writingDirection(v425, v379, v380, v381, v382, v383);
  v390 = objc_msgSend_locale(v425, v385, v386, v387, v388, v389);
  hasEndingLineBreak_alignmentType_writingDirection_locale = objc_msgSend_initWithTokens_principalLines_bounds_headIndent_leading_hasStartingLineBreak_hasEndingLineBreak_alignmentType_writingDirection_locale_(v323, v391, v411, &v457, hasStartingLineBreak, hasEndingLineBreak, v378, v384, v340, v342, v344, v346, v353, v360, v390);

  return hasEndingLineBreak_alignmentType_writingDirection_locale;
}

+ (id)_normalizedLocaleForCRLineWrapper:(id)a3
{
  v8 = a3;
  if (qword_1EA84CB08[0] != -1)
  {
    dispatch_once(qword_1EA84CB08, &unk_1EF1BEBD0);
  }

  v9 = objc_msgSend_languageCode(v8, v3, v4, v5, v6, v7);
  v15 = objc_msgSend_lowercaseString(v9, v10, v11, v12, v13, v14);

  v20 = objc_msgSend_objectForKey_(qword_1EA84CB00, v16, v15, v17, v18, v19);

  if (v20)
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = objc_msgSend_objectForKey_(qword_1EA84CB00, v21, v15, v22, v23, v24);
    v31 = objc_msgSend_stringWithFormat_(v25, v27, @"%@-%@", v28, v29, v30, v15, v26);

    v36 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v32, v31, v33, v34, v35);
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

+ (id)adjustLeadingForReflowableLines:(id)a3
{
  v501 = *MEMORY[0x1E69E9840];
  v440 = a3;
  if (objc_msgSend_count(v440, v3, v4, v5, v6, v7) > 1)
  {
    v14 = MEMORY[0x1E695DF70];
    v15 = objc_msgSend_count(v440, v8, v9, v10, v11, v12);
    v448 = objc_msgSend_arrayWithCapacity_(v14, v16, v15, v17, v18, v19);
    v20 = MEMORY[0x1E695DF70];
    v26 = objc_msgSend_count(v440, v21, v22, v23, v24, v25);
    v467 = objc_msgSend_arrayWithCapacity_(v20, v27, v26, v28, v29, v30);
    v494 = 0u;
    v495 = 0u;
    v492 = 0u;
    v493 = 0u;
    v31 = v440;
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v492, v500, 16, v33);
    if (v38)
    {
      v39 = *v493;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v493 != v39)
          {
            objc_enumerationMutation(v31);
          }

          v41 = *(*(&v492 + 1) + 8 * i);
          objc_msgSend_addObject_(v467, v34, v41, v35, v36, v37);
          if (objc_msgSend_hasEndingLineBreak(v41, v42, v43, v44, v45, v46))
          {
            objc_msgSend_addObject_(v448, v34, v467, v35, v36, v37);
            v47 = MEMORY[0x1E695DF70];
            v53 = objc_msgSend_count(v31, v48, v49, v50, v51, v52);
            v58 = objc_msgSend_arrayWithCapacity_(v47, v54, v53, v55, v56, v57);

            v467 = v58;
          }
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v492, v500, 16, v37);
      }

      while (v38);
    }

    v59 = MEMORY[0x1E695DF70];
    v65 = objc_msgSend_count(v31, v60, v61, v62, v63, v64);
    v471 = objc_msgSend_arrayWithCapacity_(v59, v66, v65, v67, v68, v69);
    v490 = 0u;
    v491 = 0u;
    v488 = 0u;
    v489 = 0u;
    obj = v448;
    v446 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v70, &v488, v499, 16, v71);
    if (v446)
    {
      v445 = *v489;
      do
      {
        for (j = 0; j != v446; ++j)
        {
          if (*v489 != v445)
          {
            objc_enumerationMutation(obj);
          }

          v77 = *(*(&v488 + 1) + 8 * j);
          if (objc_msgSend_count(v77, v72, v73, v74, v75, v76) == 1)
          {
            v83 = objc_msgSend_firstObject(v77, v78, v79, v80, v81, v82);
            v89 = v83;
            if (v83)
            {
              objc_msgSend_principalLines(v83, v84, v85, v86, v87, v88);
            }

            else
            {
              v486 = 0u;
              v487 = 0u;
              v484 = 0u;
              v485 = 0u;
              v482 = 0u;
              v483 = 0u;
              v480 = 0u;
              v481 = 0u;
            }

            v292 = objc_msgSend_firstObject(v77, v84, v85, v86, v87, v88);
            objc_msgSend_bounds(v292, v293, v294, v295, v296, v297);
            v299 = v298;
            v301 = v300;
            v303 = v302;
            v305 = v304;
            v462 = *(&v480 + 1);
            v465 = *&v480;
            v456 = *(&v481 + 1);
            v459 = *&v481;
            v451 = *(&v482 + 1);
            v454 = *&v482;
            v449 = *(&v483 + 1);
            v450 = *&v483;
            v443 = *(&v484 + 1);
            v444 = *&v484;
            v306 = *(&v485 + 1);
            v442 = *&v485;
            v307 = v486;
            v308 = *(&v487 + 1);
            v469 = *&v487;

            v314 = objc_opt_class();
            v315 = 1.0;
            if (v305 == 0.0)
            {
              v316 = 1.0;
            }

            else
            {
              v316 = v305;
            }

            if (v303 != 0.0)
            {
              v315 = v303;
            }

            *&v480 = v299 + v465 * v315;
            *(&v480 + 1) = v301 + v462 * v316;
            *&v481 = v299 + v459 * v315;
            *(&v481 + 1) = v301 + v456 * v316;
            *&v482 = v299 + v454 * v315;
            *(&v482 + 1) = v301 + v451 * v316;
            *&v483 = v299 + v450 * v315;
            *(&v483 + 1) = v301 + v449 * v316;
            *&v484 = v299 + v444 * v315;
            *(&v484 + 1) = v301 + v443 * v316;
            *&v485 = v299 + v442 * v315;
            *(&v485 + 1) = v301 + v306 * v316;
            *&v486 = v299 + *&v307 * v315;
            *(&v486 + 1) = v301 + *(&v307 + 1) * v316;
            *&v487 = v299 + *&v469 * v315;
            *(&v487 + 1) = v301 + v308 * v316;
            v317 = objc_msgSend_firstObject(v77, v309, v310, v311, v312, v313);
            v323 = objc_msgSend_string(v317, v318, v319, v320, v321, v322);
            objc_msgSend_estimatedLeadingForPrincipalLines_transcription_(v314, v324, &v480, v323, v325, v326);
            v328 = v327;

            v470 = [CHReflowableTextLine alloc];
            v455 = objc_msgSend_firstObject(v77, v329, v330, v331, v332, v333);
            v466 = objc_msgSend_tokens(v455, v334, v335, v336, v337, v338);
            v344 = objc_msgSend_firstObject(v77, v339, v340, v341, v342, v343);
            v463 = v344;
            if (v344)
            {
              objc_msgSend_principalLines(v344, v345, v346, v347, v348, v349);
            }

            else
            {
              v486 = 0u;
              v487 = 0u;
              v484 = 0u;
              v485 = 0u;
              v482 = 0u;
              v483 = 0u;
              v480 = 0u;
              v481 = 0u;
            }

            v460 = objc_msgSend_firstObject(v77, v345, v346, v347, v348, v349);
            objc_msgSend_bounds(v460, v350, v351, v352, v353, v354);
            v356 = v355;
            v358 = v357;
            v360 = v359;
            v362 = v361;
            v457 = objc_msgSend_firstObject(v77, v363, v364, v365, v366, v367);
            objc_msgSend_headIndent(v457, v368, v369, v370, v371, v372);
            v374 = v373;
            v452 = objc_msgSend_firstObject(v77, v375, v376, v377, v378, v379);
            hasStartingLineBreak = objc_msgSend_hasStartingLineBreak(v452, v380, v381, v382, v383, v384);
            v391 = objc_msgSend_firstObject(v77, v386, v387, v388, v389, v390);
            hasEndingLineBreak = objc_msgSend_hasEndingLineBreak(v391, v392, v393, v394, v395, v396);
            v403 = objc_msgSend_firstObject(v77, v398, v399, v400, v401, v402);
            v409 = objc_msgSend_alignmentType(v403, v404, v405, v406, v407, v408);
            v415 = objc_msgSend_firstObject(v77, v410, v411, v412, v413, v414);
            v421 = objc_msgSend_writingDirection(v415, v416, v417, v418, v419, v420);
            v427 = objc_msgSend_firstObject(v77, v422, v423, v424, v425, v426);
            v433 = objc_msgSend_locale(v427, v428, v429, v430, v431, v432);
            hasEndingLineBreak_alignmentType_writingDirection_locale = objc_msgSend_initWithTokens_principalLines_bounds_headIndent_leading_hasStartingLineBreak_hasEndingLineBreak_alignmentType_writingDirection_locale_(v470, v434, v466, &v480, hasStartingLineBreak, hasEndingLineBreak, v409, v421, v356, v358, v360, v362, v374, v328, v433);

            objc_msgSend_addObject_(v471, v435, hasEndingLineBreak_alignmentType_writingDirection_locale, v436, v437, v438);
          }

          else
          {
            v464 = 0.0;
            for (k = 1; k < objc_msgSend_count(v77, v78, v79, v80, v81, v82); ++k)
            {
              v96 = objc_msgSend_objectAtIndexedSubscript_(v77, v91, k - 1, v93, v94, v95);
              v102 = v96;
              if (v96)
              {
                objc_msgSend_principalLines(v96, v97, v98, v99, v100, v101);
              }

              else
              {
                v486 = 0u;
                v487 = 0u;
                v484 = 0u;
                v485 = 0u;
                v482 = 0u;
                v483 = 0u;
                v480 = 0u;
                v481 = 0u;
              }

              v103 = objc_msgSend_objectAtIndexedSubscript_(v77, v97, k - 1, v99, v100, v101);
              objc_msgSend_bounds(v103, v104, v105, v106, v107, v108);
              v113 = v112;
              v114 = 1.0;
              if (v110 == 0.0)
              {
                v115 = 1.0;
              }

              else
              {
                v115 = v110;
              }

              if (v111 != 0.0)
              {
                v114 = v111;
              }

              v458 = v114;
              v461 = v109;
              v116 = v482;
              v117 = v483;

              v122 = objc_msgSend_objectAtIndexedSubscript_(v77, v118, k, v119, v120, v121);
              v128 = v122;
              if (v122)
              {
                objc_msgSend_principalLines(v122, v123, v124, v125, v126, v127);
              }

              else
              {
                v486 = 0u;
                v487 = 0u;
                v484 = 0u;
                v485 = 0u;
                v482 = 0u;
                v483 = 0u;
                v480 = 0u;
                v481 = 0u;
              }

              v129 = objc_msgSend_objectAtIndexedSubscript_(v77, v123, k, v125, v126, v127);
              objc_msgSend_bounds(v129, v130, v131, v132, v133, v134);
              v139 = v138;
              if (v136 == 0.0)
              {
                v140 = 1.0;
              }

              else
              {
                v140 = v136;
              }

              if (v137 == 0.0)
              {
                v141 = 1.0;
              }

              else
              {
                v141 = v137;
              }

              v142 = v482;
              v453 = v135;
              v143 = v483;

              v144 = v113 + *&v116 * v115;
              v145 = v139 + *&v142 * v140;
              v478 = 0u;
              v479 = 0u;
              v476 = 0u;
              v477 = 0u;
              v151 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v146, v147, v148, v149, v150, fmin(v144, v145));
              v152 = v113 + *&v117 * v115;
              v153 = v139 + *&v143 * v140;
              v497[0] = v151;
              v159 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v154, v155, v156, v157, v158, fmax(v152, v153));
              v497[1] = v159;
              v163 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v160, v497, 2, v161, v162);

              v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(v163, v164, &v476, v498, 16, v165);
              if (v171)
              {
                v172 = v461 + *(&v116 + 1) * v458;
                v173 = v453 + *(&v142 + 1) * v141;
                v174 = *v477;
                v175 = v145 == v153;
                v176 = (v453 + *(&v143 + 1) * v141 - v173) / (v153 - v145);
                v177 = v173 - v145 * v176;
                if (*&v116 == v152)
                {
                  if (v175)
                  {
                    v178 = vabdd_f64(v172, v173);
                    v179 = 0.0;
                    do
                    {
                      for (m = 0; m != v171; ++m)
                      {
                        if (*v477 != v174)
                        {
                          objc_enumerationMutation(v163);
                        }

                        v181 = *(*(&v476 + 1) + 8 * m);
                        objc_msgSend_floatValue(v181, v166, v167, v168, v169, v170);
                        objc_msgSend_floatValue(v181, v182, v183, v184, v185, v186);
                        if (v178 > v179)
                        {
                          v179 = v178;
                        }
                      }

                      v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(v163, v166, &v476, v498, 16, v170);
                    }

                    while (v171);
                  }

                  else
                  {
                    v179 = 0.0;
                    do
                    {
                      for (n = 0; n != v171; ++n)
                      {
                        if (*v477 != v174)
                        {
                          objc_enumerationMutation(v163);
                        }

                        v211 = *(*(&v476 + 1) + 8 * n);
                        objc_msgSend_floatValue(v211, v166, v167, v168, v169, v170);
                        objc_msgSend_floatValue(v211, v212, v213, v214, v215, v216);
                        v218 = vabdd_f64(v172, v177 + v176 * v217);
                        if (v218 > v179)
                        {
                          v179 = v218;
                        }
                      }

                      v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(v163, v166, &v476, v498, 16, v170);
                    }

                    while (v171);
                  }
                }

                else
                {
                  v187 = (v461 + *(&v117 + 1) * v458 - v172) / (v152 - v144);
                  v188 = v172 - v144 * v187;
                  v179 = 0.0;
                  if (v175)
                  {
                    do
                    {
                      for (ii = 0; ii != v171; ++ii)
                      {
                        if (*v477 != v174)
                        {
                          objc_enumerationMutation(v163);
                        }

                        v190 = *(*(&v476 + 1) + 8 * ii);
                        objc_msgSend_floatValue(v190, v166, v167, v168, v169, v170);
                        v192 = v191;
                        objc_msgSend_floatValue(v190, v193, v194, v195, v196, v197);
                        v198 = vabdd_f64(v188 + v187 * v192, v173);
                        if (v198 > v179)
                        {
                          v179 = v198;
                        }
                      }

                      v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(v163, v166, &v476, v498, 16, v170);
                    }

                    while (v171);
                  }

                  else
                  {
                    do
                    {
                      for (jj = 0; jj != v171; ++jj)
                      {
                        if (*v477 != v174)
                        {
                          objc_enumerationMutation(v163);
                        }

                        v200 = *(*(&v476 + 1) + 8 * jj);
                        objc_msgSend_floatValue(v200, v166, v167, v168, v169, v170);
                        v202 = v201;
                        objc_msgSend_floatValue(v200, v203, v204, v205, v206, v207);
                        v209 = vabdd_f64(v188 + v187 * v202, v177 + v176 * v208);
                        if (v209 > v179)
                        {
                          v179 = v209;
                        }
                      }

                      v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(v163, v166, &v476, v498, 16, v170);
                    }

                    while (v171);
                  }
                }
              }

              else
              {
                v179 = 0.0;
              }

              v464 = v464 + v179;
            }

            v219 = objc_msgSend_count(v77, v91, v92, v93, v94, v95);
            v474 = 0u;
            v475 = 0u;
            v472 = 0u;
            v473 = 0u;
            hasEndingLineBreak_alignmentType_writingDirection_locale = v77;
            v222 = objc_msgSend_countByEnumeratingWithState_objects_count_(hasEndingLineBreak_alignmentType_writingDirection_locale, v220, &v472, v496, 16, v221);
            if (v222)
            {
              v223 = v464 / (v219 - 1);
              v224 = *v473;
              do
              {
                for (kk = 0; kk != v222; ++kk)
                {
                  if (*v473 != v224)
                  {
                    objc_enumerationMutation(hasEndingLineBreak_alignmentType_writingDirection_locale);
                  }

                  v226 = *(*(&v472 + 1) + 8 * kk);
                  v227 = [CHReflowableTextLine alloc];
                  v238 = objc_msgSend_tokens(v226, v228, v229, v230, v231, v232);
                  if (v226)
                  {
                    objc_msgSend_principalLines(v226, v233, v234, v235, v236, v237);
                  }

                  else
                  {
                    v486 = 0u;
                    v487 = 0u;
                    v484 = 0u;
                    v485 = 0u;
                    v482 = 0u;
                    v483 = 0u;
                    v480 = 0u;
                    v481 = 0u;
                  }

                  objc_msgSend_bounds(v226, v233, v234, v235, v236, v237);
                  v240 = v239;
                  v242 = v241;
                  v244 = v243;
                  v246 = v245;
                  objc_msgSend_headIndent(v226, v247, v248, v249, v250, v251);
                  v253 = v252;
                  v259 = objc_msgSend_hasStartingLineBreak(v226, v254, v255, v256, v257, v258);
                  v265 = objc_msgSend_hasEndingLineBreak(v226, v260, v261, v262, v263, v264);
                  v271 = objc_msgSend_alignmentType(v226, v266, v267, v268, v269, v270);
                  v277 = objc_msgSend_writingDirection(v226, v272, v273, v274, v275, v276);
                  v283 = objc_msgSend_locale(v226, v278, v279, v280, v281, v282);
                  v285 = objc_msgSend_initWithTokens_principalLines_bounds_headIndent_leading_hasStartingLineBreak_hasEndingLineBreak_alignmentType_writingDirection_locale_(v227, v284, v238, &v480, v259, v265, v271, v277, v240, v242, v244, v246, v253, v223, v283);

                  objc_msgSend_addObject_(v471, v286, v285, v287, v288, v289);
                }

                v222 = objc_msgSend_countByEnumeratingWithState_objects_count_(hasEndingLineBreak_alignmentType_writingDirection_locale, v290, &v472, v496, 16, v291);
              }

              while (v222);
            }
          }
        }

        v446 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v72, &v488, v499, 16, v76);
      }

      while (v446);
    }

    v13 = v440;
  }

  else
  {
    v13 = v440;
    v471 = v440;
  }

  return v471;
}

+ (id)reflowableTextLinesFromTransformedTextLines:(id)a3 mergeUnacceptableLines:(BOOL)a4 progress:(id)a5
{
  v697 = a4;
  v772 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a5;
  v700 = v6;
  if (!objc_msgSend_count(v6, v8, v9, v10, v11, v12))
  {
    v695 = MEMORY[0x1E695E0F0];
    goto LABEL_5;
  }

  v688 = v7;
  if (v7)
  {
    v18 = MEMORY[0x1E696AE38];
    v19 = objc_msgSend_count(v6, v13, v14, v15, v16, v17);
    v689 = objc_msgSend_progressWithTotalUnitCount_parent_pendingUnitCount_(v18, v20, v19, v7, 50, v21);
  }

  else
  {
    v689 = 0;
  }

  v755 = 0u;
  v756 = 0u;
  v753 = 0u;
  v754 = 0u;
  v23 = v6;
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v753, v771, 16, v25);
  if (v31)
  {
    v32 = *v754;
    v33 = 1.79769313e308;
    v34 = -1.79769313e308;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v754 != v32)
        {
          objc_enumerationMutation(v23);
        }

        v36 = *(*(&v753 + 1) + 8 * i);
        objc_msgSend_boundingBox(v36, v26, v27, v28, v29, v30);
        v38 = v37;
        objc_msgSend_boundingBox(v36, v39, v40, v41, v42, v43);
        v33 = fmin(v33, v38);
        v34 = fmax(v34, v44);
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v753, v771, 16, v30);
    }

    while (v31);
  }

  else
  {
    v33 = 1.79769313e308;
    v34 = -1.79769313e308;
  }

  v723 = objc_msgSend_array(MEMORY[0x1E695DF70], v45, v46, v47, v48, v49);
  v751 = 0u;
  v752 = 0u;
  v749 = 0u;
  v750 = 0u;
  obj = v23;
  v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, &v749, v770, 16, v51);
  if (v57)
  {
    v58 = v34 - v33;
    v710 = *v750;
    v59 = -1.79769313e308;
    v60 = 1.79769313e308;
    v708 = v58 + 1.0e-10;
    v61 = 1.79769313e308;
    v62 = -1.79769313e308;
    do
    {
      v716 = 0;
      v713 = v57;
      do
      {
        if (*v750 != v710)
        {
          objc_enumerationMutation(obj);
        }

        v63 = *(*(&v749 + 1) + 8 * v716);
        if (!objc_msgSend_count(v723, v52, v53, v54, v55, v56))
        {
          objc_msgSend_addObject_(v723, v64, v63, v66, v67, v68);
          objc_msgSend_boundingBox(v63, v185, v186, v187, v188, v189);
          v60 = v190;
          v59 = v191;
          v61 = v192;
          v62 = v193;
          goto LABEL_21;
        }

        objc_msgSend_boundingBox(v63, v64, v65, v66, v67, v68);
        v70 = v69;
        objc_msgSend_boundingBox(v63, v71, v72, v73, v74, v75);
        v77 = v76;
        objc_msgSend_boundingBox(v63, v78, v79, v80, v81, v82);
        v84 = v83;
        objc_msgSend_boundingBox(v63, v85, v86, v87, v88, v89);
        v91 = v90;
        objc_msgSend_boundingBox(v63, v92, v93, v94, v95, v96);
        v102 = fmin(v70, v62);
        v103 = fmax(v77, v61);
        v106 = (v105 - v104) / v708;
        if (v106 >= 0.7 || v102 <= v103)
        {
          v108 = fmax(v91, v60);
          v109 = fmin(v84, v59);
          if (v106 >= 0.4 && v109 >= v108)
          {
            goto LABEL_79;
          }
        }

        if (!v63)
        {
          goto LABEL_79;
        }

        objc_msgSend_points(v63, v97, v98, v99, v100, v101);
        v112 = __p[1];
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v112 == __p[0])
        {
LABEL_79:
          objc_msgSend_addObject_(v723, v97, v63, v99, v100, v101);
          goto LABEL_80;
        }

        v113 = 0;
        v114 = -1;
        v115 = 0.25;
        while (v113 < objc_msgSend_count(v723, v97, v111, v99, v100, v101))
        {
          v116 = objc_msgSend_objectAtIndexedSubscript_(v723, v97, v113, v99, v100, v101);
          objc_msgSend_boundingBox(v63, v117, v118, v119, v120, v121);
          v123 = v122;
          objc_msgSend_boundingBox(v116, v124, v125, v126, v127, v128);
          v130 = v129;
          objc_msgSend_boundingBox(v63, v131, v132, v133, v134, v135);
          v137 = v136;
          objc_msgSend_boundingBox(v116, v138, v139, v140, v141, v142);
          if (fmin(v123, v130) - fmax(v137, v148) > 0.0)
          {
            goto LABEL_72;
          }

          if (!v116)
          {
            v172 = atan2(0.0, 0.0);
            v155 = tan(v172);
            v169 = 1.79769313e308;
            v170 = -1.79769313e308;
            goto LABEL_56;
          }

          objc_msgSend_principalLines(v116, v143, v144, v145, v146, v147);
          objc_msgSend_principalLines(v116, v149, v150, v151, v152, v153);
          v154 = atan2(*&buf[56] - *&__p[5], *&buf[48] - *&__p[4]);
          v155 = tan(v154);
          objc_msgSend_points(v116, v156, v157, v158, v159, v160);
          v166 = __p[1] - __p[0];
          if (__p[1] == __p[0])
          {
            v169 = 1.79769313e308;
            v170 = -1.79769313e308;
            if (!__p[1])
            {
              goto LABEL_56;
            }
          }

          else
          {
            v167 = v166 >> 4;
            if ((v166 >> 4) <= 1)
            {
              v167 = 1;
            }

            v168 = (__p[0] + 8);
            v169 = 1.79769313e308;
            v170 = -1.79769313e308;
            do
            {
              v171 = *v168 - *(v168 - 1) * v155;
              if (v171 <= v169)
              {
                v169 = *v168 - *(v168 - 1) * v155;
              }

              if (v171 >= v170)
              {
                v170 = *v168 - *(v168 - 1) * v155;
              }

              v168 += 2;
              --v167;
            }

            while (v167);
          }

          __p[1] = __p[0];
          operator delete(__p[0]);
LABEL_56:
          objc_msgSend_points(v63, v161, v162, v163, v164, v165);
          v719 = v114;
          v178 = __p[0];
          if (__p[0] == __p[1])
          {
            if (!__p[0])
            {
              goto LABEL_66;
            }
          }

          else
          {
            do
            {
              v179 = v178[1] - *v178 * v155;
              if (v179 >= v169 && v179 <= v170)
              {
                operator new();
              }

              v178 += 2;
            }

            while (v178 != __p[1]);
            v178 = __p[0];
            v57 = v713;
            if (!__p[0])
            {
              goto LABEL_66;
            }
          }

          __p[1] = v178;
          operator delete(v178);
LABEL_66:
          objc_msgSend_points(v63, v173, v174, v175, v176, v177);
          v181 = __p[1];
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          v182 = (v181 - __p[0]) >> 4;
          v183 = 0 / v182;
          v184 = v183 <= v115;
          if (v183 > v115)
          {
            v115 = 0 / v182;
          }

          v114 = v719;
          if (!v184)
          {
            v114 = v113;
          }

LABEL_72:

          ++v113;
        }

        if (v114 < 0)
        {
          goto LABEL_79;
        }

        v194 = objc_msgSend_objectAtIndexedSubscript_(v723, v97, v114, v99, v100, v101);
        objc_msgSend_boundingBox(v63, v195, v196, v197, v198, v199);
        v201 = v200;
        objc_msgSend_boundingBox(v194, v202, v203, v204, v205, v206);
        if (v201 >= v211)
        {
          objc_msgSend_mergeTransformedText_(v194, v207, v63, v208, v209, v210);
        }

        else
        {
          objc_msgSend_mergeTransformedText_(v63, v207, v194, v208, v209, v210);
          objc_msgSend_setObject_atIndexedSubscript_(v723, v212, v63, v114, v213, v214);
        }

LABEL_80:
        objc_msgSend_boundingBox(v63, v215, v216, v217, v218, v219);
        if (v60 > v220)
        {
          v60 = v220;
        }

        if (v59 < v221)
        {
          v59 = v221;
        }

        if (v61 > v222)
        {
          v61 = v222;
        }

        if (v62 < v223)
        {
          v62 = v223;
        }

LABEL_21:
        ++v716;
      }

      while (v716 != v57);
      v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v52, &v749, v770, 16, v56);
    }

    while (v57);
  }

  v695 = objc_msgSend_array(MEMORY[0x1E695DF70], v224, v225, v226, v227, v228);
  v702 = 0;
  obja = &stru_1EF1C0318;
  v234 = 0.5;
  v235 = 1.0;
  while (v702 < objc_msgSend_count(v723, v229, v230, v231, v232, v233))
  {
    v709 = objc_msgSend_objectAtIndexedSubscript_(v723, v236, v702, v237, v238, v239);
    objc_msgSend_orientation(v709, v240, v241, v242, v243, v244);
    v246 = v245;
    objc_msgSend_lineHeight(v709, v247, v248, v249, v250, v251);
    v253 = v252;
    v259 = objc_msgSend_locale(v709, v254, v255, v256, v257, v258);
    v690 = objc_msgSend_languageCode(v259, v260, v261, v262, v263, v264);

    v265 = objc_opt_class();
    v271 = objc_msgSend_locale(v709, v266, v267, v268, v269, v270);
    isLocaleReflowable = objc_msgSend_isLocaleReflowable_(v265, v272, v271, v273, v274, v275);

    v276 = objc_opt_class();
    v282 = objc_msgSend_strokeClassification(v709, v277, v278, v279, v280, v281);
    isStrokeClassificationMath = objc_msgSend_isStrokeClassificationMath_(v276, v283, v282, v284, v285, v286);
    v292 = 0x1E695D000uLL;
    if (v697 && (fabs(v246) > 0.2 || (isLocaleReflowable & 1) == 0) | isStrokeClassificationMath & 1)
    {
      v764 = v709;
      v293 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v287, &v764, 1, v290, v291);
    }

    else
    {
      v293 = objc_msgSend_splitIntoTokens(v709, v287, v288, v289, v290, v291);
    }

    v299 = v293;
    v701 = objc_msgSend_array(MEMORY[0x1E695DF70], v294, v295, v296, v297, v298);
    v746 = 0u;
    v747 = 0u;
    v744 = 0u;
    v745 = 0u;
    v699 = v299;
    v302 = objc_msgSend_countByEnumeratingWithState_objects_count_(v699, v300, &v744, v763, 16, v301);
    __asm { FMOV            V0.2D, #1.0 }

    v698 = _Q0;
    v692 = v302;
    if (v302)
    {
      v696 = *v745;
      do
      {
        v704 = 0;
        do
        {
          if (*v745 != v696)
          {
            objc_enumerationMutation(v699);
          }

          v705 = *(*(&v744 + 1) + 8 * v704);
          v312 = objc_msgSend_array(*(v292 + 3952), v303, v304, v305, v306, v307);
          v318 = objc_msgSend_array(*(v292 + 3952), v313, v314, v315, v316, v317);
          v742 = 0u;
          v743 = 0u;
          v740 = 0u;
          v741 = 0u;
          v324 = objc_msgSend_textStrokes(v705, v319, v320, v321, v322, v323);
          v332 = objc_msgSend_countByEnumeratingWithState_objects_count_(v324, v325, &v740, v762, 16, v326);
          if (v332)
          {
            v333 = *v741;
            do
            {
              for (j = 0; j != v332; ++j)
              {
                if (*v741 != v333)
                {
                  objc_enumerationMutation(v324);
                }

                v335 = objc_msgSend_strokeIdentifier(*(*(&v740 + 1) + 8 * j), v327, v328, v329, v330, v331);
                objc_msgSend_addObject_(v312, v336, v335, v337, v338, v339);
              }

              v332 = objc_msgSend_countByEnumeratingWithState_objects_count_(v324, v327, &v740, v762, 16, v331);
            }

            while (v332);
          }

          v738 = 0u;
          v739 = 0u;
          v736 = 0u;
          v737 = 0u;
          v720 = objc_msgSend_segments(v705, v340, v341, v342, v343, v344);
          v352 = objc_msgSend_countByEnumeratingWithState_objects_count_(v720, v345, &v736, v761, 16, v346);
          if (v352)
          {
            v353 = *v737;
            do
            {
              for (k = 0; k != v352; ++k)
              {
                if (*v737 != v353)
                {
                  objc_enumerationMutation(v720);
                }

                v355 = *(*(&v736 + 1) + 8 * k);
                v732 = 0u;
                v733 = 0u;
                v734 = 0u;
                v735 = 0u;
                v356 = objc_msgSend_supportStrokes(v355, v347, v348, v349, v350, v351);
                v364 = objc_msgSend_countByEnumeratingWithState_objects_count_(v356, v357, &v732, v760, 16, v358);
                if (v364)
                {
                  v365 = *v733;
                  do
                  {
                    for (m = 0; m != v364; ++m)
                    {
                      if (*v733 != v365)
                      {
                        objc_enumerationMutation(v356);
                      }

                      v367 = objc_msgSend_strokeIdentifier(*(*(&v732 + 1) + 8 * m), v359, v360, v361, v362, v363);
                      objc_msgSend_addObject_(v318, v368, v367, v369, v370, v371);
                    }

                    v364 = objc_msgSend_countByEnumeratingWithState_objects_count_(v356, v359, &v732, v760, 16, v363);
                  }

                  while (v364);
                }
              }

              v352 = objc_msgSend_countByEnumeratingWithState_objects_count_(v720, v347, &v736, v761, 16, v351);
            }

            while (v352);
          }

          v377 = objc_msgSend_textStrokes(v705, v372, v373, v374, v375, v376);
          objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v378, v377, v379, v380, v381);
          v711 = v383;
          v714 = v382;
          v717 = v384;
          v721 = v385;

          memset(__p, 0, sizeof(__p));
          if (v705)
          {
            objc_msgSend_principalLines(v705, v386, v387, v388, v389, v390);
          }

          if ((objc_msgSend_fromCachedTokens(v709, v386, v387, v388, v389, v390) & 1) == 0)
          {
            v396 = objc_opt_class();
            if (v396)
            {
              objc_msgSend_fixPrincipalLinesPosition_useAltString_skipAmbiguousCharacters_(v396, v391, v705, 0, 1, v395);
            }

            else
            {
              v769 = 0u;
              v768 = 0u;
              v767 = 0u;
              v766 = 0u;
              memset(buf, 0, sizeof(buf));
            }

            *&__p[8] = v766;
            *&__p[10] = v767;
            *&__p[12] = v768;
            *&__p[14] = v769;
            *__p = *buf;
            *&__p[2] = *&buf[16];
            *&__p[4] = *&buf[32];
            *&__p[6] = *&buf[48];
          }

          v397 = objc_msgSend_string(v705, v391, v392, v393, v394, v395);
          v403 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v398, v399, v400, v401, v402);
          v703 = objc_msgSend_stringByTrimmingCharactersInSet_(v397, v404, v403, v405, v406, v407);

          v408 = objc_opt_class();
          v766 = *&__p[8];
          v767 = *&__p[10];
          v768 = *&__p[12];
          v769 = *&__p[14];
          *buf = *__p;
          *&buf[16] = *&__p[2];
          *&buf[32] = *&__p[4];
          *&buf[48] = *&__p[6];
          v412 = objc_msgSend_textSizeFromPrincipalLines_string_(v408, v409, buf, v703, v410, v411);
          v413.f64[0] = v721;
          v413.f64[1] = v717;
          v691 = vceqzq_f64(v413);
          v414 = vbslq_s8(v691, v698, v413);
          v415.f64[0] = v711;
          v415.f64[1] = v714;
          *&__p[1] = vdivq_f64(vsubq_f64(*&__p[1], v415), v414);
          *&__p[3] = vdivq_f64(vsubq_f64(*&__p[3], v415), v414);
          *&__p[5] = vdivq_f64(vsubq_f64(*&__p[5], v415), v414);
          *&__p[7] = vdivq_f64(vsubq_f64(*&__p[7], v415), v414);
          *&__p[9] = vdivq_f64(vsubq_f64(*&__p[9], v415), v414);
          *&__p[11] = vdivq_f64(vsubq_f64(*&__p[11], v415), v414);
          *&__p[13] = vdivq_f64(vsubq_f64(*&__p[13], v415), v414);
          *__p = (*__p - v714) / v414.f64[1];
          *&__p[15] = (*&__p[15] - v711) / v414.f64[0];
          v416 = objc_opt_class();
          if (vmovn_s64(vmvnq_s8(v691)).u8[0])
          {
            objc_msgSend_scaledSize_scale_(v416, v417, v412, v418, v419, v420, 1.0 / v721);
          }

          else
          {
            objc_msgSend_scaledSize_scale_(v416, v417, v412, v418, v419, v420, 1.0);
          }
          v421 = ;

          v422 = MEMORY[0x1E695DF70];
          v428 = objc_msgSend_principalPoints(v705, v423, v424, v425, v426, v427);
          v434 = objc_msgSend_count(v428, v429, v430, v431, v432, v433);
          v439 = objc_msgSend_arrayWithCapacity_(v422, v435, v434, v436, v437, v438);

          v730 = 0u;
          v731 = 0u;
          v728 = 0u;
          v729 = 0u;
          v445 = objc_msgSend_principalPoints(v705, v440, v441, v442, v443, v444);
          v448 = objc_msgSend_countByEnumeratingWithState_objects_count_(v445, v446, &v728, v759, 16, v447);
          if (v448)
          {
            v449 = *v729;
            do
            {
              for (n = 0; n != v448; ++n)
              {
                if (*v729 != v449)
                {
                  objc_enumerationMutation(v445);
                }

                v451 = sub_183898210(*(*(&v728 + 1) + 8 * n), v714, v711, v717, v721);
                objc_msgSend_addObject_(v439, v452, v451, v453, v454, v455);
              }

              v448 = objc_msgSend_countByEnumeratingWithState_objects_count_(v445, v456, &v728, v759, 16, v457);
            }

            while (v448);
          }

          v463 = objc_msgSend_tokens(v705, v458, v459, v460, v461, v462);
          v469 = objc_msgSend_firstObject(v463, v464, v465, v466, v467, v468);
          v475 = objc_msgSend_properties(v469, v470, v471, v472, v473, v474);

          v476 = [CHReflowableTextResultToken alloc];
          v766 = *&__p[8];
          v767 = *&__p[10];
          v768 = *&__p[12];
          v769 = *&__p[14];
          *buf = *__p;
          *&buf[16] = *&__p[2];
          *&buf[32] = *&__p[4];
          *&buf[48] = *&__p[6];
          LOBYTE(v687) = (v475 & 0x20) != 0;
          hasPrecedingSpace = objc_msgSend_initWithString_strokeIdentifiers_nonTextStrokeIdentifiers_principalLines_principalPoints_textSize_bounds_hasPrecedingSpace_(v476, v477, v703, v312, v318, buf, v439, v421, v714, v711, v717, v721, v687);
          objc_msgSend_addObject_(v701, v479, hasPrecedingSpace, v480, v481, v482);

          ++v704;
          v292 = 0x1E695D000;
        }

        while (v704 != v692);
        v692 = objc_msgSend_countByEnumeratingWithState_objects_count_(v699, v303, &v744, v763, 16, v307);
      }

      while (v692);
    }

    if (v702 + 1 < objc_msgSend_count(v723, v483, v484, v485, v486, v487))
    {
      v497 = objc_msgSend_objectAtIndexedSubscript_(v723, v488, v702 + 1, v489, v490, v491);
      if (v709)
      {
        objc_msgSend_principalLines(v709, v492, v493, v494, v495, v496);
        v498 = __p[4];
        if (v497)
        {
          goto LABEL_146;
        }

LABEL_172:
        v499 = 0.0;
        v500 = v709;
        if (!v709)
        {
          goto LABEL_173;
        }

LABEL_147:
        objc_msgSend_principalLines(v500, v492, v493, v494, v495, v496);
        v501 = __p[6];
        if (v497)
        {
          goto LABEL_148;
        }

LABEL_174:
        v548 = fmax(*&v498, v499);
        v503 = fmax(*&v501, 0.0);
        if (v548 >= v503)
        {
          goto LABEL_175;
        }

LABEL_149:
        v726 = 0u;
        v727 = 0u;
        v724 = 0u;
        v725 = 0u;
        objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v492, v493, v494, v495, v496);
        v504 = v234 = 0.5;
        v757[0] = v504;
        v510 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v505, v506, v507, v508, v509, v503);
        v757[1] = v510;
        v514 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v511, v757, 2, v512, v513);

        v522 = objc_msgSend_countByEnumeratingWithState_objects_count_(v514, v515, &v724, v758, 16, v516);
        if (!v522)
        {
          v524 = 0.0;
          goto LABEL_212;
        }

        v523 = *v725;
        if (v709)
        {
          v524 = 0.0;
          while (1)
          {
            for (ii = 0; ii != v522; ++ii)
            {
              while (1)
              {
                if (*v725 != v523)
                {
                  objc_enumerationMutation(v514);
                }

                v527 = *(*(&v724 + 1) + 8 * ii);
                objc_msgSend_principalLines(v709, v517, v518, v519, v520, v521);
                objc_msgSend_floatValue(v527, v528, v529, v530, v531, v532);
                if (*&__p[4] == *&__p[6])
                {
                  v539 = *&__p[5];
                  if (v497)
                  {
                    goto LABEL_160;
                  }
                }

                else
                {
                  v539 = *&__p[5] - *&__p[4] * ((*&__p[7] - *&__p[5]) / (*&__p[6] - *&__p[4])) + (*&__p[7] - *&__p[5]) / (*&__p[6] - *&__p[4]) * v538;
                  if (v497)
                  {
LABEL_160:
                    objc_msgSend_principalLines(v497, v533, v534, v535, v536, v537);
                    goto LABEL_163;
                  }
                }

                memset(__p, 0, sizeof(__p));
LABEL_163:
                objc_msgSend_floatValue(v527, v533, v534, v535, v536, v537);
                if (*&__p[4] != *&__p[6])
                {
                  break;
                }

                v541 = vabdd_f64(v539, *&__p[5]);
                if (v541 > v524)
                {
                  v524 = v541;
                }

                if (v522 == ++ii)
                {
                  goto LABEL_167;
                }
              }

              v526 = vabdd_f64(v539, *&__p[5] - *&__p[4] * ((*&__p[7] - *&__p[5]) / (*&__p[6] - *&__p[4])) + (*&__p[7] - *&__p[5]) / (*&__p[6] - *&__p[4]) * v540);
              if (v526 > v524)
              {
                v524 = v526;
              }
            }

LABEL_167:
            v522 = objc_msgSend_countByEnumeratingWithState_objects_count_(v514, v517, &v724, v758, 16, v521);
            if (!v522)
            {
              goto LABEL_212;
            }
          }
        }

        v524 = 0.0;
        if (!v497)
        {
          while (1)
          {
            for (jj = 0; jj != v522; ++jj)
            {
              while (1)
              {
                if (*v725 != v523)
                {
                  objc_enumerationMutation(v514);
                }

                v582 = *(*(&v724 + 1) + 8 * jj);
                memset(__p, 0, sizeof(__p));
                objc_msgSend_floatValue(v582, v517, v518, v519, v520, v521);
                v589 = *&__p[4] == *&__p[6] ? *&__p[5] : *&__p[5] - *&__p[4] * ((*&__p[7] - *&__p[5]) / (*&__p[6] - *&__p[4])) + (*&__p[7] - *&__p[5]) / (*&__p[6] - *&__p[4]) * v588;
                memset(__p, 0, sizeof(__p));
                objc_msgSend_floatValue(v582, v583, v584, v585, v586, v587);
                if (*&__p[4] != *&__p[6])
                {
                  break;
                }

                v591 = vabdd_f64(v589, *&__p[5]);
                if (v591 > v524)
                {
                  v524 = v591;
                }

                if (v522 == ++jj)
                {
                  goto LABEL_211;
                }
              }

              v581 = vabdd_f64(v589, *&__p[5] - *&__p[4] * ((*&__p[7] - *&__p[5]) / (*&__p[6] - *&__p[4])) + (*&__p[7] - *&__p[5]) / (*&__p[6] - *&__p[4]) * v590);
              if (v581 > v524)
              {
                v524 = v581;
              }
            }

LABEL_211:
            v522 = objc_msgSend_countByEnumeratingWithState_objects_count_(v514, v517, &v724, v758, 16, v521);
            if (!v522)
            {
              goto LABEL_212;
            }
          }
        }

        do
        {
          for (kk = 0; kk != v522; ++kk)
          {
            while (1)
            {
              if (*v725 != v523)
              {
                objc_enumerationMutation(v514);
              }

              v565 = *(*(&v724 + 1) + 8 * kk);
              memset(__p, 0, sizeof(__p));
              objc_msgSend_floatValue(v565, v517, v518, v519, v520, v521);
              v572 = *&__p[4] == *&__p[6] ? *&__p[5] : *&__p[5] - *&__p[4] * ((*&__p[7] - *&__p[5]) / (*&__p[6] - *&__p[4])) + (*&__p[7] - *&__p[5]) / (*&__p[6] - *&__p[4]) * v571;
              objc_msgSend_principalLines(v497, v566, v567, v568, v569, v570);
              objc_msgSend_floatValue(v565, v573, v574, v575, v576, v577);
              if (*&__p[4] != *&__p[6])
              {
                break;
              }

              v579 = vabdd_f64(v572, *&__p[5]);
              if (v579 > v524)
              {
                v524 = v579;
              }

              if (v522 == ++kk)
              {
                goto LABEL_196;
              }
            }

            v564 = vabdd_f64(v572, *&__p[5] - *&__p[4] * ((*&__p[7] - *&__p[5]) / (*&__p[6] - *&__p[4])) + (*&__p[7] - *&__p[5]) / (*&__p[6] - *&__p[4]) * v578);
            if (v564 > v524)
            {
              v524 = v564;
            }
          }

LABEL_196:
          v522 = objc_msgSend_countByEnumeratingWithState_objects_count_(v514, v517, &v724, v758, 16, v521);
        }

        while (v522);
      }

      else
      {
        v498 = 0;
        memset(__p, 0, sizeof(__p));
        if (!v497)
        {
          goto LABEL_172;
        }

LABEL_146:
        objc_msgSend_principalLines(v497, v492, v493, v494, v495, v496);
        v499 = *&buf[32];
        v500 = v709;
        if (v709)
        {
          goto LABEL_147;
        }

LABEL_173:
        v501 = 0;
        memset(__p, 0, sizeof(__p));
        if (!v497)
        {
          goto LABEL_174;
        }

LABEL_148:
        objc_msgSend_principalLines(v497, v492, v493, v494, v495, v496);
        v502 = fmax(*&v498, v499);
        v503 = fmax(*&v501, *&buf[48]);
        if (v502 < v503)
        {
          goto LABEL_149;
        }

LABEL_175:
        v234 = 0.5;
        v554 = objc_opt_class();
        if (v709)
        {
          objc_msgSend_principalLines(v709, v549, v550, v551, v552, v553);
        }

        else
        {
          memset(__p, 0, sizeof(__p));
        }

        v514 = objc_msgSend_string(v709, v549, v550, v551, v552, v553);
        objc_msgSend_estimatedLeadingForPrincipalLines_transcription_(v554, v559, __p, v514, v560, v561);
        v524 = v562;
      }

LABEL_212:

      goto LABEL_213;
    }

    v547 = objc_opt_class();
    if (v709)
    {
      objc_msgSend_principalLines(v709, v542, v543, v544, v545, v546);
    }

    else
    {
      memset(__p, 0, sizeof(__p));
    }

    v497 = objc_msgSend_string(v709, v542, v543, v544, v545, v546);
    objc_msgSend_estimatedLeadingForPrincipalLines_transcription_(v547, v555, __p, v497, v556, v557);
    v524 = v558;
LABEL_213:

    v597 = objc_msgSend_textStrokes(v709, v592, v593, v594, v595, v596);
    objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v598, v597, v599, v600, v601);
    v712 = v602;
    v715 = v603;
    v718 = v604;
    v722 = v605;

    v611 = 0uLL;
    memset(__p, 0, sizeof(__p));
    if (v709)
    {
      objc_msgSend_principalLines(v709, v606, v607, v608, v609, v610);
      v611 = *__p;
      v612 = *&__p[2];
      v613 = *&__p[4];
      v614 = *&__p[6];
      v615 = *&__p[8];
      v616 = *&__p[10];
      v618 = *&__p[12];
      v617 = *&__p[14];
    }

    else
    {
      v612 = 0uLL;
      v613 = 0uLL;
      v614 = 0uLL;
      v615 = 0uLL;
      v616 = 0uLL;
      v618 = 0uLL;
      v617 = 0uLL;
    }

    v619.f64[0] = v718;
    v619.f64[1] = v722;
    v620.f64[0] = v712;
    v620.f64[1] = v715;
    v621 = vbslq_s8(vceqzq_f64(v619), v698, v619);
    *__p = vdivq_f64(vsubq_f64(v611, v620), v621);
    *&__p[2] = vdivq_f64(vsubq_f64(v612, v620), v621);
    *&__p[4] = vdivq_f64(vsubq_f64(v613, v620), v621);
    *&__p[6] = vdivq_f64(vsubq_f64(v614, v620), v621);
    *&__p[8] = vdivq_f64(vsubq_f64(v615, v620), v621);
    *&__p[10] = vdivq_f64(vsubq_f64(v616, v620), v621);
    *&__p[12] = vdivq_f64(vsubq_f64(v618, v620), v621);
    *&__p[14] = vdivq_f64(vsubq_f64(v617, v620), v621);
    v627 = 1;
    if (objc_msgSend_strokeClassification(v709, v606, v607, v608, v609, v610) == 2)
    {
      v628 = 2;
    }

    else
    {
      v628 = 1;
    }

    v629 = isLocaleReflowable ^ 1 | isStrokeClassificationMath;
    if ((v629 & 1) == 0)
    {
      v627 = v702 == objc_msgSend_count(v723, v622, v623, v624, v625, v626) - 1;
    }

    if (v702 && (v253 / v235 > 2.0 || v253 / v235 < v234 || (objc_msgSend_isEqualToString_(v690, v622, obja, v624, v625, v626) & 1) == 0))
    {
      v630 = objc_msgSend_lastObject(v695, v622, v623, v624, v625, v626);
      objc_msgSend_setHasEndingLineBreak_(v630, v631, 1, v632, v633, v634);

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v635 = qword_1EA84DCA0;
      if (os_log_type_enabled(v635, OS_LOG_TYPE_DEBUG))
      {
        v641 = objc_msgSend_count(v723, v636, v637, v638, v639, v640);
        *buf = 134219778;
        *&buf[4] = v702 + 1;
        *&buf[12] = 2048;
        *&buf[14] = v641;
        *&buf[22] = 2048;
        *&buf[24] = v253 / v235;
        *&buf[32] = 2048;
        *&buf[34] = v253;
        *&buf[42] = 2048;
        *&buf[44] = v235;
        *&buf[52] = 2112;
        *&buf[54] = v690;
        *&buf[62] = 2112;
        *&v766 = obja;
        WORD4(v766) = 1024;
        *(&v766 + 10) = isLocaleReflowable;
        _os_log_impl(&dword_18366B000, v635, OS_LOG_TYPE_DEBUG, "Line breaking detected at the beginning of line %lu/%lu (heightDifference:%lf=%lf/%lf lang:%@=>%@ acceptableLang:%d)", buf, 0x4Eu);
      }

      v629 = 1;
    }

    v642 = [CHReflowableTextLine alloc];
    v766 = *&__p[8];
    v767 = *&__p[10];
    v768 = *&__p[12];
    v769 = *&__p[14];
    *buf = *__p;
    *&buf[16] = *&__p[2];
    *&buf[32] = *&__p[4];
    *&buf[48] = *&__p[6];
    v648 = objc_msgSend_locale(v709, v643, v644, v645, v646, v647);
    hasEndingLineBreak_alignmentType_writingDirection_locale = objc_msgSend_initWithTokens_principalLines_bounds_headIndent_leading_hasStartingLineBreak_hasEndingLineBreak_alignmentType_writingDirection_locale_(v642, v649, v701, buf, v629 & 1, v627, 1, v628, v712, v715, v718, v722, 0.0, v524, v648);

    objc_msgSend_addObject_(v695, v651, hasEndingLineBreak_alignmentType_writingDirection_locale, v652, v653, v654);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v655 = qword_1EA84DCA0;
    if (os_log_type_enabled(v655, OS_LOG_TYPE_DEBUG))
    {
      v661 = objc_msgSend_count(v701, v656, v657, v658, v659, v660);
      objc_msgSend_orientation(v709, v662, v663, v664, v665, v666);
      v668 = "NO";
      if (v627)
      {
        v668 = "YES";
      }

      *buf = 134218498;
      *&buf[4] = v661;
      *&buf[12] = 2048;
      *&buf[14] = v667;
      *&buf[22] = 2080;
      *&buf[24] = v668;
      _os_log_impl(&dword_18366B000, v655, OS_LOG_TYPE_DEBUG, "Adding CHReflowableTextLine with %ld tokens, lineOrientation = %.2f, hasEndingLineBreak = %s", buf, 0x20u);
    }

    v669 = v690;
    if (v688)
    {
      v675 = objc_msgSend_completedUnitCount(v689, v670, v671, v672, v673, v674);
      objc_msgSend_setCompletedUnitCount_(v689, v676, v675 + 1, v677, v678, v679);
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v680 = qword_1EA84DCA0;
      if (os_log_type_enabled(v680, OS_LOG_TYPE_DEBUG))
      {
        v686 = objc_msgSend_localizedDescription(v689, v681, v682, v683, v684, v685);
        *buf = 138412290;
        *&buf[4] = v686;
        _os_log_impl(&dword_18366B000, v680, OS_LOG_TYPE_DEBUG, "Reflow Task Progress (token): %@", buf, 0xCu);
      }
    }

    v235 = fmax(v253, 1.0);
    ++v702;
    obja = v669;
  }

  v7 = v688;
LABEL_5:

  return v695;
}

+ (id)reflowableTextTokensFromTransformedTextLines:(id)a3
{
  v240 = *MEMORY[0x1E69E9840];
  v174 = a3;
  v199 = objc_msgSend_array(MEMORY[0x1E695DF70], v3, v4, v5, v6, v7);
  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  obj = v174;
  v175 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v231, v239, 16, v9);
  if (v175)
  {
    v180 = *v232;
    do
    {
      for (i = 0; i != v175; ++i)
      {
        if (*v232 != v180)
        {
          objc_enumerationMutation(obj);
        }

        v176 = *(*(&v231 + 1) + 8 * i);
        v15 = objc_msgSend_splitIntoTokens(v176, v10, v11, v12, v13, v14);
        v229 = 0u;
        v230 = 0u;
        v227 = 0u;
        v228 = 0u;
        v202 = v15;
        v197 = objc_msgSend_countByEnumeratingWithState_objects_count_(v202, v16, &v227, v238, 16, v17);
        if (v197)
        {
          v198 = *v228;
          do
          {
            for (j = 0; j != v197; ++j)
            {
              if (*v228 != v198)
              {
                objc_enumerationMutation(v202);
              }

              v204 = *(*(&v227 + 1) + 8 * j);
              v23 = objc_msgSend_array(MEMORY[0x1E695DF70], v18, v19, v20, v21, v22);
              v29 = objc_msgSend_array(MEMORY[0x1E695DF70], v24, v25, v26, v27, v28);
              v225 = 0u;
              v226 = 0u;
              v223 = 0u;
              v224 = 0u;
              v35 = objc_msgSend_textStrokes(v204, v30, v31, v32, v33, v34);
              v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v223, v237, 16, v37);
              if (v43)
              {
                v44 = *v224;
                do
                {
                  for (k = 0; k != v43; ++k)
                  {
                    if (*v224 != v44)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v46 = objc_msgSend_strokeIdentifier(*(*(&v223 + 1) + 8 * k), v38, v39, v40, v41, v42);
                    objc_msgSend_addObject_(v23, v47, v46, v48, v49, v50);
                  }

                  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v223, v237, 16, v42);
                }

                while (v43);
              }

              v221 = 0u;
              v222 = 0u;
              v219 = 0u;
              v220 = 0u;
              v205 = objc_msgSend_segments(v204, v51, v52, v53, v54, v55);
              v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v205, v56, &v219, v236, 16, v57);
              if (v63)
              {
                v64 = *v220;
                do
                {
                  for (m = 0; m != v63; ++m)
                  {
                    if (*v220 != v64)
                    {
                      objc_enumerationMutation(v205);
                    }

                    v66 = *(*(&v219 + 1) + 8 * m);
                    v215 = 0u;
                    v216 = 0u;
                    v217 = 0u;
                    v218 = 0u;
                    v67 = objc_msgSend_supportStrokes(v66, v58, v59, v60, v61, v62);
                    v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v68, &v215, v235, 16, v69);
                    if (v75)
                    {
                      v76 = *v216;
                      do
                      {
                        for (n = 0; n != v75; ++n)
                        {
                          if (*v216 != v76)
                          {
                            objc_enumerationMutation(v67);
                          }

                          v78 = objc_msgSend_strokeIdentifier(*(*(&v215 + 1) + 8 * n), v70, v71, v72, v73, v74);
                          objc_msgSend_addObject_(v29, v79, v78, v80, v81, v82);
                        }

                        v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v70, &v215, v235, 16, v74);
                      }

                      while (v75);
                    }
                  }

                  v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v205, v58, &v219, v236, 16, v62);
                }

                while (v63);
              }

              v88 = objc_msgSend_string(v204, v83, v84, v85, v86, v87);
              v94 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v89, v90, v91, v92, v93);
              v99 = objc_msgSend_stringByTrimmingCharactersInSet_(v88, v95, v94, v96, v97, v98);

              v105 = objc_msgSend_textStrokes(v204, v100, v101, v102, v103, v104);
              objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v106, v105, v107, v108, v109);
              v206 = v110;
              v112 = v111;
              v114 = v113;
              v116 = v115;

              v117 = *MEMORY[0x1E695EFF8];
              v118 = *(MEMORY[0x1E695EFF8] + 8);
              v124 = objc_alloc_init(CHTextSize);
              v125 = *MEMORY[0x1E695F060];
              if (*&v206 == *MEMORY[0x1E695F060] && (v125 = *(MEMORY[0x1E695F060] + 8), v116 == v125))
              {
                v126 = v118;
                v127 = v117;
                v128 = v118;
                v181 = v117;
                v182 = v118;
                v184 = v117;
                v185 = v118;
                v187 = v117;
                v188 = v118;
                v190 = v117;
                v191 = v118;
                v193 = v117;
                v194 = v118;
                v196 = v117;
                v129 = MEMORY[0x1E695E0F0];
              }

              else
              {
                if (v204)
                {
                  objc_msgSend_principalLines(v204, v119, v120, v121, v122, v123, v125, *&v206);
                  *v192 = v208;
                  v195 = v207;
                  *v186 = v210;
                  *v189 = v209;
                  *v183 = v211;
                  v178 = v212;
                  v179 = v214;
                  v177 = v213;
                }

                else
                {
                  v195 = 0u;
                  *v192 = 0u;
                  *v189 = 0u;
                  *v186 = 0u;
                  *v183 = 0u;
                  v177 = 0u;
                  v178 = 0u;
                  v179 = 0u;
                }

                if ((objc_msgSend_fromCachedTokens(v176, v119, v120, v121, v122, v123) & 1) == 0)
                {
                  v130 = objc_opt_class();
                  if (v130)
                  {
                    objc_msgSend_fixPrincipalLinesPosition_useAltString_skipAmbiguousCharacters_(v130, v131, v204, 0, 1, v132);
                    *v192 = v208;
                    v195 = v207;
                    *v186 = v210;
                    *v189 = v209;
                    *v183 = v211;
                    v178 = v212;
                    v179 = v214;
                    v177 = v213;
                  }

                  else
                  {
                    v195 = 0u;
                    *v192 = 0u;
                    *v189 = 0u;
                    *v186 = 0u;
                    *v183 = 0u;
                    v177 = 0u;
                    v178 = 0u;
                    v179 = 0u;
                  }
                }

                v133 = objc_opt_class();
                v207 = v195;
                v208 = *v192;
                v209 = *v189;
                v210 = *v186;
                v211 = *v183;
                v212 = v178;
                v213 = v177;
                v214 = v179;
                v137 = objc_msgSend_textSizeFromPrincipalLines_string_(v133, v134, &v207, v99, v135, v136);

                if (*&v206 == 0.0)
                {
                  v138 = 1.0;
                }

                else
                {
                  v138 = *&v206;
                }

                if (v116 == 0.0)
                {
                  v139 = 1.0;
                }

                else
                {
                  v139 = v116;
                }

                v140 = objc_opt_class();
                v145 = 1.0 / v116;
                if (v116 == 0.0)
                {
                  v145 = 1.0;
                }

                v124 = objc_msgSend_scaledSize_scale_(v140, v141, v137, v142, v143, v144, v145);

                v151 = objc_msgSend_principalPoints(v204, v146, v147, v148, v149, v150);
                v129 = sub_183898F58(v151, v112, v114, *&v206, v116);

                v196 = (*&v195 - v112) / v138;
                v193 = (v192[0] - v112) / v138;
                v194 = (*(&v195 + 1) - v114) / v139;
                v190 = (v189[0] - v112) / v138;
                v191 = (v192[1] - v114) / v139;
                v187 = (v186[0] - v112) / v138;
                v188 = (v189[1] - v114) / v139;
                v184 = (v183[0] - v112) / v138;
                v185 = (v186[1] - v114) / v139;
                v181 = (*&v178 - v112) / v138;
                v182 = (v183[1] - v114) / v139;
                v128 = (*(&v178 + 1) - v114) / v139;
                v127 = (*&v177 - v112) / v138;
                v126 = (*(&v177 + 1) - v114) / v139;
                v117 = (*&v179 - v112) / v138;
                v118 = (*(&v179 + 1) - v114) / v139;
              }

              v152 = objc_msgSend_tokens(v204, v119, v120, v121, v122, v123);
              v158 = objc_msgSend_firstObject(v152, v153, v154, v155, v156, v157);
              v164 = objc_msgSend_properties(v158, v159, v160, v161, v162, v163);

              v165 = [CHReflowableTextResultToken alloc];
              *&v207 = v196;
              *(&v207 + 1) = v194;
              *&v208 = v193;
              *(&v208 + 1) = v191;
              *&v209 = v190;
              *(&v209 + 1) = v188;
              *&v210 = v187;
              *(&v210 + 1) = v185;
              *&v211 = v184;
              *(&v211 + 1) = v182;
              *&v212 = v181;
              *(&v212 + 1) = v128;
              *&v213 = v127;
              *(&v213 + 1) = v126;
              *&v214 = v117;
              *(&v214 + 1) = v118;
              LOBYTE(v173) = (v164 & 0x20) != 0;
              hasPrecedingSpace = objc_msgSend_initWithString_strokeIdentifiers_nonTextStrokeIdentifiers_principalLines_principalPoints_textSize_bounds_hasPrecedingSpace_(v165, v166, v99, v23, v29, &v207, v129, v124, v112, v114, *&v206, v116, v173);
              objc_msgSend_addObject_(v199, v168, hasPrecedingSpace, v169, v170, v171);
            }

            v197 = objc_msgSend_countByEnumeratingWithState_objects_count_(v202, v18, &v227, v238, 16, v22);
          }

          while (v197);
        }
      }

      v175 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v231, v239, 16, v14);
    }

    while (v175);
  }

  return v199;
}

- ($196E0A09E4C4E138EEBEC6372622051A)principalLines
{
  var1 = self[1].var1.var1;
  retstr->var2.var0 = self[1].var1.var0;
  retstr->var2.var1 = var1;
  v4 = self[1].var2.var1;
  retstr->var3.var0 = self[1].var2.var0;
  retstr->var3.var1 = v4;
  v5 = self->var3.var1;
  retstr->var0.var0 = self->var3.var0;
  retstr->var0.var1 = v5;
  v6 = self[1].var0.var1;
  retstr->var1.var0 = self[1].var0.var0;
  retstr->var1.var1 = v6;
  return self;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end