@interface _CKQuickSendMediaComposition
+ (id)compositionWithMediaObject:(id)a3 subject:(id)a4;
+ (id)compositionWithMediaObjects:(id)a3 subject:(id)a4;
@end

@implementation _CKQuickSendMediaComposition

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
  v13 = [(CKComposition *)[_CKQuickSendMediaComposition alloc] initWithText:v12 subject:v6];

  return v13;
}

+ (id)compositionWithMediaObjects:(id)a3 subject:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [(CKComposition *)[_CKQuickSendMediaComposition alloc] initWithText:0 subject:v6];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [_CKQuickSendMediaComposition compositionWithMediaObject:*(*(&v16 + 1) + 8 * v12) subject:0, v16];
        v7 = [(CKComposition *)v13 compositionByAppendingComposition:v14];

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

@end