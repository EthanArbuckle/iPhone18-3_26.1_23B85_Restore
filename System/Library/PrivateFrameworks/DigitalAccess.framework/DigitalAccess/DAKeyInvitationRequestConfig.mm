@interface DAKeyInvitationRequestConfig
- (DAKeyInvitationRequestConfig)initWithCoder:(id)a3;
- (DAKeyInvitationRequestConfig)initWithSharingSessionIdentifier:(id)a3 ownerIdsIdentifier:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAKeyInvitationRequestConfig

- (DAKeyInvitationRequestConfig)initWithSharingSessionIdentifier:(id)a3 ownerIdsIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DAKeyInvitationRequestConfig;
  v9 = [(DAKeyInvitationRequestConfig *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sharingSessionIdentifier, a3);
    objc_storeStrong(&v10->_ownerIdsIdentifier, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DAKeyInvitationRequestConfig *)self sharingSessionIdentifier];
  [v4 encodeObject:v5 forKey:@"sharingSessionIdentifier"];

  v6 = [(DAKeyInvitationRequestConfig *)self ownerIdsIdentifier];
  [v4 encodeObject:v6 forKey:@"ownerIdsIdentifier"];
}

- (DAKeyInvitationRequestConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DAKeyInvitationRequestConfig;
  v5 = [(DAKeyInvitationRequestConfig *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingSessionIdentifier"];
    sharingSessionIdentifier = v5->_sharingSessionIdentifier;
    v5->_sharingSessionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerIdsIdentifier"];
    ownerIdsIdentifier = v5->_ownerIdsIdentifier;
    v5->_ownerIdsIdentifier = v8;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sharing Session Id    : %@\n", self->_sharingSessionIdentifier];
  [v3 appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Owner IDS Id          : %@\n", self->_ownerIdsIdentifier];
  [v3 appendString:v5];

  return v3;
}

@end