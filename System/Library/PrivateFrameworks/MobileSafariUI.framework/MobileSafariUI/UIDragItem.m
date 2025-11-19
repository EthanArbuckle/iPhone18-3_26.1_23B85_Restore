@interface UIDragItem
- (id)_safari_localTabDragMetadata;
@end

@implementation UIDragItem

- (id)_safari_localTabDragMetadata
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 localObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = [v1 localObject];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

@end