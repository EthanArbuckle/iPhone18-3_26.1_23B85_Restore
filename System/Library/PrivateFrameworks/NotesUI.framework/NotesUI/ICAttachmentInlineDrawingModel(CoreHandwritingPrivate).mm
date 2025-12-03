@interface ICAttachmentInlineDrawingModel(CoreHandwritingPrivate)
+ (uint64_t)handwritingRecognitionSupported;
@end

@implementation ICAttachmentInlineDrawingModel(CoreHandwritingPrivate)

+ (uint64_t)handwritingRecognitionSupported
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v1 = [preferredLanguages countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v1)
  {
    v2 = *v8;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v8 != v2)
        {
          objc_enumerationMutation(preferredLanguages);
        }

        v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:*(*(&v7 + 1) + 8 * i)];
        v5 = [MEMORY[0x1E6997B80] isLocaleSupported:v4 withMode:4];

        if (v5)
        {
          v1 = 1;
          goto LABEL_11;
        }
      }

      v1 = [preferredLanguages countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v1;
}

@end