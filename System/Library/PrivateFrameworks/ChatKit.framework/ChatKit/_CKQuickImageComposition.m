@interface _CKQuickImageComposition
+ (id)compositionWithMediaObject:(id)a3 subject:(id)a4;
@end

@implementation _CKQuickImageComposition

+ (id)compositionWithMediaObject:(id)a3 subject:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v12 = @"MediaObjectForTextAttachment";
    v13[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = objc_alloc(MEMORY[0x1E696AAB0]);
    v9 = [v8 initWithString:*MEMORY[0x1E69A5F00] attributes:v7];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(CKComposition *)[_CKQuickImageComposition alloc] initWithText:v9 subject:v6];

  return v10;
}

@end