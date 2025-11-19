@interface MedicationsHistoryViewController
- (_TtC19HealthMedicationsUI32MedicationsHistoryViewController)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI32MedicationsHistoryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation MedicationsHistoryViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for MedicationsHistoryViewController();
  v2 = v6.receiver;
  [(MedicationsHistoryViewController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemBlueColor];
    [v4 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC19HealthMedicationsUI32MedicationsHistoryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_228392000();
    v6 = a4;
    v7 = sub_228391FC0();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for MedicationsHistoryViewController();
  v9 = [(MedicationsHistoryViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC19HealthMedicationsUI32MedicationsHistoryViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MedicationsHistoryViewController();
  v4 = a3;
  v5 = [(MedicationsHistoryViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end