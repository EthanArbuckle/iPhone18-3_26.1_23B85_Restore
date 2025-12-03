@interface CHTransformedTextSegment
- ($196E0A09E4C4E138EEBEC6372622051A)principalLines;
- (BoundingBox)boundingBox;
- (CGAffineTransform)transform;
- (CGPoint)anchorPoint;
- (CGPoint)insertionPoint;
- (CHTransformedTextSegment)initWithStrokes:(id)strokes tokens:(id)tokens locale:(id)locale strokeClassification:(int64_t)classification principalLines:(id *)lines principalPoints:(id)points transform:(CGAffineTransform *)transform;
- (CHTransformedTextSegment)initWithStrokes:(id)strokes tokens:(id)tokens points:(const void *)points strokePoints:(const void *)strokePoints locale:(id)locale strokeClassification:(int64_t)classification principalLines:(id *)lines principalPoints:(id)self0 transform:(CGAffineTransform *)self1;
- (double)lineHeight;
- (double)orientation;
- (id).cxx_construct;
- (id)splitIntoTokens;
- (id)string;
- (id)textSize;
- (id)tokenDistanceSizes:(BOOL)sizes;
- (id)tokenSupportRangeForTokenIndex:(int64_t)index supportStrokes:(id *)strokes;
- (vector<CGPoint,)clippedPoints:(CHTransformedTextSegment *)self min:(SEL)min max:(CGSize)max;
- (vector<CGPoint,)filteredPoints:(CHTransformedTextSegment *)self;
- (vector<CGPoint,)points;
- (vector<std::vector<CGPoint>,)strokePoints;
- (void)addSupportStroke:(id)stroke;
- (void)addSupportStroke:(id)stroke tokenRange:(_NSRange)range;
- (void)addTransform:(CGAffineTransform *)transform;
- (void)mergeTransformedText:(id)text;
@end

@implementation CHTransformedTextSegment

- (CHTransformedTextSegment)initWithStrokes:(id)strokes tokens:(id)tokens locale:(id)locale strokeClassification:(int64_t)classification principalLines:(id *)lines principalPoints:(id)points transform:(CGAffineTransform *)transform
{
  strokesCopy = strokes;
  tokensCopy = tokens;
  localeCopy = locale;
  pointsCopy = points;
  v24 = objc_msgSend_init(self, v19, v20, v21, v22, v23);
  v25 = v24;
  if (v24)
  {
    objc_storeStrong((v24 + 224), strokes);
    objc_storeStrong((v25 + 232), tokens);
    objc_storeStrong((v25 + 256), locale);
    *(v25 + 264) = classification;
    var0 = lines->var0.var0;
    var1 = lines->var0.var1;
    v28 = lines->var1.var0;
    *(v25 + 56) = lines->var1.var1;
    *(v25 + 40) = v28;
    *(v25 + 24) = var1;
    *(v25 + 8) = var0;
    v29 = lines->var2.var0;
    v30 = lines->var2.var1;
    v31 = lines->var3.var0;
    *(v25 + 120) = lines->var3.var1;
    *(v25 + 104) = v31;
    *(v25 + 88) = v30;
    *(v25 + 72) = v29;
    objc_storeStrong((v25 + 136), points);
    v32 = *&transform->a;
    v33 = *&transform->tx;
    *(v25 + 288) = *&transform->c;
    *(v25 + 304) = v33;
    *(v25 + 272) = v32;
    v34 = *(v25 + 240);
    v35 = MEMORY[0x1E695E0F0];
    *(v25 + 240) = MEMORY[0x1E695E0F0];

    v36 = *(v25 + 248);
    *(v25 + 248) = v35;

    v38 = (v25 + 176);
    v37 = *(v25 + 176);
    if (v37)
    {
      *(v25 + 184) = v37;
      operator delete(v37);
      *v38 = 0;
      *(v25 + 184) = 0;
      *(v25 + 192) = 0;
    }

    v39 = (v25 + 200);
    v40 = *(v25 + 200);
    *v38 = 0;
    *(v25 + 184) = 0;
    *(v25 + 192) = 0;
    if (v40)
    {
      v41 = *(v25 + 208);
      v42 = v40;
      if (v41 != v40)
      {
        v43 = *(v25 + 208);
        do
        {
          v45 = *(v43 - 3);
          v43 -= 24;
          v44 = v45;
          if (v45)
          {
            *(v41 - 2) = v44;
            operator delete(v44);
          }

          v41 = v43;
        }

        while (v43 != v40);
        v42 = *v39;
      }

      *(v25 + 208) = v40;
      operator delete(v42);
      *v39 = 0;
      *(v25 + 208) = 0;
      *(v25 + 216) = 0;
    }

    *v39 = 0;
    *(v25 + 208) = 0;
    *(v25 + 216) = 0;
    v46 = MEMORY[0x1E695F058];
    MinX = CGRectGetMinX(*MEMORY[0x1E695F058]);
    MaxX = CGRectGetMaxX(*v46);
    MinY = CGRectGetMinY(*v46);
    MaxY = CGRectGetMaxY(*v46);
    *(v25 + 144) = MinX;
    *(v25 + 152) = MaxX;
    *(v25 + 160) = MinY;
    *(v25 + 168) = MaxY;
  }

  return v25;
}

