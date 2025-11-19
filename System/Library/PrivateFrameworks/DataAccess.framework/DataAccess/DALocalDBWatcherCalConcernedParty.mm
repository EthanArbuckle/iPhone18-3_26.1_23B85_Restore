@interface DALocalDBWatcherCalConcernedParty
- (BOOL)isEqual:(id)a3;
- (DALocalDBWatcherCalConcernedParty)initWithConcernedParty:(id)a3 accountID:(id)a4;
- (id)concernedParty;
- (unint64_t)hash;
@end

@implementation DALocalDBWatcherCalConcernedParty

- (DALocalDBWatcherCalConcernedParty)initWithConcernedParty:(id)a3 accountID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DALocalDBWatcherCalConcernedParty;
  v8 = [(DALocalDBWatcherCalConcernedParty *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_concernedParty, v6);
    objc_storeStrong(&v9->_accountID, a4);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_concernedParty);
    v7 = [v5 concernedParty];
    if (WeakRetained == v7)
    {
      accountID = self->_accountID;
      v10 = [v5 accountID];
      v8 = [(NSString *)accountID isEqual:v10];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  WeakRetained = objc_loadWeakRetained(&self->_concernedParty);
  v4 = [WeakRetained hash];
  v5 = [(NSString *)self->_accountID hash];

  return v5 ^ v4;
}

- (id)concernedParty
{
  WeakRetained = objc_loadWeakRetained(&self->_concernedParty);

  return WeakRetained;
}

@end