@interface TextItemCell
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (_TtC19HealthMedicationsUI12TextItemCell)initWithCoder:(id)a3;
- (void)didTapDoneWithSender:(id)a3;
- (void)textViewDidChange:(id)a3;
@end

@implementation TextItemCell

- (_TtC19HealthMedicationsUI12TextItemCell)initWithCoder:(id)a3
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

- (void)didTapDoneWithSender:(id)a3
{
  v4 = self;
  v3 = sub_22826B6C4();
  [v3 resignFirstResponder];
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = sub_228392000();
  v11 = v10;
  v12 = a3;
  v13 = self;
  LOBYTE(length) = sub_22826C6A4(v12, location, length, v9, v11);

  return length & 1;
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22826CC70(v4);
}

@end