- (CHTransformedTextSegment)initWithStrokes:(id)strokes tokens:(id)tokens points:(const void *)points strokePoints:(const void *)strokePoints locale:(id)locale strokeClassification:(int64_t)classification principalLines:(id *)lines principalPoints:(id)self0 transform:(CGAffineTransform *)self1
{
  strokesCopy = strokes;
  tokensCopy = tokens;
  localeCopy = locale;
  principalPointsCopy = principalPoints;
  var1 = lines->var2.var1;
  v46[4] = lines->var2.var0;
  v46[5] = var1;
  v22 = lines->var3.var1;
  v46[6] = lines->var3.var0;
  v46[7] = v22;
  v23 = lines->var0.var1;
  v46[0] = lines->var0.var0;
  v46[1] = v23;
  v24 = lines->var1.var1;
  v46[2] = lines->var1.var0;
  v46[3] = v24;
  v25 = *&transform->c;
  v45[0] = *&transform->a;
  v45[1] = v25;
  v45[2] = *&transform->tx;
  v27 = objc_msgSend_initWithStrokes_tokens_locale_strokeClassification_principalLines_principalPoints_transform_(self, v26, strokesCopy, tokensCopy, localeCopy, classification, v46, principalPointsCopy, v45);
  v28 = v27;
  if (v27)
  {
    v29 = (v27 + 176);
    if ((v28 + 176) != points)
    {
      sub_18374AA38(v29, *points, *(points + 1), (*(points + 1) - *points) >> 4);
    }

    if ((v28 + 200) != strokePoints)
    {
      sub_183821D0C((v28 + 200), *strokePoints, *(strokePoints + 1), 0xAAAAAAAAAAAAAAABLL * ((*(strokePoints + 1) - *strokePoints) >> 3));
    }

    v30 = *(v28 + 176);
    v31 = *(v28 + 184);
    if (v30 == v31)
    {
      v34 = xmmword_1839CE920;
      v35 = xmmword_1839CE920;
    }

    else
    {
      v32 = xmmword_1839CE920;
      v33 = xmmword_1839CE920;
      v34 = xmmword_1839CE920;
      v35 = xmmword_1839CE920;
      do
      {
        v36 = *v30++;
        v37 = vdupq_lane_s64(v36.i64[0], 0);
        v38 = vdupq_laneq_s64(v36, 1);
        v39 = vmovn_s32(vuzp1q_s32(vcgtq_f64(v32, v37), vcgtq_f64(v33, v38)));
        v40 = vmovn_s32(vuzp1q_s32(vcgtq_f64(v37, v32), vcgtq_f64(v38, v33)));
        v41.i64[0] = v39.u16[2];
        v41.i64[1] = v40.u16[3];
        v42 = vcltzq_s64(vshlq_n_s64(v41, 0x3FuLL));
        v35 = vbslq_s8(v42, v38, v35);
        v41.i64[0] = v39.u16[0];
        v41.i64[1] = v40.u16[1];
        v43 = vcltzq_s64(vshlq_n_s64(v41, 0x3FuLL));
        v34 = vbslq_s8(v43, v37, v34);
        v33 = vbslq_s8(v42, v38, v33);
        v32 = vbslq_s8(v43, v37, v32);
      }

      while (v30 != v31);
    }

    *(v28 + 144) = v34;
    *(v28 + 160) = v35;
  }

  return v28;
}

- (void)addTransform:(CGAffineTransform *)transform
{
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  sub_1838CA7E4(&self->_principalLines.descender.start.x, &transform->a, &v69.x);
  v5 = v74;
  self->_principalLines.median.start = v73;
  self->_principalLines.median.end = v5;
  v6 = v76;
  self->_principalLines.top.start = v75;
  self->_principalLines.top.end = v6;
  v7 = v70;
  self->_principalLines.descender.start = v69;
  self->_principalLines.descender.end = v7;
  v8 = v72;
  self->_principalLines.base.start = v71;
  self->_principalLines.base.end = v8;
  objc_msgSend_points(self, v9, v10, v11, v12, v13);
  sub_1838CA648(&__p, transform, &v63);
  begin = self->_points.__begin_;
  if (begin)
  {
    self->_points.__end_ = begin;
    operator delete(begin);
    self->_points.__begin_ = 0;
    self->_points.__end_ = 0;
    self->_points.__cap_ = 0;
  }

  *&self->_points.__begin_ = *&v63.a;
  self->_points.__cap_ = *&v63.c;
  memset(&v63, 0, 24);
  if (*&__p.a)
  {
    __p.b = __p.a;
    operator delete(*&__p.a);
  }

  objc_msgSend_strokePoints(self, v14, v15, v16, v17, v18);
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v20 = v67;
  if (v68 != v67)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      sub_1838CA648(&v20[v21], transform, &v63);
      v24 = v65;
      if (v65 < v66)
      {
        *v65 = 0;
        v24[1] = 0;
        v24[2] = 0;
        *v24 = *&v63.a;
        v24[2] = *&v63.c;
        v23 = v24 + 3;
      }

      else
      {
        v25 = v64;
        v26 = v65 - v64;
        v27 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v64) >> 3);
        v28 = v27 + 1;
        if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_18368964C();
        }

        if (0x5555555555555556 * ((v66 - v64) >> 3) > v28)
        {
          v28 = 0x5555555555555556 * ((v66 - v64) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v66 - v64) >> 3) >= 0x555555555555555)
        {
          v29 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v29 = v28;
        }

        if (v29)
        {
          if (v29 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_183688F00();
        }

        v30 = 8 * ((v65 - v64) >> 3);
        *v30 = *&v63.a;
        *(v30 + 16) = v63.c;
        memset(&v63, 0, 24);
        v23 = (24 * v27 + 24);
        v31 = (24 * v27 - v26);
        memcpy((v30 - v26), v25, v26);
        v64 = v31;
        v65 = v23;
        v66 = 0;
        if (v25)
        {
          operator delete(v25);
          v65 = v23;
          if (*&v63.a)
          {
            v63.b = v63.a;
            operator delete(*&v63.a);
          }

          goto LABEL_9;
        }
      }

      v65 = v23;
LABEL_9:
      ++v22;
      v20 = v67;
      v21 += 24;
    }

    while (v22 < 0xAAAAAAAAAAAAAAABLL * ((v68 - v67) >> 3));
  }

  if (&self->_strokePoints != &v64)
  {
    sub_183821D0C(&self->_strokePoints, v64, v65, 0xAAAAAAAAAAAAAAABLL * ((v65 - v64) >> 3));
  }

  v32 = self->_points.__begin_;
  end = self->_points.__end_;
  if (v32 == end)
  {
    v36 = xmmword_1839CE920;
    v37 = xmmword_1839CE920;
  }

  else
  {
    v34 = xmmword_1839CE920;
    v35 = xmmword_1839CE920;
    v36 = xmmword_1839CE920;
    v37 = xmmword_1839CE920;
    do
    {
      v38 = *v32++;
      v39 = vdupq_lane_s64(v38.i64[0], 0);
      v40 = vdupq_laneq_s64(v38, 1);
      v41 = vmovn_s32(vuzp1q_s32(vcgtq_f64(v34, v39), vcgtq_f64(v35, v40)));
      v42 = vmovn_s32(vuzp1q_s32(vcgtq_f64(v39, v34), vcgtq_f64(v40, v35)));
      v43.i64[0] = v41.u16[2];
      v43.i64[1] = v42.u16[3];
      v44 = vcltzq_s64(vshlq_n_s64(v43, 0x3FuLL));
      v37 = vbslq_s8(v44, v40, v37);
      v43.i64[0] = v41.u16[0];
      v43.i64[1] = v42.u16[1];
      v45 = vcltzq_s64(vshlq_n_s64(v43, 0x3FuLL));
      v36 = vbslq_s8(v45, v39, v36);
      v35 = vbslq_s8(v44, v40, v35);
      v34 = vbslq_s8(v45, v39, v34);
    }

    while (v32 != end);
  }

  *&self->_boundingBox.x_min = v36;
  *&self->_boundingBox.y_min = v37;
  v46 = *&self->_transform.c;
  *&__p.a = *&self->_transform.a;
  *&__p.c = v46;
  *&__p.tx = *&self->_transform.tx;
  v47 = *&transform->c;
  *&v61.a = *&transform->a;
  *&v61.c = v47;
  *&v61.tx = *&transform->tx;
  CGAffineTransformConcat(&v63, &__p, &v61);
  v48 = *&v63.c;
  *&self->_transform.a = *&v63.a;
  *&self->_transform.c = v48;
  *&self->_transform.tx = *&v63.tx;
  v49 = v64;
  if (v64)
  {
    v50 = v65;
    v51 = v64;
    if (v65 != v64)
    {
      v52 = v65;
      do
      {
        v54 = *(v52 - 3);
        v52 -= 3;
        v53 = v54;
        if (v54)
        {
          *(v50 - 2) = v53;
          operator delete(v53);
        }

        v50 = v52;
      }

      while (v52 != v49);
      v51 = v64;
    }

    v65 = v49;
    operator delete(v51);
  }

  v55 = v67;
  if (v67)
  {
    v56 = v68;
    v57 = v67;
    if (v68 != v67)
    {
      v58 = v68;
      do
      {
        v60 = *(v58 - 3);
        v58 -= 24;
        v59 = v60;
        if (v60)
        {
          *(v56 - 2) = v59;
          operator delete(v59);
        }

        v56 = v58;
      }

      while (v58 != v55);
      v57 = v67;
    }

    v68 = v55;
    operator delete(v57);
  }
}

