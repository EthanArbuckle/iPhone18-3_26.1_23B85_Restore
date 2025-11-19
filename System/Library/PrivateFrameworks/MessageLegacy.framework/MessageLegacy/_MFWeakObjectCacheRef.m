@interface _MFWeakObjectCacheRef
- (void)dealloc;
@end

@implementation _MFWeakObjectCacheRef

- (void)dealloc
{
  [objc_loadWeak(&self->_cache) objectForKey:self->_key shouldGenerate:0 wasCached:0];

  v3.receiver = self;
  v3.super_class = _MFWeakObjectCacheRef;
  [(_MFWeakObjectCacheRef *)&v3 dealloc];
}

@end