@interface CHSynthesisResult
- ($196E0A09E4C4E138EEBEC6372622051A)principalLines;
- (CHSynthesisResult)initWithCoder:(id)a3;
- (CHSynthesisResult)initWithContent:(id)a3 drawing:(id)a4;
- (CHSynthesisResult)initWithContent:(id)a3 drawing:(id)a4 segmentContents:(id)a5 segmentStrokeIndexes:(id)a6 inventoryDebuggingStyleDrawing:(id)a7 inventoryDebuggingStyleContent:(id)a8 numberOfNotSynthesizedCharacters:(unint64_t)a9;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (void)alignAlphaShapesToDrawing:(id)a3 allowAnisotropicScaling:(BOOL)a4;
- (void)alignProportionsAndPositionsToDrawing:(id)a3 allowAnisotropicScaling:(BOOL)a4;
- (void)append:(id)a3;
- (void)applyDesiredDistanceBetweenDigitCenters:(double)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateSubresultsWithBlock:(id)a3;
- (void)resampleDrawing;
- (void)scaleDrawingWithWidth:(double)a3 height:(double)a4 desiredDistanceBetweenDigitCenters:(double)a5;
- (void)setPrincipalLines:(id *)a3;
@end

@implementation CHSynthesisResult

- (CHSynthesisResult)initWithContent:(id)a3 drawing:(id)a4
{
  v37[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13 = objc_msgSend_copy(v6, v8, v9, v10, v11, v12);
  v37[0] = v13;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v37, 1, v15, v16);
  v18 = MEMORY[0x1E696AC90];
  v24 = objc_msgSend_strokeCount(v7, v19, v20, v21, v22, v23);
  v28 = objc_msgSend_indexSetWithIndexesInRange_(v18, v25, 0, v24, v26, v27);
  v36 = v28;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v29, &v36, 1, v30, v31);
  v34 = objc_msgSend_initWithContent_drawing_segmentContents_segmentStrokeIndexes_numberOfNotSynthesizedCharacters_(self, v33, v6, v7, v17, v32, 0);

  return v34;
}

- (CHSynthesisResult)initWithContent:(id)a3 drawing:(id)a4 segmentContents:(id)a5 segmentStrokeIndexes:(id)a6 inventoryDebuggingStyleDrawing:(id)a7 inventoryDebuggingStyleContent:(id)a8 numberOfNotSynthesizedCharacters:(unint64_t)a9
{
  v118 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v113.receiver = self;
  v113.super_class = CHSynthesisResult;
  v26 = [(CHSynthesisResult *)&v113 init];
  if (v26)
  {
    v27 = objc_msgSend_copy(v15, v21, v22, v23, v24, v25);
    content = v26->_content;
    v26->_content = v27;

    v34 = objc_msgSend_copy(v16, v29, v30, v31, v32, v33);
    drawing = v26->_drawing;
    v26->_drawing = v34;

    v41 = objc_msgSend_copy(v17, v36, v37, v38, v39, v40);
    segmentContents = v26->_segmentContents;
    v26->_segmentContents = v41;

    v48 = objc_msgSend_copy(v18, v43, v44, v45, v46, v47);
    segmentStrokeIndexes = v26->_segmentStrokeIndexes;
    v26->_segmentStrokeIndexes = v48;

    v55 = objc_msgSend_copy(v19, v50, v51, v52, v53, v54);
    inventoryDebuggingStyleDrawing = v26->_inventoryDebuggingStyleDrawing;
    v26->_inventoryDebuggingStyleDrawing = v55;

    v62 = objc_msgSend_copy(v20, v57, v58, v59, v60, v61);
    inventoryDebuggingStyleContent = v26->_inventoryDebuggingStyleContent;
    v26->_inventoryDebuggingStyleContent = v62;

    v69 = objc_msgSend_count(v26->_segmentContents, v64, v65, v66, v67, v68);
    if (v69 != objc_msgSend_count(v26->_segmentStrokeIndexes, v70, v71, v72, v73, v74))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v80 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        v86 = objc_msgSend_count(v26->_segmentContents, v81, v82, v83, v84, v85);
        v92 = objc_msgSend_count(v26->_segmentStrokeIndexes, v87, v88, v89, v90, v91);
        *buf = 134218240;
        v115 = v86;
        v116 = 2048;
        v117 = v92;
        _os_log_impl(&dword_18366B000, v80, OS_LOG_TYPE_ERROR, "Expected an equal number of segments (%lu) and segmentStrokeIndexes (%lu)", buf, 0x16u);
      }
    }

    v93 = objc_msgSend_count(v26->_segmentContents, v75, v76, v77, v78, v79);
    if (v93 != objc_msgSend_count(v26->_segmentStrokeIndexes, v94, v95, v96, v97, v98))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v99 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v99, OS_LOG_TYPE_FAULT))
      {
        v105 = objc_msgSend_count(v26->_segmentContents, v100, v101, v102, v103, v104);
        v111 = objc_msgSend_count(v26->_segmentStrokeIndexes, v106, v107, v108, v109, v110);
        *buf = 134218240;
        v115 = v105;
        v116 = 2048;
        v117 = v111;
        _os_log_impl(&dword_18366B000, v99, OS_LOG_TYPE_FAULT, "Expected an equal number of segments (%lu) and segmentStrokeIndexes (%lu)", buf, 0x16u);
      }
    }

    v26->_numberOfNotSynthesizedCharacters = a9;
    v26->_averageDistanceBetweenElements = -1.0;
  }

  return v26;
}

