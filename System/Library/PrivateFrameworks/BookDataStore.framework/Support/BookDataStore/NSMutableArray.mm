@interface NSMutableArray
- (void)bds_addObjectIfNotNil:(id)a3;
@end

@implementation NSMutableArray

- (void)bds_addObjectIfNotNil:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self addObject:?];
  }
}

@end