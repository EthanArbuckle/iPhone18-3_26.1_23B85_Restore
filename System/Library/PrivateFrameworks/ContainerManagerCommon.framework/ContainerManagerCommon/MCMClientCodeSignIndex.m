@interface MCMClientCodeSignIndex
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToClientCodeSignIndex:(id)a3;
- (MCMClientCodeSignIndex)initWithCDHash:(id)a3 identifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [MCMClientCodeSignIndex alloc];
  cdhash = self->_cdhash;
  identifier = self->_identifier;
  v7 = *MEMORY[0x1E69E9840];

  return [(MCMClientCodeSignIndex *)v4 initWithCDHash:cdhash identifier:identifier];
}

- (BOOL)isEqual:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MCMClientCodeSignIndex *)self isEqualToClientCodeSignIndex:v4];

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToClientCodeSignIndex:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSData *)self->_cdhash isEqualToData:v4[1]])
  {
    v5 = [(NSString *)self->_identifier isEqualToString:v4[2]];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MCMClientCodeSignIndex)initWithCDHash:(id)a3 identifier:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = MCMClientCodeSignIndex;
  v9 = [(MCMClientCodeSignIndex *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cdhash, a3);
    objc_storeStrong(&v10->_identifier, a4);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

@end