@interface PKAppletSubcredentialSharingInvitationMetadata
- (PKAppletSubcredentialSharingInvitationMetadata)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAppletSubcredentialSharingInvitationMetadata

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  if (self->_shouldRequestInvitation)
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  return [v3 stringWithFormat:@"< %@; %p; anonymization salt: %@; request invitation: %s >", v4, self, self->_anonymizationSalt, v5];
}

- (void)encodeWithCoder:(id)a3
{
  anonymizationSalt = self->_anonymizationSalt;
  v5 = a3;
  [v5 encodeObject:anonymizationSalt forKey:@"anonymizationSalt"];
  [v5 encodeBool:self->_shouldRequestInvitation forKey:@"shouldRequestInvitation"];
}

- (PKAppletSubcredentialSharingInvitationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKAppletSubcredentialSharingInvitationMetadata *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anonymizationSalt"];
    anonymizationSalt = v5->_anonymizationSalt;
    v5->_anonymizationSalt = v6;

    v5->_shouldRequestInvitation = [v4 decodeBoolForKey:@"shouldRequestInvitation"];
  }

  return v5;
}

@end