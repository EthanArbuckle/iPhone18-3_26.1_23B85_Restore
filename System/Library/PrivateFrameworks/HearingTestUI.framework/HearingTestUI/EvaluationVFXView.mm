@interface EvaluationVFXView
- (CGRect)bounds;
- (_TtC13HearingTestUI17EvaluationVFXView)init;
- (_TtC13HearingTestUI17EvaluationVFXView)initWithCoder:(id)coder;
- (_TtC13HearingTestUI17EvaluationVFXView)initWithFrame:(CGRect)frame;
- (_TtC13HearingTestUI17EvaluationVFXView)initWithFrame:(CGRect)frame options:(id)options;
- (void)setBounds:(CGRect)bounds;
@end

@implementation EvaluationVFXView

- (CGRect)bounds
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for EvaluationVFXView();
  [(EvaluationVFXView *)&v15 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for EvaluationVFXView();
  selfCopy = self;
  [(EvaluationVFXView *)&v9 setBounds:x, y, width, height];
  sub_20CDA57FC();
}

- (_TtC13HearingTestUI17EvaluationVFXView)init
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_20CDA4C8C();

  return v2;
}

- (_TtC13HearingTestUI17EvaluationVFXView)initWithCoder:(id)coder
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_20CDA6E94();
}

- (_TtC13HearingTestUI17EvaluationVFXView)initWithFrame:(CGRect)frame options:(id)options
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HearingTestUI17EvaluationVFXView)initWithFrame:(CGRect)frame
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end