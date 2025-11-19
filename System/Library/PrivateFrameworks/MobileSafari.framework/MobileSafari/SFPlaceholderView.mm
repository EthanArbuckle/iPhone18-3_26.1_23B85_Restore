@interface SFPlaceholderView
+ (id)placeholdersMatchingIntrinsicContentSizeOfViews:(id)a3 reusingPlaceholders:(id)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)intrinsicContentSizeOverride;
- (SFPlaceholderView)initWithCoder:(id)a3;
- (SFPlaceholderView)initWithFrame:(CGRect)a3;
- (id)initMatchingIntrinsicContentSizeOfView:(id)a3;
- (void)setIntrinsicContentSizeOverride:(CGSize)a3;
@end

@implementation SFPlaceholderView

+ (id)placeholdersMatchingIntrinsicContentSizeOfViews:(id)a3 reusingPlaceholders:(id)a4
{
  sub_18B7B0AC0(0, &qword_1EA9D46F0);
  v4 = sub_18BC20D98();
  v5 = sub_18BC20D98();
  _sSo17SFPlaceholderViewC12MobileSafariE12placeholders30matchingIntrinsicContentSizeOf7reusingSayABGSaySo6UIViewCG_AJtFZ_0(v4, v5);

  type metadata accessor for SFPlaceholderView(v6);
  v7 = sub_18BC20D88();

  return v7;
}

- (id)initMatchingIntrinsicContentSizeOfView:(id)a3
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR___SFPlaceholderView_intrinsicContentSizeOverride);
  v5 = *MEMORY[0x1E69DE788];
  *v4 = *MEMORY[0x1E69DE788];
  v4[1] = v5;
  v6 = a3;
  [v6 frame];
  v14.receiver = self;
  v14.super_class = SFPlaceholderView;
  v7 = [(SFPlaceholderView *)&v14 initWithFrame:?];
  [v6 intrinsicContentSize];
  v9 = v8;
  v11 = v10;

  v12 = (&v7->super.super.super.isa + OBJC_IVAR___SFPlaceholderView_intrinsicContentSizeOverride);
  swift_beginAccess();
  *v12 = v9;
  v12[1] = v11;

  return v7;
}

- (CGSize)intrinsicContentSize
{
  [(SFPlaceholderView *)self intrinsicContentSizeOverride];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)intrinsicContentSizeOverride
{
  v2 = (self + OBJC_IVAR___SFPlaceholderView_intrinsicContentSizeOverride);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setIntrinsicContentSizeOverride:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = (self + OBJC_IVAR___SFPlaceholderView_intrinsicContentSizeOverride);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = width;
  v6[1] = height;
  if (width != v7 || height != v8)
  {
    [(SFPlaceholderView *)self invalidateIntrinsicContentSize];
  }
}

- (SFPlaceholderView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR___SFPlaceholderView_intrinsicContentSizeOverride);
  v4 = *MEMORY[0x1E69DE788];
  *v3 = *MEMORY[0x1E69DE788];
  v3[1] = v4;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (SFPlaceholderView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end