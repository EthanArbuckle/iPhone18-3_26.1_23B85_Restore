@interface CHMutableTokenizedMathResultToken
- (BOOL)isEqual:(id)equal;
- (CGRect)bounds;
- (CHMutableTokenizedMathResultToken)initWithCoder:(id)coder;
- (CHMutableTokenizedMathResultToken)initWithString:(id)string strokeIndexes:(id)indexes score:(double)score bounds:(CGRect)bounds properties:(unint64_t)properties maskedAlternative:(id)alternative maskedAlternativeScore:(double)alternativeScore;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToken:(id)token;
- (void)encodeWithCoder:(id)coder;
- (void)setMaskedAlternative:(id)alternative;
- (void)setString:(id)string;
- (void)setStrokeIndexes:(id)indexes;
@end

@implementation CHMutableTokenizedMathResultToken

- (CHMutableTokenizedMathResultToken)initWithString:(id)string strokeIndexes:(id)indexes score:(double)score bounds:(CGRect)bounds properties:(unint64_t)properties maskedAlternative:(id)alternative maskedAlternativeScore:(double)alternativeScore
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  stringCopy = string;
  indexesCopy = indexes;
  v25.receiver = self;
  v25.super_class = CHMutableTokenizedMathResultToken;
  alternativeScore = [(CHTokenizedMathResultToken *)&v25 initWithString:stringCopy strokeIndexes:indexesCopy score:properties bounds:alternative properties:score maskedAlternative:x maskedAlternativeScore:y, width, height, alternativeScore];
  v23 = alternativeScore;
  if (alternativeScore)
  {
    objc_storeStrong(&alternativeScore->_string, string);
    objc_storeStrong(&v23->_strokeIndexes, indexes);
    v23->_bounds.origin.x = x;
    v23->_bounds.origin.y = y;
    v23->_bounds.size.width = width;
    v23->_bounds.size.height = height;
  }

  return v23;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (CHMutableTokenizedMathResultToken)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = CHMutableTokenizedMathResultToken;
  v3 = [(CHTokenizedMathResultToken *)&v12 initWithCoder:coder];
  if (!v3)
  {
    return 0;
  }

  v9 = v3;
  v10 = objc_msgSend_mutableCopy(v3, v4, v5, v6, v7, v8);

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v14 = objc_msgSend_copy(self, v5, v6, v7, v8, v9);
  objc_msgSend_encodeWithCoder_(v14, v10, coderCopy, v11, v12, v13);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_msgSend_copy(self, v5, v6, v7, v8, v9);
    isEqualToTokenizedMathResultToken = objc_msgSend_isEqualToTokenizedMathResultToken_(v10, v11, equalCopy, v12, v13, v14);

    return isEqualToTokenizedMathResultToken;
  }

  else
  {

    return 0;
  }
}

- (void)setString:(id)string
{
  stringCopy = string;
  v10 = objc_msgSend_string(self, v5, v6, v7, v8, v9);

  if (v10 != stringCopy)
  {
    objc_storeStrong(&self->_string, string);
  }
}

- (void)setStrokeIndexes:(id)indexes
{
  if (self->_strokeIndexes != indexes)
  {
    v7 = objc_msgSend_copy(indexes, a2, indexes, v3, v4, v5);
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

- (void)setMaskedAlternative:(id)alternative
{
  v7 = objc_msgSend_copy(alternative, a2, alternative, v3, v4, v5);
  maskedAlternative = self->super._maskedAlternative;
  self->super._maskedAlternative = v7;
}

- (void)appendToken:(id)token
{
  tokenCopy = token;
  string = self->_string;
  v10 = objc_msgSend_string(tokenCopy, v5, v6, v7, v8, v9);
  v15 = objc_msgSend_stringByAppendingString_(string, v11, v10, v12, v13, v14);
  v16 = self->_string;
  self->_string = v15;

  v22 = objc_msgSend_mutableCopy(self->_strokeIndexes, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_strokeIndexes(tokenCopy, v23, v24, v25, v26, v27);
  objc_msgSend_addIndexes_(v22, v29, v28, v30, v31, v32);

  objc_storeStrong(&self->_strokeIndexes, v22);
  objc_msgSend_score(tokenCopy, v33, v34, v35, v36, v37);
  self->super._score = v38 * self->super._score;
  objc_msgSend_bounds(tokenCopy, v39, v40, v41, v42, v43);
  v84.origin.x = v44;
  v84.origin.y = v45;
  v84.size.width = v46;
  v84.size.height = v47;
  self->_bounds = CGRectUnion(self->_bounds, v84);
  v53 = objc_msgSend_maskedAlternative(tokenCopy, v48, v49, v50, v51, v52);
  if (v53)
  {
    v59 = v53;
    objc_msgSend_maskedAlternativeScore(tokenCopy, v54, v55, v56, v57, v58);
    v61 = v60;
    maskedAlternativeScore = self->super._maskedAlternativeScore;

    if (v61 > maskedAlternativeScore)
    {
      v68 = objc_msgSend_maskedAlternative(tokenCopy, v63, v64, v65, v66, v67);
      v74 = objc_msgSend_copy(v68, v69, v70, v71, v72, v73);
      maskedAlternative = self->super._maskedAlternative;
      self->super._maskedAlternative = v74;

      objc_msgSend_maskedAlternativeScore(tokenCopy, v76, v77, v78, v79, v80);
      self->super._maskedAlternativeScore = v81;
    }
  }
}

@end