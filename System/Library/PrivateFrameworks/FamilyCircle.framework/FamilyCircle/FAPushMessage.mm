@interface FAPushMessage
- (ACAccount)appleAccount;
- (ACAccount)gsAccount;
- (BOOL)isValid;
- (FAPushMessage)initWithMessage:(id)a3;
- (FAPushMessage)initWithMessage:(id)a3 accountStore:(id)a4;
@end

@implementation FAPushMessage

- (FAPushMessage)initWithMessage:(id)a3 accountStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = FAPushMessage;
  v8 = [(FAPushMessage *)&v25 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_defaultStore, a4);
    v10 = [v6 topic];
    topic = v9->_topic;
    v9->_topic = v10;

    v12 = [v6 userInfo];
    payload = v9->_payload;
    v9->_payload = v12;

    v14 = [(NSDictionary *)v9->_payload objectForKeyedSubscript:@"event"];
    event = v9->_event;
    v9->_event = v14;

    v16 = [(NSDictionary *)v9->_payload objectForKeyedSubscript:@"dsid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_7;
      }

      v17 = [v16 stringValue];
    }

    dsid = v9->_dsid;
    v9->_dsid = v17;

LABEL_7:
    v19 = [(NSDictionary *)v9->_payload objectForKeyedSubscript:@"setForDSID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
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

      v20 = [v19 stringValue];
    }

    setForDSID = v9->_setForDSID;
    v9->_setForDSID = v20;

    goto LABEL_12;
  }

LABEL_13:

  return v9;
}

- (FAPushMessage)initWithMessage:(id)a3
{
  v4 = a3;
  v5 = +[ACAccountStore defaultStore];
  v6 = [(FAPushMessage *)self initWithMessage:v4 accountStore:v5];

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
  v3 = [(FAPushMessage *)self appleAccount];
  v4 = [(ACAccountStore *)defaultStore aida_accountForiCloudAccount:v3];

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

  v3 = [(FAPushMessage *)self appleAccount];
  v4 = v3;
  if (!v3)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100078824(&self->_dsid, self);
    }

    goto LABEL_17;
  }

  if (([v3 aa_isAccountClass:AAAccountClassPrimary]& 1) == 0)
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