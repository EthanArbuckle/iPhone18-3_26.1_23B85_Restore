@interface GKAnonymousPlayerInternal
- (BOOL)isEqual:(id)equal;
@end

@implementation GKAnonymousPlayerInternal

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

@end