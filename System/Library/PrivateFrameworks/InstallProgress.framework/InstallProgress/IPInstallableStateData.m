@interface IPInstallableStateData
- (IPInstallableStateData)initWithCoder:(id)a3;
- (IPInstallableStateData)initWithIdentity:(id)a3 isInstalling:(BOOL)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IPInstallableStateData

- (IPInstallableStateData)initWithIdentity:(id)a3 isInstalling:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = IPInstallableStateData;
  v8 = [(IPInstallableStateData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identity, a3);
    v9->_installing = a4;
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

- (IPInstallableStateData)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IPInstallableStateData;
  v5 = [(IPInstallableStateData *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    v7 = [v4 decodeBoolForKey:@"installing"];
    if (v6)
    {
      v8 = v7;
      objc_storeStrong(&v5->_identity, v6);
      v5->_installing = v8;
    }

    else
    {
      v9 = _IPMakeNSErrorImpl(*MEMORY[0x277CCA050], 4864, "[IPInstallableStateData initWithCoder:]", 85, 0);
      [v4 failWithError:v9];

      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identity = self->_identity;
  v5 = a3;
  [v5 encodeObject:identity forKey:@"identity"];
  [v5 encodeBool:self->_installing forKey:@"installing"];
}

@end