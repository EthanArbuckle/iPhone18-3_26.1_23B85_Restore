@interface CHSWidgetExtensionProviderOptions
+ (CHSWidgetExtensionProviderOptions)widgets;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSubsetOf:(id)a3;
- (BOOL)matchesControlDescriptor:(id)a3;
- (BOOL)matchesEverything;
- (BOOL)matchesExtension:(id)a3;
- (BOOL)matchesWidgetDescriptor:(id)a3;
- (CHSWidgetExtensionProviderOptions)init;
- (CHSWidgetExtensionProviderOptions)initWithCoder:(id)a3;
- (CHSWidgetExtensionProviderOptions)initWithWidgetsPredicate:(id)a3 controlsPredicate:(id)a4 includeIntents:(BOOL)a5;
- (NSString)description;
- (id)mergedWith:(id)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSWidgetExtensionProviderOptions

- (CHSWidgetExtensionProviderOptions)initWithWidgetsPredicate:(id)a3 controlsPredicate:(id)a4 includeIntents:(BOOL)a5
{
  *(&self->super.isa + OBJC_IVAR___CHSWidgetExtensionProviderOptions_includeIntents) = a5;
  *(&self->super.isa + OBJC_IVAR___CHSWidgetExtensionProviderOptions_widgetsPredicate) = a3;
  *(&self->super.isa + OBJC_IVAR___CHSWidgetExtensionProviderOptions_controlsPredicate) = a4;
  v9.receiver = self;
  v9.super_class = CHSWidgetExtensionProviderOptions;
  v6 = a3;
  v7 = a4;
  return [(CHSWidgetExtensionProviderOptions *)&v9 init];
}

- (BOOL)matchesWidgetDescriptor:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = CHSWidgetExtensionProviderOptions.matches(widgetDescriptor:)(v4);

  return self & 1;
}

- (BOOL)matchesEverything
{
  v2 = qword_1EAEEBAD0;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EAEEBAE0;
  v5 = sub_195EBAC28(v3, v4);

  return v5 & 1;
}

- (NSString)description
{
  v2 = self;
  CHSWidgetExtensionProviderOptions.description.getter();

  v3 = sub_195FA0888();

  return v3;
}

- (id)mergedWith:(id)a3
{
  v4 = a3;
  v5 = self;
  v9.super.isa = v4;
  v6 = CHSWidgetExtensionProviderOptions.merged(with:)(v9);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_195FA0E08();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CHSWidgetExtensionProviderOptions.isEqual(_:)(v8);

  sub_195EB7914(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CHSWidgetExtensionProviderOptions.encode(with:)(v4);
}

- (CHSWidgetExtensionProviderOptions)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_195EBC828(v3);

  return v4;
}

- (BOOL)matchesControlDescriptor:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = CHSWidgetExtensionProviderOptions.matches(controlDescriptor:)(v4);

  return self & 1;
}

- (BOOL)matchesExtension:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = CHSWidgetExtensionProviderOptions.matches(extension:)(v4);

  return self & 1;
}

+ (CHSWidgetExtensionProviderOptions)widgets
{
  v2 = [objc_opt_self() visible];
  v3 = [objc_allocWithZone(CHSWidgetExtensionProviderOptions) initWithWidgetsPredicate:v2 controlsPredicate:0];

  return v3;
}

- (int64_t)hash
{
  v2 = self;
  v3 = CHSWidgetExtensionProviderOptions.hash.getter();

  return v3;
}

- (CHSWidgetExtensionProviderOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isSubsetOf:(id)a3
{
  v4 = a3;
  v5 = self;
  v7.super.isa = v4;
  LOBYTE(self) = CHSWidgetExtensionProviderOptions.isSubset(of:)(v7);

  return self & 1;
}

@end