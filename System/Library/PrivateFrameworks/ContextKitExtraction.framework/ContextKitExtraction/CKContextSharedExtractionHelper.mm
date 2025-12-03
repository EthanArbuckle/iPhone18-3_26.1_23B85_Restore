@interface CKContextSharedExtractionHelper
+ (BOOL)_isRelevantForExtractionWithView:(id)view;
+ (BOOL)elementIsOnScreenWithView:(id)view window:(id)window;
+ (BOOL)textBlockLooksLikeAListWithText:(id)text;
+ (id)bestContentStringForWebViewUIElements:(id)elements andTitle:(id)title;
+ (id)bestImageForView:(id)view;
+ (id)blocksFromText:(id)text;
+ (void)descendantsRelevantForContentExtractionFromView:(id)view intoArray:(id)array;
@end

@implementation CKContextSharedExtractionHelper

+ (id)blocksFromText:(id)text
{
  v3 = MEMORY[0x1E696AB08];
  textCopy = text;
  whitespaceAndNewlineCharacterSet = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [textCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([v6 length])
  {
    if (blockCleanUpRegularExpression_once != -1)
    {
      +[CKContextSharedExtractionHelper blocksFromText:];
    }

    v7 = blockCleanUpRegularExpression_regex;
    v8 = [v7 stringByReplacingMatchesInString:v6 options:0 range:0 withTemplate:{objc_msgSend(v6, "length"), @"\n\n"}];

    v9 = [v8 componentsSeparatedByString:@"\n\n"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)textBlockLooksLikeAListWithText:(id)text
{
  v29 = *MEMORY[0x1E69E9840];
  textCopy = text;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [&unk_1F305C7C0 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(&unk_1F305C7C0);
        }

        v8 = [textCopy componentsSeparatedByString:*(*(&v23 + 1) + 8 * i)];
        if (([v8 count] - 1) >= 6)
        {
          v9 = v8;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (!v11)
          {

LABEL_23:
            v16 = 1;
            goto LABEL_24;
          }

          v12 = v11;
          v13 = 0;
          v14 = *v20;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v10);
              }

              if ([*(*(&v19 + 1) + 8 * j) length] > 0x54)
              {
                ++v13;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v12);

          if (!v13 || v13 / [v10 count] < 0.25)
          {
            goto LABEL_23;
          }
        }
      }

      v5 = [&unk_1F305C7C0 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_24:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (void)descendantsRelevantForContentExtractionFromView:(id)view intoArray:(id)array
{
  v33 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  arrayCopy = array;
  if ([self _isRelevantForExtractionWithView:viewCopy])
  {
    [arrayCopy addObject:viewCopy];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    subviews = [viewCopy subviews];
    reverseObjectEnumerator = [subviews reverseObjectEnumerator];

    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        v13 = 0;
        do
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v14 = *(*(&v28 + 1) + 8 * v13);
          if (![viewCopy clipsToBounds])
          {
            goto LABEL_9;
          }

          [viewCopy bounds];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;
          [v14 frame];
          v35.origin.x = v23;
          v35.origin.y = v24;
          v35.size.width = v25;
          v35.size.height = v26;
          v34.origin.x = v16;
          v34.origin.y = v18;
          v34.size.width = v20;
          v34.size.height = v22;
          if (CGRectIntersectsRect(v34, v35))
          {
LABEL_9:
            [self descendantsRelevantForContentExtractionFromView:v14 intoArray:arrayCopy];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

+ (id)bestContentStringForWebViewUIElements:(id)elements andTitle:(id)title
{
  v26 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  titleCopy = title;
  if ([elementsCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = elementsCopy;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          [v13 density];
          if (v14 > 43.0)
          {
            text = [v13 text];
            [array addObject:text];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v16 = [array componentsJoinedByString:@"\n\n"];
    if ([titleCopy length])
    {
      v17 = &stru_1F305A6D8;
      if (v16)
      {
        v17 = v16;
      }

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", titleCopy, @"\n\n", v17];

      v16 = v18;
    }
  }

  else
  {
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (BOOL)_isRelevantForExtractionWithView:(id)view
{
  viewCopy = view;
  if ([viewCopy isHidden])
  {
    goto LABEL_5;
  }

  [viewCopy alpha];
  if (v4 < 0.05)
  {
    goto LABEL_5;
  }

  [viewCopy frame];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  if (CGRectGetWidth(v13) < 30.0 || (v14.origin.x = x, v14.origin.y = y, v14.size.width = width, v14.size.height = height, CGRectGetHeight(v14) < 17.0))
  {
LABEL_5:
    LOBYTE(v9) = 0;
  }

  else
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v9 = [v12 isEqualToString:@"_UIActivityContentCollectionView"] ^ 1;
  }

  return v9;
}

+ (id)bestImageForView:(id)view
{
  viewCopy = view;
  [viewCopy frame];
  if (CGRectGetWidth(v11) < 40.0 || ([viewCopy frame], CGRectGetHeight(v12) < 40.0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = 0;
  }

  else
  {
    v4 = [viewCopy performSelector:sel_image];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    [v5 size];
    v6 = 0;
    if (v9 >= 250.0 && v8 >= 250.0)
    {
      v6 = v5;
    }
  }

  return v6;
}

+ (BOOL)elementIsOnScreenWithView:(id)view window:(id)window
{
  windowCopy = window;
  viewCopy = view;
  [viewCopy bounds];
  [viewCopy convertRect:windowCopy toView:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [viewCopy frame];
  v26 = v16;
  v27 = v15;

  [windowCopy bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v28.origin.x = v8;
  v28.origin.y = v10;
  v28.size.width = v12;
  v28.size.height = v14;
  v29.origin.x = v18;
  v29.origin.y = v20;
  v29.size.width = v22;
  v29.size.height = v24;
  result = CGRectIntersectsRect(v28, v29);
  if (v26 + v27 <= 0.0)
  {
    return 0;
  }

  return result;
}

@end