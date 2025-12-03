@interface CHRectangleSketchRecognitionResult
- (CGPoint)lowerLeftPoint;
- (CGPoint)lowerRightPoint;
- (CGPoint)upperLeftPoint;
- (CGPoint)upperRightPoint;
- (CGSize)size;
- (CHRectangleSketchRecognitionResult)initWithCoder:(id)coder;
- (CHRectangleSketchRecognitionResult)initWithString:(id)string score:(double)score rotation:(double)rotation upperLeftPoint:(CGPoint)point upperRightPoint:(CGPoint)rightPoint lowerLeftPoint:(CGPoint)leftPoint lowerRightPoint:(CGPoint)lowerRightPoint size:(CGSize)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHRectangleSketchRecognitionResult

- (CHRectangleSketchRecognitionResult)initWithString:(id)string score:(double)score rotation:(double)rotation upperLeftPoint:(CGPoint)point upperRightPoint:(CGPoint)rightPoint lowerLeftPoint:(CGPoint)leftPoint lowerRightPoint:(CGPoint)lowerRightPoint size:(CGSize)self0
{
  y = leftPoint.y;
  x = leftPoint.x;
  v12 = rightPoint.y;
  v13 = rightPoint.x;
  v14 = point.y;
  v15 = point.x;
  v17.receiver = self;
  v17.super_class = CHRectangleSketchRecognitionResult;
  result = [(CHSketchRecognitionResult *)&v17 initWithString:string score:*&lowerRightPoint.x rotation:*&lowerRightPoint.y, *&size.width, *&size.height, score, rotation];
  if (result)
  {
    result->_upperLeftPoint.x = v15;
    result->_upperLeftPoint.y = v14;
    result->_upperRightPoint.x = v13;
    result->_upperRightPoint.y = v12;
    result->_lowerLeftPoint.x = x;
    result->_lowerLeftPoint.y = y;
    result->_lowerRightPoint.x = v18;
    result->_lowerRightPoint.y = v19;
    result->_size.width = v20;
    result->_size.height = v21;
  }

  return result;
}

- (CHRectangleSketchRecognitionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = CHRectangleSketchRecognitionResult;
  v5 = [(CHSketchRecognitionResult *)&v41 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"upperLeftPoint", v8, v9);
    sub_1837A97C4(v10, &v42);
    if (v43 - v42 == 8)
    {
      v11 = *v42;
      v12 = v42[1];
    }

    else
    {
      v11 = *MEMORY[0x1E695EFF8];
      v12 = *(MEMORY[0x1E695EFF8] + 8);
      if (!v42)
      {
        goto LABEL_6;
      }
    }

    operator delete(v42);
LABEL_6:
    v5->_upperLeftPoint.x = v11;
    v5->_upperLeftPoint.y = v12;

    v13 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v14, v13, @"upperRightPoint", v15, v16);
    sub_1837A97C4(v17, &v42);
    if (v43 - v42 == 8)
    {
      v18 = *v42;
      v19 = v42[1];
    }

    else
    {
      v18 = *MEMORY[0x1E695EFF8];
      v19 = *(MEMORY[0x1E695EFF8] + 8);
      if (!v42)
      {
        goto LABEL_10;
      }
    }

    operator delete(v42);
LABEL_10:
    v5->_upperRightPoint.x = v18;
    v5->_upperRightPoint.y = v19;

    v20 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v20, @"lowerLeftPoint", v22, v23);
    sub_1837A97C4(v24, &v42);
    if (v43 - v42 == 8)
    {
      v25 = *v42;
      v26 = v42[1];
    }

    else
    {
      v25 = *MEMORY[0x1E695EFF8];
      v26 = *(MEMORY[0x1E695EFF8] + 8);
      if (!v42)
      {
        goto LABEL_14;
      }
    }

    operator delete(v42);
LABEL_14:
    v5->_lowerLeftPoint.x = v25;
    v5->_lowerLeftPoint.y = v26;

    v27 = objc_opt_class();
    v31 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v28, v27, @"lowerRightPoint", v29, v30);
    sub_1837A97C4(v31, &v42);
    if (v43 - v42 == 8)
    {
      v32 = *v42;
      v33 = v42[1];
    }

    else
    {
      v32 = *MEMORY[0x1E695EFF8];
      v33 = *(MEMORY[0x1E695EFF8] + 8);
      if (!v42)
      {
LABEL_18:
        v5->_lowerRightPoint.x = v32;
        v5->_lowerRightPoint.y = v33;

        v34 = objc_opt_class();
        v38 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v35, v34, @"size", v36, v37);
        v5->_size.width = sub_1837A9AC8(v38);
        v5->_size.height = v39;

        goto LABEL_19;
      }
    }

    operator delete(v42);
    goto LABEL_18;
  }

LABEL_19:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v55.receiver = self;
  v55.super_class = CHRectangleSketchRecognitionResult;
  v5 = [(CHSketchRecognitionResult *)&v55 encodeWithCoder:coderCopy];
  v11 = sub_1837A9A94(self->_upperLeftPoint.x, self->_upperLeftPoint.y, v5, v6, v7, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"upperLeftPoint", v13, v14);

  v21 = sub_1837A9A94(self->_upperRightPoint.x, self->_upperRightPoint.y, v15, v16, v17, v18, v19, v20);
  objc_msgSend_encodeObject_forKey_(coderCopy, v22, v21, @"upperRightPoint", v23, v24);

  v31 = sub_1837A9A94(self->_lowerLeftPoint.x, self->_lowerLeftPoint.y, v25, v26, v27, v28, v29, v30);
  objc_msgSend_encodeObject_forKey_(coderCopy, v32, v31, @"lowerLeftPoint", v33, v34);

  v41 = sub_1837A9A94(self->_lowerRightPoint.x, self->_lowerRightPoint.y, v35, v36, v37, v38, v39, v40);
  objc_msgSend_encodeObject_forKey_(coderCopy, v42, v41, @"lowerRightPoint", v43, v44);

  v51 = sub_1837A9A94(self->_size.width, self->_size.height, v45, v46, v47, v48, v49, v50);
  objc_msgSend_encodeObject_forKey_(coderCopy, v52, v51, @"size", v53, v54);
}

- (CGPoint)upperLeftPoint
{
  objc_copyStruct(v4, &self->_upperLeftPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)upperRightPoint
{
  objc_copyStruct(v4, &self->_upperRightPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)lowerLeftPoint
{
  objc_copyStruct(v4, &self->_lowerLeftPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)lowerRightPoint
{
  objc_copyStruct(v4, &self->_lowerRightPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGSize)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end