- (CHSynthesisResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"content", v7, v8);
  v10 = objc_opt_class();
  v14 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"drawing", v12, v13);
  v15 = objc_opt_class();
  v19 = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(v4, v16, v15, @"segmentContents", v17, v18);
  v20 = objc_opt_class();
  v24 = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(v4, v21, v20, @"segmentStrokeIndexes", v22, v23);
  v25 = objc_opt_class();
  v29 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v26, v25, @"inventoryDebuggingStyleDrawing", v27, v28);
  v30 = objc_opt_class();
  v34 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v31, v30, @"inventoryDebuggingStyleContent", v32, v33);
  v39 = objc_msgSend_decodeIntegerForKey_(v4, v35, @"numberOfNotSynthesizedCharacters", v36, v37, v38);
  v41 = objc_msgSend_initWithContent_drawing_segmentContents_segmentStrokeIndexes_inventoryDebuggingStyleDrawing_inventoryDebuggingStyleContent_numberOfNotSynthesizedCharacters_(self, v40, v9, v14, v19, v24, v29, v34, v39);
  v42 = objc_opt_class();
  v46 = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(v4, v43, v42, @"subresults", v44, v45);
  v52 = objc_msgSend_mutableCopy(v46, v47, v48, v49, v50, v51);
  subresults = v41->_subresults;
  v41->_subresults = v52;

  v65 = 0;
  v54 = v4;
  v58 = objc_msgSend_decodeBytesForKey_returnedLength_(v54, v55, @"principalLines", &v65, v56, v57);
  if (v58)
  {
    if (v65 == 128)
    {
      engaged = v41->_principalLines.__engaged_;
      memmove(&v41->_principalLines, v58, 0x80uLL);
      if (!engaged)
      {
        v41->_principalLines.__engaged_ = 1;
      }
    }
  }

  objc_msgSend_decodeFloatForKey_(v4, v58, @"elementsDistance", v59, v60, v61);
  v41->_averageDistanceBetweenElements = v63;

  return v41;
}

- ($196E0A09E4C4E138EEBEC6372622051A)principalLines
{
  p_y = &self->var0.var0.y;
  memset(v8, 0, sizeof(v8));
  if (!LOBYTE(self[1].var0.var0.y))
  {
    p_y = v8;
  }

  v4 = *(p_y + 5);
  retstr->var2.var0 = *(p_y + 4);
  retstr->var2.var1 = v4;
  v5 = *(p_y + 7);
  retstr->var3.var0 = *(p_y + 6);
  retstr->var3.var1 = v5;
  v6 = *(p_y + 1);
  retstr->var0.var0 = *p_y;
  retstr->var0.var1 = v6;
  v7 = *(p_y + 3);
  retstr->var1.var0 = *(p_y + 2);
  retstr->var1.var1 = v7;
  return self;
}

- (void)setPrincipalLines:(id *)a3
{
  drawing = self->_drawing;
  if (drawing)
  {
    objc_msgSend_bounds(drawing, a2, a3, v3, v4, v5);
    MinX = CGRectGetMinX(v23);
    objc_msgSend_bounds(self->_drawing, v10, v11, v12, v13, v14);
    MaxX = CGRectGetMaxX(v24);
    a3->var3.var0.x = MinX;
    a3->var1.var0.x = MinX;
    a3->var0.var0.x = MinX;
    a3->var2.var0.x = MinX;
    a3->var3.var1.x = MaxX;
    a3->var1.var1.x = MaxX;
    a3->var0.var1.x = MaxX;
    a3->var2.var1.x = MaxX;
  }

  engaged = self->_principalLines.__engaged_;
  var0 = a3->var1.var0;
  var1 = a3->var1.var1;
  v19 = a3->var0.var1;
  *&self->_principalLines.var0.__null_state_ = a3->var0.var0;
  self->_principalLines.var0.base.end = var1;
  self->_principalLines.var0.base.start = var0;
  self->_principalLines.var0.descender.end = v19;
  v20 = a3->var3.var0;
  v21 = a3->var3.var1;
  v22 = a3->var2.var1;
  self->_principalLines.var0.median.start = a3->var2.var0;
  self->_principalLines.var0.top.end = v21;
  self->_principalLines.var0.top.start = v20;
  self->_principalLines.var0.median.end = v22;
  if (!engaged)
  {
    self->_principalLines.__engaged_ = 1;
  }
}

