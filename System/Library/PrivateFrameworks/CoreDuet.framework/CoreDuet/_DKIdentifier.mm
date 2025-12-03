@interface _DKIdentifier
+ (id)_identifierFromManagedObject:(id)object readMetadata:(BOOL)metadata cache:(id)cache;
+ (id)fromPBCodable:(id)codable;
+ (id)identifierWithString:(id)string type:(id)type;
- (BOOL)copyToManagedObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_DKIdentifier)initWithCoder:(id)coder;
- (_DKIdentifier)initWithString:(id)string type:(id)type;
- (double)doubleValue;
- (id)toPBCodable;
- (int64_t)compareValue:(id)value;
- (int64_t)integerValue;
- (int64_t)typeCode;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DKIdentifier

- (id)toPBCodable
{
  v3 = objc_alloc_init(_DKPRValue);
  v4 = objc_alloc_init(_DKPRValueType);
  [(_DKPRValue *)v3 setType:v4];
  type = [(_DKPRValue *)v3 type];
  [(_DKPRValueType *)type setType:?];

  identifierType = [(_DKIdentifier *)self identifierType];
  typeCode = [identifierType typeCode];
  type2 = [(_DKPRValue *)v3 type];
  [(_DKPRValueType *)type2 setTypeCode:typeCode];

  stringValue = [(_DKIdentifier *)self stringValue];
  [(_DKPRValue *)v3 setStringValue:stringValue];

  return v3;
}

- (int64_t)integerValue
{
  stringValue = [(_DKIdentifier *)self stringValue];
  v3 = [stringValue hash];

  return v3;
}

- (double)doubleValue
{
  stringValue = [(_DKIdentifier *)self stringValue];
  v3 = [stringValue hash];

  return v3;
}

- (int64_t)typeCode
{
  identifierType = [(_DKIdentifier *)self identifierType];
  typeCode = [identifierType typeCode];

  return typeCode;
}

+ (id)identifierWithString:(id)string type:(id)type
{
  typeCopy = type;
  stringCopy = string;
  v7 = [[_DKIdentifier alloc] initWithString:stringCopy type:typeCopy];

  return v7;
}

- (_DKIdentifier)initWithString:(id)string type:(id)type
{
  stringCopy = string;
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = _DKIdentifier;
  v9 = [(_DKObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stringValue, string);
    objc_storeStrong(&v10->_identifierType, type);
  }

  return v10;
}

- (_DKIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _DKIdentifier;
  v5 = [(_DKObject *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifierType"];
    identifierType = v5->_identifierType;
    v5->_identifierType = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _DKIdentifier;
  coderCopy = coder;
  [(_DKObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_stringValue forKey:{@"stringValue", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_identifierType forKey:@"identifierType"];
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

- (int64_t)compareValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = valueCopy;
    identifierType = [v5 identifierType];
    identifierType2 = [(_DKIdentifier *)self identifierType];
    v8 = [identifierType isEqual:identifierType2];

    if (v8)
    {
      stringValue = [v5 stringValue];
      stringValue2 = [(_DKIdentifier *)self stringValue];
      v11 = [stringValue isEqualToString:stringValue2];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18.receiver = self;
        v18.super_class = _DKIdentifier;
        if ([(_DKObject *)&v18 isEqual:v6])
        {
          v7 = v6;
          stringValue = [(_DKIdentifier *)self stringValue];
          stringValue2 = [(_DKIdentifier *)v7 stringValue];
          if (stringValue != stringValue2)
          {
            stringValue3 = [(_DKIdentifier *)self stringValue];
            stringValue4 = [(_DKIdentifier *)v7 stringValue];
            if (![stringValue3 isEqualToString:stringValue4])
            {
              v11 = 0;
LABEL_15:

LABEL_16:
              goto LABEL_17;
            }

            v17 = stringValue3;
          }

          identifierType = [(_DKIdentifier *)self identifierType];
          identifierType2 = [(_DKIdentifier *)v7 identifierType];
          if (identifierType == identifierType2)
          {
            v11 = 1;
          }

          else
          {
            identifierType3 = [(_DKIdentifier *)self identifierType];
            identifierType4 = [(_DKIdentifier *)v7 identifierType];
            v11 = [identifierType3 isEqual:identifierType4];
          }

          stringValue3 = v17;
          if (stringValue == stringValue2)
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

+ (id)fromPBCodable:(id)codable
{
  codableCopy = codable;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = codableCopy;
    stringValue = [(_DKPRValue *)v4 stringValue];
    type = [(_DKPRValue *)v4 type];

    v7 = [(_DKObjectType *)_DKIdentifierType objectTypeWithTypeCode:[(_DKPRValueType *)type typeCode]];
    v8 = [_DKIdentifier identifierWithString:stringValue type:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_identifierFromManagedObject:(id)object readMetadata:(BOOL)metadata cache:(id)cache
{
  objectCopy = object;
  cacheCopy = cache;
  string = [objectCopy string];
  if (cacheCopy)
  {
    v13 = [(_DKObjectFromMOCache *)cacheCopy deduplicateString:string];

    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(objectCopy, "identifierType")}];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79___DKIdentifier_MOConversion___identifierFromManagedObject_readMetadata_cache___block_invoke;
    v15[3] = &unk_1E736A328;
    v16 = objectCopy;
    v9 = [(_DKObjectFromMOCache *)cacheCopy objectForKey:v14 type:@"_DKid" setIfMissingWithBlock:v15];

    string = v13;
  }

  else
  {
    v9 = +[_DKObjectType objectTypeWithTypeCode:](_DKIdentifierType, "objectTypeWithTypeCode:", [objectCopy identifierType]);
  }

  v10 = [_DKIdentifier identifierWithString:string type:v9];
  if ([v10 copyBaseObjectInfoFromManagedObject:objectCopy cache:cacheCopy])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)copyToManagedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = _DKIdentifier, [(_DKObject *)&v10 copyToManagedObject:objectCopy]))
  {
    v5 = objectCopy;
    stringValue = [(_DKIdentifier *)self stringValue];
    [v5 setString:stringValue];

    identifierType = [(_DKIdentifier *)self identifierType];
    [v5 setIdentifierType:{objc_msgSend(identifierType, "typeCode")}];

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end