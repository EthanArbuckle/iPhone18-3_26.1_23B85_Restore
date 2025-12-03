@interface MCProfileViewController
- (MCProfileViewController)initWithStyle:(int64_t)style profile:(id)profile profileViewMode:(int64_t)mode;
@end

@implementation MCProfileViewController

- (MCProfileViewController)initWithStyle:(int64_t)style profile:(id)profile profileViewMode:(int64_t)mode
{
  v6.receiver = self;
  v6.super_class = MCProfileViewController;
  return [(DMCProfileViewController *)&v6 initWithProfile:profile viewMode:mode];
}

@end