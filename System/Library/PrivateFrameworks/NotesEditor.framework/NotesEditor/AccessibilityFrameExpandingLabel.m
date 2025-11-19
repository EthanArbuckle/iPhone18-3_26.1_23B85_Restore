@interface AccessibilityFrameExpandingLabel
- (CGRect)accessibilityFrame;
- (_TtC11NotesEditorP33_BCDBDF3703124CBFF67EDFC1BC77488932AccessibilityFrameExpandingLabel)initWithCoder:(id)a3;
- (_TtC11NotesEditorP33_BCDBDF3703124CBFF67EDFC1BC77488932AccessibilityFrameExpandingLabel)initWithFrame:(CGRect)a3;
- (void)setAccessibilityFrame:(CGRect)a3;
@end

@implementation AccessibilityFrameExpandingLabel

- (CGRect)accessibilityFrame
{
  v2 = self;
  sub_2153CB454();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setAccessibilityFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AccessibilityFrameExpandingLabel();
  [(AccessibilityFrameExpandingLabel *)&v7 setAccessibilityFrame:x, y, width, height];
}

- (_TtC11NotesEditorP33_BCDBDF3703124CBFF67EDFC1BC77488932AccessibilityFrameExpandingLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC11NotesEditorP33_BCDBDF3703124CBFF67EDFC1BC77488932AccessibilityFrameExpandingLabel_accessibilityFrameDelegate) = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for AccessibilityFrameExpandingLabel();
  return [(AccessibilityFrameExpandingLabel *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC11NotesEditorP33_BCDBDF3703124CBFF67EDFC1BC77488932AccessibilityFrameExpandingLabel)initWithCoder:(id)a3
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC11NotesEditorP33_BCDBDF3703124CBFF67EDFC1BC77488932AccessibilityFrameExpandingLabel_accessibilityFrameDelegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for AccessibilityFrameExpandingLabel();
  v5 = a3;
  v6 = [(AccessibilityFrameExpandingLabel *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end