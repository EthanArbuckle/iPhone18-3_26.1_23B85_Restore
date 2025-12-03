@interface IXAppRemovabilityMetadataList
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (IXAppRemovabilityMetadataList)initWithCoder:(id)coder;
- (IXAppRemovabilityMetadataList)initWithInitialRemovability:(unint64_t)removability client:(unint64_t)client;
- (IXAppRemovabilityMetadataList)initWithInitialRemovabilityMetadata:(id)metadata;
- (IXAppRemovabilityMetadataList)initWithMetadataDictionary:(id)dictionary;
- (IXAppRemovabilityMetadataList)initWithSerializedDictionary:(id)dictionary;
- (NSDictionary)propertyListRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mostRestrictiveRemovabilityMetadata;
- (unint64_t)hash;
- (unint64_t)removabilityForClient:(unint64_t)client notFoundRemovability:(unint64_t)removability;
- (void)encodeWithCoder:(id)coder;
- (void)updateRemovability:(unint64_t)removability forClient:(unint64_t)client;
- (void)updateRemovabilityWithMetadata:(id)metadata;
@end

@implementation IXAppRemovabilityMetadataList

- (IXAppRemovabilityMetadataList)initWithMetadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v10.receiver = self;
    v10.super_class = IXAppRemovabilityMetadataList;
    v5 = [(IXAppRemovabilityMetadataList *)&v10 init];
    if (v5)
    {
      v6 = [dictionaryCopy copy];
      clientToRemovabilityMetadataMap = v5->_clientToRemovabilityMetadataMap;
      v5->_clientToRemovabilityMetadataMap = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IXAppRemovabilityMetadataList)initWithInitialRemovability:(unint64_t)removability client:(unint64_t)client
{
  v10.receiver = self;
  v10.super_class = IXAppRemovabilityMetadataList;
  v6 = [(IXAppRemovabilityMetadataList *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_new();
    clientToRemovabilityMetadataMap = v6->_clientToRemovabilityMetadataMap;
    v6->_clientToRemovabilityMetadataMap = v7;

    [(IXAppRemovabilityMetadataList *)v6 updateRemovability:removability forClient:client];
  }

  return v6;
}

- (IXAppRemovabilityMetadataList)initWithInitialRemovabilityMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (metadataCopy)
  {
    v10.receiver = self;
    v10.super_class = IXAppRemovabilityMetadataList;
    v5 = [(IXAppRemovabilityMetadataList *)&v10 init];
    if (v5)
    {
      v6 = objc_opt_new();
      clientToRemovabilityMetadataMap = v5->_clientToRemovabilityMetadataMap;
      v5->_clientToRemovabilityMetadataMap = v6;

      [(IXAppRemovabilityMetadataList *)v5 updateRemovabilityWithMetadata:metadataCopy];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IXAppRemovabilityMetadataList)initWithSerializedDictionary:(id)dictionary
{
  if (dictionary)
  {
    v4 = [dictionary objectForKeyedSubscript:@"metadata"];
    objc_opt_class();
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v15.receiver = self;
      v15.super_class = IXAppRemovabilityMetadataList;
      v8 = [(IXAppRemovabilityMetadataList *)&v15 init];
      if (v8)
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10003A03C;
        v13[3] = &unk_100102380;
        v14 = objc_opt_new();
        v9 = v14;
        [v6 enumerateObjectsUsingBlock:v13];
        v10 = [v9 copy];
        clientToRemovabilityMetadataMap = v8->_clientToRemovabilityMetadataMap;
        v8->_clientToRemovabilityMetadataMap = v10;
      }

      self = v8;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)mostRestrictiveRemovabilityMetadata
{
  clientToRemovabilityMetadataMap = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  if ([clientToRemovabilityMetadataMap count])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_10003A274;
    v11 = sub_10003A284;
    v12 = 0;
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x2020000000;
    v6[3] = 0;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10003A28C;
    v5[3] = &unk_1001023A8;
    v5[4] = &v7;
    v5[5] = v6;
    [clientToRemovabilityMetadataMap enumerateKeysAndObjectsUsingBlock:v5];
    v3 = v8[5];
    _Block_object_dispose(v6, 8);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateRemovability:(unint64_t)removability forClient:(unint64_t)client
{
  clientToRemovabilityMetadataMap = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v12 = [clientToRemovabilityMetadataMap mutableCopy];

  v8 = [NSNumber numberWithUnsignedInteger:client];
  if (removability == 1)
  {
    v9 = [v12 objectForKeyedSubscript:v8];

    if (v9)
    {
      [v12 removeObjectForKey:v8];
    }
  }

  else
  {
    v10 = [[IXAppRemovabilityMetadata alloc] initWithRemovability:removability client:client];
    [v12 setObject:v10 forKeyedSubscript:v8];
  }

  v11 = [v12 copy];
  [(IXAppRemovabilityMetadataList *)self setClientToRemovabilityMetadataMap:v11];
}

- (void)updateRemovabilityWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  clientToRemovabilityMetadataMap = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v5 = [clientToRemovabilityMetadataMap mutableCopy];

  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [metadataCopy client]);
  if ([metadataCopy removability] == 1)
  {
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7)
    {
      [v5 removeObjectForKey:v6];
    }
  }

  else
  {
    [v5 setObject:metadataCopy forKeyedSubscript:v6];
  }

  v8 = [v5 copy];
  [(IXAppRemovabilityMetadataList *)self setClientToRemovabilityMetadataMap:v8];
}

