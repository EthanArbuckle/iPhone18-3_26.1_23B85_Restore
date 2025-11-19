@interface SGMessageKey
+ (BOOL)isSupportedEntityType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMessageKey:(id)a3;
- (NSString)description;
- (SGMessageKey)initWithSerialized:(id)a3;
- (SGMessageKey)initWithSource:(id)a3 uniqueIdentifier:(id)a4;
- (id)serialize;
@end

@implementation SGMessageKey

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<SGMessageKey source:%@ uniqueIdentifier:%@>", self->_source, self->_uniqueIdentifier];

  return v2;
}

- (BOOL)isEqualToMessageKey:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
    goto LABEL_11;
  }

  v5 = self->_source;
  v6 = v5;
  if (v5 == v4->_source)
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_11;
    }
  }

  v9 = self->_uniqueIdentifier;
  v10 = v9;
  if (v9 == v4->_uniqueIdentifier)
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSString *)v9 isEqual:?];
  }

LABEL_11:
  return v8;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGMessageKey *)self isEqualToMessageKey:v5];
  }

  return v6;
}

- (id)serialize
{
  source = self->_source;
  uniqueIdentifier = self->_uniqueIdentifier;
  return SGDelimitedStringsSerialize();
}

- (SGMessageKey)initWithSerialized:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGMessageKey.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"serialized"}];
  }

  v6 = SGDelimitedStringsDeserialize();
  if ([v6 count] != 2 && objc_msgSend(v6, "count") != 3)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SGMessageKey.m" lineNumber:38 description:@"Invalid serialization"];
  }

  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v6 objectAtIndexedSubscript:1];
  v9 = [(SGMessageKey *)self initWithSource:v7 uniqueIdentifier:v8];

  return v9;
}

- (SGMessageKey)initWithSource:(id)a3 uniqueIdentifier:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGMessageKey.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"source"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"SGMessageKey.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"uniqueIdentifier"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = SGMessageKey;
  v11 = [(SGMessageKey *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uniqueIdentifier, a4);
    objc_storeStrong(&v12->_source, a3);
  }

  return v12;
}

+ (BOOL)isSupportedEntityType:(int64_t)a3
{
  if (a3 >= 0x1C)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"SGMessageKey.m" lineNumber:81 description:{@"Unknown entity type: %lu", a3}];

    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 0x52020u >> a3;
  }

  return v4 & 1;
}

@end