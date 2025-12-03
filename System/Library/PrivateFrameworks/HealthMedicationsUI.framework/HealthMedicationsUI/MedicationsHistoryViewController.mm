@interface MedicationsHistoryViewController
- (_TtC19HealthMedicationsUI32MedicationsHistoryViewController)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI32MedicationsHistoryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation MedicationsHistoryViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for MedicationsHistoryViewController();
  v2 = v6.receiver;
  [(MedicationsHistoryViewController *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    systemBlueColor = [objc_opt_self() systemBlueColor];
    [v4 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC19HealthMedicationsUI32MedicationsHistoryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_228392000();
    bundleCopy = bundle;
    v7 = sub_228391FC0();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for MedicationsHistoryViewController();
  v9 = [(MedicationsHistoryViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC19HealthMedicationsUI32MedicationsHistoryViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MedicationsHistoryViewController();
  coderCopy = coder;
  v5 = [(MedicationsHistoryViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end