@interface CSAdaptiveFontProvider
+ (id)providerForBaseFont:(id)a3;
- (BOOL)updateLayoutContext:(id)a3;
- (CSAdaptiveFontLayoutContext)layoutContext;
- (CSAdaptiveFontProvider)init;
- (double)baselineAdjustmentForFont:(id)a3 forHeight:(double)a4 portraitFraction:(double)a5;
- (double)baselineAdjustmentForFont:(id)a3 height:(double)a4;
- (double)baselineAdjustmentForHeight:(double)a3;
- (double)caplineAdjustmentForFont:(id)a3 height:(double)a4;
- (double)caplineAdjustmentForHeight:(double)a3;
- (double)defaultWeight;
- (double)maximumHeight;
- (double)minimumHeight;
- (id)fontForHeight:(double)a3;
- (id)fontForHeight:(double)a3 string:(id)a4;
- (id)fontFromFont:(id)a3 forHeight:(double)a4;
- (id)fontFromFont:(id)a3 forHeight:(double)a4 portraitFraction:(double)a5 string:(id)a6;
- (id)fontFromFont:(id)a3 forHeight:(double)a4 portraitFraction:(double)a5 string:(id)a6 baselineAdjustment:(double *)a7;
- (id)fontFromFont:(id)a3 forHeight:(double)a4 string:(id)a5;
- (id)fontFromFont:(id)a3 forHeight:(double)a4 string:(id)a5 baselineAdjustment:(double *)a6;
- (void)setMaximumHeight:(double)a3;
- (void)setMinimumHeight:(double)a3;
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

- (double)baselineAdjustmentForFont:(id)a3 forHeight:(double)a4 portraitFraction:(double)a5
{
  v8 = a3;
  v9 = self;
  v10 = sub_1A2D6B008(a4);
  v11 = sub_1A2D98E04(v8, v10, a5);

  return v11;
}

+ (id)providerForBaseFont:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_1A2D96C80(v4);

  return v5;
}

- (CSAdaptiveFontLayoutContext)layoutContext
{
  v3 = type metadata accessor for AdaptiveFontProvider.LayoutContext(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0xB8);
  v7 = self;
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

- (BOOL)updateLayoutContext:(id)a3
{
  v5 = type metadata accessor for AdaptiveFontProvider.LayoutContext(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0xB8);
  v10 = a3;
  v11 = self;
  v9();
  v12 = OBJC_IVAR___CSAdaptiveFontLayoutContext_layoutContext;
  v13 = sub_1A2D9B95C(v7, &v10[OBJC_IVAR___CSAdaptiveFontLayoutContext_layoutContext]);
  sub_1A2D9BEC8(v7, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  if (!v13)
  {
    sub_1A2D9BE60(&v10[v12], v7, type metadata accessor for AdaptiveFontProvider.LayoutContext);
    (*((*v8 & v11->super.isa) + 0xC0))(v7);
    sub_1A2D99524();
  }

  return !v13;
}

- (void)setMinimumHeight:(double)a3
{
  v5 = OBJC_IVAR___CSAdaptiveFontProvider_minimumHeight;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)setMaximumHeight:(double)a3
{
  v5 = OBJC_IVAR___CSAdaptiveFontProvider_maximumHeight;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)defaultWeight
{
  v2 = self;
  v3 = sub_1A2D97B14();

  return v3;
}

- (id)fontForHeight:(double)a3
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x158);
  v5 = self;
  v6 = v4(808466992, 0xE400000000000000, a3);

  return v6;
}

- (id)fontForHeight:(double)a3 string:(id)a4
{
  v6 = sub_1A2D9FB80();
  v8 = v7;
  v9 = *(&self->super.isa + OBJC_IVAR___CSAdaptiveFontProvider_baseFont);
  v10 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x168);
  v11 = self;
  v12 = v10(v9, v6, v8, a3);

  return v12;
}

- (id)fontFromFont:(id)a3 forHeight:(double)a4
{
  v6 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x168);
  v7 = a3;
  v8 = self;
  v9 = v6(v7, 808466992, 0xE400000000000000, a4);

  return v9;
}

- (id)fontFromFont:(id)a3 forHeight:(double)a4 string:(id)a5
{
  v8 = sub_1A2D9FB80();
  v10 = v9;
  v11 = a3;
  v12 = self;
  sub_1A2D6B008(a4);
  v13 = v11;
  v14 = sub_1A2D6BC38(v13);
  v15 = sub_1A2D9A684(v14, v8, v10);

  v16 = sub_1A2D6D4C8(v11, v15);

  sub_1A2D98B94(v16);

  return v16;
}

- (id)fontFromFont:(id)a3 forHeight:(double)a4 string:(id)a5 baselineAdjustment:(double *)a6
{
  v10 = sub_1A2D9FB80();
  v12 = v11;
  v13 = a3;
  v14 = self;
  sub_1A2D6B008(a4);
  v15 = v13;
  v16 = sub_1A2D6BC38(v15);
  v17 = sub_1A2D9A684(v16, v10, v12);

  v18 = sub_1A2D6D4C8(v13, v17);

  sub_1A2D98B94(v18);
  *a6 = v19;

  return v18;
}

- (id)fontFromFont:(id)a3 forHeight:(double)a4 portraitFraction:(double)a5 string:(id)a6
{
  v10 = sub_1A2D9FB80();
  v12 = v11;
  v13 = a3;
  v14 = self;
  v15 = sub_1A2D98360(v13, v10, v12, a4, a5);

  return v15;
}

- (id)fontFromFont:(id)a3 forHeight:(double)a4 portraitFraction:(double)a5 string:(id)a6 baselineAdjustment:(double *)a7
{
  v12 = sub_1A2D9FB80();
  v14 = v13;
  v15 = a3;
  v16 = self;
  v17 = sub_1A2D985D0(v15, v12, v14, a7, a4, a5);

  return v17;
}

- (double)caplineAdjustmentForHeight:(double)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CSAdaptiveFontProvider_baseFont);
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x1A0);
  v6 = self;
  v7 = v5(v4, a3);

  return v7;
}

- (double)caplineAdjustmentForFont:(id)a3 height:(double)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1A2D9C460(a4);

  return v8;
}

- (double)baselineAdjustmentForHeight:(double)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CSAdaptiveFontProvider_baseFont);
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x1B0);
  v6 = self;
  v7 = v5(v4, a3);

  return v7;
}

- (double)baselineAdjustmentForFont:(id)a3 height:(double)a4
{
  v6 = a3;
  v7 = self;
  sub_1A2D98A78(v6, a4);
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