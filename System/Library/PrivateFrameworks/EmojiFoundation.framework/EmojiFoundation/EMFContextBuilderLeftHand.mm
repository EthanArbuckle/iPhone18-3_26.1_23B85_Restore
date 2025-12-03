@interface EMFContextBuilderLeftHand
- (void)enumerateWindowsForContext:(id)context range:(_NSRange)range searchAnchors:(id)anchors usingBlock:(id)block;
@end

@implementation EMFContextBuilderLeftHand

- (void)enumerateWindowsForContext:(id)context range:(_NSRange)range searchAnchors:(id)anchors usingBlock:(id)block
{
  v34 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  anchorsCopy = anchors;
  blockCopy = block;
  v32 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = anchorsCopy;
  v26 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v26)
  {
    v25 = *v29;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v29 != v25)
      {
        objc_enumerationMutation(obj);
      }

      if (v32)
      {
        break;
      }

      v11 = *(*(&v28 + 1) + 8 * v10);
      v12 = [contextCopy rangeOfString:v11 options:1 range:range.location locale:{range.length, 0}];
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = v12;
        v15 = v13;
        v16 = 0;
        v17 = 0x7FFFFFFFFFFFFFFFLL;
        do
        {
          v18 = v17 + v16;
          v19 = v17 == 0x7FFFFFFFFFFFFFFFLL;
          v17 = v14;
          v20 = v14 - v18;
          if (v19)
          {
            v20 = kEMFContextBuilderContextWindowLengthDefault;
          }

          v21 = (v14 - v20) & ~((v14 - v20) >> 63);
          if (v14 - v21 >= 1 && v14 - v21 < [contextCopy length])
          {
            blockCopy[2](blockCopy, v21, v14 - v21, v14, v15, &v32);
          }

          v16 = v15;
          v14 = [contextCopy rangeOfString:v11 options:1 range:v14 + v15 locale:{objc_msgSend(contextCopy, "length") - (v14 + v15), 0}];
          v15 = v22;
        }

        while (v14 != 0x7FFFFFFFFFFFFFFFLL);
      }

      if (++v10 == v26)
      {
        v26 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v26)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end