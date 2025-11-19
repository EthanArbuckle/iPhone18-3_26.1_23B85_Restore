@interface RecommendationsViewController
- (_TtC21CloudRecommendationUI29RecommendationsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation RecommendationsViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_243A61B74();
}

- (_TtC21CloudRecommendationUI29RecommendationsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_243AC2858();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_243A63B24(v5, v7, a4);
}

@end