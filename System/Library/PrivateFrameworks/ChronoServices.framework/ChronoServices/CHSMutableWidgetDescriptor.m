@interface CHSMutableWidgetDescriptor
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAssociatedKind:(id)a3;
- (void)setContainerBundleIdentifier:(id)a3;
- (void)setDisfavoredLocations:(unint64_t)a3 on:(int64_t)a4;
- (void)setDisplayName:(id)a3;
- (void)setEventMachServiceName:(id)a3;
- (void)setExtensionBundleIdentifier:(id)a3;
- (void)setExtensionIdentity:(id)a3;
- (void)setIntentType:(id)a3;
- (void)setKind:(id)a3;
- (void)setLocaleToken:(id)a3;
- (void)setNativeContainerBundleIdentifier:(id)a3;
- (void)setRequiredFeatureFlags:(id)a3;
- (void)setTargetLiveSceneBundleIdentifier:(id)a3;
- (void)setTransparent:(BOOL)a3;
- (void)setWidgetDescription:(id)a3;
@end

@implementation CHSMutableWidgetDescriptor

- (void)setExtensionIdentity:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  extensionIdentity = self->super.super._extensionIdentity;
  self->super.super._extensionIdentity = v4;
}

- (void)setNativeContainerBundleIdentifier:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  nativeContainerBundleIdentifier = self->super.super._nativeContainerBundleIdentifier;
  self->super.super._nativeContainerBundleIdentifier = v4;
}

- (void)setKind:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  kind = self->super._kind;
  self->super._kind = v4;
}

- (void)setDisplayName:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  displayName = self->super.super._displayName;
  self->super.super._displayName = v4;
}

- (void)setIntentType:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  intentType = self->super._intentType;
  self->super._intentType = v4;
}

- (void)setWidgetDescription:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  widgetDescription = self->super.super._widgetDescription;
  self->super.super._widgetDescription = v4;
}

- (void)setDisfavoredLocations:(unint64_t)a3 on:(int64_t)a4
{
  v7 = [(NSDictionary *)self->super._disfavoredLocations mutableCopy];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSDictionary *)v7 setObject:v8 forKeyedSubscript:v9];

  disfavoredLocations = self->super._disfavoredLocations;
  self->super._disfavoredLocations = v7;
}

- (void)setLocaleToken:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  localeToken = self->super.super._localeToken;
  self->super.super._localeToken = v4;
}

- (void)setEventMachServiceName:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  eventMachServiceName = self->super.super._eventMachServiceName;
  self->super.super._eventMachServiceName = v4;
}

- (void)setTransparent:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->super.super._preferredBackgroundStyle = v3;
  self->super.super._supportsVibrantContent = a3;
}

- (void)setAssociatedKind:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  associatedKind = self->super._associatedKind;
  self->super._associatedKind = v4;
}

- (void)setRequiredFeatureFlags:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  requiredFeatureFlags = self->super.super._requiredFeatureFlags;
  self->super.super._requiredFeatureFlags = v4;
}

- (void)setTargetLiveSceneBundleIdentifier:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  targetLiveSceneBundleIdentifier = self->super._targetLiveSceneBundleIdentifier;
  self->super._targetLiveSceneBundleIdentifier = v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHSWidgetDescriptor alloc];

  return [(CHSWidgetDescriptor *)v4 initFromDescriptor:self includeIntents:1];
}

- (void)setExtensionBundleIdentifier:(id)a3
{
  v10 = a3;
  v4 = [CHSExtensionIdentity alloc];
  v5 = [v10 copy];
  v6 = [(CHSExtensionIdentity *)self->super.super._extensionIdentity containerBundleIdentifier];
  v7 = [(CHSExtensionIdentity *)self->super.super._extensionIdentity deviceIdentifier];
  v8 = [(CHSExtensionIdentity *)v4 initWithExtensionBundleIdentifier:v5 containerBundleIdentifier:v6 deviceIdentifier:v7];
  extensionIdentity = self->super.super._extensionIdentity;
  self->super.super._extensionIdentity = v8;
}

- (void)setContainerBundleIdentifier:(id)a3
{
  v10 = a3;
  v4 = [CHSExtensionIdentity alloc];
  v5 = [(CHSExtensionIdentity *)self->super.super._extensionIdentity extensionBundleIdentifier];
  v6 = [v10 copy];
  v7 = [(CHSExtensionIdentity *)self->super.super._extensionIdentity deviceIdentifier];
  v8 = [(CHSExtensionIdentity *)v4 initWithExtensionBundleIdentifier:v5 containerBundleIdentifier:v6 deviceIdentifier:v7];
  extensionIdentity = self->super.super._extensionIdentity;
  self->super.super._extensionIdentity = v8;
}

@end