- (void)addSupportStroke:(id)stroke
{
  strokeCopy = stroke;
  if (objc_msgSend_count(self->_tokens, v4, v5, v6, v7, v8) == 1)
  {
    objc_msgSend_addSupportStroke_tokenRange_(self, v9, strokeCopy, 0, 1, v13);
  }

  else
  {
    objc_msgSend_bounds(strokeCopy, v9, v10, v11, v12, v13);
    v89 = v14;
    v90 = v15;
    rect = v16;
    v18 = v17;
    v29 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v19, v20, v21, v22, v23);
    for (i = 0; i < objc_msgSend_count(self->_tokens, v24, v25, v26, v27, v28); ++i)
    {
      v36 = objc_msgSend_objectAtIndexedSubscript_(self->_tokens, v31, i, v33, v34, v35);
      textStrokes = self->_textStrokes;
      v43 = objc_msgSend_strokeIndexes(v36, v38, v39, v40, v41, v42);
      v48 = objc_msgSend_objectsAtIndexes_(textStrokes, v44, v43, v45, v46, v47);

      objc_msgSend_boundsForStrokes_(CHStrokeUtilities, v49, v48, v50, v51, v52);
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v92.origin.x = v18;
      v92.origin.y = v89;
      v92.size.width = v90;
      v92.size.height = rect;
      MaxX = CGRectGetMaxX(v92);
      v93.origin.x = v54;
      v93.origin.y = v56;
      v93.size.width = v58;
      v93.size.height = v60;
      v66 = fmin(MaxX, CGRectGetMaxX(v93)) - fmax(v18, v54);
      if (v66 / (v58 + 1.0e-10) > 0.2 || v66 / (v90 + 1.0e-10) > 0.2)
      {
        objc_msgSend_addIndex_(v29, v62, i, v63, v64, v65);
      }
    }

    if (objc_msgSend_count(v29, v31, v32, v33, v34, v35))
    {
      Index = objc_msgSend_firstIndex(v29, v67, v68, v69, v70, v71);
      v78 = objc_msgSend_lastIndex(v29, v73, v74, v75, v76, v77);
      v84 = objc_msgSend_firstIndex(v29, v79, v80, v81, v82, v83);
      objc_msgSend_addSupportStroke_tokenRange_(self, v85, strokeCopy, Index, v78 - v84 + 1, v86);
    }
  }
}

- (void)addSupportStroke:(id)stroke tokenRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v35[2] = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  v12 = objc_msgSend_arrayByAddingObject_(self->_supportStrokes, v8, strokeCopy, v9, v10, v11);
  supportStrokes = self->_supportStrokes;
  self->_supportStrokes = v12;

  supportStrokeTokenRanges = self->_supportStrokeTokenRanges;
  v19 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v15, location, v16, v17, v18);
  v35[0] = v19;
  v24 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v20, length, v21, v22, v23);
  v35[1] = v24;
  v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v25, v35, 2, v26, v27);
  v33 = objc_msgSend_arrayByAddingObject_(supportStrokeTokenRanges, v29, v28, v30, v31, v32);
  v34 = self->_supportStrokeTokenRanges;
  self->_supportStrokeTokenRanges = v33;
}

- (id)tokenSupportRangeForTokenIndex:(int64_t)index supportStrokes:(id *)strokes
{
  v8 = objc_msgSend_indexSetWithIndex_(MEMORY[0x1E696AD50], a2, index, strokes, v4, v5);
  v19 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v9, v10, v11, v12, v13);
  v20 = 0;
  while (v20 != objc_msgSend_count(v8, v14, v15, v16, v17, v18))
  {
    v20 = objc_msgSend_count(v8, v21, v22, v23, v24, v25);
    for (i = 0; i < objc_msgSend_count(self->_supportStrokes, v26, v27, v28, v29, v30); ++i)
    {
      v32 = objc_msgSend_objectAtIndexedSubscript_(self->_supportStrokeTokenRanges, v14, i, v16, v17, v18);
      if ((objc_msgSend_containsIndex_(v19, v33, i, v34, v35, v36) & 1) == 0)
      {
        v41 = objc_msgSend_objectAtIndexedSubscript_(v32, v37, 0, v38, v39, v40);
        v47 = objc_msgSend_intValue(v41, v42, v43, v44, v45, v46);
        v52 = objc_msgSend_objectAtIndexedSubscript_(v32, v48, 1, v49, v50, v51);
        v58 = objc_msgSend_intValue(v52, v53, v54, v55, v56, v57);
        v62 = objc_msgSend_intersectsIndexesInRange_(v8, v59, v47, v58, v60, v61);

        if (v62)
        {
          objc_msgSend_addIndex_(v19, v63, i, v64, v65, v66);
          v71 = objc_msgSend_objectAtIndexedSubscript_(v32, v67, 0, v68, v69, v70);
          v77 = objc_msgSend_intValue(v71, v72, v73, v74, v75, v76);
          v82 = objc_msgSend_objectAtIndexedSubscript_(v32, v78, 1, v79, v80, v81);
          v88 = objc_msgSend_intValue(v82, v83, v84, v85, v86, v87);
          objc_msgSend_addIndexesInRange_(v8, v89, v77, v88, v90, v91);
        }
      }
    }
  }

  if (strokes)
  {
    v92 = v19;
    *strokes = v19;
  }

  return v8;
}

