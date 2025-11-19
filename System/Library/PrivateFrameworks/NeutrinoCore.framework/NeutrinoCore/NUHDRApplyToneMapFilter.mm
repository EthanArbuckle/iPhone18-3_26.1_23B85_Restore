@interface NUHDRApplyToneMapFilter
- (id)outputImage;
@end

@implementation NUHDRApplyToneMapFilter

- (id)outputImage
{
  v3 = [(NUHDRApplyToneMapFilter *)self inputImage];
  v4 = [(NUHDRApplyToneMapFilter *)self inputColorSpace];
  v5 = [v4 CGColorSpace];

  if (v5)
  {
    v6 = [v3 imageByTaggingWithColorSpace:v5];

    v3 = v6;
  }

  if (v3)
  {
    v7 = [(NUHDRApplyToneMapFilter *)self inputSourceHeadroom];
    [v7 floatValue];
    v9 = v8;

    v10 = [(NUHDRApplyToneMapFilter *)self inputTargetHeadroom];
    [v10 floatValue];
    v12 = v11;

    if (v9 == 0.0 && (-[NUHDRApplyToneMapFilter inputColorSpace](self, "inputColorSpace"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isExtended], v13, v14))
    {
      v15 = v3;
    }

    else
    {
      v16 = [MEMORY[0x1E695F648] filterWithName:@"CIToneMapHeadroom"];
      [v16 setValue:v3 forKey:*MEMORY[0x1E695FAB0]];
      *&v17 = v9;
      v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
      [v16 setValue:v18 forKey:@"inputSourceHeadroom"];

      LODWORD(v19) = fminf(v12, v9);
      v20 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
      [v16 setValue:v20 forKey:@"inputTargetHeadroom"];

      v15 = [v16 outputImage];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end