@interface CSAdaptiveFontProvider
+ (id)providerForBaseFont:(id)font;
- (BOOL)updateLayoutContext:(id)context;
- (CSAdaptiveFontLayoutContext)layoutContext;
- (CSAdaptiveFontProvider)init;
- (double)baselineAdjustmentForFont:(id)font forHeight:(double)height portraitFraction:(double)fraction;
- (double)baselineAdjustmentForFont:(id)font height:(double)height;
- (double)baselineAdjustmentForHeight:(double)height;
- (double)caplineAdjustmentForFont:(id)font height:(double)height;
- (double)caplineAdjustmentForHeight:(double)height;
- (double)defaultWeight;
- (double)maximumHeight;
- (double)minimumHeight;
- (id)fontForHeight:(double)height;
- (id)fontForHeight:(double)height string:(id)string;
- (id)fontFromFont:(id)font forHeight:(double)height;
- (id)fontFromFont:(id)font forHeight:(double)height portraitFraction:(double)fraction string:(id)string;
- (id)fontFromFont:(id)font forHeight:(double)height portraitFraction:(double)fraction string:(id)string baselineAdjustment:(double *)adjustment;
- (id)fontFromFont:(id)font forHeight:(double)height string:(id)string;
- (id)fontFromFont:(id)font forHeight:(double)height string:(id)string baselineAdjustment:(double *)adjustment;
- (void)setMaximumHeight:(double)height;
- (void)setMinimumHeight:(double)height;
@end

@implementation CSAdaptiveFontProvider

- (double)maximumHeight
{
  v3 = OBJC_IVAR___CSAdaptiveFontProvider_maximumHeight;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (double)minimumHeight
{
  v3 = OBJC_IVAR___CSAdaptiveFontProvider_minimumHeight;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (double)baselineAdjustmentForFont:(id)font forHeight:(double)height portraitFraction:(double)fraction
{
  fontCopy = font;
  selfCopy = self;
  v10 = sub_1A2D6B008(height);
  v11 = sub_1A2D98E04(fontCopy, v10, fraction);

  return v11;
}

+ (id)providerForBaseFont:(id)font
{
  swift_getObjCClassMetadata();
  fontCopy = font;
  v5 = sub_1A2D96C80(fontCopy);

  return v5;
}

- (CSAdaptiveFontLayoutContext)layoutContext
{
  v3 = type metadata accessor for AdaptiveFontProvider.LayoutContext(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0xB8);
  selfCopy = self;
  v6();
  v8 = type metadata accessor for AdaptiveFontLayoutContext(0);
  v9 = objc_allocWithZone(v8);
  sub_1A2D9BE60(v5, v9 + OBJC_IVAR___CSAdaptiveFontLayoutContext_layoutContext, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = [(CSAdaptiveFontProvider *)&v12 init];

  sub_1A2D9BEC8(v5, type metadata accessor for AdaptiveFontProvider.LayoutContext);

  return v10;
}

- (BOOL)updateLayoutContext:(id)context
{
  v5 = type metadata accessor for AdaptiveFontProvider.LayoutContext(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0xB8);
  contextCopy = context;
  selfCopy = self;
  v9();
  v12 = OBJC_IVAR___CSAdaptiveFontLayoutContext_layoutContext;
  v13 = sub_1A2D9B95C(v7, &contextCopy[OBJC_IVAR___CSAdaptiveFontLayoutContext_layoutContext]);
  sub_1A2D9BEC8(v7, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  if (!v13)
  {
    sub_1A2D9BE60(&contextCopy[v12], v7, type metadata accessor for AdaptiveFontProvider.LayoutContext);
    (*((*v8 & selfCopy->super.isa) + 0xC0))(v7);
    sub_1A2D99524();
  }

  return !v13;
}

- (void)setMinimumHeight:(double)height
{
  v5 = OBJC_IVAR___CSAdaptiveFontProvider_minimumHeight;
  swift_beginAccess();
  *(&self->super.isa + v5) = height;
}

- (void)setMaximumHeight:(double)height
{
  v5 = OBJC_IVAR___CSAdaptiveFontProvider_maximumHeight;
  swift_beginAccess();
  *(&self->super.isa + v5) = height;
}

- (double)defaultWeight
{
  selfCopy = self;
  v3 = sub_1A2D97B14();

  return v3;
}

- (id)fontForHeight:(double)height
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x158);
  selfCopy = self;
  v6 = v4(808466992, 0xE400000000000000, height);

  return v6;
}

- (id)fontForHeight:(double)height string:(id)string
{
  v6 = sub_1A2D9FB80();
  v8 = v7;
  v9 = *(&self->super.isa + OBJC_IVAR___CSAdaptiveFontProvider_baseFont);
  v10 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x168);
  selfCopy = self;
  v12 = v10(v9, v6, v8, height);

  return v12;
}

- (id)fontFromFont:(id)font forHeight:(double)height
{
  v6 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x168);
  fontCopy = font;
  selfCopy = self;
  v9 = v6(fontCopy, 808466992, 0xE400000000000000, height);

  return v9;
}