- (id)splitIntoTokens
{
  v177 = *MEMORY[0x1E69E9840];
  v126 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3, v4, v5);
  v131 = 0;
  v124 = v171;
  v125 = &v170;
  v122 = v163;
  v123 = &v162;
  v121 = v137;
  while (v131 < objc_msgSend_count(self->_tokens, v6, v7, v8, v9, v10))
  {
    v175 = 0;
    v14 = objc_msgSend_tokenSupportRangeForTokenIndex_supportStrokes_(self, v11, v131, &v175, v12, v13);
    v129 = v175;
    v130 = v14;
    v127 = objc_msgSend_count(v14, v15, v16, v17, v18, v19);
    v128 = objc_msgSend_objectsAtIndexes_(self->_tokens, v20, v14, v21, v22, v23);
    v29 = objc_msgSend_array(MEMORY[0x1E695DF70], v24, v25, v26, v27, v28);
    v133 = objc_msgSend_array(MEMORY[0x1E695DF70], v30, v31, v32, v33, v34);
    v134 = objc_msgSend_array(MEMORY[0x1E695DF70], v35, v36, v37, v38, v39);
    v167 = 0;
    v168 = &v167;
    v169 = 0x4812000000;
    v170 = sub_183812F1C;
    v171[0] = sub_183812F40;
    v171[1] = &unk_183A5AC72;
    v173 = 0;
    v174 = 0;
    v172 = 0;
    v159 = 0;
    v160 = &v159;
    v161 = 0x4812000000;
    v162 = sub_183812FD0;
    v163[0] = sub_183812FF4;
    v163[1] = &unk_183A5AC72;
    v165 = 0;
    v166 = 0;
    __p = 0;
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    obj = v128;
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v155, v176, 16, v41);
    if (v47)
    {
      v48 = *v156;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v156 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v50 = *(*(&v155 + 1) + 8 * i);
          v51 = objc_msgSend_count(v29, v42, v43, v44, v45, v46);
          v57 = objc_msgSend_strokeIndexes(v50, v52, v53, v54, v55, v56);
          v150[0] = MEMORY[0x1E69E9820];
          v150[1] = 3221225472;
          v150[2] = sub_18381300C;
          v150[3] = &unk_1E6DDEC50;
          v150[4] = self;
          v151 = v29;
          v152 = v134;
          v153 = &v167;
          v154 = &v159;
          objc_msgSend_enumerateIndexesUsingBlock_(v57, v58, v150, v59, v60, v61);

          v67 = objc_msgSend_mutableCopy(v50, v62, v63, v64, v65, v66);
          v68 = MEMORY[0x1E696AC90];
          v74 = objc_msgSend_strokeIndexes(v50, v69, v70, v71, v72, v73);
          v80 = objc_msgSend_count(v74, v75, v76, v77, v78, v79);
          v84 = objc_msgSend_indexSetWithIndexesInRange_(v68, v81, v51, v80, v82, v83);
          objc_msgSend_setStrokeIndexes_(v67, v85, v84, v86, v87, v88);

          objc_msgSend_addObject_(v133, v89, v67, v90, v91, v92);
        }

        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v42, &v155, v176, 16, v46);
      }

      while (v47);
    }

    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    sub_1838CD8C4(&self->_principalLines.descender.start.x, v160 + 6, &v142);
    v93 = [CHTransformedTextSegment alloc];
    locale = self->_locale;
    strokeClassification = self->_strokeClassification;
    v141[4] = v146;
    v141[5] = v147;
    v141[6] = v148;
    v141[7] = v149;
    v141[0] = v142;
    v141[1] = v143;
    v141[2] = v144;
    v141[3] = v145;
    v96 = *&self->_transform.c;
    v140[0] = *&self->_transform.a;
    v140[1] = v96;
    v140[2] = *&self->_transform.tx;
    v98 = objc_msgSend_initWithStrokes_tokens_points_strokePoints_locale_strokeClassification_principalLines_principalPoints_transform_(v93, v97, v29, v133, (v160 + 6), (v168 + 6), locale, strokeClassification, v141, v134, v140, v121, v122, v123, v124, v125);
    Index = objc_msgSend_firstIndex(v130, v99, v100, v101, v102, v103);
    v136[0] = MEMORY[0x1E69E9820];
    v136[1] = 3221225472;
    v137[0] = sub_1838132C4;
    v137[1] = &unk_1E6DDC5F8;
    v137[2] = self;
    v105 = v98;
    v138 = v105;
    v139 = Index;
    objc_msgSend_enumerateIndexesUsingBlock_(v129, v106, v136, v107, v108, v109);
    objc_msgSend_addObject_(v126, v110, v105, v111, v112, v113);

    _Block_object_dispose(&v159, 8);
    if (__p)
    {
      v165 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v167, 8);
    v114 = v172;
    if (v172)
    {
      v115 = v173;
      v116 = v172;
      if (v173 != v172)
      {
        v117 = v173;
        do
        {
          v119 = *(v117 - 3);
          v117 -= 24;
          v118 = v119;
          if (v119)
          {
            *(v115 - 2) = v118;
            operator delete(v118);
          }

          v115 = v117;
        }

        while (v117 != v114);
        v116 = v172;
      }

      v173 = v114;
      operator delete(v116);
    }

    v131 += v127;
  }

  return v126;
}

