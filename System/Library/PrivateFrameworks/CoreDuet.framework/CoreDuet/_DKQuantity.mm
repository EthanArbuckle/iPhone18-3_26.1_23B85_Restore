@interface _DKQuantity
+ (id)fromPBCodable:(id)codable;
+ (id)objectFromManagedObject:(id)object readMetadata:(BOOL)metadata excludedMetadataKeys:(id)keys cache:(id)cache;
+ (id)quantityWithDouble:(double)double type:(id)type;
- (BOOL)copyToManagedObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_DKQuantity)initWithCoder:(id)coder;
- (_DKQuantity)initWithDouble:(double)double type:(id)type;
- (id)stringValue;
- (id)toPBCodable;
- (int64_t)compareValue:(id)value;
- (int64_t)typeCode;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DKQuantity

- (id)toPBCodable
{
  v3 = objc_alloc_init(_DKPRValue);
  v4 = objc_alloc_init(_DKPRValueType);
  [(_DKPRValue *)v3 setType:v4];
  type = [(_DKPRValue *)v3 type];
  [(_DKPRValueType *)type setType:?];

  quantityType = [(_DKQuantity *)self quantityType];
  typeCode = [quantityType typeCode];
  type2 = [(_DKPRValue *)v3 type];
  [(_DKPRValueType *)type2 setTypeCode:typeCode];

  [(_DKQuantity *)self doubleValue];
  [(_DKPRValue *)v3 setDoubleValue:v9];

  return v3;
}

+ (id)fromPBCodable:(id)codable
{
  codableCopy = codable;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = codableCopy;
    doubleValue = [(_DKPRValue *)v4 doubleValue];
    type = [(_DKPRValue *)v4 type];

    v7 = [(_DKObjectType *)_DKQuantityType objectTypeWithTypeCode:[(_DKPRValueType *)type typeCode]];
    v8 = [_DKQuantity quantityWithDouble:v7 type:doubleValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)quantityWithDouble:(double)double type:(id)type
{
  typeCopy = type;
  v6 = [[_DKQuantity alloc] initWithDouble:typeCopy type:double];

  return v6;
}

- (_DKQuantity)initWithDouble:(double)double type:(id)type
{
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = _DKQuantity;
  v8 = [(_DKObject *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_doubleValue = double;
    objc_storeStrong(&v8->_quantityType, type);
  }

  return v9;
}

- (_DKQuantity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _DKQuantity;
  v5 = [(_DKObject *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"doubleValue"];
    v5->_doubleValue = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"quantityType"];
    quantityType = v5->_quantityType;
    v5->_quantityType = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _DKQuantity;
  coderCopy = coder;
  [(_DKObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"doubleValue" forKey:{self->_doubleValue, v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_quantityType forKey:@"quantityType"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  doubleValue = self->_doubleValue;
  quantityType = self->_quantityType;
  v11.receiver = self;
  v11.super_class = _DKQuantity;
  v8 = [(_DKObject *)&v11 description];
  v9 = [v3 stringWithFormat:@"%@: { doubleValue=%f quantityType=%@; %@ }", v5, *&doubleValue, quantityType, v8];;

  return v9;
}

- (int64_t)compareValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = valueCopy;
    quantityType = [v5 quantityType];
    quantityType2 = [(_DKQuantity *)self quantityType];
    v8 = [quantityType isEqual:quantityType2];

    if (v8)
    {
      [v5 doubleValue];
      v10 = v9;
      [(_DKQuantity *)self doubleValue];
      if (v10 == v11)
      {
        v12 = 0;
      }

      else
      {
        [v5 doubleValue];
        v14 = v13;
        [(_DKQuantity *)self doubleValue];
        if (v14 <= v15)
        {
          v12 = 1;
        }

        else
        {
          v12 = -1;
        }
      }
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

- (id)stringValue
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:self->_doubleValue];
  stringValue = [v2 stringValue];

  return stringValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v16.receiver = self, v16.super_class = _DKQuantity, [(_DKObject *)&v16 isEqual:v5]))
  {
    v6 = v5;
    [(_DKQuantity *)self doubleValue];
    v8 = v7;
    [(_DKQuantity *)v6 doubleValue];
    if (v8 == v9)
    {
      quantityType = [(_DKQuantity *)self quantityType];
      quantityType2 = [(_DKQuantity *)v6 quantityType];
      if (quantityType == quantityType2)
      {
        v14 = 1;
      }

      else
      {
        quantityType3 = [(_DKQuantity *)self quantityType];
        quantityType4 = [(_DKQuantity *)v6 quantityType];
        v14 = [quantityType3 isEqual:quantityType4];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (int64_t)typeCode
{
  quantityType = [(_DKQuantity *)self quantityType];
  typeCode = [quantityType typeCode];

  return typeCode;
}

+ (id)objectFromManagedObject:(id)object readMetadata:(BOOL)metadata excludedMetadataKeys:(id)keys cache:(id)cache
{
  objectCopy = object;
  cacheCopy = cache;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objectCopy;
    v10 = +[_DKObjectType objectTypeWithTypeCode:](_DKQuantityType, "objectTypeWithTypeCode:", [v9 quantityType]);
    [v9 doubleValue];
    v11 = [_DKQuantity quantityWithDouble:v10 type:?];
    if ([v11 copyBaseObjectInfoFromManagedObject:v9 cache:cacheCopy])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)copyToManagedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = _DKQuantity, [(_DKObject *)&v9 copyToManagedObject:objectCopy]))
  {
    v5 = objectCopy;
    [(_DKQuantity *)self doubleValue];
    [v5 setDoubleValue:?];
    quantityType = [(_DKQuantity *)self quantityType];
    [v5 setQuantityType:{objc_msgSend(quantityType, "typeCode")}];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end