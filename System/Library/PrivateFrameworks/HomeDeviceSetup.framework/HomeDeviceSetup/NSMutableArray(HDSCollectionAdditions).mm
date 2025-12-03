@interface NSMutableArray(HDSCollectionAdditions)
- (void)hds_addNonNilObject:()HDSCollectionAdditions;
@end

@implementation NSMutableArray(HDSCollectionAdditions)

- (void)hds_addNonNilObject:()HDSCollectionAdditions
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

@end