- (id)fontFromFont:(id)font forHeight:(double)height string:(id)string
{
  v8 = sub_1A2D9FB80();
  v10 = v9;
  fontCopy = font;
  selfCopy = self;
  sub_1A2D6B008(height);
  v13 = fontCopy;
  v14 = sub_1A2D6BC38(v13);
  v15 = sub_1A2D9A684(v14, v8, v10);

  v16 = sub_1A2D6D4C8(fontCopy, v15);

  sub_1A2D98B94(v16);

  return v16;
}

- (id)fontFromFont:(id)font forHeight:(double)height string:(id)string baselineAdjustment:(double *)adjustment
{
  v10 = sub_1A2D9FB80();
  v12 = v11;
  fontCopy = font;
  selfCopy = self;
  sub_1A2D6B008(height);
  v15 = fontCopy;
  v16 = sub_1A2D6BC38(v15);
  v17 = sub_1A2D9A684(v16, v10, v12);

  v18 = sub_1A2D6D4C8(fontCopy, v17);

  sub_1A2D98B94(v18);
  *adjustment = v19;

  return v18;
}

- (id)fontFromFont:(id)font forHeight:(double)height portraitFraction:(double)fraction string:(id)string
{
  v10 = sub_1A2D9FB80();
  v12 = v11;
  fontCopy = font;
  selfCopy = self;
  v15 = sub_1A2D98360(fontCopy, v10, v12, height, fraction);

  return v15;
}

- (id)fontFromFont:(id)font forHeight:(double)height portraitFraction:(double)fraction string:(id)string baselineAdjustment:(double *)adjustment
{
  v12 = sub_1A2D9FB80();
  v14 = v13;
  fontCopy = font;
  selfCopy = self;
  v17 = sub_1A2D985D0(fontCopy, v12, v14, adjustment, height, fraction);

  return v17;
}

- (double)caplineAdjustmentForHeight:(double)height
{
  v4 = *(&self->super.isa + OBJC_IVAR___CSAdaptiveFontProvider_baseFont);
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x1A0);
  selfCopy = self;
  v7 = v5(v4, height);

  return v7;
}

- (double)caplineAdjustmentForFont:(id)font height:(double)height
{
  fontCopy = font;
  selfCopy = self;
  v8 = sub_1A2D9C460(height);

  return v8;
}

- (double)baselineAdjustmentForHeight:(double)height
{
  v4 = *(&self->super.isa + OBJC_IVAR___CSAdaptiveFontProvider_baseFont);
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x1B0);
  selfCopy = self;
  v7 = v5(v4, height);

  return v7;
}

- (double)baselineAdjustmentForFont:(id)font height:(double)height
{
  fontCopy = font;
  selfCopy = self;
  sub_1A2D98A78(fontCopy, height);
  v9 = v8;

  return v9;
}

- (CSAdaptiveFontProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end