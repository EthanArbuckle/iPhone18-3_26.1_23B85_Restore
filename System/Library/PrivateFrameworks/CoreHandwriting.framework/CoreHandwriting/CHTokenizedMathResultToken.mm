@interface CHTokenizedMathResultToken
+ (id)updatedToken:(id)a3 withString:(id)a4;
+ (id)updatedToken:(id)a3 withString:(id)a4 withTokenProperty:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTokenizedMathResultToken:(id)a3;
- (BOOL)isEquivalentToToken:(id)a3;
- (CHTokenizedMathResultToken)init;
- (CHTokenizedMathResultToken)initWithCoder:(id)a3;
- (CHTokenizedMathResultToken)initWithString:(id)a3 strokeIndexes:(id)a4 score:(double)a5 bounds:(CGRect)a6 properties:(unint64_t)a7 maskedAlternative:(id)a8 maskedAlternativeScore:(double)a9;
- (id)debugDescription;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHTokenizedMathResultToken

- (CHTokenizedMathResultToken)init
{
  v7 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], a2, v2, v3, v4, v5);
  v10 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(self, v8, &stru_1EF1C0318, v7, 0, v9, 0.0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));

  return v10;
}

- (CHTokenizedMathResultToken)initWithString:(id)a3 strokeIndexes:(id)a4 score:(double)a5 bounds:(CGRect)a6 properties:(unint64_t)a7 maskedAlternative:(id)a8 maskedAlternativeScore:(double)a9
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v19 = a8;
  v30.receiver = self;
  v30.super_class = CHTokenizedMathResultToken;
  v20 = [(CHTokenizedResultToken *)&v30 initWithString:a3 strokeIndexes:a4 bounds:x, y, width, height];
  v26 = v20;
  if (v20)
  {
    v20->_score = a5;
    v20->_properties = a7;
    v27 = objc_msgSend_copy(v19, v21, v22, v23, v24, v25);
    maskedAlternative = v26->_maskedAlternative;
    v26->_maskedAlternative = v27;

    v26->_maskedAlternativeScore = a9;
  }

  return v26;
}

+ (id)updatedToken:(id)a3 withString:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [CHTokenizedMathResultToken alloc];
  v13 = objc_msgSend_strokeIndexes(v6, v8, v9, v10, v11, v12);
  objc_msgSend_score(v6, v14, v15, v16, v17, v18);
  v20 = v19;
  objc_msgSend_bounds(v6, v21, v22, v23, v24, v25);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v39 = objc_msgSend_properties(v6, v34, v35, v36, v37, v38);
  v45 = objc_msgSend_maskedAlternative(v6, v40, v41, v42, v43, v44);
  objc_msgSend_maskedAlternativeScore(v6, v46, v47, v48, v49, v50);
  v52 = v51;

  v54 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_maskedAlternative_maskedAlternativeScore_(v7, v53, v5, v13, v39, v45, v20, v27, v29, v31, v33, v52);

  return v54;
}

+ (id)updatedToken:(id)a3 withString:(id)a4 withTokenProperty:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [CHTokenizedMathResultToken alloc];
  v15 = objc_msgSend_strokeIndexes(v8, v10, v11, v12, v13, v14);
  objc_msgSend_score(v8, v16, v17, v18, v19, v20);
  v22 = v21;
  objc_msgSend_bounds(v8, v23, v24, v25, v26, v27);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v41 = objc_msgSend_maskedAlternative(v8, v36, v37, v38, v39, v40);
  objc_msgSend_maskedAlternativeScore(v8, v42, v43, v44, v45, v46);
  v48 = v47;

  v50 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_maskedAlternative_maskedAlternativeScore_(v9, v49, v7, v15, a5, v41, v22, v29, v31, v33, v35, v48);

  return v50;
}

