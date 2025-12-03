@interface AccessibilityFrameExpandingLabel
- (CGRect)accessibilityFrame;
- (_TtC11NotesEditorP33_BCDBDF3703124CBFF67EDFC1BC77488932AccessibilityFrameExpandingLabel)initWithCoder:(id)coder;
- (_TtC11NotesEditorP33_BCDBDF3703124CBFF67EDFC1BC77488932AccessibilityFrameExpandingLabel)initWithFrame:(CGRect)frame;
- (void)setAccessibilityFrame:(CGRect)frame;
@end

@implementation AccessibilityFrameExpandingLabel

- (CGRect)accessibilityFrame
{
  selfCopy = self;
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

- (void)setAccessibilityFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AccessibilityFrameExpandingLabel();
  [(AccessibilityFrameExpandingLabel *)&v7 setAccessibilityFrame:x, y, width, height];
}

- (_TtC11NotesEditorP33_BCDBDF3703124CBFF67EDFC1BC77488932AccessibilityFrameExpandingLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC11NotesEditorP33_BCDBDF3703124CBFF67EDFC1BC77488932AccessibilityFrameExpandingLabel_accessibilityFrameDelegate) = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for AccessibilityFrameExpandingLabel();
  return [(AccessibilityFrameExpandingLabel *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC11NotesEditorP33_BCDBDF3703124CBFF67EDFC1BC77488932AccessibilityFrameExpandingLabel)initWithCoder:(id)coder
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC11NotesEditorP33_BCDBDF3703124CBFF67EDFC1BC77488932AccessibilityFrameExpandingLabel_accessibilityFrameDelegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for AccessibilityFrameExpandingLabel();
  coderCopy = coder;
  v6 = [(AccessibilityFrameExpandingLabel *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end