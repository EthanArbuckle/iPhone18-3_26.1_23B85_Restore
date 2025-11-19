@interface IDSKTOptInOutStatusData
- (IDSKTOptInOutStatusData)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSKTOptInOutStatusData

- (IDSKTOptInOutStatusData)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = IDSKTOptInOutStatusData;
  v5 = [(IDSKTOptInOutStatusData *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"KTOptStatusDataPubAccKey"];
    publicAccountKey = v5->_publicAccountKey;
    v5->_publicAccountKey = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"KTOptStatusDataOptInStatus"];
    optInStatus = v5->_optInStatus;
    v5->_optInStatus = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"KTOptStatusKTApplication"];
    ktApplication = v5->_ktApplication;
    v5->_ktApplication = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"KTOptStatusServiceIdentifier"];
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"KTOptStatusChangeReason"];
    optChangeReason = v5->_optChangeReason;
    v5->_optChangeReason = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  publicAccountKey = self->_publicAccountKey;
  v5 = a3;
  [v5 encodeObject:publicAccountKey forKey:@"KTOptStatusDataPubAccKey"];
  [v5 encodeObject:self->_optInStatus forKey:@"KTOptStatusDataOptInStatus"];
  [v5 encodeObject:self->_ktApplication forKey:@"KTOptStatusKTApplication"];
  [v5 encodeObject:self->_serviceIdentifier forKey:@"KTOptStatusServiceIdentifier"];
  [v5 encodeObject:self->_optChangeReason forKey:@"KTOptStatusChangeReason"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  publicAccountKey = self->_publicAccountKey;
  v5 = [(NSNumber *)self->_optInStatus BOOLValue];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  return [v3 stringWithFormat:@"<IDSKTOptInOutStatusData: %p, accountKey: %@, optInStatus: %@, ktApplication: %@, serviceIdentifier: %@ changeReason: %@>", self, publicAccountKey, v6, self->_ktApplication, self->_serviceIdentifier, self->_optChangeReason];
}

@end