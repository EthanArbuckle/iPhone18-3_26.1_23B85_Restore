@interface IXAppRemovabilityMetadataList
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (IXAppRemovabilityMetadataList)initWithCoder:(id)a3;
- (IXAppRemovabilityMetadataList)initWithInitialRemovability:(unint64_t)a3 client:(unint64_t)a4;
- (IXAppRemovabilityMetadataList)initWithInitialRemovabilityMetadata:(id)a3;
- (IXAppRemovabilityMetadataList)initWithMetadataDictionary:(id)a3;
- (IXAppRemovabilityMetadataList)initWithSerializedDictionary:(id)a3;
- (NSDictionary)propertyListRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mostRestrictiveRemovabilityMetadata;
- (unint64_t)hash;
- (unint64_t)removabilityForClient:(unint64_t)a3 notFoundRemovability:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateRemovability:(unint64_t)a3 forClient:(unint64_t)a4;
- (void)updateRemovabilityWithMetadata:(id)a3;
@end

@implementation IXAppRemovabilityMetadataList

- (IXAppRemovabilityMetadataList)initWithMetadataDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = IXAppRemovabilityMetadataList;
    v5 = [(IXAppRemovabilityMetadataList *)&v10 init];
    if (v5)
    {
      v6 = [v4 copy];
      clientToRemovabilityMetadataMap = v5->_clientToRemovabilityMetadataMap;
      v5->_clientToRemovabilityMetadataMap = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (IXAppRemovabilityMetadataList)initWithInitialRemovability:(unint64_t)a3 client:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = IXAppRemovabilityMetadataList;
  v6 = [(IXAppRemovabilityMetadataList *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_new();
    clientToRemovabilityMetadataMap = v6->_clientToRemovabilityMetadataMap;
    v6->_clientToRemovabilityMetadataMap = v7;

    [(IXAppRemovabilityMetadataList *)v6 updateRemovability:a3 forClient:a4];
  }

  return v6;
}

- (IXAppRemovabilityMetadataList)initWithInitialRemovabilityMetadata:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = IXAppRemovabilityMetadataList;
    v5 = [(IXAppRemovabilityMetadataList *)&v10 init];
    if (v5)
    {
      v6 = objc_opt_new();
      clientToRemovabilityMetadataMap = v5->_clientToRemovabilityMetadataMap;
      v5->_clientToRemovabilityMetadataMap = v6;

      [(IXAppRemovabilityMetadataList *)v5 updateRemovabilityWithMetadata:v4];
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (IXAppRemovabilityMetadataList)initWithSerializedDictionary:(id)a3
{
  if (a3)
  {
    v4 = [a3 objectForKeyedSubscript:@"metadata"];
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
      v7 = self;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)mostRestrictiveRemovabilityMetadata
{
  v2 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  if ([v2 count])
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
    [v2 enumerateKeysAndObjectsUsingBlock:v5];
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

- (void)updateRemovability:(unint64_t)a3 forClient:(unint64_t)a4
{
  v7 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v12 = [v7 mutableCopy];

  v8 = [NSNumber numberWithUnsignedInteger:a4];
  if (a3 == 1)
  {
    v9 = [v12 objectForKeyedSubscript:v8];

    if (v9)
    {
      [v12 removeObjectForKey:v8];
    }
  }

  else
  {
    v10 = [[IXAppRemovabilityMetadata alloc] initWithRemovability:a3 client:a4];
    [v12 setObject:v10 forKeyedSubscript:v8];
  }

  v11 = [v12 copy];
  [(IXAppRemovabilityMetadataList *)self setClientToRemovabilityMetadataMap:v11];
}

- (void)updateRemovabilityWithMetadata:(id)a3
{
  v9 = a3;
  v4 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v5 = [v4 mutableCopy];

  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 client]);
  if ([v9 removability] == 1)
  {
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7)
    {
      [v5 removeObjectForKey:v6];
    }
  }

  else
  {
    [v5 setObject:v9 forKeyedSubscript:v6];
  }

  v8 = [v5 copy];
  [(IXAppRemovabilityMetadataList *)self setClientToRemovabilityMetadataMap:v8];
}

- (unint64_t)removabilityForClient:(unint64_t)a3 notFoundRemovability:(unint64_t)a4
{
  if (![(IXAppRemovabilityMetadataList *)self isEmpty])
  {
    v7 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
    v8 = [NSNumber numberWithUnsignedInteger:a3];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      a4 = [v9 removability];
    }
  }

  return a4;
}

- (BOOL)isEmpty
{
  v2 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v3 = [v2 count] == 0;

  return v3;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10003A708;
  v11 = &unk_1001023D0;
  v12 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:&v8];

  v6 = [NSString stringWithFormat:@"%@", v5, v8, v9, v10, v11];

  return v6;
}

- (NSDictionary)propertyListRepresentation
{
  v3 = objc_opt_new();
  v4 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10003A894;
  v12 = &unk_1001023D0;
  v13 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:&v9];

  v14 = @"metadata";
  v6 = [v5 copy];
  v15 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [IXAppRemovabilityMetadataList allocWithZone:a3];
  v5 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v6 = [(IXAppRemovabilityMetadataList *)v4 initWithMetadataDictionary:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(IXAppRemovabilityMetadataList *)v5 clientToRemovabilityMetadataMap];
    v7 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  [v4 encodeObject:v5 forKey:@"clientToRemovabilityMetadataMap"];
}

- (IXAppRemovabilityMetadataList)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IXAppRemovabilityMetadataList;
  v5 = [(IXAppRemovabilityMetadataList *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v6, v7, v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"clientToRemovabilityMetadataMap"];
    clientToRemovabilityMetadataMap = v5->_clientToRemovabilityMetadataMap;
    v5->_clientToRemovabilityMetadataMap = v10;
  }

  return v5;
}

@end