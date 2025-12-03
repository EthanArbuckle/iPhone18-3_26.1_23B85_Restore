@interface IDSPinnedIdentityMetadata
- (IDSPinnedIdentityMetadata)initWithCoder:(id)coder;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSPinnedIdentityMetadata

- (IDSPinnedIdentityMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = IDSPinnedIdentityMetadata;
  v5 = [(IDSPinnedIdentityMetadata *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PinnedIdentityMetadataService"];
    service = v5->_service;
    v5->_service = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PinnedIdentityMetadataIdentity"];
    identity = v5->_identity;
    v5->_identity = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  service = self->_service;
  coderCopy = coder;
  [coderCopy encodeObject:service forKey:@"PinnedIdentityMetadataService"];
  [coderCopy encodeObject:self->_identity forKey:@"PinnedIdentityMetadataIdentity"];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NSString *)self->_service debugDescription];
  v6 = [(NSData *)self->_identity debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p { service: %@, \n identity: %@ }", v4, self, v5, v6];;

  return v7;
}

@end