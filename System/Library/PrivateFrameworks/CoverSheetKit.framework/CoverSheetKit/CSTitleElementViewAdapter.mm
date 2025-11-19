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
- (void)setAnimatesChanges:(BOOL)a3;
- (void)setAttributedText:(id)a3;
- (void)setFont:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setGlassInterfaceStyle:(int64_t)a3;
- (void)setMinimumScaleFactor:(double)a3;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextColor:(id)a3;
- (void)setUsesGlassMaterial:(BOOL)a3;
- (void)setView:(id)a3;
- (void)setVisible:(BOOL)a3;
@end

@implementation CSTitleElementViewAdapter

- (void)setText:(id)a3
{
  v5 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v7 = self;
  v6 = [v5 initWithString_];
  (*((*MEMORY[0x1E69E7D40] & v7->super.isa) + 0xF8))(v6);
}

- (void)setVisible:(BOOL)a3
{
  v5 = OBJC_IVAR___CSTitleElementViewAdapter_visible;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
  v6 = self;
  sub_1A2D69568(a3);
}

- (id)view
{
  v2 = [(CSTitleElementViewAdapter *)self viewController];
  v3 = [v2 view];

  return v3;
}

- (int64_t)textAlignment
{
  v2 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 328);
  v3 = self;

  v5 = v2(v4);

  return v5;
}

- (void)setMinimumScaleFactor:(double)a3
{
  v4 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 384);
  v6 = self;

  v4(v5, a3);
}

- (UIFont)font
{
  v2 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 280);
  v3 = self;

  v5 = v2(v4);

  return v5;
}

- (NSString)text
{
  v2 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 152);
  v3 = self;

  v5 = v2(v4);

  v6 = [v5 string];

  if (!v6)
  {
    sub_1A2D9FB80();
    v6 = sub_1A2D9FB70();
  }

  return v6;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x78);
  v10 = self;
  v8 = v7();
  v9 = [v8 view];

  if (v9)
  {
    [v9 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (void)setView:(id)a3
{
  v4 = a3;
  v5 = [(CSTitleElementViewAdapter *)self viewController];
  [v5 setView:v4];
}

- (BOOL)animatesChanges
{
  v2 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 424);
  v3 = self;

  LOBYTE(v2) = v2(v4);

  return v2 & 1;
}

- (void)setAnimatesChanges:(BOOL)a3
{
  v3 = a3;
  v4 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 432);
  v5 = self;

  v4(v3);
}

- (NSAttributedString)attributedText
{
  v2 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 152);
  v3 = self;

  v5 = v2(v4);

  return v5;
}

- (void)setAttributedText:(id)a3
{
  v5 = objc_opt_self();
  v6 = a3;
  v7 = self;
  sub_1A2D86A70(v6, [v5 areAnimationsEnabled]);
}

- (UIColor)textColor
{
  v2 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 232);
  v3 = self;

  v5 = v2(v4);

  return v5;
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1A2D87AC0(a3);
}

- (void)setFont:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_1A2D8D85C(v5);
}

- (void)setTextAlignment:(int64_t)a3
{
  v4 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 336);
  v5 = self;

  v4(a3);
}

- (double)minimumScaleFactor
{
  v2 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 376);
  v3 = self;

  v5 = v2(v4);

  return v5;
}

- (CGRect)frame
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x78);
  v3 = self;
  v4 = v2();
  v5 = [v4 view];

  if (v5)
  {
    [v5 frame];
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
  v3 = self;

  LOBYTE(v2) = v2(v4);

  return v2 & 1;
}

- (void)setUsesGlassMaterial:(BOOL)a3
{
  v3 = a3;
  v4 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 480);
  v5 = self;

  v4(v3);
}

- (int64_t)glassInterfaceStyle
{
  v2 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 528);
  v3 = self;

  v5 = v2(v4);

  return v5;
}

- (void)setGlassInterfaceStyle:(int64_t)a3
{
  v4 = *(**(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 536);
  v5 = self;

  v4(a3);
}

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR___CSTitleElementViewAdapter_stateCaptureHandle);
  v4 = self;
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