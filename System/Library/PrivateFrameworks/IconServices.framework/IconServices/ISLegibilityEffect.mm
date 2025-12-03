@interface ISLegibilityEffect
- (ISLegibilityEffect)init;
- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage;
@end

@implementation ISLegibilityEffect

- (ISLegibilityEffect)init
{
  v3.receiver = self;
  v3.super_class = ISLegibilityEffect;
  return [(ISLegibilityEffect *)&v3 init];
}

- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage
{
  v5 = MEMORY[0x1E69A8968];
  inputImageCopy = inputImage;
  imageCopy = image;
  v6 = [[v5 alloc] initWithWhite:1.0 alpha:1.0];
  v7 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
  ciColor = [v6 ciColor];
  v9 = *MEMORY[0x1E695FA78];
  [v7 setValue:ciColor forKey:*MEMORY[0x1E695FA78]];

  v10 = [MEMORY[0x1E695F648] filterWithName:@"CIDifferenceBlendMode"];
  outputImage = [v7 outputImage];
  v12 = *MEMORY[0x1E695FAB0];
  [v10 setValue:outputImage forKey:*MEMORY[0x1E695FAB0]];

  v13 = *MEMORY[0x1E695FA48];
  [v10 setValue:imageCopy forKey:*MEMORY[0x1E695FA48]];

  v14 = [objc_alloc(MEMORY[0x1E69A8968]) initWithWhite:1.0 alpha:0.25];
  v15 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
  ciColor2 = [v14 ciColor];
  [v15 setValue:ciColor2 forKey:v9];

  v17 = [MEMORY[0x1E695F648] filterWithName:@"CISourceOverCompositing"];
  outputImage2 = [v15 outputImage];
  [v17 setValue:outputImage2 forKey:v12];

  outputImage3 = [v10 outputImage];
  [v17 setValue:outputImage3 forKey:v13];

  v20 = [objc_alloc(MEMORY[0x1E69A8968]) initWithWhite:0.0 alpha:0.43];
  v21 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
  ciColor3 = [v20 ciColor];
  [v21 setValue:ciColor3 forKey:v9];

  v23 = [MEMORY[0x1E695F648] filterWithName:@"CIMultiplyBlendMode"];
  outputImage4 = [v21 outputImage];
  [v23 setValue:outputImage4 forKey:v12];

  outputImage5 = [v17 outputImage];
  [v23 setValue:outputImage5 forKey:v13];

  v26 = [MEMORY[0x1E695F648] filterWithName:@"CIColorBlendMode"];
  [v26 setValue:imageCopy forKey:v12];

  outputImage6 = [v23 outputImage];
  [v26 setValue:outputImage6 forKey:v13];

  v28 = [MEMORY[0x1E695F648] filterWithName:@"CISourceInCompositing"];
  outputImage7 = [v26 outputImage];
  [v28 setValue:outputImage7 forKey:v12];

  [v28 setValue:inputImageCopy forKey:v13];

  return v28;
}

@end