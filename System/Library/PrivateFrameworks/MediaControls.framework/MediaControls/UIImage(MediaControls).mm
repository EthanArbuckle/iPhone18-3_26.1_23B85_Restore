@interface UIImage(MediaControls)
- (UIImage)mru_imageFittingSize:()MediaControls;
@end

@implementation UIImage(MediaControls)

- (UIImage)mru_imageFittingSize:()MediaControls
{
  v22[1] = *MEMORY[0x1E69E9840];
  if ([(UIImage *)a1 isSymbolImage])
  {
    v6 = a1;
  }

  else
  {
    if (a2 < a3)
    {
      a2 = a3;
    }

    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v7 scale];
    v9 = v8;

    v10 = UIImagePNGRepresentation(a1);
    v21 = *MEMORY[0x1E696E0A8];
    v22[0] = MEMORY[0x1E695E110];
    v11 = CGImageSourceCreateWithData(v10, [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1]);
    v12 = *MEMORY[0x1E696E0B8];
    v19[0] = *MEMORY[0x1E696DFE8];
    v19[1] = v12;
    v20[0] = MEMORY[0x1E695E118];
    v20[1] = MEMORY[0x1E695E118];
    v13 = *MEMORY[0x1E696E000];
    v20[2] = MEMORY[0x1E695E118];
    v14 = *MEMORY[0x1E696E100];
    v19[2] = v13;
    v19[3] = v14;
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:a2 * v9];
    v20[3] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];

    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v11, 0, v16);
    v6 = [MEMORY[0x1E69DCAB8] imageWithCGImage:ThumbnailAtIndex];
    CGImageRelease(ThumbnailAtIndex);
    CFRelease(v11);
  }

  return v6;
}

@end