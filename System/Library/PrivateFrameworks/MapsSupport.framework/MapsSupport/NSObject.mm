@interface NSObject
- (BOOL)_maps_needsUpdateWithSelector:(SEL)selector;
- (void)_maps_setNeedsUpdate:(BOOL)update withSelector:(SEL)selector;
@end

@implementation NSObject

- (void)_maps_setNeedsUpdate:(BOOL)update withSelector:(SEL)selector
{
  updateCopy = update;
  v7 = objc_getAssociatedObject(self, off_10009DF98);
  v8 = v7;
  if (updateCopy)
  {
    if (!v7)
    {
      v8 = objc_alloc_init(NSMutableSet);
      objc_setAssociatedObject(self, off_10009DF98, v8, 1);
    }

    v9 = NSStringFromSelector(selector);
    [v8 addObject:v9];

    v10 = objc_getAssociatedObject(self, off_10009DF90);

    if (!v10)
    {
      objc_setAssociatedObject(self, off_10009DF90, &__kCFBooleanTrue, 3);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100027B44;
      block[3] = &unk_100084F10;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
    v11 = NSStringFromSelector(selector);
    [v8 removeObject:v11];
  }
}

- (BOOL)_maps_needsUpdateWithSelector:(SEL)selector
{
  v4 = objc_getAssociatedObject(self, off_10009DF98);
  v5 = NSStringFromSelector(selector);
  v6 = [v4 containsObject:v5];

  return v6;
}

@end