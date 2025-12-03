@interface NSItemProvider(ChatKit)
- (uint64_t)supportedInQLController;
@end

@implementation NSItemProvider(ChatKit)

- (uint64_t)supportedInQLController
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  registeredTypeIdentifiers = [self registeredTypeIdentifiers];
  v2 = [registeredTypeIdentifiers countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(registeredTypeIdentifiers);
        }

        if (QLPreviewControllerSupportsContentType())
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [registeredTypeIdentifiers countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

@end