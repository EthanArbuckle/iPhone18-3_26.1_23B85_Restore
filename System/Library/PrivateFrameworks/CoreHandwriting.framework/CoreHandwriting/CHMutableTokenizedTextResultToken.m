@interface CHMutableTokenizedTextResultToken
- (BOOL)isEqual:(id)a3;
- (CGRect)bounds;
- (CHMutableTokenizedTextResultToken)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initWithString:(double)a3 strokeIndexes:(double)a4 wordID:(double)a5 modelScore:(double)a6 recognitionScore:(double)a7 combinedScore:(double)a8 alignmentScore:(double)a9 properties:(uint64_t)a10 recognizerSourceLocale:(void *)a11 inputSources:(void *)a12 substrokeCount:(uint64_t)a13 bounds:(uint64_t)a14 originalBounds:(uint64_t)a15 principalLines:(uint64_t)a16 principalPoints:(uint64_t)a17;
- (void)encodeWithCoder:(id)a3;
- (void)setRecognizerSourceLocale:(id)a3;
- (void)setString:(id)a3;
- (void)setStrokeIndexes:(id)a3;
@end

@implementation CHMutableTokenizedTextResultToken

- (id)initWithString:(double)a3 strokeIndexes:(double)a4 wordID:(double)a5 modelScore:(double)a6 recognitionScore:(double)a7 combinedScore:(double)a8 alignmentScore:(double)a9 properties:(uint64_t)a10 recognizerSourceLocale:(void *)a11 inputSources:(void *)a12 substrokeCount:(uint64_t)a13 bounds:(uint64_t)a14 originalBounds:(uint64_t)a15 principalLines:(uint64_t)a16 principalPoints:(uint64_t)a17
{
  v33 = a11;
  v34 = a12;
  v35 = a21[5];
  v47[4] = a21[4];
  v47[5] = v35;
  v36 = a21[7];
  v47[6] = a21[6];
  v47[7] = v36;
  v37 = a21[1];
  v47[0] = *a21;
  v47[1] = v37;
  v38 = a21[3];
  v47[2] = a21[2];
  v47[3] = v38;
  v46.receiver = a1;
  v46.super_class = CHMutableTokenizedTextResultToken;
  v39 = objc_msgSendSuper2(&v46, sel_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_, v33, v34, a13, a14, a15, a16, a2, a3, a4, a5, a6, a7, a8, a9, a17, a18, a19, a20, v47, a22);
  v40 = v39;
  if (v39)
  {
    objc_storeStrong(v39 + 38, a11);
    objc_storeStrong(v40 + 39, a12);
    *(v40 + 40) = a6;
    *(v40 + 41) = a7;
    *(v40 + 42) = a8;
    *(v40 + 43) = a9;
  }

  return v40;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHTokenizedTextResultToken alloc];
  string = self->_string;
  strokeIndexes = self->_strokeIndexes;
  wordID = self->super._wordID;
  modelScore = self->super._modelScore;
  recognitionScore = self->super._recognitionScore;
  combinedScore = self->super._combinedScore;
  alignmentScore = self->super._alignmentScore;
  properties = self->super._properties;
  recognizerSourceLocale = self->super._recognizerSourceLocale;
  inputSources = self->super._inputSources;
  substrokeCount = self->super._substrokeCount;
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  v20 = self->super._originalBounds.origin.x;
  v21 = *&self->super._originalBounds.origin.y;
  v22 = self->super._originalBounds.size.height;
  end = self->super._principalLines.median.end;
  v29[4] = self->super._principalLines.median.start;
  v29[5] = end;
  v24 = self->super._principalLines.top.end;
  v29[6] = self->super._principalLines.top.start;
  v29[7] = v24;
  v25 = self->super._principalLines.descender.end;
  v29[0] = self->super._principalLines.descender.start;
  v29[1] = v25;
  v26 = self->super._principalLines.base.end;
  v29[2] = self->super._principalLines.base.start;
  v29[3] = v26;
  return objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v4, v27, string, strokeIndexes, wordID, properties, recognizerSourceLocale, inputSources, modelScore, recognitionScore, combinedScore, alignmentScore, x, y, width, height, substrokeCount, *&v20, v21, *&v22, v29, self->super._principalPoints);
}

- (CHMutableTokenizedTextResultToken)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CHMutableTokenizedTextResultToken;
  v5 = [(CHTokenizedTextResultToken *)&v14 initWithCoder:v4];
  v11 = v5;
  if (v5)
  {
    v12 = objc_msgSend_mutableCopy(v5, v6, v7, v8, v9, v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  v9 = objc_msgSend_copy(self, v4, v5, v6, v7, v8);
  objc_msgSend_encodeWithCoder_(v9, v10, v14, v11, v12, v13);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_msgSend_copy(self, v5, v6, v7, v8, v9);
    v11 = sub_1836A9AF4(v10, v4);

    return v11;
  }

  else
  {

    return 0;
  }
}

- (void)setString:(id)a3
{
  v12 = a3;
  v10 = objc_msgSend_string(self, v5, v6, v7, v8, v9);

  v11 = v12;
  if (v10 != v12)
  {
    objc_storeStrong(&self->_string, a3);
    v11 = v12;
  }
}

- (void)setStrokeIndexes:(id)a3
{
  v4 = a3;
  if (self->_strokeIndexes != v4)
  {
    v12 = v4;
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8, v9);
    strokeIndexes = self->_strokeIndexes;
    self->_strokeIndexes = v10;

    v4 = v12;
  }
}

- (void)setRecognizerSourceLocale:(id)a3
{
  v11 = a3;
  v9 = objc_msgSend_copy(v11, v4, v5, v6, v7, v8);
  recognizerSourceLocale = self->super._recognizerSourceLocale;
  self->super._recognizerSourceLocale = v9;
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