- (void)applyDesiredDistanceBetweenDigitCenters:(double)a3
{
  objc_msgSend_bounds(self->_drawing, a2, v3, v4, v5, v6);
  Height = CGRectGetHeight(v103);
  v101 = objc_alloc_init(CHDrawing);
  v20 = objc_msgSend_count(self->_segmentContents, v10, v11, v12, v13, v14);
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = Height * 0.05;
    v23 = a3 * 0.5;
    v24 = 0x8000000000000000;
    v25 = 0.0;
    v99 = 0x8000000000000000;
    MidX = 0.0;
    do
    {
      v27 = objc_msgSend_objectAtIndexedSubscript_(self->_segmentStrokeIndexes, v15, v21, v17, v18, v19, v99);
      v32 = objc_msgSend_drawingWithStrokesFromIndexSet_(self->_drawing, v28, v27, v29, v30, v31);
      v37 = objc_msgSend_objectAtIndexedSubscript_(self->_segmentContents, v33, v21, v34, v35, v36);
      objc_msgSend_bounds(v101, v38, v39, v40, v41, v42);
      MaxX = CGRectGetMaxX(v104);
      objc_msgSend_bounds(v32, v44, v45, v46, v47, v48);
      MinX = CGRectGetMinX(v105);
      v55 = objc_msgSend_ch_mathDigitsCharSet(MEMORY[0x1E696AB08], v50, v51, v52, v53, v54);
      v59 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v37, v56, v55, 1, v57, v58);
      v60 = v25 + MinX;

      if (!v59)
      {
        v68 = objc_msgSend_ch_mathDecimalSeparatorCharSet(MEMORY[0x1E696AB08], v61, v62, v63, v64, v65);
        v72 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v37, v69, v68, 1, v70, v71);

        if (v72 && v21 - 1 == v24 && (v62 = v21 + 1, v21 + 1 < v20) && (objc_msgSend_objectAtIndexedSubscript_(self->_segmentContents, v61, v62, v63, v64, v65), v73 = objc_claimAutoreleasedReturnValue(), objc_msgSend_ch_mathDigitsCharSet(MEMORY[0x1E696AB08], v74, v75, v76, v77, v78), v79 = objc_claimAutoreleasedReturnValue(), v83 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v73, v80, v79, 1, v81, v82), v79, v73, v83))
        {
          objc_msgSend_bounds(v32, v61, v62, v63, v64, v65);
          v85 = MaxX + fmax(v23 + MidX - MaxX + v84 * -0.5, v22);
          v100 = v21;
        }

        else
        {
          v85 = v60;
        }

        goto LABEL_17;
      }

      if (v21 - 1 == v24)
      {
        objc_msgSend_bounds(v32, v61, v62, v63, v64, v65);
        v67 = fmax(MidX + a3 - MaxX + v66 * -0.5, 0.0);
      }

      else
      {
        if (v21 - 2 != v24 || v21 - 1 != v100)
        {
          v85 = v60;
          v24 = v21;
          goto LABEL_17;
        }

        objc_msgSend_bounds(v32, v61, v62, v63, v64, v65);
        v67 = fmax(v23 + MidX - MaxX + v86 * -0.5, v22);
      }

      v85 = MaxX + v67;
      v24 = v21;
LABEL_17:
      v25 = v25 + v85 - v60;
      v87 = objc_msgSend_drawingTransformedWithTranslation_scaleFactor_(v32, v61, v62, v63, v64, v65, v25, 0.0, 1.0, v100);

      objc_msgSend_bounds(v87, v88, v89, v90, v91, v92);
      MidX = CGRectGetMidX(v106);
      objc_msgSend_appendDrawing_(v101, v93, v87, v94, v95, v96);

      ++v21;
    }

    while (v20 != v21);
  }

  v97 = objc_msgSend_copy(v101, v15, v16, v17, v18, v19);
  drawing = self->_drawing;
  self->_drawing = v97;
}

