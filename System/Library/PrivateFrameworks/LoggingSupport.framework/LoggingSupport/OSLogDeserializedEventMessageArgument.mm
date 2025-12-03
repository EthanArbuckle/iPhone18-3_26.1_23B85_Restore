@interface OSLogDeserializedEventMessageArgument
- (OSLogDeserializedEventMessageArgument)initWithDict:(id)dict metadata:(id)metadata;
- (const)rawBytes;
- (double)doubleValue;
- (double)longDoubleValue;
- (id)_numValue;
- (id)objectRepresentation;
- (int64_t)int64Value;
- (unint64_t)availability;
- (unint64_t)category;
- (unint64_t)privacy;
- (unint64_t)scalarCategory;
- (unint64_t)scalarType;
- (unint64_t)unsignedInt64Value;
- (unsigned)rawBytesLength;
@end

@implementation OSLogDeserializedEventMessageArgument

- (double)longDoubleValue
{
  _numValue = [self _numValue];
  [_numValue doubleValue];
  v3 = v2;

  return v3;
}

- (double)doubleValue
{
  _numValue = [(OSLogDeserializedEventMessageArgument *)self _numValue];
  [_numValue doubleValue];
  v4 = v3;

  return v4;
}

- (int64_t)int64Value
{
  _numValue = [(OSLogDeserializedEventMessageArgument *)self _numValue];
  longLongValue = [_numValue longLongValue];

  return longLongValue;
}

- (unint64_t)unsignedInt64Value
{
  _numValue = [(OSLogDeserializedEventMessageArgument *)self _numValue];
  unsignedLongLongValue = [_numValue unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (id)_numValue
{
  if ((![(OSLogDeserializedEventMessageArgument *)self availability]|| [(OSLogDeserializedEventMessageArgument *)self availability]== 3) && [(OSLogDeserializedEventMessageArgument *)self category]== 1)
  {
    objectRepresentation = [(OSLogDeserializedEventMessageArgument *)self objectRepresentation];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = objectRepresentation;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)rawBytesLength
{
  if (![(OSLogDeserializedEventMessageArgument *)self availability]|| [(OSLogDeserializedEventMessageArgument *)self availability]== 3)
  {
    if ([(OSLogDeserializedEventMessageArgument *)self category]== 2)
    {
      objectRepresentation = [(OSLogDeserializedEventMessageArgument *)self objectRepresentation];
      if (!objectRepresentation)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    if ([(OSLogDeserializedEventMessageArgument *)self category]== 3)
    {
      objectRepresentation = [(OSLogDeserializedEventMessageArgument *)self objectRepresentation];
      if (!objectRepresentation)
      {
        goto LABEL_11;
      }

LABEL_8:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [objectRepresentation length];
LABEL_12:

        return v4;
      }

LABEL_11:
      v4 = 0;
      goto LABEL_12;
    }
  }

  return 0;
}

- (const)rawBytes
{
  if (![(OSLogDeserializedEventMessageArgument *)self availability]|| [(OSLogDeserializedEventMessageArgument *)self availability]== 3)
  {
    if ([(OSLogDeserializedEventMessageArgument *)self category]== 2)
    {
      objectRepresentation = [(OSLogDeserializedEventMessageArgument *)self objectRepresentation];
      if (objectRepresentation)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          uTF8String = [objectRepresentation UTF8String];
LABEL_11:
          v5 = uTF8String;
LABEL_14:

          return v5;
        }
      }

      goto LABEL_13;
    }

    if ([(OSLogDeserializedEventMessageArgument *)self category]== 3)
    {
      objectRepresentation = [(OSLogDeserializedEventMessageArgument *)self objectRepresentation];
      if (objectRepresentation)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          uTF8String = [objectRepresentation bytes];
          goto LABEL_11;
        }
      }

LABEL_13:
      v5 = 0;
      goto LABEL_14;
    }
  }

  return 0;
}

- (id)objectRepresentation
{
  if ([(OSLogDeserializedEventMessageArgument *)self availability]&& [(OSLogDeserializedEventMessageArgument *)self availability]!= 3)
  {
    goto LABEL_10;
  }

  category = [(OSLogDeserializedEventMessageArgument *)self category];
  if (category != 1 && category != 3)
  {
    if (category == 2)
    {
      backingDict = [(OSLogDeserializedEventMessageArgument *)self backingDict];
      backingDict2 = [backingDict objectForKeyedSubscript:@"or"];

      if (backingDict2)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          v11 = objc_opt_class();
          [currentHandler handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1209 description:{@"Unexpected class: %@. Expected: %@", v11, objc_opt_class()}];
        }

        metadata = [(OSLogDeserializedEventMessageArgument *)self metadata];
        v8 = [metadata stringForIndex:backingDict2];
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_12;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_13;
  }

  backingDict2 = [(OSLogDeserializedEventMessageArgument *)self backingDict];
  v8 = [backingDict2 objectForKeyedSubscript:@"or"];
LABEL_12:

LABEL_13:

  return v8;
}

- (unint64_t)scalarType
{
  backingDict = [(OSLogDeserializedEventMessageArgument *)self backingDict];
  v5 = [backingDict objectForKeyedSubscript:@"st"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [currentHandler handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1192 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    unsignedLongLongValue = [v5 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (unint64_t)scalarCategory
{
  backingDict = [(OSLogDeserializedEventMessageArgument *)self backingDict];
  v5 = [backingDict objectForKeyedSubscript:@"sc"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [currentHandler handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1191 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    unsignedLongLongValue = [v5 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (unint64_t)category
{
  backingDict = [(OSLogDeserializedEventMessageArgument *)self backingDict];
  v5 = [backingDict objectForKeyedSubscript:@"c"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [currentHandler handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1190 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    unsignedLongLongValue = [v5 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (unint64_t)privacy
{
  backingDict = [(OSLogDeserializedEventMessageArgument *)self backingDict];
  v5 = [backingDict objectForKeyedSubscript:@"p"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [currentHandler handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1189 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    unsignedLongLongValue = [v5 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (unint64_t)availability
{
  backingDict = [(OSLogDeserializedEventMessageArgument *)self backingDict];
  v5 = [backingDict objectForKeyedSubscript:@"a"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [currentHandler handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1188 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    unsignedLongLongValue = [v5 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (OSLogDeserializedEventMessageArgument)initWithDict:(id)dict metadata:(id)metadata
{
  dictCopy = dict;
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = OSLogDeserializedEventMessageArgument;
  v9 = [(OSLogDeserializedEventMessageArgument *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backingDict, dict);
    objc_storeStrong(&v10->_metadata, metadata);
  }

  return v10;
}

@end