@interface _CKQuickImageComposition
+ (id)compositionWithMediaObject:(id)object subject:(id)subject;
@end

@implementation _CKQuickImageComposition

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

  v10 = [(CKComposition *)[_CKQuickImageComposition alloc] initWithText:v9 subject:subjectCopy];

  return v10;
}

@end