@interface FAPushMessage
- (ACAccount)appleAccount;
- (ACAccount)gsAccount;
- (BOOL)isValid;
- (FAPushMessage)initWithMessage:(id)message;
- (FAPushMessage)initWithMessage:(id)message accountStore:(id)store;
@end

@implementation FAPushMessage

- (FAPushMessage)initWithMessage:(id)message accountStore:(id)store
{
  messageCopy = message;
  storeCopy = store;
  v25.receiver = self;
  v25.super_class = FAPushMessage;
  v8 = [(FAPushMessage *)&v25 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_defaultStore, store);
    topic = [messageCopy topic];
    topic = v9->_topic;
    v9->_topic = topic;

    userInfo = [messageCopy userInfo];
    payload = v9->_payload;
    v9->_payload = userInfo;

    v14 = [(NSDictionary *)v9->_payload objectForKeyedSubscript:@"event"];
    event = v9->_event;
    v9->_event = v14;

    v16 = [(NSDictionary *)v9->_payload objectForKeyedSubscript:@"dsid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = v16;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_7;
      }

      stringValue = [v16 stringValue];
    }

    dsid = v9->_dsid;
    v9->_dsid = stringValue;

LABEL_7:
    v19 = [(NSDictionary *)v9->_payload objectForKeyedSubscript:@"setForDSID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue2 = v19;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_12:
        v22 = [(NSDictionary *)v9->_payload objectForKeyedSubscript:@"adsid"];
        altDSID = v9->_altDSID;
        v9->_altDSID = v22;

        goto LABEL_13;
      }

      stringValue2 = [v19 stringValue];
    }

    setForDSID = v9->_setForDSID;
    v9->_setForDSID = stringValue2;

    goto LABEL_12;
  }

LABEL_13:

  return v9;
}

- (FAPushMessage)initWithMessage:(id)message
{
  messageCopy = message;
  v5 = +[ACAccountStore defaultStore];
  v6 = [(FAPushMessage *)self initWithMessage:messageCopy accountStore:v5];

  return v6;
}

- (ACAccount)appleAccount
{
  if (self->_dsid)
  {
    v2 = [(ACAccountStore *)self->_defaultStore aa_appleAccountWithPersonID:?];
  }

  else if (self->_altDSID)
  {
    v2 = [(ACAccountStore *)self->_defaultStore aa_appleAccountWithAltDSID:?];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (ACAccount)gsAccount
{
  defaultStore = self->_defaultStore;
  appleAccount = [(FAPushMessage *)self appleAccount];
  v4 = [(ACAccountStore *)defaultStore aida_accountForiCloudAccount:appleAccount];

  return v4;
}

- (BOOL)isValid
{
  if (!self->_topic || !self->_payload || !self->_event || !self->_dsid && !self->_altDSID)
  {
    v4 = _FALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100078894(v4);
    }

    goto LABEL_11;
  }

  appleAccount = [(FAPushMessage *)self appleAccount];
  v4 = appleAccount;
  if (!appleAccount)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100078824(&self->_dsid, self);
    }

    goto LABEL_17;
  }

  if (([appleAccount aa_isAccountClass:AAAccountClassPrimary]& 1) == 0)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000787B4(&self->_dsid, self);
    }

LABEL_17:

LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = 1;
LABEL_12:

  return v5;
}

@end