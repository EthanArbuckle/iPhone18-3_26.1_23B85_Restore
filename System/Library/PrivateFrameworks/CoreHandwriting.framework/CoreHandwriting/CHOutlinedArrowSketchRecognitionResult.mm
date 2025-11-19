@interface CHOutlinedArrowSketchRecognitionResult
- (CGPoint)center;
- (CGPoint)controlPoint;
- (CGSize)size;
- (CHOutlinedArrowSketchRecognitionResult)initWithCoder:(id)a3;
- (CHOutlinedArrowSketchRecognitionResult)initWithString:(id)a3 score:(double)a4 rotation:(double)a5 center:(CGPoint)a6 size:(CGSize)a7 controlPointLocation:(CGPoint)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHOutlinedArrowSketchRecognitionResult

- (CHOutlinedArrowSketchRecognitionResult)initWithString:(id)a3 score:(double)a4 rotation:(double)a5 center:(CGPoint)a6 size:(CGSize)a7 controlPointLocation:(CGPoint)a8
{
  y = a8.y;
  x = a8.x;
  height = a7.height;
  width = a7.width;
  v12 = a6.y;
  v13 = a6.x;
  v15.receiver = self;
  v15.super_class = CHOutlinedArrowSketchRecognitionResult;
  result = [(CHSketchRecognitionResult *)&v15 initWithString:a3 score:a4 rotation:a5];
  if (result)
  {
    result->_center.x = v13;
    result->_center.y = v12;
    result->_size.width = width;
    result->_size.height = height;
    result->_controlPoint.x = x;
    result->_controlPoint.y = y;
  }

  return result;
}

- (CHOutlinedArrowSketchRecognitionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CHOutlinedArrowSketchRecognitionResult;
  v5 = [(CHSketchRecognitionResult *)&v27 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"center", v8, v9);
    sub_1837A97C4(v10, &v28);
    if (v29 - v28 == 8)
    {
      v11 = *v28;
      v12 = v28[1];
    }

    else
    {
      v11 = *MEMORY[0x1E695EFF8];
      v12 = *(MEMORY[0x1E695EFF8] + 8);
      if (!v28)
      {
        goto LABEL_6;
      }
    }

    operator delete(v28);
LABEL_6:
    v5->_center.x = v11;
    v5->_center.y = v12;

    v13 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v14, v13, @"size", v15, v16);
    v5->_size.width = sub_1837A9AC8(v17);
    v5->_size.height = v18;

    v19 = objc_opt_class();
    v23 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v20, v19, @"controlPoint", v21, v22);
    sub_1837A97C4(v23, &v28);
    if (v29 - v28 == 8)
    {
      v24 = *v28;
      v25 = v28[1];
    }

    else
    {
      v24 = *MEMORY[0x1E695EFF8];
      v25 = *(MEMORY[0x1E695EFF8] + 8);
      if (!v28)
      {
LABEL_10:
        v5->_controlPoint.x = v24;
        v5->_controlPoint.y = v25;

        goto LABEL_11;
      }
    }

    operator delete(v28);
    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = CHOutlinedArrowSketchRecognitionResult;
  v5 = [(CHSketchRecognitionResult *)&v35 encodeWithCoder:v4];
  v11 = sub_1837A9A94(self->_center.x, self->_center.y, v5, v6, v7, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(v4, v12, v11, @"center", v13, v14);

  v21 = sub_1837A9A94(self->_size.width, self->_size.height, v15, v16, v17, v18, v19, v20);
  objc_msgSend_encodeObject_forKey_(v4, v22, v21, @"size", v23, v24);

  v31 = sub_1837A9A94(self->_controlPoint.x, self->_controlPoint.y, v25, v26, v27, v28, v29, v30);
  objc_msgSend_encodeObject_forKey_(v4, v32, v31, @"controlPoint", v33, v34);
}

- (CGPoint)center
{
  objc_copyStruct(v4, &self->_center, 16, 1, 0);
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

- (CGPoint)controlPoint
{
  objc_copyStruct(v4, &self->_controlPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end