@interface ISGreyscaleEffect
- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4;
@end

@implementation ISGreyscaleEffect

- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4
{
  v20 = a3;
  v5 = a4;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(ISBiasedGrayscaleConversion);
  v22 = 0.0;
  v21 = 0;
  if (-[ISGrayscaleConversion computeGrayscaleConversionColorWithCGImage:grayscaleConversion:](v7, "computeGrayscaleConversionColorWithCGImage:grayscaleConversion:", [v5 CGImage], &v21))
  {
    v8 = *&v21;
    v9 = *(&v21 + 1);
    v10 = v22;
  }

  else
  {
    v8 = 0.2126;
    v9 = 0.7152;
    v10 = 0.0722;
  }

  v11 = [MEMORY[0x1E695F688] vectorWithX:v8 Y:v9 Z:v10 W:0.0];
  v12 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
  v13 = [MEMORY[0x1E695F648] filterWithName:@"CILinearToSRGBToneCurve"];
  v14 = *MEMORY[0x1E695FAB0];
  [v13 setValue:v5 forKey:*MEMORY[0x1E695FAB0]];
  v15 = [MEMORY[0x1E695F648] filterWithName:@"CIColorMatrix"];
  v16 = [v13 outputImage];
  [v15 setValue:v16 forKey:v14];

  [v15 setValue:v11 forKey:@"inputRVector"];
  [v15 setValue:v11 forKey:@"inputGVector"];
  [v15 setValue:v11 forKey:@"inputBVector"];
  [v15 setValue:v12 forKey:@"inputAVector"];

  v17 = [MEMORY[0x1E695F648] filterWithName:@"CISRGBToneCurveToLinear"];
  v18 = [v15 outputImage];
  [v17 setValue:v18 forKey:v14];

  objc_autoreleasePoolPop(v6);

  return v17;
}

@end