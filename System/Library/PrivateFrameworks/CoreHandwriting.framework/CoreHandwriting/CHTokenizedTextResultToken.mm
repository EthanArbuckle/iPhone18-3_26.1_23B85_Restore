@interface CHTokenizedTextResultToken
+ (id)changeTokensToVisualOrder:(id)order;
+ (id)tokenWithString:(double)string strokeIndexes:(double)indexes wordID:(double)d modelScore:(double)score recognitionScore:(double)recognitionScore combinedScore:(double)combinedScore alignmentScore:(double)alignmentScore properties:(uint64_t)self0 recognizerSourceLocale:(void *)self1 inputSources:(void *)self2 substrokeCount:(uint64_t)self3 bounds:(uint64_t)self4 originalBounds:(void *)self5 principalLines:(uint64_t)self6 principalPoints:(uint64_t)self7;
- ($196E0A09E4C4E138EEBEC6372622051A)principalLines;
- (BOOL)hasValidPrincipalLines;
- (BOOL)hasValidPrincipalPoints;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToToken:(id)token;
- (BOOL)isTopOriginal;
- (CGRect)originalBounds;
- (CHTokenizedTextResultToken)init;
- (CHTokenizedTextResultToken)initWithCoder:(id)coder;
- (CHTokenizedTextResultToken)initWithString:(id)string strokeIndexes:(id)indexes bounds:(CGRect)bounds;
- (CHTokenizedTextResultToken)initWithString:(id)string strokeIndexes:(id)indexes wordID:(unsigned int)d modelScore:(double)score recognitionScore:(double)recognitionScore combinedScore:(double)combinedScore alignmentScore:(double)alignmentScore properties:(unint64_t)self0 recognizerSourceLocale:(id)self1 inputSources:(unint64_t)self2 substrokeCount:(int64_t)self3 bounds:(CGRect)self4;
- (_DWORD)initWithString:(double)string strokeIndexes:(double)indexes wordID:(double)d modelScore:(double)score recognitionScore:(double)recognitionScore combinedScore:(double)combinedScore alignmentScore:(double)alignmentScore properties:(uint64_t)self0 recognizerSourceLocale:(void *)self1 inputSources:(void *)self2 substrokeCount:(int)self3 bounds:(uint64_t)self4 originalBounds:(void *)self5 principalLines:(uint64_t)self6 principalPoints:(uint64_t)self7;
- (double)heuristicTextScore;
- (double)principalOrientation;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (unint64_t)inputSourceModifiersCount;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHTokenizedTextResultToken

- (CHTokenizedTextResultToken)init
{
  v7 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], a2, v2, v3, v4, v5);
  v12 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v8, &stru_1EF1C0318, v9, v10, v11);
  v13 = *MEMORY[0x1E695F050];
  v14 = *(MEMORY[0x1E695F050] + 8);
  v15 = *(MEMORY[0x1E695F050] + 16);
  v16 = *(MEMORY[0x1E695F050] + 24);
  v20[0] = *MEMORY[0x1E695EFF8];
  v20[1] = v20[0];
  v20[2] = v20[0];
  v20[3] = v20[0];
  v20[4] = v20[0];
  v20[5] = v20[0];
  v20[6] = v20[0];
  v20[7] = v20[0];
  v18 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(self, v17, &stru_1EF1C0318, v7, 0, 0, v12, 0, 0.0, 0.0, 0.0, 0.0, 0, v13, v14, v15, v16, v20, MEMORY[0x1E695E0F0]);

  return v18;
}

- (CHTokenizedTextResultToken)initWithString:(id)string strokeIndexes:(id)indexes bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  stringCopy = string;
  indexesCopy = indexes;
  v17 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v13, &stru_1EF1C0318, v14, v15, v16);
  v18 = *MEMORY[0x1E695F050];
  v19 = *(MEMORY[0x1E695F050] + 8);
  v20 = *(MEMORY[0x1E695F050] + 24);
  v24[0] = *MEMORY[0x1E695EFF8];
  v24[1] = v24[0];
  v24[2] = v24[0];
  v24[3] = v24[0];
  v24[4] = v24[0];
  v24[5] = v24[0];
  v24[6] = v24[0];
  v24[7] = v24[0];
  v22 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(self, v21, stringCopy, indexesCopy, 0, 0, v17, 0, 0.0, 0.0, 0.0, 0.0, x, y, width, height, 0, v18, v19, v20, v24, 0);

  return v22;
}

