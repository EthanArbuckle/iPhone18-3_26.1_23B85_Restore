@interface CHTokenizedMathResultToken
+ (id)updatedToken:(id)token withString:(id)string;
+ (id)updatedToken:(id)token withString:(id)string withTokenProperty:(unint64_t)property;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTokenizedMathResultToken:(id)token;
- (BOOL)isEquivalentToToken:(id)token;
- (CHTokenizedMathResultToken)init;
- (CHTokenizedMathResultToken)initWithCoder:(id)coder;
- (CHTokenizedMathResultToken)initWithString:(id)string strokeIndexes:(id)indexes score:(double)score bounds:(CGRect)bounds properties:(unint64_t)properties maskedAlternative:(id)alternative maskedAlternativeScore:(double)alternativeScore;
- (id)debugDescription;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHTokenizedMathResultToken

- (CHTokenizedMathResultToken)init
{
  v7 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], a2, v2, v3, v4, v5);
  v10 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(self, v8, &stru_1EF1C0318, v7, 0, v9, 0.0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));

  return v10;
}

- (CHTokenizedMathResultToken)initWithString:(id)string strokeIndexes:(id)indexes score:(double)score bounds:(CGRect)bounds properties:(unint64_t)properties maskedAlternative:(id)alternative maskedAlternativeScore:(double)alternativeScore
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  alternativeCopy = alternative;
  v30.receiver = self;
  v30.super_class = CHTokenizedMathResultToken;
  height = [(CHTokenizedResultToken *)&v30 initWithString:string strokeIndexes:indexes bounds:x, y, width, height];
  v26 = height;
  if (height)
  {
    height->_score = score;
    height->_properties = properties;
    v27 = objc_msgSend_copy(alternativeCopy, v21, v22, v23, v24, v25);
    maskedAlternative = v26->_maskedAlternative;
    v26->_maskedAlternative = v27;

    v26->_maskedAlternativeScore = alternativeScore;
  }

  return v26;
}

+ (id)updatedToken:(id)token withString:(id)string
{
  stringCopy = string;
  tokenCopy = token;
  v7 = [CHTokenizedMathResultToken alloc];
  v13 = objc_msgSend_strokeIndexes(tokenCopy, v8, v9, v10, v11, v12);
  objc_msgSend_score(tokenCopy, v14, v15, v16, v17, v18);
  v20 = v19;
  objc_msgSend_bounds(tokenCopy, v21, v22, v23, v24, v25);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v39 = objc_msgSend_properties(tokenCopy, v34, v35, v36, v37, v38);
  v45 = objc_msgSend_maskedAlternative(tokenCopy, v40, v41, v42, v43, v44);
  objc_msgSend_maskedAlternativeScore(tokenCopy, v46, v47, v48, v49, v50);
  v52 = v51;

  v54 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_maskedAlternative_maskedAlternativeScore_(v7, v53, stringCopy, v13, v39, v45, v20, v27, v29, v31, v33, v52);

  return v54;
}

+ (id)updatedToken:(id)token withString:(id)string withTokenProperty:(unint64_t)property
{
  stringCopy = string;
  tokenCopy = token;
  v9 = [CHTokenizedMathResultToken alloc];
  v15 = objc_msgSend_strokeIndexes(tokenCopy, v10, v11, v12, v13, v14);
  objc_msgSend_score(tokenCopy, v16, v17, v18, v19, v20);
  v22 = v21;
  objc_msgSend_bounds(tokenCopy, v23, v24, v25, v26, v27);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v41 = objc_msgSend_maskedAlternative(tokenCopy, v36, v37, v38, v39, v40);
  objc_msgSend_maskedAlternativeScore(tokenCopy, v42, v43, v44, v45, v46);
  v48 = v47;

  v50 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_maskedAlternative_maskedAlternativeScore_(v9, v49, stringCopy, v15, property, v41, v22, v29, v31, v33, v35, v48);

  return v50;
}

