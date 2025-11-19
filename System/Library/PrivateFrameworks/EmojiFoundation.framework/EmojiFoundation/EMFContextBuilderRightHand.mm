@interface EMFContextBuilderRightHand
- (void)enumerateWindowsForContext:(id)a3 range:(_NSRange)a4 searchAnchors:(id)a5 usingBlock:(id)a6;
@end

@implementation EMFContextBuilderRightHand

- (void)enumerateWindowsForContext:(id)a3 range:(_NSRange)a4 searchAnchors:(id)a5 usingBlock:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v31 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v9;
  v23 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v23)
  {
    v24 = *v28;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v28 != v24)
      {
        objc_enumerationMutation(obj);
      }

      if (v31)
      {
        break;
      }

      v12 = *(*(&v27 + 1) + 8 * v11);
      v13 = [v8 rangeOfString:v12 options:1 range:a4.location locale:{a4.length, 0}];
      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = v13;
        v16 = v14;
        location = a4.location;
        length = a4.length;
        do
        {
          v19 = v15 + v16;
          if (v15 + v16 < 0)
          {
            goto LABEL_16;
          }

          v20 = kEMFContextBuilderContextWindowLengthDefault;
          if (v19 >= [v8 length])
          {
            goto LABEL_16;
          }

          v21 = v20 + v19;
          if (v20 + v19 >= location + length)
          {
            v21 = location + length;
          }

          v10[2](v10, v15 + v16, v21 - v19, v15, v16, &v31);
          length = [v8 length] - v19;
          v15 = [v8 rangeOfString:v12 options:1 range:v15 + v16 locale:{length, 0}];
          v16 = v22;
          location = v19;
        }

        while (v15 != 0x7FFFFFFFFFFFFFFFLL);
      }

      if (++v11 == v23)
      {
        v23 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v23)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_16:
}

@end