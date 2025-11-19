@interface SFTooltip
- (NSString)text;
- (SFTooltip)init;
- (SFTooltip)initWithText:(id)a3;
- (void)setText:(id)a3;
@end

@implementation SFTooltip

- (NSString)text
{
  sub_18BC1E3F8();
  v2 = sub_18BC20B98();

  return v2;
}

- (void)setText:(id)a3
{
  v4 = sub_18BC20BD8();
  v5 = (self + OBJC_IVAR___SFTooltip_text);
  *v5 = v4;
  v5[1] = v6;
}

- (SFTooltip)initWithText:(id)a3
{
  v4 = sub_18BC20BD8();
  v5 = (self + OBJC_IVAR___SFTooltip_text);
  *v5 = v4;
  v5[1] = v6;
  v8.receiver = self;
  v8.super_class = SFTooltip;
  return [(SFTooltip *)&v8 init];
}

- (SFTooltip)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end