@interface DOMNode(DDExtensions)
- (uint64_t)dd_searchForLinkRemovingExistingDDLinksWithEndNode:()DDExtensions didModifyDOM:;
@end

@implementation DOMNode(DDExtensions)

- (uint64_t)dd_searchForLinkRemovingExistingDDLinksWithEndNode:()DDExtensions didModifyDOM:
{
  v6 = a3;
  selfCopy = self;
  if (a4)
  {
    *a4 = 0;
  }

  if (!selfCopy)
  {
    goto LABEL_46;
  }

  v8 = *MEMORY[0x277D04208];
  v9 = selfCopy;
  v10 = selfCopy;
  do
  {
    while (1)
    {
      v11 = v10;
      if ([v11 nodeType] != 1)
      {

        goto LABEL_17;
      }

      tagName = [v11 tagName];
      if ([tagName length] != 1 || (objc_msgSend(tagName, "characterAtIndex:", 0) & 0xFFFFFFDF) != 0x41)
      {

        if (v11 != v6)
        {
          goto LABEL_20;
        }

LABEL_32:
        parentNode = [v9 parentNode];

        if (parentNode)
        {
          while (1)
          {
            v25 = parentNode;
            if ([v25 nodeType] != 1)
            {
              goto LABEL_35;
            }

            tagName2 = [v25 tagName];
            if ([tagName2 length] != 1 || (objc_msgSend(tagName2, "characterAtIndex:", 0) & 0xFFFFFFDF) != 0x41)
            {
              break;
            }

            v27 = [v25 hasAttribute:@"href"];

            if (v27)
            {
              parentNode = v25;
              if ([parentNode nodeType] != 1 || !objc_msgSend(parentNode, "hasAttribute:", @"href"))
              {
                goto LABEL_48;
              }

              v28 = [parentNode getAttribute:@"href"];
              v29 = [v28 hasPrefix:v8];

              if (!v29)
              {
                goto LABEL_49;
              }

              _removeDataDetectorLinkInNode(parentNode);
              if (a4)
              {
                *a4 = 1;
              }
            }

LABEL_36:
            parentNode = [v25 parentNode];

            if (!parentNode)
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
        parentNode = v11;
        if ([parentNode nodeType] != 1 || !objc_msgSend(parentNode, "hasAttribute:", @"href"))
        {
LABEL_48:
          v24 = 1;
          v19 = parentNode;
LABEL_30:

          parentNode = v19;
          goto LABEL_31;
        }

        v15 = [parentNode getAttribute:@"href"];
        v16 = [v15 hasPrefix:v8];

        if (!v16)
        {
LABEL_49:
          v24 = 1;
          goto LABEL_31;
        }

        _removeDataDetectorLinkInNode(parentNode);
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
      parentNode = [v11 childNodes];
      if (![parentNode length])
      {
        break;
      }

      v10 = [parentNode item:0];

      if (!v10)
      {
        goto LABEL_27;
      }
    }

    nextSibling = [v11 nextSibling];
    v18 = v11;
    v19 = v18;
    if (!nextSibling)
    {
      parentNode2 = v18;
      while (1)
      {
        v22 = parentNode2;
        parentNode2 = [parentNode2 parentNode];

        if (!parentNode2)
        {
          break;
        }

        nextSibling2 = [parentNode2 nextSibling];
        if (nextSibling2)
        {
          goto LABEL_26;
        }
      }

      v24 = 0;
      goto LABEL_30;
    }

    nextSibling2 = nextSibling;
    parentNode2 = v19;
LABEL_26:
    v23 = nextSibling2;

    v10 = v23;
  }

  while (v23);
LABEL_27:
  parentNode = 0;
LABEL_28:
  v24 = 0;
LABEL_31:

LABEL_47:
  return v24;
}

@end