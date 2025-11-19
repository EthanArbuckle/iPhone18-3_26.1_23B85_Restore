@interface OutlineDisclosureButton
- (NSArray)accessibilityUserInputLabels;
- (NSString)accessibilityLabel;
- (_TtC11NotesEditor23OutlineDisclosureButton)initWithCoder:(id)a3;
- (_TtC11NotesEditor23OutlineDisclosureButton)initWithFrame:(CGRect)a3;
- (int64_t)writingDirection;
- (unint64_t)accessibilityTraits;
- (void)contentSizeCategoryDidChange;
- (void)setAccessibilityTraits:(unint64_t)a3;
- (void)setWritingDirection:(int64_t)a3;
@end

@implementation OutlineDisclosureButton

- (_TtC11NotesEditor23OutlineDisclosureButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    v2 = [objc_opt_self() preferredFontForTextStyle_];
    v3 = [objc_opt_self() configurationWithFont:v2 scale:1];

    v5 = [v1 imageWithSymbolConfiguration_];
    if (v5)
    {
      [v5 size];
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

- (void)setWritingDirection:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC11NotesEditor23OutlineDisclosureButton_writingDirection;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = a3;
}

- (_TtC11NotesEditor23OutlineDisclosureButton)initWithCoder:(id)a3
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
  v2 = self;
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
  v2 = self;
  _s11NotesEditor23OutlineDisclosureButtonC28accessibilityUserInputLabelsSaySSGSgvg_0();

  v3 = sub_2154A1F3C();

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  v3 = [(OutlineDisclosureButton *)&v7 accessibilityTraits];
  v4 = *MEMORY[0x277D76598];

  v5 = -1;
  if ((v4 & v3) != 0)
  {
    v5 = ~v4;
  }

  return v5 & v3;
}

- (void)setAccessibilityTraits:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(OutlineDisclosureButton *)&v4 setAccessibilityTraits:a3];
}

@end