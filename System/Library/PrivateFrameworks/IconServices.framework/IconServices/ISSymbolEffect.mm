@interface ISSymbolEffect
- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage;
@end

@implementation ISSymbolEffect

- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage
{
  v4 = MEMORY[0x1E6999378];
  inputImageCopy = inputImage;
  v6 = [v4 colorWithName:17 designSystem:0 palette:0 colorScheme:0 contrast:0 styling:0 displayGamut:0 error:0];
  v7 = [objc_alloc(MEMORY[0x1E69A8968]) initWithCGColor:{objc_msgSend(v6, "cgColor")}];
  ciColor = [v7 ciColor];
  [ciColor red];
  v10 = v9;

  ciColor2 = [v7 ciColor];
  [ciColor2 green];
  v13 = v12;

  ciColor3 = [v7 ciColor];
  [ciColor3 blue];
  v16 = v15;

  ciColor4 = [v7 ciColor];
  [ciColor4 alpha];
  v19 = v18;

  v20 = [MEMORY[0x1E695F648] filterWithName:@"CIColorMatrix"];
  [v20 setValue:inputImageCopy forKey:*MEMORY[0x1E695FAB0]];

  v21 = [MEMORY[0x1E695F688] vectorWithX:v10 Y:v10 Z:v10 W:0.0];
  [v20 setValue:v21 forKey:@"inputRVector"];

  v22 = [MEMORY[0x1E695F688] vectorWithX:v13 Y:v13 Z:v13 W:0.0];
  [v20 setValue:v22 forKey:@"inputGVector"];

  v23 = [MEMORY[0x1E695F688] vectorWithX:v16 Y:v16 Z:v16 W:0.0];
  [v20 setValue:v23 forKey:@"inputBVector"];

  v24 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:v19];
  [v20 setValue:v24 forKey:@"inputAVector"];

  return v20;
}

@end