- (void)scaleDrawingWithWidth:(double)a3 height:(double)a4 desiredDistanceBetweenDigitCenters:(double)a5
{
  v256 = *MEMORY[0x1E69E9840];
  drawing = self->_drawing;
  if (drawing)
  {
    v10 = drawing;
    v16 = v10;
    v224 = 0u;
    end = 0;
    engaged = self->_principalLines.__engaged_;
    start = 0;
    v230 = 0;
    v232 = 0;
    v234 = 0;
    v236 = 0;
    v238 = 0;
    if (engaged)
    {
      v224 = *&self->_principalLines.var0.__null_state_;
      end = self->_principalLines.var0.descender.end;
      start = self->_principalLines.var0.base.start;
      v230 = self->_principalLines.var0.base.end;
      v232 = self->_principalLines.var0.median.start;
      v234 = self->_principalLines.var0.median.end;
      v236 = self->_principalLines.var0.top.start;
      v238 = self->_principalLines.var0.top.end;
    }

    objc_msgSend_bounds(v10, v11, v12, v13, v14, v15);
    v19 = v18;
    objc_msgSend_bounds(v16, v20, v21, v22, v23, v24);
    if (v19 < 0.001 || v30 < 0.001 || a3 < 0.001 && a4 < 0.001)
    {
      goto LABEL_40;
    }

    v31 = a3 / v19;
    v32 = a4 / v30;
    if (a3 < 0.001 || a4 < 0.001)
    {
      if (a3 < 0.001)
      {
        if (a4 >= 0.001)
        {
          objc_msgSend_bounds(v16, v25, v26, v27, v28, v29);
          v105 = v104;
          objc_msgSend_bounds(v16, v106, v107, v108, v109, v110);
          v117 = objc_msgSend_drawingTransformedWithTranslation_scaleFactor_(v16, v112, v113, v114, v115, v116, -v105, -v111, v32);
          v118 = self->_drawing;
          self->_drawing = v117;

          if (engaged)
          {
            v240 = v224;
            v241 = end;
            v242 = start;
            v243 = v230;
            v244 = v232;
            v245 = v234;
            v246 = v236;
            v247 = v238;
            objc_msgSend_bounds(v16, v119, v120, v121, v122, v123);
            v125 = v124;
            objc_msgSend_bounds(v16, v126, v127, v128, v129, v130);
            v131.f64[0] = 1.0 / v32;
            v132.f64[0] = v125;
            sub_1838D1528(buf, &v240, v132, v133, v131, 1.0 / v32);
            v134 = v253;
            self->_principalLines.var0.median.start = v252;
            self->_principalLines.var0.median.end = v134;
            v135 = v255;
            self->_principalLines.var0.top.start = v254;
            self->_principalLines.var0.top.end = v135;
            v136 = v249;
            *&self->_principalLines.var0.__null_state_ = *buf;
            self->_principalLines.var0.descender.end = v136;
            v137 = v251;
            self->_principalLines.var0.base.start = v250;
            v138 = self->_principalLines.__engaged_;
            self->_principalLines.var0.base.end = v137;
            if (!v138)
            {
              self->_principalLines.__engaged_ = 1;
            }
          }

          if (a5 > 0.0)
          {
            objc_msgSend_applyDesiredDistanceBetweenDigitCenters_(self, v119, v120, v121, v122, v123, a5);
          }
        }
      }

      else
      {
        objc_msgSend_bounds(v16, v25, v26, v27, v28, v29);
        v70 = v69;
        objc_msgSend_bounds(v16, v71, v72, v73, v74, v75);
        v82 = objc_msgSend_drawingTransformedWithTranslation_scaleFactor_(v16, v77, v78, v79, v80, v81, -v70, -v76, v31);
        v83 = self->_drawing;
        self->_drawing = v82;

        if (engaged)
        {
          v240 = v224;
          v241 = end;
          v242 = start;
          v243 = v230;
          v244 = v232;
          v245 = v234;
          v246 = v236;
          v247 = v238;
          objc_msgSend_bounds(v16, v84, v85, v86, v87, v88);
          v90 = v89;
          objc_msgSend_bounds(v16, v91, v92, v93, v94, v95);
          v96.f64[0] = 1.0 / v31;
          v97.f64[0] = v90;
          sub_1838D1528(buf, &v240, v97, v98, v96, 1.0 / v31);
          v99 = v253;
          self->_principalLines.var0.median.start = v252;
          self->_principalLines.var0.median.end = v99;
          v100 = v255;
          self->_principalLines.var0.top.start = v254;
          self->_principalLines.var0.top.end = v100;
          v101 = v249;
          *&self->_principalLines.var0.__null_state_ = *buf;
          self->_principalLines.var0.descender.end = v101;
          v102 = v251;
          self->_principalLines.var0.base.start = v250;
          v103 = self->_principalLines.__engaged_;
          self->_principalLines.var0.base.end = v102;
          if (!v103)
          {
            self->_principalLines.__engaged_ = 1;
          }
        }
      }

      goto LABEL_40;
    }

    if (v32 <= v31)
    {
      objc_msgSend_bounds(v16, v25, v26, v27, v28, v29);
      v223 = v139;
      objc_msgSend_bounds(v16, v140, v141, v142, v143, v144);
      v221 = v151;
      v152 = 1.0;
      if (1.0 / v32 != 0.0)
      {
        v152 = 1.0 / v32;
      }

      objc_msgSend_bounds(v16, v145, v146, v147, v148, v149, *&v152, v150);
      v154 = v153;
      objc_msgSend_bounds(v16, v155, v156, v157, v158, v159);
      v166 = objc_msgSend_drawingTransformedWithTranslation_scaleFactor_(v16, v161, v162, v163, v164, v165, -v154, -v160, v32);

      objc_msgSend_bounds(v166, v167, v168, v169, v170, v171);
      v178 = a3 - v177;
      if (a3 - v177 < 0.0)
      {
        v215 = sub_183761FE4(9);
        if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = v178;
          _os_log_impl(&dword_18366B000, v215, OS_LOG_TYPE_ERROR, "Synthesizer: Error in scaleDrawingFromResult: needToAddSpaces=%f < 0", buf, 0xCu);
        }

        v16 = v166;
        goto LABEL_40;
      }

      v179 = objc_msgSend_count(self->_segmentContents, v172, v173, v174, v175, v176);
      v180.f64[0] = v223;
      v180.f64[1] = v221;
      v181 = vdupq_lane_s64(v219, 0);
      v225 = vdivq_f64(vsubq_f64(v224, v180), v181);
      v227 = vdivq_f64(vsubq_f64(end, v180), v181);
      v229 = vdivq_f64(vsubq_f64(start, v180), v181);
      v231 = vdivq_f64(vsubq_f64(v230, v180), v181);
      v233 = vdivq_f64(vsubq_f64(v232, v180), v181);
      v235 = vdivq_f64(vsubq_f64(v234, v180), v181);
      v237 = vdivq_f64(vsubq_f64(v236, v180), v181);
      v239 = vdivq_f64(vsubq_f64(v238, v180), v181);
      if (v179 < 2)
      {
        v16 = v166;
        if (!engaged)
        {
LABEL_39:
          v216 = objc_msgSend_copy(v16, v63, v64, v65, v66, v67);
          v217 = self->_drawing;
          self->_drawing = v216;

LABEL_40:
          return;
        }
      }

      else
      {
        v187 = objc_alloc_init(CHDrawing);
        v188 = 0;
        v189 = 0.0;
        while (v188 < objc_msgSend_count(self->_segmentContents, v182, v183, v184, v185, v186))
        {
          v194 = objc_msgSend_objectAtIndexedSubscript_(self->_segmentStrokeIndexes, v190, v188, v191, v192, v193);
          v199 = objc_msgSend_drawingWithStrokesFromIndexSet_(v166, v195, v194, v196, v197, v198);
          v205 = objc_msgSend_drawingTransformedWithTranslation_scaleFactor_(v199, v200, v201, v202, v203, v204, v189, 0.0, 1.0);
          objc_msgSend_appendDrawing_(v187, v206, v205, v207, v208, v209);

          v189 = v189 + v178 / (objc_msgSend_count(self->_segmentContents, v210, v211, v212, v213, v214) - 1);
          ++v188;
        }

        v16 = v187;
        if (!engaged)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      objc_msgSend_bounds(v16, v25, v26, v27, v28, v29);
      v222 = v33;
      objc_msgSend_bounds(v16, v34, v35, v36, v37, v38);
      v220 = v45;
      v46 = 1.0;
      if (1.0 / v31 != 0.0)
      {
        v46 = 1.0 / v31;
      }

      objc_msgSend_bounds(v16, v39, v40, v41, v42, v43, *&v46, v44);
      v48 = v47;
      objc_msgSend_bounds(v16, v49, v50, v51, v52, v53);
      v60 = objc_msgSend_drawingTransformedWithTranslation_scaleFactor_(v16, v55, v56, v57, v58, v59, -v48, -v54, v31);
      v61.f64[0] = v222;
      v61.f64[1] = v220;
      v62 = vdupq_lane_s64(v218, 0);
      v225 = vdivq_f64(vsubq_f64(v224, v61), v62);
      v227 = vdivq_f64(vsubq_f64(end, v61), v62);
      v229 = vdivq_f64(vsubq_f64(start, v61), v62);
      v231 = vdivq_f64(vsubq_f64(v230, v61), v62);
      v233 = vdivq_f64(vsubq_f64(v232, v61), v62);
      v235 = vdivq_f64(vsubq_f64(v234, v61), v62);
      v237 = vdivq_f64(vsubq_f64(v236, v61), v62);
      v239 = vdivq_f64(vsubq_f64(v238, v61), v62);

      v16 = v60;
      if (!engaged)
      {
        goto LABEL_39;
      }
    }

    v68 = self->_principalLines.__engaged_;
    *&self->_principalLines.var0.__null_state_ = v225;
    self->_principalLines.var0.descender.end = v227;
    self->_principalLines.var0.base.start = v229;
    self->_principalLines.var0.base.end = v231;
    self->_principalLines.var0.median.start = v233;
    self->_principalLines.var0.median.end = v235;
    self->_principalLines.var0.top.start = v237;
    self->_principalLines.var0.top.end = v239;
    if (!v68)
    {
      self->_principalLines.__engaged_ = 1;
    }

    goto LABEL_39;
  }
}

