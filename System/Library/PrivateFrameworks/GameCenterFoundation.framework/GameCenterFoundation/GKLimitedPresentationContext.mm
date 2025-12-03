@interface GKLimitedPresentationContext
- (GKLimitedPresentationContext)initWithScope:(int64_t)scope elementType:(int64_t)type;
@end

@implementation GKLimitedPresentationContext

- (GKLimitedPresentationContext)initWithScope:(int64_t)scope elementType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = GKLimitedPresentationContext;
  result = [(GKLimitedPresentationContext *)&v7 init];
  if (result)
  {
    result->_scope = scope;
    result->_elementType = type;
  }

  return result;
}

@end