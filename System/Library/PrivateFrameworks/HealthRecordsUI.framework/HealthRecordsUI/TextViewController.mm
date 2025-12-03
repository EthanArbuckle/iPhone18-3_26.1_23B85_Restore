@interface TextViewController
- (_TtC15HealthRecordsUI18TextViewController)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI18TextViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation TextViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D12B0198();
}

- (_TtC15HealthRecordsUI18TextViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D139016C();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI18TextViewController____lazy_storage___textView) = 0;
    bundleCopy = bundle;
    v7 = sub_1D139012C();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI18TextViewController____lazy_storage___textView) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for TextViewController();
  v9 = [(TextViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC15HealthRecordsUI18TextViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI18TextViewController____lazy_storage___textView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TextViewController();
  coderCopy = coder;
  v5 = [(TextViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end