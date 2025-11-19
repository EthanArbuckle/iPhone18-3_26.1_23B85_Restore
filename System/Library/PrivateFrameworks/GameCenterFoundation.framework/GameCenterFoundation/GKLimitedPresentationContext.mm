@interface GKLimitedPresentationContext
- (GKLimitedPresentationContext)initWithScope:(int64_t)a3 elementType:(int64_t)a4;
@end

@implementation GKLimitedPresentationContext

- (GKLimitedPresentationContext)initWithScope:(int64_t)a3 elementType:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = GKLimitedPresentationContext;
  result = [(GKLimitedPresentationContext *)&v7 init];
  if (result)
  {
    result->_scope = a3;
    result->_elementType = a4;
  }

  return result;
}

@end