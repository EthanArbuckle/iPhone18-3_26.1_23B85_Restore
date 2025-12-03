@interface EvaluationVFXViewController
- (_TtC13HearingTestUIP33_082BE27A287B6DD65B327A94BB91711E27EvaluationVFXViewController)initWithCoder:(id)coder;
- (_TtC13HearingTestUIP33_082BE27A287B6DD65B327A94BB91711E27EvaluationVFXViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleTap;
@end

@implementation EvaluationVFXViewController

- (void)handleTap
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13HearingTestUIP33_082BE27A287B6DD65B327A94BB91711E27EvaluationVFXViewController_vfxView);
  selfCopy = self;
  sub_20CDA66F0();
}

- (_TtC13HearingTestUIP33_082BE27A287B6DD65B327A94BB91711E27EvaluationVFXViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    sub_20CE13954();
    name = v7;
  }

  v8 = OBJC_IVAR____TtC13HearingTestUIP33_082BE27A287B6DD65B327A94BB91711E27EvaluationVFXViewController_vfxView;
  v9 = objc_allocWithZone(type metadata accessor for EvaluationVFXView());
  bundleCopy = bundle;
  *(&self->super.super.super.isa + v8) = [v9 init];
  if (name)
  {
    v11 = sub_20CE13914();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for EvaluationVFXViewController();
  v12 = [(EvaluationVFXViewController *)&v14 initWithNibName:v11 bundle:bundleCopy];

  return v12;
}

- (_TtC13HearingTestUIP33_082BE27A287B6DD65B327A94BB91711E27EvaluationVFXViewController)initWithCoder:(id)coder
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = OBJC_IVAR____TtC13HearingTestUIP33_082BE27A287B6DD65B327A94BB91711E27EvaluationVFXViewController_vfxView;
  v6 = objc_allocWithZone(type metadata accessor for EvaluationVFXView());
  coderCopy = coder;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for EvaluationVFXViewController();
  v8 = [(EvaluationVFXViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end