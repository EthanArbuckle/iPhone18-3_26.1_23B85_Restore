@interface CHSMutableWidgetExtensionInfo
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAvailableLocalizations:(id)localizations;
- (void)setBundleIdentifier:(id)identifier;
- (void)setBundleURL:(id)l;
- (void)setContainerBundleIdentifier:(id)identifier;
- (void)setContainerURL:(id)l;
- (void)setControlConfigurations:(id)configurations;
- (void)setDataProtectionLevel:(id)level;
- (void)setDescriptors:(id)descriptors;
- (void)setEffectiveContainerBundleIdentifier:(id)identifier;
- (void)setEntitlements:(id)entitlements;
- (void)setLastModifiedDate:(id)date;
- (void)setLiveControlURLs:(id)ls;
- (void)setLivePlaceholderControlURLs:(id)ls;
- (void)setNominatedContainerBundleIdentifiers:(id)identifiers;
- (void)setPlaceholderURLs:(id)ls;
- (void)setPreviewControlURLs:(id)ls;
- (void)setSdkVersion:(id)version;
- (void)setSnapshotURLs:(id)ls;
- (void)setSystemDataContainerURL:(id)l;
- (void)setTimelineURLs:(id)ls;
- (void)setVersion:(id)version;
- (void)setWidgetConfigurations:(id)configurations;
@end

@implementation CHSMutableWidgetExtensionInfo

- (void)setBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy copy];
  bundleIdentifier = self->super._bundleIdentifier;
  self->super._bundleIdentifier = v4;
}

- (void)setContainerBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy copy];
  containerBundleIdentifier = self->super._containerBundleIdentifier;
  self->super._containerBundleIdentifier = v4;
}

- (void)setEffectiveContainerBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy copy];
  effectiveContainerBundleIdentifier = self->super._effectiveContainerBundleIdentifier;
  self->super._effectiveContainerBundleIdentifier = v4;
}

- (void)setVersion:(id)version
{
  versionCopy = version;
  v4 = [versionCopy copy];
  version = self->super._version;
  self->super._version = v4;
}

- (void)setLastModifiedDate:(id)date
{
  dateCopy = date;
  v4 = [dateCopy copy];
  lastModifiedDate = self->super._lastModifiedDate;
  self->super._lastModifiedDate = v4;
}

- (void)setBundleURL:(id)l
{
  lCopy = l;
  v4 = [lCopy copy];
  bundleURL = self->super._bundleURL;
  self->super._bundleURL = v4;
}

- (void)setContainerURL:(id)l
{
  lCopy = l;
  v4 = [lCopy copy];
  containerURL = self->super._containerURL;
  self->super._containerURL = v4;
}

- (void)setSystemDataContainerURL:(id)l
{
  lCopy = l;
  v4 = [lCopy copy];
  systemDataContainerURL = self->super._systemDataContainerURL;
  self->super._systemDataContainerURL = v4;
}

- (void)setDataProtectionLevel:(id)level
{
  levelCopy = level;
  v4 = [levelCopy copy];
  dataProtectionLevel = self->super._dataProtectionLevel;
  self->super._dataProtectionLevel = v4;
}

- (void)setAvailableLocalizations:(id)localizations
{
  localizationsCopy = localizations;
  v4 = [localizationsCopy copy];
  availableLocalizations = self->super._availableLocalizations;
  self->super._availableLocalizations = v4;
}

- (void)setSdkVersion:(id)version
{
  versionCopy = version;
  v4 = [versionCopy copy];
  sdkVersion = self->super._sdkVersion;
  self->super._sdkVersion = v4;
}

- (void)setEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  v4 = [entitlementsCopy copy];
  entitlements = self->super._entitlements;
  self->super._entitlements = v4;
}

- (void)setDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v4 = [descriptorsCopy copy];
  descriptors = self->super._descriptors;
  self->super._descriptors = v4;
}

- (void)setWidgetConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v4 = [configurationsCopy copy];
  widgetConfigurations = self->super._widgetConfigurations;
  self->super._widgetConfigurations = v4;
}

- (void)setControlConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v4 = [configurationsCopy copy];
  controlConfigurations = self->super._controlConfigurations;
  self->super._controlConfigurations = v4;
}

- (void)setSnapshotURLs:(id)ls
{
  lsCopy = ls;
  v4 = [lsCopy copy];
  snapshotURLs = self->super._snapshotURLs;
  self->super._snapshotURLs = v4;
}

- (void)setPlaceholderURLs:(id)ls
{
  lsCopy = ls;
  v4 = [lsCopy copy];
  placeholderURLs = self->super._placeholderURLs;
  self->super._placeholderURLs = v4;
}

- (void)setTimelineURLs:(id)ls
{
  lsCopy = ls;
  v4 = [lsCopy copy];
  timelineURLs = self->super._timelineURLs;
  self->super._timelineURLs = v4;
}

- (void)setLiveControlURLs:(id)ls
{
  lsCopy = ls;
  v4 = [lsCopy copy];
  liveControlURLs = self->super._liveControlURLs;
  self->super._liveControlURLs = v4;
}

- (void)setLivePlaceholderControlURLs:(id)ls
{
  lsCopy = ls;
  v4 = [lsCopy copy];
  livePlaceholderControlURLs = self->super._livePlaceholderControlURLs;
  self->super._livePlaceholderControlURLs = v4;
}

- (void)setPreviewControlURLs:(id)ls
{
  lsCopy = ls;
  v4 = [lsCopy copy];
  previewControlURLs = self->super._previewControlURLs;
  self->super._previewControlURLs = v4;
}

- (void)setNominatedContainerBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = [identifiersCopy copy];
  nominatedContainerBundleIdentifiers = self->super._nominatedContainerBundleIdentifiers;
  self->super._nominatedContainerBundleIdentifiers = v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSWidgetExtensionInfo alloc];

  return [(CHSWidgetExtensionInfo *)v4 _initWithInfo:self];
}

@end