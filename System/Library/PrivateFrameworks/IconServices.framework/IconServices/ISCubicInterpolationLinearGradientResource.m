@interface ISCubicInterpolationLinearGradientResource
- (ISCubicInterpolationLinearGradientResource)initWithStartingColor:(id)a3 endingColor:(id)a4;
- (id)imageForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation ISCubicInterpolationLinearGradientResource

- (ISCubicInterpolationLinearGradientResource)initWithStartingColor:(id)a3 endingColor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ISCubicInterpolationLinearGradientResource;
  v9 = [(ISCubicInterpolationLinearGradientResource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startingColor, a3);
    objc_storeStrong(&v10->_endingColor, a4);
  }

  return v10;
}

- (id)imageForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
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
      v23 = [(ISCubicInterpolationLinearGradientResource *)self startingColor];
      v24 = [(ISCubicInterpolationLinearGradientResource *)self endingColor];
      v25 = [v23 blendColorWithFraction:v24 ofColor:v22];

      if (v25 && [v25 cgColor])
      {
        [v15 addObject:{objc_msgSend(v25, "cgColor")}];
        v18[v19] = (v19 / v20);
      }

      ++v19;
    }

    while (v14 != v19);
  }

  v26 = [MEMORY[0x1E69A8978] bitmapContextWithSize:0 scale:width preset:{height, a4}];
  [v26 clear];
  v27 = CGGradientCreateWithColors([MEMORY[0x1E69A8968] deviceRGBColorSpace], v15, v18);
  if (v27)
  {
    v28 = v27;
    v29 = *MEMORY[0x1E695EFF8];
    v30 = *(MEMORY[0x1E695EFF8] + 8);
    v31 = [v26 cgContext];
    v38.x = 0.0;
    v37.x = v29;
    v37.y = v30;
    v38.y = height;
    CGContextDrawLinearGradient(v31, v28, v37, v38, 0);
    CGGradientRelease(v28);
  }

  v32 = [v26 image];

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

@end