@interface CHSWidgetExtensionContainer
- (BOOL)isEqual:(id)equal;
- (CHSWidgetExtensionContainer)init;
- (CHSWidgetExtensionContainer)initWithExtensions:(id)extensions iconResolver:(id)resolver;
- (NSArray)localExtensions;
- (NSDictionary)remoteExtensionsByDeviceIdentifier;
- (NSSet)allExtensions;
- (NSString)containerBundleIdentifier;
- (NSString)description;
- (NSString)iconVersion;
- (NSString)localizedContainerDisplayName;
- (id)extensionForExtensionIdentity:(id)identity;
- (int64_t)hash;
- (void)getIconWithCompletion:(id)completion;
@end

@implementation CHSWidgetExtensionContainer

- (NSArray)localExtensions
{
  selfCopy = self;
  CHSWidgetExtensionContainer.localExtensions.getter();

  sub_195EB4B30(0, &qword_1EAEEC4B8, off_1E7452788);
  v3 = sub_195FA0B28();

  return v3;
}

- (NSSet)allExtensions
{
  v2 = *(&self->super.isa + OBJC_IVAR___CHSWidgetExtensionContainer_storage);

  sub_195EBA74C(v3, &qword_1EAEEC4B8, off_1E7452788, &qword_1EAEEC4A8, sub_195EBABF4);

  sub_195EB4B30(0, &qword_1EAEEC4B8, off_1E7452788);
  sub_195EBE1C8(&qword_1EAEEC4A8, &qword_1EAEEC4B8, off_1E7452788);
  v4 = sub_195FA0BE8();

  return v4;
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

  v6 = CHSWidgetExtensionContainer.isEqual(_:)(v8);

  sub_195EB7914(v8);
  return v6 & 1;
}

- (CHSWidgetExtensionContainer)initWithExtensions:(id)extensions iconResolver:(id)resolver
{
  sub_195EB4B30(0, &qword_1EAEEC4B8, off_1E7452788);
  v5 = sub_195FA0B38();
  swift_unknownObjectRetain();
  v6 = sub_195EC2C54(v5, resolver);
  swift_unknownObjectRelease();
  return v6;
}

- (CHSWidgetExtensionContainer)init
{
  v3 = self + OBJC_IVAR___CHSWidgetExtensionContainer____lazy_storage____hash;
  *v3 = 0;
  v3[8] = 1;
  *(&self->super.isa + OBJC_IVAR___CHSWidgetExtensionContainer_storage) = MEMORY[0x1E69E7CC0];
  v4 = [objc_allocWithZone(CHSIconResolver) init];
  *(&self->super.isa + OBJC_IVAR___CHSWidgetExtensionContainer_iconResolver) = v4;
  v6.receiver = self;
  v6.super_class = CHSWidgetExtensionContainer;
  return [(CHSWidgetExtensionContainer *)&v6 init];
}

- (NSString)containerBundleIdentifier
{
  selfCopy = self;
  v3 = sub_195EC327C();
  identity = [v3 identity];

  v5 = &identity[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
  result = swift_beginAccess();
  if (*(v5 + 1))
  {
    v7 = *v5;

    v8 = sub_195FA0888();

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)extensionForExtensionIdentity:(id)identity
{
  identityCopy = identity;
  selfCopy = self;
  CHSWidgetExtensionContainer.extension(for:)(v6, identityCopy);
  v8 = v7;

  return v8;
}

- (NSString)localizedContainerDisplayName
{
  selfCopy = self;
  v3 = sub_195EC327C();
  containerBundleLocalizedDisplayName = [v3 containerBundleLocalizedDisplayName];

  if (!containerBundleLocalizedDisplayName)
  {
    sub_195FA08B8();
    containerBundleLocalizedDisplayName = sub_195FA0888();
  }

  return containerBundleLocalizedDisplayName;
}

- (NSDictionary)remoteExtensionsByDeviceIdentifier
{
  selfCopy = self;
  CHSWidgetExtensionContainer.remoteExtensionsByDeviceIdentifier.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED9E0, &qword_195FAC928);
  v3 = sub_195FA07E8();

  return v3;
}

- (NSString)iconVersion
{
  selfCopy = self;
  CHSWidgetExtensionContainer.iconVersion.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_195FA0888();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)getIconWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_195F39E6C;
  *(v6 + 24) = v5;
  v9[4] = sub_195F39F04;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_195F39F00;
  v9[3] = &block_descriptor_33;
  v7 = _Block_copy(v9);
  selfCopy = self;

  [(CHSWidgetExtensionContainer *)selfCopy getWidgetIconWithCompletion:v7];

  _Block_release(v7);
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_195F37DFC();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  result = _sSo27CHSWidgetExtensionContainerC14ChronoServicesE18descriptionBuilder19withMultilinePrefixSo013BSDescriptionG0CSgSSSg_tF_0();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  build = [(NSString *)result build];

  if (!build)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return build;
}

@end