@interface DOCThumbnailBatchingToken
- (void)dealloc;
@end

@implementation DOCThumbnailBatchingToken

- (void)dealloc
{
  if (!self->_invalidated)
  {
    [(DOCThumbnailBatchingToken *)self _setInvalidated:1];
    v3 = +[DOCThumbnailGenerator sharedGenerator];
    [v3 endBatching:self];
  }

  v4.receiver = self;
  v4.super_class = DOCThumbnailBatchingToken;
  [(DOCThumbnailBatchingToken *)&v4 dealloc];
}

@end