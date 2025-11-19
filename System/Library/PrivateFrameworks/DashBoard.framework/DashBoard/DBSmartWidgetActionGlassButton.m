@interface DBSmartWidgetActionGlassButton
- (_TtC9DashBoard30DBSmartWidgetActionGlassButton)init;
- (_TtC9DashBoard30DBSmartWidgetActionGlassButton)initWithSymbolName:(id)a3;
@end

@implementation DBSmartWidgetActionGlassButton

- (_TtC9DashBoard30DBSmartWidgetActionGlassButton)initWithSymbolName:(id)a3
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for DBSmartWidgetActionGlassButton();
  v4 = a3;
  v5 = [(DBSmartWidgetEffectCoordinatingButton *)&v10 init];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemImageNamed_];

  if (v8)
  {
    (*((*MEMORY[0x277D85000] & v7->super.super.super.super.super.super.super.isa) + 0xF0))(v8);
  }

  return v7;
}

- (_TtC9DashBoard30DBSmartWidgetActionGlassButton)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end