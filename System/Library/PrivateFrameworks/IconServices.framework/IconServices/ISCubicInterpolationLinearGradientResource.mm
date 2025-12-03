@interface ISCubicInterpolationLinearGradientResource
- (ISCubicInterpolationLinearGradientResource)initWithStartingColor:(id)color endingColor:(id)endingColor;
- (id)imageForSize:(CGSize)size scale:(double)scale;
@end

@implementation ISCubicInterpolationLinearGradientResource

- (ISCubicInterpolationLinearGradientResource)initWithStartingColor:(id)color endingColor:(id)endingColor
{
  colorCopy = color;
  endingColorCopy = endingColor;
  v12.receiver = self;
  v12.super_class = ISCubicInterpolationLinearGradientResource;
  v9 = [(ISCubicInterpolationLinearGradientResource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startingColor, color);
    objc_storeStrong(&v10->_endingColor, endingColor);
  }

  return v10;
}

- (id)imageForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v35[1] = *MEMORY[0x1E69E9840];
  v8 = objc_alloc(MEMORY[0x1E69793D0]);
  LODWORD(v9) = 1046631210;
  LODWORD(v10) = 1000812293;
  LODWORD(v11) = 1062073097;
  LODWORD(v12) = 1.0;
  v13 = [v8 initWithControlPoints:v9 :v10 :v11 :v12];
  v14 = (height * 5.0);
  v15 = objc_opt_new();
  MEMORY[0x1EEE9AC00](v15);
  v18 = (v35 - v17);
  if (v14 >= 1)
  {
    v19 = 0;
    v20 = v14;
    do
    {
      *&v16 = v19 / v20;
      [v13 _solveForInput:v16];
      v22 = v21;
      startingColor = [(ISCubicInterpolationLinearGradientResource *)self startingColor];
      endingColor = [(ISCubicInterpolationLinearGradientResource *)self endingColor];
      v25 = [startingColor blendColorWithFraction:endingColor ofColor:v22];

      if (v25 && [v25 cgColor])
      {
        [v15 addObject:{objc_msgSend(v25, "cgColor")}];
        v18[v19] = (v19 / v20);
      }

      ++v19;
    }

    while (v14 != v19);
  }

  v26 = [MEMORY[0x1E69A8978] bitmapContextWithSize:0 scale:width preset:{height, scale}];
  [v26 clear];
  v27 = CGGradientCreateWithColors([MEMORY[0x1E69A8968] deviceRGBColorSpace], v15, v18);
  if (v27)
  {
    v28 = v27;
    v29 = *MEMORY[0x1E695EFF8];
    v30 = *(MEMORY[0x1E695EFF8] + 8);
    cgContext = [v26 cgContext];
    v38.x = 0.0;
    v37.x = v29;
    v37.y = v30;
    v38.y = height;
    CGContextDrawLinearGradient(cgContext, v28, v37, v38, 0);
    CGGradientRelease(v28);
  }

  image = [v26 image];

  v33 = *MEMORY[0x1E69E9840];

  return image;
}

@end