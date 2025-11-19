@interface _DKIdentifier
+ (id)_identifierFromManagedObject:(id)a3 readMetadata:(BOOL)a4 cache:(id)a5;
+ (id)fromPBCodable:(id)a3;
+ (id)identifierWithString:(id)a3 type:(id)a4;
- (BOOL)copyToManagedObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_DKIdentifier)initWithCoder:(id)a3;
- (_DKIdentifier)initWithString:(id)a3 type:(id)a4;
- (double)doubleValue;
- (id)toPBCodable;
- (int64_t)compareValue:(id)a3;
- (int64_t)integerValue;
- (int64_t)typeCode;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DKIdentifier

- (id)toPBCodable
{
  v3 = objc_alloc_init(_DKPRValue);
  v4 = objc_alloc_init(_DKPRValueType);
  [(_DKPRValue *)v3 setType:v4];
  v5 = [(_DKPRValue *)v3 type];
  [(_DKPRValueType *)v5 setType:?];

  v6 = [(_DKIdentifier *)self identifierType];
  v7 = [v6 typeCode];
  v8 = [(_DKPRValue *)v3 type];
  [(_DKPRValueType *)v8 setTypeCode:v7];

  v9 = [(_DKIdentifier *)self stringValue];
  [(_DKPRValue *)v3 setStringValue:v9];

  return v3;
}

- (int64_t)integerValue
{
  v2 = [(_DKIdentifier *)self stringValue];
  v3 = [v2 hash];

  return v3;
}

- (double)doubleValue
{
  v2 = [(_DKIdentifier *)self stringValue];
  v3 = [v2 hash];

  return v3;
}

- (int64_t)typeCode
{
  v2 = [(_DKIdentifier *)self identifierType];
  v3 = [v2 typeCode];

  return v3;
}

+ (id)identifierWithString:(id)a3 type:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_DKIdentifier alloc] initWithString:v6 type:v5];

  return v7;
}

- (_DKIdentifier)initWithString:(id)a3 type:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _DKIdentifier;
  v9 = [(_DKObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stringValue, a3);
    objc_storeStrong(&v10->_identifierType, a4);
  }

  return v10;
}

- (_DKIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _DKIdentifier;
  v5 = [(_DKObject *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifierType"];
    identifierType = v5->_identifierType;
    v5->_identifierType = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _DKIdentifier;
  v4 = a3;
  [(_DKObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_stringValue forKey:{@"stringValue", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_identifierType forKey:@"identifierType"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  stringValue = self->_stringValue;
  identifierType = self->_identifierType;
  v11.receiver = self;
  v11.super_class = _DKIdentifier;
  v8 = [(_DKObject *)&v11 description];
  v9 = [v3 stringWithFormat:@"%@: { stringValue=%@, identifierType=%@ %@}", v5, stringValue, identifierType, v8];;

  return v9;
}

- (int64_t)compareValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 identifierType];
    v7 = [(_DKIdentifier *)self identifierType];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      v9 = [v5 stringValue];
      v10 = [(_DKIdentifier *)self stringValue];
      v11 = [v9 isEqualToString:v10];

      v12 = v11 - 1;
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18.receiver = self;
        v18.super_class = _DKIdentifier;
        if ([(_DKObject *)&v18 isEqual:v6])
        {
          v7 = v6;
          v8 = [(_DKIdentifier *)self stringValue];
          v9 = [(_DKIdentifier *)v7 stringValue];
          if (v8 != v9)
          {
            v10 = [(_DKIdentifier *)self stringValue];
            v3 = [(_DKIdentifier *)v7 stringValue];
            if (![v10 isEqualToString:v3])
            {
              v11 = 0;
LABEL_15:

LABEL_16:
              goto LABEL_17;
            }

            v17 = v10;
          }

          v12 = [(_DKIdentifier *)self identifierType];
          v13 = [(_DKIdentifier *)v7 identifierType];
          if (v12 == v13)
          {
            v11 = 1;
          }

          else
          {
            v14 = [(_DKIdentifier *)self identifierType];
            v15 = [(_DKIdentifier *)v7 identifierType];
            v11 = [v14 isEqual:v15];
          }

          v10 = v17;
          if (v8 == v9)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }
    }

    v11 = 0;
  }

LABEL_17:

  return v11;
}

+ (id)fromPBCodable:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [(_DKPRValue *)v4 stringValue];
    v6 = [(_DKPRValue *)v4 type];

    v7 = [(_DKObjectType *)_DKIdentifierType objectTypeWithTypeCode:[(_DKPRValueType *)v6 typeCode]];
    v8 = [_DKIdentifier identifierWithString:v5 type:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_identifierFromManagedObject:(id)a3 readMetadata:(BOOL)a4 cache:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = [v6 string];
  if (v7)
  {
    v13 = [(_DKObjectFromMOCache *)v7 deduplicateString:v8];

    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v6, "identifierType")}];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79___DKIdentifier_MOConversion___identifierFromManagedObject_readMetadata_cache___block_invoke;
    v15[3] = &unk_1E736A328;
    v16 = v6;
    v9 = [(_DKObjectFromMOCache *)v7 objectForKey:v14 type:@"_DKid" setIfMissingWithBlock:v15];

    v8 = v13;
  }

  else
  {
    v9 = +[_DKObjectType objectTypeWithTypeCode:](_DKIdentifierType, "objectTypeWithTypeCode:", [v6 identifierType]);
  }

  v10 = [_DKIdentifier identifierWithString:v8 type:v9];
  if ([v10 copyBaseObjectInfoFromManagedObject:v6 cache:v7])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)copyToManagedObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = _DKIdentifier, [(_DKObject *)&v10 copyToManagedObject:v4]))
  {
    v5 = v4;
    v6 = [(_DKIdentifier *)self stringValue];
    [v5 setString:v6];

    v7 = [(_DKIdentifier *)self identifierType];
    [v5 setIdentifierType:{objc_msgSend(v7, "typeCode")}];

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end