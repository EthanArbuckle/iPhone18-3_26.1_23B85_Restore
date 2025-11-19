@interface HMMTRPairingWindowInfoTableEntry
- (HMMTRAccessoryServer)accessoryServer;
- (HMMTRPairingWindowInfoTableEntry)initWithAccessoryServer:(id)a3 expirationDate:(id)a4;
@end

@implementation HMMTRPairingWindowInfoTableEntry

- (HMMTRAccessoryServer)accessoryServer
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryServer);

  return WeakRetained;
}

- (HMMTRPairingWindowInfoTableEntry)initWithAccessoryServer:(id)a3 expirationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMMTRPairingWindowInfoTableEntry;
  v8 = [(HMMTRPairingWindowInfoTableEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_accessoryServer, v6);
    objc_storeStrong(&v9->_expirationDate, a4);
  }

  return v9;
}

@end