@interface IXAppRemovabilityMetadata
- (BOOL)isEqual:(id)a3;
- (IXAppRemovabilityMetadata)initWithCoder:(id)a3;
- (IXAppRemovabilityMetadata)initWithMetadataDictionary:(id)a3;
- (IXAppRemovabilityMetadata)initWithRemovability:(unint64_t)a3 client:(unint64_t)a4;
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IXAppRemovabilityMetadata

- (IXAppRemovabilityMetadata)initWithRemovability:(unint64_t)a3 client:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = IXAppRemovabilityMetadata;
  result = [(IXAppRemovabilityMetadata *)&v7 init];
  if (result)
  {
    result->_removability = a3;
    result->_client = a4;
  }

  return result;
}

- (IXAppRemovabilityMetadata)initWithMetadataDictionary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"removability"];
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

    v9 = 0;
    if (v8 && v12)
    {
      self = -[IXAppRemovabilityMetadata initWithRemovability:client:](self, "initWithRemovability:client:", [v8 unsignedIntegerValue], objc_msgSend(v12, "unsignedIntegerValue"));
      v9 = self;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSDictionary)dictionaryRepresentation
{
  v7[0] = @"removability";
  v3 = [NSNumber numberWithUnsignedInteger:[(IXAppRemovabilityMetadata *)self removability]];
  v7[1] = @"client";
  v8[0] = v3;
  v4 = [NSNumber numberWithUnsignedInteger:[(IXAppRemovabilityMetadata *)self client]];
  v8[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)description
{
  v3 = IXStringForAppRemovability([(IXAppRemovabilityMetadata *)self removability]);
  v4 = IXStringForAppRemovabilityClient([(IXAppRemovabilityMetadata *)self client]);
  v5 = [NSString stringWithFormat:@"%@:%@", v3, v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(IXAppRemovabilityMetadata *)self removability];
  v6 = [(IXAppRemovabilityMetadata *)self client];

  return [v4 initWithRemovability:v5 client:v6];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(IXAppRemovabilityMetadata *)v6 removability];
    v9 = 0;
    if (v7 == [(IXAppRemovabilityMetadata *)self removability])
    {
      v8 = [(IXAppRemovabilityMetadata *)v6 client];
      if (v8 == [(IXAppRemovabilityMetadata *)self client])
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [NSNumber numberWithUnsignedInteger:[(IXAppRemovabilityMetadata *)self removability]];
  [v4 encodeObject:v5 forKey:@"removability"];

  v6 = [NSNumber numberWithUnsignedInteger:[(IXAppRemovabilityMetadata *)self client]];
  [v4 encodeObject:v6 forKey:@"client"];
}

- (IXAppRemovabilityMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IXAppRemovabilityMetadata;
  v5 = [(IXAppRemovabilityMetadata *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"removability"];
    v5->_removability = [v6 unsignedLongLongValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"client"];
    v5->_client = [v7 unsignedLongLongValue];
  }

  return v5;
}

@end