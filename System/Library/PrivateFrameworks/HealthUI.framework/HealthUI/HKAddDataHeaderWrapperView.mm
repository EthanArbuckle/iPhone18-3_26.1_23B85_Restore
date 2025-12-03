@interface HKAddDataHeaderWrapperView
- (HKAddDataHeaderWrapperView)initWithCoder:(id)coder;
- (HKAddDataHeaderWrapperView)initWithDisplayType:(id)type;
- (HKAddDataHeaderWrapperView)initWithReuseIdentifier:(id)identifier;
- (HKAddDataHeaderWrapperView)initWithTitle:(id)title bundledIconImage:(id)image;
- (HKAddDataHeaderWrapperView)initWithTitle:(id)title iconSystemImageName:(id)name iconImageColor:(id)color;
@end

@implementation HKAddDataHeaderWrapperView

- (HKAddDataHeaderWrapperView)initWithTitle:(id)title iconSystemImageName:(id)name iconImageColor:(id)color
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
  colorCopy = color;
  v7 = sub_1C3C7EF38();

  return v7;
}

- (HKAddDataHeaderWrapperView)initWithTitle:(id)title bundledIconImage:(id)image
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3D20104();
  imageCopy = image;
  v6 = sub_1C3C7F090();

  return v6;
}

- (HKAddDataHeaderWrapperView)initWithDisplayType:(id)type
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = HKAddDataHeaderWrapperView.init(displayType:)(type);

  return v4;
}

- (HKAddDataHeaderWrapperView)initWithReuseIdentifier:(id)identifier
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

- (HKAddDataHeaderWrapperView)initWithCoder:(id)coder
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