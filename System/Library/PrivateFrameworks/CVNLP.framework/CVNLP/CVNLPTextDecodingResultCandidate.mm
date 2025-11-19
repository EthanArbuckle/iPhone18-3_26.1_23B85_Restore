@interface CVNLPTextDecodingResultCandidate
- (CVNLPTextDecodingResultCandidate)initWithTokens:(id)a3 score:(double)a4 activationScore:(double)a5;
- (NSString)fullString;
@end

@implementation CVNLPTextDecodingResultCandidate

- (CVNLPTextDecodingResultCandidate)initWithTokens:(id)a3 score:(double)a4 activationScore:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = CVNLPTextDecodingResultCandidate;
  v10 = [(CVNLPTextDecodingResultCandidate *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_tokens, a3);
    v11->_score = a4;
    v11->_activationScore = a5;
  }

  return v11;
}

- (NSString)fullString
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_tokens;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v20, v24, 16);
  if (v8)
  {
    v12 = v8;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = objc_msgSend_fullString(*(*(&v20 + 1) + 8 * i), v9, v10, v11, v20);
        objc_msgSend_appendString_(v5, v16, v15, v17);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v20, v24, 16);
    }

    while (v12);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

@end