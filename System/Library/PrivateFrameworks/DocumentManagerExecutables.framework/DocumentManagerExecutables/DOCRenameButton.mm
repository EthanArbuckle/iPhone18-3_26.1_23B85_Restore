@interface DOCRenameButton
- (_TtC26DocumentManagerExecutables15DOCRenameButton)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)layoutSubviews;
- (void)setTitle:(id)title forState:(unint64_t)state;
@end

@implementation DOCRenameButton

- (void)setTitle:(id)title forState:(unint64_t)state
{
  if (title)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.isa) + 0xD8);
  selfCopy = self;
  v8(v5, v7);
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCRenameButton();
  v2 = v5.receiver;
  [(DOCRenameButton *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCRenameButton_dimLayer];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame_];
  }
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v4 = type metadata accessor for UIPointerShape();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v16 - v12;
  *(&v16 - v12) = 0x4024000000000000;
  (*(v5 + 104))(&v16 - v12, *MEMORY[0x277D74A68], v4, v11);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPointerStyle);
  (*(v5 + 16))(v8, v13, v4);
  v14 = UIPointerStyle.init(shape:constrainedAxes:)();
  (*(v5 + 8))(v13, v4);

  return v14;
}

- (_TtC26DocumentManagerExecutables15DOCRenameButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end