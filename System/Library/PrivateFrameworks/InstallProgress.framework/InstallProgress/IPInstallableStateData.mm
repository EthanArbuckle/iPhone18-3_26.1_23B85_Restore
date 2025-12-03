@interface IPInstallableStateData
- (IPInstallableStateData)initWithCoder:(id)coder;
- (IPInstallableStateData)initWithIdentity:(id)identity isInstalling:(BOOL)installing;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IPInstallableStateData

- (IPInstallableStateData)initWithIdentity:(id)identity isInstalling:(BOOL)installing
{
  identityCopy = identity;
  v11.receiver = self;
  v11.super_class = IPInstallableStateData;
  v8 = [(IPInstallableStateData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identity, identity);
    v9->_installing = installing;
  }

  return v9;
}

- (id)description
{
  if (self->_installing)
  {
    v2 = "YES";
  }

  else
  {
    v2 = "NO";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p %@ installing: %s>", self, self, self->_identity, v2];
}

- (IPInstallableStateData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = IPInstallableStateData;
  v5 = [(IPInstallableStateData *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    v7 = [coderCopy decodeBoolForKey:@"installing"];
    if (v6)
    {
      v8 = v7;
      objc_storeStrong(&v5->_identity, v6);
      v5->_installing = v8;
    }

    else
    {
      v9 = _IPMakeNSErrorImpl(*MEMORY[0x277CCA050], 4864, "[IPInstallableStateData initWithCoder:]", 85, 0);
      [coderCopy failWithError:v9];

      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identity = self->_identity;
  coderCopy = coder;
  [coderCopy encodeObject:identity forKey:@"identity"];
  [coderCopy encodeBool:self->_installing forKey:@"installing"];
}

@end