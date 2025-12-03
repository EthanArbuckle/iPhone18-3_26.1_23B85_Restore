@interface CHSMutableWidgetDescriptor
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAssociatedKind:(id)kind;
- (void)setContainerBundleIdentifier:(id)identifier;
- (void)setDisfavoredLocations:(unint64_t)locations on:(int64_t)on;
- (void)setDisplayName:(id)name;
- (void)setEventMachServiceName:(id)name;
- (void)setExtensionBundleIdentifier:(id)identifier;
- (void)setExtensionIdentity:(id)identity;
- (void)setIntentType:(id)type;
- (void)setKind:(id)kind;
- (void)setLocaleToken:(id)token;
- (void)setNativeContainerBundleIdentifier:(id)identifier;
- (void)setRequiredFeatureFlags:(id)flags;
- (void)setTargetLiveSceneBundleIdentifier:(id)identifier;
- (void)setTransparent:(BOOL)transparent;
- (void)setWidgetDescription:(id)description;
@end

@implementation CHSMutableWidgetDescriptor

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

- (void)setDisfavoredLocations:(unint64_t)locations on:(int64_t)on
{
  v7 = [(NSDictionary *)self->super._disfavoredLocations mutableCopy];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:locations];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:on];
  [(NSDictionary *)v7 setObject:v8 forKeyedSubscript:v9];

  disfavoredLocations = self->super._disfavoredLocations;
  self->super._disfavoredLocations = v7;
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

- (void)setTransparent:(BOOL)transparent
{
  v3 = 2;
  if (!transparent)
  {
    v3 = 0;
  }

  self->super.super._preferredBackgroundStyle = v3;
  self->super.super._supportsVibrantContent = transparent;
}

- (void)setAssociatedKind:(id)kind
{
  kindCopy = kind;
  v4 = [kindCopy copy];
  associatedKind = self->super._associatedKind;
  self->super._associatedKind = v4;
}

- (void)setRequiredFeatureFlags:(id)flags
{
  flagsCopy = flags;
  v4 = [flagsCopy copy];
  requiredFeatureFlags = self->super.super._requiredFeatureFlags;
  self->super.super._requiredFeatureFlags = v4;
}

- (void)setTargetLiveSceneBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy copy];
  targetLiveSceneBundleIdentifier = self->super._targetLiveSceneBundleIdentifier;
  self->super._targetLiveSceneBundleIdentifier = v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSWidgetDescriptor alloc];

  return [(CHSWidgetDescriptor *)v4 initFromDescriptor:self includeIntents:1];
}

- (void)setExtensionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [CHSExtensionIdentity alloc];
  v5 = [identifierCopy copy];
  containerBundleIdentifier = [(CHSExtensionIdentity *)self->super.super._extensionIdentity containerBundleIdentifier];
  deviceIdentifier = [(CHSExtensionIdentity *)self->super.super._extensionIdentity deviceIdentifier];
  v8 = [(CHSExtensionIdentity *)v4 initWithExtensionBundleIdentifier:v5 containerBundleIdentifier:containerBundleIdentifier deviceIdentifier:deviceIdentifier];
  extensionIdentity = self->super.super._extensionIdentity;
  self->super.super._extensionIdentity = v8;
}

- (void)setContainerBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [CHSExtensionIdentity alloc];
  extensionBundleIdentifier = [(CHSExtensionIdentity *)self->super.super._extensionIdentity extensionBundleIdentifier];
  v6 = [identifierCopy copy];
  deviceIdentifier = [(CHSExtensionIdentity *)self->super.super._extensionIdentity deviceIdentifier];
  v8 = [(CHSExtensionIdentity *)v4 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:v6 deviceIdentifier:deviceIdentifier];
  extensionIdentity = self->super.super._extensionIdentity;
  self->super.super._extensionIdentity = v8;
}

@end