- (void)mergeTransformedText:(id)text
{
  v236 = *MEMORY[0x1E69E9840];
  textCopy = text;
  v9 = objc_msgSend_count(self->_textStrokes, v4, v5, v6, v7, v8);
  textStrokes = self->_textStrokes;
  v16 = objc_msgSend_textStrokes(textCopy, v11, v12, v13, v14, v15);
  v21 = objc_msgSend_arrayByAddingObjectsFromArray_(textStrokes, v17, v16, v18, v19, v20);
  v22 = self->_textStrokes;
  self->_textStrokes = v21;

  v28 = objc_msgSend_count(self->_tokens, v23, v24, v25, v26, v27);
  v230 = 0u;
  v231 = 0u;
  v228 = 0u;
  v229 = 0u;
  v34 = objc_msgSend_tokens(textCopy, v29, v30, v31, v32, v33);
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v228, v235, 16, v36);
  if (v42)
  {
    v43 = *v229;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v229 != v43)
        {
          objc_enumerationMutation(v34);
        }

        v45 = *(*(&v228 + 1) + 8 * i);
        v46 = objc_msgSend_strokeIndexes(v45, v37, v38, v39, v40, v41);
        v52 = objc_msgSend_mutableCopy(v46, v47, v48, v49, v50, v51);

        objc_msgSend_shiftIndexesStartingAtIndex_by_(v52, v53, 0, v9, v54, v55);
        v61 = objc_msgSend_mutableCopy(v45, v56, v57, v58, v59, v60);
        objc_msgSend_setStrokeIndexes_(v61, v62, v52, v63, v64, v65);
        v70 = objc_msgSend_arrayByAddingObject_(self->_tokens, v66, v61, v67, v68, v69);
        tokens = self->_tokens;
        self->_tokens = v70;
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v228, v235, 16, v41);
    }

    while (v42);
  }

  supportStrokes = self->_supportStrokes;
  v78 = objc_msgSend_supportStrokes(textCopy, v73, v74, v75, v76, v77);
  v83 = objc_msgSend_arrayByAddingObjectsFromArray_(supportStrokes, v79, v78, v80, v81, v82);
  v84 = self->_supportStrokes;
  self->_supportStrokes = v83;

  v90 = objc_msgSend_supportStrokeTokenRanges(textCopy, v85, v86, v87, v88, v89);
  v96 = objc_msgSend_mutableCopy(v90, v91, v92, v93, v94, v95);

  for (j = 0; j < objc_msgSend_count(v96, v97, v98, v99, v100, v101); ++j)
  {
    v107 = objc_msgSend_objectAtIndexedSubscript_(v96, v103, j, v104, v105, v106);
    v108 = MEMORY[0x1E696AD98];
    v113 = objc_msgSend_objectAtIndexedSubscript_(v107, v109, 0, v110, v111, v112);
    v119 = objc_msgSend_intValue(v113, v114, v115, v116, v117, v118);
    v124 = objc_msgSend_numberWithInteger_(v108, v120, v28 + v119, v121, v122, v123);
    v234[0] = v124;
    v129 = objc_msgSend_objectAtIndexedSubscript_(v107, v125, 1, v126, v127, v128);
    v234[1] = v129;
    v133 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v130, v234, 2, v131, v132);
    objc_msgSend_setObject_atIndexedSubscript_(v96, v134, v133, j, v135, v136);
  }

  v137 = objc_msgSend_arrayByAddingObjectsFromArray_(self->_supportStrokeTokenRanges, v103, v96, v104, v105, v106);
  supportStrokeTokenRanges = self->_supportStrokeTokenRanges;
  self->_supportStrokeTokenRanges = v137;

  objc_msgSend_points(self, v139, v140, v141, v142, v143);
  if (textCopy)
  {
    objc_msgSend_points(textCopy, v144, v145, v146, v147, v148);
    v149 = v223;
    v150 = v224;
  }

  else
  {
    v150 = 0;
    v149 = 0;
    v223 = 0;
    v224 = 0;
    v225 = 0;
  }

  sub_183822214(&v226, __dst, v149, v150, (v150 - v149) >> 4);
  if (&self->_points != &v226)
  {
    sub_18374AA38(&self->_points, v226, __dst, (__dst - v226) >> 4);
  }

  objc_msgSend_strokePoints(self, v151, v152, v153, v154, v155);
  if (textCopy)
  {
    objc_msgSend_strokePoints(textCopy, v156, v157, v158, v159, v160);
    v161 = __p;
    v162 = v220;
  }

  else
  {
    v162 = 0;
    v161 = 0;
    __p = 0;
    v220 = 0;
  }

  sub_1838224B4(&v221, v222, v161, v162, 0xAAAAAAAAAAAAAAABLL * ((v162 - v161) >> 3));
  if (&self->_strokePoints != &v221)
  {
    sub_183821D0C(&self->_strokePoints, v221, v222, 0xAAAAAAAAAAAAAAABLL * ((v222 - v221) >> 3));
  }

  v163 = MEMORY[0x1E695F058];
  MinX = CGRectGetMinX(*MEMORY[0x1E695F058]);
  MaxX = CGRectGetMaxX(*v163);
  MinY = CGRectGetMinY(*v163);
  MaxY = CGRectGetMaxY(*v163);
  self->_boundingBox.x_min = MinX;
  self->_boundingBox.x_max = MaxX;
  self->_boundingBox.y_min = MinY;
  self->_boundingBox.y_max = MaxY;
  x = self->_principalLines.base.start.x;
  if (textCopy)
  {
    objc_msgSend_principalLines(textCopy, v167, v168, v169, v170, v171);
    if (x < v213.x)
    {
      goto LABEL_23;
    }
  }

  else if (x < 0.0)
  {
LABEL_23:
    v174 = objc_opt_class();
    v233[0] = self;
    v233[1] = textCopy;
    v182 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v175, v233, 2, v176, v177);
    if (v174)
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v174 = objc_opt_class();
  v232[0] = textCopy;
  v232[1] = self;
  v182 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v183, v232, 2, v184, v185);
  if (v174)
  {
LABEL_27:
    objc_msgSend_principalLinesFromSegments_(v174, v178, v182, v179, v180, v181);
    goto LABEL_29;
  }

LABEL_28:
  v217 = 0;
  v218 = 0;
  v215 = 0;
  v216 = 0;
  v213 = 0;
  v214 = 0;
  v211 = 0;
  v212 = 0;
LABEL_29:
  self->_principalLines.median.start = v215;
  self->_principalLines.median.end = v216;
  self->_principalLines.top.start = v217;
  self->_principalLines.top.end = v218;
  self->_principalLines.descender.start = v211;
  self->_principalLines.descender.end = v212;
  self->_principalLines.base.start = v213;
  self->_principalLines.base.end = v214;

  principalPoints = self->_principalPoints;
  v192 = objc_msgSend_principalPoints(textCopy, v187, v188, v189, v190, v191);
  v197 = objc_msgSend_arrayByAddingObjectsFromArray_(principalPoints, v193, v192, v194, v195, v196);
  v198 = self->_principalPoints;
  self->_principalPoints = v197;

  if (__p)
  {
    v199 = v220;
    v200 = __p;
    if (v220 != __p)
    {
      v201 = v220;
      do
      {
        v203 = *(v201 - 3);
        v201 -= 3;
        v202 = v203;
        if (v203)
        {
          *(v199 - 2) = v202;
          operator delete(v202);
        }

        v199 = v201;
      }

      while (v201 != __p);
      v200 = __p;
    }

    operator delete(v200);
  }

  v204 = v221;
  if (v221)
  {
    v205 = v222;
    v206 = v221;
    if (v222 != v221)
    {
      v207 = v222;
      do
      {
        v209 = *(v207 - 3);
        v207 -= 3;
        v208 = v209;
        if (v209)
        {
          *(v205 - 2) = v208;
          operator delete(v208);
        }

        v205 = v207;
      }

      while (v207 != v204);
      v206 = v221;
    }

    v222 = v204;
    operator delete(v206);
  }

  if (v223)
  {
    v224 = v223;
    operator delete(v223);
  }

  if (v226)
  {
    __dst = v226;
    operator delete(v226);
  }
}

