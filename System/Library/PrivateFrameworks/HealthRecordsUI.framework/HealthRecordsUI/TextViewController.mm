@interface TextViewController
- (_TtC15HealthRecordsUI18TextViewController)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI18TextViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation TextViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D12B0198();
}

- (_TtC15HealthRecordsUI18TextViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D139016C();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI18TextViewController____lazy_storage___textView) = 0;
    v6 = a4;
    v7 = sub_1D139012C();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI18TextViewController____lazy_storage___textView) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for TextViewController();
  v9 = [(TextViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC15HealthRecordsUI18TextViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI18TextViewController____lazy_storage___textView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TextViewController();
  v4 = a3;
  v5 = [(TextViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end