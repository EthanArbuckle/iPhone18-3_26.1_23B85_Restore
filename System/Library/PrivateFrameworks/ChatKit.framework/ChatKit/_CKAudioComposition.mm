@interface _CKAudioComposition
+ (id)compositionWithMediaObject:(id)object subject:(id)subject;
- (_CKAudioComposition)initWithText:(id)text subject:(id)subject powerLevels:(id)levels;
@end

@implementation _CKAudioComposition

- (_CKAudioComposition)initWithText:(id)text subject:(id)subject powerLevels:(id)levels
{
  levelsCopy = levels;
  v15.receiver = self;
  v15.super_class = _CKAudioComposition;
  v9 = [(CKComposition *)&v15 initWithText:text subject:subject];
  v10 = v9;
  if (v9)
  {
    mediaObjects = [(CKComposition *)v9 mediaObjects];
    firstObject = [mediaObjects firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [firstObject setPowerLevels:levelsCopy];
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

+ (id)compositionWithMediaObject:(id)object subject:(id)subject
{
  v13[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  subjectCopy = subject;
  if (objectCopy)
  {
    v12 = @"MediaObjectForTextAttachment";
    v13[0] = objectCopy;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = objc_alloc(MEMORY[0x1E696AAB0]);
    v9 = [v8 initWithString:*MEMORY[0x1E69A5F00] attributes:v7];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(CKComposition *)[_CKAudioComposition alloc] initWithText:v9 subject:subjectCopy];

  return v10;
}

@end