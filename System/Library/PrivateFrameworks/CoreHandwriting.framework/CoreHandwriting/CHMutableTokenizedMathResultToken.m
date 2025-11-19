@interface CHMutableTokenizedMathResultToken
- (BOOL)isEqual:(id)a3;
- (CGRect)bounds;
- (CHMutableTokenizedMathResultToken)initWithCoder:(id)a3;
- (CHMutableTokenizedMathResultToken)initWithString:(id)a3 strokeIndexes:(id)a4 score:(double)a5 bounds:(CGRect)a6 properties:(unint64_t)a7 maskedAlternative:(id)a8 maskedAlternativeScore:(double)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendToken:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setMaskedAlternative:(id)a3;
- (void)setString:(id)a3;
- (void)setStrokeIndexes:(id)a3;
@end

@implementation CHMutableTokenizedMathResultToken

- (CHMutableTokenizedMathResultToken)initWithString:(id)a3 strokeIndexes:(id)a4 score:(double)a5 bounds:(CGRect)a6 properties:(unint64_t)a7 maskedAlternative:(id)a8 maskedAlternativeScore:(double)a9
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v20 = a3;
  v21 = a4;
  v25.receiver = self;
  v25.super_class = CHMutableTokenizedMathResultToken;
  v22 = [(CHTokenizedMathResultToken *)&v25 initWithString:v20 strokeIndexes:v21 score:a7 bounds:a8 properties:a5 maskedAlternative:x maskedAlternativeScore:y, width, height, a9];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_string, a3);
    objc_storeStrong(&v23->_strokeIndexes, a4);
    v23->_bounds.origin.x = x;
    v23->_bounds.origin.y = y;
    v23->_bounds.size.width = width;
    v23->_bounds.size.height = height;
  }

  return v23;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHTokenizedMathResultToken alloc];
  string = self->_string;
  strokeIndexes = self->_strokeIndexes;
  score = self->super._score;
  properties = self->super._properties;
  maskedAlternative = self->super._maskedAlternative;
  maskedAlternativeScore = self->super._maskedAlternativeScore;
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;

  return objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_maskedAlternative_maskedAlternativeScore_(v4, v5, string, strokeIndexes, properties, maskedAlternative, score, x, y, width, height, maskedAlternativeScore);
}

- (CHMutableTokenizedMathResultToken)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = CHMutableTokenizedMathResultToken;
  v3 = [(CHTokenizedMathResultToken *)&v12 initWithCoder:a3];
  if (!v3)
  {
    return 0;
  }

  v9 = v3;
  v10 = objc_msgSend_mutableCopy(v3, v4, v5, v6, v7, v8);

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v14 = objc_msgSend_copy(self, v5, v6, v7, v8, v9);
  objc_msgSend_encodeWithCoder_(v14, v10, v4, v11, v12, v13);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_msgSend_copy(self, v5, v6, v7, v8, v9);
    isEqualToTokenizedMathResultToken = objc_msgSend_isEqualToTokenizedMathResultToken_(v10, v11, v4, v12, v13, v14);

    return isEqualToTokenizedMathResultToken;
  }

  else
  {

    return 0;
  }
}

- (void)setString:(id)a3
{
  v11 = a3;
  v10 = objc_msgSend_string(self, v5, v6, v7, v8, v9);

  if (v10 != v11)
  {
    objc_storeStrong(&self->_string, a3);
  }
}

- (void)setStrokeIndexes:(id)a3
{
  if (self->_strokeIndexes != a3)
  {
    v7 = objc_msgSend_copy(a3, a2, a3, v3, v4, v5);
    strokeIndexes = self->_strokeIndexes;
    self->_strokeIndexes = v7;
  }
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

- (void)setMaskedAlternative:(id)a3
{
  v7 = objc_msgSend_copy(a3, a2, a3, v3, v4, v5);
  maskedAlternative = self->super._maskedAlternative;
  self->super._maskedAlternative = v7;
}

- (void)appendToken:(id)a3
{
  v82 = a3;
  string = self->_string;
  v10 = objc_msgSend_string(v82, v5, v6, v7, v8, v9);
  v15 = objc_msgSend_stringByAppendingString_(string, v11, v10, v12, v13, v14);
  v16 = self->_string;
  self->_string = v15;

  v22 = objc_msgSend_mutableCopy(self->_strokeIndexes, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_strokeIndexes(v82, v23, v24, v25, v26, v27);
  objc_msgSend_addIndexes_(v22, v29, v28, v30, v31, v32);

  objc_storeStrong(&self->_strokeIndexes, v22);
  objc_msgSend_score(v82, v33, v34, v35, v36, v37);
  self->super._score = v38 * self->super._score;
  objc_msgSend_bounds(v82, v39, v40, v41, v42, v43);
  v84.origin.x = v44;
  v84.origin.y = v45;
  v84.size.width = v46;
  v84.size.height = v47;
  self->_bounds = CGRectUnion(self->_bounds, v84);
  v53 = objc_msgSend_maskedAlternative(v82, v48, v49, v50, v51, v52);
  if (v53)
  {
    v59 = v53;
    objc_msgSend_maskedAlternativeScore(v82, v54, v55, v56, v57, v58);
    v61 = v60;
    maskedAlternativeScore = self->super._maskedAlternativeScore;

    if (v61 > maskedAlternativeScore)
    {
      v68 = objc_msgSend_maskedAlternative(v82, v63, v64, v65, v66, v67);
      v74 = objc_msgSend_copy(v68, v69, v70, v71, v72, v73);
      maskedAlternative = self->super._maskedAlternative;
      self->super._maskedAlternative = v74;

      objc_msgSend_maskedAlternativeScore(v82, v76, v77, v78, v79, v80);
      self->super._maskedAlternativeScore = v81;
    }
  }
}

@end