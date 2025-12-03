@interface HealthRecordsNotAvailableViewController
- (_TtC15HealthRecordsUI39HealthRecordsNotAvailableViewController)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI39HealthRecordsNotAvailableViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation HealthRecordsNotAvailableViewController

- (_TtC15HealthRecordsUI39HealthRecordsNotAvailableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D139016C();
    bundleCopy = bundle;
    v7 = sub_1D139012C();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for HealthRecordsNotAvailableViewController();
  v9 = [(HealthRecordsNotAvailableViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC15HealthRecordsUI39HealthRecordsNotAvailableViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HealthRecordsNotAvailableViewController();
  coderCopy = coder;
  v5 = [(HealthRecordsNotAvailableViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end