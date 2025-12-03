@interface HMDPairedAccessoryInformation
- (BOOL)isEqual:(id)equal;
- (HMDAccessoryBrowserDelegate)delegate;
- (HMDPairedAccessoryInformation)init;
- (HMDPairedAccessoryInformation)initWithIdentifier:(id)identifier transports:(unint64_t)transports setupHash:(id)hash delegate:(id)delegate;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMDPairedAccessoryInformation

- (HMDAccessoryBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(HMDPairedAccessoryInformation *)self identifier];
  setupHash = [(HMDPairedAccessoryInformation *)self setupHash];
  v6 = [v3 stringWithFormat:@"Identifier: %@, setupHash: %@", identifier, setupHash];

  return v6;
}

- (unint64_t)hash
{
  identifier = [(HMDPairedAccessoryInformation *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = v6;
    if (v6)
    {
      identifier = [(HMDPairedAccessoryInformation *)v6 identifier];
      identifier2 = [(HMDPairedAccessoryInformation *)self identifier];
      v10 = [identifier isEqual:identifier2];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (HMDPairedAccessoryInformation)initWithIdentifier:(id)identifier transports:(unint64_t)transports setupHash:(id)hash delegate:(id)delegate
{
  identifierCopy = identifier;
  hashCopy = hash;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = HMDPairedAccessoryInformation;
  v13 = [(HMDPairedAccessoryInformation *)&v19 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v13->_transports = transports;
    v16 = [hashCopy copy];
    setupHash = v13->_setupHash;
    v13->_setupHash = v16;

    objc_storeWeak(&v13->_delegate, delegateCopy);
  }

  return v13;
}

- (HMDPairedAccessoryInformation)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end