- (CHTokenizedTextResultToken)initWithString:(id)string strokeIndexes:(id)indexes wordID:(unsigned int)d modelScore:(double)score recognitionScore:(double)recognitionScore combinedScore:(double)combinedScore alignmentScore:(double)alignmentScore properties:(unint64_t)self0 recognizerSourceLocale:(id)self1 inputSources:(unint64_t)self2 substrokeCount:(int64_t)self3 bounds:(CGRect)self4
{
  v16 = *&d;
  width = bounds.size.width;
  height = bounds.size.height;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v26 = *MEMORY[0x1E695F050];
  v34 = *(MEMORY[0x1E695F050] + 8);
  v27 = *(MEMORY[0x1E695F050] + 24);
  localeCopy = locale;
  indexesCopy = indexes;
  stringCopy = string;
  v37[0] = *MEMORY[0x1E695EFF8];
  v37[1] = v37[0];
  v37[2] = v37[0];
  v37[3] = v37[0];
  v37[4] = v37[0];
  v37[5] = v37[0];
  v37[6] = v37[0];
  v37[7] = v37[0];
  v32 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(self, v31, stringCopy, indexesCopy, v16, properties, localeCopy, sources, score, recognitionScore, combinedScore, alignmentScore, x, y, width, height, count, v26, v34, v27, v37, 0);

  return v32;
}

- (_DWORD)initWithString:(double)string strokeIndexes:(double)indexes wordID:(double)d modelScore:(double)score recognitionScore:(double)recognitionScore combinedScore:(double)combinedScore alignmentScore:(double)alignmentScore properties:(uint64_t)self0 recognizerSourceLocale:(void *)self1 inputSources:(void *)self2 substrokeCount:(int)self3 bounds:(uint64_t)self4 originalBounds:(void *)self5 principalLines:(uint64_t)self6 principalPoints:(uint64_t)self7
{
  localeCopy = locale;
  sourcesCopy = sources;
  originalBoundsCopy = originalBounds;
  v40 = a23;
  v57.receiver = self;
  v57.super_class = CHTokenizedTextResultToken;
  v41 = objc_msgSendSuper2(&v57, sel_initWithString_strokeIndexes_bounds_, localeCopy, sourcesCopy, score, recognitionScore, combinedScore, alignmentScore);
  v47 = v41;
  if (v41)
  {
    v41[14] = count;
    *(v41 + 8) = a2;
    *(v41 + 9) = string;
    *(v41 + 10) = indexes;
    *(v41 + 11) = d;
    *(v41 + 12) = bounds;
    v48 = objc_msgSend_copy(originalBoundsCopy, v42, v43, v44, v45, v46);
    v49 = *(v47 + 13);
    *(v47 + 13) = v48;

    *(v47 + 14) = lines;
    *(v47 + 15) = points;
    *(v47 + 16) = a18;
    *(v47 + 17) = a19;
    *(v47 + 18) = a20;
    *(v47 + 19) = a21;
    v51 = a22[4];
    v50 = a22[5];
    v52 = a22[7];
    *(v47 + 16) = a22[6];
    *(v47 + 17) = v52;
    *(v47 + 14) = v51;
    *(v47 + 15) = v50;
    v54 = *a22;
    v53 = a22[1];
    v55 = a22[3];
    *(v47 + 12) = a22[2];
    *(v47 + 13) = v55;
    *(v47 + 10) = v54;
    *(v47 + 11) = v53;
    objc_storeStrong(v47 + 36, a23);
  }

  return v47;
}

