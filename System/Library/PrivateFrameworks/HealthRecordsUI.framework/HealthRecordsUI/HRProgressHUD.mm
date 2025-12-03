@interface HRProgressHUD
- (_TtC15HealthRecordsUI13HRProgressHUD)initWithCoder:(id)coder;
- (void)didMoveToSuperview;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation HRProgressHUD

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  selfCopy = self;
  sub_1D127E098(superview);
}

- (void)didMoveToSuperview
{
  selfCopy = self;
  sub_1D127E204();
}

- (_TtC15HealthRecordsUI13HRProgressHUD)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for HRProgressHUD();
  coderCopy = coder;
  v6 = [(ProgressHUD *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end