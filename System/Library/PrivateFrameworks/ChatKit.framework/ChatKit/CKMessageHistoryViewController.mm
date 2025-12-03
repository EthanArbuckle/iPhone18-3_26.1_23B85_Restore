@interface CKMessageHistoryViewController
- (BOOL)dateSelection:(id)selection canSelectDate:(id)date;
- (CKMessageHistoryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)calendarView:(id)view decorationForDateComponents:(id)components;
- (void)calendarView:(id)view didChangeVisibleDateComponentsFrom:(id)from;
- (void)dateSelection:(id)selection didSelectDate:(id)date;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CKMessageHistoryViewController

- (void)viewDidLoad
{
  selfCopy = self;
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

- (CKMessageHistoryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_190D56F10();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return MessageHistoryViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (id)calendarView:(id)view decorationForDateComponents:(id)components
{
  v6 = sub_190D51180();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D510D0();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_190CC4B58();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)calendarView:(id)view didChangeVisibleDateComponentsFrom:(id)from
{
  v5 = sub_190D51180();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D510D0();
  selfCopy = self;
  _s7ChatKit28MessageHistoryViewControllerC08calendarE0_34didChangeVisibleDateComponentsFromySo010UICalendarE0C_10Foundation0kL0VtF_0();

  (*(v6 + 8))(v8, v5);
}

- (void)dateSelection:(id)selection didSelectDate:(id)date
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD627D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  if (date)
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

  selectionCopy = selection;
  selfCopy = self;
  sub_190CC4F68(v9);

  sub_19022EEA4(v9, &qword_1EAD627D0);
}

- (BOOL)dateSelection:(id)selection canSelectDate:(id)date
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD627D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  if (date)
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

  selectionCopy = selection;
  selfCopy = self;
  v14 = sub_190CC549C(v9);

  sub_19022EEA4(v9, &qword_1EAD627D0);
  return v14;
}

@end