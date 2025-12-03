@interface DNDSMutableConfigurationSecureRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAllowedApplications:(id)applications;
- (void)setAllowedWebApplications:(id)applications;
- (void)setDeniedApplications:(id)applications;
- (void)setDeniedWebApplications:(id)applications;
- (void)setSenderConfiguration:(id)configuration;
@end

@implementation DNDSMutableConfigurationSecureRecord

- (void)setSenderConfiguration:(id)configuration
{
  v4 = [configuration copy];
  senderConfiguration = self->super._senderConfiguration;
  self->super._senderConfiguration = v4;

  MEMORY[0x2821F96F8](v4, senderConfiguration);
}

- (void)setAllowedApplications:(id)applications
{
  v4 = [applications copy];
  allowedApplications = self->super._allowedApplications;
  self->super._allowedApplications = v4;

  MEMORY[0x2821F96F8](v4, allowedApplications);
}

- (void)setDeniedApplications:(id)applications
{
  v4 = [applications copy];
  deniedApplications = self->super._deniedApplications;
  self->super._deniedApplications = v4;

  MEMORY[0x2821F96F8](v4, deniedApplications);
}

- (void)setAllowedWebApplications:(id)applications
{
  v4 = [applications copy];
  allowedWebApplications = self->super._allowedWebApplications;
  self->super._allowedWebApplications = v4;

  MEMORY[0x2821F96F8](v4, allowedWebApplications);
}

- (void)setDeniedWebApplications:(id)applications
{
  v4 = [applications copy];
  deniedWebApplications = self->super._deniedWebApplications;
  self->super._deniedWebApplications = v4;

  MEMORY[0x2821F96F8](v4, deniedWebApplications);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSConfigurationSecureRecord alloc];

  return [(DNDSConfigurationSecureRecord *)v4 _initWithRecord:self];
}

@end