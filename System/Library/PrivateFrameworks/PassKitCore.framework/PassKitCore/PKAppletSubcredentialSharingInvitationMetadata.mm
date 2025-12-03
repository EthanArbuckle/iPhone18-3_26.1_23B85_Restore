@interface PKAppletSubcredentialSharingInvitationMetadata
- (PKAppletSubcredentialSharingInvitationMetadata)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  anonymizationSalt = self->_anonymizationSalt;
  coderCopy = coder;
  [coderCopy encodeObject:anonymizationSalt forKey:@"anonymizationSalt"];
  [coderCopy encodeBool:self->_shouldRequestInvitation forKey:@"shouldRequestInvitation"];
}

- (PKAppletSubcredentialSharingInvitationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKAppletSubcredentialSharingInvitationMetadata *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anonymizationSalt"];
    anonymizationSalt = v5->_anonymizationSalt;
    v5->_anonymizationSalt = v6;

    v5->_shouldRequestInvitation = [coderCopy decodeBoolForKey:@"shouldRequestInvitation"];
  }

  return v5;
}

@end