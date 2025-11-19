@interface NGMKeyRollingTicket
- (id)identityData;
- (id)initTicketWithSigningKey:(id)a3 error:(id *)a4;
- (id)prekeyData;
@end

@implementation NGMKeyRollingTicket

- (id)initTicketWithSigningKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = NGMKeyRollingTicket;
  v7 = [(NGMKeyRollingTicket *)&v19 init];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [[NGMFullPrekey alloc] initWithPrekeySignedBy:v6 error:a4];
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
  v11 = [(NGMFullPrekey *)v7->_prekey publicPrekey];
  v12 = [(NGMFullPrekey *)v7->_prekey tetraRegistration];
  v13 = [v6 publicKey];
  v14 = [(NGMPublicDeviceIdentity *)v10 initWithEchnidaRegistration:v11 tetraRegistration:v12 signingKey:v13];
  registrationInfo = v7->_registrationInfo;
  v7->_registrationInfo = v14;

  if (!v7->_registrationInfo)
  {
    MPLogAndAssignError(700, a4, @"Failed to initialize the public identity.");
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
  v2 = [(NGMKeyRollingTicket *)self registrationInfo];
  v3 = [v2 identityData];

  return v3;
}

- (id)prekeyData
{
  v2 = [(NGMKeyRollingTicket *)self registrationInfo];
  v3 = [v2 prekeyData];

  return v3;
}

@end