- (id)tokenDistanceSizes:(BOOL)sizes
{
  sizesCopy = sizes;
  v95 = *MEMORY[0x1E69E9840];
  v73 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, sizes, v3, v4, v5);
  if (objc_msgSend_count(self->_tokens, v8, v9, v10, v11, v12) >= 2)
  {
    objc_msgSend_splitIntoTokens(self, v13, v14, v15, v16, v17);
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v72 = v87 = 0u;
    v23 = objc_msgSend_firstObject(v72, v18, v19, v20, v21, v22);
    v29 = v23;
    if (v23)
    {
      objc_msgSend_principalLines(v23, v24, v25, v26, v27, v28);
    }

    else
    {
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v35 = objc_msgSend_count(v72, v30, v31, v32, v33, v34);
    v39 = objc_msgSend_subarrayWithRange_(v72, v36, 1, v35 - 1, v37, v38);
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v82, v94, 16, v41);
    if (v47)
    {
      v48 = *v83;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v83 != v48)
          {
            objc_enumerationMutation(v39);
          }

          v50 = *(*(&v82 + 1) + 8 * i);
          v51 = objc_msgSend_tokens(v50, v42, v43, v44, v45, v46);
          v57 = objc_msgSend_firstObject(v51, v52, v53, v54, v55, v56);
          v63 = objc_msgSend_properties(v57, v58, v59, v60, v61, v62);

          if (!sizesCopy || (v63 & 0x20) != 0)
          {
            if (v50)
            {
              objc_msgSend_principalLines(v50, v42, v43, v44, v45, v46);
              v64 = *(&v76 + 1);
              v65 = *&v76;
            }

            else
            {
              v64 = 0.0;
              v65 = 0.0;
            }

            v66 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v42, v43, v44, v45, v46, sqrt((*(&v89 + 1) - v64) * (*(&v89 + 1) - v64) + (*&v89 - v65) * (*&v89 - v65)));
            objc_msgSend_addObject_(v73, v67, v66, v68, v69, v70);
          }

          if (v50)
          {
            objc_msgSend_principalLines(v50, v42, v43, v44, v45, v46);
          }

          else
          {
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
          }

          v90 = v78;
          v91 = v79;
          v92 = v80;
          v93 = v81;
          v86 = v74;
          v87 = v75;
          v88 = v76;
          v89 = v77;
        }

        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v42, &v82, v94, 16, v46);
      }

      while (v47);
    }
  }

  return v73;
}

- (id)string
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = self->_tokens;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v28, v32, 16, v4);
  if (v10)
  {
    v11 = *v29;
    v12 = &stru_1EF1C0318;
    do
    {
      v13 = 0;
      v14 = v12;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v2);
        }

        v15 = *(*(&v28 + 1) + 8 * v13);
        if ((objc_msgSend_properties(v15, v5, v6, v7, v8, v9, v28) & 0x20) != 0)
        {
          v21 = objc_msgSend_stringByAppendingString_(v14, v16, @" ", v18, v19, v20);

          v14 = v21;
        }

        v22 = objc_msgSend_string(v15, v16, v17, v18, v19, v20);
        v12 = objc_msgSend_stringByAppendingString_(v14, v23, v22, v24, v25, v26);

        ++v13;
        v14 = v12;
      }

      while (v10 != v13);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v28, v32, 16, v9);
    }

    while (v10);
  }

  else
  {
    v12 = &stru_1EF1C0318;
  }

  return v12;
}

- (double)lineHeight
{
  objc_msgSend_principalLines(self, a2, v2, v3, v4, v5);
  objc_msgSend_principalLines(self, v7, v8, v9, v10, v11);
  if (v27 != v23 || v28 != v24)
  {
    v13 = v29;
    v14 = v30;
    v15 = v25;
    v16 = v26;
LABEL_10:
    v19 = (v14 - v28) / (v13 - v27);
    v20 = (v16 - v24) / (v15 - v23);
    v21 = v24 - v20 * v23;
    v22 = v27;
    if (v19 != 0.0)
    {
      v22 = (v28 - -1.0 / v19 * v27 - v21) / (v20 - -1.0 / v19);
    }

    return sqrt((v28 - (v21 + v20 * v22)) * (v28 - (v21 + v20 * v22)) + (v27 - v22) * (v27 - v22));
  }

  v13 = v29;
  v14 = v30;
  v15 = v25;
  v16 = v26;
  result = 0.0;
  if (v29 != v25 || v30 != v26)
  {
    goto LABEL_10;
  }

  return result;
}

- (CGPoint)anchorPoint
{
  objc_msgSend_principalLines(self, a2, v2, v3, v4, v5);
  v7 = v21;
  v8 = v22;
  if (objc_msgSend_strokeClassification(self, v9, v10, v11, v12, v13) == 2)
  {
    objc_msgSend_principalLines(self, v14, v15, v16, v17, v18);
    v7 = v23;
    v8 = v24;
  }

  v19 = v7;
  v20 = v8;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGPoint)insertionPoint
{
  objc_msgSend_principalLines(self, a2, v2, v3, v4, v5);
  v7 = v23;
  v8 = v24;
  if (objc_msgSend_strokeClassification(self, v9, v10, v11, v12, v13) == 2)
  {
    objc_msgSend_principalLines(self, v14, v15, v16, v17, v18);
    v7 = v21;
    v8 = v22;
  }

  v19 = v7;
  v20 = v8;
  result.y = v20;
  result.x = v19;
  return result;
}

- (double)orientation
{
  objc_msgSend_principalLines(self, a2, v2, v3, v4, v5);
  objc_msgSend_principalLines(self, v7, v8, v9, v10, v11);
  return -atan2(v14 - v16, v13 - v15);
}

- (id)textSize
{
  v3 = objc_opt_class();
  objc_msgSend_principalLines(self, v4, v5, v6, v7, v8);
  v14 = objc_msgSend_string(self, v9, v10, v11, v12, v13);
  v18 = objc_msgSend_textSizeFromPrincipalLines_string_(v3, v15, &v20, v14, v16, v17);

  return v18;
}

