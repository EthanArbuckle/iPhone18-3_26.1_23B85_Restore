@interface DCLabelledButton
- (DCLabelledButton)initWithSymbolName:(id)name subtitle:(id)subtitle;
- (UIMenu)menu;
- (void)addTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events;
- (void)removeTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events;
@end

@implementation DCLabelledButton

- (DCLabelledButton)initWithSymbolName:(id)name subtitle:(id)subtitle
{
  sub_2492ECA24();
  sub_2492ECA24();
  return LabelledButton.init(symbolName:subtitle:)();
}

- (UIMenu)menu
{
  menu = [*(&self->super.super.super.super.super.isa + OBJC_IVAR___DCLabelledButton_backingButton) menu];

  return menu;
}

- (void)addTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events
{
  if (target)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2492ECBF4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  sub_2492E7AB0(v10, action, events);

  sub_2492E8020(v10, &qword_27EEE1A60);
}

- (void)removeTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events
{
  if (target)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2492ECBF4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  sub_2492E7D14(v10, action, events);

  sub_2492E8020(v10, &qword_27EEE1A60);
}

@end