- (double)heuristicTextScore
{
  v7 = objc_msgSend_properties(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_properties(self, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_string(self, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_length(v19, v20, v21, v22, v23, v24);

  v31 = 0.0;
  if (v7 & 4 | (v13 & 0x40))
  {
    v32 = objc_msgSend_string(self, v26, v27, v28, v29, v30);
    v31 = objc_msgSend_length(v32, v33, v34, v35, v36, v37);
  }

  return v31 + v25;
}

- (CHTokenizedTextResultToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v156.receiver = self;
  v156.super_class = CHTokenizedTextResultToken;
  v9 = [(CHTokenizedResultToken *)&v156 initWithCoder:coderCopy];
  if (!v9)
  {
    goto LABEL_39;
  }

  v9->_wordID = objc_msgSend_decodeInt32ForKey_(coderCopy, v5, @"wordID", v6, v7, v8);
  objc_msgSend_decodeDoubleForKey_(coderCopy, v10, @"modelScore", v11, v12, v13);
  v9->_modelScore = v14;
  objc_msgSend_decodeDoubleForKey_(coderCopy, v15, @"recognitionScore", v16, v17, v18);
  v9->_recognitionScore = v19;
  objc_msgSend_decodeDoubleForKey_(coderCopy, v20, @"combinedScore", v21, v22, v23);
  v9->_combinedScore = v24;
  objc_msgSend_decodeDoubleForKey_(coderCopy, v25, @"alignmentScore", v26, v27, v28);
  v9->_alignmentScore = v29;
  v9->_properties = objc_msgSend_decodeIntegerForKey_(coderCopy, v30, @"properties", v31, v32, v33);
  v34 = objc_opt_class();
  v38 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v35, v34, @"recognizerSourceLocale", v36, v37);
  recognizerSourceLocale = v9->_recognizerSourceLocale;
  v9->_recognizerSourceLocale = v38;

  v9->_inputSources = objc_msgSend_decodeIntegerForKey_(coderCopy, v40, @"inputSources", v41, v42, v43);
  v9->_substrokeCount = objc_msgSend_decodeIntegerForKey_(coderCopy, v44, @"substrokeCount", v45, v46, v47);
  v48 = MEMORY[0x1E695F050];
  v49 = *(MEMORY[0x1E695F050] + 16);
  v9->_originalBounds.origin = *MEMORY[0x1E695F050];
  v9->_originalBounds.size = v49;
  v50 = objc_opt_class();
  v54 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v51, v50, @"originalBounds", v52, v53);
  objc_msgSend_getValue_size_(v54, v55, &v9->_originalBounds, 32, v56, v57);
  if (CGRectEqualToRect(v9->_originalBounds, *MEMORY[0x1E695F058]))
  {
    v58 = v48[1];
    v9->_originalBounds.origin = *v48;
    v9->_originalBounds.size = v58;
  }

  v59 = objc_opt_class();
  v63 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v60, v59, @"PrincipalLineTopStart", v61, v62);
  sub_1837A97C4(v63, &v157);
  if (v158 - v157 == 8)
  {
    v64 = *v157;
    v65 = v157[1];
  }

  else
  {
    v64 = *MEMORY[0x1E695EFF8];
    v65 = *(MEMORY[0x1E695EFF8] + 8);
    if (!v157)
    {
      goto LABEL_8;
    }
  }

  operator delete(v157);
LABEL_8:

  v66 = objc_opt_class();
  v70 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v67, v66, @"PrincipalLineTopEnd", v68, v69);
  sub_1837A97C4(v70, &v157);
  if (v158 - v157 == 8)
  {
    v71 = *v157;
    v72 = v157[1];
  }

  else
  {
    v71 = *MEMORY[0x1E695EFF8];
    v72 = *(MEMORY[0x1E695EFF8] + 8);
    if (!v157)
    {
      goto LABEL_12;
    }
  }

  operator delete(v157);
LABEL_12:

  v73 = objc_opt_class();
  v77 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v74, v73, @"PrincipalLineMidStart", v75, v76);
  sub_1837A97C4(v77, &v157);
  if (v158 - v157 == 8)
  {
    v78 = *v157;
    v79 = v157[1];
  }

  else
  {
    v78 = *MEMORY[0x1E695EFF8];
    v79 = *(MEMORY[0x1E695EFF8] + 8);
    if (!v157)
    {
      goto LABEL_16;
    }
  }

  operator delete(v157);
