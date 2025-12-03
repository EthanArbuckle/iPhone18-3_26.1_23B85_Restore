@interface NSMutableArray
- (void)bds_addObjectIfNotNil:(id)nil;
@end

@implementation NSMutableArray

- (void)bds_addObjectIfNotNil:(id)nil
{
  if (nil)
  {
    [(NSMutableArray *)self addObject:?];
  }
}

@end