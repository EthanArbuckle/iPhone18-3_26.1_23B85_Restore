@interface EngagementBubbleTipViewController
- (_TtC14NewsEngagement33EngagementBubbleTipViewController)initWithCoder:(id)coder;
- (_TtC14NewsEngagement33EngagementBubbleTipViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC14NewsEngagement33EngagementBubbleTipViewController)initWithRequest:(id)request;
- (_TtC14NewsEngagement33EngagementBubbleTipViewController)initWithRequest:(id)request bag:(id)bag account:(id)account;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_25BE8C6A8(appear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(EngagementBubbleTipViewController *)&v5 viewIsAppearing:appearingCopy];
  sub_25BE8C40C();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_25BE8C8D4(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC14NewsEngagement33EngagementBubbleTipViewController)initWithRequest:(id)request
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC14NewsEngagement33EngagementBubbleTipViewController_bubbleTipSizing;
  *v6 = 0;
  v6[8] = 1;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(AMSUIBubbleTipViewController *)&v8 initWithRequest:request];
}

- (_TtC14NewsEngagement33EngagementBubbleTipViewController)initWithRequest:(id)request bag:(id)bag account:(id)account
{
  ObjectType = swift_getObjectType();
  v10 = self + OBJC_IVAR____TtC14NewsEngagement33EngagementBubbleTipViewController_bubbleTipSizing;
  *v10 = 0;
  v10[8] = 1;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(AMSUIBubbleTipViewController *)&v12 initWithRequest:request bag:bag account:account];
}

- (_TtC14NewsEngagement33EngagementBubbleTipViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_25BEB4884();
    v8 = self + OBJC_IVAR____TtC14NewsEngagement33EngagementBubbleTipViewController_bubbleTipSizing;
    *v8 = 0;
    v8[8] = 1;
    bundleCopy = bundle;
    name = sub_25BEB4874();
  }

  else
  {
    v10 = self + OBJC_IVAR____TtC14NewsEngagement33EngagementBubbleTipViewController_bubbleTipSizing;
    *v10 = 0;
    v10[8] = 1;
    bundleCopy2 = bundle;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(EngagementBubbleTipViewController *)&v14 initWithNibName:name bundle:bundle];

  return v12;
}

- (_TtC14NewsEngagement33EngagementBubbleTipViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC14NewsEngagement33EngagementBubbleTipViewController_bubbleTipSizing;
  *v6 = 0;
  v6[8] = 1;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(EngagementBubbleTipViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end