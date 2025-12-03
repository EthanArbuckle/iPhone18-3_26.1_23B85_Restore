@interface _CKExpirableComposition
+ (id)compositionWithMediaObject:(id)object subject:(id)subject;
+ (id)newCompositionWithText:(id)text subject:(id)subject shelfPluginPayload:(id)payload;
@end

@implementation _CKExpirableComposition

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
  v13 = [(CKComposition *)[_CKExpirableComposition alloc] initWithText:v12 subject:subjectCopy];

  return v13;
}

+ (id)newCompositionWithText:(id)text subject:(id)subject shelfPluginPayload:(id)payload
{
  payloadCopy = payload;
  subjectCopy = subject;
  textCopy = text;
  v10 = [(CKComposition *)[_CKExpirableComposition alloc] initWithText:textCopy subject:subjectCopy shelfPluginPayload:payloadCopy];

  return v10;
}

@end