LABEL_16:

  v80 = objc_opt_class();
  v84 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v81, v80, @"PrincipalLineMidEnd", v82, v83);
  sub_1837A97C4(v84, &v157);
  if (v158 - v157 == 8)
  {
    v85 = *v157;
    v86 = v157[1];
  }

  else
  {
    v85 = *MEMORY[0x1E695EFF8];
    v86 = *(MEMORY[0x1E695EFF8] + 8);
    if (!v157)
    {
      goto LABEL_20;
    }
  }

  operator delete(v157);
LABEL_20:

  v87 = objc_opt_class();
  v91 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v88, v87, @"PrincipalLineBaseStart", v89, v90);
  sub_1837A97C4(v91, &v157);
  if (v158 - v157 == 8)
  {
    v151 = v157[1];
    v152 = *v157;
  }

  else
  {
    v151 = *(MEMORY[0x1E695EFF8] + 8);
    v152 = *MEMORY[0x1E695EFF8];
    if (!v157)
    {
      goto LABEL_24;
    }
  }

  operator delete(v157);
LABEL_24:

  v92 = objc_opt_class();
  v96 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v93, v92, @"PrincipalLineBaseEnd", v94, v95);
  sub_1837A97C4(v96, &v157);
  if (v158 - v157 == 8)
  {
    v149 = v157[1];
    v150 = *v157;
  }

  else
  {
    v149 = *(MEMORY[0x1E695EFF8] + 8);
    v150 = *MEMORY[0x1E695EFF8];
    if (!v157)
    {
      goto LABEL_28;
    }
  }

  operator delete(v157);
LABEL_28:

  v97 = objc_opt_class();
  v101 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v98, v97, @"PrincipalLineDescStart", v99, v100);
  sub_1837A97C4(v101, &v157);
  if (v158 - v157 == 8)
  {
    v147 = v157[1];
    v148 = *v157;
  }

  else
  {
    v147 = *(MEMORY[0x1E695EFF8] + 8);
    v148 = *MEMORY[0x1E695EFF8];
    if (!v157)
    {
      goto LABEL_32;
    }
  }

  operator delete(v157);
LABEL_32:

  v102 = objc_opt_class();
  v106 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v103, v102, @"PrincipalLineDescEnd", v104, v105);
  sub_1837A97C4(v106, &v157);
  v145 = v86;
  v146 = v72;
  if (v158 - v157 == 8)
  {
    v107 = *v157;
    v108 = v157[1];
LABEL_35:
    operator delete(v157);
    goto LABEL_36;
  }

  v107 = *MEMORY[0x1E695EFF8];
  v108 = *(MEMORY[0x1E695EFF8] + 8);
  if (v157)
  {
    goto LABEL_35;
  }

LABEL_36:

  v9->_principalLines.descender.start.x = v148;
  v9->_principalLines.descender.start.y = v147;
  v9->_principalLines.descender.end.x = v107;
  v9->_principalLines.descender.end.y = v108;
  v9->_principalLines.base.start.x = v152;
  v9->_principalLines.base.start.y = v151;
  v9->_principalLines.base.end.x = v150;
  v9->_principalLines.base.end.y = v149;
  v9->_principalLines.median.start.x = v78;
  v9->_principalLines.median.start.y = v79;
  v9->_principalLines.median.end.x = v85;
  v9->_principalLines.median.end.y = v145;
  v9->_principalLines.top.start.x = v64;
  v9->_principalLines.top.start.y = v65;
  v9->_principalLines.top.end.x = v71;
  v9->_principalLines.top.end.y = v146;
  v109 = MEMORY[0x1E695DFD8];
  v110 = objc_opt_class();
  v111 = objc_opt_class();
  v116 = objc_msgSend_setWithObjects_(v109, v112, v110, v113, v114, v115, v111, 0);
  v120 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v117, v116, @"PrincipalPoints", v118, v119);
  principalPoints = v9->_principalPoints;
  v9->_principalPoints = v120;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v122 = v9;
    v155.receiver = v122;
    v155.super_class = CHTokenizedTextResultToken;
    string = [(CHTokenizedResultToken *)&v155 string];
    objc_msgSend_setString_(v122, v124, string, v125, v126, v127);

    v154.receiver = v122;
    v154.super_class = CHTokenizedTextResultToken;
    strokeIndexes = [(CHTokenizedResultToken *)&v154 strokeIndexes];
    objc_msgSend_setStrokeIndexes_(v122, v129, strokeIndexes, v130, v131, v132);

    v153.receiver = v122;
    v153.super_class = CHTokenizedTextResultToken;
    [(CHTokenizedResultToken *)&v153 bounds];
    objc_msgSend_setBounds_(v122, v133, v134, v135, v136, v137);
    v143 = objc_msgSend_copy(v122, v138, v139, v140, v141, v142);

    v9 = v143;
  }