- (CHTokenizedMathResultToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v51.receiver = self;
  v51.super_class = CHTokenizedMathResultToken;
  v9 = [(CHTokenizedResultToken *)&v51 initWithCoder:coderCopy];
  if (v9)
  {
    objc_msgSend_decodeDoubleForKey_(coderCopy, v5, @"score", v6, v7, v8);
    *(v9 + 56) = v10;
    *(v9 + 64) = objc_msgSend_decodeIntegerForKey_(coderCopy, v11, @"properties", v12, v13, v14);
    v15 = objc_opt_class();
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"maskedAlternative", v17, v18);
    v20 = *(v9 + 72);
    *(v9 + 72) = v19;

    objc_msgSend_decodeDoubleForKey_(coderCopy, v21, @"maskedAlternativeScore", v22, v23, v24);
    *(v9 + 80) = v25;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50.receiver = v9;
      v50.super_class = CHTokenizedMathResultToken;
      v26 = v9;
      string = [(CHTokenizedResultToken *)&v50 string];
      objc_msgSend_setString_(v26, v28, string, v29, v30, v31);

      v49.receiver = v26;
      v49.super_class = CHTokenizedMathResultToken;
      strokeIndexes = [(CHTokenizedResultToken *)&v49 strokeIndexes];
      objc_msgSend_setStrokeIndexes_(v26, v33, strokeIndexes, v34, v35, v36);

      v48.receiver = v26;
      v48.super_class = CHTokenizedMathResultToken;
      [(CHTokenizedResultToken *)&v48 bounds];
      objc_msgSend_setBounds_(v26, v37, v38, v39, v40, v41);
      v9 = objc_msgSend_copy(v26, v42, v43, v44, v45, v46);
    }
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v19.receiver = self;
  v19.super_class = CHTokenizedMathResultToken;
  coderCopy = coder;
  [(CHTokenizedResultToken *)&v19 encodeWithCoder:coderCopy];
  objc_msgSend_encodeDouble_forKey_(coderCopy, v5, @"score", v6, v7, v8, self->_score, v19.receiver, v19.super_class);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v9, self->_properties, @"properties", v10, v11);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, self->_maskedAlternative, @"maskedAlternative", v13, v14);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v15, @"maskedAlternativeScore", v16, v17, v18, self->_maskedAlternativeScore);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CHMutableTokenizedMathResultToken alloc];
  v10 = objc_msgSend_string(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_strokeIndexes(self, v11, v12, v13, v14, v15);
  score = self->_score;
  objc_msgSend_bounds(self, v18, v19, v20, v21, v22);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v36 = objc_msgSend_properties(self, v31, v32, v33, v34, v35);
  v42 = objc_msgSend_maskedAlternative(self, v37, v38, v39, v40, v41);
  objc_msgSend_maskedAlternativeScore(self, v43, v44, v45, v46, v47);
  v50 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_maskedAlternative_maskedAlternativeScore_(v4, v48, v10, v16, v36, v42, score, v24, v26, v28, v30, v49);

  return v50;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = CHTokenizedMathResultToken;
  v3 = [(CHTokenizedResultToken *)&v10 description];
  v8 = objc_msgSend_stringByAppendingFormat_(v3, v4, @", score: %0.4f", v5, v6, v7, *&self->_score);

  return v8;
}

- (id)debugDescription
{
  v7 = objc_msgSend_description(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_stringByAppendingFormat_(v7, v8, @", masked_alternative: %@, alternative_score: %0.4f", v9, v10, v11, self->_maskedAlternative, *&self->_maskedAlternativeScore);

  return v12;
}

- (BOOL)isEqualToTokenizedMathResultToken:(id)token
{
  tokenCopy = token;
  if (self == tokenCopy)
  {
    v42 = 1;
    goto LABEL_9;
  }

  v46.receiver = self;
  v46.super_class = CHTokenizedMathResultToken;
  if ([(CHTokenizedResultToken *)&v46 isEqualToTokenizedResultToken:tokenCopy])
  {
    score = self->_score;
    objc_msgSend_score(tokenCopy, v5, v6, v7, v8, v9);
    if (vabdd_f64(score, v16) < 2.22044605e-16)
    {
      properties = self->_properties;
      if (properties == objc_msgSend_properties(tokenCopy, v11, v12, v13, v14, v15))
      {
        maskedAlternative = self->_maskedAlternative;
        v24 = objc_msgSend_maskedAlternative(tokenCopy, v18, v19, v20, v21, v22);
        v30 = v24;
        if (maskedAlternative == v24)
        {
        }

        else
        {
          v31 = self->_maskedAlternative;
          v32 = objc_msgSend_maskedAlternative(tokenCopy, v25, v26, v27, v28, v29);
          LODWORD(v31) = objc_msgSend_isEqualToString_(v31, v33, v32, v34, v35, v36);

          if (!v31)
          {
            goto LABEL_7;
          }
        }

        maskedAlternativeScore = self->_maskedAlternativeScore;
        objc_msgSend_maskedAlternativeScore(tokenCopy, v37, v38, v39, v40, v41);
        v42 = vabdd_f64(maskedAlternativeScore, v45) < 2.22044605e-16;
        goto LABEL_9;
      }
    }
  }

LABEL_7:
  v42 = 0;
LABEL_9:

  return v42;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToTokenizedMathResultToken = objc_msgSend_isEqualToTokenizedMathResultToken_(self, v5, equalCopy, v6, v7, v8);

    return isEqualToTokenizedMathResultToken;
  }

  else
  {

    return 0;
  }
}

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = CHTokenizedMathResultToken;
  v3 = [(CHTokenizedResultToken *)&v12 hash];
  v4 = (self->_score * 1000.0);
  v5 = v3 ^ self->_properties;
  return v5 ^ objc_msgSend_hash(self->_maskedAlternative, v6, v7, v8, v9, v10) ^ v4 ^ (self->_maskedAlternativeScore * 100000.0);
}

- (BOOL)isEquivalentToToken:(id)token
{
  tokenCopy = token;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v12.receiver = self, v12.super_class = CHTokenizedMathResultToken, [(CHTokenizedResultToken *)&v12 isEquivalentToToken:tokenCopy]))
  {
    v10 = objc_msgSend_properties(tokenCopy, v5, v6, v7, v8, v9) == self->_properties;

    return v10;
  }

  else
  {

    return 0;
  }
}

@end