@interface HMMTRPairingWindowInfoTableEntry
- (HMMTRAccessoryServer)accessoryServer;
- (HMMTRPairingWindowInfoTableEntry)initWithAccessoryServer:(id)server expirationDate:(id)date;
@end

@implementation HMMTRPairingWindowInfoTableEntry

- (HMMTRAccessoryServer)accessoryServer
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryServer);

  return WeakRetained;
}

- (HMMTRPairingWindowInfoTableEntry)initWithAccessoryServer:(id)server expirationDate:(id)date
{
  serverCopy = server;
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = HMMTRPairingWindowInfoTableEntry;
  v8 = [(HMMTRPairingWindowInfoTableEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_accessoryServer, serverCopy);
    objc_storeStrong(&v9->_expirationDate, date);
  }

  return v9;
}

@end