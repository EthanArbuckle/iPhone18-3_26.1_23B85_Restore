@interface GKAnonymousPlayerInternal
- (BOOL)isEqual:(id)a3;
@end

@implementation GKAnonymousPlayerInternal

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

@end