@interface MCMClientCodeSignIndex
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToClientCodeSignIndex:(id)index;
- (MCMClientCodeSignIndex)initWithCDHash:(id)hash identifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation MCMClientCodeSignIndex

- (unint64_t)hash
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(NSData *)self->_cdhash hash];
  v4 = [(NSString *)self->_identifier hash];
  v5 = *MEMORY[0x1E69E9840];
  return v4 ^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [MCMClientCodeSignIndex alloc];
  cdhash = self->_cdhash;
  identifier = self->_identifier;
  v7 = *MEMORY[0x1E69E9840];

  return [(MCMClientCodeSignIndex *)v4 initWithCDHash:cdhash identifier:identifier];
}

- (BOOL)isEqual:(id)equal
{
  v8 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MCMClientCodeSignIndex *)self isEqualToClientCodeSignIndex:equalCopy];

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToClientCodeSignIndex:(id)index
{
  v8 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  if ([(NSData *)self->_cdhash isEqualToData:indexCopy[1]])
  {
    v5 = [(NSString *)self->_identifier isEqualToString:indexCopy[2]];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MCMClientCodeSignIndex)initWithCDHash:(id)hash identifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  hashCopy = hash;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = MCMClientCodeSignIndex;
  v9 = [(MCMClientCodeSignIndex *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cdhash, hash);
    objc_storeStrong(&v10->_identifier, identifier);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

@end