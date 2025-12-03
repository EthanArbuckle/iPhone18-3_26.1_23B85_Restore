@interface DNDSMutableConfigurationRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAllowIntelligentManagement:(id)management;
- (void)setApplicationConfigurationType:(id)type;
- (void)setCompatibilityVersion:(id)version;
- (void)setHideApplicationBadges:(id)badges;
- (void)setMinimumBreakthroughUrgency:(id)urgency;
- (void)setSenderConfigurationType:(id)type;
- (void)setSuppressionMode:(id)mode;
- (void)setSuppressionType:(id)type;
@end

@implementation DNDSMutableConfigurationRecord

- (void)setApplicationConfigurationType:(id)type
{
  v4 = [type copy];
  applicationConfigurationType = self->super._applicationConfigurationType;
  self->super._applicationConfigurationType = v4;

  MEMORY[0x2821F96F8](v4, applicationConfigurationType);
}

- (void)setSenderConfigurationType:(id)type
{
  v4 = [type copy];
  senderConfigurationType = self->super._senderConfigurationType;
  self->super._senderConfigurationType = v4;

  MEMORY[0x2821F96F8](v4, senderConfigurationType);
}

- (void)setSuppressionType:(id)type
{
  v4 = [type copy];
  suppressionType = self->super._suppressionType;
  self->super._suppressionType = v4;

  MEMORY[0x2821F96F8](v4, suppressionType);
}

- (void)setSuppressionMode:(id)mode
{
  v4 = [mode copy];
  suppressionMode = self->super._suppressionMode;
  self->super._suppressionMode = v4;

  MEMORY[0x2821F96F8](v4, suppressionMode);
}

- (void)setMinimumBreakthroughUrgency:(id)urgency
{
  v4 = [urgency copy];
  minimumBreakthroughUrgency = self->super._minimumBreakthroughUrgency;
  self->super._minimumBreakthroughUrgency = v4;

  MEMORY[0x2821F96F8](v4, minimumBreakthroughUrgency);
}

- (void)setHideApplicationBadges:(id)badges
{
  v4 = [badges copy];
  hideApplicationBadges = self->super._hideApplicationBadges;
  self->super._hideApplicationBadges = v4;

  MEMORY[0x2821F96F8](v4, hideApplicationBadges);
}

- (void)setAllowIntelligentManagement:(id)management
{
  v4 = [management copy];
  allowIntelligentManagement = self->super._allowIntelligentManagement;
  self->super._allowIntelligentManagement = v4;

  MEMORY[0x2821F96F8](v4, allowIntelligentManagement);
}

- (void)setCompatibilityVersion:(id)version
{
  v4 = [version copy];
  compatibilityVersion = self->super._compatibilityVersion;
  self->super._compatibilityVersion = v4;

  MEMORY[0x2821F96F8](v4, compatibilityVersion);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSConfigurationRecord alloc];

  return [(DNDSConfigurationRecord *)v4 _initWithRecord:self];
}

@end