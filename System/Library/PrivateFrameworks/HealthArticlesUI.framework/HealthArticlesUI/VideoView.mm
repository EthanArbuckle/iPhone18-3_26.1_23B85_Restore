@interface VideoView
- (NSString)accessibilityVideoDescription;
- (_TtC16HealthArticlesUI9VideoView)initWithCoder:(id)coder;
- (_TtC16HealthArticlesUI9VideoView)initWithFrame:(CGRect)frame;
- (void)nonLoopingEndOfPlay:(NSNotification *)play completionHandler:(id)handler;
- (void)setAccessibilityVideoDescription:(id)description;
@end

@implementation VideoView

- (NSString)accessibilityVideoDescription
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = (self + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_accessibilityVideoDescription);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = sub_25133F724();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityVideoDescription:(id)description
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (description)
  {
    description = sub_25133F754();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_accessibilityVideoDescription);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = description;
  v7[1] = v6;
}

- (_TtC16HealthArticlesUI9VideoView)initWithFrame:(CGRect)frame
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

  v7 = sub_2513363E0(x, y, width, height);

  return v7;
}

- (_TtC16HealthArticlesUI9VideoView)initWithCoder:(id)coder
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25133D0D0();
}

- (void)nonLoopingEndOfPlay:(NSNotification *)play completionHandler:(id)handler
{
  sub_251337C04(0, &qword_27F42B470, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = play;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_25133F914();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_251342640;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_251342650;
  v16[5] = v15;
  playCopy = play;
  selfCopy = self;
  sub_25133CC1C(0, 0, v11, &unk_251342660, v16);
}

@end