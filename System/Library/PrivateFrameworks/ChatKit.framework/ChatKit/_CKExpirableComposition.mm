@interface _CKExpirableComposition
+ (id)compositionWithMediaObject:(id)a3 subject:(id)a4;
+ (id)newCompositionWithText:(id)a3 subject:(id)a4 shelfPluginPayload:(id)a5;
@end

@implementation _CKExpirableComposition

+ (id)compositionWithMediaObject:(id)a3 subject:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = @"AdaptiveImageGlyphMediaObject";
    v18[0] = v5;
    v7 = MEMORY[0x1E695DF20];
    v8 = v18;
    v9 = &v17;
LABEL_5:
    v10 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:1];
    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    v12 = [v11 initWithString:*MEMORY[0x1E69A5F00] attributes:v10];

    goto LABEL_6;
  }

  if (v5)
  {
    v15 = @"MediaObjectForTextAttachment";
    v16 = v5;
    v7 = MEMORY[0x1E695DF20];
    v8 = &v16;
    v9 = &v15;
    goto LABEL_5;
  }

  v12 = 0;
LABEL_6:
  v13 = [(CKComposition *)[_CKExpirableComposition alloc] initWithText:v12 subject:v6];

  return v13;
}

+ (id)newCompositionWithText:(id)a3 subject:(id)a4 shelfPluginPayload:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(CKComposition *)[_CKExpirableComposition alloc] initWithText:v9 subject:v8 shelfPluginPayload:v7];

  return v10;
}

@end