- (unint64_t)removabilityForClient:(unint64_t)client notFoundRemovability:(unint64_t)removability
{
  if (![(IXAppRemovabilityMetadataList *)self isEmpty])
  {
    clientToRemovabilityMetadataMap = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
    v8 = [NSNumber numberWithUnsignedInteger:client];
    v9 = [clientToRemovabilityMetadataMap objectForKeyedSubscript:v8];

    if (v9)
    {
      removability = [v9 removability];
    }
  }

  return removability;
}

- (BOOL)isEmpty
{
  clientToRemovabilityMetadataMap = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v3 = [clientToRemovabilityMetadataMap count] == 0;

  return v3;
}

- (id)description
{
  v3 = objc_opt_new();
  clientToRemovabilityMetadataMap = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10003A708;
  v11 = &unk_1001023D0;
  v12 = v3;
  v5 = v3;
  [clientToRemovabilityMetadataMap enumerateKeysAndObjectsUsingBlock:&v8];

  v6 = [NSString stringWithFormat:@"%@", v5, v8, v9, v10, v11];

  return v6;
}

- (NSDictionary)propertyListRepresentation
{
  v3 = objc_opt_new();
  clientToRemovabilityMetadataMap = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10003A894;
  v12 = &unk_1001023D0;
  v13 = v3;
  v5 = v3;
  [clientToRemovabilityMetadataMap enumerateKeysAndObjectsUsingBlock:&v9];

  v14 = @"metadata";
  v6 = [v5 copy];
  v15 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IXAppRemovabilityMetadataList allocWithZone:zone];
  clientToRemovabilityMetadataMap = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v6 = [(IXAppRemovabilityMetadataList *)v4 initWithMetadataDictionary:clientToRemovabilityMetadataMap];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    clientToRemovabilityMetadataMap = [(IXAppRemovabilityMetadataList *)v5 clientToRemovabilityMetadataMap];
    clientToRemovabilityMetadataMap2 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
    v8 = [clientToRemovabilityMetadataMap isEqual:clientToRemovabilityMetadataMap2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  clientToRemovabilityMetadataMap = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v3 = [clientToRemovabilityMetadataMap hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientToRemovabilityMetadataMap = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  [coderCopy encodeObject:clientToRemovabilityMetadataMap forKey:@"clientToRemovabilityMetadataMap"];
}

- (IXAppRemovabilityMetadataList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = IXAppRemovabilityMetadataList;
  v5 = [(IXAppRemovabilityMetadataList *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v6, v7, v8, objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"clientToRemovabilityMetadataMap"];
    clientToRemovabilityMetadataMap = v5->_clientToRemovabilityMetadataMap;
    v5->_clientToRemovabilityMetadataMap = v10;
  }

  return v5;
}

@end