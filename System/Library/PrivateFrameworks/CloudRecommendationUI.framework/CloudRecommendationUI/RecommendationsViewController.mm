@interface RecommendationsViewController
- (_TtC21CloudRecommendationUI29RecommendationsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation RecommendationsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_243A61B74();
}

- (_TtC21CloudRecommendationUI29RecommendationsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_243AC2858();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_243A63B24(v5, v7, bundle);
}

@end