LABEL_39:
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v126.receiver = self;
  v126.super_class = CHTokenizedTextResultToken;
  [(CHTokenizedResultToken *)&v126 encodeWithCoder:coderCopy];
  objc_msgSend_encodeInt32_forKey_(coderCopy, v5, self->_wordID, @"wordID", v6, v7);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v8, @"modelScore", v9, v10, v11, self->_modelScore);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v12, @"recognitionScore", v13, v14, v15, self->_recognitionScore);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v16, @"combinedScore", v17, v18, v19, self->_combinedScore);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v20, @"alignmentScore", v21, v22, v23, self->_alignmentScore);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v24, self->_properties, @"properties", v25, v26);
  objc_msgSend_encodeObject_forKey_(coderCopy, v27, self->_recognizerSourceLocale, @"recognizerSourceLocale", v28, v29);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v30, self->_inputSources, @"inputSources", v31, v32);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v33, self->_substrokeCount, @"substrokeCount", v34, v35);
  v39 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], v36, &self->_originalBounds, "{CGRect={CGPoint=dd}{CGSize=dd}}", v37, v38);
  v43 = objc_msgSend_encodeObject_forKey_(coderCopy, v40, v39, @"originalBounds", v41, v42);
  v49 = sub_1837A9A94(self->_principalLines.top.start.x, self->_principalLines.top.start.y, v43, v44, v45, v46, v47, v48);
  objc_msgSend_encodeObject_forKey_(coderCopy, v50, v49, @"PrincipalLineTopStart", v51, v52);

  v59 = sub_1837A9A94(self->_principalLines.top.end.x, self->_principalLines.top.end.y, v53, v54, v55, v56, v57, v58);
  objc_msgSend_encodeObject_forKey_(coderCopy, v60, v59, @"PrincipalLineTopEnd", v61, v62);

  v69 = sub_1837A9A94(self->_principalLines.median.start.x, self->_principalLines.median.start.y, v63, v64, v65, v66, v67, v68);
  objc_msgSend_encodeObject_forKey_(coderCopy, v70, v69, @"PrincipalLineMidStart", v71, v72);

  v79 = sub_1837A9A94(self->_principalLines.median.end.x, self->_principalLines.median.end.y, v73, v74, v75, v76, v77, v78);
  objc_msgSend_encodeObject_forKey_(coderCopy, v80, v79, @"PrincipalLineMidEnd", v81, v82);

  v89 = sub_1837A9A94(self->_principalLines.base.start.x, self->_principalLines.base.start.y, v83, v84, v85, v86, v87, v88);
  objc_msgSend_encodeObject_forKey_(coderCopy, v90, v89, @"PrincipalLineBaseStart", v91, v92);

  v99 = sub_1837A9A94(self->_principalLines.base.end.x, self->_principalLines.base.end.y, v93, v94, v95, v96, v97, v98);
  objc_msgSend_encodeObject_forKey_(coderCopy, v100, v99, @"PrincipalLineBaseEnd", v101, v102);

  v109 = sub_1837A9A94(self->_principalLines.descender.start.x, self->_principalLines.descender.start.y, v103, v104, v105, v106, v107, v108);
  objc_msgSend_encodeObject_forKey_(coderCopy, v110, v109, @"PrincipalLineDescStart", v111, v112);

  v119 = sub_1837A9A94(self->_principalLines.descender.end.x, self->_principalLines.descender.end.y, v113, v114, v115, v116, v117, v118);
  objc_msgSend_encodeObject_forKey_(coderCopy, v120, v119, @"PrincipalLineDescEnd", v121, v122);

  objc_msgSend_encodeObject_forKey_(coderCopy, v123, self->_principalPoints, @"PrincipalPoints", v124, v125);
}