- (CHTokenizedMathResultToken)initWithCoder:(id)a3
{
  v4 = a3;
  v51.receiver = self;
  v51.super_class = CHTokenizedMathResultToken;
  v9 = [(CHTokenizedResultToken *)&v51 initWithCoder:v4];
  if (v9)
  {
    objc_msgSend_decodeDoubleForKey_(v4, v5, @"score", v6, v7, v8);
    *(v9 + 56) = v10;
    *(v9 + 64) = objc_msgSend_decodeIntegerForKey_(v4, v11, @"properties", v12, v13, v14);
    v15 = objc_opt_class();
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"maskedAlternative", v17, v18);
    v20 = *(v9 + 72);
    *(v9 + 72) = v19;

    objc_msgSend_decodeDoubleForKey_(v4, v21, @"maskedAlternativeScore", v22, v23, v24);
    *(v9 + 80) = v25;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50.receiver = v9;
      v50.super_class = CHTokenizedMathResultToken;
      v26 = v9;
      v27 = [(CHTokenizedResultToken *)&v50 string];
      objc_msgSend_setString_(v26, v28, v27, v29, v30, v31);

      v49.receiver = v26;
      v49.super_class = CHTokenizedMathResultToken;
      v32 = [(CHTokenizedResultToken *)&v49 strokeIndexes];
      objc_msgSend_setStrokeIndexes_(v26, v33, v32, v34, v35, v36);

      v48.receiver = v26;
      v48.super_class = CHTokenizedMathResultToken;
      [(CHTokenizedResultToken *)&v48 bounds];
      objc_msgSend_setBounds_(v26, v37, v38, v39, v40, v41);
      v9 = objc_msgSend_copy(v26, v42, v43, v44, v45, v46);
    }
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v19.receiver = self;
  v19.super_class = CHTokenizedMathResultToken;
  v4 = a3;
  [(CHTokenizedResultToken *)&v19 encodeWithCoder:v4];
  objc_msgSend_encodeDouble_forKey_(v4, v5, @"score", v6, v7, v8, self->_score, v19.receiver, v19.super_class);
  objc_msgSend_encodeInteger_forKey_(v4, v9, self->_properties, @"properties", v10, v11);
  objc_msgSend_encodeObject_forKey_(v4, v12, self->_maskedAlternative, @"maskedAlternative", v13, v14);
  objc_msgSend_encodeDouble_forKey_(v4, v15, @"maskedAlternativeScore", v16, v17, v18, self->_maskedAlternativeScore);
}

- (id)mutableCopyWithZone:(_NSZone *)a3
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

- (BOOL)isEqualToTokenizedMathResultToken:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v42 = 1;
    goto LABEL_9;
  }

  v46.receiver = self;
  v46.super_class = CHTokenizedMathResultToken;
  if ([(CHTokenizedResultToken *)&v46 isEqualToTokenizedResultToken:v4])
  {
    score = self->_score;
    objc_msgSend_score(v4, v5, v6, v7, v8, v9);
    if (vabdd_f64(score, v16) < 2.22044605e-16)
    {
      properties = self->_properties;
      if (properties == objc_msgSend_properties(v4, v11, v12, v13, v14, v15))
      {
        maskedAlternative = self->_maskedAlternative;
        v24 = objc_msgSend_maskedAlternative(v4, v18, v19, v20, v21, v22);
        v30 = v24;
        if (maskedAlternative == v24)
        {
        }

        else
        {
          v31 = self->_maskedAlternative;
          v32 = objc_msgSend_maskedAlternative(v4, v25, v26, v27, v28, v29);
          LODWORD(v31) = objc_msgSend_isEqualToString_(v31, v33, v32, v34, v35, v36);

          if (!v31)
          {
            goto LABEL_7;
          }
        }

        maskedAlternativeScore = self->_maskedAlternativeScore;
        objc_msgSend_maskedAlternativeScore(v4, v37, v38, v39, v40, v41);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToTokenizedMathResultToken = objc_msgSend_isEqualToTokenizedMathResultToken_(self, v5, v4, v6, v7, v8);

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

- (BOOL)isEquivalentToToken:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v12.receiver = self, v12.super_class = CHTokenizedMathResultToken, [(CHTokenizedResultToken *)&v12 isEquivalentToToken:v4]))
  {
    v10 = objc_msgSend_properties(v4, v5, v6, v7, v8, v9) == self->_properties;

    return v10;
  }

  else
  {

    return 0;
  }
}

@end