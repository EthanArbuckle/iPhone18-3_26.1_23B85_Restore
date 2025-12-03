@interface CHSWidgetExtensionProviderOptions
+ (CHSWidgetExtensionProviderOptions)widgets;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSubsetOf:(id)of;
- (BOOL)matchesControlDescriptor:(id)descriptor;
- (BOOL)matchesEverything;
- (BOOL)matchesExtension:(id)extension;
- (BOOL)matchesWidgetDescriptor:(id)descriptor;
- (CHSWidgetExtensionProviderOptions)init;
- (CHSWidgetExtensionProviderOptions)initWithCoder:(id)coder;
- (CHSWidgetExtensionProviderOptions)initWithWidgetsPredicate:(id)predicate controlsPredicate:(id)controlsPredicate includeIntents:(BOOL)intents;
- (NSString)description;
- (id)mergedWith:(id)with;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSWidgetExtensionProviderOptions

- (CHSWidgetExtensionProviderOptions)initWithWidgetsPredicate:(id)predicate controlsPredicate:(id)controlsPredicate includeIntents:(BOOL)intents
{
  *(&self->super.isa + OBJC_IVAR___CHSWidgetExtensionProviderOptions_includeIntents) = intents;
  *(&self->super.isa + OBJC_IVAR___CHSWidgetExtensionProviderOptions_widgetsPredicate) = predicate;
  *(&self->super.isa + OBJC_IVAR___CHSWidgetExtensionProviderOptions_controlsPredicate) = controlsPredicate;
  v9.receiver = self;
  v9.super_class = CHSWidgetExtensionProviderOptions;
  predicateCopy = predicate;
  controlsPredicateCopy = controlsPredicate;
  return [(CHSWidgetExtensionProviderOptions *)&v9 init];
}

- (BOOL)matchesWidgetDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  selfCopy = self;
  LOBYTE(self) = CHSWidgetExtensionProviderOptions.matches(widgetDescriptor:)(descriptorCopy);

  return self & 1;
}

- (BOOL)matchesEverything
{
  v2 = qword_1EAEEBAD0;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EAEEBAE0;
  v5 = sub_195EBAC28(selfCopy, v4);

  return v5 & 1;
}

- (NSString)description
{
  selfCopy = self;
  CHSWidgetExtensionProviderOptions.description.getter();

  v3 = sub_195FA0888();

  return v3;
}

- (id)mergedWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  v9.super.isa = withCopy;
  v6 = CHSWidgetExtensionProviderOptions.merged(with:)(v9);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_195FA0E08();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CHSWidgetExtensionProviderOptions.isEqual(_:)(v8);

  sub_195EB7914(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CHSWidgetExtensionProviderOptions.encode(with:)(coderCopy);
}

- (CHSWidgetExtensionProviderOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_195EBC828(coderCopy);

  return v4;
}

- (BOOL)matchesControlDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  selfCopy = self;
  LOBYTE(self) = CHSWidgetExtensionProviderOptions.matches(controlDescriptor:)(descriptorCopy);

  return self & 1;
}

- (BOOL)matchesExtension:(id)extension
{
  extensionCopy = extension;
  selfCopy = self;
  LOBYTE(self) = CHSWidgetExtensionProviderOptions.matches(extension:)(extensionCopy);

  return self & 1;
}

+ (CHSWidgetExtensionProviderOptions)widgets
{
  visible = [objc_opt_self() visible];
  v3 = [objc_allocWithZone(CHSWidgetExtensionProviderOptions) initWithWidgetsPredicate:visible controlsPredicate:0];

  return v3;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = CHSWidgetExtensionProviderOptions.hash.getter();

  return v3;
}

- (CHSWidgetExtensionProviderOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isSubsetOf:(id)of
{
  ofCopy = of;
  selfCopy = self;
  v7.super.isa = ofCopy;
  LOBYTE(self) = CHSWidgetExtensionProviderOptions.isSubset(of:)(v7);

  return self & 1;
}

@end