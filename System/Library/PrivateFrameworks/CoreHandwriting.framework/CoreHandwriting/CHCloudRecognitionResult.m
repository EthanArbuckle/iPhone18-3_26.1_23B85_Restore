@interface CHCloudRecognitionResult
- (CGPoint)center;
- (CGSize)size;
- (CHCloudRecognitionResult)initWithCoder:(id)a3;
- (CHCloudRecognitionResult)initWithString:(id)a3 score:(double)a4 rotation:(double)a5 center:(CGPoint)a6 size:(CGSize)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHCloudRecognitionResult

- (CHCloudRecognitionResult)initWithString:(id)a3 score:(double)a4 rotation:(double)a5 center:(CGPoint)a6 size:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  y = a6.y;
  x = a6.x;
  v12.receiver = self;
  v12.super_class = CHCloudRecognitionResult;
  result = [(CHSketchRecognitionResult *)&v12 initWithString:a3 score:a4 rotation:a5];
  if (result)
  {
    result->_center.x = x;
    result->_center.y = y;
    result->_size.width = width;
    result->_size.height = height;
  }

  return result;
}

- (CHCloudRecognitionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CHCloudRecognitionResult;
  v5 = [(CHSketchRecognitionResult *)&v20 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"center", v8, v9);
    sub_1837A97C4(v10, v21);
    if ((v21[1] - v21[0]) == 8)
    {
      v11 = *v21[0];
      v12 = *(v21[0] + 1);
    }

    else
    {
      v11 = *MEMORY[0x1E695EFF8];
      v12 = *(MEMORY[0x1E695EFF8] + 8);
      if (!v21[0])
      {
LABEL_6:
        v5->_center.x = v11;
        v5->_center.y = v12;

        v13 = objc_opt_class();
        v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v14, v13, @"size", v15, v16);
        v5->_size.width = sub_1837A9AC8(v17);
        v5->_size.height = v18;

        goto LABEL_7;
      }
    }

    operator delete(v21[0]);
    goto LABEL_6;
  }

LABEL_7:

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CHCloudRecognitionResult;
  v5 = [(CHSketchRecognitionResult *)&v25 encodeWithCoder:v4];
  v11 = sub_1837A9A94(self->_center.x, self->_center.y, v5, v6, v7, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(v4, v12, v11, @"center", v13, v14);

  v21 = sub_1837A9A94(self->_size.width, self->_size.height, v15, v16, v17, v18, v19, v20);
  objc_msgSend_encodeObject_forKey_(v4, v22, v21, @"size", v23, v24);
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

@end