@interface DOMNode(DDExtensions)
- (uint64_t)dd_searchForLinkRemovingExistingDDLinksWithEndNode:()DDExtensions didModifyDOM:;
@end

@implementation DOMNode(DDExtensions)

- (uint64_t)dd_searchForLinkRemovingExistingDDLinksWithEndNode:()DDExtensions didModifyDOM:
{
  v6 = a3;
  v7 = a1;
  if (a4)
  {
    *a4 = 0;
  }

  if (!v7)
  {
    goto LABEL_46;
  }

  v8 = *MEMORY[0x277D04208];
  v9 = v7;
  v10 = v7;
  do
  {
    while (1)
    {
      v11 = v10;
      if ([v11 nodeType] != 1)
      {

        goto LABEL_17;
      }

      v12 = [v11 tagName];
      if ([v12 length] != 1 || (objc_msgSend(v12, "characterAtIndex:", 0) & 0xFFFFFFDF) != 0x41)
      {

        if (v11 != v6)
        {
          goto LABEL_20;
        }

LABEL_32:
        v14 = [v9 parentNode];

        if (v14)
        {
          while (1)
          {
            v25 = v14;
            if ([v25 nodeType] != 1)
            {
              goto LABEL_35;
            }

            v26 = [v25 tagName];
            if ([v26 length] != 1 || (objc_msgSend(v26, "characterAtIndex:", 0) & 0xFFFFFFDF) != 0x41)
            {
              break;
            }

            v27 = [v25 hasAttribute:@"href"];

            if (v27)
            {
              v14 = v25;
              if ([v14 nodeType] != 1 || !objc_msgSend(v14, "hasAttribute:", @"href"))
              {
                goto LABEL_48;
              }

              v28 = [v14 getAttribute:@"href"];
              v29 = [v28 hasPrefix:v8];

              if (!v29)
              {
                goto LABEL_49;
              }

              _removeDataDetectorLinkInNode(v14);
              if (a4)
              {
                *a4 = 1;
              }
            }

LABEL_36:
            v14 = [v25 parentNode];

            if (!v14)
            {
              goto LABEL_28;
            }
          }

LABEL_35:
          goto LABEL_36;
        }

LABEL_46:
        v24 = 0;
        goto LABEL_47;
      }

      v13 = [v11 hasAttribute:@"href"];

      if (v13)
      {
        v14 = v11;
        if ([v14 nodeType] != 1 || !objc_msgSend(v14, "hasAttribute:", @"href"))
        {
LABEL_48:
          v24 = 1;
          v19 = v14;
LABEL_30:

          v14 = v19;
          goto LABEL_31;
        }

        v15 = [v14 getAttribute:@"href"];
        v16 = [v15 hasPrefix:v8];

        if (!v16)
        {
LABEL_49:
          v24 = 1;
          goto LABEL_31;
        }

        _removeDataDetectorLinkInNode(v14);
        if (a4)
        {
          *a4 = 1;
          if (v11 == v6)
          {
            goto LABEL_32;
          }

          goto LABEL_20;
        }
      }

LABEL_17:
      if (v11 == v6)
      {
        goto LABEL_32;
      }

LABEL_20:
      v14 = [v11 childNodes];
      if (![v14 length])
      {
        break;
      }

      v10 = [v14 item:0];

      if (!v10)
      {
        goto LABEL_27;
      }
    }

    v17 = [v11 nextSibling];
    v18 = v11;
    v19 = v18;
    if (!v17)
    {
      v21 = v18;
      while (1)
      {
        v22 = v21;
        v21 = [v21 parentNode];

        if (!v21)
        {
          break;
        }

        v20 = [v21 nextSibling];
        if (v20)
        {
          goto LABEL_26;
        }
      }

      v24 = 0;
      goto LABEL_30;
    }

    v20 = v17;
    v21 = v19;
LABEL_26:
    v23 = v20;

    v10 = v23;
  }

  while (v23);
LABEL_27:
  v14 = 0;
LABEL_28:
  v24 = 0;
LABEL_31:

LABEL_47:
  return v24;
}

@end