+ (id)tokenWithString:(double)string strokeIndexes:(double)indexes wordID:(double)d modelScore:(double)score recognitionScore:(double)recognitionScore combinedScore:(double)combinedScore alignmentScore:(double)alignmentScore properties:(uint64_t)self0 recognizerSourceLocale:(void *)self1 inputSources:(void *)self2 substrokeCount:(uint64_t)self3 bounds:(uint64_t)self4 originalBounds:(void *)self5 principalLines:(uint64_t)self6 principalPoints:(uint64_t)self7
{
  localeCopy = locale;
  sourcesCopy = sources;
  originalBoundsCopy = originalBounds;
  v36 = a23;
  v37 = [self alloc];
  v38 = a22[5];
  v49[4] = a22[4];
  v49[5] = v38;
  v39 = a22[7];
  v49[6] = a22[6];
  v49[7] = v39;
  v40 = a22[1];
  v49[0] = *a22;
  v49[1] = v40;
  v41 = a22[3];
  v49[2] = a22[2];
  v49[3] = v41;
  v43 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v37, v42, localeCopy, sourcesCopy, count, bounds, originalBoundsCopy, lines, a2, string, indexes, d, score, recognitionScore, combinedScore, alignmentScore, points, a18, a19, a20, a21, v49, v36);

  return v43;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CHMutableTokenizedTextResultToken alloc];
  v10 = objc_msgSend_string(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_strokeIndexes(self, v11, v12, v13, v14, v15);
  wordID = self->_wordID;
  modelScore = self->_modelScore;
  recognitionScore = self->_recognitionScore;
  combinedScore = self->_combinedScore;
  alignmentScore = self->_alignmentScore;
  properties = self->_properties;
  recognizerSourceLocale = self->_recognizerSourceLocale;
  inputSources = self->_inputSources;
  substrokeCount = self->_substrokeCount;
  objc_msgSend_bounds(self, v26, v27, v28, v29, v30);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  x = self->_originalBounds.origin.x;
  v38 = *&self->_originalBounds.origin.y;
  height = self->_originalBounds.size.height;
  end = self->_principalLines.median.end;
  v48[4] = self->_principalLines.median.start;
  v48[5] = end;
  v41 = self->_principalLines.top.end;
  v48[6] = self->_principalLines.top.start;
  v48[7] = v41;
  v42 = self->_principalLines.descender.end;
  v48[0] = self->_principalLines.descender.start;
  v48[1] = v42;
  v43 = self->_principalLines.base.end;
  v48[2] = self->_principalLines.base.start;
  v48[3] = v43;
  v46 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v4, v44, v10, v16, wordID, properties, recognizerSourceLocale, inputSources, modelScore, recognitionScore, combinedScore, alignmentScore, v32, v34, v36, v45, substrokeCount, *&x, v38, *&height, v48, self->_principalPoints);

  return v46;
}

- (id)description
{
  if ((self->_properties & 2) != 0)
  {
    v3 = @"Y";
  }

  else
  {
    v3 = @"N";
  }

  v4 = v3;
  if ((self->_properties & 4) != 0)
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  v6 = v5;
  if ((self->_properties & 0x100) != 0)
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v8 = v7;
  if ((self->_properties & 8) != 0)
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  v10 = v9;
  if ((self->_properties & 0x10) != 0)
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v12 = v11;
  if ((self->_properties & 0x20) != 0)
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  v14 = v13;
  v19 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v15, &stru_1EF1C0318, v16, v17, v18);
  v25 = v19;
  inputSources = self->_inputSources;
  if ((inputSources & 4) != 0)
  {
    objc_msgSend_appendString_(v19, v20, @" Top Model Result,", v22, v23, v24);
  }

  else
  {
    if ((inputSources & 2) == 0)
    {
      goto LABEL_24;
    }

    objc_msgSend_appendString_(v19, v20, @" Model Result,", v22, v23, v24);
  }

  inputSources = self->_inputSources;
