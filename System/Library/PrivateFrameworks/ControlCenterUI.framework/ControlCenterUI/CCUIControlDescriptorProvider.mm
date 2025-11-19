@interface CCUIControlDescriptorProvider
- (CCUIControlDescriptorProvider)init;
- (CCUIControlDescriptorProvider)initWithWidgetExtensionProvider:(id)a3;
- (id)descriptorFor:(id)a3;
@end

@implementation CCUIControlDescriptorProvider

- (CCUIControlDescriptorProvider)initWithWidgetExtensionProvider:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___CCUIControlDescriptorProvider_widgetExtensionProvider) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ControlDescriptorProvider();
  v4 = a3;
  return [(CCUIControlDescriptorProvider *)&v6 init];
}

- (id)descriptorFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_21EAA9180();

  return v6;
}

- (CCUIControlDescriptorProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end