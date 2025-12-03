@interface CHSMutableSessionPlatterDescriptor
- (id)copyWithZone:(_NSZone *)zone;
- (void)setActivityAttributesType:(id)type;
- (void)setContainerBundleIdentifier:(id)identifier;
- (void)setDisplayName:(id)name;
- (void)setEventMachServiceName:(id)name;
- (void)setExtensionBundleIdentifier:(id)identifier;
- (void)setExtensionIdentity:(id)identity;
- (void)setLocaleToken:(id)token;
- (void)setWidgetDescription:(id)description;
@end

@implementation CHSMutableSessionPlatterDescriptor

- (void)setExtensionIdentity:(id)identity
{
  identityCopy = identity;
  v4 = [identityCopy copy];
  extensionIdentity = self->super.super._extensionIdentity;
  self->super.super._extensionIdentity = v4;
}

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy copy];
  displayName = self->super.super._displayName;
  self->super.super._displayName = v4;
}

- (void)setWidgetDescription:(id)description
{
  descriptionCopy = description;
  v4 = [descriptionCopy copy];
  widgetDescription = self->super.super._widgetDescription;
  self->super.super._widgetDescription = v4;
}

- (void)setLocaleToken:(id)token
{
  tokenCopy = token;
  v4 = [tokenCopy copy];
  localeToken = self->super.super._localeToken;
  self->super.super._localeToken = v4;
}

- (void)setEventMachServiceName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy copy];
  eventMachServiceName = self->super.super._eventMachServiceName;
  self->super.super._eventMachServiceName = v4;
}

- (void)setActivityAttributesType:(id)type
{
  typeCopy = type;
  v4 = [typeCopy copy];
  activityAttributesType = self->super._activityAttributesType;
  self->super._activityAttributesType = v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSSessionPlatterDescriptor alloc];

  return [(CHSSessionPlatterDescriptor *)v4 _initWithDescriptor:self];
}

- (void)setExtensionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [CHSExtensionIdentity alloc];
  v5 = [identifierCopy copy];
  containerBundleIdentifier = [(CHSExtensionIdentity *)self->super.super._extensionIdentity containerBundleIdentifier];
  v7 = [(CHSExtensionIdentity *)v4 initWithExtensionBundleIdentifier:v5 containerBundleIdentifier:containerBundleIdentifier deviceIdentifier:0];
  extensionIdentity = self->super.super._extensionIdentity;
  self->super.super._extensionIdentity = v7;
}

- (void)setContainerBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [CHSExtensionIdentity alloc];
  extensionBundleIdentifier = [(CHSExtensionIdentity *)self->super.super._extensionIdentity extensionBundleIdentifier];
  v6 = [identifierCopy copy];
  v7 = [(CHSExtensionIdentity *)v4 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:v6 deviceIdentifier:0];
  extensionIdentity = self->super.super._extensionIdentity;
  self->super.super._extensionIdentity = v7;
}

@end