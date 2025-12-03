@interface TextItemCell
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (_TtC19HealthMedicationsUI12TextItemCell)initWithCoder:(id)coder;
- (void)didTapDoneWithSender:(id)sender;
- (void)textViewDidChange:(id)change;
@end

@implementation TextItemCell

- (_TtC19HealthMedicationsUI12TextItemCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell____lazy_storage___textView) = 0;
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

- (void)didTapDoneWithSender:(id)sender
{
  selfCopy = self;
  v3 = sub_22826B6C4();
  [v3 resignFirstResponder];
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  v9 = sub_228392000();
  v11 = v10;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(length) = sub_22826C6A4(viewCopy, location, length, v9, v11);

  return length & 1;
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_22826CC70(changeCopy);
}

@end