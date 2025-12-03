@interface CCUIControlDescriptorProvider
- (CCUIControlDescriptorProvider)init;
- (CCUIControlDescriptorProvider)initWithWidgetExtensionProvider:(id)provider;
- (id)descriptorFor:(id)for;
@end

@implementation CCUIControlDescriptorProvider

- (CCUIControlDescriptorProvider)initWithWidgetExtensionProvider:(id)provider
{
  *(&self->super.isa + OBJC_IVAR___CCUIControlDescriptorProvider_widgetExtensionProvider) = provider;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ControlDescriptorProvider();
  providerCopy = provider;
  return [(CCUIControlDescriptorProvider *)&v6 init];
}

- (id)descriptorFor:(id)for
{
  forCopy = for;
  selfCopy = self;
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