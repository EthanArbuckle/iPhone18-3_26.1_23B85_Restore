@interface BMResourceContainer
- (BMResourceContainer)initWithCoder:(id)a3;
- (BMResourceContainer)initWithURL:(id)a3 personaIdentifier:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContainer:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMResourceContainer

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_url path];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_personaIdentifier hash];

  return v5 ^ v4;
}

- (BMResourceContainer)initWithURL:(id)a3 personaIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BMResourceContainer;
  v9 = [(BMResourceContainer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, a3);
    objc_storeStrong(&v10->_personaIdentifier, a4);
  }

  return v10;
}

- (BMResourceContainer)initWithCoder:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personaIdentifier"];
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
    [v4 failWithError:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  url = self->_url;
  v5 = a3;
  [v5 encodeObject:url forKey:@"url"];
  [v5 encodeObject:self->_personaIdentifier forKey:@"personaIdentifier"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(BMResourceContainer *)self isEqualToContainer:v5];
  }

  return v6;
}

- (BOOL)isEqualToContainer:(id)a3
{
  v5 = a3;
  v6 = [(NSURL *)self->_url path];
  v7 = [v5 url];
  v8 = [v7 path];
  if ([v6 isEqual:v8])
  {
    personaIdentifier = self->_personaIdentifier;
    v10 = personaIdentifier;
    if (!personaIdentifier)
    {
      v3 = [v5 personaIdentifier];
      if (!v3)
      {
        v12 = 1;
LABEL_9:

        goto LABEL_10;
      }

      v10 = self->_personaIdentifier;
    }

    v11 = [v5 personaIdentifier];
    v12 = [(NSString *)v10 isEqual:v11];

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