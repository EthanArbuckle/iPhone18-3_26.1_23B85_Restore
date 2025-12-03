@interface DALocalDBWatcherCalConcernedParty
- (BOOL)isEqual:(id)equal;
- (DALocalDBWatcherCalConcernedParty)initWithConcernedParty:(id)party accountID:(id)d;
- (id)concernedParty;
- (unint64_t)hash;
@end

@implementation DALocalDBWatcherCalConcernedParty

- (DALocalDBWatcherCalConcernedParty)initWithConcernedParty:(id)party accountID:(id)d
{
  partyCopy = party;
  dCopy = d;
  v11.receiver = self;
  v11.super_class = DALocalDBWatcherCalConcernedParty;
  v8 = [(DALocalDBWatcherCalConcernedParty *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_concernedParty, partyCopy);
    objc_storeStrong(&v9->_accountID, d);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    WeakRetained = objc_loadWeakRetained(&self->_concernedParty);
    concernedParty = [v5 concernedParty];
    if (WeakRetained == concernedParty)
    {
      accountID = self->_accountID;
      accountID = [v5 accountID];
      v8 = [(NSString *)accountID isEqual:accountID];
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