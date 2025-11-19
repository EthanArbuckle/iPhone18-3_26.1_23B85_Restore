@interface MCProfileViewController
- (MCProfileViewController)initWithStyle:(int64_t)a3 profile:(id)a4 profileViewMode:(int64_t)a5;
@end

@implementation MCProfileViewController

- (MCProfileViewController)initWithStyle:(int64_t)a3 profile:(id)a4 profileViewMode:(int64_t)a5
{
  v6.receiver = self;
  v6.super_class = MCProfileViewController;
  return [(DMCProfileViewController *)&v6 initWithProfile:a4 viewMode:a5];
}

@end