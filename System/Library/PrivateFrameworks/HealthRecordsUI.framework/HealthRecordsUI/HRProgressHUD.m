@interface HRProgressHUD
- (_TtC15HealthRecordsUI13HRProgressHUD)initWithCoder:(id)a3;
- (void)didMoveToSuperview;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation HRProgressHUD

- (void)willMoveToSuperview:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D127E098(a3);
}

- (void)didMoveToSuperview
{
  v2 = self;
  sub_1D127E204();
}

- (_TtC15HealthRecordsUI13HRProgressHUD)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for HRProgressHUD();
  v5 = a3;
  v6 = [(ProgressHUD *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end