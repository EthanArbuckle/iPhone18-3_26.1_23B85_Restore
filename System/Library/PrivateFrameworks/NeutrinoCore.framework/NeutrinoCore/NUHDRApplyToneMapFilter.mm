@interface NUHDRApplyToneMapFilter
- (id)outputImage;
@end

@implementation NUHDRApplyToneMapFilter

- (id)outputImage
{
  inputImage = [(NUHDRApplyToneMapFilter *)self inputImage];
  inputColorSpace = [(NUHDRApplyToneMapFilter *)self inputColorSpace];
  cGColorSpace = [inputColorSpace CGColorSpace];

  if (cGColorSpace)
  {
    v6 = [inputImage imageByTaggingWithColorSpace:cGColorSpace];

    inputImage = v6;
  }

  if (inputImage)
  {
    inputSourceHeadroom = [(NUHDRApplyToneMapFilter *)self inputSourceHeadroom];
    [inputSourceHeadroom floatValue];
    v9 = v8;

    inputTargetHeadroom = [(NUHDRApplyToneMapFilter *)self inputTargetHeadroom];
    [inputTargetHeadroom floatValue];
    v12 = v11;

    if (v9 == 0.0 && (-[NUHDRApplyToneMapFilter inputColorSpace](self, "inputColorSpace"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isExtended], v13, v14))
    {
      outputImage = inputImage;
    }

    else
    {
      v16 = [MEMORY[0x1E695F648] filterWithName:@"CIToneMapHeadroom"];
      [v16 setValue:inputImage forKey:*MEMORY[0x1E695FAB0]];
      *&v17 = v9;
      v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
      [v16 setValue:v18 forKey:@"inputSourceHeadroom"];

      LODWORD(v19) = fminf(v12, v9);
      v20 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
      [v16 setValue:v20 forKey:@"inputTargetHeadroom"];

      outputImage = [v16 outputImage];
    }
  }

  else
  {
    outputImage = 0;
  }

  return outputImage;
}

@end