@interface NSOperationQueue(FCAsyncBlockAdditions)
- (void)fc_addAsyncOperationWithBlock:()FCAsyncBlockAdditions;
@end

@implementation NSOperationQueue(FCAsyncBlockAdditions)

- (void)fc_addAsyncOperationWithBlock:()FCAsyncBlockAdditions
{
  v2 = [FCAsyncBlockOperation asyncBlockOperationWithBlock:?];
  [self addOperation:v2];
}

@end