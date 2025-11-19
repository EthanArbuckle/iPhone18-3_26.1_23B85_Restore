@interface DOMNode(DDCleanupExtensions)
- (void)dd_removeResultLinks;
@end

@implementation DOMNode(DDCleanupExtensions)

- (void)dd_removeResultLinks
{
  if ([a1 nodeType] == 1)
  {
    v8 = a1;
    v2 = [v8 getElementsByTagName:@"A"];
    v3 = _DDArrayWithList(v2);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 arrayByAddingObject:v8];

      v3 = v4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _DDRemoveResultLinksFromArrayOfAnchors(v3, 0);
    }

    v5 = v8;
  }

  else
  {
    v9 = [a1 childNodes];
    if ([v9 length])
    {
      v6 = 0;
      do
      {
        v7 = [v9 item:v6];
        [v7 dd_removeResultLinks];

        v6 = (v6 + 1);
      }

      while (v6 < [v9 length]);
    }

    v5 = v9;
  }
}

@end