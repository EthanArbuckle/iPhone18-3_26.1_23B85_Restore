@interface CSTitleElementViewAdapter
- (BOOL)animatesChanges;
- (BOOL)usesGlassMaterial;
- (BOOL)visible;
- (CGRect)frame;
- (CSTitleElementViewAdapter)init;
- (NSAttributedString)attributedText;
- (NSString)text;
- (UIColor)textColor;
- (UIFont)font;
- (double)minimumScaleFactor;
- (id)view;
- (int64_t)glassInterfaceStyle;
- (int64_t)textAlignment;
- (void)dealloc;
- (void)setAnimatesChanges:(BOOL)changes;
- (void)setAttributedText:(id)text;
- (void)setFont:(id)font;
- (void)setFrame:(CGRect)frame;
- (void)setGlassInterfaceStyle:(int64_t)style;
- (void)setMinimumScaleFactor:(double)factor;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTextColor:(id)color;
- (void)setUsesGlassMaterial:(BOOL)material;
- (void)setView:(id)view;
- (void)setVisible:(BOOL)visible;
@end

@implementation CSTitleElementViewAdapter

- (void)setText:(id)text
{
  v5 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  selfCopy = self;
  initWithString_ = [v5 initWithString_];
  (*((*MEMORY[0x1E69E7D40] & selfCopy->super.isa) + 0xF8))(initWithString_);
}

- (void)setVisible:(BOOL)visible
{
  v5 = OBJC_IVAR___CSTitleElementViewAdapter_visible;
  swift_beginAccess();
  *(&self->super.isa + v5) = visible;
  selfCopy = self;
  sub_1A2D69568(visible);
}

- (id)view
{
  viewController = [(CSTitleElementViewAdapter *)self viewController];
  view = [viewController view];

  return view;
}

- (int64_t)textAlignment
{
  v2 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 328);
  selfCopy = self;

  v5 = v2(v4);

  return v5;
}

- (void)setMinimumScaleFactor:(double)factor
{
  v4 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 384);
  selfCopy = self;

  v4(v5, factor);
}

- (UIFont)font
{
  v2 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 280);
  selfCopy = self;

  v5 = v2(v4);

  return v5;
}

- (NSString)text
{
  v2 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 152);
  selfCopy = self;

  v5 = v2(v4);

  string = [v5 string];

  if (!string)
  {
    sub_1A2D9FB80();
    string = sub_1A2D9FB70();
  }

  return string;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x78);
  selfCopy = self;
  v8 = v7();
  view = [v8 view];

  if (view)
  {
    [view setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (void)setView:(id)view
{
  viewCopy = view;
  viewController = [(CSTitleElementViewAdapter *)self viewController];
  [viewController setView:viewCopy];
}

- (BOOL)animatesChanges
{
  v2 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 424);
  selfCopy = self;

  LOBYTE(v2) = v2(v4);

  return v2 & 1;
}

- (void)setAnimatesChanges:(BOOL)changes
{
  changesCopy = changes;
  v4 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 432);
  selfCopy = self;

  v4(changesCopy);
}

- (NSAttributedString)attributedText
{
  v2 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 152);
  selfCopy = self;

  v5 = v2(v4);

  return v5;
}

- (void)setAttributedText:(id)text
{
  v5 = objc_opt_self();
  textCopy = text;
  selfCopy = self;
  sub_1A2D86A70(textCopy, [v5 areAnimationsEnabled]);
}

- (UIColor)textColor
{
  v2 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 232);
  selfCopy = self;

  v5 = v2(v4);

  return v5;
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1A2D87AC0(color);
}

- (void)setFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  sub_1A2D8D85C(fontCopy);
}

- (void)setTextAlignment:(int64_t)alignment
{
  v4 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 336);
  selfCopy = self;

  v4(alignment);
}

- (double)minimumScaleFactor
{
  v2 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 376);
  selfCopy = self;

  v5 = v2(v4);

  return v5;
}

- (CGRect)frame
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x78);
  selfCopy = self;
  v4 = v2();
  view = [v4 view];

  if (view)
  {
    [view frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v6 = v11;
    v7 = v13;
    v8 = v15;
    v9 = v17;
  }

  else
  {
    __break(1u);
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (BOOL)visible
{
  v3 = OBJC_IVAR___CSTitleElementViewAdapter_visible;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (BOOL)usesGlassMaterial
{
  v2 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 472);
  selfCopy = self;

  LOBYTE(v2) = v2(v4);

  return v2 & 1;
}

- (void)setUsesGlassMaterial:(BOOL)material
{
  materialCopy = material;
  v4 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 480);
  selfCopy = self;

  v4(materialCopy);
}

- (int64_t)glassInterfaceStyle
{
  v2 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 528);
  selfCopy = self;

  v5 = v2(v4);

  return v5;
}

- (void)setGlassInterfaceStyle:(int64_t)style
{
  v4 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 536);
  selfCopy = self;

  v4(style);
}

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_stateCaptureHandle);
  selfCopy = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for TitleElementViewAdapter();
  [(CSTitleElementViewAdapter *)&v5 dealloc];
}

- (CSTitleElementViewAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end