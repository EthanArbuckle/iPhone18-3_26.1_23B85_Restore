@interface HKAddDataHeaderWrapperView
- (HKAddDataHeaderWrapperView)initWithCoder:(id)a3;
- (HKAddDataHeaderWrapperView)initWithDisplayType:(id)a3;
- (HKAddDataHeaderWrapperView)initWithReuseIdentifier:(id)a3;
- (HKAddDataHeaderWrapperView)initWithTitle:(id)a3 bundledIconImage:(id)a4;
- (HKAddDataHeaderWrapperView)initWithTitle:(id)a3 iconSystemImageName:(id)a4 iconImageColor:(id)a5;
@end

@implementation HKAddDataHeaderWrapperView

- (HKAddDataHeaderWrapperView)initWithTitle:(id)a3 iconSystemImageName:(id)a4 iconImageColor:(id)a5
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3D20104();
  sub_1C3D20104();
  v6 = a5;
  v7 = sub_1C3C7EF38();

  return v7;
}

- (HKAddDataHeaderWrapperView)initWithTitle:(id)a3 bundledIconImage:(id)a4
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3D20104();
  v5 = a4;
  v6 = sub_1C3C7F090();

  return v6;
}

- (HKAddDataHeaderWrapperView)initWithDisplayType:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = HKAddDataHeaderWrapperView.init(displayType:)(a3);

  return v4;
}

- (HKAddDataHeaderWrapperView)initWithReuseIdentifier:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_1C3D20944();
  __break(1u);
  return result;
}

- (HKAddDataHeaderWrapperView)initWithCoder:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_1C3D20944();
  __break(1u);
  return result;
}

@end