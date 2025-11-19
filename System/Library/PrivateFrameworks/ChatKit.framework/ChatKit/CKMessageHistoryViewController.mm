@interface CKMessageHistoryViewController
- (BOOL)dateSelection:(id)a3 canSelectDate:(id)a4;
- (CKMessageHistoryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)calendarView:(id)a3 decorationForDateComponents:(id)a4;
- (void)calendarView:(id)a3 didChangeVisibleDateComponentsFrom:(id)a4;
- (void)dateSelection:(id)a3 didSelectDate:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CKMessageHistoryViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_190CC1CC8();
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for MessageHistoryViewController();
  v2 = v6.receiver;
  [(CKMessageHistoryViewController *)&v6 viewDidLayoutSubviews];
  v3 = sub_190CC1BEC();
  [v3 intrinsicContentSize];
  v5 = v4;

  [v2 setPreferredContentSize_];
}

- (CKMessageHistoryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_190D56F10();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return MessageHistoryViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (id)calendarView:(id)a3 decorationForDateComponents:(id)a4
{
  v6 = sub_190D51180();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D510D0();
  v10 = a3;
  v11 = self;
  v12 = sub_190CC4B58();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)calendarView:(id)a3 didChangeVisibleDateComponentsFrom:(id)a4
{
  v5 = sub_190D51180();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D510D0();
  v9 = self;
  _s7ChatKit28MessageHistoryViewControllerC08calendarE0_34didChangeVisibleDateComponentsFromySo010UICalendarE0C_10Foundation0kL0VtF_0();

  (*(v6 + 8))(v8, v5);
}

- (void)dateSelection:(id)a3 didSelectDate:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD627D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  if (a4)
  {
    sub_190D510D0();
    v10 = sub_190D51180();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_190D51180();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a3;
  v13 = self;
  sub_190CC4F68(v9);

  sub_19022EEA4(v9, &qword_1EAD627D0);
}

- (BOOL)dateSelection:(id)a3 canSelectDate:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD627D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  if (a4)
  {
    sub_190D510D0();
    v10 = sub_190D51180();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_190D51180();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a3;
  v13 = self;
  v14 = sub_190CC549C(v9);

  sub_19022EEA4(v9, &qword_1EAD627D0);
  return v14;
}

@end