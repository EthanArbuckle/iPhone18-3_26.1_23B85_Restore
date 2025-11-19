@interface _CKAudioComposition
+ (id)compositionWithMediaObject:(id)a3 subject:(id)a4;
- (_CKAudioComposition)initWithText:(id)a3 subject:(id)a4 powerLevels:(id)a5;
@end

@implementation _CKAudioComposition

- (_CKAudioComposition)initWithText:(id)a3 subject:(id)a4 powerLevels:(id)a5
{
  v8 = a5;
  v15.receiver = self;
  v15.super_class = _CKAudioComposition;
  v9 = [(CKComposition *)&v15 initWithText:a3 subject:a4];
  v10 = v9;
  if (v9)
  {
    v11 = [(CKComposition *)v9 mediaObjects];
    v12 = [v11 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 setPowerLevels:v8];
    }

    else
    {
      v13 = IMLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [_CKAudioComposition initWithText:subject:powerLevels:];
      }
    }
  }

  return v10;
}

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

  v10 = [(CKComposition *)[_CKAudioComposition alloc] initWithText:v9 subject:v6];

  return v10;
}

@end