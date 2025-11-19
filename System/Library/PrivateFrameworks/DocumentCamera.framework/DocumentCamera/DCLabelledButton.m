@interface DCLabelledButton
- (DCLabelledButton)initWithSymbolName:(id)a3 subtitle:(id)a4;
- (UIMenu)menu;
- (void)addTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5;
- (void)removeTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5;
@end

@implementation DCLabelledButton

- (DCLabelledButton)initWithSymbolName:(id)a3 subtitle:(id)a4
{
  sub_2492ECA24();
  sub_2492ECA24();
  return LabelledButton.init(symbolName:subtitle:)();
}

- (UIMenu)menu
{
  v2 = [*(&self->super.super.super.super.super.isa + OBJC_IVAR___DCLabelledButton_backingButton) menu];

  return v2;
}

- (void)addTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5
{
  if (a3)
  {
    v8 = self;
    swift_unknownObjectRetain();
    sub_2492ECBF4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v9 = self;
  }

  sub_2492E7AB0(v10, a4, a5);

  sub_2492E8020(v10, &qword_27EEE1A60);
}

- (void)removeTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5
{
  if (a3)
  {
    v8 = self;
    swift_unknownObjectRetain();
    sub_2492ECBF4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v9 = self;
  }

  sub_2492E7D14(v10, a4, a5);

  sub_2492E8020(v10, &qword_27EEE1A60);
}

@end