@interface CHSMutableWidgetExtension
- (id)copyWithZone:(_NSZone *)zone;
- (void)setContainerBundleLocalizedDisplayName:(id)name;
- (void)setEntitlements:(id)entitlements;
- (void)setIdentity:(id)identity;
- (void)setLiveActivityDescriptors:(id)descriptors;
- (void)setLocalizedDisplayName:(id)name;
- (void)setOrderedControlDescriptors:(id)descriptors;
- (void)setOrderedWidgetDescriptors:(id)descriptors;
@end

@implementation CHSMutableWidgetExtension

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSWidgetExtension alloc];

  return [(CHSWidgetExtension *)v4 initFromExtension:self];
}

- (void)setIdentity:(id)identity
{
  identityCopy = identity;
  v4 = [identityCopy copy];
  identity = self->super._identity;
  self->super._identity = v4;

  self->super._hasValidHash = 0;
}

- (void)setLocalizedDisplayName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy copy];
  localizedDisplayName = self->super._localizedDisplayName;
  self->super._localizedDisplayName = v4;

  self->super._hasValidHash = 0;
}

- (void)setContainerBundleLocalizedDisplayName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy copy];
  containerBundleLocalizedDisplayName = self->super._containerBundleLocalizedDisplayName;
  self->super._containerBundleLocalizedDisplayName = v4;

  self->super._hasValidHash = 0;
}

- (void)setLiveActivityDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v4 = [descriptorsCopy copy];
  liveActivityDescriptors = self->super._liveActivityDescriptors;
  self->super._liveActivityDescriptors = v4;

  self->super._hasValidHash = 0;
}

- (void)setOrderedWidgetDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v4 = [descriptorsCopy copy];
  orderedWidgetDescriptors = self->super._orderedWidgetDescriptors;
  self->super._orderedWidgetDescriptors = v4;

  self->super._hasValidHash = 0;
}

- (void)setOrderedControlDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v4 = [descriptorsCopy copy];
  orderedControlDescriptors = self->super._orderedControlDescriptors;
  self->super._orderedControlDescriptors = v4;

  self->super._hasValidHash = 0;
}

- (void)setEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  v4 = [entitlementsCopy copy];
  entitlements = self->super._entitlements;
  self->super._entitlements = v4;

  self->super._hasValidHash = 0;
}

@end