- (vector<CGPoint,)points
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_points.__end_ == selfCopy->_points.__begin_)
  {
    sub_1838C3014(selfCopy->_textStrokes, v10);
    sub_1838CA648(v10, &selfCopy->_transform, &__p);
    if (&selfCopy->_points != &__p)
    {
      sub_18374AA38(&selfCopy->_points, __p, v9, (v9 - __p) >> 4);
    }

    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v10[0])
    {
      v10[1] = v10[0];
      operator delete(v10[0]);
    }
  }

  objc_sync_exit(selfCopy);

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  begin = selfCopy->_points.__begin_;
  end = selfCopy->_points.__end_;
  if (end != begin)
  {
    if (((end - begin) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  return result;
}

- (vector<std::vector<CGPoint>,)strokePoints
{
  v46 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_strokePoints = &selfCopy->_strokePoints;
  v31 = retstr;
  if (selfCopy->_strokePoints.__end_ == selfCopy->_strokePoints.__begin_)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = selfCopy->_textStrokes;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v35, v45, 16, v7);
    if (!v11)
    {
      goto LABEL_33;
    }

    v12 = *v36;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v35 + 1) + 8 * i);
        v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, &v44, 1, v9, v10);
        sub_1838C3014(v14, v34);

        sub_1838CA648(v34, &selfCopy->_transform, &__p);
        end = selfCopy->_strokePoints.__end_;
        cap = selfCopy->_strokePoints.__cap_;
        if (end >= cap)
        {
          v18 = 0xAAAAAAAAAAAAAAABLL * ((end - p_strokePoints->__begin_) >> 3);
          v19 = v18 + 1;
          if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_18368964C();
          }

          v20 = 0xAAAAAAAAAAAAAAABLL * ((cap - p_strokePoints->__begin_) >> 3);
          if (2 * v20 > v19)
          {
            v19 = 2 * v20;
          }

          if (v20 >= 0x555555555555555)
          {
            v21 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v21 = v19;
          }

          v43 = &selfCopy->_strokePoints;
          if (v21)
          {
            if (v21 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_183688F00();
          }

          v22 = 24 * v18;
          v39 = 0;
          v40 = v22;
          v41 = 24 * v18;
          v42 = 0;
          *(v22 + 8) = 0;
          *(v22 + 16) = 0;
          *v22 = 0;
          if (v33 != __p)
          {
            if (((v33 - __p) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_18369761C();
          }

          begin = selfCopy->_strokePoints.__begin_;
          v24 = selfCopy->_strokePoints.__end_ - begin;
          v25 = (v22 - v24);
          memcpy((v22 - v24), begin, v24);
          selfCopy->_strokePoints.__begin_ = v25;
          selfCopy->_strokePoints.__end_ = (v22 + 24);
          selfCopy->_strokePoints.__cap_ = 0;
          if (begin)
          {
            operator delete(begin);
          }

          retstr = v31;
          v17 = __p;
          selfCopy->_strokePoints.__end_ = (v22 + 24);
          if (v17)
          {
LABEL_13:
            v33 = v17;
            operator delete(v17);
          }
        }

        else
        {
          *end = 0;
          *(end + 1) = 0;
          *(end + 2) = 0;
          if (v33 != __p)
          {
            if (((v33 - __p) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_18369761C();
          }

          selfCopy->_strokePoints.__end_ = end + 24;
          selfCopy->_strokePoints.__end_ = end + 24;
          v17 = __p;
          if (__p)
          {
            goto LABEL_13;
          }
        }

        if (v34[0])
        {
          v34[1] = v34[0];
          operator delete(v34[0]);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v35, v45, 16, v10);
      if (!v11)
      {
LABEL_33:

        break;
      }
    }
  }

  objc_sync_exit(selfCopy);

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v27 = retstr;
  v29 = selfCopy->_strokePoints.__begin_;
  v28 = selfCopy->_strokePoints.__end_;
  v39 = v27;
  LOBYTE(v40) = 0;
  if (v28 != v29)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v28 - v29) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_18368964C();
  }

  return result;
}

