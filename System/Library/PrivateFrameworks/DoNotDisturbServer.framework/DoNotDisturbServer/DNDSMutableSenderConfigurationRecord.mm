@interface DNDSMutableSenderConfigurationRecord
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAllowedContactGroups:(id)a3;
- (void)setAllowedContactTypes:(id)a3;
- (void)setAllowedContacts:(id)a3;
- (void)setDeniedContactGroups:(id)a3;
- (void)setDeniedContactTypes:(id)a3;
- (void)setDeniedContacts:(id)a3;
- (void)setPhoneCallBypassSettings:(id)a3;
@end

@implementation DNDSMutableSenderConfigurationRecord

- (void)setAllowedContactTypes:(id)a3
{
  v4 = [a3 copy];
  allowedContactTypes = self->super._allowedContactTypes;
  self->super._allowedContactTypes = v4;

  MEMORY[0x2821F96F8](v4, allowedContactTypes);
}

- (void)setDeniedContactTypes:(id)a3
{
  v4 = [a3 copy];
  deniedContactTypes = self->super._deniedContactTypes;
  self->super._deniedContactTypes = v4;

  MEMORY[0x2821F96F8](v4, deniedContactTypes);
}

- (void)setAllowedContactGroups:(id)a3
{
  v4 = [a3 copy];
  allowedContactGroups = self->super._allowedContactGroups;
  self->super._allowedContactGroups = v4;

  MEMORY[0x2821F96F8](v4, allowedContactGroups);
}

- (void)setDeniedContactGroups:(id)a3
{
  v4 = [a3 copy];
  deniedContactGroups = self->super._deniedContactGroups;
  self->super._deniedContactGroups = v4;

  MEMORY[0x2821F96F8](v4, deniedContactGroups);
}

- (void)setAllowedContacts:(id)a3
{
  v4 = [a3 copy];
  allowedContacts = self->super._allowedContacts;
  self->super._allowedContacts = v4;

  MEMORY[0x2821F96F8](v4, allowedContacts);
}

- (void)setDeniedContacts:(id)a3
{
  v4 = [a3 copy];
  deniedContacts = self->super._deniedContacts;
  self->super._deniedContacts = v4;

  MEMORY[0x2821F96F8](v4, deniedContacts);
}

- (void)setPhoneCallBypassSettings:(id)a3
{
  v4 = [a3 copy];
  phoneCallBypassSettings = self->super._phoneCallBypassSettings;
  self->super._phoneCallBypassSettings = v4;

  MEMORY[0x2821F96F8](v4, phoneCallBypassSettings);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSSenderConfigurationRecord alloc];

  return [(DNDSSenderConfigurationRecord *)v4 _initWithRecord:self];
}

@end