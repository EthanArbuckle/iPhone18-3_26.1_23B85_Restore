@interface UIDragItem
- (id)_safari_localTabDragMetadata;
@end

@implementation UIDragItem

- (id)_safari_localTabDragMetadata
{
  selfCopy = self;
  if (self)
  {
    localObject = [self localObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = [selfCopy localObject];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

@end