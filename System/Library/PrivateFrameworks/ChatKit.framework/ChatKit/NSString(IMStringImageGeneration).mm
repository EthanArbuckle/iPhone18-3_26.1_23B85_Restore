@interface NSString(IMStringImageGeneration)
- (id)__ck_generateImageForFont:()IMStringImageGeneration imageGenerationScale:;
- (id)__ck_generateImageForFontSize:()IMStringImageGeneration imageGenerationScale:;
@end

@implementation NSString(IMStringImageGeneration)

- (id)__ck_generateImageForFontSize:()IMStringImageGeneration imageGenerationScale:
{
  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:a2 / a3];
  v6 = [self __ck_generateImageForFont:v5 imageGenerationScale:a3];

  return v6;
}

- (id)__ck_generateImageForFont:()IMStringImageGeneration imageGenerationScale:
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E69DB648];
  v15[0] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v15 forKeys:&v14 count:1];

  [self sizeWithAttributes:v8];
  v17.width = v9 * a2;
  v17.height = v10 * a2;
  UIGraphicsBeginImageContextWithOptions(v17, 0, 0.0);
  [self drawAtPoint:v8 withAttributes:{0.0, 0.0}];
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  __ck_imageWithTrimmedTransparency = [v11 __ck_imageWithTrimmedTransparency];

  return __ck_imageWithTrimmedTransparency;
}

@end