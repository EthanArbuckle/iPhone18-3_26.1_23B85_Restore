@interface ISIconSegmentationFeedbackBilinearGradient
- (ISIconSegmentationFeedbackBilinearGradient)gradientWithSize:(CGSize)size;
- (ISIconSegmentationFeedbackBilinearGradient)initWithTopLeftColor:(CGColor *)color topRightColor:(CGColor *)rightColor bottomRightColor:(CGColor *)bottomRightColor bottomLeftColor:(CGColor *)leftColor meanColor:(CGColor *)meanColor;
- (void)dealloc;
@end

@implementation ISIconSegmentationFeedbackBilinearGradient

- (ISIconSegmentationFeedbackBilinearGradient)initWithTopLeftColor:(CGColor *)color topRightColor:(CGColor *)rightColor bottomRightColor:(CGColor *)bottomRightColor bottomLeftColor:(CGColor *)leftColor meanColor:(CGColor *)meanColor
{
  v14.receiver = self;
  v14.super_class = ISIconSegmentationFeedbackBilinearGradient;
  v12 = [(ISIconSegmentationFeedbackBilinearGradient *)&v14 init];
  if (v12)
  {
    v12->_topLeftColor = CGColorRetain(color);
    v12->_topRightColor = CGColorRetain(rightColor);
    v12->_bottomRightColor = CGColorRetain(bottomRightColor);
    v12->_bottomLeftColor = CGColorRetain(leftColor);
    v12->_meanColor = CGColorRetain(meanColor);
  }

  return v12;
}

- (void)dealloc
{
  CGColorRelease(self->_topLeftColor);
  CGColorRelease(self->_topRightColor);
  CGColorRelease(self->_bottomRightColor);
  CGColorRelease(self->_bottomLeftColor);
  CGColorRelease(self->_meanColor);
  v3.receiver = self;
  v3.super_class = ISIconSegmentationFeedbackBilinearGradient;
  [(ISIconSegmentationFeedbackBilinearGradient *)&v3 dealloc];
}

- (ISIconSegmentationFeedbackBilinearGradient)gradientWithSize:(CGSize)size
{
  height = size.height;
  v20[2] = *MEMORY[0x1E69E9840];
  Components = CGColorGetComponents(self->_topLeftColor);
  NumberOfComponents = CGColorGetNumberOfComponents(self->_topLeftColor);
  if (Components)
  {
    v7 = NumberOfComponents >= 3;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = CGColorGetComponents(self->_topRightColor);
  v9 = CGColorGetNumberOfComponents(self->_topRightColor);
  if (!v8 || v9 < 3)
  {
    goto LABEL_10;
  }

  v14 = CGColorGetComponents(self->_bottomRightColor);
  v15 = CGColorGetNumberOfComponents(self->_bottomRightColor);
  v11 = 0;
  if (v14)
  {
    if (v15 >= 3)
    {
      v16 = CGColorGetComponents(self->_bottomLeftColor);
      v17 = CGColorGetNumberOfComponents(self->_bottomLeftColor);
      v11 = 0;
      if (v16)
      {
        if (v17 >= 3)
        {
          if (vabdd_f64(*Components, *v8) > 0.01 || vabdd_f64(Components[1], v8[1]) > 0.01 || vabdd_f64(Components[2], v8[2]) > 0.01 || vabdd_f64(*v16, *v14) > 0.01 || vabdd_f64(v16[1], v14[1]) > 0.01 || vabdd_f64(v16[2], v14[2]) > 0.01)
          {
LABEL_10:
            v11 = 0;
            goto LABEL_11;
          }

          v11 = objc_opt_new();
          [v11 setGradientType:1];
          [v11 setGradientStartPoint:{0.0, 0.0}];
          [v11 setGradientEndPoint:{0.0, height}];
          bottomLeftColor = self->_bottomLeftColor;
          v20[0] = self->_topLeftColor;
          v20[1] = bottomLeftColor;
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
          [v11 setColors:v19 andStops:&unk_1F1A657F0];
        }
      }
    }
  }

LABEL_11:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end