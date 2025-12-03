@interface IDSKTOptInOutStatusData
- (IDSKTOptInOutStatusData)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSKTOptInOutStatusData

- (IDSKTOptInOutStatusData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = IDSKTOptInOutStatusData;
  v5 = [(IDSKTOptInOutStatusData *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"KTOptStatusDataPubAccKey"];
    publicAccountKey = v5->_publicAccountKey;
    v5->_publicAccountKey = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"KTOptStatusDataOptInStatus"];
    optInStatus = v5->_optInStatus;
    v5->_optInStatus = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"KTOptStatusKTApplication"];
    ktApplication = v5->_ktApplication;
    v5->_ktApplication = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"KTOptStatusServiceIdentifier"];
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"KTOptStatusChangeReason"];
    optChangeReason = v5->_optChangeReason;
    v5->_optChangeReason = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  publicAccountKey = self->_publicAccountKey;
  coderCopy = coder;
  [coderCopy encodeObject:publicAccountKey forKey:@"KTOptStatusDataPubAccKey"];
  [coderCopy encodeObject:self->_optInStatus forKey:@"KTOptStatusDataOptInStatus"];
  [coderCopy encodeObject:self->_ktApplication forKey:@"KTOptStatusKTApplication"];
  [coderCopy encodeObject:self->_serviceIdentifier forKey:@"KTOptStatusServiceIdentifier"];
  [coderCopy encodeObject:self->_optChangeReason forKey:@"KTOptStatusChangeReason"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  publicAccountKey = self->_publicAccountKey;
  bOOLValue = [(NSNumber *)self->_optInStatus BOOLValue];
  v6 = @"NO";
  if (bOOLValue)
  {
    v6 = @"YES";
  }

  return [v3 stringWithFormat:@"<IDSKTOptInOutStatusData: %p, accountKey: %@, optInStatus: %@, ktApplication: %@, serviceIdentifier: %@ changeReason: %@>", self, publicAccountKey, v6, self->_ktApplication, self->_serviceIdentifier, self->_optChangeReason];
}

@end