- (void)resampleDrawing
{
  v43 = *MEMORY[0x1E69E9840];
  drawing = self->_drawing;
  if (drawing)
  {
    if (objc_msgSend_strokeCount(drawing, a2, v2, v3, v4, v5))
    {
      v13 = objc_msgSend_pointCount(self->_drawing, v8, v9, v10, v11, v12);
      if (v13 >= 2)
      {
        v19 = v13;
        objc_msgSend_cumulativePointToPointDistance(self->_drawing, v14, v15, v16, v17, v18);
        v21 = v20 / (v19 - 1);
        v27 = objc_msgSend_drawingResampledWithCatmullRomSplineInterpolation_(self->_drawing, v22, v23, v24, v25, v26, (v21 / 3.0));
        v28 = self->_drawing;
        self->_drawing = v27;

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v29 = qword_1EA84DC98;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v35 = objc_msgSend_pointCount(self->_drawing, v30, v31, v32, v33, v34);
          v36[0] = 67109888;
          v36[1] = v19;
          v37 = 2048;
          v38 = v21;
          v39 = 1024;
          v40 = v35;
          v41 = 2048;
          v42 = (v21 / 3.0);
          _os_log_impl(&dword_18366B000, v29, OS_LOG_TYPE_DEFAULT, "Synthesizer: resample drawing with %d points and %f average distance to %d points with sampling rate %f", v36, 0x22u);
        }
      }
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v46 = a3;
  objc_msgSend_encodeObject_forKey_(v46, v4, self->_content, @"content", v5, v6);
  objc_msgSend_encodeObject_forKey_(v46, v7, self->_drawing, @"drawing", v8, v9);
  if (self->_principalLines.__engaged_)
  {
    v13 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v10, &self->_principalLines, 128, v11, v12);
    v14 = v13;
    v20 = objc_msgSend_bytes(v14, v15, v16, v17, v18, v19);
    v26 = objc_msgSend_length(v13, v21, v22, v23, v24, v25);
    objc_msgSend_encodeBytes_length_forKey_(v46, v27, v20, v26, @"principalLines", v28);
  }

  objc_msgSend_encodeObject_forKey_(v46, v10, self->_segmentContents, @"segmentContents", v11, v12);
  objc_msgSend_encodeObject_forKey_(v46, v29, self->_segmentStrokeIndexes, @"segmentStrokeIndexes", v30, v31);
  objc_msgSend_encodeObject_forKey_(v46, v32, self->_subresults, @"subresults", v33, v34);
  if (os_variant_has_internal_diagnostics())
  {
    objc_msgSend_encodeObject_forKey_(v46, v35, self->_inventoryDebuggingStyleDrawing, @"inventoryDebuggingStyleDrawing", v36, v37);
    objc_msgSend_encodeObject_forKey_(v46, v38, self->_inventoryDebuggingStyleContent, @"inventoryDebuggingStyleContent", v39, v40);
  }

  objc_msgSend_encodeInteger_forKey_(v46, v35, self->_numberOfNotSynthesizedCharacters, @"numberOfNotSynthesizedCharacters", v36, v37);
  averageDistanceBetweenElements = self->_averageDistanceBetweenElements;
  *&averageDistanceBetweenElements = averageDistanceBetweenElements;
  objc_msgSend_encodeFloat_forKey_(v46, v42, @"elementsDistance", v43, v44, v45, averageDistanceBetweenElements);
}

