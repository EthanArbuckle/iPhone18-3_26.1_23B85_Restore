@interface UnifiedButtonColumn
- (void)layoutSubviews;
@end

@implementation UnifiedButtonColumn

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(UnifiedButtonColumn *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC16MagnifierSupport19UnifiedButtonColumn_buttonView];
  [v2 bounds];
  [v3 setFrame_];
  sub_257DA5508();
}

@end