@interface DAKeyInvitationRequestConfig
- (DAKeyInvitationRequestConfig)initWithCoder:(id)coder;
- (DAKeyInvitationRequestConfig)initWithSharingSessionIdentifier:(id)identifier ownerIdsIdentifier:(id)idsIdentifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAKeyInvitationRequestConfig

- (DAKeyInvitationRequestConfig)initWithSharingSessionIdentifier:(id)identifier ownerIdsIdentifier:(id)idsIdentifier
{
  identifierCopy = identifier;
  idsIdentifierCopy = idsIdentifier;
  v12.receiver = self;
  v12.super_class = DAKeyInvitationRequestConfig;
  v9 = [(DAKeyInvitationRequestConfig *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sharingSessionIdentifier, identifier);
    objc_storeStrong(&v10->_ownerIdsIdentifier, idsIdentifier);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sharingSessionIdentifier = [(DAKeyInvitationRequestConfig *)self sharingSessionIdentifier];
  [coderCopy encodeObject:sharingSessionIdentifier forKey:@"sharingSessionIdentifier"];

  ownerIdsIdentifier = [(DAKeyInvitationRequestConfig *)self ownerIdsIdentifier];
  [coderCopy encodeObject:ownerIdsIdentifier forKey:@"ownerIdsIdentifier"];
}

- (DAKeyInvitationRequestConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DAKeyInvitationRequestConfig;
  v5 = [(DAKeyInvitationRequestConfig *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingSessionIdentifier"];
    sharingSessionIdentifier = v5->_sharingSessionIdentifier;
    v5->_sharingSessionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerIdsIdentifier"];
    ownerIdsIdentifier = v5->_ownerIdsIdentifier;
    v5->_ownerIdsIdentifier = v8;
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sharing Session Id    : %@\n", self->_sharingSessionIdentifier];
  [string appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Owner IDS Id          : %@\n", self->_ownerIdsIdentifier];
  [string appendString:v5];

  return string;
}

@end