LABEL_24:
  if ((inputSources & 0x10) != 0)
  {
    objc_msgSend_appendString_(v25, v20, @" Text Replacement,", v22, v23, v24);
    inputSources = self->_inputSources;
  }

  if ((inputSources & 8) != 0)
  {
    objc_msgSend_appendString_(v25, v20, @" Transliteration,", v22, v23, v24);
    inputSources = self->_inputSources;
  }

  if ((inputSources & 0x20) != 0)
  {
    objc_msgSend_appendString_(v25, v20, @" Spell Correction,", v22, v23, v24);
    inputSources = self->_inputSources;
  }

  if ((inputSources & 0x80) != 0)
  {
    objc_msgSend_appendString_(v25, v20, @" Confusion Correction,", v22, v23, v24);
    inputSources = self->_inputSources;
  }

  if ((inputSources & 0x40) != 0)
  {
    objc_msgSend_appendString_(v25, v20, @" Lexicon Correction,", v22, v23, v24);
    inputSources = self->_inputSources;
  }

  if ((inputSources & 0x100) != 0)
  {
    objc_msgSend_appendString_(v25, v20, @" Case Correction,", v22, v23, v24);
    inputSources = self->_inputSources;
  }

  if ((inputSources & 0x200) != 0)
  {
    objc_msgSend_appendString_(v25, v20, @" Space Correction,", v22, v23, v24);
    inputSources = self->_inputSources;
  }

  if ((inputSources & 0x800) != 0)
  {
    objc_msgSend_appendString_(v25, v20, @" Other,", v22, v23, v24);
  }

  v27 = objc_msgSend_localeIdentifier(self->_recognizerSourceLocale, v20, v21, v22, v23, v24);
  v35.receiver = self;
  v35.super_class = CHTokenizedTextResultToken;
  v28 = [(CHTokenizedResultToken *)&v35 description];
  v33 = objc_msgSend_stringByAppendingFormat_(v28, v29, @", substrokeCount: %ld, wordID: %d, modelScore: %0.4f, recognitionScore: %0.4f, combinedScore: %0.4f, alignmentScore: %0.4f, rare: %@, lexicon: %@, lexiconMatching: %@, pattern: %@, inappropriate: %@, precedingSpace: %@, inputSources: {%@}, recognizerSourceLocale: %@", v30, v31, v32, self->_substrokeCount, self->_wordID, *&self->_modelScore, *&self->_recognitionScore, *&self->_combinedScore, *&self->_alignmentScore, v4, v6, v8, v10, v12, v14, v25, v27);

  return v33;
}