- (void)append:(id)a3
{
  v109 = *MEMORY[0x1E69E9840];
  v98 = a3;
  if (!self->_subresults)
  {
    v9 = MEMORY[0x1E695DF70];
    v10 = objc_msgSend_copy(self, v4, v5, v6, v7, v8);
    v15 = objc_msgSend_arrayWithObject_(v9, v11, v10, v12, v13, v14);
    subresults = self->_subresults;
    self->_subresults = v15;

    if (self->_principalLines.__engaged_)
    {
      self->_principalLines.__engaged_ = 0;
    }
  }

  objc_msgSend_addObject_(self->_subresults, v4, v98, v6, v7, v8);
  v22 = objc_msgSend_strokeCount(self->_drawing, v17, v18, v19, v20, v21);
  drawing = self->_drawing;
  v29 = objc_msgSend_drawing(v98, v24, v25, v26, v27, v28);
  objc_msgSend_appendDrawing_(drawing, v30, v29, v31, v32, v33);

  content = self->_content;
  v40 = objc_msgSend_content(v98, v35, v36, v37, v38, v39);
  v45 = objc_msgSend_stringByAppendingFormat_(content, v41, @"%@", v42, v43, v44, v40);
  v46 = self->_content;
  self->_content = v45;

  segmentContents = self->_segmentContents;
  v53 = objc_msgSend_segmentContents(v98, v48, v49, v50, v51, v52);
  v58 = objc_msgSend_arrayByAddingObjectsFromArray_(segmentContents, v54, v53, v55, v56, v57);
  v59 = self->_segmentContents;
  self->_segmentContents = v58;

  v100 = objc_msgSend_array(MEMORY[0x1E695DF70], v60, v61, v62, v63, v64);
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v70 = objc_msgSend_segmentStrokeIndexes(v98, v65, v66, v67, v68, v69);
  obj = v70;
  v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v71, &v104, v108, 16, v72);
  if (v78)
  {
    v79 = *v105;
    do
    {
      v80 = 0;
      do
      {
        if (*v105 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v81 = *(*(&v104 + 1) + 8 * v80);
        v82 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v73, v74, v75, v76, v77);
        v101[0] = MEMORY[0x1E69E9820];
        v101[1] = 3221225472;
        v101[2] = sub_1838D1C3C;
        v101[3] = &unk_1E6DDF810;
        v83 = v82;
        v102 = v83;
        v103 = v22;
        objc_msgSend_enumerateRangesUsingBlock_(v81, v84, v101, v85, v86, v87);
        objc_msgSend_addObject_(v100, v88, v83, v89, v90, v91);

        ++v80;
      }

      while (v78 != v80);
      v70 = obj;
      v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v73, &v104, v108, 16, v77);
    }

    while (v78);
  }

  v96 = objc_msgSend_arrayByAddingObjectsFromArray_(self->_segmentStrokeIndexes, v92, v100, v93, v94, v95);
  segmentStrokeIndexes = self->_segmentStrokeIndexes;
  self->_segmentStrokeIndexes = v96;
}

