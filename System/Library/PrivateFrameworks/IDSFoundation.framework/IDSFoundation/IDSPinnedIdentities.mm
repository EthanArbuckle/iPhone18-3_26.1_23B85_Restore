@interface IDSPinnedIdentities
- (IDSPinnedIdentities)initWithCoder:(id)coder;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSPinnedIdentities

- (IDSPinnedIdentities)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = IDSPinnedIdentities;
  v5 = [(IDSPinnedIdentities *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PinnedIdentitiesPushToken"];
    pushToken = v5->_pushToken;
    v5->_pushToken = v6;

    v8 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"PinnedIdentitiesMetadatas"];
    pinnedIdentityMetadatas = v5->_pinnedIdentityMetadatas;
    v5->_pinnedIdentityMetadatas = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  pushToken = self->_pushToken;
  coderCopy = coder;
  [coderCopy encodeObject:pushToken forKey:@"PinnedIdentitiesPushToken"];
  [coderCopy encodeObject:self->_pinnedIdentityMetadatas forKey:@"PinnedIdentitiesMetadatas"];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NSData *)self->_pushToken debugDescription];
  v6 = [(NSArray *)self->_pinnedIdentityMetadatas debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p { pushToken: %@, \n metadatas: %@ }", v4, self, v5, v6];;

  return v7;
}

@end