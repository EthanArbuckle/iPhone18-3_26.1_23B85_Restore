@interface CHSketchRecognitionResult
- (BOOL)isEqual:(id)equal;
- (CHSketchRecognitionResult)initWithCoder:(id)coder;
- (CHSketchRecognitionResult)initWithString:(id)string score:(double)score rotation:(double)rotation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSketchRecognitionResult

- (CHSketchRecognitionResult)initWithString:(id)string score:(double)score rotation:(double)rotation
{
  stringCopy = string;
  v20.receiver = self;
  v20.super_class = CHSketchRecognitionResult;
  v9 = [(CHRecognitionResult *)&v20 initWithScore:score];
  v15 = v9;
  if (v9)
  {
    string = v9->_string;
    if (string != stringCopy)
    {
      v9->_string = 0;
    }

    v17 = objc_msgSend_copy(stringCopy, v10, v11, v12, v13, v14);
    v18 = v15->_string;
    v15->_string = v17;

    v15->_rotation = rotation;
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v49 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      objc_msgSend_score(self, v6, v7, v8, v9, v10);
      v12 = v11;
      objc_msgSend_score(v5, v13, v14, v15, v16, v17);
      if (v12 == v23 && (objc_msgSend_string(self, v18, v19, v20, v21, v22), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend_string(v5, v25, v26, v27, v28, v29), v30 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v24, v31, v30, v32, v33, v34), v30, v24, isEqualToString))
      {
        objc_msgSend_rotation(self, v36, v37, v38, v39, v40);
        v42 = v41;
        objc_msgSend_rotation(v5, v43, v44, v45, v46, v47);
        v49 = v42 == v48;
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      v49 = 0;
    }
  }

  return v49;
}

- (CHSketchRecognitionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_decodeDoubleForKey_(coderCopy, v5, @"score", v6, v7, v8);
  v22.receiver = self;
  v22.super_class = CHSketchRecognitionResult;
  v9 = [(CHRecognitionResult *)&v22 initWithScore:?];
  if (v9)
  {
    v10 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"string", v12, v13);
    string = v9->_string;
    v9->_string = v14;

    objc_msgSend_decodeFloatForKey_(coderCopy, v16, @"rotation", v17, v18, v19);
    v9->_rotation = v20;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_score(self, v4, v5, v6, v7, v8);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v9, @"score", v10, v11, v12);
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, self->_string, @"string", v14, v15);
  rotation = self->_rotation;
  *&rotation = rotation;
  objc_msgSend_encodeFloat_forKey_(coderCopy, v17, @"rotation", v18, v19, v20, rotation);
}

@end