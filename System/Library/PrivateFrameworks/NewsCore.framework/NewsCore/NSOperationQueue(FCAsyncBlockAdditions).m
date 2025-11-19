@interface NSOperationQueue(FCAsyncBlockAdditions)
- (void)fc_addAsyncOperationWithBlock:()FCAsyncBlockAdditions;
@end

@implementation NSOperationQueue(FCAsyncBlockAdditions)

- (void)fc_addAsyncOperationWithBlock:()FCAsyncBlockAdditions
{
  v2 = [FCAsyncBlockOperation asyncBlockOperationWithBlock:?];
  [a1 addOperation:v2];
}

@end