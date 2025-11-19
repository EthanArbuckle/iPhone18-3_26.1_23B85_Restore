@interface HMDPairedAccessoryInformation
- (BOOL)isEqual:(id)a3;
- (HMDAccessoryBrowserDelegate)delegate;
- (HMDPairedAccessoryInformation)init;
- (HMDPairedAccessoryInformation)initWithIdentifier:(id)a3 transports:(unint64_t)a4 setupHash:(id)a5 delegate:(id)a6;
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
  v4 = [(HMDPairedAccessoryInformation *)self identifier];
  v5 = [(HMDPairedAccessoryInformation *)self setupHash];
  v6 = [v3 stringWithFormat:@"Identifier: %@, setupHash: %@", v4, v5];

  return v6;
}

- (unint64_t)hash
{
  v2 = [(HMDPairedAccessoryInformation *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = v6;
    if (v6)
    {
      v8 = [(HMDPairedAccessoryInformation *)v6 identifier];
      v9 = [(HMDPairedAccessoryInformation *)self identifier];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (HMDPairedAccessoryInformation)initWithIdentifier:(id)a3 transports:(unint64_t)a4 setupHash:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = HMDPairedAccessoryInformation;
  v13 = [(HMDPairedAccessoryInformation *)&v19 init];
  if (v13)
  {
    v14 = [v10 copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v13->_transports = a4;
    v16 = [v11 copy];
    setupHash = v13->_setupHash;
    v13->_setupHash = v16;

    objc_storeWeak(&v13->_delegate, v12);
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