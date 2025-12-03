@interface OutlineDisclosureButton
- (NSArray)accessibilityUserInputLabels;
- (NSString)accessibilityLabel;
- (_TtC11NotesEditor23OutlineDisclosureButton)initWithCoder:(id)coder;
- (_TtC11NotesEditor23OutlineDisclosureButton)initWithFrame:(CGRect)frame;
- (int64_t)writingDirection;
- (unint64_t)accessibilityTraits;
- (void)contentSizeCategoryDidChange;
- (void)setAccessibilityTraits:(unint64_t)traits;
- (void)setWritingDirection:(int64_t)direction;
@end

@implementation OutlineDisclosureButton

- (_TtC11NotesEditor23OutlineDisclosureButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor23OutlineDisclosureButton_isCollapsed) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor23OutlineDisclosureButton_writingDirection) = -1;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(OutlineDisclosureButton *)&v10 initWithFrame:x, y, width, height];
}

- (void)contentSizeCategoryDidChange
{
  UIAccessibilityButtonShapesEnabled();
  v0 = sub_2154A1D2C();

  systemImageNamed_ = [objc_opt_self() systemImageNamed_];

  if (systemImageNamed_)
  {
    preferredFontForTextStyle_ = [objc_opt_self() preferredFontForTextStyle_];
    v3 = [objc_opt_self() configurationWithFont:preferredFontForTextStyle_ scale:1];

    imageWithSymbolConfiguration_ = [systemImageNamed_ imageWithSymbolConfiguration_];
    if (imageWithSymbolConfiguration_)
    {
      [imageWithSymbolConfiguration_ size];
      qword_281199A40 = fmax(v4, 20.0);
    }
  }
}

- (int64_t)writingDirection
{
  v3 = OBJC_IVAR____TtC11NotesEditor23OutlineDisclosureButton_writingDirection;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setWritingDirection:(int64_t)direction
{
  v5 = OBJC_IVAR____TtC11NotesEditor23OutlineDisclosureButton_writingDirection;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = direction;
}

- (_TtC11NotesEditor23OutlineDisclosureButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor23OutlineDisclosureButton_isCollapsed) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor23OutlineDisclosureButton_writingDirection) = -1;
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  _s11NotesEditor23OutlineDisclosureButtonC18accessibilityLabelSSSgvg_0();
  v4 = v3;

  if (v4)
  {
    v5 = sub_2154A1D2C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)accessibilityUserInputLabels
{
  selfCopy = self;
  _s11NotesEditor23OutlineDisclosureButtonC28accessibilityUserInputLabelsSaySSGSgvg_0();

  v3 = sub_2154A1F3C();

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  accessibilityTraits = [(OutlineDisclosureButton *)&v7 accessibilityTraits];
  v4 = *MEMORY[0x277D76598];

  v5 = -1;
  if ((v4 & accessibilityTraits) != 0)
  {
    v5 = ~v4;
  }

  return v5 & accessibilityTraits;
}

- (void)setAccessibilityTraits:(unint64_t)traits
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(OutlineDisclosureButton *)&v4 setAccessibilityTraits:traits];
}

@end