@interface BMResourceContainer
- (BMResourceContainer)initWithCoder:(id)coder;
- (BMResourceContainer)initWithURL:(id)l personaIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContainer:(id)container;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMResourceContainer

- (unint64_t)hash
{
  path = [(NSURL *)self->_url path];
  v4 = [path hash];
  v5 = [(NSString *)self->_personaIdentifier hash];

  return v5 ^ v4;
}

- (BMResourceContainer)initWithURL:(id)l personaIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = BMResourceContainer;
  v9 = [(BMResourceContainer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    objc_storeStrong(&v10->_personaIdentifier, identifier);
  }

  return v10;
}

- (BMResourceContainer)initWithCoder:(id)coder
{
  v13[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personaIdentifier"];
  if (v5)
  {
    self = [(BMResourceContainer *)self initWithURL:v5 personaIdentifier:v6];
  }

  if (!self)
  {
    v7 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v13[0] = @"Decoding failure";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v7 errorWithDomain:@"Biome" code:-1 userInfo:v8];
    [coderCopy failWithError:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  url = self->_url;
  coderCopy = coder;
  [coderCopy encodeObject:url forKey:@"url"];
  [coderCopy encodeObject:self->_personaIdentifier forKey:@"personaIdentifier"];
}

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = BMResourceContainer;
  v3 = [(BMResourceContainer *)&v9 description];
  v4 = v3;
  url = self->_url;
  if (self->_personaIdentifier)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" persona: %@", self->_personaIdentifier];
    v7 = [v4 stringByAppendingFormat:@" URL: %@%@", url, v6];
  }

  else
  {
    v7 = [v3 stringByAppendingFormat:@" URL: %@%@", self->_url, &stru_1F20E2850];
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(BMResourceContainer *)self isEqualToContainer:v5];
  }

  return v6;
}

- (BOOL)isEqualToContainer:(id)container
{
  containerCopy = container;
  path = [(NSURL *)self->_url path];
  v7 = [containerCopy url];
  path2 = [v7 path];
  if ([path isEqual:path2])
  {
    personaIdentifier = self->_personaIdentifier;
    v10 = personaIdentifier;
    if (!personaIdentifier)
    {
      personaIdentifier = [containerCopy personaIdentifier];
      if (!personaIdentifier)
      {
        v12 = 1;
LABEL_9:

        goto LABEL_10;
      }

      v10 = self->_personaIdentifier;
    }

    personaIdentifier2 = [containerCopy personaIdentifier];
    v12 = [(NSString *)v10 isEqual:personaIdentifier2];

    if (!personaIdentifier)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_10:

  return v12;
}

@end