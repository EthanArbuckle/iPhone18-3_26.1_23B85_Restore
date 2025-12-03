@interface CHRecognitionResult
- (CHRecognitionResult)initWithScore:(double)score;
- (id)description;
@end

@implementation CHRecognitionResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objc_msgSend_score(self, v5, v6, v7, v8, v9);
  v11 = v10;
  v17 = objc_msgSend_string(self, v12, v13, v14, v15, v16);
  v22 = objc_msgSend_stringWithFormat_(v3, v18, @"class: %@ score: %3.5f string: %@", v19, v20, v21, v4, v11, v17);

  return v22;
}

- (CHRecognitionResult)initWithScore:(double)score
{
  v5.receiver = self;
  v5.super_class = CHRecognitionResult;
  result = [(CHRecognitionResult *)&v5 init];
  if (result)
  {
    result->_score = score;
  }

  return result;
}

@end