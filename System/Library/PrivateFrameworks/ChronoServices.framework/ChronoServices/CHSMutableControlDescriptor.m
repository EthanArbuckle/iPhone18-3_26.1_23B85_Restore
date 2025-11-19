@interface CHSMutableControlDescriptor
- (id)copyWithZone:(_NSZone *)a3;
- (void)setActionMetadata:(id)a3;
- (void)setDefaultIntentReference:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setEventMachServiceName:(id)a3;
- (void)setExtensionIdentity:(id)a3;
- (void)setIntentType:(id)a3;
- (void)setKind:(id)a3;
- (void)setLocaleToken:(id)a3;
- (void)setNativeContainerBundleIdentifier:(id)a3;
- (void)setRequiredFeatureFlags:(id)a3;
- (void)setWidgetDescription:(id)a3;
@end

@implementation CHSMutableControlDescriptor

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

- (void)setActionMetadata:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  actionMetadata = self->super._actionMetadata;
  self->super._actionMetadata = v4;
}

- (void)setDefaultIntentReference:(id)a3
{
  v5 = a3;
  if (self->super._defaultIntentReference != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super._defaultIntentReference, a3);
    v5 = v6;
  }
}

- (void)setRequiredFeatureFlags:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  requiredFeatureFlags = self->super.super._requiredFeatureFlags;
  self->super.super._requiredFeatureFlags = v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHSControlDescriptor alloc];

  return [(CHSControlDescriptor *)v4 initFromDescriptor:self includeIntents:1];
}

@end