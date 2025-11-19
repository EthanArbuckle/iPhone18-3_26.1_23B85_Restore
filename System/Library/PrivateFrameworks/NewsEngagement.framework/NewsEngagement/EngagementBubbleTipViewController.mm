@interface EngagementBubbleTipViewController
- (_TtC14NewsEngagement33EngagementBubbleTipViewController)initWithCoder:(id)a3;
- (_TtC14NewsEngagement33EngagementBubbleTipViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC14NewsEngagement33EngagementBubbleTipViewController)initWithRequest:(id)a3;
- (_TtC14NewsEngagement33EngagementBubbleTipViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation EngagementBubbleTipViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(AMSUIBaseMessageViewController *)&v6 viewDidLoad];
  sub_25BE8CFD0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BEB60E0;
  v4 = sub_25BEB4794();
  v5 = MEMORY[0x277D74DB8];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_25BEB4A74();
  swift_unknownObjectRelease();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_25BE8C6A8(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(EngagementBubbleTipViewController *)&v5 viewIsAppearing:v3];
  sub_25BE8C40C();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_25BE8C8D4(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC14NewsEngagement33EngagementBubbleTipViewController)initWithRequest:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC14NewsEngagement33EngagementBubbleTipViewController_bubbleTipSizing;
  *v6 = 0;
  v6[8] = 1;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(AMSUIBubbleTipViewController *)&v8 initWithRequest:a3];
}

- (_TtC14NewsEngagement33EngagementBubbleTipViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5
{
  ObjectType = swift_getObjectType();
  v10 = self + OBJC_IVAR____TtC14NewsEngagement33EngagementBubbleTipViewController_bubbleTipSizing;
  *v10 = 0;
  v10[8] = 1;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(AMSUIBubbleTipViewController *)&v12 initWithRequest:a3 bag:a4 account:a5];
}

- (_TtC14NewsEngagement33EngagementBubbleTipViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_25BEB4884();
    v8 = self + OBJC_IVAR____TtC14NewsEngagement33EngagementBubbleTipViewController_bubbleTipSizing;
    *v8 = 0;
    v8[8] = 1;
    v9 = a4;
    a3 = sub_25BEB4874();
  }

  else
  {
    v10 = self + OBJC_IVAR____TtC14NewsEngagement33EngagementBubbleTipViewController_bubbleTipSizing;
    *v10 = 0;
    v10[8] = 1;
    v11 = a4;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(EngagementBubbleTipViewController *)&v14 initWithNibName:a3 bundle:a4];

  return v12;
}

- (_TtC14NewsEngagement33EngagementBubbleTipViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC14NewsEngagement33EngagementBubbleTipViewController_bubbleTipSizing;
  *v6 = 0;
  v6[8] = 1;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(EngagementBubbleTipViewController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end