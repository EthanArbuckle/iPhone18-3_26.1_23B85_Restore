@interface DOMNode(DDCleanupExtensions)
- (void)dd_removeResultLinks;
@end

@implementation DOMNode(DDCleanupExtensions)

- (void)dd_removeResultLinks
{
  if ([self nodeType] == 1)
  {
    selfCopy = self;
    v2 = [selfCopy getElementsByTagName:@"A"];
    v3 = _DDArrayWithList(v2);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 arrayByAddingObject:selfCopy];

      v3 = v4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _DDRemoveResultLinksFromArrayOfAnchors(v3, 0);
    }

    v5 = selfCopy;
  }

  else
  {
    childNodes = [self childNodes];
    if ([childNodes length])
    {
      v6 = 0;
      do
      {
        v7 = [childNodes item:v6];
        [v7 dd_removeResultLinks];

        v6 = (v6 + 1);
      }

      while (v6 < [childNodes length]);
    }

    v5 = childNodes;
  }
}

@end