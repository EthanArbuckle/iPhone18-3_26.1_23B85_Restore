@interface SGMessageKey
+ (BOOL)isSupportedEntityType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMessageKey:(id)key;
- (NSString)description;
- (SGMessageKey)initWithSerialized:(id)serialized;
- (SGMessageKey)initWithSource:(id)source uniqueIdentifier:(id)identifier;
- (id)serialize;
@end

@implementation SGMessageKey

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<SGMessageKey source:%@ uniqueIdentifier:%@>", self->_source, self->_uniqueIdentifier];

  return v2;
}

- (BOOL)isEqualToMessageKey:(id)key
{
  keyCopy = key;
  if (self == keyCopy)
  {
    v8 = 1;
    goto LABEL_11;
  }

  v5 = self->_source;
  v6 = v5;
  if (v5 == keyCopy->_source)
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
  if (v9 == keyCopy->_uniqueIdentifier)
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGMessageKey *)self isEqualToMessageKey:v5];
  }

  return v6;
}

- (id)serialize
{
  source = self->_source;
  uniqueIdentifier = self->_uniqueIdentifier;
  return SGDelimitedStringsSerialize();
}

- (SGMessageKey)initWithSerialized:(id)serialized
{
  serializedCopy = serialized;
  if (!serializedCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGMessageKey.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"serialized"}];
  }

  v6 = SGDelimitedStringsDeserialize();
  if ([v6 count] != 2 && objc_msgSend(v6, "count") != 3)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGMessageKey.m" lineNumber:38 description:@"Invalid serialization"];
  }

  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v6 objectAtIndexedSubscript:1];
  v9 = [(SGMessageKey *)self initWithSource:v7 uniqueIdentifier:v8];

  return v9;
}

- (SGMessageKey)initWithSource:(id)source uniqueIdentifier:(id)identifier
{
  sourceCopy = source;
  identifierCopy = identifier;
  v10 = identifierCopy;
  if (sourceCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGMessageKey.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"source"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGMessageKey.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"uniqueIdentifier"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = SGMessageKey;
  v11 = [(SGMessageKey *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uniqueIdentifier, identifier);
    objc_storeStrong(&v12->_source, source);
  }

  return v12;
}

+ (BOOL)isSupportedEntityType:(int64_t)type
{
  if (type >= 0x1C)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGMessageKey.m" lineNumber:81 description:{@"Unknown entity type: %lu", type}];

    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 0x52020u >> type;
  }

  return v4 & 1;
}

@end