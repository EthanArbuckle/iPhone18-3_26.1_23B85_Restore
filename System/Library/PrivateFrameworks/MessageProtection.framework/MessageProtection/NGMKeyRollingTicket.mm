@interface NGMKeyRollingTicket
- (id)identityData;
- (id)initTicketWithSigningKey:(id)key error:(id *)error;
- (id)prekeyData;
@end

@implementation NGMKeyRollingTicket

- (id)initTicketWithSigningKey:(id)key error:(id *)error
{
  keyCopy = key;
  v19.receiver = self;
  v19.super_class = NGMKeyRollingTicket;
  v7 = [(NGMKeyRollingTicket *)&v19 init];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [[NGMFullPrekey alloc] initWithPrekeySignedBy:keyCopy error:error];
  prekey = v7->_prekey;
  v7->_prekey = v8;

  if (!v7->_prekey)
  {
    v17 = MessageProtectionLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [NGMKeyRollingTicket initTicketWithSigningKey:v17 error:?];
    }

    goto LABEL_9;
  }

  v10 = [NGMPublicDeviceIdentity alloc];
  publicPrekey = [(NGMFullPrekey *)v7->_prekey publicPrekey];
  tetraRegistration = [(NGMFullPrekey *)v7->_prekey tetraRegistration];
  publicKey = [keyCopy publicKey];
  v14 = [(NGMPublicDeviceIdentity *)v10 initWithEchnidaRegistration:publicPrekey tetraRegistration:tetraRegistration signingKey:publicKey];
  registrationInfo = v7->_registrationInfo;
  v7->_registrationInfo = v14;

  if (!v7->_registrationInfo)
  {
    MPLogAndAssignError(700, error, @"Failed to initialize the public identity.");
LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

LABEL_4:
  v16 = v7;
LABEL_10:

  return v16;
}

- (id)identityData
{
  registrationInfo = [(NGMKeyRollingTicket *)self registrationInfo];
  identityData = [registrationInfo identityData];

  return identityData;
}

- (id)prekeyData
{
  registrationInfo = [(NGMKeyRollingTicket *)self registrationInfo];
  prekeyData = [registrationInfo prekeyData];

  return prekeyData;
}

@end