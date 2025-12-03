@interface DNDSMutableSenderConfigurationRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAllowedContactGroups:(id)groups;
- (void)setAllowedContactTypes:(id)types;
- (void)setAllowedContacts:(id)contacts;
- (void)setDeniedContactGroups:(id)groups;
- (void)setDeniedContactTypes:(id)types;
- (void)setDeniedContacts:(id)contacts;
- (void)setPhoneCallBypassSettings:(id)settings;
@end

@implementation DNDSMutableSenderConfigurationRecord

- (void)setAllowedContactTypes:(id)types
{
  v4 = [types copy];
  allowedContactTypes = self->super._allowedContactTypes;
  self->super._allowedContactTypes = v4;

  MEMORY[0x2821F96F8](v4, allowedContactTypes);
}

- (void)setDeniedContactTypes:(id)types
{
  v4 = [types copy];
  deniedContactTypes = self->super._deniedContactTypes;
  self->super._deniedContactTypes = v4;

  MEMORY[0x2821F96F8](v4, deniedContactTypes);
}

- (void)setAllowedContactGroups:(id)groups
{
  v4 = [groups copy];
  allowedContactGroups = self->super._allowedContactGroups;
  self->super._allowedContactGroups = v4;

  MEMORY[0x2821F96F8](v4, allowedContactGroups);
}

- (void)setDeniedContactGroups:(id)groups
{
  v4 = [groups copy];
  deniedContactGroups = self->super._deniedContactGroups;
  self->super._deniedContactGroups = v4;

  MEMORY[0x2821F96F8](v4, deniedContactGroups);
}

- (void)setAllowedContacts:(id)contacts
{
  v4 = [contacts copy];
  allowedContacts = self->super._allowedContacts;
  self->super._allowedContacts = v4;

  MEMORY[0x2821F96F8](v4, allowedContacts);
}

- (void)setDeniedContacts:(id)contacts
{
  v4 = [contacts copy];
  deniedContacts = self->super._deniedContacts;
  self->super._deniedContacts = v4;

  MEMORY[0x2821F96F8](v4, deniedContacts);
}

- (void)setPhoneCallBypassSettings:(id)settings
{
  v4 = [settings copy];
  phoneCallBypassSettings = self->super._phoneCallBypassSettings;
  self->super._phoneCallBypassSettings = v4;

  MEMORY[0x2821F96F8](v4, phoneCallBypassSettings);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSSenderConfigurationRecord alloc];

  return [(DNDSSenderConfigurationRecord *)v4 _initWithRecord:self];
}

@end