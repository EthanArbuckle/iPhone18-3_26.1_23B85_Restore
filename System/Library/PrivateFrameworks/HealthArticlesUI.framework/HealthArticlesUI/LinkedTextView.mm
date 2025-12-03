@interface LinkedTextView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (_TtC16HealthArticlesUI14LinkedTextView)initWithCoder:(id)coder;
- (_TtC16HealthArticlesUI14LinkedTextView)initWithFrame:(CGRect)frame;
@end

@implementation LinkedTextView

- (_TtC16HealthArticlesUI14LinkedTextView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_25131C6E4(x, y, width, height);

  return v7;
}

- (_TtC16HealthArticlesUI14LinkedTextView)initWithCoder:(id)coder
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self + OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = -1;
  v5 = OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkContent;
  v6 = type metadata accessor for HealthArticleComponent.LinkContent(0);
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v7 = self + OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_rangeOfLink;
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  result = sub_25133FC14();
  __break(1u);
  return result;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v8 = sub_25133EFC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25133EFB4();
  viewCopy = view;
  selfCopy = self;
  v16 = sub_25131D838();

  (*(v9 + 8))(v13, v8);

  return v16 & 1;
}

@end