- (vector<CGPoint,)filteredPoints:(CHTransformedTextSegment *)self
{
  textStrokes = self->_textStrokes;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_183814C10;
  v41[3] = &unk_1E6DDEC78;
  v41[4] = self;
  v42 = a4;
  v10 = objc_msgSend_indexesOfObjectsPassingTest_(textStrokes, a3, v41, v4, v5, v6);
  if (!objc_msgSend_count(v10, v11, v12, v13, v14, v15))
  {
    v21 = MEMORY[0x1E696AC90];
    v22 = objc_msgSend_count(self->_textStrokes, v16, v17, v18, v19, v20);
    v26 = objc_msgSend_indexSetWithIndexesInRange_(v21, v23, 0, v22, v24, v25);

    v10 = v26;
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x4812000000;
  v35 = sub_183812FD0;
  v36 = sub_183812FF4;
  v37 = &unk_183A5AC72;
  v39 = 0;
  v40 = 0;
  __p = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_183814CB4;
  v31[3] = &unk_1E6DDD048;
  v31[4] = self;
  v31[5] = &v32;
  objc_msgSend_enumerateIndexesUsingBlock_(v10, v16, v31, v18, v19, v20);
  v27 = v33;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  v29 = v27[6];
  v28 = v27[7];
  if (v28 != v29)
  {
    if (((v28 - v29) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  _Block_object_dispose(&v32, 8);
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  return result;
}

- (vector<CGPoint,)clippedPoints:(CHTransformedTextSegment *)self min:(SEL)min max:(CGSize)max
{
  y = a6.y;
  x = a6.x;
  v12 = a5.y;
  v13 = a5.x;
  height = max.height;
  width = max.width;
  v17 = 0;
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v90 = sqrt((a5.y - a6.y) * (a5.y - a6.y) + (a5.x - a6.x) * (a5.x - a6.x));
  while (1)
  {
    result = objc_msgSend_count(self->_textStrokes, min, v6, v7, v8, v9);
    if (v17 >= result)
    {
      return result;
    }

    v23 = objc_msgSend_objectAtIndexedSubscript_(self->_textStrokes, v19, v17, v20, v21, v22);
    objc_msgSend_strokePoints(self, v24, v25, v26, v27, v28);
    v29 = __p[0];
    v30 = (__p[0] + 24 * v17);
    v94 = 0;
    v95 = 0;
    v93 = 0;
    v32 = *v30;
    v31 = v30[1];
    if (v31 != v32)
    {
      if (((v31 - v32) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_18369761C();
    }

    v33 = __p[1];
    v34 = __p[0];
    if (__p[1] != __p[0])
    {
      v35 = __p[1];
      do
      {
        v37 = *(v35 - 3);
        v35 -= 24;
        v36 = v37;
        if (v37)
        {
          *(v33 - 2) = v36;
          operator delete(v36);
        }

        v33 = v35;
      }

      while (v35 != v29);
      v34 = __p[0];
    }

    __p[1] = v29;
    operator delete(v34);
    objc_msgSend_bounds(v23, v38, v39, v40, v41, v42);
    if (v48 * self->_transform.a > width || (objc_msgSend_bounds(v23, v43, v44, v45, v46, v47), v49 * self->_transform.d > height))
    {
      objc_msgSend_orientation(self, v43, v44, v45, v46, v47);
      v51 = tan(v50);
      sub_1838C3B48(&v93, __p, -v51, v13, v12, x, y);
      v57 = v93;
      if (v93 == v94)
      {
        v59 = -1.79769313e308;
        v58 = 1.79769313e308;
      }

      else
      {
        v58 = 1.79769313e308;
        v59 = -1.79769313e308;
        do
        {
          v60 = *v57;
          v57 += 2;
          v61 = v60;
          if (v58 > v60)
          {
            v58 = v61;
          }

          if (v59 < v61)
          {
            v59 = v61;
          }
        }

        while (v57 != v94);
      }

      objc_msgSend_orientation(self, v52, v53, v54, v55, v56);
      v68 = cos(v62);
      v69 = __p[0];
      if (__p[1] == __p[0])
      {
        goto LABEL_52;
      }

      v70 = v59 - v58;
      v71 = 1.79769313e308;
      v72 = -1.79769313e308;
      v73 = v70 / v68;
      do
      {
        v74 = *v69;
        v69 += 2;
        v75 = v74;
        if (v71 > v74)
        {
          v71 = v75;
        }

        if (v72 < v75)
        {
          v72 = v75;
        }
      }

      while (v69 != __p[1]);
      objc_msgSend_orientation(self, v63, v64, v65, v66, v67);
      v77 = (v72 - v71) / cos(v76);
      if (v77 <= 0.0)
      {
        v69 = __p[0];
LABEL_52:
        if (!v69)
        {
          goto LABEL_54;
        }

LABEL_53:
        __p[1] = v69;
        operator delete(v69);
        goto LABEL_54;
      }

      v69 = __p[0];
      if (v77 / v90 < 0.5 && v77 / v73 < 0.8)
      {
        goto LABEL_52;
      }

      v88 = v17;
      v89 = v23;
      begin = retstr->__begin_;
      if (__p[1] != __p[0])
      {
        v79 = 0;
        v80 = 0;
        end = retstr->__end_;
        do
        {
          cap = retstr->__cap_;
          if (end < cap)
          {
            *end++ = *&v69[v79];
          }

          else
          {
            v83 = end - begin;
            v84 = end - begin;
            v85 = v84 + 1;
            if ((v84 + 1) >> 60)
            {
              retstr->__begin_ = begin;
              sub_18369761C();
            }

            v86 = cap - begin;
            if (v86 >> 3 > v85)
            {
              v85 = v86 >> 3;
            }

            if (v86 >= 0x7FFFFFFFFFFFFFF0)
            {
              v87 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v87 = v85;
            }

            if (v87)
            {
              if (!(v87 >> 60))
              {
                operator new();
              }

              retstr->__begin_ = begin;
              sub_183688F00();
            }

            *(16 * v84) = *&v69[v79];
            end = (16 * v84 + 16);
            memcpy(0, begin, v83);
            retstr->__end_ = end;
            retstr->__cap_ = 0;
            if (begin)
            {
              operator delete(begin);
            }

            begin = 0;
          }

          retstr->__end_ = end;
          ++v80;
          v69 = __p[0];
          v79 += 2;
        }

        while (v80 < (__p[1] - __p[0]) >> 4);
      }

      retstr->__begin_ = begin;
      v17 = v88;
      v23 = v89;
      if (v69)
      {
        goto LABEL_53;
      }
    }

LABEL_54:
    if (v93)
    {
      v94 = v93;
      operator delete(v93);
    }

    ++v17;
  }
}

- (BoundingBox)boundingBox
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_boundingBox.x_max - selfCopy->_boundingBox.x_min == 0.0)
  {
    objc_msgSend_points(selfCopy, v3, v4, v5, v6, v7);
    if (v27 == v28)
    {
      v11 = xmmword_1839CE920;
      v12 = xmmword_1839CE920;
      if (!v27)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8 = xmmword_1839CE920;
      v9 = v27;
      v10 = xmmword_1839CE920;
      v11 = xmmword_1839CE920;
      v12 = xmmword_1839CE920;
      do
      {
        v13 = *v9++;
        v14 = vdupq_lane_s64(v13.i64[0], 0);
        v15 = vdupq_laneq_s64(v13, 1);
        v16 = vmovn_s32(vuzp1q_s32(vcgtq_f64(v8, v14), vcgtq_f64(v10, v15)));
        v17 = vmovn_s32(vuzp1q_s32(vcgtq_f64(v14, v8), vcgtq_f64(v15, v10)));
        v18.i64[0] = v16.u16[2];
        v18.i64[1] = v17.u16[3];
        v19 = vcltzq_s64(vshlq_n_s64(v18, 0x3FuLL));
        v12 = vbslq_s8(v19, v15, v12);
        v18.i64[0] = v16.u16[0];
        v18.i64[1] = v17.u16[1];
        v20 = vcltzq_s64(vshlq_n_s64(v18, 0x3FuLL));
        v11 = vbslq_s8(v20, v14, v11);
        v10 = vbslq_s8(v19, v15, v10);
        v8 = vbslq_s8(v20, v14, v8);
      }

      while (v9 != v28);
      if (!v27)
      {
        goto LABEL_7;
      }
    }

    v25 = v12;
    v26 = v11;
    operator delete(v27);
    v12 = v25;
    v11 = v26;
LABEL_7:
    *&selfCopy->_boundingBox.x_min = v11;
    *&selfCopy->_boundingBox.y_min = v12;
  }

  objc_sync_exit(selfCopy);

  x_min = selfCopy->_boundingBox.x_min;
  x_max = selfCopy->_boundingBox.x_max;
  y_min = selfCopy->_boundingBox.y_min;
  y_max = selfCopy->_boundingBox.y_max;
  result.y_max = y_max;
  result.y_min = y_min;
  result.x_max = x_max;
  result.x_min = x_min;
  return result;
}

- ($196E0A09E4C4E138EEBEC6372622051A)principalLines
{
  v3 = *&self->var2.var1.y;
  retstr->var2.var0 = *&self->var2.var0.y;
  retstr->var2.var1 = v3;
  v4 = *&self->var3.var1.y;
  retstr->var3.var0 = *&self->var3.var0.y;
  retstr->var3.var1 = v4;
  v5 = *&self->var0.var1.y;
  retstr->var0.var0 = *&self->var0.var0.y;
  retstr->var0.var1 = v5;
  v6 = *&self->var1.var1.y;
  retstr->var1.var0 = *&self->var1.var0.y;
  retstr->var1.var1 = v6;
  return self;
}

- (CGAffineTransform)transform
{
  v3 = *&self[6].a;
  *&retstr->a = *&self[5].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[6].c;
  return self;
}

- (id).cxx_construct
{
  *(self + 9) = xmmword_1839CE920;
  *(self + 10) = xmmword_1839CE920;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 13) = 0u;
  return self;
}

@end