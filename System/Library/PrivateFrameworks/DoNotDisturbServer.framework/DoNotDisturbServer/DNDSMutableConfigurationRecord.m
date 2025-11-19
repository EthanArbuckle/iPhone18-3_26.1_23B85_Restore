@interface DNDSMutableConfigurationRecord
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAllowIntelligentManagement:(id)a3;
- (void)setApplicationConfigurationType:(id)a3;
- (void)setCompatibilityVersion:(id)a3;
- (void)setHideApplicationBadges:(id)a3;
- (void)setMinimumBreakthroughUrgency:(id)a3;
- (void)setSenderConfigurationType:(id)a3;
- (void)setSuppressionMode:(id)a3;
- (void)setSuppressionType:(id)a3;
@end

@implementation DNDSMutableConfigurationRecord

- (void)setApplicationConfigurationType:(id)a3
{
  v4 = [a3 copy];
  applicationConfigurationType = self->super._applicationConfigurationType;
  self->super._applicationConfigurationType = v4;

  MEMORY[0x2821F96F8](v4, applicationConfigurationType);
}

- (void)setSenderConfigurationType:(id)a3
{
  v4 = [a3 copy];
  senderConfigurationType = self->super._senderConfigurationType;
  self->super._senderConfigurationType = v4;

  MEMORY[0x2821F96F8](v4, senderConfigurationType);
}

- (void)setSuppressionType:(id)a3
{
  v4 = [a3 copy];
  suppressionType = self->super._suppressionType;
  self->super._suppressionType = v4;

  MEMORY[0x2821F96F8](v4, suppressionType);
}

- (void)setSuppressionMode:(id)a3
{
  v4 = [a3 copy];
  suppressionMode = self->super._suppressionMode;
  self->super._suppressionMode = v4;

  MEMORY[0x2821F96F8](v4, suppressionMode);
}

- (void)setMinimumBreakthroughUrgency:(id)a3
{
  v4 = [a3 copy];
  minimumBreakthroughUrgency = self->super._minimumBreakthroughUrgency;
  self->super._minimumBreakthroughUrgency = v4;

  MEMORY[0x2821F96F8](v4, minimumBreakthroughUrgency);
}

- (void)setHideApplicationBadges:(id)a3
{
  v4 = [a3 copy];
  hideApplicationBadges = self->super._hideApplicationBadges;
  self->super._hideApplicationBadges = v4;

  MEMORY[0x2821F96F8](v4, hideApplicationBadges);
}

- (void)setAllowIntelligentManagement:(id)a3
{
  v4 = [a3 copy];
  allowIntelligentManagement = self->super._allowIntelligentManagement;
  self->super._allowIntelligentManagement = v4;

  MEMORY[0x2821F96F8](v4, allowIntelligentManagement);
}

- (void)setCompatibilityVersion:(id)a3
{
  v4 = [a3 copy];
  compatibilityVersion = self->super._compatibilityVersion;
  self->super._compatibilityVersion = v4;

  MEMORY[0x2821F96F8](v4, compatibilityVersion);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSConfigurationRecord alloc];

  return [(DNDSConfigurationRecord *)v4 _initWithRecord:self];
}

@end