@interface CHChatBubbleRecognitionResult
- (CGPoint)stemLocation;
- (CHChatBubbleRecognitionResult)initWithCoder:(id)coder;
- (CHChatBubbleRecognitionResult)initWithString:(id)string score:(double)score rotation:(double)rotation center:(CGPoint)center size:(CGSize)size stemLocation:(CGPoint)location stemWidth:(double)width;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHChatBubbleRecognitionResult

- (CHChatBubbleRecognitionResult)initWithString:(id)string score:(double)score rotation:(double)rotation center:(CGPoint)center size:(CGSize)size stemLocation:(CGPoint)location stemWidth:(double)width
{
  y = location.y;
  x = location.x;
  v12.receiver = self;
  v12.super_class = CHChatBubbleRecognitionResult;
  result = [(CHEllipseRecognitionResult *)&v12 initWithString:string score:score rotation:rotation center:center.x size:center.y, size.width, size.height];
  if (result)
  {
    result->_stemLocation.x = x;
    result->_stemLocation.y = y;
    result->_stemWidth = width;
  }

  return result;
}

- (CHChatBubbleRecognitionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CHChatBubbleRecognitionResult;
  v5 = [(CHEllipseRecognitionResult *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"stemLocation", v8, v9);
    sub_1837A97C4(v10, v20);
    if ((v20[1] - v20[0]) == 8)
    {
      v11 = *v20[0];
      v12 = *(v20[0] + 1);
    }

    else
    {
      v11 = *MEMORY[0x1E695EFF8];
      v12 = *(MEMORY[0x1E695EFF8] + 8);
      if (!v20[0])
      {
LABEL_6:
        v5->_stemLocation.x = v11;
        v5->_stemLocation.y = v12;

        objc_msgSend_decodeFloatForKey_(coderCopy, v13, @"stemWidth", v14, v15, v16);
        v5->_stemWidth = v17;
        goto LABEL_7;
      }
    }

    operator delete(v20[0]);
    goto LABEL_6;
  }

LABEL_7:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CHChatBubbleRecognitionResult;
  v5 = [(CHEllipseRecognitionResult *)&v20 encodeWithCoder:coderCopy];
  v11 = sub_1837A9A94(self->_stemLocation.x, self->_stemLocation.y, v5, v6, v7, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"stemLocation", v13, v14);

  stemWidth = self->_stemWidth;
  *&stemWidth = stemWidth;
  objc_msgSend_encodeFloat_forKey_(coderCopy, v16, @"stemWidth", v17, v18, v19, stemWidth);
}

- (CGPoint)stemLocation
{
  objc_copyStruct(v4, &self->_stemLocation, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end