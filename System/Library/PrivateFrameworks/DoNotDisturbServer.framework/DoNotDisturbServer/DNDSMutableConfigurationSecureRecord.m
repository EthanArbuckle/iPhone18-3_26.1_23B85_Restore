@interface DNDSMutableConfigurationSecureRecord
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAllowedApplications:(id)a3;
- (void)setAllowedWebApplications:(id)a3;
- (void)setDeniedApplications:(id)a3;
- (void)setDeniedWebApplications:(id)a3;
- (void)setSenderConfiguration:(id)a3;
@end

@implementation DNDSMutableConfigurationSecureRecord

- (void)setSenderConfiguration:(id)a3
{
  v4 = [a3 copy];
  senderConfiguration = self->super._senderConfiguration;
  self->super._senderConfiguration = v4;

  MEMORY[0x2821F96F8](v4, senderConfiguration);
}

- (void)setAllowedApplications:(id)a3
{
  v4 = [a3 copy];
  allowedApplications = self->super._allowedApplications;
  self->super._allowedApplications = v4;

  MEMORY[0x2821F96F8](v4, allowedApplications);
}

- (void)setDeniedApplications:(id)a3
{
  v4 = [a3 copy];
  deniedApplications = self->super._deniedApplications;
  self->super._deniedApplications = v4;

  MEMORY[0x2821F96F8](v4, deniedApplications);
}

- (void)setAllowedWebApplications:(id)a3
{
  v4 = [a3 copy];
  allowedWebApplications = self->super._allowedWebApplications;
  self->super._allowedWebApplications = v4;

  MEMORY[0x2821F96F8](v4, allowedWebApplications);
}

- (void)setDeniedWebApplications:(id)a3
{
  v4 = [a3 copy];
  deniedWebApplications = self->super._deniedWebApplications;
  self->super._deniedWebApplications = v4;

  MEMORY[0x2821F96F8](v4, deniedWebApplications);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSConfigurationSecureRecord alloc];

  return [(DNDSConfigurationSecureRecord *)v4 _initWithRecord:self];
}

@end