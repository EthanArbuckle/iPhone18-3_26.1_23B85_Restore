@interface TouchCancelScrollView#1inclosure#1invariableinitializationexpressionofDetailsTabBarView.scrollView
- (BOOL)touchesShouldCancelInContentView:(id)a3;
- (_TtCFIvC20CommunicationDetails17DetailsTabBarView10scrollViewCSo12UIScrollViewiU_FT_S1_L_21TouchCancelScrollView)initWithCoder:(id)a3;
- (_TtCFIvC20CommunicationDetails17DetailsTabBarView10scrollViewCSo12UIScrollViewiU_FT_S1_L_21TouchCancelScrollView)initWithFrame:(CGRect)a3;
@end

@implementation TouchCancelScrollView#1inclosure#1invariableinitializationexpressionofDetailsTabBarView.scrollView

- (BOOL)touchesShouldCancelInContentView:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

- (_TtCFIvC20CommunicationDetails17DetailsTabBarView10scrollViewCSo12UIScrollViewiU_FT_S1_L_21TouchCancelScrollView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for TouchCancelScrollView #1 in closure #1 in variable initialization expression of DetailsTabBarView.scrollView();
  v8 = [(TouchCancelScrollView *)&v10 #1:x];

  return v8;
}

- (_TtCFIvC20CommunicationDetails17DetailsTabBarView10scrollViewCSo12UIScrollViewiU_FT_S1_L_21TouchCancelScrollView)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for TouchCancelScrollView #1 in closure #1 in variable initialization expression of DetailsTabBarView.scrollView();
  v5 = a3;
  v6 = [(TouchCancelScrollView *)&v8 #1];

  if (v6)
  {
  }

  return v6;
}

@end