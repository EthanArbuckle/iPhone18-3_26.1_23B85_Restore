@interface _CKQuickSendMediaComposition
+ (id)compositionWithMediaObject:(id)object subject:(id)subject;
+ (id)compositionWithMediaObjects:(id)objects subject:(id)subject;
@end

@implementation _CKQuickSendMediaComposition

+ (id)compositionWithMediaObject:(id)object subject:(id)subject
{
  v18[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  subjectCopy = subject;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = @"AdaptiveImageGlyphMediaObject";
    v18[0] = objectCopy;
    v7 = MEMORY[0x1E695DF20];
    v8 = v18;
    v9 = &v17;
LABEL_5:
    v10 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:1];
    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    v12 = [v11 initWithString:*MEMORY[0x1E69A5F00] attributes:v10];

    goto LABEL_6;
  }

  if (objectCopy)
  {
    v15 = @"MediaObjectForTextAttachment";
    v16 = objectCopy;
    v7 = MEMORY[0x1E695DF20];
    v8 = &v16;
    v9 = &v15;
    goto LABEL_5;
  }

  v12 = 0;
LABEL_6:
  v13 = [(CKComposition *)[_CKQuickSendMediaComposition alloc] initWithText:v12 subject:subjectCopy];

  return v13;
}

+ (id)compositionWithMediaObjects:(id)objects subject:(id)subject
{
  v21 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  subjectCopy = subject;
  v7 = [(CKComposition *)[_CKQuickSendMediaComposition alloc] initWithText:0 subject:subjectCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = objectsCopy;
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