- (BOOL)isEquivalentToToken:(id)token
{
  tokenCopy = token;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v49.receiver = self, v49.super_class = CHTokenizedTextResultToken, [(CHTokenizedResultToken *)&v49 isEquivalentToToken:tokenCopy]))
  {
    v5 = tokenCopy;
    v11 = objc_msgSend_properties(v5, v6, v7, v8, v9, v10);
    properties = self->_properties;
    v18 = objc_msgSend_recognizerSourceLocale(v5, v13, v14, v15, v16, v17);
    isEqual = objc_msgSend_isEqual_(v18, v19, self->_recognizerSourceLocale, v20, v21, v22);

    v29 = objc_msgSend_inputSources(v5, v24, v25, v26, v27, v28);
    inputSources = self->_inputSources;
    v41 = 0;
    if (objc_msgSend_wordID(v5, v31, v32, v33, v34, v35) == self->_wordID && v11 == properties && ((isEqual ^ 1) & 1) == 0 && v29 == inputSources)
    {
      v42 = objc_msgSend_substrokeCount(v5, v36, v37, v38, v39, v40);
      v41 = v42 == objc_msgSend_substrokeCount(self, v43, v44, v45, v46, v47);
    }
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

- (unint64_t)inputSourceModifiersCount
{
  p_inputSources = &self->_inputSources;
  v3 = vld1q_dup_f64(p_inputSources);
  v4 = vdupq_n_s64(1uLL);
  return vaddvq_s64(vaddq_s64(vaddq_s64(vandq_s8(vshlq_u64(v3, xmmword_1839CD9E0), v4), vandq_s8(vshlq_u64(v3, xmmword_1839CD9F0), v4)), vaddq_s64(vandq_s8(vshlq_u64(v3, xmmword_1839CD9C0), v4), vandq_s8(vshlq_u64(v3, xmmword_1839CD9D0), v4))));
}

- (BOOL)hasValidPrincipalLines
{
  v2 = *(MEMORY[0x1E695EFF8] + 8);
  if (self->_principalLines.base.start.x != *MEMORY[0x1E695EFF8] || self->_principalLines.base.start.y != v2)
  {
    return 1;
  }

  if (self->_principalLines.base.end.y == v2)
  {
    return self->_principalLines.base.end.x != *MEMORY[0x1E695EFF8];
  }

  return 1;
}

- (BOOL)hasValidPrincipalPoints
{
  principalPoints = self->_principalPoints;
  if (!principalPoints)
  {
    return 0;
  }

  v8 = objc_msgSend_count(principalPoints, a2, v2, v3, v4, v5);
  v14 = objc_msgSend_strokeIndexes(self, v9, v10, v11, v12, v13);
  LOBYTE(v8) = v8 == objc_msgSend_count(v14, v15, v16, v17, v18, v19);

  return v8;
}

- (double)principalOrientation
{
  if (!objc_msgSend_hasValidPrincipalLines(self, a2, v2, v3, v4, v5))
  {
    return 1.79769313e308;
  }

  objc_msgSend_originalBounds(self, v7, v8, v9, v10, v11);
  if (CGRectIsNull(v30))
  {
    return 1.79769313e308;
  }

  x = self->_principalLines.base.start.x;
  v19 = self->_principalLines.base.end.x;
  v20 = self->_principalLines.base.end.y - self->_principalLines.base.start.y;
  objc_msgSend_originalBounds(self, v12, v13, v14, v15, v16);
  v22 = v20 * v21;
  objc_msgSend_originalBounds(self, v23, v24, v25, v26, v27);

  return atan2(v22, (v19 - x) * v28);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = sub_1836A9AF4(self, equalCopy);

    return v5;
  }

  else
  {

    return 0;
  }
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = CHTokenizedTextResultToken;
  return [(CHTokenizedResultToken *)&v3 hash];
}

+ (id)changeTokensToVisualOrder:(id)order
{
  v6 = objc_msgSend_sortedArrayUsingComparator_(order, a2, &unk_1EF1BB7D8, v3, v4, v5);

  return v6;
}

- (CGRect)originalBounds
{
  x = self->_originalBounds.origin.x;
  y = self->_originalBounds.origin.y;
  width = self->_originalBounds.size.width;
  height = self->_originalBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($196E0A09E4C4E138EEBEC6372622051A)principalLines
{
  var1 = self[1].var3.var1;
  retstr->var2.var0 = self[1].var3.var0;
  retstr->var2.var1 = var1;
  v4 = self[2].var0.var1;
  retstr->var3.var0 = self[2].var0.var0;
  retstr->var3.var1 = v4;
  v5 = self[1].var1.var1;
  retstr->var0.var0 = self[1].var1.var0;
  retstr->var0.var1 = v5;
  v6 = self[1].var2.var1;
  retstr->var1.var0 = self[1].var2.var0;
  retstr->var1.var1 = v6;
  return self;
}

- (BOOL)isTopOriginal
{
  if ((self->_inputSources & 4) != 0)
  {
    return objc_msgSend_isOriginal(self, a2, v2, v3, v4, v5);
  }

  else
  {
    return 0;
  }
}

@end