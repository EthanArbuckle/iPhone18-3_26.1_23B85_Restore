@interface IXAppRemovabilityMetadata
- (BOOL)isEqual:(id)equal;
- (IXAppRemovabilityMetadata)initWithCoder:(id)coder;
- (IXAppRemovabilityMetadata)initWithMetadataDictionary:(id)dictionary;
- (IXAppRemovabilityMetadata)initWithRemovability:(unint64_t)removability client:(unint64_t)client;
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXAppRemovabilityMetadata

- (IXAppRemovabilityMetadata)initWithRemovability:(unint64_t)removability client:(unint64_t)client
{
  v7.receiver = self;
  v7.super_class = IXAppRemovabilityMetadata;
  result = [(IXAppRemovabilityMetadata *)&v7 init];
  if (result)
  {
    result->_removability = removability;
    result->_client = client;
  }

  return result;
}

- (IXAppRemovabilityMetadata)initWithMetadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"removability"];
    objc_opt_class();
    v7 = v6;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v10 = [v5 objectForKeyedSubscript:@"client"];
    objc_opt_class();
    v11 = v10;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    selfCopy = 0;
    if (v8 && v12)
    {
      self = -[IXAppRemovabilityMetadata initWithRemovability:client:](self, "initWithRemovability:client:", [v8 unsignedIntegerValue], objc_msgSend(v12, "unsignedIntegerValue"));
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSDictionary)dictionaryRepresentation
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"removability";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IXAppRemovabilityMetadata removability](self, "removability")}];
  v8[1] = @"client";
  v9[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IXAppRemovabilityMetadata client](self, "client")}];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = IXStringForAppRemovability([(IXAppRemovabilityMetadata *)self removability]);
  v5 = IXStringForAppRemovabilityClient([(IXAppRemovabilityMetadata *)self client]);
  v6 = [v3 stringWithFormat:@"%@:%@", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  removability = [(IXAppRemovabilityMetadata *)self removability];
  client = [(IXAppRemovabilityMetadata *)self client];

  return [v4 initWithRemovability:removability client:client];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    removability = [(IXAppRemovabilityMetadata *)v6 removability];
    v9 = 0;
    if (removability == [(IXAppRemovabilityMetadata *)self removability])
    {
      client = [(IXAppRemovabilityMetadata *)v6 client];
      if (client == [(IXAppRemovabilityMetadata *)self client])
      {
        v9 = 1;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[IXAppRemovabilityMetadata removability](self, "removability")}];
  [coderCopy encodeObject:v6 forKey:@"removability"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IXAppRemovabilityMetadata client](self, "client")}];
  [coderCopy encodeObject:v7 forKey:@"client"];
}

- (IXAppRemovabilityMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = IXAppRemovabilityMetadata;
  v5 = [(IXAppRemovabilityMetadata *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"removability"];
    v5->_removability = [v6 unsignedLongLongValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"client"];
    v5->_client = [v7 unsignedLongLongValue];
  }

  return v5;
}

@end