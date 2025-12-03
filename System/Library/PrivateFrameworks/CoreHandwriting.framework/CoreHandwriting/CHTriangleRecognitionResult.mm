@interface CHTriangleRecognitionResult
- (CGPoint)vertex1;
- (CGPoint)vertex2;
- (CGPoint)vertex3;
- (CHTriangleRecognitionResult)initWithCoder:(id)coder;
- (CHTriangleRecognitionResult)initWithString:(id)string score:(double)score rotation:(double)rotation vertex1:(CGPoint)vertex1 vertex2:(CGPoint)vertex2 vertex3:(CGPoint)vertex3;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHTriangleRecognitionResult

- (CHTriangleRecognitionResult)initWithString:(id)string score:(double)score rotation:(double)rotation vertex1:(CGPoint)vertex1 vertex2:(CGPoint)vertex2 vertex3:(CGPoint)vertex3
{
  y = vertex3.y;
  x = vertex3.x;
  v10 = vertex2.y;
  v11 = vertex2.x;
  v12 = vertex1.y;
  v13 = vertex1.x;
  v15.receiver = self;
  v15.super_class = CHTriangleRecognitionResult;
  result = [(CHSketchRecognitionResult *)&v15 initWithString:string score:score rotation:rotation];
  if (result)
  {
    result->_vertex1.x = v13;
    result->_vertex1.y = v12;
    result->_vertex2.x = v11;
    result->_vertex2.y = v10;
    result->_vertex3.x = x;
    result->_vertex3.y = y;
  }

  return result;
}

- (CHTriangleRecognitionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = CHTriangleRecognitionResult;
  v5 = [(CHSketchRecognitionResult *)&v28 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"vertex1", v8, v9);
    sub_1837A97C4(v10, &v29);
    if (v30 - v29 == 8)
    {
      v11 = *v29;
      v12 = v29[1];
    }

    else
    {
      v11 = *MEMORY[0x1E695EFF8];
      v12 = *(MEMORY[0x1E695EFF8] + 8);
      if (!v29)
      {
        goto LABEL_6;
      }
    }

    operator delete(v29);
LABEL_6:
    v5->_vertex1.x = v11;
    v5->_vertex1.y = v12;

    v13 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v14, v13, @"vertex2", v15, v16);
    sub_1837A97C4(v17, &v29);
    if (v30 - v29 == 8)
    {
      v18 = *v29;
      v19 = v29[1];
    }

    else
    {
      v18 = *MEMORY[0x1E695EFF8];
      v19 = *(MEMORY[0x1E695EFF8] + 8);
      if (!v29)
      {
        goto LABEL_10;
      }
    }

    operator delete(v29);
LABEL_10:
    v5->_vertex2.x = v18;
    v5->_vertex2.y = v19;

    v20 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v20, @"vertex3", v22, v23);
    sub_1837A97C4(v24, &v29);
    if (v30 - v29 == 8)
    {
      v25 = *v29;
      v26 = v29[1];
    }

    else
    {
      v25 = *MEMORY[0x1E695EFF8];
      v26 = *(MEMORY[0x1E695EFF8] + 8);
      if (!v29)
      {
LABEL_14:
        v5->_vertex3.x = v25;
        v5->_vertex3.y = v26;

        goto LABEL_15;
      }
    }

    operator delete(v29);
    goto LABEL_14;
  }

LABEL_15:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = CHTriangleRecognitionResult;
  v5 = [(CHSketchRecognitionResult *)&v35 encodeWithCoder:coderCopy];
  v11 = sub_1837A9A94(self->_vertex1.x, self->_vertex1.y, v5, v6, v7, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"vertex1", v13, v14);

  v21 = sub_1837A9A94(self->_vertex2.x, self->_vertex2.y, v15, v16, v17, v18, v19, v20);
  objc_msgSend_encodeObject_forKey_(coderCopy, v22, v21, @"vertex2", v23, v24);

  v31 = sub_1837A9A94(self->_vertex3.x, self->_vertex3.y, v25, v26, v27, v28, v29, v30);
  objc_msgSend_encodeObject_forKey_(coderCopy, v32, v31, @"vertex3", v33, v34);
}

- (CGPoint)vertex1
{
  objc_copyStruct(v4, &self->_vertex1, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)vertex2
{
  objc_copyStruct(v4, &self->_vertex2, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)vertex3
{
  objc_copyStruct(v4, &self->_vertex3, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end