- (void)enumerateSubresultsWithBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  subresults = self->_subresults;
  if (subresults)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1838D1D50;
    v12[3] = &unk_1E6DDF838;
    v13 = v4;
    objc_msgSend_enumerateObjectsUsingBlock_(subresults, v7, v12, v8, v9, v10);
  }

  else
  {
    v11 = 0;
    (*(v4 + 2))(v4, self, &v11);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHSynthesisResult alloc];
  result = objc_msgSend_initWithContent_drawing_segmentContents_segmentStrokeIndexes_inventoryDebuggingStyleDrawing_inventoryDebuggingStyleContent_numberOfNotSynthesizedCharacters_(v4, v5, self->_content, self->_drawing, self->_segmentContents, self->_segmentStrokeIndexes, self->_inventoryDebuggingStyleDrawing, self->_inventoryDebuggingStyleContent, self->_numberOfNotSynthesizedCharacters);
  if (self->_principalLines.__engaged_)
  {
    end = self->_principalLines.var0.median.end;
    v16[4] = self->_principalLines.var0.median.start;
    v16[5] = end;
    v12 = self->_principalLines.var0.top.end;
    v16[6] = self->_principalLines.var0.top.start;
    v16[7] = v12;
    v13 = self->_principalLines.var0.descender.end;
    v16[0] = *&self->_principalLines.var0.__null_state_;
    v16[1] = v13;
    v14 = self->_principalLines.var0.base.end;
    v16[2] = self->_principalLines.var0.base.start;
    v16[3] = v14;
    v15 = result;
    objc_msgSend_setPrincipalLines_(result, v7, v16, v8, v9, v10);
    return v15;
  }

  return result;
}

