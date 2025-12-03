@interface CHSMutableControlDescriptor
- (id)copyWithZone:(_NSZone *)zone;
- (void)setActionMetadata:(id)metadata;
- (void)setDefaultIntentReference:(id)reference;
- (void)setDisplayName:(id)name;
- (void)setEventMachServiceName:(id)name;
- (void)setExtensionIdentity:(id)identity;
- (void)setIntentType:(id)type;
- (void)setKind:(id)kind;
- (void)setLocaleToken:(id)token;
- (void)setNativeContainerBundleIdentifier:(id)identifier;
- (void)setRequiredFeatureFlags:(id)flags;
- (void)setWidgetDescription:(id)description;
@end

@implementation CHSMutableControlDescriptor

- (void)setExtensionIdentity:(id)identity
{
  identityCopy = identity;
  v4 = [identityCopy copy];
  extensionIdentity = self->super.super._extensionIdentity;
  self->super.super._extensionIdentity = v4;
}

- (void)setNativeContainerBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy copy];
  nativeContainerBundleIdentifier = self->super.super._nativeContainerBundleIdentifier;
  self->super.super._nativeContainerBundleIdentifier = v4;
}

- (void)setKind:(id)kind
{
  kindCopy = kind;
  v4 = [kindCopy copy];
  kind = self->super._kind;
  self->super._kind = v4;
}

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy copy];
  displayName = self->super.super._displayName;
  self->super.super._displayName = v4;
}

- (void)setIntentType:(id)type
{
  typeCopy = type;
  v4 = [typeCopy copy];
  intentType = self->super._intentType;
  self->super._intentType = v4;
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

- (void)setActionMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = [metadataCopy copy];
  actionMetadata = self->super._actionMetadata;
  self->super._actionMetadata = v4;
}

- (void)setDefaultIntentReference:(id)reference
{
  referenceCopy = reference;
  if (self->super._defaultIntentReference != referenceCopy)
  {
    v6 = referenceCopy;
    objc_storeStrong(&self->super._defaultIntentReference, reference);
    referenceCopy = v6;
  }
}

- (void)setRequiredFeatureFlags:(id)flags
{
  flagsCopy = flags;
  v4 = [flagsCopy copy];
  requiredFeatureFlags = self->super.super._requiredFeatureFlags;
  self->super.super._requiredFeatureFlags = v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSControlDescriptor alloc];

  return [(CHSControlDescriptor *)v4 initFromDescriptor:self includeIntents:1];
}

@end