- (void)alignProportionsAndPositionsToDrawing:(id)a3 allowAnisotropicScaling:(BOOL)a4
{
  v133 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12 = v6;
  if (v6)
  {
    if (self->_drawing)
    {
      objc_msgSend_bounds(v6, v7, v8, v9, v10, v11);
      rect = v13;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      objc_msgSend_bounds(self->_drawing, v20, v21, v22, v23, v24);
      x = v134.origin.x;
      y = v134.origin.y;
      width = v134.size.width;
      height = v134.size.height;
      if (CGRectGetWidth(v134) >= 0.001)
      {
        v135.origin.x = x;
        v135.origin.y = y;
        v135.size.width = width;
        v135.size.height = height;
        if (CGRectGetHeight(v135) >= 0.001)
        {
          v136.origin.x = rect;
          v136.origin.y = v15;
          v136.size.width = v17;
          v136.size.height = v19;
          v29 = CGRectGetWidth(v136);
          v137.origin.x = x;
          v137.origin.y = y;
          v137.size.width = width;
          v137.size.height = height;
          v122 = CGRectGetWidth(v137);
          v138.origin.x = rect;
          v138.origin.y = v15;
          v138.size.width = v17;
          v138.size.height = v19;
          v30 = CGRectGetHeight(v138);
          v139.origin.x = x;
          v139.origin.y = y;
          v139.size.width = width;
          v139.size.height = height;
          v31 = CGRectGetHeight(v139);
          v32 = v30 / v31;
          if (a4)
          {
            if (v29 / v122 <= v32)
            {
              v33 = v30 / v31;
            }

            else
            {
              v33 = v29 / v122;
            }

            v34 = v33 * 0.5;
            if (v34 <= v29 / v122)
            {
              v35 = v29 / v122;
            }

            else
            {
              v35 = v34;
            }

            if (v34 > v32)
            {
              v32 = v34;
            }
          }

          else
          {
            v35 = v30 / v31;
          }

          v36 = MEMORY[0x1E695EFD0];
          v37 = *(MEMORY[0x1E695EFD0] + 16);
          *&v125.a = *MEMORY[0x1E695EFD0];
          *&v125.c = v37;
          *&v125.tx = *(MEMORY[0x1E695EFD0] + 32);
          *v126 = *&v125.a;
          *&v126[16] = v37;
          *&v126[32] = *&v125.tx;
          CGAffineTransformScale(&v125, v126, v35, v32);
          drawing = self->_drawing;
          *v126 = v125;
          v43 = objc_msgSend_newDrawingWithAffineTransform_(drawing, v39, v126, v40, v41, v42);
          v44 = self->_drawing;
          self->_drawing = v43;

          v45 = v36[1];
          *&v125.a = *v36;
          *&v125.c = v45;
          *&v125.tx = v36[2];
          *&rect_8.a = *&v125.a;
          *&rect_8.c = v45;
          *&rect_8.tx = *&v125.tx;
          objc_msgSend_bounds(self->_drawing, v46, v47, v48, v49, v50);
          v52 = v51;
          objc_msgSend_bounds(self->_drawing, v53, v54, v55, v56, v57);
          CGAffineTransformTranslate(v126, &rect_8, rect - v52, v15 - v58);
          v125 = *v126;
          v63 = objc_msgSend_newDrawingWithAffineTransform_(self->_drawing, v59, v126, v60, v61, v62);
          v64 = self->_drawing;
          self->_drawing = v63;

          averageDistanceBetweenElements = self->_averageDistanceBetweenElements;
          if (averageDistanceBetweenElements > 0.0)
          {
            self->_averageDistanceBetweenElements = v35 * averageDistanceBetweenElements;
          }

          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v66 = qword_1EA84DC98;
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
          {
            objc_msgSend_bounds(self->_drawing, v67, v68, v69, v70, v71);
            v73 = v72;
            objc_msgSend_bounds(self->_drawing, v74, v75, v76, v77, v78);
            v80 = v79;
            objc_msgSend_bounds(self->_drawing, v81, v82, v83, v84, v85);
            v87 = v86;
            objc_msgSend_bounds(self->_drawing, v88, v89, v90, v91, v92);
            v94 = v93;
            objc_msgSend_bounds(v12, v95, v96, v97, v98, v99);
            v101 = v100;
            objc_msgSend_bounds(v12, v102, v103, v104, v105, v106);
            v108 = v107;
            objc_msgSend_bounds(v12, v109, v110, v111, v112, v113);
            v115 = v114;
            objc_msgSend_bounds(v12, v116, v117, v118, v119, v120);
            *v126 = 134219776;
            *&v126[4] = v73;
            *&v126[12] = 2048;
            *&v126[14] = v80;
            *&v126[22] = 2048;
            *&v126[24] = v87;
            *&v126[32] = 2048;
            *&v126[34] = v94;
            *&v126[42] = 2048;
            *&v126[44] = v101;
            v127 = 2048;
            v128 = v108;
            v129 = 2048;
            v130 = v115;
            v131 = 2048;
            v132 = v121;
            _os_log_impl(&dword_18366B000, v66, OS_LOG_TYPE_DEBUG, "Synthesizer: alignProportionsAndPositions result: drawing origins %f %f, sizes %f %f, initial origins %f %f, suzes %f %f", v126, 0x52u);
          }
        }
      }
    }
  }
}

- (void)alignAlphaShapesToDrawing:(id)a3 allowAnisotropicScaling:(BOOL)a4
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = a3;
  sub_1838D25F0(&v6, self->_drawing);
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 136) = 0;
  return self;
}

@end